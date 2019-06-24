; ModuleID = './[inter]keepalived--vrrp--vrrp_static_track.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_static_track.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
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
%struct.timeval = type { i64, i64 }
%struct._seq_counter = type { i8, i32 }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.2, %struct._interface*, i8*, i32, i32, i8, %union.anon.4, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon.2 = type { %struct.in6_addr }
%union.anon.4 = type { %struct.in6_addr }
%struct._ip_route = type { %struct._ip_address*, %struct._ip_address*, %struct._ip_address*, i8, i8, i32, i8, i8, i32, %struct._ip_address*, %struct._interface*, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8, i8, i32, %struct._encap, %struct._list*, i32, i8, %struct._static_track_group*, i8, i32 }
%struct._encap = type { i16, i32, %union.anon.5 }
%union.anon.5 = type { %struct._encap_ip }
%struct._encap_ip = type { i64, %struct._ip_address*, %struct._ip_address*, i8, i16, i8 }
%struct._ip_rule = type { i32, i8, i32, %struct._ip_address*, %struct._ip_address*, i32, i8, i32, i32, i32, i32, i32, %struct._interface*, %struct._interface*, i32, i32, i8, i64, i8, %struct._static_track_group*, i8 }

@.str = private unnamed_addr constant [56 x i8] c"track group %s - iname vector exists when freeing group\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" Static Track Group = %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"   VRRP member instances = %d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"     %s\00", align 1
@vrrp_data = external global %struct._vrrp_data*, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"Static track group %s has no virtual router(s) - removing\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Static address has both track_group and no_track set - not tracking\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Static route has both track_group and no_track set - not tracking\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Static rule has both track_group and no_track set - not tracking\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.8 = private unnamed_addr constant [70 x i8] c"vrrp instance %s specified in track group %s doesn't exist - ignoring\00", align 1

; Function Attrs: nounwind uwtable
define void @free_tgroup(i8*) #0 !dbg !136 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._static_track_group*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !139, metadata !140), !dbg !141
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %3, metadata !142, metadata !140), !dbg !160
  %4 = load i8*, i8** %2, align 8, !dbg !161
  %5 = bitcast i8* %4 to %struct._static_track_group*, !dbg !161
  store %struct._static_track_group* %5, %struct._static_track_group** %3, align 8, !dbg !160
  %6 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !162
  %7 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %6, i32 0, i32 1, !dbg !164
  %8 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !164
  %9 = icmp ne %struct._vector* %8, null, !dbg !162
  br i1 %9, label %10, label %17, !dbg !165

; <label>:10:                                     ; preds = %1
  %11 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !166
  %12 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %11, i32 0, i32 0, !dbg !168
  %13 = load i8*, i8** %12, align 8, !dbg !168
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0), i8* %13), !dbg !169
  %14 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !170
  %15 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %14, i32 0, i32 1, !dbg !171
  %16 = load %struct._vector*, %struct._vector** %15, align 8, !dbg !171
  call void @free_strvec(%struct._vector* %16), !dbg !172
  br label %17, !dbg !173

; <label>:17:                                     ; preds = %10, %1
  %18 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !174
  %19 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %18, i32 0, i32 0, !dbg !175
  %20 = load i8*, i8** %19, align 8, !dbg !175
  call void @free(i8* %20) #5, !dbg !176
  %21 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !177
  %22 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %21, i32 0, i32 0, !dbg !178
  store i8* null, i8** %22, align 8, !dbg !179
  %23 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !180
  %24 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %23, i32 0, i32 2, !dbg !181
  call void @free_list(%struct._list** %24), !dbg !182
  %25 = load %struct._static_track_group*, %struct._static_track_group** %3, align 8, !dbg !183
  %26 = bitcast %struct._static_track_group* %25 to i8*, !dbg !183
  call void @free(i8* %26) #5, !dbg !184
  store %struct._static_track_group* null, %struct._static_track_group** %3, align 8, !dbg !185
  ret void, !dbg !186
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @log_message(i32, i8*, ...) #2

declare void @free_strvec(%struct._vector*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @free_list(%struct._list**) #2

; Function Attrs: nounwind uwtable
define void @dump_tgroup(%struct._IO_FILE*, i8*) #0 !dbg !187 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._static_track_group*, align 8
  %6 = alloca %struct._vrrp_t*, align 8
  %7 = alloca %struct._element*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !188, metadata !140), !dbg !189
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !140), !dbg !191
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %5, metadata !192, metadata !140), !dbg !193
  %8 = load i8*, i8** %4, align 8, !dbg !194
  %9 = bitcast i8* %8 to %struct._static_track_group*, !dbg !194
  store %struct._static_track_group* %9, %struct._static_track_group** %5, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %6, metadata !195, metadata !140), !dbg !543
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !544, metadata !140), !dbg !546
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !547
  %11 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !548
  %12 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %11, i32 0, i32 0, !dbg !549
  %13 = load i8*, i8** %12, align 8, !dbg !549
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %13), !dbg !550
  %14 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !551
  %15 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %14, i32 0, i32 2, !dbg !553
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !553
  %17 = icmp ne %struct._list* %16, null, !dbg !551
  br i1 %17, label %18, label %66, !dbg !554

; <label>:18:                                     ; preds = %2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !555
  %20 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !557
  %21 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %20, i32 0, i32 2, !dbg !558
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !558
  %23 = getelementptr inbounds %struct._list, %struct._list* %22, i32 0, i32 2, !dbg !559
  %24 = load i32, i32* %23, align 8, !dbg !559
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %24), !dbg !560
  %25 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !561
  %26 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %25, i32 0, i32 2, !dbg !563
  %27 = load %struct._list*, %struct._list** %26, align 8, !dbg !563
  %28 = icmp ne %struct._list* %27, null, !dbg !564
  br i1 %28, label %29, label %43, !dbg !564

; <label>:29:                                     ; preds = %18
  %30 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !565
  %31 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %30, i32 0, i32 2, !dbg !567
  %32 = load %struct._list*, %struct._list** %31, align 8, !dbg !567
  %33 = icmp ne %struct._list* %32, null, !dbg !568
  br i1 %33, label %35, label %34, !dbg !569

; <label>:34:                                     ; preds = %29
  br label %41, !dbg !570

; <label>:35:                                     ; preds = %29
  %36 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !572
  %37 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %36, i32 0, i32 2, !dbg !574
  %38 = load %struct._list*, %struct._list** %37, align 8, !dbg !574
  %39 = getelementptr inbounds %struct._list, %struct._list* %38, i32 0, i32 0, !dbg !575
  %40 = load %struct._element*, %struct._element** %39, align 8, !dbg !575
  br label %41, !dbg !576

; <label>:41:                                     ; preds = %35, %34
  %42 = phi %struct._element* [ null, %34 ], [ %40, %35 ], !dbg !577
  br label %44, !dbg !579

; <label>:43:                                     ; preds = %18
  br label %44, !dbg !580

; <label>:44:                                     ; preds = %43, %41
  %45 = phi %struct._element* [ %42, %41 ], [ null, %43 ], !dbg !582
  store %struct._element* %45, %struct._element** %7, align 8, !dbg !584
  br label %46, !dbg !585

; <label>:46:                                     ; preds = %61, %44
  %47 = load %struct._element*, %struct._element** %7, align 8, !dbg !586
  %48 = icmp ne %struct._element* %47, null, !dbg !589
  br i1 %48, label %49, label %54, !dbg !590

; <label>:49:                                     ; preds = %46
  %50 = load %struct._element*, %struct._element** %7, align 8, !dbg !591
  %51 = getelementptr inbounds %struct._element, %struct._element* %50, i32 0, i32 2, !dbg !593
  %52 = load i8*, i8** %51, align 8, !dbg !593
  %53 = bitcast i8* %52 to %struct._vrrp_t*, !dbg !594
  store %struct._vrrp_t* %53, %struct._vrrp_t** %6, align 8, !dbg !595
  br label %54

; <label>:54:                                     ; preds = %49, %46
  %55 = phi i1 [ false, %46 ], [ true, %49 ]
  br i1 %55, label %56, label %65, !dbg !596

; <label>:56:                                     ; preds = %54
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !598
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !599
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 1, !dbg !600
  %60 = load i8*, i8** %59, align 8, !dbg !600
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* %60), !dbg !601
  br label %61, !dbg !601

; <label>:61:                                     ; preds = %56
  %62 = load %struct._element*, %struct._element** %7, align 8, !dbg !602
  %63 = getelementptr inbounds %struct._element, %struct._element* %62, i32 0, i32 0, !dbg !604
  %64 = load %struct._element*, %struct._element** %63, align 8, !dbg !604
  store %struct._element* %64, %struct._element** %7, align 8, !dbg !605
  br label %46, !dbg !606, !llvm.loop !607

; <label>:65:                                     ; preds = %54
  br label %66, !dbg !609

; <label>:66:                                     ; preds = %65, %2
  ret void, !dbg !610
}

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct._static_track_group* @find_track_group(i8*) #0 !dbg !611 {
  %2 = alloca %struct._static_track_group*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._static_track_group*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !616, metadata !140), !dbg !617
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !618, metadata !140), !dbg !619
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %5, metadata !620, metadata !140), !dbg !621
  %6 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !622
  %7 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %6, i32 0, i32 0, !dbg !624
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !624
  %9 = icmp ne %struct._list* %8, null, !dbg !625
  br i1 %9, label %10, label %24, !dbg !625

; <label>:10:                                     ; preds = %1
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !626
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 0, !dbg !628
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !628
  %14 = icmp ne %struct._list* %13, null, !dbg !629
  br i1 %14, label %16, label %15, !dbg !630

; <label>:15:                                     ; preds = %10
  br label %22, !dbg !631

; <label>:16:                                     ; preds = %10
  %17 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !633
  %18 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %17, i32 0, i32 0, !dbg !635
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !635
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 0, !dbg !636
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !636
  br label %22, !dbg !637

; <label>:22:                                     ; preds = %16, %15
  %23 = phi %struct._element* [ null, %15 ], [ %21, %16 ], !dbg !638
  br label %25, !dbg !640

; <label>:24:                                     ; preds = %1
  br label %25, !dbg !641

; <label>:25:                                     ; preds = %24, %22
  %26 = phi %struct._element* [ %23, %22 ], [ null, %24 ], !dbg !643
  store %struct._element* %26, %struct._element** %4, align 8, !dbg !645
  br label %27, !dbg !646

; <label>:27:                                     ; preds = %47, %25
  %28 = load %struct._element*, %struct._element** %4, align 8, !dbg !647
  %29 = icmp ne %struct._element* %28, null, !dbg !650
  br i1 %29, label %30, label %35, !dbg !651

; <label>:30:                                     ; preds = %27
  %31 = load %struct._element*, %struct._element** %4, align 8, !dbg !652
  %32 = getelementptr inbounds %struct._element, %struct._element* %31, i32 0, i32 2, !dbg !654
  %33 = load i8*, i8** %32, align 8, !dbg !654
  %34 = bitcast i8* %33 to %struct._static_track_group*, !dbg !655
  store %struct._static_track_group* %34, %struct._static_track_group** %5, align 8, !dbg !656
  br label %35

; <label>:35:                                     ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ true, %30 ]
  br i1 %36, label %37, label %51, !dbg !657

; <label>:37:                                     ; preds = %35
  %38 = load i8*, i8** %3, align 8, !dbg !659
  %39 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !661
  %40 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %39, i32 0, i32 0, !dbg !662
  %41 = load i8*, i8** %40, align 8, !dbg !662
  %42 = call i32 @strcmp(i8* %38, i8* %41) #6, !dbg !663
  %43 = icmp ne i32 %42, 0, !dbg !663
  br i1 %43, label %46, label %44, !dbg !664

; <label>:44:                                     ; preds = %37
  %45 = load %struct._static_track_group*, %struct._static_track_group** %5, align 8, !dbg !665
  store %struct._static_track_group* %45, %struct._static_track_group** %2, align 8, !dbg !666
  br label %52, !dbg !666

; <label>:46:                                     ; preds = %37
  br label %47, !dbg !667

; <label>:47:                                     ; preds = %46
  %48 = load %struct._element*, %struct._element** %4, align 8, !dbg !669
  %49 = getelementptr inbounds %struct._element, %struct._element* %48, i32 0, i32 0, !dbg !671
  %50 = load %struct._element*, %struct._element** %49, align 8, !dbg !671
  store %struct._element* %50, %struct._element** %4, align 8, !dbg !672
  br label %27, !dbg !673, !llvm.loop !674

; <label>:51:                                     ; preds = %35
  store %struct._static_track_group* null, %struct._static_track_group** %2, align 8, !dbg !676
  br label %52, !dbg !676

; <label>:52:                                     ; preds = %51, %44
  %53 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !677
  ret %struct._static_track_group* %53, !dbg !677
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @static_track_group_init() #0 !dbg !678 {
  %1 = alloca %struct._static_track_group*, align 8
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._ip_address*, align 8
  %4 = alloca %struct._ip_route*, align 8
  %5 = alloca %struct._ip_rule*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._element*, align 8
  %8 = alloca %struct._element*, align 8
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %1, metadata !681, metadata !140), !dbg !682
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !683, metadata !140), !dbg !684
  call void @llvm.dbg.declare(metadata %struct._ip_address** %3, metadata !685, metadata !140), !dbg !727
  call void @llvm.dbg.declare(metadata %struct._ip_route** %4, metadata !728, metadata !140), !dbg !821
  call void @llvm.dbg.declare(metadata %struct._ip_rule** %5, metadata !822, metadata !140), !dbg !850
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !851, metadata !140), !dbg !852
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !853, metadata !140), !dbg !854
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !855, metadata !140), !dbg !856
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !857
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 0, !dbg !859
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !859
  %12 = icmp ne %struct._list* %11, null, !dbg !860
  br i1 %12, label %13, label %27, !dbg !860

; <label>:13:                                     ; preds = %0
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !861
  %15 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %14, i32 0, i32 0, !dbg !863
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !863
  %17 = icmp ne %struct._list* %16, null, !dbg !864
  br i1 %17, label %19, label %18, !dbg !865

; <label>:18:                                     ; preds = %13
  br label %25, !dbg !866

; <label>:19:                                     ; preds = %13
  %20 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !868
  %21 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %20, i32 0, i32 0, !dbg !870
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !870
  %23 = getelementptr inbounds %struct._list, %struct._list* %22, i32 0, i32 0, !dbg !871
  %24 = load %struct._element*, %struct._element** %23, align 8, !dbg !871
  br label %25, !dbg !872

; <label>:25:                                     ; preds = %19, %18
  %26 = phi %struct._element* [ null, %18 ], [ %24, %19 ], !dbg !873
  br label %28, !dbg !875

; <label>:27:                                     ; preds = %0
  br label %28, !dbg !876

; <label>:28:                                     ; preds = %27, %25
  %29 = phi %struct._element* [ %26, %25 ], [ null, %27 ], !dbg !878
  store %struct._element* %29, %struct._element** %6, align 8, !dbg !880
  br label %30, !dbg !881

; <label>:30:                                     ; preds = %68, %28
  %31 = load %struct._element*, %struct._element** %6, align 8, !dbg !882
  %32 = icmp ne %struct._element* %31, null, !dbg !885
  br i1 %32, label %33, label %41, !dbg !886

; <label>:33:                                     ; preds = %30
  %34 = load %struct._element*, %struct._element** %6, align 8, !dbg !887
  %35 = getelementptr inbounds %struct._element, %struct._element* %34, i32 0, i32 0, !dbg !889
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !889
  store %struct._element* %36, %struct._element** %8, align 8, !dbg !890
  %37 = load %struct._element*, %struct._element** %6, align 8, !dbg !891
  %38 = getelementptr inbounds %struct._element, %struct._element* %37, i32 0, i32 2, !dbg !892
  %39 = load i8*, i8** %38, align 8, !dbg !892
  %40 = bitcast i8* %39 to %struct._static_track_group*, !dbg !893
  store %struct._static_track_group* %40, %struct._static_track_group** %1, align 8, !dbg !894
  br label %41

; <label>:41:                                     ; preds = %33, %30
  %42 = phi i1 [ false, %30 ], [ true, %33 ]
  br i1 %42, label %43, label %70, !dbg !895

; <label>:43:                                     ; preds = %41
  %44 = load %struct._static_track_group*, %struct._static_track_group** %1, align 8, !dbg !897
  %45 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %44, i32 0, i32 1, !dbg !900
  %46 = load %struct._vector*, %struct._vector** %45, align 8, !dbg !900
  %47 = icmp ne %struct._vector* %46, null, !dbg !897
  br i1 %47, label %56, label %48, !dbg !901

; <label>:48:                                     ; preds = %43
  %49 = load %struct._static_track_group*, %struct._static_track_group** %1, align 8, !dbg !902
  %50 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %49, i32 0, i32 0, !dbg !904
  %51 = load i8*, i8** %50, align 8, !dbg !904
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0), i8* %51), !dbg !905
  %52 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !906
  %53 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %52, i32 0, i32 0, !dbg !907
  %54 = load %struct._list*, %struct._list** %53, align 8, !dbg !907
  %55 = load %struct._element*, %struct._element** %6, align 8, !dbg !908
  call void @free_list_element(%struct._list* %54, %struct._element* %55), !dbg !909
  br label %68, !dbg !910

; <label>:56:                                     ; preds = %43
  %57 = load %struct._static_track_group*, %struct._static_track_group** %1, align 8, !dbg !911
  call void @static_track_set_group(%struct._static_track_group* %57), !dbg !912
  %58 = load %struct._static_track_group*, %struct._static_track_group** %1, align 8, !dbg !913
  %59 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %58, i32 0, i32 2, !dbg !915
  %60 = load %struct._list*, %struct._list** %59, align 8, !dbg !915
  %61 = icmp ne %struct._list* %60, null, !dbg !913
  br i1 %61, label %67, label %62, !dbg !916

; <label>:62:                                     ; preds = %56
  %63 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !917
  %64 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %63, i32 0, i32 0, !dbg !919
  %65 = load %struct._list*, %struct._list** %64, align 8, !dbg !919
  %66 = load %struct._element*, %struct._element** %6, align 8, !dbg !920
  call void @free_list_element(%struct._list* %65, %struct._element* %66), !dbg !921
  br label %68, !dbg !922

; <label>:67:                                     ; preds = %56
  br label %68, !dbg !923

; <label>:68:                                     ; preds = %67, %62, %48
  %69 = load %struct._element*, %struct._element** %8, align 8, !dbg !924
  store %struct._element* %69, %struct._element** %6, align 8, !dbg !926
  br label %30, !dbg !927, !llvm.loop !928

; <label>:70:                                     ; preds = %41
  %71 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !930
  %72 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %71, i32 0, i32 1, !dbg !932
  %73 = load %struct._list*, %struct._list** %72, align 8, !dbg !932
  %74 = icmp ne %struct._list* %73, null, !dbg !933
  br i1 %74, label %75, label %89, !dbg !933

; <label>:75:                                     ; preds = %70
  %76 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !934
  %77 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %76, i32 0, i32 1, !dbg !936
  %78 = load %struct._list*, %struct._list** %77, align 8, !dbg !936
  %79 = icmp ne %struct._list* %78, null, !dbg !937
  br i1 %79, label %81, label %80, !dbg !938

; <label>:80:                                     ; preds = %75
  br label %87, !dbg !939

; <label>:81:                                     ; preds = %75
  %82 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !941
  %83 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %82, i32 0, i32 1, !dbg !943
  %84 = load %struct._list*, %struct._list** %83, align 8, !dbg !943
  %85 = getelementptr inbounds %struct._list, %struct._list* %84, i32 0, i32 0, !dbg !944
  %86 = load %struct._element*, %struct._element** %85, align 8, !dbg !944
  br label %87, !dbg !945

; <label>:87:                                     ; preds = %81, %80
  %88 = phi %struct._element* [ null, %80 ], [ %86, %81 ], !dbg !946
  br label %90, !dbg !948

; <label>:89:                                     ; preds = %70
  br label %90, !dbg !949

; <label>:90:                                     ; preds = %89, %87
  %91 = phi %struct._element* [ %88, %87 ], [ null, %89 ], !dbg !951
  store %struct._element* %91, %struct._element** %6, align 8, !dbg !953
  br label %92, !dbg !954

; <label>:92:                                     ; preds = %162, %90
  %93 = load %struct._element*, %struct._element** %6, align 8, !dbg !955
  %94 = icmp ne %struct._element* %93, null, !dbg !958
  br i1 %94, label %95, label %100, !dbg !959

; <label>:95:                                     ; preds = %92
  %96 = load %struct._element*, %struct._element** %6, align 8, !dbg !960
  %97 = getelementptr inbounds %struct._element, %struct._element* %96, i32 0, i32 2, !dbg !962
  %98 = load i8*, i8** %97, align 8, !dbg !962
  %99 = bitcast i8* %98 to %struct._ip_address*, !dbg !963
  store %struct._ip_address* %99, %struct._ip_address** %3, align 8, !dbg !964
  br label %100

; <label>:100:                                    ; preds = %95, %92
  %101 = phi i1 [ false, %92 ], [ true, %95 ]
  br i1 %101, label %102, label %166, !dbg !965

; <label>:102:                                    ; preds = %100
  %103 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !967
  %104 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %103, i32 0, i32 9, !dbg !970
  %105 = load %struct._static_track_group*, %struct._static_track_group** %104, align 8, !dbg !970
  %106 = icmp ne %struct._static_track_group* %105, null, !dbg !967
  br i1 %106, label %108, label %107, !dbg !971

; <label>:107:                                    ; preds = %102
  br label %162, !dbg !972

; <label>:108:                                    ; preds = %102
  %109 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !973
  %110 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %109, i32 0, i32 8, !dbg !975
  %111 = load i8, i8* %110, align 4, !dbg !975
  %112 = trunc i8 %111 to i1, !dbg !975
  br i1 %112, label %113, label %114, !dbg !976

; <label>:113:                                    ; preds = %108
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0)), !dbg !977
  br label %162, !dbg !979

; <label>:114:                                    ; preds = %108
  %115 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !980
  %116 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %115, i32 0, i32 9, !dbg !982
  %117 = load %struct._static_track_group*, %struct._static_track_group** %116, align 8, !dbg !982
  %118 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %117, i32 0, i32 2, !dbg !983
  %119 = load %struct._list*, %struct._list** %118, align 8, !dbg !983
  %120 = icmp ne %struct._list* %119, null, !dbg !984
  br i1 %120, label %121, label %139, !dbg !984

; <label>:121:                                    ; preds = %114
  %122 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !985
  %123 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %122, i32 0, i32 9, !dbg !987
  %124 = load %struct._static_track_group*, %struct._static_track_group** %123, align 8, !dbg !987
  %125 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %124, i32 0, i32 2, !dbg !988
  %126 = load %struct._list*, %struct._list** %125, align 8, !dbg !988
  %127 = icmp ne %struct._list* %126, null, !dbg !989
  br i1 %127, label %129, label %128, !dbg !990

; <label>:128:                                    ; preds = %121
  br label %137, !dbg !991

; <label>:129:                                    ; preds = %121
  %130 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !993
  %131 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %130, i32 0, i32 9, !dbg !995
  %132 = load %struct._static_track_group*, %struct._static_track_group** %131, align 8, !dbg !995
  %133 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %132, i32 0, i32 2, !dbg !996
  %134 = load %struct._list*, %struct._list** %133, align 8, !dbg !996
  %135 = getelementptr inbounds %struct._list, %struct._list* %134, i32 0, i32 0, !dbg !997
  %136 = load %struct._element*, %struct._element** %135, align 8, !dbg !997
  br label %137, !dbg !998

; <label>:137:                                    ; preds = %129, %128
  %138 = phi %struct._element* [ null, %128 ], [ %136, %129 ], !dbg !999
  br label %140, !dbg !1001

; <label>:139:                                    ; preds = %114
  br label %140, !dbg !1002

; <label>:140:                                    ; preds = %139, %137
  %141 = phi %struct._element* [ %138, %137 ], [ null, %139 ], !dbg !1004
  store %struct._element* %141, %struct._element** %7, align 8, !dbg !1006
  br label %142, !dbg !1007

; <label>:142:                                    ; preds = %157, %140
  %143 = load %struct._element*, %struct._element** %7, align 8, !dbg !1008
  %144 = icmp ne %struct._element* %143, null, !dbg !1011
  br i1 %144, label %145, label %150, !dbg !1012

; <label>:145:                                    ; preds = %142
  %146 = load %struct._element*, %struct._element** %7, align 8, !dbg !1013
  %147 = getelementptr inbounds %struct._element, %struct._element* %146, i32 0, i32 2, !dbg !1015
  %148 = load i8*, i8** %147, align 8, !dbg !1015
  %149 = bitcast i8* %148 to %struct._vrrp_t*, !dbg !1016
  store %struct._vrrp_t* %149, %struct._vrrp_t** %2, align 8, !dbg !1017
  br label %150

; <label>:150:                                    ; preds = %145, %142
  %151 = phi i1 [ false, %142 ], [ true, %145 ]
  br i1 %151, label %152, label %161, !dbg !1018

; <label>:152:                                    ; preds = %150
  %153 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1020
  %154 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !1021
  %155 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %154, i32 0, i32 2, !dbg !1022
  %156 = load %struct._interface*, %struct._interface** %155, align 8, !dbg !1022
  call void @add_vrrp_to_interface(%struct._vrrp_t* %153, %struct._interface* %156, i32 0, i1 zeroext false, i32 32), !dbg !1023
  br label %157, !dbg !1023

; <label>:157:                                    ; preds = %152
  %158 = load %struct._element*, %struct._element** %7, align 8, !dbg !1024
  %159 = getelementptr inbounds %struct._element, %struct._element* %158, i32 0, i32 0, !dbg !1026
  %160 = load %struct._element*, %struct._element** %159, align 8, !dbg !1026
  store %struct._element* %160, %struct._element** %7, align 8, !dbg !1027
  br label %142, !dbg !1028, !llvm.loop !1029

; <label>:161:                                    ; preds = %150
  br label %162, !dbg !1031

; <label>:162:                                    ; preds = %161, %113, %107
  %163 = load %struct._element*, %struct._element** %6, align 8, !dbg !1032
  %164 = getelementptr inbounds %struct._element, %struct._element* %163, i32 0, i32 0, !dbg !1034
  %165 = load %struct._element*, %struct._element** %164, align 8, !dbg !1034
  store %struct._element* %165, %struct._element** %6, align 8, !dbg !1035
  br label %92, !dbg !1036, !llvm.loop !1037

; <label>:166:                                    ; preds = %100
  %167 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1039
  %168 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %167, i32 0, i32 2, !dbg !1041
  %169 = load %struct._list*, %struct._list** %168, align 8, !dbg !1041
  %170 = icmp ne %struct._list* %169, null, !dbg !1042
  br i1 %170, label %171, label %185, !dbg !1042

; <label>:171:                                    ; preds = %166
  %172 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1043
  %173 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %172, i32 0, i32 2, !dbg !1045
  %174 = load %struct._list*, %struct._list** %173, align 8, !dbg !1045
  %175 = icmp ne %struct._list* %174, null, !dbg !1046
  br i1 %175, label %177, label %176, !dbg !1047

; <label>:176:                                    ; preds = %171
  br label %183, !dbg !1048

; <label>:177:                                    ; preds = %171
  %178 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1050
  %179 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %178, i32 0, i32 2, !dbg !1052
  %180 = load %struct._list*, %struct._list** %179, align 8, !dbg !1052
  %181 = getelementptr inbounds %struct._list, %struct._list* %180, i32 0, i32 0, !dbg !1053
  %182 = load %struct._element*, %struct._element** %181, align 8, !dbg !1053
  br label %183, !dbg !1054

; <label>:183:                                    ; preds = %177, %176
  %184 = phi %struct._element* [ null, %176 ], [ %182, %177 ], !dbg !1055
  br label %186, !dbg !1057

; <label>:185:                                    ; preds = %166
  br label %186, !dbg !1058

; <label>:186:                                    ; preds = %185, %183
  %187 = phi %struct._element* [ %184, %183 ], [ null, %185 ], !dbg !1060
  store %struct._element* %187, %struct._element** %6, align 8, !dbg !1062
  br label %188, !dbg !1063

; <label>:188:                                    ; preds = %264, %186
  %189 = load %struct._element*, %struct._element** %6, align 8, !dbg !1064
  %190 = icmp ne %struct._element* %189, null, !dbg !1067
  br i1 %190, label %191, label %196, !dbg !1068

; <label>:191:                                    ; preds = %188
  %192 = load %struct._element*, %struct._element** %6, align 8, !dbg !1069
  %193 = getelementptr inbounds %struct._element, %struct._element* %192, i32 0, i32 2, !dbg !1071
  %194 = load i8*, i8** %193, align 8, !dbg !1071
  %195 = bitcast i8* %194 to %struct._ip_route*, !dbg !1072
  store %struct._ip_route* %195, %struct._ip_route** %4, align 8, !dbg !1073
  br label %196

; <label>:196:                                    ; preds = %191, %188
  %197 = phi i1 [ false, %188 ], [ true, %191 ]
  br i1 %197, label %198, label %268, !dbg !1074

; <label>:198:                                    ; preds = %196
  %199 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1076
  %200 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %199, i32 0, i32 35, !dbg !1079
  %201 = load %struct._static_track_group*, %struct._static_track_group** %200, align 8, !dbg !1079
  %202 = icmp ne %struct._static_track_group* %201, null, !dbg !1076
  br i1 %202, label %204, label %203, !dbg !1080

; <label>:203:                                    ; preds = %198
  br label %264, !dbg !1081

; <label>:204:                                    ; preds = %198
  %205 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1082
  %206 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %205, i32 0, i32 34, !dbg !1084
  %207 = load i8, i8* %206, align 4, !dbg !1084
  %208 = trunc i8 %207 to i1, !dbg !1084
  br i1 %208, label %209, label %210, !dbg !1085

; <label>:209:                                    ; preds = %204
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i32 0, i32 0)), !dbg !1086
  br label %264, !dbg !1088

; <label>:210:                                    ; preds = %204
  %211 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1089
  %212 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %211, i32 0, i32 35, !dbg !1091
  %213 = load %struct._static_track_group*, %struct._static_track_group** %212, align 8, !dbg !1091
  %214 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %213, i32 0, i32 2, !dbg !1092
  %215 = load %struct._list*, %struct._list** %214, align 8, !dbg !1092
  %216 = icmp ne %struct._list* %215, null, !dbg !1093
  br i1 %216, label %217, label %235, !dbg !1093

; <label>:217:                                    ; preds = %210
  %218 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1094
  %219 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %218, i32 0, i32 35, !dbg !1096
  %220 = load %struct._static_track_group*, %struct._static_track_group** %219, align 8, !dbg !1096
  %221 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %220, i32 0, i32 2, !dbg !1097
  %222 = load %struct._list*, %struct._list** %221, align 8, !dbg !1097
  %223 = icmp ne %struct._list* %222, null, !dbg !1098
  br i1 %223, label %225, label %224, !dbg !1099

; <label>:224:                                    ; preds = %217
  br label %233, !dbg !1100

; <label>:225:                                    ; preds = %217
  %226 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1102
  %227 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %226, i32 0, i32 35, !dbg !1104
  %228 = load %struct._static_track_group*, %struct._static_track_group** %227, align 8, !dbg !1104
  %229 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %228, i32 0, i32 2, !dbg !1105
  %230 = load %struct._list*, %struct._list** %229, align 8, !dbg !1105
  %231 = getelementptr inbounds %struct._list, %struct._list* %230, i32 0, i32 0, !dbg !1106
  %232 = load %struct._element*, %struct._element** %231, align 8, !dbg !1106
  br label %233, !dbg !1107

; <label>:233:                                    ; preds = %225, %224
  %234 = phi %struct._element* [ null, %224 ], [ %232, %225 ], !dbg !1108
  br label %236, !dbg !1110

; <label>:235:                                    ; preds = %210
  br label %236, !dbg !1111

; <label>:236:                                    ; preds = %235, %233
  %237 = phi %struct._element* [ %234, %233 ], [ null, %235 ], !dbg !1113
  store %struct._element* %237, %struct._element** %7, align 8, !dbg !1115
  br label %238, !dbg !1116

; <label>:238:                                    ; preds = %259, %236
  %239 = load %struct._element*, %struct._element** %7, align 8, !dbg !1117
  %240 = icmp ne %struct._element* %239, null, !dbg !1120
  br i1 %240, label %241, label %246, !dbg !1121

; <label>:241:                                    ; preds = %238
  %242 = load %struct._element*, %struct._element** %7, align 8, !dbg !1122
  %243 = getelementptr inbounds %struct._element, %struct._element* %242, i32 0, i32 2, !dbg !1124
  %244 = load i8*, i8** %243, align 8, !dbg !1124
  %245 = bitcast i8* %244 to %struct._vrrp_t*, !dbg !1125
  store %struct._vrrp_t* %245, %struct._vrrp_t** %2, align 8, !dbg !1126
  br label %246

; <label>:246:                                    ; preds = %241, %238
  %247 = phi i1 [ false, %238 ], [ true, %241 ]
  br i1 %247, label %248, label %263, !dbg !1127

; <label>:248:                                    ; preds = %246
  %249 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1129
  %250 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %249, i32 0, i32 10, !dbg !1132
  %251 = load %struct._interface*, %struct._interface** %250, align 8, !dbg !1132
  %252 = icmp ne %struct._interface* %251, null, !dbg !1129
  br i1 %252, label %253, label %258, !dbg !1133

; <label>:253:                                    ; preds = %248
  %254 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1134
  %255 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1135
  %256 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %255, i32 0, i32 10, !dbg !1136
  %257 = load %struct._interface*, %struct._interface** %256, align 8, !dbg !1136
  call void @add_vrrp_to_interface(%struct._vrrp_t* %254, %struct._interface* %257, i32 0, i1 zeroext false, i32 64), !dbg !1137
  br label %258, !dbg !1137

; <label>:258:                                    ; preds = %253, %248
  br label %259, !dbg !1138

; <label>:259:                                    ; preds = %258
  %260 = load %struct._element*, %struct._element** %7, align 8, !dbg !1139
  %261 = getelementptr inbounds %struct._element, %struct._element* %260, i32 0, i32 0, !dbg !1141
  %262 = load %struct._element*, %struct._element** %261, align 8, !dbg !1141
  store %struct._element* %262, %struct._element** %7, align 8, !dbg !1142
  br label %238, !dbg !1143, !llvm.loop !1144

; <label>:263:                                    ; preds = %246
  br label %264, !dbg !1146

; <label>:264:                                    ; preds = %263, %209, %203
  %265 = load %struct._element*, %struct._element** %6, align 8, !dbg !1147
  %266 = getelementptr inbounds %struct._element, %struct._element* %265, i32 0, i32 0, !dbg !1149
  %267 = load %struct._element*, %struct._element** %266, align 8, !dbg !1149
  store %struct._element* %267, %struct._element** %6, align 8, !dbg !1150
  br label %188, !dbg !1151, !llvm.loop !1152

; <label>:268:                                    ; preds = %196
  %269 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1154
  %270 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %269, i32 0, i32 3, !dbg !1156
  %271 = load %struct._list*, %struct._list** %270, align 8, !dbg !1156
  %272 = icmp ne %struct._list* %271, null, !dbg !1157
  br i1 %272, label %273, label %287, !dbg !1157

; <label>:273:                                    ; preds = %268
  %274 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1158
  %275 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %274, i32 0, i32 3, !dbg !1160
  %276 = load %struct._list*, %struct._list** %275, align 8, !dbg !1160
  %277 = icmp ne %struct._list* %276, null, !dbg !1161
  br i1 %277, label %279, label %278, !dbg !1162

; <label>:278:                                    ; preds = %273
  br label %285, !dbg !1163

; <label>:279:                                    ; preds = %273
  %280 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1165
  %281 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %280, i32 0, i32 3, !dbg !1167
  %282 = load %struct._list*, %struct._list** %281, align 8, !dbg !1167
  %283 = getelementptr inbounds %struct._list, %struct._list* %282, i32 0, i32 0, !dbg !1168
  %284 = load %struct._element*, %struct._element** %283, align 8, !dbg !1168
  br label %285, !dbg !1169

; <label>:285:                                    ; preds = %279, %278
  %286 = phi %struct._element* [ null, %278 ], [ %284, %279 ], !dbg !1170
  br label %288, !dbg !1172

; <label>:287:                                    ; preds = %268
  br label %288, !dbg !1173

; <label>:288:                                    ; preds = %287, %285
  %289 = phi %struct._element* [ %286, %285 ], [ null, %287 ], !dbg !1175
  store %struct._element* %289, %struct._element** %6, align 8, !dbg !1177
  br label %290, !dbg !1178

; <label>:290:                                    ; preds = %366, %288
  %291 = load %struct._element*, %struct._element** %6, align 8, !dbg !1179
  %292 = icmp ne %struct._element* %291, null, !dbg !1182
  br i1 %292, label %293, label %298, !dbg !1183

; <label>:293:                                    ; preds = %290
  %294 = load %struct._element*, %struct._element** %6, align 8, !dbg !1184
  %295 = getelementptr inbounds %struct._element, %struct._element* %294, i32 0, i32 2, !dbg !1186
  %296 = load i8*, i8** %295, align 8, !dbg !1186
  %297 = bitcast i8* %296 to %struct._ip_rule*, !dbg !1187
  store %struct._ip_rule* %297, %struct._ip_rule** %5, align 8, !dbg !1188
  br label %298

; <label>:298:                                    ; preds = %293, %290
  %299 = phi i1 [ false, %290 ], [ true, %293 ]
  br i1 %299, label %300, label %370, !dbg !1189

; <label>:300:                                    ; preds = %298
  %301 = load %struct._ip_rule*, %struct._ip_rule** %5, align 8, !dbg !1191
  %302 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %301, i32 0, i32 19, !dbg !1194
  %303 = load %struct._static_track_group*, %struct._static_track_group** %302, align 8, !dbg !1194
  %304 = icmp ne %struct._static_track_group* %303, null, !dbg !1191
  br i1 %304, label %306, label %305, !dbg !1195

; <label>:305:                                    ; preds = %300
  br label %366, !dbg !1196

; <label>:306:                                    ; preds = %300
  %307 = load %struct._ip_rule*, %struct._ip_rule** %5, align 8, !dbg !1197
  %308 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %307, i32 0, i32 18, !dbg !1199
  %309 = load i8, i8* %308, align 8, !dbg !1199
  %310 = trunc i8 %309 to i1, !dbg !1199
  br i1 %310, label %311, label %312, !dbg !1200

; <label>:311:                                    ; preds = %306
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0)), !dbg !1201
  br label %366, !dbg !1203

; <label>:312:                                    ; preds = %306
  %313 = load %struct._ip_rule*, %struct._ip_rule** %5, align 8, !dbg !1204
  %314 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %313, i32 0, i32 19, !dbg !1206
  %315 = load %struct._static_track_group*, %struct._static_track_group** %314, align 8, !dbg !1206
  %316 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %315, i32 0, i32 2, !dbg !1207
  %317 = load %struct._list*, %struct._list** %316, align 8, !dbg !1207
  %318 = icmp ne %struct._list* %317, null, !dbg !1208
  br i1 %318, label %319, label %337, !dbg !1208

; <label>:319:                                    ; preds = %312
  %320 = load %struct._ip_rule*, %struct._ip_rule** %5, align 8, !dbg !1209
  %321 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %320, i32 0, i32 19, !dbg !1211
  %322 = load %struct._static_track_group*, %struct._static_track_group** %321, align 8, !dbg !1211
  %323 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %322, i32 0, i32 2, !dbg !1212
  %324 = load %struct._list*, %struct._list** %323, align 8, !dbg !1212
  %325 = icmp ne %struct._list* %324, null, !dbg !1213
  br i1 %325, label %327, label %326, !dbg !1214

; <label>:326:                                    ; preds = %319
  br label %335, !dbg !1215

; <label>:327:                                    ; preds = %319
  %328 = load %struct._ip_rule*, %struct._ip_rule** %5, align 8, !dbg !1217
  %329 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %328, i32 0, i32 19, !dbg !1219
  %330 = load %struct._static_track_group*, %struct._static_track_group** %329, align 8, !dbg !1219
  %331 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %330, i32 0, i32 2, !dbg !1220
  %332 = load %struct._list*, %struct._list** %331, align 8, !dbg !1220
  %333 = getelementptr inbounds %struct._list, %struct._list* %332, i32 0, i32 0, !dbg !1221
  %334 = load %struct._element*, %struct._element** %333, align 8, !dbg !1221
  br label %335, !dbg !1222

; <label>:335:                                    ; preds = %327, %326
  %336 = phi %struct._element* [ null, %326 ], [ %334, %327 ], !dbg !1223
  br label %338, !dbg !1225

; <label>:337:                                    ; preds = %312
  br label %338, !dbg !1226

; <label>:338:                                    ; preds = %337, %335
  %339 = phi %struct._element* [ %336, %335 ], [ null, %337 ], !dbg !1228
  store %struct._element* %339, %struct._element** %7, align 8, !dbg !1230
  br label %340, !dbg !1231

; <label>:340:                                    ; preds = %361, %338
  %341 = load %struct._element*, %struct._element** %7, align 8, !dbg !1232
  %342 = icmp ne %struct._element* %341, null, !dbg !1235
  br i1 %342, label %343, label %348, !dbg !1236

; <label>:343:                                    ; preds = %340
  %344 = load %struct._element*, %struct._element** %7, align 8, !dbg !1237
  %345 = getelementptr inbounds %struct._element, %struct._element* %344, i32 0, i32 2, !dbg !1239
  %346 = load i8*, i8** %345, align 8, !dbg !1239
  %347 = bitcast i8* %346 to %struct._vrrp_t*, !dbg !1240
  store %struct._vrrp_t* %347, %struct._vrrp_t** %2, align 8, !dbg !1241
  br label %348

; <label>:348:                                    ; preds = %343, %340
  %349 = phi i1 [ false, %340 ], [ true, %343 ]
  br i1 %349, label %350, label %365, !dbg !1242

; <label>:350:                                    ; preds = %348
  %351 = load %struct._ip_rule*, %struct._ip_rule** %5, align 8, !dbg !1244
  %352 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %351, i32 0, i32 12, !dbg !1247
  %353 = load %struct._interface*, %struct._interface** %352, align 8, !dbg !1247
  %354 = icmp ne %struct._interface* %353, null, !dbg !1244
  br i1 %354, label %355, label %360, !dbg !1248

; <label>:355:                                    ; preds = %350
  %356 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1249
  %357 = load %struct._ip_rule*, %struct._ip_rule** %5, align 8, !dbg !1250
  %358 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %357, i32 0, i32 12, !dbg !1251
  %359 = load %struct._interface*, %struct._interface** %358, align 8, !dbg !1251
  call void @add_vrrp_to_interface(%struct._vrrp_t* %356, %struct._interface* %359, i32 0, i1 zeroext false, i32 128), !dbg !1252
  br label %360, !dbg !1252

; <label>:360:                                    ; preds = %355, %350
  br label %361, !dbg !1253

; <label>:361:                                    ; preds = %360
  %362 = load %struct._element*, %struct._element** %7, align 8, !dbg !1254
  %363 = getelementptr inbounds %struct._element, %struct._element* %362, i32 0, i32 0, !dbg !1256
  %364 = load %struct._element*, %struct._element** %363, align 8, !dbg !1256
  store %struct._element* %364, %struct._element** %7, align 8, !dbg !1257
  br label %340, !dbg !1258, !llvm.loop !1259

; <label>:365:                                    ; preds = %348
  br label %366, !dbg !1261

; <label>:366:                                    ; preds = %365, %311, %305
  %367 = load %struct._element*, %struct._element** %6, align 8, !dbg !1262
  %368 = getelementptr inbounds %struct._element, %struct._element* %367, i32 0, i32 0, !dbg !1264
  %369 = load %struct._element*, %struct._element** %368, align 8, !dbg !1264
  store %struct._element* %369, %struct._element** %6, align 8, !dbg !1265
  br label %290, !dbg !1266, !llvm.loop !1267

; <label>:370:                                    ; preds = %298
  ret void, !dbg !1269
}

declare void @free_list_element(%struct._list*, %struct._element*) #2

; Function Attrs: nounwind uwtable
define internal void @static_track_set_group(%struct._static_track_group*) #0 !dbg !1270 {
  %2 = alloca %struct._static_track_group*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._static_track_group* %0, %struct._static_track_group** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._static_track_group** %2, metadata !1273, metadata !140), !dbg !1274
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1275, metadata !140), !dbg !1276
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1277, metadata !140), !dbg !1278
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1279, metadata !140), !dbg !1280
  %6 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1281
  %7 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %6, i32 0, i32 1, !dbg !1283
  %8 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !1283
  %9 = icmp ne %struct._vector* %8, null, !dbg !1281
  br i1 %9, label %11, label %10, !dbg !1284

; <label>:10:                                     ; preds = %1
  br label %57, !dbg !1285

; <label>:11:                                     ; preds = %1
  %12 = call %struct._list* @alloc_list(void (i8*)* null, void (%struct._IO_FILE*, i8*)* null), !dbg !1286
  %13 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1287
  %14 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %13, i32 0, i32 2, !dbg !1288
  store %struct._list* %12, %struct._list** %14, align 8, !dbg !1289
  store i32 0, i32* %5, align 4, !dbg !1290
  br label %15, !dbg !1292

; <label>:15:                                     ; preds = %48, %11
  %16 = load i32, i32* %5, align 4, !dbg !1293
  %17 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1296
  %18 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %17, i32 0, i32 1, !dbg !1297
  %19 = load %struct._vector*, %struct._vector** %18, align 8, !dbg !1297
  %20 = getelementptr inbounds %struct._vector, %struct._vector* %19, i32 0, i32 1, !dbg !1298
  %21 = load i32, i32* %20, align 4, !dbg !1298
  %22 = icmp ult i32 %16, %21, !dbg !1299
  br i1 %22, label %23, label %51, !dbg !1300

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %5, align 4, !dbg !1301
  %25 = zext i32 %24 to i64, !dbg !1303
  %26 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1304
  %27 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %26, i32 0, i32 1, !dbg !1305
  %28 = load %struct._vector*, %struct._vector** %27, align 8, !dbg !1305
  %29 = getelementptr inbounds %struct._vector, %struct._vector* %28, i32 0, i32 2, !dbg !1306
  %30 = load i8**, i8*** %29, align 8, !dbg !1306
  %31 = getelementptr inbounds i8*, i8** %30, i64 %25, !dbg !1303
  %32 = load i8*, i8** %31, align 8, !dbg !1303
  store i8* %32, i8** %4, align 8, !dbg !1307
  %33 = load i8*, i8** %4, align 8, !dbg !1308
  %34 = call %struct._vrrp_t* @vrrp_get_instance(i8* %33), !dbg !1309
  store %struct._vrrp_t* %34, %struct._vrrp_t** %3, align 8, !dbg !1310
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1311
  %36 = icmp ne %struct._vrrp_t* %35, null, !dbg !1311
  br i1 %36, label %42, label %37, !dbg !1313

; <label>:37:                                     ; preds = %23
  %38 = load i8*, i8** %4, align 8, !dbg !1314
  %39 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1316
  %40 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %39, i32 0, i32 0, !dbg !1317
  %41 = load i8*, i8** %40, align 8, !dbg !1317
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i32 0, i32 0), i8* %38, i8* %41), !dbg !1318
  br label %48, !dbg !1319

; <label>:42:                                     ; preds = %23
  %43 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1320
  %44 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %43, i32 0, i32 2, !dbg !1321
  %45 = load %struct._list*, %struct._list** %44, align 8, !dbg !1321
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1322
  %47 = bitcast %struct._vrrp_t* %46 to i8*, !dbg !1322
  call void @list_add(%struct._list* %45, i8* %47), !dbg !1323
  br label %48, !dbg !1324

; <label>:48:                                     ; preds = %42, %37
  %49 = load i32, i32* %5, align 4, !dbg !1325
  %50 = add i32 %49, 1, !dbg !1325
  store i32 %50, i32* %5, align 4, !dbg !1325
  br label %15, !dbg !1327, !llvm.loop !1328

; <label>:51:                                     ; preds = %15
  %52 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1330
  %53 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %52, i32 0, i32 1, !dbg !1331
  %54 = load %struct._vector*, %struct._vector** %53, align 8, !dbg !1331
  call void @free_strvec(%struct._vector* %54), !dbg !1332
  %55 = load %struct._static_track_group*, %struct._static_track_group** %2, align 8, !dbg !1333
  %56 = getelementptr inbounds %struct._static_track_group, %struct._static_track_group* %55, i32 0, i32 1, !dbg !1334
  store %struct._vector* null, %struct._vector** %56, align 8, !dbg !1335
  br label %57, !dbg !1336

; <label>:57:                                     ; preds = %51, %10
  ret void, !dbg !1337
}

declare void @add_vrrp_to_interface(%struct._vrrp_t*, %struct._interface*, i32, i1 zeroext, i32) #2

; Function Attrs: nounwind uwtable
define void @static_track_reinstate_config(%struct._interface*) #0 !dbg !1339 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct._ip_address*, align 8
  %4 = alloca %struct._ip_route*, align 8
  %5 = alloca %struct._element*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !1342, metadata !140), !dbg !1343
  call void @llvm.dbg.declare(metadata %struct._ip_address** %3, metadata !1344, metadata !140), !dbg !1345
  call void @llvm.dbg.declare(metadata %struct._ip_route** %4, metadata !1346, metadata !140), !dbg !1347
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !1348, metadata !140), !dbg !1349
  %6 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1350
  %7 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %6, i32 0, i32 1, !dbg !1352
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !1352
  %9 = icmp ne %struct._list* %8, null, !dbg !1353
  br i1 %9, label %10, label %24, !dbg !1353

; <label>:10:                                     ; preds = %1
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1354
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 1, !dbg !1356
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !1356
  %14 = icmp ne %struct._list* %13, null, !dbg !1357
  br i1 %14, label %16, label %15, !dbg !1358

; <label>:15:                                     ; preds = %10
  br label %22, !dbg !1359

; <label>:16:                                     ; preds = %10
  %17 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1361
  %18 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %17, i32 0, i32 1, !dbg !1363
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !1363
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i32 0, i32 0, !dbg !1364
  %21 = load %struct._element*, %struct._element** %20, align 8, !dbg !1364
  br label %22, !dbg !1365

; <label>:22:                                     ; preds = %16, %15
  %23 = phi %struct._element* [ null, %15 ], [ %21, %16 ], !dbg !1366
  br label %25, !dbg !1368

; <label>:24:                                     ; preds = %1
  br label %25, !dbg !1369

; <label>:25:                                     ; preds = %24, %22
  %26 = phi %struct._element* [ %23, %22 ], [ null, %24 ], !dbg !1371
  store %struct._element* %26, %struct._element** %5, align 8, !dbg !1373
  br label %27, !dbg !1374

; <label>:27:                                     ; preds = %52, %25
  %28 = load %struct._element*, %struct._element** %5, align 8, !dbg !1375
  %29 = icmp ne %struct._element* %28, null, !dbg !1378
  br i1 %29, label %30, label %35, !dbg !1379

; <label>:30:                                     ; preds = %27
  %31 = load %struct._element*, %struct._element** %5, align 8, !dbg !1380
  %32 = getelementptr inbounds %struct._element, %struct._element* %31, i32 0, i32 2, !dbg !1382
  %33 = load i8*, i8** %32, align 8, !dbg !1382
  %34 = bitcast i8* %33 to %struct._ip_address*, !dbg !1383
  store %struct._ip_address* %34, %struct._ip_address** %3, align 8, !dbg !1384
  br label %35

; <label>:35:                                     ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ true, %30 ]
  br i1 %36, label %37, label %56, !dbg !1385

; <label>:37:                                     ; preds = %35
  %38 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !1387
  %39 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %38, i32 0, i32 8, !dbg !1390
  %40 = load i8, i8* %39, align 4, !dbg !1390
  %41 = trunc i8 %40 to i1, !dbg !1390
  br i1 %41, label %42, label %43, !dbg !1391

; <label>:42:                                     ; preds = %37
  br label %52, !dbg !1392

; <label>:43:                                     ; preds = %37
  %44 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !1393
  %45 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %44, i32 0, i32 2, !dbg !1395
  %46 = load %struct._interface*, %struct._interface** %45, align 8, !dbg !1395
  %47 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1396
  %48 = icmp ne %struct._interface* %46, %47, !dbg !1397
  br i1 %48, label %49, label %50, !dbg !1398

; <label>:49:                                     ; preds = %43
  br label %52, !dbg !1399

; <label>:50:                                     ; preds = %43
  %51 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !1400
  call void @reinstate_static_address(%struct._ip_address* %51), !dbg !1401
  br label %52, !dbg !1402

; <label>:52:                                     ; preds = %50, %49, %42
  %53 = load %struct._element*, %struct._element** %5, align 8, !dbg !1403
  %54 = getelementptr inbounds %struct._element, %struct._element* %53, i32 0, i32 0, !dbg !1405
  %55 = load %struct._element*, %struct._element** %54, align 8, !dbg !1405
  store %struct._element* %55, %struct._element** %5, align 8, !dbg !1406
  br label %27, !dbg !1407, !llvm.loop !1408

; <label>:56:                                     ; preds = %35
  %57 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1410
  %58 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %57, i32 0, i32 2, !dbg !1412
  %59 = load %struct._list*, %struct._list** %58, align 8, !dbg !1412
  %60 = icmp ne %struct._list* %59, null, !dbg !1413
  br i1 %60, label %61, label %75, !dbg !1413

; <label>:61:                                     ; preds = %56
  %62 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1414
  %63 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %62, i32 0, i32 2, !dbg !1416
  %64 = load %struct._list*, %struct._list** %63, align 8, !dbg !1416
  %65 = icmp ne %struct._list* %64, null, !dbg !1417
  br i1 %65, label %67, label %66, !dbg !1418

; <label>:66:                                     ; preds = %61
  br label %73, !dbg !1419

; <label>:67:                                     ; preds = %61
  %68 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1421
  %69 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %68, i32 0, i32 2, !dbg !1423
  %70 = load %struct._list*, %struct._list** %69, align 8, !dbg !1423
  %71 = getelementptr inbounds %struct._list, %struct._list* %70, i32 0, i32 0, !dbg !1424
  %72 = load %struct._element*, %struct._element** %71, align 8, !dbg !1424
  br label %73, !dbg !1425

; <label>:73:                                     ; preds = %67, %66
  %74 = phi %struct._element* [ null, %66 ], [ %72, %67 ], !dbg !1426
  br label %76, !dbg !1428

; <label>:75:                                     ; preds = %56
  br label %76, !dbg !1429

; <label>:76:                                     ; preds = %75, %73
  %77 = phi %struct._element* [ %74, %73 ], [ null, %75 ], !dbg !1431
  store %struct._element* %77, %struct._element** %5, align 8, !dbg !1433
  br label %78, !dbg !1434

; <label>:78:                                     ; preds = %103, %76
  %79 = load %struct._element*, %struct._element** %5, align 8, !dbg !1435
  %80 = icmp ne %struct._element* %79, null, !dbg !1438
  br i1 %80, label %81, label %86, !dbg !1439

; <label>:81:                                     ; preds = %78
  %82 = load %struct._element*, %struct._element** %5, align 8, !dbg !1440
  %83 = getelementptr inbounds %struct._element, %struct._element* %82, i32 0, i32 2, !dbg !1442
  %84 = load i8*, i8** %83, align 8, !dbg !1442
  %85 = bitcast i8* %84 to %struct._ip_route*, !dbg !1443
  store %struct._ip_route* %85, %struct._ip_route** %4, align 8, !dbg !1444
  br label %86

; <label>:86:                                     ; preds = %81, %78
  %87 = phi i1 [ false, %78 ], [ true, %81 ]
  br i1 %87, label %88, label %107, !dbg !1445

; <label>:88:                                     ; preds = %86
  %89 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1447
  %90 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %89, i32 0, i32 34, !dbg !1450
  %91 = load i8, i8* %90, align 4, !dbg !1450
  %92 = trunc i8 %91 to i1, !dbg !1450
  br i1 %92, label %93, label %94, !dbg !1451

; <label>:93:                                     ; preds = %88
  br label %103, !dbg !1452

; <label>:94:                                     ; preds = %88
  %95 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1453
  %96 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %95, i32 0, i32 10, !dbg !1455
  %97 = load %struct._interface*, %struct._interface** %96, align 8, !dbg !1455
  %98 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1456
  %99 = icmp ne %struct._interface* %97, %98, !dbg !1457
  br i1 %99, label %100, label %101, !dbg !1458

; <label>:100:                                    ; preds = %94
  br label %103, !dbg !1459

; <label>:101:                                    ; preds = %94
  %102 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !1460
  call void @reinstate_static_route(%struct._ip_route* %102), !dbg !1461
  br label %103, !dbg !1462

; <label>:103:                                    ; preds = %101, %100, %93
  %104 = load %struct._element*, %struct._element** %5, align 8, !dbg !1463
  %105 = getelementptr inbounds %struct._element, %struct._element* %104, i32 0, i32 0, !dbg !1465
  %106 = load %struct._element*, %struct._element** %105, align 8, !dbg !1465
  store %struct._element* %106, %struct._element** %5, align 8, !dbg !1466
  br label %78, !dbg !1467, !llvm.loop !1468

; <label>:107:                                    ; preds = %86
  ret void, !dbg !1470
}

declare void @reinstate_static_address(%struct._ip_address*) #2

declare void @reinstate_static_route(%struct._ip_route*) #2

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #2

declare %struct._vrrp_t* @vrrp_get_instance(i8*) #2

declare void @list_add(%struct._list*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!133, !134}
!llvm.ident = !{!135}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !44)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_static_track.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !4, line: 173, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!7 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!8 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!9 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!10 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 41, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!14 = !DIEnumerator(name: "THREAD_READ", value: 0)
!15 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!16 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!17 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!18 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!19 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!20 = !DIEnumerator(name: "THREAD_READY", value: 6)
!21 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!22 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!23 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!24 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!25 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!26 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!27 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!28 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!29 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!30 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!31 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 119, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "./../include/vrrp_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !DIEnumerator(name: "TRACK_VRRP", value: 1)
!36 = !DIEnumerator(name: "TRACK_IF", value: 2)
!37 = !DIEnumerator(name: "TRACK_SG", value: 4)
!38 = !DIEnumerator(name: "TRACK_ADDR", value: 4)
!39 = !DIEnumerator(name: "TRACK_ROUTE", value: 8)
!40 = !DIEnumerator(name: "TRACK_RULE", value: 16)
!41 = !DIEnumerator(name: "TRACK_SADDR", value: 32)
!42 = !DIEnumerator(name: "TRACK_SROUTE", value: 64)
!43 = !DIEnumerator(name: "TRACK_SRULE", value: 128)
!44 = !{!45}
!45 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !46, line: 150, type: !47, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!46 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !48, line: 31, baseType: !49)
!48 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !48, line: 39, size: 320, align: 64, elements: !51)
!51 = !{!52, !60, !61, !63, !67}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !48, line: 40, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !48, line: 33, size: 192, align: 64, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !48, line: 34, baseType: !53, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !54, file: !48, line: 35, baseType: !53, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !54, file: !48, line: 36, baseType: !59, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !50, file: !48, line: 41, baseType: !53, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !50, file: !48, line: 42, baseType: !62, size: 32, align: 32, offset: 128)
!62 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !50, file: !48, line: 43, baseType: !64, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !59}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !50, file: !48, line: 44, baseType: !68, size: 64, align: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !59}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !73, line: 48, baseType: !74)
!73 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 241, size: 1728, align: 64, elements: !76)
!75 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!76 = !{!77, !79, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !100, !101, !102, !103, !107, !109, !111, !115, !118, !120, !121, !122, !123, !124, !128, !129}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 242, baseType: !78, size: 32, align: 32)
!78 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 247, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 248, baseType: !80, size: 64, align: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 249, baseType: !80, size: 64, align: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 250, baseType: !80, size: 64, align: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 251, baseType: !80, size: 64, align: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 252, baseType: !80, size: 64, align: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 253, baseType: !80, size: 64, align: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 254, baseType: !80, size: 64, align: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 256, baseType: !80, size: 64, align: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 257, baseType: !80, size: 64, align: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 258, baseType: !80, size: 64, align: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 260, baseType: !93, size: 64, align: 64, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 156, size: 192, align: 64, elements: !95)
!95 = !{!96, !97, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !94, file: !75, line: 157, baseType: !93, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !94, file: !75, line: 158, baseType: !98, size: 64, align: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !94, file: !75, line: 162, baseType: !78, size: 32, align: 32, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 262, baseType: !98, size: 64, align: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 264, baseType: !78, size: 32, align: 32, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 268, baseType: !78, size: 32, align: 32, offset: 928)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 270, baseType: !104, size: 64, align: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !105, line: 131, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!106 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 274, baseType: !108, size: 16, align: 16, offset: 1024)
!108 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 275, baseType: !110, size: 8, align: 8, offset: 1040)
!110 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 276, baseType: !112, size: 8, align: 8, offset: 1048)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 1)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 280, baseType: !116, size: 64, align: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 150, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 289, baseType: !119, size: 64, align: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !105, line: 132, baseType: !106)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !74, file: !75, line: 297, baseType: !59, size: 64, align: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !74, file: !75, line: 298, baseType: !59, size: 64, align: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !74, file: !75, line: 299, baseType: !59, size: 64, align: 64, offset: 1344)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !74, file: !75, line: 300, baseType: !59, size: 64, align: 64, offset: 1408)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 302, baseType: !125, size: 64, align: 64, offset: 1472)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 216, baseType: !127)
!126 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!127 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 303, baseType: !78, size: 32, align: 32, offset: 1536)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 305, baseType: !130, size: 160, align: 8, offset: 1568)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, align: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 20)
!133 = !{i32 2, !"Dwarf Version", i32 4}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!136 = distinct !DISubprogram(name: "free_tgroup", scope: !137, file: !137, line: 39, type: !65, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!137 = !DIFile(filename: "vrrp_static_track.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!138 = !{}
!139 = !DILocalVariable(name: "data", arg: 1, scope: !136, file: !137, line: 39, type: !59)
!140 = !DIExpression()
!141 = !DILocation(line: 39, column: 19, scope: !136)
!142 = !DILocalVariable(name: "tgroup", scope: !136, file: !137, line: 41, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !145, line: 39, baseType: !146)
!145 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !145, line: 35, size: 192, align: 64, elements: !147)
!147 = !{!148, !149, !159}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !146, file: !145, line: 36, baseType: !80, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !146, file: !145, line: 37, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !152, line: 34, baseType: !153)
!152 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !152, line: 30, size: 128, align: 64, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !153, file: !152, line: 31, baseType: !62, size: 32, align: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !153, file: !152, line: 32, baseType: !62, size: 32, align: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !153, file: !152, line: 33, baseType: !158, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !146, file: !145, line: 38, baseType: !47, size: 64, align: 64, offset: 128)
!160 = !DILocation(line: 41, column: 24, scope: !136)
!161 = !DILocation(line: 41, column: 33, scope: !136)
!162 = !DILocation(line: 43, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !136, file: !137, line: 43, column: 6)
!164 = !DILocation(line: 43, column: 14, scope: !163)
!165 = !DILocation(line: 43, column: 6, scope: !136)
!166 = !DILocation(line: 44, column: 83, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !137, line: 43, column: 21)
!168 = !DILocation(line: 44, column: 91, scope: !167)
!169 = !DILocation(line: 44, column: 3, scope: !167)
!170 = !DILocation(line: 45, column: 15, scope: !167)
!171 = !DILocation(line: 45, column: 23, scope: !167)
!172 = !DILocation(line: 45, column: 3, scope: !167)
!173 = !DILocation(line: 46, column: 2, scope: !167)
!174 = !DILocation(line: 47, column: 8, scope: !136)
!175 = !DILocation(line: 47, column: 16, scope: !136)
!176 = !DILocation(line: 47, column: 3, scope: !136)
!177 = !DILocation(line: 47, column: 25, scope: !136)
!178 = !DILocation(line: 47, column: 33, scope: !136)
!179 = !DILocation(line: 47, column: 40, scope: !136)
!180 = !DILocation(line: 48, column: 13, scope: !136)
!181 = !DILocation(line: 48, column: 21, scope: !136)
!182 = !DILocation(line: 48, column: 2, scope: !136)
!183 = !DILocation(line: 49, column: 8, scope: !136)
!184 = !DILocation(line: 49, column: 3, scope: !136)
!185 = !DILocation(line: 49, column: 26, scope: !136)
!186 = !DILocation(line: 50, column: 1, scope: !136)
!187 = distinct !DISubprogram(name: "dump_tgroup", scope: !137, file: !137, line: 53, type: !69, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!188 = !DILocalVariable(name: "fp", arg: 1, scope: !187, file: !137, line: 53, type: !71)
!189 = !DILocation(line: 53, column: 19, scope: !187)
!190 = !DILocalVariable(name: "data", arg: 2, scope: !187, file: !137, line: 53, type: !59)
!191 = !DILocation(line: 53, column: 29, scope: !187)
!192 = !DILocalVariable(name: "tgroup", scope: !187, file: !137, line: 55, type: !143)
!193 = !DILocation(line: 55, column: 24, scope: !187)
!194 = !DILocation(line: 55, column: 33, scope: !187)
!195 = !DILocalVariable(name: "vrrp", scope: !187, file: !137, line: 56, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !199)
!199 = !{!200, !203, !204, !245, !267, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !373, !374, !375, !376, !377, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !535, !542}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !198, file: !4, line: 184, baseType: !201, size: 16, align: 16)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !202, line: 28, baseType: !108)
!202 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !198, file: !4, line: 185, baseType: !80, size: 64, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !198, file: !4, line: 186, baseType: !205, size: 64, align: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !217, !218, !219, !220, !221, !222, !239, !240, !241, !242, !243, !244}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !207, file: !4, line: 110, baseType: !80, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !207, file: !4, line: 111, baseType: !150, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !207, file: !4, line: 112, baseType: !47, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !207, file: !4, line: 113, baseType: !62, size: 32, align: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !207, file: !4, line: 114, baseType: !62, size: 32, align: 32, offset: 224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !207, file: !4, line: 115, baseType: !78, size: 32, align: 32, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !207, file: !4, line: 116, baseType: !216, size: 8, align: 8, offset: 288)
!216 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !207, file: !4, line: 119, baseType: !47, size: 64, align: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !207, file: !4, line: 120, baseType: !47, size: 64, align: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !207, file: !4, line: 121, baseType: !47, size: 64, align: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !207, file: !4, line: 122, baseType: !47, size: 64, align: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !207, file: !4, line: 125, baseType: !216, size: 8, align: 8, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !207, file: !4, line: 126, baseType: !223, size: 64, align: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !225, line: 65, baseType: !226)
!225 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !225, line: 59, size: 192, align: 64, elements: !227)
!227 = !{!228, !230, !231, !232, !236}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !226, file: !225, line: 60, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !226, file: !225, line: 61, baseType: !78, size: 32, align: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !225, line: 62, baseType: !78, size: 32, align: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !226, file: !225, line: 63, baseType: !233, size: 32, align: 32, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !234, line: 80, baseType: !235)
!234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !105, line: 125, baseType: !62)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !226, file: !225, line: 64, baseType: !237, size: 32, align: 32, offset: 160)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !234, line: 65, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !105, line: 126, baseType: !62)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !207, file: !4, line: 127, baseType: !223, size: 64, align: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !207, file: !4, line: 128, baseType: !223, size: 64, align: 64, offset: 768)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !207, file: !4, line: 129, baseType: !223, size: 64, align: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !207, file: !4, line: 130, baseType: !223, size: 64, align: 64, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !207, file: !4, line: 131, baseType: !78, size: 32, align: 32, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !207, file: !4, line: 132, baseType: !78, size: 32, align: 32, offset: 992)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !198, file: !4, line: 187, baseType: !246, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !249)
!249 = !{!250, !253, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !248, file: !4, line: 137, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !252, line: 55, baseType: !127)
!252 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!253 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !248, file: !4, line: 138, baseType: !254, size: 32, align: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !252, line: 51, baseType: !62)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !248, file: !4, line: 140, baseType: !254, size: 32, align: 32, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !248, file: !4, line: 141, baseType: !254, size: 32, align: 32, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !248, file: !4, line: 143, baseType: !251, size: 64, align: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !248, file: !4, line: 144, baseType: !251, size: 64, align: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !248, file: !4, line: 145, baseType: !251, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !248, file: !4, line: 146, baseType: !251, size: 64, align: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !248, file: !4, line: 147, baseType: !251, size: 64, align: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !248, file: !4, line: 149, baseType: !254, size: 32, align: 32, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !248, file: !4, line: 151, baseType: !254, size: 32, align: 32, offset: 544)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !248, file: !4, line: 152, baseType: !254, size: 32, align: 32, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !248, file: !4, line: 155, baseType: !251, size: 64, align: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !248, file: !4, line: 156, baseType: !251, size: 64, align: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !198, file: !4, line: 188, baseType: !268, size: 64, align: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !46, line: 111, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !46, line: 76, size: 1792, align: 64, elements: !271)
!271 = !{!272, !276, !278, !284, !303, !304, !305, !306, !307, !313, !314, !315, !316, !317, !318, !320, !321, !322, !323, !344, !345, !346, !347, !348, !349, !350, !351}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !270, file: !46, line: 77, baseType: !273, size: 128, align: 8)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, align: 8, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !270, file: !46, line: 78, baseType: !277, size: 32, align: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !46, line: 62, baseType: !254)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !270, file: !46, line: 79, baseType: !279, size: 32, align: 32, offset: 160)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !280, line: 31, size: 32, align: 32, elements: !281)
!280 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !279, file: !280, line: 33, baseType: !283, size: 32, align: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !280, line: 30, baseType: !254)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !270, file: !46, line: 80, baseType: !285, size: 128, align: 32, offset: 192)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !280, line: 211, size: 128, align: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !285, file: !280, line: 220, baseType: !288, size: 128, align: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !280, line: 213, size: 128, align: 32, elements: !289)
!289 = !{!290, !294, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !288, file: !280, line: 215, baseType: !291, size: 128, align: 8)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, align: 8, elements: !274)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !252, line: 48, baseType: !293)
!293 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !288, file: !280, line: 217, baseType: !295, size: 128, align: 16)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, align: 16, elements: !297)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !252, line: 49, baseType: !108)
!297 = !{!298}
!298 = !DISubrange(count: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !288, file: !280, line: 218, baseType: !300, size: 128, align: 32)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, align: 32, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 4)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !270, file: !46, line: 81, baseType: !62, size: 32, align: 32, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !270, file: !46, line: 82, baseType: !216, size: 8, align: 8, offset: 352)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !270, file: !46, line: 83, baseType: !254, size: 32, align: 32, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !270, file: !46, line: 84, baseType: !108, size: 16, align: 16, offset: 416)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !270, file: !46, line: 85, baseType: !308, size: 256, align: 8, offset: 432)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, align: 8, elements: !311)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !234, line: 33, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !105, line: 30, baseType: !293)
!311 = !{!312}
!312 = !DISubrange(count: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !270, file: !46, line: 86, baseType: !308, size: 256, align: 8, offset: 688)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !270, file: !46, line: 87, baseType: !125, size: 64, align: 64, offset: 960)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !270, file: !46, line: 88, baseType: !78, size: 32, align: 32, offset: 1024)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !270, file: !46, line: 90, baseType: !216, size: 8, align: 8, offset: 1056)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !270, file: !46, line: 91, baseType: !277, size: 32, align: 32, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !270, file: !46, line: 92, baseType: !319, size: 64, align: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !270, file: !46, line: 94, baseType: !277, size: 32, align: 32, offset: 1216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !270, file: !46, line: 96, baseType: !319, size: 64, align: 64, offset: 1280)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !270, file: !46, line: 97, baseType: !216, size: 8, align: 8, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !270, file: !46, line: 100, baseType: !324, size: 64, align: 64, offset: 1408)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !46, line: 73, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !46, line: 65, size: 704, align: 64, elements: !327)
!327 = !{!328, !338, !339, !340, !341, !342, !343}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !326, file: !46, line: 66, baseType: !329, size: 128, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !330, line: 31, baseType: !331)
!330 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !332, line: 30, size: 128, align: 64, elements: !333)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!333 = !{!334, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !331, file: !332, line: 32, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !105, line: 139, baseType: !106)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !331, file: !332, line: 33, baseType: !337, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !105, line: 141, baseType: !106)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !326, file: !46, line: 67, baseType: !216, size: 8, align: 8, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !326, file: !46, line: 68, baseType: !329, size: 128, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !326, file: !46, line: 69, baseType: !216, size: 8, align: 8, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !326, file: !46, line: 70, baseType: !329, size: 128, align: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !326, file: !46, line: 71, baseType: !329, size: 128, align: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !326, file: !46, line: 72, baseType: !78, size: 32, align: 32, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !270, file: !46, line: 101, baseType: !216, size: 8, align: 8, offset: 1472)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !270, file: !46, line: 102, baseType: !78, size: 32, align: 32, offset: 1504)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !270, file: !46, line: 103, baseType: !254, size: 32, align: 32, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !270, file: !46, line: 104, baseType: !254, size: 32, align: 32, offset: 1568)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !270, file: !46, line: 105, baseType: !254, size: 32, align: 32, offset: 1600)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !270, file: !46, line: 107, baseType: !62, size: 32, align: 32, offset: 1632)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !270, file: !46, line: 109, baseType: !216, size: 8, align: 8, offset: 1664)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !270, file: !46, line: 110, baseType: !47, size: 64, align: 64, offset: 1728)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !198, file: !4, line: 189, baseType: !216, size: 8, align: 8, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !198, file: !4, line: 190, baseType: !216, size: 8, align: 8, offset: 328)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !198, file: !4, line: 191, baseType: !216, size: 8, align: 8, offset: 336)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !198, file: !4, line: 193, baseType: !62, size: 32, align: 32, offset: 352)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !198, file: !4, line: 195, baseType: !127, size: 64, align: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !198, file: !4, line: 196, baseType: !273, size: 128, align: 8, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !198, file: !4, line: 198, baseType: !47, size: 64, align: 64, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !198, file: !4, line: 199, baseType: !47, size: 64, align: 64, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !198, file: !4, line: 200, baseType: !47, size: 64, align: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !198, file: !4, line: 204, baseType: !62, size: 32, align: 32, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !198, file: !4, line: 205, baseType: !62, size: 32, align: 32, offset: 800)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !198, file: !4, line: 206, baseType: !364, size: 1024, align: 64, offset: 832)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !365, line: 166, size: 1024, align: 64, elements: !366)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!366 = !{!367, !368, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !364, file: !365, line: 168, baseType: !201, size: 16, align: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !364, file: !365, line: 169, baseType: !369, size: 944, align: 8, offset: 16)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 944, align: 8, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 118)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !364, file: !365, line: 170, baseType: !127, size: 64, align: 64, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !198, file: !4, line: 207, baseType: !216, size: 8, align: 8, offset: 1856)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !198, file: !4, line: 208, baseType: !216, size: 8, align: 8, offset: 1864)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !198, file: !4, line: 209, baseType: !364, size: 1024, align: 64, offset: 1920)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !198, file: !4, line: 210, baseType: !47, size: 64, align: 64, offset: 2944)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !198, file: !4, line: 212, baseType: !378, size: 32, align: 32, offset: 3008)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !198, file: !4, line: 214, baseType: !364, size: 1024, align: 64, offset: 3072)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !198, file: !4, line: 215, baseType: !292, size: 8, align: 8, offset: 4096)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !198, file: !4, line: 216, baseType: !329, size: 128, align: 64, offset: 4160)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !198, file: !4, line: 217, baseType: !62, size: 32, align: 32, offset: 4288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !198, file: !4, line: 218, baseType: !329, size: 128, align: 64, offset: 4352)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !198, file: !4, line: 219, baseType: !329, size: 128, align: 64, offset: 4480)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !198, file: !4, line: 220, baseType: !62, size: 32, align: 32, offset: 4608)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !198, file: !4, line: 221, baseType: !62, size: 32, align: 32, offset: 4640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !198, file: !4, line: 222, baseType: !62, size: 32, align: 32, offset: 4672)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !198, file: !4, line: 223, baseType: !216, size: 8, align: 8, offset: 4704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !198, file: !4, line: 224, baseType: !216, size: 8, align: 8, offset: 4712)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !198, file: !4, line: 225, baseType: !62, size: 32, align: 32, offset: 4736)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !198, file: !4, line: 226, baseType: !62, size: 32, align: 32, offset: 4768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !198, file: !4, line: 227, baseType: !62, size: 32, align: 32, offset: 4800)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !198, file: !4, line: 228, baseType: !292, size: 8, align: 8, offset: 4832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !198, file: !4, line: 229, baseType: !292, size: 8, align: 8, offset: 4840)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !198, file: !4, line: 230, baseType: !292, size: 8, align: 8, offset: 4848)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !198, file: !4, line: 231, baseType: !78, size: 32, align: 32, offset: 4864)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !198, file: !4, line: 233, baseType: !216, size: 8, align: 8, offset: 4896)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !198, file: !4, line: 234, baseType: !47, size: 64, align: 64, offset: 4928)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !198, file: !4, line: 235, baseType: !47, size: 64, align: 64, offset: 4992)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !198, file: !4, line: 239, baseType: !216, size: 8, align: 8, offset: 5056)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !198, file: !4, line: 240, baseType: !216, size: 8, align: 8, offset: 5064)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !198, file: !4, line: 241, baseType: !47, size: 64, align: 64, offset: 5120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !198, file: !4, line: 242, baseType: !47, size: 64, align: 64, offset: 5184)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !198, file: !4, line: 243, baseType: !62, size: 32, align: 32, offset: 5248)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !198, file: !4, line: 244, baseType: !62, size: 32, align: 32, offset: 5280)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !198, file: !4, line: 249, baseType: !62, size: 32, align: 32, offset: 5312)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !198, file: !4, line: 252, baseType: !125, size: 64, align: 64, offset: 5376)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !198, file: !4, line: 254, baseType: !216, size: 8, align: 8, offset: 5440)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !198, file: !4, line: 255, baseType: !216, size: 8, align: 8, offset: 5448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !198, file: !4, line: 256, baseType: !127, size: 64, align: 64, offset: 5504)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !198, file: !4, line: 260, baseType: !329, size: 128, align: 64, offset: 5568)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !198, file: !4, line: 261, baseType: !78, size: 32, align: 32, offset: 5696)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !198, file: !4, line: 265, baseType: !78, size: 32, align: 32, offset: 5728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !198, file: !4, line: 266, baseType: !216, size: 8, align: 8, offset: 5760)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !198, file: !4, line: 267, baseType: !416, size: 64, align: 64, offset: 5824)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !418, line: 50, baseType: !419)
!418 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !418, line: 40, size: 1344, align: 64, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !419, file: !418, line: 41, baseType: !201, size: 16, align: 16)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !419, file: !418, line: 42, baseType: !364, size: 1024, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !419, file: !418, line: 43, baseType: !78, size: 32, align: 32, offset: 1088)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !419, file: !418, line: 44, baseType: !277, size: 32, align: 32, offset: 1120)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !419, file: !418, line: 45, baseType: !216, size: 8, align: 8, offset: 1152)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !419, file: !418, line: 46, baseType: !78, size: 32, align: 32, offset: 1184)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !419, file: !418, line: 47, baseType: !78, size: 32, align: 32, offset: 1216)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !419, file: !418, line: 48, baseType: !78, size: 32, align: 32, offset: 1248)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !419, file: !418, line: 49, baseType: !430, size: 64, align: 64, offset: 1280)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !433)
!433 = !{!434, !435, !437, !490, !495, !496, !497, !509, !511}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !432, file: !12, line: 79, baseType: !127, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !432, file: !12, line: 80, baseType: !436, size: 32, align: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !432, file: !12, line: 81, baseType: !438, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !440)
!440 = !{!441, !453, !454, !455, !456, !464, !465, !466, !467, !468, !471, !482, !483, !484, !485, !486, !487, !488, !489}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !439, file: !12, line: 113, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !443, line: 109, baseType: !444)
!443 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !443, line: 106, size: 64, align: 64, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !444, file: !443, line: 108, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !443, line: 97, size: 192, align: 64, elements: !449)
!449 = !{!450, !451, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !448, file: !443, line: 99, baseType: !127, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !448, file: !443, line: 102, baseType: !447, size: 64, align: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !448, file: !443, line: 103, baseType: !447, size: 64, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !439, file: !12, line: 114, baseType: !442, size: 64, align: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !439, file: !12, line: 115, baseType: !442, size: 64, align: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !439, file: !12, line: 116, baseType: !442, size: 64, align: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !439, file: !12, line: 117, baseType: !457, size: 128, align: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !458, line: 62, baseType: !459)
!458 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !458, line: 60, size: 128, align: 64, elements: !460)
!460 = !{!461, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !458, line: 61, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !459, file: !458, line: 61, baseType: !462, size: 64, align: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !439, file: !12, line: 121, baseType: !457, size: 128, align: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !439, file: !12, line: 122, baseType: !457, size: 128, align: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !439, file: !12, line: 124, baseType: !47, size: 64, align: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !439, file: !12, line: 127, baseType: !442, size: 64, align: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !439, file: !12, line: 128, baseType: !469, size: 64, align: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !439, file: !12, line: 129, baseType: !472, size: 64, align: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !475)
!475 = !{!476, !477, !478, !479, !480}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !474, file: !12, line: 103, baseType: !430, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !474, file: !12, line: 104, baseType: !430, size: 64, align: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !12, line: 105, baseType: !127, size: 64, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !474, file: !12, line: 106, baseType: !78, size: 32, align: 32, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !474, file: !12, line: 108, baseType: !481, size: 192, align: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !443, line: 104, baseType: !448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !439, file: !12, line: 130, baseType: !62, size: 32, align: 32, offset: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !439, file: !12, line: 131, baseType: !62, size: 32, align: 32, offset: 928)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !439, file: !12, line: 132, baseType: !78, size: 32, align: 32, offset: 960)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !439, file: !12, line: 135, baseType: !78, size: 32, align: 32, offset: 992)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !439, file: !12, line: 136, baseType: !430, size: 64, align: 64, offset: 1024)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !439, file: !12, line: 146, baseType: !127, size: 64, align: 64, offset: 1088)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !439, file: !12, line: 147, baseType: !127, size: 64, align: 64, offset: 1152)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !439, file: !12, line: 148, baseType: !216, size: 8, align: 8, offset: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !432, file: !12, line: 82, baseType: !491, size: 64, align: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!78, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !432, file: !12, line: 83, baseType: !59, size: 64, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !432, file: !12, line: 84, baseType: !329, size: 128, align: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !432, file: !12, line: 92, baseType: !498, size: 64, align: 32, offset: 448)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !12, line: 85, size: 64, align: 32, elements: !499)
!499 = !{!500, !501, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !498, file: !12, line: 86, baseType: !78, size: 32, align: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !498, file: !12, line: 87, baseType: !78, size: 32, align: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !498, file: !12, line: 91, baseType: !503, size: 64, align: 32)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !498, file: !12, line: 88, size: 64, align: 32, elements: !504)
!504 = !{!505, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !503, file: !12, line: 89, baseType: !506, size: 32, align: 32)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !234, line: 98, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !105, line: 133, baseType: !78)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !503, file: !12, line: 90, baseType: !78, size: 32, align: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !432, file: !12, line: 93, baseType: !510, size: 64, align: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !12, line: 95, baseType: !512, size: 192, align: 64, offset: 576)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !12, line: 95, size: 192, align: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !512, file: !12, line: 96, baseType: !481, size: 192, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !12, line: 97, baseType: !457, size: 128, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !198, file: !4, line: 269, baseType: !78, size: 32, align: 32, offset: 5888)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !198, file: !4, line: 271, baseType: !78, size: 32, align: 32, offset: 5920)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !198, file: !4, line: 274, baseType: !78, size: 32, align: 32, offset: 5952)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !198, file: !4, line: 275, baseType: !78, size: 32, align: 32, offset: 5984)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !198, file: !4, line: 276, baseType: !216, size: 8, align: 8, offset: 6016)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !198, file: !4, line: 277, baseType: !223, size: 64, align: 64, offset: 6080)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !198, file: !4, line: 278, baseType: !223, size: 64, align: 64, offset: 6144)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !198, file: !4, line: 279, baseType: !223, size: 64, align: 64, offset: 6208)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !198, file: !4, line: 280, baseType: !223, size: 64, align: 64, offset: 6272)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !198, file: !4, line: 281, baseType: !223, size: 64, align: 64, offset: 6336)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !198, file: !4, line: 282, baseType: !223, size: 64, align: 64, offset: 6400)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !198, file: !4, line: 285, baseType: !254, size: 32, align: 32, offset: 6464)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !198, file: !4, line: 286, baseType: !329, size: 128, align: 64, offset: 6528)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !198, file: !4, line: 289, baseType: !80, size: 64, align: 64, offset: 6656)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !198, file: !4, line: 290, baseType: !125, size: 64, align: 64, offset: 6720)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !198, file: !4, line: 291, baseType: !254, size: 32, align: 32, offset: 6784)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !198, file: !4, line: 295, baseType: !292, size: 8, align: 8, offset: 6816)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !198, file: !4, line: 296, baseType: !534, size: 64, align: 8, offset: 6824)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 64, align: 8, elements: !297)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !198, file: !4, line: 299, baseType: !536, size: 64, align: 32, offset: 6912)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !537, line: 58, baseType: !538)
!537 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !537, line: 55, size: 64, align: 32, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !538, file: !537, line: 56, baseType: !216, size: 8, align: 8)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !538, file: !537, line: 57, baseType: !254, size: 32, align: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !198, file: !4, line: 309, baseType: !78, size: 32, align: 32, offset: 6976)
!543 = !DILocation(line: 56, column: 10, scope: !187)
!544 = !DILocalVariable(name: "e", scope: !187, file: !137, line: 57, type: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !48, line: 30, baseType: !53)
!546 = !DILocation(line: 57, column: 10, scope: !187)
!547 = !DILocation(line: 59, column: 13, scope: !187)
!548 = !DILocation(line: 59, column: 45, scope: !187)
!549 = !DILocation(line: 59, column: 53, scope: !187)
!550 = !DILocation(line: 59, column: 2, scope: !187)
!551 = !DILocation(line: 60, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !187, file: !137, line: 60, column: 6)
!553 = !DILocation(line: 60, column: 14, scope: !552)
!554 = !DILocation(line: 60, column: 6, scope: !187)
!555 = !DILocation(line: 61, column: 14, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !137, line: 60, column: 30)
!557 = !DILocation(line: 61, column: 53, scope: !556)
!558 = !DILocation(line: 61, column: 61, scope: !556)
!559 = !DILocation(line: 61, column: 78, scope: !556)
!560 = !DILocation(line: 61, column: 3, scope: !556)
!561 = !DILocation(line: 62, column: 16, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !137, line: 62, column: 3)
!563 = !DILocation(line: 62, column: 24, scope: !562)
!564 = !DILocation(line: 62, column: 15, scope: !562)
!565 = !DILocation(line: 62, column: 45, scope: !566)
!566 = !DILexicalBlockFile(scope: !562, file: !137, discriminator: 1)
!567 = !DILocation(line: 62, column: 53, scope: !566)
!568 = !DILocation(line: 62, column: 44, scope: !566)
!569 = !DILocation(line: 62, column: 43, scope: !566)
!570 = !DILocation(line: 62, column: 43, scope: !571)
!571 = !DILexicalBlockFile(scope: !562, file: !137, discriminator: 2)
!572 = !DILocation(line: 62, column: 5, scope: !573)
!573 = !DILexicalBlockFile(scope: !562, file: !137, discriminator: 3)
!574 = !DILocation(line: 62, column: 13, scope: !573)
!575 = !DILocation(line: 62, column: 30, scope: !573)
!576 = !DILocation(line: 62, column: 43, scope: !573)
!577 = !DILocation(line: 62, column: 43, scope: !578)
!578 = !DILexicalBlockFile(scope: !562, file: !137, discriminator: 4)
!579 = !DILocation(line: 62, column: 15, scope: !578)
!580 = !DILocation(line: 62, column: 15, scope: !581)
!581 = !DILexicalBlockFile(scope: !562, file: !137, discriminator: 5)
!582 = !DILocation(line: 62, column: 15, scope: !583)
!583 = !DILexicalBlockFile(scope: !562, file: !137, discriminator: 6)
!584 = !DILocation(line: 62, column: 12, scope: !583)
!585 = !DILocation(line: 62, column: 8, scope: !583)
!586 = !DILocation(line: 62, column: 6, scope: !587)
!587 = !DILexicalBlockFile(scope: !588, file: !137, discriminator: 7)
!588 = distinct !DILexicalBlock(scope: !562, file: !137, line: 62, column: 3)
!589 = !DILocation(line: 62, column: 5, scope: !587)
!590 = !DILocation(line: 62, column: 9, scope: !587)
!591 = !DILocation(line: 62, column: 24, scope: !592)
!592 = !DILexicalBlockFile(scope: !588, file: !137, discriminator: 8)
!593 = !DILocation(line: 62, column: 28, scope: !592)
!594 = !DILocation(line: 62, column: 22, scope: !592)
!595 = !DILocation(line: 62, column: 20, scope: !592)
!596 = !DILocation(line: 62, column: 3, scope: !597)
!597 = !DILexicalBlockFile(scope: !562, file: !137, discriminator: 9)
!598 = !DILocation(line: 63, column: 15, scope: !588)
!599 = !DILocation(line: 63, column: 30, scope: !588)
!600 = !DILocation(line: 63, column: 36, scope: !588)
!601 = !DILocation(line: 63, column: 4, scope: !588)
!602 = !DILocation(line: 62, column: 47, scope: !603)
!603 = !DILexicalBlockFile(scope: !588, file: !137, discriminator: 10)
!604 = !DILocation(line: 62, column: 51, scope: !603)
!605 = !DILocation(line: 62, column: 44, scope: !603)
!606 = !DILocation(line: 62, column: 3, scope: !603)
!607 = distinct !{!607, !608}
!608 = !DILocation(line: 62, column: 3, scope: !556)
!609 = !DILocation(line: 64, column: 2, scope: !556)
!610 = !DILocation(line: 65, column: 1, scope: !187)
!611 = distinct !DISubprogram(name: "find_track_group", scope: !137, file: !137, line: 68, type: !612, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!612 = !DISubroutineType(types: !613)
!613 = !{!143, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!616 = !DILocalVariable(name: "gname", arg: 1, scope: !611, file: !137, line: 68, type: !614)
!617 = !DILocation(line: 68, column: 30, scope: !611)
!618 = !DILocalVariable(name: "e", scope: !611, file: !137, line: 70, type: !545)
!619 = !DILocation(line: 70, column: 10, scope: !611)
!620 = !DILocalVariable(name: "tg", scope: !611, file: !137, line: 71, type: !143)
!621 = !DILocation(line: 71, column: 24, scope: !611)
!622 = !DILocation(line: 73, column: 15, scope: !623)
!623 = distinct !DILexicalBlock(scope: !611, file: !137, line: 73, column: 2)
!624 = !DILocation(line: 73, column: 26, scope: !623)
!625 = !DILocation(line: 73, column: 14, scope: !623)
!626 = !DILocation(line: 73, column: 52, scope: !627)
!627 = !DILexicalBlockFile(scope: !623, file: !137, discriminator: 1)
!628 = !DILocation(line: 73, column: 63, scope: !627)
!629 = !DILocation(line: 73, column: 51, scope: !627)
!630 = !DILocation(line: 73, column: 50, scope: !627)
!631 = !DILocation(line: 73, column: 50, scope: !632)
!632 = !DILexicalBlockFile(scope: !623, file: !137, discriminator: 2)
!633 = !DILocation(line: 73, column: 4, scope: !634)
!634 = !DILexicalBlockFile(scope: !623, file: !137, discriminator: 3)
!635 = !DILocation(line: 73, column: 15, scope: !634)
!636 = !DILocation(line: 73, column: 37, scope: !634)
!637 = !DILocation(line: 73, column: 50, scope: !634)
!638 = !DILocation(line: 73, column: 50, scope: !639)
!639 = !DILexicalBlockFile(scope: !623, file: !137, discriminator: 4)
!640 = !DILocation(line: 73, column: 14, scope: !639)
!641 = !DILocation(line: 73, column: 14, scope: !642)
!642 = !DILexicalBlockFile(scope: !623, file: !137, discriminator: 5)
!643 = !DILocation(line: 73, column: 14, scope: !644)
!644 = !DILexicalBlockFile(scope: !623, file: !137, discriminator: 6)
!645 = !DILocation(line: 73, column: 11, scope: !644)
!646 = !DILocation(line: 73, column: 7, scope: !644)
!647 = !DILocation(line: 73, column: 5, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !137, discriminator: 7)
!649 = distinct !DILexicalBlock(scope: !623, file: !137, line: 73, column: 2)
!650 = !DILocation(line: 73, column: 4, scope: !648)
!651 = !DILocation(line: 73, column: 8, scope: !648)
!652 = !DILocation(line: 73, column: 21, scope: !653)
!653 = !DILexicalBlockFile(scope: !649, file: !137, discriminator: 8)
!654 = !DILocation(line: 73, column: 25, scope: !653)
!655 = !DILocation(line: 73, column: 19, scope: !653)
!656 = !DILocation(line: 73, column: 17, scope: !653)
!657 = !DILocation(line: 73, column: 2, scope: !658)
!658 = !DILexicalBlockFile(scope: !623, file: !137, discriminator: 9)
!659 = !DILocation(line: 74, column: 15, scope: !660)
!660 = distinct !DILexicalBlock(scope: !649, file: !137, line: 74, column: 7)
!661 = !DILocation(line: 74, column: 22, scope: !660)
!662 = !DILocation(line: 74, column: 26, scope: !660)
!663 = !DILocation(line: 74, column: 8, scope: !660)
!664 = !DILocation(line: 74, column: 7, scope: !649)
!665 = !DILocation(line: 75, column: 11, scope: !660)
!666 = !DILocation(line: 75, column: 4, scope: !660)
!667 = !DILocation(line: 74, column: 31, scope: !668)
!668 = !DILexicalBlockFile(scope: !660, file: !137, discriminator: 1)
!669 = !DILocation(line: 73, column: 44, scope: !670)
!670 = !DILexicalBlockFile(scope: !649, file: !137, discriminator: 10)
!671 = !DILocation(line: 73, column: 48, scope: !670)
!672 = !DILocation(line: 73, column: 41, scope: !670)
!673 = !DILocation(line: 73, column: 2, scope: !670)
!674 = distinct !{!674, !675}
!675 = !DILocation(line: 73, column: 2, scope: !611)
!676 = !DILocation(line: 77, column: 2, scope: !611)
!677 = !DILocation(line: 78, column: 1, scope: !611)
!678 = distinct !DISubprogram(name: "static_track_group_init", scope: !137, file: !137, line: 110, type: !679, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!679 = !DISubroutineType(types: !680)
!680 = !{null}
!681 = !DILocalVariable(name: "tg", scope: !678, file: !137, line: 112, type: !143)
!682 = !DILocation(line: 112, column: 24, scope: !678)
!683 = !DILocalVariable(name: "vrrp", scope: !678, file: !137, line: 113, type: !196)
!684 = !DILocation(line: 113, column: 10, scope: !678)
!685 = !DILocalVariable(name: "addr", scope: !678, file: !137, line: 114, type: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !688, line: 73, baseType: !689)
!688 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !688, line: 41, size: 704, align: 64, elements: !690)
!690 = !{!691, !703, !712, !713, !714, !715, !716, !717, !722, !723, !724, !725, !726}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !689, file: !688, line: 42, baseType: !692, size: 64, align: 32)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !693, line: 7, size: 64, align: 32, elements: !694)
!693 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!694 = !{!695, !698, !699, !700, !701}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !692, file: !693, line: 8, baseType: !696, size: 8, align: 8)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !697, line: 20, baseType: !293)
!697 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !692, file: !693, line: 9, baseType: !696, size: 8, align: 8, offset: 8)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !692, file: !693, line: 10, baseType: !696, size: 8, align: 8, offset: 16)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !692, file: !693, line: 11, baseType: !696, size: 8, align: 8, offset: 24)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !692, file: !693, line: 12, baseType: !702, size: 32, align: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !697, line: 26, baseType: !62)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !689, file: !688, line: 50, baseType: !704, size: 128, align: 32, offset: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !688, line: 44, size: 128, align: 32, elements: !705)
!705 = !{!706, !711}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !704, file: !688, line: 48, baseType: !707, size: 64, align: 32)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !688, line: 45, size: 64, align: 32, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !707, file: !688, line: 46, baseType: !279, size: 32, align: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !707, file: !688, line: 47, baseType: !279, size: 32, align: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !704, file: !688, line: 49, baseType: !285, size: 128, align: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !689, file: !688, line: 52, baseType: !268, size: 64, align: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !689, file: !688, line: 53, baseType: !80, size: 64, align: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !688, line: 55, baseType: !254, size: 32, align: 32, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !689, file: !688, line: 56, baseType: !254, size: 32, align: 32, offset: 352)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !689, file: !688, line: 61, baseType: !216, size: 8, align: 8, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !689, file: !688, line: 65, baseType: !718, size: 128, align: 32, offset: 416)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !688, line: 62, size: 128, align: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !718, file: !688, line: 63, baseType: !279, size: 32, align: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !718, file: !688, line: 64, baseType: !285, size: 128, align: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !689, file: !688, line: 66, baseType: !216, size: 8, align: 8, offset: 544)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !689, file: !688, line: 67, baseType: !143, size: 64, align: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !689, file: !688, line: 69, baseType: !216, size: 8, align: 8, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !689, file: !688, line: 70, baseType: !216, size: 8, align: 8, offset: 648)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !689, file: !688, line: 72, baseType: !216, size: 8, align: 8, offset: 656)
!727 = !DILocation(line: 114, column: 16, scope: !678)
!728 = !DILocalVariable(name: "route", scope: !678, file: !137, line: 116, type: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_route_t", file: !731, line: 239, baseType: !732)
!731 = !DIFile(filename: "./../include/vrrp_iproute.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_route", file: !731, line: 182, size: 1664, align: 64, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !815, !816, !817, !818, !819, !820}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !732, file: !731, line: 183, baseType: !686, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !732, file: !731, line: 184, baseType: !686, size: 64, align: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pref_src", scope: !732, file: !731, line: 185, baseType: !686, size: 64, align: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !732, file: !731, line: 186, baseType: !292, size: 8, align: 8, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !732, file: !731, line: 187, baseType: !292, size: 8, align: 8, offset: 200)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !732, file: !731, line: 188, baseType: !254, size: 32, align: 32, offset: 224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !732, file: !731, line: 189, baseType: !292, size: 8, align: 8, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !732, file: !731, line: 190, baseType: !292, size: 8, align: 8, offset: 264)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "metric", scope: !732, file: !731, line: 191, baseType: !254, size: 32, align: 32, offset: 288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !732, file: !731, line: 192, baseType: !686, size: 64, align: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "oif", scope: !732, file: !731, line: 193, baseType: !268, size: 64, align: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !731, line: 194, baseType: !254, size: 32, align: 32, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !732, file: !731, line: 195, baseType: !254, size: 32, align: 32, offset: 480)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "quickack", scope: !732, file: !731, line: 197, baseType: !216, size: 8, align: 8, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !732, file: !731, line: 202, baseType: !254, size: 32, align: 32, offset: 544)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !732, file: !731, line: 203, baseType: !254, size: 32, align: 32, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !732, file: !731, line: 204, baseType: !292, size: 8, align: 8, offset: 608)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "advmss", scope: !732, file: !731, line: 205, baseType: !254, size: 32, align: 32, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rtt", scope: !732, file: !731, line: 209, baseType: !254, size: 32, align: 32, offset: 672)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rttvar", scope: !732, file: !731, line: 210, baseType: !254, size: 32, align: 32, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reordering", scope: !732, file: !731, line: 211, baseType: !254, size: 32, align: 32, offset: 736)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !732, file: !731, line: 212, baseType: !254, size: 32, align: 32, offset: 768)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !732, file: !731, line: 213, baseType: !254, size: 32, align: 32, offset: 800)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !732, file: !731, line: 214, baseType: !254, size: 32, align: 32, offset: 832)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rto_min", scope: !732, file: !731, line: 215, baseType: !254, size: 32, align: 32, offset: 864)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "initcwnd", scope: !732, file: !731, line: 216, baseType: !254, size: 32, align: 32, offset: 896)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "initrwnd", scope: !732, file: !731, line: 217, baseType: !254, size: 32, align: 32, offset: 928)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "congctl", scope: !732, file: !731, line: 219, baseType: !80, size: 64, align: 64, offset: 960)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pref", scope: !732, file: !731, line: 222, baseType: !292, size: 8, align: 8, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !731, line: 227, baseType: !292, size: 8, align: 8, offset: 1032)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "realms", scope: !732, file: !731, line: 229, baseType: !254, size: 32, align: 32, offset: 1056)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "encap", scope: !732, file: !731, line: 231, baseType: !766, size: 320, align: 64, offset: 1088)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_t", file: !731, line: 116, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap", file: !731, line: 103, size: 320, align: 64, elements: !768)
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !731, line: 104, baseType: !296, size: 16, align: 16)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !731, line: 105, baseType: !254, size: 32, align: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !731, line: 106, baseType: !772, size: 256, align: 64, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !731, line: 106, size: 256, align: 64, elements: !773)
!773 = !{!774, !790, !800, !805}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mpls", scope: !772, file: !731, line: 108, baseType: !775, size: 128, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_mpls_t", file: !731, line: 76, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_mpls", file: !731, line: 73, size: 128, align: 64, elements: !777)
!777 = !{!778, !789}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !776, file: !731, line: 74, baseType: !779, size: 64, align: 32)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpls_labels", file: !731, line: 71, baseType: !780)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 64, align: 32, elements: !787)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpls_label", file: !782, line: 21, size: 32, align: 32, elements: !783)
!782 = !DIFile(filename: "/usr/include/linux/mpls.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !781, file: !782, line: 22, baseType: !785, size: 32, align: 32)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !786, line: 30, baseType: !702)
!786 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!787 = !{!788}
!788 = !DISubrange(count: 2)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_labels", scope: !776, file: !731, line: 75, baseType: !125, size: 64, align: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !772, file: !731, line: 110, baseType: !791, size: 256, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip_t", file: !731, line: 86, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip", file: !731, line: 79, size: 256, align: 64, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !792, file: !731, line: 80, baseType: !251, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !792, file: !731, line: 81, baseType: !686, size: 64, align: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !792, file: !731, line: 82, baseType: !686, size: 64, align: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !792, file: !731, line: 83, baseType: !292, size: 8, align: 8, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !731, line: 84, baseType: !296, size: 16, align: 16, offset: 208)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !792, file: !731, line: 85, baseType: !292, size: 8, align: 8, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ila", scope: !772, file: !731, line: 112, baseType: !801, size: 64, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ila_t", file: !731, line: 91, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ila", file: !731, line: 89, size: 64, align: 64, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "locator", scope: !802, file: !731, line: 90, baseType: !251, size: 64, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !772, file: !731, line: 114, baseType: !806, size: 256, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip6_t", file: !731, line: 101, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip6", file: !731, line: 94, size: 256, align: 64, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !807, file: !731, line: 95, baseType: !251, size: 64, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !807, file: !731, line: 96, baseType: !686, size: 64, align: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !807, file: !731, line: 97, baseType: !686, size: 64, align: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !807, file: !731, line: 98, baseType: !292, size: 8, align: 8, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !731, line: 99, baseType: !296, size: 16, align: 16, offset: 208)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !807, file: !731, line: 100, baseType: !292, size: 8, align: 8, offset: 224)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nhs", scope: !732, file: !731, line: 233, baseType: !47, size: 64, align: 64, offset: 1408)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !732, file: !731, line: 234, baseType: !254, size: 32, align: 32, offset: 1472)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !732, file: !731, line: 235, baseType: !216, size: 8, align: 8, offset: 1504)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !732, file: !731, line: 236, baseType: !143, size: 64, align: 64, offset: 1536)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !732, file: !731, line: 237, baseType: !216, size: 8, align: 8, offset: 1600)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "configured_ifindex", scope: !732, file: !731, line: 238, baseType: !254, size: 32, align: 32, offset: 1632)
!821 = !DILocation(line: 116, column: 14, scope: !678)
!822 = !DILocalVariable(name: "rule", scope: !678, file: !137, line: 117, type: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64, align: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_rule_t", file: !825, line: 113, baseType: !826)
!825 = !DIFile(filename: "./../include/vrrp_iprule.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_rule", file: !825, line: 65, size: 1024, align: 64, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !826, file: !825, line: 66, baseType: !254, size: 32, align: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !826, file: !825, line: 67, baseType: !216, size: 8, align: 8, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !826, file: !825, line: 68, baseType: !78, size: 32, align: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "from_addr", scope: !826, file: !825, line: 69, baseType: !686, size: 64, align: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "to_addr", scope: !826, file: !825, line: 70, baseType: !686, size: 64, align: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !826, file: !825, line: 71, baseType: !254, size: 32, align: 32, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !826, file: !825, line: 72, baseType: !292, size: 8, align: 8, offset: 288)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !826, file: !825, line: 73, baseType: !254, size: 32, align: 32, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fwmask", scope: !826, file: !825, line: 74, baseType: !254, size: 32, align: 32, offset: 352)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "realms", scope: !826, file: !825, line: 75, baseType: !254, size: 32, align: 32, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_prefix_len", scope: !826, file: !825, line: 77, baseType: !839, size: 32, align: 32, offset: 416)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !234, line: 196, baseType: !78)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_group", scope: !826, file: !825, line: 80, baseType: !254, size: 32, align: 32, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "iif", scope: !826, file: !825, line: 82, baseType: !268, size: 64, align: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "oif", scope: !826, file: !825, line: 84, baseType: !268, size: 64, align: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "goto_target", scope: !826, file: !825, line: 86, baseType: !254, size: 32, align: 32, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !826, file: !825, line: 87, baseType: !254, size: 32, align: 32, offset: 672)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !826, file: !825, line: 88, baseType: !292, size: 8, align: 8, offset: 704)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "tunnel_id", scope: !826, file: !825, line: 90, baseType: !251, size: 64, align: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !826, file: !825, line: 110, baseType: !216, size: 8, align: 8, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !826, file: !825, line: 111, baseType: !143, size: 64, align: 64, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !826, file: !825, line: 112, baseType: !216, size: 8, align: 8, offset: 960)
!850 = !DILocation(line: 117, column: 13, scope: !678)
!851 = !DILocalVariable(name: "e", scope: !678, file: !137, line: 119, type: !545)
!852 = !DILocation(line: 119, column: 10, scope: !678)
!853 = !DILocalVariable(name: "e1", scope: !678, file: !137, line: 119, type: !545)
!854 = !DILocation(line: 119, column: 13, scope: !678)
!855 = !DILocalVariable(name: "next", scope: !678, file: !137, line: 119, type: !545)
!856 = !DILocation(line: 119, column: 17, scope: !678)
!857 = !DILocation(line: 121, column: 15, scope: !858)
!858 = distinct !DILexicalBlock(scope: !678, file: !137, line: 121, column: 2)
!859 = !DILocation(line: 121, column: 26, scope: !858)
!860 = !DILocation(line: 121, column: 14, scope: !858)
!861 = !DILocation(line: 121, column: 52, scope: !862)
!862 = !DILexicalBlockFile(scope: !858, file: !137, discriminator: 1)
!863 = !DILocation(line: 121, column: 63, scope: !862)
!864 = !DILocation(line: 121, column: 51, scope: !862)
!865 = !DILocation(line: 121, column: 50, scope: !862)
!866 = !DILocation(line: 121, column: 50, scope: !867)
!867 = !DILexicalBlockFile(scope: !858, file: !137, discriminator: 2)
!868 = !DILocation(line: 121, column: 4, scope: !869)
!869 = !DILexicalBlockFile(scope: !858, file: !137, discriminator: 3)
!870 = !DILocation(line: 121, column: 15, scope: !869)
!871 = !DILocation(line: 121, column: 37, scope: !869)
!872 = !DILocation(line: 121, column: 50, scope: !869)
!873 = !DILocation(line: 121, column: 50, scope: !874)
!874 = !DILexicalBlockFile(scope: !858, file: !137, discriminator: 4)
!875 = !DILocation(line: 121, column: 14, scope: !874)
!876 = !DILocation(line: 121, column: 14, scope: !877)
!877 = !DILexicalBlockFile(scope: !858, file: !137, discriminator: 5)
!878 = !DILocation(line: 121, column: 14, scope: !879)
!879 = !DILexicalBlockFile(scope: !858, file: !137, discriminator: 6)
!880 = !DILocation(line: 121, column: 11, scope: !879)
!881 = !DILocation(line: 121, column: 7, scope: !879)
!882 = !DILocation(line: 121, column: 5, scope: !883)
!883 = !DILexicalBlockFile(scope: !884, file: !137, discriminator: 7)
!884 = distinct !DILexicalBlock(scope: !858, file: !137, line: 121, column: 2)
!885 = !DILocation(line: 121, column: 4, scope: !883)
!886 = !DILocation(line: 121, column: 8, scope: !883)
!887 = !DILocation(line: 121, column: 22, scope: !888)
!888 = !DILexicalBlockFile(scope: !884, file: !137, discriminator: 8)
!889 = !DILocation(line: 121, column: 26, scope: !888)
!890 = !DILocation(line: 121, column: 19, scope: !888)
!891 = !DILocation(line: 121, column: 41, scope: !888)
!892 = !DILocation(line: 121, column: 45, scope: !888)
!893 = !DILocation(line: 121, column: 39, scope: !888)
!894 = !DILocation(line: 121, column: 37, scope: !888)
!895 = !DILocation(line: 121, column: 2, scope: !896)
!896 = !DILexicalBlockFile(scope: !858, file: !137, discriminator: 9)
!897 = !DILocation(line: 122, column: 8, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !137, line: 122, column: 7)
!899 = distinct !DILexicalBlock(scope: !884, file: !137, line: 121, column: 70)
!900 = !DILocation(line: 122, column: 12, scope: !898)
!901 = !DILocation(line: 122, column: 7, scope: !899)
!902 = !DILocation(line: 123, column: 107, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !137, line: 122, column: 19)
!904 = !DILocation(line: 123, column: 111, scope: !903)
!905 = !DILocation(line: 123, column: 25, scope: !903)
!906 = !DILocation(line: 124, column: 43, scope: !903)
!907 = !DILocation(line: 124, column: 54, scope: !903)
!908 = !DILocation(line: 124, column: 75, scope: !903)
!909 = !DILocation(line: 124, column: 25, scope: !903)
!910 = !DILocation(line: 125, column: 25, scope: !903)
!911 = !DILocation(line: 128, column: 26, scope: !899)
!912 = !DILocation(line: 128, column: 3, scope: !899)
!913 = !DILocation(line: 130, column: 8, scope: !914)
!914 = distinct !DILexicalBlock(scope: !899, file: !137, line: 130, column: 7)
!915 = !DILocation(line: 130, column: 12, scope: !914)
!916 = !DILocation(line: 130, column: 7, scope: !899)
!917 = !DILocation(line: 131, column: 43, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !137, line: 130, column: 28)
!919 = !DILocation(line: 131, column: 54, scope: !918)
!920 = !DILocation(line: 131, column: 75, scope: !918)
!921 = !DILocation(line: 131, column: 25, scope: !918)
!922 = !DILocation(line: 132, column: 25, scope: !918)
!923 = !DILocation(line: 134, column: 2, scope: !899)
!924 = !DILocation(line: 121, column: 63, scope: !925)
!925 = !DILexicalBlockFile(scope: !884, file: !137, discriminator: 10)
!926 = !DILocation(line: 121, column: 60, scope: !925)
!927 = !DILocation(line: 121, column: 2, scope: !925)
!928 = distinct !{!928, !929}
!929 = !DILocation(line: 121, column: 2, scope: !678)
!930 = !DILocation(line: 137, column: 15, scope: !931)
!931 = distinct !DILexicalBlock(scope: !678, file: !137, line: 137, column: 2)
!932 = !DILocation(line: 137, column: 26, scope: !931)
!933 = !DILocation(line: 137, column: 14, scope: !931)
!934 = !DILocation(line: 137, column: 49, scope: !935)
!935 = !DILexicalBlockFile(scope: !931, file: !137, discriminator: 1)
!936 = !DILocation(line: 137, column: 60, scope: !935)
!937 = !DILocation(line: 137, column: 48, scope: !935)
!938 = !DILocation(line: 137, column: 47, scope: !935)
!939 = !DILocation(line: 137, column: 47, scope: !940)
!940 = !DILexicalBlockFile(scope: !931, file: !137, discriminator: 2)
!941 = !DILocation(line: 137, column: 4, scope: !942)
!942 = !DILexicalBlockFile(scope: !931, file: !137, discriminator: 3)
!943 = !DILocation(line: 137, column: 15, scope: !942)
!944 = !DILocation(line: 137, column: 34, scope: !942)
!945 = !DILocation(line: 137, column: 47, scope: !942)
!946 = !DILocation(line: 137, column: 47, scope: !947)
!947 = !DILexicalBlockFile(scope: !931, file: !137, discriminator: 4)
!948 = !DILocation(line: 137, column: 14, scope: !947)
!949 = !DILocation(line: 137, column: 14, scope: !950)
!950 = !DILexicalBlockFile(scope: !931, file: !137, discriminator: 5)
!951 = !DILocation(line: 137, column: 14, scope: !952)
!952 = !DILexicalBlockFile(scope: !931, file: !137, discriminator: 6)
!953 = !DILocation(line: 137, column: 11, scope: !952)
!954 = !DILocation(line: 137, column: 7, scope: !952)
!955 = !DILocation(line: 137, column: 5, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !137, discriminator: 7)
!957 = distinct !DILexicalBlock(scope: !931, file: !137, line: 137, column: 2)
!958 = !DILocation(line: 137, column: 4, scope: !956)
!959 = !DILocation(line: 137, column: 8, scope: !956)
!960 = !DILocation(line: 137, column: 23, scope: !961)
!961 = !DILexicalBlockFile(scope: !957, file: !137, discriminator: 8)
!962 = !DILocation(line: 137, column: 27, scope: !961)
!963 = !DILocation(line: 137, column: 21, scope: !961)
!964 = !DILocation(line: 137, column: 19, scope: !961)
!965 = !DILocation(line: 137, column: 2, scope: !966)
!966 = !DILexicalBlockFile(scope: !931, file: !137, discriminator: 9)
!967 = !DILocation(line: 138, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !137, line: 138, column: 7)
!969 = distinct !DILexicalBlock(scope: !957, file: !137, line: 137, column: 57)
!970 = !DILocation(line: 138, column: 14, scope: !968)
!971 = !DILocation(line: 138, column: 7, scope: !969)
!972 = !DILocation(line: 139, column: 4, scope: !968)
!973 = !DILocation(line: 140, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !137, line: 140, column: 7)
!975 = !DILocation(line: 140, column: 13, scope: !974)
!976 = !DILocation(line: 140, column: 7, scope: !969)
!977 = !DILocation(line: 141, column: 4, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !137, line: 140, column: 25)
!979 = !DILocation(line: 142, column: 4, scope: !978)
!980 = !DILocation(line: 145, column: 17, scope: !981)
!981 = distinct !DILexicalBlock(scope: !969, file: !137, line: 145, column: 3)
!982 = !DILocation(line: 145, column: 23, scope: !981)
!983 = !DILocation(line: 145, column: 36, scope: !981)
!984 = !DILocation(line: 145, column: 16, scope: !981)
!985 = !DILocation(line: 145, column: 57, scope: !986)
!986 = !DILexicalBlockFile(scope: !981, file: !137, discriminator: 1)
!987 = !DILocation(line: 145, column: 63, scope: !986)
!988 = !DILocation(line: 145, column: 76, scope: !986)
!989 = !DILocation(line: 145, column: 56, scope: !986)
!990 = !DILocation(line: 145, column: 55, scope: !986)
!991 = !DILocation(line: 145, column: 55, scope: !992)
!992 = !DILexicalBlockFile(scope: !981, file: !137, discriminator: 2)
!993 = !DILocation(line: 145, column: 5, scope: !994)
!994 = !DILexicalBlockFile(scope: !981, file: !137, discriminator: 3)
!995 = !DILocation(line: 145, column: 11, scope: !994)
!996 = !DILocation(line: 145, column: 24, scope: !994)
!997 = !DILocation(line: 145, column: 41, scope: !994)
!998 = !DILocation(line: 145, column: 55, scope: !994)
!999 = !DILocation(line: 145, column: 55, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !981, file: !137, discriminator: 4)
!1001 = !DILocation(line: 145, column: 16, scope: !1000)
!1002 = !DILocation(line: 145, column: 16, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !981, file: !137, discriminator: 5)
!1004 = !DILocation(line: 145, column: 16, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !981, file: !137, discriminator: 6)
!1006 = !DILocation(line: 145, column: 13, scope: !1005)
!1007 = !DILocation(line: 145, column: 8, scope: !1005)
!1008 = !DILocation(line: 145, column: 6, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1010, file: !137, discriminator: 7)
!1010 = distinct !DILexicalBlock(scope: !981, file: !137, line: 145, column: 3)
!1011 = !DILocation(line: 145, column: 5, scope: !1009)
!1012 = !DILocation(line: 145, column: 10, scope: !1009)
!1013 = !DILocation(line: 145, column: 25, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1010, file: !137, discriminator: 8)
!1015 = !DILocation(line: 145, column: 30, scope: !1014)
!1016 = !DILocation(line: 145, column: 23, scope: !1014)
!1017 = !DILocation(line: 145, column: 21, scope: !1014)
!1018 = !DILocation(line: 145, column: 3, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !981, file: !137, discriminator: 9)
!1020 = !DILocation(line: 146, column: 26, scope: !1010)
!1021 = !DILocation(line: 146, column: 32, scope: !1010)
!1022 = !DILocation(line: 146, column: 38, scope: !1010)
!1023 = !DILocation(line: 146, column: 4, scope: !1010)
!1024 = !DILocation(line: 145, column: 50, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1010, file: !137, discriminator: 10)
!1026 = !DILocation(line: 145, column: 55, scope: !1025)
!1027 = !DILocation(line: 145, column: 47, scope: !1025)
!1028 = !DILocation(line: 145, column: 3, scope: !1025)
!1029 = distinct !{!1029, !1030}
!1030 = !DILocation(line: 145, column: 3, scope: !969)
!1031 = !DILocation(line: 147, column: 2, scope: !969)
!1032 = !DILocation(line: 137, column: 46, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !957, file: !137, discriminator: 10)
!1034 = !DILocation(line: 137, column: 50, scope: !1033)
!1035 = !DILocation(line: 137, column: 43, scope: !1033)
!1036 = !DILocation(line: 137, column: 2, scope: !1033)
!1037 = distinct !{!1037, !1038}
!1038 = !DILocation(line: 137, column: 2, scope: !678)
!1039 = !DILocation(line: 151, column: 15, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !678, file: !137, line: 151, column: 2)
!1041 = !DILocation(line: 151, column: 26, scope: !1040)
!1042 = !DILocation(line: 151, column: 14, scope: !1040)
!1043 = !DILocation(line: 151, column: 46, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1040, file: !137, discriminator: 1)
!1045 = !DILocation(line: 151, column: 57, scope: !1044)
!1046 = !DILocation(line: 151, column: 45, scope: !1044)
!1047 = !DILocation(line: 151, column: 44, scope: !1044)
!1048 = !DILocation(line: 151, column: 44, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1040, file: !137, discriminator: 2)
!1050 = !DILocation(line: 151, column: 4, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1040, file: !137, discriminator: 3)
!1052 = !DILocation(line: 151, column: 15, scope: !1051)
!1053 = !DILocation(line: 151, column: 31, scope: !1051)
!1054 = !DILocation(line: 151, column: 44, scope: !1051)
!1055 = !DILocation(line: 151, column: 44, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1040, file: !137, discriminator: 4)
!1057 = !DILocation(line: 151, column: 14, scope: !1056)
!1058 = !DILocation(line: 151, column: 14, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1040, file: !137, discriminator: 5)
!1060 = !DILocation(line: 151, column: 14, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1040, file: !137, discriminator: 6)
!1062 = !DILocation(line: 151, column: 11, scope: !1061)
!1063 = !DILocation(line: 151, column: 7, scope: !1061)
!1064 = !DILocation(line: 151, column: 5, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !137, discriminator: 7)
!1066 = distinct !DILexicalBlock(scope: !1040, file: !137, line: 151, column: 2)
!1067 = !DILocation(line: 151, column: 4, scope: !1065)
!1068 = !DILocation(line: 151, column: 8, scope: !1065)
!1069 = !DILocation(line: 151, column: 24, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1066, file: !137, discriminator: 8)
!1071 = !DILocation(line: 151, column: 28, scope: !1070)
!1072 = !DILocation(line: 151, column: 22, scope: !1070)
!1073 = !DILocation(line: 151, column: 20, scope: !1070)
!1074 = !DILocation(line: 151, column: 2, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1040, file: !137, discriminator: 9)
!1076 = !DILocation(line: 152, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !137, line: 152, column: 7)
!1078 = distinct !DILexicalBlock(scope: !1066, file: !137, line: 151, column: 58)
!1079 = !DILocation(line: 152, column: 15, scope: !1077)
!1080 = !DILocation(line: 152, column: 7, scope: !1078)
!1081 = !DILocation(line: 153, column: 4, scope: !1077)
!1082 = !DILocation(line: 154, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !137, line: 154, column: 7)
!1084 = !DILocation(line: 154, column: 14, scope: !1083)
!1085 = !DILocation(line: 154, column: 7, scope: !1078)
!1086 = !DILocation(line: 155, column: 4, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !137, line: 154, column: 26)
!1088 = !DILocation(line: 156, column: 4, scope: !1087)
!1089 = !DILocation(line: 159, column: 17, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1078, file: !137, line: 159, column: 3)
!1091 = !DILocation(line: 159, column: 24, scope: !1090)
!1092 = !DILocation(line: 159, column: 37, scope: !1090)
!1093 = !DILocation(line: 159, column: 16, scope: !1090)
!1094 = !DILocation(line: 159, column: 58, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1090, file: !137, discriminator: 1)
!1096 = !DILocation(line: 159, column: 65, scope: !1095)
!1097 = !DILocation(line: 159, column: 78, scope: !1095)
!1098 = !DILocation(line: 159, column: 57, scope: !1095)
!1099 = !DILocation(line: 159, column: 56, scope: !1095)
!1100 = !DILocation(line: 159, column: 56, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1090, file: !137, discriminator: 2)
!1102 = !DILocation(line: 159, column: 5, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1090, file: !137, discriminator: 3)
!1104 = !DILocation(line: 159, column: 12, scope: !1103)
!1105 = !DILocation(line: 159, column: 25, scope: !1103)
!1106 = !DILocation(line: 159, column: 42, scope: !1103)
!1107 = !DILocation(line: 159, column: 56, scope: !1103)
!1108 = !DILocation(line: 159, column: 56, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1090, file: !137, discriminator: 4)
!1110 = !DILocation(line: 159, column: 16, scope: !1109)
!1111 = !DILocation(line: 159, column: 16, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1090, file: !137, discriminator: 5)
!1113 = !DILocation(line: 159, column: 16, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1090, file: !137, discriminator: 6)
!1115 = !DILocation(line: 159, column: 13, scope: !1114)
!1116 = !DILocation(line: 159, column: 8, scope: !1114)
!1117 = !DILocation(line: 159, column: 6, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1119, file: !137, discriminator: 7)
!1119 = distinct !DILexicalBlock(scope: !1090, file: !137, line: 159, column: 3)
!1120 = !DILocation(line: 159, column: 5, scope: !1118)
!1121 = !DILocation(line: 159, column: 10, scope: !1118)
!1122 = !DILocation(line: 159, column: 25, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1119, file: !137, discriminator: 8)
!1124 = !DILocation(line: 159, column: 30, scope: !1123)
!1125 = !DILocation(line: 159, column: 23, scope: !1123)
!1126 = !DILocation(line: 159, column: 21, scope: !1123)
!1127 = !DILocation(line: 159, column: 3, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1090, file: !137, discriminator: 9)
!1129 = !DILocation(line: 160, column: 8, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !137, line: 160, column: 8)
!1131 = distinct !DILexicalBlock(scope: !1119, file: !137, line: 159, column: 62)
!1132 = !DILocation(line: 160, column: 15, scope: !1130)
!1133 = !DILocation(line: 160, column: 8, scope: !1131)
!1134 = !DILocation(line: 161, column: 27, scope: !1130)
!1135 = !DILocation(line: 161, column: 33, scope: !1130)
!1136 = !DILocation(line: 161, column: 40, scope: !1130)
!1137 = !DILocation(line: 161, column: 5, scope: !1130)
!1138 = !DILocation(line: 162, column: 3, scope: !1131)
!1139 = !DILocation(line: 159, column: 50, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1119, file: !137, discriminator: 10)
!1141 = !DILocation(line: 159, column: 55, scope: !1140)
!1142 = !DILocation(line: 159, column: 47, scope: !1140)
!1143 = !DILocation(line: 159, column: 3, scope: !1140)
!1144 = distinct !{!1144, !1145}
!1145 = !DILocation(line: 159, column: 3, scope: !1078)
!1146 = !DILocation(line: 163, column: 2, scope: !1078)
!1147 = !DILocation(line: 151, column: 47, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1066, file: !137, discriminator: 10)
!1149 = !DILocation(line: 151, column: 51, scope: !1148)
!1150 = !DILocation(line: 151, column: 44, scope: !1148)
!1151 = !DILocation(line: 151, column: 2, scope: !1148)
!1152 = distinct !{!1152, !1153}
!1153 = !DILocation(line: 151, column: 2, scope: !678)
!1154 = !DILocation(line: 165, column: 15, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !678, file: !137, line: 165, column: 2)
!1156 = !DILocation(line: 165, column: 26, scope: !1155)
!1157 = !DILocation(line: 165, column: 14, scope: !1155)
!1158 = !DILocation(line: 165, column: 45, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1155, file: !137, discriminator: 1)
!1160 = !DILocation(line: 165, column: 56, scope: !1159)
!1161 = !DILocation(line: 165, column: 44, scope: !1159)
!1162 = !DILocation(line: 165, column: 43, scope: !1159)
!1163 = !DILocation(line: 165, column: 43, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1155, file: !137, discriminator: 2)
!1165 = !DILocation(line: 165, column: 4, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1155, file: !137, discriminator: 3)
!1167 = !DILocation(line: 165, column: 15, scope: !1166)
!1168 = !DILocation(line: 165, column: 30, scope: !1166)
!1169 = !DILocation(line: 165, column: 43, scope: !1166)
!1170 = !DILocation(line: 165, column: 43, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1155, file: !137, discriminator: 4)
!1172 = !DILocation(line: 165, column: 14, scope: !1171)
!1173 = !DILocation(line: 165, column: 14, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1155, file: !137, discriminator: 5)
!1175 = !DILocation(line: 165, column: 14, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1155, file: !137, discriminator: 6)
!1177 = !DILocation(line: 165, column: 11, scope: !1176)
!1178 = !DILocation(line: 165, column: 7, scope: !1176)
!1179 = !DILocation(line: 165, column: 5, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1181, file: !137, discriminator: 7)
!1181 = distinct !DILexicalBlock(scope: !1155, file: !137, line: 165, column: 2)
!1182 = !DILocation(line: 165, column: 4, scope: !1180)
!1183 = !DILocation(line: 165, column: 8, scope: !1180)
!1184 = !DILocation(line: 165, column: 23, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1181, file: !137, discriminator: 8)
!1186 = !DILocation(line: 165, column: 27, scope: !1185)
!1187 = !DILocation(line: 165, column: 21, scope: !1185)
!1188 = !DILocation(line: 165, column: 19, scope: !1185)
!1189 = !DILocation(line: 165, column: 2, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1155, file: !137, discriminator: 9)
!1191 = !DILocation(line: 166, column: 8, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !137, line: 166, column: 7)
!1193 = distinct !DILexicalBlock(scope: !1181, file: !137, line: 165, column: 57)
!1194 = !DILocation(line: 166, column: 14, scope: !1192)
!1195 = !DILocation(line: 166, column: 7, scope: !1193)
!1196 = !DILocation(line: 167, column: 4, scope: !1192)
!1197 = !DILocation(line: 168, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !137, line: 168, column: 7)
!1199 = !DILocation(line: 168, column: 13, scope: !1198)
!1200 = !DILocation(line: 168, column: 7, scope: !1193)
!1201 = !DILocation(line: 169, column: 4, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !137, line: 168, column: 25)
!1203 = !DILocation(line: 170, column: 4, scope: !1202)
!1204 = !DILocation(line: 173, column: 17, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1193, file: !137, line: 173, column: 3)
!1206 = !DILocation(line: 173, column: 23, scope: !1205)
!1207 = !DILocation(line: 173, column: 36, scope: !1205)
!1208 = !DILocation(line: 173, column: 16, scope: !1205)
!1209 = !DILocation(line: 173, column: 57, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1205, file: !137, discriminator: 1)
!1211 = !DILocation(line: 173, column: 63, scope: !1210)
!1212 = !DILocation(line: 173, column: 76, scope: !1210)
!1213 = !DILocation(line: 173, column: 56, scope: !1210)
!1214 = !DILocation(line: 173, column: 55, scope: !1210)
!1215 = !DILocation(line: 173, column: 55, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1205, file: !137, discriminator: 2)
!1217 = !DILocation(line: 173, column: 5, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1205, file: !137, discriminator: 3)
!1219 = !DILocation(line: 173, column: 11, scope: !1218)
!1220 = !DILocation(line: 173, column: 24, scope: !1218)
!1221 = !DILocation(line: 173, column: 41, scope: !1218)
!1222 = !DILocation(line: 173, column: 55, scope: !1218)
!1223 = !DILocation(line: 173, column: 55, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1205, file: !137, discriminator: 4)
!1225 = !DILocation(line: 173, column: 16, scope: !1224)
!1226 = !DILocation(line: 173, column: 16, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1205, file: !137, discriminator: 5)
!1228 = !DILocation(line: 173, column: 16, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1205, file: !137, discriminator: 6)
!1230 = !DILocation(line: 173, column: 13, scope: !1229)
!1231 = !DILocation(line: 173, column: 8, scope: !1229)
!1232 = !DILocation(line: 173, column: 6, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !137, discriminator: 7)
!1234 = distinct !DILexicalBlock(scope: !1205, file: !137, line: 173, column: 3)
!1235 = !DILocation(line: 173, column: 5, scope: !1233)
!1236 = !DILocation(line: 173, column: 10, scope: !1233)
!1237 = !DILocation(line: 173, column: 25, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1234, file: !137, discriminator: 8)
!1239 = !DILocation(line: 173, column: 30, scope: !1238)
!1240 = !DILocation(line: 173, column: 23, scope: !1238)
!1241 = !DILocation(line: 173, column: 21, scope: !1238)
!1242 = !DILocation(line: 173, column: 3, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1205, file: !137, discriminator: 9)
!1244 = !DILocation(line: 174, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !137, line: 174, column: 8)
!1246 = distinct !DILexicalBlock(scope: !1234, file: !137, line: 173, column: 62)
!1247 = !DILocation(line: 174, column: 14, scope: !1245)
!1248 = !DILocation(line: 174, column: 8, scope: !1246)
!1249 = !DILocation(line: 175, column: 27, scope: !1245)
!1250 = !DILocation(line: 175, column: 33, scope: !1245)
!1251 = !DILocation(line: 175, column: 39, scope: !1245)
!1252 = !DILocation(line: 175, column: 5, scope: !1245)
!1253 = !DILocation(line: 176, column: 3, scope: !1246)
!1254 = !DILocation(line: 173, column: 50, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1234, file: !137, discriminator: 10)
!1256 = !DILocation(line: 173, column: 55, scope: !1255)
!1257 = !DILocation(line: 173, column: 47, scope: !1255)
!1258 = !DILocation(line: 173, column: 3, scope: !1255)
!1259 = distinct !{!1259, !1260}
!1260 = !DILocation(line: 173, column: 3, scope: !1193)
!1261 = !DILocation(line: 177, column: 2, scope: !1193)
!1262 = !DILocation(line: 165, column: 46, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1181, file: !137, discriminator: 10)
!1264 = !DILocation(line: 165, column: 50, scope: !1263)
!1265 = !DILocation(line: 165, column: 43, scope: !1263)
!1266 = !DILocation(line: 165, column: 2, scope: !1263)
!1267 = distinct !{!1267, !1268}
!1268 = !DILocation(line: 165, column: 2, scope: !678)
!1269 = !DILocation(line: 179, column: 1, scope: !678)
!1270 = distinct !DISubprogram(name: "static_track_set_group", scope: !137, file: !137, line: 81, type: !1271, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !143}
!1273 = !DILocalVariable(name: "tgroup", arg: 1, scope: !1270, file: !137, line: 81, type: !143)
!1274 = !DILocation(line: 81, column: 46, scope: !1270)
!1275 = !DILocalVariable(name: "vrrp", scope: !1270, file: !137, line: 83, type: !196)
!1276 = !DILocation(line: 83, column: 10, scope: !1270)
!1277 = !DILocalVariable(name: "str", scope: !1270, file: !137, line: 84, type: !80)
!1278 = !DILocation(line: 84, column: 8, scope: !1270)
!1279 = !DILocalVariable(name: "i", scope: !1270, file: !137, line: 85, type: !62)
!1280 = !DILocation(line: 85, column: 15, scope: !1270)
!1281 = !DILocation(line: 88, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1270, file: !137, line: 88, column: 6)
!1283 = !DILocation(line: 88, column: 15, scope: !1282)
!1284 = !DILocation(line: 88, column: 6, scope: !1270)
!1285 = !DILocation(line: 89, column: 3, scope: !1282)
!1286 = !DILocation(line: 91, column: 27, scope: !1270)
!1287 = !DILocation(line: 91, column: 2, scope: !1270)
!1288 = !DILocation(line: 91, column: 10, scope: !1270)
!1289 = !DILocation(line: 91, column: 25, scope: !1270)
!1290 = !DILocation(line: 93, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1270, file: !137, line: 93, column: 2)
!1292 = !DILocation(line: 93, column: 7, scope: !1291)
!1293 = !DILocation(line: 93, column: 14, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1295, file: !137, discriminator: 1)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !137, line: 93, column: 2)
!1296 = !DILocation(line: 93, column: 20, scope: !1294)
!1297 = !DILocation(line: 93, column: 28, scope: !1294)
!1298 = !DILocation(line: 93, column: 36, scope: !1294)
!1299 = !DILocation(line: 93, column: 16, scope: !1294)
!1300 = !DILocation(line: 93, column: 2, scope: !1294)
!1301 = !DILocation(line: 94, column: 33, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !137, line: 93, column: 53)
!1303 = !DILocation(line: 94, column: 10, scope: !1302)
!1304 = !DILocation(line: 94, column: 11, scope: !1302)
!1305 = !DILocation(line: 94, column: 19, scope: !1302)
!1306 = !DILocation(line: 94, column: 27, scope: !1302)
!1307 = !DILocation(line: 94, column: 7, scope: !1302)
!1308 = !DILocation(line: 95, column: 28, scope: !1302)
!1309 = !DILocation(line: 95, column: 10, scope: !1302)
!1310 = !DILocation(line: 95, column: 8, scope: !1302)
!1311 = !DILocation(line: 96, column: 8, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1302, file: !137, line: 96, column: 7)
!1313 = !DILocation(line: 96, column: 7, scope: !1302)
!1314 = !DILocation(line: 97, column: 98, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !137, line: 96, column: 14)
!1316 = !DILocation(line: 97, column: 103, scope: !1315)
!1317 = !DILocation(line: 97, column: 111, scope: !1315)
!1318 = !DILocation(line: 97, column: 4, scope: !1315)
!1319 = !DILocation(line: 98, column: 4, scope: !1315)
!1320 = !DILocation(line: 101, column: 12, scope: !1302)
!1321 = !DILocation(line: 101, column: 20, scope: !1302)
!1322 = !DILocation(line: 101, column: 36, scope: !1302)
!1323 = !DILocation(line: 101, column: 3, scope: !1302)
!1324 = !DILocation(line: 102, column: 2, scope: !1302)
!1325 = !DILocation(line: 93, column: 49, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1295, file: !137, discriminator: 2)
!1327 = !DILocation(line: 93, column: 2, scope: !1326)
!1328 = distinct !{!1328, !1329}
!1329 = !DILocation(line: 93, column: 2, scope: !1270)
!1330 = !DILocation(line: 105, column: 14, scope: !1270)
!1331 = !DILocation(line: 105, column: 22, scope: !1270)
!1332 = !DILocation(line: 105, column: 2, scope: !1270)
!1333 = !DILocation(line: 106, column: 2, scope: !1270)
!1334 = !DILocation(line: 106, column: 10, scope: !1270)
!1335 = !DILocation(line: 106, column: 16, scope: !1270)
!1336 = !DILocation(line: 107, column: 1, scope: !1270)
!1337 = !DILocation(line: 107, column: 1, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1270, file: !137, discriminator: 1)
!1339 = distinct !DISubprogram(name: "static_track_reinstate_config", scope: !137, file: !137, line: 182, type: !1340, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !268}
!1342 = !DILocalVariable(name: "ifp", arg: 1, scope: !1339, file: !137, line: 182, type: !268)
!1343 = !DILocation(line: 182, column: 44, scope: !1339)
!1344 = !DILocalVariable(name: "addr", scope: !1339, file: !137, line: 184, type: !686)
!1345 = !DILocation(line: 184, column: 16, scope: !1339)
!1346 = !DILocalVariable(name: "route", scope: !1339, file: !137, line: 186, type: !729)
!1347 = !DILocation(line: 186, column: 14, scope: !1339)
!1348 = !DILocalVariable(name: "e", scope: !1339, file: !137, line: 189, type: !545)
!1349 = !DILocation(line: 189, column: 10, scope: !1339)
!1350 = !DILocation(line: 191, column: 15, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1339, file: !137, line: 191, column: 2)
!1352 = !DILocation(line: 191, column: 26, scope: !1351)
!1353 = !DILocation(line: 191, column: 14, scope: !1351)
!1354 = !DILocation(line: 191, column: 49, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1351, file: !137, discriminator: 1)
!1356 = !DILocation(line: 191, column: 60, scope: !1355)
!1357 = !DILocation(line: 191, column: 48, scope: !1355)
!1358 = !DILocation(line: 191, column: 47, scope: !1355)
!1359 = !DILocation(line: 191, column: 47, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1351, file: !137, discriminator: 2)
!1361 = !DILocation(line: 191, column: 4, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1351, file: !137, discriminator: 3)
!1363 = !DILocation(line: 191, column: 15, scope: !1362)
!1364 = !DILocation(line: 191, column: 34, scope: !1362)
!1365 = !DILocation(line: 191, column: 47, scope: !1362)
!1366 = !DILocation(line: 191, column: 47, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1351, file: !137, discriminator: 4)
!1368 = !DILocation(line: 191, column: 14, scope: !1367)
!1369 = !DILocation(line: 191, column: 14, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1351, file: !137, discriminator: 5)
!1371 = !DILocation(line: 191, column: 14, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1351, file: !137, discriminator: 6)
!1373 = !DILocation(line: 191, column: 11, scope: !1372)
!1374 = !DILocation(line: 191, column: 7, scope: !1372)
!1375 = !DILocation(line: 191, column: 5, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1377, file: !137, discriminator: 7)
!1377 = distinct !DILexicalBlock(scope: !1351, file: !137, line: 191, column: 2)
!1378 = !DILocation(line: 191, column: 4, scope: !1376)
!1379 = !DILocation(line: 191, column: 8, scope: !1376)
!1380 = !DILocation(line: 191, column: 23, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1377, file: !137, discriminator: 8)
!1382 = !DILocation(line: 191, column: 27, scope: !1381)
!1383 = !DILocation(line: 191, column: 21, scope: !1381)
!1384 = !DILocation(line: 191, column: 19, scope: !1381)
!1385 = !DILocation(line: 191, column: 2, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1351, file: !137, discriminator: 9)
!1387 = !DILocation(line: 192, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !137, line: 192, column: 7)
!1389 = distinct !DILexicalBlock(scope: !1377, file: !137, line: 191, column: 57)
!1390 = !DILocation(line: 192, column: 13, scope: !1388)
!1391 = !DILocation(line: 192, column: 7, scope: !1389)
!1392 = !DILocation(line: 193, column: 4, scope: !1388)
!1393 = !DILocation(line: 194, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !137, line: 194, column: 7)
!1395 = !DILocation(line: 194, column: 13, scope: !1394)
!1396 = !DILocation(line: 194, column: 20, scope: !1394)
!1397 = !DILocation(line: 194, column: 17, scope: !1394)
!1398 = !DILocation(line: 194, column: 7, scope: !1389)
!1399 = !DILocation(line: 195, column: 4, scope: !1394)
!1400 = !DILocation(line: 196, column: 28, scope: !1389)
!1401 = !DILocation(line: 196, column: 3, scope: !1389)
!1402 = !DILocation(line: 197, column: 2, scope: !1389)
!1403 = !DILocation(line: 191, column: 46, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1377, file: !137, discriminator: 10)
!1405 = !DILocation(line: 191, column: 50, scope: !1404)
!1406 = !DILocation(line: 191, column: 43, scope: !1404)
!1407 = !DILocation(line: 191, column: 2, scope: !1404)
!1408 = distinct !{!1408, !1409}
!1409 = !DILocation(line: 191, column: 2, scope: !1339)
!1410 = !DILocation(line: 201, column: 15, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1339, file: !137, line: 201, column: 2)
!1412 = !DILocation(line: 201, column: 26, scope: !1411)
!1413 = !DILocation(line: 201, column: 14, scope: !1411)
!1414 = !DILocation(line: 201, column: 46, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1411, file: !137, discriminator: 1)
!1416 = !DILocation(line: 201, column: 57, scope: !1415)
!1417 = !DILocation(line: 201, column: 45, scope: !1415)
!1418 = !DILocation(line: 201, column: 44, scope: !1415)
!1419 = !DILocation(line: 201, column: 44, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1411, file: !137, discriminator: 2)
!1421 = !DILocation(line: 201, column: 4, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1411, file: !137, discriminator: 3)
!1423 = !DILocation(line: 201, column: 15, scope: !1422)
!1424 = !DILocation(line: 201, column: 31, scope: !1422)
!1425 = !DILocation(line: 201, column: 44, scope: !1422)
!1426 = !DILocation(line: 201, column: 44, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1411, file: !137, discriminator: 4)
!1428 = !DILocation(line: 201, column: 14, scope: !1427)
!1429 = !DILocation(line: 201, column: 14, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1411, file: !137, discriminator: 5)
!1431 = !DILocation(line: 201, column: 14, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1411, file: !137, discriminator: 6)
!1433 = !DILocation(line: 201, column: 11, scope: !1432)
!1434 = !DILocation(line: 201, column: 7, scope: !1432)
!1435 = !DILocation(line: 201, column: 5, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1437, file: !137, discriminator: 7)
!1437 = distinct !DILexicalBlock(scope: !1411, file: !137, line: 201, column: 2)
!1438 = !DILocation(line: 201, column: 4, scope: !1436)
!1439 = !DILocation(line: 201, column: 8, scope: !1436)
!1440 = !DILocation(line: 201, column: 24, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1437, file: !137, discriminator: 8)
!1442 = !DILocation(line: 201, column: 28, scope: !1441)
!1443 = !DILocation(line: 201, column: 22, scope: !1441)
!1444 = !DILocation(line: 201, column: 20, scope: !1441)
!1445 = !DILocation(line: 201, column: 2, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1411, file: !137, discriminator: 9)
!1447 = !DILocation(line: 202, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !137, line: 202, column: 7)
!1449 = distinct !DILexicalBlock(scope: !1437, file: !137, line: 201, column: 58)
!1450 = !DILocation(line: 202, column: 14, scope: !1448)
!1451 = !DILocation(line: 202, column: 7, scope: !1449)
!1452 = !DILocation(line: 203, column: 4, scope: !1448)
!1453 = !DILocation(line: 204, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !137, line: 204, column: 7)
!1455 = !DILocation(line: 204, column: 14, scope: !1454)
!1456 = !DILocation(line: 204, column: 21, scope: !1454)
!1457 = !DILocation(line: 204, column: 18, scope: !1454)
!1458 = !DILocation(line: 204, column: 7, scope: !1449)
!1459 = !DILocation(line: 205, column: 4, scope: !1454)
!1460 = !DILocation(line: 206, column: 26, scope: !1449)
!1461 = !DILocation(line: 206, column: 3, scope: !1449)
!1462 = !DILocation(line: 207, column: 2, scope: !1449)
!1463 = !DILocation(line: 201, column: 47, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1437, file: !137, discriminator: 10)
!1465 = !DILocation(line: 201, column: 51, scope: !1464)
!1466 = !DILocation(line: 201, column: 44, scope: !1464)
!1467 = !DILocation(line: 201, column: 2, scope: !1464)
!1468 = distinct !{!1468, !1469}
!1469 = !DILocation(line: 201, column: 2, scope: !1339)
!1470 = !DILocation(line: 219, column: 1, scope: !1339)
