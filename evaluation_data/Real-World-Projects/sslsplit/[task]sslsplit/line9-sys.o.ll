; ModuleID = './line9-sys.o.i'
source_filename = "./line9-sys.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon, %union.anon.0 }
%union.anon = type { [16 x i8] }
%union.anon.0 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.FTS = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent**, i64, i8*, i32, i32, i32, i32 (i8*, i8*)*, i32 }
%struct._ftsent = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent*, i64, i8*, i8*, i8*, i32, i32, i16, i16, i64, i64, i64, i16, i16, i16, i16, %struct.stat*, [1 x i8] }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.cmsghdr = type { i64, i32, i32, [0 x i8] }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to getgrnam group '%s': %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to getpwnam user '%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to initgroups user '%s': %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to chroot to '%s': %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to chdir to '/': %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to setgid to %i: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to setuid to %i: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to setuid(getuid()): %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to load user '%s': %s (%i)\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to load group '%s': %s (%i)\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed to open '%s': %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Failed to lock '%s': %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@sys_user_str.bufsize = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Failed to lookup uid: %s (%i)\0A\00", align 1
@sys_group_str.bufsize = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to lookup gid: %s (%i)\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Cannot resolve address '%s' port '%s': %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Cannot allocate memory\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"Cannot get nameinfo for socket address: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Error stating file: %s (%i)\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"./%s\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Cannot open directory '%s': %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Error reading directory entry: %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [39 x i8] c"sysconf(_SC_OPEN_MAX) failed: %s (%i)\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%5d:\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c" blkdev\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" chrdev\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" dir   \00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c" fifo  \00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c" lnkfil\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c" regfil\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c" socket\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c" unknwn\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"[%s]:%s\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c" %-6s %s -> %s\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"in6\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c" unix   %s -> %s\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c" unspec\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c" (%i)\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sys_rand_seeded = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"unnmd\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"abstr:%02x:%02x:%02x:%02x\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"pname:%s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @sys_privdrop(i8*, i8*, i8*) #0 !dbg !355 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.group*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !360, metadata !361), !dbg !362
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !363, metadata !361), !dbg !364
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !365, metadata !361), !dbg !366
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !367, metadata !361), !dbg !379
  store %struct.passwd* null, %struct.passwd** %7, align 8, !dbg !379
  call void @llvm.dbg.declare(metadata %struct.group** %8, metadata !380, metadata !361), !dbg !390
  store %struct.group* null, %struct.group** %8, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata i32* %9, metadata !391, metadata !361), !dbg !392
  store i32 -1, i32* %9, align 4, !dbg !392
  %10 = load i8*, i8** %5, align 8, !dbg !393
  %11 = icmp ne i8* %10, null, !dbg !393
  br i1 %11, label %12, label %25, !dbg !395

; <label>:12:                                     ; preds = %3
  %13 = call i32* @__errno_location() #1, !dbg !396
  store i32 0, i32* %13, align 4, !dbg !398
  %14 = load i8*, i8** %5, align 8, !dbg !399
  %15 = call %struct.group* @getgrnam(i8* %14), !dbg !401
  store %struct.group* %15, %struct.group** %8, align 8, !dbg !402
  %16 = icmp ne %struct.group* %15, null, !dbg !402
  br i1 %16, label %24, label %17, !dbg !403

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8, !dbg !404
  %19 = call i32* @__errno_location() #1, !dbg !406
  %20 = load i32, i32* %19, align 4, !dbg !407
  %21 = call i8* @strerror(i32 %20) #7, !dbg !408
  %22 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* %18, i8* %21), !dbg !410
  %23 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !411
  br label %139, !dbg !412

; <label>:24:                                     ; preds = %12
  br label %25, !dbg !413

; <label>:25:                                     ; preds = %24, %3
  %26 = load i8*, i8** %4, align 8, !dbg !414
  %27 = icmp ne i8* %26, null, !dbg !414
  br i1 %27, label %28, label %64, !dbg !416

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno_location() #1, !dbg !417
  store i32 0, i32* %29, align 4, !dbg !420
  %30 = load i8*, i8** %4, align 8, !dbg !421
  %31 = call %struct.passwd* @getpwnam(i8* %30), !dbg !423
  store %struct.passwd* %31, %struct.passwd** %7, align 8, !dbg !424
  %32 = icmp ne %struct.passwd* %31, null, !dbg !424
  br i1 %32, label %40, label %33, !dbg !425

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %4, align 8, !dbg !426
  %35 = call i32* @__errno_location() #1, !dbg !428
  %36 = load i32, i32* %35, align 4, !dbg !429
  %37 = call i8* @strerror(i32 %36) #7, !dbg !430
  %38 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8* %34, i8* %37), !dbg !432
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !433
  br label %139, !dbg !434

; <label>:40:                                     ; preds = %28
  %41 = load %struct.group*, %struct.group** %8, align 8, !dbg !435
  %42 = icmp ne %struct.group* %41, null, !dbg !437
  br i1 %42, label %43, label %49, !dbg !438

; <label>:43:                                     ; preds = %40
  %44 = load %struct.group*, %struct.group** %8, align 8, !dbg !439
  %45 = getelementptr inbounds %struct.group, %struct.group* %44, i32 0, i32 2, !dbg !442
  %46 = load i32, i32* %45, align 8, !dbg !442
  %47 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !443
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 3, !dbg !444
  store i32 %46, i32* %48, align 4, !dbg !445
  br label %49, !dbg !446

; <label>:49:                                     ; preds = %43, %40
  %50 = load i8*, i8** %4, align 8, !dbg !447
  %51 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !449
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 3, !dbg !450
  %53 = load i32, i32* %52, align 4, !dbg !450
  %54 = call i32 @initgroups(i8* %50, i32 %53), !dbg !451
  %55 = icmp eq i32 %54, -1, !dbg !452
  br i1 %55, label %56, label %63, !dbg !453

; <label>:56:                                     ; preds = %49
  %57 = load i8*, i8** %4, align 8, !dbg !454
  %58 = call i32* @__errno_location() #1, !dbg !456
  %59 = load i32, i32* %58, align 4, !dbg !457
  %60 = call i8* @strerror(i32 %59) #7, !dbg !458
  %61 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* %57, i8* %60), !dbg !460
  %62 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !461
  br label %139, !dbg !462

; <label>:63:                                     ; preds = %49
  br label %64, !dbg !463

; <label>:64:                                     ; preds = %63, %25
  %65 = load i8*, i8** %6, align 8, !dbg !464
  %66 = icmp ne i8* %65, null, !dbg !464
  br i1 %66, label %67, label %88, !dbg !466

; <label>:67:                                     ; preds = %64
  %68 = load i8*, i8** %6, align 8, !dbg !467
  %69 = call i32 @chroot(i8* %68) #7, !dbg !470
  %70 = icmp eq i32 %69, -1, !dbg !471
  br i1 %70, label %71, label %78, !dbg !472

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %6, align 8, !dbg !473
  %73 = call i32* @__errno_location() #1, !dbg !475
  %74 = load i32, i32* %73, align 4, !dbg !476
  %75 = call i8* @strerror(i32 %74) #7, !dbg !477
  %76 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* %72, i8* %75), !dbg !478
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !480
  br label %139, !dbg !481

; <label>:78:                                     ; preds = %67
  %79 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !482
  %80 = icmp eq i32 %79, -1, !dbg !484
  br i1 %80, label %81, label %87, !dbg !485

; <label>:81:                                     ; preds = %78
  %82 = call i32* @__errno_location() #1, !dbg !486
  %83 = load i32, i32* %82, align 4, !dbg !488
  %84 = call i8* @strerror(i32 %83) #7, !dbg !489
  %85 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %84), !dbg !490
  %86 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !492
  br label %139, !dbg !493

; <label>:87:                                     ; preds = %78
  br label %88, !dbg !494

; <label>:88:                                     ; preds = %87, %64
  %89 = load i8*, i8** %4, align 8, !dbg !495
  %90 = icmp ne i8* %89, null, !dbg !495
  br i1 %90, label %91, label %122, !dbg !497

; <label>:91:                                     ; preds = %88
  %92 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !498
  %93 = getelementptr inbounds %struct.passwd, %struct.passwd* %92, i32 0, i32 3, !dbg !501
  %94 = load i32, i32* %93, align 4, !dbg !501
  %95 = call i32 @setgid(i32 %94) #7, !dbg !502
  %96 = icmp eq i32 %95, -1, !dbg !503
  br i1 %96, label %97, label %106, !dbg !504

; <label>:97:                                     ; preds = %91
  %98 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !505
  %99 = getelementptr inbounds %struct.passwd, %struct.passwd* %98, i32 0, i32 3, !dbg !507
  %100 = load i32, i32* %99, align 4, !dbg !507
  %101 = call i32* @__errno_location() #1, !dbg !508
  %102 = load i32, i32* %101, align 4, !dbg !509
  %103 = call i8* @strerror(i32 %102) #7, !dbg !510
  %104 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 %100, i8* %103), !dbg !511
  %105 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !513
  br label %139, !dbg !514

; <label>:106:                                    ; preds = %91
  %107 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !515
  %108 = getelementptr inbounds %struct.passwd, %struct.passwd* %107, i32 0, i32 2, !dbg !517
  %109 = load i32, i32* %108, align 8, !dbg !517
  %110 = call i32 @setuid(i32 %109) #7, !dbg !518
  %111 = icmp eq i32 %110, -1, !dbg !519
  br i1 %111, label %112, label %121, !dbg !520

; <label>:112:                                    ; preds = %106
  %113 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !521
  %114 = getelementptr inbounds %struct.passwd, %struct.passwd* %113, i32 0, i32 2, !dbg !523
  %115 = load i32, i32* %114, align 8, !dbg !523
  %116 = call i32* @__errno_location() #1, !dbg !524
  %117 = load i32, i32* %116, align 4, !dbg !525
  %118 = call i8* @strerror(i32 %117) #7, !dbg !526
  %119 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %115, i8* %118), !dbg !527
  %120 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !529
  br label %139, !dbg !530

; <label>:121:                                    ; preds = %106
  br label %138, !dbg !531

; <label>:122:                                    ; preds = %88
  %123 = call i32 @getuid() #7, !dbg !532
  %124 = call i32 @geteuid() #7, !dbg !535
  %125 = icmp ne i32 %123, %124, !dbg !537
  br i1 %125, label %126, label %137, !dbg !532

; <label>:126:                                    ; preds = %122
  %127 = call i32 @getuid() #7, !dbg !538
  %128 = call i32 @setuid(i32 %127) #7, !dbg !541
  %129 = icmp eq i32 %128, -1, !dbg !543
  br i1 %129, label %130, label %136, !dbg !544

; <label>:130:                                    ; preds = %126
  %131 = call i32* @__errno_location() #1, !dbg !545
  %132 = load i32, i32* %131, align 4, !dbg !547
  %133 = call i8* @strerror(i32 %132) #7, !dbg !548
  %134 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* %133), !dbg !549
  %135 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !551
  br label %139, !dbg !552

; <label>:136:                                    ; preds = %126
  br label %137, !dbg !553

; <label>:137:                                    ; preds = %136, %122
  br label %138

; <label>:138:                                    ; preds = %137, %121
  store i32 0, i32* %9, align 4, !dbg !554
  br label %139, !dbg !555

; <label>:139:                                    ; preds = %138, %130, %112, %97, %81, %71, %56, %33, %17
  %140 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !556
  %141 = icmp ne %struct.passwd* %140, null, !dbg !556
  br i1 %141, label %142, label %143, !dbg !558

; <label>:142:                                    ; preds = %139
  call void @endpwent(), !dbg !559
  br label %143, !dbg !561

; <label>:143:                                    ; preds = %142, %139
  %144 = load %struct.group*, %struct.group** %8, align 8, !dbg !562
  %145 = icmp ne %struct.group* %144, null, !dbg !562
  br i1 %145, label %146, label %147, !dbg !564

; <label>:146:                                    ; preds = %143
  call void @endgrent(), !dbg !565
  br label %147, !dbg !567

; <label>:147:                                    ; preds = %146, %143
  %148 = load i32, i32* %9, align 4, !dbg !568
  ret i32 %148, !dbg !569
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare %struct.group* @getgrnam(i8*) #3

declare i32 @log_err_printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare i32 @assert(...) #3

declare %struct.passwd* @getpwnam(i8*) #3

declare i32 @initgroups(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @chroot(i8*) #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: nounwind
declare i32 @setgid(i32) #4

; Function Attrs: nounwind
declare i32 @setuid(i32) #4

; Function Attrs: nounwind
declare i32 @getuid() #4

; Function Attrs: nounwind
declare i32 @geteuid() #4

declare void @endpwent() #3

declare void @endgrent() #3

; Function Attrs: nounwind uwtable
define i32 @sys_uid(i8* nonnull, i32*) #0 !dbg !570 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !574, metadata !361), !dbg !575
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !576, metadata !361), !dbg !577
  call void @llvm.dbg.declare(metadata %struct.passwd** %5, metadata !578, metadata !361), !dbg !579
  call void @llvm.dbg.declare(metadata i32* %6, metadata !580, metadata !361), !dbg !581
  %7 = call i32* @__errno_location() #1, !dbg !582
  store i32 0, i32* %7, align 4, !dbg !583
  %8 = load i8*, i8** %3, align 8, !dbg !584
  %9 = call %struct.passwd* @getpwnam(i8* %8), !dbg !586
  store %struct.passwd* %9, %struct.passwd** %5, align 8, !dbg !587
  %10 = icmp ne %struct.passwd* %9, null, !dbg !587
  br i1 %10, label %28, label %11, !dbg !588

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !589
  %13 = load i32, i32* %12, align 4, !dbg !592
  %14 = icmp ne i32 %13, 0, !dbg !593
  br i1 %14, label %15, label %27, !dbg !594

; <label>:15:                                     ; preds = %11
  %16 = call i32* @__errno_location() #1, !dbg !595
  %17 = load i32, i32* %16, align 4, !dbg !597
  %18 = icmp ne i32 %17, 2, !dbg !598
  br i1 %18, label %19, label %27, !dbg !599

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %3, align 8, !dbg !600
  %21 = call i32* @__errno_location() #1, !dbg !602
  %22 = load i32, i32* %21, align 4, !dbg !603
  %23 = call i8* @strerror(i32 %22) #7, !dbg !604
  %24 = call i32* @__errno_location() #1, !dbg !606
  %25 = load i32, i32* %24, align 4, !dbg !608
  %26 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0), i8* %20, i8* %23, i32 %25), !dbg !609
  br label %27, !dbg !610

; <label>:27:                                     ; preds = %19, %15, %11
  store i32 -1, i32* %6, align 4, !dbg !611
  br label %37, !dbg !612

; <label>:28:                                     ; preds = %2
  %29 = load i32*, i32** %4, align 8, !dbg !613
  %30 = icmp ne i32* %29, null, !dbg !613
  br i1 %30, label %31, label %36, !dbg !616

; <label>:31:                                     ; preds = %28
  %32 = load %struct.passwd*, %struct.passwd** %5, align 8, !dbg !617
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 2, !dbg !618
  %34 = load i32, i32* %33, align 8, !dbg !618
  %35 = load i32*, i32** %4, align 8, !dbg !619
  store i32 %34, i32* %35, align 4, !dbg !620
  br label %36, !dbg !621

; <label>:36:                                     ; preds = %31, %28
  store i32 0, i32* %6, align 4, !dbg !622
  br label %37

; <label>:37:                                     ; preds = %36, %27
  call void @endpwent(), !dbg !623
  %38 = load i32, i32* %6, align 4, !dbg !624
  ret i32 %38, !dbg !625
}

; Function Attrs: nounwind uwtable
define i32 @sys_isuser(i8* nonnull) #0 !dbg !626 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !629, metadata !361), !dbg !630
  %3 = load i8*, i8** %2, align 8, !dbg !631
  %4 = call i32 @sys_uid(i8* %3, i32* null), !dbg !632
  %5 = icmp eq i32 %4, 0, !dbg !633
  %6 = zext i1 %5 to i32, !dbg !633
  ret i32 %6, !dbg !634
}

; Function Attrs: nounwind uwtable
define i32 @sys_gid(i8* nonnull, i32*) #0 !dbg !635 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.group*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !639, metadata !361), !dbg !640
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !641, metadata !361), !dbg !642
  call void @llvm.dbg.declare(metadata %struct.group** %5, metadata !643, metadata !361), !dbg !644
  call void @llvm.dbg.declare(metadata i32* %6, metadata !645, metadata !361), !dbg !646
  %7 = call i32* @__errno_location() #1, !dbg !647
  store i32 0, i32* %7, align 4, !dbg !648
  %8 = load i8*, i8** %3, align 8, !dbg !649
  %9 = call %struct.group* @getgrnam(i8* %8), !dbg !651
  store %struct.group* %9, %struct.group** %5, align 8, !dbg !652
  %10 = icmp ne %struct.group* %9, null, !dbg !652
  br i1 %10, label %28, label %11, !dbg !653

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !654
  %13 = load i32, i32* %12, align 4, !dbg !657
  %14 = icmp ne i32 %13, 0, !dbg !658
  br i1 %14, label %15, label %27, !dbg !659

; <label>:15:                                     ; preds = %11
  %16 = call i32* @__errno_location() #1, !dbg !660
  %17 = load i32, i32* %16, align 4, !dbg !662
  %18 = icmp ne i32 %17, 2, !dbg !663
  br i1 %18, label %19, label %27, !dbg !664

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %3, align 8, !dbg !665
  %21 = call i32* @__errno_location() #1, !dbg !667
  %22 = load i32, i32* %21, align 4, !dbg !668
  %23 = call i8* @strerror(i32 %22) #7, !dbg !669
  %24 = call i32* @__errno_location() #1, !dbg !671
  %25 = load i32, i32* %24, align 4, !dbg !673
  %26 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i8* %20, i8* %23, i32 %25), !dbg !674
  br label %27, !dbg !675

; <label>:27:                                     ; preds = %19, %15, %11
  store i32 -1, i32* %6, align 4, !dbg !676
  br label %37, !dbg !677

; <label>:28:                                     ; preds = %2
  %29 = load i32*, i32** %4, align 8, !dbg !678
  %30 = icmp ne i32* %29, null, !dbg !678
  br i1 %30, label %31, label %36, !dbg !681

; <label>:31:                                     ; preds = %28
  %32 = load %struct.group*, %struct.group** %5, align 8, !dbg !682
  %33 = getelementptr inbounds %struct.group, %struct.group* %32, i32 0, i32 2, !dbg !683
  %34 = load i32, i32* %33, align 8, !dbg !683
  %35 = load i32*, i32** %4, align 8, !dbg !684
  store i32 %34, i32* %35, align 4, !dbg !685
  br label %36, !dbg !686

; <label>:36:                                     ; preds = %31, %28
  store i32 0, i32* %6, align 4, !dbg !687
  br label %37

; <label>:37:                                     ; preds = %36, %27
  call void @endgrent(), !dbg !688
  %38 = load i32, i32* %6, align 4, !dbg !689
  ret i32 %38, !dbg !690
}

; Function Attrs: nounwind uwtable
define i32 @sys_isgroup(i8* nonnull) #0 !dbg !691 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !692, metadata !361), !dbg !693
  %3 = load i8*, i8** %2, align 8, !dbg !694
  %4 = call i32 @sys_gid(i8* %3, i32* null), !dbg !695
  %5 = icmp eq i32 %4, 0, !dbg !696
  %6 = zext i1 %5 to i32, !dbg !696
  ret i32 %6, !dbg !697
}

; Function Attrs: nounwind uwtable
define i32 @sys_isgeteuid(i8* nonnull) #0 !dbg !698 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !699, metadata !361), !dbg !700
  call void @llvm.dbg.declare(metadata i32* %4, metadata !701, metadata !361), !dbg !702
  %5 = load i8*, i8** %3, align 8, !dbg !703
  %6 = call i32 @sys_uid(i8* %5, i32* %4), !dbg !705
  %7 = icmp eq i32 %6, -1, !dbg !706
  br i1 %7, label %8, label %9, !dbg !707

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !708
  br label %15, !dbg !708

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !709
  %11 = call i32 @geteuid() #7, !dbg !711
  %12 = icmp eq i32 %10, %11, !dbg !712
  br i1 %12, label %13, label %14, !dbg !713

; <label>:13:                                     ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !714
  br label %15, !dbg !714

; <label>:14:                                     ; preds = %9
  store i32 0, i32* %2, align 4, !dbg !715
  br label %15, !dbg !715

; <label>:15:                                     ; preds = %14, %13, %8
  %16 = load i32, i32* %2, align 4, !dbg !716
  ret i32 %16, !dbg !716
}

; Function Attrs: nounwind uwtable
define i32 @sys_pidf_open(i8* nonnull) #0 !dbg !717 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !718, metadata !361), !dbg !719
  call void @llvm.dbg.declare(metadata i32* %4, metadata !720, metadata !361), !dbg !721
  %5 = load i8*, i8** %3, align 8, !dbg !722
  %6 = call i32 (i8*, i32, ...) @open(i8* %5, i32 66, i32 420), !dbg !724
  store i32 %6, i32* %4, align 4, !dbg !725
  %7 = icmp eq i32 %6, -1, !dbg !726
  br i1 %7, label %8, label %14, !dbg !727

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !728
  %10 = call i32* @__errno_location() #1, !dbg !730
  %11 = load i32, i32* %10, align 4, !dbg !731
  %12 = call i8* @strerror(i32 %11) #7, !dbg !732
  %13 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* %9, i8* %12), !dbg !734
  store i32 -1, i32* %2, align 4, !dbg !735
  br label %28, !dbg !735

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* %4, align 4, !dbg !736
  %16 = call i32 @flock(i32 %15, i32 6) #7, !dbg !738
  %17 = icmp eq i32 %16, -1, !dbg !739
  br i1 %17, label %18, label %26, !dbg !740

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %3, align 8, !dbg !741
  %20 = call i32* @__errno_location() #1, !dbg !743
  %21 = load i32, i32* %20, align 4, !dbg !744
  %22 = call i8* @strerror(i32 %21) #7, !dbg !745
  %23 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %19, i8* %22), !dbg !747
  %24 = load i32, i32* %4, align 4, !dbg !748
  %25 = call i32 @close(i32 %24), !dbg !749
  store i32 -1, i32* %2, align 4, !dbg !750
  br label %28, !dbg !750

; <label>:26:                                     ; preds = %14
  %27 = load i32, i32* %4, align 4, !dbg !751
  store i32 %27, i32* %2, align 4, !dbg !752
  br label %28, !dbg !752

; <label>:28:                                     ; preds = %26, %18, %8
  %29 = load i32, i32* %2, align 4, !dbg !753
  ret i32 %29, !dbg !753
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #4

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define i32 @sys_pidf_write(i32) #0 !dbg !754 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !757, metadata !361), !dbg !758
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !759, metadata !361), !dbg !763
  call void @llvm.dbg.declare(metadata i32* %5, metadata !764, metadata !361), !dbg !765
  call void @llvm.dbg.declare(metadata i64* %6, metadata !766, metadata !361), !dbg !767
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !768
  %8 = call i32 @getpid() #7, !dbg !769
  %9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %7, i64 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 %8) #7, !dbg !770
  store i32 %9, i32* %5, align 4, !dbg !772
  %10 = load i32, i32* %5, align 4, !dbg !773
  %11 = icmp eq i32 %10, -1, !dbg !775
  br i1 %11, label %15, label %12, !dbg !776

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %5, align 4, !dbg !777
  %14 = icmp sge i32 %13, 16, !dbg !779
  br i1 %14, label %15, label %16, !dbg !780

; <label>:15:                                     ; preds = %12, %1
  store i32 -1, i32* %2, align 4, !dbg !781
  br label %43, !dbg !781

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %3, align 4, !dbg !782
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !783
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !784
  %20 = call i64 @strlen(i8* %19) #8, !dbg !785
  %21 = call i64 @write(i32 %17, i8* %18, i64 %20), !dbg !786
  store i64 %21, i64* %6, align 8, !dbg !787
  %22 = load i64, i64* %6, align 8, !dbg !788
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !790
  %24 = call i64 @strlen(i8* %23) #8, !dbg !791
  %25 = icmp slt i64 %22, %24, !dbg !792
  br i1 %25, label %26, label %27, !dbg !793

; <label>:26:                                     ; preds = %16
  store i32 -1, i32* %2, align 4, !dbg !794
  br label %43, !dbg !794

; <label>:27:                                     ; preds = %16
  %28 = load i32, i32* %3, align 4, !dbg !795
  %29 = call i32 @fsync(i32 %28), !dbg !796
  store i32 %29, i32* %5, align 4, !dbg !797
  %30 = load i32, i32* %5, align 4, !dbg !798
  %31 = icmp eq i32 %30, -1, !dbg !800
  br i1 %31, label %32, label %33, !dbg !801

; <label>:32:                                     ; preds = %27
  store i32 -1, i32* %2, align 4, !dbg !802
  br label %43, !dbg !802

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %3, align 4, !dbg !803
  %35 = load i32, i32* %3, align 4, !dbg !804
  %36 = call i32 (i32, i32, ...) @fcntl(i32 %35, i32 1), !dbg !805
  %37 = or i32 %36, 1, !dbg !806
  %38 = call i32 (i32, i32, ...) @fcntl(i32 %34, i32 2, i32 %37), !dbg !807
  store i32 %38, i32* %5, align 4, !dbg !808
  %39 = load i32, i32* %5, align 4, !dbg !809
  %40 = icmp eq i32 %39, -1, !dbg !811
  br i1 %40, label %41, label %42, !dbg !812

; <label>:41:                                     ; preds = %33
  store i32 -1, i32* %2, align 4, !dbg !813
  br label %43, !dbg !813

; <label>:42:                                     ; preds = %33
  store i32 0, i32* %2, align 4, !dbg !814
  br label %43, !dbg !814

; <label>:43:                                     ; preds = %42, %41, %32, %26, %15
  %44 = load i32, i32* %2, align 4, !dbg !815
  ret i32 %44, !dbg !815
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @getpid() #4

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @fsync(i32) #3

declare i32 @fcntl(i32, i32, ...) #3

; Function Attrs: nounwind uwtable
define void @sys_pidf_close(i32, i8* nonnull) #0 !dbg !816 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !819, metadata !361), !dbg !820
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !821, metadata !361), !dbg !822
  %5 = load i8*, i8** %4, align 8, !dbg !823
  %6 = call i32 @unlink(i8* %5) #7, !dbg !824
  %7 = load i32, i32* %3, align 4, !dbg !825
  %8 = call i32 @close(i32 %7), !dbg !826
  ret void, !dbg !827
}

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

; Function Attrs: nounwind uwtable
define noalias i8* @sys_user_str(i32) #0 !dbg !337 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !828, metadata !361), !dbg !829
  %10 = load i32, i32* @sys_user_str.bufsize, align 4, !dbg !830
  %11 = icmp ne i32 %10, 0, !dbg !830
  br i1 %11, label %18, label %12, !dbg !832

; <label>:12:                                     ; preds = %1
  %13 = call i64 @sysconf(i32 70) #7, !dbg !833
  %14 = trunc i64 %13 to i32, !dbg !833
  store i32 %14, i32* @sys_user_str.bufsize, align 4, !dbg !836
  %15 = icmp eq i32 %14, -1, !dbg !837
  br i1 %15, label %16, label %17, !dbg !838

; <label>:16:                                     ; preds = %12
  store i32 64, i32* @sys_user_str.bufsize, align 4, !dbg !839
  br label %17, !dbg !841

; <label>:17:                                     ; preds = %16, %12
  br label %18, !dbg !842

; <label>:18:                                     ; preds = %17, %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !843, metadata !361), !dbg !844
  call void @llvm.dbg.declare(metadata i8** %5, metadata !845, metadata !361), !dbg !846
  call void @llvm.dbg.declare(metadata %struct.passwd* %6, metadata !847, metadata !361), !dbg !848
  call void @llvm.dbg.declare(metadata %struct.passwd** %7, metadata !849, metadata !361), !dbg !850
  store %struct.passwd* null, %struct.passwd** %7, align 8, !dbg !850
  call void @llvm.dbg.declare(metadata i32* %8, metadata !851, metadata !361), !dbg !852
  call void @llvm.dbg.declare(metadata i8** %9, metadata !853, metadata !361), !dbg !854
  %19 = load i32, i32* @sys_user_str.bufsize, align 4, !dbg !855
  %20 = sext i32 %19 to i64, !dbg !855
  %21 = call noalias i8* @malloc(i64 %20) #7, !dbg !857
  store i8* %21, i8** %4, align 8, !dbg !858
  %22 = icmp ne i8* %21, null, !dbg !858
  br i1 %22, label %24, label %23, !dbg !859

; <label>:23:                                     ; preds = %18
  store i8* null, i8** %2, align 8, !dbg !860
  br label %72, !dbg !860

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !861, !llvm.loop !862

; <label>:25:                                     ; preds = %63, %24
  %26 = load i32, i32* %3, align 4, !dbg !863
  %27 = load i8*, i8** %4, align 8, !dbg !865
  %28 = load i32, i32* @sys_user_str.bufsize, align 4, !dbg !866
  %29 = sext i32 %28 to i64, !dbg !866
  %30 = call i32 @getpwuid_r(i32 %26, %struct.passwd* %6, i8* %27, i64 %29, %struct.passwd** %7), !dbg !867
  store i32 %30, i32* %8, align 4, !dbg !868
  %31 = load i32, i32* %8, align 4, !dbg !869
  %32 = icmp eq i32 %31, 0, !dbg !871
  br i1 %32, label %33, label %51, !dbg !872

; <label>:33:                                     ; preds = %25
  %34 = load %struct.passwd*, %struct.passwd** %7, align 8, !dbg !873
  %35 = icmp ne %struct.passwd* %34, null, !dbg !873
  br i1 %35, label %36, label %42, !dbg !876

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %6, i32 0, i32 0, !dbg !877
  %38 = load i8*, i8** %37, align 8, !dbg !877
  %39 = call noalias i8* @strdup(i8* %38) #7, !dbg !879
  store i8* %39, i8** %9, align 8, !dbg !880
  %40 = load i8*, i8** %4, align 8, !dbg !881
  call void @free(i8* %40) #7, !dbg !882
  %41 = load i8*, i8** %9, align 8, !dbg !883
  store i8* %41, i8** %2, align 8, !dbg !884
  br label %72, !dbg !884

; <label>:42:                                     ; preds = %33
  %43 = load i8*, i8** %4, align 8, !dbg !885
  call void @free(i8* %43) #7, !dbg !886
  %44 = load i32, i32* %3, align 4, !dbg !887
  %45 = zext i32 %44 to i64, !dbg !889
  %46 = call i32 (i8**, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 %45) #7, !dbg !890
  %47 = icmp slt i32 %46, 0, !dbg !891
  br i1 %47, label %48, label %49, !dbg !892

; <label>:48:                                     ; preds = %42
  store i8* null, i8** %2, align 8, !dbg !893
  br label %72, !dbg !893

; <label>:49:                                     ; preds = %42
  %50 = load i8*, i8** %9, align 8, !dbg !895
  store i8* %50, i8** %2, align 8, !dbg !896
  br label %72, !dbg !896

; <label>:51:                                     ; preds = %25
  %52 = load i32, i32* @sys_user_str.bufsize, align 4, !dbg !897
  %53 = mul nsw i32 %52, 2, !dbg !897
  store i32 %53, i32* @sys_user_str.bufsize, align 4, !dbg !897
  %54 = load i8*, i8** %4, align 8, !dbg !898
  %55 = load i32, i32* @sys_user_str.bufsize, align 4, !dbg !900
  %56 = sext i32 %55 to i64, !dbg !900
  %57 = call i8* @realloc(i8* %54, i64 %56) #7, !dbg !901
  store i8* %57, i8** %5, align 8, !dbg !902
  %58 = icmp ne i8* %57, null, !dbg !902
  br i1 %58, label %61, label %59, !dbg !903

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %4, align 8, !dbg !904
  call void @free(i8* %60) #7, !dbg !906
  store i8* null, i8** %2, align 8, !dbg !907
  br label %72, !dbg !907

; <label>:61:                                     ; preds = %51
  %62 = load i8*, i8** %5, align 8, !dbg !908
  store i8* %62, i8** %4, align 8, !dbg !909
  br label %63, !dbg !910

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %8, align 4, !dbg !911
  %65 = icmp eq i32 %64, 34, !dbg !913
  br i1 %65, label %25, label %66, !dbg !914, !llvm.loop !862

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %4, align 8, !dbg !915
  call void @free(i8* %67) #7, !dbg !916
  %68 = load i32, i32* %8, align 4, !dbg !917
  %69 = call i8* @strerror(i32 %68) #7, !dbg !918
  %70 = load i32, i32* %8, align 4, !dbg !919
  %71 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* %69, i32 %70), !dbg !920
  store i8* null, i8** %2, align 8, !dbg !921
  br label %72, !dbg !921

; <label>:72:                                     ; preds = %66, %59, %49, %48, %36, %23
  %73 = load i8*, i8** %2, align 8, !dbg !922
  ret i8* %73, !dbg !922
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i32 @getpwuid_r(i32, %struct.passwd*, i8*, i64, %struct.passwd**) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind uwtable
define noalias i8* @sys_group_str(i32) #0 !dbg !346 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.group, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !923, metadata !361), !dbg !924
  %10 = load i32, i32* @sys_group_str.bufsize, align 4, !dbg !925
  %11 = icmp ne i32 %10, 0, !dbg !925
  br i1 %11, label %18, label %12, !dbg !927

; <label>:12:                                     ; preds = %1
  %13 = call i64 @sysconf(i32 69) #7, !dbg !928
  %14 = trunc i64 %13 to i32, !dbg !928
  store i32 %14, i32* @sys_group_str.bufsize, align 4, !dbg !931
  %15 = icmp eq i32 %14, -1, !dbg !932
  br i1 %15, label %16, label %17, !dbg !933

; <label>:16:                                     ; preds = %12
  store i32 64, i32* @sys_group_str.bufsize, align 4, !dbg !934
  br label %17, !dbg !936

; <label>:17:                                     ; preds = %16, %12
  br label %18, !dbg !937

; <label>:18:                                     ; preds = %17, %1
  call void @llvm.dbg.declare(metadata i8** %4, metadata !938, metadata !361), !dbg !939
  call void @llvm.dbg.declare(metadata i8** %5, metadata !940, metadata !361), !dbg !941
  call void @llvm.dbg.declare(metadata %struct.group* %6, metadata !942, metadata !361), !dbg !943
  call void @llvm.dbg.declare(metadata %struct.group** %7, metadata !944, metadata !361), !dbg !945
  store %struct.group* null, %struct.group** %7, align 8, !dbg !945
  call void @llvm.dbg.declare(metadata i32* %8, metadata !946, metadata !361), !dbg !947
  call void @llvm.dbg.declare(metadata i8** %9, metadata !948, metadata !361), !dbg !949
  %19 = load i32, i32* @sys_group_str.bufsize, align 4, !dbg !950
  %20 = sext i32 %19 to i64, !dbg !950
  %21 = call noalias i8* @malloc(i64 %20) #7, !dbg !952
  store i8* %21, i8** %4, align 8, !dbg !953
  %22 = icmp ne i8* %21, null, !dbg !953
  br i1 %22, label %24, label %23, !dbg !954

; <label>:23:                                     ; preds = %18
  store i8* null, i8** %2, align 8, !dbg !955
  br label %72, !dbg !955

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !956, !llvm.loop !957

; <label>:25:                                     ; preds = %63, %24
  %26 = load i32, i32* %3, align 4, !dbg !958
  %27 = load i8*, i8** %4, align 8, !dbg !960
  %28 = load i32, i32* @sys_group_str.bufsize, align 4, !dbg !961
  %29 = sext i32 %28 to i64, !dbg !961
  %30 = call i32 @getgrgid_r(i32 %26, %struct.group* %6, i8* %27, i64 %29, %struct.group** %7), !dbg !962
  store i32 %30, i32* %8, align 4, !dbg !963
  %31 = load i32, i32* %8, align 4, !dbg !964
  %32 = icmp eq i32 %31, 0, !dbg !966
  br i1 %32, label %33, label %51, !dbg !967

; <label>:33:                                     ; preds = %25
  %34 = load %struct.group*, %struct.group** %7, align 8, !dbg !968
  %35 = icmp ne %struct.group* %34, null, !dbg !968
  br i1 %35, label %36, label %42, !dbg !971

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds %struct.group, %struct.group* %6, i32 0, i32 0, !dbg !972
  %38 = load i8*, i8** %37, align 8, !dbg !972
  %39 = call noalias i8* @strdup(i8* %38) #7, !dbg !974
  store i8* %39, i8** %9, align 8, !dbg !975
  %40 = load i8*, i8** %4, align 8, !dbg !976
  call void @free(i8* %40) #7, !dbg !977
  %41 = load i8*, i8** %9, align 8, !dbg !978
  store i8* %41, i8** %2, align 8, !dbg !979
  br label %72, !dbg !979

; <label>:42:                                     ; preds = %33
  %43 = load i8*, i8** %4, align 8, !dbg !980
  call void @free(i8* %43) #7, !dbg !981
  %44 = load i32, i32* %3, align 4, !dbg !982
  %45 = zext i32 %44 to i64, !dbg !984
  %46 = call i32 (i8**, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 %45) #7, !dbg !985
  %47 = icmp slt i32 %46, 0, !dbg !986
  br i1 %47, label %48, label %49, !dbg !987

; <label>:48:                                     ; preds = %42
  store i8* null, i8** %2, align 8, !dbg !988
  br label %72, !dbg !988

; <label>:49:                                     ; preds = %42
  %50 = load i8*, i8** %9, align 8, !dbg !990
  store i8* %50, i8** %2, align 8, !dbg !991
  br label %72, !dbg !991

; <label>:51:                                     ; preds = %25
  %52 = load i32, i32* @sys_group_str.bufsize, align 4, !dbg !992
  %53 = mul nsw i32 %52, 2, !dbg !992
  store i32 %53, i32* @sys_group_str.bufsize, align 4, !dbg !992
  %54 = load i8*, i8** %4, align 8, !dbg !993
  %55 = load i32, i32* @sys_group_str.bufsize, align 4, !dbg !995
  %56 = sext i32 %55 to i64, !dbg !995
  %57 = call i8* @realloc(i8* %54, i64 %56) #7, !dbg !996
  store i8* %57, i8** %5, align 8, !dbg !997
  %58 = icmp ne i8* %57, null, !dbg !997
  br i1 %58, label %61, label %59, !dbg !998

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %4, align 8, !dbg !999
  call void @free(i8* %60) #7, !dbg !1001
  store i8* null, i8** %2, align 8, !dbg !1002
  br label %72, !dbg !1002

; <label>:61:                                     ; preds = %51
  %62 = load i8*, i8** %5, align 8, !dbg !1003
  store i8* %62, i8** %4, align 8, !dbg !1004
  br label %63, !dbg !1005

; <label>:63:                                     ; preds = %61
  %64 = load i32, i32* %8, align 4, !dbg !1006
  %65 = icmp eq i32 %64, 34, !dbg !1008
  br i1 %65, label %25, label %66, !dbg !1009, !llvm.loop !957

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %4, align 8, !dbg !1010
  call void @free(i8* %67) #7, !dbg !1011
  %68 = load i32, i32* %8, align 4, !dbg !1012
  %69 = call i8* @strerror(i32 %68) #7, !dbg !1013
  %70 = load i32, i32* %8, align 4, !dbg !1014
  %71 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0), i8* %69, i32 %70), !dbg !1015
  store i8* null, i8** %2, align 8, !dbg !1016
  br label %72, !dbg !1016

; <label>:72:                                     ; preds = %66, %59, %49, %48, %36, %23
  %73 = load i8*, i8** %2, align 8, !dbg !1017
  ret i8* %73, !dbg !1017
}

declare i32 @getgrgid_r(i32, %struct.group*, i8*, i64, %struct.group**) #3

; Function Attrs: nounwind uwtable
define i32 @sys_get_af(i8*) #0 !dbg !1018 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1019, metadata !361), !dbg !1020
  %4 = load i8*, i8** %3, align 8, !dbg !1021
  %5 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !1023
  %6 = icmp ne i8* %5, null, !dbg !1023
  br i1 %6, label %7, label %8, !dbg !1024

; <label>:7:                                      ; preds = %1
  store i32 10, i32* %2, align 4, !dbg !1025
  br label %14, !dbg !1025

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !1026
  %10 = call i8* @strpbrk(i8* %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !1028
  %11 = icmp ne i8* %10, null, !dbg !1028
  br i1 %11, label %13, label %12, !dbg !1029

; <label>:12:                                     ; preds = %8
  store i32 2, i32* %2, align 4, !dbg !1030
  br label %14, !dbg !1030

; <label>:13:                                     ; preds = %8
  store i32 0, i32* %2, align 4, !dbg !1031
  br label %14, !dbg !1031

; <label>:14:                                     ; preds = %13, %12, %7
  %15 = load i32, i32* %2, align 4, !dbg !1032
  ret i32 %15, !dbg !1032
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @sys_sockaddr_parse(%struct.sockaddr_storage* nonnull, i32* nonnull, i8* nonnull, i8* nonnull, i32, i32) #0 !dbg !1033 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage** %8, metadata !1048, metadata !361), !dbg !1049
  store i32* %1, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1050, metadata !361), !dbg !1051
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1052, metadata !361), !dbg !1053
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1054, metadata !361), !dbg !1055
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1056, metadata !361), !dbg !1057
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1058, metadata !361), !dbg !1059
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %14, metadata !1060, metadata !361), !dbg !1073
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %15, metadata !1074, metadata !361), !dbg !1075
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1076, metadata !361), !dbg !1077
  %17 = bitcast %struct.addrinfo* %14 to i8*, !dbg !1078
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 48, i32 8, i1 false), !dbg !1078
  %18 = load i32, i32* %12, align 4, !dbg !1079
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1, !dbg !1080
  store i32 %18, i32* %19, align 4, !dbg !1081
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2, !dbg !1082
  store i32 1, i32* %20, align 8, !dbg !1083
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 3, !dbg !1084
  store i32 6, i32* %21, align 4, !dbg !1085
  %22 = load i32, i32* %13, align 4, !dbg !1086
  %23 = or i32 32, %22, !dbg !1087
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0, !dbg !1088
  store i32 %23, i32* %24, align 8, !dbg !1089
  %25 = load i8*, i8** %10, align 8, !dbg !1090
  %26 = load i8*, i8** %11, align 8, !dbg !1091
  %27 = call i32 @evutil_getaddrinfo(i8* %25, i8* %26, %struct.addrinfo* %14, %struct.addrinfo** %15), !dbg !1092
  store i32 %27, i32* %16, align 4, !dbg !1093
  %28 = load i32, i32* %16, align 4, !dbg !1094
  %29 = icmp ne i32 %28, 0, !dbg !1096
  br i1 %29, label %30, label %36, !dbg !1097

; <label>:30:                                     ; preds = %6
  %31 = load i8*, i8** %10, align 8, !dbg !1098
  %32 = load i8*, i8** %11, align 8, !dbg !1100
  %33 = load i32, i32* %16, align 4, !dbg !1101
  %34 = call i8* @gai_strerror(i32 %33) #7, !dbg !1102
  %35 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0), i8* %31, i8* %32, i8* %34), !dbg !1103
  store i32 -1, i32* %7, align 4, !dbg !1104
  br label %56, !dbg !1104

; <label>:36:                                     ; preds = %6
  %37 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8, !dbg !1105
  %38 = bitcast %struct.sockaddr_storage* %37 to i8*, !dbg !1106
  %39 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !1107
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 5, !dbg !1108
  %41 = load %struct.sockaddr*, %struct.sockaddr** %40, align 8, !dbg !1108
  %42 = bitcast %struct.sockaddr* %41 to i8*, !dbg !1106
  %43 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !1109
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 4, !dbg !1110
  %45 = load i32, i32* %44, align 8, !dbg !1110
  %46 = zext i32 %45 to i64, !dbg !1109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %42, i64 %46, i32 2, i1 false), !dbg !1106
  %47 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !1111
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 4, !dbg !1112
  %49 = load i32, i32* %48, align 8, !dbg !1112
  %50 = load i32*, i32** %9, align 8, !dbg !1113
  store i32 %49, i32* %50, align 4, !dbg !1114
  %51 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !1115
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 1, !dbg !1116
  %53 = load i32, i32* %52, align 4, !dbg !1116
  store i32 %53, i32* %12, align 4, !dbg !1117
  %54 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8, !dbg !1118
  call void @freeaddrinfo(%struct.addrinfo* %54) #7, !dbg !1119
  %55 = load i32, i32* %12, align 4, !dbg !1120
  store i32 %55, i32* %7, align 4, !dbg !1121
  br label %56, !dbg !1121

; <label>:56:                                     ; preds = %36, %30
  %57 = load i32, i32* %7, align 4, !dbg !1122
  ret i32 %57, !dbg !1122
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i32 @evutil_getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #4

; Function Attrs: nounwind uwtable
define i32 @sys_sockaddr_str(%struct.sockaddr* nonnull, i32, i8** nonnull, i8** nonnull) #0 !dbg !1123 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [46 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %6, metadata !1126, metadata !361), !dbg !1127
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1128, metadata !361), !dbg !1129
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1130, metadata !361), !dbg !1131
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1132, metadata !361), !dbg !1133
  call void @llvm.dbg.declare(metadata [46 x i8]* %10, metadata !1134, metadata !361), !dbg !1138
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1139, metadata !361), !dbg !1140
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1141, metadata !361), !dbg !1142
  %13 = call noalias i8* @malloc(i64 6) #7, !dbg !1143
  %14 = load i8**, i8*** %9, align 8, !dbg !1144
  store i8* %13, i8** %14, align 8, !dbg !1145
  %15 = load i8**, i8*** %9, align 8, !dbg !1146
  %16 = load i8*, i8** %15, align 8, !dbg !1148
  %17 = icmp ne i8* %16, null, !dbg !1148
  br i1 %17, label %20, label %18, !dbg !1149

; <label>:18:                                     ; preds = %4
  %19 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1150
  store i32 -1, i32* %5, align 4, !dbg !1152
  br label %54, !dbg !1152

; <label>:20:                                     ; preds = %4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8, !dbg !1153
  %22 = load i32, i32* %7, align 4, !dbg !1154
  %23 = getelementptr inbounds [46 x i8], [46 x i8]* %10, i32 0, i32 0, !dbg !1155
  %24 = load i8**, i8*** %9, align 8, !dbg !1156
  %25 = load i8*, i8** %24, align 8, !dbg !1157
  %26 = call i32 @getnameinfo(%struct.sockaddr* %21, i32 %22, i8* %23, i32 46, i8* %25, i32 6, i32 3), !dbg !1158
  store i32 %26, i32* %11, align 4, !dbg !1159
  %27 = load i32, i32* %11, align 4, !dbg !1160
  %28 = icmp ne i32 %27, 0, !dbg !1162
  br i1 %28, label %29, label %35, !dbg !1163

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %11, align 4, !dbg !1164
  %31 = call i8* @gai_strerror(i32 %30) #7, !dbg !1166
  %32 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i32 0, i32 0), i8* %31), !dbg !1167
  %33 = load i8**, i8*** %9, align 8, !dbg !1168
  %34 = load i8*, i8** %33, align 8, !dbg !1169
  call void @free(i8* %34) #7, !dbg !1170
  store i32 -1, i32* %5, align 4, !dbg !1171
  br label %54, !dbg !1171

; <label>:35:                                     ; preds = %20
  %36 = getelementptr inbounds [46 x i8], [46 x i8]* %10, i32 0, i32 0, !dbg !1172
  %37 = call i64 @strlen(i8* %36) #8, !dbg !1173
  %38 = add i64 %37, 1, !dbg !1174
  store i64 %38, i64* %12, align 8, !dbg !1175
  %39 = load i64, i64* %12, align 8, !dbg !1176
  %40 = call noalias i8* @malloc(i64 %39) #7, !dbg !1177
  %41 = load i8**, i8*** %8, align 8, !dbg !1178
  store i8* %40, i8** %41, align 8, !dbg !1179
  %42 = load i8**, i8*** %8, align 8, !dbg !1180
  %43 = load i8*, i8** %42, align 8, !dbg !1182
  %44 = icmp ne i8* %43, null, !dbg !1182
  br i1 %44, label %49, label %45, !dbg !1183

; <label>:45:                                     ; preds = %35
  %46 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1184
  %47 = load i8**, i8*** %9, align 8, !dbg !1186
  %48 = load i8*, i8** %47, align 8, !dbg !1187
  call void @free(i8* %48) #7, !dbg !1188
  store i32 -1, i32* %5, align 4, !dbg !1189
  br label %54, !dbg !1189

; <label>:49:                                     ; preds = %35
  %50 = load i8**, i8*** %8, align 8, !dbg !1190
  %51 = load i8*, i8** %50, align 8, !dbg !1191
  %52 = getelementptr inbounds [46 x i8], [46 x i8]* %10, i32 0, i32 0, !dbg !1192
  %53 = load i64, i64* %12, align 8, !dbg !1193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 %53, i32 1, i1 false), !dbg !1192
  store i32 0, i32* %5, align 4, !dbg !1194
  br label %54, !dbg !1194

; <label>:54:                                     ; preds = %49, %45, %29, %18
  %55 = load i32, i32* %5, align 4, !dbg !1195
  ret i32 %55, !dbg !1195
}

declare i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define noalias i8* @sys_ip46str_sanitize(i8* nonnull) #0 !dbg !1196 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1199, metadata !361), !dbg !1200
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1201, metadata !361), !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1203, metadata !361), !dbg !1204
  %6 = load i8*, i8** %3, align 8, !dbg !1205
  %7 = call noalias i8* @strdup(i8* %6) #7, !dbg !1206
  store i8* %7, i8** %4, align 8, !dbg !1207
  %8 = load i8*, i8** %4, align 8, !dbg !1208
  %9 = icmp ne i8* %8, null, !dbg !1208
  br i1 %9, label %11, label %10, !dbg !1210

; <label>:10:                                     ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !1211
  br label %28, !dbg !1211

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !1212
  store i8* %12, i8** %5, align 8, !dbg !1213
  br label %13, !dbg !1214

; <label>:13:                                     ; preds = %23, %11
  %14 = load i8*, i8** %5, align 8, !dbg !1215
  %15 = load i8, i8* %14, align 1, !dbg !1217
  %16 = icmp ne i8 %15, 0, !dbg !1218
  br i1 %16, label %17, label %26, !dbg !1218

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %5, align 8, !dbg !1219
  %19 = load i8, i8* %18, align 1, !dbg !1221
  %20 = sext i8 %19 to i32, !dbg !1221
  switch i32 %20, label %23 [
    i32 58, label %21
    i32 37, label %21
  ], !dbg !1222

; <label>:21:                                     ; preds = %17, %17
  %22 = load i8*, i8** %5, align 8, !dbg !1223
  store i8 95, i8* %22, align 1, !dbg !1225
  br label %23, !dbg !1226

; <label>:23:                                     ; preds = %17, %21
  %24 = load i8*, i8** %5, align 8, !dbg !1227
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !1227
  store i8* %25, i8** %5, align 8, !dbg !1227
  br label %13, !dbg !1228, !llvm.loop !1230

; <label>:26:                                     ; preds = %13
  %27 = load i8*, i8** %4, align 8, !dbg !1231
  store i8* %27, i8** %2, align 8, !dbg !1232
  br label %28, !dbg !1232

; <label>:28:                                     ; preds = %26, %10
  %29 = load i8*, i8** %2, align 8, !dbg !1233
  ret i8* %29, !dbg !1233
}

; Function Attrs: nounwind uwtable
define i64 @sys_get_mtu(i8*) #0 !dbg !1234 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifreq, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1237, metadata !361), !dbg !1238
  call void @llvm.dbg.declare(metadata %struct.ifreq* %4, metadata !1239, metadata !361), !dbg !1272
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1273, metadata !361), !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1275, metadata !361), !dbg !1276
  %7 = load i8*, i8** %3, align 8, !dbg !1277
  %8 = call i64 @strlen(i8* %7) #8, !dbg !1278
  store i64 %8, i64* %5, align 8, !dbg !1279
  %9 = load i64, i64* %5, align 8, !dbg !1280
  %10 = icmp ugt i64 %9, 17, !dbg !1282
  br i1 %10, label %11, label %12, !dbg !1283

; <label>:11:                                     ; preds = %1
  store i64 0, i64* %2, align 8, !dbg !1284
  br label %40, !dbg !1284

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0, !dbg !1285
  %14 = bitcast %union.anon* %13 to [16 x i8]*, !dbg !1286
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0, !dbg !1287
  %16 = load i8*, i8** %3, align 8, !dbg !1288
  %17 = load i64, i64* %5, align 8, !dbg !1289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %17, i32 1, i1 false), !dbg !1287
  %18 = load i64, i64* %5, align 8, !dbg !1290
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0, !dbg !1291
  %20 = bitcast %union.anon* %19 to [16 x i8]*, !dbg !1290
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 %18, !dbg !1292
  store i8 0, i8* %21, align 1, !dbg !1293
  %22 = call i32 @socket(i32 2, i32 2, i32 0) #7, !dbg !1294
  store i32 %22, i32* %6, align 4, !dbg !1295
  %23 = load i32, i32* %6, align 4, !dbg !1296
  %24 = icmp eq i32 %23, -1, !dbg !1298
  br i1 %24, label %25, label %26, !dbg !1299

; <label>:25:                                     ; preds = %12
  store i64 0, i64* %2, align 8, !dbg !1300
  br label %40, !dbg !1300

; <label>:26:                                     ; preds = %12
  %27 = load i32, i32* %6, align 4, !dbg !1301
  %28 = call i32 (i32, i64, ...) @ioctl(i32 %27, i64 35105, %struct.ifreq* %4) #7, !dbg !1303
  %29 = icmp eq i32 %28, -1, !dbg !1304
  br i1 %29, label %30, label %33, !dbg !1305

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %6, align 4, !dbg !1306
  %32 = call i32 @close(i32 %31), !dbg !1308
  store i64 0, i64* %2, align 8, !dbg !1309
  br label %40, !dbg !1309

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %6, align 4, !dbg !1310
  %35 = call i32 @close(i32 %34), !dbg !1311
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1, !dbg !1312
  %37 = bitcast %union.anon.0* %36 to i32*, !dbg !1313
  %38 = load i32, i32* %37, align 8, !dbg !1313
  %39 = sext i32 %38 to i64, !dbg !1314
  store i64 %39, i64* %2, align 8, !dbg !1315
  br label %40, !dbg !1315

; <label>:40:                                     ; preds = %33, %30, %25, %11
  %41 = load i64, i64* %2, align 8, !dbg !1316
  ret i64 %41, !dbg !1316
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: nounwind uwtable
define i32 @sys_isdir(i8* nonnull) #0 !dbg !1317 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1318, metadata !361), !dbg !1319
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1320, metadata !361), !dbg !1356
  %5 = load i8*, i8** %3, align 8, !dbg !1357
  %6 = call i32 @stat(i8* %5, %struct.stat* %4) #7, !dbg !1359
  %7 = icmp eq i32 %6, -1, !dbg !1360
  br i1 %7, label %8, label %20, !dbg !1361

; <label>:8:                                      ; preds = %1
  %9 = call i32* @__errno_location() #1, !dbg !1362
  %10 = load i32, i32* %9, align 4, !dbg !1365
  %11 = icmp ne i32 %10, 2, !dbg !1366
  br i1 %11, label %12, label %19, !dbg !1367

; <label>:12:                                     ; preds = %8
  %13 = call i32* @__errno_location() #1, !dbg !1368
  %14 = load i32, i32* %13, align 4, !dbg !1370
  %15 = call i8* @strerror(i32 %14) #7, !dbg !1371
  %16 = call i32* @__errno_location() #1, !dbg !1373
  %17 = load i32, i32* %16, align 4, !dbg !1375
  %18 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i8* %15, i32 %17), !dbg !1376
  br label %19, !dbg !1377

; <label>:19:                                     ; preds = %12, %8
  store i32 0, i32* %2, align 4, !dbg !1378
  br label %27, !dbg !1378

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3, !dbg !1379
  %22 = load i32, i32* %21, align 8, !dbg !1379
  %23 = and i32 %22, 16384, !dbg !1381
  %24 = icmp ne i32 %23, 0, !dbg !1381
  br i1 %24, label %25, label %26, !dbg !1382

; <label>:25:                                     ; preds = %20
  store i32 1, i32* %2, align 4, !dbg !1383
  br label %27, !dbg !1383

; <label>:26:                                     ; preds = %20
  store i32 0, i32* %2, align 4, !dbg !1384
  br label %27, !dbg !1384

; <label>:27:                                     ; preds = %26, %25, %19
  %28 = load i32, i32* %2, align 4, !dbg !1385
  ret i32 %28, !dbg !1385
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define i32 @sys_mkpath(i8* nonnull, i32) #0 !dbg !1386 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1390, metadata !361), !dbg !1391
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1392, metadata !361), !dbg !1393
  %10 = load i8*, i8** %4, align 8, !dbg !1394
  %11 = call i64 @strlen(i8* %10) #8, !dbg !1395
  %12 = add i64 %11, 1, !dbg !1396
  %13 = call i8* @llvm.stacksave(), !dbg !1397
  store i8* %13, i8** %6, align 8, !dbg !1399
  %14 = alloca i8, i64 %12, align 16, !dbg !1399
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1400, metadata !1402), !dbg !1403
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1404, metadata !361), !dbg !1405
  %15 = load i8*, i8** %4, align 8, !dbg !1406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 %12, i32 1, i1 false), !dbg !1407
  store i8* %14, i8** %7, align 8, !dbg !1408
  br label %16, !dbg !1409, !llvm.loop !1410

; <label>:16:                                     ; preds = %63, %2
  br label %17, !dbg !1411

; <label>:17:                                     ; preds = %22, %16
  %18 = load i8*, i8** %7, align 8, !dbg !1413
  %19 = load i8, i8* %18, align 1, !dbg !1415
  %20 = sext i8 %19 to i32, !dbg !1415
  %21 = icmp eq i32 %20, 47, !dbg !1416
  br i1 %21, label %22, label %25, !dbg !1417

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %7, align 8, !dbg !1418
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1418
  store i8* %24, i8** %7, align 8, !dbg !1418
  br label %17, !dbg !1420, !llvm.loop !1421

; <label>:25:                                     ; preds = %17
  %26 = load i8*, i8** %7, align 8, !dbg !1422
  %27 = call i8* @strchr(i8* %26, i32 47) #8, !dbg !1423
  store i8* %27, i8** %7, align 8, !dbg !1424
  %28 = load i8*, i8** %7, align 8, !dbg !1425
  %29 = icmp ne i8* %28, null, !dbg !1425
  br i1 %29, label %30, label %32, !dbg !1427

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %7, align 8, !dbg !1428
  store i8 0, i8* %31, align 1, !dbg !1430
  br label %32, !dbg !1431

; <label>:32:                                     ; preds = %30, %25
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !1432, metadata !361), !dbg !1433
  %33 = call i32 @stat(i8* %14, %struct.stat* %8) #7, !dbg !1434
  %34 = icmp eq i32 %33, -1, !dbg !1436
  br i1 %34, label %35, label %47, !dbg !1437

; <label>:35:                                     ; preds = %32
  %36 = call i32* @__errno_location() #1, !dbg !1438
  %37 = load i32, i32* %36, align 4, !dbg !1441
  %38 = icmp eq i32 %37, 2, !dbg !1442
  br i1 %38, label %39, label %45, !dbg !1443

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %5, align 4, !dbg !1444
  %41 = call i32 @mkdir(i8* %14, i32 %40) #7, !dbg !1447
  %42 = icmp ne i32 %41, 0, !dbg !1448
  br i1 %42, label %43, label %44, !dbg !1449

; <label>:43:                                     ; preds = %39
  store i32 -1, i32* %3, align 4, !dbg !1450
  store i32 1, i32* %9, align 4
  br label %67, !dbg !1450

; <label>:44:                                     ; preds = %39
  br label %46, !dbg !1451

; <label>:45:                                     ; preds = %35
  store i32 -1, i32* %3, align 4, !dbg !1452
  store i32 1, i32* %9, align 4
  br label %67, !dbg !1452

; <label>:46:                                     ; preds = %44
  br label %55, !dbg !1454

; <label>:47:                                     ; preds = %32
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3, !dbg !1455
  %49 = load i32, i32* %48, align 8, !dbg !1455
  %50 = and i32 %49, 61440, !dbg !1458
  %51 = icmp eq i32 %50, 16384, !dbg !1459
  br i1 %51, label %54, label %52, !dbg !1460

; <label>:52:                                     ; preds = %47
  %53 = call i32* @__errno_location() #1, !dbg !1461
  store i32 20, i32* %53, align 4, !dbg !1463
  store i32 -1, i32* %3, align 4, !dbg !1464
  store i32 1, i32* %9, align 4
  br label %67, !dbg !1464

; <label>:54:                                     ; preds = %47
  br label %55

; <label>:55:                                     ; preds = %54, %46
  %56 = load i8*, i8** %7, align 8, !dbg !1465
  %57 = icmp ne i8* %56, null, !dbg !1465
  br i1 %57, label %58, label %62, !dbg !1467

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %7, align 8, !dbg !1468
  store i8 47, i8* %59, align 1, !dbg !1470
  %60 = load i8*, i8** %7, align 8, !dbg !1471
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !1471
  store i8* %61, i8** %7, align 8, !dbg !1471
  br label %62, !dbg !1472

; <label>:62:                                     ; preds = %58, %55
  br label %63, !dbg !1473

; <label>:63:                                     ; preds = %62
  %64 = load i8*, i8** %7, align 8, !dbg !1474
  %65 = icmp ne i8* %64, null, !dbg !1475
  br i1 %65, label %16, label %66, !dbg !1475, !llvm.loop !1410

; <label>:66:                                     ; preds = %63
  store i32 0, i32* %3, align 4, !dbg !1476
  store i32 1, i32* %9, align 4
  br label %67, !dbg !1476

; <label>:67:                                     ; preds = %66, %52, %45, %43
  %68 = load i8*, i8** %6, align 8, !dbg !1477
  call void @llvm.stackrestore(i8* %68), !dbg !1477
  %69 = load i32, i32* %3, align 4, !dbg !1477
  ret i32 %69, !dbg !1477
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #7

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #7

; Function Attrs: nounwind uwtable
define noalias i8* @sys_realdir(i8* nonnull) #0 !dbg !1478 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1479, metadata !361), !dbg !1480
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1481, metadata !361), !dbg !1482
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1483, metadata !361), !dbg !1484
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1485, metadata !361), !dbg !1486
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1487, metadata !361), !dbg !1488
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1489, metadata !361), !dbg !1490
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1491, metadata !361), !dbg !1492
  %10 = load i8*, i8** %3, align 8, !dbg !1493
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !1493
  %12 = load i8, i8* %11, align 1, !dbg !1493
  %13 = sext i8 %12 to i32, !dbg !1493
  %14 = icmp eq i32 %13, 0, !dbg !1495
  br i1 %14, label %15, label %17, !dbg !1496

; <label>:15:                                     ; preds = %1
  %16 = call i32* @__errno_location() #1, !dbg !1497
  store i32 22, i32* %16, align 4, !dbg !1499
  store i8* null, i8** %2, align 8, !dbg !1500
  br label %73, !dbg !1500

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %3, align 8, !dbg !1501
  %19 = call noalias i8* @strdup(i8* %18) #7, !dbg !1502
  store i8* %19, i8** %5, align 8, !dbg !1503
  %20 = load i8*, i8** %5, align 8, !dbg !1504
  %21 = icmp ne i8* %20, null, !dbg !1504
  br i1 %21, label %23, label %22, !dbg !1506

; <label>:22:                                     ; preds = %17
  store i8* null, i8** %2, align 8, !dbg !1507
  br label %73, !dbg !1507

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %5, align 8, !dbg !1508
  %25 = call i8* @strrchr(i8* %24, i32 47) #8, !dbg !1509
  store i8* %25, i8** %4, align 8, !dbg !1510
  %26 = load i8*, i8** %4, align 8, !dbg !1511
  %27 = icmp ne i8* %26, null, !dbg !1511
  br i1 %27, label %38, label %28, !dbg !1513

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %5, align 8, !dbg !1514
  call void @free(i8* %29) #7, !dbg !1516
  %30 = load i8*, i8** %3, align 8, !dbg !1517
  %31 = call i32 (i8**, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %30) #7, !dbg !1518
  store i32 %31, i32* %9, align 4, !dbg !1519
  %32 = load i32, i32* %9, align 4, !dbg !1520
  %33 = icmp eq i32 %32, -1, !dbg !1522
  br i1 %33, label %34, label %35, !dbg !1523

; <label>:34:                                     ; preds = %28
  store i8* null, i8** %2, align 8, !dbg !1524
  br label %73, !dbg !1524

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %5, align 8, !dbg !1525
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1526
  store i8* %37, i8** %4, align 8, !dbg !1527
  br label %45, !dbg !1528

; <label>:38:                                     ; preds = %23
  %39 = load i8*, i8** %4, align 8, !dbg !1529
  %40 = load i8*, i8** %5, align 8, !dbg !1532
  %41 = icmp eq i8* %39, %40, !dbg !1533
  br i1 %41, label %42, label %44, !dbg !1529

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %5, align 8, !dbg !1534
  store i8* %43, i8** %2, align 8, !dbg !1536
  br label %73, !dbg !1536

; <label>:44:                                     ; preds = %38
  br label %45

; <label>:45:                                     ; preds = %44, %35
  %46 = load i8*, i8** %4, align 8, !dbg !1537
  store i8 0, i8* %46, align 1, !dbg !1538
  %47 = load i8*, i8** %5, align 8, !dbg !1539
  %48 = call i8* @realpath(i8* %47, i8* null) #7, !dbg !1540
  store i8* %48, i8** %6, align 8, !dbg !1541
  %49 = load i8*, i8** %6, align 8, !dbg !1542
  %50 = icmp ne i8* %49, null, !dbg !1542
  br i1 %50, label %57, label %51, !dbg !1544

; <label>:51:                                     ; preds = %45
  %52 = call i32* @__errno_location() #1, !dbg !1545
  %53 = load i32, i32* %52, align 4, !dbg !1547
  store i32 %53, i32* %8, align 4, !dbg !1548
  %54 = load i8*, i8** %5, align 8, !dbg !1549
  call void @free(i8* %54) #7, !dbg !1550
  %55 = load i32, i32* %8, align 4, !dbg !1551
  %56 = call i32* @__errno_location() #1, !dbg !1552
  store i32 %55, i32* %56, align 4, !dbg !1553
  store i8* null, i8** %2, align 8, !dbg !1554
  br label %73, !dbg !1554

; <label>:57:                                     ; preds = %45
  %58 = load i8*, i8** %6, align 8, !dbg !1555
  %59 = load i8*, i8** %4, align 8, !dbg !1556
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1557
  %61 = call i32 (i8**, i8*, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* %58, i8* %60) #7, !dbg !1558
  store i32 %61, i32* %9, align 4, !dbg !1559
  %62 = call i32* @__errno_location() #1, !dbg !1560
  %63 = load i32, i32* %62, align 4, !dbg !1561
  store i32 %63, i32* %8, align 4, !dbg !1562
  %64 = load i8*, i8** %6, align 8, !dbg !1563
  call void @free(i8* %64) #7, !dbg !1564
  %65 = load i8*, i8** %5, align 8, !dbg !1565
  call void @free(i8* %65) #7, !dbg !1566
  %66 = load i32, i32* %8, align 4, !dbg !1567
  %67 = call i32* @__errno_location() #1, !dbg !1568
  store i32 %66, i32* %67, align 4, !dbg !1569
  %68 = load i32, i32* %9, align 4, !dbg !1570
  %69 = icmp eq i32 %68, -1, !dbg !1572
  br i1 %69, label %70, label %71, !dbg !1573

; <label>:70:                                     ; preds = %57
  store i8* null, i8** %2, align 8, !dbg !1574
  br label %73, !dbg !1574

; <label>:71:                                     ; preds = %57
  %72 = load i8*, i8** %7, align 8, !dbg !1575
  store i8* %72, i8** %2, align 8, !dbg !1576
  br label %73, !dbg !1576

; <label>:73:                                     ; preds = %71, %70, %51, %42, %34, %22, %15
  %74 = load i8*, i8** %2, align 8, !dbg !1577
  ret i8* %74, !dbg !1577
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind
declare i8* @realpath(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @sys_dir_eachfile(i8* nonnull, i32 (i8*, i8*)* nonnull, i8*) #0 !dbg !1578 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.FTS*, align 8
  %9 = alloca %struct._ftsent*, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1586, metadata !361), !dbg !1587
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %6, metadata !1588, metadata !361), !dbg !1589
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1590, metadata !361), !dbg !1591
  call void @llvm.dbg.declare(metadata %struct.FTS** %8, metadata !1592, metadata !361), !dbg !1646
  call void @llvm.dbg.declare(metadata %struct._ftsent** %9, metadata !1647, metadata !361), !dbg !1650
  call void @llvm.dbg.declare(metadata [2 x i8*]* %10, metadata !1651, metadata !361), !dbg !1655
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1656, metadata !361), !dbg !1657
  store i32 0, i32* %11, align 4, !dbg !1657
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1, !dbg !1658
  store i8* null, i8** %12, align 8, !dbg !1659
  %13 = load i8*, i8** %5, align 8, !dbg !1660
  %14 = call noalias i8* @strdup(i8* %13) #7, !dbg !1661
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !1662
  store i8* %14, i8** %15, align 16, !dbg !1663
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !1664
  %17 = load i8*, i8** %16, align 16, !dbg !1664
  %18 = icmp ne i8* %17, null, !dbg !1664
  br i1 %18, label %20, label %19, !dbg !1666

; <label>:19:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !1667
  br label %90, !dbg !1667

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i32 0, i32 0, !dbg !1668
  %22 = call %struct.FTS* @fts_open(i8** %21, i32 6, i32 (%struct._ftsent**, %struct._ftsent**)* null), !dbg !1669
  store %struct.FTS* %22, %struct.FTS** %8, align 8, !dbg !1670
  %23 = load %struct.FTS*, %struct.FTS** %8, align 8, !dbg !1671
  %24 = icmp ne %struct.FTS* %23, null, !dbg !1671
  br i1 %24, label %31, label %25, !dbg !1673

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %5, align 8, !dbg !1674
  %27 = call i32* @__errno_location() #1, !dbg !1676
  %28 = load i32, i32* %27, align 4, !dbg !1677
  %29 = call i8* @strerror(i32 %28) #7, !dbg !1678
  %30 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0), i8* %26, i8* %29), !dbg !1680
  store i32 -1, i32* %11, align 4, !dbg !1681
  br label %86, !dbg !1682

; <label>:31:                                     ; preds = %20
  br label %32, !dbg !1683

; <label>:32:                                     ; preds = %72, %31
  %33 = load %struct.FTS*, %struct.FTS** %8, align 8, !dbg !1684
  %34 = call %struct._ftsent* @fts_read(%struct.FTS* %33), !dbg !1686
  store %struct._ftsent* %34, %struct._ftsent** %9, align 8, !dbg !1687
  %35 = icmp ne %struct._ftsent* %34, null, !dbg !1688
  br i1 %35, label %36, label %73, !dbg !1688

; <label>:36:                                     ; preds = %32
  %37 = load %struct._ftsent*, %struct._ftsent** %9, align 8, !dbg !1689
  %38 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %37, i32 0, i32 14, !dbg !1692
  %39 = load i16, i16* %38, align 8, !dbg !1692
  %40 = sext i16 %39 to i32, !dbg !1689
  %41 = icmp sgt i32 %40, 0, !dbg !1693
  br i1 %41, label %42, label %53, !dbg !1694

; <label>:42:                                     ; preds = %36
  %43 = load %struct._ftsent*, %struct._ftsent** %9, align 8, !dbg !1695
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %43, i32 0, i32 19, !dbg !1697
  %45 = getelementptr inbounds [1 x i8], [1 x i8]* %44, i64 0, i64 0, !dbg !1695
  %46 = load i8, i8* %45, align 8, !dbg !1695
  %47 = sext i8 %46 to i32, !dbg !1695
  %48 = icmp eq i32 %47, 46, !dbg !1698
  br i1 %48, label %49, label %53, !dbg !1699

; <label>:49:                                     ; preds = %42
  %50 = load %struct.FTS*, %struct.FTS** %8, align 8, !dbg !1700
  %51 = load %struct._ftsent*, %struct._ftsent** %9, align 8, !dbg !1701
  %52 = call i32 @fts_set(%struct.FTS* %50, %struct._ftsent* %51, i32 4) #7, !dbg !1702
  br label %72, !dbg !1702

; <label>:53:                                     ; preds = %42, %36
  %54 = load %struct._ftsent*, %struct._ftsent** %9, align 8, !dbg !1703
  %55 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %54, i32 0, i32 15, !dbg !1705
  %56 = load i16, i16* %55, align 2, !dbg !1705
  %57 = zext i16 %56 to i32, !dbg !1703
  %58 = and i32 %57, 8, !dbg !1706
  %59 = icmp ne i32 %58, 0, !dbg !1706
  br i1 %59, label %60, label %71, !dbg !1707

; <label>:60:                                     ; preds = %53
  %61 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %6, align 8, !dbg !1708
  %62 = load %struct._ftsent*, %struct._ftsent** %9, align 8, !dbg !1710
  %63 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %62, i32 0, i32 6, !dbg !1711
  %64 = load i8*, i8** %63, align 8, !dbg !1711
  %65 = load i8*, i8** %7, align 8, !dbg !1712
  %66 = call i32 %61(i8* %64, i8* %65), !dbg !1708
  store i32 %66, i32* %11, align 4, !dbg !1713
  %67 = load i32, i32* %11, align 4, !dbg !1714
  %68 = icmp eq i32 %67, -1, !dbg !1716
  br i1 %68, label %69, label %70, !dbg !1717

; <label>:69:                                     ; preds = %60
  br label %83, !dbg !1718

; <label>:70:                                     ; preds = %60
  br label %71, !dbg !1719

; <label>:71:                                     ; preds = %70, %53
  br label %72

; <label>:72:                                     ; preds = %71, %49
  br label %32, !dbg !1720, !llvm.loop !1722

; <label>:73:                                     ; preds = %32
  %74 = call i32* @__errno_location() #1, !dbg !1723
  %75 = load i32, i32* %74, align 4, !dbg !1725
  %76 = icmp ne i32 %75, 0, !dbg !1726
  br i1 %76, label %77, label %82, !dbg !1727

; <label>:77:                                     ; preds = %73
  %78 = call i32* @__errno_location() #1, !dbg !1728
  %79 = load i32, i32* %78, align 4, !dbg !1730
  %80 = call i8* @strerror(i32 %79) #7, !dbg !1731
  %81 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0), i8* %80), !dbg !1733
  store i32 -1, i32* %11, align 4, !dbg !1734
  br label %83, !dbg !1735

; <label>:82:                                     ; preds = %73
  br label %83, !dbg !1736

; <label>:83:                                     ; preds = %82, %77, %69
  %84 = load %struct.FTS*, %struct.FTS** %8, align 8, !dbg !1738
  %85 = call i32 @fts_close(%struct.FTS* %84), !dbg !1739
  br label %86, !dbg !1739

; <label>:86:                                     ; preds = %83, %25
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0, !dbg !1740
  %88 = load i8*, i8** %87, align 16, !dbg !1740
  call void @free(i8* %88) #7, !dbg !1741
  %89 = load i32, i32* %11, align 4, !dbg !1742
  store i32 %89, i32* %4, align 4, !dbg !1743
  br label %90, !dbg !1743

; <label>:90:                                     ; preds = %86, %19
  %91 = load i32, i32* %4, align 4, !dbg !1744
  ret i32 %91, !dbg !1744
}

declare %struct.FTS* @fts_open(i8**, i32, i32 (%struct._ftsent**, %struct._ftsent**)*) #3

declare %struct._ftsent* @fts_read(%struct.FTS*) #3

; Function Attrs: nounwind
declare i32 @fts_set(%struct.FTS*, %struct._ftsent*, i32) #4

declare i32 @fts_close(%struct.FTS*) #3

; Function Attrs: nounwind uwtable
define i32 @sys_get_cpu_cores() #0 !dbg !1745 {
  %1 = call i64 @sysconf(i32 84) #7, !dbg !1750
  %2 = trunc i64 %1 to i32, !dbg !1750
  ret i32 %2, !dbg !1751
}

; Function Attrs: nounwind uwtable
define i64 @sys_sendmsgfd(i32, i8* nonnull, i64, i32) #0 !dbg !1752 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec, align 8
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca %struct.cmsghdr*, align 8
  %13 = alloca [24 x i8], align 16
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1755, metadata !361), !dbg !1756
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1757, metadata !361), !dbg !1758
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1759, metadata !361), !dbg !1760
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1761, metadata !361), !dbg !1762
  call void @llvm.dbg.declare(metadata %struct.iovec* %10, metadata !1763, metadata !361), !dbg !1769
  call void @llvm.dbg.declare(metadata %struct.msghdr* %11, metadata !1770, metadata !361), !dbg !1781
  call void @llvm.dbg.declare(metadata %struct.cmsghdr** %12, metadata !1782, metadata !361), !dbg !1783
  call void @llvm.dbg.declare(metadata [24 x i8]* %13, metadata !1784, metadata !361), !dbg !1788
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1789, metadata !361), !dbg !1790
  %15 = load i8*, i8** %7, align 8, !dbg !1791
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0, !dbg !1792
  store i8* %15, i8** %16, align 8, !dbg !1793
  %17 = load i64, i64* %8, align 8, !dbg !1794
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1, !dbg !1795
  store i64 %17, i64* %18, align 8, !dbg !1796
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0, !dbg !1797
  store i8* null, i8** %19, align 8, !dbg !1798
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1, !dbg !1799
  store i32 0, i32* %20, align 8, !dbg !1800
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 2, !dbg !1801
  store %struct.iovec* %10, %struct.iovec** %21, align 8, !dbg !1802
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 3, !dbg !1803
  store i64 1, i64* %22, align 8, !dbg !1804
  %23 = load i32, i32* %9, align 4, !dbg !1805
  %24 = icmp ne i32 %23, -1, !dbg !1807
  br i1 %24, label %25, label %54, !dbg !1808

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i32 0, i32 0, !dbg !1809
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 4, !dbg !1811
  store i8* %26, i8** %27, align 8, !dbg !1812
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 5, !dbg !1813
  store i64 24, i64* %28, align 8, !dbg !1814
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 5, !dbg !1815
  %30 = load i64, i64* %29, align 8, !dbg !1815
  %31 = icmp uge i64 %30, 16, !dbg !1816
  br i1 %31, label %32, label %36, !dbg !1817

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 4, !dbg !1818
  %34 = load i8*, i8** %33, align 8, !dbg !1818
  %35 = bitcast i8* %34 to %struct.cmsghdr*, !dbg !1820
  br label %37, !dbg !1821

; <label>:36:                                     ; preds = %25
  br label %37, !dbg !1822

; <label>:37:                                     ; preds = %36, %32
  %38 = phi %struct.cmsghdr* [ %35, %32 ], [ null, %36 ], !dbg !1824
  store %struct.cmsghdr* %38, %struct.cmsghdr** %12, align 8, !dbg !1826
  %39 = load %struct.cmsghdr*, %struct.cmsghdr** %12, align 8, !dbg !1827
  %40 = icmp ne %struct.cmsghdr* %39, null, !dbg !1827
  br i1 %40, label %42, label %41, !dbg !1829

; <label>:41:                                     ; preds = %37
  store i64 -1, i64* %5, align 8, !dbg !1830
  br label %72, !dbg !1830

; <label>:42:                                     ; preds = %37
  %43 = load %struct.cmsghdr*, %struct.cmsghdr** %12, align 8, !dbg !1831
  %44 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %43, i32 0, i32 0, !dbg !1832
  store i64 20, i64* %44, align 8, !dbg !1833
  %45 = load %struct.cmsghdr*, %struct.cmsghdr** %12, align 8, !dbg !1834
  %46 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %45, i32 0, i32 1, !dbg !1835
  store i32 1, i32* %46, align 8, !dbg !1836
  %47 = load %struct.cmsghdr*, %struct.cmsghdr** %12, align 8, !dbg !1837
  %48 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %47, i32 0, i32 2, !dbg !1838
  store i32 1, i32* %48, align 4, !dbg !1839
  %49 = load i32, i32* %9, align 4, !dbg !1840
  %50 = load %struct.cmsghdr*, %struct.cmsghdr** %12, align 8, !dbg !1841
  %51 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %50, i32 0, i32 3, !dbg !1842
  %52 = getelementptr inbounds [0 x i8], [0 x i8]* %51, i32 0, i32 0, !dbg !1843
  %53 = bitcast i8* %52 to i32*, !dbg !1843
  store i32 %49, i32* %53, align 8, !dbg !1844
  br label %57, !dbg !1845

; <label>:54:                                     ; preds = %4
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 4, !dbg !1846
  store i8* null, i8** %55, align 8, !dbg !1848
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 5, !dbg !1849
  store i64 0, i64* %56, align 8, !dbg !1850
  br label %57

; <label>:57:                                     ; preds = %54, %42
  br label %58, !dbg !1851, !llvm.loop !1852

; <label>:58:                                     ; preds = %68, %57
  %59 = load i32, i32* %6, align 4, !dbg !1853
  %60 = call i64 @sendmsg(i32 %59, %struct.msghdr* %11, i32 16384), !dbg !1855
  store i64 %60, i64* %14, align 8, !dbg !1856
  br label %61, !dbg !1857

; <label>:61:                                     ; preds = %58
  %62 = load i64, i64* %14, align 8, !dbg !1858
  %63 = icmp eq i64 %62, -1, !dbg !1860
  br i1 %63, label %64, label %68, !dbg !1861

; <label>:64:                                     ; preds = %61
  %65 = call i32* @__errno_location() #1, !dbg !1862
  %66 = load i32, i32* %65, align 4, !dbg !1864
  %67 = icmp eq i32 %66, 4, !dbg !1865
  br label %68

; <label>:68:                                     ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br i1 %69, label %58, label %70, !dbg !1866, !llvm.loop !1852

; <label>:70:                                     ; preds = %68
  %71 = load i64, i64* %14, align 8, !dbg !1868
  store i64 %71, i64* %5, align 8, !dbg !1869
  br label %72, !dbg !1869

; <label>:72:                                     ; preds = %70, %41
  %73 = load i64, i64* %5, align 8, !dbg !1870
  ret i64 %73, !dbg !1870
}

declare i64 @sendmsg(i32, %struct.msghdr*, i32) #3

; Function Attrs: nounwind uwtable
define i64 @sys_recvmsgfd(i32, i8* nonnull, i64, i32*) #0 !dbg !1871 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca %struct.msghdr, align 8
  %13 = alloca %struct.cmsghdr*, align 8
  %14 = alloca [24 x i8], align 16
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1874, metadata !361), !dbg !1875
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1876, metadata !361), !dbg !1877
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1878, metadata !361), !dbg !1879
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1880, metadata !361), !dbg !1881
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1882, metadata !361), !dbg !1883
  %15 = load i32*, i32** %9, align 8, !dbg !1884
  %16 = icmp ne i32* %15, null, !dbg !1884
  br i1 %16, label %17, label %88, !dbg !1886

; <label>:17:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.iovec* %11, metadata !1887, metadata !361), !dbg !1889
  call void @llvm.dbg.declare(metadata %struct.msghdr* %12, metadata !1890, metadata !361), !dbg !1891
  call void @llvm.dbg.declare(metadata %struct.cmsghdr** %13, metadata !1892, metadata !361), !dbg !1893
  call void @llvm.dbg.declare(metadata [24 x i8]* %14, metadata !1894, metadata !361), !dbg !1896
  %18 = load i8*, i8** %7, align 8, !dbg !1897
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0, !dbg !1898
  store i8* %18, i8** %19, align 8, !dbg !1899
  %20 = load i64, i64* %8, align 8, !dbg !1900
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1, !dbg !1901
  store i64 %20, i64* %21, align 8, !dbg !1902
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0, !dbg !1903
  store i8* null, i8** %22, align 8, !dbg !1904
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 1, !dbg !1905
  store i32 0, i32* %23, align 8, !dbg !1906
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 2, !dbg !1907
  store %struct.iovec* %11, %struct.iovec** %24, align 8, !dbg !1908
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3, !dbg !1909
  store i64 1, i64* %25, align 8, !dbg !1910
  %26 = getelementptr inbounds [24 x i8], [24 x i8]* %14, i32 0, i32 0, !dbg !1911
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4, !dbg !1912
  store i8* %26, i8** %27, align 8, !dbg !1913
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 5, !dbg !1914
  store i64 24, i64* %28, align 8, !dbg !1915
  br label %29, !dbg !1916, !llvm.loop !1917

; <label>:29:                                     ; preds = %39, %17
  %30 = load i32, i32* %6, align 4, !dbg !1918
  %31 = call i64 @recvmsg(i32 %30, %struct.msghdr* %12, i32 0), !dbg !1920
  store i64 %31, i64* %10, align 8, !dbg !1921
  br label %32, !dbg !1922

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* %10, align 8, !dbg !1923
  %34 = icmp eq i64 %33, -1, !dbg !1925
  br i1 %34, label %35, label %39, !dbg !1926

; <label>:35:                                     ; preds = %32
  %36 = call i32* @__errno_location() #1, !dbg !1927
  %37 = load i32, i32* %36, align 4, !dbg !1929
  %38 = icmp eq i32 %37, 4, !dbg !1930
  br label %39

; <label>:39:                                     ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %29, label %41, !dbg !1931, !llvm.loop !1917

; <label>:41:                                     ; preds = %39
  %42 = load i64, i64* %10, align 8, !dbg !1933
  %43 = icmp sle i64 %42, 0, !dbg !1935
  br i1 %43, label %44, label %46, !dbg !1936

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %10, align 8, !dbg !1937
  store i64 %45, i64* %5, align 8, !dbg !1938
  br label %106, !dbg !1938

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 5, !dbg !1939
  %48 = load i64, i64* %47, align 8, !dbg !1939
  %49 = icmp uge i64 %48, 16, !dbg !1940
  br i1 %49, label %50, label %54, !dbg !1941

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4, !dbg !1942
  %52 = load i8*, i8** %51, align 8, !dbg !1942
  %53 = bitcast i8* %52 to %struct.cmsghdr*, !dbg !1943
  br label %55, !dbg !1944

; <label>:54:                                     ; preds = %46
  br label %55, !dbg !1945

; <label>:55:                                     ; preds = %54, %50
  %56 = phi %struct.cmsghdr* [ %53, %50 ], [ null, %54 ], !dbg !1946
  store %struct.cmsghdr* %56, %struct.cmsghdr** %13, align 8, !dbg !1948
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8, !dbg !1949
  %58 = icmp ne %struct.cmsghdr* %57, null, !dbg !1949
  br i1 %58, label %59, label %85, !dbg !1951

; <label>:59:                                     ; preds = %55
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8, !dbg !1952
  %61 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %60, i32 0, i32 0, !dbg !1954
  %62 = load i64, i64* %61, align 8, !dbg !1954
  %63 = icmp eq i64 %62, 20, !dbg !1955
  br i1 %63, label %64, label %85, !dbg !1956

; <label>:64:                                     ; preds = %59
  %65 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8, !dbg !1957
  %66 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %65, i32 0, i32 1, !dbg !1960
  %67 = load i32, i32* %66, align 8, !dbg !1960
  %68 = icmp ne i32 %67, 1, !dbg !1961
  br i1 %68, label %69, label %71, !dbg !1962

; <label>:69:                                     ; preds = %64
  %70 = call i32* @__errno_location() #1, !dbg !1963
  store i32 22, i32* %70, align 4, !dbg !1965
  store i64 -1, i64* %5, align 8, !dbg !1966
  br label %106, !dbg !1966

; <label>:71:                                     ; preds = %64
  %72 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8, !dbg !1967
  %73 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %72, i32 0, i32 2, !dbg !1969
  %74 = load i32, i32* %73, align 4, !dbg !1969
  %75 = icmp ne i32 %74, 1, !dbg !1970
  br i1 %75, label %76, label %78, !dbg !1971

; <label>:76:                                     ; preds = %71
  %77 = call i32* @__errno_location() #1, !dbg !1972
  store i32 22, i32* %77, align 4, !dbg !1974
  store i64 -1, i64* %5, align 8, !dbg !1975
  br label %106, !dbg !1975

; <label>:78:                                     ; preds = %71
  %79 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8, !dbg !1976
  %80 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %79, i32 0, i32 3, !dbg !1977
  %81 = getelementptr inbounds [0 x i8], [0 x i8]* %80, i32 0, i32 0, !dbg !1978
  %82 = bitcast i8* %81 to i32*, !dbg !1978
  %83 = load i32, i32* %82, align 8, !dbg !1978
  %84 = load i32*, i32** %9, align 8, !dbg !1979
  store i32 %83, i32* %84, align 4, !dbg !1980
  br label %87, !dbg !1981

; <label>:85:                                     ; preds = %59, %55
  %86 = load i32*, i32** %9, align 8, !dbg !1982
  store i32 -1, i32* %86, align 4, !dbg !1984
  br label %87

; <label>:87:                                     ; preds = %85, %78
  br label %104, !dbg !1985

; <label>:88:                                     ; preds = %4
  br label %89, !dbg !1986, !llvm.loop !1988

; <label>:89:                                     ; preds = %101, %88
  %90 = load i32, i32* %6, align 4, !dbg !1989
  %91 = load i8*, i8** %7, align 8, !dbg !1991
  %92 = load i64, i64* %8, align 8, !dbg !1992
  %93 = call i64 @recv(i32 %90, i8* %91, i64 %92, i32 0), !dbg !1993
  store i64 %93, i64* %10, align 8, !dbg !1994
  br label %94, !dbg !1995

; <label>:94:                                     ; preds = %89
  %95 = load i64, i64* %10, align 8, !dbg !1996
  %96 = icmp eq i64 %95, -1, !dbg !1998
  br i1 %96, label %97, label %101, !dbg !1999

; <label>:97:                                     ; preds = %94
  %98 = call i32* @__errno_location() #1, !dbg !2000
  %99 = load i32, i32* %98, align 4, !dbg !2002
  %100 = icmp eq i32 %99, 4, !dbg !2003
  br label %101

; <label>:101:                                    ; preds = %97, %94
  %102 = phi i1 [ false, %94 ], [ %100, %97 ]
  br i1 %102, label %89, label %103, !dbg !2004, !llvm.loop !1988

; <label>:103:                                    ; preds = %101
  br label %104

; <label>:104:                                    ; preds = %103, %87
  %105 = load i64, i64* %10, align 8, !dbg !2006
  store i64 %105, i64* %5, align 8, !dbg !2007
  br label %106, !dbg !2007

; <label>:106:                                    ; preds = %104, %76, %69, %44
  %107 = load i64, i64* %5, align 8, !dbg !2008
  ret i64 %107, !dbg !2008
}

declare i64 @recvmsg(i32, %struct.msghdr*, i32) #3

declare i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: nounwind uwtable
define void @sys_dump_fds() #0 !dbg !2009 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage, align 8
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %union.__SOCKADDR_ARG, align 8
  %14 = alloca %union.__SOCKADDR_ARG, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2012, metadata !361), !dbg !2013
  store i32 0, i32* %1, align 4, !dbg !2013
  %19 = load i32, i32* %1, align 4, !dbg !2014
  %20 = icmp ne i32 %19, 0, !dbg !2014
  br i1 %20, label %33, label %21, !dbg !2016

; <label>:21:                                     ; preds = %0
  %22 = call i64 @sysconf(i32 4) #7, !dbg !2017
  %23 = trunc i64 %22 to i32, !dbg !2017
  store i32 %23, i32* %1, align 4, !dbg !2019
  %24 = icmp eq i32 %23, -1, !dbg !2020
  br i1 %24, label %25, label %33, !dbg !2021

; <label>:25:                                     ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2022
  %27 = call i32* @__errno_location() #1, !dbg !2024
  %28 = load i32, i32* %27, align 4, !dbg !2025
  %29 = call i8* @strerror(i32 %28) #7, !dbg !2026
  %30 = call i32* @__errno_location() #1, !dbg !2028
  %31 = load i32, i32* %30, align 4, !dbg !2030
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i8* %29, i32 %31), !dbg !2031
  br label %33, !dbg !2032

; <label>:33:                                     ; preds = %25, %21, %0
  %34 = load i32, i32* %1, align 4, !dbg !2033
  %35 = icmp ne i32 %34, 0, !dbg !2033
  br i1 %35, label %37, label %36, !dbg !2035

; <label>:36:                                     ; preds = %33
  store i32 65535, i32* %1, align 4, !dbg !2036
  br label %37, !dbg !2037

; <label>:37:                                     ; preds = %36, %33
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2038, metadata !361), !dbg !2040
  store i32 0, i32* %2, align 4, !dbg !2040
  br label %38, !dbg !2041

; <label>:38:                                     ; preds = %181, %37
  %39 = load i32, i32* %2, align 4, !dbg !2042
  %40 = load i32, i32* %1, align 4, !dbg !2045
  %41 = icmp sle i32 %39, %40, !dbg !2046
  br i1 %41, label %42, label %184, !dbg !2047

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !2048, metadata !361), !dbg !2050
  %43 = load i32, i32* %2, align 4, !dbg !2051
  %44 = call i32 @fstat(i32 %43, %struct.stat* %3) #7, !dbg !2053
  %45 = icmp eq i32 %44, -1, !dbg !2054
  br i1 %45, label %46, label %47, !dbg !2055

; <label>:46:                                     ; preds = %42
  br label %181, !dbg !2056

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %2, align 4, !dbg !2058
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %48), !dbg !2059
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3, !dbg !2060
  %51 = load i32, i32* %50, align 8, !dbg !2060
  %52 = and i32 %51, 61440, !dbg !2061
  switch i32 %52, label %67 [
    i32 24576, label %53
    i32 8192, label %55
    i32 16384, label %57
    i32 4096, label %59
    i32 40960, label %61
    i32 32768, label %63
    i32 49152, label %65
  ], !dbg !2062

; <label>:53:                                     ; preds = %47
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)), !dbg !2063
  br label %69, !dbg !2065

; <label>:55:                                     ; preds = %47
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)), !dbg !2066
  br label %69, !dbg !2067

; <label>:57:                                     ; preds = %47
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)), !dbg !2068
  br label %69, !dbg !2069

; <label>:59:                                     ; preds = %47
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0)), !dbg !2070
  br label %69, !dbg !2071

; <label>:61:                                     ; preds = %47
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)), !dbg !2072
  br label %69, !dbg !2073

; <label>:63:                                     ; preds = %47
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0)), !dbg !2074
  br label %69, !dbg !2075

; <label>:65:                                     ; preds = %47
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0)), !dbg !2076
  br label %69, !dbg !2077

; <label>:67:                                     ; preds = %47
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0)), !dbg !2078
  br label %69, !dbg !2079

; <label>:69:                                     ; preds = %67, %65, %63, %61, %59, %57, %55, %53
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 3, !dbg !2080
  %71 = load i32, i32* %70, align 8, !dbg !2080
  %72 = and i32 %71, 61440, !dbg !2082
  %73 = icmp eq i32 %72, 49152, !dbg !2083
  br i1 %73, label %74, label %179, !dbg !2084

; <label>:74:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2085, metadata !361), !dbg !2087
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2088, metadata !361), !dbg !2089
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2090, metadata !361), !dbg !2091
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage* %7, metadata !2092, metadata !361), !dbg !2093
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage* %8, metadata !2094, metadata !361), !dbg !2095
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2096, metadata !361), !dbg !2097
  store i32 128, i32* %9, align 4, !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2098, metadata !361), !dbg !2099
  store i32 128, i32* %10, align 4, !dbg !2099
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2100, metadata !361), !dbg !2101
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2102, metadata !361), !dbg !2103
  %75 = load i32, i32* %2, align 4, !dbg !2104
  %76 = bitcast %union.__SOCKADDR_ARG* %13 to %struct.sockaddr**, !dbg !2105
  %77 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*, !dbg !2105
  store %struct.sockaddr* %77, %struct.sockaddr** %76, align 8, !dbg !2105
  %78 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %13, i32 0, i32 0, !dbg !2106
  %79 = load %struct.sockaddr*, %struct.sockaddr** %78, align 8, !dbg !2106
  %80 = call i32 @getsockname(i32 %75, %struct.sockaddr* %79, i32* %9) #7, !dbg !2106
  store i32 %80, i32* %4, align 4, !dbg !2107
  %81 = load i32, i32* %2, align 4, !dbg !2108
  %82 = bitcast %union.__SOCKADDR_ARG* %14 to %struct.sockaddr**, !dbg !2109
  %83 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*, !dbg !2109
  store %struct.sockaddr* %83, %struct.sockaddr** %82, align 8, !dbg !2109
  %84 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %14, i32 0, i32 0, !dbg !2110
  %85 = load %struct.sockaddr*, %struct.sockaddr** %84, align 8, !dbg !2110
  %86 = call i32 @getpeername(i32 %81, %struct.sockaddr* %85, i32* %10) #7, !dbg !2110
  store i32 %86, i32* %5, align 4, !dbg !2111
  %87 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0, !dbg !2112
  %88 = load i16, i16* %87, align 8, !dbg !2112
  %89 = zext i16 %88 to i32, !dbg !2113
  switch i32 %89, label %173 [
    i32 2, label %90
    i32 10, label %90
    i32 1, label %147
    i32 0, label %171
  ], !dbg !2114

; <label>:90:                                     ; preds = %74, %74
  %91 = load i32, i32* %4, align 4, !dbg !2115
  %92 = icmp eq i32 %91, 0, !dbg !2119
  br i1 %92, label %93, label %111, !dbg !2120

; <label>:93:                                     ; preds = %90
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2121, metadata !361), !dbg !2123
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2124, metadata !361), !dbg !2125
  %94 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*, !dbg !2126
  %95 = load i32, i32* %9, align 4, !dbg !2128
  %96 = call i32 @sys_sockaddr_str(%struct.sockaddr* %94, i32 %95, i8** %15, i8** %16), !dbg !2129
  %97 = icmp ne i32 %96, 0, !dbg !2130
  br i1 %97, label %98, label %100, !dbg !2131

; <label>:98:                                     ; preds = %93
  %99 = call noalias i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !2132
  store i8* %99, i8** %11, align 8, !dbg !2134
  br label %110, !dbg !2135

; <label>:100:                                    ; preds = %93
  %101 = load i8*, i8** %15, align 8, !dbg !2136
  %102 = load i8*, i8** %16, align 8, !dbg !2138
  %103 = call i32 (i8**, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* %101, i8* %102) #7, !dbg !2139
  store i32 %103, i32* %6, align 4, !dbg !2140
  %104 = load i32, i32* %6, align 4, !dbg !2141
  %105 = icmp eq i32 %104, -1, !dbg !2143
  br i1 %105, label %106, label %107, !dbg !2144

; <label>:106:                                    ; preds = %100
  store i8* null, i8** %11, align 8, !dbg !2145
  br label %107, !dbg !2146

; <label>:107:                                    ; preds = %106, %100
  %108 = load i8*, i8** %15, align 8, !dbg !2147
  call void @free(i8* %108) #7, !dbg !2148
  %109 = load i8*, i8** %16, align 8, !dbg !2149
  call void @free(i8* %109) #7, !dbg !2150
  br label %110

; <label>:110:                                    ; preds = %107, %98
  br label %113, !dbg !2151

; <label>:111:                                    ; preds = %90
  %112 = call noalias i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !2152
  store i8* %112, i8** %11, align 8, !dbg !2154
  br label %113

; <label>:113:                                    ; preds = %111, %110
  %114 = load i32, i32* %5, align 4, !dbg !2155
  %115 = icmp eq i32 %114, 0, !dbg !2157
  br i1 %115, label %116, label %134, !dbg !2158

; <label>:116:                                    ; preds = %113
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2159, metadata !361), !dbg !2161
  call void @llvm.dbg.declare(metadata i8** %18, metadata !2162, metadata !361), !dbg !2163
  %117 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*, !dbg !2164
  %118 = load i32, i32* %10, align 4, !dbg !2166
  %119 = call i32 @sys_sockaddr_str(%struct.sockaddr* %117, i32 %118, i8** %17, i8** %18), !dbg !2167
  %120 = icmp ne i32 %119, 0, !dbg !2168
  br i1 %120, label %121, label %123, !dbg !2169

; <label>:121:                                    ; preds = %116
  %122 = call noalias i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0)) #7, !dbg !2170
  store i8* %122, i8** %12, align 8, !dbg !2172
  br label %133, !dbg !2173

; <label>:123:                                    ; preds = %116
  %124 = load i8*, i8** %17, align 8, !dbg !2174
  %125 = load i8*, i8** %18, align 8, !dbg !2176
  %126 = call i32 (i8**, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* %124, i8* %125) #7, !dbg !2177
  store i32 %126, i32* %6, align 4, !dbg !2178
  %127 = load i32, i32* %6, align 4, !dbg !2179
  %128 = icmp eq i32 %127, -1, !dbg !2181
  br i1 %128, label %129, label %130, !dbg !2182

; <label>:129:                                    ; preds = %123
  store i8* null, i8** %12, align 8, !dbg !2183
  br label %130, !dbg !2184

; <label>:130:                                    ; preds = %129, %123
  %131 = load i8*, i8** %17, align 8, !dbg !2185
  call void @free(i8* %131) #7, !dbg !2186
  %132 = load i8*, i8** %18, align 8, !dbg !2187
  call void @free(i8* %132) #7, !dbg !2188
  br label %133

; <label>:133:                                    ; preds = %130, %121
  br label %136, !dbg !2189

; <label>:134:                                    ; preds = %113
  %135 = call noalias i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !2190
  store i8* %135, i8** %12, align 8, !dbg !2192
  br label %136

; <label>:136:                                    ; preds = %134, %133
  %137 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0, !dbg !2193
  %138 = load i16, i16* %137, align 8, !dbg !2193
  %139 = zext i16 %138 to i32, !dbg !2194
  %140 = icmp eq i32 %139, 2, !dbg !2195
  %141 = select i1 %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), !dbg !2194
  %142 = load i8*, i8** %11, align 8, !dbg !2196
  %143 = load i8*, i8** %12, align 8, !dbg !2197
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i8* %141, i8* %142, i8* %143), !dbg !2198
  %145 = load i8*, i8** %11, align 8, !dbg !2199
  call void @free(i8* %145) #7, !dbg !2200
  %146 = load i8*, i8** %12, align 8, !dbg !2201
  call void @free(i8* %146) #7, !dbg !2202
  br label %178, !dbg !2203

; <label>:147:                                    ; preds = %74
  %148 = load i32, i32* %4, align 4, !dbg !2204
  %149 = icmp eq i32 %148, 0, !dbg !2207
  br i1 %149, label %150, label %154, !dbg !2208

; <label>:150:                                    ; preds = %147
  %151 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*, !dbg !2209
  %152 = load i32, i32* %9, align 4, !dbg !2211
  %153 = call i8* @sys_afunix_str(%struct.sockaddr* %151, i32 %152), !dbg !2212
  store i8* %153, i8** %11, align 8, !dbg !2213
  br label %156, !dbg !2214

; <label>:154:                                    ; preds = %147
  %155 = call noalias i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !2215
  store i8* %155, i8** %11, align 8, !dbg !2217
  br label %156

; <label>:156:                                    ; preds = %154, %150
  %157 = load i32, i32* %5, align 4, !dbg !2218
  %158 = icmp eq i32 %157, 0, !dbg !2220
  br i1 %158, label %159, label %163, !dbg !2221

; <label>:159:                                    ; preds = %156
  %160 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*, !dbg !2222
  %161 = load i32, i32* %10, align 4, !dbg !2224
  %162 = call i8* @sys_afunix_str(%struct.sockaddr* %160, i32 %161), !dbg !2225
  store i8* %162, i8** %12, align 8, !dbg !2226
  br label %165, !dbg !2227

; <label>:163:                                    ; preds = %156
  %164 = call noalias i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #7, !dbg !2228
  store i8* %164, i8** %12, align 8, !dbg !2230
  br label %165

; <label>:165:                                    ; preds = %163, %159
  %166 = load i8*, i8** %11, align 8, !dbg !2231
  %167 = load i8*, i8** %12, align 8, !dbg !2232
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* %166, i8* %167), !dbg !2233
  %169 = load i8*, i8** %11, align 8, !dbg !2234
  call void @free(i8* %169) #7, !dbg !2235
  %170 = load i8*, i8** %12, align 8, !dbg !2236
  call void @free(i8* %170) #7, !dbg !2237
  br label %178, !dbg !2238

; <label>:171:                                    ; preds = %74
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0)), !dbg !2239
  br label %178, !dbg !2241

; <label>:173:                                    ; preds = %74
  %174 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0, !dbg !2242
  %175 = load i16, i16* %174, align 8, !dbg !2242
  %176 = zext i16 %175 to i32, !dbg !2243
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %176), !dbg !2244
  br label %178, !dbg !2245

; <label>:178:                                    ; preds = %173, %171, %165, %136
  br label %179, !dbg !2246

; <label>:179:                                    ; preds = %178, %69
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)), !dbg !2247
  br label %181, !dbg !2248

; <label>:181:                                    ; preds = %179, %46
  %182 = load i32, i32* %2, align 4, !dbg !2249
  %183 = add nsw i32 %182, 1, !dbg !2249
  store i32 %183, i32* %2, align 4, !dbg !2249
  br label %38, !dbg !2251, !llvm.loop !2252

; <label>:184:                                    ; preds = %38
  ret void, !dbg !2254
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #4

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #4

; Function Attrs: nounwind
declare i32 @getpeername(i32, %struct.sockaddr*, i32*) #4

; Function Attrs: nounwind uwtable
define internal i8* @sys_afunix_str(%struct.sockaddr*, i32) #0 !dbg !2255 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %3, metadata !2258, metadata !361), !dbg !2259
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2260, metadata !361), !dbg !2261
  call void @llvm.dbg.declare(metadata %struct.sockaddr_un** %5, metadata !2262, metadata !361), !dbg !2263
  %8 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8, !dbg !2264
  %9 = bitcast %struct.sockaddr* %8 to %struct.sockaddr_un*, !dbg !2265
  store %struct.sockaddr_un* %9, %struct.sockaddr_un** %5, align 8, !dbg !2263
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2266, metadata !361), !dbg !2267
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2268, metadata !361), !dbg !2269
  %10 = load i32, i32* %4, align 4, !dbg !2270
  %11 = zext i32 %10 to i64, !dbg !2270
  %12 = icmp eq i64 %11, 2, !dbg !2272
  br i1 %12, label %13, label %15, !dbg !2273

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8**, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0)) #7, !dbg !2274
  store i32 %14, i32* %7, align 4, !dbg !2276
  br label %50, !dbg !2277

; <label>:15:                                     ; preds = %2
  %16 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8, !dbg !2278
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %16, i32 0, i32 1, !dbg !2281
  %18 = getelementptr inbounds [108 x i8], [108 x i8]* %17, i64 0, i64 0, !dbg !2278
  %19 = load i8, i8* %18, align 2, !dbg !2278
  %20 = sext i8 %19 to i32, !dbg !2278
  %21 = icmp eq i32 %20, 0, !dbg !2282
  br i1 %21, label %22, label %44, !dbg !2278

; <label>:22:                                     ; preds = %15
  %23 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8, !dbg !2283
  %24 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %23, i32 0, i32 1, !dbg !2285
  %25 = getelementptr inbounds [108 x i8], [108 x i8]* %24, i64 0, i64 1, !dbg !2283
  %26 = load i8, i8* %25, align 1, !dbg !2283
  %27 = sext i8 %26 to i32, !dbg !2283
  %28 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8, !dbg !2286
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %28, i32 0, i32 1, !dbg !2287
  %30 = getelementptr inbounds [108 x i8], [108 x i8]* %29, i64 0, i64 2, !dbg !2286
  %31 = load i8, i8* %30, align 2, !dbg !2286
  %32 = sext i8 %31 to i32, !dbg !2286
  %33 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8, !dbg !2288
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %33, i32 0, i32 1, !dbg !2289
  %35 = getelementptr inbounds [108 x i8], [108 x i8]* %34, i64 0, i64 3, !dbg !2288
  %36 = load i8, i8* %35, align 1, !dbg !2288
  %37 = sext i8 %36 to i32, !dbg !2288
  %38 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8, !dbg !2290
  %39 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %38, i32 0, i32 1, !dbg !2291
  %40 = getelementptr inbounds [108 x i8], [108 x i8]* %39, i64 0, i64 4, !dbg !2290
  %41 = load i8, i8* %40, align 2, !dbg !2290
  %42 = sext i8 %41 to i32, !dbg !2290
  %43 = call i32 (i8**, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i32 %27, i32 %32, i32 %37, i32 %42) #7, !dbg !2292
  store i32 %43, i32* %7, align 4, !dbg !2293
  br label %49, !dbg !2294

; <label>:44:                                     ; preds = %15
  %45 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8, !dbg !2295
  %46 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %45, i32 0, i32 1, !dbg !2297
  %47 = getelementptr inbounds [108 x i8], [108 x i8]* %46, i32 0, i32 0, !dbg !2295
  %48 = call i32 (i8**, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* %47) #7, !dbg !2298
  store i32 %48, i32* %7, align 4, !dbg !2299
  br label %49

; <label>:49:                                     ; preds = %44, %22
  br label %50

; <label>:50:                                     ; preds = %49, %13
  %51 = load i32, i32* %7, align 4, !dbg !2300
  %52 = icmp eq i32 %51, -1, !dbg !2302
  br i1 %52, label %53, label %54, !dbg !2303

; <label>:53:                                     ; preds = %50
  store i8* null, i8** %6, align 8, !dbg !2304
  br label %54, !dbg !2305

; <label>:54:                                     ; preds = %53, %50
  %55 = load i8*, i8** %6, align 8, !dbg !2306
  ret i8* %55, !dbg !2307
}

; Function Attrs: nounwind uwtable
define zeroext i16 @sys_rand16() #0 !dbg !2308 {
  %1 = load i32, i32* @sys_rand_seeded, align 4, !dbg !2312
  %2 = icmp ne i32 %1, 0, !dbg !2314
  %3 = xor i1 %2, true, !dbg !2314
  %4 = zext i1 %3 to i32, !dbg !2314
  %5 = sext i32 %4 to i64, !dbg !2315
  %6 = icmp ne i64 %5, 0, !dbg !2316
  br i1 %6, label %7, label %8, !dbg !2317

; <label>:7:                                      ; preds = %0
  call void @sys_rand_seed(), !dbg !2318
  br label %8, !dbg !2318

; <label>:8:                                      ; preds = %7, %0
  %9 = call i64 @random() #7, !dbg !2319
  %10 = trunc i64 %9 to i16, !dbg !2319
  ret i16 %10, !dbg !2320
}

; Function Attrs: nounwind uwtable
define internal void @sys_rand_seed() #0 !dbg !2321 {
  %1 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !2322, metadata !361), !dbg !2329
  %2 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #7, !dbg !2330
  %3 = icmp eq i32 %2, -1, !dbg !2332
  br i1 %3, label %4, label %7, !dbg !2333

; <label>:4:                                      ; preds = %0
  %5 = call i64 @time(i64* null) #7, !dbg !2334
  %6 = trunc i64 %5 to i32, !dbg !2336
  call void @srandom(i32 %6) #7, !dbg !2337
  br label %14, !dbg !2339

; <label>:7:                                      ; preds = %0
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !2340
  %9 = load i64, i64* %8, align 8, !dbg !2340
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1, !dbg !2342
  %11 = load i64, i64* %10, align 8, !dbg !2342
  %12 = xor i64 %9, %11, !dbg !2343
  %13 = trunc i64 %12 to i32, !dbg !2344
  call void @srandom(i32 %13) #7, !dbg !2345
  br label %14

; <label>:14:                                     ; preds = %7, %4
  store i32 1, i32* @sys_rand_seeded, align 4, !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: nounwind
declare i64 @random() #4

; Function Attrs: nounwind uwtable
define i32 @sys_rand32() #0 !dbg !2348 {
  %1 = load i32, i32* @sys_rand_seeded, align 4, !dbg !2349
  %2 = icmp ne i32 %1, 0, !dbg !2351
  %3 = xor i1 %2, true, !dbg !2351
  %4 = zext i1 %3 to i32, !dbg !2351
  %5 = sext i32 %4 to i64, !dbg !2352
  %6 = icmp ne i64 %5, 0, !dbg !2353
  br i1 %6, label %7, label %8, !dbg !2354

; <label>:7:                                      ; preds = %0
  call void @sys_rand_seed(), !dbg !2355
  br label %8, !dbg !2355

; <label>:8:                                      ; preds = %7, %0
  %9 = call i64 @random() #7, !dbg !2356
  %10 = trunc i64 %9 to i32, !dbg !2356
  ret i32 %10, !dbg !2357
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

; Function Attrs: nounwind
declare void @srandom(i32) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!352, !353}
!llvm.ident = !{!354}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !289, globals: !335)
!1 = !DIFile(filename: "line9-sys.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{!3, !221, !233, !262, !267}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 71, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!6 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!7 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!8 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!9 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!10 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!11 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!12 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!13 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!14 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!15 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!16 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!17 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!18 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!19 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!20 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!21 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!22 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!23 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!24 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!25 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!26 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!27 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!28 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!29 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!30 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!31 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!32 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!33 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!34 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!35 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!36 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!37 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!38 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!39 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!40 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!41 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!42 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!43 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!44 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!45 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!46 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!47 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!48 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!49 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!50 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!51 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!52 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!53 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!54 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!55 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!56 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!57 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!58 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!59 = !DIEnumerator(name: "_SC_PII", value: 53)
!60 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!61 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!62 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!63 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!64 = !DIEnumerator(name: "_SC_POLL", value: 58)
!65 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!66 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!67 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!68 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!69 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!70 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!71 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!72 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!73 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!74 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!75 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!76 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!77 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!78 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!79 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!80 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!81 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!82 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!83 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!84 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!85 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!86 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!87 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!88 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!89 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!90 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!91 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!92 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!93 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!94 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!95 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!96 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!97 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!98 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!99 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!100 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!101 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!102 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!103 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!104 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!105 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!106 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!107 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!108 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!109 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!110 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!111 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!112 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!113 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!114 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!115 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!116 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!117 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!118 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!119 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!120 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!121 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!122 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!123 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!124 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!125 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!126 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!127 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!128 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!129 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!130 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!131 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!132 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!133 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!134 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!135 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!136 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!137 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!138 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!139 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!140 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!141 = !DIEnumerator(name: "_SC_BASE", value: 134)
!142 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!143 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!144 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!145 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!146 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!147 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!148 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!149 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!150 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!151 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!152 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!153 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!154 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!155 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!156 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!157 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!158 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!159 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!160 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!161 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!162 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!163 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!164 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!165 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!166 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!167 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!168 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!169 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!170 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!171 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!172 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!173 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!174 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!175 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!176 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!177 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!178 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!179 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!180 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!181 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!182 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!183 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!184 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!185 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!186 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!187 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!188 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!189 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!190 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!191 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!192 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!193 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!194 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!195 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!196 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!197 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!198 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!199 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!200 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!201 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!202 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!203 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!204 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!205 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!206 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!207 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!208 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!209 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!210 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!211 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!212 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!213 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!214 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!215 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!216 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!217 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!218 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!219 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!220 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !222, line: 24, size: 32, align: 32, elements: !223)
!222 = !DIFile(filename: "/usr/include/bits/socket_type.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!225 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!226 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!227 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!228 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!229 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!230 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!231 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!232 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 40, size: 32, align: 32, elements: !235)
!234 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!236 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!237 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!238 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!239 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!240 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!241 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!242 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!243 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!244 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!245 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!246 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!247 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!248 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!249 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!250 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!251 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!252 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!253 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!254 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!255 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!256 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!257 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!258 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!259 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!260 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!261 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 303, size: 32, align: 32, elements: !264)
!263 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "SCM_RIGHTS", value: 1)
!266 = !DIEnumerator(name: "SCM_CREDENTIALS", value: 2)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 175, size: 32, align: 32, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!269 = !DIEnumerator(name: "MSG_OOB", value: 1)
!270 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!271 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!272 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!273 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!274 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!275 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!276 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!277 = !DIEnumerator(name: "MSG_EOR", value: 128)
!278 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!279 = !DIEnumerator(name: "MSG_FIN", value: 512)
!280 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!281 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!282 = !DIEnumerator(name: "MSG_RST", value: 4096)
!283 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!284 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!285 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!286 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!287 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!288 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!289 = !{!290, !291, !292, !297, !298, !301, !312, !313, !325, !334}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!291 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !293, line: 109, baseType: !294)
!293 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !295, line: 172, baseType: !296)
!295 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!296 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!297 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !299, line: 216, baseType: !300)
!299 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!300 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmsghdr", file: !263, line: 246, size: 128, align: 64, elements: !303)
!303 = !{!304, !305, !306, !307}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_len", scope: !302, file: !263, line: 248, baseType: !298, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_level", scope: !302, file: !263, line: 253, baseType: !291, size: 32, align: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_type", scope: !302, file: !263, line: 254, baseType: !291, size: 32, align: 32, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__cmsg_data", scope: !302, file: !263, line: 256, baseType: !308, offset: 128)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, align: 8, elements: !310)
!309 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!310 = !{!311}
!311 = !DISubrange(count: -1)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !263, line: 153, size: 128, align: 16, elements: !315)
!315 = !{!316, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !314, file: !263, line: 155, baseType: !317, size: 16, align: 16)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !318, line: 28, baseType: !319)
!318 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!319 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !314, file: !263, line: 156, baseType: !321, size: 112, align: 8, offset: 16)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 112, align: 8, elements: !323)
!322 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!323 = !{!324}
!324 = !DISubrange(count: 14)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !327, line: 29, size: 880, align: 16, elements: !328)
!327 = !DIFile(filename: "/usr/include/sys/un.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !326, file: !327, line: 31, baseType: !317, size: 16, align: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !326, file: !327, line: 32, baseType: !331, size: 864, align: 8, offset: 16)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 864, align: 8, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 108)
!334 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!335 = !{!336, !345, !351}
!336 = distinct !DIGlobalVariable(name: "bufsize", scope: !337, file: !338, line: 314, type: !291, isLocal: true, isDefinition: true, variable: i32* @sys_user_str.bufsize)
!337 = distinct !DISubprogram(name: "sys_user_str", scope: !338, file: !338, line: 312, type: !339, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!338 = !DIFile(filename: "sys.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!339 = !DISubroutineType(types: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !293, line: 80, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !295, line: 125, baseType: !334)
!344 = !{}
!345 = distinct !DIGlobalVariable(name: "bufsize", scope: !346, file: !338, line: 367, type: !291, isLocal: true, isDefinition: true, variable: i32* @sys_group_str.bufsize)
!346 = distinct !DISubprogram(name: "sys_group_str", scope: !338, file: !338, line: 365, type: !347, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!347 = !DISubroutineType(types: !348)
!348 = !{!341, !349}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !293, line: 65, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !295, line: 126, baseType: !334)
!351 = distinct !DIGlobalVariable(name: "sys_rand_seeded", scope: !0, file: !338, line: 1014, type: !291, isLocal: true, isDefinition: true, variable: i32* @sys_rand_seeded)
!352 = !{i32 2, !"Dwarf Version", i32 4}
!353 = !{i32 2, !"Debug Info Version", i32 3}
!354 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!355 = distinct !DISubprogram(name: "sys_privdrop", scope: !338, file: !338, line: 78, type: !356, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!356 = !DISubroutineType(types: !357)
!357 = !{!291, !358, !358, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!360 = !DILocalVariable(name: "username", arg: 1, scope: !355, file: !338, line: 78, type: !358)
!361 = !DIExpression()
!362 = !DILocation(line: 78, column: 26, scope: !355)
!363 = !DILocalVariable(name: "groupname", arg: 2, scope: !355, file: !338, line: 78, type: !358)
!364 = !DILocation(line: 78, column: 48, scope: !355)
!365 = !DILocalVariable(name: "jaildir", arg: 3, scope: !355, file: !338, line: 78, type: !358)
!366 = !DILocation(line: 78, column: 71, scope: !355)
!367 = !DILocalVariable(name: "pw", scope: !355, file: !338, line: 80, type: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !370, line: 49, size: 384, align: 64, elements: !371)
!370 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!371 = !{!372, !373, !374, !375, !376, !377, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !369, file: !370, line: 51, baseType: !341, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !369, file: !370, line: 52, baseType: !341, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !369, file: !370, line: 53, baseType: !343, size: 32, align: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !369, file: !370, line: 54, baseType: !350, size: 32, align: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !369, file: !370, line: 55, baseType: !341, size: 64, align: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !369, file: !370, line: 56, baseType: !341, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !369, file: !370, line: 57, baseType: !341, size: 64, align: 64, offset: 320)
!379 = !DILocation(line: 80, column: 17, scope: !355)
!380 = !DILocalVariable(name: "gr", scope: !355, file: !338, line: 81, type: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !383, line: 42, size: 256, align: 64, elements: !384)
!383 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!384 = !{!385, !386, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !382, file: !383, line: 44, baseType: !341, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !382, file: !383, line: 45, baseType: !341, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !382, file: !383, line: 46, baseType: !350, size: 32, align: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !382, file: !383, line: 47, baseType: !389, size: 64, align: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!390 = !DILocation(line: 81, column: 16, scope: !355)
!391 = !DILocalVariable(name: "ret", scope: !355, file: !338, line: 82, type: !291)
!392 = !DILocation(line: 82, column: 6, scope: !355)
!393 = !DILocation(line: 84, column: 6, scope: !394)
!394 = distinct !DILexicalBlock(scope: !355, file: !338, line: 84, column: 6)
!395 = !DILocation(line: 84, column: 6, scope: !355)
!396 = !DILocation(line: 85, column: 4, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !338, line: 84, column: 17)
!398 = !DILocation(line: 85, column: 8, scope: !397)
!399 = !DILocation(line: 86, column: 23, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !338, line: 86, column: 7)
!401 = !DILocation(line: 86, column: 14, scope: !400)
!402 = !DILocation(line: 86, column: 12, scope: !400)
!403 = !DILocation(line: 86, column: 7, scope: !397)
!404 = !DILocation(line: 88, column: 19, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !338, line: 86, column: 36)
!406 = !DILocation(line: 88, column: 40, scope: !405)
!407 = !DILocation(line: 88, column: 39, scope: !405)
!408 = !DILocation(line: 88, column: 30, scope: !409)
!409 = !DILexicalBlockFile(scope: !405, file: !338, discriminator: 1)
!410 = !DILocation(line: 87, column: 4, scope: !405)
!411 = !DILocation(line: 89, column: 1, scope: !405)
!412 = !DILocation(line: 90, column: 4, scope: !405)
!413 = !DILocation(line: 92, column: 2, scope: !397)
!414 = !DILocation(line: 94, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !355, file: !338, line: 94, column: 6)
!416 = !DILocation(line: 94, column: 6, scope: !355)
!417 = !DILocation(line: 94, column: 4, scope: !418)
!418 = !DILexicalBlockFile(scope: !419, file: !338, discriminator: 1)
!419 = distinct !DILexicalBlock(scope: !415, file: !338, line: 94, column: 16)
!420 = !DILocation(line: 94, column: 8, scope: !418)
!421 = !DILocation(line: 95, column: 23, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !338, line: 95, column: 7)
!423 = !DILocation(line: 95, column: 14, scope: !422)
!424 = !DILocation(line: 95, column: 12, scope: !422)
!425 = !DILocation(line: 95, column: 7, scope: !419)
!426 = !DILocation(line: 97, column: 19, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !338, line: 95, column: 35)
!428 = !DILocation(line: 97, column: 39, scope: !427)
!429 = !DILocation(line: 97, column: 38, scope: !427)
!430 = !DILocation(line: 97, column: 29, scope: !431)
!431 = !DILexicalBlockFile(scope: !427, file: !338, discriminator: 1)
!432 = !DILocation(line: 96, column: 4, scope: !427)
!433 = !DILocation(line: 98, column: 1, scope: !427)
!434 = !DILocation(line: 99, column: 4, scope: !427)
!435 = !DILocation(line: 102, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !419, file: !338, line: 102, column: 7)
!437 = !DILocation(line: 102, column: 10, scope: !436)
!438 = !DILocation(line: 102, column: 7, scope: !419)
!439 = !DILocation(line: 102, column: 17, scope: !440)
!440 = !DILexicalBlockFile(scope: !441, file: !338, discriminator: 1)
!441 = distinct !DILexicalBlock(scope: !436, file: !338, line: 101, column: 18)
!442 = !DILocation(line: 102, column: 21, scope: !440)
!443 = !DILocation(line: 102, column: 4, scope: !440)
!444 = !DILocation(line: 102, column: 8, scope: !440)
!445 = !DILocation(line: 102, column: 15, scope: !440)
!446 = !DILocation(line: 103, column: 3, scope: !441)
!447 = !DILocation(line: 105, column: 18, scope: !448)
!448 = distinct !DILexicalBlock(scope: !419, file: !338, line: 105, column: 7)
!449 = !DILocation(line: 105, column: 28, scope: !448)
!450 = !DILocation(line: 105, column: 32, scope: !448)
!451 = !DILocation(line: 105, column: 7, scope: !448)
!452 = !DILocation(line: 105, column: 40, scope: !448)
!453 = !DILocation(line: 105, column: 7, scope: !419)
!454 = !DILocation(line: 107, column: 19, scope: !455)
!455 = distinct !DILexicalBlock(scope: !448, file: !338, line: 105, column: 47)
!456 = !DILocation(line: 107, column: 39, scope: !455)
!457 = !DILocation(line: 107, column: 38, scope: !455)
!458 = !DILocation(line: 107, column: 29, scope: !459)
!459 = !DILexicalBlockFile(scope: !455, file: !338, discriminator: 1)
!460 = !DILocation(line: 106, column: 4, scope: !455)
!461 = !DILocation(line: 108, column: 1, scope: !455)
!462 = !DILocation(line: 109, column: 4, scope: !455)
!463 = !DILocation(line: 111, column: 2, scope: !419)
!464 = !DILocation(line: 113, column: 6, scope: !465)
!465 = distinct !DILexicalBlock(scope: !355, file: !338, line: 113, column: 6)
!466 = !DILocation(line: 113, column: 6, scope: !355)
!467 = !DILocation(line: 114, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !338, line: 114, column: 7)
!469 = distinct !DILexicalBlock(scope: !465, file: !338, line: 113, column: 15)
!470 = !DILocation(line: 114, column: 7, scope: !468)
!471 = !DILocation(line: 114, column: 23, scope: !468)
!472 = !DILocation(line: 114, column: 7, scope: !469)
!473 = !DILocation(line: 116, column: 19, scope: !474)
!474 = distinct !DILexicalBlock(scope: !468, file: !338, line: 114, column: 30)
!475 = !DILocation(line: 115, column: 38, scope: !474)
!476 = !DILocation(line: 115, column: 37, scope: !474)
!477 = !DILocation(line: 116, column: 28, scope: !474)
!478 = !DILocation(line: 115, column: 4, scope: !479)
!479 = !DILexicalBlockFile(scope: !474, file: !338, discriminator: 1)
!480 = !DILocation(line: 116, column: 1, scope: !479)
!481 = !DILocation(line: 117, column: 4, scope: !474)
!482 = !DILocation(line: 119, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !469, file: !338, line: 119, column: 7)
!484 = !DILocation(line: 119, column: 18, scope: !483)
!485 = !DILocation(line: 119, column: 7, scope: !469)
!486 = !DILocation(line: 120, column: 29, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !338, line: 119, column: 25)
!488 = !DILocation(line: 120, column: 28, scope: !487)
!489 = !DILocation(line: 121, column: 19, scope: !487)
!490 = !DILocation(line: 120, column: 4, scope: !491)
!491 = !DILexicalBlockFile(scope: !487, file: !338, discriminator: 1)
!492 = !DILocation(line: 121, column: 1, scope: !491)
!493 = !DILocation(line: 122, column: 4, scope: !487)
!494 = !DILocation(line: 124, column: 2, scope: !469)
!495 = !DILocation(line: 126, column: 6, scope: !496)
!496 = distinct !DILexicalBlock(scope: !355, file: !338, line: 126, column: 6)
!497 = !DILocation(line: 126, column: 6, scope: !355)
!498 = !DILocation(line: 127, column: 14, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !338, line: 127, column: 7)
!500 = distinct !DILexicalBlock(scope: !496, file: !338, line: 126, column: 16)
!501 = !DILocation(line: 127, column: 18, scope: !499)
!502 = !DILocation(line: 127, column: 7, scope: !499)
!503 = !DILocation(line: 127, column: 26, scope: !499)
!504 = !DILocation(line: 127, column: 7, scope: !500)
!505 = !DILocation(line: 129, column: 19, scope: !506)
!506 = distinct !DILexicalBlock(scope: !499, file: !338, line: 127, column: 33)
!507 = !DILocation(line: 129, column: 23, scope: !506)
!508 = !DILocation(line: 128, column: 41, scope: !506)
!509 = !DILocation(line: 128, column: 40, scope: !506)
!510 = !DILocation(line: 129, column: 31, scope: !506)
!511 = !DILocation(line: 128, column: 4, scope: !512)
!512 = !DILexicalBlockFile(scope: !506, file: !338, discriminator: 1)
!513 = !DILocation(line: 129, column: 1, scope: !512)
!514 = !DILocation(line: 130, column: 4, scope: !506)
!515 = !DILocation(line: 132, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !500, file: !338, line: 132, column: 7)
!517 = !DILocation(line: 132, column: 18, scope: !516)
!518 = !DILocation(line: 132, column: 7, scope: !516)
!519 = !DILocation(line: 132, column: 26, scope: !516)
!520 = !DILocation(line: 132, column: 7, scope: !500)
!521 = !DILocation(line: 134, column: 19, scope: !522)
!522 = distinct !DILexicalBlock(scope: !516, file: !338, line: 132, column: 33)
!523 = !DILocation(line: 134, column: 23, scope: !522)
!524 = !DILocation(line: 133, column: 41, scope: !522)
!525 = !DILocation(line: 133, column: 40, scope: !522)
!526 = !DILocation(line: 134, column: 31, scope: !522)
!527 = !DILocation(line: 133, column: 4, scope: !528)
!528 = !DILexicalBlockFile(scope: !522, file: !338, discriminator: 1)
!529 = !DILocation(line: 134, column: 1, scope: !528)
!530 = !DILocation(line: 135, column: 4, scope: !522)
!531 = !DILocation(line: 137, column: 2, scope: !500)
!532 = !DILocation(line: 137, column: 13, scope: !533)
!533 = !DILexicalBlockFile(scope: !534, file: !338, discriminator: 1)
!534 = distinct !DILexicalBlock(scope: !496, file: !338, line: 137, column: 13)
!535 = !DILocation(line: 137, column: 25, scope: !536)
!536 = !DILexicalBlockFile(scope: !533, file: !338, discriminator: 2)
!537 = !DILocation(line: 137, column: 22, scope: !533)
!538 = !DILocation(line: 138, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !338, line: 138, column: 7)
!540 = distinct !DILexicalBlock(scope: !534, file: !338, line: 137, column: 36)
!541 = !DILocation(line: 138, column: 7, scope: !542)
!542 = !DILexicalBlockFile(scope: !539, file: !338, discriminator: 1)
!543 = !DILocation(line: 138, column: 24, scope: !539)
!544 = !DILocation(line: 138, column: 7, scope: !540)
!545 = !DILocation(line: 139, column: 29, scope: !546)
!546 = distinct !DILexicalBlock(scope: !539, file: !338, line: 138, column: 31)
!547 = !DILocation(line: 139, column: 28, scope: !546)
!548 = !DILocation(line: 140, column: 19, scope: !546)
!549 = !DILocation(line: 139, column: 4, scope: !550)
!550 = !DILexicalBlockFile(scope: !546, file: !338, discriminator: 1)
!551 = !DILocation(line: 140, column: 1, scope: !550)
!552 = !DILocation(line: 141, column: 4, scope: !546)
!553 = !DILocation(line: 143, column: 2, scope: !540)
!554 = !DILocation(line: 145, column: 6, scope: !355)
!555 = !DILocation(line: 145, column: 2, scope: !355)
!556 = !DILocation(line: 147, column: 6, scope: !557)
!557 = distinct !DILexicalBlock(scope: !355, file: !338, line: 147, column: 6)
!558 = !DILocation(line: 147, column: 6, scope: !355)
!559 = !DILocation(line: 148, column: 3, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !338, line: 147, column: 10)
!561 = !DILocation(line: 149, column: 2, scope: !560)
!562 = !DILocation(line: 150, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !355, file: !338, line: 150, column: 6)
!564 = !DILocation(line: 150, column: 6, scope: !355)
!565 = !DILocation(line: 151, column: 3, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !338, line: 150, column: 10)
!567 = !DILocation(line: 152, column: 2, scope: !566)
!568 = !DILocation(line: 153, column: 9, scope: !355)
!569 = !DILocation(line: 153, column: 2, scope: !355)
!570 = distinct !DISubprogram(name: "sys_uid", scope: !338, file: !338, line: 162, type: !571, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!571 = !DISubroutineType(types: !572)
!572 = !{!291, !358, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!574 = !DILocalVariable(name: "username", arg: 1, scope: !570, file: !338, line: 162, type: !358)
!575 = !DILocation(line: 162, column: 21, scope: !570)
!576 = !DILocalVariable(name: "uid", arg: 2, scope: !570, file: !338, line: 162, type: !573)
!577 = !DILocation(line: 162, column: 38, scope: !570)
!578 = !DILocalVariable(name: "pw", scope: !570, file: !338, line: 164, type: !368)
!579 = !DILocation(line: 164, column: 17, scope: !570)
!580 = !DILocalVariable(name: "rv", scope: !570, file: !338, line: 165, type: !291)
!581 = !DILocation(line: 165, column: 6, scope: !570)
!582 = !DILocation(line: 166, column: 3, scope: !570)
!583 = !DILocation(line: 166, column: 7, scope: !570)
!584 = !DILocation(line: 167, column: 22, scope: !585)
!585 = distinct !DILexicalBlock(scope: !570, file: !338, line: 167, column: 6)
!586 = !DILocation(line: 167, column: 13, scope: !585)
!587 = !DILocation(line: 167, column: 11, scope: !585)
!588 = !DILocation(line: 167, column: 6, scope: !570)
!589 = !DILocation(line: 168, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !338, line: 168, column: 6)
!591 = distinct !DILexicalBlock(scope: !585, file: !338, line: 167, column: 34)
!592 = !DILocation(line: 168, column: 7, scope: !590)
!593 = !DILocation(line: 168, column: 12, scope: !590)
!594 = !DILocation(line: 168, column: 17, scope: !590)
!595 = !DILocation(line: 168, column: 22, scope: !596)
!596 = !DILexicalBlockFile(scope: !590, file: !338, discriminator: 1)
!597 = !DILocation(line: 168, column: 21, scope: !596)
!598 = !DILocation(line: 168, column: 26, scope: !596)
!599 = !DILocation(line: 168, column: 6, scope: !596)
!600 = !DILocation(line: 170, column: 19, scope: !601)
!601 = distinct !DILexicalBlock(scope: !590, file: !338, line: 168, column: 37)
!602 = !DILocation(line: 170, column: 39, scope: !601)
!603 = !DILocation(line: 170, column: 38, scope: !601)
!604 = !DILocation(line: 170, column: 29, scope: !605)
!605 = !DILexicalBlockFile(scope: !601, file: !338, discriminator: 1)
!606 = !DILocation(line: 170, column: 47, scope: !607)
!607 = !DILexicalBlockFile(scope: !601, file: !338, discriminator: 2)
!608 = !DILocation(line: 170, column: 46, scope: !601)
!609 = !DILocation(line: 169, column: 4, scope: !601)
!610 = !DILocation(line: 171, column: 3, scope: !601)
!611 = !DILocation(line: 172, column: 6, scope: !591)
!612 = !DILocation(line: 173, column: 2, scope: !591)
!613 = !DILocation(line: 174, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !338, line: 174, column: 7)
!615 = distinct !DILexicalBlock(scope: !585, file: !338, line: 173, column: 9)
!616 = !DILocation(line: 174, column: 7, scope: !615)
!617 = !DILocation(line: 175, column: 11, scope: !614)
!618 = !DILocation(line: 175, column: 15, scope: !614)
!619 = !DILocation(line: 175, column: 5, scope: !614)
!620 = !DILocation(line: 175, column: 9, scope: !614)
!621 = !DILocation(line: 175, column: 4, scope: !614)
!622 = !DILocation(line: 176, column: 6, scope: !615)
!623 = !DILocation(line: 178, column: 2, scope: !570)
!624 = !DILocation(line: 179, column: 9, scope: !570)
!625 = !DILocation(line: 179, column: 2, scope: !570)
!626 = distinct !DISubprogram(name: "sys_isuser", scope: !338, file: !338, line: 186, type: !627, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!627 = !DISubroutineType(types: !628)
!628 = !{!291, !358}
!629 = !DILocalVariable(name: "username", arg: 1, scope: !626, file: !338, line: 186, type: !358)
!630 = !DILocation(line: 186, column: 24, scope: !626)
!631 = !DILocation(line: 188, column: 17, scope: !626)
!632 = !DILocation(line: 188, column: 9, scope: !626)
!633 = !DILocation(line: 188, column: 32, scope: !626)
!634 = !DILocation(line: 188, column: 2, scope: !626)
!635 = distinct !DISubprogram(name: "sys_gid", scope: !338, file: !338, line: 197, type: !636, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!636 = !DISubroutineType(types: !637)
!637 = !{!291, !358, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!639 = !DILocalVariable(name: "groupname", arg: 1, scope: !635, file: !338, line: 197, type: !358)
!640 = !DILocation(line: 197, column: 21, scope: !635)
!641 = !DILocalVariable(name: "gid", arg: 2, scope: !635, file: !338, line: 197, type: !638)
!642 = !DILocation(line: 197, column: 39, scope: !635)
!643 = !DILocalVariable(name: "gr", scope: !635, file: !338, line: 199, type: !381)
!644 = !DILocation(line: 199, column: 16, scope: !635)
!645 = !DILocalVariable(name: "rv", scope: !635, file: !338, line: 200, type: !291)
!646 = !DILocation(line: 200, column: 6, scope: !635)
!647 = !DILocation(line: 202, column: 3, scope: !635)
!648 = !DILocation(line: 202, column: 7, scope: !635)
!649 = !DILocation(line: 203, column: 22, scope: !650)
!650 = distinct !DILexicalBlock(scope: !635, file: !338, line: 203, column: 6)
!651 = !DILocation(line: 203, column: 13, scope: !650)
!652 = !DILocation(line: 203, column: 11, scope: !650)
!653 = !DILocation(line: 203, column: 6, scope: !635)
!654 = !DILocation(line: 204, column: 8, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !338, line: 204, column: 6)
!656 = distinct !DILexicalBlock(scope: !650, file: !338, line: 203, column: 35)
!657 = !DILocation(line: 204, column: 7, scope: !655)
!658 = !DILocation(line: 204, column: 12, scope: !655)
!659 = !DILocation(line: 204, column: 17, scope: !655)
!660 = !DILocation(line: 204, column: 22, scope: !661)
!661 = !DILexicalBlockFile(scope: !655, file: !338, discriminator: 1)
!662 = !DILocation(line: 204, column: 21, scope: !661)
!663 = !DILocation(line: 204, column: 26, scope: !661)
!664 = !DILocation(line: 204, column: 6, scope: !661)
!665 = !DILocation(line: 206, column: 19, scope: !666)
!666 = distinct !DILexicalBlock(scope: !655, file: !338, line: 204, column: 37)
!667 = !DILocation(line: 206, column: 40, scope: !666)
!668 = !DILocation(line: 206, column: 39, scope: !666)
!669 = !DILocation(line: 206, column: 30, scope: !670)
!670 = !DILexicalBlockFile(scope: !666, file: !338, discriminator: 1)
!671 = !DILocation(line: 206, column: 48, scope: !672)
!672 = !DILexicalBlockFile(scope: !666, file: !338, discriminator: 2)
!673 = !DILocation(line: 206, column: 47, scope: !666)
!674 = !DILocation(line: 205, column: 4, scope: !666)
!675 = !DILocation(line: 207, column: 3, scope: !666)
!676 = !DILocation(line: 208, column: 6, scope: !656)
!677 = !DILocation(line: 209, column: 2, scope: !656)
!678 = !DILocation(line: 210, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !338, line: 210, column: 7)
!680 = distinct !DILexicalBlock(scope: !650, file: !338, line: 209, column: 9)
!681 = !DILocation(line: 210, column: 7, scope: !680)
!682 = !DILocation(line: 211, column: 11, scope: !679)
!683 = !DILocation(line: 211, column: 15, scope: !679)
!684 = !DILocation(line: 211, column: 5, scope: !679)
!685 = !DILocation(line: 211, column: 9, scope: !679)
!686 = !DILocation(line: 211, column: 4, scope: !679)
!687 = !DILocation(line: 212, column: 6, scope: !680)
!688 = !DILocation(line: 214, column: 2, scope: !635)
!689 = !DILocation(line: 215, column: 9, scope: !635)
!690 = !DILocation(line: 215, column: 2, scope: !635)
!691 = distinct !DISubprogram(name: "sys_isgroup", scope: !338, file: !338, line: 222, type: !627, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!692 = !DILocalVariable(name: "groupname", arg: 1, scope: !691, file: !338, line: 222, type: !358)
!693 = !DILocation(line: 222, column: 25, scope: !691)
!694 = !DILocation(line: 224, column: 17, scope: !691)
!695 = !DILocation(line: 224, column: 9, scope: !691)
!696 = !DILocation(line: 224, column: 33, scope: !691)
!697 = !DILocation(line: 224, column: 2, scope: !691)
!698 = distinct !DISubprogram(name: "sys_isgeteuid", scope: !338, file: !338, line: 232, type: !627, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!699 = !DILocalVariable(name: "username", arg: 1, scope: !698, file: !338, line: 232, type: !358)
!700 = !DILocation(line: 232, column: 27, scope: !698)
!701 = !DILocalVariable(name: "uid", scope: !698, file: !338, line: 234, type: !342)
!702 = !DILocation(line: 234, column: 8, scope: !698)
!703 = !DILocation(line: 236, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !698, file: !338, line: 236, column: 6)
!705 = !DILocation(line: 236, column: 6, scope: !704)
!706 = !DILocation(line: 236, column: 30, scope: !704)
!707 = !DILocation(line: 236, column: 6, scope: !698)
!708 = !DILocation(line: 237, column: 3, scope: !704)
!709 = !DILocation(line: 238, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !698, file: !338, line: 238, column: 6)
!711 = !DILocation(line: 238, column: 13, scope: !710)
!712 = !DILocation(line: 238, column: 10, scope: !710)
!713 = !DILocation(line: 238, column: 6, scope: !698)
!714 = !DILocation(line: 239, column: 3, scope: !710)
!715 = !DILocation(line: 240, column: 2, scope: !698)
!716 = !DILocation(line: 241, column: 1, scope: !698)
!717 = distinct !DISubprogram(name: "sys_pidf_open", scope: !338, file: !338, line: 248, type: !627, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!718 = !DILocalVariable(name: "fn", arg: 1, scope: !717, file: !338, line: 248, type: !358)
!719 = !DILocation(line: 248, column: 27, scope: !717)
!720 = !DILocalVariable(name: "fd", scope: !717, file: !338, line: 250, type: !291)
!721 = !DILocation(line: 250, column: 6, scope: !717)
!722 = !DILocation(line: 252, column: 17, scope: !723)
!723 = distinct !DILexicalBlock(scope: !717, file: !338, line: 252, column: 6)
!724 = !DILocation(line: 252, column: 12, scope: !723)
!725 = !DILocation(line: 252, column: 10, scope: !723)
!726 = !DILocation(line: 252, column: 43, scope: !723)
!727 = !DILocation(line: 252, column: 6, scope: !717)
!728 = !DILocation(line: 253, column: 47, scope: !729)
!729 = distinct !DILexicalBlock(scope: !723, file: !338, line: 252, column: 50)
!730 = !DILocation(line: 254, column: 28, scope: !729)
!731 = !DILocation(line: 254, column: 27, scope: !729)
!732 = !DILocation(line: 254, column: 18, scope: !733)
!733 = !DILexicalBlockFile(scope: !729, file: !338, discriminator: 1)
!734 = !DILocation(line: 253, column: 3, scope: !729)
!735 = !DILocation(line: 255, column: 3, scope: !729)
!736 = !DILocation(line: 257, column: 12, scope: !737)
!737 = distinct !DILexicalBlock(scope: !717, file: !338, line: 257, column: 6)
!738 = !DILocation(line: 257, column: 6, scope: !737)
!739 = !DILocation(line: 257, column: 32, scope: !737)
!740 = !DILocation(line: 257, column: 6, scope: !717)
!741 = !DILocation(line: 258, column: 47, scope: !742)
!742 = distinct !DILexicalBlock(scope: !737, file: !338, line: 257, column: 39)
!743 = !DILocation(line: 259, column: 28, scope: !742)
!744 = !DILocation(line: 259, column: 27, scope: !742)
!745 = !DILocation(line: 259, column: 18, scope: !746)
!746 = !DILexicalBlockFile(scope: !742, file: !338, discriminator: 1)
!747 = !DILocation(line: 258, column: 3, scope: !742)
!748 = !DILocation(line: 260, column: 9, scope: !742)
!749 = !DILocation(line: 260, column: 3, scope: !742)
!750 = !DILocation(line: 261, column: 3, scope: !742)
!751 = !DILocation(line: 264, column: 9, scope: !717)
!752 = !DILocation(line: 264, column: 2, scope: !717)
!753 = !DILocation(line: 265, column: 1, scope: !717)
!754 = distinct !DISubprogram(name: "sys_pidf_write", scope: !338, file: !338, line: 272, type: !755, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!755 = !DISubroutineType(types: !756)
!756 = !{!291, !291}
!757 = !DILocalVariable(name: "fd", arg: 1, scope: !754, file: !338, line: 272, type: !291)
!758 = !DILocation(line: 272, column: 20, scope: !754)
!759 = !DILocalVariable(name: "pidbuf", scope: !754, file: !338, line: 274, type: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 128, align: 8, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 16)
!763 = !DILocation(line: 274, column: 7, scope: !754)
!764 = !DILocalVariable(name: "rv", scope: !754, file: !338, line: 275, type: !291)
!765 = !DILocation(line: 275, column: 6, scope: !754)
!766 = !DILocalVariable(name: "n", scope: !754, file: !338, line: 276, type: !292)
!767 = !DILocation(line: 276, column: 10, scope: !754)
!768 = !DILocation(line: 278, column: 16, scope: !754)
!769 = !DILocation(line: 278, column: 48, scope: !754)
!770 = !DILocation(line: 278, column: 7, scope: !771)
!771 = !DILexicalBlockFile(scope: !754, file: !338, discriminator: 1)
!772 = !DILocation(line: 278, column: 5, scope: !754)
!773 = !DILocation(line: 279, column: 6, scope: !774)
!774 = distinct !DILexicalBlock(scope: !754, file: !338, line: 279, column: 6)
!775 = !DILocation(line: 279, column: 9, scope: !774)
!776 = !DILocation(line: 279, column: 15, scope: !774)
!777 = !DILocation(line: 279, column: 18, scope: !778)
!778 = !DILexicalBlockFile(scope: !774, file: !338, discriminator: 1)
!779 = !DILocation(line: 279, column: 21, scope: !778)
!780 = !DILocation(line: 279, column: 6, scope: !778)
!781 = !DILocation(line: 280, column: 3, scope: !774)
!782 = !DILocation(line: 282, column: 12, scope: !754)
!783 = !DILocation(line: 282, column: 16, scope: !754)
!784 = !DILocation(line: 282, column: 31, scope: !754)
!785 = !DILocation(line: 282, column: 24, scope: !754)
!786 = !DILocation(line: 282, column: 6, scope: !771)
!787 = !DILocation(line: 282, column: 4, scope: !754)
!788 = !DILocation(line: 283, column: 6, scope: !789)
!789 = distinct !DILexicalBlock(scope: !754, file: !338, line: 283, column: 6)
!790 = !DILocation(line: 283, column: 26, scope: !789)
!791 = !DILocation(line: 283, column: 19, scope: !789)
!792 = !DILocation(line: 283, column: 8, scope: !789)
!793 = !DILocation(line: 283, column: 6, scope: !754)
!794 = !DILocation(line: 284, column: 3, scope: !789)
!795 = !DILocation(line: 286, column: 13, scope: !754)
!796 = !DILocation(line: 286, column: 7, scope: !754)
!797 = !DILocation(line: 286, column: 5, scope: !754)
!798 = !DILocation(line: 287, column: 6, scope: !799)
!799 = distinct !DILexicalBlock(scope: !754, file: !338, line: 287, column: 6)
!800 = !DILocation(line: 287, column: 9, scope: !799)
!801 = !DILocation(line: 287, column: 6, scope: !754)
!802 = !DILocation(line: 288, column: 3, scope: !799)
!803 = !DILocation(line: 290, column: 13, scope: !754)
!804 = !DILocation(line: 290, column: 31, scope: !754)
!805 = !DILocation(line: 290, column: 25, scope: !754)
!806 = !DILocation(line: 290, column: 44, scope: !754)
!807 = !DILocation(line: 290, column: 7, scope: !771)
!808 = !DILocation(line: 290, column: 5, scope: !754)
!809 = !DILocation(line: 291, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !754, file: !338, line: 291, column: 6)
!811 = !DILocation(line: 291, column: 9, scope: !810)
!812 = !DILocation(line: 291, column: 6, scope: !754)
!813 = !DILocation(line: 292, column: 3, scope: !810)
!814 = !DILocation(line: 294, column: 2, scope: !754)
!815 = !DILocation(line: 295, column: 1, scope: !754)
!816 = distinct !DISubprogram(name: "sys_pidf_close", scope: !338, file: !338, line: 301, type: !817, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !291, !358}
!819 = !DILocalVariable(name: "fd", arg: 1, scope: !816, file: !338, line: 301, type: !291)
!820 = !DILocation(line: 301, column: 20, scope: !816)
!821 = !DILocalVariable(name: "fn", arg: 2, scope: !816, file: !338, line: 301, type: !358)
!822 = !DILocation(line: 301, column: 36, scope: !816)
!823 = !DILocation(line: 303, column: 9, scope: !816)
!824 = !DILocation(line: 303, column: 2, scope: !816)
!825 = !DILocation(line: 304, column: 8, scope: !816)
!826 = !DILocation(line: 304, column: 2, scope: !816)
!827 = !DILocation(line: 305, column: 1, scope: !816)
!828 = !DILocalVariable(name: "uid", arg: 1, scope: !337, file: !338, line: 312, type: !342)
!829 = !DILocation(line: 312, column: 20, scope: !337)
!830 = !DILocation(line: 316, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !337, file: !338, line: 316, column: 6)
!832 = !DILocation(line: 316, column: 6, scope: !337)
!833 = !DILocation(line: 318, column: 18, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !338, line: 318, column: 7)
!835 = distinct !DILexicalBlock(scope: !831, file: !338, line: 316, column: 16)
!836 = !DILocation(line: 318, column: 16, scope: !834)
!837 = !DILocation(line: 318, column: 48, scope: !834)
!838 = !DILocation(line: 318, column: 7, scope: !835)
!839 = !DILocation(line: 319, column: 12, scope: !840)
!840 = distinct !DILexicalBlock(scope: !834, file: !338, line: 318, column: 55)
!841 = !DILocation(line: 320, column: 3, scope: !840)
!842 = !DILocation(line: 321, column: 2, scope: !835)
!843 = !DILocalVariable(name: "buf", scope: !337, file: !338, line: 323, type: !341)
!844 = !DILocation(line: 323, column: 8, scope: !337)
!845 = !DILocalVariable(name: "newbuf", scope: !337, file: !338, line: 323, type: !341)
!846 = !DILocation(line: 323, column: 14, scope: !337)
!847 = !DILocalVariable(name: "pwd", scope: !337, file: !338, line: 324, type: !369)
!848 = !DILocation(line: 324, column: 16, scope: !337)
!849 = !DILocalVariable(name: "result", scope: !337, file: !338, line: 324, type: !368)
!850 = !DILocation(line: 324, column: 22, scope: !337)
!851 = !DILocalVariable(name: "rv", scope: !337, file: !338, line: 325, type: !291)
!852 = !DILocation(line: 325, column: 6, scope: !337)
!853 = !DILocalVariable(name: "name", scope: !337, file: !338, line: 326, type: !341)
!854 = !DILocation(line: 326, column: 8, scope: !337)
!855 = !DILocation(line: 328, column: 21, scope: !856)
!856 = distinct !DILexicalBlock(scope: !337, file: !338, line: 328, column: 6)
!857 = !DILocation(line: 328, column: 14, scope: !856)
!858 = !DILocation(line: 328, column: 12, scope: !856)
!859 = !DILocation(line: 328, column: 6, scope: !337)
!860 = !DILocation(line: 329, column: 3, scope: !856)
!861 = !DILocation(line: 331, column: 2, scope: !337)
!862 = distinct !{!862, !861}
!863 = !DILocation(line: 332, column: 19, scope: !864)
!864 = distinct !DILexicalBlock(scope: !337, file: !338, line: 331, column: 5)
!865 = !DILocation(line: 332, column: 30, scope: !864)
!866 = !DILocation(line: 332, column: 35, scope: !864)
!867 = !DILocation(line: 332, column: 8, scope: !864)
!868 = !DILocation(line: 332, column: 6, scope: !864)
!869 = !DILocation(line: 333, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !864, file: !338, line: 333, column: 7)
!871 = !DILocation(line: 333, column: 10, scope: !870)
!872 = !DILocation(line: 333, column: 7, scope: !864)
!873 = !DILocation(line: 334, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !338, line: 334, column: 8)
!875 = distinct !DILexicalBlock(scope: !870, file: !338, line: 333, column: 16)
!876 = !DILocation(line: 334, column: 8, scope: !875)
!877 = !DILocation(line: 335, column: 23, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !338, line: 334, column: 16)
!879 = !DILocation(line: 335, column: 12, scope: !878)
!880 = !DILocation(line: 335, column: 10, scope: !878)
!881 = !DILocation(line: 336, column: 10, scope: !878)
!882 = !DILocation(line: 336, column: 5, scope: !878)
!883 = !DILocation(line: 337, column: 12, scope: !878)
!884 = !DILocation(line: 337, column: 5, scope: !878)
!885 = !DILocation(line: 339, column: 9, scope: !875)
!886 = !DILocation(line: 339, column: 4, scope: !875)
!887 = !DILocation(line: 342, column: 44, scope: !888)
!888 = distinct !DILexicalBlock(scope: !875, file: !338, line: 342, column: 8)
!889 = !DILocation(line: 342, column: 32, scope: !888)
!890 = !DILocation(line: 342, column: 8, scope: !888)
!891 = !DILocation(line: 342, column: 49, scope: !888)
!892 = !DILocation(line: 342, column: 8, scope: !875)
!893 = !DILocation(line: 343, column: 5, scope: !894)
!894 = distinct !DILexicalBlock(scope: !888, file: !338, line: 342, column: 54)
!895 = !DILocation(line: 345, column: 11, scope: !875)
!896 = !DILocation(line: 345, column: 4, scope: !875)
!897 = !DILocation(line: 347, column: 11, scope: !864)
!898 = !DILocation(line: 348, column: 26, scope: !899)
!899 = distinct !DILexicalBlock(scope: !864, file: !338, line: 348, column: 7)
!900 = !DILocation(line: 348, column: 31, scope: !899)
!901 = !DILocation(line: 348, column: 18, scope: !899)
!902 = !DILocation(line: 348, column: 16, scope: !899)
!903 = !DILocation(line: 348, column: 7, scope: !864)
!904 = !DILocation(line: 349, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !899, file: !338, line: 348, column: 42)
!906 = !DILocation(line: 349, column: 4, scope: !905)
!907 = !DILocation(line: 350, column: 4, scope: !905)
!908 = !DILocation(line: 352, column: 9, scope: !864)
!909 = !DILocation(line: 352, column: 7, scope: !864)
!910 = !DILocation(line: 353, column: 2, scope: !864)
!911 = !DILocation(line: 353, column: 11, scope: !912)
!912 = !DILexicalBlockFile(scope: !337, file: !338, discriminator: 1)
!913 = !DILocation(line: 353, column: 14, scope: !912)
!914 = !DILocation(line: 353, column: 2, scope: !912)
!915 = !DILocation(line: 355, column: 7, scope: !337)
!916 = !DILocation(line: 355, column: 2, scope: !337)
!917 = !DILocation(line: 356, column: 61, scope: !337)
!918 = !DILocation(line: 356, column: 52, scope: !337)
!919 = !DILocation(line: 356, column: 66, scope: !337)
!920 = !DILocation(line: 356, column: 2, scope: !912)
!921 = !DILocation(line: 357, column: 2, scope: !337)
!922 = !DILocation(line: 358, column: 1, scope: !337)
!923 = !DILocalVariable(name: "gid", arg: 1, scope: !346, file: !338, line: 365, type: !349)
!924 = !DILocation(line: 365, column: 21, scope: !346)
!925 = !DILocation(line: 369, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !346, file: !338, line: 369, column: 6)
!927 = !DILocation(line: 369, column: 6, scope: !346)
!928 = !DILocation(line: 371, column: 18, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !338, line: 371, column: 7)
!930 = distinct !DILexicalBlock(scope: !926, file: !338, line: 369, column: 16)
!931 = !DILocation(line: 371, column: 16, scope: !929)
!932 = !DILocation(line: 371, column: 48, scope: !929)
!933 = !DILocation(line: 371, column: 7, scope: !930)
!934 = !DILocation(line: 372, column: 12, scope: !935)
!935 = distinct !DILexicalBlock(scope: !929, file: !338, line: 371, column: 55)
!936 = !DILocation(line: 373, column: 3, scope: !935)
!937 = !DILocation(line: 374, column: 2, scope: !930)
!938 = !DILocalVariable(name: "buf", scope: !346, file: !338, line: 376, type: !341)
!939 = !DILocation(line: 376, column: 8, scope: !346)
!940 = !DILocalVariable(name: "newbuf", scope: !346, file: !338, line: 376, type: !341)
!941 = !DILocation(line: 376, column: 14, scope: !346)
!942 = !DILocalVariable(name: "grp", scope: !346, file: !338, line: 377, type: !382)
!943 = !DILocation(line: 377, column: 15, scope: !346)
!944 = !DILocalVariable(name: "result", scope: !346, file: !338, line: 377, type: !381)
!945 = !DILocation(line: 377, column: 21, scope: !346)
!946 = !DILocalVariable(name: "rv", scope: !346, file: !338, line: 378, type: !291)
!947 = !DILocation(line: 378, column: 6, scope: !346)
!948 = !DILocalVariable(name: "name", scope: !346, file: !338, line: 379, type: !341)
!949 = !DILocation(line: 379, column: 8, scope: !346)
!950 = !DILocation(line: 381, column: 21, scope: !951)
!951 = distinct !DILexicalBlock(scope: !346, file: !338, line: 381, column: 6)
!952 = !DILocation(line: 381, column: 14, scope: !951)
!953 = !DILocation(line: 381, column: 12, scope: !951)
!954 = !DILocation(line: 381, column: 6, scope: !346)
!955 = !DILocation(line: 382, column: 3, scope: !951)
!956 = !DILocation(line: 384, column: 2, scope: !346)
!957 = distinct !{!957, !956}
!958 = !DILocation(line: 385, column: 19, scope: !959)
!959 = distinct !DILexicalBlock(scope: !346, file: !338, line: 384, column: 5)
!960 = !DILocation(line: 385, column: 30, scope: !959)
!961 = !DILocation(line: 385, column: 35, scope: !959)
!962 = !DILocation(line: 385, column: 8, scope: !959)
!963 = !DILocation(line: 385, column: 6, scope: !959)
!964 = !DILocation(line: 386, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !959, file: !338, line: 386, column: 7)
!966 = !DILocation(line: 386, column: 10, scope: !965)
!967 = !DILocation(line: 386, column: 7, scope: !959)
!968 = !DILocation(line: 387, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !338, line: 387, column: 8)
!970 = distinct !DILexicalBlock(scope: !965, file: !338, line: 386, column: 16)
!971 = !DILocation(line: 387, column: 8, scope: !970)
!972 = !DILocation(line: 388, column: 23, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !338, line: 387, column: 16)
!974 = !DILocation(line: 388, column: 12, scope: !973)
!975 = !DILocation(line: 388, column: 10, scope: !973)
!976 = !DILocation(line: 389, column: 10, scope: !973)
!977 = !DILocation(line: 389, column: 5, scope: !973)
!978 = !DILocation(line: 390, column: 12, scope: !973)
!979 = !DILocation(line: 390, column: 5, scope: !973)
!980 = !DILocation(line: 392, column: 9, scope: !970)
!981 = !DILocation(line: 392, column: 4, scope: !970)
!982 = !DILocation(line: 395, column: 44, scope: !983)
!983 = distinct !DILexicalBlock(scope: !970, file: !338, line: 395, column: 8)
!984 = !DILocation(line: 395, column: 32, scope: !983)
!985 = !DILocation(line: 395, column: 8, scope: !983)
!986 = !DILocation(line: 395, column: 49, scope: !983)
!987 = !DILocation(line: 395, column: 8, scope: !970)
!988 = !DILocation(line: 396, column: 5, scope: !989)
!989 = distinct !DILexicalBlock(scope: !983, file: !338, line: 395, column: 54)
!990 = !DILocation(line: 398, column: 11, scope: !970)
!991 = !DILocation(line: 398, column: 4, scope: !970)
!992 = !DILocation(line: 400, column: 11, scope: !959)
!993 = !DILocation(line: 401, column: 26, scope: !994)
!994 = distinct !DILexicalBlock(scope: !959, file: !338, line: 401, column: 7)
!995 = !DILocation(line: 401, column: 31, scope: !994)
!996 = !DILocation(line: 401, column: 18, scope: !994)
!997 = !DILocation(line: 401, column: 16, scope: !994)
!998 = !DILocation(line: 401, column: 7, scope: !959)
!999 = !DILocation(line: 402, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !994, file: !338, line: 401, column: 42)
!1001 = !DILocation(line: 402, column: 4, scope: !1000)
!1002 = !DILocation(line: 403, column: 4, scope: !1000)
!1003 = !DILocation(line: 405, column: 9, scope: !959)
!1004 = !DILocation(line: 405, column: 7, scope: !959)
!1005 = !DILocation(line: 406, column: 2, scope: !959)
!1006 = !DILocation(line: 406, column: 11, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !346, file: !338, discriminator: 1)
!1008 = !DILocation(line: 406, column: 14, scope: !1007)
!1009 = !DILocation(line: 406, column: 2, scope: !1007)
!1010 = !DILocation(line: 408, column: 7, scope: !346)
!1011 = !DILocation(line: 408, column: 2, scope: !346)
!1012 = !DILocation(line: 409, column: 61, scope: !346)
!1013 = !DILocation(line: 409, column: 52, scope: !346)
!1014 = !DILocation(line: 409, column: 66, scope: !346)
!1015 = !DILocation(line: 409, column: 2, scope: !1007)
!1016 = !DILocation(line: 410, column: 2, scope: !346)
!1017 = !DILocation(line: 411, column: 1, scope: !346)
!1018 = distinct !DISubprogram(name: "sys_get_af", scope: !338, file: !338, line: 417, type: !627, isLocal: false, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1019 = !DILocalVariable(name: "addr", arg: 1, scope: !1018, file: !338, line: 417, type: !358)
!1020 = !DILocation(line: 417, column: 24, scope: !1018)
!1021 = !DILocation(line: 419, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !338, line: 419, column: 6)
!1023 = !DILocation(line: 419, column: 6, scope: !1022)
!1024 = !DILocation(line: 419, column: 6, scope: !1018)
!1025 = !DILocation(line: 420, column: 3, scope: !1022)
!1026 = !DILocation(line: 421, column: 20, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !338, line: 421, column: 11)
!1028 = !DILocation(line: 421, column: 12, scope: !1027)
!1029 = !DILocation(line: 421, column: 11, scope: !1022)
!1030 = !DILocation(line: 424, column: 3, scope: !1027)
!1031 = !DILocation(line: 426, column: 3, scope: !1027)
!1032 = !DILocation(line: 427, column: 1, scope: !1018)
!1033 = distinct !DISubprogram(name: "sys_sockaddr_parse", scope: !338, file: !338, line: 435, type: !1034, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!291, !1036, !1045, !341, !341, !291, !291}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64, align: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !263, line: 166, size: 1024, align: 64, elements: !1038)
!1038 = !{!1039, !1040, !1044}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1037, file: !263, line: 168, baseType: !317, size: 16, align: 16)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1037, file: !263, line: 169, baseType: !1041, size: 944, align: 8, offset: 16)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 944, align: 8, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 118)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1037, file: !263, line: 170, baseType: !300, size: 64, align: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64, align: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !263, line: 33, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !295, line: 189, baseType: !334)
!1048 = !DILocalVariable(name: "addr", arg: 1, scope: !1033, file: !338, line: 435, type: !1036)
!1049 = !DILocation(line: 435, column: 45, scope: !1033)
!1050 = !DILocalVariable(name: "addrlen", arg: 2, scope: !1033, file: !338, line: 435, type: !1045)
!1051 = !DILocation(line: 435, column: 62, scope: !1033)
!1052 = !DILocalVariable(name: "naddr", arg: 3, scope: !1033, file: !338, line: 436, type: !341)
!1053 = !DILocation(line: 436, column: 26, scope: !1033)
!1054 = !DILocalVariable(name: "nport", arg: 4, scope: !1033, file: !338, line: 436, type: !341)
!1055 = !DILocation(line: 436, column: 39, scope: !1033)
!1056 = !DILocalVariable(name: "af", arg: 5, scope: !1033, file: !338, line: 436, type: !291)
!1057 = !DILocation(line: 436, column: 50, scope: !1033)
!1058 = !DILocalVariable(name: "flags", arg: 6, scope: !1033, file: !338, line: 436, type: !291)
!1059 = !DILocation(line: 436, column: 58, scope: !1033)
!1060 = !DILocalVariable(name: "hints", scope: !1033, file: !338, line: 438, type: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !1062, line: 567, size: 384, align: 64, elements: !1063)
!1062 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !1061, file: !1062, line: 569, baseType: !291, size: 32, align: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !1061, file: !1062, line: 570, baseType: !291, size: 32, align: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !1061, file: !1062, line: 571, baseType: !291, size: 32, align: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !1061, file: !1062, line: 572, baseType: !291, size: 32, align: 32, offset: 96)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !1061, file: !1062, line: 573, baseType: !1046, size: 32, align: 32, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !1061, file: !1062, line: 574, baseType: !313, size: 64, align: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !1061, file: !1062, line: 575, baseType: !341, size: 64, align: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !1061, file: !1062, line: 576, baseType: !1072, size: 64, align: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64, align: 64)
!1073 = !DILocation(line: 438, column: 24, scope: !1033)
!1074 = !DILocalVariable(name: "ai", scope: !1033, file: !338, line: 439, type: !1072)
!1075 = !DILocation(line: 439, column: 25, scope: !1033)
!1076 = !DILocalVariable(name: "rv", scope: !1033, file: !338, line: 440, type: !291)
!1077 = !DILocation(line: 440, column: 6, scope: !1033)
!1078 = !DILocation(line: 442, column: 2, scope: !1033)
!1079 = !DILocation(line: 443, column: 20, scope: !1033)
!1080 = !DILocation(line: 443, column: 8, scope: !1033)
!1081 = !DILocation(line: 443, column: 18, scope: !1033)
!1082 = !DILocation(line: 444, column: 8, scope: !1033)
!1083 = !DILocation(line: 444, column: 20, scope: !1033)
!1084 = !DILocation(line: 445, column: 8, scope: !1033)
!1085 = !DILocation(line: 445, column: 20, scope: !1033)
!1086 = !DILocation(line: 446, column: 41, scope: !1033)
!1087 = !DILocation(line: 446, column: 39, scope: !1033)
!1088 = !DILocation(line: 446, column: 8, scope: !1033)
!1089 = !DILocation(line: 446, column: 17, scope: !1033)
!1090 = !DILocation(line: 447, column: 26, scope: !1033)
!1091 = !DILocation(line: 447, column: 33, scope: !1033)
!1092 = !DILocation(line: 447, column: 7, scope: !1033)
!1093 = !DILocation(line: 447, column: 5, scope: !1033)
!1094 = !DILocation(line: 448, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1033, file: !338, line: 448, column: 6)
!1096 = !DILocation(line: 448, column: 9, scope: !1095)
!1097 = !DILocation(line: 448, column: 6, scope: !1033)
!1098 = !DILocation(line: 450, column: 18, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !338, line: 448, column: 15)
!1100 = !DILocation(line: 450, column: 25, scope: !1099)
!1101 = !DILocation(line: 450, column: 45, scope: !1099)
!1102 = !DILocation(line: 450, column: 32, scope: !1099)
!1103 = !DILocation(line: 449, column: 3, scope: !1099)
!1104 = !DILocation(line: 451, column: 3, scope: !1099)
!1105 = !DILocation(line: 453, column: 9, scope: !1033)
!1106 = !DILocation(line: 453, column: 2, scope: !1033)
!1107 = !DILocation(line: 453, column: 15, scope: !1033)
!1108 = !DILocation(line: 453, column: 19, scope: !1033)
!1109 = !DILocation(line: 453, column: 28, scope: !1033)
!1110 = !DILocation(line: 453, column: 32, scope: !1033)
!1111 = !DILocation(line: 454, column: 13, scope: !1033)
!1112 = !DILocation(line: 454, column: 17, scope: !1033)
!1113 = !DILocation(line: 454, column: 3, scope: !1033)
!1114 = !DILocation(line: 454, column: 11, scope: !1033)
!1115 = !DILocation(line: 455, column: 7, scope: !1033)
!1116 = !DILocation(line: 455, column: 11, scope: !1033)
!1117 = !DILocation(line: 455, column: 5, scope: !1033)
!1118 = !DILocation(line: 456, column: 15, scope: !1033)
!1119 = !DILocation(line: 456, column: 2, scope: !1033)
!1120 = !DILocation(line: 457, column: 9, scope: !1033)
!1121 = !DILocation(line: 457, column: 2, scope: !1033)
!1122 = !DILocation(line: 458, column: 1, scope: !1033)
!1123 = distinct !DISubprogram(name: "sys_sockaddr_str", scope: !338, file: !338, line: 469, type: !1124, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!291, !313, !1046, !389, !389}
!1126 = !DILocalVariable(name: "addr", arg: 1, scope: !1123, file: !338, line: 469, type: !313)
!1127 = !DILocation(line: 469, column: 35, scope: !1123)
!1128 = !DILocalVariable(name: "addrlen", arg: 2, scope: !1123, file: !338, line: 469, type: !1046)
!1129 = !DILocation(line: 469, column: 51, scope: !1123)
!1130 = !DILocalVariable(name: "host", arg: 3, scope: !1123, file: !338, line: 470, type: !389)
!1131 = !DILocation(line: 470, column: 25, scope: !1123)
!1132 = !DILocalVariable(name: "serv", arg: 4, scope: !1123, file: !338, line: 470, type: !389)
!1133 = !DILocation(line: 470, column: 38, scope: !1123)
!1134 = !DILocalVariable(name: "tmphost", scope: !1123, file: !338, line: 472, type: !1135)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 368, align: 8, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 46)
!1138 = !DILocation(line: 472, column: 7, scope: !1123)
!1139 = !DILocalVariable(name: "rv", scope: !1123, file: !338, line: 473, type: !291)
!1140 = !DILocation(line: 473, column: 6, scope: !1123)
!1141 = !DILocalVariable(name: "hostsz", scope: !1123, file: !338, line: 474, type: !298)
!1142 = !DILocation(line: 474, column: 9, scope: !1123)
!1143 = !DILocation(line: 476, column: 10, scope: !1123)
!1144 = !DILocation(line: 476, column: 3, scope: !1123)
!1145 = !DILocation(line: 476, column: 8, scope: !1123)
!1146 = !DILocation(line: 477, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1123, file: !338, line: 477, column: 6)
!1148 = !DILocation(line: 477, column: 7, scope: !1147)
!1149 = !DILocation(line: 477, column: 6, scope: !1123)
!1150 = !DILocation(line: 478, column: 3, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !338, line: 477, column: 14)
!1152 = !DILocation(line: 479, column: 3, scope: !1151)
!1153 = !DILocation(line: 481, column: 19, scope: !1123)
!1154 = !DILocation(line: 481, column: 25, scope: !1123)
!1155 = !DILocation(line: 482, column: 19, scope: !1123)
!1156 = !DILocation(line: 483, column: 20, scope: !1123)
!1157 = !DILocation(line: 483, column: 19, scope: !1123)
!1158 = !DILocation(line: 481, column: 7, scope: !1123)
!1159 = !DILocation(line: 481, column: 5, scope: !1123)
!1160 = !DILocation(line: 485, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1123, file: !338, line: 485, column: 6)
!1162 = !DILocation(line: 485, column: 9, scope: !1161)
!1163 = !DILocation(line: 485, column: 6, scope: !1123)
!1164 = !DILocation(line: 487, column: 31, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !338, line: 485, column: 15)
!1166 = !DILocation(line: 487, column: 18, scope: !1165)
!1167 = !DILocation(line: 486, column: 3, scope: !1165)
!1168 = !DILocation(line: 488, column: 9, scope: !1165)
!1169 = !DILocation(line: 488, column: 8, scope: !1165)
!1170 = !DILocation(line: 488, column: 3, scope: !1165)
!1171 = !DILocation(line: 489, column: 3, scope: !1165)
!1172 = !DILocation(line: 491, column: 18, scope: !1123)
!1173 = !DILocation(line: 491, column: 11, scope: !1123)
!1174 = !DILocation(line: 491, column: 27, scope: !1123)
!1175 = !DILocation(line: 491, column: 9, scope: !1123)
!1176 = !DILocation(line: 492, column: 17, scope: !1123)
!1177 = !DILocation(line: 492, column: 10, scope: !1123)
!1178 = !DILocation(line: 492, column: 3, scope: !1123)
!1179 = !DILocation(line: 492, column: 8, scope: !1123)
!1180 = !DILocation(line: 493, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1123, file: !338, line: 493, column: 6)
!1182 = !DILocation(line: 493, column: 7, scope: !1181)
!1183 = !DILocation(line: 493, column: 6, scope: !1123)
!1184 = !DILocation(line: 494, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !338, line: 493, column: 14)
!1186 = !DILocation(line: 495, column: 9, scope: !1185)
!1187 = !DILocation(line: 495, column: 8, scope: !1185)
!1188 = !DILocation(line: 495, column: 3, scope: !1185)
!1189 = !DILocation(line: 496, column: 3, scope: !1185)
!1190 = !DILocation(line: 498, column: 10, scope: !1123)
!1191 = !DILocation(line: 498, column: 9, scope: !1123)
!1192 = !DILocation(line: 498, column: 2, scope: !1123)
!1193 = !DILocation(line: 498, column: 25, scope: !1123)
!1194 = !DILocation(line: 499, column: 2, scope: !1123)
!1195 = !DILocation(line: 500, column: 1, scope: !1123)
!1196 = distinct !DISubprogram(name: "sys_ip46str_sanitize", scope: !338, file: !338, line: 514, type: !1197, isLocal: false, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!341, !358}
!1199 = !DILocalVariable(name: "s", arg: 1, scope: !1196, file: !338, line: 514, type: !358)
!1200 = !DILocation(line: 514, column: 34, scope: !1196)
!1201 = !DILocalVariable(name: "copy", scope: !1196, file: !338, line: 516, type: !341)
!1202 = !DILocation(line: 516, column: 8, scope: !1196)
!1203 = !DILocalVariable(name: "p", scope: !1196, file: !338, line: 516, type: !341)
!1204 = !DILocation(line: 516, column: 15, scope: !1196)
!1205 = !DILocation(line: 518, column: 16, scope: !1196)
!1206 = !DILocation(line: 518, column: 9, scope: !1196)
!1207 = !DILocation(line: 518, column: 7, scope: !1196)
!1208 = !DILocation(line: 519, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1196, file: !338, line: 519, column: 6)
!1210 = !DILocation(line: 519, column: 6, scope: !1196)
!1211 = !DILocation(line: 520, column: 3, scope: !1209)
!1212 = !DILocation(line: 521, column: 6, scope: !1196)
!1213 = !DILocation(line: 521, column: 4, scope: !1196)
!1214 = !DILocation(line: 522, column: 2, scope: !1196)
!1215 = !DILocation(line: 522, column: 10, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1196, file: !338, discriminator: 1)
!1217 = !DILocation(line: 522, column: 9, scope: !1216)
!1218 = !DILocation(line: 522, column: 2, scope: !1216)
!1219 = !DILocation(line: 523, column: 12, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1196, file: !338, line: 522, column: 13)
!1221 = !DILocation(line: 523, column: 11, scope: !1220)
!1222 = !DILocation(line: 523, column: 3, scope: !1220)
!1223 = !DILocation(line: 526, column: 5, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !338, line: 523, column: 15)
!1225 = !DILocation(line: 526, column: 7, scope: !1224)
!1226 = !DILocation(line: 527, column: 4, scope: !1224)
!1227 = !DILocation(line: 529, column: 4, scope: !1220)
!1228 = !DILocation(line: 522, column: 2, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1196, file: !338, discriminator: 2)
!1230 = distinct !{!1230, !1214}
!1231 = !DILocation(line: 532, column: 9, scope: !1196)
!1232 = !DILocation(line: 532, column: 2, scope: !1196)
!1233 = !DILocation(line: 533, column: 1, scope: !1196)
!1234 = distinct !DISubprogram(name: "sys_get_mtu", scope: !338, file: !338, line: 539, type: !1235, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!298, !358}
!1237 = !DILocalVariable(name: "ifname", arg: 1, scope: !1234, file: !338, line: 539, type: !358)
!1238 = !DILocation(line: 539, column: 25, scope: !1234)
!1239 = !DILocalVariable(name: "ifr", scope: !1234, file: !338, line: 541, type: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifreq", file: !1241, line: 126, size: 320, align: 64, elements: !1242)
!1241 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1242 = !{!1243, !1247}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifrn", scope: !1240, file: !1241, line: 133, baseType: !1244, size: 128, align: 8)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !1241, line: 130, size: 128, align: 8, elements: !1245)
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ifrn_name", scope: !1244, file: !1241, line: 132, baseType: !760, size: 128, align: 8)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifru", scope: !1240, file: !1241, line: 149, baseType: !1248, size: 192, align: 64, offset: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !1241, line: 135, size: 192, align: 64, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1257, !1258, !1259, !1268, !1269, !1270}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_addr", scope: !1248, file: !1241, line: 137, baseType: !314, size: 128, align: 16)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_dstaddr", scope: !1248, file: !1241, line: 138, baseType: !314, size: 128, align: 16)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_broadaddr", scope: !1248, file: !1241, line: 139, baseType: !314, size: 128, align: 16)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_netmask", scope: !1248, file: !1241, line: 140, baseType: !314, size: 128, align: 16)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_hwaddr", scope: !1248, file: !1241, line: 141, baseType: !314, size: 128, align: 16)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_flags", scope: !1248, file: !1241, line: 142, baseType: !1256, size: 16, align: 16)
!1256 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_ivalue", scope: !1248, file: !1241, line: 143, baseType: !291, size: 32, align: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_mtu", scope: !1248, file: !1241, line: 144, baseType: !291, size: 32, align: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_map", scope: !1248, file: !1241, line: 145, baseType: !1260, size: 192, align: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifmap", file: !1241, line: 111, size: 192, align: 64, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !1260, file: !1241, line: 113, baseType: !300, size: 64, align: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !1260, file: !1241, line: 114, baseType: !300, size: 64, align: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !1260, file: !1241, line: 115, baseType: !319, size: 16, align: 16, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1260, file: !1241, line: 116, baseType: !309, size: 8, align: 8, offset: 144)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !1260, file: !1241, line: 117, baseType: !309, size: 8, align: 8, offset: 152)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1260, file: !1241, line: 118, baseType: !309, size: 8, align: 8, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_slave", scope: !1248, file: !1241, line: 146, baseType: !760, size: 128, align: 8)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_newname", scope: !1248, file: !1241, line: 147, baseType: !760, size: 128, align: 8)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_data", scope: !1248, file: !1241, line: 148, baseType: !1271, size: 64, align: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !295, line: 183, baseType: !341)
!1272 = !DILocation(line: 541, column: 15, scope: !1234)
!1273 = !DILocalVariable(name: "ifnamelen", scope: !1234, file: !338, line: 542, type: !298)
!1274 = !DILocation(line: 542, column: 9, scope: !1234)
!1275 = !DILocalVariable(name: "s", scope: !1234, file: !338, line: 543, type: !291)
!1276 = !DILocation(line: 543, column: 6, scope: !1234)
!1277 = !DILocation(line: 545, column: 21, scope: !1234)
!1278 = !DILocation(line: 545, column: 14, scope: !1234)
!1279 = !DILocation(line: 545, column: 12, scope: !1234)
!1280 = !DILocation(line: 546, column: 6, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1234, file: !338, line: 546, column: 6)
!1282 = !DILocation(line: 546, column: 16, scope: !1281)
!1283 = !DILocation(line: 546, column: 6, scope: !1234)
!1284 = !DILocation(line: 547, column: 3, scope: !1281)
!1285 = !DILocation(line: 548, column: 12, scope: !1234)
!1286 = !DILocation(line: 548, column: 21, scope: !1234)
!1287 = !DILocation(line: 548, column: 2, scope: !1234)
!1288 = !DILocation(line: 548, column: 22, scope: !1234)
!1289 = !DILocation(line: 548, column: 30, scope: !1234)
!1290 = !DILocation(line: 549, column: 14, scope: !1234)
!1291 = !DILocation(line: 549, column: 5, scope: !1234)
!1292 = !DILocation(line: 549, column: 2, scope: !1234)
!1293 = !DILocation(line: 549, column: 25, scope: !1234)
!1294 = !DILocation(line: 551, column: 6, scope: !1234)
!1295 = !DILocation(line: 551, column: 4, scope: !1234)
!1296 = !DILocation(line: 552, column: 6, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1234, file: !338, line: 552, column: 6)
!1298 = !DILocation(line: 552, column: 8, scope: !1297)
!1299 = !DILocation(line: 552, column: 6, scope: !1234)
!1300 = !DILocation(line: 553, column: 3, scope: !1297)
!1301 = !DILocation(line: 554, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1234, file: !338, line: 554, column: 6)
!1303 = !DILocation(line: 554, column: 6, scope: !1302)
!1304 = !DILocation(line: 554, column: 32, scope: !1302)
!1305 = !DILocation(line: 554, column: 6, scope: !1234)
!1306 = !DILocation(line: 555, column: 9, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !338, line: 554, column: 39)
!1308 = !DILocation(line: 555, column: 3, scope: !1307)
!1309 = !DILocation(line: 556, column: 3, scope: !1307)
!1310 = !DILocation(line: 558, column: 8, scope: !1234)
!1311 = !DILocation(line: 558, column: 2, scope: !1234)
!1312 = !DILocation(line: 559, column: 12, scope: !1234)
!1313 = !DILocation(line: 559, column: 21, scope: !1234)
!1314 = !DILocation(line: 559, column: 9, scope: !1234)
!1315 = !DILocation(line: 559, column: 2, scope: !1234)
!1316 = !DILocation(line: 560, column: 1, scope: !1234)
!1317 = distinct !DISubprogram(name: "sys_isdir", scope: !338, file: !338, line: 567, type: !627, isLocal: false, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1318 = !DILocalVariable(name: "path", arg: 1, scope: !1317, file: !338, line: 567, type: !358)
!1319 = !DILocation(line: 567, column: 23, scope: !1317)
!1320 = !DILocalVariable(name: "s", scope: !1317, file: !338, line: 569, type: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1322, line: 46, size: 1152, align: 64, elements: !1323)
!1322 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1323 = !{!1324, !1326, !1328, !1330, !1332, !1333, !1334, !1335, !1336, !1338, !1340, !1342, !1350, !1351, !1352}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1321, file: !1322, line: 48, baseType: !1325, size: 64, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !295, line: 124, baseType: !300)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1321, file: !1322, line: 53, baseType: !1327, size: 64, align: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !295, line: 127, baseType: !300)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1321, file: !1322, line: 61, baseType: !1329, size: 64, align: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !295, line: 130, baseType: !300)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1321, file: !1322, line: 62, baseType: !1331, size: 32, align: 32, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !295, line: 129, baseType: !334)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1321, file: !1322, line: 64, baseType: !343, size: 32, align: 32, offset: 224)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1321, file: !1322, line: 65, baseType: !350, size: 32, align: 32, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1321, file: !1322, line: 67, baseType: !291, size: 32, align: 32, offset: 288)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1321, file: !1322, line: 69, baseType: !1325, size: 64, align: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1321, file: !1322, line: 74, baseType: !1337, size: 64, align: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !295, line: 131, baseType: !296)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1321, file: !1322, line: 78, baseType: !1339, size: 64, align: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !295, line: 153, baseType: !296)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1321, file: !1322, line: 80, baseType: !1341, size: 64, align: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !295, line: 158, baseType: !296)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1321, file: !1322, line: 91, baseType: !1343, size: 128, align: 64, offset: 576)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1344, line: 120, size: 128, align: 64, elements: !1345)
!1344 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1345 = !{!1346, !1348}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1343, file: !1344, line: 122, baseType: !1347, size: 64, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !295, line: 139, baseType: !296)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1343, file: !1344, line: 123, baseType: !1349, size: 64, align: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !295, line: 175, baseType: !296)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1321, file: !1322, line: 92, baseType: !1343, size: 128, align: 64, offset: 704)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1321, file: !1322, line: 93, baseType: !1343, size: 128, align: 64, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1321, file: !1322, line: 106, baseType: !1353, size: 192, align: 64, offset: 960)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 192, align: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DISubrange(count: 3)
!1356 = !DILocation(line: 569, column: 14, scope: !1317)
!1357 = !DILocation(line: 571, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1317, file: !338, line: 571, column: 6)
!1359 = !DILocation(line: 571, column: 6, scope: !1358)
!1360 = !DILocation(line: 571, column: 21, scope: !1358)
!1361 = !DILocation(line: 571, column: 6, scope: !1317)
!1362 = !DILocation(line: 572, column: 8, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !338, line: 572, column: 6)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !338, line: 571, column: 28)
!1365 = !DILocation(line: 572, column: 7, scope: !1363)
!1366 = !DILocation(line: 572, column: 12, scope: !1363)
!1367 = !DILocation(line: 572, column: 6, scope: !1364)
!1368 = !DILocation(line: 574, column: 29, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1363, file: !338, line: 572, column: 23)
!1370 = !DILocation(line: 574, column: 28, scope: !1369)
!1371 = !DILocation(line: 574, column: 19, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1369, file: !338, discriminator: 1)
!1373 = !DILocation(line: 574, column: 37, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1369, file: !338, discriminator: 2)
!1375 = !DILocation(line: 574, column: 36, scope: !1369)
!1376 = !DILocation(line: 573, column: 4, scope: !1369)
!1377 = !DILocation(line: 575, column: 3, scope: !1369)
!1378 = !DILocation(line: 576, column: 3, scope: !1364)
!1379 = !DILocation(line: 578, column: 8, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1317, file: !338, line: 578, column: 6)
!1381 = !DILocation(line: 578, column: 16, scope: !1380)
!1382 = !DILocation(line: 578, column: 6, scope: !1317)
!1383 = !DILocation(line: 579, column: 3, scope: !1380)
!1384 = !DILocation(line: 580, column: 2, scope: !1317)
!1385 = !DILocation(line: 581, column: 1, scope: !1317)
!1386 = distinct !DISubprogram(name: "sys_mkpath", scope: !338, file: !338, line: 589, type: !1387, isLocal: false, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!291, !358, !1389}
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !293, line: 70, baseType: !1331)
!1390 = !DILocalVariable(name: "path", arg: 1, scope: !1386, file: !338, line: 589, type: !358)
!1391 = !DILocation(line: 589, column: 24, scope: !1386)
!1392 = !DILocalVariable(name: "mode", arg: 2, scope: !1386, file: !338, line: 589, type: !1389)
!1393 = !DILocation(line: 589, column: 37, scope: !1386)
!1394 = !DILocation(line: 591, column: 21, scope: !1386)
!1395 = !DILocation(line: 591, column: 14, scope: !1386)
!1396 = !DILocation(line: 591, column: 26, scope: !1386)
!1397 = !DILocation(line: 591, column: 2, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1386, file: !338, discriminator: 1)
!1399 = !DILocation(line: 591, column: 2, scope: !1386)
!1400 = !DILocalVariable(name: "parent", scope: !1386, file: !338, line: 591, type: !1401)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, align: 8, elements: !310)
!1402 = !DIExpression(DW_OP_deref)
!1403 = !DILocation(line: 591, column: 7, scope: !1386)
!1404 = !DILocalVariable(name: "p", scope: !1386, file: !338, line: 592, type: !341)
!1405 = !DILocation(line: 592, column: 8, scope: !1386)
!1406 = !DILocation(line: 594, column: 17, scope: !1386)
!1407 = !DILocation(line: 594, column: 2, scope: !1386)
!1408 = !DILocation(line: 596, column: 4, scope: !1386)
!1409 = !DILocation(line: 597, column: 2, scope: !1386)
!1410 = distinct !{!1410, !1409}
!1411 = !DILocation(line: 599, column: 3, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1386, file: !338, line: 597, column: 5)
!1413 = !DILocation(line: 599, column: 11, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1412, file: !338, discriminator: 1)
!1415 = !DILocation(line: 599, column: 10, scope: !1414)
!1416 = !DILocation(line: 599, column: 13, scope: !1414)
!1417 = !DILocation(line: 599, column: 3, scope: !1414)
!1418 = !DILocation(line: 599, column: 22, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1412, file: !338, discriminator: 2)
!1420 = !DILocation(line: 599, column: 3, scope: !1419)
!1421 = distinct !{!1421, !1411}
!1422 = !DILocation(line: 600, column: 14, scope: !1412)
!1423 = !DILocation(line: 600, column: 7, scope: !1412)
!1424 = !DILocation(line: 600, column: 5, scope: !1412)
!1425 = !DILocation(line: 601, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1412, file: !338, line: 601, column: 7)
!1427 = !DILocation(line: 601, column: 7, scope: !1412)
!1428 = !DILocation(line: 604, column: 5, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !338, line: 601, column: 10)
!1430 = !DILocation(line: 604, column: 7, scope: !1429)
!1431 = !DILocation(line: 605, column: 3, scope: !1429)
!1432 = !DILocalVariable(name: "sbuf", scope: !1412, file: !338, line: 607, type: !1321)
!1433 = !DILocation(line: 607, column: 15, scope: !1412)
!1434 = !DILocation(line: 608, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1412, file: !338, line: 608, column: 7)
!1436 = !DILocation(line: 608, column: 27, scope: !1435)
!1437 = !DILocation(line: 608, column: 7, scope: !1412)
!1438 = !DILocation(line: 609, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !338, line: 609, column: 7)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !338, line: 608, column: 34)
!1441 = !DILocation(line: 609, column: 8, scope: !1439)
!1442 = !DILocation(line: 609, column: 13, scope: !1439)
!1443 = !DILocation(line: 609, column: 7, scope: !1440)
!1444 = !DILocation(line: 610, column: 23, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !338, line: 610, column: 9)
!1446 = distinct !DILexicalBlock(scope: !1439, file: !338, line: 609, column: 24)
!1447 = !DILocation(line: 610, column: 9, scope: !1445)
!1448 = !DILocation(line: 610, column: 29, scope: !1445)
!1449 = !DILocation(line: 610, column: 9, scope: !1446)
!1450 = !DILocation(line: 611, column: 6, scope: !1445)
!1451 = !DILocation(line: 612, column: 4, scope: !1446)
!1452 = !DILocation(line: 613, column: 5, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1439, file: !338, line: 612, column: 11)
!1454 = !DILocation(line: 615, column: 3, scope: !1440)
!1455 = !DILocation(line: 615, column: 19, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1457, file: !338, discriminator: 1)
!1457 = distinct !DILexicalBlock(scope: !1435, file: !338, line: 615, column: 14)
!1458 = !DILocation(line: 615, column: 17, scope: !1456)
!1459 = !DILocation(line: 615, column: 28, scope: !1456)
!1460 = !DILocation(line: 615, column: 14, scope: !1456)
!1461 = !DILocation(line: 616, column: 5, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !338, line: 615, column: 37)
!1463 = !DILocation(line: 616, column: 9, scope: !1462)
!1464 = !DILocation(line: 617, column: 4, scope: !1462)
!1465 = !DILocation(line: 620, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1412, file: !338, line: 620, column: 7)
!1467 = !DILocation(line: 620, column: 7, scope: !1412)
!1468 = !DILocation(line: 622, column: 5, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !338, line: 620, column: 10)
!1470 = !DILocation(line: 622, column: 7, scope: !1469)
!1471 = !DILocation(line: 623, column: 5, scope: !1469)
!1472 = !DILocation(line: 624, column: 3, scope: !1469)
!1473 = !DILocation(line: 625, column: 2, scope: !1412)
!1474 = !DILocation(line: 625, column: 11, scope: !1398)
!1475 = !DILocation(line: 625, column: 2, scope: !1398)
!1476 = !DILocation(line: 627, column: 2, scope: !1386)
!1477 = !DILocation(line: 628, column: 1, scope: !1386)
!1478 = distinct !DISubprogram(name: "sys_realdir", scope: !338, file: !338, line: 636, type: !1197, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1479 = !DILocalVariable(name: "path", arg: 1, scope: !1478, file: !338, line: 636, type: !358)
!1480 = !DILocation(line: 636, column: 25, scope: !1478)
!1481 = !DILocalVariable(name: "sep", scope: !1478, file: !338, line: 638, type: !341)
!1482 = !DILocation(line: 638, column: 8, scope: !1478)
!1483 = !DILocalVariable(name: "udir", scope: !1478, file: !338, line: 638, type: !341)
!1484 = !DILocation(line: 638, column: 14, scope: !1478)
!1485 = !DILocalVariable(name: "rdir", scope: !1478, file: !338, line: 638, type: !341)
!1486 = !DILocation(line: 638, column: 21, scope: !1478)
!1487 = !DILocalVariable(name: "p", scope: !1478, file: !338, line: 638, type: !341)
!1488 = !DILocation(line: 638, column: 28, scope: !1478)
!1489 = !DILocalVariable(name: "rerrno", scope: !1478, file: !338, line: 639, type: !291)
!1490 = !DILocation(line: 639, column: 6, scope: !1478)
!1491 = !DILocalVariable(name: "rv", scope: !1478, file: !338, line: 639, type: !291)
!1492 = !DILocation(line: 639, column: 14, scope: !1478)
!1493 = !DILocation(line: 641, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1478, file: !338, line: 641, column: 6)
!1495 = !DILocation(line: 641, column: 14, scope: !1494)
!1496 = !DILocation(line: 641, column: 6, scope: !1478)
!1497 = !DILocation(line: 642, column: 4, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !338, line: 641, column: 23)
!1499 = !DILocation(line: 642, column: 8, scope: !1498)
!1500 = !DILocation(line: 643, column: 3, scope: !1498)
!1501 = !DILocation(line: 646, column: 16, scope: !1478)
!1502 = !DILocation(line: 646, column: 9, scope: !1478)
!1503 = !DILocation(line: 646, column: 7, scope: !1478)
!1504 = !DILocation(line: 647, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1478, file: !338, line: 647, column: 6)
!1506 = !DILocation(line: 647, column: 6, scope: !1478)
!1507 = !DILocation(line: 648, column: 3, scope: !1505)
!1508 = !DILocation(line: 650, column: 16, scope: !1478)
!1509 = !DILocation(line: 650, column: 8, scope: !1478)
!1510 = !DILocation(line: 650, column: 6, scope: !1478)
!1511 = !DILocation(line: 651, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1478, file: !338, line: 651, column: 6)
!1513 = !DILocation(line: 651, column: 6, scope: !1478)
!1514 = !DILocation(line: 652, column: 8, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !338, line: 651, column: 12)
!1516 = !DILocation(line: 652, column: 3, scope: !1515)
!1517 = !DILocation(line: 653, column: 32, scope: !1515)
!1518 = !DILocation(line: 653, column: 8, scope: !1515)
!1519 = !DILocation(line: 653, column: 6, scope: !1515)
!1520 = !DILocation(line: 654, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1515, file: !338, line: 654, column: 7)
!1522 = !DILocation(line: 654, column: 10, scope: !1521)
!1523 = !DILocation(line: 654, column: 7, scope: !1515)
!1524 = !DILocation(line: 655, column: 4, scope: !1521)
!1525 = !DILocation(line: 656, column: 9, scope: !1515)
!1526 = !DILocation(line: 656, column: 14, scope: !1515)
!1527 = !DILocation(line: 656, column: 7, scope: !1515)
!1528 = !DILocation(line: 657, column: 2, scope: !1515)
!1529 = !DILocation(line: 657, column: 13, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1531, file: !338, discriminator: 1)
!1531 = distinct !DILexicalBlock(scope: !1512, file: !338, line: 657, column: 13)
!1532 = !DILocation(line: 657, column: 20, scope: !1530)
!1533 = !DILocation(line: 657, column: 17, scope: !1530)
!1534 = !DILocation(line: 658, column: 10, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !338, line: 657, column: 26)
!1536 = !DILocation(line: 658, column: 3, scope: !1535)
!1537 = !DILocation(line: 660, column: 3, scope: !1478)
!1538 = !DILocation(line: 660, column: 7, scope: !1478)
!1539 = !DILocation(line: 661, column: 18, scope: !1478)
!1540 = !DILocation(line: 661, column: 9, scope: !1478)
!1541 = !DILocation(line: 661, column: 7, scope: !1478)
!1542 = !DILocation(line: 662, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1478, file: !338, line: 662, column: 6)
!1544 = !DILocation(line: 662, column: 6, scope: !1478)
!1545 = !DILocation(line: 663, column: 13, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !338, line: 662, column: 13)
!1547 = !DILocation(line: 663, column: 12, scope: !1546)
!1548 = !DILocation(line: 663, column: 10, scope: !1546)
!1549 = !DILocation(line: 664, column: 8, scope: !1546)
!1550 = !DILocation(line: 664, column: 3, scope: !1546)
!1551 = !DILocation(line: 665, column: 10, scope: !1546)
!1552 = !DILocation(line: 665, column: 4, scope: !1546)
!1553 = !DILocation(line: 665, column: 8, scope: !1546)
!1554 = !DILocation(line: 666, column: 3, scope: !1546)
!1555 = !DILocation(line: 668, column: 29, scope: !1478)
!1556 = !DILocation(line: 668, column: 35, scope: !1478)
!1557 = !DILocation(line: 668, column: 39, scope: !1478)
!1558 = !DILocation(line: 668, column: 7, scope: !1478)
!1559 = !DILocation(line: 668, column: 5, scope: !1478)
!1560 = !DILocation(line: 669, column: 12, scope: !1478)
!1561 = !DILocation(line: 669, column: 11, scope: !1478)
!1562 = !DILocation(line: 669, column: 9, scope: !1478)
!1563 = !DILocation(line: 670, column: 7, scope: !1478)
!1564 = !DILocation(line: 670, column: 2, scope: !1478)
!1565 = !DILocation(line: 671, column: 7, scope: !1478)
!1566 = !DILocation(line: 671, column: 2, scope: !1478)
!1567 = !DILocation(line: 672, column: 9, scope: !1478)
!1568 = !DILocation(line: 672, column: 3, scope: !1478)
!1569 = !DILocation(line: 672, column: 7, scope: !1478)
!1570 = !DILocation(line: 673, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1478, file: !338, line: 673, column: 6)
!1572 = !DILocation(line: 673, column: 9, scope: !1571)
!1573 = !DILocation(line: 673, column: 6, scope: !1478)
!1574 = !DILocation(line: 674, column: 3, scope: !1571)
!1575 = !DILocation(line: 675, column: 9, scope: !1478)
!1576 = !DILocation(line: 675, column: 2, scope: !1478)
!1577 = !DILocation(line: 676, column: 1, scope: !1478)
!1578 = distinct !DISubprogram(name: "sys_dir_eachfile", scope: !338, file: !338, line: 684, type: !1579, isLocal: false, isDefinition: true, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!291, !358, !1581, !290}
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dir_eachfile_cb_t", file: !1582, line: 64, baseType: !1583)
!1582 = !DIFile(filename: "sys.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64, align: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!291, !358, !290}
!1586 = !DILocalVariable(name: "dirname", arg: 1, scope: !1578, file: !338, line: 684, type: !358)
!1587 = !DILocation(line: 684, column: 30, scope: !1578)
!1588 = !DILocalVariable(name: "cb", arg: 2, scope: !1578, file: !338, line: 684, type: !1581)
!1589 = !DILocation(line: 684, column: 61, scope: !1578)
!1590 = !DILocalVariable(name: "arg", arg: 3, scope: !1578, file: !338, line: 684, type: !290)
!1591 = !DILocation(line: 684, column: 71, scope: !1578)
!1592 = !DILocalVariable(name: "tree", scope: !1578, file: !338, line: 686, type: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64, align: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTS", file: !1595, line: 81, baseType: !1596)
!1595 = !DIFile(filename: "/usr/include/fts.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1595, line: 57, size: 576, align: 64, elements: !1597)
!1597 = !{!1598, !1631, !1632, !1634, !1635, !1636, !1637, !1638, !1639, !1645}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cur", scope: !1596, file: !1595, line: 58, baseType: !1599, size: 64, align: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64, align: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ftsent", file: !1595, line: 98, size: 960, align: 64, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1614, !1615, !1617, !1619, !1621, !1622, !1623, !1624, !1625, !1627}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cycle", scope: !1600, file: !1595, line: 99, baseType: !1599, size: 64, align: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fts_parent", scope: !1600, file: !1595, line: 100, baseType: !1599, size: 64, align: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fts_link", scope: !1600, file: !1595, line: 101, baseType: !1599, size: 64, align: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fts_number", scope: !1600, file: !1595, line: 102, baseType: !296, size: 64, align: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pointer", scope: !1600, file: !1595, line: 103, baseType: !290, size: 64, align: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fts_accpath", scope: !1600, file: !1595, line: 104, baseType: !341, size: 64, align: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !1600, file: !1595, line: 105, baseType: !341, size: 64, align: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fts_errno", scope: !1600, file: !1595, line: 106, baseType: !291, size: 32, align: 32, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fts_symfd", scope: !1600, file: !1595, line: 107, baseType: !291, size: 32, align: 32, offset: 480)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !1600, file: !1595, line: 108, baseType: !1612, size: 16, align: 16, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !293, line: 34, baseType: !1613)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !295, line: 31, baseType: !319)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fts_namelen", scope: !1600, file: !1595, line: 109, baseType: !1612, size: 16, align: 16, offset: 528)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fts_ino", scope: !1600, file: !1595, line: 111, baseType: !1616, size: 64, align: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !293, line: 48, baseType: !1327)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dev", scope: !1600, file: !1595, line: 112, baseType: !1618, size: 64, align: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !293, line: 60, baseType: !1325)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fts_nlink", scope: !1600, file: !1595, line: 113, baseType: !1620, size: 64, align: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !293, line: 75, baseType: !1329)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "fts_level", scope: !1600, file: !1595, line: 117, baseType: !1256, size: 16, align: 16, offset: 768)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fts_info", scope: !1600, file: !1595, line: 133, baseType: !1612, size: 16, align: 16, offset: 784)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fts_flags", scope: !1600, file: !1595, line: 137, baseType: !1612, size: 16, align: 16, offset: 800)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fts_instr", scope: !1600, file: !1595, line: 143, baseType: !1612, size: 16, align: 16, offset: 816)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fts_statp", scope: !1600, file: !1595, line: 145, baseType: !1626, size: 64, align: 64, offset: 832)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64, align: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "fts_name", scope: !1600, file: !1595, line: 146, baseType: !1628, size: 8, align: 8, offset: 896)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 8, align: 8, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 1)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fts_child", scope: !1596, file: !1595, line: 59, baseType: !1599, size: 64, align: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "fts_array", scope: !1596, file: !1595, line: 60, baseType: !1633, size: 64, align: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64, align: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dev", scope: !1596, file: !1595, line: 61, baseType: !1618, size: 64, align: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !1596, file: !1595, line: 62, baseType: !341, size: 64, align: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "fts_rfd", scope: !1596, file: !1595, line: 63, baseType: !291, size: 32, align: 32, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !1596, file: !1595, line: 64, baseType: !291, size: 32, align: 32, offset: 352)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "fts_nitems", scope: !1596, file: !1595, line: 65, baseType: !291, size: 32, align: 32, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fts_compar", scope: !1596, file: !1595, line: 66, baseType: !1640, size: 64, align: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64, align: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!291, !1643, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64, align: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "fts_options", scope: !1596, file: !1595, line: 80, baseType: !291, size: 32, align: 32, offset: 512)
!1646 = !DILocation(line: 686, column: 7, scope: !1578)
!1647 = !DILocalVariable(name: "node", scope: !1578, file: !338, line: 687, type: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTSENT", file: !1595, line: 147, baseType: !1600)
!1650 = !DILocation(line: 687, column: 10, scope: !1578)
!1651 = !DILocalVariable(name: "paths", scope: !1578, file: !338, line: 688, type: !1652)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 128, align: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 2)
!1655 = !DILocation(line: 688, column: 9, scope: !1578)
!1656 = !DILocalVariable(name: "rv", scope: !1578, file: !338, line: 689, type: !291)
!1657 = !DILocation(line: 689, column: 6, scope: !1578)
!1658 = !DILocation(line: 691, column: 2, scope: !1578)
!1659 = !DILocation(line: 691, column: 11, scope: !1578)
!1660 = !DILocation(line: 692, column: 20, scope: !1578)
!1661 = !DILocation(line: 692, column: 13, scope: !1578)
!1662 = !DILocation(line: 692, column: 2, scope: !1578)
!1663 = !DILocation(line: 692, column: 11, scope: !1578)
!1664 = !DILocation(line: 693, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1578, file: !338, line: 693, column: 6)
!1666 = !DILocation(line: 693, column: 6, scope: !1578)
!1667 = !DILocation(line: 694, column: 3, scope: !1665)
!1668 = !DILocation(line: 696, column: 18, scope: !1578)
!1669 = !DILocation(line: 696, column: 9, scope: !1578)
!1670 = !DILocation(line: 696, column: 7, scope: !1578)
!1671 = !DILocation(line: 697, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1578, file: !338, line: 697, column: 6)
!1673 = !DILocation(line: 697, column: 6, scope: !1578)
!1674 = !DILocation(line: 699, column: 18, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !338, line: 697, column: 13)
!1676 = !DILocation(line: 699, column: 37, scope: !1675)
!1677 = !DILocation(line: 699, column: 36, scope: !1675)
!1678 = !DILocation(line: 699, column: 27, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1675, file: !338, discriminator: 1)
!1680 = !DILocation(line: 698, column: 3, scope: !1675)
!1681 = !DILocation(line: 700, column: 6, scope: !1675)
!1682 = !DILocation(line: 701, column: 3, scope: !1675)
!1683 = !DILocation(line: 704, column: 2, scope: !1578)
!1684 = !DILocation(line: 704, column: 26, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1578, file: !338, discriminator: 1)
!1686 = !DILocation(line: 704, column: 17, scope: !1685)
!1687 = !DILocation(line: 704, column: 15, scope: !1685)
!1688 = !DILocation(line: 704, column: 2, scope: !1685)
!1689 = !DILocation(line: 705, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !338, line: 705, column: 7)
!1691 = distinct !DILexicalBlock(scope: !1578, file: !338, line: 704, column: 34)
!1692 = !DILocation(line: 705, column: 13, scope: !1690)
!1693 = !DILocation(line: 705, column: 23, scope: !1690)
!1694 = !DILocation(line: 705, column: 27, scope: !1690)
!1695 = !DILocation(line: 705, column: 30, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1690, file: !338, discriminator: 1)
!1697 = !DILocation(line: 705, column: 36, scope: !1696)
!1698 = !DILocation(line: 705, column: 48, scope: !1696)
!1699 = !DILocation(line: 705, column: 7, scope: !1696)
!1700 = !DILocation(line: 706, column: 12, scope: !1690)
!1701 = !DILocation(line: 706, column: 18, scope: !1690)
!1702 = !DILocation(line: 706, column: 4, scope: !1690)
!1703 = !DILocation(line: 707, column: 12, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1690, file: !338, line: 707, column: 12)
!1705 = !DILocation(line: 707, column: 18, scope: !1704)
!1706 = !DILocation(line: 707, column: 27, scope: !1704)
!1707 = !DILocation(line: 707, column: 12, scope: !1690)
!1708 = !DILocation(line: 708, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !338, line: 707, column: 35)
!1710 = !DILocation(line: 708, column: 12, scope: !1709)
!1711 = !DILocation(line: 708, column: 18, scope: !1709)
!1712 = !DILocation(line: 708, column: 28, scope: !1709)
!1713 = !DILocation(line: 708, column: 7, scope: !1709)
!1714 = !DILocation(line: 709, column: 8, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !338, line: 709, column: 8)
!1716 = !DILocation(line: 709, column: 11, scope: !1715)
!1717 = !DILocation(line: 709, column: 8, scope: !1709)
!1718 = !DILocation(line: 710, column: 5, scope: !1715)
!1719 = !DILocation(line: 711, column: 3, scope: !1709)
!1720 = !DILocation(line: 704, column: 2, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1578, file: !338, discriminator: 2)
!1722 = distinct !{!1722, !1683}
!1723 = !DILocation(line: 713, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1578, file: !338, line: 713, column: 5)
!1725 = !DILocation(line: 713, column: 6, scope: !1724)
!1726 = !DILocation(line: 713, column: 5, scope: !1724)
!1727 = !DILocation(line: 713, column: 5, scope: !1578)
!1728 = !DILocation(line: 715, column: 28, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !338, line: 713, column: 12)
!1730 = !DILocation(line: 715, column: 27, scope: !1729)
!1731 = !DILocation(line: 715, column: 18, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1729, file: !338, discriminator: 1)
!1733 = !DILocation(line: 714, column: 3, scope: !1729)
!1734 = !DILocation(line: 716, column: 6, scope: !1729)
!1735 = !DILocation(line: 717, column: 3, scope: !1729)
!1736 = !DILocation(line: 713, column: 26, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1724, file: !338, discriminator: 1)
!1738 = !DILocation(line: 721, column: 12, scope: !1578)
!1739 = !DILocation(line: 721, column: 2, scope: !1578)
!1740 = !DILocation(line: 724, column: 7, scope: !1578)
!1741 = !DILocation(line: 724, column: 2, scope: !1578)
!1742 = !DILocation(line: 725, column: 9, scope: !1578)
!1743 = !DILocation(line: 725, column: 2, scope: !1578)
!1744 = !DILocation(line: 726, column: 1, scope: !1578)
!1745 = distinct !DISubprogram(name: "sys_get_cpu_cores", scope: !338, file: !338, line: 732, type: !1746, isLocal: false, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1749, line: 51, baseType: !334)
!1749 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1750 = !DILocation(line: 735, column: 9, scope: !1745)
!1751 = !DILocation(line: 735, column: 2, scope: !1745)
!1752 = distinct !DISubprogram(name: "sys_sendmsgfd", scope: !338, file: !338, line: 762, type: !1753, isLocal: false, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!292, !291, !290, !298, !291}
!1755 = !DILocalVariable(name: "sock", arg: 1, scope: !1752, file: !338, line: 762, type: !291)
!1756 = !DILocation(line: 762, column: 19, scope: !1752)
!1757 = !DILocalVariable(name: "buf", arg: 2, scope: !1752, file: !338, line: 762, type: !290)
!1758 = !DILocation(line: 762, column: 31, scope: !1752)
!1759 = !DILocalVariable(name: "bufsz", arg: 3, scope: !1752, file: !338, line: 762, type: !298)
!1760 = !DILocation(line: 762, column: 43, scope: !1752)
!1761 = !DILocalVariable(name: "fd", arg: 4, scope: !1752, file: !338, line: 762, type: !291)
!1762 = !DILocation(line: 762, column: 54, scope: !1752)
!1763 = !DILocalVariable(name: "iov", scope: !1752, file: !338, line: 764, type: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1765, line: 43, size: 128, align: 64, elements: !1766)
!1765 = !DIFile(filename: "/usr/include/bits/uio.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1764, file: !1765, line: 45, baseType: !290, size: 64, align: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1764, file: !1765, line: 46, baseType: !298, size: 64, align: 64, offset: 64)
!1769 = !DILocation(line: 764, column: 15, scope: !1752)
!1770 = !DILocalVariable(name: "msg", scope: !1752, file: !338, line: 765, type: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !263, line: 228, size: 448, align: 64, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1777, !1778, !1779, !1780}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !1771, file: !263, line: 230, baseType: !290, size: 64, align: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !1771, file: !263, line: 231, baseType: !1046, size: 32, align: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !1771, file: !263, line: 233, baseType: !1776, size: 64, align: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !1771, file: !263, line: 234, baseType: !298, size: 64, align: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !1771, file: !263, line: 236, baseType: !290, size: 64, align: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !1771, file: !263, line: 237, baseType: !298, size: 64, align: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !1771, file: !263, line: 242, baseType: !291, size: 32, align: 32, offset: 384)
!1781 = !DILocation(line: 765, column: 16, scope: !1752)
!1782 = !DILocalVariable(name: "cmsg", scope: !1752, file: !338, line: 766, type: !301)
!1783 = !DILocation(line: 766, column: 18, scope: !1752)
!1784 = !DILocalVariable(name: "cmsgbuf", scope: !1752, file: !338, line: 767, type: !1785)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 192, align: 8, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 24)
!1788 = !DILocation(line: 767, column: 7, scope: !1752)
!1789 = !DILocalVariable(name: "n", scope: !1752, file: !338, line: 768, type: !292)
!1790 = !DILocation(line: 768, column: 10, scope: !1752)
!1791 = !DILocation(line: 770, column: 17, scope: !1752)
!1792 = !DILocation(line: 770, column: 6, scope: !1752)
!1793 = !DILocation(line: 770, column: 15, scope: !1752)
!1794 = !DILocation(line: 771, column: 16, scope: !1752)
!1795 = !DILocation(line: 771, column: 6, scope: !1752)
!1796 = !DILocation(line: 771, column: 14, scope: !1752)
!1797 = !DILocation(line: 773, column: 6, scope: !1752)
!1798 = !DILocation(line: 773, column: 15, scope: !1752)
!1799 = !DILocation(line: 774, column: 6, scope: !1752)
!1800 = !DILocation(line: 774, column: 18, scope: !1752)
!1801 = !DILocation(line: 775, column: 6, scope: !1752)
!1802 = !DILocation(line: 775, column: 14, scope: !1752)
!1803 = !DILocation(line: 776, column: 6, scope: !1752)
!1804 = !DILocation(line: 776, column: 17, scope: !1752)
!1805 = !DILocation(line: 778, column: 6, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1752, file: !338, line: 778, column: 6)
!1807 = !DILocation(line: 778, column: 9, scope: !1806)
!1808 = !DILocation(line: 778, column: 6, scope: !1752)
!1809 = !DILocation(line: 779, column: 21, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !338, line: 778, column: 16)
!1811 = !DILocation(line: 779, column: 7, scope: !1810)
!1812 = !DILocation(line: 779, column: 19, scope: !1810)
!1813 = !DILocation(line: 780, column: 7, scope: !1810)
!1814 = !DILocation(line: 780, column: 22, scope: !1810)
!1815 = !DILocation(line: 782, column: 12, scope: !1810)
!1816 = !DILocation(line: 782, column: 27, scope: !1810)
!1817 = !DILocation(line: 782, column: 10, scope: !1810)
!1818 = !DILocation(line: 782, column: 12, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1810, file: !338, discriminator: 1)
!1820 = !DILocation(line: 782, column: 56, scope: !1819)
!1821 = !DILocation(line: 782, column: 10, scope: !1819)
!1822 = !DILocation(line: 782, column: 10, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1810, file: !338, discriminator: 2)
!1824 = !DILocation(line: 782, column: 10, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1810, file: !338, discriminator: 3)
!1826 = !DILocation(line: 782, column: 8, scope: !1825)
!1827 = !DILocation(line: 783, column: 8, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1810, file: !338, line: 783, column: 7)
!1829 = !DILocation(line: 783, column: 7, scope: !1810)
!1830 = !DILocation(line: 784, column: 4, scope: !1828)
!1831 = !DILocation(line: 785, column: 3, scope: !1810)
!1832 = !DILocation(line: 785, column: 9, scope: !1810)
!1833 = !DILocation(line: 785, column: 18, scope: !1810)
!1834 = !DILocation(line: 786, column: 3, scope: !1810)
!1835 = !DILocation(line: 786, column: 9, scope: !1810)
!1836 = !DILocation(line: 786, column: 20, scope: !1810)
!1837 = !DILocation(line: 787, column: 3, scope: !1810)
!1838 = !DILocation(line: 787, column: 9, scope: !1810)
!1839 = !DILocation(line: 787, column: 19, scope: !1810)
!1840 = !DILocation(line: 789, column: 31, scope: !1810)
!1841 = !DILocation(line: 789, column: 12, scope: !1810)
!1842 = !DILocation(line: 789, column: 15, scope: !1810)
!1843 = !DILocation(line: 789, column: 3, scope: !1810)
!1844 = !DILocation(line: 789, column: 29, scope: !1810)
!1845 = !DILocation(line: 790, column: 2, scope: !1810)
!1846 = !DILocation(line: 791, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1806, file: !338, line: 790, column: 9)
!1848 = !DILocation(line: 791, column: 19, scope: !1847)
!1849 = !DILocation(line: 792, column: 7, scope: !1847)
!1850 = !DILocation(line: 792, column: 22, scope: !1847)
!1851 = !DILocation(line: 794, column: 2, scope: !1752)
!1852 = distinct !{!1852, !1851}
!1853 = !DILocation(line: 796, column: 15, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1752, file: !338, line: 794, column: 5)
!1855 = !DILocation(line: 796, column: 7, scope: !1854)
!1856 = !DILocation(line: 796, column: 5, scope: !1854)
!1857 = !DILocation(line: 800, column: 2, scope: !1854)
!1858 = !DILocation(line: 800, column: 11, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1752, file: !338, discriminator: 1)
!1860 = !DILocation(line: 800, column: 13, scope: !1859)
!1861 = !DILocation(line: 800, column: 19, scope: !1859)
!1862 = !DILocation(line: 800, column: 23, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1752, file: !338, discriminator: 2)
!1864 = !DILocation(line: 800, column: 22, scope: !1863)
!1865 = !DILocation(line: 800, column: 27, scope: !1863)
!1866 = !DILocation(line: 800, column: 2, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1854, file: !338, discriminator: 3)
!1868 = !DILocation(line: 801, column: 9, scope: !1752)
!1869 = !DILocation(line: 801, column: 2, scope: !1752)
!1870 = !DILocation(line: 802, column: 1, scope: !1752)
!1871 = distinct !DISubprogram(name: "sys_recvmsgfd", scope: !338, file: !338, line: 812, type: !1872, isLocal: false, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!292, !291, !290, !298, !312}
!1874 = !DILocalVariable(name: "sock", arg: 1, scope: !1871, file: !338, line: 812, type: !291)
!1875 = !DILocation(line: 812, column: 19, scope: !1871)
!1876 = !DILocalVariable(name: "buf", arg: 2, scope: !1871, file: !338, line: 812, type: !290)
!1877 = !DILocation(line: 812, column: 31, scope: !1871)
!1878 = !DILocalVariable(name: "bufsz", arg: 3, scope: !1871, file: !338, line: 812, type: !298)
!1879 = !DILocation(line: 812, column: 43, scope: !1871)
!1880 = !DILocalVariable(name: "pfd", arg: 4, scope: !1871, file: !338, line: 812, type: !312)
!1881 = !DILocation(line: 812, column: 55, scope: !1871)
!1882 = !DILocalVariable(name: "n", scope: !1871, file: !338, line: 814, type: !292)
!1883 = !DILocation(line: 814, column: 10, scope: !1871)
!1884 = !DILocation(line: 816, column: 6, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1871, file: !338, line: 816, column: 6)
!1886 = !DILocation(line: 816, column: 6, scope: !1871)
!1887 = !DILocalVariable(name: "iov", scope: !1888, file: !338, line: 817, type: !1764)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !338, line: 816, column: 11)
!1889 = !DILocation(line: 817, column: 16, scope: !1888)
!1890 = !DILocalVariable(name: "msg", scope: !1888, file: !338, line: 818, type: !1771)
!1891 = !DILocation(line: 818, column: 17, scope: !1888)
!1892 = !DILocalVariable(name: "cmsg", scope: !1888, file: !338, line: 819, type: !301)
!1893 = !DILocation(line: 819, column: 19, scope: !1888)
!1894 = !DILocalVariable(name: "cmsgbuf", scope: !1888, file: !338, line: 820, type: !1895)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 192, align: 8, elements: !1786)
!1896 = !DILocation(line: 820, column: 17, scope: !1888)
!1897 = !DILocation(line: 822, column: 18, scope: !1888)
!1898 = !DILocation(line: 822, column: 7, scope: !1888)
!1899 = !DILocation(line: 822, column: 16, scope: !1888)
!1900 = !DILocation(line: 823, column: 17, scope: !1888)
!1901 = !DILocation(line: 823, column: 7, scope: !1888)
!1902 = !DILocation(line: 823, column: 15, scope: !1888)
!1903 = !DILocation(line: 825, column: 7, scope: !1888)
!1904 = !DILocation(line: 825, column: 16, scope: !1888)
!1905 = !DILocation(line: 826, column: 7, scope: !1888)
!1906 = !DILocation(line: 826, column: 19, scope: !1888)
!1907 = !DILocation(line: 827, column: 7, scope: !1888)
!1908 = !DILocation(line: 827, column: 15, scope: !1888)
!1909 = !DILocation(line: 828, column: 7, scope: !1888)
!1910 = !DILocation(line: 828, column: 18, scope: !1888)
!1911 = !DILocation(line: 829, column: 21, scope: !1888)
!1912 = !DILocation(line: 829, column: 7, scope: !1888)
!1913 = !DILocation(line: 829, column: 19, scope: !1888)
!1914 = !DILocation(line: 830, column: 7, scope: !1888)
!1915 = !DILocation(line: 830, column: 22, scope: !1888)
!1916 = !DILocation(line: 831, column: 3, scope: !1888)
!1917 = distinct !{!1917, !1916}
!1918 = !DILocation(line: 832, column: 16, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1888, file: !338, line: 831, column: 6)
!1920 = !DILocation(line: 832, column: 8, scope: !1919)
!1921 = !DILocation(line: 832, column: 6, scope: !1919)
!1922 = !DILocation(line: 833, column: 3, scope: !1919)
!1923 = !DILocation(line: 833, column: 12, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1888, file: !338, discriminator: 1)
!1925 = !DILocation(line: 833, column: 14, scope: !1924)
!1926 = !DILocation(line: 833, column: 20, scope: !1924)
!1927 = !DILocation(line: 833, column: 24, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1888, file: !338, discriminator: 2)
!1929 = !DILocation(line: 833, column: 23, scope: !1928)
!1930 = !DILocation(line: 833, column: 28, scope: !1928)
!1931 = !DILocation(line: 833, column: 3, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1919, file: !338, discriminator: 3)
!1933 = !DILocation(line: 834, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1888, file: !338, line: 834, column: 7)
!1935 = !DILocation(line: 834, column: 9, scope: !1934)
!1936 = !DILocation(line: 834, column: 7, scope: !1888)
!1937 = !DILocation(line: 835, column: 11, scope: !1934)
!1938 = !DILocation(line: 835, column: 4, scope: !1934)
!1939 = !DILocation(line: 836, column: 12, scope: !1888)
!1940 = !DILocation(line: 836, column: 27, scope: !1888)
!1941 = !DILocation(line: 836, column: 10, scope: !1888)
!1942 = !DILocation(line: 836, column: 12, scope: !1924)
!1943 = !DILocation(line: 836, column: 56, scope: !1924)
!1944 = !DILocation(line: 836, column: 10, scope: !1924)
!1945 = !DILocation(line: 836, column: 10, scope: !1928)
!1946 = !DILocation(line: 836, column: 10, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1888, file: !338, discriminator: 3)
!1948 = !DILocation(line: 836, column: 8, scope: !1947)
!1949 = !DILocation(line: 837, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1888, file: !338, line: 837, column: 7)
!1951 = !DILocation(line: 837, column: 12, scope: !1950)
!1952 = !DILocation(line: 837, column: 15, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1950, file: !338, discriminator: 1)
!1954 = !DILocation(line: 837, column: 21, scope: !1953)
!1955 = !DILocation(line: 837, column: 30, scope: !1953)
!1956 = !DILocation(line: 837, column: 7, scope: !1953)
!1957 = !DILocation(line: 838, column: 8, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !338, line: 838, column: 8)
!1959 = distinct !DILexicalBlock(scope: !1950, file: !338, line: 837, column: 55)
!1960 = !DILocation(line: 838, column: 14, scope: !1958)
!1961 = !DILocation(line: 838, column: 25, scope: !1958)
!1962 = !DILocation(line: 838, column: 8, scope: !1959)
!1963 = !DILocation(line: 839, column: 6, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !338, line: 838, column: 39)
!1965 = !DILocation(line: 839, column: 10, scope: !1964)
!1966 = !DILocation(line: 840, column: 5, scope: !1964)
!1967 = !DILocation(line: 842, column: 8, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1959, file: !338, line: 842, column: 8)
!1969 = !DILocation(line: 842, column: 14, scope: !1968)
!1970 = !DILocation(line: 842, column: 24, scope: !1968)
!1971 = !DILocation(line: 842, column: 8, scope: !1959)
!1972 = !DILocation(line: 843, column: 6, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !338, line: 842, column: 38)
!1974 = !DILocation(line: 843, column: 10, scope: !1973)
!1975 = !DILocation(line: 844, column: 5, scope: !1973)
!1976 = !DILocation(line: 846, column: 20, scope: !1959)
!1977 = !DILocation(line: 846, column: 23, scope: !1959)
!1978 = !DILocation(line: 846, column: 11, scope: !1959)
!1979 = !DILocation(line: 846, column: 5, scope: !1959)
!1980 = !DILocation(line: 846, column: 9, scope: !1959)
!1981 = !DILocation(line: 847, column: 3, scope: !1959)
!1982 = !DILocation(line: 848, column: 5, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1950, file: !338, line: 847, column: 10)
!1984 = !DILocation(line: 848, column: 9, scope: !1983)
!1985 = !DILocation(line: 850, column: 2, scope: !1888)
!1986 = !DILocation(line: 851, column: 3, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1885, file: !338, line: 850, column: 9)
!1988 = distinct !{!1988, !1986}
!1989 = !DILocation(line: 852, column: 13, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !338, line: 851, column: 6)
!1991 = !DILocation(line: 852, column: 19, scope: !1990)
!1992 = !DILocation(line: 852, column: 24, scope: !1990)
!1993 = !DILocation(line: 852, column: 8, scope: !1990)
!1994 = !DILocation(line: 852, column: 6, scope: !1990)
!1995 = !DILocation(line: 853, column: 3, scope: !1990)
!1996 = !DILocation(line: 853, column: 12, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1987, file: !338, discriminator: 1)
!1998 = !DILocation(line: 853, column: 14, scope: !1997)
!1999 = !DILocation(line: 853, column: 20, scope: !1997)
!2000 = !DILocation(line: 853, column: 24, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1987, file: !338, discriminator: 2)
!2002 = !DILocation(line: 853, column: 23, scope: !2001)
!2003 = !DILocation(line: 853, column: 28, scope: !2001)
!2004 = !DILocation(line: 853, column: 3, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1990, file: !338, discriminator: 3)
!2006 = !DILocation(line: 855, column: 9, scope: !1871)
!2007 = !DILocation(line: 855, column: 2, scope: !1871)
!2008 = !DILocation(line: 856, column: 1, scope: !1871)
!2009 = distinct !DISubprogram(name: "sys_dump_fds", scope: !338, file: !338, line: 890, type: !2010, isLocal: false, isDefinition: true, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null}
!2012 = !DILocalVariable(name: "maxfd", scope: !2009, file: !338, line: 892, type: !291)
!2013 = !DILocation(line: 892, column: 6, scope: !2009)
!2014 = !DILocation(line: 901, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2009, file: !338, line: 901, column: 6)
!2016 = !DILocation(line: 901, column: 13, scope: !2015)
!2017 = !DILocation(line: 901, column: 26, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2015, file: !338, discriminator: 1)
!2019 = !DILocation(line: 901, column: 24, scope: !2018)
!2020 = !DILocation(line: 901, column: 48, scope: !2018)
!2021 = !DILocation(line: 901, column: 6, scope: !2018)
!2022 = !DILocation(line: 902, column: 10, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2015, file: !338, line: 901, column: 56)
!2024 = !DILocation(line: 903, column: 29, scope: !2023)
!2025 = !DILocation(line: 903, column: 28, scope: !2023)
!2026 = !DILocation(line: 903, column: 19, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2023, file: !338, discriminator: 1)
!2028 = !DILocation(line: 903, column: 37, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2023, file: !338, discriminator: 2)
!2030 = !DILocation(line: 903, column: 36, scope: !2023)
!2031 = !DILocation(line: 902, column: 3, scope: !2023)
!2032 = !DILocation(line: 904, column: 2, scope: !2023)
!2033 = !DILocation(line: 906, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2009, file: !338, line: 906, column: 6)
!2035 = !DILocation(line: 906, column: 6, scope: !2009)
!2036 = !DILocation(line: 907, column: 9, scope: !2034)
!2037 = !DILocation(line: 907, column: 3, scope: !2034)
!2038 = !DILocalVariable(name: "fd", scope: !2039, file: !338, line: 909, type: !291)
!2039 = distinct !DILexicalBlock(scope: !2009, file: !338, line: 909, column: 2)
!2040 = !DILocation(line: 909, column: 11, scope: !2039)
!2041 = !DILocation(line: 909, column: 7, scope: !2039)
!2042 = !DILocation(line: 909, column: 19, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !2044, file: !338, discriminator: 1)
!2044 = distinct !DILexicalBlock(scope: !2039, file: !338, line: 909, column: 2)
!2045 = !DILocation(line: 909, column: 25, scope: !2043)
!2046 = !DILocation(line: 909, column: 22, scope: !2043)
!2047 = !DILocation(line: 909, column: 2, scope: !2043)
!2048 = !DILocalVariable(name: "st", scope: !2049, file: !338, line: 910, type: !1321)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !338, line: 909, column: 38)
!2050 = !DILocation(line: 910, column: 15, scope: !2049)
!2051 = !DILocation(line: 912, column: 13, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !338, line: 912, column: 7)
!2053 = !DILocation(line: 912, column: 7, scope: !2052)
!2054 = !DILocation(line: 912, column: 22, scope: !2052)
!2055 = !DILocation(line: 912, column: 7, scope: !2049)
!2056 = !DILocation(line: 913, column: 4, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !338, line: 912, column: 29)
!2058 = !DILocation(line: 916, column: 18, scope: !2049)
!2059 = !DILocation(line: 916, column: 3, scope: !2049)
!2060 = !DILocation(line: 917, column: 14, scope: !2049)
!2061 = !DILocation(line: 917, column: 22, scope: !2049)
!2062 = !DILocation(line: 917, column: 3, scope: !2049)
!2063 = !DILocation(line: 918, column: 16, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2049, file: !338, line: 917, column: 31)
!2065 = !DILocation(line: 918, column: 35, scope: !2064)
!2066 = !DILocation(line: 919, column: 16, scope: !2064)
!2067 = !DILocation(line: 919, column: 35, scope: !2064)
!2068 = !DILocation(line: 920, column: 16, scope: !2064)
!2069 = !DILocation(line: 920, column: 35, scope: !2064)
!2070 = !DILocation(line: 921, column: 16, scope: !2064)
!2071 = !DILocation(line: 921, column: 35, scope: !2064)
!2072 = !DILocation(line: 922, column: 16, scope: !2064)
!2073 = !DILocation(line: 922, column: 35, scope: !2064)
!2074 = !DILocation(line: 923, column: 16, scope: !2064)
!2075 = !DILocation(line: 923, column: 35, scope: !2064)
!2076 = !DILocation(line: 924, column: 17, scope: !2064)
!2077 = !DILocation(line: 924, column: 36, scope: !2064)
!2078 = !DILocation(line: 925, column: 12, scope: !2064)
!2079 = !DILocation(line: 925, column: 31, scope: !2064)
!2080 = !DILocation(line: 928, column: 11, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2049, file: !338, line: 928, column: 7)
!2082 = !DILocation(line: 928, column: 19, scope: !2081)
!2083 = !DILocation(line: 928, column: 28, scope: !2081)
!2084 = !DILocation(line: 928, column: 7, scope: !2049)
!2085 = !DILocalVariable(name: "lrv", scope: !2086, file: !338, line: 929, type: !291)
!2086 = distinct !DILexicalBlock(scope: !2081, file: !338, line: 928, column: 41)
!2087 = !DILocation(line: 929, column: 8, scope: !2086)
!2088 = !DILocalVariable(name: "frv", scope: !2086, file: !338, line: 929, type: !291)
!2089 = !DILocation(line: 929, column: 13, scope: !2086)
!2090 = !DILocalVariable(name: "arv", scope: !2086, file: !338, line: 929, type: !291)
!2091 = !DILocation(line: 929, column: 18, scope: !2086)
!2092 = !DILocalVariable(name: "lss", scope: !2086, file: !338, line: 930, type: !1037)
!2093 = !DILocation(line: 930, column: 28, scope: !2086)
!2094 = !DILocalVariable(name: "fss", scope: !2086, file: !338, line: 930, type: !1037)
!2095 = !DILocation(line: 930, column: 33, scope: !2086)
!2096 = !DILocalVariable(name: "lsslen", scope: !2086, file: !338, line: 931, type: !1046)
!2097 = !DILocation(line: 931, column: 14, scope: !2086)
!2098 = !DILocalVariable(name: "fsslen", scope: !2086, file: !338, line: 932, type: !1046)
!2099 = !DILocation(line: 932, column: 14, scope: !2086)
!2100 = !DILocalVariable(name: "laddrstr", scope: !2086, file: !338, line: 933, type: !341)
!2101 = !DILocation(line: 933, column: 10, scope: !2086)
!2102 = !DILocalVariable(name: "faddrstr", scope: !2086, file: !338, line: 933, type: !341)
!2103 = !DILocation(line: 933, column: 21, scope: !2086)
!2104 = !DILocation(line: 935, column: 22, scope: !2086)
!2105 = !DILocation(line: 935, column: 26, scope: !2086)
!2106 = !DILocation(line: 935, column: 10, scope: !2086)
!2107 = !DILocation(line: 935, column: 8, scope: !2086)
!2108 = !DILocation(line: 936, column: 22, scope: !2086)
!2109 = !DILocation(line: 936, column: 26, scope: !2086)
!2110 = !DILocation(line: 936, column: 10, scope: !2086)
!2111 = !DILocation(line: 936, column: 8, scope: !2086)
!2112 = !DILocation(line: 938, column: 16, scope: !2086)
!2113 = !DILocation(line: 938, column: 12, scope: !2086)
!2114 = !DILocation(line: 938, column: 4, scope: !2086)
!2115 = !DILocation(line: 941, column: 9, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !338, line: 941, column: 9)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !338, line: 940, column: 18)
!2118 = distinct !DILexicalBlock(scope: !2086, file: !338, line: 938, column: 27)
!2119 = !DILocation(line: 941, column: 13, scope: !2116)
!2120 = !DILocation(line: 941, column: 9, scope: !2117)
!2121 = !DILocalVariable(name: "host", scope: !2122, file: !338, line: 942, type: !341)
!2122 = distinct !DILexicalBlock(scope: !2116, file: !338, line: 941, column: 19)
!2123 = !DILocation(line: 942, column: 12, scope: !2122)
!2124 = !DILocalVariable(name: "port", scope: !2122, file: !338, line: 942, type: !341)
!2125 = !DILocation(line: 942, column: 19, scope: !2122)
!2126 = !DILocation(line: 944, column: 14, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !338, line: 943, column: 10)
!2128 = !DILocation(line: 945, column: 14, scope: !2127)
!2129 = !DILocation(line: 943, column: 10, scope: !2127)
!2130 = !DILocation(line: 946, column: 28, scope: !2127)
!2131 = !DILocation(line: 943, column: 10, scope: !2122)
!2132 = !DILocation(line: 947, column: 18, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2127, file: !338, line: 946, column: 34)
!2134 = !DILocation(line: 947, column: 16, scope: !2133)
!2135 = !DILocation(line: 948, column: 6, scope: !2133)
!2136 = !DILocation(line: 951, column: 22, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2127, file: !338, line: 948, column: 13)
!2138 = !DILocation(line: 951, column: 28, scope: !2137)
!2139 = !DILocation(line: 949, column: 13, scope: !2137)
!2140 = !DILocation(line: 949, column: 11, scope: !2137)
!2141 = !DILocation(line: 952, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !338, line: 952, column: 11)
!2143 = !DILocation(line: 952, column: 15, scope: !2142)
!2144 = !DILocation(line: 952, column: 11, scope: !2137)
!2145 = !DILocation(line: 953, column: 17, scope: !2142)
!2146 = !DILocation(line: 953, column: 8, scope: !2142)
!2147 = !DILocation(line: 954, column: 12, scope: !2137)
!2148 = !DILocation(line: 954, column: 7, scope: !2137)
!2149 = !DILocation(line: 955, column: 12, scope: !2137)
!2150 = !DILocation(line: 955, column: 7, scope: !2137)
!2151 = !DILocation(line: 957, column: 5, scope: !2122)
!2152 = !DILocation(line: 958, column: 17, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2116, file: !338, line: 957, column: 12)
!2154 = !DILocation(line: 958, column: 15, scope: !2153)
!2155 = !DILocation(line: 960, column: 9, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2117, file: !338, line: 960, column: 9)
!2157 = !DILocation(line: 960, column: 13, scope: !2156)
!2158 = !DILocation(line: 960, column: 9, scope: !2117)
!2159 = !DILocalVariable(name: "host", scope: !2160, file: !338, line: 961, type: !341)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !338, line: 960, column: 19)
!2161 = !DILocation(line: 961, column: 12, scope: !2160)
!2162 = !DILocalVariable(name: "port", scope: !2160, file: !338, line: 961, type: !341)
!2163 = !DILocation(line: 961, column: 19, scope: !2160)
!2164 = !DILocation(line: 963, column: 14, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !338, line: 962, column: 10)
!2166 = !DILocation(line: 964, column: 14, scope: !2165)
!2167 = !DILocation(line: 962, column: 10, scope: !2165)
!2168 = !DILocation(line: 965, column: 28, scope: !2165)
!2169 = !DILocation(line: 962, column: 10, scope: !2160)
!2170 = !DILocation(line: 966, column: 18, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2165, file: !338, line: 965, column: 34)
!2172 = !DILocation(line: 966, column: 16, scope: !2171)
!2173 = !DILocation(line: 967, column: 6, scope: !2171)
!2174 = !DILocation(line: 970, column: 22, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2165, file: !338, line: 967, column: 13)
!2176 = !DILocation(line: 970, column: 28, scope: !2175)
!2177 = !DILocation(line: 968, column: 13, scope: !2175)
!2178 = !DILocation(line: 968, column: 11, scope: !2175)
!2179 = !DILocation(line: 971, column: 11, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2175, file: !338, line: 971, column: 11)
!2181 = !DILocation(line: 971, column: 15, scope: !2180)
!2182 = !DILocation(line: 971, column: 11, scope: !2175)
!2183 = !DILocation(line: 972, column: 17, scope: !2180)
!2184 = !DILocation(line: 972, column: 8, scope: !2180)
!2185 = !DILocation(line: 973, column: 12, scope: !2175)
!2186 = !DILocation(line: 973, column: 7, scope: !2175)
!2187 = !DILocation(line: 974, column: 12, scope: !2175)
!2188 = !DILocation(line: 974, column: 7, scope: !2175)
!2189 = !DILocation(line: 976, column: 5, scope: !2160)
!2190 = !DILocation(line: 977, column: 17, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2156, file: !338, line: 976, column: 12)
!2192 = !DILocation(line: 977, column: 15, scope: !2191)
!2193 = !DILocation(line: 980, column: 16, scope: !2117)
!2194 = !DILocation(line: 980, column: 12, scope: !2117)
!2195 = !DILocation(line: 980, column: 26, scope: !2117)
!2196 = !DILocation(line: 981, column: 12, scope: !2117)
!2197 = !DILocation(line: 981, column: 22, scope: !2117)
!2198 = !DILocation(line: 979, column: 5, scope: !2117)
!2199 = !DILocation(line: 982, column: 10, scope: !2117)
!2200 = !DILocation(line: 982, column: 5, scope: !2117)
!2201 = !DILocation(line: 983, column: 10, scope: !2117)
!2202 = !DILocation(line: 983, column: 5, scope: !2117)
!2203 = !DILocation(line: 984, column: 5, scope: !2117)
!2204 = !DILocation(line: 987, column: 9, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !338, line: 987, column: 9)
!2206 = distinct !DILexicalBlock(scope: !2118, file: !338, line: 986, column: 17)
!2207 = !DILocation(line: 987, column: 13, scope: !2205)
!2208 = !DILocation(line: 987, column: 9, scope: !2206)
!2209 = !DILocation(line: 988, column: 32, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2205, file: !338, line: 987, column: 19)
!2211 = !DILocation(line: 988, column: 57, scope: !2210)
!2212 = !DILocation(line: 988, column: 17, scope: !2210)
!2213 = !DILocation(line: 988, column: 15, scope: !2210)
!2214 = !DILocation(line: 989, column: 5, scope: !2210)
!2215 = !DILocation(line: 990, column: 17, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2205, file: !338, line: 989, column: 12)
!2217 = !DILocation(line: 990, column: 15, scope: !2216)
!2218 = !DILocation(line: 992, column: 9, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2206, file: !338, line: 992, column: 9)
!2220 = !DILocation(line: 992, column: 13, scope: !2219)
!2221 = !DILocation(line: 992, column: 9, scope: !2206)
!2222 = !DILocation(line: 993, column: 32, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !338, line: 992, column: 19)
!2224 = !DILocation(line: 993, column: 57, scope: !2223)
!2225 = !DILocation(line: 993, column: 17, scope: !2223)
!2226 = !DILocation(line: 993, column: 15, scope: !2223)
!2227 = !DILocation(line: 994, column: 5, scope: !2223)
!2228 = !DILocation(line: 995, column: 17, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2219, file: !338, line: 994, column: 12)
!2230 = !DILocation(line: 995, column: 15, scope: !2229)
!2231 = !DILocation(line: 997, column: 32, scope: !2206)
!2232 = !DILocation(line: 997, column: 42, scope: !2206)
!2233 = !DILocation(line: 997, column: 5, scope: !2206)
!2234 = !DILocation(line: 998, column: 10, scope: !2206)
!2235 = !DILocation(line: 998, column: 5, scope: !2206)
!2236 = !DILocation(line: 999, column: 10, scope: !2206)
!2237 = !DILocation(line: 999, column: 5, scope: !2206)
!2238 = !DILocation(line: 1000, column: 5, scope: !2206)
!2239 = !DILocation(line: 1003, column: 5, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2118, file: !338, line: 1002, column: 19)
!2241 = !DILocation(line: 1004, column: 5, scope: !2240)
!2242 = !DILocation(line: 1007, column: 25, scope: !2118)
!2243 = !DILocation(line: 1007, column: 21, scope: !2118)
!2244 = !DILocation(line: 1007, column: 5, scope: !2118)
!2245 = !DILocation(line: 1008, column: 4, scope: !2118)
!2246 = !DILocation(line: 1009, column: 3, scope: !2086)
!2247 = !DILocation(line: 1010, column: 3, scope: !2049)
!2248 = !DILocation(line: 1011, column: 2, scope: !2049)
!2249 = !DILocation(line: 909, column: 34, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2044, file: !338, discriminator: 2)
!2251 = !DILocation(line: 909, column: 2, scope: !2250)
!2252 = distinct !{!2252, !2253}
!2253 = !DILocation(line: 909, column: 2, scope: !2009)
!2254 = !DILocation(line: 1012, column: 1, scope: !2009)
!2255 = distinct !DISubprogram(name: "sys_afunix_str", scope: !338, file: !338, line: 863, type: !2256, isLocal: true, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!341, !313, !1046}
!2258 = !DILocalVariable(name: "addr", arg: 1, scope: !2255, file: !338, line: 863, type: !313)
!2259 = !DILocation(line: 863, column: 33, scope: !2255)
!2260 = !DILocalVariable(name: "addrlen", arg: 2, scope: !2255, file: !338, line: 863, type: !1046)
!2261 = !DILocation(line: 863, column: 49, scope: !2255)
!2262 = !DILocalVariable(name: "sun", scope: !2255, file: !338, line: 865, type: !325)
!2263 = !DILocation(line: 865, column: 22, scope: !2255)
!2264 = !DILocation(line: 865, column: 50, scope: !2255)
!2265 = !DILocation(line: 865, column: 28, scope: !2255)
!2266 = !DILocalVariable(name: "name", scope: !2255, file: !338, line: 866, type: !341)
!2267 = !DILocation(line: 866, column: 8, scope: !2255)
!2268 = !DILocalVariable(name: "rv", scope: !2255, file: !338, line: 867, type: !291)
!2269 = !DILocation(line: 867, column: 6, scope: !2255)
!2270 = !DILocation(line: 869, column: 6, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2255, file: !338, line: 869, column: 6)
!2272 = !DILocation(line: 869, column: 14, scope: !2271)
!2273 = !DILocation(line: 869, column: 6, scope: !2255)
!2274 = !DILocation(line: 870, column: 8, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !338, line: 869, column: 38)
!2276 = !DILocation(line: 870, column: 6, scope: !2275)
!2277 = !DILocation(line: 871, column: 2, scope: !2275)
!2278 = !DILocation(line: 871, column: 13, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2280, file: !338, discriminator: 1)
!2280 = distinct !DILexicalBlock(scope: !2271, file: !338, line: 871, column: 13)
!2281 = !DILocation(line: 871, column: 18, scope: !2279)
!2282 = !DILocation(line: 871, column: 30, scope: !2279)
!2283 = !DILocation(line: 874, column: 24, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !338, line: 871, column: 39)
!2285 = !DILocation(line: 874, column: 29, scope: !2284)
!2286 = !DILocation(line: 875, column: 24, scope: !2284)
!2287 = !DILocation(line: 875, column: 29, scope: !2284)
!2288 = !DILocation(line: 876, column: 24, scope: !2284)
!2289 = !DILocation(line: 876, column: 29, scope: !2284)
!2290 = !DILocation(line: 877, column: 24, scope: !2284)
!2291 = !DILocation(line: 877, column: 29, scope: !2284)
!2292 = !DILocation(line: 873, column: 8, scope: !2284)
!2293 = !DILocation(line: 873, column: 6, scope: !2284)
!2294 = !DILocation(line: 878, column: 2, scope: !2284)
!2295 = !DILocation(line: 879, column: 36, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2280, file: !338, line: 878, column: 9)
!2297 = !DILocation(line: 879, column: 41, scope: !2296)
!2298 = !DILocation(line: 879, column: 8, scope: !2296)
!2299 = !DILocation(line: 879, column: 6, scope: !2296)
!2300 = !DILocation(line: 881, column: 6, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2255, file: !338, line: 881, column: 6)
!2302 = !DILocation(line: 881, column: 9, scope: !2301)
!2303 = !DILocation(line: 881, column: 6, scope: !2255)
!2304 = !DILocation(line: 882, column: 8, scope: !2301)
!2305 = !DILocation(line: 882, column: 3, scope: !2301)
!2306 = !DILocation(line: 883, column: 9, scope: !2255)
!2307 = !DILocation(line: 883, column: 2, scope: !2255)
!2308 = distinct !DISubprogram(name: "sys_rand16", scope: !338, file: !338, line: 1029, type: !2309, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !1749, line: 49, baseType: !319)
!2312 = !DILocation(line: 1030, column: 25, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2308, file: !338, line: 1030, column: 6)
!2314 = !DILocation(line: 1030, column: 24, scope: !2313)
!2315 = !DILocation(line: 1030, column: 23, scope: !2313)
!2316 = !DILocation(line: 1030, column: 6, scope: !2313)
!2317 = !DILocation(line: 1030, column: 6, scope: !2308)
!2318 = !DILocation(line: 1031, column: 3, scope: !2313)
!2319 = !DILocation(line: 1032, column: 9, scope: !2308)
!2320 = !DILocation(line: 1032, column: 2, scope: !2308)
!2321 = distinct !DISubprogram(name: "sys_rand_seed", scope: !338, file: !338, line: 1017, type: !2010, isLocal: true, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!2322 = !DILocalVariable(name: "seed", scope: !2321, file: !338, line: 1018, type: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !2324, line: 30, size: 128, align: 64, elements: !2325)
!2324 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!2325 = !{!2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2323, file: !2324, line: 32, baseType: !1347, size: 64, align: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !2323, file: !2324, line: 33, baseType: !2328, size: 64, align: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !295, line: 141, baseType: !296)
!2329 = !DILocation(line: 1018, column: 17, scope: !2321)
!2330 = !DILocation(line: 1020, column: 6, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2321, file: !338, line: 1020, column: 6)
!2332 = !DILocation(line: 1020, column: 31, scope: !2331)
!2333 = !DILocation(line: 1020, column: 6, scope: !2321)
!2334 = !DILocation(line: 1021, column: 21, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !338, line: 1020, column: 38)
!2336 = !DILocation(line: 1021, column: 11, scope: !2335)
!2337 = !DILocation(line: 1021, column: 3, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2335, file: !338, discriminator: 1)
!2339 = !DILocation(line: 1022, column: 2, scope: !2335)
!2340 = !DILocation(line: 1023, column: 27, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2331, file: !338, line: 1022, column: 9)
!2342 = !DILocation(line: 1023, column: 41, scope: !2341)
!2343 = !DILocation(line: 1023, column: 34, scope: !2341)
!2344 = !DILocation(line: 1023, column: 11, scope: !2341)
!2345 = !DILocation(line: 1023, column: 3, scope: !2341)
!2346 = !DILocation(line: 1025, column: 18, scope: !2321)
!2347 = !DILocation(line: 1026, column: 1, scope: !2321)
!2348 = distinct !DISubprogram(name: "sys_rand32", scope: !338, file: !338, line: 1036, type: !1746, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !344)
!2349 = !DILocation(line: 1037, column: 25, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2348, file: !338, line: 1037, column: 6)
!2351 = !DILocation(line: 1037, column: 24, scope: !2350)
!2352 = !DILocation(line: 1037, column: 23, scope: !2350)
!2353 = !DILocation(line: 1037, column: 6, scope: !2350)
!2354 = !DILocation(line: 1037, column: 6, scope: !2348)
!2355 = !DILocation(line: 1038, column: 3, scope: !2350)
!2356 = !DILocation(line: 1039, column: 9, scope: !2348)
!2357 = !DILocation(line: 1039, column: 2, scope: !2348)
