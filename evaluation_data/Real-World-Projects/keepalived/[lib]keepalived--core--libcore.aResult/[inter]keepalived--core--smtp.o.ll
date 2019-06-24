; ModuleID = './[inter]keepalived--core--smtp.o.i'
source_filename = "./[inter]keepalived--core--smtp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32 (%struct._thread*)*, i32 (%struct._thread*, i32)* }
%struct._thread = type { i64, i32, %struct._thread_master*, {}*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.1 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct.timeval = type { i64, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.1 = type { %struct.rb_node }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.lvs_syncd_config = type { i8*, %struct._vrrp_t*, i32, i16, %struct.sockaddr_storage, i16, i8, i8* }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._smtp = type { i32, i32, i32, i8*, i8*, i8*, i8*, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._checker = type { void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, %struct._virtual_server*, %struct._real_server*, i8*, i8, i8, i8, %struct._conn_opts*, i32, i64, i64, i32, i64, i32, i32, i64 }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }
%struct._conn_opts = type { %struct.sockaddr_storage, %struct.sockaddr_storage, [16 x i8], i32, i32 }
%struct._smtp_rs = type { %struct._real_server*, %struct._virtual_server* }

@SMTP_FSM = global [10 x %struct.anon] [%struct.anon { i32 (%struct._thread*)* @connection_error, i32 (%struct._thread*, i32)* null }, %struct.anon { i32 (%struct._thread*)* @connection_in_progress, i32 (%struct._thread*, i32)* null }, %struct.anon { i32 (%struct._thread*)* @connection_timeout, i32 (%struct._thread*, i32)* null }, %struct.anon { i32 (%struct._thread*)* @connection_success, i32 (%struct._thread*, i32)* @connection_code }, %struct.anon { i32 (%struct._thread*)* @helo_cmd, i32 (%struct._thread*, i32)* @helo_code }, %struct.anon { i32 (%struct._thread*)* @mail_cmd, i32 (%struct._thread*, i32)* @mail_code }, %struct.anon { i32 (%struct._thread*)* @rcpt_cmd, i32 (%struct._thread*, i32)* @rcpt_code }, %struct.anon { i32 (%struct._thread*)* @data_cmd, i32 (%struct._thread*, i32)* @data_code }, %struct.anon { i32 (%struct._thread*)* @body_cmd, i32 (%struct._thread*, i32)* @body_code }, %struct.anon { i32 (%struct._thread*)* @quit_cmd, i32 (%struct._thread*, i32)* @quit_code }], align 16
@global_data = external global %struct._data*, align 8
@.str = private unnamed_addr constant [45 x i8] c"[%s] Realserver %s of virtual server %s - %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"[%s] Virtualserver %s - %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[%s] VRRP Instance %s - %s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[%s] VRRP Group %s - %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"[%s] %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"SMTP connection ERROR to %s.\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Timeout connecting SMTP server %s.\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Remote SMTP server %s connected.\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Timeout reading data to remote SMTP server %s.\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Error reading data from remote SMTP server %s.\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Remote SMTP server %s has closed the connection.\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"Received buffer from remote SMTP server %s overflow our get read buffer length.\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Can not read data from remote SMTP server %s.\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Timeout sending data to remote SMTP server %s.\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"Can not send data to remote SMTP server %s.\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"Error connecting SMTP server %s. SMTP status code = %d\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"HELO %s\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"Error processing HELO cmd on SMTP server %s. SMTP status code = %d\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"MAIL FROM:<%s>\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"Error processing MAIL cmd on SMTP server %s. SMTP status code = %d\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"RCPT TO:<%s>\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"Error processing RCPT cmd on SMTP server %s. SMTP status code = %d\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"DATA\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"Error processing DATA cmd on SMTP server %s. SMTP status code = %d\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"%a, %d %b %Y %H:%M:%S %z\00", align 1
@.str.30 = private unnamed_addr constant [66 x i8] c"Date: %s\0D\0AFrom: %s\0D\0ASubject: %s\0D\0AX-Mailer: Keepalived\0D\0ATo: %s\0D\0A\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"\0D\0A.\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"SMTP alert successfully sent.\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"Error processing DOT cmd on SMTP server %s. SMTP status code = %d\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"QUIT\0D\0A\00", align 1
@master = external global %struct._thread_master*, align 8

; Function Attrs: nounwind uwtable
define internal i32 @connection_error(%struct._thread*) #0 !dbg !676 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !678, metadata !679), !dbg !680
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !681, metadata !679), !dbg !682
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !683
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !684
  %6 = load i8*, i8** %5, align 8, !dbg !684
  %7 = bitcast i8* %6 to %struct._smtp*, !dbg !685
  store %struct._smtp* %7, %struct._smtp** %3, align 8, !dbg !682
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !686
  %9 = getelementptr inbounds %struct._data, %struct._data* %8, i32 0, i32 6, !dbg !687
  %10 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %9), !dbg !688
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* %10), !dbg !689
  %11 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !690
  call void @free_smtp_all(%struct._smtp* %11), !dbg !691
  ret i32 0, !dbg !692
}

; Function Attrs: nounwind uwtable
define internal i32 @connection_in_progress(%struct._thread*) #0 !dbg !693 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !694, metadata !679), !dbg !695
  call void @llvm.dbg.declare(metadata i32* %3, metadata !696, metadata !679), !dbg !697
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !698
  %5 = call i32 @tcp_socket_state(%struct._thread* %4, i32 (%struct._thread*)* @connection_in_progress), !dbg !699
  store i32 %5, i32* %3, align 4, !dbg !700
  %6 = load i32, i32* %3, align 4, !dbg !701
  %7 = icmp ne i32 %6, 1, !dbg !703
  br i1 %7, label %8, label %26, !dbg !704

; <label>:8:                                      ; preds = %1
  br label %9, !dbg !705, !llvm.loop !706

; <label>:9:                                      ; preds = %8
  %10 = load i32, i32* %3, align 4, !dbg !707
  %11 = sext i32 %10 to i64, !dbg !711
  %12 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 %11, !dbg !711
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !712
  %14 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %13, align 16, !dbg !712
  %15 = icmp ne i32 (%struct._thread*)* %14, null, !dbg !713
  br i1 %15, label %16, label %24, !dbg !713

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %3, align 4, !dbg !714
  %18 = sext i32 %17 to i64, !dbg !716
  %19 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 %18, !dbg !716
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0, !dbg !717
  %21 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %20, align 16, !dbg !717
  %22 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !718
  %23 = call i32 %21(%struct._thread* %22), !dbg !719
  br label %24, !dbg !719

; <label>:24:                                     ; preds = %16, %9
  br label %25, !dbg !720

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !722

; <label>:26:                                     ; preds = %25, %1
  ret i32 0, !dbg !724
}

; Function Attrs: nounwind uwtable
define internal i32 @connection_timeout(%struct._thread*) #0 !dbg !725 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !726, metadata !679), !dbg !727
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !728, metadata !679), !dbg !729
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !730
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !731
  %6 = load i8*, i8** %5, align 8, !dbg !731
  %7 = bitcast i8* %6 to %struct._smtp*, !dbg !732
  store %struct._smtp* %7, %struct._smtp** %3, align 8, !dbg !729
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !733
  %9 = getelementptr inbounds %struct._data, %struct._data* %8, i32 0, i32 6, !dbg !734
  %10 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %9), !dbg !735
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* %10), !dbg !736
  %11 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !737
  call void @free_smtp_all(%struct._smtp* %11), !dbg !738
  ret i32 0, !dbg !739
}

; Function Attrs: nounwind uwtable
define internal i32 @connection_success(%struct._thread*) #0 !dbg !740 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !741, metadata !679), !dbg !742
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !743, metadata !679), !dbg !744
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !745
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !746
  %6 = load i8*, i8** %5, align 8, !dbg !746
  %7 = bitcast i8* %6 to %struct._smtp*, !dbg !747
  store %struct._smtp* %7, %struct._smtp** %3, align 8, !dbg !744
  %8 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !748
  %9 = getelementptr inbounds %struct._data, %struct._data* %8, i32 0, i32 6, !dbg !749
  %10 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %9), !dbg !750
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i8* %10), !dbg !751
  %11 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !752
  %12 = getelementptr inbounds %struct._smtp, %struct._smtp* %11, i32 0, i32 1, !dbg !753
  store i32 3, i32* %12, align 4, !dbg !754
  %13 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !755
  %14 = getelementptr inbounds %struct._thread, %struct._thread* %13, i32 0, i32 2, !dbg !756
  %15 = load %struct._thread_master*, %struct._thread_master** %14, align 8, !dbg !756
  %16 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !757
  %17 = bitcast %struct._smtp* %16 to i8*, !dbg !757
  %18 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !758
  %19 = getelementptr inbounds %struct._smtp, %struct._smtp* %18, i32 0, i32 0, !dbg !759
  %20 = load i32, i32* %19, align 8, !dbg !759
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !760
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 8, !dbg !761
  %23 = load i64, i64* %22, align 8, !dbg !761
  %24 = call %struct._thread* @thread_add_read(%struct._thread_master* %15, i32 (%struct._thread*)* @smtp_read_thread, i8* %17, i32 %20, i64 %23), !dbg !762
  ret i32 0, !dbg !763
}

; Function Attrs: nounwind uwtable
define internal i32 @connection_code(%struct._thread*, i32) #0 !dbg !764 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !765, metadata !679), !dbg !766
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !767, metadata !679), !dbg !768
  call void @llvm.dbg.declare(metadata %struct._smtp** %5, metadata !769, metadata !679), !dbg !770
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !771
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !772
  %8 = load i8*, i8** %7, align 8, !dbg !772
  %9 = bitcast i8* %8 to %struct._smtp*, !dbg !773
  store %struct._smtp* %9, %struct._smtp** %5, align 8, !dbg !770
  %10 = load i32, i32* %4, align 4, !dbg !774
  %11 = icmp eq i32 %10, 220, !dbg !776
  br i1 %11, label %12, label %17, !dbg !777

; <label>:12:                                     ; preds = %2
  %13 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !778
  %14 = getelementptr inbounds %struct._smtp, %struct._smtp* %13, i32 0, i32 1, !dbg !780
  %15 = load i32, i32* %14, align 4, !dbg !781
  %16 = add nsw i32 %15, 1, !dbg !781
  store i32 %16, i32* %14, align 4, !dbg !781
  br label %24, !dbg !782

; <label>:17:                                     ; preds = %2
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !783
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 6, !dbg !785
  %20 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %19), !dbg !786
  %21 = load i32, i32* %4, align 4, !dbg !787
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0), i8* %20, i32 %21), !dbg !788
  %22 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !789
  %23 = getelementptr inbounds %struct._smtp, %struct._smtp* %22, i32 0, i32 1, !dbg !790
  store i32 11, i32* %23, align 4, !dbg !791
  br label %24

; <label>:24:                                     ; preds = %17, %12
  ret i32 0, !dbg !792
}

; Function Attrs: nounwind uwtable
define internal i32 @helo_cmd(%struct._thread*) #0 !dbg !793 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  %4 = alloca i8*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !794, metadata !679), !dbg !795
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !796, metadata !679), !dbg !797
  %5 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !798
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 4, !dbg !799
  %7 = load i8*, i8** %6, align 8, !dbg !799
  %8 = bitcast i8* %7 to %struct._smtp*, !dbg !800
  store %struct._smtp* %8, %struct._smtp** %3, align 8, !dbg !797
  call void @llvm.dbg.declare(metadata i8** %4, metadata !801, metadata !679), !dbg !802
  %9 = call i8* @zalloc(i64 1024), !dbg !803
  store i8* %9, i8** %4, align 8, !dbg !804
  %10 = load i8*, i8** %4, align 8, !dbg !805
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !806
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 7, !dbg !807
  %13 = load i8*, i8** %12, align 8, !dbg !807
  %14 = icmp ne i8* %13, null, !dbg !808
  br i1 %14, label %15, label %19, !dbg !808

; <label>:15:                                     ; preds = %1
  %16 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !809
  %17 = getelementptr inbounds %struct._data, %struct._data* %16, i32 0, i32 7, !dbg !811
  %18 = load i8*, i8** %17, align 8, !dbg !811
  br label %20, !dbg !812

; <label>:19:                                     ; preds = %1
  br label %20, !dbg !813

; <label>:20:                                     ; preds = %19, %15
  %21 = phi i8* [ %18, %15 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %19 ], !dbg !815
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 1024, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* %21) #8, !dbg !817
  %23 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !818
  %24 = getelementptr inbounds %struct._thread, %struct._thread* %23, i32 0, i32 6, !dbg !820
  %25 = bitcast %union.anon* %24 to i32*, !dbg !821
  %26 = load i32, i32* %25, align 8, !dbg !821
  %27 = load i8*, i8** %4, align 8, !dbg !822
  %28 = load i8*, i8** %4, align 8, !dbg !823
  %29 = call i64 @strlen(i8* %28) #9, !dbg !824
  %30 = call i64 @send(i32 %26, i8* %27, i64 %29, i32 0), !dbg !825
  %31 = icmp eq i64 %30, -1, !dbg !827
  br i1 %31, label %32, label %35, !dbg !828

; <label>:32:                                     ; preds = %20
  %33 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !829
  %34 = getelementptr inbounds %struct._smtp, %struct._smtp* %33, i32 0, i32 1, !dbg !830
  store i32 11, i32* %34, align 4, !dbg !831
  br label %35, !dbg !829

; <label>:35:                                     ; preds = %32, %20
  %36 = load i8*, i8** %4, align 8, !dbg !832
  call void @free(i8* %36) #8, !dbg !833
  store i8* null, i8** %4, align 8, !dbg !834
  ret i32 0, !dbg !835
}

; Function Attrs: nounwind uwtable
define internal i32 @helo_code(%struct._thread*, i32) #0 !dbg !836 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !837, metadata !679), !dbg !838
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !839, metadata !679), !dbg !840
  call void @llvm.dbg.declare(metadata %struct._smtp** %5, metadata !841, metadata !679), !dbg !842
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !843
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !844
  %8 = load i8*, i8** %7, align 8, !dbg !844
  %9 = bitcast i8* %8 to %struct._smtp*, !dbg !845
  store %struct._smtp* %9, %struct._smtp** %5, align 8, !dbg !842
  %10 = load i32, i32* %4, align 4, !dbg !846
  %11 = icmp eq i32 %10, 250, !dbg !848
  br i1 %11, label %12, label %17, !dbg !849

; <label>:12:                                     ; preds = %2
  %13 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !850
  %14 = getelementptr inbounds %struct._smtp, %struct._smtp* %13, i32 0, i32 1, !dbg !852
  %15 = load i32, i32* %14, align 4, !dbg !853
  %16 = add nsw i32 %15, 1, !dbg !853
  store i32 %16, i32* %14, align 4, !dbg !853
  br label %24, !dbg !854

; <label>:17:                                     ; preds = %2
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !855
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 6, !dbg !857
  %20 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %19), !dbg !858
  %21 = load i32, i32* %4, align 4, !dbg !859
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i32 0, i32 0), i8* %20, i32 %21), !dbg !860
  %22 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !861
  %23 = getelementptr inbounds %struct._smtp, %struct._smtp* %22, i32 0, i32 1, !dbg !862
  store i32 11, i32* %23, align 4, !dbg !863
  br label %24

; <label>:24:                                     ; preds = %17, %12
  ret i32 0, !dbg !864
}

; Function Attrs: nounwind uwtable
define internal i32 @mail_cmd(%struct._thread*) #0 !dbg !865 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  %4 = alloca i8*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !866, metadata !679), !dbg !867
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !868, metadata !679), !dbg !869
  %5 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !870
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 4, !dbg !871
  %7 = load i8*, i8** %6, align 8, !dbg !871
  %8 = bitcast i8* %7 to %struct._smtp*, !dbg !872
  store %struct._smtp* %8, %struct._smtp** %3, align 8, !dbg !869
  call void @llvm.dbg.declare(metadata i8** %4, metadata !873, metadata !679), !dbg !874
  %9 = call i8* @zalloc(i64 1024), !dbg !875
  store i8* %9, i8** %4, align 8, !dbg !876
  %10 = load i8*, i8** %4, align 8, !dbg !877
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !878
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 5, !dbg !879
  %13 = load i8*, i8** %12, align 8, !dbg !879
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %10, i64 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* %13) #8, !dbg !880
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !881
  %16 = getelementptr inbounds %struct._thread, %struct._thread* %15, i32 0, i32 6, !dbg !883
  %17 = bitcast %union.anon* %16 to i32*, !dbg !884
  %18 = load i32, i32* %17, align 8, !dbg !884
  %19 = load i8*, i8** %4, align 8, !dbg !885
  %20 = load i8*, i8** %4, align 8, !dbg !886
  %21 = call i64 @strlen(i8* %20) #9, !dbg !887
  %22 = call i64 @send(i32 %18, i8* %19, i64 %21, i32 0), !dbg !888
  %23 = icmp eq i64 %22, -1, !dbg !890
  br i1 %23, label %24, label %27, !dbg !891

; <label>:24:                                     ; preds = %1
  %25 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !892
  %26 = getelementptr inbounds %struct._smtp, %struct._smtp* %25, i32 0, i32 1, !dbg !893
  store i32 11, i32* %26, align 4, !dbg !894
  br label %27, !dbg !892

; <label>:27:                                     ; preds = %24, %1
  %28 = load i8*, i8** %4, align 8, !dbg !895
  call void @free(i8* %28) #8, !dbg !896
  store i8* null, i8** %4, align 8, !dbg !897
  ret i32 0, !dbg !898
}

; Function Attrs: nounwind uwtable
define internal i32 @mail_code(%struct._thread*, i32) #0 !dbg !899 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !900, metadata !679), !dbg !901
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !902, metadata !679), !dbg !903
  call void @llvm.dbg.declare(metadata %struct._smtp** %5, metadata !904, metadata !679), !dbg !905
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !906
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !907
  %8 = load i8*, i8** %7, align 8, !dbg !907
  %9 = bitcast i8* %8 to %struct._smtp*, !dbg !908
  store %struct._smtp* %9, %struct._smtp** %5, align 8, !dbg !905
  %10 = load i32, i32* %4, align 4, !dbg !909
  %11 = icmp eq i32 %10, 250, !dbg !911
  br i1 %11, label %12, label %17, !dbg !912

; <label>:12:                                     ; preds = %2
  %13 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !913
  %14 = getelementptr inbounds %struct._smtp, %struct._smtp* %13, i32 0, i32 1, !dbg !915
  %15 = load i32, i32* %14, align 4, !dbg !916
  %16 = add nsw i32 %15, 1, !dbg !916
  store i32 %16, i32* %14, align 4, !dbg !916
  br label %24, !dbg !917

; <label>:17:                                     ; preds = %2
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !918
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 6, !dbg !920
  %20 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %19), !dbg !921
  %21 = load i32, i32* %4, align 4, !dbg !922
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i32 0, i32 0), i8* %20, i32 %21), !dbg !923
  %22 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !924
  %23 = getelementptr inbounds %struct._smtp, %struct._smtp* %22, i32 0, i32 1, !dbg !925
  store i32 11, i32* %23, align 4, !dbg !926
  br label %24

; <label>:24:                                     ; preds = %17, %12
  ret i32 0, !dbg !927
}

; Function Attrs: nounwind uwtable
define internal i32 @rcpt_cmd(%struct._thread*) #0 !dbg !928 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !929, metadata !679), !dbg !930
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !931, metadata !679), !dbg !932
  %6 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !933
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !934
  %8 = load i8*, i8** %7, align 8, !dbg !934
  %9 = bitcast i8* %8 to %struct._smtp*, !dbg !935
  store %struct._smtp* %9, %struct._smtp** %3, align 8, !dbg !932
  call void @llvm.dbg.declare(metadata i8** %4, metadata !936, metadata !679), !dbg !937
  call void @llvm.dbg.declare(metadata i8** %5, metadata !938, metadata !679), !dbg !939
  %10 = call i8* @zalloc(i64 1024), !dbg !940
  store i8* %10, i8** %4, align 8, !dbg !941
  %11 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !942
  %12 = call i8* @fetch_next_email(%struct._smtp* %11), !dbg !943
  store i8* %12, i8** %5, align 8, !dbg !944
  %13 = load i8*, i8** %4, align 8, !dbg !945
  %14 = load i8*, i8** %5, align 8, !dbg !946
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %13, i64 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8* %14) #8, !dbg !947
  %16 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !948
  %17 = getelementptr inbounds %struct._thread, %struct._thread* %16, i32 0, i32 6, !dbg !950
  %18 = bitcast %union.anon* %17 to i32*, !dbg !951
  %19 = load i32, i32* %18, align 8, !dbg !951
  %20 = load i8*, i8** %4, align 8, !dbg !952
  %21 = load i8*, i8** %4, align 8, !dbg !953
  %22 = call i64 @strlen(i8* %21) #9, !dbg !954
  %23 = call i64 @send(i32 %19, i8* %20, i64 %22, i32 0), !dbg !955
  %24 = icmp eq i64 %23, -1, !dbg !957
  br i1 %24, label %25, label %28, !dbg !958

; <label>:25:                                     ; preds = %1
  %26 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !959
  %27 = getelementptr inbounds %struct._smtp, %struct._smtp* %26, i32 0, i32 1, !dbg !960
  store i32 11, i32* %27, align 4, !dbg !961
  br label %28, !dbg !959

; <label>:28:                                     ; preds = %25, %1
  %29 = load i8*, i8** %4, align 8, !dbg !962
  call void @free(i8* %29) #8, !dbg !963
  store i8* null, i8** %4, align 8, !dbg !964
  ret i32 0, !dbg !965
}

; Function Attrs: nounwind uwtable
define internal i32 @rcpt_code(%struct._thread*, i32) #0 !dbg !966 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._smtp*, align 8
  %6 = alloca i8*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !967, metadata !679), !dbg !968
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !969, metadata !679), !dbg !970
  call void @llvm.dbg.declare(metadata %struct._smtp** %5, metadata !971, metadata !679), !dbg !972
  %7 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !973
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 4, !dbg !974
  %9 = load i8*, i8** %8, align 8, !dbg !974
  %10 = bitcast i8* %9 to %struct._smtp*, !dbg !975
  store %struct._smtp* %10, %struct._smtp** %5, align 8, !dbg !972
  call void @llvm.dbg.declare(metadata i8** %6, metadata !976, metadata !679), !dbg !977
  %11 = load i32, i32* %4, align 4, !dbg !978
  %12 = icmp eq i32 %11, 250, !dbg !980
  br i1 %12, label %13, label %28, !dbg !981

; <label>:13:                                     ; preds = %2
  %14 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !982
  %15 = getelementptr inbounds %struct._smtp, %struct._smtp* %14, i32 0, i32 2, !dbg !984
  %16 = load i32, i32* %15, align 8, !dbg !985
  %17 = add i32 %16, 1, !dbg !985
  store i32 %17, i32* %15, align 8, !dbg !985
  %18 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !986
  %19 = call i8* @fetch_next_email(%struct._smtp* %18), !dbg !987
  store i8* %19, i8** %6, align 8, !dbg !988
  %20 = load i8*, i8** %6, align 8, !dbg !989
  %21 = icmp ne i8* %20, null, !dbg !989
  br i1 %21, label %27, label %22, !dbg !991

; <label>:22:                                     ; preds = %13
  %23 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !992
  %24 = getelementptr inbounds %struct._smtp, %struct._smtp* %23, i32 0, i32 1, !dbg !993
  %25 = load i32, i32* %24, align 4, !dbg !994
  %26 = add nsw i32 %25, 1, !dbg !994
  store i32 %26, i32* %24, align 4, !dbg !994
  br label %27, !dbg !992

; <label>:27:                                     ; preds = %22, %13
  br label %35, !dbg !995

; <label>:28:                                     ; preds = %2
  %29 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !996
  %30 = getelementptr inbounds %struct._data, %struct._data* %29, i32 0, i32 6, !dbg !998
  %31 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %30), !dbg !999
  %32 = load i32, i32* %4, align 4, !dbg !1000
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i32 0, i32 0), i8* %31, i32 %32), !dbg !1001
  %33 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !1002
  %34 = getelementptr inbounds %struct._smtp, %struct._smtp* %33, i32 0, i32 1, !dbg !1003
  store i32 11, i32* %34, align 4, !dbg !1004
  br label %35

; <label>:35:                                     ; preds = %28, %27
  ret i32 0, !dbg !1005
}

; Function Attrs: nounwind uwtable
define internal i32 @data_cmd(%struct._thread*) #0 !dbg !1006 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1007, metadata !679), !dbg !1008
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !1009, metadata !679), !dbg !1010
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1011
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !1012
  %6 = load i8*, i8** %5, align 8, !dbg !1012
  %7 = bitcast i8* %6 to %struct._smtp*, !dbg !1013
  store %struct._smtp* %7, %struct._smtp** %3, align 8, !dbg !1010
  %8 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1014
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 6, !dbg !1016
  %10 = bitcast %union.anon* %9 to i32*, !dbg !1017
  %11 = load i32, i32* %10, align 8, !dbg !1017
  %12 = call i64 @send(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i64 6, i32 0), !dbg !1018
  %13 = icmp eq i64 %12, -1, !dbg !1019
  br i1 %13, label %14, label %17, !dbg !1020

; <label>:14:                                     ; preds = %1
  %15 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1021
  %16 = getelementptr inbounds %struct._smtp, %struct._smtp* %15, i32 0, i32 1, !dbg !1022
  store i32 11, i32* %16, align 4, !dbg !1023
  br label %17, !dbg !1021

; <label>:17:                                     ; preds = %14, %1
  ret i32 0, !dbg !1024
}

; Function Attrs: nounwind uwtable
define internal i32 @data_code(%struct._thread*, i32) #0 !dbg !1025 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1026, metadata !679), !dbg !1027
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1028, metadata !679), !dbg !1029
  call void @llvm.dbg.declare(metadata %struct._smtp** %5, metadata !1030, metadata !679), !dbg !1031
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1032
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !1033
  %8 = load i8*, i8** %7, align 8, !dbg !1033
  %9 = bitcast i8* %8 to %struct._smtp*, !dbg !1034
  store %struct._smtp* %9, %struct._smtp** %5, align 8, !dbg !1031
  %10 = load i32, i32* %4, align 4, !dbg !1035
  %11 = icmp eq i32 %10, 354, !dbg !1037
  br i1 %11, label %12, label %17, !dbg !1038

; <label>:12:                                     ; preds = %2
  %13 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !1039
  %14 = getelementptr inbounds %struct._smtp, %struct._smtp* %13, i32 0, i32 1, !dbg !1041
  %15 = load i32, i32* %14, align 4, !dbg !1042
  %16 = add nsw i32 %15, 1, !dbg !1042
  store i32 %16, i32* %14, align 4, !dbg !1042
  br label %24, !dbg !1043

; <label>:17:                                     ; preds = %2
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1044
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 6, !dbg !1046
  %20 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %19), !dbg !1047
  %21 = load i32, i32* %4, align 4, !dbg !1048
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.28, i32 0, i32 0), i8* %20, i32 %21), !dbg !1049
  %22 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !1050
  %23 = getelementptr inbounds %struct._smtp, %struct._smtp* %22, i32 0, i32 1, !dbg !1051
  store i32 11, i32* %23, align 4, !dbg !1052
  br label %24

; <label>:24:                                     ; preds = %17, %12
  ret i32 0, !dbg !1053
}

; Function Attrs: nounwind uwtable
define internal i32 @body_cmd(%struct._thread*) #0 !dbg !1054 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.tm*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1055, metadata !679), !dbg !1056
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !1057, metadata !679), !dbg !1058
  %8 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1059
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 4, !dbg !1060
  %10 = load i8*, i8** %9, align 8, !dbg !1060
  %11 = bitcast i8* %10 to %struct._smtp*, !dbg !1061
  store %struct._smtp* %11, %struct._smtp** %3, align 8, !dbg !1058
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1062, metadata !679), !dbg !1063
  call void @llvm.dbg.declare(metadata [80 x i8]* %5, metadata !1064, metadata !679), !dbg !1068
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1069, metadata !679), !dbg !1072
  call void @llvm.dbg.declare(metadata %struct.tm** %7, metadata !1073, metadata !679), !dbg !1090
  %12 = call i8* @zalloc(i64 1024), !dbg !1091
  store i8* %12, i8** %4, align 8, !dbg !1092
  %13 = call i64 @time(i64* %6) #8, !dbg !1093
  %14 = call %struct.tm* @localtime(i64* %6) #8, !dbg !1094
  store %struct.tm* %14, %struct.tm** %7, align 8, !dbg !1095
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !1096
  %16 = load %struct.tm*, %struct.tm** %7, align 8, !dbg !1097
  %17 = call i64 @strftime(i8* %15, i64 80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), %struct.tm* %16) #8, !dbg !1098
  %18 = load i8*, i8** %4, align 8, !dbg !1099
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i32 0, i32 0, !dbg !1100
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1101
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 5, !dbg !1102
  %22 = load i8*, i8** %21, align 8, !dbg !1102
  %23 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1103
  %24 = getelementptr inbounds %struct._smtp, %struct._smtp* %23, i32 0, i32 3, !dbg !1104
  %25 = load i8*, i8** %24, align 8, !dbg !1104
  %26 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1105
  %27 = getelementptr inbounds %struct._smtp, %struct._smtp* %26, i32 0, i32 6, !dbg !1106
  %28 = load i8*, i8** %27, align 8, !dbg !1106
  %29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 1024, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.30, i32 0, i32 0), i8* %19, i8* %22, i8* %25, i8* %28) #8, !dbg !1107
  %30 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1108
  %31 = getelementptr inbounds %struct._thread, %struct._thread* %30, i32 0, i32 6, !dbg !1110
  %32 = bitcast %union.anon* %31 to i32*, !dbg !1111
  %33 = load i32, i32* %32, align 8, !dbg !1111
  %34 = load i8*, i8** %4, align 8, !dbg !1112
  %35 = load i8*, i8** %4, align 8, !dbg !1113
  %36 = call i64 @strlen(i8* %35) #9, !dbg !1114
  %37 = call i64 @send(i32 %33, i8* %34, i64 %36, i32 0), !dbg !1115
  %38 = icmp eq i64 %37, -1, !dbg !1117
  br i1 %38, label %39, label %42, !dbg !1118

; <label>:39:                                     ; preds = %1
  %40 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1119
  %41 = getelementptr inbounds %struct._smtp, %struct._smtp* %40, i32 0, i32 1, !dbg !1120
  store i32 11, i32* %41, align 4, !dbg !1121
  br label %42, !dbg !1119

; <label>:42:                                     ; preds = %39, %1
  %43 = load i8*, i8** %4, align 8, !dbg !1122
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 1024, i32 1, i1 false), !dbg !1123
  %44 = load i8*, i8** %4, align 8, !dbg !1124
  %45 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1125
  %46 = getelementptr inbounds %struct._smtp, %struct._smtp* %45, i32 0, i32 4, !dbg !1126
  %47 = load i8*, i8** %46, align 8, !dbg !1126
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %44, i64 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* %47) #8, !dbg !1127
  %49 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1128
  %50 = getelementptr inbounds %struct._thread, %struct._thread* %49, i32 0, i32 6, !dbg !1130
  %51 = bitcast %union.anon* %50 to i32*, !dbg !1131
  %52 = load i32, i32* %51, align 8, !dbg !1131
  %53 = load i8*, i8** %4, align 8, !dbg !1132
  %54 = load i8*, i8** %4, align 8, !dbg !1133
  %55 = call i64 @strlen(i8* %54) #9, !dbg !1134
  %56 = call i64 @send(i32 %52, i8* %53, i64 %55, i32 0), !dbg !1135
  %57 = icmp eq i64 %56, -1, !dbg !1137
  br i1 %57, label %58, label %61, !dbg !1138

; <label>:58:                                     ; preds = %42
  %59 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1139
  %60 = getelementptr inbounds %struct._smtp, %struct._smtp* %59, i32 0, i32 1, !dbg !1140
  store i32 11, i32* %60, align 4, !dbg !1141
  br label %61, !dbg !1139

; <label>:61:                                     ; preds = %58, %42
  %62 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1142
  %63 = getelementptr inbounds %struct._thread, %struct._thread* %62, i32 0, i32 6, !dbg !1144
  %64 = bitcast %union.anon* %63 to i32*, !dbg !1145
  %65 = load i32, i32* %64, align 8, !dbg !1145
  %66 = call i64 @send(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i64 5, i32 0), !dbg !1146
  %67 = icmp eq i64 %66, -1, !dbg !1147
  br i1 %67, label %68, label %71, !dbg !1148

; <label>:68:                                     ; preds = %61
  %69 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1149
  %70 = getelementptr inbounds %struct._smtp, %struct._smtp* %69, i32 0, i32 1, !dbg !1150
  store i32 11, i32* %70, align 4, !dbg !1151
  br label %71, !dbg !1149

; <label>:71:                                     ; preds = %68, %61
  %72 = load i8*, i8** %4, align 8, !dbg !1152
  call void @free(i8* %72) #8, !dbg !1153
  store i8* null, i8** %4, align 8, !dbg !1154
  ret i32 0, !dbg !1155
}

; Function Attrs: nounwind uwtable
define internal i32 @body_code(%struct._thread*, i32) #0 !dbg !1156 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1157, metadata !679), !dbg !1158
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1159, metadata !679), !dbg !1160
  call void @llvm.dbg.declare(metadata %struct._smtp** %5, metadata !1161, metadata !679), !dbg !1162
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1163
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !1164
  %8 = load i8*, i8** %7, align 8, !dbg !1164
  %9 = bitcast i8* %8 to %struct._smtp*, !dbg !1165
  store %struct._smtp* %9, %struct._smtp** %5, align 8, !dbg !1162
  %10 = load i32, i32* %4, align 4, !dbg !1166
  %11 = icmp eq i32 %10, 250, !dbg !1168
  br i1 %11, label %12, label %17, !dbg !1169

; <label>:12:                                     ; preds = %2
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0)), !dbg !1170
  %13 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !1172
  %14 = getelementptr inbounds %struct._smtp, %struct._smtp* %13, i32 0, i32 1, !dbg !1173
  %15 = load i32, i32* %14, align 4, !dbg !1174
  %16 = add nsw i32 %15, 1, !dbg !1174
  store i32 %16, i32* %14, align 4, !dbg !1174
  br label %24, !dbg !1175

; <label>:17:                                     ; preds = %2
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1176
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 6, !dbg !1178
  %20 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %19), !dbg !1179
  %21 = load i32, i32* %4, align 4, !dbg !1180
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.34, i32 0, i32 0), i8* %20, i32 %21), !dbg !1181
  %22 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !1182
  %23 = getelementptr inbounds %struct._smtp, %struct._smtp* %22, i32 0, i32 1, !dbg !1183
  store i32 11, i32* %23, align 4, !dbg !1184
  br label %24

; <label>:24:                                     ; preds = %17, %12
  ret i32 0, !dbg !1185
}

; Function Attrs: nounwind uwtable
define internal i32 @quit_cmd(%struct._thread*) #0 !dbg !1186 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1187, metadata !679), !dbg !1188
  call void @llvm.dbg.declare(metadata %struct._smtp** %3, metadata !1189, metadata !679), !dbg !1190
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1191
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !1192
  %6 = load i8*, i8** %5, align 8, !dbg !1192
  %7 = bitcast i8* %6 to %struct._smtp*, !dbg !1193
  store %struct._smtp* %7, %struct._smtp** %3, align 8, !dbg !1190
  %8 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1194
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 6, !dbg !1196
  %10 = bitcast %union.anon* %9 to i32*, !dbg !1197
  %11 = load i32, i32* %10, align 8, !dbg !1197
  %12 = call i64 @send(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i64 6, i32 0), !dbg !1198
  %13 = icmp eq i64 %12, -1, !dbg !1199
  br i1 %13, label %14, label %17, !dbg !1200

; <label>:14:                                     ; preds = %1
  %15 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1201
  %16 = getelementptr inbounds %struct._smtp, %struct._smtp* %15, i32 0, i32 1, !dbg !1202
  store i32 11, i32* %16, align 4, !dbg !1203
  br label %22, !dbg !1201

; <label>:17:                                     ; preds = %1
  %18 = load %struct._smtp*, %struct._smtp** %3, align 8, !dbg !1204
  %19 = getelementptr inbounds %struct._smtp, %struct._smtp* %18, i32 0, i32 1, !dbg !1205
  %20 = load i32, i32* %19, align 4, !dbg !1206
  %21 = add nsw i32 %20, 1, !dbg !1206
  store i32 %21, i32* %19, align 4, !dbg !1206
  br label %22

; <label>:22:                                     ; preds = %17, %14
  ret i32 0, !dbg !1207
}

; Function Attrs: nounwind uwtable
define internal i32 @quit_code(%struct._thread*, i32) #0 !dbg !1208 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1209, metadata !679), !dbg !1210
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1211, metadata !679), !dbg !1212
  call void @llvm.dbg.declare(metadata %struct._smtp** %5, metadata !1213, metadata !679), !dbg !1214
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1215
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !1216
  %8 = load i8*, i8** %7, align 8, !dbg !1216
  %9 = bitcast i8* %8 to %struct._smtp*, !dbg !1217
  store %struct._smtp* %9, %struct._smtp** %5, align 8, !dbg !1214
  %10 = load %struct._smtp*, %struct._smtp** %5, align 8, !dbg !1218
  call void @free_smtp_all(%struct._smtp* %10), !dbg !1219
  %11 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1220
  call void @thread_close_fd(%struct._thread* %11), !dbg !1221
  ret i32 0, !dbg !1222
}

; Function Attrs: nounwind uwtable
define void @smtp_alert(i32, i8*, i8*, i8*) #0 !dbg !1223 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._smtp*, align 8
  %10 = alloca %struct._vrrp_t*, align 8
  %11 = alloca %struct._vrrp_sgroup*, align 8
  %12 = alloca %struct._checker*, align 8
  %13 = alloca %struct._virtual_server*, align 8
  %14 = alloca %struct._smtp_rs*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1227, metadata !679), !dbg !1228
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1229, metadata !679), !dbg !1230
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1231, metadata !679), !dbg !1232
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1233, metadata !679), !dbg !1234
  call void @llvm.dbg.declare(metadata %struct._smtp** %9, metadata !1235, metadata !679), !dbg !1236
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %10, metadata !1237, metadata !679), !dbg !1238
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %11, metadata !1239, metadata !679), !dbg !1240
  call void @llvm.dbg.declare(metadata %struct._checker** %12, metadata !1241, metadata !679), !dbg !1242
  call void @llvm.dbg.declare(metadata %struct._virtual_server** %13, metadata !1243, metadata !679), !dbg !1244
  call void @llvm.dbg.declare(metadata %struct._smtp_rs** %14, metadata !1245, metadata !679), !dbg !1246
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1247
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 9, !dbg !1249
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !1249
  %18 = icmp eq %struct._list* %17, null, !dbg !1250
  br i1 %18, label %39, label %19, !dbg !1251

; <label>:19:                                     ; preds = %4
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1252
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 9, !dbg !1254
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !1254
  %23 = getelementptr inbounds %struct._list, %struct._list* %22, i32 0, i32 0, !dbg !1255
  %24 = load %struct._element*, %struct._element** %23, align 8, !dbg !1255
  %25 = icmp eq %struct._element* %24, null, !dbg !1256
  br i1 %25, label %26, label %33, !dbg !1257

; <label>:26:                                     ; preds = %19
  %27 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1258
  %28 = getelementptr inbounds %struct._data, %struct._data* %27, i32 0, i32 9, !dbg !1260
  %29 = load %struct._list*, %struct._list** %28, align 8, !dbg !1260
  %30 = getelementptr inbounds %struct._list, %struct._list* %29, i32 0, i32 1, !dbg !1261
  %31 = load %struct._element*, %struct._element** %30, align 8, !dbg !1261
  %32 = icmp eq %struct._element* %31, null, !dbg !1262
  br i1 %32, label %39, label %33, !dbg !1263

; <label>:33:                                     ; preds = %26, %19
  %34 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1264
  %35 = getelementptr inbounds %struct._data, %struct._data* %34, i32 0, i32 6, !dbg !1266
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %35, i32 0, i32 0, !dbg !1267
  %37 = load i16, i16* %36, align 8, !dbg !1267
  %38 = icmp ne i16 %37, 0, !dbg !1264
  br i1 %38, label %40, label %39, !dbg !1268

; <label>:39:                                     ; preds = %33, %26, %4
  br label %203, !dbg !1269

; <label>:40:                                     ; preds = %33
  %41 = call i8* @zalloc(i64 56), !dbg !1270
  %42 = bitcast i8* %41 to %struct._smtp*, !dbg !1271
  store %struct._smtp* %42, %struct._smtp** %9, align 8, !dbg !1272
  %43 = call i8* @zalloc(i64 256), !dbg !1273
  %44 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1274
  %45 = getelementptr inbounds %struct._smtp, %struct._smtp* %44, i32 0, i32 3, !dbg !1275
  store i8* %43, i8** %45, align 8, !dbg !1276
  %46 = call i8* @zalloc(i64 512), !dbg !1277
  %47 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1278
  %48 = getelementptr inbounds %struct._smtp, %struct._smtp* %47, i32 0, i32 4, !dbg !1279
  store i8* %46, i8** %48, align 8, !dbg !1280
  %49 = call i8* @zalloc(i64 1024), !dbg !1281
  %50 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1282
  %51 = getelementptr inbounds %struct._smtp, %struct._smtp* %50, i32 0, i32 5, !dbg !1283
  store i8* %49, i8** %51, align 8, !dbg !1284
  %52 = call i8* @zalloc(i64 1024), !dbg !1285
  %53 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1286
  %54 = getelementptr inbounds %struct._smtp, %struct._smtp* %53, i32 0, i32 6, !dbg !1287
  store i8* %52, i8** %54, align 8, !dbg !1288
  %55 = load i32, i32* %5, align 4, !dbg !1289
  %56 = icmp eq i32 %55, 0, !dbg !1291
  br i1 %56, label %57, label %88, !dbg !1292

; <label>:57:                                     ; preds = %40
  %58 = load i8*, i8** %6, align 8, !dbg !1293
  %59 = bitcast i8* %58 to %struct._checker*, !dbg !1295
  store %struct._checker* %59, %struct._checker** %12, align 8, !dbg !1296
  %60 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1297
  %61 = getelementptr inbounds %struct._smtp, %struct._smtp* %60, i32 0, i32 3, !dbg !1298
  %62 = load i8*, i8** %61, align 8, !dbg !1298
  %63 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1299
  %64 = getelementptr inbounds %struct._data, %struct._data* %63, i32 0, i32 4, !dbg !1300
  %65 = load i8*, i8** %64, align 8, !dbg !1300
  %66 = load %struct._checker*, %struct._checker** %12, align 8, !dbg !1301
  %67 = getelementptr inbounds %struct._checker, %struct._checker* %66, i32 0, i32 5, !dbg !1302
  %68 = load %struct._real_server*, %struct._real_server** %67, align 8, !dbg !1302
  %69 = getelementptr inbounds %struct._real_server, %struct._real_server* %68, i32 0, i32 0, !dbg !1303
  %70 = load %struct._checker*, %struct._checker** %12, align 8, !dbg !1304
  %71 = getelementptr inbounds %struct._checker, %struct._checker* %70, i32 0, i32 4, !dbg !1305
  %72 = load %struct._virtual_server*, %struct._virtual_server** %71, align 8, !dbg !1305
  %73 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %72, i32 0, i32 6, !dbg !1306
  %74 = load i16, i16* %73, align 2, !dbg !1306
  %75 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %69, i16 zeroext %74), !dbg !1307
  %76 = load %struct._checker*, %struct._checker** %12, align 8, !dbg !1308
  %77 = getelementptr inbounds %struct._checker, %struct._checker* %76, i32 0, i32 4, !dbg !1309
  %78 = load %struct._virtual_server*, %struct._virtual_server** %77, align 8, !dbg !1309
  %79 = call i8* @format_vs(%struct._virtual_server* %78), !dbg !1310
  %80 = load %struct._checker*, %struct._checker** %12, align 8, !dbg !1311
  %81 = getelementptr inbounds %struct._checker, %struct._checker* %80, i32 0, i32 5, !dbg !1312
  %82 = load %struct._real_server*, %struct._real_server** %81, align 8, !dbg !1312
  %83 = getelementptr inbounds %struct._real_server, %struct._real_server* %82, i32 0, i32 16, !dbg !1313
  %84 = load i8, i8* %83, align 4, !dbg !1313
  %85 = trunc i8 %84 to i1, !dbg !1313
  %86 = select i1 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), !dbg !1311
  %87 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %62, i64 256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i8* %65, i8* %75, i8* %79, i8* %86) #8, !dbg !1314
  br label %191, !dbg !1315

; <label>:88:                                     ; preds = %40
  %89 = load i32, i32* %5, align 4, !dbg !1316
  %90 = icmp eq i32 %89, 1, !dbg !1318
  br i1 %90, label %91, label %104, !dbg !1319

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %6, align 8, !dbg !1320
  %93 = bitcast i8* %92 to %struct._virtual_server*, !dbg !1322
  store %struct._virtual_server* %93, %struct._virtual_server** %13, align 8, !dbg !1323
  %94 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1324
  %95 = getelementptr inbounds %struct._smtp, %struct._smtp* %94, i32 0, i32 3, !dbg !1325
  %96 = load i8*, i8** %95, align 8, !dbg !1325
  %97 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1326
  %98 = getelementptr inbounds %struct._data, %struct._data* %97, i32 0, i32 4, !dbg !1327
  %99 = load i8*, i8** %98, align 8, !dbg !1327
  %100 = load %struct._virtual_server*, %struct._virtual_server** %13, align 8, !dbg !1328
  %101 = call i8* @format_vs(%struct._virtual_server* %100), !dbg !1329
  %102 = load i8*, i8** %7, align 8, !dbg !1330
  %103 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %96, i64 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* %99, i8* %101, i8* %102) #8, !dbg !1331
  br label %190, !dbg !1332

; <label>:104:                                    ; preds = %88
  %105 = load i32, i32* %5, align 4, !dbg !1333
  %106 = icmp eq i32 %105, 2, !dbg !1335
  br i1 %106, label %107, label %132, !dbg !1336

; <label>:107:                                    ; preds = %104
  %108 = load i8*, i8** %6, align 8, !dbg !1337
  %109 = bitcast i8* %108 to %struct._smtp_rs*, !dbg !1339
  store %struct._smtp_rs* %109, %struct._smtp_rs** %14, align 8, !dbg !1340
  %110 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1341
  %111 = getelementptr inbounds %struct._smtp, %struct._smtp* %110, i32 0, i32 3, !dbg !1342
  %112 = load i8*, i8** %111, align 8, !dbg !1342
  %113 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1343
  %114 = getelementptr inbounds %struct._data, %struct._data* %113, i32 0, i32 4, !dbg !1344
  %115 = load i8*, i8** %114, align 8, !dbg !1344
  %116 = load %struct._smtp_rs*, %struct._smtp_rs** %14, align 8, !dbg !1345
  %117 = getelementptr inbounds %struct._smtp_rs, %struct._smtp_rs* %116, i32 0, i32 0, !dbg !1346
  %118 = load %struct._real_server*, %struct._real_server** %117, align 8, !dbg !1346
  %119 = getelementptr inbounds %struct._real_server, %struct._real_server* %118, i32 0, i32 0, !dbg !1347
  %120 = load %struct._smtp_rs*, %struct._smtp_rs** %14, align 8, !dbg !1348
  %121 = getelementptr inbounds %struct._smtp_rs, %struct._smtp_rs* %120, i32 0, i32 1, !dbg !1349
  %122 = load %struct._virtual_server*, %struct._virtual_server** %121, align 8, !dbg !1349
  %123 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %122, i32 0, i32 6, !dbg !1350
  %124 = load i16, i16* %123, align 2, !dbg !1350
  %125 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %119, i16 zeroext %124), !dbg !1351
  %126 = load %struct._smtp_rs*, %struct._smtp_rs** %14, align 8, !dbg !1352
  %127 = getelementptr inbounds %struct._smtp_rs, %struct._smtp_rs* %126, i32 0, i32 1, !dbg !1353
  %128 = load %struct._virtual_server*, %struct._virtual_server** %127, align 8, !dbg !1353
  %129 = call i8* @format_vs(%struct._virtual_server* %128), !dbg !1354
  %130 = load i8*, i8** %7, align 8, !dbg !1355
  %131 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %112, i64 256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), i8* %115, i8* %125, i8* %129, i8* %130) #8, !dbg !1356
  br label %189, !dbg !1357

; <label>:132:                                    ; preds = %104
  %133 = load i32, i32* %5, align 4, !dbg !1358
  %134 = icmp eq i32 %133, 4, !dbg !1360
  br i1 %134, label %135, label %149, !dbg !1361

; <label>:135:                                    ; preds = %132
  %136 = load i8*, i8** %6, align 8, !dbg !1362
  %137 = bitcast i8* %136 to %struct._vrrp_t*, !dbg !1364
  store %struct._vrrp_t* %137, %struct._vrrp_t** %10, align 8, !dbg !1365
  %138 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1366
  %139 = getelementptr inbounds %struct._smtp, %struct._smtp* %138, i32 0, i32 3, !dbg !1367
  %140 = load i8*, i8** %139, align 8, !dbg !1367
  %141 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1368
  %142 = getelementptr inbounds %struct._data, %struct._data* %141, i32 0, i32 4, !dbg !1369
  %143 = load i8*, i8** %142, align 8, !dbg !1369
  %144 = load %struct._vrrp_t*, %struct._vrrp_t** %10, align 8, !dbg !1370
  %145 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %144, i32 0, i32 1, !dbg !1371
  %146 = load i8*, i8** %145, align 8, !dbg !1371
  %147 = load i8*, i8** %7, align 8, !dbg !1372
  %148 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %140, i64 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %143, i8* %146, i8* %147) #8, !dbg !1373
  br label %188, !dbg !1374

; <label>:149:                                    ; preds = %132
  %150 = load i32, i32* %5, align 4, !dbg !1375
  %151 = icmp eq i32 %150, 3, !dbg !1378
  br i1 %151, label %152, label %166, !dbg !1375

; <label>:152:                                    ; preds = %149
  %153 = load i8*, i8** %6, align 8, !dbg !1379
  %154 = bitcast i8* %153 to %struct._vrrp_sgroup*, !dbg !1381
  store %struct._vrrp_sgroup* %154, %struct._vrrp_sgroup** %11, align 8, !dbg !1382
  %155 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1383
  %156 = getelementptr inbounds %struct._smtp, %struct._smtp* %155, i32 0, i32 3, !dbg !1384
  %157 = load i8*, i8** %156, align 8, !dbg !1384
  %158 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1385
  %159 = getelementptr inbounds %struct._data, %struct._data* %158, i32 0, i32 4, !dbg !1386
  %160 = load i8*, i8** %159, align 8, !dbg !1386
  %161 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %11, align 8, !dbg !1387
  %162 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %161, i32 0, i32 0, !dbg !1388
  %163 = load i8*, i8** %162, align 8, !dbg !1388
  %164 = load i8*, i8** %7, align 8, !dbg !1389
  %165 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %157, i64 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* %160, i8* %163, i8* %164) #8, !dbg !1390
  br label %187, !dbg !1391

; <label>:166:                                    ; preds = %149
  %167 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1392
  %168 = getelementptr inbounds %struct._data, %struct._data* %167, i32 0, i32 4, !dbg !1394
  %169 = load i8*, i8** %168, align 8, !dbg !1394
  %170 = icmp ne i8* %169, null, !dbg !1392
  br i1 %170, label %171, label %180, !dbg !1395

; <label>:171:                                    ; preds = %166
  %172 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1396
  %173 = getelementptr inbounds %struct._smtp, %struct._smtp* %172, i32 0, i32 3, !dbg !1397
  %174 = load i8*, i8** %173, align 8, !dbg !1397
  %175 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1398
  %176 = getelementptr inbounds %struct._data, %struct._data* %175, i32 0, i32 4, !dbg !1399
  %177 = load i8*, i8** %176, align 8, !dbg !1399
  %178 = load i8*, i8** %7, align 8, !dbg !1400
  %179 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %174, i64 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %177, i8* %178) #8, !dbg !1401
  br label %186, !dbg !1401

; <label>:180:                                    ; preds = %166
  %181 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1402
  %182 = getelementptr inbounds %struct._smtp, %struct._smtp* %181, i32 0, i32 3, !dbg !1403
  %183 = load i8*, i8** %182, align 8, !dbg !1403
  %184 = load i8*, i8** %7, align 8, !dbg !1404
  %185 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %183, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %184) #8, !dbg !1405
  br label %186

; <label>:186:                                    ; preds = %180, %171
  br label %187

; <label>:187:                                    ; preds = %186, %152
  br label %188

; <label>:188:                                    ; preds = %187, %135
  br label %189

; <label>:189:                                    ; preds = %188, %107
  br label %190

; <label>:190:                                    ; preds = %189, %91
  br label %191

; <label>:191:                                    ; preds = %190, %57
  %192 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1406
  %193 = getelementptr inbounds %struct._smtp, %struct._smtp* %192, i32 0, i32 4, !dbg !1407
  %194 = load i8*, i8** %193, align 8, !dbg !1407
  %195 = load i8*, i8** %8, align 8, !dbg !1408
  %196 = call i8* @strncpy(i8* %194, i8* %195, i64 511) #8, !dbg !1409
  %197 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1410
  %198 = getelementptr inbounds %struct._smtp, %struct._smtp* %197, i32 0, i32 4, !dbg !1411
  %199 = load i8*, i8** %198, align 8, !dbg !1411
  %200 = getelementptr inbounds i8, i8* %199, i64 511, !dbg !1410
  store i8 0, i8* %200, align 1, !dbg !1412
  %201 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1413
  call void @build_to_header_rcpt_addrs(%struct._smtp* %201), !dbg !1414
  %202 = load %struct._smtp*, %struct._smtp** %9, align 8, !dbg !1415
  call void @smtp_connect(%struct._smtp* %202), !dbg !1416
  br label %203, !dbg !1417

; <label>:203:                                    ; preds = %191, %39
  ret void, !dbg !1418
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i8* @inet_sockaddrtotrio(%struct.sockaddr_storage*, i16 zeroext) #2

declare i8* @format_vs(%struct._virtual_server*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @build_to_header_rcpt_addrs(%struct._smtp*) #0 !dbg !1420 {
  %2 = alloca %struct._smtp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._smtp* %0, %struct._smtp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._smtp** %2, metadata !1423, metadata !679), !dbg !1424
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1425, metadata !679), !dbg !1426
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1427, metadata !679), !dbg !1428
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1429, metadata !679), !dbg !1430
  store i64 1023, i64* %5, align 8, !dbg !1430
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1431, metadata !679), !dbg !1432
  %7 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1433
  %8 = icmp eq %struct._smtp* %7, null, !dbg !1435
  br i1 %8, label %9, label %10, !dbg !1436

; <label>:9:                                      ; preds = %1
  br label %72, !dbg !1437

; <label>:10:                                     ; preds = %1
  %11 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1438
  %12 = getelementptr inbounds %struct._smtp, %struct._smtp* %11, i32 0, i32 6, !dbg !1439
  %13 = load i8*, i8** %12, align 8, !dbg !1439
  store i8* %13, i8** %4, align 8, !dbg !1440
  %14 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1441
  %15 = getelementptr inbounds %struct._smtp, %struct._smtp* %14, i32 0, i32 2, !dbg !1442
  store i32 0, i32* %15, align 8, !dbg !1443
  br label %16, !dbg !1444

; <label>:16:                                     ; preds = %10, %58
  %17 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1445
  %18 = call i8* @fetch_next_email(%struct._smtp* %17), !dbg !1447
  store i8* %18, i8** %3, align 8, !dbg !1448
  %19 = load i8*, i8** %3, align 8, !dbg !1449
  %20 = icmp eq i8* %19, null, !dbg !1451
  br i1 %20, label %21, label %22, !dbg !1452

; <label>:21:                                     ; preds = %16
  br label %69, !dbg !1453

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %3, align 8, !dbg !1454
  %24 = call i64 @strlen(i8* %23) #9, !dbg !1455
  store i64 %24, i64* %6, align 8, !dbg !1456
  %25 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1457
  %26 = getelementptr inbounds %struct._smtp, %struct._smtp* %25, i32 0, i32 2, !dbg !1459
  %27 = load i32, i32* %26, align 8, !dbg !1459
  %28 = icmp ne i32 %27, 0, !dbg !1457
  br i1 %28, label %35, label %29, !dbg !1460

; <label>:29:                                     ; preds = %22
  %30 = load i64, i64* %5, align 8, !dbg !1461
  %31 = load i64, i64* %6, align 8, !dbg !1464
  %32 = icmp ult i64 %30, %31, !dbg !1465
  br i1 %32, label %33, label %34, !dbg !1466

; <label>:33:                                     ; preds = %29
  br label %69, !dbg !1467

; <label>:34:                                     ; preds = %29
  br label %48, !dbg !1468

; <label>:35:                                     ; preds = %22
  %36 = load i64, i64* %5, align 8, !dbg !1469
  %37 = load i64, i64* %6, align 8, !dbg !1472
  %38 = add i64 2, %37, !dbg !1473
  %39 = icmp ult i64 %36, %38, !dbg !1474
  br i1 %39, label %40, label %41, !dbg !1475

; <label>:40:                                     ; preds = %35
  br label %69, !dbg !1476

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %4, align 8, !dbg !1477
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !1477
  store i8* %43, i8** %4, align 8, !dbg !1477
  store i8 44, i8* %42, align 1, !dbg !1478
  %44 = load i8*, i8** %4, align 8, !dbg !1479
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !1479
  store i8* %45, i8** %4, align 8, !dbg !1479
  store i8 32, i8* %44, align 1, !dbg !1480
  %46 = load i64, i64* %5, align 8, !dbg !1481
  %47 = sub i64 %46, 2, !dbg !1481
  store i64 %47, i64* %5, align 8, !dbg !1481
  br label %48

; <label>:48:                                     ; preds = %41, %34
  %49 = load i8*, i8** %4, align 8, !dbg !1482
  %50 = load i64, i64* %6, align 8, !dbg !1484
  %51 = add i64 %50, 1, !dbg !1485
  %52 = load i8*, i8** %3, align 8, !dbg !1486
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %49, i64 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %52) #8, !dbg !1487
  %54 = load i64, i64* %6, align 8, !dbg !1488
  %55 = trunc i64 %54 to i32, !dbg !1489
  %56 = icmp ne i32 %53, %55, !dbg !1490
  br i1 %56, label %57, label %58, !dbg !1491

; <label>:57:                                     ; preds = %48
  br label %69, !dbg !1492

; <label>:58:                                     ; preds = %48
  %59 = load i64, i64* %6, align 8, !dbg !1494
  %60 = load i8*, i8** %4, align 8, !dbg !1495
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !1495
  store i8* %61, i8** %4, align 8, !dbg !1495
  %62 = load i64, i64* %6, align 8, !dbg !1496
  %63 = load i64, i64* %5, align 8, !dbg !1497
  %64 = sub i64 %63, %62, !dbg !1497
  store i64 %64, i64* %5, align 8, !dbg !1497
  %65 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1498
  %66 = getelementptr inbounds %struct._smtp, %struct._smtp* %65, i32 0, i32 2, !dbg !1499
  %67 = load i32, i32* %66, align 8, !dbg !1500
  %68 = add i32 %67, 1, !dbg !1500
  store i32 %68, i32* %66, align 8, !dbg !1500
  br label %16, !dbg !1501, !llvm.loop !1503

; <label>:69:                                     ; preds = %57, %40, %33, %21
  %70 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1504
  %71 = getelementptr inbounds %struct._smtp, %struct._smtp* %70, i32 0, i32 2, !dbg !1505
  store i32 0, i32* %71, align 8, !dbg !1506
  br label %72, !dbg !1507

; <label>:72:                                     ; preds = %69, %9
  ret void, !dbg !1508
}

; Function Attrs: nounwind uwtable
define internal void @smtp_connect(%struct._smtp*) #0 !dbg !1509 {
  %2 = alloca %struct._smtp*, align 8
  %3 = alloca i32, align 4
  store %struct._smtp* %0, %struct._smtp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._smtp** %2, metadata !1510, metadata !679), !dbg !1511
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1512, metadata !679), !dbg !1513
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1514
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 6, !dbg !1516
  %6 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i32 0, i32 0, !dbg !1517
  %7 = load i16, i16* %6, align 8, !dbg !1517
  %8 = zext i16 %7 to i32, !dbg !1514
  %9 = call i32 @socket(i32 %8, i32 526337, i32 6) #8, !dbg !1518
  %10 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1519
  %11 = getelementptr inbounds %struct._smtp, %struct._smtp* %10, i32 0, i32 0, !dbg !1520
  store i32 %9, i32* %11, align 8, !dbg !1521
  %12 = icmp eq i32 %9, -1, !dbg !1522
  br i1 %12, label %13, label %15, !dbg !1523

; <label>:13:                                     ; preds = %1
  %14 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1524
  call void @free_smtp_all(%struct._smtp* %14), !dbg !1526
  br label %34, !dbg !1527

; <label>:15:                                     ; preds = %1
  %16 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1528
  %17 = getelementptr inbounds %struct._smtp, %struct._smtp* %16, i32 0, i32 0, !dbg !1529
  %18 = load i32, i32* %17, align 8, !dbg !1529
  %19 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1530
  %20 = getelementptr inbounds %struct._data, %struct._data* %19, i32 0, i32 6, !dbg !1531
  %21 = call i32 @tcp_connect(i32 %18, %struct.sockaddr_storage* %20), !dbg !1532
  store i32 %21, i32* %3, align 4, !dbg !1533
  %22 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1534
  %23 = load i32, i32* %3, align 4, !dbg !1535
  %24 = zext i32 %23 to i64, !dbg !1536
  %25 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 %24, !dbg !1536
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0, !dbg !1537
  %27 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %26, align 16, !dbg !1537
  %28 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1538
  %29 = bitcast %struct._smtp* %28 to i8*, !dbg !1538
  %30 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1539
  %31 = getelementptr inbounds %struct._smtp, %struct._smtp* %30, i32 0, i32 0, !dbg !1540
  %32 = load i32, i32* %31, align 8, !dbg !1540
  %33 = call %struct._thread* @thread_add_event(%struct._thread_master* %22, i32 (%struct._thread*)* %27, i8* %29, i32 %32), !dbg !1541
  br label %34, !dbg !1542

; <label>:34:                                     ; preds = %15, %13
  ret void, !dbg !1543
}

declare void @log_message(i32, i8*, ...) #2

declare i8* @inet_sockaddrtopair(%struct.sockaddr_storage*) #2

; Function Attrs: nounwind uwtable
define internal void @free_smtp_all(%struct._smtp*) #0 !dbg !1545 {
  %2 = alloca %struct._smtp*, align 8
  store %struct._smtp* %0, %struct._smtp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._smtp** %2, metadata !1546, metadata !679), !dbg !1547
  %3 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1548
  %4 = getelementptr inbounds %struct._smtp, %struct._smtp* %3, i32 0, i32 5, !dbg !1549
  %5 = load i8*, i8** %4, align 8, !dbg !1549
  call void @free(i8* %5) #8, !dbg !1550
  %6 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1551
  %7 = getelementptr inbounds %struct._smtp, %struct._smtp* %6, i32 0, i32 5, !dbg !1552
  store i8* null, i8** %7, align 8, !dbg !1553
  %8 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1554
  %9 = getelementptr inbounds %struct._smtp, %struct._smtp* %8, i32 0, i32 3, !dbg !1555
  %10 = load i8*, i8** %9, align 8, !dbg !1555
  call void @free(i8* %10) #8, !dbg !1556
  %11 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1557
  %12 = getelementptr inbounds %struct._smtp, %struct._smtp* %11, i32 0, i32 3, !dbg !1558
  store i8* null, i8** %12, align 8, !dbg !1559
  %13 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1560
  %14 = getelementptr inbounds %struct._smtp, %struct._smtp* %13, i32 0, i32 4, !dbg !1561
  %15 = load i8*, i8** %14, align 8, !dbg !1561
  call void @free(i8* %15) #8, !dbg !1562
  %16 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1563
  %17 = getelementptr inbounds %struct._smtp, %struct._smtp* %16, i32 0, i32 4, !dbg !1564
  store i8* null, i8** %17, align 8, !dbg !1565
  %18 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1566
  %19 = getelementptr inbounds %struct._smtp, %struct._smtp* %18, i32 0, i32 6, !dbg !1567
  %20 = load i8*, i8** %19, align 8, !dbg !1567
  call void @free(i8* %20) #8, !dbg !1568
  %21 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1569
  %22 = getelementptr inbounds %struct._smtp, %struct._smtp* %21, i32 0, i32 6, !dbg !1570
  store i8* null, i8** %22, align 8, !dbg !1571
  %23 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !1572
  %24 = bitcast %struct._smtp* %23 to i8*, !dbg !1572
  call void @free(i8* %24) #8, !dbg !1573
  store %struct._smtp* null, %struct._smtp** %2, align 8, !dbg !1574
  ret void, !dbg !1575
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tcp_socket_state(%struct._thread*, i32 (%struct._thread*)*) #4 !dbg !1576 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32 (%struct._thread*)*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1579, metadata !679), !dbg !1580
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %4, metadata !1581, metadata !679), !dbg !1582
  %5 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1583
  %6 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %4, align 8, !dbg !1584
  %7 = call i32 @socket_state(%struct._thread* %5, i32 (%struct._thread*)* %6), !dbg !1585
  ret i32 %7, !dbg !1586
}

declare i32 @socket_state(%struct._thread*, i32 (%struct._thread*)*) #2

declare %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @smtp_read_thread(%struct._thread*) #0 !dbg !1587 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._smtp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1588, metadata !679), !dbg !1589
  call void @llvm.dbg.declare(metadata %struct._smtp** %4, metadata !1590, metadata !679), !dbg !1591
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1592, metadata !679), !dbg !1593
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1594, metadata !679), !dbg !1595
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1596, metadata !679), !dbg !1599
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1600, metadata !679), !dbg !1601
  store i32 -1, i32* %8, align 4, !dbg !1601
  %10 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1602
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 4, !dbg !1603
  %12 = load i8*, i8** %11, align 8, !dbg !1603
  %13 = bitcast i8* %12 to %struct._smtp*, !dbg !1604
  store %struct._smtp* %13, %struct._smtp** %4, align 8, !dbg !1605
  %14 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1606
  %15 = getelementptr inbounds %struct._thread, %struct._thread* %14, i32 0, i32 1, !dbg !1608
  %16 = load i32, i32* %15, align 8, !dbg !1608
  %17 = icmp eq i32 %16, 9, !dbg !1609
  br i1 %17, label %18, label %31, !dbg !1610

; <label>:18:                                     ; preds = %1
  %19 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1611
  %20 = getelementptr inbounds %struct._data, %struct._data* %19, i32 0, i32 6, !dbg !1613
  %21 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %20), !dbg !1614
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0), i8* %21), !dbg !1615
  br label %22, !dbg !1616, !llvm.loop !1617

; <label>:22:                                     ; preds = %18
  %23 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1618
  %24 = icmp ne i32 (%struct._thread*, i32)* %23, null, !dbg !1622
  br i1 %24, label %25, label %29, !dbg !1622

; <label>:25:                                     ; preds = %22
  %26 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1623
  %27 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1625
  %28 = call i32 %26(%struct._thread* %27, i32 0), !dbg !1626
  br label %29, !dbg !1626

; <label>:29:                                     ; preds = %25, %22
  br label %30, !dbg !1627

; <label>:30:                                     ; preds = %29
  store i32 -1, i32* %2, align 4, !dbg !1629
  br label %297, !dbg !1629

; <label>:31:                                     ; preds = %1
  %32 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1630
  %33 = getelementptr inbounds %struct._smtp, %struct._smtp* %32, i32 0, i32 5, !dbg !1631
  %34 = load i8*, i8** %33, align 8, !dbg !1631
  store i8* %34, i8** %5, align 8, !dbg !1632
  %35 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1633
  %36 = getelementptr inbounds %struct._thread, %struct._thread* %35, i32 0, i32 6, !dbg !1634
  %37 = bitcast %union.anon* %36 to i32*, !dbg !1635
  %38 = load i32, i32* %37, align 8, !dbg !1635
  %39 = load i8*, i8** %5, align 8, !dbg !1636
  %40 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1637
  %41 = getelementptr inbounds %struct._smtp, %struct._smtp* %40, i32 0, i32 7, !dbg !1638
  %42 = load i64, i64* %41, align 8, !dbg !1638
  %43 = getelementptr inbounds i8, i8* %39, i64 %42, !dbg !1639
  %44 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1640
  %45 = getelementptr inbounds %struct._smtp, %struct._smtp* %44, i32 0, i32 7, !dbg !1641
  %46 = load i64, i64* %45, align 8, !dbg !1641
  %47 = sub i64 512, %46, !dbg !1642
  %48 = call i64 @read(i32 %38, i8* %43, i64 %47), !dbg !1643
  store i64 %48, i64* %7, align 8, !dbg !1644
  %49 = load i64, i64* %7, align 8, !dbg !1645
  %50 = icmp eq i64 %49, -1, !dbg !1647
  br i1 %50, label %51, label %69, !dbg !1648

; <label>:51:                                     ; preds = %31
  %52 = call i32* @__errno_location() #1, !dbg !1649
  %53 = load i32, i32* %52, align 4, !dbg !1652
  %54 = icmp eq i32 %53, 11, !dbg !1653
  br i1 %54, label %55, label %56, !dbg !1654

; <label>:55:                                     ; preds = %51
  br label %116, !dbg !1655

; <label>:56:                                     ; preds = %51
  %57 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1656
  %58 = getelementptr inbounds %struct._data, %struct._data* %57, i32 0, i32 6, !dbg !1657
  %59 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %58), !dbg !1658
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8* %59), !dbg !1659
  br label %60, !dbg !1660, !llvm.loop !1661

; <label>:60:                                     ; preds = %56
  %61 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1662
  %62 = icmp ne i32 (%struct._thread*, i32)* %61, null, !dbg !1666
  br i1 %62, label %63, label %67, !dbg !1666

; <label>:63:                                     ; preds = %60
  %64 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1667
  %65 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1669
  %66 = call i32 %64(%struct._thread* %65, i32 0), !dbg !1670
  br label %67, !dbg !1670

; <label>:67:                                     ; preds = %63, %60
  br label %68, !dbg !1671

; <label>:68:                                     ; preds = %67
  store i32 0, i32* %2, align 4, !dbg !1673
  br label %297, !dbg !1673

; <label>:69:                                     ; preds = %31
  %70 = load i64, i64* %7, align 8, !dbg !1674
  %71 = icmp eq i64 %70, 0, !dbg !1676
  br i1 %71, label %72, label %85, !dbg !1677

; <label>:72:                                     ; preds = %69
  %73 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1678
  %74 = getelementptr inbounds %struct._data, %struct._data* %73, i32 0, i32 6, !dbg !1680
  %75 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %74), !dbg !1681
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i8* %75), !dbg !1682
  br label %76, !dbg !1683, !llvm.loop !1684

; <label>:76:                                     ; preds = %72
  %77 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1685
  %78 = icmp ne i32 (%struct._thread*, i32)* %77, null, !dbg !1689
  br i1 %78, label %79, label %83, !dbg !1689

; <label>:79:                                     ; preds = %76
  %80 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1690
  %81 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1692
  %82 = call i32 %80(%struct._thread* %81, i32 0), !dbg !1693
  br label %83, !dbg !1693

; <label>:83:                                     ; preds = %79, %76
  br label %84, !dbg !1694

; <label>:84:                                     ; preds = %83
  store i32 0, i32* %2, align 4, !dbg !1696
  br label %297, !dbg !1696

; <label>:85:                                     ; preds = %69
  br label %86

; <label>:86:                                     ; preds = %85
  %87 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1697
  %88 = getelementptr inbounds %struct._smtp, %struct._smtp* %87, i32 0, i32 7, !dbg !1699
  %89 = load i64, i64* %88, align 8, !dbg !1699
  %90 = icmp uge i64 %89, 1024, !dbg !1700
  br i1 %90, label %91, label %104, !dbg !1701

; <label>:91:                                     ; preds = %86
  %92 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1702
  %93 = getelementptr inbounds %struct._data, %struct._data* %92, i32 0, i32 6, !dbg !1704
  %94 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %93), !dbg !1705
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i32 0, i32 0), i8* %94), !dbg !1706
  br label %95, !dbg !1707, !llvm.loop !1708

; <label>:95:                                     ; preds = %91
  %96 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1709
  %97 = icmp ne i32 (%struct._thread*, i32)* %96, null, !dbg !1713
  br i1 %97, label %98, label %102, !dbg !1713

; <label>:98:                                     ; preds = %95
  %99 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1714
  %100 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1716
  %101 = call i32 %99(%struct._thread* %100, i32 0), !dbg !1717
  br label %102, !dbg !1717

; <label>:102:                                    ; preds = %98, %95
  br label %103, !dbg !1718

; <label>:103:                                    ; preds = %102
  store i32 0, i32* %2, align 4, !dbg !1720
  br label %297, !dbg !1720

; <label>:104:                                    ; preds = %86
  %105 = load i64, i64* %7, align 8, !dbg !1721
  %106 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1723
  %107 = getelementptr inbounds %struct._smtp, %struct._smtp* %106, i32 0, i32 7, !dbg !1724
  %108 = load i64, i64* %107, align 8, !dbg !1725
  %109 = add i64 %108, %105, !dbg !1725
  store i64 %109, i64* %107, align 8, !dbg !1725
  %110 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1726
  %111 = getelementptr inbounds %struct._smtp, %struct._smtp* %110, i32 0, i32 7, !dbg !1727
  %112 = load i64, i64* %111, align 8, !dbg !1727
  %113 = load i8*, i8** %5, align 8, !dbg !1728
  %114 = getelementptr inbounds i8, i8* %113, i64 %112, !dbg !1728
  store i8 0, i8* %114, align 1, !dbg !1729
  br label %115

; <label>:115:                                    ; preds = %104
  br label %116, !dbg !1730

; <label>:116:                                    ; preds = %115, %55
  %117 = load i8*, i8** %5, align 8, !dbg !1732
  store i8* %117, i8** %6, align 8, !dbg !1733
  br label %118, !dbg !1734

; <label>:118:                                    ; preds = %176, %116
  %119 = load i8*, i8** %6, align 8, !dbg !1735
  %120 = load i8*, i8** %5, align 8, !dbg !1737
  %121 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1738
  %122 = getelementptr inbounds %struct._smtp, %struct._smtp* %121, i32 0, i32 7, !dbg !1739
  %123 = load i64, i64* %122, align 8, !dbg !1739
  %124 = getelementptr inbounds i8, i8* %120, i64 %123, !dbg !1740
  %125 = icmp ult i8* %119, %124, !dbg !1741
  br i1 %125, label %126, label %201, !dbg !1742

; <label>:126:                                    ; preds = %118
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1743, metadata !679), !dbg !1745
  %127 = load i8*, i8** %6, align 8, !dbg !1746
  %128 = call i8* @strstr(i8* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0)) #9, !dbg !1747
  store i8* %128, i8** %9, align 8, !dbg !1748
  %129 = load i8*, i8** %9, align 8, !dbg !1749
  %130 = icmp ne i8* %129, null, !dbg !1749
  br i1 %130, label %170, label %131, !dbg !1751

; <label>:131:                                    ; preds = %126
  %132 = load i8*, i8** %5, align 8, !dbg !1752
  %133 = load i8*, i8** %6, align 8, !dbg !1754
  %134 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1755
  %135 = getelementptr inbounds %struct._smtp, %struct._smtp* %134, i32 0, i32 7, !dbg !1756
  %136 = load i64, i64* %135, align 8, !dbg !1756
  %137 = load i8*, i8** %6, align 8, !dbg !1757
  %138 = load i8*, i8** %5, align 8, !dbg !1758
  %139 = ptrtoint i8* %137 to i64, !dbg !1759
  %140 = ptrtoint i8* %138 to i64, !dbg !1759
  %141 = sub i64 %139, %140, !dbg !1759
  %142 = sub i64 %136, %141, !dbg !1760
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %132, i8* %133, i64 %142, i32 1, i1 false), !dbg !1761
  %143 = load i8*, i8** %6, align 8, !dbg !1762
  %144 = load i8*, i8** %5, align 8, !dbg !1763
  %145 = ptrtoint i8* %143 to i64, !dbg !1764
  %146 = ptrtoint i8* %144 to i64, !dbg !1764
  %147 = sub i64 %145, %146, !dbg !1764
  %148 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1765
  %149 = getelementptr inbounds %struct._smtp, %struct._smtp* %148, i32 0, i32 7, !dbg !1766
  %150 = load i64, i64* %149, align 8, !dbg !1767
  %151 = sub i64 %150, %147, !dbg !1767
  store i64 %151, i64* %149, align 8, !dbg !1767
  %152 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1768
  %153 = getelementptr inbounds %struct._smtp, %struct._smtp* %152, i32 0, i32 7, !dbg !1769
  %154 = load i64, i64* %153, align 8, !dbg !1769
  %155 = load i8*, i8** %5, align 8, !dbg !1770
  %156 = getelementptr inbounds i8, i8* %155, i64 %154, !dbg !1770
  store i8 0, i8* %156, align 1, !dbg !1771
  %157 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1772
  %158 = getelementptr inbounds %struct._thread, %struct._thread* %157, i32 0, i32 2, !dbg !1773
  %159 = load %struct._thread_master*, %struct._thread_master** %158, align 8, !dbg !1773
  %160 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1774
  %161 = bitcast %struct._smtp* %160 to i8*, !dbg !1774
  %162 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1775
  %163 = getelementptr inbounds %struct._thread, %struct._thread* %162, i32 0, i32 6, !dbg !1776
  %164 = bitcast %union.anon* %163 to i32*, !dbg !1777
  %165 = load i32, i32* %164, align 8, !dbg !1777
  %166 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1778
  %167 = getelementptr inbounds %struct._data, %struct._data* %166, i32 0, i32 8, !dbg !1779
  %168 = load i64, i64* %167, align 8, !dbg !1779
  %169 = call %struct._thread* @thread_add_read(%struct._thread_master* %159, i32 (%struct._thread*)* @smtp_read_thread, i8* %161, i32 %165, i64 %168), !dbg !1780
  store i32 0, i32* %2, align 4, !dbg !1781
  br label %297, !dbg !1781

; <label>:170:                                    ; preds = %126
  %171 = load i8*, i8** %6, align 8, !dbg !1782
  %172 = getelementptr inbounds i8, i8* %171, i64 3, !dbg !1782
  %173 = load i8, i8* %172, align 1, !dbg !1782
  %174 = sext i8 %173 to i32, !dbg !1782
  %175 = icmp eq i32 %174, 45, !dbg !1784
  br i1 %175, label %176, label %179, !dbg !1785

; <label>:176:                                    ; preds = %170
  %177 = load i8*, i8** %9, align 8, !dbg !1786
  %178 = getelementptr inbounds i8, i8* %177, i64 2, !dbg !1788
  store i8* %178, i8** %6, align 8, !dbg !1789
  br label %118, !dbg !1790, !llvm.loop !1791

; <label>:179:                                    ; preds = %170
  %180 = load i8*, i8** %6, align 8, !dbg !1792
  %181 = getelementptr inbounds i8, i8* %180, i64 0, !dbg !1792
  %182 = load i8, i8* %181, align 1, !dbg !1792
  %183 = sext i8 %182 to i32, !dbg !1792
  %184 = sub nsw i32 %183, 48, !dbg !1793
  %185 = mul nsw i32 %184, 100, !dbg !1794
  %186 = load i8*, i8** %6, align 8, !dbg !1795
  %187 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1795
  %188 = load i8, i8* %187, align 1, !dbg !1795
  %189 = sext i8 %188 to i32, !dbg !1795
  %190 = sub nsw i32 %189, 48, !dbg !1796
  %191 = mul nsw i32 %190, 10, !dbg !1797
  %192 = add nsw i32 %185, %191, !dbg !1798
  %193 = load i8*, i8** %6, align 8, !dbg !1799
  %194 = getelementptr inbounds i8, i8* %193, i64 2, !dbg !1799
  %195 = load i8, i8* %194, align 1, !dbg !1799
  %196 = sext i8 %195 to i32, !dbg !1799
  %197 = sub nsw i32 %196, 48, !dbg !1800
  %198 = add nsw i32 %192, %197, !dbg !1801
  store i32 %198, i32* %8, align 4, !dbg !1802
  %199 = load i8*, i8** %9, align 8, !dbg !1803
  %200 = getelementptr inbounds i8, i8* %199, i64 2, !dbg !1804
  store i8* %200, i8** %6, align 8, !dbg !1805
  br label %201, !dbg !1806

; <label>:201:                                    ; preds = %179, %118
  %202 = load i8*, i8** %5, align 8, !dbg !1807
  %203 = load i8*, i8** %6, align 8, !dbg !1808
  %204 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1809
  %205 = getelementptr inbounds %struct._smtp, %struct._smtp* %204, i32 0, i32 7, !dbg !1810
  %206 = load i64, i64* %205, align 8, !dbg !1810
  %207 = load i8*, i8** %6, align 8, !dbg !1811
  %208 = load i8*, i8** %5, align 8, !dbg !1812
  %209 = ptrtoint i8* %207 to i64, !dbg !1813
  %210 = ptrtoint i8* %208 to i64, !dbg !1813
  %211 = sub i64 %209, %210, !dbg !1813
  %212 = sub i64 %206, %211, !dbg !1814
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %202, i8* %203, i64 %212, i32 1, i1 false), !dbg !1815
  %213 = load i8*, i8** %6, align 8, !dbg !1816
  %214 = load i8*, i8** %5, align 8, !dbg !1817
  %215 = ptrtoint i8* %213 to i64, !dbg !1818
  %216 = ptrtoint i8* %214 to i64, !dbg !1818
  %217 = sub i64 %215, %216, !dbg !1818
  %218 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1819
  %219 = getelementptr inbounds %struct._smtp, %struct._smtp* %218, i32 0, i32 7, !dbg !1820
  %220 = load i64, i64* %219, align 8, !dbg !1821
  %221 = sub i64 %220, %217, !dbg !1821
  store i64 %221, i64* %219, align 8, !dbg !1821
  %222 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1822
  %223 = getelementptr inbounds %struct._smtp, %struct._smtp* %222, i32 0, i32 7, !dbg !1823
  %224 = load i64, i64* %223, align 8, !dbg !1823
  %225 = load i8*, i8** %5, align 8, !dbg !1824
  %226 = getelementptr inbounds i8, i8* %225, i64 %224, !dbg !1824
  store i8 0, i8* %226, align 1, !dbg !1825
  %227 = load i32, i32* %8, align 4, !dbg !1826
  %228 = icmp eq i32 %227, -1, !dbg !1828
  br i1 %228, label %229, label %243, !dbg !1829

; <label>:229:                                    ; preds = %201
  %230 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1830
  %231 = getelementptr inbounds %struct._thread, %struct._thread* %230, i32 0, i32 2, !dbg !1832
  %232 = load %struct._thread_master*, %struct._thread_master** %231, align 8, !dbg !1832
  %233 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1833
  %234 = bitcast %struct._smtp* %233 to i8*, !dbg !1833
  %235 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1834
  %236 = getelementptr inbounds %struct._thread, %struct._thread* %235, i32 0, i32 6, !dbg !1835
  %237 = bitcast %union.anon* %236 to i32*, !dbg !1836
  %238 = load i32, i32* %237, align 8, !dbg !1836
  %239 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1837
  %240 = getelementptr inbounds %struct._data, %struct._data* %239, i32 0, i32 8, !dbg !1838
  %241 = load i64, i64* %240, align 8, !dbg !1838
  %242 = call %struct._thread* @thread_add_read(%struct._thread_master* %232, i32 (%struct._thread*)* @smtp_read_thread, i8* %234, i32 %238, i64 %241), !dbg !1839
  store i32 0, i32* %2, align 4, !dbg !1840
  br label %297, !dbg !1840

; <label>:243:                                    ; preds = %201
  br label %244, !dbg !1841, !llvm.loop !1842

; <label>:244:                                    ; preds = %243
  %245 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1843
  %246 = getelementptr inbounds %struct._smtp, %struct._smtp* %245, i32 0, i32 1, !dbg !1847
  %247 = load i32, i32* %246, align 4, !dbg !1847
  %248 = sext i32 %247 to i64, !dbg !1848
  %249 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 %248, !dbg !1848
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 1, !dbg !1849
  %251 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** %250, align 8, !dbg !1849
  %252 = icmp ne i32 (%struct._thread*, i32)* %251, null, !dbg !1850
  br i1 %252, label %253, label %264, !dbg !1850

; <label>:253:                                    ; preds = %244
  %254 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1851
  %255 = getelementptr inbounds %struct._smtp, %struct._smtp* %254, i32 0, i32 1, !dbg !1853
  %256 = load i32, i32* %255, align 4, !dbg !1853
  %257 = sext i32 %256 to i64, !dbg !1854
  %258 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 %257, !dbg !1854
  %259 = getelementptr inbounds %struct.anon, %struct.anon* %258, i32 0, i32 1, !dbg !1855
  %260 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** %259, align 8, !dbg !1855
  %261 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1856
  %262 = load i32, i32* %8, align 4, !dbg !1857
  %263 = call i32 %260(%struct._thread* %261, i32 %262), !dbg !1858
  br label %264, !dbg !1858

; <label>:264:                                    ; preds = %253, %244
  br label %265, !dbg !1859

; <label>:265:                                    ; preds = %264
  %266 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1861
  %267 = getelementptr inbounds %struct._smtp, %struct._smtp* %266, i32 0, i32 1, !dbg !1863
  %268 = load i32, i32* %267, align 4, !dbg !1863
  %269 = icmp ne i32 %268, 11, !dbg !1864
  br i1 %269, label %270, label %283, !dbg !1865

; <label>:270:                                    ; preds = %265
  %271 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1866
  %272 = getelementptr inbounds %struct._thread, %struct._thread* %271, i32 0, i32 2, !dbg !1868
  %273 = load %struct._thread_master*, %struct._thread_master** %272, align 8, !dbg !1868
  %274 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1869
  %275 = bitcast %struct._smtp* %274 to i8*, !dbg !1869
  %276 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1870
  %277 = getelementptr inbounds %struct._smtp, %struct._smtp* %276, i32 0, i32 0, !dbg !1871
  %278 = load i32, i32* %277, align 8, !dbg !1871
  %279 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1872
  %280 = getelementptr inbounds %struct._data, %struct._data* %279, i32 0, i32 8, !dbg !1873
  %281 = load i64, i64* %280, align 8, !dbg !1873
  %282 = call %struct._thread* @thread_add_write(%struct._thread_master* %273, i32 (%struct._thread*)* @smtp_send_thread, i8* %275, i32 %278, i64 %281), !dbg !1874
  br label %296, !dbg !1875

; <label>:283:                                    ; preds = %265
  %284 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1876
  %285 = getelementptr inbounds %struct._data, %struct._data* %284, i32 0, i32 6, !dbg !1878
  %286 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %285), !dbg !1879
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0), i8* %286), !dbg !1880
  br label %287, !dbg !1881, !llvm.loop !1882

; <label>:287:                                    ; preds = %283
  %288 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1883
  %289 = icmp ne i32 (%struct._thread*, i32)* %288, null, !dbg !1887
  br i1 %289, label %290, label %294, !dbg !1887

; <label>:290:                                    ; preds = %287
  %291 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1888
  %292 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1890
  %293 = call i32 %291(%struct._thread* %292, i32 0), !dbg !1891
  br label %294, !dbg !1891

; <label>:294:                                    ; preds = %290, %287
  br label %295, !dbg !1892

; <label>:295:                                    ; preds = %294
  br label %296

; <label>:296:                                    ; preds = %295, %270
  store i32 0, i32* %2, align 4, !dbg !1894
  br label %297, !dbg !1894

; <label>:297:                                    ; preds = %296, %229, %131, %103, %84, %68, %30
  %298 = load i32, i32* %2, align 4, !dbg !1895
  ret i32 %298, !dbg !1895
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

declare %struct._thread* @thread_add_write(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @smtp_send_thread(%struct._thread*) #0 !dbg !1896 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._smtp*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1897, metadata !679), !dbg !1898
  call void @llvm.dbg.declare(metadata %struct._smtp** %4, metadata !1899, metadata !679), !dbg !1900
  %5 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1901
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 4, !dbg !1902
  %7 = load i8*, i8** %6, align 8, !dbg !1902
  %8 = bitcast i8* %7 to %struct._smtp*, !dbg !1903
  store %struct._smtp* %8, %struct._smtp** %4, align 8, !dbg !1900
  %9 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1904
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 1, !dbg !1906
  %11 = load i32, i32* %10, align 8, !dbg !1906
  %12 = icmp eq i32 %11, 8, !dbg !1907
  br i1 %12, label %13, label %26, !dbg !1908

; <label>:13:                                     ; preds = %1
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1909
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 6, !dbg !1911
  %16 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %15), !dbg !1912
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i8* %16), !dbg !1913
  br label %17, !dbg !1914, !llvm.loop !1915

; <label>:17:                                     ; preds = %13
  %18 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1916
  %19 = icmp ne i32 (%struct._thread*, i32)* %18, null, !dbg !1920
  br i1 %19, label %20, label %24, !dbg !1920

; <label>:20:                                     ; preds = %17
  %21 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1921
  %22 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1923
  %23 = call i32 %21(%struct._thread* %22, i32 0), !dbg !1924
  br label %24, !dbg !1924

; <label>:24:                                     ; preds = %20, %17
  br label %25, !dbg !1925

; <label>:25:                                     ; preds = %24
  store i32 0, i32* %2, align 4, !dbg !1927
  br label %97, !dbg !1927

; <label>:26:                                     ; preds = %1
  br label %27, !dbg !1928, !llvm.loop !1929

; <label>:27:                                     ; preds = %26
  %28 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1930
  %29 = getelementptr inbounds %struct._smtp, %struct._smtp* %28, i32 0, i32 1, !dbg !1934
  %30 = load i32, i32* %29, align 4, !dbg !1934
  %31 = sext i32 %30 to i64, !dbg !1935
  %32 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 %31, !dbg !1935
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0, !dbg !1936
  %34 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %33, align 16, !dbg !1936
  %35 = icmp ne i32 (%struct._thread*)* %34, null, !dbg !1937
  br i1 %35, label %36, label %46, !dbg !1937

; <label>:36:                                     ; preds = %27
  %37 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1938
  %38 = getelementptr inbounds %struct._smtp, %struct._smtp* %37, i32 0, i32 1, !dbg !1940
  %39 = load i32, i32* %38, align 4, !dbg !1940
  %40 = sext i32 %39 to i64, !dbg !1941
  %41 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 %40, !dbg !1941
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0, !dbg !1942
  %43 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %42, align 16, !dbg !1942
  %44 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1943
  %45 = call i32 %43(%struct._thread* %44), !dbg !1944
  br label %46, !dbg !1944

; <label>:46:                                     ; preds = %36, %27
  br label %47, !dbg !1945

; <label>:47:                                     ; preds = %46
  %48 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1947
  %49 = getelementptr inbounds %struct._smtp, %struct._smtp* %48, i32 0, i32 1, !dbg !1949
  %50 = load i32, i32* %49, align 4, !dbg !1949
  %51 = icmp eq i32 %50, 10, !dbg !1950
  br i1 %51, label %52, label %62, !dbg !1951

; <label>:52:                                     ; preds = %47
  br label %53, !dbg !1952, !llvm.loop !1954

; <label>:53:                                     ; preds = %52
  %54 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1955
  %55 = icmp ne i32 (%struct._thread*, i32)* %54, null, !dbg !1959
  br i1 %55, label %56, label %60, !dbg !1959

; <label>:56:                                     ; preds = %53
  %57 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1960
  %58 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1962
  %59 = call i32 %57(%struct._thread* %58, i32 0), !dbg !1963
  br label %60, !dbg !1963

; <label>:60:                                     ; preds = %56, %53
  br label %61, !dbg !1964

; <label>:61:                                     ; preds = %60
  store i32 0, i32* %2, align 4, !dbg !1966
  br label %97, !dbg !1966

; <label>:62:                                     ; preds = %47
  %63 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1967
  %64 = getelementptr inbounds %struct._smtp, %struct._smtp* %63, i32 0, i32 1, !dbg !1969
  %65 = load i32, i32* %64, align 4, !dbg !1969
  %66 = icmp ne i32 %65, 11, !dbg !1970
  br i1 %66, label %67, label %83, !dbg !1971

; <label>:67:                                     ; preds = %62
  %68 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1972
  %69 = getelementptr inbounds %struct._thread, %struct._thread* %68, i32 0, i32 2, !dbg !1974
  %70 = load %struct._thread_master*, %struct._thread_master** %69, align 8, !dbg !1974
  %71 = load %struct._smtp*, %struct._smtp** %4, align 8, !dbg !1975
  %72 = bitcast %struct._smtp* %71 to i8*, !dbg !1975
  %73 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1976
  %74 = getelementptr inbounds %struct._thread, %struct._thread* %73, i32 0, i32 6, !dbg !1977
  %75 = bitcast %union.anon* %74 to i32*, !dbg !1978
  %76 = load i32, i32* %75, align 8, !dbg !1978
  %77 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1979
  %78 = getelementptr inbounds %struct._data, %struct._data* %77, i32 0, i32 8, !dbg !1980
  %79 = load i64, i64* %78, align 8, !dbg !1980
  %80 = call %struct._thread* @thread_add_read(%struct._thread_master* %70, i32 (%struct._thread*)* @smtp_read_thread, i8* %72, i32 %76, i64 %79), !dbg !1981
  %81 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1982
  %82 = call i32 @thread_del_write(%struct._thread* %81), !dbg !1983
  br label %96, !dbg !1984

; <label>:83:                                     ; preds = %62
  %84 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1985
  %85 = getelementptr inbounds %struct._data, %struct._data* %84, i32 0, i32 6, !dbg !1987
  %86 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %85), !dbg !1988
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0), i8* %86), !dbg !1989
  br label %87, !dbg !1990, !llvm.loop !1991

; <label>:87:                                     ; preds = %83
  %88 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1992
  %89 = icmp ne i32 (%struct._thread*, i32)* %88, null, !dbg !1996
  br i1 %89, label %90, label %94, !dbg !1996

; <label>:90:                                     ; preds = %87
  %91 = load i32 (%struct._thread*, i32)*, i32 (%struct._thread*, i32)** getelementptr inbounds ([10 x %struct.anon], [10 x %struct.anon]* @SMTP_FSM, i64 0, i64 9, i32 1), align 8, !dbg !1997
  %92 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1999
  %93 = call i32 %91(%struct._thread* %92, i32 0), !dbg !2000
  br label %94, !dbg !2000

; <label>:94:                                     ; preds = %90, %87
  br label %95, !dbg !2001

; <label>:95:                                     ; preds = %94
  br label %96

; <label>:96:                                     ; preds = %95, %67
  store i32 0, i32* %2, align 4, !dbg !2003
  br label %97, !dbg !2003

; <label>:97:                                     ; preds = %96, %61, %25
  %98 = load i32, i32* %2, align 4, !dbg !2004
  ret i32 %98, !dbg !2004
}

declare i32 @thread_del_write(%struct._thread*) #2

declare i64 @send(i32, i8*, i64, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind uwtable
define internal i8* @fetch_next_email(%struct._smtp*) #0 !dbg !2005 {
  %2 = alloca %struct._smtp*, align 8
  store %struct._smtp* %0, %struct._smtp** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._smtp** %2, metadata !2008, metadata !679), !dbg !2009
  %3 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2010
  %4 = getelementptr inbounds %struct._data, %struct._data* %3, i32 0, i32 9, !dbg !2011
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !2011
  %6 = load %struct._smtp*, %struct._smtp** %2, align 8, !dbg !2012
  %7 = getelementptr inbounds %struct._smtp, %struct._smtp* %6, i32 0, i32 2, !dbg !2013
  %8 = load i32, i32* %7, align 8, !dbg !2013
  %9 = zext i32 %8 to i64, !dbg !2012
  %10 = call i8* @list_element(%struct._list* %5, i64 %9), !dbg !2014
  ret i8* %10, !dbg !2015
}

declare i8* @list_element(%struct._list*, i64) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

declare void @thread_close_fd(%struct._thread*) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tcp_connect(i32, %struct.sockaddr_storage*) #4 !dbg !2016 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2020, metadata !679), !dbg !2021
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %4, metadata !2022, metadata !679), !dbg !2023
  %5 = load i32, i32* %3, align 4, !dbg !2024
  %6 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8, !dbg !2025
  %7 = call i32 @socket_connect(i32 %5, %struct.sockaddr_storage* %6), !dbg !2026
  ret i32 %7, !dbg !2027
}

declare %struct._thread* @thread_add_event(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32) #2

declare i32 @socket_connect(i32, %struct.sockaddr_storage*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!673, !674}
!llvm.ident = !{!675}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !88, globals: !656)
!1 = !DIFile(filename: "[inter]keepalived--core--smtp.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{!3, !24, !32, !40, !47, !59}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !DIEnumerator(name: "THREAD_READ", value: 0)
!7 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!8 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!9 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!10 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!11 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!12 = !DIEnumerator(name: "THREAD_READY", value: 6)
!13 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!14 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!15 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!16 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!17 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!18 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!19 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!20 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!21 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!22 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!23 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 57, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "./../include/smtp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "SMTP_MSG_RS", value: 0)
!28 = !DIEnumerator(name: "SMTP_MSG_VS", value: 1)
!29 = !DIEnumerator(name: "SMTP_MSG_RS_SHUT", value: 2)
!30 = !DIEnumerator(name: "SMTP_MSG_VGROUP", value: 3)
!31 = !DIEnumerator(name: "SMTP_MSG_VRRP", value: 4)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !33, line: 173, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!36 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!37 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!38 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!39 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "connect_result", file: !41, line: 34, size: 32, align: 32, elements: !42)
!41 = !DIFile(filename: "./../include/layer4.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "connect_error", value: 0)
!44 = !DIEnumerator(name: "connect_in_progress", value: 1)
!45 = !DIEnumerator(name: "connect_timeout", value: 2)
!46 = !DIEnumerator(name: "connect_success", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !48, line: 24, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!51 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!52 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!53 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!54 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!55 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!56 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!57 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!58 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 40, size: 32, align: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!62 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!63 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!64 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!65 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!66 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!67 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!68 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!69 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!70 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!71 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!72 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!73 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!74 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!75 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!76 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!77 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!78 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!79 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!80 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!81 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!82 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!83 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!84 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!85 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!86 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!87 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!88 = !{!89, !90, !100, !109, !297, !422, !428, !435, !106, !95}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "smtp_t", file: !25, line: 96, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_smtp", file: !25, line: 87, size: 448, align: 64, elements: !93)
!93 = !{!94, !96, !97, !99, !102, !103, !104, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !92, file: !25, line: 88, baseType: !95, size: 32, align: 32)
!95 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "stage", scope: !92, file: !25, line: 89, baseType: !95, size: 32, align: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "email_it", scope: !92, file: !25, line: 90, baseType: !98, size: 32, align: 32, offset: 64)
!98 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !92, file: !25, line: 91, baseType: !100, size: 64, align: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !92, file: !25, line: 92, baseType: !100, size: 64, align: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !92, file: !25, line: 93, baseType: !100, size: 64, align: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "email_to", scope: !92, file: !25, line: 94, baseType: !100, size: 64, align: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !92, file: !25, line: 95, baseType: !106, size: 64, align: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 216, baseType: !108)
!107 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!108 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "checker_t", file: !111, line: 60, baseType: !112)
!111 = !DIFile(filename: "./../include/check_api.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_checker", file: !111, line: 40, size: 1024, align: 64, elements: !113)
!113 = !{!114, !118, !178, !292, !296, !399, !400, !401, !402, !403, !404, !414, !415, !416, !417, !418, !419, !420, !421}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !112, file: !111, line: 41, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !89}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dump_func", scope: !112, file: !111, line: 42, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !89}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 48, baseType: !125)
!124 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, align: 64, elements: !127)
!126 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !148, !149, !150, !151, !155, !157, !159, !163, !166, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !125, file: !126, line: 242, baseType: !95, size: 32, align: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !125, file: !126, line: 247, baseType: !100, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !125, file: !126, line: 248, baseType: !100, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !125, file: !126, line: 249, baseType: !100, size: 64, align: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !125, file: !126, line: 250, baseType: !100, size: 64, align: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !125, file: !126, line: 251, baseType: !100, size: 64, align: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !125, file: !126, line: 252, baseType: !100, size: 64, align: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !125, file: !126, line: 253, baseType: !100, size: 64, align: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !125, file: !126, line: 254, baseType: !100, size: 64, align: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !125, file: !126, line: 256, baseType: !100, size: 64, align: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !125, file: !126, line: 257, baseType: !100, size: 64, align: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !125, file: !126, line: 258, baseType: !100, size: 64, align: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !125, file: !126, line: 260, baseType: !141, size: 64, align: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, align: 64, elements: !143)
!143 = !{!144, !145, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !142, file: !126, line: 157, baseType: !141, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !142, file: !126, line: 158, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !142, file: !126, line: 162, baseType: !95, size: 32, align: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !125, file: !126, line: 262, baseType: !146, size: 64, align: 64, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !125, file: !126, line: 264, baseType: !95, size: 32, align: 32, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !125, file: !126, line: 268, baseType: !95, size: 32, align: 32, offset: 928)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !125, file: !126, line: 270, baseType: !152, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !153, line: 131, baseType: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!154 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !125, file: !126, line: 274, baseType: !156, size: 16, align: 16, offset: 1024)
!156 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !125, file: !126, line: 275, baseType: !158, size: 8, align: 8, offset: 1040)
!158 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !125, file: !126, line: 276, baseType: !160, size: 8, align: 8, offset: 1048)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 8, align: 8, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 1)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !125, file: !126, line: 280, baseType: !164, size: 64, align: 64, offset: 1088)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !126, line: 150, baseType: null)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !125, file: !126, line: 289, baseType: !167, size: 64, align: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !153, line: 132, baseType: !154)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !125, file: !126, line: 297, baseType: !89, size: 64, align: 64, offset: 1216)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !125, file: !126, line: 298, baseType: !89, size: 64, align: 64, offset: 1280)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !125, file: !126, line: 299, baseType: !89, size: 64, align: 64, offset: 1344)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !125, file: !126, line: 300, baseType: !89, size: 64, align: 64, offset: 1408)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !125, file: !126, line: 302, baseType: !106, size: 64, align: 64, offset: 1472)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !125, file: !126, line: 303, baseType: !95, size: 32, align: 32, offset: 1536)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !125, file: !126, line: 305, baseType: !175, size: 160, align: 8, offset: 1568)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 160, align: 8, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 20)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "launch", scope: !112, file: !111, line: 43, baseType: !179, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!95, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !184)
!184 = !{!185, !186, !188, !260, !261, !262, !272, !285, !287}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !183, file: !4, line: 79, baseType: !108, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !183, file: !4, line: 80, baseType: !187, size: 32, align: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !183, file: !4, line: 81, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !191)
!191 = !{!192, !204, !205, !206, !207, !215, !216, !217, !234, !235, !238, !251, !252, !253, !254, !255, !256, !257, !258}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !190, file: !4, line: 113, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !194, line: 109, baseType: !195)
!194 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !194, line: 106, size: 64, align: 64, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !195, file: !194, line: 108, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !194, line: 97, size: 192, align: 64, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !199, file: !194, line: 99, baseType: !108, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !199, file: !194, line: 102, baseType: !198, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !199, file: !194, line: 103, baseType: !198, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !190, file: !4, line: 114, baseType: !193, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !190, file: !4, line: 115, baseType: !193, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !190, file: !4, line: 116, baseType: !193, size: 64, align: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !190, file: !4, line: 117, baseType: !208, size: 128, align: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !209, line: 62, baseType: !210)
!209 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !209, line: 60, size: 128, align: 64, elements: !211)
!211 = !{!212, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !209, line: 61, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !209, line: 61, baseType: !213, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !190, file: !4, line: 121, baseType: !208, size: 128, align: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !190, file: !4, line: 122, baseType: !208, size: 128, align: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !190, file: !4, line: 124, baseType: !218, size: 64, align: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !219, line: 31, baseType: !220)
!219 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !219, line: 39, size: 320, align: 64, elements: !222)
!222 = !{!223, !230, !231, !232, !233}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !221, file: !219, line: 40, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !219, line: 33, size: 192, align: 64, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !219, line: 34, baseType: !224, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !225, file: !219, line: 35, baseType: !224, size: 64, align: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !225, file: !219, line: 36, baseType: !89, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !221, file: !219, line: 41, baseType: !224, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !221, file: !219, line: 42, baseType: !98, size: 32, align: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !221, file: !219, line: 43, baseType: !115, size: 64, align: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !221, file: !219, line: 44, baseType: !119, size: 64, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !190, file: !4, line: 127, baseType: !193, size: 64, align: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !190, file: !4, line: 128, baseType: !236, size: 64, align: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !190, file: !4, line: 129, baseType: !239, size: 64, align: 64, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !242)
!242 = !{!243, !246, !247, !248, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !241, file: !4, line: 103, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !183)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !241, file: !4, line: 104, baseType: !244, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !4, line: 105, baseType: !108, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !241, file: !4, line: 106, baseType: !95, size: 32, align: 32, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !241, file: !4, line: 108, baseType: !250, size: 192, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !194, line: 104, baseType: !199)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !190, file: !4, line: 130, baseType: !98, size: 32, align: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !190, file: !4, line: 131, baseType: !98, size: 32, align: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !190, file: !4, line: 132, baseType: !95, size: 32, align: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !190, file: !4, line: 135, baseType: !95, size: 32, align: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !190, file: !4, line: 136, baseType: !244, size: 64, align: 64, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !190, file: !4, line: 146, baseType: !108, size: 64, align: 64, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !190, file: !4, line: 147, baseType: !108, size: 64, align: 64, offset: 1152)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !190, file: !4, line: 148, baseType: !259, size: 8, align: 8, offset: 1216)
!259 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !183, file: !4, line: 82, baseType: !179, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !183, file: !4, line: 83, baseType: !89, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !183, file: !4, line: 84, baseType: !263, size: 128, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !264, line: 31, baseType: !265)
!264 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !266, line: 30, size: 128, align: 64, elements: !267)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!267 = !{!268, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !265, file: !266, line: 32, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !153, line: 139, baseType: !154)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !265, file: !266, line: 33, baseType: !271, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !153, line: 141, baseType: !154)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !183, file: !4, line: 92, baseType: !273, size: 64, align: 32, offset: 448)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !4, line: 85, size: 64, align: 32, elements: !274)
!274 = !{!275, !276, !277}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !273, file: !4, line: 86, baseType: !95, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !273, file: !4, line: 87, baseType: !95, size: 32, align: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !273, file: !4, line: 91, baseType: !278, size: 64, align: 32)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !273, file: !4, line: 88, size: 64, align: 32, elements: !279)
!279 = !{!280, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !278, file: !4, line: 89, baseType: !281, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !282, line: 263, baseType: !283)
!282 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !153, line: 133, baseType: !95)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !278, file: !4, line: 90, baseType: !95, size: 32, align: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !183, file: !4, line: 93, baseType: !286, size: 64, align: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !4, line: 95, baseType: !288, size: 192, align: 64, offset: 576)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !4, line: 95, size: 192, align: 64, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !288, file: !4, line: 96, baseType: !250, size: 192, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !4, line: 97, baseType: !208, size: 128, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !112, file: !111, line: 44, baseType: !293, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!259, !89, !89}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !112, file: !111, line: 45, baseType: !297, size: 64, align: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !299, line: 180, baseType: !300)
!299 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !299, line: 131, size: 2560, align: 64, elements: !301)
!301 = !{!302, !303, !311, !323, !326, !367, !369, !370, !371, !372, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !300, file: !299, line: 132, baseType: !100, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !300, file: !299, line: 133, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !299, line: 128, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !299, line: 124, size: 192, align: 64, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !306, file: !299, line: 125, baseType: !100, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !306, file: !299, line: 126, baseType: !218, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !306, file: !299, line: 127, baseType: !218, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !300, file: !299, line: 134, baseType: !312, size: 1024, align: 64, offset: 128)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !313, line: 166, size: 1024, align: 64, elements: !314)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!314 = !{!315, !318, !322}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !312, file: !313, line: 168, baseType: !316, size: 16, align: 16)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !317, line: 28, baseType: !156)
!317 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !312, file: !313, line: 169, baseType: !319, size: 944, align: 8, offset: 16)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 944, align: 8, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 118)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !312, file: !313, line: 170, baseType: !108, size: 64, align: 64, offset: 960)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !300, file: !299, line: 135, baseType: !324, size: 32, align: 32, offset: 1152)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !325, line: 51, baseType: !98)
!325 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !300, file: !299, line: 136, baseType: !327, size: 64, align: 64, offset: 1216)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !299, line: 102, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !299, line: 62, size: 1920, align: 64, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !329, file: !299, line: 63, baseType: !312, size: 1024, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !329, file: !299, line: 64, baseType: !95, size: 32, align: 32, offset: 1024)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !329, file: !299, line: 65, baseType: !95, size: 32, align: 32, offset: 1056)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !329, file: !299, line: 66, baseType: !95, size: 32, align: 32, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !329, file: !299, line: 68, baseType: !98, size: 32, align: 32, offset: 1120)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !329, file: !299, line: 69, baseType: !324, size: 32, align: 32, offset: 1152)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !329, file: !299, line: 70, baseType: !324, size: 32, align: 32, offset: 1184)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !329, file: !299, line: 71, baseType: !95, size: 32, align: 32, offset: 1216)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !329, file: !299, line: 74, baseType: !340, size: 64, align: 64, offset: 1280)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !342, line: 65, baseType: !343)
!342 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !342, line: 59, size: 192, align: 64, elements: !344)
!344 = !{!345, !347, !348, !349, !352}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !343, file: !342, line: 60, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !343, file: !342, line: 61, baseType: !95, size: 32, align: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !342, line: 62, baseType: !95, size: 32, align: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !343, file: !342, line: 63, baseType: !350, size: 32, align: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !282, line: 240, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !153, line: 125, baseType: !98)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !343, file: !342, line: 64, baseType: !353, size: 32, align: 32, offset: 160)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !282, line: 235, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !153, line: 126, baseType: !98)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !329, file: !299, line: 75, baseType: !340, size: 64, align: 64, offset: 1344)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !329, file: !299, line: 76, baseType: !95, size: 32, align: 32, offset: 1408)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !329, file: !299, line: 77, baseType: !108, size: 64, align: 64, offset: 1472)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !329, file: !299, line: 78, baseType: !108, size: 64, align: 64, offset: 1536)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !329, file: !299, line: 79, baseType: !98, size: 32, align: 32, offset: 1600)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !329, file: !299, line: 80, baseType: !108, size: 64, align: 64, offset: 1664)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !329, file: !299, line: 81, baseType: !95, size: 32, align: 32, offset: 1728)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !329, file: !299, line: 83, baseType: !259, size: 8, align: 8, offset: 1760)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !329, file: !299, line: 84, baseType: !98, size: 32, align: 32, offset: 1792)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !329, file: !299, line: 85, baseType: !259, size: 8, align: 8, offset: 1824)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !329, file: !299, line: 86, baseType: !259, size: 8, align: 8, offset: 1832)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !329, file: !299, line: 87, baseType: !100, size: 64, align: 64, offset: 1856)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !300, file: !299, line: 137, baseType: !368, size: 16, align: 16, offset: 1280)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !325, line: 49, baseType: !156)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !300, file: !299, line: 138, baseType: !368, size: 16, align: 16, offset: 1296)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !300, file: !299, line: 139, baseType: !259, size: 8, align: 8, offset: 1312)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !300, file: !299, line: 140, baseType: !95, size: 32, align: 32, offset: 1344)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !300, file: !299, line: 142, baseType: !373, size: 128, align: 8, offset: 1376)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, align: 8, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !299, line: 143, baseType: !324, size: 32, align: 32, offset: 1504)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !300, file: !299, line: 144, baseType: !324, size: 32, align: 32, offset: 1536)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !300, file: !299, line: 146, baseType: !373, size: 128, align: 8, offset: 1568)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !300, file: !299, line: 148, baseType: !98, size: 32, align: 32, offset: 1696)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !300, file: !299, line: 149, baseType: !324, size: 32, align: 32, offset: 1728)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !300, file: !299, line: 151, baseType: !100, size: 64, align: 64, offset: 1792)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !300, file: !299, line: 153, baseType: !95, size: 32, align: 32, offset: 1856)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !300, file: !299, line: 154, baseType: !218, size: 64, align: 64, offset: 1920)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !300, file: !299, line: 155, baseType: !95, size: 32, align: 32, offset: 1984)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !300, file: !299, line: 156, baseType: !259, size: 8, align: 8, offset: 2016)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !300, file: !299, line: 157, baseType: !259, size: 8, align: 8, offset: 2024)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !300, file: !299, line: 158, baseType: !259, size: 8, align: 8, offset: 2032)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !300, file: !299, line: 160, baseType: !108, size: 64, align: 64, offset: 2048)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !300, file: !299, line: 161, baseType: !108, size: 64, align: 64, offset: 2112)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !300, file: !299, line: 162, baseType: !98, size: 32, align: 32, offset: 2176)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !300, file: !299, line: 163, baseType: !108, size: 64, align: 64, offset: 2240)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !300, file: !299, line: 164, baseType: !340, size: 64, align: 64, offset: 2304)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !300, file: !299, line: 165, baseType: !340, size: 64, align: 64, offset: 2368)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !300, file: !299, line: 166, baseType: !98, size: 32, align: 32, offset: 2432)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !300, file: !299, line: 167, baseType: !98, size: 32, align: 32, offset: 2464)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !300, file: !299, line: 168, baseType: !95, size: 32, align: 32, offset: 2496)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !300, file: !299, line: 169, baseType: !259, size: 8, align: 8, offset: 2528)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !300, file: !299, line: 170, baseType: !259, size: 8, align: 8, offset: 2536)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !112, file: !111, line: 46, baseType: !327, size: 64, align: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !112, file: !111, line: 47, baseType: !89, size: 64, align: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !112, file: !111, line: 48, baseType: !259, size: 8, align: 8, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "is_up", scope: !112, file: !111, line: 49, baseType: !259, size: 8, align: 8, offset: 456)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "has_run", scope: !112, file: !111, line: 50, baseType: !259, size: 8, align: 8, offset: 464)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !112, file: !111, line: 51, baseType: !405, size: 64, align: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_opts_t", file: !41, line: 50, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conn_opts", file: !41, line: 42, size: 2240, align: 64, elements: !408)
!408 = !{!409, !410, !411, !412, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !407, file: !41, line: 43, baseType: !312, size: 1024, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bindto", scope: !407, file: !41, line: 44, baseType: !312, size: 1024, align: 64, offset: 1024)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bind_if", scope: !407, file: !41, line: 45, baseType: !373, size: 128, align: 8, offset: 2048)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connection_to", scope: !407, file: !41, line: 46, baseType: !98, size: 32, align: 32, offset: 2176)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !407, file: !41, line: 48, baseType: !98, size: 32, align: 32, offset: 2208)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !112, file: !111, line: 52, baseType: !95, size: 32, align: 32, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !112, file: !111, line: 53, baseType: !108, size: 64, align: 64, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !112, file: !111, line: 54, baseType: !108, size: 64, align: 64, offset: 704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !112, file: !111, line: 55, baseType: !98, size: 32, align: 32, offset: 768)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !112, file: !111, line: 56, baseType: !108, size: 64, align: 64, offset: 832)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "retry_it", scope: !112, file: !111, line: 57, baseType: !98, size: 32, align: 32, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "default_retry", scope: !112, file: !111, line: 58, baseType: !98, size: 32, align: 32, offset: 928)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "default_delay_before_retry", scope: !112, file: !111, line: 59, baseType: !108, size: 64, align: 64, offset: 960)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "smtp_rs", file: !25, line: 115, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_smtp_rs", file: !25, line: 112, size: 128, align: 64, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !424, file: !25, line: 113, baseType: !327, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !424, file: !25, line: 114, baseType: !297, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !33, line: 310, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !33, line: 183, size: 7040, align: 64, elements: !431)
!431 = !{!432, !433, !434, !467, !487, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !648, !655}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !430, file: !33, line: 184, baseType: !316, size: 16, align: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !430, file: !33, line: 185, baseType: !100, size: 64, align: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !430, file: !33, line: 186, baseType: !435, size: 64, align: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !33, line: 133, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !33, line: 109, size: 1024, align: 64, elements: !438)
!438 = !{!439, !440, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !437, file: !33, line: 110, baseType: !100, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !437, file: !33, line: 111, baseType: !441, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !443, line: 34, baseType: !444)
!443 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !443, line: 30, size: 128, align: 64, elements: !445)
!445 = !{!446, !447, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !444, file: !443, line: 31, baseType: !98, size: 32, align: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !444, file: !443, line: 32, baseType: !98, size: 32, align: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !444, file: !443, line: 33, baseType: !449, size: 64, align: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !437, file: !33, line: 112, baseType: !218, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !437, file: !33, line: 113, baseType: !98, size: 32, align: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !437, file: !33, line: 114, baseType: !98, size: 32, align: 32, offset: 224)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !437, file: !33, line: 115, baseType: !95, size: 32, align: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !437, file: !33, line: 116, baseType: !259, size: 8, align: 8, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !437, file: !33, line: 119, baseType: !218, size: 64, align: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !437, file: !33, line: 120, baseType: !218, size: 64, align: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !437, file: !33, line: 121, baseType: !218, size: 64, align: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !437, file: !33, line: 122, baseType: !218, size: 64, align: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !437, file: !33, line: 125, baseType: !259, size: 8, align: 8, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !437, file: !33, line: 126, baseType: !340, size: 64, align: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !437, file: !33, line: 127, baseType: !340, size: 64, align: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !437, file: !33, line: 128, baseType: !340, size: 64, align: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !437, file: !33, line: 129, baseType: !340, size: 64, align: 64, offset: 832)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !437, file: !33, line: 130, baseType: !340, size: 64, align: 64, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !437, file: !33, line: 131, baseType: !95, size: 32, align: 32, offset: 960)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !437, file: !33, line: 132, baseType: !95, size: 32, align: 32, offset: 992)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !430, file: !33, line: 187, baseType: !468, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !33, line: 169, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !33, line: 136, size: 768, align: 64, elements: !471)
!471 = !{!472, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !470, file: !33, line: 137, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !325, line: 55, baseType: !108)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !470, file: !33, line: 138, baseType: !324, size: 32, align: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !470, file: !33, line: 140, baseType: !324, size: 32, align: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !470, file: !33, line: 141, baseType: !324, size: 32, align: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !470, file: !33, line: 143, baseType: !473, size: 64, align: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !470, file: !33, line: 144, baseType: !473, size: 64, align: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !470, file: !33, line: 145, baseType: !473, size: 64, align: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !470, file: !33, line: 146, baseType: !473, size: 64, align: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !470, file: !33, line: 147, baseType: !473, size: 64, align: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !470, file: !33, line: 149, baseType: !324, size: 32, align: 32, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !470, file: !33, line: 151, baseType: !324, size: 32, align: 32, offset: 544)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !470, file: !33, line: 152, baseType: !324, size: 32, align: 32, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !470, file: !33, line: 155, baseType: !473, size: 64, align: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !470, file: !33, line: 156, baseType: !473, size: 64, align: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !430, file: !33, line: 188, baseType: !488, size: 64, align: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !490, line: 111, baseType: !491)
!490 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !490, line: 76, size: 1792, align: 64, elements: !492)
!492 = !{!493, !494, !496, !501, !519, !520, !521, !522, !523, !530, !531, !532, !533, !534, !535, !537, !538, !539, !540, !552, !553, !554, !555, !556, !557, !558, !559}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !491, file: !490, line: 77, baseType: !373, size: 128, align: 8)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !491, file: !490, line: 78, baseType: !495, size: 32, align: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !490, line: 62, baseType: !324)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !491, file: !490, line: 79, baseType: !497, size: 32, align: 32, offset: 160)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !60, line: 31, size: 32, align: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !497, file: !60, line: 33, baseType: !500, size: 32, align: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !60, line: 30, baseType: !324)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !491, file: !490, line: 80, baseType: !502, size: 128, align: 32, offset: 192)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !60, line: 211, size: 128, align: 32, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !502, file: !60, line: 220, baseType: !505, size: 128, align: 32)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !60, line: 213, size: 128, align: 32, elements: !506)
!506 = !{!507, !511, !515}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !505, file: !60, line: 215, baseType: !508, size: 128, align: 8)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 128, align: 8, elements: !374)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !325, line: 48, baseType: !510)
!510 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !505, file: !60, line: 217, baseType: !512, size: 128, align: 16)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 128, align: 16, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !505, file: !60, line: 218, baseType: !516, size: 128, align: 32)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, align: 32, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 4)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !491, file: !490, line: 81, baseType: !98, size: 32, align: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !491, file: !490, line: 82, baseType: !259, size: 8, align: 8, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !491, file: !490, line: 83, baseType: !324, size: 32, align: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !491, file: !490, line: 84, baseType: !156, size: 16, align: 16, offset: 416)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !491, file: !490, line: 85, baseType: !524, size: 256, align: 8, offset: 432)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 256, align: 8, elements: !528)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !526, line: 33, baseType: !527)
!526 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !153, line: 30, baseType: !510)
!528 = !{!529}
!529 = !DISubrange(count: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !491, file: !490, line: 86, baseType: !524, size: 256, align: 8, offset: 688)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !491, file: !490, line: 87, baseType: !106, size: 64, align: 64, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !491, file: !490, line: 88, baseType: !95, size: 32, align: 32, offset: 1024)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !491, file: !490, line: 90, baseType: !259, size: 8, align: 8, offset: 1056)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !491, file: !490, line: 91, baseType: !495, size: 32, align: 32, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !491, file: !490, line: 92, baseType: !536, size: 64, align: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !491, file: !490, line: 94, baseType: !495, size: 32, align: 32, offset: 1216)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !491, file: !490, line: 96, baseType: !536, size: 64, align: 64, offset: 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !491, file: !490, line: 97, baseType: !259, size: 8, align: 8, offset: 1344)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !491, file: !490, line: 100, baseType: !541, size: 64, align: 64, offset: 1408)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !490, line: 73, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !490, line: 65, size: 704, align: 64, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !543, file: !490, line: 66, baseType: !263, size: 128, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !543, file: !490, line: 67, baseType: !259, size: 8, align: 8, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !543, file: !490, line: 68, baseType: !263, size: 128, align: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !543, file: !490, line: 69, baseType: !259, size: 8, align: 8, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !543, file: !490, line: 70, baseType: !263, size: 128, align: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !543, file: !490, line: 71, baseType: !263, size: 128, align: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !543, file: !490, line: 72, baseType: !95, size: 32, align: 32, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !491, file: !490, line: 101, baseType: !259, size: 8, align: 8, offset: 1472)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !491, file: !490, line: 102, baseType: !95, size: 32, align: 32, offset: 1504)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !491, file: !490, line: 103, baseType: !324, size: 32, align: 32, offset: 1536)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !491, file: !490, line: 104, baseType: !324, size: 32, align: 32, offset: 1568)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !491, file: !490, line: 105, baseType: !324, size: 32, align: 32, offset: 1600)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !491, file: !490, line: 107, baseType: !98, size: 32, align: 32, offset: 1632)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !491, file: !490, line: 109, baseType: !259, size: 8, align: 8, offset: 1664)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !491, file: !490, line: 110, baseType: !218, size: 64, align: 64, offset: 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !430, file: !33, line: 189, baseType: !259, size: 8, align: 8, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !430, file: !33, line: 190, baseType: !259, size: 8, align: 8, offset: 328)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !430, file: !33, line: 191, baseType: !259, size: 8, align: 8, offset: 336)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !430, file: !33, line: 193, baseType: !98, size: 32, align: 32, offset: 352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !430, file: !33, line: 195, baseType: !108, size: 64, align: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !430, file: !33, line: 196, baseType: !373, size: 128, align: 8, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !430, file: !33, line: 198, baseType: !218, size: 64, align: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !430, file: !33, line: 199, baseType: !218, size: 64, align: 64, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !430, file: !33, line: 200, baseType: !218, size: 64, align: 64, offset: 704)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !430, file: !33, line: 204, baseType: !98, size: 32, align: 32, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !430, file: !33, line: 205, baseType: !98, size: 32, align: 32, offset: 800)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !430, file: !33, line: 206, baseType: !312, size: 1024, align: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !430, file: !33, line: 207, baseType: !259, size: 8, align: 8, offset: 1856)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !430, file: !33, line: 208, baseType: !259, size: 8, align: 8, offset: 1864)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !430, file: !33, line: 209, baseType: !312, size: 1024, align: 64, offset: 1920)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !430, file: !33, line: 210, baseType: !218, size: 64, align: 64, offset: 2944)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !430, file: !33, line: 212, baseType: !577, size: 32, align: 32, offset: 3008)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !33, line: 179, baseType: !32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !430, file: !33, line: 214, baseType: !312, size: 1024, align: 64, offset: 3072)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !430, file: !33, line: 215, baseType: !509, size: 8, align: 8, offset: 4096)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !430, file: !33, line: 216, baseType: !263, size: 128, align: 64, offset: 4160)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !430, file: !33, line: 217, baseType: !98, size: 32, align: 32, offset: 4288)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !430, file: !33, line: 218, baseType: !263, size: 128, align: 64, offset: 4352)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !430, file: !33, line: 219, baseType: !263, size: 128, align: 64, offset: 4480)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !430, file: !33, line: 220, baseType: !98, size: 32, align: 32, offset: 4608)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !430, file: !33, line: 221, baseType: !98, size: 32, align: 32, offset: 4640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !430, file: !33, line: 222, baseType: !98, size: 32, align: 32, offset: 4672)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !430, file: !33, line: 223, baseType: !259, size: 8, align: 8, offset: 4704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !430, file: !33, line: 224, baseType: !259, size: 8, align: 8, offset: 4712)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !430, file: !33, line: 225, baseType: !98, size: 32, align: 32, offset: 4736)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !430, file: !33, line: 226, baseType: !98, size: 32, align: 32, offset: 4768)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !430, file: !33, line: 227, baseType: !98, size: 32, align: 32, offset: 4800)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !430, file: !33, line: 228, baseType: !509, size: 8, align: 8, offset: 4832)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !430, file: !33, line: 229, baseType: !509, size: 8, align: 8, offset: 4840)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !430, file: !33, line: 230, baseType: !509, size: 8, align: 8, offset: 4848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !430, file: !33, line: 231, baseType: !95, size: 32, align: 32, offset: 4864)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !430, file: !33, line: 233, baseType: !259, size: 8, align: 8, offset: 4896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !430, file: !33, line: 234, baseType: !218, size: 64, align: 64, offset: 4928)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !430, file: !33, line: 235, baseType: !218, size: 64, align: 64, offset: 4992)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !430, file: !33, line: 239, baseType: !259, size: 8, align: 8, offset: 5056)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !430, file: !33, line: 240, baseType: !259, size: 8, align: 8, offset: 5064)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !430, file: !33, line: 241, baseType: !218, size: 64, align: 64, offset: 5120)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !430, file: !33, line: 242, baseType: !218, size: 64, align: 64, offset: 5184)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !430, file: !33, line: 243, baseType: !98, size: 32, align: 32, offset: 5248)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !430, file: !33, line: 244, baseType: !98, size: 32, align: 32, offset: 5280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !430, file: !33, line: 249, baseType: !98, size: 32, align: 32, offset: 5312)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !430, file: !33, line: 252, baseType: !106, size: 64, align: 64, offset: 5376)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !430, file: !33, line: 254, baseType: !259, size: 8, align: 8, offset: 5440)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !430, file: !33, line: 255, baseType: !259, size: 8, align: 8, offset: 5448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !430, file: !33, line: 256, baseType: !108, size: 64, align: 64, offset: 5504)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !430, file: !33, line: 260, baseType: !263, size: 128, align: 64, offset: 5568)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !430, file: !33, line: 261, baseType: !95, size: 32, align: 32, offset: 5696)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !430, file: !33, line: 265, baseType: !95, size: 32, align: 32, offset: 5728)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !430, file: !33, line: 266, baseType: !259, size: 8, align: 8, offset: 5760)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !430, file: !33, line: 267, baseType: !615, size: 64, align: 64, offset: 5824)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !617, line: 50, baseType: !618)
!617 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !617, line: 40, size: 1344, align: 64, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !618, file: !617, line: 41, baseType: !316, size: 16, align: 16)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !618, file: !617, line: 42, baseType: !312, size: 1024, align: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !618, file: !617, line: 43, baseType: !95, size: 32, align: 32, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !618, file: !617, line: 44, baseType: !495, size: 32, align: 32, offset: 1120)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !618, file: !617, line: 45, baseType: !259, size: 8, align: 8, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !618, file: !617, line: 46, baseType: !95, size: 32, align: 32, offset: 1184)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !618, file: !617, line: 47, baseType: !95, size: 32, align: 32, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !618, file: !617, line: 48, baseType: !95, size: 32, align: 32, offset: 1248)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !618, file: !617, line: 49, baseType: !244, size: 64, align: 64, offset: 1280)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !430, file: !33, line: 269, baseType: !95, size: 32, align: 32, offset: 5888)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !430, file: !33, line: 271, baseType: !95, size: 32, align: 32, offset: 5920)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !430, file: !33, line: 274, baseType: !95, size: 32, align: 32, offset: 5952)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !430, file: !33, line: 275, baseType: !95, size: 32, align: 32, offset: 5984)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !430, file: !33, line: 276, baseType: !259, size: 8, align: 8, offset: 6016)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !430, file: !33, line: 277, baseType: !340, size: 64, align: 64, offset: 6080)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !430, file: !33, line: 278, baseType: !340, size: 64, align: 64, offset: 6144)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !430, file: !33, line: 279, baseType: !340, size: 64, align: 64, offset: 6208)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !430, file: !33, line: 280, baseType: !340, size: 64, align: 64, offset: 6272)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !430, file: !33, line: 281, baseType: !340, size: 64, align: 64, offset: 6336)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !430, file: !33, line: 282, baseType: !340, size: 64, align: 64, offset: 6400)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !430, file: !33, line: 285, baseType: !324, size: 32, align: 32, offset: 6464)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !430, file: !33, line: 286, baseType: !263, size: 128, align: 64, offset: 6528)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !430, file: !33, line: 289, baseType: !100, size: 64, align: 64, offset: 6656)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !430, file: !33, line: 290, baseType: !106, size: 64, align: 64, offset: 6720)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !430, file: !33, line: 291, baseType: !324, size: 32, align: 32, offset: 6784)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !430, file: !33, line: 295, baseType: !509, size: 8, align: 8, offset: 6816)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !430, file: !33, line: 296, baseType: !647, size: 64, align: 8, offset: 6824)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 64, align: 8, elements: !513)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !430, file: !33, line: 299, baseType: !649, size: 64, align: 32, offset: 6912)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !650, line: 58, baseType: !651)
!650 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !650, line: 55, size: 64, align: 32, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !651, file: !650, line: 56, baseType: !259, size: 8, align: 8)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !651, file: !650, line: 57, baseType: !324, size: 32, align: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !430, file: !33, line: 309, baseType: !95, size: 32, align: 32, offset: 6976)
!656 = !{!657, !672}
!657 = distinct !DIGlobalVariable(name: "SMTP_FSM", scope: !0, file: !658, line: 75, type: !659, isLocal: false, isDefinition: true, variable: [10 x %struct.anon]* @SMTP_FSM)
!658 = !DIFile(filename: "smtp.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 1280, align: 64, elements: !670)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 72, size: 128, align: 64, elements: !661)
!661 = !{!662, !666}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !660, file: !658, line: 73, baseType: !663, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, align: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!95, !244}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !660, file: !658, line: 74, baseType: !667, size: 64, align: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!95, !244, !95}
!670 = !{!671}
!671 = !DISubrange(count: 10)
!672 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !490, line: 150, type: !218, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!673 = !{i32 2, !"Dwarf Version", i32 4}
!674 = !{i32 2, !"Debug Info Version", i32 3}
!675 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!676 = distinct !DISubprogram(name: "connection_error", scope: !658, file: !658, line: 108, type: !664, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!677 = !{}
!678 = !DILocalVariable(name: "thread", arg: 1, scope: !676, file: !658, line: 108, type: !244)
!679 = !DIExpression()
!680 = !DILocation(line: 108, column: 29, scope: !676)
!681 = !DILocalVariable(name: "smtp", scope: !676, file: !658, line: 110, type: !90)
!682 = !DILocation(line: 110, column: 10, scope: !676)
!683 = !DILocation(line: 110, column: 19, scope: !676)
!684 = !DILocation(line: 110, column: 28, scope: !676)
!685 = !DILocation(line: 110, column: 17, scope: !676)
!686 = !DILocation(line: 113, column: 31, scope: !676)
!687 = !DILocation(line: 113, column: 44, scope: !676)
!688 = !DILocation(line: 113, column: 10, scope: !676)
!689 = !DILocation(line: 112, column: 2, scope: !676)
!690 = !DILocation(line: 114, column: 16, scope: !676)
!691 = !DILocation(line: 114, column: 2, scope: !676)
!692 = !DILocation(line: 115, column: 2, scope: !676)
!693 = distinct !DISubprogram(name: "connection_in_progress", scope: !658, file: !658, line: 128, type: !664, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!694 = !DILocalVariable(name: "thread", arg: 1, scope: !693, file: !658, line: 128, type: !244)
!695 = !DILocation(line: 128, column: 35, scope: !693)
!696 = !DILocalVariable(name: "status", scope: !693, file: !658, line: 130, type: !95)
!697 = !DILocation(line: 130, column: 6, scope: !693)
!698 = !DILocation(line: 139, column: 28, scope: !693)
!699 = !DILocation(line: 139, column: 11, scope: !693)
!700 = !DILocation(line: 139, column: 9, scope: !693)
!701 = !DILocation(line: 141, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !693, file: !658, line: 141, column: 6)
!703 = !DILocation(line: 141, column: 13, scope: !702)
!704 = !DILocation(line: 141, column: 6, scope: !693)
!705 = !DILocation(line: 142, column: 3, scope: !702)
!706 = distinct !{!706, !705}
!707 = !DILocation(line: 142, column: 24, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !658, discriminator: 1)
!709 = distinct !DILexicalBlock(scope: !710, file: !658, line: 142, column: 12)
!710 = distinct !DILexicalBlock(scope: !702, file: !658, line: 142, column: 6)
!711 = !DILocation(line: 142, column: 15, scope: !708)
!712 = !DILocation(line: 142, column: 32, scope: !708)
!713 = !DILocation(line: 142, column: 12, scope: !708)
!714 = !DILocation(line: 142, column: 52, scope: !715)
!715 = !DILexicalBlockFile(scope: !709, file: !658, discriminator: 2)
!716 = !DILocation(line: 142, column: 43, scope: !715)
!717 = !DILocation(line: 142, column: 60, scope: !715)
!718 = !DILocation(line: 142, column: 68, scope: !715)
!719 = !DILocation(line: 142, column: 40, scope: !715)
!720 = !DILocation(line: 142, column: 77, scope: !721)
!721 = !DILexicalBlockFile(scope: !710, file: !658, discriminator: 3)
!722 = !DILocation(line: 142, column: 77, scope: !723)
!723 = !DILexicalBlockFile(scope: !710, file: !658, discriminator: 4)
!724 = !DILocation(line: 144, column: 2, scope: !693)
!725 = distinct !DISubprogram(name: "connection_timeout", scope: !658, file: !658, line: 118, type: !664, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!726 = !DILocalVariable(name: "thread", arg: 1, scope: !725, file: !658, line: 118, type: !244)
!727 = !DILocation(line: 118, column: 31, scope: !725)
!728 = !DILocalVariable(name: "smtp", scope: !725, file: !658, line: 120, type: !90)
!729 = !DILocation(line: 120, column: 10, scope: !725)
!730 = !DILocation(line: 120, column: 19, scope: !725)
!731 = !DILocation(line: 120, column: 28, scope: !725)
!732 = !DILocation(line: 120, column: 17, scope: !725)
!733 = !DILocation(line: 123, column: 31, scope: !725)
!734 = !DILocation(line: 123, column: 44, scope: !725)
!735 = !DILocation(line: 123, column: 10, scope: !725)
!736 = !DILocation(line: 122, column: 2, scope: !725)
!737 = !DILocation(line: 124, column: 16, scope: !725)
!738 = !DILocation(line: 124, column: 2, scope: !725)
!739 = !DILocation(line: 125, column: 2, scope: !725)
!740 = distinct !DISubprogram(name: "connection_success", scope: !658, file: !658, line: 147, type: !664, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!741 = !DILocalVariable(name: "thread", arg: 1, scope: !740, file: !658, line: 147, type: !244)
!742 = !DILocation(line: 147, column: 31, scope: !740)
!743 = !DILocalVariable(name: "smtp", scope: !740, file: !658, line: 149, type: !90)
!744 = !DILocation(line: 149, column: 10, scope: !740)
!745 = !DILocation(line: 149, column: 19, scope: !740)
!746 = !DILocation(line: 149, column: 28, scope: !740)
!747 = !DILocation(line: 149, column: 17, scope: !740)
!748 = !DILocation(line: 152, column: 31, scope: !740)
!749 = !DILocation(line: 152, column: 44, scope: !740)
!750 = !DILocation(line: 152, column: 10, scope: !740)
!751 = !DILocation(line: 151, column: 2, scope: !740)
!752 = !DILocation(line: 154, column: 2, scope: !740)
!753 = !DILocation(line: 154, column: 8, scope: !740)
!754 = !DILocation(line: 154, column: 14, scope: !740)
!755 = !DILocation(line: 155, column: 18, scope: !740)
!756 = !DILocation(line: 155, column: 26, scope: !740)
!757 = !DILocation(line: 155, column: 52, scope: !740)
!758 = !DILocation(line: 156, column: 4, scope: !740)
!759 = !DILocation(line: 156, column: 10, scope: !740)
!760 = !DILocation(line: 156, column: 14, scope: !740)
!761 = !DILocation(line: 156, column: 27, scope: !740)
!762 = !DILocation(line: 155, column: 2, scope: !740)
!763 = !DILocation(line: 157, column: 2, scope: !740)
!764 = distinct !DISubprogram(name: "connection_code", scope: !658, file: !658, line: 302, type: !668, isLocal: true, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!765 = !DILocalVariable(name: "thread", arg: 1, scope: !764, file: !658, line: 302, type: !244)
!766 = !DILocation(line: 302, column: 28, scope: !764)
!767 = !DILocalVariable(name: "status", arg: 2, scope: !764, file: !658, line: 302, type: !95)
!768 = !DILocation(line: 302, column: 40, scope: !764)
!769 = !DILocalVariable(name: "smtp", scope: !764, file: !658, line: 304, type: !90)
!770 = !DILocation(line: 304, column: 10, scope: !764)
!771 = !DILocation(line: 304, column: 19, scope: !764)
!772 = !DILocation(line: 304, column: 28, scope: !764)
!773 = !DILocation(line: 304, column: 17, scope: !764)
!774 = !DILocation(line: 306, column: 6, scope: !775)
!775 = distinct !DILexicalBlock(scope: !764, file: !658, line: 306, column: 6)
!776 = !DILocation(line: 306, column: 13, scope: !775)
!777 = !DILocation(line: 306, column: 6, scope: !764)
!778 = !DILocation(line: 307, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !658, line: 306, column: 21)
!780 = !DILocation(line: 307, column: 9, scope: !779)
!781 = !DILocation(line: 307, column: 14, scope: !779)
!782 = !DILocation(line: 308, column: 2, scope: !779)
!783 = !DILocation(line: 311, column: 32, scope: !784)
!784 = distinct !DILexicalBlock(scope: !775, file: !658, line: 308, column: 9)
!785 = !DILocation(line: 311, column: 45, scope: !784)
!786 = !DILocation(line: 311, column: 11, scope: !784)
!787 = !DILocation(line: 312, column: 11, scope: !784)
!788 = !DILocation(line: 309, column: 3, scope: !784)
!789 = !DILocation(line: 313, column: 3, scope: !784)
!790 = !DILocation(line: 313, column: 9, scope: !784)
!791 = !DILocation(line: 313, column: 15, scope: !784)
!792 = !DILocation(line: 316, column: 2, scope: !764)
!793 = distinct !DISubprogram(name: "helo_cmd", scope: !658, file: !658, line: 321, type: !664, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!794 = !DILocalVariable(name: "thread", arg: 1, scope: !793, file: !658, line: 321, type: !244)
!795 = !DILocation(line: 321, column: 21, scope: !793)
!796 = !DILocalVariable(name: "smtp", scope: !793, file: !658, line: 323, type: !90)
!797 = !DILocation(line: 323, column: 10, scope: !793)
!798 = !DILocation(line: 323, column: 19, scope: !793)
!799 = !DILocation(line: 323, column: 28, scope: !793)
!800 = !DILocation(line: 323, column: 17, scope: !793)
!801 = !DILocalVariable(name: "buffer", scope: !793, file: !658, line: 324, type: !100)
!802 = !DILocation(line: 324, column: 8, scope: !793)
!803 = !DILocation(line: 326, column: 21, scope: !793)
!804 = !DILocation(line: 326, column: 9, scope: !793)
!805 = !DILocation(line: 327, column: 11, scope: !793)
!806 = !DILocation(line: 327, column: 42, scope: !793)
!807 = !DILocation(line: 327, column: 55, scope: !793)
!808 = !DILocation(line: 327, column: 41, scope: !793)
!809 = !DILocation(line: 327, column: 73, scope: !810)
!810 = !DILexicalBlockFile(scope: !793, file: !658, discriminator: 1)
!811 = !DILocation(line: 327, column: 86, scope: !810)
!812 = !DILocation(line: 327, column: 41, scope: !810)
!813 = !DILocation(line: 327, column: 41, scope: !814)
!814 = !DILexicalBlockFile(scope: !793, file: !658, discriminator: 2)
!815 = !DILocation(line: 327, column: 41, scope: !816)
!816 = !DILexicalBlockFile(scope: !793, file: !658, discriminator: 3)
!817 = !DILocation(line: 327, column: 2, scope: !816)
!818 = !DILocation(line: 328, column: 11, scope: !819)
!819 = distinct !DILexicalBlock(scope: !793, file: !658, line: 328, column: 6)
!820 = !DILocation(line: 328, column: 19, scope: !819)
!821 = !DILocation(line: 328, column: 21, scope: !819)
!822 = !DILocation(line: 328, column: 25, scope: !819)
!823 = !DILocation(line: 328, column: 40, scope: !819)
!824 = !DILocation(line: 328, column: 33, scope: !819)
!825 = !DILocation(line: 328, column: 6, scope: !826)
!826 = !DILexicalBlockFile(scope: !819, file: !658, discriminator: 1)
!827 = !DILocation(line: 328, column: 52, scope: !819)
!828 = !DILocation(line: 328, column: 6, scope: !793)
!829 = !DILocation(line: 329, column: 3, scope: !819)
!830 = !DILocation(line: 329, column: 9, scope: !819)
!831 = !DILocation(line: 329, column: 15, scope: !819)
!832 = !DILocation(line: 330, column: 8, scope: !793)
!833 = !DILocation(line: 330, column: 3, scope: !793)
!834 = !DILocation(line: 330, column: 26, scope: !793)
!835 = !DILocation(line: 332, column: 2, scope: !793)
!836 = distinct !DISubprogram(name: "helo_code", scope: !658, file: !658, line: 335, type: !668, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!837 = !DILocalVariable(name: "thread", arg: 1, scope: !836, file: !658, line: 335, type: !244)
!838 = !DILocation(line: 335, column: 22, scope: !836)
!839 = !DILocalVariable(name: "status", arg: 2, scope: !836, file: !658, line: 335, type: !95)
!840 = !DILocation(line: 335, column: 34, scope: !836)
!841 = !DILocalVariable(name: "smtp", scope: !836, file: !658, line: 337, type: !90)
!842 = !DILocation(line: 337, column: 10, scope: !836)
!843 = !DILocation(line: 337, column: 19, scope: !836)
!844 = !DILocation(line: 337, column: 28, scope: !836)
!845 = !DILocation(line: 337, column: 17, scope: !836)
!846 = !DILocation(line: 339, column: 6, scope: !847)
!847 = distinct !DILexicalBlock(scope: !836, file: !658, line: 339, column: 6)
!848 = !DILocation(line: 339, column: 13, scope: !847)
!849 = !DILocation(line: 339, column: 6, scope: !836)
!850 = !DILocation(line: 340, column: 3, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !658, line: 339, column: 21)
!852 = !DILocation(line: 340, column: 9, scope: !851)
!853 = !DILocation(line: 340, column: 14, scope: !851)
!854 = !DILocation(line: 341, column: 2, scope: !851)
!855 = !DILocation(line: 344, column: 32, scope: !856)
!856 = distinct !DILexicalBlock(scope: !847, file: !658, line: 341, column: 9)
!857 = !DILocation(line: 344, column: 45, scope: !856)
!858 = !DILocation(line: 344, column: 11, scope: !856)
!859 = !DILocation(line: 345, column: 11, scope: !856)
!860 = !DILocation(line: 342, column: 3, scope: !856)
!861 = !DILocation(line: 346, column: 3, scope: !856)
!862 = !DILocation(line: 346, column: 9, scope: !856)
!863 = !DILocation(line: 346, column: 15, scope: !856)
!864 = !DILocation(line: 349, column: 2, scope: !836)
!865 = distinct !DISubprogram(name: "mail_cmd", scope: !658, file: !658, line: 354, type: !664, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!866 = !DILocalVariable(name: "thread", arg: 1, scope: !865, file: !658, line: 354, type: !244)
!867 = !DILocation(line: 354, column: 21, scope: !865)
!868 = !DILocalVariable(name: "smtp", scope: !865, file: !658, line: 356, type: !90)
!869 = !DILocation(line: 356, column: 10, scope: !865)
!870 = !DILocation(line: 356, column: 19, scope: !865)
!871 = !DILocation(line: 356, column: 28, scope: !865)
!872 = !DILocation(line: 356, column: 17, scope: !865)
!873 = !DILocalVariable(name: "buffer", scope: !865, file: !658, line: 357, type: !100)
!874 = !DILocation(line: 357, column: 8, scope: !865)
!875 = !DILocation(line: 359, column: 21, scope: !865)
!876 = !DILocation(line: 359, column: 9, scope: !865)
!877 = !DILocation(line: 360, column: 11, scope: !865)
!878 = !DILocation(line: 360, column: 48, scope: !865)
!879 = !DILocation(line: 360, column: 61, scope: !865)
!880 = !DILocation(line: 360, column: 2, scope: !865)
!881 = !DILocation(line: 361, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !865, file: !658, line: 361, column: 6)
!883 = !DILocation(line: 361, column: 19, scope: !882)
!884 = !DILocation(line: 361, column: 21, scope: !882)
!885 = !DILocation(line: 361, column: 25, scope: !882)
!886 = !DILocation(line: 361, column: 40, scope: !882)
!887 = !DILocation(line: 361, column: 33, scope: !882)
!888 = !DILocation(line: 361, column: 6, scope: !889)
!889 = !DILexicalBlockFile(scope: !882, file: !658, discriminator: 1)
!890 = !DILocation(line: 361, column: 52, scope: !882)
!891 = !DILocation(line: 361, column: 6, scope: !865)
!892 = !DILocation(line: 362, column: 3, scope: !882)
!893 = !DILocation(line: 362, column: 9, scope: !882)
!894 = !DILocation(line: 362, column: 15, scope: !882)
!895 = !DILocation(line: 363, column: 8, scope: !865)
!896 = !DILocation(line: 363, column: 3, scope: !865)
!897 = !DILocation(line: 363, column: 26, scope: !865)
!898 = !DILocation(line: 365, column: 2, scope: !865)
!899 = distinct !DISubprogram(name: "mail_code", scope: !658, file: !658, line: 368, type: !668, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!900 = !DILocalVariable(name: "thread", arg: 1, scope: !899, file: !658, line: 368, type: !244)
!901 = !DILocation(line: 368, column: 22, scope: !899)
!902 = !DILocalVariable(name: "status", arg: 2, scope: !899, file: !658, line: 368, type: !95)
!903 = !DILocation(line: 368, column: 34, scope: !899)
!904 = !DILocalVariable(name: "smtp", scope: !899, file: !658, line: 370, type: !90)
!905 = !DILocation(line: 370, column: 10, scope: !899)
!906 = !DILocation(line: 370, column: 19, scope: !899)
!907 = !DILocation(line: 370, column: 28, scope: !899)
!908 = !DILocation(line: 370, column: 17, scope: !899)
!909 = !DILocation(line: 372, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !899, file: !658, line: 372, column: 6)
!911 = !DILocation(line: 372, column: 13, scope: !910)
!912 = !DILocation(line: 372, column: 6, scope: !899)
!913 = !DILocation(line: 373, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !658, line: 372, column: 21)
!915 = !DILocation(line: 373, column: 9, scope: !914)
!916 = !DILocation(line: 373, column: 14, scope: !914)
!917 = !DILocation(line: 374, column: 2, scope: !914)
!918 = !DILocation(line: 377, column: 32, scope: !919)
!919 = distinct !DILexicalBlock(scope: !910, file: !658, line: 374, column: 9)
!920 = !DILocation(line: 377, column: 45, scope: !919)
!921 = !DILocation(line: 377, column: 11, scope: !919)
!922 = !DILocation(line: 378, column: 11, scope: !919)
!923 = !DILocation(line: 375, column: 3, scope: !919)
!924 = !DILocation(line: 379, column: 3, scope: !919)
!925 = !DILocation(line: 379, column: 9, scope: !919)
!926 = !DILocation(line: 379, column: 15, scope: !919)
!927 = !DILocation(line: 382, column: 2, scope: !899)
!928 = distinct !DISubprogram(name: "rcpt_cmd", scope: !658, file: !658, line: 387, type: !664, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!929 = !DILocalVariable(name: "thread", arg: 1, scope: !928, file: !658, line: 387, type: !244)
!930 = !DILocation(line: 387, column: 21, scope: !928)
!931 = !DILocalVariable(name: "smtp", scope: !928, file: !658, line: 389, type: !90)
!932 = !DILocation(line: 389, column: 10, scope: !928)
!933 = !DILocation(line: 389, column: 19, scope: !928)
!934 = !DILocation(line: 389, column: 28, scope: !928)
!935 = !DILocation(line: 389, column: 17, scope: !928)
!936 = !DILocalVariable(name: "buffer", scope: !928, file: !658, line: 390, type: !100)
!937 = !DILocation(line: 390, column: 8, scope: !928)
!938 = !DILocalVariable(name: "fetched_email", scope: !928, file: !658, line: 391, type: !100)
!939 = !DILocation(line: 391, column: 8, scope: !928)
!940 = !DILocation(line: 393, column: 21, scope: !928)
!941 = !DILocation(line: 393, column: 9, scope: !928)
!942 = !DILocation(line: 397, column: 35, scope: !928)
!943 = !DILocation(line: 397, column: 18, scope: !928)
!944 = !DILocation(line: 397, column: 16, scope: !928)
!945 = !DILocation(line: 399, column: 11, scope: !928)
!946 = !DILocation(line: 399, column: 46, scope: !928)
!947 = !DILocation(line: 399, column: 2, scope: !928)
!948 = !DILocation(line: 400, column: 11, scope: !949)
!949 = distinct !DILexicalBlock(scope: !928, file: !658, line: 400, column: 6)
!950 = !DILocation(line: 400, column: 19, scope: !949)
!951 = !DILocation(line: 400, column: 21, scope: !949)
!952 = !DILocation(line: 400, column: 25, scope: !949)
!953 = !DILocation(line: 400, column: 40, scope: !949)
!954 = !DILocation(line: 400, column: 33, scope: !949)
!955 = !DILocation(line: 400, column: 6, scope: !956)
!956 = !DILexicalBlockFile(scope: !949, file: !658, discriminator: 1)
!957 = !DILocation(line: 400, column: 52, scope: !949)
!958 = !DILocation(line: 400, column: 6, scope: !928)
!959 = !DILocation(line: 401, column: 3, scope: !949)
!960 = !DILocation(line: 401, column: 9, scope: !949)
!961 = !DILocation(line: 401, column: 15, scope: !949)
!962 = !DILocation(line: 402, column: 8, scope: !928)
!963 = !DILocation(line: 402, column: 3, scope: !928)
!964 = !DILocation(line: 402, column: 26, scope: !928)
!965 = !DILocation(line: 404, column: 2, scope: !928)
!966 = distinct !DISubprogram(name: "rcpt_code", scope: !658, file: !658, line: 407, type: !668, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!967 = !DILocalVariable(name: "thread", arg: 1, scope: !966, file: !658, line: 407, type: !244)
!968 = !DILocation(line: 407, column: 22, scope: !966)
!969 = !DILocalVariable(name: "status", arg: 2, scope: !966, file: !658, line: 407, type: !95)
!970 = !DILocation(line: 407, column: 34, scope: !966)
!971 = !DILocalVariable(name: "smtp", scope: !966, file: !658, line: 409, type: !90)
!972 = !DILocation(line: 409, column: 10, scope: !966)
!973 = !DILocation(line: 409, column: 19, scope: !966)
!974 = !DILocation(line: 409, column: 28, scope: !966)
!975 = !DILocation(line: 409, column: 17, scope: !966)
!976 = !DILocalVariable(name: "fetched_email", scope: !966, file: !658, line: 410, type: !100)
!977 = !DILocation(line: 410, column: 8, scope: !966)
!978 = !DILocation(line: 412, column: 6, scope: !979)
!979 = distinct !DILexicalBlock(scope: !966, file: !658, line: 412, column: 6)
!980 = !DILocation(line: 412, column: 13, scope: !979)
!981 = !DILocation(line: 412, column: 6, scope: !966)
!982 = !DILocation(line: 413, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !658, line: 412, column: 21)
!984 = !DILocation(line: 413, column: 9, scope: !983)
!985 = !DILocation(line: 413, column: 17, scope: !983)
!986 = !DILocation(line: 415, column: 36, scope: !983)
!987 = !DILocation(line: 415, column: 19, scope: !983)
!988 = !DILocation(line: 415, column: 17, scope: !983)
!989 = !DILocation(line: 417, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !658, line: 417, column: 7)
!991 = !DILocation(line: 417, column: 7, scope: !983)
!992 = !DILocation(line: 418, column: 4, scope: !990)
!993 = !DILocation(line: 418, column: 10, scope: !990)
!994 = !DILocation(line: 418, column: 15, scope: !990)
!995 = !DILocation(line: 419, column: 2, scope: !983)
!996 = !DILocation(line: 422, column: 32, scope: !997)
!997 = distinct !DILexicalBlock(scope: !979, file: !658, line: 419, column: 9)
!998 = !DILocation(line: 422, column: 45, scope: !997)
!999 = !DILocation(line: 422, column: 11, scope: !997)
!1000 = !DILocation(line: 423, column: 11, scope: !997)
!1001 = !DILocation(line: 420, column: 3, scope: !997)
!1002 = !DILocation(line: 424, column: 3, scope: !997)
!1003 = !DILocation(line: 424, column: 9, scope: !997)
!1004 = !DILocation(line: 424, column: 15, scope: !997)
!1005 = !DILocation(line: 427, column: 2, scope: !966)
!1006 = distinct !DISubprogram(name: "data_cmd", scope: !658, file: !658, line: 432, type: !664, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1007 = !DILocalVariable(name: "thread", arg: 1, scope: !1006, file: !658, line: 432, type: !244)
!1008 = !DILocation(line: 432, column: 21, scope: !1006)
!1009 = !DILocalVariable(name: "smtp", scope: !1006, file: !658, line: 434, type: !90)
!1010 = !DILocation(line: 434, column: 10, scope: !1006)
!1011 = !DILocation(line: 434, column: 19, scope: !1006)
!1012 = !DILocation(line: 434, column: 28, scope: !1006)
!1013 = !DILocation(line: 434, column: 17, scope: !1006)
!1014 = !DILocation(line: 436, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1006, file: !658, line: 436, column: 6)
!1016 = !DILocation(line: 436, column: 19, scope: !1015)
!1017 = !DILocation(line: 436, column: 21, scope: !1015)
!1018 = !DILocation(line: 436, column: 6, scope: !1015)
!1019 = !DILocation(line: 436, column: 60, scope: !1015)
!1020 = !DILocation(line: 436, column: 6, scope: !1006)
!1021 = !DILocation(line: 437, column: 3, scope: !1015)
!1022 = !DILocation(line: 437, column: 9, scope: !1015)
!1023 = !DILocation(line: 437, column: 15, scope: !1015)
!1024 = !DILocation(line: 438, column: 2, scope: !1006)
!1025 = distinct !DISubprogram(name: "data_code", scope: !658, file: !658, line: 441, type: !668, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1026 = !DILocalVariable(name: "thread", arg: 1, scope: !1025, file: !658, line: 441, type: !244)
!1027 = !DILocation(line: 441, column: 22, scope: !1025)
!1028 = !DILocalVariable(name: "status", arg: 2, scope: !1025, file: !658, line: 441, type: !95)
!1029 = !DILocation(line: 441, column: 34, scope: !1025)
!1030 = !DILocalVariable(name: "smtp", scope: !1025, file: !658, line: 443, type: !90)
!1031 = !DILocation(line: 443, column: 10, scope: !1025)
!1032 = !DILocation(line: 443, column: 19, scope: !1025)
!1033 = !DILocation(line: 443, column: 28, scope: !1025)
!1034 = !DILocation(line: 443, column: 17, scope: !1025)
!1035 = !DILocation(line: 445, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1025, file: !658, line: 445, column: 6)
!1037 = !DILocation(line: 445, column: 13, scope: !1036)
!1038 = !DILocation(line: 445, column: 6, scope: !1025)
!1039 = !DILocation(line: 446, column: 3, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !658, line: 445, column: 21)
!1041 = !DILocation(line: 446, column: 9, scope: !1040)
!1042 = !DILocation(line: 446, column: 14, scope: !1040)
!1043 = !DILocation(line: 447, column: 2, scope: !1040)
!1044 = !DILocation(line: 450, column: 32, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1036, file: !658, line: 447, column: 9)
!1046 = !DILocation(line: 450, column: 45, scope: !1045)
!1047 = !DILocation(line: 450, column: 11, scope: !1045)
!1048 = !DILocation(line: 451, column: 11, scope: !1045)
!1049 = !DILocation(line: 448, column: 3, scope: !1045)
!1050 = !DILocation(line: 452, column: 3, scope: !1045)
!1051 = !DILocation(line: 452, column: 9, scope: !1045)
!1052 = !DILocation(line: 452, column: 15, scope: !1045)
!1053 = !DILocation(line: 455, column: 2, scope: !1025)
!1054 = distinct !DISubprogram(name: "body_cmd", scope: !658, file: !658, line: 463, type: !664, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1055 = !DILocalVariable(name: "thread", arg: 1, scope: !1054, file: !658, line: 463, type: !244)
!1056 = !DILocation(line: 463, column: 21, scope: !1054)
!1057 = !DILocalVariable(name: "smtp", scope: !1054, file: !658, line: 465, type: !90)
!1058 = !DILocation(line: 465, column: 10, scope: !1054)
!1059 = !DILocation(line: 465, column: 19, scope: !1054)
!1060 = !DILocation(line: 465, column: 28, scope: !1054)
!1061 = !DILocation(line: 465, column: 17, scope: !1054)
!1062 = !DILocalVariable(name: "buffer", scope: !1054, file: !658, line: 466, type: !100)
!1063 = !DILocation(line: 466, column: 8, scope: !1054)
!1064 = !DILocalVariable(name: "rfc822", scope: !1054, file: !658, line: 467, type: !1065)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 640, align: 8, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 80)
!1068 = !DILocation(line: 467, column: 7, scope: !1054)
!1069 = !DILocalVariable(name: "now", scope: !1054, file: !658, line: 468, type: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1071, line: 75, baseType: !269)
!1071 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1072 = !DILocation(line: 468, column: 9, scope: !1054)
!1073 = !DILocalVariable(name: "t", scope: !1054, file: !658, line: 469, type: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64, align: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !1071, line: 133, size: 448, align: 64, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !1075, file: !1071, line: 135, baseType: !95, size: 32, align: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !1075, file: !1071, line: 136, baseType: !95, size: 32, align: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !1075, file: !1071, line: 137, baseType: !95, size: 32, align: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !1075, file: !1071, line: 138, baseType: !95, size: 32, align: 32, offset: 96)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !1075, file: !1071, line: 139, baseType: !95, size: 32, align: 32, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !1075, file: !1071, line: 140, baseType: !95, size: 32, align: 32, offset: 160)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !1075, file: !1071, line: 141, baseType: !95, size: 32, align: 32, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !1075, file: !1071, line: 142, baseType: !95, size: 32, align: 32, offset: 224)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !1075, file: !1071, line: 143, baseType: !95, size: 32, align: 32, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !1075, file: !1071, line: 146, baseType: !154, size: 64, align: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !1075, file: !1071, line: 147, baseType: !1088, size: 64, align: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64, align: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1090 = !DILocation(line: 469, column: 13, scope: !1054)
!1091 = !DILocation(line: 471, column: 21, scope: !1054)
!1092 = !DILocation(line: 471, column: 9, scope: !1054)
!1093 = !DILocation(line: 473, column: 2, scope: !1054)
!1094 = !DILocation(line: 474, column: 6, scope: !1054)
!1095 = !DILocation(line: 474, column: 4, scope: !1054)
!1096 = !DILocation(line: 475, column: 11, scope: !1054)
!1097 = !DILocation(line: 475, column: 63, scope: !1054)
!1098 = !DILocation(line: 475, column: 2, scope: !1054)
!1099 = !DILocation(line: 477, column: 11, scope: !1054)
!1100 = !DILocation(line: 478, column: 4, scope: !1054)
!1101 = !DILocation(line: 478, column: 12, scope: !1054)
!1102 = !DILocation(line: 478, column: 25, scope: !1054)
!1103 = !DILocation(line: 478, column: 37, scope: !1054)
!1104 = !DILocation(line: 478, column: 43, scope: !1054)
!1105 = !DILocation(line: 478, column: 52, scope: !1054)
!1106 = !DILocation(line: 478, column: 58, scope: !1054)
!1107 = !DILocation(line: 477, column: 2, scope: !1054)
!1108 = !DILocation(line: 481, column: 11, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1054, file: !658, line: 481, column: 6)
!1110 = !DILocation(line: 481, column: 19, scope: !1109)
!1111 = !DILocation(line: 481, column: 21, scope: !1109)
!1112 = !DILocation(line: 481, column: 25, scope: !1109)
!1113 = !DILocation(line: 481, column: 40, scope: !1109)
!1114 = !DILocation(line: 481, column: 33, scope: !1109)
!1115 = !DILocation(line: 481, column: 6, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1109, file: !658, discriminator: 1)
!1117 = !DILocation(line: 481, column: 52, scope: !1109)
!1118 = !DILocation(line: 481, column: 6, scope: !1054)
!1119 = !DILocation(line: 482, column: 3, scope: !1109)
!1120 = !DILocation(line: 482, column: 9, scope: !1109)
!1121 = !DILocation(line: 482, column: 15, scope: !1109)
!1122 = !DILocation(line: 484, column: 9, scope: !1054)
!1123 = !DILocation(line: 484, column: 2, scope: !1054)
!1124 = !DILocation(line: 485, column: 11, scope: !1054)
!1125 = !DILocation(line: 485, column: 36, scope: !1054)
!1126 = !DILocation(line: 485, column: 42, scope: !1054)
!1127 = !DILocation(line: 485, column: 2, scope: !1054)
!1128 = !DILocation(line: 488, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1054, file: !658, line: 488, column: 6)
!1130 = !DILocation(line: 488, column: 19, scope: !1129)
!1131 = !DILocation(line: 488, column: 21, scope: !1129)
!1132 = !DILocation(line: 488, column: 25, scope: !1129)
!1133 = !DILocation(line: 488, column: 40, scope: !1129)
!1134 = !DILocation(line: 488, column: 33, scope: !1129)
!1135 = !DILocation(line: 488, column: 6, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1129, file: !658, discriminator: 1)
!1137 = !DILocation(line: 488, column: 52, scope: !1129)
!1138 = !DILocation(line: 488, column: 6, scope: !1054)
!1139 = !DILocation(line: 489, column: 3, scope: !1129)
!1140 = !DILocation(line: 489, column: 9, scope: !1129)
!1141 = !DILocation(line: 489, column: 15, scope: !1129)
!1142 = !DILocation(line: 492, column: 11, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1054, file: !658, line: 492, column: 6)
!1144 = !DILocation(line: 492, column: 19, scope: !1143)
!1145 = !DILocation(line: 492, column: 21, scope: !1143)
!1146 = !DILocation(line: 492, column: 6, scope: !1143)
!1147 = !DILocation(line: 492, column: 62, scope: !1143)
!1148 = !DILocation(line: 492, column: 6, scope: !1054)
!1149 = !DILocation(line: 493, column: 3, scope: !1143)
!1150 = !DILocation(line: 493, column: 9, scope: !1143)
!1151 = !DILocation(line: 493, column: 15, scope: !1143)
!1152 = !DILocation(line: 495, column: 8, scope: !1054)
!1153 = !DILocation(line: 495, column: 3, scope: !1054)
!1154 = !DILocation(line: 495, column: 26, scope: !1054)
!1155 = !DILocation(line: 496, column: 2, scope: !1054)
!1156 = distinct !DISubprogram(name: "body_code", scope: !658, file: !658, line: 499, type: !668, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1157 = !DILocalVariable(name: "thread", arg: 1, scope: !1156, file: !658, line: 499, type: !244)
!1158 = !DILocation(line: 499, column: 22, scope: !1156)
!1159 = !DILocalVariable(name: "status", arg: 2, scope: !1156, file: !658, line: 499, type: !95)
!1160 = !DILocation(line: 499, column: 34, scope: !1156)
!1161 = !DILocalVariable(name: "smtp", scope: !1156, file: !658, line: 501, type: !90)
!1162 = !DILocation(line: 501, column: 10, scope: !1156)
!1163 = !DILocation(line: 501, column: 19, scope: !1156)
!1164 = !DILocation(line: 501, column: 28, scope: !1156)
!1165 = !DILocation(line: 501, column: 17, scope: !1156)
!1166 = !DILocation(line: 503, column: 6, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1156, file: !658, line: 503, column: 6)
!1168 = !DILocation(line: 503, column: 13, scope: !1167)
!1169 = !DILocation(line: 503, column: 6, scope: !1156)
!1170 = !DILocation(line: 504, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !658, line: 503, column: 21)
!1172 = !DILocation(line: 505, column: 3, scope: !1171)
!1173 = !DILocation(line: 505, column: 9, scope: !1171)
!1174 = !DILocation(line: 505, column: 14, scope: !1171)
!1175 = !DILocation(line: 506, column: 2, scope: !1171)
!1176 = !DILocation(line: 509, column: 32, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1167, file: !658, line: 506, column: 9)
!1178 = !DILocation(line: 509, column: 45, scope: !1177)
!1179 = !DILocation(line: 509, column: 11, scope: !1177)
!1180 = !DILocation(line: 510, column: 11, scope: !1177)
!1181 = !DILocation(line: 507, column: 3, scope: !1177)
!1182 = !DILocation(line: 511, column: 3, scope: !1177)
!1183 = !DILocation(line: 511, column: 9, scope: !1177)
!1184 = !DILocation(line: 511, column: 15, scope: !1177)
!1185 = !DILocation(line: 514, column: 2, scope: !1156)
!1186 = distinct !DISubprogram(name: "quit_cmd", scope: !658, file: !658, line: 519, type: !664, isLocal: true, isDefinition: true, scopeLine: 520, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1187 = !DILocalVariable(name: "thread", arg: 1, scope: !1186, file: !658, line: 519, type: !244)
!1188 = !DILocation(line: 519, column: 21, scope: !1186)
!1189 = !DILocalVariable(name: "smtp", scope: !1186, file: !658, line: 521, type: !90)
!1190 = !DILocation(line: 521, column: 10, scope: !1186)
!1191 = !DILocation(line: 521, column: 19, scope: !1186)
!1192 = !DILocation(line: 521, column: 28, scope: !1186)
!1193 = !DILocation(line: 521, column: 17, scope: !1186)
!1194 = !DILocation(line: 523, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1186, file: !658, line: 523, column: 6)
!1196 = !DILocation(line: 523, column: 19, scope: !1195)
!1197 = !DILocation(line: 523, column: 21, scope: !1195)
!1198 = !DILocation(line: 523, column: 6, scope: !1195)
!1199 = !DILocation(line: 523, column: 60, scope: !1195)
!1200 = !DILocation(line: 523, column: 6, scope: !1186)
!1201 = !DILocation(line: 524, column: 3, scope: !1195)
!1202 = !DILocation(line: 524, column: 9, scope: !1195)
!1203 = !DILocation(line: 524, column: 15, scope: !1195)
!1204 = !DILocation(line: 526, column: 3, scope: !1195)
!1205 = !DILocation(line: 526, column: 9, scope: !1195)
!1206 = !DILocation(line: 526, column: 14, scope: !1195)
!1207 = !DILocation(line: 527, column: 2, scope: !1186)
!1208 = distinct !DISubprogram(name: "quit_code", scope: !658, file: !658, line: 531, type: !668, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1209 = !DILocalVariable(name: "thread", arg: 1, scope: !1208, file: !658, line: 531, type: !244)
!1210 = !DILocation(line: 531, column: 22, scope: !1208)
!1211 = !DILocalVariable(name: "status", arg: 2, scope: !1208, file: !658, line: 531, type: !95)
!1212 = !DILocation(line: 531, column: 58, scope: !1208)
!1213 = !DILocalVariable(name: "smtp", scope: !1208, file: !658, line: 533, type: !90)
!1214 = !DILocation(line: 533, column: 10, scope: !1208)
!1215 = !DILocation(line: 533, column: 19, scope: !1208)
!1216 = !DILocation(line: 533, column: 28, scope: !1208)
!1217 = !DILocation(line: 533, column: 17, scope: !1208)
!1218 = !DILocation(line: 536, column: 16, scope: !1208)
!1219 = !DILocation(line: 536, column: 2, scope: !1208)
!1220 = !DILocation(line: 537, column: 18, scope: !1208)
!1221 = !DILocation(line: 537, column: 2, scope: !1208)
!1222 = !DILocation(line: 538, column: 2, scope: !1208)
!1223 = distinct !DISubprogram(name: "smtp_alert", scope: !658, file: !658, line: 648, type: !1224, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !1226, !89, !1088, !1088}
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "smtp_msg_t", file: !25, line: 67, baseType: !24)
!1227 = !DILocalVariable(name: "msg_type", arg: 1, scope: !1223, file: !658, line: 648, type: !1226)
!1228 = !DILocation(line: 648, column: 23, scope: !1223)
!1229 = !DILocalVariable(name: "data", arg: 2, scope: !1223, file: !658, line: 648, type: !89)
!1230 = !DILocation(line: 648, column: 39, scope: !1223)
!1231 = !DILocalVariable(name: "subject", arg: 3, scope: !1223, file: !658, line: 648, type: !1088)
!1232 = !DILocation(line: 648, column: 57, scope: !1223)
!1233 = !DILocalVariable(name: "body", arg: 4, scope: !1223, file: !658, line: 648, type: !1088)
!1234 = !DILocation(line: 648, column: 78, scope: !1223)
!1235 = !DILocalVariable(name: "smtp", scope: !1223, file: !658, line: 650, type: !90)
!1236 = !DILocation(line: 650, column: 10, scope: !1223)
!1237 = !DILocalVariable(name: "vrrp", scope: !1223, file: !658, line: 652, type: !428)
!1238 = !DILocation(line: 652, column: 10, scope: !1223)
!1239 = !DILocalVariable(name: "vgroup", scope: !1223, file: !658, line: 653, type: !435)
!1240 = !DILocation(line: 653, column: 17, scope: !1223)
!1241 = !DILocalVariable(name: "checker", scope: !1223, file: !658, line: 656, type: !109)
!1242 = !DILocation(line: 656, column: 13, scope: !1223)
!1243 = !DILocalVariable(name: "vs", scope: !1223, file: !658, line: 657, type: !297)
!1244 = !DILocation(line: 657, column: 20, scope: !1223)
!1245 = !DILocalVariable(name: "rs_info", scope: !1223, file: !658, line: 658, type: !422)
!1246 = !DILocation(line: 658, column: 11, scope: !1223)
!1247 = !DILocation(line: 662, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1223, file: !658, line: 662, column: 6)
!1249 = !DILocation(line: 662, column: 21, scope: !1248)
!1250 = !DILocation(line: 662, column: 28, scope: !1248)
!1251 = !DILocation(line: 662, column: 5, scope: !1248)
!1252 = !DILocation(line: 662, column: 10, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1248, file: !658, discriminator: 1)
!1254 = !DILocation(line: 662, column: 23, scope: !1253)
!1255 = !DILocation(line: 662, column: 31, scope: !1253)
!1256 = !DILocation(line: 662, column: 36, scope: !1253)
!1257 = !DILocation(line: 662, column: 5, scope: !1253)
!1258 = !DILocation(line: 662, column: 9, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1248, file: !658, discriminator: 2)
!1260 = !DILocation(line: 662, column: 22, scope: !1259)
!1261 = !DILocation(line: 662, column: 30, scope: !1259)
!1262 = !DILocation(line: 662, column: 35, scope: !1259)
!1263 = !DILocation(line: 662, column: 8, scope: !1259)
!1264 = !DILocation(line: 662, column: 12, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1248, file: !658, discriminator: 3)
!1266 = !DILocation(line: 662, column: 25, scope: !1265)
!1267 = !DILocation(line: 662, column: 37, scope: !1265)
!1268 = !DILocation(line: 662, column: 6, scope: !1265)
!1269 = !DILocation(line: 663, column: 3, scope: !1248)
!1270 = !DILocation(line: 666, column: 21, scope: !1223)
!1271 = !DILocation(line: 666, column: 9, scope: !1223)
!1272 = !DILocation(line: 666, column: 7, scope: !1223)
!1273 = !DILocation(line: 667, column: 28, scope: !1223)
!1274 = !DILocation(line: 667, column: 2, scope: !1223)
!1275 = !DILocation(line: 667, column: 8, scope: !1223)
!1276 = !DILocation(line: 667, column: 16, scope: !1223)
!1277 = !DILocation(line: 668, column: 25, scope: !1223)
!1278 = !DILocation(line: 668, column: 2, scope: !1223)
!1279 = !DILocation(line: 668, column: 8, scope: !1223)
!1280 = !DILocation(line: 668, column: 13, scope: !1223)
!1281 = !DILocation(line: 669, column: 27, scope: !1223)
!1282 = !DILocation(line: 669, column: 2, scope: !1223)
!1283 = !DILocation(line: 669, column: 8, scope: !1223)
!1284 = !DILocation(line: 669, column: 15, scope: !1223)
!1285 = !DILocation(line: 670, column: 29, scope: !1223)
!1286 = !DILocation(line: 670, column: 2, scope: !1223)
!1287 = !DILocation(line: 670, column: 8, scope: !1223)
!1288 = !DILocation(line: 670, column: 17, scope: !1223)
!1289 = !DILocation(line: 674, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1223, file: !658, line: 674, column: 6)
!1291 = !DILocation(line: 674, column: 15, scope: !1290)
!1292 = !DILocation(line: 674, column: 6, scope: !1223)
!1293 = !DILocation(line: 675, column: 26, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !658, line: 674, column: 31)
!1295 = !DILocation(line: 675, column: 13, scope: !1294)
!1296 = !DILocation(line: 675, column: 11, scope: !1294)
!1297 = !DILocation(line: 676, column: 12, scope: !1294)
!1298 = !DILocation(line: 676, column: 18, scope: !1294)
!1299 = !DILocation(line: 677, column: 6, scope: !1294)
!1300 = !DILocation(line: 677, column: 19, scope: !1294)
!1301 = !DILocation(line: 678, column: 30, scope: !1294)
!1302 = !DILocation(line: 678, column: 39, scope: !1294)
!1303 = !DILocation(line: 678, column: 44, scope: !1294)
!1304 = !DILocation(line: 678, column: 51, scope: !1294)
!1305 = !DILocation(line: 678, column: 60, scope: !1294)
!1306 = !DILocation(line: 678, column: 65, scope: !1294)
!1307 = !DILocation(line: 678, column: 7, scope: !1294)
!1308 = !DILocation(line: 679, column: 18, scope: !1294)
!1309 = !DILocation(line: 679, column: 27, scope: !1294)
!1310 = !DILocation(line: 679, column: 7, scope: !1294)
!1311 = !DILocation(line: 680, column: 6, scope: !1294)
!1312 = !DILocation(line: 680, column: 15, scope: !1294)
!1313 = !DILocation(line: 680, column: 19, scope: !1294)
!1314 = !DILocation(line: 676, column: 3, scope: !1294)
!1315 = !DILocation(line: 681, column: 2, scope: !1294)
!1316 = !DILocation(line: 682, column: 11, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1290, file: !658, line: 682, column: 11)
!1318 = !DILocation(line: 682, column: 20, scope: !1317)
!1319 = !DILocation(line: 682, column: 11, scope: !1290)
!1320 = !DILocation(line: 683, column: 28, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !658, line: 682, column: 36)
!1322 = !DILocation(line: 683, column: 8, scope: !1321)
!1323 = !DILocation(line: 683, column: 6, scope: !1321)
!1324 = !DILocation(line: 684, column: 12, scope: !1321)
!1325 = !DILocation(line: 684, column: 18, scope: !1321)
!1326 = !DILocation(line: 685, column: 6, scope: !1321)
!1327 = !DILocation(line: 685, column: 19, scope: !1321)
!1328 = !DILocation(line: 686, column: 18, scope: !1321)
!1329 = !DILocation(line: 686, column: 7, scope: !1321)
!1330 = !DILocation(line: 687, column: 6, scope: !1321)
!1331 = !DILocation(line: 684, column: 3, scope: !1321)
!1332 = !DILocation(line: 688, column: 2, scope: !1321)
!1333 = !DILocation(line: 689, column: 11, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1317, file: !658, line: 689, column: 11)
!1335 = !DILocation(line: 689, column: 20, scope: !1334)
!1336 = !DILocation(line: 689, column: 11, scope: !1317)
!1337 = !DILocation(line: 690, column: 24, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !658, line: 689, column: 41)
!1339 = !DILocation(line: 690, column: 13, scope: !1338)
!1340 = !DILocation(line: 690, column: 11, scope: !1338)
!1341 = !DILocation(line: 691, column: 12, scope: !1338)
!1342 = !DILocation(line: 691, column: 18, scope: !1338)
!1343 = !DILocation(line: 692, column: 6, scope: !1338)
!1344 = !DILocation(line: 692, column: 19, scope: !1338)
!1345 = !DILocation(line: 693, column: 30, scope: !1338)
!1346 = !DILocation(line: 693, column: 39, scope: !1338)
!1347 = !DILocation(line: 693, column: 44, scope: !1338)
!1348 = !DILocation(line: 693, column: 51, scope: !1338)
!1349 = !DILocation(line: 693, column: 60, scope: !1338)
!1350 = !DILocation(line: 693, column: 65, scope: !1338)
!1351 = !DILocation(line: 693, column: 7, scope: !1338)
!1352 = !DILocation(line: 694, column: 18, scope: !1338)
!1353 = !DILocation(line: 694, column: 27, scope: !1338)
!1354 = !DILocation(line: 694, column: 7, scope: !1338)
!1355 = !DILocation(line: 695, column: 6, scope: !1338)
!1356 = !DILocation(line: 691, column: 3, scope: !1338)
!1357 = !DILocation(line: 696, column: 2, scope: !1338)
!1358 = !DILocation(line: 700, column: 6, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1334, file: !658, line: 700, column: 6)
!1360 = !DILocation(line: 700, column: 15, scope: !1359)
!1361 = !DILocation(line: 700, column: 6, scope: !1334)
!1362 = !DILocation(line: 701, column: 20, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !658, line: 700, column: 33)
!1364 = !DILocation(line: 701, column: 10, scope: !1363)
!1365 = !DILocation(line: 701, column: 8, scope: !1363)
!1366 = !DILocation(line: 702, column: 12, scope: !1363)
!1367 = !DILocation(line: 702, column: 18, scope: !1363)
!1368 = !DILocation(line: 703, column: 6, scope: !1363)
!1369 = !DILocation(line: 703, column: 19, scope: !1363)
!1370 = !DILocation(line: 704, column: 6, scope: !1363)
!1371 = !DILocation(line: 704, column: 12, scope: !1363)
!1372 = !DILocation(line: 705, column: 6, scope: !1363)
!1373 = !DILocation(line: 702, column: 3, scope: !1363)
!1374 = !DILocation(line: 706, column: 2, scope: !1363)
!1375 = !DILocation(line: 706, column: 13, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1377, file: !658, discriminator: 1)
!1377 = distinct !DILexicalBlock(scope: !1359, file: !658, line: 706, column: 13)
!1378 = !DILocation(line: 706, column: 22, scope: !1376)
!1379 = !DILocation(line: 707, column: 29, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !658, line: 706, column: 42)
!1381 = !DILocation(line: 707, column: 12, scope: !1380)
!1382 = !DILocation(line: 707, column: 10, scope: !1380)
!1383 = !DILocation(line: 708, column: 12, scope: !1380)
!1384 = !DILocation(line: 708, column: 18, scope: !1380)
!1385 = !DILocation(line: 709, column: 6, scope: !1380)
!1386 = !DILocation(line: 709, column: 19, scope: !1380)
!1387 = !DILocation(line: 710, column: 6, scope: !1380)
!1388 = !DILocation(line: 710, column: 14, scope: !1380)
!1389 = !DILocation(line: 711, column: 6, scope: !1380)
!1390 = !DILocation(line: 708, column: 3, scope: !1380)
!1391 = !DILocation(line: 712, column: 2, scope: !1380)
!1392 = !DILocation(line: 715, column: 6, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1377, file: !658, line: 715, column: 6)
!1394 = !DILocation(line: 715, column: 19, scope: !1393)
!1395 = !DILocation(line: 715, column: 6, scope: !1377)
!1396 = !DILocation(line: 716, column: 12, scope: !1393)
!1397 = !DILocation(line: 716, column: 18, scope: !1393)
!1398 = !DILocation(line: 717, column: 13, scope: !1393)
!1399 = !DILocation(line: 717, column: 26, scope: !1393)
!1400 = !DILocation(line: 718, column: 13, scope: !1393)
!1401 = !DILocation(line: 716, column: 3, scope: !1393)
!1402 = !DILocation(line: 720, column: 12, scope: !1393)
!1403 = !DILocation(line: 720, column: 18, scope: !1393)
!1404 = !DILocation(line: 720, column: 38, scope: !1393)
!1405 = !DILocation(line: 720, column: 3, scope: !1393)
!1406 = !DILocation(line: 722, column: 10, scope: !1223)
!1407 = !DILocation(line: 722, column: 16, scope: !1223)
!1408 = !DILocation(line: 722, column: 22, scope: !1223)
!1409 = !DILocation(line: 722, column: 2, scope: !1223)
!1410 = !DILocation(line: 723, column: 2, scope: !1223)
!1411 = !DILocation(line: 723, column: 8, scope: !1223)
!1412 = !DILocation(line: 723, column: 21, scope: !1223)
!1413 = !DILocation(line: 725, column: 29, scope: !1223)
!1414 = !DILocation(line: 725, column: 2, scope: !1223)
!1415 = !DILocation(line: 732, column: 15, scope: !1223)
!1416 = !DILocation(line: 732, column: 2, scope: !1223)
!1417 = !DILocation(line: 733, column: 1, scope: !1223)
!1418 = !DILocation(line: 733, column: 1, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1223, file: !658, discriminator: 1)
!1420 = distinct !DISubprogram(name: "build_to_header_rcpt_addrs", scope: !658, file: !658, line: 601, type: !1421, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !90}
!1423 = !DILocalVariable(name: "smtp", arg: 1, scope: !1420, file: !658, line: 601, type: !90)
!1424 = !DILocation(line: 601, column: 36, scope: !1420)
!1425 = !DILocalVariable(name: "fetched_email", scope: !1420, file: !658, line: 603, type: !100)
!1426 = !DILocation(line: 603, column: 8, scope: !1420)
!1427 = !DILocalVariable(name: "email_to_addrs", scope: !1420, file: !658, line: 604, type: !100)
!1428 = !DILocation(line: 604, column: 8, scope: !1420)
!1429 = !DILocalVariable(name: "bytes_available", scope: !1420, file: !658, line: 605, type: !106)
!1430 = !DILocation(line: 605, column: 9, scope: !1420)
!1431 = !DILocalVariable(name: "bytes_to_write", scope: !1420, file: !658, line: 606, type: !106)
!1432 = !DILocation(line: 606, column: 9, scope: !1420)
!1433 = !DILocation(line: 608, column: 6, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1420, file: !658, line: 608, column: 6)
!1435 = !DILocation(line: 608, column: 11, scope: !1434)
!1436 = !DILocation(line: 608, column: 6, scope: !1420)
!1437 = !DILocation(line: 609, column: 3, scope: !1434)
!1438 = !DILocation(line: 611, column: 19, scope: !1420)
!1439 = !DILocation(line: 611, column: 25, scope: !1420)
!1440 = !DILocation(line: 611, column: 17, scope: !1420)
!1441 = !DILocation(line: 612, column: 2, scope: !1420)
!1442 = !DILocation(line: 612, column: 8, scope: !1420)
!1443 = !DILocation(line: 612, column: 17, scope: !1420)
!1444 = !DILocation(line: 614, column: 2, scope: !1420)
!1445 = !DILocation(line: 615, column: 36, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1420, file: !658, line: 614, column: 12)
!1447 = !DILocation(line: 615, column: 19, scope: !1446)
!1448 = !DILocation(line: 615, column: 17, scope: !1446)
!1449 = !DILocation(line: 616, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !658, line: 616, column: 7)
!1451 = !DILocation(line: 616, column: 21, scope: !1450)
!1452 = !DILocation(line: 616, column: 7, scope: !1446)
!1453 = !DILocation(line: 617, column: 4, scope: !1450)
!1454 = !DILocation(line: 619, column: 27, scope: !1446)
!1455 = !DILocation(line: 619, column: 20, scope: !1446)
!1456 = !DILocation(line: 619, column: 18, scope: !1446)
!1457 = !DILocation(line: 620, column: 8, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1446, file: !658, line: 620, column: 7)
!1459 = !DILocation(line: 620, column: 14, scope: !1458)
!1460 = !DILocation(line: 620, column: 7, scope: !1446)
!1461 = !DILocation(line: 621, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !658, line: 621, column: 8)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !658, line: 620, column: 24)
!1464 = !DILocation(line: 621, column: 26, scope: !1462)
!1465 = !DILocation(line: 621, column: 24, scope: !1462)
!1466 = !DILocation(line: 621, column: 8, scope: !1463)
!1467 = !DILocation(line: 622, column: 5, scope: !1462)
!1468 = !DILocation(line: 623, column: 3, scope: !1463)
!1469 = !DILocation(line: 624, column: 8, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !658, line: 624, column: 8)
!1471 = distinct !DILexicalBlock(scope: !1458, file: !658, line: 623, column: 10)
!1472 = !DILocation(line: 624, column: 30, scope: !1470)
!1473 = !DILocation(line: 624, column: 28, scope: !1470)
!1474 = !DILocation(line: 624, column: 24, scope: !1470)
!1475 = !DILocation(line: 624, column: 8, scope: !1471)
!1476 = !DILocation(line: 625, column: 5, scope: !1470)
!1477 = !DILocation(line: 628, column: 19, scope: !1471)
!1478 = !DILocation(line: 628, column: 22, scope: !1471)
!1479 = !DILocation(line: 629, column: 19, scope: !1471)
!1480 = !DILocation(line: 629, column: 22, scope: !1471)
!1481 = !DILocation(line: 630, column: 20, scope: !1471)
!1482 = !DILocation(line: 633, column: 16, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1446, file: !658, line: 633, column: 7)
!1484 = !DILocation(line: 633, column: 32, scope: !1483)
!1485 = !DILocation(line: 633, column: 47, scope: !1483)
!1486 = !DILocation(line: 633, column: 58, scope: !1483)
!1487 = !DILocation(line: 633, column: 7, scope: !1483)
!1488 = !DILocation(line: 633, column: 81, scope: !1483)
!1489 = !DILocation(line: 633, column: 76, scope: !1483)
!1490 = !DILocation(line: 633, column: 73, scope: !1483)
!1491 = !DILocation(line: 633, column: 7, scope: !1446)
!1492 = !DILocation(line: 635, column: 4, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1483, file: !658, line: 633, column: 97)
!1494 = !DILocation(line: 638, column: 21, scope: !1446)
!1495 = !DILocation(line: 638, column: 18, scope: !1446)
!1496 = !DILocation(line: 639, column: 22, scope: !1446)
!1497 = !DILocation(line: 639, column: 19, scope: !1446)
!1498 = !DILocation(line: 640, column: 3, scope: !1446)
!1499 = !DILocation(line: 640, column: 9, scope: !1446)
!1500 = !DILocation(line: 640, column: 17, scope: !1446)
!1501 = !DILocation(line: 614, column: 2, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1420, file: !658, discriminator: 1)
!1503 = distinct !{!1503, !1444}
!1504 = !DILocation(line: 643, column: 2, scope: !1420)
!1505 = !DILocation(line: 643, column: 8, scope: !1420)
!1506 = !DILocation(line: 643, column: 17, scope: !1420)
!1507 = !DILocation(line: 644, column: 1, scope: !1420)
!1508 = !DILocation(line: 644, column: 1, scope: !1502)
!1509 = distinct !DISubprogram(name: "smtp_connect", scope: !658, file: !658, line: 543, type: !1421, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1510 = !DILocalVariable(name: "smtp", arg: 1, scope: !1509, file: !658, line: 543, type: !90)
!1511 = !DILocation(line: 543, column: 23, scope: !1509)
!1512 = !DILocalVariable(name: "status", scope: !1509, file: !658, line: 545, type: !40)
!1513 = !DILocation(line: 545, column: 22, scope: !1509)
!1514 = !DILocation(line: 547, column: 25, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1509, file: !658, line: 547, column: 6)
!1516 = !DILocation(line: 547, column: 38, scope: !1515)
!1517 = !DILocation(line: 547, column: 50, scope: !1515)
!1518 = !DILocation(line: 547, column: 18, scope: !1515)
!1519 = !DILocation(line: 547, column: 7, scope: !1515)
!1520 = !DILocation(line: 547, column: 13, scope: !1515)
!1521 = !DILocation(line: 547, column: 16, scope: !1515)
!1522 = !DILocation(line: 547, column: 118, scope: !1515)
!1523 = !DILocation(line: 547, column: 6, scope: !1509)
!1524 = !DILocation(line: 549, column: 17, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1515, file: !658, line: 547, column: 125)
!1526 = !DILocation(line: 549, column: 3, scope: !1525)
!1527 = !DILocation(line: 550, column: 3, scope: !1525)
!1528 = !DILocation(line: 563, column: 23, scope: !1509)
!1529 = !DILocation(line: 563, column: 29, scope: !1509)
!1530 = !DILocation(line: 563, column: 34, scope: !1509)
!1531 = !DILocation(line: 563, column: 47, scope: !1509)
!1532 = !DILocation(line: 563, column: 11, scope: !1509)
!1533 = !DILocation(line: 563, column: 9, scope: !1509)
!1534 = !DILocation(line: 566, column: 19, scope: !1509)
!1535 = !DILocation(line: 566, column: 36, scope: !1509)
!1536 = !DILocation(line: 566, column: 27, scope: !1509)
!1537 = !DILocation(line: 566, column: 44, scope: !1509)
!1538 = !DILocation(line: 566, column: 50, scope: !1509)
!1539 = !DILocation(line: 566, column: 56, scope: !1509)
!1540 = !DILocation(line: 566, column: 62, scope: !1509)
!1541 = !DILocation(line: 566, column: 2, scope: !1509)
!1542 = !DILocation(line: 567, column: 1, scope: !1509)
!1543 = !DILocation(line: 567, column: 1, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1509, file: !658, discriminator: 1)
!1545 = distinct !DISubprogram(name: "free_smtp_all", scope: !658, file: !658, line: 91, type: !1421, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1546 = !DILocalVariable(name: "smtp", arg: 1, scope: !1545, file: !658, line: 91, type: !90)
!1547 = !DILocation(line: 91, column: 24, scope: !1545)
!1548 = !DILocation(line: 93, column: 8, scope: !1545)
!1549 = !DILocation(line: 93, column: 14, scope: !1545)
!1550 = !DILocation(line: 93, column: 3, scope: !1545)
!1551 = !DILocation(line: 93, column: 24, scope: !1545)
!1552 = !DILocation(line: 93, column: 30, scope: !1545)
!1553 = !DILocation(line: 93, column: 38, scope: !1545)
!1554 = !DILocation(line: 94, column: 8, scope: !1545)
!1555 = !DILocation(line: 94, column: 14, scope: !1545)
!1556 = !DILocation(line: 94, column: 3, scope: !1545)
!1557 = !DILocation(line: 94, column: 25, scope: !1545)
!1558 = !DILocation(line: 94, column: 31, scope: !1545)
!1559 = !DILocation(line: 94, column: 40, scope: !1545)
!1560 = !DILocation(line: 95, column: 8, scope: !1545)
!1561 = !DILocation(line: 95, column: 14, scope: !1545)
!1562 = !DILocation(line: 95, column: 3, scope: !1545)
!1563 = !DILocation(line: 95, column: 22, scope: !1545)
!1564 = !DILocation(line: 95, column: 28, scope: !1545)
!1565 = !DILocation(line: 95, column: 34, scope: !1545)
!1566 = !DILocation(line: 96, column: 8, scope: !1545)
!1567 = !DILocation(line: 96, column: 14, scope: !1545)
!1568 = !DILocation(line: 96, column: 3, scope: !1545)
!1569 = !DILocation(line: 96, column: 26, scope: !1545)
!1570 = !DILocation(line: 96, column: 32, scope: !1545)
!1571 = !DILocation(line: 96, column: 42, scope: !1545)
!1572 = !DILocation(line: 97, column: 8, scope: !1545)
!1573 = !DILocation(line: 97, column: 3, scope: !1545)
!1574 = !DILocation(line: 97, column: 22, scope: !1545)
!1575 = !DILocation(line: 98, column: 1, scope: !1545)
!1576 = distinct !DISubprogram(name: "tcp_socket_state", scope: !41, file: !41, line: 87, type: !1577, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!40, !244, !663}
!1579 = !DILocalVariable(name: "thread", arg: 1, scope: !1576, file: !41, line: 87, type: !244)
!1580 = !DILocation(line: 87, column: 29, scope: !1576)
!1581 = !DILocalVariable(name: "func", arg: 2, scope: !1576, file: !41, line: 87, type: !663)
!1582 = !DILocation(line: 87, column: 43, scope: !1576)
!1583 = !DILocation(line: 89, column: 22, scope: !1576)
!1584 = !DILocation(line: 89, column: 30, scope: !1576)
!1585 = !DILocation(line: 89, column: 9, scope: !1576)
!1586 = !DILocation(line: 89, column: 2, scope: !1576)
!1587 = distinct !DISubprogram(name: "smtp_read_thread", scope: !658, file: !658, line: 162, type: !664, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1588 = !DILocalVariable(name: "thread", arg: 1, scope: !1587, file: !658, line: 162, type: !244)
!1589 = !DILocation(line: 162, column: 29, scope: !1587)
!1590 = !DILocalVariable(name: "smtp", scope: !1587, file: !658, line: 164, type: !90)
!1591 = !DILocation(line: 164, column: 10, scope: !1587)
!1592 = !DILocalVariable(name: "buffer", scope: !1587, file: !658, line: 165, type: !100)
!1593 = !DILocation(line: 165, column: 8, scope: !1587)
!1594 = !DILocalVariable(name: "reply", scope: !1587, file: !658, line: 166, type: !100)
!1595 = !DILocation(line: 166, column: 8, scope: !1587)
!1596 = !DILocalVariable(name: "rcv_buffer_size", scope: !1587, file: !658, line: 167, type: !1597)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !282, line: 223, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !153, line: 172, baseType: !154)
!1599 = !DILocation(line: 167, column: 10, scope: !1587)
!1600 = !DILocalVariable(name: "status", scope: !1587, file: !658, line: 168, type: !95)
!1601 = !DILocation(line: 168, column: 6, scope: !1587)
!1602 = !DILocation(line: 170, column: 11, scope: !1587)
!1603 = !DILocation(line: 170, column: 20, scope: !1587)
!1604 = !DILocation(line: 170, column: 9, scope: !1587)
!1605 = !DILocation(line: 170, column: 7, scope: !1587)
!1606 = !DILocation(line: 172, column: 6, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1587, file: !658, line: 172, column: 6)
!1608 = !DILocation(line: 172, column: 14, scope: !1607)
!1609 = !DILocation(line: 172, column: 19, scope: !1607)
!1610 = !DILocation(line: 172, column: 6, scope: !1587)
!1611 = !DILocation(line: 174, column: 32, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !658, line: 172, column: 43)
!1613 = !DILocation(line: 174, column: 45, scope: !1612)
!1614 = !DILocation(line: 174, column: 11, scope: !1612)
!1615 = !DILocation(line: 173, column: 3, scope: !1612)
!1616 = !DILocation(line: 175, column: 3, scope: !1612)
!1617 = distinct !{!1617, !1616}
!1618 = !DILocation(line: 175, column: 27, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !658, discriminator: 1)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !658, line: 175, column: 12)
!1621 = distinct !DILexicalBlock(scope: !1612, file: !658, line: 175, column: 6)
!1622 = !DILocation(line: 175, column: 12, scope: !1619)
!1623 = !DILocation(line: 175, column: 50, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1620, file: !658, discriminator: 2)
!1625 = !DILocation(line: 175, column: 58, scope: !1624)
!1626 = !DILocation(line: 175, column: 35, scope: !1624)
!1627 = !DILocation(line: 175, column: 70, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1621, file: !658, discriminator: 3)
!1629 = !DILocation(line: 176, column: 3, scope: !1612)
!1630 = !DILocation(line: 179, column: 11, scope: !1587)
!1631 = !DILocation(line: 179, column: 17, scope: !1587)
!1632 = !DILocation(line: 179, column: 9, scope: !1587)
!1633 = !DILocation(line: 181, column: 25, scope: !1587)
!1634 = !DILocation(line: 181, column: 33, scope: !1587)
!1635 = !DILocation(line: 181, column: 35, scope: !1587)
!1636 = !DILocation(line: 181, column: 39, scope: !1587)
!1637 = !DILocation(line: 181, column: 48, scope: !1587)
!1638 = !DILocation(line: 181, column: 54, scope: !1587)
!1639 = !DILocation(line: 181, column: 46, scope: !1587)
!1640 = !DILocation(line: 182, column: 18, scope: !1587)
!1641 = !DILocation(line: 182, column: 24, scope: !1587)
!1642 = !DILocation(line: 182, column: 16, scope: !1587)
!1643 = !DILocation(line: 181, column: 20, scope: !1587)
!1644 = !DILocation(line: 181, column: 18, scope: !1587)
!1645 = !DILocation(line: 184, column: 6, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1587, file: !658, line: 184, column: 6)
!1647 = !DILocation(line: 184, column: 22, scope: !1646)
!1648 = !DILocation(line: 184, column: 6, scope: !1587)
!1649 = !DILocation(line: 185, column: 8, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !658, line: 185, column: 6)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !658, line: 184, column: 29)
!1652 = !DILocation(line: 185, column: 7, scope: !1650)
!1653 = !DILocation(line: 185, column: 12, scope: !1650)
!1654 = !DILocation(line: 185, column: 6, scope: !1651)
!1655 = !DILocation(line: 186, column: 4, scope: !1650)
!1656 = !DILocation(line: 188, column: 32, scope: !1651)
!1657 = !DILocation(line: 188, column: 45, scope: !1651)
!1658 = !DILocation(line: 188, column: 11, scope: !1651)
!1659 = !DILocation(line: 187, column: 3, scope: !1651)
!1660 = !DILocation(line: 189, column: 3, scope: !1651)
!1661 = distinct !{!1661, !1660}
!1662 = !DILocation(line: 189, column: 27, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1664, file: !658, discriminator: 1)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !658, line: 189, column: 12)
!1665 = distinct !DILexicalBlock(scope: !1651, file: !658, line: 189, column: 6)
!1666 = !DILocation(line: 189, column: 12, scope: !1663)
!1667 = !DILocation(line: 189, column: 50, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1664, file: !658, discriminator: 2)
!1669 = !DILocation(line: 189, column: 58, scope: !1668)
!1670 = !DILocation(line: 189, column: 35, scope: !1668)
!1671 = !DILocation(line: 189, column: 70, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1665, file: !658, discriminator: 3)
!1673 = !DILocation(line: 190, column: 3, scope: !1651)
!1674 = !DILocation(line: 191, column: 13, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1646, file: !658, line: 191, column: 13)
!1676 = !DILocation(line: 191, column: 29, scope: !1675)
!1677 = !DILocation(line: 191, column: 13, scope: !1646)
!1678 = !DILocation(line: 193, column: 32, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !658, line: 191, column: 35)
!1680 = !DILocation(line: 193, column: 45, scope: !1679)
!1681 = !DILocation(line: 193, column: 11, scope: !1679)
!1682 = !DILocation(line: 192, column: 3, scope: !1679)
!1683 = !DILocation(line: 194, column: 3, scope: !1679)
!1684 = distinct !{!1684, !1683}
!1685 = !DILocation(line: 194, column: 27, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1687, file: !658, discriminator: 1)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !658, line: 194, column: 12)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !658, line: 194, column: 6)
!1689 = !DILocation(line: 194, column: 12, scope: !1686)
!1690 = !DILocation(line: 194, column: 50, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1687, file: !658, discriminator: 2)
!1692 = !DILocation(line: 194, column: 58, scope: !1691)
!1693 = !DILocation(line: 194, column: 35, scope: !1691)
!1694 = !DILocation(line: 194, column: 70, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1688, file: !658, discriminator: 3)
!1696 = !DILocation(line: 195, column: 3, scope: !1679)
!1697 = !DILocation(line: 199, column: 6, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1587, file: !658, line: 199, column: 6)
!1699 = !DILocation(line: 199, column: 12, scope: !1698)
!1700 = !DILocation(line: 199, column: 19, scope: !1698)
!1701 = !DILocation(line: 199, column: 6, scope: !1587)
!1702 = !DILocation(line: 202, column: 32, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !658, line: 199, column: 29)
!1704 = !DILocation(line: 202, column: 45, scope: !1703)
!1705 = !DILocation(line: 202, column: 11, scope: !1703)
!1706 = !DILocation(line: 200, column: 3, scope: !1703)
!1707 = !DILocation(line: 203, column: 3, scope: !1703)
!1708 = distinct !{!1708, !1707}
!1709 = !DILocation(line: 203, column: 27, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !658, discriminator: 1)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !658, line: 203, column: 12)
!1712 = distinct !DILexicalBlock(scope: !1703, file: !658, line: 203, column: 6)
!1713 = !DILocation(line: 203, column: 12, scope: !1710)
!1714 = !DILocation(line: 203, column: 50, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1711, file: !658, discriminator: 2)
!1716 = !DILocation(line: 203, column: 58, scope: !1715)
!1717 = !DILocation(line: 203, column: 35, scope: !1715)
!1718 = !DILocation(line: 203, column: 70, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1712, file: !658, discriminator: 3)
!1720 = !DILocation(line: 204, column: 3, scope: !1703)
!1721 = !DILocation(line: 206, column: 27, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1698, file: !658, line: 205, column: 9)
!1723 = !DILocation(line: 206, column: 3, scope: !1722)
!1724 = !DILocation(line: 206, column: 9, scope: !1722)
!1725 = !DILocation(line: 206, column: 16, scope: !1722)
!1726 = !DILocation(line: 207, column: 10, scope: !1722)
!1727 = !DILocation(line: 207, column: 16, scope: !1722)
!1728 = !DILocation(line: 207, column: 3, scope: !1722)
!1729 = !DILocation(line: 207, column: 24, scope: !1722)
!1730 = !DILocation(line: 199, column: 22, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1698, file: !658, discriminator: 1)
!1732 = !DILocation(line: 213, column: 10, scope: !1587)
!1733 = !DILocation(line: 213, column: 8, scope: !1587)
!1734 = !DILocation(line: 214, column: 2, scope: !1587)
!1735 = !DILocation(line: 214, column: 9, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1587, file: !658, discriminator: 1)
!1737 = !DILocation(line: 214, column: 17, scope: !1736)
!1738 = !DILocation(line: 214, column: 26, scope: !1736)
!1739 = !DILocation(line: 214, column: 32, scope: !1736)
!1740 = !DILocation(line: 214, column: 24, scope: !1736)
!1741 = !DILocation(line: 214, column: 15, scope: !1736)
!1742 = !DILocation(line: 214, column: 2, scope: !1736)
!1743 = !DILocalVariable(name: "p", scope: !1744, file: !658, line: 215, type: !100)
!1744 = distinct !DILexicalBlock(scope: !1587, file: !658, line: 214, column: 40)
!1745 = !DILocation(line: 215, column: 9, scope: !1744)
!1746 = !DILocation(line: 217, column: 14, scope: !1744)
!1747 = !DILocation(line: 217, column: 7, scope: !1744)
!1748 = !DILocation(line: 217, column: 5, scope: !1744)
!1749 = !DILocation(line: 218, column: 8, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1744, file: !658, line: 218, column: 7)
!1751 = !DILocation(line: 218, column: 7, scope: !1744)
!1752 = !DILocation(line: 219, column: 12, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !658, line: 218, column: 11)
!1754 = !DILocation(line: 219, column: 20, scope: !1753)
!1755 = !DILocation(line: 220, column: 5, scope: !1753)
!1756 = !DILocation(line: 220, column: 11, scope: !1753)
!1757 = !DILocation(line: 220, column: 29, scope: !1753)
!1758 = !DILocation(line: 220, column: 37, scope: !1753)
!1759 = !DILocation(line: 220, column: 35, scope: !1753)
!1760 = !DILocation(line: 220, column: 18, scope: !1753)
!1761 = !DILocation(line: 219, column: 4, scope: !1753)
!1762 = !DILocation(line: 221, column: 29, scope: !1753)
!1763 = !DILocation(line: 221, column: 37, scope: !1753)
!1764 = !DILocation(line: 221, column: 35, scope: !1753)
!1765 = !DILocation(line: 221, column: 4, scope: !1753)
!1766 = !DILocation(line: 221, column: 10, scope: !1753)
!1767 = !DILocation(line: 221, column: 17, scope: !1753)
!1768 = !DILocation(line: 222, column: 11, scope: !1753)
!1769 = !DILocation(line: 222, column: 17, scope: !1753)
!1770 = !DILocation(line: 222, column: 4, scope: !1753)
!1771 = !DILocation(line: 222, column: 25, scope: !1753)
!1772 = !DILocation(line: 224, column: 20, scope: !1753)
!1773 = !DILocation(line: 224, column: 28, scope: !1753)
!1774 = !DILocation(line: 225, column: 6, scope: !1753)
!1775 = !DILocation(line: 225, column: 12, scope: !1753)
!1776 = !DILocation(line: 225, column: 20, scope: !1753)
!1777 = !DILocation(line: 225, column: 22, scope: !1753)
!1778 = !DILocation(line: 226, column: 6, scope: !1753)
!1779 = !DILocation(line: 226, column: 19, scope: !1753)
!1780 = !DILocation(line: 224, column: 4, scope: !1753)
!1781 = !DILocation(line: 227, column: 4, scope: !1753)
!1782 = !DILocation(line: 230, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1744, file: !658, line: 230, column: 7)
!1784 = !DILocation(line: 230, column: 16, scope: !1783)
!1785 = !DILocation(line: 230, column: 7, scope: !1744)
!1786 = !DILocation(line: 232, column: 12, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !658, line: 230, column: 24)
!1788 = !DILocation(line: 232, column: 14, scope: !1787)
!1789 = !DILocation(line: 232, column: 10, scope: !1787)
!1790 = !DILocation(line: 233, column: 4, scope: !1787)
!1791 = distinct !{!1791, !1734}
!1792 = !DILocation(line: 236, column: 14, scope: !1744)
!1793 = !DILocation(line: 236, column: 23, scope: !1744)
!1794 = !DILocation(line: 236, column: 30, scope: !1744)
!1795 = !DILocation(line: 236, column: 41, scope: !1744)
!1796 = !DILocation(line: 236, column: 50, scope: !1744)
!1797 = !DILocation(line: 236, column: 57, scope: !1744)
!1798 = !DILocation(line: 236, column: 37, scope: !1744)
!1799 = !DILocation(line: 236, column: 66, scope: !1744)
!1800 = !DILocation(line: 236, column: 75, scope: !1744)
!1801 = !DILocation(line: 236, column: 63, scope: !1744)
!1802 = !DILocation(line: 236, column: 10, scope: !1744)
!1803 = !DILocation(line: 238, column: 11, scope: !1744)
!1804 = !DILocation(line: 238, column: 13, scope: !1744)
!1805 = !DILocation(line: 238, column: 9, scope: !1744)
!1806 = !DILocation(line: 239, column: 3, scope: !1744)
!1807 = !DILocation(line: 242, column: 10, scope: !1587)
!1808 = !DILocation(line: 242, column: 18, scope: !1587)
!1809 = !DILocation(line: 242, column: 25, scope: !1587)
!1810 = !DILocation(line: 242, column: 31, scope: !1587)
!1811 = !DILocation(line: 242, column: 49, scope: !1587)
!1812 = !DILocation(line: 242, column: 57, scope: !1587)
!1813 = !DILocation(line: 242, column: 55, scope: !1587)
!1814 = !DILocation(line: 242, column: 38, scope: !1587)
!1815 = !DILocation(line: 242, column: 2, scope: !1587)
!1816 = !DILocation(line: 243, column: 27, scope: !1587)
!1817 = !DILocation(line: 243, column: 35, scope: !1587)
!1818 = !DILocation(line: 243, column: 33, scope: !1587)
!1819 = !DILocation(line: 243, column: 2, scope: !1587)
!1820 = !DILocation(line: 243, column: 8, scope: !1587)
!1821 = !DILocation(line: 243, column: 15, scope: !1587)
!1822 = !DILocation(line: 244, column: 9, scope: !1587)
!1823 = !DILocation(line: 244, column: 15, scope: !1587)
!1824 = !DILocation(line: 244, column: 2, scope: !1587)
!1825 = !DILocation(line: 244, column: 23, scope: !1587)
!1826 = !DILocation(line: 246, column: 6, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1587, file: !658, line: 246, column: 6)
!1828 = !DILocation(line: 246, column: 13, scope: !1827)
!1829 = !DILocation(line: 246, column: 6, scope: !1587)
!1830 = !DILocation(line: 247, column: 19, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !658, line: 246, column: 20)
!1832 = !DILocation(line: 247, column: 27, scope: !1831)
!1833 = !DILocation(line: 247, column: 53, scope: !1831)
!1834 = !DILocation(line: 248, column: 5, scope: !1831)
!1835 = !DILocation(line: 248, column: 13, scope: !1831)
!1836 = !DILocation(line: 248, column: 15, scope: !1831)
!1837 = !DILocation(line: 248, column: 19, scope: !1831)
!1838 = !DILocation(line: 248, column: 32, scope: !1831)
!1839 = !DILocation(line: 247, column: 3, scope: !1831)
!1840 = !DILocation(line: 249, column: 3, scope: !1831)
!1841 = !DILocation(line: 252, column: 2, scope: !1587)
!1842 = distinct !{!1842, !1841}
!1843 = !DILocation(line: 252, column: 23, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1845, file: !658, discriminator: 1)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !658, line: 252, column: 11)
!1846 = distinct !DILexicalBlock(scope: !1587, file: !658, line: 252, column: 5)
!1847 = !DILocation(line: 252, column: 29, scope: !1844)
!1848 = !DILocation(line: 252, column: 14, scope: !1844)
!1849 = !DILocation(line: 252, column: 36, scope: !1844)
!1850 = !DILocation(line: 252, column: 11, scope: !1844)
!1851 = !DILocation(line: 252, column: 56, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1845, file: !658, discriminator: 2)
!1853 = !DILocation(line: 252, column: 62, scope: !1852)
!1854 = !DILocation(line: 252, column: 47, scope: !1852)
!1855 = !DILocation(line: 252, column: 69, scope: !1852)
!1856 = !DILocation(line: 252, column: 77, scope: !1852)
!1857 = !DILocation(line: 252, column: 85, scope: !1852)
!1858 = !DILocation(line: 252, column: 44, scope: !1852)
!1859 = !DILocation(line: 252, column: 94, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1846, file: !658, discriminator: 3)
!1861 = !DILocation(line: 255, column: 6, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1587, file: !658, line: 255, column: 6)
!1863 = !DILocation(line: 255, column: 12, scope: !1862)
!1864 = !DILocation(line: 255, column: 18, scope: !1862)
!1865 = !DILocation(line: 255, column: 6, scope: !1587)
!1866 = !DILocation(line: 256, column: 20, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1862, file: !658, line: 255, column: 25)
!1868 = !DILocation(line: 256, column: 28, scope: !1867)
!1869 = !DILocation(line: 256, column: 54, scope: !1867)
!1870 = !DILocation(line: 257, column: 6, scope: !1867)
!1871 = !DILocation(line: 257, column: 12, scope: !1867)
!1872 = !DILocation(line: 257, column: 16, scope: !1867)
!1873 = !DILocation(line: 257, column: 29, scope: !1867)
!1874 = !DILocation(line: 256, column: 3, scope: !1867)
!1875 = !DILocation(line: 258, column: 2, scope: !1867)
!1876 = !DILocation(line: 260, column: 32, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1862, file: !658, line: 258, column: 9)
!1878 = !DILocation(line: 260, column: 45, scope: !1877)
!1879 = !DILocation(line: 260, column: 11, scope: !1877)
!1880 = !DILocation(line: 259, column: 3, scope: !1877)
!1881 = !DILocation(line: 261, column: 3, scope: !1877)
!1882 = distinct !{!1882, !1881}
!1883 = !DILocation(line: 261, column: 27, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1885, file: !658, discriminator: 1)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !658, line: 261, column: 12)
!1886 = distinct !DILexicalBlock(scope: !1877, file: !658, line: 261, column: 6)
!1887 = !DILocation(line: 261, column: 12, scope: !1884)
!1888 = !DILocation(line: 261, column: 50, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1885, file: !658, discriminator: 2)
!1890 = !DILocation(line: 261, column: 58, scope: !1889)
!1891 = !DILocation(line: 261, column: 35, scope: !1889)
!1892 = !DILocation(line: 261, column: 70, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1886, file: !658, discriminator: 3)
!1894 = !DILocation(line: 264, column: 2, scope: !1587)
!1895 = !DILocation(line: 265, column: 1, scope: !1587)
!1896 = distinct !DISubprogram(name: "smtp_send_thread", scope: !658, file: !658, line: 268, type: !664, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!1897 = !DILocalVariable(name: "thread", arg: 1, scope: !1896, file: !658, line: 268, type: !244)
!1898 = !DILocation(line: 268, column: 29, scope: !1896)
!1899 = !DILocalVariable(name: "smtp", scope: !1896, file: !658, line: 270, type: !90)
!1900 = !DILocation(line: 270, column: 10, scope: !1896)
!1901 = !DILocation(line: 270, column: 19, scope: !1896)
!1902 = !DILocation(line: 270, column: 28, scope: !1896)
!1903 = !DILocation(line: 270, column: 17, scope: !1896)
!1904 = !DILocation(line: 272, column: 6, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1896, file: !658, line: 272, column: 6)
!1906 = !DILocation(line: 272, column: 14, scope: !1905)
!1907 = !DILocation(line: 272, column: 19, scope: !1905)
!1908 = !DILocation(line: 272, column: 6, scope: !1896)
!1909 = !DILocation(line: 274, column: 32, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !658, line: 272, column: 44)
!1911 = !DILocation(line: 274, column: 45, scope: !1910)
!1912 = !DILocation(line: 274, column: 11, scope: !1910)
!1913 = !DILocation(line: 273, column: 3, scope: !1910)
!1914 = !DILocation(line: 275, column: 3, scope: !1910)
!1915 = distinct !{!1915, !1914}
!1916 = !DILocation(line: 275, column: 27, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1918, file: !658, discriminator: 1)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !658, line: 275, column: 12)
!1919 = distinct !DILexicalBlock(scope: !1910, file: !658, line: 275, column: 6)
!1920 = !DILocation(line: 275, column: 12, scope: !1917)
!1921 = !DILocation(line: 275, column: 50, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1918, file: !658, discriminator: 2)
!1923 = !DILocation(line: 275, column: 58, scope: !1922)
!1924 = !DILocation(line: 275, column: 35, scope: !1922)
!1925 = !DILocation(line: 275, column: 70, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1919, file: !658, discriminator: 3)
!1927 = !DILocation(line: 276, column: 3, scope: !1910)
!1928 = !DILocation(line: 279, column: 2, scope: !1896)
!1929 = distinct !{!1929, !1928}
!1930 = !DILocation(line: 279, column: 23, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1932, file: !658, discriminator: 1)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !658, line: 279, column: 11)
!1933 = distinct !DILexicalBlock(scope: !1896, file: !658, line: 279, column: 5)
!1934 = !DILocation(line: 279, column: 29, scope: !1931)
!1935 = !DILocation(line: 279, column: 14, scope: !1931)
!1936 = !DILocation(line: 279, column: 36, scope: !1931)
!1937 = !DILocation(line: 279, column: 11, scope: !1931)
!1938 = !DILocation(line: 279, column: 56, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1932, file: !658, discriminator: 2)
!1940 = !DILocation(line: 279, column: 62, scope: !1939)
!1941 = !DILocation(line: 279, column: 47, scope: !1939)
!1942 = !DILocation(line: 279, column: 69, scope: !1939)
!1943 = !DILocation(line: 279, column: 77, scope: !1939)
!1944 = !DILocation(line: 279, column: 44, scope: !1939)
!1945 = !DILocation(line: 279, column: 86, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1933, file: !658, discriminator: 3)
!1947 = !DILocation(line: 282, column: 6, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1896, file: !658, line: 282, column: 6)
!1949 = !DILocation(line: 282, column: 12, scope: !1948)
!1950 = !DILocation(line: 282, column: 18, scope: !1948)
!1951 = !DILocation(line: 282, column: 6, scope: !1896)
!1952 = !DILocation(line: 283, column: 3, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !658, line: 282, column: 25)
!1954 = distinct !{!1954, !1952}
!1955 = !DILocation(line: 283, column: 27, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1957, file: !658, discriminator: 1)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !658, line: 283, column: 12)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !658, line: 283, column: 6)
!1959 = !DILocation(line: 283, column: 12, scope: !1956)
!1960 = !DILocation(line: 283, column: 50, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1957, file: !658, discriminator: 2)
!1962 = !DILocation(line: 283, column: 58, scope: !1961)
!1963 = !DILocation(line: 283, column: 35, scope: !1961)
!1964 = !DILocation(line: 283, column: 70, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1958, file: !658, discriminator: 3)
!1966 = !DILocation(line: 284, column: 3, scope: !1953)
!1967 = !DILocation(line: 288, column: 6, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1896, file: !658, line: 288, column: 6)
!1969 = !DILocation(line: 288, column: 12, scope: !1968)
!1970 = !DILocation(line: 288, column: 18, scope: !1968)
!1971 = !DILocation(line: 288, column: 6, scope: !1896)
!1972 = !DILocation(line: 289, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !658, line: 288, column: 25)
!1974 = !DILocation(line: 289, column: 27, scope: !1973)
!1975 = !DILocation(line: 289, column: 53, scope: !1973)
!1976 = !DILocation(line: 290, column: 5, scope: !1973)
!1977 = !DILocation(line: 290, column: 13, scope: !1973)
!1978 = !DILocation(line: 290, column: 15, scope: !1973)
!1979 = !DILocation(line: 290, column: 19, scope: !1973)
!1980 = !DILocation(line: 290, column: 32, scope: !1973)
!1981 = !DILocation(line: 289, column: 3, scope: !1973)
!1982 = !DILocation(line: 291, column: 20, scope: !1973)
!1983 = !DILocation(line: 291, column: 3, scope: !1973)
!1984 = !DILocation(line: 292, column: 2, scope: !1973)
!1985 = !DILocation(line: 294, column: 32, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1968, file: !658, line: 292, column: 9)
!1987 = !DILocation(line: 294, column: 45, scope: !1986)
!1988 = !DILocation(line: 294, column: 11, scope: !1986)
!1989 = !DILocation(line: 293, column: 3, scope: !1986)
!1990 = !DILocation(line: 295, column: 3, scope: !1986)
!1991 = distinct !{!1991, !1990}
!1992 = !DILocation(line: 295, column: 27, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !658, discriminator: 1)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !658, line: 295, column: 12)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !658, line: 295, column: 6)
!1996 = !DILocation(line: 295, column: 12, scope: !1993)
!1997 = !DILocation(line: 295, column: 50, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1994, file: !658, discriminator: 2)
!1999 = !DILocation(line: 295, column: 58, scope: !1998)
!2000 = !DILocation(line: 295, column: 35, scope: !1998)
!2001 = !DILocation(line: 295, column: 70, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1995, file: !658, discriminator: 3)
!2003 = !DILocation(line: 298, column: 2, scope: !1896)
!2004 = !DILocation(line: 299, column: 1, scope: !1896)
!2005 = distinct !DISubprogram(name: "fetch_next_email", scope: !658, file: !658, line: 101, type: !2006, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!100, !90}
!2008 = !DILocalVariable(name: "smtp", arg: 1, scope: !2005, file: !658, line: 101, type: !90)
!2009 = !DILocation(line: 101, column: 27, scope: !2005)
!2010 = !DILocation(line: 103, column: 22, scope: !2005)
!2011 = !DILocation(line: 103, column: 35, scope: !2005)
!2012 = !DILocation(line: 103, column: 42, scope: !2005)
!2013 = !DILocation(line: 103, column: 48, scope: !2005)
!2014 = !DILocation(line: 103, column: 9, scope: !2005)
!2015 = !DILocation(line: 103, column: 2, scope: !2005)
!2016 = distinct !DISubprogram(name: "tcp_connect", scope: !41, file: !41, line: 81, type: !2017, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !677)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!40, !95, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!2020 = !DILocalVariable(name: "fd", arg: 1, scope: !2016, file: !41, line: 81, type: !95)
!2021 = !DILocation(line: 81, column: 17, scope: !2016)
!2022 = !DILocalVariable(name: "addr", arg: 2, scope: !2016, file: !41, line: 81, type: !2019)
!2023 = !DILocation(line: 81, column: 46, scope: !2016)
!2024 = !DILocation(line: 83, column: 24, scope: !2016)
!2025 = !DILocation(line: 83, column: 28, scope: !2016)
!2026 = !DILocation(line: 83, column: 9, scope: !2016)
!2027 = !DILocation(line: 83, column: 2, scope: !2016)
