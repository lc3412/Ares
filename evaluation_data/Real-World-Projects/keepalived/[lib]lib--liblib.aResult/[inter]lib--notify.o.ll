; ModuleID = './[inter]lib--notify.o.i'
source_filename = "./[inter]lib--notify.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%struct._thread = type { i64, i32, %struct._thread_master*, {}*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
%struct.timeval = type { i64, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { %struct.rb_node }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%struct.magic_set = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct._vector = type { i32, i32, i8** }

@script_security = global i8 0, align 1
@cmd_str_buf = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@log_file_name = external global i8*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed fork process\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Child process %d in our process group %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Permissions failure for script %s in path - disabling\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Cannot find script %s in path - disabling\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Unable to set uid:gid %d:%d for script %s - disabling\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Unable to restore uid:gid %d:%d after script %s\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Unable to restore uid:gid %d:%d after checking script %s\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Script %s cannot be accessed - %s\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Unable to access script `%s` - disabling\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"WARNING - script '%s' is not executable for uid:gid %d:%d - disabling.\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" executable\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c" shared object\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Please add a #! shebang to script %s\00", align 1
@getpwnam_buf_len = internal global i64 0, align 8
@.str.15 = private unnamed_addr constant [18 x i8] c"keepalived_script\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Unable to resolve %sscript username '%s' - ignoring\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"default \00", align 1
@.str.18 = private unnamed_addr constant [81 x i8] c"WARNING - default user '%s' for script execution does not exist - please create.\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"%script user '%s' does not exist\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Default s\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"Unable to resolve %sscript group name '%s' - ignoring\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%script group '%s' does not exist\00", align 1
@default_script_uid_set = internal global i8 0, align 1
@default_script_uid = common global i32 0, align 4
@default_script_gid = common global i32 0, align 4
@default_user_fail = internal global i8 0, align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Unable to parse notify script\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Unable to parse script '%s' - ignoring\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"Invalid user/group for %s script %s - ignoring\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"Failed to set default user for %s script %s - ignoring\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"notify_fifo_script %s no room to add parameter %s\00", align 1
@path_is_malloced = internal global i8 0, align 1
@path = internal global i8* null, align 8
@.str.29 = private unnamed_addr constant [34 x i8] c"Unable to create %snotify fifo %s\00", align 1
@master = external global %struct._thread_master*, align 8
@.str.30 = private unnamed_addr constant [43 x i8] c"Unable to open %snotify fifo %s - errno %d\00", align 1
@environ = external global i8**, align 8
@.str.31 = private unnamed_addr constant [40 x i8] c"FIFO notify script %s is not executable\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"Unable to execute FIFO notify script %s - errno %d - %m\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Couldn't exec FIFO command: %s\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Error exec-ing FIFO command: %s\00", align 1
@cur_prio = internal global i32 2147483647, align 4
@.str.35 = private unnamed_addr constant [25 x i8] c"Couldn't setgid: %d (%m)\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Couldn't setgroups: %d (%m)\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Couldn't setuid: %d (%m)\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"Error exec-ing command '%s', error %d: %m\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Error exec-ing command: %s\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Couldn't find command: %s\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"Couldn't execute command: %s\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Unable to set egid to %d (%m)\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"Unable to set supplementary gids (%m)\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"Unable to set euid to %d (%m)\00", align 1
@.str.46 = private unnamed_addr constant [81 x i8] c"WARNING - script `%s` resolved by path search to `%s`. Please specify full path.\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"Unable to restore euid after script search (%m)\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"Unable to restore egid after script search (%m)\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"Unable to restore supplementary groups after script search (%m)\00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"check_script_secure could not find script '%s' - disabling\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c"check_script_secure('%s') returned errno %d - %s - disabling\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Wrong file type found in script path '%s'.\00", align 1
@.str.53 = private unnamed_addr constant [44 x i8] c"Unsafe permissions found for script '%s'%s.\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c" - disabling\00", align 1

; Function Attrs: nounwind uwtable
define i8* @cmd_str_r(%struct._notify_script*, i8*, i64) #0 !dbg !521 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._notify_script*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct._notify_script* %0, %struct._notify_script** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %5, metadata !536, metadata !537), !dbg !538
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !539, metadata !537), !dbg !540
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !541, metadata !537), !dbg !542
  call void @llvm.dbg.declare(metadata i8** %8, metadata !543, metadata !537), !dbg !544
  call void @llvm.dbg.declare(metadata i32* %9, metadata !545, metadata !537), !dbg !546
  call void @llvm.dbg.declare(metadata i64* %10, metadata !547, metadata !537), !dbg !548
  %11 = load i8*, i8** %6, align 8, !dbg !549
  store i8* %11, i8** %8, align 8, !dbg !550
  store i32 0, i32* %9, align 4, !dbg !551
  br label %12, !dbg !553

; <label>:12:                                     ; preds = %64, %3
  %13 = load i32, i32* %9, align 4, !dbg !554
  %14 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !557
  %15 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %14, i32 0, i32 1, !dbg !558
  %16 = load i32, i32* %15, align 8, !dbg !558
  %17 = icmp slt i32 %13, %16, !dbg !559
  br i1 %17, label %18, label %67, !dbg !560

; <label>:18:                                     ; preds = %12
  %19 = load i32, i32* %9, align 4, !dbg !561
  %20 = sext i32 %19 to i64, !dbg !563
  %21 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !563
  %22 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %21, i32 0, i32 0, !dbg !564
  %23 = load i8**, i8*** %22, align 8, !dbg !564
  %24 = getelementptr inbounds i8*, i8** %23, i64 %20, !dbg !563
  %25 = load i8*, i8** %24, align 8, !dbg !563
  %26 = call i64 @strlen(i8* %25) #11, !dbg !565
  store i64 %26, i64* %10, align 8, !dbg !566
  %27 = load i8*, i8** %8, align 8, !dbg !567
  %28 = load i64, i64* %10, align 8, !dbg !569
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !570
  %30 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !571
  %31 = load i32, i32* %9, align 4, !dbg !572
  %32 = icmp ne i32 %31, 0, !dbg !572
  %33 = select i1 %32, i32 1, i32 0, !dbg !572
  %34 = sext i32 %33 to i64, !dbg !573
  %35 = getelementptr inbounds i8, i8* %30, i64 %34, !dbg !573
  %36 = load i8*, i8** %6, align 8, !dbg !574
  %37 = load i64, i64* %7, align 8, !dbg !575
  %38 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !576
  %39 = icmp uge i8* %35, %38, !dbg !577
  br i1 %39, label %40, label %41, !dbg !578

; <label>:40:                                     ; preds = %18
  store i8* null, i8** %4, align 8, !dbg !579
  br label %70, !dbg !579

; <label>:41:                                     ; preds = %18
  %42 = load i32, i32* %9, align 4, !dbg !580
  %43 = icmp ne i32 %42, 0, !dbg !580
  br i1 %43, label %44, label %47, !dbg !582

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %8, align 8, !dbg !583
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !583
  store i8* %46, i8** %8, align 8, !dbg !583
  store i8 32, i8* %45, align 1, !dbg !584
  br label %47, !dbg !585

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %8, align 8, !dbg !586
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !586
  store i8* %49, i8** %8, align 8, !dbg !586
  store i8 39, i8* %48, align 1, !dbg !587
  %50 = load i8*, i8** %8, align 8, !dbg !588
  %51 = load i32, i32* %9, align 4, !dbg !589
  %52 = sext i32 %51 to i64, !dbg !590
  %53 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !590
  %54 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %53, i32 0, i32 0, !dbg !591
  %55 = load i8**, i8*** %54, align 8, !dbg !591
  %56 = getelementptr inbounds i8*, i8** %55, i64 %52, !dbg !590
  %57 = load i8*, i8** %56, align 8, !dbg !590
  %58 = call i8* @strcpy(i8* %50, i8* %57) #8, !dbg !592
  %59 = load i64, i64* %10, align 8, !dbg !593
  %60 = load i8*, i8** %8, align 8, !dbg !594
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !594
  store i8* %61, i8** %8, align 8, !dbg !594
  %62 = load i8*, i8** %8, align 8, !dbg !595
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !595
  store i8* %63, i8** %8, align 8, !dbg !595
  store i8 39, i8* %62, align 1, !dbg !596
  br label %64, !dbg !597

; <label>:64:                                     ; preds = %47
  %65 = load i32, i32* %9, align 4, !dbg !598
  %66 = add nsw i32 %65, 1, !dbg !598
  store i32 %66, i32* %9, align 4, !dbg !598
  br label %12, !dbg !600, !llvm.loop !601

; <label>:67:                                     ; preds = %12
  %68 = load i8*, i8** %8, align 8, !dbg !603
  store i8 0, i8* %68, align 1, !dbg !604
  %69 = load i8*, i8** %6, align 8, !dbg !605
  store i8* %69, i8** %4, align 8, !dbg !606
  br label %70, !dbg !606

; <label>:70:                                     ; preds = %67, %40
  %71 = load i8*, i8** %4, align 8, !dbg !607
  ret i8* %71, !dbg !607
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @cmd_str(%struct._notify_script*) #0 !dbg !608 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct._notify_script* %0, %struct._notify_script** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %3, metadata !611, metadata !537), !dbg !612
  call void @llvm.dbg.declare(metadata i64* %4, metadata !613, metadata !537), !dbg !614
  call void @llvm.dbg.declare(metadata i32* %5, metadata !615, metadata !537), !dbg !616
  store i32 0, i32* %5, align 4, !dbg !617
  store i64 0, i64* %4, align 8, !dbg !619
  br label %6, !dbg !620

; <label>:6:                                      ; preds = %24, %1
  %7 = load i32, i32* %5, align 4, !dbg !621
  %8 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !624
  %9 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %8, i32 0, i32 1, !dbg !625
  %10 = load i32, i32* %9, align 8, !dbg !625
  %11 = icmp slt i32 %7, %10, !dbg !626
  br i1 %11, label %12, label %27, !dbg !627

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %5, align 4, !dbg !628
  %14 = sext i32 %13 to i64, !dbg !629
  %15 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !629
  %16 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %15, i32 0, i32 0, !dbg !630
  %17 = load i8**, i8*** %16, align 8, !dbg !630
  %18 = getelementptr inbounds i8*, i8** %17, i64 %14, !dbg !629
  %19 = load i8*, i8** %18, align 8, !dbg !629
  %20 = call i64 @strlen(i8* %19) #11, !dbg !631
  %21 = add i64 %20, 3, !dbg !632
  %22 = load i64, i64* %4, align 8, !dbg !633
  %23 = add i64 %22, %21, !dbg !633
  store i64 %23, i64* %4, align 8, !dbg !633
  br label %24, !dbg !634

; <label>:24:                                     ; preds = %12
  %25 = load i32, i32* %5, align 4, !dbg !635
  %26 = add nsw i32 %25, 1, !dbg !635
  store i32 %26, i32* %5, align 4, !dbg !635
  br label %6, !dbg !637, !llvm.loop !638

; <label>:27:                                     ; preds = %6
  %28 = load i64, i64* %4, align 8, !dbg !640
  %29 = icmp ugt i64 %28, 1024, !dbg !642
  br i1 %29, label %30, label %31, !dbg !643

; <label>:30:                                     ; preds = %27
  store i8* null, i8** %2, align 8, !dbg !644
  br label %34, !dbg !644

; <label>:31:                                     ; preds = %27
  %32 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !645
  %33 = call i8* @cmd_str_r(%struct._notify_script* %32, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @cmd_str_buf, i32 0, i32 0), i64 1024), !dbg !646
  store i8* %33, i8** %2, align 8, !dbg !647
  br label %34, !dbg !647

; <label>:34:                                     ; preds = %31, %30
  %35 = load i8*, i8** %2, align 8, !dbg !648
  ret i8* %35, !dbg !648
}

; Function Attrs: nounwind uwtable
define void @notify_fifo_open(%struct._notify_fifo*, %struct._notify_fifo*, i32 (%struct._thread*)*, i8*) #0 !dbg !649 {
  %5 = alloca %struct._notify_fifo*, align 8
  %6 = alloca %struct._notify_fifo*, align 8
  %7 = alloca i32 (%struct._thread*)*, align 8
  %8 = alloca i8*, align 8
  store %struct._notify_fifo* %0, %struct._notify_fifo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %5, metadata !666, metadata !537), !dbg !667
  store %struct._notify_fifo* %1, %struct._notify_fifo** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %6, metadata !668, metadata !537), !dbg !669
  store i32 (%struct._thread*)* %2, i32 (%struct._thread*)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %7, metadata !670, metadata !537), !dbg !671
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !672, metadata !537), !dbg !673
  %9 = load %struct._notify_fifo*, %struct._notify_fifo** %5, align 8, !dbg !674
  %10 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %9, i32 0, i32 0, !dbg !676
  %11 = load i8*, i8** %10, align 8, !dbg !676
  %12 = icmp ne i8* %11, null, !dbg !674
  br i1 %12, label %13, label %16, !dbg !677

; <label>:13:                                     ; preds = %4
  %14 = load %struct._notify_fifo*, %struct._notify_fifo** %5, align 8, !dbg !678
  %15 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %7, align 8, !dbg !679
  call void @fifo_open(%struct._notify_fifo* %14, i32 (%struct._thread*)* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)), !dbg !680
  br label %16, !dbg !680

; <label>:16:                                     ; preds = %13, %4
  %17 = load %struct._notify_fifo*, %struct._notify_fifo** %6, align 8, !dbg !681
  %18 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %17, i32 0, i32 0, !dbg !683
  %19 = load i8*, i8** %18, align 8, !dbg !683
  %20 = icmp ne i8* %19, null, !dbg !681
  br i1 %20, label %21, label %25, !dbg !684

; <label>:21:                                     ; preds = %16
  %22 = load %struct._notify_fifo*, %struct._notify_fifo** %6, align 8, !dbg !685
  %23 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %7, align 8, !dbg !686
  %24 = load i8*, i8** %8, align 8, !dbg !687
  call void @fifo_open(%struct._notify_fifo* %22, i32 (%struct._thread*)* %23, i8* %24), !dbg !688
  br label %25, !dbg !688

; <label>:25:                                     ; preds = %21, %16
  ret void, !dbg !689
}

; Function Attrs: nounwind uwtable
define internal void @fifo_open(%struct._notify_fifo*, i32 (%struct._thread*)*, i8*) #0 !dbg !690 {
  %4 = alloca %struct._notify_fifo*, align 8
  %5 = alloca i32 (%struct._thread*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._notify_fifo* %0, %struct._notify_fifo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %4, metadata !693, metadata !537), !dbg !694
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %5, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %5, metadata !695, metadata !537), !dbg !696
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !697, metadata !537), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %7, metadata !699, metadata !537), !dbg !700
  call void @llvm.dbg.declare(metadata i32* %8, metadata !701, metadata !537), !dbg !702
  %9 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !703
  %10 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %9, i32 0, i32 0, !dbg !705
  %11 = load i8*, i8** %10, align 8, !dbg !705
  %12 = icmp ne i8* %11, null, !dbg !703
  br i1 %12, label %13, label %95, !dbg !706

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %8, align 4, !dbg !707
  %14 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !709
  %15 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %14, i32 0, i32 0, !dbg !711
  %16 = load i8*, i8** %15, align 8, !dbg !711
  %17 = call i32 @mkfifo(i8* %16, i32 420) #8, !dbg !712
  store i32 %17, i32* %7, align 4, !dbg !713
  %18 = icmp ne i32 %17, 0, !dbg !713
  br i1 %18, label %22, label %19, !dbg !714

; <label>:19:                                     ; preds = %13
  %20 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !715
  %21 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %20, i32 0, i32 2, !dbg !716
  store i8 1, i8* %21, align 4, !dbg !717
  br label %33, !dbg !715

; <label>:22:                                     ; preds = %13
  %23 = call i32* @__errno_location() #1, !dbg !718
  %24 = load i32, i32* %23, align 4, !dbg !720
  store i32 %24, i32* %8, align 4, !dbg !721
  %25 = load i32, i32* %8, align 4, !dbg !722
  %26 = icmp ne i32 %25, 17, !dbg !724
  br i1 %26, label %27, label %32, !dbg !725

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8, !dbg !726
  %29 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !727
  %30 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %29, i32 0, i32 0, !dbg !728
  %31 = load i8*, i8** %30, align 8, !dbg !728
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8* %28, i8* %31), !dbg !729
  br label %32, !dbg !729

; <label>:32:                                     ; preds = %27, %22
  br label %33

; <label>:33:                                     ; preds = %32, %19
  %34 = load i32, i32* %8, align 4, !dbg !730
  %35 = icmp ne i32 %34, 0, !dbg !730
  br i1 %35, label %36, label %39, !dbg !732

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %8, align 4, !dbg !733
  %38 = icmp eq i32 %37, 17, !dbg !735
  br i1 %38, label %39, label %81, !dbg !736

; <label>:39:                                     ; preds = %36, %33
  %40 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !737
  %41 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %40, i32 0, i32 3, !dbg !740
  %42 = load %struct._notify_script*, %struct._notify_script** %41, align 8, !dbg !740
  %43 = icmp ne %struct._notify_script* %42, null, !dbg !737
  br i1 %43, label %44, label %53, !dbg !741

; <label>:44:                                     ; preds = %39
  %45 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !742
  %46 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %5, align 8, !dbg !743
  %47 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !744
  %48 = bitcast %struct._notify_fifo* %47 to i8*, !dbg !744
  %49 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !745
  %50 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %49, i32 0, i32 3, !dbg !746
  %51 = load %struct._notify_script*, %struct._notify_script** %50, align 8, !dbg !746
  %52 = call i32 @notify_fifo_exec(%struct._thread_master* %45, i32 (%struct._thread*)* %46, i8* %48, %struct._notify_script* %51), !dbg !747
  br label %53, !dbg !747

; <label>:53:                                     ; preds = %44, %39
  %54 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !748
  %55 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %54, i32 0, i32 0, !dbg !750
  %56 = load i8*, i8** %55, align 8, !dbg !750
  %57 = call i32 (i8*, i32, ...) @open(i8* %56, i32 526338), !dbg !751
  %58 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !752
  %59 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %58, i32 0, i32 1, !dbg !753
  store i32 %57, i32* %59, align 8, !dbg !754
  %60 = icmp eq i32 %57, -1, !dbg !755
  br i1 %60, label %61, label %80, !dbg !756

; <label>:61:                                     ; preds = %53
  %62 = load i8*, i8** %6, align 8, !dbg !757
  %63 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !759
  %64 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %63, i32 0, i32 0, !dbg !760
  %65 = load i8*, i8** %64, align 8, !dbg !760
  %66 = call i32* @__errno_location() #1, !dbg !761
  %67 = load i32, i32* %66, align 4, !dbg !762
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i32 0, i32 0), i8* %62, i8* %65, i32 %67), !dbg !763
  %68 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !765
  %69 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %68, i32 0, i32 2, !dbg !767
  %70 = load i8, i8* %69, align 4, !dbg !767
  %71 = trunc i8 %70 to i1, !dbg !767
  br i1 %71, label %72, label %79, !dbg !768

; <label>:72:                                     ; preds = %61
  %73 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !769
  %74 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %73, i32 0, i32 0, !dbg !771
  %75 = load i8*, i8** %74, align 8, !dbg !771
  %76 = call i32 @unlink(i8* %75) #8, !dbg !772
  %77 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !773
  %78 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %77, i32 0, i32 2, !dbg !774
  store i8 0, i8* %78, align 4, !dbg !775
  br label %79, !dbg !776

; <label>:79:                                     ; preds = %72, %61
  br label %80, !dbg !777

; <label>:80:                                     ; preds = %79, %53
  br label %81, !dbg !778

; <label>:81:                                     ; preds = %80, %36
  %82 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !779
  %83 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %82, i32 0, i32 1, !dbg !781
  %84 = load i32, i32* %83, align 8, !dbg !781
  %85 = icmp eq i32 %84, -1, !dbg !782
  br i1 %85, label %86, label %94, !dbg !783

; <label>:86:                                     ; preds = %81
  %87 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !784
  %88 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %87, i32 0, i32 0, !dbg !786
  %89 = load i8*, i8** %88, align 8, !dbg !786
  call void @free(i8* %89) #8, !dbg !787
  %90 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !788
  %91 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %90, i32 0, i32 0, !dbg !789
  store i8* null, i8** %91, align 8, !dbg !790
  %92 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !791
  %93 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %92, i32 0, i32 0, !dbg !792
  store i8* null, i8** %93, align 8, !dbg !793
  br label %94, !dbg !794

; <label>:94:                                     ; preds = %86, %81
  br label %95, !dbg !795

; <label>:95:                                     ; preds = %94, %3
  ret void, !dbg !796
}

; Function Attrs: nounwind uwtable
define void @notify_fifo_close(%struct._notify_fifo*, %struct._notify_fifo*) #0 !dbg !797 {
  %3 = alloca %struct._notify_fifo*, align 8
  %4 = alloca %struct._notify_fifo*, align 8
  store %struct._notify_fifo* %0, %struct._notify_fifo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %3, metadata !800, metadata !537), !dbg !801
  store %struct._notify_fifo* %1, %struct._notify_fifo** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %4, metadata !802, metadata !537), !dbg !803
  %5 = load %struct._notify_fifo*, %struct._notify_fifo** %3, align 8, !dbg !804
  %6 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %5, i32 0, i32 1, !dbg !806
  %7 = load i32, i32* %6, align 8, !dbg !806
  %8 = icmp ne i32 %7, -1, !dbg !807
  br i1 %8, label %9, label %11, !dbg !808

; <label>:9:                                      ; preds = %2
  %10 = load %struct._notify_fifo*, %struct._notify_fifo** %3, align 8, !dbg !809
  call void @fifo_close(%struct._notify_fifo* %10), !dbg !810
  br label %11, !dbg !810

; <label>:11:                                     ; preds = %9, %2
  %12 = load %struct._notify_fifo*, %struct._notify_fifo** %4, align 8, !dbg !811
  call void @fifo_close(%struct._notify_fifo* %12), !dbg !812
  ret void, !dbg !813
}

; Function Attrs: nounwind uwtable
define internal void @fifo_close(%struct._notify_fifo*) #0 !dbg !814 {
  %2 = alloca %struct._notify_fifo*, align 8
  store %struct._notify_fifo* %0, %struct._notify_fifo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_fifo** %2, metadata !817, metadata !537), !dbg !818
  %3 = load %struct._notify_fifo*, %struct._notify_fifo** %2, align 8, !dbg !819
  %4 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %3, i32 0, i32 1, !dbg !821
  %5 = load i32, i32* %4, align 8, !dbg !821
  %6 = icmp ne i32 %5, -1, !dbg !822
  br i1 %6, label %7, label %14, !dbg !823

; <label>:7:                                      ; preds = %1
  %8 = load %struct._notify_fifo*, %struct._notify_fifo** %2, align 8, !dbg !824
  %9 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %8, i32 0, i32 1, !dbg !826
  %10 = load i32, i32* %9, align 8, !dbg !826
  %11 = call i32 @close(i32 %10), !dbg !827
  %12 = load %struct._notify_fifo*, %struct._notify_fifo** %2, align 8, !dbg !828
  %13 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %12, i32 0, i32 1, !dbg !829
  store i32 -1, i32* %13, align 8, !dbg !830
  br label %14, !dbg !831

; <label>:14:                                     ; preds = %7, %1
  %15 = load %struct._notify_fifo*, %struct._notify_fifo** %2, align 8, !dbg !832
  %16 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %15, i32 0, i32 2, !dbg !834
  %17 = load i8, i8* %16, align 4, !dbg !834
  %18 = trunc i8 %17 to i1, !dbg !834
  br i1 %18, label %19, label %24, !dbg !835

; <label>:19:                                     ; preds = %14
  %20 = load %struct._notify_fifo*, %struct._notify_fifo** %2, align 8, !dbg !836
  %21 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %20, i32 0, i32 0, !dbg !837
  %22 = load i8*, i8** %21, align 8, !dbg !837
  %23 = call i32 @unlink(i8* %22) #8, !dbg !838
  br label %24, !dbg !838

; <label>:24:                                     ; preds = %19, %14
  ret void, !dbg !839
}

; Function Attrs: nounwind uwtable
define i32 @notify_exec(%struct._notify_script*) #0 !dbg !840 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca i32, align 4
  store %struct._notify_script* %0, %struct._notify_script** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %3, metadata !843, metadata !537), !dbg !844
  call void @llvm.dbg.declare(metadata i32* %4, metadata !845, metadata !537), !dbg !846
  %5 = load i8*, i8** @log_file_name, align 8, !dbg !847
  %6 = icmp ne i8* %5, null, !dbg !847
  br i1 %6, label %7, label %8, !dbg !849

; <label>:7:                                      ; preds = %1
  call void @flush_log_file(), !dbg !850
  br label %8, !dbg !850

; <label>:8:                                      ; preds = %7, %1
  %9 = call i32 @local_fork(), !dbg !851
  store i32 %9, i32* %4, align 4, !dbg !852
  %10 = load i32, i32* %4, align 4, !dbg !853
  %11 = icmp slt i32 %10, 0, !dbg !855
  br i1 %11, label %12, label %13, !dbg !856

; <label>:12:                                     ; preds = %8
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !857
  store i32 -1, i32* %2, align 4, !dbg !859
  br label %19, !dbg !859

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %4, align 4, !dbg !860
  %15 = icmp ne i32 %14, 0, !dbg !860
  br i1 %15, label %16, label %17, !dbg !862

; <label>:16:                                     ; preds = %13
  store i32 0, i32* %2, align 4, !dbg !863
  br label %19, !dbg !863

; <label>:17:                                     ; preds = %13
  %18 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !865
  call void @system_call(%struct._notify_script* %18) #12, !dbg !866
  unreachable, !dbg !866

; <label>:19:                                     ; preds = %16, %12
  %20 = load i32, i32* %2, align 4, !dbg !867
  ret i32 %20, !dbg !867
}

declare void @flush_log_file() #4

declare i32 @local_fork() #4

declare void @log_message(i32, i8*, ...) #4

; Function Attrs: noreturn nounwind uwtable
define internal void @system_call(%struct._notify_script*) #5 !dbg !868 {
  %2 = alloca %struct._notify_script*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.anon.1, align 4
  %7 = alloca %union.anon.2, align 4
  %8 = alloca %union.anon.3, align 4
  %9 = alloca %union.anon.4, align 4
  %10 = alloca %union.anon.5, align 4
  %11 = alloca %union.anon.6, align 4
  %12 = alloca %union.anon.7, align 4
  %13 = alloca %union.anon.8, align 4
  %14 = alloca %union.anon.9, align 4
  %15 = alloca %union.anon.10, align 4
  store %struct._notify_script* %0, %struct._notify_script** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %2, metadata !871, metadata !537), !dbg !872
  call void @llvm.dbg.declare(metadata i8** %3, metadata !873, metadata !537), !dbg !874
  store i8* null, i8** %3, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata i8** %4, metadata !875, metadata !537), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %5, metadata !877, metadata !537), !dbg !878
  %16 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !879
  %17 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %16, i32 0, i32 3, !dbg !881
  %18 = load i32, i32* %17, align 8, !dbg !881
  %19 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !882
  %20 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %19, i32 0, i32 4, !dbg !883
  %21 = load i32, i32* %20, align 4, !dbg !883
  %22 = call zeroext i1 @set_privileges(i32 %18, i32 %21), !dbg !884
  br i1 %22, label %23, label %24, !dbg !885

; <label>:23:                                     ; preds = %1
  call void @exit(i32 0) #13, !dbg !886
  unreachable, !dbg !886

; <label>:24:                                     ; preds = %1
  %25 = call i32 @setpgid(i32 0, i32 0) #8, !dbg !887
  %26 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !888
  %27 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %26, i32 0, i32 2, !dbg !890
  %28 = load i32, i32* %27, align 4, !dbg !890
  %29 = and i32 %28, 32, !dbg !891
  %30 = icmp ne i32 %29, 0, !dbg !891
  br i1 %30, label %31, label %50, !dbg !892

; <label>:31:                                     ; preds = %24
  %32 = call i32 (i32, ...) @prctl(i32 1, i32 15) #8, !dbg !893
  %33 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !895
  %34 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %33, i32 0, i32 0, !dbg !896
  %35 = load i8**, i8*** %34, align 8, !dbg !896
  %36 = getelementptr inbounds i8*, i8** %35, i64 0, !dbg !895
  %37 = load i8*, i8** %36, align 8, !dbg !895
  %38 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !897
  %39 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %38, i32 0, i32 0, !dbg !898
  %40 = load i8**, i8*** %39, align 8, !dbg !898
  %41 = load i8**, i8*** @environ, align 8, !dbg !899
  %42 = call i32 @execve(i8* %37, i8** %40, i8** %41) #8, !dbg !900
  %43 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !901
  %44 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %43, i32 0, i32 0, !dbg !902
  %45 = load i8**, i8*** %44, align 8, !dbg !902
  %46 = getelementptr inbounds i8*, i8** %45, i64 0, !dbg !901
  %47 = load i8*, i8** %46, align 8, !dbg !901
  %48 = call i32* @__errno_location() #1, !dbg !903
  %49 = load i32, i32* %48, align 4, !dbg !904
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i32 0, i32 0), i8* %47, i32 %49), !dbg !905
  br label %154, !dbg !907

; <label>:50:                                     ; preds = %24
  %51 = load %struct._notify_script*, %struct._notify_script** %2, align 8, !dbg !908
  %52 = call i8* @cmd_str(%struct._notify_script* %51), !dbg !910
  store i8* %52, i8** %4, align 8, !dbg !911
  %53 = call i32 @system(i8* %52), !dbg !912
  store i32 %53, i32* %5, align 4, !dbg !914
  %54 = load i32, i32* %5, align 4, !dbg !915
  %55 = icmp eq i32 %54, -1, !dbg !917
  br i1 %55, label %56, label %58, !dbg !918

; <label>:56:                                     ; preds = %50
  %57 = load i8*, i8** %4, align 8, !dbg !919
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0), i8* %57), !dbg !920
  br label %88, !dbg !920

; <label>:58:                                     ; preds = %50
  %59 = bitcast %union.anon.1* %6 to i32*, !dbg !921
  %60 = load i32, i32* %5, align 4, !dbg !923
  store i32 %60, i32* %59, align 4, !dbg !921
  %61 = bitcast %union.anon.1* %6 to i32*, !dbg !924
  %62 = load i32, i32* %61, align 4, !dbg !924
  %63 = and i32 %62, 127, !dbg !925
  %64 = icmp eq i32 %63, 0, !dbg !921
  br i1 %64, label %65, label %87, !dbg !926

; <label>:65:                                     ; preds = %58
  %66 = bitcast %union.anon.2* %7 to i32*, !dbg !927
  %67 = load i32, i32* %5, align 4, !dbg !930
  store i32 %67, i32* %66, align 4, !dbg !927
  %68 = bitcast %union.anon.2* %7 to i32*, !dbg !931
  %69 = load i32, i32* %68, align 4, !dbg !931
  %70 = and i32 %69, 65280, !dbg !932
  %71 = ashr i32 %70, 8, !dbg !933
  %72 = icmp eq i32 %71, 127, !dbg !927
  br i1 %72, label %73, label %75, !dbg !934

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %4, align 8, !dbg !935
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i8* %74), !dbg !937
  br label %86, !dbg !938

; <label>:75:                                     ; preds = %65
  %76 = bitcast %union.anon.3* %8 to i32*, !dbg !939
  %77 = load i32, i32* %5, align 4, !dbg !941
  store i32 %77, i32* %76, align 4, !dbg !939
  %78 = bitcast %union.anon.3* %8 to i32*, !dbg !942
  %79 = load i32, i32* %78, align 4, !dbg !942
  %80 = and i32 %79, 65280, !dbg !943
  %81 = ashr i32 %80, 8, !dbg !944
  %82 = icmp eq i32 %81, 126, !dbg !939
  br i1 %82, label %83, label %85, !dbg !945

; <label>:83:                                     ; preds = %75
  %84 = load i8*, i8** %4, align 8, !dbg !946
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i8* %84), !dbg !948
  br label %85, !dbg !949

; <label>:85:                                     ; preds = %83, %75
  br label %86

; <label>:86:                                     ; preds = %85, %73
  br label %87, !dbg !950

; <label>:87:                                     ; preds = %86, %58
  br label %88

; <label>:88:                                     ; preds = %87, %56
  %89 = load i8*, i8** %3, align 8, !dbg !951
  %90 = icmp ne i8* %89, null, !dbg !951
  br i1 %90, label %91, label %93, !dbg !953

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %3, align 8, !dbg !954
  call void @free(i8* %92) #8, !dbg !955
  store i8* null, i8** %3, align 8, !dbg !956
  br label %93, !dbg !957

; <label>:93:                                     ; preds = %91, %88
  %94 = load i32, i32* %5, align 4, !dbg !958
  %95 = icmp eq i32 %94, -1, !dbg !960
  br i1 %95, label %119, label %96, !dbg !961

; <label>:96:                                     ; preds = %93
  %97 = bitcast %union.anon.4* %9 to i32*, !dbg !962
  %98 = load i32, i32* %5, align 4, !dbg !963
  store i32 %98, i32* %97, align 4, !dbg !962
  %99 = bitcast %union.anon.4* %9 to i32*, !dbg !964
  %100 = load i32, i32* %99, align 4, !dbg !964
  %101 = and i32 %100, 127, !dbg !965
  %102 = icmp eq i32 %101, 0, !dbg !962
  br i1 %102, label %103, label %120, !dbg !966

; <label>:103:                                    ; preds = %96
  %104 = bitcast %union.anon.5* %10 to i32*, !dbg !967
  %105 = load i32, i32* %5, align 4, !dbg !969
  store i32 %105, i32* %104, align 4, !dbg !967
  %106 = bitcast %union.anon.5* %10 to i32*, !dbg !970
  %107 = load i32, i32* %106, align 4, !dbg !970
  %108 = and i32 %107, 65280, !dbg !971
  %109 = ashr i32 %108, 8, !dbg !972
  %110 = icmp eq i32 %109, 126, !dbg !967
  br i1 %110, label %119, label %111, !dbg !973

; <label>:111:                                    ; preds = %103
  %112 = bitcast %union.anon.6* %11 to i32*, !dbg !974
  %113 = load i32, i32* %5, align 4, !dbg !976
  store i32 %113, i32* %112, align 4, !dbg !974
  %114 = bitcast %union.anon.6* %11 to i32*, !dbg !977
  %115 = load i32, i32* %114, align 4, !dbg !977
  %116 = and i32 %115, 65280, !dbg !978
  %117 = ashr i32 %116, 8, !dbg !979
  %118 = icmp eq i32 %117, 127, !dbg !974
  br i1 %118, label %119, label %120, !dbg !980

; <label>:119:                                    ; preds = %111, %103, %93
  call void @exit(i32 0) #13, !dbg !981
  unreachable, !dbg !981

; <label>:120:                                    ; preds = %111, %96
  %121 = bitcast %union.anon.7* %12 to i32*, !dbg !982
  %122 = load i32, i32* %5, align 4, !dbg !984
  store i32 %122, i32* %121, align 4, !dbg !982
  %123 = bitcast %union.anon.7* %12 to i32*, !dbg !985
  %124 = load i32, i32* %123, align 4, !dbg !985
  %125 = and i32 %124, 127, !dbg !986
  %126 = icmp eq i32 %125, 0, !dbg !982
  br i1 %126, label %127, label %134, !dbg !987

; <label>:127:                                    ; preds = %120
  %128 = bitcast %union.anon.8* %13 to i32*, !dbg !988
  %129 = load i32, i32* %5, align 4, !dbg !989
  store i32 %129, i32* %128, align 4, !dbg !988
  %130 = bitcast %union.anon.8* %13 to i32*, !dbg !990
  %131 = load i32, i32* %130, align 4, !dbg !990
  %132 = and i32 %131, 65280, !dbg !991
  %133 = ashr i32 %132, 8, !dbg !992
  call void @exit(i32 %133) #13, !dbg !993
  unreachable, !dbg !993

; <label>:134:                                    ; preds = %120
  %135 = bitcast %union.anon.9* %14 to i32*, !dbg !994
  %136 = load i32, i32* %5, align 4, !dbg !996
  store i32 %136, i32* %135, align 4, !dbg !994
  %137 = bitcast %union.anon.9* %14 to i32*, !dbg !997
  %138 = load i32, i32* %137, align 4, !dbg !997
  %139 = and i32 %138, 127, !dbg !998
  %140 = add nsw i32 %139, 1, !dbg !994
  %141 = trunc i32 %140 to i8, !dbg !999
  %142 = sext i8 %141 to i32, !dbg !999
  %143 = ashr i32 %142, 1, !dbg !1000
  %144 = icmp sgt i32 %143, 0, !dbg !1001
  br i1 %144, label %145, label %153, !dbg !1002

; <label>:145:                                    ; preds = %134
  %146 = call i32 @getpid() #8, !dbg !1003
  %147 = bitcast %union.anon.10* %15 to i32*, !dbg !1004
  %148 = load i32, i32* %5, align 4, !dbg !1005
  store i32 %148, i32* %147, align 4, !dbg !1004
  %149 = bitcast %union.anon.10* %15 to i32*, !dbg !1006
  %150 = load i32, i32* %149, align 4, !dbg !1006
  %151 = and i32 %150, 127, !dbg !1007
  %152 = call i32 @kill(i32 %146, i32 %151) #8, !dbg !1008
  br label %153, !dbg !1010

; <label>:153:                                    ; preds = %145, %134
  call void @exit(i32 0) #13, !dbg !1011
  unreachable, !dbg !1011

; <label>:154:                                    ; preds = %31
  call void @exit(i32 0) #13, !dbg !1012
  unreachable, !dbg !1012
                                                  ; No predecessors!
  ret void, !dbg !1013
}

; Function Attrs: nounwind uwtable
define i32 @system_call_script(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64, %struct._notify_script*) #0 !dbg !1014 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._thread_master*, align 8
  %8 = alloca i32 (%struct._thread*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._notify_script*, align 8
  %12 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %7, metadata !1019, metadata !537), !dbg !1020
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %8, metadata !1021, metadata !537), !dbg !1022
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1023, metadata !537), !dbg !1024
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1025, metadata !537), !dbg !1026
  store %struct._notify_script* %4, %struct._notify_script** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %11, metadata !1027, metadata !537), !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1029, metadata !537), !dbg !1030
  %13 = load i8*, i8** @log_file_name, align 8, !dbg !1031
  %14 = icmp ne i8* %13, null, !dbg !1031
  br i1 %14, label %15, label %16, !dbg !1033

; <label>:15:                                     ; preds = %5
  call void @flush_log_file(), !dbg !1034
  br label %16, !dbg !1034

; <label>:16:                                     ; preds = %15, %5
  %17 = call i32 @local_fork(), !dbg !1035
  store i32 %17, i32* %12, align 4, !dbg !1036
  %18 = load i32, i32* %12, align 4, !dbg !1037
  %19 = icmp slt i32 %18, 0, !dbg !1039
  br i1 %19, label %20, label %21, !dbg !1040

; <label>:20:                                     ; preds = %16
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !1041
  store i32 -1, i32* %6, align 4, !dbg !1043
  br label %33, !dbg !1043

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %12, align 4, !dbg !1044
  %23 = icmp ne i32 %22, 0, !dbg !1044
  br i1 %23, label %24, label %31, !dbg !1046

; <label>:24:                                     ; preds = %21
  %25 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1047
  %26 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %8, align 8, !dbg !1049
  %27 = load i8*, i8** %9, align 8, !dbg !1050
  %28 = load i32, i32* %12, align 4, !dbg !1051
  %29 = load i64, i64* %10, align 8, !dbg !1052
  %30 = call %struct._thread* @thread_add_child(%struct._thread_master* %25, i32 (%struct._thread*)* %26, i8* %27, i32 %28, i64 %29), !dbg !1053
  store i32 0, i32* %6, align 4, !dbg !1054
  br label %33, !dbg !1054

; <label>:31:                                     ; preds = %21
  %32 = load %struct._notify_script*, %struct._notify_script** %11, align 8, !dbg !1055
  call void @system_call(%struct._notify_script* %32) #12, !dbg !1056
  unreachable, !dbg !1056

; <label>:33:                                     ; preds = %24, %20
  %34 = load i32, i32* %6, align 4, !dbg !1057
  ret i32 %34, !dbg !1057
}

declare %struct._thread* @thread_add_child(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define i32 @child_killed_thread(%struct._thread*) #0 !dbg !1058 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._thread_master*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1059, metadata !537), !dbg !1060
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !1061, metadata !537), !dbg !1062
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1063
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 2, !dbg !1064
  %6 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !1064
  store %struct._thread_master* %6, %struct._thread_master** %3, align 8, !dbg !1062
  %7 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1065
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 1, !dbg !1067
  %9 = load i32, i32* %8, align 8, !dbg !1067
  %10 = icmp eq i32 %9, 10, !dbg !1068
  br i1 %10, label %11, label %20, !dbg !1069

; <label>:11:                                     ; preds = %1
  %12 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1070
  %13 = getelementptr inbounds %struct._thread, %struct._thread* %12, i32 0, i32 6, !dbg !1071
  %14 = bitcast %union.anon* %13 to %struct.anon*, !dbg !1072
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0, !dbg !1073
  %16 = load i32, i32* %15, align 8, !dbg !1073
  %17 = call i32 @getpgid(i32 %16) #8, !dbg !1074
  %18 = sub nsw i32 0, %17, !dbg !1075
  %19 = call i32 @kill(i32 %18, i32 9) #8, !dbg !1076
  br label %20, !dbg !1078

; <label>:20:                                     ; preds = %11, %1
  %21 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1079
  %22 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %21, i32 0, i32 3, !dbg !1081
  %23 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %22, i32 0, i32 0, !dbg !1082
  %24 = icmp ne %struct.rb_node** %23, null, !dbg !1083
  br i1 %24, label %33, label %25, !dbg !1084

; <label>:25:                                     ; preds = %20
  %26 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1085
  %27 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %26, i32 0, i32 18, !dbg !1087
  %28 = load i8, i8* %27, align 8, !dbg !1087
  %29 = trunc i8 %28 to i1, !dbg !1087
  br i1 %29, label %33, label %30, !dbg !1088

; <label>:30:                                     ; preds = %25
  %31 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1089
  %32 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %31), !dbg !1090
  br label %33, !dbg !1090

; <label>:33:                                     ; preds = %30, %25, %20
  ret i32 0, !dbg !1091
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind
declare i32 @getpgid(i32) #3

declare %struct._thread* @thread_add_terminate_event(%struct._thread_master*) #4

; Function Attrs: nounwind uwtable
define void @script_killall(%struct._thread_master*, i32, i1 zeroext) #0 !dbg !1092 {
  %4 = alloca %struct._thread_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct._thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct._thread*, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %4, metadata !1095, metadata !537), !dbg !1096
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1097, metadata !537), !dbg !1098
  %14 = zext i1 %2 to i8
  store i8 %14, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1099, metadata !537), !dbg !1100
  call void @llvm.dbg.declare(metadata %struct._thread** %7, metadata !1101, metadata !537), !dbg !1102
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1103, metadata !537), !dbg !1104
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1105, metadata !537), !dbg !1106
  %15 = call i32 @getpgid(i32 0) #8, !dbg !1107
  store i32 %15, i32* %8, align 4, !dbg !1108
  %16 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !1109
  %17 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %16, i32 0, i32 3, !dbg !1111
  %18 = call %struct.rb_node* @rb_first(%struct.rb_root* %17), !dbg !1112
  %19 = icmp ne %struct.rb_node* %18, null, !dbg !1112
  br i1 %19, label %20, label %29, !dbg !1113

; <label>:20:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.rb_node** %10, metadata !1114, metadata !537), !dbg !1118
  %21 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !1119
  %22 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %21, i32 0, i32 3, !dbg !1121
  %23 = call %struct.rb_node* @rb_first(%struct.rb_root* %22), !dbg !1122
  store %struct.rb_node* %23, %struct.rb_node** %10, align 8, !dbg !1123
  %24 = load %struct.rb_node*, %struct.rb_node** %10, align 8, !dbg !1124
  %25 = bitcast %struct.rb_node* %24 to i8*, !dbg !1125
  %26 = getelementptr inbounds i8, i8* %25, i64 -72, !dbg !1126
  %27 = bitcast i8* %26 to %struct._thread*, !dbg !1127
  store %struct._thread* %27, %struct._thread** %11, align 8, !dbg !1128
  %28 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !1129
  br label %30, !dbg !1130

; <label>:29:                                     ; preds = %3
  br label %30, !dbg !1131

; <label>:30:                                     ; preds = %29, %20
  %31 = phi %struct._thread* [ %28, %20 ], [ null, %29 ], !dbg !1133
  store %struct._thread* %31, %struct._thread** %7, align 8, !dbg !1135
  br label %32, !dbg !1136

; <label>:32:                                     ; preds = %78, %30
  %33 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !1137
  %34 = icmp ne %struct._thread* %33, null, !dbg !1140
  br i1 %34, label %35, label %80, !dbg !1140

; <label>:35:                                     ; preds = %32
  %36 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !1141
  %37 = getelementptr inbounds %struct._thread, %struct._thread* %36, i32 0, i32 6, !dbg !1143
  %38 = bitcast %union.anon* %37 to %struct.anon*, !dbg !1144
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0, !dbg !1145
  %40 = load i32, i32* %39, align 8, !dbg !1145
  %41 = call i32 @getpgid(i32 %40) #8, !dbg !1146
  store i32 %41, i32* %9, align 4, !dbg !1147
  %42 = load i32, i32* %9, align 4, !dbg !1148
  %43 = load i32, i32* %8, align 4, !dbg !1150
  %44 = icmp ne i32 %42, %43, !dbg !1151
  br i1 %44, label %45, label %50, !dbg !1152

; <label>:45:                                     ; preds = %35
  %46 = load i32, i32* %9, align 4, !dbg !1153
  %47 = sub nsw i32 0, %46, !dbg !1154
  %48 = load i32, i32* %5, align 4, !dbg !1155
  %49 = call i32 @kill(i32 %47, i32 %48) #8, !dbg !1156
  br label %60, !dbg !1156

; <label>:50:                                     ; preds = %35
  %51 = load i32, i32* %9, align 4, !dbg !1157
  %52 = load i32, i32* %8, align 4, !dbg !1159
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %51, i32 %52), !dbg !1160
  %53 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !1161
  %54 = getelementptr inbounds %struct._thread, %struct._thread* %53, i32 0, i32 6, !dbg !1162
  %55 = bitcast %union.anon* %54 to %struct.anon*, !dbg !1163
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0, !dbg !1164
  %57 = load i32, i32* %56, align 8, !dbg !1164
  %58 = load i32, i32* %5, align 4, !dbg !1165
  %59 = call i32 @kill(i32 %57, i32 %58) #8, !dbg !1166
  br label %60

; <label>:60:                                     ; preds = %50, %45
  br label %61, !dbg !1167

; <label>:61:                                     ; preds = %60
  %62 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !1168
  %63 = getelementptr inbounds %struct._thread, %struct._thread* %62, i32 0, i32 8, !dbg !1170
  %64 = bitcast %union.anon.0* %63 to %struct.rb_node*, !dbg !1170
  %65 = call %struct.rb_node* @rb_next(%struct.rb_node* %64), !dbg !1171
  %66 = icmp ne %struct.rb_node* %65, null, !dbg !1171
  br i1 %66, label %67, label %77, !dbg !1172

; <label>:67:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata %struct.rb_node** %12, metadata !1173, metadata !537), !dbg !1175
  %68 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !1176
  %69 = getelementptr inbounds %struct._thread, %struct._thread* %68, i32 0, i32 8, !dbg !1178
  %70 = bitcast %union.anon.0* %69 to %struct.rb_node*, !dbg !1178
  %71 = call %struct.rb_node* @rb_next(%struct.rb_node* %70), !dbg !1179
  store %struct.rb_node* %71, %struct.rb_node** %12, align 8, !dbg !1180
  %72 = load %struct.rb_node*, %struct.rb_node** %12, align 8, !dbg !1181
  %73 = bitcast %struct.rb_node* %72 to i8*, !dbg !1182
  %74 = getelementptr inbounds i8, i8* %73, i64 -72, !dbg !1183
  %75 = bitcast i8* %74 to %struct._thread*, !dbg !1184
  store %struct._thread* %75, %struct._thread** %13, align 8, !dbg !1185
  %76 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1186
  br label %78, !dbg !1187

; <label>:77:                                     ; preds = %61
  br label %78, !dbg !1188

; <label>:78:                                     ; preds = %77, %67
  %79 = phi %struct._thread* [ %76, %67 ], [ null, %77 ], !dbg !1190
  store %struct._thread* %79, %struct._thread** %7, align 8, !dbg !1192
  br label %32, !dbg !1193, !llvm.loop !1194

; <label>:80:                                     ; preds = %32
  %81 = load i8, i8* %6, align 1, !dbg !1196
  %82 = trunc i8 %81 to i1, !dbg !1196
  br i1 %82, label %83, label %88, !dbg !1198

; <label>:83:                                     ; preds = %80
  %84 = load i32, i32* %5, align 4, !dbg !1199
  %85 = icmp ne i32 %84, 9, !dbg !1201
  br i1 %85, label %86, label %88, !dbg !1202

; <label>:86:                                     ; preds = %83
  %87 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !1203
  call void @thread_children_reschedule(%struct._thread_master* %87, i32 (%struct._thread*)* @child_killed_thread, i64 1000000), !dbg !1204
  br label %88, !dbg !1204

; <label>:88:                                     ; preds = %86, %83, %80
  ret void, !dbg !1205
}

declare %struct.rb_node* @rb_first(%struct.rb_root*) #4

declare %struct.rb_node* @rb_next(%struct.rb_node*) #4

declare void @thread_children_reschedule(%struct._thread_master*, i32 (%struct._thread*)*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @check_script_secure(%struct._notify_script*, %struct.magic_set*) #0 !dbg !1206 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._notify_script*, align 8
  %5 = alloca %struct.magic_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct._notify_script* %0, %struct._notify_script** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %4, metadata !1213, metadata !537), !dbg !1214
  store %struct.magic_set* %1, %struct.magic_set** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.magic_set** %5, metadata !1215, metadata !537), !dbg !1216
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1217, metadata !537), !dbg !1218
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1219, metadata !537), !dbg !1220
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1221, metadata !537), !dbg !1222
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1223, metadata !537), !dbg !1224
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !1225, metadata !537), !dbg !1259
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !1260, metadata !537), !dbg !1261
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1262, metadata !537), !dbg !1263
  store i8 0, i8* %12, align 1, !dbg !1263
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1264, metadata !537), !dbg !1265
  store i32 0, i32* %13, align 4, !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1266, metadata !537), !dbg !1267
  store i32 0, i32* %14, align 4, !dbg !1267
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1268, metadata !537), !dbg !1269
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1270, metadata !537), !dbg !1271
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1272, metadata !537), !dbg !1273
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1274, metadata !537), !dbg !1275
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1276, metadata !537), !dbg !1277
  %21 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1278
  %22 = icmp ne %struct._notify_script* %21, null, !dbg !1278
  br i1 %22, label %24, label %23, !dbg !1280

; <label>:23:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1281
  br label %472, !dbg !1281

; <label>:24:                                     ; preds = %2
  %25 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1282
  %26 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %25, i32 0, i32 0, !dbg !1284
  %27 = load i8**, i8*** %26, align 8, !dbg !1284
  %28 = getelementptr inbounds i8*, i8** %27, i64 0, !dbg !1282
  %29 = load i8*, i8** %28, align 8, !dbg !1282
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !1282
  %31 = load i8, i8* %30, align 1, !dbg !1282
  %32 = sext i8 %31 to i32, !dbg !1282
  %33 = icmp eq i32 %32, 60, !dbg !1285
  br i1 %33, label %34, label %53, !dbg !1286

; <label>:34:                                     ; preds = %24
  %35 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1287
  %36 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %35, i32 0, i32 0, !dbg !1288
  %37 = load i8**, i8*** %36, align 8, !dbg !1288
  %38 = getelementptr inbounds i8*, i8** %37, i64 0, !dbg !1287
  %39 = load i8*, i8** %38, align 8, !dbg !1287
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1289
  %41 = call i64 @strspn(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #11, !dbg !1290
  %42 = add i64 %41, 1, !dbg !1291
  %43 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1292
  %44 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %43, i32 0, i32 0, !dbg !1293
  %45 = load i8**, i8*** %44, align 8, !dbg !1293
  %46 = getelementptr inbounds i8*, i8** %45, i64 0, !dbg !1292
  %47 = load i8*, i8** %46, align 8, !dbg !1292
  %48 = getelementptr inbounds i8, i8* %47, i64 %42, !dbg !1292
  %49 = load i8, i8* %48, align 1, !dbg !1292
  %50 = sext i8 %49 to i32, !dbg !1292
  %51 = icmp eq i32 %50, 47, !dbg !1294
  br i1 %51, label %52, label %53, !dbg !1295

; <label>:52:                                     ; preds = %34
  store i32 64, i32* %3, align 4, !dbg !1297
  br label %472, !dbg !1297

; <label>:53:                                     ; preds = %34, %24
  %54 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1298
  %55 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %54, i32 0, i32 0, !dbg !1300
  %56 = load i8**, i8*** %55, align 8, !dbg !1300
  %57 = getelementptr inbounds i8*, i8** %56, i64 0, !dbg !1298
  %58 = load i8*, i8** %57, align 8, !dbg !1298
  %59 = call i8* @strchr(i8* %58, i32 47) #11, !dbg !1301
  %60 = icmp ne i8* %59, null, !dbg !1301
  br i1 %60, label %82, label %61, !dbg !1302

; <label>:61:                                     ; preds = %53
  %62 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1303
  %63 = call i32 @find_path(%struct._notify_script* %62), !dbg !1306
  store i32 %63, i32* %7, align 4, !dbg !1307
  %64 = icmp ne i32 %63, 0, !dbg !1307
  br i1 %64, label %65, label %81, !dbg !1308

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %7, align 4, !dbg !1309
  %67 = icmp eq i32 %66, 13, !dbg !1312
  br i1 %67, label %68, label %74, !dbg !1313

; <label>:68:                                     ; preds = %65
  %69 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1314
  %70 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %69, i32 0, i32 0, !dbg !1315
  %71 = load i8**, i8*** %70, align 8, !dbg !1315
  %72 = getelementptr inbounds i8*, i8** %71, i64 0, !dbg !1314
  %73 = load i8*, i8** %72, align 8, !dbg !1314
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* %73), !dbg !1316
  br label %80, !dbg !1316

; <label>:74:                                     ; preds = %65
  %75 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1317
  %76 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %75, i32 0, i32 0, !dbg !1318
  %77 = load i8**, i8*** %76, align 8, !dbg !1318
  %78 = getelementptr inbounds i8*, i8** %77, i64 0, !dbg !1317
  %79 = load i8*, i8** %78, align 8, !dbg !1317
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0), i8* %79), !dbg !1319
  br label %80

; <label>:80:                                     ; preds = %74, %68
  store i32 8, i32* %3, align 4, !dbg !1320
  br label %472, !dbg !1320

; <label>:81:                                     ; preds = %61
  br label %82, !dbg !1321

; <label>:82:                                     ; preds = %81, %53
  %83 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1322
  %84 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %83, i32 0, i32 3, !dbg !1324
  %85 = load i32, i32* %84, align 8, !dbg !1324
  %86 = icmp ne i32 %85, 0, !dbg !1322
  br i1 %86, label %87, label %89, !dbg !1325

; <label>:87:                                     ; preds = %82
  %88 = call i32 @geteuid() #8, !dbg !1326
  store i32 %88, i32* %13, align 4, !dbg !1327
  br label %89, !dbg !1328

; <label>:89:                                     ; preds = %87, %82
  %90 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1329
  %91 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %90, i32 0, i32 4, !dbg !1331
  %92 = load i32, i32* %91, align 4, !dbg !1331
  %93 = icmp ne i32 %92, 0, !dbg !1329
  br i1 %93, label %94, label %96, !dbg !1332

; <label>:94:                                     ; preds = %89
  %95 = call i32 @getegid() #8, !dbg !1333
  store i32 %95, i32* %14, align 4, !dbg !1334
  br label %96, !dbg !1335

; <label>:96:                                     ; preds = %94, %89
  %97 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1336
  %98 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %97, i32 0, i32 4, !dbg !1338
  %99 = load i32, i32* %98, align 4, !dbg !1338
  %100 = icmp ne i32 %99, 0, !dbg !1336
  br i1 %100, label %101, label %107, !dbg !1339

; <label>:101:                                    ; preds = %96
  %102 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1340
  %103 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %102, i32 0, i32 4, !dbg !1342
  %104 = load i32, i32* %103, align 4, !dbg !1342
  %105 = call i32 @setegid(i32 %104) #8, !dbg !1343
  %106 = icmp ne i32 %105, 0, !dbg !1343
  br i1 %106, label %118, label %107, !dbg !1344

; <label>:107:                                    ; preds = %101, %96
  %108 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1345
  %109 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %108, i32 0, i32 3, !dbg !1346
  %110 = load i32, i32* %109, align 8, !dbg !1346
  %111 = icmp ne i32 %110, 0, !dbg !1345
  br i1 %111, label %112, label %160, !dbg !1347

; <label>:112:                                    ; preds = %107
  %113 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1348
  %114 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %113, i32 0, i32 3, !dbg !1349
  %115 = load i32, i32* %114, align 8, !dbg !1349
  %116 = call i32 @seteuid(i32 %115) #8, !dbg !1350
  %117 = icmp ne i32 %116, 0, !dbg !1350
  br i1 %117, label %118, label %160, !dbg !1351

; <label>:118:                                    ; preds = %112, %101
  %119 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1353
  %120 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %119, i32 0, i32 3, !dbg !1355
  %121 = load i32, i32* %120, align 8, !dbg !1355
  %122 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1356
  %123 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %122, i32 0, i32 4, !dbg !1357
  %124 = load i32, i32* %123, align 4, !dbg !1357
  %125 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1358
  %126 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %125, i32 0, i32 0, !dbg !1359
  %127 = load i8**, i8*** %126, align 8, !dbg !1359
  %128 = getelementptr inbounds i8*, i8** %127, i64 0, !dbg !1358
  %129 = load i8*, i8** %128, align 8, !dbg !1358
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i32 %121, i32 %124, i8* %129), !dbg !1360
  %130 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1361
  %131 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %130, i32 0, i32 3, !dbg !1363
  %132 = load i32, i32* %131, align 8, !dbg !1363
  %133 = icmp ne i32 %132, 0, !dbg !1361
  br i1 %133, label %134, label %138, !dbg !1364

; <label>:134:                                    ; preds = %118
  %135 = load i32, i32* %13, align 4, !dbg !1365
  %136 = call i32 @seteuid(i32 %135) #8, !dbg !1367
  %137 = icmp ne i32 %136, 0, !dbg !1367
  br i1 %137, label %147, label %138, !dbg !1368

; <label>:138:                                    ; preds = %134, %118
  %139 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1369
  %140 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %139, i32 0, i32 4, !dbg !1370
  %141 = load i32, i32* %140, align 4, !dbg !1370
  %142 = icmp ne i32 %141, 0, !dbg !1369
  br i1 %142, label %143, label %159, !dbg !1371

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %14, align 4, !dbg !1372
  %145 = call i32 @setegid(i32 %144) #8, !dbg !1373
  %146 = icmp ne i32 %145, 0, !dbg !1373
  br i1 %146, label %147, label %159, !dbg !1374

; <label>:147:                                    ; preds = %143, %134
  %148 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1376
  %149 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %148, i32 0, i32 3, !dbg !1377
  %150 = load i32, i32* %149, align 8, !dbg !1377
  %151 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1378
  %152 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %151, i32 0, i32 4, !dbg !1379
  %153 = load i32, i32* %152, align 4, !dbg !1379
  %154 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1380
  %155 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %154, i32 0, i32 0, !dbg !1381
  %156 = load i8**, i8*** %155, align 8, !dbg !1381
  %157 = getelementptr inbounds i8*, i8** %156, i64 0, !dbg !1380
  %158 = load i8*, i8** %157, align 8, !dbg !1380
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0), i32 %150, i32 %153, i8* %158), !dbg !1382
  br label %159, !dbg !1382

; <label>:159:                                    ; preds = %147, %143, %138
  store i32 4, i32* %3, align 4, !dbg !1383
  br label %472, !dbg !1383

; <label>:160:                                    ; preds = %112, %107
  %161 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1384
  %162 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %161, i32 0, i32 0, !dbg !1385
  %163 = load i8**, i8*** %162, align 8, !dbg !1385
  %164 = getelementptr inbounds i8*, i8** %163, i64 0, !dbg !1384
  %165 = load i8*, i8** %164, align 8, !dbg !1384
  %166 = call i8* @realpath(i8* %165, i8* null) #8, !dbg !1386
  store i8* %166, i8** %15, align 8, !dbg !1387
  %167 = call i32* @__errno_location() #1, !dbg !1388
  %168 = load i32, i32* %167, align 4, !dbg !1389
  store i32 %168, i32* %16, align 4, !dbg !1390
  %169 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1391
  %170 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %169, i32 0, i32 4, !dbg !1393
  %171 = load i32, i32* %170, align 4, !dbg !1393
  %172 = icmp ne i32 %171, 0, !dbg !1391
  br i1 %172, label %173, label %177, !dbg !1394

; <label>:173:                                    ; preds = %160
  %174 = load i32, i32* %14, align 4, !dbg !1395
  %175 = call i32 @setegid(i32 %174) #8, !dbg !1397
  %176 = icmp ne i32 %175, 0, !dbg !1397
  br i1 %176, label %186, label %177, !dbg !1398

; <label>:177:                                    ; preds = %173, %160
  %178 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1399
  %179 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %178, i32 0, i32 3, !dbg !1400
  %180 = load i32, i32* %179, align 8, !dbg !1400
  %181 = icmp ne i32 %180, 0, !dbg !1399
  br i1 %181, label %182, label %198, !dbg !1401

; <label>:182:                                    ; preds = %177
  %183 = load i32, i32* %13, align 4, !dbg !1402
  %184 = call i32 @seteuid(i32 %183) #8, !dbg !1403
  %185 = icmp ne i32 %184, 0, !dbg !1403
  br i1 %185, label %186, label %198, !dbg !1404

; <label>:186:                                    ; preds = %182, %173
  %187 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1405
  %188 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %187, i32 0, i32 3, !dbg !1406
  %189 = load i32, i32* %188, align 8, !dbg !1406
  %190 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1407
  %191 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %190, i32 0, i32 4, !dbg !1408
  %192 = load i32, i32* %191, align 4, !dbg !1408
  %193 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1409
  %194 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %193, i32 0, i32 0, !dbg !1410
  %195 = load i8**, i8*** %194, align 8, !dbg !1410
  %196 = getelementptr inbounds i8*, i8** %195, i64 0, !dbg !1409
  %197 = load i8*, i8** %196, align 8, !dbg !1409
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i32 %189, i32 %192, i8* %197), !dbg !1411
  br label %198, !dbg !1411

; <label>:198:                                    ; preds = %186, %182, %177
  %199 = load i8*, i8** %15, align 8, !dbg !1412
  %200 = icmp ne i8* %199, null, !dbg !1412
  br i1 %200, label %209, label %201, !dbg !1414

; <label>:201:                                    ; preds = %198
  %202 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1415
  %203 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %202, i32 0, i32 0, !dbg !1417
  %204 = load i8**, i8*** %203, align 8, !dbg !1417
  %205 = getelementptr inbounds i8*, i8** %204, i64 0, !dbg !1415
  %206 = load i8*, i8** %205, align 8, !dbg !1415
  %207 = load i32, i32* %16, align 4, !dbg !1418
  %208 = call i8* @strerror(i32 %207) #8, !dbg !1419
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i8* %206, i8* %208), !dbg !1420
  store i32 8, i32* %3, align 4, !dbg !1422
  br label %472, !dbg !1422

; <label>:209:                                    ; preds = %198
  store i8* null, i8** %17, align 8, !dbg !1423
  %210 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1424
  %211 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %210, i32 0, i32 0, !dbg !1425
  %212 = load i8**, i8*** %211, align 8, !dbg !1425
  %213 = getelementptr inbounds i8*, i8** %212, i64 0, !dbg !1424
  %214 = load i8*, i8** %213, align 8, !dbg !1424
  %215 = call i8* @strrchr(i8* %214, i32 47) #11, !dbg !1426
  store i8* %215, i8** %18, align 8, !dbg !1427
  %216 = load i8*, i8** %15, align 8, !dbg !1428
  %217 = call i8* @strrchr(i8* %216, i32 47) #11, !dbg !1429
  store i8* %217, i8** %19, align 8, !dbg !1430
  %218 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1431
  %219 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %218, i32 0, i32 0, !dbg !1433
  %220 = load i8**, i8*** %219, align 8, !dbg !1433
  %221 = getelementptr inbounds i8*, i8** %220, i64 0, !dbg !1431
  %222 = load i8*, i8** %221, align 8, !dbg !1431
  %223 = load i8*, i8** %15, align 8, !dbg !1434
  %224 = call i32 @strcmp(i8* %222, i8* %223) #11, !dbg !1435
  %225 = icmp ne i32 %224, 0, !dbg !1435
  br i1 %225, label %226, label %305, !dbg !1436

; <label>:226:                                    ; preds = %209
  %227 = load i8*, i8** %18, align 8, !dbg !1437
  %228 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !1440
  %229 = load i8*, i8** %19, align 8, !dbg !1441
  %230 = getelementptr inbounds i8, i8* %229, i64 1, !dbg !1442
  %231 = call i32 @strcmp(i8* %228, i8* %230) #11, !dbg !1443
  %232 = icmp ne i32 %231, 0, !dbg !1443
  br i1 %232, label %233, label %292, !dbg !1444

; <label>:233:                                    ; preds = %226
  %234 = load i8*, i8** %15, align 8, !dbg !1445
  store i8* %234, i8** %17, align 8, !dbg !1447
  %235 = load i8*, i8** %19, align 8, !dbg !1448
  %236 = load i8*, i8** %17, align 8, !dbg !1449
  %237 = ptrtoint i8* %235 to i64, !dbg !1450
  %238 = ptrtoint i8* %236 to i64, !dbg !1450
  %239 = sub i64 %237, %238, !dbg !1450
  %240 = add nsw i64 %239, 1, !dbg !1451
  %241 = load i8*, i8** %18, align 8, !dbg !1452
  %242 = getelementptr inbounds i8, i8* %241, i64 1, !dbg !1453
  %243 = call i64 @strlen(i8* %242) #11, !dbg !1454
  %244 = add i64 %240, %243, !dbg !1455
  %245 = add i64 %244, 1, !dbg !1456
  %246 = call i8* @zalloc(i64 %245), !dbg !1457
  store i8* %246, i8** %15, align 8, !dbg !1459
  %247 = load i8*, i8** %15, align 8, !dbg !1460
  %248 = load i8*, i8** %17, align 8, !dbg !1461
  %249 = load i8*, i8** %19, align 8, !dbg !1462
  %250 = getelementptr inbounds i8, i8* %249, i64 1, !dbg !1463
  %251 = load i8*, i8** %17, align 8, !dbg !1464
  %252 = ptrtoint i8* %250 to i64, !dbg !1465
  %253 = ptrtoint i8* %251 to i64, !dbg !1465
  %254 = sub i64 %252, %253, !dbg !1465
  %255 = call i8* @strncpy(i8* %247, i8* %248, i64 %254) #8, !dbg !1466
  %256 = load i8*, i8** %15, align 8, !dbg !1467
  %257 = load i8*, i8** %19, align 8, !dbg !1468
  %258 = getelementptr inbounds i8, i8* %257, i64 1, !dbg !1469
  %259 = load i8*, i8** %17, align 8, !dbg !1470
  %260 = ptrtoint i8* %258 to i64, !dbg !1471
  %261 = ptrtoint i8* %259 to i64, !dbg !1471
  %262 = sub i64 %260, %261, !dbg !1471
  %263 = getelementptr inbounds i8, i8* %256, i64 %262, !dbg !1472
  %264 = load i8*, i8** %18, align 8, !dbg !1473
  %265 = getelementptr inbounds i8, i8* %264, i64 1, !dbg !1474
  %266 = call i8* @strcpy(i8* %263, i8* %265) #8, !dbg !1475
  %267 = load i8*, i8** %17, align 8, !dbg !1476
  %268 = call i32 @stat(i8* %267, %struct.stat* %11) #8, !dbg !1477
  store i32 %268, i32* %8, align 4, !dbg !1478
  %269 = load i8*, i8** %15, align 8, !dbg !1479
  %270 = call i32 @stat(i8* %269, %struct.stat* %10) #8, !dbg !1480
  store i32 %270, i32* %9, align 4, !dbg !1481
  %271 = load i32, i32* %8, align 4, !dbg !1482
  %272 = icmp ne i32 %271, 0, !dbg !1482
  br i1 %272, label %291, label %273, !dbg !1484

; <label>:273:                                    ; preds = %233
  %274 = load i32, i32* %9, align 4, !dbg !1485
  %275 = icmp ne i32 %274, 0, !dbg !1485
  br i1 %275, label %288, label %276, !dbg !1486

; <label>:276:                                    ; preds = %273
  %277 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0, !dbg !1487
  %278 = load i64, i64* %277, align 8, !dbg !1487
  %279 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0, !dbg !1488
  %280 = load i64, i64* %279, align 8, !dbg !1488
  %281 = icmp ne i64 %278, %280, !dbg !1489
  br i1 %281, label %288, label %282, !dbg !1490

; <label>:282:                                    ; preds = %276
  %283 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1, !dbg !1491
  %284 = load i64, i64* %283, align 8, !dbg !1491
  %285 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1, !dbg !1492
  %286 = load i64, i64* %285, align 8, !dbg !1492
  %287 = icmp ne i64 %284, %286, !dbg !1493
  br i1 %287, label %288, label %291, !dbg !1494

; <label>:288:                                    ; preds = %282, %276, %273
  %289 = load i8*, i8** %15, align 8, !dbg !1495
  call void @free(i8* %289) #8, !dbg !1497
  store i8* null, i8** %15, align 8, !dbg !1498
  %290 = load i8*, i8** %17, align 8, !dbg !1499
  store i8* %290, i8** %15, align 8, !dbg !1500
  store i8* null, i8** %17, align 8, !dbg !1501
  br label %291, !dbg !1502

; <label>:291:                                    ; preds = %288, %282, %233
  br label %292, !dbg !1503

; <label>:292:                                    ; preds = %291, %226
  %293 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1504
  %294 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %293, i32 0, i32 0, !dbg !1506
  %295 = load i8**, i8*** %294, align 8, !dbg !1506
  %296 = getelementptr inbounds i8*, i8** %295, i64 0, !dbg !1504
  %297 = load i8*, i8** %296, align 8, !dbg !1504
  %298 = load i8*, i8** %15, align 8, !dbg !1507
  %299 = call i32 @strcmp(i8* %297, i8* %298) #11, !dbg !1508
  %300 = icmp ne i32 %299, 0, !dbg !1508
  br i1 %300, label %301, label %304, !dbg !1509

; <label>:301:                                    ; preds = %292
  %302 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1510
  %303 = load i8*, i8** %15, align 8, !dbg !1512
  call void @replace_cmd_name(%struct._notify_script* %302, i8* %303), !dbg !1513
  br label %304, !dbg !1514

; <label>:304:                                    ; preds = %301, %292
  br label %305, !dbg !1515

; <label>:305:                                    ; preds = %304, %209
  %306 = load i8*, i8** %17, align 8, !dbg !1516
  %307 = icmp ne i8* %306, null, !dbg !1516
  br i1 %307, label %310, label %308, !dbg !1518

; <label>:308:                                    ; preds = %305
  %309 = load i8*, i8** %15, align 8, !dbg !1519
  call void @free(i8* %309) #8, !dbg !1520
  br label %312, !dbg !1520

; <label>:310:                                    ; preds = %305
  %311 = load i8*, i8** %15, align 8, !dbg !1521
  call void @free(i8* %311) #8, !dbg !1522
  store i8* null, i8** %15, align 8, !dbg !1523
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = load i8*, i8** %17, align 8, !dbg !1524
  %314 = icmp ne i8* %313, null, !dbg !1524
  br i1 %314, label %315, label %317, !dbg !1524

; <label>:315:                                    ; preds = %312
  %316 = load i8*, i8** %17, align 8, !dbg !1526
  br label %323, !dbg !1528

; <label>:317:                                    ; preds = %312
  %318 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1529
  %319 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %318, i32 0, i32 0, !dbg !1531
  %320 = load i8**, i8*** %319, align 8, !dbg !1531
  %321 = getelementptr inbounds i8*, i8** %320, i64 0, !dbg !1529
  %322 = load i8*, i8** %321, align 8, !dbg !1529
  br label %323, !dbg !1532

; <label>:323:                                    ; preds = %317, %315
  %324 = phi i8* [ %316, %315 ], [ %322, %317 ], !dbg !1533
  %325 = call i32 @stat(i8* %324, %struct.stat* %10) #8, !dbg !1535
  %326 = icmp ne i32 %325, 0, !dbg !1535
  br i1 %326, label %327, label %333, !dbg !1535

; <label>:327:                                    ; preds = %323
  %328 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1536
  %329 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %328, i32 0, i32 0, !dbg !1538
  %330 = load i8**, i8*** %329, align 8, !dbg !1538
  %331 = getelementptr inbounds i8*, i8** %330, i64 0, !dbg !1536
  %332 = load i8*, i8** %331, align 8, !dbg !1536
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %332), !dbg !1539
  store i32 8, i32* %3, align 4, !dbg !1540
  br label %472, !dbg !1540

; <label>:333:                                    ; preds = %323
  store i32 2, i32* %6, align 4, !dbg !1541
  %334 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1542
  %335 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %334, i32 0, i32 3, !dbg !1544
  %336 = load i32, i32* %335, align 8, !dbg !1544
  %337 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1545
  %338 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %337, i32 0, i32 4, !dbg !1546
  %339 = load i32, i32* %338, align 4, !dbg !1546
  %340 = call zeroext i1 @is_executable(%struct.stat* %10, i32 %336, i32 %339), !dbg !1547
  br i1 %340, label %341, label %383, !dbg !1548

; <label>:341:                                    ; preds = %333
  %342 = load i32, i32* %6, align 4, !dbg !1549
  %343 = or i32 %342, 16, !dbg !1549
  store i32 %343, i32* %6, align 4, !dbg !1549
  %344 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1551
  %345 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %344, i32 0, i32 3, !dbg !1553
  %346 = load i32, i32* %345, align 8, !dbg !1553
  %347 = icmp eq i32 %346, 0, !dbg !1554
  br i1 %347, label %381, label %348, !dbg !1555

; <label>:348:                                    ; preds = %341
  %349 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1556
  %350 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %349, i32 0, i32 4, !dbg !1558
  %351 = load i32, i32* %350, align 4, !dbg !1558
  %352 = icmp eq i32 %351, 0, !dbg !1559
  br i1 %352, label %381, label %353, !dbg !1560

; <label>:353:                                    ; preds = %348
  %354 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 4, !dbg !1561
  %355 = load i32, i32* %354, align 4, !dbg !1561
  %356 = icmp eq i32 %355, 0, !dbg !1562
  br i1 %356, label %357, label %367, !dbg !1563

; <label>:357:                                    ; preds = %353
  %358 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !1564
  %359 = load i32, i32* %358, align 8, !dbg !1564
  %360 = and i32 %359, 64, !dbg !1565
  %361 = icmp ne i32 %360, 0, !dbg !1565
  br i1 %361, label %362, label %367, !dbg !1566

; <label>:362:                                    ; preds = %357
  %363 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !1567
  %364 = load i32, i32* %363, align 8, !dbg !1567
  %365 = and i32 %364, 2048, !dbg !1569
  %366 = icmp ne i32 %365, 0, !dbg !1569
  br i1 %366, label %381, label %367, !dbg !1570

; <label>:367:                                    ; preds = %362, %357, %353
  %368 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 5, !dbg !1571
  %369 = load i32, i32* %368, align 8, !dbg !1571
  %370 = icmp eq i32 %369, 0, !dbg !1572
  br i1 %370, label %371, label %382, !dbg !1573

; <label>:371:                                    ; preds = %367
  %372 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !1574
  %373 = load i32, i32* %372, align 8, !dbg !1574
  %374 = and i32 %373, 8, !dbg !1575
  %375 = icmp ne i32 %374, 0, !dbg !1575
  br i1 %375, label %376, label %382, !dbg !1576

; <label>:376:                                    ; preds = %371
  %377 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !1577
  %378 = load i32, i32* %377, align 8, !dbg !1577
  %379 = and i32 %378, 1024, !dbg !1578
  %380 = icmp ne i32 %379, 0, !dbg !1578
  br i1 %380, label %381, label %382, !dbg !1579

; <label>:381:                                    ; preds = %376, %362, %348, %341
  store i8 1, i8* %12, align 1, !dbg !1581
  br label %382, !dbg !1582

; <label>:382:                                    ; preds = %381, %376, %371, %367
  br label %395, !dbg !1583

; <label>:383:                                    ; preds = %333
  %384 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1584
  %385 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %384, i32 0, i32 0, !dbg !1585
  %386 = load i8**, i8*** %385, align 8, !dbg !1585
  %387 = getelementptr inbounds i8*, i8** %386, i64 0, !dbg !1584
  %388 = load i8*, i8** %387, align 8, !dbg !1584
  %389 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1586
  %390 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %389, i32 0, i32 3, !dbg !1587
  %391 = load i32, i32* %390, align 8, !dbg !1587
  %392 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1588
  %393 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %392, i32 0, i32 4, !dbg !1589
  %394 = load i32, i32* %393, align 4, !dbg !1589
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i32 0, i32 0), i8* %388, i32 %391, i32 %394), !dbg !1590
  br label %395

; <label>:395:                                    ; preds = %383, %382
  %396 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1591
  %397 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %396, i32 0, i32 2, !dbg !1592
  %398 = load i32, i32* %397, align 4, !dbg !1593
  %399 = or i32 %398, 32, !dbg !1593
  store i32 %399, i32* %397, align 4, !dbg !1593
  %400 = load %struct.magic_set*, %struct.magic_set** %5, align 8, !dbg !1594
  %401 = icmp ne %struct.magic_set* %400, null, !dbg !1594
  br i1 %401, label %402, label %439, !dbg !1596

; <label>:402:                                    ; preds = %395
  %403 = load i32, i32* %6, align 4, !dbg !1597
  %404 = and i32 %403, 16, !dbg !1599
  %405 = icmp ne i32 %404, 0, !dbg !1599
  br i1 %405, label %406, label %439, !dbg !1600

; <label>:406:                                    ; preds = %402
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1601, metadata !537), !dbg !1603
  %407 = load %struct.magic_set*, %struct.magic_set** %5, align 8, !dbg !1604
  %408 = load i8*, i8** %17, align 8, !dbg !1605
  %409 = icmp ne i8* %408, null, !dbg !1605
  br i1 %409, label %410, label %412, !dbg !1605

; <label>:410:                                    ; preds = %406
  %411 = load i8*, i8** %17, align 8, !dbg !1606
  br label %418, !dbg !1608

; <label>:412:                                    ; preds = %406
  %413 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1609
  %414 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %413, i32 0, i32 0, !dbg !1611
  %415 = load i8**, i8*** %414, align 8, !dbg !1611
  %416 = getelementptr inbounds i8*, i8** %415, i64 0, !dbg !1609
  %417 = load i8*, i8** %416, align 8, !dbg !1609
  br label %418, !dbg !1612

; <label>:418:                                    ; preds = %412, %410
  %419 = phi i8* [ %411, %410 ], [ %417, %412 ], !dbg !1613
  %420 = call i8* @magic_file(%struct.magic_set* %407, i8* %419), !dbg !1615
  store i8* %420, i8** %20, align 8, !dbg !1616
  %421 = load i8*, i8** %20, align 8, !dbg !1617
  %422 = call i8* @strstr(i8* %421, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)) #11, !dbg !1619
  %423 = icmp ne i8* %422, null, !dbg !1619
  br i1 %423, label %438, label %424, !dbg !1620

; <label>:424:                                    ; preds = %418
  %425 = load i8*, i8** %20, align 8, !dbg !1621
  %426 = call i8* @strstr(i8* %425, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0)) #11, !dbg !1622
  %427 = icmp ne i8* %426, null, !dbg !1622
  br i1 %427, label %438, label %428, !dbg !1623

; <label>:428:                                    ; preds = %424
  %429 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1624
  %430 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %429, i32 0, i32 0, !dbg !1626
  %431 = load i8**, i8*** %430, align 8, !dbg !1626
  %432 = getelementptr inbounds i8*, i8** %431, i64 0, !dbg !1624
  %433 = load i8*, i8** %432, align 8, !dbg !1624
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* %433), !dbg !1627
  %434 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1628
  %435 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %434, i32 0, i32 2, !dbg !1629
  %436 = load i32, i32* %435, align 4, !dbg !1630
  %437 = and i32 %436, -33, !dbg !1630
  store i32 %437, i32* %435, align 4, !dbg !1630
  br label %438, !dbg !1631

; <label>:438:                                    ; preds = %428, %424, %418
  br label %439, !dbg !1632

; <label>:439:                                    ; preds = %438, %402, %395
  %440 = load i8, i8* %12, align 1, !dbg !1633
  %441 = trunc i8 %440 to i1, !dbg !1633
  br i1 %441, label %449, label %442, !dbg !1635

; <label>:442:                                    ; preds = %439
  %443 = load i8*, i8** %17, align 8, !dbg !1636
  %444 = icmp ne i8* %443, null, !dbg !1636
  br i1 %444, label %445, label %447, !dbg !1639

; <label>:445:                                    ; preds = %442
  %446 = load i8*, i8** %17, align 8, !dbg !1640
  call void @free(i8* %446) #8, !dbg !1641
  br label %447, !dbg !1641

; <label>:447:                                    ; preds = %445, %442
  %448 = load i32, i32* %6, align 4, !dbg !1642
  store i32 %448, i32* %3, align 4, !dbg !1643
  br label %472, !dbg !1643

; <label>:449:                                    ; preds = %439
  %450 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !1644
  %451 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %450, i32 0, i32 0, !dbg !1645
  %452 = load i8**, i8*** %451, align 8, !dbg !1645
  %453 = getelementptr inbounds i8*, i8** %452, i64 0, !dbg !1644
  %454 = load i8*, i8** %453, align 8, !dbg !1644
  %455 = load i8, i8* @script_security, align 1, !dbg !1646
  %456 = trunc i8 %455 to i1, !dbg !1646
  %457 = call i32 @check_security(i8* %454, i1 zeroext %456), !dbg !1647
  %458 = load i32, i32* %6, align 4, !dbg !1648
  %459 = or i32 %458, %457, !dbg !1648
  store i32 %459, i32* %6, align 4, !dbg !1648
  %460 = load i8*, i8** %17, align 8, !dbg !1649
  %461 = icmp ne i8* %460, null, !dbg !1649
  br i1 %461, label %462, label %470, !dbg !1651

; <label>:462:                                    ; preds = %449
  %463 = load i8*, i8** %17, align 8, !dbg !1652
  %464 = load i8, i8* @script_security, align 1, !dbg !1654
  %465 = trunc i8 %464 to i1, !dbg !1654
  %466 = call i32 @check_security(i8* %463, i1 zeroext %465), !dbg !1655
  %467 = load i32, i32* %6, align 4, !dbg !1656
  %468 = or i32 %467, %466, !dbg !1656
  store i32 %468, i32* %6, align 4, !dbg !1656
  %469 = load i8*, i8** %17, align 8, !dbg !1657
  call void @free(i8* %469) #8, !dbg !1658
  br label %470, !dbg !1659

; <label>:470:                                    ; preds = %462, %449
  %471 = load i32, i32* %6, align 4, !dbg !1660
  store i32 %471, i32* %3, align 4, !dbg !1661
  br label %472, !dbg !1661

; <label>:472:                                    ; preds = %470, %447, %327, %201, %159, %80, %52, %23
  %473 = load i32, i32* %3, align 4, !dbg !1662
  ret i32 %473, !dbg !1662
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @find_path(%struct._notify_script*) #0 !dbg !1663 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32
  %19 = alloca i8*, align 8
  store %struct._notify_script* %0, %struct._notify_script** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %3, metadata !1666, metadata !537), !dbg !1667
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1668, metadata !537), !dbg !1669
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1670, metadata !537), !dbg !1671
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1672, metadata !537), !dbg !1673
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1674, metadata !537), !dbg !1675
  %20 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1676
  %21 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %20, i32 0, i32 0, !dbg !1677
  %22 = load i8**, i8*** %21, align 8, !dbg !1677
  %23 = getelementptr inbounds i8*, i8** %22, i64 0, !dbg !1676
  %24 = load i8*, i8** %23, align 8, !dbg !1676
  store i8* %24, i8** %7, align 8, !dbg !1675
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1678, metadata !537), !dbg !1679
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1680, metadata !537), !dbg !1681
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1682, metadata !537), !dbg !1683
  store i32 2, i32* %10, align 4, !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1684, metadata !537), !dbg !1685
  call void @llvm.dbg.declare(metadata i32** %12, metadata !1686, metadata !537), !dbg !1688
  store i32* null, i32** %12, align 8, !dbg !1688
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1689, metadata !537), !dbg !1690
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1691, metadata !537), !dbg !1692
  store i8 0, i8* %14, align 1, !dbg !1692
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1693, metadata !537), !dbg !1694
  %25 = load i8*, i8** %7, align 8, !dbg !1695
  %26 = load i8, i8* %25, align 1, !dbg !1697
  %27 = sext i8 %26 to i32, !dbg !1697
  %28 = icmp eq i32 %27, 0, !dbg !1698
  br i1 %28, label %29, label %30, !dbg !1699

; <label>:29:                                     ; preds = %1
  store i32 2, i32* %2, align 4, !dbg !1700
  br label %251, !dbg !1700

; <label>:30:                                     ; preds = %1
  %31 = load i8*, i8** %7, align 8, !dbg !1701
  %32 = call i64 @strlen(i8* %31) #11, !dbg !1702
  store i64 %32, i64* %4, align 8, !dbg !1703
  %33 = load i64, i64* %4, align 8, !dbg !1704
  %34 = icmp uge i64 %33, 4096, !dbg !1706
  br i1 %34, label %35, label %36, !dbg !1707

; <label>:35:                                     ; preds = %30
  store i32 36, i32* %10, align 4, !dbg !1708
  br label %245, !dbg !1710

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %7, align 8, !dbg !1711
  %38 = call i8* @strchr(i8* %37, i32 47) #11, !dbg !1713
  %39 = icmp ne i8* %38, null, !dbg !1714
  br i1 %39, label %40, label %41, !dbg !1715

; <label>:40:                                     ; preds = %36
  store i32 0, i32* %10, align 4, !dbg !1716
  br label %245, !dbg !1718

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** @path, align 8, !dbg !1719
  %43 = icmp ne i8* %42, null, !dbg !1719
  br i1 %43, label %55, label %44, !dbg !1721

; <label>:44:                                     ; preds = %41
  %45 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !1722
  store i8* %45, i8** @path, align 8, !dbg !1724
  %46 = load i8*, i8** @path, align 8, !dbg !1725
  %47 = icmp ne i8* %46, null, !dbg !1725
  br i1 %47, label %54, label %48, !dbg !1727

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata i64* %16, metadata !1728, metadata !537), !dbg !1730
  %49 = call i64 @confstr(i32 0, i8* null, i64 0) #8, !dbg !1731
  store i64 %49, i64* %16, align 8, !dbg !1732
  %50 = call i8* @zalloc(i64 %49), !dbg !1733
  store i8* %50, i8** @path, align 8, !dbg !1735
  %51 = load i8*, i8** @path, align 8, !dbg !1736
  %52 = load i64, i64* %16, align 8, !dbg !1737
  %53 = call i64 @confstr(i32 0, i8* %51, i64 %52) #8, !dbg !1738
  store i8 1, i8* @path_is_malloced, align 1, !dbg !1739
  br label %54, !dbg !1740

; <label>:54:                                     ; preds = %48, %44
  br label %55, !dbg !1741

; <label>:55:                                     ; preds = %54, %41
  %56 = load i8*, i8** %7, align 8, !dbg !1742
  %57 = call i64 @strnlen(i8* %56, i64 256) #11, !dbg !1743
  store i64 %57, i64* %5, align 8, !dbg !1744
  %58 = load i8*, i8** @path, align 8, !dbg !1745
  %59 = call i64 @strnlen(i8* %58, i64 4095) #11, !dbg !1746
  %60 = add i64 %59, 1, !dbg !1747
  store i64 %60, i64* %6, align 8, !dbg !1748
  %61 = load i64, i64* %5, align 8, !dbg !1749
  %62 = icmp ugt i64 %61, 255, !dbg !1751
  br i1 %62, label %63, label %64, !dbg !1752

; <label>:63:                                     ; preds = %55
  store i32 36, i32* %10, align 4, !dbg !1753
  br label %245, !dbg !1755

; <label>:64:                                     ; preds = %55
  %65 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1756
  %66 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %65, i32 0, i32 4, !dbg !1758
  %67 = load i32, i32* %66, align 4, !dbg !1758
  %68 = icmp ne i32 %67, 0, !dbg !1756
  br i1 %68, label %69, label %101, !dbg !1759

; <label>:69:                                     ; preds = %64
  %70 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1760
  %71 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %70, i32 0, i32 4, !dbg !1763
  %72 = load i32, i32* %71, align 4, !dbg !1763
  %73 = call i32 @setegid(i32 %72) #8, !dbg !1764
  %74 = icmp ne i32 %73, 0, !dbg !1764
  br i1 %74, label %75, label %79, !dbg !1765

; <label>:75:                                     ; preds = %69
  %76 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1766
  %77 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %76, i32 0, i32 4, !dbg !1768
  %78 = load i32, i32* %77, align 4, !dbg !1768
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i32 %78), !dbg !1769
  store i32 13, i32* %10, align 4, !dbg !1770
  br label %245, !dbg !1771

; <label>:79:                                     ; preds = %69
  %80 = call i32 @getgroups(i32 0, i32* null) #8, !dbg !1772
  store i32 %80, i32* %11, align 4, !dbg !1773
  %81 = load i32, i32* %11, align 4, !dbg !1774
  %82 = sext i32 %81 to i64, !dbg !1775
  %83 = add i64 %82, 1, !dbg !1776
  %84 = mul i64 %83, 4, !dbg !1777
  %85 = call i8* @zalloc(i64 %84), !dbg !1778
  %86 = bitcast i8* %85 to i32*, !dbg !1779
  store i32* %86, i32** %12, align 8, !dbg !1780
  %87 = load i32, i32* %11, align 4, !dbg !1781
  %88 = load i32*, i32** %12, align 8, !dbg !1782
  %89 = call i32 @getgroups(i32 %87, i32* %88) #8, !dbg !1783
  store i32 %89, i32* %11, align 4, !dbg !1784
  %90 = load i32, i32* %11, align 4, !dbg !1785
  %91 = add nsw i32 %90, 1, !dbg !1785
  store i32 %91, i32* %11, align 4, !dbg !1785
  %92 = sext i32 %90 to i64, !dbg !1786
  %93 = load i32*, i32** %12, align 8, !dbg !1786
  %94 = getelementptr inbounds i32, i32* %93, i64 %92, !dbg !1786
  store i32 0, i32* %94, align 4, !dbg !1787
  %95 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1788
  %96 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %95, i32 0, i32 4, !dbg !1790
  %97 = call i32 @setgroups(i64 1, i32* %96) #8, !dbg !1791
  %98 = icmp ne i32 %97, 0, !dbg !1791
  br i1 %98, label %99, label %100, !dbg !1792

; <label>:99:                                     ; preds = %79
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i32 0, i32 0)), !dbg !1793
  store i32 13, i32* %10, align 4, !dbg !1795
  br label %212, !dbg !1796

; <label>:100:                                    ; preds = %79
  br label %101, !dbg !1797

; <label>:101:                                    ; preds = %100, %64
  %102 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1798
  %103 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %102, i32 0, i32 3, !dbg !1800
  %104 = load i32, i32* %103, align 8, !dbg !1800
  %105 = icmp ne i32 %104, 0, !dbg !1798
  br i1 %105, label %106, label %116, !dbg !1801

; <label>:106:                                    ; preds = %101
  %107 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1802
  %108 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %107, i32 0, i32 3, !dbg !1804
  %109 = load i32, i32* %108, align 8, !dbg !1804
  %110 = call i32 @seteuid(i32 %109) #8, !dbg !1805
  %111 = icmp ne i32 %110, 0, !dbg !1805
  br i1 %111, label %112, label %116, !dbg !1806

; <label>:112:                                    ; preds = %106
  %113 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1807
  %114 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %113, i32 0, i32 3, !dbg !1809
  %115 = load i32, i32* %114, align 8, !dbg !1809
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i32 %115), !dbg !1810
  store i32 13, i32* %10, align 4, !dbg !1811
  br label %212, !dbg !1812

; <label>:116:                                    ; preds = %106, %101
  %117 = load i8*, i8** @path, align 8, !dbg !1813
  store i8* %117, i8** %15, align 8, !dbg !1815
  br label %118, !dbg !1816

; <label>:118:                                    ; preds = %209, %116
  %119 = load i64, i64* %6, align 8, !dbg !1817
  %120 = load i64, i64* %5, align 8, !dbg !1820
  %121 = add i64 %119, %120, !dbg !1821
  %122 = add i64 %121, 1, !dbg !1822
  %123 = call i8* @llvm.stacksave(), !dbg !1823
  store i8* %123, i8** %17, align 8, !dbg !1823
  %124 = alloca i8, i64 %122, align 16, !dbg !1823
  call void @llvm.dbg.declare(metadata i8* %124, metadata !1824, metadata !1828), !dbg !1829
  %125 = load i8*, i8** %15, align 8, !dbg !1830
  %126 = call i8* @strchrnul(i8* %125, i32 58) #11, !dbg !1831
  store i8* %126, i8** %13, align 8, !dbg !1832
  %127 = load i8*, i8** %13, align 8, !dbg !1833
  %128 = load i8*, i8** %15, align 8, !dbg !1835
  %129 = load i64, i64* %6, align 8, !dbg !1836
  %130 = getelementptr inbounds i8, i8* %128, i64 %129, !dbg !1837
  %131 = icmp uge i8* %127, %130, !dbg !1838
  br i1 %131, label %132, label %139, !dbg !1839

; <label>:132:                                    ; preds = %118
  %133 = load i8*, i8** %13, align 8, !dbg !1840
  %134 = load i8, i8* %133, align 1, !dbg !1843
  %135 = sext i8 %134 to i32, !dbg !1843
  %136 = icmp eq i32 %135, 0, !dbg !1844
  br i1 %136, label %137, label %138, !dbg !1845

; <label>:137:                                    ; preds = %132
  store i32 2, i32* %10, align 4, !dbg !1846
  store i32 3, i32* %18, align 4
  br label %205, !dbg !1848

; <label>:138:                                    ; preds = %132
  store i32 6, i32* %18, align 4
  br label %205, !dbg !1849

; <label>:139:                                    ; preds = %118
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1850, metadata !537), !dbg !1851
  %140 = load i8*, i8** %15, align 8, !dbg !1852
  %141 = load i8*, i8** %13, align 8, !dbg !1853
  %142 = load i8*, i8** %15, align 8, !dbg !1854
  %143 = ptrtoint i8* %141 to i64, !dbg !1855
  %144 = ptrtoint i8* %142 to i64, !dbg !1855
  %145 = sub i64 %143, %144, !dbg !1855
  %146 = call i8* @mempcpy(i8* %124, i8* %140, i64 %145) #8, !dbg !1856
  store i8* %146, i8** %19, align 8, !dbg !1851
  %147 = load i8*, i8** %19, align 8, !dbg !1857
  store i8 47, i8* %147, align 1, !dbg !1858
  %148 = load i8*, i8** %19, align 8, !dbg !1859
  %149 = load i8*, i8** %15, align 8, !dbg !1860
  %150 = load i8*, i8** %13, align 8, !dbg !1861
  %151 = icmp ult i8* %149, %150, !dbg !1862
  %152 = zext i1 %151 to i32, !dbg !1862
  %153 = sext i32 %152 to i64, !dbg !1863
  %154 = getelementptr inbounds i8, i8* %148, i64 %153, !dbg !1863
  %155 = load i8*, i8** %7, align 8, !dbg !1864
  %156 = load i64, i64* %5, align 8, !dbg !1865
  %157 = add i64 %156, 1, !dbg !1866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 %157, i32 1, i1 false), !dbg !1867
  %158 = call i32 @stat(i8* %124, %struct.stat* %8) #8, !dbg !1868
  store i32 %158, i32* %9, align 4, !dbg !1869
  %159 = load i32, i32* %9, align 4, !dbg !1870
  %160 = icmp ne i32 %159, 0, !dbg !1870
  br i1 %160, label %187, label %161, !dbg !1872

; <label>:161:                                    ; preds = %139
  %162 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !1873
  %163 = load i32, i32* %162, align 8, !dbg !1873
  %164 = and i32 %163, 61440, !dbg !1876
  %165 = icmp eq i32 %164, 32768, !dbg !1877
  br i1 %165, label %168, label %166, !dbg !1878

; <label>:166:                                    ; preds = %161
  %167 = call i32* @__errno_location() #1, !dbg !1879
  store i32 13, i32* %167, align 4, !dbg !1880
  br label %186, !dbg !1881

; <label>:168:                                    ; preds = %161
  %169 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1882
  %170 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %169, i32 0, i32 3, !dbg !1884
  %171 = load i32, i32* %170, align 8, !dbg !1884
  %172 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1885
  %173 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %172, i32 0, i32 4, !dbg !1886
  %174 = load i32, i32* %173, align 4, !dbg !1886
  %175 = call zeroext i1 @is_executable(%struct.stat* %8, i32 %171, i32 %174), !dbg !1887
  br i1 %175, label %178, label %176, !dbg !1888

; <label>:176:                                    ; preds = %168
  %177 = call i32* @__errno_location() #1, !dbg !1889
  store i32 13, i32* %177, align 4, !dbg !1891
  br label %185, !dbg !1892

; <label>:178:                                    ; preds = %168
  %179 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1893
  %180 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %179, i32 0, i32 0, !dbg !1895
  %181 = load i8**, i8*** %180, align 8, !dbg !1895
  %182 = getelementptr inbounds i8*, i8** %181, i64 0, !dbg !1893
  %183 = load i8*, i8** %182, align 8, !dbg !1893
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.46, i32 0, i32 0), i8* %183, i8* %124), !dbg !1896
  %184 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1897
  call void @replace_cmd_name(%struct._notify_script* %184, i8* %124), !dbg !1898
  store i32 0, i32* %10, align 4, !dbg !1899
  store i8 0, i8* %14, align 1, !dbg !1900
  store i32 3, i32* %18, align 4
  br label %205, !dbg !1901

; <label>:185:                                    ; preds = %176
  br label %186

; <label>:186:                                    ; preds = %185, %166
  br label %187, !dbg !1902

; <label>:187:                                    ; preds = %186, %139
  %188 = call i32* @__errno_location() #1, !dbg !1903
  %189 = load i32, i32* %188, align 4, !dbg !1904
  switch i32 %189, label %196 [
    i32 8, label %190
    i32 13, label %190
    i32 2, label %195
    i32 116, label %195
    i32 20, label %195
    i32 19, label %195
    i32 110, label %195
  ], !dbg !1905

; <label>:190:                                    ; preds = %187, %187
  %191 = load i32, i32* %9, align 4, !dbg !1906
  %192 = icmp ne i32 %191, 0, !dbg !1906
  br i1 %192, label %194, label %193, !dbg !1909

; <label>:193:                                    ; preds = %190
  store i8 1, i8* %14, align 1, !dbg !1910
  br label %194, !dbg !1911

; <label>:194:                                    ; preds = %193, %190
  br label %195, !dbg !1912

; <label>:195:                                    ; preds = %187, %187, %187, %187, %187, %194
  br label %197, !dbg !1914

; <label>:196:                                    ; preds = %187
  store i32 -1, i32* %10, align 4, !dbg !1915
  store i32 3, i32* %18, align 4
  br label %205, !dbg !1916

; <label>:197:                                    ; preds = %195
  %198 = load i8*, i8** %13, align 8, !dbg !1917
  %199 = getelementptr inbounds i8, i8* %198, i32 1, !dbg !1917
  store i8* %199, i8** %13, align 8, !dbg !1917
  %200 = load i8, i8* %198, align 1, !dbg !1919
  %201 = sext i8 %200 to i32, !dbg !1919
  %202 = icmp eq i32 %201, 0, !dbg !1920
  br i1 %202, label %203, label %204, !dbg !1921

; <label>:203:                                    ; preds = %197
  store i32 4, i32* %18, align 4
  br label %205, !dbg !1922

; <label>:204:                                    ; preds = %197
  store i32 0, i32* %18, align 4, !dbg !1923
  br label %205, !dbg !1923

; <label>:205:                                    ; preds = %196, %178, %137, %204, %203, %138
  %206 = load i8*, i8** %17, align 8, !dbg !1924
  call void @llvm.stackrestore(i8* %206), !dbg !1924
  %207 = load i32, i32* %18, align 4
  switch i32 %207, label %253 [
    i32 0, label %208
    i32 6, label %209
    i32 4, label %211
    i32 3, label %212
  ]

; <label>:208:                                    ; preds = %205
  br label %209, !dbg !1926

; <label>:209:                                    ; preds = %208, %205
  %210 = load i8*, i8** %13, align 8, !dbg !1928
  store i8* %210, i8** %15, align 8, !dbg !1929
  br label %118, !dbg !1930, !llvm.loop !1931

; <label>:211:                                    ; preds = %205
  br label %212, !dbg !1933

; <label>:212:                                    ; preds = %211, %205, %112, %99
  %213 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1935
  %214 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %213, i32 0, i32 3, !dbg !1937
  %215 = load i32, i32* %214, align 8, !dbg !1937
  %216 = icmp ne i32 %215, 0, !dbg !1935
  br i1 %216, label %217, label %221, !dbg !1938

; <label>:217:                                    ; preds = %212
  %218 = call i32 @seteuid(i32 0) #8, !dbg !1939
  %219 = icmp ne i32 %218, 0, !dbg !1939
  br i1 %219, label %220, label %221, !dbg !1941

; <label>:220:                                    ; preds = %217
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.47, i32 0, i32 0)), !dbg !1942
  br label %221, !dbg !1942

; <label>:221:                                    ; preds = %220, %217, %212
  %222 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1943
  %223 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %222, i32 0, i32 4, !dbg !1945
  %224 = load i32, i32* %223, align 4, !dbg !1945
  %225 = icmp ne i32 %224, 0, !dbg !1943
  br i1 %225, label %226, label %244, !dbg !1946

; <label>:226:                                    ; preds = %221
  %227 = call i32 @setegid(i32 0) #8, !dbg !1947
  %228 = icmp ne i32 %227, 0, !dbg !1947
  br i1 %228, label %229, label %230, !dbg !1950

; <label>:229:                                    ; preds = %226
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i32 0, i32 0)), !dbg !1951
  br label %230, !dbg !1951

; <label>:230:                                    ; preds = %229, %226
  %231 = load i32*, i32** %12, align 8, !dbg !1952
  %232 = icmp ne i32* %231, null, !dbg !1952
  br i1 %232, label %233, label %243, !dbg !1954

; <label>:233:                                    ; preds = %230
  %234 = load i32, i32* %11, align 4, !dbg !1955
  %235 = sext i32 %234 to i64, !dbg !1958
  %236 = load i32*, i32** %12, align 8, !dbg !1959
  %237 = call i32 @setgroups(i64 %235, i32* %236) #8, !dbg !1960
  %238 = icmp ne i32 %237, 0, !dbg !1960
  br i1 %238, label %239, label %240, !dbg !1961

; <label>:239:                                    ; preds = %233
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.49, i32 0, i32 0)), !dbg !1962
  br label %240, !dbg !1962

; <label>:240:                                    ; preds = %239, %233
  %241 = load i32*, i32** %12, align 8, !dbg !1963
  %242 = bitcast i32* %241 to i8*, !dbg !1963
  call void @free(i8* %242) #8, !dbg !1964
  store i32* null, i32** %12, align 8, !dbg !1965
  br label %243, !dbg !1966

; <label>:243:                                    ; preds = %240, %230
  br label %244, !dbg !1967

; <label>:244:                                    ; preds = %243, %221
  br label %245, !dbg !1968

; <label>:245:                                    ; preds = %244, %75, %63, %40, %35
  %246 = load i8, i8* %14, align 1, !dbg !1970
  %247 = trunc i8 %246 to i1, !dbg !1970
  br i1 %247, label %248, label %249, !dbg !1972

; <label>:248:                                    ; preds = %245
  store i32 13, i32* %2, align 4, !dbg !1973
  br label %251, !dbg !1973

; <label>:249:                                    ; preds = %245
  %250 = load i32, i32* %10, align 4, !dbg !1975
  store i32 %250, i32* %2, align 4, !dbg !1976
  br label %251, !dbg !1976

; <label>:251:                                    ; preds = %249, %248, %29
  %252 = load i32, i32* %2, align 4, !dbg !1977
  ret i32 %252, !dbg !1977

; <label>:253:                                    ; preds = %205
  unreachable
}

; Function Attrs: nounwind
declare i32 @geteuid() #3

; Function Attrs: nounwind
declare i32 @getegid() #3

; Function Attrs: nounwind
declare i32 @setegid(i32) #3

; Function Attrs: nounwind
declare i32 @seteuid(i32) #3

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i8* @zalloc(i64) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @replace_cmd_name(%struct._notify_script*, i8*) #0 !dbg !1978 {
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store %struct._notify_script* %0, %struct._notify_script** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %3, metadata !1981, metadata !537), !dbg !1982
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1983, metadata !537), !dbg !1984
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1985, metadata !537), !dbg !1986
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1987, metadata !537), !dbg !1988
  %11 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !1989
  %12 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %11, i32 0, i32 0, !dbg !1990
  %13 = load i8**, i8*** %12, align 8, !dbg !1990
  %14 = getelementptr inbounds i8*, i8** %13, i64 1, !dbg !1989
  store i8** %14, i8*** %6, align 8, !dbg !1988
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1991, metadata !537), !dbg !1992
  store i64 1, i64* %7, align 8, !dbg !1992
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1993, metadata !537), !dbg !1994
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1995, metadata !537), !dbg !1996
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1997, metadata !537), !dbg !1998
  %15 = load i8*, i8** %4, align 8, !dbg !1999
  %16 = call i64 @strlen(i8* %15) #11, !dbg !2000
  %17 = add i64 %16, 1, !dbg !2001
  store i64 %17, i64* %5, align 8, !dbg !2002
  br label %18, !dbg !2003

; <label>:18:                                     ; preds = %22, %2
  %19 = load i8**, i8*** %6, align 8, !dbg !2004
  %20 = load i8*, i8** %19, align 8, !dbg !2006
  %21 = icmp ne i8* %20, null, !dbg !2007
  br i1 %21, label %22, label %30, !dbg !2007

; <label>:22:                                     ; preds = %18
  %23 = load i8**, i8*** %6, align 8, !dbg !2008
  %24 = getelementptr inbounds i8*, i8** %23, i32 1, !dbg !2008
  store i8** %24, i8*** %6, align 8, !dbg !2008
  %25 = load i8*, i8** %23, align 8, !dbg !2009
  %26 = call i64 @strlen(i8* %25) #11, !dbg !2010
  %27 = add i64 %26, 1, !dbg !2011
  %28 = load i64, i64* %5, align 8, !dbg !2012
  %29 = add i64 %28, %27, !dbg !2012
  store i64 %29, i64* %5, align 8, !dbg !2012
  br label %18, !dbg !2013, !llvm.loop !2015

; <label>:30:                                     ; preds = %18
  %31 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2016
  %32 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %31, i32 0, i32 0, !dbg !2017
  %33 = load i8**, i8*** %32, align 8, !dbg !2017
  %34 = getelementptr inbounds i8*, i8** %33, i64 0, !dbg !2016
  %35 = load i8*, i8** %34, align 8, !dbg !2016
  %36 = bitcast i8* %35 to i8**, !dbg !2018
  %37 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2019
  %38 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %37, i32 0, i32 0, !dbg !2020
  %39 = load i8**, i8*** %38, align 8, !dbg !2020
  %40 = getelementptr inbounds i8*, i8** %39, i64 0, !dbg !2019
  %41 = ptrtoint i8** %36 to i64, !dbg !2021
  %42 = ptrtoint i8** %40 to i64, !dbg !2021
  %43 = sub i64 %41, %42, !dbg !2021
  %44 = sdiv exact i64 %43, 8, !dbg !2021
  %45 = sub nsw i64 %44, 1, !dbg !2022
  store i64 %45, i64* %7, align 8, !dbg !2023
  %46 = load i64, i64* %7, align 8, !dbg !2024
  %47 = add i64 %46, 1, !dbg !2025
  %48 = mul i64 %47, 8, !dbg !2026
  %49 = load i64, i64* %5, align 8, !dbg !2027
  %50 = add i64 %48, %49, !dbg !2028
  %51 = call i8* @zalloc(i64 %50), !dbg !2029
  %52 = bitcast i8* %51 to i8**, !dbg !2030
  store i8** %52, i8*** %9, align 8, !dbg !2031
  store i8** %52, i8*** %8, align 8, !dbg !2032
  %53 = load i64, i64* %7, align 8, !dbg !2033
  %54 = add i64 %53, 1, !dbg !2034
  %55 = load i8**, i8*** %8, align 8, !dbg !2035
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54, !dbg !2035
  %57 = bitcast i8** %56 to i8*, !dbg !2036
  store i8* %57, i8** %10, align 8, !dbg !2037
  %58 = load i8*, i8** %10, align 8, !dbg !2038
  %59 = load i8*, i8** %4, align 8, !dbg !2039
  %60 = call i8* @strcpy(i8* %58, i8* %59) #8, !dbg !2040
  %61 = load i8*, i8** %10, align 8, !dbg !2041
  %62 = load i8**, i8*** %9, align 8, !dbg !2042
  %63 = getelementptr inbounds i8*, i8** %62, i32 1, !dbg !2042
  store i8** %63, i8*** %9, align 8, !dbg !2042
  store i8* %61, i8** %62, align 8, !dbg !2043
  %64 = load i8*, i8** %10, align 8, !dbg !2044
  %65 = call i64 @strlen(i8* %64) #11, !dbg !2045
  %66 = add i64 %65, 1, !dbg !2046
  %67 = load i8*, i8** %10, align 8, !dbg !2047
  %68 = getelementptr inbounds i8, i8* %67, i64 %66, !dbg !2047
  store i8* %68, i8** %10, align 8, !dbg !2047
  %69 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2048
  %70 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %69, i32 0, i32 0, !dbg !2049
  %71 = load i8**, i8*** %70, align 8, !dbg !2049
  %72 = getelementptr inbounds i8*, i8** %71, i64 1, !dbg !2048
  store i8** %72, i8*** %6, align 8, !dbg !2050
  br label %73, !dbg !2051

; <label>:73:                                     ; preds = %77, %30
  %74 = load i8**, i8*** %6, align 8, !dbg !2052
  %75 = load i8*, i8** %74, align 8, !dbg !2053
  %76 = icmp ne i8* %75, null, !dbg !2054
  br i1 %76, label %77, label %93, !dbg !2054

; <label>:77:                                     ; preds = %73
  %78 = load i8*, i8** %10, align 8, !dbg !2055
  %79 = load i8**, i8*** %6, align 8, !dbg !2057
  %80 = load i8*, i8** %79, align 8, !dbg !2058
  %81 = call i8* @strcpy(i8* %78, i8* %80) #8, !dbg !2059
  %82 = load i8*, i8** %10, align 8, !dbg !2060
  %83 = load i8**, i8*** %9, align 8, !dbg !2061
  %84 = getelementptr inbounds i8*, i8** %83, i32 1, !dbg !2061
  store i8** %84, i8*** %9, align 8, !dbg !2061
  store i8* %82, i8** %83, align 8, !dbg !2062
  %85 = load i8**, i8*** %6, align 8, !dbg !2063
  %86 = load i8*, i8** %85, align 8, !dbg !2064
  %87 = call i64 @strlen(i8* %86) #11, !dbg !2065
  %88 = add i64 %87, 1, !dbg !2066
  %89 = load i8*, i8** %10, align 8, !dbg !2067
  %90 = getelementptr inbounds i8, i8* %89, i64 %88, !dbg !2067
  store i8* %90, i8** %10, align 8, !dbg !2067
  %91 = load i8**, i8*** %6, align 8, !dbg !2068
  %92 = getelementptr inbounds i8*, i8** %91, i32 1, !dbg !2068
  store i8** %92, i8*** %6, align 8, !dbg !2068
  br label %73, !dbg !2069, !llvm.loop !2070

; <label>:93:                                     ; preds = %73
  %94 = load i8**, i8*** %9, align 8, !dbg !2071
  store i8* null, i8** %94, align 8, !dbg !2072
  %95 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2073
  %96 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %95, i32 0, i32 0, !dbg !2074
  %97 = load i8**, i8*** %96, align 8, !dbg !2074
  %98 = bitcast i8** %97 to i8*, !dbg !2073
  call void @free(i8* %98) #8, !dbg !2075
  %99 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2076
  %100 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %99, i32 0, i32 0, !dbg !2077
  store i8** null, i8*** %100, align 8, !dbg !2078
  %101 = load i8**, i8*** %8, align 8, !dbg !2079
  %102 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2080
  %103 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %102, i32 0, i32 0, !dbg !2081
  store i8** %101, i8*** %103, align 8, !dbg !2082
  ret void, !dbg !2083
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_executable(%struct.stat*, i32, i32) #0 !dbg !2084 {
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %4, metadata !2088, metadata !537), !dbg !2089
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2090, metadata !537), !dbg !2091
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2092, metadata !537), !dbg !2093
  %7 = load i32, i32* %5, align 4, !dbg !2094
  %8 = icmp eq i32 %7, 0, !dbg !2095
  br i1 %8, label %9, label %15, !dbg !2096

; <label>:9:                                      ; preds = %3
  %10 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2097
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2099
  %12 = load i32, i32* %11, align 8, !dbg !2099
  %13 = and i32 %12, 73, !dbg !2100
  %14 = icmp ne i32 %13, 0, !dbg !2100
  br i1 %14, label %63, label %15, !dbg !2101

; <label>:15:                                     ; preds = %9, %3
  %16 = load i32, i32* %5, align 4, !dbg !2102
  %17 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2103
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 4, !dbg !2104
  %19 = load i32, i32* %18, align 4, !dbg !2104
  %20 = icmp eq i32 %16, %19, !dbg !2105
  br i1 %20, label %21, label %27, !dbg !2106

; <label>:21:                                     ; preds = %15
  %22 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2107
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 3, !dbg !2108
  %24 = load i32, i32* %23, align 8, !dbg !2108
  %25 = and i32 %24, 64, !dbg !2109
  %26 = icmp ne i32 %25, 0, !dbg !2109
  br i1 %26, label %63, label %27, !dbg !2110

; <label>:27:                                     ; preds = %21, %15
  %28 = load i32, i32* %5, align 4, !dbg !2111
  %29 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2112
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 4, !dbg !2113
  %31 = load i32, i32* %30, align 4, !dbg !2113
  %32 = icmp ne i32 %28, %31, !dbg !2114
  br i1 %32, label %33, label %61, !dbg !2115

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %6, align 4, !dbg !2116
  %35 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2117
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %35, i32 0, i32 5, !dbg !2118
  %37 = load i32, i32* %36, align 8, !dbg !2118
  %38 = icmp eq i32 %34, %37, !dbg !2119
  br i1 %38, label %39, label %45, !dbg !2120

; <label>:39:                                     ; preds = %33
  %40 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2121
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 3, !dbg !2122
  %42 = load i32, i32* %41, align 8, !dbg !2122
  %43 = and i32 %42, 8, !dbg !2123
  %44 = icmp ne i32 %43, 0, !dbg !2123
  br i1 %44, label %59, label %45, !dbg !2124

; <label>:45:                                     ; preds = %39, %33
  %46 = load i32, i32* %6, align 4, !dbg !2125
  %47 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2126
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 5, !dbg !2127
  %49 = load i32, i32* %48, align 8, !dbg !2127
  %50 = icmp ne i32 %46, %49, !dbg !2128
  br i1 %50, label %51, label %57, !dbg !2129

; <label>:51:                                     ; preds = %45
  %52 = load %struct.stat*, %struct.stat** %4, align 8, !dbg !2130
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %52, i32 0, i32 3, !dbg !2131
  %54 = load i32, i32* %53, align 8, !dbg !2131
  %55 = and i32 %54, 1, !dbg !2132
  %56 = icmp ne i32 %55, 0, !dbg !2133
  br label %57

; <label>:57:                                     ; preds = %51, %45
  %58 = phi i1 [ false, %45 ], [ %56, %51 ]
  br label %59, !dbg !2134

; <label>:59:                                     ; preds = %57, %39
  %60 = phi i1 [ true, %39 ], [ %58, %57 ]
  br label %61

; <label>:61:                                     ; preds = %59, %27
  %62 = phi i1 [ false, %27 ], [ %60, %59 ]
  br label %63, !dbg !2136

; <label>:63:                                     ; preds = %61, %21, %9
  %64 = phi i1 [ true, %21 ], [ true, %9 ], [ %62, %61 ]
  ret i1 %64, !dbg !2137
}

declare i8* @magic_file(%struct.magic_set*, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_security(i8*, i1 zeroext) #0 !dbg !2138 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2141, metadata !537), !dbg !2142
  %12 = zext i1 %1 to i8
  store i8 %12, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2143, metadata !537), !dbg !2144
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2145, metadata !537), !dbg !2146
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2147, metadata !537), !dbg !2148
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2149, metadata !537), !dbg !2150
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2151, metadata !537), !dbg !2152
  call void @llvm.dbg.declare(metadata %struct.stat* %10, metadata !2153, metadata !537), !dbg !2154
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2155, metadata !537), !dbg !2156
  store i32 0, i32* %11, align 4, !dbg !2156
  %13 = load i8*, i8** %4, align 8, !dbg !2157
  store i8* %13, i8** %6, align 8, !dbg !2158
  br label %14, !dbg !2159

; <label>:14:                                     ; preds = %150, %2
  %15 = load i8*, i8** %6, align 8, !dbg !2160
  %16 = icmp ne i8* %15, null, !dbg !2162
  br i1 %16, label %17, label %151, !dbg !2162

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %6, align 8, !dbg !2163
  %19 = call i8* @strchrnul(i8* %18, i32 47) #11, !dbg !2165
  store i8* %19, i8** %7, align 8, !dbg !2166
  %20 = load i8*, i8** %7, align 8, !dbg !2167
  %21 = load i8, i8* %20, align 1, !dbg !2169
  %22 = icmp ne i8 %21, 0, !dbg !2169
  br i1 %22, label %23, label %26, !dbg !2170

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %7, align 8, !dbg !2171
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !2172
  store i8* %25, i8** %6, align 8, !dbg !2173
  br label %27, !dbg !2174

; <label>:26:                                     ; preds = %17
  store i8* null, i8** %7, align 8, !dbg !2175
  store i8* null, i8** %6, align 8, !dbg !2177
  br label %27

; <label>:27:                                     ; preds = %26, %23
  %28 = load i8*, i8** %7, align 8, !dbg !2178
  %29 = icmp ne i8* %28, null, !dbg !2178
  br i1 %29, label %30, label %41, !dbg !2180

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %7, align 8, !dbg !2181
  %32 = load i8*, i8** %4, align 8, !dbg !2184
  %33 = icmp eq i8* %31, %32, !dbg !2185
  br i1 %33, label %34, label %37, !dbg !2186

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %7, align 8, !dbg !2187
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !2187
  store i8* %36, i8** %7, align 8, !dbg !2187
  br label %37, !dbg !2188

; <label>:37:                                     ; preds = %34, %30
  %38 = load i8*, i8** %7, align 8, !dbg !2189
  %39 = load i8, i8* %38, align 1, !dbg !2190
  store i8 %39, i8* %8, align 1, !dbg !2191
  %40 = load i8*, i8** %7, align 8, !dbg !2192
  store i8 0, i8* %40, align 1, !dbg !2193
  br label %41, !dbg !2194

; <label>:41:                                     ; preds = %37, %27
  %42 = load i8*, i8** %4, align 8, !dbg !2195
  %43 = call i32 @fstatat(i32 0, i8* %42, %struct.stat* %10, i32 256) #8, !dbg !2196
  store i32 %43, i32* %9, align 4, !dbg !2197
  %44 = load i8*, i8** %7, align 8, !dbg !2198
  %45 = icmp ne i8* %44, null, !dbg !2198
  br i1 %45, label %46, label %49, !dbg !2200

; <label>:46:                                     ; preds = %41
  %47 = load i8, i8* %8, align 1, !dbg !2201
  %48 = load i8*, i8** %7, align 8, !dbg !2202
  store i8 %47, i8* %48, align 1, !dbg !2203
  br label %49, !dbg !2204

; <label>:49:                                     ; preds = %46, %41
  %50 = load i32, i32* %9, align 4, !dbg !2205
  %51 = icmp ne i32 %50, 0, !dbg !2205
  br i1 %51, label %52, label %80, !dbg !2207

; <label>:52:                                     ; preds = %49
  %53 = call i32* @__errno_location() #1, !dbg !2208
  %54 = load i32, i32* %53, align 4, !dbg !2211
  %55 = icmp eq i32 %54, 13, !dbg !2212
  br i1 %55, label %68, label %56, !dbg !2213

; <label>:56:                                     ; preds = %52
  %57 = call i32* @__errno_location() #1, !dbg !2214
  %58 = load i32, i32* %57, align 4, !dbg !2216
  %59 = icmp eq i32 %58, 40, !dbg !2217
  br i1 %59, label %68, label %60, !dbg !2218

; <label>:60:                                     ; preds = %56
  %61 = call i32* @__errno_location() #1, !dbg !2219
  %62 = load i32, i32* %61, align 4, !dbg !2221
  %63 = icmp eq i32 %62, 2, !dbg !2222
  br i1 %63, label %68, label %64, !dbg !2223

; <label>:64:                                     ; preds = %60
  %65 = call i32* @__errno_location() #1, !dbg !2224
  %66 = load i32, i32* %65, align 4, !dbg !2226
  %67 = icmp eq i32 %66, 20, !dbg !2227
  br i1 %67, label %68, label %70, !dbg !2228

; <label>:68:                                     ; preds = %64, %60, %56, %52
  %69 = load i8*, i8** %4, align 8, !dbg !2229
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.50, i32 0, i32 0), i8* %69), !dbg !2230
  br label %77, !dbg !2230

; <label>:70:                                     ; preds = %64
  %71 = load i8*, i8** %4, align 8, !dbg !2231
  %72 = call i32* @__errno_location() #1, !dbg !2232
  %73 = load i32, i32* %72, align 4, !dbg !2233
  %74 = call i32* @__errno_location() #1, !dbg !2234
  %75 = load i32, i32* %74, align 4, !dbg !2235
  %76 = call i8* @strerror(i32 %75) #8, !dbg !2236
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.51, i32 0, i32 0), i8* %71, i32 %73, i8* %76), !dbg !2237
  br label %77

; <label>:77:                                     ; preds = %70, %68
  %78 = load i32, i32* %11, align 4, !dbg !2238
  %79 = or i32 %78, 8, !dbg !2239
  store i32 %79, i32* %3, align 4, !dbg !2240
  br label %153, !dbg !2240

; <label>:80:                                     ; preds = %49
  %81 = load i8*, i8** %7, align 8, !dbg !2241
  %82 = icmp ne i8* %81, null, !dbg !2241
  br i1 %82, label %83, label %88, !dbg !2243

; <label>:83:                                     ; preds = %80
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2244
  %85 = load i32, i32* %84, align 8, !dbg !2244
  %86 = and i32 %85, 61440, !dbg !2246
  %87 = icmp eq i32 %86, 16384, !dbg !2247
  br i1 %87, label %88, label %101, !dbg !2248

; <label>:88:                                     ; preds = %83, %80
  %89 = load i8*, i8** %7, align 8, !dbg !2249
  %90 = icmp ne i8* %89, null, !dbg !2249
  br i1 %90, label %105, label %91, !dbg !2250

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2251
  %93 = load i32, i32* %92, align 8, !dbg !2251
  %94 = and i32 %93, 61440, !dbg !2252
  %95 = icmp eq i32 %94, 32768, !dbg !2253
  br i1 %95, label %105, label %96, !dbg !2254

; <label>:96:                                     ; preds = %91
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2255
  %98 = load i32, i32* %97, align 8, !dbg !2255
  %99 = and i32 %98, 61440, !dbg !2256
  %100 = icmp eq i32 %99, 40960, !dbg !2257
  br i1 %100, label %105, label %101, !dbg !2258

; <label>:101:                                    ; preds = %96, %83
  %102 = load i8*, i8** %4, align 8, !dbg !2260
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i32 0, i32 0), i8* %102), !dbg !2262
  %103 = load i32, i32* %11, align 4, !dbg !2263
  %104 = or i32 %103, 4, !dbg !2264
  store i32 %104, i32* %3, align 4, !dbg !2265
  br label %153, !dbg !2265

; <label>:105:                                    ; preds = %96, %91, %88
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 4, !dbg !2266
  %107 = load i32, i32* %106, align 4, !dbg !2266
  %108 = icmp ne i32 %107, 0, !dbg !2268
  br i1 %108, label %138, label %109, !dbg !2269

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2270
  %111 = load i32, i32* %110, align 8, !dbg !2270
  %112 = and i32 %111, 61440, !dbg !2271
  %113 = icmp eq i32 %112, 16384, !dbg !2272
  br i1 %113, label %114, label %119, !dbg !2273

; <label>:114:                                    ; preds = %109
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2274
  %116 = load i32, i32* %115, align 8, !dbg !2274
  %117 = and i32 %116, 512, !dbg !2275
  %118 = icmp ne i32 %117, 0, !dbg !2275
  br i1 %118, label %119, label %124, !dbg !2276

; <label>:119:                                    ; preds = %114, %109
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2277
  %121 = load i32, i32* %120, align 8, !dbg !2277
  %122 = and i32 %121, 61440, !dbg !2278
  %123 = icmp eq i32 %122, 32768, !dbg !2279
  br i1 %123, label %124, label %150, !dbg !2280

; <label>:124:                                    ; preds = %119, %114
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 5, !dbg !2281
  %126 = load i32, i32* %125, align 8, !dbg !2281
  %127 = icmp ne i32 %126, 0, !dbg !2282
  br i1 %127, label %128, label %133, !dbg !2283

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2284
  %130 = load i32, i32* %129, align 8, !dbg !2284
  %131 = and i32 %130, 16, !dbg !2286
  %132 = icmp ne i32 %131, 0, !dbg !2286
  br i1 %132, label %138, label %133, !dbg !2287

; <label>:133:                                    ; preds = %128, %124
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 3, !dbg !2288
  %135 = load i32, i32* %134, align 8, !dbg !2288
  %136 = and i32 %135, 2, !dbg !2289
  %137 = icmp ne i32 %136, 0, !dbg !2289
  br i1 %137, label %138, label %150, !dbg !2290

; <label>:138:                                    ; preds = %133, %128, %105
  %139 = load i8*, i8** %4, align 8, !dbg !2292
  %140 = load i8, i8* %5, align 1, !dbg !2294
  %141 = trunc i8 %140 to i1, !dbg !2294
  %142 = select i1 %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), !dbg !2294
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.53, i32 0, i32 0), i8* %139, i8* %142), !dbg !2295
  %143 = load i32, i32* %11, align 4, !dbg !2296
  %144 = or i32 %143, 1, !dbg !2296
  store i32 %144, i32* %11, align 4, !dbg !2296
  %145 = load i32, i32* %11, align 4, !dbg !2297
  %146 = load i8, i8* %5, align 1, !dbg !2298
  %147 = trunc i8 %146 to i1, !dbg !2298
  %148 = select i1 %147, i32 4, i32 0, !dbg !2298
  %149 = or i32 %145, %148, !dbg !2299
  store i32 %149, i32* %3, align 4, !dbg !2300
  br label %153, !dbg !2300

; <label>:150:                                    ; preds = %133, %119
  br label %14, !dbg !2301, !llvm.loop !2303

; <label>:151:                                    ; preds = %14
  %152 = load i32, i32* %11, align 4, !dbg !2304
  store i32 %152, i32* %3, align 4, !dbg !2305
  br label %153, !dbg !2305

; <label>:153:                                    ; preds = %151, %138, %101, %77
  %154 = load i32, i32* %3, align 4, !dbg !2306
  ret i32 %154, !dbg !2306
}

; Function Attrs: nounwind uwtable
define i32 @check_notify_script_secure(%struct._notify_script**, %struct.magic_set*) #0 !dbg !2307 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._notify_script**, align 8
  %5 = alloca %struct.magic_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._notify_script*, align 8
  store %struct._notify_script** %0, %struct._notify_script*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script*** %4, metadata !2311, metadata !537), !dbg !2312
  store %struct.magic_set* %1, %struct.magic_set** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.magic_set** %5, metadata !2313, metadata !537), !dbg !2314
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2315, metadata !537), !dbg !2316
  call void @llvm.dbg.declare(metadata %struct._notify_script** %7, metadata !2317, metadata !537), !dbg !2318
  %8 = load %struct._notify_script**, %struct._notify_script*** %4, align 8, !dbg !2319
  %9 = load %struct._notify_script*, %struct._notify_script** %8, align 8, !dbg !2320
  store %struct._notify_script* %9, %struct._notify_script** %7, align 8, !dbg !2318
  %10 = load %struct._notify_script*, %struct._notify_script** %7, align 8, !dbg !2321
  %11 = icmp ne %struct._notify_script* %10, null, !dbg !2321
  br i1 %11, label %13, label %12, !dbg !2323

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2324
  br label %28, !dbg !2324

; <label>:13:                                     ; preds = %2
  %14 = load %struct._notify_script*, %struct._notify_script** %7, align 8, !dbg !2325
  %15 = load %struct.magic_set*, %struct.magic_set** %5, align 8, !dbg !2326
  %16 = call i32 @check_script_secure(%struct._notify_script* %14, %struct.magic_set* %15), !dbg !2327
  store i32 %16, i32* %6, align 4, !dbg !2328
  %17 = load i32, i32* %6, align 4, !dbg !2329
  %18 = and i32 %17, 12, !dbg !2331
  %19 = icmp ne i32 %18, 0, !dbg !2331
  br i1 %19, label %24, label %20, !dbg !2332

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %6, align 4, !dbg !2333
  %22 = and i32 %21, 16, !dbg !2334
  %23 = icmp ne i32 %22, 0, !dbg !2334
  br i1 %23, label %26, label %24, !dbg !2335

; <label>:24:                                     ; preds = %20, %13
  %25 = load %struct._notify_script**, %struct._notify_script*** %4, align 8, !dbg !2337
  call void @free_notify_script(%struct._notify_script** %25), !dbg !2338
  br label %26, !dbg !2338

; <label>:26:                                     ; preds = %24, %20
  %27 = load i32, i32* %6, align 4, !dbg !2339
  store i32 %27, i32* %3, align 4, !dbg !2340
  br label %28, !dbg !2340

; <label>:28:                                     ; preds = %26, %12
  %29 = load i32, i32* %3, align 4, !dbg !2341
  ret i32 %29, !dbg !2341
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @free_notify_script(%struct._notify_script**) #7 !dbg !2342 {
  %2 = alloca %struct._notify_script**, align 8
  store %struct._notify_script** %0, %struct._notify_script*** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script*** %2, metadata !2345, metadata !537), !dbg !2346
  %3 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2347
  %4 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2349
  %5 = icmp ne %struct._notify_script* %4, null, !dbg !2349
  br i1 %5, label %7, label %6, !dbg !2350

; <label>:6:                                      ; preds = %1
  br label %33, !dbg !2351

; <label>:7:                                      ; preds = %1
  %8 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2352
  %9 = load %struct._notify_script*, %struct._notify_script** %8, align 8, !dbg !2355
  %10 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %9, i32 0, i32 0, !dbg !2356
  %11 = load i8**, i8*** %10, align 8, !dbg !2356
  %12 = icmp ne i8** %11, null, !dbg !2357
  br i1 %12, label %13, label %22, !dbg !2358

; <label>:13:                                     ; preds = %7
  %14 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2359
  %15 = load %struct._notify_script*, %struct._notify_script** %14, align 8, !dbg !2362
  %16 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %15, i32 0, i32 0, !dbg !2363
  %17 = load i8**, i8*** %16, align 8, !dbg !2363
  %18 = bitcast i8** %17 to i8*, !dbg !2364
  call void @free(i8* %18) #8, !dbg !2365
  %19 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2366
  %20 = load %struct._notify_script*, %struct._notify_script** %19, align 8, !dbg !2367
  %21 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %20, i32 0, i32 0, !dbg !2368
  store i8** null, i8*** %21, align 8, !dbg !2369
  br label %22, !dbg !2370

; <label>:22:                                     ; preds = %13, %7
  %23 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2371
  %24 = load %struct._notify_script*, %struct._notify_script** %23, align 8, !dbg !2374
  %25 = icmp ne %struct._notify_script* %24, null, !dbg !2374
  br i1 %25, label %26, label %31, !dbg !2375

; <label>:26:                                     ; preds = %22
  %27 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2376
  %28 = load %struct._notify_script*, %struct._notify_script** %27, align 8, !dbg !2379
  %29 = bitcast %struct._notify_script* %28 to i8*, !dbg !2379
  call void @free(i8* %29) #8, !dbg !2380
  %30 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2381
  store %struct._notify_script* null, %struct._notify_script** %30, align 8, !dbg !2382
  br label %31, !dbg !2383

; <label>:31:                                     ; preds = %26, %22
  %32 = load %struct._notify_script**, %struct._notify_script*** %2, align 8, !dbg !2384
  store %struct._notify_script* null, %struct._notify_script** %32, align 8, !dbg !2385
  br label %33, !dbg !2386

; <label>:33:                                     ; preds = %31, %6
  ret void, !dbg !2387
}

; Function Attrs: nounwind uwtable
define zeroext i1 @set_uid_gid(i8*, i8*, i32*, i32*, i1 zeroext) #0 !dbg !2389 {
  %6 = alloca i1, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.passwd, align 8
  %15 = alloca %struct.passwd*, align 8
  %16 = alloca %struct.group, align 8
  %17 = alloca %struct.group*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8*, align 8
  %21 = alloca i32
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2393, metadata !537), !dbg !2394
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2395, metadata !537), !dbg !2396
  store i32* %2, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !2397, metadata !537), !dbg !2398
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2399, metadata !537), !dbg !2400
  %22 = zext i1 %4 to i8
  store i8 %22, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2401, metadata !537), !dbg !2402
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2403, metadata !537), !dbg !2404
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2405, metadata !537), !dbg !2406
  call void @llvm.dbg.declare(metadata %struct.passwd* %14, metadata !2407, metadata !537), !dbg !2418
  call void @llvm.dbg.declare(metadata %struct.passwd** %15, metadata !2419, metadata !537), !dbg !2421
  call void @llvm.dbg.declare(metadata %struct.group* %16, metadata !2422, metadata !537), !dbg !2430
  call void @llvm.dbg.declare(metadata %struct.group** %17, metadata !2431, metadata !537), !dbg !2433
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2434, metadata !537), !dbg !2435
  call void @llvm.dbg.declare(metadata i8* %19, metadata !2436, metadata !537), !dbg !2437
  store i8 0, i8* %19, align 1, !dbg !2437
  %23 = load i64, i64* @getpwnam_buf_len, align 8, !dbg !2438
  %24 = icmp ne i64 %23, 0, !dbg !2438
  br i1 %24, label %26, label %25, !dbg !2440

; <label>:25:                                     ; preds = %5
  call void @set_pwnam_buf_len(), !dbg !2441
  br label %26, !dbg !2441

; <label>:26:                                     ; preds = %25, %5
  %27 = load i64, i64* @getpwnam_buf_len, align 8, !dbg !2442
  %28 = call i8* @llvm.stacksave(), !dbg !2444
  store i8* %28, i8** %20, align 8, !dbg !2444
  %29 = alloca i8, i64 %27, align 16, !dbg !2444
  call void @llvm.dbg.declare(metadata i8* %29, metadata !2445, metadata !1828), !dbg !2446
  %30 = load i8, i8* %11, align 1, !dbg !2447
  %31 = trunc i8 %30 to i1, !dbg !2447
  br i1 %31, label %32, label %36, !dbg !2449

; <label>:32:                                     ; preds = %26
  %33 = load i8*, i8** %7, align 8, !dbg !2450
  %34 = icmp ne i8* %33, null, !dbg !2450
  br i1 %34, label %36, label %35, !dbg !2452

; <label>:35:                                     ; preds = %32
  store i8 1, i8* %19, align 1, !dbg !2453
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8** %7, align 8, !dbg !2455
  br label %36, !dbg !2456

; <label>:36:                                     ; preds = %35, %32, %26
  %37 = load i8*, i8** %7, align 8, !dbg !2457
  %38 = call i32 @getpwnam_r(i8* %37, %struct.passwd* %14, i8* %29, i64 %27, %struct.passwd** %15), !dbg !2459
  store i32 %38, i32* %18, align 4, !dbg !2460
  %39 = icmp ne i32 %38, 0, !dbg !2460
  br i1 %39, label %40, label %45, !dbg !2461

; <label>:40:                                     ; preds = %36
  %41 = load i8, i8* %11, align 1, !dbg !2462
  %42 = trunc i8 %41 to i1, !dbg !2462
  %43 = select i1 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), !dbg !2462
  %44 = load i8*, i8** %7, align 8, !dbg !2464
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0), i8* %43, i8* %44), !dbg !2465
  store i1 true, i1* %6, align 1, !dbg !2466
  store i32 1, i32* %21, align 4
  br label %91, !dbg !2466

; <label>:45:                                     ; preds = %36
  %46 = load %struct.passwd*, %struct.passwd** %15, align 8, !dbg !2467
  %47 = icmp ne %struct.passwd* %46, null, !dbg !2467
  br i1 %47, label %59, label %48, !dbg !2469

; <label>:48:                                     ; preds = %45
  %49 = load i8, i8* %19, align 1, !dbg !2470
  %50 = trunc i8 %49 to i1, !dbg !2470
  br i1 %50, label %51, label %53, !dbg !2473

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %7, align 8, !dbg !2474
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i32 0, i32 0), i8* %52), !dbg !2475
  br label %58, !dbg !2475

; <label>:53:                                     ; preds = %48
  %54 = load i8, i8* %11, align 1, !dbg !2476
  %55 = trunc i8 %54 to i1, !dbg !2476
  %56 = select i1 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), !dbg !2476
  %57 = load i8*, i8** %7, align 8, !dbg !2477
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* %56, i8* %57), !dbg !2478
  br label %58

; <label>:58:                                     ; preds = %53, %51
  store i1 true, i1* %6, align 1, !dbg !2479
  store i32 1, i32* %21, align 4
  br label %91, !dbg !2479

; <label>:59:                                     ; preds = %45
  %60 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 2, !dbg !2480
  %61 = load i32, i32* %60, align 8, !dbg !2480
  store i32 %61, i32* %12, align 4, !dbg !2481
  %62 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 3, !dbg !2482
  %63 = load i32, i32* %62, align 4, !dbg !2482
  store i32 %63, i32* %13, align 4, !dbg !2483
  %64 = load i8*, i8** %8, align 8, !dbg !2484
  %65 = icmp ne i8* %64, null, !dbg !2484
  br i1 %65, label %66, label %86, !dbg !2486

; <label>:66:                                     ; preds = %59
  %67 = load i8*, i8** %8, align 8, !dbg !2487
  %68 = call i32 @getgrnam_r(i8* %67, %struct.group* %16, i8* %29, i64 %27, %struct.group** %17), !dbg !2490
  store i32 %68, i32* %18, align 4, !dbg !2491
  %69 = icmp ne i32 %68, 0, !dbg !2491
  br i1 %69, label %70, label %75, !dbg !2492

; <label>:70:                                     ; preds = %66
  %71 = load i8, i8* %11, align 1, !dbg !2493
  %72 = trunc i8 %71 to i1, !dbg !2493
  %73 = select i1 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), !dbg !2493
  %74 = load i8*, i8** %8, align 8, !dbg !2495
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i8* %73, i8* %74), !dbg !2496
  store i1 true, i1* %6, align 1, !dbg !2497
  store i32 1, i32* %21, align 4
  br label %91, !dbg !2497

; <label>:75:                                     ; preds = %66
  %76 = load %struct.group*, %struct.group** %17, align 8, !dbg !2498
  %77 = icmp ne %struct.group* %76, null, !dbg !2498
  br i1 %77, label %83, label %78, !dbg !2500

; <label>:78:                                     ; preds = %75
  %79 = load i8, i8* %11, align 1, !dbg !2501
  %80 = trunc i8 %79 to i1, !dbg !2501
  %81 = select i1 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), !dbg !2501
  %82 = load i8*, i8** %8, align 8, !dbg !2503
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i8* %81, i8* %82), !dbg !2504
  store i1 true, i1* %6, align 1, !dbg !2505
  store i32 1, i32* %21, align 4
  br label %91, !dbg !2505

; <label>:83:                                     ; preds = %75
  %84 = getelementptr inbounds %struct.group, %struct.group* %16, i32 0, i32 2, !dbg !2506
  %85 = load i32, i32* %84, align 8, !dbg !2506
  store i32 %85, i32* %13, align 4, !dbg !2507
  br label %86, !dbg !2508

; <label>:86:                                     ; preds = %83, %59
  %87 = load i32, i32* %12, align 4, !dbg !2509
  %88 = load i32*, i32** %9, align 8, !dbg !2510
  store i32 %87, i32* %88, align 4, !dbg !2511
  %89 = load i32, i32* %13, align 4, !dbg !2512
  %90 = load i32*, i32** %10, align 8, !dbg !2513
  store i32 %89, i32* %90, align 4, !dbg !2514
  store i32 0, i32* %21, align 4, !dbg !2515
  br label %91, !dbg !2515

; <label>:91:                                     ; preds = %86, %78, %70, %58, %40
  %92 = load i8*, i8** %20, align 8, !dbg !2516
  call void @llvm.stackrestore(i8* %92), !dbg !2516
  %93 = load i32, i32* %21, align 4
  switch i32 %93, label %97 [
    i32 0, label %94
    i32 1, label %95
  ]

; <label>:94:                                     ; preds = %91
  store i1 false, i1* %6, align 1, !dbg !2518
  br label %95, !dbg !2518

; <label>:95:                                     ; preds = %94, %91
  %96 = load i1, i1* %6, align 1, !dbg !2519
  ret i1 %96, !dbg !2519

; <label>:97:                                     ; preds = %91
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @set_pwnam_buf_len() #0 !dbg !2520 {
  %1 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %1, metadata !2523, metadata !537), !dbg !2524
  %2 = call i64 @sysconf(i32 70) #8, !dbg !2525
  store i64 %2, i64* %1, align 8, !dbg !2527
  %3 = icmp eq i64 %2, -1, !dbg !2528
  br i1 %3, label %4, label %5, !dbg !2529

; <label>:4:                                      ; preds = %0
  store i64 1024, i64* @getpwnam_buf_len, align 8, !dbg !2530
  br label %7, !dbg !2531

; <label>:5:                                      ; preds = %0
  %6 = load i64, i64* %1, align 8, !dbg !2532
  store i64 %6, i64* @getpwnam_buf_len, align 8, !dbg !2533
  br label %7

; <label>:7:                                      ; preds = %5, %4
  %8 = call i64 @sysconf(i32 69) #8, !dbg !2534
  store i64 %8, i64* %1, align 8, !dbg !2536
  %9 = icmp ne i64 %8, -1, !dbg !2537
  br i1 %9, label %10, label %16, !dbg !2538

; <label>:10:                                     ; preds = %7
  %11 = load i64, i64* %1, align 8, !dbg !2539
  %12 = load i64, i64* @getpwnam_buf_len, align 8, !dbg !2540
  %13 = icmp ugt i64 %11, %12, !dbg !2541
  br i1 %13, label %14, label %16, !dbg !2542

; <label>:14:                                     ; preds = %10
  %15 = load i64, i64* %1, align 8, !dbg !2544
  store i64 %15, i64* @getpwnam_buf_len, align 8, !dbg !2545
  br label %16, !dbg !2546

; <label>:16:                                     ; preds = %14, %10, %7
  ret void, !dbg !2547
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #8

declare i32 @getpwnam_r(i8*, %struct.passwd*, i8*, i64, %struct.passwd**) #4

declare i32 @getgrnam_r(i8*, %struct.group*, i8*, i64, %struct.group**) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #8

; Function Attrs: nounwind uwtable
define zeroext i1 @set_default_script_user(i8*, i8*) #0 !dbg !2548 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2551, metadata !537), !dbg !2552
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2553, metadata !537), !dbg !2554
  %5 = load i8, i8* @default_script_uid_set, align 1, !dbg !2555
  %6 = trunc i8 %5 to i1, !dbg !2555
  br i1 %6, label %7, label %10, !dbg !2557

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !2558
  %9 = icmp ne i8* %8, null, !dbg !2558
  br i1 %9, label %10, label %24, !dbg !2560

; <label>:10:                                     ; preds = %7, %2
  store i8 1, i8* @default_script_uid_set, align 1, !dbg !2561
  %11 = load i8*, i8** %3, align 8, !dbg !2563
  %12 = load i8*, i8** %4, align 8, !dbg !2565
  %13 = call zeroext i1 @set_uid_gid(i8* %11, i8* %12, i32* @default_script_uid, i32* @default_script_gid, i1 zeroext true), !dbg !2566
  br i1 %13, label %14, label %22, !dbg !2567

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %3, align 8, !dbg !2568
  %16 = icmp ne i8* %15, null, !dbg !2568
  br i1 %16, label %20, label %17, !dbg !2571

; <label>:17:                                     ; preds = %14
  %18 = load i8, i8* @script_security, align 1, !dbg !2572
  %19 = trunc i8 %18 to i1, !dbg !2572
  br i1 %19, label %20, label %21, !dbg !2574

; <label>:20:                                     ; preds = %17, %14
  store i8 1, i8* @default_user_fail, align 1, !dbg !2575
  br label %21, !dbg !2576

; <label>:21:                                     ; preds = %20, %17
  br label %23, !dbg !2577

; <label>:22:                                     ; preds = %10
  store i8 0, i8* @default_user_fail, align 1, !dbg !2578
  br label %23

; <label>:23:                                     ; preds = %22, %21
  br label %24, !dbg !2579

; <label>:24:                                     ; preds = %23, %7
  %25 = load i8, i8* @default_user_fail, align 1, !dbg !2580
  %26 = trunc i8 %25 to i1, !dbg !2580
  ret i1 %26, !dbg !2581
}

; Function Attrs: nounwind uwtable
define zeroext i1 @set_script_uid_gid(%struct._vector*, i32, i32*, i32*) #0 !dbg !2582 {
  %5 = alloca %struct._vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %5, metadata !2594, metadata !537), !dbg !2595
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2596, metadata !537), !dbg !2597
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2598, metadata !537), !dbg !2599
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2600, metadata !537), !dbg !2601
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2602, metadata !537), !dbg !2603
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2604, metadata !537), !dbg !2605
  %11 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2606
  %12 = load i32, i32* %6, align 4, !dbg !2607
  %13 = zext i32 %12 to i64, !dbg !2607
  %14 = call i8* @strvec_slot(%struct._vector* %11, i64 %13), !dbg !2608
  store i8* %14, i8** %9, align 8, !dbg !2609
  %15 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2610
  %16 = getelementptr inbounds %struct._vector, %struct._vector* %15, i32 0, i32 1, !dbg !2612
  %17 = load i32, i32* %16, align 4, !dbg !2612
  %18 = load i32, i32* %6, align 4, !dbg !2613
  %19 = add i32 %18, 1, !dbg !2614
  %20 = icmp ugt i32 %17, %19, !dbg !2615
  br i1 %20, label %21, label %27, !dbg !2616

; <label>:21:                                     ; preds = %4
  %22 = load %struct._vector*, %struct._vector** %5, align 8, !dbg !2617
  %23 = load i32, i32* %6, align 4, !dbg !2618
  %24 = add i32 %23, 1, !dbg !2619
  %25 = zext i32 %24 to i64, !dbg !2618
  %26 = call i8* @strvec_slot(%struct._vector* %22, i64 %25), !dbg !2620
  store i8* %26, i8** %10, align 8, !dbg !2621
  br label %28, !dbg !2622

; <label>:27:                                     ; preds = %4
  store i8* null, i8** %10, align 8, !dbg !2623
  br label %28

; <label>:28:                                     ; preds = %27, %21
  %29 = load i8*, i8** %9, align 8, !dbg !2624
  %30 = load i8*, i8** %10, align 8, !dbg !2625
  %31 = load i32*, i32** %7, align 8, !dbg !2626
  %32 = load i32*, i32** %8, align 8, !dbg !2627
  %33 = call zeroext i1 @set_uid_gid(i8* %29, i8* %30, i32* %31, i32* %32, i1 zeroext false), !dbg !2628
  ret i1 %33, !dbg !2629
}

declare i8* @strvec_slot(%struct._vector*, i64) #4

; Function Attrs: nounwind uwtable
define void @set_script_params_array(%struct._vector*, %struct._notify_script*, i32) #0 !dbg !2630 {
  %4 = alloca %struct._vector*, align 8
  %5 = alloca %struct._notify_script*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._vector*, align 8
  %12 = alloca i32, align 4
  store %struct._vector* %0, %struct._vector** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %4, metadata !2633, metadata !537), !dbg !2634
  store %struct._notify_script* %1, %struct._notify_script** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %5, metadata !2635, metadata !537), !dbg !2636
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2637, metadata !537), !dbg !2638
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2639, metadata !537), !dbg !2640
  store i32 0, i32* %7, align 4, !dbg !2640
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2641, metadata !537), !dbg !2642
  store i64 0, i64* %8, align 8, !dbg !2642
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !2643, metadata !537), !dbg !2644
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2645, metadata !537), !dbg !2646
  call void @llvm.dbg.declare(metadata %struct._vector** %11, metadata !2647, metadata !537), !dbg !2648
  store %struct._vector* null, %struct._vector** %11, align 8, !dbg !2648
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2649, metadata !537), !dbg !2650
  %13 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2651
  %14 = getelementptr inbounds %struct._vector, %struct._vector* %13, i32 0, i32 1, !dbg !2653
  %15 = load i32, i32* %14, align 4, !dbg !2653
  %16 = icmp uge i32 %15, 2, !dbg !2654
  br i1 %16, label %17, label %21, !dbg !2655

; <label>:17:                                     ; preds = %3
  %18 = load %struct._vector*, %struct._vector** %4, align 8, !dbg !2656
  %19 = call i8* @strvec_slot(%struct._vector* %18, i64 1), !dbg !2657
  %20 = call %struct._vector* @alloc_strvec_quoted_escaped(i8* %19), !dbg !2658
  store %struct._vector* %20, %struct._vector** %11, align 8, !dbg !2660
  br label %21, !dbg !2661

; <label>:21:                                     ; preds = %17, %3
  %22 = load %struct._vector*, %struct._vector** %11, align 8, !dbg !2662
  %23 = icmp ne %struct._vector* %22, null, !dbg !2662
  br i1 %23, label %25, label %24, !dbg !2664

; <label>:24:                                     ; preds = %21
  br label %95, !dbg !2665

; <label>:25:                                     ; preds = %21
  %26 = load %struct._vector*, %struct._vector** %11, align 8, !dbg !2666
  %27 = getelementptr inbounds %struct._vector, %struct._vector* %26, i32 0, i32 1, !dbg !2667
  %28 = load i32, i32* %27, align 4, !dbg !2667
  store i32 %28, i32* %7, align 4, !dbg !2668
  store i32 0, i32* %12, align 4, !dbg !2669
  br label %29, !dbg !2671

; <label>:29:                                     ; preds = %42, %25
  %30 = load i32, i32* %12, align 4, !dbg !2672
  %31 = load i32, i32* %7, align 4, !dbg !2675
  %32 = icmp ult i32 %30, %31, !dbg !2676
  br i1 %32, label %33, label %45, !dbg !2677

; <label>:33:                                     ; preds = %29
  %34 = load %struct._vector*, %struct._vector** %11, align 8, !dbg !2678
  %35 = load i32, i32* %12, align 4, !dbg !2679
  %36 = zext i32 %35 to i64, !dbg !2679
  %37 = call i8* @strvec_slot(%struct._vector* %34, i64 %36), !dbg !2680
  %38 = call i64 @strlen(i8* %37) #11, !dbg !2681
  %39 = add i64 %38, 1, !dbg !2682
  %40 = load i64, i64* %8, align 8, !dbg !2683
  %41 = add i64 %40, %39, !dbg !2683
  store i64 %41, i64* %8, align 8, !dbg !2683
  br label %42, !dbg !2684

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %12, align 4, !dbg !2685
  %44 = add i32 %43, 1, !dbg !2685
  store i32 %44, i32* %12, align 4, !dbg !2685
  br label %29, !dbg !2687, !llvm.loop !2688

; <label>:45:                                     ; preds = %29
  %46 = load i32, i32* %7, align 4, !dbg !2690
  %47 = load i32, i32* %6, align 4, !dbg !2691
  %48 = add i32 %46, %47, !dbg !2692
  %49 = add i32 %48, 1, !dbg !2693
  %50 = zext i32 %49 to i64, !dbg !2694
  %51 = mul i64 %50, 8, !dbg !2695
  %52 = load i64, i64* %8, align 8, !dbg !2696
  %53 = add i64 %51, %52, !dbg !2697
  %54 = call i8* @zalloc(i64 %53), !dbg !2698
  %55 = bitcast i8* %54 to i8**, !dbg !2699
  store i8** %55, i8*** %9, align 8, !dbg !2700
  %56 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !2701
  %57 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %56, i32 0, i32 0, !dbg !2702
  store i8** %55, i8*** %57, align 8, !dbg !2703
  %58 = load i8**, i8*** %9, align 8, !dbg !2704
  %59 = bitcast i8** %58 to i8*, !dbg !2705
  %60 = load i32, i32* %7, align 4, !dbg !2706
  %61 = load i32, i32* %6, align 4, !dbg !2707
  %62 = add i32 %60, %61, !dbg !2708
  %63 = add i32 %62, 1, !dbg !2709
  %64 = zext i32 %63 to i64, !dbg !2710
  %65 = mul i64 %64, 8, !dbg !2711
  %66 = getelementptr inbounds i8, i8* %59, i64 %65, !dbg !2712
  store i8* %66, i8** %10, align 8, !dbg !2713
  store i32 0, i32* %12, align 4, !dbg !2714
  br label %67, !dbg !2716

; <label>:67:                                     ; preds = %86, %45
  %68 = load i32, i32* %12, align 4, !dbg !2717
  %69 = load i32, i32* %7, align 4, !dbg !2720
  %70 = icmp ult i32 %68, %69, !dbg !2721
  br i1 %70, label %71, label %89, !dbg !2722

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %10, align 8, !dbg !2723
  %73 = load %struct._vector*, %struct._vector** %11, align 8, !dbg !2725
  %74 = load i32, i32* %12, align 4, !dbg !2726
  %75 = zext i32 %74 to i64, !dbg !2726
  %76 = call i8* @strvec_slot(%struct._vector* %73, i64 %75), !dbg !2727
  %77 = call i8* @strcpy(i8* %72, i8* %76) #8, !dbg !2728
  %78 = load i8*, i8** %10, align 8, !dbg !2730
  %79 = load i8**, i8*** %9, align 8, !dbg !2731
  %80 = getelementptr inbounds i8*, i8** %79, i32 1, !dbg !2731
  store i8** %80, i8*** %9, align 8, !dbg !2731
  store i8* %78, i8** %79, align 8, !dbg !2732
  %81 = load i8*, i8** %10, align 8, !dbg !2733
  %82 = call i64 @strlen(i8* %81) #11, !dbg !2734
  %83 = add i64 %82, 1, !dbg !2735
  %84 = load i8*, i8** %10, align 8, !dbg !2736
  %85 = getelementptr inbounds i8, i8* %84, i64 %83, !dbg !2736
  store i8* %85, i8** %10, align 8, !dbg !2736
  br label %86, !dbg !2737

; <label>:86:                                     ; preds = %71
  %87 = load i32, i32* %12, align 4, !dbg !2738
  %88 = add i32 %87, 1, !dbg !2738
  store i32 %88, i32* %12, align 4, !dbg !2738
  br label %67, !dbg !2740, !llvm.loop !2741

; <label>:89:                                     ; preds = %67
  %90 = load i8**, i8*** %9, align 8, !dbg !2743
  store i8* null, i8** %90, align 8, !dbg !2744
  %91 = load i32, i32* %7, align 4, !dbg !2745
  %92 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !2746
  %93 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %92, i32 0, i32 1, !dbg !2747
  store i32 %91, i32* %93, align 8, !dbg !2748
  %94 = load %struct._vector*, %struct._vector** %11, align 8, !dbg !2749
  call void @free_strvec(%struct._vector* %94), !dbg !2750
  br label %95, !dbg !2751

; <label>:95:                                     ; preds = %89, %24
  ret void, !dbg !2752
}

declare %struct._vector* @alloc_strvec_quoted_escaped(i8*) #4

declare void @free_strvec(%struct._vector*) #4

; Function Attrs: nounwind uwtable
define %struct._notify_script* @notify_script_init(i32, i8*) #0 !dbg !2754 {
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._notify_script*, align 8
  %7 = alloca %struct._vector*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2757, metadata !537), !dbg !2758
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2759, metadata !537), !dbg !2760
  call void @llvm.dbg.declare(metadata %struct._notify_script** %6, metadata !2761, metadata !537), !dbg !2762
  %8 = call i8* @zalloc(i64 24), !dbg !2763
  %9 = bitcast i8* %8 to %struct._notify_script*, !dbg !2764
  store %struct._notify_script* %9, %struct._notify_script** %6, align 8, !dbg !2762
  call void @llvm.dbg.declare(metadata %struct._vector** %7, metadata !2765, metadata !537), !dbg !2766
  %10 = call %struct._vector* @alloc_strvec_quoted_escaped(i8* null), !dbg !2767
  store %struct._vector* %10, %struct._vector** %7, align 8, !dbg !2768
  %11 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2769
  %12 = icmp ne %struct._vector* %11, null, !dbg !2769
  br i1 %12, label %16, label %13, !dbg !2771

; <label>:13:                                     ; preds = %2
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0)), !dbg !2772
  %14 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2774
  %15 = bitcast %struct._notify_script* %14 to i8*, !dbg !2774
  call void @free(i8* %15) #8, !dbg !2775
  store %struct._notify_script* null, %struct._notify_script** %6, align 8, !dbg !2776
  store %struct._notify_script* null, %struct._notify_script** %3, align 8, !dbg !2777
  br label %89, !dbg !2777

; <label>:16:                                     ; preds = %2
  %17 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2778
  %18 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2779
  %19 = load i32, i32* %4, align 4, !dbg !2780
  call void @set_script_params_array(%struct._vector* %17, %struct._notify_script* %18, i32 %19), !dbg !2781
  %20 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2782
  %21 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %20, i32 0, i32 0, !dbg !2784
  %22 = load i8**, i8*** %21, align 8, !dbg !2784
  %23 = icmp ne i8** %22, null, !dbg !2782
  br i1 %23, label %30, label %24, !dbg !2785

; <label>:24:                                     ; preds = %16
  %25 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2786
  %26 = call i8* @strvec_slot(%struct._vector* %25, i64 1), !dbg !2788
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), i8* %26), !dbg !2789
  %27 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2791
  %28 = bitcast %struct._notify_script* %27 to i8*, !dbg !2791
  call void @free(i8* %28) #8, !dbg !2792
  store %struct._notify_script* null, %struct._notify_script** %6, align 8, !dbg !2793
  %29 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2794
  call void @free_strvec(%struct._vector* %29), !dbg !2795
  store %struct._notify_script* null, %struct._notify_script** %3, align 8, !dbg !2796
  br label %89, !dbg !2796

; <label>:30:                                     ; preds = %16
  %31 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2797
  %32 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %31, i32 0, i32 2, !dbg !2798
  store i32 0, i32* %32, align 4, !dbg !2799
  %33 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2800
  %34 = getelementptr inbounds %struct._vector, %struct._vector* %33, i32 0, i32 1, !dbg !2802
  %35 = load i32, i32* %34, align 4, !dbg !2802
  %36 = icmp ugt i32 %35, 2, !dbg !2803
  br i1 %36, label %37, label %61, !dbg !2804

; <label>:37:                                     ; preds = %30
  %38 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2805
  %39 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2808
  %40 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %39, i32 0, i32 3, !dbg !2809
  %41 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2810
  %42 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %41, i32 0, i32 4, !dbg !2811
  %43 = call zeroext i1 @set_script_uid_gid(%struct._vector* %38, i32 2, i32* %40, i32* %42), !dbg !2812
  br i1 %43, label %44, label %60, !dbg !2813

; <label>:44:                                     ; preds = %37
  %45 = load i8*, i8** %5, align 8, !dbg !2814
  %46 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2816
  %47 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %46, i32 0, i32 0, !dbg !2817
  %48 = load i8**, i8*** %47, align 8, !dbg !2817
  %49 = getelementptr inbounds i8*, i8** %48, i64 0, !dbg !2816
  %50 = load i8*, i8** %49, align 8, !dbg !2816
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i32 0, i32 0), i8* %45, i8* %50), !dbg !2818
  %51 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2819
  %52 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %51, i32 0, i32 0, !dbg !2820
  %53 = load i8**, i8*** %52, align 8, !dbg !2820
  %54 = bitcast i8** %53 to i8*, !dbg !2819
  call void @free(i8* %54) #8, !dbg !2821
  %55 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2822
  %56 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %55, i32 0, i32 0, !dbg !2823
  store i8** null, i8*** %56, align 8, !dbg !2824
  %57 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2825
  %58 = bitcast %struct._notify_script* %57 to i8*, !dbg !2825
  call void @free(i8* %58) #8, !dbg !2826
  store %struct._notify_script* null, %struct._notify_script** %6, align 8, !dbg !2827
  %59 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2828
  call void @free_strvec(%struct._vector* %59), !dbg !2829
  store %struct._notify_script* null, %struct._notify_script** %3, align 8, !dbg !2830
  br label %89, !dbg !2830

; <label>:60:                                     ; preds = %37
  br label %86, !dbg !2831

; <label>:61:                                     ; preds = %30
  %62 = call zeroext i1 @set_default_script_user(i8* null, i8* null), !dbg !2832
  br i1 %62, label %63, label %79, !dbg !2835

; <label>:63:                                     ; preds = %61
  %64 = load i8*, i8** %5, align 8, !dbg !2836
  %65 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2838
  %66 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %65, i32 0, i32 0, !dbg !2839
  %67 = load i8**, i8*** %66, align 8, !dbg !2839
  %68 = getelementptr inbounds i8*, i8** %67, i64 0, !dbg !2838
  %69 = load i8*, i8** %68, align 8, !dbg !2838
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i32 0, i32 0), i8* %64, i8* %69), !dbg !2840
  %70 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2841
  %71 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %70, i32 0, i32 0, !dbg !2842
  %72 = load i8**, i8*** %71, align 8, !dbg !2842
  %73 = bitcast i8** %72 to i8*, !dbg !2841
  call void @free(i8* %73) #8, !dbg !2843
  %74 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2844
  %75 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %74, i32 0, i32 0, !dbg !2845
  store i8** null, i8*** %75, align 8, !dbg !2846
  %76 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2847
  %77 = bitcast %struct._notify_script* %76 to i8*, !dbg !2847
  call void @free(i8* %77) #8, !dbg !2848
  store %struct._notify_script* null, %struct._notify_script** %6, align 8, !dbg !2849
  %78 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2850
  call void @free_strvec(%struct._vector* %78), !dbg !2851
  store %struct._notify_script* null, %struct._notify_script** %3, align 8, !dbg !2852
  br label %89, !dbg !2852

; <label>:79:                                     ; preds = %61
  %80 = load i32, i32* @default_script_uid, align 4, !dbg !2853
  %81 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2854
  %82 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %81, i32 0, i32 3, !dbg !2855
  store i32 %80, i32* %82, align 8, !dbg !2856
  %83 = load i32, i32* @default_script_gid, align 4, !dbg !2857
  %84 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2858
  %85 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %84, i32 0, i32 4, !dbg !2859
  store i32 %83, i32* %85, align 4, !dbg !2860
  br label %86

; <label>:86:                                     ; preds = %79, %60
  %87 = load %struct._vector*, %struct._vector** %7, align 8, !dbg !2861
  call void @free_strvec(%struct._vector* %87), !dbg !2862
  %88 = load %struct._notify_script*, %struct._notify_script** %6, align 8, !dbg !2863
  store %struct._notify_script* %88, %struct._notify_script** %3, align 8, !dbg !2864
  br label %89, !dbg !2864

; <label>:89:                                     ; preds = %86, %63, %44, %24, %13
  %90 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2865
  ret %struct._notify_script* %90, !dbg !2865
}

; Function Attrs: nounwind uwtable
define void @add_script_param(%struct._notify_script*, i8*) #0 !dbg !2866 {
  %3 = alloca %struct._notify_script*, align 8
  %4 = alloca i8*, align 8
  store %struct._notify_script* %0, %struct._notify_script** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %3, metadata !2867, metadata !537), !dbg !2868
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2869, metadata !537), !dbg !2870
  %5 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2871
  %6 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %5, i32 0, i32 1, !dbg !2873
  %7 = load i32, i32* %6, align 8, !dbg !2873
  %8 = add nsw i32 %7, 1, !dbg !2874
  %9 = sext i32 %8 to i64, !dbg !2875
  %10 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2875
  %11 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %10, i32 0, i32 0, !dbg !2876
  %12 = load i8**, i8*** %11, align 8, !dbg !2876
  %13 = getelementptr inbounds i8*, i8** %12, i64 %9, !dbg !2875
  %14 = load i8*, i8** %13, align 8, !dbg !2875
  %15 = icmp ne i8* %14, null, !dbg !2875
  br i1 %15, label %16, label %23, !dbg !2877

; <label>:16:                                     ; preds = %2
  %17 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2878
  %18 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %17, i32 0, i32 0, !dbg !2880
  %19 = load i8**, i8*** %18, align 8, !dbg !2880
  %20 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !2878
  %21 = load i8*, i8** %20, align 8, !dbg !2878
  %22 = load i8*, i8** %4, align 8, !dbg !2881
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i32 0, i32 0), i8* %21, i8* %22), !dbg !2882
  br label %34, !dbg !2883

; <label>:23:                                     ; preds = %2
  %24 = load i8*, i8** %4, align 8, !dbg !2884
  %25 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2885
  %26 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %25, i32 0, i32 1, !dbg !2886
  %27 = load i32, i32* %26, align 8, !dbg !2887
  %28 = add nsw i32 %27, 1, !dbg !2887
  store i32 %28, i32* %26, align 8, !dbg !2887
  %29 = sext i32 %27 to i64, !dbg !2888
  %30 = load %struct._notify_script*, %struct._notify_script** %3, align 8, !dbg !2888
  %31 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %30, i32 0, i32 0, !dbg !2889
  %32 = load i8**, i8*** %31, align 8, !dbg !2889
  %33 = getelementptr inbounds i8*, i8** %32, i64 %29, !dbg !2888
  store i8* %24, i8** %33, align 8, !dbg !2890
  br label %34, !dbg !2891

; <label>:34:                                     ; preds = %23, %16
  ret void, !dbg !2892
}

; Function Attrs: nounwind uwtable
define void @notify_resource_release() #0 !dbg !2894 {
  %1 = load i8, i8* @path_is_malloced, align 1, !dbg !2895
  %2 = trunc i8 %1 to i1, !dbg !2895
  br i1 %2, label %3, label %5, !dbg !2897

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @path, align 8, !dbg !2898
  call void @free(i8* %4) #8, !dbg !2900
  store i8* null, i8** @path, align 8, !dbg !2901
  store i8 0, i8* @path_is_malloced, align 1, !dbg !2902
  store i8* null, i8** @path, align 8, !dbg !2903
  br label %5, !dbg !2904

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !2905
}

; Function Attrs: nounwind uwtable
define zeroext i1 @notify_script_compare(%struct._notify_script*, %struct._notify_script*) #0 !dbg !2906 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._notify_script*, align 8
  %5 = alloca %struct._notify_script*, align 8
  %6 = alloca i32, align 4
  store %struct._notify_script* %0, %struct._notify_script** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %4, metadata !2909, metadata !537), !dbg !2910
  store %struct._notify_script* %1, %struct._notify_script** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %5, metadata !2911, metadata !537), !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2913, metadata !537), !dbg !2914
  %7 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !2915
  %8 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %7, i32 0, i32 1, !dbg !2917
  %9 = load i32, i32* %8, align 8, !dbg !2917
  %10 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !2918
  %11 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %10, i32 0, i32 1, !dbg !2919
  %12 = load i32, i32* %11, align 8, !dbg !2919
  %13 = icmp ne i32 %9, %12, !dbg !2920
  br i1 %13, label %14, label %15, !dbg !2921

; <label>:14:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !2922
  br label %45, !dbg !2922

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %6, align 4, !dbg !2923
  br label %16, !dbg !2925

; <label>:16:                                     ; preds = %41, %15
  %17 = load i32, i32* %6, align 4, !dbg !2926
  %18 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !2929
  %19 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %18, i32 0, i32 1, !dbg !2930
  %20 = load i32, i32* %19, align 8, !dbg !2930
  %21 = icmp slt i32 %17, %20, !dbg !2931
  br i1 %21, label %22, label %44, !dbg !2932

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %6, align 4, !dbg !2933
  %24 = sext i32 %23 to i64, !dbg !2936
  %25 = load %struct._notify_script*, %struct._notify_script** %4, align 8, !dbg !2936
  %26 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %25, i32 0, i32 0, !dbg !2937
  %27 = load i8**, i8*** %26, align 8, !dbg !2937
  %28 = getelementptr inbounds i8*, i8** %27, i64 %24, !dbg !2936
  %29 = load i8*, i8** %28, align 8, !dbg !2936
  %30 = load i32, i32* %6, align 4, !dbg !2938
  %31 = sext i32 %30 to i64, !dbg !2939
  %32 = load %struct._notify_script*, %struct._notify_script** %5, align 8, !dbg !2939
  %33 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %32, i32 0, i32 0, !dbg !2940
  %34 = load i8**, i8*** %33, align 8, !dbg !2940
  %35 = getelementptr inbounds i8*, i8** %34, i64 %31, !dbg !2939
  %36 = load i8*, i8** %35, align 8, !dbg !2939
  %37 = call i32 @strcmp(i8* %29, i8* %36) #11, !dbg !2941
  %38 = icmp ne i32 %37, 0, !dbg !2941
  br i1 %38, label %39, label %40, !dbg !2942

; <label>:39:                                     ; preds = %22
  store i1 false, i1* %3, align 1, !dbg !2943
  br label %45, !dbg !2943

; <label>:40:                                     ; preds = %22
  br label %41, !dbg !2944

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %6, align 4, !dbg !2945
  %43 = add nsw i32 %42, 1, !dbg !2945
  store i32 %43, i32* %6, align 4, !dbg !2945
  br label %16, !dbg !2947, !llvm.loop !2948

; <label>:44:                                     ; preds = %16
  store i1 true, i1* %3, align 1, !dbg !2950
  br label %45, !dbg !2950

; <label>:45:                                     ; preds = %44, %39, %14
  %46 = load i1, i1* %3, align 1, !dbg !2951
  ret i1 %46, !dbg !2951
}

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @notify_fifo_exec(%struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct._notify_script*) #0 !dbg !2952 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._thread_master*, align 8
  %7 = alloca i32 (%struct._thread*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._notify_script*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %6, metadata !2955, metadata !537), !dbg !2956
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %7, metadata !2957, metadata !537), !dbg !2958
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2959, metadata !537), !dbg !2960
  store %struct._notify_script* %3, %struct._notify_script** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._notify_script** %9, metadata !2961, metadata !537), !dbg !2962
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2963, metadata !537), !dbg !2964
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2965, metadata !537), !dbg !2966
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2967, metadata !537), !dbg !2968
  %13 = call i32 @local_fork(), !dbg !2969
  store i32 %13, i32* %10, align 4, !dbg !2970
  %14 = load i32, i32* %10, align 4, !dbg !2971
  %15 = icmp slt i32 %14, 0, !dbg !2973
  br i1 %15, label %16, label %17, !dbg !2974

; <label>:16:                                     ; preds = %4
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)), !dbg !2975
  store i32 -1, i32* %5, align 4, !dbg !2977
  br label %86, !dbg !2977

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %10, align 4, !dbg !2978
  %19 = icmp ne i32 %18, 0, !dbg !2978
  br i1 %19, label %20, label %26, !dbg !2980

; <label>:20:                                     ; preds = %17
  %21 = load %struct._thread_master*, %struct._thread_master** %6, align 8, !dbg !2981
  %22 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %7, align 8, !dbg !2983
  %23 = load i8*, i8** %8, align 8, !dbg !2984
  %24 = load i32, i32* %10, align 4, !dbg !2985
  %25 = call %struct._thread* @thread_add_child(%struct._thread_master* %21, i32 (%struct._thread*)* %22, i8* %23, i32 %24, i64 -1), !dbg !2986
  store i32 0, i32* %5, align 4, !dbg !2987
  br label %86, !dbg !2987

; <label>:26:                                     ; preds = %17
  %27 = call i32 @setpgid(i32 0, i32 0) #8, !dbg !2988
  %28 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !2989
  %29 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %28, i32 0, i32 3, !dbg !2990
  %30 = load i32, i32* %29, align 8, !dbg !2990
  %31 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !2991
  %32 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %31, i32 0, i32 4, !dbg !2992
  %33 = load i32, i32* %32, align 4, !dbg !2992
  %34 = call zeroext i1 @set_privileges(i32 %30, i32 %33), !dbg !2993
  %35 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !2994
  %36 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %35, i32 0, i32 2, !dbg !2996
  %37 = load i32, i32* %36, align 4, !dbg !2996
  %38 = or i32 %37, 32, !dbg !2997
  %39 = icmp ne i32 %38, 0, !dbg !2997
  br i1 %39, label %40, label %70, !dbg !2998

; <label>:40:                                     ; preds = %26
  %41 = call i32 (i32, ...) @prctl(i32 1, i32 15) #8, !dbg !2999
  %42 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !3001
  %43 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %42, i32 0, i32 0, !dbg !3002
  %44 = load i8**, i8*** %43, align 8, !dbg !3002
  %45 = getelementptr inbounds i8*, i8** %44, i64 0, !dbg !3001
  %46 = load i8*, i8** %45, align 8, !dbg !3001
  %47 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !3003
  %48 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %47, i32 0, i32 0, !dbg !3004
  %49 = load i8**, i8*** %48, align 8, !dbg !3004
  %50 = load i8**, i8*** @environ, align 8, !dbg !3005
  %51 = call i32 @execve(i8* %46, i8** %49, i8** %50) #8, !dbg !3006
  %52 = call i32* @__errno_location() #1, !dbg !3007
  %53 = load i32, i32* %52, align 4, !dbg !3009
  %54 = icmp eq i32 %53, 13, !dbg !3010
  br i1 %54, label %55, label %61, !dbg !3011

; <label>:55:                                     ; preds = %40
  %56 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !3012
  %57 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %56, i32 0, i32 0, !dbg !3013
  %58 = load i8**, i8*** %57, align 8, !dbg !3013
  %59 = getelementptr inbounds i8*, i8** %58, i64 0, !dbg !3012
  %60 = load i8*, i8** %59, align 8, !dbg !3012
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0), i8* %60), !dbg !3014
  br label %69, !dbg !3014

; <label>:61:                                     ; preds = %40
  %62 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !3015
  %63 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %62, i32 0, i32 0, !dbg !3016
  %64 = load i8**, i8*** %63, align 8, !dbg !3016
  %65 = getelementptr inbounds i8*, i8** %64, i64 0, !dbg !3015
  %66 = load i8*, i8** %65, align 8, !dbg !3015
  %67 = call i32* @__errno_location() #1, !dbg !3017
  %68 = load i32, i32* %67, align 4, !dbg !3018
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i32 0, i32 0), i8* %66, i32 %68), !dbg !3019
  br label %69

; <label>:69:                                     ; preds = %61, %55
  br label %85, !dbg !3021

; <label>:70:                                     ; preds = %26
  %71 = load %struct._notify_script*, %struct._notify_script** %9, align 8, !dbg !3022
  %72 = call i8* @cmd_str(%struct._notify_script* %71), !dbg !3024
  store i8* %72, i8** %12, align 8, !dbg !3025
  %73 = call i32 @system(i8* %72), !dbg !3026
  store i32 %73, i32* %11, align 4, !dbg !3028
  %74 = load i32, i32* %11, align 4, !dbg !3029
  %75 = icmp eq i32 %74, 127, !dbg !3031
  br i1 %75, label %76, label %78, !dbg !3032

; <label>:76:                                     ; preds = %70
  %77 = load i8*, i8** %12, align 8, !dbg !3033
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), i8* %77), !dbg !3035
  br label %84, !dbg !3036

; <label>:78:                                     ; preds = %70
  %79 = load i32, i32* %11, align 4, !dbg !3037
  %80 = icmp eq i32 %79, -1, !dbg !3039
  br i1 %80, label %81, label %83, !dbg !3040

; <label>:81:                                     ; preds = %78
  %82 = load i8*, i8** %12, align 8, !dbg !3041
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), i8* %82), !dbg !3042
  br label %83, !dbg !3042

; <label>:83:                                     ; preds = %81, %78
  br label %84

; <label>:84:                                     ; preds = %83, %76
  call void @exit(i32 0) #13, !dbg !3043
  unreachable, !dbg !3043

; <label>:85:                                     ; preds = %69
  call void @exit(i32 0) #13, !dbg !3044
  unreachable, !dbg !3044

; <label>:86:                                     ; preds = %20, %16
  %87 = load i32, i32* %5, align 4, !dbg !3045
  ret i32 %87, !dbg !3045
}

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind
declare i32 @setpgid(i32, i32) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @set_privileges(i32, i32) #0 !dbg !3046 {
  %3 = alloca i1, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3049, metadata !537), !dbg !3050
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3051, metadata !537), !dbg !3052
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3053, metadata !537), !dbg !3054
  %7 = call i32 (i32, ...) @prctl(i32 1, i32 15) #8, !dbg !3055
  %8 = load i32, i32* @cur_prio, align 4, !dbg !3056
  %9 = icmp ne i32 %8, 2147483647, !dbg !3058
  br i1 %9, label %10, label %12, !dbg !3059

; <label>:10:                                     ; preds = %2
  %11 = call i32 @getpriority(i32 0, i32 0) #8, !dbg !3060
  store i32 %11, i32* @cur_prio, align 4, !dbg !3061
  br label %12, !dbg !3062

; <label>:12:                                     ; preds = %10, %2
  %13 = load i32, i32* @cur_prio, align 4, !dbg !3063
  %14 = icmp slt i32 %13, 0, !dbg !3065
  br i1 %14, label %15, label %17, !dbg !3066

; <label>:15:                                     ; preds = %12
  %16 = call i32 @setpriority(i32 0, i32 0, i32 0) #8, !dbg !3067
  br label %17, !dbg !3067

; <label>:17:                                     ; preds = %15, %12
  %18 = load i32, i32* %5, align 4, !dbg !3068
  %19 = icmp ne i32 %18, 0, !dbg !3068
  br i1 %19, label %20, label %34, !dbg !3070

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %5, align 4, !dbg !3071
  %22 = call i32 @setgid(i32 %21) #8, !dbg !3073
  store i32 %22, i32* %6, align 4, !dbg !3074
  %23 = load i32, i32* %6, align 4, !dbg !3075
  %24 = icmp slt i32 %23, 0, !dbg !3077
  br i1 %24, label %25, label %27, !dbg !3078

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %5, align 4, !dbg !3079
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i32 0, i32 0), i32 %26), !dbg !3081
  store i1 true, i1* %3, align 1, !dbg !3082
  br label %46, !dbg !3082

; <label>:27:                                     ; preds = %20
  %28 = call i32 @setgroups(i64 1, i32* %5) #8, !dbg !3083
  store i32 %28, i32* %6, align 4, !dbg !3084
  %29 = load i32, i32* %6, align 4, !dbg !3085
  %30 = icmp slt i32 %29, 0, !dbg !3087
  br i1 %30, label %31, label %33, !dbg !3088

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %5, align 4, !dbg !3089
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0), i32 %32), !dbg !3091
  store i1 true, i1* %3, align 1, !dbg !3092
  br label %46, !dbg !3092

; <label>:33:                                     ; preds = %27
  br label %34, !dbg !3093

; <label>:34:                                     ; preds = %33, %17
  %35 = load i32, i32* %4, align 4, !dbg !3094
  %36 = icmp ne i32 %35, 0, !dbg !3094
  br i1 %36, label %37, label %45, !dbg !3096

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %4, align 4, !dbg !3097
  %39 = call i32 @setuid(i32 %38) #8, !dbg !3099
  store i32 %39, i32* %6, align 4, !dbg !3100
  %40 = load i32, i32* %6, align 4, !dbg !3101
  %41 = icmp slt i32 %40, 0, !dbg !3103
  br i1 %41, label %42, label %44, !dbg !3104

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %4, align 4, !dbg !3105
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i32 %43), !dbg !3107
  store i1 true, i1* %3, align 1, !dbg !3108
  br label %46, !dbg !3108

; <label>:44:                                     ; preds = %37
  br label %45, !dbg !3109

; <label>:45:                                     ; preds = %44, %34
  call void @signal_handler_script(), !dbg !3110
  call void @set_std_fd(i1 zeroext false), !dbg !3111
  store i1 false, i1* %3, align 1, !dbg !3112
  br label %46, !dbg !3112

; <label>:46:                                     ; preds = %45, %42, %31, %25
  %47 = load i1, i1* %3, align 1, !dbg !3113
  ret i1 %47, !dbg !3113
}

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #3

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #3

declare i32 @system(i8*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

; Function Attrs: nounwind
declare i32 @getpriority(i32, i32) #3

; Function Attrs: nounwind
declare i32 @setpriority(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @setgid(i32) #3

; Function Attrs: nounwind
declare i32 @setgroups(i64, i32*) #3

; Function Attrs: nounwind
declare i32 @setuid(i32) #3

declare void @signal_handler_script() #4

declare void @set_std_fd(i1 zeroext) #4

declare i32 @close(i32) #4

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare i64 @confstr(i32, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strnlen(i8*, i64) #2

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) #3

; Function Attrs: nounwind readonly
declare i8* @strchrnul(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @mempcpy(i8*, i8*, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: nounwind
declare i32 @fstatat(i32, i8*, %struct.stat*, i32) #3

; Function Attrs: nounwind
declare i64 @sysconf(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!518, !519}
!llvm.ident = !{!520}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !314, globals: !499)
!1 = !DIFile(filename: "[inter]lib--notify.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3, !24, !30, !97}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !25, line: 292, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "PRIO_PROCESS", value: 0)
!28 = !DIEnumerator(name: "PRIO_PGRP", value: 1)
!29 = !DIEnumerator(name: "PRIO_USER", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 533, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!33 = !DIEnumerator(name: "_CS_PATH", value: 0)
!34 = !DIEnumerator(name: "_CS_V6_WIDTH_RESTRICTED_ENVS", value: 1)
!35 = !DIEnumerator(name: "_CS_GNU_LIBC_VERSION", value: 2)
!36 = !DIEnumerator(name: "_CS_GNU_LIBPTHREAD_VERSION", value: 3)
!37 = !DIEnumerator(name: "_CS_V5_WIDTH_RESTRICTED_ENVS", value: 4)
!38 = !DIEnumerator(name: "_CS_V7_WIDTH_RESTRICTED_ENVS", value: 5)
!39 = !DIEnumerator(name: "_CS_LFS_CFLAGS", value: 1000)
!40 = !DIEnumerator(name: "_CS_LFS_LDFLAGS", value: 1001)
!41 = !DIEnumerator(name: "_CS_LFS_LIBS", value: 1002)
!42 = !DIEnumerator(name: "_CS_LFS_LINTFLAGS", value: 1003)
!43 = !DIEnumerator(name: "_CS_LFS64_CFLAGS", value: 1004)
!44 = !DIEnumerator(name: "_CS_LFS64_LDFLAGS", value: 1005)
!45 = !DIEnumerator(name: "_CS_LFS64_LIBS", value: 1006)
!46 = !DIEnumerator(name: "_CS_LFS64_LINTFLAGS", value: 1007)
!47 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_CFLAGS", value: 1100)
!48 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_LDFLAGS", value: 1101)
!49 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_LIBS", value: 1102)
!50 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFF32_LINTFLAGS", value: 1103)
!51 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_CFLAGS", value: 1104)
!52 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_LDFLAGS", value: 1105)
!53 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_LIBS", value: 1106)
!54 = !DIEnumerator(name: "_CS_XBS5_ILP32_OFFBIG_LINTFLAGS", value: 1107)
!55 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_CFLAGS", value: 1108)
!56 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_LDFLAGS", value: 1109)
!57 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_LIBS", value: 1110)
!58 = !DIEnumerator(name: "_CS_XBS5_LP64_OFF64_LINTFLAGS", value: 1111)
!59 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_CFLAGS", value: 1112)
!60 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_LDFLAGS", value: 1113)
!61 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_LIBS", value: 1114)
!62 = !DIEnumerator(name: "_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS", value: 1115)
!63 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_CFLAGS", value: 1116)
!64 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_LDFLAGS", value: 1117)
!65 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_LIBS", value: 1118)
!66 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS", value: 1119)
!67 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS", value: 1120)
!68 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS", value: 1121)
!69 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_LIBS", value: 1122)
!70 = !DIEnumerator(name: "_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS", value: 1123)
!71 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_CFLAGS", value: 1124)
!72 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_LDFLAGS", value: 1125)
!73 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_LIBS", value: 1126)
!74 = !DIEnumerator(name: "_CS_POSIX_V6_LP64_OFF64_LINTFLAGS", value: 1127)
!75 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS", value: 1128)
!76 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS", value: 1129)
!77 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_LIBS", value: 1130)
!78 = !DIEnumerator(name: "_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS", value: 1131)
!79 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_CFLAGS", value: 1132)
!80 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_LDFLAGS", value: 1133)
!81 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_LIBS", value: 1134)
!82 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS", value: 1135)
!83 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS", value: 1136)
!84 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS", value: 1137)
!85 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_LIBS", value: 1138)
!86 = !DIEnumerator(name: "_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS", value: 1139)
!87 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_CFLAGS", value: 1140)
!88 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_LDFLAGS", value: 1141)
!89 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_LIBS", value: 1142)
!90 = !DIEnumerator(name: "_CS_POSIX_V7_LP64_OFF64_LINTFLAGS", value: 1143)
!91 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS", value: 1144)
!92 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS", value: 1145)
!93 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_LIBS", value: 1146)
!94 = !DIEnumerator(name: "_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS", value: 1147)
!95 = !DIEnumerator(name: "_CS_V6_ENV", value: 1148)
!96 = !DIEnumerator(name: "_CS_V7_ENV", value: 1149)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 71, size: 32, align: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!99 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!100 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!101 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!102 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!103 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!104 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!105 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!106 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!107 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!108 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!109 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!110 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!111 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!112 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!113 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!114 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!115 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!116 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!117 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!118 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!119 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!120 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!121 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!122 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!123 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!124 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!125 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!126 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!127 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!128 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!129 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!130 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!131 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!132 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!133 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!134 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!135 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!136 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!137 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!138 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!139 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!140 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!141 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!142 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!143 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!144 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!145 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!146 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!147 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!148 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!149 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!150 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!151 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!152 = !DIEnumerator(name: "_SC_PII", value: 53)
!153 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!154 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!155 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!156 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!157 = !DIEnumerator(name: "_SC_POLL", value: 58)
!158 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!159 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!160 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!161 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!162 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!163 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!164 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!165 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!166 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!167 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!168 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!169 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!170 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!171 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!172 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!173 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!174 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!175 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!176 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!177 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!178 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!179 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!180 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!181 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!182 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!183 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!184 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!185 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!186 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!187 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!188 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!189 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!190 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!191 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!192 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!193 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!194 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!195 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!196 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!197 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!198 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!199 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!200 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!201 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!202 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!203 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!204 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!205 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!206 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!207 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!208 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!209 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!210 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!211 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!212 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!213 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!214 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!215 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!216 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!217 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!218 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!219 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!220 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!221 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!222 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!223 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!224 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!225 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!226 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!227 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!228 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!229 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!230 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!231 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!232 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!233 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!234 = !DIEnumerator(name: "_SC_BASE", value: 134)
!235 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!236 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!237 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!238 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!239 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!240 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!241 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!242 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!243 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!244 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!245 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!246 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!247 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!248 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!249 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!250 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!251 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!252 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!253 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!254 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!255 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!256 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!257 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!258 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!259 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!260 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!261 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!262 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!263 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!264 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!265 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!266 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!267 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!268 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!269 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!270 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!271 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!272 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!273 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!274 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!275 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!276 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!277 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!278 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!279 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!280 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!281 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!282 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!283 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!284 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!285 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!286 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!287 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!288 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!289 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!290 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!291 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!292 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!293 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!294 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!295 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!296 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!297 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!298 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!299 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!300 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!301 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!302 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!303 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!304 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!305 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!306 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!307 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!308 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!309 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!310 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!311 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!312 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!313 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!314 = !{!315, !386, !416, !365, !431, !498}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !318)
!318 = !{!319, !321, !323, !462, !467, !468, !478, !491, !493}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !317, file: !4, line: 79, baseType: !320, size: 64, align: 64)
!320 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !4, line: 80, baseType: !322, size: 32, align: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !317, file: !4, line: 81, baseType: !324, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !326)
!326 = !{!327, !339, !340, !341, !342, !350, !351, !352, !438, !439, !442, !453, !454, !455, !456, !457, !458, !459, !460}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !325, file: !4, line: 113, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !329, line: 109, baseType: !330)
!329 = !DIFile(filename: "rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !329, line: 106, size: 64, align: 64, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !330, file: !329, line: 108, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !329, line: 97, size: 192, align: 64, elements: !335)
!335 = !{!336, !337, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !334, file: !329, line: 99, baseType: !320, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !334, file: !329, line: 102, baseType: !333, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !334, file: !329, line: 103, baseType: !333, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !325, file: !4, line: 114, baseType: !328, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !325, file: !4, line: 115, baseType: !328, size: 64, align: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !325, file: !4, line: 116, baseType: !328, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !325, file: !4, line: 117, baseType: !343, size: 128, align: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !344, line: 62, baseType: !345)
!344 = !DIFile(filename: "list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !344, line: 60, size: 128, align: 64, elements: !346)
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !344, line: 61, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !345, file: !344, line: 61, baseType: !348, size: 64, align: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !325, file: !4, line: 121, baseType: !343, size: 128, align: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !325, file: !4, line: 122, baseType: !343, size: 128, align: 64, offset: 512)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !325, file: !4, line: 124, baseType: !353, size: 64, align: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !354, line: 31, baseType: !355)
!354 = !DIFile(filename: "list.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !354, line: 39, size: 320, align: 64, elements: !357)
!357 = !{!358, !366, !367, !369, !373}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !356, file: !354, line: 40, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !354, line: 33, size: 192, align: 64, elements: !361)
!361 = !{!362, !363, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !354, line: 34, baseType: !359, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !360, file: !354, line: 35, baseType: !359, size: 64, align: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !360, file: !354, line: 36, baseType: !365, size: 64, align: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !356, file: !354, line: 41, baseType: !359, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !356, file: !354, line: 42, baseType: !368, size: 32, align: 32, offset: 128)
!368 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !356, file: !354, line: 43, baseType: !370, size: 64, align: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !365}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !356, file: !354, line: 44, baseType: !374, size: 64, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !365}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !379, line: 48, baseType: !380)
!379 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !381, line: 241, size: 1728, align: 64, elements: !382)
!381 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!382 = !{!383, !385, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !406, !407, !408, !409, !413, !415, !417, !421, !424, !426, !427, !428, !429, !430, !433, !434}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !380, file: !381, line: 242, baseType: !384, size: 32, align: 32)
!384 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !380, file: !381, line: 247, baseType: !386, size: 64, align: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !380, file: !381, line: 248, baseType: !386, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !380, file: !381, line: 249, baseType: !386, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !380, file: !381, line: 250, baseType: !386, size: 64, align: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !380, file: !381, line: 251, baseType: !386, size: 64, align: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !380, file: !381, line: 252, baseType: !386, size: 64, align: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !380, file: !381, line: 253, baseType: !386, size: 64, align: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !380, file: !381, line: 254, baseType: !386, size: 64, align: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !380, file: !381, line: 256, baseType: !386, size: 64, align: 64, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !380, file: !381, line: 257, baseType: !386, size: 64, align: 64, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !380, file: !381, line: 258, baseType: !386, size: 64, align: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !380, file: !381, line: 260, baseType: !399, size: 64, align: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !381, line: 156, size: 192, align: 64, elements: !401)
!401 = !{!402, !403, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !400, file: !381, line: 157, baseType: !399, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !400, file: !381, line: 158, baseType: !404, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !400, file: !381, line: 162, baseType: !384, size: 32, align: 32, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !380, file: !381, line: 262, baseType: !404, size: 64, align: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !380, file: !381, line: 264, baseType: !384, size: 32, align: 32, offset: 896)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !380, file: !381, line: 268, baseType: !384, size: 32, align: 32, offset: 928)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !380, file: !381, line: 270, baseType: !410, size: 64, align: 64, offset: 960)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !411, line: 131, baseType: !412)
!411 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!412 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !380, file: !381, line: 274, baseType: !414, size: 16, align: 16, offset: 1024)
!414 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !380, file: !381, line: 275, baseType: !416, size: 8, align: 8, offset: 1040)
!416 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !380, file: !381, line: 276, baseType: !418, size: 8, align: 8, offset: 1048)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 8, align: 8, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 1)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !380, file: !381, line: 280, baseType: !422, size: 64, align: 64, offset: 1088)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !381, line: 150, baseType: null)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !380, file: !381, line: 289, baseType: !425, size: 64, align: 64, offset: 1152)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !411, line: 132, baseType: !412)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !380, file: !381, line: 297, baseType: !365, size: 64, align: 64, offset: 1216)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !380, file: !381, line: 298, baseType: !365, size: 64, align: 64, offset: 1280)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !380, file: !381, line: 299, baseType: !365, size: 64, align: 64, offset: 1344)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !380, file: !381, line: 300, baseType: !365, size: 64, align: 64, offset: 1408)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !380, file: !381, line: 302, baseType: !431, size: 64, align: 64, offset: 1472)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !432, line: 216, baseType: !320)
!432 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !380, file: !381, line: 303, baseType: !384, size: 32, align: 32, offset: 1536)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !380, file: !381, line: 305, baseType: !435, size: 160, align: 8, offset: 1568)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 160, align: 8, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 20)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !325, file: !4, line: 127, baseType: !328, size: 64, align: 64, offset: 704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !325, file: !4, line: 128, baseType: !440, size: 64, align: 64, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !325, file: !4, line: 129, baseType: !443, size: 64, align: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !446)
!446 = !{!447, !448, !449, !450, !451}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !445, file: !4, line: 103, baseType: !315, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !445, file: !4, line: 104, baseType: !315, size: 64, align: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !4, line: 105, baseType: !320, size: 64, align: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !445, file: !4, line: 106, baseType: !384, size: 32, align: 32, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !445, file: !4, line: 108, baseType: !452, size: 192, align: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !329, line: 104, baseType: !334)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !325, file: !4, line: 130, baseType: !368, size: 32, align: 32, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !325, file: !4, line: 131, baseType: !368, size: 32, align: 32, offset: 928)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !325, file: !4, line: 132, baseType: !384, size: 32, align: 32, offset: 960)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !325, file: !4, line: 135, baseType: !384, size: 32, align: 32, offset: 992)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !325, file: !4, line: 136, baseType: !315, size: 64, align: 64, offset: 1024)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !325, file: !4, line: 146, baseType: !320, size: 64, align: 64, offset: 1088)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !325, file: !4, line: 147, baseType: !320, size: 64, align: 64, offset: 1152)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !325, file: !4, line: 148, baseType: !461, size: 8, align: 8, offset: 1216)
!461 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !317, file: !4, line: 82, baseType: !463, size: 64, align: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!384, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !317, file: !4, line: 83, baseType: !365, size: 64, align: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !317, file: !4, line: 84, baseType: !469, size: 128, align: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !470, line: 31, baseType: !471)
!470 = !DIFile(filename: "timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !472, line: 30, size: 128, align: 64, elements: !473)
!472 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!473 = !{!474, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !471, file: !472, line: 32, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !411, line: 139, baseType: !412)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !471, file: !472, line: 33, baseType: !477, size: 64, align: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !411, line: 141, baseType: !412)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !317, file: !4, line: 92, baseType: !479, size: 64, align: 32, offset: 448)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !4, line: 85, size: 64, align: 32, elements: !480)
!480 = !{!481, !482, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !479, file: !4, line: 86, baseType: !384, size: 32, align: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !479, file: !4, line: 87, baseType: !384, size: 32, align: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !479, file: !4, line: 91, baseType: !484, size: 64, align: 32)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !4, line: 88, size: 64, align: 32, elements: !485)
!485 = !{!486, !490}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !484, file: !4, line: 89, baseType: !487, size: 32, align: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !488, line: 263, baseType: !489)
!488 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !411, line: 133, baseType: !384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !484, file: !4, line: 90, baseType: !384, size: 32, align: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !317, file: !4, line: 93, baseType: !492, size: 64, align: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !4, line: 95, baseType: !494, size: 192, align: 64, offset: 576)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !4, line: 95, size: 192, align: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !494, file: !4, line: 96, baseType: !452, size: 192, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !4, line: 97, baseType: !343, size: 128, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!499 = !{!500, !502, !505, !508, !509, !510, !511, !515, !516, !517}
!500 = distinct !DIGlobalVariable(name: "script_security", scope: !0, file: !501, line: 57, type: !461, isLocal: false, isDefinition: true, variable: i8* @script_security)
!501 = !DIFile(filename: "notify.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!502 = distinct !DIGlobalVariable(name: "default_script_uid", scope: !0, file: !501, line: 48, type: !503, isLocal: false, isDefinition: true, variable: i32* @default_script_uid)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !488, line: 240, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !411, line: 125, baseType: !368)
!505 = distinct !DIGlobalVariable(name: "default_script_gid", scope: !0, file: !501, line: 49, type: !506, isLocal: false, isDefinition: true, variable: i32* @default_script_gid)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !488, line: 235, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !411, line: 126, baseType: !368)
!508 = distinct !DIGlobalVariable(name: "getpwnam_buf_len", scope: !0, file: !501, line: 60, type: !431, isLocal: true, isDefinition: true, variable: i64* @getpwnam_buf_len)
!509 = distinct !DIGlobalVariable(name: "path", scope: !0, file: !501, line: 62, type: !386, isLocal: true, isDefinition: true, variable: i8** @path)
!510 = distinct !DIGlobalVariable(name: "path_is_malloced", scope: !0, file: !501, line: 63, type: !461, isLocal: true, isDefinition: true, variable: i8* @path_is_malloced)
!511 = distinct !DIGlobalVariable(name: "cmd_str_buf", scope: !0, file: !501, line: 69, type: !512, isLocal: true, isDefinition: true, variable: [1024 x i8]* @cmd_str_buf)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 8192, align: 8, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 1024)
!515 = distinct !DIGlobalVariable(name: "cur_prio", scope: !0, file: !501, line: 66, type: !384, isLocal: true, isDefinition: true, variable: i32* @cur_prio)
!516 = distinct !DIGlobalVariable(name: "default_script_uid_set", scope: !0, file: !501, line: 52, type: !461, isLocal: true, isDefinition: true, variable: i8* @default_script_uid_set)
!517 = distinct !DIGlobalVariable(name: "default_user_fail", scope: !0, file: !501, line: 53, type: !461, isLocal: true, isDefinition: true, variable: i8* @default_user_fail)
!518 = !{i32 2, !"Dwarf Version", i32 4}
!519 = !{i32 2, !"Debug Info Version", i32 3}
!520 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!521 = distinct !DISubprogram(name: "cmd_str_r", scope: !501, file: !501, line: 117, type: !522, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!522 = !DISubroutineType(types: !523)
!523 = !{!386, !524, !386, !431}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !527, line: 65, baseType: !528)
!527 = !DIFile(filename: "notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !527, line: 59, size: 192, align: 64, elements: !529)
!529 = !{!530, !531, !532, !533, !534}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !528, file: !527, line: 60, baseType: !498, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !528, file: !527, line: 61, baseType: !384, size: 32, align: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !527, line: 62, baseType: !384, size: 32, align: 32, offset: 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !528, file: !527, line: 63, baseType: !503, size: 32, align: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !528, file: !527, line: 64, baseType: !506, size: 32, align: 32, offset: 160)
!535 = !{}
!536 = !DILocalVariable(name: "script", arg: 1, scope: !521, file: !501, line: 117, type: !524)
!537 = !DIExpression()
!538 = !DILocation(line: 117, column: 34, scope: !521)
!539 = !DILocalVariable(name: "buf", arg: 2, scope: !521, file: !501, line: 117, type: !386)
!540 = !DILocation(line: 117, column: 48, scope: !521)
!541 = !DILocalVariable(name: "len", arg: 3, scope: !521, file: !501, line: 117, type: !431)
!542 = !DILocation(line: 117, column: 60, scope: !521)
!543 = !DILocalVariable(name: "str_p", scope: !521, file: !501, line: 119, type: !386)
!544 = !DILocation(line: 119, column: 8, scope: !521)
!545 = !DILocalVariable(name: "i", scope: !521, file: !501, line: 120, type: !384)
!546 = !DILocation(line: 120, column: 6, scope: !521)
!547 = !DILocalVariable(name: "str_len", scope: !521, file: !501, line: 121, type: !431)
!548 = !DILocation(line: 121, column: 9, scope: !521)
!549 = !DILocation(line: 123, column: 10, scope: !521)
!550 = !DILocation(line: 123, column: 8, scope: !521)
!551 = !DILocation(line: 125, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !521, file: !501, line: 125, column: 2)
!553 = !DILocation(line: 125, column: 7, scope: !552)
!554 = !DILocation(line: 125, column: 14, scope: !555)
!555 = !DILexicalBlockFile(scope: !556, file: !501, discriminator: 1)
!556 = distinct !DILexicalBlock(scope: !552, file: !501, line: 125, column: 2)
!557 = !DILocation(line: 125, column: 18, scope: !555)
!558 = !DILocation(line: 125, column: 26, scope: !555)
!559 = !DILocation(line: 125, column: 16, scope: !555)
!560 = !DILocation(line: 125, column: 2, scope: !555)
!561 = !DILocation(line: 127, column: 33, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !501, line: 125, column: 41)
!563 = !DILocation(line: 127, column: 20, scope: !562)
!564 = !DILocation(line: 127, column: 28, scope: !562)
!565 = !DILocation(line: 127, column: 13, scope: !562)
!566 = !DILocation(line: 127, column: 11, scope: !562)
!567 = !DILocation(line: 128, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !562, file: !501, line: 128, column: 7)
!569 = !DILocation(line: 128, column: 15, scope: !568)
!570 = !DILocation(line: 128, column: 13, scope: !568)
!571 = !DILocation(line: 128, column: 23, scope: !568)
!572 = !DILocation(line: 128, column: 30, scope: !568)
!573 = !DILocation(line: 128, column: 27, scope: !568)
!574 = !DILocation(line: 128, column: 44, scope: !568)
!575 = !DILocation(line: 128, column: 50, scope: !568)
!576 = !DILocation(line: 128, column: 48, scope: !568)
!577 = !DILocation(line: 128, column: 41, scope: !568)
!578 = !DILocation(line: 128, column: 7, scope: !562)
!579 = !DILocation(line: 129, column: 4, scope: !568)
!580 = !DILocation(line: 131, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !562, file: !501, line: 131, column: 7)
!582 = !DILocation(line: 131, column: 7, scope: !562)
!583 = !DILocation(line: 132, column: 10, scope: !581)
!584 = !DILocation(line: 132, column: 13, scope: !581)
!585 = !DILocation(line: 132, column: 4, scope: !581)
!586 = !DILocation(line: 133, column: 9, scope: !562)
!587 = !DILocation(line: 133, column: 12, scope: !562)
!588 = !DILocation(line: 134, column: 10, scope: !562)
!589 = !DILocation(line: 134, column: 30, scope: !562)
!590 = !DILocation(line: 134, column: 17, scope: !562)
!591 = !DILocation(line: 134, column: 25, scope: !562)
!592 = !DILocation(line: 134, column: 3, scope: !562)
!593 = !DILocation(line: 135, column: 12, scope: !562)
!594 = !DILocation(line: 135, column: 9, scope: !562)
!595 = !DILocation(line: 136, column: 9, scope: !562)
!596 = !DILocation(line: 136, column: 12, scope: !562)
!597 = !DILocation(line: 137, column: 2, scope: !562)
!598 = !DILocation(line: 125, column: 37, scope: !599)
!599 = !DILexicalBlockFile(scope: !556, file: !501, discriminator: 2)
!600 = !DILocation(line: 125, column: 2, scope: !599)
!601 = distinct !{!601, !602}
!602 = !DILocation(line: 125, column: 2, scope: !521)
!603 = !DILocation(line: 138, column: 3, scope: !521)
!604 = !DILocation(line: 138, column: 9, scope: !521)
!605 = !DILocation(line: 140, column: 9, scope: !521)
!606 = !DILocation(line: 140, column: 2, scope: !521)
!607 = !DILocation(line: 141, column: 1, scope: !521)
!608 = distinct !DISubprogram(name: "cmd_str", scope: !501, file: !501, line: 144, type: !609, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!609 = !DISubroutineType(types: !610)
!610 = !{!386, !524}
!611 = !DILocalVariable(name: "script", arg: 1, scope: !608, file: !501, line: 144, type: !524)
!612 = !DILocation(line: 144, column: 32, scope: !608)
!613 = !DILocalVariable(name: "len", scope: !608, file: !501, line: 146, type: !431)
!614 = !DILocation(line: 146, column: 9, scope: !608)
!615 = !DILocalVariable(name: "i", scope: !608, file: !501, line: 147, type: !384)
!616 = !DILocation(line: 147, column: 6, scope: !608)
!617 = !DILocation(line: 149, column: 9, scope: !618)
!618 = distinct !DILexicalBlock(scope: !608, file: !501, line: 149, column: 2)
!619 = !DILocation(line: 149, column: 18, scope: !618)
!620 = !DILocation(line: 149, column: 7, scope: !618)
!621 = !DILocation(line: 149, column: 23, scope: !622)
!622 = !DILexicalBlockFile(scope: !623, file: !501, discriminator: 1)
!623 = distinct !DILexicalBlock(scope: !618, file: !501, line: 149, column: 2)
!624 = !DILocation(line: 149, column: 27, scope: !622)
!625 = !DILocation(line: 149, column: 35, scope: !622)
!626 = !DILocation(line: 149, column: 25, scope: !622)
!627 = !DILocation(line: 149, column: 2, scope: !622)
!628 = !DILocation(line: 150, column: 30, scope: !623)
!629 = !DILocation(line: 150, column: 17, scope: !623)
!630 = !DILocation(line: 150, column: 25, scope: !623)
!631 = !DILocation(line: 150, column: 10, scope: !623)
!632 = !DILocation(line: 150, column: 34, scope: !623)
!633 = !DILocation(line: 150, column: 7, scope: !623)
!634 = !DILocation(line: 150, column: 3, scope: !623)
!635 = !DILocation(line: 149, column: 46, scope: !636)
!636 = !DILexicalBlockFile(scope: !623, file: !501, discriminator: 2)
!637 = !DILocation(line: 149, column: 2, scope: !636)
!638 = distinct !{!638, !639}
!639 = !DILocation(line: 149, column: 2, scope: !608)
!640 = !DILocation(line: 152, column: 6, scope: !641)
!641 = distinct !DILexicalBlock(scope: !608, file: !501, line: 152, column: 6)
!642 = !DILocation(line: 152, column: 10, scope: !641)
!643 = !DILocation(line: 152, column: 6, scope: !608)
!644 = !DILocation(line: 153, column: 3, scope: !641)
!645 = !DILocation(line: 155, column: 19, scope: !608)
!646 = !DILocation(line: 155, column: 9, scope: !608)
!647 = !DILocation(line: 155, column: 2, scope: !608)
!648 = !DILocation(line: 156, column: 1, scope: !608)
!649 = distinct !DISubprogram(name: "notify_fifo_open", scope: !501, file: !501, line: 256, type: !650, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !652, !652, !661, !664}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_fifo_t", file: !527, line: 73, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_fifo", file: !527, line: 68, size: 192, align: 64, elements: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !527, line: 69, baseType: !386, size: 64, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !654, file: !527, line: 70, baseType: !384, size: 32, align: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "created_fifo", scope: !654, file: !527, line: 71, baseType: !461, size: 8, align: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !654, file: !527, line: 72, baseType: !660, size: 64, align: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!384, !315}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!666 = !DILocalVariable(name: "global_fifo", arg: 1, scope: !649, file: !501, line: 256, type: !652)
!667 = !DILocation(line: 256, column: 33, scope: !649)
!668 = !DILocalVariable(name: "fifo", arg: 2, scope: !649, file: !501, line: 256, type: !652)
!669 = !DILocation(line: 256, column: 61, scope: !649)
!670 = !DILocalVariable(name: "script_exit", arg: 3, scope: !649, file: !501, line: 256, type: !661)
!671 = !DILocation(line: 256, column: 73, scope: !649)
!672 = !DILocalVariable(name: "type", arg: 4, scope: !649, file: !501, line: 256, type: !664)
!673 = !DILocation(line: 256, column: 111, scope: !649)
!674 = !DILocation(line: 259, column: 6, scope: !675)
!675 = distinct !DILexicalBlock(scope: !649, file: !501, line: 259, column: 6)
!676 = !DILocation(line: 259, column: 19, scope: !675)
!677 = !DILocation(line: 259, column: 6, scope: !649)
!678 = !DILocation(line: 260, column: 13, scope: !675)
!679 = !DILocation(line: 260, column: 26, scope: !675)
!680 = !DILocation(line: 260, column: 3, scope: !675)
!681 = !DILocation(line: 263, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !649, file: !501, line: 263, column: 6)
!683 = !DILocation(line: 263, column: 12, scope: !682)
!684 = !DILocation(line: 263, column: 6, scope: !649)
!685 = !DILocation(line: 264, column: 13, scope: !682)
!686 = !DILocation(line: 264, column: 19, scope: !682)
!687 = !DILocation(line: 264, column: 32, scope: !682)
!688 = !DILocation(line: 264, column: 3, scope: !682)
!689 = !DILocation(line: 265, column: 1, scope: !649)
!690 = distinct !DISubprogram(name: "fifo_open", scope: !501, file: !501, line: 216, type: !691, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !652, !661, !664}
!693 = !DILocalVariable(name: "fifo", arg: 1, scope: !690, file: !501, line: 216, type: !652)
!694 = !DILocation(line: 216, column: 26, scope: !690)
!695 = !DILocalVariable(name: "script_exit", arg: 2, scope: !690, file: !501, line: 216, type: !661)
!696 = !DILocation(line: 216, column: 38, scope: !690)
!697 = !DILocalVariable(name: "type", arg: 3, scope: !690, file: !501, line: 216, type: !664)
!698 = !DILocation(line: 216, column: 76, scope: !690)
!699 = !DILocalVariable(name: "ret", scope: !690, file: !501, line: 218, type: !384)
!700 = !DILocation(line: 218, column: 6, scope: !690)
!701 = !DILocalVariable(name: "sav_errno", scope: !690, file: !501, line: 219, type: !384)
!702 = !DILocation(line: 219, column: 6, scope: !690)
!703 = !DILocation(line: 221, column: 6, scope: !704)
!704 = distinct !DILexicalBlock(scope: !690, file: !501, line: 221, column: 6)
!705 = !DILocation(line: 221, column: 12, scope: !704)
!706 = !DILocation(line: 221, column: 6, scope: !690)
!707 = !DILocation(line: 222, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !704, file: !501, line: 221, column: 18)
!709 = !DILocation(line: 224, column: 22, scope: !710)
!710 = distinct !DILexicalBlock(scope: !708, file: !501, line: 224, column: 7)
!711 = !DILocation(line: 224, column: 28, scope: !710)
!712 = !DILocation(line: 224, column: 15, scope: !710)
!713 = !DILocation(line: 224, column: 13, scope: !710)
!714 = !DILocation(line: 224, column: 7, scope: !708)
!715 = !DILocation(line: 225, column: 4, scope: !710)
!716 = !DILocation(line: 225, column: 10, scope: !710)
!717 = !DILocation(line: 225, column: 23, scope: !710)
!718 = !DILocation(line: 227, column: 17, scope: !719)
!719 = distinct !DILexicalBlock(scope: !710, file: !501, line: 226, column: 8)
!720 = !DILocation(line: 227, column: 16, scope: !719)
!721 = !DILocation(line: 227, column: 14, scope: !719)
!722 = !DILocation(line: 229, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !501, line: 229, column: 8)
!724 = !DILocation(line: 229, column: 18, scope: !723)
!725 = !DILocation(line: 229, column: 8, scope: !719)
!726 = !DILocation(line: 230, column: 63, scope: !723)
!727 = !DILocation(line: 230, column: 69, scope: !723)
!728 = !DILocation(line: 230, column: 75, scope: !723)
!729 = !DILocation(line: 230, column: 5, scope: !723)
!730 = !DILocation(line: 233, column: 8, scope: !731)
!731 = distinct !DILexicalBlock(scope: !708, file: !501, line: 233, column: 7)
!732 = !DILocation(line: 233, column: 18, scope: !731)
!733 = !DILocation(line: 233, column: 21, scope: !734)
!734 = !DILexicalBlockFile(scope: !731, file: !501, discriminator: 1)
!735 = !DILocation(line: 233, column: 31, scope: !734)
!736 = !DILocation(line: 233, column: 7, scope: !734)
!737 = !DILocation(line: 235, column: 8, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !501, line: 235, column: 8)
!739 = distinct !DILexicalBlock(scope: !731, file: !501, line: 233, column: 41)
!740 = !DILocation(line: 235, column: 14, scope: !738)
!741 = !DILocation(line: 235, column: 8, scope: !739)
!742 = !DILocation(line: 236, column: 22, scope: !738)
!743 = !DILocation(line: 236, column: 30, scope: !738)
!744 = !DILocation(line: 236, column: 43, scope: !738)
!745 = !DILocation(line: 236, column: 49, scope: !738)
!746 = !DILocation(line: 236, column: 55, scope: !738)
!747 = !DILocation(line: 236, column: 5, scope: !738)
!748 = !DILocation(line: 239, column: 25, scope: !749)
!749 = distinct !DILexicalBlock(scope: !739, file: !501, line: 239, column: 8)
!750 = !DILocation(line: 239, column: 31, scope: !749)
!751 = !DILocation(line: 239, column: 20, scope: !749)
!752 = !DILocation(line: 239, column: 9, scope: !749)
!753 = !DILocation(line: 239, column: 15, scope: !749)
!754 = !DILocation(line: 239, column: 18, scope: !749)
!755 = !DILocation(line: 239, column: 70, scope: !749)
!756 = !DILocation(line: 239, column: 8, scope: !739)
!757 = !DILocation(line: 240, column: 72, scope: !758)
!758 = distinct !DILexicalBlock(scope: !749, file: !501, line: 239, column: 77)
!759 = !DILocation(line: 240, column: 78, scope: !758)
!760 = !DILocation(line: 240, column: 84, scope: !758)
!761 = !DILocation(line: 240, column: 92, scope: !758)
!762 = !DILocation(line: 240, column: 91, scope: !758)
!763 = !DILocation(line: 240, column: 5, scope: !764)
!764 = !DILexicalBlockFile(scope: !758, file: !501, discriminator: 1)
!765 = !DILocation(line: 241, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !758, file: !501, line: 241, column: 9)
!767 = !DILocation(line: 241, column: 15, scope: !766)
!768 = !DILocation(line: 241, column: 9, scope: !758)
!769 = !DILocation(line: 242, column: 13, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !501, line: 241, column: 29)
!771 = !DILocation(line: 242, column: 19, scope: !770)
!772 = !DILocation(line: 242, column: 6, scope: !770)
!773 = !DILocation(line: 243, column: 6, scope: !770)
!774 = !DILocation(line: 243, column: 12, scope: !770)
!775 = !DILocation(line: 243, column: 25, scope: !770)
!776 = !DILocation(line: 244, column: 5, scope: !770)
!777 = !DILocation(line: 245, column: 4, scope: !758)
!778 = !DILocation(line: 246, column: 3, scope: !739)
!779 = !DILocation(line: 248, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !708, file: !501, line: 248, column: 7)
!781 = !DILocation(line: 248, column: 13, scope: !780)
!782 = !DILocation(line: 248, column: 16, scope: !780)
!783 = !DILocation(line: 248, column: 7, scope: !708)
!784 = !DILocation(line: 249, column: 10, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !501, line: 248, column: 23)
!786 = !DILocation(line: 249, column: 16, scope: !785)
!787 = !DILocation(line: 249, column: 5, scope: !785)
!788 = !DILocation(line: 249, column: 24, scope: !785)
!789 = !DILocation(line: 249, column: 30, scope: !785)
!790 = !DILocation(line: 249, column: 36, scope: !785)
!791 = !DILocation(line: 250, column: 4, scope: !785)
!792 = !DILocation(line: 250, column: 10, scope: !785)
!793 = !DILocation(line: 250, column: 15, scope: !785)
!794 = !DILocation(line: 251, column: 3, scope: !785)
!795 = !DILocation(line: 252, column: 2, scope: !708)
!796 = !DILocation(line: 253, column: 1, scope: !690)
!797 = distinct !DISubprogram(name: "notify_fifo_close", scope: !501, file: !501, line: 279, type: !798, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !652, !652}
!800 = !DILocalVariable(name: "global_fifo", arg: 1, scope: !797, file: !501, line: 279, type: !652)
!801 = !DILocation(line: 279, column: 34, scope: !797)
!802 = !DILocalVariable(name: "fifo", arg: 2, scope: !797, file: !501, line: 279, type: !652)
!803 = !DILocation(line: 279, column: 62, scope: !797)
!804 = !DILocation(line: 281, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !797, file: !501, line: 281, column: 6)
!806 = !DILocation(line: 281, column: 19, scope: !805)
!807 = !DILocation(line: 281, column: 22, scope: !805)
!808 = !DILocation(line: 281, column: 6, scope: !797)
!809 = !DILocation(line: 282, column: 14, scope: !805)
!810 = !DILocation(line: 282, column: 3, scope: !805)
!811 = !DILocation(line: 284, column: 13, scope: !797)
!812 = !DILocation(line: 284, column: 2, scope: !797)
!813 = !DILocation(line: 285, column: 1, scope: !797)
!814 = distinct !DISubprogram(name: "fifo_close", scope: !501, file: !501, line: 268, type: !815, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !652}
!817 = !DILocalVariable(name: "fifo", arg: 1, scope: !814, file: !501, line: 268, type: !652)
!818 = !DILocation(line: 268, column: 27, scope: !814)
!819 = !DILocation(line: 270, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !501, line: 270, column: 6)
!821 = !DILocation(line: 270, column: 12, scope: !820)
!822 = !DILocation(line: 270, column: 15, scope: !820)
!823 = !DILocation(line: 270, column: 6, scope: !814)
!824 = !DILocation(line: 271, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !820, file: !501, line: 270, column: 22)
!826 = !DILocation(line: 271, column: 15, scope: !825)
!827 = !DILocation(line: 271, column: 3, scope: !825)
!828 = !DILocation(line: 272, column: 3, scope: !825)
!829 = !DILocation(line: 272, column: 9, scope: !825)
!830 = !DILocation(line: 272, column: 12, scope: !825)
!831 = !DILocation(line: 273, column: 2, scope: !825)
!832 = !DILocation(line: 274, column: 6, scope: !833)
!833 = distinct !DILexicalBlock(scope: !814, file: !501, line: 274, column: 6)
!834 = !DILocation(line: 274, column: 12, scope: !833)
!835 = !DILocation(line: 274, column: 6, scope: !814)
!836 = !DILocation(line: 275, column: 10, scope: !833)
!837 = !DILocation(line: 275, column: 16, scope: !833)
!838 = !DILocation(line: 275, column: 3, scope: !833)
!839 = !DILocation(line: 276, column: 1, scope: !814)
!840 = distinct !DISubprogram(name: "notify_exec", scope: !501, file: !501, line: 347, type: !841, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!841 = !DISubroutineType(types: !842)
!842 = !{!384, !524}
!843 = !DILocalVariable(name: "script", arg: 1, scope: !840, file: !501, line: 347, type: !524)
!844 = !DILocation(line: 347, column: 36, scope: !840)
!845 = !DILocalVariable(name: "pid", scope: !840, file: !501, line: 349, type: !487)
!846 = !DILocation(line: 349, column: 8, scope: !840)
!847 = !DILocation(line: 351, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !840, file: !501, line: 351, column: 6)
!849 = !DILocation(line: 351, column: 6, scope: !840)
!850 = !DILocation(line: 352, column: 3, scope: !848)
!851 = !DILocation(line: 354, column: 8, scope: !840)
!852 = !DILocation(line: 354, column: 6, scope: !840)
!853 = !DILocation(line: 356, column: 6, scope: !854)
!854 = distinct !DILexicalBlock(scope: !840, file: !501, line: 356, column: 6)
!855 = !DILocation(line: 356, column: 10, scope: !854)
!856 = !DILocation(line: 356, column: 6, scope: !840)
!857 = !DILocation(line: 358, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !501, line: 356, column: 15)
!859 = !DILocation(line: 359, column: 3, scope: !858)
!860 = !DILocation(line: 362, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !840, file: !501, line: 362, column: 6)
!862 = !DILocation(line: 362, column: 6, scope: !840)
!863 = !DILocation(line: 364, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !501, line: 362, column: 11)
!865 = !DILocation(line: 371, column: 14, scope: !840)
!866 = !DILocation(line: 371, column: 2, scope: !840)
!867 = !DILocation(line: 375, column: 1, scope: !840)
!868 = distinct !DISubprogram(name: "system_call", scope: !501, file: !501, line: 291, type: !869, isLocal: true, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !524}
!871 = !DILocalVariable(name: "script", arg: 1, scope: !868, file: !501, line: 291, type: !524)
!872 = !DILocation(line: 291, column: 36, scope: !868)
!873 = !DILocalVariable(name: "command_line", scope: !868, file: !501, line: 293, type: !386)
!874 = !DILocation(line: 293, column: 8, scope: !868)
!875 = !DILocalVariable(name: "str", scope: !868, file: !501, line: 294, type: !386)
!876 = !DILocation(line: 294, column: 8, scope: !868)
!877 = !DILocalVariable(name: "retval", scope: !868, file: !501, line: 295, type: !384)
!878 = !DILocation(line: 295, column: 6, scope: !868)
!879 = !DILocation(line: 297, column: 21, scope: !880)
!880 = distinct !DILexicalBlock(scope: !868, file: !501, line: 297, column: 6)
!881 = !DILocation(line: 297, column: 29, scope: !880)
!882 = !DILocation(line: 297, column: 34, scope: !880)
!883 = !DILocation(line: 297, column: 42, scope: !880)
!884 = !DILocation(line: 297, column: 6, scope: !880)
!885 = !DILocation(line: 297, column: 6, scope: !868)
!886 = !DILocation(line: 298, column: 3, scope: !880)
!887 = !DILocation(line: 302, column: 2, scope: !868)
!888 = !DILocation(line: 304, column: 6, scope: !889)
!889 = distinct !DILexicalBlock(scope: !868, file: !501, line: 304, column: 6)
!890 = !DILocation(line: 304, column: 14, scope: !889)
!891 = !DILocation(line: 304, column: 20, scope: !889)
!892 = !DILocation(line: 304, column: 6, scope: !868)
!893 = !DILocation(line: 306, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !501, line: 304, column: 28)
!895 = !DILocation(line: 308, column: 10, scope: !894)
!896 = !DILocation(line: 308, column: 18, scope: !894)
!897 = !DILocation(line: 308, column: 27, scope: !894)
!898 = !DILocation(line: 308, column: 35, scope: !894)
!899 = !DILocation(line: 308, column: 41, scope: !894)
!900 = !DILocation(line: 308, column: 3, scope: !894)
!901 = !DILocation(line: 311, column: 70, scope: !894)
!902 = !DILocation(line: 311, column: 78, scope: !894)
!903 = !DILocation(line: 311, column: 89, scope: !894)
!904 = !DILocation(line: 311, column: 88, scope: !894)
!905 = !DILocation(line: 311, column: 3, scope: !906)
!906 = !DILexicalBlockFile(scope: !894, file: !501, discriminator: 1)
!907 = !DILocation(line: 312, column: 2, scope: !894)
!908 = !DILocation(line: 314, column: 33, scope: !909)
!909 = distinct !DILexicalBlock(scope: !889, file: !501, line: 313, column: 7)
!910 = !DILocation(line: 314, column: 25, scope: !909)
!911 = !DILocation(line: 314, column: 23, scope: !909)
!912 = !DILocation(line: 314, column: 12, scope: !913)
!913 = !DILexicalBlockFile(scope: !909, file: !501, discriminator: 1)
!914 = !DILocation(line: 314, column: 10, scope: !909)
!915 = !DILocation(line: 316, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !909, file: !501, line: 316, column: 7)
!917 = !DILocation(line: 316, column: 14, scope: !916)
!918 = !DILocation(line: 316, column: 7, scope: !909)
!919 = !DILocation(line: 317, column: 56, scope: !916)
!920 = !DILocation(line: 317, column: 4, scope: !916)
!921 = !DILocation(line: 318, column: 31, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !501, line: 318, column: 11)
!923 = !DILocation(line: 318, column: 11, scope: !922)
!924 = !DILocation(line: 318, column: 16, scope: !922)
!925 = !DILocation(line: 318, column: 23, scope: !922)
!926 = !DILocation(line: 318, column: 11, scope: !916)
!927 = !DILocation(line: 319, column: 27, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !501, line: 319, column: 7)
!929 = distinct !DILexicalBlock(scope: !922, file: !501, line: 318, column: 30)
!930 = !DILocation(line: 319, column: 7, scope: !928)
!931 = !DILocation(line: 319, column: 12, scope: !928)
!932 = !DILocation(line: 319, column: 19, scope: !928)
!933 = !DILocation(line: 319, column: 29, scope: !928)
!934 = !DILocation(line: 319, column: 7, scope: !929)
!935 = !DILocation(line: 321, column: 56, scope: !936)
!936 = distinct !DILexicalBlock(scope: !928, file: !501, line: 319, column: 35)
!937 = !DILocation(line: 321, column: 5, scope: !936)
!938 = !DILocation(line: 322, column: 4, scope: !936)
!939 = !DILocation(line: 323, column: 32, scope: !940)
!940 = distinct !DILexicalBlock(scope: !928, file: !501, line: 323, column: 12)
!941 = !DILocation(line: 323, column: 12, scope: !940)
!942 = !DILocation(line: 323, column: 17, scope: !940)
!943 = !DILocation(line: 323, column: 24, scope: !940)
!944 = !DILocation(line: 323, column: 34, scope: !940)
!945 = !DILocation(line: 323, column: 12, scope: !928)
!946 = !DILocation(line: 325, column: 59, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !501, line: 323, column: 40)
!948 = !DILocation(line: 325, column: 5, scope: !947)
!949 = !DILocation(line: 326, column: 4, scope: !947)
!950 = !DILocation(line: 327, column: 3, scope: !929)
!951 = !DILocation(line: 329, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !909, file: !501, line: 329, column: 7)
!953 = !DILocation(line: 329, column: 7, scope: !909)
!954 = !DILocation(line: 330, column: 10, scope: !952)
!955 = !DILocation(line: 330, column: 5, scope: !952)
!956 = !DILocation(line: 330, column: 40, scope: !952)
!957 = !DILocation(line: 330, column: 4, scope: !952)
!958 = !DILocation(line: 332, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !909, file: !501, line: 332, column: 7)
!960 = !DILocation(line: 332, column: 14, scope: !959)
!961 = !DILocation(line: 332, column: 20, scope: !959)
!962 = !DILocation(line: 333, column: 27, scope: !959)
!963 = !DILocation(line: 333, column: 7, scope: !959)
!964 = !DILocation(line: 333, column: 12, scope: !959)
!965 = !DILocation(line: 333, column: 19, scope: !959)
!966 = !DILocation(line: 333, column: 25, scope: !959)
!967 = !DILocation(line: 333, column: 49, scope: !968)
!968 = !DILexicalBlockFile(scope: !959, file: !501, discriminator: 1)
!969 = !DILocation(line: 333, column: 29, scope: !968)
!970 = !DILocation(line: 333, column: 34, scope: !968)
!971 = !DILocation(line: 333, column: 41, scope: !968)
!972 = !DILocation(line: 333, column: 51, scope: !968)
!973 = !DILocation(line: 333, column: 56, scope: !968)
!974 = !DILocation(line: 333, column: 79, scope: !975)
!975 = !DILexicalBlockFile(scope: !959, file: !501, discriminator: 2)
!976 = !DILocation(line: 333, column: 59, scope: !975)
!977 = !DILocation(line: 333, column: 64, scope: !975)
!978 = !DILocation(line: 333, column: 71, scope: !975)
!979 = !DILocation(line: 333, column: 81, scope: !975)
!980 = !DILocation(line: 332, column: 7, scope: !913)
!981 = !DILocation(line: 334, column: 4, scope: !959)
!982 = !DILocation(line: 335, column: 26, scope: !983)
!983 = distinct !DILexicalBlock(scope: !909, file: !501, line: 335, column: 6)
!984 = !DILocation(line: 335, column: 6, scope: !983)
!985 = !DILocation(line: 335, column: 11, scope: !983)
!986 = !DILocation(line: 335, column: 18, scope: !983)
!987 = !DILocation(line: 335, column: 6, scope: !909)
!988 = !DILocation(line: 336, column: 28, scope: !983)
!989 = !DILocation(line: 336, column: 8, scope: !983)
!990 = !DILocation(line: 336, column: 13, scope: !983)
!991 = !DILocation(line: 336, column: 20, scope: !983)
!992 = !DILocation(line: 336, column: 30, scope: !983)
!993 = !DILocation(line: 336, column: 4, scope: !983)
!994 = !DILocation(line: 337, column: 26, scope: !995)
!995 = distinct !DILexicalBlock(scope: !909, file: !501, line: 337, column: 6)
!996 = !DILocation(line: 337, column: 6, scope: !995)
!997 = !DILocation(line: 337, column: 11, scope: !995)
!998 = !DILocation(line: 337, column: 18, scope: !995)
!999 = !DILocation(line: 337, column: 8, scope: !995)
!1000 = !DILocation(line: 337, column: 31, scope: !995)
!1001 = !DILocation(line: 337, column: 37, scope: !995)
!1002 = !DILocation(line: 337, column: 6, scope: !909)
!1003 = !DILocation(line: 338, column: 9, scope: !995)
!1004 = !DILocation(line: 338, column: 38, scope: !995)
!1005 = !DILocation(line: 338, column: 18, scope: !995)
!1006 = !DILocation(line: 338, column: 23, scope: !995)
!1007 = !DILocation(line: 338, column: 30, scope: !995)
!1008 = !DILocation(line: 338, column: 4, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !995, file: !501, discriminator: 1)
!1010 = !DILocation(line: 338, column: 4, scope: !995)
!1011 = !DILocation(line: 339, column: 3, scope: !909)
!1012 = !DILocation(line: 342, column: 2, scope: !868)
!1013 = !DILocation(line: 343, column: 1, scope: !868)
!1014 = distinct !DISubprogram(name: "system_call_script", scope: !501, file: !501, line: 378, type: !1015, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!384, !1017, !661, !365, !320, !660}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64, align: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_master_t", file: !4, line: 149, baseType: !325)
!1019 = !DILocalVariable(name: "m", arg: 1, scope: !1014, file: !501, line: 378, type: !1017)
!1020 = !DILocation(line: 378, column: 37, scope: !1014)
!1021 = !DILocalVariable(name: "func", arg: 2, scope: !1014, file: !501, line: 378, type: !661)
!1022 = !DILocation(line: 378, column: 46, scope: !1014)
!1023 = !DILocalVariable(name: "arg", arg: 3, scope: !1014, file: !501, line: 378, type: !365)
!1024 = !DILocation(line: 378, column: 73, scope: !1014)
!1025 = !DILocalVariable(name: "timer", arg: 4, scope: !1014, file: !501, line: 378, type: !320)
!1026 = !DILocation(line: 378, column: 92, scope: !1014)
!1027 = !DILocalVariable(name: "script", arg: 5, scope: !1014, file: !501, line: 378, type: !660)
!1028 = !DILocation(line: 378, column: 116, scope: !1014)
!1029 = !DILocalVariable(name: "pid", scope: !1014, file: !501, line: 380, type: !487)
!1030 = !DILocation(line: 380, column: 8, scope: !1014)
!1031 = !DILocation(line: 383, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1014, file: !501, line: 383, column: 6)
!1033 = !DILocation(line: 383, column: 6, scope: !1014)
!1034 = !DILocation(line: 384, column: 3, scope: !1032)
!1035 = !DILocation(line: 386, column: 8, scope: !1014)
!1036 = !DILocation(line: 386, column: 6, scope: !1014)
!1037 = !DILocation(line: 388, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1014, file: !501, line: 388, column: 6)
!1039 = !DILocation(line: 388, column: 10, scope: !1038)
!1040 = !DILocation(line: 388, column: 6, scope: !1014)
!1041 = !DILocation(line: 390, column: 3, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !501, line: 388, column: 15)
!1043 = !DILocation(line: 391, column: 3, scope: !1042)
!1044 = !DILocation(line: 394, column: 6, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1014, file: !501, line: 394, column: 6)
!1046 = !DILocation(line: 394, column: 6, scope: !1014)
!1047 = !DILocation(line: 396, column: 20, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !501, line: 394, column: 11)
!1049 = !DILocation(line: 396, column: 23, scope: !1048)
!1050 = !DILocation(line: 396, column: 29, scope: !1048)
!1051 = !DILocation(line: 396, column: 34, scope: !1048)
!1052 = !DILocation(line: 396, column: 39, scope: !1048)
!1053 = !DILocation(line: 396, column: 3, scope: !1048)
!1054 = !DILocation(line: 397, column: 3, scope: !1048)
!1055 = !DILocation(line: 405, column: 14, scope: !1014)
!1056 = !DILocation(line: 405, column: 2, scope: !1014)
!1057 = !DILocation(line: 408, column: 1, scope: !1014)
!1058 = distinct !DISubprogram(name: "child_killed_thread", scope: !501, file: !501, line: 411, type: !662, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!1059 = !DILocalVariable(name: "thread", arg: 1, scope: !1058, file: !501, line: 411, type: !315)
!1060 = !DILocation(line: 411, column: 31, scope: !1058)
!1061 = !DILocalVariable(name: "m", scope: !1058, file: !501, line: 413, type: !1017)
!1062 = !DILocation(line: 413, column: 19, scope: !1058)
!1063 = !DILocation(line: 413, column: 23, scope: !1058)
!1064 = !DILocation(line: 413, column: 31, scope: !1058)
!1065 = !DILocation(line: 416, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1058, file: !501, line: 416, column: 6)
!1067 = !DILocation(line: 416, column: 14, scope: !1066)
!1068 = !DILocation(line: 416, column: 19, scope: !1066)
!1069 = !DILocation(line: 416, column: 6, scope: !1058)
!1070 = !DILocation(line: 417, column: 17, scope: !1066)
!1071 = !DILocation(line: 417, column: 25, scope: !1066)
!1072 = !DILocation(line: 417, column: 27, scope: !1066)
!1073 = !DILocation(line: 417, column: 29, scope: !1066)
!1074 = !DILocation(line: 417, column: 9, scope: !1066)
!1075 = !DILocation(line: 417, column: 8, scope: !1066)
!1076 = !DILocation(line: 417, column: 3, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1066, file: !501, discriminator: 1)
!1078 = !DILocation(line: 417, column: 3, scope: !1066)
!1079 = !DILocation(line: 421, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1058, file: !501, line: 421, column: 6)
!1081 = !DILocation(line: 421, column: 11, scope: !1080)
!1082 = !DILocation(line: 421, column: 17, scope: !1080)
!1083 = !DILocation(line: 421, column: 7, scope: !1080)
!1084 = !DILocation(line: 421, column: 25, scope: !1080)
!1085 = !DILocation(line: 421, column: 29, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1080, file: !501, discriminator: 1)
!1087 = !DILocation(line: 421, column: 32, scope: !1086)
!1088 = !DILocation(line: 421, column: 6, scope: !1086)
!1089 = !DILocation(line: 422, column: 30, scope: !1080)
!1090 = !DILocation(line: 422, column: 3, scope: !1080)
!1091 = !DILocation(line: 424, column: 2, scope: !1058)
!1092 = distinct !DISubprogram(name: "script_killall", scope: !501, file: !501, line: 428, type: !1093, isLocal: false, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !1017, !384, !461}
!1095 = !DILocalVariable(name: "m", arg: 1, scope: !1092, file: !501, line: 428, type: !1017)
!1096 = !DILocation(line: 428, column: 33, scope: !1092)
!1097 = !DILocalVariable(name: "signo", arg: 2, scope: !1092, file: !501, line: 428, type: !384)
!1098 = !DILocation(line: 428, column: 40, scope: !1092)
!1099 = !DILocalVariable(name: "requeue", arg: 3, scope: !1092, file: !501, line: 428, type: !461)
!1100 = !DILocation(line: 428, column: 51, scope: !1092)
!1101 = !DILocalVariable(name: "thread", scope: !1092, file: !501, line: 430, type: !315)
!1102 = !DILocation(line: 430, column: 12, scope: !1092)
!1103 = !DILocalVariable(name: "p_pgid", scope: !1092, file: !501, line: 431, type: !487)
!1104 = !DILocation(line: 431, column: 8, scope: !1092)
!1105 = !DILocalVariable(name: "c_pgid", scope: !1092, file: !501, line: 431, type: !487)
!1106 = !DILocation(line: 431, column: 16, scope: !1092)
!1107 = !DILocation(line: 443, column: 11, scope: !1092)
!1108 = !DILocation(line: 443, column: 9, scope: !1092)
!1109 = !DILocation(line: 445, column: 27, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1092, file: !501, line: 445, column: 2)
!1111 = !DILocation(line: 445, column: 30, scope: !1110)
!1112 = !DILocation(line: 445, column: 17, scope: !1110)
!1113 = !DILocation(line: 445, column: 16, scope: !1110)
!1114 = !DILocalVariable(name: "__mptr", scope: !1115, file: !501, line: 445, type: !1116)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !501, line: 445, column: 41)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64, align: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!1118 = !DILocation(line: 445, column: 86, scope: !1115)
!1119 = !DILocation(line: 445, column: 106, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1115, file: !501, discriminator: 1)
!1121 = !DILocation(line: 445, column: 109, scope: !1120)
!1122 = !DILocation(line: 445, column: 96, scope: !1120)
!1123 = !DILocation(line: 445, column: 86, scope: !1120)
!1124 = !DILocation(line: 445, column: 147, scope: !1120)
!1125 = !DILocation(line: 445, column: 139, scope: !1120)
!1126 = !DILocation(line: 445, column: 154, scope: !1120)
!1127 = !DILocation(line: 445, column: 118, scope: !1120)
!1128 = !DILocation(line: 445, column: 43, scope: !1120)
!1129 = !DILocation(line: 445, column: 3, scope: !1120)
!1130 = !DILocation(line: 445, column: 16, scope: !1120)
!1131 = !DILocation(line: 445, column: 16, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1110, file: !501, discriminator: 2)
!1133 = !DILocation(line: 445, column: 16, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1110, file: !501, discriminator: 3)
!1135 = !DILocation(line: 445, column: 14, scope: !1134)
!1136 = !DILocation(line: 445, column: 7, scope: !1134)
!1137 = !DILocation(line: 445, column: 3, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !501, discriminator: 4)
!1139 = distinct !DILexicalBlock(scope: !1110, file: !501, line: 445, column: 2)
!1140 = !DILocation(line: 445, column: 2, scope: !1138)
!1141 = !DILocation(line: 446, column: 20, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !501, line: 445, column: 3)
!1143 = !DILocation(line: 446, column: 28, scope: !1142)
!1144 = !DILocation(line: 446, column: 30, scope: !1142)
!1145 = !DILocation(line: 446, column: 32, scope: !1142)
!1146 = !DILocation(line: 446, column: 12, scope: !1142)
!1147 = !DILocation(line: 446, column: 10, scope: !1142)
!1148 = !DILocation(line: 447, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1142, file: !501, line: 447, column: 7)
!1150 = !DILocation(line: 447, column: 17, scope: !1149)
!1151 = !DILocation(line: 447, column: 14, scope: !1149)
!1152 = !DILocation(line: 447, column: 7, scope: !1142)
!1153 = !DILocation(line: 448, column: 10, scope: !1149)
!1154 = !DILocation(line: 448, column: 9, scope: !1149)
!1155 = !DILocation(line: 448, column: 18, scope: !1149)
!1156 = !DILocation(line: 448, column: 4, scope: !1149)
!1157 = !DILocation(line: 450, column: 69, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !501, line: 449, column: 8)
!1159 = !DILocation(line: 450, column: 77, scope: !1158)
!1160 = !DILocation(line: 450, column: 4, scope: !1158)
!1161 = !DILocation(line: 451, column: 9, scope: !1158)
!1162 = !DILocation(line: 451, column: 17, scope: !1158)
!1163 = !DILocation(line: 451, column: 19, scope: !1158)
!1164 = !DILocation(line: 451, column: 21, scope: !1158)
!1165 = !DILocation(line: 451, column: 26, scope: !1158)
!1166 = !DILocation(line: 451, column: 4, scope: !1158)
!1167 = !DILocation(line: 453, column: 2, scope: !1142)
!1168 = !DILocation(line: 445, column: 30, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1139, file: !501, discriminator: 5)
!1170 = !DILocation(line: 445, column: 38, scope: !1169)
!1171 = !DILocation(line: 445, column: 21, scope: !1169)
!1172 = !DILocation(line: 445, column: 20, scope: !1169)
!1173 = !DILocalVariable(name: "__mptr", scope: !1174, file: !501, line: 445, type: !1116)
!1174 = distinct !DILexicalBlock(scope: !1139, file: !501, line: 445, column: 45)
!1175 = !DILocation(line: 445, column: 90, scope: !1174)
!1176 = !DILocation(line: 445, column: 109, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1174, file: !501, discriminator: 6)
!1178 = !DILocation(line: 445, column: 117, scope: !1177)
!1179 = !DILocation(line: 445, column: 100, scope: !1177)
!1180 = !DILocation(line: 445, column: 90, scope: !1177)
!1181 = !DILocation(line: 445, column: 151, scope: !1177)
!1182 = !DILocation(line: 445, column: 143, scope: !1177)
!1183 = !DILocation(line: 445, column: 158, scope: !1177)
!1184 = !DILocation(line: 445, column: 122, scope: !1177)
!1185 = !DILocation(line: 445, column: 47, scope: !1177)
!1186 = !DILocation(line: 445, column: 3, scope: !1177)
!1187 = !DILocation(line: 445, column: 20, scope: !1177)
!1188 = !DILocation(line: 445, column: 20, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1139, file: !501, discriminator: 7)
!1190 = !DILocation(line: 445, column: 20, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1139, file: !501, discriminator: 8)
!1192 = !DILocation(line: 445, column: 18, scope: !1191)
!1193 = !DILocation(line: 445, column: 2, scope: !1191)
!1194 = distinct !{!1194, !1195}
!1195 = !DILocation(line: 445, column: 2, scope: !1092)
!1196 = !DILocation(line: 456, column: 6, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1092, file: !501, line: 456, column: 6)
!1198 = !DILocation(line: 456, column: 14, scope: !1197)
!1199 = !DILocation(line: 456, column: 17, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1197, file: !501, discriminator: 1)
!1201 = !DILocation(line: 456, column: 23, scope: !1200)
!1202 = !DILocation(line: 456, column: 6, scope: !1200)
!1203 = !DILocation(line: 457, column: 30, scope: !1197)
!1204 = !DILocation(line: 457, column: 3, scope: !1197)
!1205 = !DILocation(line: 463, column: 1, scope: !1092)
!1206 = distinct !DISubprogram(name: "check_script_secure", scope: !501, file: !501, line: 765, type: !1207, isLocal: false, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!384, !660, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "magic_t", file: !1210, line: 90, baseType: !1211)
!1210 = !DIFile(filename: "/usr/include/magic.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64, align: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "magic_set", file: !1210, line: 90, flags: DIFlagFwdDecl)
!1213 = !DILocalVariable(name: "script", arg: 1, scope: !1206, file: !501, line: 765, type: !660)
!1214 = !DILocation(line: 765, column: 38, scope: !1206)
!1215 = !DILocalVariable(name: "magic", arg: 2, scope: !1206, file: !501, line: 769, type: !1209)
!1216 = !DILocation(line: 769, column: 22, scope: !1206)
!1217 = !DILocalVariable(name: "flags", scope: !1206, file: !501, line: 771, type: !384)
!1218 = !DILocation(line: 771, column: 6, scope: !1206)
!1219 = !DILocalVariable(name: "ret", scope: !1206, file: !501, line: 772, type: !384)
!1220 = !DILocation(line: 772, column: 6, scope: !1206)
!1221 = !DILocalVariable(name: "ret_real", scope: !1206, file: !501, line: 772, type: !384)
!1222 = !DILocation(line: 772, column: 11, scope: !1206)
!1223 = !DILocalVariable(name: "ret_new", scope: !1206, file: !501, line: 772, type: !384)
!1224 = !DILocation(line: 772, column: 21, scope: !1206)
!1225 = !DILocalVariable(name: "file_buf", scope: !1206, file: !501, line: 773, type: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1227, line: 46, size: 1152, align: 64, elements: !1228)
!1227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!1228 = !{!1229, !1231, !1233, !1235, !1237, !1238, !1239, !1240, !1241, !1242, !1244, !1246, !1253, !1254, !1255}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1226, file: !1227, line: 48, baseType: !1230, size: 64, align: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !411, line: 124, baseType: !320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1226, file: !1227, line: 53, baseType: !1232, size: 64, align: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !411, line: 127, baseType: !320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1226, file: !1227, line: 61, baseType: !1234, size: 64, align: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !411, line: 130, baseType: !320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1226, file: !1227, line: 62, baseType: !1236, size: 32, align: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !411, line: 129, baseType: !368)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1226, file: !1227, line: 64, baseType: !504, size: 32, align: 32, offset: 224)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1226, file: !1227, line: 65, baseType: !507, size: 32, align: 32, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1226, file: !1227, line: 67, baseType: !384, size: 32, align: 32, offset: 288)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1226, file: !1227, line: 69, baseType: !1230, size: 64, align: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1226, file: !1227, line: 74, baseType: !410, size: 64, align: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1226, file: !1227, line: 78, baseType: !1243, size: 64, align: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !411, line: 153, baseType: !412)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1226, file: !1227, line: 80, baseType: !1245, size: 64, align: 64, offset: 512)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !411, line: 158, baseType: !412)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1226, file: !1227, line: 91, baseType: !1247, size: 128, align: 64, offset: 576)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1248, line: 120, size: 128, align: 64, elements: !1249)
!1248 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1247, file: !1248, line: 122, baseType: !475, size: 64, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1247, file: !1248, line: 123, baseType: !1252, size: 64, align: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !411, line: 175, baseType: !412)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1226, file: !1227, line: 92, baseType: !1247, size: 128, align: 64, offset: 704)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1226, file: !1227, line: 93, baseType: !1247, size: 128, align: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1226, file: !1227, line: 106, baseType: !1256, size: 192, align: 64, offset: 960)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 192, align: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 3)
!1259 = !DILocation(line: 773, column: 14, scope: !1206)
!1260 = !DILocalVariable(name: "real_buf", scope: !1206, file: !501, line: 773, type: !1226)
!1261 = !DILocation(line: 773, column: 24, scope: !1206)
!1262 = !DILocalVariable(name: "need_script_protection", scope: !1206, file: !501, line: 774, type: !461)
!1263 = !DILocation(line: 774, column: 6, scope: !1206)
!1264 = !DILocalVariable(name: "old_uid", scope: !1206, file: !501, line: 775, type: !503)
!1265 = !DILocation(line: 775, column: 8, scope: !1206)
!1266 = !DILocalVariable(name: "old_gid", scope: !1206, file: !501, line: 776, type: !506)
!1267 = !DILocation(line: 776, column: 8, scope: !1206)
!1268 = !DILocalVariable(name: "new_path", scope: !1206, file: !501, line: 777, type: !386)
!1269 = !DILocation(line: 777, column: 8, scope: !1206)
!1270 = !DILocalVariable(name: "sav_errno", scope: !1206, file: !501, line: 778, type: !384)
!1271 = !DILocation(line: 778, column: 6, scope: !1206)
!1272 = !DILocalVariable(name: "real_file_path", scope: !1206, file: !501, line: 779, type: !386)
!1273 = !DILocation(line: 779, column: 8, scope: !1206)
!1274 = !DILocalVariable(name: "orig_file_part", scope: !1206, file: !501, line: 780, type: !386)
!1275 = !DILocation(line: 780, column: 8, scope: !1206)
!1276 = !DILocalVariable(name: "new_file_part", scope: !1206, file: !501, line: 780, type: !386)
!1277 = !DILocation(line: 780, column: 25, scope: !1206)
!1278 = !DILocation(line: 782, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 782, column: 6)
!1280 = !DILocation(line: 782, column: 6, scope: !1206)
!1281 = !DILocation(line: 783, column: 3, scope: !1279)
!1282 = !DILocation(line: 788, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 788, column: 6)
!1284 = !DILocation(line: 788, column: 14, scope: !1283)
!1285 = !DILocation(line: 788, column: 25, scope: !1283)
!1286 = !DILocation(line: 788, column: 32, scope: !1283)
!1287 = !DILocation(line: 789, column: 29, scope: !1283)
!1288 = !DILocation(line: 789, column: 37, scope: !1283)
!1289 = !DILocation(line: 789, column: 45, scope: !1283)
!1290 = !DILocation(line: 789, column: 22, scope: !1283)
!1291 = !DILocation(line: 789, column: 57, scope: !1283)
!1292 = !DILocation(line: 789, column: 6, scope: !1283)
!1293 = !DILocation(line: 789, column: 14, scope: !1283)
!1294 = !DILocation(line: 789, column: 62, scope: !1283)
!1295 = !DILocation(line: 788, column: 6, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1206, file: !501, discriminator: 1)
!1297 = !DILocation(line: 790, column: 3, scope: !1283)
!1298 = !DILocation(line: 792, column: 14, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 792, column: 6)
!1300 = !DILocation(line: 792, column: 22, scope: !1299)
!1301 = !DILocation(line: 792, column: 7, scope: !1299)
!1302 = !DILocation(line: 792, column: 6, scope: !1206)
!1303 = !DILocation(line: 794, column: 24, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !501, line: 794, column: 7)
!1305 = distinct !DILexicalBlock(scope: !1299, file: !501, line: 792, column: 37)
!1306 = !DILocation(line: 794, column: 14, scope: !1304)
!1307 = !DILocation(line: 794, column: 12, scope: !1304)
!1308 = !DILocation(line: 794, column: 7, scope: !1305)
!1309 = !DILocation(line: 795, column: 8, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !501, line: 795, column: 8)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !501, line: 794, column: 34)
!1312 = !DILocation(line: 795, column: 12, scope: !1310)
!1313 = !DILocation(line: 795, column: 8, scope: !1311)
!1314 = !DILocation(line: 796, column: 83, scope: !1310)
!1315 = !DILocation(line: 796, column: 91, scope: !1310)
!1316 = !DILocation(line: 796, column: 5, scope: !1310)
!1317 = !DILocation(line: 798, column: 71, scope: !1310)
!1318 = !DILocation(line: 798, column: 79, scope: !1310)
!1319 = !DILocation(line: 798, column: 5, scope: !1310)
!1320 = !DILocation(line: 799, column: 4, scope: !1311)
!1321 = !DILocation(line: 801, column: 2, scope: !1305)
!1322 = !DILocation(line: 804, column: 6, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 804, column: 6)
!1324 = !DILocation(line: 804, column: 14, scope: !1323)
!1325 = !DILocation(line: 804, column: 6, scope: !1206)
!1326 = !DILocation(line: 805, column: 13, scope: !1323)
!1327 = !DILocation(line: 805, column: 11, scope: !1323)
!1328 = !DILocation(line: 805, column: 3, scope: !1323)
!1329 = !DILocation(line: 806, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 806, column: 6)
!1331 = !DILocation(line: 806, column: 14, scope: !1330)
!1332 = !DILocation(line: 806, column: 6, scope: !1206)
!1333 = !DILocation(line: 807, column: 13, scope: !1330)
!1334 = !DILocation(line: 807, column: 11, scope: !1330)
!1335 = !DILocation(line: 807, column: 3, scope: !1330)
!1336 = !DILocation(line: 809, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 809, column: 6)
!1338 = !DILocation(line: 809, column: 15, scope: !1337)
!1339 = !DILocation(line: 809, column: 19, scope: !1337)
!1340 = !DILocation(line: 809, column: 30, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1337, file: !501, discriminator: 1)
!1342 = !DILocation(line: 809, column: 38, scope: !1341)
!1343 = !DILocation(line: 809, column: 22, scope: !1341)
!1344 = !DILocation(line: 809, column: 44, scope: !1341)
!1345 = !DILocation(line: 810, column: 7, scope: !1337)
!1346 = !DILocation(line: 810, column: 15, scope: !1337)
!1347 = !DILocation(line: 810, column: 19, scope: !1337)
!1348 = !DILocation(line: 810, column: 30, scope: !1341)
!1349 = !DILocation(line: 810, column: 38, scope: !1341)
!1350 = !DILocation(line: 810, column: 22, scope: !1341)
!1351 = !DILocation(line: 809, column: 6, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1206, file: !501, discriminator: 2)
!1353 = !DILocation(line: 811, column: 81, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1337, file: !501, line: 810, column: 45)
!1355 = !DILocation(line: 811, column: 89, scope: !1354)
!1356 = !DILocation(line: 811, column: 94, scope: !1354)
!1357 = !DILocation(line: 811, column: 102, scope: !1354)
!1358 = !DILocation(line: 811, column: 107, scope: !1354)
!1359 = !DILocation(line: 811, column: 115, scope: !1354)
!1360 = !DILocation(line: 811, column: 3, scope: !1354)
!1361 = !DILocation(line: 813, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !501, line: 813, column: 7)
!1363 = !DILocation(line: 813, column: 16, scope: !1362)
!1364 = !DILocation(line: 813, column: 20, scope: !1362)
!1365 = !DILocation(line: 813, column: 31, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1362, file: !501, discriminator: 1)
!1367 = !DILocation(line: 813, column: 23, scope: !1366)
!1368 = !DILocation(line: 813, column: 41, scope: !1366)
!1369 = !DILocation(line: 814, column: 8, scope: !1362)
!1370 = !DILocation(line: 814, column: 16, scope: !1362)
!1371 = !DILocation(line: 814, column: 20, scope: !1362)
!1372 = !DILocation(line: 814, column: 31, scope: !1366)
!1373 = !DILocation(line: 814, column: 23, scope: !1366)
!1374 = !DILocation(line: 813, column: 7, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1354, file: !501, discriminator: 2)
!1376 = !DILocation(line: 815, column: 76, scope: !1362)
!1377 = !DILocation(line: 815, column: 84, scope: !1362)
!1378 = !DILocation(line: 815, column: 89, scope: !1362)
!1379 = !DILocation(line: 815, column: 97, scope: !1362)
!1380 = !DILocation(line: 815, column: 102, scope: !1362)
!1381 = !DILocation(line: 815, column: 110, scope: !1362)
!1382 = !DILocation(line: 815, column: 4, scope: !1362)
!1383 = !DILocation(line: 817, column: 3, scope: !1354)
!1384 = !DILocation(line: 821, column: 22, scope: !1206)
!1385 = !DILocation(line: 821, column: 30, scope: !1206)
!1386 = !DILocation(line: 821, column: 13, scope: !1206)
!1387 = !DILocation(line: 821, column: 11, scope: !1206)
!1388 = !DILocation(line: 822, column: 15, scope: !1206)
!1389 = !DILocation(line: 822, column: 14, scope: !1206)
!1390 = !DILocation(line: 822, column: 12, scope: !1206)
!1391 = !DILocation(line: 824, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 824, column: 6)
!1393 = !DILocation(line: 824, column: 15, scope: !1392)
!1394 = !DILocation(line: 824, column: 19, scope: !1392)
!1395 = !DILocation(line: 824, column: 30, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1392, file: !501, discriminator: 1)
!1397 = !DILocation(line: 824, column: 22, scope: !1396)
!1398 = !DILocation(line: 824, column: 40, scope: !1396)
!1399 = !DILocation(line: 825, column: 7, scope: !1392)
!1400 = !DILocation(line: 825, column: 15, scope: !1392)
!1401 = !DILocation(line: 825, column: 19, scope: !1392)
!1402 = !DILocation(line: 825, column: 30, scope: !1396)
!1403 = !DILocation(line: 825, column: 22, scope: !1396)
!1404 = !DILocation(line: 824, column: 6, scope: !1352)
!1405 = !DILocation(line: 826, column: 84, scope: !1392)
!1406 = !DILocation(line: 826, column: 92, scope: !1392)
!1407 = !DILocation(line: 826, column: 97, scope: !1392)
!1408 = !DILocation(line: 826, column: 105, scope: !1392)
!1409 = !DILocation(line: 826, column: 110, scope: !1392)
!1410 = !DILocation(line: 826, column: 118, scope: !1392)
!1411 = !DILocation(line: 826, column: 3, scope: !1392)
!1412 = !DILocation(line: 828, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 828, column: 6)
!1414 = !DILocation(line: 828, column: 6, scope: !1206)
!1415 = !DILocation(line: 830, column: 61, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !501, line: 829, column: 2)
!1417 = !DILocation(line: 830, column: 69, scope: !1416)
!1418 = !DILocation(line: 830, column: 87, scope: !1416)
!1419 = !DILocation(line: 830, column: 78, scope: !1416)
!1420 = !DILocation(line: 830, column: 3, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1416, file: !501, discriminator: 1)
!1422 = !DILocation(line: 832, column: 3, scope: !1416)
!1423 = !DILocation(line: 835, column: 17, scope: !1206)
!1424 = !DILocation(line: 837, column: 27, scope: !1206)
!1425 = !DILocation(line: 837, column: 35, scope: !1206)
!1426 = !DILocation(line: 837, column: 19, scope: !1206)
!1427 = !DILocation(line: 837, column: 17, scope: !1206)
!1428 = !DILocation(line: 838, column: 26, scope: !1206)
!1429 = !DILocation(line: 838, column: 18, scope: !1206)
!1430 = !DILocation(line: 838, column: 16, scope: !1206)
!1431 = !DILocation(line: 839, column: 13, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 839, column: 6)
!1433 = !DILocation(line: 839, column: 21, scope: !1432)
!1434 = !DILocation(line: 839, column: 30, scope: !1432)
!1435 = !DILocation(line: 839, column: 6, scope: !1432)
!1436 = !DILocation(line: 839, column: 6, scope: !1206)
!1437 = !DILocation(line: 845, column: 14, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !501, line: 845, column: 7)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !501, line: 839, column: 41)
!1440 = !DILocation(line: 845, column: 29, scope: !1438)
!1441 = !DILocation(line: 845, column: 34, scope: !1438)
!1442 = !DILocation(line: 845, column: 48, scope: !1438)
!1443 = !DILocation(line: 845, column: 7, scope: !1438)
!1444 = !DILocation(line: 845, column: 7, scope: !1439)
!1445 = !DILocation(line: 846, column: 21, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !501, line: 845, column: 54)
!1447 = !DILocation(line: 846, column: 19, scope: !1446)
!1448 = !DILocation(line: 847, column: 23, scope: !1446)
!1449 = !DILocation(line: 847, column: 39, scope: !1446)
!1450 = !DILocation(line: 847, column: 37, scope: !1446)
!1451 = !DILocation(line: 847, column: 54, scope: !1446)
!1452 = !DILocation(line: 847, column: 67, scope: !1446)
!1453 = !DILocation(line: 847, column: 82, scope: !1446)
!1454 = !DILocation(line: 847, column: 60, scope: !1446)
!1455 = !DILocation(line: 847, column: 58, scope: !1446)
!1456 = !DILocation(line: 847, column: 87, scope: !1446)
!1457 = !DILocation(line: 847, column: 16, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1446, file: !501, discriminator: 1)
!1459 = !DILocation(line: 847, column: 13, scope: !1446)
!1460 = !DILocation(line: 848, column: 12, scope: !1446)
!1461 = !DILocation(line: 848, column: 22, scope: !1446)
!1462 = !DILocation(line: 848, column: 38, scope: !1446)
!1463 = !DILocation(line: 848, column: 52, scope: !1446)
!1464 = !DILocation(line: 848, column: 58, scope: !1446)
!1465 = !DILocation(line: 848, column: 56, scope: !1446)
!1466 = !DILocation(line: 848, column: 4, scope: !1446)
!1467 = !DILocation(line: 849, column: 11, scope: !1446)
!1468 = !DILocation(line: 849, column: 23, scope: !1446)
!1469 = !DILocation(line: 849, column: 37, scope: !1446)
!1470 = !DILocation(line: 849, column: 43, scope: !1446)
!1471 = !DILocation(line: 849, column: 41, scope: !1446)
!1472 = !DILocation(line: 849, column: 20, scope: !1446)
!1473 = !DILocation(line: 849, column: 60, scope: !1446)
!1474 = !DILocation(line: 849, column: 75, scope: !1446)
!1475 = !DILocation(line: 849, column: 4, scope: !1446)
!1476 = !DILocation(line: 852, column: 20, scope: !1446)
!1477 = !DILocation(line: 852, column: 15, scope: !1446)
!1478 = !DILocation(line: 852, column: 13, scope: !1446)
!1479 = !DILocation(line: 853, column: 19, scope: !1446)
!1480 = !DILocation(line: 853, column: 14, scope: !1446)
!1481 = !DILocation(line: 853, column: 12, scope: !1446)
!1482 = !DILocation(line: 854, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1446, file: !501, line: 854, column: 8)
!1484 = !DILocation(line: 854, column: 18, scope: !1483)
!1485 = !DILocation(line: 855, column: 9, scope: !1483)
!1486 = !DILocation(line: 855, column: 17, scope: !1483)
!1487 = !DILocation(line: 856, column: 18, scope: !1483)
!1488 = !DILocation(line: 856, column: 37, scope: !1483)
!1489 = !DILocation(line: 856, column: 25, scope: !1483)
!1490 = !DILocation(line: 856, column: 44, scope: !1483)
!1491 = !DILocation(line: 857, column: 18, scope: !1483)
!1492 = !DILocation(line: 857, column: 37, scope: !1483)
!1493 = !DILocation(line: 857, column: 25, scope: !1483)
!1494 = !DILocation(line: 854, column: 8, scope: !1458)
!1495 = !DILocation(line: 859, column: 11, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1483, file: !501, line: 857, column: 46)
!1497 = !DILocation(line: 859, column: 6, scope: !1496)
!1498 = !DILocation(line: 859, column: 33, scope: !1496)
!1499 = !DILocation(line: 860, column: 16, scope: !1496)
!1500 = !DILocation(line: 860, column: 14, scope: !1496)
!1501 = !DILocation(line: 861, column: 20, scope: !1496)
!1502 = !DILocation(line: 862, column: 4, scope: !1496)
!1503 = !DILocation(line: 863, column: 3, scope: !1446)
!1504 = !DILocation(line: 865, column: 14, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1439, file: !501, line: 865, column: 7)
!1506 = !DILocation(line: 865, column: 22, scope: !1505)
!1507 = !DILocation(line: 865, column: 31, scope: !1505)
!1508 = !DILocation(line: 865, column: 7, scope: !1505)
!1509 = !DILocation(line: 865, column: 7, scope: !1439)
!1510 = !DILocation(line: 867, column: 21, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1505, file: !501, line: 865, column: 42)
!1512 = !DILocation(line: 867, column: 29, scope: !1511)
!1513 = !DILocation(line: 867, column: 4, scope: !1511)
!1514 = !DILocation(line: 868, column: 3, scope: !1511)
!1515 = !DILocation(line: 869, column: 2, scope: !1439)
!1516 = !DILocation(line: 871, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 871, column: 6)
!1518 = !DILocation(line: 871, column: 6, scope: !1206)
!1519 = !DILocation(line: 872, column: 8, scope: !1517)
!1520 = !DILocation(line: 872, column: 3, scope: !1517)
!1521 = !DILocation(line: 874, column: 9, scope: !1517)
!1522 = !DILocation(line: 874, column: 4, scope: !1517)
!1523 = !DILocation(line: 874, column: 31, scope: !1517)
!1524 = !DILocation(line: 877, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 877, column: 6)
!1526 = !DILocation(line: 877, column: 28, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1525, file: !501, discriminator: 1)
!1528 = !DILocation(line: 877, column: 11, scope: !1527)
!1529 = !DILocation(line: 877, column: 45, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1525, file: !501, discriminator: 2)
!1531 = !DILocation(line: 877, column: 53, scope: !1530)
!1532 = !DILocation(line: 877, column: 11, scope: !1530)
!1533 = !DILocation(line: 877, column: 11, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1525, file: !501, discriminator: 3)
!1535 = !DILocation(line: 877, column: 6, scope: !1534)
!1536 = !DILocation(line: 878, column: 68, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1525, file: !501, line: 877, column: 74)
!1538 = !DILocation(line: 878, column: 76, scope: !1537)
!1539 = !DILocation(line: 878, column: 3, scope: !1537)
!1540 = !DILocation(line: 879, column: 3, scope: !1537)
!1541 = !DILocation(line: 882, column: 8, scope: !1206)
!1542 = !DILocation(line: 885, column: 31, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 885, column: 6)
!1544 = !DILocation(line: 885, column: 39, scope: !1543)
!1545 = !DILocation(line: 885, column: 44, scope: !1543)
!1546 = !DILocation(line: 885, column: 52, scope: !1543)
!1547 = !DILocation(line: 885, column: 6, scope: !1543)
!1548 = !DILocation(line: 885, column: 6, scope: !1206)
!1549 = !DILocation(line: 886, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !501, line: 885, column: 58)
!1551 = !DILocation(line: 887, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !501, line: 887, column: 7)
!1553 = !DILocation(line: 887, column: 15, scope: !1552)
!1554 = !DILocation(line: 887, column: 19, scope: !1552)
!1555 = !DILocation(line: 887, column: 24, scope: !1552)
!1556 = !DILocation(line: 887, column: 27, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1552, file: !501, discriminator: 1)
!1558 = !DILocation(line: 887, column: 35, scope: !1557)
!1559 = !DILocation(line: 887, column: 39, scope: !1557)
!1560 = !DILocation(line: 887, column: 44, scope: !1557)
!1561 = !DILocation(line: 888, column: 17, scope: !1552)
!1562 = !DILocation(line: 888, column: 24, scope: !1552)
!1563 = !DILocation(line: 888, column: 29, scope: !1552)
!1564 = !DILocation(line: 888, column: 42, scope: !1557)
!1565 = !DILocation(line: 888, column: 50, scope: !1557)
!1566 = !DILocation(line: 888, column: 60, scope: !1557)
!1567 = !DILocation(line: 888, column: 73, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1552, file: !501, discriminator: 2)
!1569 = !DILocation(line: 888, column: 81, scope: !1568)
!1570 = !DILocation(line: 888, column: 93, scope: !1568)
!1571 = !DILocation(line: 889, column: 17, scope: !1552)
!1572 = !DILocation(line: 889, column: 24, scope: !1552)
!1573 = !DILocation(line: 889, column: 29, scope: !1552)
!1574 = !DILocation(line: 889, column: 42, scope: !1557)
!1575 = !DILocation(line: 889, column: 50, scope: !1557)
!1576 = !DILocation(line: 889, column: 60, scope: !1557)
!1577 = !DILocation(line: 889, column: 73, scope: !1568)
!1578 = !DILocation(line: 889, column: 81, scope: !1568)
!1579 = !DILocation(line: 887, column: 7, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1550, file: !501, discriminator: 2)
!1581 = !DILocation(line: 890, column: 27, scope: !1552)
!1582 = !DILocation(line: 890, column: 4, scope: !1552)
!1583 = !DILocation(line: 891, column: 2, scope: !1550)
!1584 = !DILocation(line: 892, column: 98, scope: !1543)
!1585 = !DILocation(line: 892, column: 106, scope: !1543)
!1586 = !DILocation(line: 892, column: 115, scope: !1543)
!1587 = !DILocation(line: 892, column: 123, scope: !1543)
!1588 = !DILocation(line: 892, column: 128, scope: !1543)
!1589 = !DILocation(line: 892, column: 136, scope: !1543)
!1590 = !DILocation(line: 892, column: 3, scope: !1543)
!1591 = !DILocation(line: 895, column: 2, scope: !1206)
!1592 = !DILocation(line: 895, column: 10, scope: !1206)
!1593 = !DILocation(line: 895, column: 16, scope: !1206)
!1594 = !DILocation(line: 897, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 897, column: 6)
!1596 = !DILocation(line: 897, column: 12, scope: !1595)
!1597 = !DILocation(line: 897, column: 15, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1595, file: !501, discriminator: 1)
!1599 = !DILocation(line: 897, column: 21, scope: !1598)
!1600 = !DILocation(line: 897, column: 6, scope: !1598)
!1601 = !DILocalVariable(name: "magic_desc", scope: !1602, file: !501, line: 898, type: !664)
!1602 = distinct !DILexicalBlock(scope: !1595, file: !501, line: 897, column: 29)
!1603 = !DILocation(line: 898, column: 15, scope: !1602)
!1604 = !DILocation(line: 898, column: 39, scope: !1602)
!1605 = !DILocation(line: 898, column: 46, scope: !1602)
!1606 = !DILocation(line: 898, column: 63, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1602, file: !501, discriminator: 1)
!1608 = !DILocation(line: 898, column: 46, scope: !1607)
!1609 = !DILocation(line: 898, column: 80, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1602, file: !501, discriminator: 2)
!1611 = !DILocation(line: 898, column: 88, scope: !1610)
!1612 = !DILocation(line: 898, column: 46, scope: !1610)
!1613 = !DILocation(line: 898, column: 46, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1602, file: !501, discriminator: 3)
!1615 = !DILocation(line: 898, column: 28, scope: !1614)
!1616 = !DILocation(line: 898, column: 15, scope: !1614)
!1617 = !DILocation(line: 899, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1602, file: !501, line: 899, column: 7)
!1619 = !DILocation(line: 899, column: 8, scope: !1618)
!1620 = !DILocation(line: 899, column: 42, scope: !1618)
!1621 = !DILocation(line: 900, column: 15, scope: !1618)
!1622 = !DILocation(line: 900, column: 8, scope: !1618)
!1623 = !DILocation(line: 899, column: 7, scope: !1607)
!1624 = !DILocation(line: 901, column: 65, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1618, file: !501, line: 900, column: 46)
!1626 = !DILocation(line: 901, column: 73, scope: !1625)
!1627 = !DILocation(line: 901, column: 4, scope: !1625)
!1628 = !DILocation(line: 902, column: 4, scope: !1625)
!1629 = !DILocation(line: 902, column: 12, scope: !1625)
!1630 = !DILocation(line: 902, column: 18, scope: !1625)
!1631 = !DILocation(line: 903, column: 3, scope: !1625)
!1632 = !DILocation(line: 904, column: 2, scope: !1602)
!1633 = !DILocation(line: 907, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 907, column: 6)
!1635 = !DILocation(line: 907, column: 6, scope: !1206)
!1636 = !DILocation(line: 908, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !501, line: 908, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !501, line: 907, column: 31)
!1639 = !DILocation(line: 908, column: 7, scope: !1638)
!1640 = !DILocation(line: 909, column: 9, scope: !1637)
!1641 = !DILocation(line: 909, column: 4, scope: !1637)
!1642 = !DILocation(line: 911, column: 10, scope: !1638)
!1643 = !DILocation(line: 911, column: 3, scope: !1638)
!1644 = !DILocation(line: 915, column: 26, scope: !1206)
!1645 = !DILocation(line: 915, column: 34, scope: !1206)
!1646 = !DILocation(line: 915, column: 43, scope: !1206)
!1647 = !DILocation(line: 915, column: 11, scope: !1206)
!1648 = !DILocation(line: 915, column: 8, scope: !1206)
!1649 = !DILocation(line: 917, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1206, file: !501, line: 917, column: 6)
!1651 = !DILocation(line: 917, column: 6, scope: !1206)
!1652 = !DILocation(line: 918, column: 27, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !501, line: 917, column: 22)
!1654 = !DILocation(line: 918, column: 43, scope: !1653)
!1655 = !DILocation(line: 918, column: 12, scope: !1653)
!1656 = !DILocation(line: 918, column: 9, scope: !1653)
!1657 = !DILocation(line: 919, column: 8, scope: !1653)
!1658 = !DILocation(line: 919, column: 3, scope: !1653)
!1659 = !DILocation(line: 920, column: 2, scope: !1653)
!1660 = !DILocation(line: 922, column: 9, scope: !1206)
!1661 = !DILocation(line: 922, column: 2, scope: !1206)
!1662 = !DILocation(line: 923, column: 1, scope: !1206)
!1663 = distinct !DISubprogram(name: "find_path", scope: !501, file: !501, line: 512, type: !1664, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!384, !660}
!1666 = !DILocalVariable(name: "script", arg: 1, scope: !1663, file: !501, line: 512, type: !660)
!1667 = !DILocation(line: 512, column: 28, scope: !1663)
!1668 = !DILocalVariable(name: "filename_len", scope: !1663, file: !501, line: 514, type: !431)
!1669 = !DILocation(line: 514, column: 9, scope: !1663)
!1670 = !DILocalVariable(name: "file_len", scope: !1663, file: !501, line: 515, type: !431)
!1671 = !DILocation(line: 515, column: 9, scope: !1663)
!1672 = !DILocalVariable(name: "path_len", scope: !1663, file: !501, line: 516, type: !431)
!1673 = !DILocation(line: 516, column: 9, scope: !1663)
!1674 = !DILocalVariable(name: "file", scope: !1663, file: !501, line: 517, type: !386)
!1675 = !DILocation(line: 517, column: 8, scope: !1663)
!1676 = !DILocation(line: 517, column: 15, scope: !1663)
!1677 = !DILocation(line: 517, column: 23, scope: !1663)
!1678 = !DILocalVariable(name: "buf", scope: !1663, file: !501, line: 518, type: !1226)
!1679 = !DILocation(line: 518, column: 14, scope: !1663)
!1680 = !DILocalVariable(name: "ret", scope: !1663, file: !501, line: 519, type: !384)
!1681 = !DILocation(line: 519, column: 6, scope: !1663)
!1682 = !DILocalVariable(name: "ret_val", scope: !1663, file: !501, line: 520, type: !384)
!1683 = !DILocation(line: 520, column: 6, scope: !1663)
!1684 = !DILocalVariable(name: "sgid_num", scope: !1663, file: !501, line: 521, type: !384)
!1685 = !DILocation(line: 521, column: 6, scope: !1663)
!1686 = !DILocalVariable(name: "sgid_list", scope: !1663, file: !501, line: 522, type: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!1688 = !DILocation(line: 522, column: 9, scope: !1663)
!1689 = !DILocalVariable(name: "subp", scope: !1663, file: !501, line: 523, type: !664)
!1690 = !DILocation(line: 523, column: 14, scope: !1663)
!1691 = !DILocalVariable(name: "got_eacces", scope: !1663, file: !501, line: 524, type: !461)
!1692 = !DILocation(line: 524, column: 6, scope: !1663)
!1693 = !DILocalVariable(name: "p", scope: !1663, file: !501, line: 525, type: !664)
!1694 = !DILocation(line: 525, column: 14, scope: !1663)
!1695 = !DILocation(line: 528, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 528, column: 6)
!1697 = !DILocation(line: 528, column: 6, scope: !1696)
!1698 = !DILocation(line: 528, column: 12, scope: !1696)
!1699 = !DILocation(line: 528, column: 6, scope: !1663)
!1700 = !DILocation(line: 529, column: 3, scope: !1696)
!1701 = !DILocation(line: 531, column: 24, scope: !1663)
!1702 = !DILocation(line: 531, column: 17, scope: !1663)
!1703 = !DILocation(line: 531, column: 15, scope: !1663)
!1704 = !DILocation(line: 532, column: 6, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 532, column: 6)
!1706 = !DILocation(line: 532, column: 19, scope: !1705)
!1707 = !DILocation(line: 532, column: 6, scope: !1663)
!1708 = !DILocation(line: 533, column: 11, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !501, line: 532, column: 31)
!1710 = !DILocation(line: 534, column: 3, scope: !1709)
!1711 = !DILocation(line: 538, column: 14, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 538, column: 6)
!1713 = !DILocation(line: 538, column: 6, scope: !1712)
!1714 = !DILocation(line: 538, column: 25, scope: !1712)
!1715 = !DILocation(line: 538, column: 6, scope: !1663)
!1716 = !DILocation(line: 539, column: 11, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !501, line: 538, column: 33)
!1718 = !DILocation(line: 540, column: 3, scope: !1717)
!1719 = !DILocation(line: 545, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 545, column: 6)
!1721 = !DILocation(line: 545, column: 6, scope: !1663)
!1722 = !DILocation(line: 546, column: 10, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !501, line: 545, column: 13)
!1724 = !DILocation(line: 546, column: 8, scope: !1723)
!1725 = !DILocation(line: 548, column: 8, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !501, line: 548, column: 7)
!1727 = !DILocation(line: 548, column: 7, scope: !1723)
!1728 = !DILocalVariable(name: "cs_path_len", scope: !1729, file: !501, line: 549, type: !431)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !501, line: 548, column: 14)
!1730 = !DILocation(line: 549, column: 11, scope: !1729)
!1731 = !DILocation(line: 550, column: 33, scope: !1729)
!1732 = !DILocation(line: 550, column: 31, scope: !1729)
!1733 = !DILocation(line: 550, column: 12, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1729, file: !501, discriminator: 1)
!1735 = !DILocation(line: 550, column: 9, scope: !1729)
!1736 = !DILocation(line: 551, column: 21, scope: !1729)
!1737 = !DILocation(line: 551, column: 27, scope: !1729)
!1738 = !DILocation(line: 551, column: 4, scope: !1729)
!1739 = !DILocation(line: 552, column: 21, scope: !1729)
!1740 = !DILocation(line: 553, column: 3, scope: !1729)
!1741 = !DILocation(line: 554, column: 2, scope: !1723)
!1742 = !DILocation(line: 559, column: 22, scope: !1663)
!1743 = !DILocation(line: 559, column: 13, scope: !1663)
!1744 = !DILocation(line: 559, column: 11, scope: !1663)
!1745 = !DILocation(line: 560, column: 22, scope: !1663)
!1746 = !DILocation(line: 560, column: 13, scope: !1663)
!1747 = !DILocation(line: 560, column: 41, scope: !1663)
!1748 = !DILocation(line: 560, column: 11, scope: !1663)
!1749 = !DILocation(line: 562, column: 6, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 562, column: 6)
!1751 = !DILocation(line: 562, column: 15, scope: !1750)
!1752 = !DILocation(line: 562, column: 6, scope: !1663)
!1753 = !DILocation(line: 563, column: 11, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !501, line: 562, column: 26)
!1755 = !DILocation(line: 564, column: 3, scope: !1754)
!1756 = !DILocation(line: 568, column: 6, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 568, column: 6)
!1758 = !DILocation(line: 568, column: 14, scope: !1757)
!1759 = !DILocation(line: 568, column: 6, scope: !1663)
!1760 = !DILocation(line: 569, column: 15, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !501, line: 569, column: 7)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !501, line: 568, column: 19)
!1763 = !DILocation(line: 569, column: 23, scope: !1761)
!1764 = !DILocation(line: 569, column: 7, scope: !1761)
!1765 = !DILocation(line: 569, column: 7, scope: !1762)
!1766 = !DILocation(line: 570, column: 58, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1761, file: !501, line: 569, column: 29)
!1768 = !DILocation(line: 570, column: 66, scope: !1767)
!1769 = !DILocation(line: 570, column: 4, scope: !1767)
!1770 = !DILocation(line: 571, column: 12, scope: !1767)
!1771 = !DILocation(line: 572, column: 4, scope: !1767)
!1772 = !DILocation(line: 576, column: 14, scope: !1762)
!1773 = !DILocation(line: 576, column: 12, scope: !1762)
!1774 = !DILocation(line: 577, column: 32, scope: !1762)
!1775 = !DILocation(line: 577, column: 24, scope: !1762)
!1776 = !DILocation(line: 577, column: 41, scope: !1762)
!1777 = !DILocation(line: 577, column: 46, scope: !1762)
!1778 = !DILocation(line: 577, column: 16, scope: !1762)
!1779 = !DILocation(line: 577, column: 15, scope: !1762)
!1780 = !DILocation(line: 577, column: 13, scope: !1762)
!1781 = !DILocation(line: 578, column: 24, scope: !1762)
!1782 = !DILocation(line: 578, column: 34, scope: !1762)
!1783 = !DILocation(line: 578, column: 14, scope: !1762)
!1784 = !DILocation(line: 578, column: 12, scope: !1762)
!1785 = !DILocation(line: 579, column: 21, scope: !1762)
!1786 = !DILocation(line: 579, column: 3, scope: !1762)
!1787 = !DILocation(line: 579, column: 25, scope: !1762)
!1788 = !DILocation(line: 582, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1762, file: !501, line: 582, column: 7)
!1790 = !DILocation(line: 582, column: 29, scope: !1789)
!1791 = !DILocation(line: 582, column: 7, scope: !1789)
!1792 = !DILocation(line: 582, column: 7, scope: !1762)
!1793 = !DILocation(line: 583, column: 4, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !501, line: 582, column: 35)
!1795 = !DILocation(line: 584, column: 12, scope: !1794)
!1796 = !DILocation(line: 585, column: 4, scope: !1794)
!1797 = !DILocation(line: 587, column: 2, scope: !1762)
!1798 = !DILocation(line: 588, column: 6, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 588, column: 6)
!1800 = !DILocation(line: 588, column: 14, scope: !1799)
!1801 = !DILocation(line: 588, column: 18, scope: !1799)
!1802 = !DILocation(line: 588, column: 29, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1799, file: !501, discriminator: 1)
!1804 = !DILocation(line: 588, column: 37, scope: !1803)
!1805 = !DILocation(line: 588, column: 21, scope: !1803)
!1806 = !DILocation(line: 588, column: 6, scope: !1803)
!1807 = !DILocation(line: 589, column: 57, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1799, file: !501, line: 588, column: 43)
!1809 = !DILocation(line: 589, column: 65, scope: !1808)
!1810 = !DILocation(line: 589, column: 3, scope: !1808)
!1811 = !DILocation(line: 590, column: 11, scope: !1808)
!1812 = !DILocation(line: 591, column: 3, scope: !1808)
!1813 = !DILocation(line: 594, column: 11, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 594, column: 2)
!1815 = !DILocation(line: 594, column: 9, scope: !1814)
!1816 = !DILocation(line: 594, column: 7, scope: !1814)
!1817 = !DILocation(line: 596, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !501, line: 595, column: 2)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !501, line: 594, column: 2)
!1820 = !DILocation(line: 596, column: 26, scope: !1818)
!1821 = !DILocation(line: 596, column: 24, scope: !1818)
!1822 = !DILocation(line: 596, column: 35, scope: !1818)
!1823 = !DILocation(line: 596, column: 3, scope: !1818)
!1824 = !DILocalVariable(name: "buffer", scope: !1818, file: !501, line: 596, type: !1825)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, align: 8, elements: !1826)
!1826 = !{!1827}
!1827 = !DISubrange(count: -1)
!1828 = !DIExpression(DW_OP_deref)
!1829 = !DILocation(line: 596, column: 8, scope: !1818)
!1830 = !DILocation(line: 598, column: 21, scope: !1818)
!1831 = !DILocation(line: 598, column: 10, scope: !1818)
!1832 = !DILocation(line: 598, column: 8, scope: !1818)
!1833 = !DILocation(line: 602, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1818, file: !501, line: 602, column: 7)
!1835 = !DILocation(line: 602, column: 15, scope: !1834)
!1836 = !DILocation(line: 602, column: 19, scope: !1834)
!1837 = !DILocation(line: 602, column: 17, scope: !1834)
!1838 = !DILocation(line: 602, column: 12, scope: !1834)
!1839 = !DILocation(line: 602, column: 7, scope: !1818)
!1840 = !DILocation(line: 604, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !501, line: 604, column: 8)
!1842 = distinct !DILexicalBlock(scope: !1834, file: !501, line: 602, column: 29)
!1843 = !DILocation(line: 604, column: 8, scope: !1841)
!1844 = !DILocation(line: 604, column: 14, scope: !1841)
!1845 = !DILocation(line: 604, column: 8, scope: !1842)
!1846 = !DILocation(line: 605, column: 13, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1841, file: !501, line: 604, column: 23)
!1848 = !DILocation(line: 606, column: 5, scope: !1847)
!1849 = !DILocation(line: 610, column: 4, scope: !1842)
!1850 = !DILocalVariable(name: "pend", scope: !1818, file: !501, line: 614, type: !386)
!1851 = !DILocation(line: 614, column: 9, scope: !1818)
!1852 = !DILocation(line: 614, column: 33, scope: !1818)
!1853 = !DILocation(line: 614, column: 45, scope: !1818)
!1854 = !DILocation(line: 614, column: 52, scope: !1818)
!1855 = !DILocation(line: 614, column: 50, scope: !1818)
!1856 = !DILocation(line: 614, column: 16, scope: !1818)
!1857 = !DILocation(line: 615, column: 4, scope: !1818)
!1858 = !DILocation(line: 615, column: 9, scope: !1818)
!1859 = !DILocation(line: 616, column: 11, scope: !1818)
!1860 = !DILocation(line: 616, column: 19, scope: !1818)
!1861 = !DILocation(line: 616, column: 23, scope: !1818)
!1862 = !DILocation(line: 616, column: 21, scope: !1818)
!1863 = !DILocation(line: 616, column: 16, scope: !1818)
!1864 = !DILocation(line: 616, column: 30, scope: !1818)
!1865 = !DILocation(line: 616, column: 36, scope: !1818)
!1866 = !DILocation(line: 616, column: 45, scope: !1818)
!1867 = !DILocation(line: 616, column: 3, scope: !1818)
!1868 = !DILocation(line: 618, column: 9, scope: !1818)
!1869 = !DILocation(line: 618, column: 7, scope: !1818)
!1870 = !DILocation(line: 619, column: 8, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1818, file: !501, line: 619, column: 7)
!1872 = !DILocation(line: 619, column: 7, scope: !1818)
!1873 = !DILocation(line: 620, column: 12, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !501, line: 620, column: 8)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !501, line: 619, column: 13)
!1876 = !DILocation(line: 620, column: 11, scope: !1874)
!1877 = !DILocation(line: 620, column: 22, scope: !1874)
!1878 = !DILocation(line: 620, column: 8, scope: !1875)
!1879 = !DILocation(line: 621, column: 6, scope: !1874)
!1880 = !DILocation(line: 621, column: 10, scope: !1874)
!1881 = !DILocation(line: 621, column: 4, scope: !1874)
!1882 = !DILocation(line: 622, column: 34, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1874, file: !501, line: 622, column: 13)
!1884 = !DILocation(line: 622, column: 42, scope: !1883)
!1885 = !DILocation(line: 622, column: 47, scope: !1883)
!1886 = !DILocation(line: 622, column: 55, scope: !1883)
!1887 = !DILocation(line: 622, column: 14, scope: !1883)
!1888 = !DILocation(line: 622, column: 13, scope: !1874)
!1889 = !DILocation(line: 623, column: 6, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !501, line: 622, column: 61)
!1891 = !DILocation(line: 623, column: 10, scope: !1890)
!1892 = !DILocation(line: 624, column: 4, scope: !1890)
!1893 = !DILocation(line: 626, column: 110, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1883, file: !501, line: 624, column: 11)
!1895 = !DILocation(line: 626, column: 118, scope: !1894)
!1896 = !DILocation(line: 626, column: 5, scope: !1894)
!1897 = !DILocation(line: 629, column: 22, scope: !1894)
!1898 = !DILocation(line: 629, column: 5, scope: !1894)
!1899 = !DILocation(line: 631, column: 13, scope: !1894)
!1900 = !DILocation(line: 632, column: 16, scope: !1894)
!1901 = !DILocation(line: 633, column: 5, scope: !1894)
!1902 = !DILocation(line: 635, column: 3, scope: !1875)
!1903 = !DILocation(line: 637, column: 12, scope: !1818)
!1904 = !DILocation(line: 637, column: 11, scope: !1818)
!1905 = !DILocation(line: 637, column: 3, scope: !1818)
!1906 = !DILocation(line: 644, column: 9, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !501, line: 644, column: 8)
!1908 = distinct !DILexicalBlock(scope: !1818, file: !501, line: 638, column: 3)
!1909 = !DILocation(line: 644, column: 8, scope: !1908)
!1910 = !DILocation(line: 645, column: 16, scope: !1907)
!1911 = !DILocation(line: 645, column: 5, scope: !1907)
!1912 = !DILocation(line: 644, column: 9, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1907, file: !501, discriminator: 1)
!1914 = !DILocation(line: 657, column: 4, scope: !1908)
!1915 = !DILocation(line: 663, column: 12, scope: !1908)
!1916 = !DILocation(line: 664, column: 4, scope: !1908)
!1917 = !DILocation(line: 667, column: 12, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1818, file: !501, line: 667, column: 7)
!1919 = !DILocation(line: 667, column: 7, scope: !1918)
!1920 = !DILocation(line: 667, column: 15, scope: !1918)
!1921 = !DILocation(line: 667, column: 7, scope: !1818)
!1922 = !DILocation(line: 668, column: 4, scope: !1918)
!1923 = !DILocation(line: 669, column: 2, scope: !1819)
!1924 = !DILocation(line: 669, column: 2, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1819, file: !501, discriminator: 1)
!1926 = !DILocation(line: 669, column: 2, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1818, file: !501, discriminator: 2)
!1928 = !DILocation(line: 594, column: 23, scope: !1925)
!1929 = !DILocation(line: 594, column: 21, scope: !1925)
!1930 = !DILocation(line: 594, column: 2, scope: !1925)
!1931 = distinct !{!1931, !1932}
!1932 = !DILocation(line: 594, column: 2, scope: !1663)
!1933 = !DILocation(line: 669, column: 2, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1814, file: !501, discriminator: 3)
!1935 = !DILocation(line: 673, column: 6, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 673, column: 6)
!1937 = !DILocation(line: 673, column: 14, scope: !1936)
!1938 = !DILocation(line: 673, column: 18, scope: !1936)
!1939 = !DILocation(line: 673, column: 21, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1936, file: !501, discriminator: 1)
!1941 = !DILocation(line: 673, column: 6, scope: !1940)
!1942 = !DILocation(line: 674, column: 3, scope: !1936)
!1943 = !DILocation(line: 675, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 675, column: 6)
!1945 = !DILocation(line: 675, column: 14, scope: !1944)
!1946 = !DILocation(line: 675, column: 6, scope: !1663)
!1947 = !DILocation(line: 676, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !501, line: 676, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !501, line: 675, column: 19)
!1950 = !DILocation(line: 676, column: 7, scope: !1949)
!1951 = !DILocation(line: 677, column: 4, scope: !1948)
!1952 = !DILocation(line: 680, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !501, line: 680, column: 7)
!1954 = !DILocation(line: 680, column: 7, scope: !1949)
!1955 = !DILocation(line: 681, column: 26, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !501, line: 681, column: 8)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !501, line: 680, column: 18)
!1958 = !DILocation(line: 681, column: 18, scope: !1956)
!1959 = !DILocation(line: 681, column: 36, scope: !1956)
!1960 = !DILocation(line: 681, column: 8, scope: !1956)
!1961 = !DILocation(line: 681, column: 8, scope: !1957)
!1962 = !DILocation(line: 682, column: 5, scope: !1956)
!1963 = !DILocation(line: 683, column: 10, scope: !1957)
!1964 = !DILocation(line: 683, column: 5, scope: !1957)
!1965 = !DILocation(line: 683, column: 34, scope: !1957)
!1966 = !DILocation(line: 684, column: 3, scope: !1957)
!1967 = !DILocation(line: 685, column: 2, scope: !1949)
!1968 = !DILocation(line: 675, column: 14, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1944, file: !501, discriminator: 1)
!1970 = !DILocation(line: 689, column: 6, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1663, file: !501, line: 689, column: 6)
!1972 = !DILocation(line: 689, column: 6, scope: !1663)
!1973 = !DILocation(line: 691, column: 3, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !501, line: 689, column: 18)
!1975 = !DILocation(line: 694, column: 9, scope: !1663)
!1976 = !DILocation(line: 694, column: 2, scope: !1663)
!1977 = !DILocation(line: 695, column: 1, scope: !1663)
!1978 = distinct !DISubprogram(name: "replace_cmd_name", scope: !501, file: !501, line: 476, type: !1979, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !660, !386}
!1981 = !DILocalVariable(name: "script", arg: 1, scope: !1978, file: !501, line: 476, type: !660)
!1982 = !DILocation(line: 476, column: 35, scope: !1978)
!1983 = !DILocalVariable(name: "new_path", arg: 2, scope: !1978, file: !501, line: 476, type: !386)
!1984 = !DILocation(line: 476, column: 49, scope: !1978)
!1985 = !DILocalVariable(name: "len", scope: !1978, file: !501, line: 478, type: !431)
!1986 = !DILocation(line: 478, column: 9, scope: !1978)
!1987 = !DILocalVariable(name: "wp", scope: !1978, file: !501, line: 479, type: !498)
!1988 = !DILocation(line: 479, column: 9, scope: !1978)
!1989 = !DILocation(line: 479, column: 15, scope: !1978)
!1990 = !DILocation(line: 479, column: 23, scope: !1978)
!1991 = !DILocalVariable(name: "num_words", scope: !1978, file: !501, line: 480, type: !431)
!1992 = !DILocation(line: 480, column: 9, scope: !1978)
!1993 = !DILocalVariable(name: "params", scope: !1978, file: !501, line: 481, type: !498)
!1994 = !DILocation(line: 481, column: 9, scope: !1978)
!1995 = !DILocalVariable(name: "word_ptrs", scope: !1978, file: !501, line: 482, type: !498)
!1996 = !DILocation(line: 482, column: 9, scope: !1978)
!1997 = !DILocalVariable(name: "words", scope: !1978, file: !501, line: 483, type: !386)
!1998 = !DILocation(line: 483, column: 8, scope: !1978)
!1999 = !DILocation(line: 485, column: 15, scope: !1978)
!2000 = !DILocation(line: 485, column: 8, scope: !1978)
!2001 = !DILocation(line: 485, column: 25, scope: !1978)
!2002 = !DILocation(line: 485, column: 6, scope: !1978)
!2003 = !DILocation(line: 486, column: 2, scope: !1978)
!2004 = !DILocation(line: 486, column: 10, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1978, file: !501, discriminator: 1)
!2006 = !DILocation(line: 486, column: 9, scope: !2005)
!2007 = !DILocation(line: 486, column: 2, scope: !2005)
!2008 = !DILocation(line: 487, column: 20, scope: !1978)
!2009 = !DILocation(line: 487, column: 17, scope: !1978)
!2010 = !DILocation(line: 487, column: 10, scope: !1978)
!2011 = !DILocation(line: 487, column: 24, scope: !1978)
!2012 = !DILocation(line: 487, column: 7, scope: !1978)
!2013 = !DILocation(line: 486, column: 2, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !1978, file: !501, discriminator: 2)
!2015 = distinct !{!2015, !2003}
!2016 = !DILocation(line: 488, column: 24, scope: !1978)
!2017 = !DILocation(line: 488, column: 32, scope: !1978)
!2018 = !DILocation(line: 488, column: 15, scope: !1978)
!2019 = !DILocation(line: 488, column: 43, scope: !1978)
!2020 = !DILocation(line: 488, column: 51, scope: !1978)
!2021 = !DILocation(line: 488, column: 40, scope: !1978)
!2022 = !DILocation(line: 488, column: 60, scope: !1978)
!2023 = !DILocation(line: 488, column: 12, scope: !1978)
!2024 = !DILocation(line: 490, column: 32, scope: !1978)
!2025 = !DILocation(line: 490, column: 42, scope: !1978)
!2026 = !DILocation(line: 490, column: 47, scope: !1978)
!2027 = !DILocation(line: 490, column: 66, scope: !1978)
!2028 = !DILocation(line: 490, column: 64, scope: !1978)
!2029 = !DILocation(line: 490, column: 24, scope: !1978)
!2030 = !DILocation(line: 490, column: 23, scope: !1978)
!2031 = !DILocation(line: 490, column: 21, scope: !1978)
!2032 = !DILocation(line: 490, column: 9, scope: !1978)
!2033 = !DILocation(line: 491, column: 26, scope: !1978)
!2034 = !DILocation(line: 491, column: 36, scope: !1978)
!2035 = !DILocation(line: 491, column: 19, scope: !1978)
!2036 = !DILocation(line: 491, column: 10, scope: !1978)
!2037 = !DILocation(line: 491, column: 8, scope: !1978)
!2038 = !DILocation(line: 493, column: 9, scope: !1978)
!2039 = !DILocation(line: 493, column: 16, scope: !1978)
!2040 = !DILocation(line: 493, column: 2, scope: !1978)
!2041 = !DILocation(line: 494, column: 19, scope: !1978)
!2042 = !DILocation(line: 494, column: 13, scope: !1978)
!2043 = !DILocation(line: 494, column: 17, scope: !1978)
!2044 = !DILocation(line: 495, column: 18, scope: !1978)
!2045 = !DILocation(line: 495, column: 11, scope: !1978)
!2046 = !DILocation(line: 495, column: 25, scope: !1978)
!2047 = !DILocation(line: 495, column: 8, scope: !1978)
!2048 = !DILocation(line: 497, column: 8, scope: !1978)
!2049 = !DILocation(line: 497, column: 16, scope: !1978)
!2050 = !DILocation(line: 497, column: 5, scope: !1978)
!2051 = !DILocation(line: 498, column: 2, scope: !1978)
!2052 = !DILocation(line: 498, column: 10, scope: !2005)
!2053 = !DILocation(line: 498, column: 9, scope: !2005)
!2054 = !DILocation(line: 498, column: 2, scope: !2005)
!2055 = !DILocation(line: 499, column: 10, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1978, file: !501, line: 498, column: 14)
!2057 = !DILocation(line: 499, column: 18, scope: !2056)
!2058 = !DILocation(line: 499, column: 17, scope: !2056)
!2059 = !DILocation(line: 499, column: 3, scope: !2056)
!2060 = !DILocation(line: 500, column: 20, scope: !2056)
!2061 = !DILocation(line: 500, column: 14, scope: !2056)
!2062 = !DILocation(line: 500, column: 18, scope: !2056)
!2063 = !DILocation(line: 501, column: 20, scope: !2056)
!2064 = !DILocation(line: 501, column: 19, scope: !2056)
!2065 = !DILocation(line: 501, column: 12, scope: !2056)
!2066 = !DILocation(line: 501, column: 24, scope: !2056)
!2067 = !DILocation(line: 501, column: 9, scope: !2056)
!2068 = !DILocation(line: 502, column: 5, scope: !2056)
!2069 = !DILocation(line: 498, column: 2, scope: !2014)
!2070 = distinct !{!2070, !2051}
!2071 = !DILocation(line: 504, column: 3, scope: !1978)
!2072 = !DILocation(line: 504, column: 13, scope: !1978)
!2073 = !DILocation(line: 506, column: 8, scope: !1978)
!2074 = !DILocation(line: 506, column: 16, scope: !1978)
!2075 = !DILocation(line: 506, column: 3, scope: !1978)
!2076 = !DILocation(line: 506, column: 24, scope: !1978)
!2077 = !DILocation(line: 506, column: 32, scope: !1978)
!2078 = !DILocation(line: 506, column: 38, scope: !1978)
!2079 = !DILocation(line: 507, column: 17, scope: !1978)
!2080 = !DILocation(line: 507, column: 2, scope: !1978)
!2081 = !DILocation(line: 507, column: 10, scope: !1978)
!2082 = !DILocation(line: 507, column: 15, scope: !1978)
!2083 = !DILocation(line: 508, column: 1, scope: !1978)
!2084 = distinct !DISubprogram(name: "is_executable", scope: !501, file: !501, line: 466, type: !2085, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!461, !2087, !503, !506}
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64, align: 64)
!2088 = !DILocalVariable(name: "buf", arg: 1, scope: !2084, file: !501, line: 466, type: !2087)
!2089 = !DILocation(line: 466, column: 28, scope: !2084)
!2090 = !DILocalVariable(name: "uid", arg: 2, scope: !2084, file: !501, line: 466, type: !503)
!2091 = !DILocation(line: 466, column: 39, scope: !2084)
!2092 = !DILocalVariable(name: "gid", arg: 3, scope: !2084, file: !501, line: 466, type: !506)
!2093 = !DILocation(line: 466, column: 50, scope: !2084)
!2094 = !DILocation(line: 468, column: 10, scope: !2084)
!2095 = !DILocation(line: 468, column: 14, scope: !2084)
!2096 = !DILocation(line: 468, column: 19, scope: !2084)
!2097 = !DILocation(line: 468, column: 22, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2084, file: !501, discriminator: 1)
!2099 = !DILocation(line: 468, column: 27, scope: !2098)
!2100 = !DILocation(line: 468, column: 35, scope: !2098)
!2101 = !DILocation(line: 468, column: 67, scope: !2098)
!2102 = !DILocation(line: 469, column: 10, scope: !2084)
!2103 = !DILocation(line: 469, column: 17, scope: !2084)
!2104 = !DILocation(line: 469, column: 22, scope: !2084)
!2105 = !DILocation(line: 469, column: 14, scope: !2084)
!2106 = !DILocation(line: 469, column: 29, scope: !2084)
!2107 = !DILocation(line: 469, column: 32, scope: !2098)
!2108 = !DILocation(line: 469, column: 37, scope: !2098)
!2109 = !DILocation(line: 469, column: 45, scope: !2098)
!2110 = !DILocation(line: 469, column: 55, scope: !2098)
!2111 = !DILocation(line: 470, column: 10, scope: !2084)
!2112 = !DILocation(line: 470, column: 17, scope: !2084)
!2113 = !DILocation(line: 470, column: 22, scope: !2084)
!2114 = !DILocation(line: 470, column: 14, scope: !2084)
!2115 = !DILocation(line: 470, column: 29, scope: !2084)
!2116 = !DILocation(line: 471, column: 5, scope: !2084)
!2117 = !DILocation(line: 471, column: 12, scope: !2084)
!2118 = !DILocation(line: 471, column: 17, scope: !2084)
!2119 = !DILocation(line: 471, column: 9, scope: !2084)
!2120 = !DILocation(line: 471, column: 24, scope: !2084)
!2121 = !DILocation(line: 471, column: 27, scope: !2098)
!2122 = !DILocation(line: 471, column: 32, scope: !2098)
!2123 = !DILocation(line: 471, column: 40, scope: !2098)
!2124 = !DILocation(line: 471, column: 50, scope: !2098)
!2125 = !DILocation(line: 472, column: 5, scope: !2084)
!2126 = !DILocation(line: 472, column: 12, scope: !2084)
!2127 = !DILocation(line: 472, column: 17, scope: !2084)
!2128 = !DILocation(line: 472, column: 9, scope: !2084)
!2129 = !DILocation(line: 472, column: 24, scope: !2084)
!2130 = !DILocation(line: 472, column: 27, scope: !2098)
!2131 = !DILocation(line: 472, column: 32, scope: !2098)
!2132 = !DILocation(line: 472, column: 40, scope: !2098)
!2133 = !DILocation(line: 472, column: 24, scope: !2098)
!2134 = !DILocation(line: 471, column: 50, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2084, file: !501, discriminator: 2)
!2136 = !DILocation(line: 469, column: 55, scope: !2135)
!2137 = !DILocation(line: 468, column: 2, scope: !2135)
!2138 = distinct !DISubprogram(name: "check_security", scope: !501, file: !501, line: 698, type: !2139, isLocal: true, isDefinition: true, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!384, !386, !461}
!2141 = !DILocalVariable(name: "filename", arg: 1, scope: !2138, file: !501, line: 698, type: !386)
!2142 = !DILocation(line: 698, column: 22, scope: !2138)
!2143 = !DILocalVariable(name: "script_security", arg: 2, scope: !2138, file: !501, line: 698, type: !461)
!2144 = !DILocation(line: 698, column: 36, scope: !2138)
!2145 = !DILocalVariable(name: "next", scope: !2138, file: !501, line: 700, type: !386)
!2146 = !DILocation(line: 700, column: 8, scope: !2138)
!2147 = !DILocalVariable(name: "slash", scope: !2138, file: !501, line: 701, type: !386)
!2148 = !DILocation(line: 701, column: 8, scope: !2138)
!2149 = !DILocalVariable(name: "sav", scope: !2138, file: !501, line: 702, type: !387)
!2150 = !DILocation(line: 702, column: 7, scope: !2138)
!2151 = !DILocalVariable(name: "ret", scope: !2138, file: !501, line: 703, type: !384)
!2152 = !DILocation(line: 703, column: 6, scope: !2138)
!2153 = !DILocalVariable(name: "buf", scope: !2138, file: !501, line: 704, type: !1226)
!2154 = !DILocation(line: 704, column: 14, scope: !2138)
!2155 = !DILocalVariable(name: "flags", scope: !2138, file: !501, line: 705, type: !384)
!2156 = !DILocation(line: 705, column: 6, scope: !2138)
!2157 = !DILocation(line: 707, column: 9, scope: !2138)
!2158 = !DILocation(line: 707, column: 7, scope: !2138)
!2159 = !DILocation(line: 708, column: 2, scope: !2138)
!2160 = !DILocation(line: 708, column: 9, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2138, file: !501, discriminator: 1)
!2162 = !DILocation(line: 708, column: 2, scope: !2161)
!2163 = !DILocation(line: 709, column: 21, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2138, file: !501, line: 708, column: 15)
!2165 = !DILocation(line: 709, column: 11, scope: !2164)
!2166 = !DILocation(line: 709, column: 9, scope: !2164)
!2167 = !DILocation(line: 710, column: 8, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !501, line: 710, column: 7)
!2169 = !DILocation(line: 710, column: 7, scope: !2168)
!2170 = !DILocation(line: 710, column: 7, scope: !2164)
!2171 = !DILocation(line: 711, column: 11, scope: !2168)
!2172 = !DILocation(line: 711, column: 17, scope: !2168)
!2173 = !DILocation(line: 711, column: 9, scope: !2168)
!2174 = !DILocation(line: 711, column: 4, scope: !2168)
!2175 = !DILocation(line: 713, column: 10, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !501, line: 712, column: 8)
!2177 = !DILocation(line: 714, column: 9, scope: !2176)
!2178 = !DILocation(line: 717, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2164, file: !501, line: 717, column: 7)
!2180 = !DILocation(line: 717, column: 7, scope: !2164)
!2181 = !DILocation(line: 719, column: 8, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !501, line: 719, column: 8)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !501, line: 717, column: 14)
!2184 = !DILocation(line: 719, column: 17, scope: !2182)
!2185 = !DILocation(line: 719, column: 14, scope: !2182)
!2186 = !DILocation(line: 719, column: 8, scope: !2183)
!2187 = !DILocation(line: 720, column: 10, scope: !2182)
!2188 = !DILocation(line: 720, column: 5, scope: !2182)
!2189 = !DILocation(line: 721, column: 11, scope: !2183)
!2190 = !DILocation(line: 721, column: 10, scope: !2183)
!2191 = !DILocation(line: 721, column: 8, scope: !2183)
!2192 = !DILocation(line: 722, column: 5, scope: !2183)
!2193 = !DILocation(line: 722, column: 11, scope: !2183)
!2194 = !DILocation(line: 723, column: 3, scope: !2183)
!2195 = !DILocation(line: 725, column: 20, scope: !2164)
!2196 = !DILocation(line: 725, column: 9, scope: !2164)
!2197 = !DILocation(line: 725, column: 7, scope: !2164)
!2198 = !DILocation(line: 728, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2164, file: !501, line: 728, column: 7)
!2200 = !DILocation(line: 728, column: 7, scope: !2164)
!2201 = !DILocation(line: 729, column: 13, scope: !2199)
!2202 = !DILocation(line: 729, column: 5, scope: !2199)
!2203 = !DILocation(line: 729, column: 11, scope: !2199)
!2204 = !DILocation(line: 729, column: 4, scope: !2199)
!2205 = !DILocation(line: 731, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2164, file: !501, line: 731, column: 7)
!2207 = !DILocation(line: 731, column: 7, scope: !2164)
!2208 = !DILocation(line: 732, column: 9, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !501, line: 732, column: 7)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !501, line: 731, column: 12)
!2211 = !DILocation(line: 732, column: 8, scope: !2209)
!2212 = !DILocation(line: 732, column: 13, scope: !2209)
!2213 = !DILocation(line: 732, column: 23, scope: !2209)
!2214 = !DILocation(line: 732, column: 28, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2209, file: !501, discriminator: 1)
!2216 = !DILocation(line: 732, column: 27, scope: !2215)
!2217 = !DILocation(line: 732, column: 32, scope: !2215)
!2218 = !DILocation(line: 732, column: 41, scope: !2215)
!2219 = !DILocation(line: 732, column: 46, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2209, file: !501, discriminator: 2)
!2221 = !DILocation(line: 732, column: 45, scope: !2220)
!2222 = !DILocation(line: 732, column: 50, scope: !2220)
!2223 = !DILocation(line: 732, column: 60, scope: !2220)
!2224 = !DILocation(line: 732, column: 65, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2209, file: !501, discriminator: 3)
!2226 = !DILocation(line: 732, column: 64, scope: !2225)
!2227 = !DILocation(line: 732, column: 69, scope: !2225)
!2228 = !DILocation(line: 732, column: 7, scope: !2225)
!2229 = !DILocation(line: 733, column: 88, scope: !2209)
!2230 = !DILocation(line: 733, column: 5, scope: !2209)
!2231 = !DILocation(line: 735, column: 90, scope: !2209)
!2232 = !DILocation(line: 735, column: 102, scope: !2209)
!2233 = !DILocation(line: 735, column: 101, scope: !2209)
!2234 = !DILocation(line: 735, column: 118, scope: !2215)
!2235 = !DILocation(line: 735, column: 117, scope: !2209)
!2236 = !DILocation(line: 735, column: 107, scope: !2220)
!2237 = !DILocation(line: 735, column: 5, scope: !2225)
!2238 = !DILocation(line: 736, column: 11, scope: !2210)
!2239 = !DILocation(line: 736, column: 17, scope: !2210)
!2240 = !DILocation(line: 736, column: 4, scope: !2210)
!2241 = !DILocation(line: 741, column: 8, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2164, file: !501, line: 741, column: 7)
!2243 = !DILocation(line: 741, column: 14, scope: !2242)
!2244 = !DILocation(line: 741, column: 21, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2242, file: !501, discriminator: 1)
!2246 = !DILocation(line: 741, column: 20, scope: !2245)
!2247 = !DILocation(line: 741, column: 31, scope: !2245)
!2248 = !DILocation(line: 741, column: 39, scope: !2245)
!2249 = !DILocation(line: 742, column: 9, scope: !2242)
!2250 = !DILocation(line: 742, column: 15, scope: !2242)
!2251 = !DILocation(line: 743, column: 12, scope: !2242)
!2252 = !DILocation(line: 743, column: 11, scope: !2242)
!2253 = !DILocation(line: 743, column: 22, scope: !2242)
!2254 = !DILocation(line: 743, column: 29, scope: !2242)
!2255 = !DILocation(line: 744, column: 12, scope: !2242)
!2256 = !DILocation(line: 744, column: 11, scope: !2242)
!2257 = !DILocation(line: 744, column: 22, scope: !2242)
!2258 = !DILocation(line: 741, column: 7, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2164, file: !501, discriminator: 2)
!2260 = !DILocation(line: 745, column: 71, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2242, file: !501, line: 744, column: 31)
!2262 = !DILocation(line: 745, column: 4, scope: !2261)
!2263 = !DILocation(line: 746, column: 11, scope: !2261)
!2264 = !DILocation(line: 746, column: 17, scope: !2261)
!2265 = !DILocation(line: 746, column: 4, scope: !2261)
!2266 = !DILocation(line: 749, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2164, file: !501, line: 749, column: 7)
!2268 = !DILocation(line: 749, column: 7, scope: !2267)
!2269 = !DILocation(line: 749, column: 18, scope: !2267)
!2270 = !DILocation(line: 750, column: 13, scope: !2267)
!2271 = !DILocation(line: 750, column: 12, scope: !2267)
!2272 = !DILocation(line: 750, column: 23, scope: !2267)
!2273 = !DILocation(line: 750, column: 30, scope: !2267)
!2274 = !DILocation(line: 751, column: 16, scope: !2267)
!2275 = !DILocation(line: 751, column: 24, scope: !2267)
!2276 = !DILocation(line: 751, column: 35, scope: !2267)
!2277 = !DILocation(line: 752, column: 12, scope: !2267)
!2278 = !DILocation(line: 752, column: 11, scope: !2267)
!2279 = !DILocation(line: 752, column: 22, scope: !2267)
!2280 = !DILocation(line: 752, column: 30, scope: !2267)
!2281 = !DILocation(line: 753, column: 14, scope: !2267)
!2282 = !DILocation(line: 753, column: 10, scope: !2267)
!2283 = !DILocation(line: 753, column: 21, scope: !2267)
!2284 = !DILocation(line: 753, column: 28, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2267, file: !501, discriminator: 1)
!2286 = !DILocation(line: 753, column: 36, scope: !2285)
!2287 = !DILocation(line: 753, column: 46, scope: !2285)
!2288 = !DILocation(line: 754, column: 13, scope: !2267)
!2289 = !DILocation(line: 754, column: 21, scope: !2267)
!2290 = !DILocation(line: 749, column: 7, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2164, file: !501, discriminator: 1)
!2292 = !DILocation(line: 755, column: 72, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2267, file: !501, line: 754, column: 33)
!2294 = !DILocation(line: 755, column: 82, scope: !2293)
!2295 = !DILocation(line: 755, column: 4, scope: !2293)
!2296 = !DILocation(line: 756, column: 10, scope: !2293)
!2297 = !DILocation(line: 757, column: 11, scope: !2293)
!2298 = !DILocation(line: 757, column: 20, scope: !2293)
!2299 = !DILocation(line: 757, column: 17, scope: !2293)
!2300 = !DILocation(line: 757, column: 4, scope: !2293)
!2301 = !DILocation(line: 708, column: 2, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2138, file: !501, discriminator: 2)
!2303 = distinct !{!2303, !2159}
!2304 = !DILocation(line: 761, column: 9, scope: !2138)
!2305 = !DILocation(line: 761, column: 2, scope: !2138)
!2306 = !DILocation(line: 762, column: 1, scope: !2138)
!2307 = distinct !DISubprogram(name: "check_notify_script_secure", scope: !501, file: !501, line: 926, type: !2308, isLocal: false, isDefinition: true, scopeLine: 927, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!384, !2310, !1209}
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!2311 = !DILocalVariable(name: "script_p", arg: 1, scope: !2307, file: !501, line: 926, type: !2310)
!2312 = !DILocation(line: 926, column: 46, scope: !2307)
!2313 = !DILocalVariable(name: "magic", arg: 2, scope: !2307, file: !501, line: 926, type: !1209)
!2314 = !DILocation(line: 926, column: 64, scope: !2307)
!2315 = !DILocalVariable(name: "flags", scope: !2307, file: !501, line: 928, type: !384)
!2316 = !DILocation(line: 928, column: 6, scope: !2307)
!2317 = !DILocalVariable(name: "script", scope: !2307, file: !501, line: 929, type: !660)
!2318 = !DILocation(line: 929, column: 19, scope: !2307)
!2319 = !DILocation(line: 929, column: 29, scope: !2307)
!2320 = !DILocation(line: 929, column: 28, scope: !2307)
!2321 = !DILocation(line: 931, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2307, file: !501, line: 931, column: 6)
!2323 = !DILocation(line: 931, column: 6, scope: !2307)
!2324 = !DILocation(line: 932, column: 3, scope: !2322)
!2325 = !DILocation(line: 934, column: 30, scope: !2307)
!2326 = !DILocation(line: 934, column: 38, scope: !2307)
!2327 = !DILocation(line: 934, column: 10, scope: !2307)
!2328 = !DILocation(line: 934, column: 8, scope: !2307)
!2329 = !DILocation(line: 937, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2307, file: !501, line: 937, column: 6)
!2331 = !DILocation(line: 937, column: 13, scope: !2330)
!2332 = !DILocation(line: 937, column: 30, scope: !2330)
!2333 = !DILocation(line: 938, column: 8, scope: !2330)
!2334 = !DILocation(line: 938, column: 14, scope: !2330)
!2335 = !DILocation(line: 937, column: 6, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2307, file: !501, discriminator: 1)
!2337 = !DILocation(line: 939, column: 22, scope: !2330)
!2338 = !DILocation(line: 939, column: 3, scope: !2330)
!2339 = !DILocation(line: 941, column: 9, scope: !2307)
!2340 = !DILocation(line: 941, column: 2, scope: !2307)
!2341 = !DILocation(line: 942, column: 1, scope: !2307)
!2342 = distinct !DISubprogram(name: "free_notify_script", scope: !527, file: !527, line: 76, type: !2343, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !2310}
!2345 = !DILocalVariable(name: "script", arg: 1, scope: !2342, file: !527, line: 76, type: !2310)
!2346 = !DILocation(line: 76, column: 38, scope: !2342)
!2347 = !DILocation(line: 78, column: 8, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !527, line: 78, column: 6)
!2349 = !DILocation(line: 78, column: 7, scope: !2348)
!2350 = !DILocation(line: 78, column: 6, scope: !2342)
!2351 = !DILocation(line: 79, column: 3, scope: !2348)
!2352 = !DILocation(line: 80, column: 10, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !527, line: 80, column: 8)
!2354 = distinct !DILexicalBlock(scope: !2342, file: !527, line: 80, column: 2)
!2355 = !DILocation(line: 80, column: 9, scope: !2353)
!2356 = !DILocation(line: 80, column: 19, scope: !2353)
!2357 = !DILocation(line: 80, column: 8, scope: !2353)
!2358 = !DILocation(line: 80, column: 8, scope: !2354)
!2359 = !DILocation(line: 80, column: 35, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !527, discriminator: 1)
!2361 = distinct !DILexicalBlock(scope: !2353, file: !527, line: 80, column: 25)
!2362 = !DILocation(line: 80, column: 34, scope: !2360)
!2363 = !DILocation(line: 80, column: 44, scope: !2360)
!2364 = !DILocation(line: 80, column: 33, scope: !2360)
!2365 = !DILocation(line: 80, column: 28, scope: !2360)
!2366 = !DILocation(line: 80, column: 54, scope: !2360)
!2367 = !DILocation(line: 80, column: 53, scope: !2360)
!2368 = !DILocation(line: 80, column: 63, scope: !2360)
!2369 = !DILocation(line: 80, column: 69, scope: !2360)
!2370 = !DILocation(line: 80, column: 3, scope: !2360)
!2371 = !DILocation(line: 81, column: 9, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !527, line: 81, column: 8)
!2373 = distinct !DILexicalBlock(scope: !2342, file: !527, line: 81, column: 2)
!2374 = !DILocation(line: 81, column: 8, scope: !2372)
!2375 = !DILocation(line: 81, column: 8, scope: !2373)
!2376 = !DILocation(line: 81, column: 26, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2378, file: !527, discriminator: 1)
!2378 = distinct !DILexicalBlock(scope: !2372, file: !527, line: 81, column: 17)
!2379 = !DILocation(line: 81, column: 25, scope: !2377)
!2380 = !DILocation(line: 81, column: 20, scope: !2377)
!2381 = !DILocation(line: 81, column: 37, scope: !2377)
!2382 = !DILocation(line: 81, column: 45, scope: !2377)
!2383 = !DILocation(line: 81, column: 3, scope: !2377)
!2384 = !DILocation(line: 82, column: 3, scope: !2342)
!2385 = !DILocation(line: 82, column: 10, scope: !2342)
!2386 = !DILocation(line: 83, column: 1, scope: !2342)
!2387 = !DILocation(line: 83, column: 1, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2342, file: !527, discriminator: 1)
!2389 = distinct !DISubprogram(name: "set_uid_gid", scope: !501, file: !501, line: 960, type: !2390, isLocal: false, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!461, !664, !664, !2392, !1687, !461}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64, align: 64)
!2393 = !DILocalVariable(name: "username", arg: 1, scope: !2389, file: !501, line: 960, type: !664)
!2394 = !DILocation(line: 960, column: 25, scope: !2389)
!2395 = !DILocalVariable(name: "groupname", arg: 2, scope: !2389, file: !501, line: 960, type: !664)
!2396 = !DILocation(line: 960, column: 47, scope: !2389)
!2397 = !DILocalVariable(name: "uid_p", arg: 3, scope: !2389, file: !501, line: 960, type: !2392)
!2398 = !DILocation(line: 960, column: 65, scope: !2389)
!2399 = !DILocalVariable(name: "gid_p", arg: 4, scope: !2389, file: !501, line: 960, type: !1687)
!2400 = !DILocation(line: 960, column: 79, scope: !2389)
!2401 = !DILocalVariable(name: "default_user", arg: 5, scope: !2389, file: !501, line: 960, type: !461)
!2402 = !DILocation(line: 960, column: 90, scope: !2389)
!2403 = !DILocalVariable(name: "uid", scope: !2389, file: !501, line: 962, type: !503)
!2404 = !DILocation(line: 962, column: 8, scope: !2389)
!2405 = !DILocalVariable(name: "gid", scope: !2389, file: !501, line: 963, type: !506)
!2406 = !DILocation(line: 963, column: 8, scope: !2389)
!2407 = !DILocalVariable(name: "pwd", scope: !2389, file: !501, line: 964, type: !2408)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !2409, line: 49, size: 384, align: 64, elements: !2410)
!2409 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !2408, file: !2409, line: 51, baseType: !386, size: 64, align: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !2408, file: !2409, line: 52, baseType: !386, size: 64, align: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !2408, file: !2409, line: 53, baseType: !504, size: 32, align: 32, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !2408, file: !2409, line: 54, baseType: !507, size: 32, align: 32, offset: 160)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !2408, file: !2409, line: 55, baseType: !386, size: 64, align: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !2408, file: !2409, line: 56, baseType: !386, size: 64, align: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !2408, file: !2409, line: 57, baseType: !386, size: 64, align: 64, offset: 320)
!2418 = !DILocation(line: 964, column: 16, scope: !2389)
!2419 = !DILocalVariable(name: "pwd_p", scope: !2389, file: !501, line: 965, type: !2420)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64, align: 64)
!2421 = !DILocation(line: 965, column: 17, scope: !2389)
!2422 = !DILocalVariable(name: "grp", scope: !2389, file: !501, line: 966, type: !2423)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !2424, line: 42, size: 256, align: 64, elements: !2425)
!2424 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2425 = !{!2426, !2427, !2428, !2429}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !2423, file: !2424, line: 44, baseType: !386, size: 64, align: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !2423, file: !2424, line: 45, baseType: !386, size: 64, align: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !2423, file: !2424, line: 46, baseType: !507, size: 32, align: 32, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !2423, file: !2424, line: 47, baseType: !498, size: 64, align: 64, offset: 192)
!2430 = !DILocation(line: 966, column: 15, scope: !2389)
!2431 = !DILocalVariable(name: "grp_p", scope: !2389, file: !501, line: 967, type: !2432)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64, align: 64)
!2433 = !DILocation(line: 967, column: 16, scope: !2389)
!2434 = !DILocalVariable(name: "ret", scope: !2389, file: !501, line: 968, type: !384)
!2435 = !DILocation(line: 968, column: 6, scope: !2389)
!2436 = !DILocalVariable(name: "using_default_default_user", scope: !2389, file: !501, line: 969, type: !461)
!2437 = !DILocation(line: 969, column: 6, scope: !2389)
!2438 = !DILocation(line: 971, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2389, file: !501, line: 971, column: 6)
!2440 = !DILocation(line: 971, column: 6, scope: !2389)
!2441 = !DILocation(line: 972, column: 3, scope: !2439)
!2442 = !DILocation(line: 975, column: 12, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2389, file: !501, line: 974, column: 2)
!2444 = !DILocation(line: 975, column: 3, scope: !2443)
!2445 = !DILocalVariable(name: "buf", scope: !2443, file: !501, line: 975, type: !1825)
!2446 = !DILocation(line: 975, column: 8, scope: !2443)
!2447 = !DILocation(line: 977, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2443, file: !501, line: 977, column: 7)
!2449 = !DILocation(line: 977, column: 20, scope: !2448)
!2450 = !DILocation(line: 977, column: 24, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2448, file: !501, discriminator: 1)
!2452 = !DILocation(line: 977, column: 7, scope: !2451)
!2453 = !DILocation(line: 978, column: 31, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !501, line: 977, column: 34)
!2455 = !DILocation(line: 979, column: 13, scope: !2454)
!2456 = !DILocation(line: 980, column: 3, scope: !2454)
!2457 = !DILocation(line: 982, column: 25, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2443, file: !501, line: 982, column: 7)
!2459 = !DILocation(line: 982, column: 14, scope: !2458)
!2460 = !DILocation(line: 982, column: 12, scope: !2458)
!2461 = !DILocation(line: 982, column: 7, scope: !2443)
!2462 = !DILocation(line: 983, column: 80, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2458, file: !501, line: 982, column: 69)
!2464 = !DILocation(line: 983, column: 112, scope: !2463)
!2465 = !DILocation(line: 983, column: 4, scope: !2463)
!2466 = !DILocation(line: 984, column: 4, scope: !2463)
!2467 = !DILocation(line: 986, column: 8, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2443, file: !501, line: 986, column: 7)
!2469 = !DILocation(line: 986, column: 7, scope: !2443)
!2470 = !DILocation(line: 987, column: 8, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !501, line: 987, column: 8)
!2472 = distinct !DILexicalBlock(scope: !2468, file: !501, line: 986, column: 15)
!2473 = !DILocation(line: 987, column: 8, scope: !2472)
!2474 = !DILocation(line: 988, column: 110, scope: !2471)
!2475 = !DILocation(line: 988, column: 5, scope: !2471)
!2476 = !DILocation(line: 990, column: 62, scope: !2471)
!2477 = !DILocation(line: 990, column: 96, scope: !2471)
!2478 = !DILocation(line: 990, column: 5, scope: !2471)
!2479 = !DILocation(line: 991, column: 4, scope: !2472)
!2480 = !DILocation(line: 994, column: 13, scope: !2443)
!2481 = !DILocation(line: 994, column: 7, scope: !2443)
!2482 = !DILocation(line: 995, column: 13, scope: !2443)
!2483 = !DILocation(line: 995, column: 7, scope: !2443)
!2484 = !DILocation(line: 997, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2443, file: !501, line: 997, column: 7)
!2486 = !DILocation(line: 997, column: 7, scope: !2443)
!2487 = !DILocation(line: 998, column: 26, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !501, line: 998, column: 8)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !501, line: 997, column: 18)
!2490 = !DILocation(line: 998, column: 15, scope: !2488)
!2491 = !DILocation(line: 998, column: 13, scope: !2488)
!2492 = !DILocation(line: 998, column: 8, scope: !2489)
!2493 = !DILocation(line: 999, column: 83, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !501, line: 998, column: 71)
!2495 = !DILocation(line: 999, column: 115, scope: !2494)
!2496 = !DILocation(line: 999, column: 5, scope: !2494)
!2497 = !DILocation(line: 1000, column: 5, scope: !2494)
!2498 = !DILocation(line: 1002, column: 9, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2489, file: !501, line: 1002, column: 8)
!2500 = !DILocation(line: 1002, column: 8, scope: !2489)
!2501 = !DILocation(line: 1003, column: 63, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !501, line: 1002, column: 16)
!2503 = !DILocation(line: 1003, column: 97, scope: !2502)
!2504 = !DILocation(line: 1003, column: 5, scope: !2502)
!2505 = !DILocation(line: 1004, column: 5, scope: !2502)
!2506 = !DILocation(line: 1006, column: 14, scope: !2489)
!2507 = !DILocation(line: 1006, column: 8, scope: !2489)
!2508 = !DILocation(line: 1007, column: 3, scope: !2489)
!2509 = !DILocation(line: 1009, column: 12, scope: !2443)
!2510 = !DILocation(line: 1009, column: 4, scope: !2443)
!2511 = !DILocation(line: 1009, column: 10, scope: !2443)
!2512 = !DILocation(line: 1010, column: 12, scope: !2443)
!2513 = !DILocation(line: 1010, column: 4, scope: !2443)
!2514 = !DILocation(line: 1010, column: 10, scope: !2443)
!2515 = !DILocation(line: 1011, column: 2, scope: !2389)
!2516 = !DILocation(line: 1011, column: 2, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2389, file: !501, discriminator: 1)
!2518 = !DILocation(line: 1013, column: 2, scope: !2389)
!2519 = !DILocation(line: 1014, column: 1, scope: !2389)
!2520 = distinct !DISubprogram(name: "set_pwnam_buf_len", scope: !501, file: !501, line: 945, type: !2521, isLocal: true, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null}
!2523 = !DILocalVariable(name: "buf_len", scope: !2520, file: !501, line: 947, type: !412)
!2524 = !DILocation(line: 947, column: 7, scope: !2520)
!2525 = !DILocation(line: 950, column: 17, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2520, file: !501, line: 950, column: 6)
!2527 = !DILocation(line: 950, column: 15, scope: !2526)
!2528 = !DILocation(line: 950, column: 47, scope: !2526)
!2529 = !DILocation(line: 950, column: 6, scope: !2520)
!2530 = !DILocation(line: 951, column: 20, scope: !2526)
!2531 = !DILocation(line: 951, column: 3, scope: !2526)
!2532 = !DILocation(line: 953, column: 30, scope: !2526)
!2533 = !DILocation(line: 953, column: 20, scope: !2526)
!2534 = !DILocation(line: 954, column: 17, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2520, file: !501, line: 954, column: 6)
!2536 = !DILocation(line: 954, column: 15, scope: !2535)
!2537 = !DILocation(line: 954, column: 47, scope: !2535)
!2538 = !DILocation(line: 954, column: 53, scope: !2535)
!2539 = !DILocation(line: 955, column: 14, scope: !2535)
!2540 = !DILocation(line: 955, column: 24, scope: !2535)
!2541 = !DILocation(line: 955, column: 22, scope: !2535)
!2542 = !DILocation(line: 954, column: 6, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2520, file: !501, discriminator: 1)
!2544 = !DILocation(line: 956, column: 30, scope: !2535)
!2545 = !DILocation(line: 956, column: 20, scope: !2535)
!2546 = !DILocation(line: 956, column: 3, scope: !2535)
!2547 = !DILocation(line: 957, column: 1, scope: !2520)
!2548 = distinct !DISubprogram(name: "set_default_script_user", scope: !501, file: !501, line: 1018, type: !2549, isLocal: false, isDefinition: true, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!461, !664, !664}
!2551 = !DILocalVariable(name: "username", arg: 1, scope: !2548, file: !501, line: 1018, type: !664)
!2552 = !DILocation(line: 1018, column: 37, scope: !2548)
!2553 = !DILocalVariable(name: "groupname", arg: 2, scope: !2548, file: !501, line: 1018, type: !664)
!2554 = !DILocation(line: 1018, column: 59, scope: !2548)
!2555 = !DILocation(line: 1020, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2548, file: !501, line: 1020, column: 6)
!2557 = !DILocation(line: 1020, column: 30, scope: !2556)
!2558 = !DILocation(line: 1020, column: 33, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2556, file: !501, discriminator: 1)
!2560 = !DILocation(line: 1020, column: 6, scope: !2559)
!2561 = !DILocation(line: 1022, column: 26, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2556, file: !501, line: 1020, column: 43)
!2563 = !DILocation(line: 1024, column: 19, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2562, file: !501, line: 1024, column: 7)
!2565 = !DILocation(line: 1024, column: 29, scope: !2564)
!2566 = !DILocation(line: 1024, column: 7, scope: !2564)
!2567 = !DILocation(line: 1024, column: 7, scope: !2562)
!2568 = !DILocation(line: 1025, column: 8, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !501, line: 1025, column: 8)
!2570 = distinct !DILexicalBlock(scope: !2564, file: !501, line: 1024, column: 88)
!2571 = !DILocation(line: 1025, column: 17, scope: !2569)
!2572 = !DILocation(line: 1025, column: 20, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2569, file: !501, discriminator: 1)
!2574 = !DILocation(line: 1025, column: 8, scope: !2573)
!2575 = !DILocation(line: 1026, column: 23, scope: !2569)
!2576 = !DILocation(line: 1026, column: 5, scope: !2569)
!2577 = !DILocation(line: 1027, column: 3, scope: !2570)
!2578 = !DILocation(line: 1029, column: 22, scope: !2564)
!2579 = !DILocation(line: 1030, column: 2, scope: !2562)
!2580 = !DILocation(line: 1032, column: 9, scope: !2548)
!2581 = !DILocation(line: 1032, column: 2, scope: !2548)
!2582 = distinct !DISubprogram(name: "set_script_uid_gid", scope: !501, file: !501, line: 1036, type: !2583, isLocal: false, isDefinition: true, scopeLine: 1037, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!461, !2585, !368, !2392, !1687}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64, align: 64)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !2587, line: 34, baseType: !2588)
!2587 = !DIFile(filename: "vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !2587, line: 30, size: 128, align: 64, elements: !2589)
!2589 = !{!2590, !2591, !2592}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2588, file: !2587, line: 31, baseType: !368, size: 32, align: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !2588, file: !2587, line: 32, baseType: !368, size: 32, align: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2588, file: !2587, line: 33, baseType: !2593, size: 64, align: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!2594 = !DILocalVariable(name: "strvec", arg: 1, scope: !2582, file: !501, line: 1036, type: !2585)
!2595 = !DILocation(line: 1036, column: 30, scope: !2582)
!2596 = !DILocalVariable(name: "keyword_offset", arg: 2, scope: !2582, file: !501, line: 1036, type: !368)
!2597 = !DILocation(line: 1036, column: 47, scope: !2582)
!2598 = !DILocalVariable(name: "uid_p", arg: 3, scope: !2582, file: !501, line: 1036, type: !2392)
!2599 = !DILocation(line: 1036, column: 70, scope: !2582)
!2600 = !DILocalVariable(name: "gid_p", arg: 4, scope: !2582, file: !501, line: 1036, type: !1687)
!2601 = !DILocation(line: 1036, column: 84, scope: !2582)
!2602 = !DILocalVariable(name: "username", scope: !2582, file: !501, line: 1038, type: !386)
!2603 = !DILocation(line: 1038, column: 8, scope: !2582)
!2604 = !DILocalVariable(name: "groupname", scope: !2582, file: !501, line: 1039, type: !386)
!2605 = !DILocation(line: 1039, column: 8, scope: !2582)
!2606 = !DILocation(line: 1041, column: 25, scope: !2582)
!2607 = !DILocation(line: 1041, column: 33, scope: !2582)
!2608 = !DILocation(line: 1041, column: 13, scope: !2582)
!2609 = !DILocation(line: 1041, column: 11, scope: !2582)
!2610 = !DILocation(line: 1042, column: 8, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2582, file: !501, line: 1042, column: 6)
!2612 = !DILocation(line: 1042, column: 17, scope: !2611)
!2613 = !DILocation(line: 1042, column: 30, scope: !2611)
!2614 = !DILocation(line: 1042, column: 45, scope: !2611)
!2615 = !DILocation(line: 1042, column: 28, scope: !2611)
!2616 = !DILocation(line: 1042, column: 6, scope: !2582)
!2617 = !DILocation(line: 1043, column: 27, scope: !2611)
!2618 = !DILocation(line: 1043, column: 35, scope: !2611)
!2619 = !DILocation(line: 1043, column: 50, scope: !2611)
!2620 = !DILocation(line: 1043, column: 15, scope: !2611)
!2621 = !DILocation(line: 1043, column: 13, scope: !2611)
!2622 = !DILocation(line: 1043, column: 3, scope: !2611)
!2623 = !DILocation(line: 1045, column: 13, scope: !2611)
!2624 = !DILocation(line: 1047, column: 21, scope: !2582)
!2625 = !DILocation(line: 1047, column: 31, scope: !2582)
!2626 = !DILocation(line: 1047, column: 42, scope: !2582)
!2627 = !DILocation(line: 1047, column: 49, scope: !2582)
!2628 = !DILocation(line: 1047, column: 9, scope: !2582)
!2629 = !DILocation(line: 1047, column: 2, scope: !2582)
!2630 = distinct !DISubprogram(name: "set_script_params_array", scope: !501, file: !501, line: 1051, type: !2631, isLocal: false, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !2585, !660, !368}
!2633 = !DILocalVariable(name: "strvec", arg: 1, scope: !2630, file: !501, line: 1051, type: !2585)
!2634 = !DILocation(line: 1051, column: 35, scope: !2630)
!2635 = !DILocalVariable(name: "script", arg: 2, scope: !2630, file: !501, line: 1051, type: !660)
!2636 = !DILocation(line: 1051, column: 60, scope: !2630)
!2637 = !DILocalVariable(name: "extra_params", arg: 3, scope: !2630, file: !501, line: 1051, type: !368)
!2638 = !DILocation(line: 1051, column: 77, scope: !2630)
!2639 = !DILocalVariable(name: "num_words", scope: !2630, file: !501, line: 1053, type: !368)
!2640 = !DILocation(line: 1053, column: 11, scope: !2630)
!2641 = !DILocalVariable(name: "len", scope: !2630, file: !501, line: 1054, type: !431)
!2642 = !DILocation(line: 1054, column: 9, scope: !2630)
!2643 = !DILocalVariable(name: "word_ptrs", scope: !2630, file: !501, line: 1055, type: !498)
!2644 = !DILocation(line: 1055, column: 9, scope: !2630)
!2645 = !DILocalVariable(name: "words", scope: !2630, file: !501, line: 1056, type: !386)
!2646 = !DILocation(line: 1056, column: 8, scope: !2630)
!2647 = !DILocalVariable(name: "strvec_qe", scope: !2630, file: !501, line: 1057, type: !2585)
!2648 = !DILocation(line: 1057, column: 12, scope: !2630)
!2649 = !DILocalVariable(name: "i", scope: !2630, file: !501, line: 1058, type: !368)
!2650 = !DILocation(line: 1058, column: 11, scope: !2630)
!2651 = !DILocation(line: 1061, column: 8, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2630, file: !501, line: 1061, column: 6)
!2653 = !DILocation(line: 1061, column: 17, scope: !2652)
!2654 = !DILocation(line: 1061, column: 28, scope: !2652)
!2655 = !DILocation(line: 1061, column: 6, scope: !2630)
!2656 = !DILocation(line: 1062, column: 55, scope: !2652)
!2657 = !DILocation(line: 1062, column: 43, scope: !2652)
!2658 = !DILocation(line: 1062, column: 15, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2652, file: !501, discriminator: 1)
!2660 = !DILocation(line: 1062, column: 13, scope: !2652)
!2661 = !DILocation(line: 1062, column: 3, scope: !2652)
!2662 = !DILocation(line: 1064, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2630, file: !501, line: 1064, column: 6)
!2664 = !DILocation(line: 1064, column: 6, scope: !2630)
!2665 = !DILocation(line: 1065, column: 3, scope: !2663)
!2666 = !DILocation(line: 1067, column: 16, scope: !2630)
!2667 = !DILocation(line: 1067, column: 28, scope: !2630)
!2668 = !DILocation(line: 1067, column: 12, scope: !2630)
!2669 = !DILocation(line: 1068, column: 9, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2630, file: !501, line: 1068, column: 2)
!2671 = !DILocation(line: 1068, column: 7, scope: !2670)
!2672 = !DILocation(line: 1068, column: 14, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2674, file: !501, discriminator: 1)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !501, line: 1068, column: 2)
!2675 = !DILocation(line: 1068, column: 18, scope: !2673)
!2676 = !DILocation(line: 1068, column: 16, scope: !2673)
!2677 = !DILocation(line: 1068, column: 2, scope: !2673)
!2678 = !DILocation(line: 1069, column: 29, scope: !2674)
!2679 = !DILocation(line: 1069, column: 40, scope: !2674)
!2680 = !DILocation(line: 1069, column: 17, scope: !2674)
!2681 = !DILocation(line: 1069, column: 10, scope: !2673)
!2682 = !DILocation(line: 1069, column: 44, scope: !2674)
!2683 = !DILocation(line: 1069, column: 7, scope: !2674)
!2684 = !DILocation(line: 1069, column: 3, scope: !2674)
!2685 = !DILocation(line: 1068, column: 30, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2674, file: !501, discriminator: 2)
!2687 = !DILocation(line: 1068, column: 2, scope: !2686)
!2688 = distinct !{!2688, !2689}
!2689 = !DILocation(line: 1068, column: 2, scope: !2630)
!2690 = !DILocation(line: 1072, column: 38, scope: !2630)
!2691 = !DILocation(line: 1072, column: 50, scope: !2630)
!2692 = !DILocation(line: 1072, column: 48, scope: !2630)
!2693 = !DILocation(line: 1072, column: 63, scope: !2630)
!2694 = !DILocation(line: 1072, column: 37, scope: !2630)
!2695 = !DILocation(line: 1072, column: 68, scope: !2630)
!2696 = !DILocation(line: 1072, column: 87, scope: !2630)
!2697 = !DILocation(line: 1072, column: 85, scope: !2630)
!2698 = !DILocation(line: 1072, column: 30, scope: !2630)
!2699 = !DILocation(line: 1072, column: 29, scope: !2630)
!2700 = !DILocation(line: 1072, column: 27, scope: !2630)
!2701 = !DILocation(line: 1072, column: 2, scope: !2630)
!2702 = !DILocation(line: 1072, column: 10, scope: !2630)
!2703 = !DILocation(line: 1072, column: 15, scope: !2630)
!2704 = !DILocation(line: 1073, column: 18, scope: !2630)
!2705 = !DILocation(line: 1073, column: 10, scope: !2630)
!2706 = !DILocation(line: 1073, column: 31, scope: !2630)
!2707 = !DILocation(line: 1073, column: 43, scope: !2630)
!2708 = !DILocation(line: 1073, column: 41, scope: !2630)
!2709 = !DILocation(line: 1073, column: 56, scope: !2630)
!2710 = !DILocation(line: 1073, column: 30, scope: !2630)
!2711 = !DILocation(line: 1073, column: 61, scope: !2630)
!2712 = !DILocation(line: 1073, column: 28, scope: !2630)
!2713 = !DILocation(line: 1073, column: 8, scope: !2630)
!2714 = !DILocation(line: 1076, column: 9, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2630, file: !501, line: 1076, column: 2)
!2716 = !DILocation(line: 1076, column: 7, scope: !2715)
!2717 = !DILocation(line: 1076, column: 14, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2719, file: !501, discriminator: 1)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !501, line: 1076, column: 2)
!2720 = !DILocation(line: 1076, column: 18, scope: !2718)
!2721 = !DILocation(line: 1076, column: 16, scope: !2718)
!2722 = !DILocation(line: 1076, column: 2, scope: !2718)
!2723 = !DILocation(line: 1077, column: 10, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !501, line: 1076, column: 34)
!2725 = !DILocation(line: 1077, column: 29, scope: !2724)
!2726 = !DILocation(line: 1077, column: 40, scope: !2724)
!2727 = !DILocation(line: 1077, column: 17, scope: !2724)
!2728 = !DILocation(line: 1077, column: 3, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2724, file: !501, discriminator: 1)
!2730 = !DILocation(line: 1078, column: 20, scope: !2724)
!2731 = !DILocation(line: 1078, column: 14, scope: !2724)
!2732 = !DILocation(line: 1078, column: 18, scope: !2724)
!2733 = !DILocation(line: 1079, column: 19, scope: !2724)
!2734 = !DILocation(line: 1079, column: 12, scope: !2724)
!2735 = !DILocation(line: 1079, column: 26, scope: !2724)
!2736 = !DILocation(line: 1079, column: 9, scope: !2724)
!2737 = !DILocation(line: 1080, column: 2, scope: !2724)
!2738 = !DILocation(line: 1076, column: 30, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2719, file: !501, discriminator: 2)
!2740 = !DILocation(line: 1076, column: 2, scope: !2739)
!2741 = distinct !{!2741, !2742}
!2742 = !DILocation(line: 1076, column: 2, scope: !2630)
!2743 = !DILocation(line: 1081, column: 3, scope: !2630)
!2744 = !DILocation(line: 1081, column: 13, scope: !2630)
!2745 = !DILocation(line: 1083, column: 21, scope: !2630)
!2746 = !DILocation(line: 1083, column: 2, scope: !2630)
!2747 = !DILocation(line: 1083, column: 10, scope: !2630)
!2748 = !DILocation(line: 1083, column: 19, scope: !2630)
!2749 = !DILocation(line: 1085, column: 14, scope: !2630)
!2750 = !DILocation(line: 1085, column: 2, scope: !2630)
!2751 = !DILocation(line: 1086, column: 1, scope: !2630)
!2752 = !DILocation(line: 1086, column: 1, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2630, file: !501, discriminator: 1)
!2754 = distinct !DISubprogram(name: "notify_script_init", scope: !501, file: !501, line: 1089, type: !2755, isLocal: false, isDefinition: true, scopeLine: 1090, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!660, !384, !664}
!2757 = !DILocalVariable(name: "extra_params", arg: 1, scope: !2754, file: !501, line: 1089, type: !384)
!2758 = !DILocation(line: 1089, column: 24, scope: !2754)
!2759 = !DILocalVariable(name: "type", arg: 2, scope: !2754, file: !501, line: 1089, type: !664)
!2760 = !DILocation(line: 1089, column: 50, scope: !2754)
!2761 = !DILocalVariable(name: "script", scope: !2754, file: !501, line: 1091, type: !660)
!2762 = !DILocation(line: 1091, column: 19, scope: !2754)
!2763 = !DILocation(line: 1091, column: 29, scope: !2754)
!2764 = !DILocation(line: 1091, column: 28, scope: !2754)
!2765 = !DILocalVariable(name: "strvec_qe", scope: !2754, file: !501, line: 1092, type: !2585)
!2766 = !DILocation(line: 1092, column: 12, scope: !2754)
!2767 = !DILocation(line: 1095, column: 14, scope: !2754)
!2768 = !DILocation(line: 1095, column: 12, scope: !2754)
!2769 = !DILocation(line: 1097, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2754, file: !501, line: 1097, column: 6)
!2771 = !DILocation(line: 1097, column: 6, scope: !2754)
!2772 = !DILocation(line: 1098, column: 3, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2770, file: !501, line: 1097, column: 18)
!2774 = !DILocation(line: 1099, column: 9, scope: !2773)
!2775 = !DILocation(line: 1099, column: 4, scope: !2773)
!2776 = !DILocation(line: 1099, column: 27, scope: !2773)
!2777 = !DILocation(line: 1100, column: 3, scope: !2773)
!2778 = !DILocation(line: 1103, column: 26, scope: !2754)
!2779 = !DILocation(line: 1103, column: 37, scope: !2754)
!2780 = !DILocation(line: 1103, column: 45, scope: !2754)
!2781 = !DILocation(line: 1103, column: 2, scope: !2754)
!2782 = !DILocation(line: 1104, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2754, file: !501, line: 1104, column: 6)
!2784 = !DILocation(line: 1104, column: 15, scope: !2783)
!2785 = !DILocation(line: 1104, column: 6, scope: !2754)
!2786 = !DILocation(line: 1105, column: 86, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !501, line: 1104, column: 21)
!2788 = !DILocation(line: 1105, column: 74, scope: !2787)
!2789 = !DILocation(line: 1105, column: 3, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2787, file: !501, discriminator: 1)
!2791 = !DILocation(line: 1106, column: 9, scope: !2787)
!2792 = !DILocation(line: 1106, column: 4, scope: !2787)
!2793 = !DILocation(line: 1106, column: 27, scope: !2787)
!2794 = !DILocation(line: 1107, column: 15, scope: !2787)
!2795 = !DILocation(line: 1107, column: 3, scope: !2787)
!2796 = !DILocation(line: 1108, column: 3, scope: !2787)
!2797 = !DILocation(line: 1111, column: 2, scope: !2754)
!2798 = !DILocation(line: 1111, column: 10, scope: !2754)
!2799 = !DILocation(line: 1111, column: 16, scope: !2754)
!2800 = !DILocation(line: 1113, column: 8, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2754, file: !501, line: 1113, column: 6)
!2802 = !DILocation(line: 1113, column: 20, scope: !2801)
!2803 = !DILocation(line: 1113, column: 31, scope: !2801)
!2804 = !DILocation(line: 1113, column: 6, scope: !2754)
!2805 = !DILocation(line: 1114, column: 26, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !501, line: 1114, column: 7)
!2807 = distinct !DILexicalBlock(scope: !2801, file: !501, line: 1113, column: 36)
!2808 = !DILocation(line: 1114, column: 41, scope: !2806)
!2809 = !DILocation(line: 1114, column: 49, scope: !2806)
!2810 = !DILocation(line: 1114, column: 55, scope: !2806)
!2811 = !DILocation(line: 1114, column: 63, scope: !2806)
!2812 = !DILocation(line: 1114, column: 7, scope: !2806)
!2813 = !DILocation(line: 1114, column: 7, scope: !2807)
!2814 = !DILocation(line: 1115, column: 75, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2806, file: !501, line: 1114, column: 69)
!2816 = !DILocation(line: 1115, column: 81, scope: !2815)
!2817 = !DILocation(line: 1115, column: 89, scope: !2815)
!2818 = !DILocation(line: 1115, column: 4, scope: !2815)
!2819 = !DILocation(line: 1116, column: 10, scope: !2815)
!2820 = !DILocation(line: 1116, column: 18, scope: !2815)
!2821 = !DILocation(line: 1116, column: 5, scope: !2815)
!2822 = !DILocation(line: 1116, column: 26, scope: !2815)
!2823 = !DILocation(line: 1116, column: 34, scope: !2815)
!2824 = !DILocation(line: 1116, column: 40, scope: !2815)
!2825 = !DILocation(line: 1117, column: 10, scope: !2815)
!2826 = !DILocation(line: 1117, column: 5, scope: !2815)
!2827 = !DILocation(line: 1117, column: 28, scope: !2815)
!2828 = !DILocation(line: 1118, column: 16, scope: !2815)
!2829 = !DILocation(line: 1118, column: 4, scope: !2815)
!2830 = !DILocation(line: 1119, column: 4, scope: !2815)
!2831 = !DILocation(line: 1121, column: 2, scope: !2807)
!2832 = !DILocation(line: 1123, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !501, line: 1123, column: 7)
!2834 = distinct !DILexicalBlock(scope: !2801, file: !501, line: 1122, column: 7)
!2835 = !DILocation(line: 1123, column: 7, scope: !2834)
!2836 = !DILocation(line: 1124, column: 83, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !501, line: 1123, column: 43)
!2838 = !DILocation(line: 1124, column: 89, scope: !2837)
!2839 = !DILocation(line: 1124, column: 97, scope: !2837)
!2840 = !DILocation(line: 1124, column: 4, scope: !2837)
!2841 = !DILocation(line: 1125, column: 10, scope: !2837)
!2842 = !DILocation(line: 1125, column: 18, scope: !2837)
!2843 = !DILocation(line: 1125, column: 5, scope: !2837)
!2844 = !DILocation(line: 1125, column: 26, scope: !2837)
!2845 = !DILocation(line: 1125, column: 34, scope: !2837)
!2846 = !DILocation(line: 1125, column: 40, scope: !2837)
!2847 = !DILocation(line: 1126, column: 10, scope: !2837)
!2848 = !DILocation(line: 1126, column: 5, scope: !2837)
!2849 = !DILocation(line: 1126, column: 28, scope: !2837)
!2850 = !DILocation(line: 1127, column: 16, scope: !2837)
!2851 = !DILocation(line: 1127, column: 4, scope: !2837)
!2852 = !DILocation(line: 1128, column: 4, scope: !2837)
!2853 = !DILocation(line: 1131, column: 17, scope: !2834)
!2854 = !DILocation(line: 1131, column: 3, scope: !2834)
!2855 = !DILocation(line: 1131, column: 11, scope: !2834)
!2856 = !DILocation(line: 1131, column: 15, scope: !2834)
!2857 = !DILocation(line: 1132, column: 17, scope: !2834)
!2858 = !DILocation(line: 1132, column: 3, scope: !2834)
!2859 = !DILocation(line: 1132, column: 11, scope: !2834)
!2860 = !DILocation(line: 1132, column: 15, scope: !2834)
!2861 = !DILocation(line: 1135, column: 14, scope: !2754)
!2862 = !DILocation(line: 1135, column: 2, scope: !2754)
!2863 = !DILocation(line: 1137, column: 9, scope: !2754)
!2864 = !DILocation(line: 1137, column: 2, scope: !2754)
!2865 = !DILocation(line: 1138, column: 1, scope: !2754)
!2866 = distinct !DISubprogram(name: "add_script_param", scope: !501, file: !501, line: 1141, type: !1979, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2867 = !DILocalVariable(name: "script", arg: 1, scope: !2866, file: !501, line: 1141, type: !660)
!2868 = !DILocation(line: 1141, column: 35, scope: !2866)
!2869 = !DILocalVariable(name: "param", arg: 2, scope: !2866, file: !501, line: 1141, type: !386)
!2870 = !DILocation(line: 1141, column: 49, scope: !2866)
!2871 = !DILocation(line: 1147, column: 19, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2866, file: !501, line: 1147, column: 6)
!2873 = !DILocation(line: 1147, column: 27, scope: !2872)
!2874 = !DILocation(line: 1147, column: 36, scope: !2872)
!2875 = !DILocation(line: 1147, column: 6, scope: !2872)
!2876 = !DILocation(line: 1147, column: 14, scope: !2872)
!2877 = !DILocation(line: 1147, column: 6, scope: !2866)
!2878 = !DILocation(line: 1148, column: 77, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2872, file: !501, line: 1147, column: 42)
!2880 = !DILocation(line: 1148, column: 85, scope: !2879)
!2881 = !DILocation(line: 1148, column: 94, scope: !2879)
!2882 = !DILocation(line: 1148, column: 3, scope: !2879)
!2883 = !DILocation(line: 1149, column: 3, scope: !2879)
!2884 = !DILocation(line: 1153, column: 37, scope: !2866)
!2885 = !DILocation(line: 1153, column: 15, scope: !2866)
!2886 = !DILocation(line: 1153, column: 23, scope: !2866)
!2887 = !DILocation(line: 1153, column: 31, scope: !2866)
!2888 = !DILocation(line: 1153, column: 2, scope: !2866)
!2889 = !DILocation(line: 1153, column: 10, scope: !2866)
!2890 = !DILocation(line: 1153, column: 35, scope: !2866)
!2891 = !DILocation(line: 1154, column: 1, scope: !2866)
!2892 = !DILocation(line: 1154, column: 1, scope: !2893)
!2893 = !DILexicalBlockFile(scope: !2866, file: !501, discriminator: 1)
!2894 = distinct !DISubprogram(name: "notify_resource_release", scope: !501, file: !501, line: 1157, type: !2521, isLocal: false, isDefinition: true, scopeLine: 1158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2895 = !DILocation(line: 1159, column: 6, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2894, file: !501, line: 1159, column: 6)
!2897 = !DILocation(line: 1159, column: 6, scope: !2894)
!2898 = !DILocation(line: 1160, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !501, line: 1159, column: 24)
!2900 = !DILocation(line: 1160, column: 4, scope: !2899)
!2901 = !DILocation(line: 1160, column: 23, scope: !2899)
!2902 = !DILocation(line: 1161, column: 20, scope: !2899)
!2903 = !DILocation(line: 1162, column: 8, scope: !2899)
!2904 = !DILocation(line: 1163, column: 2, scope: !2899)
!2905 = !DILocation(line: 1164, column: 1, scope: !2894)
!2906 = distinct !DISubprogram(name: "notify_script_compare", scope: !501, file: !501, line: 1167, type: !2907, isLocal: false, isDefinition: true, scopeLine: 1168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!461, !660, !660}
!2909 = !DILocalVariable(name: "a", arg: 1, scope: !2906, file: !501, line: 1167, type: !660)
!2910 = !DILocation(line: 1167, column: 40, scope: !2906)
!2911 = !DILocalVariable(name: "b", arg: 2, scope: !2906, file: !501, line: 1167, type: !660)
!2912 = !DILocation(line: 1167, column: 60, scope: !2906)
!2913 = !DILocalVariable(name: "i", scope: !2906, file: !501, line: 1169, type: !384)
!2914 = !DILocation(line: 1169, column: 6, scope: !2906)
!2915 = !DILocation(line: 1171, column: 6, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2906, file: !501, line: 1171, column: 6)
!2917 = !DILocation(line: 1171, column: 9, scope: !2916)
!2918 = !DILocation(line: 1171, column: 21, scope: !2916)
!2919 = !DILocation(line: 1171, column: 24, scope: !2916)
!2920 = !DILocation(line: 1171, column: 18, scope: !2916)
!2921 = !DILocation(line: 1171, column: 6, scope: !2906)
!2922 = !DILocation(line: 1172, column: 3, scope: !2916)
!2923 = !DILocation(line: 1173, column: 9, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2906, file: !501, line: 1173, column: 2)
!2925 = !DILocation(line: 1173, column: 7, scope: !2924)
!2926 = !DILocation(line: 1173, column: 14, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2928, file: !501, discriminator: 1)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !501, line: 1173, column: 2)
!2929 = !DILocation(line: 1173, column: 18, scope: !2927)
!2930 = !DILocation(line: 1173, column: 21, scope: !2927)
!2931 = !DILocation(line: 1173, column: 16, scope: !2927)
!2932 = !DILocation(line: 1173, column: 2, scope: !2927)
!2933 = !DILocation(line: 1174, column: 22, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !501, line: 1174, column: 7)
!2935 = distinct !DILexicalBlock(scope: !2928, file: !501, line: 1173, column: 36)
!2936 = !DILocation(line: 1174, column: 14, scope: !2934)
!2937 = !DILocation(line: 1174, column: 17, scope: !2934)
!2938 = !DILocation(line: 1174, column: 34, scope: !2934)
!2939 = !DILocation(line: 1174, column: 26, scope: !2934)
!2940 = !DILocation(line: 1174, column: 29, scope: !2934)
!2941 = !DILocation(line: 1174, column: 7, scope: !2934)
!2942 = !DILocation(line: 1174, column: 7, scope: !2935)
!2943 = !DILocation(line: 1175, column: 4, scope: !2934)
!2944 = !DILocation(line: 1176, column: 2, scope: !2935)
!2945 = !DILocation(line: 1173, column: 32, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2928, file: !501, discriminator: 2)
!2947 = !DILocation(line: 1173, column: 2, scope: !2946)
!2948 = distinct !{!2948, !2949}
!2949 = !DILocation(line: 1173, column: 2, scope: !2906)
!2950 = !DILocation(line: 1178, column: 2, scope: !2906)
!2951 = !DILocation(line: 1179, column: 1, scope: !2906)
!2952 = distinct !DISubprogram(name: "notify_fifo_exec", scope: !501, file: !501, line: 160, type: !2953, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!487, !1017, !661, !365, !660}
!2955 = !DILocalVariable(name: "m", arg: 1, scope: !2952, file: !501, line: 160, type: !1017)
!2956 = !DILocation(line: 160, column: 35, scope: !2952)
!2957 = !DILocalVariable(name: "func", arg: 2, scope: !2952, file: !501, line: 160, type: !661)
!2958 = !DILocation(line: 160, column: 44, scope: !2952)
!2959 = !DILocalVariable(name: "arg", arg: 3, scope: !2952, file: !501, line: 160, type: !365)
!2960 = !DILocation(line: 160, column: 70, scope: !2952)
!2961 = !DILocalVariable(name: "script", arg: 4, scope: !2952, file: !501, line: 160, type: !660)
!2962 = !DILocation(line: 160, column: 92, scope: !2952)
!2963 = !DILocalVariable(name: "pid", scope: !2952, file: !501, line: 162, type: !487)
!2964 = !DILocation(line: 162, column: 8, scope: !2952)
!2965 = !DILocalVariable(name: "retval", scope: !2952, file: !501, line: 163, type: !384)
!2966 = !DILocation(line: 163, column: 6, scope: !2952)
!2967 = !DILocalVariable(name: "scr", scope: !2952, file: !501, line: 164, type: !386)
!2968 = !DILocation(line: 164, column: 8, scope: !2952)
!2969 = !DILocation(line: 166, column: 8, scope: !2952)
!2970 = !DILocation(line: 166, column: 6, scope: !2952)
!2971 = !DILocation(line: 169, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2952, file: !501, line: 169, column: 6)
!2973 = !DILocation(line: 169, column: 10, scope: !2972)
!2974 = !DILocation(line: 169, column: 6, scope: !2952)
!2975 = !DILocation(line: 170, column: 3, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !501, line: 169, column: 15)
!2977 = !DILocation(line: 171, column: 3, scope: !2976)
!2978 = !DILocation(line: 175, column: 6, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2952, file: !501, line: 175, column: 6)
!2980 = !DILocation(line: 175, column: 6, scope: !2952)
!2981 = !DILocation(line: 176, column: 20, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !501, line: 175, column: 11)
!2983 = !DILocation(line: 176, column: 23, scope: !2982)
!2984 = !DILocation(line: 176, column: 29, scope: !2982)
!2985 = !DILocation(line: 176, column: 34, scope: !2982)
!2986 = !DILocation(line: 176, column: 3, scope: !2982)
!2987 = !DILocation(line: 177, column: 3, scope: !2982)
!2988 = !DILocation(line: 184, column: 2, scope: !2952)
!2989 = !DILocation(line: 185, column: 17, scope: !2952)
!2990 = !DILocation(line: 185, column: 25, scope: !2952)
!2991 = !DILocation(line: 185, column: 30, scope: !2952)
!2992 = !DILocation(line: 185, column: 38, scope: !2952)
!2993 = !DILocation(line: 185, column: 2, scope: !2952)
!2994 = !DILocation(line: 187, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2952, file: !501, line: 187, column: 6)
!2996 = !DILocation(line: 187, column: 14, scope: !2995)
!2997 = !DILocation(line: 187, column: 20, scope: !2995)
!2998 = !DILocation(line: 187, column: 6, scope: !2952)
!2999 = !DILocation(line: 189, column: 3, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2995, file: !501, line: 187, column: 28)
!3001 = !DILocation(line: 191, column: 10, scope: !3000)
!3002 = !DILocation(line: 191, column: 18, scope: !3000)
!3003 = !DILocation(line: 191, column: 27, scope: !3000)
!3004 = !DILocation(line: 191, column: 35, scope: !3000)
!3005 = !DILocation(line: 191, column: 41, scope: !3000)
!3006 = !DILocation(line: 191, column: 3, scope: !3000)
!3007 = !DILocation(line: 193, column: 8, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3000, file: !501, line: 193, column: 6)
!3009 = !DILocation(line: 193, column: 7, scope: !3008)
!3010 = !DILocation(line: 193, column: 12, scope: !3008)
!3011 = !DILocation(line: 193, column: 6, scope: !3000)
!3012 = !DILocation(line: 194, column: 68, scope: !3008)
!3013 = !DILocation(line: 194, column: 76, scope: !3008)
!3014 = !DILocation(line: 194, column: 4, scope: !3008)
!3015 = !DILocation(line: 196, column: 84, scope: !3008)
!3016 = !DILocation(line: 196, column: 92, scope: !3008)
!3017 = !DILocation(line: 196, column: 103, scope: !3008)
!3018 = !DILocation(line: 196, column: 102, scope: !3008)
!3019 = !DILocation(line: 196, column: 4, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !3008, file: !501, discriminator: 1)
!3021 = !DILocation(line: 197, column: 2, scope: !3000)
!3022 = !DILocation(line: 199, column: 33, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2995, file: !501, line: 198, column: 7)
!3024 = !DILocation(line: 199, column: 25, scope: !3023)
!3025 = !DILocation(line: 199, column: 23, scope: !3023)
!3026 = !DILocation(line: 199, column: 12, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3023, file: !501, discriminator: 1)
!3028 = !DILocation(line: 199, column: 10, scope: !3023)
!3029 = !DILocation(line: 201, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3023, file: !501, line: 201, column: 7)
!3031 = !DILocation(line: 201, column: 14, scope: !3030)
!3032 = !DILocation(line: 201, column: 7, scope: !3023)
!3033 = !DILocation(line: 203, column: 60, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !501, line: 201, column: 22)
!3035 = !DILocation(line: 203, column: 4, scope: !3034)
!3036 = !DILocation(line: 204, column: 3, scope: !3034)
!3037 = !DILocation(line: 205, column: 12, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3030, file: !501, line: 205, column: 12)
!3039 = !DILocation(line: 205, column: 19, scope: !3038)
!3040 = !DILocation(line: 205, column: 12, scope: !3030)
!3041 = !DILocation(line: 206, column: 61, scope: !3038)
!3042 = !DILocation(line: 206, column: 4, scope: !3038)
!3043 = !DILocation(line: 208, column: 3, scope: !3023)
!3044 = !DILocation(line: 212, column: 2, scope: !2952)
!3045 = !DILocation(line: 213, column: 1, scope: !2952)
!3046 = distinct !DISubprogram(name: "set_privileges", scope: !501, file: !501, line: 72, type: !3047, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !535)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!461, !503, !506}
!3049 = !DILocalVariable(name: "uid", arg: 1, scope: !3046, file: !501, line: 72, type: !503)
!3050 = !DILocation(line: 72, column: 22, scope: !3046)
!3051 = !DILocalVariable(name: "gid", arg: 2, scope: !3046, file: !501, line: 72, type: !506)
!3052 = !DILocation(line: 72, column: 33, scope: !3046)
!3053 = !DILocalVariable(name: "retval", scope: !3046, file: !501, line: 74, type: !384)
!3054 = !DILocation(line: 74, column: 6, scope: !3046)
!3055 = !DILocation(line: 77, column: 2, scope: !3046)
!3056 = !DILocation(line: 80, column: 6, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3046, file: !501, line: 80, column: 6)
!3058 = !DILocation(line: 80, column: 15, scope: !3057)
!3059 = !DILocation(line: 80, column: 6, scope: !3046)
!3060 = !DILocation(line: 81, column: 14, scope: !3057)
!3061 = !DILocation(line: 81, column: 12, scope: !3057)
!3062 = !DILocation(line: 81, column: 3, scope: !3057)
!3063 = !DILocation(line: 82, column: 6, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3046, file: !501, line: 82, column: 6)
!3065 = !DILocation(line: 82, column: 15, scope: !3064)
!3066 = !DILocation(line: 82, column: 6, scope: !3046)
!3067 = !DILocation(line: 83, column: 3, scope: !3064)
!3068 = !DILocation(line: 86, column: 6, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3046, file: !501, line: 86, column: 6)
!3070 = !DILocation(line: 86, column: 6, scope: !3046)
!3071 = !DILocation(line: 87, column: 19, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3069, file: !501, line: 86, column: 11)
!3073 = !DILocation(line: 87, column: 12, scope: !3072)
!3074 = !DILocation(line: 87, column: 10, scope: !3072)
!3075 = !DILocation(line: 88, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !501, line: 88, column: 7)
!3077 = !DILocation(line: 88, column: 14, scope: !3076)
!3078 = !DILocation(line: 88, column: 7, scope: !3072)
!3079 = !DILocation(line: 89, column: 54, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !501, line: 88, column: 19)
!3081 = !DILocation(line: 89, column: 4, scope: !3080)
!3082 = !DILocation(line: 90, column: 4, scope: !3080)
!3083 = !DILocation(line: 94, column: 12, scope: !3072)
!3084 = !DILocation(line: 94, column: 10, scope: !3072)
!3085 = !DILocation(line: 95, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3072, file: !501, line: 95, column: 7)
!3087 = !DILocation(line: 95, column: 14, scope: !3086)
!3088 = !DILocation(line: 95, column: 7, scope: !3072)
!3089 = !DILocation(line: 96, column: 57, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !501, line: 95, column: 19)
!3091 = !DILocation(line: 96, column: 4, scope: !3090)
!3092 = !DILocation(line: 97, column: 4, scope: !3090)
!3093 = !DILocation(line: 99, column: 2, scope: !3072)
!3094 = !DILocation(line: 101, column: 6, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3046, file: !501, line: 101, column: 6)
!3096 = !DILocation(line: 101, column: 6, scope: !3046)
!3097 = !DILocation(line: 102, column: 19, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3095, file: !501, line: 101, column: 11)
!3099 = !DILocation(line: 102, column: 12, scope: !3098)
!3100 = !DILocation(line: 102, column: 10, scope: !3098)
!3101 = !DILocation(line: 103, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !501, line: 103, column: 7)
!3103 = !DILocation(line: 103, column: 14, scope: !3102)
!3104 = !DILocation(line: 103, column: 7, scope: !3098)
!3105 = !DILocation(line: 104, column: 54, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !501, line: 103, column: 19)
!3107 = !DILocation(line: 104, column: 4, scope: !3106)
!3108 = !DILocation(line: 105, column: 4, scope: !3106)
!3109 = !DILocation(line: 107, column: 2, scope: !3098)
!3110 = !DILocation(line: 110, column: 2, scope: !3046)
!3111 = !DILocation(line: 111, column: 2, scope: !3046)
!3112 = !DILocation(line: 113, column: 2, scope: !3046)
!3113 = !DILocation(line: 114, column: 1, scope: !3046)
