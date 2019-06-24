; ModuleID = './procMgrPosix.o.i'
source_filename = "./procMgrPosix.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DynBuf = type { i8*, i64, i64 }
%struct.DynArray = type { %struct.DynBuf, i64 }
%struct.ProcMgrProcInfo = type { i32, i8*, i8*, i8*, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.ProcMgr_ProcArgs = type { i8**, i8* }
%struct.ProcMgr_AsyncProc = type { i32, i32, i32, i8, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ProcMgr_ListProcesses.hostStartTime = internal global i64 0, align 8
@ProcMgr_ListProcesses.hertz = internal global i64 100, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"ProcMgr_ListProcesses unable to open /proc\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"/proc/%s/cmdline\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Giant process id '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"/proc/%s/status\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"/proc/%s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"/proc/%s/stat\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"%c %d %d %d %d %d %lu %lu %lu %lu %lu %Lu %Lu %Lu %Lu %ld %ld %d %ld %Lu\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"%s: failed to expand DynArray - out of memory\0A\00", align 1
@__FUNCTION__.ProcMgr_ListProcesses = private unnamed_addr constant [22 x i8] c"ProcMgr_ListProcesses\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Executed sync command: %s -> %d (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"Executing async command: '%s' in working dir '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Unable to create the pipe to launch command: %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Unable to fork: %s.\0A\0A\00", align 1
@cSignals = internal constant [6 x i32] [i32 1, i32 2, i32 3, i32 15, i32 10, i32 12], align 16
@.str.20 = private unnamed_addr constant [40 x i8] c"Waiter unable to write back to parent.\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Writing the command %s a success to fd %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"was\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"was not\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Waiter unable to write back to parent\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Unable to read result pid from the pipe.\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"The child failed to fork the target process.\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Error reading async process status.\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Child w/ fd %x exited with code=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"Waiting on pid %d to de-zombify it\0A\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"Failed to convert user name %s to local character set.\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Failed to set gid for user %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Failed to initgroups() for user %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Failed to set uid for user %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"Failed to set uid for root\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Failed to set gid for root\0A\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Failed to initgroups() for root\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"Executing sync command: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"Could not convert from UTF-8 to current\0A\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"Could not convert workingDir from UTF-8 to current\0A\00", align 1
@ProcMgrStartProcess.bashShellPath = internal constant [10 x i8] c"/bin/bash\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"bash\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@ProcMgrStartProcess.bourneShellPath = internal constant [8 x i8] c"/bin/sh\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"%s: Could not chdir(%s) %s\0A\00", align 1
@__FUNCTION__.ProcMgrStartProcess = private unnamed_addr constant [20 x i8] c"ProcMgrStartProcess\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"Unable to execute the \22%s\22 shell command: %s.\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"Unable to wait for the process %d to terminate: %s.\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Done waiting for process: %d (%s)\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"Error trying to kill process %d with signal %d: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"Process %d is not a child, still running\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Error trying to wait on process %d: %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"Process %d died from signal %d on iteration #%d\0A\00", align 1
@.str.56 = private unnamed_addr constant [52 x i8] c"%s: timed out trying to kill pid %d with signal %d\0A\00", align 1
@__FUNCTION__.ProcMgrKill = private unnamed_addr constant [12 x i8] c"ProcMgrKill\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ProcMgr_ReadProcFile(i32, i8**) #0 !dbg !650 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.DynBuf, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !654, metadata !655), !dbg !656
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !657, metadata !655), !dbg !658
  call void @llvm.dbg.declare(metadata i32* %5, metadata !659, metadata !655), !dbg !660
  store i32 0, i32* %5, align 4, !dbg !660
  call void @llvm.dbg.declare(metadata [512 x i8]* %6, metadata !661, metadata !655), !dbg !665
  call void @llvm.dbg.declare(metadata i32* %7, metadata !666, metadata !655), !dbg !667
  %10 = load i8**, i8*** %4, align 8, !dbg !668
  store i8* null, i8** %10, align 8, !dbg !669
  %11 = load i32, i32* %3, align 4, !dbg !670
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !671
  %13 = call i64 @read(i32 %11, i8* %12, i64 512), !dbg !672
  %14 = trunc i64 %13 to i32, !dbg !672
  store i32 %14, i32* %7, align 4, !dbg !673
  %15 = load i32, i32* %7, align 4, !dbg !674
  store i32 %15, i32* %5, align 4, !dbg !675
  %16 = load i32, i32* %7, align 4, !dbg !676
  %17 = icmp sle i32 %16, 0, !dbg !678
  br i1 %17, label %18, label %19, !dbg !679

; <label>:18:                                     ; preds = %2
  br label %72, !dbg !680

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %7, align 4, !dbg !682
  %21 = sext i32 %20 to i64, !dbg !682
  %22 = icmp ugt i64 512, %21, !dbg !684
  br i1 %22, label %23, label %42, !dbg !685

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i8** %8, metadata !686, metadata !655), !dbg !688
  %24 = load i32, i32* %7, align 4, !dbg !689
  %25 = add nsw i32 %24, 1, !dbg !690
  %26 = sext i32 %25 to i64, !dbg !689
  %27 = call noalias i8* @malloc(i64 %26) #10, !dbg !691
  store i8* %27, i8** %8, align 8, !dbg !692
  %28 = load i8*, i8** %8, align 8, !dbg !693
  %29 = icmp eq i8* null, %28, !dbg !695
  br i1 %29, label %30, label %31, !dbg !696

; <label>:30:                                     ; preds = %23
  store i32 -1, i32* %5, align 4, !dbg !697
  br label %72, !dbg !699

; <label>:31:                                     ; preds = %23
  %32 = load i8*, i8** %8, align 8, !dbg !700
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !701
  %34 = load i32, i32* %7, align 4, !dbg !702
  %35 = sext i32 %34 to i64, !dbg !702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 %35, i32 1, i1 false), !dbg !701
  %36 = load i32, i32* %7, align 4, !dbg !703
  %37 = sext i32 %36 to i64, !dbg !704
  %38 = load i8*, i8** %8, align 8, !dbg !704
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !704
  store i8 0, i8* %39, align 1, !dbg !705
  %40 = load i8*, i8** %8, align 8, !dbg !706
  %41 = load i8**, i8*** %4, align 8, !dbg !707
  store i8* %40, i8** %41, align 8, !dbg !708
  br label %72, !dbg !709

; <label>:42:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !710, metadata !655), !dbg !712
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !713
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !714
  %44 = load i32, i32* %7, align 4, !dbg !715
  %45 = sext i32 %44 to i64, !dbg !715
  %46 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %43, i64 %45), !dbg !716
  br label %47, !dbg !717, !llvm.loop !718

; <label>:47:                                     ; preds = %63, %42
  %48 = load i32, i32* %3, align 4, !dbg !719
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !721
  %50 = call i64 @read(i32 %48, i8* %49, i64 512), !dbg !722
  %51 = trunc i64 %50 to i32, !dbg !722
  store i32 %51, i32* %7, align 4, !dbg !723
  %52 = load i32, i32* %7, align 4, !dbg !724
  %53 = icmp sgt i32 %52, 0, !dbg !726
  br i1 %53, label %54, label %59, !dbg !727

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i32 0, i32 0, !dbg !728
  %56 = load i32, i32* %7, align 4, !dbg !730
  %57 = sext i32 %56 to i64, !dbg !730
  %58 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %55, i64 %57), !dbg !731
  br label %59, !dbg !732

; <label>:59:                                     ; preds = %54, %47
  %60 = load i32, i32* %7, align 4, !dbg !733
  %61 = load i32, i32* %5, align 4, !dbg !734
  %62 = add nsw i32 %61, %60, !dbg !734
  store i32 %62, i32* %5, align 4, !dbg !734
  br label %63, !dbg !735

; <label>:63:                                     ; preds = %59
  %64 = load i32, i32* %7, align 4, !dbg !736
  %65 = icmp sgt i32 %64, 0, !dbg !738
  br i1 %65, label %47, label %66, !dbg !739, !llvm.loop !718

; <label>:66:                                     ; preds = %63
  %67 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !740
  %68 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %9), !dbg !741
  %69 = call i8* @DynBuf_Detach(%struct.DynBuf* %9), !dbg !742
  %70 = load i8**, i8*** %4, align 8, !dbg !743
  store i8* %69, i8** %70, align 8, !dbg !744
  call void @DynBuf_Destroy(%struct.DynBuf* %9), !dbg !745
  br label %71

; <label>:71:                                     ; preds = %66
  br label %72, !dbg !746

; <label>:72:                                     ; preds = %71, %31, %30, %18
  %73 = load i32, i32* %5, align 4, !dbg !748
  ret i32 %73, !dbg !749
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @DynBuf_Init(%struct.DynBuf*) #2

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #2

declare signext i8 @DynBuf_Trim(%struct.DynBuf*) #2

declare i8* @DynBuf_Detach(%struct.DynBuf*) #2

declare void @DynBuf_Destroy(%struct.DynBuf*) #2

; Function Attrs: nounwind uwtable
define %struct.DynArray* @ProcMgr_ListProcesses() #0 !dbg !619 {
  %1 = alloca %struct.DynArray*, align 8
  %2 = alloca %struct.ProcMgrProcInfo, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.__dirstream*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.passwd*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %1, metadata !750, metadata !655), !dbg !751
  store %struct.DynArray* null, %struct.DynArray** %1, align 8, !dbg !751
  call void @llvm.dbg.declare(metadata %struct.ProcMgrProcInfo* %2, metadata !752, metadata !655), !dbg !753
  call void @llvm.dbg.declare(metadata i8* %3, metadata !754, metadata !655), !dbg !756
  store i8 1, i8* %3, align 1, !dbg !756
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %4, metadata !757, metadata !655), !dbg !762
  call void @llvm.dbg.declare(metadata %struct.dirent** %5, metadata !763, metadata !655), !dbg !779
  call void @llvm.dbg.declare(metadata i32* %6, metadata !780, metadata !655), !dbg !781
  %28 = call i8* @UtilSafeCalloc0(i64 1, i64 32), !dbg !782
  %29 = bitcast i8* %28 to %struct.DynArray*, !dbg !782
  store %struct.DynArray* %29, %struct.DynArray** %1, align 8, !dbg !783
  %30 = load %struct.DynArray*, %struct.DynArray** %1, align 8, !dbg !784
  %31 = call signext i8 @ProcMgrProcInfoArray_Init(%struct.DynArray* %30, i32 0), !dbg !785
  %32 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 1, !dbg !786
  store i8* null, i8** %32, align 8, !dbg !787
  %33 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 2, !dbg !788
  store i8* null, i8** %33, align 8, !dbg !789
  %34 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 3, !dbg !790
  store i8* null, i8** %34, align 8, !dbg !791
  %35 = load i64, i64* @ProcMgr_ListProcesses.hostStartTime, align 8, !dbg !792
  %36 = icmp eq i64 0, %35, !dbg !794
  br i1 %36, label %37, label %62, !dbg !795

; <label>:37:                                     ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !796, metadata !655), !dbg !850
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8, !dbg !850
  %38 = call %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !851
  store %struct._IO_FILE* %38, %struct._IO_FILE** %7, align 8, !dbg !852
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !853
  %40 = icmp ne %struct._IO_FILE* null, %39, !dbg !855
  br i1 %40, label %41, label %61, !dbg !856

; <label>:41:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata double* %8, metadata !857, metadata !655), !dbg !860
  call void @llvm.dbg.declare(metadata i8** %9, metadata !861, metadata !655), !dbg !862
  call void @llvm.dbg.declare(metadata i8** %10, metadata !863, metadata !655), !dbg !864
  %42 = call i8* @setlocale(i32 1, i8* null) #10, !dbg !865
  store i8* %42, i8** %9, align 8, !dbg !866
  %43 = load i8*, i8** %9, align 8, !dbg !867
  %44 = call i8* @UtilSafeStrdup0(i8* %43), !dbg !868
  store i8* %44, i8** %10, align 8, !dbg !869
  %45 = call i8* @setlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #10, !dbg !870
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !871
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), double* %8), !dbg !872
  store i32 %47, i32* %6, align 4, !dbg !873
  %48 = load i8*, i8** %10, align 8, !dbg !874
  %49 = call i8* @setlocale(i32 1, i8* %48) #10, !dbg !875
  %50 = load i8*, i8** %10, align 8, !dbg !876
  call void @free(i8* %50) #10, !dbg !877
  %51 = load i32, i32* %6, align 4, !dbg !878
  %52 = icmp ne i32 %51, 0, !dbg !878
  br i1 %52, label %53, label %58, !dbg !880

; <label>:53:                                     ; preds = %41
  %54 = call i64 @time(i64* null) #10, !dbg !881
  %55 = load double, double* %8, align 8, !dbg !883
  %56 = fptosi double %55 to i64, !dbg !884
  %57 = sub nsw i64 %54, %56, !dbg !885
  store i64 %57, i64* @ProcMgr_ListProcesses.hostStartTime, align 8, !dbg !886
  br label %58, !dbg !887

; <label>:58:                                     ; preds = %53, %41
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !888
  %60 = call i32 @fclose(%struct._IO_FILE* %59), !dbg !889
  br label %61, !dbg !890

; <label>:61:                                     ; preds = %58, %37
  store i64 100, i64* @ProcMgr_ListProcesses.hertz, align 8, !dbg !891
  br label %62, !dbg !892

; <label>:62:                                     ; preds = %61, %0
  %63 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)), !dbg !893
  store %struct.__dirstream* %63, %struct.__dirstream** %4, align 8, !dbg !894
  %64 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8, !dbg !895
  %65 = icmp eq %struct.__dirstream* null, %64, !dbg !897
  br i1 %65, label %66, label %67, !dbg !898

; <label>:66:                                     ; preds = %62
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0)), !dbg !899
  br label %370, !dbg !901

; <label>:67:                                     ; preds = %62
  br label %68, !dbg !902

; <label>:68:                                     ; preds = %361, %107, %99, %90, %82, %67
  %69 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8, !dbg !903
  %70 = call %struct.dirent* @readdir64(%struct.__dirstream* %69), !dbg !905
  store %struct.dirent* %70, %struct.dirent** %5, align 8, !dbg !906
  %71 = icmp ne %struct.dirent* %70, null, !dbg !907
  br i1 %71, label %72, label %364, !dbg !907

; <label>:72:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !908, metadata !655), !dbg !944
  call void @llvm.dbg.declare(metadata [1024 x i8]* %12, metadata !945, metadata !655), !dbg !949
  call void @llvm.dbg.declare(metadata i32* %13, metadata !950, metadata !655), !dbg !951
  call void @llvm.dbg.declare(metadata i32* %14, metadata !952, metadata !655), !dbg !953
  store i32 0, i32* %14, align 4, !dbg !953
  call void @llvm.dbg.declare(metadata i32* %15, metadata !954, metadata !655), !dbg !955
  call void @llvm.dbg.declare(metadata i32* %16, metadata !956, metadata !655), !dbg !957
  call void @llvm.dbg.declare(metadata %struct.passwd** %17, metadata !958, metadata !655), !dbg !970
  call void @llvm.dbg.declare(metadata i8** %18, metadata !971, metadata !655), !dbg !972
  store i8* null, i8** %18, align 8, !dbg !972
  call void @llvm.dbg.declare(metadata i8** %19, metadata !973, metadata !655), !dbg !974
  store i8* null, i8** %19, align 8, !dbg !974
  call void @llvm.dbg.declare(metadata i64* %20, metadata !975, metadata !655), !dbg !976
  store i64 0, i64* %20, align 8, !dbg !976
  call void @llvm.dbg.declare(metadata i64* %21, metadata !977, metadata !655), !dbg !978
  call void @llvm.dbg.declare(metadata i64* %22, metadata !979, metadata !655), !dbg !980
  call void @llvm.dbg.declare(metadata i8** %23, metadata !981, metadata !655), !dbg !982
  call void @llvm.dbg.declare(metadata i8** %24, metadata !983, metadata !655), !dbg !984
  call void @llvm.dbg.declare(metadata i8* %25, metadata !985, metadata !655), !dbg !986
  store i8 1, i8* %25, align 1, !dbg !986
  %73 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !987
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 4, !dbg !989
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %74, i32 0, i32 0, !dbg !987
  %76 = call i64 @strspn(i8* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #11, !dbg !990
  %77 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !991
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 4, !dbg !992
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %78, i32 0, i32 0, !dbg !991
  %80 = call i64 @strlen(i8* %79) #11, !dbg !993
  %81 = icmp ne i64 %76, %80, !dbg !995
  br i1 %81, label %82, label %83, !dbg !996

; <label>:82:                                     ; preds = %72
  br label %68, !dbg !997, !llvm.loop !999

; <label>:83:                                     ; preds = %72
  %84 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1000
  %85 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1002
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 4, !dbg !1003
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %86, i32 0, i32 0, !dbg !1002
  %88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %84, i64 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* %87) #10, !dbg !1004
  %89 = icmp eq i32 %88, -1, !dbg !1005
  br i1 %89, label %90, label %94, !dbg !1006

; <label>:90:                                     ; preds = %83
  %91 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1007
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 4, !dbg !1009
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %92, i32 0, i32 0, !dbg !1007
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* %93), !dbg !1010
  br label %68, !dbg !1011, !llvm.loop !999

; <label>:94:                                     ; preds = %83
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1012
  %96 = call i32 (i8*, i32, ...) @open64(i8* %95, i32 0), !dbg !1013
  store i32 %96, i32* %15, align 4, !dbg !1014
  %97 = load i32, i32* %15, align 4, !dbg !1015
  %98 = icmp eq i32 -1, %97, !dbg !1017
  br i1 %98, label %99, label %100, !dbg !1018

; <label>:99:                                     ; preds = %94
  br label %68, !dbg !1019, !llvm.loop !999

; <label>:100:                                    ; preds = %94
  %101 = load i32, i32* %15, align 4, !dbg !1021
  %102 = call i32 @ProcMgr_ReadProcFile(i32 %101, i8** %18), !dbg !1022
  store i32 %102, i32* %14, align 4, !dbg !1023
  %103 = load i32, i32* %15, align 4, !dbg !1024
  %104 = call i32 @close(i32 %103), !dbg !1025
  %105 = load i32, i32* %14, align 4, !dbg !1026
  %106 = icmp slt i32 %105, 0, !dbg !1028
  br i1 %106, label %107, label %108, !dbg !1029

; <label>:107:                                    ; preds = %100
  br label %68, !dbg !1030, !llvm.loop !999

; <label>:108:                                    ; preds = %100
  %109 = load i32, i32* %14, align 4, !dbg !1032
  %110 = icmp sgt i32 %109, 0, !dbg !1034
  br i1 %110, label %111, label %152, !dbg !1035

; <label>:111:                                    ; preds = %108
  store i32 0, i32* %16, align 4, !dbg !1036
  br label %112, !dbg !1039

; <label>:112:                                    ; preds = %148, %111
  %113 = load i32, i32* %16, align 4, !dbg !1040
  %114 = load i32, i32* %14, align 4, !dbg !1043
  %115 = sub nsw i32 %114, 1, !dbg !1044
  %116 = icmp slt i32 %113, %115, !dbg !1045
  br i1 %116, label %117, label %151, !dbg !1046

; <label>:117:                                    ; preds = %112
  %118 = load i32, i32* %16, align 4, !dbg !1047
  %119 = sext i32 %118 to i64, !dbg !1050
  %120 = load i8*, i8** %18, align 8, !dbg !1050
  %121 = getelementptr inbounds i8, i8* %120, i64 %119, !dbg !1050
  %122 = load i8, i8* %121, align 1, !dbg !1050
  %123 = sext i8 %122 to i32, !dbg !1050
  %124 = icmp eq i32 0, %123, !dbg !1051
  br i1 %124, label %125, label %147, !dbg !1052

; <label>:125:                                    ; preds = %117
  %126 = load i8, i8* %25, align 1, !dbg !1053
  %127 = icmp ne i8 %126, 0, !dbg !1053
  br i1 %127, label %128, label %142, !dbg !1056

; <label>:128:                                    ; preds = %125
  %129 = load i8*, i8** %18, align 8, !dbg !1057
  %130 = call i8* @strrchr(i8* %129, i32 47) #11, !dbg !1059
  store i8* %130, i8** %24, align 8, !dbg !1060
  %131 = load i8*, i8** %24, align 8, !dbg !1061
  %132 = icmp eq i8* null, %131, !dbg !1063
  br i1 %132, label %133, label %135, !dbg !1064

; <label>:133:                                    ; preds = %128
  %134 = load i8*, i8** %18, align 8, !dbg !1065
  store i8* %134, i8** %24, align 8, !dbg !1067
  br label %138, !dbg !1068

; <label>:135:                                    ; preds = %128
  %136 = load i8*, i8** %24, align 8, !dbg !1069
  %137 = getelementptr inbounds i8, i8* %136, i32 1, !dbg !1069
  store i8* %137, i8** %24, align 8, !dbg !1069
  br label %138

; <label>:138:                                    ; preds = %135, %133
  %139 = load i8*, i8** %24, align 8, !dbg !1071
  %140 = call i8* @Unicode_Alloc(i8* %139, i32 -1), !dbg !1072
  %141 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 1, !dbg !1073
  store i8* %140, i8** %141, align 8, !dbg !1074
  store i8 0, i8* %25, align 1, !dbg !1075
  br label %142, !dbg !1076

; <label>:142:                                    ; preds = %138, %125
  %143 = load i32, i32* %16, align 4, !dbg !1077
  %144 = sext i32 %143 to i64, !dbg !1078
  %145 = load i8*, i8** %18, align 8, !dbg !1078
  %146 = getelementptr inbounds i8, i8* %145, i64 %144, !dbg !1078
  store i8 32, i8* %146, align 1, !dbg !1079
  br label %147, !dbg !1080

; <label>:147:                                    ; preds = %142, %117
  br label %148, !dbg !1081

; <label>:148:                                    ; preds = %147
  %149 = load i32, i32* %16, align 4, !dbg !1082
  %150 = add nsw i32 %149, 1, !dbg !1082
  store i32 %150, i32* %16, align 4, !dbg !1082
  br label %112, !dbg !1084, !llvm.loop !1085

; <label>:151:                                    ; preds = %112
  br label %256, !dbg !1087

; <label>:152:                                    ; preds = %108
  store i32 -1, i32* %15, align 4, !dbg !1088
  store i32 0, i32* %14, align 4, !dbg !1090
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1091
  %154 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1093
  %155 = getelementptr inbounds %struct.dirent, %struct.dirent* %154, i32 0, i32 4, !dbg !1094
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %155, i32 0, i32 0, !dbg !1093
  %157 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %153, i64 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* %156) #10, !dbg !1095
  %158 = icmp ne i32 %157, -1, !dbg !1096
  br i1 %158, label %159, label %162, !dbg !1097

; <label>:159:                                    ; preds = %152
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1098
  %161 = call i32 (i8*, i32, ...) @open64(i8* %160, i32 0), !dbg !1100
  store i32 %161, i32* %15, align 4, !dbg !1101
  br label %162, !dbg !1102

; <label>:162:                                    ; preds = %159, %152
  %163 = load i32, i32* %15, align 4, !dbg !1103
  %164 = icmp ne i32 %163, -1, !dbg !1105
  br i1 %164, label %165, label %170, !dbg !1106

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %15, align 4, !dbg !1107
  %167 = call i32 @ProcMgr_ReadProcFile(i32 %166, i8** %18), !dbg !1109
  store i32 %167, i32* %14, align 4, !dbg !1110
  %168 = load i32, i32* %15, align 4, !dbg !1111
  %169 = call i32 @close(i32 %168), !dbg !1112
  br label %170, !dbg !1113

; <label>:170:                                    ; preds = %165, %162
  %171 = load i32, i32* %14, align 4, !dbg !1114
  %172 = icmp sgt i32 %171, 0, !dbg !1116
  br i1 %172, label %173, label %255, !dbg !1117

; <label>:173:                                    ; preds = %170
  call void @llvm.dbg.declare(metadata i8** %26, metadata !1118, metadata !655), !dbg !1120
  call void @llvm.dbg.declare(metadata i8** %27, metadata !1121, metadata !655), !dbg !1122
  %174 = load i8*, i8** %18, align 8, !dbg !1123
  store i8* %174, i8** %26, align 8, !dbg !1125
  br label %175, !dbg !1126

; <label>:175:                                    ; preds = %198, %173
  %176 = load i8*, i8** %26, align 8, !dbg !1127
  %177 = load i8, i8* %176, align 1, !dbg !1130
  %178 = sext i8 %177 to i32, !dbg !1130
  %179 = icmp ne i32 %178, 0, !dbg !1130
  br i1 %179, label %180, label %195, !dbg !1131

; <label>:180:                                    ; preds = %175
  %181 = load i8*, i8** %26, align 8, !dbg !1132
  %182 = load i8, i8* %181, align 1, !dbg !1133
  %183 = sext i8 %182 to i32, !dbg !1133
  %184 = icmp ne i32 %183, 32, !dbg !1134
  br i1 %184, label %185, label %195, !dbg !1135

; <label>:185:                                    ; preds = %180
  %186 = load i8*, i8** %26, align 8, !dbg !1136
  %187 = load i8, i8* %186, align 1, !dbg !1137
  %188 = sext i8 %187 to i32, !dbg !1137
  %189 = icmp ne i32 %188, 9, !dbg !1138
  br i1 %189, label %190, label %195, !dbg !1139

; <label>:190:                                    ; preds = %185
  %191 = load i8*, i8** %26, align 8, !dbg !1140
  %192 = load i8, i8* %191, align 1, !dbg !1141
  %193 = sext i8 %192 to i32, !dbg !1141
  %194 = icmp ne i32 %193, 10, !dbg !1142
  br label %195

; <label>:195:                                    ; preds = %190, %185, %180, %175
  %196 = phi i1 [ false, %185 ], [ false, %180 ], [ false, %175 ], [ %194, %190 ]
  br i1 %196, label %197, label %201, !dbg !1143

; <label>:197:                                    ; preds = %195
  br label %198, !dbg !1145

; <label>:198:                                    ; preds = %197
  %199 = load i8*, i8** %26, align 8, !dbg !1147
  %200 = getelementptr inbounds i8, i8* %199, i32 1, !dbg !1147
  store i8* %200, i8** %26, align 8, !dbg !1147
  br label %175, !dbg !1148, !llvm.loop !1150

; <label>:201:                                    ; preds = %195
  br label %202, !dbg !1152

; <label>:202:                                    ; preds = %227, %201
  %203 = load i8*, i8** %26, align 8, !dbg !1153
  %204 = load i8, i8* %203, align 1, !dbg !1157
  %205 = sext i8 %204 to i32, !dbg !1157
  %206 = icmp ne i32 %205, 0, !dbg !1157
  br i1 %206, label %207, label %224, !dbg !1158

; <label>:207:                                    ; preds = %202
  %208 = load i8*, i8** %26, align 8, !dbg !1159
  %209 = load i8, i8* %208, align 1, !dbg !1160
  %210 = sext i8 %209 to i32, !dbg !1160
  %211 = icmp eq i32 %210, 32, !dbg !1161
  br i1 %211, label %222, label %212, !dbg !1162

; <label>:212:                                    ; preds = %207
  %213 = load i8*, i8** %26, align 8, !dbg !1163
  %214 = load i8, i8* %213, align 1, !dbg !1164
  %215 = sext i8 %214 to i32, !dbg !1164
  %216 = icmp eq i32 %215, 9, !dbg !1165
  br i1 %216, label %222, label %217, !dbg !1166

; <label>:217:                                    ; preds = %212
  %218 = load i8*, i8** %26, align 8, !dbg !1167
  %219 = load i8, i8* %218, align 1, !dbg !1168
  %220 = sext i8 %219 to i32, !dbg !1168
  %221 = icmp eq i32 %220, 10, !dbg !1169
  br label %222, !dbg !1170

; <label>:222:                                    ; preds = %217, %212, %207
  %223 = phi i1 [ true, %212 ], [ true, %207 ], [ %221, %217 ]
  br label %224

; <label>:224:                                    ; preds = %222, %202
  %225 = phi i1 [ false, %202 ], [ %223, %222 ]
  br i1 %225, label %226, label %230, !dbg !1171

; <label>:226:                                    ; preds = %224
  br label %227, !dbg !1173

; <label>:227:                                    ; preds = %226
  %228 = load i8*, i8** %26, align 8, !dbg !1175
  %229 = getelementptr inbounds i8, i8* %228, i32 1, !dbg !1175
  store i8* %229, i8** %26, align 8, !dbg !1175
  br label %202, !dbg !1176, !llvm.loop !1178

; <label>:230:                                    ; preds = %224
  %231 = load i8*, i8** %18, align 8, !dbg !1179
  store i8* %231, i8** %27, align 8, !dbg !1181
  br label %232, !dbg !1182

; <label>:232:                                    ; preds = %244, %230
  %233 = load i8*, i8** %26, align 8, !dbg !1183
  %234 = load i8, i8* %233, align 1, !dbg !1186
  %235 = sext i8 %234 to i32, !dbg !1186
  %236 = icmp ne i32 %235, 0, !dbg !1186
  br i1 %236, label %237, label %242, !dbg !1187

; <label>:237:                                    ; preds = %232
  %238 = load i8*, i8** %26, align 8, !dbg !1188
  %239 = load i8, i8* %238, align 1, !dbg !1190
  %240 = sext i8 %239 to i32, !dbg !1190
  %241 = icmp ne i32 %240, 10, !dbg !1191
  br label %242

; <label>:242:                                    ; preds = %237, %232
  %243 = phi i1 [ false, %232 ], [ %241, %237 ]
  br i1 %243, label %244, label %250, !dbg !1192

; <label>:244:                                    ; preds = %242
  %245 = load i8*, i8** %26, align 8, !dbg !1194
  %246 = getelementptr inbounds i8, i8* %245, i32 1, !dbg !1194
  store i8* %246, i8** %26, align 8, !dbg !1194
  %247 = load i8, i8* %245, align 1, !dbg !1196
  %248 = load i8*, i8** %27, align 8, !dbg !1197
  %249 = getelementptr inbounds i8, i8* %248, i32 1, !dbg !1197
  store i8* %249, i8** %27, align 8, !dbg !1197
  store i8 %247, i8* %248, align 1, !dbg !1198
  br label %232, !dbg !1199, !llvm.loop !1201

; <label>:250:                                    ; preds = %242
  %251 = load i8*, i8** %27, align 8, !dbg !1203
  store i8 0, i8* %251, align 1, !dbg !1204
  %252 = load i8*, i8** %18, align 8, !dbg !1205
  %253 = call i8* @Unicode_Alloc(i8* %252, i32 -1), !dbg !1206
  %254 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 1, !dbg !1207
  store i8* %253, i8** %254, align 8, !dbg !1208
  br label %255, !dbg !1209

; <label>:255:                                    ; preds = %250, %170
  br label %256

; <label>:256:                                    ; preds = %255, %151
  %257 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1210
  %258 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1212
  %259 = getelementptr inbounds %struct.dirent, %struct.dirent* %258, i32 0, i32 4, !dbg !1213
  %260 = getelementptr inbounds [256 x i8], [256 x i8]* %259, i32 0, i32 0, !dbg !1212
  %261 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %257, i64 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %260) #10, !dbg !1214
  %262 = icmp eq i32 %261, -1, !dbg !1215
  br i1 %262, label %263, label %267, !dbg !1216

; <label>:263:                                    ; preds = %256
  %264 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1217
  %265 = getelementptr inbounds %struct.dirent, %struct.dirent* %264, i32 0, i32 4, !dbg !1219
  %266 = getelementptr inbounds [256 x i8], [256 x i8]* %265, i32 0, i32 0, !dbg !1217
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* %266), !dbg !1220
  br label %361, !dbg !1221

; <label>:267:                                    ; preds = %256
  %268 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1222
  %269 = call i32 @stat64(i8* %268, %struct.stat* %11) #10, !dbg !1223
  store i32 %269, i32* %13, align 4, !dbg !1224
  %270 = load i32, i32* %13, align 4, !dbg !1225
  %271 = icmp ne i32 0, %270, !dbg !1227
  br i1 %271, label %272, label %273, !dbg !1228

; <label>:272:                                    ; preds = %267
  br label %361, !dbg !1229

; <label>:273:                                    ; preds = %267
  %274 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1231
  %275 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1233
  %276 = getelementptr inbounds %struct.dirent, %struct.dirent* %275, i32 0, i32 4, !dbg !1234
  %277 = getelementptr inbounds [256 x i8], [256 x i8]* %276, i32 0, i32 0, !dbg !1233
  %278 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %274, i64 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %277) #10, !dbg !1235
  %279 = icmp eq i32 %278, -1, !dbg !1236
  br i1 %279, label %280, label %284, !dbg !1237

; <label>:280:                                    ; preds = %273
  %281 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1238
  %282 = getelementptr inbounds %struct.dirent, %struct.dirent* %281, i32 0, i32 4, !dbg !1240
  %283 = getelementptr inbounds [256 x i8], [256 x i8]* %282, i32 0, i32 0, !dbg !1238
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* %283), !dbg !1241
  br label %361, !dbg !1242

; <label>:284:                                    ; preds = %273
  %285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i32 0, i32 0, !dbg !1243
  %286 = call i32 (i8*, i32, ...) @open64(i8* %285, i32 0), !dbg !1244
  store i32 %286, i32* %15, align 4, !dbg !1245
  %287 = load i32, i32* %15, align 4, !dbg !1246
  %288 = icmp eq i32 -1, %287, !dbg !1248
  br i1 %288, label %289, label %290, !dbg !1249

; <label>:289:                                    ; preds = %284
  br label %361, !dbg !1250

; <label>:290:                                    ; preds = %284
  %291 = load i32, i32* %15, align 4, !dbg !1252
  %292 = call i32 @ProcMgr_ReadProcFile(i32 %291, i8** %19), !dbg !1253
  store i32 %292, i32* %14, align 4, !dbg !1254
  %293 = load i32, i32* %15, align 4, !dbg !1255
  %294 = call i32 @close(i32 %293), !dbg !1256
  %295 = load i32, i32* %14, align 4, !dbg !1257
  %296 = icmp sge i32 0, %295, !dbg !1259
  br i1 %296, label %297, label %298, !dbg !1260

; <label>:297:                                    ; preds = %290
  br label %361, !dbg !1261

; <label>:298:                                    ; preds = %290
  %299 = load i8*, i8** %19, align 8, !dbg !1263
  %300 = call i8* @strchr(i8* %299, i32 41) #11, !dbg !1264
  %301 = getelementptr inbounds i8, i8* %300, i64 2, !dbg !1265
  store i8* %301, i8** %23, align 8, !dbg !1266
  %302 = load i8*, i8** %23, align 8, !dbg !1267
  %303 = bitcast i64* %21 to i8*, !dbg !1268
  %304 = bitcast i64* %21 to i32*, !dbg !1269
  %305 = bitcast i64* %21 to i32*, !dbg !1270
  %306 = bitcast i64* %21 to i32*, !dbg !1271
  %307 = bitcast i64* %21 to i32*, !dbg !1272
  %308 = bitcast i64* %21 to i32*, !dbg !1273
  %309 = bitcast i64* %21 to i32*, !dbg !1274
  %310 = call i32 (i8*, i8*, ...) @sscanf(i8* %302, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i8* %303, i32* %304, i32* %305, i32* %306, i32* %307, i32* %308, i64* %21, i64* %21, i64* %21, i64* %21, i64* %21, i64* %21, i64* %21, i64* %21, i64* %21, i64* %21, i64* %21, i32* %309, i64* %21, i64* %22) #10, !dbg !1275
  store i32 %310, i32* %6, align 4, !dbg !1276
  %311 = load i32, i32* %6, align 4, !dbg !1277
  %312 = icmp ne i32 20, %311, !dbg !1279
  br i1 %312, label %313, label %314, !dbg !1280

; <label>:313:                                    ; preds = %298
  br label %361, !dbg !1281

; <label>:314:                                    ; preds = %298
  %315 = load i8*, i8** %18, align 8, !dbg !1283
  %316 = icmp ne i8* %315, null, !dbg !1283
  br i1 %316, label %317, label %321, !dbg !1285

; <label>:317:                                    ; preds = %314
  %318 = load i8*, i8** %18, align 8, !dbg !1286
  %319 = call i8* @Unicode_Alloc(i8* %318, i32 -1), !dbg !1288
  %320 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 2, !dbg !1289
  store i8* %319, i8** %320, align 8, !dbg !1290
  br label %324, !dbg !1291

; <label>:321:                                    ; preds = %314
  %322 = call i8* @Unicode_Alloc(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !1292
  %323 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 2, !dbg !1294
  store i8* %322, i8** %323, align 8, !dbg !1295
  br label %324

; <label>:324:                                    ; preds = %321, %317
  %325 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !1296
  %326 = getelementptr inbounds %struct.dirent, %struct.dirent* %325, i32 0, i32 4, !dbg !1297
  %327 = getelementptr inbounds [256 x i8], [256 x i8]* %326, i32 0, i32 0, !dbg !1296
  %328 = call i32 @atoi(i8* %327) #11, !dbg !1298
  %329 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 0, !dbg !1299
  store i32 %328, i32* %329, align 8, !dbg !1300
  %330 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 4, !dbg !1301
  %331 = load i32, i32* %330, align 4, !dbg !1301
  %332 = call %struct.passwd* @getpwuid(i32 %331), !dbg !1302
  store %struct.passwd* %332, %struct.passwd** %17, align 8, !dbg !1303
  %333 = load %struct.passwd*, %struct.passwd** %17, align 8, !dbg !1304
  %334 = icmp eq %struct.passwd* null, %333, !dbg !1305
  br i1 %334, label %335, label %339, !dbg !1306

; <label>:335:                                    ; preds = %324
  %336 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 4, !dbg !1307
  %337 = load i32, i32* %336, align 4, !dbg !1307
  %338 = call i8* (i64*, i8*, ...) @Str_SafeAsprintf(i64* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %337), !dbg !1308
  br label %344, !dbg !1309

; <label>:339:                                    ; preds = %324
  %340 = load %struct.passwd*, %struct.passwd** %17, align 8, !dbg !1311
  %341 = getelementptr inbounds %struct.passwd, %struct.passwd* %340, i32 0, i32 0, !dbg !1312
  %342 = load i8*, i8** %341, align 8, !dbg !1312
  %343 = call i8* @Unicode_Alloc(i8* %342, i32 -1), !dbg !1313
  br label %344, !dbg !1314

; <label>:344:                                    ; preds = %339, %335
  %345 = phi i8* [ %338, %335 ], [ %343, %339 ], !dbg !1316
  %346 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 3, !dbg !1318
  store i8* %345, i8** %346, align 8, !dbg !1319
  %347 = load i64, i64* @ProcMgr_ListProcesses.hostStartTime, align 8, !dbg !1320
  %348 = load i64, i64* %22, align 8, !dbg !1321
  %349 = load i64, i64* @ProcMgr_ListProcesses.hertz, align 8, !dbg !1322
  %350 = udiv i64 %348, %349, !dbg !1323
  %351 = add i64 %347, %350, !dbg !1324
  %352 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 4, !dbg !1325
  store i64 %351, i64* %352, align 8, !dbg !1326
  %353 = load %struct.DynArray*, %struct.DynArray** %1, align 8, !dbg !1327
  %354 = call signext i8 @ProcMgrProcInfoArray_Push(%struct.DynArray* %353, %struct.ProcMgrProcInfo* byval align 8 %2), !dbg !1329
  %355 = icmp ne i8 %354, 0, !dbg !1329
  br i1 %355, label %357, label %356, !dbg !1330

; <label>:356:                                    ; preds = %344
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.ProcMgr_ListProcesses, i32 0, i32 0)), !dbg !1331
  br label %370, !dbg !1333

; <label>:357:                                    ; preds = %344
  %358 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 1, !dbg !1334
  store i8* null, i8** %358, align 8, !dbg !1335
  %359 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 2, !dbg !1336
  store i8* null, i8** %359, align 8, !dbg !1337
  %360 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 3, !dbg !1338
  store i8* null, i8** %360, align 8, !dbg !1339
  br label %361, !dbg !1340

; <label>:361:                                    ; preds = %357, %313, %297, %289, %280, %272, %263
  %362 = load i8*, i8** %18, align 8, !dbg !1341
  call void @free(i8* %362) #10, !dbg !1342
  %363 = load i8*, i8** %19, align 8, !dbg !1343
  call void @free(i8* %363) #10, !dbg !1344
  br label %68, !dbg !1345, !llvm.loop !999

; <label>:364:                                    ; preds = %68
  %365 = load %struct.DynArray*, %struct.DynArray** %1, align 8, !dbg !1347
  %366 = call i32 @ProcMgrProcInfoArray_Count(%struct.DynArray* %365), !dbg !1349
  %367 = icmp ult i32 0, %366, !dbg !1350
  br i1 %367, label %368, label %369, !dbg !1351

; <label>:368:                                    ; preds = %364
  store i8 0, i8* %3, align 1, !dbg !1352
  br label %369, !dbg !1354

; <label>:369:                                    ; preds = %368, %364
  br label %370, !dbg !1355

; <label>:370:                                    ; preds = %369, %356, %66
  %371 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8, !dbg !1357
  %372 = call i32 @closedir(%struct.__dirstream* %371), !dbg !1358
  %373 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 1, !dbg !1359
  %374 = load i8*, i8** %373, align 8, !dbg !1359
  call void @free(i8* %374) #10, !dbg !1360
  %375 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 2, !dbg !1361
  %376 = load i8*, i8** %375, align 8, !dbg !1361
  call void @free(i8* %376) #10, !dbg !1362
  %377 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %2, i32 0, i32 3, !dbg !1363
  %378 = load i8*, i8** %377, align 8, !dbg !1363
  call void @free(i8* %378) #10, !dbg !1364
  %379 = load i8, i8* %3, align 1, !dbg !1365
  %380 = icmp ne i8 %379, 0, !dbg !1365
  br i1 %380, label %381, label %383, !dbg !1367

; <label>:381:                                    ; preds = %370
  %382 = load %struct.DynArray*, %struct.DynArray** %1, align 8, !dbg !1368
  call void @ProcMgr_FreeProcList(%struct.DynArray* %382), !dbg !1370
  store %struct.DynArray* null, %struct.DynArray** %1, align 8, !dbg !1371
  br label %383, !dbg !1372

; <label>:383:                                    ; preds = %381, %370
  %384 = load %struct.DynArray*, %struct.DynArray** %1, align 8, !dbg !1373
  ret %struct.DynArray* %384, !dbg !1374
}

declare i8* @UtilSafeCalloc0(i64, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @ProcMgrProcInfoArray_Init(%struct.DynArray*, i32) #5 !dbg !1375 {
  %3 = alloca %struct.DynArray*, align 8
  %4 = alloca i32, align 4
  store %struct.DynArray* %0, %struct.DynArray** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %3, metadata !1378, metadata !655), !dbg !1379
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1380, metadata !655), !dbg !1381
  %5 = load %struct.DynArray*, %struct.DynArray** %3, align 8, !dbg !1382
  %6 = load i32, i32* %4, align 4, !dbg !1383
  %7 = call signext i8 @DynArray_Init(%struct.DynArray* %5, i32 %6, i64 40), !dbg !1384
  ret i8 %7, !dbg !1385
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #3

declare i8* @UtilSafeStrdup0(i8*) #2

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @fclose(%struct._IO_FILE*) #2

declare %struct.__dirstream* @opendir(i8*) #2

declare void @Warning(i8*, ...) #2

declare %struct.dirent* @readdir64(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare void @Debug(i8*, ...) #2

declare i32 @open64(i8*, i32, ...) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Alloc(i8*, i32) #5 !dbg !1386 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1393, metadata !655), !dbg !1394
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1395, metadata !655), !dbg !1396
  %5 = load i8*, i8** %3, align 8, !dbg !1397
  %6 = load i32, i32* %4, align 4, !dbg !1398
  %7 = call i8* @Unicode_AllocWithLength(i8* %5, i64 -1, i32 %6), !dbg !1399
  ret i8* %7, !dbg !1400
}

; Function Attrs: nounwind
declare i32 @stat64(i8*, %struct.stat*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind
declare i32 @sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

declare %struct.passwd* @getpwuid(i32) #2

declare i8* @Str_SafeAsprintf(i64*, i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @ProcMgrProcInfoArray_Push(%struct.DynArray*, %struct.ProcMgrProcInfo* byval align 8) #5 !dbg !1401 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.DynArray*, align 8
  %5 = alloca i32, align 4
  store %struct.DynArray* %0, %struct.DynArray** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %4, metadata !1404, metadata !655), !dbg !1405
  call void @llvm.dbg.declare(metadata %struct.ProcMgrProcInfo* %1, metadata !1406, metadata !655), !dbg !1407
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1408, metadata !655), !dbg !1409
  %6 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !1410
  %7 = call i32 @ProcMgrProcInfoArray_Count(%struct.DynArray* %6), !dbg !1411
  store i32 %7, i32* %5, align 4, !dbg !1409
  %8 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !1412
  %9 = load i32, i32* %5, align 4, !dbg !1414
  %10 = add i32 %9, 1, !dbg !1415
  %11 = call signext i8 @ProcMgrProcInfoArray_SetCount(%struct.DynArray* %8, i32 %10), !dbg !1416
  %12 = icmp ne i8 %11, 0, !dbg !1418
  br i1 %12, label %14, label %13, !dbg !1419

; <label>:13:                                     ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !1420
  br label %20, !dbg !1420

; <label>:14:                                     ; preds = %2
  %15 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !1423
  %16 = load i32, i32* %5, align 4, !dbg !1425
  %17 = call %struct.ProcMgrProcInfo* @ProcMgrProcInfoArray_AddressOf(%struct.DynArray* %15, i32 %16), !dbg !1426
  %18 = bitcast %struct.ProcMgrProcInfo* %17 to i8*, !dbg !1427
  %19 = bitcast %struct.ProcMgrProcInfo* %1 to i8*, !dbg !1427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 40, i32 8, i1 false), !dbg !1428
  store i8 1, i8* %3, align 1, !dbg !1430
  br label %20, !dbg !1430

; <label>:20:                                     ; preds = %14, %13
  %21 = load i8, i8* %3, align 1, !dbg !1431
  ret i8 %21, !dbg !1431
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ProcMgrProcInfoArray_Count(%struct.DynArray*) #5 !dbg !1433 {
  %2 = alloca %struct.DynArray*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %2, metadata !1438, metadata !655), !dbg !1439
  %3 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !1440
  %4 = call i32 @DynArray_Count(%struct.DynArray* %3), !dbg !1441
  ret i32 %4, !dbg !1442
}

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: nounwind uwtable
define void @ProcMgr_FreeProcList(%struct.DynArray*) #0 !dbg !1443 {
  %2 = alloca %struct.DynArray*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ProcMgrProcInfo*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %2, metadata !1446, metadata !655), !dbg !1447
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1448, metadata !655), !dbg !1449
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1450, metadata !655), !dbg !1451
  %6 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !1452
  %7 = icmp eq %struct.DynArray* null, %6, !dbg !1454
  br i1 %7, label %8, label %9, !dbg !1455

; <label>:8:                                      ; preds = %1
  br label %38, !dbg !1456

; <label>:9:                                      ; preds = %1
  %10 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !1458
  %11 = call i32 @ProcMgrProcInfoArray_Count(%struct.DynArray* %10), !dbg !1459
  %12 = zext i32 %11 to i64, !dbg !1459
  store i64 %12, i64* %4, align 8, !dbg !1460
  store i32 0, i32* %3, align 4, !dbg !1461
  br label %13, !dbg !1463

; <label>:13:                                     ; preds = %31, %9
  %14 = load i32, i32* %3, align 4, !dbg !1464
  %15 = sext i32 %14 to i64, !dbg !1464
  %16 = load i64, i64* %4, align 8, !dbg !1467
  %17 = icmp ult i64 %15, %16, !dbg !1468
  br i1 %17, label %18, label %34, !dbg !1469

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.ProcMgrProcInfo** %5, metadata !1470, metadata !655), !dbg !1472
  %19 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !1473
  %20 = load i32, i32* %3, align 4, !dbg !1474
  %21 = call %struct.ProcMgrProcInfo* @ProcMgrProcInfoArray_AddressOf(%struct.DynArray* %19, i32 %20), !dbg !1475
  store %struct.ProcMgrProcInfo* %21, %struct.ProcMgrProcInfo** %5, align 8, !dbg !1472
  %22 = load %struct.ProcMgrProcInfo*, %struct.ProcMgrProcInfo** %5, align 8, !dbg !1476
  %23 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %22, i32 0, i32 1, !dbg !1477
  %24 = load i8*, i8** %23, align 8, !dbg !1477
  call void @free(i8* %24) #10, !dbg !1478
  %25 = load %struct.ProcMgrProcInfo*, %struct.ProcMgrProcInfo** %5, align 8, !dbg !1479
  %26 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %25, i32 0, i32 2, !dbg !1480
  %27 = load i8*, i8** %26, align 8, !dbg !1480
  call void @free(i8* %27) #10, !dbg !1481
  %28 = load %struct.ProcMgrProcInfo*, %struct.ProcMgrProcInfo** %5, align 8, !dbg !1482
  %29 = getelementptr inbounds %struct.ProcMgrProcInfo, %struct.ProcMgrProcInfo* %28, i32 0, i32 3, !dbg !1483
  %30 = load i8*, i8** %29, align 8, !dbg !1483
  call void @free(i8* %30) #10, !dbg !1484
  br label %31, !dbg !1485

; <label>:31:                                     ; preds = %18
  %32 = load i32, i32* %3, align 4, !dbg !1486
  %33 = add nsw i32 %32, 1, !dbg !1486
  store i32 %33, i32* %3, align 4, !dbg !1486
  br label %13, !dbg !1488, !llvm.loop !1489

; <label>:34:                                     ; preds = %13
  %35 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !1491
  call void @ProcMgrProcInfoArray_Destroy(%struct.DynArray* %35), !dbg !1492
  %36 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !1493
  %37 = bitcast %struct.DynArray* %36 to i8*, !dbg !1493
  call void @free(i8* %37) #10, !dbg !1494
  br label %38, !dbg !1495

; <label>:38:                                     ; preds = %34, %8
  ret void, !dbg !1496
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.ProcMgrProcInfo* @ProcMgrProcInfoArray_AddressOf(%struct.DynArray*, i32) #5 !dbg !1498 {
  %3 = alloca %struct.DynArray*, align 8
  %4 = alloca i32, align 4
  store %struct.DynArray* %0, %struct.DynArray** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %3, metadata !1501, metadata !655), !dbg !1502
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1503, metadata !655), !dbg !1504
  %5 = load %struct.DynArray*, %struct.DynArray** %3, align 8, !dbg !1505
  %6 = load i32, i32* %4, align 4, !dbg !1506
  %7 = call i8* @DynArray_AddressOf(%struct.DynArray* %5, i32 %6), !dbg !1507
  %8 = bitcast i8* %7 to %struct.ProcMgrProcInfo*, !dbg !1508
  ret %struct.ProcMgrProcInfo* %8, !dbg !1509
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ProcMgrProcInfoArray_Destroy(%struct.DynArray*) #5 !dbg !1510 {
  %2 = alloca %struct.DynArray*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %2, metadata !1511, metadata !655), !dbg !1512
  %3 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !1513
  call void @DynArray_Destroy(%struct.DynArray* %3), !dbg !1514
  ret void, !dbg !1515
}

; Function Attrs: nounwind uwtable
define signext i8 @ProcMgr_ExecSync(i8*, %struct.ProcMgr_ProcArgs*) #0 !dbg !1516 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ProcMgr_ProcArgs*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1525, metadata !655), !dbg !1526
  store %struct.ProcMgr_ProcArgs* %1, %struct.ProcMgr_ProcArgs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_ProcArgs** %4, metadata !1527, metadata !655), !dbg !1528
  %5 = load i8*, i8** %3, align 8, !dbg !1529
  %6 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %4, align 8, !dbg !1530
  %7 = call signext i8 @ProcMgrExecSync(i8* %5, %struct.ProcMgr_ProcArgs* %6, i8* null, i32* null), !dbg !1531
  ret i8 %7, !dbg !1532
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ProcMgrExecSync(i8*, %struct.ProcMgr_ProcArgs*, i8*, i32*) #0 !dbg !1533 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ProcMgr_ProcArgs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1537, metadata !655), !dbg !1538
  store %struct.ProcMgr_ProcArgs* %1, %struct.ProcMgr_ProcArgs** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_ProcArgs** %7, metadata !1539, metadata !655), !dbg !1540
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1541, metadata !655), !dbg !1542
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !1543, metadata !655), !dbg !1544
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1545, metadata !655), !dbg !1546
  %11 = load i8*, i8** %6, align 8, !dbg !1547
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* %11), !dbg !1548
  %12 = load i8*, i8** %8, align 8, !dbg !1549
  %13 = icmp ne i8* %12, null, !dbg !1551
  br i1 %13, label %14, label %16, !dbg !1552

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %8, align 8, !dbg !1553
  store i8 0, i8* %15, align 1, !dbg !1555
  br label %16, !dbg !1556

; <label>:16:                                     ; preds = %14, %4
  %17 = load i8*, i8** %6, align 8, !dbg !1557
  %18 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %7, align 8, !dbg !1558
  %19 = icmp ne %struct.ProcMgr_ProcArgs* %18, null, !dbg !1558
  br i1 %19, label %20, label %24, !dbg !1558

; <label>:20:                                     ; preds = %16
  %21 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %7, align 8, !dbg !1559
  %22 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %21, i32 0, i32 0, !dbg !1561
  %23 = load i8**, i8*** %22, align 8, !dbg !1561
  br label %25, !dbg !1562

; <label>:24:                                     ; preds = %16
  br label %25, !dbg !1563

; <label>:25:                                     ; preds = %24, %20
  %26 = phi i8** [ %23, %20 ], [ null, %24 ], !dbg !1565
  %27 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %7, align 8, !dbg !1567
  %28 = icmp ne %struct.ProcMgr_ProcArgs* %27, null, !dbg !1567
  br i1 %28, label %29, label %33, !dbg !1567

; <label>:29:                                     ; preds = %25
  %30 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %7, align 8, !dbg !1568
  %31 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %30, i32 0, i32 1, !dbg !1569
  %32 = load i8*, i8** %31, align 8, !dbg !1569
  br label %34, !dbg !1570

; <label>:33:                                     ; preds = %25
  br label %34, !dbg !1571

; <label>:34:                                     ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ null, %33 ], !dbg !1572
  %36 = call i32 @ProcMgrStartProcess(i8* %17, i8** %26, i8* %35), !dbg !1573
  store i32 %36, i32* %10, align 4, !dbg !1575
  %37 = load i32, i32* %10, align 4, !dbg !1576
  %38 = icmp eq i32 %37, -1, !dbg !1578
  br i1 %38, label %39, label %40, !dbg !1579

; <label>:39:                                     ; preds = %34
  store i8 0, i8* %5, align 1, !dbg !1580
  br label %45, !dbg !1580

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %10, align 4, !dbg !1582
  %42 = load i8*, i8** %8, align 8, !dbg !1583
  %43 = load i32*, i32** %9, align 8, !dbg !1584
  %44 = call signext i8 @ProcMgrWaitForProcCompletion(i32 %41, i8* %42, i32* %43), !dbg !1585
  store i8 %44, i8* %5, align 1, !dbg !1586
  br label %45, !dbg !1586

; <label>:45:                                     ; preds = %40, %39
  %46 = load i8, i8* %5, align 1, !dbg !1587
  ret i8 %46, !dbg !1587
}

; Function Attrs: nounwind uwtable
define signext i8 @ProcMgr_ExecSyncWithExitCode(i8*, %struct.ProcMgr_ProcArgs*, i8*, i32*) #0 !dbg !1588 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ProcMgr_ProcArgs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1589, metadata !655), !dbg !1590
  store %struct.ProcMgr_ProcArgs* %1, %struct.ProcMgr_ProcArgs** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_ProcArgs** %6, metadata !1591, metadata !655), !dbg !1592
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1593, metadata !655), !dbg !1594
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1595, metadata !655), !dbg !1596
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1597, metadata !655), !dbg !1598
  store i8 0, i8* %9, align 1, !dbg !1598
  %10 = load i8*, i8** %5, align 8, !dbg !1599
  %11 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %6, align 8, !dbg !1600
  %12 = load i8*, i8** %7, align 8, !dbg !1601
  %13 = load i32*, i32** %8, align 8, !dbg !1602
  %14 = call signext i8 @ProcMgrExecSync(i8* %10, %struct.ProcMgr_ProcArgs* %11, i8* %12, i32* %13), !dbg !1603
  store i8 %14, i8* %9, align 1, !dbg !1604
  %15 = load i8*, i8** %5, align 8, !dbg !1605
  %16 = load i8, i8* %9, align 1, !dbg !1606
  %17 = sext i8 %16 to i32, !dbg !1606
  %18 = load i8*, i8** %7, align 8, !dbg !1607
  %19 = load i8, i8* %18, align 1, !dbg !1608
  %20 = sext i8 %19 to i32, !dbg !1608
  %21 = icmp ne i32 %20, 0, !dbg !1608
  br i1 %21, label %22, label %25, !dbg !1608

; <label>:22:                                     ; preds = %4
  %23 = load i32*, i32** %8, align 8, !dbg !1609
  %24 = load i32, i32* %23, align 4, !dbg !1611
  br label %26, !dbg !1612

; <label>:25:                                     ; preds = %4
  br label %26, !dbg !1613

; <label>:26:                                     ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ], !dbg !1615
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* %15, i32 %17, i32 %27), !dbg !1617
  %28 = load i8, i8* %9, align 1, !dbg !1618
  ret i8 %28, !dbg !1619
}

; Function Attrs: nounwind uwtable
define %struct.ProcMgr_AsyncProc* @ProcMgr_ExecAsync(i8*, %struct.ProcMgr_ProcArgs*) #0 !dbg !1620 {
  %3 = alloca %struct.ProcMgr_AsyncProc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ProcMgr_ProcArgs*, align 8
  %6 = alloca %struct.ProcMgr_AsyncProc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x %struct.sigaction], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1632, metadata !655), !dbg !1633
  store %struct.ProcMgr_ProcArgs* %1, %struct.ProcMgr_ProcArgs** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_ProcArgs** %5, metadata !1634, metadata !655), !dbg !1635
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_AsyncProc** %6, metadata !1636, metadata !655), !dbg !1637
  store %struct.ProcMgr_AsyncProc* null, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1637
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1638, metadata !655), !dbg !1639
  call void @llvm.dbg.declare(metadata [2 x i32]* %8, metadata !1640, metadata !655), !dbg !1644
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1645, metadata !655), !dbg !1646
  store i8 0, i8* %9, align 1, !dbg !1646
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1647, metadata !655), !dbg !1648
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1649, metadata !655), !dbg !1650
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1651, metadata !655), !dbg !1652
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1653, metadata !655), !dbg !1654
  %19 = load i8*, i8** %4, align 8, !dbg !1655
  %20 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %5, align 8, !dbg !1656
  %21 = icmp ne %struct.ProcMgr_ProcArgs* %20, null, !dbg !1656
  br i1 %21, label %22, label %31, !dbg !1657

; <label>:22:                                     ; preds = %2
  %23 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %5, align 8, !dbg !1658
  %24 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %23, i32 0, i32 1, !dbg !1660
  %25 = load i8*, i8** %24, align 8, !dbg !1660
  %26 = icmp ne i8* %25, null, !dbg !1658
  br i1 %26, label %27, label %31, !dbg !1661

; <label>:27:                                     ; preds = %22
  %28 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %5, align 8, !dbg !1662
  %29 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %28, i32 0, i32 1, !dbg !1664
  %30 = load i8*, i8** %29, align 8, !dbg !1664
  br label %32, !dbg !1665

; <label>:31:                                     ; preds = %22, %2
  br label %32, !dbg !1666

; <label>:32:                                     ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), %31 ], !dbg !1668
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i32 0, i32 0), i8* %19, i8* %33), !dbg !1670
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i32 0, !dbg !1671
  %35 = call i32 @pipe(i32* %34) #10, !dbg !1673
  %36 = icmp eq i32 %35, -1, !dbg !1674
  br i1 %36, label %37, label %39, !dbg !1675

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %4, align 8, !dbg !1676
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0), i8* %38), !dbg !1678
  store %struct.ProcMgr_AsyncProc* null, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !1679
  br label %203, !dbg !1679

; <label>:39:                                     ; preds = %32
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0, !dbg !1680
  %41 = load i32, i32* %40, align 4, !dbg !1680
  store i32 %41, i32* %12, align 4, !dbg !1681
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !1682
  %43 = load i32, i32* %42, align 4, !dbg !1682
  store i32 %43, i32* %13, align 4, !dbg !1683
  %44 = call i32 @fork() #10, !dbg !1684
  store i32 %44, i32* %7, align 4, !dbg !1685
  %45 = load i32, i32* %7, align 4, !dbg !1686
  %46 = icmp eq i32 %45, -1, !dbg !1688
  br i1 %46, label %47, label %51, !dbg !1689

; <label>:47:                                     ; preds = %39
  %48 = call i32* @__errno_location() #1, !dbg !1690
  %49 = load i32, i32* %48, align 4, !dbg !1692
  %50 = call i8* @strerror(i32 %49) #10, !dbg !1693
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* %50), !dbg !1695
  br label %189, !dbg !1697

; <label>:51:                                     ; preds = %39
  %52 = load i32, i32* %7, align 4, !dbg !1698
  %53 = icmp eq i32 %52, 0, !dbg !1700
  br i1 %53, label %54, label %156, !dbg !1701

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata [6 x %struct.sigaction]* %14, metadata !1702, metadata !655), !dbg !1799
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1800, metadata !655), !dbg !1801
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1802, metadata !655), !dbg !1803
  call void @llvm.dbg.declare(metadata i8* %17, metadata !1804, metadata !655), !dbg !1805
  store i8 1, i8* %17, align 1, !dbg !1805
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1806, metadata !655), !dbg !1807
  store i32 -1, i32* %18, align 4, !dbg !1807
  %55 = call i64 @sysconf(i32 4) #10, !dbg !1808
  %56 = trunc i64 %55 to i32, !dbg !1808
  store i32 %56, i32* %16, align 4, !dbg !1809
  store i32 3, i32* %15, align 4, !dbg !1810
  br label %57, !dbg !1812

; <label>:57:                                     ; preds = %73, %54
  %58 = load i32, i32* %15, align 4, !dbg !1813
  %59 = load i32, i32* %16, align 4, !dbg !1816
  %60 = icmp slt i32 %58, %59, !dbg !1817
  br i1 %60, label %61, label %76, !dbg !1818

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %15, align 4, !dbg !1819
  %63 = load i32, i32* %12, align 4, !dbg !1822
  %64 = icmp ne i32 %62, %63, !dbg !1823
  br i1 %64, label %65, label %72, !dbg !1824

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %15, align 4, !dbg !1825
  %67 = load i32, i32* %13, align 4, !dbg !1827
  %68 = icmp ne i32 %66, %67, !dbg !1828
  br i1 %68, label %69, label %72, !dbg !1829

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %15, align 4, !dbg !1830
  %71 = call i32 @close(i32 %70), !dbg !1832
  br label %72, !dbg !1833

; <label>:72:                                     ; preds = %69, %65, %61
  br label %73, !dbg !1834

; <label>:73:                                     ; preds = %72
  %74 = load i32, i32* %15, align 4, !dbg !1835
  %75 = add nsw i32 %74, 1, !dbg !1835
  store i32 %75, i32* %15, align 4, !dbg !1835
  br label %57, !dbg !1837, !llvm.loop !1838

; <label>:76:                                     ; preds = %57
  %77 = getelementptr inbounds [6 x %struct.sigaction], [6 x %struct.sigaction]* %14, i32 0, i32 0, !dbg !1840
  %78 = call i32 @Signal_SetGroupHandler(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @cSignals, i32 0, i32 0), %struct.sigaction* %77, i32 6, void (i32)* null), !dbg !1842
  %79 = icmp eq i32 %78, 0, !dbg !1843
  br i1 %79, label %80, label %81, !dbg !1844

; <label>:80:                                     ; preds = %76
  store i8 0, i8* %17, align 1, !dbg !1845
  br label %81, !dbg !1847

; <label>:81:                                     ; preds = %80, %76
  %82 = load i32, i32* %12, align 4, !dbg !1848
  %83 = call i32 @close(i32 %82), !dbg !1849
  %84 = load i8, i8* %17, align 1, !dbg !1850
  %85 = icmp ne i8 %84, 0, !dbg !1850
  br i1 %85, label %86, label %111, !dbg !1852

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %4, align 8, !dbg !1853
  %88 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %5, align 8, !dbg !1855
  %89 = icmp ne %struct.ProcMgr_ProcArgs* %88, null, !dbg !1855
  br i1 %89, label %90, label %94, !dbg !1855

; <label>:90:                                     ; preds = %86
  %91 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %5, align 8, !dbg !1856
  %92 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %91, i32 0, i32 0, !dbg !1858
  %93 = load i8**, i8*** %92, align 8, !dbg !1858
  br label %95, !dbg !1859

; <label>:94:                                     ; preds = %86
  br label %95, !dbg !1860

; <label>:95:                                     ; preds = %94, %90
  %96 = phi i8** [ %93, %90 ], [ null, %94 ], !dbg !1862
  %97 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %5, align 8, !dbg !1864
  %98 = icmp ne %struct.ProcMgr_ProcArgs* %97, null, !dbg !1864
  br i1 %98, label %99, label %103, !dbg !1864

; <label>:99:                                     ; preds = %95
  %100 = load %struct.ProcMgr_ProcArgs*, %struct.ProcMgr_ProcArgs** %5, align 8, !dbg !1865
  %101 = getelementptr inbounds %struct.ProcMgr_ProcArgs, %struct.ProcMgr_ProcArgs* %100, i32 0, i32 1, !dbg !1866
  %102 = load i8*, i8** %101, align 8, !dbg !1866
  br label %104, !dbg !1867

; <label>:103:                                    ; preds = %95
  br label %104, !dbg !1868

; <label>:104:                                    ; preds = %103, %99
  %105 = phi i8* [ %102, %99 ], [ null, %103 ], !dbg !1869
  %106 = call i32 @ProcMgrStartProcess(i8* %87, i8** %96, i8* %105), !dbg !1870
  store i32 %106, i32* %18, align 4, !dbg !1871
  %107 = load i32, i32* %18, align 4, !dbg !1872
  %108 = icmp ne i32 %107, -1, !dbg !1873
  %109 = zext i1 %108 to i32, !dbg !1873
  %110 = trunc i32 %109 to i8, !dbg !1872
  store i8 %110, i8* %17, align 1, !dbg !1874
  br label %111, !dbg !1875

; <label>:111:                                    ; preds = %104, %81
  %112 = load i32, i32* %13, align 4, !dbg !1876
  %113 = bitcast i32* %18 to i8*, !dbg !1878
  %114 = call i64 @write(i32 %112, i8* %113, i64 4), !dbg !1879
  %115 = icmp eq i64 %114, -1, !dbg !1880
  br i1 %115, label %116, label %117, !dbg !1881

; <label>:116:                                    ; preds = %111
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0)), !dbg !1882
  call void @exit(i32 -1) #12, !dbg !1884
  unreachable, !dbg !1884

; <label>:117:                                    ; preds = %111
  %118 = load i8, i8* %17, align 1, !dbg !1885
  %119 = icmp ne i8 %118, 0, !dbg !1885
  br i1 %119, label %120, label %123, !dbg !1887

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %18, align 4, !dbg !1888
  %122 = call signext i8 @ProcMgrWaitForProcCompletion(i32 %121, i8* %9, i32* %10), !dbg !1890
  store i8 %122, i8* %17, align 1, !dbg !1891
  br label %123, !dbg !1892

; <label>:123:                                    ; preds = %120, %117
  %124 = load i8, i8* %17, align 1, !dbg !1893
  %125 = sext i8 %124 to i32, !dbg !1893
  %126 = icmp ne i32 %125, 0, !dbg !1893
  %127 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), !dbg !1893
  %128 = load i32, i32* %13, align 4, !dbg !1894
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* %127, i32 %128), !dbg !1895
  %129 = load i32, i32* %13, align 4, !dbg !1896
  %130 = call i64 @write(i32 %129, i8* %17, i64 1), !dbg !1898
  %131 = icmp eq i64 %130, -1, !dbg !1899
  br i1 %131, label %132, label %133, !dbg !1900

; <label>:132:                                    ; preds = %123
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0)), !dbg !1901
  call void @exit(i32 -1) #12, !dbg !1903
  unreachable, !dbg !1903

; <label>:133:                                    ; preds = %123
  %134 = load i32, i32* %13, align 4, !dbg !1904
  %135 = bitcast i32* %10 to i8*, !dbg !1906
  %136 = call i64 @write(i32 %134, i8* %135, i64 4), !dbg !1907
  %137 = icmp eq i64 %136, -1, !dbg !1908
  br i1 %137, label %138, label %139, !dbg !1909

; <label>:138:                                    ; preds = %133
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0)), !dbg !1910
  call void @exit(i32 -1) #12, !dbg !1912
  unreachable, !dbg !1912

; <label>:139:                                    ; preds = %133
  %140 = load i32, i32* %13, align 4, !dbg !1913
  %141 = call i32 @close(i32 %140), !dbg !1914
  %142 = load i8, i8* %17, align 1, !dbg !1915
  %143 = sext i8 %142 to i32, !dbg !1915
  %144 = icmp ne i32 %143, 0, !dbg !1915
  br i1 %144, label %145, label %150, !dbg !1917

; <label>:145:                                    ; preds = %139
  %146 = getelementptr inbounds [6 x %struct.sigaction], [6 x %struct.sigaction]* %14, i32 0, i32 0, !dbg !1918
  %147 = call i32 @Signal_ResetGroupHandler(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @cSignals, i32 0, i32 0), %struct.sigaction* %146, i32 6), !dbg !1919
  %148 = icmp eq i32 %147, 0, !dbg !1920
  br i1 %148, label %149, label %150, !dbg !1921

; <label>:149:                                    ; preds = %145
  br label %150, !dbg !1923

; <label>:150:                                    ; preds = %149, %145, %139
  %151 = load i8, i8* %9, align 1, !dbg !1925
  %152 = icmp ne i8 %151, 0, !dbg !1925
  br i1 %152, label %154, label %153, !dbg !1927

; <label>:153:                                    ; preds = %150
  store i32 0, i32* %10, align 4, !dbg !1928
  br label %154, !dbg !1930

; <label>:154:                                    ; preds = %153, %150
  %155 = load i32, i32* %10, align 4, !dbg !1931
  call void @exit(i32 %155) #12, !dbg !1932
  unreachable, !dbg !1932

; <label>:156:                                    ; preds = %51
  br label %157

; <label>:157:                                    ; preds = %156
  %158 = load i32, i32* %13, align 4, !dbg !1933
  %159 = call i32 @close(i32 %158), !dbg !1934
  store i32 -1, i32* %13, align 4, !dbg !1935
  %160 = load i32, i32* %12, align 4, !dbg !1936
  %161 = bitcast i32* %11 to i8*, !dbg !1938
  %162 = call i64 @read(i32 %160, i8* %161, i64 4), !dbg !1939
  %163 = icmp ne i64 %162, 4, !dbg !1940
  br i1 %163, label %164, label %167, !dbg !1941

; <label>:164:                                    ; preds = %157
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0)), !dbg !1942
  %165 = load i32, i32* %7, align 4, !dbg !1944
  %166 = call i32 @ProcMgrKill(i32 %165, i32 9, i32 -1), !dbg !1945
  br label %189, !dbg !1946

; <label>:167:                                    ; preds = %157
  %168 = load i32, i32* %11, align 4, !dbg !1947
  %169 = icmp eq i32 %168, -1, !dbg !1949
  br i1 %169, label %170, label %173, !dbg !1950

; <label>:170:                                    ; preds = %167
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0)), !dbg !1951
  %171 = load i32, i32* %7, align 4, !dbg !1953
  %172 = call i32 @waitpid(i32 %171, i32* null, i32 0), !dbg !1954
  br label %189, !dbg !1955

; <label>:173:                                    ; preds = %167
  %174 = call i8* @UtilSafeMalloc0(i64 20), !dbg !1956
  %175 = bitcast i8* %174 to %struct.ProcMgr_AsyncProc*, !dbg !1956
  store %struct.ProcMgr_AsyncProc* %175, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1957
  %176 = load i32, i32* %12, align 4, !dbg !1958
  %177 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1959
  %178 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %177, i32 0, i32 2, !dbg !1960
  store i32 %176, i32* %178, align 4, !dbg !1961
  store i32 -1, i32* %12, align 4, !dbg !1962
  %179 = load i32, i32* %7, align 4, !dbg !1963
  %180 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1964
  %181 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %180, i32 0, i32 0, !dbg !1965
  store i32 %179, i32* %181, align 4, !dbg !1966
  %182 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1967
  %183 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %182, i32 0, i32 3, !dbg !1968
  store i8 0, i8* %183, align 4, !dbg !1969
  %184 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1970
  %185 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %184, i32 0, i32 4, !dbg !1971
  store i32 -1, i32* %185, align 4, !dbg !1972
  %186 = load i32, i32* %11, align 4, !dbg !1973
  %187 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1974
  %188 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %187, i32 0, i32 1, !dbg !1975
  store i32 %186, i32* %188, align 4, !dbg !1976
  br label %189, !dbg !1974

; <label>:189:                                    ; preds = %173, %170, %164, %47
  %190 = load i32, i32* %12, align 4, !dbg !1977
  %191 = icmp ne i32 %190, -1, !dbg !1979
  br i1 %191, label %192, label %195, !dbg !1980

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %12, align 4, !dbg !1981
  %194 = call i32 @close(i32 %193), !dbg !1983
  br label %195, !dbg !1984

; <label>:195:                                    ; preds = %192, %189
  %196 = load i32, i32* %13, align 4, !dbg !1985
  %197 = icmp ne i32 %196, -1, !dbg !1987
  br i1 %197, label %198, label %201, !dbg !1988

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* %13, align 4, !dbg !1989
  %200 = call i32 @close(i32 %199), !dbg !1991
  br label %201, !dbg !1992

; <label>:201:                                    ; preds = %198, %195
  %202 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %6, align 8, !dbg !1993
  store %struct.ProcMgr_AsyncProc* %202, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !1994
  br label %203, !dbg !1994

; <label>:203:                                    ; preds = %201, %37
  %204 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !1995
  ret %struct.ProcMgr_AsyncProc* %204, !dbg !1995
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i64 @sysconf(i32) #3

declare i32 @Signal_SetGroupHandler(i32*, %struct.sigaction*, i32, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ProcMgrStartProcess(i8*, i8**, i8*) #0 !dbg !633 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [4 x i8*], align 16
  %13 = alloca [4 x i8*], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1996, metadata !655), !dbg !1997
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1998, metadata !655), !dbg !1999
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2000, metadata !655), !dbg !2001
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2002, metadata !655), !dbg !2003
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2004, metadata !655), !dbg !2005
  store i8* null, i8** %9, align 8, !dbg !2005
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2006, metadata !655), !dbg !2007
  store i8** null, i8*** %10, align 8, !dbg !2007
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2008, metadata !655), !dbg !2009
  store i8* null, i8** %11, align 8, !dbg !2009
  %16 = load i8*, i8** %5, align 8, !dbg !2010
  %17 = icmp eq i8* %16, null, !dbg !2012
  br i1 %17, label %18, label %19, !dbg !2013

; <label>:18:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !2014
  br label %106, !dbg !2014

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %5, align 8, !dbg !2016
  %21 = load i8*, i8** %5, align 8, !dbg !2018
  %22 = call i64 @strlen(i8* %21) #11, !dbg !2019
  %23 = call signext i8 @CodeSet_Utf8ToCurrent(i8* %20, i64 %22, i8** %9, i64* null), !dbg !2020
  %24 = icmp ne i8 %23, 0, !dbg !2022
  br i1 %24, label %26, label %25, !dbg !2023

; <label>:25:                                     ; preds = %19
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0)), !dbg !2024
  store i32 -1, i32* %4, align 4, !dbg !2026
  br label %106, !dbg !2026

; <label>:26:                                     ; preds = %19
  %27 = load i8*, i8** %7, align 8, !dbg !2027
  %28 = icmp ne i8* null, %27, !dbg !2029
  br i1 %28, label %29, label %36, !dbg !2030

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** %7, align 8, !dbg !2031
  %31 = load i8*, i8** %7, align 8, !dbg !2032
  %32 = call i64 @strlen(i8* %31) #11, !dbg !2033
  %33 = call signext i8 @CodeSet_Utf8ToCurrent(i8* %30, i64 %32, i8** %11, i64* null), !dbg !2034
  %34 = icmp ne i8 %33, 0, !dbg !2036
  br i1 %34, label %36, label %35, !dbg !2037

; <label>:35:                                     ; preds = %29
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.42, i32 0, i32 0)), !dbg !2039
  store i32 -1, i32* %4, align 4, !dbg !2041
  br label %106, !dbg !2041

; <label>:36:                                     ; preds = %29, %26
  %37 = load i8**, i8*** %6, align 8, !dbg !2042
  %38 = icmp ne i8** null, %37, !dbg !2044
  br i1 %38, label %39, label %42, !dbg !2045

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %6, align 8, !dbg !2046
  %41 = call i8** @Unicode_GetAllocList(i8** %40, i64 -1, i32 -1), !dbg !2048
  store i8** %41, i8*** %10, align 8, !dbg !2049
  br label %42, !dbg !2050

; <label>:42:                                     ; preds = %39, %36
  %43 = call i32 @fork() #10, !dbg !2051
  store i32 %43, i32* %8, align 4, !dbg !2052
  %44 = load i32, i32* %8, align 4, !dbg !2053
  %45 = icmp eq i32 %44, -1, !dbg !2055
  br i1 %45, label %46, label %50, !dbg !2056

; <label>:46:                                     ; preds = %42
  %47 = call i32* @__errno_location() #1, !dbg !2057
  %48 = load i32, i32* %47, align 4, !dbg !2059
  %49 = call i8* @strerror(i32 %48) #10, !dbg !2060
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* %49), !dbg !2062
  br label %101, !dbg !2064

; <label>:50:                                     ; preds = %42
  %51 = load i32, i32* %8, align 4, !dbg !2065
  %52 = icmp eq i32 %51, 0, !dbg !2068
  br i1 %52, label %53, label %100, !dbg !2065

; <label>:53:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata [4 x i8*]* %12, metadata !2069, metadata !655), !dbg !2074
  %54 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0, !dbg !2075
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8** %54, align 8, !dbg !2075
  %55 = getelementptr inbounds i8*, i8** %54, i64 1, !dbg !2075
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8** %55, align 8, !dbg !2075
  %56 = getelementptr inbounds i8*, i8** %55, i64 1, !dbg !2075
  %57 = load i8*, i8** %9, align 8, !dbg !2076
  store i8* %57, i8** %56, align 8, !dbg !2075
  %58 = getelementptr inbounds i8*, i8** %56, i64 1, !dbg !2075
  store i8* null, i8** %58, align 8, !dbg !2075
  call void @llvm.dbg.declare(metadata [4 x i8*]* %13, metadata !2077, metadata !655), !dbg !2078
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0, !dbg !2079
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8** %59, align 8, !dbg !2079
  %60 = getelementptr inbounds i8*, i8** %59, i64 1, !dbg !2079
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8** %60, align 8, !dbg !2079
  %61 = getelementptr inbounds i8*, i8** %60, i64 1, !dbg !2079
  %62 = load i8*, i8** %9, align 8, !dbg !2080
  store i8* %62, i8** %61, align 8, !dbg !2079
  %63 = getelementptr inbounds i8*, i8** %61, i64 1, !dbg !2079
  store i8* null, i8** %63, align 8, !dbg !2079
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2081, metadata !655), !dbg !2082
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !2083, metadata !655), !dbg !2084
  %64 = call signext i8 @File_Exists(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @ProcMgrStartProcess.bashShellPath, i32 0, i32 0)), !dbg !2085
  %65 = icmp ne i8 %64, 0, !dbg !2085
  br i1 %65, label %66, label %68, !dbg !2087

; <label>:66:                                     ; preds = %53
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @ProcMgrStartProcess.bashShellPath, i32 0, i32 0), i8** %14, align 8, !dbg !2088
  %67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i32 0, i32 0, !dbg !2090
  store i8** %67, i8*** %15, align 8, !dbg !2091
  br label %70, !dbg !2092

; <label>:68:                                     ; preds = %53
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ProcMgrStartProcess.bourneShellPath, i32 0, i32 0), i8** %14, align 8, !dbg !2093
  %69 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i32 0, i32 0, !dbg !2095
  store i8** %69, i8*** %15, align 8, !dbg !2096
  br label %70

; <label>:70:                                     ; preds = %68, %66
  %71 = load i8*, i8** %11, align 8, !dbg !2097
  %72 = icmp ne i8* null, %71, !dbg !2099
  br i1 %72, label %73, label %83, !dbg !2100

; <label>:73:                                     ; preds = %70
  %74 = load i8*, i8** %11, align 8, !dbg !2101
  %75 = call i32 @chdir(i8* %74) #10, !dbg !2104
  %76 = icmp ne i32 %75, 0, !dbg !2105
  br i1 %76, label %77, label %82, !dbg !2106

; <label>:77:                                     ; preds = %73
  %78 = load i8*, i8** %11, align 8, !dbg !2107
  %79 = call i32* @__errno_location() #1, !dbg !2109
  %80 = load i32, i32* %79, align 4, !dbg !2110
  %81 = call i8* @strerror(i32 %80) #10, !dbg !2111
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.ProcMgrStartProcess, i32 0, i32 0), i8* %78, i8* %81), !dbg !2113
  br label %82, !dbg !2114

; <label>:82:                                     ; preds = %77, %73
  br label %83, !dbg !2115

; <label>:83:                                     ; preds = %82, %70
  %84 = load i8**, i8*** %10, align 8, !dbg !2116
  %85 = icmp ne i8** null, %84, !dbg !2118
  br i1 %85, label %86, label %91, !dbg !2119

; <label>:86:                                     ; preds = %83
  %87 = load i8*, i8** %14, align 8, !dbg !2120
  %88 = load i8**, i8*** %15, align 8, !dbg !2122
  %89 = load i8**, i8*** %10, align 8, !dbg !2123
  %90 = call i32 @execve(i8* %87, i8** %88, i8** %89) #10, !dbg !2124
  br label %95, !dbg !2125

; <label>:91:                                     ; preds = %83
  %92 = load i8*, i8** %14, align 8, !dbg !2126
  %93 = load i8**, i8*** %15, align 8, !dbg !2128
  %94 = call i32 @execv(i8* %92, i8** %93) #10, !dbg !2129
  br label %95

; <label>:95:                                     ; preds = %91, %86
  %96 = load i8*, i8** %5, align 8, !dbg !2130
  %97 = call i32* @__errno_location() #1, !dbg !2131
  %98 = load i32, i32* %97, align 4, !dbg !2132
  %99 = call i8* @strerror(i32 %98) #10, !dbg !2133
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.47, i32 0, i32 0), i8* %96, i8* %99) #13, !dbg !2135
  unreachable, !dbg !2135

; <label>:100:                                    ; preds = %50
  br label %101

; <label>:101:                                    ; preds = %100, %46
  %102 = load i8*, i8** %9, align 8, !dbg !2136
  call void @free(i8* %102) #10, !dbg !2137
  %103 = load i8*, i8** %11, align 8, !dbg !2138
  call void @free(i8* %103) #10, !dbg !2139
  %104 = load i8**, i8*** %10, align 8, !dbg !2140
  call void @Util_FreeStringList(i8** %104, i64 -1), !dbg !2141
  %105 = load i32, i32* %8, align 4, !dbg !2142
  store i32 %105, i32* %4, align 4, !dbg !2143
  br label %106, !dbg !2143

; <label>:106:                                    ; preds = %101, %35, %25, %18
  %107 = load i32, i32* %4, align 4, !dbg !2144
  ret i32 %107, !dbg !2144
}

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

; Function Attrs: nounwind uwtable
define internal signext i8 @ProcMgrWaitForProcCompletion(i32, i8*, i32*) #0 !dbg !2145 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.anon.8, align 4
  %12 = alloca %union.anon.9, align 4
  %13 = alloca %union.anon.10, align 4
  %14 = alloca %union.anon.11, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2148, metadata !655), !dbg !2149
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2150, metadata !655), !dbg !2151
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !2152, metadata !655), !dbg !2153
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2154, metadata !655), !dbg !2155
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2156, metadata !655), !dbg !2157
  %15 = load i8*, i8** %6, align 8, !dbg !2158
  %16 = icmp ne i8* null, %15, !dbg !2160
  br i1 %16, label %17, label %19, !dbg !2161

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !2162
  store i8 0, i8* %18, align 1, !dbg !2164
  br label %19, !dbg !2165

; <label>:19:                                     ; preds = %17, %3
  br label %20, !dbg !2166

; <label>:20:                                     ; preds = %34, %19
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2167, metadata !655), !dbg !2171
  %21 = load i32, i32* %5, align 4, !dbg !2172
  %22 = call i32 @waitpid(i32 %21, i32* %9, i32 0), !dbg !2173
  store i32 %22, i32* %10, align 4, !dbg !2174
  %23 = load i32, i32* %10, align 4, !dbg !2175
  %24 = load i32, i32* %5, align 4, !dbg !2177
  %25 = icmp eq i32 %23, %24, !dbg !2178
  br i1 %25, label %26, label %27, !dbg !2179

; <label>:26:                                     ; preds = %20
  br label %40, !dbg !2180

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %10, align 4, !dbg !2182
  %29 = icmp eq i32 %28, -1, !dbg !2184
  br i1 %29, label %30, label %35, !dbg !2185

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno_location() #1, !dbg !2186
  %32 = load i32, i32* %31, align 4, !dbg !2188
  %33 = icmp eq i32 %32, 4, !dbg !2189
  br i1 %33, label %34, label %35, !dbg !2190

; <label>:34:                                     ; preds = %30
  br label %20, !dbg !2192, !llvm.loop !2194

; <label>:35:                                     ; preds = %30, %27
  %36 = load i32, i32* %5, align 4, !dbg !2195
  %37 = call i32* @__errno_location() #1, !dbg !2196
  %38 = load i32, i32* %37, align 4, !dbg !2197
  %39 = call i8* @strerror(i32 %38) #10, !dbg !2198
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i32 0, i32 0), i32 %36, i8* %39), !dbg !2199
  store i8 0, i8* %4, align 1, !dbg !2200
  br label %88, !dbg !2200

; <label>:40:                                     ; preds = %26
  %41 = load i8*, i8** %6, align 8, !dbg !2201
  %42 = icmp ne i8* null, %41, !dbg !2203
  br i1 %42, label %43, label %63, !dbg !2204

; <label>:43:                                     ; preds = %40
  %44 = load i32*, i32** %7, align 8, !dbg !2205
  %45 = icmp ne i32* null, %44, !dbg !2207
  br i1 %45, label %46, label %63, !dbg !2208

; <label>:46:                                     ; preds = %43
  %47 = bitcast %union.anon.8* %11 to i32*, !dbg !2209
  %48 = load i32, i32* %9, align 4, !dbg !2211
  store i32 %48, i32* %47, align 4, !dbg !2209
  %49 = bitcast %union.anon.8* %11 to i32*, !dbg !2212
  %50 = load i32, i32* %49, align 4, !dbg !2212
  %51 = and i32 %50, 127, !dbg !2213
  %52 = icmp eq i32 %51, 0, !dbg !2209
  %53 = zext i1 %52 to i32, !dbg !2209
  %54 = trunc i32 %53 to i8, !dbg !2211
  %55 = load i8*, i8** %6, align 8, !dbg !2214
  store i8 %54, i8* %55, align 1, !dbg !2215
  %56 = bitcast %union.anon.9* %12 to i32*, !dbg !2216
  %57 = load i32, i32* %9, align 4, !dbg !2217
  store i32 %57, i32* %56, align 4, !dbg !2216
  %58 = bitcast %union.anon.9* %12 to i32*, !dbg !2218
  %59 = load i32, i32* %58, align 4, !dbg !2218
  %60 = and i32 %59, 65280, !dbg !2219
  %61 = ashr i32 %60, 8, !dbg !2220
  %62 = load i32*, i32** %7, align 8, !dbg !2221
  store i32 %61, i32* %62, align 4, !dbg !2222
  br label %63, !dbg !2223

; <label>:63:                                     ; preds = %46, %43, %40
  %64 = bitcast %union.anon.10* %13 to i32*, !dbg !2224
  %65 = load i32, i32* %9, align 4, !dbg !2225
  store i32 %65, i32* %64, align 4, !dbg !2224
  %66 = bitcast %union.anon.10* %13 to i32*, !dbg !2226
  %67 = load i32, i32* %66, align 4, !dbg !2226
  %68 = and i32 %67, 127, !dbg !2227
  %69 = icmp eq i32 %68, 0, !dbg !2224
  br i1 %69, label %70, label %78, !dbg !2228

; <label>:70:                                     ; preds = %63
  %71 = bitcast %union.anon.11* %14 to i32*, !dbg !2229
  %72 = load i32, i32* %9, align 4, !dbg !2231
  store i32 %72, i32* %71, align 4, !dbg !2229
  %73 = bitcast %union.anon.11* %14 to i32*, !dbg !2232
  %74 = load i32, i32* %73, align 4, !dbg !2232
  %75 = and i32 %74, 65280, !dbg !2233
  %76 = ashr i32 %75, 8, !dbg !2234
  %77 = icmp eq i32 %76, 0, !dbg !2235
  br label %78

; <label>:78:                                     ; preds = %70, %63
  %79 = phi i1 [ false, %63 ], [ %77, %70 ]
  %80 = zext i1 %79 to i32, !dbg !2236
  %81 = trunc i32 %80 to i8, !dbg !2238
  store i8 %81, i8* %8, align 1, !dbg !2239
  %82 = load i32, i32* %5, align 4, !dbg !2240
  %83 = load i8, i8* %8, align 1, !dbg !2241
  %84 = sext i8 %83 to i32, !dbg !2241
  %85 = icmp ne i32 %84, 0, !dbg !2241
  %86 = select i1 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), !dbg !2241
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0), i32 %82, i8* %86), !dbg !2242
  %87 = load i8, i8* %8, align 1, !dbg !2243
  store i8 %87, i8* %4, align 1, !dbg !2244
  br label %88, !dbg !2244

; <label>:88:                                     ; preds = %78, %35
  %89 = load i8, i8* %4, align 1, !dbg !2245
  ret i8 %89, !dbg !2245
}

declare i32 @Signal_ResetGroupHandler(i32*, %struct.sigaction*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ProcMgrKill(i32, i32, i32) #0 !dbg !2246 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2249, metadata !655), !dbg !2250
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2251, metadata !655), !dbg !2252
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2253, metadata !655), !dbg !2254
  %11 = load i32, i32* %5, align 4, !dbg !2255
  %12 = load i32, i32* %6, align 4, !dbg !2257
  %13 = call i32 @kill(i32 %11, i32 %12) #10, !dbg !2258
  %14 = icmp eq i32 %13, -1, !dbg !2259
  br i1 %14, label %15, label %23, !dbg !2260

; <label>:15:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2261, metadata !655), !dbg !2263
  %16 = call i32* @__errno_location() #1, !dbg !2264
  %17 = load i32, i32* %16, align 4, !dbg !2265
  store i32 %17, i32* %8, align 4, !dbg !2263
  %18 = load i32, i32* %5, align 4, !dbg !2266
  %19 = load i32, i32* %6, align 4, !dbg !2267
  %20 = call i8* @Err_ErrString(), !dbg !2268
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.52, i32 0, i32 0), i32 %18, i32 %19, i8* %20), !dbg !2269
  %21 = load i32, i32* %8, align 4, !dbg !2270
  %22 = call i32* @__errno_location() #1, !dbg !2271
  store i32 %21, i32* %22, align 4, !dbg !2272
  store i32 0, i32* %4, align 4, !dbg !2273
  br label %72, !dbg !2273

; <label>:23:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2274, metadata !655), !dbg !2276
  store i32 0, i32* %9, align 4, !dbg !2277
  br label %24, !dbg !2279

; <label>:24:                                     ; preds = %65, %23
  %25 = load i32, i32* %7, align 4, !dbg !2280
  %26 = icmp eq i32 %25, -1, !dbg !2283
  br i1 %26, label %32, label %27, !dbg !2284

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %9, align 4, !dbg !2285
  %29 = load i32, i32* %7, align 4, !dbg !2287
  %30 = mul nsw i32 %29, 10, !dbg !2288
  %31 = icmp slt i32 %28, %30, !dbg !2289
  br label %32, !dbg !2290

; <label>:32:                                     ; preds = %27, %24
  %33 = phi i1 [ true, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %68, !dbg !2291

; <label>:34:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2293, metadata !655), !dbg !2295
  %35 = load i32, i32* %5, align 4, !dbg !2296
  %36 = call i32 @waitpid(i32 %35, i32* null, i32 1), !dbg !2297
  store i32 %36, i32* %10, align 4, !dbg !2298
  %37 = load i32, i32* %10, align 4, !dbg !2299
  %38 = icmp eq i32 %37, -1, !dbg !2301
  br i1 %38, label %39, label %54, !dbg !2302

; <label>:39:                                     ; preds = %34
  %40 = call i32* @__errno_location() #1, !dbg !2303
  %41 = load i32, i32* %40, align 4, !dbg !2306
  %42 = icmp eq i32 10, %41, !dbg !2307
  br i1 %42, label %43, label %51, !dbg !2308

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %5, align 4, !dbg !2309
  %45 = call signext i8 @ProcMgr_IsProcessRunning(i32 %44), !dbg !2312
  %46 = icmp ne i8 %45, 0, !dbg !2312
  br i1 %46, label %47, label %50, !dbg !2313

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %5, align 4, !dbg !2314
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i32 0, i32 0), i32 %48), !dbg !2316
  %49 = call i32 @usleep(i32 100000), !dbg !2317
  br label %65, !dbg !2318

; <label>:50:                                     ; preds = %43
  store i32 1, i32* %4, align 4, !dbg !2319
  br label %72, !dbg !2319

; <label>:51:                                     ; preds = %39
  %52 = load i32, i32* %5, align 4, !dbg !2320
  %53 = call i8* @Err_ErrString(), !dbg !2321
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0), i32 %52, i8* %53), !dbg !2322
  br label %64, !dbg !2323

; <label>:54:                                     ; preds = %34
  %55 = load i32, i32* %10, align 4, !dbg !2324
  %56 = icmp eq i32 %55, 0, !dbg !2327
  br i1 %56, label %57, label %59, !dbg !2324

; <label>:57:                                     ; preds = %54
  %58 = call i32 @usleep(i32 100000), !dbg !2328
  br label %63, !dbg !2330

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %5, align 4, !dbg !2331
  %61 = load i32, i32* %6, align 4, !dbg !2333
  %62 = load i32, i32* %9, align 4, !dbg !2334
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i32 0, i32 0), i32 %60, i32 %61, i32 %62), !dbg !2335
  store i32 1, i32* %4, align 4, !dbg !2336
  br label %72, !dbg !2336

; <label>:63:                                     ; preds = %57
  br label %64

; <label>:64:                                     ; preds = %63, %51
  br label %65, !dbg !2337

; <label>:65:                                     ; preds = %64, %47
  %66 = load i32, i32* %9, align 4, !dbg !2338
  %67 = add nsw i32 %66, 1, !dbg !2338
  store i32 %67, i32* %9, align 4, !dbg !2338
  br label %24, !dbg !2340, !llvm.loop !2341

; <label>:68:                                     ; preds = %32
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %5, align 4, !dbg !2343
  %71 = load i32, i32* %6, align 4, !dbg !2344
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.ProcMgrKill, i32 0, i32 0), i32 %70, i32 %71), !dbg !2345
  store i32 -1, i32* %4, align 4, !dbg !2346
  br label %72, !dbg !2346

; <label>:72:                                     ; preds = %69, %59, %50, %15
  %73 = load i32, i32* %4, align 4, !dbg !2347
  ret i32 %73, !dbg !2347
}

declare i32 @waitpid(i32, i32*, i32) #2

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind uwtable
define signext i8 @ProcMgr_KillByPid(i32) #0 !dbg !2348 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2351, metadata !655), !dbg !2352
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2353, metadata !655), !dbg !2354
  %4 = load i32, i32* %2, align 4, !dbg !2355
  %5 = call i32 @ProcMgrKill(i32 %4, i32 15, i32 5), !dbg !2356
  store i32 %5, i32* %3, align 4, !dbg !2357
  %6 = load i32, i32* %3, align 4, !dbg !2358
  %7 = icmp ne i32 %6, 1, !dbg !2360
  br i1 %7, label %8, label %16, !dbg !2361

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !2362
  %10 = call i32 @ProcMgrKill(i32 %9, i32 9, i32 15), !dbg !2364
  store i32 %10, i32* %3, align 4, !dbg !2365
  %11 = load i32, i32* %3, align 4, !dbg !2366
  %12 = icmp eq i32 %11, -1, !dbg !2368
  br i1 %12, label %13, label %15, !dbg !2369

; <label>:13:                                     ; preds = %8
  %14 = call i32* @__errno_location() #1, !dbg !2370
  store i32 35, i32* %14, align 4, !dbg !2372
  br label %15, !dbg !2373

; <label>:15:                                     ; preds = %13, %8
  br label %16, !dbg !2374

; <label>:16:                                     ; preds = %15, %1
  %17 = load i32, i32* %3, align 4, !dbg !2375
  %18 = icmp eq i32 %17, 1, !dbg !2376
  %19 = zext i1 %18 to i32, !dbg !2376
  %20 = trunc i32 %19 to i8, !dbg !2377
  ret i8 %20, !dbg !2378
}

; Function Attrs: nounwind uwtable
define void @ProcMgr_Kill(%struct.ProcMgr_AsyncProc*) #0 !dbg !2379 {
  %2 = alloca %struct.ProcMgr_AsyncProc*, align 8
  store %struct.ProcMgr_AsyncProc* %0, %struct.ProcMgr_AsyncProc** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_AsyncProc** %2, metadata !2382, metadata !655), !dbg !2383
  %3 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2384
  %4 = icmp eq %struct.ProcMgr_AsyncProc* %3, null, !dbg !2386
  br i1 %4, label %10, label %5, !dbg !2387

; <label>:5:                                      ; preds = %1
  %6 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2388
  %7 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %6, i32 0, i32 0, !dbg !2390
  %8 = load i32, i32* %7, align 4, !dbg !2390
  %9 = icmp eq i32 %8, -1, !dbg !2391
  br i1 %9, label %10, label %11, !dbg !2392

; <label>:10:                                     ; preds = %5, %1
  br label %18, !dbg !2393

; <label>:11:                                     ; preds = %5
  %12 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2395
  %13 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %12, i32 0, i32 0, !dbg !2396
  %14 = load i32, i32* %13, align 4, !dbg !2396
  %15 = call signext i8 @ProcMgr_KillByPid(i32 %14), !dbg !2397
  %16 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2398
  %17 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %16, i32 0, i32 0, !dbg !2399
  store i32 -1, i32* %17, align 4, !dbg !2400
  br label %18, !dbg !2401

; <label>:18:                                     ; preds = %11, %10
  ret void, !dbg !2402
}

; Function Attrs: nounwind uwtable
define signext i8 @ProcMgr_IsAsyncProcRunning(%struct.ProcMgr_AsyncProc*) #0 !dbg !2404 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.ProcMgr_AsyncProc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ProcMgr_AsyncProc* %0, %struct.ProcMgr_AsyncProc** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_AsyncProc** %3, metadata !2407, metadata !655), !dbg !2408
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2409, metadata !655), !dbg !2410
  call void @llvm.dbg.declare(metadata %struct.fd_set* %5, metadata !2411, metadata !655), !dbg !2417
  call void @llvm.dbg.declare(metadata %struct.timeval* %6, metadata !2418, metadata !655), !dbg !2425
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2426, metadata !655), !dbg !2427
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2428, metadata !655), !dbg !2430
  %11 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2431
  %12 = call i32 @ProcMgr_GetAsyncProcSelectable(%struct.ProcMgr_AsyncProc* %11), !dbg !2432
  store i32 %12, i32* %8, align 4, !dbg !2433
  br label %13, !dbg !2434, !llvm.loop !2435

; <label>:13:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2436, metadata !655), !dbg !2438
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2439, metadata !655), !dbg !2440
  %14 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0, !dbg !2441
  %15 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0, !dbg !2443
  %16 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %15) #10, !dbg !2444, !srcloc !2445
  %17 = extractvalue { i64, i64* } %16, 0, !dbg !2444
  %18 = extractvalue { i64, i64* } %16, 1, !dbg !2444
  %19 = trunc i64 %17 to i32, !dbg !2444
  store i32 %19, i32* %9, align 4, !dbg !2444
  %20 = ptrtoint i64* %18 to i64, !dbg !2444
  %21 = trunc i64 %20 to i32, !dbg !2444
  store i32 %21, i32* %10, align 4, !dbg !2444
  br label %22, !dbg !2446

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %8, align 4, !dbg !2447
  %24 = srem i32 %23, 64, !dbg !2448
  %25 = zext i32 %24 to i64, !dbg !2449
  %26 = shl i64 1, %25, !dbg !2449
  %27 = load i32, i32* %8, align 4, !dbg !2447
  %28 = sdiv i32 %27, 64, !dbg !2448
  %29 = sext i32 %28 to i64, !dbg !2450
  %30 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i32 0, i32 0, !dbg !2451
  %31 = getelementptr inbounds [16 x i64], [16 x i64]* %30, i64 0, i64 %29, !dbg !2450
  %32 = load i64, i64* %31, align 8, !dbg !2452
  %33 = or i64 %32, %26, !dbg !2452
  store i64 %33, i64* %31, align 8, !dbg !2452
  %34 = load i32, i32* %8, align 4, !dbg !2453
  store i32 %34, i32* %4, align 4, !dbg !2454
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0, !dbg !2455
  store i64 0, i64* %35, align 8, !dbg !2456
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1, !dbg !2457
  store i64 0, i64* %36, align 8, !dbg !2458
  %37 = load i32, i32* %4, align 4, !dbg !2459
  %38 = add nsw i32 %37, 1, !dbg !2460
  %39 = call i32 @select(i32 %38, %struct.fd_set* %5, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %6), !dbg !2461
  store i32 %39, i32* %7, align 4, !dbg !2462
  %40 = load i32, i32* %7, align 4, !dbg !2463
  %41 = icmp eq i32 %40, -1, !dbg !2465
  br i1 %41, label %42, label %43, !dbg !2466

; <label>:42:                                     ; preds = %22
  store i8 0, i8* %2, align 1, !dbg !2467
  br label %48, !dbg !2467

; <label>:43:                                     ; preds = %22
  %44 = load i32, i32* %7, align 4, !dbg !2469
  %45 = icmp sgt i32 %44, 0, !dbg !2471
  br i1 %45, label %46, label %47, !dbg !2472

; <label>:46:                                     ; preds = %43
  store i8 0, i8* %2, align 1, !dbg !2473
  br label %48, !dbg !2473

; <label>:47:                                     ; preds = %43
  store i8 1, i8* %2, align 1, !dbg !2475
  br label %48, !dbg !2475

; <label>:48:                                     ; preds = %47, %46, %42
  %49 = load i8, i8* %2, align 1, !dbg !2477
  ret i8 %49, !dbg !2477
}

; Function Attrs: nounwind uwtable
define i32 @ProcMgr_GetAsyncProcSelectable(%struct.ProcMgr_AsyncProc*) #0 !dbg !2478 {
  %2 = alloca %struct.ProcMgr_AsyncProc*, align 8
  store %struct.ProcMgr_AsyncProc* %0, %struct.ProcMgr_AsyncProc** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_AsyncProc** %2, metadata !2481, metadata !655), !dbg !2482
  %3 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2483
  %4 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %3, i32 0, i32 2, !dbg !2484
  %5 = load i32, i32* %4, align 4, !dbg !2484
  ret i32 %5, !dbg !2485
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

; Function Attrs: nounwind uwtable
define i32 @ProcMgr_GetPid(%struct.ProcMgr_AsyncProc*) #0 !dbg !2486 {
  %2 = alloca %struct.ProcMgr_AsyncProc*, align 8
  store %struct.ProcMgr_AsyncProc* %0, %struct.ProcMgr_AsyncProc** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_AsyncProc** %2, metadata !2489, metadata !655), !dbg !2490
  %3 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2491
  %4 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %3, i32 0, i32 1, !dbg !2492
  %5 = load i32, i32* %4, align 4, !dbg !2492
  ret i32 %5, !dbg !2493
}

; Function Attrs: nounwind uwtable
define i32 @ProcMgr_GetExitCode(%struct.ProcMgr_AsyncProc*, i32*) #0 !dbg !2494 {
  %3 = alloca %struct.ProcMgr_AsyncProc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  store %struct.ProcMgr_AsyncProc* %0, %struct.ProcMgr_AsyncProc** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_AsyncProc** %3, metadata !2497, metadata !655), !dbg !2498
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2499, metadata !655), !dbg !2500
  %6 = load i32*, i32** %4, align 8, !dbg !2501
  store i32 -1, i32* %6, align 4, !dbg !2502
  %7 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2503
  %8 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %7, i32 0, i32 0, !dbg !2505
  %9 = load i32, i32* %8, align 4, !dbg !2505
  %10 = icmp ne i32 %9, -1, !dbg !2506
  br i1 %10, label %11, label %37, !dbg !2507

; <label>:11:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2508, metadata !655), !dbg !2510
  %12 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2511
  %13 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %12, i32 0, i32 2, !dbg !2513
  %14 = load i32, i32* %13, align 4, !dbg !2513
  %15 = call i64 @read(i32 %14, i8* %5, i64 1), !dbg !2514
  %16 = icmp ne i64 %15, 1, !dbg !2515
  br i1 %16, label %17, label %18, !dbg !2516

; <label>:17:                                     ; preds = %11
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0)), !dbg !2517
  br label %42, !dbg !2519

; <label>:18:                                     ; preds = %11
  %19 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2520
  %20 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %19, i32 0, i32 2, !dbg !2522
  %21 = load i32, i32* %20, align 4, !dbg !2522
  %22 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2523
  %23 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %22, i32 0, i32 4, !dbg !2524
  %24 = bitcast i32* %23 to i8*, !dbg !2525
  %25 = call i64 @read(i32 %21, i8* %24, i64 4), !dbg !2526
  %26 = icmp ne i64 %25, 4, !dbg !2527
  br i1 %26, label %27, label %28, !dbg !2528

; <label>:27:                                     ; preds = %18
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i32 0, i32 0)), !dbg !2529
  br label %42, !dbg !2531

; <label>:28:                                     ; preds = %18
  %29 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2532
  %30 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %29, i32 0, i32 3, !dbg !2533
  store i8 1, i8* %30, align 4, !dbg !2534
  %31 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2535
  %32 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %31, i32 0, i32 2, !dbg !2536
  %33 = load i32, i32* %32, align 4, !dbg !2536
  %34 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2537
  %35 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %34, i32 0, i32 4, !dbg !2538
  %36 = load i32, i32* %35, align 4, !dbg !2538
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0), i32 %33, i32 %36), !dbg !2539
  br label %37, !dbg !2540

; <label>:37:                                     ; preds = %28, %2
  %38 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2541
  %39 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %38, i32 0, i32 4, !dbg !2542
  %40 = load i32, i32* %39, align 4, !dbg !2542
  %41 = load i32*, i32** %4, align 8, !dbg !2543
  store i32 %40, i32* %41, align 4, !dbg !2544
  br label %42, !dbg !2545

; <label>:42:                                     ; preds = %37, %27, %17
  %43 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2546
  %44 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %43, i32 0, i32 0, !dbg !2548
  %45 = load i32, i32* %44, align 4, !dbg !2548
  %46 = icmp ne i32 %45, -1, !dbg !2549
  br i1 %46, label %47, label %57, !dbg !2550

; <label>:47:                                     ; preds = %42
  %48 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2551
  %49 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %48, i32 0, i32 0, !dbg !2553
  %50 = load i32, i32* %49, align 4, !dbg !2553
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i32 %50), !dbg !2554
  %51 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2555
  %52 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %51, i32 0, i32 0, !dbg !2556
  %53 = load i32, i32* %52, align 4, !dbg !2556
  %54 = call i32 @waitpid(i32 %53, i32* null, i32 0), !dbg !2557
  %55 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2558
  %56 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %55, i32 0, i32 0, !dbg !2559
  store i32 -1, i32* %56, align 4, !dbg !2560
  br label %57, !dbg !2561

; <label>:57:                                     ; preds = %47, %42
  %58 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %3, align 8, !dbg !2562
  %59 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %58, i32 0, i32 4, !dbg !2563
  %60 = load i32, i32* %59, align 4, !dbg !2563
  %61 = icmp eq i32 %60, -1, !dbg !2564
  %62 = select i1 %61, i32 -1, i32 0, !dbg !2565
  ret i32 %62, !dbg !2566
}

; Function Attrs: nounwind uwtable
define void @ProcMgr_Free(%struct.ProcMgr_AsyncProc*) #0 !dbg !2567 {
  %2 = alloca %struct.ProcMgr_AsyncProc*, align 8
  store %struct.ProcMgr_AsyncProc* %0, %struct.ProcMgr_AsyncProc** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.ProcMgr_AsyncProc** %2, metadata !2568, metadata !655), !dbg !2569
  %3 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2570
  %4 = icmp ne %struct.ProcMgr_AsyncProc* %3, null, !dbg !2572
  br i1 %4, label %5, label %15, !dbg !2573

; <label>:5:                                      ; preds = %1
  %6 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2574
  %7 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %6, i32 0, i32 2, !dbg !2576
  %8 = load i32, i32* %7, align 4, !dbg !2576
  %9 = icmp ne i32 %8, -1, !dbg !2577
  br i1 %9, label %10, label %15, !dbg !2578

; <label>:10:                                     ; preds = %5
  %11 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2579
  %12 = getelementptr inbounds %struct.ProcMgr_AsyncProc, %struct.ProcMgr_AsyncProc* %11, i32 0, i32 2, !dbg !2581
  %13 = load i32, i32* %12, align 4, !dbg !2581
  %14 = call i32 @close(i32 %13), !dbg !2582
  br label %15, !dbg !2583

; <label>:15:                                     ; preds = %10, %5, %1
  %16 = load %struct.ProcMgr_AsyncProc*, %struct.ProcMgr_AsyncProc** %2, align 8, !dbg !2584
  %17 = bitcast %struct.ProcMgr_AsyncProc* %16 to i8*, !dbg !2584
  call void @free(i8* %17) #10, !dbg !2585
  ret void, !dbg !2586
}

; Function Attrs: nounwind uwtable
define signext i8 @ProcMgr_ImpersonateUserStart(i8*, %struct.passwd*) #0 !dbg !2587 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca [8192 x i8], align 16
  %7 = alloca %struct.passwd, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2594, metadata !655), !dbg !2595
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.passwd** %5, metadata !2596, metadata !655), !dbg !2597
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !2598, metadata !655), !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.passwd* %7, metadata !2603, metadata !655), !dbg !2604
  call void @llvm.dbg.declare(metadata %struct.passwd** %8, metadata !2605, metadata !655), !dbg !2606
  store %struct.passwd* %7, %struct.passwd** %8, align 8, !dbg !2606
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2607, metadata !655), !dbg !2609
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2610, metadata !655), !dbg !2611
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2612, metadata !655), !dbg !2613
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2614, metadata !655), !dbg !2615
  %13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0, !dbg !2616
  %14 = call i32 @getpwuid_r(i32 0, %struct.passwd* %7, i8* %13, i64 8192, %struct.passwd** %8), !dbg !2618
  store i32 %14, i32* %10, align 4, !dbg !2619
  %15 = icmp ne i32 %14, 0, !dbg !2620
  br i1 %15, label %19, label %16, !dbg !2621

; <label>:16:                                     ; preds = %2
  %17 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2622
  %18 = icmp ne %struct.passwd* %17, null, !dbg !2622
  br i1 %18, label %24, label %19, !dbg !2623

; <label>:19:                                     ; preds = %16, %2
  %20 = load i32, i32* %10, align 4, !dbg !2625
  %21 = icmp eq i32 %20, 0, !dbg !2628
  br i1 %21, label %22, label %23, !dbg !2629

; <label>:22:                                     ; preds = %19
  store i32 2, i32* %10, align 4, !dbg !2630
  br label %23, !dbg !2632

; <label>:23:                                     ; preds = %22, %19
  store i8 0, i8* %3, align 1, !dbg !2633
  br label %104, !dbg !2633

; <label>:24:                                     ; preds = %16
  %25 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2634
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 3, !dbg !2635
  %27 = load i32, i32* %26, align 4, !dbg !2635
  store i32 %27, i32* %9, align 4, !dbg !2636
  %28 = load i8*, i8** %4, align 8, !dbg !2637
  %29 = call i32 @Unicode_GetCurrentEncoding(), !dbg !2638
  %30 = call i8* @Unicode_GetAllocBytes(i8* %28, i32 %29), !dbg !2639
  store i8* %30, i8** %12, align 8, !dbg !2640
  %31 = load i8*, i8** %12, align 8, !dbg !2641
  %32 = icmp ne i8* %31, null, !dbg !2641
  br i1 %32, label %35, label %33, !dbg !2643

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %4, align 8, !dbg !2644
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i32 0, i32 0), i8* %34), !dbg !2646
  store i8 0, i8* %3, align 1, !dbg !2647
  br label %104, !dbg !2647

; <label>:35:                                     ; preds = %24
  %36 = load i8*, i8** %12, align 8, !dbg !2648
  %37 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i32 0, i32 0, !dbg !2649
  %38 = call i32 @getpwnam_r(i8* %36, %struct.passwd* %7, i8* %37, i64 8192, %struct.passwd** %8), !dbg !2650
  store i32 %38, i32* %10, align 4, !dbg !2651
  %39 = load i8*, i8** %12, align 8, !dbg !2652
  call void @free(i8* %39) #10, !dbg !2653
  %40 = load i32, i32* %10, align 4, !dbg !2654
  %41 = icmp ne i32 %40, 0, !dbg !2656
  br i1 %41, label %45, label %42, !dbg !2657

; <label>:42:                                     ; preds = %35
  %43 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2658
  %44 = icmp ne %struct.passwd* %43, null, !dbg !2658
  br i1 %44, label %50, label %45, !dbg !2660

; <label>:45:                                     ; preds = %42, %35
  %46 = load i32, i32* %10, align 4, !dbg !2661
  %47 = icmp eq i32 %46, 0, !dbg !2664
  br i1 %47, label %48, label %49, !dbg !2665

; <label>:48:                                     ; preds = %45
  store i32 2, i32* %10, align 4, !dbg !2666
  br label %49, !dbg !2668

; <label>:49:                                     ; preds = %48, %45
  store i8 0, i8* %3, align 1, !dbg !2669
  br label %104, !dbg !2669

; <label>:50:                                     ; preds = %42
  %51 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2670
  %52 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i32 0, i32 3, !dbg !2671
  %53 = load i32, i32* %52, align 4, !dbg !2671
  %54 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2672
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 3, !dbg !2673
  %56 = load i32, i32* %55, align 4, !dbg !2673
  %57 = load i32, i32* %9, align 4, !dbg !2674
  %58 = call i32 @setresgid(i32 %53, i32 %56, i32 %57) #10, !dbg !2675
  store i32 %58, i32* %11, align 4, !dbg !2676
  %59 = load i32, i32* %11, align 4, !dbg !2677
  %60 = icmp slt i32 %59, 0, !dbg !2679
  br i1 %60, label %61, label %63, !dbg !2680

; <label>:61:                                     ; preds = %50
  %62 = load i8*, i8** %4, align 8, !dbg !2681
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i8* %62), !dbg !2683
  store i8 0, i8* %3, align 1, !dbg !2684
  br label %104, !dbg !2684

; <label>:63:                                     ; preds = %50
  %64 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2685
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 0, !dbg !2686
  %66 = load i8*, i8** %65, align 8, !dbg !2686
  %67 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2687
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 3, !dbg !2688
  %69 = load i32, i32* %68, align 4, !dbg !2688
  %70 = call i32 @initgroups(i8* %66, i32 %69), !dbg !2689
  store i32 %70, i32* %11, align 4, !dbg !2690
  %71 = load i32, i32* %11, align 4, !dbg !2691
  %72 = icmp slt i32 %71, 0, !dbg !2693
  br i1 %72, label %73, label %76, !dbg !2694

; <label>:73:                                     ; preds = %63
  %74 = load i8*, i8** %4, align 8, !dbg !2695
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i8* %74), !dbg !2697
  %75 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2698
  br label %102, !dbg !2699

; <label>:76:                                     ; preds = %63
  %77 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2700
  %78 = getelementptr inbounds %struct.passwd, %struct.passwd* %77, i32 0, i32 2, !dbg !2701
  %79 = load i32, i32* %78, align 8, !dbg !2701
  %80 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2702
  %81 = getelementptr inbounds %struct.passwd, %struct.passwd* %80, i32 0, i32 2, !dbg !2703
  %82 = load i32, i32* %81, align 8, !dbg !2703
  %83 = call i32 @setresuid(i32 %79, i32 %82, i32 0) #10, !dbg !2704
  store i32 %83, i32* %11, align 4, !dbg !2705
  %84 = load i32, i32* %11, align 4, !dbg !2706
  %85 = icmp slt i32 %84, 0, !dbg !2708
  br i1 %85, label %86, label %89, !dbg !2709

; <label>:86:                                     ; preds = %76
  %87 = load i8*, i8** %4, align 8, !dbg !2710
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), i8* %87), !dbg !2712
  %88 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !2713
  br label %102, !dbg !2714

; <label>:89:                                     ; preds = %76
  %90 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2715
  %91 = getelementptr inbounds %struct.passwd, %struct.passwd* %90, i32 0, i32 0, !dbg !2716
  %92 = load i8*, i8** %91, align 8, !dbg !2716
  %93 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* %92, i32 1) #10, !dbg !2717
  %94 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2718
  %95 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i32 0, i32 5, !dbg !2719
  %96 = load i8*, i8** %95, align 8, !dbg !2719
  %97 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* %96, i32 1) #10, !dbg !2720
  %98 = load %struct.passwd*, %struct.passwd** %8, align 8, !dbg !2721
  %99 = getelementptr inbounds %struct.passwd, %struct.passwd* %98, i32 0, i32 6, !dbg !2722
  %100 = load i8*, i8** %99, align 8, !dbg !2722
  %101 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %100, i32 1) #10, !dbg !2723
  store i8 1, i8* %3, align 1, !dbg !2724
  br label %104, !dbg !2724

; <label>:102:                                    ; preds = %86, %73
  %103 = call signext i8 @ProcMgr_ImpersonateUserStop(), !dbg !2725
  store i8 0, i8* %3, align 1, !dbg !2726
  br label %104, !dbg !2726

; <label>:104:                                    ; preds = %102, %89, %61, %49, %33, %23
  %105 = load i8, i8* %3, align 1, !dbg !2727
  ret i8 %105, !dbg !2727
}

declare i32 @getpwuid_r(i32, %struct.passwd*, i8*, i64, %struct.passwd**) #2

declare i8* @Unicode_GetAllocBytes(i8*, i32) #2

declare i32 @Unicode_GetCurrentEncoding() #2

declare i32 @getpwnam_r(i8*, %struct.passwd*, i8*, i64, %struct.passwd**) #2

; Function Attrs: nounwind
declare i32 @setresgid(i32, i32, i32) #3

declare i32 @initgroups(i8*, i32) #2

declare i32 @assert(...) #2

; Function Attrs: nounwind
declare i32 @setresuid(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define signext i8 @ProcMgr_ImpersonateUserStop() #0 !dbg !2728 {
  %1 = alloca i8, align 1
  %2 = alloca [8192 x i8], align 16
  %3 = alloca %struct.passwd, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [8192 x i8]* %2, metadata !2731, metadata !655), !dbg !2732
  call void @llvm.dbg.declare(metadata %struct.passwd* %3, metadata !2733, metadata !655), !dbg !2734
  call void @llvm.dbg.declare(metadata %struct.passwd** %4, metadata !2735, metadata !655), !dbg !2736
  store %struct.passwd* %3, %struct.passwd** %4, align 8, !dbg !2736
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2737, metadata !655), !dbg !2738
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2739, metadata !655), !dbg !2740
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i32 0, i32 0, !dbg !2741
  %8 = call i32 @getpwuid_r(i32 0, %struct.passwd* %3, i8* %7, i64 8192, %struct.passwd** %4), !dbg !2743
  store i32 %8, i32* %5, align 4, !dbg !2744
  %9 = icmp ne i32 %8, 0, !dbg !2745
  br i1 %9, label %13, label %10, !dbg !2746

; <label>:10:                                     ; preds = %0
  %11 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2747
  %12 = icmp ne %struct.passwd* %11, null, !dbg !2747
  br i1 %12, label %18, label %13, !dbg !2748

; <label>:13:                                     ; preds = %10, %0
  %14 = load i32, i32* %5, align 4, !dbg !2750
  %15 = icmp eq i32 %14, 0, !dbg !2753
  br i1 %15, label %16, label %17, !dbg !2754

; <label>:16:                                     ; preds = %13
  store i32 2, i32* %5, align 4, !dbg !2755
  br label %17, !dbg !2757

; <label>:17:                                     ; preds = %16, %13
  store i8 0, i8* %1, align 1, !dbg !2758
  br label %67, !dbg !2758

; <label>:18:                                     ; preds = %10
  %19 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2759
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %19, i32 0, i32 2, !dbg !2760
  %21 = load i32, i32* %20, align 8, !dbg !2760
  %22 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2761
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 2, !dbg !2762
  %24 = load i32, i32* %23, align 8, !dbg !2762
  %25 = call i32 @setresuid(i32 %21, i32 %24, i32 0) #10, !dbg !2763
  store i32 %25, i32* %6, align 4, !dbg !2764
  %26 = load i32, i32* %6, align 4, !dbg !2765
  %27 = icmp slt i32 %26, 0, !dbg !2767
  br i1 %27, label %28, label %29, !dbg !2768

; <label>:28:                                     ; preds = %18
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0)), !dbg !2769
  store i8 0, i8* %1, align 1, !dbg !2771
  br label %67, !dbg !2771

; <label>:29:                                     ; preds = %18
  %30 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2772
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 3, !dbg !2773
  %32 = load i32, i32* %31, align 4, !dbg !2773
  %33 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2774
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 3, !dbg !2775
  %35 = load i32, i32* %34, align 4, !dbg !2775
  %36 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2776
  %37 = getelementptr inbounds %struct.passwd, %struct.passwd* %36, i32 0, i32 3, !dbg !2777
  %38 = load i32, i32* %37, align 4, !dbg !2777
  %39 = call i32 @setresgid(i32 %32, i32 %35, i32 %38) #10, !dbg !2778
  store i32 %39, i32* %6, align 4, !dbg !2779
  %40 = load i32, i32* %6, align 4, !dbg !2780
  %41 = icmp slt i32 %40, 0, !dbg !2782
  br i1 %41, label %42, label %43, !dbg !2783

; <label>:42:                                     ; preds = %29
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0)), !dbg !2784
  store i8 0, i8* %1, align 1, !dbg !2786
  br label %67, !dbg !2786

; <label>:43:                                     ; preds = %29
  %44 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2787
  %45 = getelementptr inbounds %struct.passwd, %struct.passwd* %44, i32 0, i32 0, !dbg !2788
  %46 = load i8*, i8** %45, align 8, !dbg !2788
  %47 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2789
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 3, !dbg !2790
  %49 = load i32, i32* %48, align 4, !dbg !2790
  %50 = call i32 @initgroups(i8* %46, i32 %49), !dbg !2791
  store i32 %50, i32* %6, align 4, !dbg !2792
  %51 = load i32, i32* %6, align 4, !dbg !2793
  %52 = icmp slt i32 %51, 0, !dbg !2795
  br i1 %52, label %53, label %54, !dbg !2796

; <label>:53:                                     ; preds = %43
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0)), !dbg !2797
  store i8 0, i8* %1, align 1, !dbg !2799
  br label %67, !dbg !2799

; <label>:54:                                     ; preds = %43
  %55 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2800
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 0, !dbg !2801
  %57 = load i8*, i8** %56, align 8, !dbg !2801
  %58 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* %57, i32 1) #10, !dbg !2802
  %59 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2803
  %60 = getelementptr inbounds %struct.passwd, %struct.passwd* %59, i32 0, i32 5, !dbg !2804
  %61 = load i8*, i8** %60, align 8, !dbg !2804
  %62 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* %61, i32 1) #10, !dbg !2805
  %63 = load %struct.passwd*, %struct.passwd** %4, align 8, !dbg !2806
  %64 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i32 0, i32 6, !dbg !2807
  %65 = load i8*, i8** %64, align 8, !dbg !2807
  %66 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %65, i32 1) #10, !dbg !2808
  store i8 1, i8* %1, align 1, !dbg !2809
  br label %67, !dbg !2809

; <label>:67:                                     ; preds = %54, %53, %42, %28, %17
  %68 = load i8, i8* %1, align 1, !dbg !2810
  ret i8 %68, !dbg !2810
}

; Function Attrs: nounwind uwtable
define signext i8 @ProcMgr_GetImpersonatedUserInfo(i8**, i8**) #0 !dbg !2811 {
  %3 = alloca i8, align 1
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8192 x i8], align 16
  %8 = alloca %struct.passwd, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !2814, metadata !655), !dbg !2815
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2816, metadata !655), !dbg !2817
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2818, metadata !655), !dbg !2820
  %11 = call i32 @geteuid() #10, !dbg !2821
  store i32 %11, i32* %6, align 4, !dbg !2820
  call void @llvm.dbg.declare(metadata [8192 x i8]* %7, metadata !2822, metadata !655), !dbg !2823
  call void @llvm.dbg.declare(metadata %struct.passwd* %8, metadata !2824, metadata !655), !dbg !2825
  call void @llvm.dbg.declare(metadata %struct.passwd** %9, metadata !2826, metadata !655), !dbg !2827
  store %struct.passwd* %8, %struct.passwd** %9, align 8, !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2828, metadata !655), !dbg !2829
  %12 = load i8**, i8*** %4, align 8, !dbg !2830
  store i8* null, i8** %12, align 8, !dbg !2831
  %13 = load i8**, i8*** %5, align 8, !dbg !2832
  store i8* null, i8** %13, align 8, !dbg !2833
  %14 = load i32, i32* %6, align 4, !dbg !2834
  %15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i32 0, i32 0, !dbg !2836
  %16 = call i32 @getpwuid_r(i32 %14, %struct.passwd* %8, i8* %15, i64 8192, %struct.passwd** %9), !dbg !2837
  store i32 %16, i32* %10, align 4, !dbg !2838
  %17 = icmp ne i32 %16, 0, !dbg !2839
  br i1 %17, label %21, label %18, !dbg !2840

; <label>:18:                                     ; preds = %2
  %19 = load %struct.passwd*, %struct.passwd** %9, align 8, !dbg !2841
  %20 = icmp ne %struct.passwd* %19, null, !dbg !2841
  br i1 %20, label %26, label %21, !dbg !2842

; <label>:21:                                     ; preds = %18, %2
  %22 = load i32, i32* %10, align 4, !dbg !2844
  %23 = icmp eq i32 %22, 0, !dbg !2847
  br i1 %23, label %24, label %25, !dbg !2848

; <label>:24:                                     ; preds = %21
  store i32 2, i32* %10, align 4, !dbg !2849
  br label %25, !dbg !2851

; <label>:25:                                     ; preds = %24, %21
  store i8 0, i8* %3, align 1, !dbg !2852
  br label %37, !dbg !2852

; <label>:26:                                     ; preds = %18
  %27 = load %struct.passwd*, %struct.passwd** %9, align 8, !dbg !2853
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0, !dbg !2854
  %29 = load i8*, i8** %28, align 8, !dbg !2854
  %30 = call i8* @Unicode_Alloc(i8* %29, i32 -1), !dbg !2855
  %31 = load i8**, i8*** %4, align 8, !dbg !2856
  store i8* %30, i8** %31, align 8, !dbg !2857
  %32 = load %struct.passwd*, %struct.passwd** %9, align 8, !dbg !2858
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 5, !dbg !2859
  %34 = load i8*, i8** %33, align 8, !dbg !2859
  %35 = call i8* @Unicode_Alloc(i8* %34, i32 -1), !dbg !2860
  %36 = load i8**, i8*** %5, align 8, !dbg !2861
  store i8* %35, i8** %36, align 8, !dbg !2862
  store i8 1, i8* %3, align 1, !dbg !2863
  br label %37, !dbg !2863

; <label>:37:                                     ; preds = %26, %25
  %38 = load i8, i8* %3, align 1, !dbg !2864
  ret i8 %38, !dbg !2864
}

; Function Attrs: nounwind
declare i32 @geteuid() #3

declare signext i8 @DynArray_Init(%struct.DynArray*, i32, i64) #2

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @ProcMgrProcInfoArray_SetCount(%struct.DynArray*, i32) #5 !dbg !2865 {
  %3 = alloca %struct.DynArray*, align 8
  %4 = alloca i32, align 4
  store %struct.DynArray* %0, %struct.DynArray** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %3, metadata !2866, metadata !655), !dbg !2867
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2868, metadata !655), !dbg !2869
  %5 = load %struct.DynArray*, %struct.DynArray** %3, align 8, !dbg !2870
  %6 = load i32, i32* %4, align 4, !dbg !2871
  %7 = call signext i8 @DynArray_SetCount(%struct.DynArray* %5, i32 %6), !dbg !2872
  ret i8 %7, !dbg !2873
}

declare signext i8 @DynArray_SetCount(%struct.DynArray*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @DynArray_Count(%struct.DynArray*) #5 !dbg !2874 {
  %2 = alloca %struct.DynArray*, align 8
  store %struct.DynArray* %0, %struct.DynArray** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %2, metadata !2877, metadata !655), !dbg !2878
  %3 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !2879
  %4 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %3, i32 0, i32 0, !dbg !2880
  %5 = call i64 @DynBuf_GetSize(%struct.DynBuf* %4), !dbg !2881
  %6 = load %struct.DynArray*, %struct.DynArray** %2, align 8, !dbg !2882
  %7 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %6, i32 0, i32 1, !dbg !2883
  %8 = load i64, i64* %7, align 8, !dbg !2883
  %9 = udiv i64 %5, %8, !dbg !2884
  %10 = trunc i64 %9 to i32, !dbg !2885
  ret i32 %10, !dbg !2886
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #5 !dbg !2887 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !2892, metadata !655), !dbg !2893
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !2894
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !2895
  %5 = load i64, i64* %4, align 8, !dbg !2895
  ret i64 %5, !dbg !2896
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynArray_AddressOf(%struct.DynArray*, i32) #5 !dbg !2897 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.DynArray*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.DynArray* %0, %struct.DynArray** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DynArray** %4, metadata !2900, metadata !655), !dbg !2901
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2902, metadata !655), !dbg !2903
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2904, metadata !655), !dbg !2906
  %7 = load i32, i32* %5, align 4, !dbg !2907
  %8 = zext i32 %7 to i64, !dbg !2907
  %9 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !2908
  %10 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %9, i32 0, i32 1, !dbg !2909
  %11 = load i64, i64* %10, align 8, !dbg !2909
  %12 = mul i64 %8, %11, !dbg !2910
  store i64 %12, i64* %6, align 8, !dbg !2906
  %13 = load i64, i64* %6, align 8, !dbg !2911
  %14 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !2913
  %15 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %14, i32 0, i32 1, !dbg !2914
  %16 = load i64, i64* %15, align 8, !dbg !2914
  %17 = add i64 %13, %16, !dbg !2915
  %18 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !2916
  %19 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %18, i32 0, i32 0, !dbg !2917
  %20 = call i64 @DynBuf_GetSize(%struct.DynBuf* %19), !dbg !2918
  %21 = icmp ule i64 %17, %20, !dbg !2919
  br i1 %21, label %22, label %28, !dbg !2920

; <label>:22:                                     ; preds = %2
  %23 = load i64, i64* %6, align 8, !dbg !2921
  %24 = load %struct.DynArray*, %struct.DynArray** %4, align 8, !dbg !2923
  %25 = getelementptr inbounds %struct.DynArray, %struct.DynArray* %24, i32 0, i32 0, !dbg !2924
  %26 = call i8* @DynBuf_Get(%struct.DynBuf* %25), !dbg !2925
  %27 = getelementptr inbounds i8, i8* %26, i64 %23, !dbg !2926
  store i8* %27, i8** %3, align 8, !dbg !2927
  br label %29, !dbg !2927

; <label>:28:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !2928
  br label %29, !dbg !2928

; <label>:29:                                     ; preds = %28, %22
  %30 = load i8*, i8** %3, align 8, !dbg !2929
  ret i8* %30, !dbg !2929
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #5 !dbg !2930 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !2933, metadata !655), !dbg !2934
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !2935
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !2936
  %5 = load i8*, i8** %4, align 8, !dbg !2936
  ret i8* %5, !dbg !2937
}

declare void @DynArray_Destroy(%struct.DynArray*) #2

declare signext i8 @CodeSet_Utf8ToCurrent(i8*, i64, i8**, i64*) #2

declare i8** @Unicode_GetAllocList(i8**, i64, i32) #2

declare signext i8 @File_Exists(i8*) #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #3

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeStringList(i8**, i64) #5 !dbg !2938 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2944, metadata !655), !dbg !2945
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2946, metadata !655), !dbg !2947
  %5 = load i8**, i8*** %3, align 8, !dbg !2948
  %6 = load i64, i64* %4, align 8, !dbg !2949
  call void @Util_FreeList(i8** %5, i64 %6), !dbg !2950
  ret void, !dbg !2951
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_FreeList(i8**, i64) #5 !dbg !2952 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !2955, metadata !655), !dbg !2956
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2957, metadata !655), !dbg !2958
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2959, metadata !655), !dbg !2960
  %8 = load i8**, i8*** %3, align 8, !dbg !2961
  %9 = icmp eq i8** %8, null, !dbg !2963
  br i1 %9, label %10, label %11, !dbg !2964

; <label>:10:                                     ; preds = %2
  br label %48, !dbg !2965

; <label>:11:                                     ; preds = %2
  %12 = call i32* @__errno_location() #1, !dbg !2967
  %13 = load i32, i32* %12, align 4, !dbg !2968
  store i32 %13, i32* %5, align 4, !dbg !2969
  %14 = load i64, i64* %4, align 8, !dbg !2970
  %15 = icmp sge i64 %14, 0, !dbg !2972
  br i1 %15, label %16, label %30, !dbg !2973

; <label>:16:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2974, metadata !655), !dbg !2976
  store i64 0, i64* %6, align 8, !dbg !2977
  br label %17, !dbg !2979

; <label>:17:                                     ; preds = %26, %16
  %18 = load i64, i64* %6, align 8, !dbg !2980
  %19 = load i64, i64* %4, align 8, !dbg !2983
  %20 = icmp slt i64 %18, %19, !dbg !2984
  br i1 %20, label %21, label %29, !dbg !2985

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %6, align 8, !dbg !2986
  %23 = load i8**, i8*** %3, align 8, !dbg !2988
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !2988
  %25 = load i8*, i8** %24, align 8, !dbg !2988
  call void @free(i8* %25) #10, !dbg !2989
  br label %26, !dbg !2990

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %6, align 8, !dbg !2991
  %28 = add nsw i64 %27, 1, !dbg !2991
  store i64 %28, i64* %6, align 8, !dbg !2991
  br label %17, !dbg !2993, !llvm.loop !2994

; <label>:29:                                     ; preds = %17
  br label %43, !dbg !2996

; <label>:30:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2997, metadata !655), !dbg !2999
  %31 = load i8**, i8*** %3, align 8, !dbg !3000
  store i8** %31, i8*** %7, align 8, !dbg !3002
  br label %32, !dbg !3003

; <label>:32:                                     ; preds = %39, %30
  %33 = load i8**, i8*** %7, align 8, !dbg !3004
  %34 = load i8*, i8** %33, align 8, !dbg !3007
  %35 = icmp ne i8* %34, null, !dbg !3008
  br i1 %35, label %36, label %42, !dbg !3009

; <label>:36:                                     ; preds = %32
  %37 = load i8**, i8*** %7, align 8, !dbg !3010
  %38 = load i8*, i8** %37, align 8, !dbg !3012
  call void @free(i8* %38) #10, !dbg !3013
  br label %39, !dbg !3014

; <label>:39:                                     ; preds = %36
  %40 = load i8**, i8*** %7, align 8, !dbg !3015
  %41 = getelementptr inbounds i8*, i8** %40, i32 1, !dbg !3015
  store i8** %41, i8*** %7, align 8, !dbg !3015
  br label %32, !dbg !3017, !llvm.loop !3018

; <label>:42:                                     ; preds = %32
  br label %43

; <label>:43:                                     ; preds = %42, %29
  %44 = load i8**, i8*** %3, align 8, !dbg !3020
  %45 = bitcast i8** %44 to i8*, !dbg !3020
  call void @free(i8* %45) #10, !dbg !3021
  %46 = load i32, i32* %5, align 4, !dbg !3022
  %47 = call i32* @__errno_location() #1, !dbg !3023
  store i32 %46, i32* %47, align 4, !dbg !3024
  br label %48, !dbg !3025

; <label>:48:                                     ; preds = %43, %10
  ret void, !dbg !3026
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

declare i8* @Err_ErrString() #2

; Function Attrs: nounwind uwtable
define internal signext i8 @ProcMgr_IsProcessRunning(i32) #0 !dbg !3028 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3031, metadata !655), !dbg !3032
  %3 = load i32, i32* %2, align 4, !dbg !3033
  %4 = call i32 @kill(i32 %3, i32 0) #10, !dbg !3034
  %5 = icmp eq i32 %4, 0, !dbg !3035
  br i1 %5, label %10, label %6, !dbg !3036

; <label>:6:                                      ; preds = %1
  %7 = call i32* @__errno_location() #1, !dbg !3037
  %8 = load i32, i32* %7, align 4, !dbg !3039
  %9 = icmp eq i32 %8, 1, !dbg !3040
  br label %10, !dbg !3041

; <label>:10:                                     ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32, !dbg !3042
  %13 = trunc i32 %12 to i8, !dbg !3044
  ret i8 %13, !dbg !3045
}

declare i32 @usleep(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!647, !648}
!llvm.ident = !{!649}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !554, globals: !617)
!1 = !DIFile(filename: "procMgrPosix.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!2 = !{!3, !336}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!6 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!7 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!8 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!9 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!10 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!11 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!12 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!13 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!14 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!15 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!16 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!17 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!18 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!19 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!20 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!21 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!22 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!23 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!24 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!25 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!26 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!27 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!28 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!29 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!30 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!31 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!32 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!33 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!34 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!35 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!36 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!37 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!38 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!39 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!40 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!41 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!42 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!43 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!44 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!45 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!46 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!47 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!48 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!49 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!50 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!51 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!52 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!53 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!54 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!55 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!56 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!57 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!58 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!59 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!60 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!61 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!62 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!63 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!64 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!65 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!66 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!67 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!68 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!69 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!70 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!71 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!72 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!73 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!74 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!75 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!76 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!77 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!78 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!79 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!80 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!81 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!82 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!83 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!84 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!85 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!86 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!87 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!88 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!89 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!90 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!91 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!92 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!93 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!94 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!95 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!96 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!97 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!98 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!99 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!100 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!101 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!102 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!103 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!104 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!105 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!106 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!107 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!108 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!109 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!110 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!111 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!112 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!113 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!114 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!115 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!116 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!117 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!118 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!119 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!120 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!121 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!122 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!123 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!124 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!125 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!126 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!127 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!128 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!129 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!130 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!131 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!132 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!133 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!134 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!135 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!136 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!137 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!138 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!139 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!140 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!141 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!142 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!143 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!144 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!145 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!146 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!147 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!148 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!149 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!150 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!151 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!152 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!153 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!154 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!155 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!156 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!157 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!158 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!159 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!160 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!161 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!162 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!163 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!164 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!165 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!166 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!167 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!168 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!169 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!170 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!171 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!172 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!173 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!174 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!175 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!176 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!177 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!178 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!179 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!180 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!181 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!182 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!183 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!184 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!185 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!186 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!187 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!188 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!189 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!190 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!191 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!192 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!193 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!194 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!195 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!196 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!197 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!198 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!199 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!200 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!201 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!202 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!203 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!204 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!205 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!206 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!207 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!208 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!209 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!210 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!211 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!212 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!213 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!214 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!215 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!216 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!217 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!218 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!219 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!220 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!221 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!222 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!223 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!224 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!225 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!226 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!227 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!228 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!229 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!230 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!231 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!232 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!233 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!234 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!235 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!236 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!237 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!238 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!239 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!240 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!241 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!242 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!243 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!244 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!245 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!246 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!247 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!248 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!249 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!250 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!251 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!252 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!253 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!254 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!255 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!256 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!257 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!258 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!259 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!260 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!261 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!262 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!263 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!264 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!265 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!266 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!267 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!268 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!269 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!270 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!271 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!272 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!273 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!274 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!275 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!276 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!277 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!278 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!279 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!280 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!281 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!282 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!283 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!284 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!285 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!286 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!287 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!288 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!289 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!290 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!291 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!292 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!293 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!294 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!295 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!296 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!297 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!298 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!299 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!300 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!301 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!302 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!303 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!304 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!305 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!306 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!307 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!308 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!309 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!310 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!311 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!312 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!313 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!314 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!315 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!316 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!317 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!318 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!319 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!320 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!321 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!322 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!323 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!324 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!325 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!326 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!327 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!328 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!329 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!330 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!331 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!332 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!333 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!334 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!335 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 71, size: 32, align: 32, elements: !338)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!339 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!340 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!341 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!342 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!343 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!344 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!345 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!346 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!347 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!348 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!349 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!350 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!351 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!352 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!353 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!354 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!355 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!356 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!357 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!358 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!359 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!360 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!361 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!362 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!363 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!364 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!365 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!366 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!367 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!368 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!369 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!370 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!371 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!372 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!373 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!374 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!375 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!376 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!377 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!378 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!379 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!380 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!381 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!382 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!383 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!384 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!385 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!386 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!387 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!388 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!389 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!390 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!391 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!392 = !DIEnumerator(name: "_SC_PII", value: 53)
!393 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!394 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!395 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!396 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!397 = !DIEnumerator(name: "_SC_POLL", value: 58)
!398 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!399 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!400 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!401 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!402 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!403 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!404 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!405 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!406 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!407 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!408 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!409 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!410 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!411 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!412 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!413 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!414 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!415 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!416 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!417 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!418 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!419 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!420 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!421 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!422 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!423 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!424 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!425 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!426 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!427 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!428 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!429 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!430 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!431 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!432 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!433 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!434 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!435 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!436 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!437 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!438 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!439 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!440 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!441 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!442 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!443 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!444 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!445 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!446 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!447 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!448 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!449 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!450 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!451 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!452 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!453 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!454 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!455 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!456 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!457 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!458 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!459 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!460 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!461 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!462 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!463 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!464 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!465 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!466 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!467 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!468 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!469 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!470 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!471 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!472 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!473 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!474 = !DIEnumerator(name: "_SC_BASE", value: 134)
!475 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!476 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!477 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!478 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!479 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!480 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!481 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!482 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!483 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!484 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!485 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!486 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!487 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!488 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!489 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!490 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!491 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!492 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!493 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!494 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!495 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!496 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!497 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!498 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!499 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!500 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!501 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!502 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!503 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!504 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!505 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!506 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!507 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!508 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!509 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!510 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!511 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!512 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!513 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!514 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!515 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!516 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!517 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!518 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!519 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!520 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!521 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!522 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!523 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!524 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!525 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!526 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!527 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!528 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!529 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!530 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!531 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!532 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!533 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!534 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!535 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!536 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!537 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!538 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!539 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!540 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!541 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!542 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!543 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!544 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!545 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!546 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!547 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!548 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!549 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!550 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!551 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!552 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!553 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!554 = !{!555, !556, !561, !562, !564, !566, !568, !569, !570, !565, !573, !578, !580, !596, !598, !599, !610, !616}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !557, line: 75, baseType: !558)
!557 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !559, line: 139, baseType: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!560 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!561 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !571, line: 263, baseType: !572)
!571 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !559, line: 133, baseType: !565)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !574, line: 85, baseType: !575)
!574 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !565}
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fd_mask", file: !579, line: 54, baseType: !560)
!579 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/select.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynArray", file: !582, line: 42, baseType: !583)
!582 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynarray.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynArray", file: !582, line: 39, size: 256, align: 64, elements: !584)
!584 = !{!585, !595}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !583, file: !582, line: 40, baseType: !586, size: 192, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !587, line: 40, baseType: !588)
!587 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !587, line: 36, size: 192, align: 64, elements: !589)
!589 = !{!590, !591, !594}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !588, file: !587, line: 37, baseType: !562, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !588, file: !587, line: 38, baseType: !592, size: 64, align: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !593, line: 216, baseType: !567)
!593 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!594 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !588, file: !587, line: 39, baseType: !592, size: 64, align: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !583, file: !582, line: 41, baseType: !592, size: 64, align: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!598 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgrProcInfo", file: !601, line: 65, baseType: !602)
!601 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/procMgr.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProcMgrProcInfo", file: !601, line: 56, size: 320, align: 64, elements: !603)
!603 = !{!604, !606, !607, !608, !609}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "procId", scope: !602, file: !601, line: 57, baseType: !605, size: 32, align: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgr_Pid", file: !601, line: 47, baseType: !570)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "procCmdName", scope: !602, file: !601, line: 58, baseType: !562, size: 64, align: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "procCmdLine", scope: !602, file: !601, line: 59, baseType: !562, size: 64, align: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "procOwner", scope: !602, file: !601, line: 60, baseType: !562, size: 64, align: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "procStartTime", scope: !602, file: !601, line: 64, baseType: !556, size: 64, align: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !612, line: 177, baseType: !613)
!612 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !614, line: 48, baseType: !615)
!614 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!615 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!617 = !{!618, !626, !627, !632, !643}
!618 = distinct !DIGlobalVariable(name: "hostStartTime", scope: !619, file: !620, line: 252, type: !556, isLocal: true, isDefinition: true, variable: i64* @ProcMgr_ListProcesses.hostStartTime)
!619 = distinct !DISubprogram(name: "ProcMgr_ListProcesses", scope: !620, file: !620, line: 245, type: !621, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!620 = !DIFile(filename: "procMgrPosix.c", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!621 = !DISubroutineType(types: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgrProcInfoArray", file: !601, line: 67, baseType: !581)
!625 = !{}
!626 = distinct !DIGlobalVariable(name: "hertz", scope: !619, file: !620, line: 253, type: !561, isLocal: true, isDefinition: true, variable: i64* @ProcMgr_ListProcesses.hertz)
!627 = distinct !DIGlobalVariable(name: "cSignals", scope: !0, file: !620, line: 95, type: !628, isLocal: true, isDefinition: true, variable: [6 x i32]* @cSignals)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 192, align: 32, elements: !630)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!630 = !{!631}
!631 = !DISubrange(count: 6)
!632 = distinct !DIGlobalVariable(name: "bashShellPath", scope: !633, file: !620, line: 1416, type: !640, isLocal: true, isDefinition: true, variable: [10 x i8]* @ProcMgrStartProcess.bashShellPath)
!633 = distinct !DISubprogram(name: "ProcMgrStartProcess", scope: !620, file: !620, line: 1345, type: !634, isLocal: true, isDefinition: true, scopeLine: 1348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!634 = !DISubroutineType(types: !635)
!635 = !{!570, !636, !638, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 80, align: 8, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 10)
!643 = distinct !DIGlobalVariable(name: "bourneShellPath", scope: !633, file: !620, line: 1418, type: !644, isLocal: true, isDefinition: true, variable: [8 x i8]* @ProcMgrStartProcess.bourneShellPath)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 64, align: 8, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 8)
!647 = !{i32 2, !"Dwarf Version", i32 4}
!648 = !{i32 2, !"Debug Info Version", i32 3}
!649 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!650 = distinct !DISubprogram(name: "ProcMgr_ReadProcFile", scope: !620, file: !620, line: 173, type: !651, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!651 = !DISubroutineType(types: !652)
!652 = !{!565, !565, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!654 = !DILocalVariable(name: "fd", arg: 1, scope: !650, file: !620, line: 173, type: !565)
!655 = !DIExpression()
!656 = !DILocation(line: 173, column: 26, scope: !650)
!657 = !DILocalVariable(name: "contents", arg: 2, scope: !650, file: !620, line: 174, type: !653)
!658 = !DILocation(line: 174, column: 29, scope: !650)
!659 = !DILocalVariable(name: "size", scope: !650, file: !620, line: 176, type: !565)
!660 = !DILocation(line: 176, column: 8, scope: !650)
!661 = !DILocalVariable(name: "tmp", scope: !650, file: !620, line: 177, type: !662)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 4096, align: 8, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 512)
!665 = !DILocation(line: 177, column: 9, scope: !650)
!666 = !DILocalVariable(name: "numRead", scope: !650, file: !620, line: 178, type: !565)
!667 = !DILocation(line: 178, column: 8, scope: !650)
!668 = !DILocation(line: 180, column: 5, scope: !650)
!669 = !DILocation(line: 180, column: 14, scope: !650)
!670 = !DILocation(line: 181, column: 19, scope: !650)
!671 = !DILocation(line: 181, column: 23, scope: !650)
!672 = !DILocation(line: 181, column: 14, scope: !650)
!673 = !DILocation(line: 181, column: 12, scope: !650)
!674 = !DILocation(line: 182, column: 11, scope: !650)
!675 = !DILocation(line: 182, column: 9, scope: !650)
!676 = !DILocation(line: 184, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !650, file: !620, line: 184, column: 8)
!678 = !DILocation(line: 184, column: 16, scope: !677)
!679 = !DILocation(line: 184, column: 8, scope: !650)
!680 = !DILocation(line: 185, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !620, line: 184, column: 22)
!682 = !DILocation(line: 191, column: 22, scope: !683)
!683 = distinct !DILexicalBlock(scope: !650, file: !620, line: 191, column: 8)
!684 = !DILocation(line: 191, column: 20, scope: !683)
!685 = !DILocation(line: 191, column: 8, scope: !650)
!686 = !DILocalVariable(name: "result", scope: !687, file: !620, line: 192, type: !562)
!687 = distinct !DILexicalBlock(scope: !683, file: !620, line: 191, column: 31)
!688 = !DILocation(line: 192, column: 13, scope: !687)
!689 = !DILocation(line: 194, column: 23, scope: !687)
!690 = !DILocation(line: 194, column: 31, scope: !687)
!691 = !DILocation(line: 194, column: 16, scope: !687)
!692 = !DILocation(line: 194, column: 14, scope: !687)
!693 = !DILocation(line: 195, column: 18, scope: !694)
!694 = distinct !DILexicalBlock(scope: !687, file: !620, line: 195, column: 10)
!695 = !DILocation(line: 195, column: 15, scope: !694)
!696 = !DILocation(line: 195, column: 10, scope: !687)
!697 = !DILocation(line: 196, column: 15, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !620, line: 195, column: 26)
!699 = !DILocation(line: 197, column: 10, scope: !698)
!700 = !DILocation(line: 199, column: 14, scope: !687)
!701 = !DILocation(line: 199, column: 7, scope: !687)
!702 = !DILocation(line: 199, column: 27, scope: !687)
!703 = !DILocation(line: 200, column: 14, scope: !687)
!704 = !DILocation(line: 200, column: 7, scope: !687)
!705 = !DILocation(line: 200, column: 23, scope: !687)
!706 = !DILocation(line: 201, column: 19, scope: !687)
!707 = !DILocation(line: 201, column: 8, scope: !687)
!708 = !DILocation(line: 201, column: 17, scope: !687)
!709 = !DILocation(line: 202, column: 7, scope: !687)
!710 = !DILocalVariable(name: "dbuf", scope: !711, file: !620, line: 204, type: !586)
!711 = distinct !DILexicalBlock(scope: !683, file: !620, line: 203, column: 11)
!712 = !DILocation(line: 204, column: 14, scope: !711)
!713 = !DILocation(line: 206, column: 7, scope: !711)
!714 = !DILocation(line: 207, column: 28, scope: !711)
!715 = !DILocation(line: 207, column: 33, scope: !711)
!716 = !DILocation(line: 207, column: 7, scope: !711)
!717 = !DILocation(line: 208, column: 7, scope: !711)
!718 = distinct !{!718, !717}
!719 = !DILocation(line: 209, column: 25, scope: !720)
!720 = distinct !DILexicalBlock(scope: !711, file: !620, line: 208, column: 10)
!721 = !DILocation(line: 209, column: 29, scope: !720)
!722 = !DILocation(line: 209, column: 20, scope: !720)
!723 = !DILocation(line: 209, column: 18, scope: !720)
!724 = !DILocation(line: 210, column: 14, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !620, line: 210, column: 14)
!726 = !DILocation(line: 210, column: 22, scope: !725)
!727 = !DILocation(line: 210, column: 14, scope: !720)
!728 = !DILocation(line: 211, column: 34, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !620, line: 210, column: 27)
!730 = !DILocation(line: 211, column: 39, scope: !729)
!731 = !DILocation(line: 211, column: 13, scope: !729)
!732 = !DILocation(line: 212, column: 10, scope: !729)
!733 = !DILocation(line: 213, column: 18, scope: !720)
!734 = !DILocation(line: 213, column: 15, scope: !720)
!735 = !DILocation(line: 214, column: 7, scope: !720)
!736 = !DILocation(line: 214, column: 16, scope: !737)
!737 = !DILexicalBlockFile(scope: !711, file: !620, discriminator: 1)
!738 = !DILocation(line: 214, column: 24, scope: !737)
!739 = !DILocation(line: 214, column: 7, scope: !737)
!740 = !DILocation(line: 216, column: 7, scope: !711)
!741 = !DILocation(line: 217, column: 7, scope: !711)
!742 = !DILocation(line: 218, column: 19, scope: !711)
!743 = !DILocation(line: 218, column: 8, scope: !711)
!744 = !DILocation(line: 218, column: 17, scope: !711)
!745 = !DILocation(line: 219, column: 7, scope: !711)
!746 = !DILocation(line: 191, column: 22, scope: !747)
!747 = !DILexicalBlockFile(scope: !683, file: !620, discriminator: 1)
!748 = !DILocation(line: 222, column: 11, scope: !650)
!749 = !DILocation(line: 222, column: 4, scope: !650)
!750 = !DILocalVariable(name: "procList", scope: !619, file: !620, line: 247, type: !623)
!751 = !DILocation(line: 247, column: 26, scope: !619)
!752 = !DILocalVariable(name: "procInfo", scope: !619, file: !620, line: 248, type: !600)
!753 = !DILocation(line: 248, column: 20, scope: !619)
!754 = !DILocalVariable(name: "failed", scope: !619, file: !620, line: 249, type: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !612, line: 230, baseType: !563)
!756 = !DILocation(line: 249, column: 9, scope: !619)
!757 = !DILocalVariable(name: "dir", scope: !619, file: !620, line: 250, type: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !760, line: 127, baseType: !761)
!760 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !760, line: 127, flags: DIFlagFwdDecl)
!762 = !DILocation(line: 250, column: 9, scope: !619)
!763 = !DILocalVariable(name: "ent", scope: !619, file: !620, line: 251, type: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64, align: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !766, line: 22, size: 2240, align: 64, elements: !767)
!766 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!767 = !{!768, !770, !772, !774, !775}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !765, file: !766, line: 28, baseType: !769, size: 64, align: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !559, line: 128, baseType: !567)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !765, file: !766, line: 29, baseType: !771, size: 64, align: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !559, line: 132, baseType: !560)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !765, file: !766, line: 31, baseType: !773, size: 16, align: 16, offset: 128)
!773 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !765, file: !766, line: 32, baseType: !615, size: 8, align: 8, offset: 144)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !765, file: !766, line: 33, baseType: !776, size: 2048, align: 8, offset: 152)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 2048, align: 8, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 256)
!779 = !DILocation(line: 251, column: 19, scope: !619)
!780 = !DILocalVariable(name: "numberFound", scope: !619, file: !620, line: 254, type: !565)
!781 = !DILocation(line: 254, column: 8, scope: !619)
!782 = !DILocation(line: 256, column: 15, scope: !619)
!783 = !DILocation(line: 256, column: 13, scope: !619)
!784 = !DILocation(line: 257, column: 30, scope: !619)
!785 = !DILocation(line: 257, column: 4, scope: !619)
!786 = !DILocation(line: 258, column: 13, scope: !619)
!787 = !DILocation(line: 258, column: 25, scope: !619)
!788 = !DILocation(line: 259, column: 13, scope: !619)
!789 = !DILocation(line: 259, column: 25, scope: !619)
!790 = !DILocation(line: 260, column: 13, scope: !619)
!791 = !DILocation(line: 260, column: 23, scope: !619)
!792 = !DILocation(line: 269, column: 13, scope: !793)
!793 = distinct !DILexicalBlock(scope: !619, file: !620, line: 269, column: 8)
!794 = !DILocation(line: 269, column: 10, scope: !793)
!795 = !DILocation(line: 269, column: 8, scope: !619)
!796 = !DILocalVariable(name: "uptimeFile", scope: !797, file: !620, line: 270, type: !798)
!797 = distinct !DILexicalBlock(scope: !793, file: !620, line: 269, column: 28)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !800, line: 48, baseType: !801)
!800 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !802, line: 241, size: 1728, align: 64, elements: !803)
!802 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!803 = !{!804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !824, !825, !826, !827, !829, !830, !832, !836, !839, !840, !841, !842, !843, !844, !845, !846}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !801, file: !802, line: 242, baseType: !565, size: 32, align: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !801, file: !802, line: 247, baseType: !562, size: 64, align: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !801, file: !802, line: 248, baseType: !562, size: 64, align: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !801, file: !802, line: 249, baseType: !562, size: 64, align: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !801, file: !802, line: 250, baseType: !562, size: 64, align: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !801, file: !802, line: 251, baseType: !562, size: 64, align: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !801, file: !802, line: 252, baseType: !562, size: 64, align: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !801, file: !802, line: 253, baseType: !562, size: 64, align: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !801, file: !802, line: 254, baseType: !562, size: 64, align: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !801, file: !802, line: 256, baseType: !562, size: 64, align: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !801, file: !802, line: 257, baseType: !562, size: 64, align: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !801, file: !802, line: 258, baseType: !562, size: 64, align: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !801, file: !802, line: 260, baseType: !817, size: 64, align: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64, align: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !802, line: 156, size: 192, align: 64, elements: !819)
!819 = !{!820, !821, !823}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !818, file: !802, line: 157, baseType: !817, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !818, file: !802, line: 158, baseType: !822, size: 64, align: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !818, file: !802, line: 162, baseType: !565, size: 32, align: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !801, file: !802, line: 262, baseType: !822, size: 64, align: 64, offset: 832)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !801, file: !802, line: 264, baseType: !565, size: 32, align: 32, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !801, file: !802, line: 268, baseType: !565, size: 32, align: 32, offset: 928)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !801, file: !802, line: 270, baseType: !828, size: 64, align: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !559, line: 131, baseType: !560)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !801, file: !802, line: 274, baseType: !773, size: 16, align: 16, offset: 1024)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !801, file: !802, line: 275, baseType: !831, size: 8, align: 8, offset: 1040)
!831 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !801, file: !802, line: 276, baseType: !833, size: 8, align: 8, offset: 1048)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 8, align: 8, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 1)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !801, file: !802, line: 280, baseType: !837, size: 64, align: 64, offset: 1088)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !802, line: 150, baseType: null)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !801, file: !802, line: 289, baseType: !771, size: 64, align: 64, offset: 1152)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !801, file: !802, line: 297, baseType: !555, size: 64, align: 64, offset: 1216)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !801, file: !802, line: 298, baseType: !555, size: 64, align: 64, offset: 1280)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !801, file: !802, line: 299, baseType: !555, size: 64, align: 64, offset: 1344)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !801, file: !802, line: 300, baseType: !555, size: 64, align: 64, offset: 1408)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !801, file: !802, line: 302, baseType: !592, size: 64, align: 64, offset: 1472)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !801, file: !802, line: 303, baseType: !565, size: 32, align: 32, offset: 1536)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !801, file: !802, line: 305, baseType: !847, size: 160, align: 8, offset: 1568)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 160, align: 8, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 20)
!850 = !DILocation(line: 270, column: 13, scope: !797)
!851 = !DILocation(line: 272, column: 20, scope: !797)
!852 = !DILocation(line: 272, column: 18, scope: !797)
!853 = !DILocation(line: 273, column: 18, scope: !854)
!854 = distinct !DILexicalBlock(scope: !797, file: !620, line: 273, column: 10)
!855 = !DILocation(line: 273, column: 15, scope: !854)
!856 = !DILocation(line: 273, column: 10, scope: !797)
!857 = !DILocalVariable(name: "secondsSinceBoot", scope: !858, file: !620, line: 274, type: !859)
!858 = distinct !DILexicalBlock(scope: !854, file: !620, line: 273, column: 30)
!859 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!860 = !DILocation(line: 274, column: 17, scope: !858)
!861 = !DILocalVariable(name: "realLocale", scope: !858, file: !620, line: 275, type: !562)
!862 = !DILocation(line: 275, column: 16, scope: !858)
!863 = !DILocalVariable(name: "savedLocale", scope: !858, file: !620, line: 276, type: !562)
!864 = !DILocation(line: 276, column: 16, scope: !858)
!865 = !DILocation(line: 281, column: 23, scope: !858)
!866 = !DILocation(line: 281, column: 21, scope: !858)
!867 = !DILocation(line: 286, column: 41, scope: !858)
!868 = !DILocation(line: 286, column: 24, scope: !858)
!869 = !DILocation(line: 286, column: 22, scope: !858)
!870 = !DILocation(line: 287, column: 10, scope: !858)
!871 = !DILocation(line: 288, column: 31, scope: !858)
!872 = !DILocation(line: 288, column: 24, scope: !858)
!873 = !DILocation(line: 288, column: 22, scope: !858)
!874 = !DILocation(line: 289, column: 31, scope: !858)
!875 = !DILocation(line: 289, column: 10, scope: !858)
!876 = !DILocation(line: 290, column: 15, scope: !858)
!877 = !DILocation(line: 290, column: 10, scope: !858)
!878 = !DILocation(line: 295, column: 14, scope: !879)
!879 = distinct !DILexicalBlock(scope: !858, file: !620, line: 295, column: 14)
!880 = !DILocation(line: 295, column: 14, scope: !858)
!881 = !DILocation(line: 296, column: 29, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !620, line: 295, column: 27)
!883 = !DILocation(line: 296, column: 50, scope: !882)
!884 = !DILocation(line: 296, column: 41, scope: !882)
!885 = !DILocation(line: 296, column: 39, scope: !882)
!886 = !DILocation(line: 296, column: 27, scope: !882)
!887 = !DILocation(line: 297, column: 10, scope: !882)
!888 = !DILocation(line: 298, column: 17, scope: !858)
!889 = !DILocation(line: 298, column: 10, scope: !858)
!890 = !DILocation(line: 299, column: 7, scope: !858)
!891 = !DILocation(line: 308, column: 13, scope: !797)
!892 = !DILocation(line: 314, column: 4, scope: !797)
!893 = !DILocation(line: 320, column: 10, scope: !619)
!894 = !DILocation(line: 320, column: 8, scope: !619)
!895 = !DILocation(line: 321, column: 15, scope: !896)
!896 = distinct !DILexicalBlock(scope: !619, file: !620, line: 321, column: 7)
!897 = !DILocation(line: 321, column: 12, scope: !896)
!898 = !DILocation(line: 321, column: 7, scope: !619)
!899 = !DILocation(line: 322, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !620, line: 321, column: 20)
!901 = !DILocation(line: 323, column: 7, scope: !900)
!902 = !DILocation(line: 326, column: 4, scope: !619)
!903 = !DILocation(line: 326, column: 26, scope: !904)
!904 = !DILexicalBlockFile(scope: !619, file: !620, discriminator: 1)
!905 = !DILocation(line: 326, column: 18, scope: !904)
!906 = !DILocation(line: 326, column: 16, scope: !904)
!907 = !DILocation(line: 326, column: 4, scope: !904)
!908 = !DILocalVariable(name: "fileStat", scope: !909, file: !620, line: 327, type: !910)
!909 = distinct !DILexicalBlock(scope: !619, file: !620, line: 326, column: 33)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !911, line: 46, size: 1152, align: 64, elements: !912)
!911 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!912 = !{!913, !915, !917, !919, !921, !923, !925, !926, !927, !928, !930, !932, !938, !939, !940}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !910, file: !911, line: 48, baseType: !914, size: 64, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !559, line: 124, baseType: !567)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !910, file: !911, line: 53, baseType: !916, size: 64, align: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !559, line: 127, baseType: !567)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !910, file: !911, line: 61, baseType: !918, size: 64, align: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !559, line: 130, baseType: !567)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !910, file: !911, line: 62, baseType: !920, size: 32, align: 32, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !559, line: 129, baseType: !598)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !910, file: !911, line: 64, baseType: !922, size: 32, align: 32, offset: 224)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !559, line: 125, baseType: !598)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !910, file: !911, line: 65, baseType: !924, size: 32, align: 32, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !559, line: 126, baseType: !598)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !910, file: !911, line: 67, baseType: !565, size: 32, align: 32, offset: 288)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !910, file: !911, line: 69, baseType: !914, size: 64, align: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !910, file: !911, line: 74, baseType: !828, size: 64, align: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !910, file: !911, line: 78, baseType: !929, size: 64, align: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !559, line: 153, baseType: !560)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !910, file: !911, line: 80, baseType: !931, size: 64, align: 64, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !559, line: 158, baseType: !560)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !910, file: !911, line: 91, baseType: !933, size: 128, align: 64, offset: 576)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !557, line: 120, size: 128, align: 64, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !933, file: !557, line: 122, baseType: !558, size: 64, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !933, file: !557, line: 123, baseType: !937, size: 64, align: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !559, line: 175, baseType: !560)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !910, file: !911, line: 92, baseType: !933, size: 128, align: 64, offset: 704)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !910, file: !911, line: 93, baseType: !933, size: 128, align: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !910, file: !911, line: 106, baseType: !941, size: 192, align: 64, offset: 960)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !937, size: 192, align: 64, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 3)
!944 = !DILocation(line: 327, column: 19, scope: !909)
!945 = !DILocalVariable(name: "cmdFilePath", scope: !909, file: !620, line: 328, type: !946)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 8192, align: 8, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 1024)
!949 = !DILocation(line: 328, column: 12, scope: !909)
!950 = !DILocalVariable(name: "statResult", scope: !909, file: !620, line: 329, type: !565)
!951 = !DILocation(line: 329, column: 11, scope: !909)
!952 = !DILocalVariable(name: "numRead", scope: !909, file: !620, line: 330, type: !565)
!953 = !DILocation(line: 330, column: 11, scope: !909)
!954 = !DILocalVariable(name: "cmdFd", scope: !909, file: !620, line: 331, type: !565)
!955 = !DILocation(line: 331, column: 11, scope: !909)
!956 = !DILocalVariable(name: "replaceLoop", scope: !909, file: !620, line: 332, type: !565)
!957 = !DILocation(line: 332, column: 11, scope: !909)
!958 = !DILocalVariable(name: "pwd", scope: !909, file: !620, line: 333, type: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, align: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !961, line: 49, size: 384, align: 64, elements: !962)
!961 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!962 = !{!963, !964, !965, !966, !967, !968, !969}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !960, file: !961, line: 51, baseType: !562, size: 64, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !960, file: !961, line: 52, baseType: !562, size: 64, align: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !960, file: !961, line: 53, baseType: !922, size: 32, align: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !960, file: !961, line: 54, baseType: !924, size: 32, align: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !960, file: !961, line: 55, baseType: !562, size: 64, align: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !960, file: !961, line: 56, baseType: !562, size: 64, align: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !960, file: !961, line: 57, baseType: !562, size: 64, align: 64, offset: 320)
!970 = !DILocation(line: 333, column: 22, scope: !909)
!971 = !DILocalVariable(name: "cmdLineTemp", scope: !909, file: !620, line: 334, type: !562)
!972 = !DILocation(line: 334, column: 13, scope: !909)
!973 = !DILocalVariable(name: "cmdStatTemp", scope: !909, file: !620, line: 335, type: !562)
!974 = !DILocation(line: 335, column: 13, scope: !909)
!975 = !DILocalVariable(name: "strLen", scope: !909, file: !620, line: 336, type: !592)
!976 = !DILocation(line: 336, column: 14, scope: !909)
!977 = !DILocalVariable(name: "dummy", scope: !909, file: !620, line: 337, type: !561)
!978 = !DILocation(line: 337, column: 26, scope: !909)
!979 = !DILocalVariable(name: "relativeStartTime", scope: !909, file: !620, line: 338, type: !561)
!980 = !DILocation(line: 338, column: 26, scope: !909)
!981 = !DILocalVariable(name: "stringBegin", scope: !909, file: !620, line: 339, type: !562)
!982 = !DILocation(line: 339, column: 13, scope: !909)
!983 = !DILocalVariable(name: "cmdNameBegin", scope: !909, file: !620, line: 340, type: !562)
!984 = !DILocation(line: 340, column: 13, scope: !909)
!985 = !DILocalVariable(name: "cmdNameLookup", scope: !909, file: !620, line: 341, type: !755)
!986 = !DILocation(line: 341, column: 12, scope: !909)
!987 = !DILocation(line: 346, column: 18, scope: !988)
!988 = distinct !DILexicalBlock(scope: !909, file: !620, line: 346, column: 11)
!989 = !DILocation(line: 346, column: 23, scope: !988)
!990 = !DILocation(line: 346, column: 11, scope: !988)
!991 = !DILocation(line: 346, column: 55, scope: !988)
!992 = !DILocation(line: 346, column: 60, scope: !988)
!993 = !DILocation(line: 346, column: 48, scope: !994)
!994 = !DILexicalBlockFile(scope: !988, file: !620, discriminator: 1)
!995 = !DILocation(line: 346, column: 45, scope: !988)
!996 = !DILocation(line: 346, column: 11, scope: !909)
!997 = !DILocation(line: 347, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !988, file: !620, line: 346, column: 69)
!999 = distinct !{!999, !902}
!1000 = !DILocation(line: 350, column: 20, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !909, file: !620, line: 350, column: 11)
!1002 = !DILocation(line: 353, column: 20, scope: !1001)
!1003 = !DILocation(line: 353, column: 25, scope: !1001)
!1004 = !DILocation(line: 350, column: 11, scope: !1001)
!1005 = !DILocation(line: 353, column: 33, scope: !1001)
!1006 = !DILocation(line: 350, column: 11, scope: !909)
!1007 = !DILocation(line: 354, column: 43, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1001, file: !620, line: 353, column: 40)
!1009 = !DILocation(line: 354, column: 48, scope: !1008)
!1010 = !DILocation(line: 354, column: 10, scope: !1008)
!1011 = !DILocation(line: 355, column: 10, scope: !1008)
!1012 = !DILocation(line: 358, column: 20, scope: !909)
!1013 = !DILocation(line: 358, column: 15, scope: !909)
!1014 = !DILocation(line: 358, column: 13, scope: !909)
!1015 = !DILocation(line: 359, column: 17, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !909, file: !620, line: 359, column: 11)
!1017 = !DILocation(line: 359, column: 14, scope: !1016)
!1018 = !DILocation(line: 359, column: 11, scope: !909)
!1019 = !DILocation(line: 364, column: 10, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !620, line: 359, column: 24)
!1021 = !DILocation(line: 380, column: 38, scope: !909)
!1022 = !DILocation(line: 380, column: 17, scope: !909)
!1023 = !DILocation(line: 380, column: 15, scope: !909)
!1024 = !DILocation(line: 381, column: 13, scope: !909)
!1025 = !DILocation(line: 381, column: 7, scope: !909)
!1026 = !DILocation(line: 383, column: 11, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !909, file: !620, line: 383, column: 11)
!1028 = !DILocation(line: 383, column: 19, scope: !1027)
!1029 = !DILocation(line: 383, column: 11, scope: !909)
!1030 = !DILocation(line: 384, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !620, line: 383, column: 24)
!1032 = !DILocation(line: 387, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !909, file: !620, line: 387, column: 11)
!1034 = !DILocation(line: 387, column: 19, scope: !1033)
!1035 = !DILocation(line: 387, column: 11, scope: !909)
!1036 = !DILocation(line: 391, column: 27, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !620, line: 391, column: 10)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !620, line: 387, column: 24)
!1039 = !DILocation(line: 391, column: 15, scope: !1037)
!1040 = !DILocation(line: 391, column: 33, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1042, file: !620, discriminator: 1)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !620, line: 391, column: 10)
!1043 = !DILocation(line: 391, column: 48, scope: !1041)
!1044 = !DILocation(line: 391, column: 56, scope: !1041)
!1045 = !DILocation(line: 391, column: 45, scope: !1041)
!1046 = !DILocation(line: 391, column: 10, scope: !1041)
!1047 = !DILocation(line: 392, column: 37, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !620, line: 392, column: 17)
!1049 = distinct !DILexicalBlock(scope: !1042, file: !620, line: 391, column: 78)
!1050 = !DILocation(line: 392, column: 25, scope: !1048)
!1051 = !DILocation(line: 392, column: 22, scope: !1048)
!1052 = !DILocation(line: 392, column: 17, scope: !1049)
!1053 = !DILocation(line: 393, column: 20, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !620, line: 393, column: 20)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !620, line: 392, column: 51)
!1056 = !DILocation(line: 393, column: 20, scope: !1055)
!1057 = !DILocation(line: 399, column: 42, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !620, line: 393, column: 35)
!1059 = !DILocation(line: 399, column: 34, scope: !1058)
!1060 = !DILocation(line: 399, column: 32, scope: !1058)
!1061 = !DILocation(line: 400, column: 30, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !620, line: 400, column: 22)
!1063 = !DILocation(line: 400, column: 27, scope: !1062)
!1064 = !DILocation(line: 400, column: 22, scope: !1058)
!1065 = !DILocation(line: 401, column: 37, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !620, line: 400, column: 44)
!1067 = !DILocation(line: 401, column: 35, scope: !1066)
!1068 = !DILocation(line: 402, column: 19, scope: !1066)
!1069 = !DILocation(line: 406, column: 34, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1062, file: !620, line: 402, column: 26)
!1071 = !DILocation(line: 408, column: 56, scope: !1058)
!1072 = !DILocation(line: 408, column: 42, scope: !1058)
!1073 = !DILocation(line: 408, column: 28, scope: !1058)
!1074 = !DILocation(line: 408, column: 40, scope: !1058)
!1075 = !DILocation(line: 409, column: 33, scope: !1058)
!1076 = !DILocation(line: 410, column: 16, scope: !1058)
!1077 = !DILocation(line: 411, column: 28, scope: !1055)
!1078 = !DILocation(line: 411, column: 16, scope: !1055)
!1079 = !DILocation(line: 411, column: 41, scope: !1055)
!1080 = !DILocation(line: 412, column: 13, scope: !1055)
!1081 = !DILocation(line: 413, column: 10, scope: !1049)
!1082 = !DILocation(line: 391, column: 74, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1042, file: !620, discriminator: 2)
!1084 = !DILocation(line: 391, column: 10, scope: !1083)
!1085 = distinct !{!1085, !1086}
!1086 = !DILocation(line: 391, column: 10, scope: !1038)
!1087 = !DILocation(line: 414, column: 7, scope: !1038)
!1088 = !DILocation(line: 421, column: 16, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1033, file: !620, line: 414, column: 14)
!1090 = !DILocation(line: 422, column: 18, scope: !1089)
!1091 = !DILocation(line: 424, column: 23, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !620, line: 424, column: 14)
!1093 = !DILocation(line: 427, column: 23, scope: !1092)
!1094 = !DILocation(line: 427, column: 28, scope: !1092)
!1095 = !DILocation(line: 424, column: 14, scope: !1092)
!1096 = !DILocation(line: 427, column: 36, scope: !1092)
!1097 = !DILocation(line: 424, column: 14, scope: !1089)
!1098 = !DILocation(line: 428, column: 26, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !620, line: 427, column: 43)
!1100 = !DILocation(line: 428, column: 21, scope: !1099)
!1101 = !DILocation(line: 428, column: 19, scope: !1099)
!1102 = !DILocation(line: 429, column: 10, scope: !1099)
!1103 = !DILocation(line: 430, column: 14, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1089, file: !620, line: 430, column: 14)
!1105 = !DILocation(line: 430, column: 20, scope: !1104)
!1106 = !DILocation(line: 430, column: 14, scope: !1089)
!1107 = !DILocation(line: 431, column: 44, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !620, line: 430, column: 27)
!1109 = !DILocation(line: 431, column: 23, scope: !1108)
!1110 = !DILocation(line: 431, column: 21, scope: !1108)
!1111 = !DILocation(line: 432, column: 19, scope: !1108)
!1112 = !DILocation(line: 432, column: 13, scope: !1108)
!1113 = !DILocation(line: 433, column: 10, scope: !1108)
!1114 = !DILocation(line: 434, column: 14, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1089, file: !620, line: 434, column: 14)
!1116 = !DILocation(line: 434, column: 22, scope: !1115)
!1117 = !DILocation(line: 434, column: 14, scope: !1089)
!1118 = !DILocalVariable(name: "nameStart", scope: !1119, file: !620, line: 443, type: !636)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !620, line: 434, column: 27)
!1120 = !DILocation(line: 443, column: 25, scope: !1119)
!1121 = !DILocalVariable(name: "copyItr", scope: !1119, file: !620, line: 444, type: !562)
!1122 = !DILocation(line: 444, column: 19, scope: !1119)
!1123 = !DILocation(line: 447, column: 30, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !620, line: 447, column: 13)
!1125 = !DILocation(line: 447, column: 28, scope: !1124)
!1126 = !DILocation(line: 447, column: 18, scope: !1124)
!1127 = !DILocation(line: 447, column: 44, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1129, file: !620, discriminator: 1)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !620, line: 447, column: 13)
!1130 = !DILocation(line: 447, column: 43, scope: !1128)
!1131 = !DILocation(line: 447, column: 54, scope: !1128)
!1132 = !DILocation(line: 448, column: 44, scope: !1129)
!1133 = !DILocation(line: 448, column: 43, scope: !1129)
!1134 = !DILocation(line: 448, column: 54, scope: !1129)
!1135 = !DILocation(line: 448, column: 61, scope: !1129)
!1136 = !DILocation(line: 449, column: 44, scope: !1129)
!1137 = !DILocation(line: 449, column: 43, scope: !1129)
!1138 = !DILocation(line: 449, column: 54, scope: !1129)
!1139 = !DILocation(line: 449, column: 62, scope: !1129)
!1140 = !DILocation(line: 450, column: 44, scope: !1129)
!1141 = !DILocation(line: 450, column: 43, scope: !1129)
!1142 = !DILocation(line: 450, column: 54, scope: !1129)
!1143 = !DILocation(line: 447, column: 13, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1124, file: !620, discriminator: 2)
!1145 = !DILocation(line: 447, column: 13, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1124, file: !620, discriminator: 3)
!1147 = !DILocation(line: 450, column: 63, scope: !1128)
!1148 = !DILocation(line: 447, column: 13, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1129, file: !620, discriminator: 4)
!1150 = distinct !{!1150, !1151}
!1151 = !DILocation(line: 447, column: 13, scope: !1119)
!1152 = !DILocation(line: 452, column: 13, scope: !1119)
!1153 = !DILocation(line: 452, column: 20, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1155, file: !620, discriminator: 1)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !620, line: 452, column: 13)
!1156 = distinct !DILexicalBlock(scope: !1119, file: !620, line: 452, column: 13)
!1157 = !DILocation(line: 452, column: 19, scope: !1154)
!1158 = !DILocation(line: 452, column: 30, scope: !1154)
!1159 = !DILocation(line: 453, column: 21, scope: !1155)
!1160 = !DILocation(line: 453, column: 20, scope: !1155)
!1161 = !DILocation(line: 453, column: 31, scope: !1155)
!1162 = !DILocation(line: 453, column: 38, scope: !1155)
!1163 = !DILocation(line: 454, column: 21, scope: !1155)
!1164 = !DILocation(line: 454, column: 20, scope: !1155)
!1165 = !DILocation(line: 454, column: 31, scope: !1155)
!1166 = !DILocation(line: 454, column: 39, scope: !1155)
!1167 = !DILocation(line: 455, column: 21, scope: !1155)
!1168 = !DILocation(line: 455, column: 20, scope: !1155)
!1169 = !DILocation(line: 455, column: 31, scope: !1155)
!1170 = !DILocation(line: 454, column: 39, scope: !1154)
!1171 = !DILocation(line: 452, column: 13, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1156, file: !620, discriminator: 2)
!1173 = !DILocation(line: 452, column: 13, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1156, file: !620, discriminator: 3)
!1175 = !DILocation(line: 455, column: 41, scope: !1154)
!1176 = !DILocation(line: 452, column: 13, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1155, file: !620, discriminator: 4)
!1178 = distinct !{!1178, !1152}
!1179 = !DILocation(line: 457, column: 28, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1119, file: !620, line: 457, column: 13)
!1181 = !DILocation(line: 457, column: 26, scope: !1180)
!1182 = !DILocation(line: 457, column: 18, scope: !1180)
!1183 = !DILocation(line: 457, column: 42, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !620, discriminator: 1)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !620, line: 457, column: 13)
!1186 = !DILocation(line: 457, column: 41, scope: !1184)
!1187 = !DILocation(line: 457, column: 52, scope: !1184)
!1188 = !DILocation(line: 457, column: 56, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1185, file: !620, discriminator: 2)
!1190 = !DILocation(line: 457, column: 55, scope: !1189)
!1191 = !DILocation(line: 457, column: 66, scope: !1189)
!1192 = !DILocation(line: 457, column: 13, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1180, file: !620, discriminator: 3)
!1194 = !DILocation(line: 458, column: 42, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !620, line: 457, column: 76)
!1196 = !DILocation(line: 458, column: 31, scope: !1195)
!1197 = !DILocation(line: 458, column: 25, scope: !1195)
!1198 = !DILocation(line: 458, column: 29, scope: !1195)
!1199 = !DILocation(line: 457, column: 13, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1185, file: !620, discriminator: 4)
!1201 = distinct !{!1201, !1202}
!1202 = !DILocation(line: 457, column: 13, scope: !1119)
!1203 = !DILocation(line: 460, column: 14, scope: !1119)
!1204 = !DILocation(line: 460, column: 22, scope: !1119)
!1205 = !DILocation(line: 464, column: 50, scope: !1119)
!1206 = !DILocation(line: 464, column: 36, scope: !1119)
!1207 = !DILocation(line: 464, column: 22, scope: !1119)
!1208 = !DILocation(line: 464, column: 34, scope: !1119)
!1209 = !DILocation(line: 465, column: 10, scope: !1119)
!1210 = !DILocation(line: 472, column: 20, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !909, file: !620, line: 472, column: 11)
!1212 = !DILocation(line: 475, column: 20, scope: !1211)
!1213 = !DILocation(line: 475, column: 25, scope: !1211)
!1214 = !DILocation(line: 472, column: 11, scope: !1211)
!1215 = !DILocation(line: 475, column: 33, scope: !1211)
!1216 = !DILocation(line: 472, column: 11, scope: !909)
!1217 = !DILocation(line: 476, column: 43, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1211, file: !620, line: 475, column: 40)
!1219 = !DILocation(line: 476, column: 48, scope: !1218)
!1220 = !DILocation(line: 476, column: 10, scope: !1218)
!1221 = !DILocation(line: 477, column: 10, scope: !1218)
!1222 = !DILocation(line: 485, column: 25, scope: !909)
!1223 = !DILocation(line: 485, column: 20, scope: !909)
!1224 = !DILocation(line: 485, column: 18, scope: !909)
!1225 = !DILocation(line: 486, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !909, file: !620, line: 486, column: 11)
!1227 = !DILocation(line: 486, column: 13, scope: !1226)
!1228 = !DILocation(line: 486, column: 11, scope: !909)
!1229 = !DILocation(line: 487, column: 10, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !620, line: 486, column: 28)
!1231 = !DILocation(line: 494, column: 20, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !909, file: !620, line: 494, column: 11)
!1233 = !DILocation(line: 497, column: 20, scope: !1232)
!1234 = !DILocation(line: 497, column: 25, scope: !1232)
!1235 = !DILocation(line: 494, column: 11, scope: !1232)
!1236 = !DILocation(line: 497, column: 33, scope: !1232)
!1237 = !DILocation(line: 494, column: 11, scope: !909)
!1238 = !DILocation(line: 498, column: 43, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1232, file: !620, line: 497, column: 40)
!1240 = !DILocation(line: 498, column: 48, scope: !1239)
!1241 = !DILocation(line: 498, column: 10, scope: !1239)
!1242 = !DILocation(line: 499, column: 10, scope: !1239)
!1243 = !DILocation(line: 501, column: 20, scope: !909)
!1244 = !DILocation(line: 501, column: 15, scope: !909)
!1245 = !DILocation(line: 501, column: 13, scope: !909)
!1246 = !DILocation(line: 502, column: 17, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !909, file: !620, line: 502, column: 11)
!1248 = !DILocation(line: 502, column: 14, scope: !1247)
!1249 = !DILocation(line: 502, column: 11, scope: !909)
!1250 = !DILocation(line: 503, column: 10, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !620, line: 502, column: 24)
!1252 = !DILocation(line: 505, column: 38, scope: !909)
!1253 = !DILocation(line: 505, column: 17, scope: !909)
!1254 = !DILocation(line: 505, column: 15, scope: !909)
!1255 = !DILocation(line: 506, column: 13, scope: !909)
!1256 = !DILocation(line: 506, column: 7, scope: !909)
!1257 = !DILocation(line: 507, column: 16, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !909, file: !620, line: 507, column: 11)
!1259 = !DILocation(line: 507, column: 13, scope: !1258)
!1260 = !DILocation(line: 507, column: 11, scope: !909)
!1261 = !DILocation(line: 508, column: 10, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !620, line: 507, column: 25)
!1263 = !DILocation(line: 513, column: 28, scope: !909)
!1264 = !DILocation(line: 513, column: 21, scope: !909)
!1265 = !DILocation(line: 513, column: 46, scope: !909)
!1266 = !DILocation(line: 513, column: 19, scope: !909)
!1267 = !DILocation(line: 515, column: 28, scope: !909)
!1268 = !DILocation(line: 518, column: 28, scope: !909)
!1269 = !DILocation(line: 518, column: 45, scope: !909)
!1270 = !DILocation(line: 518, column: 61, scope: !909)
!1271 = !DILocation(line: 519, column: 28, scope: !909)
!1272 = !DILocation(line: 519, column: 44, scope: !909)
!1273 = !DILocation(line: 519, column: 60, scope: !909)
!1274 = !DILocation(line: 528, column: 28, scope: !909)
!1275 = !DILocation(line: 515, column: 21, scope: !909)
!1276 = !DILocation(line: 515, column: 19, scope: !909)
!1277 = !DILocation(line: 530, column: 17, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !909, file: !620, line: 530, column: 11)
!1279 = !DILocation(line: 530, column: 14, scope: !1278)
!1280 = !DILocation(line: 530, column: 11, scope: !909)
!1281 = !DILocation(line: 531, column: 10, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !620, line: 530, column: 30)
!1283 = !DILocation(line: 537, column: 11, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !909, file: !620, line: 537, column: 11)
!1285 = !DILocation(line: 537, column: 11, scope: !909)
!1286 = !DILocation(line: 538, column: 47, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !620, line: 537, column: 24)
!1288 = !DILocation(line: 538, column: 33, scope: !1287)
!1289 = !DILocation(line: 538, column: 19, scope: !1287)
!1290 = !DILocation(line: 538, column: 31, scope: !1287)
!1291 = !DILocation(line: 539, column: 7, scope: !1287)
!1292 = !DILocation(line: 540, column: 33, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1284, file: !620, line: 539, column: 14)
!1294 = !DILocation(line: 540, column: 19, scope: !1293)
!1295 = !DILocation(line: 540, column: 31, scope: !1293)
!1296 = !DILocation(line: 546, column: 38, scope: !909)
!1297 = !DILocation(line: 546, column: 43, scope: !909)
!1298 = !DILocation(line: 546, column: 33, scope: !909)
!1299 = !DILocation(line: 546, column: 16, scope: !909)
!1300 = !DILocation(line: 546, column: 23, scope: !909)
!1301 = !DILocation(line: 551, column: 31, scope: !909)
!1302 = !DILocation(line: 551, column: 13, scope: !909)
!1303 = !DILocation(line: 551, column: 11, scope: !909)
!1304 = !DILocation(line: 552, column: 36, scope: !909)
!1305 = !DILocation(line: 552, column: 33, scope: !909)
!1306 = !DILocation(line: 552, column: 28, scope: !909)
!1307 = !DILocation(line: 553, column: 77, scope: !909)
!1308 = !DILocation(line: 553, column: 30, scope: !909)
!1309 = !DILocation(line: 552, column: 28, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !909, file: !620, discriminator: 1)
!1311 = !DILocation(line: 554, column: 44, scope: !909)
!1312 = !DILocation(line: 554, column: 49, scope: !909)
!1313 = !DILocation(line: 554, column: 30, scope: !909)
!1314 = !DILocation(line: 552, column: 28, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !909, file: !620, discriminator: 2)
!1316 = !DILocation(line: 552, column: 28, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !909, file: !620, discriminator: 3)
!1318 = !DILocation(line: 552, column: 16, scope: !1317)
!1319 = !DILocation(line: 552, column: 26, scope: !1317)
!1320 = !DILocation(line: 559, column: 32, scope: !909)
!1321 = !DILocation(line: 559, column: 49, scope: !909)
!1322 = !DILocation(line: 559, column: 69, scope: !909)
!1323 = !DILocation(line: 559, column: 67, scope: !909)
!1324 = !DILocation(line: 559, column: 46, scope: !909)
!1325 = !DILocation(line: 559, column: 16, scope: !909)
!1326 = !DILocation(line: 559, column: 30, scope: !909)
!1327 = !DILocation(line: 564, column: 38, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !909, file: !620, line: 564, column: 11)
!1329 = !DILocation(line: 564, column: 12, scope: !1328)
!1330 = !DILocation(line: 564, column: 11, scope: !909)
!1331 = !DILocation(line: 565, column: 10, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !620, line: 564, column: 59)
!1333 = !DILocation(line: 567, column: 10, scope: !1332)
!1334 = !DILocation(line: 569, column: 16, scope: !909)
!1335 = !DILocation(line: 569, column: 28, scope: !909)
!1336 = !DILocation(line: 570, column: 16, scope: !909)
!1337 = !DILocation(line: 570, column: 28, scope: !909)
!1338 = !DILocation(line: 571, column: 16, scope: !909)
!1339 = !DILocation(line: 571, column: 26, scope: !909)
!1340 = !DILocation(line: 571, column: 7, scope: !909)
!1341 = !DILocation(line: 574, column: 12, scope: !909)
!1342 = !DILocation(line: 574, column: 7, scope: !909)
!1343 = !DILocation(line: 575, column: 12, scope: !909)
!1344 = !DILocation(line: 575, column: 7, scope: !909)
!1345 = !DILocation(line: 326, column: 4, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !619, file: !620, discriminator: 2)
!1347 = !DILocation(line: 578, column: 39, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !619, file: !620, line: 578, column: 8)
!1349 = !DILocation(line: 578, column: 12, scope: !1348)
!1350 = !DILocation(line: 578, column: 10, scope: !1348)
!1351 = !DILocation(line: 578, column: 8, scope: !619)
!1352 = !DILocation(line: 579, column: 14, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !620, line: 578, column: 50)
!1354 = !DILocation(line: 580, column: 4, scope: !1353)
!1355 = !DILocation(line: 578, column: 47, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1348, file: !620, discriminator: 1)
!1357 = !DILocation(line: 583, column: 13, scope: !619)
!1358 = !DILocation(line: 583, column: 4, scope: !619)
!1359 = !DILocation(line: 585, column: 18, scope: !619)
!1360 = !DILocation(line: 585, column: 4, scope: !619)
!1361 = !DILocation(line: 586, column: 18, scope: !619)
!1362 = !DILocation(line: 586, column: 4, scope: !619)
!1363 = !DILocation(line: 587, column: 18, scope: !619)
!1364 = !DILocation(line: 587, column: 4, scope: !619)
!1365 = !DILocation(line: 589, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !619, file: !620, line: 589, column: 8)
!1367 = !DILocation(line: 589, column: 8, scope: !619)
!1368 = !DILocation(line: 590, column: 28, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !620, line: 589, column: 16)
!1370 = !DILocation(line: 590, column: 7, scope: !1369)
!1371 = !DILocation(line: 591, column: 16, scope: !1369)
!1372 = !DILocation(line: 592, column: 4, scope: !1369)
!1373 = !DILocation(line: 594, column: 11, scope: !619)
!1374 = !DILocation(line: 594, column: 4, scope: !619)
!1375 = distinct !DISubprogram(name: "ProcMgrProcInfoArray_Init", scope: !601, file: !601, line: 67, type: !1376, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!755, !623, !598}
!1378 = !DILocalVariable(name: "a", arg: 1, scope: !1375, file: !601, line: 67, type: !623)
!1379 = !DILocation(line: 67, column: 201, scope: !1375)
!1380 = !DILocalVariable(name: "count", arg: 2, scope: !1375, file: !601, line: 67, type: !598)
!1381 = !DILocation(line: 67, column: 217, scope: !1375)
!1382 = !DILocation(line: 67, column: 259, scope: !1375)
!1383 = !DILocation(line: 67, column: 262, scope: !1375)
!1384 = !DILocation(line: 67, column: 233, scope: !1375)
!1385 = !DILocation(line: 67, column: 226, scope: !1375)
!1386 = distinct !DISubprogram(name: "Unicode_Alloc", scope: !1387, file: !1387, line: 111, type: !1388, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1387 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!562, !1390, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64, align: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !4, line: 445, baseType: !3)
!1393 = !DILocalVariable(name: "buffer", arg: 1, scope: !1386, file: !1387, line: 111, type: !1390)
!1394 = !DILocation(line: 111, column: 27, scope: !1386)
!1395 = !DILocalVariable(name: "encoding", arg: 2, scope: !1386, file: !1387, line: 112, type: !1392)
!1396 = !DILocation(line: 112, column: 30, scope: !1386)
!1397 = !DILocation(line: 114, column: 35, scope: !1386)
!1398 = !DILocation(line: 114, column: 47, scope: !1386)
!1399 = !DILocation(line: 114, column: 11, scope: !1386)
!1400 = !DILocation(line: 114, column: 4, scope: !1386)
!1401 = distinct !DISubprogram(name: "ProcMgrProcInfoArray_Push", scope: !601, file: !601, line: 67, type: !1402, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!755, !623, !600}
!1404 = !DILocalVariable(name: "a", arg: 1, scope: !1401, file: !601, line: 67, type: !623)
!1405 = !DILocation(line: 67, column: 1097, scope: !1401)
!1406 = !DILocalVariable(name: "val", arg: 2, scope: !1401, file: !601, line: 67, type: !600)
!1407 = !DILocation(line: 67, column: 1116, scope: !1401)
!1408 = !DILocalVariable(name: "count", scope: !1401, file: !601, line: 67, type: !598)
!1409 = !DILocation(line: 67, column: 1136, scope: !1401)
!1410 = !DILocation(line: 67, column: 1171, scope: !1401)
!1411 = !DILocation(line: 67, column: 1144, scope: !1401)
!1412 = !DILocation(line: 67, column: 1210, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1401, file: !601, line: 67, column: 1179)
!1414 = !DILocation(line: 67, column: 1213, scope: !1413)
!1415 = !DILocation(line: 67, column: 1219, scope: !1413)
!1416 = !DILocation(line: 67, column: 1180, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1413, file: !601, discriminator: 4)
!1418 = !DILocation(line: 67, column: 1180, scope: !1413)
!1419 = !DILocation(line: 67, column: 1179, scope: !1401)
!1420 = !DILocation(line: 67, column: 1227, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !601, discriminator: 1)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !601, line: 67, column: 1225)
!1423 = !DILocation(line: 67, column: 1271, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1401, file: !601, discriminator: 2)
!1425 = !DILocation(line: 67, column: 1274, scope: !1424)
!1426 = !DILocation(line: 67, column: 1240, scope: !1424)
!1427 = !DILocation(line: 67, column: 1283, scope: !1424)
!1428 = !DILocation(line: 67, column: 1283, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1424, file: !601, discriminator: 5)
!1430 = !DILocation(line: 67, column: 1288, scope: !1424)
!1431 = !DILocation(line: 67, column: 1298, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1401, file: !601, discriminator: 3)
!1433 = distinct !DISubprogram(name: "ProcMgrProcInfoArray_Count", scope: !601, file: !601, line: 67, type: !1434, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!598, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64, align: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!1438 = !DILocalVariable(name: "a", arg: 1, scope: !1433, file: !601, line: 67, type: !1436)
!1439 = !DILocation(line: 67, column: 841, scope: !1433)
!1440 = !DILocation(line: 67, column: 886, scope: !1433)
!1441 = !DILocation(line: 67, column: 853, scope: !1433)
!1442 = !DILocation(line: 67, column: 846, scope: !1433)
!1443 = distinct !DISubprogram(name: "ProcMgr_FreeProcList", scope: !620, file: !620, line: 1177, type: !1444, isLocal: false, isDefinition: true, scopeLine: 1178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !623}
!1446 = !DILocalVariable(name: "procList", arg: 1, scope: !1443, file: !620, line: 1177, type: !623)
!1447 = !DILocation(line: 1177, column: 44, scope: !1443)
!1448 = !DILocalVariable(name: "i", scope: !1443, file: !620, line: 1179, type: !565)
!1449 = !DILocation(line: 1179, column: 8, scope: !1443)
!1450 = !DILocalVariable(name: "procCount", scope: !1443, file: !620, line: 1180, type: !592)
!1451 = !DILocation(line: 1180, column: 11, scope: !1443)
!1452 = !DILocation(line: 1182, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1443, file: !620, line: 1182, column: 7)
!1454 = !DILocation(line: 1182, column: 12, scope: !1453)
!1455 = !DILocation(line: 1182, column: 7, scope: !1443)
!1456 = !DILocation(line: 1183, column: 7, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !620, line: 1182, column: 25)
!1458 = !DILocation(line: 1186, column: 43, scope: !1443)
!1459 = !DILocation(line: 1186, column: 16, scope: !1443)
!1460 = !DILocation(line: 1186, column: 14, scope: !1443)
!1461 = !DILocation(line: 1187, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1443, file: !620, line: 1187, column: 4)
!1463 = !DILocation(line: 1187, column: 9, scope: !1462)
!1464 = !DILocation(line: 1187, column: 16, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1466, file: !620, discriminator: 1)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !620, line: 1187, column: 4)
!1467 = !DILocation(line: 1187, column: 20, scope: !1465)
!1468 = !DILocation(line: 1187, column: 18, scope: !1465)
!1469 = !DILocation(line: 1187, column: 4, scope: !1465)
!1470 = !DILocalVariable(name: "procInfo", scope: !1471, file: !620, line: 1188, type: !599)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !620, line: 1187, column: 36)
!1472 = !DILocation(line: 1188, column: 24, scope: !1471)
!1473 = !DILocation(line: 1188, column: 66, scope: !1471)
!1474 = !DILocation(line: 1188, column: 76, scope: !1471)
!1475 = !DILocation(line: 1188, column: 35, scope: !1471)
!1476 = !DILocation(line: 1189, column: 12, scope: !1471)
!1477 = !DILocation(line: 1189, column: 22, scope: !1471)
!1478 = !DILocation(line: 1189, column: 7, scope: !1471)
!1479 = !DILocation(line: 1190, column: 12, scope: !1471)
!1480 = !DILocation(line: 1190, column: 22, scope: !1471)
!1481 = !DILocation(line: 1190, column: 7, scope: !1471)
!1482 = !DILocation(line: 1191, column: 12, scope: !1471)
!1483 = !DILocation(line: 1191, column: 22, scope: !1471)
!1484 = !DILocation(line: 1191, column: 7, scope: !1471)
!1485 = !DILocation(line: 1192, column: 4, scope: !1471)
!1486 = !DILocation(line: 1187, column: 32, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1466, file: !620, discriminator: 2)
!1488 = !DILocation(line: 1187, column: 4, scope: !1487)
!1489 = distinct !{!1489, !1490}
!1490 = !DILocation(line: 1187, column: 4, scope: !1443)
!1491 = !DILocation(line: 1194, column: 33, scope: !1443)
!1492 = !DILocation(line: 1194, column: 4, scope: !1443)
!1493 = !DILocation(line: 1195, column: 9, scope: !1443)
!1494 = !DILocation(line: 1195, column: 4, scope: !1443)
!1495 = !DILocation(line: 1196, column: 1, scope: !1443)
!1496 = !DILocation(line: 1196, column: 1, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1443, file: !620, discriminator: 1)
!1498 = distinct !DISubprogram(name: "ProcMgrProcInfoArray_AddressOf", scope: !601, file: !601, line: 67, type: !1499, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!599, !623, !598}
!1501 = !DILocalVariable(name: "a", arg: 1, scope: !1498, file: !601, line: 67, type: !623)
!1502 = !DILocation(line: 67, column: 491, scope: !1498)
!1503 = !DILocalVariable(name: "i", arg: 2, scope: !1498, file: !601, line: 67, type: !598)
!1504 = !DILocation(line: 67, column: 507, scope: !1498)
!1505 = !DILocation(line: 67, column: 568, scope: !1498)
!1506 = !DILocation(line: 67, column: 571, scope: !1498)
!1507 = !DILocation(line: 67, column: 537, scope: !1498)
!1508 = !DILocation(line: 67, column: 519, scope: !1498)
!1509 = !DILocation(line: 67, column: 512, scope: !1498)
!1510 = distinct !DISubprogram(name: "ProcMgrProcInfoArray_Destroy", scope: !601, file: !601, line: 67, type: !1444, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1511 = !DILocalVariable(name: "a", arg: 1, scope: !1510, file: !601, line: 67, type: !623)
!1512 = !DILocation(line: 67, column: 367, scope: !1510)
!1513 = !DILocation(line: 67, column: 401, scope: !1510)
!1514 = !DILocation(line: 67, column: 372, scope: !1510)
!1515 = !DILocation(line: 67, column: 405, scope: !1510)
!1516 = distinct !DISubprogram(name: "ProcMgr_ExecSync", scope: !620, file: !620, line: 1272, type: !1517, isLocal: false, isDefinition: true, scopeLine: 1274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!755, !636, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64, align: 64)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgr_ProcArgs", file: !601, line: 123, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProcMgr_ProcArgs", file: !601, line: 70, size: 128, align: 64, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1521, file: !601, line: 115, baseType: !653, size: 64, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "workingDirectory", scope: !1521, file: !601, line: 121, baseType: !562, size: 64, align: 64, offset: 64)
!1525 = !DILocalVariable(name: "cmd", arg: 1, scope: !1516, file: !620, line: 1272, type: !636)
!1526 = !DILocation(line: 1272, column: 30, scope: !1516)
!1527 = !DILocalVariable(name: "userArgs", arg: 2, scope: !1516, file: !620, line: 1273, type: !1519)
!1528 = !DILocation(line: 1273, column: 36, scope: !1516)
!1529 = !DILocation(line: 1275, column: 27, scope: !1516)
!1530 = !DILocation(line: 1275, column: 32, scope: !1516)
!1531 = !DILocation(line: 1275, column: 11, scope: !1516)
!1532 = !DILocation(line: 1275, column: 4, scope: !1516)
!1533 = distinct !DISubprogram(name: "ProcMgrExecSync", scope: !620, file: !620, line: 1230, type: !1534, isLocal: true, isDefinition: true, scopeLine: 1234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!755, !636, !1519, !1536, !564}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, align: 64)
!1537 = !DILocalVariable(name: "cmd", arg: 1, scope: !1533, file: !620, line: 1230, type: !636)
!1538 = !DILocation(line: 1230, column: 29, scope: !1533)
!1539 = !DILocalVariable(name: "userArgs", arg: 2, scope: !1533, file: !620, line: 1231, type: !1519)
!1540 = !DILocation(line: 1231, column: 35, scope: !1533)
!1541 = !DILocalVariable(name: "validExitCode", arg: 3, scope: !1533, file: !620, line: 1232, type: !1536)
!1542 = !DILocation(line: 1232, column: 23, scope: !1533)
!1543 = !DILocalVariable(name: "exitCode", arg: 4, scope: !1533, file: !620, line: 1233, type: !564)
!1544 = !DILocation(line: 1233, column: 22, scope: !1533)
!1545 = !DILocalVariable(name: "pid", scope: !1533, file: !620, line: 1235, type: !570)
!1546 = !DILocation(line: 1235, column: 10, scope: !1533)
!1547 = !DILocation(line: 1237, column: 42, scope: !1533)
!1548 = !DILocation(line: 1237, column: 4, scope: !1533)
!1549 = !DILocation(line: 1239, column: 8, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1533, file: !620, line: 1239, column: 8)
!1551 = !DILocation(line: 1239, column: 22, scope: !1550)
!1552 = !DILocation(line: 1239, column: 8, scope: !1533)
!1553 = !DILocation(line: 1240, column: 8, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !620, line: 1239, column: 30)
!1555 = !DILocation(line: 1240, column: 22, scope: !1554)
!1556 = !DILocation(line: 1241, column: 4, scope: !1554)
!1557 = !DILocation(line: 1243, column: 30, scope: !1533)
!1558 = !DILocation(line: 1243, column: 35, scope: !1533)
!1559 = !DILocation(line: 1243, column: 46, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1533, file: !620, discriminator: 1)
!1561 = !DILocation(line: 1243, column: 56, scope: !1560)
!1562 = !DILocation(line: 1243, column: 35, scope: !1560)
!1563 = !DILocation(line: 1243, column: 35, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1533, file: !620, discriminator: 2)
!1565 = !DILocation(line: 1243, column: 35, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1533, file: !620, discriminator: 3)
!1567 = !DILocation(line: 1244, column: 30, scope: !1533)
!1568 = !DILocation(line: 1244, column: 41, scope: !1560)
!1569 = !DILocation(line: 1244, column: 51, scope: !1560)
!1570 = !DILocation(line: 1244, column: 30, scope: !1560)
!1571 = !DILocation(line: 1244, column: 30, scope: !1564)
!1572 = !DILocation(line: 1244, column: 30, scope: !1566)
!1573 = !DILocation(line: 1243, column: 10, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1533, file: !620, discriminator: 4)
!1575 = !DILocation(line: 1243, column: 8, scope: !1574)
!1576 = !DILocation(line: 1246, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1533, file: !620, line: 1246, column: 8)
!1578 = !DILocation(line: 1246, column: 12, scope: !1577)
!1579 = !DILocation(line: 1246, column: 8, scope: !1533)
!1580 = !DILocation(line: 1247, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !620, line: 1246, column: 19)
!1582 = !DILocation(line: 1250, column: 40, scope: !1533)
!1583 = !DILocation(line: 1250, column: 45, scope: !1533)
!1584 = !DILocation(line: 1250, column: 60, scope: !1533)
!1585 = !DILocation(line: 1250, column: 11, scope: !1533)
!1586 = !DILocation(line: 1250, column: 4, scope: !1533)
!1587 = !DILocation(line: 1251, column: 1, scope: !1533)
!1588 = distinct !DISubprogram(name: "ProcMgr_ExecSyncWithExitCode", scope: !620, file: !620, line: 1309, type: !1534, isLocal: false, isDefinition: true, scopeLine: 1313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1589 = !DILocalVariable(name: "cmd", arg: 1, scope: !1588, file: !620, line: 1309, type: !636)
!1590 = !DILocation(line: 1309, column: 42, scope: !1588)
!1591 = !DILocalVariable(name: "userArgs", arg: 2, scope: !1588, file: !620, line: 1310, type: !1519)
!1592 = !DILocation(line: 1310, column: 48, scope: !1588)
!1593 = !DILocalVariable(name: "validExitCode", arg: 3, scope: !1588, file: !620, line: 1311, type: !1536)
!1594 = !DILocation(line: 1311, column: 36, scope: !1588)
!1595 = !DILocalVariable(name: "exitCode", arg: 4, scope: !1588, file: !620, line: 1312, type: !564)
!1596 = !DILocation(line: 1312, column: 35, scope: !1588)
!1597 = !DILocalVariable(name: "result", scope: !1588, file: !620, line: 1314, type: !755)
!1598 = !DILocation(line: 1314, column: 9, scope: !1588)
!1599 = !DILocation(line: 1318, column: 29, scope: !1588)
!1600 = !DILocation(line: 1318, column: 34, scope: !1588)
!1601 = !DILocation(line: 1318, column: 44, scope: !1588)
!1602 = !DILocation(line: 1318, column: 59, scope: !1588)
!1603 = !DILocation(line: 1318, column: 13, scope: !1588)
!1604 = !DILocation(line: 1318, column: 11, scope: !1588)
!1605 = !DILocation(line: 1321, column: 10, scope: !1588)
!1606 = !DILocation(line: 1321, column: 15, scope: !1588)
!1607 = !DILocation(line: 1321, column: 24, scope: !1588)
!1608 = !DILocation(line: 1321, column: 23, scope: !1588)
!1609 = !DILocation(line: 1321, column: 41, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1588, file: !620, discriminator: 1)
!1611 = !DILocation(line: 1321, column: 40, scope: !1610)
!1612 = !DILocation(line: 1321, column: 23, scope: !1610)
!1613 = !DILocation(line: 1321, column: 23, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1588, file: !620, discriminator: 2)
!1615 = !DILocation(line: 1321, column: 23, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1588, file: !620, discriminator: 3)
!1617 = !DILocation(line: 1320, column: 4, scope: !1588)
!1618 = !DILocation(line: 1322, column: 11, scope: !1588)
!1619 = !DILocation(line: 1322, column: 4, scope: !1588)
!1620 = distinct !DISubprogram(name: "ProcMgr_ExecAsync", scope: !620, file: !620, line: 1579, type: !1621, isLocal: false, isDefinition: true, scopeLine: 1581, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1623, !636, !1519}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64, align: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcMgr_AsyncProc", file: !601, line: 42, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ProcMgr_AsyncProc", file: !620, line: 108, size: 160, align: 32, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630, !1631}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "waiterPid", scope: !1625, file: !620, line: 109, baseType: !570, size: 32, align: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "resultPid", scope: !1625, file: !620, line: 110, baseType: !570, size: 32, align: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1625, file: !620, line: 111, baseType: !565, size: 32, align: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "validExitCode", scope: !1625, file: !620, line: 112, baseType: !755, size: 8, align: 8, offset: 96)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "exitCode", scope: !1625, file: !620, line: 113, baseType: !565, size: 32, align: 32, offset: 128)
!1632 = !DILocalVariable(name: "cmd", arg: 1, scope: !1620, file: !620, line: 1579, type: !636)
!1633 = !DILocation(line: 1579, column: 31, scope: !1620)
!1634 = !DILocalVariable(name: "userArgs", arg: 2, scope: !1620, file: !620, line: 1580, type: !1519)
!1635 = !DILocation(line: 1580, column: 37, scope: !1620)
!1636 = !DILocalVariable(name: "asyncProc", scope: !1620, file: !620, line: 1582, type: !1623)
!1637 = !DILocation(line: 1582, column: 23, scope: !1620)
!1638 = !DILocalVariable(name: "pid", scope: !1620, file: !620, line: 1583, type: !570)
!1639 = !DILocation(line: 1583, column: 10, scope: !1620)
!1640 = !DILocalVariable(name: "fds", scope: !1620, file: !620, line: 1584, type: !1641)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 64, align: 32, elements: !1642)
!1642 = !{!1643}
!1643 = !DISubrange(count: 2)
!1644 = !DILocation(line: 1584, column: 8, scope: !1620)
!1645 = !DILocalVariable(name: "validExitCode", scope: !1620, file: !620, line: 1585, type: !755)
!1646 = !DILocation(line: 1585, column: 9, scope: !1620)
!1647 = !DILocalVariable(name: "exitCode", scope: !1620, file: !620, line: 1586, type: !565)
!1648 = !DILocation(line: 1586, column: 8, scope: !1620)
!1649 = !DILocalVariable(name: "resultPid", scope: !1620, file: !620, line: 1587, type: !570)
!1650 = !DILocation(line: 1587, column: 10, scope: !1620)
!1651 = !DILocalVariable(name: "readFd", scope: !1620, file: !620, line: 1588, type: !565)
!1652 = !DILocation(line: 1588, column: 8, scope: !1620)
!1653 = !DILocalVariable(name: "writeFd", scope: !1620, file: !620, line: 1588, type: !565)
!1654 = !DILocation(line: 1588, column: 16, scope: !1620)
!1655 = !DILocation(line: 1591, column: 10, scope: !1620)
!1656 = !DILocation(line: 1591, column: 16, scope: !1620)
!1657 = !DILocation(line: 1591, column: 25, scope: !1620)
!1658 = !DILocation(line: 1591, column: 28, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1620, file: !620, discriminator: 1)
!1660 = !DILocation(line: 1591, column: 38, scope: !1659)
!1661 = !DILocation(line: 1591, column: 15, scope: !1659)
!1662 = !DILocation(line: 1591, column: 58, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1620, file: !620, discriminator: 2)
!1664 = !DILocation(line: 1591, column: 68, scope: !1663)
!1665 = !DILocation(line: 1591, column: 15, scope: !1663)
!1666 = !DILocation(line: 1591, column: 15, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1620, file: !620, discriminator: 3)
!1668 = !DILocation(line: 1591, column: 15, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1620, file: !620, discriminator: 4)
!1670 = !DILocation(line: 1590, column: 4, scope: !1620)
!1671 = !DILocation(line: 1593, column: 13, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1620, file: !620, line: 1593, column: 8)
!1673 = !DILocation(line: 1593, column: 8, scope: !1672)
!1674 = !DILocation(line: 1593, column: 18, scope: !1672)
!1675 = !DILocation(line: 1593, column: 8, scope: !1620)
!1676 = !DILocation(line: 1594, column: 69, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !620, line: 1593, column: 25)
!1678 = !DILocation(line: 1594, column: 7, scope: !1677)
!1679 = !DILocation(line: 1595, column: 7, scope: !1677)
!1680 = !DILocation(line: 1598, column: 13, scope: !1620)
!1681 = !DILocation(line: 1598, column: 11, scope: !1620)
!1682 = !DILocation(line: 1599, column: 14, scope: !1620)
!1683 = !DILocation(line: 1599, column: 12, scope: !1620)
!1684 = !DILocation(line: 1601, column: 10, scope: !1620)
!1685 = !DILocation(line: 1601, column: 8, scope: !1620)
!1686 = !DILocation(line: 1603, column: 8, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1620, file: !620, line: 1603, column: 8)
!1688 = !DILocation(line: 1603, column: 12, scope: !1687)
!1689 = !DILocation(line: 1603, column: 8, scope: !1620)
!1690 = !DILocation(line: 1604, column: 52, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !620, line: 1603, column: 19)
!1692 = !DILocation(line: 1604, column: 51, scope: !1691)
!1693 = !DILocation(line: 1604, column: 42, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1691, file: !620, discriminator: 1)
!1695 = !DILocation(line: 1604, column: 7, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1691, file: !620, discriminator: 2)
!1697 = !DILocation(line: 1605, column: 7, scope: !1691)
!1698 = !DILocation(line: 1606, column: 15, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1687, file: !620, line: 1606, column: 15)
!1700 = !DILocation(line: 1606, column: 19, scope: !1699)
!1701 = !DILocation(line: 1606, column: 15, scope: !1687)
!1702 = !DILocalVariable(name: "olds", scope: !1703, file: !620, line: 1607, type: !1704)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !620, line: 1606, column: 25)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1705, size: 7296, align: 64, elements: !630)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1706, line: 24, size: 1216, align: 64, elements: !1707)
!1706 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!1707 = !{!1708, !1785, !1794, !1795}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !1705, file: !1706, line: 35, baseType: !1709, size: 64, align: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !1706, line: 28, size: 64, align: 64, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1709, file: !1706, line: 31, baseType: !573, size: 64, align: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !1709, file: !1706, line: 33, baseType: !1713, size: 64, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64, align: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !565, !1716, !555}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64, align: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !1718, line: 133, baseType: !1719)
!1718 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1718, line: 62, size: 1024, align: 64, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1719, file: !1718, line: 64, baseType: !565, size: 32, align: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1719, file: !1718, line: 65, baseType: !565, size: 32, align: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1719, file: !1718, line: 67, baseType: !565, size: 32, align: 32, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1719, file: !1718, line: 132, baseType: !1725, size: 896, align: 64, offset: 128)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1718, line: 69, size: 896, align: 64, elements: !1726)
!1726 = !{!1727, !1731, !1736, !1747, !1753, !1763, !1774, !1779}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1725, file: !1718, line: 71, baseType: !1728, size: 896, align: 32)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 896, align: 32, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 28)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1725, file: !1718, line: 78, baseType: !1732, size: 64, align: 32)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1718, line: 74, size: 64, align: 32, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1732, file: !1718, line: 76, baseType: !572, size: 32, align: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1732, file: !1718, line: 77, baseType: !922, size: 32, align: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1725, file: !1718, line: 86, baseType: !1737, size: 128, align: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1718, line: 81, size: 128, align: 64, elements: !1738)
!1738 = !{!1739, !1740, !1741}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !1737, file: !1718, line: 83, baseType: !565, size: 32, align: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !1737, file: !1718, line: 84, baseType: !565, size: 32, align: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1737, file: !1718, line: 85, baseType: !1742, size: 64, align: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1718, line: 36, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1718, line: 32, size: 64, align: 64, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1743, file: !1718, line: 34, baseType: !565, size: 32, align: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1743, file: !1718, line: 35, baseType: !555, size: 64, align: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1725, file: !1718, line: 94, baseType: !1748, size: 128, align: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1718, line: 89, size: 128, align: 64, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1748, file: !1718, line: 91, baseType: !572, size: 32, align: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1748, file: !1718, line: 92, baseType: !922, size: 32, align: 32, offset: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !1748, file: !1718, line: 93, baseType: !1742, size: 64, align: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1725, file: !1718, line: 104, baseType: !1754, size: 256, align: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1718, line: 97, size: 256, align: 64, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1762}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !1754, file: !1718, line: 99, baseType: !572, size: 32, align: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !1754, file: !1718, line: 100, baseType: !922, size: 32, align: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !1754, file: !1718, line: 101, baseType: !565, size: 32, align: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !1754, file: !1718, line: 102, baseType: !1760, size: 64, align: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !1718, line: 58, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !559, line: 135, baseType: !560)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !1754, file: !1718, line: 103, baseType: !1760, size: 64, align: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1725, file: !1718, line: 116, baseType: !1764, size: 256, align: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1718, line: 107, size: 256, align: 64, elements: !1765)
!1765 = !{!1766, !1767, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !1764, file: !1718, line: 109, baseType: !555, size: 64, align: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !1764, file: !1718, line: 110, baseType: !1768, size: 16, align: 16, offset: 64)
!1768 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !1764, file: !1718, line: 115, baseType: !1770, size: 128, align: 64, offset: 128)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !1718, line: 111, size: 128, align: 64, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1770, file: !1718, line: 113, baseType: !555, size: 64, align: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1770, file: !1718, line: 114, baseType: !555, size: 64, align: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1725, file: !1718, line: 123, baseType: !1775, size: 128, align: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1718, line: 119, size: 128, align: 64, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !1775, file: !1718, line: 121, baseType: !560, size: 64, align: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !1775, file: !1718, line: 122, baseType: !565, size: 32, align: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1725, file: !1718, line: 131, baseType: !1780, size: 128, align: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !1718, line: 126, size: 128, align: 64, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1780, file: !1718, line: 128, baseType: !555, size: 64, align: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1780, file: !1718, line: 129, baseType: !565, size: 32, align: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1780, file: !1718, line: 130, baseType: !598, size: 32, align: 32, offset: 96)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1705, file: !1706, line: 43, baseType: !1786, size: 1024, align: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !1787, line: 30, baseType: !1788)
!1787 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1787, line: 27, size: 1024, align: 64, elements: !1789)
!1789 = !{!1790}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1788, file: !1787, line: 29, baseType: !1791, size: 1024, align: 64)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 1024, align: 64, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 16)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1705, file: !1706, line: 46, baseType: !565, size: 32, align: 32, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1705, file: !1706, line: 49, baseType: !1796, size: 64, align: 64, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64, align: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null}
!1799 = !DILocation(line: 1607, column: 24, scope: !1703)
!1800 = !DILocalVariable(name: "i", scope: !1703, file: !620, line: 1608, type: !565)
!1801 = !DILocation(line: 1608, column: 11, scope: !1703)
!1802 = !DILocalVariable(name: "maxfd", scope: !1703, file: !620, line: 1608, type: !565)
!1803 = !DILocation(line: 1608, column: 14, scope: !1703)
!1804 = !DILocalVariable(name: "status", scope: !1703, file: !620, line: 1609, type: !755)
!1805 = !DILocation(line: 1609, column: 12, scope: !1703)
!1806 = !DILocalVariable(name: "childPid", scope: !1703, file: !620, line: 1610, type: !570)
!1807 = !DILocation(line: 1610, column: 13, scope: !1703)
!1808 = !DILocation(line: 1624, column: 15, scope: !1703)
!1809 = !DILocation(line: 1624, column: 13, scope: !1703)
!1810 = !DILocation(line: 1625, column: 14, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1625, column: 7)
!1812 = !DILocation(line: 1625, column: 12, scope: !1811)
!1813 = !DILocation(line: 1625, column: 34, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1815, file: !620, discriminator: 1)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !620, line: 1625, column: 7)
!1816 = !DILocation(line: 1625, column: 38, scope: !1814)
!1817 = !DILocation(line: 1625, column: 36, scope: !1814)
!1818 = !DILocation(line: 1625, column: 7, scope: !1814)
!1819 = !DILocation(line: 1626, column: 14, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !620, line: 1626, column: 14)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !620, line: 1625, column: 50)
!1822 = !DILocation(line: 1626, column: 19, scope: !1820)
!1823 = !DILocation(line: 1626, column: 16, scope: !1820)
!1824 = !DILocation(line: 1626, column: 26, scope: !1820)
!1825 = !DILocation(line: 1626, column: 29, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1820, file: !620, discriminator: 1)
!1827 = !DILocation(line: 1626, column: 34, scope: !1826)
!1828 = !DILocation(line: 1626, column: 31, scope: !1826)
!1829 = !DILocation(line: 1626, column: 14, scope: !1826)
!1830 = !DILocation(line: 1627, column: 19, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1820, file: !620, line: 1626, column: 43)
!1832 = !DILocation(line: 1627, column: 13, scope: !1831)
!1833 = !DILocation(line: 1628, column: 10, scope: !1831)
!1834 = !DILocation(line: 1629, column: 7, scope: !1821)
!1835 = !DILocation(line: 1625, column: 46, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1815, file: !620, discriminator: 2)
!1837 = !DILocation(line: 1625, column: 7, scope: !1836)
!1838 = distinct !{!1838, !1839}
!1839 = !DILocation(line: 1625, column: 7, scope: !1703)
!1840 = !DILocation(line: 1631, column: 44, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1631, column: 11)
!1842 = !DILocation(line: 1631, column: 11, scope: !1841)
!1843 = !DILocation(line: 1637, column: 35, scope: !1841)
!1844 = !DILocation(line: 1631, column: 11, scope: !1703)
!1845 = !DILocation(line: 1638, column: 17, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !620, line: 1637, column: 41)
!1847 = !DILocation(line: 1639, column: 7, scope: !1846)
!1848 = !DILocation(line: 1641, column: 13, scope: !1703)
!1849 = !DILocation(line: 1641, column: 7, scope: !1703)
!1850 = !DILocation(line: 1646, column: 11, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1646, column: 11)
!1852 = !DILocation(line: 1646, column: 11, scope: !1703)
!1853 = !DILocation(line: 1647, column: 41, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !620, line: 1646, column: 19)
!1855 = !DILocation(line: 1648, column: 41, scope: !1854)
!1856 = !DILocation(line: 1648, column: 52, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1854, file: !620, discriminator: 1)
!1858 = !DILocation(line: 1648, column: 62, scope: !1857)
!1859 = !DILocation(line: 1648, column: 41, scope: !1857)
!1860 = !DILocation(line: 1648, column: 41, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1854, file: !620, discriminator: 2)
!1862 = !DILocation(line: 1648, column: 41, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1854, file: !620, discriminator: 3)
!1864 = !DILocation(line: 1649, column: 41, scope: !1854)
!1865 = !DILocation(line: 1649, column: 52, scope: !1857)
!1866 = !DILocation(line: 1649, column: 62, scope: !1857)
!1867 = !DILocation(line: 1649, column: 41, scope: !1857)
!1868 = !DILocation(line: 1649, column: 41, scope: !1861)
!1869 = !DILocation(line: 1649, column: 41, scope: !1863)
!1870 = !DILocation(line: 1647, column: 21, scope: !1857)
!1871 = !DILocation(line: 1647, column: 19, scope: !1857)
!1872 = !DILocation(line: 1650, column: 19, scope: !1854)
!1873 = !DILocation(line: 1650, column: 28, scope: !1854)
!1874 = !DILocation(line: 1650, column: 17, scope: !1854)
!1875 = !DILocation(line: 1651, column: 7, scope: !1854)
!1876 = !DILocation(line: 1657, column: 17, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1657, column: 11)
!1878 = !DILocation(line: 1657, column: 26, scope: !1877)
!1879 = !DILocation(line: 1657, column: 11, scope: !1877)
!1880 = !DILocation(line: 1657, column: 54, scope: !1877)
!1881 = !DILocation(line: 1657, column: 11, scope: !1703)
!1882 = !DILocation(line: 1658, column: 10, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1877, file: !620, line: 1657, column: 61)
!1884 = !DILocation(line: 1665, column: 10, scope: !1883)
!1885 = !DILocation(line: 1668, column: 11, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1668, column: 11)
!1887 = !DILocation(line: 1668, column: 11, scope: !1703)
!1888 = !DILocation(line: 1674, column: 48, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !620, line: 1668, column: 19)
!1890 = !DILocation(line: 1674, column: 19, scope: !1889)
!1891 = !DILocation(line: 1674, column: 17, scope: !1889)
!1892 = !DILocation(line: 1675, column: 7, scope: !1889)
!1893 = !DILocation(line: 1682, column: 13, scope: !1703)
!1894 = !DILocation(line: 1682, column: 41, scope: !1703)
!1895 = !DILocation(line: 1681, column: 7, scope: !1703)
!1896 = !DILocation(line: 1683, column: 17, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1683, column: 11)
!1898 = !DILocation(line: 1683, column: 11, scope: !1897)
!1899 = !DILocation(line: 1683, column: 50, scope: !1897)
!1900 = !DILocation(line: 1683, column: 11, scope: !1703)
!1901 = !DILocation(line: 1684, column: 10, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !620, line: 1683, column: 57)
!1903 = !DILocation(line: 1691, column: 10, scope: !1902)
!1904 = !DILocation(line: 1694, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1694, column: 11)
!1906 = !DILocation(line: 1694, column: 26, scope: !1905)
!1907 = !DILocation(line: 1694, column: 11, scope: !1905)
!1908 = !DILocation(line: 1694, column: 54, scope: !1905)
!1909 = !DILocation(line: 1694, column: 11, scope: !1703)
!1910 = !DILocation(line: 1695, column: 10, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1905, file: !620, line: 1694, column: 61)
!1912 = !DILocation(line: 1702, column: 10, scope: !1911)
!1913 = !DILocation(line: 1705, column: 13, scope: !1703)
!1914 = !DILocation(line: 1705, column: 7, scope: !1703)
!1915 = !DILocation(line: 1707, column: 11, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1707, column: 11)
!1917 = !DILocation(line: 1707, column: 18, scope: !1916)
!1918 = !DILocation(line: 1708, column: 46, scope: !1916)
!1919 = !DILocation(line: 1708, column: 11, scope: !1916)
!1920 = !DILocation(line: 1708, column: 94, scope: !1916)
!1921 = !DILocation(line: 1707, column: 11, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1703, file: !620, discriminator: 1)
!1923 = !DILocation(line: 1712, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1916, file: !620, line: 1708, column: 100)
!1925 = !DILocation(line: 1714, column: 12, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1703, file: !620, line: 1714, column: 11)
!1927 = !DILocation(line: 1714, column: 11, scope: !1703)
!1928 = !DILocation(line: 1715, column: 19, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !620, line: 1714, column: 27)
!1930 = !DILocation(line: 1716, column: 7, scope: !1929)
!1931 = !DILocation(line: 1718, column: 12, scope: !1703)
!1932 = !DILocation(line: 1718, column: 7, scope: !1703)
!1933 = !DILocation(line: 1725, column: 10, scope: !1620)
!1934 = !DILocation(line: 1725, column: 4, scope: !1620)
!1935 = !DILocation(line: 1726, column: 12, scope: !1620)
!1936 = !DILocation(line: 1731, column: 13, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1620, file: !620, line: 1731, column: 8)
!1938 = !DILocation(line: 1731, column: 21, scope: !1937)
!1939 = !DILocation(line: 1731, column: 8, scope: !1937)
!1940 = !DILocation(line: 1731, column: 51, scope: !1937)
!1941 = !DILocation(line: 1731, column: 8, scope: !1620)
!1942 = !DILocation(line: 1732, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !620, line: 1731, column: 72)
!1944 = !DILocation(line: 1740, column: 19, scope: !1943)
!1945 = !DILocation(line: 1740, column: 7, scope: !1943)
!1946 = !DILocation(line: 1741, column: 7, scope: !1943)
!1947 = !DILocation(line: 1744, column: 8, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1620, file: !620, line: 1744, column: 8)
!1949 = !DILocation(line: 1744, column: 18, scope: !1948)
!1950 = !DILocation(line: 1744, column: 8, scope: !1620)
!1951 = !DILocation(line: 1745, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !620, line: 1744, column: 25)
!1953 = !DILocation(line: 1750, column: 15, scope: !1952)
!1954 = !DILocation(line: 1750, column: 7, scope: !1952)
!1955 = !DILocation(line: 1751, column: 7, scope: !1952)
!1956 = !DILocation(line: 1754, column: 16, scope: !1620)
!1957 = !DILocation(line: 1754, column: 14, scope: !1620)
!1958 = !DILocation(line: 1755, column: 20, scope: !1620)
!1959 = !DILocation(line: 1755, column: 4, scope: !1620)
!1960 = !DILocation(line: 1755, column: 15, scope: !1620)
!1961 = !DILocation(line: 1755, column: 18, scope: !1620)
!1962 = !DILocation(line: 1756, column: 11, scope: !1620)
!1963 = !DILocation(line: 1757, column: 27, scope: !1620)
!1964 = !DILocation(line: 1757, column: 4, scope: !1620)
!1965 = !DILocation(line: 1757, column: 15, scope: !1620)
!1966 = !DILocation(line: 1757, column: 25, scope: !1620)
!1967 = !DILocation(line: 1758, column: 4, scope: !1620)
!1968 = !DILocation(line: 1758, column: 15, scope: !1620)
!1969 = !DILocation(line: 1758, column: 29, scope: !1620)
!1970 = !DILocation(line: 1759, column: 4, scope: !1620)
!1971 = !DILocation(line: 1759, column: 15, scope: !1620)
!1972 = !DILocation(line: 1759, column: 24, scope: !1620)
!1973 = !DILocation(line: 1760, column: 27, scope: !1620)
!1974 = !DILocation(line: 1760, column: 4, scope: !1620)
!1975 = !DILocation(line: 1760, column: 15, scope: !1620)
!1976 = !DILocation(line: 1760, column: 25, scope: !1620)
!1977 = !DILocation(line: 1763, column: 8, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1620, file: !620, line: 1763, column: 8)
!1979 = !DILocation(line: 1763, column: 15, scope: !1978)
!1980 = !DILocation(line: 1763, column: 8, scope: !1620)
!1981 = !DILocation(line: 1764, column: 13, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !620, line: 1763, column: 22)
!1983 = !DILocation(line: 1764, column: 7, scope: !1982)
!1984 = !DILocation(line: 1765, column: 4, scope: !1982)
!1985 = !DILocation(line: 1766, column: 8, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1620, file: !620, line: 1766, column: 8)
!1987 = !DILocation(line: 1766, column: 16, scope: !1986)
!1988 = !DILocation(line: 1766, column: 8, scope: !1620)
!1989 = !DILocation(line: 1767, column: 13, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !620, line: 1766, column: 23)
!1991 = !DILocation(line: 1767, column: 7, scope: !1990)
!1992 = !DILocation(line: 1768, column: 4, scope: !1990)
!1993 = !DILocation(line: 1770, column: 11, scope: !1620)
!1994 = !DILocation(line: 1770, column: 4, scope: !1620)
!1995 = !DILocation(line: 1771, column: 1, scope: !1620)
!1996 = !DILocalVariable(name: "cmd", arg: 1, scope: !633, file: !620, line: 1345, type: !636)
!1997 = !DILocation(line: 1345, column: 33, scope: !633)
!1998 = !DILocalVariable(name: "envp", arg: 2, scope: !633, file: !620, line: 1346, type: !638)
!1999 = !DILocation(line: 1346, column: 35, scope: !633)
!2000 = !DILocalVariable(name: "workingDir", arg: 3, scope: !633, file: !620, line: 1347, type: !636)
!2001 = !DILocation(line: 1347, column: 33, scope: !633)
!2002 = !DILocalVariable(name: "pid", scope: !633, file: !620, line: 1349, type: !570)
!2003 = !DILocation(line: 1349, column: 10, scope: !633)
!2004 = !DILocalVariable(name: "cmdCurrent", scope: !633, file: !620, line: 1350, type: !562)
!2005 = !DILocation(line: 1350, column: 10, scope: !633)
!2006 = !DILocalVariable(name: "envpCurrent", scope: !633, file: !620, line: 1351, type: !653)
!2007 = !DILocation(line: 1351, column: 11, scope: !633)
!2008 = !DILocalVariable(name: "workDir", scope: !633, file: !620, line: 1352, type: !562)
!2009 = !DILocation(line: 1352, column: 10, scope: !633)
!2010 = !DILocation(line: 1354, column: 8, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !633, file: !620, line: 1354, column: 8)
!2012 = !DILocation(line: 1354, column: 12, scope: !2011)
!2013 = !DILocation(line: 1354, column: 8, scope: !633)
!2014 = !DILocation(line: 1356, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !620, line: 1354, column: 20)
!2016 = !DILocation(line: 1364, column: 31, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !633, file: !620, line: 1364, column: 8)
!2018 = !DILocation(line: 1364, column: 43, scope: !2017)
!2019 = !DILocation(line: 1364, column: 36, scope: !2017)
!2020 = !DILocation(line: 1364, column: 9, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2017, file: !620, discriminator: 1)
!2022 = !DILocation(line: 1364, column: 9, scope: !2017)
!2023 = !DILocation(line: 1364, column: 8, scope: !633)
!2024 = !DILocation(line: 1365, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2017, file: !620, line: 1364, column: 68)
!2026 = !DILocation(line: 1366, column: 7, scope: !2025)
!2027 = !DILocation(line: 1369, column: 16, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !633, file: !620, line: 1369, column: 8)
!2029 = !DILocation(line: 1369, column: 13, scope: !2028)
!2030 = !DILocation(line: 1369, column: 28, scope: !2028)
!2031 = !DILocation(line: 1370, column: 31, scope: !2028)
!2032 = !DILocation(line: 1370, column: 50, scope: !2028)
!2033 = !DILocation(line: 1370, column: 43, scope: !2028)
!2034 = !DILocation(line: 1370, column: 9, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2028, file: !620, discriminator: 1)
!2036 = !DILocation(line: 1370, column: 9, scope: !2028)
!2037 = !DILocation(line: 1369, column: 8, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !633, file: !620, discriminator: 1)
!2039 = !DILocation(line: 1371, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2028, file: !620, line: 1370, column: 79)
!2041 = !DILocation(line: 1372, column: 7, scope: !2040)
!2042 = !DILocation(line: 1375, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !633, file: !620, line: 1375, column: 7)
!2044 = !DILocation(line: 1375, column: 12, scope: !2043)
!2045 = !DILocation(line: 1375, column: 7, scope: !633)
!2046 = !DILocation(line: 1376, column: 42, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !620, line: 1375, column: 21)
!2048 = !DILocation(line: 1376, column: 21, scope: !2047)
!2049 = !DILocation(line: 1376, column: 19, scope: !2047)
!2050 = !DILocation(line: 1377, column: 4, scope: !2047)
!2051 = !DILocation(line: 1411, column: 10, scope: !633)
!2052 = !DILocation(line: 1411, column: 8, scope: !633)
!2053 = !DILocation(line: 1413, column: 8, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !633, file: !620, line: 1413, column: 8)
!2055 = !DILocation(line: 1413, column: 12, scope: !2054)
!2056 = !DILocation(line: 1413, column: 8, scope: !633)
!2057 = !DILocation(line: 1414, column: 52, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !620, line: 1413, column: 19)
!2059 = !DILocation(line: 1414, column: 51, scope: !2058)
!2060 = !DILocation(line: 1414, column: 42, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2058, file: !620, discriminator: 1)
!2062 = !DILocation(line: 1414, column: 7, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !2058, file: !620, discriminator: 2)
!2064 = !DILocation(line: 1415, column: 4, scope: !2058)
!2065 = !DILocation(line: 1415, column: 15, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2067, file: !620, discriminator: 1)
!2067 = distinct !DILexicalBlock(scope: !2054, file: !620, line: 1415, column: 15)
!2068 = !DILocation(line: 1415, column: 19, scope: !2066)
!2069 = !DILocalVariable(name: "bashArgs", scope: !2070, file: !620, line: 1417, type: !2071)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !620, line: 1415, column: 25)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 256, align: 64, elements: !2072)
!2072 = !{!2073}
!2073 = !DISubrange(count: 4)
!2074 = !DILocation(line: 1417, column: 13, scope: !2070)
!2075 = !DILocation(line: 1417, column: 26, scope: !2070)
!2076 = !DILocation(line: 1417, column: 42, scope: !2070)
!2077 = !DILocalVariable(name: "bourneArgs", scope: !2070, file: !620, line: 1419, type: !2071)
!2078 = !DILocation(line: 1419, column: 13, scope: !2070)
!2079 = !DILocation(line: 1419, column: 28, scope: !2070)
!2080 = !DILocation(line: 1419, column: 42, scope: !2070)
!2081 = !DILocalVariable(name: "shellPath", scope: !2070, file: !620, line: 1420, type: !636)
!2082 = !DILocation(line: 1420, column: 19, scope: !2070)
!2083 = !DILocalVariable(name: "args", scope: !2070, file: !620, line: 1421, type: !653)
!2084 = !DILocation(line: 1421, column: 14, scope: !2070)
!2085 = !DILocation(line: 1439, column: 11, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2070, file: !620, line: 1439, column: 11)
!2087 = !DILocation(line: 1439, column: 11, scope: !2070)
!2088 = !DILocation(line: 1440, column: 20, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2086, file: !620, line: 1439, column: 39)
!2090 = !DILocation(line: 1441, column: 17, scope: !2089)
!2091 = !DILocation(line: 1441, column: 15, scope: !2089)
!2092 = !DILocation(line: 1442, column: 7, scope: !2089)
!2093 = !DILocation(line: 1443, column: 20, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2086, file: !620, line: 1442, column: 14)
!2095 = !DILocation(line: 1444, column: 17, scope: !2094)
!2096 = !DILocation(line: 1444, column: 15, scope: !2094)
!2097 = !DILocation(line: 1466, column: 18, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2070, file: !620, line: 1466, column: 10)
!2099 = !DILocation(line: 1466, column: 15, scope: !2098)
!2100 = !DILocation(line: 1466, column: 10, scope: !2070)
!2101 = !DILocation(line: 1467, column: 20, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !620, line: 1467, column: 14)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !620, line: 1466, column: 27)
!2104 = !DILocation(line: 1467, column: 14, scope: !2102)
!2105 = !DILocation(line: 1467, column: 29, scope: !2102)
!2106 = !DILocation(line: 1467, column: 14, scope: !2103)
!2107 = !DILocation(line: 1468, column: 67, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2102, file: !620, line: 1467, column: 35)
!2109 = !DILocation(line: 1469, column: 31, scope: !2108)
!2110 = !DILocation(line: 1469, column: 30, scope: !2108)
!2111 = !DILocation(line: 1469, column: 21, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2108, file: !620, discriminator: 1)
!2113 = !DILocation(line: 1468, column: 13, scope: !2108)
!2114 = !DILocation(line: 1470, column: 10, scope: !2108)
!2115 = !DILocation(line: 1471, column: 7, scope: !2103)
!2116 = !DILocation(line: 1473, column: 18, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2070, file: !620, line: 1473, column: 10)
!2118 = !DILocation(line: 1473, column: 15, scope: !2117)
!2119 = !DILocation(line: 1473, column: 10, scope: !2070)
!2120 = !DILocation(line: 1474, column: 17, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !620, line: 1473, column: 31)
!2122 = !DILocation(line: 1474, column: 28, scope: !2121)
!2123 = !DILocation(line: 1474, column: 34, scope: !2121)
!2124 = !DILocation(line: 1474, column: 10, scope: !2121)
!2125 = !DILocation(line: 1475, column: 7, scope: !2121)
!2126 = !DILocation(line: 1476, column: 16, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2117, file: !620, line: 1475, column: 14)
!2128 = !DILocation(line: 1476, column: 27, scope: !2127)
!2129 = !DILocation(line: 1476, column: 10, scope: !2127)
!2130 = !DILocation(line: 1481, column: 13, scope: !2070)
!2131 = !DILocation(line: 1481, column: 28, scope: !2070)
!2132 = !DILocation(line: 1481, column: 27, scope: !2070)
!2133 = !DILocation(line: 1481, column: 18, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2070, file: !620, discriminator: 1)
!2135 = !DILocation(line: 1480, column: 7, scope: !2070)
!2136 = !DILocation(line: 1489, column: 9, scope: !633)
!2137 = !DILocation(line: 1489, column: 4, scope: !633)
!2138 = !DILocation(line: 1490, column: 9, scope: !633)
!2139 = !DILocation(line: 1490, column: 4, scope: !633)
!2140 = !DILocation(line: 1491, column: 24, scope: !633)
!2141 = !DILocation(line: 1491, column: 4, scope: !633)
!2142 = !DILocation(line: 1492, column: 11, scope: !633)
!2143 = !DILocation(line: 1492, column: 4, scope: !633)
!2144 = !DILocation(line: 1493, column: 1, scope: !633)
!2145 = distinct !DISubprogram(name: "ProcMgrWaitForProcCompletion", scope: !620, file: !620, line: 1515, type: !2146, isLocal: true, isDefinition: true, scopeLine: 1518, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!755, !570, !1536, !564}
!2148 = !DILocalVariable(name: "pid", arg: 1, scope: !2145, file: !620, line: 1515, type: !570)
!2149 = !DILocation(line: 1515, column: 36, scope: !2145)
!2150 = !DILocalVariable(name: "validExitCode", arg: 2, scope: !2145, file: !620, line: 1516, type: !1536)
!2151 = !DILocation(line: 1516, column: 36, scope: !2145)
!2152 = !DILocalVariable(name: "exitCode", arg: 3, scope: !2145, file: !620, line: 1517, type: !564)
!2153 = !DILocation(line: 1517, column: 35, scope: !2145)
!2154 = !DILocalVariable(name: "retVal", scope: !2145, file: !620, line: 1519, type: !755)
!2155 = !DILocation(line: 1519, column: 9, scope: !2145)
!2156 = !DILocalVariable(name: "childStatus", scope: !2145, file: !620, line: 1520, type: !565)
!2157 = !DILocation(line: 1520, column: 8, scope: !2145)
!2158 = !DILocation(line: 1522, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2145, file: !620, line: 1522, column: 7)
!2160 = !DILocation(line: 1522, column: 12, scope: !2159)
!2161 = !DILocation(line: 1522, column: 7, scope: !2145)
!2162 = !DILocation(line: 1523, column: 8, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !620, line: 1522, column: 30)
!2164 = !DILocation(line: 1523, column: 22, scope: !2163)
!2165 = !DILocation(line: 1524, column: 4, scope: !2163)
!2166 = !DILocation(line: 1526, column: 4, scope: !2145)
!2167 = !DILocalVariable(name: "status", scope: !2168, file: !620, line: 1527, type: !570)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !620, line: 1526, column: 13)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !620, line: 1526, column: 4)
!2170 = distinct !DILexicalBlock(scope: !2145, file: !620, line: 1526, column: 4)
!2171 = !DILocation(line: 1527, column: 13, scope: !2168)
!2172 = !DILocation(line: 1529, column: 24, scope: !2168)
!2173 = !DILocation(line: 1529, column: 16, scope: !2168)
!2174 = !DILocation(line: 1529, column: 14, scope: !2168)
!2175 = !DILocation(line: 1530, column: 11, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !620, line: 1530, column: 11)
!2177 = !DILocation(line: 1530, column: 21, scope: !2176)
!2178 = !DILocation(line: 1530, column: 18, scope: !2176)
!2179 = !DILocation(line: 1530, column: 11, scope: !2168)
!2180 = !DILocation(line: 1532, column: 10, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !620, line: 1530, column: 26)
!2182 = !DILocation(line: 1535, column: 12, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2168, file: !620, line: 1535, column: 12)
!2184 = !DILocation(line: 1535, column: 19, scope: !2183)
!2185 = !DILocation(line: 1536, column: 11, scope: !2183)
!2186 = !DILocation(line: 1536, column: 15, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2183, file: !620, discriminator: 1)
!2188 = !DILocation(line: 1536, column: 14, scope: !2187)
!2189 = !DILocation(line: 1536, column: 19, scope: !2187)
!2190 = !DILocation(line: 1535, column: 12, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2168, file: !620, discriminator: 1)
!2192 = !DILocation(line: 1538, column: 10, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2183, file: !620, line: 1536, column: 29)
!2194 = distinct !{!2194, !2166}
!2195 = !DILocation(line: 1542, column: 26, scope: !2168)
!2196 = !DILocation(line: 1542, column: 41, scope: !2168)
!2197 = !DILocation(line: 1542, column: 40, scope: !2168)
!2198 = !DILocation(line: 1542, column: 31, scope: !2191)
!2199 = !DILocation(line: 1541, column: 7, scope: !2168)
!2200 = !DILocation(line: 1544, column: 7, scope: !2168)
!2201 = !DILocation(line: 1547, column: 16, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2145, file: !620, line: 1547, column: 8)
!2203 = !DILocation(line: 1547, column: 13, scope: !2202)
!2204 = !DILocation(line: 1547, column: 31, scope: !2202)
!2205 = !DILocation(line: 1547, column: 43, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2202, file: !620, discriminator: 1)
!2207 = !DILocation(line: 1547, column: 40, scope: !2206)
!2208 = !DILocation(line: 1547, column: 8, scope: !2206)
!2209 = !DILocation(line: 1548, column: 43, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !620, line: 1547, column: 54)
!2211 = !DILocation(line: 1548, column: 23, scope: !2210)
!2212 = !DILocation(line: 1548, column: 28, scope: !2210)
!2213 = !DILocation(line: 1548, column: 35, scope: !2210)
!2214 = !DILocation(line: 1548, column: 8, scope: !2210)
!2215 = !DILocation(line: 1548, column: 22, scope: !2210)
!2216 = !DILocation(line: 1549, column: 38, scope: !2210)
!2217 = !DILocation(line: 1549, column: 18, scope: !2210)
!2218 = !DILocation(line: 1549, column: 23, scope: !2210)
!2219 = !DILocation(line: 1549, column: 30, scope: !2210)
!2220 = !DILocation(line: 1549, column: 40, scope: !2210)
!2221 = !DILocation(line: 1549, column: 8, scope: !2210)
!2222 = !DILocation(line: 1549, column: 17, scope: !2210)
!2223 = !DILocation(line: 1550, column: 4, scope: !2210)
!2224 = !DILocation(line: 1552, column: 33, scope: !2145)
!2225 = !DILocation(line: 1552, column: 13, scope: !2145)
!2226 = !DILocation(line: 1552, column: 18, scope: !2145)
!2227 = !DILocation(line: 1552, column: 25, scope: !2145)
!2228 = !DILocation(line: 1552, column: 36, scope: !2145)
!2229 = !DILocation(line: 1552, column: 59, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2145, file: !620, discriminator: 1)
!2231 = !DILocation(line: 1552, column: 39, scope: !2230)
!2232 = !DILocation(line: 1552, column: 44, scope: !2230)
!2233 = !DILocation(line: 1552, column: 51, scope: !2230)
!2234 = !DILocation(line: 1552, column: 61, scope: !2230)
!2235 = !DILocation(line: 1552, column: 64, scope: !2230)
!2236 = !DILocation(line: 1552, column: 36, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2145, file: !620, discriminator: 2)
!2238 = !DILocation(line: 1552, column: 13, scope: !2237)
!2239 = !DILocation(line: 1552, column: 11, scope: !2237)
!2240 = !DILocation(line: 1554, column: 53, scope: !2145)
!2241 = !DILocation(line: 1555, column: 10, scope: !2145)
!2242 = !DILocation(line: 1554, column: 4, scope: !2145)
!2243 = !DILocation(line: 1557, column: 11, scope: !2145)
!2244 = !DILocation(line: 1557, column: 4, scope: !2145)
!2245 = !DILocation(line: 1558, column: 1, scope: !2145)
!2246 = distinct !DISubprogram(name: "ProcMgrKill", scope: !620, file: !620, line: 1814, type: !2247, isLocal: true, isDefinition: true, scopeLine: 1817, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!565, !570, !565, !565}
!2249 = !DILocalVariable(name: "pid", arg: 1, scope: !2246, file: !620, line: 1814, type: !570)
!2250 = !DILocation(line: 1814, column: 19, scope: !2246)
!2251 = !DILocalVariable(name: "sig", arg: 2, scope: !2246, file: !620, line: 1815, type: !565)
!2252 = !DILocation(line: 1815, column: 17, scope: !2246)
!2253 = !DILocalVariable(name: "timeout", arg: 3, scope: !2246, file: !620, line: 1816, type: !565)
!2254 = !DILocation(line: 1816, column: 17, scope: !2246)
!2255 = !DILocation(line: 1818, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2246, file: !620, line: 1818, column: 8)
!2257 = !DILocation(line: 1818, column: 18, scope: !2256)
!2258 = !DILocation(line: 1818, column: 8, scope: !2256)
!2259 = !DILocation(line: 1818, column: 23, scope: !2256)
!2260 = !DILocation(line: 1818, column: 8, scope: !2246)
!2261 = !DILocalVariable(name: "savedErrno", scope: !2262, file: !620, line: 1819, type: !565)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !620, line: 1818, column: 30)
!2263 = !DILocation(line: 1819, column: 11, scope: !2262)
!2264 = !DILocation(line: 1819, column: 25, scope: !2262)
!2265 = !DILocation(line: 1819, column: 24, scope: !2262)
!2266 = !DILocation(line: 1821, column: 15, scope: !2262)
!2267 = !DILocation(line: 1821, column: 20, scope: !2262)
!2268 = !DILocation(line: 1821, column: 26, scope: !2262)
!2269 = !DILocation(line: 1820, column: 7, scope: !2262)
!2270 = !DILocation(line: 1822, column: 14, scope: !2262)
!2271 = !DILocation(line: 1822, column: 8, scope: !2262)
!2272 = !DILocation(line: 1822, column: 12, scope: !2262)
!2273 = !DILocation(line: 1823, column: 7, scope: !2262)
!2274 = !DILocalVariable(name: "i", scope: !2275, file: !620, line: 1825, type: !565)
!2275 = distinct !DILexicalBlock(scope: !2256, file: !620, line: 1824, column: 11)
!2276 = !DILocation(line: 1825, column: 11, scope: !2275)
!2277 = !DILocation(line: 1828, column: 14, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !620, line: 1828, column: 7)
!2279 = !DILocation(line: 1828, column: 12, scope: !2278)
!2280 = !DILocation(line: 1828, column: 19, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2282, file: !620, discriminator: 1)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !620, line: 1828, column: 7)
!2283 = !DILocation(line: 1828, column: 27, scope: !2281)
!2284 = !DILocation(line: 1828, column: 33, scope: !2281)
!2285 = !DILocation(line: 1828, column: 36, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2282, file: !620, discriminator: 2)
!2287 = !DILocation(line: 1828, column: 40, scope: !2286)
!2288 = !DILocation(line: 1828, column: 48, scope: !2286)
!2289 = !DILocation(line: 1828, column: 38, scope: !2286)
!2290 = !DILocation(line: 1828, column: 33, scope: !2286)
!2291 = !DILocation(line: 1828, column: 7, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2278, file: !620, discriminator: 3)
!2293 = !DILocalVariable(name: "ret", scope: !2294, file: !620, line: 1829, type: !565)
!2294 = distinct !DILexicalBlock(scope: !2282, file: !620, line: 1828, column: 59)
!2295 = !DILocation(line: 1829, column: 14, scope: !2294)
!2296 = !DILocation(line: 1831, column: 24, scope: !2294)
!2297 = !DILocation(line: 1831, column: 16, scope: !2294)
!2298 = !DILocation(line: 1831, column: 14, scope: !2294)
!2299 = !DILocation(line: 1833, column: 14, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2294, file: !620, line: 1833, column: 14)
!2301 = !DILocation(line: 1833, column: 18, scope: !2300)
!2302 = !DILocation(line: 1833, column: 14, scope: !2294)
!2303 = !DILocation(line: 1843, column: 28, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !620, line: 1843, column: 16)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !620, line: 1833, column: 25)
!2306 = !DILocation(line: 1843, column: 27, scope: !2304)
!2307 = !DILocation(line: 1843, column: 23, scope: !2304)
!2308 = !DILocation(line: 1843, column: 16, scope: !2305)
!2309 = !DILocation(line: 1844, column: 45, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !620, line: 1844, column: 20)
!2311 = distinct !DILexicalBlock(scope: !2304, file: !620, line: 1843, column: 33)
!2312 = !DILocation(line: 1844, column: 20, scope: !2310)
!2313 = !DILocation(line: 1844, column: 20, scope: !2311)
!2314 = !DILocation(line: 1846, column: 25, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !620, line: 1844, column: 51)
!2316 = !DILocation(line: 1845, column: 19, scope: !2315)
!2317 = !DILocation(line: 1847, column: 19, scope: !2315)
!2318 = !DILocation(line: 1848, column: 19, scope: !2315)
!2319 = !DILocation(line: 1850, column: 16, scope: !2311)
!2320 = !DILocation(line: 1853, column: 21, scope: !2305)
!2321 = !DILocation(line: 1853, column: 27, scope: !2305)
!2322 = !DILocation(line: 1852, column: 13, scope: !2305)
!2323 = !DILocation(line: 1854, column: 10, scope: !2305)
!2324 = !DILocation(line: 1854, column: 21, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2326, file: !620, discriminator: 1)
!2326 = distinct !DILexicalBlock(scope: !2300, file: !620, line: 1854, column: 21)
!2327 = !DILocation(line: 1854, column: 25, scope: !2325)
!2328 = !DILocation(line: 1855, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !620, line: 1854, column: 31)
!2330 = !DILocation(line: 1856, column: 10, scope: !2329)
!2331 = !DILocation(line: 1858, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2326, file: !620, line: 1856, column: 17)
!2333 = !DILocation(line: 1858, column: 24, scope: !2332)
!2334 = !DILocation(line: 1858, column: 29, scope: !2332)
!2335 = !DILocation(line: 1857, column: 13, scope: !2332)
!2336 = !DILocation(line: 1859, column: 13, scope: !2332)
!2337 = !DILocation(line: 1861, column: 7, scope: !2294)
!2338 = !DILocation(line: 1828, column: 55, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2282, file: !620, discriminator: 4)
!2340 = !DILocation(line: 1828, column: 7, scope: !2339)
!2341 = distinct !{!2341, !2342}
!2342 = !DILocation(line: 1828, column: 7, scope: !2275)
!2343 = !DILocation(line: 1868, column: 26, scope: !2246)
!2344 = !DILocation(line: 1868, column: 31, scope: !2246)
!2345 = !DILocation(line: 1867, column: 4, scope: !2246)
!2346 = !DILocation(line: 1869, column: 4, scope: !2246)
!2347 = !DILocation(line: 1870, column: 1, scope: !2246)
!2348 = distinct !DISubprogram(name: "ProcMgr_KillByPid", scope: !620, file: !620, line: 1893, type: !2349, isLocal: false, isDefinition: true, scopeLine: 1894, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!755, !605}
!2351 = !DILocalVariable(name: "procId", arg: 1, scope: !2348, file: !620, line: 1893, type: !605)
!2352 = !DILocation(line: 1893, column: 31, scope: !2348)
!2353 = !DILocalVariable(name: "ret", scope: !2348, file: !620, line: 1895, type: !565)
!2354 = !DILocation(line: 1895, column: 8, scope: !2348)
!2355 = !DILocation(line: 1897, column: 22, scope: !2348)
!2356 = !DILocation(line: 1897, column: 10, scope: !2348)
!2357 = !DILocation(line: 1897, column: 8, scope: !2348)
!2358 = !DILocation(line: 1898, column: 8, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2348, file: !620, line: 1898, column: 8)
!2360 = !DILocation(line: 1898, column: 12, scope: !2359)
!2361 = !DILocation(line: 1898, column: 8, scope: !2348)
!2362 = !DILocation(line: 1905, column: 25, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !620, line: 1898, column: 18)
!2364 = !DILocation(line: 1905, column: 13, scope: !2363)
!2365 = !DILocation(line: 1905, column: 11, scope: !2363)
!2366 = !DILocation(line: 1906, column: 11, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !620, line: 1906, column: 11)
!2368 = !DILocation(line: 1906, column: 15, scope: !2367)
!2369 = !DILocation(line: 1906, column: 11, scope: !2363)
!2370 = !DILocation(line: 1911, column: 11, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !620, line: 1906, column: 22)
!2372 = !DILocation(line: 1911, column: 15, scope: !2371)
!2373 = !DILocation(line: 1912, column: 7, scope: !2371)
!2374 = !DILocation(line: 1913, column: 4, scope: !2363)
!2375 = !DILocation(line: 1915, column: 12, scope: !2348)
!2376 = !DILocation(line: 1915, column: 16, scope: !2348)
!2377 = !DILocation(line: 1915, column: 11, scope: !2348)
!2378 = !DILocation(line: 1915, column: 4, scope: !2348)
!2379 = distinct !DISubprogram(name: "ProcMgr_Kill", scope: !620, file: !620, line: 1937, type: !2380, isLocal: false, isDefinition: true, scopeLine: 1938, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !1623}
!2382 = !DILocalVariable(name: "asyncProc", arg: 1, scope: !2379, file: !620, line: 1937, type: !1623)
!2383 = !DILocation(line: 1937, column: 33, scope: !2379)
!2384 = !DILocation(line: 1939, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2379, file: !620, line: 1939, column: 8)
!2386 = !DILocation(line: 1939, column: 19, scope: !2385)
!2387 = !DILocation(line: 1939, column: 27, scope: !2385)
!2388 = !DILocation(line: 1939, column: 31, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2385, file: !620, discriminator: 1)
!2390 = !DILocation(line: 1939, column: 42, scope: !2389)
!2391 = !DILocation(line: 1939, column: 52, scope: !2389)
!2392 = !DILocation(line: 1939, column: 8, scope: !2389)
!2393 = !DILocation(line: 1941, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2385, file: !620, line: 1939, column: 60)
!2395 = !DILocation(line: 1944, column: 22, scope: !2379)
!2396 = !DILocation(line: 1944, column: 33, scope: !2379)
!2397 = !DILocation(line: 1944, column: 4, scope: !2379)
!2398 = !DILocation(line: 1945, column: 4, scope: !2379)
!2399 = !DILocation(line: 1945, column: 15, scope: !2379)
!2400 = !DILocation(line: 1945, column: 25, scope: !2379)
!2401 = !DILocation(line: 1946, column: 1, scope: !2379)
!2402 = !DILocation(line: 1946, column: 1, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2379, file: !620, discriminator: 1)
!2404 = distinct !DISubprogram(name: "ProcMgr_IsAsyncProcRunning", scope: !620, file: !620, line: 1966, type: !2405, isLocal: false, isDefinition: true, scopeLine: 1967, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!755, !1623}
!2407 = !DILocalVariable(name: "asyncProc", arg: 1, scope: !2404, file: !620, line: 1966, type: !1623)
!2408 = !DILocation(line: 1966, column: 47, scope: !2404)
!2409 = !DILocalVariable(name: "maxFd", scope: !2404, file: !620, line: 1968, type: !565)
!2410 = !DILocation(line: 1968, column: 8, scope: !2404)
!2411 = !DILocalVariable(name: "readFds", scope: !2404, file: !620, line: 1969, type: !2412)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "fd_set", file: !579, line: 75, baseType: !2413)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !579, line: 64, size: 1024, align: 64, elements: !2414)
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "fds_bits", scope: !2413, file: !579, line: 69, baseType: !2416, size: 1024, align: 64)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 1024, align: 64, elements: !1792)
!2417 = !DILocation(line: 1969, column: 11, scope: !2404)
!2418 = !DILocalVariable(name: "tv", scope: !2404, file: !620, line: 1970, type: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !2420, line: 30, size: 128, align: 64, elements: !2421)
!2420 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2419, file: !2420, line: 32, baseType: !558, size: 64, align: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !2419, file: !2420, line: 33, baseType: !2424, size: 64, align: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !559, line: 141, baseType: !560)
!2425 = !DILocation(line: 1970, column: 19, scope: !2404)
!2426 = !DILocalVariable(name: "status", scope: !2404, file: !620, line: 1971, type: !565)
!2427 = !DILocation(line: 1971, column: 8, scope: !2404)
!2428 = !DILocalVariable(name: "fd", scope: !2404, file: !620, line: 1972, type: !2429)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "Selectable", file: !601, line: 133, baseType: !565)
!2430 = !DILocation(line: 1972, column: 15, scope: !2404)
!2431 = !DILocation(line: 1982, column: 40, scope: !2404)
!2432 = !DILocation(line: 1982, column: 9, scope: !2404)
!2433 = !DILocation(line: 1982, column: 7, scope: !2404)
!2434 = !DILocation(line: 1983, column: 3, scope: !2404)
!2435 = distinct !{!2435, !2434}
!2436 = !DILocalVariable(name: "__d0", scope: !2437, file: !620, line: 1983, type: !565)
!2437 = distinct !DILexicalBlock(scope: !2404, file: !620, line: 1983, column: 6)
!2438 = !DILocation(line: 1983, column: 12, scope: !2437)
!2439 = !DILocalVariable(name: "__d1", scope: !2437, file: !620, line: 1983, type: !565)
!2440 = !DILocation(line: 1983, column: 18, scope: !2437)
!2441 = !DILocation(line: 1983, column: 6, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2437, file: !620, discriminator: 1)
!2443 = !DILocation(line: 1983, column: 155, scope: !2442)
!2444 = !DILocation(line: 1983, column: 24, scope: !2442)
!2445 = !{i32 295128}
!2446 = !DILocation(line: 1983, column: 33, scope: !2442)
!2447 = !DILocation(line: 1984, column: 3, scope: !2404)
!2448 = !DILocation(line: 1984, column: 5, scope: !2404)
!2449 = !DILocation(line: 1984, column: 61, scope: !2404)
!2450 = !DILocation(line: 1984, column: 12, scope: !2404)
!2451 = !DILocation(line: 1984, column: 6, scope: !2404)
!2452 = !DILocation(line: 1984, column: 40, scope: !2404)
!2453 = !DILocation(line: 1985, column: 12, scope: !2404)
!2454 = !DILocation(line: 1985, column: 10, scope: !2404)
!2455 = !DILocation(line: 1987, column: 7, scope: !2404)
!2456 = !DILocation(line: 1987, column: 14, scope: !2404)
!2457 = !DILocation(line: 1988, column: 7, scope: !2404)
!2458 = !DILocation(line: 1988, column: 15, scope: !2404)
!2459 = !DILocation(line: 1990, column: 20, scope: !2404)
!2460 = !DILocation(line: 1990, column: 26, scope: !2404)
!2461 = !DILocation(line: 1990, column: 13, scope: !2404)
!2462 = !DILocation(line: 1990, column: 11, scope: !2404)
!2463 = !DILocation(line: 1991, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2404, file: !620, line: 1991, column: 8)
!2465 = !DILocation(line: 1991, column: 15, scope: !2464)
!2466 = !DILocation(line: 1991, column: 8, scope: !2404)
!2467 = !DILocation(line: 1992, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !620, line: 1991, column: 22)
!2469 = !DILocation(line: 1993, column: 15, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !620, line: 1993, column: 15)
!2471 = !DILocation(line: 1993, column: 22, scope: !2470)
!2472 = !DILocation(line: 1993, column: 15, scope: !2464)
!2473 = !DILocation(line: 1994, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !620, line: 1993, column: 27)
!2475 = !DILocation(line: 1996, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2470, file: !620, line: 1995, column: 11)
!2477 = !DILocation(line: 1998, column: 1, scope: !2404)
!2478 = distinct !DISubprogram(name: "ProcMgr_GetAsyncProcSelectable", scope: !620, file: !620, line: 2018, type: !2479, isLocal: false, isDefinition: true, scopeLine: 2019, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2429, !1623}
!2481 = !DILocalVariable(name: "asyncProc", arg: 1, scope: !2478, file: !620, line: 2018, type: !1623)
!2482 = !DILocation(line: 2018, column: 51, scope: !2478)
!2483 = !DILocation(line: 2022, column: 11, scope: !2478)
!2484 = !DILocation(line: 2022, column: 22, scope: !2478)
!2485 = !DILocation(line: 2022, column: 4, scope: !2478)
!2486 = distinct !DISubprogram(name: "ProcMgr_GetPid", scope: !620, file: !620, line: 2043, type: !2487, isLocal: false, isDefinition: true, scopeLine: 2044, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!605, !1623}
!2489 = !DILocalVariable(name: "asyncProc", arg: 1, scope: !2486, file: !620, line: 2043, type: !1623)
!2490 = !DILocation(line: 2043, column: 35, scope: !2486)
!2491 = !DILocation(line: 2047, column: 11, scope: !2486)
!2492 = !DILocation(line: 2047, column: 22, scope: !2486)
!2493 = !DILocation(line: 2047, column: 4, scope: !2486)
!2494 = distinct !DISubprogram(name: "ProcMgr_GetExitCode", scope: !620, file: !620, line: 2069, type: !2495, isLocal: false, isDefinition: true, scopeLine: 2071, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!565, !1623, !564}
!2497 = !DILocalVariable(name: "asyncProc", arg: 1, scope: !2494, file: !620, line: 2069, type: !1623)
!2498 = !DILocation(line: 2069, column: 40, scope: !2494)
!2499 = !DILocalVariable(name: "exitCode", arg: 2, scope: !2494, file: !620, line: 2070, type: !564)
!2500 = !DILocation(line: 2070, column: 26, scope: !2494)
!2501 = !DILocation(line: 2075, column: 5, scope: !2494)
!2502 = !DILocation(line: 2075, column: 14, scope: !2494)
!2503 = !DILocation(line: 2077, column: 8, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2494, file: !620, line: 2077, column: 8)
!2505 = !DILocation(line: 2077, column: 19, scope: !2504)
!2506 = !DILocation(line: 2077, column: 29, scope: !2504)
!2507 = !DILocation(line: 2077, column: 8, scope: !2494)
!2508 = !DILocalVariable(name: "status", scope: !2509, file: !620, line: 2078, type: !755)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !620, line: 2077, column: 36)
!2510 = !DILocation(line: 2078, column: 12, scope: !2509)
!2511 = !DILocation(line: 2080, column: 16, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !620, line: 2080, column: 11)
!2513 = !DILocation(line: 2080, column: 27, scope: !2512)
!2514 = !DILocation(line: 2080, column: 11, scope: !2512)
!2515 = !DILocation(line: 2080, column: 55, scope: !2512)
!2516 = !DILocation(line: 2080, column: 11, scope: !2509)
!2517 = !DILocation(line: 2081, column: 10, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !620, line: 2080, column: 73)
!2519 = !DILocation(line: 2082, column: 10, scope: !2518)
!2520 = !DILocation(line: 2085, column: 16, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2509, file: !620, line: 2085, column: 11)
!2522 = !DILocation(line: 2085, column: 27, scope: !2521)
!2523 = !DILocation(line: 2085, column: 32, scope: !2521)
!2524 = !DILocation(line: 2085, column: 43, scope: !2521)
!2525 = !DILocation(line: 2085, column: 31, scope: !2521)
!2526 = !DILocation(line: 2085, column: 11, scope: !2521)
!2527 = !DILocation(line: 2086, column: 44, scope: !2521)
!2528 = !DILocation(line: 2085, column: 11, scope: !2509)
!2529 = !DILocation(line: 2087, column: 10, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2521, file: !620, line: 2086, column: 75)
!2531 = !DILocation(line: 2088, column: 10, scope: !2530)
!2532 = !DILocation(line: 2091, column: 7, scope: !2509)
!2533 = !DILocation(line: 2091, column: 18, scope: !2509)
!2534 = !DILocation(line: 2091, column: 32, scope: !2509)
!2535 = !DILocation(line: 2094, column: 13, scope: !2509)
!2536 = !DILocation(line: 2094, column: 24, scope: !2509)
!2537 = !DILocation(line: 2094, column: 28, scope: !2509)
!2538 = !DILocation(line: 2094, column: 39, scope: !2509)
!2539 = !DILocation(line: 2093, column: 7, scope: !2509)
!2540 = !DILocation(line: 2095, column: 4, scope: !2509)
!2541 = !DILocation(line: 2097, column: 16, scope: !2494)
!2542 = !DILocation(line: 2097, column: 27, scope: !2494)
!2543 = !DILocation(line: 2097, column: 5, scope: !2494)
!2544 = !DILocation(line: 2097, column: 14, scope: !2494)
!2545 = !DILocation(line: 2097, column: 4, scope: !2494)
!2546 = !DILocation(line: 2100, column: 8, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2494, file: !620, line: 2100, column: 8)
!2548 = !DILocation(line: 2100, column: 19, scope: !2547)
!2549 = !DILocation(line: 2100, column: 29, scope: !2547)
!2550 = !DILocation(line: 2100, column: 8, scope: !2494)
!2551 = !DILocation(line: 2101, column: 57, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !620, line: 2100, column: 36)
!2553 = !DILocation(line: 2101, column: 68, scope: !2552)
!2554 = !DILocation(line: 2101, column: 7, scope: !2552)
!2555 = !DILocation(line: 2102, column: 15, scope: !2552)
!2556 = !DILocation(line: 2102, column: 26, scope: !2552)
!2557 = !DILocation(line: 2102, column: 7, scope: !2552)
!2558 = !DILocation(line: 2103, column: 7, scope: !2552)
!2559 = !DILocation(line: 2103, column: 18, scope: !2552)
!2560 = !DILocation(line: 2103, column: 28, scope: !2552)
!2561 = !DILocation(line: 2104, column: 4, scope: !2552)
!2562 = !DILocation(line: 2105, column: 12, scope: !2494)
!2563 = !DILocation(line: 2105, column: 23, scope: !2494)
!2564 = !DILocation(line: 2105, column: 32, scope: !2494)
!2565 = !DILocation(line: 2105, column: 11, scope: !2494)
!2566 = !DILocation(line: 2105, column: 4, scope: !2494)
!2567 = distinct !DISubprogram(name: "ProcMgr_Free", scope: !620, file: !620, line: 2132, type: !2380, isLocal: false, isDefinition: true, scopeLine: 2133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2568 = !DILocalVariable(name: "asyncProc", arg: 1, scope: !2567, file: !620, line: 2132, type: !1623)
!2569 = !DILocation(line: 2132, column: 33, scope: !2567)
!2570 = !DILocation(line: 2148, column: 8, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !620, line: 2148, column: 8)
!2572 = !DILocation(line: 2148, column: 18, scope: !2571)
!2573 = !DILocation(line: 2148, column: 25, scope: !2571)
!2574 = !DILocation(line: 2148, column: 28, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2571, file: !620, discriminator: 1)
!2576 = !DILocation(line: 2148, column: 39, scope: !2575)
!2577 = !DILocation(line: 2148, column: 42, scope: !2575)
!2578 = !DILocation(line: 2148, column: 8, scope: !2575)
!2579 = !DILocation(line: 2149, column: 13, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2571, file: !620, line: 2148, column: 49)
!2581 = !DILocation(line: 2149, column: 24, scope: !2580)
!2582 = !DILocation(line: 2149, column: 7, scope: !2580)
!2583 = !DILocation(line: 2150, column: 4, scope: !2580)
!2584 = !DILocation(line: 2152, column: 9, scope: !2567)
!2585 = !DILocation(line: 2152, column: 4, scope: !2567)
!2586 = !DILocation(line: 2153, column: 1, scope: !2567)
!2587 = distinct !DISubprogram(name: "ProcMgr_ImpersonateUserStart", scope: !620, file: !620, line: 2190, type: !2588, isLocal: false, isDefinition: true, scopeLine: 2192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!755, !636, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "AuthToken", file: !2591, line: 42, baseType: !2592)
!2591 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/auth.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64, align: 64)
!2593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!2594 = !DILocalVariable(name: "user", arg: 1, scope: !2587, file: !620, line: 2190, type: !636)
!2595 = !DILocation(line: 2190, column: 42, scope: !2587)
!2596 = !DILocalVariable(name: "token", arg: 2, scope: !2587, file: !620, line: 2191, type: !2590)
!2597 = !DILocation(line: 2191, column: 40, scope: !2587)
!2598 = !DILocalVariable(name: "buffer", scope: !2587, file: !620, line: 2193, type: !2599)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 65536, align: 8, elements: !2600)
!2600 = !{!2601}
!2601 = !DISubrange(count: 8192)
!2602 = !DILocation(line: 2193, column: 9, scope: !2587)
!2603 = !DILocalVariable(name: "pw", scope: !2587, file: !620, line: 2194, type: !960)
!2604 = !DILocation(line: 2194, column: 18, scope: !2587)
!2605 = !DILocalVariable(name: "ppw", scope: !2587, file: !620, line: 2195, type: !959)
!2606 = !DILocation(line: 2195, column: 19, scope: !2587)
!2607 = !DILocalVariable(name: "root_gid", scope: !2587, file: !620, line: 2196, type: !2608)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !571, line: 235, baseType: !924)
!2609 = !DILocation(line: 2196, column: 10, scope: !2587)
!2610 = !DILocalVariable(name: "error", scope: !2587, file: !620, line: 2197, type: !565)
!2611 = !DILocation(line: 2197, column: 8, scope: !2587)
!2612 = !DILocalVariable(name: "ret", scope: !2587, file: !620, line: 2198, type: !565)
!2613 = !DILocation(line: 2198, column: 8, scope: !2587)
!2614 = !DILocalVariable(name: "userLocal", scope: !2587, file: !620, line: 2199, type: !562)
!2615 = !DILocation(line: 2199, column: 10, scope: !2587)
!2616 = !DILocation(line: 2201, column: 36, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2587, file: !620, line: 2201, column: 8)
!2618 = !DILocation(line: 2201, column: 17, scope: !2617)
!2619 = !DILocation(line: 2201, column: 15, scope: !2617)
!2620 = !DILocation(line: 2201, column: 66, scope: !2617)
!2621 = !DILocation(line: 2201, column: 71, scope: !2617)
!2622 = !DILocation(line: 2202, column: 9, scope: !2617)
!2623 = !DILocation(line: 2201, column: 8, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2587, file: !620, discriminator: 1)
!2625 = !DILocation(line: 2208, column: 11, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !620, line: 2208, column: 11)
!2627 = distinct !DILexicalBlock(scope: !2617, file: !620, line: 2202, column: 14)
!2628 = !DILocation(line: 2208, column: 17, scope: !2626)
!2629 = !DILocation(line: 2208, column: 11, scope: !2627)
!2630 = !DILocation(line: 2209, column: 16, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !620, line: 2208, column: 23)
!2632 = !DILocation(line: 2210, column: 7, scope: !2631)
!2633 = !DILocation(line: 2211, column: 7, scope: !2627)
!2634 = !DILocation(line: 2214, column: 15, scope: !2587)
!2635 = !DILocation(line: 2214, column: 20, scope: !2587)
!2636 = !DILocation(line: 2214, column: 13, scope: !2587)
!2637 = !DILocation(line: 2217, column: 46, scope: !2587)
!2638 = !DILocation(line: 2217, column: 52, scope: !2587)
!2639 = !DILocation(line: 2217, column: 24, scope: !2624)
!2640 = !DILocation(line: 2217, column: 14, scope: !2587)
!2641 = !DILocation(line: 2218, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2587, file: !620, line: 2218, column: 8)
!2643 = !DILocation(line: 2218, column: 8, scope: !2587)
!2644 = !DILocation(line: 2219, column: 76, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !620, line: 2218, column: 20)
!2646 = !DILocation(line: 2219, column: 8, scope: !2645)
!2647 = !DILocation(line: 2220, column: 8, scope: !2645)
!2648 = !DILocation(line: 2223, column: 23, scope: !2587)
!2649 = !DILocation(line: 2223, column: 39, scope: !2587)
!2650 = !DILocation(line: 2223, column: 12, scope: !2587)
!2651 = !DILocation(line: 2223, column: 10, scope: !2587)
!2652 = !DILocation(line: 2225, column: 9, scope: !2587)
!2653 = !DILocation(line: 2225, column: 4, scope: !2587)
!2654 = !DILocation(line: 2227, column: 8, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2587, file: !620, line: 2227, column: 8)
!2656 = !DILocation(line: 2227, column: 14, scope: !2655)
!2657 = !DILocation(line: 2227, column: 19, scope: !2655)
!2658 = !DILocation(line: 2227, column: 23, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2655, file: !620, discriminator: 1)
!2660 = !DILocation(line: 2227, column: 8, scope: !2659)
!2661 = !DILocation(line: 2228, column: 11, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !620, line: 2228, column: 11)
!2663 = distinct !DILexicalBlock(scope: !2655, file: !620, line: 2227, column: 28)
!2664 = !DILocation(line: 2228, column: 17, scope: !2662)
!2665 = !DILocation(line: 2228, column: 11, scope: !2663)
!2666 = !DILocation(line: 2229, column: 16, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !620, line: 2228, column: 23)
!2668 = !DILocation(line: 2230, column: 7, scope: !2667)
!2669 = !DILocation(line: 2231, column: 7, scope: !2663)
!2670 = !DILocation(line: 2240, column: 20, scope: !2587)
!2671 = !DILocation(line: 2240, column: 25, scope: !2587)
!2672 = !DILocation(line: 2240, column: 33, scope: !2587)
!2673 = !DILocation(line: 2240, column: 38, scope: !2587)
!2674 = !DILocation(line: 2240, column: 46, scope: !2587)
!2675 = !DILocation(line: 2240, column: 10, scope: !2587)
!2676 = !DILocation(line: 2240, column: 8, scope: !2587)
!2677 = !DILocation(line: 2242, column: 8, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2587, file: !620, line: 2242, column: 8)
!2679 = !DILocation(line: 2242, column: 12, scope: !2678)
!2680 = !DILocation(line: 2242, column: 8, scope: !2587)
!2681 = !DILocation(line: 2243, column: 50, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !620, line: 2242, column: 17)
!2683 = !DILocation(line: 2243, column: 7, scope: !2682)
!2684 = !DILocation(line: 2244, column: 7, scope: !2682)
!2685 = !DILocation(line: 2247, column: 21, scope: !2587)
!2686 = !DILocation(line: 2247, column: 26, scope: !2587)
!2687 = !DILocation(line: 2247, column: 35, scope: !2587)
!2688 = !DILocation(line: 2247, column: 40, scope: !2587)
!2689 = !DILocation(line: 2247, column: 10, scope: !2587)
!2690 = !DILocation(line: 2247, column: 8, scope: !2587)
!2691 = !DILocation(line: 2248, column: 8, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2587, file: !620, line: 2248, column: 8)
!2693 = !DILocation(line: 2248, column: 12, scope: !2692)
!2694 = !DILocation(line: 2248, column: 8, scope: !2587)
!2695 = !DILocation(line: 2249, column: 55, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !620, line: 2248, column: 17)
!2697 = !DILocation(line: 2249, column: 7, scope: !2696)
!2698 = !DILocation(line: 2250, column: 1, scope: !2696)
!2699 = !DILocation(line: 2251, column: 7, scope: !2696)
!2700 = !DILocation(line: 2260, column: 20, scope: !2587)
!2701 = !DILocation(line: 2260, column: 25, scope: !2587)
!2702 = !DILocation(line: 2260, column: 33, scope: !2587)
!2703 = !DILocation(line: 2260, column: 38, scope: !2587)
!2704 = !DILocation(line: 2260, column: 10, scope: !2587)
!2705 = !DILocation(line: 2260, column: 8, scope: !2587)
!2706 = !DILocation(line: 2262, column: 8, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2587, file: !620, line: 2262, column: 8)
!2708 = !DILocation(line: 2262, column: 12, scope: !2707)
!2709 = !DILocation(line: 2262, column: 8, scope: !2587)
!2710 = !DILocation(line: 2263, column: 50, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2707, file: !620, line: 2262, column: 17)
!2712 = !DILocation(line: 2263, column: 7, scope: !2711)
!2713 = !DILocation(line: 2264, column: 1, scope: !2711)
!2714 = !DILocation(line: 2265, column: 7, scope: !2711)
!2715 = !DILocation(line: 2269, column: 19, scope: !2587)
!2716 = !DILocation(line: 2269, column: 24, scope: !2587)
!2717 = !DILocation(line: 2269, column: 4, scope: !2587)
!2718 = !DILocation(line: 2270, column: 19, scope: !2587)
!2719 = !DILocation(line: 2270, column: 24, scope: !2587)
!2720 = !DILocation(line: 2270, column: 4, scope: !2587)
!2721 = !DILocation(line: 2271, column: 20, scope: !2587)
!2722 = !DILocation(line: 2271, column: 25, scope: !2587)
!2723 = !DILocation(line: 2271, column: 4, scope: !2587)
!2724 = !DILocation(line: 2273, column: 4, scope: !2587)
!2725 = !DILocation(line: 2277, column: 4, scope: !2587)
!2726 = !DILocation(line: 2279, column: 4, scope: !2587)
!2727 = !DILocation(line: 2280, column: 1, scope: !2587)
!2728 = distinct !DISubprogram(name: "ProcMgr_ImpersonateUserStop", scope: !620, file: !620, line: 2299, type: !2729, isLocal: false, isDefinition: true, scopeLine: 2300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!755}
!2731 = !DILocalVariable(name: "buffer", scope: !2728, file: !620, line: 2301, type: !2599)
!2732 = !DILocation(line: 2301, column: 9, scope: !2728)
!2733 = !DILocalVariable(name: "pw", scope: !2728, file: !620, line: 2302, type: !960)
!2734 = !DILocation(line: 2302, column: 18, scope: !2728)
!2735 = !DILocalVariable(name: "ppw", scope: !2728, file: !620, line: 2303, type: !959)
!2736 = !DILocation(line: 2303, column: 19, scope: !2728)
!2737 = !DILocalVariable(name: "error", scope: !2728, file: !620, line: 2304, type: !565)
!2738 = !DILocation(line: 2304, column: 8, scope: !2728)
!2739 = !DILocalVariable(name: "ret", scope: !2728, file: !620, line: 2305, type: !565)
!2740 = !DILocation(line: 2305, column: 8, scope: !2728)
!2741 = !DILocation(line: 2307, column: 36, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2728, file: !620, line: 2307, column: 8)
!2743 = !DILocation(line: 2307, column: 17, scope: !2742)
!2744 = !DILocation(line: 2307, column: 15, scope: !2742)
!2745 = !DILocation(line: 2307, column: 66, scope: !2742)
!2746 = !DILocation(line: 2307, column: 71, scope: !2742)
!2747 = !DILocation(line: 2308, column: 9, scope: !2742)
!2748 = !DILocation(line: 2307, column: 8, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2728, file: !620, discriminator: 1)
!2750 = !DILocation(line: 2309, column: 11, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !620, line: 2309, column: 11)
!2752 = distinct !DILexicalBlock(scope: !2742, file: !620, line: 2308, column: 14)
!2753 = !DILocation(line: 2309, column: 17, scope: !2751)
!2754 = !DILocation(line: 2309, column: 11, scope: !2752)
!2755 = !DILocation(line: 2310, column: 16, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !620, line: 2309, column: 23)
!2757 = !DILocation(line: 2311, column: 7, scope: !2756)
!2758 = !DILocation(line: 2312, column: 7, scope: !2752)
!2759 = !DILocation(line: 2321, column: 20, scope: !2728)
!2760 = !DILocation(line: 2321, column: 25, scope: !2728)
!2761 = !DILocation(line: 2321, column: 33, scope: !2728)
!2762 = !DILocation(line: 2321, column: 38, scope: !2728)
!2763 = !DILocation(line: 2321, column: 10, scope: !2728)
!2764 = !DILocation(line: 2321, column: 8, scope: !2728)
!2765 = !DILocation(line: 2323, column: 8, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2728, file: !620, line: 2323, column: 8)
!2767 = !DILocation(line: 2323, column: 12, scope: !2766)
!2768 = !DILocation(line: 2323, column: 8, scope: !2728)
!2769 = !DILocation(line: 2324, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !620, line: 2323, column: 17)
!2771 = !DILocation(line: 2325, column: 7, scope: !2770)
!2772 = !DILocation(line: 2334, column: 20, scope: !2728)
!2773 = !DILocation(line: 2334, column: 25, scope: !2728)
!2774 = !DILocation(line: 2334, column: 33, scope: !2728)
!2775 = !DILocation(line: 2334, column: 38, scope: !2728)
!2776 = !DILocation(line: 2334, column: 46, scope: !2728)
!2777 = !DILocation(line: 2334, column: 51, scope: !2728)
!2778 = !DILocation(line: 2334, column: 10, scope: !2728)
!2779 = !DILocation(line: 2334, column: 8, scope: !2728)
!2780 = !DILocation(line: 2336, column: 8, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2728, file: !620, line: 2336, column: 8)
!2782 = !DILocation(line: 2336, column: 12, scope: !2781)
!2783 = !DILocation(line: 2336, column: 8, scope: !2728)
!2784 = !DILocation(line: 2337, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !620, line: 2336, column: 17)
!2786 = !DILocation(line: 2338, column: 7, scope: !2785)
!2787 = !DILocation(line: 2341, column: 21, scope: !2728)
!2788 = !DILocation(line: 2341, column: 26, scope: !2728)
!2789 = !DILocation(line: 2341, column: 35, scope: !2728)
!2790 = !DILocation(line: 2341, column: 40, scope: !2728)
!2791 = !DILocation(line: 2341, column: 10, scope: !2728)
!2792 = !DILocation(line: 2341, column: 8, scope: !2728)
!2793 = !DILocation(line: 2342, column: 8, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2728, file: !620, line: 2342, column: 8)
!2795 = !DILocation(line: 2342, column: 12, scope: !2794)
!2796 = !DILocation(line: 2342, column: 8, scope: !2728)
!2797 = !DILocation(line: 2343, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !620, line: 2342, column: 17)
!2799 = !DILocation(line: 2344, column: 7, scope: !2798)
!2800 = !DILocation(line: 2349, column: 19, scope: !2728)
!2801 = !DILocation(line: 2349, column: 24, scope: !2728)
!2802 = !DILocation(line: 2349, column: 4, scope: !2728)
!2803 = !DILocation(line: 2350, column: 19, scope: !2728)
!2804 = !DILocation(line: 2350, column: 24, scope: !2728)
!2805 = !DILocation(line: 2350, column: 4, scope: !2728)
!2806 = !DILocation(line: 2351, column: 20, scope: !2728)
!2807 = !DILocation(line: 2351, column: 25, scope: !2728)
!2808 = !DILocation(line: 2351, column: 4, scope: !2728)
!2809 = !DILocation(line: 2353, column: 4, scope: !2728)
!2810 = !DILocation(line: 2354, column: 1, scope: !2728)
!2811 = distinct !DISubprogram(name: "ProcMgr_GetImpersonatedUserInfo", scope: !620, file: !620, line: 2417, type: !2812, isLocal: false, isDefinition: true, scopeLine: 2419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!755, !653, !653}
!2814 = !DILocalVariable(name: "userName", arg: 1, scope: !2811, file: !620, line: 2417, type: !653)
!2815 = !DILocation(line: 2417, column: 40, scope: !2811)
!2816 = !DILocalVariable(name: "homeDir", arg: 2, scope: !2811, file: !620, line: 2418, type: !653)
!2817 = !DILocation(line: 2418, column: 40, scope: !2811)
!2818 = !DILocalVariable(name: "uid", scope: !2811, file: !620, line: 2420, type: !2819)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !571, line: 240, baseType: !922)
!2820 = !DILocation(line: 2420, column: 10, scope: !2811)
!2821 = !DILocation(line: 2420, column: 16, scope: !2811)
!2822 = !DILocalVariable(name: "buffer", scope: !2811, file: !620, line: 2421, type: !2599)
!2823 = !DILocation(line: 2421, column: 9, scope: !2811)
!2824 = !DILocalVariable(name: "pw", scope: !2811, file: !620, line: 2422, type: !960)
!2825 = !DILocation(line: 2422, column: 18, scope: !2811)
!2826 = !DILocalVariable(name: "ppw", scope: !2811, file: !620, line: 2423, type: !959)
!2827 = !DILocation(line: 2423, column: 19, scope: !2811)
!2828 = !DILocalVariable(name: "error", scope: !2811, file: !620, line: 2424, type: !565)
!2829 = !DILocation(line: 2424, column: 8, scope: !2811)
!2830 = !DILocation(line: 2426, column: 5, scope: !2811)
!2831 = !DILocation(line: 2426, column: 14, scope: !2811)
!2832 = !DILocation(line: 2427, column: 5, scope: !2811)
!2833 = !DILocation(line: 2427, column: 13, scope: !2811)
!2834 = !DILocation(line: 2428, column: 28, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2811, file: !620, line: 2428, column: 8)
!2836 = !DILocation(line: 2428, column: 38, scope: !2835)
!2837 = !DILocation(line: 2428, column: 17, scope: !2835)
!2838 = !DILocation(line: 2428, column: 15, scope: !2835)
!2839 = !DILocation(line: 2428, column: 68, scope: !2835)
!2840 = !DILocation(line: 2428, column: 73, scope: !2835)
!2841 = !DILocation(line: 2429, column: 9, scope: !2835)
!2842 = !DILocation(line: 2428, column: 8, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2811, file: !620, discriminator: 1)
!2844 = !DILocation(line: 2435, column: 11, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !620, line: 2435, column: 11)
!2846 = distinct !DILexicalBlock(scope: !2835, file: !620, line: 2429, column: 14)
!2847 = !DILocation(line: 2435, column: 17, scope: !2845)
!2848 = !DILocation(line: 2435, column: 11, scope: !2846)
!2849 = !DILocation(line: 2436, column: 16, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !620, line: 2435, column: 23)
!2851 = !DILocation(line: 2437, column: 7, scope: !2850)
!2852 = !DILocation(line: 2438, column: 7, scope: !2846)
!2853 = !DILocation(line: 2441, column: 30, scope: !2811)
!2854 = !DILocation(line: 2441, column: 35, scope: !2811)
!2855 = !DILocation(line: 2441, column: 16, scope: !2811)
!2856 = !DILocation(line: 2441, column: 5, scope: !2811)
!2857 = !DILocation(line: 2441, column: 14, scope: !2811)
!2858 = !DILocation(line: 2442, column: 29, scope: !2811)
!2859 = !DILocation(line: 2442, column: 34, scope: !2811)
!2860 = !DILocation(line: 2442, column: 15, scope: !2811)
!2861 = !DILocation(line: 2442, column: 5, scope: !2811)
!2862 = !DILocation(line: 2442, column: 13, scope: !2811)
!2863 = !DILocation(line: 2444, column: 4, scope: !2811)
!2864 = !DILocation(line: 2445, column: 1, scope: !2811)
!2865 = distinct !DISubprogram(name: "ProcMgrProcInfoArray_SetCount", scope: !601, file: !601, line: 67, type: !1376, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2866 = !DILocalVariable(name: "a", arg: 1, scope: !2865, file: !601, line: 67, type: !623)
!2867 = !DILocation(line: 67, column: 963, scope: !2865)
!2868 = !DILocalVariable(name: "c", arg: 2, scope: !2865, file: !601, line: 67, type: !598)
!2869 = !DILocation(line: 67, column: 979, scope: !2865)
!2870 = !DILocation(line: 67, column: 1021, scope: !2865)
!2871 = !DILocation(line: 67, column: 1024, scope: !2865)
!2872 = !DILocation(line: 67, column: 991, scope: !2865)
!2873 = !DILocation(line: 67, column: 984, scope: !2865)
!2874 = distinct !DISubprogram(name: "DynArray_Count", scope: !582, file: !582, line: 185, type: !2875, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!598, !596}
!2877 = !DILocalVariable(name: "a", arg: 1, scope: !2874, file: !582, line: 185, type: !596)
!2878 = !DILocation(line: 185, column: 32, scope: !2874)
!2879 = !DILocation(line: 189, column: 43, scope: !2874)
!2880 = !DILocation(line: 189, column: 46, scope: !2874)
!2881 = !DILocation(line: 189, column: 27, scope: !2874)
!2882 = !DILocation(line: 189, column: 53, scope: !2874)
!2883 = !DILocation(line: 189, column: 56, scope: !2874)
!2884 = !DILocation(line: 189, column: 51, scope: !2874)
!2885 = !DILocation(line: 189, column: 11, scope: !2874)
!2886 = !DILocation(line: 189, column: 4, scope: !2874)
!2887 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !587, file: !587, line: 174, type: !2888, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!592, !2890}
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64, align: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!2892 = !DILocalVariable(name: "b", arg: 1, scope: !2887, file: !587, line: 174, type: !2890)
!2893 = !DILocation(line: 174, column: 30, scope: !2887)
!2894 = !DILocation(line: 178, column: 11, scope: !2887)
!2895 = !DILocation(line: 178, column: 14, scope: !2887)
!2896 = !DILocation(line: 178, column: 4, scope: !2887)
!2897 = distinct !DISubprogram(name: "DynArray_AddressOf", scope: !582, file: !582, line: 119, type: !2898, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!555, !596, !598}
!2900 = !DILocalVariable(name: "a", arg: 1, scope: !2897, file: !582, line: 119, type: !596)
!2901 = !DILocation(line: 119, column: 36, scope: !2897)
!2902 = !DILocalVariable(name: "i", arg: 2, scope: !2897, file: !582, line: 120, type: !598)
!2903 = !DILocation(line: 120, column: 33, scope: !2897)
!2904 = !DILocalVariable(name: "offset", scope: !2897, file: !582, line: 122, type: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !614, line: 122, baseType: !567)
!2906 = !DILocation(line: 122, column: 14, scope: !2897)
!2907 = !DILocation(line: 122, column: 23, scope: !2897)
!2908 = !DILocation(line: 122, column: 27, scope: !2897)
!2909 = !DILocation(line: 122, column: 30, scope: !2897)
!2910 = !DILocation(line: 122, column: 25, scope: !2897)
!2911 = !DILocation(line: 126, column: 8, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2897, file: !582, line: 126, column: 8)
!2913 = !DILocation(line: 126, column: 17, scope: !2912)
!2914 = !DILocation(line: 126, column: 20, scope: !2912)
!2915 = !DILocation(line: 126, column: 15, scope: !2912)
!2916 = !DILocation(line: 126, column: 45, scope: !2912)
!2917 = !DILocation(line: 126, column: 48, scope: !2912)
!2918 = !DILocation(line: 126, column: 29, scope: !2912)
!2919 = !DILocation(line: 126, column: 26, scope: !2912)
!2920 = !DILocation(line: 126, column: 8, scope: !2897)
!2921 = !DILocation(line: 127, column: 14, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2912, file: !582, line: 126, column: 54)
!2923 = !DILocation(line: 127, column: 44, scope: !2922)
!2924 = !DILocation(line: 127, column: 47, scope: !2922)
!2925 = !DILocation(line: 127, column: 32, scope: !2922)
!2926 = !DILocation(line: 127, column: 21, scope: !2922)
!2927 = !DILocation(line: 127, column: 7, scope: !2922)
!2928 = !DILocation(line: 130, column: 4, scope: !2897)
!2929 = !DILocation(line: 131, column: 1, scope: !2897)
!2930 = distinct !DISubprogram(name: "DynBuf_Get", scope: !587, file: !587, line: 113, type: !2931, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!555, !2890}
!2933 = !DILocalVariable(name: "b", arg: 1, scope: !2930, file: !587, line: 113, type: !2890)
!2934 = !DILocation(line: 113, column: 26, scope: !2930)
!2935 = !DILocation(line: 117, column: 11, scope: !2930)
!2936 = !DILocation(line: 117, column: 14, scope: !2930)
!2937 = !DILocation(line: 117, column: 4, scope: !2930)
!2938 = distinct !DISubprogram(name: "Util_FreeStringList", scope: !2939, file: !2939, line: 368, type: !2940, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2939 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/util.h", directory: "/home/lichi/Desktop/open-vm-tools/line802")
!2940 = !DISubroutineType(types: !2941)
!2941 = !{null, !653, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !571, line: 223, baseType: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !559, line: 172, baseType: !560)
!2944 = !DILocalVariable(name: "list", arg: 1, scope: !2938, file: !2939, line: 368, type: !653)
!2945 = !DILocation(line: 368, column: 28, scope: !2938)
!2946 = !DILocalVariable(name: "length", arg: 2, scope: !2938, file: !2939, line: 369, type: !2942)
!2947 = !DILocation(line: 369, column: 29, scope: !2938)
!2948 = !DILocation(line: 371, column: 28, scope: !2938)
!2949 = !DILocation(line: 371, column: 34, scope: !2938)
!2950 = !DILocation(line: 371, column: 4, scope: !2938)
!2951 = !DILocation(line: 372, column: 1, scope: !2938)
!2952 = distinct !DISubprogram(name: "Util_FreeList", scope: !2939, file: !2939, line: 335, type: !2953, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !616, !2942}
!2955 = !DILocalVariable(name: "list", arg: 1, scope: !2952, file: !2939, line: 335, type: !616)
!2956 = !DILocation(line: 335, column: 22, scope: !2952)
!2957 = !DILocalVariable(name: "length", arg: 2, scope: !2952, file: !2939, line: 336, type: !2942)
!2958 = !DILocation(line: 336, column: 23, scope: !2952)
!2959 = !DILocalVariable(name: "err", scope: !2952, file: !2939, line: 339, type: !565)
!2960 = !DILocation(line: 339, column: 8, scope: !2952)
!2961 = !DILocation(line: 341, column: 8, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2952, file: !2939, line: 341, column: 8)
!2963 = !DILocation(line: 341, column: 13, scope: !2962)
!2964 = !DILocation(line: 341, column: 8, scope: !2952)
!2965 = !DILocation(line: 343, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !2939, line: 341, column: 21)
!2967 = !DILocation(line: 346, column: 11, scope: !2952)
!2968 = !DILocation(line: 346, column: 10, scope: !2952)
!2969 = !DILocation(line: 346, column: 8, scope: !2952)
!2970 = !DILocation(line: 348, column: 8, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2952, file: !2939, line: 348, column: 8)
!2972 = !DILocation(line: 348, column: 15, scope: !2971)
!2973 = !DILocation(line: 348, column: 8, scope: !2952)
!2974 = !DILocalVariable(name: "i", scope: !2975, file: !2939, line: 349, type: !2942)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !2939, line: 348, column: 21)
!2976 = !DILocation(line: 349, column: 15, scope: !2975)
!2977 = !DILocation(line: 351, column: 14, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !2939, line: 351, column: 7)
!2979 = !DILocation(line: 351, column: 12, scope: !2978)
!2980 = !DILocation(line: 351, column: 19, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2982, file: !2939, discriminator: 1)
!2982 = distinct !DILexicalBlock(scope: !2978, file: !2939, line: 351, column: 7)
!2983 = !DILocation(line: 351, column: 23, scope: !2981)
!2984 = !DILocation(line: 351, column: 21, scope: !2981)
!2985 = !DILocation(line: 351, column: 7, scope: !2981)
!2986 = !DILocation(line: 352, column: 20, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2982, file: !2939, line: 351, column: 36)
!2988 = !DILocation(line: 352, column: 15, scope: !2987)
!2989 = !DILocation(line: 352, column: 10, scope: !2987)
!2990 = !DILocation(line: 354, column: 7, scope: !2987)
!2991 = !DILocation(line: 351, column: 32, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2982, file: !2939, discriminator: 2)
!2993 = !DILocation(line: 351, column: 7, scope: !2992)
!2994 = distinct !{!2994, !2995}
!2995 = !DILocation(line: 351, column: 7, scope: !2975)
!2996 = !DILocation(line: 355, column: 4, scope: !2975)
!2997 = !DILocalVariable(name: "s", scope: !2998, file: !2939, line: 356, type: !616)
!2998 = distinct !DILexicalBlock(scope: !2971, file: !2939, line: 355, column: 11)
!2999 = !DILocation(line: 356, column: 14, scope: !2998)
!3000 = !DILocation(line: 358, column: 16, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !2939, line: 358, column: 7)
!3002 = !DILocation(line: 358, column: 14, scope: !3001)
!3003 = !DILocation(line: 358, column: 12, scope: !3001)
!3004 = !DILocation(line: 358, column: 23, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3006, file: !2939, discriminator: 1)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !2939, line: 358, column: 7)
!3007 = !DILocation(line: 358, column: 22, scope: !3005)
!3008 = !DILocation(line: 358, column: 25, scope: !3005)
!3009 = !DILocation(line: 358, column: 7, scope: !3005)
!3010 = !DILocation(line: 359, column: 16, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !2939, line: 358, column: 38)
!3012 = !DILocation(line: 359, column: 15, scope: !3011)
!3013 = !DILocation(line: 359, column: 10, scope: !3011)
!3014 = !DILocation(line: 361, column: 7, scope: !3011)
!3015 = !DILocation(line: 358, column: 34, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3006, file: !2939, discriminator: 2)
!3017 = !DILocation(line: 358, column: 7, scope: !3016)
!3018 = distinct !{!3018, !3019}
!3019 = !DILocation(line: 358, column: 7, scope: !2998)
!3020 = !DILocation(line: 363, column: 9, scope: !2952)
!3021 = !DILocation(line: 363, column: 4, scope: !2952)
!3022 = !DILocation(line: 364, column: 11, scope: !2952)
!3023 = !DILocation(line: 364, column: 5, scope: !2952)
!3024 = !DILocation(line: 364, column: 9, scope: !2952)
!3025 = !DILocation(line: 365, column: 1, scope: !2952)
!3026 = !DILocation(line: 365, column: 1, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !2952, file: !2939, discriminator: 1)
!3028 = distinct !DISubprogram(name: "ProcMgr_IsProcessRunning", scope: !620, file: !620, line: 1790, type: !3029, isLocal: true, isDefinition: true, scopeLine: 1791, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !625)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!755, !570}
!3031 = !DILocalVariable(name: "pid", arg: 1, scope: !3028, file: !620, line: 1790, type: !570)
!3032 = !DILocation(line: 1790, column: 32, scope: !3028)
!3033 = !DILocation(line: 1792, column: 18, scope: !3028)
!3034 = !DILocation(line: 1792, column: 13, scope: !3028)
!3035 = !DILocation(line: 1792, column: 26, scope: !3028)
!3036 = !DILocation(line: 1792, column: 32, scope: !3028)
!3037 = !DILocation(line: 1792, column: 37, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3028, file: !620, discriminator: 1)
!3039 = !DILocation(line: 1792, column: 36, scope: !3038)
!3040 = !DILocation(line: 1792, column: 41, scope: !3038)
!3041 = !DILocation(line: 1792, column: 32, scope: !3038)
!3042 = !DILocation(line: 1792, column: 32, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3028, file: !620, discriminator: 2)
!3044 = !DILocation(line: 1792, column: 11, scope: !3043)
!3045 = !DILocation(line: 1792, column: 4, scope: !3043)
