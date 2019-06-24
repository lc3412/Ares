; ModuleID = './vmware_toolbox_cmd-toolboxcmd-info.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-info.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NicInfoV3 = type { %struct.anon, %struct.anon.3, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon = type { i32, %struct.GuestNicV3* }
%struct.GuestNicV3 = type { i8*, %struct.anon.0, %struct.DnsConfigInfo*, %struct.WinsConfigInfo*, %struct.DhcpConfigInfo*, %struct.DhcpConfigInfo* }
%struct.anon.0 = type { i32, %struct.IpAddressEntry* }
%struct.IpAddressEntry = type { %struct.TypedIpAddress, i32, i32*, i32* }
%struct.TypedIpAddress = type { i32, %struct.InetAddress }
%struct.InetAddress = type { i32, i8* }
%struct.anon.3 = type { i32, %struct.InetCidrRouteEntry* }
%struct.InetCidrRouteEntry = type { %struct.TypedIpAddress, i32, %struct.TypedIpAddress*, i32, i32, i32 }
%struct.DnsConfigInfo = type { i8**, i8**, %struct.anon.1, %struct.anon.2 }
%struct.anon.1 = type { i32, %struct.TypedIpAddress* }
%struct.anon.2 = type { i32, i8** }
%struct.WinsConfigInfo = type { %struct.TypedIpAddress, %struct.TypedIpAddress }
%struct.DhcpConfigInfo = type { i32, i8* }
%struct.GuestNicProto = type { i32, %union.anon }
%union.anon = type { %struct.GuestNicList* }
%struct.GuestNicList = type { %struct.anon.4 }
%struct.anon.4 = type { i32, %struct.GuestNic* }
%struct.GuestNic = type { [18 x i8], %struct.anon.5 }
%struct.anon.5 = type { i32, %struct.VmIpAddress* }
%struct.VmIpAddress = type { i32, i8, [64 x i8], [64 x i8] }
%struct._GKeyFile = type opaque
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@.str = private unnamed_addr constant [10 x i8] c"guestinfo\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"max-ipv4-routes\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid %s.%s value: %d. Using default %u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"max-ipv6-routes\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to get nic info.\0A\00", align 1
@optind = external global i32, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"@&!*@*@(arg.info.subcommand)info operation\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"@&!*@*@(arg.info.class)info infoclass\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.11 = private unnamed_addr constant [203 x i8] c"@&!*@*@(help.info)%s: update guest information on the host\0AUsage: %s %s update <infoclass>\0A\0ASubcommands:\0A   update <infoclass>: update information identified by <infoclass>\0A<infoclass> can be 'network'\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s  %d \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"SetGuestInfo\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Error serializing nic info v%d data.\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"%s: update failed: request \22%s\22, reply \22%s\22.\0A\00", align 1
@__FUNCTION__.InfoSendNetworkXdr = private unnamed_addr constant [19 x i8] c"InfoSendNetworkXdr\00", align 1

; Function Attrs: nounwind uwtable
define i32 @InfoUpdateNetwork() #0 !dbg !92 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.NicInfoV3*, align 8
  %3 = alloca %struct.GuestNicProto, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GKeyFile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !98, metadata !99), !dbg !100
  store i32 0, i32* %1, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata %struct.NicInfoV3** %2, metadata !101, metadata !99), !dbg !212
  store %struct.NicInfoV3* null, %struct.NicInfoV3** %2, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata %struct.GuestNicProto* %3, metadata !213, metadata !99), !dbg !257
  %8 = bitcast %struct.GuestNicProto* %3 to i8*, !dbg !257
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %4, metadata !258, metadata !99), !dbg !260
  store i32 10, i32* %4, align 4, !dbg !260
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %5, metadata !261, metadata !99), !dbg !265
  store %struct._GKeyFile* null, %struct._GKeyFile** %5, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata i32* %6, metadata !266, metadata !99), !dbg !267
  store i32 100, i32* %6, align 4, !dbg !267
  call void @llvm.dbg.declare(metadata i32* %7, metadata !268, metadata !99), !dbg !269
  store i32 100, i32* %7, align 4, !dbg !269
  %9 = call i32 @VMTools_LoadConfig(i8* null, i32 0, %struct._GKeyFile** %5, i64* null), !dbg !270
  %10 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !271
  %11 = icmp ne %struct._GKeyFile* %10, null, !dbg !273
  br i1 %11, label %12, label %34, !dbg !274

; <label>:12:                                     ; preds = %0
  %13 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !275
  %14 = call i32 @VMTools_ConfigGetInteger(%struct._GKeyFile* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 100), !dbg !277
  store i32 %14, i32* %6, align 4, !dbg !278
  %15 = load i32, i32* %6, align 4, !dbg !279
  %16 = icmp slt i32 %15, 0, !dbg !281
  br i1 %16, label %20, label %17, !dbg !282

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %6, align 4, !dbg !283
  %19 = icmp sgt i32 %18, 100, !dbg !284
  br i1 %19, label %20, label %22, !dbg !285

; <label>:20:                                     ; preds = %17, %12
  %21 = load i32, i32* %6, align 4, !dbg !287
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 %21, i32 100), !dbg !289
  store i32 100, i32* %6, align 4, !dbg !290
  br label %22, !dbg !291

; <label>:22:                                     ; preds = %20, %17
  %23 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !292
  %24 = call i32 @VMTools_ConfigGetInteger(%struct._GKeyFile* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 100), !dbg !293
  store i32 %24, i32* %7, align 4, !dbg !294
  %25 = load i32, i32* %7, align 4, !dbg !295
  %26 = icmp slt i32 %25, 0, !dbg !297
  br i1 %26, label %30, label %27, !dbg !298

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %7, align 4, !dbg !299
  %29 = icmp sgt i32 %28, 100, !dbg !300
  br i1 %29, label %30, label %32, !dbg !301

; <label>:30:                                     ; preds = %27, %22
  %31 = load i32, i32* %7, align 4, !dbg !302
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 %31, i32 100), !dbg !304
  store i32 100, i32* %7, align 4, !dbg !305
  br label %32, !dbg !306

; <label>:32:                                     ; preds = %30, %27
  %33 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !307
  call void @g_key_file_free(%struct._GKeyFile* %33), !dbg !308
  br label %34, !dbg !309

; <label>:34:                                     ; preds = %32, %0
  %35 = load i32, i32* %6, align 4, !dbg !310
  %36 = load i32, i32* %7, align 4, !dbg !312
  %37 = call signext i8 @GuestInfo_GetNicInfo(i32 %35, i32 %36, %struct.NicInfoV3** %2), !dbg !313
  %38 = icmp ne i8 %37, 0, !dbg !313
  br i1 %38, label %40, label %39, !dbg !314

; <label>:39:                                     ; preds = %34
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0)), !dbg !315
  store i32 1, i32* %1, align 4, !dbg !317
  br label %51, !dbg !318

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %3, i32 0, i32 0, !dbg !319
  store i32 3, i32* %41, align 8, !dbg !320
  %42 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !321
  %43 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %3, i32 0, i32 1, !dbg !322
  %44 = bitcast %union.anon* %43 to %struct.NicInfoV3**, !dbg !323
  store %struct.NicInfoV3* %42, %struct.NicInfoV3** %44, align 8, !dbg !324
  %45 = load i32, i32* %4, align 4, !dbg !325
  %46 = call signext i8 @InfoSendNetworkXdr(%struct.GuestNicProto* %3, i32 %45), !dbg !327
  %47 = icmp ne i8 %46, 0, !dbg !327
  br i1 %47, label %49, label %48, !dbg !328

; <label>:48:                                     ; preds = %40
  store i32 1, i32* %1, align 4, !dbg !329
  br label %49, !dbg !331

; <label>:49:                                     ; preds = %48, %40
  %50 = load %struct.NicInfoV3*, %struct.NicInfoV3** %2, align 8, !dbg !332
  call void @GuestInfo_FreeNicInfo(%struct.NicInfoV3* %50), !dbg !333
  br label %51, !dbg !333

; <label>:51:                                     ; preds = %49, %39
  %52 = load i32, i32* %1, align 4, !dbg !334
  ret i32 %52, !dbg !335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #3

declare i32 @VMTools_ConfigGetInteger(%struct._GKeyFile*, i8*, i8*, i32) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare void @g_key_file_free(%struct._GKeyFile*) #3

declare signext i8 @GuestInfo_GetNicInfo(i32, i32, %struct.NicInfoV3**) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @InfoSendNetworkXdr(%struct.GuestNicProto*, i32) #0 !dbg !336 {
  %3 = alloca %struct.GuestNicProto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.XDR, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.GuestNicProto* %0, %struct.GuestNicProto** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestNicProto** %3, metadata !340, metadata !99), !dbg !341
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !342, metadata !99), !dbg !343
  call void @llvm.dbg.declare(metadata i8* %5, metadata !344, metadata !99), !dbg !345
  store i8 0, i8* %5, align 1, !dbg !345
  call void @llvm.dbg.declare(metadata %struct.XDR* %6, metadata !346, metadata !99), !dbg !414
  call void @llvm.dbg.declare(metadata i8** %7, metadata !415, metadata !99), !dbg !416
  call void @llvm.dbg.declare(metadata i8** %8, metadata !417, metadata !99), !dbg !418
  store i8* null, i8** %8, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata i64* %9, metadata !419, metadata !99), !dbg !423
  %10 = load i32, i32* %4, align 4, !dbg !424
  %11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 %10), !dbg !425
  store i8* %11, i8** %7, align 8, !dbg !426
  %12 = call %struct.XDR* @DynXdr_Create(%struct.XDR* %6), !dbg !427
  %13 = icmp eq %struct.XDR* %12, null, !dbg !429
  br i1 %13, label %14, label %15, !dbg !430

; <label>:14:                                     ; preds = %2
  br label %47, !dbg !431

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %7, align 8, !dbg !433
  %17 = load i8*, i8** %7, align 8, !dbg !435
  %18 = call i64 @strlen(i8* %17) #5, !dbg !436
  %19 = call signext i8 @DynXdr_AppendRaw(%struct.XDR* %6, i8* %16, i64 %18), !dbg !437
  %20 = icmp ne i8 %19, 0, !dbg !439
  br i1 %20, label %21, label %25, !dbg !440

; <label>:21:                                     ; preds = %15
  %22 = load %struct.GuestNicProto*, %struct.GuestNicProto** %3, align 8, !dbg !441
  %23 = call i32 @xdr_GuestNicProto(%struct.XDR* %6, %struct.GuestNicProto* %22), !dbg !442
  %24 = icmp ne i32 %23, 0, !dbg !442
  br i1 %24, label %29, label %25, !dbg !443

; <label>:25:                                     ; preds = %21, %15
  %26 = load %struct.GuestNicProto*, %struct.GuestNicProto** %3, align 8, !dbg !445
  %27 = getelementptr inbounds %struct.GuestNicProto, %struct.GuestNicProto* %26, i32 0, i32 0, !dbg !447
  %28 = load i32, i32* %27, align 8, !dbg !447
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i32 %28), !dbg !448
  br label %46, !dbg !449

; <label>:29:                                     ; preds = %21
  %30 = call i8* @DynXdr_Get(%struct.XDR* %6), !dbg !450
  %31 = getelementptr inbounds %struct.XDR, %struct.XDR* %6, i32 0, i32 1, !dbg !452
  %32 = load %struct.xdr_ops*, %struct.xdr_ops** %31, align 8, !dbg !452
  %33 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %32, i32 0, i32 4, !dbg !453
  %34 = load i32 (%struct.XDR*)*, i32 (%struct.XDR*)** %33, align 8, !dbg !453
  %35 = call i32 %34(%struct.XDR* %6), !dbg !454
  %36 = zext i32 %35 to i64, !dbg !456
  %37 = call i32 @ToolsCmd_SendRPC(i8* %30, i64 %36, i8** %8, i64* %9), !dbg !457
  %38 = trunc i32 %37 to i8, !dbg !459
  store i8 %38, i8* %5, align 1, !dbg !460
  %39 = load i8, i8* %5, align 1, !dbg !461
  %40 = icmp ne i8 %39, 0, !dbg !461
  br i1 %40, label %44, label %41, !dbg !463

; <label>:41:                                     ; preds = %29
  %42 = load i8*, i8** %7, align 8, !dbg !464
  %43 = load i8*, i8** %8, align 8, !dbg !466
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.InfoSendNetworkXdr, i32 0, i32 0), i8* %42, i8* %43), !dbg !467
  br label %44, !dbg !468

; <label>:44:                                     ; preds = %41, %29
  %45 = load i8*, i8** %8, align 8, !dbg !469
  call void @vm_free(i8* %45), !dbg !470
  br label %46

; <label>:46:                                     ; preds = %44, %25
  call void @DynXdr_Destroy(%struct.XDR* %6, i8 signext 1), !dbg !471
  br label %47, !dbg !471

; <label>:47:                                     ; preds = %46, %14
  %48 = load i8*, i8** %7, align 8, !dbg !472
  call void @g_free(i8* %48), !dbg !473
  %49 = load i8, i8* %5, align 1, !dbg !474
  ret i8 %49, !dbg !475
}

declare void @GuestInfo_FreeNicInfo(%struct.NicInfoV3*) #3

; Function Attrs: nounwind uwtable
define i32 @Info_Command(i8**, i32, i32) #0 !dbg !476 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !482, metadata !99), !dbg !483
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !484, metadata !99), !dbg !485
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !486, metadata !99), !dbg !487
  call void @llvm.dbg.declare(metadata i8** %8, metadata !488, metadata !99), !dbg !489
  call void @llvm.dbg.declare(metadata i8** %9, metadata !490, metadata !99), !dbg !491
  %10 = load i32, i32* @optind, align 4, !dbg !492
  %11 = load i32, i32* %6, align 4, !dbg !494
  %12 = icmp sge i32 %10, %11, !dbg !495
  br i1 %12, label %13, label %18, !dbg !496

; <label>:13:                                     ; preds = %3
  %14 = load i8**, i8*** %5, align 8, !dbg !497
  %15 = getelementptr inbounds i8*, i8** %14, i64 0, !dbg !497
  %16 = load i8*, i8** %15, align 8, !dbg !497
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0)), !dbg !499
  call void @ToolsCmd_MissingEntityError(i8* %16, i8* %17), !dbg !500
  store i32 64, i32* %4, align 4, !dbg !501
  br label %61, !dbg !501

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* @optind, align 4, !dbg !502
  %20 = sext i32 %19 to i64, !dbg !503
  %21 = load i8**, i8*** %5, align 8, !dbg !503
  %22 = getelementptr inbounds i8*, i8** %21, i64 %20, !dbg !503
  %23 = load i8*, i8** %22, align 8, !dbg !503
  store i8* %23, i8** %8, align 8, !dbg !504
  %24 = load i32, i32* @optind, align 4, !dbg !505
  %25 = add nsw i32 %24, 1, !dbg !507
  %26 = load i32, i32* %6, align 4, !dbg !508
  %27 = icmp sge i32 %25, %26, !dbg !509
  br i1 %27, label %28, label %33, !dbg !510

; <label>:28:                                     ; preds = %18
  %29 = load i8**, i8*** %5, align 8, !dbg !511
  %30 = getelementptr inbounds i8*, i8** %29, i64 0, !dbg !511
  %31 = load i8*, i8** %30, align 8, !dbg !511
  %32 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)), !dbg !513
  call void @ToolsCmd_MissingEntityError(i8* %31, i8* %32), !dbg !514
  store i32 64, i32* %4, align 4, !dbg !515
  br label %61, !dbg !515

; <label>:33:                                     ; preds = %18
  %34 = load i32, i32* @optind, align 4, !dbg !516
  %35 = add nsw i32 %34, 1, !dbg !517
  %36 = sext i32 %35 to i64, !dbg !518
  %37 = load i8**, i8*** %5, align 8, !dbg !518
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36, !dbg !518
  %39 = load i8*, i8** %38, align 8, !dbg !518
  store i8* %39, i8** %9, align 8, !dbg !519
  %40 = load i8*, i8** %8, align 8, !dbg !520
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)) #5, !dbg !522
  %42 = icmp eq i32 %41, 0, !dbg !523
  br i1 %42, label %43, label %55, !dbg !524

; <label>:43:                                     ; preds = %33
  %44 = load i8*, i8** %9, align 8, !dbg !525
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !528
  %46 = icmp eq i32 %45, 0, !dbg !529
  br i1 %46, label %47, label %49, !dbg !530

; <label>:47:                                     ; preds = %43
  %48 = call i32 @InfoUpdateNetwork(), !dbg !531
  store i32 %48, i32* %4, align 4, !dbg !533
  br label %61, !dbg !533

; <label>:49:                                     ; preds = %43
  %50 = load i8**, i8*** %5, align 8, !dbg !534
  %51 = getelementptr inbounds i8*, i8** %50, i64 0, !dbg !534
  %52 = load i8*, i8** %51, align 8, !dbg !534
  %53 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0)), !dbg !536
  %54 = load i8*, i8** %9, align 8, !dbg !537
  call void @ToolsCmd_UnknownEntityError(i8* %52, i8* %53, i8* %54), !dbg !538
  store i32 64, i32* %4, align 4, !dbg !539
  br label %61, !dbg !539

; <label>:55:                                     ; preds = %33
  %56 = load i8**, i8*** %5, align 8, !dbg !540
  %57 = getelementptr inbounds i8*, i8** %56, i64 0, !dbg !540
  %58 = load i8*, i8** %57, align 8, !dbg !540
  %59 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)), !dbg !542
  %60 = load i8*, i8** %8, align 8, !dbg !543
  call void @ToolsCmd_UnknownEntityError(i8* %58, i8* %59, i8* %60), !dbg !544
  store i32 64, i32* %4, align 4, !dbg !545
  br label %61, !dbg !545

; <label>:61:                                     ; preds = %55, %49, %47, %28, %13
  %62 = load i32, i32* %4, align 4, !dbg !546
  ret i32 %62, !dbg !546
}

declare void @ToolsCmd_MissingEntityError(i8*, i8*) #3

declare i8* @VMTools_GetString(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @Info_Help(i8*, i8*) #0 !dbg !547 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !550, metadata !99), !dbg !551
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !552, metadata !99), !dbg !553
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.11, i32 0, i32 0)), !dbg !554
  %6 = load i8*, i8** %4, align 8, !dbg !555
  %7 = load i8*, i8** %3, align 8, !dbg !556
  %8 = load i8*, i8** %4, align 8, !dbg !557
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8), !dbg !558
  ret void, !dbg !560
}

declare void @g_print(i8*, ...) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare %struct.XDR* @DynXdr_Create(%struct.XDR*) #3

declare signext i8 @DynXdr_AppendRaw(%struct.XDR*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @xdr_GuestNicProto(%struct.XDR*, %struct.GuestNicProto*) #3

declare i32 @ToolsCmd_SendRPC(i8*, i64, i8**, i64*) #3

declare i8* @DynXdr_Get(%struct.XDR*) #3

declare void @vm_free(i8*) #3

declare void @DynXdr_Destroy(%struct.XDR*, i8 signext) #3

declare void @g_free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!89, !90}
!llvm.ident = !{!91}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !83)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-info.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!2 = !{!3, !12, !19, !29, !35, !40, !44, !59, !65, !77}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetAddressType", file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestrpc/nicinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "IAT_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "IAT_IPV4", value: 1)
!8 = !DIEnumerator(name: "IAT_IPV6", value: 2)
!9 = !DIEnumerator(name: "IAT_IPV4Z", value: 3)
!10 = !DIEnumerator(name: "IAT_IPV6Z", value: 4)
!11 = !DIEnumerator(name: "IAT_DNS", value: 16)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressOrigin", file: !4, line: 77, size: 32, align: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "IAO_OTHER", value: 1)
!15 = !DIEnumerator(name: "IAO_MANUAL", value: 2)
!16 = !DIEnumerator(name: "IAO_DHCP", value: 4)
!17 = !DIEnumerator(name: "IAO_LINKLAYER", value: 5)
!18 = !DIEnumerator(name: "IAO_RANDOM", value: 6)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IpAddressStatus", file: !4, line: 86, size: 32, align: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DIEnumerator(name: "IAS_PREFERRED", value: 1)
!22 = !DIEnumerator(name: "IAS_DEPRECATED", value: 2)
!23 = !DIEnumerator(name: "IAS_INVALID", value: 3)
!24 = !DIEnumerator(name: "IAS_INACCESSIBLE", value: 4)
!25 = !DIEnumerator(name: "IAS_UNKNOWN", value: 5)
!26 = !DIEnumerator(name: "IAS_TENTATIVE", value: 6)
!27 = !DIEnumerator(name: "IAS_DUPLICATE", value: 7)
!28 = !DIEnumerator(name: "IAS_OPTIMISTIC", value: 8)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "InetCidrRouteType", file: !4, line: 138, size: 32, align: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "ICRT_OTHER", value: 1)
!32 = !DIEnumerator(name: "ICRT_REJECT", value: 2)
!33 = !DIEnumerator(name: "ICRT_LOCAL", value: 3)
!34 = !DIEnumerator(name: "ICRT_REMOTE", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoVersion", file: !4, line: 17, size: 32, align: 32, elements: !36)
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "NIC_INFO_V1", value: 1)
!38 = !DIEnumerator(name: "NIC_INFO_V2", value: 2)
!39 = !DIEnumerator(name: "NIC_INFO_V3", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "NicInfoAddrType", file: !4, line: 28, size: 32, align: 32, elements: !41)
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "NICINFO_ADDR_IPV4", value: 0)
!43 = !DIEnumerator(name: "NICINFO_ADDR_IPV6", value: 1)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 62, size: 32, align: 32, elements: !46)
!45 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/guestInfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!47 = !DIEnumerator(name: "INFO_ERROR", value: 0)
!48 = !DIEnumerator(name: "INFO_DNS_NAME", value: 1)
!49 = !DIEnumerator(name: "INFO_IPADDRESS", value: 2)
!50 = !DIEnumerator(name: "INFO_DISK_FREE_SPACE", value: 3)
!51 = !DIEnumerator(name: "INFO_BUILD_NUMBER", value: 4)
!52 = !DIEnumerator(name: "INFO_OS_NAME_FULL", value: 5)
!53 = !DIEnumerator(name: "INFO_OS_NAME", value: 6)
!54 = !DIEnumerator(name: "INFO_UPTIME", value: 7)
!55 = !DIEnumerator(name: "INFO_MEMORY", value: 8)
!56 = !DIEnumerator(name: "INFO_IPADDRESS_V2", value: 9)
!57 = !DIEnumerator(name: "INFO_IPADDRESS_V3", value: 10)
!58 = !DIEnumerator(name: "INFO_MAX", value: 11)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 50, size: 32, align: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!63 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!64 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 51, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76}
!68 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!69 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!70 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!71 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!72 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!73 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!74 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!75 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!76 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !78, line: 81, size: 32, align: 32, elements: !79)
!78 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!81 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!82 = !DIEnumerator(name: "XDR_FREE", value: 2)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !87, line: 46, baseType: !88)
!87 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!88 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !{i32 2, !"Dwarf Version", i32 4}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!92 = distinct !DISubprogram(name: "InfoUpdateNetwork", scope: !93, file: !93, line: 110, type: !94, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!93 = !DIFile(filename: "toolboxcmd-info.c", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!94 = !DISubroutineType(types: !95)
!95 = !{!96}
!96 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!97 = !{}
!98 = !DILocalVariable(name: "ret", scope: !92, file: !93, line: 112, type: !96)
!99 = !DIExpression()
!100 = !DILocation(line: 112, column: 8, scope: !92)
!101 = !DILocalVariable(name: "info", scope: !92, file: !93, line: 113, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoV3", file: !4, line: 190, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NicInfoV3", file: !4, line: 176, size: 512, align: 64, elements: !105)
!105 = !{!106, !188, !208, !209, !210, !211}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !104, file: !4, line: 180, baseType: !107, size: 128, align: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !4, line: 177, size: 128, align: 64, elements: !108)
!108 = !{!109, !115}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !107, file: !4, line: 178, baseType: !110, size: 32, align: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !111, line: 35, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !113, line: 32, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!114 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !107, file: !4, line: 179, baseType: !116, size: 64, align: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicV3", file: !4, line: 174, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicV3", file: !4, line: 163, size: 448, align: 64, elements: !119)
!119 = !{!120, !122, !151, !171, !178, !187}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !118, file: !4, line: 164, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !118, file: !4, line: 168, baseType: !123, size: 128, align: 64, offset: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !118, file: !4, line: 165, size: 128, align: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !123, file: !4, line: 166, baseType: !110, size: 32, align: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !123, file: !4, line: 167, baseType: !127, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressEntry", file: !4, line: 110, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "IpAddressEntry", file: !4, line: 104, size: 384, align: 64, elements: !130)
!130 = !{!131, !143, !145, !148}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !129, file: !4, line: 105, baseType: !132, size: 192, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypedIpAddress", file: !4, line: 102, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TypedIpAddress", file: !4, line: 98, size: 192, align: 64, elements: !134)
!134 = !{!135, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddrType", scope: !133, file: !4, line: 99, baseType: !136, size: 32, align: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressType", file: !4, line: 73, baseType: !3)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressAddr", scope: !133, file: !4, line: 100, baseType: !138, size: 128, align: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddress", file: !4, line: 63, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 60, size: 128, align: 64, elements: !140)
!140 = !{!141, !142}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_len", scope: !139, file: !4, line: 61, baseType: !110, size: 32, align: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "InetAddress_val", scope: !139, file: !4, line: 62, baseType: !121, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressPrefixLength", scope: !129, file: !4, line: 106, baseType: !144, size: 32, align: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetAddressPrefixLength", file: !4, line: 75, baseType: !110)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressOrigin", scope: !129, file: !4, line: 107, baseType: !146, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressOrigin", file: !4, line: 84, baseType: !12)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddressStatus", scope: !129, file: !4, line: 108, baseType: !149, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "IpAddressStatus", file: !4, line: 96, baseType: !19)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !118, file: !4, line: 169, baseType: !152, size: 64, align: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsConfigInfo", file: !4, line: 129, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DnsConfigInfo", file: !4, line: 117, size: 384, align: 64, elements: !155)
!155 = !{!156, !159, !160, !166}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hostName", scope: !154, file: !4, line: 118, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "DnsHostname", file: !4, line: 113, baseType: !121)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "domainName", scope: !154, file: !4, line: 119, baseType: !157, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "serverList", scope: !154, file: !4, line: 123, baseType: !161, size: 128, align: 64, offset: 128)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !4, line: 120, size: 128, align: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_len", scope: !161, file: !4, line: 121, baseType: !110, size: 32, align: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "serverList_val", scope: !161, file: !4, line: 122, baseType: !165, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes", scope: !154, file: !4, line: 127, baseType: !167, size: 128, align: 64, offset: 256)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !4, line: 124, size: 128, align: 64, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_len", scope: !167, file: !4, line: 125, baseType: !110, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "searchSuffixes_val", scope: !167, file: !4, line: 126, baseType: !157, size: 64, align: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !118, file: !4, line: 170, baseType: !172, size: 64, align: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "WinsConfigInfo", file: !4, line: 135, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WinsConfigInfo", file: !4, line: 131, size: 384, align: 64, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !174, file: !4, line: 132, baseType: !132, size: 192, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !174, file: !4, line: 133, baseType: !132, size: 192, align: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !118, file: !4, line: 171, baseType: !179, size: 64, align: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "DhcpConfigInfo", file: !4, line: 161, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DhcpConfigInfo", file: !4, line: 157, size: 128, align: 64, elements: !182)
!182 = !{!183, !186}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !181, file: !4, line: 158, baseType: !184, size: 32, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !185, line: 37, baseType: !96)
!185 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpSettings", scope: !181, file: !4, line: 159, baseType: !121, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !118, file: !4, line: 172, baseType: !179, size: 64, align: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !104, file: !4, line: 184, baseType: !189, size: 128, align: 64, offset: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !4, line: 181, size: 128, align: 64, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "routes_len", scope: !189, file: !4, line: 182, baseType: !110, size: 32, align: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "routes_val", scope: !189, file: !4, line: 183, baseType: !193, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteEntry", file: !4, line: 154, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InetCidrRouteEntry", file: !4, line: 146, size: 448, align: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !205, !207}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteDest", scope: !195, file: !4, line: 147, baseType: !132, size: 192, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRoutePfxLen", scope: !195, file: !4, line: 148, baseType: !144, size: 32, align: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteNextHop", scope: !195, file: !4, line: 149, baseType: !165, size: 64, align: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteIfIndex", scope: !195, file: !4, line: 150, baseType: !201, size: 32, align: 32, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !202, line: 173, baseType: !203)
!202 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !204, line: 51, baseType: !114)
!204 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteType", scope: !195, file: !4, line: 151, baseType: !206, size: 32, align: 32, offset: 352)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "InetCidrRouteType", file: !4, line: 144, baseType: !29)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inetCidrRouteMetric", scope: !195, file: !4, line: 152, baseType: !201, size: 32, align: 32, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dnsConfigInfo", scope: !104, file: !4, line: 185, baseType: !152, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "winsConfigInfo", scope: !104, file: !4, line: 186, baseType: !172, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov4", scope: !104, file: !4, line: 187, baseType: !179, size: 64, align: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpConfigInfov6", scope: !104, file: !4, line: 188, baseType: !179, size: 64, align: 64, offset: 448)
!212 = !DILocation(line: 113, column: 15, scope: !92)
!213 = !DILocalVariable(name: "msg", scope: !92, file: !93, line: 114, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestNicProto", file: !4, line: 199, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicProto", file: !4, line: 192, size: 128, align: 64, elements: !216)
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !215, file: !4, line: 193, baseType: !218, size: 32, align: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoVersion", file: !4, line: 22, baseType: !35)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "GuestNicProto_u", scope: !215, file: !4, line: 197, baseType: !220, size: 64, align: 64, offset: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !4, line: 194, size: 64, align: 64, elements: !221)
!221 = !{!222, !255}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nicsV2", scope: !220, file: !4, line: 195, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNicList", file: !4, line: 51, size: 128, align: 64, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "nics", scope: !224, file: !4, line: 55, baseType: !227, size: 128, align: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !4, line: 52, size: 128, align: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nics_len", scope: !227, file: !4, line: 53, baseType: !110, size: 32, align: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nics_val", scope: !227, file: !4, line: 54, baseType: !231, size: 64, align: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestNic", file: !4, line: 42, size: 320, align: 64, elements: !233)
!233 = !{!234, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "macAddress", scope: !232, file: !4, line: 43, baseType: !235, size: 144, align: 8)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 144, align: 8, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 18)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !232, file: !4, line: 47, baseType: !239, size: 128, align: 64, offset: 192)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !4, line: 44, size: 128, align: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ips_len", scope: !239, file: !4, line: 45, baseType: !110, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ips_val", scope: !239, file: !4, line: 46, baseType: !243, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmIpAddress", file: !4, line: 34, size: 1088, align: 32, elements: !245)
!245 = !{!246, !248, !250, !254}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "addressFamily", scope: !244, file: !4, line: 35, baseType: !247, size: 32, align: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "NicInfoAddrType", file: !4, line: 32, baseType: !40)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dhcpEnabled", scope: !244, file: !4, line: 36, baseType: !249, size: 8, align: 8, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !202, line: 230, baseType: !88)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ipAddress", scope: !244, file: !4, line: 37, baseType: !251, size: 512, align: 8, offset: 40)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 512, align: 8, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "subnetMask", scope: !244, file: !4, line: 38, baseType: !251, size: 512, align: 8, offset: 552)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nicInfoV3", scope: !220, file: !4, line: 196, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!257 = !DILocation(line: 114, column: 18, scope: !92)
!258 = !DILocalVariable(name: "type", scope: !92, file: !93, line: 115, type: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestInfoType", file: !45, line: 75, baseType: !44)
!260 = !DILocation(line: 115, column: 18, scope: !92)
!261 = !DILocalVariable(name: "confDict", scope: !92, file: !93, line: 117, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !60, line: 48, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !60, line: 48, flags: DIFlagFwdDecl)
!265 = !DILocation(line: 117, column: 14, scope: !92)
!266 = !DILocalVariable(name: "maxIPv4RoutesToGather", scope: !92, file: !93, line: 118, type: !96)
!267 = !DILocation(line: 118, column: 8, scope: !92)
!268 = !DILocalVariable(name: "maxIPv6RoutesToGather", scope: !92, file: !93, line: 119, type: !96)
!269 = !DILocation(line: 119, column: 8, scope: !92)
!270 = !DILocation(line: 130, column: 4, scope: !92)
!271 = !DILocation(line: 132, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !92, file: !93, line: 132, column: 8)
!273 = !DILocation(line: 132, column: 17, scope: !272)
!274 = !DILocation(line: 132, column: 8, scope: !92)
!275 = !DILocation(line: 134, column: 41, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !93, line: 132, column: 25)
!277 = !DILocation(line: 134, column: 16, scope: !276)
!278 = !DILocation(line: 133, column: 29, scope: !276)
!279 = !DILocation(line: 138, column: 11, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !93, line: 138, column: 11)
!281 = !DILocation(line: 138, column: 33, scope: !280)
!282 = !DILocation(line: 138, column: 37, scope: !280)
!283 = !DILocation(line: 139, column: 11, scope: !280)
!284 = !DILocation(line: 139, column: 33, scope: !280)
!285 = !DILocation(line: 138, column: 11, scope: !286)
!286 = !DILexicalBlockFile(scope: !276, file: !93, discriminator: 1)
!287 = !DILocation(line: 140, column: 132, scope: !288)
!288 = distinct !DILexicalBlock(scope: !280, file: !93, line: 139, column: 40)
!289 = !DILocation(line: 140, column: 10, scope: !288)
!290 = !DILocation(line: 145, column: 32, scope: !288)
!291 = !DILocation(line: 146, column: 7, scope: !288)
!292 = !DILocation(line: 149, column: 41, scope: !276)
!293 = !DILocation(line: 149, column: 16, scope: !276)
!294 = !DILocation(line: 148, column: 29, scope: !276)
!295 = !DILocation(line: 153, column: 11, scope: !296)
!296 = distinct !DILexicalBlock(scope: !276, file: !93, line: 153, column: 11)
!297 = !DILocation(line: 153, column: 33, scope: !296)
!298 = !DILocation(line: 153, column: 37, scope: !296)
!299 = !DILocation(line: 154, column: 11, scope: !296)
!300 = !DILocation(line: 154, column: 33, scope: !296)
!301 = !DILocation(line: 153, column: 11, scope: !286)
!302 = !DILocation(line: 155, column: 132, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !93, line: 154, column: 40)
!304 = !DILocation(line: 155, column: 10, scope: !303)
!305 = !DILocation(line: 160, column: 32, scope: !303)
!306 = !DILocation(line: 161, column: 7, scope: !303)
!307 = !DILocation(line: 162, column: 23, scope: !276)
!308 = !DILocation(line: 162, column: 7, scope: !276)
!309 = !DILocation(line: 163, column: 4, scope: !276)
!310 = !DILocation(line: 165, column: 30, scope: !311)
!311 = distinct !DILexicalBlock(scope: !92, file: !93, line: 165, column: 8)
!312 = !DILocation(line: 166, column: 30, scope: !311)
!313 = !DILocation(line: 165, column: 9, scope: !311)
!314 = !DILocation(line: 165, column: 8, scope: !92)
!315 = !DILocation(line: 168, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !93, line: 167, column: 38)
!317 = !DILocation(line: 169, column: 11, scope: !316)
!318 = !DILocation(line: 170, column: 7, scope: !316)
!319 = !DILocation(line: 174, column: 8, scope: !92)
!320 = !DILocation(line: 174, column: 12, scope: !92)
!321 = !DILocation(line: 175, column: 36, scope: !92)
!322 = !DILocation(line: 175, column: 8, scope: !92)
!323 = !DILocation(line: 175, column: 24, scope: !92)
!324 = !DILocation(line: 175, column: 34, scope: !92)
!325 = !DILocation(line: 176, column: 34, scope: !326)
!326 = distinct !DILexicalBlock(scope: !92, file: !93, line: 176, column: 8)
!327 = !DILocation(line: 176, column: 9, scope: !326)
!328 = !DILocation(line: 176, column: 8, scope: !92)
!329 = !DILocation(line: 177, column: 11, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !93, line: 176, column: 41)
!331 = !DILocation(line: 178, column: 4, scope: !330)
!332 = !DILocation(line: 180, column: 26, scope: !92)
!333 = !DILocation(line: 180, column: 4, scope: !92)
!334 = !DILocation(line: 187, column: 11, scope: !92)
!335 = !DILocation(line: 187, column: 4, scope: !92)
!336 = distinct !DISubprogram(name: "InfoSendNetworkXdr", scope: !93, file: !93, line: 55, type: !337, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!337 = !DISubroutineType(types: !338)
!338 = !{!249, !339, !259}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!340 = !DILocalVariable(name: "message", arg: 1, scope: !336, file: !93, line: 55, type: !339)
!341 = !DILocation(line: 55, column: 35, scope: !336)
!342 = !DILocalVariable(name: "type", arg: 2, scope: !336, file: !93, line: 56, type: !259)
!343 = !DILocation(line: 56, column: 34, scope: !336)
!344 = !DILocalVariable(name: "status", scope: !336, file: !93, line: 58, type: !249)
!345 = !DILocation(line: 58, column: 9, scope: !336)
!346 = !DILocalVariable(name: "xdrs", scope: !336, file: !93, line: 59, type: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !78, line: 109, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !78, line: 110, size: 384, align: 64, elements: !349)
!349 = !{!350, !351, !410, !411, !412, !413}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !348, file: !78, line: 112, baseType: !77, size: 32, align: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !348, file: !78, line: 136, baseType: !352, size: 64, align: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !78, line: 113, size: 640, align: 64, elements: !354)
!354 = !{!355, !362, !368, !374, !380, !386, !390, !396, !400, !404}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !353, file: !78, line: 115, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!184, !359, !360}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !353, file: !78, line: 117, baseType: !363, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!184, !359, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !353, file: !78, line: 119, baseType: !369, size: 64, align: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!184, !359, !372, !110}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !111, line: 116, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !113, line: 183, baseType: !121)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !353, file: !78, line: 121, baseType: !375, size: 64, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!184, !359, !378, !110}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !353, file: !78, line: 123, baseType: !381, size: 64, align: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!110, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !353, file: !78, line: 125, baseType: !387, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!184, !359, !110}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !353, file: !78, line: 127, baseType: !391, size: 64, align: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !359, !110}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !204, line: 38, baseType: !96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !353, file: !78, line: 129, baseType: !397, size: 64, align: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !359}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !353, file: !78, line: 131, baseType: !401, size: 64, align: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!184, !359, !394}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !353, file: !78, line: 133, baseType: !405, size: 64, align: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!184, !359, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !348, file: !78, line: 137, baseType: !372, size: 64, align: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !348, file: !78, line: 138, baseType: !372, size: 64, align: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !348, file: !78, line: 139, baseType: !372, size: 64, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !348, file: !78, line: 140, baseType: !110, size: 32, align: 32, offset: 320)
!414 = !DILocation(line: 59, column: 8, scope: !336)
!415 = !DILocalVariable(name: "request", scope: !336, file: !93, line: 60, type: !85)
!416 = !DILocation(line: 60, column: 11, scope: !336)
!417 = !DILocalVariable(name: "reply", scope: !336, file: !93, line: 61, type: !121)
!418 = !DILocation(line: 61, column: 10, scope: !336)
!419 = !DILocalVariable(name: "replyLen", scope: !336, file: !93, line: 62, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !421, line: 216, baseType: !422)
!421 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1635")
!422 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!423 = !DILocation(line: 62, column: 11, scope: !336)
!424 = !DILocation(line: 65, column: 57, scope: !336)
!425 = !DILocation(line: 65, column: 14, scope: !336)
!426 = !DILocation(line: 65, column: 12, scope: !336)
!427 = !DILocation(line: 67, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !336, file: !93, line: 67, column: 8)
!429 = !DILocation(line: 67, column: 29, scope: !428)
!430 = !DILocation(line: 67, column: 8, scope: !336)
!431 = !DILocation(line: 68, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !93, line: 67, column: 37)
!433 = !DILocation(line: 72, column: 33, scope: !434)
!434 = distinct !DILexicalBlock(scope: !336, file: !93, line: 72, column: 8)
!435 = !DILocation(line: 72, column: 49, scope: !434)
!436 = !DILocation(line: 72, column: 42, scope: !434)
!437 = !DILocation(line: 72, column: 9, scope: !438)
!438 = !DILexicalBlockFile(scope: !434, file: !93, discriminator: 2)
!439 = !DILocation(line: 72, column: 9, scope: !434)
!440 = !DILocation(line: 72, column: 59, scope: !434)
!441 = !DILocation(line: 73, column: 34, scope: !434)
!442 = !DILocation(line: 73, column: 9, scope: !434)
!443 = !DILocation(line: 72, column: 8, scope: !444)
!444 = !DILexicalBlockFile(scope: !336, file: !93, discriminator: 1)
!445 = !DILocation(line: 74, column: 89, scope: !446)
!446 = distinct !DILexicalBlock(scope: !434, file: !93, line: 73, column: 44)
!447 = !DILocation(line: 74, column: 98, scope: !446)
!448 = !DILocation(line: 74, column: 7, scope: !446)
!449 = !DILocation(line: 75, column: 4, scope: !446)
!450 = !DILocation(line: 76, column: 33, scope: !451)
!451 = distinct !DILexicalBlock(scope: !434, file: !93, line: 75, column: 11)
!452 = !DILocation(line: 76, column: 54, scope: !451)
!453 = !DILocation(line: 76, column: 61, scope: !451)
!454 = !DILocation(line: 76, column: 51, scope: !455)
!455 = !DILexicalBlockFile(scope: !451, file: !93, discriminator: 1)
!456 = !DILocation(line: 76, column: 51, scope: !451)
!457 = !DILocation(line: 76, column: 16, scope: !458)
!458 = !DILexicalBlockFile(scope: !451, file: !93, discriminator: 2)
!459 = !DILocation(line: 76, column: 16, scope: !451)
!460 = !DILocation(line: 76, column: 14, scope: !451)
!461 = !DILocation(line: 78, column: 12, scope: !462)
!462 = distinct !DILexicalBlock(scope: !451, file: !93, line: 78, column: 11)
!463 = !DILocation(line: 78, column: 11, scope: !451)
!464 = !DILocation(line: 79, column: 120, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !93, line: 78, column: 20)
!466 = !DILocation(line: 79, column: 129, scope: !465)
!467 = !DILocation(line: 79, column: 10, scope: !465)
!468 = !DILocation(line: 81, column: 7, scope: !465)
!469 = !DILocation(line: 82, column: 15, scope: !451)
!470 = !DILocation(line: 82, column: 7, scope: !451)
!471 = !DILocation(line: 84, column: 4, scope: !336)
!472 = !DILocation(line: 87, column: 11, scope: !336)
!473 = !DILocation(line: 87, column: 4, scope: !336)
!474 = !DILocation(line: 88, column: 11, scope: !336)
!475 = !DILocation(line: 88, column: 4, scope: !336)
!476 = distinct !DISubprogram(name: "Info_Command", scope: !93, file: !93, line: 209, type: !477, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!477 = !DISubroutineType(types: !478)
!478 = !{!96, !479, !96, !480}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !87, line: 50, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !87, line: 49, baseType: !96)
!482 = !DILocalVariable(name: "argv", arg: 1, scope: !476, file: !93, line: 209, type: !479)
!483 = !DILocation(line: 209, column: 21, scope: !476)
!484 = !DILocalVariable(name: "argc", arg: 2, scope: !476, file: !93, line: 210, type: !96)
!485 = !DILocation(line: 210, column: 18, scope: !476)
!486 = !DILocalVariable(name: "quiet", arg: 3, scope: !476, file: !93, line: 211, type: !480)
!487 = !DILocation(line: 211, column: 23, scope: !476)
!488 = !DILocalVariable(name: "subcommand", scope: !476, file: !93, line: 213, type: !121)
!489 = !DILocation(line: 213, column: 10, scope: !476)
!490 = !DILocalVariable(name: "class", scope: !476, file: !93, line: 214, type: !121)
!491 = !DILocation(line: 214, column: 10, scope: !476)
!492 = !DILocation(line: 217, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !476, file: !93, line: 217, column: 8)
!494 = !DILocation(line: 217, column: 20, scope: !493)
!495 = !DILocation(line: 217, column: 17, scope: !493)
!496 = !DILocation(line: 217, column: 8, scope: !476)
!497 = !DILocation(line: 218, column: 35, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !93, line: 217, column: 26)
!499 = !DILocation(line: 219, column: 35, scope: !498)
!500 = !DILocation(line: 218, column: 7, scope: !498)
!501 = !DILocation(line: 220, column: 7, scope: !498)
!502 = !DILocation(line: 222, column: 22, scope: !476)
!503 = !DILocation(line: 222, column: 17, scope: !476)
!504 = !DILocation(line: 222, column: 15, scope: !476)
!505 = !DILocation(line: 225, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !476, file: !93, line: 225, column: 8)
!507 = !DILocation(line: 225, column: 16, scope: !506)
!508 = !DILocation(line: 225, column: 24, scope: !506)
!509 = !DILocation(line: 225, column: 21, scope: !506)
!510 = !DILocation(line: 225, column: 8, scope: !476)
!511 = !DILocation(line: 226, column: 35, scope: !512)
!512 = distinct !DILexicalBlock(scope: !506, file: !93, line: 225, column: 30)
!513 = !DILocation(line: 227, column: 35, scope: !512)
!514 = !DILocation(line: 226, column: 7, scope: !512)
!515 = !DILocation(line: 228, column: 7, scope: !512)
!516 = !DILocation(line: 231, column: 17, scope: !476)
!517 = !DILocation(line: 231, column: 24, scope: !476)
!518 = !DILocation(line: 231, column: 12, scope: !476)
!519 = !DILocation(line: 231, column: 10, scope: !476)
!520 = !DILocation(line: 233, column: 15, scope: !521)
!521 = distinct !DILexicalBlock(scope: !476, file: !93, line: 233, column: 8)
!522 = !DILocation(line: 233, column: 8, scope: !521)
!523 = !DILocation(line: 233, column: 37, scope: !521)
!524 = !DILocation(line: 233, column: 8, scope: !476)
!525 = !DILocation(line: 234, column: 18, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !93, line: 234, column: 11)
!527 = distinct !DILexicalBlock(scope: !521, file: !93, line: 233, column: 43)
!528 = !DILocation(line: 234, column: 11, scope: !526)
!529 = !DILocation(line: 234, column: 36, scope: !526)
!530 = !DILocation(line: 234, column: 11, scope: !527)
!531 = !DILocation(line: 235, column: 17, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !93, line: 234, column: 42)
!533 = !DILocation(line: 235, column: 10, scope: !532)
!534 = !DILocation(line: 237, column: 38, scope: !535)
!535 = distinct !DILexicalBlock(scope: !526, file: !93, line: 236, column: 14)
!536 = !DILocation(line: 238, column: 38, scope: !535)
!537 = !DILocation(line: 239, column: 38, scope: !535)
!538 = !DILocation(line: 237, column: 10, scope: !535)
!539 = !DILocation(line: 240, column: 10, scope: !535)
!540 = !DILocation(line: 243, column: 35, scope: !541)
!541 = distinct !DILexicalBlock(scope: !521, file: !93, line: 242, column: 11)
!542 = !DILocation(line: 244, column: 35, scope: !541)
!543 = !DILocation(line: 245, column: 35, scope: !541)
!544 = !DILocation(line: 243, column: 7, scope: !541)
!545 = !DILocation(line: 246, column: 7, scope: !541)
!546 = !DILocation(line: 248, column: 1, scope: !476)
!547 = distinct !DISubprogram(name: "Info_Help", scope: !93, file: !93, line: 268, type: !548, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !378, !378}
!550 = !DILocalVariable(name: "progName", arg: 1, scope: !547, file: !93, line: 268, type: !378)
!551 = !DILocation(line: 268, column: 23, scope: !547)
!552 = !DILocalVariable(name: "cmd", arg: 2, scope: !547, file: !93, line: 269, type: !378)
!553 = !DILocation(line: 269, column: 23, scope: !547)
!554 = !DILocation(line: 271, column: 12, scope: !547)
!555 = !DILocation(line: 277, column: 12, scope: !547)
!556 = !DILocation(line: 277, column: 17, scope: !547)
!557 = !DILocation(line: 277, column: 27, scope: !547)
!558 = !DILocation(line: 271, column: 4, scope: !559)
!559 = !DILexicalBlockFile(scope: !547, file: !93, discriminator: 1)
!560 = !DILocation(line: 278, column: 1, scope: !547)
