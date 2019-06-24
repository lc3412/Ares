; ModuleID = './[inter]keepalived--check--libipvs.o.i'
source_filename = "./[inter]keepalived--check--libipvs.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.table_struct = type { i8*, i32, i8* }
%struct.nl_sock = type opaque
%struct.nla_policy = type { i16, i16, i16 }
%struct.ip_vs_getinfo = type { i32, i32, i32 }
%struct.nl_msg = type opaque
%struct.ip_vs_service_app = type { %struct.ip_vs_service_user, i16, %union.nf_inet_addr, [16 x i8] }
%struct.ip_vs_service_user = type { i16, i32, i16, i32, [16 x i8], i32, i32, i32 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.nlattr = type { i16, i16 }
%struct.ip_vs_flags = type { i32, i32 }
%struct.ip_vs_dest_app = type { %struct.ip_vs_dest_user, i16, %union.nf_inet_addr }
%struct.ip_vs_dest_user = type { i32, i16, i32, i32, i32, i32 }
%struct.ipvs_servicedest_s = type { %struct.ip_vs_service_user, %struct.ip_vs_dest_user }
%struct.ip_vs_timeout_user = type { i32, i32, i32 }
%struct.ip_vs_daemon_app = type { i32, [16 x i8], i32, i16, i16, i8, i16, %union.nf_inet_addr }
%struct.ip_vs_daemon_kern = type { i32, [16 x i8], i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@ipvs_func = internal global i8* null, align 8
@try_nl = internal global i8 1, align 1
@sockfd = internal global i32 -1, align 4
@in6addr_any = external constant %struct.in6_addr, align 4
@.str = private unnamed_addr constant [23 x i8] c"Service already exists\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Scheduler or persistence engine not found\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"No such service\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Service not defined\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Destination already exists\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"No such destination\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Daemon has already run\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"No daemon is running\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Permission denied (you must be root)\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"Invalid operation.  Possibly wrong module version, address not unicast, ...\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Protocol not available\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Memory allocation problem\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Operation not supported with IPv6\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Operation not supported with specified address family\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Module is wrong version\00", align 1
@ipvs_strerror.table = private unnamed_addr constant [21 x %struct.table_struct] [%struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_add_service to i8*), i32 17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_add_service to i8*), i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_update_service to i8*), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_update_service to i8*), i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_del_service to i8*), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_zero_service to i8*), i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_add_dest to i8*), i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_add_dest to i8*), i32 17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_update_dest to i8*), i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_update_dest to i8*), i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_del_dest to i8*), i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_del_dest to i8*), i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_daemon_app*)* @ipvs_start_daemon to i8*), i32 17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0) }, %struct.table_struct { i8* bitcast (i32 (%struct.ip_vs_daemon_app*)* @ipvs_stop_daemon to i8*), i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.table_struct { i8* null, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0) }, %struct.table_struct { i8* null, i32 22, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i32 0, i32 0) }, %struct.table_struct { i8* null, i32 92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0) }, %struct.table_struct { i8* null, i32 12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0) }, %struct.table_struct { i8* null, i32 95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0) }, %struct.table_struct { i8* null, i32 97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0) }, %struct.table_struct { i8* null, i32 90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0) }], align 16
@sock = internal global %struct.nl_sock* null, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"IPVS\00", align 1
@family = internal global i32 0, align 4
@ipvs_info_policy = internal global [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i16 3, i16 0, i16 0 }, %struct.nla_policy { i16 3, i16 0, i16 0 }], align 16

; Function Attrs: nounwind uwtable
define i32 @ipvs_init() #0 !dbg !186 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_getinfo, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !190, metadata !195), !dbg !196
  call void @llvm.dbg.declare(metadata %struct.ip_vs_getinfo* %3, metadata !197, metadata !195), !dbg !203
  store i8* bitcast (i32 ()* @ipvs_init to i8*), i8** @ipvs_func, align 8, !dbg !204
  store i8 1, i8* @try_nl, align 1, !dbg !205
  %4 = load i8, i8* @try_nl, align 1, !dbg !206
  %5 = trunc i8 %4 to i1, !dbg !206
  br i1 %5, label %6, label %11, !dbg !208

; <label>:6:                                      ; preds = %0
  %7 = call i32 @ipvs_nl_send_message(%struct.nl_msg* null, i32 (%struct.nl_msg*, i8*)* null, i8* null), !dbg !209
  %8 = icmp eq i32 %7, 0, !dbg !211
  br i1 %8, label %9, label %11, !dbg !212

; <label>:9:                                      ; preds = %6
  %10 = call i32 @ipvs_getinfo(), !dbg !213
  store i32 %10, i32* %1, align 4, !dbg !214
  br label %24, !dbg !214

; <label>:11:                                     ; preds = %6, %0
  store i8 0, i8* @try_nl, align 1, !dbg !215
  %12 = call i32 @socket(i32 2, i32 524291, i32 255) #7, !dbg !216
  store i32 %12, i32* @sockfd, align 4, !dbg !218
  %13 = icmp eq i32 %12, -1, !dbg !219
  br i1 %13, label %14, label %15, !dbg !220

; <label>:14:                                     ; preds = %11
  store i32 -1, i32* %1, align 4, !dbg !221
  br label %24, !dbg !221

; <label>:15:                                     ; preds = %11
  store i32 12, i32* %2, align 4, !dbg !222
  %16 = load i32, i32* @sockfd, align 4, !dbg !223
  %17 = bitcast %struct.ip_vs_getinfo* %3 to i8*, !dbg !225
  %18 = call i32 @getsockopt(i32 %16, i32 0, i32 1153, i8* %17, i32* %2) #7, !dbg !226
  %19 = icmp ne i32 %18, 0, !dbg !226
  br i1 %19, label %20, label %23, !dbg !227

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* @sockfd, align 4, !dbg !228
  %22 = call i32 @close(i32 %21), !dbg !230
  store i32 -1, i32* %1, align 4, !dbg !231
  br label %24, !dbg !231

; <label>:23:                                     ; preds = %15
  store i32 0, i32* %1, align 4, !dbg !232
  br label %24, !dbg !232

; <label>:24:                                     ; preds = %23, %20, %14, %9
  %25 = load i32, i32* %1, align 4, !dbg !233
  ret i32 %25, !dbg !233
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_nl_send_message(%struct.nl_msg*, i32 (%struct.nl_msg*, i8*)*, i8*) #0 !dbg !234 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_msg*, align 8
  %6 = alloca i32 (%struct.nl_msg*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.nl_msg* %0, %struct.nl_msg** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %5, metadata !243, metadata !195), !dbg !244
  store i32 (%struct.nl_msg*, i8*)* %1, i32 (%struct.nl_msg*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.nl_msg*, i8*)** %6, metadata !245, metadata !195), !dbg !246
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !247, metadata !195), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %8, metadata !249, metadata !195), !dbg !250
  store i32 22, i32* %8, align 4, !dbg !250
  %9 = call %struct.nl_sock* @nl_socket_alloc(), !dbg !251
  store %struct.nl_sock* %9, %struct.nl_sock** @sock, align 8, !dbg !252
  %10 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !253
  %11 = icmp ne %struct.nl_sock* %10, null, !dbg !253
  br i1 %11, label %18, label %12, !dbg !255

; <label>:12:                                     ; preds = %3
  %13 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8, !dbg !256
  %14 = icmp ne %struct.nl_msg* %13, null, !dbg !256
  br i1 %14, label %15, label %17, !dbg !259

; <label>:15:                                     ; preds = %12
  %16 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8, !dbg !260
  call void @nlmsg_free(%struct.nl_msg* %16), !dbg !261
  br label %17, !dbg !261

; <label>:17:                                     ; preds = %15, %12
  store i32 -1, i32* %4, align 4, !dbg !262
  br label %62, !dbg !262

; <label>:18:                                     ; preds = %3
  %19 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !263
  %20 = call i32 @genl_connect(%struct.nl_sock* %19), !dbg !265
  %21 = icmp slt i32 %20, 0, !dbg !266
  br i1 %21, label %22, label %23, !dbg !267

; <label>:22:                                     ; preds = %18
  br label %56, !dbg !268

; <label>:23:                                     ; preds = %18
  %24 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !269
  %25 = call i32 @genl_ctrl_resolve(%struct.nl_sock* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)), !dbg !270
  store i32 %25, i32* @family, align 4, !dbg !271
  %26 = load i32, i32* @family, align 4, !dbg !272
  %27 = icmp slt i32 %26, 0, !dbg !274
  br i1 %27, label %28, label %29, !dbg !275

; <label>:28:                                     ; preds = %23
  br label %56, !dbg !276

; <label>:29:                                     ; preds = %23
  %30 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8, !dbg !277
  %31 = icmp eq %struct.nl_msg* %30, null, !dbg !279
  br i1 %31, label %32, label %34, !dbg !280

; <label>:32:                                     ; preds = %29
  %33 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !281
  call void @nl_socket_free(%struct.nl_sock* %33), !dbg !283
  store %struct.nl_sock* null, %struct.nl_sock** @sock, align 8, !dbg !284
  store i32 0, i32* %4, align 4, !dbg !285
  br label %62, !dbg !285

; <label>:34:                                     ; preds = %29
  %35 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !286
  %36 = load i32 (%struct.nl_msg*, i8*)*, i32 (%struct.nl_msg*, i8*)** %6, align 8, !dbg !288
  %37 = load i8*, i8** %7, align 8, !dbg !289
  %38 = call i32 @nl_socket_modify_cb(%struct.nl_sock* %35, i32 0, i32 3, i32 (%struct.nl_msg*, i8*)* %36, i8* %37), !dbg !290
  %39 = icmp ne i32 %38, 0, !dbg !291
  br i1 %39, label %40, label %41, !dbg !292

; <label>:40:                                     ; preds = %34
  br label %56, !dbg !293

; <label>:41:                                     ; preds = %34
  %42 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !294
  %43 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8, !dbg !296
  %44 = call i32 @nl_send_auto_complete(%struct.nl_sock* %42, %struct.nl_msg* %43), !dbg !297
  %45 = icmp slt i32 %44, 0, !dbg !298
  br i1 %45, label %46, label %47, !dbg !299

; <label>:46:                                     ; preds = %41
  br label %56, !dbg !300

; <label>:47:                                     ; preds = %41
  %48 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !301
  %49 = call i32 @nl_recvmsgs_default(%struct.nl_sock* %48), !dbg !303
  %50 = sub nsw i32 0, %49, !dbg !304
  store i32 %50, i32* %8, align 4, !dbg !305
  %51 = icmp sgt i32 %50, 0, !dbg !306
  br i1 %51, label %52, label %53, !dbg !307

; <label>:52:                                     ; preds = %47
  br label %56, !dbg !308

; <label>:53:                                     ; preds = %47
  %54 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8, !dbg !309
  call void @nlmsg_free(%struct.nl_msg* %54), !dbg !310
  %55 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !311
  call void @nl_socket_free(%struct.nl_sock* %55), !dbg !312
  store i32 0, i32* %4, align 4, !dbg !313
  br label %62, !dbg !313

; <label>:56:                                     ; preds = %52, %46, %40, %28, %22
  %57 = load %struct.nl_sock*, %struct.nl_sock** @sock, align 8, !dbg !314
  call void @nl_socket_free(%struct.nl_sock* %57), !dbg !315
  store %struct.nl_sock* null, %struct.nl_sock** @sock, align 8, !dbg !316
  %58 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8, !dbg !317
  call void @nlmsg_free(%struct.nl_msg* %58), !dbg !318
  %59 = load i32, i32* %8, align 4, !dbg !319
  %60 = call i32 @nlerr2syserr(i32 %59), !dbg !320
  %61 = call i32* @__errno_location() #1, !dbg !321
  store i32 %60, i32* %61, align 4, !dbg !323
  store i32 -1, i32* %4, align 4, !dbg !324
  br label %62, !dbg !324

; <label>:62:                                     ; preds = %56, %53, %32, %17
  %63 = load i32, i32* %4, align 4, !dbg !325
  ret i32 %63, !dbg !325
}

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_getinfo() #0 !dbg !326 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_getinfo, align 4
  %4 = alloca %struct.nl_msg*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !327, metadata !195), !dbg !328
  call void @llvm.dbg.declare(metadata %struct.ip_vs_getinfo* %3, metadata !329, metadata !195), !dbg !330
  store i8* bitcast (i32 ()* @ipvs_getinfo to i8*), i8** @ipvs_func, align 8, !dbg !331
  %5 = load i8, i8* @try_nl, align 1, !dbg !332
  %6 = trunc i8 %5 to i1, !dbg !332
  br i1 %6, label %7, label %15, !dbg !334

; <label>:7:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !335, metadata !195), !dbg !337
  %8 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 15, i32 0), !dbg !338
  store %struct.nl_msg* %8, %struct.nl_msg** %4, align 8, !dbg !339
  %9 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !340
  %10 = icmp ne %struct.nl_msg* %9, null, !dbg !340
  br i1 %10, label %11, label %14, !dbg !342

; <label>:11:                                     ; preds = %7
  %12 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !343
  %13 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %12, i32 (%struct.nl_msg*, i8*)* @ipvs_getinfo_parse_cb, i8* null), !dbg !344
  store i32 %13, i32* %1, align 4, !dbg !345
  br label %19, !dbg !345

; <label>:14:                                     ; preds = %7
  store i32 -1, i32* %1, align 4, !dbg !346
  br label %19, !dbg !346

; <label>:15:                                     ; preds = %0
  store i32 12, i32* %2, align 4, !dbg !347
  %16 = load i32, i32* @sockfd, align 4, !dbg !348
  %17 = bitcast %struct.ip_vs_getinfo* %3 to i8*, !dbg !349
  %18 = call i32 @getsockopt(i32 %16, i32 0, i32 1153, i8* %17, i32* %2) #7, !dbg !350
  store i32 %18, i32* %1, align 4, !dbg !351
  br label %19, !dbg !351

; <label>:19:                                     ; preds = %15, %14, %11
  %20 = load i32, i32* %1, align 4, !dbg !352
  ret i32 %20, !dbg !352
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #2

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define i32 @ipvs_flush() #0 !dbg !353 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.nl_msg*, align 8
  %3 = load i8, i8* @try_nl, align 1, !dbg !354
  %4 = trunc i8 %3 to i1, !dbg !354
  br i1 %4, label %5, label %15, !dbg !356

; <label>:5:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %2, metadata !357, metadata !195), !dbg !359
  %6 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 17, i32 0), !dbg !360
  store %struct.nl_msg* %6, %struct.nl_msg** %2, align 8, !dbg !359
  %7 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8, !dbg !361
  %8 = icmp ne %struct.nl_msg* %7, null, !dbg !361
  br i1 %8, label %9, label %14, !dbg !363

; <label>:9:                                      ; preds = %5
  %10 = load %struct.nl_msg*, %struct.nl_msg** %2, align 8, !dbg !364
  %11 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %10, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !366
  %12 = icmp eq i32 %11, 0, !dbg !367
  br i1 %12, label %13, label %14, !dbg !368

; <label>:13:                                     ; preds = %9
  store i32 0, i32* %1, align 4, !dbg !369
  br label %18, !dbg !369

; <label>:14:                                     ; preds = %9, %5
  store i32 -1, i32* %1, align 4, !dbg !370
  br label %18, !dbg !370

; <label>:15:                                     ; preds = %0
  %16 = load i32, i32* @sockfd, align 4, !dbg !371
  %17 = call i32 @setsockopt(i32 %16, i32 0, i32 1157, i8* null, i32 0) #7, !dbg !372
  store i32 %17, i32* %1, align 4, !dbg !373
  br label %18, !dbg !373

; <label>:18:                                     ; preds = %15, %14, %13
  %19 = load i32, i32* %1, align 4, !dbg !374
  ret i32 %19, !dbg !374
}

; Function Attrs: nounwind uwtable
define internal %struct.nl_msg* @ipvs_nl_message(i8 zeroext, i32) #0 !dbg !375 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.nl_msg*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !380, metadata !195), !dbg !381
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !382, metadata !195), !dbg !383
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %6, metadata !384, metadata !195), !dbg !385
  %7 = call %struct.nl_msg* @nlmsg_alloc(), !dbg !386
  store %struct.nl_msg* %7, %struct.nl_msg** %6, align 8, !dbg !387
  %8 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !388
  %9 = icmp ne %struct.nl_msg* %8, null, !dbg !388
  br i1 %9, label %11, label %10, !dbg !390

; <label>:10:                                     ; preds = %2
  store %struct.nl_msg* null, %struct.nl_msg** %3, align 8, !dbg !391
  br label %18, !dbg !391

; <label>:11:                                     ; preds = %2
  %12 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !392
  %13 = load i32, i32* @family, align 4, !dbg !393
  %14 = load i32, i32* %5, align 4, !dbg !394
  %15 = load i8, i8* %4, align 1, !dbg !395
  %16 = call i8* @genlmsg_put(%struct.nl_msg* %12, i32 0, i32 0, i32 %13, i32 0, i32 %14, i8 zeroext %15, i8 zeroext 1), !dbg !396
  %17 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !397
  store %struct.nl_msg* %17, %struct.nl_msg** %3, align 8, !dbg !398
  br label %18, !dbg !398

; <label>:18:                                     ; preds = %11, %10
  %19 = load %struct.nl_msg*, %struct.nl_msg** %3, align 8, !dbg !399
  ret %struct.nl_msg* %19, !dbg !399
}

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_nl_noop_cb(%struct.nl_msg*, i8*) #0 !dbg !400 {
  %3 = alloca %struct.nl_msg*, align 8
  %4 = alloca i8*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %3, metadata !401, metadata !195), !dbg !402
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !403, metadata !195), !dbg !404
  ret i32 0, !dbg !405
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @ipvs_add_service(%struct.ip_vs_service_app*) #0 !dbg !406 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service_app*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  store %struct.ip_vs_service_app* %0, %struct.ip_vs_service_app** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %3, metadata !467, metadata !195), !dbg !468
  store i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_add_service to i8*), i8** @ipvs_func, align 8, !dbg !469
  %5 = load i8, i8* @try_nl, align 1, !dbg !470
  %6 = trunc i8 %5 to i1, !dbg !470
  br i1 %6, label %7, label %22, !dbg !472

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !473, metadata !195), !dbg !475
  %8 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 1, i32 0), !dbg !476
  store %struct.nl_msg* %8, %struct.nl_msg** %4, align 8, !dbg !475
  %9 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !477
  %10 = icmp ne %struct.nl_msg* %9, null, !dbg !477
  br i1 %10, label %12, label %11, !dbg !479

; <label>:11:                                     ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !480
  br label %57, !dbg !480

; <label>:12:                                     ; preds = %7
  %13 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !482
  %14 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !484
  %15 = call i32 @ipvs_nl_fill_service_attr(%struct.nl_msg* %13, %struct.ip_vs_service_app* %14), !dbg !485
  %16 = icmp ne i32 %15, 0, !dbg !485
  br i1 %16, label %17, label %19, !dbg !486

; <label>:17:                                     ; preds = %12
  %18 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !487
  call void @nlmsg_free(%struct.nl_msg* %18), !dbg !489
  store i32 -1, i32* %2, align 4, !dbg !490
  br label %57, !dbg !490

; <label>:19:                                     ; preds = %12
  %20 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !491
  %21 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %20, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !492
  store i32 %21, i32* %2, align 4, !dbg !493
  br label %57, !dbg !493

; <label>:22:                                     ; preds = %1
  %23 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !494
  %24 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %23, i32 0, i32 1, !dbg !496
  %25 = load i16, i16* %24, align 4, !dbg !496
  %26 = zext i16 %25 to i32, !dbg !494
  %27 = icmp ne i32 %26, 0, !dbg !494
  br i1 %27, label %28, label %36, !dbg !497

; <label>:28:                                     ; preds = %22
  %29 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !498
  %30 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %29, i32 0, i32 1, !dbg !500
  %31 = load i16, i16* %30, align 4, !dbg !500
  %32 = zext i16 %31 to i32, !dbg !498
  %33 = icmp ne i32 %32, 2, !dbg !501
  br i1 %33, label %34, label %36, !dbg !502

; <label>:34:                                     ; preds = %28
  %35 = call i32* @__errno_location() #1, !dbg !503
  store i32 97, i32* %35, align 4, !dbg !506
  br label %56, !dbg !503

; <label>:36:                                     ; preds = %28, %22
  %37 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !507
  %38 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %37, i32 0, i32 2, !dbg !509
  %39 = bitcast %union.nf_inet_addr* %38 to i32*, !dbg !510
  %40 = load i32, i32* %39, align 4, !dbg !510
  %41 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !511
  %42 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %41, i32 0, i32 0, !dbg !512
  %43 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %42, i32 0, i32 1, !dbg !513
  store i32 %40, i32* %43, align 4, !dbg !514
  %44 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !515
  %45 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %44, i32 0, i32 3, !dbg !516
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0, !dbg !515
  %47 = load i8, i8* %46, align 4, !dbg !515
  %48 = icmp ne i8 %47, 0, !dbg !515
  br i1 %48, label %49, label %51, !dbg !515

; <label>:49:                                     ; preds = %36
  %50 = call i32* @__errno_location() #1, !dbg !517
  store i32 97, i32* %50, align 4, !dbg !521
  br label %56, !dbg !517

; <label>:51:                                     ; preds = %36
  %52 = load i32, i32* @sockfd, align 4, !dbg !522
  %53 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !523
  %54 = bitcast %struct.ip_vs_service_app* %53 to i8*, !dbg !524
  %55 = call i32 @setsockopt(i32 %52, i32 0, i32 1154, i8* %54, i32 44) #7, !dbg !525
  store i32 %55, i32* %2, align 4, !dbg !526
  br label %57, !dbg !526

; <label>:56:                                     ; preds = %49, %34
  store i32 -1, i32* %2, align 4, !dbg !527
  br label %57, !dbg !527

; <label>:57:                                     ; preds = %56, %51, %19, %17, %11
  %58 = load i32, i32* %2, align 4, !dbg !528
  ret i32 %58, !dbg !528
}

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_nl_fill_service_attr(%struct.nl_msg*, %struct.ip_vs_service_app*) #0 !dbg !529 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.ip_vs_service_app*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.ip_vs_flags, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !532, metadata !195), !dbg !533
  store %struct.ip_vs_service_app* %1, %struct.ip_vs_service_app** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %5, metadata !534, metadata !195), !dbg !535
  call void @llvm.dbg.declare(metadata %struct.nlattr** %6, metadata !536, metadata !195), !dbg !543
  call void @llvm.dbg.declare(metadata %struct.ip_vs_flags* %7, metadata !544, metadata !195), !dbg !549
  %14 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %7, i32 0, i32 0, !dbg !550
  %15 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !551
  %16 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %15, i32 0, i32 0, !dbg !552
  %17 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %16, i32 0, i32 5, !dbg !553
  %18 = load i32, i32* %17, align 4, !dbg !553
  store i32 %18, i32* %14, align 4, !dbg !550
  %19 = getelementptr inbounds %struct.ip_vs_flags, %struct.ip_vs_flags* %7, i32 0, i32 1, !dbg !550
  store i32 -1, i32* %19, align 4, !dbg !550
  %20 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !554
  %21 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %20, i32 1), !dbg !555
  store %struct.nlattr* %21, %struct.nlattr** %6, align 8, !dbg !556
  %22 = load %struct.nlattr*, %struct.nlattr** %6, align 8, !dbg !557
  %23 = icmp ne %struct.nlattr* %22, null, !dbg !557
  br i1 %23, label %25, label %24, !dbg !559

; <label>:24:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !560
  br label %180, !dbg !560

; <label>:25:                                     ; preds = %2
  br label %26, !dbg !561, !llvm.loop !562

; <label>:26:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata i16* %8, metadata !563, metadata !195), !dbg !565
  %27 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !566
  %28 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %27, i32 0, i32 1, !dbg !568
  %29 = load i16, i16* %28, align 4, !dbg !568
  store i16 %29, i16* %8, align 2, !dbg !569
  br label %30, !dbg !570, !llvm.loop !571

; <label>:30:                                     ; preds = %26
  %31 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !573
  %32 = bitcast i16* %8 to i8*, !dbg !577
  %33 = call i32 @nla_put(%struct.nl_msg* %31, i32 1, i32 2, i8* %32), !dbg !578
  %34 = icmp slt i32 %33, 0, !dbg !579
  br i1 %34, label %35, label %36, !dbg !578

; <label>:35:                                     ; preds = %30
  br label %179, !dbg !580

; <label>:36:                                     ; preds = %30
  br label %37, !dbg !582

; <label>:37:                                     ; preds = %36
  br label %38, !dbg !584

; <label>:38:                                     ; preds = %37
  %39 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !586
  %40 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %39, i32 0, i32 0, !dbg !588
  %41 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %40, i32 0, i32 3, !dbg !589
  %42 = load i32, i32* %41, align 4, !dbg !589
  %43 = icmp ne i32 %42, 0, !dbg !586
  br i1 %43, label %44, label %59, !dbg !590

; <label>:44:                                     ; preds = %38
  br label %45, !dbg !591, !llvm.loop !593

; <label>:45:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata i32* %9, metadata !594, metadata !195), !dbg !596
  %46 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !597
  %47 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %46, i32 0, i32 0, !dbg !599
  %48 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %47, i32 0, i32 3, !dbg !600
  %49 = load i32, i32* %48, align 4, !dbg !600
  store i32 %49, i32* %9, align 4, !dbg !601
  br label %50, !dbg !602, !llvm.loop !603

; <label>:50:                                     ; preds = %45
  %51 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !605
  %52 = bitcast i32* %9 to i8*, !dbg !609
  %53 = call i32 @nla_put(%struct.nl_msg* %51, i32 5, i32 4, i8* %52), !dbg !610
  %54 = icmp slt i32 %53, 0, !dbg !611
  br i1 %54, label %55, label %56, !dbg !610

; <label>:55:                                     ; preds = %50
  br label %179, !dbg !612

; <label>:56:                                     ; preds = %50
  br label %57, !dbg !614

; <label>:57:                                     ; preds = %56
  br label %58, !dbg !616

; <label>:58:                                     ; preds = %57
  br label %98, !dbg !618

; <label>:59:                                     ; preds = %38
  br label %60, !dbg !619, !llvm.loop !621

; <label>:60:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata i16* %10, metadata !622, metadata !195), !dbg !624
  %61 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !625
  %62 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %61, i32 0, i32 0, !dbg !627
  %63 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %62, i32 0, i32 0, !dbg !628
  %64 = load i16, i16* %63, align 4, !dbg !628
  store i16 %64, i16* %10, align 2, !dbg !629
  br label %65, !dbg !630, !llvm.loop !631

; <label>:65:                                     ; preds = %60
  %66 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !633
  %67 = bitcast i16* %10 to i8*, !dbg !637
  %68 = call i32 @nla_put(%struct.nl_msg* %66, i32 2, i32 2, i8* %67), !dbg !638
  %69 = icmp slt i32 %68, 0, !dbg !639
  br i1 %69, label %70, label %71, !dbg !638

; <label>:70:                                     ; preds = %65
  br label %179, !dbg !640

; <label>:71:                                     ; preds = %65
  br label %72, !dbg !642

; <label>:72:                                     ; preds = %71
  br label %73, !dbg !644

; <label>:73:                                     ; preds = %72
  br label %74, !dbg !646, !llvm.loop !647

; <label>:74:                                     ; preds = %73
  %75 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !648
  %76 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !652
  %77 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %76, i32 0, i32 2, !dbg !653
  %78 = bitcast %union.nf_inet_addr* %77 to i8*, !dbg !654
  %79 = call i32 @nla_put(%struct.nl_msg* %75, i32 3, i32 16, i8* %78), !dbg !655
  %80 = icmp slt i32 %79, 0, !dbg !656
  br i1 %80, label %81, label %82, !dbg !655

; <label>:81:                                     ; preds = %74
  br label %179, !dbg !657

; <label>:82:                                     ; preds = %74
  br label %83, !dbg !659

; <label>:83:                                     ; preds = %82
  br label %84, !dbg !661, !llvm.loop !662

; <label>:84:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata i16* %11, metadata !663, metadata !195), !dbg !665
  %85 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !666
  %86 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %85, i32 0, i32 0, !dbg !668
  %87 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %86, i32 0, i32 2, !dbg !669
  %88 = load i16, i16* %87, align 4, !dbg !669
  store i16 %88, i16* %11, align 2, !dbg !670
  br label %89, !dbg !671, !llvm.loop !672

; <label>:89:                                     ; preds = %84
  %90 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !674
  %91 = bitcast i16* %11 to i8*, !dbg !678
  %92 = call i32 @nla_put(%struct.nl_msg* %90, i32 4, i32 2, i8* %91), !dbg !679
  %93 = icmp slt i32 %92, 0, !dbg !680
  br i1 %93, label %94, label %95, !dbg !679

; <label>:94:                                     ; preds = %89
  br label %179, !dbg !681

; <label>:95:                                     ; preds = %89
  br label %96, !dbg !683

; <label>:96:                                     ; preds = %95
  br label %97, !dbg !685

; <label>:97:                                     ; preds = %96
  br label %98

; <label>:98:                                     ; preds = %97, %58
  br label %99, !dbg !687, !llvm.loop !688

; <label>:99:                                     ; preds = %98
  %100 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !689
  %101 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !693
  %102 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %101, i32 0, i32 0, !dbg !694
  %103 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %102, i32 0, i32 4, !dbg !695
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %103, i32 0, i32 0, !dbg !693
  %105 = call i64 @strlen(i8* %104) #8, !dbg !696
  %106 = trunc i64 %105 to i32, !dbg !697
  %107 = add nsw i32 %106, 1, !dbg !698
  %108 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !699
  %109 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %108, i32 0, i32 0, !dbg !700
  %110 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %109, i32 0, i32 4, !dbg !701
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %110, i32 0, i32 0, !dbg !699
  %112 = call i32 @nla_put(%struct.nl_msg* %100, i32 6, i32 %107, i8* %111), !dbg !702
  %113 = icmp slt i32 %112, 0, !dbg !704
  br i1 %113, label %114, label %115, !dbg !705

; <label>:114:                                    ; preds = %99
  br label %179, !dbg !706

; <label>:115:                                    ; preds = %99
  br label %116, !dbg !708

; <label>:116:                                    ; preds = %115
  %117 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !710
  %118 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %117, i32 0, i32 3, !dbg !712
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %118, i64 0, i64 0, !dbg !710
  %120 = load i8, i8* %119, align 4, !dbg !710
  %121 = icmp ne i8 %120, 0, !dbg !710
  br i1 %121, label %122, label %139, !dbg !713

; <label>:122:                                    ; preds = %116
  br label %123, !dbg !714, !llvm.loop !715

; <label>:123:                                    ; preds = %122
  %124 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !716
  %125 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !720
  %126 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %125, i32 0, i32 3, !dbg !721
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %126, i32 0, i32 0, !dbg !720
  %128 = call i64 @strlen(i8* %127) #8, !dbg !722
  %129 = trunc i64 %128 to i32, !dbg !723
  %130 = add nsw i32 %129, 1, !dbg !724
  %131 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !725
  %132 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %131, i32 0, i32 3, !dbg !726
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %132, i32 0, i32 0, !dbg !725
  %134 = call i32 @nla_put(%struct.nl_msg* %124, i32 11, i32 %130, i8* %133), !dbg !727
  %135 = icmp slt i32 %134, 0, !dbg !729
  br i1 %135, label %136, label %137, !dbg !730

; <label>:136:                                    ; preds = %123
  br label %179, !dbg !731

; <label>:137:                                    ; preds = %123
  br label %138, !dbg !733

; <label>:138:                                    ; preds = %137
  br label %139, !dbg !735

; <label>:139:                                    ; preds = %138, %116
  br label %140, !dbg !737, !llvm.loop !738

; <label>:140:                                    ; preds = %139
  %141 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !739
  %142 = bitcast %struct.ip_vs_flags* %7 to i8*, !dbg !743
  %143 = call i32 @nla_put(%struct.nl_msg* %141, i32 7, i32 8, i8* %142), !dbg !744
  %144 = icmp slt i32 %143, 0, !dbg !745
  br i1 %144, label %145, label %146, !dbg !744

; <label>:145:                                    ; preds = %140
  br label %179, !dbg !746

; <label>:146:                                    ; preds = %140
  br label %147, !dbg !748

; <label>:147:                                    ; preds = %146
  br label %148, !dbg !750, !llvm.loop !751

; <label>:148:                                    ; preds = %147
  call void @llvm.dbg.declare(metadata i32* %12, metadata !752, metadata !195), !dbg !754
  %149 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !755
  %150 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %149, i32 0, i32 0, !dbg !757
  %151 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %150, i32 0, i32 6, !dbg !758
  %152 = load i32, i32* %151, align 4, !dbg !758
  store i32 %152, i32* %12, align 4, !dbg !759
  br label %153, !dbg !760, !llvm.loop !761

; <label>:153:                                    ; preds = %148
  %154 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !763
  %155 = bitcast i32* %12 to i8*, !dbg !767
  %156 = call i32 @nla_put(%struct.nl_msg* %154, i32 8, i32 4, i8* %155), !dbg !768
  %157 = icmp slt i32 %156, 0, !dbg !769
  br i1 %157, label %158, label %159, !dbg !768

; <label>:158:                                    ; preds = %153
  br label %179, !dbg !770

; <label>:159:                                    ; preds = %153
  br label %160, !dbg !772

; <label>:160:                                    ; preds = %159
  br label %161, !dbg !774

; <label>:161:                                    ; preds = %160
  br label %162, !dbg !776, !llvm.loop !777

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.declare(metadata i32* %13, metadata !778, metadata !195), !dbg !780
  %163 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %5, align 8, !dbg !781
  %164 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %163, i32 0, i32 0, !dbg !783
  %165 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %164, i32 0, i32 7, !dbg !784
  %166 = load i32, i32* %165, align 4, !dbg !784
  store i32 %166, i32* %13, align 4, !dbg !785
  br label %167, !dbg !786, !llvm.loop !787

; <label>:167:                                    ; preds = %162
  %168 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !789
  %169 = bitcast i32* %13 to i8*, !dbg !793
  %170 = call i32 @nla_put(%struct.nl_msg* %168, i32 9, i32 4, i8* %169), !dbg !794
  %171 = icmp slt i32 %170, 0, !dbg !795
  br i1 %171, label %172, label %173, !dbg !794

; <label>:172:                                    ; preds = %167
  br label %179, !dbg !796

; <label>:173:                                    ; preds = %167
  br label %174, !dbg !798

; <label>:174:                                    ; preds = %173
  br label %175, !dbg !800

; <label>:175:                                    ; preds = %174
  %176 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !802
  %177 = load %struct.nlattr*, %struct.nlattr** %6, align 8, !dbg !803
  %178 = call i32 @nla_nest_end(%struct.nl_msg* %176, %struct.nlattr* %177), !dbg !804
  store i32 0, i32* %3, align 4, !dbg !805
  br label %180, !dbg !805

; <label>:179:                                    ; preds = %172, %158, %145, %136, %114, %94, %81, %70, %55, %35
  store i32 -1, i32* %3, align 4, !dbg !806
  br label %180, !dbg !806

; <label>:180:                                    ; preds = %179, %175, %24
  %181 = load i32, i32* %3, align 4, !dbg !807
  ret i32 %181, !dbg !807
}

declare void @nlmsg_free(%struct.nl_msg*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define i32 @ipvs_update_service(%struct.ip_vs_service_app*) #0 !dbg !808 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service_app*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  store %struct.ip_vs_service_app* %0, %struct.ip_vs_service_app** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %3, metadata !809, metadata !195), !dbg !810
  store i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_update_service to i8*), i8** @ipvs_func, align 8, !dbg !811
  %5 = load i8, i8* @try_nl, align 1, !dbg !812
  %6 = trunc i8 %5 to i1, !dbg !812
  br i1 %6, label %7, label %22, !dbg !814

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !815, metadata !195), !dbg !817
  %8 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 2, i32 0), !dbg !818
  store %struct.nl_msg* %8, %struct.nl_msg** %4, align 8, !dbg !817
  %9 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !819
  %10 = icmp ne %struct.nl_msg* %9, null, !dbg !819
  br i1 %10, label %12, label %11, !dbg !821

; <label>:11:                                     ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !822
  br label %57, !dbg !822

; <label>:12:                                     ; preds = %7
  %13 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !824
  %14 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !826
  %15 = call i32 @ipvs_nl_fill_service_attr(%struct.nl_msg* %13, %struct.ip_vs_service_app* %14), !dbg !827
  %16 = icmp ne i32 %15, 0, !dbg !827
  br i1 %16, label %17, label %19, !dbg !828

; <label>:17:                                     ; preds = %12
  %18 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !829
  call void @nlmsg_free(%struct.nl_msg* %18), !dbg !831
  store i32 -1, i32* %2, align 4, !dbg !832
  br label %57, !dbg !832

; <label>:19:                                     ; preds = %12
  %20 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !833
  %21 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %20, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !834
  store i32 %21, i32* %2, align 4, !dbg !835
  br label %57, !dbg !835

; <label>:22:                                     ; preds = %1
  %23 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !836
  %24 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %23, i32 0, i32 1, !dbg !838
  %25 = load i16, i16* %24, align 4, !dbg !838
  %26 = zext i16 %25 to i32, !dbg !836
  %27 = icmp ne i32 %26, 0, !dbg !836
  br i1 %27, label %28, label %36, !dbg !839

; <label>:28:                                     ; preds = %22
  %29 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !840
  %30 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %29, i32 0, i32 1, !dbg !842
  %31 = load i16, i16* %30, align 4, !dbg !842
  %32 = zext i16 %31 to i32, !dbg !840
  %33 = icmp ne i32 %32, 2, !dbg !843
  br i1 %33, label %34, label %36, !dbg !844

; <label>:34:                                     ; preds = %28
  %35 = call i32* @__errno_location() #1, !dbg !845
  store i32 97, i32* %35, align 4, !dbg !848
  br label %56, !dbg !845

; <label>:36:                                     ; preds = %28, %22
  %37 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !849
  %38 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %37, i32 0, i32 2, !dbg !851
  %39 = bitcast %union.nf_inet_addr* %38 to i32*, !dbg !852
  %40 = load i32, i32* %39, align 4, !dbg !852
  %41 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !853
  %42 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %41, i32 0, i32 0, !dbg !854
  %43 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %42, i32 0, i32 1, !dbg !855
  store i32 %40, i32* %43, align 4, !dbg !856
  %44 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !857
  %45 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %44, i32 0, i32 3, !dbg !858
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0, !dbg !857
  %47 = load i8, i8* %46, align 4, !dbg !857
  %48 = icmp ne i8 %47, 0, !dbg !857
  br i1 %48, label %49, label %51, !dbg !857

; <label>:49:                                     ; preds = %36
  %50 = call i32* @__errno_location() #1, !dbg !859
  store i32 97, i32* %50, align 4, !dbg !863
  br label %56, !dbg !859

; <label>:51:                                     ; preds = %36
  %52 = load i32, i32* @sockfd, align 4, !dbg !864
  %53 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !865
  %54 = bitcast %struct.ip_vs_service_app* %53 to i8*, !dbg !866
  %55 = call i32 @setsockopt(i32 %52, i32 0, i32 1155, i8* %54, i32 44) #7, !dbg !867
  store i32 %55, i32* %2, align 4, !dbg !868
  br label %57, !dbg !868

; <label>:56:                                     ; preds = %49, %34
  store i32 -1, i32* %2, align 4, !dbg !869
  br label %57, !dbg !869

; <label>:57:                                     ; preds = %56, %51, %19, %17, %11
  %58 = load i32, i32* %2, align 4, !dbg !870
  ret i32 %58, !dbg !870
}

; Function Attrs: nounwind uwtable
define i32 @ipvs_del_service(%struct.ip_vs_service_app*) #0 !dbg !871 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service_app*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  store %struct.ip_vs_service_app* %0, %struct.ip_vs_service_app** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %3, metadata !872, metadata !195), !dbg !873
  store i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_del_service to i8*), i8** @ipvs_func, align 8, !dbg !874
  %5 = load i8, i8* @try_nl, align 1, !dbg !875
  %6 = trunc i8 %5 to i1, !dbg !875
  br i1 %6, label %7, label %22, !dbg !877

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !878, metadata !195), !dbg !880
  %8 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 3, i32 0), !dbg !881
  store %struct.nl_msg* %8, %struct.nl_msg** %4, align 8, !dbg !880
  %9 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !882
  %10 = icmp ne %struct.nl_msg* %9, null, !dbg !882
  br i1 %10, label %12, label %11, !dbg !884

; <label>:11:                                     ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !885
  br label %57, !dbg !885

; <label>:12:                                     ; preds = %7
  %13 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !887
  %14 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !889
  %15 = call i32 @ipvs_nl_fill_service_attr(%struct.nl_msg* %13, %struct.ip_vs_service_app* %14), !dbg !890
  %16 = icmp ne i32 %15, 0, !dbg !890
  br i1 %16, label %17, label %19, !dbg !891

; <label>:17:                                     ; preds = %12
  %18 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !892
  call void @nlmsg_free(%struct.nl_msg* %18), !dbg !894
  store i32 -1, i32* %2, align 4, !dbg !895
  br label %57, !dbg !895

; <label>:19:                                     ; preds = %12
  %20 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !896
  %21 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %20, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !897
  store i32 %21, i32* %2, align 4, !dbg !898
  br label %57, !dbg !898

; <label>:22:                                     ; preds = %1
  %23 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !899
  %24 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %23, i32 0, i32 1, !dbg !901
  %25 = load i16, i16* %24, align 4, !dbg !901
  %26 = zext i16 %25 to i32, !dbg !899
  %27 = icmp ne i32 %26, 0, !dbg !899
  br i1 %27, label %28, label %36, !dbg !902

; <label>:28:                                     ; preds = %22
  %29 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !903
  %30 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %29, i32 0, i32 1, !dbg !905
  %31 = load i16, i16* %30, align 4, !dbg !905
  %32 = zext i16 %31 to i32, !dbg !903
  %33 = icmp ne i32 %32, 2, !dbg !906
  br i1 %33, label %34, label %36, !dbg !907

; <label>:34:                                     ; preds = %28
  %35 = call i32* @__errno_location() #1, !dbg !908
  store i32 97, i32* %35, align 4, !dbg !911
  br label %56, !dbg !908

; <label>:36:                                     ; preds = %28, %22
  %37 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !912
  %38 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %37, i32 0, i32 2, !dbg !914
  %39 = bitcast %union.nf_inet_addr* %38 to i32*, !dbg !915
  %40 = load i32, i32* %39, align 4, !dbg !915
  %41 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !916
  %42 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %41, i32 0, i32 0, !dbg !917
  %43 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %42, i32 0, i32 1, !dbg !918
  store i32 %40, i32* %43, align 4, !dbg !919
  %44 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !920
  %45 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %44, i32 0, i32 3, !dbg !921
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i64 0, i64 0, !dbg !920
  %47 = load i8, i8* %46, align 4, !dbg !920
  %48 = icmp ne i8 %47, 0, !dbg !920
  br i1 %48, label %49, label %51, !dbg !920

; <label>:49:                                     ; preds = %36
  %50 = call i32* @__errno_location() #1, !dbg !922
  store i32 97, i32* %50, align 4, !dbg !926
  br label %56, !dbg !922

; <label>:51:                                     ; preds = %36
  %52 = load i32, i32* @sockfd, align 4, !dbg !927
  %53 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !928
  %54 = bitcast %struct.ip_vs_service_app* %53 to i8*, !dbg !929
  %55 = call i32 @setsockopt(i32 %52, i32 0, i32 1156, i8* %54, i32 44) #7, !dbg !930
  store i32 %55, i32* %2, align 4, !dbg !931
  br label %57, !dbg !931

; <label>:56:                                     ; preds = %49, %34
  store i32 -1, i32* %2, align 4, !dbg !932
  br label %57, !dbg !932

; <label>:57:                                     ; preds = %56, %51, %19, %17, %11
  %58 = load i32, i32* %2, align 4, !dbg !933
  ret i32 %58, !dbg !933
}

; Function Attrs: nounwind uwtable
define i32 @ipvs_zero_service(%struct.ip_vs_service_app*) #0 !dbg !934 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service_app*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  store %struct.ip_vs_service_app* %0, %struct.ip_vs_service_app** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %3, metadata !935, metadata !195), !dbg !936
  store i8* bitcast (i32 (%struct.ip_vs_service_app*)* @ipvs_zero_service to i8*), i8** @ipvs_func, align 8, !dbg !937
  %5 = load i8, i8* @try_nl, align 1, !dbg !938
  %6 = trunc i8 %5 to i1, !dbg !938
  br i1 %6, label %7, label %43, !dbg !940

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !941, metadata !195), !dbg !943
  %8 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 16, i32 0), !dbg !944
  store %struct.nl_msg* %8, %struct.nl_msg** %4, align 8, !dbg !943
  %9 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !945
  %10 = icmp ne %struct.nl_msg* %9, null, !dbg !945
  br i1 %10, label %12, label %11, !dbg !947

; <label>:11:                                     ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !948
  br label %78, !dbg !948

; <label>:12:                                     ; preds = %7
  %13 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !950
  %14 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %13, i32 0, i32 0, !dbg !952
  %15 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %14, i32 0, i32 3, !dbg !953
  %16 = load i32, i32* %15, align 4, !dbg !953
  %17 = icmp ne i32 %16, 0, !dbg !950
  br i1 %17, label %32, label %18, !dbg !954

; <label>:18:                                     ; preds = %12
  %19 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !955
  %20 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %19, i32 0, i32 2, !dbg !957
  %21 = bitcast %union.nf_inet_addr* %20 to %struct.in6_addr*, !dbg !958
  %22 = bitcast %struct.in6_addr* %21 to i8*, !dbg !959
  %23 = call i32 @memcmp(i8* bitcast (%struct.in6_addr* @in6addr_any to i8*), i8* %22, i64 16) #8, !dbg !960
  %24 = icmp ne i32 %23, 0, !dbg !960
  br i1 %24, label %32, label %25, !dbg !961

; <label>:25:                                     ; preds = %18
  %26 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !962
  %27 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %26, i32 0, i32 0, !dbg !963
  %28 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %27, i32 0, i32 2, !dbg !964
  %29 = load i16, i16* %28, align 4, !dbg !964
  %30 = zext i16 %29 to i32, !dbg !962
  %31 = icmp ne i32 %30, 0, !dbg !962
  br i1 %31, label %32, label %40, !dbg !965

; <label>:32:                                     ; preds = %25, %18, %12
  %33 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !967
  %34 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !970
  %35 = call i32 @ipvs_nl_fill_service_attr(%struct.nl_msg* %33, %struct.ip_vs_service_app* %34), !dbg !971
  %36 = icmp ne i32 %35, 0, !dbg !971
  br i1 %36, label %37, label %39, !dbg !972

; <label>:37:                                     ; preds = %32
  %38 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !973
  call void @nlmsg_free(%struct.nl_msg* %38), !dbg !975
  store i32 -1, i32* %2, align 4, !dbg !976
  br label %78, !dbg !976

; <label>:39:                                     ; preds = %32
  br label %40, !dbg !977

; <label>:40:                                     ; preds = %39, %25
  %41 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !978
  %42 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %41, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !979
  store i32 %42, i32* %2, align 4, !dbg !980
  br label %78, !dbg !980

; <label>:43:                                     ; preds = %1
  %44 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !981
  %45 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %44, i32 0, i32 1, !dbg !983
  %46 = load i16, i16* %45, align 4, !dbg !983
  %47 = zext i16 %46 to i32, !dbg !981
  %48 = icmp ne i32 %47, 0, !dbg !981
  br i1 %48, label %49, label %57, !dbg !984

; <label>:49:                                     ; preds = %43
  %50 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !985
  %51 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %50, i32 0, i32 1, !dbg !987
  %52 = load i16, i16* %51, align 4, !dbg !987
  %53 = zext i16 %52 to i32, !dbg !985
  %54 = icmp ne i32 %53, 2, !dbg !988
  br i1 %54, label %55, label %57, !dbg !989

; <label>:55:                                     ; preds = %49
  %56 = call i32* @__errno_location() #1, !dbg !990
  store i32 97, i32* %56, align 4, !dbg !993
  br label %77, !dbg !990

; <label>:57:                                     ; preds = %49, %43
  %58 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !994
  %59 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %58, i32 0, i32 2, !dbg !996
  %60 = bitcast %union.nf_inet_addr* %59 to i32*, !dbg !997
  %61 = load i32, i32* %60, align 4, !dbg !997
  %62 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !998
  %63 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %62, i32 0, i32 0, !dbg !999
  %64 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %63, i32 0, i32 1, !dbg !1000
  store i32 %61, i32* %64, align 4, !dbg !1001
  %65 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !1002
  %66 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %65, i32 0, i32 3, !dbg !1003
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %66, i64 0, i64 0, !dbg !1002
  %68 = load i8, i8* %67, align 4, !dbg !1002
  %69 = icmp ne i8 %68, 0, !dbg !1002
  br i1 %69, label %70, label %72, !dbg !1002

; <label>:70:                                     ; preds = %57
  %71 = call i32* @__errno_location() #1, !dbg !1004
  store i32 97, i32* %71, align 4, !dbg !1008
  br label %77, !dbg !1004

; <label>:72:                                     ; preds = %57
  %73 = load i32, i32* @sockfd, align 4, !dbg !1009
  %74 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %3, align 8, !dbg !1010
  %75 = bitcast %struct.ip_vs_service_app* %74 to i8*, !dbg !1011
  %76 = call i32 @setsockopt(i32 %73, i32 0, i32 1167, i8* %75, i32 44) #7, !dbg !1012
  store i32 %76, i32* %2, align 4, !dbg !1013
  br label %78, !dbg !1013

; <label>:77:                                     ; preds = %70, %55
  store i32 -1, i32* %2, align 4, !dbg !1014
  br label %78, !dbg !1014

; <label>:78:                                     ; preds = %77, %72, %40, %37, %11
  %79 = load i32, i32* %2, align 4, !dbg !1015
  ret i32 %79, !dbg !1015
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define i32 @ipvs_add_dest(%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*) #0 !dbg !1016 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_service_app*, align 8
  %5 = alloca %struct.ip_vs_dest_app*, align 8
  %6 = alloca %struct.ipvs_servicedest_s, align 4
  %7 = alloca %struct.nl_msg*, align 8
  store %struct.ip_vs_service_app* %0, %struct.ip_vs_service_app** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %4, metadata !1034, metadata !195), !dbg !1035
  store %struct.ip_vs_dest_app* %1, %struct.ip_vs_dest_app** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %5, metadata !1036, metadata !195), !dbg !1037
  call void @llvm.dbg.declare(metadata %struct.ipvs_servicedest_s* %6, metadata !1038, metadata !195), !dbg !1044
  store i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_add_dest to i8*), i8** @ipvs_func, align 8, !dbg !1045
  %8 = load i8, i8* @try_nl, align 1, !dbg !1046
  %9 = trunc i8 %8 to i1, !dbg !1046
  br i1 %9, label %10, label %32, !dbg !1048

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %7, metadata !1049, metadata !195), !dbg !1051
  %11 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 5, i32 0), !dbg !1052
  store %struct.nl_msg* %11, %struct.nl_msg** %7, align 8, !dbg !1051
  %12 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1053
  %13 = icmp ne %struct.nl_msg* %12, null, !dbg !1053
  br i1 %13, label %15, label %14, !dbg !1055

; <label>:14:                                     ; preds = %10
  store i32 -1, i32* %3, align 4, !dbg !1056
  br label %95, !dbg !1056

; <label>:15:                                     ; preds = %10
  %16 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1058
  %17 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1060
  %18 = call i32 @ipvs_nl_fill_service_attr(%struct.nl_msg* %16, %struct.ip_vs_service_app* %17), !dbg !1061
  %19 = icmp ne i32 %18, 0, !dbg !1061
  br i1 %19, label %20, label %21, !dbg !1062

; <label>:20:                                     ; preds = %15
  br label %30, !dbg !1063

; <label>:21:                                     ; preds = %15
  %22 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1064
  %23 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1066
  %24 = call i32 @ipvs_nl_fill_dest_attr(%struct.nl_msg* %22, %struct.ip_vs_dest_app* %23), !dbg !1067
  %25 = icmp ne i32 %24, 0, !dbg !1067
  br i1 %25, label %26, label %27, !dbg !1068

; <label>:26:                                     ; preds = %21
  br label %30, !dbg !1069

; <label>:27:                                     ; preds = %21
  %28 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1070
  %29 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %28, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !1071
  store i32 %29, i32* %3, align 4, !dbg !1072
  br label %95, !dbg !1072

; <label>:30:                                     ; preds = %26, %20
  %31 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1073
  call void @nlmsg_free(%struct.nl_msg* %31), !dbg !1074
  store i32 -1, i32* %3, align 4, !dbg !1075
  br label %95, !dbg !1075

; <label>:32:                                     ; preds = %2
  %33 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1076
  %34 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %33, i32 0, i32 1, !dbg !1078
  %35 = load i16, i16* %34, align 4, !dbg !1078
  %36 = zext i16 %35 to i32, !dbg !1076
  %37 = icmp ne i32 %36, 0, !dbg !1076
  br i1 %37, label %38, label %46, !dbg !1079

; <label>:38:                                     ; preds = %32
  %39 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1080
  %40 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %39, i32 0, i32 1, !dbg !1082
  %41 = load i16, i16* %40, align 4, !dbg !1082
  %42 = zext i16 %41 to i32, !dbg !1080
  %43 = icmp ne i32 %42, 2, !dbg !1083
  br i1 %43, label %44, label %46, !dbg !1084

; <label>:44:                                     ; preds = %38
  %45 = call i32* @__errno_location() #1, !dbg !1085
  store i32 97, i32* %45, align 4, !dbg !1088
  br label %94, !dbg !1085

; <label>:46:                                     ; preds = %38, %32
  %47 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1089
  %48 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %47, i32 0, i32 2, !dbg !1091
  %49 = bitcast %union.nf_inet_addr* %48 to i32*, !dbg !1092
  %50 = load i32, i32* %49, align 4, !dbg !1092
  %51 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1093
  %52 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %51, i32 0, i32 0, !dbg !1094
  %53 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %52, i32 0, i32 1, !dbg !1095
  store i32 %50, i32* %53, align 4, !dbg !1096
  %54 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1097
  %55 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %54, i32 0, i32 3, !dbg !1098
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %55, i64 0, i64 0, !dbg !1097
  %57 = load i8, i8* %56, align 4, !dbg !1097
  %58 = icmp ne i8 %57, 0, !dbg !1097
  br i1 %58, label %59, label %61, !dbg !1097

; <label>:59:                                     ; preds = %46
  %60 = call i32* @__errno_location() #1, !dbg !1099
  store i32 97, i32* %60, align 4, !dbg !1103
  br label %94, !dbg !1099

; <label>:61:                                     ; preds = %46
  %62 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1104
  %63 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %62, i32 0, i32 1, !dbg !1106
  %64 = load i16, i16* %63, align 4, !dbg !1106
  %65 = zext i16 %64 to i32, !dbg !1104
  %66 = icmp ne i32 %65, 0, !dbg !1104
  br i1 %66, label %67, label %75, !dbg !1107

; <label>:67:                                     ; preds = %61
  %68 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1108
  %69 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %68, i32 0, i32 1, !dbg !1110
  %70 = load i16, i16* %69, align 4, !dbg !1110
  %71 = zext i16 %70 to i32, !dbg !1108
  %72 = icmp ne i32 %71, 2, !dbg !1111
  br i1 %72, label %73, label %75, !dbg !1112

; <label>:73:                                     ; preds = %67
  %74 = call i32* @__errno_location() #1, !dbg !1113
  store i32 97, i32* %74, align 4, !dbg !1116
  br label %94, !dbg !1113

; <label>:75:                                     ; preds = %67, %61
  %76 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1117
  %77 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %76, i32 0, i32 2, !dbg !1118
  %78 = bitcast %union.nf_inet_addr* %77 to i32*, !dbg !1119
  %79 = load i32, i32* %78, align 4, !dbg !1119
  %80 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1120
  %81 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %80, i32 0, i32 0, !dbg !1121
  %82 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %81, i32 0, i32 0, !dbg !1122
  store i32 %79, i32* %82, align 4, !dbg !1123
  %83 = getelementptr inbounds %struct.ipvs_servicedest_s, %struct.ipvs_servicedest_s* %6, i32 0, i32 0, !dbg !1124
  %84 = bitcast %struct.ip_vs_service_user* %83 to i8*, !dbg !1125
  %85 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1126
  %86 = bitcast %struct.ip_vs_service_app* %85 to i8*, !dbg !1125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %86, i64 44, i32 4, i1 false), !dbg !1125
  %87 = getelementptr inbounds %struct.ipvs_servicedest_s, %struct.ipvs_servicedest_s* %6, i32 0, i32 1, !dbg !1127
  %88 = bitcast %struct.ip_vs_dest_user* %87 to i8*, !dbg !1128
  %89 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1129
  %90 = bitcast %struct.ip_vs_dest_app* %89 to i8*, !dbg !1128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %90, i64 24, i32 4, i1 false), !dbg !1128
  %91 = load i32, i32* @sockfd, align 4, !dbg !1130
  %92 = bitcast %struct.ipvs_servicedest_s* %6 to i8*, !dbg !1131
  %93 = call i32 @setsockopt(i32 %91, i32 0, i32 1159, i8* %92, i32 68) #7, !dbg !1132
  store i32 %93, i32* %3, align 4, !dbg !1133
  br label %95, !dbg !1133

; <label>:94:                                     ; preds = %73, %59, %44
  store i32 -1, i32* %3, align 4, !dbg !1134
  br label %95, !dbg !1134

; <label>:95:                                     ; preds = %94, %75, %30, %27, %14
  %96 = load i32, i32* %3, align 4, !dbg !1135
  ret i32 %96, !dbg !1135
}

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_nl_fill_dest_attr(%struct.nl_msg*, %struct.ip_vs_dest_app*) #0 !dbg !1136 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.ip_vs_dest_app*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !1139, metadata !195), !dbg !1140
  store %struct.ip_vs_dest_app* %1, %struct.ip_vs_dest_app** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %5, metadata !1141, metadata !195), !dbg !1142
  call void @llvm.dbg.declare(metadata %struct.nlattr** %6, metadata !1143, metadata !195), !dbg !1144
  %13 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1145
  %14 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %13, i32 2), !dbg !1146
  store %struct.nlattr* %14, %struct.nlattr** %6, align 8, !dbg !1147
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8, !dbg !1148
  %16 = icmp ne %struct.nlattr* %15, null, !dbg !1148
  br i1 %16, label %18, label %17, !dbg !1150

; <label>:17:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !1151
  br label %117, !dbg !1151

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !1152, !llvm.loop !1153

; <label>:19:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i16* %7, metadata !1154, metadata !195), !dbg !1156
  %20 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1157
  %21 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %20, i32 0, i32 1, !dbg !1159
  %22 = load i16, i16* %21, align 4, !dbg !1159
  store i16 %22, i16* %7, align 2, !dbg !1160
  br label %23, !dbg !1161, !llvm.loop !1162

; <label>:23:                                     ; preds = %19
  %24 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1164
  %25 = bitcast i16* %7 to i8*, !dbg !1168
  %26 = call i32 @nla_put(%struct.nl_msg* %24, i32 11, i32 2, i8* %25), !dbg !1169
  %27 = icmp slt i32 %26, 0, !dbg !1170
  br i1 %27, label %28, label %29, !dbg !1169

; <label>:28:                                     ; preds = %23
  br label %116, !dbg !1171

; <label>:29:                                     ; preds = %23
  br label %30, !dbg !1173

; <label>:30:                                     ; preds = %29
  br label %31, !dbg !1175

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !1177, !llvm.loop !1178

; <label>:32:                                     ; preds = %31
  %33 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1179
  %34 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1183
  %35 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %34, i32 0, i32 2, !dbg !1184
  %36 = bitcast %union.nf_inet_addr* %35 to i8*, !dbg !1185
  %37 = call i32 @nla_put(%struct.nl_msg* %33, i32 1, i32 16, i8* %36), !dbg !1186
  %38 = icmp slt i32 %37, 0, !dbg !1187
  br i1 %38, label %39, label %40, !dbg !1186

; <label>:39:                                     ; preds = %32
  br label %116, !dbg !1188

; <label>:40:                                     ; preds = %32
  br label %41, !dbg !1190

; <label>:41:                                     ; preds = %40
  br label %42, !dbg !1192, !llvm.loop !1193

; <label>:42:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i16* %8, metadata !1194, metadata !195), !dbg !1196
  %43 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1197
  %44 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %43, i32 0, i32 0, !dbg !1199
  %45 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %44, i32 0, i32 1, !dbg !1200
  %46 = load i16, i16* %45, align 4, !dbg !1200
  store i16 %46, i16* %8, align 2, !dbg !1201
  br label %47, !dbg !1202, !llvm.loop !1203

; <label>:47:                                     ; preds = %42
  %48 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1205
  %49 = bitcast i16* %8 to i8*, !dbg !1209
  %50 = call i32 @nla_put(%struct.nl_msg* %48, i32 2, i32 2, i8* %49), !dbg !1210
  %51 = icmp slt i32 %50, 0, !dbg !1211
  br i1 %51, label %52, label %53, !dbg !1210

; <label>:52:                                     ; preds = %47
  br label %116, !dbg !1212

; <label>:53:                                     ; preds = %47
  br label %54, !dbg !1214

; <label>:54:                                     ; preds = %53
  br label %55, !dbg !1216

; <label>:55:                                     ; preds = %54
  br label %56, !dbg !1218, !llvm.loop !1219

; <label>:56:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1220, metadata !195), !dbg !1222
  %57 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1223
  %58 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %57, i32 0, i32 0, !dbg !1225
  %59 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %58, i32 0, i32 2, !dbg !1226
  %60 = load i32, i32* %59, align 4, !dbg !1226
  %61 = and i32 %60, 7, !dbg !1227
  store i32 %61, i32* %9, align 4, !dbg !1228
  br label %62, !dbg !1229, !llvm.loop !1230

; <label>:62:                                     ; preds = %56
  %63 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1232
  %64 = bitcast i32* %9 to i8*, !dbg !1236
  %65 = call i32 @nla_put(%struct.nl_msg* %63, i32 3, i32 4, i8* %64), !dbg !1237
  %66 = icmp slt i32 %65, 0, !dbg !1238
  br i1 %66, label %67, label %68, !dbg !1237

; <label>:67:                                     ; preds = %62
  br label %116, !dbg !1239

; <label>:68:                                     ; preds = %62
  br label %69, !dbg !1241

; <label>:69:                                     ; preds = %68
  br label %70, !dbg !1243

; <label>:70:                                     ; preds = %69
  br label %71, !dbg !1245, !llvm.loop !1246

; <label>:71:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1247, metadata !195), !dbg !1249
  %72 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1250
  %73 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %72, i32 0, i32 0, !dbg !1252
  %74 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %73, i32 0, i32 3, !dbg !1253
  %75 = load i32, i32* %74, align 4, !dbg !1253
  store i32 %75, i32* %10, align 4, !dbg !1254
  br label %76, !dbg !1255, !llvm.loop !1256

; <label>:76:                                     ; preds = %71
  %77 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1258
  %78 = bitcast i32* %10 to i8*, !dbg !1262
  %79 = call i32 @nla_put(%struct.nl_msg* %77, i32 4, i32 4, i8* %78), !dbg !1263
  %80 = icmp slt i32 %79, 0, !dbg !1264
  br i1 %80, label %81, label %82, !dbg !1263

; <label>:81:                                     ; preds = %76
  br label %116, !dbg !1265

; <label>:82:                                     ; preds = %76
  br label %83, !dbg !1267

; <label>:83:                                     ; preds = %82
  br label %84, !dbg !1269

; <label>:84:                                     ; preds = %83
  br label %85, !dbg !1271, !llvm.loop !1272

; <label>:85:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1273, metadata !195), !dbg !1275
  %86 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1276
  %87 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %86, i32 0, i32 0, !dbg !1278
  %88 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %87, i32 0, i32 4, !dbg !1279
  %89 = load i32, i32* %88, align 4, !dbg !1279
  store i32 %89, i32* %11, align 4, !dbg !1280
  br label %90, !dbg !1281, !llvm.loop !1282

; <label>:90:                                     ; preds = %85
  %91 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1284
  %92 = bitcast i32* %11 to i8*, !dbg !1288
  %93 = call i32 @nla_put(%struct.nl_msg* %91, i32 5, i32 4, i8* %92), !dbg !1289
  %94 = icmp slt i32 %93, 0, !dbg !1290
  br i1 %94, label %95, label %96, !dbg !1289

; <label>:95:                                     ; preds = %90
  br label %116, !dbg !1291

; <label>:96:                                     ; preds = %90
  br label %97, !dbg !1293

; <label>:97:                                     ; preds = %96
  br label %98, !dbg !1295

; <label>:98:                                     ; preds = %97
  br label %99, !dbg !1297, !llvm.loop !1298

; <label>:99:                                     ; preds = %98
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1299, metadata !195), !dbg !1301
  %100 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1302
  %101 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %100, i32 0, i32 0, !dbg !1304
  %102 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %101, i32 0, i32 5, !dbg !1305
  %103 = load i32, i32* %102, align 4, !dbg !1305
  store i32 %103, i32* %12, align 4, !dbg !1306
  br label %104, !dbg !1307, !llvm.loop !1308

; <label>:104:                                    ; preds = %99
  %105 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1310
  %106 = bitcast i32* %12 to i8*, !dbg !1314
  %107 = call i32 @nla_put(%struct.nl_msg* %105, i32 6, i32 4, i8* %106), !dbg !1315
  %108 = icmp slt i32 %107, 0, !dbg !1316
  br i1 %108, label %109, label %110, !dbg !1315

; <label>:109:                                    ; preds = %104
  br label %116, !dbg !1317

; <label>:110:                                    ; preds = %104
  br label %111, !dbg !1319

; <label>:111:                                    ; preds = %110
  br label %112, !dbg !1321

; <label>:112:                                    ; preds = %111
  %113 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1323
  %114 = load %struct.nlattr*, %struct.nlattr** %6, align 8, !dbg !1324
  %115 = call i32 @nla_nest_end(%struct.nl_msg* %113, %struct.nlattr* %114), !dbg !1325
  store i32 0, i32* %3, align 4, !dbg !1326
  br label %117, !dbg !1326

; <label>:116:                                    ; preds = %109, %95, %81, %67, %52, %39, %28
  store i32 -1, i32* %3, align 4, !dbg !1327
  br label %117, !dbg !1327

; <label>:117:                                    ; preds = %116, %112, %17
  %118 = load i32, i32* %3, align 4, !dbg !1328
  ret i32 %118, !dbg !1328
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind uwtable
define i32 @ipvs_update_dest(%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*) #0 !dbg !1329 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_service_app*, align 8
  %5 = alloca %struct.ip_vs_dest_app*, align 8
  %6 = alloca %struct.ipvs_servicedest_s, align 4
  %7 = alloca %struct.nl_msg*, align 8
  store %struct.ip_vs_service_app* %0, %struct.ip_vs_service_app** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %4, metadata !1330, metadata !195), !dbg !1331
  store %struct.ip_vs_dest_app* %1, %struct.ip_vs_dest_app** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %5, metadata !1332, metadata !195), !dbg !1333
  call void @llvm.dbg.declare(metadata %struct.ipvs_servicedest_s* %6, metadata !1334, metadata !195), !dbg !1335
  store i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_update_dest to i8*), i8** @ipvs_func, align 8, !dbg !1336
  %8 = load i8, i8* @try_nl, align 1, !dbg !1337
  %9 = trunc i8 %8 to i1, !dbg !1337
  br i1 %9, label %10, label %32, !dbg !1339

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %7, metadata !1340, metadata !195), !dbg !1342
  %11 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 6, i32 0), !dbg !1343
  store %struct.nl_msg* %11, %struct.nl_msg** %7, align 8, !dbg !1342
  %12 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1344
  %13 = icmp ne %struct.nl_msg* %12, null, !dbg !1344
  br i1 %13, label %15, label %14, !dbg !1346

; <label>:14:                                     ; preds = %10
  store i32 -1, i32* %3, align 4, !dbg !1347
  br label %95, !dbg !1347

; <label>:15:                                     ; preds = %10
  %16 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1349
  %17 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1351
  %18 = call i32 @ipvs_nl_fill_service_attr(%struct.nl_msg* %16, %struct.ip_vs_service_app* %17), !dbg !1352
  %19 = icmp ne i32 %18, 0, !dbg !1352
  br i1 %19, label %20, label %21, !dbg !1353

; <label>:20:                                     ; preds = %15
  br label %30, !dbg !1354

; <label>:21:                                     ; preds = %15
  %22 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1355
  %23 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1357
  %24 = call i32 @ipvs_nl_fill_dest_attr(%struct.nl_msg* %22, %struct.ip_vs_dest_app* %23), !dbg !1358
  %25 = icmp ne i32 %24, 0, !dbg !1358
  br i1 %25, label %26, label %27, !dbg !1359

; <label>:26:                                     ; preds = %21
  br label %30, !dbg !1360

; <label>:27:                                     ; preds = %21
  %28 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1361
  %29 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %28, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !1362
  store i32 %29, i32* %3, align 4, !dbg !1363
  br label %95, !dbg !1363

; <label>:30:                                     ; preds = %26, %20
  %31 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1364
  call void @nlmsg_free(%struct.nl_msg* %31), !dbg !1365
  store i32 -1, i32* %3, align 4, !dbg !1366
  br label %95, !dbg !1366

; <label>:32:                                     ; preds = %2
  %33 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1367
  %34 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %33, i32 0, i32 1, !dbg !1369
  %35 = load i16, i16* %34, align 4, !dbg !1369
  %36 = zext i16 %35 to i32, !dbg !1367
  %37 = icmp ne i32 %36, 0, !dbg !1367
  br i1 %37, label %38, label %46, !dbg !1370

; <label>:38:                                     ; preds = %32
  %39 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1371
  %40 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %39, i32 0, i32 1, !dbg !1373
  %41 = load i16, i16* %40, align 4, !dbg !1373
  %42 = zext i16 %41 to i32, !dbg !1371
  %43 = icmp ne i32 %42, 2, !dbg !1374
  br i1 %43, label %44, label %46, !dbg !1375

; <label>:44:                                     ; preds = %38
  %45 = call i32* @__errno_location() #1, !dbg !1376
  store i32 97, i32* %45, align 4, !dbg !1379
  br label %94, !dbg !1376

; <label>:46:                                     ; preds = %38, %32
  %47 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1380
  %48 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %47, i32 0, i32 2, !dbg !1382
  %49 = bitcast %union.nf_inet_addr* %48 to i32*, !dbg !1383
  %50 = load i32, i32* %49, align 4, !dbg !1383
  %51 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1384
  %52 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %51, i32 0, i32 0, !dbg !1385
  %53 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %52, i32 0, i32 1, !dbg !1386
  store i32 %50, i32* %53, align 4, !dbg !1387
  %54 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1388
  %55 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %54, i32 0, i32 3, !dbg !1389
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %55, i64 0, i64 0, !dbg !1388
  %57 = load i8, i8* %56, align 4, !dbg !1388
  %58 = icmp ne i8 %57, 0, !dbg !1388
  br i1 %58, label %59, label %61, !dbg !1388

; <label>:59:                                     ; preds = %46
  %60 = call i32* @__errno_location() #1, !dbg !1390
  store i32 97, i32* %60, align 4, !dbg !1394
  br label %94, !dbg !1390

; <label>:61:                                     ; preds = %46
  %62 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1395
  %63 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %62, i32 0, i32 1, !dbg !1397
  %64 = load i16, i16* %63, align 4, !dbg !1397
  %65 = zext i16 %64 to i32, !dbg !1395
  %66 = icmp ne i32 %65, 0, !dbg !1395
  br i1 %66, label %67, label %75, !dbg !1398

; <label>:67:                                     ; preds = %61
  %68 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1399
  %69 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %68, i32 0, i32 1, !dbg !1401
  %70 = load i16, i16* %69, align 4, !dbg !1401
  %71 = zext i16 %70 to i32, !dbg !1399
  %72 = icmp ne i32 %71, 2, !dbg !1402
  br i1 %72, label %73, label %75, !dbg !1403

; <label>:73:                                     ; preds = %67
  %74 = call i32* @__errno_location() #1, !dbg !1404
  store i32 97, i32* %74, align 4, !dbg !1407
  br label %94, !dbg !1404

; <label>:75:                                     ; preds = %67, %61
  %76 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1408
  %77 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %76, i32 0, i32 2, !dbg !1409
  %78 = bitcast %union.nf_inet_addr* %77 to i32*, !dbg !1410
  %79 = load i32, i32* %78, align 4, !dbg !1410
  %80 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1411
  %81 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %80, i32 0, i32 0, !dbg !1412
  %82 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %81, i32 0, i32 0, !dbg !1413
  store i32 %79, i32* %82, align 4, !dbg !1414
  %83 = getelementptr inbounds %struct.ipvs_servicedest_s, %struct.ipvs_servicedest_s* %6, i32 0, i32 0, !dbg !1415
  %84 = bitcast %struct.ip_vs_service_user* %83 to i8*, !dbg !1416
  %85 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1417
  %86 = bitcast %struct.ip_vs_service_app* %85 to i8*, !dbg !1416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %86, i64 44, i32 4, i1 false), !dbg !1416
  %87 = getelementptr inbounds %struct.ipvs_servicedest_s, %struct.ipvs_servicedest_s* %6, i32 0, i32 1, !dbg !1418
  %88 = bitcast %struct.ip_vs_dest_user* %87 to i8*, !dbg !1419
  %89 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1420
  %90 = bitcast %struct.ip_vs_dest_app* %89 to i8*, !dbg !1419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %90, i64 24, i32 4, i1 false), !dbg !1419
  %91 = load i32, i32* @sockfd, align 4, !dbg !1421
  %92 = bitcast %struct.ipvs_servicedest_s* %6 to i8*, !dbg !1422
  %93 = call i32 @setsockopt(i32 %91, i32 0, i32 1161, i8* %92, i32 68) #7, !dbg !1423
  store i32 %93, i32* %3, align 4, !dbg !1424
  br label %95, !dbg !1424

; <label>:94:                                     ; preds = %73, %59, %44
  store i32 -1, i32* %3, align 4, !dbg !1425
  br label %95, !dbg !1425

; <label>:95:                                     ; preds = %94, %75, %30, %27, %14
  %96 = load i32, i32* %3, align 4, !dbg !1426
  ret i32 %96, !dbg !1426
}

; Function Attrs: nounwind uwtable
define i32 @ipvs_del_dest(%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*) #0 !dbg !1427 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_service_app*, align 8
  %5 = alloca %struct.ip_vs_dest_app*, align 8
  %6 = alloca %struct.ipvs_servicedest_s, align 4
  %7 = alloca %struct.nl_msg*, align 8
  store %struct.ip_vs_service_app* %0, %struct.ip_vs_service_app** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_service_app** %4, metadata !1428, metadata !195), !dbg !1429
  store %struct.ip_vs_dest_app* %1, %struct.ip_vs_dest_app** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_dest_app** %5, metadata !1430, metadata !195), !dbg !1431
  call void @llvm.dbg.declare(metadata %struct.ipvs_servicedest_s* %6, metadata !1432, metadata !195), !dbg !1433
  store i8* bitcast (i32 (%struct.ip_vs_service_app*, %struct.ip_vs_dest_app*)* @ipvs_del_dest to i8*), i8** @ipvs_func, align 8, !dbg !1434
  %8 = load i8, i8* @try_nl, align 1, !dbg !1435
  %9 = trunc i8 %8 to i1, !dbg !1435
  br i1 %9, label %10, label %32, !dbg !1437

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %7, metadata !1438, metadata !195), !dbg !1440
  %11 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 7, i32 0), !dbg !1441
  store %struct.nl_msg* %11, %struct.nl_msg** %7, align 8, !dbg !1440
  %12 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1442
  %13 = icmp ne %struct.nl_msg* %12, null, !dbg !1442
  br i1 %13, label %15, label %14, !dbg !1444

; <label>:14:                                     ; preds = %10
  store i32 -1, i32* %3, align 4, !dbg !1445
  br label %95, !dbg !1445

; <label>:15:                                     ; preds = %10
  %16 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1447
  %17 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1449
  %18 = call i32 @ipvs_nl_fill_service_attr(%struct.nl_msg* %16, %struct.ip_vs_service_app* %17), !dbg !1450
  %19 = icmp ne i32 %18, 0, !dbg !1450
  br i1 %19, label %20, label %21, !dbg !1451

; <label>:20:                                     ; preds = %15
  br label %30, !dbg !1452

; <label>:21:                                     ; preds = %15
  %22 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1453
  %23 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1455
  %24 = call i32 @ipvs_nl_fill_dest_attr(%struct.nl_msg* %22, %struct.ip_vs_dest_app* %23), !dbg !1456
  %25 = icmp ne i32 %24, 0, !dbg !1456
  br i1 %25, label %26, label %27, !dbg !1457

; <label>:26:                                     ; preds = %21
  br label %30, !dbg !1458

; <label>:27:                                     ; preds = %21
  %28 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1459
  %29 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %28, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !1460
  store i32 %29, i32* %3, align 4, !dbg !1461
  br label %95, !dbg !1461

; <label>:30:                                     ; preds = %26, %20
  %31 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8, !dbg !1462
  call void @nlmsg_free(%struct.nl_msg* %31), !dbg !1463
  store i32 -1, i32* %3, align 4, !dbg !1464
  br label %95, !dbg !1464

; <label>:32:                                     ; preds = %2
  %33 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1465
  %34 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %33, i32 0, i32 1, !dbg !1467
  %35 = load i16, i16* %34, align 4, !dbg !1467
  %36 = zext i16 %35 to i32, !dbg !1465
  %37 = icmp ne i32 %36, 0, !dbg !1465
  br i1 %37, label %38, label %46, !dbg !1468

; <label>:38:                                     ; preds = %32
  %39 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1469
  %40 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %39, i32 0, i32 1, !dbg !1471
  %41 = load i16, i16* %40, align 4, !dbg !1471
  %42 = zext i16 %41 to i32, !dbg !1469
  %43 = icmp ne i32 %42, 2, !dbg !1472
  br i1 %43, label %44, label %46, !dbg !1473

; <label>:44:                                     ; preds = %38
  %45 = call i32* @__errno_location() #1, !dbg !1474
  store i32 97, i32* %45, align 4, !dbg !1477
  br label %94, !dbg !1474

; <label>:46:                                     ; preds = %38, %32
  %47 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1478
  %48 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %47, i32 0, i32 2, !dbg !1480
  %49 = bitcast %union.nf_inet_addr* %48 to i32*, !dbg !1481
  %50 = load i32, i32* %49, align 4, !dbg !1481
  %51 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1482
  %52 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %51, i32 0, i32 0, !dbg !1483
  %53 = getelementptr inbounds %struct.ip_vs_service_user, %struct.ip_vs_service_user* %52, i32 0, i32 1, !dbg !1484
  store i32 %50, i32* %53, align 4, !dbg !1485
  %54 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1486
  %55 = getelementptr inbounds %struct.ip_vs_service_app, %struct.ip_vs_service_app* %54, i32 0, i32 3, !dbg !1487
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %55, i64 0, i64 0, !dbg !1486
  %57 = load i8, i8* %56, align 4, !dbg !1486
  %58 = icmp ne i8 %57, 0, !dbg !1486
  br i1 %58, label %59, label %61, !dbg !1486

; <label>:59:                                     ; preds = %46
  %60 = call i32* @__errno_location() #1, !dbg !1488
  store i32 97, i32* %60, align 4, !dbg !1492
  br label %94, !dbg !1488

; <label>:61:                                     ; preds = %46
  %62 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1493
  %63 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %62, i32 0, i32 1, !dbg !1495
  %64 = load i16, i16* %63, align 4, !dbg !1495
  %65 = zext i16 %64 to i32, !dbg !1493
  %66 = icmp ne i32 %65, 0, !dbg !1493
  br i1 %66, label %67, label %75, !dbg !1496

; <label>:67:                                     ; preds = %61
  %68 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1497
  %69 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %68, i32 0, i32 1, !dbg !1499
  %70 = load i16, i16* %69, align 4, !dbg !1499
  %71 = zext i16 %70 to i32, !dbg !1497
  %72 = icmp ne i32 %71, 2, !dbg !1500
  br i1 %72, label %73, label %75, !dbg !1501

; <label>:73:                                     ; preds = %67
  %74 = call i32* @__errno_location() #1, !dbg !1502
  store i32 97, i32* %74, align 4, !dbg !1505
  br label %94, !dbg !1502

; <label>:75:                                     ; preds = %67, %61
  %76 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1506
  %77 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %76, i32 0, i32 2, !dbg !1507
  %78 = bitcast %union.nf_inet_addr* %77 to i32*, !dbg !1508
  %79 = load i32, i32* %78, align 4, !dbg !1508
  %80 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1509
  %81 = getelementptr inbounds %struct.ip_vs_dest_app, %struct.ip_vs_dest_app* %80, i32 0, i32 0, !dbg !1510
  %82 = getelementptr inbounds %struct.ip_vs_dest_user, %struct.ip_vs_dest_user* %81, i32 0, i32 0, !dbg !1511
  store i32 %79, i32* %82, align 4, !dbg !1512
  %83 = getelementptr inbounds %struct.ipvs_servicedest_s, %struct.ipvs_servicedest_s* %6, i32 0, i32 0, !dbg !1513
  %84 = bitcast %struct.ip_vs_service_user* %83 to i8*, !dbg !1514
  %85 = load %struct.ip_vs_service_app*, %struct.ip_vs_service_app** %4, align 8, !dbg !1515
  %86 = bitcast %struct.ip_vs_service_app* %85 to i8*, !dbg !1514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %86, i64 44, i32 4, i1 false), !dbg !1514
  %87 = getelementptr inbounds %struct.ipvs_servicedest_s, %struct.ipvs_servicedest_s* %6, i32 0, i32 1, !dbg !1516
  %88 = bitcast %struct.ip_vs_dest_user* %87 to i8*, !dbg !1517
  %89 = load %struct.ip_vs_dest_app*, %struct.ip_vs_dest_app** %5, align 8, !dbg !1518
  %90 = bitcast %struct.ip_vs_dest_app* %89 to i8*, !dbg !1517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %90, i64 24, i32 4, i1 false), !dbg !1517
  %91 = load i32, i32* @sockfd, align 4, !dbg !1519
  %92 = bitcast %struct.ipvs_servicedest_s* %6 to i8*, !dbg !1520
  %93 = call i32 @setsockopt(i32 %91, i32 0, i32 1160, i8* %92, i32 68) #7, !dbg !1521
  store i32 %93, i32* %3, align 4, !dbg !1522
  br label %95, !dbg !1522

; <label>:94:                                     ; preds = %73, %59, %44
  store i32 -1, i32* %3, align 4, !dbg !1523
  br label %95, !dbg !1523

; <label>:95:                                     ; preds = %94, %75, %30, %27, %14
  %96 = load i32, i32* %3, align 4, !dbg !1524
  ret i32 %96, !dbg !1524
}

; Function Attrs: nounwind uwtable
define i32 @ipvs_set_timeout(%struct.ip_vs_timeout_user*) #0 !dbg !1525 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_timeout_user*, align 8
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ip_vs_timeout_user* %0, %struct.ip_vs_timeout_user** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_timeout_user** %3, metadata !1535, metadata !195), !dbg !1536
  store i8* bitcast (i32 (%struct.ip_vs_timeout_user*)* @ipvs_set_timeout to i8*), i8** @ipvs_func, align 8, !dbg !1537
  %8 = load i8, i8* @try_nl, align 1, !dbg !1538
  %9 = trunc i8 %8 to i1, !dbg !1538
  br i1 %9, label %10, label %77, !dbg !1540

; <label>:10:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !1541, metadata !195), !dbg !1543
  %11 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 12, i32 0), !dbg !1544
  store %struct.nl_msg* %11, %struct.nl_msg** %4, align 8, !dbg !1543
  %12 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1545
  %13 = icmp ne %struct.nl_msg* %12, null, !dbg !1545
  br i1 %13, label %15, label %14, !dbg !1547

; <label>:14:                                     ; preds = %10
  store i32 -1, i32* %2, align 4, !dbg !1548
  br label %82, !dbg !1548

; <label>:15:                                     ; preds = %10
  %16 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %3, align 8, !dbg !1550
  %17 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %16, i32 0, i32 0, !dbg !1552
  %18 = load i32, i32* %17, align 4, !dbg !1552
  %19 = icmp ne i32 %18, 0, !dbg !1550
  br i1 %19, label %20, label %34, !dbg !1553

; <label>:20:                                     ; preds = %15
  br label %21, !dbg !1554, !llvm.loop !1555

; <label>:21:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1556, metadata !195), !dbg !1558
  %22 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %3, align 8, !dbg !1559
  %23 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %22, i32 0, i32 0, !dbg !1561
  %24 = load i32, i32* %23, align 4, !dbg !1561
  store i32 %24, i32* %5, align 4, !dbg !1562
  br label %25, !dbg !1563, !llvm.loop !1564

; <label>:25:                                     ; preds = %21
  %26 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1566
  %27 = bitcast i32* %5 to i8*, !dbg !1570
  %28 = call i32 @nla_put(%struct.nl_msg* %26, i32 4, i32 4, i8* %27), !dbg !1571
  %29 = icmp slt i32 %28, 0, !dbg !1572
  br i1 %29, label %30, label %31, !dbg !1571

; <label>:30:                                     ; preds = %25
  br label %75, !dbg !1573

; <label>:31:                                     ; preds = %25
  br label %32, !dbg !1575

; <label>:32:                                     ; preds = %31
  br label %33, !dbg !1577

; <label>:33:                                     ; preds = %32
  br label %34, !dbg !1579

; <label>:34:                                     ; preds = %33, %15
  %35 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %3, align 8, !dbg !1581
  %36 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %35, i32 0, i32 1, !dbg !1583
  %37 = load i32, i32* %36, align 4, !dbg !1583
  %38 = icmp ne i32 %37, 0, !dbg !1581
  br i1 %38, label %39, label %53, !dbg !1584

; <label>:39:                                     ; preds = %34
  br label %40, !dbg !1585, !llvm.loop !1586

; <label>:40:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1587, metadata !195), !dbg !1589
  %41 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %3, align 8, !dbg !1590
  %42 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %41, i32 0, i32 1, !dbg !1592
  %43 = load i32, i32* %42, align 4, !dbg !1592
  store i32 %43, i32* %6, align 4, !dbg !1593
  br label %44, !dbg !1594, !llvm.loop !1595

; <label>:44:                                     ; preds = %40
  %45 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1597
  %46 = bitcast i32* %6 to i8*, !dbg !1601
  %47 = call i32 @nla_put(%struct.nl_msg* %45, i32 5, i32 4, i8* %46), !dbg !1602
  %48 = icmp slt i32 %47, 0, !dbg !1603
  br i1 %48, label %49, label %50, !dbg !1602

; <label>:49:                                     ; preds = %44
  br label %75, !dbg !1604

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !1606

; <label>:51:                                     ; preds = %50
  br label %52, !dbg !1608

; <label>:52:                                     ; preds = %51
  br label %53, !dbg !1610

; <label>:53:                                     ; preds = %52, %34
  %54 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %3, align 8, !dbg !1612
  %55 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %54, i32 0, i32 2, !dbg !1614
  %56 = load i32, i32* %55, align 4, !dbg !1614
  %57 = icmp ne i32 %56, 0, !dbg !1612
  br i1 %57, label %58, label %72, !dbg !1615

; <label>:58:                                     ; preds = %53
  br label %59, !dbg !1616, !llvm.loop !1617

; <label>:59:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1618, metadata !195), !dbg !1620
  %60 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %3, align 8, !dbg !1621
  %61 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %60, i32 0, i32 2, !dbg !1623
  %62 = load i32, i32* %61, align 4, !dbg !1623
  store i32 %62, i32* %7, align 4, !dbg !1624
  br label %63, !dbg !1625, !llvm.loop !1626

; <label>:63:                                     ; preds = %59
  %64 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1628
  %65 = bitcast i32* %7 to i8*, !dbg !1632
  %66 = call i32 @nla_put(%struct.nl_msg* %64, i32 6, i32 4, i8* %65), !dbg !1633
  %67 = icmp slt i32 %66, 0, !dbg !1634
  br i1 %67, label %68, label %69, !dbg !1633

; <label>:68:                                     ; preds = %63
  br label %75, !dbg !1635

; <label>:69:                                     ; preds = %63
  br label %70, !dbg !1637

; <label>:70:                                     ; preds = %69
  br label %71, !dbg !1639

; <label>:71:                                     ; preds = %70
  br label %72, !dbg !1641

; <label>:72:                                     ; preds = %71, %53
  %73 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1643
  %74 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %73, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !1644
  store i32 %74, i32* %2, align 4, !dbg !1645
  br label %82, !dbg !1645

; <label>:75:                                     ; preds = %68, %49, %30
  %76 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !1646
  call void @nlmsg_free(%struct.nl_msg* %76), !dbg !1647
  store i32 -1, i32* %2, align 4, !dbg !1648
  br label %82, !dbg !1648

; <label>:77:                                     ; preds = %1
  %78 = load i32, i32* @sockfd, align 4, !dbg !1649
  %79 = load %struct.ip_vs_timeout_user*, %struct.ip_vs_timeout_user** %3, align 8, !dbg !1650
  %80 = bitcast %struct.ip_vs_timeout_user* %79 to i8*, !dbg !1651
  %81 = call i32 @setsockopt(i32 %78, i32 0, i32 1162, i8* %80, i32 12) #7, !dbg !1652
  store i32 %81, i32* %2, align 4, !dbg !1653
  br label %82, !dbg !1653

; <label>:82:                                     ; preds = %77, %75, %72, %14
  %83 = load i32, i32* %2, align 4, !dbg !1654
  ret i32 %83, !dbg !1654
}

declare i32 @nla_put(%struct.nl_msg*, i32, i32, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @ipvs_start_daemon(%struct.ip_vs_daemon_app*) #0 !dbg !1655 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_daemon_app*, align 8
  %4 = alloca %struct.ip_vs_daemon_kern, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nl_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.ip_vs_daemon_app* %0, %struct.ip_vs_daemon_app** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_daemon_app** %3, metadata !1670, metadata !195), !dbg !1671
  call void @llvm.dbg.declare(metadata %struct.ip_vs_daemon_kern* %4, metadata !1672, metadata !195), !dbg !1678
  store i8* bitcast (i32 (%struct.ip_vs_daemon_app*)* @ipvs_start_daemon to i8*), i8** @ipvs_func, align 8, !dbg !1679
  %13 = load i8, i8* @try_nl, align 1, !dbg !1680
  %14 = trunc i8 %13 to i1, !dbg !1680
  br i1 %14, label %15, label %172, !dbg !1682

; <label>:15:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.nlattr** %5, metadata !1683, metadata !195), !dbg !1685
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %6, metadata !1686, metadata !195), !dbg !1687
  %16 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 9, i32 0), !dbg !1688
  store %struct.nl_msg* %16, %struct.nl_msg** %6, align 8, !dbg !1687
  %17 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1689
  %18 = icmp ne %struct.nl_msg* %17, null, !dbg !1689
  br i1 %18, label %20, label %19, !dbg !1691

; <label>:19:                                     ; preds = %15
  store i32 -1, i32* %2, align 4, !dbg !1692
  br label %191, !dbg !1692

; <label>:20:                                     ; preds = %15
  %21 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1694
  %22 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %21, i32 3), !dbg !1695
  store %struct.nlattr* %22, %struct.nlattr** %5, align 8, !dbg !1696
  %23 = load %struct.nlattr*, %struct.nlattr** %5, align 8, !dbg !1697
  %24 = icmp ne %struct.nlattr* %23, null, !dbg !1697
  br i1 %24, label %26, label %25, !dbg !1699

; <label>:25:                                     ; preds = %20
  br label %170, !dbg !1700

; <label>:26:                                     ; preds = %20
  br label %27, !dbg !1701, !llvm.loop !1702

; <label>:27:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1703, metadata !195), !dbg !1707
  %28 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1708
  %29 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %28, i32 0, i32 0, !dbg !1710
  %30 = load i32, i32* %29, align 4, !dbg !1710
  store i32 %30, i32* %7, align 4, !dbg !1711
  br label %31, !dbg !1712, !llvm.loop !1713

; <label>:31:                                     ; preds = %27
  %32 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1715
  %33 = bitcast i32* %7 to i8*, !dbg !1719
  %34 = call i32 @nla_put(%struct.nl_msg* %32, i32 1, i32 4, i8* %33), !dbg !1720
  %35 = icmp slt i32 %34, 0, !dbg !1721
  br i1 %35, label %36, label %37, !dbg !1720

; <label>:36:                                     ; preds = %31
  br label %170, !dbg !1722

; <label>:37:                                     ; preds = %31
  br label %38, !dbg !1724

; <label>:38:                                     ; preds = %37
  br label %39, !dbg !1726

; <label>:39:                                     ; preds = %38
  br label %40, !dbg !1728, !llvm.loop !1729

; <label>:40:                                     ; preds = %39
  %41 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1730
  %42 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1734
  %43 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %42, i32 0, i32 1, !dbg !1735
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %43, i32 0, i32 0, !dbg !1734
  %45 = call i64 @strlen(i8* %44) #8, !dbg !1736
  %46 = trunc i64 %45 to i32, !dbg !1737
  %47 = add nsw i32 %46, 1, !dbg !1738
  %48 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1739
  %49 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %48, i32 0, i32 1, !dbg !1740
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %49, i32 0, i32 0, !dbg !1739
  %51 = call i32 @nla_put(%struct.nl_msg* %41, i32 2, i32 %47, i8* %50), !dbg !1741
  %52 = icmp slt i32 %51, 0, !dbg !1743
  br i1 %52, label %53, label %54, !dbg !1744

; <label>:53:                                     ; preds = %40
  br label %170, !dbg !1745

; <label>:54:                                     ; preds = %40
  br label %55, !dbg !1747

; <label>:55:                                     ; preds = %54
  br label %56, !dbg !1749, !llvm.loop !1750

; <label>:56:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1751, metadata !195), !dbg !1753
  %57 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1754
  %58 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %57, i32 0, i32 2, !dbg !1756
  %59 = load i32, i32* %58, align 4, !dbg !1756
  store i32 %59, i32* %8, align 4, !dbg !1757
  br label %60, !dbg !1758, !llvm.loop !1759

; <label>:60:                                     ; preds = %56
  %61 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1761
  %62 = bitcast i32* %8 to i8*, !dbg !1765
  %63 = call i32 @nla_put(%struct.nl_msg* %61, i32 3, i32 4, i8* %62), !dbg !1766
  %64 = icmp slt i32 %63, 0, !dbg !1767
  br i1 %64, label %65, label %66, !dbg !1766

; <label>:65:                                     ; preds = %60
  br label %170, !dbg !1768

; <label>:66:                                     ; preds = %60
  br label %67, !dbg !1770

; <label>:67:                                     ; preds = %66
  br label %68, !dbg !1772

; <label>:68:                                     ; preds = %67
  %69 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1774
  %70 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %69, i32 0, i32 3, !dbg !1776
  %71 = load i16, i16* %70, align 4, !dbg !1776
  %72 = icmp ne i16 %71, 0, !dbg !1774
  br i1 %72, label %73, label %87, !dbg !1777

; <label>:73:                                     ; preds = %68
  br label %74, !dbg !1778, !llvm.loop !1779

; <label>:74:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i16* %9, metadata !1780, metadata !195), !dbg !1782
  %75 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1783
  %76 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %75, i32 0, i32 3, !dbg !1785
  %77 = load i16, i16* %76, align 4, !dbg !1785
  store i16 %77, i16* %9, align 2, !dbg !1786
  br label %78, !dbg !1787, !llvm.loop !1788

; <label>:78:                                     ; preds = %74
  %79 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1790
  %80 = bitcast i16* %9 to i8*, !dbg !1794
  %81 = call i32 @nla_put(%struct.nl_msg* %79, i32 4, i32 2, i8* %80), !dbg !1795
  %82 = icmp slt i32 %81, 0, !dbg !1796
  br i1 %82, label %83, label %84, !dbg !1795

; <label>:83:                                     ; preds = %78
  br label %170, !dbg !1797

; <label>:84:                                     ; preds = %78
  br label %85, !dbg !1799

; <label>:85:                                     ; preds = %84
  br label %86, !dbg !1801

; <label>:86:                                     ; preds = %85
  br label %87, !dbg !1803

; <label>:87:                                     ; preds = %86, %68
  %88 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1805
  %89 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %88, i32 0, i32 4, !dbg !1807
  %90 = load i16, i16* %89, align 2, !dbg !1807
  %91 = icmp ne i16 %90, 0, !dbg !1805
  br i1 %91, label %92, label %106, !dbg !1808

; <label>:92:                                     ; preds = %87
  br label %93, !dbg !1809, !llvm.loop !1810

; <label>:93:                                     ; preds = %92
  call void @llvm.dbg.declare(metadata i16* %10, metadata !1811, metadata !195), !dbg !1813
  %94 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1814
  %95 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %94, i32 0, i32 4, !dbg !1816
  %96 = load i16, i16* %95, align 2, !dbg !1816
  store i16 %96, i16* %10, align 2, !dbg !1817
  br label %97, !dbg !1818, !llvm.loop !1819

; <label>:97:                                     ; preds = %93
  %98 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1821
  %99 = bitcast i16* %10 to i8*, !dbg !1825
  %100 = call i32 @nla_put(%struct.nl_msg* %98, i32 7, i32 2, i8* %99), !dbg !1826
  %101 = icmp slt i32 %100, 0, !dbg !1827
  br i1 %101, label %102, label %103, !dbg !1826

; <label>:102:                                    ; preds = %97
  br label %170, !dbg !1828

; <label>:103:                                    ; preds = %97
  br label %104, !dbg !1830

; <label>:104:                                    ; preds = %103
  br label %105, !dbg !1832

; <label>:105:                                    ; preds = %104
  br label %106, !dbg !1834

; <label>:106:                                    ; preds = %105, %87
  %107 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1836
  %108 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %107, i32 0, i32 5, !dbg !1838
  %109 = load i8, i8* %108, align 4, !dbg !1838
  %110 = icmp ne i8 %109, 0, !dbg !1836
  br i1 %110, label %111, label %124, !dbg !1839

; <label>:111:                                    ; preds = %106
  br label %112, !dbg !1840, !llvm.loop !1841

; <label>:112:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1842, metadata !195), !dbg !1844
  %113 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1845
  %114 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %113, i32 0, i32 5, !dbg !1847
  %115 = load i8, i8* %114, align 4, !dbg !1847
  store i8 %115, i8* %11, align 1, !dbg !1848
  br label %116, !dbg !1849, !llvm.loop !1850

; <label>:116:                                    ; preds = %112
  %117 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1852
  %118 = call i32 @nla_put(%struct.nl_msg* %117, i32 8, i32 1, i8* %11), !dbg !1856
  %119 = icmp slt i32 %118, 0, !dbg !1857
  br i1 %119, label %120, label %121, !dbg !1856

; <label>:120:                                    ; preds = %116
  br label %170, !dbg !1858

; <label>:121:                                    ; preds = %116
  br label %122, !dbg !1860

; <label>:122:                                    ; preds = %121
  br label %123, !dbg !1862

; <label>:123:                                    ; preds = %122
  br label %124, !dbg !1864

; <label>:124:                                    ; preds = %123, %106
  %125 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1866
  %126 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %125, i32 0, i32 6, !dbg !1868
  %127 = load i16, i16* %126, align 2, !dbg !1868
  %128 = zext i16 %127 to i32, !dbg !1866
  %129 = icmp eq i32 %128, 10, !dbg !1869
  br i1 %129, label %130, label %142, !dbg !1870

; <label>:130:                                    ; preds = %124
  br label %131, !dbg !1871, !llvm.loop !1872

; <label>:131:                                    ; preds = %130
  %132 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1873
  %133 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1877
  %134 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %133, i32 0, i32 7, !dbg !1878
  %135 = bitcast %union.nf_inet_addr* %134 to %struct.in6_addr*, !dbg !1879
  %136 = bitcast %struct.in6_addr* %135 to i8*, !dbg !1880
  %137 = call i32 @nla_put(%struct.nl_msg* %132, i32 6, i32 16, i8* %136), !dbg !1881
  %138 = icmp slt i32 %137, 0, !dbg !1882
  br i1 %138, label %139, label %140, !dbg !1881

; <label>:139:                                    ; preds = %131
  br label %170, !dbg !1883

; <label>:140:                                    ; preds = %131
  br label %141, !dbg !1885

; <label>:141:                                    ; preds = %140
  br label %164, !dbg !1887

; <label>:142:                                    ; preds = %124
  %143 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1889
  %144 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %143, i32 0, i32 6, !dbg !1891
  %145 = load i16, i16* %144, align 2, !dbg !1891
  %146 = zext i16 %145 to i32, !dbg !1889
  %147 = icmp eq i32 %146, 2, !dbg !1892
  br i1 %147, label %148, label %163, !dbg !1893

; <label>:148:                                    ; preds = %142
  br label %149, !dbg !1894, !llvm.loop !1895

; <label>:149:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1896, metadata !195), !dbg !1898
  %150 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1899
  %151 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %150, i32 0, i32 7, !dbg !1901
  %152 = bitcast %union.nf_inet_addr* %151 to i32*, !dbg !1902
  %153 = load i32, i32* %152, align 4, !dbg !1902
  store i32 %153, i32* %12, align 4, !dbg !1903
  br label %154, !dbg !1904, !llvm.loop !1905

; <label>:154:                                    ; preds = %149
  %155 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1907
  %156 = bitcast i32* %12 to i8*, !dbg !1911
  %157 = call i32 @nla_put(%struct.nl_msg* %155, i32 5, i32 4, i8* %156), !dbg !1912
  %158 = icmp slt i32 %157, 0, !dbg !1913
  br i1 %158, label %159, label %160, !dbg !1912

; <label>:159:                                    ; preds = %154
  br label %170, !dbg !1914

; <label>:160:                                    ; preds = %154
  br label %161, !dbg !1916

; <label>:161:                                    ; preds = %160
  br label %162, !dbg !1918

; <label>:162:                                    ; preds = %161
  br label %163, !dbg !1920

; <label>:163:                                    ; preds = %162, %142
  br label %164

; <label>:164:                                    ; preds = %163, %141
  %165 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1922
  %166 = load %struct.nlattr*, %struct.nlattr** %5, align 8, !dbg !1923
  %167 = call i32 @nla_nest_end(%struct.nl_msg* %165, %struct.nlattr* %166), !dbg !1924
  %168 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1925
  %169 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %168, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !1926
  store i32 %169, i32* %2, align 4, !dbg !1927
  br label %191, !dbg !1927

; <label>:170:                                    ; preds = %159, %139, %120, %102, %83, %65, %53, %36, %25
  %171 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1928
  call void @nlmsg_free(%struct.nl_msg* %171), !dbg !1929
  store i32 -1, i32* %2, align 4, !dbg !1930
  br label %191, !dbg !1930

; <label>:172:                                    ; preds = %1
  %173 = bitcast %struct.ip_vs_daemon_kern* %4 to i8*, !dbg !1931
  call void @llvm.memset.p0i8.i64(i8* %173, i8 0, i64 24, i32 4, i1 false), !dbg !1931
  %174 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1932
  %175 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %174, i32 0, i32 0, !dbg !1933
  %176 = load i32, i32* %175, align 4, !dbg !1933
  %177 = getelementptr inbounds %struct.ip_vs_daemon_kern, %struct.ip_vs_daemon_kern* %4, i32 0, i32 0, !dbg !1934
  store i32 %176, i32* %177, align 4, !dbg !1935
  %178 = getelementptr inbounds %struct.ip_vs_daemon_kern, %struct.ip_vs_daemon_kern* %4, i32 0, i32 1, !dbg !1936
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %178, i32 0, i32 0, !dbg !1937
  %180 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1938
  %181 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %180, i32 0, i32 1, !dbg !1939
  %182 = getelementptr inbounds [16 x i8], [16 x i8]* %181, i32 0, i32 0, !dbg !1938
  %183 = call i8* @strcpy(i8* %179, i8* %182) #7, !dbg !1940
  %184 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1941
  %185 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %184, i32 0, i32 2, !dbg !1942
  %186 = load i32, i32* %185, align 4, !dbg !1942
  %187 = getelementptr inbounds %struct.ip_vs_daemon_kern, %struct.ip_vs_daemon_kern* %4, i32 0, i32 2, !dbg !1943
  store i32 %186, i32* %187, align 4, !dbg !1944
  %188 = load i32, i32* @sockfd, align 4, !dbg !1945
  %189 = bitcast %struct.ip_vs_daemon_kern* %4 to i8*, !dbg !1946
  %190 = call i32 @setsockopt(i32 %188, i32 0, i32 1163, i8* %189, i32 24) #7, !dbg !1947
  store i32 %190, i32* %2, align 4, !dbg !1948
  br label %191, !dbg !1948

; <label>:191:                                    ; preds = %172, %170, %164, %19
  %192 = load i32, i32* %2, align 4, !dbg !1949
  ret i32 %192, !dbg !1949
}

declare %struct.nlattr* @nla_nest_start(%struct.nl_msg*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @nla_nest_end(%struct.nl_msg*, %struct.nlattr*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @ipvs_stop_daemon(%struct.ip_vs_daemon_app*) #0 !dbg !1950 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_daemon_app*, align 8
  %4 = alloca %struct.ip_vs_daemon_kern, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nl_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ip_vs_daemon_app* %0, %struct.ip_vs_daemon_app** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ip_vs_daemon_app** %3, metadata !1951, metadata !195), !dbg !1952
  call void @llvm.dbg.declare(metadata %struct.ip_vs_daemon_kern* %4, metadata !1953, metadata !195), !dbg !1954
  store i8* bitcast (i32 (%struct.ip_vs_daemon_app*)* @ipvs_stop_daemon to i8*), i8** @ipvs_func, align 8, !dbg !1955
  %9 = load i8, i8* @try_nl, align 1, !dbg !1956
  %10 = trunc i8 %9 to i1, !dbg !1956
  br i1 %10, label %11, label %72, !dbg !1958

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.nlattr** %5, metadata !1959, metadata !195), !dbg !1961
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %6, metadata !1962, metadata !195), !dbg !1963
  %12 = call %struct.nl_msg* @ipvs_nl_message(i8 zeroext 10, i32 0), !dbg !1964
  store %struct.nl_msg* %12, %struct.nl_msg** %6, align 8, !dbg !1963
  %13 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1965
  %14 = icmp ne %struct.nl_msg* %13, null, !dbg !1965
  br i1 %14, label %16, label %15, !dbg !1967

; <label>:15:                                     ; preds = %11
  store i32 -1, i32* %2, align 4, !dbg !1968
  br label %81, !dbg !1968

; <label>:16:                                     ; preds = %11
  %17 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1970
  %18 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %17, i32 3), !dbg !1971
  store %struct.nlattr* %18, %struct.nlattr** %5, align 8, !dbg !1972
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8, !dbg !1973
  %20 = icmp ne %struct.nlattr* %19, null, !dbg !1973
  br i1 %20, label %22, label %21, !dbg !1975

; <label>:21:                                     ; preds = %16
  br label %70, !dbg !1976

; <label>:22:                                     ; preds = %16
  br label %23, !dbg !1977, !llvm.loop !1978

; <label>:23:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1979, metadata !195), !dbg !1981
  %24 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !1982
  %25 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %24, i32 0, i32 0, !dbg !1984
  %26 = load i32, i32* %25, align 4, !dbg !1984
  store i32 %26, i32* %7, align 4, !dbg !1985
  br label %27, !dbg !1986, !llvm.loop !1987

; <label>:27:                                     ; preds = %23
  %28 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !1989
  %29 = bitcast i32* %7 to i8*, !dbg !1993
  %30 = call i32 @nla_put(%struct.nl_msg* %28, i32 1, i32 4, i8* %29), !dbg !1994
  %31 = icmp slt i32 %30, 0, !dbg !1995
  br i1 %31, label %32, label %33, !dbg !1994

; <label>:32:                                     ; preds = %27
  br label %70, !dbg !1996

; <label>:33:                                     ; preds = %27
  br label %34, !dbg !1998

; <label>:34:                                     ; preds = %33
  br label %35, !dbg !2000

; <label>:35:                                     ; preds = %34
  br label %36, !dbg !2002, !llvm.loop !2003

; <label>:36:                                     ; preds = %35
  %37 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !2004
  %38 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !2008
  %39 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %38, i32 0, i32 1, !dbg !2009
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i32 0, i32 0, !dbg !2008
  %41 = call i64 @strlen(i8* %40) #8, !dbg !2010
  %42 = trunc i64 %41 to i32, !dbg !2011
  %43 = add nsw i32 %42, 1, !dbg !2012
  %44 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !2013
  %45 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %44, i32 0, i32 1, !dbg !2014
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %45, i32 0, i32 0, !dbg !2013
  %47 = call i32 @nla_put(%struct.nl_msg* %37, i32 2, i32 %43, i8* %46), !dbg !2015
  %48 = icmp slt i32 %47, 0, !dbg !2017
  br i1 %48, label %49, label %50, !dbg !2018

; <label>:49:                                     ; preds = %36
  br label %70, !dbg !2019

; <label>:50:                                     ; preds = %36
  br label %51, !dbg !2021

; <label>:51:                                     ; preds = %50
  br label %52, !dbg !2023, !llvm.loop !2024

; <label>:52:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2025, metadata !195), !dbg !2027
  %53 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !2028
  %54 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %53, i32 0, i32 2, !dbg !2030
  %55 = load i32, i32* %54, align 4, !dbg !2030
  store i32 %55, i32* %8, align 4, !dbg !2031
  br label %56, !dbg !2032, !llvm.loop !2033

; <label>:56:                                     ; preds = %52
  %57 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !2035
  %58 = bitcast i32* %8 to i8*, !dbg !2039
  %59 = call i32 @nla_put(%struct.nl_msg* %57, i32 3, i32 4, i8* %58), !dbg !2040
  %60 = icmp slt i32 %59, 0, !dbg !2041
  br i1 %60, label %61, label %62, !dbg !2040

; <label>:61:                                     ; preds = %56
  br label %70, !dbg !2042

; <label>:62:                                     ; preds = %56
  br label %63, !dbg !2044

; <label>:63:                                     ; preds = %62
  br label %64, !dbg !2046

; <label>:64:                                     ; preds = %63
  %65 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !2048
  %66 = load %struct.nlattr*, %struct.nlattr** %5, align 8, !dbg !2049
  %67 = call i32 @nla_nest_end(%struct.nl_msg* %65, %struct.nlattr* %66), !dbg !2050
  %68 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !2051
  %69 = call i32 @ipvs_nl_send_message(%struct.nl_msg* %68, i32 (%struct.nl_msg*, i8*)* @ipvs_nl_noop_cb, i8* null), !dbg !2052
  store i32 %69, i32* %2, align 4, !dbg !2053
  br label %81, !dbg !2053

; <label>:70:                                     ; preds = %61, %49, %32, %21
  %71 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8, !dbg !2054
  call void @nlmsg_free(%struct.nl_msg* %71), !dbg !2055
  store i32 -1, i32* %2, align 4, !dbg !2056
  br label %81, !dbg !2056

; <label>:72:                                     ; preds = %1
  %73 = bitcast %struct.ip_vs_daemon_kern* %4 to i8*, !dbg !2057
  call void @llvm.memset.p0i8.i64(i8* %73, i8 0, i64 24, i32 4, i1 false), !dbg !2057
  %74 = load %struct.ip_vs_daemon_app*, %struct.ip_vs_daemon_app** %3, align 8, !dbg !2058
  %75 = getelementptr inbounds %struct.ip_vs_daemon_app, %struct.ip_vs_daemon_app* %74, i32 0, i32 0, !dbg !2059
  %76 = load i32, i32* %75, align 4, !dbg !2059
  %77 = getelementptr inbounds %struct.ip_vs_daemon_kern, %struct.ip_vs_daemon_kern* %4, i32 0, i32 0, !dbg !2060
  store i32 %76, i32* %77, align 4, !dbg !2061
  %78 = load i32, i32* @sockfd, align 4, !dbg !2062
  %79 = bitcast %struct.ip_vs_daemon_kern* %4 to i8*, !dbg !2063
  %80 = call i32 @setsockopt(i32 %78, i32 0, i32 1164, i8* %79, i32 24) #7, !dbg !2064
  store i32 %80, i32* %2, align 4, !dbg !2065
  br label %81, !dbg !2065

; <label>:81:                                     ; preds = %72, %70, %64, %15
  %82 = load i32, i32* %2, align 4, !dbg !2066
  ret i32 %82, !dbg !2066
}

; Function Attrs: nounwind uwtable
define void @ipvs_close() #0 !dbg !2067 {
  %1 = load i8, i8* @try_nl, align 1, !dbg !2070
  %2 = trunc i8 %1 to i1, !dbg !2070
  br i1 %2, label %3, label %4, !dbg !2072

; <label>:3:                                      ; preds = %0
  br label %10, !dbg !2073

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @sockfd, align 4, !dbg !2074
  %6 = icmp ne i32 %5, -1, !dbg !2076
  br i1 %6, label %7, label %10, !dbg !2077

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* @sockfd, align 4, !dbg !2078
  %9 = call i32 @close(i32 %8), !dbg !2080
  store i32 -1, i32* @sockfd, align 4, !dbg !2081
  br label %10, !dbg !2082

; <label>:10:                                     ; preds = %3, %7, %4
  ret void, !dbg !2083
}

; Function Attrs: nounwind uwtable
define i8* @ipvs_strerror(i32) #0 !dbg !2084 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [21 x %struct.table_struct], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2089, metadata !195), !dbg !2090
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2091, metadata !195), !dbg !2092
  call void @llvm.dbg.declare(metadata [21 x %struct.table_struct]* %5, metadata !2093, metadata !195), !dbg !2102
  %6 = bitcast [21 x %struct.table_struct]* %5 to i8*, !dbg !2102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([21 x %struct.table_struct]* @ipvs_strerror.table to i8*), i64 504, i32 16, i1 false), !dbg !2102
  store i32 0, i32* %4, align 4, !dbg !2103
  br label %7, !dbg !2105

; <label>:7:                                      ; preds = %41, %1
  %8 = load i32, i32* %4, align 4, !dbg !2106
  %9 = zext i32 %8 to i64, !dbg !2106
  %10 = icmp ult i64 %9, 21, !dbg !2109
  br i1 %10, label %11, label %44, !dbg !2110

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %4, align 4, !dbg !2111
  %13 = zext i32 %12 to i64, !dbg !2114
  %14 = getelementptr inbounds [21 x %struct.table_struct], [21 x %struct.table_struct]* %5, i64 0, i64 %13, !dbg !2114
  %15 = getelementptr inbounds %struct.table_struct, %struct.table_struct* %14, i32 0, i32 0, !dbg !2115
  %16 = load i8*, i8** %15, align 8, !dbg !2115
  %17 = icmp ne i8* %16, null, !dbg !2114
  br i1 %17, label %18, label %26, !dbg !2116

; <label>:18:                                     ; preds = %11
  %19 = load i32, i32* %4, align 4, !dbg !2117
  %20 = zext i32 %19 to i64, !dbg !2119
  %21 = getelementptr inbounds [21 x %struct.table_struct], [21 x %struct.table_struct]* %5, i64 0, i64 %20, !dbg !2119
  %22 = getelementptr inbounds %struct.table_struct, %struct.table_struct* %21, i32 0, i32 0, !dbg !2120
  %23 = load i8*, i8** %22, align 8, !dbg !2120
  %24 = load i8*, i8** @ipvs_func, align 8, !dbg !2121
  %25 = icmp eq i8* %23, %24, !dbg !2122
  br i1 %25, label %26, label %40, !dbg !2123

; <label>:26:                                     ; preds = %18, %11
  %27 = load i32, i32* %4, align 4, !dbg !2124
  %28 = zext i32 %27 to i64, !dbg !2125
  %29 = getelementptr inbounds [21 x %struct.table_struct], [21 x %struct.table_struct]* %5, i64 0, i64 %28, !dbg !2125
  %30 = getelementptr inbounds %struct.table_struct, %struct.table_struct* %29, i32 0, i32 1, !dbg !2126
  %31 = load i32, i32* %30, align 8, !dbg !2126
  %32 = load i32, i32* %3, align 4, !dbg !2127
  %33 = icmp eq i32 %31, %32, !dbg !2128
  br i1 %33, label %34, label %40, !dbg !2129

; <label>:34:                                     ; preds = %26
  %35 = load i32, i32* %4, align 4, !dbg !2131
  %36 = zext i32 %35 to i64, !dbg !2132
  %37 = getelementptr inbounds [21 x %struct.table_struct], [21 x %struct.table_struct]* %5, i64 0, i64 %36, !dbg !2132
  %38 = getelementptr inbounds %struct.table_struct, %struct.table_struct* %37, i32 0, i32 2, !dbg !2133
  %39 = load i8*, i8** %38, align 8, !dbg !2133
  store i8* %39, i8** %2, align 8, !dbg !2134
  br label %47, !dbg !2134

; <label>:40:                                     ; preds = %26, %18
  br label %41, !dbg !2135

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %4, align 4, !dbg !2136
  %43 = add i32 %42, 1, !dbg !2136
  store i32 %43, i32* %4, align 4, !dbg !2136
  br label %7, !dbg !2138, !llvm.loop !2139

; <label>:44:                                     ; preds = %7
  %45 = load i32, i32* %3, align 4, !dbg !2141
  %46 = call i8* @strerror(i32 %45) #7, !dbg !2142
  store i8* %46, i8** %2, align 8, !dbg !2143
  br label %47, !dbg !2143

; <label>:47:                                     ; preds = %44, %34
  %48 = load i8*, i8** %2, align 8, !dbg !2144
  ret i8* %48, !dbg !2144
}

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

declare %struct.nl_sock* @nl_socket_alloc() #3

declare i32 @genl_connect(%struct.nl_sock*) #3

declare i32 @genl_ctrl_resolve(%struct.nl_sock*, i8*) #3

declare void @nl_socket_free(%struct.nl_sock*) #3

declare i32 @nl_socket_modify_cb(%struct.nl_sock*, i32, i32, i32 (%struct.nl_msg*, i8*)*, i8*) #3

declare i32 @nl_send_auto_complete(%struct.nl_sock*, %struct.nl_msg*) #3

declare i32 @nl_recvmsgs_default(%struct.nl_sock*) #3

; Function Attrs: nounwind uwtable
define internal i32 @nlerr2syserr(i32) #0 !dbg !2145 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2148, metadata !195), !dbg !2149
  %4 = load i32, i32* %3, align 4, !dbg !2150
  %5 = call i32 @abs(i32 %4) #1, !dbg !2151
  switch i32 %5, label %22 [
    i32 3, label %6
    i32 6, label %7
    i32 19, label %8
    i32 12, label %9
    i32 2, label %10
    i32 4, label %11
    i32 7, label %12
    i32 27, label %13
    i32 5, label %14
    i32 11, label %15
    i32 26, label %16
    i32 10, label %17
    i32 28, label %18
    i32 25, label %19
    i32 8, label %20
    i32 31, label %21
  ], !dbg !2152

; <label>:6:                                      ; preds = %1
  store i32 9, i32* %2, align 4, !dbg !2153
  br label %24, !dbg !2153

; <label>:7:                                      ; preds = %1
  store i32 17, i32* %2, align 4, !dbg !2155
  br label %24, !dbg !2155

; <label>:8:                                      ; preds = %1
  store i32 99, i32* %2, align 4, !dbg !2156
  br label %24, !dbg !2156

; <label>:9:                                      ; preds = %1
  store i32 2, i32* %2, align 4, !dbg !2157
  br label %24, !dbg !2157

; <label>:10:                                     ; preds = %1
  store i32 4, i32* %2, align 4, !dbg !2158
  br label %24, !dbg !2158

; <label>:11:                                     ; preds = %1
  store i32 11, i32* %2, align 4, !dbg !2159
  br label %24, !dbg !2159

; <label>:12:                                     ; preds = %1
  store i32 22, i32* %2, align 4, !dbg !2160
  br label %24, !dbg !2160

; <label>:13:                                     ; preds = %1
  store i32 13, i32* %2, align 4, !dbg !2161
  br label %24, !dbg !2161

; <label>:14:                                     ; preds = %1
  store i32 12, i32* %2, align 4, !dbg !2162
  br label %24, !dbg !2162

; <label>:15:                                     ; preds = %1
  store i32 97, i32* %2, align 4, !dbg !2163
  br label %24, !dbg !2163

; <label>:16:                                     ; preds = %1
  store i32 93, i32* %2, align 4, !dbg !2164
  br label %24, !dbg !2164

; <label>:17:                                     ; preds = %1
  store i32 95, i32* %2, align 4, !dbg !2165
  br label %24, !dbg !2165

; <label>:18:                                     ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !2166
  br label %24, !dbg !2166

; <label>:19:                                     ; preds = %1
  store i32 16, i32* %2, align 4, !dbg !2167
  br label %24, !dbg !2167

; <label>:20:                                     ; preds = %1
  store i32 34, i32* %2, align 4, !dbg !2168
  br label %24, !dbg !2168

; <label>:21:                                     ; preds = %1
  store i32 19, i32* %2, align 4, !dbg !2169
  br label %24, !dbg !2169

; <label>:22:                                     ; preds = %1
  %23 = load i32, i32* %3, align 4, !dbg !2170
  store i32 %23, i32* %2, align 4, !dbg !2171
  br label %24, !dbg !2171

; <label>:24:                                     ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %25 = load i32, i32* %2, align 4, !dbg !2172
  ret i32 %25, !dbg !2172
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @ipvs_getinfo_parse_cb(%struct.nl_msg*, i8*) #0 !dbg !2173 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca [3 x %struct.nlattr*], align 16
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.nl_msg** %4, metadata !2174, metadata !195), !dbg !2175
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2176, metadata !195), !dbg !2177
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %6, metadata !2178, metadata !195), !dbg !2187
  %8 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8, !dbg !2188
  %9 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.nl_msg* %8), !dbg !2189
  store %struct.nlmsghdr* %9, %struct.nlmsghdr** %6, align 8, !dbg !2187
  call void @llvm.dbg.declare(metadata [3 x %struct.nlattr*]* %7, metadata !2190, metadata !195), !dbg !2192
  %10 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !2193
  %11 = getelementptr inbounds [3 x %struct.nlattr*], [3 x %struct.nlattr*]* %7, i32 0, i32 0, !dbg !2195
  %12 = call i32 @genlmsg_parse(%struct.nlmsghdr* %10, i32 0, %struct.nlattr** %11, i32 2, %struct.nla_policy* getelementptr inbounds ([3 x %struct.nla_policy], [3 x %struct.nla_policy]* @ipvs_info_policy, i32 0, i32 0)), !dbg !2196
  %13 = icmp ne i32 %12, 0, !dbg !2197
  br i1 %13, label %14, label %15, !dbg !2198

; <label>:14:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !2199
  br label %25, !dbg !2199

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds [3 x %struct.nlattr*], [3 x %struct.nlattr*]* %7, i64 0, i64 1, !dbg !2200
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8, !dbg !2200
  %18 = icmp ne %struct.nlattr* %17, null, !dbg !2200
  br i1 %18, label %19, label %23, !dbg !2202

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [3 x %struct.nlattr*], [3 x %struct.nlattr*]* %7, i64 0, i64 2, !dbg !2203
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 16, !dbg !2203
  %22 = icmp ne %struct.nlattr* %21, null, !dbg !2203
  br i1 %22, label %24, label %23, !dbg !2204

; <label>:23:                                     ; preds = %19, %15
  store i32 -1, i32* %3, align 4, !dbg !2206
  br label %25, !dbg !2206

; <label>:24:                                     ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !2207
  br label %25, !dbg !2207

; <label>:25:                                     ; preds = %24, %23, %14
  %26 = load i32, i32* %3, align 4, !dbg !2208
  ret i32 %26, !dbg !2208
}

declare %struct.nlmsghdr* @nlmsg_hdr(%struct.nl_msg*) #3

declare i32 @genlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, %struct.nla_policy*) #3

declare %struct.nl_msg* @nlmsg_alloc() #3

declare i8* @genlmsg_put(%struct.nl_msg*, i32, i32, i32, i32, i32, i8 zeroext, i8 zeroext) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!183, !184}
!llvm.ident = !{!185}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !153, globals: !161)
!1 = !DIFile(filename: "[inter]keepalived--check--libipvs.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !15, !44, !66, !76, !88, !103, !110, !116, !121, !137}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !4, line: 24, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!7 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!8 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!9 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!10 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!11 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!12 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!13 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!14 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 40, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!18 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!19 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!20 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!21 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!22 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!23 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!24 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!25 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!26 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!27 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!28 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!29 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!30 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!31 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!32 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!33 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!34 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!35 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!36 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!37 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!38 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!39 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!40 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!41 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!42 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!43 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 294, size: 32, align: 32, elements: !46)
!45 = !DIFile(filename: "/usr/include/linux/ip_vs.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!47 = !DIEnumerator(name: "IPVS_CMD_UNSPEC", value: 0)
!48 = !DIEnumerator(name: "IPVS_CMD_NEW_SERVICE", value: 1)
!49 = !DIEnumerator(name: "IPVS_CMD_SET_SERVICE", value: 2)
!50 = !DIEnumerator(name: "IPVS_CMD_DEL_SERVICE", value: 3)
!51 = !DIEnumerator(name: "IPVS_CMD_GET_SERVICE", value: 4)
!52 = !DIEnumerator(name: "IPVS_CMD_NEW_DEST", value: 5)
!53 = !DIEnumerator(name: "IPVS_CMD_SET_DEST", value: 6)
!54 = !DIEnumerator(name: "IPVS_CMD_DEL_DEST", value: 7)
!55 = !DIEnumerator(name: "IPVS_CMD_GET_DEST", value: 8)
!56 = !DIEnumerator(name: "IPVS_CMD_NEW_DAEMON", value: 9)
!57 = !DIEnumerator(name: "IPVS_CMD_DEL_DAEMON", value: 10)
!58 = !DIEnumerator(name: "IPVS_CMD_GET_DAEMON", value: 11)
!59 = !DIEnumerator(name: "IPVS_CMD_SET_CONFIG", value: 12)
!60 = !DIEnumerator(name: "IPVS_CMD_GET_CONFIG", value: 13)
!61 = !DIEnumerator(name: "IPVS_CMD_SET_INFO", value: 14)
!62 = !DIEnumerator(name: "IPVS_CMD_GET_INFO", value: 15)
!63 = !DIEnumerator(name: "IPVS_CMD_ZERO", value: 16)
!64 = !DIEnumerator(name: "IPVS_CMD_FLUSH", value: 17)
!65 = !DIEnumerator(name: "__IPVS_CMD_MAX", value: 18)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 326, size: 32, align: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75}
!68 = !DIEnumerator(name: "IPVS_CMD_ATTR_UNSPEC", value: 0)
!69 = !DIEnumerator(name: "IPVS_CMD_ATTR_SERVICE", value: 1)
!70 = !DIEnumerator(name: "IPVS_CMD_ATTR_DEST", value: 2)
!71 = !DIEnumerator(name: "IPVS_CMD_ATTR_DAEMON", value: 3)
!72 = !DIEnumerator(name: "IPVS_CMD_ATTR_TIMEOUT_TCP", value: 4)
!73 = !DIEnumerator(name: "IPVS_CMD_ATTR_TIMEOUT_TCP_FIN", value: 5)
!74 = !DIEnumerator(name: "IPVS_CMD_ATTR_TIMEOUT_UDP", value: 6)
!75 = !DIEnumerator(name: "__IPVS_CMD_ATTR_MAX", value: 7)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 404, size: 32, align: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!78 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_UNSPEC", value: 0)
!79 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_STATE", value: 1)
!80 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_MCAST_IFN", value: 2)
!81 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_SYNC_ID", value: 3)
!82 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_SYNC_MAXLEN", value: 4)
!83 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_MCAST_GROUP", value: 5)
!84 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_MCAST_GROUP6", value: 6)
!85 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_MCAST_PORT", value: 7)
!86 = !DIEnumerator(name: "IPVS_DAEMON_ATTR_MCAST_TTL", value: 8)
!87 = !DIEnumerator(name: "__IPVS_DAEMON_ATTR_MAX", value: 9)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nl_cb_type", file: !89, line: 90, size: 32, align: 32, elements: !90)
!89 = !DIFile(filename: "/usr/include/libnl3/netlink/handlers.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!91 = !DIEnumerator(name: "NL_CB_VALID", value: 0)
!92 = !DIEnumerator(name: "NL_CB_FINISH", value: 1)
!93 = !DIEnumerator(name: "NL_CB_OVERRUN", value: 2)
!94 = !DIEnumerator(name: "NL_CB_SKIPPED", value: 3)
!95 = !DIEnumerator(name: "NL_CB_ACK", value: 4)
!96 = !DIEnumerator(name: "NL_CB_MSG_IN", value: 5)
!97 = !DIEnumerator(name: "NL_CB_MSG_OUT", value: 6)
!98 = !DIEnumerator(name: "NL_CB_INVALID", value: 7)
!99 = !DIEnumerator(name: "NL_CB_SEQ_CHECK", value: 8)
!100 = !DIEnumerator(name: "NL_CB_SEND_ACK", value: 9)
!101 = !DIEnumerator(name: "NL_CB_DUMP_INTR", value: 10)
!102 = !DIEnumerator(name: "__NL_CB_TYPE_MAX", value: 11)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nl_cb_kind", file: !89, line: 72, size: 32, align: 32, elements: !104)
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "NL_CB_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "NL_CB_VERBOSE", value: 1)
!107 = !DIEnumerator(name: "NL_CB_DEBUG", value: 2)
!108 = !DIEnumerator(name: "NL_CB_CUSTOM", value: 3)
!109 = !DIEnumerator(name: "__NL_CB_KIND_MAX", value: 4)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 444, size: 32, align: 32, elements: !111)
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "IPVS_INFO_ATTR_UNSPEC", value: 0)
!113 = !DIEnumerator(name: "IPVS_INFO_ATTR_VERSION", value: 1)
!114 = !DIEnumerator(name: "IPVS_INFO_ATTR_CONN_TAB_SIZE", value: 2)
!115 = !DIEnumerator(name: "__IPVS_INFO_ATTR_MAX", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nl_cb_action", file: !89, line: 59, size: 32, align: 32, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "NL_OK", value: 0)
!119 = !DIEnumerator(name: "NL_SKIP", value: 1)
!120 = !DIEnumerator(name: "NL_STOP", value: 2)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 344, size: 32, align: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!123 = !DIEnumerator(name: "IPVS_SVC_ATTR_UNSPEC", value: 0)
!124 = !DIEnumerator(name: "IPVS_SVC_ATTR_AF", value: 1)
!125 = !DIEnumerator(name: "IPVS_SVC_ATTR_PROTOCOL", value: 2)
!126 = !DIEnumerator(name: "IPVS_SVC_ATTR_ADDR", value: 3)
!127 = !DIEnumerator(name: "IPVS_SVC_ATTR_PORT", value: 4)
!128 = !DIEnumerator(name: "IPVS_SVC_ATTR_FWMARK", value: 5)
!129 = !DIEnumerator(name: "IPVS_SVC_ATTR_SCHED_NAME", value: 6)
!130 = !DIEnumerator(name: "IPVS_SVC_ATTR_FLAGS", value: 7)
!131 = !DIEnumerator(name: "IPVS_SVC_ATTR_TIMEOUT", value: 8)
!132 = !DIEnumerator(name: "IPVS_SVC_ATTR_NETMASK", value: 9)
!133 = !DIEnumerator(name: "IPVS_SVC_ATTR_STATS", value: 10)
!134 = !DIEnumerator(name: "IPVS_SVC_ATTR_PE_NAME", value: 11)
!135 = !DIEnumerator(name: "IPVS_SVC_ATTR_STATS64", value: 12)
!136 = !DIEnumerator(name: "__IPVS_SVC_ATTR_MAX", value: 13)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 373, size: 32, align: 32, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!139 = !DIEnumerator(name: "IPVS_DEST_ATTR_UNSPEC", value: 0)
!140 = !DIEnumerator(name: "IPVS_DEST_ATTR_ADDR", value: 1)
!141 = !DIEnumerator(name: "IPVS_DEST_ATTR_PORT", value: 2)
!142 = !DIEnumerator(name: "IPVS_DEST_ATTR_FWD_METHOD", value: 3)
!143 = !DIEnumerator(name: "IPVS_DEST_ATTR_WEIGHT", value: 4)
!144 = !DIEnumerator(name: "IPVS_DEST_ATTR_U_THRESH", value: 5)
!145 = !DIEnumerator(name: "IPVS_DEST_ATTR_L_THRESH", value: 6)
!146 = !DIEnumerator(name: "IPVS_DEST_ATTR_ACTIVE_CONNS", value: 7)
!147 = !DIEnumerator(name: "IPVS_DEST_ATTR_INACT_CONNS", value: 8)
!148 = !DIEnumerator(name: "IPVS_DEST_ATTR_PERSIST_CONNS", value: 9)
!149 = !DIEnumerator(name: "IPVS_DEST_ATTR_STATS", value: 10)
!150 = !DIEnumerator(name: "IPVS_DEST_ATTR_ADDR_FAMILY", value: 11)
!151 = !DIEnumerator(name: "IPVS_DEST_ATTR_STATS64", value: 12)
!152 = !DIEnumerator(name: "__IPVS_DEST_ATTR_MAX", value: 13)
!153 = !{!154, !155, !157, !160}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 51, baseType: !159)
!158 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!159 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!160 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!161 = !{!162, !164, !166, !169, !170, !182}
!162 = distinct !DIGlobalVariable(name: "ipvs_func", scope: !0, file: !163, line: 62, type: !154, isLocal: true, isDefinition: true, variable: i8** @ipvs_func)
!163 = !DIFile(filename: "libipvs.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!164 = distinct !DIGlobalVariable(name: "try_nl", scope: !0, file: !163, line: 68, type: !165, isLocal: true, isDefinition: true, variable: i8* @try_nl)
!165 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!166 = distinct !DIGlobalVariable(name: "sock", scope: !0, file: !163, line: 66, type: !167, isLocal: true, isDefinition: true, variable: %struct.nl_sock** @sock)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "nl_sock", file: !89, line: 26, flags: DIFlagFwdDecl)
!169 = distinct !DIGlobalVariable(name: "family", scope: !0, file: !163, line: 67, type: !160, isLocal: true, isDefinition: true, variable: i32* @family)
!170 = distinct !DIGlobalVariable(name: "ipvs_info_policy", scope: !0, file: !163, line: 154, type: !171, isLocal: true, isDefinition: true, variable: [3 x %struct.nla_policy]* @ipvs_info_policy)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 144, align: 16, elements: !180)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nla_policy", file: !173, line: 67, size: 48, align: 16, elements: !174)
!173 = !DIFile(filename: "/usr/include/libnl3/netlink/attr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!174 = !{!175, !178, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !172, file: !173, line: 69, baseType: !176, size: 16, align: 16)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !158, line: 49, baseType: !177)
!177 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !172, file: !173, line: 72, baseType: !176, size: 16, align: 16, offset: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !172, file: !173, line: 75, baseType: !176, size: 16, align: 16, offset: 32)
!180 = !{!181}
!181 = !DISubrange(count: 3)
!182 = distinct !DIGlobalVariable(name: "sockfd", scope: !0, file: !163, line: 61, type: !160, isLocal: true, isDefinition: true, variable: i32* @sockfd)
!183 = !{i32 2, !"Dwarf Version", i32 4}
!184 = !{i32 2, !"Debug Info Version", i32 3}
!185 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!186 = distinct !DISubprogram(name: "ipvs_init", scope: !163, file: !163, line: 326, type: !187, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!160}
!189 = !{}
!190 = !DILocalVariable(name: "len", scope: !186, file: !163, line: 328, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !192, line: 277, baseType: !193)
!192 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !194, line: 189, baseType: !159)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!195 = !DIExpression()
!196 = !DILocation(line: 328, column: 12, scope: !186)
!197 = !DILocalVariable(name: "ipvs_info", scope: !186, file: !163, line: 329, type: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_getinfo", file: !45, line: 179, size: 96, align: 32, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !198, file: !45, line: 181, baseType: !159, size: 32, align: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !45, line: 184, baseType: !159, size: 32, align: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "num_services", scope: !198, file: !45, line: 187, baseType: !159, size: 32, align: 32, offset: 64)
!203 = !DILocation(line: 329, column: 23, scope: !186)
!204 = !DILocation(line: 331, column: 12, scope: !186)
!205 = !DILocation(line: 339, column: 9, scope: !186)
!206 = !DILocation(line: 342, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !186, file: !163, line: 342, column: 6)
!208 = !DILocation(line: 342, column: 13, scope: !207)
!209 = !DILocation(line: 342, column: 16, scope: !210)
!210 = !DILexicalBlockFile(scope: !207, file: !163, discriminator: 1)
!211 = !DILocation(line: 342, column: 54, scope: !210)
!212 = !DILocation(line: 342, column: 6, scope: !210)
!213 = !DILocation(line: 343, column: 10, scope: !207)
!214 = !DILocation(line: 343, column: 3, scope: !207)
!215 = !DILocation(line: 345, column: 9, scope: !186)
!216 = !DILocation(line: 348, column: 16, scope: !217)
!217 = distinct !DILexicalBlock(scope: !186, file: !163, line: 348, column: 6)
!218 = !DILocation(line: 348, column: 14, scope: !217)
!219 = !DILocation(line: 348, column: 70, scope: !217)
!220 = !DILocation(line: 348, column: 6, scope: !186)
!221 = !DILocation(line: 349, column: 3, scope: !217)
!222 = !DILocation(line: 358, column: 6, scope: !186)
!223 = !DILocation(line: 359, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !186, file: !163, line: 359, column: 6)
!225 = !DILocation(line: 359, column: 55, scope: !224)
!226 = !DILocation(line: 359, column: 6, scope: !224)
!227 = !DILocation(line: 359, column: 6, scope: !186)
!228 = !DILocation(line: 360, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !163, line: 359, column: 82)
!230 = !DILocation(line: 360, column: 3, scope: !229)
!231 = !DILocation(line: 361, column: 3, scope: !229)
!232 = !DILocation(line: 364, column: 2, scope: !186)
!233 = !DILocation(line: 365, column: 1, scope: !186)
!234 = distinct !DISubprogram(name: "ipvs_nl_send_message", scope: !163, file: !163, line: 236, type: !235, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!235 = !DISubroutineType(types: !236)
!236 = !{!160, !237, !239, !154}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "nl_msg", file: !89, line: 27, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "nl_recvmsg_msg_cb_t", file: !89, line: 41, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!160, !237, !154}
!243 = !DILocalVariable(name: "msg", arg: 1, scope: !234, file: !163, line: 236, type: !237)
!244 = !DILocation(line: 236, column: 48, scope: !234)
!245 = !DILocalVariable(name: "func", arg: 2, scope: !234, file: !163, line: 236, type: !239)
!246 = !DILocation(line: 236, column: 73, scope: !234)
!247 = !DILocalVariable(name: "arg", arg: 3, scope: !234, file: !163, line: 236, type: !154)
!248 = !DILocation(line: 236, column: 85, scope: !234)
!249 = !DILocalVariable(name: "err", scope: !234, file: !163, line: 238, type: !160)
!250 = !DILocation(line: 238, column: 6, scope: !234)
!251 = !DILocation(line: 240, column: 9, scope: !234)
!252 = !DILocation(line: 240, column: 7, scope: !234)
!253 = !DILocation(line: 241, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !234, file: !163, line: 241, column: 6)
!255 = !DILocation(line: 241, column: 6, scope: !234)
!256 = !DILocation(line: 242, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !163, line: 242, column: 7)
!258 = distinct !DILexicalBlock(scope: !254, file: !163, line: 241, column: 13)
!259 = !DILocation(line: 242, column: 7, scope: !258)
!260 = !DILocation(line: 243, column: 15, scope: !257)
!261 = !DILocation(line: 243, column: 4, scope: !257)
!262 = !DILocation(line: 244, column: 3, scope: !258)
!263 = !DILocation(line: 247, column: 19, scope: !264)
!264 = distinct !DILexicalBlock(scope: !234, file: !163, line: 247, column: 6)
!265 = !DILocation(line: 247, column: 6, scope: !264)
!266 = !DILocation(line: 247, column: 25, scope: !264)
!267 = !DILocation(line: 247, column: 6, scope: !234)
!268 = !DILocation(line: 248, column: 3, scope: !264)
!269 = !DILocation(line: 250, column: 29, scope: !234)
!270 = !DILocation(line: 250, column: 11, scope: !234)
!271 = !DILocation(line: 250, column: 9, scope: !234)
!272 = !DILocation(line: 251, column: 6, scope: !273)
!273 = distinct !DILexicalBlock(scope: !234, file: !163, line: 251, column: 6)
!274 = !DILocation(line: 251, column: 13, scope: !273)
!275 = !DILocation(line: 251, column: 6, scope: !234)
!276 = !DILocation(line: 252, column: 3, scope: !273)
!277 = !DILocation(line: 255, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !234, file: !163, line: 255, column: 6)
!279 = !DILocation(line: 255, column: 10, scope: !278)
!280 = !DILocation(line: 255, column: 6, scope: !234)
!281 = !DILocation(line: 256, column: 18, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !163, line: 255, column: 18)
!283 = !DILocation(line: 256, column: 3, scope: !282)
!284 = !DILocation(line: 257, column: 8, scope: !282)
!285 = !DILocation(line: 258, column: 3, scope: !282)
!286 = !DILocation(line: 261, column: 26, scope: !287)
!287 = distinct !DILexicalBlock(scope: !234, file: !163, line: 261, column: 6)
!288 = !DILocation(line: 261, column: 59, scope: !287)
!289 = !DILocation(line: 261, column: 65, scope: !287)
!290 = !DILocation(line: 261, column: 6, scope: !287)
!291 = !DILocation(line: 261, column: 70, scope: !287)
!292 = !DILocation(line: 261, column: 6, scope: !234)
!293 = !DILocation(line: 262, column: 3, scope: !287)
!294 = !DILocation(line: 264, column: 28, scope: !295)
!295 = distinct !DILexicalBlock(scope: !234, file: !163, line: 264, column: 6)
!296 = !DILocation(line: 264, column: 34, scope: !295)
!297 = !DILocation(line: 264, column: 6, scope: !295)
!298 = !DILocation(line: 264, column: 39, scope: !295)
!299 = !DILocation(line: 264, column: 6, scope: !234)
!300 = !DILocation(line: 265, column: 3, scope: !295)
!301 = !DILocation(line: 267, column: 34, scope: !302)
!302 = distinct !DILexicalBlock(scope: !234, file: !163, line: 267, column: 6)
!303 = !DILocation(line: 267, column: 14, scope: !302)
!304 = !DILocation(line: 267, column: 13, scope: !302)
!305 = !DILocation(line: 267, column: 11, scope: !302)
!306 = !DILocation(line: 267, column: 41, scope: !302)
!307 = !DILocation(line: 267, column: 6, scope: !234)
!308 = !DILocation(line: 268, column: 3, scope: !302)
!309 = !DILocation(line: 270, column: 13, scope: !234)
!310 = !DILocation(line: 270, column: 2, scope: !234)
!311 = !DILocation(line: 272, column: 17, scope: !234)
!312 = !DILocation(line: 272, column: 2, scope: !234)
!313 = !DILocation(line: 274, column: 2, scope: !234)
!314 = !DILocation(line: 277, column: 17, scope: !234)
!315 = !DILocation(line: 277, column: 2, scope: !234)
!316 = !DILocation(line: 278, column: 7, scope: !234)
!317 = !DILocation(line: 279, column: 13, scope: !234)
!318 = !DILocation(line: 279, column: 2, scope: !234)
!319 = !DILocation(line: 283, column: 22, scope: !234)
!320 = !DILocation(line: 283, column: 9, scope: !234)
!321 = !DILocation(line: 283, column: 3, scope: !322)
!322 = !DILexicalBlockFile(scope: !234, file: !163, discriminator: 1)
!323 = !DILocation(line: 283, column: 7, scope: !234)
!324 = !DILocation(line: 285, column: 2, scope: !234)
!325 = !DILocation(line: 286, column: 1, scope: !234)
!326 = distinct !DISubprogram(name: "ipvs_getinfo", scope: !163, file: !163, line: 305, type: !187, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!327 = !DILocalVariable(name: "len", scope: !326, file: !163, line: 307, type: !191)
!328 = !DILocation(line: 307, column: 12, scope: !326)
!329 = !DILocalVariable(name: "ipvs_info", scope: !326, file: !163, line: 308, type: !198)
!330 = !DILocation(line: 308, column: 23, scope: !326)
!331 = !DILocation(line: 310, column: 12, scope: !326)
!332 = !DILocation(line: 312, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !326, file: !163, line: 312, column: 6)
!334 = !DILocation(line: 312, column: 6, scope: !326)
!335 = !DILocalVariable(name: "msg", scope: !336, file: !163, line: 313, type: !237)
!336 = distinct !DILexicalBlock(scope: !333, file: !163, line: 312, column: 14)
!337 = !DILocation(line: 313, column: 18, scope: !336)
!338 = !DILocation(line: 314, column: 9, scope: !336)
!339 = !DILocation(line: 314, column: 7, scope: !336)
!340 = !DILocation(line: 315, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !163, line: 315, column: 7)
!342 = !DILocation(line: 315, column: 7, scope: !336)
!343 = !DILocation(line: 316, column: 32, scope: !341)
!344 = !DILocation(line: 316, column: 11, scope: !341)
!345 = !DILocation(line: 316, column: 4, scope: !341)
!346 = !DILocation(line: 317, column: 3, scope: !336)
!347 = !DILocation(line: 320, column: 6, scope: !326)
!348 = !DILocation(line: 321, column: 20, scope: !326)
!349 = !DILocation(line: 322, column: 6, scope: !326)
!350 = !DILocation(line: 321, column: 9, scope: !326)
!351 = !DILocation(line: 321, column: 2, scope: !326)
!352 = !DILocation(line: 323, column: 1, scope: !326)
!353 = distinct !DISubprogram(name: "ipvs_flush", scope: !163, file: !163, line: 367, type: !187, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!354 = !DILocation(line: 370, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !353, file: !163, line: 370, column: 6)
!356 = !DILocation(line: 370, column: 6, scope: !353)
!357 = !DILocalVariable(name: "msg", scope: !358, file: !163, line: 371, type: !237)
!358 = distinct !DILexicalBlock(scope: !355, file: !163, line: 370, column: 14)
!359 = !DILocation(line: 371, column: 18, scope: !358)
!360 = !DILocation(line: 371, column: 24, scope: !358)
!361 = !DILocation(line: 372, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !163, line: 372, column: 7)
!363 = !DILocation(line: 372, column: 11, scope: !362)
!364 = !DILocation(line: 372, column: 36, scope: !365)
!365 = !DILexicalBlockFile(scope: !362, file: !163, discriminator: 1)
!366 = !DILocation(line: 372, column: 15, scope: !365)
!367 = !DILocation(line: 372, column: 63, scope: !365)
!368 = !DILocation(line: 372, column: 7, scope: !365)
!369 = !DILocation(line: 373, column: 4, scope: !362)
!370 = !DILocation(line: 375, column: 3, scope: !358)
!371 = !DILocation(line: 378, column: 20, scope: !353)
!372 = !DILocation(line: 378, column: 9, scope: !353)
!373 = !DILocation(line: 378, column: 2, scope: !353)
!374 = !DILocation(line: 379, column: 1, scope: !353)
!375 = distinct !DISubprogram(name: "ipvs_nl_message", scope: !163, file: !163, line: 217, type: !376, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!376 = !DISubroutineType(types: !377)
!377 = !{!237, !378, !160}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !158, line: 48, baseType: !379)
!379 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!380 = !DILocalVariable(name: "cmd", arg: 1, scope: !375, file: !163, line: 217, type: !378)
!381 = !DILocation(line: 217, column: 47, scope: !375)
!382 = !DILocalVariable(name: "flags", arg: 2, scope: !375, file: !163, line: 217, type: !160)
!383 = !DILocation(line: 217, column: 56, scope: !375)
!384 = !DILocalVariable(name: "msg", scope: !375, file: !163, line: 219, type: !237)
!385 = !DILocation(line: 219, column: 17, scope: !375)
!386 = !DILocation(line: 221, column: 8, scope: !375)
!387 = !DILocation(line: 221, column: 6, scope: !375)
!388 = !DILocation(line: 222, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !375, file: !163, line: 222, column: 6)
!390 = !DILocation(line: 222, column: 6, scope: !375)
!391 = !DILocation(line: 223, column: 3, scope: !389)
!392 = !DILocation(line: 225, column: 14, scope: !375)
!393 = !DILocation(line: 225, column: 25, scope: !375)
!394 = !DILocation(line: 225, column: 36, scope: !375)
!395 = !DILocation(line: 226, column: 7, scope: !375)
!396 = !DILocation(line: 225, column: 2, scope: !375)
!397 = !DILocation(line: 228, column: 9, scope: !375)
!398 = !DILocation(line: 228, column: 2, scope: !375)
!399 = !DILocation(line: 229, column: 1, scope: !375)
!400 = distinct !DISubprogram(name: "ipvs_nl_noop_cb", scope: !163, file: !163, line: 231, type: !241, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!401 = !DILocalVariable(name: "msg", arg: 1, scope: !400, file: !163, line: 231, type: !237)
!402 = !DILocation(line: 231, column: 67, scope: !400)
!403 = !DILocalVariable(name: "arg", arg: 2, scope: !400, file: !163, line: 231, type: !154)
!404 = !DILocation(line: 231, column: 102, scope: !400)
!405 = !DILocation(line: 233, column: 2, scope: !400)
!406 = distinct !DISubprogram(name: "ipvs_add_service", scope: !163, file: !163, line: 419, type: !407, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!407 = !DISubroutineType(types: !408)
!408 = !{!160, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_service_t", file: !411, line: 28, baseType: !412)
!411 = !DIFile(filename: "./../include/libipvs.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_service_app", file: !413, line: 44, size: 640, align: 32, elements: !414)
!413 = !DIFile(filename: "./../include/ip_vs.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!414 = !{!415, !435, !436, !466}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !412, file: !413, line: 45, baseType: !416, size: 352, align: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_service_user", file: !45, line: 130, size: 352, align: 32, elements: !417)
!417 = !{!418, !421, !425, !427, !428, !432, !433, !434}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !416, file: !45, line: 132, baseType: !419, size: 16, align: 16)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !420, line: 23, baseType: !177)
!420 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !416, file: !45, line: 133, baseType: !422, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !423, line: 30, baseType: !424)
!423 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !420, line: 26, baseType: !159)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !416, file: !45, line: 134, baseType: !426, size: 16, align: 16, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !423, line: 28, baseType: !419)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !416, file: !45, line: 135, baseType: !424, size: 32, align: 32, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_name", scope: !416, file: !45, line: 138, baseType: !429, size: 128, align: 8, offset: 128)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, align: 8, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !45, line: 139, baseType: !159, size: 32, align: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !416, file: !45, line: 140, baseType: !159, size: 32, align: 32, offset: 288)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !416, file: !45, line: 141, baseType: !422, size: 32, align: 32, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !412, file: !413, line: 46, baseType: !176, size: 16, align: 16, offset: 352)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nf_addr", scope: !412, file: !413, line: 47, baseType: !437, size: 128, align: 32, offset: 384)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "nf_inet_addr", file: !438, line: 70, size: 128, align: 32, elements: !439)
!438 = !DIFile(filename: "/usr/include/linux/netfilter.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!439 = !{!440, !444, !445, !447, !452}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !437, file: !438, line: 71, baseType: !441, size: 128, align: 32)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 128, align: 32, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 4)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !437, file: !438, line: 72, baseType: !422, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !437, file: !438, line: 73, baseType: !446, size: 128, align: 32)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 128, align: 32, elements: !442)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !437, file: !438, line: 74, baseType: !448, size: 32, align: 32)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !16, line: 31, size: 32, align: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !448, file: !16, line: 33, baseType: !451, size: 32, align: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !16, line: 30, baseType: !157)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !437, file: !438, line: 75, baseType: !453, size: 128, align: 32)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !16, line: 211, size: 128, align: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !453, file: !16, line: 220, baseType: !456, size: 128, align: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !16, line: 213, size: 128, align: 32, elements: !457)
!457 = !{!458, !460, !464}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !456, file: !16, line: 215, baseType: !459, size: 128, align: 8)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, align: 8, elements: !430)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !456, file: !16, line: 217, baseType: !461, size: 128, align: 16)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, align: 16, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 8)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !456, file: !16, line: 218, baseType: !465, size: 128, align: 32)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 128, align: 32, elements: !442)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !412, file: !413, line: 49, baseType: !429, size: 128, align: 8, offset: 512)
!467 = !DILocalVariable(name: "svc", arg: 1, scope: !406, file: !163, line: 419, type: !409)
!468 = !DILocation(line: 419, column: 38, scope: !406)
!469 = !DILocation(line: 421, column: 12, scope: !406)
!470 = !DILocation(line: 423, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !406, file: !163, line: 423, column: 6)
!472 = !DILocation(line: 423, column: 6, scope: !406)
!473 = !DILocalVariable(name: "msg", scope: !474, file: !163, line: 424, type: !237)
!474 = distinct !DILexicalBlock(scope: !471, file: !163, line: 423, column: 14)
!475 = !DILocation(line: 424, column: 18, scope: !474)
!476 = !DILocation(line: 424, column: 24, scope: !474)
!477 = !DILocation(line: 425, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !163, line: 425, column: 7)
!479 = !DILocation(line: 425, column: 7, scope: !474)
!480 = !DILocation(line: 425, column: 13, scope: !481)
!481 = !DILexicalBlockFile(scope: !478, file: !163, discriminator: 1)
!482 = !DILocation(line: 426, column: 33, scope: !483)
!483 = distinct !DILexicalBlock(scope: !474, file: !163, line: 426, column: 7)
!484 = !DILocation(line: 426, column: 38, scope: !483)
!485 = !DILocation(line: 426, column: 7, scope: !483)
!486 = !DILocation(line: 426, column: 7, scope: !474)
!487 = !DILocation(line: 427, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !483, file: !163, line: 426, column: 44)
!489 = !DILocation(line: 427, column: 4, scope: !488)
!490 = !DILocation(line: 428, column: 4, scope: !488)
!491 = !DILocation(line: 430, column: 31, scope: !474)
!492 = !DILocation(line: 430, column: 10, scope: !474)
!493 = !DILocation(line: 430, column: 3, scope: !474)
!494 = !DILocation(line: 434, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !406, file: !163, line: 434, column: 6)
!496 = !DILocation(line: 434, column: 11, scope: !495)
!497 = !DILocation(line: 434, column: 14, scope: !495)
!498 = !DILocation(line: 434, column: 17, scope: !499)
!499 = !DILexicalBlockFile(scope: !495, file: !163, discriminator: 1)
!500 = !DILocation(line: 434, column: 22, scope: !499)
!501 = !DILocation(line: 434, column: 25, scope: !499)
!502 = !DILocation(line: 434, column: 6, scope: !499)
!503 = !DILocation(line: 434, column: 3, scope: !504)
!504 = !DILexicalBlockFile(scope: !505, file: !163, discriminator: 2)
!505 = distinct !DILexicalBlock(scope: !495, file: !163, line: 434, column: 3)
!506 = !DILocation(line: 434, column: 1, scope: !504)
!507 = !DILocation(line: 434, column: 36, scope: !508)
!508 = !DILexicalBlockFile(scope: !406, file: !163, discriminator: 3)
!509 = !DILocation(line: 434, column: 41, scope: !508)
!510 = !DILocation(line: 434, column: 49, scope: !508)
!511 = !DILocation(line: 434, column: 19, scope: !508)
!512 = !DILocation(line: 434, column: 24, scope: !508)
!513 = !DILocation(line: 434, column: 29, scope: !508)
!514 = !DILocation(line: 434, column: 34, scope: !508)
!515 = !DILocation(line: 434, column: 58, scope: !508)
!516 = !DILocation(line: 434, column: 63, scope: !508)
!517 = !DILocation(line: 434, column: 3, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !163, discriminator: 4)
!519 = distinct !DILexicalBlock(scope: !520, file: !163, line: 434, column: 75)
!520 = distinct !DILexicalBlock(scope: !406, file: !163, line: 434, column: 58)
!521 = !DILocation(line: 434, column: 1, scope: !518)
!522 = !DILocation(line: 435, column: 20, scope: !406)
!523 = !DILocation(line: 435, column: 65, scope: !406)
!524 = !DILocation(line: 435, column: 57, scope: !406)
!525 = !DILocation(line: 435, column: 9, scope: !406)
!526 = !DILocation(line: 435, column: 2, scope: !406)
!527 = !DILocation(line: 438, column: 2, scope: !406)
!528 = !DILocation(line: 439, column: 1, scope: !406)
!529 = distinct !DISubprogram(name: "ipvs_nl_fill_service_attr", scope: !163, file: !163, line: 382, type: !530, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!530 = !DISubroutineType(types: !531)
!531 = !{!160, !237, !409}
!532 = !DILocalVariable(name: "msg", arg: 1, scope: !529, file: !163, line: 382, type: !237)
!533 = !DILocation(line: 382, column: 53, scope: !529)
!534 = !DILocalVariable(name: "svc", arg: 2, scope: !529, file: !163, line: 382, type: !409)
!535 = !DILocation(line: 382, column: 74, scope: !529)
!536 = !DILocalVariable(name: "nl_service", scope: !529, file: !163, line: 384, type: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !539, line: 165, size: 32, align: 16, elements: !540)
!539 = !DIFile(filename: "/usr/include/linux/netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !538, file: !539, line: 166, baseType: !419, size: 16, align: 16)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !538, file: !539, line: 167, baseType: !419, size: 16, align: 16, offset: 16)
!543 = !DILocation(line: 384, column: 17, scope: !529)
!544 = !DILocalVariable(name: "flags", scope: !529, file: !163, line: 385, type: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_flags", file: !45, line: 288, size: 64, align: 32, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !45, line: 289, baseType: !424, size: 32, align: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !545, file: !45, line: 290, baseType: !424, size: 32, align: 32, offset: 32)
!549 = !DILocation(line: 385, column: 21, scope: !529)
!550 = !DILocation(line: 385, column: 29, scope: !529)
!551 = !DILocation(line: 385, column: 40, scope: !529)
!552 = !DILocation(line: 385, column: 45, scope: !529)
!553 = !DILocation(line: 385, column: 50, scope: !529)
!554 = !DILocation(line: 388, column: 30, scope: !529)
!555 = !DILocation(line: 388, column: 15, scope: !529)
!556 = !DILocation(line: 388, column: 13, scope: !529)
!557 = !DILocation(line: 389, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !529, file: !163, line: 389, column: 6)
!559 = !DILocation(line: 389, column: 6, scope: !529)
!560 = !DILocation(line: 390, column: 3, scope: !558)
!561 = !DILocation(line: 392, column: 2, scope: !529)
!562 = distinct !{!562, !561}
!563 = !DILocalVariable(name: "__tmp", scope: !564, file: !163, line: 392, type: !176)
!564 = distinct !DILexicalBlock(scope: !529, file: !163, line: 392, column: 5)
!565 = !DILocation(line: 392, column: 16, scope: !564)
!566 = !DILocation(line: 392, column: 24, scope: !567)
!567 = !DILexicalBlockFile(scope: !564, file: !163, discriminator: 1)
!568 = !DILocation(line: 392, column: 29, scope: !567)
!569 = !DILocation(line: 392, column: 16, scope: !567)
!570 = !DILocation(line: 392, column: 33, scope: !567)
!571 = distinct !{!571, !572}
!572 = !DILocation(line: 392, column: 33, scope: !564)
!573 = !DILocation(line: 392, column: 50, scope: !574)
!574 = !DILexicalBlockFile(scope: !575, file: !163, discriminator: 2)
!575 = distinct !DILexicalBlock(scope: !576, file: !163, line: 392, column: 42)
!576 = distinct !DILexicalBlock(scope: !564, file: !163, line: 392, column: 36)
!577 = !DILocation(line: 392, column: 91, scope: !574)
!578 = !DILocation(line: 392, column: 42, scope: !574)
!579 = !DILocation(line: 392, column: 99, scope: !574)
!580 = !DILocation(line: 392, column: 104, scope: !581)
!581 = !DILexicalBlockFile(scope: !575, file: !163, discriminator: 3)
!582 = !DILocation(line: 392, column: 126, scope: !583)
!583 = !DILexicalBlockFile(scope: !576, file: !163, discriminator: 4)
!584 = !DILocation(line: 392, column: 138, scope: !585)
!585 = !DILexicalBlockFile(scope: !564, file: !163, discriminator: 5)
!586 = !DILocation(line: 394, column: 6, scope: !587)
!587 = distinct !DILexicalBlock(scope: !529, file: !163, line: 394, column: 6)
!588 = !DILocation(line: 394, column: 11, scope: !587)
!589 = !DILocation(line: 394, column: 16, scope: !587)
!590 = !DILocation(line: 394, column: 6, scope: !529)
!591 = !DILocation(line: 395, column: 3, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !163, line: 394, column: 24)
!593 = distinct !{!593, !591}
!594 = !DILocalVariable(name: "__tmp", scope: !595, file: !163, line: 395, type: !157)
!595 = distinct !DILexicalBlock(scope: !592, file: !163, line: 395, column: 6)
!596 = !DILocation(line: 395, column: 17, scope: !595)
!597 = !DILocation(line: 395, column: 25, scope: !598)
!598 = !DILexicalBlockFile(scope: !595, file: !163, discriminator: 1)
!599 = !DILocation(line: 395, column: 30, scope: !598)
!600 = !DILocation(line: 395, column: 35, scope: !598)
!601 = !DILocation(line: 395, column: 17, scope: !598)
!602 = !DILocation(line: 395, column: 43, scope: !598)
!603 = distinct !{!603, !604}
!604 = !DILocation(line: 395, column: 43, scope: !595)
!605 = !DILocation(line: 395, column: 60, scope: !606)
!606 = !DILexicalBlockFile(scope: !607, file: !163, discriminator: 2)
!607 = distinct !DILexicalBlock(scope: !608, file: !163, line: 395, column: 52)
!608 = distinct !DILexicalBlock(scope: !595, file: !163, line: 395, column: 46)
!609 = !DILocation(line: 395, column: 105, scope: !606)
!610 = !DILocation(line: 395, column: 52, scope: !606)
!611 = !DILocation(line: 395, column: 113, scope: !606)
!612 = !DILocation(line: 395, column: 118, scope: !613)
!613 = !DILexicalBlockFile(scope: !607, file: !163, discriminator: 3)
!614 = !DILocation(line: 395, column: 140, scope: !615)
!615 = !DILexicalBlockFile(scope: !608, file: !163, discriminator: 4)
!616 = !DILocation(line: 395, column: 152, scope: !617)
!617 = !DILexicalBlockFile(scope: !595, file: !163, discriminator: 5)
!618 = !DILocation(line: 396, column: 2, scope: !592)
!619 = !DILocation(line: 397, column: 3, scope: !620)
!620 = distinct !DILexicalBlock(scope: !587, file: !163, line: 396, column: 9)
!621 = distinct !{!621, !619}
!622 = !DILocalVariable(name: "__tmp", scope: !623, file: !163, line: 397, type: !176)
!623 = distinct !DILexicalBlock(scope: !620, file: !163, line: 397, column: 6)
!624 = !DILocation(line: 397, column: 17, scope: !623)
!625 = !DILocation(line: 397, column: 25, scope: !626)
!626 = !DILexicalBlockFile(scope: !623, file: !163, discriminator: 1)
!627 = !DILocation(line: 397, column: 30, scope: !626)
!628 = !DILocation(line: 397, column: 35, scope: !626)
!629 = !DILocation(line: 397, column: 17, scope: !626)
!630 = !DILocation(line: 397, column: 45, scope: !626)
!631 = distinct !{!631, !632}
!632 = !DILocation(line: 397, column: 45, scope: !623)
!633 = !DILocation(line: 397, column: 62, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !163, discriminator: 2)
!635 = distinct !DILexicalBlock(scope: !636, file: !163, line: 397, column: 54)
!636 = distinct !DILexicalBlock(scope: !623, file: !163, line: 397, column: 48)
!637 = !DILocation(line: 397, column: 109, scope: !634)
!638 = !DILocation(line: 397, column: 54, scope: !634)
!639 = !DILocation(line: 397, column: 117, scope: !634)
!640 = !DILocation(line: 397, column: 122, scope: !641)
!641 = !DILexicalBlockFile(scope: !635, file: !163, discriminator: 3)
!642 = !DILocation(line: 397, column: 144, scope: !643)
!643 = !DILexicalBlockFile(scope: !636, file: !163, discriminator: 4)
!644 = !DILocation(line: 397, column: 156, scope: !645)
!645 = !DILexicalBlockFile(scope: !623, file: !163, discriminator: 5)
!646 = !DILocation(line: 398, column: 3, scope: !620)
!647 = distinct !{!647, !646}
!648 = !DILocation(line: 398, column: 20, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !163, discriminator: 1)
!650 = distinct !DILexicalBlock(scope: !651, file: !163, line: 398, column: 12)
!651 = distinct !DILexicalBlock(scope: !620, file: !163, line: 398, column: 6)
!652 = !DILocation(line: 398, column: 69, scope: !649)
!653 = !DILocation(line: 398, column: 74, scope: !649)
!654 = !DILocation(line: 398, column: 67, scope: !649)
!655 = !DILocation(line: 398, column: 12, scope: !649)
!656 = !DILocation(line: 398, column: 84, scope: !649)
!657 = !DILocation(line: 398, column: 89, scope: !658)
!658 = !DILexicalBlockFile(scope: !650, file: !163, discriminator: 2)
!659 = !DILocation(line: 398, column: 111, scope: !660)
!660 = !DILexicalBlockFile(scope: !651, file: !163, discriminator: 3)
!661 = !DILocation(line: 399, column: 3, scope: !620)
!662 = distinct !{!662, !661}
!663 = !DILocalVariable(name: "__tmp", scope: !664, file: !163, line: 399, type: !176)
!664 = distinct !DILexicalBlock(scope: !620, file: !163, line: 399, column: 6)
!665 = !DILocation(line: 399, column: 17, scope: !664)
!666 = !DILocation(line: 399, column: 25, scope: !667)
!667 = !DILexicalBlockFile(scope: !664, file: !163, discriminator: 1)
!668 = !DILocation(line: 399, column: 30, scope: !667)
!669 = !DILocation(line: 399, column: 35, scope: !667)
!670 = !DILocation(line: 399, column: 17, scope: !667)
!671 = !DILocation(line: 399, column: 41, scope: !667)
!672 = distinct !{!672, !673}
!673 = !DILocation(line: 399, column: 41, scope: !664)
!674 = !DILocation(line: 399, column: 58, scope: !675)
!675 = !DILexicalBlockFile(scope: !676, file: !163, discriminator: 2)
!676 = distinct !DILexicalBlock(scope: !677, file: !163, line: 399, column: 50)
!677 = distinct !DILexicalBlock(scope: !664, file: !163, line: 399, column: 44)
!678 = !DILocation(line: 399, column: 101, scope: !675)
!679 = !DILocation(line: 399, column: 50, scope: !675)
!680 = !DILocation(line: 399, column: 109, scope: !675)
!681 = !DILocation(line: 399, column: 114, scope: !682)
!682 = !DILexicalBlockFile(scope: !676, file: !163, discriminator: 3)
!683 = !DILocation(line: 399, column: 136, scope: !684)
!684 = !DILexicalBlockFile(scope: !677, file: !163, discriminator: 4)
!685 = !DILocation(line: 399, column: 148, scope: !686)
!686 = !DILexicalBlockFile(scope: !664, file: !163, discriminator: 5)
!687 = !DILocation(line: 402, column: 2, scope: !529)
!688 = distinct !{!688, !687}
!689 = !DILocation(line: 402, column: 19, scope: !690)
!690 = !DILexicalBlockFile(scope: !691, file: !163, discriminator: 1)
!691 = distinct !DILexicalBlock(scope: !692, file: !163, line: 402, column: 11)
!692 = distinct !DILexicalBlock(scope: !529, file: !163, line: 402, column: 5)
!693 = !DILocation(line: 402, column: 63, scope: !690)
!694 = !DILocation(line: 402, column: 68, scope: !690)
!695 = !DILocation(line: 402, column: 73, scope: !690)
!696 = !DILocation(line: 402, column: 56, scope: !690)
!697 = !DILocation(line: 402, column: 50, scope: !690)
!698 = !DILocation(line: 402, column: 85, scope: !690)
!699 = !DILocation(line: 402, column: 90, scope: !690)
!700 = !DILocation(line: 402, column: 95, scope: !690)
!701 = !DILocation(line: 402, column: 100, scope: !690)
!702 = !DILocation(line: 402, column: 11, scope: !703)
!703 = !DILexicalBlockFile(scope: !690, file: !163, discriminator: 4)
!704 = !DILocation(line: 402, column: 112, scope: !690)
!705 = !DILocation(line: 402, column: 11, scope: !690)
!706 = !DILocation(line: 402, column: 117, scope: !707)
!707 = !DILexicalBlockFile(scope: !691, file: !163, discriminator: 2)
!708 = !DILocation(line: 402, column: 139, scope: !709)
!709 = !DILexicalBlockFile(scope: !692, file: !163, discriminator: 3)
!710 = !DILocation(line: 404, column: 6, scope: !711)
!711 = distinct !DILexicalBlock(scope: !529, file: !163, line: 404, column: 6)
!712 = !DILocation(line: 404, column: 11, scope: !711)
!713 = !DILocation(line: 404, column: 6, scope: !529)
!714 = !DILocation(line: 405, column: 3, scope: !711)
!715 = distinct !{!715, !714}
!716 = !DILocation(line: 405, column: 20, scope: !717)
!717 = !DILexicalBlockFile(scope: !718, file: !163, discriminator: 1)
!718 = distinct !DILexicalBlock(scope: !719, file: !163, line: 405, column: 12)
!719 = distinct !DILexicalBlock(scope: !711, file: !163, line: 405, column: 6)
!720 = !DILocation(line: 405, column: 61, scope: !717)
!721 = !DILocation(line: 405, column: 66, scope: !717)
!722 = !DILocation(line: 405, column: 54, scope: !717)
!723 = !DILocation(line: 405, column: 48, scope: !717)
!724 = !DILocation(line: 405, column: 75, scope: !717)
!725 = !DILocation(line: 405, column: 80, scope: !717)
!726 = !DILocation(line: 405, column: 85, scope: !717)
!727 = !DILocation(line: 405, column: 12, scope: !728)
!728 = !DILexicalBlockFile(scope: !717, file: !163, discriminator: 5)
!729 = !DILocation(line: 405, column: 94, scope: !717)
!730 = !DILocation(line: 405, column: 12, scope: !717)
!731 = !DILocation(line: 405, column: 99, scope: !732)
!732 = !DILexicalBlockFile(scope: !718, file: !163, discriminator: 2)
!733 = !DILocation(line: 405, column: 121, scope: !734)
!734 = !DILexicalBlockFile(scope: !719, file: !163, discriminator: 3)
!735 = !DILocation(line: 405, column: 121, scope: !736)
!736 = !DILexicalBlockFile(scope: !719, file: !163, discriminator: 4)
!737 = !DILocation(line: 407, column: 2, scope: !529)
!738 = distinct !{!738, !737}
!739 = !DILocation(line: 407, column: 19, scope: !740)
!740 = !DILexicalBlockFile(scope: !741, file: !163, discriminator: 1)
!741 = distinct !DILexicalBlock(scope: !742, file: !163, line: 407, column: 11)
!742 = distinct !DILexicalBlock(scope: !529, file: !163, line: 407, column: 5)
!743 = !DILocation(line: 407, column: 60, scope: !740)
!744 = !DILocation(line: 407, column: 11, scope: !740)
!745 = !DILocation(line: 407, column: 68, scope: !740)
!746 = !DILocation(line: 407, column: 73, scope: !747)
!747 = !DILexicalBlockFile(scope: !741, file: !163, discriminator: 2)
!748 = !DILocation(line: 407, column: 95, scope: !749)
!749 = !DILexicalBlockFile(scope: !742, file: !163, discriminator: 3)
!750 = !DILocation(line: 408, column: 2, scope: !529)
!751 = distinct !{!751, !750}
!752 = !DILocalVariable(name: "__tmp", scope: !753, file: !163, line: 408, type: !157)
!753 = distinct !DILexicalBlock(scope: !529, file: !163, line: 408, column: 5)
!754 = !DILocation(line: 408, column: 16, scope: !753)
!755 = !DILocation(line: 408, column: 24, scope: !756)
!756 = !DILexicalBlockFile(scope: !753, file: !163, discriminator: 1)
!757 = !DILocation(line: 408, column: 29, scope: !756)
!758 = !DILocation(line: 408, column: 34, scope: !756)
!759 = !DILocation(line: 408, column: 16, scope: !756)
!760 = !DILocation(line: 408, column: 43, scope: !756)
!761 = distinct !{!761, !762}
!762 = !DILocation(line: 408, column: 43, scope: !753)
!763 = !DILocation(line: 408, column: 60, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !163, discriminator: 2)
!765 = distinct !DILexicalBlock(scope: !766, file: !163, line: 408, column: 52)
!766 = distinct !DILexicalBlock(scope: !753, file: !163, line: 408, column: 46)
!767 = !DILocation(line: 408, column: 106, scope: !764)
!768 = !DILocation(line: 408, column: 52, scope: !764)
!769 = !DILocation(line: 408, column: 114, scope: !764)
!770 = !DILocation(line: 408, column: 119, scope: !771)
!771 = !DILexicalBlockFile(scope: !765, file: !163, discriminator: 3)
!772 = !DILocation(line: 408, column: 141, scope: !773)
!773 = !DILexicalBlockFile(scope: !766, file: !163, discriminator: 4)
!774 = !DILocation(line: 408, column: 153, scope: !775)
!775 = !DILexicalBlockFile(scope: !753, file: !163, discriminator: 5)
!776 = !DILocation(line: 409, column: 2, scope: !529)
!777 = distinct !{!777, !776}
!778 = !DILocalVariable(name: "__tmp", scope: !779, file: !163, line: 409, type: !157)
!779 = distinct !DILexicalBlock(scope: !529, file: !163, line: 409, column: 5)
!780 = !DILocation(line: 409, column: 16, scope: !779)
!781 = !DILocation(line: 409, column: 24, scope: !782)
!782 = !DILexicalBlockFile(scope: !779, file: !163, discriminator: 1)
!783 = !DILocation(line: 409, column: 29, scope: !782)
!784 = !DILocation(line: 409, column: 34, scope: !782)
!785 = !DILocation(line: 409, column: 16, scope: !782)
!786 = !DILocation(line: 409, column: 43, scope: !782)
!787 = distinct !{!787, !788}
!788 = !DILocation(line: 409, column: 43, scope: !779)
!789 = !DILocation(line: 409, column: 60, scope: !790)
!790 = !DILexicalBlockFile(scope: !791, file: !163, discriminator: 2)
!791 = distinct !DILexicalBlock(scope: !792, file: !163, line: 409, column: 52)
!792 = distinct !DILexicalBlock(scope: !779, file: !163, line: 409, column: 46)
!793 = !DILocation(line: 409, column: 106, scope: !790)
!794 = !DILocation(line: 409, column: 52, scope: !790)
!795 = !DILocation(line: 409, column: 114, scope: !790)
!796 = !DILocation(line: 409, column: 119, scope: !797)
!797 = !DILexicalBlockFile(scope: !791, file: !163, discriminator: 3)
!798 = !DILocation(line: 409, column: 141, scope: !799)
!799 = !DILexicalBlockFile(scope: !792, file: !163, discriminator: 4)
!800 = !DILocation(line: 409, column: 153, scope: !801)
!801 = !DILexicalBlockFile(scope: !779, file: !163, discriminator: 5)
!802 = !DILocation(line: 411, column: 15, scope: !529)
!803 = !DILocation(line: 411, column: 20, scope: !529)
!804 = !DILocation(line: 411, column: 2, scope: !529)
!805 = !DILocation(line: 412, column: 2, scope: !529)
!806 = !DILocation(line: 415, column: 2, scope: !529)
!807 = !DILocation(line: 416, column: 1, scope: !529)
!808 = distinct !DISubprogram(name: "ipvs_update_service", scope: !163, file: !163, line: 442, type: !407, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!809 = !DILocalVariable(name: "svc", arg: 1, scope: !808, file: !163, line: 442, type: !409)
!810 = !DILocation(line: 442, column: 41, scope: !808)
!811 = !DILocation(line: 444, column: 12, scope: !808)
!812 = !DILocation(line: 446, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !163, line: 446, column: 6)
!814 = !DILocation(line: 446, column: 6, scope: !808)
!815 = !DILocalVariable(name: "msg", scope: !816, file: !163, line: 447, type: !237)
!816 = distinct !DILexicalBlock(scope: !813, file: !163, line: 446, column: 14)
!817 = !DILocation(line: 447, column: 18, scope: !816)
!818 = !DILocation(line: 447, column: 24, scope: !816)
!819 = !DILocation(line: 448, column: 8, scope: !820)
!820 = distinct !DILexicalBlock(scope: !816, file: !163, line: 448, column: 7)
!821 = !DILocation(line: 448, column: 7, scope: !816)
!822 = !DILocation(line: 448, column: 13, scope: !823)
!823 = !DILexicalBlockFile(scope: !820, file: !163, discriminator: 1)
!824 = !DILocation(line: 449, column: 33, scope: !825)
!825 = distinct !DILexicalBlock(scope: !816, file: !163, line: 449, column: 7)
!826 = !DILocation(line: 449, column: 38, scope: !825)
!827 = !DILocation(line: 449, column: 7, scope: !825)
!828 = !DILocation(line: 449, column: 7, scope: !816)
!829 = !DILocation(line: 450, column: 15, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !163, line: 449, column: 44)
!831 = !DILocation(line: 450, column: 4, scope: !830)
!832 = !DILocation(line: 451, column: 4, scope: !830)
!833 = !DILocation(line: 453, column: 31, scope: !816)
!834 = !DILocation(line: 453, column: 10, scope: !816)
!835 = !DILocation(line: 453, column: 3, scope: !816)
!836 = !DILocation(line: 456, column: 6, scope: !837)
!837 = distinct !DILexicalBlock(scope: !808, file: !163, line: 456, column: 6)
!838 = !DILocation(line: 456, column: 11, scope: !837)
!839 = !DILocation(line: 456, column: 14, scope: !837)
!840 = !DILocation(line: 456, column: 17, scope: !841)
!841 = !DILexicalBlockFile(scope: !837, file: !163, discriminator: 1)
!842 = !DILocation(line: 456, column: 22, scope: !841)
!843 = !DILocation(line: 456, column: 25, scope: !841)
!844 = !DILocation(line: 456, column: 6, scope: !841)
!845 = !DILocation(line: 456, column: 3, scope: !846)
!846 = !DILexicalBlockFile(scope: !847, file: !163, discriminator: 2)
!847 = distinct !DILexicalBlock(scope: !837, file: !163, line: 456, column: 3)
!848 = !DILocation(line: 456, column: 1, scope: !846)
!849 = !DILocation(line: 456, column: 36, scope: !850)
!850 = !DILexicalBlockFile(scope: !808, file: !163, discriminator: 3)
!851 = !DILocation(line: 456, column: 41, scope: !850)
!852 = !DILocation(line: 456, column: 49, scope: !850)
!853 = !DILocation(line: 456, column: 19, scope: !850)
!854 = !DILocation(line: 456, column: 24, scope: !850)
!855 = !DILocation(line: 456, column: 29, scope: !850)
!856 = !DILocation(line: 456, column: 34, scope: !850)
!857 = !DILocation(line: 456, column: 58, scope: !850)
!858 = !DILocation(line: 456, column: 63, scope: !850)
!859 = !DILocation(line: 456, column: 3, scope: !860)
!860 = !DILexicalBlockFile(scope: !861, file: !163, discriminator: 4)
!861 = distinct !DILexicalBlock(scope: !862, file: !163, line: 456, column: 75)
!862 = distinct !DILexicalBlock(scope: !808, file: !163, line: 456, column: 58)
!863 = !DILocation(line: 456, column: 1, scope: !860)
!864 = !DILocation(line: 457, column: 20, scope: !808)
!865 = !DILocation(line: 457, column: 66, scope: !808)
!866 = !DILocation(line: 457, column: 58, scope: !808)
!867 = !DILocation(line: 457, column: 9, scope: !808)
!868 = !DILocation(line: 457, column: 2, scope: !808)
!869 = !DILocation(line: 460, column: 2, scope: !808)
!870 = !DILocation(line: 461, column: 1, scope: !808)
!871 = distinct !DISubprogram(name: "ipvs_del_service", scope: !163, file: !163, line: 464, type: !407, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!872 = !DILocalVariable(name: "svc", arg: 1, scope: !871, file: !163, line: 464, type: !409)
!873 = !DILocation(line: 464, column: 38, scope: !871)
!874 = !DILocation(line: 466, column: 12, scope: !871)
!875 = !DILocation(line: 468, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !163, line: 468, column: 6)
!877 = !DILocation(line: 468, column: 6, scope: !871)
!878 = !DILocalVariable(name: "msg", scope: !879, file: !163, line: 469, type: !237)
!879 = distinct !DILexicalBlock(scope: !876, file: !163, line: 468, column: 14)
!880 = !DILocation(line: 469, column: 18, scope: !879)
!881 = !DILocation(line: 469, column: 24, scope: !879)
!882 = !DILocation(line: 470, column: 8, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !163, line: 470, column: 7)
!884 = !DILocation(line: 470, column: 7, scope: !879)
!885 = !DILocation(line: 470, column: 13, scope: !886)
!886 = !DILexicalBlockFile(scope: !883, file: !163, discriminator: 1)
!887 = !DILocation(line: 471, column: 33, scope: !888)
!888 = distinct !DILexicalBlock(scope: !879, file: !163, line: 471, column: 7)
!889 = !DILocation(line: 471, column: 38, scope: !888)
!890 = !DILocation(line: 471, column: 7, scope: !888)
!891 = !DILocation(line: 471, column: 7, scope: !879)
!892 = !DILocation(line: 472, column: 15, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !163, line: 471, column: 44)
!894 = !DILocation(line: 472, column: 4, scope: !893)
!895 = !DILocation(line: 473, column: 4, scope: !893)
!896 = !DILocation(line: 475, column: 31, scope: !879)
!897 = !DILocation(line: 475, column: 10, scope: !879)
!898 = !DILocation(line: 475, column: 3, scope: !879)
!899 = !DILocation(line: 478, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !871, file: !163, line: 478, column: 6)
!901 = !DILocation(line: 478, column: 11, scope: !900)
!902 = !DILocation(line: 478, column: 14, scope: !900)
!903 = !DILocation(line: 478, column: 17, scope: !904)
!904 = !DILexicalBlockFile(scope: !900, file: !163, discriminator: 1)
!905 = !DILocation(line: 478, column: 22, scope: !904)
!906 = !DILocation(line: 478, column: 25, scope: !904)
!907 = !DILocation(line: 478, column: 6, scope: !904)
!908 = !DILocation(line: 478, column: 3, scope: !909)
!909 = !DILexicalBlockFile(scope: !910, file: !163, discriminator: 2)
!910 = distinct !DILexicalBlock(scope: !900, file: !163, line: 478, column: 3)
!911 = !DILocation(line: 478, column: 1, scope: !909)
!912 = !DILocation(line: 478, column: 36, scope: !913)
!913 = !DILexicalBlockFile(scope: !871, file: !163, discriminator: 3)
!914 = !DILocation(line: 478, column: 41, scope: !913)
!915 = !DILocation(line: 478, column: 49, scope: !913)
!916 = !DILocation(line: 478, column: 19, scope: !913)
!917 = !DILocation(line: 478, column: 24, scope: !913)
!918 = !DILocation(line: 478, column: 29, scope: !913)
!919 = !DILocation(line: 478, column: 34, scope: !913)
!920 = !DILocation(line: 478, column: 58, scope: !913)
!921 = !DILocation(line: 478, column: 63, scope: !913)
!922 = !DILocation(line: 478, column: 3, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !163, discriminator: 4)
!924 = distinct !DILexicalBlock(scope: !925, file: !163, line: 478, column: 75)
!925 = distinct !DILexicalBlock(scope: !871, file: !163, line: 478, column: 58)
!926 = !DILocation(line: 478, column: 1, scope: !923)
!927 = !DILocation(line: 479, column: 20, scope: !871)
!928 = !DILocation(line: 479, column: 65, scope: !871)
!929 = !DILocation(line: 479, column: 57, scope: !871)
!930 = !DILocation(line: 479, column: 9, scope: !871)
!931 = !DILocation(line: 479, column: 2, scope: !871)
!932 = !DILocation(line: 482, column: 2, scope: !871)
!933 = !DILocation(line: 483, column: 1, scope: !871)
!934 = distinct !DISubprogram(name: "ipvs_zero_service", scope: !163, file: !163, line: 486, type: !407, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!935 = !DILocalVariable(name: "svc", arg: 1, scope: !934, file: !163, line: 486, type: !409)
!936 = !DILocation(line: 486, column: 39, scope: !934)
!937 = !DILocation(line: 488, column: 12, scope: !934)
!938 = !DILocation(line: 490, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !163, line: 490, column: 6)
!940 = !DILocation(line: 490, column: 6, scope: !934)
!941 = !DILocalVariable(name: "msg", scope: !942, file: !163, line: 491, type: !237)
!942 = distinct !DILexicalBlock(scope: !939, file: !163, line: 490, column: 14)
!943 = !DILocation(line: 491, column: 18, scope: !942)
!944 = !DILocation(line: 491, column: 24, scope: !942)
!945 = !DILocation(line: 492, column: 8, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !163, line: 492, column: 7)
!947 = !DILocation(line: 492, column: 7, scope: !942)
!948 = !DILocation(line: 492, column: 13, scope: !949)
!949 = !DILexicalBlockFile(scope: !946, file: !163, discriminator: 1)
!950 = !DILocation(line: 494, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !942, file: !163, line: 494, column: 7)
!952 = !DILocation(line: 494, column: 12, scope: !951)
!953 = !DILocation(line: 494, column: 17, scope: !951)
!954 = !DILocation(line: 495, column: 7, scope: !951)
!955 = !DILocation(line: 495, column: 32, scope: !956)
!956 = !DILexicalBlockFile(scope: !951, file: !163, discriminator: 1)
!957 = !DILocation(line: 495, column: 37, scope: !956)
!958 = !DILocation(line: 495, column: 45, scope: !956)
!959 = !DILocation(line: 495, column: 31, scope: !956)
!960 = !DILocation(line: 495, column: 10, scope: !956)
!961 = !DILocation(line: 496, column: 7, scope: !951)
!962 = !DILocation(line: 496, column: 10, scope: !956)
!963 = !DILocation(line: 496, column: 15, scope: !956)
!964 = !DILocation(line: 496, column: 20, scope: !956)
!965 = !DILocation(line: 494, column: 7, scope: !966)
!966 = !DILexicalBlockFile(scope: !942, file: !163, discriminator: 1)
!967 = !DILocation(line: 497, column: 34, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !163, line: 497, column: 8)
!969 = distinct !DILexicalBlock(scope: !951, file: !163, line: 496, column: 26)
!970 = !DILocation(line: 497, column: 39, scope: !968)
!971 = !DILocation(line: 497, column: 8, scope: !968)
!972 = !DILocation(line: 497, column: 8, scope: !969)
!973 = !DILocation(line: 498, column: 16, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !163, line: 497, column: 45)
!975 = !DILocation(line: 498, column: 5, scope: !974)
!976 = !DILocation(line: 499, column: 5, scope: !974)
!977 = !DILocation(line: 501, column: 3, scope: !969)
!978 = !DILocation(line: 502, column: 31, scope: !942)
!979 = !DILocation(line: 502, column: 10, scope: !942)
!980 = !DILocation(line: 502, column: 3, scope: !942)
!981 = !DILocation(line: 505, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !934, file: !163, line: 505, column: 6)
!983 = !DILocation(line: 505, column: 11, scope: !982)
!984 = !DILocation(line: 505, column: 14, scope: !982)
!985 = !DILocation(line: 505, column: 17, scope: !986)
!986 = !DILexicalBlockFile(scope: !982, file: !163, discriminator: 1)
!987 = !DILocation(line: 505, column: 22, scope: !986)
!988 = !DILocation(line: 505, column: 25, scope: !986)
!989 = !DILocation(line: 505, column: 6, scope: !986)
!990 = !DILocation(line: 505, column: 3, scope: !991)
!991 = !DILexicalBlockFile(scope: !992, file: !163, discriminator: 2)
!992 = distinct !DILexicalBlock(scope: !982, file: !163, line: 505, column: 3)
!993 = !DILocation(line: 505, column: 1, scope: !991)
!994 = !DILocation(line: 505, column: 36, scope: !995)
!995 = !DILexicalBlockFile(scope: !934, file: !163, discriminator: 3)
!996 = !DILocation(line: 505, column: 41, scope: !995)
!997 = !DILocation(line: 505, column: 49, scope: !995)
!998 = !DILocation(line: 505, column: 19, scope: !995)
!999 = !DILocation(line: 505, column: 24, scope: !995)
!1000 = !DILocation(line: 505, column: 29, scope: !995)
!1001 = !DILocation(line: 505, column: 34, scope: !995)
!1002 = !DILocation(line: 505, column: 58, scope: !995)
!1003 = !DILocation(line: 505, column: 63, scope: !995)
!1004 = !DILocation(line: 505, column: 3, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !163, discriminator: 4)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !163, line: 505, column: 75)
!1007 = distinct !DILexicalBlock(scope: !934, file: !163, line: 505, column: 58)
!1008 = !DILocation(line: 505, column: 1, scope: !1005)
!1009 = !DILocation(line: 506, column: 20, scope: !934)
!1010 = !DILocation(line: 506, column: 66, scope: !934)
!1011 = !DILocation(line: 506, column: 58, scope: !934)
!1012 = !DILocation(line: 506, column: 9, scope: !934)
!1013 = !DILocation(line: 506, column: 2, scope: !934)
!1014 = !DILocation(line: 509, column: 2, scope: !934)
!1015 = !DILocation(line: 510, column: 1, scope: !934)
!1016 = distinct !DISubprogram(name: "ipvs_add_dest", scope: !163, file: !163, line: 539, type: !1017, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!160, !409, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_dest_t", file: !411, line: 29, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_dest_app", file: !413, line: 53, size: 352, align: 32, elements: !1022)
!1022 = !{!1023, !1032, !1033}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1021, file: !413, line: 54, baseType: !1024, size: 192, align: 32)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_dest_user", file: !45, line: 145, size: 192, align: 32, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1024, file: !45, line: 147, baseType: !422, size: 32, align: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1024, file: !45, line: 148, baseType: !426, size: 16, align: 16, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "conn_flags", scope: !1024, file: !45, line: 151, baseType: !159, size: 32, align: 32, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1024, file: !45, line: 152, baseType: !160, size: 32, align: 32, offset: 96)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !1024, file: !45, line: 155, baseType: !424, size: 32, align: 32, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !1024, file: !45, line: 156, baseType: !424, size: 32, align: 32, offset: 160)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1021, file: !413, line: 55, baseType: !176, size: 16, align: 16, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nf_addr", scope: !1021, file: !413, line: 56, baseType: !437, size: 128, align: 32, offset: 224)
!1034 = !DILocalVariable(name: "svc", arg: 1, scope: !1016, file: !163, line: 539, type: !409)
!1035 = !DILocation(line: 539, column: 35, scope: !1016)
!1036 = !DILocalVariable(name: "dest", arg: 2, scope: !1016, file: !163, line: 539, type: !1019)
!1037 = !DILocation(line: 539, column: 53, scope: !1016)
!1038 = !DILocalVariable(name: "svcdest", scope: !1016, file: !163, line: 541, type: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_servicedest_t", file: !163, line: 59, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipvs_servicedest_s", file: !163, line: 56, size: 544, align: 32, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !1040, file: !163, line: 57, baseType: !416, size: 352, align: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1040, file: !163, line: 58, baseType: !1024, size: 192, align: 32, offset: 352)
!1044 = !DILocation(line: 541, column: 21, scope: !1016)
!1045 = !DILocation(line: 543, column: 12, scope: !1016)
!1046 = !DILocation(line: 546, column: 6, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1016, file: !163, line: 546, column: 6)
!1048 = !DILocation(line: 546, column: 6, scope: !1016)
!1049 = !DILocalVariable(name: "msg", scope: !1050, file: !163, line: 547, type: !237)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !163, line: 546, column: 14)
!1051 = !DILocation(line: 547, column: 18, scope: !1050)
!1052 = !DILocation(line: 547, column: 24, scope: !1050)
!1053 = !DILocation(line: 548, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !163, line: 548, column: 7)
!1055 = !DILocation(line: 548, column: 7, scope: !1050)
!1056 = !DILocation(line: 548, column: 13, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1054, file: !163, discriminator: 1)
!1058 = !DILocation(line: 549, column: 33, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !163, line: 549, column: 7)
!1060 = !DILocation(line: 549, column: 38, scope: !1059)
!1061 = !DILocation(line: 549, column: 7, scope: !1059)
!1062 = !DILocation(line: 549, column: 7, scope: !1050)
!1063 = !DILocation(line: 550, column: 4, scope: !1059)
!1064 = !DILocation(line: 551, column: 30, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1050, file: !163, line: 551, column: 7)
!1066 = !DILocation(line: 551, column: 35, scope: !1065)
!1067 = !DILocation(line: 551, column: 7, scope: !1065)
!1068 = !DILocation(line: 551, column: 7, scope: !1050)
!1069 = !DILocation(line: 552, column: 4, scope: !1065)
!1070 = !DILocation(line: 553, column: 31, scope: !1050)
!1071 = !DILocation(line: 553, column: 10, scope: !1050)
!1072 = !DILocation(line: 553, column: 3, scope: !1050)
!1073 = !DILocation(line: 556, column: 14, scope: !1050)
!1074 = !DILocation(line: 556, column: 3, scope: !1050)
!1075 = !DILocation(line: 557, column: 3, scope: !1050)
!1076 = !DILocation(line: 561, column: 6, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1016, file: !163, line: 561, column: 6)
!1078 = !DILocation(line: 561, column: 11, scope: !1077)
!1079 = !DILocation(line: 561, column: 14, scope: !1077)
!1080 = !DILocation(line: 561, column: 17, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1077, file: !163, discriminator: 1)
!1082 = !DILocation(line: 561, column: 22, scope: !1081)
!1083 = !DILocation(line: 561, column: 25, scope: !1081)
!1084 = !DILocation(line: 561, column: 6, scope: !1081)
!1085 = !DILocation(line: 561, column: 3, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1087, file: !163, discriminator: 2)
!1087 = distinct !DILexicalBlock(scope: !1077, file: !163, line: 561, column: 3)
!1088 = !DILocation(line: 561, column: 1, scope: !1086)
!1089 = !DILocation(line: 561, column: 36, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1016, file: !163, discriminator: 3)
!1091 = !DILocation(line: 561, column: 41, scope: !1090)
!1092 = !DILocation(line: 561, column: 49, scope: !1090)
!1093 = !DILocation(line: 561, column: 19, scope: !1090)
!1094 = !DILocation(line: 561, column: 24, scope: !1090)
!1095 = !DILocation(line: 561, column: 29, scope: !1090)
!1096 = !DILocation(line: 561, column: 34, scope: !1090)
!1097 = !DILocation(line: 561, column: 58, scope: !1090)
!1098 = !DILocation(line: 561, column: 63, scope: !1090)
!1099 = !DILocation(line: 561, column: 3, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1101, file: !163, discriminator: 4)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !163, line: 561, column: 75)
!1102 = distinct !DILexicalBlock(scope: !1016, file: !163, line: 561, column: 58)
!1103 = !DILocation(line: 561, column: 1, scope: !1100)
!1104 = !DILocation(line: 562, column: 6, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1016, file: !163, line: 562, column: 6)
!1106 = !DILocation(line: 562, column: 12, scope: !1105)
!1107 = !DILocation(line: 562, column: 15, scope: !1105)
!1108 = !DILocation(line: 562, column: 18, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1105, file: !163, discriminator: 1)
!1110 = !DILocation(line: 562, column: 24, scope: !1109)
!1111 = !DILocation(line: 562, column: 27, scope: !1109)
!1112 = !DILocation(line: 562, column: 6, scope: !1109)
!1113 = !DILocation(line: 562, column: 3, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1115, file: !163, discriminator: 2)
!1115 = distinct !DILexicalBlock(scope: !1105, file: !163, line: 562, column: 3)
!1116 = !DILocation(line: 562, column: 1, scope: !1114)
!1117 = !DILocation(line: 562, column: 37, scope: !1090)
!1118 = !DILocation(line: 562, column: 43, scope: !1090)
!1119 = !DILocation(line: 562, column: 51, scope: !1090)
!1120 = !DILocation(line: 562, column: 19, scope: !1090)
!1121 = !DILocation(line: 562, column: 25, scope: !1090)
!1122 = !DILocation(line: 562, column: 30, scope: !1090)
!1123 = !DILocation(line: 562, column: 35, scope: !1090)
!1124 = !DILocation(line: 563, column: 18, scope: !1016)
!1125 = !DILocation(line: 563, column: 2, scope: !1016)
!1126 = !DILocation(line: 563, column: 23, scope: !1016)
!1127 = !DILocation(line: 564, column: 18, scope: !1016)
!1128 = !DILocation(line: 564, column: 2, scope: !1016)
!1129 = !DILocation(line: 564, column: 24, scope: !1016)
!1130 = !DILocation(line: 565, column: 20, scope: !1016)
!1131 = !DILocation(line: 566, column: 6, scope: !1016)
!1132 = !DILocation(line: 565, column: 9, scope: !1016)
!1133 = !DILocation(line: 565, column: 2, scope: !1016)
!1134 = !DILocation(line: 568, column: 2, scope: !1016)
!1135 = !DILocation(line: 569, column: 1, scope: !1016)
!1136 = distinct !DISubprogram(name: "ipvs_nl_fill_dest_attr", scope: !163, file: !163, line: 513, type: !1137, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!160, !237, !1019}
!1139 = !DILocalVariable(name: "msg", arg: 1, scope: !1136, file: !163, line: 513, type: !237)
!1140 = !DILocation(line: 513, column: 50, scope: !1136)
!1141 = !DILocalVariable(name: "dst", arg: 2, scope: !1136, file: !163, line: 513, type: !1019)
!1142 = !DILocation(line: 513, column: 68, scope: !1136)
!1143 = !DILocalVariable(name: "nl_dest", scope: !1136, file: !163, line: 515, type: !537)
!1144 = !DILocation(line: 515, column: 17, scope: !1136)
!1145 = !DILocation(line: 517, column: 27, scope: !1136)
!1146 = !DILocation(line: 517, column: 12, scope: !1136)
!1147 = !DILocation(line: 517, column: 10, scope: !1136)
!1148 = !DILocation(line: 518, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 518, column: 6)
!1150 = !DILocation(line: 518, column: 6, scope: !1136)
!1151 = !DILocation(line: 519, column: 3, scope: !1149)
!1152 = !DILocation(line: 522, column: 2, scope: !1136)
!1153 = distinct !{!1153, !1152}
!1154 = !DILocalVariable(name: "__tmp", scope: !1155, file: !163, line: 522, type: !176)
!1155 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 522, column: 5)
!1156 = !DILocation(line: 522, column: 16, scope: !1155)
!1157 = !DILocation(line: 522, column: 24, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1155, file: !163, discriminator: 1)
!1159 = !DILocation(line: 522, column: 29, scope: !1158)
!1160 = !DILocation(line: 522, column: 16, scope: !1158)
!1161 = !DILocation(line: 522, column: 33, scope: !1158)
!1162 = distinct !{!1162, !1163}
!1163 = !DILocation(line: 522, column: 33, scope: !1155)
!1164 = !DILocation(line: 522, column: 50, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !163, discriminator: 2)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !163, line: 522, column: 42)
!1167 = distinct !DILexicalBlock(scope: !1155, file: !163, line: 522, column: 36)
!1168 = !DILocation(line: 522, column: 101, scope: !1165)
!1169 = !DILocation(line: 522, column: 42, scope: !1165)
!1170 = !DILocation(line: 522, column: 109, scope: !1165)
!1171 = !DILocation(line: 522, column: 114, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1166, file: !163, discriminator: 3)
!1173 = !DILocation(line: 522, column: 136, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1167, file: !163, discriminator: 4)
!1175 = !DILocation(line: 522, column: 148, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1155, file: !163, discriminator: 5)
!1177 = !DILocation(line: 524, column: 2, scope: !1136)
!1178 = distinct !{!1178, !1177}
!1179 = !DILocation(line: 524, column: 19, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1181, file: !163, discriminator: 1)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !163, line: 524, column: 11)
!1182 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 524, column: 5)
!1183 = !DILocation(line: 524, column: 69, scope: !1180)
!1184 = !DILocation(line: 524, column: 74, scope: !1180)
!1185 = !DILocation(line: 524, column: 67, scope: !1180)
!1186 = !DILocation(line: 524, column: 11, scope: !1180)
!1187 = !DILocation(line: 524, column: 84, scope: !1180)
!1188 = !DILocation(line: 524, column: 89, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1181, file: !163, discriminator: 2)
!1190 = !DILocation(line: 524, column: 111, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1182, file: !163, discriminator: 3)
!1192 = !DILocation(line: 525, column: 2, scope: !1136)
!1193 = distinct !{!1193, !1192}
!1194 = !DILocalVariable(name: "__tmp", scope: !1195, file: !163, line: 525, type: !176)
!1195 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 525, column: 5)
!1196 = !DILocation(line: 525, column: 16, scope: !1195)
!1197 = !DILocation(line: 525, column: 24, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1195, file: !163, discriminator: 1)
!1199 = !DILocation(line: 525, column: 29, scope: !1198)
!1200 = !DILocation(line: 525, column: 34, scope: !1198)
!1201 = !DILocation(line: 525, column: 16, scope: !1198)
!1202 = !DILocation(line: 525, column: 40, scope: !1198)
!1203 = distinct !{!1203, !1204}
!1204 = !DILocation(line: 525, column: 40, scope: !1195)
!1205 = !DILocation(line: 525, column: 57, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !163, discriminator: 2)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !163, line: 525, column: 49)
!1208 = distinct !DILexicalBlock(scope: !1195, file: !163, line: 525, column: 43)
!1209 = !DILocation(line: 525, column: 101, scope: !1206)
!1210 = !DILocation(line: 525, column: 49, scope: !1206)
!1211 = !DILocation(line: 525, column: 109, scope: !1206)
!1212 = !DILocation(line: 525, column: 114, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1207, file: !163, discriminator: 3)
!1214 = !DILocation(line: 525, column: 136, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1208, file: !163, discriminator: 4)
!1216 = !DILocation(line: 525, column: 148, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1195, file: !163, discriminator: 5)
!1218 = !DILocation(line: 526, column: 2, scope: !1136)
!1219 = distinct !{!1219, !1218}
!1220 = !DILocalVariable(name: "__tmp", scope: !1221, file: !163, line: 526, type: !157)
!1221 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 526, column: 5)
!1222 = !DILocation(line: 526, column: 16, scope: !1221)
!1223 = !DILocation(line: 526, column: 24, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1221, file: !163, discriminator: 1)
!1225 = !DILocation(line: 526, column: 29, scope: !1224)
!1226 = !DILocation(line: 526, column: 34, scope: !1224)
!1227 = !DILocation(line: 526, column: 45, scope: !1224)
!1228 = !DILocation(line: 526, column: 16, scope: !1224)
!1229 = !DILocation(line: 526, column: 3, scope: !1224)
!1230 = distinct !{!1230, !1231}
!1231 = !DILocation(line: 526, column: 3, scope: !1221)
!1232 = !DILocation(line: 526, column: 20, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !163, discriminator: 2)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !163, line: 526, column: 12)
!1235 = distinct !DILexicalBlock(scope: !1221, file: !163, line: 526, column: 6)
!1236 = !DILocation(line: 526, column: 70, scope: !1233)
!1237 = !DILocation(line: 526, column: 12, scope: !1233)
!1238 = !DILocation(line: 526, column: 78, scope: !1233)
!1239 = !DILocation(line: 526, column: 83, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1234, file: !163, discriminator: 3)
!1241 = !DILocation(line: 526, column: 105, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1235, file: !163, discriminator: 4)
!1243 = !DILocation(line: 526, column: 117, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1221, file: !163, discriminator: 5)
!1245 = !DILocation(line: 527, column: 2, scope: !1136)
!1246 = distinct !{!1246, !1245}
!1247 = !DILocalVariable(name: "__tmp", scope: !1248, file: !163, line: 527, type: !157)
!1248 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 527, column: 5)
!1249 = !DILocation(line: 527, column: 16, scope: !1248)
!1250 = !DILocation(line: 527, column: 34, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1248, file: !163, discriminator: 1)
!1252 = !DILocation(line: 527, column: 39, scope: !1251)
!1253 = !DILocation(line: 527, column: 44, scope: !1251)
!1254 = !DILocation(line: 527, column: 16, scope: !1251)
!1255 = !DILocation(line: 527, column: 52, scope: !1251)
!1256 = distinct !{!1256, !1257}
!1257 = !DILocation(line: 527, column: 52, scope: !1248)
!1258 = !DILocation(line: 527, column: 69, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1260, file: !163, discriminator: 2)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !163, line: 527, column: 61)
!1261 = distinct !DILexicalBlock(scope: !1248, file: !163, line: 527, column: 55)
!1262 = !DILocation(line: 527, column: 115, scope: !1259)
!1263 = !DILocation(line: 527, column: 61, scope: !1259)
!1264 = !DILocation(line: 527, column: 123, scope: !1259)
!1265 = !DILocation(line: 527, column: 128, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1260, file: !163, discriminator: 3)
!1267 = !DILocation(line: 527, column: 150, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1261, file: !163, discriminator: 4)
!1269 = !DILocation(line: 527, column: 162, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1248, file: !163, discriminator: 5)
!1271 = !DILocation(line: 528, column: 2, scope: !1136)
!1272 = distinct !{!1272, !1271}
!1273 = !DILocalVariable(name: "__tmp", scope: !1274, file: !163, line: 528, type: !157)
!1274 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 528, column: 5)
!1275 = !DILocation(line: 528, column: 16, scope: !1274)
!1276 = !DILocation(line: 528, column: 24, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1274, file: !163, discriminator: 1)
!1278 = !DILocation(line: 528, column: 29, scope: !1277)
!1279 = !DILocation(line: 528, column: 34, scope: !1277)
!1280 = !DILocation(line: 528, column: 16, scope: !1277)
!1281 = !DILocation(line: 528, column: 47, scope: !1277)
!1282 = distinct !{!1282, !1283}
!1283 = !DILocation(line: 528, column: 47, scope: !1274)
!1284 = !DILocation(line: 528, column: 64, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !163, discriminator: 2)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !163, line: 528, column: 56)
!1287 = distinct !DILexicalBlock(scope: !1274, file: !163, line: 528, column: 50)
!1288 = !DILocation(line: 528, column: 112, scope: !1285)
!1289 = !DILocation(line: 528, column: 56, scope: !1285)
!1290 = !DILocation(line: 528, column: 120, scope: !1285)
!1291 = !DILocation(line: 528, column: 125, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1286, file: !163, discriminator: 3)
!1293 = !DILocation(line: 528, column: 147, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1287, file: !163, discriminator: 4)
!1295 = !DILocation(line: 528, column: 159, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1274, file: !163, discriminator: 5)
!1297 = !DILocation(line: 529, column: 2, scope: !1136)
!1298 = distinct !{!1298, !1297}
!1299 = !DILocalVariable(name: "__tmp", scope: !1300, file: !163, line: 529, type: !157)
!1300 = distinct !DILexicalBlock(scope: !1136, file: !163, line: 529, column: 5)
!1301 = !DILocation(line: 529, column: 16, scope: !1300)
!1302 = !DILocation(line: 529, column: 24, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1300, file: !163, discriminator: 1)
!1304 = !DILocation(line: 529, column: 29, scope: !1303)
!1305 = !DILocation(line: 529, column: 34, scope: !1303)
!1306 = !DILocation(line: 529, column: 16, scope: !1303)
!1307 = !DILocation(line: 529, column: 47, scope: !1303)
!1308 = distinct !{!1308, !1309}
!1309 = !DILocation(line: 529, column: 47, scope: !1300)
!1310 = !DILocation(line: 529, column: 64, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !163, discriminator: 2)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !163, line: 529, column: 56)
!1313 = distinct !DILexicalBlock(scope: !1300, file: !163, line: 529, column: 50)
!1314 = !DILocation(line: 529, column: 112, scope: !1311)
!1315 = !DILocation(line: 529, column: 56, scope: !1311)
!1316 = !DILocation(line: 529, column: 120, scope: !1311)
!1317 = !DILocation(line: 529, column: 125, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1312, file: !163, discriminator: 3)
!1319 = !DILocation(line: 529, column: 147, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1313, file: !163, discriminator: 4)
!1321 = !DILocation(line: 529, column: 159, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1300, file: !163, discriminator: 5)
!1323 = !DILocation(line: 531, column: 15, scope: !1136)
!1324 = !DILocation(line: 531, column: 20, scope: !1136)
!1325 = !DILocation(line: 531, column: 2, scope: !1136)
!1326 = !DILocation(line: 532, column: 2, scope: !1136)
!1327 = !DILocation(line: 535, column: 2, scope: !1136)
!1328 = !DILocation(line: 536, column: 1, scope: !1136)
!1329 = distinct !DISubprogram(name: "ipvs_update_dest", scope: !163, file: !163, line: 572, type: !1017, isLocal: false, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!1330 = !DILocalVariable(name: "svc", arg: 1, scope: !1329, file: !163, line: 572, type: !409)
!1331 = !DILocation(line: 572, column: 38, scope: !1329)
!1332 = !DILocalVariable(name: "dest", arg: 2, scope: !1329, file: !163, line: 572, type: !1019)
!1333 = !DILocation(line: 572, column: 56, scope: !1329)
!1334 = !DILocalVariable(name: "svcdest", scope: !1329, file: !163, line: 574, type: !1039)
!1335 = !DILocation(line: 574, column: 21, scope: !1329)
!1336 = !DILocation(line: 576, column: 12, scope: !1329)
!1337 = !DILocation(line: 578, column: 6, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1329, file: !163, line: 578, column: 6)
!1339 = !DILocation(line: 578, column: 6, scope: !1329)
!1340 = !DILocalVariable(name: "msg", scope: !1341, file: !163, line: 579, type: !237)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !163, line: 578, column: 14)
!1342 = !DILocation(line: 579, column: 18, scope: !1341)
!1343 = !DILocation(line: 579, column: 24, scope: !1341)
!1344 = !DILocation(line: 580, column: 8, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !163, line: 580, column: 7)
!1346 = !DILocation(line: 580, column: 7, scope: !1341)
!1347 = !DILocation(line: 580, column: 13, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1345, file: !163, discriminator: 1)
!1349 = !DILocation(line: 581, column: 33, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !163, line: 581, column: 7)
!1351 = !DILocation(line: 581, column: 38, scope: !1350)
!1352 = !DILocation(line: 581, column: 7, scope: !1350)
!1353 = !DILocation(line: 581, column: 7, scope: !1341)
!1354 = !DILocation(line: 582, column: 4, scope: !1350)
!1355 = !DILocation(line: 583, column: 30, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1341, file: !163, line: 583, column: 7)
!1357 = !DILocation(line: 583, column: 35, scope: !1356)
!1358 = !DILocation(line: 583, column: 7, scope: !1356)
!1359 = !DILocation(line: 583, column: 7, scope: !1341)
!1360 = !DILocation(line: 584, column: 4, scope: !1356)
!1361 = !DILocation(line: 585, column: 31, scope: !1341)
!1362 = !DILocation(line: 585, column: 10, scope: !1341)
!1363 = !DILocation(line: 585, column: 3, scope: !1341)
!1364 = !DILocation(line: 588, column: 14, scope: !1341)
!1365 = !DILocation(line: 588, column: 3, scope: !1341)
!1366 = !DILocation(line: 589, column: 3, scope: !1341)
!1367 = !DILocation(line: 592, column: 6, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1329, file: !163, line: 592, column: 6)
!1369 = !DILocation(line: 592, column: 11, scope: !1368)
!1370 = !DILocation(line: 592, column: 14, scope: !1368)
!1371 = !DILocation(line: 592, column: 17, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1368, file: !163, discriminator: 1)
!1373 = !DILocation(line: 592, column: 22, scope: !1372)
!1374 = !DILocation(line: 592, column: 25, scope: !1372)
!1375 = !DILocation(line: 592, column: 6, scope: !1372)
!1376 = !DILocation(line: 592, column: 3, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !163, discriminator: 2)
!1378 = distinct !DILexicalBlock(scope: !1368, file: !163, line: 592, column: 3)
!1379 = !DILocation(line: 592, column: 1, scope: !1377)
!1380 = !DILocation(line: 592, column: 36, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1329, file: !163, discriminator: 3)
!1382 = !DILocation(line: 592, column: 41, scope: !1381)
!1383 = !DILocation(line: 592, column: 49, scope: !1381)
!1384 = !DILocation(line: 592, column: 19, scope: !1381)
!1385 = !DILocation(line: 592, column: 24, scope: !1381)
!1386 = !DILocation(line: 592, column: 29, scope: !1381)
!1387 = !DILocation(line: 592, column: 34, scope: !1381)
!1388 = !DILocation(line: 592, column: 58, scope: !1381)
!1389 = !DILocation(line: 592, column: 63, scope: !1381)
!1390 = !DILocation(line: 592, column: 3, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !163, discriminator: 4)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !163, line: 592, column: 75)
!1393 = distinct !DILexicalBlock(scope: !1329, file: !163, line: 592, column: 58)
!1394 = !DILocation(line: 592, column: 1, scope: !1391)
!1395 = !DILocation(line: 593, column: 6, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1329, file: !163, line: 593, column: 6)
!1397 = !DILocation(line: 593, column: 12, scope: !1396)
!1398 = !DILocation(line: 593, column: 15, scope: !1396)
!1399 = !DILocation(line: 593, column: 18, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1396, file: !163, discriminator: 1)
!1401 = !DILocation(line: 593, column: 24, scope: !1400)
!1402 = !DILocation(line: 593, column: 27, scope: !1400)
!1403 = !DILocation(line: 593, column: 6, scope: !1400)
!1404 = !DILocation(line: 593, column: 3, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !163, discriminator: 2)
!1406 = distinct !DILexicalBlock(scope: !1396, file: !163, line: 593, column: 3)
!1407 = !DILocation(line: 593, column: 1, scope: !1405)
!1408 = !DILocation(line: 593, column: 37, scope: !1381)
!1409 = !DILocation(line: 593, column: 43, scope: !1381)
!1410 = !DILocation(line: 593, column: 51, scope: !1381)
!1411 = !DILocation(line: 593, column: 19, scope: !1381)
!1412 = !DILocation(line: 593, column: 25, scope: !1381)
!1413 = !DILocation(line: 593, column: 30, scope: !1381)
!1414 = !DILocation(line: 593, column: 35, scope: !1381)
!1415 = !DILocation(line: 594, column: 18, scope: !1329)
!1416 = !DILocation(line: 594, column: 2, scope: !1329)
!1417 = !DILocation(line: 594, column: 23, scope: !1329)
!1418 = !DILocation(line: 595, column: 18, scope: !1329)
!1419 = !DILocation(line: 595, column: 2, scope: !1329)
!1420 = !DILocation(line: 595, column: 24, scope: !1329)
!1421 = !DILocation(line: 596, column: 20, scope: !1329)
!1422 = !DILocation(line: 597, column: 6, scope: !1329)
!1423 = !DILocation(line: 596, column: 9, scope: !1329)
!1424 = !DILocation(line: 596, column: 2, scope: !1329)
!1425 = !DILocation(line: 599, column: 2, scope: !1329)
!1426 = !DILocation(line: 600, column: 1, scope: !1329)
!1427 = distinct !DISubprogram(name: "ipvs_del_dest", scope: !163, file: !163, line: 603, type: !1017, isLocal: false, isDefinition: true, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!1428 = !DILocalVariable(name: "svc", arg: 1, scope: !1427, file: !163, line: 603, type: !409)
!1429 = !DILocation(line: 603, column: 35, scope: !1427)
!1430 = !DILocalVariable(name: "dest", arg: 2, scope: !1427, file: !163, line: 603, type: !1019)
!1431 = !DILocation(line: 603, column: 53, scope: !1427)
!1432 = !DILocalVariable(name: "svcdest", scope: !1427, file: !163, line: 605, type: !1039)
!1433 = !DILocation(line: 605, column: 21, scope: !1427)
!1434 = !DILocation(line: 607, column: 12, scope: !1427)
!1435 = !DILocation(line: 609, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !163, line: 609, column: 6)
!1437 = !DILocation(line: 609, column: 6, scope: !1427)
!1438 = !DILocalVariable(name: "msg", scope: !1439, file: !163, line: 610, type: !237)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !163, line: 609, column: 14)
!1440 = !DILocation(line: 610, column: 18, scope: !1439)
!1441 = !DILocation(line: 610, column: 24, scope: !1439)
!1442 = !DILocation(line: 611, column: 8, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !163, line: 611, column: 7)
!1444 = !DILocation(line: 611, column: 7, scope: !1439)
!1445 = !DILocation(line: 611, column: 13, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1443, file: !163, discriminator: 1)
!1447 = !DILocation(line: 612, column: 33, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1439, file: !163, line: 612, column: 7)
!1449 = !DILocation(line: 612, column: 38, scope: !1448)
!1450 = !DILocation(line: 612, column: 7, scope: !1448)
!1451 = !DILocation(line: 612, column: 7, scope: !1439)
!1452 = !DILocation(line: 613, column: 4, scope: !1448)
!1453 = !DILocation(line: 614, column: 30, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1439, file: !163, line: 614, column: 7)
!1455 = !DILocation(line: 614, column: 35, scope: !1454)
!1456 = !DILocation(line: 614, column: 7, scope: !1454)
!1457 = !DILocation(line: 614, column: 7, scope: !1439)
!1458 = !DILocation(line: 615, column: 4, scope: !1454)
!1459 = !DILocation(line: 616, column: 31, scope: !1439)
!1460 = !DILocation(line: 616, column: 10, scope: !1439)
!1461 = !DILocation(line: 616, column: 3, scope: !1439)
!1462 = !DILocation(line: 619, column: 14, scope: !1439)
!1463 = !DILocation(line: 619, column: 3, scope: !1439)
!1464 = !DILocation(line: 620, column: 3, scope: !1439)
!1465 = !DILocation(line: 624, column: 6, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1427, file: !163, line: 624, column: 6)
!1467 = !DILocation(line: 624, column: 11, scope: !1466)
!1468 = !DILocation(line: 624, column: 14, scope: !1466)
!1469 = !DILocation(line: 624, column: 17, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1466, file: !163, discriminator: 1)
!1471 = !DILocation(line: 624, column: 22, scope: !1470)
!1472 = !DILocation(line: 624, column: 25, scope: !1470)
!1473 = !DILocation(line: 624, column: 6, scope: !1470)
!1474 = !DILocation(line: 624, column: 3, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1476, file: !163, discriminator: 2)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !163, line: 624, column: 3)
!1477 = !DILocation(line: 624, column: 1, scope: !1475)
!1478 = !DILocation(line: 624, column: 36, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1427, file: !163, discriminator: 3)
!1480 = !DILocation(line: 624, column: 41, scope: !1479)
!1481 = !DILocation(line: 624, column: 49, scope: !1479)
!1482 = !DILocation(line: 624, column: 19, scope: !1479)
!1483 = !DILocation(line: 624, column: 24, scope: !1479)
!1484 = !DILocation(line: 624, column: 29, scope: !1479)
!1485 = !DILocation(line: 624, column: 34, scope: !1479)
!1486 = !DILocation(line: 624, column: 58, scope: !1479)
!1487 = !DILocation(line: 624, column: 63, scope: !1479)
!1488 = !DILocation(line: 624, column: 3, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1490, file: !163, discriminator: 4)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !163, line: 624, column: 75)
!1491 = distinct !DILexicalBlock(scope: !1427, file: !163, line: 624, column: 58)
!1492 = !DILocation(line: 624, column: 1, scope: !1489)
!1493 = !DILocation(line: 625, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1427, file: !163, line: 625, column: 6)
!1495 = !DILocation(line: 625, column: 12, scope: !1494)
!1496 = !DILocation(line: 625, column: 15, scope: !1494)
!1497 = !DILocation(line: 625, column: 18, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1494, file: !163, discriminator: 1)
!1499 = !DILocation(line: 625, column: 24, scope: !1498)
!1500 = !DILocation(line: 625, column: 27, scope: !1498)
!1501 = !DILocation(line: 625, column: 6, scope: !1498)
!1502 = !DILocation(line: 625, column: 3, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1504, file: !163, discriminator: 2)
!1504 = distinct !DILexicalBlock(scope: !1494, file: !163, line: 625, column: 3)
!1505 = !DILocation(line: 625, column: 1, scope: !1503)
!1506 = !DILocation(line: 625, column: 37, scope: !1479)
!1507 = !DILocation(line: 625, column: 43, scope: !1479)
!1508 = !DILocation(line: 625, column: 51, scope: !1479)
!1509 = !DILocation(line: 625, column: 19, scope: !1479)
!1510 = !DILocation(line: 625, column: 25, scope: !1479)
!1511 = !DILocation(line: 625, column: 30, scope: !1479)
!1512 = !DILocation(line: 625, column: 35, scope: !1479)
!1513 = !DILocation(line: 626, column: 18, scope: !1427)
!1514 = !DILocation(line: 626, column: 2, scope: !1427)
!1515 = !DILocation(line: 626, column: 23, scope: !1427)
!1516 = !DILocation(line: 627, column: 18, scope: !1427)
!1517 = !DILocation(line: 627, column: 2, scope: !1427)
!1518 = !DILocation(line: 627, column: 24, scope: !1427)
!1519 = !DILocation(line: 628, column: 20, scope: !1427)
!1520 = !DILocation(line: 629, column: 6, scope: !1427)
!1521 = !DILocation(line: 628, column: 9, scope: !1427)
!1522 = !DILocation(line: 628, column: 2, scope: !1427)
!1523 = !DILocation(line: 631, column: 2, scope: !1427)
!1524 = !DILocation(line: 632, column: 1, scope: !1427)
!1525 = distinct !DISubprogram(name: "ipvs_set_timeout", scope: !163, file: !163, line: 635, type: !1526, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!160, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_timeout_t", file: !411, line: 30, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_timeout_user", file: !45, line: 258, size: 96, align: 32, elements: !1531)
!1531 = !{!1532, !1533, !1534}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_timeout", scope: !1530, file: !45, line: 259, baseType: !160, size: 32, align: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_fin_timeout", scope: !1530, file: !45, line: 260, baseType: !160, size: 32, align: 32, offset: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "udp_timeout", scope: !1530, file: !45, line: 261, baseType: !160, size: 32, align: 32, offset: 64)
!1535 = !DILocalVariable(name: "to", arg: 1, scope: !1525, file: !163, line: 635, type: !1528)
!1536 = !DILocation(line: 635, column: 38, scope: !1525)
!1537 = !DILocation(line: 637, column: 12, scope: !1525)
!1538 = !DILocation(line: 639, column: 6, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1525, file: !163, line: 639, column: 6)
!1540 = !DILocation(line: 639, column: 6, scope: !1525)
!1541 = !DILocalVariable(name: "msg", scope: !1542, file: !163, line: 640, type: !237)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !163, line: 639, column: 14)
!1543 = !DILocation(line: 640, column: 18, scope: !1542)
!1544 = !DILocation(line: 640, column: 24, scope: !1542)
!1545 = !DILocation(line: 641, column: 8, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !163, line: 641, column: 7)
!1547 = !DILocation(line: 641, column: 7, scope: !1542)
!1548 = !DILocation(line: 641, column: 13, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1546, file: !163, discriminator: 1)
!1550 = !DILocation(line: 643, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1542, file: !163, line: 643, column: 7)
!1552 = !DILocation(line: 643, column: 11, scope: !1551)
!1553 = !DILocation(line: 643, column: 7, scope: !1542)
!1554 = !DILocation(line: 644, column: 4, scope: !1551)
!1555 = distinct !{!1555, !1554}
!1556 = !DILocalVariable(name: "__tmp", scope: !1557, file: !163, line: 644, type: !157)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !163, line: 644, column: 7)
!1558 = !DILocation(line: 644, column: 18, scope: !1557)
!1559 = !DILocation(line: 644, column: 36, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1557, file: !163, discriminator: 1)
!1561 = !DILocation(line: 644, column: 40, scope: !1560)
!1562 = !DILocation(line: 644, column: 18, scope: !1560)
!1563 = !DILocation(line: 644, column: 53, scope: !1560)
!1564 = distinct !{!1564, !1565}
!1565 = !DILocation(line: 644, column: 53, scope: !1557)
!1566 = !DILocation(line: 644, column: 70, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !163, discriminator: 2)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !163, line: 644, column: 62)
!1569 = distinct !DILexicalBlock(scope: !1557, file: !163, line: 644, column: 56)
!1570 = !DILocation(line: 644, column: 120, scope: !1567)
!1571 = !DILocation(line: 644, column: 62, scope: !1567)
!1572 = !DILocation(line: 644, column: 128, scope: !1567)
!1573 = !DILocation(line: 644, column: 133, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1568, file: !163, discriminator: 3)
!1575 = !DILocation(line: 644, column: 155, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1569, file: !163, discriminator: 4)
!1577 = !DILocation(line: 644, column: 167, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1557, file: !163, discriminator: 5)
!1579 = !DILocation(line: 644, column: 167, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1557, file: !163, discriminator: 6)
!1581 = !DILocation(line: 645, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1542, file: !163, line: 645, column: 7)
!1583 = !DILocation(line: 645, column: 11, scope: !1582)
!1584 = !DILocation(line: 645, column: 7, scope: !1542)
!1585 = !DILocation(line: 646, column: 4, scope: !1582)
!1586 = distinct !{!1586, !1585}
!1587 = !DILocalVariable(name: "__tmp", scope: !1588, file: !163, line: 646, type: !157)
!1588 = distinct !DILexicalBlock(scope: !1582, file: !163, line: 646, column: 7)
!1589 = !DILocation(line: 646, column: 18, scope: !1588)
!1590 = !DILocation(line: 646, column: 36, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1588, file: !163, discriminator: 1)
!1592 = !DILocation(line: 646, column: 40, scope: !1591)
!1593 = !DILocation(line: 646, column: 18, scope: !1591)
!1594 = !DILocation(line: 646, column: 57, scope: !1591)
!1595 = distinct !{!1595, !1596}
!1596 = !DILocation(line: 646, column: 57, scope: !1588)
!1597 = !DILocation(line: 646, column: 74, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !163, discriminator: 2)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !163, line: 646, column: 66)
!1600 = distinct !DILexicalBlock(scope: !1588, file: !163, line: 646, column: 60)
!1601 = !DILocation(line: 646, column: 128, scope: !1598)
!1602 = !DILocation(line: 646, column: 66, scope: !1598)
!1603 = !DILocation(line: 646, column: 136, scope: !1598)
!1604 = !DILocation(line: 646, column: 141, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1599, file: !163, discriminator: 3)
!1606 = !DILocation(line: 646, column: 163, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1600, file: !163, discriminator: 4)
!1608 = !DILocation(line: 646, column: 175, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1588, file: !163, discriminator: 5)
!1610 = !DILocation(line: 646, column: 175, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1588, file: !163, discriminator: 6)
!1612 = !DILocation(line: 647, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1542, file: !163, line: 647, column: 7)
!1614 = !DILocation(line: 647, column: 11, scope: !1613)
!1615 = !DILocation(line: 647, column: 7, scope: !1542)
!1616 = !DILocation(line: 648, column: 4, scope: !1613)
!1617 = distinct !{!1617, !1616}
!1618 = !DILocalVariable(name: "__tmp", scope: !1619, file: !163, line: 648, type: !157)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !163, line: 648, column: 7)
!1620 = !DILocation(line: 648, column: 18, scope: !1619)
!1621 = !DILocation(line: 648, column: 36, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1619, file: !163, discriminator: 1)
!1623 = !DILocation(line: 648, column: 40, scope: !1622)
!1624 = !DILocation(line: 648, column: 18, scope: !1622)
!1625 = !DILocation(line: 648, column: 53, scope: !1622)
!1626 = distinct !{!1626, !1627}
!1627 = !DILocation(line: 648, column: 53, scope: !1619)
!1628 = !DILocation(line: 648, column: 70, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1630, file: !163, discriminator: 2)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !163, line: 648, column: 62)
!1631 = distinct !DILexicalBlock(scope: !1619, file: !163, line: 648, column: 56)
!1632 = !DILocation(line: 648, column: 120, scope: !1629)
!1633 = !DILocation(line: 648, column: 62, scope: !1629)
!1634 = !DILocation(line: 648, column: 128, scope: !1629)
!1635 = !DILocation(line: 648, column: 133, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1630, file: !163, discriminator: 3)
!1637 = !DILocation(line: 648, column: 155, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1631, file: !163, discriminator: 4)
!1639 = !DILocation(line: 648, column: 167, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1619, file: !163, discriminator: 5)
!1641 = !DILocation(line: 648, column: 167, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1619, file: !163, discriminator: 6)
!1643 = !DILocation(line: 649, column: 31, scope: !1542)
!1644 = !DILocation(line: 649, column: 10, scope: !1542)
!1645 = !DILocation(line: 649, column: 3, scope: !1542)
!1646 = !DILocation(line: 652, column: 14, scope: !1542)
!1647 = !DILocation(line: 652, column: 3, scope: !1542)
!1648 = !DILocation(line: 653, column: 3, scope: !1542)
!1649 = !DILocation(line: 656, column: 20, scope: !1525)
!1650 = !DILocation(line: 656, column: 69, scope: !1525)
!1651 = !DILocation(line: 656, column: 61, scope: !1525)
!1652 = !DILocation(line: 656, column: 9, scope: !1525)
!1653 = !DILocation(line: 656, column: 2, scope: !1525)
!1654 = !DILocation(line: 658, column: 1, scope: !1525)
!1655 = distinct !DISubprogram(name: "ipvs_start_daemon", scope: !163, file: !163, line: 661, type: !1656, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!160, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64, align: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipvs_daemon_t", file: !411, line: 31, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_daemon_app", file: !413, line: 126, size: 384, align: 32, elements: !1661)
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1660, file: !413, line: 128, baseType: !160, size: 32, align: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ifn", scope: !1660, file: !413, line: 131, baseType: !429, size: 128, align: 8, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "syncid", scope: !1660, file: !413, line: 134, baseType: !160, size: 32, align: 32, offset: 160)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_maxlen", scope: !1660, file: !413, line: 138, baseType: !176, size: 16, align: 16, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_port", scope: !1660, file: !413, line: 141, baseType: !176, size: 16, align: 16, offset: 208)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ttl", scope: !1660, file: !413, line: 144, baseType: !378, size: 8, align: 8, offset: 224)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_af", scope: !1660, file: !413, line: 147, baseType: !176, size: 16, align: 16, offset: 240)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_group", scope: !1660, file: !413, line: 150, baseType: !437, size: 128, align: 32, offset: 256)
!1670 = !DILocalVariable(name: "dm", arg: 1, scope: !1655, file: !163, line: 661, type: !1658)
!1671 = !DILocation(line: 661, column: 38, scope: !1655)
!1672 = !DILocalVariable(name: "dmk", scope: !1655, file: !163, line: 663, type: !1673)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_vs_daemon_kern", file: !413, line: 115, size: 192, align: 32, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1673, file: !413, line: 117, baseType: !160, size: 32, align: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ifn", scope: !1673, file: !413, line: 120, baseType: !429, size: 128, align: 8, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "syncid", scope: !1673, file: !413, line: 123, baseType: !160, size: 32, align: 32, offset: 160)
!1678 = !DILocation(line: 663, column: 27, scope: !1655)
!1679 = !DILocation(line: 665, column: 12, scope: !1655)
!1680 = !DILocation(line: 667, column: 6, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1655, file: !163, line: 667, column: 6)
!1682 = !DILocation(line: 667, column: 6, scope: !1655)
!1683 = !DILocalVariable(name: "nl_daemon", scope: !1684, file: !163, line: 668, type: !537)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !163, line: 667, column: 14)
!1685 = !DILocation(line: 668, column: 18, scope: !1684)
!1686 = !DILocalVariable(name: "msg", scope: !1684, file: !163, line: 669, type: !237)
!1687 = !DILocation(line: 669, column: 18, scope: !1684)
!1688 = !DILocation(line: 669, column: 24, scope: !1684)
!1689 = !DILocation(line: 670, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 670, column: 7)
!1691 = !DILocation(line: 670, column: 7, scope: !1684)
!1692 = !DILocation(line: 670, column: 13, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1690, file: !163, discriminator: 1)
!1694 = !DILocation(line: 672, column: 30, scope: !1684)
!1695 = !DILocation(line: 672, column: 15, scope: !1684)
!1696 = !DILocation(line: 672, column: 13, scope: !1684)
!1697 = !DILocation(line: 673, column: 8, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 673, column: 7)
!1699 = !DILocation(line: 673, column: 7, scope: !1684)
!1700 = !DILocation(line: 674, column: 4, scope: !1698)
!1701 = !DILocation(line: 676, column: 3, scope: !1684)
!1702 = distinct !{!1702, !1701}
!1703 = !DILocalVariable(name: "__tmp", scope: !1704, file: !163, line: 676, type: !1705)
!1704 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 676, column: 6)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1706, line: 196, baseType: !160)
!1706 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!1707 = !DILocation(line: 676, column: 16, scope: !1704)
!1708 = !DILocation(line: 676, column: 24, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1704, file: !163, discriminator: 1)
!1710 = !DILocation(line: 676, column: 28, scope: !1709)
!1711 = !DILocation(line: 676, column: 16, scope: !1709)
!1712 = !DILocation(line: 676, column: 35, scope: !1709)
!1713 = distinct !{!1713, !1714}
!1714 = !DILocation(line: 676, column: 35, scope: !1704)
!1715 = !DILocation(line: 676, column: 52, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !163, discriminator: 2)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !163, line: 676, column: 44)
!1718 = distinct !DILexicalBlock(scope: !1704, file: !163, line: 676, column: 38)
!1719 = !DILocation(line: 676, column: 98, scope: !1716)
!1720 = !DILocation(line: 676, column: 44, scope: !1716)
!1721 = !DILocation(line: 676, column: 106, scope: !1716)
!1722 = !DILocation(line: 676, column: 111, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1717, file: !163, discriminator: 3)
!1724 = !DILocation(line: 676, column: 133, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1718, file: !163, discriminator: 4)
!1726 = !DILocation(line: 676, column: 145, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1704, file: !163, discriminator: 5)
!1728 = !DILocation(line: 677, column: 3, scope: !1684)
!1729 = distinct !{!1729, !1728}
!1730 = !DILocation(line: 677, column: 20, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1732, file: !163, discriminator: 1)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !163, line: 677, column: 12)
!1733 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 677, column: 6)
!1734 = !DILocation(line: 677, column: 66, scope: !1731)
!1735 = !DILocation(line: 677, column: 70, scope: !1731)
!1736 = !DILocation(line: 677, column: 59, scope: !1731)
!1737 = !DILocation(line: 677, column: 53, scope: !1731)
!1738 = !DILocation(line: 677, column: 81, scope: !1731)
!1739 = !DILocation(line: 677, column: 86, scope: !1731)
!1740 = !DILocation(line: 677, column: 90, scope: !1731)
!1741 = !DILocation(line: 677, column: 12, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1731, file: !163, discriminator: 4)
!1743 = !DILocation(line: 677, column: 101, scope: !1731)
!1744 = !DILocation(line: 677, column: 12, scope: !1731)
!1745 = !DILocation(line: 677, column: 106, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1732, file: !163, discriminator: 2)
!1747 = !DILocation(line: 677, column: 128, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1733, file: !163, discriminator: 3)
!1749 = !DILocation(line: 678, column: 3, scope: !1684)
!1750 = distinct !{!1750, !1749}
!1751 = !DILocalVariable(name: "__tmp", scope: !1752, file: !163, line: 678, type: !1705)
!1752 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 678, column: 6)
!1753 = !DILocation(line: 678, column: 16, scope: !1752)
!1754 = !DILocation(line: 678, column: 24, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1752, file: !163, discriminator: 1)
!1756 = !DILocation(line: 678, column: 28, scope: !1755)
!1757 = !DILocation(line: 678, column: 16, scope: !1755)
!1758 = !DILocation(line: 678, column: 36, scope: !1755)
!1759 = distinct !{!1759, !1760}
!1760 = !DILocation(line: 678, column: 36, scope: !1752)
!1761 = !DILocation(line: 678, column: 53, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !163, discriminator: 2)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !163, line: 678, column: 45)
!1764 = distinct !DILexicalBlock(scope: !1752, file: !163, line: 678, column: 39)
!1765 = !DILocation(line: 678, column: 101, scope: !1762)
!1766 = !DILocation(line: 678, column: 45, scope: !1762)
!1767 = !DILocation(line: 678, column: 109, scope: !1762)
!1768 = !DILocation(line: 678, column: 114, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1763, file: !163, discriminator: 3)
!1770 = !DILocation(line: 678, column: 136, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1764, file: !163, discriminator: 4)
!1772 = !DILocation(line: 678, column: 148, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1752, file: !163, discriminator: 5)
!1774 = !DILocation(line: 680, column: 7, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 680, column: 7)
!1776 = !DILocation(line: 680, column: 11, scope: !1775)
!1777 = !DILocation(line: 680, column: 7, scope: !1684)
!1778 = !DILocation(line: 681, column: 4, scope: !1775)
!1779 = distinct !{!1779, !1778}
!1780 = !DILocalVariable(name: "__tmp", scope: !1781, file: !163, line: 681, type: !176)
!1781 = distinct !DILexicalBlock(scope: !1775, file: !163, line: 681, column: 7)
!1782 = !DILocation(line: 681, column: 18, scope: !1781)
!1783 = !DILocation(line: 681, column: 26, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1781, file: !163, discriminator: 1)
!1785 = !DILocation(line: 681, column: 30, scope: !1784)
!1786 = !DILocation(line: 681, column: 18, scope: !1784)
!1787 = !DILocation(line: 681, column: 43, scope: !1784)
!1788 = distinct !{!1788, !1789}
!1789 = !DILocation(line: 681, column: 43, scope: !1781)
!1790 = !DILocation(line: 681, column: 60, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1792, file: !163, discriminator: 2)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !163, line: 681, column: 52)
!1793 = distinct !DILexicalBlock(scope: !1781, file: !163, line: 681, column: 46)
!1794 = !DILocation(line: 681, column: 113, scope: !1791)
!1795 = !DILocation(line: 681, column: 52, scope: !1791)
!1796 = !DILocation(line: 681, column: 121, scope: !1791)
!1797 = !DILocation(line: 681, column: 126, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1792, file: !163, discriminator: 3)
!1799 = !DILocation(line: 681, column: 148, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1793, file: !163, discriminator: 4)
!1801 = !DILocation(line: 681, column: 160, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1781, file: !163, discriminator: 5)
!1803 = !DILocation(line: 681, column: 160, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1781, file: !163, discriminator: 6)
!1805 = !DILocation(line: 682, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 682, column: 7)
!1807 = !DILocation(line: 682, column: 11, scope: !1806)
!1808 = !DILocation(line: 682, column: 7, scope: !1684)
!1809 = !DILocation(line: 683, column: 4, scope: !1806)
!1810 = distinct !{!1810, !1809}
!1811 = !DILocalVariable(name: "__tmp", scope: !1812, file: !163, line: 683, type: !176)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !163, line: 683, column: 7)
!1813 = !DILocation(line: 683, column: 18, scope: !1812)
!1814 = !DILocation(line: 683, column: 26, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1812, file: !163, discriminator: 1)
!1816 = !DILocation(line: 683, column: 30, scope: !1815)
!1817 = !DILocation(line: 683, column: 18, scope: !1815)
!1818 = !DILocation(line: 683, column: 42, scope: !1815)
!1819 = distinct !{!1819, !1820}
!1820 = !DILocation(line: 683, column: 42, scope: !1812)
!1821 = !DILocation(line: 683, column: 59, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1823, file: !163, discriminator: 2)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !163, line: 683, column: 51)
!1824 = distinct !DILexicalBlock(scope: !1812, file: !163, line: 683, column: 45)
!1825 = !DILocation(line: 683, column: 111, scope: !1822)
!1826 = !DILocation(line: 683, column: 51, scope: !1822)
!1827 = !DILocation(line: 683, column: 119, scope: !1822)
!1828 = !DILocation(line: 683, column: 124, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1823, file: !163, discriminator: 3)
!1830 = !DILocation(line: 683, column: 146, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1824, file: !163, discriminator: 4)
!1832 = !DILocation(line: 683, column: 158, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1812, file: !163, discriminator: 5)
!1834 = !DILocation(line: 683, column: 158, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1812, file: !163, discriminator: 6)
!1836 = !DILocation(line: 684, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 684, column: 7)
!1838 = !DILocation(line: 684, column: 11, scope: !1837)
!1839 = !DILocation(line: 684, column: 7, scope: !1684)
!1840 = !DILocation(line: 685, column: 4, scope: !1837)
!1841 = distinct !{!1841, !1840}
!1842 = !DILocalVariable(name: "__tmp", scope: !1843, file: !163, line: 685, type: !378)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !163, line: 685, column: 7)
!1844 = !DILocation(line: 685, column: 17, scope: !1843)
!1845 = !DILocation(line: 685, column: 25, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1843, file: !163, discriminator: 1)
!1847 = !DILocation(line: 685, column: 29, scope: !1846)
!1848 = !DILocation(line: 685, column: 17, scope: !1846)
!1849 = !DILocation(line: 685, column: 40, scope: !1846)
!1850 = distinct !{!1850, !1851}
!1851 = !DILocation(line: 685, column: 40, scope: !1843)
!1852 = !DILocation(line: 685, column: 57, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1854, file: !163, discriminator: 2)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !163, line: 685, column: 49)
!1855 = distinct !DILexicalBlock(scope: !1843, file: !163, line: 685, column: 43)
!1856 = !DILocation(line: 685, column: 49, scope: !1853)
!1857 = !DILocation(line: 685, column: 115, scope: !1853)
!1858 = !DILocation(line: 685, column: 120, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1854, file: !163, discriminator: 3)
!1860 = !DILocation(line: 685, column: 142, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1855, file: !163, discriminator: 4)
!1862 = !DILocation(line: 685, column: 154, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1843, file: !163, discriminator: 5)
!1864 = !DILocation(line: 685, column: 154, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1843, file: !163, discriminator: 6)
!1866 = !DILocation(line: 686, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1684, file: !163, line: 686, column: 7)
!1868 = !DILocation(line: 686, column: 11, scope: !1867)
!1869 = !DILocation(line: 686, column: 20, scope: !1867)
!1870 = !DILocation(line: 686, column: 7, scope: !1684)
!1871 = !DILocation(line: 687, column: 4, scope: !1867)
!1872 = distinct !{!1872, !1871}
!1873 = !DILocation(line: 687, column: 21, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1875, file: !163, discriminator: 1)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !163, line: 687, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1867, file: !163, line: 687, column: 7)
!1877 = !DILocation(line: 687, column: 87, scope: !1874)
!1878 = !DILocation(line: 687, column: 91, scope: !1874)
!1879 = !DILocation(line: 687, column: 103, scope: !1874)
!1880 = !DILocation(line: 687, column: 86, scope: !1874)
!1881 = !DILocation(line: 687, column: 13, scope: !1874)
!1882 = !DILocation(line: 687, column: 108, scope: !1874)
!1883 = !DILocation(line: 687, column: 113, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1875, file: !163, discriminator: 2)
!1885 = !DILocation(line: 687, column: 135, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1876, file: !163, discriminator: 3)
!1887 = !DILocation(line: 687, column: 135, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1876, file: !163, discriminator: 4)
!1889 = !DILocation(line: 688, column: 12, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1867, file: !163, line: 688, column: 12)
!1891 = !DILocation(line: 688, column: 16, scope: !1890)
!1892 = !DILocation(line: 688, column: 25, scope: !1890)
!1893 = !DILocation(line: 688, column: 12, scope: !1867)
!1894 = !DILocation(line: 689, column: 4, scope: !1890)
!1895 = distinct !{!1895, !1894}
!1896 = !DILocalVariable(name: "__tmp", scope: !1897, file: !163, line: 689, type: !157)
!1897 = distinct !DILexicalBlock(scope: !1890, file: !163, line: 689, column: 7)
!1898 = !DILocation(line: 689, column: 18, scope: !1897)
!1899 = !DILocation(line: 689, column: 26, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1897, file: !163, discriminator: 1)
!1901 = !DILocation(line: 689, column: 30, scope: !1900)
!1902 = !DILocation(line: 689, column: 42, scope: !1900)
!1903 = !DILocation(line: 689, column: 18, scope: !1900)
!1904 = !DILocation(line: 689, column: 46, scope: !1900)
!1905 = distinct !{!1905, !1906}
!1906 = !DILocation(line: 689, column: 46, scope: !1897)
!1907 = !DILocation(line: 689, column: 63, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1909, file: !163, discriminator: 2)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !163, line: 689, column: 55)
!1910 = distinct !DILexicalBlock(scope: !1897, file: !163, line: 689, column: 49)
!1911 = !DILocation(line: 689, column: 116, scope: !1908)
!1912 = !DILocation(line: 689, column: 55, scope: !1908)
!1913 = !DILocation(line: 689, column: 124, scope: !1908)
!1914 = !DILocation(line: 689, column: 129, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1909, file: !163, discriminator: 3)
!1916 = !DILocation(line: 689, column: 151, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1910, file: !163, discriminator: 4)
!1918 = !DILocation(line: 689, column: 163, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1897, file: !163, discriminator: 5)
!1920 = !DILocation(line: 689, column: 163, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1897, file: !163, discriminator: 6)
!1922 = !DILocation(line: 692, column: 16, scope: !1684)
!1923 = !DILocation(line: 692, column: 21, scope: !1684)
!1924 = !DILocation(line: 692, column: 3, scope: !1684)
!1925 = !DILocation(line: 694, column: 31, scope: !1684)
!1926 = !DILocation(line: 694, column: 10, scope: !1684)
!1927 = !DILocation(line: 694, column: 3, scope: !1684)
!1928 = !DILocation(line: 697, column: 14, scope: !1684)
!1929 = !DILocation(line: 697, column: 3, scope: !1684)
!1930 = !DILocation(line: 698, column: 3, scope: !1684)
!1931 = !DILocation(line: 701, column: 2, scope: !1655)
!1932 = !DILocation(line: 702, column: 19, scope: !1655)
!1933 = !DILocation(line: 702, column: 23, scope: !1655)
!1934 = !DILocation(line: 702, column: 6, scope: !1655)
!1935 = !DILocation(line: 702, column: 12, scope: !1655)
!1936 = !DILocation(line: 703, column: 13, scope: !1655)
!1937 = !DILocation(line: 703, column: 9, scope: !1655)
!1938 = !DILocation(line: 703, column: 24, scope: !1655)
!1939 = !DILocation(line: 703, column: 28, scope: !1655)
!1940 = !DILocation(line: 703, column: 2, scope: !1655)
!1941 = !DILocation(line: 704, column: 20, scope: !1655)
!1942 = !DILocation(line: 704, column: 24, scope: !1655)
!1943 = !DILocation(line: 704, column: 6, scope: !1655)
!1944 = !DILocation(line: 704, column: 13, scope: !1655)
!1945 = !DILocation(line: 705, column: 20, scope: !1655)
!1946 = !DILocation(line: 706, column: 6, scope: !1655)
!1947 = !DILocation(line: 705, column: 9, scope: !1655)
!1948 = !DILocation(line: 705, column: 2, scope: !1655)
!1949 = !DILocation(line: 707, column: 1, scope: !1655)
!1950 = distinct !DISubprogram(name: "ipvs_stop_daemon", scope: !163, file: !163, line: 710, type: !1656, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!1951 = !DILocalVariable(name: "dm", arg: 1, scope: !1950, file: !163, line: 710, type: !1658)
!1952 = !DILocation(line: 710, column: 37, scope: !1950)
!1953 = !DILocalVariable(name: "dmk", scope: !1950, file: !163, line: 712, type: !1673)
!1954 = !DILocation(line: 712, column: 27, scope: !1950)
!1955 = !DILocation(line: 714, column: 12, scope: !1950)
!1956 = !DILocation(line: 716, column: 6, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1950, file: !163, line: 716, column: 6)
!1958 = !DILocation(line: 716, column: 6, scope: !1950)
!1959 = !DILocalVariable(name: "nl_daemon", scope: !1960, file: !163, line: 717, type: !537)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !163, line: 716, column: 14)
!1961 = !DILocation(line: 717, column: 18, scope: !1960)
!1962 = !DILocalVariable(name: "msg", scope: !1960, file: !163, line: 718, type: !237)
!1963 = !DILocation(line: 718, column: 18, scope: !1960)
!1964 = !DILocation(line: 718, column: 24, scope: !1960)
!1965 = !DILocation(line: 719, column: 8, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !163, line: 719, column: 7)
!1967 = !DILocation(line: 719, column: 7, scope: !1960)
!1968 = !DILocation(line: 719, column: 13, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1966, file: !163, discriminator: 1)
!1970 = !DILocation(line: 721, column: 30, scope: !1960)
!1971 = !DILocation(line: 721, column: 15, scope: !1960)
!1972 = !DILocation(line: 721, column: 13, scope: !1960)
!1973 = !DILocation(line: 722, column: 8, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1960, file: !163, line: 722, column: 7)
!1975 = !DILocation(line: 722, column: 7, scope: !1960)
!1976 = !DILocation(line: 723, column: 4, scope: !1974)
!1977 = !DILocation(line: 725, column: 3, scope: !1960)
!1978 = distinct !{!1978, !1977}
!1979 = !DILocalVariable(name: "__tmp", scope: !1980, file: !163, line: 725, type: !1705)
!1980 = distinct !DILexicalBlock(scope: !1960, file: !163, line: 725, column: 6)
!1981 = !DILocation(line: 725, column: 16, scope: !1980)
!1982 = !DILocation(line: 725, column: 24, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1980, file: !163, discriminator: 1)
!1984 = !DILocation(line: 725, column: 28, scope: !1983)
!1985 = !DILocation(line: 725, column: 16, scope: !1983)
!1986 = !DILocation(line: 725, column: 35, scope: !1983)
!1987 = distinct !{!1987, !1988}
!1988 = !DILocation(line: 725, column: 35, scope: !1980)
!1989 = !DILocation(line: 725, column: 52, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !163, discriminator: 2)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !163, line: 725, column: 44)
!1992 = distinct !DILexicalBlock(scope: !1980, file: !163, line: 725, column: 38)
!1993 = !DILocation(line: 725, column: 98, scope: !1990)
!1994 = !DILocation(line: 725, column: 44, scope: !1990)
!1995 = !DILocation(line: 725, column: 106, scope: !1990)
!1996 = !DILocation(line: 725, column: 111, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1991, file: !163, discriminator: 3)
!1998 = !DILocation(line: 725, column: 133, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1992, file: !163, discriminator: 4)
!2000 = !DILocation(line: 725, column: 145, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1980, file: !163, discriminator: 5)
!2002 = !DILocation(line: 726, column: 3, scope: !1960)
!2003 = distinct !{!2003, !2002}
!2004 = !DILocation(line: 726, column: 20, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2006, file: !163, discriminator: 1)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !163, line: 726, column: 12)
!2007 = distinct !DILexicalBlock(scope: !1960, file: !163, line: 726, column: 6)
!2008 = !DILocation(line: 726, column: 66, scope: !2005)
!2009 = !DILocation(line: 726, column: 70, scope: !2005)
!2010 = !DILocation(line: 726, column: 59, scope: !2005)
!2011 = !DILocation(line: 726, column: 53, scope: !2005)
!2012 = !DILocation(line: 726, column: 81, scope: !2005)
!2013 = !DILocation(line: 726, column: 86, scope: !2005)
!2014 = !DILocation(line: 726, column: 90, scope: !2005)
!2015 = !DILocation(line: 726, column: 12, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2005, file: !163, discriminator: 4)
!2017 = !DILocation(line: 726, column: 101, scope: !2005)
!2018 = !DILocation(line: 726, column: 12, scope: !2005)
!2019 = !DILocation(line: 726, column: 106, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2006, file: !163, discriminator: 2)
!2021 = !DILocation(line: 726, column: 128, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2007, file: !163, discriminator: 3)
!2023 = !DILocation(line: 727, column: 3, scope: !1960)
!2024 = distinct !{!2024, !2023}
!2025 = !DILocalVariable(name: "__tmp", scope: !2026, file: !163, line: 727, type: !1705)
!2026 = distinct !DILexicalBlock(scope: !1960, file: !163, line: 727, column: 6)
!2027 = !DILocation(line: 727, column: 16, scope: !2026)
!2028 = !DILocation(line: 727, column: 24, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2026, file: !163, discriminator: 1)
!2030 = !DILocation(line: 727, column: 28, scope: !2029)
!2031 = !DILocation(line: 727, column: 16, scope: !2029)
!2032 = !DILocation(line: 727, column: 36, scope: !2029)
!2033 = distinct !{!2033, !2034}
!2034 = !DILocation(line: 727, column: 36, scope: !2026)
!2035 = !DILocation(line: 727, column: 53, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2037, file: !163, discriminator: 2)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !163, line: 727, column: 45)
!2038 = distinct !DILexicalBlock(scope: !2026, file: !163, line: 727, column: 39)
!2039 = !DILocation(line: 727, column: 101, scope: !2036)
!2040 = !DILocation(line: 727, column: 45, scope: !2036)
!2041 = !DILocation(line: 727, column: 109, scope: !2036)
!2042 = !DILocation(line: 727, column: 114, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2037, file: !163, discriminator: 3)
!2044 = !DILocation(line: 727, column: 136, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2038, file: !163, discriminator: 4)
!2046 = !DILocation(line: 727, column: 148, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2026, file: !163, discriminator: 5)
!2048 = !DILocation(line: 729, column: 16, scope: !1960)
!2049 = !DILocation(line: 729, column: 21, scope: !1960)
!2050 = !DILocation(line: 729, column: 3, scope: !1960)
!2051 = !DILocation(line: 731, column: 31, scope: !1960)
!2052 = !DILocation(line: 731, column: 10, scope: !1960)
!2053 = !DILocation(line: 731, column: 3, scope: !1960)
!2054 = !DILocation(line: 734, column: 14, scope: !1960)
!2055 = !DILocation(line: 734, column: 3, scope: !1960)
!2056 = !DILocation(line: 735, column: 3, scope: !1960)
!2057 = !DILocation(line: 738, column: 2, scope: !1950)
!2058 = !DILocation(line: 739, column: 19, scope: !1950)
!2059 = !DILocation(line: 739, column: 23, scope: !1950)
!2060 = !DILocation(line: 739, column: 6, scope: !1950)
!2061 = !DILocation(line: 739, column: 12, scope: !1950)
!2062 = !DILocation(line: 740, column: 20, scope: !1950)
!2063 = !DILocation(line: 741, column: 6, scope: !1950)
!2064 = !DILocation(line: 740, column: 9, scope: !1950)
!2065 = !DILocation(line: 740, column: 2, scope: !1950)
!2066 = !DILocation(line: 742, column: 1, scope: !1950)
!2067 = distinct !DISubprogram(name: "ipvs_close", scope: !163, file: !163, line: 1152, type: !2068, isLocal: false, isDefinition: true, scopeLine: 1153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null}
!2070 = !DILocation(line: 1155, column: 6, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !163, line: 1155, column: 6)
!2072 = !DILocation(line: 1155, column: 6, scope: !2067)
!2073 = !DILocation(line: 1156, column: 3, scope: !2071)
!2074 = !DILocation(line: 1158, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !163, line: 1158, column: 6)
!2076 = !DILocation(line: 1158, column: 13, scope: !2075)
!2077 = !DILocation(line: 1158, column: 6, scope: !2067)
!2078 = !DILocation(line: 1159, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !163, line: 1158, column: 20)
!2080 = !DILocation(line: 1159, column: 3, scope: !2079)
!2081 = !DILocation(line: 1160, column: 10, scope: !2079)
!2082 = !DILocation(line: 1161, column: 2, scope: !2079)
!2083 = !DILocation(line: 1162, column: 1, scope: !2067)
!2084 = distinct !DISubprogram(name: "ipvs_strerror", scope: !163, file: !163, line: 1164, type: !2085, isLocal: false, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!2087, !160}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64, align: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!2089 = !DILocalVariable(name: "err", arg: 1, scope: !2084, file: !163, line: 1164, type: !160)
!2090 = !DILocation(line: 1164, column: 31, scope: !2084)
!2091 = !DILocalVariable(name: "i", scope: !2084, file: !163, line: 1166, type: !159)
!2092 = !DILocation(line: 1166, column: 15, scope: !2084)
!2093 = !DILocalVariable(name: "table", scope: !2084, file: !163, line: 1171, type: !2094)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2095, size: 4032, align: 64, elements: !2100)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "table_struct", scope: !2084, file: !163, line: 1167, size: 192, align: 64, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2095, file: !163, line: 1168, baseType: !154, size: 64, align: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !2095, file: !163, line: 1169, baseType: !160, size: 32, align: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !2095, file: !163, line: 1170, baseType: !2087, size: 64, align: 64, offset: 128)
!2100 = !{!2101}
!2101 = !DISubrange(count: 21)
!2102 = !DILocation(line: 1171, column: 4, scope: !2084)
!2103 = !DILocation(line: 1199, column: 9, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2084, file: !163, line: 1199, column: 2)
!2105 = !DILocation(line: 1199, column: 7, scope: !2104)
!2106 = !DILocation(line: 1199, column: 14, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2108, file: !163, discriminator: 1)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !163, line: 1199, column: 2)
!2109 = !DILocation(line: 1199, column: 16, scope: !2107)
!2110 = !DILocation(line: 1199, column: 2, scope: !2107)
!2111 = !DILocation(line: 1200, column: 15, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !163, line: 1200, column: 7)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !163, line: 1199, column: 66)
!2114 = !DILocation(line: 1200, column: 9, scope: !2112)
!2115 = !DILocation(line: 1200, column: 18, scope: !2112)
!2116 = !DILocation(line: 1200, column: 23, scope: !2112)
!2117 = !DILocation(line: 1200, column: 32, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2112, file: !163, discriminator: 1)
!2119 = !DILocation(line: 1200, column: 26, scope: !2118)
!2120 = !DILocation(line: 1200, column: 35, scope: !2118)
!2121 = !DILocation(line: 1200, column: 43, scope: !2118)
!2122 = !DILocation(line: 1200, column: 40, scope: !2118)
!2123 = !DILocation(line: 1201, column: 7, scope: !2112)
!2124 = !DILocation(line: 1201, column: 16, scope: !2118)
!2125 = !DILocation(line: 1201, column: 10, scope: !2118)
!2126 = !DILocation(line: 1201, column: 19, scope: !2118)
!2127 = !DILocation(line: 1201, column: 26, scope: !2118)
!2128 = !DILocation(line: 1201, column: 23, scope: !2118)
!2129 = !DILocation(line: 1200, column: 7, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2113, file: !163, discriminator: 2)
!2131 = !DILocation(line: 1202, column: 17, scope: !2112)
!2132 = !DILocation(line: 1202, column: 11, scope: !2112)
!2133 = !DILocation(line: 1202, column: 20, scope: !2112)
!2134 = !DILocation(line: 1202, column: 4, scope: !2112)
!2135 = !DILocation(line: 1203, column: 2, scope: !2113)
!2136 = !DILocation(line: 1199, column: 62, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2108, file: !163, discriminator: 2)
!2138 = !DILocation(line: 1199, column: 2, scope: !2137)
!2139 = distinct !{!2139, !2140}
!2140 = !DILocation(line: 1199, column: 2, scope: !2084)
!2141 = !DILocation(line: 1205, column: 18, scope: !2084)
!2142 = !DILocation(line: 1205, column: 9, scope: !2084)
!2143 = !DILocation(line: 1205, column: 2, scope: !2084)
!2144 = !DILocation(line: 1206, column: 1, scope: !2084)
!2145 = distinct !DISubprogram(name: "nlerr2syserr", scope: !163, file: !163, line: 193, type: !2146, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!160, !160}
!2148 = !DILocalVariable(name: "err", arg: 1, scope: !2145, file: !163, line: 193, type: !160)
!2149 = !DILocation(line: 193, column: 29, scope: !2145)
!2150 = !DILocation(line: 195, column: 14, scope: !2145)
!2151 = !DILocation(line: 195, column: 10, scope: !2145)
!2152 = !DILocation(line: 195, column: 2, scope: !2145)
!2153 = !DILocation(line: 196, column: 10, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2145, file: !163, line: 195, column: 20)
!2155 = !DILocation(line: 197, column: 10, scope: !2154)
!2156 = !DILocation(line: 198, column: 11, scope: !2154)
!2157 = !DILocation(line: 199, column: 11, scope: !2154)
!2158 = !DILocation(line: 200, column: 10, scope: !2154)
!2159 = !DILocation(line: 201, column: 10, scope: !2154)
!2160 = !DILocation(line: 202, column: 10, scope: !2154)
!2161 = !DILocation(line: 203, column: 11, scope: !2154)
!2162 = !DILocation(line: 204, column: 10, scope: !2154)
!2163 = !DILocation(line: 205, column: 11, scope: !2154)
!2164 = !DILocation(line: 206, column: 11, scope: !2154)
!2165 = !DILocation(line: 207, column: 11, scope: !2154)
!2166 = !DILocation(line: 208, column: 11, scope: !2154)
!2167 = !DILocation(line: 209, column: 11, scope: !2154)
!2168 = !DILocation(line: 210, column: 10, scope: !2154)
!2169 = !DILocation(line: 211, column: 11, scope: !2154)
!2170 = !DILocation(line: 212, column: 18, scope: !2154)
!2171 = !DILocation(line: 212, column: 11, scope: !2154)
!2172 = !DILocation(line: 214, column: 1, scope: !2145)
!2173 = distinct !DISubprogram(name: "ipvs_getinfo_parse_cb", scope: !163, file: !163, line: 290, type: !241, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !189)
!2174 = !DILocalVariable(name: "msg", arg: 1, scope: !2173, file: !163, line: 290, type: !237)
!2175 = !DILocation(line: 290, column: 49, scope: !2173)
!2176 = !DILocalVariable(name: "arg", arg: 2, scope: !2173, file: !163, line: 290, type: !154)
!2177 = !DILocation(line: 290, column: 84, scope: !2173)
!2178 = !DILocalVariable(name: "nlh", scope: !2173, file: !163, line: 292, type: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64, align: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsghdr", file: !539, line: 42, size: 128, align: 32, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2186}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_len", scope: !2180, file: !539, line: 43, baseType: !424, size: 32, align: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_type", scope: !2180, file: !539, line: 44, baseType: !419, size: 16, align: 16, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_flags", scope: !2180, file: !539, line: 45, baseType: !419, size: 16, align: 16, offset: 48)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_seq", scope: !2180, file: !539, line: 46, baseType: !424, size: 32, align: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_pid", scope: !2180, file: !539, line: 47, baseType: !424, size: 32, align: 32, offset: 96)
!2187 = !DILocation(line: 292, column: 19, scope: !2173)
!2188 = !DILocation(line: 292, column: 35, scope: !2173)
!2189 = !DILocation(line: 292, column: 25, scope: !2173)
!2190 = !DILocalVariable(name: "attrs", scope: !2173, file: !163, line: 293, type: !2191)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 192, align: 64, elements: !180)
!2192 = !DILocation(line: 293, column: 17, scope: !2173)
!2193 = !DILocation(line: 295, column: 20, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2173, file: !163, line: 295, column: 6)
!2195 = !DILocation(line: 295, column: 28, scope: !2194)
!2196 = !DILocation(line: 295, column: 6, scope: !2194)
!2197 = !DILocation(line: 295, column: 72, scope: !2194)
!2198 = !DILocation(line: 295, column: 6, scope: !2173)
!2199 = !DILocation(line: 296, column: 3, scope: !2194)
!2200 = !DILocation(line: 298, column: 8, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2173, file: !163, line: 298, column: 6)
!2202 = !DILocation(line: 298, column: 38, scope: !2201)
!2203 = !DILocation(line: 299, column: 8, scope: !2201)
!2204 = !DILocation(line: 298, column: 6, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2173, file: !163, discriminator: 1)
!2206 = !DILocation(line: 300, column: 3, scope: !2201)
!2207 = !DILocation(line: 302, column: 2, scope: !2173)
!2208 = !DILocation(line: 303, column: 1, scope: !2173)
