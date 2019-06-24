; ModuleID = './line55-net-nonblock.o.i'
source_filename = "./line55-net-nonblock.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct.RESOLVED_IP_REC = type { %struct._IPADDR, %struct._IPADDR, i32, i32, i8*, i8*, i8* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.RESOLVED_NAME_REC = type { i32, i8*, i32, i32, i8* }
%struct.SIMPLE_THREAD_REC = type { void (%struct._GIOChannel*, i8*)*, i8*, [2 x %struct._GIOChannel*], i32, %struct._IPADDR*, i32 }

@__func__.net_gethostbyname_nonblock = private unnamed_addr constant [27 x i8] c"net_gethostbyname_nonblock\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"addr != NULL\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"net_connect_thread(): fork() failed! Using blocking resolving\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Host name lookup: %s\00", align 1
@__func__.net_disconnect_nonblock = private unnamed_addr constant [24 x i8] c"net_disconnect_nonblock\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pid > 0\00", align 1
@__func__.net_connect_nonblock = private unnamed_addr constant [21 x i8] c"net_connect_nonblock\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"func != NULL\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"net_connect_nonblock(): pipe() failed.\00", align 1
@__func__.simple_readpipe = private unnamed_addr constant [16 x i8] c"simple_readpipe\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@__func__.simple_init = private unnamed_addr constant [12 x i8] c"simple_init\00", align 1

; Function Attrs: nounwind uwtable
define i32 @net_gethostbyname_nonblock(i8*, %struct._GIOChannel*, i32) #0 !dbg !296 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GIOChannel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.RESOLVED_IP_REC, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !300, metadata !301), !dbg !302
  store %struct._GIOChannel* %1, %struct._GIOChannel** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %6, metadata !303, metadata !301), !dbg !304
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !305, metadata !301), !dbg !306
  call void @llvm.dbg.declare(metadata %struct.RESOLVED_IP_REC* %8, metadata !307, metadata !301), !dbg !318
  call void @llvm.dbg.declare(metadata i8** %9, metadata !319, metadata !301), !dbg !320
  call void @llvm.dbg.declare(metadata i32* %10, metadata !321, metadata !301), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %11, metadata !323, metadata !301), !dbg !324
  br label %12, !dbg !325, !llvm.loop !326

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !327
  %14 = icmp ne i8* %13, null, !dbg !331
  br i1 %14, label %15, label %16, !dbg !327

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !332

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.net_gethostbyname_nonblock, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !335
  store i32 0, i32* %4, align 4, !dbg !338
  br label %136, !dbg !338

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !339

; <label>:18:                                     ; preds = %17
  %19 = call i32 @fork() #8, !dbg !341
  store i32 %19, i32* %10, align 4, !dbg !342
  %20 = load i32, i32* %10, align 4, !dbg !343
  %21 = icmp sgt i32 %20, 0, !dbg !345
  br i1 %21, label %22, label %25, !dbg !346

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %10, align 4, !dbg !347
  call void @pidwait_add(i32 %23), !dbg !349
  %24 = load i32, i32* %10, align 4, !dbg !350
  store i32 %24, i32* %4, align 4, !dbg !351
  br label %136, !dbg !351

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %10, align 4, !dbg !352
  %27 = icmp ne i32 %26, 0, !dbg !354
  br i1 %27, label %28, label %29, !dbg !355

; <label>:28:                                     ; preds = %25
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0)), !dbg !356
  br label %29, !dbg !358

; <label>:29:                                     ; preds = %28, %25
  %30 = call i64 @time(i64* null) #8, !dbg !359
  %31 = trunc i64 %30 to i32, !dbg !359
  call void @srand(i32 %31) #8, !dbg !360
  %32 = bitcast %struct.RESOLVED_IP_REC* %8 to i8*, !dbg !362
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 72, i32 8, i1 false), !dbg !362
  %33 = load i8*, i8** %5, align 8, !dbg !363
  %34 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 0, !dbg !364
  %35 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 1, !dbg !365
  %36 = call i32 @net_gethostbyname(i8* %33, %struct._IPADDR* %34, %struct._IPADDR* %35), !dbg !366
  %37 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 2, !dbg !367
  store i32 %36, i32* %37, align 8, !dbg !368
  %38 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 2, !dbg !369
  %39 = load i32, i32* %38, align 8, !dbg !369
  %40 = icmp eq i32 %39, 0, !dbg !371
  br i1 %40, label %41, label %66, !dbg !372

; <label>:41:                                     ; preds = %29
  store i8* null, i8** %9, align 8, !dbg !373
  %42 = load i32, i32* %7, align 4, !dbg !375
  %43 = icmp ne i32 %42, 0, !dbg !375
  br i1 %43, label %44, label %65, !dbg !377

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 0, !dbg !378
  %46 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %45, i32 0, i32 0, !dbg !381
  %47 = load i16, i16* %46, align 8, !dbg !381
  %48 = zext i16 %47 to i32, !dbg !382
  %49 = icmp ne i32 %48, 0, !dbg !383
  br i1 %49, label %50, label %54, !dbg !384

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 0, !dbg !385
  %52 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 5, !dbg !386
  %53 = call i32 @net_gethostbyaddr(%struct._IPADDR* %51, i8** %52), !dbg !387
  br label %54, !dbg !387

; <label>:54:                                     ; preds = %50, %44
  %55 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 1, !dbg !388
  %56 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %55, i32 0, i32 0, !dbg !390
  %57 = load i16, i16* %56, align 4, !dbg !390
  %58 = zext i16 %57 to i32, !dbg !391
  %59 = icmp ne i32 %58, 0, !dbg !392
  br i1 %59, label %60, label %64, !dbg !393

; <label>:60:                                     ; preds = %54
  %61 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 1, !dbg !394
  %62 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 6, !dbg !395
  %63 = call i32 @net_gethostbyaddr(%struct._IPADDR* %61, i8** %62), !dbg !396
  br label %64, !dbg !396

; <label>:64:                                     ; preds = %60, %54
  br label %65, !dbg !397

; <label>:65:                                     ; preds = %64, %41
  br label %81, !dbg !398

; <label>:66:                                     ; preds = %29
  %67 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 2, !dbg !399
  %68 = load i32, i32* %67, align 8, !dbg !399
  %69 = call i8* @net_gethosterror(i32 %68), !dbg !401
  store i8* %69, i8** %9, align 8, !dbg !402
  %70 = load i8*, i8** %9, align 8, !dbg !403
  %71 = icmp eq i8* %70, null, !dbg !404
  br i1 %71, label %72, label %73, !dbg !403

; <label>:72:                                     ; preds = %66
  br label %77, !dbg !405

; <label>:73:                                     ; preds = %66
  %74 = load i8*, i8** %9, align 8, !dbg !407
  %75 = call i64 @strlen(i8* %74) #9, !dbg !409
  %76 = add i64 %75, 1, !dbg !410
  br label %77, !dbg !411

; <label>:77:                                     ; preds = %73, %72
  %78 = phi i64 [ 0, %72 ], [ %76, %73 ], !dbg !412
  %79 = trunc i64 %78 to i32, !dbg !412
  %80 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 3, !dbg !414
  store i32 %79, i32* %80, align 4, !dbg !415
  br label %81

; <label>:81:                                     ; preds = %77, %65
  %82 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !416
  %83 = bitcast %struct.RESOLVED_IP_REC* %8 to i8*, !dbg !417
  %84 = call i32 @g_io_channel_write_block(%struct._GIOChannel* %82, i8* %83, i32 72), !dbg !418
  %85 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 3, !dbg !419
  %86 = load i32, i32* %85, align 4, !dbg !419
  %87 = icmp ne i32 %86, 0, !dbg !421
  br i1 %87, label %88, label %94, !dbg !422

; <label>:88:                                     ; preds = %81
  %89 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !423
  %90 = load i8*, i8** %9, align 8, !dbg !424
  %91 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 3, !dbg !425
  %92 = load i32, i32* %91, align 4, !dbg !425
  %93 = call i32 @g_io_channel_write_block(%struct._GIOChannel* %89, i8* %90, i32 %92), !dbg !426
  br label %131, !dbg !426

; <label>:94:                                     ; preds = %81
  %95 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 5, !dbg !427
  %96 = load i8*, i8** %95, align 8, !dbg !427
  %97 = icmp ne i8* %96, null, !dbg !430
  br i1 %97, label %98, label %112, !dbg !431

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 5, !dbg !432
  %100 = load i8*, i8** %99, align 8, !dbg !432
  %101 = call i64 @strlen(i8* %100) #9, !dbg !434
  %102 = add i64 %101, 1, !dbg !435
  %103 = trunc i64 %102 to i32, !dbg !434
  store i32 %103, i32* %11, align 4, !dbg !436
  %104 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !437
  %105 = bitcast i32* %11 to i8*, !dbg !438
  %106 = call i32 @g_io_channel_write_block(%struct._GIOChannel* %104, i8* %105, i32 4), !dbg !439
  %107 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !440
  %108 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 5, !dbg !441
  %109 = load i8*, i8** %108, align 8, !dbg !441
  %110 = load i32, i32* %11, align 4, !dbg !442
  %111 = call i32 @g_io_channel_write_block(%struct._GIOChannel* %107, i8* %109, i32 %110), !dbg !443
  br label %112, !dbg !444

; <label>:112:                                    ; preds = %98, %94
  %113 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 6, !dbg !445
  %114 = load i8*, i8** %113, align 8, !dbg !445
  %115 = icmp ne i8* %114, null, !dbg !447
  br i1 %115, label %116, label %130, !dbg !448

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 6, !dbg !449
  %118 = load i8*, i8** %117, align 8, !dbg !449
  %119 = call i64 @strlen(i8* %118) #9, !dbg !451
  %120 = add i64 %119, 1, !dbg !452
  %121 = trunc i64 %120 to i32, !dbg !451
  store i32 %121, i32* %11, align 4, !dbg !453
  %122 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !454
  %123 = bitcast i32* %11 to i8*, !dbg !455
  %124 = call i32 @g_io_channel_write_block(%struct._GIOChannel* %122, i8* %123, i32 4), !dbg !456
  %125 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !457
  %126 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %8, i32 0, i32 6, !dbg !458
  %127 = load i8*, i8** %126, align 8, !dbg !458
  %128 = load i32, i32* %11, align 4, !dbg !459
  %129 = call i32 @g_io_channel_write_block(%struct._GIOChannel* %125, i8* %127, i32 %128), !dbg !460
  br label %130, !dbg !461

; <label>:130:                                    ; preds = %116, %112
  br label %131

; <label>:131:                                    ; preds = %130, %88
  %132 = load i32, i32* %10, align 4, !dbg !462
  %133 = icmp eq i32 %132, 0, !dbg !464
  br i1 %133, label %134, label %135, !dbg !465

; <label>:134:                                    ; preds = %131
  call void @_exit(i32 99) #10, !dbg !466
  unreachable, !dbg !466

; <label>:135:                                    ; preds = %131
  store i32 0, i32* %4, align 4, !dbg !467
  br label %136, !dbg !467

; <label>:136:                                    ; preds = %135, %22, %16
  %137 = load i32, i32* %4, align 4, !dbg !468
  ret i32 %137, !dbg !468
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @fork() #3

declare void @pidwait_add(i32) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i32 @net_gethostbyname(i8*, %struct._IPADDR*, %struct._IPADDR*) #2

declare i32 @net_gethostbyaddr(%struct._IPADDR*, i8**) #2

declare i8* @net_gethosterror(i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @g_io_channel_write_block(%struct._GIOChannel*, i8*, i32) #2

; Function Attrs: noreturn
declare void @_exit(i32) #6

; Function Attrs: nounwind uwtable
define i32 @net_gethostbyname_return(%struct._GIOChannel*, %struct.RESOLVED_IP_REC*) #0 !dbg !469 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct.RESOLVED_IP_REC*, align 8
  %6 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !473, metadata !301), !dbg !474
  store %struct.RESOLVED_IP_REC* %1, %struct.RESOLVED_IP_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.RESOLVED_IP_REC** %5, metadata !475, metadata !301), !dbg !476
  call void @llvm.dbg.declare(metadata i32* %6, metadata !477, metadata !301), !dbg !478
  %7 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !479
  %8 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %7, i32 0, i32 2, !dbg !480
  store i32 -1, i32* %8, align 8, !dbg !481
  %9 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !482
  %10 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %9, i32 0, i32 4, !dbg !483
  store i8* null, i8** %10, align 8, !dbg !484
  %11 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !485
  %12 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %11, i32 0, i32 5, !dbg !486
  store i8* null, i8** %12, align 8, !dbg !487
  %13 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !488
  %14 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %13, i32 0, i32 6, !dbg !489
  store i8* null, i8** %14, align 8, !dbg !490
  %15 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !491
  %16 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %15), !dbg !492
  %17 = call i32 (i32, i32, ...) @fcntl(i32 %16, i32 4, i32 2048), !dbg !493
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !495
  %19 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !497
  %20 = bitcast %struct.RESOLVED_IP_REC* %19 to i8*, !dbg !497
  %21 = call i32 @g_io_channel_read_block(%struct._GIOChannel* %18, i8* %20, i32 72), !dbg !498
  %22 = icmp eq i32 %21, -1, !dbg !499
  br i1 %22, label %23, label %30, !dbg !500

; <label>:23:                                     ; preds = %2
  %24 = call i32* @__errno_location() #1, !dbg !501
  %25 = load i32, i32* %24, align 4, !dbg !503
  %26 = call i8* @g_strerror(i32 %25) #1, !dbg !504
  %27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* %26), !dbg !506
  %28 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !507
  %29 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %28, i32 0, i32 4, !dbg !508
  store i8* %27, i8** %29, align 8, !dbg !509
  store i32 -1, i32* %3, align 4, !dbg !510
  br label %94, !dbg !510

; <label>:30:                                     ; preds = %2
  %31 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !511
  %32 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %31, i32 0, i32 2, !dbg !513
  %33 = load i32, i32* %32, align 8, !dbg !513
  %34 = icmp ne i32 %33, 0, !dbg !511
  br i1 %34, label %35, label %52, !dbg !514

; <label>:35:                                     ; preds = %30
  %36 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !515
  %37 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %36, i32 0, i32 3, !dbg !517
  %38 = load i32, i32* %37, align 4, !dbg !517
  %39 = add nsw i32 %38, 1, !dbg !518
  %40 = sext i32 %39 to i64, !dbg !515
  %41 = call noalias i8* @g_malloc0(i64 %40), !dbg !519
  %42 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !520
  %43 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %42, i32 0, i32 4, !dbg !521
  store i8* %41, i8** %43, align 8, !dbg !522
  %44 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !523
  %45 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !524
  %46 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %45, i32 0, i32 4, !dbg !525
  %47 = load i8*, i8** %46, align 8, !dbg !525
  %48 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !526
  %49 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %48, i32 0, i32 3, !dbg !527
  %50 = load i32, i32* %49, align 4, !dbg !527
  %51 = call i32 @g_io_channel_read_block(%struct._GIOChannel* %44, i8* %47, i32 %50), !dbg !528
  br label %93, !dbg !529

; <label>:52:                                     ; preds = %30
  %53 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !530
  %54 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %53, i32 0, i32 5, !dbg !533
  %55 = load i8*, i8** %54, align 8, !dbg !533
  %56 = icmp ne i8* %55, null, !dbg !530
  br i1 %56, label %57, label %72, !dbg !534

; <label>:57:                                     ; preds = %52
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !535
  %59 = bitcast i32* %6 to i8*, !dbg !537
  %60 = call i32 @g_io_channel_read_block(%struct._GIOChannel* %58, i8* %59, i32 4), !dbg !538
  %61 = load i32, i32* %6, align 4, !dbg !539
  %62 = sext i32 %61 to i64, !dbg !539
  %63 = call noalias i8* @g_malloc0(i64 %62), !dbg !540
  %64 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !541
  %65 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %64, i32 0, i32 5, !dbg !542
  store i8* %63, i8** %65, align 8, !dbg !543
  %66 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !544
  %67 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !545
  %68 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %67, i32 0, i32 5, !dbg !546
  %69 = load i8*, i8** %68, align 8, !dbg !546
  %70 = load i32, i32* %6, align 4, !dbg !547
  %71 = call i32 @g_io_channel_read_block(%struct._GIOChannel* %66, i8* %69, i32 %70), !dbg !548
  br label %72, !dbg !549

; <label>:72:                                     ; preds = %57, %52
  %73 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !550
  %74 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %73, i32 0, i32 6, !dbg !552
  %75 = load i8*, i8** %74, align 8, !dbg !552
  %76 = icmp ne i8* %75, null, !dbg !550
  br i1 %76, label %77, label %92, !dbg !553

; <label>:77:                                     ; preds = %72
  %78 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !554
  %79 = bitcast i32* %6 to i8*, !dbg !556
  %80 = call i32 @g_io_channel_read_block(%struct._GIOChannel* %78, i8* %79, i32 4), !dbg !557
  %81 = load i32, i32* %6, align 4, !dbg !558
  %82 = sext i32 %81 to i64, !dbg !558
  %83 = call noalias i8* @g_malloc0(i64 %82), !dbg !559
  %84 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !560
  %85 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %84, i32 0, i32 6, !dbg !561
  store i8* %83, i8** %85, align 8, !dbg !562
  %86 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !563
  %87 = load %struct.RESOLVED_IP_REC*, %struct.RESOLVED_IP_REC** %5, align 8, !dbg !564
  %88 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %87, i32 0, i32 6, !dbg !565
  %89 = load i8*, i8** %88, align 8, !dbg !565
  %90 = load i32, i32* %6, align 4, !dbg !566
  %91 = call i32 @g_io_channel_read_block(%struct._GIOChannel* %86, i8* %89, i32 %90), !dbg !567
  br label %92, !dbg !568

; <label>:92:                                     ; preds = %77, %72
  br label %93

; <label>:93:                                     ; preds = %92, %35
  store i32 0, i32* %3, align 4, !dbg !569
  br label %94, !dbg !569

; <label>:94:                                     ; preds = %93, %23
  %95 = load i32, i32* %3, align 4, !dbg !570
  ret i32 %95, !dbg !570
}

declare i32 @fcntl(i32, i32, ...) #2

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #2

declare i32 @g_io_channel_read_block(%struct._GIOChannel*, i8*, i32) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

declare noalias i8* @g_malloc0(i64) #2

; Function Attrs: nounwind uwtable
define i32 @net_gethostbyaddr_nonblock(%struct._IPADDR*, void (%struct.RESOLVED_NAME_REC*, i8*)*, i8*) #0 !dbg !571 {
  %4 = alloca %struct._IPADDR*, align 8
  %5 = alloca void (%struct.RESOLVED_NAME_REC*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct._IPADDR* %0, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !587, metadata !301), !dbg !588
  store void (%struct.RESOLVED_NAME_REC*, i8*)* %1, void (%struct.RESOLVED_NAME_REC*, i8*)** %5, align 8
  call void @llvm.dbg.declare(metadata void (%struct.RESOLVED_NAME_REC*, i8*)** %5, metadata !589, metadata !301), !dbg !590
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !591, metadata !301), !dbg !592
  ret i32 0, !dbg !593
}

; Function Attrs: nounwind uwtable
define void @net_disconnect_nonblock(i32) #0 !dbg !594 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !597, metadata !301), !dbg !598
  br label %3, !dbg !599, !llvm.loop !600

; <label>:3:                                      ; preds = %1
  %4 = load i32, i32* %2, align 4, !dbg !601
  %5 = icmp sgt i32 %4, 0, !dbg !605
  br i1 %5, label %6, label %7, !dbg !601

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !606

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.net_disconnect_nonblock, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !609
  br label %12, !dbg !612

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !613

; <label>:9:                                      ; preds = %8
  %10 = load i32, i32* %2, align 4, !dbg !615
  %11 = call i32 @kill(i32 %10, i32 9) #8, !dbg !616
  br label %12, !dbg !617

; <label>:12:                                     ; preds = %9, %7
  ret void, !dbg !618
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @net_connect_nonblock(i8*, i32, %struct._IPADDR*, void (%struct._GIOChannel*, i8*)*, i8*) #0 !dbg !620 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IPADDR*, align 8
  %10 = alloca void (%struct._GIOChannel*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.SIMPLE_THREAD_REC*, align 8
  %13 = alloca [2 x i32], align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !625, metadata !301), !dbg !626
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !627, metadata !301), !dbg !628
  store %struct._IPADDR* %2, %struct._IPADDR** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %9, metadata !629, metadata !301), !dbg !630
  store void (%struct._GIOChannel*, i8*)* %3, void (%struct._GIOChannel*, i8*)** %10, align 8
  call void @llvm.dbg.declare(metadata void (%struct._GIOChannel*, i8*)** %10, metadata !631, metadata !301), !dbg !632
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !633, metadata !301), !dbg !634
  call void @llvm.dbg.declare(metadata %struct.SIMPLE_THREAD_REC** %12, metadata !635, metadata !301), !dbg !636
  call void @llvm.dbg.declare(metadata [2 x i32]* %13, metadata !637, metadata !301), !dbg !639
  br label %14, !dbg !640, !llvm.loop !641

; <label>:14:                                     ; preds = %5
  %15 = load i8*, i8** %7, align 8, !dbg !642
  %16 = icmp ne i8* %15, null, !dbg !646
  br i1 %16, label %17, label %18, !dbg !642

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !647

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.net_connect_nonblock, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !650
  store i32 0, i32* %6, align 4, !dbg !653
  br label %85, !dbg !653

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !654

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !656, !llvm.loop !657

; <label>:21:                                     ; preds = %20
  %22 = load void (%struct._GIOChannel*, i8*)*, void (%struct._GIOChannel*, i8*)** %10, align 8, !dbg !658
  %23 = icmp ne void (%struct._GIOChannel*, i8*)* %22, null, !dbg !662
  br i1 %23, label %24, label %25, !dbg !658

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !663

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.net_connect_nonblock, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !666
  store i32 0, i32* %6, align 4, !dbg !669
  br label %85, !dbg !669

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !670

; <label>:27:                                     ; preds = %26
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i32 0, i32 0, !dbg !672
  %29 = call i32 @pipe(i32* %28) #8, !dbg !674
  %30 = icmp ne i32 %29, 0, !dbg !675
  br i1 %30, label %31, label %32, !dbg !676

; <label>:31:                                     ; preds = %27
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0)), !dbg !677
  store i32 0, i32* %6, align 4, !dbg !679
  br label %85, !dbg !679

; <label>:32:                                     ; preds = %27
  %33 = call noalias i8* @g_malloc0_n(i64 1, i64 56), !dbg !680
  %34 = bitcast i8* %33 to %struct.SIMPLE_THREAD_REC*, !dbg !681
  store %struct.SIMPLE_THREAD_REC* %34, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !682
  %35 = load i32, i32* %8, align 4, !dbg !683
  %36 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !684
  %37 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %36, i32 0, i32 3, !dbg !685
  store i32 %35, i32* %37, align 8, !dbg !686
  %38 = load %struct._IPADDR*, %struct._IPADDR** %9, align 8, !dbg !687
  %39 = icmp ne %struct._IPADDR* %38, null, !dbg !689
  br i1 %39, label %40, label %51, !dbg !690

; <label>:40:                                     ; preds = %32
  %41 = call noalias i8* @g_malloc(i64 20), !dbg !691
  %42 = bitcast i8* %41 to %struct._IPADDR*, !dbg !691
  %43 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !693
  %44 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %43, i32 0, i32 4, !dbg !694
  store %struct._IPADDR* %42, %struct._IPADDR** %44, align 8, !dbg !695
  %45 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !696
  %46 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %45, i32 0, i32 4, !dbg !697
  %47 = load %struct._IPADDR*, %struct._IPADDR** %46, align 8, !dbg !697
  %48 = bitcast %struct._IPADDR* %47 to i8*, !dbg !698
  %49 = load %struct._IPADDR*, %struct._IPADDR** %9, align 8, !dbg !699
  %50 = bitcast %struct._IPADDR* %49 to i8*, !dbg !698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %50, i64 20, i32 4, i1 false), !dbg !698
  br label %51, !dbg !700

; <label>:51:                                     ; preds = %40, %32
  %52 = load void (%struct._GIOChannel*, i8*)*, void (%struct._GIOChannel*, i8*)** %10, align 8, !dbg !701
  %53 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !702
  %54 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %53, i32 0, i32 0, !dbg !703
  store void (%struct._GIOChannel*, i8*)* %52, void (%struct._GIOChannel*, i8*)** %54, align 8, !dbg !704
  %55 = load i8*, i8** %11, align 8, !dbg !705
  %56 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !706
  %57 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %56, i32 0, i32 1, !dbg !707
  store i8* %55, i8** %57, align 8, !dbg !708
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0, !dbg !709
  %59 = load i32, i32* %58, align 4, !dbg !709
  %60 = call %struct._GIOChannel* @g_io_channel_new(i32 %59), !dbg !710
  %61 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !711
  %62 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %61, i32 0, i32 2, !dbg !712
  %63 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %62, i64 0, i64 0, !dbg !711
  store %struct._GIOChannel* %60, %struct._GIOChannel** %63, align 8, !dbg !713
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1, !dbg !714
  %65 = load i32, i32* %64, align 4, !dbg !714
  %66 = call %struct._GIOChannel* @g_io_channel_new(i32 %65), !dbg !715
  %67 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !716
  %68 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %67, i32 0, i32 2, !dbg !717
  %69 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %68, i64 0, i64 1, !dbg !716
  store %struct._GIOChannel* %66, %struct._GIOChannel** %69, align 8, !dbg !718
  %70 = load i8*, i8** %7, align 8, !dbg !719
  %71 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !720
  %72 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %71, i32 0, i32 2, !dbg !721
  %73 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %72, i64 0, i64 1, !dbg !720
  %74 = load %struct._GIOChannel*, %struct._GIOChannel** %73, align 8, !dbg !720
  %75 = call i32 @net_gethostbyname_nonblock(i8* %70, %struct._GIOChannel* %74, i32 0), !dbg !722
  %76 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !723
  %77 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %76, i32 0, i32 2, !dbg !724
  %78 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %77, i64 0, i64 0, !dbg !723
  %79 = load %struct._GIOChannel*, %struct._GIOChannel** %78, align 8, !dbg !723
  %80 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !725
  %81 = bitcast %struct.SIMPLE_THREAD_REC* %80 to i8*, !dbg !725
  %82 = call i32 @g_input_add(%struct._GIOChannel* %79, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SIMPLE_THREAD_REC*, %struct._GIOChannel*)* @simple_readpipe to void (i8*, %struct._GIOChannel*, i32)*), i8* %81), !dbg !726
  %83 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %12, align 8, !dbg !727
  %84 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %83, i32 0, i32 5, !dbg !728
  store i32 %82, i32* %84, align 8, !dbg !729
  store i32 1, i32* %6, align 4, !dbg !730
  br label %85, !dbg !730

; <label>:85:                                     ; preds = %51, %31, %25, %18
  %86 = load i32, i32* %6, align 4, !dbg !731
  ret i32 %86, !dbg !731
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare %struct._GIOChannel* @g_io_channel_new(i32) #2

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @simple_readpipe(%struct.SIMPLE_THREAD_REC*, %struct._GIOChannel*) #0 !dbg !732 {
  %3 = alloca %struct.SIMPLE_THREAD_REC*, align 8
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct.RESOLVED_IP_REC, align 8
  %6 = alloca %struct._GIOChannel*, align 8
  %7 = alloca %struct._IPADDR*, align 8
  store %struct.SIMPLE_THREAD_REC* %0, %struct.SIMPLE_THREAD_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SIMPLE_THREAD_REC** %3, metadata !735, metadata !301), !dbg !736
  store %struct._GIOChannel* %1, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !737, metadata !301), !dbg !738
  call void @llvm.dbg.declare(metadata %struct.RESOLVED_IP_REC* %5, metadata !739, metadata !301), !dbg !740
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %6, metadata !741, metadata !301), !dbg !742
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %7, metadata !743, metadata !301), !dbg !744
  br label %8, !dbg !745, !llvm.loop !746

; <label>:8:                                      ; preds = %2
  %9 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !747
  %10 = icmp ne %struct.SIMPLE_THREAD_REC* %9, null, !dbg !751
  br i1 %10, label %11, label %12, !dbg !747

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !752

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.simple_readpipe, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !755
  br label %89, !dbg !758

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !759

; <label>:14:                                     ; preds = %13
  %15 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !761
  %16 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %15, i32 0, i32 5, !dbg !762
  %17 = load i32, i32* %16, align 8, !dbg !762
  %18 = call i32 @g_source_remove(i32 %17), !dbg !763
  %19 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !764
  %20 = call i32 @net_gethostbyname_return(%struct._GIOChannel* %19, %struct.RESOLVED_IP_REC* %5), !dbg !765
  %21 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %5, i32 0, i32 4, !dbg !766
  %22 = load i8*, i8** %21, align 8, !dbg !766
  call void @g_free(i8* %22), !dbg !767
  %23 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !768
  %24 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %23, i32 0, i32 2, !dbg !769
  %25 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %24, i64 0, i64 0, !dbg !768
  %26 = load %struct._GIOChannel*, %struct._GIOChannel** %25, align 8, !dbg !768
  %27 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %26, i32 1, %struct._GError** null), !dbg !770
  %28 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !771
  %29 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %28, i32 0, i32 2, !dbg !772
  %30 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %29, i64 0, i64 0, !dbg !771
  %31 = load %struct._GIOChannel*, %struct._GIOChannel** %30, align 8, !dbg !771
  call void @g_io_channel_unref(%struct._GIOChannel* %31), !dbg !773
  %32 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !774
  %33 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %32, i32 0, i32 2, !dbg !775
  %34 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %33, i64 0, i64 1, !dbg !774
  %35 = load %struct._GIOChannel*, %struct._GIOChannel** %34, align 8, !dbg !774
  %36 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %35, i32 1, %struct._GError** null), !dbg !776
  %37 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !777
  %38 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %37, i32 0, i32 2, !dbg !778
  %39 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %38, i64 0, i64 1, !dbg !777
  %40 = load %struct._GIOChannel*, %struct._GIOChannel** %39, align 8, !dbg !777
  call void @g_io_channel_unref(%struct._GIOChannel* %40), !dbg !779
  %41 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %5, i32 0, i32 0, !dbg !780
  %42 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %41, i32 0, i32 0, !dbg !781
  %43 = load i16, i16* %42, align 8, !dbg !781
  %44 = zext i16 %43 to i32, !dbg !782
  %45 = icmp ne i32 %44, 0, !dbg !783
  br i1 %45, label %46, label %48, !dbg !782

; <label>:46:                                     ; preds = %14
  %47 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %5, i32 0, i32 0, !dbg !784
  br label %50, !dbg !786

; <label>:48:                                     ; preds = %14
  %49 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %5, i32 0, i32 1, !dbg !787
  br label %50, !dbg !789

; <label>:50:                                     ; preds = %48, %46
  %51 = phi %struct._IPADDR* [ %47, %46 ], [ %49, %48 ], !dbg !790
  store %struct._IPADDR* %51, %struct._IPADDR** %7, align 8, !dbg !792
  %52 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %5, i32 0, i32 2, !dbg !793
  %53 = load i32, i32* %52, align 8, !dbg !793
  %54 = icmp eq i32 %53, -1, !dbg !794
  br i1 %54, label %55, label %56, !dbg !795

; <label>:55:                                     ; preds = %50
  br label %65, !dbg !796

; <label>:56:                                     ; preds = %50
  %57 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !797
  %58 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !798
  %59 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %58, i32 0, i32 3, !dbg !799
  %60 = load i32, i32* %59, align 8, !dbg !799
  %61 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !800
  %62 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %61, i32 0, i32 4, !dbg !801
  %63 = load %struct._IPADDR*, %struct._IPADDR** %62, align 8, !dbg !801
  %64 = call %struct._GIOChannel* @net_connect_ip(%struct._IPADDR* %57, i32 %60, %struct._IPADDR* %63), !dbg !802
  br label %65, !dbg !803

; <label>:65:                                     ; preds = %56, %55
  %66 = phi %struct._GIOChannel* [ null, %55 ], [ %64, %56 ], !dbg !804
  store %struct._GIOChannel* %66, %struct._GIOChannel** %6, align 8, !dbg !805
  %67 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !806
  %68 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %67, i32 0, i32 4, !dbg !807
  %69 = load %struct._IPADDR*, %struct._IPADDR** %68, align 8, !dbg !807
  %70 = bitcast %struct._IPADDR* %69 to i8*, !dbg !806
  call void @g_free(i8* %70), !dbg !808
  %71 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !809
  %72 = icmp eq %struct._GIOChannel* %71, null, !dbg !811
  br i1 %72, label %73, label %82, !dbg !812

; <label>:73:                                     ; preds = %65
  %74 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !813
  %75 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %74, i32 0, i32 0, !dbg !815
  %76 = load void (%struct._GIOChannel*, i8*)*, void (%struct._GIOChannel*, i8*)** %75, align 8, !dbg !815
  %77 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !816
  %78 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %77, i32 0, i32 1, !dbg !817
  %79 = load i8*, i8** %78, align 8, !dbg !817
  call void %76(%struct._GIOChannel* null, i8* %79), !dbg !813
  %80 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !818
  %81 = bitcast %struct.SIMPLE_THREAD_REC* %80 to i8*, !dbg !818
  call void @g_free(i8* %81), !dbg !819
  br label %89, !dbg !820

; <label>:82:                                     ; preds = %65
  %83 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !821
  %84 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !822
  %85 = bitcast %struct.SIMPLE_THREAD_REC* %84 to i8*, !dbg !822
  %86 = call i32 @g_input_add(%struct._GIOChannel* %83, i32 3, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.SIMPLE_THREAD_REC*, %struct._GIOChannel*)* @simple_init to void (i8*, %struct._GIOChannel*, i32)*), i8* %85), !dbg !823
  %87 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !824
  %88 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %87, i32 0, i32 5, !dbg !825
  store i32 %86, i32* %88, align 8, !dbg !826
  br label %89, !dbg !827

; <label>:89:                                     ; preds = %82, %73, %12
  ret void, !dbg !828
}

declare i32 @g_source_remove(i32) #2

declare void @g_free(i8*) #2

declare i32 @g_io_channel_shutdown(%struct._GIOChannel*, i32, %struct._GError**) #2

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

declare %struct._GIOChannel* @net_connect_ip(%struct._IPADDR*, i32, %struct._IPADDR*) #2

; Function Attrs: nounwind uwtable
define internal void @simple_init(%struct.SIMPLE_THREAD_REC*, %struct._GIOChannel*) #0 !dbg !829 {
  %3 = alloca %struct.SIMPLE_THREAD_REC*, align 8
  %4 = alloca %struct._GIOChannel*, align 8
  store %struct.SIMPLE_THREAD_REC* %0, %struct.SIMPLE_THREAD_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SIMPLE_THREAD_REC** %3, metadata !830, metadata !301), !dbg !831
  store %struct._GIOChannel* %1, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !832, metadata !301), !dbg !833
  br label %5, !dbg !834, !llvm.loop !835

; <label>:5:                                      ; preds = %2
  %6 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !836
  %7 = icmp ne %struct.SIMPLE_THREAD_REC* %6, null, !dbg !840
  br i1 %7, label %8, label %9, !dbg !836

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !841

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.simple_init, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)), !dbg !844
  br label %33, !dbg !847

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !848

; <label>:11:                                     ; preds = %10
  %12 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !850
  %13 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %12, i32 0, i32 5, !dbg !851
  %14 = load i32, i32* %13, align 8, !dbg !851
  %15 = call i32 @g_source_remove(i32 %14), !dbg !852
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !853
  %17 = call i32 @net_geterror(%struct._GIOChannel* %16), !dbg !855
  %18 = icmp ne i32 %17, 0, !dbg !856
  br i1 %18, label %19, label %23, !dbg !857

; <label>:19:                                     ; preds = %11
  %20 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !858
  %21 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %20, i32 1, %struct._GError** null), !dbg !860
  %22 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !861
  call void @g_io_channel_unref(%struct._GIOChannel* %22), !dbg !862
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !863
  br label %23, !dbg !864

; <label>:23:                                     ; preds = %19, %11
  %24 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !865
  %25 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %24, i32 0, i32 0, !dbg !866
  %26 = load void (%struct._GIOChannel*, i8*)*, void (%struct._GIOChannel*, i8*)** %25, align 8, !dbg !866
  %27 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !867
  %28 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !868
  %29 = getelementptr inbounds %struct.SIMPLE_THREAD_REC, %struct.SIMPLE_THREAD_REC* %28, i32 0, i32 1, !dbg !869
  %30 = load i8*, i8** %29, align 8, !dbg !869
  call void %26(%struct._GIOChannel* %27, i8* %30), !dbg !865
  %31 = load %struct.SIMPLE_THREAD_REC*, %struct.SIMPLE_THREAD_REC** %3, align 8, !dbg !870
  %32 = bitcast %struct.SIMPLE_THREAD_REC* %31 to i8*, !dbg !870
  call void @g_free(i8* %32), !dbg !871
  br label %33, !dbg !872

; <label>:33:                                     ; preds = %23, %9
  ret void, !dbg !873
}

declare i32 @net_geterror(%struct._GIOChannel*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!293, !294}
!llvm.ident = !{!295}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47)
!1 = !DIFile(filename: "line55-net-nonblock.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 69, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!7 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!8 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!9 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!13 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!14 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_IO_IN", value: 1)
!19 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!20 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!21 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!22 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!23 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 84, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!27 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!28 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!29 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!30 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!31 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!32 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!33 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!34 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 51, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!39 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!47 = !{!48, !49, !53, !55, !289}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIMPLE_THREAD_REC", file: !57, line: 36, baseType: !58)
!57 = !DIFile(filename: "net-nonblock.c", directory: "/home/lichi/Desktop/irssi/task1")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 28, size: 448, align: 64, elements: !59)
!59 = !{!60, !249, !250, !254, !255, !288}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !58, file: !57, line: 29, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_CALLBACK", file: !62, line: 24, baseType: !63)
!62 = !DIFile(filename: "net-nonblock.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !48}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !69)
!69 = !{!70, !73, !216, !217, !222, !223, !224, !225, !226, !235, !236, !237, !241, !242, !243, !244, !245, !246, !247, !248}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !68, file: !4, line: 100, baseType: !71, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !51, line: 49, baseType: !72)
!72 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !68, file: !4, line: 101, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !77)
!77 = !{!78, !100, !106, !113, !117, !203, !207, !212}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !76, file: !4, line: 133, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !66, !49, !83, !86, !87}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !84, line: 66, baseType: !85)
!84 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!85 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !90, line: 42, baseType: !91)
!90 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !90, line: 44, size: 128, align: 64, elements: !92)
!92 = !{!93, !98, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !91, file: !90, line: 46, baseType: !94, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !95, line: 36, baseType: !96)
!95 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !84, line: 45, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !91, file: !90, line: 47, baseType: !71, size: 32, align: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !91, file: !90, line: 48, baseType: !49, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !76, file: !4, line: 138, baseType: !101, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!82, !66, !104, !83, !86, !87}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !76, file: !4, line: 143, baseType: !107, size: 64, align: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!82, !66, !110, !112, !87}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !84, line: 51, baseType: !111)
!111 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !76, file: !4, line: 147, baseType: !114, size: 64, align: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!82, !66, !87}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !76, file: !4, line: 149, baseType: !118, size: 64, align: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !66, !202}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !124)
!124 = !{!125, !127, !148, !177, !179, !183, !184, !185, !186, !194, !195, !196, !198}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !123, file: !16, line: 174, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !51, line: 77, baseType: !48)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !123, file: !16, line: 175, baseType: !128, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !131)
!131 = !{!132, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !130, file: !16, line: 198, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !126}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !130, file: !16, line: 199, baseType: !133, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !130, file: !16, line: 200, baseType: !138, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !126, !121, !141, !147}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !126}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !51, line: 50, baseType: !71)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !123, file: !16, line: 177, baseType: !149, size: 64, align: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !153)
!153 = !{!154, !159, !163, !167, !171, !172}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !152, file: !16, line: 216, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!146, !121, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !152, file: !16, line: 218, baseType: !160, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!146, !121}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !152, file: !16, line: 219, baseType: !164, size: 64, align: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!146, !121, !142, !126}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !152, file: !16, line: 222, baseType: !168, size: 64, align: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !121}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !152, file: !16, line: 226, baseType: !142, size: 64, align: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !152, file: !16, line: 227, baseType: !173, size: 64, align: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !123, file: !16, line: 178, baseType: !178, size: 32, align: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !51, line: 55, baseType: !97)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !123, file: !16, line: 180, baseType: !180, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !123, file: !16, line: 182, baseType: !71, size: 32, align: 32, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !16, line: 183, baseType: !178, size: 32, align: 32, offset: 352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !123, file: !16, line: 184, baseType: !178, size: 32, align: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !123, file: !16, line: 186, baseType: !187, size: 64, align: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !189, line: 37, baseType: !190)
!189 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !189, line: 39, size: 128, align: 64, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !190, file: !189, line: 41, baseType: !126, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !189, line: 42, baseType: !187, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !16, line: 188, baseType: !121, size: 64, align: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !16, line: 189, baseType: !121, size: 64, align: 64, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !16, line: 191, baseType: !197, size: 64, align: 64, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !123, file: !16, line: 193, baseType: !199, size: 64, align: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !76, file: !4, line: 151, baseType: !204, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !66}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !76, file: !4, line: 152, baseType: !208, size: 64, align: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!82, !66, !211, !87}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !76, file: !4, line: 155, baseType: !213, size: 64, align: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!211, !66}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !68, file: !4, line: 103, baseType: !49, size: 64, align: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !68, file: !4, line: 104, baseType: !218, size: 64, align: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !219, line: 77, baseType: !220)
!219 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !219, line: 77, flags: DIFlagFwdDecl)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !68, file: !4, line: 105, baseType: !218, size: 64, align: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !68, file: !4, line: 106, baseType: !49, size: 64, align: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !68, file: !4, line: 107, baseType: !178, size: 32, align: 32, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !68, file: !4, line: 109, baseType: !83, size: 64, align: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !68, file: !4, line: 110, baseType: !227, size: 64, align: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !229, line: 39, baseType: !230)
!229 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !229, line: 41, size: 192, align: 64, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !230, file: !229, line: 43, baseType: !49, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !230, file: !229, line: 44, baseType: !83, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !230, file: !229, line: 45, baseType: !83, size: 64, align: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !68, file: !4, line: 111, baseType: !227, size: 64, align: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !68, file: !4, line: 112, baseType: !227, size: 64, align: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !68, file: !4, line: 113, baseType: !238, size: 48, align: 8, offset: 704)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 48, align: 8, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 6)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !68, file: !4, line: 117, baseType: !178, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !68, file: !4, line: 118, baseType: !178, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !68, file: !4, line: 119, baseType: !178, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !68, file: !4, line: 120, baseType: !178, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !68, file: !4, line: 121, baseType: !178, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !68, file: !4, line: 122, baseType: !178, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !68, file: !4, line: 124, baseType: !126, size: 64, align: 64, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !68, file: !4, line: 125, baseType: !126, size: 64, align: 64, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !57, line: 30, baseType: !48, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pipes", scope: !58, file: !57, line: 32, baseType: !251, size: 128, align: 64, offset: 128)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 128, align: 64, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 2)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !58, file: !57, line: 33, baseType: !72, size: 32, align: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "my_ip", scope: !58, file: !57, line: 34, baseType: !256, size: 64, align: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !258, line: 99, baseType: !259)
!258 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !260, line: 22, size: 160, align: 32, elements: !261)
!260 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !259, file: !260, line: 23, baseType: !263, size: 16, align: 16)
!263 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !259, file: !260, line: 24, baseType: !265, size: 128, align: 32, offset: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !266, line: 211, size: 128, align: 32, elements: !267)
!266 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !265, file: !266, line: 220, baseType: !269, size: 128, align: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !266, line: 213, size: 128, align: 32, elements: !270)
!270 = !{!271, !278, !283}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !269, file: !266, line: 215, baseType: !272, size: 128, align: 8)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 128, align: 8, elements: !276)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !274, line: 48, baseType: !275)
!274 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!275 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!276 = !{!277}
!277 = !DISubrange(count: 16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !269, file: !266, line: 217, baseType: !279, size: 128, align: 16)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 128, align: 16, elements: !281)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !274, line: 49, baseType: !263)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !269, file: !266, line: 218, baseType: !284, size: 128, align: 32)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, align: 32, elements: !286)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !274, line: 51, baseType: !97)
!286 = !{!287}
!287 = !DISubrange(count: 4)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !58, file: !57, line: 35, baseType: !72, size: 32, align: 32, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !258, line: 60, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !48, !66, !72}
!293 = !{i32 2, !"Dwarf Version", i32 4}
!294 = !{i32 2, !"Debug Info Version", i32 3}
!295 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!296 = distinct !DISubprogram(name: "net_gethostbyname_nonblock", scope: !57, file: !57, line: 40, type: !297, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!72, !53, !66, !72}
!299 = !{}
!300 = !DILocalVariable(name: "addr", arg: 1, scope: !296, file: !57, line: 40, type: !53)
!301 = !DIExpression()
!302 = !DILocation(line: 40, column: 44, scope: !296)
!303 = !DILocalVariable(name: "pipe", arg: 2, scope: !296, file: !57, line: 40, type: !66)
!304 = !DILocation(line: 40, column: 62, scope: !296)
!305 = !DILocalVariable(name: "reverse_lookup", arg: 3, scope: !296, file: !57, line: 41, type: !72)
!306 = !DILocation(line: 41, column: 15, scope: !296)
!307 = !DILocalVariable(name: "rec", scope: !296, file: !57, line: 43, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESOLVED_IP_REC", file: !62, line: 13, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 6, size: 576, align: 64, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !309, file: !62, line: 7, baseType: !257, size: 160, align: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !309, file: !62, line: 7, baseType: !257, size: 160, align: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !309, file: !62, line: 8, baseType: !72, size: 32, align: 32, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "errlen", scope: !309, file: !62, line: 9, baseType: !72, size: 32, align: 32, offset: 352)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "errorstr", scope: !309, file: !62, line: 10, baseType: !197, size: 64, align: 64, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "host4", scope: !309, file: !62, line: 12, baseType: !197, size: 64, align: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "host6", scope: !309, file: !62, line: 12, baseType: !197, size: 64, align: 64, offset: 512)
!318 = !DILocation(line: 43, column: 18, scope: !296)
!319 = !DILocalVariable(name: "errorstr", scope: !296, file: !57, line: 44, type: !53)
!320 = !DILocation(line: 44, column: 14, scope: !296)
!321 = !DILocalVariable(name: "pid", scope: !296, file: !57, line: 45, type: !72)
!322 = !DILocation(line: 45, column: 6, scope: !296)
!323 = !DILocalVariable(name: "len", scope: !296, file: !57, line: 46, type: !72)
!324 = !DILocation(line: 46, column: 6, scope: !296)
!325 = !DILocation(line: 48, column: 2, scope: !296)
!326 = distinct !{!326, !325}
!327 = !DILocation(line: 48, column: 10, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !57, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !330, file: !57, line: 48, column: 10)
!330 = distinct !DILexicalBlock(scope: !296, file: !57, line: 48, column: 4)
!331 = !DILocation(line: 48, column: 15, scope: !328)
!332 = !DILocation(line: 48, column: 5, scope: !333)
!333 = !DILexicalBlockFile(scope: !334, file: !57, discriminator: 2)
!334 = distinct !DILexicalBlock(scope: !329, file: !57, line: 48, column: 3)
!335 = !DILocation(line: 48, column: 14, scope: !336)
!336 = !DILexicalBlockFile(scope: !337, file: !57, discriminator: 3)
!337 = distinct !DILexicalBlock(scope: !329, file: !57, line: 48, column: 12)
!338 = !DILocation(line: 48, column: 99, scope: !336)
!339 = !DILocation(line: 48, column: 116, scope: !340)
!340 = !DILexicalBlockFile(scope: !330, file: !57, discriminator: 4)
!341 = !DILocation(line: 50, column: 8, scope: !296)
!342 = !DILocation(line: 50, column: 6, scope: !296)
!343 = !DILocation(line: 51, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !296, file: !57, line: 51, column: 6)
!345 = !DILocation(line: 51, column: 10, scope: !344)
!346 = !DILocation(line: 51, column: 6, scope: !296)
!347 = !DILocation(line: 53, column: 15, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !57, line: 51, column: 15)
!349 = !DILocation(line: 53, column: 3, scope: !348)
!350 = !DILocation(line: 54, column: 10, scope: !348)
!351 = !DILocation(line: 54, column: 3, scope: !348)
!352 = !DILocation(line: 57, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !296, file: !57, line: 57, column: 6)
!354 = !DILocation(line: 57, column: 10, scope: !353)
!355 = !DILocation(line: 57, column: 6, scope: !296)
!356 = !DILocation(line: 59, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !57, line: 57, column: 16)
!358 = !DILocation(line: 61, column: 2, scope: !357)
!359 = !DILocation(line: 64, column: 8, scope: !296)
!360 = !DILocation(line: 64, column: 2, scope: !361)
!361 = !DILexicalBlockFile(scope: !296, file: !57, discriminator: 1)
!362 = !DILocation(line: 66, column: 9, scope: !296)
!363 = !DILocation(line: 67, column: 32, scope: !296)
!364 = !DILocation(line: 67, column: 43, scope: !296)
!365 = !DILocation(line: 67, column: 53, scope: !296)
!366 = !DILocation(line: 67, column: 14, scope: !296)
!367 = !DILocation(line: 67, column: 6, scope: !296)
!368 = !DILocation(line: 67, column: 12, scope: !296)
!369 = !DILocation(line: 68, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !296, file: !57, line: 68, column: 6)
!371 = !DILocation(line: 68, column: 16, scope: !370)
!372 = !DILocation(line: 68, column: 6, scope: !296)
!373 = !DILocation(line: 69, column: 12, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !57, line: 68, column: 22)
!375 = !DILocation(line: 70, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !374, file: !57, line: 70, column: 7)
!377 = !DILocation(line: 70, column: 7, scope: !374)
!378 = !DILocation(line: 72, column: 12, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !57, line: 72, column: 8)
!380 = distinct !DILexicalBlock(scope: !376, file: !57, line: 70, column: 23)
!381 = !DILocation(line: 72, column: 16, scope: !379)
!382 = !DILocation(line: 72, column: 8, scope: !379)
!383 = !DILocation(line: 72, column: 23, scope: !379)
!384 = !DILocation(line: 72, column: 8, scope: !380)
!385 = !DILocation(line: 73, column: 28, scope: !379)
!386 = !DILocation(line: 73, column: 38, scope: !379)
!387 = !DILocation(line: 73, column: 5, scope: !379)
!388 = !DILocation(line: 74, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !380, file: !57, line: 74, column: 8)
!390 = !DILocation(line: 74, column: 16, scope: !389)
!391 = !DILocation(line: 74, column: 8, scope: !389)
!392 = !DILocation(line: 74, column: 23, scope: !389)
!393 = !DILocation(line: 74, column: 8, scope: !380)
!394 = !DILocation(line: 75, column: 28, scope: !389)
!395 = !DILocation(line: 75, column: 38, scope: !389)
!396 = !DILocation(line: 75, column: 5, scope: !389)
!397 = !DILocation(line: 76, column: 3, scope: !380)
!398 = !DILocation(line: 77, column: 2, scope: !374)
!399 = !DILocation(line: 78, column: 35, scope: !400)
!400 = distinct !DILexicalBlock(scope: !370, file: !57, line: 77, column: 9)
!401 = !DILocation(line: 78, column: 14, scope: !400)
!402 = !DILocation(line: 78, column: 12, scope: !400)
!403 = !DILocation(line: 79, column: 16, scope: !400)
!404 = !DILocation(line: 79, column: 25, scope: !400)
!405 = !DILocation(line: 79, column: 16, scope: !406)
!406 = !DILexicalBlockFile(scope: !400, file: !57, discriminator: 1)
!407 = !DILocation(line: 79, column: 45, scope: !408)
!408 = !DILexicalBlockFile(scope: !400, file: !57, discriminator: 2)
!409 = !DILocation(line: 79, column: 38, scope: !408)
!410 = !DILocation(line: 79, column: 54, scope: !408)
!411 = !DILocation(line: 79, column: 16, scope: !408)
!412 = !DILocation(line: 79, column: 16, scope: !413)
!413 = !DILexicalBlockFile(scope: !400, file: !57, discriminator: 3)
!414 = !DILocation(line: 79, column: 7, scope: !413)
!415 = !DILocation(line: 79, column: 14, scope: !413)
!416 = !DILocation(line: 82, column: 34, scope: !296)
!417 = !DILocation(line: 82, column: 40, scope: !296)
!418 = !DILocation(line: 82, column: 9, scope: !296)
!419 = !DILocation(line: 83, column: 10, scope: !420)
!420 = distinct !DILexicalBlock(scope: !296, file: !57, line: 83, column: 6)
!421 = !DILocation(line: 83, column: 17, scope: !420)
!422 = !DILocation(line: 83, column: 6, scope: !296)
!423 = !DILocation(line: 84, column: 28, scope: !420)
!424 = !DILocation(line: 84, column: 43, scope: !420)
!425 = !DILocation(line: 84, column: 57, scope: !420)
!426 = !DILocation(line: 84, column: 3, scope: !420)
!427 = !DILocation(line: 86, column: 11, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !57, line: 86, column: 7)
!429 = distinct !DILexicalBlock(scope: !420, file: !57, line: 85, column: 7)
!430 = !DILocation(line: 86, column: 7, scope: !428)
!431 = !DILocation(line: 86, column: 7, scope: !429)
!432 = !DILocation(line: 87, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !428, file: !57, line: 86, column: 18)
!434 = !DILocation(line: 87, column: 10, scope: !433)
!435 = !DILocation(line: 87, column: 28, scope: !433)
!436 = !DILocation(line: 87, column: 8, scope: !433)
!437 = !DILocation(line: 88, column: 29, scope: !433)
!438 = !DILocation(line: 88, column: 35, scope: !433)
!439 = !DILocation(line: 88, column: 4, scope: !433)
!440 = !DILocation(line: 90, column: 29, scope: !433)
!441 = !DILocation(line: 90, column: 48, scope: !433)
!442 = !DILocation(line: 91, column: 14, scope: !433)
!443 = !DILocation(line: 90, column: 4, scope: !433)
!444 = !DILocation(line: 92, column: 3, scope: !433)
!445 = !DILocation(line: 93, column: 11, scope: !446)
!446 = distinct !DILexicalBlock(scope: !429, file: !57, line: 93, column: 7)
!447 = !DILocation(line: 93, column: 7, scope: !446)
!448 = !DILocation(line: 93, column: 7, scope: !429)
!449 = !DILocation(line: 94, column: 21, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !57, line: 93, column: 18)
!451 = !DILocation(line: 94, column: 10, scope: !450)
!452 = !DILocation(line: 94, column: 28, scope: !450)
!453 = !DILocation(line: 94, column: 8, scope: !450)
!454 = !DILocation(line: 95, column: 29, scope: !450)
!455 = !DILocation(line: 95, column: 35, scope: !450)
!456 = !DILocation(line: 95, column: 4, scope: !450)
!457 = !DILocation(line: 97, column: 29, scope: !450)
!458 = !DILocation(line: 97, column: 48, scope: !450)
!459 = !DILocation(line: 98, column: 14, scope: !450)
!460 = !DILocation(line: 97, column: 4, scope: !450)
!461 = !DILocation(line: 99, column: 3, scope: !450)
!462 = !DILocation(line: 102, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !296, file: !57, line: 102, column: 6)
!464 = !DILocation(line: 102, column: 10, scope: !463)
!465 = !DILocation(line: 102, column: 6, scope: !296)
!466 = !DILocation(line: 103, column: 3, scope: !463)
!467 = !DILocation(line: 106, column: 2, scope: !296)
!468 = !DILocation(line: 107, column: 1, scope: !296)
!469 = distinct !DISubprogram(name: "net_gethostbyname_return", scope: !57, file: !57, line: 110, type: !470, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !299)
!470 = !DISubroutineType(types: !471)
!471 = !{!72, !66, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!473 = !DILocalVariable(name: "pipe", arg: 1, scope: !469, file: !57, line: 110, type: !66)
!474 = !DILocation(line: 110, column: 42, scope: !469)
!475 = !DILocalVariable(name: "rec", arg: 2, scope: !469, file: !57, line: 110, type: !472)
!476 = !DILocation(line: 110, column: 65, scope: !469)
!477 = !DILocalVariable(name: "len", scope: !469, file: !57, line: 112, type: !72)
!478 = !DILocation(line: 112, column: 6, scope: !469)
!479 = !DILocation(line: 114, column: 2, scope: !469)
!480 = !DILocation(line: 114, column: 7, scope: !469)
!481 = !DILocation(line: 114, column: 13, scope: !469)
!482 = !DILocation(line: 115, column: 2, scope: !469)
!483 = !DILocation(line: 115, column: 7, scope: !469)
!484 = !DILocation(line: 115, column: 16, scope: !469)
!485 = !DILocation(line: 116, column: 2, scope: !469)
!486 = !DILocation(line: 116, column: 7, scope: !469)
!487 = !DILocation(line: 116, column: 13, scope: !469)
!488 = !DILocation(line: 117, column: 2, scope: !469)
!489 = !DILocation(line: 117, column: 7, scope: !469)
!490 = !DILocation(line: 117, column: 13, scope: !469)
!491 = !DILocation(line: 119, column: 33, scope: !469)
!492 = !DILocation(line: 119, column: 8, scope: !469)
!493 = !DILocation(line: 119, column: 2, scope: !494)
!494 = !DILexicalBlockFile(scope: !469, file: !57, discriminator: 1)
!495 = !DILocation(line: 122, column: 30, scope: !496)
!496 = distinct !DILexicalBlock(scope: !469, file: !57, line: 122, column: 6)
!497 = !DILocation(line: 122, column: 36, scope: !496)
!498 = !DILocation(line: 122, column: 6, scope: !496)
!499 = !DILocation(line: 122, column: 55, scope: !496)
!500 = !DILocation(line: 122, column: 6, scope: !469)
!501 = !DILocation(line: 124, column: 19, scope: !502)
!502 = distinct !DILexicalBlock(scope: !496, file: !57, line: 122, column: 62)
!503 = !DILocation(line: 124, column: 18, scope: !502)
!504 = !DILocation(line: 124, column: 7, scope: !505)
!505 = !DILexicalBlockFile(scope: !502, file: !57, discriminator: 1)
!506 = !DILocation(line: 123, column: 19, scope: !502)
!507 = !DILocation(line: 123, column: 3, scope: !502)
!508 = !DILocation(line: 123, column: 8, scope: !502)
!509 = !DILocation(line: 123, column: 17, scope: !502)
!510 = !DILocation(line: 125, column: 3, scope: !502)
!511 = !DILocation(line: 128, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !469, file: !57, line: 128, column: 6)
!513 = !DILocation(line: 128, column: 11, scope: !512)
!514 = !DILocation(line: 128, column: 6, scope: !469)
!515 = !DILocation(line: 131, column: 29, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !57, line: 128, column: 18)
!517 = !DILocation(line: 131, column: 34, scope: !516)
!518 = !DILocation(line: 131, column: 40, scope: !516)
!519 = !DILocation(line: 131, column: 19, scope: !516)
!520 = !DILocation(line: 131, column: 3, scope: !516)
!521 = !DILocation(line: 131, column: 8, scope: !516)
!522 = !DILocation(line: 131, column: 17, scope: !516)
!523 = !DILocation(line: 132, column: 41, scope: !516)
!524 = !DILocation(line: 132, column: 47, scope: !516)
!525 = !DILocation(line: 132, column: 52, scope: !516)
!526 = !DILocation(line: 132, column: 62, scope: !516)
!527 = !DILocation(line: 132, column: 67, scope: !516)
!528 = !DILocation(line: 132, column: 17, scope: !516)
!529 = !DILocation(line: 133, column: 2, scope: !516)
!530 = !DILocation(line: 134, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !57, line: 134, column: 7)
!532 = distinct !DILexicalBlock(scope: !512, file: !57, line: 133, column: 9)
!533 = !DILocation(line: 134, column: 12, scope: !531)
!534 = !DILocation(line: 134, column: 7, scope: !532)
!535 = !DILocation(line: 135, column: 28, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !57, line: 134, column: 19)
!537 = !DILocation(line: 135, column: 34, scope: !536)
!538 = !DILocation(line: 135, column: 4, scope: !536)
!539 = !DILocation(line: 136, column: 27, scope: !536)
!540 = !DILocation(line: 136, column: 17, scope: !536)
!541 = !DILocation(line: 136, column: 4, scope: !536)
!542 = !DILocation(line: 136, column: 9, scope: !536)
!543 = !DILocation(line: 136, column: 15, scope: !536)
!544 = !DILocation(line: 137, column: 28, scope: !536)
!545 = !DILocation(line: 137, column: 34, scope: !536)
!546 = !DILocation(line: 137, column: 39, scope: !536)
!547 = !DILocation(line: 137, column: 46, scope: !536)
!548 = !DILocation(line: 137, column: 4, scope: !536)
!549 = !DILocation(line: 138, column: 3, scope: !536)
!550 = !DILocation(line: 139, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !532, file: !57, line: 139, column: 7)
!552 = !DILocation(line: 139, column: 12, scope: !551)
!553 = !DILocation(line: 139, column: 7, scope: !532)
!554 = !DILocation(line: 140, column: 28, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !57, line: 139, column: 19)
!556 = !DILocation(line: 140, column: 34, scope: !555)
!557 = !DILocation(line: 140, column: 4, scope: !555)
!558 = !DILocation(line: 141, column: 27, scope: !555)
!559 = !DILocation(line: 141, column: 17, scope: !555)
!560 = !DILocation(line: 141, column: 4, scope: !555)
!561 = !DILocation(line: 141, column: 9, scope: !555)
!562 = !DILocation(line: 141, column: 15, scope: !555)
!563 = !DILocation(line: 142, column: 28, scope: !555)
!564 = !DILocation(line: 142, column: 34, scope: !555)
!565 = !DILocation(line: 142, column: 39, scope: !555)
!566 = !DILocation(line: 142, column: 46, scope: !555)
!567 = !DILocation(line: 142, column: 4, scope: !555)
!568 = !DILocation(line: 143, column: 3, scope: !555)
!569 = !DILocation(line: 146, column: 2, scope: !469)
!570 = !DILocation(line: 147, column: 1, scope: !469)
!571 = distinct !DISubprogram(name: "net_gethostbyaddr_nonblock", scope: !57, file: !57, line: 150, type: !572, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !299)
!572 = !DISubroutineType(types: !573)
!573 = !{!72, !256, !574, !48}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_HOST_CALLBACK", file: !62, line: 25, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578, !48}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESOLVED_NAME_REC", file: !62, line: 22, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 15, size: 256, align: 64, elements: !581)
!581 = !{!582, !583, !584, !585, !586}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !580, file: !62, line: 16, baseType: !72, size: 32, align: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !580, file: !62, line: 17, baseType: !197, size: 64, align: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !580, file: !62, line: 19, baseType: !72, size: 32, align: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "errlen", scope: !580, file: !62, line: 20, baseType: !72, size: 32, align: 32, offset: 160)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "errorstr", scope: !580, file: !62, line: 21, baseType: !197, size: 64, align: 64, offset: 192)
!587 = !DILocalVariable(name: "ip", arg: 1, scope: !571, file: !57, line: 150, type: !256)
!588 = !DILocation(line: 150, column: 40, scope: !571)
!589 = !DILocalVariable(name: "func", arg: 2, scope: !571, file: !57, line: 150, type: !574)
!590 = !DILocation(line: 150, column: 62, scope: !571)
!591 = !DILocalVariable(name: "data", arg: 3, scope: !571, file: !57, line: 150, type: !48)
!592 = !DILocation(line: 150, column: 74, scope: !571)
!593 = !DILocation(line: 153, column: 2, scope: !571)
!594 = distinct !DISubprogram(name: "net_disconnect_nonblock", scope: !57, file: !57, line: 157, type: !595, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !299)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !72}
!597 = !DILocalVariable(name: "pid", arg: 1, scope: !594, file: !57, line: 157, type: !72)
!598 = !DILocation(line: 157, column: 34, scope: !594)
!599 = !DILocation(line: 159, column: 2, scope: !594)
!600 = distinct !{!600, !599}
!601 = !DILocation(line: 159, column: 10, scope: !602)
!602 = !DILexicalBlockFile(scope: !603, file: !57, discriminator: 1)
!603 = distinct !DILexicalBlock(scope: !604, file: !57, line: 159, column: 10)
!604 = distinct !DILexicalBlock(scope: !594, file: !57, line: 159, column: 4)
!605 = !DILocation(line: 159, column: 14, scope: !602)
!606 = !DILocation(line: 159, column: 21, scope: !607)
!607 = !DILexicalBlockFile(scope: !608, file: !57, discriminator: 2)
!608 = distinct !DILexicalBlock(scope: !603, file: !57, line: 159, column: 19)
!609 = !DILocation(line: 159, column: 30, scope: !610)
!610 = !DILexicalBlockFile(scope: !611, file: !57, discriminator: 3)
!611 = distinct !DILexicalBlock(scope: !603, file: !57, line: 159, column: 28)
!612 = !DILocation(line: 159, column: 110, scope: !610)
!613 = !DILocation(line: 159, column: 121, scope: !614)
!614 = !DILexicalBlockFile(scope: !604, file: !57, discriminator: 4)
!615 = !DILocation(line: 161, column: 7, scope: !594)
!616 = !DILocation(line: 161, column: 2, scope: !594)
!617 = !DILocation(line: 162, column: 1, scope: !594)
!618 = !DILocation(line: 162, column: 1, scope: !619)
!619 = !DILexicalBlockFile(scope: !594, file: !57, discriminator: 1)
!620 = distinct !DISubprogram(name: "net_connect_nonblock", scope: !57, file: !57, line: 217, type: !621, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !299)
!621 = !DISubroutineType(types: !622)
!622 = !{!72, !53, !72, !623, !61, !48}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!625 = !DILocalVariable(name: "server", arg: 1, scope: !620, file: !57, line: 217, type: !53)
!626 = !DILocation(line: 217, column: 38, scope: !620)
!627 = !DILocalVariable(name: "port", arg: 2, scope: !620, file: !57, line: 217, type: !72)
!628 = !DILocation(line: 217, column: 50, scope: !620)
!629 = !DILocalVariable(name: "my_ip", arg: 3, scope: !620, file: !57, line: 217, type: !623)
!630 = !DILocation(line: 217, column: 70, scope: !620)
!631 = !DILocalVariable(name: "func", arg: 4, scope: !620, file: !57, line: 218, type: !61)
!632 = !DILocation(line: 218, column: 18, scope: !620)
!633 = !DILocalVariable(name: "data", arg: 5, scope: !620, file: !57, line: 218, type: !48)
!634 = !DILocation(line: 218, column: 30, scope: !620)
!635 = !DILocalVariable(name: "rec", scope: !620, file: !57, line: 220, type: !55)
!636 = !DILocation(line: 220, column: 21, scope: !620)
!637 = !DILocalVariable(name: "fd", scope: !620, file: !57, line: 221, type: !638)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, align: 32, elements: !252)
!639 = !DILocation(line: 221, column: 6, scope: !620)
!640 = !DILocation(line: 223, column: 2, scope: !620)
!641 = distinct !{!641, !640}
!642 = !DILocation(line: 223, column: 10, scope: !643)
!643 = !DILexicalBlockFile(scope: !644, file: !57, discriminator: 1)
!644 = distinct !DILexicalBlock(scope: !645, file: !57, line: 223, column: 10)
!645 = distinct !DILexicalBlock(scope: !620, file: !57, line: 223, column: 4)
!646 = !DILocation(line: 223, column: 17, scope: !643)
!647 = !DILocation(line: 223, column: 5, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !57, discriminator: 2)
!649 = distinct !DILexicalBlock(scope: !644, file: !57, line: 223, column: 3)
!650 = !DILocation(line: 223, column: 14, scope: !651)
!651 = !DILexicalBlockFile(scope: !652, file: !57, discriminator: 3)
!652 = distinct !DILexicalBlock(scope: !644, file: !57, line: 223, column: 12)
!653 = !DILocation(line: 223, column: 101, scope: !651)
!654 = !DILocation(line: 223, column: 118, scope: !655)
!655 = !DILexicalBlockFile(scope: !645, file: !57, discriminator: 4)
!656 = !DILocation(line: 224, column: 2, scope: !620)
!657 = distinct !{!657, !656}
!658 = !DILocation(line: 224, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !660, file: !57, discriminator: 1)
!660 = distinct !DILexicalBlock(scope: !661, file: !57, line: 224, column: 10)
!661 = distinct !DILexicalBlock(scope: !620, file: !57, line: 224, column: 4)
!662 = !DILocation(line: 224, column: 15, scope: !659)
!663 = !DILocation(line: 224, column: 5, scope: !664)
!664 = !DILexicalBlockFile(scope: !665, file: !57, discriminator: 2)
!665 = distinct !DILexicalBlock(scope: !660, file: !57, line: 224, column: 3)
!666 = !DILocation(line: 224, column: 14, scope: !667)
!667 = !DILexicalBlockFile(scope: !668, file: !57, discriminator: 3)
!668 = distinct !DILexicalBlock(scope: !660, file: !57, line: 224, column: 12)
!669 = !DILocation(line: 224, column: 99, scope: !667)
!670 = !DILocation(line: 224, column: 116, scope: !671)
!671 = !DILexicalBlockFile(scope: !661, file: !57, discriminator: 4)
!672 = !DILocation(line: 226, column: 11, scope: !673)
!673 = distinct !DILexicalBlock(scope: !620, file: !57, line: 226, column: 6)
!674 = !DILocation(line: 226, column: 6, scope: !673)
!675 = !DILocation(line: 226, column: 15, scope: !673)
!676 = !DILocation(line: 226, column: 6, scope: !620)
!677 = !DILocation(line: 227, column: 3, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !57, line: 226, column: 21)
!679 = !DILocation(line: 228, column: 3, scope: !678)
!680 = !DILocation(line: 231, column: 31, scope: !620)
!681 = !DILocation(line: 231, column: 9, scope: !620)
!682 = !DILocation(line: 231, column: 6, scope: !620)
!683 = !DILocation(line: 232, column: 14, scope: !620)
!684 = !DILocation(line: 232, column: 2, scope: !620)
!685 = !DILocation(line: 232, column: 7, scope: !620)
!686 = !DILocation(line: 232, column: 12, scope: !620)
!687 = !DILocation(line: 233, column: 6, scope: !688)
!688 = distinct !DILexicalBlock(scope: !620, file: !57, line: 233, column: 6)
!689 = !DILocation(line: 233, column: 12, scope: !688)
!690 = !DILocation(line: 233, column: 6, scope: !620)
!691 = !DILocation(line: 234, column: 16, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !57, line: 233, column: 20)
!693 = !DILocation(line: 234, column: 3, scope: !692)
!694 = !DILocation(line: 234, column: 8, scope: !692)
!695 = !DILocation(line: 234, column: 14, scope: !692)
!696 = !DILocation(line: 235, column: 10, scope: !692)
!697 = !DILocation(line: 235, column: 15, scope: !692)
!698 = !DILocation(line: 235, column: 3, scope: !692)
!699 = !DILocation(line: 235, column: 22, scope: !692)
!700 = !DILocation(line: 236, column: 2, scope: !692)
!701 = !DILocation(line: 237, column: 14, scope: !620)
!702 = !DILocation(line: 237, column: 2, scope: !620)
!703 = !DILocation(line: 237, column: 7, scope: !620)
!704 = !DILocation(line: 237, column: 12, scope: !620)
!705 = !DILocation(line: 238, column: 14, scope: !620)
!706 = !DILocation(line: 238, column: 2, scope: !620)
!707 = !DILocation(line: 238, column: 7, scope: !620)
!708 = !DILocation(line: 238, column: 12, scope: !620)
!709 = !DILocation(line: 239, column: 35, scope: !620)
!710 = !DILocation(line: 239, column: 18, scope: !620)
!711 = !DILocation(line: 239, column: 2, scope: !620)
!712 = !DILocation(line: 239, column: 7, scope: !620)
!713 = !DILocation(line: 239, column: 16, scope: !620)
!714 = !DILocation(line: 240, column: 35, scope: !620)
!715 = !DILocation(line: 240, column: 18, scope: !620)
!716 = !DILocation(line: 240, column: 2, scope: !620)
!717 = !DILocation(line: 240, column: 7, scope: !620)
!718 = !DILocation(line: 240, column: 16, scope: !620)
!719 = !DILocation(line: 243, column: 29, scope: !620)
!720 = !DILocation(line: 243, column: 37, scope: !620)
!721 = !DILocation(line: 243, column: 42, scope: !620)
!722 = !DILocation(line: 243, column: 2, scope: !620)
!723 = !DILocation(line: 244, column: 25, scope: !620)
!724 = !DILocation(line: 244, column: 30, scope: !620)
!725 = !DILocation(line: 245, column: 45, scope: !620)
!726 = !DILocation(line: 244, column: 13, scope: !620)
!727 = !DILocation(line: 244, column: 2, scope: !620)
!728 = !DILocation(line: 244, column: 7, scope: !620)
!729 = !DILocation(line: 244, column: 11, scope: !620)
!730 = !DILocation(line: 247, column: 2, scope: !620)
!731 = !DILocation(line: 248, column: 1, scope: !620)
!732 = distinct !DISubprogram(name: "simple_readpipe", scope: !57, file: !57, line: 181, type: !733, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !299)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !55, !66}
!735 = !DILocalVariable(name: "rec", arg: 1, scope: !732, file: !57, line: 181, type: !55)
!736 = !DILocation(line: 181, column: 48, scope: !732)
!737 = !DILocalVariable(name: "pipe", arg: 2, scope: !732, file: !57, line: 181, type: !66)
!738 = !DILocation(line: 181, column: 65, scope: !732)
!739 = !DILocalVariable(name: "iprec", scope: !732, file: !57, line: 183, type: !308)
!740 = !DILocation(line: 183, column: 18, scope: !732)
!741 = !DILocalVariable(name: "handle", scope: !732, file: !57, line: 184, type: !66)
!742 = !DILocation(line: 184, column: 14, scope: !732)
!743 = !DILocalVariable(name: "ip", scope: !732, file: !57, line: 185, type: !256)
!744 = !DILocation(line: 185, column: 10, scope: !732)
!745 = !DILocation(line: 187, column: 2, scope: !732)
!746 = distinct !{!746, !745}
!747 = !DILocation(line: 187, column: 10, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !57, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !750, file: !57, line: 187, column: 10)
!750 = distinct !DILexicalBlock(scope: !732, file: !57, line: 187, column: 4)
!751 = !DILocation(line: 187, column: 14, scope: !748)
!752 = !DILocation(line: 187, column: 5, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !57, discriminator: 2)
!754 = distinct !DILexicalBlock(scope: !749, file: !57, line: 187, column: 3)
!755 = !DILocation(line: 187, column: 14, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !57, discriminator: 3)
!757 = distinct !DILexicalBlock(scope: !749, file: !57, line: 187, column: 12)
!758 = !DILocation(line: 187, column: 98, scope: !756)
!759 = !DILocation(line: 187, column: 109, scope: !760)
!760 = !DILexicalBlockFile(scope: !750, file: !57, discriminator: 4)
!761 = !DILocation(line: 189, column: 18, scope: !732)
!762 = !DILocation(line: 189, column: 23, scope: !732)
!763 = !DILocation(line: 189, column: 2, scope: !732)
!764 = !DILocation(line: 191, column: 27, scope: !732)
!765 = !DILocation(line: 191, column: 2, scope: !732)
!766 = !DILocation(line: 192, column: 15, scope: !732)
!767 = !DILocation(line: 192, column: 2, scope: !732)
!768 = !DILocation(line: 194, column: 24, scope: !732)
!769 = !DILocation(line: 194, column: 29, scope: !732)
!770 = !DILocation(line: 194, column: 2, scope: !732)
!771 = !DILocation(line: 195, column: 21, scope: !732)
!772 = !DILocation(line: 195, column: 26, scope: !732)
!773 = !DILocation(line: 195, column: 2, scope: !732)
!774 = !DILocation(line: 196, column: 24, scope: !732)
!775 = !DILocation(line: 196, column: 29, scope: !732)
!776 = !DILocation(line: 196, column: 2, scope: !732)
!777 = !DILocation(line: 197, column: 21, scope: !732)
!778 = !DILocation(line: 197, column: 26, scope: !732)
!779 = !DILocation(line: 197, column: 2, scope: !732)
!780 = !DILocation(line: 199, column: 13, scope: !732)
!781 = !DILocation(line: 199, column: 17, scope: !732)
!782 = !DILocation(line: 199, column: 7, scope: !732)
!783 = !DILocation(line: 199, column: 24, scope: !732)
!784 = !DILocation(line: 199, column: 38, scope: !785)
!785 = !DILexicalBlockFile(scope: !732, file: !57, discriminator: 1)
!786 = !DILocation(line: 199, column: 7, scope: !785)
!787 = !DILocation(line: 199, column: 51, scope: !788)
!788 = !DILexicalBlockFile(scope: !732, file: !57, discriminator: 2)
!789 = !DILocation(line: 199, column: 7, scope: !788)
!790 = !DILocation(line: 199, column: 7, scope: !791)
!791 = !DILexicalBlockFile(scope: !732, file: !57, discriminator: 3)
!792 = !DILocation(line: 199, column: 5, scope: !791)
!793 = !DILocation(line: 200, column: 17, scope: !732)
!794 = !DILocation(line: 200, column: 23, scope: !732)
!795 = !DILocation(line: 200, column: 11, scope: !732)
!796 = !DILocation(line: 200, column: 11, scope: !785)
!797 = !DILocation(line: 201, column: 18, scope: !732)
!798 = !DILocation(line: 201, column: 22, scope: !732)
!799 = !DILocation(line: 201, column: 27, scope: !732)
!800 = !DILocation(line: 201, column: 33, scope: !732)
!801 = !DILocation(line: 201, column: 38, scope: !732)
!802 = !DILocation(line: 201, column: 3, scope: !732)
!803 = !DILocation(line: 200, column: 11, scope: !788)
!804 = !DILocation(line: 200, column: 11, scope: !791)
!805 = !DILocation(line: 200, column: 9, scope: !791)
!806 = !DILocation(line: 203, column: 9, scope: !732)
!807 = !DILocation(line: 203, column: 14, scope: !732)
!808 = !DILocation(line: 203, column: 2, scope: !732)
!809 = !DILocation(line: 205, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !732, file: !57, line: 205, column: 6)
!811 = !DILocation(line: 205, column: 13, scope: !810)
!812 = !DILocation(line: 205, column: 6, scope: !732)
!813 = !DILocation(line: 207, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !810, file: !57, line: 205, column: 21)
!815 = !DILocation(line: 207, column: 8, scope: !814)
!816 = !DILocation(line: 207, column: 18, scope: !814)
!817 = !DILocation(line: 207, column: 23, scope: !814)
!818 = !DILocation(line: 208, column: 10, scope: !814)
!819 = !DILocation(line: 208, column: 3, scope: !814)
!820 = !DILocation(line: 209, column: 3, scope: !814)
!821 = !DILocation(line: 212, column: 25, scope: !732)
!822 = !DILocation(line: 213, column: 41, scope: !732)
!823 = !DILocation(line: 212, column: 13, scope: !732)
!824 = !DILocation(line: 212, column: 2, scope: !732)
!825 = !DILocation(line: 212, column: 7, scope: !732)
!826 = !DILocation(line: 212, column: 11, scope: !732)
!827 = !DILocation(line: 214, column: 1, scope: !732)
!828 = !DILocation(line: 214, column: 1, scope: !785)
!829 = distinct !DISubprogram(name: "simple_init", scope: !57, file: !57, line: 164, type: !733, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !299)
!830 = !DILocalVariable(name: "rec", arg: 1, scope: !829, file: !57, line: 164, type: !55)
!831 = !DILocation(line: 164, column: 44, scope: !829)
!832 = !DILocalVariable(name: "handle", arg: 2, scope: !829, file: !57, line: 164, type: !66)
!833 = !DILocation(line: 164, column: 61, scope: !829)
!834 = !DILocation(line: 166, column: 2, scope: !829)
!835 = distinct !{!835, !834}
!836 = !DILocation(line: 166, column: 10, scope: !837)
!837 = !DILexicalBlockFile(scope: !838, file: !57, discriminator: 1)
!838 = distinct !DILexicalBlock(scope: !839, file: !57, line: 166, column: 10)
!839 = distinct !DILexicalBlock(scope: !829, file: !57, line: 166, column: 4)
!840 = !DILocation(line: 166, column: 14, scope: !837)
!841 = !DILocation(line: 166, column: 5, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !57, discriminator: 2)
!843 = distinct !DILexicalBlock(scope: !838, file: !57, line: 166, column: 3)
!844 = !DILocation(line: 166, column: 14, scope: !845)
!845 = !DILexicalBlockFile(scope: !846, file: !57, discriminator: 3)
!846 = distinct !DILexicalBlock(scope: !838, file: !57, line: 166, column: 12)
!847 = !DILocation(line: 166, column: 98, scope: !845)
!848 = !DILocation(line: 166, column: 109, scope: !849)
!849 = !DILexicalBlockFile(scope: !839, file: !57, discriminator: 4)
!850 = !DILocation(line: 168, column: 18, scope: !829)
!851 = !DILocation(line: 168, column: 23, scope: !829)
!852 = !DILocation(line: 168, column: 2, scope: !829)
!853 = !DILocation(line: 170, column: 19, scope: !854)
!854 = distinct !DILexicalBlock(scope: !829, file: !57, line: 170, column: 6)
!855 = !DILocation(line: 170, column: 6, scope: !854)
!856 = !DILocation(line: 170, column: 27, scope: !854)
!857 = !DILocation(line: 170, column: 6, scope: !829)
!858 = !DILocation(line: 172, column: 25, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !57, line: 170, column: 33)
!860 = !DILocation(line: 172, column: 3, scope: !859)
!861 = !DILocation(line: 173, column: 36, scope: !859)
!862 = !DILocation(line: 173, column: 17, scope: !859)
!863 = !DILocation(line: 174, column: 10, scope: !859)
!864 = !DILocation(line: 175, column: 2, scope: !859)
!865 = !DILocation(line: 177, column: 2, scope: !829)
!866 = !DILocation(line: 177, column: 7, scope: !829)
!867 = !DILocation(line: 177, column: 12, scope: !829)
!868 = !DILocation(line: 177, column: 20, scope: !829)
!869 = !DILocation(line: 177, column: 25, scope: !829)
!870 = !DILocation(line: 178, column: 9, scope: !829)
!871 = !DILocation(line: 178, column: 2, scope: !829)
!872 = !DILocation(line: 179, column: 1, scope: !829)
!873 = !DILocation(line: 179, column: 1, scope: !874)
!874 = !DILexicalBlockFile(scope: !829, file: !57, discriminator: 1)
