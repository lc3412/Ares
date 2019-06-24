; ModuleID = '/home/lichi/Desktop/genwqe/[task]lib--__libcard.o/[inter]lib--libcard.o.i'
source_filename = "/home/lichi/Desktop/genwqe/[task]lib--__libcard.o/[inter]lib--libcard.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lib_data_t = type { [256 x i32], i64, %union.sem_t, i32, %union.pthread_mutex_t, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i64, i32 }
%union.sem_t = type { i64, [24 x i8] }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dev_card_t = type opaque
%struct.fd_node = type { i32, i32, %struct.fd_node*, %struct.fd_node* }
%struct.card_dev_t = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.fd_node*, %struct.card_dev_t*, %struct.card_dev_t*, %struct.card_dev_t* }
%struct.genwqe_reg_io = type { i64, i64 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.genwqe_mem = type { i64, i64, i64, i64 }
%struct.genwqe_ddcb_cmd = type { i64, i64, i8, i8, i8, i8, i16, i16, i16, i16, i32, i64, i64, i64, i64, [64 x i8], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, [96 x i8] }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.card_upd_params = type { i8*, i32, i32, i16, i8, i64, i64, i16, i16, i32 }
%struct.genwqe_bitstream = type { i64, i32, i32, i64, i32, i32, i64, i64, i16, i16, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.genwqe_vpd = type { [512 x i8] }
%struct.genwqe_debug_data = type { [64 x i8], i64, i64, [256 x i8], [256 x i8], [256 x i8] }
%union.pthread_mutexattr_t = type { i32 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.fd_set = type { [16 x i64] }
%struct.__sigset_t = type { [16 x i64] }
%struct.inotify_event = type { i32, i32, i32, i32, [0 x i8] }

@card_errlist = internal constant [215 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0)], align 16
@retc_errlist = internal constant [512 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0)], align 16
@_dbg_flag = internal global i32 0, align 4
@lib_data = internal global %struct.lib_data_t zeroinitializer, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [42 x i8] c"%08x.%08x %s:%u: Info: %s Enter Card: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"libcard.c\00", align 1
@__func__.genwqe_card_open = private unnamed_addr constant [17 x i8] c"genwqe_card_open\00", align 1
@m_dev_head = internal global %struct.dev_card_t* null, align 8
@s_dev_head = internal global %struct.dev_card_t* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"%08x.%08x %s:%u: Info: %s Exit Card: %d Dev: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%08x.%08x %s:%u: Info: %s Err Dev: %p Card: %d fd: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%08x.%08x %s:%u: Info: %s Request %p fd: %d\0A\00", align 1
@__func__.genwqe_card_close = private unnamed_addr constant [18 x i8] c"genwqe_card_close\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"%08x.%08x %s:%u: Info: pin:   addr=%016lx size=%08lx dir=%d Card=%p \00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%08x.%08x %s:%u: Info: Card %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"%08x.%08x %s:%u: Error: Dev: %p Fault: %d addr=%p size=%lld dir=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"%08x.%08x %s:%u: Info: unpin: addr=%016lx size=%08lx card=%p\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%08x.%08x %s:%u: Info: Card %d fd %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"%08x.%08x %s:%u: Error: Dev: %p Fault: %d addr=%p size=%lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"%08x.%08x %s:%u: Error: %s size %d errno: %d/%s\0A\00", align 1
@__func__.genwqe_card_malloc = private unnamed_addr constant [19 x i8] c"genwqe_card_malloc\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Error: %s: %p Size: %d Errno: %d\0A\00", align 1
@__func__.genwqe_card_free = private unnamed_addr constant [17 x i8] c"genwqe_card_free\00", align 1
@genwqe_card_set_ats_flags.mask = internal constant [2 x i8] c"\F0\0F", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" %08x:\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" | %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Error: compare mismatch offs %d:\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"%08x.%08x %s:%u: Error: read:\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"%08x.%08x %s:%u: Info: %s update done\0A\00", align 1
@__func__.genwqe_flash_update = private unnamed_addr constant [20 x i8] c"genwqe_flash_update\00", align 1
@.str.21 = private unnamed_addr constant [100 x i8] c"%08x.%08x %s:%u: Error: reading VPD failed retc=%03x attn=%x progr=%x rc=%d drv_rc=%d drv_errno=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [100 x i8] c"%08x.%08x %s:%u: Error: writing VPD failed retc=%03x attn=%x progr=%x rc=%d drv_rc=%d drv_errno=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"driver:%s SLU/APP: %016llx.%016llx\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"ddcb before processing:\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"ddcb previous:\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"ddcb processed:\0A\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"%08x.%08x %s:%u: Error: initializing mutex failed!\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Info: %s Enter (s:%p m:%p fd:%p)\0A\00", align 1
@__func__.libcard_exit = private unnamed_addr constant [13 x i8] c"libcard_exit\00", align 1
@__fd_m_list = internal global %struct.fd_node* null, align 8
@.str.29 = private unnamed_addr constant [58 x i8] c"%08x.%08x %s:%u: Info: Request Single List: %p to close.\0A\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"%08x.%08x %s:%u: Info: Request Multi List: %p to close.\0A\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"%08x.%08x %s:%u: Info: %s EXIT (s:%p m:%p fd:%p)\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"GenWQE card statistics\0A\00", align 1
@card_completed_ddcbs = internal global [16 x i32] zeroinitializer, align 16
@card_retried_ddcbs = internal global [16 x i32] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [51 x i8] c"  genwqe%u_card completed DDCBs: %5d retried: %5d\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"system error, please see errno\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"problem detected with card, please see errno and returned data\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"could not get card handle\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"libzcard version mismatch\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"invalid parameter\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"verification of flash failed\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"reading flash failed\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"updating card failed\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"cannot get state of card\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"simulation of card had a problem\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"error on ddcb execution occurred, please see errno and returned data\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"memory buffer pinning error, see errno\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"problem in testmode\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"not supported application id\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"unexecuted/untouched DDCB\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"pending execution\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"command complete. no error\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"application error, recoverable, please see ATTN and PROGR\00", align 1
@.str.53 = private unnamed_addr constant [62 x i8] c"application error, non-recoverable, please see ATTN and PROGR\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"unexecuted/removed from queue\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"overwritten by driver\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"%08x.%08x %s:%u: Error: Malloc failed for card %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"%08x.%08x %s:%u: Error: %s failed rc=%d\0A\00", align 1
@__func__.__health_thread_start = private unnamed_addr constant [22 x i8] c"__health_thread_start\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.60 = private unnamed_addr constant [68 x i8] c"%08x.%08x %s:%u: Info: %s %d Cards with %d fd's, use fd: %d first.\0A\00", align 1
@__func__.__genwqe_open_all = private unnamed_addr constant [18 x i8] c"__genwqe_open_all\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"genwqe%u_card\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"genwqe\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"/dev/genwqe%u_card\00", align 1
@.str.65 = private unnamed_addr constant [81 x i8] c"%08x.%08x %s:%u: Info: __genwqe_dev_open: %s OK fd: %d (omode: 0x%x mode: 0x%x)\0A\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"%08x.%08x %s:%u: Error: malloc failed\0A\00", align 1
@.str.67 = private unnamed_addr constant [50 x i8] c"%08x.%08x %s:%u: Info: __fd_m_head at: %p fd: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [66 x i8] c"%08x.%08x %s:%u: Error: Failed to initialize inotify instance %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [57 x i8] c"%08x.%08x %s:%u: Error: Failed to add inotify watch. %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"%08x.%08x %s:%u: Error: %s failed!\0A\00", align 1
@__func__.__inotify_create = private unnamed_addr constant [17 x i8] c"__inotify_create\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"%08x.%08x %s:%u: Info: %s exit fd: %d wd: %d\0A\00", align 1
@__func__.__inotify_thread = private unnamed_addr constant [17 x i8] c"__inotify_thread\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"%08x.%08x %s:%u: Info: __inotify_handle_event %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"genwqe%d\00", align 1
@.str.74 = private unnamed_addr constant [64 x i8] c"%08x.%08x %s:%u: Info: %s Start Health Thread for new Card: %s\0A\00", align 1
@__func__.__inotify_handle_event = private unnamed_addr constant [23 x i8] c"__inotify_handle_event\00", align 1
@.str.75 = private unnamed_addr constant [84 x i8] c"%08x.%08x %s:%u: Info: Wrong AppID: %016llx Expect: %016llx Mask: %016llx on fd %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"%08x.%08x %s:%u: Warn: %s exit Timeout fault: %d fd: %d\0A\00", align 1
@__func__.__genwqe_card_execute = private unnamed_addr constant [22 x i8] c"__genwqe_card_execute\00", align 1
@.str.77 = private unnamed_addr constant [69 x i8] c"%08x.%08x %s:%u: Error: %s exit fault: %d fd: %d rc: %d card_no: %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c" %p: \00", align 1
@.str.79 = private unnamed_addr constant [57 x i8] c"%08x.%08x %s:%u: Info: %s fd_s_count: %d fd_m_count: %d\0A\00", align 1
@__func__.__fixup_fd_lists = private unnamed_addr constant [17 x i8] c"__fixup_fd_lists\00", align 1
@.str.80 = private unnamed_addr constant [47 x i8] c"%08x.%08x %s:%u: Info: %s Enter %d open Fd's.\0A\00", align 1
@__func__.__mhealth_check = private unnamed_addr constant [16 x i8] c"__mhealth_check\00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"%08x.%08x %s:%u: Info: %s Dev: %p State: %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"%08x.%08x %s:%u: Info: Close: %p Card: %d fd: %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [62 x i8] c"%08x.%08x %s:%u: Info: %s Close Exit Count: %d (Must be 0 !)\0A\00", align 1
@.str.84 = private unnamed_addr constant [64 x i8] c"%08x.%08x %s:%u: Info: %s delete from List: %p Card: %d fd: %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [65 x i8] c"%08x.%08x %s:%u: Info: %s EXIT: %p fd_list: %p with %d Entry's.\0A\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"%08x.%08x %s:%u: Info: %s Open Card: %d\0A\00", align 1
@__func__.__inotify_handle = private unnamed_addr constant [17 x i8] c"__inotify_handle\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"%08x.%08x %s:%u: Info: %s Open Card: %d OK\0A\00", align 1
@.str.88 = private unnamed_addr constant [52 x i8] c"%08x.%08x %s:%u: Error: Invalid Dev: %p to delete.\0A\00", align 1
@.str.89 = private unnamed_addr constant [59 x i8] c"%08x.%08x %s:%u: Error: fd: %d not found in fd_m_list: %p\0A\00", align 1
@.str.90 = private unnamed_addr constant [54 x i8] c"%08x.%08x %s:%u: Info: %s: Node: %p fd: %d State: %d\0A\00", align 1
@__func__.__shealth_check = private unnamed_addr constant [16 x i8] c"__shealth_check\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @libcard_init, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @libcard_exit, i8* null }]

; Function Attrs: nounwind uwtable
define i8* @card_strerror(i32) #0 !dbg !463 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !466, metadata !467), !dbg !468
  %4 = load i32, i32* %3, align 4, !dbg !469
  %5 = icmp slt i32 %4, 0, !dbg !471
  br i1 %5, label %6, label %9, !dbg !472

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !473
  %8 = sub nsw i32 0, %7, !dbg !475
  br label %11, !dbg !476

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !477
  br label %11, !dbg !479

; <label>:11:                                     ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !480
  %13 = icmp sge i32 %12, 215, !dbg !482
  br i1 %13, label %14, label %15, !dbg !483

; <label>:14:                                     ; preds = %11
  store i8* null, i8** %2, align 8, !dbg !484
  br label %28, !dbg !484

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !485
  %17 = icmp slt i32 %16, 0, !dbg !486
  br i1 %17, label %18, label %21, !dbg !487

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4, !dbg !488
  %20 = sub nsw i32 0, %19, !dbg !490
  br label %23, !dbg !491

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %3, align 4, !dbg !492
  br label %23, !dbg !494

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %22, %21 ], !dbg !495
  %25 = sext i32 %24 to i64, !dbg !497
  %26 = getelementptr inbounds [215 x i8*], [215 x i8*]* @card_errlist, i64 0, i64 %25, !dbg !497
  %27 = load i8*, i8** %26, align 8, !dbg !497
  store i8* %27, i8** %2, align 8, !dbg !498
  br label %28, !dbg !498

; <label>:28:                                     ; preds = %23, %14
  %29 = load i8*, i8** %2, align 8, !dbg !499
  ret i8* %29, !dbg !499
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @retc_strerror(i32) #0 !dbg !500 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !501, metadata !467), !dbg !502
  %4 = load i32, i32* %3, align 4, !dbg !503
  %5 = icmp slt i32 %4, 0, !dbg !505
  br i1 %5, label %6, label %9, !dbg !506

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !507
  %8 = sub nsw i32 0, %7, !dbg !509
  br label %11, !dbg !510

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !511
  br label %11, !dbg !513

; <label>:11:                                     ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ], !dbg !514
  %13 = icmp sge i32 %12, 512, !dbg !516
  br i1 %13, label %14, label %15, !dbg !517

; <label>:14:                                     ; preds = %11
  store i8* null, i8** %2, align 8, !dbg !518
  br label %28, !dbg !518

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !519
  %17 = icmp slt i32 %16, 0, !dbg !520
  br i1 %17, label %18, label %21, !dbg !521

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4, !dbg !522
  %20 = sub nsw i32 0, %19, !dbg !524
  br label %23, !dbg !525

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %3, align 4, !dbg !526
  br label %23, !dbg !528

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %20, %18 ], [ %22, %21 ], !dbg !529
  %25 = sext i32 %24 to i64, !dbg !531
  %26 = getelementptr inbounds [512 x i8*], [512 x i8*]* @retc_errlist, i64 0, i64 %25, !dbg !531
  %27 = load i8*, i8** %26, align 8, !dbg !531
  store i8* %27, i8** %2, align 8, !dbg !532
  br label %28, !dbg !532

; <label>:28:                                     ; preds = %23, %14
  %29 = load i8*, i8** %2, align 8, !dbg !533
  ret i8* %29, !dbg !533
}

; Function Attrs: nounwind uwtable
define void @genwqe_card_lib_debug(i32) #0 !dbg !534 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !537, metadata !467), !dbg !538
  %3 = load i32, i32* %2, align 4, !dbg !539
  store i32 %3, i32* @_dbg_flag, align 4, !dbg !540
  ret void, !dbg !541
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_ddcb_crc32(i8*, i64, i32) #0 !dbg !542 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !545, metadata !467), !dbg !546
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !547, metadata !467), !dbg !548
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !549, metadata !467), !dbg !550
  call void @llvm.dbg.declare(metadata i32* %7, metadata !551, metadata !467), !dbg !552
  call void @llvm.dbg.declare(metadata i32* %8, metadata !553, metadata !467), !dbg !554
  %9 = load i32, i32* %6, align 4, !dbg !555
  store i32 %9, i32* %8, align 4, !dbg !556
  br label %10, !dbg !557

; <label>:10:                                     ; preds = %14, %3
  %11 = load i64, i64* %5, align 8, !dbg !558
  %12 = add i64 %11, -1, !dbg !558
  store i64 %12, i64* %5, align 8, !dbg !558
  %13 = icmp ne i64 %11, 0, !dbg !560
  br i1 %13, label %14, label %30, !dbg !560

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %8, align 4, !dbg !561
  %16 = lshr i32 %15, 24, !dbg !563
  %17 = load i8*, i8** %4, align 8, !dbg !564
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !564
  store i8* %18, i8** %4, align 8, !dbg !564
  %19 = load i8, i8* %17, align 1, !dbg !565
  %20 = zext i8 %19 to i32, !dbg !565
  %21 = xor i32 %16, %20, !dbg !566
  %22 = and i32 %21, 255, !dbg !567
  store i32 %22, i32* %7, align 4, !dbg !568
  %23 = load i32, i32* %8, align 4, !dbg !569
  %24 = shl i32 %23, 8, !dbg !570
  %25 = load i32, i32* %7, align 4, !dbg !571
  %26 = sext i32 %25 to i64, !dbg !572
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct.lib_data_t, %struct.lib_data_t* @lib_data, i32 0, i32 0), i64 0, i64 %26, !dbg !572
  %28 = load i32, i32* %27, align 4, !dbg !572
  %29 = xor i32 %24, %28, !dbg !573
  store i32 %29, i32* %8, align 4, !dbg !574
  br label %10, !dbg !575, !llvm.loop !577

; <label>:30:                                     ; preds = %10
  %31 = load i32, i32* %8, align 4, !dbg !578
  ret i32 %31, !dbg !579
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_get_drv_rc(%struct.card_dev_t*) #0 !dbg !580 {
  %2 = alloca %struct.card_dev_t*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !585, metadata !467), !dbg !586
  %3 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !587
  %4 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %3, i32 0, i32 5, !dbg !588
  %5 = load i32, i32* %4, align 4, !dbg !588
  ret i32 %5, !dbg !589
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_get_drv_errno(%struct.card_dev_t*) #0 !dbg !590 {
  %2 = alloca %struct.card_dev_t*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !591, metadata !467), !dbg !592
  %3 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !593
  %4 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %3, i32 0, i32 6, !dbg !594
  %5 = load i32, i32* %4, align 8, !dbg !594
  ret i32 %5, !dbg !595
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_get_state(%struct.card_dev_t*, i32*) #0 !dbg !596 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !600, metadata !467), !dbg !601
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !602, metadata !467), !dbg !603
  call void @llvm.dbg.declare(metadata i32* %6, metadata !604, metadata !467), !dbg !605
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !606
  %8 = icmp eq %struct.card_dev_t* null, %7, !dbg !608
  br i1 %8, label %9, label %10, !dbg !609

; <label>:9:                                      ; preds = %2
  store i32 -205, i32* %3, align 4, !dbg !610
  br label %24, !dbg !610

; <label>:10:                                     ; preds = %2
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !611
  %12 = call i32 @__fd_get(%struct.card_dev_t* %11, i32* null), !dbg !612
  store i32 %12, i32* %6, align 4, !dbg !613
  %13 = load i32, i32* %6, align 4, !dbg !614
  %14 = load i32*, i32** %5, align 8, !dbg !615
  %15 = call i32 @__genwqe_card_get_state(i32 %13, i32* %14), !dbg !616
  %16 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !617
  %17 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %16, i32 0, i32 5, !dbg !618
  store i32 %15, i32* %17, align 4, !dbg !619
  %18 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !620
  %19 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %18, i32 0, i32 5, !dbg !622
  %20 = load i32, i32* %19, align 4, !dbg !622
  %21 = icmp eq i32 0, %20, !dbg !623
  br i1 %21, label %22, label %23, !dbg !624

; <label>:22:                                     ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !625
  br label %24, !dbg !625

; <label>:23:                                     ; preds = %10
  store i32 -209, i32* %3, align 4, !dbg !626
  br label %24, !dbg !626

; <label>:24:                                     ; preds = %23, %22, %9
  %25 = load i32, i32* %3, align 4, !dbg !627
  ret i32 %25, !dbg !627
}

; Function Attrs: nounwind uwtable
define internal i32 @__fd_get(%struct.card_dev_t*, i32*) #0 !dbg !628 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lib_data_t*, align 8
  %6 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !632, metadata !467), !dbg !633
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !634, metadata !467), !dbg !635
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %5, metadata !636, metadata !467), !dbg !637
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %5, align 8, !dbg !637
  call void @llvm.dbg.declare(metadata i32* %6, metadata !638, metadata !467), !dbg !639
  %7 = load %struct.lib_data_t*, %struct.lib_data_t** %5, align 8, !dbg !640
  %8 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %7, i32 0, i32 4, !dbg !641
  %9 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %8) #9, !dbg !642
  %10 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !643
  %11 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %10, i32 0, i32 0, !dbg !645
  %12 = load i32, i32* %11, align 8, !dbg !645
  %13 = icmp eq i32 -1, %12, !dbg !646
  br i1 %13, label %14, label %18, !dbg !647

; <label>:14:                                     ; preds = %2
  %15 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !648
  %16 = load i32*, i32** %4, align 8, !dbg !649
  %17 = call i32 @__fd_m_get_and_inc(%struct.card_dev_t* %15, i32* %16), !dbg !650
  store i32 %17, i32* %6, align 4, !dbg !651
  br label %30, !dbg !652

; <label>:18:                                     ; preds = %2
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !653
  %20 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %19, i32 0, i32 4, !dbg !655
  %21 = load i32, i32* %20, align 8, !dbg !655
  store i32 %21, i32* %6, align 4, !dbg !656
  %22 = load i32*, i32** %4, align 8, !dbg !657
  %23 = icmp ne i32* %22, null, !dbg !657
  br i1 %23, label %24, label %29, !dbg !659

; <label>:24:                                     ; preds = %18
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !660
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 0, !dbg !661
  %27 = load i32, i32* %26, align 8, !dbg !661
  %28 = load i32*, i32** %4, align 8, !dbg !662
  store i32 %27, i32* %28, align 4, !dbg !663
  br label %29, !dbg !664

; <label>:29:                                     ; preds = %24, %18
  br label %30

; <label>:30:                                     ; preds = %29, %14
  %31 = load %struct.lib_data_t*, %struct.lib_data_t** %5, align 8, !dbg !665
  %32 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %31, i32 0, i32 4, !dbg !666
  %33 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %32) #9, !dbg !667
  %34 = load i32, i32* %6, align 4, !dbg !668
  ret i32 %34, !dbg !669
}

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_card_get_state(i32, i32*) #0 !dbg !670 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !673, metadata !467), !dbg !674
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !675, metadata !467), !dbg !676
  %5 = load i32, i32* %3, align 4, !dbg !677
  %6 = load i32*, i32** %4, align 8, !dbg !678
  %7 = call i32 (i32, i64, ...) @ioctl(i32 %5, i64 2147788068, i32* %6) #9, !dbg !679
  ret i32 %7, !dbg !680
}

; Function Attrs: nounwind uwtable
define i64 @genwqe_card_read_reg64(%struct.card_dev_t*, i32, i32*) #0 !dbg !681 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.genwqe_reg_io, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !684, metadata !467), !dbg !685
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !686, metadata !467), !dbg !687
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !688, metadata !467), !dbg !689
  call void @llvm.dbg.declare(metadata %struct.genwqe_reg_io* %8, metadata !690, metadata !467), !dbg !695
  %9 = load i32*, i32** %7, align 8, !dbg !696
  %10 = icmp ne i32* %9, null, !dbg !696
  br i1 %10, label %11, label %13, !dbg !698

; <label>:11:                                     ; preds = %3
  %12 = load i32*, i32** %7, align 8, !dbg !699
  store i32 -202, i32* %12, align 4, !dbg !700
  br label %13, !dbg !701

; <label>:13:                                     ; preds = %11, %3
  %14 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !702
  %15 = icmp eq %struct.card_dev_t* null, %14, !dbg !704
  br i1 %15, label %16, label %17, !dbg !705

; <label>:16:                                     ; preds = %13
  store i64 -205, i64* %4, align 8, !dbg !706
  br label %47, !dbg !706

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %6, align 4, !dbg !707
  %19 = zext i32 %18 to i64, !dbg !707
  %20 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 0, !dbg !708
  store i64 %19, i64* %20, align 8, !dbg !709
  %21 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !710
  store i64 0, i64* %21, align 8, !dbg !711
  %22 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !712
  %23 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %22, i32 0, i32 4, !dbg !713
  %24 = load i32, i32* %23, align 8, !dbg !713
  %25 = call i32 (i32, i64, ...) @ioctl(i32 %24, i64 2148574494, %struct.genwqe_reg_io* %8) #9, !dbg !714
  %26 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !715
  %27 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %26, i32 0, i32 5, !dbg !716
  store i32 %25, i32* %27, align 4, !dbg !717
  %28 = call i32* @__errno_location() #1, !dbg !718
  %29 = load i32, i32* %28, align 4, !dbg !719
  %30 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !720
  %31 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %30, i32 0, i32 6, !dbg !721
  store i32 %29, i32* %31, align 8, !dbg !722
  %32 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !723
  %33 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %32, i32 0, i32 5, !dbg !725
  %34 = load i32, i32* %33, align 4, !dbg !725
  %35 = icmp slt i32 %34, 0, !dbg !726
  br i1 %35, label %36, label %38, !dbg !727

; <label>:36:                                     ; preds = %17
  %37 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !728
  store i64 0, i64* %37, align 8, !dbg !729
  br label %44, !dbg !730

; <label>:38:                                     ; preds = %17
  %39 = load i32*, i32** %7, align 8, !dbg !731
  %40 = icmp ne i32* %39, null, !dbg !731
  br i1 %40, label %41, label %43, !dbg !734

; <label>:41:                                     ; preds = %38
  %42 = load i32*, i32** %7, align 8, !dbg !735
  store i32 0, i32* %42, align 4, !dbg !736
  br label %43, !dbg !737

; <label>:43:                                     ; preds = %41, %38
  br label %44

; <label>:44:                                     ; preds = %43, %36
  %45 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !738
  %46 = load i64, i64* %45, align 8, !dbg !738
  store i64 %46, i64* %4, align 8, !dbg !739
  br label %47, !dbg !739

; <label>:47:                                     ; preds = %44, %16
  %48 = load i64, i64* %4, align 8, !dbg !740
  ret i64 %48, !dbg !740
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_read_reg32(%struct.card_dev_t*, i32, i32*) #0 !dbg !741 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.genwqe_reg_io, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !744, metadata !467), !dbg !745
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !746, metadata !467), !dbg !747
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !748, metadata !467), !dbg !749
  call void @llvm.dbg.declare(metadata %struct.genwqe_reg_io* %8, metadata !750, metadata !467), !dbg !751
  %9 = load i32*, i32** %7, align 8, !dbg !752
  %10 = icmp ne i32* %9, null, !dbg !752
  br i1 %10, label %11, label %13, !dbg !754

; <label>:11:                                     ; preds = %3
  %12 = load i32*, i32** %7, align 8, !dbg !755
  store i32 -202, i32* %12, align 4, !dbg !756
  br label %13, !dbg !757

; <label>:13:                                     ; preds = %11, %3
  %14 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !758
  %15 = icmp eq %struct.card_dev_t* null, %14, !dbg !760
  br i1 %15, label %16, label %17, !dbg !761

; <label>:16:                                     ; preds = %13
  store i32 -205, i32* %4, align 4, !dbg !762
  br label %48, !dbg !762

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %6, align 4, !dbg !763
  %19 = zext i32 %18 to i64, !dbg !763
  %20 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 0, !dbg !764
  store i64 %19, i64* %20, align 8, !dbg !765
  %21 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !766
  store i64 0, i64* %21, align 8, !dbg !767
  %22 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !768
  %23 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %22, i32 0, i32 4, !dbg !769
  %24 = load i32, i32* %23, align 8, !dbg !769
  %25 = call i32 (i32, i64, ...) @ioctl(i32 %24, i64 2148574496, %struct.genwqe_reg_io* %8) #9, !dbg !770
  %26 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !771
  %27 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %26, i32 0, i32 5, !dbg !772
  store i32 %25, i32* %27, align 4, !dbg !773
  %28 = call i32* @__errno_location() #1, !dbg !774
  %29 = load i32, i32* %28, align 4, !dbg !775
  %30 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !776
  %31 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %30, i32 0, i32 6, !dbg !777
  store i32 %29, i32* %31, align 8, !dbg !778
  %32 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !779
  %33 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %32, i32 0, i32 5, !dbg !781
  %34 = load i32, i32* %33, align 4, !dbg !781
  %35 = icmp slt i32 %34, 0, !dbg !782
  br i1 %35, label %36, label %38, !dbg !783

; <label>:36:                                     ; preds = %17
  %37 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !784
  store i64 0, i64* %37, align 8, !dbg !785
  br label %44, !dbg !786

; <label>:38:                                     ; preds = %17
  %39 = load i32*, i32** %7, align 8, !dbg !787
  %40 = icmp ne i32* %39, null, !dbg !787
  br i1 %40, label %41, label %43, !dbg !790

; <label>:41:                                     ; preds = %38
  %42 = load i32*, i32** %7, align 8, !dbg !791
  store i32 0, i32* %42, align 4, !dbg !792
  br label %43, !dbg !793

; <label>:43:                                     ; preds = %41, %38
  br label %44

; <label>:44:                                     ; preds = %43, %36
  %45 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !794
  %46 = load i64, i64* %45, align 8, !dbg !794
  %47 = trunc i64 %46 to i32, !dbg !795
  store i32 %47, i32* %4, align 4, !dbg !796
  br label %48, !dbg !796

; <label>:48:                                     ; preds = %44, %16
  %49 = load i32, i32* %4, align 4, !dbg !797
  ret i32 %49, !dbg !797
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_write_reg64(%struct.card_dev_t*, i32, i64) #0 !dbg !798 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.genwqe_reg_io, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !801, metadata !467), !dbg !802
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !803, metadata !467), !dbg !804
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !805, metadata !467), !dbg !806
  call void @llvm.dbg.declare(metadata %struct.genwqe_reg_io* %8, metadata !807, metadata !467), !dbg !808
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !809
  %10 = icmp eq %struct.card_dev_t* null, %9, !dbg !811
  br i1 %10, label %11, label %12, !dbg !812

; <label>:11:                                     ; preds = %3
  store i32 -205, i32* %4, align 4, !dbg !813
  br label %34, !dbg !813

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %6, align 4, !dbg !814
  %14 = zext i32 %13 to i64, !dbg !814
  %15 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 0, !dbg !815
  store i64 %14, i64* %15, align 8, !dbg !816
  %16 = load i64, i64* %7, align 8, !dbg !817
  %17 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !818
  store i64 %16, i64* %17, align 8, !dbg !819
  %18 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !820
  %19 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %18, i32 0, i32 4, !dbg !821
  %20 = load i32, i32* %19, align 8, !dbg !821
  %21 = call i32 (i32, i64, ...) @ioctl(i32 %20, i64 1074832671, %struct.genwqe_reg_io* %8) #9, !dbg !822
  %22 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !823
  %23 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %22, i32 0, i32 5, !dbg !824
  store i32 %21, i32* %23, align 4, !dbg !825
  %24 = call i32* @__errno_location() #1, !dbg !826
  %25 = load i32, i32* %24, align 4, !dbg !827
  %26 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !828
  %27 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %26, i32 0, i32 6, !dbg !829
  store i32 %25, i32* %27, align 8, !dbg !830
  %28 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !831
  %29 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %28, i32 0, i32 5, !dbg !833
  %30 = load i32, i32* %29, align 4, !dbg !833
  %31 = icmp eq i32 0, %30, !dbg !834
  br i1 %31, label %32, label %33, !dbg !835

; <label>:32:                                     ; preds = %12
  store i32 0, i32* %4, align 4, !dbg !836
  br label %34, !dbg !836

; <label>:33:                                     ; preds = %12
  store i32 -202, i32* %4, align 4, !dbg !837
  br label %34, !dbg !837

; <label>:34:                                     ; preds = %33, %32, %11
  %35 = load i32, i32* %4, align 4, !dbg !838
  ret i32 %35, !dbg !838
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_write_reg32(%struct.card_dev_t*, i32, i32) #0 !dbg !839 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.genwqe_reg_io, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !842, metadata !467), !dbg !843
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !844, metadata !467), !dbg !845
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !846, metadata !467), !dbg !847
  call void @llvm.dbg.declare(metadata %struct.genwqe_reg_io* %8, metadata !848, metadata !467), !dbg !849
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !850
  %10 = icmp eq %struct.card_dev_t* null, %9, !dbg !852
  br i1 %10, label %11, label %12, !dbg !853

; <label>:11:                                     ; preds = %3
  store i32 -205, i32* %4, align 4, !dbg !854
  br label %35, !dbg !854

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %6, align 4, !dbg !855
  %14 = zext i32 %13 to i64, !dbg !856
  %15 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 0, !dbg !857
  store i64 %14, i64* %15, align 8, !dbg !858
  %16 = load i32, i32* %7, align 4, !dbg !859
  %17 = zext i32 %16 to i64, !dbg !860
  %18 = getelementptr inbounds %struct.genwqe_reg_io, %struct.genwqe_reg_io* %8, i32 0, i32 1, !dbg !861
  store i64 %17, i64* %18, align 8, !dbg !862
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !863
  %20 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %19, i32 0, i32 4, !dbg !864
  %21 = load i32, i32* %20, align 8, !dbg !864
  %22 = call i32 (i32, i64, ...) @ioctl(i32 %21, i64 1074832673, %struct.genwqe_reg_io* %8) #9, !dbg !865
  %23 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !866
  %24 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %23, i32 0, i32 5, !dbg !867
  store i32 %22, i32* %24, align 4, !dbg !868
  %25 = call i32* @__errno_location() #1, !dbg !869
  %26 = load i32, i32* %25, align 4, !dbg !870
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !871
  %28 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %27, i32 0, i32 6, !dbg !872
  store i32 %26, i32* %28, align 8, !dbg !873
  %29 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !874
  %30 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %29, i32 0, i32 5, !dbg !876
  %31 = load i32, i32* %30, align 4, !dbg !876
  %32 = icmp eq i32 0, %31, !dbg !877
  br i1 %32, label %33, label %34, !dbg !878

; <label>:33:                                     ; preds = %12
  store i32 0, i32* %4, align 4, !dbg !879
  br label %35, !dbg !879

; <label>:34:                                     ; preds = %12
  store i32 -202, i32* %4, align 4, !dbg !880
  br label %35, !dbg !880

; <label>:35:                                     ; preds = %34, %33, %11
  %36 = load i32, i32* %4, align 4, !dbg !881
  ret i32 %36, !dbg !881
}

; Function Attrs: nounwind uwtable
define %struct.card_dev_t* @genwqe_card_open(i32, i32, i32*, i64, i64) #0 !dbg !882 {
  %6 = alloca %struct.card_dev_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.card_dev_t*, align 8
  %13 = alloca %struct.lib_data_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !885, metadata !467), !dbg !886
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !887, metadata !467), !dbg !888
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !889, metadata !467), !dbg !890
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !891, metadata !467), !dbg !892
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !893, metadata !467), !dbg !894
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %12, metadata !895, metadata !467), !dbg !896
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %13, metadata !897, metadata !467), !dbg !898
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %13, align 8, !dbg !898
  call void @llvm.dbg.declare(metadata i32* %14, metadata !899, metadata !467), !dbg !900
  call void @llvm.dbg.declare(metadata i32* %15, metadata !901, metadata !467), !dbg !902
  %16 = load %struct.lib_data_t*, %struct.lib_data_t** %13, align 8, !dbg !903
  %17 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %16, i32 0, i32 4, !dbg !904
  %18 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %17) #9, !dbg !905
  br label %19, !dbg !906, !llvm.loop !907

; <label>:19:                                     ; preds = %5
  %20 = load i32, i32* @_dbg_flag, align 4, !dbg !908
  %21 = icmp ne i32 %20, 0, !dbg !908
  br i1 %21, label %22, label %28, !dbg !908

; <label>:22:                                     ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !912
  %24 = call i32 @getpid() #9, !dbg !914
  %25 = call i32 @gettid(), !dbg !915
  %26 = load i32, i32* %7, align 4, !dbg !917
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %24, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.genwqe_card_open, i32 0, i32 0), i32 %26), !dbg !918
  br label %28, !dbg !920

; <label>:28:                                     ; preds = %22, %19
  br label %29, !dbg !921

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %7, align 4, !dbg !923
  %31 = icmp eq i32 -1, %30, !dbg !925
  br i1 %31, label %32, label %36, !dbg !926

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %7, align 4, !dbg !927
  %34 = load i32, i32* %8, align 4, !dbg !928
  %35 = call %struct.card_dev_t* @__node_add(i32 %33, i8** bitcast (%struct.dev_card_t** @m_dev_head to i8**), i32 %34), !dbg !929
  store %struct.card_dev_t* %35, %struct.card_dev_t** %12, align 8, !dbg !930
  br label %40, !dbg !931

; <label>:36:                                     ; preds = %29
  %37 = load i32, i32* %7, align 4, !dbg !932
  %38 = load i32, i32* %8, align 4, !dbg !933
  %39 = call %struct.card_dev_t* @__node_add(i32 %37, i8** bitcast (%struct.dev_card_t** @s_dev_head to i8**), i32 %38), !dbg !934
  store %struct.card_dev_t* %39, %struct.card_dev_t** %12, align 8, !dbg !935
  br label %40

; <label>:40:                                     ; preds = %36, %32
  %41 = load %struct.lib_data_t*, %struct.lib_data_t** %13, align 8, !dbg !936
  %42 = call i32 @__health_thread_start(%struct.lib_data_t* %41), !dbg !937
  %43 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !938
  %44 = icmp eq %struct.card_dev_t* null, %43, !dbg !940
  br i1 %44, label %45, label %54, !dbg !941

; <label>:45:                                     ; preds = %40
  %46 = load %struct.lib_data_t*, %struct.lib_data_t** %13, align 8, !dbg !942
  %47 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %46, i32 0, i32 4, !dbg !944
  %48 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %47) #9, !dbg !945
  %49 = load i32*, i32** %9, align 8, !dbg !946
  %50 = icmp ne i32* %49, null, !dbg !946
  br i1 %50, label %51, label %53, !dbg !948

; <label>:51:                                     ; preds = %45
  %52 = load i32*, i32** %9, align 8, !dbg !949
  store i32 -201, i32* %52, align 4, !dbg !950
  br label %53, !dbg !951

; <label>:53:                                     ; preds = %51, %45
  store %struct.card_dev_t* null, %struct.card_dev_t** %6, align 8, !dbg !952
  br label %123, !dbg !952

; <label>:54:                                     ; preds = %40
  %55 = load i32, i32* %7, align 4, !dbg !953
  %56 = icmp eq i32 -1, %55, !dbg !955
  br i1 %56, label %57, label %60, !dbg !956

; <label>:57:                                     ; preds = %54
  %58 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !957
  %59 = call i32 @__genwqe_open_all(%struct.card_dev_t* %58), !dbg !958
  store i32 %59, i32* %14, align 4, !dbg !959
  br label %63, !dbg !960

; <label>:60:                                     ; preds = %54
  %61 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !961
  %62 = call i32 @__genwqe_open_one(%struct.card_dev_t* %61), !dbg !962
  store i32 %62, i32* %14, align 4, !dbg !963
  br label %63

; <label>:63:                                     ; preds = %60, %57
  %64 = load i32, i32* %14, align 4, !dbg !964
  %65 = icmp ne i32 -1, %64, !dbg !966
  br i1 %65, label %66, label %99, !dbg !967

; <label>:66:                                     ; preds = %63
  %67 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !968
  %68 = load i64, i64* %10, align 8, !dbg !970
  %69 = load i64, i64* %11, align 8, !dbg !971
  %70 = call i32 @__card_check_app(%struct.card_dev_t* %67, i64 %68, i64 %69), !dbg !972
  store i32 %70, i32* %15, align 4, !dbg !973
  %71 = load i32*, i32** %9, align 8, !dbg !974
  %72 = icmp ne i32* %71, null, !dbg !974
  br i1 %72, label %73, label %76, !dbg !976

; <label>:73:                                     ; preds = %66
  %74 = load i32, i32* %15, align 4, !dbg !977
  %75 = load i32*, i32** %9, align 8, !dbg !978
  store i32 %74, i32* %75, align 4, !dbg !979
  br label %76, !dbg !980

; <label>:76:                                     ; preds = %73, %66
  %77 = load i32, i32* %15, align 4, !dbg !981
  %78 = icmp eq i32 0, %77, !dbg !983
  br i1 %78, label %79, label %98, !dbg !984

; <label>:79:                                     ; preds = %76
  %80 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !985
  %81 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %80, i32 0, i32 1, !dbg !987
  store i32 1, i32* %81, align 4, !dbg !988
  br label %82, !dbg !989, !llvm.loop !990

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* @_dbg_flag, align 4, !dbg !991
  %84 = icmp ne i32 %83, 0, !dbg !991
  br i1 %84, label %85, label %92, !dbg !991

; <label>:85:                                     ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !995
  %87 = call i32 @getpid() #9, !dbg !997
  %88 = call i32 @gettid(), !dbg !998
  %89 = load i32, i32* %7, align 4, !dbg !1000
  %90 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !1001
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i32 %87, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1276, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.genwqe_card_open, i32 0, i32 0), i32 %89, %struct.card_dev_t* %90), !dbg !1002
  br label %92, !dbg !1004

; <label>:92:                                     ; preds = %85, %82
  br label %93, !dbg !1005

; <label>:93:                                     ; preds = %92
  %94 = load %struct.lib_data_t*, %struct.lib_data_t** %13, align 8, !dbg !1007
  %95 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %94, i32 0, i32 4, !dbg !1008
  %96 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %95) #9, !dbg !1009
  %97 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !1010
  store %struct.card_dev_t* %97, %struct.card_dev_t** %6, align 8, !dbg !1011
  br label %123, !dbg !1011

; <label>:98:                                     ; preds = %76
  br label %99, !dbg !1012

; <label>:99:                                     ; preds = %98, %63
  %100 = load i32*, i32** %9, align 8, !dbg !1013
  %101 = icmp ne i32* %100, null, !dbg !1013
  br i1 %101, label %102, label %104, !dbg !1015

; <label>:102:                                    ; preds = %99
  %103 = load i32*, i32** %9, align 8, !dbg !1016
  store i32 -203, i32* %103, align 4, !dbg !1017
  br label %104, !dbg !1018

; <label>:104:                                    ; preds = %102, %99
  br label %105, !dbg !1019, !llvm.loop !1020

; <label>:105:                                    ; preds = %104
  %106 = load i32, i32* @_dbg_flag, align 4, !dbg !1021
  %107 = icmp ne i32 %106, 0, !dbg !1021
  br i1 %107, label %108, label %116, !dbg !1021

; <label>:108:                                    ; preds = %105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1025
  %110 = call i32 @getpid() #9, !dbg !1027
  %111 = call i32 @gettid(), !dbg !1028
  %112 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !1030
  %113 = load i32, i32* %7, align 4, !dbg !1031
  %114 = load i32, i32* %14, align 4, !dbg !1032
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0), i32 %110, i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1284, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.genwqe_card_open, i32 0, i32 0), %struct.card_dev_t* %112, i32 %113, i32 %114), !dbg !1033
  br label %116, !dbg !1035

; <label>:116:                                    ; preds = %108, %105
  br label %117, !dbg !1036

; <label>:117:                                    ; preds = %116
  %118 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !1038
  %119 = call i32 @genwqe_card_close(%struct.card_dev_t* %118), !dbg !1039
  %120 = load %struct.lib_data_t*, %struct.lib_data_t** %13, align 8, !dbg !1040
  %121 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %120, i32 0, i32 4, !dbg !1041
  %122 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %121) #9, !dbg !1042
  store %struct.card_dev_t* null, %struct.card_dev_t** %6, align 8, !dbg !1043
  br label %123, !dbg !1043

; <label>:123:                                    ; preds = %117, %93, %53
  %124 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1044
  ret %struct.card_dev_t* %124, !dbg !1044
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @getpid() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gettid() #5 !dbg !1045 {
  %1 = call i64 (i64, ...) @syscall(i64 186) #9, !dbg !1049
  %2 = trunc i64 %1 to i32, !dbg !1050
  ret i32 %2, !dbg !1051
}

; Function Attrs: nounwind uwtable
define internal %struct.card_dev_t* @__node_add(i32, i8**, i32) #0 !dbg !1052 {
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.card_dev_t*, align 8
  %9 = alloca %struct.card_dev_t*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1056, metadata !467), !dbg !1057
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1058, metadata !467), !dbg !1059
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1060, metadata !467), !dbg !1061
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %8, metadata !1062, metadata !467), !dbg !1063
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %9, metadata !1064, metadata !467), !dbg !1065
  %10 = load i32, i32* %5, align 4, !dbg !1066
  %11 = load i32, i32* %7, align 4, !dbg !1067
  %12 = call %struct.card_dev_t* @__node_create(i32 %10, i32 %11), !dbg !1068
  store %struct.card_dev_t* %12, %struct.card_dev_t** %9, align 8, !dbg !1069
  %13 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !1070
  %14 = icmp eq %struct.card_dev_t* null, %13, !dbg !1072
  br i1 %14, label %15, label %16, !dbg !1073

; <label>:15:                                     ; preds = %3
  store %struct.card_dev_t* null, %struct.card_dev_t** %4, align 8, !dbg !1074
  br label %46, !dbg !1074

; <label>:16:                                     ; preds = %3
  %17 = load i8**, i8*** %6, align 8, !dbg !1075
  %18 = load i8*, i8** %17, align 8, !dbg !1076
  %19 = bitcast i8* %18 to %struct.card_dev_t*, !dbg !1077
  store %struct.card_dev_t* %19, %struct.card_dev_t** %8, align 8, !dbg !1078
  %20 = load i8**, i8*** %6, align 8, !dbg !1079
  %21 = load i8*, i8** %20, align 8, !dbg !1081
  %22 = icmp eq i8* null, %21, !dbg !1082
  br i1 %22, label %23, label %27, !dbg !1083

; <label>:23:                                     ; preds = %16
  %24 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !1084
  %25 = bitcast %struct.card_dev_t* %24 to i8*, !dbg !1085
  %26 = load i8**, i8*** %6, align 8, !dbg !1086
  store i8* %25, i8** %26, align 8, !dbg !1087
  br label %41, !dbg !1088

; <label>:27:                                     ; preds = %16
  br label %28, !dbg !1089

; <label>:28:                                     ; preds = %33, %27
  %29 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !1091
  %30 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %29, i32 0, i32 10, !dbg !1093
  %31 = load %struct.card_dev_t*, %struct.card_dev_t** %30, align 8, !dbg !1093
  %32 = icmp ne %struct.card_dev_t* null, %31, !dbg !1094
  br i1 %32, label %33, label %37, !dbg !1095

; <label>:33:                                     ; preds = %28
  %34 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !1096
  %35 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %34, i32 0, i32 10, !dbg !1097
  %36 = load %struct.card_dev_t*, %struct.card_dev_t** %35, align 8, !dbg !1097
  store %struct.card_dev_t* %36, %struct.card_dev_t** %8, align 8, !dbg !1098
  br label %28, !dbg !1099, !llvm.loop !1101

; <label>:37:                                     ; preds = %28
  %38 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !1102
  %39 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !1103
  %40 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %39, i32 0, i32 10, !dbg !1104
  store %struct.card_dev_t* %38, %struct.card_dev_t** %40, align 8, !dbg !1105
  br label %41

; <label>:41:                                     ; preds = %37, %23
  %42 = load %struct.card_dev_t*, %struct.card_dev_t** %8, align 8, !dbg !1106
  %43 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !1107
  %44 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %43, i32 0, i32 11, !dbg !1108
  store %struct.card_dev_t* %42, %struct.card_dev_t** %44, align 8, !dbg !1109
  %45 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !1110
  store %struct.card_dev_t* %45, %struct.card_dev_t** %4, align 8, !dbg !1111
  br label %46, !dbg !1111

; <label>:46:                                     ; preds = %41, %15
  %47 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1112
  ret %struct.card_dev_t* %47, !dbg !1112
}

; Function Attrs: nounwind uwtable
define internal i32 @__health_thread_start(%struct.lib_data_t*) #0 !dbg !1113 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lib_data_t*, align 8
  %4 = alloca i32, align 4
  store %struct.lib_data_t* %0, %struct.lib_data_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %3, metadata !1116, metadata !467), !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1118, metadata !467), !dbg !1119
  %5 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !1120
  %6 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %5, i32 0, i32 1, !dbg !1122
  %7 = load i64, i64* %6, align 8, !dbg !1122
  %8 = icmp ne i64 -1, %7, !dbg !1123
  br i1 %8, label %9, label %10, !dbg !1124

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1125
  br label %35, !dbg !1125

; <label>:10:                                     ; preds = %1
  %11 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !1126
  %12 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %11, i32 0, i32 2, !dbg !1127
  %13 = call i32 @sem_init(%union.sem_t* %12, i32 0, i32 0) #9, !dbg !1128
  store i32 %13, i32* %4, align 4, !dbg !1129
  %14 = load i32, i32* %4, align 4, !dbg !1130
  %15 = icmp ne i32 0, %14, !dbg !1132
  br i1 %15, label %16, label %17, !dbg !1133

; <label>:16:                                     ; preds = %10
  br label %27, !dbg !1134

; <label>:17:                                     ; preds = %10
  %18 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !1135
  %19 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %18, i32 0, i32 1, !dbg !1136
  %20 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !1137
  %21 = bitcast %struct.lib_data_t* %20 to i8*, !dbg !1137
  %22 = call i32 @pthread_create(i64* %19, %union.pthread_attr_t* null, i8* (i8*)* @__health_thread, i8* %21) #9, !dbg !1138
  store i32 %22, i32* %4, align 4, !dbg !1139
  %23 = load i32, i32* %4, align 4, !dbg !1140
  %24 = icmp ne i32 0, %23, !dbg !1142
  br i1 %24, label %25, label %26, !dbg !1143

; <label>:25:                                     ; preds = %17
  br label %27, !dbg !1144

; <label>:26:                                     ; preds = %17
  store i32 0, i32* %2, align 4, !dbg !1145
  br label %35, !dbg !1145

; <label>:27:                                     ; preds = %25, %16
  %28 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !1146
  %29 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %28, i32 0, i32 1, !dbg !1147
  store i64 -1, i64* %29, align 8, !dbg !1148
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1149
  %31 = call i32 @getpid() #9, !dbg !1150
  %32 = call i32 @gettid(), !dbg !1151
  %33 = load i32, i32* %4, align 4, !dbg !1153
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i32 0, i32 0), i32 %31, i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 958, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.__health_thread_start, i32 0, i32 0), i32 %33), !dbg !1154
  store i32 -1, i32* %2, align 4, !dbg !1156
  br label %35, !dbg !1156

; <label>:35:                                     ; preds = %27, %26, %9
  %36 = load i32, i32* %2, align 4, !dbg !1157
  ret i32 %36, !dbg !1157
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_open_all(%struct.card_dev_t*) #0 !dbg !1158 {
  %2 = alloca %struct.card_dev_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lib_data_t*, align 8
  %5 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !1161, metadata !467), !dbg !1162
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1163, metadata !467), !dbg !1164
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %4, metadata !1165, metadata !467), !dbg !1166
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %4, align 8, !dbg !1166
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1167, metadata !467), !dbg !1168
  store i32 -1, i32* %5, align 4, !dbg !1168
  %6 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !1169
  %7 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %6, i32 0, i32 7, !dbg !1171
  %8 = load i32, i32* %7, align 8, !dbg !1171
  %9 = icmp eq i32 -1, %8, !dbg !1172
  br i1 %9, label %10, label %16, !dbg !1173

; <label>:10:                                     ; preds = %1
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1174
  %12 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %11, i32 0, i32 2, !dbg !1175
  %13 = load i32, i32* %12, align 8, !dbg !1175
  %14 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !1176
  %15 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %14, i32 0, i32 7, !dbg !1177
  store i32 %13, i32* %15, align 8, !dbg !1178
  br label %31, !dbg !1176

; <label>:16:                                     ; preds = %1
  %17 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !1179
  %18 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %17, i32 0, i32 7, !dbg !1181
  %19 = load i32, i32* %18, align 8, !dbg !1181
  %20 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1182
  %21 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %20, i32 0, i32 2, !dbg !1183
  %22 = load i32, i32* %21, align 8, !dbg !1183
  %23 = icmp ne i32 %19, %22, !dbg !1184
  br i1 %23, label %24, label %30, !dbg !1185

; <label>:24:                                     ; preds = %16
  %25 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !1186
  %26 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %25, i32 0, i32 7, !dbg !1187
  %27 = load i32, i32* %26, align 8, !dbg !1187
  %28 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1188
  %29 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %28, i32 0, i32 2, !dbg !1189
  store i32 %27, i32* %29, align 8, !dbg !1190
  br label %30, !dbg !1188

; <label>:30:                                     ; preds = %24, %16
  br label %31

; <label>:31:                                     ; preds = %30, %10
  %32 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !1191
  %33 = call i32 @__m_open_all(%struct.lib_data_t* %32), !dbg !1192
  store i32 %33, i32* %3, align 4, !dbg !1193
  %34 = load i32, i32* %3, align 4, !dbg !1194
  %35 = icmp ne i32 %34, 0, !dbg !1194
  br i1 %35, label %36, label %59, !dbg !1196

; <label>:36:                                     ; preds = %31
  %37 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1197
  %38 = call i32 @__fd_m_head(%struct.card_dev_t* %37), !dbg !1199
  store i32 %38, i32* %5, align 4, !dbg !1200
  br label %39, !dbg !1201, !llvm.loop !1202

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* @_dbg_flag, align 4, !dbg !1203
  %41 = icmp ne i32 %40, 0, !dbg !1203
  br i1 %41, label %42, label %52, !dbg !1203

; <label>:42:                                     ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1207
  %44 = call i32 @getpid() #9, !dbg !1209
  %45 = call i32 @gettid(), !dbg !1210
  %46 = load i32, i32* %3, align 4, !dbg !1212
  %47 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !1213
  %48 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %47, i32 0, i32 6, !dbg !1214
  %49 = load i32, i32* %48, align 4, !dbg !1214
  %50 = load i32, i32* %5, align 4, !dbg !1215
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.60, i32 0, i32 0), i32 %44, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1019, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.__genwqe_open_all, i32 0, i32 0), i32 %46, i32 %49, i32 %50), !dbg !1216
  br label %52, !dbg !1218

; <label>:52:                                     ; preds = %42, %39
  br label %53, !dbg !1219

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %5, align 4, !dbg !1221
  %55 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1222
  %56 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %55, i32 0, i32 4, !dbg !1223
  store i32 %54, i32* %56, align 8, !dbg !1224
  %57 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1225
  call void @__card_get_app(%struct.card_dev_t* %57), !dbg !1226
  %58 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !1227
  call void @__inotify_create(%struct.lib_data_t* %58), !dbg !1228
  br label %59, !dbg !1229

; <label>:59:                                     ; preds = %53, %31
  %60 = load i32, i32* %5, align 4, !dbg !1230
  ret i32 %60, !dbg !1231
}

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_open_one(%struct.card_dev_t*) #0 !dbg !1232 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lib_data_t*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !1233, metadata !467), !dbg !1234
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1235, metadata !467), !dbg !1236
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1237
  %8 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %7, i32 0, i32 0, !dbg !1238
  %9 = load i32, i32* %8, align 8, !dbg !1238
  %10 = and i32 %9, 4095, !dbg !1239
  store i32 %10, i32* %4, align 4, !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1240, metadata !467), !dbg !1241
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %6, metadata !1242, metadata !467), !dbg !1243
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %6, align 8, !dbg !1243
  %11 = load i32, i32* %4, align 4, !dbg !1244
  %12 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1245
  %13 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %12, i32 0, i32 2, !dbg !1246
  %14 = load i32, i32* %13, align 8, !dbg !1246
  %15 = call i32 @__genwqe_dev_open(i32 %11, i32 %14), !dbg !1247
  store i32 %15, i32* %5, align 4, !dbg !1248
  %16 = call i32* @__errno_location() #1, !dbg !1249
  %17 = load i32, i32* %16, align 4, !dbg !1250
  %18 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1251
  %19 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %18, i32 0, i32 6, !dbg !1252
  store i32 %17, i32* %19, align 8, !dbg !1253
  %20 = load i32, i32* %5, align 4, !dbg !1254
  %21 = icmp ne i32 -1, %20, !dbg !1256
  br i1 %21, label %22, label %35, !dbg !1257

; <label>:22:                                     ; preds = %1
  %23 = load i32, i32* %5, align 4, !dbg !1258
  %24 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1260
  %25 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %24, i32 0, i32 5, !dbg !1261
  store i32 %23, i32* %25, align 4, !dbg !1262
  %26 = load i32, i32* %5, align 4, !dbg !1263
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1264
  %28 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %27, i32 0, i32 4, !dbg !1265
  store i32 %26, i32* %28, align 8, !dbg !1266
  %29 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1267
  call void @__card_get_app(%struct.card_dev_t* %29), !dbg !1268
  %30 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !1269
  %31 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %30, i32 0, i32 5, !dbg !1270
  %32 = load i32, i32* %31, align 8, !dbg !1271
  %33 = add nsw i32 %32, 1, !dbg !1271
  store i32 %33, i32* %31, align 8, !dbg !1271
  %34 = load i32, i32* %5, align 4, !dbg !1272
  store i32 %34, i32* %2, align 4, !dbg !1273
  br label %36, !dbg !1273

; <label>:35:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1274
  br label %36, !dbg !1274

; <label>:36:                                     ; preds = %35, %22
  %37 = load i32, i32* %2, align 4, !dbg !1275
  ret i32 %37, !dbg !1275
}

; Function Attrs: nounwind uwtable
define internal i32 @__card_check_app(%struct.card_dev_t*, i64, i64) #0 !dbg !1276 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !1279, metadata !467), !dbg !1280
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1281, metadata !467), !dbg !1282
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1283, metadata !467), !dbg !1284
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1285
  %9 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %8, i32 0, i32 8, !dbg !1287
  %10 = load i64, i64* %9, align 8, !dbg !1287
  %11 = load i64, i64* %7, align 8, !dbg !1288
  %12 = and i64 %10, %11, !dbg !1289
  %13 = load i64, i64* %6, align 8, !dbg !1290
  %14 = load i64, i64* %7, align 8, !dbg !1291
  %15 = and i64 %13, %14, !dbg !1292
  %16 = icmp ne i64 %12, %15, !dbg !1293
  br i1 %16, label %17, label %36, !dbg !1294

; <label>:17:                                     ; preds = %3
  br label %18, !dbg !1295, !llvm.loop !1297

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* @_dbg_flag, align 4, !dbg !1298
  %20 = icmp ne i32 %19, 0, !dbg !1298
  br i1 %20, label %21, label %34, !dbg !1298

; <label>:21:                                     ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1302
  %23 = call i32 @getpid() #9, !dbg !1304
  %24 = call i32 @gettid(), !dbg !1305
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1307
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 8, !dbg !1308
  %27 = load i64, i64* %26, align 8, !dbg !1308
  %28 = load i64, i64* %6, align 8, !dbg !1309
  %29 = load i64, i64* %7, align 8, !dbg !1310
  %30 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1311
  %31 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %30, i32 0, i32 4, !dbg !1312
  %32 = load i32, i32* %31, align 8, !dbg !1312
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.75, i32 0, i32 0), i32 %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1041, i64 %27, i64 %28, i64 %29, i32 %32), !dbg !1313
  br label %34, !dbg !1315

; <label>:34:                                     ; preds = %21, %18
  br label %35, !dbg !1316

; <label>:35:                                     ; preds = %34
  store i32 -214, i32* %4, align 4, !dbg !1318
  br label %37, !dbg !1318

; <label>:36:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1319
  br label %37, !dbg !1319

; <label>:37:                                     ; preds = %36, %35
  %38 = load i32, i32* %4, align 4, !dbg !1320
  ret i32 %38, !dbg !1320
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_close(%struct.card_dev_t*) #0 !dbg !1321 {
  %2 = alloca %struct.card_dev_t*, align 8
  %3 = alloca %struct.lib_data_t*, align 8
  %4 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !1322, metadata !467), !dbg !1323
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %3, metadata !1324, metadata !467), !dbg !1325
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %3, align 8, !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1326, metadata !467), !dbg !1327
  store i32 -205, i32* %4, align 4, !dbg !1327
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1328
  %6 = icmp ne %struct.card_dev_t* %5, null, !dbg !1328
  br i1 %6, label %7, label %34, !dbg !1330

; <label>:7:                                      ; preds = %1
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1331
  %9 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %8, i32 0, i32 12, !dbg !1334
  %10 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !1334
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1335
  %12 = icmp eq %struct.card_dev_t* %10, %11, !dbg !1336
  br i1 %12, label %13, label %33, !dbg !1337

; <label>:13:                                     ; preds = %7
  %14 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1338
  %15 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %14, i32 0, i32 1, !dbg !1340
  store i32 2, i32* %15, align 4, !dbg !1341
  br label %16, !dbg !1342, !llvm.loop !1343

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* @_dbg_flag, align 4, !dbg !1344
  %18 = icmp ne i32 %17, 0, !dbg !1344
  br i1 %18, label %19, label %28, !dbg !1344

; <label>:19:                                     ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1348
  %21 = call i32 @getpid() #9, !dbg !1350
  %22 = call i32 @gettid(), !dbg !1351
  %23 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1353
  %24 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1354
  %25 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %24, i32 0, i32 4, !dbg !1355
  %26 = load i32, i32* %25, align 8, !dbg !1355
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i32 %21, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1307, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.genwqe_card_close, i32 0, i32 0), %struct.card_dev_t* %23, i32 %26), !dbg !1356
  br label %28, !dbg !1358

; <label>:28:                                     ; preds = %19, %16
  br label %29, !dbg !1359

; <label>:29:                                     ; preds = %28
  %30 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !1361
  %31 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %30, i32 0, i32 2, !dbg !1362
  %32 = call i32 @sem_post(%union.sem_t* %31) #9, !dbg !1363
  store i32 0, i32* %4, align 4, !dbg !1364
  br label %33, !dbg !1365

; <label>:33:                                     ; preds = %29, %7
  br label %34, !dbg !1366

; <label>:34:                                     ; preds = %33, %1
  %35 = load i32, i32* %4, align 4, !dbg !1367
  ret i32 %35, !dbg !1368
}

; Function Attrs: nounwind
declare i32 @sem_post(%union.sem_t*) #2

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_fileno(%struct.card_dev_t*) #0 !dbg !1369 {
  %2 = alloca %struct.card_dev_t*, align 8
  %3 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !1370, metadata !467), !dbg !1371
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1372, metadata !467), !dbg !1373
  store i32 -205, i32* %3, align 4, !dbg !1373
  %4 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1374
  %5 = icmp ne %struct.card_dev_t* %4, null, !dbg !1374
  br i1 %5, label %6, label %9, !dbg !1376

; <label>:6:                                      ; preds = %1
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !1377
  %8 = call i32 @__fd_get(%struct.card_dev_t* %7, i32* null), !dbg !1378
  store i32 %8, i32* %3, align 4, !dbg !1379
  br label %9, !dbg !1380

; <label>:9:                                      ; preds = %6, %1
  %10 = load i32, i32* %3, align 4, !dbg !1381
  ret i32 %10, !dbg !1382
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_pin_memory(%struct.card_dev_t*, i8*, i64, i32) #0 !dbg !1383 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.card_dev_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.genwqe_mem, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %6, metadata !1388, metadata !467), !dbg !1389
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1390, metadata !467), !dbg !1391
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1392, metadata !467), !dbg !1393
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1394, metadata !467), !dbg !1395
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1396, metadata !467), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1398, metadata !467), !dbg !1399
  call void @llvm.dbg.declare(metadata %struct.genwqe_mem* %12, metadata !1400, metadata !467), !dbg !1407
  %13 = load i8*, i8** %7, align 8, !dbg !1408
  %14 = ptrtoint i8* %13 to i64, !dbg !1409
  %15 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %12, i32 0, i32 0, !dbg !1410
  store i64 %14, i64* %15, align 8, !dbg !1411
  %16 = load i64, i64* %8, align 8, !dbg !1412
  %17 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %12, i32 0, i32 1, !dbg !1413
  store i64 %16, i64* %17, align 8, !dbg !1414
  %18 = load i32, i32* %9, align 4, !dbg !1415
  %19 = sext i32 %18 to i64, !dbg !1415
  %20 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %12, i32 0, i32 2, !dbg !1416
  store i64 %19, i64* %20, align 8, !dbg !1417
  br label %21, !dbg !1418, !llvm.loop !1419

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* @_dbg_flag, align 4, !dbg !1420
  %23 = icmp ne i32 %22, 0, !dbg !1420
  br i1 %23, label %24, label %34, !dbg !1420

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1424
  %26 = call i32 @getpid() #9, !dbg !1426
  %27 = call i32 @gettid(), !dbg !1427
  %28 = load i8*, i8** %7, align 8, !dbg !1429
  %29 = ptrtoint i8* %28 to i64, !dbg !1430
  %30 = load i64, i64* %8, align 8, !dbg !1431
  %31 = load i32, i32* %9, align 4, !dbg !1432
  %32 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1433
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i32 0, i32 0), i32 %26, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1357, i64 %29, i64 %30, i32 %31, %struct.card_dev_t* %32), !dbg !1434
  br label %34, !dbg !1436

; <label>:34:                                     ; preds = %24, %21
  br label %35, !dbg !1437

; <label>:35:                                     ; preds = %34
  %36 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1439
  %37 = icmp ne %struct.card_dev_t* %36, null, !dbg !1439
  br i1 %37, label %38, label %84, !dbg !1441

; <label>:38:                                     ; preds = %35
  %39 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1442
  %40 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1445
  %41 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %40, i32 0, i32 12, !dbg !1446
  %42 = load %struct.card_dev_t*, %struct.card_dev_t** %41, align 8, !dbg !1446
  %43 = icmp eq %struct.card_dev_t* %39, %42, !dbg !1447
  br i1 %43, label %44, label %72, !dbg !1448

; <label>:44:                                     ; preds = %38
  %45 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1449
  %46 = call i32 @__fd_get(%struct.card_dev_t* %45, i32* null), !dbg !1451
  store i32 %46, i32* %11, align 4, !dbg !1452
  br label %47, !dbg !1453, !llvm.loop !1454

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* @_dbg_flag, align 4, !dbg !1455
  %49 = icmp ne i32 %48, 0, !dbg !1455
  br i1 %49, label %50, label %58, !dbg !1455

; <label>:50:                                     ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1459
  %52 = call i32 @getpid() #9, !dbg !1461
  %53 = call i32 @gettid(), !dbg !1462
  %54 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1464
  %55 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %54, i32 0, i32 0, !dbg !1465
  %56 = load i32, i32* %55, align 8, !dbg !1465
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0), i32 %52, i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1361, i32 %56), !dbg !1466
  br label %58, !dbg !1468

; <label>:58:                                     ; preds = %50, %47
  br label %59, !dbg !1469

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %11, align 4, !dbg !1471
  %61 = call i32 (i32, i64, ...) @ioctl(i32 %60, i64 3223364904, %struct.genwqe_mem* %12) #9, !dbg !1472
  store i32 %61, i32* %10, align 4, !dbg !1473
  %62 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1474
  %63 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %62, i32 0, i32 5, !dbg !1475
  store i32 %61, i32* %63, align 4, !dbg !1476
  %64 = call i32* @__errno_location() #1, !dbg !1477
  %65 = load i32, i32* %64, align 4, !dbg !1478
  %66 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1479
  %67 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %66, i32 0, i32 6, !dbg !1480
  store i32 %65, i32* %67, align 8, !dbg !1481
  %68 = load i32, i32* %10, align 4, !dbg !1482
  %69 = icmp eq i32 0, %68, !dbg !1484
  br i1 %69, label %70, label %71, !dbg !1485

; <label>:70:                                     ; preds = %59
  store i32 0, i32* %5, align 4, !dbg !1486
  br label %85, !dbg !1486

; <label>:71:                                     ; preds = %59
  br label %72, !dbg !1487

; <label>:72:                                     ; preds = %71, %38
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1488
  %74 = call i32 @getpid() #9, !dbg !1489
  %75 = call i32 @gettid(), !dbg !1490
  %76 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1492
  %77 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !1493
  %78 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %77, i32 0, i32 6, !dbg !1494
  %79 = load i32, i32* %78, align 8, !dbg !1494
  %80 = load i8*, i8** %7, align 8, !dbg !1495
  %81 = load i64, i64* %8, align 8, !dbg !1496
  %82 = load i32, i32* %9, align 4, !dbg !1497
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), i32 %74, i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1368, %struct.card_dev_t* %76, i32 %79, i8* %80, i64 %81, i32 %82), !dbg !1498
  br label %84, !dbg !1500

; <label>:84:                                     ; preds = %72, %35
  store i32 -212, i32* %5, align 4, !dbg !1501
  br label %85, !dbg !1501

; <label>:85:                                     ; preds = %84, %70
  %86 = load i32, i32* %5, align 4, !dbg !1502
  ret i32 %86, !dbg !1502
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_unpin_memory(%struct.card_dev_t*, i8*, i64) #0 !dbg !1503 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.genwqe_mem, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !1506, metadata !467), !dbg !1507
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1508, metadata !467), !dbg !1509
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1510, metadata !467), !dbg !1511
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1512, metadata !467), !dbg !1513
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1514, metadata !467), !dbg !1515
  call void @llvm.dbg.declare(metadata %struct.genwqe_mem* %10, metadata !1516, metadata !467), !dbg !1517
  %11 = load i8*, i8** %6, align 8, !dbg !1518
  %12 = ptrtoint i8* %11 to i64, !dbg !1519
  %13 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %10, i32 0, i32 0, !dbg !1520
  store i64 %12, i64* %13, align 8, !dbg !1521
  %14 = load i64, i64* %7, align 8, !dbg !1522
  %15 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %10, i32 0, i32 1, !dbg !1523
  store i64 %14, i64* %15, align 8, !dbg !1524
  %16 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %10, i32 0, i32 2, !dbg !1525
  store i64 0, i64* %16, align 8, !dbg !1526
  br label %17, !dbg !1527, !llvm.loop !1528

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* @_dbg_flag, align 4, !dbg !1529
  %19 = icmp ne i32 %18, 0, !dbg !1529
  br i1 %19, label %20, label %29, !dbg !1529

; <label>:20:                                     ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1533
  %22 = call i32 @getpid() #9, !dbg !1535
  %23 = call i32 @gettid(), !dbg !1536
  %24 = load i8*, i8** %6, align 8, !dbg !1538
  %25 = ptrtoint i8* %24 to i64, !dbg !1539
  %26 = load i64, i64* %7, align 8, !dbg !1540
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1541
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i32 0, i32 0), i32 %22, i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1383, i64 %25, i64 %26, %struct.card_dev_t* %27), !dbg !1542
  br label %29, !dbg !1544

; <label>:29:                                     ; preds = %20, %17
  br label %30, !dbg !1545

; <label>:30:                                     ; preds = %29
  %31 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1547
  %32 = icmp ne %struct.card_dev_t* %31, null, !dbg !1547
  br i1 %32, label %33, label %79, !dbg !1549

; <label>:33:                                     ; preds = %30
  %34 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1550
  %35 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1553
  %36 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %35, i32 0, i32 12, !dbg !1554
  %37 = load %struct.card_dev_t*, %struct.card_dev_t** %36, align 8, !dbg !1554
  %38 = icmp eq %struct.card_dev_t* %34, %37, !dbg !1555
  br i1 %38, label %39, label %68, !dbg !1556

; <label>:39:                                     ; preds = %33
  %40 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1557
  %41 = call i32 @__fd_get(%struct.card_dev_t* %40, i32* null), !dbg !1559
  store i32 %41, i32* %9, align 4, !dbg !1560
  br label %42, !dbg !1561, !llvm.loop !1562

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* @_dbg_flag, align 4, !dbg !1563
  %44 = icmp ne i32 %43, 0, !dbg !1563
  br i1 %44, label %45, label %54, !dbg !1563

; <label>:45:                                     ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1567
  %47 = call i32 @getpid() #9, !dbg !1569
  %48 = call i32 @gettid(), !dbg !1570
  %49 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1572
  %50 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %49, i32 0, i32 0, !dbg !1573
  %51 = load i32, i32* %50, align 8, !dbg !1573
  %52 = load i32, i32* %9, align 4, !dbg !1574
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i32 %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1387, i32 %51, i32 %52), !dbg !1575
  br label %54, !dbg !1577

; <label>:54:                                     ; preds = %45, %42
  br label %55, !dbg !1578

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %9, align 4, !dbg !1580
  %57 = call i32 (i32, i64, ...) @ioctl(i32 %56, i64 3223364905, %struct.genwqe_mem* %10) #9, !dbg !1581
  store i32 %57, i32* %8, align 4, !dbg !1582
  %58 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1583
  %59 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %58, i32 0, i32 5, !dbg !1584
  store i32 %57, i32* %59, align 4, !dbg !1585
  %60 = call i32* @__errno_location() #1, !dbg !1586
  %61 = load i32, i32* %60, align 4, !dbg !1587
  %62 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1588
  %63 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %62, i32 0, i32 6, !dbg !1589
  store i32 %61, i32* %63, align 8, !dbg !1590
  %64 = load i32, i32* %8, align 4, !dbg !1591
  %65 = icmp eq i32 0, %64, !dbg !1593
  br i1 %65, label %66, label %67, !dbg !1594

; <label>:66:                                     ; preds = %55
  store i32 0, i32* %4, align 4, !dbg !1595
  br label %80, !dbg !1595

; <label>:67:                                     ; preds = %55
  br label %68, !dbg !1596

; <label>:68:                                     ; preds = %67, %33
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1597
  %70 = call i32 @getpid() #9, !dbg !1598
  %71 = call i32 @gettid(), !dbg !1599
  %72 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1601
  %73 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1602
  %74 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %73, i32 0, i32 6, !dbg !1603
  %75 = load i32, i32* %74, align 8, !dbg !1603
  %76 = load i8*, i8** %6, align 8, !dbg !1604
  %77 = load i64, i64* %7, align 8, !dbg !1605
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), i32 %70, i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1394, %struct.card_dev_t* %72, i32 %75, i8* %76, i64 %77), !dbg !1606
  br label %79, !dbg !1608

; <label>:79:                                     ; preds = %68, %30
  store i32 -212, i32* %4, align 4, !dbg !1609
  br label %80, !dbg !1609

; <label>:80:                                     ; preds = %79, %66
  %81 = load i32, i32* %4, align 4, !dbg !1610
  ret i32 %81, !dbg !1610
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_execute_raw_ddcb(%struct.card_dev_t*, %struct.genwqe_ddcb_cmd*) #0 !dbg !1611 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca %struct.genwqe_ddcb_cmd*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !1614, metadata !467), !dbg !1615
  store %struct.genwqe_ddcb_cmd* %1, %struct.genwqe_ddcb_cmd** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.genwqe_ddcb_cmd** %4, metadata !1616, metadata !467), !dbg !1617
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1618
  %6 = load %struct.genwqe_ddcb_cmd*, %struct.genwqe_ddcb_cmd** %4, align 8, !dbg !1619
  %7 = call i32 @__genwqe_card_execute(%struct.card_dev_t* %5, %struct.genwqe_ddcb_cmd* %6, i32 -1058495181), !dbg !1620
  ret i32 %7, !dbg !1621
}

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_card_execute(%struct.card_dev_t*, %struct.genwqe_ddcb_cmd*, i32) #0 !dbg !1622 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca %struct.genwqe_ddcb_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.genwqe_ddcb_cmd*, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.lib_data_t*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !1625, metadata !467), !dbg !1626
  store %struct.genwqe_ddcb_cmd* %1, %struct.genwqe_ddcb_cmd** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.genwqe_ddcb_cmd** %6, metadata !1627, metadata !467), !dbg !1628
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1629, metadata !467), !dbg !1630
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1631, metadata !467), !dbg !1632
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1633, metadata !467), !dbg !1634
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1635, metadata !467), !dbg !1636
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1637, metadata !467), !dbg !1638
  call void @llvm.dbg.declare(metadata %struct.genwqe_ddcb_cmd** %12, metadata !1639, metadata !467), !dbg !1640
  call void @llvm.dbg.declare(metadata %struct.timeval* %13, metadata !1641, metadata !467), !dbg !1649
  call void @llvm.dbg.declare(metadata %struct.timeval* %14, metadata !1650, metadata !467), !dbg !1651
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %15, metadata !1652, metadata !467), !dbg !1653
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %15, align 8, !dbg !1653
  %16 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1654
  %17 = icmp eq %struct.card_dev_t* null, %16, !dbg !1656
  br i1 %17, label %18, label %19, !dbg !1657

; <label>:18:                                     ; preds = %3
  store i32 -211, i32* %4, align 4, !dbg !1658
  br label %129, !dbg !1658

; <label>:19:                                     ; preds = %3
  %20 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1659
  %21 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1661
  %22 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %21, i32 0, i32 12, !dbg !1662
  %23 = load %struct.card_dev_t*, %struct.card_dev_t** %22, align 8, !dbg !1662
  %24 = icmp ne %struct.card_dev_t* %20, %23, !dbg !1663
  br i1 %24, label %25, label %26, !dbg !1664

; <label>:25:                                     ; preds = %19
  store i32 -211, i32* %4, align 4, !dbg !1665
  br label %129, !dbg !1665

; <label>:26:                                     ; preds = %19
  %27 = call i32 @gettimeofday(%struct.timeval* %13, %struct.timezone* null) #9, !dbg !1666
  %28 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1667
  %29 = call i32 @__fd_get(%struct.card_dev_t* %28, i32* %11), !dbg !1668
  store i32 %29, i32* %9, align 4, !dbg !1669
  %30 = load %struct.genwqe_ddcb_cmd*, %struct.genwqe_ddcb_cmd** %6, align 8, !dbg !1670
  store %struct.genwqe_ddcb_cmd* %30, %struct.genwqe_ddcb_cmd** %12, align 8, !dbg !1671
  br label %31, !dbg !1672

; <label>:31:                                     ; preds = %118, %26
  %32 = load %struct.genwqe_ddcb_cmd*, %struct.genwqe_ddcb_cmd** %12, align 8, !dbg !1673
  %33 = icmp ne %struct.genwqe_ddcb_cmd* %32, null, !dbg !1675
  br i1 %33, label %34, label %128, !dbg !1676

; <label>:34:                                     ; preds = %31
  br label %35, !dbg !1677

; <label>:35:                                     ; preds = %100, %90, %34
  %36 = load i32, i32* %9, align 4, !dbg !1679
  %37 = load i32, i32* %7, align 4, !dbg !1681
  %38 = sext i32 %37 to i64, !dbg !1681
  %39 = load %struct.genwqe_ddcb_cmd*, %struct.genwqe_ddcb_cmd** %12, align 8, !dbg !1682
  %40 = call i32 (i32, i64, ...) @ioctl(i32 %36, i64 %38, %struct.genwqe_ddcb_cmd* %39) #9, !dbg !1683
  store i32 %40, i32* %8, align 4, !dbg !1684
  %41 = call i32* @__errno_location() #1, !dbg !1685
  %42 = load i32, i32* %41, align 4, !dbg !1686
  %43 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1687
  %44 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %43, i32 0, i32 6, !dbg !1688
  store i32 %42, i32* %44, align 8, !dbg !1689
  %45 = load i32, i32* %8, align 4, !dbg !1690
  %46 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1691
  %47 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %46, i32 0, i32 5, !dbg !1692
  store i32 %45, i32* %47, align 4, !dbg !1693
  %48 = load i32, i32* %8, align 4, !dbg !1694
  %49 = icmp slt i32 %48, 0, !dbg !1696
  br i1 %49, label %50, label %118, !dbg !1697

; <label>:50:                                     ; preds = %35
  %51 = load %struct.lib_data_t*, %struct.lib_data_t** %15, align 8, !dbg !1698
  %52 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %51, i32 0, i32 2, !dbg !1700
  %53 = call i32 @sem_post(%union.sem_t* %52) #9, !dbg !1701
  %54 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1702
  %55 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %54, i32 0, i32 0, !dbg !1704
  %56 = load i32, i32* %55, align 8, !dbg !1704
  %57 = icmp eq i32 -1, %56, !dbg !1705
  br i1 %57, label %58, label %96, !dbg !1706

; <label>:58:                                     ; preds = %50
  %59 = call i32 @gettimeofday(%struct.timeval* %14, %struct.timezone* null) #9, !dbg !1707
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0, !dbg !1709
  %61 = load i64, i64* %60, align 8, !dbg !1709
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0, !dbg !1711
  %63 = load i64, i64* %62, align 8, !dbg !1711
  %64 = sub nsw i64 %61, %63, !dbg !1712
  %65 = icmp sgt i64 %64, 30, !dbg !1713
  br i1 %65, label %66, label %80, !dbg !1714

; <label>:66:                                     ; preds = %58
  br label %67, !dbg !1715, !llvm.loop !1717

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* @_dbg_flag, align 4, !dbg !1718
  %69 = icmp ne i32 %68, 0, !dbg !1718
  br i1 %69, label %70, label %78, !dbg !1718

; <label>:70:                                     ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1722
  %72 = call i32 @getpid() #9, !dbg !1724
  %73 = call i32 @gettid(), !dbg !1725
  %74 = call i32* @__errno_location() #1, !dbg !1727
  %75 = load i32, i32* %74, align 4, !dbg !1729
  %76 = load i32, i32* %9, align 4, !dbg !1730
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.76, i32 0, i32 0), i32 %72, i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1441, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.__genwqe_card_execute, i32 0, i32 0), i32 %75, i32 %76), !dbg !1731
  br label %78, !dbg !1733

; <label>:78:                                     ; preds = %70, %67
  br label %79, !dbg !1734

; <label>:79:                                     ; preds = %78
  store i32 -211, i32* %4, align 4, !dbg !1736
  br label %129, !dbg !1736

; <label>:80:                                     ; preds = %58
  %81 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1737
  %82 = call i32 @__fd_get(%struct.card_dev_t* %81, i32* %11), !dbg !1738
  store i32 %82, i32* %10, align 4, !dbg !1739
  %83 = load i32, i32* %10, align 4, !dbg !1740
  %84 = load i32, i32* %9, align 4, !dbg !1742
  %85 = icmp ne i32 %83, %84, !dbg !1743
  br i1 %85, label %86, label %88, !dbg !1744

; <label>:86:                                     ; preds = %80
  %87 = load i32, i32* %10, align 4, !dbg !1745
  store i32 %87, i32* %9, align 4, !dbg !1746
  br label %90, !dbg !1747

; <label>:88:                                     ; preds = %80
  %89 = call i32 @usleep(i32 1000000), !dbg !1748
  br label %90

; <label>:90:                                     ; preds = %88, %86
  %91 = load i32, i32* %11, align 4, !dbg !1749
  %92 = sext i32 %91 to i64, !dbg !1750
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* @card_retried_ddcbs, i64 0, i64 %92, !dbg !1750
  %94 = load i32, i32* %93, align 4, !dbg !1751
  %95 = add i32 %94, 1, !dbg !1751
  store i32 %95, i32* %93, align 4, !dbg !1751
  br label %35, !dbg !1752

; <label>:96:                                     ; preds = %50
  %97 = call i32* @__errno_location() #1, !dbg !1753
  %98 = load i32, i32* %97, align 4, !dbg !1755
  %99 = icmp eq i32 %98, 16, !dbg !1756
  br i1 %99, label %100, label %106, !dbg !1757

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %11, align 4, !dbg !1758
  %102 = sext i32 %101 to i64, !dbg !1760
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* @card_retried_ddcbs, i64 0, i64 %102, !dbg !1760
  %104 = load i32, i32* %103, align 4, !dbg !1761
  %105 = add i32 %104, 1, !dbg !1761
  store i32 %105, i32* %103, align 4, !dbg !1761
  br label %35, !dbg !1762

; <label>:106:                                    ; preds = %96
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1763
  %108 = call i32 @getpid() #9, !dbg !1764
  %109 = call i32 @gettid(), !dbg !1765
  %110 = call i32* @__errno_location() #1, !dbg !1767
  %111 = load i32, i32* %110, align 4, !dbg !1769
  %112 = load i32, i32* %9, align 4, !dbg !1770
  %113 = load i32, i32* %8, align 4, !dbg !1771
  %114 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1772
  %115 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %114, i32 0, i32 0, !dbg !1773
  %116 = load i32, i32* %115, align 8, !dbg !1773
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.77, i32 0, i32 0), i32 %108, i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1460, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.__genwqe_card_execute, i32 0, i32 0), i32 %111, i32 %112, i32 %113, i32 %116), !dbg !1774
  store i32 -211, i32* %4, align 4, !dbg !1776
  br label %129, !dbg !1776

; <label>:118:                                    ; preds = %35
  %119 = load i32, i32* %11, align 4, !dbg !1777
  %120 = sext i32 %119 to i64, !dbg !1778
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* @card_completed_ddcbs, i64 0, i64 %120, !dbg !1778
  %122 = load i32, i32* %121, align 4, !dbg !1779
  %123 = add i32 %122, 1, !dbg !1779
  store i32 %123, i32* %121, align 4, !dbg !1779
  %124 = load %struct.genwqe_ddcb_cmd*, %struct.genwqe_ddcb_cmd** %12, align 8, !dbg !1780
  %125 = getelementptr inbounds %struct.genwqe_ddcb_cmd, %struct.genwqe_ddcb_cmd* %124, i32 0, i32 0, !dbg !1781
  %126 = load i64, i64* %125, align 8, !dbg !1781
  %127 = inttoptr i64 %126 to %struct.genwqe_ddcb_cmd*, !dbg !1782
  store %struct.genwqe_ddcb_cmd* %127, %struct.genwqe_ddcb_cmd** %12, align 8, !dbg !1783
  br label %31, !dbg !1784, !llvm.loop !1786

; <label>:128:                                    ; preds = %31
  store i32 0, i32* %4, align 4, !dbg !1787
  br label %129, !dbg !1787

; <label>:129:                                    ; preds = %128, %106, %79, %25, %18
  %130 = load i32, i32* %4, align 4, !dbg !1788
  ret i32 %130, !dbg !1788
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_execute_ddcb(%struct.card_dev_t*, %struct.genwqe_ddcb_cmd*) #0 !dbg !1789 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca %struct.genwqe_ddcb_cmd*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !1790, metadata !467), !dbg !1791
  store %struct.genwqe_ddcb_cmd* %1, %struct.genwqe_ddcb_cmd** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.genwqe_ddcb_cmd** %4, metadata !1792, metadata !467), !dbg !1793
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !1794
  %6 = load %struct.genwqe_ddcb_cmd*, %struct.genwqe_ddcb_cmd** %4, align 8, !dbg !1795
  %7 = call i32 @__genwqe_card_execute(%struct.card_dev_t* %5, %struct.genwqe_ddcb_cmd* %6, i32 -1058495182), !dbg !1796
  ret i32 %7, !dbg !1797
}

; Function Attrs: nounwind uwtable
define i8* @genwqe_card_malloc(%struct.card_dev_t*, i64) #0 !dbg !1798 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !1801, metadata !467), !dbg !1802
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1803, metadata !467), !dbg !1804
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1805, metadata !467), !dbg !1806
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1807
  %9 = icmp eq %struct.card_dev_t* null, %8, !dbg !1809
  br i1 %9, label %10, label %11, !dbg !1810

; <label>:10:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1811
  br label %59, !dbg !1811

; <label>:11:                                     ; preds = %2
  %12 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1812
  %13 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1814
  %14 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %13, i32 0, i32 12, !dbg !1815
  %15 = load %struct.card_dev_t*, %struct.card_dev_t** %14, align 8, !dbg !1815
  %16 = icmp ne %struct.card_dev_t* %12, %15, !dbg !1816
  br i1 %16, label %17, label %18, !dbg !1817

; <label>:17:                                     ; preds = %11
  store i8* null, i8** %3, align 8, !dbg !1818
  br label %59, !dbg !1818

; <label>:18:                                     ; preds = %11
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1819
  %20 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %19, i32 0, i32 0, !dbg !1821
  %21 = load i32, i32* %20, align 8, !dbg !1821
  %22 = icmp eq i32 -1, %21, !dbg !1822
  br i1 %22, label %23, label %24, !dbg !1823

; <label>:23:                                     ; preds = %18
  store i8* null, i8** %3, align 8, !dbg !1824
  br label %59, !dbg !1824

; <label>:24:                                     ; preds = %18
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1825
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 4, !dbg !1827
  %27 = load i32, i32* %26, align 8, !dbg !1827
  %28 = icmp ne i32 -1, %27, !dbg !1828
  br i1 %28, label %29, label %35, !dbg !1829

; <label>:29:                                     ; preds = %24
  %30 = load i64, i64* %5, align 8, !dbg !1830
  %31 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1831
  %32 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %31, i32 0, i32 4, !dbg !1832
  %33 = load i32, i32* %32, align 8, !dbg !1832
  %34 = call i8* @mmap(i8* null, i64 %30, i32 3, i32 1, i32 %33, i64 0) #9, !dbg !1833
  store i8* %34, i8** %6, align 8, !dbg !1834
  br label %42, !dbg !1835

; <label>:35:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1836, metadata !467), !dbg !1838
  %36 = call i64 @sysconf(i32 30) #9, !dbg !1839
  %37 = trunc i64 %36 to i32, !dbg !1839
  store i32 %37, i32* %7, align 4, !dbg !1838
  %38 = load i32, i32* %7, align 4, !dbg !1840
  %39 = zext i32 %38 to i64, !dbg !1840
  %40 = load i64, i64* %5, align 8, !dbg !1841
  %41 = call noalias i8* @memalign(i64 %39, i64 %40) #9, !dbg !1842
  store i8* %41, i8** %6, align 8, !dbg !1843
  br label %42

; <label>:42:                                     ; preds = %35, %29
  %43 = load i8*, i8** %6, align 8, !dbg !1844
  %44 = icmp eq i8* %43, inttoptr (i64 -1 to i8*), !dbg !1846
  br i1 %44, label %45, label %57, !dbg !1847

; <label>:45:                                     ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1848
  %47 = call i32 @getpid() #9, !dbg !1850
  %48 = call i32 @gettid(), !dbg !1851
  %49 = load i64, i64* %5, align 8, !dbg !1853
  %50 = trunc i64 %49 to i32, !dbg !1854
  %51 = call i32* @__errno_location() #1, !dbg !1855
  %52 = load i32, i32* %51, align 4, !dbg !1857
  %53 = call i32* @__errno_location() #1, !dbg !1858
  %54 = load i32, i32* %53, align 4, !dbg !1857
  %55 = call i8* @strerror(i32 %54) #9, !dbg !1860
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0), i32 %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1523, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.genwqe_card_malloc, i32 0, i32 0), i32 %50, i32 %52, i8* %55), !dbg !1862
  store i8* null, i8** %3, align 8, !dbg !1864
  br label %59, !dbg !1864

; <label>:57:                                     ; preds = %42
  %58 = load i8*, i8** %6, align 8, !dbg !1865
  store i8* %58, i8** %3, align 8, !dbg !1866
  br label %59, !dbg !1866

; <label>:59:                                     ; preds = %57, %45, %23, %17, %10
  %60 = load i8*, i8** %3, align 8, !dbg !1867
  ret i8* %60, !dbg !1867
}

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) #2

; Function Attrs: nounwind
declare noalias i8* @memalign(i64, i64) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_free(%struct.card_dev_t*, i8*, i64) #0 !dbg !1868 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !1871, metadata !467), !dbg !1872
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1873, metadata !467), !dbg !1874
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1875, metadata !467), !dbg !1876
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1877, metadata !467), !dbg !1878
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1879
  %10 = icmp eq %struct.card_dev_t* null, %9, !dbg !1881
  br i1 %10, label %11, label %12, !dbg !1882

; <label>:11:                                     ; preds = %3
  store i32 -205, i32* %4, align 4, !dbg !1883
  br label %43, !dbg !1883

; <label>:12:                                     ; preds = %3
  %13 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1884
  %14 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %13, i32 0, i32 0, !dbg !1886
  %15 = load i32, i32* %14, align 8, !dbg !1886
  %16 = icmp eq i32 -1, %15, !dbg !1887
  br i1 %16, label %17, label %18, !dbg !1888

; <label>:17:                                     ; preds = %12
  store i32 -205, i32* %4, align 4, !dbg !1889
  br label %43, !dbg !1889

; <label>:18:                                     ; preds = %12
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !1890
  %20 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %19, i32 0, i32 4, !dbg !1892
  %21 = load i32, i32* %20, align 8, !dbg !1892
  %22 = icmp ne i32 -1, %21, !dbg !1893
  br i1 %22, label %23, label %40, !dbg !1894

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %6, align 8, !dbg !1895
  %25 = load i64, i64* %7, align 8, !dbg !1897
  %26 = call i32 @munmap(i8* %24, i64 %25) #9, !dbg !1898
  store i32 %26, i32* %8, align 4, !dbg !1899
  %27 = load i32, i32* %8, align 4, !dbg !1900
  %28 = icmp eq i32 %27, -1, !dbg !1902
  br i1 %28, label %29, label %39, !dbg !1903

; <label>:29:                                     ; preds = %23
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1904
  %31 = call i32 @getpid() #9, !dbg !1906
  %32 = call i32 @gettid(), !dbg !1907
  %33 = load i8*, i8** %6, align 8, !dbg !1909
  %34 = load i64, i64* %7, align 8, !dbg !1910
  %35 = trunc i64 %34 to i32, !dbg !1911
  %36 = call i32* @__errno_location() #1, !dbg !1912
  %37 = load i32, i32* %36, align 4, !dbg !1914
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i32 0, i32 0), i32 %31, i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1547, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.genwqe_card_free, i32 0, i32 0), i8* %33, i32 %35, i32 %37), !dbg !1915
  store i32 -201, i32* %4, align 4, !dbg !1917
  br label %43, !dbg !1917

; <label>:39:                                     ; preds = %23
  br label %42, !dbg !1918

; <label>:40:                                     ; preds = %18
  %41 = load i8*, i8** %6, align 8, !dbg !1919
  call void @free(i8* %41) #9, !dbg !1920
  br label %42

; <label>:42:                                     ; preds = %40, %39
  store i32 0, i32* %4, align 4, !dbg !1921
  br label %43, !dbg !1921

; <label>:43:                                     ; preds = %42, %29, %17, %11
  %44 = load i32, i32* %4, align 4, !dbg !1922
  ret i32 %44, !dbg !1922
}

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @genwqe_card_alloc_scb(%struct.card_dev_t*, i64) #0 !dbg !1923 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !1924, metadata !467), !dbg !1925
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1926, metadata !467), !dbg !1927
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1928, metadata !467), !dbg !1929
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !1930
  %8 = load i64, i64* %5, align 8, !dbg !1931
  %9 = call i8* @genwqe_card_malloc(%struct.card_dev_t* %7, i64 %8), !dbg !1932
  store i8* %9, i8** %6, align 8, !dbg !1933
  %10 = load i8*, i8** %6, align 8, !dbg !1934
  %11 = icmp eq i8* %10, null, !dbg !1936
  br i1 %11, label %12, label %13, !dbg !1937

; <label>:12:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !1938
  br label %17, !dbg !1938

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !1939
  %15 = load i64, i64* %5, align 8, !dbg !1940
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %15, i32 1, i1 false), !dbg !1941
  %16 = load i8*, i8** %6, align 8, !dbg !1942
  store i8* %16, i8** %3, align 8, !dbg !1943
  br label %17, !dbg !1943

; <label>:17:                                     ; preds = %13, %12
  %18 = load i8*, i8** %3, align 8, !dbg !1944
  ret i8* %18, !dbg !1944
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_set_ats_flags(i8*, i64, i64, i32) #0 !dbg !429 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1945, metadata !467), !dbg !1946
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1947, metadata !467), !dbg !1948
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1949, metadata !467), !dbg !1950
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1951, metadata !467), !dbg !1952
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1953, metadata !467), !dbg !1954
  %13 = load i8*, i8** %6, align 8, !dbg !1955
  store i8* %13, i8** %10, align 8, !dbg !1954
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1956, metadata !467), !dbg !1957
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1958, metadata !467), !dbg !1959
  %14 = load i8*, i8** %6, align 8, !dbg !1960
  %15 = ptrtoint i8* %14 to i64, !dbg !1962
  %16 = urem i64 %15, 8, !dbg !1963
  %17 = icmp ne i64 %16, 0, !dbg !1963
  br i1 %17, label %31, label %18, !dbg !1964

; <label>:18:                                     ; preds = %4
  %19 = load i64, i64* %7, align 8, !dbg !1965
  %20 = urem i64 %19, 8, !dbg !1966
  %21 = icmp ne i64 %20, 0, !dbg !1966
  br i1 %21, label %31, label %22, !dbg !1967

; <label>:22:                                     ; preds = %18
  %23 = load i64, i64* %8, align 8, !dbg !1968
  %24 = urem i64 %23, 8, !dbg !1969
  %25 = icmp ne i64 %24, 0, !dbg !1969
  br i1 %25, label %31, label %26, !dbg !1970

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %8, align 8, !dbg !1971
  %28 = load i64, i64* %7, align 8, !dbg !1972
  %29 = sub i64 %28, 8, !dbg !1973
  %30 = icmp ugt i64 %27, %29, !dbg !1974
  br i1 %30, label %31, label %32, !dbg !1975

; <label>:31:                                     ; preds = %26, %22, %18, %4
  store i32 -205, i32* %5, align 4, !dbg !1977
  br label %80, !dbg !1977

; <label>:32:                                     ; preds = %26
  %33 = load i64, i64* %8, align 8, !dbg !1978
  %34 = udiv i64 %33, 16, !dbg !1979
  %35 = trunc i64 %34 to i32, !dbg !1978
  store i32 %35, i32* %11, align 4, !dbg !1980
  %36 = load i64, i64* %8, align 8, !dbg !1981
  %37 = udiv i64 %36, 8, !dbg !1982
  %38 = and i64 %37, 1, !dbg !1983
  %39 = trunc i64 %38 to i32, !dbg !1984
  store i32 %39, i32* %12, align 4, !dbg !1985
  %40 = load i32, i32* %12, align 4, !dbg !1986
  %41 = zext i32 %40 to i64, !dbg !1987
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* @genwqe_card_set_ats_flags.mask, i64 0, i64 %41, !dbg !1987
  %43 = load i8, i8* %42, align 1, !dbg !1987
  %44 = zext i8 %43 to i32, !dbg !1987
  %45 = xor i32 %44, -1, !dbg !1988
  %46 = load i32, i32* %11, align 4, !dbg !1989
  %47 = zext i32 %46 to i64, !dbg !1990
  %48 = load i8*, i8** %10, align 8, !dbg !1990
  %49 = getelementptr inbounds i8, i8* %48, i64 %47, !dbg !1990
  %50 = load i8, i8* %49, align 1, !dbg !1991
  %51 = zext i8 %50 to i32, !dbg !1991
  %52 = and i32 %51, %45, !dbg !1991
  %53 = trunc i32 %52 to i8, !dbg !1991
  store i8 %53, i8* %49, align 1, !dbg !1991
  %54 = load i32, i32* %12, align 4, !dbg !1992
  %55 = icmp eq i32 %54, 0, !dbg !1994
  br i1 %55, label %56, label %68, !dbg !1995

; <label>:56:                                     ; preds = %32
  %57 = load i32, i32* %9, align 4, !dbg !1996
  %58 = and i32 15, %57, !dbg !1997
  %59 = shl i32 %58, 4, !dbg !1998
  %60 = load i32, i32* %11, align 4, !dbg !1999
  %61 = zext i32 %60 to i64, !dbg !2000
  %62 = load i8*, i8** %10, align 8, !dbg !2000
  %63 = getelementptr inbounds i8, i8* %62, i64 %61, !dbg !2000
  %64 = load i8, i8* %63, align 1, !dbg !2001
  %65 = zext i8 %64 to i32, !dbg !2001
  %66 = or i32 %65, %59, !dbg !2001
  %67 = trunc i32 %66 to i8, !dbg !2001
  store i8 %67, i8* %63, align 1, !dbg !2001
  br label %79, !dbg !2000

; <label>:68:                                     ; preds = %32
  %69 = load i32, i32* %9, align 4, !dbg !2002
  %70 = and i32 15, %69, !dbg !2003
  %71 = load i32, i32* %11, align 4, !dbg !2004
  %72 = zext i32 %71 to i64, !dbg !2005
  %73 = load i8*, i8** %10, align 8, !dbg !2005
  %74 = getelementptr inbounds i8, i8* %73, i64 %72, !dbg !2005
  %75 = load i8, i8* %74, align 1, !dbg !2006
  %76 = zext i8 %75 to i32, !dbg !2006
  %77 = or i32 %76, %70, !dbg !2006
  %78 = trunc i32 %77 to i8, !dbg !2006
  store i8 %78, i8* %74, align 1, !dbg !2006
  br label %79

; <label>:79:                                     ; preds = %68, %56
  store i32 0, i32* %5, align 4, !dbg !2007
  br label %80, !dbg !2007

; <label>:80:                                     ; preds = %79, %31
  %81 = load i32, i32* %5, align 4, !dbg !2008
  ret i32 %81, !dbg !2008
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_card_free_scb(%struct.card_dev_t*, i8*, i64) #0 !dbg !2009 {
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !2010, metadata !467), !dbg !2011
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2012, metadata !467), !dbg !2013
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2014, metadata !467), !dbg !2015
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2016
  %8 = load i8*, i8** %5, align 8, !dbg !2017
  %9 = load i64, i64* %6, align 8, !dbg !2018
  %10 = call i32 @genwqe_card_free(%struct.card_dev_t* %7, i8* %8, i64 %9), !dbg !2019
  ret i32 %10, !dbg !2020
}

; Function Attrs: nounwind uwtable
define void @genwqe_hexdump(%struct._IO_FILE*, i8*, i32) #0 !dbg !2021 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [17 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2078, metadata !467), !dbg !2079
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2080, metadata !467), !dbg !2081
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2082, metadata !467), !dbg !2083
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2084, metadata !467), !dbg !2085
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2086, metadata !467), !dbg !2087
  store i32 0, i32* %8, align 4, !dbg !2087
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2088, metadata !467), !dbg !2090
  %11 = load i8*, i8** %5, align 8, !dbg !2091
  store i8* %11, i8** %9, align 8, !dbg !2090
  call void @llvm.dbg.declare(metadata [17 x i8]* %10, metadata !2092, metadata !467), !dbg !2096
  store i32 0, i32* %7, align 4, !dbg !2097
  br label %12, !dbg !2099

; <label>:12:                                     ; preds = %71, %3
  %13 = load i32, i32* %7, align 4, !dbg !2100
  %14 = load i32, i32* %6, align 4, !dbg !2103
  %15 = icmp ult i32 %13, %14, !dbg !2104
  br i1 %15, label %16, label %74, !dbg !2105

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %7, align 4, !dbg !2106
  %18 = and i32 %17, 15, !dbg !2109
  %19 = icmp eq i32 %18, 0, !dbg !2110
  br i1 %19, label %20, label %25, !dbg !2111

; <label>:20:                                     ; preds = %16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2112
  %22 = load i32, i32* %7, align 4, !dbg !2114
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %22), !dbg !2115
  %24 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !2116
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 17, i32 16, i1 false), !dbg !2116
  store i32 0, i32* %8, align 4, !dbg !2117
  br label %25, !dbg !2118

; <label>:25:                                     ; preds = %20, %16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2119
  %27 = load i32, i32* %7, align 4, !dbg !2120
  %28 = zext i32 %27 to i64, !dbg !2121
  %29 = load i8*, i8** %9, align 8, !dbg !2121
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !2121
  %31 = load i8, i8* %30, align 1, !dbg !2121
  %32 = zext i8 %31 to i32, !dbg !2121
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %32), !dbg !2122
  %34 = load i32, i32* %7, align 4, !dbg !2123
  %35 = zext i32 %34 to i64, !dbg !2124
  %36 = load i8*, i8** %9, align 8, !dbg !2124
  %37 = getelementptr inbounds i8, i8* %36, i64 %35, !dbg !2124
  %38 = load i8, i8* %37, align 1, !dbg !2124
  %39 = zext i8 %38 to i32, !dbg !2125
  %40 = sext i32 %39 to i64, !dbg !2126
  %41 = call i16** @__ctype_b_loc() #1, !dbg !2127
  %42 = load i16*, i16** %41, align 8, !dbg !2123
  %43 = getelementptr inbounds i16, i16* %42, i64 %40, !dbg !2126
  %44 = load i16, i16* %43, align 2, !dbg !2126
  %45 = zext i16 %44 to i32, !dbg !2126
  %46 = and i32 %45, 8, !dbg !2128
  %47 = icmp ne i32 %46, 0, !dbg !2128
  br i1 %47, label %48, label %55, !dbg !2124

; <label>:48:                                     ; preds = %25
  %49 = load i32, i32* %7, align 4, !dbg !2129
  %50 = zext i32 %49 to i64, !dbg !2131
  %51 = load i8*, i8** %9, align 8, !dbg !2131
  %52 = getelementptr inbounds i8, i8* %51, i64 %50, !dbg !2131
  %53 = load i8, i8* %52, align 1, !dbg !2131
  %54 = zext i8 %53 to i32, !dbg !2131
  br label %56, !dbg !2132

; <label>:55:                                     ; preds = %25
  br label %56, !dbg !2133

; <label>:56:                                     ; preds = %55, %48
  %57 = phi i32 [ %54, %48 ], [ 46, %55 ], !dbg !2135
  %58 = trunc i32 %57 to i8, !dbg !2135
  %59 = load i32, i32* %8, align 4, !dbg !2137
  %60 = add i32 %59, 1, !dbg !2137
  store i32 %60, i32* %8, align 4, !dbg !2137
  %61 = zext i32 %59 to i64, !dbg !2138
  %62 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %61, !dbg !2138
  store i8 %58, i8* %62, align 1, !dbg !2139
  %63 = load i32, i32* %7, align 4, !dbg !2140
  %64 = and i32 %63, 15, !dbg !2142
  %65 = icmp eq i32 %64, 15, !dbg !2143
  br i1 %65, label %66, label %70, !dbg !2144

; <label>:66:                                     ; preds = %56
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2145
  %68 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !2146
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %68), !dbg !2147
  br label %70, !dbg !2147

; <label>:70:                                     ; preds = %66, %56
  br label %71, !dbg !2148

; <label>:71:                                     ; preds = %70
  %72 = load i32, i32* %7, align 4, !dbg !2149
  %73 = add i32 %72, 1, !dbg !2149
  store i32 %73, i32* %7, align 4, !dbg !2149
  br label %12, !dbg !2151, !llvm.loop !2152

; <label>:74:                                     ; preds = %12
  br label %75, !dbg !2154

; <label>:75:                                     ; preds = %96, %74
  %76 = load i32, i32* %7, align 4, !dbg !2155
  %77 = load i32, i32* %6, align 4, !dbg !2159
  %78 = add i32 %77, 15, !dbg !2160
  %79 = and i32 %78, -16, !dbg !2161
  %80 = icmp ult i32 %76, %79, !dbg !2162
  br i1 %80, label %81, label %99, !dbg !2163

; <label>:81:                                     ; preds = %75
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2164
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)), !dbg !2166
  %84 = load i32, i32* %8, align 4, !dbg !2167
  %85 = add i32 %84, 1, !dbg !2167
  store i32 %85, i32* %8, align 4, !dbg !2167
  %86 = zext i32 %84 to i64, !dbg !2168
  %87 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 %86, !dbg !2168
  store i8 32, i8* %87, align 1, !dbg !2169
  %88 = load i32, i32* %7, align 4, !dbg !2170
  %89 = and i32 %88, 15, !dbg !2172
  %90 = icmp eq i32 %89, 15, !dbg !2173
  br i1 %90, label %91, label %95, !dbg !2174

; <label>:91:                                     ; preds = %81
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2175
  %93 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i32 0, i32 0, !dbg !2176
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %93), !dbg !2177
  br label %95, !dbg !2177

; <label>:95:                                     ; preds = %91, %81
  br label %96, !dbg !2178

; <label>:96:                                     ; preds = %95
  %97 = load i32, i32* %7, align 4, !dbg !2179
  %98 = add i32 %97, 1, !dbg !2179
  store i32 %98, i32* %7, align 4, !dbg !2179
  br label %75, !dbg !2181, !llvm.loop !2182

; <label>:99:                                     ; preds = %75
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2183
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)), !dbg !2184
  ret void, !dbg !2185
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define i32 @genwqe_flash_read(%struct.card_dev_t*, %struct.card_upd_params*) #0 !dbg !2186 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca %struct.card_upd_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !2203, metadata !467), !dbg !2204
  store %struct.card_upd_params* %1, %struct.card_upd_params** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_upd_params** %5, metadata !2205, metadata !467), !dbg !2206
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2207, metadata !467), !dbg !2208
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2209, metadata !467), !dbg !2210
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2211, metadata !467), !dbg !2212
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2213, metadata !467), !dbg !2214
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2215, metadata !467), !dbg !2216
  %11 = call i64 @sysconf(i32 30) #9, !dbg !2217
  %12 = trunc i64 %11 to i32, !dbg !2217
  store i32 %12, i32* %10, align 4, !dbg !2216
  %13 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2218
  %14 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %13, i32 0, i32 1, !dbg !2219
  %15 = load i32, i32* %14, align 8, !dbg !2219
  %16 = load i32, i32* %10, align 4, !dbg !2220
  %17 = add i32 %15, %16, !dbg !2221
  %18 = load i32, i32* %10, align 4, !dbg !2222
  %19 = sub i32 %18, 1, !dbg !2223
  %20 = xor i32 %19, -1, !dbg !2224
  %21 = and i32 %17, %20, !dbg !2225
  store i32 %21, i32* %8, align 4, !dbg !2226
  %22 = load i32, i32* %10, align 4, !dbg !2227
  %23 = zext i32 %22 to i64, !dbg !2227
  %24 = load i32, i32* %8, align 4, !dbg !2228
  %25 = sext i32 %24 to i64, !dbg !2228
  %26 = call noalias i8* @memalign(i64 %23, i64 %25) #9, !dbg !2229
  store i8* %26, i8** %9, align 8, !dbg !2230
  %27 = load i8*, i8** %9, align 8, !dbg !2231
  %28 = icmp ne i8* %27, null, !dbg !2231
  br i1 %28, label %30, label %29, !dbg !2233

; <label>:29:                                     ; preds = %2
  store i32 -201, i32* %3, align 4, !dbg !2234
  br label %78, !dbg !2234

; <label>:30:                                     ; preds = %2
  %31 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2235
  %32 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %31, i32 0, i32 0, !dbg !2236
  %33 = load i8*, i8** %32, align 8, !dbg !2236
  %34 = call i32 (i8*, i32, ...) @open(i8* %33, i32 705, i32 420), !dbg !2237
  store i32 %34, i32* %7, align 4, !dbg !2238
  %35 = load i32, i32* %7, align 4, !dbg !2239
  %36 = icmp slt i32 %35, 0, !dbg !2241
  br i1 %36, label %37, label %38, !dbg !2242

; <label>:37:                                     ; preds = %30
  store i32 -207, i32* %6, align 4, !dbg !2243
  br label %75, !dbg !2245

; <label>:38:                                     ; preds = %30
  %39 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2246
  %40 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2247
  %41 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %40, i32 0, i32 4, !dbg !2248
  %42 = load i8, i8* %41, align 2, !dbg !2248
  %43 = load i8*, i8** %9, align 8, !dbg !2249
  %44 = load i32, i32* %8, align 4, !dbg !2250
  %45 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2251
  %46 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %45, i32 0, i32 7, !dbg !2252
  %47 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2253
  %48 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %47, i32 0, i32 8, !dbg !2254
  %49 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2255
  %50 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %49, i32 0, i32 9, !dbg !2256
  %51 = call i32 @__genwqe_flash_read(%struct.card_dev_t* %39, i8 signext %42, i8* %43, i32 %44, i16* %46, i16* %48, i32* %50), !dbg !2257
  store i32 %51, i32* %6, align 4, !dbg !2258
  %52 = load i32, i32* %6, align 4, !dbg !2259
  %53 = icmp slt i32 %52, 0, !dbg !2261
  br i1 %53, label %54, label %57, !dbg !2262

; <label>:54:                                     ; preds = %38
  %55 = load i32, i32* %7, align 4, !dbg !2263
  %56 = call i32 @close(i32 %55), !dbg !2265
  br label %75, !dbg !2266

; <label>:57:                                     ; preds = %38
  %58 = load i32, i32* %7, align 4, !dbg !2267
  %59 = load i8*, i8** %9, align 8, !dbg !2268
  %60 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2269
  %61 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %60, i32 0, i32 1, !dbg !2270
  %62 = load i32, i32* %61, align 8, !dbg !2270
  %63 = zext i32 %62 to i64, !dbg !2271
  %64 = call i64 @write(i32 %58, i8* %59, i64 %63), !dbg !2272
  %65 = trunc i64 %64 to i32, !dbg !2273
  store i32 %65, i32* %6, align 4, !dbg !2274
  %66 = load i32, i32* %7, align 4, !dbg !2275
  %67 = call i32 @close(i32 %66), !dbg !2276
  %68 = load i32, i32* %6, align 4, !dbg !2277
  %69 = load %struct.card_upd_params*, %struct.card_upd_params** %5, align 8, !dbg !2279
  %70 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %69, i32 0, i32 1, !dbg !2280
  %71 = load i32, i32* %70, align 8, !dbg !2280
  %72 = icmp ne i32 %68, %71, !dbg !2281
  br i1 %72, label %73, label %74, !dbg !2282

; <label>:73:                                     ; preds = %57
  store i32 -207, i32* %6, align 4, !dbg !2283
  br label %75, !dbg !2285

; <label>:74:                                     ; preds = %57
  store i32 0, i32* %6, align 4, !dbg !2286
  br label %75, !dbg !2287

; <label>:75:                                     ; preds = %74, %73, %54, %37
  %76 = load i8*, i8** %9, align 8, !dbg !2288
  call void @free(i8* %76) #9, !dbg !2289
  %77 = load i32, i32* %6, align 4, !dbg !2290
  store i32 %77, i32* %3, align 4, !dbg !2291
  br label %78, !dbg !2291

; <label>:78:                                     ; preds = %75, %29
  %79 = load i32, i32* %3, align 4, !dbg !2292
  ret i32 %79, !dbg !2292
}

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_flash_read(%struct.card_dev_t*, i8 signext, i8*, i32, i16*, i16*, i32*) #0 !dbg !2293 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.card_dev_t*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.genwqe_bitstream, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %9, metadata !2298, metadata !467), !dbg !2299
  store i8 %1, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2300, metadata !467), !dbg !2301
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2302, metadata !467), !dbg !2303
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2304, metadata !467), !dbg !2305
  store i16* %4, i16** %13, align 8
  call void @llvm.dbg.declare(metadata i16** %13, metadata !2306, metadata !467), !dbg !2307
  store i16* %5, i16** %14, align 8
  call void @llvm.dbg.declare(metadata i16** %14, metadata !2308, metadata !467), !dbg !2309
  store i32* %6, i32** %15, align 8
  call void @llvm.dbg.declare(metadata i32** %15, metadata !2310, metadata !467), !dbg !2311
  call void @llvm.dbg.declare(metadata %struct.genwqe_bitstream* %16, metadata !2312, metadata !467), !dbg !2326
  %17 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2327
  %18 = icmp eq %struct.card_dev_t* null, %17, !dbg !2329
  br i1 %18, label %19, label %20, !dbg !2330

; <label>:19:                                     ; preds = %7
  store i32 -202, i32* %8, align 4, !dbg !2331
  br label %78, !dbg !2331

; <label>:20:                                     ; preds = %7
  %21 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2332
  %22 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %21, i32 0, i32 0, !dbg !2334
  %23 = load i32, i32* %22, align 8, !dbg !2334
  %24 = icmp eq i32 -1, %23, !dbg !2335
  br i1 %24, label %25, label %26, !dbg !2336

; <label>:25:                                     ; preds = %20
  store i32 -202, i32* %8, align 4, !dbg !2337
  br label %78, !dbg !2337

; <label>:26:                                     ; preds = %20
  %27 = bitcast %struct.genwqe_bitstream* %16 to i8*, !dbg !2338
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 56, i32 8, i1 false), !dbg !2338
  %28 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 3, !dbg !2339
  store i64 0, i64* %28, align 8, !dbg !2340
  %29 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 5, !dbg !2341
  store i32 1, i32* %29, align 4, !dbg !2342
  %30 = load i8, i8* %10, align 1, !dbg !2343
  %31 = zext i8 %30 to i32, !dbg !2344
  %32 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 4, !dbg !2345
  store i32 %31, i32* %32, align 8, !dbg !2346
  %33 = load i8*, i8** %11, align 8, !dbg !2347
  %34 = ptrtoint i8* %33 to i64, !dbg !2348
  %35 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 0, !dbg !2349
  store i64 %34, i64* %35, align 8, !dbg !2350
  %36 = load i32, i32* %12, align 4, !dbg !2351
  %37 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 1, !dbg !2352
  store i32 %36, i32* %37, align 8, !dbg !2353
  %38 = load i8*, i8** %11, align 8, !dbg !2354
  %39 = load i32, i32* %12, align 4, !dbg !2355
  %40 = sext i32 %39 to i64, !dbg !2355
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 %40, i32 1, i1 false), !dbg !2356
  %41 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2357
  %42 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %41, i32 0, i32 4, !dbg !2358
  %43 = load i32, i32* %42, align 8, !dbg !2358
  %44 = call i32 (i32, i64, ...) @ioctl(i32 %43, i64 3224937809, %struct.genwqe_bitstream* %16) #9, !dbg !2359
  %45 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2360
  %46 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %45, i32 0, i32 5, !dbg !2361
  store i32 %44, i32* %46, align 4, !dbg !2362
  %47 = call i32* @__errno_location() #1, !dbg !2363
  %48 = load i32, i32* %47, align 4, !dbg !2364
  %49 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2365
  %50 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %49, i32 0, i32 6, !dbg !2366
  store i32 %48, i32* %50, align 8, !dbg !2367
  %51 = load i16*, i16** %13, align 8, !dbg !2368
  %52 = icmp ne i16* %51, null, !dbg !2368
  br i1 %52, label %53, label %57, !dbg !2370

; <label>:53:                                     ; preds = %26
  %54 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 8, !dbg !2371
  %55 = load i16, i16* %54, align 8, !dbg !2371
  %56 = load i16*, i16** %13, align 8, !dbg !2372
  store i16 %55, i16* %56, align 2, !dbg !2373
  br label %57, !dbg !2374

; <label>:57:                                     ; preds = %53, %26
  %58 = load i16*, i16** %14, align 8, !dbg !2375
  %59 = icmp ne i16* %58, null, !dbg !2375
  br i1 %59, label %60, label %64, !dbg !2377

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 9, !dbg !2378
  %62 = load i16, i16* %61, align 2, !dbg !2378
  %63 = load i16*, i16** %14, align 8, !dbg !2379
  store i16 %62, i16* %63, align 2, !dbg !2380
  br label %64, !dbg !2381

; <label>:64:                                     ; preds = %60, %57
  %65 = load i32*, i32** %15, align 8, !dbg !2382
  %66 = icmp ne i32* %65, null, !dbg !2382
  br i1 %66, label %67, label %71, !dbg !2384

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 10, !dbg !2385
  %69 = load i32, i32* %68, align 4, !dbg !2385
  %70 = load i32*, i32** %15, align 8, !dbg !2386
  store i32 %69, i32* %70, align 4, !dbg !2387
  br label %71, !dbg !2388

; <label>:71:                                     ; preds = %67, %64
  %72 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2389
  %73 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %72, i32 0, i32 5, !dbg !2391
  %74 = load i32, i32* %73, align 4, !dbg !2391
  %75 = icmp ne i32 %74, 0, !dbg !2392
  br i1 %75, label %76, label %77, !dbg !2393

; <label>:76:                                     ; preds = %71
  store i32 -202, i32* %8, align 4, !dbg !2394
  br label %78, !dbg !2394

; <label>:77:                                     ; preds = %71
  store i32 0, i32* %8, align 4, !dbg !2395
  br label %78, !dbg !2395

; <label>:78:                                     ; preds = %77, %76, %25, %19
  %79 = load i32, i32* %8, align 4, !dbg !2396
  ret i32 %79, !dbg !2396
}

declare i32 @close(i32) #4

declare i64 @write(i32, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @genwqe_flash_update(%struct.card_dev_t*, %struct.card_upd_params*, i32) #0 !dbg !2397 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca %struct.card_upd_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.genwqe_bitstream, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !2400, metadata !467), !dbg !2401
  store %struct.card_upd_params* %1, %struct.card_upd_params** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.card_upd_params** %6, metadata !2402, metadata !467), !dbg !2403
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2404, metadata !467), !dbg !2405
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2406, metadata !467), !dbg !2407
  store i32 0, i32* %8, align 4, !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !2408, metadata !467), !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.genwqe_bitstream* %10, metadata !2445, metadata !467), !dbg !2446
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2447, metadata !467), !dbg !2448
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2449, metadata !467), !dbg !2450
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2451, metadata !467), !dbg !2452
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2453, metadata !467), !dbg !2454
  %17 = call i64 @sysconf(i32 30) #9, !dbg !2455
  %18 = trunc i64 %17 to i32, !dbg !2455
  store i32 %18, i32* %14, align 4, !dbg !2454
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !2456
  %20 = icmp eq %struct.card_dev_t* null, %19, !dbg !2458
  br i1 %20, label %21, label %22, !dbg !2459

; <label>:21:                                     ; preds = %3
  store i32 -205, i32* %4, align 4, !dbg !2460
  br label %240, !dbg !2460

; <label>:22:                                     ; preds = %3
  %23 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !2461
  %24 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %23, i32 0, i32 0, !dbg !2463
  %25 = load i32, i32* %24, align 8, !dbg !2463
  %26 = icmp eq i32 -1, %25, !dbg !2464
  br i1 %26, label %27, label %28, !dbg !2465

; <label>:27:                                     ; preds = %22
  store i32 -205, i32* %4, align 4, !dbg !2466
  br label %240, !dbg !2466

; <label>:28:                                     ; preds = %22
  %29 = bitcast %struct.genwqe_bitstream* %10 to i8*, !dbg !2467
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 56, i32 8, i1 false), !dbg !2467
  %30 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2468
  %31 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %30, i32 0, i32 1, !dbg !2469
  store i32 0, i32* %31, align 8, !dbg !2470
  %32 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2471
  %33 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %32, i32 0, i32 0, !dbg !2472
  %34 = load i8*, i8** %33, align 8, !dbg !2472
  %35 = call i32 (i8*, i32, ...) @open(i8* %34, i32 0), !dbg !2473
  store i32 %35, i32* %12, align 4, !dbg !2474
  %36 = load i32, i32* %12, align 4, !dbg !2475
  %37 = icmp slt i32 %36, 0, !dbg !2477
  br i1 %37, label %38, label %39, !dbg !2478

; <label>:38:                                     ; preds = %28
  store i32 -201, i32* %4, align 4, !dbg !2479
  br label %240, !dbg !2479

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %12, align 4, !dbg !2480
  %41 = call i32 @fstat(i32 %40, %struct.stat* %9) #9, !dbg !2481
  store i32 %41, i32* %8, align 4, !dbg !2482
  %42 = load i32, i32* %8, align 4, !dbg !2483
  %43 = icmp slt i32 %42, 0, !dbg !2485
  br i1 %43, label %44, label %47, !dbg !2486

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %12, align 4, !dbg !2487
  %46 = call i32 @close(i32 %45), !dbg !2489
  store i32 -201, i32* %4, align 4, !dbg !2490
  br label %240, !dbg !2490

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !2491
  %49 = load i64, i64* %48, align 8, !dbg !2491
  %50 = trunc i64 %49 to i32, !dbg !2492
  %51 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2493
  %52 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %51, i32 0, i32 1, !dbg !2494
  store i32 %50, i32* %52, align 8, !dbg !2495
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !2496
  %54 = load i64, i64* %53, align 8, !dbg !2496
  %55 = load i32, i32* %14, align 4, !dbg !2497
  %56 = zext i32 %55 to i64, !dbg !2497
  %57 = add nsw i64 %54, %56, !dbg !2498
  %58 = load i32, i32* %14, align 4, !dbg !2499
  %59 = sub i32 %58, 1, !dbg !2500
  %60 = xor i32 %59, -1, !dbg !2501
  %61 = zext i32 %60 to i64, !dbg !2501
  %62 = and i64 %57, %61, !dbg !2502
  %63 = trunc i64 %62 to i32, !dbg !2503
  store i32 %63, i32* %13, align 4, !dbg !2504
  %64 = load i32, i32* %14, align 4, !dbg !2505
  %65 = zext i32 %64 to i64, !dbg !2505
  %66 = load i32, i32* %13, align 4, !dbg !2506
  %67 = mul nsw i32 2, %66, !dbg !2507
  %68 = sext i32 %67 to i64, !dbg !2508
  %69 = call noalias i8* @memalign(i64 %65, i64 %68) #9, !dbg !2509
  store i8* %69, i8** %11, align 8, !dbg !2510
  %70 = load i8*, i8** %11, align 8, !dbg !2511
  %71 = icmp ne i8* %70, null, !dbg !2511
  br i1 %71, label %75, label %72, !dbg !2513

; <label>:72:                                     ; preds = %47
  %73 = load i32, i32* %12, align 4, !dbg !2514
  %74 = call i32 @close(i32 %73), !dbg !2516
  store i32 -201, i32* %4, align 4, !dbg !2517
  br label %240, !dbg !2517

; <label>:75:                                     ; preds = %47
  %76 = load i8*, i8** %11, align 8, !dbg !2518
  %77 = load i32, i32* %13, align 4, !dbg !2519
  %78 = mul nsw i32 2, %77, !dbg !2520
  %79 = sext i32 %78 to i64, !dbg !2521
  call void @llvm.memset.p0i8.i64(i8* %76, i8 0, i64 %79, i32 1, i1 false), !dbg !2522
  %80 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2523
  %81 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %80, i32 0, i32 5, !dbg !2524
  %82 = load i64, i64* %81, align 8, !dbg !2524
  %83 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 6, !dbg !2525
  store i64 %82, i64* %83, align 8, !dbg !2526
  %84 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2527
  %85 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %84, i32 0, i32 6, !dbg !2528
  %86 = load i64, i64* %85, align 8, !dbg !2528
  %87 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 7, !dbg !2529
  store i64 %86, i64* %87, align 8, !dbg !2530
  %88 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 3, !dbg !2531
  store i64 0, i64* %88, align 8, !dbg !2532
  %89 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 5, !dbg !2533
  store i32 1, i32* %89, align 4, !dbg !2534
  %90 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2535
  %91 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %90, i32 0, i32 4, !dbg !2536
  %92 = load i8, i8* %91, align 2, !dbg !2536
  %93 = zext i8 %92 to i32, !dbg !2537
  %94 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 4, !dbg !2538
  store i32 %93, i32* %94, align 8, !dbg !2539
  %95 = load i8*, i8** %11, align 8, !dbg !2540
  %96 = ptrtoint i8* %95 to i64, !dbg !2541
  %97 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 0, !dbg !2542
  store i64 %96, i64* %97, align 8, !dbg !2543
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8, !dbg !2544
  %99 = load i64, i64* %98, align 8, !dbg !2544
  %100 = trunc i64 %99 to i32, !dbg !2545
  %101 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 1, !dbg !2546
  store i32 %100, i32* %101, align 8, !dbg !2547
  %102 = load i32, i32* %12, align 4, !dbg !2548
  %103 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 0, !dbg !2549
  %104 = load i64, i64* %103, align 8, !dbg !2549
  %105 = inttoptr i64 %104 to i8*, !dbg !2550
  %106 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 1, !dbg !2551
  %107 = load i32, i32* %106, align 8, !dbg !2551
  %108 = zext i32 %107 to i64, !dbg !2552
  %109 = call i64 @read(i32 %102, i8* %105, i64 %108), !dbg !2553
  %110 = trunc i64 %109 to i32, !dbg !2554
  store i32 %110, i32* %8, align 4, !dbg !2555
  %111 = load i32, i32* %12, align 4, !dbg !2556
  %112 = call i32 @close(i32 %111), !dbg !2557
  %113 = load i32, i32* %8, align 4, !dbg !2558
  %114 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 1, !dbg !2560
  %115 = load i32, i32* %114, align 8, !dbg !2560
  %116 = icmp ne i32 %113, %115, !dbg !2561
  br i1 %116, label %117, label %119, !dbg !2562

; <label>:117:                                    ; preds = %75
  %118 = load i8*, i8** %11, align 8, !dbg !2563
  call void @free(i8* %118) #9, !dbg !2565
  store i32 -201, i32* %4, align 4, !dbg !2566
  br label %240, !dbg !2566

; <label>:119:                                    ; preds = %75
  %120 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 0, !dbg !2567
  %121 = load i64, i64* %120, align 8, !dbg !2567
  %122 = inttoptr i64 %121 to i8*, !dbg !2568
  %123 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 1, !dbg !2569
  %124 = load i32, i32* %123, align 8, !dbg !2569
  %125 = zext i32 %124 to i64, !dbg !2570
  %126 = call i32 @genwqe_ddcb_crc32(i8* %122, i64 %125, i32 -1), !dbg !2571
  %127 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 2, !dbg !2572
  store i32 %126, i32* %127, align 4, !dbg !2573
  %128 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !2574
  %129 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %128, i32 0, i32 4, !dbg !2575
  %130 = load i32, i32* %129, align 8, !dbg !2575
  %131 = call i32 (i32, i64, ...) @ioctl(i32 %130, i64 3224937808, %struct.genwqe_bitstream* %10) #9, !dbg !2576
  store i32 %131, i32* %8, align 4, !dbg !2577
  %132 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !2578
  %133 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %132, i32 0, i32 5, !dbg !2579
  store i32 %131, i32* %133, align 4, !dbg !2580
  %134 = call i32* @__errno_location() #1, !dbg !2581
  %135 = load i32, i32* %134, align 4, !dbg !2582
  %136 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !2583
  %137 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %136, i32 0, i32 6, !dbg !2584
  store i32 %135, i32* %137, align 8, !dbg !2585
  %138 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 8, !dbg !2586
  %139 = load i16, i16* %138, align 8, !dbg !2586
  %140 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2587
  %141 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %140, i32 0, i32 7, !dbg !2588
  store i16 %139, i16* %141, align 8, !dbg !2589
  %142 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 9, !dbg !2590
  %143 = load i16, i16* %142, align 2, !dbg !2590
  %144 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2591
  %145 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %144, i32 0, i32 8, !dbg !2592
  store i16 %143, i16* %145, align 2, !dbg !2593
  %146 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %10, i32 0, i32 10, !dbg !2594
  %147 = load i32, i32* %146, align 4, !dbg !2594
  %148 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2595
  %149 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %148, i32 0, i32 9, !dbg !2596
  store i32 %147, i32* %149, align 4, !dbg !2597
  %150 = load i32, i32* %8, align 4, !dbg !2598
  %151 = icmp slt i32 %150, 0, !dbg !2600
  br i1 %151, label %152, label %154, !dbg !2601

; <label>:152:                                    ; preds = %119
  %153 = load i8*, i8** %11, align 8, !dbg !2602
  call void @free(i8* %153) #9, !dbg !2604
  store i32 -201, i32* %4, align 4, !dbg !2605
  br label %240, !dbg !2605

; <label>:154:                                    ; preds = %119
  %155 = load i32, i32* %7, align 4, !dbg !2606
  %156 = icmp ne i32 %155, 0, !dbg !2606
  br i1 %156, label %157, label %227, !dbg !2608

; <label>:157:                                    ; preds = %154
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2609, metadata !467), !dbg !2611
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2612, metadata !467), !dbg !2613
  %158 = load i8*, i8** %11, align 8, !dbg !2614
  %159 = load i32, i32* %13, align 4, !dbg !2615
  %160 = sext i32 %159 to i64, !dbg !2616
  %161 = getelementptr inbounds i8, i8* %158, i64 %160, !dbg !2616
  store i8* %161, i8** %16, align 8, !dbg !2613
  %162 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !2617
  %163 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2618
  %164 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %163, i32 0, i32 4, !dbg !2619
  %165 = load i8, i8* %164, align 2, !dbg !2619
  %166 = load i8*, i8** %16, align 8, !dbg !2620
  %167 = load i32, i32* %13, align 4, !dbg !2621
  %168 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2622
  %169 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %168, i32 0, i32 7, !dbg !2623
  %170 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2624
  %171 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %170, i32 0, i32 8, !dbg !2625
  %172 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2626
  %173 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %172, i32 0, i32 9, !dbg !2627
  %174 = call i32 @__genwqe_flash_read(%struct.card_dev_t* %162, i8 signext %165, i8* %166, i32 %167, i16* %169, i16* %171, i32* %173), !dbg !2628
  store i32 %174, i32* %8, align 4, !dbg !2629
  %175 = load i32, i32* %8, align 4, !dbg !2630
  %176 = icmp slt i32 %175, 0, !dbg !2632
  br i1 %176, label %177, label %180, !dbg !2633

; <label>:177:                                    ; preds = %157
  %178 = load i8*, i8** %11, align 8, !dbg !2634
  call void @free(i8* %178) #9, !dbg !2636
  %179 = load i32, i32* %8, align 4, !dbg !2637
  store i32 %179, i32* %4, align 4, !dbg !2638
  br label %240, !dbg !2638

; <label>:180:                                    ; preds = %157
  store i32 0, i32* %15, align 4, !dbg !2639
  br label %181, !dbg !2641

; <label>:181:                                    ; preds = %223, %180
  %182 = load i32, i32* %15, align 4, !dbg !2642
  %183 = load %struct.card_upd_params*, %struct.card_upd_params** %6, align 8, !dbg !2645
  %184 = getelementptr inbounds %struct.card_upd_params, %struct.card_upd_params* %183, i32 0, i32 1, !dbg !2646
  %185 = load i32, i32* %184, align 8, !dbg !2646
  %186 = icmp ult i32 %182, %185, !dbg !2647
  br i1 %186, label %187, label %226, !dbg !2648

; <label>:187:                                    ; preds = %181
  %188 = load i32, i32* %15, align 4, !dbg !2649
  %189 = zext i32 %188 to i64, !dbg !2652
  %190 = load i8*, i8** %11, align 8, !dbg !2652
  %191 = getelementptr inbounds i8, i8* %190, i64 %189, !dbg !2652
  %192 = load i8, i8* %191, align 1, !dbg !2652
  %193 = zext i8 %192 to i32, !dbg !2652
  %194 = load i32, i32* %15, align 4, !dbg !2653
  %195 = zext i32 %194 to i64, !dbg !2654
  %196 = load i8*, i8** %16, align 8, !dbg !2654
  %197 = getelementptr inbounds i8, i8* %196, i64 %195, !dbg !2654
  %198 = load i8, i8* %197, align 1, !dbg !2654
  %199 = zext i8 %198 to i32, !dbg !2654
  %200 = icmp ne i32 %193, %199, !dbg !2655
  br i1 %200, label %201, label %222, !dbg !2656

; <label>:201:                                    ; preds = %187
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2657
  %203 = call i32 @getpid() #9, !dbg !2659
  %204 = call i32 @gettid(), !dbg !2660
  %205 = load i32, i32* %15, align 4, !dbg !2662
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i32 0, i32 0), i32 %203, i32 %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1877, i32 %205), !dbg !2663
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2665
  %208 = load i32, i32* %15, align 4, !dbg !2666
  %209 = zext i32 %208 to i64, !dbg !2667
  %210 = load i8*, i8** %11, align 8, !dbg !2667
  %211 = getelementptr inbounds i8, i8* %210, i64 %209, !dbg !2667
  call void @__hexdump(%struct._IO_FILE* %207, i8* %211, i32 32), !dbg !2668
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2669
  %213 = call i32 @getpid() #9, !dbg !2670
  %214 = call i32 @gettid(), !dbg !2671
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i32 %213, i32 %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1879), !dbg !2672
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2673
  %217 = load i32, i32* %15, align 4, !dbg !2674
  %218 = zext i32 %217 to i64, !dbg !2675
  %219 = load i8*, i8** %16, align 8, !dbg !2675
  %220 = getelementptr inbounds i8, i8* %219, i64 %218, !dbg !2675
  call void @__hexdump(%struct._IO_FILE* %216, i8* %220, i32 32), !dbg !2676
  %221 = load i8*, i8** %11, align 8, !dbg !2677
  call void @free(i8* %221) #9, !dbg !2678
  store i32 -206, i32* %4, align 4, !dbg !2679
  br label %240, !dbg !2679

; <label>:222:                                    ; preds = %187
  br label %223, !dbg !2680

; <label>:223:                                    ; preds = %222
  %224 = load i32, i32* %15, align 4, !dbg !2681
  %225 = add i32 %224, 1, !dbg !2681
  store i32 %225, i32* %15, align 4, !dbg !2681
  br label %181, !dbg !2683, !llvm.loop !2684

; <label>:226:                                    ; preds = %181
  br label %227, !dbg !2686

; <label>:227:                                    ; preds = %226, %154
  br label %228, !dbg !2687, !llvm.loop !2688

; <label>:228:                                    ; preds = %227
  %229 = load i32, i32* @_dbg_flag, align 4, !dbg !2689
  %230 = icmp ne i32 %229, 0, !dbg !2689
  br i1 %230, label %231, label %236, !dbg !2689

; <label>:231:                                    ; preds = %228
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2693
  %233 = call i32 @getpid() #9, !dbg !2695
  %234 = call i32 @gettid(), !dbg !2696
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0), i32 %233, i32 %234, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1886, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.genwqe_flash_update, i32 0, i32 0)), !dbg !2698
  br label %236, !dbg !2700

; <label>:236:                                    ; preds = %231, %228
  br label %237, !dbg !2701

; <label>:237:                                    ; preds = %236
  %238 = load i8*, i8** %11, align 8, !dbg !2703
  call void @free(i8* %238) #9, !dbg !2704
  %239 = load i32, i32* %8, align 4, !dbg !2705
  store i32 %239, i32* %4, align 4, !dbg !2706
  br label %240, !dbg !2706

; <label>:240:                                    ; preds = %237, %201, %177, %152, %117, %72, %44, %38, %27, %21
  %241 = load i32, i32* %4, align 4, !dbg !2707
  ret i32 %241, !dbg !2707
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

declare i64 @read(i32, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal void @__hexdump(%struct._IO_FILE*, i8*, i32) #0 !dbg !2708 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !2709, metadata !467), !dbg !2710
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2711, metadata !467), !dbg !2712
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2713, metadata !467), !dbg !2714
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2715, metadata !467), !dbg !2716
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2717, metadata !467), !dbg !2718
  %9 = load i8*, i8** %5, align 8, !dbg !2719
  store i8* %9, i8** %8, align 8, !dbg !2718
  store i32 0, i32* %7, align 4, !dbg !2720
  br label %10, !dbg !2722

; <label>:10:                                     ; preds = %41, %3
  %11 = load i32, i32* %7, align 4, !dbg !2723
  %12 = load i32, i32* %6, align 4, !dbg !2726
  %13 = icmp ult i32 %11, %12, !dbg !2727
  br i1 %13, label %14, label %44, !dbg !2728

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %7, align 4, !dbg !2729
  %16 = and i32 %15, 15, !dbg !2732
  %17 = icmp eq i32 %16, 0, !dbg !2733
  br i1 %17, label %18, label %25, !dbg !2734

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2735
  %20 = load i32, i32* %7, align 4, !dbg !2736
  %21 = zext i32 %20 to i64, !dbg !2737
  %22 = load i8*, i8** %8, align 8, !dbg !2737
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !2737
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* %23), !dbg !2738
  br label %25, !dbg !2738

; <label>:25:                                     ; preds = %18, %14
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2739
  %27 = load i32, i32* %7, align 4, !dbg !2740
  %28 = zext i32 %27 to i64, !dbg !2741
  %29 = load i8*, i8** %8, align 8, !dbg !2741
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !2741
  %31 = load i8, i8* %30, align 1, !dbg !2741
  %32 = zext i8 %31 to i32, !dbg !2741
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %32), !dbg !2742
  %34 = load i32, i32* %7, align 4, !dbg !2743
  %35 = and i32 %34, 15, !dbg !2745
  %36 = icmp eq i32 %35, 15, !dbg !2746
  br i1 %36, label %37, label %40, !dbg !2747

; <label>:37:                                     ; preds = %25
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2748
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)), !dbg !2749
  br label %40, !dbg !2749

; <label>:40:                                     ; preds = %37, %25
  br label %41, !dbg !2750

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %7, align 4, !dbg !2751
  %43 = add i32 %42, 1, !dbg !2751
  store i32 %43, i32* %7, align 4, !dbg !2751
  br label %10, !dbg !2753, !llvm.loop !2754

; <label>:44:                                     ; preds = %10
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !2756
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)), !dbg !2757
  ret void, !dbg !2758
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_read_vpd(%struct.card_dev_t*, %struct.genwqe_vpd*) #0 !dbg !2759 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca %struct.genwqe_vpd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !2768, metadata !467), !dbg !2769
  store %struct.genwqe_vpd* %1, %struct.genwqe_vpd** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.genwqe_vpd** %5, metadata !2770, metadata !467), !dbg !2771
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2772, metadata !467), !dbg !2773
  call void @llvm.dbg.declare(metadata i16* %7, metadata !2774, metadata !467), !dbg !2775
  call void @llvm.dbg.declare(metadata i16* %8, metadata !2776, metadata !467), !dbg !2777
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2778, metadata !467), !dbg !2779
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2780, metadata !467), !dbg !2781
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2782, metadata !467), !dbg !2783
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2784, metadata !467), !dbg !2785
  %13 = call i64 @sysconf(i32 30) #9, !dbg !2786
  %14 = trunc i64 %13 to i32, !dbg !2786
  store i32 %14, i32* %12, align 4, !dbg !2785
  %15 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2787
  %16 = icmp eq %struct.card_dev_t* null, %15, !dbg !2789
  br i1 %16, label %17, label %18, !dbg !2790

; <label>:17:                                     ; preds = %2
  store i32 -205, i32* %3, align 4, !dbg !2791
  br label %72, !dbg !2791

; <label>:18:                                     ; preds = %2
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2792
  %20 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %19, i32 0, i32 0, !dbg !2794
  %21 = load i32, i32* %20, align 8, !dbg !2794
  %22 = icmp eq i32 -1, %21, !dbg !2795
  br i1 %22, label %23, label %24, !dbg !2796

; <label>:23:                                     ; preds = %18
  store i32 -205, i32* %3, align 4, !dbg !2797
  br label %72, !dbg !2797

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %12, align 4, !dbg !2798
  %26 = zext i32 %25 to i64, !dbg !2798
  %27 = add i64 512, %26, !dbg !2799
  %28 = load i32, i32* %12, align 4, !dbg !2800
  %29 = sub i32 %28, 1, !dbg !2801
  %30 = xor i32 %29, -1, !dbg !2802
  %31 = zext i32 %30 to i64, !dbg !2802
  %32 = and i64 %27, %31, !dbg !2803
  store i64 %32, i64* %10, align 8, !dbg !2804
  %33 = load i32, i32* %12, align 4, !dbg !2805
  %34 = zext i32 %33 to i64, !dbg !2805
  %35 = load i64, i64* %10, align 8, !dbg !2806
  %36 = call noalias i8* @memalign(i64 %34, i64 %35) #9, !dbg !2807
  store i8* %36, i8** %11, align 8, !dbg !2808
  %37 = load i8*, i8** %11, align 8, !dbg !2809
  %38 = icmp ne i8* %37, null, !dbg !2809
  br i1 %38, label %40, label %39, !dbg !2811

; <label>:39:                                     ; preds = %24
  store i32 -201, i32* %3, align 4, !dbg !2812
  br label %72, !dbg !2812

; <label>:40:                                     ; preds = %24
  %41 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2813
  %42 = load i8*, i8** %11, align 8, !dbg !2814
  %43 = load i64, i64* %10, align 8, !dbg !2815
  %44 = trunc i64 %43 to i32, !dbg !2815
  %45 = call i32 @__genwqe_flash_read(%struct.card_dev_t* %41, i8 signext 118, i8* %42, i32 %44, i16* %7, i16* %8, i32* %9), !dbg !2816
  store i32 %45, i32* %6, align 4, !dbg !2817
  %46 = load i32, i32* %6, align 4, !dbg !2818
  %47 = icmp slt i32 %46, 0, !dbg !2820
  br i1 %47, label %48, label %65, !dbg !2821

; <label>:48:                                     ; preds = %40
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2822
  %50 = call i32 @getpid() #9, !dbg !2824
  %51 = call i32 @gettid(), !dbg !2825
  %52 = load i16, i16* %7, align 2, !dbg !2827
  %53 = zext i16 %52 to i32, !dbg !2827
  %54 = load i16, i16* %8, align 2, !dbg !2828
  %55 = zext i16 %54 to i32, !dbg !2828
  %56 = load i32, i32* %9, align 4, !dbg !2829
  %57 = load i32, i32* %6, align 4, !dbg !2830
  %58 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2831
  %59 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %58, i32 0, i32 5, !dbg !2832
  %60 = load i32, i32* %59, align 4, !dbg !2832
  %61 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2833
  %62 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %61, i32 0, i32 6, !dbg !2834
  %63 = load i32, i32* %62, align 8, !dbg !2834
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.21, i32 0, i32 0), i32 %50, i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1916, i32 %53, i32 %55, i32 %56, i32 %57, i32 %60, i32 %63), !dbg !2835
  br label %69, !dbg !2837

; <label>:65:                                     ; preds = %40
  %66 = load %struct.genwqe_vpd*, %struct.genwqe_vpd** %5, align 8, !dbg !2838
  %67 = bitcast %struct.genwqe_vpd* %66 to i8*, !dbg !2839
  %68 = load i8*, i8** %11, align 8, !dbg !2840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 512, i32 1, i1 false), !dbg !2839
  br label %69, !dbg !2839

; <label>:69:                                     ; preds = %65, %48
  %70 = load i8*, i8** %11, align 8, !dbg !2841
  call void @free(i8* %70) #9, !dbg !2842
  %71 = load i32, i32* %6, align 4, !dbg !2843
  store i32 %71, i32* %3, align 4, !dbg !2844
  br label %72, !dbg !2844

; <label>:72:                                     ; preds = %69, %39, %23, %17
  %73 = load i32, i32* %3, align 4, !dbg !2845
  ret i32 %73, !dbg !2845
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i32 @genwqe_write_vpd(%struct.card_dev_t*, %struct.genwqe_vpd*) #0 !dbg !2846 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca %struct.genwqe_vpd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !2851, metadata !467), !dbg !2852
  store %struct.genwqe_vpd* %1, %struct.genwqe_vpd** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.genwqe_vpd** %5, metadata !2853, metadata !467), !dbg !2854
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2855, metadata !467), !dbg !2856
  call void @llvm.dbg.declare(metadata i16* %7, metadata !2857, metadata !467), !dbg !2858
  call void @llvm.dbg.declare(metadata i16* %8, metadata !2859, metadata !467), !dbg !2860
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2861, metadata !467), !dbg !2862
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2863, metadata !467), !dbg !2864
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2865, metadata !467), !dbg !2866
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2867, metadata !467), !dbg !2868
  %13 = call i64 @sysconf(i32 30) #9, !dbg !2869
  %14 = trunc i64 %13 to i32, !dbg !2869
  store i32 %14, i32* %12, align 4, !dbg !2868
  %15 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2870
  %16 = icmp eq %struct.card_dev_t* null, %15, !dbg !2872
  br i1 %16, label %17, label %18, !dbg !2873

; <label>:17:                                     ; preds = %2
  store i32 -205, i32* %3, align 4, !dbg !2874
  br label %71, !dbg !2874

; <label>:18:                                     ; preds = %2
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2875
  %20 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %19, i32 0, i32 0, !dbg !2877
  %21 = load i32, i32* %20, align 8, !dbg !2877
  %22 = icmp eq i32 -1, %21, !dbg !2878
  br i1 %22, label %23, label %24, !dbg !2879

; <label>:23:                                     ; preds = %18
  store i32 -205, i32* %3, align 4, !dbg !2880
  br label %71, !dbg !2880

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %12, align 4, !dbg !2881
  %26 = zext i32 %25 to i64, !dbg !2881
  %27 = add i64 512, %26, !dbg !2882
  %28 = load i32, i32* %12, align 4, !dbg !2883
  %29 = sub i32 %28, 1, !dbg !2884
  %30 = xor i32 %29, -1, !dbg !2885
  %31 = zext i32 %30 to i64, !dbg !2885
  %32 = and i64 %27, %31, !dbg !2886
  store i64 %32, i64* %10, align 8, !dbg !2887
  %33 = load i32, i32* %12, align 4, !dbg !2888
  %34 = zext i32 %33 to i64, !dbg !2888
  %35 = load i64, i64* %10, align 8, !dbg !2889
  %36 = call noalias i8* @memalign(i64 %34, i64 %35) #9, !dbg !2890
  store i8* %36, i8** %11, align 8, !dbg !2891
  %37 = load i8*, i8** %11, align 8, !dbg !2892
  %38 = icmp ne i8* %37, null, !dbg !2892
  br i1 %38, label %40, label %39, !dbg !2894

; <label>:39:                                     ; preds = %24
  store i32 -201, i32* %3, align 4, !dbg !2895
  br label %71, !dbg !2895

; <label>:40:                                     ; preds = %24
  %41 = load i8*, i8** %11, align 8, !dbg !2896
  %42 = load %struct.genwqe_vpd*, %struct.genwqe_vpd** %5, align 8, !dbg !2897
  %43 = bitcast %struct.genwqe_vpd* %42 to i8*, !dbg !2898
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %43, i64 512, i32 1, i1 false), !dbg !2898
  %44 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2899
  %45 = load i8*, i8** %11, align 8, !dbg !2900
  %46 = load i64, i64* %10, align 8, !dbg !2901
  %47 = trunc i64 %46 to i32, !dbg !2901
  %48 = call i32 @__genwqe_flash_update(%struct.card_dev_t* %44, i8 signext 118, i8* %45, i32 %47, i16* %7, i16* %8, i32* %9), !dbg !2902
  store i32 %48, i32* %6, align 4, !dbg !2903
  %49 = load i32, i32* %6, align 4, !dbg !2904
  %50 = icmp slt i32 %49, 0, !dbg !2906
  br i1 %50, label %51, label %68, !dbg !2907

; <label>:51:                                     ; preds = %40
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2908
  %53 = call i32 @getpid() #9, !dbg !2910
  %54 = call i32 @gettid(), !dbg !2911
  %55 = load i16, i16* %7, align 2, !dbg !2913
  %56 = zext i16 %55 to i32, !dbg !2913
  %57 = load i16, i16* %8, align 2, !dbg !2914
  %58 = zext i16 %57 to i32, !dbg !2914
  %59 = load i32, i32* %9, align 4, !dbg !2915
  %60 = load i32, i32* %6, align 4, !dbg !2916
  %61 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2917
  %62 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %61, i32 0, i32 5, !dbg !2918
  %63 = load i32, i32* %62, align 4, !dbg !2918
  %64 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !2919
  %65 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %64, i32 0, i32 6, !dbg !2920
  %66 = load i32, i32* %65, align 8, !dbg !2920
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.22, i32 0, i32 0), i32 %53, i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 1952, i32 %56, i32 %58, i32 %59, i32 %60, i32 %63, i32 %66), !dbg !2921
  br label %68, !dbg !2923

; <label>:68:                                     ; preds = %51, %40
  %69 = load i8*, i8** %11, align 8, !dbg !2924
  call void @free(i8* %69) #9, !dbg !2925
  %70 = load i32, i32* %6, align 4, !dbg !2926
  store i32 %70, i32* %3, align 4, !dbg !2927
  br label %71, !dbg !2927

; <label>:71:                                     ; preds = %68, %39, %23, %17
  %72 = load i32, i32* %3, align 4, !dbg !2928
  ret i32 %72, !dbg !2928
}

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_flash_update(%struct.card_dev_t*, i8 signext, i8*, i32, i16*, i16*, i32*) #0 !dbg !2929 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.card_dev_t*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.genwqe_bitstream, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %9, metadata !2932, metadata !467), !dbg !2933
  store i8 %1, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2934, metadata !467), !dbg !2935
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2936, metadata !467), !dbg !2937
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2938, metadata !467), !dbg !2939
  store i16* %4, i16** %13, align 8
  call void @llvm.dbg.declare(metadata i16** %13, metadata !2940, metadata !467), !dbg !2941
  store i16* %5, i16** %14, align 8
  call void @llvm.dbg.declare(metadata i16** %14, metadata !2942, metadata !467), !dbg !2943
  store i32* %6, i32** %15, align 8
  call void @llvm.dbg.declare(metadata i32** %15, metadata !2944, metadata !467), !dbg !2945
  call void @llvm.dbg.declare(metadata %struct.genwqe_bitstream* %16, metadata !2946, metadata !467), !dbg !2947
  %17 = bitcast %struct.genwqe_bitstream* %16 to i8*, !dbg !2948
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 56, i32 8, i1 false), !dbg !2948
  %18 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 3, !dbg !2949
  store i64 0, i64* %18, align 8, !dbg !2950
  %19 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 5, !dbg !2951
  store i32 1, i32* %19, align 4, !dbg !2952
  %20 = load i8, i8* %10, align 1, !dbg !2953
  %21 = zext i8 %20 to i32, !dbg !2954
  %22 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 4, !dbg !2955
  store i32 %21, i32* %22, align 8, !dbg !2956
  %23 = load i8*, i8** %11, align 8, !dbg !2957
  %24 = ptrtoint i8* %23 to i64, !dbg !2958
  %25 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 0, !dbg !2959
  store i64 %24, i64* %25, align 8, !dbg !2960
  %26 = load i32, i32* %12, align 4, !dbg !2961
  %27 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 1, !dbg !2962
  store i32 %26, i32* %27, align 8, !dbg !2963
  %28 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2964
  %29 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %28, i32 0, i32 4, !dbg !2965
  %30 = load i32, i32* %29, align 8, !dbg !2965
  %31 = call i32 (i32, i64, ...) @ioctl(i32 %30, i64 3224937808, %struct.genwqe_bitstream* %16) #9, !dbg !2966
  %32 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2967
  %33 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %32, i32 0, i32 5, !dbg !2968
  store i32 %31, i32* %33, align 4, !dbg !2969
  %34 = call i32* @__errno_location() #1, !dbg !2970
  %35 = load i32, i32* %34, align 4, !dbg !2971
  %36 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2972
  %37 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %36, i32 0, i32 6, !dbg !2973
  store i32 %35, i32* %37, align 8, !dbg !2974
  %38 = load i16*, i16** %13, align 8, !dbg !2975
  %39 = icmp ne i16* %38, null, !dbg !2975
  br i1 %39, label %40, label %44, !dbg !2977

; <label>:40:                                     ; preds = %7
  %41 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 8, !dbg !2978
  %42 = load i16, i16* %41, align 8, !dbg !2978
  %43 = load i16*, i16** %13, align 8, !dbg !2979
  store i16 %42, i16* %43, align 2, !dbg !2980
  br label %44, !dbg !2981

; <label>:44:                                     ; preds = %40, %7
  %45 = load i16*, i16** %14, align 8, !dbg !2982
  %46 = icmp ne i16* %45, null, !dbg !2982
  br i1 %46, label %47, label %51, !dbg !2984

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 9, !dbg !2985
  %49 = load i16, i16* %48, align 2, !dbg !2985
  %50 = load i16*, i16** %14, align 8, !dbg !2986
  store i16 %49, i16* %50, align 2, !dbg !2987
  br label %51, !dbg !2988

; <label>:51:                                     ; preds = %47, %44
  %52 = load i32*, i32** %15, align 8, !dbg !2989
  %53 = icmp ne i32* %52, null, !dbg !2989
  br i1 %53, label %54, label %58, !dbg !2991

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.genwqe_bitstream, %struct.genwqe_bitstream* %16, i32 0, i32 10, !dbg !2992
  %56 = load i32, i32* %55, align 4, !dbg !2992
  %57 = load i32*, i32** %15, align 8, !dbg !2993
  store i32 %56, i32* %57, align 4, !dbg !2994
  br label %58, !dbg !2995

; <label>:58:                                     ; preds = %54, %51
  %59 = load %struct.card_dev_t*, %struct.card_dev_t** %9, align 8, !dbg !2996
  %60 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %59, i32 0, i32 5, !dbg !2998
  %61 = load i32, i32* %60, align 4, !dbg !2998
  %62 = icmp slt i32 %61, 0, !dbg !2999
  br i1 %62, label %63, label %64, !dbg !3000

; <label>:63:                                     ; preds = %58
  store i32 -202, i32* %8, align 4, !dbg !3001
  br label %65, !dbg !3001

; <label>:64:                                     ; preds = %58
  store i32 0, i32* %8, align 4, !dbg !3002
  br label %65, !dbg !3002

; <label>:65:                                     ; preds = %64, %63
  %66 = load i32, i32* %8, align 4, !dbg !3003
  ret i32 %66, !dbg !3003
}

; Function Attrs: nounwind uwtable
define void @genwqe_print_debug_data(%struct._IO_FILE*, %struct.genwqe_debug_data*, i32) #0 !dbg !3004 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.genwqe_debug_data*, align 8
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !3018, metadata !467), !dbg !3019
  store %struct.genwqe_debug_data* %1, %struct.genwqe_debug_data** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.genwqe_debug_data** %5, metadata !3020, metadata !467), !dbg !3021
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3022, metadata !467), !dbg !3023
  %7 = load %struct.genwqe_debug_data*, %struct.genwqe_debug_data** %5, align 8, !dbg !3024
  %8 = icmp eq %struct.genwqe_debug_data* %7, null, !dbg !3026
  br i1 %8, label %9, label %10, !dbg !3027

; <label>:9:                                      ; preds = %3
  br label %59, !dbg !3028

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %6, align 4, !dbg !3029
  %12 = and i32 %11, 1, !dbg !3031
  %13 = icmp ne i32 %12, 0, !dbg !3031
  br i1 %13, label %14, label %26, !dbg !3032

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3033
  %16 = load %struct.genwqe_debug_data*, %struct.genwqe_debug_data** %5, align 8, !dbg !3034
  %17 = getelementptr inbounds %struct.genwqe_debug_data, %struct.genwqe_debug_data* %16, i32 0, i32 0, !dbg !3035
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i32 0, i32 0, !dbg !3034
  %19 = load %struct.genwqe_debug_data*, %struct.genwqe_debug_data** %5, align 8, !dbg !3036
  %20 = getelementptr inbounds %struct.genwqe_debug_data, %struct.genwqe_debug_data* %19, i32 0, i32 1, !dbg !3037
  %21 = load i64, i64* %20, align 8, !dbg !3037
  %22 = load %struct.genwqe_debug_data*, %struct.genwqe_debug_data** %5, align 8, !dbg !3038
  %23 = getelementptr inbounds %struct.genwqe_debug_data, %struct.genwqe_debug_data* %22, i32 0, i32 2, !dbg !3039
  %24 = load i64, i64* %23, align 8, !dbg !3039
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* %18, i64 %21, i64 %24), !dbg !3040
  br label %26, !dbg !3040

; <label>:26:                                     ; preds = %14, %10
  %27 = load i32, i32* %6, align 4, !dbg !3041
  %28 = and i32 %27, 2, !dbg !3043
  %29 = icmp ne i32 %28, 0, !dbg !3043
  br i1 %29, label %30, label %37, !dbg !3044

; <label>:30:                                     ; preds = %26
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3045
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)), !dbg !3047
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3048
  %34 = load %struct.genwqe_debug_data*, %struct.genwqe_debug_data** %5, align 8, !dbg !3049
  %35 = getelementptr inbounds %struct.genwqe_debug_data, %struct.genwqe_debug_data* %34, i32 0, i32 3, !dbg !3050
  %36 = bitcast [256 x i8]* %35 to i8*, !dbg !3051
  call void @genwqe_hexdump(%struct._IO_FILE* %33, i8* %36, i32 256), !dbg !3052
  br label %37, !dbg !3053

; <label>:37:                                     ; preds = %30, %26
  %38 = load i32, i32* %6, align 4, !dbg !3054
  %39 = and i32 %38, 4, !dbg !3056
  %40 = icmp ne i32 %39, 0, !dbg !3056
  br i1 %40, label %41, label %48, !dbg !3057

; <label>:41:                                     ; preds = %37
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3058
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)), !dbg !3060
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3061
  %45 = load %struct.genwqe_debug_data*, %struct.genwqe_debug_data** %5, align 8, !dbg !3062
  %46 = getelementptr inbounds %struct.genwqe_debug_data, %struct.genwqe_debug_data* %45, i32 0, i32 4, !dbg !3063
  %47 = bitcast [256 x i8]* %46 to i8*, !dbg !3064
  call void @genwqe_hexdump(%struct._IO_FILE* %44, i8* %47, i32 256), !dbg !3065
  br label %48, !dbg !3066

; <label>:48:                                     ; preds = %41, %37
  %49 = load i32, i32* %6, align 4, !dbg !3067
  %50 = and i32 %49, 8, !dbg !3069
  %51 = icmp ne i32 %50, 0, !dbg !3069
  br i1 %51, label %52, label %59, !dbg !3070

; <label>:52:                                     ; preds = %48
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3071
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)), !dbg !3073
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !3074
  %56 = load %struct.genwqe_debug_data*, %struct.genwqe_debug_data** %5, align 8, !dbg !3075
  %57 = getelementptr inbounds %struct.genwqe_debug_data, %struct.genwqe_debug_data* %56, i32 0, i32 5, !dbg !3076
  %58 = bitcast [256 x i8]* %57 to i8*, !dbg !3077
  call void @genwqe_hexdump(%struct._IO_FILE* %55, i8* %58, i32 256), !dbg !3078
  br label %59, !dbg !3079

; <label>:59:                                     ; preds = %9, %52, %48
  ret void, !dbg !3080
}

; Function Attrs: nounwind uwtable
define internal void @libcard_init() #0 !dbg !3081 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.lib_data_t*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3084, metadata !467), !dbg !3085
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3086, metadata !467), !dbg !3087
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %3, metadata !3088, metadata !467), !dbg !3089
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %3, align 8, !dbg !3089
  %4 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3090
  call void @ddcb_setup_crc32(%struct.lib_data_t* %4), !dbg !3091
  %5 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3092
  %6 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %5, i32 0, i32 4, !dbg !3093
  %7 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %6, %union.pthread_mutexattr_t* null) #9, !dbg !3094
  store i32 %7, i32* %1, align 4, !dbg !3095
  %8 = load i32, i32* %1, align 4, !dbg !3096
  %9 = icmp ne i32 %8, 0, !dbg !3098
  br i1 %9, label %10, label %15, !dbg !3099

; <label>:10:                                     ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3100
  %12 = call i32 @getpid() #9, !dbg !3101
  %13 = call i32 @gettid(), !dbg !3102
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i32 %12, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 2006), !dbg !3104
  br label %15, !dbg !3106

; <label>:15:                                     ; preds = %10, %0
  %16 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3107
  %17 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %16, i32 0, i32 3, !dbg !3108
  store i32 0, i32* %17, align 8, !dbg !3109
  %18 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3110
  %19 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %18, i32 0, i32 1, !dbg !3111
  store i64 -1, i64* %19, align 8, !dbg !3112
  %20 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3113
  %21 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %20, i32 0, i32 6, !dbg !3114
  store i32 0, i32* %21, align 4, !dbg !3115
  %22 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3116
  %23 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %22, i32 0, i32 5, !dbg !3117
  store i32 0, i32* %23, align 8, !dbg !3118
  %24 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3119
  %25 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %24, i32 0, i32 7, !dbg !3120
  store i32 -1, i32* %25, align 8, !dbg !3121
  store i32 0, i32* %2, align 4, !dbg !3122
  br label %26, !dbg !3124

; <label>:26:                                     ; preds = %35, %15
  %27 = load i32, i32* %2, align 4, !dbg !3125
  %28 = icmp slt i32 %27, 256, !dbg !3128
  br i1 %28, label %29, label %38, !dbg !3129

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %2, align 4, !dbg !3130
  %31 = sext i32 %30 to i64, !dbg !3131
  %32 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3131
  %33 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %32, i32 0, i32 8, !dbg !3132
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %33, i64 0, i64 %31, !dbg !3131
  store i32 0, i32* %34, align 4, !dbg !3133
  br label %35, !dbg !3131

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* %2, align 4, !dbg !3134
  %37 = add nsw i32 %36, 1, !dbg !3134
  store i32 %37, i32* %2, align 4, !dbg !3134
  br label %26, !dbg !3136, !llvm.loop !3137

; <label>:38:                                     ; preds = %26
  store %struct.dev_card_t* null, %struct.dev_card_t** @m_dev_head, align 8, !dbg !3139
  store %struct.dev_card_t* null, %struct.dev_card_t** @s_dev_head, align 8, !dbg !3140
  %39 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3141
  %40 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %39, i32 0, i32 9, !dbg !3142
  store i32 1, i32* %40, align 4, !dbg !3143
  %41 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3144
  %42 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %41, i32 0, i32 13, !dbg !3145
  store i64 -1, i64* %42, align 8, !dbg !3146
  %43 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3147
  %44 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %43, i32 0, i32 14, !dbg !3148
  store i32 0, i32* %44, align 8, !dbg !3149
  ret void, !dbg !3150
}

; Function Attrs: nounwind uwtable
define internal void @ddcb_setup_crc32(%struct.lib_data_t*) #0 !dbg !3151 {
  %2 = alloca %struct.lib_data_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lib_data_t* %0, %struct.lib_data_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %2, metadata !3154, metadata !467), !dbg !3155
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3156, metadata !467), !dbg !3157
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3158, metadata !467), !dbg !3159
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3160, metadata !467), !dbg !3161
  store i32 0, i32* %3, align 4, !dbg !3162
  br label %6, !dbg !3164

; <label>:6:                                      ; preds = %38, %1
  %7 = load i32, i32* %3, align 4, !dbg !3165
  %8 = zext i32 %7 to i64, !dbg !3165
  %9 = icmp ult i64 %8, 256, !dbg !3168
  br i1 %9, label %10, label %41, !dbg !3169

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !3170
  %12 = shl i32 %11, 24, !dbg !3172
  store i32 %12, i32* %5, align 4, !dbg !3173
  store i32 0, i32* %4, align 4, !dbg !3174
  br label %13, !dbg !3176

; <label>:13:                                     ; preds = %28, %10
  %14 = load i32, i32* %4, align 4, !dbg !3177
  %15 = icmp ult i32 %14, 8, !dbg !3180
  br i1 %15, label %16, label %31, !dbg !3181

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4, !dbg !3182
  %18 = and i32 %17, -2147483648, !dbg !3185
  %19 = icmp ne i32 %18, 0, !dbg !3185
  br i1 %19, label %20, label %24, !dbg !3186

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %5, align 4, !dbg !3187
  %22 = shl i32 %21, 1, !dbg !3188
  %23 = xor i32 %22, 537149449, !dbg !3189
  store i32 %23, i32* %5, align 4, !dbg !3190
  br label %27, !dbg !3191

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %5, align 4, !dbg !3192
  %26 = shl i32 %25, 1, !dbg !3193
  store i32 %26, i32* %5, align 4, !dbg !3194
  br label %27

; <label>:27:                                     ; preds = %24, %20
  br label %28, !dbg !3195

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %4, align 4, !dbg !3196
  %30 = add i32 %29, 1, !dbg !3196
  store i32 %30, i32* %4, align 4, !dbg !3196
  br label %13, !dbg !3198, !llvm.loop !3199

; <label>:31:                                     ; preds = %13
  %32 = load i32, i32* %5, align 4, !dbg !3201
  %33 = load i32, i32* %3, align 4, !dbg !3202
  %34 = zext i32 %33 to i64, !dbg !3203
  %35 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3203
  %36 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %35, i32 0, i32 0, !dbg !3204
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %36, i64 0, i64 %34, !dbg !3203
  store i32 %32, i32* %37, align 4, !dbg !3205
  br label %38, !dbg !3206

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %3, align 4, !dbg !3207
  %40 = add i32 %39, 1, !dbg !3207
  store i32 %40, i32* %3, align 4, !dbg !3207
  br label %6, !dbg !3209, !llvm.loop !3210

; <label>:41:                                     ; preds = %6
  ret void, !dbg !3212
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind uwtable
define internal void @libcard_exit() #0 !dbg !3213 {
  %1 = alloca %struct.lib_data_t*, align 8
  %2 = alloca %struct.card_dev_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %1, metadata !3214, metadata !467), !dbg !3215
  store %struct.lib_data_t* @lib_data, %struct.lib_data_t** %1, align 8, !dbg !3215
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !3216, metadata !467), !dbg !3217
  br label %3, !dbg !3218, !llvm.loop !3219

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @_dbg_flag, align 4, !dbg !3220
  %5 = icmp ne i32 %4, 0, !dbg !3220
  br i1 %5, label %6, label %14, !dbg !3220

; <label>:6:                                      ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3224
  %8 = call i32 @getpid() #9, !dbg !3226
  %9 = call i32 @gettid(), !dbg !3227
  %10 = load %struct.dev_card_t*, %struct.dev_card_t** @s_dev_head, align 8, !dbg !3229
  %11 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !3230
  %12 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !3231
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i32 0, i32 0), i32 %8, i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 2034, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.libcard_exit, i32 0, i32 0), %struct.dev_card_t* %10, %struct.dev_card_t* %11, %struct.fd_node* %12), !dbg !3232
  br label %14, !dbg !3234

; <label>:14:                                     ; preds = %6, %3
  br label %15, !dbg !3235

; <label>:15:                                     ; preds = %14
  %16 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3237
  %17 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %16, i32 0, i32 4, !dbg !3238
  %18 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %17) #9, !dbg !3239
  %19 = load %struct.dev_card_t*, %struct.dev_card_t** @s_dev_head, align 8, !dbg !3240
  %20 = bitcast %struct.dev_card_t* %19 to %struct.card_dev_t*, !dbg !3241
  store %struct.card_dev_t* %20, %struct.card_dev_t** %2, align 8, !dbg !3242
  br label %21, !dbg !3243

; <label>:21:                                     ; preds = %35, %15
  %22 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3244
  %23 = icmp ne %struct.card_dev_t* %22, null, !dbg !3246
  br i1 %23, label %24, label %41, !dbg !3246

; <label>:24:                                     ; preds = %21
  br label %25, !dbg !3247, !llvm.loop !3249

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* @_dbg_flag, align 4, !dbg !3250
  %27 = icmp ne i32 %26, 0, !dbg !3250
  br i1 %27, label %28, label %34, !dbg !3250

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3254
  %30 = call i32 @getpid() #9, !dbg !3256
  %31 = call i32 @gettid(), !dbg !3257
  %32 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3259
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i32 0, i32 0), i32 %30, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 2039, %struct.card_dev_t* %32), !dbg !3260
  br label %34, !dbg !3262

; <label>:34:                                     ; preds = %28, %25
  br label %35, !dbg !3263

; <label>:35:                                     ; preds = %34
  %36 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3265
  %37 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %36, i32 0, i32 1, !dbg !3266
  store i32 2, i32* %37, align 4, !dbg !3267
  %38 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3268
  %39 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %38, i32 0, i32 10, !dbg !3269
  %40 = load %struct.card_dev_t*, %struct.card_dev_t** %39, align 8, !dbg !3269
  store %struct.card_dev_t* %40, %struct.card_dev_t** %2, align 8, !dbg !3270
  br label %21, !dbg !3271, !llvm.loop !3273

; <label>:41:                                     ; preds = %21
  %42 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !3274
  %43 = bitcast %struct.dev_card_t* %42 to %struct.card_dev_t*, !dbg !3275
  store %struct.card_dev_t* %43, %struct.card_dev_t** %2, align 8, !dbg !3276
  br label %44, !dbg !3277

; <label>:44:                                     ; preds = %58, %41
  %45 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3278
  %46 = icmp ne %struct.card_dev_t* %45, null, !dbg !3279
  br i1 %46, label %47, label %64, !dbg !3279

; <label>:47:                                     ; preds = %44
  br label %48, !dbg !3280, !llvm.loop !3282

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* @_dbg_flag, align 4, !dbg !3283
  %50 = icmp ne i32 %49, 0, !dbg !3283
  br i1 %50, label %51, label %57, !dbg !3283

; <label>:51:                                     ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3287
  %53 = call i32 @getpid() #9, !dbg !3289
  %54 = call i32 @gettid(), !dbg !3290
  %55 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3292
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i32 0, i32 0), i32 %53, i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 2045, %struct.card_dev_t* %55), !dbg !3293
  br label %57, !dbg !3295

; <label>:57:                                     ; preds = %51, %48
  br label %58, !dbg !3296

; <label>:58:                                     ; preds = %57
  %59 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3298
  %60 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %59, i32 0, i32 1, !dbg !3299
  store i32 2, i32* %60, align 4, !dbg !3300
  %61 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3301
  %62 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %61, i32 0, i32 10, !dbg !3302
  %63 = load %struct.card_dev_t*, %struct.card_dev_t** %62, align 8, !dbg !3302
  store %struct.card_dev_t* %63, %struct.card_dev_t** %2, align 8, !dbg !3303
  br label %44, !dbg !3304, !llvm.loop !3305

; <label>:64:                                     ; preds = %44
  %65 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3306
  %66 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %65, i32 0, i32 4, !dbg !3307
  %67 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %66) #9, !dbg !3308
  %68 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3309
  %69 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %68, i32 0, i32 13, !dbg !3311
  %70 = load i64, i64* %69, align 8, !dbg !3311
  %71 = icmp ne i64 %70, -1, !dbg !3312
  br i1 %71, label %72, label %90, !dbg !3313

; <label>:72:                                     ; preds = %64
  %73 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3314
  %74 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %73, i32 0, i32 13, !dbg !3316
  %75 = load i64, i64* %74, align 8, !dbg !3316
  %76 = call i32 @pthread_cancel(i64 %75), !dbg !3317
  %77 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3318
  %78 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %77, i32 0, i32 13, !dbg !3319
  %79 = load i64, i64* %78, align 8, !dbg !3319
  %80 = call i32 @pthread_join(i64 %79, i8** null), !dbg !3320
  %81 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3321
  %82 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %81, i32 0, i32 13, !dbg !3322
  store i64 -1, i64* %82, align 8, !dbg !3323
  %83 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3324
  %84 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %83, i32 0, i32 10, !dbg !3325
  %85 = load i32, i32* %84, align 8, !dbg !3325
  %86 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3326
  %87 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %86, i32 0, i32 11, !dbg !3327
  %88 = load i32, i32* %87, align 4, !dbg !3327
  %89 = call i32 @inotify_rm_watch(i32 %85, i32 %88) #9, !dbg !3328
  br label %90, !dbg !3329

; <label>:90:                                     ; preds = %72, %64
  %91 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3330
  %92 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %91, i32 0, i32 1, !dbg !3332
  %93 = load i64, i64* %92, align 8, !dbg !3332
  %94 = icmp ne i64 %93, -1, !dbg !3333
  br i1 %94, label %95, label %106, !dbg !3334

; <label>:95:                                     ; preds = %90
  %96 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3335
  %97 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %96, i32 0, i32 1, !dbg !3337
  %98 = load i64, i64* %97, align 8, !dbg !3337
  %99 = call i32 @pthread_cancel(i64 %98), !dbg !3338
  %100 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3339
  %101 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %100, i32 0, i32 1, !dbg !3340
  %102 = load i64, i64* %101, align 8, !dbg !3340
  %103 = call i32 @pthread_join(i64 %102, i8** null), !dbg !3341
  %104 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3342
  %105 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %104, i32 0, i32 1, !dbg !3343
  store i64 -1, i64* %105, align 8, !dbg !3344
  br label %106, !dbg !3345

; <label>:106:                                    ; preds = %95, %90
  %107 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3346
  %108 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %107, i32 0, i32 4, !dbg !3347
  %109 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %108) #9, !dbg !3348
  %110 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3349
  call void @__fixup_fd_lists(%struct.lib_data_t* %110), !dbg !3350
  %111 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3351
  %112 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %111, i32 0, i32 4, !dbg !3352
  %113 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %112) #9, !dbg !3353
  %114 = load %struct.lib_data_t*, %struct.lib_data_t** %1, align 8, !dbg !3354
  %115 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %114, i32 0, i32 4, !dbg !3355
  %116 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %115) #9, !dbg !3356
  br label %117, !dbg !3357, !llvm.loop !3358

; <label>:117:                                    ; preds = %106
  %118 = load i32, i32* @_dbg_flag, align 4, !dbg !3359
  %119 = icmp ne i32 %118, 0, !dbg !3359
  br i1 %119, label %120, label %128, !dbg !3359

; <label>:120:                                    ; preds = %117
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3363
  %122 = call i32 @getpid() #9, !dbg !3365
  %123 = call i32 @gettid(), !dbg !3366
  %124 = load %struct.dev_card_t*, %struct.dev_card_t** @s_dev_head, align 8, !dbg !3368
  %125 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !3369
  %126 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !3370
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0), i32 %122, i32 %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 2073, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.libcard_exit, i32 0, i32 0), %struct.dev_card_t* %124, %struct.dev_card_t* %125, %struct.fd_node* %126), !dbg !3371
  br label %128, !dbg !3373

; <label>:128:                                    ; preds = %120, %117
  br label %129, !dbg !3374

; <label>:129:                                    ; preds = %128
  ret void, !dbg !3376
}

declare i32 @pthread_cancel(i64) #4

declare i32 @pthread_join(i64, i8**) #4

; Function Attrs: nounwind
declare i32 @inotify_rm_watch(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @__fixup_fd_lists(%struct.lib_data_t*) #0 !dbg !3377 {
  %2 = alloca %struct.lib_data_t*, align 8
  store %struct.lib_data_t* %0, %struct.lib_data_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %2, metadata !3378, metadata !467), !dbg !3379
  br label %3, !dbg !3380, !llvm.loop !3381

; <label>:3:                                      ; preds = %1
  %4 = load i32, i32* @_dbg_flag, align 4, !dbg !3382
  %5 = icmp ne i32 %4, 0, !dbg !3382
  br i1 %5, label %6, label %17, !dbg !3382

; <label>:6:                                      ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3386
  %8 = call i32 @getpid() #9, !dbg !3388
  %9 = call i32 @gettid(), !dbg !3389
  %10 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3391
  %11 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %10, i32 0, i32 5, !dbg !3392
  %12 = load i32, i32* %11, align 8, !dbg !3392
  %13 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3393
  %14 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %13, i32 0, i32 6, !dbg !3394
  %15 = load i32, i32* %14, align 4, !dbg !3394
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.79, i32 0, i32 0), i32 %8, i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 871, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.__fixup_fd_lists, i32 0, i32 0), i32 %12, i32 %15), !dbg !3395
  br label %17, !dbg !3397

; <label>:17:                                     ; preds = %6, %3
  br label %18, !dbg !3398

; <label>:18:                                     ; preds = %17
  %19 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !3400
  %20 = icmp ne %struct.dev_card_t* %19, null, !dbg !3400
  br i1 %20, label %21, label %24, !dbg !3402

; <label>:21:                                     ; preds = %18
  %22 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3403
  %23 = call i32 @__mhealth_check(%struct.lib_data_t* %22), !dbg !3404
  br label %31, !dbg !3404

; <label>:24:                                     ; preds = %18
  %25 = load %struct.dev_card_t*, %struct.dev_card_t** @s_dev_head, align 8, !dbg !3405
  %26 = icmp ne %struct.dev_card_t* %25, null, !dbg !3405
  br i1 %26, label %27, label %30, !dbg !3407

; <label>:27:                                     ; preds = %24
  %28 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3408
  %29 = call i32 @__shealth_check(%struct.lib_data_t* %28), !dbg !3409
  br label %30, !dbg !3409

; <label>:30:                                     ; preds = %27, %24
  br label %31

; <label>:31:                                     ; preds = %30, %21
  ret void, !dbg !3410
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define void @card_overwrite_slu_id(%struct.card_dev_t*, i64) #0 !dbg !3411 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !3414, metadata !467), !dbg !3415
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3416, metadata !467), !dbg !3417
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3418
  %6 = icmp ne %struct.card_dev_t* %5, null, !dbg !3418
  br i1 %6, label %7, label %11, !dbg !3420

; <label>:7:                                      ; preds = %2
  %8 = load i64, i64* %4, align 8, !dbg !3421
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3422
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 7, !dbg !3423
  store i64 %8, i64* %10, align 8, !dbg !3424
  br label %11, !dbg !3422

; <label>:11:                                     ; preds = %7, %2
  ret void, !dbg !3425
}

; Function Attrs: nounwind uwtable
define void @card_overwrite_app_id(%struct.card_dev_t*, i64) #0 !dbg !3426 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca i64, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !3427, metadata !467), !dbg !3428
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !3429, metadata !467), !dbg !3430
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3431
  %6 = icmp ne %struct.card_dev_t* %5, null, !dbg !3431
  br i1 %6, label %7, label %11, !dbg !3433

; <label>:7:                                      ; preds = %2
  %8 = load i64, i64* %4, align 8, !dbg !3434
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3435
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 8, !dbg !3436
  store i64 %8, i64* %10, align 8, !dbg !3437
  br label %11, !dbg !3435

; <label>:11:                                     ; preds = %7, %2
  ret void, !dbg !3438
}

; Function Attrs: nounwind uwtable
define i64 @card_get_app_id(%struct.card_dev_t*) #0 !dbg !3439 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.card_dev_t*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !3442, metadata !467), !dbg !3443
  %4 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3444
  %5 = icmp ne %struct.card_dev_t* %4, null, !dbg !3444
  br i1 %5, label %6, label %10, !dbg !3446

; <label>:6:                                      ; preds = %1
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3447
  %8 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %7, i32 0, i32 8, !dbg !3448
  %9 = load i64, i64* %8, align 8, !dbg !3448
  store i64 %9, i64* %2, align 8, !dbg !3449
  br label %11, !dbg !3449

; <label>:10:                                     ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !3450
  br label %11, !dbg !3450

; <label>:11:                                     ; preds = %10, %6
  %12 = load i64, i64* %2, align 8, !dbg !3451
  ret i64 %12, !dbg !3451
}

; Function Attrs: nounwind uwtable
define i32 @genwqe_dump_statistics(%struct._IO_FILE*) #0 !dbg !3452 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !3455, metadata !467), !dbg !3456
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3457, metadata !467), !dbg !3458
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3459
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0)), !dbg !3460
  store i32 0, i32* %3, align 4, !dbg !3461
  br label %6, !dbg !3463

; <label>:6:                                      ; preds = %34, %1
  %7 = load i32, i32* %3, align 4, !dbg !3464
  %8 = icmp slt i32 %7, 16, !dbg !3467
  br i1 %8, label %9, label %37, !dbg !3468

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4, !dbg !3469
  %11 = sext i32 %10 to i64, !dbg !3472
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* @card_completed_ddcbs, i64 0, i64 %11, !dbg !3472
  %13 = load i32, i32* %12, align 4, !dbg !3472
  %14 = icmp eq i32 %13, 0, !dbg !3473
  br i1 %14, label %15, label %22, !dbg !3474

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !3475
  %17 = sext i32 %16 to i64, !dbg !3476
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* @card_retried_ddcbs, i64 0, i64 %17, !dbg !3476
  %19 = load i32, i32* %18, align 4, !dbg !3476
  %20 = icmp eq i32 %19, 0, !dbg !3477
  br i1 %20, label %21, label %22, !dbg !3478

; <label>:21:                                     ; preds = %15
  br label %34, !dbg !3480

; <label>:22:                                     ; preds = %15, %9
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !3481
  %24 = load i32, i32* %3, align 4, !dbg !3482
  %25 = load i32, i32* %3, align 4, !dbg !3483
  %26 = sext i32 %25 to i64, !dbg !3484
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* @card_completed_ddcbs, i64 0, i64 %26, !dbg !3484
  %28 = load i32, i32* %27, align 4, !dbg !3484
  %29 = load i32, i32* %3, align 4, !dbg !3485
  %30 = sext i32 %29 to i64, !dbg !3486
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* @card_retried_ddcbs, i64 0, i64 %30, !dbg !3486
  %32 = load i32, i32* %31, align 4, !dbg !3486
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0), i32 %24, i32 %28, i32 %32), !dbg !3487
  br label %34, !dbg !3488

; <label>:34:                                     ; preds = %22, %21
  %35 = load i32, i32* %3, align 4, !dbg !3489
  %36 = add nsw i32 %35, 1, !dbg !3489
  store i32 %36, i32* %3, align 4, !dbg !3489
  br label %6, !dbg !3491, !llvm.loop !3492

; <label>:37:                                     ; preds = %6
  ret i32 0, !dbg !3494
}

; Function Attrs: nounwind uwtable
define internal i32 @__fd_m_get_and_inc(%struct.card_dev_t*, i32*) #0 !dbg !3495 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fd_node*, align 8
  %6 = alloca %struct.fd_node*, align 8
  %7 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !3496, metadata !467), !dbg !3497
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !3498, metadata !467), !dbg !3499
  call void @llvm.dbg.declare(metadata %struct.fd_node** %5, metadata !3500, metadata !467), !dbg !3501
  call void @llvm.dbg.declare(metadata %struct.fd_node** %6, metadata !3502, metadata !467), !dbg !3503
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3504, metadata !467), !dbg !3505
  store i32 -1, i32* %7, align 4, !dbg !3505
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3506
  %9 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %8, i32 0, i32 9, !dbg !3507
  %10 = load %struct.fd_node*, %struct.fd_node** %9, align 8, !dbg !3507
  store %struct.fd_node* %10, %struct.fd_node** %5, align 8, !dbg !3508
  %11 = load %struct.fd_node*, %struct.fd_node** %5, align 8, !dbg !3509
  %12 = icmp ne %struct.fd_node* %11, null, !dbg !3509
  br i1 %12, label %13, label %36, !dbg !3511

; <label>:13:                                     ; preds = %2
  %14 = load %struct.fd_node*, %struct.fd_node** %5, align 8, !dbg !3512
  %15 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %14, i32 0, i32 1, !dbg !3514
  %16 = load i32, i32* %15, align 4, !dbg !3514
  store i32 %16, i32* %7, align 4, !dbg !3515
  %17 = load i32*, i32** %4, align 8, !dbg !3516
  %18 = icmp ne i32* %17, null, !dbg !3516
  br i1 %18, label %19, label %24, !dbg !3518

; <label>:19:                                     ; preds = %13
  %20 = load %struct.fd_node*, %struct.fd_node** %5, align 8, !dbg !3519
  %21 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %20, i32 0, i32 0, !dbg !3520
  %22 = load i32, i32* %21, align 8, !dbg !3520
  %23 = load i32*, i32** %4, align 8, !dbg !3521
  store i32 %22, i32* %23, align 4, !dbg !3522
  br label %24, !dbg !3523

; <label>:24:                                     ; preds = %19, %13
  %25 = load %struct.fd_node*, %struct.fd_node** %5, align 8, !dbg !3524
  %26 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %25, i32 0, i32 2, !dbg !3525
  %27 = load %struct.fd_node*, %struct.fd_node** %26, align 8, !dbg !3525
  store %struct.fd_node* %27, %struct.fd_node** %6, align 8, !dbg !3526
  %28 = load %struct.fd_node*, %struct.fd_node** %6, align 8, !dbg !3527
  %29 = icmp eq %struct.fd_node* null, %28, !dbg !3529
  br i1 %29, label %30, label %32, !dbg !3530

; <label>:30:                                     ; preds = %24
  %31 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !3531
  store %struct.fd_node* %31, %struct.fd_node** %6, align 8, !dbg !3532
  br label %32, !dbg !3533

; <label>:32:                                     ; preds = %30, %24
  %33 = load %struct.fd_node*, %struct.fd_node** %6, align 8, !dbg !3534
  %34 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !3535
  %35 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %34, i32 0, i32 9, !dbg !3536
  store %struct.fd_node* %33, %struct.fd_node** %35, align 8, !dbg !3537
  br label %36, !dbg !3538

; <label>:36:                                     ; preds = %32, %2
  %37 = load i32, i32* %7, align 4, !dbg !3539
  ret i32 %37, !dbg !3540
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.card_dev_t* @__node_create(i32, i32) #0 !dbg !3541 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dev_t*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3544, metadata !467), !dbg !3545
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3546, metadata !467), !dbg !3547
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !3548, metadata !467), !dbg !3549
  %6 = call noalias i8* @malloc(i64 80) #9, !dbg !3550
  %7 = bitcast i8* %6 to %struct.card_dev_t*, !dbg !3550
  store %struct.card_dev_t* %7, %struct.card_dev_t** %5, align 8, !dbg !3551
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3552
  %9 = icmp ne %struct.card_dev_t* %8, null, !dbg !3552
  br i1 %9, label %10, label %38, !dbg !3554

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !3555
  %12 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3557
  %13 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %12, i32 0, i32 0, !dbg !3558
  store i32 %11, i32* %13, align 8, !dbg !3559
  %14 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3560
  %15 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %14, i32 0, i32 1, !dbg !3561
  store i32 0, i32* %15, align 4, !dbg !3562
  %16 = load i32, i32* %4, align 4, !dbg !3563
  %17 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3564
  %18 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %17, i32 0, i32 2, !dbg !3565
  store i32 %16, i32* %18, align 8, !dbg !3566
  %19 = load i32, i32* %4, align 4, !dbg !3567
  %20 = call i32 @__mode_2_omode(i32 %19), !dbg !3568
  %21 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3569
  %22 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %21, i32 0, i32 3, !dbg !3570
  store i32 %20, i32* %22, align 4, !dbg !3571
  %23 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3572
  %24 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %23, i32 0, i32 7, !dbg !3573
  store i64 0, i64* %24, align 8, !dbg !3574
  %25 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3575
  %26 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %25, i32 0, i32 8, !dbg !3576
  store i64 0, i64* %26, align 8, !dbg !3577
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3578
  %28 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %27, i32 0, i32 4, !dbg !3579
  store i32 -1, i32* %28, align 8, !dbg !3580
  %29 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3581
  %30 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %29, i32 0, i32 9, !dbg !3582
  store %struct.fd_node* null, %struct.fd_node** %30, align 8, !dbg !3583
  %31 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3584
  %32 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %31, i32 0, i32 10, !dbg !3585
  store %struct.card_dev_t* null, %struct.card_dev_t** %32, align 8, !dbg !3586
  %33 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3587
  %34 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %33, i32 0, i32 11, !dbg !3588
  store %struct.card_dev_t* null, %struct.card_dev_t** %34, align 8, !dbg !3589
  %35 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3590
  %36 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3591
  %37 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %36, i32 0, i32 12, !dbg !3592
  store %struct.card_dev_t* %35, %struct.card_dev_t** %37, align 8, !dbg !3593
  br label %44, !dbg !3594

; <label>:38:                                     ; preds = %2
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3595
  %40 = call i32 @getpid() #9, !dbg !3596
  %41 = call i32 @gettid(), !dbg !3597
  %42 = load i32, i32* %3, align 4, !dbg !3599
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i32 0, i32 0), i32 %40, i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 502, i32 %42), !dbg !3600
  br label %44

; <label>:44:                                     ; preds = %38, %10
  %45 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !3602
  ret %struct.card_dev_t* %45, !dbg !3603
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @__mode_2_omode(i32) #0 !dbg !3604 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3607, metadata !467), !dbg !3608
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3609, metadata !467), !dbg !3610
  store i32 0, i32* %3, align 4, !dbg !3610
  %4 = load i32, i32* %2, align 4, !dbg !3611
  %5 = and i32 %4, 1, !dbg !3613
  %6 = icmp ne i32 %5, 0, !dbg !3613
  br i1 %6, label %7, label %9, !dbg !3614

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !3615
  store i32 %8, i32* %3, align 4, !dbg !3615
  br label %9, !dbg !3616

; <label>:9:                                      ; preds = %7, %1
  %10 = load i32, i32* %2, align 4, !dbg !3617
  %11 = and i32 %10, 2, !dbg !3619
  %12 = icmp ne i32 %11, 0, !dbg !3619
  br i1 %12, label %13, label %16, !dbg !3620

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %3, align 4, !dbg !3621
  %15 = or i32 %14, 1, !dbg !3621
  store i32 %15, i32* %3, align 4, !dbg !3621
  br label %16, !dbg !3622

; <label>:16:                                     ; preds = %13, %9
  %17 = load i32, i32* %2, align 4, !dbg !3623
  %18 = and i32 %17, 4, !dbg !3625
  %19 = icmp ne i32 %18, 0, !dbg !3625
  br i1 %19, label %20, label %23, !dbg !3626

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %3, align 4, !dbg !3627
  %22 = or i32 %21, 2, !dbg !3627
  store i32 %22, i32* %3, align 4, !dbg !3627
  br label %23, !dbg !3628

; <label>:23:                                     ; preds = %20, %16
  %24 = load i32, i32* %2, align 4, !dbg !3629
  %25 = and i32 %24, 16, !dbg !3631
  %26 = icmp ne i32 %25, 0, !dbg !3631
  br i1 %26, label %27, label %30, !dbg !3632

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %3, align 4, !dbg !3633
  %29 = or i32 %28, 2048, !dbg !3633
  store i32 %29, i32* %3, align 4, !dbg !3633
  br label %30, !dbg !3634

; <label>:30:                                     ; preds = %27, %23
  %31 = load i32, i32* %3, align 4, !dbg !3635
  ret i32 %31, !dbg !3636
}

; Function Attrs: nounwind
declare i32 @sem_init(%union.sem_t*, i32, i32) #2

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @__health_thread(i8*) #0 !dbg !3637 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lib_data_t*, align 8
  %5 = alloca %struct.timespec, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3640, metadata !467), !dbg !3641
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %4, metadata !3642, metadata !467), !dbg !3643
  %6 = load i8*, i8** %3, align 8, !dbg !3644
  %7 = bitcast i8* %6 to %struct.lib_data_t*, !dbg !3645
  store %struct.lib_data_t* %7, %struct.lib_data_t** %4, align 8, !dbg !3643
  br label %8, !dbg !3646

; <label>:8:                                      ; preds = %1, %12
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !3647, metadata !467), !dbg !3649
  %9 = call i32 @clock_gettime(i32 0, %struct.timespec* %5) #9, !dbg !3650
  %10 = icmp eq i32 %9, -1, !dbg !3652
  br i1 %10, label %11, label %12, !dbg !3653

; <label>:11:                                     ; preds = %8
  call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0)), !dbg !3654
  br label %12, !dbg !3654

; <label>:12:                                     ; preds = %11, %8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0, !dbg !3655
  %14 = load i64, i64* %13, align 8, !dbg !3656
  %15 = add nsw i64 %14, 4, !dbg !3656
  store i64 %15, i64* %13, align 8, !dbg !3656
  %16 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !3657
  %17 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %16, i32 0, i32 2, !dbg !3658
  %18 = call i32 @sem_timedwait(%union.sem_t* %17, %struct.timespec* %5), !dbg !3659
  %19 = call i32 @pthread_setcancelstate(i32 1, i32* null), !dbg !3660
  %20 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !3661
  %21 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %20, i32 0, i32 4, !dbg !3662
  %22 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %21) #9, !dbg !3663
  %23 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !3664
  call void @__fixup_fd_lists(%struct.lib_data_t* %23), !dbg !3665
  %24 = load %struct.lib_data_t*, %struct.lib_data_t** %4, align 8, !dbg !3666
  %25 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %24, i32 0, i32 4, !dbg !3667
  %26 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %25) #9, !dbg !3668
  %27 = call i32 @pthread_setcancelstate(i32 0, i32* null), !dbg !3669
  br label %8, !dbg !3670, !llvm.loop !3672
                                                  ; No predecessors!
  %29 = load i8*, i8** %2, align 8, !dbg !3673
  ret i8* %29, !dbg !3673
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) #2

declare void @perror(i8*) #4

declare i32 @sem_timedwait(%union.sem_t*, %struct.timespec*) #4

declare i32 @pthread_setcancelstate(i32, i32*) #4

; Function Attrs: nounwind uwtable
define internal i32 @__m_open_all(%struct.lib_data_t*) #0 !dbg !3674 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lib_data_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent**, align 8
  store %struct.lib_data_t* %0, %struct.lib_data_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %3, metadata !3675, metadata !467), !dbg !3676
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3677, metadata !467), !dbg !3678
  store i32 0, i32* %4, align 4, !dbg !3678
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3679, metadata !467), !dbg !3680
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3681, metadata !467), !dbg !3682
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3683, metadata !467), !dbg !3684
  call void @llvm.dbg.declare(metadata %struct.dirent*** %8, metadata !3685, metadata !467), !dbg !3697
  %9 = call i32 @scandir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), %struct.dirent*** %8, i32 (%struct.dirent*)* @__genwqe_filter, i32 (%struct.dirent**, %struct.dirent**)* null), !dbg !3698
  store i32 %9, i32* %6, align 4, !dbg !3699
  %10 = load i32, i32* %6, align 4, !dbg !3700
  %11 = icmp slt i32 %10, 0, !dbg !3702
  br i1 %11, label %12, label %13, !dbg !3703

; <label>:12:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !3704
  br label %78, !dbg !3704

; <label>:13:                                     ; preds = %1
  br label %14, !dbg !3705

; <label>:14:                                     ; preds = %67, %13
  %15 = load i32, i32* %6, align 4, !dbg !3706
  %16 = add nsw i32 %15, -1, !dbg !3706
  store i32 %16, i32* %6, align 4, !dbg !3706
  %17 = icmp ne i32 %15, 0, !dbg !3708
  br i1 %17, label %18, label %74, !dbg !3708

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %6, align 4, !dbg !3709
  %20 = sext i32 %19 to i64, !dbg !3711
  %21 = load %struct.dirent**, %struct.dirent*** %8, align 8, !dbg !3711
  %22 = getelementptr inbounds %struct.dirent*, %struct.dirent** %21, i64 %20, !dbg !3711
  %23 = load %struct.dirent*, %struct.dirent** %22, align 8, !dbg !3711
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 4, !dbg !3712
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i32 0, i32 0, !dbg !3711
  %26 = call i32 (i8*, i8*, ...) @sscanf(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i32* %5) #9, !dbg !3713
  store i32 %26, i32* %7, align 4, !dbg !3714
  %27 = load i32, i32* %7, align 4, !dbg !3715
  %28 = icmp eq i32 1, %27, !dbg !3717
  br i1 %28, label %29, label %67, !dbg !3718

; <label>:29:                                     ; preds = %18
  %30 = load i32, i32* %5, align 4, !dbg !3719
  %31 = icmp sge i32 %30, 0, !dbg !3721
  br i1 %31, label %32, label %67, !dbg !3722

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %5, align 4, !dbg !3723
  %34 = icmp slt i32 %33, 256, !dbg !3725
  br i1 %34, label %35, label %67, !dbg !3726

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %5, align 4, !dbg !3727
  %37 = sext i32 %36 to i64, !dbg !3729
  %38 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3729
  %39 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %38, i32 0, i32 8, !dbg !3730
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %39, i64 0, i64 %37, !dbg !3729
  %41 = load i32, i32* %40, align 4, !dbg !3729
  switch i32 %41, label %65 [
    i32 0, label %42
    i32 1, label %62
  ], !dbg !3731

; <label>:42:                                     ; preds = %35
  %43 = load i32, i32* %5, align 4, !dbg !3732
  %44 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3735
  %45 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %44, i32 0, i32 7, !dbg !3736
  %46 = load i32, i32* %45, align 8, !dbg !3736
  %47 = call i32 @__m_open_add(i32 %43, i32 %46), !dbg !3737
  %48 = icmp ne i32 %47, 0, !dbg !3737
  br i1 %48, label %49, label %61, !dbg !3738

; <label>:49:                                     ; preds = %42
  %50 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3739
  %51 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %50, i32 0, i32 6, !dbg !3741
  %52 = load i32, i32* %51, align 4, !dbg !3742
  %53 = add nsw i32 %52, 1, !dbg !3742
  store i32 %53, i32* %51, align 4, !dbg !3742
  %54 = load i32, i32* %5, align 4, !dbg !3743
  %55 = sext i32 %54 to i64, !dbg !3744
  %56 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !3744
  %57 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %56, i32 0, i32 8, !dbg !3745
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %57, i64 0, i64 %55, !dbg !3744
  store i32 1, i32* %58, align 4, !dbg !3746
  %59 = load i32, i32* %4, align 4, !dbg !3747
  %60 = add nsw i32 %59, 1, !dbg !3747
  store i32 %60, i32* %4, align 4, !dbg !3747
  br label %61, !dbg !3748

; <label>:61:                                     ; preds = %49, %42
  br label %66, !dbg !3749

; <label>:62:                                     ; preds = %35
  %63 = load i32, i32* %4, align 4, !dbg !3750
  %64 = add nsw i32 %63, 1, !dbg !3750
  store i32 %64, i32* %4, align 4, !dbg !3750
  br label %66, !dbg !3751

; <label>:65:                                     ; preds = %35
  br label %66, !dbg !3752

; <label>:66:                                     ; preds = %65, %62, %61
  br label %67, !dbg !3753

; <label>:67:                                     ; preds = %66, %32, %29, %18
  %68 = load i32, i32* %6, align 4, !dbg !3754
  %69 = sext i32 %68 to i64, !dbg !3755
  %70 = load %struct.dirent**, %struct.dirent*** %8, align 8, !dbg !3755
  %71 = getelementptr inbounds %struct.dirent*, %struct.dirent** %70, i64 %69, !dbg !3755
  %72 = load %struct.dirent*, %struct.dirent** %71, align 8, !dbg !3755
  %73 = bitcast %struct.dirent* %72 to i8*, !dbg !3755
  call void @free(i8* %73) #9, !dbg !3756
  br label %14, !dbg !3757, !llvm.loop !3759

; <label>:74:                                     ; preds = %14
  %75 = load %struct.dirent**, %struct.dirent*** %8, align 8, !dbg !3760
  %76 = bitcast %struct.dirent** %75 to i8*, !dbg !3760
  call void @free(i8* %76) #9, !dbg !3761
  %77 = load i32, i32* %4, align 4, !dbg !3762
  store i32 %77, i32* %2, align 4, !dbg !3763
  br label %78, !dbg !3763

; <label>:78:                                     ; preds = %74, %12
  %79 = load i32, i32* %2, align 4, !dbg !3764
  ret i32 %79, !dbg !3764
}

; Function Attrs: nounwind uwtable
define internal i32 @__fd_m_head(%struct.card_dev_t*) #0 !dbg !3765 {
  %2 = alloca %struct.card_dev_t*, align 8
  %3 = alloca %struct.fd_node*, align 8
  %4 = alloca i32, align 4
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !3766, metadata !467), !dbg !3767
  call void @llvm.dbg.declare(metadata %struct.fd_node** %3, metadata !3768, metadata !467), !dbg !3769
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3770, metadata !467), !dbg !3771
  store i32 -1, i32* %4, align 4, !dbg !3771
  %5 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !3772
  store %struct.fd_node* %5, %struct.fd_node** %3, align 8, !dbg !3773
  %6 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !3774
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3775
  %8 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %7, i32 0, i32 9, !dbg !3776
  store %struct.fd_node* %6, %struct.fd_node** %8, align 8, !dbg !3777
  %9 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !3778
  %10 = icmp ne %struct.fd_node* %9, null, !dbg !3778
  br i1 %10, label %11, label %15, !dbg !3780

; <label>:11:                                     ; preds = %1
  %12 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !3781
  %13 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %12, i32 0, i32 1, !dbg !3782
  %14 = load i32, i32* %13, align 4, !dbg !3782
  store i32 %14, i32* %4, align 4, !dbg !3783
  br label %15, !dbg !3784

; <label>:15:                                     ; preds = %11, %1
  br label %16, !dbg !3785, !llvm.loop !3786

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* @_dbg_flag, align 4, !dbg !3787
  %18 = icmp ne i32 %17, 0, !dbg !3787
  br i1 %18, label %19, label %26, !dbg !3787

; <label>:19:                                     ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3791
  %21 = call i32 @getpid() #9, !dbg !3793
  %22 = call i32 @gettid(), !dbg !3794
  %23 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !3796
  %24 = load i32, i32* %4, align 4, !dbg !3797
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.67, i32 0, i32 0), i32 %21, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 366, %struct.fd_node* %23, i32 %24), !dbg !3798
  br label %26, !dbg !3800

; <label>:26:                                     ; preds = %19, %16
  br label %27, !dbg !3801

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %4, align 4, !dbg !3803
  ret i32 %28, !dbg !3804
}

; Function Attrs: nounwind uwtable
define internal void @__card_get_app(%struct.card_dev_t*) #0 !dbg !3805 {
  %2 = alloca %struct.card_dev_t*, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %2, metadata !3808, metadata !467), !dbg !3809
  %3 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3810
  %4 = call i64 @genwqe_card_read_reg64(%struct.card_dev_t* %3, i32 0, i32* null), !dbg !3811
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3812
  %6 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %5, i32 0, i32 7, !dbg !3813
  store i64 %4, i64* %6, align 8, !dbg !3814
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3815
  %8 = call i64 @genwqe_card_read_reg64(%struct.card_dev_t* %7, i32 33554432, i32* null), !dbg !3816
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %2, align 8, !dbg !3817
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 8, !dbg !3818
  store i64 %8, i64* %10, align 8, !dbg !3819
  ret void, !dbg !3820
}

; Function Attrs: nounwind uwtable
define internal void @__inotify_create(%struct.lib_data_t*) #0 !dbg !3821 {
  %2 = alloca %struct.lib_data_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lib_data_t* %0, %struct.lib_data_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %2, metadata !3822, metadata !467), !dbg !3823
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3824, metadata !467), !dbg !3825
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3826, metadata !467), !dbg !3827
  %5 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3828
  %6 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %5, i32 0, i32 13, !dbg !3830
  %7 = load i64, i64* %6, align 8, !dbg !3830
  %8 = icmp ne i64 -1, %7, !dbg !3831
  br i1 %8, label %9, label %10, !dbg !3832

; <label>:9:                                      ; preds = %1
  br label %54, !dbg !3833

; <label>:10:                                     ; preds = %1
  %11 = call i32 @inotify_init() #9, !dbg !3834
  store i32 %11, i32* %3, align 4, !dbg !3835
  %12 = load i32, i32* %3, align 4, !dbg !3836
  %13 = icmp slt i32 %12, 0, !dbg !3838
  br i1 %13, label %14, label %21, !dbg !3839

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3840
  %16 = call i32 @getpid() #9, !dbg !3842
  %17 = call i32 @gettid(), !dbg !3843
  %18 = call i32* @__errno_location() #1, !dbg !3845
  %19 = load i32, i32* %18, align 4, !dbg !3847
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.68, i32 0, i32 0), i32 %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 849, i32 %19), !dbg !3848
  br label %54, !dbg !3850

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %3, align 4, !dbg !3851
  %23 = call i32 @inotify_add_watch(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 4) #9, !dbg !3852
  store i32 %23, i32* %4, align 4, !dbg !3853
  %24 = load i32, i32* %4, align 4, !dbg !3854
  %25 = icmp slt i32 %24, 0, !dbg !3856
  br i1 %25, label %26, label %33, !dbg !3857

; <label>:26:                                     ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3858
  %28 = call i32 @getpid() #9, !dbg !3860
  %29 = call i32 @gettid(), !dbg !3861
  %30 = call i32* @__errno_location() #1, !dbg !3863
  %31 = load i32, i32* %30, align 4, !dbg !3865
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.69, i32 0, i32 0), i32 %28, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 855, i32 %31), !dbg !3866
  br label %54, !dbg !3868

; <label>:33:                                     ; preds = %21
  %34 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3869
  %35 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %34, i32 0, i32 14, !dbg !3870
  store i32 0, i32* %35, align 8, !dbg !3871
  %36 = load i32, i32* %3, align 4, !dbg !3872
  %37 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3873
  %38 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %37, i32 0, i32 10, !dbg !3874
  store i32 %36, i32* %38, align 8, !dbg !3875
  %39 = load i32, i32* %4, align 4, !dbg !3876
  %40 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3877
  %41 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %40, i32 0, i32 11, !dbg !3878
  store i32 %39, i32* %41, align 4, !dbg !3879
  %42 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3880
  %43 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %42, i32 0, i32 13, !dbg !3882
  %44 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !3883
  %45 = bitcast %struct.lib_data_t* %44 to i8*, !dbg !3883
  %46 = call i32 @pthread_create(i64* %43, %union.pthread_attr_t* null, i8* (i8*)* @__inotify_thread, i8* %45) #9, !dbg !3884
  %47 = icmp eq i32 0, %46, !dbg !3885
  br i1 %47, label %48, label %49, !dbg !3886

; <label>:48:                                     ; preds = %33
  br label %54, !dbg !3887

; <label>:49:                                     ; preds = %33
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3888
  %51 = call i32 @getpid() #9, !dbg !3889
  %52 = call i32 @gettid(), !dbg !3890
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i32 0, i32 0), i32 %51, i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 864, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.__inotify_create, i32 0, i32 0)), !dbg !3892
  br label %54, !dbg !3894

; <label>:54:                                     ; preds = %49, %48, %26, %14, %9
  ret void, !dbg !3895
}

declare i32 @scandir(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (%struct.dirent**, %struct.dirent**)*) #4

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_filter(%struct.dirent*) #0 !dbg !3896 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirent*, align 8
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent** %3, metadata !3901, metadata !467), !dbg !3902
  %4 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !3903
  %5 = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4, !dbg !3905
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0, !dbg !3903
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i64 6) #10, !dbg !3906
  %8 = icmp eq i32 0, %7, !dbg !3907
  br i1 %8, label %9, label %10, !dbg !3908

; <label>:9:                                      ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !3909
  br label %11, !dbg !3909

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !3910
  br label %11, !dbg !3910

; <label>:11:                                     ; preds = %10, %9
  %12 = load i32, i32* %2, align 4, !dbg !3911
  ret i32 %12, !dbg !3911
}

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @__m_open_add(i32, i32) #0 !dbg !3912 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3915, metadata !467), !dbg !3916
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3917, metadata !467), !dbg !3918
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3919, metadata !467), !dbg !3920
  %7 = load i32, i32* %4, align 4, !dbg !3921
  %8 = load i32, i32* %5, align 4, !dbg !3922
  %9 = call i32 @__genwqe_dev_open(i32 %7, i32 %8), !dbg !3923
  store i32 %9, i32* %6, align 4, !dbg !3924
  %10 = load i32, i32* %6, align 4, !dbg !3925
  %11 = icmp ne i32 -1, %10, !dbg !3927
  br i1 %11, label %12, label %15, !dbg !3928

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %6, align 4, !dbg !3929
  %14 = load i32, i32* %4, align 4, !dbg !3931
  call void @__fd_m_add(i32 %13, i32 %14), !dbg !3932
  store i32 1, i32* %3, align 4, !dbg !3933
  br label %16, !dbg !3933

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !3934
  br label %16, !dbg !3934

; <label>:16:                                     ; preds = %15, %12
  %17 = load i32, i32* %3, align 4, !dbg !3935
  ret i32 %17, !dbg !3935
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: nounwind uwtable
define internal i32 @__genwqe_dev_open(i32, i32) #0 !dbg !3936 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3937, metadata !467), !dbg !3938
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3939, metadata !467), !dbg !3940
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3941, metadata !467), !dbg !3942
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3943, metadata !467), !dbg !3944
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !3945, metadata !467), !dbg !3946
  %9 = load i32, i32* %5, align 4, !dbg !3947
  %10 = call i32 @__mode_2_omode(i32 %9), !dbg !3948
  store i32 %10, i32* %7, align 4, !dbg !3949
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !3950
  %12 = load i32, i32* %4, align 4, !dbg !3951
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i32 %12) #9, !dbg !3952
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !3953
  %15 = load i32, i32* %7, align 4, !dbg !3954
  %16 = call i32 (i8*, i32, ...) @open(i8* %14, i32 %15), !dbg !3955
  store i32 %16, i32* %6, align 4, !dbg !3956
  %17 = load i32, i32* %6, align 4, !dbg !3957
  %18 = icmp slt i32 %17, 0, !dbg !3959
  br i1 %18, label %19, label %20, !dbg !3960

; <label>:19:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !3961
  br label %36, !dbg !3961

; <label>:20:                                     ; preds = %2
  br label %21, !dbg !3962, !llvm.loop !3963

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* @_dbg_flag, align 4, !dbg !3964
  %23 = icmp ne i32 %22, 0, !dbg !3964
  br i1 %23, label %24, label %33, !dbg !3964

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3968
  %26 = call i32 @getpid() #9, !dbg !3970
  %27 = call i32 @gettid(), !dbg !3971
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !3973
  %29 = load i32, i32* %6, align 4, !dbg !3974
  %30 = load i32, i32* %7, align 4, !dbg !3975
  %31 = load i32, i32* %5, align 4, !dbg !3976
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.65, i32 0, i32 0), i32 %26, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 268, i8* %28, i32 %29, i32 %30, i32 %31), !dbg !3977
  br label %33, !dbg !3979

; <label>:33:                                     ; preds = %24, %21
  br label %34, !dbg !3980

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %6, align 4, !dbg !3982
  store i32 %35, i32* %3, align 4, !dbg !3983
  br label %36, !dbg !3983

; <label>:36:                                     ; preds = %34, %19
  %37 = load i32, i32* %3, align 4, !dbg !3984
  ret i32 %37, !dbg !3984
}

; Function Attrs: nounwind uwtable
define internal void @__fd_m_add(i32, i32) #0 !dbg !3985 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd_node*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3988, metadata !467), !dbg !3989
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3990, metadata !467), !dbg !3991
  call void @llvm.dbg.declare(metadata %struct.fd_node** %5, metadata !3992, metadata !467), !dbg !3993
  %6 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !3994
  %7 = icmp eq %struct.fd_node* null, %6, !dbg !3996
  br i1 %7, label %8, label %12, !dbg !3997

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4, !dbg !3998
  %10 = load i32, i32* %4, align 4, !dbg !4000
  %11 = call %struct.fd_node* @__fd_m_new(%struct.fd_node* null, i32 %9, i32 %10), !dbg !4001
  store %struct.fd_node* %11, %struct.fd_node** @__fd_m_list, align 8, !dbg !4002
  call void @__fd_m_head_all(), !dbg !4003
  br label %28, !dbg !4004

; <label>:12:                                     ; preds = %2
  %13 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !4005
  store %struct.fd_node* %13, %struct.fd_node** %5, align 8, !dbg !4007
  br label %14, !dbg !4008

; <label>:14:                                     ; preds = %19, %12
  %15 = load %struct.fd_node*, %struct.fd_node** %5, align 8, !dbg !4009
  %16 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %15, i32 0, i32 2, !dbg !4011
  %17 = load %struct.fd_node*, %struct.fd_node** %16, align 8, !dbg !4011
  %18 = icmp ne %struct.fd_node* null, %17, !dbg !4012
  br i1 %18, label %19, label %23, !dbg !4013

; <label>:19:                                     ; preds = %14
  %20 = load %struct.fd_node*, %struct.fd_node** %5, align 8, !dbg !4014
  %21 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %20, i32 0, i32 2, !dbg !4015
  %22 = load %struct.fd_node*, %struct.fd_node** %21, align 8, !dbg !4015
  store %struct.fd_node* %22, %struct.fd_node** %5, align 8, !dbg !4016
  br label %14, !dbg !4017, !llvm.loop !4019

; <label>:23:                                     ; preds = %14
  %24 = load %struct.fd_node*, %struct.fd_node** %5, align 8, !dbg !4020
  %25 = load i32, i32* %3, align 4, !dbg !4021
  %26 = load i32, i32* %4, align 4, !dbg !4022
  %27 = call %struct.fd_node* @__fd_m_new(%struct.fd_node* %24, i32 %25, i32 %26), !dbg !4023
  br label %28

; <label>:28:                                     ; preds = %23, %8
  ret void, !dbg !4024
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.fd_node* @__fd_m_new(%struct.fd_node*, i32, i32) #0 !dbg !4025 {
  %4 = alloca %struct.fd_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fd_node*, align 8
  store %struct.fd_node* %0, %struct.fd_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.fd_node** %4, metadata !4028, metadata !467), !dbg !4029
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4030, metadata !467), !dbg !4031
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4032, metadata !467), !dbg !4033
  call void @llvm.dbg.declare(metadata %struct.fd_node** %7, metadata !4034, metadata !467), !dbg !4035
  %8 = call noalias i8* @malloc(i64 24) #9, !dbg !4036
  %9 = bitcast i8* %8 to %struct.fd_node*, !dbg !4036
  store %struct.fd_node* %9, %struct.fd_node** %7, align 8, !dbg !4037
  %10 = load %struct.fd_node*, %struct.fd_node** %7, align 8, !dbg !4038
  %11 = icmp ne %struct.fd_node* %10, null, !dbg !4038
  br i1 %11, label %12, label %31, !dbg !4040

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %5, align 4, !dbg !4041
  %14 = load %struct.fd_node*, %struct.fd_node** %7, align 8, !dbg !4043
  %15 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %14, i32 0, i32 1, !dbg !4044
  store i32 %13, i32* %15, align 4, !dbg !4045
  %16 = load i32, i32* %6, align 4, !dbg !4046
  %17 = load %struct.fd_node*, %struct.fd_node** %7, align 8, !dbg !4047
  %18 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %17, i32 0, i32 0, !dbg !4048
  store i32 %16, i32* %18, align 8, !dbg !4049
  %19 = load %struct.fd_node*, %struct.fd_node** %7, align 8, !dbg !4050
  %20 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %19, i32 0, i32 2, !dbg !4051
  store %struct.fd_node* null, %struct.fd_node** %20, align 8, !dbg !4052
  %21 = load %struct.fd_node*, %struct.fd_node** %4, align 8, !dbg !4053
  %22 = load %struct.fd_node*, %struct.fd_node** %7, align 8, !dbg !4054
  %23 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %22, i32 0, i32 3, !dbg !4055
  store %struct.fd_node* %21, %struct.fd_node** %23, align 8, !dbg !4056
  %24 = load %struct.fd_node*, %struct.fd_node** %4, align 8, !dbg !4057
  %25 = icmp ne %struct.fd_node* %24, null, !dbg !4057
  br i1 %25, label %26, label %30, !dbg !4059

; <label>:26:                                     ; preds = %12
  %27 = load %struct.fd_node*, %struct.fd_node** %7, align 8, !dbg !4060
  %28 = load %struct.fd_node*, %struct.fd_node** %4, align 8, !dbg !4061
  %29 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %28, i32 0, i32 2, !dbg !4062
  store %struct.fd_node* %27, %struct.fd_node** %29, align 8, !dbg !4063
  br label %30, !dbg !4061

; <label>:30:                                     ; preds = %26, %12
  br label %36, !dbg !4064

; <label>:31:                                     ; preds = %3
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4065
  %33 = call i32 @getpid() #9, !dbg !4067
  %34 = call i32 @gettid(), !dbg !4068
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.66, i32 0, i32 0), i32 %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 285), !dbg !4070
  br label %36

; <label>:36:                                     ; preds = %31, %30
  %37 = load %struct.fd_node*, %struct.fd_node** %7, align 8, !dbg !4072
  ret %struct.fd_node* %37, !dbg !4073
}

; Function Attrs: nounwind uwtable
define internal void @__fd_m_head_all() #0 !dbg !4074 {
  %1 = alloca %struct.card_dev_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %1, metadata !4075, metadata !467), !dbg !4076
  %2 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !4077
  %3 = bitcast %struct.dev_card_t* %2 to %struct.card_dev_t*, !dbg !4078
  store %struct.card_dev_t* %3, %struct.card_dev_t** %1, align 8, !dbg !4076
  br label %4, !dbg !4079

; <label>:4:                                      ; preds = %7, %0
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %1, align 8, !dbg !4080
  %6 = icmp ne %struct.card_dev_t* %5, null, !dbg !4082
  br i1 %6, label %7, label %14, !dbg !4082

; <label>:7:                                      ; preds = %4
  %8 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !4083
  %9 = load %struct.card_dev_t*, %struct.card_dev_t** %1, align 8, !dbg !4085
  %10 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %9, i32 0, i32 9, !dbg !4086
  store %struct.fd_node* %8, %struct.fd_node** %10, align 8, !dbg !4087
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %1, align 8, !dbg !4088
  %12 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %11, i32 0, i32 10, !dbg !4089
  %13 = load %struct.card_dev_t*, %struct.card_dev_t** %12, align 8, !dbg !4089
  store %struct.card_dev_t* %13, %struct.card_dev_t** %1, align 8, !dbg !4090
  br label %4, !dbg !4091, !llvm.loop !4093

; <label>:14:                                     ; preds = %4
  ret void, !dbg !4094
}

; Function Attrs: nounwind
declare i32 @inotify_init() #2

; Function Attrs: nounwind
declare i32 @inotify_add_watch(i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @__inotify_thread(i8*) #0 !dbg !4095 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lib_data_t*, align 8
  %7 = alloca [4112 x i8], align 16
  %8 = alloca %struct.fd_set, align 8
  %9 = alloca %struct.__sigset_t, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4096, metadata !467), !dbg !4097
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4098, metadata !467), !dbg !4099
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4100, metadata !467), !dbg !4101
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %6, metadata !4102, metadata !467), !dbg !4103
  %12 = load i8*, i8** %3, align 8, !dbg !4104
  %13 = bitcast i8* %12 to %struct.lib_data_t*, !dbg !4105
  store %struct.lib_data_t* %13, %struct.lib_data_t** %6, align 8, !dbg !4103
  call void @llvm.dbg.declare(metadata [4112 x i8]* %7, metadata !4106, metadata !467), !dbg !4110
  call void @llvm.dbg.declare(metadata %struct.fd_set* %8, metadata !4111, metadata !467), !dbg !4117
  call void @llvm.dbg.declare(metadata %struct.__sigset_t* %9, metadata !4118, metadata !467), !dbg !4126
  br label %14, !dbg !4127

; <label>:14:                                     ; preds = %1, %66
  br label %15, !dbg !4128, !llvm.loop !4130

; <label>:15:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4131, metadata !467), !dbg !4133
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4134, metadata !467), !dbg !4135
  %16 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0, !dbg !4136
  %17 = getelementptr inbounds [16 x i64], [16 x i64]* %16, i64 0, i64 0, !dbg !4138
  %18 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %17) #9, !dbg !4139, !srcloc !4140
  %19 = extractvalue { i64, i64* } %18, 0, !dbg !4139
  %20 = extractvalue { i64, i64* } %18, 1, !dbg !4139
  %21 = trunc i64 %19 to i32, !dbg !4139
  store i32 %21, i32* %10, align 4, !dbg !4139
  %22 = ptrtoint i64* %20 to i64, !dbg !4139
  %23 = trunc i64 %22 to i32, !dbg !4139
  store i32 %23, i32* %11, align 4, !dbg !4139
  br label %24, !dbg !4141

; <label>:24:                                     ; preds = %15
  %25 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4142
  %26 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %25, i32 0, i32 10, !dbg !4143
  %27 = load i32, i32* %26, align 8, !dbg !4143
  %28 = srem i32 %27, 64, !dbg !4144
  %29 = zext i32 %28 to i64, !dbg !4145
  %30 = shl i64 1, %29, !dbg !4145
  %31 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4142
  %32 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %31, i32 0, i32 10, !dbg !4143
  %33 = load i32, i32* %32, align 8, !dbg !4143
  %34 = sdiv i32 %33, 64, !dbg !4144
  %35 = sext i32 %34 to i64, !dbg !4146
  %36 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0, !dbg !4147
  %37 = getelementptr inbounds [16 x i64], [16 x i64]* %36, i64 0, i64 %35, !dbg !4146
  %38 = load i64, i64* %37, align 8, !dbg !4148
  %39 = or i64 %38, %30, !dbg !4148
  store i64 %39, i64* %37, align 8, !dbg !4148
  %40 = call i32 @pselect(i32 1024, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* null, %struct.timespec* null, %struct.__sigset_t* %9), !dbg !4149
  store i32 %40, i32* %5, align 4, !dbg !4150
  %41 = load i32, i32* %5, align 4, !dbg !4151
  %42 = icmp sgt i32 %41, 0, !dbg !4153
  br i1 %42, label %43, label %59, !dbg !4154

; <label>:43:                                     ; preds = %24
  %44 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4155
  %45 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %44, i32 0, i32 10, !dbg !4157
  %46 = load i32, i32* %45, align 8, !dbg !4157
  %47 = getelementptr inbounds [4112 x i8], [4112 x i8]* %7, i32 0, i32 0, !dbg !4158
  %48 = call i64 @read(i32 %46, i8* %47, i64 4112), !dbg !4159
  %49 = trunc i64 %48 to i32, !dbg !4159
  store i32 %49, i32* %4, align 4, !dbg !4160
  %50 = load i32, i32* %4, align 4, !dbg !4161
  %51 = icmp eq i32 -1, %50, !dbg !4163
  br i1 %51, label %52, label %55, !dbg !4164

; <label>:52:                                     ; preds = %43
  %53 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4165
  %54 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %53, i32 0, i32 9, !dbg !4167
  store i32 100, i32* %54, align 4, !dbg !4168
  br label %67, !dbg !4169

; <label>:55:                                     ; preds = %43
  %56 = load i32, i32* %4, align 4, !dbg !4170
  %57 = getelementptr inbounds [4112 x i8], [4112 x i8]* %7, i32 0, i32 0, !dbg !4171
  %58 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4172
  call void @__inotify_handle_event(i32 %56, i8* %57, %struct.lib_data_t* %58), !dbg !4173
  br label %66, !dbg !4174

; <label>:59:                                     ; preds = %24
  %60 = load i32, i32* %5, align 4, !dbg !4175
  %61 = icmp slt i32 %60, 0, !dbg !4178
  br i1 %61, label %62, label %65, !dbg !4179

; <label>:62:                                     ; preds = %59
  %63 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4180
  %64 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %63, i32 0, i32 9, !dbg !4182
  store i32 200, i32* %64, align 4, !dbg !4183
  br label %67, !dbg !4184

; <label>:65:                                     ; preds = %59
  br label %66

; <label>:66:                                     ; preds = %65, %55
  br label %14, !dbg !4185, !llvm.loop !4187

; <label>:67:                                     ; preds = %62, %52
  br label %68, !dbg !4188, !llvm.loop !4189

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* @_dbg_flag, align 4, !dbg !4190
  %70 = icmp ne i32 %69, 0, !dbg !4190
  br i1 %70, label %71, label %82, !dbg !4190

; <label>:71:                                     ; preds = %68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4194
  %73 = call i32 @getpid() #9, !dbg !4196
  %74 = call i32 @gettid(), !dbg !4197
  %75 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4199
  %76 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %75, i32 0, i32 10, !dbg !4200
  %77 = load i32, i32* %76, align 8, !dbg !4200
  %78 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4201
  %79 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %78, i32 0, i32 11, !dbg !4202
  %80 = load i32, i32* %79, align 4, !dbg !4202
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.71, i32 0, i32 0), i32 %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 832, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.__inotify_thread, i32 0, i32 0), i32 %77, i32 %80), !dbg !4203
  br label %82, !dbg !4205

; <label>:82:                                     ; preds = %71, %68
  br label %83, !dbg !4206

; <label>:83:                                     ; preds = %82
  %84 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4208
  %85 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %84, i32 0, i32 9, !dbg !4209
  %86 = bitcast i32* %85 to i8*, !dbg !4210
  call void @pthread_exit(i8* %86) #11, !dbg !4211
  unreachable, !dbg !4211
                                                  ; No predecessors!
  %88 = load i8*, i8** %2, align 8, !dbg !4212
  ret i8* %88, !dbg !4212
}

declare i32 @pselect(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timespec*, %struct.__sigset_t*) #4

; Function Attrs: nounwind uwtable
define internal void @__inotify_handle_event(i32, i8*, %struct.lib_data_t*) #0 !dbg !4213 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lib_data_t*, align 8
  %7 = alloca %struct.inotify_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4216, metadata !467), !dbg !4217
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4218, metadata !467), !dbg !4219
  store %struct.lib_data_t* %2, %struct.lib_data_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %6, metadata !4220, metadata !467), !dbg !4221
  call void @llvm.dbg.declare(metadata %struct.inotify_event** %7, metadata !4222, metadata !467), !dbg !4223
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4224, metadata !467), !dbg !4225
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4226, metadata !467), !dbg !4227
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4228, metadata !467), !dbg !4229
  store i32 0, i32* %8, align 4, !dbg !4230
  br label %11, !dbg !4231, !llvm.loop !4232

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* @_dbg_flag, align 4, !dbg !4233
  %13 = icmp ne i32 %12, 0, !dbg !4233
  br i1 %13, label %14, label %20, !dbg !4233

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4237
  %16 = call i32 @getpid() #9, !dbg !4239
  %17 = call i32 @gettid(), !dbg !4240
  %18 = load i32, i32* %4, align 4, !dbg !4242
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.72, i32 0, i32 0), i32 %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 748, i32 %18), !dbg !4243
  br label %20, !dbg !4245

; <label>:20:                                     ; preds = %14, %11
  br label %21, !dbg !4246

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !4248

; <label>:22:                                     ; preds = %82, %21
  %23 = load i32, i32* %8, align 4, !dbg !4249
  %24 = load i32, i32* %4, align 4, !dbg !4251
  %25 = icmp slt i32 %23, %24, !dbg !4252
  br i1 %25, label %26, label %92, !dbg !4253

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %8, align 4, !dbg !4254
  %28 = sext i32 %27 to i64, !dbg !4256
  %29 = load i8*, i8** %5, align 8, !dbg !4256
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !4256
  %31 = bitcast i8* %30 to %struct.inotify_event*, !dbg !4257
  store %struct.inotify_event* %31, %struct.inotify_event** %7, align 8, !dbg !4258
  %32 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !4259
  %33 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %32, i32 0, i32 1, !dbg !4261
  %34 = load i32, i32* %33, align 4, !dbg !4261
  %35 = and i32 %34, 4, !dbg !4262
  %36 = icmp ne i32 %35, 0, !dbg !4262
  br i1 %36, label %37, label %82, !dbg !4263

; <label>:37:                                     ; preds = %26
  %38 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !4264
  %39 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %38, i32 0, i32 3, !dbg !4266
  %40 = load i32, i32* %39, align 4, !dbg !4266
  %41 = icmp ugt i32 %40, 0, !dbg !4267
  br i1 %41, label %42, label %82, !dbg !4268

; <label>:42:                                     ; preds = %37
  %43 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !4269
  %44 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %43, i32 0, i32 4, !dbg !4271
  %45 = getelementptr inbounds [0 x i8], [0 x i8]* %44, i32 0, i32 0, !dbg !4269
  %46 = call i32 (i8*, i8*, ...) @sscanf(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32* %9) #9, !dbg !4272
  store i32 %46, i32* %10, align 4, !dbg !4273
  %47 = load i32, i32* %10, align 4, !dbg !4274
  %48 = icmp eq i32 1, %47, !dbg !4276
  br i1 %48, label %49, label %81, !dbg !4277

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %9, align 4, !dbg !4278
  %51 = sext i32 %50 to i64, !dbg !4281
  %52 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4281
  %53 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %52, i32 0, i32 8, !dbg !4282
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %53, i64 0, i64 %51, !dbg !4281
  %55 = load i32, i32* %54, align 4, !dbg !4281
  %56 = icmp eq i32 0, %55, !dbg !4283
  br i1 %56, label %57, label %80, !dbg !4284

; <label>:57:                                     ; preds = %49
  %58 = load i32, i32* %9, align 4, !dbg !4285
  %59 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4287
  %60 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %59, i32 0, i32 12, !dbg !4288
  store i32 %58, i32* %60, align 8, !dbg !4289
  %61 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4290
  %62 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %61, i32 0, i32 14, !dbg !4291
  store i32 1, i32* %62, align 8, !dbg !4292
  %63 = call i32 @usleep(i32 50000), !dbg !4293
  br label %64, !dbg !4294, !llvm.loop !4295

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* @_dbg_flag, align 4, !dbg !4296
  %66 = icmp ne i32 %65, 0, !dbg !4296
  br i1 %66, label %67, label %75, !dbg !4296

; <label>:67:                                     ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4300
  %69 = call i32 @getpid() #9, !dbg !4302
  %70 = call i32 @gettid(), !dbg !4303
  %71 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !4305
  %72 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %71, i32 0, i32 4, !dbg !4306
  %73 = getelementptr inbounds [0 x i8], [0 x i8]* %72, i32 0, i32 0, !dbg !4305
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.74, i32 0, i32 0), i32 %69, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 772, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__inotify_handle_event, i32 0, i32 0), i8* %73), !dbg !4307
  br label %75, !dbg !4309

; <label>:75:                                     ; preds = %67, %64
  br label %76, !dbg !4310

; <label>:76:                                     ; preds = %75
  %77 = load %struct.lib_data_t*, %struct.lib_data_t** %6, align 8, !dbg !4312
  %78 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %77, i32 0, i32 2, !dbg !4313
  %79 = call i32 @sem_post(%union.sem_t* %78) #9, !dbg !4314
  br label %80, !dbg !4315

; <label>:80:                                     ; preds = %76, %49
  br label %81, !dbg !4316

; <label>:81:                                     ; preds = %80, %42
  br label %82, !dbg !4317

; <label>:82:                                     ; preds = %81, %37, %26
  %83 = load %struct.inotify_event*, %struct.inotify_event** %7, align 8, !dbg !4318
  %84 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %83, i32 0, i32 3, !dbg !4319
  %85 = load i32, i32* %84, align 4, !dbg !4319
  %86 = zext i32 %85 to i64, !dbg !4318
  %87 = add i64 16, %86, !dbg !4320
  %88 = load i32, i32* %8, align 4, !dbg !4321
  %89 = sext i32 %88 to i64, !dbg !4321
  %90 = add i64 %89, %87, !dbg !4321
  %91 = trunc i64 %90 to i32, !dbg !4321
  store i32 %91, i32* %8, align 4, !dbg !4321
  br label %22, !dbg !4322, !llvm.loop !4324

; <label>:92:                                     ; preds = %22
  ret void, !dbg !4325
}

; Function Attrs: noreturn
declare void @pthread_exit(i8*) #8

declare i32 @usleep(i32) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind uwtable
define internal i32 @__mhealth_check(%struct.lib_data_t*) #0 !dbg !4326 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lib_data_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.card_dev_t*, align 8
  %7 = alloca %struct.card_dev_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd_node*, align 8
  %11 = alloca %struct.fd_node*, align 8
  store %struct.lib_data_t* %0, %struct.lib_data_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %3, metadata !4327, metadata !467), !dbg !4328
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4329, metadata !467), !dbg !4330
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4331, metadata !467), !dbg !4332
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %6, metadata !4333, metadata !467), !dbg !4334
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %7, metadata !4335, metadata !467), !dbg !4336
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4337, metadata !467), !dbg !4338
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4339, metadata !467), !dbg !4340
  call void @llvm.dbg.declare(metadata %struct.fd_node** %10, metadata !4341, metadata !467), !dbg !4342
  call void @llvm.dbg.declare(metadata %struct.fd_node** %11, metadata !4343, metadata !467), !dbg !4344
  br label %12, !dbg !4345, !llvm.loop !4346

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* @_dbg_flag, align 4, !dbg !4347
  %14 = icmp ne i32 %13, 0, !dbg !4347
  br i1 %14, label %15, label %23, !dbg !4347

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4351
  %17 = call i32 @getpid() #9, !dbg !4353
  %18 = call i32 @gettid(), !dbg !4354
  %19 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4356
  %20 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %19, i32 0, i32 6, !dbg !4357
  %21 = load i32, i32* %20, align 4, !dbg !4357
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.80, i32 0, i32 0), i32 %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 622, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__mhealth_check, i32 0, i32 0), i32 %21), !dbg !4358
  br label %23, !dbg !4360

; <label>:23:                                     ; preds = %15, %12
  br label %24, !dbg !4361

; <label>:24:                                     ; preds = %23
  %25 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4363
  call void @__inotify_handle(%struct.lib_data_t* %25), !dbg !4364
  %26 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !4365
  %27 = bitcast %struct.dev_card_t* %26 to %struct.card_dev_t*, !dbg !4366
  store %struct.card_dev_t* %27, %struct.card_dev_t** %6, align 8, !dbg !4367
  br label %28, !dbg !4368

; <label>:28:                                     ; preds = %55, %24
  %29 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !4369
  %30 = icmp ne %struct.card_dev_t* %29, null, !dbg !4371
  br i1 %30, label %31, label %57, !dbg !4371

; <label>:31:                                     ; preds = %28
  %32 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !4372
  %33 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %32, i32 0, i32 10, !dbg !4374
  %34 = load %struct.card_dev_t*, %struct.card_dev_t** %33, align 8, !dbg !4374
  store %struct.card_dev_t* %34, %struct.card_dev_t** %7, align 8, !dbg !4375
  br label %35, !dbg !4376, !llvm.loop !4377

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* @_dbg_flag, align 4, !dbg !4378
  %37 = icmp ne i32 %36, 0, !dbg !4378
  br i1 %37, label %38, label %47, !dbg !4378

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4382
  %40 = call i32 @getpid() #9, !dbg !4384
  %41 = call i32 @gettid(), !dbg !4385
  %42 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !4387
  %43 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !4388
  %44 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %43, i32 0, i32 1, !dbg !4389
  %45 = load i32, i32* %44, align 4, !dbg !4389
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.81, i32 0, i32 0), i32 %40, i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 631, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__mhealth_check, i32 0, i32 0), %struct.card_dev_t* %42, i32 %45), !dbg !4390
  br label %47, !dbg !4392

; <label>:47:                                     ; preds = %38, %35
  br label %48, !dbg !4393

; <label>:48:                                     ; preds = %47
  %49 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !4395
  %50 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %49, i32 0, i32 1, !dbg !4397
  %51 = load i32, i32* %50, align 4, !dbg !4397
  %52 = icmp eq i32 2, %51, !dbg !4398
  br i1 %52, label %53, label %55, !dbg !4399

; <label>:53:                                     ; preds = %48
  %54 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !4400
  call void @__node_delete(%struct.card_dev_t* %54, i8** bitcast (%struct.dev_card_t** @m_dev_head to i8**)), !dbg !4401
  br label %55, !dbg !4401

; <label>:55:                                     ; preds = %53, %48
  %56 = load %struct.card_dev_t*, %struct.card_dev_t** %7, align 8, !dbg !4402
  store %struct.card_dev_t* %56, %struct.card_dev_t** %6, align 8, !dbg !4403
  br label %28, !dbg !4404, !llvm.loop !4406

; <label>:57:                                     ; preds = %28
  %58 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !4407
  %59 = icmp eq %struct.dev_card_t* null, %58, !dbg !4409
  br i1 %59, label %60, label %115, !dbg !4410

; <label>:60:                                     ; preds = %57
  %61 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !4411
  store %struct.fd_node* %61, %struct.fd_node** %10, align 8, !dbg !4413
  br label %62, !dbg !4414

; <label>:62:                                     ; preds = %87, %60
  %63 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4415
  %64 = icmp ne %struct.fd_node* %63, null, !dbg !4417
  br i1 %64, label %65, label %101, !dbg !4417

; <label>:65:                                     ; preds = %62
  %66 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4418
  %67 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %66, i32 0, i32 2, !dbg !4420
  %68 = load %struct.fd_node*, %struct.fd_node** %67, align 8, !dbg !4420
  store %struct.fd_node* %68, %struct.fd_node** %11, align 8, !dbg !4421
  %69 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4422
  %70 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %69, i32 0, i32 0, !dbg !4423
  %71 = load i32, i32* %70, align 8, !dbg !4423
  store i32 %71, i32* %5, align 4, !dbg !4424
  %72 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4425
  %73 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %72, i32 0, i32 1, !dbg !4426
  %74 = load i32, i32* %73, align 4, !dbg !4426
  store i32 %74, i32* %4, align 4, !dbg !4427
  br label %75, !dbg !4428, !llvm.loop !4429

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* @_dbg_flag, align 4, !dbg !4430
  %77 = icmp ne i32 %76, 0, !dbg !4430
  br i1 %77, label %78, label %86, !dbg !4430

; <label>:78:                                     ; preds = %75
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4434
  %80 = call i32 @getpid() #9, !dbg !4436
  %81 = call i32 @gettid(), !dbg !4437
  %82 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4439
  %83 = load i32, i32* %5, align 4, !dbg !4440
  %84 = load i32, i32* %4, align 4, !dbg !4441
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.82, i32 0, i32 0), i32 %80, i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 646, %struct.fd_node* %82, i32 %83, i32 %84), !dbg !4442
  br label %86, !dbg !4441

; <label>:86:                                     ; preds = %78, %75
  br label %87, !dbg !4444

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %4, align 4, !dbg !4446
  %89 = call i32 @close(i32 %88), !dbg !4447
  %90 = load i32, i32* %5, align 4, !dbg !4448
  %91 = sext i32 %90 to i64, !dbg !4449
  %92 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4449
  %93 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %92, i32 0, i32 8, !dbg !4450
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %93, i64 0, i64 %91, !dbg !4449
  store i32 0, i32* %94, align 4, !dbg !4451
  %95 = load i32, i32* %4, align 4, !dbg !4452
  call void @__fd_m_del(i32 %95), !dbg !4453
  %96 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4454
  %97 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %96, i32 0, i32 6, !dbg !4455
  %98 = load i32, i32* %97, align 4, !dbg !4456
  %99 = add nsw i32 %98, -1, !dbg !4456
  store i32 %99, i32* %97, align 4, !dbg !4456
  %100 = load %struct.fd_node*, %struct.fd_node** %11, align 8, !dbg !4457
  store %struct.fd_node* %100, %struct.fd_node** %10, align 8, !dbg !4458
  br label %62, !dbg !4459, !llvm.loop !4461

; <label>:101:                                    ; preds = %62
  br label %102, !dbg !4462, !llvm.loop !4463

; <label>:102:                                    ; preds = %101
  %103 = load i32, i32* @_dbg_flag, align 4, !dbg !4464
  %104 = icmp ne i32 %103, 0, !dbg !4464
  br i1 %104, label %105, label %113, !dbg !4464

; <label>:105:                                    ; preds = %102
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4468
  %107 = call i32 @getpid() #9, !dbg !4470
  %108 = call i32 @gettid(), !dbg !4471
  %109 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4473
  %110 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %109, i32 0, i32 6, !dbg !4474
  %111 = load i32, i32* %110, align 4, !dbg !4474
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.83, i32 0, i32 0), i32 %107, i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 654, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__mhealth_check, i32 0, i32 0), i32 %111), !dbg !4475
  br label %113, !dbg !4477

; <label>:113:                                    ; preds = %105, %102
  br label %114, !dbg !4478

; <label>:114:                                    ; preds = %113
  store i32 0, i32* %2, align 4, !dbg !4480
  br label %192, !dbg !4480

; <label>:115:                                    ; preds = %57
  %116 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !4481
  store %struct.fd_node* %116, %struct.fd_node** %10, align 8, !dbg !4482
  br label %117, !dbg !4483

; <label>:117:                                    ; preds = %170, %115
  %118 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4484
  %119 = icmp ne %struct.fd_node* %118, null, !dbg !4485
  br i1 %119, label %120, label %172, !dbg !4485

; <label>:120:                                    ; preds = %117
  %121 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4486
  %122 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %121, i32 0, i32 2, !dbg !4488
  %123 = load %struct.fd_node*, %struct.fd_node** %122, align 8, !dbg !4488
  store %struct.fd_node* %123, %struct.fd_node** %11, align 8, !dbg !4489
  %124 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4490
  %125 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %124, i32 0, i32 1, !dbg !4491
  %126 = load i32, i32* %125, align 4, !dbg !4491
  store i32 %126, i32* %4, align 4, !dbg !4492
  %127 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4493
  %128 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %127, i32 0, i32 0, !dbg !4494
  %129 = load i32, i32* %128, align 8, !dbg !4494
  store i32 %129, i32* %5, align 4, !dbg !4495
  %130 = load i32, i32* %5, align 4, !dbg !4496
  %131 = sext i32 %130 to i64, !dbg !4497
  %132 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4497
  %133 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %132, i32 0, i32 8, !dbg !4498
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %133, i64 0, i64 %131, !dbg !4497
  %135 = load i32, i32* %134, align 4, !dbg !4497
  store i32 %135, i32* %9, align 4, !dbg !4499
  %136 = load i32, i32* %9, align 4, !dbg !4500
  %137 = icmp eq i32 1, %136, !dbg !4502
  br i1 %137, label %138, label %170, !dbg !4503

; <label>:138:                                    ; preds = %120
  %139 = load i32, i32* %4, align 4, !dbg !4504
  %140 = call i32 @__genwqe_card_get_state(i32 %139, i32* %8), !dbg !4506
  %141 = load i32, i32* %8, align 4, !dbg !4507
  %142 = icmp ne i32 1, %141, !dbg !4509
  br i1 %142, label %143, label %169, !dbg !4510

; <label>:143:                                    ; preds = %138
  br label %144, !dbg !4511, !llvm.loop !4513

; <label>:144:                                    ; preds = %143
  %145 = load i32, i32* @_dbg_flag, align 4, !dbg !4514
  %146 = icmp ne i32 %145, 0, !dbg !4514
  br i1 %146, label %147, label %155, !dbg !4514

; <label>:147:                                    ; preds = %144
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4518
  %149 = call i32 @getpid() #9, !dbg !4520
  %150 = call i32 @gettid(), !dbg !4521
  %151 = load %struct.fd_node*, %struct.fd_node** %10, align 8, !dbg !4523
  %152 = load i32, i32* %5, align 4, !dbg !4524
  %153 = load i32, i32* %4, align 4, !dbg !4525
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.84, i32 0, i32 0), i32 %149, i32 %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 669, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__mhealth_check, i32 0, i32 0), %struct.fd_node* %151, i32 %152, i32 %153), !dbg !4526
  br label %155, !dbg !4528

; <label>:155:                                    ; preds = %147, %144
  br label %156, !dbg !4529

; <label>:156:                                    ; preds = %155
  %157 = load i32, i32* %4, align 4, !dbg !4531
  call void @__fd_m_del(i32 %157), !dbg !4532
  call void @__fd_m_head_all(), !dbg !4533
  %158 = load i32, i32* %4, align 4, !dbg !4534
  %159 = call i32 @close(i32 %158), !dbg !4535
  %160 = load i32, i32* %5, align 4, !dbg !4536
  %161 = sext i32 %160 to i64, !dbg !4537
  %162 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4537
  %163 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %162, i32 0, i32 8, !dbg !4538
  %164 = getelementptr inbounds [256 x i32], [256 x i32]* %163, i64 0, i64 %161, !dbg !4537
  store i32 0, i32* %164, align 4, !dbg !4539
  %165 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4540
  %166 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %165, i32 0, i32 6, !dbg !4541
  %167 = load i32, i32* %166, align 4, !dbg !4542
  %168 = add nsw i32 %167, -1, !dbg !4542
  store i32 %168, i32* %166, align 4, !dbg !4542
  br label %169, !dbg !4543

; <label>:169:                                    ; preds = %156, %138
  br label %170, !dbg !4544

; <label>:170:                                    ; preds = %169, %120
  %171 = load %struct.fd_node*, %struct.fd_node** %11, align 8, !dbg !4545
  store %struct.fd_node* %171, %struct.fd_node** %10, align 8, !dbg !4546
  br label %117, !dbg !4547, !llvm.loop !4548

; <label>:172:                                    ; preds = %117
  br label %173, !dbg !4549, !llvm.loop !4550

; <label>:173:                                    ; preds = %172
  %174 = load i32, i32* @_dbg_flag, align 4, !dbg !4551
  %175 = icmp ne i32 %174, 0, !dbg !4551
  br i1 %175, label %176, label %186, !dbg !4551

; <label>:176:                                    ; preds = %173
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4555
  %178 = call i32 @getpid() #9, !dbg !4557
  %179 = call i32 @gettid(), !dbg !4558
  %180 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !4560
  %181 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !4561
  %182 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4562
  %183 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %182, i32 0, i32 6, !dbg !4563
  %184 = load i32, i32* %183, align 4, !dbg !4563
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.85, i32 0, i32 0), i32 %178, i32 %179, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 682, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__mhealth_check, i32 0, i32 0), %struct.dev_card_t* %180, %struct.fd_node* %181, i32 %184), !dbg !4564
  br label %186, !dbg !4566

; <label>:186:                                    ; preds = %176, %173
  br label %187, !dbg !4567

; <label>:187:                                    ; preds = %186
  %188 = load %struct.dev_card_t*, %struct.dev_card_t** @m_dev_head, align 8, !dbg !4569
  %189 = icmp ne %struct.dev_card_t* %188, null, !dbg !4569
  br i1 %189, label %190, label %191, !dbg !4571

; <label>:190:                                    ; preds = %187
  store i32 1, i32* %2, align 4, !dbg !4572
  br label %192, !dbg !4572

; <label>:191:                                    ; preds = %187
  store i32 0, i32* %2, align 4, !dbg !4573
  br label %192, !dbg !4573

; <label>:192:                                    ; preds = %191, %190, %114
  %193 = load i32, i32* %2, align 4, !dbg !4574
  ret i32 %193, !dbg !4574
}

; Function Attrs: nounwind uwtable
define internal i32 @__shealth_check(%struct.lib_data_t*) #0 !dbg !4575 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lib_data_t*, align 8
  %4 = alloca %struct.card_dev_t*, align 8
  %5 = alloca %struct.card_dev_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lib_data_t* %0, %struct.lib_data_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %3, metadata !4576, metadata !467), !dbg !4577
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %4, metadata !4578, metadata !467), !dbg !4579
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %5, metadata !4580, metadata !467), !dbg !4581
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4582, metadata !467), !dbg !4583
  call void @llvm.dbg.declare(metadata i32* %7, metadata !4584, metadata !467), !dbg !4585
  %8 = load %struct.dev_card_t*, %struct.dev_card_t** @s_dev_head, align 8, !dbg !4586
  %9 = bitcast %struct.dev_card_t* %8 to %struct.card_dev_t*, !dbg !4587
  store %struct.card_dev_t* %9, %struct.card_dev_t** %4, align 8, !dbg !4588
  br label %10, !dbg !4589

; <label>:10:                                     ; preds = %69, %1
  %11 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4590
  %12 = icmp ne %struct.card_dev_t* %11, null, !dbg !4592
  br i1 %12, label %13, label %71, !dbg !4592

; <label>:13:                                     ; preds = %10
  %14 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4593
  %15 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %14, i32 0, i32 10, !dbg !4595
  %16 = load %struct.card_dev_t*, %struct.card_dev_t** %15, align 8, !dbg !4595
  store %struct.card_dev_t* %16, %struct.card_dev_t** %5, align 8, !dbg !4596
  %17 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4597
  %18 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %17, i32 0, i32 4, !dbg !4598
  %19 = load i32, i32* %18, align 8, !dbg !4598
  store i32 %19, i32* %7, align 4, !dbg !4599
  br label %20, !dbg !4600, !llvm.loop !4601

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* @_dbg_flag, align 4, !dbg !4602
  %22 = icmp ne i32 %21, 0, !dbg !4602
  br i1 %22, label %23, label %33, !dbg !4602

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4606
  %25 = call i32 @getpid() #9, !dbg !4608
  %26 = call i32 @gettid(), !dbg !4609
  %27 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4611
  %28 = load i32, i32* %7, align 4, !dbg !4612
  %29 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4613
  %30 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %29, i32 0, i32 1, !dbg !4614
  %31 = load i32, i32* %30, align 4, !dbg !4614
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.90, i32 0, i32 0), i32 %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 705, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__shealth_check, i32 0, i32 0), %struct.card_dev_t* %27, i32 %28, i32 %31), !dbg !4615
  br label %33, !dbg !4617

; <label>:33:                                     ; preds = %23, %20
  br label %34, !dbg !4618

; <label>:34:                                     ; preds = %33
  %35 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4620
  %36 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %35, i32 0, i32 1, !dbg !4622
  %37 = load i32, i32* %36, align 4, !dbg !4622
  %38 = icmp eq i32 2, %37, !dbg !4623
  br i1 %38, label %39, label %51, !dbg !4624

; <label>:39:                                     ; preds = %34
  %40 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4625
  call void @__node_delete(%struct.card_dev_t* %40, i8** bitcast (%struct.dev_card_t** @s_dev_head to i8**)), !dbg !4627
  %41 = load i32, i32* %7, align 4, !dbg !4628
  %42 = icmp ne i32 -1, %41, !dbg !4630
  br i1 %42, label %43, label %50, !dbg !4631

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %7, align 4, !dbg !4632
  %45 = call i32 @close(i32 %44), !dbg !4634
  %46 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4635
  %47 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %46, i32 0, i32 5, !dbg !4636
  %48 = load i32, i32* %47, align 8, !dbg !4637
  %49 = add nsw i32 %48, -1, !dbg !4637
  store i32 %49, i32* %47, align 8, !dbg !4637
  br label %50, !dbg !4638

; <label>:50:                                     ; preds = %43, %39
  br label %69, !dbg !4639

; <label>:51:                                     ; preds = %34
  %52 = load i32, i32* %7, align 4, !dbg !4640
  %53 = icmp ne i32 -1, %52, !dbg !4643
  br i1 %53, label %54, label %68, !dbg !4644

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %7, align 4, !dbg !4645
  %56 = call i32 @__genwqe_card_get_state(i32 %55, i32* %6), !dbg !4647
  %57 = load i32, i32* %6, align 4, !dbg !4648
  %58 = icmp ne i32 1, %57, !dbg !4650
  br i1 %58, label %59, label %67, !dbg !4651

; <label>:59:                                     ; preds = %54
  %60 = load %struct.card_dev_t*, %struct.card_dev_t** %4, align 8, !dbg !4652
  call void @__node_delete(%struct.card_dev_t* %60, i8** bitcast (%struct.dev_card_t** @s_dev_head to i8**)), !dbg !4654
  %61 = load i32, i32* %7, align 4, !dbg !4655
  %62 = call i32 @close(i32 %61), !dbg !4656
  %63 = load %struct.lib_data_t*, %struct.lib_data_t** %3, align 8, !dbg !4657
  %64 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %63, i32 0, i32 5, !dbg !4658
  %65 = load i32, i32* %64, align 8, !dbg !4659
  %66 = add nsw i32 %65, -1, !dbg !4659
  store i32 %66, i32* %64, align 8, !dbg !4659
  br label %67, !dbg !4660

; <label>:67:                                     ; preds = %59, %54
  br label %68, !dbg !4661

; <label>:68:                                     ; preds = %67, %51
  br label %69

; <label>:69:                                     ; preds = %68, %50
  %70 = load %struct.card_dev_t*, %struct.card_dev_t** %5, align 8, !dbg !4662
  store %struct.card_dev_t* %70, %struct.card_dev_t** %4, align 8, !dbg !4663
  br label %10, !dbg !4664, !llvm.loop !4666

; <label>:71:                                     ; preds = %10
  %72 = load %struct.dev_card_t*, %struct.dev_card_t** @s_dev_head, align 8, !dbg !4667
  %73 = icmp ne %struct.dev_card_t* %72, null, !dbg !4667
  br i1 %73, label %74, label %75, !dbg !4669

; <label>:74:                                     ; preds = %71
  store i32 1, i32* %2, align 4, !dbg !4670
  br label %76, !dbg !4670

; <label>:75:                                     ; preds = %71
  store i32 0, i32* %2, align 4, !dbg !4671
  br label %76, !dbg !4671

; <label>:76:                                     ; preds = %75, %74
  %77 = load i32, i32* %2, align 4, !dbg !4672
  ret i32 %77, !dbg !4672
}

; Function Attrs: nounwind uwtable
define internal void @__inotify_handle(%struct.lib_data_t*) #0 !dbg !4673 {
  %2 = alloca %struct.lib_data_t*, align 8
  %3 = alloca i32, align 4
  store %struct.lib_data_t* %0, %struct.lib_data_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.lib_data_t** %2, metadata !4674, metadata !467), !dbg !4675
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4676, metadata !467), !dbg !4677
  %4 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !4678
  %5 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %4, i32 0, i32 14, !dbg !4680
  %6 = load i32, i32* %5, align 8, !dbg !4680
  %7 = icmp eq i32 1, %6, !dbg !4681
  br i1 %7, label %8, label %53, !dbg !4682

; <label>:8:                                      ; preds = %1
  %9 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !4683
  %10 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %9, i32 0, i32 12, !dbg !4685
  %11 = load i32, i32* %10, align 8, !dbg !4685
  store i32 %11, i32* %3, align 4, !dbg !4686
  br label %12, !dbg !4687, !llvm.loop !4688

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* @_dbg_flag, align 4, !dbg !4689
  %14 = icmp ne i32 %13, 0, !dbg !4689
  br i1 %14, label %15, label %21, !dbg !4689

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4693
  %17 = call i32 @getpid() #9, !dbg !4695
  %18 = call i32 @gettid(), !dbg !4696
  %19 = load i32, i32* %3, align 4, !dbg !4698
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.86, i32 0, i32 0), i32 %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 603, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.__inotify_handle, i32 0, i32 0), i32 %19), !dbg !4699
  br label %21, !dbg !4701

; <label>:21:                                     ; preds = %15, %12
  br label %22, !dbg !4702

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %3, align 4, !dbg !4704
  %24 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !4706
  %25 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %24, i32 0, i32 7, !dbg !4707
  %26 = load i32, i32* %25, align 8, !dbg !4707
  %27 = call i32 @__m_open_add(i32 %23, i32 %26), !dbg !4708
  %28 = icmp ne i32 %27, 0, !dbg !4708
  br i1 %28, label %29, label %52, !dbg !4709

; <label>:29:                                     ; preds = %22
  br label %30, !dbg !4710, !llvm.loop !4712

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* @_dbg_flag, align 4, !dbg !4713
  %32 = icmp ne i32 %31, 0, !dbg !4713
  br i1 %32, label %33, label %39, !dbg !4713

; <label>:33:                                     ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4717
  %35 = call i32 @getpid() #9, !dbg !4719
  %36 = call i32 @gettid(), !dbg !4720
  %37 = load i32, i32* %3, align 4, !dbg !4722
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.87, i32 0, i32 0), i32 %35, i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 605, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.__inotify_handle, i32 0, i32 0), i32 %37), !dbg !4723
  br label %39, !dbg !4725

; <label>:39:                                     ; preds = %33, %30
  br label %40, !dbg !4726

; <label>:40:                                     ; preds = %39
  %41 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !4728
  %42 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %41, i32 0, i32 6, !dbg !4729
  %43 = load i32, i32* %42, align 4, !dbg !4730
  %44 = add nsw i32 %43, 1, !dbg !4730
  store i32 %44, i32* %42, align 4, !dbg !4730
  %45 = load i32, i32* %3, align 4, !dbg !4731
  %46 = sext i32 %45 to i64, !dbg !4732
  %47 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !4732
  %48 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %47, i32 0, i32 8, !dbg !4733
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %48, i64 0, i64 %46, !dbg !4732
  store i32 1, i32* %49, align 4, !dbg !4734
  %50 = load %struct.lib_data_t*, %struct.lib_data_t** %2, align 8, !dbg !4735
  %51 = getelementptr inbounds %struct.lib_data_t, %struct.lib_data_t* %50, i32 0, i32 14, !dbg !4736
  store i32 0, i32* %51, align 8, !dbg !4737
  br label %52, !dbg !4738

; <label>:52:                                     ; preds = %40, %22
  br label %53, !dbg !4739

; <label>:53:                                     ; preds = %52, %1
  ret void, !dbg !4740
}

; Function Attrs: nounwind uwtable
define internal void @__node_delete(%struct.card_dev_t*, i8**) #0 !dbg !4741 {
  %3 = alloca %struct.card_dev_t*, align 8
  %4 = alloca i8**, align 8
  store %struct.card_dev_t* %0, %struct.card_dev_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.card_dev_t** %3, metadata !4744, metadata !467), !dbg !4745
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !4746, metadata !467), !dbg !4747
  %5 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4748
  %6 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %5, i32 0, i32 12, !dbg !4750
  %7 = load %struct.card_dev_t*, %struct.card_dev_t** %6, align 8, !dbg !4750
  %8 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4751
  %9 = icmp ne %struct.card_dev_t* %7, %8, !dbg !4752
  br i1 %9, label %10, label %16, !dbg !4753

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4754
  %12 = call i32 @getpid() #9, !dbg !4756
  %13 = call i32 @gettid(), !dbg !4757
  %14 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4759
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.88, i32 0, i32 0), i32 %12, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 545, %struct.card_dev_t* %14), !dbg !4760
  br label %75, !dbg !4762

; <label>:16:                                     ; preds = %2
  %17 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4763
  %18 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %17, i32 0, i32 1, !dbg !4764
  store i32 3, i32* %18, align 4, !dbg !4765
  %19 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4766
  %20 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %19, i32 0, i32 10, !dbg !4768
  %21 = load %struct.card_dev_t*, %struct.card_dev_t** %20, align 8, !dbg !4768
  %22 = icmp eq %struct.card_dev_t* null, %21, !dbg !4769
  br i1 %22, label %23, label %30, !dbg !4770

; <label>:23:                                     ; preds = %16
  %24 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4771
  %25 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %24, i32 0, i32 11, !dbg !4773
  %26 = load %struct.card_dev_t*, %struct.card_dev_t** %25, align 8, !dbg !4773
  %27 = icmp eq %struct.card_dev_t* null, %26, !dbg !4774
  br i1 %27, label %28, label %30, !dbg !4775

; <label>:28:                                     ; preds = %23
  %29 = load i8**, i8*** %4, align 8, !dbg !4776
  store i8* null, i8** %29, align 8, !dbg !4778
  br label %72, !dbg !4779

; <label>:30:                                     ; preds = %23, %16
  %31 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4780
  %32 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %31, i32 0, i32 10, !dbg !4783
  %33 = load %struct.card_dev_t*, %struct.card_dev_t** %32, align 8, !dbg !4783
  %34 = icmp eq %struct.card_dev_t* null, %33, !dbg !4784
  br i1 %34, label %35, label %40, !dbg !4785

; <label>:35:                                     ; preds = %30
  %36 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4786
  %37 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %36, i32 0, i32 11, !dbg !4788
  %38 = load %struct.card_dev_t*, %struct.card_dev_t** %37, align 8, !dbg !4788
  %39 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %38, i32 0, i32 10, !dbg !4789
  store %struct.card_dev_t* null, %struct.card_dev_t** %39, align 8, !dbg !4790
  br label %71, !dbg !4791

; <label>:40:                                     ; preds = %30
  %41 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4792
  %42 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %41, i32 0, i32 11, !dbg !4795
  %43 = load %struct.card_dev_t*, %struct.card_dev_t** %42, align 8, !dbg !4795
  %44 = icmp eq %struct.card_dev_t* null, %43, !dbg !4796
  br i1 %44, label %45, label %55, !dbg !4797

; <label>:45:                                     ; preds = %40
  %46 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4798
  %47 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %46, i32 0, i32 10, !dbg !4800
  %48 = load %struct.card_dev_t*, %struct.card_dev_t** %47, align 8, !dbg !4800
  %49 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %48, i32 0, i32 11, !dbg !4801
  store %struct.card_dev_t* null, %struct.card_dev_t** %49, align 8, !dbg !4802
  %50 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4803
  %51 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %50, i32 0, i32 10, !dbg !4804
  %52 = load %struct.card_dev_t*, %struct.card_dev_t** %51, align 8, !dbg !4804
  %53 = bitcast %struct.card_dev_t* %52 to i8*, !dbg !4805
  %54 = load i8**, i8*** %4, align 8, !dbg !4806
  store i8* %53, i8** %54, align 8, !dbg !4807
  br label %70, !dbg !4808

; <label>:55:                                     ; preds = %40
  %56 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4809
  %57 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %56, i32 0, i32 10, !dbg !4811
  %58 = load %struct.card_dev_t*, %struct.card_dev_t** %57, align 8, !dbg !4811
  %59 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4812
  %60 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %59, i32 0, i32 11, !dbg !4813
  %61 = load %struct.card_dev_t*, %struct.card_dev_t** %60, align 8, !dbg !4813
  %62 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %61, i32 0, i32 10, !dbg !4814
  store %struct.card_dev_t* %58, %struct.card_dev_t** %62, align 8, !dbg !4815
  %63 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4816
  %64 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %63, i32 0, i32 11, !dbg !4817
  %65 = load %struct.card_dev_t*, %struct.card_dev_t** %64, align 8, !dbg !4817
  %66 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4818
  %67 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %66, i32 0, i32 10, !dbg !4819
  %68 = load %struct.card_dev_t*, %struct.card_dev_t** %67, align 8, !dbg !4819
  %69 = getelementptr inbounds %struct.card_dev_t, %struct.card_dev_t* %68, i32 0, i32 11, !dbg !4820
  store %struct.card_dev_t* %65, %struct.card_dev_t** %69, align 8, !dbg !4821
  br label %70

; <label>:70:                                     ; preds = %55, %45
  br label %71

; <label>:71:                                     ; preds = %70, %35
  br label %72

; <label>:72:                                     ; preds = %71, %28
  %73 = load %struct.card_dev_t*, %struct.card_dev_t** %3, align 8, !dbg !4822
  %74 = bitcast %struct.card_dev_t* %73 to i8*, !dbg !4822
  call void @free(i8* %74) #9, !dbg !4823
  br label %75, !dbg !4824

; <label>:75:                                     ; preds = %72, %10
  ret void, !dbg !4825
}

; Function Attrs: nounwind uwtable
define internal void @__fd_m_del(i32) #0 !dbg !4827 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fd_node*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4828, metadata !467), !dbg !4829
  call void @llvm.dbg.declare(metadata %struct.fd_node** %3, metadata !4830, metadata !467), !dbg !4831
  %4 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !4832
  store %struct.fd_node* %4, %struct.fd_node** %3, align 8, !dbg !4831
  br label %5, !dbg !4833

; <label>:5:                                      ; preds = %68, %1
  %6 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4834
  %7 = icmp ne %struct.fd_node* %6, null, !dbg !4836
  br i1 %7, label %8, label %72, !dbg !4836

; <label>:8:                                      ; preds = %5
  %9 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4837
  %10 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %9, i32 0, i32 1, !dbg !4840
  %11 = load i32, i32* %10, align 4, !dbg !4840
  %12 = load i32, i32* %2, align 4, !dbg !4841
  %13 = icmp eq i32 %11, %12, !dbg !4842
  br i1 %13, label %14, label %68, !dbg !4843

; <label>:14:                                     ; preds = %8
  %15 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4844
  %16 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %15, i32 0, i32 2, !dbg !4847
  %17 = load %struct.fd_node*, %struct.fd_node** %16, align 8, !dbg !4847
  %18 = icmp eq %struct.fd_node* null, %17, !dbg !4848
  br i1 %18, label %19, label %25, !dbg !4849

; <label>:19:                                     ; preds = %14
  %20 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4850
  %21 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %20, i32 0, i32 3, !dbg !4852
  %22 = load %struct.fd_node*, %struct.fd_node** %21, align 8, !dbg !4852
  %23 = icmp eq %struct.fd_node* null, %22, !dbg !4853
  br i1 %23, label %24, label %25, !dbg !4854

; <label>:24:                                     ; preds = %19
  store %struct.fd_node* null, %struct.fd_node** @__fd_m_list, align 8, !dbg !4855
  br label %65, !dbg !4857

; <label>:25:                                     ; preds = %19, %14
  %26 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4858
  %27 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %26, i32 0, i32 2, !dbg !4861
  %28 = load %struct.fd_node*, %struct.fd_node** %27, align 8, !dbg !4861
  %29 = icmp eq %struct.fd_node* null, %28, !dbg !4862
  br i1 %29, label %30, label %35, !dbg !4863

; <label>:30:                                     ; preds = %25
  %31 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4864
  %32 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %31, i32 0, i32 3, !dbg !4866
  %33 = load %struct.fd_node*, %struct.fd_node** %32, align 8, !dbg !4866
  %34 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %33, i32 0, i32 2, !dbg !4867
  store %struct.fd_node* null, %struct.fd_node** %34, align 8, !dbg !4868
  br label %64, !dbg !4869

; <label>:35:                                     ; preds = %25
  %36 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4870
  %37 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %36, i32 0, i32 3, !dbg !4873
  %38 = load %struct.fd_node*, %struct.fd_node** %37, align 8, !dbg !4873
  %39 = icmp eq %struct.fd_node* null, %38, !dbg !4874
  br i1 %39, label %40, label %48, !dbg !4875

; <label>:40:                                     ; preds = %35
  %41 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4876
  %42 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %41, i32 0, i32 2, !dbg !4878
  %43 = load %struct.fd_node*, %struct.fd_node** %42, align 8, !dbg !4878
  %44 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %43, i32 0, i32 3, !dbg !4879
  store %struct.fd_node* null, %struct.fd_node** %44, align 8, !dbg !4880
  %45 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4881
  %46 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %45, i32 0, i32 2, !dbg !4882
  %47 = load %struct.fd_node*, %struct.fd_node** %46, align 8, !dbg !4882
  store %struct.fd_node* %47, %struct.fd_node** @__fd_m_list, align 8, !dbg !4883
  br label %63, !dbg !4884

; <label>:48:                                     ; preds = %35
  %49 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4885
  %50 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %49, i32 0, i32 2, !dbg !4887
  %51 = load %struct.fd_node*, %struct.fd_node** %50, align 8, !dbg !4887
  %52 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4888
  %53 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %52, i32 0, i32 3, !dbg !4889
  %54 = load %struct.fd_node*, %struct.fd_node** %53, align 8, !dbg !4889
  %55 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %54, i32 0, i32 2, !dbg !4890
  store %struct.fd_node* %51, %struct.fd_node** %55, align 8, !dbg !4891
  %56 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4892
  %57 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %56, i32 0, i32 3, !dbg !4893
  %58 = load %struct.fd_node*, %struct.fd_node** %57, align 8, !dbg !4893
  %59 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4894
  %60 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %59, i32 0, i32 2, !dbg !4895
  %61 = load %struct.fd_node*, %struct.fd_node** %60, align 8, !dbg !4895
  %62 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %61, i32 0, i32 3, !dbg !4896
  store %struct.fd_node* %58, %struct.fd_node** %62, align 8, !dbg !4897
  br label %63

; <label>:63:                                     ; preds = %48, %40
  br label %64

; <label>:64:                                     ; preds = %63, %30
  br label %65

; <label>:65:                                     ; preds = %64, %24
  %66 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4898
  %67 = bitcast %struct.fd_node* %66 to i8*, !dbg !4898
  call void @free(i8* %67) #9, !dbg !4899
  br label %79, !dbg !4900

; <label>:68:                                     ; preds = %8
  %69 = load %struct.fd_node*, %struct.fd_node** %3, align 8, !dbg !4901
  %70 = getelementptr inbounds %struct.fd_node, %struct.fd_node* %69, i32 0, i32 2, !dbg !4902
  %71 = load %struct.fd_node*, %struct.fd_node** %70, align 8, !dbg !4902
  store %struct.fd_node* %71, %struct.fd_node** %3, align 8, !dbg !4903
  br label %5, !dbg !4904, !llvm.loop !4906

; <label>:72:                                     ; preds = %5
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4907
  %74 = call i32 @getpid() #9, !dbg !4908
  %75 = call i32 @gettid(), !dbg !4909
  %76 = load i32, i32* %2, align 4, !dbg !4910
  %77 = load %struct.fd_node*, %struct.fd_node** @__fd_m_list, align 8, !dbg !4911
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.89, i32 0, i32 0), i32 %74, i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 334, i32 %76, %struct.fd_node* %77), !dbg !4912
  br label %79, !dbg !4913

; <label>:79:                                     ; preds = %72, %65
  ret void, !dbg !4914
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!460, !461}
!llvm.ident = !{!462}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !264, globals: !424)
!1 = !DIFile(filename: "/home/lichi/Desktop/genwqe/[task]lib--__libcard.o/[inter]lib--libcard.o.i", directory: "/home/lichi/Desktop")
!2 = !{!3, !10, !18, !22, !26, !244, !259}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_state", file: !4, line: 88, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "libcard.c", directory: "/home/lichi/Desktop")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "DEV_ALLOC", value: 0)
!7 = !DIEnumerator(name: "DEV_HAVE_FD", value: 1)
!8 = !DIEnumerator(name: "DEV_REQ_CLOSE", value: 2)
!9 = !DIEnumerator(name: "DEV_FREE", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "genwqe_card_state", file: !11, line: 323, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "../include/linux/uapi/linux/genwqe/genwqe_card.h", directory: "/home/lichi/Desktop")
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "GENWQE_CARD_UNUSED", value: 0)
!14 = !DIEnumerator(name: "GENWQE_CARD_USED", value: 1)
!15 = !DIEnumerator(name: "GENWQE_CARD_FATAL_ERROR", value: 2)
!16 = !DIEnumerator(name: "GENWQE_CARD_RELOAD_BITSTREAM", value: 3)
!17 = !DIEnumerator(name: "GENWQE_CARD_STATE_MAX", value: 4)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "genwqe_fd_state", file: !4, line: 109, size: 32, align: 32, elements: !19)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "CARD_CLOSED", value: 0)
!21 = !DIEnumerator(name: "CARD_OPEN", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "inotify_ev", file: !4, line: 111, size: 32, align: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "INOTIFY_IDLE", value: 0)
!25 = !DIEnumerator(name: "INOTIFY_ATTRIB", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 71, size: 32, align: 32, elements: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!29 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!30 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!31 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!32 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!33 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!34 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!35 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!36 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!37 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!38 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!39 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!40 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!41 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!42 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!43 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!44 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!45 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!46 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!47 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!48 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!49 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!50 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!51 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!52 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!53 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!54 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!55 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!56 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!57 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!58 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!59 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!60 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!61 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!62 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!63 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!64 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!65 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!66 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!67 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!68 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!69 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!70 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!71 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!72 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!73 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!74 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!75 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!76 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!77 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!78 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!79 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!80 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!81 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!82 = !DIEnumerator(name: "_SC_PII", value: 53)
!83 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!84 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!85 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!86 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!87 = !DIEnumerator(name: "_SC_POLL", value: 58)
!88 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!89 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!90 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!91 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!92 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!93 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!94 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!95 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!96 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!97 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!98 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!99 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!100 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!101 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!102 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!103 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!104 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!105 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!106 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!107 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!108 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!109 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!110 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!111 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!112 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!113 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!114 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!115 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!116 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!117 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!118 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!119 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!120 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!121 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!122 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!123 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!124 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!125 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!126 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!127 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!128 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!129 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!130 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!131 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!132 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!133 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!134 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!135 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!136 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!137 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!138 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!139 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!140 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!141 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!142 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!143 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!144 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!145 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!146 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!147 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!148 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!149 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!150 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!151 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!152 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!153 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!154 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!155 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!156 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!157 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!158 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!159 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!160 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!161 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!162 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!163 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!164 = !DIEnumerator(name: "_SC_BASE", value: 134)
!165 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!166 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!167 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!168 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!169 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!170 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!171 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!172 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!173 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!174 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!175 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!176 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!177 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!178 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!179 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!180 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!181 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!182 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!183 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!184 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!185 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!186 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!187 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!188 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!189 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!190 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!191 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!192 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!193 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!194 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!195 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!196 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!197 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!198 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!199 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!200 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!201 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!202 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!203 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!204 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!205 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!206 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!207 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!208 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!209 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!210 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!211 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!212 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!213 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!214 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!215 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!216 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!217 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!218 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!219 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!220 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!221 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!222 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!223 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!224 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!225 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!226 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!227 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!228 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!229 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!230 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!231 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!232 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!233 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!234 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!235 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!236 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!237 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!238 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!239 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!240 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!241 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!242 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!243 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 46, size: 32, align: 32, elements: !246)
!245 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!247 = !DIEnumerator(name: "_ISupper", value: 256)
!248 = !DIEnumerator(name: "_ISlower", value: 512)
!249 = !DIEnumerator(name: "_ISalpha", value: 1024)
!250 = !DIEnumerator(name: "_ISdigit", value: 2048)
!251 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!252 = !DIEnumerator(name: "_ISspace", value: 8192)
!253 = !DIEnumerator(name: "_ISprint", value: 16384)
!254 = !DIEnumerator(name: "_ISgraph", value: 32768)
!255 = !DIEnumerator(name: "_ISblank", value: 1)
!256 = !DIEnumerator(name: "_IScntrl", value: 2)
!257 = !DIEnumerator(name: "_ISpunct", value: 4)
!258 = !DIEnumerator(name: "_ISalnum", value: 8)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 199, size: 32, align: 32, elements: !261)
!260 = !DIFile(filename: "/usr/include/pthread.h", directory: "/home/lichi/Desktop")
!261 = !{!262, !263}
!262 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!263 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!264 = !{!265, !266, !269, !272, !273, !274, !275, !278, !279, !276, !281, !305, !307, !311, !370, !372, !271, !384}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !267, line: 51, baseType: !268)
!267 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop")
!268 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !270, line: 30, baseType: !271)
!270 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop")
!271 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!272 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!273 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!274 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !267, line: 48, baseType: !277)
!277 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!278 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !280, line: 216, baseType: !272)
!280 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop")
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_dev_t", file: !4, line: 91, size: 640, align: 64, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !293, !294, !302, !303, !304}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "card_no", scope: !282, file: !4, line: 92, baseType: !274, size: 32, align: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dev_state", scope: !282, file: !4, line: 93, baseType: !3, size: 32, align: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !282, file: !4, line: 94, baseType: !274, size: 32, align: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "omode", scope: !282, file: !4, line: 97, baseType: !274, size: 32, align: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "fd_s", scope: !282, file: !4, line: 98, baseType: !274, size: 32, align: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "drv_rc", scope: !282, file: !4, line: 99, baseType: !274, size: 32, align: 32, offset: 160)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "drv_errno", scope: !282, file: !4, line: 100, baseType: !274, size: 32, align: 32, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "slu_id", scope: !282, file: !4, line: 101, baseType: !292, size: 64, align: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !267, line: 55, baseType: !272)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "app_id", scope: !282, file: !4, line: 102, baseType: !292, size: 64, align: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "m_fd_ptr", scope: !282, file: !4, line: 103, baseType: !295, size: 64, align: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd_node", file: !4, line: 143, size: 192, align: 64, elements: !297)
!297 = !{!298, !299, !300, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "card_num", scope: !296, file: !4, line: 144, baseType: !274, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "m_fd", scope: !296, file: !4, line: 145, baseType: !274, size: 32, align: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !4, line: 146, baseType: !295, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !296, file: !4, line: 147, baseType: !295, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !4, line: 104, baseType: !281, size: 64, align: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !282, file: !4, line: 105, baseType: !281, size: 64, align: 64, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !282, file: !4, line: 106, baseType: !281, size: 64, align: 64, offset: 576)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !306, line: 60, baseType: !272)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop")
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !308, line: 98, baseType: !309)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !310, line: 133, baseType: !274)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop")
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lib_data_t", file: !4, line: 113, size: 17472, align: 64, elements: !313)
!313 = !{!314, !318, !319, !331, !332, !359, !360, !361, !362, !364, !365, !366, !367, !368, !369}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "crc32_tab", scope: !312, file: !4, line: 114, baseType: !315, size: 8192, align: 32)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 8192, align: 32, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !312, file: !4, line: 115, baseType: !305, size: 64, align: 64, offset: 8192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "health_sem", scope: !312, file: !4, line: 116, baseType: !320, size: 256, align: 64, offset: 8256)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !321, line: 40, baseType: !322)
!321 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "/home/lichi/Desktop")
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !321, line: 36, size: 256, align: 64, elements: !323)
!323 = !{!324, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !322, file: !321, line: 38, baseType: !325, size: 256, align: 8)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, align: 8, elements: !327)
!326 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!327 = !{!328}
!328 = !DISubrange(count: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !322, file: !321, line: 39, baseType: !330, size: 64, align: 64)
!330 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_rc", scope: !312, file: !4, line: 117, baseType: !274, size: 32, align: 32, offset: 8512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "fds_mutex", scope: !312, file: !4, line: 118, baseType: !333, size: 320, align: 64, offset: 8576)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !306, line: 128, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !306, line: 90, size: 320, align: 64, elements: !335)
!335 = !{!336, !354, !358}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !334, file: !306, line: 125, baseType: !337, size: 320, align: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !306, line: 92, size: 320, align: 64, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !346, !347}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !337, file: !306, line: 94, baseType: !274, size: 32, align: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !337, file: !306, line: 95, baseType: !268, size: 32, align: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !337, file: !306, line: 96, baseType: !274, size: 32, align: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !337, file: !306, line: 98, baseType: !268, size: 32, align: 32, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !337, file: !306, line: 102, baseType: !274, size: 32, align: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !337, file: !306, line: 104, baseType: !345, size: 16, align: 16, offset: 160)
!345 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !337, file: !306, line: 105, baseType: !345, size: 16, align: 16, offset: 176)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !337, file: !306, line: 106, baseType: !348, size: 128, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !306, line: 79, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !306, line: 75, size: 128, align: 64, elements: !350)
!350 = !{!351, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !349, file: !306, line: 77, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !349, file: !306, line: 78, baseType: !352, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !334, file: !306, line: 126, baseType: !355, size: 320, align: 8)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 320, align: 8, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 40)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !334, file: !306, line: 127, baseType: !330, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fd_s_count", scope: !312, file: !4, line: 119, baseType: !274, size: 32, align: 32, offset: 8896)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fd_m_count", scope: !312, file: !4, line: 120, baseType: !274, size: 32, align: 32, offset: 8928)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "m_mode_save", scope: !312, file: !4, line: 121, baseType: !274, size: 32, align: 32, offset: 8960)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "genwqe_state", scope: !312, file: !4, line: 126, baseType: !363, size: 8192, align: 32, offset: 8992)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, align: 32, elements: !316)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_rc", scope: !312, file: !4, line: 134, baseType: !274, size: 32, align: 32, offset: 17184)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_fd", scope: !312, file: !4, line: 135, baseType: !274, size: 32, align: 32, offset: 17216)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_wd", scope: !312, file: !4, line: 136, baseType: !274, size: 32, align: 32, offset: 17248)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_card", scope: !312, file: !4, line: 137, baseType: !274, size: 32, align: 32, offset: 17280)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_tid", scope: !312, file: !4, line: 138, baseType: !305, size: 64, align: 64, offset: 17344)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_event", scope: !312, file: !4, line: 139, baseType: !22, size: 32, align: 32, offset: 17408)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !371, line: 54, baseType: !330)
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop")
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_event", file: !374, line: 28, size: 128, align: 32, elements: !375)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/inotify.h", directory: "/home/lichi/Desktop")
!375 = !{!376, !377, !378, !379, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wd", scope: !373, file: !374, line: 30, baseType: !274, size: 32, align: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !373, file: !374, line: 31, baseType: !266, size: 32, align: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !373, file: !374, line: 32, baseType: !266, size: 32, align: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !373, file: !374, line: 33, baseType: !266, size: 32, align: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !374, line: 34, baseType: !381, offset: 128)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, align: 8, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: -1)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_ddcb_cmd", file: !11, line: 414, size: 1856, align: 64, elements: !386)
!386 = !{!387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !399, !401, !402, !403, !404, !405, !409}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next_addr", scope: !385, file: !11, line: 416, baseType: !269, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !11, line: 417, baseType: !269, size: 64, align: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "acfunc", scope: !385, file: !11, line: 419, baseType: !390, size: 8, align: 8, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !270, line: 20, baseType: !277)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !385, file: !11, line: 420, baseType: !390, size: 8, align: 8, offset: 136)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "asiv_length", scope: !385, file: !11, line: 421, baseType: !390, size: 8, align: 8, offset: 144)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "asv_length", scope: !385, file: !11, line: 422, baseType: !390, size: 8, align: 8, offset: 152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "cmdopts", scope: !385, file: !11, line: 423, baseType: !395, size: 16, align: 16, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !270, line: 23, baseType: !278)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !385, file: !11, line: 424, baseType: !395, size: 16, align: 16, offset: 176)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !385, file: !11, line: 426, baseType: !395, size: 16, align: 16, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vcrc", scope: !385, file: !11, line: 427, baseType: !395, size: 16, align: 16, offset: 208)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !385, file: !11, line: 428, baseType: !400, size: 32, align: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !270, line: 26, baseType: !268)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "deque_ts", scope: !385, file: !11, line: 430, baseType: !269, size: 64, align: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "cmplt_ts", scope: !385, file: !11, line: 431, baseType: !269, size: 64, align: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "disp_ts", scope: !385, file: !11, line: 432, baseType: !269, size: 64, align: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ddata_addr", scope: !385, file: !11, line: 435, baseType: !269, size: 64, align: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "asv", scope: !385, file: !11, line: 438, baseType: !406, size: 512, align: 8, offset: 512)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, align: 8, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !11, line: 441, baseType: !410, size: 832, align: 64, offset: 1024)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !11, line: 441, size: 832, align: 64, elements: !411)
!411 = !{!412, !420}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !11, line: 442, baseType: !413, size: 832, align: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !11, line: 442, size: 832, align: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ats", scope: !413, file: !11, line: 443, baseType: !269, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "asiv", scope: !413, file: !11, line: 444, baseType: !417, size: 768, align: 8, offset: 64)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 768, align: 8, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__asiv", scope: !410, file: !11, line: 447, baseType: !421, size: 832, align: 8)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 832, align: 8, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 104)
!424 = !{!425, !427, !428, !437, !438, !439, !446, !450, !453, !454, !455, !459}
!425 = distinct !DIGlobalVariable(name: "card_nerr", scope: !0, file: !4, line: 186, type: !426, isLocal: true, isDefinition: true, variable: i32 215)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!427 = distinct !DIGlobalVariable(name: "retc_nerr", scope: !0, file: !4, line: 208, type: !426, isLocal: true, isDefinition: true, variable: i32 512)
!428 = distinct !DIGlobalVariable(name: "mask", scope: !429, file: !4, line: 1582, type: !433, isLocal: true, isDefinition: true, variable: [2 x i8]* @genwqe_card_set_ats_flags.mask)
!429 = distinct !DISubprogram(name: "genwqe_card_set_ats_flags", scope: !4, file: !4, line: 1578, type: !430, isLocal: false, isDefinition: true, scopeLine: 1579, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!274, !265, !279, !279, !274}
!432 = !{}
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 16, align: 8, elements: !435)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!435 = !{!436}
!436 = !DISubrange(count: 2)
!437 = distinct !DIGlobalVariable(name: "lib_data", scope: !0, file: !4, line: 150, type: !312, isLocal: true, isDefinition: true, variable: %struct.lib_data_t* @lib_data)
!438 = distinct !DIGlobalVariable(name: "_dbg_flag", scope: !0, file: !4, line: 164, type: !274, isLocal: true, isDefinition: true, variable: i32* @_dbg_flag)
!439 = distinct !DIGlobalVariable(name: "card_errlist", scope: !0, file: !4, line: 166, type: !440, isLocal: true, isDefinition: true, variable: [215 x i8*]* @card_errlist)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 13760, align: 64, elements: !444)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!444 = !{!445}
!445 = !DISubrange(count: 215)
!446 = distinct !DIGlobalVariable(name: "retc_errlist", scope: !0, file: !4, line: 195, type: !447, isLocal: true, isDefinition: true, variable: [512 x i8*]* @retc_errlist)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 32768, align: 64, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 512)
!450 = distinct !DIGlobalVariable(name: "m_dev_head", scope: !0, file: !4, line: 152, type: !451, isLocal: true, isDefinition: true, variable: %struct.dev_card_t** @m_dev_head)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_card_t", file: !4, line: 151, flags: DIFlagFwdDecl)
!453 = distinct !DIGlobalVariable(name: "s_dev_head", scope: !0, file: !4, line: 151, type: !451, isLocal: true, isDefinition: true, variable: %struct.dev_card_t** @s_dev_head)
!454 = distinct !DIGlobalVariable(name: "__fd_m_list", scope: !0, file: !4, line: 153, type: !295, isLocal: true, isDefinition: true, variable: %struct.fd_node** @__fd_m_list)
!455 = distinct !DIGlobalVariable(name: "card_completed_ddcbs", scope: !0, file: !4, line: 157, type: !456, isLocal: true, isDefinition: true, variable: [16 x i32]* @card_completed_ddcbs)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 512, align: 32, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 16)
!459 = distinct !DIGlobalVariable(name: "card_retried_ddcbs", scope: !0, file: !4, line: 158, type: !456, isLocal: true, isDefinition: true, variable: [16 x i32]* @card_retried_ddcbs)
!460 = !{i32 2, !"Dwarf Version", i32 4}
!461 = !{i32 2, !"Debug Info Version", i32 3}
!462 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!463 = distinct !DISubprogram(name: "card_strerror", scope: !4, file: !4, line: 188, type: !464, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!464 = !DISubroutineType(types: !465)
!465 = !{!442, !274}
!466 = !DILocalVariable(name: "errnum", arg: 1, scope: !463, file: !4, line: 188, type: !274)
!467 = !DIExpression()
!468 = !DILocation(line: 188, column: 31, scope: !463)
!469 = !DILocation(line: 190, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !4, line: 190, column: 6)
!471 = !DILocation(line: 190, column: 17, scope: !470)
!472 = !DILocation(line: 190, column: 7, scope: !470)
!473 = !DILocation(line: 190, column: 26, scope: !474)
!474 = !DILexicalBlockFile(scope: !470, file: !4, discriminator: 1)
!475 = !DILocation(line: 190, column: 24, scope: !474)
!476 = !DILocation(line: 190, column: 7, scope: !474)
!477 = !DILocation(line: 190, column: 37, scope: !478)
!478 = !DILexicalBlockFile(scope: !470, file: !4, discriminator: 2)
!479 = !DILocation(line: 190, column: 7, scope: !478)
!480 = !DILocation(line: 190, column: 7, scope: !481)
!481 = !DILexicalBlockFile(scope: !470, file: !4, discriminator: 3)
!482 = !DILocation(line: 190, column: 46, scope: !481)
!483 = !DILocation(line: 190, column: 6, scope: !481)
!484 = !DILocation(line: 191, column: 3, scope: !470)
!485 = !DILocation(line: 192, column: 25, scope: !463)
!486 = !DILocation(line: 192, column: 33, scope: !463)
!487 = !DILocation(line: 192, column: 23, scope: !463)
!488 = !DILocation(line: 192, column: 42, scope: !489)
!489 = !DILexicalBlockFile(scope: !463, file: !4, discriminator: 1)
!490 = !DILocation(line: 192, column: 40, scope: !489)
!491 = !DILocation(line: 192, column: 23, scope: !489)
!492 = !DILocation(line: 192, column: 53, scope: !493)
!493 = !DILexicalBlockFile(scope: !463, file: !4, discriminator: 2)
!494 = !DILocation(line: 192, column: 23, scope: !493)
!495 = !DILocation(line: 192, column: 23, scope: !496)
!496 = !DILexicalBlockFile(scope: !463, file: !4, discriminator: 3)
!497 = !DILocation(line: 192, column: 9, scope: !496)
!498 = !DILocation(line: 192, column: 2, scope: !496)
!499 = !DILocation(line: 193, column: 1, scope: !463)
!500 = distinct !DISubprogram(name: "retc_strerror", scope: !4, file: !4, line: 210, type: !464, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!501 = !DILocalVariable(name: "errnum", arg: 1, scope: !500, file: !4, line: 210, type: !274)
!502 = !DILocation(line: 210, column: 31, scope: !500)
!503 = !DILocation(line: 212, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !4, line: 212, column: 6)
!505 = !DILocation(line: 212, column: 17, scope: !504)
!506 = !DILocation(line: 212, column: 7, scope: !504)
!507 = !DILocation(line: 212, column: 26, scope: !508)
!508 = !DILexicalBlockFile(scope: !504, file: !4, discriminator: 1)
!509 = !DILocation(line: 212, column: 24, scope: !508)
!510 = !DILocation(line: 212, column: 7, scope: !508)
!511 = !DILocation(line: 212, column: 37, scope: !512)
!512 = !DILexicalBlockFile(scope: !504, file: !4, discriminator: 2)
!513 = !DILocation(line: 212, column: 7, scope: !512)
!514 = !DILocation(line: 212, column: 7, scope: !515)
!515 = !DILexicalBlockFile(scope: !504, file: !4, discriminator: 3)
!516 = !DILocation(line: 212, column: 46, scope: !515)
!517 = !DILocation(line: 212, column: 6, scope: !515)
!518 = !DILocation(line: 213, column: 3, scope: !504)
!519 = !DILocation(line: 214, column: 25, scope: !500)
!520 = !DILocation(line: 214, column: 33, scope: !500)
!521 = !DILocation(line: 214, column: 23, scope: !500)
!522 = !DILocation(line: 214, column: 42, scope: !523)
!523 = !DILexicalBlockFile(scope: !500, file: !4, discriminator: 1)
!524 = !DILocation(line: 214, column: 40, scope: !523)
!525 = !DILocation(line: 214, column: 23, scope: !523)
!526 = !DILocation(line: 214, column: 53, scope: !527)
!527 = !DILexicalBlockFile(scope: !500, file: !4, discriminator: 2)
!528 = !DILocation(line: 214, column: 23, scope: !527)
!529 = !DILocation(line: 214, column: 23, scope: !530)
!530 = !DILexicalBlockFile(scope: !500, file: !4, discriminator: 3)
!531 = !DILocation(line: 214, column: 9, scope: !530)
!532 = !DILocation(line: 214, column: 2, scope: !530)
!533 = !DILocation(line: 215, column: 1, scope: !500)
!534 = distinct !DISubprogram(name: "genwqe_card_lib_debug", scope: !4, file: !4, line: 1055, type: !535, isLocal: false, isDefinition: true, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !274}
!537 = !DILocalVariable(name: "onoff", arg: 1, scope: !534, file: !4, line: 1055, type: !274)
!538 = !DILocation(line: 1055, column: 32, scope: !534)
!539 = !DILocation(line: 1057, column: 14, scope: !534)
!540 = !DILocation(line: 1057, column: 12, scope: !534)
!541 = !DILocation(line: 1058, column: 1, scope: !534)
!542 = distinct !DISubprogram(name: "genwqe_ddcb_crc32", scope: !4, file: !4, line: 1093, type: !543, isLocal: false, isDefinition: true, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!543 = !DISubroutineType(types: !544)
!544 = !{!266, !275, !279, !266}
!545 = !DILocalVariable(name: "buff", arg: 1, scope: !542, file: !4, line: 1093, type: !275)
!546 = !DILocation(line: 1093, column: 37, scope: !542)
!547 = !DILocalVariable(name: "len", arg: 2, scope: !542, file: !4, line: 1093, type: !279)
!548 = !DILocation(line: 1093, column: 50, scope: !542)
!549 = !DILocalVariable(name: "init", arg: 3, scope: !542, file: !4, line: 1093, type: !266)
!550 = !DILocation(line: 1093, column: 64, scope: !542)
!551 = !DILocalVariable(name: "i", scope: !542, file: !4, line: 1095, type: !274)
!552 = !DILocation(line: 1095, column: 6, scope: !542)
!553 = !DILocalVariable(name: "crc", scope: !542, file: !4, line: 1096, type: !266)
!554 = !DILocation(line: 1096, column: 11, scope: !542)
!555 = !DILocation(line: 1098, column: 8, scope: !542)
!556 = !DILocation(line: 1098, column: 6, scope: !542)
!557 = !DILocation(line: 1099, column: 2, scope: !542)
!558 = !DILocation(line: 1099, column: 12, scope: !559)
!559 = !DILexicalBlockFile(scope: !542, file: !4, discriminator: 1)
!560 = !DILocation(line: 1099, column: 2, scope: !559)
!561 = !DILocation(line: 1100, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !542, file: !4, line: 1099, column: 16)
!563 = !DILocation(line: 1100, column: 13, scope: !562)
!564 = !DILocation(line: 1100, column: 27, scope: !562)
!565 = !DILocation(line: 1100, column: 22, scope: !562)
!566 = !DILocation(line: 1100, column: 20, scope: !562)
!567 = !DILocation(line: 1100, column: 31, scope: !562)
!568 = !DILocation(line: 1100, column: 5, scope: !562)
!569 = !DILocation(line: 1101, column: 10, scope: !562)
!570 = !DILocation(line: 1101, column: 14, scope: !562)
!571 = !DILocation(line: 1101, column: 41, scope: !562)
!572 = !DILocation(line: 1101, column: 22, scope: !562)
!573 = !DILocation(line: 1101, column: 20, scope: !562)
!574 = !DILocation(line: 1101, column: 7, scope: !562)
!575 = !DILocation(line: 1099, column: 2, scope: !576)
!576 = !DILexicalBlockFile(scope: !542, file: !4, discriminator: 2)
!577 = distinct !{!577, !557}
!578 = !DILocation(line: 1103, column: 9, scope: !542)
!579 = !DILocation(line: 1103, column: 2, scope: !542)
!580 = distinct !DISubprogram(name: "genwqe_get_drv_rc", scope: !4, file: !4, line: 1106, type: !581, isLocal: false, isDefinition: true, scopeLine: 1107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!581 = !DISubroutineType(types: !582)
!582 = !{!274, !583}
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "card_handle_t", file: !584, line: 95, baseType: !281)
!584 = !DIFile(filename: "../include/libcard.h", directory: "/home/lichi/Desktop")
!585 = !DILocalVariable(name: "dev", arg: 1, scope: !580, file: !4, line: 1106, type: !583)
!586 = !DILocation(line: 1106, column: 37, scope: !580)
!587 = !DILocation(line: 1108, column: 9, scope: !580)
!588 = !DILocation(line: 1108, column: 14, scope: !580)
!589 = !DILocation(line: 1108, column: 2, scope: !580)
!590 = distinct !DISubprogram(name: "genwqe_get_drv_errno", scope: !4, file: !4, line: 1111, type: !581, isLocal: false, isDefinition: true, scopeLine: 1112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!591 = !DILocalVariable(name: "dev", arg: 1, scope: !590, file: !4, line: 1111, type: !583)
!592 = !DILocation(line: 1111, column: 40, scope: !590)
!593 = !DILocation(line: 1113, column: 9, scope: !590)
!594 = !DILocation(line: 1113, column: 14, scope: !590)
!595 = !DILocation(line: 1113, column: 2, scope: !590)
!596 = distinct !DISubprogram(name: "genwqe_card_get_state", scope: !4, file: !4, line: 1116, type: !597, isLocal: false, isDefinition: true, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!597 = !DISubroutineType(types: !598)
!598 = !{!274, !583, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!600 = !DILocalVariable(name: "dev", arg: 1, scope: !596, file: !4, line: 1116, type: !583)
!601 = !DILocation(line: 1116, column: 41, scope: !596)
!602 = !DILocalVariable(name: "state", arg: 2, scope: !596, file: !4, line: 1116, type: !599)
!603 = !DILocation(line: 1116, column: 70, scope: !596)
!604 = !DILocalVariable(name: "fd", scope: !596, file: !4, line: 1118, type: !274)
!605 = !DILocation(line: 1118, column: 6, scope: !596)
!606 = !DILocation(line: 1120, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !596, file: !4, line: 1120, column: 5)
!608 = !DILocation(line: 1120, column: 10, scope: !607)
!609 = !DILocation(line: 1120, column: 5, scope: !596)
!610 = !DILocation(line: 1121, column: 3, scope: !607)
!611 = !DILocation(line: 1123, column: 16, scope: !596)
!612 = !DILocation(line: 1123, column: 7, scope: !596)
!613 = !DILocation(line: 1123, column: 5, scope: !596)
!614 = !DILocation(line: 1124, column: 40, scope: !596)
!615 = !DILocation(line: 1124, column: 44, scope: !596)
!616 = !DILocation(line: 1124, column: 16, scope: !596)
!617 = !DILocation(line: 1124, column: 2, scope: !596)
!618 = !DILocation(line: 1124, column: 7, scope: !596)
!619 = !DILocation(line: 1124, column: 14, scope: !596)
!620 = !DILocation(line: 1125, column: 11, scope: !621)
!621 = distinct !DILexicalBlock(scope: !596, file: !4, line: 1125, column: 6)
!622 = !DILocation(line: 1125, column: 16, scope: !621)
!623 = !DILocation(line: 1125, column: 8, scope: !621)
!624 = !DILocation(line: 1125, column: 6, scope: !596)
!625 = !DILocation(line: 1126, column: 3, scope: !621)
!626 = !DILocation(line: 1127, column: 2, scope: !596)
!627 = !DILocation(line: 1128, column: 1, scope: !596)
!628 = distinct !DISubprogram(name: "__fd_get", scope: !4, file: !4, line: 393, type: !629, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!629 = !DISubroutineType(types: !630)
!630 = !{!274, !281, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!632 = !DILocalVariable(name: "dev", arg: 1, scope: !628, file: !4, line: 393, type: !281)
!633 = !DILocation(line: 393, column: 40, scope: !628)
!634 = !DILocalVariable(name: "card_num", arg: 2, scope: !628, file: !4, line: 393, type: !631)
!635 = !DILocation(line: 393, column: 50, scope: !628)
!636 = !DILocalVariable(name: "ld", scope: !628, file: !4, line: 395, type: !311)
!637 = !DILocation(line: 395, column: 21, scope: !628)
!638 = !DILocalVariable(name: "fd", scope: !628, file: !4, line: 396, type: !274)
!639 = !DILocation(line: 396, column: 6, scope: !628)
!640 = !DILocation(line: 398, column: 22, scope: !628)
!641 = !DILocation(line: 398, column: 26, scope: !628)
!642 = !DILocation(line: 398, column: 2, scope: !628)
!643 = !DILocation(line: 399, column: 12, scope: !644)
!644 = distinct !DILexicalBlock(scope: !628, file: !4, line: 399, column: 6)
!645 = !DILocation(line: 399, column: 17, scope: !644)
!646 = !DILocation(line: 399, column: 9, scope: !644)
!647 = !DILocation(line: 399, column: 6, scope: !628)
!648 = !DILocation(line: 400, column: 27, scope: !644)
!649 = !DILocation(line: 400, column: 32, scope: !644)
!650 = !DILocation(line: 400, column: 8, scope: !644)
!651 = !DILocation(line: 400, column: 6, scope: !644)
!652 = !DILocation(line: 400, column: 3, scope: !644)
!653 = !DILocation(line: 402, column: 8, scope: !654)
!654 = distinct !DILexicalBlock(scope: !644, file: !4, line: 401, column: 7)
!655 = !DILocation(line: 402, column: 13, scope: !654)
!656 = !DILocation(line: 402, column: 6, scope: !654)
!657 = !DILocation(line: 403, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !4, line: 403, column: 7)
!659 = !DILocation(line: 403, column: 7, scope: !654)
!660 = !DILocation(line: 404, column: 16, scope: !658)
!661 = !DILocation(line: 404, column: 21, scope: !658)
!662 = !DILocation(line: 404, column: 5, scope: !658)
!663 = !DILocation(line: 404, column: 14, scope: !658)
!664 = !DILocation(line: 404, column: 4, scope: !658)
!665 = !DILocation(line: 406, column: 24, scope: !628)
!666 = !DILocation(line: 406, column: 28, scope: !628)
!667 = !DILocation(line: 406, column: 2, scope: !628)
!668 = !DILocation(line: 407, column: 9, scope: !628)
!669 = !DILocation(line: 407, column: 2, scope: !628)
!670 = distinct !DISubprogram(name: "__genwqe_card_get_state", scope: !4, file: !4, line: 217, type: !671, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!671 = !DISubroutineType(types: !672)
!672 = !{!274, !274, !599}
!673 = !DILocalVariable(name: "fd", arg: 1, scope: !670, file: !4, line: 217, type: !274)
!674 = !DILocation(line: 217, column: 40, scope: !670)
!675 = !DILocalVariable(name: "state", arg: 2, scope: !670, file: !4, line: 217, type: !599)
!676 = !DILocation(line: 217, column: 68, scope: !670)
!677 = !DILocation(line: 219, column: 15, scope: !670)
!678 = !DILocation(line: 219, column: 41, scope: !670)
!679 = !DILocation(line: 219, column: 9, scope: !670)
!680 = !DILocation(line: 219, column: 2, scope: !670)
!681 = distinct !DISubprogram(name: "genwqe_card_read_reg64", scope: !4, file: !4, line: 1135, type: !682, isLocal: false, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!682 = !DISubroutineType(types: !683)
!683 = !{!292, !583, !266, !631}
!684 = !DILocalVariable(name: "dev", arg: 1, scope: !681, file: !4, line: 1135, type: !583)
!685 = !DILocation(line: 1135, column: 47, scope: !681)
!686 = !DILocalVariable(name: "offs", arg: 2, scope: !681, file: !4, line: 1135, type: !266)
!687 = !DILocation(line: 1135, column: 61, scope: !681)
!688 = !DILocalVariable(name: "rc", arg: 3, scope: !681, file: !4, line: 1135, type: !631)
!689 = !DILocation(line: 1135, column: 72, scope: !681)
!690 = !DILocalVariable(name: "io", scope: !681, file: !4, line: 1137, type: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_reg_io", file: !11, line: 245, size: 128, align: 64, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !691, file: !11, line: 246, baseType: !269, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "val64", scope: !691, file: !11, line: 247, baseType: !269, size: 64, align: 64, offset: 64)
!695 = !DILocation(line: 1137, column: 23, scope: !681)
!696 = !DILocation(line: 1139, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !681, file: !4, line: 1139, column: 6)
!698 = !DILocation(line: 1139, column: 6, scope: !681)
!699 = !DILocation(line: 1140, column: 4, scope: !697)
!700 = !DILocation(line: 1140, column: 7, scope: !697)
!701 = !DILocation(line: 1140, column: 3, scope: !697)
!702 = !DILocation(line: 1141, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !681, file: !4, line: 1141, column: 5)
!704 = !DILocation(line: 1141, column: 10, scope: !703)
!705 = !DILocation(line: 1141, column: 5, scope: !681)
!706 = !DILocation(line: 1142, column: 3, scope: !703)
!707 = !DILocation(line: 1144, column: 11, scope: !681)
!708 = !DILocation(line: 1144, column: 5, scope: !681)
!709 = !DILocation(line: 1144, column: 9, scope: !681)
!710 = !DILocation(line: 1145, column: 5, scope: !681)
!711 = !DILocation(line: 1145, column: 11, scope: !681)
!712 = !DILocation(line: 1146, column: 22, scope: !681)
!713 = !DILocation(line: 1146, column: 27, scope: !681)
!714 = !DILocation(line: 1146, column: 16, scope: !681)
!715 = !DILocation(line: 1146, column: 2, scope: !681)
!716 = !DILocation(line: 1146, column: 7, scope: !681)
!717 = !DILocation(line: 1146, column: 14, scope: !681)
!718 = !DILocation(line: 1147, column: 20, scope: !681)
!719 = !DILocation(line: 1147, column: 19, scope: !681)
!720 = !DILocation(line: 1147, column: 2, scope: !681)
!721 = !DILocation(line: 1147, column: 7, scope: !681)
!722 = !DILocation(line: 1147, column: 17, scope: !681)
!723 = !DILocation(line: 1148, column: 6, scope: !724)
!724 = distinct !DILexicalBlock(scope: !681, file: !4, line: 1148, column: 6)
!725 = !DILocation(line: 1148, column: 11, scope: !724)
!726 = !DILocation(line: 1148, column: 18, scope: !724)
!727 = !DILocation(line: 1148, column: 6, scope: !681)
!728 = !DILocation(line: 1149, column: 7, scope: !724)
!729 = !DILocation(line: 1149, column: 13, scope: !724)
!730 = !DILocation(line: 1149, column: 4, scope: !724)
!731 = !DILocation(line: 1151, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !4, line: 1151, column: 7)
!733 = distinct !DILexicalBlock(scope: !724, file: !4, line: 1150, column: 7)
!734 = !DILocation(line: 1151, column: 7, scope: !733)
!735 = !DILocation(line: 1152, column: 5, scope: !732)
!736 = !DILocation(line: 1152, column: 8, scope: !732)
!737 = !DILocation(line: 1152, column: 4, scope: !732)
!738 = !DILocation(line: 1154, column: 12, scope: !681)
!739 = !DILocation(line: 1154, column: 2, scope: !681)
!740 = !DILocation(line: 1155, column: 1, scope: !681)
!741 = distinct !DISubprogram(name: "genwqe_card_read_reg32", scope: !4, file: !4, line: 1162, type: !742, isLocal: false, isDefinition: true, scopeLine: 1163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!742 = !DISubroutineType(types: !743)
!743 = !{!266, !583, !266, !631}
!744 = !DILocalVariable(name: "dev", arg: 1, scope: !741, file: !4, line: 1162, type: !583)
!745 = !DILocation(line: 1162, column: 47, scope: !741)
!746 = !DILocalVariable(name: "offs", arg: 2, scope: !741, file: !4, line: 1162, type: !266)
!747 = !DILocation(line: 1162, column: 61, scope: !741)
!748 = !DILocalVariable(name: "rc", arg: 3, scope: !741, file: !4, line: 1162, type: !631)
!749 = !DILocation(line: 1162, column: 72, scope: !741)
!750 = !DILocalVariable(name: "io", scope: !741, file: !4, line: 1164, type: !691)
!751 = !DILocation(line: 1164, column: 23, scope: !741)
!752 = !DILocation(line: 1166, column: 6, scope: !753)
!753 = distinct !DILexicalBlock(scope: !741, file: !4, line: 1166, column: 6)
!754 = !DILocation(line: 1166, column: 6, scope: !741)
!755 = !DILocation(line: 1167, column: 4, scope: !753)
!756 = !DILocation(line: 1167, column: 7, scope: !753)
!757 = !DILocation(line: 1167, column: 3, scope: !753)
!758 = !DILocation(line: 1168, column: 13, scope: !759)
!759 = distinct !DILexicalBlock(scope: !741, file: !4, line: 1168, column: 5)
!760 = !DILocation(line: 1168, column: 10, scope: !759)
!761 = !DILocation(line: 1168, column: 5, scope: !741)
!762 = !DILocation(line: 1169, column: 3, scope: !759)
!763 = !DILocation(line: 1171, column: 11, scope: !741)
!764 = !DILocation(line: 1171, column: 5, scope: !741)
!765 = !DILocation(line: 1171, column: 9, scope: !741)
!766 = !DILocation(line: 1172, column: 5, scope: !741)
!767 = !DILocation(line: 1172, column: 11, scope: !741)
!768 = !DILocation(line: 1173, column: 22, scope: !741)
!769 = !DILocation(line: 1173, column: 27, scope: !741)
!770 = !DILocation(line: 1173, column: 16, scope: !741)
!771 = !DILocation(line: 1173, column: 2, scope: !741)
!772 = !DILocation(line: 1173, column: 7, scope: !741)
!773 = !DILocation(line: 1173, column: 14, scope: !741)
!774 = !DILocation(line: 1174, column: 20, scope: !741)
!775 = !DILocation(line: 1174, column: 19, scope: !741)
!776 = !DILocation(line: 1174, column: 2, scope: !741)
!777 = !DILocation(line: 1174, column: 7, scope: !741)
!778 = !DILocation(line: 1174, column: 17, scope: !741)
!779 = !DILocation(line: 1175, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !741, file: !4, line: 1175, column: 6)
!781 = !DILocation(line: 1175, column: 11, scope: !780)
!782 = !DILocation(line: 1175, column: 18, scope: !780)
!783 = !DILocation(line: 1175, column: 6, scope: !741)
!784 = !DILocation(line: 1176, column: 6, scope: !780)
!785 = !DILocation(line: 1176, column: 12, scope: !780)
!786 = !DILocation(line: 1176, column: 3, scope: !780)
!787 = !DILocation(line: 1178, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !4, line: 1178, column: 7)
!789 = distinct !DILexicalBlock(scope: !780, file: !4, line: 1177, column: 7)
!790 = !DILocation(line: 1178, column: 7, scope: !789)
!791 = !DILocation(line: 1179, column: 5, scope: !788)
!792 = !DILocation(line: 1179, column: 8, scope: !788)
!793 = !DILocation(line: 1179, column: 4, scope: !788)
!794 = !DILocation(line: 1181, column: 22, scope: !741)
!795 = !DILocation(line: 1181, column: 9, scope: !741)
!796 = !DILocation(line: 1181, column: 2, scope: !741)
!797 = !DILocation(line: 1182, column: 1, scope: !741)
!798 = distinct !DISubprogram(name: "genwqe_card_write_reg64", scope: !4, file: !4, line: 1189, type: !799, isLocal: false, isDefinition: true, scopeLine: 1190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!799 = !DISubroutineType(types: !800)
!800 = !{!274, !583, !266, !292}
!801 = !DILocalVariable(name: "dev", arg: 1, scope: !798, file: !4, line: 1189, type: !583)
!802 = !DILocation(line: 1189, column: 43, scope: !798)
!803 = !DILocalVariable(name: "offs", arg: 2, scope: !798, file: !4, line: 1189, type: !266)
!804 = !DILocation(line: 1189, column: 57, scope: !798)
!805 = !DILocalVariable(name: "val", arg: 3, scope: !798, file: !4, line: 1189, type: !292)
!806 = !DILocation(line: 1189, column: 72, scope: !798)
!807 = !DILocalVariable(name: "io", scope: !798, file: !4, line: 1191, type: !691)
!808 = !DILocation(line: 1191, column: 23, scope: !798)
!809 = !DILocation(line: 1193, column: 13, scope: !810)
!810 = distinct !DILexicalBlock(scope: !798, file: !4, line: 1193, column: 5)
!811 = !DILocation(line: 1193, column: 10, scope: !810)
!812 = !DILocation(line: 1193, column: 5, scope: !798)
!813 = !DILocation(line: 1194, column: 3, scope: !810)
!814 = !DILocation(line: 1196, column: 11, scope: !798)
!815 = !DILocation(line: 1196, column: 5, scope: !798)
!816 = !DILocation(line: 1196, column: 9, scope: !798)
!817 = !DILocation(line: 1197, column: 13, scope: !798)
!818 = !DILocation(line: 1197, column: 5, scope: !798)
!819 = !DILocation(line: 1197, column: 11, scope: !798)
!820 = !DILocation(line: 1198, column: 22, scope: !798)
!821 = !DILocation(line: 1198, column: 27, scope: !798)
!822 = !DILocation(line: 1198, column: 16, scope: !798)
!823 = !DILocation(line: 1198, column: 2, scope: !798)
!824 = !DILocation(line: 1198, column: 7, scope: !798)
!825 = !DILocation(line: 1198, column: 14, scope: !798)
!826 = !DILocation(line: 1199, column: 20, scope: !798)
!827 = !DILocation(line: 1199, column: 19, scope: !798)
!828 = !DILocation(line: 1199, column: 2, scope: !798)
!829 = !DILocation(line: 1199, column: 7, scope: !798)
!830 = !DILocation(line: 1199, column: 17, scope: !798)
!831 = !DILocation(line: 1200, column: 11, scope: !832)
!832 = distinct !DILexicalBlock(scope: !798, file: !4, line: 1200, column: 6)
!833 = !DILocation(line: 1200, column: 16, scope: !832)
!834 = !DILocation(line: 1200, column: 8, scope: !832)
!835 = !DILocation(line: 1200, column: 6, scope: !798)
!836 = !DILocation(line: 1201, column: 3, scope: !832)
!837 = !DILocation(line: 1202, column: 2, scope: !798)
!838 = !DILocation(line: 1203, column: 1, scope: !798)
!839 = distinct !DISubprogram(name: "genwqe_card_write_reg32", scope: !4, file: !4, line: 1213, type: !840, isLocal: false, isDefinition: true, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!840 = !DISubroutineType(types: !841)
!841 = !{!274, !583, !266, !266}
!842 = !DILocalVariable(name: "dev", arg: 1, scope: !839, file: !4, line: 1213, type: !583)
!843 = !DILocation(line: 1213, column: 43, scope: !839)
!844 = !DILocalVariable(name: "offs", arg: 2, scope: !839, file: !4, line: 1213, type: !266)
!845 = !DILocation(line: 1213, column: 57, scope: !839)
!846 = !DILocalVariable(name: "val", arg: 3, scope: !839, file: !4, line: 1213, type: !266)
!847 = !DILocation(line: 1213, column: 72, scope: !839)
!848 = !DILocalVariable(name: "io", scope: !839, file: !4, line: 1215, type: !691)
!849 = !DILocation(line: 1215, column: 23, scope: !839)
!850 = !DILocation(line: 1217, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !839, file: !4, line: 1217, column: 5)
!852 = !DILocation(line: 1217, column: 10, scope: !851)
!853 = !DILocation(line: 1217, column: 5, scope: !839)
!854 = !DILocation(line: 1218, column: 3, scope: !851)
!855 = !DILocation(line: 1220, column: 18, scope: !839)
!856 = !DILocation(line: 1220, column: 11, scope: !839)
!857 = !DILocation(line: 1220, column: 5, scope: !839)
!858 = !DILocation(line: 1220, column: 9, scope: !839)
!859 = !DILocation(line: 1221, column: 20, scope: !839)
!860 = !DILocation(line: 1221, column: 13, scope: !839)
!861 = !DILocation(line: 1221, column: 5, scope: !839)
!862 = !DILocation(line: 1221, column: 11, scope: !839)
!863 = !DILocation(line: 1222, column: 22, scope: !839)
!864 = !DILocation(line: 1222, column: 27, scope: !839)
!865 = !DILocation(line: 1222, column: 16, scope: !839)
!866 = !DILocation(line: 1222, column: 2, scope: !839)
!867 = !DILocation(line: 1222, column: 7, scope: !839)
!868 = !DILocation(line: 1222, column: 14, scope: !839)
!869 = !DILocation(line: 1223, column: 20, scope: !839)
!870 = !DILocation(line: 1223, column: 19, scope: !839)
!871 = !DILocation(line: 1223, column: 2, scope: !839)
!872 = !DILocation(line: 1223, column: 7, scope: !839)
!873 = !DILocation(line: 1223, column: 17, scope: !839)
!874 = !DILocation(line: 1224, column: 11, scope: !875)
!875 = distinct !DILexicalBlock(scope: !839, file: !4, line: 1224, column: 6)
!876 = !DILocation(line: 1224, column: 16, scope: !875)
!877 = !DILocation(line: 1224, column: 8, scope: !875)
!878 = !DILocation(line: 1224, column: 6, scope: !839)
!879 = !DILocation(line: 1225, column: 3, scope: !875)
!880 = !DILocation(line: 1226, column: 2, scope: !839)
!881 = !DILocation(line: 1227, column: 1, scope: !839)
!882 = distinct !DISubprogram(name: "genwqe_card_open", scope: !4, file: !4, line: 1241, type: !883, isLocal: false, isDefinition: true, scopeLine: 1243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!883 = !DISubroutineType(types: !884)
!884 = !{!583, !274, !274, !631, !292, !292}
!885 = !DILocalVariable(name: "card_no", arg: 1, scope: !882, file: !4, line: 1241, type: !274)
!886 = !DILocation(line: 1241, column: 36, scope: !882)
!887 = !DILocalVariable(name: "mode", arg: 2, scope: !882, file: !4, line: 1241, type: !274)
!888 = !DILocation(line: 1241, column: 49, scope: !882)
!889 = !DILocalVariable(name: "err_code", arg: 3, scope: !882, file: !4, line: 1241, type: !631)
!890 = !DILocation(line: 1241, column: 60, scope: !882)
!891 = !DILocalVariable(name: "card_app_id", arg: 4, scope: !882, file: !4, line: 1242, type: !292)
!892 = !DILocation(line: 1242, column: 20, scope: !882)
!893 = !DILocalVariable(name: "card_app_id_mask", arg: 5, scope: !882, file: !4, line: 1242, type: !292)
!894 = !DILocation(line: 1242, column: 42, scope: !882)
!895 = !DILocalVariable(name: "dev", scope: !882, file: !4, line: 1244, type: !583)
!896 = !DILocation(line: 1244, column: 16, scope: !882)
!897 = !DILocalVariable(name: "ld", scope: !882, file: !4, line: 1245, type: !311)
!898 = !DILocation(line: 1245, column: 21, scope: !882)
!899 = !DILocalVariable(name: "fd", scope: !882, file: !4, line: 1246, type: !274)
!900 = !DILocation(line: 1246, column: 6, scope: !882)
!901 = !DILocalVariable(name: "rc", scope: !882, file: !4, line: 1247, type: !274)
!902 = !DILocation(line: 1247, column: 6, scope: !882)
!903 = !DILocation(line: 1249, column: 22, scope: !882)
!904 = !DILocation(line: 1249, column: 26, scope: !882)
!905 = !DILocation(line: 1249, column: 2, scope: !882)
!906 = !DILocation(line: 1250, column: 2, scope: !882)
!907 = distinct !{!907, !906}
!908 = !DILocation(line: 1250, column: 11, scope: !909)
!909 = !DILexicalBlockFile(scope: !910, file: !4, discriminator: 1)
!910 = distinct !DILexicalBlock(scope: !911, file: !4, line: 1250, column: 11)
!911 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1250, column: 5)
!912 = !DILocation(line: 1250, column: 1, scope: !913)
!913 = !DILexicalBlockFile(scope: !910, file: !4, discriminator: 2)
!914 = !DILocation(line: 1250, column: 52, scope: !913)
!915 = !DILocation(line: 1250, column: 62, scope: !916)
!916 = !DILexicalBlockFile(scope: !913, file: !4, discriminator: 4)
!917 = !DILocation(line: 1250, column: 101, scope: !913)
!918 = !DILocation(line: 1250, column: 22, scope: !919)
!919 = !DILexicalBlockFile(scope: !913, file: !4, discriminator: 5)
!920 = !DILocation(line: 1250, column: 22, scope: !913)
!921 = !DILocation(line: 1250, column: 111, scope: !922)
!922 = !DILexicalBlockFile(scope: !911, file: !4, discriminator: 3)
!923 = !DILocation(line: 1252, column: 12, scope: !924)
!924 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1252, column: 6)
!925 = !DILocation(line: 1252, column: 9, scope: !924)
!926 = !DILocation(line: 1252, column: 6, scope: !882)
!927 = !DILocation(line: 1253, column: 20, scope: !924)
!928 = !DILocation(line: 1253, column: 49, scope: !924)
!929 = !DILocation(line: 1253, column: 9, scope: !924)
!930 = !DILocation(line: 1253, column: 7, scope: !924)
!931 = !DILocation(line: 1253, column: 3, scope: !924)
!932 = !DILocation(line: 1254, column: 24, scope: !924)
!933 = !DILocation(line: 1254, column: 53, scope: !924)
!934 = !DILocation(line: 1254, column: 13, scope: !924)
!935 = !DILocation(line: 1254, column: 11, scope: !924)
!936 = !DILocation(line: 1256, column: 24, scope: !882)
!937 = !DILocation(line: 1256, column: 2, scope: !882)
!938 = !DILocation(line: 1258, column: 13, scope: !939)
!939 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1258, column: 5)
!940 = !DILocation(line: 1258, column: 10, scope: !939)
!941 = !DILocation(line: 1258, column: 5, scope: !882)
!942 = !DILocation(line: 1259, column: 25, scope: !943)
!943 = distinct !DILexicalBlock(scope: !939, file: !4, line: 1258, column: 18)
!944 = !DILocation(line: 1259, column: 29, scope: !943)
!945 = !DILocation(line: 1259, column: 3, scope: !943)
!946 = !DILocation(line: 1260, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !4, line: 1260, column: 7)
!948 = !DILocation(line: 1260, column: 7, scope: !943)
!949 = !DILocation(line: 1261, column: 5, scope: !947)
!950 = !DILocation(line: 1261, column: 14, scope: !947)
!951 = !DILocation(line: 1261, column: 4, scope: !947)
!952 = !DILocation(line: 1262, column: 3, scope: !943)
!953 = !DILocation(line: 1264, column: 12, scope: !954)
!954 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1264, column: 6)
!955 = !DILocation(line: 1264, column: 9, scope: !954)
!956 = !DILocation(line: 1264, column: 6, scope: !882)
!957 = !DILocation(line: 1265, column: 26, scope: !954)
!958 = !DILocation(line: 1265, column: 8, scope: !954)
!959 = !DILocation(line: 1265, column: 6, scope: !954)
!960 = !DILocation(line: 1265, column: 3, scope: !954)
!961 = !DILocation(line: 1266, column: 30, scope: !954)
!962 = !DILocation(line: 1266, column: 12, scope: !954)
!963 = !DILocation(line: 1266, column: 10, scope: !954)
!964 = !DILocation(line: 1269, column: 12, scope: !965)
!965 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1269, column: 6)
!966 = !DILocation(line: 1269, column: 9, scope: !965)
!967 = !DILocation(line: 1269, column: 6, scope: !882)
!968 = !DILocation(line: 1270, column: 25, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !4, line: 1269, column: 16)
!970 = !DILocation(line: 1270, column: 30, scope: !969)
!971 = !DILocation(line: 1270, column: 43, scope: !969)
!972 = !DILocation(line: 1270, column: 8, scope: !969)
!973 = !DILocation(line: 1270, column: 6, scope: !969)
!974 = !DILocation(line: 1271, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !969, file: !4, line: 1271, column: 7)
!976 = !DILocation(line: 1271, column: 7, scope: !969)
!977 = !DILocation(line: 1272, column: 16, scope: !975)
!978 = !DILocation(line: 1272, column: 5, scope: !975)
!979 = !DILocation(line: 1272, column: 14, scope: !975)
!980 = !DILocation(line: 1272, column: 4, scope: !975)
!981 = !DILocation(line: 1273, column: 12, scope: !982)
!982 = distinct !DILexicalBlock(scope: !969, file: !4, line: 1273, column: 7)
!983 = !DILocation(line: 1273, column: 9, scope: !982)
!984 = !DILocation(line: 1273, column: 7, scope: !969)
!985 = !DILocation(line: 1274, column: 4, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !4, line: 1273, column: 16)
!987 = !DILocation(line: 1274, column: 9, scope: !986)
!988 = !DILocation(line: 1274, column: 19, scope: !986)
!989 = !DILocation(line: 1275, column: 4, scope: !986)
!990 = distinct !{!990, !989}
!991 = !DILocation(line: 1275, column: 13, scope: !992)
!992 = !DILexicalBlockFile(scope: !993, file: !4, discriminator: 1)
!993 = distinct !DILexicalBlock(scope: !994, file: !4, line: 1275, column: 13)
!994 = distinct !DILexicalBlock(scope: !986, file: !4, line: 1275, column: 7)
!995 = !DILocation(line: 1275, column: 3, scope: !996)
!996 = !DILexicalBlockFile(scope: !993, file: !4, discriminator: 2)
!997 = !DILocation(line: 1275, column: 61, scope: !996)
!998 = !DILocation(line: 1275, column: 71, scope: !999)
!999 = !DILexicalBlockFile(scope: !996, file: !4, discriminator: 4)
!1000 = !DILocation(line: 1275, column: 16, scope: !996)
!1001 = !DILocation(line: 1275, column: 25, scope: !996)
!1002 = !DILocation(line: 1275, column: 24, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !996, file: !4, discriminator: 5)
!1004 = !DILocation(line: 1275, column: 24, scope: !996)
!1005 = !DILocation(line: 1275, column: 31, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !994, file: !4, discriminator: 3)
!1007 = !DILocation(line: 1277, column: 26, scope: !986)
!1008 = !DILocation(line: 1277, column: 30, scope: !986)
!1009 = !DILocation(line: 1277, column: 4, scope: !986)
!1010 = !DILocation(line: 1278, column: 11, scope: !986)
!1011 = !DILocation(line: 1278, column: 4, scope: !986)
!1012 = !DILocation(line: 1280, column: 2, scope: !969)
!1013 = !DILocation(line: 1281, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1281, column: 6)
!1015 = !DILocation(line: 1281, column: 6, scope: !882)
!1016 = !DILocation(line: 1282, column: 4, scope: !1014)
!1017 = !DILocation(line: 1282, column: 13, scope: !1014)
!1018 = !DILocation(line: 1282, column: 3, scope: !1014)
!1019 = !DILocation(line: 1283, column: 2, scope: !882)
!1020 = distinct !{!1020, !1019}
!1021 = !DILocation(line: 1283, column: 11, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !4, discriminator: 1)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 1283, column: 11)
!1024 = distinct !DILexicalBlock(scope: !882, file: !4, line: 1283, column: 5)
!1025 = !DILocation(line: 1283, column: 1, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1023, file: !4, discriminator: 2)
!1027 = !DILocation(line: 1283, column: 65, scope: !1026)
!1028 = !DILocation(line: 1283, column: 75, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1026, file: !4, discriminator: 4)
!1030 = !DILocation(line: 1283, column: 14, scope: !1026)
!1031 = !DILocation(line: 1283, column: 19, scope: !1026)
!1032 = !DILocation(line: 1283, column: 28, scope: !1026)
!1033 = !DILocation(line: 1283, column: 22, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1026, file: !4, discriminator: 5)
!1035 = !DILocation(line: 1283, column: 22, scope: !1026)
!1036 = !DILocation(line: 1283, column: 33, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1024, file: !4, discriminator: 3)
!1038 = !DILocation(line: 1285, column: 20, scope: !882)
!1039 = !DILocation(line: 1285, column: 2, scope: !882)
!1040 = !DILocation(line: 1286, column: 24, scope: !882)
!1041 = !DILocation(line: 1286, column: 28, scope: !882)
!1042 = !DILocation(line: 1286, column: 2, scope: !882)
!1043 = !DILocation(line: 1287, column: 2, scope: !882)
!1044 = !DILocation(line: 1288, column: 1, scope: !882)
!1045 = distinct !DISubprogram(name: "gettid", scope: !1046, file: !1046, line: 35, type: !1047, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1046 = !DIFile(filename: "card_defs.h", directory: "/home/lichi/Desktop")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!307}
!1049 = !DILocation(line: 37, column: 16, scope: !1045)
!1050 = !DILocation(line: 37, column: 9, scope: !1045)
!1051 = !DILocation(line: 37, column: 2, scope: !1045)
!1052 = distinct !DISubprogram(name: "__node_add", scope: !4, file: !4, line: 514, type: !1053, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!281, !274, !1055, !274}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!1056 = !DILocalVariable(name: "card_no", arg: 1, scope: !1052, file: !4, line: 514, type: !274)
!1057 = !DILocation(line: 514, column: 42, scope: !1052)
!1058 = !DILocalVariable(name: "head", arg: 2, scope: !1052, file: !4, line: 515, type: !1055)
!1059 = !DILocation(line: 515, column: 10, scope: !1052)
!1060 = !DILocalVariable(name: "mode", arg: 3, scope: !1052, file: !4, line: 516, type: !274)
!1061 = !DILocation(line: 516, column: 7, scope: !1052)
!1062 = !DILocalVariable(name: "parent", scope: !1052, file: !4, line: 518, type: !281)
!1063 = !DILocation(line: 518, column: 21, scope: !1052)
!1064 = !DILocalVariable(name: "new_dev", scope: !1052, file: !4, line: 518, type: !281)
!1065 = !DILocation(line: 518, column: 30, scope: !1052)
!1066 = !DILocation(line: 520, column: 26, scope: !1052)
!1067 = !DILocation(line: 520, column: 35, scope: !1052)
!1068 = !DILocation(line: 520, column: 12, scope: !1052)
!1069 = !DILocation(line: 520, column: 10, scope: !1052)
!1070 = !DILocation(line: 521, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1052, file: !4, line: 521, column: 5)
!1072 = !DILocation(line: 521, column: 10, scope: !1071)
!1073 = !DILocation(line: 521, column: 5, scope: !1052)
!1074 = !DILocation(line: 522, column: 3, scope: !1071)
!1075 = !DILocation(line: 524, column: 32, scope: !1052)
!1076 = !DILocation(line: 524, column: 31, scope: !1052)
!1077 = !DILocation(line: 524, column: 11, scope: !1052)
!1078 = !DILocation(line: 524, column: 9, scope: !1052)
!1079 = !DILocation(line: 525, column: 14, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1052, file: !4, line: 525, column: 5)
!1081 = !DILocation(line: 525, column: 13, scope: !1080)
!1082 = !DILocation(line: 525, column: 10, scope: !1080)
!1083 = !DILocation(line: 525, column: 5, scope: !1052)
!1084 = !DILocation(line: 526, column: 18, scope: !1080)
!1085 = !DILocation(line: 526, column: 11, scope: !1080)
!1086 = !DILocation(line: 526, column: 4, scope: !1080)
!1087 = !DILocation(line: 526, column: 9, scope: !1080)
!1088 = !DILocation(line: 526, column: 3, scope: !1080)
!1089 = !DILocation(line: 528, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1080, file: !4, line: 527, column: 7)
!1091 = !DILocation(line: 528, column: 17, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1090, file: !4, discriminator: 1)
!1093 = !DILocation(line: 528, column: 25, scope: !1092)
!1094 = !DILocation(line: 528, column: 14, scope: !1092)
!1095 = !DILocation(line: 528, column: 3, scope: !1092)
!1096 = !DILocation(line: 529, column: 13, scope: !1090)
!1097 = !DILocation(line: 529, column: 21, scope: !1090)
!1098 = !DILocation(line: 529, column: 11, scope: !1090)
!1099 = !DILocation(line: 528, column: 3, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1090, file: !4, discriminator: 2)
!1101 = distinct !{!1101, !1089}
!1102 = !DILocation(line: 530, column: 18, scope: !1090)
!1103 = !DILocation(line: 530, column: 3, scope: !1090)
!1104 = !DILocation(line: 530, column: 11, scope: !1090)
!1105 = !DILocation(line: 530, column: 16, scope: !1090)
!1106 = !DILocation(line: 532, column: 18, scope: !1052)
!1107 = !DILocation(line: 532, column: 2, scope: !1052)
!1108 = !DILocation(line: 532, column: 11, scope: !1052)
!1109 = !DILocation(line: 532, column: 16, scope: !1052)
!1110 = !DILocation(line: 533, column: 9, scope: !1052)
!1111 = !DILocation(line: 533, column: 2, scope: !1052)
!1112 = !DILocation(line: 534, column: 1, scope: !1052)
!1113 = distinct !DISubprogram(name: "__health_thread_start", scope: !4, file: !4, line: 932, type: !1114, isLocal: true, isDefinition: true, scopeLine: 933, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!274, !311}
!1116 = !DILocalVariable(name: "ld", arg: 1, scope: !1113, file: !4, line: 932, type: !311)
!1117 = !DILocation(line: 932, column: 53, scope: !1113)
!1118 = !DILocalVariable(name: "rc", scope: !1113, file: !4, line: 934, type: !274)
!1119 = !DILocation(line: 934, column: 6, scope: !1113)
!1120 = !DILocation(line: 936, column: 23, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1113, file: !4, line: 936, column: 6)
!1122 = !DILocation(line: 936, column: 27, scope: !1121)
!1123 = !DILocation(line: 936, column: 20, scope: !1121)
!1124 = !DILocation(line: 936, column: 6, scope: !1113)
!1125 = !DILocation(line: 937, column: 3, scope: !1121)
!1126 = !DILocation(line: 939, column: 17, scope: !1113)
!1127 = !DILocation(line: 939, column: 21, scope: !1113)
!1128 = !DILocation(line: 939, column: 7, scope: !1113)
!1129 = !DILocation(line: 939, column: 5, scope: !1113)
!1130 = !DILocation(line: 940, column: 11, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1113, file: !4, line: 940, column: 6)
!1132 = !DILocation(line: 940, column: 8, scope: !1131)
!1133 = !DILocation(line: 940, column: 6, scope: !1113)
!1134 = !DILocation(line: 941, column: 3, scope: !1131)
!1135 = !DILocation(line: 943, column: 23, scope: !1113)
!1136 = !DILocation(line: 943, column: 27, scope: !1113)
!1137 = !DILocation(line: 943, column: 61, scope: !1113)
!1138 = !DILocation(line: 943, column: 7, scope: !1113)
!1139 = !DILocation(line: 943, column: 5, scope: !1113)
!1140 = !DILocation(line: 944, column: 11, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1113, file: !4, line: 944, column: 6)
!1142 = !DILocation(line: 944, column: 8, scope: !1141)
!1143 = !DILocation(line: 944, column: 6, scope: !1113)
!1144 = !DILocation(line: 945, column: 3, scope: !1141)
!1145 = !DILocation(line: 954, column: 2, scope: !1113)
!1146 = !DILocation(line: 957, column: 2, scope: !1113)
!1147 = !DILocation(line: 957, column: 6, scope: !1113)
!1148 = !DILocation(line: 957, column: 16, scope: !1113)
!1149 = !DILocation(line: 958, column: 1, scope: !1113)
!1150 = !DILocation(line: 958, column: 51, scope: !1113)
!1151 = !DILocation(line: 958, column: 61, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1113, file: !4, discriminator: 1)
!1153 = !DILocation(line: 958, column: 99, scope: !1113)
!1154 = !DILocation(line: 958, column: 2, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1113, file: !4, discriminator: 2)
!1156 = !DILocation(line: 959, column: 2, scope: !1113)
!1157 = !DILocation(line: 960, column: 1, scope: !1113)
!1158 = distinct !DISubprogram(name: "__genwqe_open_all", scope: !4, file: !4, line: 1001, type: !1159, isLocal: true, isDefinition: true, scopeLine: 1002, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!274, !281}
!1161 = !DILocalVariable(name: "dev", arg: 1, scope: !1158, file: !4, line: 1001, type: !281)
!1162 = !DILocation(line: 1001, column: 49, scope: !1158)
!1163 = !DILocalVariable(name: "cards", scope: !1158, file: !4, line: 1003, type: !274)
!1164 = !DILocation(line: 1003, column: 6, scope: !1158)
!1165 = !DILocalVariable(name: "ld", scope: !1158, file: !4, line: 1004, type: !311)
!1166 = !DILocation(line: 1004, column: 21, scope: !1158)
!1167 = !DILocalVariable(name: "fd", scope: !1158, file: !4, line: 1005, type: !274)
!1168 = !DILocation(line: 1005, column: 6, scope: !1158)
!1169 = !DILocation(line: 1008, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1158, file: !4, line: 1008, column: 6)
!1171 = !DILocation(line: 1008, column: 16, scope: !1170)
!1172 = !DILocation(line: 1008, column: 9, scope: !1170)
!1173 = !DILocation(line: 1008, column: 6, scope: !1158)
!1174 = !DILocation(line: 1009, column: 21, scope: !1170)
!1175 = !DILocation(line: 1009, column: 26, scope: !1170)
!1176 = !DILocation(line: 1009, column: 3, scope: !1170)
!1177 = !DILocation(line: 1009, column: 7, scope: !1170)
!1178 = !DILocation(line: 1009, column: 19, scope: !1170)
!1179 = !DILocation(line: 1011, column: 11, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !4, line: 1011, column: 11)
!1181 = !DILocation(line: 1011, column: 15, scope: !1180)
!1182 = !DILocation(line: 1011, column: 30, scope: !1180)
!1183 = !DILocation(line: 1011, column: 35, scope: !1180)
!1184 = !DILocation(line: 1011, column: 27, scope: !1180)
!1185 = !DILocation(line: 1011, column: 11, scope: !1170)
!1186 = !DILocation(line: 1012, column: 15, scope: !1180)
!1187 = !DILocation(line: 1012, column: 19, scope: !1180)
!1188 = !DILocation(line: 1012, column: 3, scope: !1180)
!1189 = !DILocation(line: 1012, column: 8, scope: !1180)
!1190 = !DILocation(line: 1012, column: 13, scope: !1180)
!1191 = !DILocation(line: 1015, column: 23, scope: !1158)
!1192 = !DILocation(line: 1015, column: 10, scope: !1158)
!1193 = !DILocation(line: 1015, column: 8, scope: !1158)
!1194 = !DILocation(line: 1016, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1158, file: !4, line: 1016, column: 6)
!1196 = !DILocation(line: 1016, column: 6, scope: !1158)
!1197 = !DILocation(line: 1017, column: 20, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !4, line: 1016, column: 13)
!1199 = !DILocation(line: 1017, column: 8, scope: !1198)
!1200 = !DILocation(line: 1017, column: 6, scope: !1198)
!1201 = !DILocation(line: 1018, column: 3, scope: !1198)
!1202 = distinct !{!1202, !1201}
!1203 = !DILocation(line: 1018, column: 12, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1205, file: !4, discriminator: 1)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !4, line: 1018, column: 12)
!1206 = distinct !DILexicalBlock(scope: !1198, file: !4, line: 1018, column: 6)
!1207 = !DILocation(line: 1018, column: 2, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1205, file: !4, discriminator: 2)
!1209 = !DILocation(line: 1018, column: 79, scope: !1208)
!1210 = !DILocation(line: 1018, column: 89, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1208, file: !4, discriminator: 4)
!1212 = !DILocation(line: 1018, column: 15, scope: !1208)
!1213 = !DILocation(line: 1018, column: 22, scope: !1208)
!1214 = !DILocation(line: 1018, column: 26, scope: !1208)
!1215 = !DILocation(line: 1018, column: 38, scope: !1208)
!1216 = !DILocation(line: 1018, column: 23, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1208, file: !4, discriminator: 5)
!1218 = !DILocation(line: 1018, column: 23, scope: !1208)
!1219 = !DILocation(line: 1018, column: 43, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1206, file: !4, discriminator: 3)
!1221 = !DILocation(line: 1020, column: 15, scope: !1198)
!1222 = !DILocation(line: 1020, column: 3, scope: !1198)
!1223 = !DILocation(line: 1020, column: 8, scope: !1198)
!1224 = !DILocation(line: 1020, column: 13, scope: !1198)
!1225 = !DILocation(line: 1021, column: 18, scope: !1198)
!1226 = !DILocation(line: 1021, column: 3, scope: !1198)
!1227 = !DILocation(line: 1023, column: 20, scope: !1198)
!1228 = !DILocation(line: 1023, column: 3, scope: !1198)
!1229 = !DILocation(line: 1024, column: 2, scope: !1198)
!1230 = !DILocation(line: 1025, column: 9, scope: !1158)
!1231 = !DILocation(line: 1025, column: 2, scope: !1158)
!1232 = distinct !DISubprogram(name: "__genwqe_open_one", scope: !4, file: !4, line: 976, type: !1159, isLocal: true, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1233 = !DILocalVariable(name: "dev", arg: 1, scope: !1232, file: !4, line: 976, type: !281)
!1234 = !DILocation(line: 976, column: 49, scope: !1232)
!1235 = !DILocalVariable(name: "card_no_masked", scope: !1232, file: !4, line: 978, type: !274)
!1236 = !DILocation(line: 978, column: 6, scope: !1232)
!1237 = !DILocation(line: 978, column: 23, scope: !1232)
!1238 = !DILocation(line: 978, column: 28, scope: !1232)
!1239 = !DILocation(line: 978, column: 36, scope: !1232)
!1240 = !DILocalVariable(name: "fd", scope: !1232, file: !4, line: 979, type: !274)
!1241 = !DILocation(line: 979, column: 6, scope: !1232)
!1242 = !DILocalVariable(name: "ld", scope: !1232, file: !4, line: 980, type: !311)
!1243 = !DILocation(line: 980, column: 21, scope: !1232)
!1244 = !DILocation(line: 982, column: 25, scope: !1232)
!1245 = !DILocation(line: 982, column: 41, scope: !1232)
!1246 = !DILocation(line: 982, column: 46, scope: !1232)
!1247 = !DILocation(line: 982, column: 7, scope: !1232)
!1248 = !DILocation(line: 982, column: 5, scope: !1232)
!1249 = !DILocation(line: 983, column: 20, scope: !1232)
!1250 = !DILocation(line: 983, column: 19, scope: !1232)
!1251 = !DILocation(line: 983, column: 2, scope: !1232)
!1252 = !DILocation(line: 983, column: 7, scope: !1232)
!1253 = !DILocation(line: 983, column: 17, scope: !1232)
!1254 = !DILocation(line: 984, column: 12, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1232, file: !4, line: 984, column: 6)
!1256 = !DILocation(line: 984, column: 9, scope: !1255)
!1257 = !DILocation(line: 984, column: 6, scope: !1232)
!1258 = !DILocation(line: 985, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !4, line: 984, column: 16)
!1260 = !DILocation(line: 985, column: 3, scope: !1259)
!1261 = !DILocation(line: 985, column: 8, scope: !1259)
!1262 = !DILocation(line: 985, column: 15, scope: !1259)
!1263 = !DILocation(line: 986, column: 15, scope: !1259)
!1264 = !DILocation(line: 986, column: 3, scope: !1259)
!1265 = !DILocation(line: 986, column: 8, scope: !1259)
!1266 = !DILocation(line: 986, column: 13, scope: !1259)
!1267 = !DILocation(line: 987, column: 18, scope: !1259)
!1268 = !DILocation(line: 987, column: 3, scope: !1259)
!1269 = !DILocation(line: 988, column: 3, scope: !1259)
!1270 = !DILocation(line: 988, column: 7, scope: !1259)
!1271 = !DILocation(line: 988, column: 17, scope: !1259)
!1272 = !DILocation(line: 989, column: 10, scope: !1259)
!1273 = !DILocation(line: 989, column: 3, scope: !1259)
!1274 = !DILocation(line: 991, column: 2, scope: !1232)
!1275 = !DILocation(line: 992, column: 1, scope: !1232)
!1276 = distinct !DISubprogram(name: "__card_check_app", scope: !4, file: !4, line: 1033, type: !1277, isLocal: true, isDefinition: true, scopeLine: 1035, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!274, !281, !292, !292}
!1279 = !DILocalVariable(name: "dev", arg: 1, scope: !1276, file: !4, line: 1033, type: !281)
!1280 = !DILocation(line: 1033, column: 48, scope: !1276)
!1281 = !DILocalVariable(name: "app_id", arg: 2, scope: !1276, file: !4, line: 1034, type: !292)
!1282 = !DILocation(line: 1034, column: 12, scope: !1276)
!1283 = !DILocalVariable(name: "mask", arg: 3, scope: !1276, file: !4, line: 1034, type: !292)
!1284 = !DILocation(line: 1034, column: 29, scope: !1276)
!1285 = !DILocation(line: 1036, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1276, file: !4, line: 1036, column: 6)
!1287 = !DILocation(line: 1036, column: 12, scope: !1286)
!1288 = !DILocation(line: 1036, column: 21, scope: !1286)
!1289 = !DILocation(line: 1036, column: 19, scope: !1286)
!1290 = !DILocation(line: 1036, column: 31, scope: !1286)
!1291 = !DILocation(line: 1036, column: 40, scope: !1286)
!1292 = !DILocation(line: 1036, column: 38, scope: !1286)
!1293 = !DILocation(line: 1036, column: 27, scope: !1286)
!1294 = !DILocation(line: 1036, column: 6, scope: !1276)
!1295 = !DILocation(line: 1037, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1286, file: !4, line: 1036, column: 47)
!1297 = distinct !{!1297, !1295}
!1298 = !DILocation(line: 1037, column: 12, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !4, discriminator: 1)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !4, line: 1037, column: 12)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !4, line: 1037, column: 6)
!1302 = !DILocation(line: 1037, column: 2, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1300, file: !4, discriminator: 2)
!1304 = !DILocation(line: 1037, column: 98, scope: !1303)
!1305 = !DILocation(line: 1037, column: 108, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1303, file: !4, discriminator: 4)
!1307 = !DILocation(line: 1037, column: 25, scope: !1303)
!1308 = !DILocation(line: 1037, column: 30, scope: !1303)
!1309 = !DILocation(line: 1037, column: 58, scope: !1303)
!1310 = !DILocation(line: 1037, column: 86, scope: !1303)
!1311 = !DILocation(line: 1037, column: 92, scope: !1303)
!1312 = !DILocation(line: 1037, column: 97, scope: !1303)
!1313 = !DILocation(line: 1037, column: 23, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1303, file: !4, discriminator: 5)
!1315 = !DILocation(line: 1037, column: 23, scope: !1303)
!1316 = !DILocation(line: 1037, column: 104, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1301, file: !4, discriminator: 3)
!1318 = !DILocation(line: 1042, column: 3, scope: !1296)
!1319 = !DILocation(line: 1044, column: 2, scope: !1276)
!1320 = !DILocation(line: 1045, column: 1, scope: !1276)
!1321 = distinct !DISubprogram(name: "genwqe_card_close", scope: !4, file: !4, line: 1298, type: !581, isLocal: false, isDefinition: true, scopeLine: 1299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1322 = !DILocalVariable(name: "dev", arg: 1, scope: !1321, file: !4, line: 1298, type: !583)
!1323 = !DILocation(line: 1298, column: 37, scope: !1321)
!1324 = !DILocalVariable(name: "ld", scope: !1321, file: !4, line: 1300, type: !311)
!1325 = !DILocation(line: 1300, column: 21, scope: !1321)
!1326 = !DILocalVariable(name: "rc", scope: !1321, file: !4, line: 1301, type: !274)
!1327 = !DILocation(line: 1301, column: 6, scope: !1321)
!1328 = !DILocation(line: 1303, column: 6, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1321, file: !4, line: 1303, column: 6)
!1330 = !DILocation(line: 1303, column: 6, scope: !1321)
!1331 = !DILocation(line: 1304, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !4, line: 1304, column: 7)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !4, line: 1303, column: 11)
!1334 = !DILocation(line: 1304, column: 12, scope: !1332)
!1335 = !DILocation(line: 1304, column: 22, scope: !1332)
!1336 = !DILocation(line: 1304, column: 19, scope: !1332)
!1337 = !DILocation(line: 1304, column: 7, scope: !1333)
!1338 = !DILocation(line: 1305, column: 4, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1332, file: !4, line: 1304, column: 27)
!1340 = !DILocation(line: 1305, column: 9, scope: !1339)
!1341 = !DILocation(line: 1305, column: 19, scope: !1339)
!1342 = !DILocation(line: 1306, column: 4, scope: !1339)
!1343 = distinct !{!1343, !1342}
!1344 = !DILocation(line: 1306, column: 13, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !4, discriminator: 1)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !4, line: 1306, column: 13)
!1347 = distinct !DILexicalBlock(scope: !1339, file: !4, line: 1306, column: 7)
!1348 = !DILocation(line: 1306, column: 3, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1346, file: !4, discriminator: 2)
!1350 = !DILocation(line: 1306, column: 57, scope: !1349)
!1351 = !DILocation(line: 1306, column: 67, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1349, file: !4, discriminator: 4)
!1353 = !DILocation(line: 1306, column: 16, scope: !1349)
!1354 = !DILocation(line: 1306, column: 21, scope: !1349)
!1355 = !DILocation(line: 1306, column: 26, scope: !1349)
!1356 = !DILocation(line: 1306, column: 24, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1349, file: !4, discriminator: 5)
!1358 = !DILocation(line: 1306, column: 24, scope: !1349)
!1359 = !DILocation(line: 1306, column: 33, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1347, file: !4, discriminator: 3)
!1361 = !DILocation(line: 1308, column: 14, scope: !1339)
!1362 = !DILocation(line: 1308, column: 18, scope: !1339)
!1363 = !DILocation(line: 1308, column: 4, scope: !1339)
!1364 = !DILocation(line: 1309, column: 7, scope: !1339)
!1365 = !DILocation(line: 1310, column: 3, scope: !1339)
!1366 = !DILocation(line: 1311, column: 2, scope: !1333)
!1367 = !DILocation(line: 1312, column: 9, scope: !1321)
!1368 = !DILocation(line: 1312, column: 2, scope: !1321)
!1369 = distinct !DISubprogram(name: "genwqe_card_fileno", scope: !4, file: !4, line: 1322, type: !581, isLocal: false, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1370 = !DILocalVariable(name: "dev", arg: 1, scope: !1369, file: !4, line: 1322, type: !583)
!1371 = !DILocation(line: 1322, column: 38, scope: !1369)
!1372 = !DILocalVariable(name: "fd", scope: !1369, file: !4, line: 1324, type: !274)
!1373 = !DILocation(line: 1324, column: 6, scope: !1369)
!1374 = !DILocation(line: 1326, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1369, file: !4, line: 1326, column: 6)
!1376 = !DILocation(line: 1326, column: 6, scope: !1369)
!1377 = !DILocation(line: 1327, column: 17, scope: !1375)
!1378 = !DILocation(line: 1327, column: 8, scope: !1375)
!1379 = !DILocation(line: 1327, column: 6, scope: !1375)
!1380 = !DILocation(line: 1327, column: 3, scope: !1375)
!1381 = !DILocation(line: 1328, column: 9, scope: !1369)
!1382 = !DILocation(line: 1328, column: 2, scope: !1369)
!1383 = distinct !DISubprogram(name: "genwqe_pin_memory", scope: !4, file: !4, line: 1346, type: !1384, isLocal: false, isDefinition: true, scopeLine: 1348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!274, !583, !1386, !279, !274}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1388 = !DILocalVariable(name: "dev", arg: 1, scope: !1383, file: !4, line: 1346, type: !583)
!1389 = !DILocation(line: 1346, column: 37, scope: !1383)
!1390 = !DILocalVariable(name: "addr", arg: 2, scope: !1383, file: !4, line: 1346, type: !1386)
!1391 = !DILocation(line: 1346, column: 54, scope: !1383)
!1392 = !DILocalVariable(name: "size", arg: 3, scope: !1383, file: !4, line: 1346, type: !279)
!1393 = !DILocation(line: 1346, column: 67, scope: !1383)
!1394 = !DILocalVariable(name: "direction", arg: 4, scope: !1383, file: !4, line: 1347, type: !274)
!1395 = !DILocation(line: 1347, column: 12, scope: !1383)
!1396 = !DILocalVariable(name: "rc", scope: !1383, file: !4, line: 1349, type: !274)
!1397 = !DILocation(line: 1349, column: 6, scope: !1383)
!1398 = !DILocalVariable(name: "fd", scope: !1383, file: !4, line: 1349, type: !274)
!1399 = !DILocation(line: 1349, column: 10, scope: !1383)
!1400 = !DILocalVariable(name: "m", scope: !1383, file: !4, line: 1350, type: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_mem", file: !11, line: 482, size: 256, align: 64, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1401, file: !11, line: 483, baseType: !269, size: 64, align: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1401, file: !11, line: 484, baseType: !269, size: 64, align: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1401, file: !11, line: 485, baseType: !269, size: 64, align: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !11, line: 486, baseType: !269, size: 64, align: 64, offset: 192)
!1407 = !DILocation(line: 1350, column: 20, scope: !1383)
!1408 = !DILocation(line: 1352, column: 26, scope: !1383)
!1409 = !DILocation(line: 1352, column: 11, scope: !1383)
!1410 = !DILocation(line: 1352, column: 4, scope: !1383)
!1411 = !DILocation(line: 1352, column: 9, scope: !1383)
!1412 = !DILocation(line: 1353, column: 11, scope: !1383)
!1413 = !DILocation(line: 1353, column: 4, scope: !1383)
!1414 = !DILocation(line: 1353, column: 9, scope: !1383)
!1415 = !DILocation(line: 1354, column: 16, scope: !1383)
!1416 = !DILocation(line: 1354, column: 4, scope: !1383)
!1417 = !DILocation(line: 1354, column: 14, scope: !1383)
!1418 = !DILocation(line: 1356, column: 2, scope: !1383)
!1419 = distinct !{!1419, !1418}
!1420 = !DILocation(line: 1356, column: 11, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !4, discriminator: 1)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !4, line: 1356, column: 11)
!1423 = distinct !DILexicalBlock(scope: !1383, file: !4, line: 1356, column: 5)
!1424 = !DILocation(line: 1356, column: 1, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1422, file: !4, discriminator: 2)
!1426 = !DILocation(line: 1356, column: 78, scope: !1425)
!1427 = !DILocation(line: 1356, column: 88, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1425, file: !4, discriminator: 4)
!1429 = !DILocation(line: 1356, column: 19, scope: !1425)
!1430 = !DILocation(line: 1356, column: 4, scope: !1425)
!1431 = !DILocation(line: 1356, column: 40, scope: !1425)
!1432 = !DILocation(line: 1356, column: 46, scope: !1425)
!1433 = !DILocation(line: 1356, column: 57, scope: !1425)
!1434 = !DILocation(line: 1356, column: 22, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1425, file: !4, discriminator: 5)
!1436 = !DILocation(line: 1356, column: 22, scope: !1425)
!1437 = !DILocation(line: 1356, column: 63, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1423, file: !4, discriminator: 3)
!1439 = !DILocation(line: 1358, column: 6, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1383, file: !4, line: 1358, column: 6)
!1441 = !DILocation(line: 1358, column: 6, scope: !1383)
!1442 = !DILocation(line: 1359, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !4, line: 1359, column: 7)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !4, line: 1358, column: 11)
!1445 = !DILocation(line: 1359, column: 14, scope: !1443)
!1446 = !DILocation(line: 1359, column: 19, scope: !1443)
!1447 = !DILocation(line: 1359, column: 11, scope: !1443)
!1448 = !DILocation(line: 1359, column: 7, scope: !1444)
!1449 = !DILocation(line: 1360, column: 18, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1443, file: !4, line: 1359, column: 27)
!1451 = !DILocation(line: 1360, column: 9, scope: !1450)
!1452 = !DILocation(line: 1360, column: 7, scope: !1450)
!1453 = !DILocation(line: 1361, column: 4, scope: !1450)
!1454 = distinct !{!1454, !1453}
!1455 = !DILocation(line: 1361, column: 13, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1457, file: !4, discriminator: 1)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !4, line: 1361, column: 13)
!1458 = distinct !DILexicalBlock(scope: !1450, file: !4, line: 1361, column: 7)
!1459 = !DILocation(line: 1361, column: 3, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1457, file: !4, discriminator: 2)
!1461 = !DILocation(line: 1361, column: 44, scope: !1460)
!1462 = !DILocation(line: 1361, column: 54, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1460, file: !4, discriminator: 4)
!1464 = !DILocation(line: 1361, column: 83, scope: !1460)
!1465 = !DILocation(line: 1361, column: 88, scope: !1460)
!1466 = !DILocation(line: 1361, column: 24, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1460, file: !4, discriminator: 5)
!1468 = !DILocation(line: 1361, column: 24, scope: !1460)
!1469 = !DILocation(line: 1361, column: 98, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1458, file: !4, discriminator: 3)
!1471 = !DILocation(line: 1362, column: 29, scope: !1450)
!1472 = !DILocation(line: 1362, column: 23, scope: !1450)
!1473 = !DILocation(line: 1362, column: 21, scope: !1450)
!1474 = !DILocation(line: 1362, column: 4, scope: !1450)
!1475 = !DILocation(line: 1362, column: 9, scope: !1450)
!1476 = !DILocation(line: 1362, column: 16, scope: !1450)
!1477 = !DILocation(line: 1363, column: 22, scope: !1450)
!1478 = !DILocation(line: 1363, column: 21, scope: !1450)
!1479 = !DILocation(line: 1363, column: 4, scope: !1450)
!1480 = !DILocation(line: 1363, column: 9, scope: !1450)
!1481 = !DILocation(line: 1363, column: 19, scope: !1450)
!1482 = !DILocation(line: 1364, column: 13, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1450, file: !4, line: 1364, column: 8)
!1484 = !DILocation(line: 1364, column: 10, scope: !1483)
!1485 = !DILocation(line: 1364, column: 8, scope: !1450)
!1486 = !DILocation(line: 1365, column: 5, scope: !1483)
!1487 = !DILocation(line: 1366, column: 3, scope: !1450)
!1488 = !DILocation(line: 1367, column: 2, scope: !1444)
!1489 = !DILocation(line: 1367, column: 79, scope: !1444)
!1490 = !DILocation(line: 1367, column: 89, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1444, file: !4, discriminator: 1)
!1492 = !DILocation(line: 1367, column: 5, scope: !1444)
!1493 = !DILocation(line: 1367, column: 10, scope: !1444)
!1494 = !DILocation(line: 1367, column: 15, scope: !1444)
!1495 = !DILocation(line: 1367, column: 26, scope: !1444)
!1496 = !DILocation(line: 1367, column: 43, scope: !1444)
!1497 = !DILocation(line: 1367, column: 49, scope: !1444)
!1498 = !DILocation(line: 1367, column: 3, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1444, file: !4, discriminator: 2)
!1500 = !DILocation(line: 1369, column: 2, scope: !1444)
!1501 = !DILocation(line: 1370, column: 2, scope: !1383)
!1502 = !DILocation(line: 1371, column: 1, scope: !1383)
!1503 = distinct !DISubprogram(name: "genwqe_unpin_memory", scope: !4, file: !4, line: 1373, type: !1504, isLocal: false, isDefinition: true, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!274, !583, !1386, !279}
!1506 = !DILocalVariable(name: "dev", arg: 1, scope: !1503, file: !4, line: 1373, type: !583)
!1507 = !DILocation(line: 1373, column: 39, scope: !1503)
!1508 = !DILocalVariable(name: "addr", arg: 2, scope: !1503, file: !4, line: 1373, type: !1386)
!1509 = !DILocation(line: 1373, column: 56, scope: !1503)
!1510 = !DILocalVariable(name: "size", arg: 3, scope: !1503, file: !4, line: 1373, type: !279)
!1511 = !DILocation(line: 1373, column: 69, scope: !1503)
!1512 = !DILocalVariable(name: "rc", scope: !1503, file: !4, line: 1375, type: !274)
!1513 = !DILocation(line: 1375, column: 6, scope: !1503)
!1514 = !DILocalVariable(name: "fd", scope: !1503, file: !4, line: 1375, type: !274)
!1515 = !DILocation(line: 1375, column: 10, scope: !1503)
!1516 = !DILocalVariable(name: "m", scope: !1503, file: !4, line: 1376, type: !1401)
!1517 = !DILocation(line: 1376, column: 20, scope: !1503)
!1518 = !DILocation(line: 1378, column: 26, scope: !1503)
!1519 = !DILocation(line: 1378, column: 11, scope: !1503)
!1520 = !DILocation(line: 1378, column: 4, scope: !1503)
!1521 = !DILocation(line: 1378, column: 9, scope: !1503)
!1522 = !DILocation(line: 1379, column: 11, scope: !1503)
!1523 = !DILocation(line: 1379, column: 4, scope: !1503)
!1524 = !DILocation(line: 1379, column: 9, scope: !1503)
!1525 = !DILocation(line: 1380, column: 4, scope: !1503)
!1526 = !DILocation(line: 1380, column: 14, scope: !1503)
!1527 = !DILocation(line: 1382, column: 2, scope: !1503)
!1528 = distinct !{!1528, !1527}
!1529 = !DILocation(line: 1382, column: 11, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1531, file: !4, discriminator: 1)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !4, line: 1382, column: 11)
!1532 = distinct !DILexicalBlock(scope: !1503, file: !4, line: 1382, column: 5)
!1533 = !DILocation(line: 1382, column: 1, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1531, file: !4, discriminator: 2)
!1535 = !DILocation(line: 1382, column: 70, scope: !1534)
!1536 = !DILocation(line: 1382, column: 80, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1534, file: !4, discriminator: 4)
!1538 = !DILocation(line: 1382, column: 19, scope: !1534)
!1539 = !DILocation(line: 1382, column: 4, scope: !1534)
!1540 = !DILocation(line: 1382, column: 40, scope: !1534)
!1541 = !DILocation(line: 1382, column: 46, scope: !1534)
!1542 = !DILocation(line: 1382, column: 22, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1534, file: !4, discriminator: 5)
!1544 = !DILocation(line: 1382, column: 22, scope: !1534)
!1545 = !DILocation(line: 1382, column: 52, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1532, file: !4, discriminator: 3)
!1547 = !DILocation(line: 1384, column: 6, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1503, file: !4, line: 1384, column: 6)
!1549 = !DILocation(line: 1384, column: 6, scope: !1503)
!1550 = !DILocation(line: 1385, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !4, line: 1385, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !4, line: 1384, column: 11)
!1553 = !DILocation(line: 1385, column: 14, scope: !1551)
!1554 = !DILocation(line: 1385, column: 19, scope: !1551)
!1555 = !DILocation(line: 1385, column: 11, scope: !1551)
!1556 = !DILocation(line: 1385, column: 7, scope: !1552)
!1557 = !DILocation(line: 1386, column: 18, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1551, file: !4, line: 1385, column: 27)
!1559 = !DILocation(line: 1386, column: 9, scope: !1558)
!1560 = !DILocation(line: 1386, column: 7, scope: !1558)
!1561 = !DILocation(line: 1387, column: 4, scope: !1558)
!1562 = distinct !{!1562, !1561}
!1563 = !DILocation(line: 1387, column: 13, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1565, file: !4, discriminator: 1)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !4, line: 1387, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !4, line: 1387, column: 7)
!1567 = !DILocation(line: 1387, column: 3, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1565, file: !4, discriminator: 2)
!1569 = !DILocation(line: 1387, column: 50, scope: !1568)
!1570 = !DILocation(line: 1387, column: 60, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1568, file: !4, discriminator: 4)
!1572 = !DILocation(line: 1387, column: 89, scope: !1568)
!1573 = !DILocation(line: 1387, column: 94, scope: !1568)
!1574 = !DILocation(line: 1387, column: 103, scope: !1568)
!1575 = !DILocation(line: 1387, column: 24, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1568, file: !4, discriminator: 5)
!1577 = !DILocation(line: 1387, column: 24, scope: !1568)
!1578 = !DILocation(line: 1387, column: 108, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1566, file: !4, discriminator: 3)
!1580 = !DILocation(line: 1388, column: 29, scope: !1558)
!1581 = !DILocation(line: 1388, column: 23, scope: !1558)
!1582 = !DILocation(line: 1388, column: 21, scope: !1558)
!1583 = !DILocation(line: 1388, column: 4, scope: !1558)
!1584 = !DILocation(line: 1388, column: 9, scope: !1558)
!1585 = !DILocation(line: 1388, column: 16, scope: !1558)
!1586 = !DILocation(line: 1389, column: 22, scope: !1558)
!1587 = !DILocation(line: 1389, column: 21, scope: !1558)
!1588 = !DILocation(line: 1389, column: 4, scope: !1558)
!1589 = !DILocation(line: 1389, column: 9, scope: !1558)
!1590 = !DILocation(line: 1389, column: 19, scope: !1558)
!1591 = !DILocation(line: 1390, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1558, file: !4, line: 1390, column: 8)
!1593 = !DILocation(line: 1390, column: 10, scope: !1592)
!1594 = !DILocation(line: 1390, column: 8, scope: !1558)
!1595 = !DILocation(line: 1391, column: 5, scope: !1592)
!1596 = !DILocation(line: 1392, column: 3, scope: !1558)
!1597 = !DILocation(line: 1393, column: 2, scope: !1552)
!1598 = !DILocation(line: 1393, column: 72, scope: !1552)
!1599 = !DILocation(line: 1393, column: 82, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1552, file: !4, discriminator: 1)
!1601 = !DILocation(line: 1393, column: 5, scope: !1552)
!1602 = !DILocation(line: 1393, column: 10, scope: !1552)
!1603 = !DILocation(line: 1393, column: 15, scope: !1552)
!1604 = !DILocation(line: 1393, column: 26, scope: !1552)
!1605 = !DILocation(line: 1393, column: 43, scope: !1552)
!1606 = !DILocation(line: 1393, column: 3, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1552, file: !4, discriminator: 2)
!1608 = !DILocation(line: 1395, column: 2, scope: !1552)
!1609 = !DILocation(line: 1396, column: 2, scope: !1503)
!1610 = !DILocation(line: 1397, column: 1, scope: !1503)
!1611 = distinct !DISubprogram(name: "genwqe_card_execute_raw_ddcb", scope: !4, file: !4, line: 1476, type: !1612, isLocal: false, isDefinition: true, scopeLine: 1478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!274, !583, !384}
!1614 = !DILocalVariable(name: "dev", arg: 1, scope: !1611, file: !4, line: 1476, type: !583)
!1615 = !DILocation(line: 1476, column: 48, scope: !1611)
!1616 = !DILocalVariable(name: "req", arg: 2, scope: !1611, file: !4, line: 1477, type: !384)
!1617 = !DILocation(line: 1477, column: 30, scope: !1611)
!1618 = !DILocation(line: 1479, column: 31, scope: !1611)
!1619 = !DILocation(line: 1479, column: 36, scope: !1611)
!1620 = !DILocation(line: 1479, column: 9, scope: !1611)
!1621 = !DILocation(line: 1479, column: 2, scope: !1611)
!1622 = distinct !DISubprogram(name: "__genwqe_card_execute", scope: !4, file: !4, line: 1399, type: !1623, isLocal: true, isDefinition: true, scopeLine: 1401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!274, !583, !384, !274}
!1625 = !DILocalVariable(name: "dev", arg: 1, scope: !1622, file: !4, line: 1399, type: !583)
!1626 = !DILocation(line: 1399, column: 48, scope: !1622)
!1627 = !DILocalVariable(name: "req", arg: 2, scope: !1622, file: !4, line: 1400, type: !384)
!1628 = !DILocation(line: 1400, column: 30, scope: !1622)
!1629 = !DILocalVariable(name: "func", arg: 3, scope: !1622, file: !4, line: 1400, type: !274)
!1630 = !DILocation(line: 1400, column: 39, scope: !1622)
!1631 = !DILocalVariable(name: "rc", scope: !1622, file: !4, line: 1402, type: !274)
!1632 = !DILocation(line: 1402, column: 6, scope: !1622)
!1633 = !DILocalVariable(name: "fd", scope: !1622, file: !4, line: 1402, type: !274)
!1634 = !DILocation(line: 1402, column: 10, scope: !1622)
!1635 = !DILocalVariable(name: "fd2", scope: !1622, file: !4, line: 1402, type: !274)
!1636 = !DILocation(line: 1402, column: 14, scope: !1622)
!1637 = !DILocalVariable(name: "card_num", scope: !1622, file: !4, line: 1402, type: !274)
!1638 = !DILocation(line: 1402, column: 19, scope: !1622)
!1639 = !DILocalVariable(name: "cmd", scope: !1622, file: !4, line: 1403, type: !384)
!1640 = !DILocation(line: 1403, column: 26, scope: !1622)
!1641 = !DILocalVariable(name: "ts", scope: !1622, file: !4, line: 1404, type: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1643, line: 30, size: 128, align: 64, elements: !1644)
!1643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop")
!1644 = !{!1645, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1642, file: !1643, line: 32, baseType: !1646, size: 64, align: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !310, line: 139, baseType: !330)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1642, file: !1643, line: 33, baseType: !1648, size: 64, align: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !310, line: 141, baseType: !330)
!1649 = !DILocation(line: 1404, column: 17, scope: !1622)
!1650 = !DILocalVariable(name: "te", scope: !1622, file: !4, line: 1404, type: !1642)
!1651 = !DILocation(line: 1404, column: 21, scope: !1622)
!1652 = !DILocalVariable(name: "ld", scope: !1622, file: !4, line: 1405, type: !311)
!1653 = !DILocation(line: 1405, column: 21, scope: !1622)
!1654 = !DILocation(line: 1407, column: 13, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1622, file: !4, line: 1407, column: 5)
!1656 = !DILocation(line: 1407, column: 10, scope: !1655)
!1657 = !DILocation(line: 1407, column: 5, scope: !1622)
!1658 = !DILocation(line: 1408, column: 3, scope: !1655)
!1659 = !DILocation(line: 1409, column: 6, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1622, file: !4, line: 1409, column: 6)
!1661 = !DILocation(line: 1409, column: 13, scope: !1660)
!1662 = !DILocation(line: 1409, column: 18, scope: !1660)
!1663 = !DILocation(line: 1409, column: 10, scope: !1660)
!1664 = !DILocation(line: 1409, column: 6, scope: !1622)
!1665 = !DILocation(line: 1410, column: 3, scope: !1660)
!1666 = !DILocation(line: 1412, column: 2, scope: !1622)
!1667 = !DILocation(line: 1413, column: 16, scope: !1622)
!1668 = !DILocation(line: 1413, column: 7, scope: !1622)
!1669 = !DILocation(line: 1413, column: 5, scope: !1622)
!1670 = !DILocation(line: 1414, column: 8, scope: !1622)
!1671 = !DILocation(line: 1414, column: 6, scope: !1622)
!1672 = !DILocation(line: 1415, column: 2, scope: !1622)
!1673 = !DILocation(line: 1415, column: 9, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1622, file: !4, discriminator: 1)
!1675 = !DILocation(line: 1415, column: 13, scope: !1674)
!1676 = !DILocation(line: 1415, column: 2, scope: !1674)
!1677 = !DILocation(line: 1415, column: 21, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1622, file: !4, discriminator: 2)
!1679 = !DILocation(line: 1417, column: 14, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1622, file: !4, line: 1415, column: 21)
!1681 = !DILocation(line: 1417, column: 18, scope: !1680)
!1682 = !DILocation(line: 1417, column: 24, scope: !1680)
!1683 = !DILocation(line: 1417, column: 8, scope: !1680)
!1684 = !DILocation(line: 1417, column: 6, scope: !1680)
!1685 = !DILocation(line: 1418, column: 21, scope: !1680)
!1686 = !DILocation(line: 1418, column: 20, scope: !1680)
!1687 = !DILocation(line: 1418, column: 3, scope: !1680)
!1688 = !DILocation(line: 1418, column: 8, scope: !1680)
!1689 = !DILocation(line: 1418, column: 18, scope: !1680)
!1690 = !DILocation(line: 1419, column: 17, scope: !1680)
!1691 = !DILocation(line: 1419, column: 3, scope: !1680)
!1692 = !DILocation(line: 1419, column: 8, scope: !1680)
!1693 = !DILocation(line: 1419, column: 15, scope: !1680)
!1694 = !DILocation(line: 1420, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1680, file: !4, line: 1420, column: 7)
!1696 = !DILocation(line: 1420, column: 10, scope: !1695)
!1697 = !DILocation(line: 1420, column: 7, scope: !1680)
!1698 = !DILocation(line: 1428, column: 14, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !4, line: 1420, column: 15)
!1700 = !DILocation(line: 1428, column: 18, scope: !1699)
!1701 = !DILocation(line: 1428, column: 4, scope: !1699)
!1702 = !DILocation(line: 1430, column: 14, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !4, line: 1430, column: 8)
!1704 = !DILocation(line: 1430, column: 19, scope: !1703)
!1705 = !DILocation(line: 1430, column: 11, scope: !1703)
!1706 = !DILocation(line: 1430, column: 8, scope: !1699)
!1707 = !DILocation(line: 1436, column: 5, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !4, line: 1430, column: 28)
!1709 = !DILocation(line: 1437, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1708, file: !4, line: 1437, column: 9)
!1711 = !DILocation(line: 1437, column: 25, scope: !1710)
!1712 = !DILocation(line: 1437, column: 20, scope: !1710)
!1713 = !DILocation(line: 1437, column: 33, scope: !1710)
!1714 = !DILocation(line: 1437, column: 9, scope: !1708)
!1715 = !DILocation(line: 1439, column: 6, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1710, file: !4, line: 1438, column: 13)
!1717 = distinct !{!1717, !1715}
!1718 = !DILocation(line: 1439, column: 15, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !4, discriminator: 1)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !4, line: 1439, column: 15)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !4, line: 1439, column: 9)
!1722 = !DILocation(line: 1439, column: 5, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1720, file: !4, discriminator: 2)
!1724 = !DILocation(line: 1439, column: 74, scope: !1723)
!1725 = !DILocation(line: 1439, column: 84, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1723, file: !4, discriminator: 4)
!1727 = !DILocation(line: 1439, column: 7, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1723, file: !4, discriminator: 5)
!1729 = !DILocation(line: 1439, column: 6, scope: !1723)
!1730 = !DILocation(line: 1439, column: 7, scope: !1723)
!1731 = !DILocation(line: 1439, column: 26, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1723, file: !4, discriminator: 6)
!1733 = !DILocation(line: 1439, column: 26, scope: !1723)
!1734 = !DILocation(line: 1439, column: 12, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1721, file: !4, discriminator: 3)
!1736 = !DILocation(line: 1442, column: 6, scope: !1716)
!1737 = !DILocation(line: 1446, column: 20, scope: !1708)
!1738 = !DILocation(line: 1446, column: 11, scope: !1708)
!1739 = !DILocation(line: 1446, column: 9, scope: !1708)
!1740 = !DILocation(line: 1447, column: 9, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1708, file: !4, line: 1447, column: 9)
!1742 = !DILocation(line: 1447, column: 16, scope: !1741)
!1743 = !DILocation(line: 1447, column: 13, scope: !1741)
!1744 = !DILocation(line: 1447, column: 9, scope: !1708)
!1745 = !DILocation(line: 1448, column: 11, scope: !1741)
!1746 = !DILocation(line: 1448, column: 9, scope: !1741)
!1747 = !DILocation(line: 1448, column: 6, scope: !1741)
!1748 = !DILocation(line: 1450, column: 6, scope: !1741)
!1749 = !DILocation(line: 1452, column: 24, scope: !1708)
!1750 = !DILocation(line: 1452, column: 5, scope: !1708)
!1751 = !DILocation(line: 1452, column: 33, scope: !1708)
!1752 = !DILocation(line: 1453, column: 5, scope: !1708)
!1753 = !DILocation(line: 1455, column: 9, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1699, file: !4, line: 1455, column: 7)
!1755 = !DILocation(line: 1455, column: 8, scope: !1754)
!1756 = !DILocation(line: 1455, column: 13, scope: !1754)
!1757 = !DILocation(line: 1455, column: 7, scope: !1699)
!1758 = !DILocation(line: 1456, column: 24, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !4, line: 1455, column: 23)
!1760 = !DILocation(line: 1456, column: 5, scope: !1759)
!1761 = !DILocation(line: 1456, column: 33, scope: !1759)
!1762 = !DILocation(line: 1457, column: 5, scope: !1759)
!1763 = !DILocation(line: 1459, column: 3, scope: !1699)
!1764 = !DILocation(line: 1459, column: 81, scope: !1699)
!1765 = !DILocation(line: 1459, column: 91, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1699, file: !4, discriminator: 1)
!1767 = !DILocation(line: 1459, column: 5, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1699, file: !4, discriminator: 2)
!1769 = !DILocation(line: 1459, column: 4, scope: !1699)
!1770 = !DILocation(line: 1459, column: 5, scope: !1699)
!1771 = !DILocation(line: 1459, column: 9, scope: !1699)
!1772 = !DILocation(line: 1459, column: 13, scope: !1699)
!1773 = !DILocation(line: 1459, column: 18, scope: !1699)
!1774 = !DILocation(line: 1459, column: 4, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1699, file: !4, discriminator: 3)
!1776 = !DILocation(line: 1462, column: 4, scope: !1699)
!1777 = !DILocation(line: 1464, column: 24, scope: !1680)
!1778 = !DILocation(line: 1464, column: 3, scope: !1680)
!1779 = !DILocation(line: 1464, column: 33, scope: !1680)
!1780 = !DILocation(line: 1465, column: 50, scope: !1680)
!1781 = !DILocation(line: 1465, column: 55, scope: !1680)
!1782 = !DILocation(line: 1465, column: 9, scope: !1680)
!1783 = !DILocation(line: 1465, column: 7, scope: !1680)
!1784 = !DILocation(line: 1415, column: 2, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1622, file: !4, discriminator: 3)
!1786 = distinct !{!1786, !1672}
!1787 = !DILocation(line: 1468, column: 2, scope: !1622)
!1788 = !DILocation(line: 1469, column: 1, scope: !1622)
!1789 = distinct !DISubprogram(name: "genwqe_card_execute_ddcb", scope: !4, file: !4, line: 1487, type: !1612, isLocal: false, isDefinition: true, scopeLine: 1489, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1790 = !DILocalVariable(name: "dev", arg: 1, scope: !1789, file: !4, line: 1487, type: !583)
!1791 = !DILocation(line: 1487, column: 44, scope: !1789)
!1792 = !DILocalVariable(name: "req", arg: 2, scope: !1789, file: !4, line: 1488, type: !384)
!1793 = !DILocation(line: 1488, column: 33, scope: !1789)
!1794 = !DILocation(line: 1490, column: 31, scope: !1789)
!1795 = !DILocation(line: 1490, column: 36, scope: !1789)
!1796 = !DILocation(line: 1490, column: 9, scope: !1789)
!1797 = !DILocation(line: 1490, column: 2, scope: !1789)
!1798 = distinct !DISubprogram(name: "genwqe_card_malloc", scope: !4, file: !4, line: 1500, type: !1799, isLocal: false, isDefinition: true, scopeLine: 1501, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!265, !583, !279}
!1801 = !DILocalVariable(name: "dev", arg: 1, scope: !1798, file: !4, line: 1500, type: !583)
!1802 = !DILocation(line: 1500, column: 40, scope: !1798)
!1803 = !DILocalVariable(name: "size", arg: 2, scope: !1798, file: !4, line: 1500, type: !279)
!1804 = !DILocation(line: 1500, column: 52, scope: !1798)
!1805 = !DILocalVariable(name: "buf", scope: !1798, file: !4, line: 1502, type: !265)
!1806 = !DILocation(line: 1502, column: 8, scope: !1798)
!1807 = !DILocation(line: 1504, column: 13, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1798, file: !4, line: 1504, column: 5)
!1809 = !DILocation(line: 1504, column: 10, scope: !1808)
!1810 = !DILocation(line: 1504, column: 5, scope: !1798)
!1811 = !DILocation(line: 1505, column: 3, scope: !1808)
!1812 = !DILocation(line: 1507, column: 6, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1798, file: !4, line: 1507, column: 6)
!1814 = !DILocation(line: 1507, column: 13, scope: !1813)
!1815 = !DILocation(line: 1507, column: 18, scope: !1813)
!1816 = !DILocation(line: 1507, column: 10, scope: !1813)
!1817 = !DILocation(line: 1507, column: 6, scope: !1798)
!1818 = !DILocation(line: 1508, column: 3, scope: !1813)
!1819 = !DILocation(line: 1510, column: 12, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1798, file: !4, line: 1510, column: 6)
!1821 = !DILocation(line: 1510, column: 17, scope: !1820)
!1822 = !DILocation(line: 1510, column: 9, scope: !1820)
!1823 = !DILocation(line: 1510, column: 6, scope: !1798)
!1824 = !DILocation(line: 1511, column: 3, scope: !1820)
!1825 = !DILocation(line: 1513, column: 12, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1798, file: !4, line: 1513, column: 6)
!1827 = !DILocation(line: 1513, column: 17, scope: !1826)
!1828 = !DILocation(line: 1513, column: 9, scope: !1826)
!1829 = !DILocation(line: 1513, column: 6, scope: !1798)
!1830 = !DILocation(line: 1514, column: 19, scope: !1826)
!1831 = !DILocation(line: 1515, column: 7, scope: !1826)
!1832 = !DILocation(line: 1515, column: 12, scope: !1826)
!1833 = !DILocation(line: 1514, column: 9, scope: !1826)
!1834 = !DILocation(line: 1514, column: 7, scope: !1826)
!1835 = !DILocation(line: 1514, column: 3, scope: !1826)
!1836 = !DILocalVariable(name: "page_size", scope: !1837, file: !4, line: 1517, type: !268)
!1837 = distinct !DILexicalBlock(scope: !1826, file: !4, line: 1516, column: 7)
!1838 = !DILocation(line: 1517, column: 16, scope: !1837)
!1839 = !DILocation(line: 1517, column: 28, scope: !1837)
!1840 = !DILocation(line: 1518, column: 18, scope: !1837)
!1841 = !DILocation(line: 1518, column: 29, scope: !1837)
!1842 = !DILocation(line: 1518, column: 9, scope: !1837)
!1843 = !DILocation(line: 1518, column: 7, scope: !1837)
!1844 = !DILocation(line: 1521, column: 6, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1798, file: !4, line: 1521, column: 6)
!1846 = !DILocation(line: 1521, column: 10, scope: !1845)
!1847 = !DILocation(line: 1521, column: 6, scope: !1798)
!1848 = !DILocation(line: 1522, column: 2, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !4, line: 1521, column: 24)
!1850 = !DILocation(line: 1522, column: 60, scope: !1849)
!1851 = !DILocation(line: 1522, column: 70, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1849, file: !4, discriminator: 1)
!1853 = !DILocation(line: 1522, column: 20, scope: !1849)
!1854 = !DILocation(line: 1522, column: 15, scope: !1849)
!1855 = !DILocation(line: 1522, column: 4, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1849, file: !4, discriminator: 2)
!1857 = !DILocation(line: 1522, column: 3, scope: !1849)
!1858 = !DILocation(line: 1522, column: 4, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1849, file: !4, discriminator: 3)
!1860 = !DILocation(line: 1522, column: 4, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1849, file: !4, discriminator: 4)
!1862 = !DILocation(line: 1522, column: 3, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1849, file: !4, discriminator: 5)
!1864 = !DILocation(line: 1524, column: 3, scope: !1849)
!1865 = !DILocation(line: 1527, column: 9, scope: !1798)
!1866 = !DILocation(line: 1527, column: 2, scope: !1798)
!1867 = !DILocation(line: 1528, column: 1, scope: !1798)
!1868 = distinct !DISubprogram(name: "genwqe_card_free", scope: !4, file: !4, line: 1533, type: !1869, isLocal: false, isDefinition: true, scopeLine: 1535, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!274, !583, !265, !279}
!1871 = !DILocalVariable(name: "dev", arg: 1, scope: !1868, file: !4, line: 1533, type: !583)
!1872 = !DILocation(line: 1533, column: 36, scope: !1868)
!1873 = !DILocalVariable(name: "ptr", arg: 2, scope: !1868, file: !4, line: 1534, type: !265)
!1874 = !DILocation(line: 1534, column: 14, scope: !1868)
!1875 = !DILocalVariable(name: "size", arg: 3, scope: !1868, file: !4, line: 1534, type: !279)
!1876 = !DILocation(line: 1534, column: 26, scope: !1868)
!1877 = !DILocalVariable(name: "rc", scope: !1868, file: !4, line: 1536, type: !274)
!1878 = !DILocation(line: 1536, column: 6, scope: !1868)
!1879 = !DILocation(line: 1538, column: 13, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1868, file: !4, line: 1538, column: 5)
!1881 = !DILocation(line: 1538, column: 10, scope: !1880)
!1882 = !DILocation(line: 1538, column: 5, scope: !1868)
!1883 = !DILocation(line: 1539, column: 3, scope: !1880)
!1884 = !DILocation(line: 1540, column: 12, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1868, file: !4, line: 1540, column: 6)
!1886 = !DILocation(line: 1540, column: 17, scope: !1885)
!1887 = !DILocation(line: 1540, column: 9, scope: !1885)
!1888 = !DILocation(line: 1540, column: 6, scope: !1868)
!1889 = !DILocation(line: 1541, column: 3, scope: !1885)
!1890 = !DILocation(line: 1543, column: 12, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1868, file: !4, line: 1543, column: 6)
!1892 = !DILocation(line: 1543, column: 17, scope: !1891)
!1893 = !DILocation(line: 1543, column: 9, scope: !1891)
!1894 = !DILocation(line: 1543, column: 6, scope: !1868)
!1895 = !DILocation(line: 1544, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !4, line: 1543, column: 23)
!1897 = !DILocation(line: 1544, column: 20, scope: !1896)
!1898 = !DILocation(line: 1544, column: 8, scope: !1896)
!1899 = !DILocation(line: 1544, column: 6, scope: !1896)
!1900 = !DILocation(line: 1545, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !4, line: 1545, column: 7)
!1902 = !DILocation(line: 1545, column: 10, scope: !1901)
!1903 = !DILocation(line: 1545, column: 7, scope: !1896)
!1904 = !DILocation(line: 1546, column: 3, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !4, line: 1545, column: 17)
!1906 = !DILocation(line: 1546, column: 63, scope: !1905)
!1907 = !DILocation(line: 1546, column: 73, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1905, file: !4, discriminator: 1)
!1909 = !DILocation(line: 1546, column: 16, scope: !1905)
!1910 = !DILocation(line: 1546, column: 26, scope: !1905)
!1911 = !DILocation(line: 1546, column: 21, scope: !1905)
!1912 = !DILocation(line: 1546, column: 5, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1905, file: !4, discriminator: 2)
!1914 = !DILocation(line: 1546, column: 4, scope: !1905)
!1915 = !DILocation(line: 1546, column: 4, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1905, file: !4, discriminator: 3)
!1917 = !DILocation(line: 1548, column: 4, scope: !1905)
!1918 = !DILocation(line: 1550, column: 2, scope: !1896)
!1919 = !DILocation(line: 1551, column: 8, scope: !1891)
!1920 = !DILocation(line: 1551, column: 3, scope: !1891)
!1921 = !DILocation(line: 1552, column: 2, scope: !1868)
!1922 = !DILocation(line: 1553, column: 1, scope: !1868)
!1923 = distinct !DISubprogram(name: "genwqe_card_alloc_scb", scope: !4, file: !4, line: 1555, type: !1799, isLocal: false, isDefinition: true, scopeLine: 1556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!1924 = !DILocalVariable(name: "card", arg: 1, scope: !1923, file: !4, line: 1555, type: !583)
!1925 = !DILocation(line: 1555, column: 43, scope: !1923)
!1926 = !DILocalVariable(name: "size", arg: 2, scope: !1923, file: !4, line: 1555, type: !279)
!1927 = !DILocation(line: 1555, column: 56, scope: !1923)
!1928 = !DILocalVariable(name: "scb", scope: !1923, file: !4, line: 1557, type: !265)
!1929 = !DILocation(line: 1557, column: 8, scope: !1923)
!1930 = !DILocation(line: 1559, column: 27, scope: !1923)
!1931 = !DILocation(line: 1559, column: 33, scope: !1923)
!1932 = !DILocation(line: 1559, column: 8, scope: !1923)
!1933 = !DILocation(line: 1559, column: 6, scope: !1923)
!1934 = !DILocation(line: 1560, column: 6, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1923, file: !4, line: 1560, column: 6)
!1936 = !DILocation(line: 1560, column: 10, scope: !1935)
!1937 = !DILocation(line: 1560, column: 6, scope: !1923)
!1938 = !DILocation(line: 1561, column: 3, scope: !1935)
!1939 = !DILocation(line: 1563, column: 9, scope: !1923)
!1940 = !DILocation(line: 1563, column: 17, scope: !1923)
!1941 = !DILocation(line: 1563, column: 2, scope: !1923)
!1942 = !DILocation(line: 1564, column: 9, scope: !1923)
!1943 = !DILocation(line: 1564, column: 2, scope: !1923)
!1944 = !DILocation(line: 1565, column: 1, scope: !1923)
!1945 = !DILocalVariable(name: "scb", arg: 1, scope: !429, file: !4, line: 1578, type: !265)
!1946 = !DILocation(line: 1578, column: 37, scope: !429)
!1947 = !DILocalVariable(name: "size", arg: 2, scope: !429, file: !4, line: 1578, type: !279)
!1948 = !DILocation(line: 1578, column: 49, scope: !429)
!1949 = !DILocalVariable(name: "offs", arg: 3, scope: !429, file: !4, line: 1578, type: !279)
!1950 = !DILocation(line: 1578, column: 62, scope: !429)
!1951 = !DILocalVariable(name: "flags", arg: 4, scope: !429, file: !4, line: 1578, type: !274)
!1952 = !DILocation(line: 1578, column: 72, scope: !429)
!1953 = !DILocalVariable(name: "ats_array", scope: !429, file: !4, line: 1580, type: !275)
!1954 = !DILocation(line: 1580, column: 11, scope: !429)
!1955 = !DILocation(line: 1580, column: 23, scope: !429)
!1956 = !DILocalVariable(name: "ats", scope: !429, file: !4, line: 1581, type: !268)
!1957 = !DILocation(line: 1581, column: 15, scope: !429)
!1958 = !DILocalVariable(name: "idx", scope: !429, file: !4, line: 1581, type: !268)
!1959 = !DILocation(line: 1581, column: 20, scope: !429)
!1960 = !DILocation(line: 1584, column: 22, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !429, file: !4, line: 1584, column: 6)
!1962 = !DILocation(line: 1584, column: 7, scope: !1961)
!1963 = !DILocation(line: 1584, column: 26, scope: !1961)
!1964 = !DILocation(line: 1584, column: 31, scope: !1961)
!1965 = !DILocation(line: 1585, column: 7, scope: !1961)
!1966 = !DILocation(line: 1585, column: 12, scope: !1961)
!1967 = !DILocation(line: 1585, column: 17, scope: !1961)
!1968 = !DILocation(line: 1586, column: 7, scope: !1961)
!1969 = !DILocation(line: 1586, column: 12, scope: !1961)
!1970 = !DILocation(line: 1586, column: 17, scope: !1961)
!1971 = !DILocation(line: 1587, column: 7, scope: !1961)
!1972 = !DILocation(line: 1587, column: 14, scope: !1961)
!1973 = !DILocation(line: 1587, column: 19, scope: !1961)
!1974 = !DILocation(line: 1587, column: 12, scope: !1961)
!1975 = !DILocation(line: 1584, column: 6, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !429, file: !4, discriminator: 1)
!1977 = !DILocation(line: 1588, column: 3, scope: !1961)
!1978 = !DILocation(line: 1606, column: 8, scope: !429)
!1979 = !DILocation(line: 1606, column: 13, scope: !429)
!1980 = !DILocation(line: 1606, column: 6, scope: !429)
!1981 = !DILocation(line: 1607, column: 9, scope: !429)
!1982 = !DILocation(line: 1607, column: 14, scope: !429)
!1983 = !DILocation(line: 1607, column: 19, scope: !429)
!1984 = !DILocation(line: 1607, column: 8, scope: !429)
!1985 = !DILocation(line: 1607, column: 6, scope: !429)
!1986 = !DILocation(line: 1608, column: 26, scope: !429)
!1987 = !DILocation(line: 1608, column: 21, scope: !429)
!1988 = !DILocation(line: 1608, column: 20, scope: !429)
!1989 = !DILocation(line: 1608, column: 12, scope: !429)
!1990 = !DILocation(line: 1608, column: 2, scope: !429)
!1991 = !DILocation(line: 1608, column: 17, scope: !429)
!1992 = !DILocation(line: 1609, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !429, file: !4, line: 1609, column: 6)
!1994 = !DILocation(line: 1609, column: 10, scope: !1993)
!1995 = !DILocation(line: 1609, column: 6, scope: !429)
!1996 = !DILocation(line: 1610, column: 29, scope: !1993)
!1997 = !DILocation(line: 1610, column: 27, scope: !1993)
!1998 = !DILocation(line: 1610, column: 36, scope: !1993)
!1999 = !DILocation(line: 1610, column: 13, scope: !1993)
!2000 = !DILocation(line: 1610, column: 3, scope: !1993)
!2001 = !DILocation(line: 1610, column: 18, scope: !1993)
!2002 = !DILocation(line: 1611, column: 33, scope: !1993)
!2003 = !DILocation(line: 1611, column: 31, scope: !1993)
!2004 = !DILocation(line: 1611, column: 17, scope: !1993)
!2005 = !DILocation(line: 1611, column: 7, scope: !1993)
!2006 = !DILocation(line: 1611, column: 22, scope: !1993)
!2007 = !DILocation(line: 1613, column: 2, scope: !429)
!2008 = !DILocation(line: 1614, column: 1, scope: !429)
!2009 = distinct !DISubprogram(name: "genwqe_card_free_scb", scope: !4, file: !4, line: 1616, type: !1869, isLocal: false, isDefinition: true, scopeLine: 1617, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2010 = !DILocalVariable(name: "card", arg: 1, scope: !2009, file: !4, line: 1616, type: !583)
!2011 = !DILocation(line: 1616, column: 40, scope: !2009)
!2012 = !DILocalVariable(name: "scb", arg: 2, scope: !2009, file: !4, line: 1616, type: !265)
!2013 = !DILocation(line: 1616, column: 52, scope: !2009)
!2014 = !DILocalVariable(name: "size", arg: 3, scope: !2009, file: !4, line: 1616, type: !279)
!2015 = !DILocation(line: 1616, column: 64, scope: !2009)
!2016 = !DILocation(line: 1618, column: 26, scope: !2009)
!2017 = !DILocation(line: 1618, column: 32, scope: !2009)
!2018 = !DILocation(line: 1618, column: 37, scope: !2009)
!2019 = !DILocation(line: 1618, column: 9, scope: !2009)
!2020 = !DILocation(line: 1618, column: 2, scope: !2009)
!2021 = distinct !DISubprogram(name: "genwqe_hexdump", scope: !4, file: !4, line: 1643, type: !2022, isLocal: false, isDefinition: true, scopeLine: 1644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !2024, !1386, !268}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64, align: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2026, line: 48, baseType: !2027)
!2026 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop")
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2028, line: 241, size: 1728, align: 64, elements: !2029)
!2028 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop")
!2029 = !{!2030, !2031, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2051, !2052, !2053, !2054, !2056, !2057, !2059, !2063, !2066, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2027, file: !2028, line: 242, baseType: !274, size: 32, align: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2027, file: !2028, line: 247, baseType: !2032, size: 64, align: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2027, file: !2028, line: 248, baseType: !2032, size: 64, align: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2027, file: !2028, line: 249, baseType: !2032, size: 64, align: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2027, file: !2028, line: 250, baseType: !2032, size: 64, align: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2027, file: !2028, line: 251, baseType: !2032, size: 64, align: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2027, file: !2028, line: 252, baseType: !2032, size: 64, align: 64, offset: 384)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2027, file: !2028, line: 253, baseType: !2032, size: 64, align: 64, offset: 448)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2027, file: !2028, line: 254, baseType: !2032, size: 64, align: 64, offset: 512)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2027, file: !2028, line: 256, baseType: !2032, size: 64, align: 64, offset: 576)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2027, file: !2028, line: 257, baseType: !2032, size: 64, align: 64, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2027, file: !2028, line: 258, baseType: !2032, size: 64, align: 64, offset: 704)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2027, file: !2028, line: 260, baseType: !2044, size: 64, align: 64, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64, align: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2028, line: 156, size: 192, align: 64, elements: !2046)
!2046 = !{!2047, !2048, !2050}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2045, file: !2028, line: 157, baseType: !2044, size: 64, align: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2045, file: !2028, line: 158, baseType: !2049, size: 64, align: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64, align: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2045, file: !2028, line: 162, baseType: !274, size: 32, align: 32, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2027, file: !2028, line: 262, baseType: !2049, size: 64, align: 64, offset: 832)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2027, file: !2028, line: 264, baseType: !274, size: 32, align: 32, offset: 896)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2027, file: !2028, line: 268, baseType: !274, size: 32, align: 32, offset: 928)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2027, file: !2028, line: 270, baseType: !2055, size: 64, align: 64, offset: 960)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !310, line: 131, baseType: !330)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2027, file: !2028, line: 274, baseType: !278, size: 16, align: 16, offset: 1024)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2027, file: !2028, line: 275, baseType: !2058, size: 8, align: 8, offset: 1040)
!2058 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2027, file: !2028, line: 276, baseType: !2060, size: 8, align: 8, offset: 1048)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 8, align: 8, elements: !2061)
!2061 = !{!2062}
!2062 = !DISubrange(count: 1)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2027, file: !2028, line: 280, baseType: !2064, size: 64, align: 64, offset: 1088)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64, align: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2028, line: 150, baseType: null)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2027, file: !2028, line: 289, baseType: !2067, size: 64, align: 64, offset: 1152)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !310, line: 132, baseType: !330)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2027, file: !2028, line: 297, baseType: !265, size: 64, align: 64, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2027, file: !2028, line: 298, baseType: !265, size: 64, align: 64, offset: 1280)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2027, file: !2028, line: 299, baseType: !265, size: 64, align: 64, offset: 1344)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2027, file: !2028, line: 300, baseType: !265, size: 64, align: 64, offset: 1408)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2027, file: !2028, line: 302, baseType: !279, size: 64, align: 64, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2027, file: !2028, line: 303, baseType: !274, size: 32, align: 32, offset: 1536)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2027, file: !2028, line: 305, baseType: !2075, size: 160, align: 8, offset: 1568)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 160, align: 8, elements: !2076)
!2076 = !{!2077}
!2077 = !DISubrange(count: 20)
!2078 = !DILocalVariable(name: "fp", arg: 1, scope: !2021, file: !4, line: 1643, type: !2024)
!2079 = !DILocation(line: 1643, column: 27, scope: !2021)
!2080 = !DILocalVariable(name: "buff", arg: 2, scope: !2021, file: !4, line: 1643, type: !1386)
!2081 = !DILocation(line: 1643, column: 43, scope: !2021)
!2082 = !DILocalVariable(name: "size", arg: 3, scope: !2021, file: !4, line: 1643, type: !268)
!2083 = !DILocation(line: 1643, column: 62, scope: !2021)
!2084 = !DILocalVariable(name: "i", scope: !2021, file: !4, line: 1645, type: !268)
!2085 = !DILocation(line: 1645, column: 15, scope: !2021)
!2086 = !DILocalVariable(name: "j", scope: !2021, file: !4, line: 1645, type: !268)
!2087 = !DILocation(line: 1645, column: 18, scope: !2021)
!2088 = !DILocalVariable(name: "b", scope: !2021, file: !4, line: 1646, type: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!2090 = !DILocation(line: 1646, column: 17, scope: !2021)
!2091 = !DILocation(line: 1646, column: 32, scope: !2021)
!2092 = !DILocalVariable(name: "ascii", scope: !2021, file: !4, line: 1647, type: !2093)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 136, align: 8, elements: !2094)
!2094 = !{!2095}
!2095 = !DISubrange(count: 17)
!2096 = !DILocation(line: 1647, column: 7, scope: !2021)
!2097 = !DILocation(line: 1649, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2021, file: !4, line: 1649, column: 2)
!2099 = !DILocation(line: 1649, column: 7, scope: !2098)
!2100 = !DILocation(line: 1649, column: 14, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !4, discriminator: 1)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !4, line: 1649, column: 2)
!2103 = !DILocation(line: 1649, column: 18, scope: !2101)
!2104 = !DILocation(line: 1649, column: 16, scope: !2101)
!2105 = !DILocation(line: 1649, column: 2, scope: !2101)
!2106 = !DILocation(line: 1650, column: 8, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !4, line: 1650, column: 7)
!2108 = distinct !DILexicalBlock(scope: !2102, file: !4, line: 1649, column: 29)
!2109 = !DILocation(line: 1650, column: 10, scope: !2107)
!2110 = !DILocation(line: 1650, column: 18, scope: !2107)
!2111 = !DILocation(line: 1650, column: 7, scope: !2108)
!2112 = !DILocation(line: 1651, column: 12, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2107, file: !4, line: 1650, column: 27)
!2114 = !DILocation(line: 1651, column: 26, scope: !2113)
!2115 = !DILocation(line: 1651, column: 4, scope: !2113)
!2116 = !DILocation(line: 1652, column: 4, scope: !2113)
!2117 = !DILocation(line: 1653, column: 6, scope: !2113)
!2118 = !DILocation(line: 1654, column: 3, scope: !2113)
!2119 = !DILocation(line: 1655, column: 11, scope: !2108)
!2120 = !DILocation(line: 1655, column: 26, scope: !2108)
!2121 = !DILocation(line: 1655, column: 24, scope: !2108)
!2122 = !DILocation(line: 1655, column: 3, scope: !2108)
!2123 = !DILocation(line: 1656, column: 17, scope: !2108)
!2124 = !DILocation(line: 1656, column: 15, scope: !2108)
!2125 = !DILocation(line: 1656, column: 36, scope: !2108)
!2126 = !DILocation(line: 1656, column: 16, scope: !2108)
!2127 = !DILocation(line: 1656, column: 18, scope: !2108)
!2128 = !DILocation(line: 1656, column: 19, scope: !2108)
!2129 = !DILocation(line: 1656, column: 33, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2108, file: !4, discriminator: 1)
!2131 = !DILocation(line: 1656, column: 31, scope: !2130)
!2132 = !DILocation(line: 1656, column: 15, scope: !2130)
!2133 = !DILocation(line: 1656, column: 15, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2108, file: !4, discriminator: 2)
!2135 = !DILocation(line: 1656, column: 15, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2108, file: !4, discriminator: 3)
!2137 = !DILocation(line: 1656, column: 10, scope: !2136)
!2138 = !DILocation(line: 1656, column: 3, scope: !2136)
!2139 = !DILocation(line: 1656, column: 14, scope: !2136)
!2140 = !DILocation(line: 1658, column: 8, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2108, file: !4, line: 1658, column: 7)
!2142 = !DILocation(line: 1658, column: 10, scope: !2141)
!2143 = !DILocation(line: 1658, column: 18, scope: !2141)
!2144 = !DILocation(line: 1658, column: 7, scope: !2108)
!2145 = !DILocation(line: 1659, column: 12, scope: !2141)
!2146 = !DILocation(line: 1659, column: 27, scope: !2141)
!2147 = !DILocation(line: 1659, column: 4, scope: !2141)
!2148 = !DILocation(line: 1660, column: 2, scope: !2108)
!2149 = !DILocation(line: 1649, column: 25, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2102, file: !4, discriminator: 2)
!2151 = !DILocation(line: 1649, column: 2, scope: !2150)
!2152 = distinct !{!2152, !2153}
!2153 = !DILocation(line: 1649, column: 2, scope: !2021)
!2154 = !DILocation(line: 1663, column: 2, scope: !2021)
!2155 = !DILocation(line: 1663, column: 9, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2157, file: !4, discriminator: 1)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !4, line: 1663, column: 2)
!2158 = distinct !DILexicalBlock(scope: !2021, file: !4, line: 1663, column: 2)
!2159 = !DILocation(line: 1663, column: 15, scope: !2156)
!2160 = !DILocation(line: 1663, column: 20, scope: !2156)
!2161 = !DILocation(line: 1663, column: 27, scope: !2156)
!2162 = !DILocation(line: 1663, column: 11, scope: !2156)
!2163 = !DILocation(line: 1663, column: 2, scope: !2156)
!2164 = !DILocation(line: 1664, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2157, file: !4, line: 1663, column: 41)
!2166 = !DILocation(line: 1664, column: 3, scope: !2165)
!2167 = !DILocation(line: 1665, column: 10, scope: !2165)
!2168 = !DILocation(line: 1665, column: 3, scope: !2165)
!2169 = !DILocation(line: 1665, column: 14, scope: !2165)
!2170 = !DILocation(line: 1667, column: 8, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2165, file: !4, line: 1667, column: 7)
!2172 = !DILocation(line: 1667, column: 10, scope: !2171)
!2173 = !DILocation(line: 1667, column: 18, scope: !2171)
!2174 = !DILocation(line: 1667, column: 7, scope: !2165)
!2175 = !DILocation(line: 1668, column: 12, scope: !2171)
!2176 = !DILocation(line: 1668, column: 27, scope: !2171)
!2177 = !DILocation(line: 1668, column: 4, scope: !2171)
!2178 = !DILocation(line: 1669, column: 2, scope: !2165)
!2179 = !DILocation(line: 1663, column: 37, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2157, file: !4, discriminator: 2)
!2181 = !DILocation(line: 1663, column: 2, scope: !2180)
!2182 = distinct !{!2182, !2154}
!2183 = !DILocation(line: 1671, column: 10, scope: !2021)
!2184 = !DILocation(line: 1671, column: 2, scope: !2021)
!2185 = !DILocation(line: 1672, column: 1, scope: !2021)
!2186 = distinct !DISubprogram(name: "genwqe_flash_read", scope: !4, file: !4, line: 1714, type: !2187, isLocal: false, isDefinition: true, scopeLine: 1715, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!274, !583, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64, align: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_upd_params", file: !584, line: 337, size: 384, align: 64, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2197, !2198, !2199, !2200, !2201, !2202}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !2190, file: !584, line: 338, baseType: !442, size: 64, align: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flength", scope: !2190, file: !584, line: 339, baseType: !266, size: 32, align: 32, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2190, file: !584, line: 340, baseType: !266, size: 32, align: 32, offset: 96)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !584, line: 341, baseType: !2196, size: 16, align: 16, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !267, line: 49, baseType: !278)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !2190, file: !584, line: 342, baseType: !326, size: 8, align: 8, offset: 144)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "slu_id", scope: !2190, file: !584, line: 344, baseType: !292, size: 64, align: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "app_id", scope: !2190, file: !584, line: 345, baseType: !292, size: 64, align: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !2190, file: !584, line: 347, baseType: !2196, size: 16, align: 16, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !2190, file: !584, line: 348, baseType: !2196, size: 16, align: 16, offset: 336)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !2190, file: !584, line: 349, baseType: !266, size: 32, align: 32, offset: 352)
!2203 = !DILocalVariable(name: "dev", arg: 1, scope: !2186, file: !4, line: 1714, type: !583)
!2204 = !DILocation(line: 1714, column: 37, scope: !2186)
!2205 = !DILocalVariable(name: "upd", arg: 2, scope: !2186, file: !4, line: 1714, type: !2189)
!2206 = !DILocation(line: 1714, column: 66, scope: !2186)
!2207 = !DILocalVariable(name: "rc", scope: !2186, file: !4, line: 1716, type: !274)
!2208 = !DILocation(line: 1716, column: 6, scope: !2186)
!2209 = !DILocalVariable(name: "fd", scope: !2186, file: !4, line: 1716, type: !274)
!2210 = !DILocation(line: 1716, column: 10, scope: !2186)
!2211 = !DILocalVariable(name: "buflen", scope: !2186, file: !4, line: 1716, type: !274)
!2212 = !DILocation(line: 1716, column: 14, scope: !2186)
!2213 = !DILocalVariable(name: "buf", scope: !2186, file: !4, line: 1717, type: !275)
!2214 = !DILocation(line: 1717, column: 11, scope: !2186)
!2215 = !DILocalVariable(name: "page_size", scope: !2186, file: !4, line: 1718, type: !268)
!2216 = !DILocation(line: 1718, column: 15, scope: !2186)
!2217 = !DILocation(line: 1718, column: 27, scope: !2186)
!2218 = !DILocation(line: 1721, column: 12, scope: !2186)
!2219 = !DILocation(line: 1721, column: 17, scope: !2186)
!2220 = !DILocation(line: 1721, column: 27, scope: !2186)
!2221 = !DILocation(line: 1721, column: 25, scope: !2186)
!2222 = !DILocation(line: 1721, column: 42, scope: !2186)
!2223 = !DILocation(line: 1721, column: 52, scope: !2186)
!2224 = !DILocation(line: 1721, column: 40, scope: !2186)
!2225 = !DILocation(line: 1721, column: 38, scope: !2186)
!2226 = !DILocation(line: 1721, column: 9, scope: !2186)
!2227 = !DILocation(line: 1722, column: 17, scope: !2186)
!2228 = !DILocation(line: 1722, column: 28, scope: !2186)
!2229 = !DILocation(line: 1722, column: 8, scope: !2186)
!2230 = !DILocation(line: 1722, column: 6, scope: !2186)
!2231 = !DILocation(line: 1723, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2186, file: !4, line: 1723, column: 6)
!2233 = !DILocation(line: 1723, column: 6, scope: !2186)
!2234 = !DILocation(line: 1724, column: 3, scope: !2232)
!2235 = !DILocation(line: 1727, column: 12, scope: !2186)
!2236 = !DILocation(line: 1727, column: 17, scope: !2186)
!2237 = !DILocation(line: 1727, column: 7, scope: !2186)
!2238 = !DILocation(line: 1727, column: 5, scope: !2186)
!2239 = !DILocation(line: 1728, column: 6, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2186, file: !4, line: 1728, column: 6)
!2241 = !DILocation(line: 1728, column: 9, scope: !2240)
!2242 = !DILocation(line: 1728, column: 6, scope: !2186)
!2243 = !DILocation(line: 1729, column: 6, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !4, line: 1728, column: 14)
!2245 = !DILocation(line: 1730, column: 3, scope: !2244)
!2246 = !DILocation(line: 1733, column: 27, scope: !2186)
!2247 = !DILocation(line: 1733, column: 32, scope: !2186)
!2248 = !DILocation(line: 1733, column: 37, scope: !2186)
!2249 = !DILocation(line: 1733, column: 48, scope: !2186)
!2250 = !DILocation(line: 1733, column: 53, scope: !2186)
!2251 = !DILocation(line: 1734, column: 7, scope: !2186)
!2252 = !DILocation(line: 1734, column: 12, scope: !2186)
!2253 = !DILocation(line: 1734, column: 19, scope: !2186)
!2254 = !DILocation(line: 1734, column: 24, scope: !2186)
!2255 = !DILocation(line: 1735, column: 7, scope: !2186)
!2256 = !DILocation(line: 1735, column: 12, scope: !2186)
!2257 = !DILocation(line: 1733, column: 7, scope: !2186)
!2258 = !DILocation(line: 1733, column: 5, scope: !2186)
!2259 = !DILocation(line: 1736, column: 6, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2186, file: !4, line: 1736, column: 6)
!2261 = !DILocation(line: 1736, column: 9, scope: !2260)
!2262 = !DILocation(line: 1736, column: 6, scope: !2186)
!2263 = !DILocation(line: 1737, column: 9, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !4, line: 1736, column: 14)
!2265 = !DILocation(line: 1737, column: 3, scope: !2264)
!2266 = !DILocation(line: 1738, column: 3, scope: !2264)
!2267 = !DILocation(line: 1741, column: 18, scope: !2186)
!2268 = !DILocation(line: 1741, column: 22, scope: !2186)
!2269 = !DILocation(line: 1741, column: 35, scope: !2186)
!2270 = !DILocation(line: 1741, column: 40, scope: !2186)
!2271 = !DILocation(line: 1741, column: 27, scope: !2186)
!2272 = !DILocation(line: 1741, column: 12, scope: !2186)
!2273 = !DILocation(line: 1741, column: 7, scope: !2186)
!2274 = !DILocation(line: 1741, column: 5, scope: !2186)
!2275 = !DILocation(line: 1742, column: 8, scope: !2186)
!2276 = !DILocation(line: 1742, column: 2, scope: !2186)
!2277 = !DILocation(line: 1744, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2186, file: !4, line: 1744, column: 6)
!2279 = !DILocation(line: 1744, column: 17, scope: !2278)
!2280 = !DILocation(line: 1744, column: 22, scope: !2278)
!2281 = !DILocation(line: 1744, column: 9, scope: !2278)
!2282 = !DILocation(line: 1744, column: 6, scope: !2186)
!2283 = !DILocation(line: 1745, column: 6, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2278, file: !4, line: 1744, column: 31)
!2285 = !DILocation(line: 1746, column: 3, scope: !2284)
!2286 = !DILocation(line: 1748, column: 5, scope: !2186)
!2287 = !DILocation(line: 1748, column: 2, scope: !2186)
!2288 = !DILocation(line: 1751, column: 7, scope: !2186)
!2289 = !DILocation(line: 1751, column: 2, scope: !2186)
!2290 = !DILocation(line: 1752, column: 9, scope: !2186)
!2291 = !DILocation(line: 1752, column: 2, scope: !2186)
!2292 = !DILocation(line: 1753, column: 1, scope: !2186)
!2293 = distinct !DISubprogram(name: "__genwqe_flash_read", scope: !4, file: !4, line: 1674, type: !2294, isLocal: true, isDefinition: true, scopeLine: 1681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!274, !583, !326, !275, !274, !2296, !2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64, align: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!2298 = !DILocalVariable(name: "dev", arg: 1, scope: !2293, file: !4, line: 1674, type: !583)
!2299 = !DILocation(line: 1674, column: 46, scope: !2293)
!2300 = !DILocalVariable(name: "partition", arg: 2, scope: !2293, file: !4, line: 1675, type: !326)
!2301 = !DILocation(line: 1675, column: 16, scope: !2293)
!2302 = !DILocalVariable(name: "buf", arg: 3, scope: !2293, file: !4, line: 1676, type: !275)
!2303 = !DILocation(line: 1676, column: 20, scope: !2293)
!2304 = !DILocalVariable(name: "buflen", arg: 4, scope: !2293, file: !4, line: 1677, type: !274)
!2305 = !DILocation(line: 1677, column: 15, scope: !2293)
!2306 = !DILocalVariable(name: "retc", arg: 5, scope: !2293, file: !4, line: 1678, type: !2296)
!2307 = !DILocation(line: 1678, column: 21, scope: !2293)
!2308 = !DILocalVariable(name: "attn", arg: 6, scope: !2293, file: !4, line: 1679, type: !2296)
!2309 = !DILocation(line: 1679, column: 21, scope: !2293)
!2310 = !DILocalVariable(name: "progr", arg: 7, scope: !2293, file: !4, line: 1680, type: !2297)
!2311 = !DILocation(line: 1680, column: 21, scope: !2293)
!2312 = !DILocalVariable(name: "load", scope: !2293, file: !4, line: 1682, type: !2313)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_bitstream", file: !11, line: 332, size: 448, align: 64, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "data_addr", scope: !2313, file: !11, line: 333, baseType: !269, size: 64, align: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2313, file: !11, line: 334, baseType: !400, size: 32, align: 32, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2313, file: !11, line: 335, baseType: !400, size: 32, align: 32, offset: 96)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "target_addr", scope: !2313, file: !11, line: 336, baseType: !269, size: 64, align: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !2313, file: !11, line: 337, baseType: !400, size: 32, align: 32, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2313, file: !11, line: 338, baseType: !400, size: 32, align: 32, offset: 224)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "slu_id", scope: !2313, file: !11, line: 340, baseType: !269, size: 64, align: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "app_id", scope: !2313, file: !11, line: 341, baseType: !269, size: 64, align: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "retc", scope: !2313, file: !11, line: 343, baseType: !395, size: 16, align: 16, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "attn", scope: !2313, file: !11, line: 344, baseType: !395, size: 16, align: 16, offset: 400)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !2313, file: !11, line: 345, baseType: !400, size: 32, align: 32, offset: 416)
!2326 = !DILocation(line: 1682, column: 26, scope: !2293)
!2327 = !DILocation(line: 1684, column: 13, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2293, file: !4, line: 1684, column: 5)
!2329 = !DILocation(line: 1684, column: 10, scope: !2328)
!2330 = !DILocation(line: 1684, column: 5, scope: !2293)
!2331 = !DILocation(line: 1685, column: 3, scope: !2328)
!2332 = !DILocation(line: 1686, column: 12, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2293, file: !4, line: 1686, column: 6)
!2334 = !DILocation(line: 1686, column: 17, scope: !2333)
!2335 = !DILocation(line: 1686, column: 9, scope: !2333)
!2336 = !DILocation(line: 1686, column: 6, scope: !2293)
!2337 = !DILocation(line: 1687, column: 3, scope: !2333)
!2338 = !DILocation(line: 1689, column: 2, scope: !2293)
!2339 = !DILocation(line: 1690, column: 7, scope: !2293)
!2340 = !DILocation(line: 1690, column: 19, scope: !2293)
!2341 = !DILocation(line: 1691, column: 7, scope: !2293)
!2342 = !DILocation(line: 1691, column: 11, scope: !2293)
!2343 = !DILocation(line: 1692, column: 28, scope: !2293)
!2344 = !DILocation(line: 1692, column: 19, scope: !2293)
!2345 = !DILocation(line: 1692, column: 7, scope: !2293)
!2346 = !DILocation(line: 1692, column: 17, scope: !2293)
!2347 = !DILocation(line: 1693, column: 34, scope: !2293)
!2348 = !DILocation(line: 1693, column: 19, scope: !2293)
!2349 = !DILocation(line: 1693, column: 7, scope: !2293)
!2350 = !DILocation(line: 1693, column: 17, scope: !2293)
!2351 = !DILocation(line: 1694, column: 14, scope: !2293)
!2352 = !DILocation(line: 1694, column: 7, scope: !2293)
!2353 = !DILocation(line: 1694, column: 12, scope: !2293)
!2354 = !DILocation(line: 1696, column: 9, scope: !2293)
!2355 = !DILocation(line: 1696, column: 17, scope: !2293)
!2356 = !DILocation(line: 1696, column: 2, scope: !2293)
!2357 = !DILocation(line: 1697, column: 22, scope: !2293)
!2358 = !DILocation(line: 1697, column: 27, scope: !2293)
!2359 = !DILocation(line: 1697, column: 16, scope: !2293)
!2360 = !DILocation(line: 1697, column: 2, scope: !2293)
!2361 = !DILocation(line: 1697, column: 7, scope: !2293)
!2362 = !DILocation(line: 1697, column: 14, scope: !2293)
!2363 = !DILocation(line: 1698, column: 20, scope: !2293)
!2364 = !DILocation(line: 1698, column: 19, scope: !2293)
!2365 = !DILocation(line: 1698, column: 2, scope: !2293)
!2366 = !DILocation(line: 1698, column: 7, scope: !2293)
!2367 = !DILocation(line: 1698, column: 17, scope: !2293)
!2368 = !DILocation(line: 1701, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2293, file: !4, line: 1701, column: 6)
!2370 = !DILocation(line: 1701, column: 6, scope: !2293)
!2371 = !DILocation(line: 1702, column: 16, scope: !2369)
!2372 = !DILocation(line: 1702, column: 4, scope: !2369)
!2373 = !DILocation(line: 1702, column: 9, scope: !2369)
!2374 = !DILocation(line: 1702, column: 3, scope: !2369)
!2375 = !DILocation(line: 1703, column: 6, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2293, file: !4, line: 1703, column: 6)
!2377 = !DILocation(line: 1703, column: 6, scope: !2293)
!2378 = !DILocation(line: 1704, column: 16, scope: !2376)
!2379 = !DILocation(line: 1704, column: 4, scope: !2376)
!2380 = !DILocation(line: 1704, column: 9, scope: !2376)
!2381 = !DILocation(line: 1704, column: 3, scope: !2376)
!2382 = !DILocation(line: 1705, column: 6, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2293, file: !4, line: 1705, column: 6)
!2384 = !DILocation(line: 1705, column: 6, scope: !2293)
!2385 = !DILocation(line: 1706, column: 17, scope: !2383)
!2386 = !DILocation(line: 1706, column: 4, scope: !2383)
!2387 = !DILocation(line: 1706, column: 10, scope: !2383)
!2388 = !DILocation(line: 1706, column: 3, scope: !2383)
!2389 = !DILocation(line: 1708, column: 6, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2293, file: !4, line: 1708, column: 6)
!2391 = !DILocation(line: 1708, column: 11, scope: !2390)
!2392 = !DILocation(line: 1708, column: 18, scope: !2390)
!2393 = !DILocation(line: 1708, column: 6, scope: !2293)
!2394 = !DILocation(line: 1709, column: 3, scope: !2390)
!2395 = !DILocation(line: 1711, column: 2, scope: !2293)
!2396 = !DILocation(line: 1712, column: 1, scope: !2293)
!2397 = distinct !DISubprogram(name: "genwqe_flash_update", scope: !4, file: !4, line: 1789, type: !2398, isLocal: false, isDefinition: true, scopeLine: 1791, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!274, !583, !2189, !274}
!2400 = !DILocalVariable(name: "dev", arg: 1, scope: !2397, file: !4, line: 1789, type: !583)
!2401 = !DILocation(line: 1789, column: 39, scope: !2397)
!2402 = !DILocalVariable(name: "upd", arg: 2, scope: !2397, file: !4, line: 1789, type: !2189)
!2403 = !DILocation(line: 1789, column: 68, scope: !2397)
!2404 = !DILocalVariable(name: "verify", arg: 3, scope: !2397, file: !4, line: 1790, type: !274)
!2405 = !DILocation(line: 1790, column: 14, scope: !2397)
!2406 = !DILocalVariable(name: "rc", scope: !2397, file: !4, line: 1792, type: !274)
!2407 = !DILocation(line: 1792, column: 6, scope: !2397)
!2408 = !DILocalVariable(name: "filestat", scope: !2397, file: !4, line: 1793, type: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2410, line: 46, size: 1152, align: 64, elements: !2411)
!2410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop")
!2411 = !{!2412, !2414, !2416, !2418, !2420, !2422, !2424, !2425, !2426, !2427, !2429, !2431, !2438, !2439, !2440}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2409, file: !2410, line: 48, baseType: !2413, size: 64, align: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !310, line: 124, baseType: !272)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2409, file: !2410, line: 53, baseType: !2415, size: 64, align: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !310, line: 127, baseType: !272)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2409, file: !2410, line: 61, baseType: !2417, size: 64, align: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !310, line: 130, baseType: !272)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2409, file: !2410, line: 62, baseType: !2419, size: 32, align: 32, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !310, line: 129, baseType: !268)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2409, file: !2410, line: 64, baseType: !2421, size: 32, align: 32, offset: 224)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !310, line: 125, baseType: !268)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2409, file: !2410, line: 65, baseType: !2423, size: 32, align: 32, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !310, line: 126, baseType: !268)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2409, file: !2410, line: 67, baseType: !274, size: 32, align: 32, offset: 288)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2409, file: !2410, line: 69, baseType: !2413, size: 64, align: 64, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2409, file: !2410, line: 74, baseType: !2055, size: 64, align: 64, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2409, file: !2410, line: 78, baseType: !2428, size: 64, align: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !310, line: 153, baseType: !330)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2409, file: !2410, line: 80, baseType: !2430, size: 64, align: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !310, line: 158, baseType: !330)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2409, file: !2410, line: 91, baseType: !2432, size: 128, align: 64, offset: 576)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2433, line: 120, size: 128, align: 64, elements: !2434)
!2433 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop")
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2432, file: !2433, line: 122, baseType: !1646, size: 64, align: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2432, file: !2433, line: 123, baseType: !2437, size: 64, align: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !310, line: 175, baseType: !330)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2409, file: !2410, line: 92, baseType: !2432, size: 128, align: 64, offset: 704)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2409, file: !2410, line: 93, baseType: !2432, size: 128, align: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2409, file: !2410, line: 106, baseType: !2441, size: 192, align: 64, offset: 960)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 192, align: 64, elements: !2442)
!2442 = !{!2443}
!2443 = !DISubrange(count: 3)
!2444 = !DILocation(line: 1793, column: 14, scope: !2397)
!2445 = !DILocalVariable(name: "load", scope: !2397, file: !4, line: 1794, type: !2313)
!2446 = !DILocation(line: 1794, column: 26, scope: !2397)
!2447 = !DILocalVariable(name: "buf", scope: !2397, file: !4, line: 1795, type: !275)
!2448 = !DILocation(line: 1795, column: 11, scope: !2397)
!2449 = !DILocalVariable(name: "fd", scope: !2397, file: !4, line: 1796, type: !274)
!2450 = !DILocation(line: 1796, column: 6, scope: !2397)
!2451 = !DILocalVariable(name: "buflen", scope: !2397, file: !4, line: 1796, type: !274)
!2452 = !DILocation(line: 1796, column: 10, scope: !2397)
!2453 = !DILocalVariable(name: "page_size", scope: !2397, file: !4, line: 1797, type: !268)
!2454 = !DILocation(line: 1797, column: 15, scope: !2397)
!2455 = !DILocation(line: 1797, column: 27, scope: !2397)
!2456 = !DILocation(line: 1799, column: 13, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1799, column: 5)
!2458 = !DILocation(line: 1799, column: 10, scope: !2457)
!2459 = !DILocation(line: 1799, column: 5, scope: !2397)
!2460 = !DILocation(line: 1800, column: 3, scope: !2457)
!2461 = !DILocation(line: 1802, column: 12, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1802, column: 6)
!2463 = !DILocation(line: 1802, column: 17, scope: !2462)
!2464 = !DILocation(line: 1802, column: 9, scope: !2462)
!2465 = !DILocation(line: 1802, column: 6, scope: !2397)
!2466 = !DILocation(line: 1803, column: 3, scope: !2462)
!2467 = !DILocation(line: 1805, column: 2, scope: !2397)
!2468 = !DILocation(line: 1806, column: 2, scope: !2397)
!2469 = !DILocation(line: 1806, column: 7, scope: !2397)
!2470 = !DILocation(line: 1806, column: 15, scope: !2397)
!2471 = !DILocation(line: 1808, column: 12, scope: !2397)
!2472 = !DILocation(line: 1808, column: 17, scope: !2397)
!2473 = !DILocation(line: 1808, column: 7, scope: !2397)
!2474 = !DILocation(line: 1808, column: 5, scope: !2397)
!2475 = !DILocation(line: 1809, column: 6, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1809, column: 6)
!2477 = !DILocation(line: 1809, column: 9, scope: !2476)
!2478 = !DILocation(line: 1809, column: 6, scope: !2397)
!2479 = !DILocation(line: 1810, column: 3, scope: !2476)
!2480 = !DILocation(line: 1812, column: 13, scope: !2397)
!2481 = !DILocation(line: 1812, column: 7, scope: !2397)
!2482 = !DILocation(line: 1812, column: 5, scope: !2397)
!2483 = !DILocation(line: 1813, column: 6, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1813, column: 6)
!2485 = !DILocation(line: 1813, column: 9, scope: !2484)
!2486 = !DILocation(line: 1813, column: 6, scope: !2397)
!2487 = !DILocation(line: 1814, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !4, line: 1813, column: 14)
!2489 = !DILocation(line: 1814, column: 3, scope: !2488)
!2490 = !DILocation(line: 1815, column: 3, scope: !2488)
!2491 = !DILocation(line: 1818, column: 26, scope: !2397)
!2492 = !DILocation(line: 1818, column: 17, scope: !2397)
!2493 = !DILocation(line: 1818, column: 2, scope: !2397)
!2494 = !DILocation(line: 1818, column: 7, scope: !2397)
!2495 = !DILocation(line: 1818, column: 15, scope: !2397)
!2496 = !DILocation(line: 1822, column: 21, scope: !2397)
!2497 = !DILocation(line: 1822, column: 31, scope: !2397)
!2498 = !DILocation(line: 1822, column: 29, scope: !2397)
!2499 = !DILocation(line: 1822, column: 46, scope: !2397)
!2500 = !DILocation(line: 1822, column: 56, scope: !2397)
!2501 = !DILocation(line: 1822, column: 44, scope: !2397)
!2502 = !DILocation(line: 1822, column: 42, scope: !2397)
!2503 = !DILocation(line: 1822, column: 11, scope: !2397)
!2504 = !DILocation(line: 1822, column: 9, scope: !2397)
!2505 = !DILocation(line: 1824, column: 17, scope: !2397)
!2506 = !DILocation(line: 1824, column: 32, scope: !2397)
!2507 = !DILocation(line: 1824, column: 30, scope: !2397)
!2508 = !DILocation(line: 1824, column: 28, scope: !2397)
!2509 = !DILocation(line: 1824, column: 8, scope: !2397)
!2510 = !DILocation(line: 1824, column: 6, scope: !2397)
!2511 = !DILocation(line: 1825, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1825, column: 6)
!2513 = !DILocation(line: 1825, column: 6, scope: !2397)
!2514 = !DILocation(line: 1826, column: 9, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !4, line: 1825, column: 12)
!2516 = !DILocation(line: 1826, column: 3, scope: !2515)
!2517 = !DILocation(line: 1827, column: 3, scope: !2515)
!2518 = !DILocation(line: 1830, column: 9, scope: !2397)
!2519 = !DILocation(line: 1830, column: 21, scope: !2397)
!2520 = !DILocation(line: 1830, column: 19, scope: !2397)
!2521 = !DILocation(line: 1830, column: 17, scope: !2397)
!2522 = !DILocation(line: 1830, column: 2, scope: !2397)
!2523 = !DILocation(line: 1831, column: 16, scope: !2397)
!2524 = !DILocation(line: 1831, column: 21, scope: !2397)
!2525 = !DILocation(line: 1831, column: 7, scope: !2397)
!2526 = !DILocation(line: 1831, column: 14, scope: !2397)
!2527 = !DILocation(line: 1832, column: 16, scope: !2397)
!2528 = !DILocation(line: 1832, column: 21, scope: !2397)
!2529 = !DILocation(line: 1832, column: 7, scope: !2397)
!2530 = !DILocation(line: 1832, column: 14, scope: !2397)
!2531 = !DILocation(line: 1833, column: 7, scope: !2397)
!2532 = !DILocation(line: 1833, column: 19, scope: !2397)
!2533 = !DILocation(line: 1834, column: 7, scope: !2397)
!2534 = !DILocation(line: 1834, column: 11, scope: !2397)
!2535 = !DILocation(line: 1835, column: 28, scope: !2397)
!2536 = !DILocation(line: 1835, column: 33, scope: !2397)
!2537 = !DILocation(line: 1835, column: 19, scope: !2397)
!2538 = !DILocation(line: 1835, column: 7, scope: !2397)
!2539 = !DILocation(line: 1835, column: 17, scope: !2397)
!2540 = !DILocation(line: 1836, column: 34, scope: !2397)
!2541 = !DILocation(line: 1836, column: 19, scope: !2397)
!2542 = !DILocation(line: 1836, column: 7, scope: !2397)
!2543 = !DILocation(line: 1836, column: 17, scope: !2397)
!2544 = !DILocation(line: 1837, column: 23, scope: !2397)
!2545 = !DILocation(line: 1837, column: 14, scope: !2397)
!2546 = !DILocation(line: 1837, column: 7, scope: !2397)
!2547 = !DILocation(line: 1837, column: 12, scope: !2397)
!2548 = !DILocation(line: 1840, column: 17, scope: !2397)
!2549 = !DILocation(line: 1840, column: 49, scope: !2397)
!2550 = !DILocation(line: 1840, column: 21, scope: !2397)
!2551 = !DILocation(line: 1841, column: 23, scope: !2397)
!2552 = !DILocation(line: 1841, column: 10, scope: !2397)
!2553 = !DILocation(line: 1840, column: 12, scope: !2397)
!2554 = !DILocation(line: 1840, column: 7, scope: !2397)
!2555 = !DILocation(line: 1840, column: 5, scope: !2397)
!2556 = !DILocation(line: 1842, column: 8, scope: !2397)
!2557 = !DILocation(line: 1842, column: 2, scope: !2397)
!2558 = !DILocation(line: 1843, column: 6, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1843, column: 6)
!2560 = !DILocation(line: 1843, column: 22, scope: !2559)
!2561 = !DILocation(line: 1843, column: 9, scope: !2559)
!2562 = !DILocation(line: 1843, column: 6, scope: !2397)
!2563 = !DILocation(line: 1844, column: 8, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !4, line: 1843, column: 28)
!2565 = !DILocation(line: 1844, column: 3, scope: !2564)
!2566 = !DILocation(line: 1845, column: 3, scope: !2564)
!2567 = !DILocation(line: 1849, column: 59, scope: !2397)
!2568 = !DILocation(line: 1849, column: 31, scope: !2397)
!2569 = !DILocation(line: 1850, column: 15, scope: !2397)
!2570 = !DILocation(line: 1850, column: 10, scope: !2397)
!2571 = !DILocation(line: 1849, column: 13, scope: !2397)
!2572 = !DILocation(line: 1849, column: 7, scope: !2397)
!2573 = !DILocation(line: 1849, column: 11, scope: !2397)
!2574 = !DILocation(line: 1852, column: 27, scope: !2397)
!2575 = !DILocation(line: 1852, column: 32, scope: !2397)
!2576 = !DILocation(line: 1852, column: 21, scope: !2397)
!2577 = !DILocation(line: 1852, column: 19, scope: !2397)
!2578 = !DILocation(line: 1852, column: 2, scope: !2397)
!2579 = !DILocation(line: 1852, column: 7, scope: !2397)
!2580 = !DILocation(line: 1852, column: 14, scope: !2397)
!2581 = !DILocation(line: 1853, column: 20, scope: !2397)
!2582 = !DILocation(line: 1853, column: 19, scope: !2397)
!2583 = !DILocation(line: 1853, column: 2, scope: !2397)
!2584 = !DILocation(line: 1853, column: 7, scope: !2397)
!2585 = !DILocation(line: 1853, column: 17, scope: !2397)
!2586 = !DILocation(line: 1856, column: 19, scope: !2397)
!2587 = !DILocation(line: 1856, column: 2, scope: !2397)
!2588 = !DILocation(line: 1856, column: 7, scope: !2397)
!2589 = !DILocation(line: 1856, column: 12, scope: !2397)
!2590 = !DILocation(line: 1857, column: 19, scope: !2397)
!2591 = !DILocation(line: 1857, column: 2, scope: !2397)
!2592 = !DILocation(line: 1857, column: 7, scope: !2397)
!2593 = !DILocation(line: 1857, column: 12, scope: !2397)
!2594 = !DILocation(line: 1858, column: 23, scope: !2397)
!2595 = !DILocation(line: 1858, column: 2, scope: !2397)
!2596 = !DILocation(line: 1858, column: 7, scope: !2397)
!2597 = !DILocation(line: 1858, column: 16, scope: !2397)
!2598 = !DILocation(line: 1860, column: 6, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1860, column: 6)
!2600 = !DILocation(line: 1860, column: 9, scope: !2599)
!2601 = !DILocation(line: 1860, column: 6, scope: !2397)
!2602 = !DILocation(line: 1861, column: 8, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !4, line: 1860, column: 14)
!2604 = !DILocation(line: 1861, column: 3, scope: !2603)
!2605 = !DILocation(line: 1862, column: 3, scope: !2603)
!2606 = !DILocation(line: 1865, column: 6, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1865, column: 6)
!2608 = !DILocation(line: 1865, column: 6, scope: !2397)
!2609 = !DILocalVariable(name: "i", scope: !2610, file: !4, line: 1866, type: !268)
!2610 = distinct !DILexicalBlock(scope: !2607, file: !4, line: 1865, column: 14)
!2611 = !DILocation(line: 1866, column: 16, scope: !2610)
!2612 = !DILocalVariable(name: "vbuf", scope: !2610, file: !4, line: 1867, type: !275)
!2613 = !DILocation(line: 1867, column: 12, scope: !2610)
!2614 = !DILocation(line: 1867, column: 19, scope: !2610)
!2615 = !DILocation(line: 1867, column: 25, scope: !2610)
!2616 = !DILocation(line: 1867, column: 23, scope: !2610)
!2617 = !DILocation(line: 1869, column: 28, scope: !2610)
!2618 = !DILocation(line: 1869, column: 33, scope: !2610)
!2619 = !DILocation(line: 1869, column: 38, scope: !2610)
!2620 = !DILocation(line: 1869, column: 49, scope: !2610)
!2621 = !DILocation(line: 1869, column: 55, scope: !2610)
!2622 = !DILocation(line: 1870, column: 6, scope: !2610)
!2623 = !DILocation(line: 1870, column: 11, scope: !2610)
!2624 = !DILocation(line: 1870, column: 18, scope: !2610)
!2625 = !DILocation(line: 1870, column: 23, scope: !2610)
!2626 = !DILocation(line: 1870, column: 30, scope: !2610)
!2627 = !DILocation(line: 1870, column: 35, scope: !2610)
!2628 = !DILocation(line: 1869, column: 8, scope: !2610)
!2629 = !DILocation(line: 1869, column: 6, scope: !2610)
!2630 = !DILocation(line: 1871, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2610, file: !4, line: 1871, column: 7)
!2632 = !DILocation(line: 1871, column: 10, scope: !2631)
!2633 = !DILocation(line: 1871, column: 7, scope: !2610)
!2634 = !DILocation(line: 1872, column: 9, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !4, line: 1871, column: 15)
!2636 = !DILocation(line: 1872, column: 4, scope: !2635)
!2637 = !DILocation(line: 1873, column: 11, scope: !2635)
!2638 = !DILocation(line: 1873, column: 4, scope: !2635)
!2639 = !DILocation(line: 1875, column: 10, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2610, file: !4, line: 1875, column: 3)
!2641 = !DILocation(line: 1875, column: 8, scope: !2640)
!2642 = !DILocation(line: 1875, column: 15, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2644, file: !4, discriminator: 1)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !4, line: 1875, column: 3)
!2645 = !DILocation(line: 1875, column: 19, scope: !2643)
!2646 = !DILocation(line: 1875, column: 24, scope: !2643)
!2647 = !DILocation(line: 1875, column: 17, scope: !2643)
!2648 = !DILocation(line: 1875, column: 3, scope: !2643)
!2649 = !DILocation(line: 1876, column: 12, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !4, line: 1876, column: 8)
!2651 = distinct !DILexicalBlock(scope: !2644, file: !4, line: 1875, column: 38)
!2652 = !DILocation(line: 1876, column: 8, scope: !2650)
!2653 = !DILocation(line: 1876, column: 23, scope: !2650)
!2654 = !DILocation(line: 1876, column: 18, scope: !2650)
!2655 = !DILocation(line: 1876, column: 15, scope: !2650)
!2656 = !DILocation(line: 1876, column: 8, scope: !2651)
!2657 = !DILocation(line: 1877, column: 4, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2650, file: !4, line: 1876, column: 27)
!2659 = !DILocation(line: 1877, column: 64, scope: !2658)
!2660 = !DILocation(line: 1877, column: 74, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2658, file: !4, discriminator: 1)
!2662 = !DILocation(line: 1877, column: 103, scope: !2658)
!2663 = !DILocation(line: 1877, column: 5, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2658, file: !4, discriminator: 2)
!2665 = !DILocation(line: 1878, column: 14, scope: !2658)
!2666 = !DILocation(line: 1878, column: 27, scope: !2658)
!2667 = !DILocation(line: 1878, column: 23, scope: !2658)
!2668 = !DILocation(line: 1878, column: 5, scope: !2658)
!2669 = !DILocation(line: 1879, column: 4, scope: !2658)
!2670 = !DILocation(line: 1879, column: 44, scope: !2658)
!2671 = !DILocation(line: 1879, column: 54, scope: !2661)
!2672 = !DILocation(line: 1879, column: 5, scope: !2664)
!2673 = !DILocation(line: 1880, column: 14, scope: !2658)
!2674 = !DILocation(line: 1880, column: 28, scope: !2658)
!2675 = !DILocation(line: 1880, column: 23, scope: !2658)
!2676 = !DILocation(line: 1880, column: 5, scope: !2658)
!2677 = !DILocation(line: 1881, column: 10, scope: !2658)
!2678 = !DILocation(line: 1881, column: 5, scope: !2658)
!2679 = !DILocation(line: 1882, column: 5, scope: !2658)
!2680 = !DILocation(line: 1884, column: 3, scope: !2651)
!2681 = !DILocation(line: 1875, column: 34, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2644, file: !4, discriminator: 2)
!2683 = !DILocation(line: 1875, column: 3, scope: !2682)
!2684 = distinct !{!2684, !2685}
!2685 = !DILocation(line: 1875, column: 3, scope: !2610)
!2686 = !DILocation(line: 1885, column: 2, scope: !2610)
!2687 = !DILocation(line: 1886, column: 2, scope: !2397)
!2688 = distinct !{!2688, !2687}
!2689 = !DILocation(line: 1886, column: 11, scope: !2690)
!2690 = !DILexicalBlockFile(scope: !2691, file: !4, discriminator: 1)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !4, line: 1886, column: 11)
!2692 = distinct !DILexicalBlock(scope: !2397, file: !4, line: 1886, column: 5)
!2693 = !DILocation(line: 1886, column: 1, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2691, file: !4, discriminator: 2)
!2695 = !DILocation(line: 1886, column: 49, scope: !2694)
!2696 = !DILocation(line: 1886, column: 59, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2694, file: !4, discriminator: 4)
!2698 = !DILocation(line: 1886, column: 22, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2694, file: !4, discriminator: 5)
!2700 = !DILocation(line: 1886, column: 22, scope: !2694)
!2701 = !DILocation(line: 1886, column: 99, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2692, file: !4, discriminator: 3)
!2703 = !DILocation(line: 1887, column: 7, scope: !2397)
!2704 = !DILocation(line: 1887, column: 2, scope: !2397)
!2705 = !DILocation(line: 1888, column: 9, scope: !2397)
!2706 = !DILocation(line: 1888, column: 2, scope: !2397)
!2707 = !DILocation(line: 1889, column: 1, scope: !2397)
!2708 = distinct !DISubprogram(name: "__hexdump", scope: !4, file: !4, line: 1621, type: !2022, isLocal: true, isDefinition: true, scopeLine: 1622, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2709 = !DILocalVariable(name: "fp", arg: 1, scope: !2708, file: !4, line: 1621, type: !2024)
!2710 = !DILocation(line: 1621, column: 29, scope: !2708)
!2711 = !DILocalVariable(name: "buff", arg: 2, scope: !2708, file: !4, line: 1621, type: !1386)
!2712 = !DILocation(line: 1621, column: 45, scope: !2708)
!2713 = !DILocalVariable(name: "size", arg: 3, scope: !2708, file: !4, line: 1621, type: !268)
!2714 = !DILocation(line: 1621, column: 64, scope: !2708)
!2715 = !DILocalVariable(name: "i", scope: !2708, file: !4, line: 1623, type: !268)
!2716 = !DILocation(line: 1623, column: 15, scope: !2708)
!2717 = !DILocalVariable(name: "b", scope: !2708, file: !4, line: 1624, type: !2089)
!2718 = !DILocation(line: 1624, column: 17, scope: !2708)
!2719 = !DILocation(line: 1624, column: 32, scope: !2708)
!2720 = !DILocation(line: 1626, column: 9, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2708, file: !4, line: 1626, column: 2)
!2722 = !DILocation(line: 1626, column: 7, scope: !2721)
!2723 = !DILocation(line: 1626, column: 14, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2725, file: !4, discriminator: 1)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !4, line: 1626, column: 2)
!2726 = !DILocation(line: 1626, column: 18, scope: !2724)
!2727 = !DILocation(line: 1626, column: 16, scope: !2724)
!2728 = !DILocation(line: 1626, column: 2, scope: !2724)
!2729 = !DILocation(line: 1627, column: 8, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !4, line: 1627, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2725, file: !4, line: 1626, column: 29)
!2732 = !DILocation(line: 1627, column: 10, scope: !2730)
!2733 = !DILocation(line: 1627, column: 18, scope: !2730)
!2734 = !DILocation(line: 1627, column: 7, scope: !2731)
!2735 = !DILocation(line: 1628, column: 12, scope: !2730)
!2736 = !DILocation(line: 1628, column: 28, scope: !2730)
!2737 = !DILocation(line: 1628, column: 26, scope: !2730)
!2738 = !DILocation(line: 1628, column: 4, scope: !2730)
!2739 = !DILocation(line: 1629, column: 11, scope: !2731)
!2740 = !DILocation(line: 1629, column: 26, scope: !2731)
!2741 = !DILocation(line: 1629, column: 24, scope: !2731)
!2742 = !DILocation(line: 1629, column: 3, scope: !2731)
!2743 = !DILocation(line: 1630, column: 8, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2731, file: !4, line: 1630, column: 7)
!2745 = !DILocation(line: 1630, column: 10, scope: !2744)
!2746 = !DILocation(line: 1630, column: 18, scope: !2744)
!2747 = !DILocation(line: 1630, column: 7, scope: !2731)
!2748 = !DILocation(line: 1631, column: 12, scope: !2744)
!2749 = !DILocation(line: 1631, column: 4, scope: !2744)
!2750 = !DILocation(line: 1632, column: 2, scope: !2731)
!2751 = !DILocation(line: 1626, column: 25, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2725, file: !4, discriminator: 2)
!2753 = !DILocation(line: 1626, column: 2, scope: !2752)
!2754 = distinct !{!2754, !2755}
!2755 = !DILocation(line: 1626, column: 2, scope: !2708)
!2756 = !DILocation(line: 1633, column: 10, scope: !2708)
!2757 = !DILocation(line: 1633, column: 2, scope: !2708)
!2758 = !DILocation(line: 1634, column: 1, scope: !2708)
!2759 = distinct !DISubprogram(name: "genwqe_read_vpd", scope: !4, file: !4, line: 1891, type: !2760, isLocal: false, isDefinition: true, scopeLine: 1892, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!274, !583, !2762}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64, align: 64)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "genwqe_vpd", file: !584, line: 379, baseType: !2764)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_vpd", file: !584, line: 377, size: 4096, align: 8, elements: !2765)
!2765 = !{!2766}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "csv_vpd_data", scope: !2764, file: !584, line: 378, baseType: !2767, size: 4096, align: 8)
!2767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 4096, align: 8, elements: !448)
!2768 = !DILocalVariable(name: "card", arg: 1, scope: !2759, file: !4, line: 1891, type: !583)
!2769 = !DILocation(line: 1891, column: 35, scope: !2759)
!2770 = !DILocalVariable(name: "vpd", arg: 2, scope: !2759, file: !4, line: 1891, type: !2762)
!2771 = !DILocation(line: 1891, column: 53, scope: !2759)
!2772 = !DILocalVariable(name: "rc", scope: !2759, file: !4, line: 1893, type: !274)
!2773 = !DILocation(line: 1893, column: 6, scope: !2759)
!2774 = !DILocalVariable(name: "retc", scope: !2759, file: !4, line: 1894, type: !2196)
!2775 = !DILocation(line: 1894, column: 11, scope: !2759)
!2776 = !DILocalVariable(name: "attn", scope: !2759, file: !4, line: 1894, type: !2196)
!2777 = !DILocation(line: 1894, column: 17, scope: !2759)
!2778 = !DILocalVariable(name: "progr", scope: !2759, file: !4, line: 1895, type: !266)
!2779 = !DILocation(line: 1895, column: 11, scope: !2759)
!2780 = !DILocalVariable(name: "buflen", scope: !2759, file: !4, line: 1896, type: !279)
!2781 = !DILocation(line: 1896, column: 9, scope: !2759)
!2782 = !DILocalVariable(name: "buf", scope: !2759, file: !4, line: 1897, type: !275)
!2783 = !DILocation(line: 1897, column: 11, scope: !2759)
!2784 = !DILocalVariable(name: "page_size", scope: !2759, file: !4, line: 1898, type: !268)
!2785 = !DILocation(line: 1898, column: 15, scope: !2759)
!2786 = !DILocation(line: 1898, column: 27, scope: !2759)
!2787 = !DILocation(line: 1900, column: 13, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2759, file: !4, line: 1900, column: 5)
!2789 = !DILocation(line: 1900, column: 10, scope: !2788)
!2790 = !DILocation(line: 1900, column: 5, scope: !2759)
!2791 = !DILocation(line: 1901, column: 3, scope: !2788)
!2792 = !DILocation(line: 1903, column: 12, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2759, file: !4, line: 1903, column: 6)
!2794 = !DILocation(line: 1903, column: 18, scope: !2793)
!2795 = !DILocation(line: 1903, column: 9, scope: !2793)
!2796 = !DILocation(line: 1903, column: 6, scope: !2759)
!2797 = !DILocation(line: 1904, column: 3, scope: !2793)
!2798 = !DILocation(line: 1907, column: 27, scope: !2759)
!2799 = !DILocation(line: 1907, column: 25, scope: !2759)
!2800 = !DILocation(line: 1907, column: 42, scope: !2759)
!2801 = !DILocation(line: 1907, column: 52, scope: !2759)
!2802 = !DILocation(line: 1907, column: 40, scope: !2759)
!2803 = !DILocation(line: 1907, column: 38, scope: !2759)
!2804 = !DILocation(line: 1907, column: 9, scope: !2759)
!2805 = !DILocation(line: 1908, column: 17, scope: !2759)
!2806 = !DILocation(line: 1908, column: 28, scope: !2759)
!2807 = !DILocation(line: 1908, column: 8, scope: !2759)
!2808 = !DILocation(line: 1908, column: 6, scope: !2759)
!2809 = !DILocation(line: 1909, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2759, file: !4, line: 1909, column: 6)
!2811 = !DILocation(line: 1909, column: 6, scope: !2759)
!2812 = !DILocation(line: 1910, column: 3, scope: !2810)
!2813 = !DILocation(line: 1912, column: 27, scope: !2759)
!2814 = !DILocation(line: 1912, column: 38, scope: !2759)
!2815 = !DILocation(line: 1912, column: 43, scope: !2759)
!2816 = !DILocation(line: 1912, column: 7, scope: !2759)
!2817 = !DILocation(line: 1912, column: 5, scope: !2759)
!2818 = !DILocation(line: 1913, column: 6, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2759, file: !4, line: 1913, column: 6)
!2820 = !DILocation(line: 1913, column: 9, scope: !2819)
!2821 = !DILocation(line: 1913, column: 6, scope: !2759)
!2822 = !DILocation(line: 1914, column: 2, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !4, line: 1913, column: 14)
!2824 = !DILocation(line: 1914, column: 114, scope: !2823)
!2825 = !DILocation(line: 1914, column: 124, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2823, file: !4, discriminator: 1)
!2827 = !DILocation(line: 1914, column: 5, scope: !2823)
!2828 = !DILocation(line: 1914, column: 11, scope: !2823)
!2829 = !DILocation(line: 1914, column: 17, scope: !2823)
!2830 = !DILocation(line: 1914, column: 24, scope: !2823)
!2831 = !DILocation(line: 1914, column: 28, scope: !2823)
!2832 = !DILocation(line: 1914, column: 34, scope: !2823)
!2833 = !DILocation(line: 1914, column: 42, scope: !2823)
!2834 = !DILocation(line: 1914, column: 48, scope: !2823)
!2835 = !DILocation(line: 1914, column: 3, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2823, file: !4, discriminator: 2)
!2837 = !DILocation(line: 1917, column: 3, scope: !2823)
!2838 = !DILocation(line: 1919, column: 9, scope: !2759)
!2839 = !DILocation(line: 1919, column: 2, scope: !2759)
!2840 = !DILocation(line: 1919, column: 14, scope: !2759)
!2841 = !DILocation(line: 1921, column: 7, scope: !2759)
!2842 = !DILocation(line: 1921, column: 2, scope: !2759)
!2843 = !DILocation(line: 1922, column: 9, scope: !2759)
!2844 = !DILocation(line: 1922, column: 2, scope: !2759)
!2845 = !DILocation(line: 1923, column: 1, scope: !2759)
!2846 = distinct !DISubprogram(name: "genwqe_write_vpd", scope: !4, file: !4, line: 1925, type: !2847, isLocal: false, isDefinition: true, scopeLine: 1926, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!274, !583, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64, align: 64)
!2850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2763)
!2851 = !DILocalVariable(name: "card", arg: 1, scope: !2846, file: !4, line: 1925, type: !583)
!2852 = !DILocation(line: 1925, column: 36, scope: !2846)
!2853 = !DILocalVariable(name: "vpd", arg: 2, scope: !2846, file: !4, line: 1925, type: !2849)
!2854 = !DILocation(line: 1925, column: 60, scope: !2846)
!2855 = !DILocalVariable(name: "rc", scope: !2846, file: !4, line: 1927, type: !274)
!2856 = !DILocation(line: 1927, column: 6, scope: !2846)
!2857 = !DILocalVariable(name: "retc", scope: !2846, file: !4, line: 1928, type: !2196)
!2858 = !DILocation(line: 1928, column: 11, scope: !2846)
!2859 = !DILocalVariable(name: "attn", scope: !2846, file: !4, line: 1928, type: !2196)
!2860 = !DILocation(line: 1928, column: 17, scope: !2846)
!2861 = !DILocalVariable(name: "progr", scope: !2846, file: !4, line: 1929, type: !266)
!2862 = !DILocation(line: 1929, column: 11, scope: !2846)
!2863 = !DILocalVariable(name: "buflen", scope: !2846, file: !4, line: 1930, type: !279)
!2864 = !DILocation(line: 1930, column: 9, scope: !2846)
!2865 = !DILocalVariable(name: "buf", scope: !2846, file: !4, line: 1931, type: !275)
!2866 = !DILocation(line: 1931, column: 11, scope: !2846)
!2867 = !DILocalVariable(name: "page_size", scope: !2846, file: !4, line: 1932, type: !268)
!2868 = !DILocation(line: 1932, column: 15, scope: !2846)
!2869 = !DILocation(line: 1932, column: 27, scope: !2846)
!2870 = !DILocation(line: 1934, column: 13, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2846, file: !4, line: 1934, column: 5)
!2872 = !DILocation(line: 1934, column: 10, scope: !2871)
!2873 = !DILocation(line: 1934, column: 5, scope: !2846)
!2874 = !DILocation(line: 1935, column: 3, scope: !2871)
!2875 = !DILocation(line: 1937, column: 12, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2846, file: !4, line: 1937, column: 6)
!2877 = !DILocation(line: 1937, column: 18, scope: !2876)
!2878 = !DILocation(line: 1937, column: 9, scope: !2876)
!2879 = !DILocation(line: 1937, column: 6, scope: !2846)
!2880 = !DILocation(line: 1938, column: 3, scope: !2876)
!2881 = !DILocation(line: 1941, column: 27, scope: !2846)
!2882 = !DILocation(line: 1941, column: 25, scope: !2846)
!2883 = !DILocation(line: 1941, column: 42, scope: !2846)
!2884 = !DILocation(line: 1941, column: 52, scope: !2846)
!2885 = !DILocation(line: 1941, column: 40, scope: !2846)
!2886 = !DILocation(line: 1941, column: 38, scope: !2846)
!2887 = !DILocation(line: 1941, column: 9, scope: !2846)
!2888 = !DILocation(line: 1942, column: 17, scope: !2846)
!2889 = !DILocation(line: 1942, column: 28, scope: !2846)
!2890 = !DILocation(line: 1942, column: 8, scope: !2846)
!2891 = !DILocation(line: 1942, column: 6, scope: !2846)
!2892 = !DILocation(line: 1943, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2846, file: !4, line: 1943, column: 6)
!2894 = !DILocation(line: 1943, column: 6, scope: !2846)
!2895 = !DILocation(line: 1944, column: 3, scope: !2893)
!2896 = !DILocation(line: 1946, column: 9, scope: !2846)
!2897 = !DILocation(line: 1946, column: 14, scope: !2846)
!2898 = !DILocation(line: 1946, column: 2, scope: !2846)
!2899 = !DILocation(line: 1947, column: 29, scope: !2846)
!2900 = !DILocation(line: 1947, column: 40, scope: !2846)
!2901 = !DILocation(line: 1947, column: 45, scope: !2846)
!2902 = !DILocation(line: 1947, column: 7, scope: !2846)
!2903 = !DILocation(line: 1947, column: 5, scope: !2846)
!2904 = !DILocation(line: 1949, column: 6, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2846, file: !4, line: 1949, column: 6)
!2906 = !DILocation(line: 1949, column: 9, scope: !2905)
!2907 = !DILocation(line: 1949, column: 6, scope: !2846)
!2908 = !DILocation(line: 1950, column: 2, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2905, file: !4, line: 1949, column: 14)
!2910 = !DILocation(line: 1950, column: 114, scope: !2909)
!2911 = !DILocation(line: 1950, column: 124, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2909, file: !4, discriminator: 1)
!2913 = !DILocation(line: 1950, column: 5, scope: !2909)
!2914 = !DILocation(line: 1950, column: 11, scope: !2909)
!2915 = !DILocation(line: 1950, column: 17, scope: !2909)
!2916 = !DILocation(line: 1950, column: 24, scope: !2909)
!2917 = !DILocation(line: 1950, column: 28, scope: !2909)
!2918 = !DILocation(line: 1950, column: 34, scope: !2909)
!2919 = !DILocation(line: 1950, column: 42, scope: !2909)
!2920 = !DILocation(line: 1950, column: 48, scope: !2909)
!2921 = !DILocation(line: 1950, column: 3, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2909, file: !4, discriminator: 2)
!2923 = !DILocation(line: 1953, column: 2, scope: !2909)
!2924 = !DILocation(line: 1954, column: 7, scope: !2846)
!2925 = !DILocation(line: 1954, column: 2, scope: !2846)
!2926 = !DILocation(line: 1955, column: 9, scope: !2846)
!2927 = !DILocation(line: 1955, column: 2, scope: !2846)
!2928 = !DILocation(line: 1956, column: 1, scope: !2846)
!2929 = distinct !DISubprogram(name: "__genwqe_flash_update", scope: !4, file: !4, line: 1755, type: !2930, isLocal: true, isDefinition: true, scopeLine: 1762, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!274, !583, !326, !2089, !274, !2296, !2296, !2297}
!2932 = !DILocalVariable(name: "card", arg: 1, scope: !2929, file: !4, line: 1755, type: !583)
!2933 = !DILocation(line: 1755, column: 48, scope: !2929)
!2934 = !DILocalVariable(name: "partition", arg: 2, scope: !2929, file: !4, line: 1756, type: !326)
!2935 = !DILocation(line: 1756, column: 11, scope: !2929)
!2936 = !DILocalVariable(name: "buf", arg: 3, scope: !2929, file: !4, line: 1757, type: !2089)
!2937 = !DILocation(line: 1757, column: 21, scope: !2929)
!2938 = !DILocalVariable(name: "buflen", arg: 4, scope: !2929, file: !4, line: 1758, type: !274)
!2939 = !DILocation(line: 1758, column: 10, scope: !2929)
!2940 = !DILocalVariable(name: "retc", arg: 5, scope: !2929, file: !4, line: 1759, type: !2296)
!2941 = !DILocation(line: 1759, column: 16, scope: !2929)
!2942 = !DILocalVariable(name: "attn", arg: 6, scope: !2929, file: !4, line: 1760, type: !2296)
!2943 = !DILocation(line: 1760, column: 16, scope: !2929)
!2944 = !DILocalVariable(name: "progr", arg: 7, scope: !2929, file: !4, line: 1761, type: !2297)
!2945 = !DILocation(line: 1761, column: 16, scope: !2929)
!2946 = !DILocalVariable(name: "load", scope: !2929, file: !4, line: 1763, type: !2313)
!2947 = !DILocation(line: 1763, column: 26, scope: !2929)
!2948 = !DILocation(line: 1765, column: 2, scope: !2929)
!2949 = !DILocation(line: 1766, column: 7, scope: !2929)
!2950 = !DILocation(line: 1766, column: 19, scope: !2929)
!2951 = !DILocation(line: 1767, column: 7, scope: !2929)
!2952 = !DILocation(line: 1767, column: 11, scope: !2929)
!2953 = !DILocation(line: 1768, column: 28, scope: !2929)
!2954 = !DILocation(line: 1768, column: 19, scope: !2929)
!2955 = !DILocation(line: 1768, column: 7, scope: !2929)
!2956 = !DILocation(line: 1768, column: 17, scope: !2929)
!2957 = !DILocation(line: 1769, column: 34, scope: !2929)
!2958 = !DILocation(line: 1769, column: 19, scope: !2929)
!2959 = !DILocation(line: 1769, column: 7, scope: !2929)
!2960 = !DILocation(line: 1769, column: 17, scope: !2929)
!2961 = !DILocation(line: 1770, column: 14, scope: !2929)
!2962 = !DILocation(line: 1770, column: 7, scope: !2929)
!2963 = !DILocation(line: 1770, column: 12, scope: !2929)
!2964 = !DILocation(line: 1772, column: 23, scope: !2929)
!2965 = !DILocation(line: 1772, column: 29, scope: !2929)
!2966 = !DILocation(line: 1772, column: 17, scope: !2929)
!2967 = !DILocation(line: 1772, column: 2, scope: !2929)
!2968 = !DILocation(line: 1772, column: 8, scope: !2929)
!2969 = !DILocation(line: 1772, column: 15, scope: !2929)
!2970 = !DILocation(line: 1773, column: 21, scope: !2929)
!2971 = !DILocation(line: 1773, column: 20, scope: !2929)
!2972 = !DILocation(line: 1773, column: 2, scope: !2929)
!2973 = !DILocation(line: 1773, column: 8, scope: !2929)
!2974 = !DILocation(line: 1773, column: 18, scope: !2929)
!2975 = !DILocation(line: 1776, column: 6, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2929, file: !4, line: 1776, column: 6)
!2977 = !DILocation(line: 1776, column: 6, scope: !2929)
!2978 = !DILocation(line: 1777, column: 16, scope: !2976)
!2979 = !DILocation(line: 1777, column: 4, scope: !2976)
!2980 = !DILocation(line: 1777, column: 9, scope: !2976)
!2981 = !DILocation(line: 1777, column: 3, scope: !2976)
!2982 = !DILocation(line: 1778, column: 6, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2929, file: !4, line: 1778, column: 6)
!2984 = !DILocation(line: 1778, column: 6, scope: !2929)
!2985 = !DILocation(line: 1779, column: 16, scope: !2983)
!2986 = !DILocation(line: 1779, column: 4, scope: !2983)
!2987 = !DILocation(line: 1779, column: 9, scope: !2983)
!2988 = !DILocation(line: 1779, column: 3, scope: !2983)
!2989 = !DILocation(line: 1780, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2929, file: !4, line: 1780, column: 6)
!2991 = !DILocation(line: 1780, column: 6, scope: !2929)
!2992 = !DILocation(line: 1781, column: 17, scope: !2990)
!2993 = !DILocation(line: 1781, column: 4, scope: !2990)
!2994 = !DILocation(line: 1781, column: 10, scope: !2990)
!2995 = !DILocation(line: 1781, column: 3, scope: !2990)
!2996 = !DILocation(line: 1783, column: 6, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2929, file: !4, line: 1783, column: 6)
!2998 = !DILocation(line: 1783, column: 12, scope: !2997)
!2999 = !DILocation(line: 1783, column: 19, scope: !2997)
!3000 = !DILocation(line: 1783, column: 6, scope: !2929)
!3001 = !DILocation(line: 1784, column: 3, scope: !2997)
!3002 = !DILocation(line: 1786, column: 2, scope: !2929)
!3003 = !DILocation(line: 1787, column: 1, scope: !2929)
!3004 = distinct !DISubprogram(name: "genwqe_print_debug_data", scope: !4, file: !4, line: 1962, type: !3005, isLocal: false, isDefinition: true, scopeLine: 1964, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2024, !3007, !274}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64, align: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genwqe_debug_data", file: !11, line: 355, size: 6784, align: 64, elements: !3009)
!3009 = !{!3010, !3012, !3013, !3014, !3016, !3017}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "driver_version", scope: !3008, file: !11, line: 356, baseType: !3011, size: 512, align: 8)
!3011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 512, align: 8, elements: !407)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "slu_unitcfg", scope: !3008, file: !11, line: 357, baseType: !269, size: 64, align: 64, offset: 512)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "app_unitcfg", scope: !3008, file: !11, line: 358, baseType: !269, size: 64, align: 64, offset: 576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ddcb_before", scope: !3008, file: !11, line: 360, baseType: !3015, size: 2048, align: 8, offset: 640)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 2048, align: 8, elements: !316)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ddcb_prev", scope: !3008, file: !11, line: 361, baseType: !3015, size: 2048, align: 8, offset: 2688)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ddcb_finished", scope: !3008, file: !11, line: 362, baseType: !3015, size: 2048, align: 8, offset: 4736)
!3018 = !DILocalVariable(name: "fp", arg: 1, scope: !3004, file: !4, line: 1962, type: !2024)
!3019 = !DILocation(line: 1962, column: 36, scope: !3004)
!3020 = !DILocalVariable(name: "debug_data", arg: 2, scope: !3004, file: !4, line: 1962, type: !3007)
!3021 = !DILocation(line: 1962, column: 66, scope: !3004)
!3022 = !DILocalVariable(name: "flags", arg: 3, scope: !3004, file: !4, line: 1963, type: !274)
!3023 = !DILocation(line: 1963, column: 13, scope: !3004)
!3024 = !DILocation(line: 1965, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3004, file: !4, line: 1965, column: 6)
!3026 = !DILocation(line: 1965, column: 17, scope: !3025)
!3027 = !DILocation(line: 1965, column: 6, scope: !3004)
!3028 = !DILocation(line: 1966, column: 3, scope: !3025)
!3029 = !DILocation(line: 1968, column: 6, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3004, file: !4, line: 1968, column: 6)
!3031 = !DILocation(line: 1968, column: 12, scope: !3030)
!3032 = !DILocation(line: 1968, column: 6, scope: !3004)
!3033 = !DILocation(line: 1969, column: 11, scope: !3030)
!3034 = !DILocation(line: 1970, column: 4, scope: !3030)
!3035 = !DILocation(line: 1970, column: 16, scope: !3030)
!3036 = !DILocation(line: 1971, column: 15, scope: !3030)
!3037 = !DILocation(line: 1971, column: 27, scope: !3030)
!3038 = !DILocation(line: 1972, column: 15, scope: !3030)
!3039 = !DILocation(line: 1972, column: 27, scope: !3030)
!3040 = !DILocation(line: 1969, column: 3, scope: !3030)
!3041 = !DILocation(line: 1974, column: 6, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3004, file: !4, line: 1974, column: 6)
!3043 = !DILocation(line: 1974, column: 12, scope: !3042)
!3044 = !DILocation(line: 1974, column: 6, scope: !3004)
!3045 = !DILocation(line: 1975, column: 11, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !4, line: 1974, column: 22)
!3047 = !DILocation(line: 1975, column: 3, scope: !3046)
!3048 = !DILocation(line: 1976, column: 18, scope: !3046)
!3049 = !DILocation(line: 1976, column: 23, scope: !3046)
!3050 = !DILocation(line: 1976, column: 35, scope: !3046)
!3051 = !DILocation(line: 1976, column: 22, scope: !3046)
!3052 = !DILocation(line: 1976, column: 3, scope: !3046)
!3053 = !DILocation(line: 1978, column: 2, scope: !3046)
!3054 = !DILocation(line: 1980, column: 6, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3004, file: !4, line: 1980, column: 6)
!3056 = !DILocation(line: 1980, column: 12, scope: !3055)
!3057 = !DILocation(line: 1980, column: 6, scope: !3004)
!3058 = !DILocation(line: 1981, column: 11, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !4, line: 1980, column: 22)
!3060 = !DILocation(line: 1981, column: 3, scope: !3059)
!3061 = !DILocation(line: 1982, column: 18, scope: !3059)
!3062 = !DILocation(line: 1982, column: 23, scope: !3059)
!3063 = !DILocation(line: 1982, column: 35, scope: !3059)
!3064 = !DILocation(line: 1982, column: 22, scope: !3059)
!3065 = !DILocation(line: 1982, column: 3, scope: !3059)
!3066 = !DILocation(line: 1984, column: 2, scope: !3059)
!3067 = !DILocation(line: 1986, column: 6, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3004, file: !4, line: 1986, column: 6)
!3069 = !DILocation(line: 1986, column: 12, scope: !3068)
!3070 = !DILocation(line: 1986, column: 6, scope: !3004)
!3071 = !DILocation(line: 1987, column: 11, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !4, line: 1986, column: 22)
!3073 = !DILocation(line: 1987, column: 3, scope: !3072)
!3074 = !DILocation(line: 1988, column: 18, scope: !3072)
!3075 = !DILocation(line: 1988, column: 23, scope: !3072)
!3076 = !DILocation(line: 1988, column: 35, scope: !3072)
!3077 = !DILocation(line: 1988, column: 22, scope: !3072)
!3078 = !DILocation(line: 1988, column: 3, scope: !3072)
!3079 = !DILocation(line: 1990, column: 2, scope: !3072)
!3080 = !DILocation(line: 1991, column: 1, scope: !3004)
!3081 = distinct !DISubprogram(name: "libcard_init", scope: !4, file: !4, line: 1997, type: !3082, isLocal: true, isDefinition: true, scopeLine: 1998, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null}
!3084 = !DILocalVariable(name: "rc", scope: !3081, file: !4, line: 1999, type: !274)
!3085 = !DILocation(line: 1999, column: 6, scope: !3081)
!3086 = !DILocalVariable(name: "i", scope: !3081, file: !4, line: 1999, type: !274)
!3087 = !DILocation(line: 1999, column: 10, scope: !3081)
!3088 = !DILocalVariable(name: "ld", scope: !3081, file: !4, line: 2000, type: !311)
!3089 = !DILocation(line: 2000, column: 21, scope: !3081)
!3090 = !DILocation(line: 2002, column: 19, scope: !3081)
!3091 = !DILocation(line: 2002, column: 2, scope: !3081)
!3092 = !DILocation(line: 2004, column: 27, scope: !3081)
!3093 = !DILocation(line: 2004, column: 31, scope: !3081)
!3094 = !DILocation(line: 2004, column: 7, scope: !3081)
!3095 = !DILocation(line: 2004, column: 5, scope: !3081)
!3096 = !DILocation(line: 2005, column: 6, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3081, file: !4, line: 2005, column: 6)
!3098 = !DILocation(line: 2005, column: 9, scope: !3097)
!3099 = !DILocation(line: 2005, column: 6, scope: !3081)
!3100 = !DILocation(line: 2006, column: 2, scope: !3097)
!3101 = !DILocation(line: 2006, column: 63, scope: !3097)
!3102 = !DILocation(line: 2006, column: 73, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3097, file: !4, discriminator: 1)
!3104 = !DILocation(line: 2006, column: 3, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !3097, file: !4, discriminator: 2)
!3106 = !DILocation(line: 2006, column: 3, scope: !3097)
!3107 = !DILocation(line: 2009, column: 2, scope: !3081)
!3108 = !DILocation(line: 2009, column: 6, scope: !3081)
!3109 = !DILocation(line: 2009, column: 16, scope: !3081)
!3110 = !DILocation(line: 2010, column: 2, scope: !3081)
!3111 = !DILocation(line: 2010, column: 6, scope: !3081)
!3112 = !DILocation(line: 2010, column: 16, scope: !3081)
!3113 = !DILocation(line: 2011, column: 2, scope: !3081)
!3114 = !DILocation(line: 2011, column: 6, scope: !3081)
!3115 = !DILocation(line: 2011, column: 17, scope: !3081)
!3116 = !DILocation(line: 2012, column: 2, scope: !3081)
!3117 = !DILocation(line: 2012, column: 6, scope: !3081)
!3118 = !DILocation(line: 2012, column: 17, scope: !3081)
!3119 = !DILocation(line: 2013, column: 2, scope: !3081)
!3120 = !DILocation(line: 2013, column: 6, scope: !3081)
!3121 = !DILocation(line: 2013, column: 18, scope: !3081)
!3122 = !DILocation(line: 2015, column: 9, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3081, file: !4, line: 2015, column: 2)
!3124 = !DILocation(line: 2015, column: 7, scope: !3123)
!3125 = !DILocation(line: 2015, column: 14, scope: !3126)
!3126 = !DILexicalBlockFile(scope: !3127, file: !4, discriminator: 1)
!3127 = distinct !DILexicalBlock(scope: !3123, file: !4, line: 2015, column: 2)
!3128 = !DILocation(line: 2015, column: 16, scope: !3126)
!3129 = !DILocation(line: 2015, column: 2, scope: !3126)
!3130 = !DILocation(line: 2016, column: 20, scope: !3127)
!3131 = !DILocation(line: 2016, column: 3, scope: !3127)
!3132 = !DILocation(line: 2016, column: 7, scope: !3127)
!3133 = !DILocation(line: 2016, column: 23, scope: !3127)
!3134 = !DILocation(line: 2015, column: 30, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3127, file: !4, discriminator: 2)
!3136 = !DILocation(line: 2015, column: 2, scope: !3135)
!3137 = distinct !{!3137, !3138}
!3138 = !DILocation(line: 2015, column: 2, scope: !3081)
!3139 = !DILocation(line: 2018, column: 13, scope: !3081)
!3140 = !DILocation(line: 2019, column: 13, scope: !3081)
!3141 = !DILocation(line: 2022, column: 2, scope: !3081)
!3142 = !DILocation(line: 2022, column: 6, scope: !3081)
!3143 = !DILocation(line: 2022, column: 17, scope: !3081)
!3144 = !DILocation(line: 2023, column: 2, scope: !3081)
!3145 = !DILocation(line: 2023, column: 6, scope: !3081)
!3146 = !DILocation(line: 2023, column: 18, scope: !3081)
!3147 = !DILocation(line: 2024, column: 2, scope: !3081)
!3148 = !DILocation(line: 2024, column: 6, scope: !3081)
!3149 = !DILocation(line: 2024, column: 20, scope: !3081)
!3150 = !DILocation(line: 2025, column: 1, scope: !3081)
!3151 = distinct !DISubprogram(name: "ddcb_setup_crc32", scope: !4, file: !4, line: 1063, type: !3152, isLocal: true, isDefinition: true, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !311}
!3154 = !DILocalVariable(name: "d", arg: 1, scope: !3151, file: !4, line: 1063, type: !311)
!3155 = !DILocation(line: 1063, column: 49, scope: !3151)
!3156 = !DILocalVariable(name: "i", scope: !3151, file: !4, line: 1065, type: !268)
!3157 = !DILocation(line: 1065, column: 15, scope: !3151)
!3158 = !DILocalVariable(name: "j", scope: !3151, file: !4, line: 1065, type: !268)
!3159 = !DILocation(line: 1065, column: 18, scope: !3151)
!3160 = !DILocalVariable(name: "crc", scope: !3151, file: !4, line: 1066, type: !266)
!3161 = !DILocation(line: 1066, column: 11, scope: !3151)
!3162 = !DILocation(line: 1068, column: 9, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3151, file: !4, line: 1068, column: 2)
!3164 = !DILocation(line: 1068, column: 7, scope: !3163)
!3165 = !DILocation(line: 1068, column: 14, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !3167, file: !4, discriminator: 1)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !4, line: 1068, column: 2)
!3168 = !DILocation(line: 1068, column: 16, scope: !3166)
!3169 = !DILocation(line: 1068, column: 2, scope: !3166)
!3170 = !DILocation(line: 1069, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !4, line: 1068, column: 77)
!3172 = !DILocation(line: 1069, column: 11, scope: !3171)
!3173 = !DILocation(line: 1069, column: 7, scope: !3171)
!3174 = !DILocation(line: 1070, column: 10, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !4, line: 1070, column: 3)
!3176 = !DILocation(line: 1070, column: 8, scope: !3175)
!3177 = !DILocation(line: 1070, column: 15, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3179, file: !4, discriminator: 1)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !4, line: 1070, column: 3)
!3180 = !DILocation(line: 1070, column: 17, scope: !3178)
!3181 = !DILocation(line: 1070, column: 3, scope: !3178)
!3182 = !DILocation(line: 1071, column: 8, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !4, line: 1071, column: 8)
!3184 = distinct !DILexicalBlock(scope: !3179, file: !4, line: 1070, column: 27)
!3185 = !DILocation(line: 1071, column: 12, scope: !3183)
!3186 = !DILocation(line: 1071, column: 8, scope: !3184)
!3187 = !DILocation(line: 1072, column: 12, scope: !3183)
!3188 = !DILocation(line: 1072, column: 16, scope: !3183)
!3189 = !DILocation(line: 1072, column: 22, scope: !3183)
!3190 = !DILocation(line: 1072, column: 9, scope: !3183)
!3191 = !DILocation(line: 1072, column: 5, scope: !3183)
!3192 = !DILocation(line: 1074, column: 12, scope: !3183)
!3193 = !DILocation(line: 1074, column: 16, scope: !3183)
!3194 = !DILocation(line: 1074, column: 9, scope: !3183)
!3195 = !DILocation(line: 1075, column: 3, scope: !3184)
!3196 = !DILocation(line: 1070, column: 23, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3179, file: !4, discriminator: 2)
!3198 = !DILocation(line: 1070, column: 3, scope: !3197)
!3199 = distinct !{!3199, !3200}
!3200 = !DILocation(line: 1070, column: 3, scope: !3171)
!3201 = !DILocation(line: 1076, column: 21, scope: !3171)
!3202 = !DILocation(line: 1076, column: 16, scope: !3171)
!3203 = !DILocation(line: 1076, column: 3, scope: !3171)
!3204 = !DILocation(line: 1076, column: 6, scope: !3171)
!3205 = !DILocation(line: 1076, column: 19, scope: !3171)
!3206 = !DILocation(line: 1077, column: 2, scope: !3171)
!3207 = !DILocation(line: 1068, column: 73, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3167, file: !4, discriminator: 2)
!3209 = !DILocation(line: 1068, column: 2, scope: !3208)
!3210 = distinct !{!3210, !3211}
!3211 = !DILocation(line: 1068, column: 2, scope: !3151)
!3212 = !DILocation(line: 1078, column: 1, scope: !3151)
!3213 = distinct !DISubprogram(name: "libcard_exit", scope: !4, file: !4, line: 2028, type: !3082, isLocal: true, isDefinition: true, scopeLine: 2029, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3214 = !DILocalVariable(name: "ld", scope: !3213, file: !4, line: 2030, type: !311)
!3215 = !DILocation(line: 2030, column: 21, scope: !3213)
!3216 = !DILocalVariable(name: "dev", scope: !3213, file: !4, line: 2031, type: !583)
!3217 = !DILocation(line: 2031, column: 16, scope: !3213)
!3218 = !DILocation(line: 2033, column: 2, scope: !3213)
!3219 = distinct !{!3219, !3218}
!3220 = !DILocation(line: 2033, column: 11, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !3222, file: !4, discriminator: 1)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !4, line: 2033, column: 11)
!3223 = distinct !DILexicalBlock(scope: !3213, file: !4, line: 2033, column: 5)
!3224 = !DILocation(line: 2033, column: 1, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3222, file: !4, discriminator: 2)
!3226 = !DILocation(line: 2033, column: 61, scope: !3225)
!3227 = !DILocation(line: 2033, column: 71, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3225, file: !4, discriminator: 4)
!3229 = !DILocation(line: 2033, column: 14, scope: !3225)
!3230 = !DILocation(line: 2033, column: 26, scope: !3225)
!3231 = !DILocation(line: 2033, column: 38, scope: !3225)
!3232 = !DILocation(line: 2033, column: 22, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3225, file: !4, discriminator: 5)
!3234 = !DILocation(line: 2033, column: 22, scope: !3225)
!3235 = !DILocation(line: 2033, column: 52, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3223, file: !4, discriminator: 3)
!3237 = !DILocation(line: 2036, column: 22, scope: !3213)
!3238 = !DILocation(line: 2036, column: 26, scope: !3213)
!3239 = !DILocation(line: 2036, column: 2, scope: !3213)
!3240 = !DILocation(line: 2037, column: 29, scope: !3213)
!3241 = !DILocation(line: 2037, column: 8, scope: !3213)
!3242 = !DILocation(line: 2037, column: 6, scope: !3213)
!3243 = !DILocation(line: 2038, column: 2, scope: !3213)
!3244 = !DILocation(line: 2038, column: 9, scope: !3245)
!3245 = !DILexicalBlockFile(scope: !3213, file: !4, discriminator: 1)
!3246 = !DILocation(line: 2038, column: 2, scope: !3245)
!3247 = !DILocation(line: 2039, column: 3, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3213, file: !4, line: 2038, column: 14)
!3249 = distinct !{!3249, !3247}
!3250 = !DILocation(line: 2039, column: 12, scope: !3251)
!3251 = !DILexicalBlockFile(scope: !3252, file: !4, discriminator: 1)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !4, line: 2039, column: 12)
!3253 = distinct !DILexicalBlock(scope: !3248, file: !4, line: 2039, column: 6)
!3254 = !DILocation(line: 2039, column: 2, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !3252, file: !4, discriminator: 2)
!3256 = !DILocation(line: 2039, column: 69, scope: !3255)
!3257 = !DILocation(line: 2039, column: 79, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3255, file: !4, discriminator: 4)
!3259 = !DILocation(line: 2039, column: 108, scope: !3255)
!3260 = !DILocation(line: 2039, column: 23, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3255, file: !4, discriminator: 5)
!3262 = !DILocation(line: 2039, column: 23, scope: !3255)
!3263 = !DILocation(line: 2039, column: 114, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3253, file: !4, discriminator: 3)
!3265 = !DILocation(line: 2040, column: 3, scope: !3248)
!3266 = !DILocation(line: 2040, column: 8, scope: !3248)
!3267 = !DILocation(line: 2040, column: 18, scope: !3248)
!3268 = !DILocation(line: 2041, column: 9, scope: !3248)
!3269 = !DILocation(line: 2041, column: 14, scope: !3248)
!3270 = !DILocation(line: 2041, column: 7, scope: !3248)
!3271 = !DILocation(line: 2038, column: 2, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3213, file: !4, discriminator: 2)
!3273 = distinct !{!3273, !3243}
!3274 = !DILocation(line: 2043, column: 29, scope: !3213)
!3275 = !DILocation(line: 2043, column: 8, scope: !3213)
!3276 = !DILocation(line: 2043, column: 6, scope: !3213)
!3277 = !DILocation(line: 2044, column: 2, scope: !3213)
!3278 = !DILocation(line: 2044, column: 9, scope: !3245)
!3279 = !DILocation(line: 2044, column: 2, scope: !3245)
!3280 = !DILocation(line: 2045, column: 3, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3213, file: !4, line: 2044, column: 14)
!3282 = distinct !{!3282, !3280}
!3283 = !DILocation(line: 2045, column: 12, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3285, file: !4, discriminator: 1)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !4, line: 2045, column: 12)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !4, line: 2045, column: 6)
!3287 = !DILocation(line: 2045, column: 2, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !3285, file: !4, discriminator: 2)
!3289 = !DILocation(line: 2045, column: 68, scope: !3288)
!3290 = !DILocation(line: 2045, column: 78, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3288, file: !4, discriminator: 4)
!3292 = !DILocation(line: 2045, column: 107, scope: !3288)
!3293 = !DILocation(line: 2045, column: 23, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3288, file: !4, discriminator: 5)
!3295 = !DILocation(line: 2045, column: 23, scope: !3288)
!3296 = !DILocation(line: 2045, column: 113, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !3286, file: !4, discriminator: 3)
!3298 = !DILocation(line: 2046, column: 3, scope: !3281)
!3299 = !DILocation(line: 2046, column: 8, scope: !3281)
!3300 = !DILocation(line: 2046, column: 18, scope: !3281)
!3301 = !DILocation(line: 2047, column: 9, scope: !3281)
!3302 = !DILocation(line: 2047, column: 14, scope: !3281)
!3303 = !DILocation(line: 2047, column: 7, scope: !3281)
!3304 = !DILocation(line: 2044, column: 2, scope: !3272)
!3305 = distinct !{!3305, !3277}
!3306 = !DILocation(line: 2049, column: 24, scope: !3213)
!3307 = !DILocation(line: 2049, column: 28, scope: !3213)
!3308 = !DILocation(line: 2049, column: 2, scope: !3213)
!3309 = !DILocation(line: 2051, column: 6, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3213, file: !4, line: 2051, column: 6)
!3311 = !DILocation(line: 2051, column: 10, scope: !3310)
!3312 = !DILocation(line: 2051, column: 22, scope: !3310)
!3313 = !DILocation(line: 2051, column: 6, scope: !3213)
!3314 = !DILocation(line: 2053, column: 18, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !4, line: 2051, column: 40)
!3316 = !DILocation(line: 2053, column: 22, scope: !3315)
!3317 = !DILocation(line: 2053, column: 3, scope: !3315)
!3318 = !DILocation(line: 2055, column: 16, scope: !3315)
!3319 = !DILocation(line: 2055, column: 20, scope: !3315)
!3320 = !DILocation(line: 2055, column: 3, scope: !3315)
!3321 = !DILocation(line: 2056, column: 3, scope: !3315)
!3322 = !DILocation(line: 2056, column: 7, scope: !3315)
!3323 = !DILocation(line: 2056, column: 19, scope: !3315)
!3324 = !DILocation(line: 2057, column: 20, scope: !3315)
!3325 = !DILocation(line: 2057, column: 24, scope: !3315)
!3326 = !DILocation(line: 2057, column: 36, scope: !3315)
!3327 = !DILocation(line: 2057, column: 40, scope: !3315)
!3328 = !DILocation(line: 2057, column: 3, scope: !3315)
!3329 = !DILocation(line: 2058, column: 2, scope: !3315)
!3330 = !DILocation(line: 2059, column: 6, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3213, file: !4, line: 2059, column: 6)
!3332 = !DILocation(line: 2059, column: 10, scope: !3331)
!3333 = !DILocation(line: 2059, column: 20, scope: !3331)
!3334 = !DILocation(line: 2059, column: 6, scope: !3213)
!3335 = !DILocation(line: 2061, column: 18, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !4, line: 2059, column: 38)
!3337 = !DILocation(line: 2061, column: 22, scope: !3336)
!3338 = !DILocation(line: 2061, column: 3, scope: !3336)
!3339 = !DILocation(line: 2063, column: 16, scope: !3336)
!3340 = !DILocation(line: 2063, column: 20, scope: !3336)
!3341 = !DILocation(line: 2063, column: 3, scope: !3336)
!3342 = !DILocation(line: 2064, column: 3, scope: !3336)
!3343 = !DILocation(line: 2064, column: 7, scope: !3336)
!3344 = !DILocation(line: 2064, column: 17, scope: !3336)
!3345 = !DILocation(line: 2065, column: 2, scope: !3336)
!3346 = !DILocation(line: 2067, column: 22, scope: !3213)
!3347 = !DILocation(line: 2067, column: 26, scope: !3213)
!3348 = !DILocation(line: 2067, column: 2, scope: !3213)
!3349 = !DILocation(line: 2068, column: 19, scope: !3213)
!3350 = !DILocation(line: 2068, column: 2, scope: !3213)
!3351 = !DILocation(line: 2069, column: 24, scope: !3213)
!3352 = !DILocation(line: 2069, column: 28, scope: !3213)
!3353 = !DILocation(line: 2069, column: 2, scope: !3213)
!3354 = !DILocation(line: 2071, column: 25, scope: !3213)
!3355 = !DILocation(line: 2071, column: 29, scope: !3213)
!3356 = !DILocation(line: 2071, column: 2, scope: !3213)
!3357 = !DILocation(line: 2072, column: 2, scope: !3213)
!3358 = distinct !{!3358, !3357}
!3359 = !DILocation(line: 2072, column: 11, scope: !3360)
!3360 = !DILexicalBlockFile(scope: !3361, file: !4, discriminator: 1)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !4, line: 2072, column: 11)
!3362 = distinct !DILexicalBlock(scope: !3213, file: !4, line: 2072, column: 5)
!3363 = !DILocation(line: 2072, column: 1, scope: !3364)
!3364 = !DILexicalBlockFile(scope: !3361, file: !4, discriminator: 2)
!3365 = !DILocation(line: 2072, column: 60, scope: !3364)
!3366 = !DILocation(line: 2072, column: 70, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3364, file: !4, discriminator: 4)
!3368 = !DILocation(line: 2072, column: 14, scope: !3364)
!3369 = !DILocation(line: 2072, column: 26, scope: !3364)
!3370 = !DILocation(line: 2072, column: 38, scope: !3364)
!3371 = !DILocation(line: 2072, column: 22, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3364, file: !4, discriminator: 5)
!3373 = !DILocation(line: 2072, column: 22, scope: !3364)
!3374 = !DILocation(line: 2072, column: 52, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3362, file: !4, discriminator: 3)
!3376 = !DILocation(line: 2074, column: 1, scope: !3213)
!3377 = distinct !DISubprogram(name: "__fixup_fd_lists", scope: !4, file: !4, line: 868, type: !3152, isLocal: true, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3378 = !DILocalVariable(name: "ld", arg: 1, scope: !3377, file: !4, line: 868, type: !311)
!3379 = !DILocation(line: 868, column: 49, scope: !3377)
!3380 = !DILocation(line: 870, column: 2, scope: !3377)
!3381 = distinct !{!3381, !3380}
!3382 = !DILocation(line: 870, column: 11, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3384, file: !4, discriminator: 1)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !4, line: 870, column: 11)
!3385 = distinct !DILexicalBlock(scope: !3377, file: !4, line: 870, column: 5)
!3386 = !DILocation(line: 870, column: 1, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3384, file: !4, discriminator: 2)
!3388 = !DILocation(line: 870, column: 67, scope: !3387)
!3389 = !DILocation(line: 870, column: 77, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3387, file: !4, discriminator: 4)
!3391 = !DILocation(line: 870, column: 14, scope: !3387)
!3392 = !DILocation(line: 870, column: 18, scope: !3387)
!3393 = !DILocation(line: 870, column: 30, scope: !3387)
!3394 = !DILocation(line: 870, column: 34, scope: !3387)
!3395 = !DILocation(line: 870, column: 22, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3387, file: !4, discriminator: 5)
!3397 = !DILocation(line: 870, column: 22, scope: !3387)
!3398 = !DILocation(line: 870, column: 47, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !3385, file: !4, discriminator: 3)
!3400 = !DILocation(line: 873, column: 6, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3377, file: !4, line: 873, column: 6)
!3402 = !DILocation(line: 873, column: 6, scope: !3377)
!3403 = !DILocation(line: 874, column: 19, scope: !3401)
!3404 = !DILocation(line: 874, column: 3, scope: !3401)
!3405 = !DILocation(line: 875, column: 11, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !4, line: 875, column: 11)
!3407 = !DILocation(line: 875, column: 11, scope: !3401)
!3408 = !DILocation(line: 876, column: 19, scope: !3406)
!3409 = !DILocation(line: 876, column: 3, scope: !3406)
!3410 = !DILocation(line: 877, column: 1, scope: !3377)
!3411 = distinct !DISubprogram(name: "card_overwrite_slu_id", scope: !4, file: !4, line: 2082, type: !3412, isLocal: false, isDefinition: true, scopeLine: 2083, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{null, !583, !292}
!3414 = !DILocalVariable(name: "dev", arg: 1, scope: !3411, file: !4, line: 2082, type: !583)
!3415 = !DILocation(line: 2082, column: 42, scope: !3411)
!3416 = !DILocalVariable(name: "slu_id", arg: 2, scope: !3411, file: !4, line: 2082, type: !292)
!3417 = !DILocation(line: 2082, column: 56, scope: !3411)
!3418 = !DILocation(line: 2084, column: 6, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3411, file: !4, line: 2084, column: 6)
!3420 = !DILocation(line: 2084, column: 6, scope: !3411)
!3421 = !DILocation(line: 2085, column: 17, scope: !3419)
!3422 = !DILocation(line: 2085, column: 3, scope: !3419)
!3423 = !DILocation(line: 2085, column: 8, scope: !3419)
!3424 = !DILocation(line: 2085, column: 15, scope: !3419)
!3425 = !DILocation(line: 2086, column: 1, scope: !3411)
!3426 = distinct !DISubprogram(name: "card_overwrite_app_id", scope: !4, file: !4, line: 2094, type: !3412, isLocal: false, isDefinition: true, scopeLine: 2095, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3427 = !DILocalVariable(name: "dev", arg: 1, scope: !3426, file: !4, line: 2094, type: !583)
!3428 = !DILocation(line: 2094, column: 42, scope: !3426)
!3429 = !DILocalVariable(name: "app_id", arg: 2, scope: !3426, file: !4, line: 2094, type: !292)
!3430 = !DILocation(line: 2094, column: 56, scope: !3426)
!3431 = !DILocation(line: 2096, column: 6, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3426, file: !4, line: 2096, column: 6)
!3433 = !DILocation(line: 2096, column: 6, scope: !3426)
!3434 = !DILocation(line: 2097, column: 17, scope: !3432)
!3435 = !DILocation(line: 2097, column: 3, scope: !3432)
!3436 = !DILocation(line: 2097, column: 8, scope: !3432)
!3437 = !DILocation(line: 2097, column: 15, scope: !3432)
!3438 = !DILocation(line: 2098, column: 1, scope: !3426)
!3439 = distinct !DISubprogram(name: "card_get_app_id", scope: !4, file: !4, line: 2106, type: !3440, isLocal: false, isDefinition: true, scopeLine: 2107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!292, !583}
!3442 = !DILocalVariable(name: "dev", arg: 1, scope: !3439, file: !4, line: 2106, type: !583)
!3443 = !DILocation(line: 2106, column: 40, scope: !3439)
!3444 = !DILocation(line: 2108, column: 6, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3439, file: !4, line: 2108, column: 6)
!3446 = !DILocation(line: 2108, column: 6, scope: !3439)
!3447 = !DILocation(line: 2109, column: 10, scope: !3445)
!3448 = !DILocation(line: 2109, column: 15, scope: !3445)
!3449 = !DILocation(line: 2109, column: 3, scope: !3445)
!3450 = !DILocation(line: 2110, column: 2, scope: !3439)
!3451 = !DILocation(line: 2111, column: 1, scope: !3439)
!3452 = distinct !DISubprogram(name: "genwqe_dump_statistics", scope: !4, file: !4, line: 2113, type: !3453, isLocal: false, isDefinition: true, scopeLine: 2114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!274, !2024}
!3455 = !DILocalVariable(name: "fp", arg: 1, scope: !3452, file: !4, line: 2113, type: !2024)
!3456 = !DILocation(line: 2113, column: 34, scope: !3452)
!3457 = !DILocalVariable(name: "card_num", scope: !3452, file: !4, line: 2115, type: !274)
!3458 = !DILocation(line: 2115, column: 6, scope: !3452)
!3459 = !DILocation(line: 2117, column: 10, scope: !3452)
!3460 = !DILocation(line: 2117, column: 2, scope: !3452)
!3461 = !DILocation(line: 2118, column: 16, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3452, file: !4, line: 2118, column: 2)
!3463 = !DILocation(line: 2118, column: 7, scope: !3462)
!3464 = !DILocation(line: 2118, column: 21, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3466, file: !4, discriminator: 1)
!3466 = distinct !DILexicalBlock(scope: !3462, file: !4, line: 2118, column: 2)
!3467 = !DILocation(line: 2118, column: 30, scope: !3465)
!3468 = !DILocation(line: 2118, column: 2, scope: !3465)
!3469 = !DILocation(line: 2119, column: 29, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !4, line: 2119, column: 7)
!3471 = distinct !DILexicalBlock(scope: !3466, file: !4, line: 2118, column: 48)
!3472 = !DILocation(line: 2119, column: 8, scope: !3470)
!3473 = !DILocation(line: 2119, column: 39, scope: !3470)
!3474 = !DILocation(line: 2119, column: 45, scope: !3470)
!3475 = !DILocation(line: 2120, column: 27, scope: !3470)
!3476 = !DILocation(line: 2120, column: 8, scope: !3470)
!3477 = !DILocation(line: 2120, column: 37, scope: !3470)
!3478 = !DILocation(line: 2119, column: 7, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3471, file: !4, discriminator: 1)
!3480 = !DILocation(line: 2121, column: 4, scope: !3470)
!3481 = !DILocation(line: 2122, column: 11, scope: !3471)
!3482 = !DILocation(line: 2124, column: 4, scope: !3471)
!3483 = !DILocation(line: 2124, column: 35, scope: !3471)
!3484 = !DILocation(line: 2124, column: 14, scope: !3471)
!3485 = !DILocation(line: 2125, column: 23, scope: !3471)
!3486 = !DILocation(line: 2125, column: 4, scope: !3471)
!3487 = !DILocation(line: 2122, column: 3, scope: !3471)
!3488 = !DILocation(line: 2126, column: 2, scope: !3471)
!3489 = !DILocation(line: 2118, column: 44, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3466, file: !4, discriminator: 2)
!3491 = !DILocation(line: 2118, column: 2, scope: !3490)
!3492 = distinct !{!3492, !3493}
!3493 = !DILocation(line: 2118, column: 2, scope: !3452)
!3494 = !DILocation(line: 2130, column: 2, scope: !3452)
!3495 = distinct !DISubprogram(name: "__fd_m_get_and_inc", scope: !4, file: !4, line: 374, type: !629, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3496 = !DILocalVariable(name: "dev", arg: 1, scope: !3495, file: !4, line: 374, type: !281)
!3497 = !DILocation(line: 374, column: 50, scope: !3495)
!3498 = !DILocalVariable(name: "card_num", arg: 2, scope: !3495, file: !4, line: 374, type: !631)
!3499 = !DILocation(line: 374, column: 60, scope: !3495)
!3500 = !DILocalVariable(name: "now", scope: !3495, file: !4, line: 376, type: !295)
!3501 = !DILocation(line: 376, column: 18, scope: !3495)
!3502 = !DILocalVariable(name: "next", scope: !3495, file: !4, line: 376, type: !295)
!3503 = !DILocation(line: 376, column: 24, scope: !3495)
!3504 = !DILocalVariable(name: "fd", scope: !3495, file: !4, line: 377, type: !274)
!3505 = !DILocation(line: 377, column: 6, scope: !3495)
!3506 = !DILocation(line: 379, column: 8, scope: !3495)
!3507 = !DILocation(line: 379, column: 13, scope: !3495)
!3508 = !DILocation(line: 379, column: 6, scope: !3495)
!3509 = !DILocation(line: 380, column: 6, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3495, file: !4, line: 380, column: 6)
!3511 = !DILocation(line: 380, column: 6, scope: !3495)
!3512 = !DILocation(line: 381, column: 8, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !4, line: 380, column: 11)
!3514 = !DILocation(line: 381, column: 13, scope: !3513)
!3515 = !DILocation(line: 381, column: 6, scope: !3513)
!3516 = !DILocation(line: 382, column: 7, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !4, line: 382, column: 7)
!3518 = !DILocation(line: 382, column: 7, scope: !3513)
!3519 = !DILocation(line: 383, column: 16, scope: !3517)
!3520 = !DILocation(line: 383, column: 21, scope: !3517)
!3521 = !DILocation(line: 383, column: 5, scope: !3517)
!3522 = !DILocation(line: 383, column: 14, scope: !3517)
!3523 = !DILocation(line: 383, column: 4, scope: !3517)
!3524 = !DILocation(line: 385, column: 10, scope: !3513)
!3525 = !DILocation(line: 385, column: 15, scope: !3513)
!3526 = !DILocation(line: 385, column: 8, scope: !3513)
!3527 = !DILocation(line: 386, column: 14, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3513, file: !4, line: 386, column: 6)
!3529 = !DILocation(line: 386, column: 11, scope: !3528)
!3530 = !DILocation(line: 386, column: 6, scope: !3513)
!3531 = !DILocation(line: 387, column: 11, scope: !3528)
!3532 = !DILocation(line: 387, column: 9, scope: !3528)
!3533 = !DILocation(line: 387, column: 4, scope: !3528)
!3534 = !DILocation(line: 388, column: 19, scope: !3513)
!3535 = !DILocation(line: 388, column: 3, scope: !3513)
!3536 = !DILocation(line: 388, column: 8, scope: !3513)
!3537 = !DILocation(line: 388, column: 17, scope: !3513)
!3538 = !DILocation(line: 389, column: 2, scope: !3513)
!3539 = !DILocation(line: 390, column: 9, scope: !3495)
!3540 = !DILocation(line: 390, column: 2, scope: !3495)
!3541 = distinct !DISubprogram(name: "__node_create", scope: !4, file: !4, line: 483, type: !3542, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!281, !274, !274}
!3544 = !DILocalVariable(name: "card_no", arg: 1, scope: !3541, file: !4, line: 483, type: !274)
!3545 = !DILocation(line: 483, column: 45, scope: !3541)
!3546 = !DILocalVariable(name: "mode", arg: 2, scope: !3541, file: !4, line: 483, type: !274)
!3547 = !DILocation(line: 483, column: 58, scope: !3541)
!3548 = !DILocalVariable(name: "new_dev", scope: !3541, file: !4, line: 485, type: !281)
!3549 = !DILocation(line: 485, column: 21, scope: !3541)
!3550 = !DILocation(line: 487, column: 12, scope: !3541)
!3551 = !DILocation(line: 487, column: 10, scope: !3541)
!3552 = !DILocation(line: 488, column: 6, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3541, file: !4, line: 488, column: 6)
!3554 = !DILocation(line: 488, column: 6, scope: !3541)
!3555 = !DILocation(line: 489, column: 22, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3553, file: !4, line: 488, column: 15)
!3557 = !DILocation(line: 489, column: 3, scope: !3556)
!3558 = !DILocation(line: 489, column: 12, scope: !3556)
!3559 = !DILocation(line: 489, column: 20, scope: !3556)
!3560 = !DILocation(line: 490, column: 3, scope: !3556)
!3561 = !DILocation(line: 490, column: 12, scope: !3556)
!3562 = !DILocation(line: 490, column: 22, scope: !3556)
!3563 = !DILocation(line: 492, column: 19, scope: !3556)
!3564 = !DILocation(line: 492, column: 3, scope: !3556)
!3565 = !DILocation(line: 492, column: 12, scope: !3556)
!3566 = !DILocation(line: 492, column: 17, scope: !3556)
!3567 = !DILocation(line: 493, column: 35, scope: !3556)
!3568 = !DILocation(line: 493, column: 20, scope: !3556)
!3569 = !DILocation(line: 493, column: 3, scope: !3556)
!3570 = !DILocation(line: 493, column: 12, scope: !3556)
!3571 = !DILocation(line: 493, column: 18, scope: !3556)
!3572 = !DILocation(line: 494, column: 3, scope: !3556)
!3573 = !DILocation(line: 494, column: 12, scope: !3556)
!3574 = !DILocation(line: 494, column: 19, scope: !3556)
!3575 = !DILocation(line: 495, column: 3, scope: !3556)
!3576 = !DILocation(line: 495, column: 12, scope: !3556)
!3577 = !DILocation(line: 495, column: 19, scope: !3556)
!3578 = !DILocation(line: 496, column: 3, scope: !3556)
!3579 = !DILocation(line: 496, column: 12, scope: !3556)
!3580 = !DILocation(line: 496, column: 17, scope: !3556)
!3581 = !DILocation(line: 497, column: 3, scope: !3556)
!3582 = !DILocation(line: 497, column: 12, scope: !3556)
!3583 = !DILocation(line: 497, column: 21, scope: !3556)
!3584 = !DILocation(line: 498, column: 3, scope: !3556)
!3585 = !DILocation(line: 498, column: 12, scope: !3556)
!3586 = !DILocation(line: 498, column: 17, scope: !3556)
!3587 = !DILocation(line: 499, column: 3, scope: !3556)
!3588 = !DILocation(line: 499, column: 12, scope: !3556)
!3589 = !DILocation(line: 499, column: 17, scope: !3556)
!3590 = !DILocation(line: 500, column: 21, scope: !3556)
!3591 = !DILocation(line: 500, column: 3, scope: !3556)
!3592 = !DILocation(line: 500, column: 12, scope: !3556)
!3593 = !DILocation(line: 500, column: 19, scope: !3556)
!3594 = !DILocation(line: 501, column: 2, scope: !3556)
!3595 = !DILocation(line: 502, column: 2, scope: !3553)
!3596 = !DILocation(line: 502, column: 62, scope: !3553)
!3597 = !DILocation(line: 502, column: 72, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3553, file: !4, discriminator: 1)
!3599 = !DILocation(line: 502, column: 100, scope: !3553)
!3600 = !DILocation(line: 502, column: 3, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3553, file: !4, discriminator: 2)
!3602 = !DILocation(line: 504, column: 9, scope: !3541)
!3603 = !DILocation(line: 504, column: 2, scope: !3541)
!3604 = distinct !DISubprogram(name: "__mode_2_omode", scope: !4, file: !4, line: 222, type: !3605, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!274, !274}
!3607 = !DILocalVariable(name: "mode", arg: 1, scope: !3604, file: !4, line: 222, type: !274)
!3608 = !DILocation(line: 222, column: 31, scope: !3604)
!3609 = !DILocalVariable(name: "omode", scope: !3604, file: !4, line: 224, type: !274)
!3610 = !DILocation(line: 224, column: 6, scope: !3604)
!3611 = !DILocation(line: 227, column: 6, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3604, file: !4, line: 227, column: 6)
!3613 = !DILocation(line: 227, column: 11, scope: !3612)
!3614 = !DILocation(line: 227, column: 6, scope: !3604)
!3615 = !DILocation(line: 228, column: 9, scope: !3612)
!3616 = !DILocation(line: 228, column: 3, scope: !3612)
!3617 = !DILocation(line: 229, column: 6, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3604, file: !4, line: 229, column: 6)
!3619 = !DILocation(line: 229, column: 11, scope: !3618)
!3620 = !DILocation(line: 229, column: 6, scope: !3604)
!3621 = !DILocation(line: 230, column: 9, scope: !3618)
!3622 = !DILocation(line: 230, column: 3, scope: !3618)
!3623 = !DILocation(line: 231, column: 6, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3604, file: !4, line: 231, column: 6)
!3625 = !DILocation(line: 231, column: 11, scope: !3624)
!3626 = !DILocation(line: 231, column: 6, scope: !3604)
!3627 = !DILocation(line: 232, column: 9, scope: !3624)
!3628 = !DILocation(line: 232, column: 3, scope: !3624)
!3629 = !DILocation(line: 233, column: 6, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3604, file: !4, line: 233, column: 6)
!3631 = !DILocation(line: 233, column: 11, scope: !3630)
!3632 = !DILocation(line: 233, column: 6, scope: !3604)
!3633 = !DILocation(line: 234, column: 9, scope: !3630)
!3634 = !DILocation(line: 234, column: 3, scope: !3630)
!3635 = !DILocation(line: 239, column: 9, scope: !3604)
!3636 = !DILocation(line: 239, column: 2, scope: !3604)
!3637 = distinct !DISubprogram(name: "__health_thread", scope: !4, file: !4, line: 885, type: !3638, isLocal: true, isDefinition: true, scopeLine: 886, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!265, !265}
!3640 = !DILocalVariable(name: "data", arg: 1, scope: !3637, file: !4, line: 885, type: !265)
!3641 = !DILocation(line: 885, column: 36, scope: !3637)
!3642 = !DILocalVariable(name: "ld", scope: !3637, file: !4, line: 887, type: !311)
!3643 = !DILocation(line: 887, column: 21, scope: !3637)
!3644 = !DILocation(line: 887, column: 47, scope: !3637)
!3645 = !DILocation(line: 887, column: 26, scope: !3637)
!3646 = !DILocation(line: 889, column: 2, scope: !3637)
!3647 = !DILocalVariable(name: "ts", scope: !3648, file: !4, line: 891, type: !2432)
!3648 = distinct !DILexicalBlock(scope: !3637, file: !4, line: 889, column: 12)
!3649 = !DILocation(line: 891, column: 19, scope: !3648)
!3650 = !DILocation(line: 894, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3648, file: !4, line: 894, column: 7)
!3652 = !DILocation(line: 894, column: 41, scope: !3651)
!3653 = !DILocation(line: 894, column: 7, scope: !3648)
!3654 = !DILocation(line: 895, column: 4, scope: !3651)
!3655 = !DILocation(line: 897, column: 6, scope: !3648)
!3656 = !DILocation(line: 897, column: 13, scope: !3648)
!3657 = !DILocation(line: 898, column: 18, scope: !3648)
!3658 = !DILocation(line: 898, column: 22, scope: !3648)
!3659 = !DILocation(line: 898, column: 3, scope: !3648)
!3660 = !DILocation(line: 905, column: 3, scope: !3648)
!3661 = !DILocation(line: 906, column: 23, scope: !3648)
!3662 = !DILocation(line: 906, column: 27, scope: !3648)
!3663 = !DILocation(line: 906, column: 3, scope: !3648)
!3664 = !DILocation(line: 907, column: 20, scope: !3648)
!3665 = !DILocation(line: 907, column: 3, scope: !3648)
!3666 = !DILocation(line: 908, column: 25, scope: !3648)
!3667 = !DILocation(line: 908, column: 29, scope: !3648)
!3668 = !DILocation(line: 908, column: 3, scope: !3648)
!3669 = !DILocation(line: 909, column: 3, scope: !3648)
!3670 = !DILocation(line: 889, column: 2, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3637, file: !4, discriminator: 1)
!3672 = distinct !{!3672, !3646}
!3673 = !DILocation(line: 917, column: 1, scope: !3637)
!3674 = distinct !DISubprogram(name: "__m_open_all", scope: !4, file: !4, line: 443, type: !1114, isLocal: true, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3675 = !DILocalVariable(name: "ld", arg: 1, scope: !3674, file: !4, line: 443, type: !311)
!3676 = !DILocation(line: 443, column: 44, scope: !3674)
!3677 = !DILocalVariable(name: "found_cards", scope: !3674, file: !4, line: 445, type: !274)
!3678 = !DILocation(line: 445, column: 6, scope: !3674)
!3679 = !DILocalVariable(name: "card_no", scope: !3674, file: !4, line: 446, type: !274)
!3680 = !DILocation(line: 446, column: 6, scope: !3674)
!3681 = !DILocalVariable(name: "n", scope: !3674, file: !4, line: 447, type: !274)
!3682 = !DILocation(line: 447, column: 6, scope: !3674)
!3683 = !DILocalVariable(name: "rc", scope: !3674, file: !4, line: 447, type: !274)
!3684 = !DILocation(line: 447, column: 9, scope: !3674)
!3685 = !DILocalVariable(name: "namelist", scope: !3674, file: !4, line: 448, type: !3686)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64, align: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64, align: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !3689, line: 22, size: 2240, align: 64, elements: !3690)
!3689 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop")
!3690 = !{!3691, !3692, !3693, !3694, !3695}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !3688, file: !3689, line: 25, baseType: !2415, size: 64, align: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !3688, file: !3689, line: 26, baseType: !2055, size: 64, align: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !3688, file: !3689, line: 31, baseType: !278, size: 16, align: 16, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !3688, file: !3689, line: 32, baseType: !277, size: 8, align: 8, offset: 144)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !3688, file: !3689, line: 33, baseType: !3696, size: 2048, align: 8, offset: 152)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 2048, align: 8, elements: !316)
!3697 = !DILocation(line: 448, column: 18, scope: !3674)
!3698 = !DILocation(line: 450, column: 6, scope: !3674)
!3699 = !DILocation(line: 450, column: 4, scope: !3674)
!3700 = !DILocation(line: 451, column: 6, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3674, file: !4, line: 451, column: 6)
!3702 = !DILocation(line: 451, column: 8, scope: !3701)
!3703 = !DILocation(line: 451, column: 6, scope: !3674)
!3704 = !DILocation(line: 452, column: 3, scope: !3701)
!3705 = !DILocation(line: 453, column: 2, scope: !3674)
!3706 = !DILocation(line: 453, column: 10, scope: !3707)
!3707 = !DILexicalBlockFile(scope: !3674, file: !4, discriminator: 1)
!3708 = !DILocation(line: 453, column: 2, scope: !3707)
!3709 = !DILocation(line: 454, column: 24, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3674, file: !4, line: 453, column: 14)
!3711 = !DILocation(line: 454, column: 15, scope: !3710)
!3712 = !DILocation(line: 454, column: 28, scope: !3710)
!3713 = !DILocation(line: 454, column: 8, scope: !3710)
!3714 = !DILocation(line: 454, column: 6, scope: !3710)
!3715 = !DILocation(line: 456, column: 13, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3710, file: !4, line: 456, column: 7)
!3717 = !DILocation(line: 456, column: 10, scope: !3716)
!3718 = !DILocation(line: 456, column: 17, scope: !3716)
!3719 = !DILocation(line: 456, column: 21, scope: !3720)
!3720 = !DILexicalBlockFile(scope: !3716, file: !4, discriminator: 1)
!3721 = !DILocation(line: 456, column: 29, scope: !3720)
!3722 = !DILocation(line: 456, column: 35, scope: !3720)
!3723 = !DILocation(line: 456, column: 39, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3716, file: !4, discriminator: 2)
!3725 = !DILocation(line: 456, column: 47, scope: !3724)
!3726 = !DILocation(line: 456, column: 7, scope: !3724)
!3727 = !DILocation(line: 457, column: 29, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3716, file: !4, line: 456, column: 55)
!3729 = !DILocation(line: 457, column: 12, scope: !3728)
!3730 = !DILocation(line: 457, column: 16, scope: !3728)
!3731 = !DILocation(line: 457, column: 4, scope: !3728)
!3732 = !DILocation(line: 459, column: 22, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !4, line: 459, column: 9)
!3734 = distinct !DILexicalBlock(scope: !3728, file: !4, line: 457, column: 39)
!3735 = !DILocation(line: 459, column: 31, scope: !3733)
!3736 = !DILocation(line: 459, column: 35, scope: !3733)
!3737 = !DILocation(line: 459, column: 9, scope: !3733)
!3738 = !DILocation(line: 459, column: 9, scope: !3734)
!3739 = !DILocation(line: 460, column: 6, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3733, file: !4, line: 459, column: 49)
!3741 = !DILocation(line: 460, column: 10, scope: !3740)
!3742 = !DILocation(line: 460, column: 20, scope: !3740)
!3743 = !DILocation(line: 461, column: 23, scope: !3740)
!3744 = !DILocation(line: 461, column: 6, scope: !3740)
!3745 = !DILocation(line: 461, column: 10, scope: !3740)
!3746 = !DILocation(line: 461, column: 32, scope: !3740)
!3747 = !DILocation(line: 462, column: 17, scope: !3740)
!3748 = !DILocation(line: 463, column: 5, scope: !3740)
!3749 = !DILocation(line: 464, column: 5, scope: !3734)
!3750 = !DILocation(line: 466, column: 16, scope: !3734)
!3751 = !DILocation(line: 467, column: 5, scope: !3734)
!3752 = !DILocation(line: 469, column: 5, scope: !3734)
!3753 = !DILocation(line: 471, column: 3, scope: !3728)
!3754 = !DILocation(line: 472, column: 17, scope: !3710)
!3755 = !DILocation(line: 472, column: 8, scope: !3710)
!3756 = !DILocation(line: 472, column: 3, scope: !3710)
!3757 = !DILocation(line: 453, column: 2, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3674, file: !4, discriminator: 2)
!3759 = distinct !{!3759, !3705}
!3760 = !DILocation(line: 474, column: 7, scope: !3674)
!3761 = !DILocation(line: 474, column: 2, scope: !3674)
!3762 = !DILocation(line: 475, column: 9, scope: !3674)
!3763 = !DILocation(line: 475, column: 2, scope: !3674)
!3764 = !DILocation(line: 476, column: 1, scope: !3674)
!3765 = distinct !DISubprogram(name: "__fd_m_head", scope: !4, file: !4, line: 357, type: !1159, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3766 = !DILocalVariable(name: "dev", arg: 1, scope: !3765, file: !4, line: 357, type: !281)
!3767 = !DILocation(line: 357, column: 43, scope: !3765)
!3768 = !DILocalVariable(name: "now", scope: !3765, file: !4, line: 359, type: !295)
!3769 = !DILocation(line: 359, column: 18, scope: !3765)
!3770 = !DILocalVariable(name: "fd", scope: !3765, file: !4, line: 360, type: !274)
!3771 = !DILocation(line: 360, column: 6, scope: !3765)
!3772 = !DILocation(line: 362, column: 8, scope: !3765)
!3773 = !DILocation(line: 362, column: 6, scope: !3765)
!3774 = !DILocation(line: 363, column: 18, scope: !3765)
!3775 = !DILocation(line: 363, column: 2, scope: !3765)
!3776 = !DILocation(line: 363, column: 7, scope: !3765)
!3777 = !DILocation(line: 363, column: 16, scope: !3765)
!3778 = !DILocation(line: 364, column: 6, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3765, file: !4, line: 364, column: 6)
!3780 = !DILocation(line: 364, column: 6, scope: !3765)
!3781 = !DILocation(line: 365, column: 8, scope: !3779)
!3782 = !DILocation(line: 365, column: 13, scope: !3779)
!3783 = !DILocation(line: 365, column: 6, scope: !3779)
!3784 = !DILocation(line: 365, column: 3, scope: !3779)
!3785 = !DILocation(line: 366, column: 2, scope: !3765)
!3786 = distinct !{!3786, !3785}
!3787 = !DILocation(line: 366, column: 11, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3789, file: !4, discriminator: 1)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !4, line: 366, column: 11)
!3790 = distinct !DILexicalBlock(scope: !3765, file: !4, line: 366, column: 5)
!3791 = !DILocation(line: 366, column: 1, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !3789, file: !4, discriminator: 2)
!3793 = !DILocation(line: 366, column: 60, scope: !3792)
!3794 = !DILocation(line: 366, column: 70, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3792, file: !4, discriminator: 4)
!3796 = !DILocation(line: 366, column: 98, scope: !3792)
!3797 = !DILocation(line: 366, column: 103, scope: !3792)
!3798 = !DILocation(line: 366, column: 22, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !3792, file: !4, discriminator: 5)
!3800 = !DILocation(line: 366, column: 22, scope: !3792)
!3801 = !DILocation(line: 366, column: 108, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3790, file: !4, discriminator: 3)
!3803 = !DILocation(line: 367, column: 9, scope: !3765)
!3804 = !DILocation(line: 367, column: 2, scope: !3765)
!3805 = distinct !DISubprogram(name: "__card_get_app", scope: !4, file: !4, line: 964, type: !3806, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !281}
!3808 = !DILocalVariable(name: "dev", arg: 1, scope: !3805, file: !4, line: 964, type: !281)
!3809 = !DILocation(line: 964, column: 47, scope: !3805)
!3810 = !DILocation(line: 967, column: 39, scope: !3805)
!3811 = !DILocation(line: 967, column: 16, scope: !3805)
!3812 = !DILocation(line: 967, column: 2, scope: !3805)
!3813 = !DILocation(line: 967, column: 7, scope: !3805)
!3814 = !DILocation(line: 967, column: 14, scope: !3805)
!3815 = !DILocation(line: 968, column: 39, scope: !3805)
!3816 = !DILocation(line: 968, column: 16, scope: !3805)
!3817 = !DILocation(line: 968, column: 2, scope: !3805)
!3818 = !DILocation(line: 968, column: 7, scope: !3805)
!3819 = !DILocation(line: 968, column: 14, scope: !3805)
!3820 = !DILocation(line: 969, column: 1, scope: !3805)
!3821 = distinct !DISubprogram(name: "__inotify_create", scope: !4, file: !4, line: 841, type: !3152, isLocal: true, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3822 = !DILocalVariable(name: "ld", arg: 1, scope: !3821, file: !4, line: 841, type: !311)
!3823 = !DILocation(line: 841, column: 49, scope: !3821)
!3824 = !DILocalVariable(name: "fd", scope: !3821, file: !4, line: 843, type: !274)
!3825 = !DILocation(line: 843, column: 6, scope: !3821)
!3826 = !DILocalVariable(name: "wd", scope: !3821, file: !4, line: 843, type: !274)
!3827 = !DILocation(line: 843, column: 10, scope: !3821)
!3828 = !DILocation(line: 845, column: 23, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3821, file: !4, line: 845, column: 6)
!3830 = !DILocation(line: 845, column: 27, scope: !3829)
!3831 = !DILocation(line: 845, column: 20, scope: !3829)
!3832 = !DILocation(line: 845, column: 6, scope: !3821)
!3833 = !DILocation(line: 846, column: 3, scope: !3829)
!3834 = !DILocation(line: 847, column: 7, scope: !3821)
!3835 = !DILocation(line: 847, column: 5, scope: !3821)
!3836 = !DILocation(line: 848, column: 6, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3821, file: !4, line: 848, column: 6)
!3838 = !DILocation(line: 848, column: 9, scope: !3837)
!3839 = !DILocation(line: 848, column: 6, scope: !3821)
!3840 = !DILocation(line: 849, column: 2, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !4, line: 848, column: 14)
!3842 = !DILocation(line: 849, column: 77, scope: !3841)
!3843 = !DILocation(line: 849, column: 87, scope: !3844)
!3844 = !DILexicalBlockFile(scope: !3841, file: !4, discriminator: 1)
!3845 = !DILocation(line: 849, column: 4, scope: !3846)
!3846 = !DILexicalBlockFile(scope: !3841, file: !4, discriminator: 2)
!3847 = !DILocation(line: 849, column: 3, scope: !3841)
!3848 = !DILocation(line: 849, column: 3, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3841, file: !4, discriminator: 3)
!3850 = !DILocation(line: 850, column: 3, scope: !3841)
!3851 = !DILocation(line: 853, column: 25, scope: !3821)
!3852 = !DILocation(line: 853, column: 7, scope: !3821)
!3853 = !DILocation(line: 853, column: 5, scope: !3821)
!3854 = !DILocation(line: 854, column: 6, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3821, file: !4, line: 854, column: 6)
!3856 = !DILocation(line: 854, column: 9, scope: !3855)
!3857 = !DILocation(line: 854, column: 6, scope: !3821)
!3858 = !DILocation(line: 855, column: 2, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3855, file: !4, line: 854, column: 14)
!3860 = !DILocation(line: 855, column: 68, scope: !3859)
!3861 = !DILocation(line: 855, column: 78, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3859, file: !4, discriminator: 1)
!3863 = !DILocation(line: 855, column: 4, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3859, file: !4, discriminator: 2)
!3865 = !DILocation(line: 855, column: 3, scope: !3859)
!3866 = !DILocation(line: 855, column: 3, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !3859, file: !4, discriminator: 3)
!3868 = !DILocation(line: 856, column: 3, scope: !3859)
!3869 = !DILocation(line: 858, column: 2, scope: !3821)
!3870 = !DILocation(line: 858, column: 6, scope: !3821)
!3871 = !DILocation(line: 858, column: 20, scope: !3821)
!3872 = !DILocation(line: 859, column: 19, scope: !3821)
!3873 = !DILocation(line: 859, column: 2, scope: !3821)
!3874 = !DILocation(line: 859, column: 6, scope: !3821)
!3875 = !DILocation(line: 859, column: 17, scope: !3821)
!3876 = !DILocation(line: 860, column: 19, scope: !3821)
!3877 = !DILocation(line: 860, column: 2, scope: !3821)
!3878 = !DILocation(line: 860, column: 6, scope: !3821)
!3879 = !DILocation(line: 860, column: 17, scope: !3821)
!3880 = !DILocation(line: 862, column: 27, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3821, file: !4, line: 862, column: 6)
!3882 = !DILocation(line: 862, column: 31, scope: !3881)
!3883 = !DILocation(line: 862, column: 68, scope: !3881)
!3884 = !DILocation(line: 862, column: 11, scope: !3881)
!3885 = !DILocation(line: 862, column: 8, scope: !3881)
!3886 = !DILocation(line: 862, column: 6, scope: !3821)
!3887 = !DILocation(line: 863, column: 3, scope: !3881)
!3888 = !DILocation(line: 864, column: 1, scope: !3821)
!3889 = !DILocation(line: 864, column: 46, scope: !3821)
!3890 = !DILocation(line: 864, column: 56, scope: !3891)
!3891 = !DILexicalBlockFile(scope: !3821, file: !4, discriminator: 1)
!3892 = !DILocation(line: 864, column: 2, scope: !3893)
!3893 = !DILexicalBlockFile(scope: !3821, file: !4, discriminator: 2)
!3894 = !DILocation(line: 865, column: 2, scope: !3821)
!3895 = !DILocation(line: 866, column: 1, scope: !3821)
!3896 = distinct !DISubprogram(name: "__genwqe_filter", scope: !4, file: !4, line: 429, type: !3897, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!274, !3899}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64, align: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3688)
!3901 = !DILocalVariable(name: "name", arg: 1, scope: !3896, file: !4, line: 429, type: !3899)
!3902 = !DILocation(line: 429, column: 49, scope: !3896)
!3903 = !DILocation(line: 431, column: 19, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3896, file: !4, line: 431, column: 6)
!3905 = !DILocation(line: 431, column: 25, scope: !3904)
!3906 = !DILocation(line: 431, column: 11, scope: !3904)
!3907 = !DILocation(line: 431, column: 8, scope: !3904)
!3908 = !DILocation(line: 431, column: 6, scope: !3896)
!3909 = !DILocation(line: 432, column: 3, scope: !3904)
!3910 = !DILocation(line: 433, column: 2, scope: !3896)
!3911 = !DILocation(line: 434, column: 1, scope: !3896)
!3912 = distinct !DISubprogram(name: "__m_open_add", scope: !4, file: !4, line: 410, type: !3913, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!274, !274, !274}
!3915 = !DILocalVariable(name: "card_no", arg: 1, scope: !3912, file: !4, line: 410, type: !274)
!3916 = !DILocation(line: 410, column: 29, scope: !3912)
!3917 = !DILocalVariable(name: "mode", arg: 2, scope: !3912, file: !4, line: 410, type: !274)
!3918 = !DILocation(line: 410, column: 42, scope: !3912)
!3919 = !DILocalVariable(name: "fd", scope: !3912, file: !4, line: 412, type: !274)
!3920 = !DILocation(line: 412, column: 6, scope: !3912)
!3921 = !DILocation(line: 414, column: 25, scope: !3912)
!3922 = !DILocation(line: 414, column: 34, scope: !3912)
!3923 = !DILocation(line: 414, column: 7, scope: !3912)
!3924 = !DILocation(line: 414, column: 5, scope: !3912)
!3925 = !DILocation(line: 415, column: 12, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3912, file: !4, line: 415, column: 6)
!3927 = !DILocation(line: 415, column: 9, scope: !3926)
!3928 = !DILocation(line: 415, column: 6, scope: !3912)
!3929 = !DILocation(line: 416, column: 14, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3926, file: !4, line: 415, column: 16)
!3931 = !DILocation(line: 416, column: 18, scope: !3930)
!3932 = !DILocation(line: 416, column: 3, scope: !3930)
!3933 = !DILocation(line: 417, column: 3, scope: !3930)
!3934 = !DILocation(line: 419, column: 2, scope: !3912)
!3935 = !DILocation(line: 420, column: 1, scope: !3912)
!3936 = distinct !DISubprogram(name: "__genwqe_dev_open", scope: !4, file: !4, line: 242, type: !3913, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3937 = !DILocalVariable(name: "card_no", arg: 1, scope: !3936, file: !4, line: 242, type: !274)
!3938 = !DILocation(line: 242, column: 34, scope: !3936)
!3939 = !DILocalVariable(name: "mode", arg: 2, scope: !3936, file: !4, line: 242, type: !274)
!3940 = !DILocation(line: 242, column: 47, scope: !3936)
!3941 = !DILocalVariable(name: "fd", scope: !3936, file: !4, line: 244, type: !274)
!3942 = !DILocation(line: 244, column: 6, scope: !3936)
!3943 = !DILocalVariable(name: "omode", scope: !3936, file: !4, line: 245, type: !274)
!3944 = !DILocation(line: 245, column: 6, scope: !3936)
!3945 = !DILocalVariable(name: "card_dev", scope: !3936, file: !4, line: 246, type: !3696)
!3946 = !DILocation(line: 246, column: 7, scope: !3936)
!3947 = !DILocation(line: 248, column: 25, scope: !3936)
!3948 = !DILocation(line: 248, column: 10, scope: !3936)
!3949 = !DILocation(line: 248, column: 8, scope: !3936)
!3950 = !DILocation(line: 249, column: 11, scope: !3936)
!3951 = !DILocation(line: 249, column: 73, scope: !3936)
!3952 = !DILocation(line: 249, column: 2, scope: !3936)
!3953 = !DILocation(line: 250, column: 12, scope: !3936)
!3954 = !DILocation(line: 250, column: 22, scope: !3936)
!3955 = !DILocation(line: 250, column: 7, scope: !3936)
!3956 = !DILocation(line: 250, column: 5, scope: !3936)
!3957 = !DILocation(line: 251, column: 6, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3936, file: !4, line: 251, column: 6)
!3959 = !DILocation(line: 251, column: 9, scope: !3958)
!3960 = !DILocation(line: 251, column: 6, scope: !3936)
!3961 = !DILocation(line: 252, column: 3, scope: !3958)
!3962 = !DILocation(line: 267, column: 2, scope: !3936)
!3963 = distinct !{!3963, !3962}
!3964 = !DILocation(line: 267, column: 11, scope: !3965)
!3965 = !DILexicalBlockFile(scope: !3966, file: !4, discriminator: 1)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !4, line: 267, column: 11)
!3967 = distinct !DILexicalBlock(scope: !3936, file: !4, line: 267, column: 5)
!3968 = !DILocation(line: 267, column: 1, scope: !3969)
!3969 = !DILexicalBlockFile(scope: !3966, file: !4, discriminator: 2)
!3970 = !DILocation(line: 267, column: 91, scope: !3969)
!3971 = !DILocation(line: 267, column: 101, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3969, file: !4, discriminator: 4)
!3973 = !DILocation(line: 267, column: 4, scope: !3969)
!3974 = !DILocation(line: 267, column: 14, scope: !3969)
!3975 = !DILocation(line: 267, column: 18, scope: !3969)
!3976 = !DILocation(line: 267, column: 25, scope: !3969)
!3977 = !DILocation(line: 267, column: 22, scope: !3978)
!3978 = !DILexicalBlockFile(scope: !3969, file: !4, discriminator: 5)
!3979 = !DILocation(line: 267, column: 22, scope: !3969)
!3980 = !DILocation(line: 267, column: 32, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3967, file: !4, discriminator: 3)
!3982 = !DILocation(line: 269, column: 9, scope: !3936)
!3983 = !DILocation(line: 269, column: 2, scope: !3936)
!3984 = !DILocation(line: 270, column: 1, scope: !3936)
!3985 = distinct !DISubprogram(name: "__fd_m_add", scope: !4, file: !4, line: 291, type: !3986, isLocal: true, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !274, !274}
!3988 = !DILocalVariable(name: "fd", arg: 1, scope: !3985, file: !4, line: 291, type: !274)
!3989 = !DILocation(line: 291, column: 28, scope: !3985)
!3990 = !DILocalVariable(name: "card", arg: 2, scope: !3985, file: !4, line: 291, type: !274)
!3991 = !DILocation(line: 291, column: 36, scope: !3985)
!3992 = !DILocalVariable(name: "head", scope: !3985, file: !4, line: 293, type: !295)
!3993 = !DILocation(line: 293, column: 18, scope: !3985)
!3994 = !DILocation(line: 295, column: 13, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3985, file: !4, line: 295, column: 5)
!3996 = !DILocation(line: 295, column: 10, scope: !3995)
!3997 = !DILocation(line: 295, column: 5, scope: !3985)
!3998 = !DILocation(line: 296, column: 33, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !4, line: 295, column: 26)
!4000 = !DILocation(line: 296, column: 37, scope: !3999)
!4001 = !DILocation(line: 296, column: 17, scope: !3999)
!4002 = !DILocation(line: 296, column: 15, scope: !3999)
!4003 = !DILocation(line: 298, column: 3, scope: !3999)
!4004 = !DILocation(line: 299, column: 2, scope: !3999)
!4005 = !DILocation(line: 300, column: 10, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3995, file: !4, line: 299, column: 9)
!4007 = !DILocation(line: 300, column: 8, scope: !4006)
!4008 = !DILocation(line: 301, column: 3, scope: !4006)
!4009 = !DILocation(line: 301, column: 17, scope: !4010)
!4010 = !DILexicalBlockFile(scope: !4006, file: !4, discriminator: 1)
!4011 = !DILocation(line: 301, column: 23, scope: !4010)
!4012 = !DILocation(line: 301, column: 14, scope: !4010)
!4013 = !DILocation(line: 301, column: 3, scope: !4010)
!4014 = !DILocation(line: 302, column: 11, scope: !4006)
!4015 = !DILocation(line: 302, column: 17, scope: !4006)
!4016 = !DILocation(line: 302, column: 9, scope: !4006)
!4017 = !DILocation(line: 301, column: 3, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4006, file: !4, discriminator: 2)
!4019 = distinct !{!4019, !4008}
!4020 = !DILocation(line: 303, column: 14, scope: !4006)
!4021 = !DILocation(line: 303, column: 20, scope: !4006)
!4022 = !DILocation(line: 303, column: 24, scope: !4006)
!4023 = !DILocation(line: 303, column: 3, scope: !4006)
!4024 = !DILocation(line: 305, column: 2, scope: !3985)
!4025 = distinct !DISubprogram(name: "__fd_m_new", scope: !4, file: !4, line: 272, type: !4026, isLocal: true, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!295, !295, !274, !274}
!4028 = !DILocalVariable(name: "parent", arg: 1, scope: !4025, file: !4, line: 272, type: !295)
!4029 = !DILocation(line: 272, column: 51, scope: !4025)
!4030 = !DILocalVariable(name: "fd", arg: 2, scope: !4025, file: !4, line: 273, type: !274)
!4031 = !DILocation(line: 273, column: 7, scope: !4025)
!4032 = !DILocalVariable(name: "card", arg: 3, scope: !4025, file: !4, line: 273, type: !274)
!4033 = !DILocation(line: 273, column: 15, scope: !4025)
!4034 = !DILocalVariable(name: "node", scope: !4025, file: !4, line: 275, type: !295)
!4035 = !DILocation(line: 275, column: 18, scope: !4025)
!4036 = !DILocation(line: 277, column: 9, scope: !4025)
!4037 = !DILocation(line: 277, column: 7, scope: !4025)
!4038 = !DILocation(line: 278, column: 6, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4025, file: !4, line: 278, column: 6)
!4040 = !DILocation(line: 278, column: 6, scope: !4025)
!4041 = !DILocation(line: 279, column: 16, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4039, file: !4, line: 278, column: 12)
!4043 = !DILocation(line: 279, column: 3, scope: !4042)
!4044 = !DILocation(line: 279, column: 9, scope: !4042)
!4045 = !DILocation(line: 279, column: 14, scope: !4042)
!4046 = !DILocation(line: 280, column: 20, scope: !4042)
!4047 = !DILocation(line: 280, column: 3, scope: !4042)
!4048 = !DILocation(line: 280, column: 9, scope: !4042)
!4049 = !DILocation(line: 280, column: 18, scope: !4042)
!4050 = !DILocation(line: 281, column: 3, scope: !4042)
!4051 = !DILocation(line: 281, column: 9, scope: !4042)
!4052 = !DILocation(line: 281, column: 14, scope: !4042)
!4053 = !DILocation(line: 282, column: 16, scope: !4042)
!4054 = !DILocation(line: 282, column: 3, scope: !4042)
!4055 = !DILocation(line: 282, column: 9, scope: !4042)
!4056 = !DILocation(line: 282, column: 14, scope: !4042)
!4057 = !DILocation(line: 283, column: 7, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4042, file: !4, line: 283, column: 7)
!4059 = !DILocation(line: 283, column: 7, scope: !4042)
!4060 = !DILocation(line: 284, column: 19, scope: !4058)
!4061 = !DILocation(line: 284, column: 4, scope: !4058)
!4062 = !DILocation(line: 284, column: 12, scope: !4058)
!4063 = !DILocation(line: 284, column: 17, scope: !4058)
!4064 = !DILocation(line: 285, column: 2, scope: !4042)
!4065 = !DILocation(line: 285, column: 8, scope: !4066)
!4066 = !DILexicalBlockFile(scope: !4039, file: !4, discriminator: 1)
!4067 = !DILocation(line: 285, column: 56, scope: !4066)
!4068 = !DILocation(line: 285, column: 66, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !4066, file: !4, discriminator: 2)
!4070 = !DILocation(line: 285, column: 9, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !4066, file: !4, discriminator: 3)
!4072 = !DILocation(line: 286, column: 9, scope: !4025)
!4073 = !DILocation(line: 286, column: 2, scope: !4025)
!4074 = distinct !DISubprogram(name: "__fd_m_head_all", scope: !4, file: !4, line: 347, type: !3082, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4075 = !DILocalVariable(name: "dev", scope: !4074, file: !4, line: 349, type: !281)
!4076 = !DILocation(line: 349, column: 21, scope: !4074)
!4077 = !DILocation(line: 349, column: 48, scope: !4074)
!4078 = !DILocation(line: 349, column: 27, scope: !4074)
!4079 = !DILocation(line: 351, column: 2, scope: !4074)
!4080 = !DILocation(line: 351, column: 9, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !4074, file: !4, discriminator: 1)
!4082 = !DILocation(line: 351, column: 2, scope: !4081)
!4083 = !DILocation(line: 352, column: 19, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4074, file: !4, line: 351, column: 14)
!4085 = !DILocation(line: 352, column: 3, scope: !4084)
!4086 = !DILocation(line: 352, column: 8, scope: !4084)
!4087 = !DILocation(line: 352, column: 17, scope: !4084)
!4088 = !DILocation(line: 353, column: 9, scope: !4084)
!4089 = !DILocation(line: 353, column: 14, scope: !4084)
!4090 = !DILocation(line: 353, column: 7, scope: !4084)
!4091 = !DILocation(line: 351, column: 2, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !4074, file: !4, discriminator: 2)
!4093 = distinct !{!4093, !4079}
!4094 = !DILocation(line: 355, column: 1, scope: !4074)
!4095 = distinct !DISubprogram(name: "__inotify_thread", scope: !4, file: !4, line: 786, type: !3638, isLocal: true, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4096 = !DILocalVariable(name: "data", arg: 1, scope: !4095, file: !4, line: 786, type: !265)
!4097 = !DILocation(line: 786, column: 37, scope: !4095)
!4098 = !DILocalVariable(name: "len", scope: !4095, file: !4, line: 788, type: !274)
!4099 = !DILocation(line: 788, column: 6, scope: !4095)
!4100 = !DILocalVariable(name: "rc", scope: !4095, file: !4, line: 788, type: !274)
!4101 = !DILocation(line: 788, column: 11, scope: !4095)
!4102 = !DILocalVariable(name: "ld", scope: !4095, file: !4, line: 789, type: !311)
!4103 = !DILocation(line: 789, column: 21, scope: !4095)
!4104 = !DILocation(line: 789, column: 47, scope: !4095)
!4105 = !DILocation(line: 789, column: 26, scope: !4095)
!4106 = !DILocalVariable(name: "buf", scope: !4095, file: !4, line: 790, type: !4107)
!4107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 32896, align: 8, elements: !4108)
!4108 = !{!4109}
!4109 = !DISubrange(count: 4112)
!4110 = !DILocation(line: 790, column: 7, scope: !4095)
!4111 = !DILocalVariable(name: "rfds", scope: !4095, file: !4, line: 791, type: !4112)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !371, line: 75, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 64, size: 1024, align: 64, elements: !4114)
!4114 = !{!4115}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !4113, file: !371, line: 69, baseType: !4116, size: 1024, align: 64)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1024, align: 64, elements: !457)
!4117 = !DILocation(line: 791, column: 9, scope: !4095)
!4118 = !DILocalVariable(name: "sig_empty_mask", scope: !4095, file: !4, line: 792, type: !4119)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !371, line: 37, baseType: !4120)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !4121, line: 30, baseType: !4122)
!4121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop")
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4121, line: 27, size: 1024, align: 64, elements: !4123)
!4123 = !{!4124}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !4122, file: !4121, line: 29, baseType: !4125, size: 1024, align: 64)
!4125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 1024, align: 64, elements: !457)
!4126 = !DILocation(line: 792, column: 11, scope: !4095)
!4127 = !DILocation(line: 810, column: 2, scope: !4095)
!4128 = !DILocation(line: 811, column: 2, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4095, file: !4, line: 810, column: 12)
!4130 = distinct !{!4130, !4128}
!4131 = !DILocalVariable(name: "__d0", scope: !4132, file: !4, line: 811, type: !274)
!4132 = distinct !DILexicalBlock(scope: !4129, file: !4, line: 811, column: 5)
!4133 = !DILocation(line: 811, column: 11, scope: !4132)
!4134 = !DILocalVariable(name: "__d1", scope: !4132, file: !4, line: 811, type: !274)
!4135 = !DILocation(line: 811, column: 17, scope: !4132)
!4136 = !DILocation(line: 811, column: 5, scope: !4137)
!4137 = !DILexicalBlockFile(scope: !4132, file: !4, discriminator: 1)
!4138 = !DILocation(line: 811, column: 154, scope: !4137)
!4139 = !DILocation(line: 811, column: 23, scope: !4137)
!4140 = !{i32 209821}
!4141 = !DILocation(line: 811, column: 32, scope: !4137)
!4142 = !DILocation(line: 812, column: 2, scope: !4129)
!4143 = !DILocation(line: 812, column: 6, scope: !4129)
!4144 = !DILocation(line: 812, column: 4, scope: !4129)
!4145 = !DILocation(line: 812, column: 60, scope: !4129)
!4146 = !DILocation(line: 812, column: 11, scope: !4129)
!4147 = !DILocation(line: 812, column: 5, scope: !4129)
!4148 = !DILocation(line: 812, column: 39, scope: !4129)
!4149 = !DILocation(line: 813, column: 8, scope: !4129)
!4150 = !DILocation(line: 813, column: 6, scope: !4129)
!4151 = !DILocation(line: 815, column: 7, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4129, file: !4, line: 815, column: 7)
!4153 = !DILocation(line: 815, column: 10, scope: !4152)
!4154 = !DILocation(line: 815, column: 7, scope: !4129)
!4155 = !DILocation(line: 816, column: 15, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4152, file: !4, line: 815, column: 15)
!4157 = !DILocation(line: 816, column: 19, scope: !4156)
!4158 = !DILocation(line: 816, column: 31, scope: !4156)
!4159 = !DILocation(line: 816, column: 10, scope: !4156)
!4160 = !DILocation(line: 816, column: 8, scope: !4156)
!4161 = !DILocation(line: 817, column: 14, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4156, file: !4, line: 817, column: 8)
!4163 = !DILocation(line: 817, column: 11, scope: !4162)
!4164 = !DILocation(line: 817, column: 8, scope: !4156)
!4165 = !DILocation(line: 819, column: 5, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4162, file: !4, line: 817, column: 19)
!4167 = !DILocation(line: 819, column: 9, scope: !4166)
!4168 = !DILocation(line: 819, column: 20, scope: !4166)
!4169 = !DILocation(line: 820, column: 5, scope: !4166)
!4170 = !DILocation(line: 822, column: 27, scope: !4156)
!4171 = !DILocation(line: 822, column: 32, scope: !4156)
!4172 = !DILocation(line: 822, column: 37, scope: !4156)
!4173 = !DILocation(line: 822, column: 4, scope: !4156)
!4174 = !DILocation(line: 823, column: 3, scope: !4156)
!4175 = !DILocation(line: 824, column: 8, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !4, line: 824, column: 8)
!4177 = distinct !DILexicalBlock(scope: !4152, file: !4, line: 823, column: 10)
!4178 = !DILocation(line: 824, column: 11, scope: !4176)
!4179 = !DILocation(line: 824, column: 8, scope: !4177)
!4180 = !DILocation(line: 826, column: 5, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4176, file: !4, line: 824, column: 16)
!4182 = !DILocation(line: 826, column: 9, scope: !4181)
!4183 = !DILocation(line: 826, column: 20, scope: !4181)
!4184 = !DILocation(line: 827, column: 5, scope: !4181)
!4185 = !DILocation(line: 810, column: 2, scope: !4186)
!4186 = !DILexicalBlockFile(scope: !4095, file: !4, discriminator: 1)
!4187 = distinct !{!4187, !4127}
!4188 = !DILocation(line: 831, column: 2, scope: !4095)
!4189 = distinct !{!4189, !4188}
!4190 = !DILocation(line: 831, column: 11, scope: !4191)
!4191 = !DILexicalBlockFile(scope: !4192, file: !4, discriminator: 1)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !4, line: 831, column: 11)
!4193 = distinct !DILexicalBlock(scope: !4095, file: !4, line: 831, column: 5)
!4194 = !DILocation(line: 831, column: 1, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !4192, file: !4, discriminator: 2)
!4196 = !DILocation(line: 831, column: 56, scope: !4195)
!4197 = !DILocation(line: 831, column: 66, scope: !4198)
!4198 = !DILexicalBlockFile(scope: !4195, file: !4, discriminator: 4)
!4199 = !DILocation(line: 831, column: 14, scope: !4195)
!4200 = !DILocation(line: 831, column: 18, scope: !4195)
!4201 = !DILocation(line: 831, column: 30, scope: !4195)
!4202 = !DILocation(line: 831, column: 34, scope: !4195)
!4203 = !DILocation(line: 831, column: 22, scope: !4204)
!4204 = !DILexicalBlockFile(scope: !4195, file: !4, discriminator: 5)
!4205 = !DILocation(line: 831, column: 22, scope: !4195)
!4206 = !DILocation(line: 831, column: 47, scope: !4207)
!4207 = !DILexicalBlockFile(scope: !4193, file: !4, discriminator: 3)
!4208 = !DILocation(line: 833, column: 16, scope: !4095)
!4209 = !DILocation(line: 833, column: 20, scope: !4095)
!4210 = !DILocation(line: 833, column: 15, scope: !4095)
!4211 = !DILocation(line: 833, column: 2, scope: !4095)
!4212 = !DILocation(line: 834, column: 1, scope: !4095)
!4213 = distinct !DISubprogram(name: "__inotify_handle_event", scope: !4, file: !4, line: 742, type: !4214, isLocal: true, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{null, !274, !2032, !311}
!4216 = !DILocalVariable(name: "len", arg: 1, scope: !4213, file: !4, line: 742, type: !274)
!4217 = !DILocation(line: 742, column: 40, scope: !4213)
!4218 = !DILocalVariable(name: "buf", arg: 2, scope: !4213, file: !4, line: 742, type: !2032)
!4219 = !DILocation(line: 742, column: 51, scope: !4213)
!4220 = !DILocalVariable(name: "ld", arg: 3, scope: !4213, file: !4, line: 742, type: !311)
!4221 = !DILocation(line: 742, column: 75, scope: !4213)
!4222 = !DILocalVariable(name: "ie", scope: !4213, file: !4, line: 744, type: !372)
!4223 = !DILocation(line: 744, column: 24, scope: !4213)
!4224 = !DILocalVariable(name: "i", scope: !4213, file: !4, line: 745, type: !274)
!4225 = !DILocation(line: 745, column: 6, scope: !4213)
!4226 = !DILocalVariable(name: "card", scope: !4213, file: !4, line: 745, type: !274)
!4227 = !DILocation(line: 745, column: 9, scope: !4213)
!4228 = !DILocalVariable(name: "n", scope: !4213, file: !4, line: 745, type: !274)
!4229 = !DILocation(line: 745, column: 15, scope: !4213)
!4230 = !DILocation(line: 747, column: 4, scope: !4213)
!4231 = !DILocation(line: 748, column: 2, scope: !4213)
!4232 = distinct !{!4232, !4231}
!4233 = !DILocation(line: 748, column: 11, scope: !4234)
!4234 = !DILexicalBlockFile(scope: !4235, file: !4, discriminator: 1)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !4, line: 748, column: 11)
!4236 = distinct !DILexicalBlock(scope: !4213, file: !4, line: 748, column: 5)
!4237 = !DILocation(line: 748, column: 1, scope: !4238)
!4238 = !DILexicalBlockFile(scope: !4235, file: !4, discriminator: 2)
!4239 = !DILocation(line: 748, column: 60, scope: !4238)
!4240 = !DILocation(line: 748, column: 70, scope: !4241)
!4241 = !DILexicalBlockFile(scope: !4238, file: !4, discriminator: 4)
!4242 = !DILocation(line: 748, column: 98, scope: !4238)
!4243 = !DILocation(line: 748, column: 22, scope: !4244)
!4244 = !DILexicalBlockFile(scope: !4238, file: !4, discriminator: 5)
!4245 = !DILocation(line: 748, column: 22, scope: !4238)
!4246 = !DILocation(line: 748, column: 104, scope: !4247)
!4247 = !DILexicalBlockFile(scope: !4236, file: !4, discriminator: 3)
!4248 = !DILocation(line: 749, column: 2, scope: !4213)
!4249 = !DILocation(line: 749, column: 9, scope: !4250)
!4250 = !DILexicalBlockFile(scope: !4213, file: !4, discriminator: 1)
!4251 = !DILocation(line: 749, column: 13, scope: !4250)
!4252 = !DILocation(line: 749, column: 11, scope: !4250)
!4253 = !DILocation(line: 749, column: 2, scope: !4250)
!4254 = !DILocation(line: 750, column: 37, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4213, file: !4, line: 749, column: 18)
!4256 = !DILocation(line: 750, column: 33, scope: !4255)
!4257 = !DILocation(line: 750, column: 8, scope: !4255)
!4258 = !DILocation(line: 750, column: 6, scope: !4255)
!4259 = !DILocation(line: 751, column: 8, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4255, file: !4, line: 751, column: 7)
!4261 = !DILocation(line: 751, column: 12, scope: !4260)
!4262 = !DILocation(line: 751, column: 17, scope: !4260)
!4263 = !DILocation(line: 751, column: 29, scope: !4260)
!4264 = !DILocation(line: 751, column: 33, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !4260, file: !4, discriminator: 1)
!4266 = !DILocation(line: 751, column: 37, scope: !4265)
!4267 = !DILocation(line: 751, column: 41, scope: !4265)
!4268 = !DILocation(line: 751, column: 7, scope: !4265)
!4269 = !DILocation(line: 752, column: 15, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4260, file: !4, line: 751, column: 47)
!4271 = !DILocation(line: 752, column: 19, scope: !4270)
!4272 = !DILocation(line: 752, column: 8, scope: !4270)
!4273 = !DILocation(line: 752, column: 6, scope: !4270)
!4274 = !DILocation(line: 754, column: 13, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4270, file: !4, line: 754, column: 8)
!4276 = !DILocation(line: 754, column: 10, scope: !4275)
!4277 = !DILocation(line: 754, column: 8, scope: !4270)
!4278 = !DILocation(line: 758, column: 26, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !4, line: 757, column: 9)
!4280 = distinct !DILexicalBlock(scope: !4275, file: !4, line: 754, column: 16)
!4281 = !DILocation(line: 758, column: 9, scope: !4279)
!4282 = !DILocation(line: 758, column: 13, scope: !4279)
!4283 = !DILocation(line: 757, column: 21, scope: !4279)
!4284 = !DILocation(line: 757, column: 9, scope: !4280)
!4285 = !DILocation(line: 762, column: 25, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4279, file: !4, line: 758, column: 33)
!4287 = !DILocation(line: 762, column: 6, scope: !4286)
!4288 = !DILocation(line: 762, column: 10, scope: !4286)
!4289 = !DILocation(line: 762, column: 23, scope: !4286)
!4290 = !DILocation(line: 763, column: 6, scope: !4286)
!4291 = !DILocation(line: 763, column: 10, scope: !4286)
!4292 = !DILocation(line: 763, column: 24, scope: !4286)
!4293 = !DILocation(line: 766, column: 6, scope: !4286)
!4294 = !DILocation(line: 769, column: 6, scope: !4286)
!4295 = distinct !{!4295, !4294}
!4296 = !DILocation(line: 769, column: 15, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !4298, file: !4, discriminator: 1)
!4298 = distinct !DILexicalBlock(scope: !4299, file: !4, line: 769, column: 15)
!4299 = distinct !DILexicalBlock(scope: !4286, file: !4, line: 769, column: 9)
!4300 = !DILocation(line: 769, column: 5, scope: !4301)
!4301 = !DILexicalBlockFile(scope: !4298, file: !4, discriminator: 2)
!4302 = !DILocation(line: 769, column: 84, scope: !4301)
!4303 = !DILocation(line: 769, column: 94, scope: !4304)
!4304 = !DILexicalBlockFile(scope: !4301, file: !4, discriminator: 4)
!4305 = !DILocation(line: 769, column: 18, scope: !4301)
!4306 = !DILocation(line: 769, column: 22, scope: !4301)
!4307 = !DILocation(line: 769, column: 26, scope: !4308)
!4308 = !DILexicalBlockFile(scope: !4301, file: !4, discriminator: 5)
!4309 = !DILocation(line: 769, column: 26, scope: !4301)
!4310 = !DILocation(line: 769, column: 29, scope: !4311)
!4311 = !DILexicalBlockFile(scope: !4299, file: !4, discriminator: 3)
!4312 = !DILocation(line: 773, column: 16, scope: !4286)
!4313 = !DILocation(line: 773, column: 20, scope: !4286)
!4314 = !DILocation(line: 773, column: 6, scope: !4286)
!4315 = !DILocation(line: 774, column: 5, scope: !4286)
!4316 = !DILocation(line: 775, column: 4, scope: !4280)
!4317 = !DILocation(line: 776, column: 3, scope: !4270)
!4318 = !DILocation(line: 777, column: 39, scope: !4255)
!4319 = !DILocation(line: 777, column: 43, scope: !4255)
!4320 = !DILocation(line: 777, column: 37, scope: !4255)
!4321 = !DILocation(line: 777, column: 5, scope: !4255)
!4322 = !DILocation(line: 749, column: 2, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4213, file: !4, discriminator: 2)
!4324 = distinct !{!4324, !4248}
!4325 = !DILocation(line: 779, column: 1, scope: !4213)
!4326 = distinct !DISubprogram(name: "__mhealth_check", scope: !4, file: !4, line: 614, type: !1114, isLocal: true, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4327 = !DILocalVariable(name: "ld", arg: 1, scope: !4326, file: !4, line: 614, type: !311)
!4328 = !DILocation(line: 614, column: 47, scope: !4326)
!4329 = !DILocalVariable(name: "fd", scope: !4326, file: !4, line: 616, type: !274)
!4330 = !DILocation(line: 616, column: 6, scope: !4326)
!4331 = !DILocalVariable(name: "card_no", scope: !4326, file: !4, line: 616, type: !274)
!4332 = !DILocation(line: 616, column: 10, scope: !4326)
!4333 = !DILocalVariable(name: "dev", scope: !4326, file: !4, line: 617, type: !281)
!4334 = !DILocation(line: 617, column: 21, scope: !4326)
!4335 = !DILocalVariable(name: "dev_next", scope: !4326, file: !4, line: 617, type: !281)
!4336 = !DILocation(line: 617, column: 27, scope: !4326)
!4337 = !DILocalVariable(name: "card_state", scope: !4326, file: !4, line: 618, type: !10)
!4338 = !DILocation(line: 618, column: 25, scope: !4326)
!4339 = !DILocalVariable(name: "state", scope: !4326, file: !4, line: 619, type: !18)
!4340 = !DILocation(line: 619, column: 23, scope: !4326)
!4341 = !DILocalVariable(name: "fd_list", scope: !4326, file: !4, line: 620, type: !295)
!4342 = !DILocation(line: 620, column: 18, scope: !4326)
!4343 = !DILocalVariable(name: "fd_list_next", scope: !4326, file: !4, line: 620, type: !295)
!4344 = !DILocation(line: 620, column: 28, scope: !4326)
!4345 = !DILocation(line: 622, column: 2, scope: !4326)
!4346 = distinct !{!4346, !4345}
!4347 = !DILocation(line: 622, column: 11, scope: !4348)
!4348 = !DILexicalBlockFile(scope: !4349, file: !4, discriminator: 1)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !4, line: 622, column: 11)
!4350 = distinct !DILexicalBlock(scope: !4326, file: !4, line: 622, column: 5)
!4351 = !DILocation(line: 622, column: 1, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4349, file: !4, discriminator: 2)
!4353 = !DILocation(line: 622, column: 57, scope: !4352)
!4354 = !DILocation(line: 622, column: 67, scope: !4355)
!4355 = !DILexicalBlockFile(scope: !4352, file: !4, discriminator: 4)
!4356 = !DILocation(line: 622, column: 105, scope: !4352)
!4357 = !DILocation(line: 622, column: 109, scope: !4352)
!4358 = !DILocation(line: 622, column: 22, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !4352, file: !4, discriminator: 5)
!4360 = !DILocation(line: 622, column: 22, scope: !4352)
!4361 = !DILocation(line: 622, column: 122, scope: !4362)
!4362 = !DILexicalBlockFile(scope: !4350, file: !4, discriminator: 3)
!4363 = !DILocation(line: 624, column: 19, scope: !4326)
!4364 = !DILocation(line: 624, column: 2, scope: !4326)
!4365 = !DILocation(line: 627, column: 29, scope: !4326)
!4366 = !DILocation(line: 627, column: 8, scope: !4326)
!4367 = !DILocation(line: 627, column: 6, scope: !4326)
!4368 = !DILocation(line: 628, column: 2, scope: !4326)
!4369 = !DILocation(line: 628, column: 9, scope: !4370)
!4370 = !DILexicalBlockFile(scope: !4326, file: !4, discriminator: 1)
!4371 = !DILocation(line: 628, column: 2, scope: !4370)
!4372 = !DILocation(line: 629, column: 14, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4326, file: !4, line: 628, column: 14)
!4374 = !DILocation(line: 629, column: 19, scope: !4373)
!4375 = !DILocation(line: 629, column: 12, scope: !4373)
!4376 = !DILocation(line: 630, column: 3, scope: !4373)
!4377 = distinct !{!4377, !4376}
!4378 = !DILocation(line: 630, column: 12, scope: !4379)
!4379 = !DILexicalBlockFile(scope: !4380, file: !4, discriminator: 1)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !4, line: 630, column: 12)
!4381 = distinct !DILexicalBlock(scope: !4373, file: !4, line: 630, column: 6)
!4382 = !DILocation(line: 630, column: 2, scope: !4383)
!4383 = !DILexicalBlockFile(scope: !4380, file: !4, discriminator: 2)
!4384 = !DILocation(line: 630, column: 56, scope: !4383)
!4385 = !DILocation(line: 630, column: 66, scope: !4386)
!4386 = !DILexicalBlockFile(scope: !4383, file: !4, discriminator: 4)
!4387 = !DILocation(line: 630, column: 15, scope: !4383)
!4388 = !DILocation(line: 630, column: 20, scope: !4383)
!4389 = !DILocation(line: 630, column: 25, scope: !4383)
!4390 = !DILocation(line: 630, column: 23, scope: !4391)
!4391 = !DILexicalBlockFile(scope: !4383, file: !4, discriminator: 5)
!4392 = !DILocation(line: 630, column: 23, scope: !4383)
!4393 = !DILocation(line: 630, column: 37, scope: !4394)
!4394 = !DILexicalBlockFile(scope: !4381, file: !4, discriminator: 3)
!4395 = !DILocation(line: 632, column: 24, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4373, file: !4, line: 632, column: 7)
!4397 = !DILocation(line: 632, column: 29, scope: !4396)
!4398 = !DILocation(line: 632, column: 21, scope: !4396)
!4399 = !DILocation(line: 632, column: 7, scope: !4373)
!4400 = !DILocation(line: 633, column: 18, scope: !4396)
!4401 = !DILocation(line: 633, column: 4, scope: !4396)
!4402 = !DILocation(line: 634, column: 9, scope: !4373)
!4403 = !DILocation(line: 634, column: 7, scope: !4373)
!4404 = !DILocation(line: 628, column: 2, scope: !4405)
!4405 = !DILexicalBlockFile(scope: !4326, file: !4, discriminator: 2)
!4406 = distinct !{!4406, !4368}
!4407 = !DILocation(line: 637, column: 13, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4326, file: !4, line: 637, column: 5)
!4409 = !DILocation(line: 637, column: 10, scope: !4408)
!4410 = !DILocation(line: 637, column: 5, scope: !4326)
!4411 = !DILocation(line: 640, column: 13, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !4, line: 637, column: 25)
!4413 = !DILocation(line: 640, column: 11, scope: !4412)
!4414 = !DILocation(line: 641, column: 3, scope: !4412)
!4415 = !DILocation(line: 641, column: 10, scope: !4416)
!4416 = !DILexicalBlockFile(scope: !4412, file: !4, discriminator: 1)
!4417 = !DILocation(line: 641, column: 3, scope: !4416)
!4418 = !DILocation(line: 642, column: 19, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4412, file: !4, line: 641, column: 19)
!4420 = !DILocation(line: 642, column: 28, scope: !4419)
!4421 = !DILocation(line: 642, column: 17, scope: !4419)
!4422 = !DILocation(line: 643, column: 14, scope: !4419)
!4423 = !DILocation(line: 643, column: 23, scope: !4419)
!4424 = !DILocation(line: 643, column: 12, scope: !4419)
!4425 = !DILocation(line: 644, column: 9, scope: !4419)
!4426 = !DILocation(line: 644, column: 18, scope: !4419)
!4427 = !DILocation(line: 644, column: 7, scope: !4419)
!4428 = !DILocation(line: 645, column: 4, scope: !4419)
!4429 = distinct !{!4429, !4428}
!4430 = !DILocation(line: 645, column: 13, scope: !4431)
!4431 = !DILexicalBlockFile(scope: !4432, file: !4, discriminator: 1)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !4, line: 645, column: 13)
!4433 = distinct !DILexicalBlock(scope: !4419, file: !4, line: 645, column: 7)
!4434 = !DILocation(line: 645, column: 3, scope: !4435)
!4435 = !DILexicalBlockFile(scope: !4432, file: !4, discriminator: 2)
!4436 = !DILocation(line: 645, column: 62, scope: !4435)
!4437 = !DILocation(line: 645, column: 72, scope: !4438)
!4438 = !DILexicalBlockFile(scope: !4435, file: !4, discriminator: 4)
!4439 = !DILocation(line: 645, column: 6, scope: !4435)
!4440 = !DILocation(line: 645, column: 15, scope: !4435)
!4441 = !DILocation(line: 645, column: 24, scope: !4435)
!4442 = !DILocation(line: 645, column: 24, scope: !4443)
!4443 = !DILexicalBlockFile(scope: !4435, file: !4, discriminator: 5)
!4444 = !DILocation(line: 645, column: 29, scope: !4445)
!4445 = !DILexicalBlockFile(scope: !4433, file: !4, discriminator: 3)
!4446 = !DILocation(line: 647, column: 10, scope: !4419)
!4447 = !DILocation(line: 647, column: 4, scope: !4419)
!4448 = !DILocation(line: 648, column: 21, scope: !4419)
!4449 = !DILocation(line: 648, column: 4, scope: !4419)
!4450 = !DILocation(line: 648, column: 8, scope: !4419)
!4451 = !DILocation(line: 648, column: 30, scope: !4419)
!4452 = !DILocation(line: 649, column: 15, scope: !4419)
!4453 = !DILocation(line: 649, column: 4, scope: !4419)
!4454 = !DILocation(line: 650, column: 4, scope: !4419)
!4455 = !DILocation(line: 650, column: 8, scope: !4419)
!4456 = !DILocation(line: 650, column: 18, scope: !4419)
!4457 = !DILocation(line: 651, column: 14, scope: !4419)
!4458 = !DILocation(line: 651, column: 12, scope: !4419)
!4459 = !DILocation(line: 641, column: 3, scope: !4460)
!4460 = !DILexicalBlockFile(scope: !4412, file: !4, discriminator: 2)
!4461 = distinct !{!4461, !4414}
!4462 = !DILocation(line: 653, column: 3, scope: !4412)
!4463 = distinct !{!4463, !4462}
!4464 = !DILocation(line: 653, column: 12, scope: !4465)
!4465 = !DILexicalBlockFile(scope: !4466, file: !4, discriminator: 1)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !4, line: 653, column: 12)
!4467 = distinct !DILexicalBlock(scope: !4412, file: !4, line: 653, column: 6)
!4468 = !DILocation(line: 653, column: 2, scope: !4469)
!4469 = !DILexicalBlockFile(scope: !4466, file: !4, discriminator: 2)
!4470 = !DILocation(line: 653, column: 73, scope: !4469)
!4471 = !DILocation(line: 653, column: 83, scope: !4472)
!4472 = !DILexicalBlockFile(scope: !4469, file: !4, discriminator: 4)
!4473 = !DILocation(line: 653, column: 15, scope: !4469)
!4474 = !DILocation(line: 653, column: 19, scope: !4469)
!4475 = !DILocation(line: 653, column: 23, scope: !4476)
!4476 = !DILexicalBlockFile(scope: !4469, file: !4, discriminator: 5)
!4477 = !DILocation(line: 653, column: 23, scope: !4469)
!4478 = !DILocation(line: 653, column: 32, scope: !4479)
!4479 = !DILexicalBlockFile(scope: !4467, file: !4, discriminator: 3)
!4480 = !DILocation(line: 655, column: 3, scope: !4412)
!4481 = !DILocation(line: 658, column: 12, scope: !4326)
!4482 = !DILocation(line: 658, column: 10, scope: !4326)
!4483 = !DILocation(line: 659, column: 2, scope: !4326)
!4484 = !DILocation(line: 659, column: 9, scope: !4370)
!4485 = !DILocation(line: 659, column: 2, scope: !4370)
!4486 = !DILocation(line: 660, column: 18, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4326, file: !4, line: 659, column: 18)
!4488 = !DILocation(line: 660, column: 27, scope: !4487)
!4489 = !DILocation(line: 660, column: 16, scope: !4487)
!4490 = !DILocation(line: 661, column: 8, scope: !4487)
!4491 = !DILocation(line: 661, column: 17, scope: !4487)
!4492 = !DILocation(line: 661, column: 6, scope: !4487)
!4493 = !DILocation(line: 662, column: 13, scope: !4487)
!4494 = !DILocation(line: 662, column: 22, scope: !4487)
!4495 = !DILocation(line: 662, column: 11, scope: !4487)
!4496 = !DILocation(line: 663, column: 28, scope: !4487)
!4497 = !DILocation(line: 663, column: 11, scope: !4487)
!4498 = !DILocation(line: 663, column: 15, scope: !4487)
!4499 = !DILocation(line: 663, column: 9, scope: !4487)
!4500 = !DILocation(line: 664, column: 20, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4487, file: !4, line: 664, column: 7)
!4502 = !DILocation(line: 664, column: 17, scope: !4501)
!4503 = !DILocation(line: 664, column: 7, scope: !4487)
!4504 = !DILocation(line: 665, column: 28, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4501, file: !4, line: 664, column: 27)
!4506 = !DILocation(line: 665, column: 4, scope: !4505)
!4507 = !DILocation(line: 666, column: 28, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4505, file: !4, line: 666, column: 8)
!4509 = !DILocation(line: 666, column: 25, scope: !4508)
!4510 = !DILocation(line: 666, column: 8, scope: !4505)
!4511 = !DILocation(line: 667, column: 5, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4508, file: !4, line: 666, column: 40)
!4513 = distinct !{!4513, !4511}
!4514 = !DILocation(line: 667, column: 14, scope: !4515)
!4515 = !DILexicalBlockFile(scope: !4516, file: !4, discriminator: 1)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !4, line: 667, column: 14)
!4517 = distinct !DILexicalBlock(scope: !4512, file: !4, line: 667, column: 8)
!4518 = !DILocation(line: 667, column: 4, scope: !4519)
!4519 = !DILexicalBlockFile(scope: !4516, file: !4, discriminator: 2)
!4520 = !DILocation(line: 667, column: 80, scope: !4519)
!4521 = !DILocation(line: 667, column: 90, scope: !4522)
!4522 = !DILexicalBlockFile(scope: !4519, file: !4, discriminator: 4)
!4523 = !DILocation(line: 667, column: 17, scope: !4519)
!4524 = !DILocation(line: 667, column: 26, scope: !4519)
!4525 = !DILocation(line: 667, column: 35, scope: !4519)
!4526 = !DILocation(line: 667, column: 25, scope: !4527)
!4527 = !DILexicalBlockFile(scope: !4519, file: !4, discriminator: 5)
!4528 = !DILocation(line: 667, column: 25, scope: !4519)
!4529 = !DILocation(line: 667, column: 40, scope: !4530)
!4530 = !DILexicalBlockFile(scope: !4517, file: !4, discriminator: 3)
!4531 = !DILocation(line: 670, column: 16, scope: !4512)
!4532 = !DILocation(line: 670, column: 5, scope: !4512)
!4533 = !DILocation(line: 671, column: 5, scope: !4512)
!4534 = !DILocation(line: 674, column: 11, scope: !4512)
!4535 = !DILocation(line: 674, column: 5, scope: !4512)
!4536 = !DILocation(line: 675, column: 22, scope: !4512)
!4537 = !DILocation(line: 675, column: 5, scope: !4512)
!4538 = !DILocation(line: 675, column: 9, scope: !4512)
!4539 = !DILocation(line: 675, column: 31, scope: !4512)
!4540 = !DILocation(line: 676, column: 5, scope: !4512)
!4541 = !DILocation(line: 676, column: 9, scope: !4512)
!4542 = !DILocation(line: 676, column: 19, scope: !4512)
!4543 = !DILocation(line: 677, column: 4, scope: !4512)
!4544 = !DILocation(line: 678, column: 3, scope: !4505)
!4545 = !DILocation(line: 679, column: 13, scope: !4487)
!4546 = !DILocation(line: 679, column: 11, scope: !4487)
!4547 = !DILocation(line: 659, column: 2, scope: !4405)
!4548 = distinct !{!4548, !4483}
!4549 = !DILocation(line: 681, column: 2, scope: !4326)
!4550 = distinct !{!4550, !4549}
!4551 = !DILocation(line: 681, column: 11, scope: !4552)
!4552 = !DILexicalBlockFile(scope: !4553, file: !4, discriminator: 1)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !4, line: 681, column: 11)
!4554 = distinct !DILexicalBlock(scope: !4326, file: !4, line: 681, column: 5)
!4555 = !DILocation(line: 681, column: 1, scope: !4556)
!4556 = !DILexicalBlockFile(scope: !4553, file: !4, discriminator: 2)
!4557 = !DILocation(line: 681, column: 75, scope: !4556)
!4558 = !DILocation(line: 681, column: 85, scope: !4559)
!4559 = !DILexicalBlockFile(scope: !4556, file: !4, discriminator: 4)
!4560 = !DILocation(line: 681, column: 14, scope: !4556)
!4561 = !DILocation(line: 681, column: 26, scope: !4556)
!4562 = !DILocation(line: 681, column: 39, scope: !4556)
!4563 = !DILocation(line: 681, column: 43, scope: !4556)
!4564 = !DILocation(line: 681, column: 22, scope: !4565)
!4565 = !DILexicalBlockFile(scope: !4556, file: !4, discriminator: 5)
!4566 = !DILocation(line: 681, column: 22, scope: !4556)
!4567 = !DILocation(line: 681, column: 56, scope: !4568)
!4568 = !DILexicalBlockFile(scope: !4554, file: !4, discriminator: 3)
!4569 = !DILocation(line: 683, column: 6, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4326, file: !4, line: 683, column: 6)
!4571 = !DILocation(line: 683, column: 6, scope: !4326)
!4572 = !DILocation(line: 684, column: 3, scope: !4570)
!4573 = !DILocation(line: 685, column: 2, scope: !4326)
!4574 = !DILocation(line: 686, column: 1, scope: !4326)
!4575 = distinct !DISubprogram(name: "__shealth_check", scope: !4, file: !4, line: 693, type: !1114, isLocal: true, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4576 = !DILocalVariable(name: "ld", arg: 1, scope: !4575, file: !4, line: 693, type: !311)
!4577 = !DILocation(line: 693, column: 47, scope: !4575)
!4578 = !DILocalVariable(name: "dev", scope: !4575, file: !4, line: 695, type: !281)
!4579 = !DILocation(line: 695, column: 21, scope: !4575)
!4580 = !DILocalVariable(name: "dev_next", scope: !4575, file: !4, line: 695, type: !281)
!4581 = !DILocation(line: 695, column: 27, scope: !4575)
!4582 = !DILocalVariable(name: "card_state", scope: !4575, file: !4, line: 696, type: !10)
!4583 = !DILocation(line: 696, column: 25, scope: !4575)
!4584 = !DILocalVariable(name: "fd", scope: !4575, file: !4, line: 697, type: !274)
!4585 = !DILocation(line: 697, column: 6, scope: !4575)
!4586 = !DILocation(line: 700, column: 28, scope: !4575)
!4587 = !DILocation(line: 700, column: 8, scope: !4575)
!4588 = !DILocation(line: 700, column: 6, scope: !4575)
!4589 = !DILocation(line: 701, column: 2, scope: !4575)
!4590 = !DILocation(line: 701, column: 9, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4575, file: !4, discriminator: 1)
!4592 = !DILocation(line: 701, column: 2, scope: !4591)
!4593 = !DILocation(line: 702, column: 14, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4575, file: !4, line: 701, column: 14)
!4595 = !DILocation(line: 702, column: 19, scope: !4594)
!4596 = !DILocation(line: 702, column: 12, scope: !4594)
!4597 = !DILocation(line: 703, column: 8, scope: !4594)
!4598 = !DILocation(line: 703, column: 13, scope: !4594)
!4599 = !DILocation(line: 703, column: 6, scope: !4594)
!4600 = !DILocation(line: 704, column: 3, scope: !4594)
!4601 = distinct !{!4601, !4600}
!4602 = !DILocation(line: 704, column: 12, scope: !4603)
!4603 = !DILexicalBlockFile(scope: !4604, file: !4, discriminator: 1)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !4, line: 704, column: 12)
!4605 = distinct !DILexicalBlock(scope: !4594, file: !4, line: 704, column: 6)
!4606 = !DILocation(line: 704, column: 2, scope: !4607)
!4607 = !DILexicalBlockFile(scope: !4604, file: !4, discriminator: 2)
!4608 = !DILocation(line: 704, column: 65, scope: !4607)
!4609 = !DILocation(line: 704, column: 75, scope: !4610)
!4610 = !DILexicalBlockFile(scope: !4607, file: !4, discriminator: 4)
!4611 = !DILocation(line: 704, column: 15, scope: !4607)
!4612 = !DILocation(line: 704, column: 20, scope: !4607)
!4613 = !DILocation(line: 704, column: 24, scope: !4607)
!4614 = !DILocation(line: 704, column: 29, scope: !4607)
!4615 = !DILocation(line: 704, column: 23, scope: !4616)
!4616 = !DILexicalBlockFile(scope: !4607, file: !4, discriminator: 5)
!4617 = !DILocation(line: 704, column: 23, scope: !4607)
!4618 = !DILocation(line: 704, column: 41, scope: !4619)
!4619 = !DILexicalBlockFile(scope: !4605, file: !4, discriminator: 3)
!4620 = !DILocation(line: 706, column: 23, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4594, file: !4, line: 706, column: 6)
!4622 = !DILocation(line: 706, column: 28, scope: !4621)
!4623 = !DILocation(line: 706, column: 20, scope: !4621)
!4624 = !DILocation(line: 706, column: 6, scope: !4594)
!4625 = !DILocation(line: 707, column: 19, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4621, file: !4, line: 706, column: 39)
!4627 = !DILocation(line: 707, column: 5, scope: !4626)
!4628 = !DILocation(line: 708, column: 14, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4626, file: !4, line: 708, column: 8)
!4630 = !DILocation(line: 708, column: 11, scope: !4629)
!4631 = !DILocation(line: 708, column: 8, scope: !4626)
!4632 = !DILocation(line: 709, column: 11, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4629, file: !4, line: 708, column: 18)
!4634 = !DILocation(line: 709, column: 5, scope: !4633)
!4635 = !DILocation(line: 710, column: 5, scope: !4633)
!4636 = !DILocation(line: 710, column: 9, scope: !4633)
!4637 = !DILocation(line: 710, column: 19, scope: !4633)
!4638 = !DILocation(line: 711, column: 4, scope: !4633)
!4639 = !DILocation(line: 712, column: 3, scope: !4626)
!4640 = !DILocation(line: 713, column: 14, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !4, line: 713, column: 8)
!4642 = distinct !DILexicalBlock(scope: !4621, file: !4, line: 712, column: 10)
!4643 = !DILocation(line: 713, column: 11, scope: !4641)
!4644 = !DILocation(line: 713, column: 8, scope: !4642)
!4645 = !DILocation(line: 714, column: 29, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4641, file: !4, line: 713, column: 18)
!4647 = !DILocation(line: 714, column: 5, scope: !4646)
!4648 = !DILocation(line: 715, column: 29, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4646, file: !4, line: 715, column: 9)
!4650 = !DILocation(line: 715, column: 26, scope: !4649)
!4651 = !DILocation(line: 715, column: 9, scope: !4646)
!4652 = !DILocation(line: 716, column: 20, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !4, line: 715, column: 41)
!4654 = !DILocation(line: 716, column: 6, scope: !4653)
!4655 = !DILocation(line: 717, column: 12, scope: !4653)
!4656 = !DILocation(line: 717, column: 6, scope: !4653)
!4657 = !DILocation(line: 718, column: 6, scope: !4653)
!4658 = !DILocation(line: 718, column: 10, scope: !4653)
!4659 = !DILocation(line: 718, column: 20, scope: !4653)
!4660 = !DILocation(line: 719, column: 5, scope: !4653)
!4661 = !DILocation(line: 720, column: 4, scope: !4646)
!4662 = !DILocation(line: 722, column: 9, scope: !4594)
!4663 = !DILocation(line: 722, column: 7, scope: !4594)
!4664 = !DILocation(line: 701, column: 2, scope: !4665)
!4665 = !DILexicalBlockFile(scope: !4575, file: !4, discriminator: 2)
!4666 = distinct !{!4666, !4589}
!4667 = !DILocation(line: 724, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4575, file: !4, line: 724, column: 6)
!4669 = !DILocation(line: 724, column: 6, scope: !4575)
!4670 = !DILocation(line: 725, column: 3, scope: !4668)
!4671 = !DILocation(line: 726, column: 2, scope: !4575)
!4672 = !DILocation(line: 727, column: 1, scope: !4575)
!4673 = distinct !DISubprogram(name: "__inotify_handle", scope: !4, file: !4, line: 597, type: !3152, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4674 = !DILocalVariable(name: "ld", arg: 1, scope: !4673, file: !4, line: 597, type: !311)
!4675 = !DILocation(line: 597, column: 49, scope: !4673)
!4676 = !DILocalVariable(name: "card", scope: !4673, file: !4, line: 599, type: !274)
!4677 = !DILocation(line: 599, column: 6, scope: !4673)
!4678 = !DILocation(line: 601, column: 24, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4673, file: !4, line: 601, column: 6)
!4680 = !DILocation(line: 601, column: 28, scope: !4679)
!4681 = !DILocation(line: 601, column: 21, scope: !4679)
!4682 = !DILocation(line: 601, column: 6, scope: !4673)
!4683 = !DILocation(line: 602, column: 10, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4679, file: !4, line: 601, column: 43)
!4685 = !DILocation(line: 602, column: 14, scope: !4684)
!4686 = !DILocation(line: 602, column: 8, scope: !4684)
!4687 = !DILocation(line: 603, column: 3, scope: !4684)
!4688 = distinct !{!4688, !4687}
!4689 = !DILocation(line: 603, column: 12, scope: !4690)
!4690 = !DILexicalBlockFile(scope: !4691, file: !4, discriminator: 1)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !4, line: 603, column: 12)
!4692 = distinct !DILexicalBlock(scope: !4684, file: !4, line: 603, column: 6)
!4693 = !DILocation(line: 603, column: 2, scope: !4694)
!4694 = !DILexicalBlockFile(scope: !4691, file: !4, discriminator: 2)
!4695 = !DILocation(line: 603, column: 52, scope: !4694)
!4696 = !DILocation(line: 603, column: 62, scope: !4697)
!4697 = !DILexicalBlockFile(scope: !4694, file: !4, discriminator: 4)
!4698 = !DILocation(line: 603, column: 100, scope: !4694)
!4699 = !DILocation(line: 603, column: 23, scope: !4700)
!4700 = !DILexicalBlockFile(scope: !4694, file: !4, discriminator: 5)
!4701 = !DILocation(line: 603, column: 23, scope: !4694)
!4702 = !DILocation(line: 603, column: 107, scope: !4703)
!4703 = !DILexicalBlockFile(scope: !4692, file: !4, discriminator: 3)
!4704 = !DILocation(line: 604, column: 20, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4684, file: !4, line: 604, column: 7)
!4706 = !DILocation(line: 604, column: 26, scope: !4705)
!4707 = !DILocation(line: 604, column: 30, scope: !4705)
!4708 = !DILocation(line: 604, column: 7, scope: !4705)
!4709 = !DILocation(line: 604, column: 7, scope: !4684)
!4710 = !DILocation(line: 605, column: 4, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4705, file: !4, line: 604, column: 44)
!4712 = distinct !{!4712, !4710}
!4713 = !DILocation(line: 605, column: 13, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !4715, file: !4, discriminator: 1)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !4, line: 605, column: 13)
!4716 = distinct !DILexicalBlock(scope: !4711, file: !4, line: 605, column: 7)
!4717 = !DILocation(line: 605, column: 3, scope: !4718)
!4718 = !DILexicalBlockFile(scope: !4715, file: !4, discriminator: 2)
!4719 = !DILocation(line: 605, column: 56, scope: !4718)
!4720 = !DILocation(line: 605, column: 66, scope: !4721)
!4721 = !DILexicalBlockFile(scope: !4718, file: !4, discriminator: 4)
!4722 = !DILocation(line: 605, column: 104, scope: !4718)
!4723 = !DILocation(line: 605, column: 24, scope: !4724)
!4724 = !DILexicalBlockFile(scope: !4718, file: !4, discriminator: 5)
!4725 = !DILocation(line: 605, column: 24, scope: !4718)
!4726 = !DILocation(line: 605, column: 111, scope: !4727)
!4727 = !DILexicalBlockFile(scope: !4716, file: !4, discriminator: 3)
!4728 = !DILocation(line: 606, column: 4, scope: !4711)
!4729 = !DILocation(line: 606, column: 8, scope: !4711)
!4730 = !DILocation(line: 606, column: 18, scope: !4711)
!4731 = !DILocation(line: 607, column: 21, scope: !4711)
!4732 = !DILocation(line: 607, column: 4, scope: !4711)
!4733 = !DILocation(line: 607, column: 8, scope: !4711)
!4734 = !DILocation(line: 607, column: 27, scope: !4711)
!4735 = !DILocation(line: 608, column: 4, scope: !4711)
!4736 = !DILocation(line: 608, column: 8, scope: !4711)
!4737 = !DILocation(line: 608, column: 22, scope: !4711)
!4738 = !DILocation(line: 609, column: 3, scope: !4711)
!4739 = !DILocation(line: 610, column: 2, scope: !4684)
!4740 = !DILocation(line: 611, column: 1, scope: !4673)
!4741 = distinct !DISubprogram(name: "__node_delete", scope: !4, file: !4, line: 542, type: !4742, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{null, !281, !1055}
!4744 = !DILocalVariable(name: "node", arg: 1, scope: !4741, file: !4, line: 542, type: !281)
!4745 = !DILocation(line: 542, column: 46, scope: !4741)
!4746 = !DILocalVariable(name: "head", arg: 2, scope: !4741, file: !4, line: 542, type: !1055)
!4747 = !DILocation(line: 542, column: 59, scope: !4741)
!4748 = !DILocation(line: 544, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4741, file: !4, line: 544, column: 6)
!4750 = !DILocation(line: 544, column: 12, scope: !4749)
!4751 = !DILocation(line: 544, column: 22, scope: !4749)
!4752 = !DILocation(line: 544, column: 19, scope: !4749)
!4753 = !DILocation(line: 544, column: 6, scope: !4741)
!4754 = !DILocation(line: 545, column: 2, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4749, file: !4, line: 544, column: 28)
!4756 = !DILocation(line: 545, column: 63, scope: !4755)
!4757 = !DILocation(line: 545, column: 73, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !4755, file: !4, discriminator: 1)
!4759 = !DILocation(line: 545, column: 101, scope: !4755)
!4760 = !DILocation(line: 545, column: 3, scope: !4761)
!4761 = !DILexicalBlockFile(scope: !4755, file: !4, discriminator: 2)
!4762 = !DILocation(line: 546, column: 3, scope: !4755)
!4763 = !DILocation(line: 548, column: 2, scope: !4741)
!4764 = !DILocation(line: 548, column: 8, scope: !4741)
!4765 = !DILocation(line: 548, column: 18, scope: !4741)
!4766 = !DILocation(line: 549, column: 14, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4741, file: !4, line: 549, column: 6)
!4768 = !DILocation(line: 549, column: 20, scope: !4767)
!4769 = !DILocation(line: 549, column: 11, scope: !4767)
!4770 = !DILocation(line: 549, column: 26, scope: !4767)
!4771 = !DILocation(line: 549, column: 38, scope: !4772)
!4772 = !DILexicalBlockFile(scope: !4767, file: !4, discriminator: 1)
!4773 = !DILocation(line: 549, column: 44, scope: !4772)
!4774 = !DILocation(line: 549, column: 35, scope: !4772)
!4775 = !DILocation(line: 549, column: 6, scope: !4772)
!4776 = !DILocation(line: 551, column: 4, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4767, file: !4, line: 549, column: 51)
!4778 = !DILocation(line: 551, column: 9, scope: !4777)
!4779 = !DILocation(line: 552, column: 2, scope: !4777)
!4780 = !DILocation(line: 552, column: 20, scope: !4781)
!4781 = !DILexicalBlockFile(scope: !4782, file: !4, discriminator: 1)
!4782 = distinct !DILexicalBlock(scope: !4767, file: !4, line: 552, column: 12)
!4783 = !DILocation(line: 552, column: 26, scope: !4781)
!4784 = !DILocation(line: 552, column: 17, scope: !4781)
!4785 = !DILocation(line: 552, column: 12, scope: !4781)
!4786 = !DILocation(line: 554, column: 3, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4782, file: !4, line: 552, column: 32)
!4788 = !DILocation(line: 554, column: 9, scope: !4787)
!4789 = !DILocation(line: 554, column: 15, scope: !4787)
!4790 = !DILocation(line: 554, column: 20, scope: !4787)
!4791 = !DILocation(line: 555, column: 2, scope: !4787)
!4792 = !DILocation(line: 555, column: 20, scope: !4793)
!4793 = !DILexicalBlockFile(scope: !4794, file: !4, discriminator: 1)
!4794 = distinct !DILexicalBlock(scope: !4782, file: !4, line: 555, column: 12)
!4795 = !DILocation(line: 555, column: 26, scope: !4793)
!4796 = !DILocation(line: 555, column: 17, scope: !4793)
!4797 = !DILocation(line: 555, column: 12, scope: !4793)
!4798 = !DILocation(line: 557, column: 3, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !4, line: 555, column: 32)
!4800 = !DILocation(line: 557, column: 9, scope: !4799)
!4801 = !DILocation(line: 557, column: 15, scope: !4799)
!4802 = !DILocation(line: 557, column: 20, scope: !4799)
!4803 = !DILocation(line: 558, column: 18, scope: !4799)
!4804 = !DILocation(line: 558, column: 24, scope: !4799)
!4805 = !DILocation(line: 558, column: 11, scope: !4799)
!4806 = !DILocation(line: 558, column: 4, scope: !4799)
!4807 = !DILocation(line: 558, column: 9, scope: !4799)
!4808 = !DILocation(line: 559, column: 2, scope: !4799)
!4809 = !DILocation(line: 561, column: 22, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4794, file: !4, line: 559, column: 9)
!4811 = !DILocation(line: 561, column: 28, scope: !4810)
!4812 = !DILocation(line: 561, column: 3, scope: !4810)
!4813 = !DILocation(line: 561, column: 9, scope: !4810)
!4814 = !DILocation(line: 561, column: 15, scope: !4810)
!4815 = !DILocation(line: 561, column: 20, scope: !4810)
!4816 = !DILocation(line: 562, column: 22, scope: !4810)
!4817 = !DILocation(line: 562, column: 28, scope: !4810)
!4818 = !DILocation(line: 562, column: 3, scope: !4810)
!4819 = !DILocation(line: 562, column: 9, scope: !4810)
!4820 = !DILocation(line: 562, column: 15, scope: !4810)
!4821 = !DILocation(line: 562, column: 20, scope: !4810)
!4822 = !DILocation(line: 564, column: 7, scope: !4741)
!4823 = !DILocation(line: 564, column: 2, scope: !4741)
!4824 = !DILocation(line: 565, column: 1, scope: !4741)
!4825 = !DILocation(line: 565, column: 1, scope: !4826)
!4826 = !DILexicalBlockFile(scope: !4741, file: !4, discriminator: 1)
!4827 = distinct !DISubprogram(name: "__fd_m_del", scope: !4, file: !4, line: 308, type: !535, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !432)
!4828 = !DILocalVariable(name: "fd", arg: 1, scope: !4827, file: !4, line: 308, type: !274)
!4829 = !DILocation(line: 308, column: 28, scope: !4827)
!4830 = !DILocalVariable(name: "this", scope: !4827, file: !4, line: 310, type: !295)
!4831 = !DILocation(line: 310, column: 18, scope: !4827)
!4832 = !DILocation(line: 310, column: 25, scope: !4827)
!4833 = !DILocation(line: 312, column: 2, scope: !4827)
!4834 = !DILocation(line: 312, column: 9, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4827, file: !4, discriminator: 1)
!4836 = !DILocation(line: 312, column: 2, scope: !4835)
!4837 = !DILocation(line: 313, column: 7, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !4, line: 313, column: 7)
!4839 = distinct !DILexicalBlock(scope: !4827, file: !4, line: 312, column: 15)
!4840 = !DILocation(line: 313, column: 13, scope: !4838)
!4841 = !DILocation(line: 313, column: 21, scope: !4838)
!4842 = !DILocation(line: 313, column: 18, scope: !4838)
!4843 = !DILocation(line: 313, column: 7, scope: !4839)
!4844 = !DILocation(line: 314, column: 16, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !4, line: 314, column: 8)
!4846 = distinct !DILexicalBlock(scope: !4838, file: !4, line: 313, column: 25)
!4847 = !DILocation(line: 314, column: 22, scope: !4845)
!4848 = !DILocation(line: 314, column: 13, scope: !4845)
!4849 = !DILocation(line: 314, column: 28, scope: !4845)
!4850 = !DILocation(line: 314, column: 40, scope: !4851)
!4851 = !DILexicalBlockFile(scope: !4845, file: !4, discriminator: 1)
!4852 = !DILocation(line: 314, column: 46, scope: !4851)
!4853 = !DILocation(line: 314, column: 37, scope: !4851)
!4854 = !DILocation(line: 314, column: 8, scope: !4851)
!4855 = !DILocation(line: 316, column: 17, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4845, file: !4, line: 314, column: 53)
!4857 = !DILocation(line: 317, column: 4, scope: !4856)
!4858 = !DILocation(line: 317, column: 22, scope: !4859)
!4859 = !DILexicalBlockFile(scope: !4860, file: !4, discriminator: 1)
!4860 = distinct !DILexicalBlock(scope: !4845, file: !4, line: 317, column: 14)
!4861 = !DILocation(line: 317, column: 28, scope: !4859)
!4862 = !DILocation(line: 317, column: 19, scope: !4859)
!4863 = !DILocation(line: 317, column: 14, scope: !4859)
!4864 = !DILocation(line: 319, column: 5, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4860, file: !4, line: 317, column: 34)
!4866 = !DILocation(line: 319, column: 11, scope: !4865)
!4867 = !DILocation(line: 319, column: 17, scope: !4865)
!4868 = !DILocation(line: 319, column: 22, scope: !4865)
!4869 = !DILocation(line: 320, column: 4, scope: !4865)
!4870 = !DILocation(line: 320, column: 22, scope: !4871)
!4871 = !DILexicalBlockFile(scope: !4872, file: !4, discriminator: 1)
!4872 = distinct !DILexicalBlock(scope: !4860, file: !4, line: 320, column: 14)
!4873 = !DILocation(line: 320, column: 28, scope: !4871)
!4874 = !DILocation(line: 320, column: 19, scope: !4871)
!4875 = !DILocation(line: 320, column: 14, scope: !4871)
!4876 = !DILocation(line: 322, column: 5, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4872, file: !4, line: 320, column: 34)
!4878 = !DILocation(line: 322, column: 11, scope: !4877)
!4879 = !DILocation(line: 322, column: 17, scope: !4877)
!4880 = !DILocation(line: 322, column: 22, scope: !4877)
!4881 = !DILocation(line: 323, column: 19, scope: !4877)
!4882 = !DILocation(line: 323, column: 25, scope: !4877)
!4883 = !DILocation(line: 323, column: 17, scope: !4877)
!4884 = !DILocation(line: 324, column: 4, scope: !4877)
!4885 = !DILocation(line: 326, column: 24, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4872, file: !4, line: 324, column: 11)
!4887 = !DILocation(line: 326, column: 30, scope: !4886)
!4888 = !DILocation(line: 326, column: 5, scope: !4886)
!4889 = !DILocation(line: 326, column: 11, scope: !4886)
!4890 = !DILocation(line: 326, column: 17, scope: !4886)
!4891 = !DILocation(line: 326, column: 22, scope: !4886)
!4892 = !DILocation(line: 327, column: 24, scope: !4886)
!4893 = !DILocation(line: 327, column: 30, scope: !4886)
!4894 = !DILocation(line: 327, column: 5, scope: !4886)
!4895 = !DILocation(line: 327, column: 11, scope: !4886)
!4896 = !DILocation(line: 327, column: 17, scope: !4886)
!4897 = !DILocation(line: 327, column: 22, scope: !4886)
!4898 = !DILocation(line: 329, column: 9, scope: !4846)
!4899 = !DILocation(line: 329, column: 4, scope: !4846)
!4900 = !DILocation(line: 330, column: 4, scope: !4846)
!4901 = !DILocation(line: 332, column: 10, scope: !4839)
!4902 = !DILocation(line: 332, column: 16, scope: !4839)
!4903 = !DILocation(line: 332, column: 8, scope: !4839)
!4904 = !DILocation(line: 312, column: 2, scope: !4905)
!4905 = !DILexicalBlockFile(scope: !4827, file: !4, discriminator: 2)
!4906 = distinct !{!4906, !4833}
!4907 = !DILocation(line: 334, column: 1, scope: !4827)
!4908 = !DILocation(line: 334, column: 69, scope: !4827)
!4909 = !DILocation(line: 334, column: 79, scope: !4835)
!4910 = !DILocation(line: 334, column: 107, scope: !4827)
!4911 = !DILocation(line: 334, column: 111, scope: !4827)
!4912 = !DILocation(line: 334, column: 2, scope: !4905)
!4913 = !DILocation(line: 335, column: 2, scope: !4827)
!4914 = !DILocation(line: 336, column: 1, scope: !4827)
