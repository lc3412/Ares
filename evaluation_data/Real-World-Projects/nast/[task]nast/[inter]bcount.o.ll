; ModuleID = './[inter]bcount.o.i'
source_filename = "./[inter]bcount.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pcap = type opaque
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i16, i8, i8, i32 }
%struct.pcap_pkthdr = type { %struct.timeval, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.statistics = type { i64, i64, i16, i16, double, i32 }
%struct.pcap_dumper = type opaque
%struct.pcap_stat = type { i32, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.libnet_ipv4_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.in_addr, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.libnet_tcp_hdr = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }

@nconns = global i32 0, align 4
@liness = global i32 13, align 4
@.str = private unnamed_addr constant [17 x i8] c"Device is null!\0A\00", align 1
@graph = common global i16 0, align 2
@demonize = common global i16 0, align 2
@.str.1 = private unnamed_addr constant [6 x i8] c"winfo\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Is very useless demonize me in finding gateway! Omit\00", align 1
@ptime = common global i64 0, align 8
@begin = common global i64 0, align 8
@netp = common global i32 0, align 4
@maskp = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"pcap_lookupnet error: %s\0A\0A\00", align 1
@descr = common global %struct.pcap* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"pcap_open_live error: %s\0A\0A\00", align 1
@offset = common global i16 0, align 2
@.str.5 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fp = common global %struct.bpf_program zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"pcap_compile error\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"pcap_setfilter error\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"princ\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Filter \22%s\22 has been applied to \22%s\22\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Reading from \22%s\22\0A\0A\00", align 1
@pt = common global [2 x i64] zeroinitializer, align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"B/s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"kB/s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"MB/s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"GB/s\00", align 1
@bytecounting.units = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)], align 16
@partial = common global double 0.000000e+00, align 8
@.str.16 = private unnamed_addr constant [46 x i8] c"Packets\09\09Total\09\09Current speed\09\09Avarage speed\0A\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"---------------------------------------------------------------------\0A\00", align 1
@hdr = common global %struct.pcap_pkthdr zeroinitializer, align 8
@packet = common global i8* null, align 8
@.str.18 = private unnamed_addr constant [72 x i8] c"\0D                                                                     \0D\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\5C \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"/ \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%Ld\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%.0fB\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"%.2fkB\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%.2fMB\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%.2fGB\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%.0f%s\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"%.2f%s\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@n_bytecounting.units = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)], align 16
@stat_conn = common global [100 x %struct.statistics] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [79 x i8] c"-----------------------------------------------------------------------------\0A\00", align 1
@.str.35 = private unnamed_addr constant [78 x i8] c"ARP        RARP        ICMP        IGMP         TCP        UDP        Others\0A\00", align 1
@.str.36 = private unnamed_addr constant [73 x i8] c"From             Port       To                  Port       Total traffic\00", align 1
@bc_glob = common global i32 0, align 4
@.str.37 = private unnamed_addr constant [68 x i8] c"                                                                   \00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@logd = common global %struct._IO_FILE* null, align 8
@npkt = common global i32 0, align 4
@buf = common global i8* null, align 8
@dumper = common global %struct.pcap_dumper* null, align 8
@statistic = common global %struct.pcap_stat zeroinitializer, align 4
@datalink = common global i32 0, align 4
@logname = common global i8* null, align 8
@tcpdl = common global i8* null, align 8
@tr = common global i16 0, align 2
@tl = common global i16 0, align 2
@cont = common global i16 0, align 2
@stream_glob = common global i32 0, align 4
@sniff_glob = common global i32 0, align 4
@rst_glob = common global i32 0, align 4
@arp_glob = common global i32 0, align 4
@lg = common global i32 0, align 4
@tm = common global i64 0, align 8
@timed = common global [60 x i8] zeroinitializer, align 16
@line_s = common global i32 0, align 4
@row_s = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @run_bc(i8*, i8*) #0 !dbg !217 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !220, metadata !221), !dbg !222
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !223, metadata !221), !dbg !224
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !225, metadata !221), !dbg !229
  %7 = load i8*, i8** %4, align 8, !dbg !230
  %8 = icmp ne i8* %7, null, !dbg !230
  br i1 %8, label %11, label %9, !dbg !232

; <label>:9:                                      ; preds = %2
  %10 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)), !dbg !233
  br label %11, !dbg !235

; <label>:11:                                     ; preds = %9, %2
  %12 = load i16, i16* @graph, align 2, !dbg !236
  %13 = icmp ne i16 %12, 0, !dbg !236
  br i1 %13, label %14, label %15, !dbg !238

; <label>:14:                                     ; preds = %11
  call void @init_scr(), !dbg !239
  br label %15, !dbg !239

; <label>:15:                                     ; preds = %14, %11
  %16 = load i16, i16* @demonize, align 2, !dbg !240
  %17 = icmp ne i16 %16, 0, !dbg !240
  br i1 %17, label %18, label %19, !dbg !242

; <label>:18:                                     ; preds = %15
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 1, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0)), !dbg !243
  br label %19, !dbg !243

; <label>:19:                                     ; preds = %18, %15
  store i64 1, i64* @ptime, align 8, !dbg !244
  %20 = call i64 @time(i64* null) #7, !dbg !245
  store i64 %20, i64* @begin, align 8, !dbg !246
  %21 = load i8*, i8** %4, align 8, !dbg !247
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !249
  %23 = call i32 @pcap_lookupnet(i8* %21, i32* @netp, i32* @maskp, i8* %22), !dbg !250
  %24 = icmp eq i32 %23, -1, !dbg !251
  br i1 %24, label %25, label %28, !dbg !252

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !253
  %27 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* %26), !dbg !255
  br label %28, !dbg !256

; <label>:28:                                     ; preds = %25, %19
  %29 = load i8*, i8** %4, align 8, !dbg !257
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !259
  %31 = call %struct.pcap* @pcap_open_live(i8* %29, i32 8192, i32 1, i32 10, i8* %30), !dbg !260
  store %struct.pcap* %31, %struct.pcap** @descr, align 8, !dbg !261
  %32 = icmp eq %struct.pcap* %31, null, !dbg !262
  br i1 %32, label %33, label %36, !dbg !263

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i32 0, i32 0, !dbg !264
  %35 = call i32 (i32, i8*, ...) @w_error(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* %34), !dbg !266
  br label %36, !dbg !267

; <label>:36:                                     ; preds = %33, %28
  %37 = load i8*, i8** %4, align 8, !dbg !268
  %38 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !270
  %39 = call i32 @device(i8* %37, %struct.pcap* %38), !dbg !271
  %40 = trunc i32 %39 to i16, !dbg !272
  store i16 %40, i16* @offset, align 2, !dbg !273
  %41 = sext i16 %40 to i32, !dbg !274
  %42 = icmp eq i32 %41, -1, !dbg !275
  br i1 %42, label %43, label %44, !dbg !276

; <label>:43:                                     ; preds = %36
  store i32 -1, i32* %3, align 4, !dbg !277
  br label %79, !dbg !277

; <label>:44:                                     ; preds = %36
  %45 = load i8*, i8** %5, align 8, !dbg !279
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !281
  %47 = icmp ne i32 %46, 0, !dbg !281
  br i1 %47, label %48, label %69, !dbg !282

; <label>:48:                                     ; preds = %44
  %49 = load i8*, i8** %5, align 8, !dbg !283
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !285
  %51 = icmp ne i32 %50, 0, !dbg !285
  br i1 %51, label %52, label %69, !dbg !286

; <label>:52:                                     ; preds = %48
  %53 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !287
  %54 = load i8*, i8** %5, align 8, !dbg !290
  %55 = load i32, i32* @netp, align 4, !dbg !291
  %56 = call i32 @pcap_compile(%struct.pcap* %53, %struct.bpf_program* @fp, i8* %54, i32 0, i32 %55), !dbg !292
  %57 = icmp eq i32 %56, -1, !dbg !293
  br i1 %57, label %58, label %60, !dbg !294

; <label>:58:                                     ; preds = %52
  %59 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)), !dbg !295
  store i32 0, i32* %3, align 4, !dbg !297
  br label %79, !dbg !297

; <label>:60:                                     ; preds = %52
  %61 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !298
  %62 = call i32 @pcap_setfilter(%struct.pcap* %61, %struct.bpf_program* @fp), !dbg !300
  %63 = icmp eq i32 %62, -1, !dbg !301
  br i1 %63, label %64, label %66, !dbg !302

; <label>:64:                                     ; preds = %60
  %65 = call i32 (i32, i8*, ...) @w_error(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)), !dbg !303
  store i32 0, i32* %3, align 4, !dbg !305
  br label %79, !dbg !305

; <label>:66:                                     ; preds = %60
  %67 = load i8*, i8** %5, align 8, !dbg !306
  %68 = load i8*, i8** %4, align 8, !dbg !307
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 1, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i8* %67, i8* %68), !dbg !308
  br label %71, !dbg !309

; <label>:69:                                     ; preds = %48, %44
  %70 = load i8*, i8** %4, align 8, !dbg !310
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 1, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %70), !dbg !311
  br label %71

; <label>:71:                                     ; preds = %69, %66
  %72 = call i32 @pthread_create(i64* getelementptr inbounds ([2 x i64], [2 x i64]* @pt, i64 0, i64 0), %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @ptimecounting to i8* (i8*)*), i8* null) #7, !dbg !312
  %73 = load i16, i16* @graph, align 2, !dbg !313
  %74 = icmp ne i16 %73, 0, !dbg !313
  br i1 %74, label %75, label %77, !dbg !315

; <label>:75:                                     ; preds = %71
  %76 = call i32 @pthread_create(i64* getelementptr inbounds ([2 x i64], [2 x i64]* @pt, i64 0, i64 1), %union.pthread_attr_t* null, i8* (i8*)* bitcast (void ()* @n_bytecounting to i8* (i8*)*), i8* null) #7, !dbg !316
  br label %78, !dbg !316

; <label>:77:                                     ; preds = %71
  call void @bytecounting(), !dbg !317
  br label %78

; <label>:78:                                     ; preds = %77, %75
  store i32 0, i32* %3, align 4, !dbg !318
  br label %79, !dbg !318

; <label>:79:                                     ; preds = %78, %64, %58, %43
  %80 = load i32, i32* %3, align 4, !dbg !319
  ret i32 %80, !dbg !319
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @w_error(i32, i8*, ...) #2

declare void @init_scr() #2

declare void @n_print(i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @pcap_lookupnet(i8*, i32*, i32*, i8*) #2

declare %struct.pcap* @pcap_open_live(i8*, i32, i32, i32, i8*) #2

declare i32 @device(i8*, %struct.pcap*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @pcap_compile(%struct.pcap*, %struct.bpf_program*, i8*, i32, i32) #2

declare i32 @pcap_setfilter(%struct.pcap*, %struct.bpf_program*) #2

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define void @bytecounting() #0 !dbg !320 {
  %1 = alloca i16, align 2
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca [15 x i8], align 1
  %8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i16* %1, metadata !323, metadata !221), !dbg !324
  call void @llvm.dbg.declare(metadata double* %2, metadata !325, metadata !221), !dbg !326
  call void @llvm.dbg.declare(metadata double* %3, metadata !327, metadata !221), !dbg !328
  call void @llvm.dbg.declare(metadata double* %4, metadata !329, metadata !221), !dbg !330
  call void @llvm.dbg.declare(metadata i64* %5, metadata !331, metadata !221), !dbg !333
  call void @llvm.dbg.declare(metadata [4 x i8*]* %6, metadata !334, metadata !221), !dbg !338
  %9 = bitcast [4 x i8*]* %6 to i8*, !dbg !338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([4 x i8*]* @bytecounting.units to i8*), i64 32, i32 16, i1 false), !dbg !338
  call void @llvm.dbg.declare(metadata [15 x i8]* %7, metadata !339, metadata !221), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %8, metadata !344, metadata !221), !dbg !345
  store double 0.000000e+00, double* %2, align 8, !dbg !346
  store i16 0, i16* %1, align 2, !dbg !347
  store i64 0, i64* %5, align 8, !dbg !348
  store double 0.000000e+00, double* @partial, align 8, !dbg !349
  store i32 4, i32* %8, align 4, !dbg !350
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* null, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0)), !dbg !351
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* null, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i32 0, i32 0)), !dbg !352
  br label %10, !dbg !353

; <label>:10:                                     ; preds = %0, %211
  %11 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !354
  %12 = call i8* @pcap_next(%struct.pcap* %11, %struct.pcap_pkthdr* @hdr), !dbg !357
  store i8* %12, i8** @packet, align 8, !dbg !358
  %13 = icmp ne i8* %12, null, !dbg !359
  br i1 %13, label %14, label %211, !dbg !360

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.pcap_pkthdr, %struct.pcap_pkthdr* @hdr, i32 0, i32 2), align 4, !dbg !361
  %16 = uitofp i32 %15 to double, !dbg !363
  %17 = fdiv double %16, 1.024000e+03, !dbg !364
  %18 = load double, double* %2, align 8, !dbg !365
  %19 = fadd double %18, %17, !dbg !365
  store double %19, double* %2, align 8, !dbg !365
  %20 = load i32, i32* getelementptr inbounds (%struct.pcap_pkthdr, %struct.pcap_pkthdr* @hdr, i32 0, i32 2), align 4, !dbg !366
  %21 = uitofp i32 %20 to double, !dbg !367
  %22 = fdiv double %21, 1.024000e+03, !dbg !368
  %23 = load double, double* @partial, align 8, !dbg !369
  %24 = fadd double %23, %22, !dbg !369
  store double %24, double* @partial, align 8, !dbg !369
  %25 = load i64, i64* %5, align 8, !dbg !370
  %26 = add i64 %25, 1, !dbg !370
  store i64 %26, i64* %5, align 8, !dbg !370
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i32 0, i32 0)), !dbg !371
  %28 = load i16, i16* %1, align 2, !dbg !372
  %29 = zext i16 %28 to i32, !dbg !372
  switch i32 %29, label %38 [
    i32 0, label %30
    i32 1, label %32
    i32 2, label %34
    i32 3, label %36
  ], !dbg !373

; <label>:30:                                     ; preds = %14
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)), !dbg !374
  br label %38, !dbg !376

; <label>:32:                                     ; preds = %14
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)), !dbg !377
  br label %38, !dbg !378

; <label>:34:                                     ; preds = %14
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)), !dbg !379
  br label %38, !dbg !380

; <label>:36:                                     ; preds = %14
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)), !dbg !381
  br label %38, !dbg !382

; <label>:38:                                     ; preds = %14, %36, %34, %32, %30
  %39 = load i16, i16* %1, align 2, !dbg !383
  %40 = zext i16 %39 to i32, !dbg !383
  %41 = icmp eq i32 %40, 3, !dbg !385
  br i1 %41, label %42, label %43, !dbg !386

; <label>:42:                                     ; preds = %38
  store i16 0, i16* %1, align 2, !dbg !387
  br label %46, !dbg !389

; <label>:43:                                     ; preds = %38
  %44 = load i16, i16* %1, align 2, !dbg !390
  %45 = add i16 %44, 1, !dbg !390
  store i16 %45, i16* %1, align 2, !dbg !390
  br label %46

; <label>:46:                                     ; preds = %43, %42
  %47 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !391
  %48 = load i64, i64* %5, align 8, !dbg !392
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %48) #7, !dbg !393
  %50 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !394
  %51 = call i32 (i8*, ...) @printf(i8* %50), !dbg !395
  %52 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !396
  %53 = call i64 @strlen(i8* %52) #8, !dbg !398
  %54 = icmp ult i64 %53, 6, !dbg !399
  br i1 %54, label %55, label %57, !dbg !400

; <label>:55:                                     ; preds = %46
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)), !dbg !401
  br label %59, !dbg !401

; <label>:57:                                     ; preds = %46
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)), !dbg !403
  br label %59

; <label>:59:                                     ; preds = %57, %55
  %60 = load double, double* %2, align 8, !dbg !404
  %61 = fcmp olt double %60, 1.000000e+00, !dbg !406
  br i1 %61, label %62, label %67, !dbg !407

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !408
  %64 = load double, double* %2, align 8, !dbg !409
  %65 = fmul double %64, 1.024000e+03, !dbg !410
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), double %65) #7, !dbg !411
  br label %90, !dbg !411

; <label>:67:                                     ; preds = %59
  %68 = load double, double* %2, align 8, !dbg !412
  %69 = fcmp olt double %68, 1.024000e+03, !dbg !414
  br i1 %69, label %70, label %74, !dbg !415

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !416
  %72 = load double, double* %2, align 8, !dbg !417
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %72) #7, !dbg !418
  br label %89, !dbg !418

; <label>:74:                                     ; preds = %67
  %75 = load double, double* %2, align 8, !dbg !419
  %76 = fcmp olt double %75, 1.048576e+06, !dbg !421
  br i1 %76, label %77, label %82, !dbg !422

; <label>:77:                                     ; preds = %74
  %78 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !423
  %79 = load double, double* %2, align 8, !dbg !424
  %80 = fdiv double %79, 1.024000e+03, !dbg !425
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %80) #7, !dbg !426
  br label %88, !dbg !426

; <label>:82:                                     ; preds = %74
  %83 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !427
  %84 = load double, double* %2, align 8, !dbg !428
  %85 = fdiv double %84, 1.024000e+03, !dbg !429
  %86 = fmul double %85, 1.024000e+03, !dbg !430
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), double %86) #7, !dbg !431
  br label %88

; <label>:88:                                     ; preds = %82, %77
  br label %89

; <label>:89:                                     ; preds = %88, %70
  br label %90

; <label>:90:                                     ; preds = %89, %62
  %91 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !432
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %91), !dbg !433
  %93 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !434
  %94 = call i64 @strlen(i8* %93) #8, !dbg !436
  %95 = icmp ult i64 %94, 8, !dbg !437
  br i1 %95, label %96, label %98, !dbg !438

; <label>:96:                                     ; preds = %90
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)), !dbg !439
  br label %100, !dbg !439

; <label>:98:                                     ; preds = %90
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)), !dbg !441
  br label %100

; <label>:100:                                    ; preds = %98, %96
  %101 = load double, double* @partial, align 8, !dbg !442
  %102 = load i64, i64* @ptime, align 8, !dbg !443
  %103 = uitofp i64 %102 to double, !dbg !443
  %104 = fdiv double %101, %103, !dbg !444
  store double %104, double* %3, align 8, !dbg !445
  %105 = load double, double* %3, align 8, !dbg !446
  %106 = fcmp olt double %105, 1.000000e+00, !dbg !448
  br i1 %106, label %107, label %114, !dbg !449

; <label>:107:                                    ; preds = %100
  %108 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !450
  %109 = load double, double* %3, align 8, !dbg !451
  %110 = fmul double %109, 1.024000e+03, !dbg !452
  %111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0, !dbg !453
  %112 = load i8*, i8** %111, align 16, !dbg !453
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), double %110, i8* %112) #7, !dbg !454
  br label %143, !dbg !454

; <label>:114:                                    ; preds = %100
  %115 = load double, double* %3, align 8, !dbg !455
  %116 = fcmp olt double %115, 1.024000e+03, !dbg !457
  br i1 %116, label %117, label %123, !dbg !458

; <label>:117:                                    ; preds = %114
  %118 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !459
  %119 = load double, double* %3, align 8, !dbg !460
  %120 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1, !dbg !461
  %121 = load i8*, i8** %120, align 8, !dbg !461
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %119, i8* %121) #7, !dbg !462
  br label %142, !dbg !462

; <label>:123:                                    ; preds = %114
  %124 = load double, double* %3, align 8, !dbg !463
  %125 = fcmp olt double %124, 1.048576e+06, !dbg !465
  br i1 %125, label %126, label %133, !dbg !466

; <label>:126:                                    ; preds = %123
  %127 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !467
  %128 = load double, double* %3, align 8, !dbg !468
  %129 = fdiv double %128, 1.024000e+03, !dbg !469
  %130 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2, !dbg !470
  %131 = load i8*, i8** %130, align 16, !dbg !470
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %129, i8* %131) #7, !dbg !471
  br label %141, !dbg !471

; <label>:133:                                    ; preds = %123
  %134 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !472
  %135 = load double, double* %3, align 8, !dbg !473
  %136 = fdiv double %135, 1.024000e+03, !dbg !474
  %137 = fmul double %136, 1.024000e+03, !dbg !475
  %138 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 3, !dbg !476
  %139 = load i8*, i8** %138, align 8, !dbg !476
  %140 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %137, i8* %139) #7, !dbg !477
  br label %141

; <label>:141:                                    ; preds = %133, %126
  br label %142

; <label>:142:                                    ; preds = %141, %117
  br label %143

; <label>:143:                                    ; preds = %142, %107
  %144 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !478
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %144), !dbg !479
  %146 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !480
  %147 = call i64 @strlen(i8* %146) #8, !dbg !482
  %148 = icmp ult i64 %147, 7, !dbg !483
  br i1 %148, label %149, label %151, !dbg !484

; <label>:149:                                    ; preds = %143
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)), !dbg !485
  br label %160, !dbg !485

; <label>:151:                                    ; preds = %143
  %152 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !487
  %153 = call i64 @strlen(i8* %152) #8, !dbg !489
  %154 = icmp ult i64 %153, 13, !dbg !490
  br i1 %154, label %155, label %157, !dbg !491

; <label>:155:                                    ; preds = %151
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)), !dbg !492
  br label %159, !dbg !492

; <label>:157:                                    ; preds = %151
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0)), !dbg !494
  br label %159

; <label>:159:                                    ; preds = %157, %155
  br label %160

; <label>:160:                                    ; preds = %159, %149
  %161 = load double, double* %2, align 8, !dbg !495
  %162 = call i64 @time(i64* null) #7, !dbg !496
  %163 = load i64, i64* @begin, align 8, !dbg !497
  %164 = sub nsw i64 %162, %163, !dbg !498
  %165 = trunc i64 %164 to i32, !dbg !499
  %166 = sitofp i32 %165 to double, !dbg !500
  %167 = fdiv double %161, %166, !dbg !501
  store double %167, double* %4, align 8, !dbg !502
  %168 = load double, double* %4, align 8, !dbg !503
  %169 = fcmp olt double %168, 1.000000e+00, !dbg !505
  br i1 %169, label %170, label %177, !dbg !506

; <label>:170:                                    ; preds = %160
  %171 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !507
  %172 = load double, double* %4, align 8, !dbg !508
  %173 = fmul double %172, 1.024000e+03, !dbg !509
  %174 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0, !dbg !510
  %175 = load i8*, i8** %174, align 16, !dbg !510
  %176 = call i32 (i8*, i8*, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), double %173, i8* %175) #7, !dbg !511
  br label %206, !dbg !511

; <label>:177:                                    ; preds = %160
  %178 = load double, double* %4, align 8, !dbg !512
  %179 = fcmp olt double %178, 1.024000e+03, !dbg !514
  br i1 %179, label %180, label %186, !dbg !515

; <label>:180:                                    ; preds = %177
  %181 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !516
  %182 = load double, double* %4, align 8, !dbg !517
  %183 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1, !dbg !518
  %184 = load i8*, i8** %183, align 8, !dbg !518
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %182, i8* %184) #7, !dbg !519
  br label %205, !dbg !519

; <label>:186:                                    ; preds = %177
  %187 = load double, double* %4, align 8, !dbg !520
  %188 = fcmp olt double %187, 1.048576e+06, !dbg !522
  br i1 %188, label %189, label %196, !dbg !523

; <label>:189:                                    ; preds = %186
  %190 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !524
  %191 = load double, double* %4, align 8, !dbg !525
  %192 = fdiv double %191, 1.024000e+03, !dbg !526
  %193 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2, !dbg !527
  %194 = load i8*, i8** %193, align 16, !dbg !527
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %192, i8* %194) #7, !dbg !528
  br label %204, !dbg !528

; <label>:196:                                    ; preds = %186
  %197 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !529
  %198 = load double, double* %4, align 8, !dbg !530
  %199 = fdiv double %198, 1.024000e+03, !dbg !531
  %200 = fmul double %199, 1.024000e+03, !dbg !532
  %201 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 3, !dbg !533
  %202 = load i8*, i8** %201, align 8, !dbg !533
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %200, i8* %202) #7, !dbg !534
  br label %204

; <label>:204:                                    ; preds = %196, %189
  br label %205

; <label>:205:                                    ; preds = %204, %180
  br label %206

; <label>:206:                                    ; preds = %205, %170
  %207 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i32 0, i32 0, !dbg !535
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %207), !dbg !536
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !537
  %210 = call i32 @fflush(%struct._IO_FILE* %209), !dbg !538
  br label %211, !dbg !539

; <label>:211:                                    ; preds = %206, %10
  br label %10, !dbg !540, !llvm.loop !542
                                                  ; No predecessors!
  ret void, !dbg !543
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @pcap_next(%struct.pcap*, %struct.pcap_pkthdr*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @n_bytecounting() #0 !dbg !544 {
  %1 = alloca i16, align 2
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i8*], align 16
  %8 = alloca [15 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.libnet_ipv4_hdr*, align 8
  %19 = alloca %struct.libnet_tcp_hdr*, align 8
  %20 = alloca i16, align 2
  %21 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i16* %1, metadata !545, metadata !221), !dbg !546
  call void @llvm.dbg.declare(metadata double* %2, metadata !547, metadata !221), !dbg !548
  call void @llvm.dbg.declare(metadata double* %3, metadata !549, metadata !221), !dbg !550
  call void @llvm.dbg.declare(metadata double* %4, metadata !551, metadata !221), !dbg !552
  call void @llvm.dbg.declare(metadata double* %5, metadata !553, metadata !221), !dbg !554
  call void @llvm.dbg.declare(metadata i64* %6, metadata !555, metadata !221), !dbg !556
  call void @llvm.dbg.declare(metadata [4 x i8*]* %7, metadata !557, metadata !221), !dbg !558
  %22 = bitcast [4 x i8*]* %7 to i8*, !dbg !558
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* bitcast ([4 x i8*]* @n_bytecounting.units to i8*), i64 32, i32 16, i1 false), !dbg !558
  call void @llvm.dbg.declare(metadata [15 x i8]* %8, metadata !559, metadata !221), !dbg !560
  call void @llvm.dbg.declare(metadata i32* %9, metadata !561, metadata !221), !dbg !562
  call void @llvm.dbg.declare(metadata i32* %10, metadata !563, metadata !221), !dbg !564
  call void @llvm.dbg.declare(metadata i32* %11, metadata !565, metadata !221), !dbg !566
  call void @llvm.dbg.declare(metadata i32* %12, metadata !567, metadata !221), !dbg !568
  call void @llvm.dbg.declare(metadata i32* %13, metadata !569, metadata !221), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %14, metadata !571, metadata !221), !dbg !572
  call void @llvm.dbg.declare(metadata i32* %15, metadata !573, metadata !221), !dbg !574
  call void @llvm.dbg.declare(metadata i32* %16, metadata !575, metadata !221), !dbg !576
  call void @llvm.dbg.declare(metadata i32* %17, metadata !577, metadata !221), !dbg !578
  call void @llvm.dbg.declare(metadata %struct.libnet_ipv4_hdr** %18, metadata !579, metadata !221), !dbg !580
  call void @llvm.dbg.declare(metadata %struct.libnet_tcp_hdr** %19, metadata !581, metadata !221), !dbg !582
  call void @llvm.dbg.declare(metadata i16* %20, metadata !583, metadata !221), !dbg !585
  call void @llvm.dbg.declare(metadata i32* %21, metadata !586, metadata !221), !dbg !587
  store double 0.000000e+00, double* %3, align 8, !dbg !588
  store double 0.000000e+00, double* %2, align 8, !dbg !589
  store i16 0, i16* %1, align 2, !dbg !590
  store i64 0, i64* %6, align 8, !dbg !591
  store double 0.000000e+00, double* @partial, align 8, !dbg !592
  store i32 4, i32* %9, align 4, !dbg !593
  store i32 11, i32* %10, align 4, !dbg !594
  store i32 0, i32* %21, align 4, !dbg !595
  store i32 0, i32* %16, align 4, !dbg !596
  store i32 0, i32* %15, align 4, !dbg !597
  store i32 0, i32* %17, align 4, !dbg !598
  store i32 0, i32* %14, align 4, !dbg !599
  store i32 0, i32* %13, align 4, !dbg !600
  store i32 0, i32* %12, align 4, !dbg !601
  store i32 0, i32* %11, align 4, !dbg !602
  store i32 0, i32* %21, align 4, !dbg !603
  br label %23, !dbg !605

; <label>:23:                                     ; preds = %31, %0
  %24 = load i32, i32* %21, align 4, !dbg !606
  %25 = icmp slt i32 %24, 100, !dbg !609
  br i1 %25, label %26, label %34, !dbg !610

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %21, align 4, !dbg !611
  %28 = sext i32 %27 to i64, !dbg !613
  %29 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %28, !dbg !613
  %30 = bitcast %struct.statistics* %29 to i8*, !dbg !614
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 40, i32 8, i1 false), !dbg !614
  br label %31, !dbg !615

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %21, align 4, !dbg !616
  %33 = add nsw i32 %32, 1, !dbg !616
  store i32 %33, i32* %21, align 4, !dbg !616
  br label %23, !dbg !618, !llvm.loop !619

; <label>:34:                                     ; preds = %23
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 1, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0)), !dbg !621
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 1, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.34, i32 0, i32 0)), !dbg !622
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 6, i32 1, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.35, i32 0, i32 0)), !dbg !623
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 7, i32 1, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.34, i32 0, i32 0)), !dbg !624
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 11, i32 1, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.36, i32 0, i32 0)), !dbg !625
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 12, i32 1, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.34, i32 0, i32 0)), !dbg !626
  br label %35, !dbg !627

; <label>:35:                                     ; preds = %432, %34
  %36 = load i32, i32* @bc_glob, align 4, !dbg !628
  %37 = icmp ne i32 %36, 0, !dbg !630
  br i1 %37, label %38, label %433, !dbg !631

; <label>:38:                                     ; preds = %35
  %39 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !632
  %40 = call i8* @pcap_next(%struct.pcap* %39, %struct.pcap_pkthdr* @hdr), !dbg !635
  store i8* %40, i8** @packet, align 8, !dbg !636
  %41 = icmp ne i8* %40, null, !dbg !637
  br i1 %41, label %42, label %432, !dbg !638

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.pcap_pkthdr, %struct.pcap_pkthdr* @hdr, i32 0, i32 2), align 4, !dbg !639
  %44 = uitofp i32 %43 to double, !dbg !641
  %45 = fdiv double %44, 1.024000e+03, !dbg !642
  %46 = load double, double* %2, align 8, !dbg !643
  %47 = fadd double %46, %45, !dbg !643
  store double %47, double* %2, align 8, !dbg !643
  %48 = load i32, i32* getelementptr inbounds (%struct.pcap_pkthdr, %struct.pcap_pkthdr* @hdr, i32 0, i32 2), align 4, !dbg !644
  %49 = uitofp i32 %48 to double, !dbg !645
  %50 = fdiv double %49, 1.024000e+03, !dbg !646
  %51 = load double, double* @partial, align 8, !dbg !647
  %52 = fadd double %51, %50, !dbg !647
  store double %52, double* @partial, align 8, !dbg !647
  %53 = load i64, i64* %6, align 8, !dbg !648
  %54 = add i64 %53, 1, !dbg !648
  store i64 %54, i64* %6, align 8, !dbg !648
  %55 = load i32, i32* getelementptr inbounds (%struct.pcap_pkthdr, %struct.pcap_pkthdr* @hdr, i32 0, i32 2), align 4, !dbg !649
  %56 = uitofp i32 %55 to double, !dbg !650
  %57 = fdiv double %56, 1.024000e+03, !dbg !651
  store double %57, double* %3, align 8, !dbg !652
  %58 = load i8*, i8** @packet, align 8, !dbg !653
  %59 = call zeroext i16 @handle_ethernet(i8* %58), !dbg !654
  store i16 %59, i16* %20, align 2, !dbg !655
  %60 = load i8*, i8** @packet, align 8, !dbg !656
  %61 = load i16, i16* @offset, align 2, !dbg !657
  %62 = sext i16 %61 to i32, !dbg !657
  %63 = sext i32 %62 to i64, !dbg !658
  %64 = getelementptr inbounds i8, i8* %60, i64 %63, !dbg !658
  %65 = bitcast i8* %64 to %struct.libnet_ipv4_hdr*, !dbg !659
  store %struct.libnet_ipv4_hdr* %65, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !660
  %66 = load i8*, i8** @packet, align 8, !dbg !661
  %67 = getelementptr inbounds i8, i8* %66, i64 20, !dbg !662
  %68 = load i16, i16* @offset, align 2, !dbg !663
  %69 = sext i16 %68 to i32, !dbg !663
  %70 = sext i32 %69 to i64, !dbg !664
  %71 = getelementptr inbounds i8, i8* %67, i64 %70, !dbg !664
  %72 = bitcast i8* %71 to %struct.libnet_tcp_hdr*, !dbg !665
  store %struct.libnet_tcp_hdr* %72, %struct.libnet_tcp_hdr** %19, align 8, !dbg !666
  %73 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !667
  %74 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %73, i32 0, i32 6, !dbg !668
  %75 = load i8, i8* %74, align 1, !dbg !668
  %76 = zext i8 %75 to i32, !dbg !667
  switch i32 %76, label %263 [
    i32 6, label %77
    i32 17, label %254
    i32 1, label %257
    i32 2, label %260
  ], !dbg !669

; <label>:77:                                     ; preds = %42
  %78 = load i32, i32* %11, align 4, !dbg !670
  %79 = add nsw i32 %78, 1, !dbg !670
  store i32 %79, i32* %11, align 4, !dbg !670
  %80 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !672
  %81 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %80, i32 0, i32 5, !dbg !673
  %82 = load i8, i8* %81, align 1, !dbg !673
  %83 = zext i8 %82 to i32, !dbg !672
  switch i32 %83, label %252 [
    i32 2, label %84
    i32 16, label %105
    i32 4, label %126
    i32 18, label %147
    i32 24, label %168
    i32 48, label %189
    i32 17, label %210
    i32 20, label %231
  ], !dbg !674

; <label>:84:                                     ; preds = %77
  %85 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !675
  %86 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %85, i32 0, i32 8, !dbg !677
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %86, i32 0, i32 0, !dbg !678
  %88 = load i32, i32* %87, align 4, !dbg !678
  %89 = zext i32 %88 to i64, !dbg !675
  %90 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !679
  %91 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %90, i32 0, i32 9, !dbg !680
  %92 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %91, i32 0, i32 0, !dbg !681
  %93 = load i32, i32* %92, align 4, !dbg !681
  %94 = zext i32 %93 to i64, !dbg !679
  %95 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !682
  %96 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %95, i32 0, i32 0, !dbg !683
  %97 = load i16, i16* %96, align 4, !dbg !683
  %98 = call zeroext i16 @htons(i16 zeroext %97) #1, !dbg !684
  %99 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !685
  %100 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %99, i32 0, i32 1, !dbg !686
  %101 = load i16, i16* %100, align 2, !dbg !686
  %102 = call zeroext i16 @htons(i16 zeroext %101) #1, !dbg !687
  %103 = load double, double* %3, align 8, !dbg !689
  %104 = call i32 @conn_len(i64 %89, i64 %94, i16 zeroext %98, i16 zeroext %102, double %103), !dbg !690
  br label %253, !dbg !692

; <label>:105:                                    ; preds = %77
  %106 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !693
  %107 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %106, i32 0, i32 8, !dbg !694
  %108 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %107, i32 0, i32 0, !dbg !695
  %109 = load i32, i32* %108, align 4, !dbg !695
  %110 = zext i32 %109 to i64, !dbg !693
  %111 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !696
  %112 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %111, i32 0, i32 9, !dbg !697
  %113 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %112, i32 0, i32 0, !dbg !698
  %114 = load i32, i32* %113, align 4, !dbg !698
  %115 = zext i32 %114 to i64, !dbg !696
  %116 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !699
  %117 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %116, i32 0, i32 0, !dbg !700
  %118 = load i16, i16* %117, align 4, !dbg !700
  %119 = call zeroext i16 @htons(i16 zeroext %118) #1, !dbg !701
  %120 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !702
  %121 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %120, i32 0, i32 1, !dbg !703
  %122 = load i16, i16* %121, align 2, !dbg !703
  %123 = call zeroext i16 @htons(i16 zeroext %122) #1, !dbg !704
  %124 = load double, double* %3, align 8, !dbg !705
  %125 = call i32 @conn_len(i64 %110, i64 %115, i16 zeroext %119, i16 zeroext %123, double %124), !dbg !706
  br label %253, !dbg !707

; <label>:126:                                    ; preds = %77
  %127 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !708
  %128 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %127, i32 0, i32 8, !dbg !709
  %129 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %128, i32 0, i32 0, !dbg !710
  %130 = load i32, i32* %129, align 4, !dbg !710
  %131 = zext i32 %130 to i64, !dbg !708
  %132 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !711
  %133 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %132, i32 0, i32 9, !dbg !712
  %134 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %133, i32 0, i32 0, !dbg !713
  %135 = load i32, i32* %134, align 4, !dbg !713
  %136 = zext i32 %135 to i64, !dbg !711
  %137 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !714
  %138 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %137, i32 0, i32 0, !dbg !715
  %139 = load i16, i16* %138, align 4, !dbg !715
  %140 = call zeroext i16 @htons(i16 zeroext %139) #1, !dbg !716
  %141 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !717
  %142 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %141, i32 0, i32 1, !dbg !718
  %143 = load i16, i16* %142, align 2, !dbg !718
  %144 = call zeroext i16 @htons(i16 zeroext %143) #1, !dbg !719
  %145 = load double, double* %3, align 8, !dbg !720
  %146 = call i32 @conn_len(i64 %131, i64 %136, i16 zeroext %140, i16 zeroext %144, double %145), !dbg !721
  br label %253, !dbg !722

; <label>:147:                                    ; preds = %77
  %148 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !723
  %149 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %148, i32 0, i32 8, !dbg !724
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %149, i32 0, i32 0, !dbg !725
  %151 = load i32, i32* %150, align 4, !dbg !725
  %152 = zext i32 %151 to i64, !dbg !723
  %153 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !726
  %154 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %153, i32 0, i32 9, !dbg !727
  %155 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %154, i32 0, i32 0, !dbg !728
  %156 = load i32, i32* %155, align 4, !dbg !728
  %157 = zext i32 %156 to i64, !dbg !726
  %158 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !729
  %159 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %158, i32 0, i32 0, !dbg !730
  %160 = load i16, i16* %159, align 4, !dbg !730
  %161 = call zeroext i16 @htons(i16 zeroext %160) #1, !dbg !731
  %162 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !732
  %163 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %162, i32 0, i32 1, !dbg !733
  %164 = load i16, i16* %163, align 2, !dbg !733
  %165 = call zeroext i16 @htons(i16 zeroext %164) #1, !dbg !734
  %166 = load double, double* %3, align 8, !dbg !735
  %167 = call i32 @conn_len(i64 %152, i64 %157, i16 zeroext %161, i16 zeroext %165, double %166), !dbg !736
  br label %253, !dbg !737

; <label>:168:                                    ; preds = %77
  %169 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !738
  %170 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %169, i32 0, i32 8, !dbg !739
  %171 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %170, i32 0, i32 0, !dbg !740
  %172 = load i32, i32* %171, align 4, !dbg !740
  %173 = zext i32 %172 to i64, !dbg !738
  %174 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !741
  %175 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %174, i32 0, i32 9, !dbg !742
  %176 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %175, i32 0, i32 0, !dbg !743
  %177 = load i32, i32* %176, align 4, !dbg !743
  %178 = zext i32 %177 to i64, !dbg !741
  %179 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !744
  %180 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %179, i32 0, i32 0, !dbg !745
  %181 = load i16, i16* %180, align 4, !dbg !745
  %182 = call zeroext i16 @htons(i16 zeroext %181) #1, !dbg !746
  %183 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !747
  %184 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %183, i32 0, i32 1, !dbg !748
  %185 = load i16, i16* %184, align 2, !dbg !748
  %186 = call zeroext i16 @htons(i16 zeroext %185) #1, !dbg !749
  %187 = load double, double* %3, align 8, !dbg !750
  %188 = call i32 @conn_len(i64 %173, i64 %178, i16 zeroext %182, i16 zeroext %186, double %187), !dbg !751
  br label %253, !dbg !752

; <label>:189:                                    ; preds = %77
  %190 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !753
  %191 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %190, i32 0, i32 8, !dbg !754
  %192 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %191, i32 0, i32 0, !dbg !755
  %193 = load i32, i32* %192, align 4, !dbg !755
  %194 = zext i32 %193 to i64, !dbg !753
  %195 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !756
  %196 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %195, i32 0, i32 9, !dbg !757
  %197 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %196, i32 0, i32 0, !dbg !758
  %198 = load i32, i32* %197, align 4, !dbg !758
  %199 = zext i32 %198 to i64, !dbg !756
  %200 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !759
  %201 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %200, i32 0, i32 0, !dbg !760
  %202 = load i16, i16* %201, align 4, !dbg !760
  %203 = call zeroext i16 @htons(i16 zeroext %202) #1, !dbg !761
  %204 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !762
  %205 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %204, i32 0, i32 1, !dbg !763
  %206 = load i16, i16* %205, align 2, !dbg !763
  %207 = call zeroext i16 @htons(i16 zeroext %206) #1, !dbg !764
  %208 = load double, double* %3, align 8, !dbg !765
  %209 = call i32 @conn_len(i64 %194, i64 %199, i16 zeroext %203, i16 zeroext %207, double %208), !dbg !766
  br label %253, !dbg !767

; <label>:210:                                    ; preds = %77
  %211 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !768
  %212 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %211, i32 0, i32 8, !dbg !769
  %213 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %212, i32 0, i32 0, !dbg !770
  %214 = load i32, i32* %213, align 4, !dbg !770
  %215 = zext i32 %214 to i64, !dbg !768
  %216 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !771
  %217 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %216, i32 0, i32 9, !dbg !772
  %218 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %217, i32 0, i32 0, !dbg !773
  %219 = load i32, i32* %218, align 4, !dbg !773
  %220 = zext i32 %219 to i64, !dbg !771
  %221 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !774
  %222 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %221, i32 0, i32 0, !dbg !775
  %223 = load i16, i16* %222, align 4, !dbg !775
  %224 = call zeroext i16 @htons(i16 zeroext %223) #1, !dbg !776
  %225 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !777
  %226 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %225, i32 0, i32 1, !dbg !778
  %227 = load i16, i16* %226, align 2, !dbg !778
  %228 = call zeroext i16 @htons(i16 zeroext %227) #1, !dbg !779
  %229 = load double, double* %3, align 8, !dbg !780
  %230 = call i32 @conn_len(i64 %215, i64 %220, i16 zeroext %224, i16 zeroext %228, double %229), !dbg !781
  br label %253, !dbg !782

; <label>:231:                                    ; preds = %77
  %232 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !783
  %233 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %232, i32 0, i32 8, !dbg !784
  %234 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %233, i32 0, i32 0, !dbg !785
  %235 = load i32, i32* %234, align 4, !dbg !785
  %236 = zext i32 %235 to i64, !dbg !783
  %237 = load %struct.libnet_ipv4_hdr*, %struct.libnet_ipv4_hdr** %18, align 8, !dbg !786
  %238 = getelementptr inbounds %struct.libnet_ipv4_hdr, %struct.libnet_ipv4_hdr* %237, i32 0, i32 9, !dbg !787
  %239 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %238, i32 0, i32 0, !dbg !788
  %240 = load i32, i32* %239, align 4, !dbg !788
  %241 = zext i32 %240 to i64, !dbg !786
  %242 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !789
  %243 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %242, i32 0, i32 0, !dbg !790
  %244 = load i16, i16* %243, align 4, !dbg !790
  %245 = call zeroext i16 @htons(i16 zeroext %244) #1, !dbg !791
  %246 = load %struct.libnet_tcp_hdr*, %struct.libnet_tcp_hdr** %19, align 8, !dbg !792
  %247 = getelementptr inbounds %struct.libnet_tcp_hdr, %struct.libnet_tcp_hdr* %246, i32 0, i32 1, !dbg !793
  %248 = load i16, i16* %247, align 2, !dbg !793
  %249 = call zeroext i16 @htons(i16 zeroext %248) #1, !dbg !794
  %250 = load double, double* %3, align 8, !dbg !795
  %251 = call i32 @conn_len(i64 %236, i64 %241, i16 zeroext %245, i16 zeroext %249, double %250), !dbg !796
  br label %253, !dbg !797

; <label>:252:                                    ; preds = %77
  br label %253, !dbg !798

; <label>:253:                                    ; preds = %252, %231, %210, %189, %168, %147, %126, %105, %84
  br label %282, !dbg !799

; <label>:254:                                    ; preds = %42
  %255 = load i32, i32* %12, align 4, !dbg !800
  %256 = add nsw i32 %255, 1, !dbg !800
  store i32 %256, i32* %12, align 4, !dbg !800
  br label %282, !dbg !801

; <label>:257:                                    ; preds = %42
  %258 = load i32, i32* %13, align 4, !dbg !802
  %259 = add nsw i32 %258, 1, !dbg !802
  store i32 %259, i32* %13, align 4, !dbg !802
  br label %282, !dbg !803

; <label>:260:                                    ; preds = %42
  %261 = load i32, i32* %14, align 4, !dbg !804
  %262 = add nsw i32 %261, 1, !dbg !804
  store i32 %262, i32* %14, align 4, !dbg !804
  br label %282, !dbg !805

; <label>:263:                                    ; preds = %42
  %264 = load i16, i16* %20, align 2, !dbg !806
  %265 = zext i16 %264 to i32, !dbg !806
  %266 = icmp eq i32 %265, 2054, !dbg !808
  br i1 %266, label %267, label %270, !dbg !809

; <label>:267:                                    ; preds = %263
  %268 = load i32, i32* %15, align 4, !dbg !810
  %269 = add nsw i32 %268, 1, !dbg !810
  store i32 %269, i32* %15, align 4, !dbg !810
  br label %281, !dbg !810

; <label>:270:                                    ; preds = %263
  %271 = load i16, i16* %20, align 2, !dbg !811
  %272 = zext i16 %271 to i32, !dbg !811
  %273 = icmp eq i32 %272, 32821, !dbg !813
  br i1 %273, label %274, label %277, !dbg !814

; <label>:274:                                    ; preds = %270
  %275 = load i32, i32* %16, align 4, !dbg !815
  %276 = add nsw i32 %275, 1, !dbg !815
  store i32 %276, i32* %16, align 4, !dbg !815
  br label %280, !dbg !815

; <label>:277:                                    ; preds = %270
  %278 = load i32, i32* %17, align 4, !dbg !816
  %279 = add nsw i32 %278, 1, !dbg !816
  store i32 %279, i32* %17, align 4, !dbg !816
  br label %280

; <label>:280:                                    ; preds = %277, %274
  br label %281

; <label>:281:                                    ; preds = %280, %267
  br label %282, !dbg !817

; <label>:282:                                    ; preds = %281, %260, %257, %254, %253
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 1, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0)), !dbg !818
  %283 = load i32, i32* %15, align 4, !dbg !819
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 3, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %283), !dbg !820
  %284 = load i32, i32* %16, align 4, !dbg !821
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 15, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %284), !dbg !822
  %285 = load i32, i32* %13, align 4, !dbg !823
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 27, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %285), !dbg !824
  %286 = load i32, i32* %14, align 4, !dbg !825
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 39, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %286), !dbg !826
  %287 = load i32, i32* %11, align 4, !dbg !827
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 51, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %287), !dbg !828
  %288 = load i32, i32* %12, align 4, !dbg !829
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 63, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %288), !dbg !830
  %289 = load i32, i32* %17, align 4, !dbg !831
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 75, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %289), !dbg !832
  %290 = load i16, i16* %1, align 2, !dbg !833
  %291 = zext i16 %290 to i32, !dbg !833
  switch i32 %291, label %296 [
    i32 0, label %292
    i32 1, label %293
    i32 2, label %294
    i32 3, label %295
  ], !dbg !834

; <label>:292:                                    ; preds = %282
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)), !dbg !835
  br label %296, !dbg !837

; <label>:293:                                    ; preds = %282
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)), !dbg !838
  br label %296, !dbg !839

; <label>:294:                                    ; preds = %282
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0)), !dbg !840
  br label %296, !dbg !841

; <label>:295:                                    ; preds = %282
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)), !dbg !842
  br label %296, !dbg !843

; <label>:296:                                    ; preds = %282, %295, %294, %293, %292
  %297 = load i16, i16* %1, align 2, !dbg !844
  %298 = zext i16 %297 to i32, !dbg !844
  %299 = icmp eq i32 %298, 3, !dbg !846
  br i1 %299, label %300, label %301, !dbg !847

; <label>:300:                                    ; preds = %296
  store i16 0, i16* %1, align 2, !dbg !848
  br label %304, !dbg !850

; <label>:301:                                    ; preds = %296
  %302 = load i16, i16* %1, align 2, !dbg !851
  %303 = add i16 %302, 1, !dbg !851
  store i16 %303, i16* %1, align 2, !dbg !851
  br label %304

; <label>:304:                                    ; preds = %301, %300
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 1, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0)), !dbg !852
  %305 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !853
  %306 = load i64, i64* %6, align 8, !dbg !854
  %307 = call i32 (i8*, i8*, ...) @sprintf(i8* %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %306) #7, !dbg !855
  %308 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !856
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 3, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %308), !dbg !857
  %309 = load double, double* %2, align 8, !dbg !858
  %310 = fcmp olt double %309, 1.000000e+00, !dbg !860
  br i1 %310, label %311, label %316, !dbg !861

; <label>:311:                                    ; preds = %304
  %312 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !862
  %313 = load double, double* %2, align 8, !dbg !863
  %314 = fmul double %313, 1.024000e+03, !dbg !864
  %315 = call i32 (i8*, i8*, ...) @sprintf(i8* %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), double %314) #7, !dbg !865
  br label %339, !dbg !865

; <label>:316:                                    ; preds = %304
  %317 = load double, double* %2, align 8, !dbg !866
  %318 = fcmp olt double %317, 1.024000e+03, !dbg !868
  br i1 %318, label %319, label %323, !dbg !869

; <label>:319:                                    ; preds = %316
  %320 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !870
  %321 = load double, double* %2, align 8, !dbg !871
  %322 = call i32 (i8*, i8*, ...) @sprintf(i8* %320, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %321) #7, !dbg !872
  br label %338, !dbg !872

; <label>:323:                                    ; preds = %316
  %324 = load double, double* %2, align 8, !dbg !873
  %325 = fcmp olt double %324, 1.048576e+06, !dbg !875
  br i1 %325, label %326, label %331, !dbg !876

; <label>:326:                                    ; preds = %323
  %327 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !877
  %328 = load double, double* %2, align 8, !dbg !878
  %329 = fdiv double %328, 1.024000e+03, !dbg !879
  %330 = call i32 (i8*, i8*, ...) @sprintf(i8* %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %329) #7, !dbg !880
  br label %337, !dbg !880

; <label>:331:                                    ; preds = %323
  %332 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !881
  %333 = load double, double* %2, align 8, !dbg !882
  %334 = fdiv double %333, 1.024000e+03, !dbg !883
  %335 = fmul double %334, 1.024000e+03, !dbg !884
  %336 = call i32 (i8*, i8*, ...) @sprintf(i8* %332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), double %335) #7, !dbg !885
  br label %337

; <label>:337:                                    ; preds = %331, %326
  br label %338

; <label>:338:                                    ; preds = %337, %319
  br label %339

; <label>:339:                                    ; preds = %338, %311
  %340 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !886
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 24, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %340), !dbg !887
  %341 = load double, double* @partial, align 8, !dbg !888
  %342 = load i64, i64* @ptime, align 8, !dbg !889
  %343 = uitofp i64 %342 to double, !dbg !889
  %344 = fdiv double %341, %343, !dbg !890
  store double %344, double* %4, align 8, !dbg !891
  %345 = load double, double* %4, align 8, !dbg !892
  %346 = fcmp olt double %345, 1.000000e+00, !dbg !894
  br i1 %346, label %347, label %354, !dbg !895

; <label>:347:                                    ; preds = %339
  %348 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !896
  %349 = load double, double* %4, align 8, !dbg !897
  %350 = fmul double %349, 1.024000e+03, !dbg !898
  %351 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0, !dbg !899
  %352 = load i8*, i8** %351, align 16, !dbg !899
  %353 = call i32 (i8*, i8*, ...) @sprintf(i8* %348, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), double %350, i8* %352) #7, !dbg !900
  br label %383, !dbg !900

; <label>:354:                                    ; preds = %339
  %355 = load double, double* %4, align 8, !dbg !901
  %356 = fcmp olt double %355, 1.024000e+03, !dbg !903
  br i1 %356, label %357, label %363, !dbg !904

; <label>:357:                                    ; preds = %354
  %358 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !905
  %359 = load double, double* %4, align 8, !dbg !906
  %360 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 1, !dbg !907
  %361 = load i8*, i8** %360, align 8, !dbg !907
  %362 = call i32 (i8*, i8*, ...) @sprintf(i8* %358, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %359, i8* %361) #7, !dbg !908
  br label %382, !dbg !908

; <label>:363:                                    ; preds = %354
  %364 = load double, double* %4, align 8, !dbg !909
  %365 = fcmp olt double %364, 1.048576e+06, !dbg !911
  br i1 %365, label %366, label %373, !dbg !912

; <label>:366:                                    ; preds = %363
  %367 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !913
  %368 = load double, double* %4, align 8, !dbg !914
  %369 = fdiv double %368, 1.024000e+03, !dbg !915
  %370 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 2, !dbg !916
  %371 = load i8*, i8** %370, align 16, !dbg !916
  %372 = call i32 (i8*, i8*, ...) @sprintf(i8* %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %369, i8* %371) #7, !dbg !917
  br label %381, !dbg !917

; <label>:373:                                    ; preds = %363
  %374 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !918
  %375 = load double, double* %4, align 8, !dbg !919
  %376 = fdiv double %375, 1.024000e+03, !dbg !920
  %377 = fmul double %376, 1.024000e+03, !dbg !921
  %378 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 3, !dbg !922
  %379 = load i8*, i8** %378, align 8, !dbg !922
  %380 = call i32 (i8*, i8*, ...) @sprintf(i8* %374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %377, i8* %379) #7, !dbg !923
  br label %381

; <label>:381:                                    ; preds = %373, %366
  br label %382

; <label>:382:                                    ; preds = %381, %357
  br label %383

; <label>:383:                                    ; preds = %382, %347
  %384 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !924
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 40, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %384), !dbg !925
  %385 = load double, double* %2, align 8, !dbg !926
  %386 = call i64 @time(i64* null) #7, !dbg !927
  %387 = load i64, i64* @begin, align 8, !dbg !928
  %388 = sub nsw i64 %386, %387, !dbg !929
  %389 = trunc i64 %388 to i32, !dbg !930
  %390 = sitofp i32 %389 to double, !dbg !931
  %391 = fdiv double %385, %390, !dbg !932
  store double %391, double* %5, align 8, !dbg !933
  %392 = load double, double* %5, align 8, !dbg !934
  %393 = fcmp olt double %392, 1.000000e+00, !dbg !936
  br i1 %393, label %394, label %401, !dbg !937

; <label>:394:                                    ; preds = %383
  %395 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !938
  %396 = load double, double* %5, align 8, !dbg !939
  %397 = fmul double %396, 1.024000e+03, !dbg !940
  %398 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 0, !dbg !941
  %399 = load i8*, i8** %398, align 16, !dbg !941
  %400 = call i32 (i8*, i8*, ...) @sprintf(i8* %395, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), double %397, i8* %399) #7, !dbg !942
  br label %430, !dbg !942

; <label>:401:                                    ; preds = %383
  %402 = load double, double* %5, align 8, !dbg !943
  %403 = fcmp olt double %402, 1.024000e+03, !dbg !945
  br i1 %403, label %404, label %410, !dbg !946

; <label>:404:                                    ; preds = %401
  %405 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !947
  %406 = load double, double* %5, align 8, !dbg !948
  %407 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 1, !dbg !949
  %408 = load i8*, i8** %407, align 8, !dbg !949
  %409 = call i32 (i8*, i8*, ...) @sprintf(i8* %405, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %406, i8* %408) #7, !dbg !950
  br label %429, !dbg !950

; <label>:410:                                    ; preds = %401
  %411 = load double, double* %5, align 8, !dbg !951
  %412 = fcmp olt double %411, 1.048576e+06, !dbg !953
  br i1 %412, label %413, label %420, !dbg !954

; <label>:413:                                    ; preds = %410
  %414 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !955
  %415 = load double, double* %5, align 8, !dbg !956
  %416 = fdiv double %415, 1.024000e+03, !dbg !957
  %417 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 2, !dbg !958
  %418 = load i8*, i8** %417, align 16, !dbg !958
  %419 = call i32 (i8*, i8*, ...) @sprintf(i8* %414, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %416, i8* %418) #7, !dbg !959
  br label %428, !dbg !959

; <label>:420:                                    ; preds = %410
  %421 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !960
  %422 = load double, double* %5, align 8, !dbg !961
  %423 = fdiv double %422, 1.024000e+03, !dbg !962
  %424 = fmul double %423, 1.024000e+03, !dbg !963
  %425 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 3, !dbg !964
  %426 = load i8*, i8** %425, align 8, !dbg !964
  %427 = call i32 (i8*, i8*, ...) @sprintf(i8* %421, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), double %424, i8* %426) #7, !dbg !965
  br label %428

; <label>:428:                                    ; preds = %420, %413
  br label %429

; <label>:429:                                    ; preds = %428, %404
  br label %430

; <label>:430:                                    ; preds = %429, %394
  %431 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i32 0, i32 0, !dbg !966
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 64, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %431), !dbg !967
  br label %432, !dbg !968

; <label>:432:                                    ; preds = %430, %38
  br label %35, !dbg !969, !llvm.loop !971

; <label>:433:                                    ; preds = %35
  %434 = load %struct.pcap*, %struct.pcap** @descr, align 8, !dbg !972
  call void @pcap_close(%struct.pcap* %434), !dbg !973
  ret void, !dbg !974
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare zeroext i16 @handle_ethernet(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @conn_len(i64, i64, i16 zeroext, i16 zeroext, double) #0 !dbg !975 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca [15 x i8], align 1
  store i64 %0, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !980, metadata !221), !dbg !981
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !982, metadata !221), !dbg !983
  store i16 %2, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !984, metadata !221), !dbg !985
  store i16 %3, i16* %10, align 2
  call void @llvm.dbg.declare(metadata i16* %10, metadata !986, metadata !221), !dbg !987
  store double %4, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !988, metadata !221), !dbg !989
  call void @llvm.dbg.declare(metadata i32* %12, metadata !990, metadata !221), !dbg !991
  call void @llvm.dbg.declare(metadata [15 x i8]* %13, metadata !992, metadata !221), !dbg !993
  store i32 0, i32* %12, align 4, !dbg !994
  br label %14, !dbg !996

; <label>:14:                                     ; preds = %163, %5
  %15 = load i32, i32* %12, align 4, !dbg !997
  %16 = icmp slt i32 %15, 100, !dbg !1000
  br i1 %16, label %17, label %166, !dbg !1001

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %7, align 8, !dbg !1002
  %19 = load i32, i32* %12, align 4, !dbg !1004
  %20 = sext i32 %19 to i64, !dbg !1005
  %21 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %20, !dbg !1005
  %22 = getelementptr inbounds %struct.statistics, %struct.statistics* %21, i32 0, i32 0, !dbg !1006
  %23 = load i64, i64* %22, align 8, !dbg !1006
  %24 = icmp eq i64 %18, %23, !dbg !1007
  br i1 %24, label %25, label %53, !dbg !1008

; <label>:25:                                     ; preds = %17
  %26 = load i64, i64* %8, align 8, !dbg !1009
  %27 = load i32, i32* %12, align 4, !dbg !1011
  %28 = sext i32 %27 to i64, !dbg !1012
  %29 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %28, !dbg !1012
  %30 = getelementptr inbounds %struct.statistics, %struct.statistics* %29, i32 0, i32 1, !dbg !1013
  %31 = load i64, i64* %30, align 8, !dbg !1013
  %32 = icmp eq i64 %26, %31, !dbg !1014
  br i1 %32, label %33, label %53, !dbg !1015

; <label>:33:                                     ; preds = %25
  %34 = load i16, i16* %9, align 2, !dbg !1016
  %35 = zext i16 %34 to i32, !dbg !1016
  %36 = load i32, i32* %12, align 4, !dbg !1018
  %37 = sext i32 %36 to i64, !dbg !1019
  %38 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %37, !dbg !1019
  %39 = getelementptr inbounds %struct.statistics, %struct.statistics* %38, i32 0, i32 2, !dbg !1020
  %40 = load i16, i16* %39, align 8, !dbg !1020
  %41 = zext i16 %40 to i32, !dbg !1019
  %42 = icmp eq i32 %35, %41, !dbg !1021
  br i1 %42, label %43, label %53, !dbg !1022

; <label>:43:                                     ; preds = %33
  %44 = load i16, i16* %10, align 2, !dbg !1023
  %45 = zext i16 %44 to i32, !dbg !1023
  %46 = load i32, i32* %12, align 4, !dbg !1025
  %47 = sext i32 %46 to i64, !dbg !1026
  %48 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %47, !dbg !1026
  %49 = getelementptr inbounds %struct.statistics, %struct.statistics* %48, i32 0, i32 3, !dbg !1027
  %50 = load i16, i16* %49, align 2, !dbg !1027
  %51 = zext i16 %50 to i32, !dbg !1026
  %52 = icmp eq i32 %45, %51, !dbg !1028
  br i1 %52, label %89, label %53, !dbg !1029

; <label>:53:                                     ; preds = %43, %33, %25, %17
  %54 = load i64, i64* %7, align 8, !dbg !1030
  %55 = load i32, i32* %12, align 4, !dbg !1032
  %56 = sext i32 %55 to i64, !dbg !1033
  %57 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %56, !dbg !1033
  %58 = getelementptr inbounds %struct.statistics, %struct.statistics* %57, i32 0, i32 1, !dbg !1034
  %59 = load i64, i64* %58, align 8, !dbg !1034
  %60 = icmp eq i64 %54, %59, !dbg !1035
  br i1 %60, label %61, label %162, !dbg !1036

; <label>:61:                                     ; preds = %53
  %62 = load i64, i64* %8, align 8, !dbg !1037
  %63 = load i32, i32* %12, align 4, !dbg !1039
  %64 = sext i32 %63 to i64, !dbg !1040
  %65 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %64, !dbg !1040
  %66 = getelementptr inbounds %struct.statistics, %struct.statistics* %65, i32 0, i32 0, !dbg !1041
  %67 = load i64, i64* %66, align 8, !dbg !1041
  %68 = icmp eq i64 %62, %67, !dbg !1042
  br i1 %68, label %69, label %162, !dbg !1043

; <label>:69:                                     ; preds = %61
  %70 = load i16, i16* %9, align 2, !dbg !1044
  %71 = zext i16 %70 to i32, !dbg !1044
  %72 = load i32, i32* %12, align 4, !dbg !1046
  %73 = sext i32 %72 to i64, !dbg !1047
  %74 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %73, !dbg !1047
  %75 = getelementptr inbounds %struct.statistics, %struct.statistics* %74, i32 0, i32 3, !dbg !1048
  %76 = load i16, i16* %75, align 2, !dbg !1048
  %77 = zext i16 %76 to i32, !dbg !1047
  %78 = icmp eq i32 %71, %77, !dbg !1049
  br i1 %78, label %79, label %162, !dbg !1050

; <label>:79:                                     ; preds = %69
  %80 = load i16, i16* %10, align 2, !dbg !1051
  %81 = zext i16 %80 to i32, !dbg !1051
  %82 = load i32, i32* %12, align 4, !dbg !1053
  %83 = sext i32 %82 to i64, !dbg !1054
  %84 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %83, !dbg !1054
  %85 = getelementptr inbounds %struct.statistics, %struct.statistics* %84, i32 0, i32 2, !dbg !1055
  %86 = load i16, i16* %85, align 8, !dbg !1055
  %87 = zext i16 %86 to i32, !dbg !1054
  %88 = icmp eq i32 %81, %87, !dbg !1056
  br i1 %88, label %89, label %162, !dbg !1057

; <label>:89:                                     ; preds = %79, %43
  %90 = load double, double* %11, align 8, !dbg !1058
  %91 = load i32, i32* %12, align 4, !dbg !1060
  %92 = sext i32 %91 to i64, !dbg !1061
  %93 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %92, !dbg !1061
  %94 = getelementptr inbounds %struct.statistics, %struct.statistics* %93, i32 0, i32 4, !dbg !1062
  %95 = load double, double* %94, align 8, !dbg !1063
  %96 = fadd double %95, %90, !dbg !1063
  store double %96, double* %94, align 8, !dbg !1063
  %97 = load i32, i32* %12, align 4, !dbg !1064
  %98 = sext i32 %97 to i64, !dbg !1066
  %99 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %98, !dbg !1066
  %100 = getelementptr inbounds %struct.statistics, %struct.statistics* %99, i32 0, i32 4, !dbg !1067
  %101 = load double, double* %100, align 8, !dbg !1067
  %102 = fcmp olt double %101, 1.000000e+00, !dbg !1068
  br i1 %102, label %103, label %112, !dbg !1069

; <label>:103:                                    ; preds = %89
  %104 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1070
  %105 = load i32, i32* %12, align 4, !dbg !1071
  %106 = sext i32 %105 to i64, !dbg !1072
  %107 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %106, !dbg !1072
  %108 = getelementptr inbounds %struct.statistics, %struct.statistics* %107, i32 0, i32 4, !dbg !1073
  %109 = load double, double* %108, align 8, !dbg !1073
  %110 = fmul double %109, 1.024000e+03, !dbg !1074
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), double %110) #7, !dbg !1075
  br label %155, !dbg !1075

; <label>:112:                                    ; preds = %89
  %113 = load i32, i32* %12, align 4, !dbg !1076
  %114 = sext i32 %113 to i64, !dbg !1078
  %115 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %114, !dbg !1078
  %116 = getelementptr inbounds %struct.statistics, %struct.statistics* %115, i32 0, i32 4, !dbg !1079
  %117 = load double, double* %116, align 8, !dbg !1079
  %118 = fcmp olt double %117, 1.024000e+03, !dbg !1080
  br i1 %118, label %119, label %127, !dbg !1081

; <label>:119:                                    ; preds = %112
  %120 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1082
  %121 = load i32, i32* %12, align 4, !dbg !1083
  %122 = sext i32 %121 to i64, !dbg !1084
  %123 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %122, !dbg !1084
  %124 = getelementptr inbounds %struct.statistics, %struct.statistics* %123, i32 0, i32 4, !dbg !1085
  %125 = load double, double* %124, align 8, !dbg !1085
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %125) #7, !dbg !1086
  br label %154, !dbg !1086

; <label>:127:                                    ; preds = %112
  %128 = load i32, i32* %12, align 4, !dbg !1087
  %129 = sext i32 %128 to i64, !dbg !1089
  %130 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %129, !dbg !1089
  %131 = getelementptr inbounds %struct.statistics, %struct.statistics* %130, i32 0, i32 4, !dbg !1090
  %132 = load double, double* %131, align 8, !dbg !1090
  %133 = fcmp olt double %132, 1.048576e+06, !dbg !1091
  br i1 %133, label %134, label %143, !dbg !1092

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1093
  %136 = load i32, i32* %12, align 4, !dbg !1094
  %137 = sext i32 %136 to i64, !dbg !1095
  %138 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %137, !dbg !1095
  %139 = getelementptr inbounds %struct.statistics, %struct.statistics* %138, i32 0, i32 4, !dbg !1096
  %140 = load double, double* %139, align 8, !dbg !1096
  %141 = fdiv double %140, 1.024000e+03, !dbg !1097
  %142 = call i32 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %141) #7, !dbg !1098
  br label %153, !dbg !1098

; <label>:143:                                    ; preds = %127
  %144 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1099
  %145 = load i32, i32* %12, align 4, !dbg !1100
  %146 = sext i32 %145 to i64, !dbg !1101
  %147 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %146, !dbg !1101
  %148 = getelementptr inbounds %struct.statistics, %struct.statistics* %147, i32 0, i32 4, !dbg !1102
  %149 = load double, double* %148, align 8, !dbg !1102
  %150 = fdiv double %149, 1.024000e+03, !dbg !1103
  %151 = fmul double %150, 1.024000e+03, !dbg !1104
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), double %151) #7, !dbg !1105
  br label %153

; <label>:153:                                    ; preds = %143, %134
  br label %154

; <label>:154:                                    ; preds = %153, %119
  br label %155

; <label>:155:                                    ; preds = %154, %103
  %156 = load i32, i32* %12, align 4, !dbg !1106
  %157 = sext i32 %156 to i64, !dbg !1107
  %158 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %157, !dbg !1107
  %159 = getelementptr inbounds %struct.statistics, %struct.statistics* %158, i32 0, i32 5, !dbg !1108
  %160 = load i32, i32* %159, align 8, !dbg !1108
  %161 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1109
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %160, i32 60, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %161), !dbg !1110
  store i32 0, i32* %6, align 4, !dbg !1111
  br label %312, !dbg !1111

; <label>:162:                                    ; preds = %79, %69, %61, %53
  br label %163, !dbg !1112

; <label>:163:                                    ; preds = %162
  %164 = load i32, i32* %12, align 4, !dbg !1114
  %165 = add nsw i32 %164, 1, !dbg !1114
  store i32 %165, i32* %12, align 4, !dbg !1114
  br label %14, !dbg !1116, !llvm.loop !1117

; <label>:166:                                    ; preds = %14
  store i32 0, i32* %12, align 4, !dbg !1119
  br label %167, !dbg !1121

; <label>:167:                                    ; preds = %308, %166
  %168 = load i32, i32* %12, align 4, !dbg !1122
  %169 = icmp slt i32 %168, 100, !dbg !1125
  br i1 %169, label %170, label %311, !dbg !1126

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %12, align 4, !dbg !1127
  %172 = sext i32 %171 to i64, !dbg !1130
  %173 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %172, !dbg !1130
  %174 = getelementptr inbounds %struct.statistics, %struct.statistics* %173, i32 0, i32 0, !dbg !1131
  %175 = load i64, i64* %174, align 8, !dbg !1131
  %176 = icmp ne i64 %175, 0, !dbg !1130
  br i1 %176, label %177, label %178, !dbg !1132

; <label>:177:                                    ; preds = %170
  br label %308, !dbg !1133

; <label>:178:                                    ; preds = %170
  %179 = load i64, i64* %7, align 8, !dbg !1135
  %180 = load i32, i32* %12, align 4, !dbg !1137
  %181 = sext i32 %180 to i64, !dbg !1138
  %182 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %181, !dbg !1138
  %183 = getelementptr inbounds %struct.statistics, %struct.statistics* %182, i32 0, i32 0, !dbg !1139
  store i64 %179, i64* %183, align 8, !dbg !1140
  %184 = load i64, i64* %8, align 8, !dbg !1141
  %185 = load i32, i32* %12, align 4, !dbg !1142
  %186 = sext i32 %185 to i64, !dbg !1143
  %187 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %186, !dbg !1143
  %188 = getelementptr inbounds %struct.statistics, %struct.statistics* %187, i32 0, i32 1, !dbg !1144
  store i64 %184, i64* %188, align 8, !dbg !1145
  %189 = load i16, i16* %9, align 2, !dbg !1146
  %190 = load i32, i32* %12, align 4, !dbg !1147
  %191 = sext i32 %190 to i64, !dbg !1148
  %192 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %191, !dbg !1148
  %193 = getelementptr inbounds %struct.statistics, %struct.statistics* %192, i32 0, i32 2, !dbg !1149
  store i16 %189, i16* %193, align 8, !dbg !1150
  %194 = load i16, i16* %10, align 2, !dbg !1151
  %195 = load i32, i32* %12, align 4, !dbg !1152
  %196 = sext i32 %195 to i64, !dbg !1153
  %197 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %196, !dbg !1153
  %198 = getelementptr inbounds %struct.statistics, %struct.statistics* %197, i32 0, i32 3, !dbg !1154
  store i16 %194, i16* %198, align 2, !dbg !1155
  %199 = load double, double* %11, align 8, !dbg !1156
  %200 = load i32, i32* %12, align 4, !dbg !1157
  %201 = sext i32 %200 to i64, !dbg !1158
  %202 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %201, !dbg !1158
  %203 = getelementptr inbounds %struct.statistics, %struct.statistics* %202, i32 0, i32 4, !dbg !1159
  store double %199, double* %203, align 8, !dbg !1160
  %204 = load i32, i32* @liness, align 4, !dbg !1161
  %205 = load i32, i32* %12, align 4, !dbg !1162
  %206 = sext i32 %205 to i64, !dbg !1163
  %207 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %206, !dbg !1163
  %208 = getelementptr inbounds %struct.statistics, %struct.statistics* %207, i32 0, i32 0, !dbg !1164
  %209 = load i64, i64* %208, align 8, !dbg !1164
  %210 = trunc i64 %209 to i32, !dbg !1163
  %211 = call i8* @libnet_addr2name4(i32 %210, i8 zeroext 0), !dbg !1165
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %204, i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %211), !dbg !1166
  %212 = load i32, i32* @liness, align 4, !dbg !1168
  %213 = load i32, i32* %12, align 4, !dbg !1169
  %214 = sext i32 %213 to i64, !dbg !1170
  %215 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %214, !dbg !1170
  %216 = getelementptr inbounds %struct.statistics, %struct.statistics* %215, i32 0, i32 2, !dbg !1171
  %217 = load i16, i16* %216, align 8, !dbg !1171
  %218 = zext i16 %217 to i32, !dbg !1170
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %212, i32 18, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %218), !dbg !1172
  %219 = load i32, i32* @liness, align 4, !dbg !1173
  %220 = load i32, i32* %12, align 4, !dbg !1174
  %221 = sext i32 %220 to i64, !dbg !1175
  %222 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %221, !dbg !1175
  %223 = getelementptr inbounds %struct.statistics, %struct.statistics* %222, i32 0, i32 1, !dbg !1176
  %224 = load i64, i64* %223, align 8, !dbg !1176
  %225 = trunc i64 %224 to i32, !dbg !1175
  %226 = call i8* @libnet_addr2name4(i32 %225, i8 zeroext 0), !dbg !1177
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %219, i32 29, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %226), !dbg !1178
  %227 = load i32, i32* @liness, align 4, !dbg !1179
  %228 = load i32, i32* %12, align 4, !dbg !1180
  %229 = sext i32 %228 to i64, !dbg !1181
  %230 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %229, !dbg !1181
  %231 = getelementptr inbounds %struct.statistics, %struct.statistics* %230, i32 0, i32 3, !dbg !1182
  %232 = load i16, i16* %231, align 2, !dbg !1182
  %233 = zext i16 %232 to i32, !dbg !1181
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %227, i32 49, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 %233), !dbg !1183
  %234 = load i32, i32* %12, align 4, !dbg !1184
  %235 = sext i32 %234 to i64, !dbg !1186
  %236 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %235, !dbg !1186
  %237 = getelementptr inbounds %struct.statistics, %struct.statistics* %236, i32 0, i32 4, !dbg !1187
  %238 = load double, double* %237, align 8, !dbg !1187
  %239 = fcmp olt double %238, 1.000000e+00, !dbg !1188
  br i1 %239, label %240, label %249, !dbg !1189

; <label>:240:                                    ; preds = %178
  %241 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1190
  %242 = load i32, i32* %12, align 4, !dbg !1191
  %243 = sext i32 %242 to i64, !dbg !1192
  %244 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %243, !dbg !1192
  %245 = getelementptr inbounds %struct.statistics, %struct.statistics* %244, i32 0, i32 4, !dbg !1193
  %246 = load double, double* %245, align 8, !dbg !1193
  %247 = fmul double %246, 1.024000e+03, !dbg !1194
  %248 = call i32 (i8*, i8*, ...) @sprintf(i8* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), double %247) #7, !dbg !1195
  br label %292, !dbg !1195

; <label>:249:                                    ; preds = %178
  %250 = load i32, i32* %12, align 4, !dbg !1196
  %251 = sext i32 %250 to i64, !dbg !1198
  %252 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %251, !dbg !1198
  %253 = getelementptr inbounds %struct.statistics, %struct.statistics* %252, i32 0, i32 4, !dbg !1199
  %254 = load double, double* %253, align 8, !dbg !1199
  %255 = fcmp olt double %254, 1.024000e+03, !dbg !1200
  br i1 %255, label %256, label %264, !dbg !1201

; <label>:256:                                    ; preds = %249
  %257 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1202
  %258 = load i32, i32* %12, align 4, !dbg !1203
  %259 = sext i32 %258 to i64, !dbg !1204
  %260 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %259, !dbg !1204
  %261 = getelementptr inbounds %struct.statistics, %struct.statistics* %260, i32 0, i32 4, !dbg !1205
  %262 = load double, double* %261, align 8, !dbg !1205
  %263 = call i32 (i8*, i8*, ...) @sprintf(i8* %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), double %262) #7, !dbg !1206
  br label %291, !dbg !1206

; <label>:264:                                    ; preds = %249
  %265 = load i32, i32* %12, align 4, !dbg !1207
  %266 = sext i32 %265 to i64, !dbg !1209
  %267 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %266, !dbg !1209
  %268 = getelementptr inbounds %struct.statistics, %struct.statistics* %267, i32 0, i32 4, !dbg !1210
  %269 = load double, double* %268, align 8, !dbg !1210
  %270 = fcmp olt double %269, 1.048576e+06, !dbg !1211
  br i1 %270, label %271, label %280, !dbg !1212

; <label>:271:                                    ; preds = %264
  %272 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1213
  %273 = load i32, i32* %12, align 4, !dbg !1214
  %274 = sext i32 %273 to i64, !dbg !1215
  %275 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %274, !dbg !1215
  %276 = getelementptr inbounds %struct.statistics, %struct.statistics* %275, i32 0, i32 4, !dbg !1216
  %277 = load double, double* %276, align 8, !dbg !1216
  %278 = fdiv double %277, 1.024000e+03, !dbg !1217
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), double %278) #7, !dbg !1218
  br label %290, !dbg !1218

; <label>:280:                                    ; preds = %264
  %281 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1219
  %282 = load i32, i32* %12, align 4, !dbg !1220
  %283 = sext i32 %282 to i64, !dbg !1221
  %284 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %283, !dbg !1221
  %285 = getelementptr inbounds %struct.statistics, %struct.statistics* %284, i32 0, i32 4, !dbg !1222
  %286 = load double, double* %285, align 8, !dbg !1222
  %287 = fdiv double %286, 1.024000e+03, !dbg !1223
  %288 = fmul double %287, 1.024000e+03, !dbg !1224
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), double %288) #7, !dbg !1225
  br label %290

; <label>:290:                                    ; preds = %280, %271
  br label %291

; <label>:291:                                    ; preds = %290, %256
  br label %292

; <label>:292:                                    ; preds = %291, %240
  %293 = load i32, i32* %12, align 4, !dbg !1226
  %294 = sext i32 %293 to i64, !dbg !1227
  %295 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %294, !dbg !1227
  %296 = getelementptr inbounds %struct.statistics, %struct.statistics* %295, i32 0, i32 5, !dbg !1228
  %297 = load i32, i32* %296, align 8, !dbg !1228
  %298 = getelementptr inbounds [15 x i8], [15 x i8]* %13, i32 0, i32 0, !dbg !1229
  call void (i8*, i32, i32, i32, i8*, ...) @n_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %297, i32 60, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* %298), !dbg !1230
  %299 = load i32, i32* @liness, align 4, !dbg !1231
  %300 = load i32, i32* %12, align 4, !dbg !1232
  %301 = sext i32 %300 to i64, !dbg !1233
  %302 = getelementptr inbounds [100 x %struct.statistics], [100 x %struct.statistics]* @stat_conn, i64 0, i64 %301, !dbg !1233
  %303 = getelementptr inbounds %struct.statistics, %struct.statistics* %302, i32 0, i32 5, !dbg !1234
  store i32 %299, i32* %303, align 8, !dbg !1235
  %304 = load i32, i32* @nconns, align 4, !dbg !1236
  %305 = add nsw i32 %304, 1, !dbg !1236
  store i32 %305, i32* @nconns, align 4, !dbg !1236
  %306 = load i32, i32* @liness, align 4, !dbg !1237
  %307 = add nsw i32 %306, 1, !dbg !1237
  store i32 %307, i32* @liness, align 4, !dbg !1237
  store i32 1, i32* %6, align 4, !dbg !1238
  br label %312, !dbg !1238

; <label>:308:                                    ; preds = %177
  %309 = load i32, i32* %12, align 4, !dbg !1239
  %310 = add nsw i32 %309, 1, !dbg !1239
  store i32 %310, i32* %12, align 4, !dbg !1239
  br label %167, !dbg !1241, !llvm.loop !1242

; <label>:311:                                    ; preds = %167
  store i32 0, i32* %6, align 4, !dbg !1244
  br label %312, !dbg !1244

; <label>:312:                                    ; preds = %311, %292, %155
  %313 = load i32, i32* %6, align 4, !dbg !1245
  ret i32 %313, !dbg !1245
}

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #6

declare void @pcap_close(%struct.pcap*) #2

declare i8* @libnet_addr2name4(i32, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define void @ptimecounting() #0 !dbg !1246 {
  br label %1, !dbg !1247

; <label>:1:                                      ; preds = %9, %0
  %2 = call i32 @sleep(i32 1), !dbg !1248
  %3 = load i64, i64* @ptime, align 8, !dbg !1252
  %4 = icmp eq i64 %3, 10, !dbg !1254
  br i1 %4, label %5, label %6, !dbg !1255

; <label>:5:                                      ; preds = %1
  store i64 1, i64* @ptime, align 8, !dbg !1256
  store double 0.000000e+00, double* @partial, align 8, !dbg !1258
  br label %9, !dbg !1259

; <label>:6:                                      ; preds = %1
  %7 = load i64, i64* @ptime, align 8, !dbg !1260
  %8 = add i64 %7, 1, !dbg !1260
  store i64 %8, i64* @ptime, align 8, !dbg !1260
  br label %9

; <label>:9:                                      ; preds = %6, %5
  br label %1, !dbg !1261, !llvm.loop !1263
                                                  ; No predecessors!
  ret void, !dbg !1264
}

declare i32 @sleep(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!214, !215}
!llvm.ident = !{!216}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !52)
!1 = !DIFile(filename: "[inter]bcount.o.i", directory: "/home/lichi/Desktop/nast/[task]nast")
!2 = !{}
!3 = !{!4, !5, !11, !12, !13, !39}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !7, line: 33, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !9, line: 30, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!10 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ipv4_hdr", file: !15, line: 666, size: 160, align: 32, elements: !16)
!15 = !DIFile(filename: "/usr/local/include/libnet/libnet-headers.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!16 = !{!17, !20, !21, !22, !25, !26, !27, !28, !29, !30, !38}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ip_hl", scope: !14, file: !15, line: 669, baseType: !18, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 48, baseType: !10)
!19 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ip_v", scope: !14, file: !15, line: 670, baseType: !18, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ip_tos", scope: !14, file: !15, line: 676, baseType: !18, size: 8, align: 8, offset: 8)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ip_len", scope: !14, file: !15, line: 689, baseType: !23, size: 16, align: 16, offset: 16)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !19, line: 49, baseType: !24)
!24 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !14, file: !15, line: 690, baseType: !23, size: 16, align: 16, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ip_off", scope: !14, file: !15, line: 691, baseType: !23, size: 16, align: 16, offset: 48)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl", scope: !14, file: !15, line: 704, baseType: !18, size: 8, align: 8, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ip_p", scope: !14, file: !15, line: 705, baseType: !18, size: 8, align: 8, offset: 72)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ip_sum", scope: !14, file: !15, line: 706, baseType: !23, size: 16, align: 16, offset: 80)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ip_src", scope: !14, file: !15, line: 707, baseType: !31, size: 32, align: 32, offset: 96)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !32, line: 31, size: 32, align: 32, elements: !33)
!32 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !31, file: !32, line: 33, baseType: !35, size: 32, align: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !32, line: 30, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 51, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ip_dst", scope: !14, file: !15, line: 707, baseType: !31, size: 32, align: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_tcp_hdr", file: !15, line: 1653, size: 160, align: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "th_sport", scope: !40, file: !15, line: 1655, baseType: !23, size: 16, align: 16)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "th_dport", scope: !40, file: !15, line: 1656, baseType: !23, size: 16, align: 16, offset: 16)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "th_seq", scope: !40, file: !15, line: 1657, baseType: !36, size: 32, align: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "th_ack", scope: !40, file: !15, line: 1658, baseType: !36, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "th_x2", scope: !40, file: !15, line: 1660, baseType: !18, size: 4, align: 8, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "th_off", scope: !40, file: !15, line: 1661, baseType: !18, size: 4, align: 8, offset: 100, flags: DIFlagBitField, extraData: i64 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "th_flags", scope: !40, file: !15, line: 1667, baseType: !18, size: 8, align: 8, offset: 104)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "th_win", scope: !40, file: !15, line: 1692, baseType: !23, size: 16, align: 16, offset: 112)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "th_sum", scope: !40, file: !15, line: 1693, baseType: !23, size: 16, align: 16, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "th_urp", scope: !40, file: !15, line: 1694, baseType: !23, size: 16, align: 16, offset: 144)
!52 = !{!53, !55, !56, !117, !119, !120, !121, !122, !140, !144, !148, !154, !155, !156, !157, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !188, !189, !192, !196, !197, !198, !199, !211, !212, !213}
!53 = distinct !DIGlobalVariable(name: "nconns", scope: !0, file: !54, line: 43, type: !12, isLocal: false, isDefinition: true, variable: i32* @nconns)
!54 = !DIFile(filename: "bcount.c", directory: "/home/lichi/Desktop/nast/[task]nast")
!55 = distinct !DIGlobalVariable(name: "liness", scope: !0, file: !54, line: 44, type: !12, isLocal: false, isDefinition: true, variable: i32* @liness)
!56 = distinct !DIGlobalVariable(name: "logd", scope: !0, file: !57, line: 98, type: !58, isLocal: false, isDefinition: true, variable: %struct._IO_FILE** @logd)
!57 = !DIFile(filename: "include/nast.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 48, baseType: !61)
!60 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 241, size: 1728, align: 64, elements: !63)
!62 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!63 = !{!64, !65, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !86, !87, !88, !89, !92, !93, !95, !99, !102, !104, !105, !106, !107, !108, !112, !113}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !62, line: 242, baseType: !12, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !61, file: !62, line: 247, baseType: !66, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !61, file: !62, line: 248, baseType: !66, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !61, file: !62, line: 249, baseType: !66, size: 64, align: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !61, file: !62, line: 250, baseType: !66, size: 64, align: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !61, file: !62, line: 251, baseType: !66, size: 64, align: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !61, file: !62, line: 252, baseType: !66, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !61, file: !62, line: 253, baseType: !66, size: 64, align: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !61, file: !62, line: 254, baseType: !66, size: 64, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !61, file: !62, line: 256, baseType: !66, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !61, file: !62, line: 257, baseType: !66, size: 64, align: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !61, file: !62, line: 258, baseType: !66, size: 64, align: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !61, file: !62, line: 260, baseType: !79, size: 64, align: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !62, line: 156, size: 192, align: 64, elements: !81)
!81 = !{!82, !83, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !80, file: !62, line: 157, baseType: !79, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !80, file: !62, line: 158, baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !80, file: !62, line: 162, baseType: !12, size: 32, align: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !61, file: !62, line: 262, baseType: !84, size: 64, align: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !61, file: !62, line: 264, baseType: !12, size: 32, align: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !62, line: 268, baseType: !12, size: 32, align: 32, offset: 928)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !61, file: !62, line: 270, baseType: !90, size: 64, align: 64, offset: 960)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 131, baseType: !91)
!91 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !61, file: !62, line: 274, baseType: !24, size: 16, align: 16, offset: 1024)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !61, file: !62, line: 275, baseType: !94, size: 8, align: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !61, file: !62, line: 276, baseType: !96, size: 8, align: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, align: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !62, line: 280, baseType: !100, size: 64, align: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !62, line: 150, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !62, line: 289, baseType: !103, size: 64, align: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !9, line: 132, baseType: !91)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !61, file: !62, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !61, file: !62, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !61, file: !62, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !61, file: !62, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !61, file: !62, line: 302, baseType: !109, size: 64, align: 64, offset: 1472)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 216, baseType: !111)
!110 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!111 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !61, file: !62, line: 303, baseType: !12, size: 32, align: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !61, file: !62, line: 305, baseType: !114, size: 160, align: 8, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = distinct !DIGlobalVariable(name: "offset", scope: !0, file: !57, line: 99, type: !118, isLocal: false, isDefinition: true, variable: i16* @offset)
!118 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!119 = distinct !DIGlobalVariable(name: "npkt", scope: !0, file: !57, line: 100, type: !12, isLocal: false, isDefinition: true, variable: i32* @npkt)
!120 = distinct !DIGlobalVariable(name: "packet", scope: !0, file: !57, line: 101, type: !5, isLocal: false, isDefinition: true, variable: i8** @packet)
!121 = distinct !DIGlobalVariable(name: "buf", scope: !0, file: !57, line: 102, type: !5, isLocal: false, isDefinition: true, variable: i8** @buf)
!122 = distinct !DIGlobalVariable(name: "hdr", scope: !0, file: !57, line: 103, type: !123, isLocal: false, isDefinition: true, variable: %struct.pcap_pkthdr* @hdr)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_pkthdr", file: !124, line: 199, size: 192, align: 64, elements: !125)
!124 = !DIFile(filename: "/usr/local/include/pcap/pcap.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!125 = !{!126, !134, !139}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !123, file: !124, line: 200, baseType: !127, size: 128, align: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !128, line: 30, size: 128, align: 64, elements: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !127, file: !128, line: 32, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !9, line: 139, baseType: !91)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !127, file: !128, line: 33, baseType: !133, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !9, line: 141, baseType: !91)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "caplen", scope: !123, file: !124, line: 201, baseType: !135, size: 32, align: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "bpf_u_int32", file: !136, line: 85, baseType: !137)
!136 = !DIFile(filename: "/usr/local/include/pcap/bpf.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !7, line: 35, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !9, line: 32, baseType: !37)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !123, file: !124, line: 202, baseType: !135, size: 32, align: 32, offset: 160)
!140 = distinct !DIGlobalVariable(name: "descr", scope: !0, file: !57, line: 104, type: !141, isLocal: false, isDefinition: true, variable: %struct.pcap** @descr)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_t", file: !124, line: 118, baseType: !143)
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap", file: !124, line: 118, flags: DIFlagFwdDecl)
!144 = distinct !DIGlobalVariable(name: "dumper", scope: !0, file: !57, line: 105, type: !145, isLocal: false, isDefinition: true, variable: %struct.pcap_dumper** @dumper)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcap_dumper_t", file: !124, line: 119, baseType: !147)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_dumper", file: !124, line: 119, flags: DIFlagFwdDecl)
!148 = distinct !DIGlobalVariable(name: "statistic", scope: !0, file: !57, line: 106, type: !149, isLocal: false, isDefinition: true, variable: %struct.pcap_stat* @statistic)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcap_stat", file: !124, line: 208, size: 96, align: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ps_recv", scope: !149, file: !124, line: 209, baseType: !137, size: 32, align: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ps_drop", scope: !149, file: !124, line: 210, baseType: !137, size: 32, align: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ps_ifdrop", scope: !149, file: !124, line: 211, baseType: !137, size: 32, align: 32, offset: 64)
!154 = distinct !DIGlobalVariable(name: "maskp", scope: !0, file: !57, line: 107, type: !135, isLocal: false, isDefinition: true, variable: i32* @maskp)
!155 = distinct !DIGlobalVariable(name: "netp", scope: !0, file: !57, line: 108, type: !135, isLocal: false, isDefinition: true, variable: i32* @netp)
!156 = distinct !DIGlobalVariable(name: "datalink", scope: !0, file: !57, line: 109, type: !12, isLocal: false, isDefinition: true, variable: i32* @datalink)
!157 = distinct !DIGlobalVariable(name: "fp", scope: !0, file: !57, line: 110, type: !158, isLocal: false, isDefinition: true, variable: %struct.bpf_program* @fp)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_program", file: !136, line: 104, size: 128, align: 64, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bf_len", scope: !158, file: !136, line: 105, baseType: !137, size: 32, align: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bf_insns", scope: !158, file: !136, line: 106, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_insn", file: !136, line: 234, size: 64, align: 32, elements: !164)
!164 = !{!165, !168, !169, !170}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !163, file: !136, line: 235, baseType: !166, size: 16, align: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !7, line: 34, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !9, line: 31, baseType: !24)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "jt", scope: !163, file: !136, line: 236, baseType: !6, size: 8, align: 8, offset: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "jf", scope: !163, file: !136, line: 237, baseType: !6, size: 8, align: 8, offset: 24)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !163, file: !136, line: 238, baseType: !135, size: 32, align: 32, offset: 32)
!171 = distinct !DIGlobalVariable(name: "logname", scope: !0, file: !57, line: 111, type: !66, isLocal: false, isDefinition: true, variable: i8** @logname)
!172 = distinct !DIGlobalVariable(name: "tcpdl", scope: !0, file: !57, line: 112, type: !66, isLocal: false, isDefinition: true, variable: i8** @tcpdl)
!173 = distinct !DIGlobalVariable(name: "tr", scope: !0, file: !57, line: 113, type: !166, isLocal: false, isDefinition: true, variable: i16* @tr)
!174 = distinct !DIGlobalVariable(name: "tl", scope: !0, file: !57, line: 113, type: !166, isLocal: false, isDefinition: true, variable: i16* @tl)
!175 = distinct !DIGlobalVariable(name: "graph", scope: !0, file: !57, line: 114, type: !166, isLocal: false, isDefinition: true, variable: i16* @graph)
!176 = distinct !DIGlobalVariable(name: "cont", scope: !0, file: !57, line: 115, type: !166, isLocal: false, isDefinition: true, variable: i16* @cont)
!177 = distinct !DIGlobalVariable(name: "stream_glob", scope: !0, file: !57, line: 117, type: !12, isLocal: false, isDefinition: true, variable: i32* @stream_glob)
!178 = distinct !DIGlobalVariable(name: "bc_glob", scope: !0, file: !57, line: 118, type: !12, isLocal: false, isDefinition: true, variable: i32* @bc_glob)
!179 = distinct !DIGlobalVariable(name: "sniff_glob", scope: !0, file: !57, line: 119, type: !12, isLocal: false, isDefinition: true, variable: i32* @sniff_glob)
!180 = distinct !DIGlobalVariable(name: "rst_glob", scope: !0, file: !57, line: 120, type: !12, isLocal: false, isDefinition: true, variable: i32* @rst_glob)
!181 = distinct !DIGlobalVariable(name: "arp_glob", scope: !0, file: !57, line: 121, type: !12, isLocal: false, isDefinition: true, variable: i32* @arp_glob)
!182 = distinct !DIGlobalVariable(name: "pt", scope: !0, file: !57, line: 122, type: !183, isLocal: false, isDefinition: true, variable: [2 x i64]* @pt)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, align: 64, elements: !186)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !185, line: 60, baseType: !111)
!185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!186 = !{!187}
!187 = !DISubrange(count: 2)
!188 = distinct !DIGlobalVariable(name: "lg", scope: !0, file: !57, line: 123, type: !12, isLocal: false, isDefinition: true, variable: i32* @lg)
!189 = distinct !DIGlobalVariable(name: "tm", scope: !0, file: !57, line: 132, type: !190, isLocal: false, isDefinition: true, variable: i64* @tm)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !191, line: 75, baseType: !131)
!191 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/nast/[task]nast")
!192 = distinct !DIGlobalVariable(name: "timed", scope: !0, file: !57, line: 133, type: !193, isLocal: false, isDefinition: true, variable: [60 x i8]* @timed)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 480, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 60)
!196 = distinct !DIGlobalVariable(name: "demonize", scope: !0, file: !57, line: 136, type: !166, isLocal: false, isDefinition: true, variable: i16* @demonize)
!197 = distinct !DIGlobalVariable(name: "line_s", scope: !0, file: !57, line: 138, type: !12, isLocal: false, isDefinition: true, variable: i32* @line_s)
!198 = distinct !DIGlobalVariable(name: "row_s", scope: !0, file: !57, line: 139, type: !12, isLocal: false, isDefinition: true, variable: i32* @row_s)
!199 = distinct !DIGlobalVariable(name: "stat_conn", scope: !0, file: !54, line: 36, type: !200, isLocal: false, isDefinition: true, variable: [100 x %struct.statistics]* @stat_conn)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 32000, align: 64, elements: !209)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statistics", file: !54, line: 27, size: 320, align: 64, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "s_ip", scope: !201, file: !54, line: 29, baseType: !111, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "d_ip", scope: !201, file: !54, line: 30, baseType: !111, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !201, file: !54, line: 31, baseType: !24, size: 16, align: 16, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "d_port", scope: !201, file: !54, line: 32, baseType: !24, size: 16, align: 16, offset: 144)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !201, file: !54, line: 33, baseType: !11, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lin", scope: !201, file: !54, line: 34, baseType: !12, size: 32, align: 32, offset: 256)
!209 = !{!210}
!210 = !DISubrange(count: 100)
!211 = distinct !DIGlobalVariable(name: "ptime", scope: !0, file: !54, line: 46, type: !111, isLocal: false, isDefinition: true, variable: i64* @ptime)
!212 = distinct !DIGlobalVariable(name: "partial", scope: !0, file: !54, line: 48, type: !11, isLocal: false, isDefinition: true, variable: double* @partial)
!213 = distinct !DIGlobalVariable(name: "begin", scope: !0, file: !54, line: 49, type: !190, isLocal: false, isDefinition: true, variable: i64* @begin)
!214 = !{i32 2, !"Dwarf Version", i32 4}
!215 = !{i32 2, !"Debug Info Version", i32 3}
!216 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!217 = distinct !DISubprogram(name: "run_bc", scope: !54, file: !54, line: 51, type: !218, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!218 = !DISubroutineType(types: !219)
!219 = !{!12, !66, !66}
!220 = !DILocalVariable(name: "dev", arg: 1, scope: !217, file: !54, line: 51, type: !66)
!221 = !DIExpression()
!222 = !DILocation(line: 51, column: 19, scope: !217)
!223 = !DILocalVariable(name: "filter", arg: 2, scope: !217, file: !54, line: 51, type: !66)
!224 = !DILocation(line: 51, column: 30, scope: !217)
!225 = !DILocalVariable(name: "ebuf", scope: !217, file: !54, line: 53, type: !226)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2048, align: 8, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 256)
!229 = !DILocation(line: 53, column: 9, scope: !217)
!230 = !DILocation(line: 55, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !217, file: !54, line: 55, column: 8)
!232 = !DILocation(line: 55, column: 8, scope: !217)
!233 = !DILocation(line: 57, column: 2, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !54, line: 56, column: 6)
!235 = !DILocation(line: 58, column: 6, scope: !234)
!236 = !DILocation(line: 60, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !217, file: !54, line: 60, column: 8)
!238 = !DILocation(line: 60, column: 8, scope: !217)
!239 = !DILocation(line: 61, column: 6, scope: !237)
!240 = !DILocation(line: 64, column: 8, scope: !241)
!241 = distinct !DILexicalBlock(scope: !217, file: !54, line: 64, column: 8)
!242 = !DILocation(line: 64, column: 8, scope: !217)
!243 = !DILocation(line: 65, column: 6, scope: !241)
!244 = !DILocation(line: 68, column: 9, scope: !217)
!245 = !DILocation(line: 70, column: 12, scope: !217)
!246 = !DILocation(line: 70, column: 10, scope: !217)
!247 = !DILocation(line: 73, column: 24, scope: !248)
!248 = distinct !DILexicalBlock(scope: !217, file: !54, line: 73, column: 8)
!249 = !DILocation(line: 73, column: 44, scope: !248)
!250 = !DILocation(line: 73, column: 9, scope: !248)
!251 = !DILocation(line: 73, column: 50, scope: !248)
!252 = !DILocation(line: 73, column: 8, scope: !217)
!253 = !DILocation(line: 75, column: 44, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !54, line: 74, column: 6)
!255 = !DILocation(line: 75, column: 2, scope: !254)
!256 = !DILocation(line: 76, column: 6, scope: !254)
!257 = !DILocation(line: 77, column: 32, scope: !258)
!258 = distinct !DILexicalBlock(scope: !217, file: !54, line: 77, column: 8)
!259 = !DILocation(line: 77, column: 51, scope: !258)
!260 = !DILocation(line: 77, column: 17, scope: !258)
!261 = !DILocation(line: 77, column: 15, scope: !258)
!262 = !DILocation(line: 77, column: 57, scope: !258)
!263 = !DILocation(line: 77, column: 8, scope: !217)
!264 = !DILocation(line: 79, column: 45, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !54, line: 78, column: 6)
!266 = !DILocation(line: 79, column: 2, scope: !265)
!267 = !DILocation(line: 80, column: 6, scope: !265)
!268 = !DILocation(line: 82, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !217, file: !54, line: 82, column: 8)
!270 = !DILocation(line: 82, column: 28, scope: !269)
!271 = !DILocation(line: 82, column: 17, scope: !269)
!272 = !DILocation(line: 82, column: 16, scope: !269)
!273 = !DILocation(line: 82, column: 15, scope: !269)
!274 = !DILocation(line: 82, column: 8, scope: !269)
!275 = !DILocation(line: 82, column: 36, scope: !269)
!276 = !DILocation(line: 82, column: 8, scope: !217)
!277 = !DILocation(line: 82, column: 42, scope: !278)
!278 = !DILexicalBlockFile(scope: !269, file: !54, discriminator: 1)
!279 = !DILocation(line: 84, column: 16, scope: !280)
!280 = distinct !DILexicalBlock(scope: !217, file: !54, line: 84, column: 8)
!281 = !DILocation(line: 84, column: 8, scope: !280)
!282 = !DILocation(line: 84, column: 31, scope: !280)
!283 = !DILocation(line: 84, column: 42, scope: !284)
!284 = !DILexicalBlockFile(scope: !280, file: !54, discriminator: 1)
!285 = !DILocation(line: 84, column: 34, scope: !284)
!286 = !DILocation(line: 84, column: 8, scope: !284)
!287 = !DILocation(line: 87, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !54, line: 87, column: 6)
!289 = distinct !DILexicalBlock(scope: !280, file: !54, line: 85, column: 6)
!290 = !DILocation(line: 87, column: 33, scope: !288)
!291 = !DILocation(line: 87, column: 44, scope: !288)
!292 = !DILocation(line: 87, column: 7, scope: !288)
!293 = !DILocation(line: 87, column: 50, scope: !288)
!294 = !DILocation(line: 87, column: 6, scope: !289)
!295 = !DILocation(line: 89, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !288, file: !54, line: 88, column: 4)
!297 = !DILocation(line: 90, column: 7, scope: !296)
!298 = !DILocation(line: 92, column: 23, scope: !299)
!299 = distinct !DILexicalBlock(scope: !289, file: !54, line: 92, column: 6)
!300 = !DILocation(line: 92, column: 7, scope: !299)
!301 = !DILocation(line: 92, column: 35, scope: !299)
!302 = !DILocation(line: 92, column: 6, scope: !289)
!303 = !DILocation(line: 94, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !54, line: 93, column: 4)
!305 = !DILocation(line: 95, column: 7, scope: !304)
!306 = !DILocation(line: 98, column: 73, scope: !289)
!307 = !DILocation(line: 98, column: 81, scope: !289)
!308 = !DILocation(line: 98, column: 2, scope: !289)
!309 = !DILocation(line: 99, column: 6, scope: !289)
!310 = !DILocation(line: 101, column: 56, scope: !280)
!311 = !DILocation(line: 101, column: 6, scope: !280)
!312 = !DILocation(line: 103, column: 4, scope: !217)
!313 = !DILocation(line: 104, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !217, file: !54, line: 104, column: 7)
!315 = !DILocation(line: 104, column: 7, scope: !217)
!316 = !DILocation(line: 105, column: 6, scope: !314)
!317 = !DILocation(line: 107, column: 6, scope: !314)
!318 = !DILocation(line: 109, column: 4, scope: !217)
!319 = !DILocation(line: 110, column: 1, scope: !217)
!320 = distinct !DISubprogram(name: "bytecounting", scope: !54, file: !54, line: 112, type: !321, isLocal: false, isDefinition: true, scopeLine: 113, isOptimized: false, unit: !0, variables: !2)
!321 = !DISubroutineType(types: !322)
!322 = !{null}
!323 = !DILocalVariable(name: "icons", scope: !320, file: !54, line: 114, type: !166)
!324 = !DILocation(line: 114, column: 12, scope: !320)
!325 = !DILocalVariable(name: "total", scope: !320, file: !54, line: 115, type: !11)
!326 = !DILocation(line: 115, column: 11, scope: !320)
!327 = !DILocalVariable(name: "pspeed", scope: !320, file: !54, line: 116, type: !11)
!328 = !DILocation(line: 116, column: 11, scope: !320)
!329 = !DILocalVariable(name: "tspeed", scope: !320, file: !54, line: 116, type: !11)
!330 = !DILocation(line: 116, column: 19, scope: !320)
!331 = !DILocalVariable(name: "number", scope: !320, file: !54, line: 117, type: !332)
!332 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!333 = !DILocation(line: 117, column: 23, scope: !320)
!334 = !DILocalVariable(name: "units", scope: !320, file: !54, line: 118, type: !335)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, align: 64, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 4)
!338 = !DILocation(line: 118, column: 10, scope: !320)
!339 = !DILocalVariable(name: "value", scope: !320, file: !54, line: 122, type: !340)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 120, align: 8, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 15)
!343 = !DILocation(line: 122, column: 9, scope: !320)
!344 = !DILocalVariable(name: "line", scope: !320, file: !54, line: 123, type: !12)
!345 = !DILocation(line: 123, column: 8, scope: !320)
!346 = !DILocation(line: 125, column: 9, scope: !320)
!347 = !DILocation(line: 126, column: 9, scope: !320)
!348 = !DILocation(line: 127, column: 10, scope: !320)
!349 = !DILocation(line: 128, column: 11, scope: !320)
!350 = !DILocation(line: 129, column: 9, scope: !320)
!351 = !DILocation(line: 131, column: 4, scope: !320)
!352 = !DILocation(line: 132, column: 4, scope: !320)
!353 = !DILocation(line: 134, column: 4, scope: !320)
!354 = !DILocation(line: 136, column: 38, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !54, line: 136, column: 6)
!356 = distinct !DILexicalBlock(scope: !320, file: !54, line: 135, column: 6)
!357 = !DILocation(line: 136, column: 27, scope: !355)
!358 = !DILocation(line: 136, column: 14, scope: !355)
!359 = !DILocation(line: 136, column: 51, scope: !355)
!360 = !DILocation(line: 136, column: 6, scope: !356)
!361 = !DILocation(line: 138, column: 27, scope: !362)
!362 = distinct !DILexicalBlock(scope: !355, file: !54, line: 137, column: 4)
!363 = !DILocation(line: 138, column: 14, scope: !362)
!364 = !DILocation(line: 138, column: 31, scope: !362)
!365 = !DILocation(line: 138, column: 12, scope: !362)
!366 = !DILocation(line: 139, column: 29, scope: !362)
!367 = !DILocation(line: 139, column: 16, scope: !362)
!368 = !DILocation(line: 139, column: 33, scope: !362)
!369 = !DILocation(line: 139, column: 14, scope: !362)
!370 = !DILocation(line: 140, column: 7, scope: !362)
!371 = !DILocation(line: 143, column: 7, scope: !362)
!372 = !DILocation(line: 145, column: 15, scope: !362)
!373 = !DILocation(line: 145, column: 7, scope: !362)
!374 = !DILocation(line: 147, column: 11, scope: !375)
!375 = distinct !DILexicalBlock(scope: !362, file: !54, line: 146, column: 9)
!376 = !DILocation(line: 147, column: 27, scope: !375)
!377 = !DILocation(line: 148, column: 11, scope: !375)
!378 = !DILocation(line: 148, column: 26, scope: !375)
!379 = !DILocation(line: 149, column: 11, scope: !375)
!380 = !DILocation(line: 149, column: 26, scope: !375)
!381 = !DILocation(line: 150, column: 11, scope: !375)
!382 = !DILocation(line: 150, column: 26, scope: !375)
!383 = !DILocation(line: 152, column: 11, scope: !384)
!384 = distinct !DILexicalBlock(scope: !362, file: !54, line: 152, column: 11)
!385 = !DILocation(line: 152, column: 16, scope: !384)
!386 = !DILocation(line: 152, column: 11, scope: !362)
!387 = !DILocation(line: 152, column: 26, scope: !388)
!388 = !DILexicalBlockFile(scope: !384, file: !54, discriminator: 1)
!389 = !DILocation(line: 152, column: 21, scope: !388)
!390 = !DILocation(line: 153, column: 17, scope: !384)
!391 = !DILocation(line: 155, column: 23, scope: !362)
!392 = !DILocation(line: 155, column: 37, scope: !362)
!393 = !DILocation(line: 155, column: 14, scope: !362)
!394 = !DILocation(line: 156, column: 15, scope: !362)
!395 = !DILocation(line: 156, column: 7, scope: !362)
!396 = !DILocation(line: 159, column: 18, scope: !397)
!397 = distinct !DILexicalBlock(scope: !362, file: !54, line: 159, column: 11)
!398 = !DILocation(line: 159, column: 11, scope: !397)
!399 = !DILocation(line: 159, column: 25, scope: !397)
!400 = !DILocation(line: 159, column: 11, scope: !362)
!401 = !DILocation(line: 159, column: 30, scope: !402)
!402 = !DILexicalBlockFile(scope: !397, file: !54, discriminator: 1)
!403 = !DILocation(line: 160, column: 12, scope: !397)
!404 = !DILocation(line: 162, column: 11, scope: !405)
!405 = distinct !DILexicalBlock(scope: !362, file: !54, line: 162, column: 11)
!406 = !DILocation(line: 162, column: 17, scope: !405)
!407 = !DILocation(line: 162, column: 11, scope: !362)
!408 = !DILocation(line: 163, column: 18, scope: !405)
!409 = !DILocation(line: 163, column: 34, scope: !405)
!410 = !DILocation(line: 163, column: 39, scope: !405)
!411 = !DILocation(line: 163, column: 9, scope: !405)
!412 = !DILocation(line: 164, column: 16, scope: !413)
!413 = distinct !DILexicalBlock(scope: !405, file: !54, line: 164, column: 16)
!414 = !DILocation(line: 164, column: 22, scope: !413)
!415 = !DILocation(line: 164, column: 16, scope: !405)
!416 = !DILocation(line: 165, column: 18, scope: !413)
!417 = !DILocation(line: 165, column: 35, scope: !413)
!418 = !DILocation(line: 165, column: 9, scope: !413)
!419 = !DILocation(line: 166, column: 16, scope: !420)
!420 = distinct !DILexicalBlock(scope: !413, file: !54, line: 166, column: 16)
!421 = !DILocation(line: 166, column: 22, scope: !420)
!422 = !DILocation(line: 166, column: 16, scope: !413)
!423 = !DILocation(line: 167, column: 18, scope: !420)
!424 = !DILocation(line: 167, column: 35, scope: !420)
!425 = !DILocation(line: 167, column: 40, scope: !420)
!426 = !DILocation(line: 167, column: 9, scope: !420)
!427 = !DILocation(line: 169, column: 18, scope: !420)
!428 = !DILocation(line: 169, column: 35, scope: !420)
!429 = !DILocation(line: 169, column: 40, scope: !420)
!430 = !DILocation(line: 169, column: 45, scope: !420)
!431 = !DILocation(line: 169, column: 9, scope: !420)
!432 = !DILocation(line: 171, column: 21, scope: !362)
!433 = !DILocation(line: 171, column: 7, scope: !362)
!434 = !DILocation(line: 174, column: 19, scope: !435)
!435 = distinct !DILexicalBlock(scope: !362, file: !54, line: 174, column: 11)
!436 = !DILocation(line: 174, column: 11, scope: !435)
!437 = !DILocation(line: 174, column: 26, scope: !435)
!438 = !DILocation(line: 174, column: 11, scope: !362)
!439 = !DILocation(line: 174, column: 31, scope: !440)
!440 = !DILexicalBlockFile(scope: !435, file: !54, discriminator: 1)
!441 = !DILocation(line: 175, column: 12, scope: !435)
!442 = !DILocation(line: 177, column: 16, scope: !362)
!443 = !DILocation(line: 177, column: 24, scope: !362)
!444 = !DILocation(line: 177, column: 23, scope: !362)
!445 = !DILocation(line: 177, column: 14, scope: !362)
!446 = !DILocation(line: 178, column: 11, scope: !447)
!447 = distinct !DILexicalBlock(scope: !362, file: !54, line: 178, column: 11)
!448 = !DILocation(line: 178, column: 18, scope: !447)
!449 = !DILocation(line: 178, column: 11, scope: !362)
!450 = !DILocation(line: 179, column: 18, scope: !447)
!451 = !DILocation(line: 179, column: 35, scope: !447)
!452 = !DILocation(line: 179, column: 41, scope: !447)
!453 = !DILocation(line: 179, column: 48, scope: !447)
!454 = !DILocation(line: 179, column: 9, scope: !447)
!455 = !DILocation(line: 180, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !447, file: !54, line: 180, column: 16)
!457 = !DILocation(line: 180, column: 23, scope: !456)
!458 = !DILocation(line: 180, column: 16, scope: !447)
!459 = !DILocation(line: 181, column: 18, scope: !456)
!460 = !DILocation(line: 181, column: 35, scope: !456)
!461 = !DILocation(line: 181, column: 43, scope: !456)
!462 = !DILocation(line: 181, column: 9, scope: !456)
!463 = !DILocation(line: 182, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !456, file: !54, line: 182, column: 16)
!465 = !DILocation(line: 182, column: 23, scope: !464)
!466 = !DILocation(line: 182, column: 16, scope: !456)
!467 = !DILocation(line: 183, column: 18, scope: !464)
!468 = !DILocation(line: 183, column: 35, scope: !464)
!469 = !DILocation(line: 183, column: 41, scope: !464)
!470 = !DILocation(line: 183, column: 48, scope: !464)
!471 = !DILocation(line: 183, column: 9, scope: !464)
!472 = !DILocation(line: 185, column: 18, scope: !464)
!473 = !DILocation(line: 185, column: 35, scope: !464)
!474 = !DILocation(line: 185, column: 41, scope: !464)
!475 = !DILocation(line: 185, column: 46, scope: !464)
!476 = !DILocation(line: 185, column: 53, scope: !464)
!477 = !DILocation(line: 185, column: 9, scope: !464)
!478 = !DILocation(line: 187, column: 21, scope: !362)
!479 = !DILocation(line: 187, column: 7, scope: !362)
!480 = !DILocation(line: 190, column: 19, scope: !481)
!481 = distinct !DILexicalBlock(scope: !362, file: !54, line: 190, column: 11)
!482 = !DILocation(line: 190, column: 11, scope: !481)
!483 = !DILocation(line: 190, column: 26, scope: !481)
!484 = !DILocation(line: 190, column: 11, scope: !362)
!485 = !DILocation(line: 190, column: 31, scope: !486)
!486 = !DILexicalBlockFile(scope: !481, file: !54, discriminator: 1)
!487 = !DILocation(line: 191, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !54, line: 191, column: 16)
!489 = !DILocation(line: 191, column: 16, scope: !488)
!490 = !DILocation(line: 191, column: 31, scope: !488)
!491 = !DILocation(line: 191, column: 16, scope: !481)
!492 = !DILocation(line: 191, column: 37, scope: !493)
!493 = !DILexicalBlockFile(scope: !488, file: !54, discriminator: 1)
!494 = !DILocation(line: 192, column: 12, scope: !488)
!495 = !DILocation(line: 194, column: 16, scope: !362)
!496 = !DILocation(line: 194, column: 29, scope: !362)
!497 = !DILocation(line: 194, column: 39, scope: !362)
!498 = !DILocation(line: 194, column: 38, scope: !362)
!499 = !DILocation(line: 194, column: 23, scope: !362)
!500 = !DILocation(line: 194, column: 22, scope: !362)
!501 = !DILocation(line: 194, column: 21, scope: !362)
!502 = !DILocation(line: 194, column: 14, scope: !362)
!503 = !DILocation(line: 195, column: 11, scope: !504)
!504 = distinct !DILexicalBlock(scope: !362, file: !54, line: 195, column: 11)
!505 = !DILocation(line: 195, column: 18, scope: !504)
!506 = !DILocation(line: 195, column: 11, scope: !362)
!507 = !DILocation(line: 196, column: 18, scope: !504)
!508 = !DILocation(line: 196, column: 35, scope: !504)
!509 = !DILocation(line: 196, column: 41, scope: !504)
!510 = !DILocation(line: 196, column: 48, scope: !504)
!511 = !DILocation(line: 196, column: 9, scope: !504)
!512 = !DILocation(line: 197, column: 16, scope: !513)
!513 = distinct !DILexicalBlock(scope: !504, file: !54, line: 197, column: 16)
!514 = !DILocation(line: 197, column: 23, scope: !513)
!515 = !DILocation(line: 197, column: 16, scope: !504)
!516 = !DILocation(line: 198, column: 18, scope: !513)
!517 = !DILocation(line: 198, column: 35, scope: !513)
!518 = !DILocation(line: 198, column: 43, scope: !513)
!519 = !DILocation(line: 198, column: 9, scope: !513)
!520 = !DILocation(line: 199, column: 16, scope: !521)
!521 = distinct !DILexicalBlock(scope: !513, file: !54, line: 199, column: 16)
!522 = !DILocation(line: 199, column: 23, scope: !521)
!523 = !DILocation(line: 199, column: 16, scope: !513)
!524 = !DILocation(line: 200, column: 18, scope: !521)
!525 = !DILocation(line: 200, column: 35, scope: !521)
!526 = !DILocation(line: 200, column: 41, scope: !521)
!527 = !DILocation(line: 200, column: 48, scope: !521)
!528 = !DILocation(line: 200, column: 9, scope: !521)
!529 = !DILocation(line: 202, column: 18, scope: !521)
!530 = !DILocation(line: 202, column: 35, scope: !521)
!531 = !DILocation(line: 202, column: 41, scope: !521)
!532 = !DILocation(line: 202, column: 46, scope: !521)
!533 = !DILocation(line: 202, column: 53, scope: !521)
!534 = !DILocation(line: 202, column: 9, scope: !521)
!535 = !DILocation(line: 204, column: 21, scope: !362)
!536 = !DILocation(line: 204, column: 7, scope: !362)
!537 = !DILocation(line: 205, column: 14, scope: !362)
!538 = !DILocation(line: 205, column: 7, scope: !362)
!539 = !DILocation(line: 206, column: 4, scope: !362)
!540 = !DILocation(line: 134, column: 4, scope: !541)
!541 = !DILexicalBlockFile(scope: !320, file: !54, discriminator: 1)
!542 = distinct !{!542, !353}
!543 = !DILocation(line: 210, column: 1, scope: !320)
!544 = distinct !DISubprogram(name: "n_bytecounting", scope: !54, file: !54, line: 212, type: !321, isLocal: false, isDefinition: true, scopeLine: 213, isOptimized: false, unit: !0, variables: !2)
!545 = !DILocalVariable(name: "icons", scope: !544, file: !54, line: 214, type: !166)
!546 = !DILocation(line: 214, column: 12, scope: !544)
!547 = !DILocalVariable(name: "total", scope: !544, file: !54, line: 215, type: !11)
!548 = !DILocation(line: 215, column: 11, scope: !544)
!549 = !DILocalVariable(name: "tot", scope: !544, file: !54, line: 216, type: !11)
!550 = !DILocation(line: 216, column: 11, scope: !544)
!551 = !DILocalVariable(name: "pspeed", scope: !544, file: !54, line: 217, type: !11)
!552 = !DILocation(line: 217, column: 11, scope: !544)
!553 = !DILocalVariable(name: "tspeed", scope: !544, file: !54, line: 217, type: !11)
!554 = !DILocation(line: 217, column: 19, scope: !544)
!555 = !DILocalVariable(name: "number", scope: !544, file: !54, line: 218, type: !332)
!556 = !DILocation(line: 218, column: 23, scope: !544)
!557 = !DILocalVariable(name: "units", scope: !544, file: !54, line: 219, type: !335)
!558 = !DILocation(line: 219, column: 10, scope: !544)
!559 = !DILocalVariable(name: "value", scope: !544, file: !54, line: 223, type: !340)
!560 = !DILocation(line: 223, column: 9, scope: !544)
!561 = !DILocalVariable(name: "line", scope: !544, file: !54, line: 224, type: !12)
!562 = !DILocation(line: 224, column: 8, scope: !544)
!563 = !DILocalVariable(name: "l", scope: !544, file: !54, line: 224, type: !12)
!564 = !DILocation(line: 224, column: 14, scope: !544)
!565 = !DILocalVariable(name: "tcp", scope: !544, file: !54, line: 225, type: !12)
!566 = !DILocation(line: 225, column: 8, scope: !544)
!567 = !DILocalVariable(name: "udp", scope: !544, file: !54, line: 225, type: !12)
!568 = !DILocation(line: 225, column: 12, scope: !544)
!569 = !DILocalVariable(name: "icmp", scope: !544, file: !54, line: 225, type: !12)
!570 = !DILocation(line: 225, column: 16, scope: !544)
!571 = !DILocalVariable(name: "igmp", scope: !544, file: !54, line: 225, type: !12)
!572 = !DILocation(line: 225, column: 21, scope: !544)
!573 = !DILocalVariable(name: "arp", scope: !544, file: !54, line: 225, type: !12)
!574 = !DILocation(line: 225, column: 26, scope: !544)
!575 = !DILocalVariable(name: "rarp", scope: !544, file: !54, line: 225, type: !12)
!576 = !DILocation(line: 225, column: 30, scope: !544)
!577 = !DILocalVariable(name: "others", scope: !544, file: !54, line: 225, type: !12)
!578 = !DILocation(line: 225, column: 35, scope: !544)
!579 = !DILocalVariable(name: "ip", scope: !544, file: !54, line: 226, type: !13)
!580 = !DILocation(line: 226, column: 28, scope: !544)
!581 = !DILocalVariable(name: "tcph", scope: !544, file: !54, line: 227, type: !39)
!582 = !DILocation(line: 227, column: 27, scope: !544)
!583 = !DILocalVariable(name: "type", scope: !544, file: !54, line: 228, type: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !7, line: 201, baseType: !24)
!585 = !DILocation(line: 228, column: 14, scope: !544)
!586 = !DILocalVariable(name: "k", scope: !544, file: !54, line: 229, type: !12)
!587 = !DILocation(line: 229, column: 8, scope: !544)
!588 = !DILocation(line: 231, column: 13, scope: !544)
!589 = !DILocation(line: 231, column: 9, scope: !544)
!590 = !DILocation(line: 232, column: 9, scope: !544)
!591 = !DILocation(line: 233, column: 10, scope: !544)
!592 = !DILocation(line: 234, column: 11, scope: !544)
!593 = !DILocation(line: 235, column: 9, scope: !544)
!594 = !DILocation(line: 236, column: 6, scope: !544)
!595 = !DILocation(line: 237, column: 54, scope: !544)
!596 = !DILocation(line: 237, column: 50, scope: !544)
!597 = !DILocation(line: 237, column: 43, scope: !544)
!598 = !DILocation(line: 237, column: 37, scope: !544)
!599 = !DILocation(line: 237, column: 28, scope: !544)
!600 = !DILocation(line: 237, column: 21, scope: !544)
!601 = !DILocation(line: 237, column: 14, scope: !544)
!602 = !DILocation(line: 237, column: 8, scope: !544)
!603 = !DILocation(line: 239, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !544, file: !54, line: 239, column: 4)
!605 = !DILocation(line: 239, column: 8, scope: !604)
!606 = !DILocation(line: 239, column: 12, scope: !607)
!607 = !DILexicalBlockFile(scope: !608, file: !54, discriminator: 1)
!608 = distinct !DILexicalBlock(scope: !604, file: !54, line: 239, column: 4)
!609 = !DILocation(line: 239, column: 13, scope: !607)
!610 = !DILocation(line: 239, column: 4, scope: !607)
!611 = !DILocation(line: 241, column: 20, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !54, line: 240, column: 6)
!613 = !DILocation(line: 241, column: 10, scope: !612)
!614 = !DILocation(line: 241, column: 2, scope: !612)
!615 = !DILocation(line: 242, column: 6, scope: !612)
!616 = !DILocation(line: 239, column: 19, scope: !617)
!617 = !DILexicalBlockFile(scope: !608, file: !54, discriminator: 2)
!618 = !DILocation(line: 239, column: 4, scope: !617)
!619 = distinct !{!619, !620}
!620 = !DILocation(line: 239, column: 4, scope: !544)
!621 = !DILocation(line: 244, column: 4, scope: !544)
!622 = !DILocation(line: 245, column: 4, scope: !544)
!623 = !DILocation(line: 246, column: 4, scope: !544)
!624 = !DILocation(line: 247, column: 4, scope: !544)
!625 = !DILocation(line: 248, column: 4, scope: !544)
!626 = !DILocation(line: 249, column: 4, scope: !544)
!627 = !DILocation(line: 250, column: 4, scope: !544)
!628 = !DILocation(line: 250, column: 10, scope: !629)
!629 = !DILexicalBlockFile(scope: !544, file: !54, discriminator: 1)
!630 = !DILocation(line: 250, column: 17, scope: !629)
!631 = !DILocation(line: 250, column: 4, scope: !629)
!632 = !DILocation(line: 252, column: 38, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !54, line: 252, column: 6)
!634 = distinct !DILexicalBlock(scope: !544, file: !54, line: 251, column: 6)
!635 = !DILocation(line: 252, column: 27, scope: !633)
!636 = !DILocation(line: 252, column: 14, scope: !633)
!637 = !DILocation(line: 252, column: 51, scope: !633)
!638 = !DILocation(line: 252, column: 6, scope: !634)
!639 = !DILocation(line: 254, column: 27, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !54, line: 253, column: 4)
!641 = !DILocation(line: 254, column: 14, scope: !640)
!642 = !DILocation(line: 254, column: 31, scope: !640)
!643 = !DILocation(line: 254, column: 12, scope: !640)
!644 = !DILocation(line: 255, column: 29, scope: !640)
!645 = !DILocation(line: 255, column: 16, scope: !640)
!646 = !DILocation(line: 255, column: 33, scope: !640)
!647 = !DILocation(line: 255, column: 14, scope: !640)
!648 = !DILocation(line: 256, column: 7, scope: !640)
!649 = !DILocation(line: 257, column: 24, scope: !640)
!650 = !DILocation(line: 257, column: 11, scope: !640)
!651 = !DILocation(line: 257, column: 28, scope: !640)
!652 = !DILocation(line: 257, column: 10, scope: !640)
!653 = !DILocation(line: 259, column: 31, scope: !640)
!654 = !DILocation(line: 259, column: 14, scope: !640)
!655 = !DILocation(line: 259, column: 12, scope: !640)
!656 = !DILocation(line: 261, column: 40, scope: !640)
!657 = !DILocation(line: 261, column: 47, scope: !640)
!658 = !DILocation(line: 261, column: 46, scope: !640)
!659 = !DILocation(line: 261, column: 12, scope: !640)
!660 = !DILocation(line: 261, column: 10, scope: !640)
!661 = !DILocation(line: 262, column: 41, scope: !640)
!662 = !DILocation(line: 262, column: 48, scope: !640)
!663 = !DILocation(line: 262, column: 65, scope: !640)
!664 = !DILocation(line: 262, column: 63, scope: !640)
!665 = !DILocation(line: 262, column: 14, scope: !640)
!666 = !DILocation(line: 262, column: 12, scope: !640)
!667 = !DILocation(line: 263, column: 14, scope: !640)
!668 = !DILocation(line: 263, column: 18, scope: !640)
!669 = !DILocation(line: 263, column: 7, scope: !640)
!670 = !DILocation(line: 266, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !640, file: !54, line: 264, column: 9)
!672 = !DILocation(line: 267, column: 12, scope: !671)
!673 = !DILocation(line: 267, column: 18, scope: !671)
!674 = !DILocation(line: 267, column: 5, scope: !671)
!675 = !DILocation(line: 270, column: 19, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !54, line: 268, column: 7)
!677 = !DILocation(line: 270, column: 23, scope: !676)
!678 = !DILocation(line: 270, column: 30, scope: !676)
!679 = !DILocation(line: 270, column: 37, scope: !676)
!680 = !DILocation(line: 270, column: 41, scope: !676)
!681 = !DILocation(line: 270, column: 48, scope: !676)
!682 = !DILocation(line: 270, column: 61, scope: !676)
!683 = !DILocation(line: 270, column: 67, scope: !676)
!684 = !DILocation(line: 270, column: 55, scope: !676)
!685 = !DILocation(line: 270, column: 83, scope: !676)
!686 = !DILocation(line: 270, column: 89, scope: !676)
!687 = !DILocation(line: 270, column: 77, scope: !688)
!688 = !DILexicalBlockFile(scope: !676, file: !54, discriminator: 1)
!689 = !DILocation(line: 270, column: 99, scope: !676)
!690 = !DILocation(line: 270, column: 10, scope: !691)
!691 = !DILexicalBlockFile(scope: !676, file: !54, discriminator: 2)
!692 = !DILocation(line: 271, column: 10, scope: !676)
!693 = !DILocation(line: 273, column: 19, scope: !676)
!694 = !DILocation(line: 273, column: 23, scope: !676)
!695 = !DILocation(line: 273, column: 30, scope: !676)
!696 = !DILocation(line: 273, column: 37, scope: !676)
!697 = !DILocation(line: 273, column: 41, scope: !676)
!698 = !DILocation(line: 273, column: 48, scope: !676)
!699 = !DILocation(line: 273, column: 61, scope: !676)
!700 = !DILocation(line: 273, column: 67, scope: !676)
!701 = !DILocation(line: 273, column: 55, scope: !676)
!702 = !DILocation(line: 273, column: 83, scope: !676)
!703 = !DILocation(line: 273, column: 89, scope: !676)
!704 = !DILocation(line: 273, column: 77, scope: !688)
!705 = !DILocation(line: 273, column: 99, scope: !676)
!706 = !DILocation(line: 273, column: 10, scope: !691)
!707 = !DILocation(line: 274, column: 10, scope: !676)
!708 = !DILocation(line: 276, column: 19, scope: !676)
!709 = !DILocation(line: 276, column: 23, scope: !676)
!710 = !DILocation(line: 276, column: 30, scope: !676)
!711 = !DILocation(line: 276, column: 37, scope: !676)
!712 = !DILocation(line: 276, column: 41, scope: !676)
!713 = !DILocation(line: 276, column: 48, scope: !676)
!714 = !DILocation(line: 276, column: 61, scope: !676)
!715 = !DILocation(line: 276, column: 67, scope: !676)
!716 = !DILocation(line: 276, column: 55, scope: !676)
!717 = !DILocation(line: 276, column: 83, scope: !676)
!718 = !DILocation(line: 276, column: 89, scope: !676)
!719 = !DILocation(line: 276, column: 77, scope: !688)
!720 = !DILocation(line: 276, column: 99, scope: !676)
!721 = !DILocation(line: 276, column: 10, scope: !691)
!722 = !DILocation(line: 277, column: 10, scope: !676)
!723 = !DILocation(line: 279, column: 19, scope: !676)
!724 = !DILocation(line: 279, column: 23, scope: !676)
!725 = !DILocation(line: 279, column: 30, scope: !676)
!726 = !DILocation(line: 279, column: 37, scope: !676)
!727 = !DILocation(line: 279, column: 41, scope: !676)
!728 = !DILocation(line: 279, column: 48, scope: !676)
!729 = !DILocation(line: 279, column: 61, scope: !676)
!730 = !DILocation(line: 279, column: 67, scope: !676)
!731 = !DILocation(line: 279, column: 55, scope: !676)
!732 = !DILocation(line: 279, column: 83, scope: !676)
!733 = !DILocation(line: 279, column: 89, scope: !676)
!734 = !DILocation(line: 279, column: 77, scope: !688)
!735 = !DILocation(line: 279, column: 99, scope: !676)
!736 = !DILocation(line: 279, column: 10, scope: !691)
!737 = !DILocation(line: 280, column: 10, scope: !676)
!738 = !DILocation(line: 282, column: 19, scope: !676)
!739 = !DILocation(line: 282, column: 23, scope: !676)
!740 = !DILocation(line: 282, column: 30, scope: !676)
!741 = !DILocation(line: 282, column: 37, scope: !676)
!742 = !DILocation(line: 282, column: 41, scope: !676)
!743 = !DILocation(line: 282, column: 48, scope: !676)
!744 = !DILocation(line: 282, column: 61, scope: !676)
!745 = !DILocation(line: 282, column: 67, scope: !676)
!746 = !DILocation(line: 282, column: 55, scope: !676)
!747 = !DILocation(line: 282, column: 83, scope: !676)
!748 = !DILocation(line: 282, column: 89, scope: !676)
!749 = !DILocation(line: 282, column: 77, scope: !688)
!750 = !DILocation(line: 282, column: 99, scope: !676)
!751 = !DILocation(line: 282, column: 10, scope: !691)
!752 = !DILocation(line: 283, column: 10, scope: !676)
!753 = !DILocation(line: 285, column: 19, scope: !676)
!754 = !DILocation(line: 285, column: 23, scope: !676)
!755 = !DILocation(line: 285, column: 30, scope: !676)
!756 = !DILocation(line: 285, column: 37, scope: !676)
!757 = !DILocation(line: 285, column: 41, scope: !676)
!758 = !DILocation(line: 285, column: 48, scope: !676)
!759 = !DILocation(line: 285, column: 61, scope: !676)
!760 = !DILocation(line: 285, column: 67, scope: !676)
!761 = !DILocation(line: 285, column: 55, scope: !676)
!762 = !DILocation(line: 285, column: 83, scope: !676)
!763 = !DILocation(line: 285, column: 89, scope: !676)
!764 = !DILocation(line: 285, column: 77, scope: !688)
!765 = !DILocation(line: 285, column: 99, scope: !676)
!766 = !DILocation(line: 285, column: 10, scope: !691)
!767 = !DILocation(line: 286, column: 10, scope: !676)
!768 = !DILocation(line: 288, column: 19, scope: !676)
!769 = !DILocation(line: 288, column: 23, scope: !676)
!770 = !DILocation(line: 288, column: 30, scope: !676)
!771 = !DILocation(line: 288, column: 37, scope: !676)
!772 = !DILocation(line: 288, column: 41, scope: !676)
!773 = !DILocation(line: 288, column: 48, scope: !676)
!774 = !DILocation(line: 288, column: 61, scope: !676)
!775 = !DILocation(line: 288, column: 67, scope: !676)
!776 = !DILocation(line: 288, column: 55, scope: !676)
!777 = !DILocation(line: 288, column: 83, scope: !676)
!778 = !DILocation(line: 288, column: 89, scope: !676)
!779 = !DILocation(line: 288, column: 77, scope: !688)
!780 = !DILocation(line: 288, column: 99, scope: !676)
!781 = !DILocation(line: 288, column: 10, scope: !691)
!782 = !DILocation(line: 289, column: 10, scope: !676)
!783 = !DILocation(line: 291, column: 19, scope: !676)
!784 = !DILocation(line: 291, column: 23, scope: !676)
!785 = !DILocation(line: 291, column: 30, scope: !676)
!786 = !DILocation(line: 291, column: 37, scope: !676)
!787 = !DILocation(line: 291, column: 41, scope: !676)
!788 = !DILocation(line: 291, column: 48, scope: !676)
!789 = !DILocation(line: 291, column: 61, scope: !676)
!790 = !DILocation(line: 291, column: 67, scope: !676)
!791 = !DILocation(line: 291, column: 55, scope: !676)
!792 = !DILocation(line: 291, column: 83, scope: !676)
!793 = !DILocation(line: 291, column: 89, scope: !676)
!794 = !DILocation(line: 291, column: 77, scope: !688)
!795 = !DILocation(line: 291, column: 99, scope: !676)
!796 = !DILocation(line: 291, column: 10, scope: !691)
!797 = !DILocation(line: 292, column: 10, scope: !676)
!798 = !DILocation(line: 294, column: 10, scope: !676)
!799 = !DILocation(line: 297, column: 5, scope: !671)
!800 = !DILocation(line: 299, column: 5, scope: !671)
!801 = !DILocation(line: 300, column: 5, scope: !671)
!802 = !DILocation(line: 302, column: 5, scope: !671)
!803 = !DILocation(line: 303, column: 5, scope: !671)
!804 = !DILocation(line: 305, column: 5, scope: !671)
!805 = !DILocation(line: 306, column: 5, scope: !671)
!806 = !DILocation(line: 308, column: 9, scope: !807)
!807 = distinct !DILexicalBlock(scope: !671, file: !54, line: 308, column: 9)
!808 = !DILocation(line: 308, column: 13, scope: !807)
!809 = !DILocation(line: 308, column: 9, scope: !671)
!810 = !DILocation(line: 309, column: 7, scope: !807)
!811 = !DILocation(line: 310, column: 14, scope: !812)
!812 = distinct !DILexicalBlock(scope: !807, file: !54, line: 310, column: 14)
!813 = !DILocation(line: 310, column: 18, scope: !812)
!814 = !DILocation(line: 310, column: 14, scope: !807)
!815 = !DILocation(line: 311, column: 7, scope: !812)
!816 = !DILocation(line: 312, column: 10, scope: !812)
!817 = !DILocation(line: 313, column: 5, scope: !671)
!818 = !DILocation(line: 315, column: 14, scope: !640)
!819 = !DILocation(line: 316, column: 42, scope: !640)
!820 = !DILocation(line: 316, column: 14, scope: !640)
!821 = !DILocation(line: 317, column: 36, scope: !640)
!822 = !DILocation(line: 317, column: 7, scope: !640)
!823 = !DILocation(line: 318, column: 36, scope: !640)
!824 = !DILocation(line: 318, column: 7, scope: !640)
!825 = !DILocation(line: 319, column: 36, scope: !640)
!826 = !DILocation(line: 319, column: 7, scope: !640)
!827 = !DILocation(line: 320, column: 36, scope: !640)
!828 = !DILocation(line: 320, column: 7, scope: !640)
!829 = !DILocation(line: 321, column: 36, scope: !640)
!830 = !DILocation(line: 321, column: 7, scope: !640)
!831 = !DILocation(line: 322, column: 36, scope: !640)
!832 = !DILocation(line: 322, column: 7, scope: !640)
!833 = !DILocation(line: 324, column: 15, scope: !640)
!834 = !DILocation(line: 324, column: 7, scope: !640)
!835 = !DILocation(line: 326, column: 11, scope: !836)
!836 = distinct !DILexicalBlock(scope: !640, file: !54, line: 325, column: 9)
!837 = !DILocation(line: 326, column: 42, scope: !836)
!838 = !DILocation(line: 327, column: 11, scope: !836)
!839 = !DILocation(line: 327, column: 41, scope: !836)
!840 = !DILocation(line: 328, column: 11, scope: !836)
!841 = !DILocation(line: 328, column: 41, scope: !836)
!842 = !DILocation(line: 329, column: 11, scope: !836)
!843 = !DILocation(line: 329, column: 41, scope: !836)
!844 = !DILocation(line: 331, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !640, file: !54, line: 331, column: 11)
!846 = !DILocation(line: 331, column: 16, scope: !845)
!847 = !DILocation(line: 331, column: 11, scope: !640)
!848 = !DILocation(line: 331, column: 26, scope: !849)
!849 = !DILexicalBlockFile(scope: !845, file: !54, discriminator: 1)
!850 = !DILocation(line: 331, column: 21, scope: !849)
!851 = !DILocation(line: 332, column: 17, scope: !845)
!852 = !DILocation(line: 334, column: 14, scope: !640)
!853 = !DILocation(line: 335, column: 23, scope: !640)
!854 = !DILocation(line: 335, column: 37, scope: !640)
!855 = !DILocation(line: 335, column: 14, scope: !640)
!856 = !DILocation(line: 336, column: 35, scope: !640)
!857 = !DILocation(line: 336, column: 7, scope: !640)
!858 = !DILocation(line: 338, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !640, file: !54, line: 338, column: 11)
!860 = !DILocation(line: 338, column: 17, scope: !859)
!861 = !DILocation(line: 338, column: 11, scope: !640)
!862 = !DILocation(line: 339, column: 18, scope: !859)
!863 = !DILocation(line: 339, column: 34, scope: !859)
!864 = !DILocation(line: 339, column: 39, scope: !859)
!865 = !DILocation(line: 339, column: 9, scope: !859)
!866 = !DILocation(line: 340, column: 16, scope: !867)
!867 = distinct !DILexicalBlock(scope: !859, file: !54, line: 340, column: 16)
!868 = !DILocation(line: 340, column: 22, scope: !867)
!869 = !DILocation(line: 340, column: 16, scope: !859)
!870 = !DILocation(line: 341, column: 18, scope: !867)
!871 = !DILocation(line: 341, column: 35, scope: !867)
!872 = !DILocation(line: 341, column: 9, scope: !867)
!873 = !DILocation(line: 342, column: 16, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !54, line: 342, column: 16)
!875 = !DILocation(line: 342, column: 22, scope: !874)
!876 = !DILocation(line: 342, column: 16, scope: !867)
!877 = !DILocation(line: 343, column: 18, scope: !874)
!878 = !DILocation(line: 343, column: 35, scope: !874)
!879 = !DILocation(line: 343, column: 40, scope: !874)
!880 = !DILocation(line: 343, column: 9, scope: !874)
!881 = !DILocation(line: 345, column: 18, scope: !874)
!882 = !DILocation(line: 345, column: 35, scope: !874)
!883 = !DILocation(line: 345, column: 40, scope: !874)
!884 = !DILocation(line: 345, column: 45, scope: !874)
!885 = !DILocation(line: 345, column: 9, scope: !874)
!886 = !DILocation(line: 347, column: 36, scope: !640)
!887 = !DILocation(line: 347, column: 7, scope: !640)
!888 = !DILocation(line: 349, column: 16, scope: !640)
!889 = !DILocation(line: 349, column: 24, scope: !640)
!890 = !DILocation(line: 349, column: 23, scope: !640)
!891 = !DILocation(line: 349, column: 14, scope: !640)
!892 = !DILocation(line: 350, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !640, file: !54, line: 350, column: 11)
!894 = !DILocation(line: 350, column: 18, scope: !893)
!895 = !DILocation(line: 350, column: 11, scope: !640)
!896 = !DILocation(line: 351, column: 18, scope: !893)
!897 = !DILocation(line: 351, column: 35, scope: !893)
!898 = !DILocation(line: 351, column: 41, scope: !893)
!899 = !DILocation(line: 351, column: 48, scope: !893)
!900 = !DILocation(line: 351, column: 9, scope: !893)
!901 = !DILocation(line: 352, column: 16, scope: !902)
!902 = distinct !DILexicalBlock(scope: !893, file: !54, line: 352, column: 16)
!903 = !DILocation(line: 352, column: 23, scope: !902)
!904 = !DILocation(line: 352, column: 16, scope: !893)
!905 = !DILocation(line: 353, column: 18, scope: !902)
!906 = !DILocation(line: 353, column: 35, scope: !902)
!907 = !DILocation(line: 353, column: 43, scope: !902)
!908 = !DILocation(line: 353, column: 9, scope: !902)
!909 = !DILocation(line: 354, column: 16, scope: !910)
!910 = distinct !DILexicalBlock(scope: !902, file: !54, line: 354, column: 16)
!911 = !DILocation(line: 354, column: 23, scope: !910)
!912 = !DILocation(line: 354, column: 16, scope: !902)
!913 = !DILocation(line: 355, column: 18, scope: !910)
!914 = !DILocation(line: 355, column: 35, scope: !910)
!915 = !DILocation(line: 355, column: 41, scope: !910)
!916 = !DILocation(line: 355, column: 48, scope: !910)
!917 = !DILocation(line: 355, column: 9, scope: !910)
!918 = !DILocation(line: 357, column: 18, scope: !910)
!919 = !DILocation(line: 357, column: 35, scope: !910)
!920 = !DILocation(line: 357, column: 41, scope: !910)
!921 = !DILocation(line: 357, column: 46, scope: !910)
!922 = !DILocation(line: 357, column: 53, scope: !910)
!923 = !DILocation(line: 357, column: 9, scope: !910)
!924 = !DILocation(line: 359, column: 36, scope: !640)
!925 = !DILocation(line: 359, column: 7, scope: !640)
!926 = !DILocation(line: 361, column: 16, scope: !640)
!927 = !DILocation(line: 361, column: 29, scope: !640)
!928 = !DILocation(line: 361, column: 39, scope: !640)
!929 = !DILocation(line: 361, column: 38, scope: !640)
!930 = !DILocation(line: 361, column: 23, scope: !640)
!931 = !DILocation(line: 361, column: 22, scope: !640)
!932 = !DILocation(line: 361, column: 21, scope: !640)
!933 = !DILocation(line: 361, column: 14, scope: !640)
!934 = !DILocation(line: 362, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !640, file: !54, line: 362, column: 11)
!936 = !DILocation(line: 362, column: 18, scope: !935)
!937 = !DILocation(line: 362, column: 11, scope: !640)
!938 = !DILocation(line: 363, column: 18, scope: !935)
!939 = !DILocation(line: 363, column: 35, scope: !935)
!940 = !DILocation(line: 363, column: 41, scope: !935)
!941 = !DILocation(line: 363, column: 48, scope: !935)
!942 = !DILocation(line: 363, column: 9, scope: !935)
!943 = !DILocation(line: 364, column: 16, scope: !944)
!944 = distinct !DILexicalBlock(scope: !935, file: !54, line: 364, column: 16)
!945 = !DILocation(line: 364, column: 23, scope: !944)
!946 = !DILocation(line: 364, column: 16, scope: !935)
!947 = !DILocation(line: 365, column: 18, scope: !944)
!948 = !DILocation(line: 365, column: 35, scope: !944)
!949 = !DILocation(line: 365, column: 43, scope: !944)
!950 = !DILocation(line: 365, column: 9, scope: !944)
!951 = !DILocation(line: 366, column: 16, scope: !952)
!952 = distinct !DILexicalBlock(scope: !944, file: !54, line: 366, column: 16)
!953 = !DILocation(line: 366, column: 23, scope: !952)
!954 = !DILocation(line: 366, column: 16, scope: !944)
!955 = !DILocation(line: 367, column: 18, scope: !952)
!956 = !DILocation(line: 367, column: 35, scope: !952)
!957 = !DILocation(line: 367, column: 41, scope: !952)
!958 = !DILocation(line: 367, column: 48, scope: !952)
!959 = !DILocation(line: 367, column: 9, scope: !952)
!960 = !DILocation(line: 369, column: 18, scope: !952)
!961 = !DILocation(line: 369, column: 35, scope: !952)
!962 = !DILocation(line: 369, column: 41, scope: !952)
!963 = !DILocation(line: 369, column: 46, scope: !952)
!964 = !DILocation(line: 369, column: 53, scope: !952)
!965 = !DILocation(line: 369, column: 9, scope: !952)
!966 = !DILocation(line: 371, column: 36, scope: !640)
!967 = !DILocation(line: 371, column: 7, scope: !640)
!968 = !DILocation(line: 372, column: 4, scope: !640)
!969 = !DILocation(line: 250, column: 4, scope: !970)
!970 = !DILexicalBlockFile(scope: !544, file: !54, discriminator: 2)
!971 = distinct !{!971, !627}
!972 = !DILocation(line: 375, column: 15, scope: !544)
!973 = !DILocation(line: 375, column: 4, scope: !544)
!974 = !DILocation(line: 376, column: 1, scope: !544)
!975 = distinct !DISubprogram(name: "conn_len", scope: !54, file: !54, line: 378, type: !976, isLocal: false, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!976 = !DISubroutineType(types: !977)
!977 = !{!12, !978, !978, !166, !166, !11}
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !7, line: 36, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !9, line: 33, baseType: !111)
!980 = !DILocalVariable(name: "ip_src", arg: 1, scope: !975, file: !54, line: 378, type: !978)
!981 = !DILocation(line: 378, column: 21, scope: !975)
!982 = !DILocalVariable(name: "ip_dst", arg: 2, scope: !975, file: !54, line: 378, type: !978)
!983 = !DILocation(line: 378, column: 35, scope: !975)
!984 = !DILocalVariable(name: "s_port", arg: 3, scope: !975, file: !54, line: 378, type: !166)
!985 = !DILocation(line: 378, column: 50, scope: !975)
!986 = !DILocalVariable(name: "d_port", arg: 4, scope: !975, file: !54, line: 378, type: !166)
!987 = !DILocation(line: 378, column: 65, scope: !975)
!988 = !DILocalVariable(name: "len", arg: 5, scope: !975, file: !54, line: 378, type: !11)
!989 = !DILocation(line: 378, column: 80, scope: !975)
!990 = !DILocalVariable(name: "i", scope: !975, file: !54, line: 380, type: !12)
!991 = !DILocation(line: 380, column: 8, scope: !975)
!992 = !DILocalVariable(name: "value", scope: !975, file: !54, line: 381, type: !340)
!993 = !DILocation(line: 381, column: 9, scope: !975)
!994 = !DILocation(line: 382, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !975, file: !54, line: 382, column: 4)
!996 = !DILocation(line: 382, column: 8, scope: !995)
!997 = !DILocation(line: 382, column: 12, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !54, discriminator: 1)
!999 = distinct !DILexicalBlock(scope: !995, file: !54, line: 382, column: 4)
!1000 = !DILocation(line: 382, column: 13, scope: !998)
!1001 = !DILocation(line: 382, column: 4, scope: !998)
!1002 = !DILocation(line: 383, column: 10, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !54, line: 383, column: 9)
!1004 = !DILocation(line: 383, column: 28, scope: !1003)
!1005 = !DILocation(line: 383, column: 18, scope: !1003)
!1006 = !DILocation(line: 383, column: 31, scope: !1003)
!1007 = !DILocation(line: 383, column: 16, scope: !1003)
!1008 = !DILocation(line: 383, column: 36, scope: !1003)
!1009 = !DILocation(line: 383, column: 39, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 1)
!1011 = !DILocation(line: 383, column: 57, scope: !1010)
!1012 = !DILocation(line: 383, column: 47, scope: !1010)
!1013 = !DILocation(line: 383, column: 60, scope: !1010)
!1014 = !DILocation(line: 383, column: 45, scope: !1010)
!1015 = !DILocation(line: 383, column: 65, scope: !1010)
!1016 = !DILocation(line: 383, column: 68, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 2)
!1018 = !DILocation(line: 383, column: 86, scope: !1017)
!1019 = !DILocation(line: 383, column: 76, scope: !1017)
!1020 = !DILocation(line: 383, column: 89, scope: !1017)
!1021 = !DILocation(line: 383, column: 74, scope: !1017)
!1022 = !DILocation(line: 383, column: 96, scope: !1017)
!1023 = !DILocation(line: 383, column: 99, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 3)
!1025 = !DILocation(line: 383, column: 117, scope: !1024)
!1026 = !DILocation(line: 383, column: 107, scope: !1024)
!1027 = !DILocation(line: 383, column: 120, scope: !1024)
!1028 = !DILocation(line: 383, column: 105, scope: !1024)
!1029 = !DILocation(line: 383, column: 128, scope: !1024)
!1030 = !DILocation(line: 383, column: 132, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 4)
!1032 = !DILocation(line: 383, column: 150, scope: !1031)
!1033 = !DILocation(line: 383, column: 140, scope: !1031)
!1034 = !DILocation(line: 383, column: 153, scope: !1031)
!1035 = !DILocation(line: 383, column: 138, scope: !1031)
!1036 = !DILocation(line: 383, column: 158, scope: !1031)
!1037 = !DILocation(line: 383, column: 161, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 5)
!1039 = !DILocation(line: 383, column: 179, scope: !1038)
!1040 = !DILocation(line: 383, column: 169, scope: !1038)
!1041 = !DILocation(line: 383, column: 182, scope: !1038)
!1042 = !DILocation(line: 383, column: 167, scope: !1038)
!1043 = !DILocation(line: 383, column: 187, scope: !1038)
!1044 = !DILocation(line: 383, column: 190, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 6)
!1046 = !DILocation(line: 383, column: 208, scope: !1045)
!1047 = !DILocation(line: 383, column: 198, scope: !1045)
!1048 = !DILocation(line: 383, column: 211, scope: !1045)
!1049 = !DILocation(line: 383, column: 196, scope: !1045)
!1050 = !DILocation(line: 383, column: 218, scope: !1045)
!1051 = !DILocation(line: 383, column: 221, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 7)
!1053 = !DILocation(line: 383, column: 239, scope: !1052)
!1054 = !DILocation(line: 383, column: 229, scope: !1052)
!1055 = !DILocation(line: 383, column: 242, scope: !1052)
!1056 = !DILocation(line: 383, column: 227, scope: !1052)
!1057 = !DILocation(line: 383, column: 9, scope: !1052)
!1058 = !DILocation(line: 385, column: 28, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1003, file: !54, line: 384, column: 8)
!1060 = !DILocation(line: 385, column: 14, scope: !1059)
!1061 = !DILocation(line: 385, column: 4, scope: !1059)
!1062 = !DILocation(line: 385, column: 17, scope: !1059)
!1063 = !DILocation(line: 385, column: 25, scope: !1059)
!1064 = !DILocation(line: 386, column: 18, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !54, line: 386, column: 8)
!1066 = !DILocation(line: 386, column: 8, scope: !1065)
!1067 = !DILocation(line: 386, column: 21, scope: !1065)
!1068 = !DILocation(line: 386, column: 29, scope: !1065)
!1069 = !DILocation(line: 386, column: 8, scope: !1059)
!1070 = !DILocation(line: 387, column: 15, scope: !1065)
!1071 = !DILocation(line: 387, column: 41, scope: !1065)
!1072 = !DILocation(line: 387, column: 31, scope: !1065)
!1073 = !DILocation(line: 387, column: 44, scope: !1065)
!1074 = !DILocation(line: 387, column: 51, scope: !1065)
!1075 = !DILocation(line: 387, column: 6, scope: !1065)
!1076 = !DILocation(line: 388, column: 23, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1065, file: !54, line: 388, column: 13)
!1078 = !DILocation(line: 388, column: 13, scope: !1077)
!1079 = !DILocation(line: 388, column: 26, scope: !1077)
!1080 = !DILocation(line: 388, column: 34, scope: !1077)
!1081 = !DILocation(line: 388, column: 13, scope: !1065)
!1082 = !DILocation(line: 389, column: 15, scope: !1077)
!1083 = !DILocation(line: 389, column: 42, scope: !1077)
!1084 = !DILocation(line: 389, column: 32, scope: !1077)
!1085 = !DILocation(line: 389, column: 45, scope: !1077)
!1086 = !DILocation(line: 389, column: 6, scope: !1077)
!1087 = !DILocation(line: 390, column: 23, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1077, file: !54, line: 390, column: 13)
!1089 = !DILocation(line: 390, column: 13, scope: !1088)
!1090 = !DILocation(line: 390, column: 26, scope: !1088)
!1091 = !DILocation(line: 390, column: 34, scope: !1088)
!1092 = !DILocation(line: 390, column: 13, scope: !1077)
!1093 = !DILocation(line: 391, column: 15, scope: !1088)
!1094 = !DILocation(line: 391, column: 42, scope: !1088)
!1095 = !DILocation(line: 391, column: 32, scope: !1088)
!1096 = !DILocation(line: 391, column: 45, scope: !1088)
!1097 = !DILocation(line: 391, column: 52, scope: !1088)
!1098 = !DILocation(line: 391, column: 6, scope: !1088)
!1099 = !DILocation(line: 393, column: 15, scope: !1088)
!1100 = !DILocation(line: 393, column: 42, scope: !1088)
!1101 = !DILocation(line: 393, column: 32, scope: !1088)
!1102 = !DILocation(line: 393, column: 45, scope: !1088)
!1103 = !DILocation(line: 393, column: 52, scope: !1088)
!1104 = !DILocation(line: 393, column: 57, scope: !1088)
!1105 = !DILocation(line: 393, column: 6, scope: !1088)
!1106 = !DILocation(line: 394, column: 30, scope: !1059)
!1107 = !DILocation(line: 394, column: 20, scope: !1059)
!1108 = !DILocation(line: 394, column: 33, scope: !1059)
!1109 = !DILocation(line: 394, column: 47, scope: !1059)
!1110 = !DILocation(line: 394, column: 4, scope: !1059)
!1111 = !DILocation(line: 395, column: 4, scope: !1059)
!1112 = !DILocation(line: 383, column: 248, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1003, file: !54, discriminator: 8)
!1114 = !DILocation(line: 382, column: 19, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !999, file: !54, discriminator: 2)
!1116 = !DILocation(line: 382, column: 4, scope: !1115)
!1117 = distinct !{!1117, !1118}
!1118 = !DILocation(line: 382, column: 4, scope: !975)
!1119 = !DILocation(line: 398, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !975, file: !54, line: 398, column: 4)
!1121 = !DILocation(line: 398, column: 8, scope: !1120)
!1122 = !DILocation(line: 398, column: 12, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !54, discriminator: 1)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !54, line: 398, column: 4)
!1125 = !DILocation(line: 398, column: 13, scope: !1123)
!1126 = !DILocation(line: 398, column: 4, scope: !1123)
!1127 = !DILocation(line: 400, column: 15, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !54, line: 400, column: 5)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !54, line: 399, column: 6)
!1130 = !DILocation(line: 400, column: 5, scope: !1128)
!1131 = !DILocation(line: 400, column: 18, scope: !1128)
!1132 = !DILocation(line: 400, column: 5, scope: !1129)
!1133 = !DILocation(line: 400, column: 23, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1128, file: !54, discriminator: 1)
!1135 = !DILocation(line: 403, column: 27, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !54, line: 402, column: 4)
!1137 = !DILocation(line: 403, column: 17, scope: !1136)
!1138 = !DILocation(line: 403, column: 7, scope: !1136)
!1139 = !DILocation(line: 403, column: 20, scope: !1136)
!1140 = !DILocation(line: 403, column: 25, scope: !1136)
!1141 = !DILocation(line: 404, column: 27, scope: !1136)
!1142 = !DILocation(line: 404, column: 17, scope: !1136)
!1143 = !DILocation(line: 404, column: 7, scope: !1136)
!1144 = !DILocation(line: 404, column: 20, scope: !1136)
!1145 = !DILocation(line: 404, column: 25, scope: !1136)
!1146 = !DILocation(line: 405, column: 29, scope: !1136)
!1147 = !DILocation(line: 405, column: 17, scope: !1136)
!1148 = !DILocation(line: 405, column: 7, scope: !1136)
!1149 = !DILocation(line: 405, column: 20, scope: !1136)
!1150 = !DILocation(line: 405, column: 27, scope: !1136)
!1151 = !DILocation(line: 406, column: 29, scope: !1136)
!1152 = !DILocation(line: 406, column: 17, scope: !1136)
!1153 = !DILocation(line: 406, column: 7, scope: !1136)
!1154 = !DILocation(line: 406, column: 20, scope: !1136)
!1155 = !DILocation(line: 406, column: 27, scope: !1136)
!1156 = !DILocation(line: 407, column: 30, scope: !1136)
!1157 = !DILocation(line: 407, column: 17, scope: !1136)
!1158 = !DILocation(line: 407, column: 7, scope: !1136)
!1159 = !DILocation(line: 407, column: 20, scope: !1136)
!1160 = !DILocation(line: 407, column: 28, scope: !1136)
!1161 = !DILocation(line: 409, column: 23, scope: !1136)
!1162 = !DILocation(line: 409, column: 67, scope: !1136)
!1163 = !DILocation(line: 409, column: 57, scope: !1136)
!1164 = !DILocation(line: 409, column: 70, scope: !1136)
!1165 = !DILocation(line: 409, column: 39, scope: !1136)
!1166 = !DILocation(line: 409, column: 7, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1136, file: !54, discriminator: 1)
!1168 = !DILocation(line: 410, column: 23, scope: !1136)
!1169 = !DILocation(line: 410, column: 50, scope: !1136)
!1170 = !DILocation(line: 410, column: 40, scope: !1136)
!1171 = !DILocation(line: 410, column: 53, scope: !1136)
!1172 = !DILocation(line: 410, column: 7, scope: !1136)
!1173 = !DILocation(line: 411, column: 23, scope: !1136)
!1174 = !DILocation(line: 411, column: 68, scope: !1136)
!1175 = !DILocation(line: 411, column: 58, scope: !1136)
!1176 = !DILocation(line: 411, column: 71, scope: !1136)
!1177 = !DILocation(line: 411, column: 40, scope: !1136)
!1178 = !DILocation(line: 411, column: 7, scope: !1167)
!1179 = !DILocation(line: 412, column: 23, scope: !1136)
!1180 = !DILocation(line: 412, column: 50, scope: !1136)
!1181 = !DILocation(line: 412, column: 40, scope: !1136)
!1182 = !DILocation(line: 412, column: 53, scope: !1136)
!1183 = !DILocation(line: 412, column: 7, scope: !1136)
!1184 = !DILocation(line: 414, column: 21, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1136, file: !54, line: 414, column: 11)
!1186 = !DILocation(line: 414, column: 11, scope: !1185)
!1187 = !DILocation(line: 414, column: 24, scope: !1185)
!1188 = !DILocation(line: 414, column: 32, scope: !1185)
!1189 = !DILocation(line: 414, column: 11, scope: !1136)
!1190 = !DILocation(line: 415, column: 18, scope: !1185)
!1191 = !DILocation(line: 415, column: 44, scope: !1185)
!1192 = !DILocation(line: 415, column: 34, scope: !1185)
!1193 = !DILocation(line: 415, column: 47, scope: !1185)
!1194 = !DILocation(line: 415, column: 54, scope: !1185)
!1195 = !DILocation(line: 415, column: 9, scope: !1185)
!1196 = !DILocation(line: 416, column: 26, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1185, file: !54, line: 416, column: 16)
!1198 = !DILocation(line: 416, column: 16, scope: !1197)
!1199 = !DILocation(line: 416, column: 29, scope: !1197)
!1200 = !DILocation(line: 416, column: 37, scope: !1197)
!1201 = !DILocation(line: 416, column: 16, scope: !1185)
!1202 = !DILocation(line: 417, column: 18, scope: !1197)
!1203 = !DILocation(line: 417, column: 45, scope: !1197)
!1204 = !DILocation(line: 417, column: 35, scope: !1197)
!1205 = !DILocation(line: 417, column: 48, scope: !1197)
!1206 = !DILocation(line: 417, column: 9, scope: !1197)
!1207 = !DILocation(line: 418, column: 26, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1197, file: !54, line: 418, column: 16)
!1209 = !DILocation(line: 418, column: 16, scope: !1208)
!1210 = !DILocation(line: 418, column: 29, scope: !1208)
!1211 = !DILocation(line: 418, column: 37, scope: !1208)
!1212 = !DILocation(line: 418, column: 16, scope: !1197)
!1213 = !DILocation(line: 419, column: 18, scope: !1208)
!1214 = !DILocation(line: 419, column: 45, scope: !1208)
!1215 = !DILocation(line: 419, column: 35, scope: !1208)
!1216 = !DILocation(line: 419, column: 48, scope: !1208)
!1217 = !DILocation(line: 419, column: 55, scope: !1208)
!1218 = !DILocation(line: 419, column: 9, scope: !1208)
!1219 = !DILocation(line: 421, column: 18, scope: !1208)
!1220 = !DILocation(line: 421, column: 45, scope: !1208)
!1221 = !DILocation(line: 421, column: 35, scope: !1208)
!1222 = !DILocation(line: 421, column: 48, scope: !1208)
!1223 = !DILocation(line: 421, column: 55, scope: !1208)
!1224 = !DILocation(line: 421, column: 60, scope: !1208)
!1225 = !DILocation(line: 421, column: 9, scope: !1208)
!1226 = !DILocation(line: 422, column: 33, scope: !1136)
!1227 = !DILocation(line: 422, column: 23, scope: !1136)
!1228 = !DILocation(line: 422, column: 36, scope: !1136)
!1229 = !DILocation(line: 422, column: 50, scope: !1136)
!1230 = !DILocation(line: 422, column: 7, scope: !1136)
!1231 = !DILocation(line: 424, column: 24, scope: !1136)
!1232 = !DILocation(line: 424, column: 17, scope: !1136)
!1233 = !DILocation(line: 424, column: 7, scope: !1136)
!1234 = !DILocation(line: 424, column: 20, scope: !1136)
!1235 = !DILocation(line: 424, column: 23, scope: !1136)
!1236 = !DILocation(line: 425, column: 13, scope: !1136)
!1237 = !DILocation(line: 426, column: 13, scope: !1136)
!1238 = !DILocation(line: 427, column: 7, scope: !1136)
!1239 = !DILocation(line: 398, column: 19, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1124, file: !54, discriminator: 2)
!1241 = !DILocation(line: 398, column: 4, scope: !1240)
!1242 = distinct !{!1242, !1243}
!1243 = !DILocation(line: 398, column: 4, scope: !975)
!1244 = !DILocation(line: 430, column: 4, scope: !975)
!1245 = !DILocation(line: 431, column: 1, scope: !975)
!1246 = distinct !DISubprogram(name: "ptimecounting", scope: !54, file: !54, line: 433, type: !321, isLocal: false, isDefinition: true, scopeLine: 434, isOptimized: false, unit: !0, variables: !2)
!1247 = !DILocation(line: 435, column: 4, scope: !1246)
!1248 = !DILocation(line: 437, column: 2, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !54, line: 436, column: 6)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !54, line: 435, column: 4)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !54, line: 435, column: 4)
!1252 = !DILocation(line: 438, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !54, line: 438, column: 6)
!1254 = !DILocation(line: 438, column: 11, scope: !1253)
!1255 = !DILocation(line: 438, column: 6, scope: !1249)
!1256 = !DILocation(line: 441, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !54, line: 439, column: 4)
!1258 = !DILocation(line: 442, column: 14, scope: !1257)
!1259 = !DILocation(line: 443, column: 4, scope: !1257)
!1260 = !DILocation(line: 445, column: 9, scope: !1253)
!1261 = !DILocation(line: 435, column: 4, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1250, file: !54, discriminator: 1)
!1263 = distinct !{!1263, !1247}
!1264 = !DILocation(line: 448, column: 1, scope: !1246)
