; ModuleID = './libresolutionCommon_la-resolutionCommon.o.i'
source_filename = "./libresolutionCommon_la-resolutionCommon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Drm2Interface = type { i32 (i8*, i8*)*, i32 (i32)*, %struct._drmVersion* (i32)*, void (%struct._drmVersion*)*, i32 (i32)*, i32 (i32, i64, i8*, i64)* }
%struct._drmVersion = type { i32, i32, i32, i32, i8*, i32, i8*, i32, i8* }
%struct.Udev1Interface = type { i8* (%struct.udev_device*)*, %struct.udev_device* (%struct.udev_device*, i8*, i8*)*, i8* (%struct.udev_device*, i8*)*, %struct.udev_device* (%struct.udev*, i8*)*, %struct.udev_device* (%struct.udev_device*)*, i32 (%struct.udev_enumerate*, i8*, i8*)*, i32 (%struct.udev_enumerate*, i8*)*, %struct.udev_list_entry* (%struct.udev_enumerate*)*, %struct.udev_enumerate* (%struct.udev*)*, i32 (%struct.udev_enumerate*)*, %struct.udev_enumerate* (%struct.udev_enumerate*)*, i8* (%struct.udev_list_entry*)*, %struct.udev_list_entry* (%struct.udev_list_entry*)*, %struct.udev* ()*, %struct.udev* (%struct.udev*)* }
%struct.udev_device = type opaque
%struct.udev = type opaque
%struct.udev_enumerate = type opaque
%struct.udev_list_entry = type opaque
%struct.ToolsAppCtx = type { i32, i8*, i32, i32, %struct._GMainLoop*, %struct._RpcChannel*, %struct._GKeyFile*, i32, i32, i8**, i8* }
%struct._GMainLoop = type opaque
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"resolutionKMS\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@driverNames = internal global [2 x i8*] [i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"version=\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"resolutionCommon\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"%s: ResolutionKMS enabled based on Xorg driver version.\0A\00", align 1
@__func__.resolutionCheckForKMS = private unnamed_addr constant [22 x i8] c"resolutionCheckForKMS\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"%s: ResolutionKMS disabled. (No configuration).\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: ResolutionKMS %s using configuration file info.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"%s: Failed to find needed system libraries for resolutionKMS.\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%s: dlopen succeeded.\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%s: No system support for resolutionKMS.\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%s: System support available for resolutionKMS.\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%s: Scanning for VMWare Xorg drivers.\0A\00", align 1
@__func__.resolutionXorgDriverVersion = private unnamed_addr constant [28 x i8] c"resolutionXorgDriverVersion\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"%s: Looking for \22%s\22.\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"%s: No driver found.\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"%s: Driver found. Looking for version info.\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%s: Version info found: %d.%d.%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"%s: No version info found.\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"/usr/lib64/xorg/modules/drivers/vmware_drv.so\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"/usr/lib/xorg/modules/drivers/vmware_drv.so\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"renderD\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"%s: Failed to open DRM render node.\0A\00", align 1
@__func__.resolutionDRMRPrimaryCheckOpen = private unnamed_addr constant [31 x i8] c"resolutionDRMRPrimaryCheckOpen\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@drmi = external global %struct.Drm2Interface*, align 8
@.str.26 = private unnamed_addr constant [35 x i8] c"%s: Failed to open DRM card node.\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"vmwgfx\00", align 1
@udevi = external global %struct.Udev1Interface*, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"DEVTYPE\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"drm_minor\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"0x15ad\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"0x0405\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"%s: Failed to get DRM version.\0A\00", align 1
@__func__.resolutionDRMCheckVersion = private unnamed_addr constant [26 x i8] c"resolutionDRMCheckVersion\00", align 1
@.str.37 = private unnamed_addr constant [55 x i8] c"%s: Insufficient DRM version %d.%d for resolutionKMS.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @resolutionCheckForKMS(%struct.ToolsAppCtx*) #0 !dbg !36 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ToolsAppCtx*, align 8
  %4 = alloca %struct._GError*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ToolsAppCtx* %0, %struct.ToolsAppCtx** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ToolsAppCtx** %3, metadata !76, metadata !77), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._GError** %4, metadata !79, metadata !77), !dbg !94
  store %struct._GError* null, %struct._GError** %4, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %5, metadata !95, metadata !77), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %6, metadata !97, metadata !77), !dbg !98
  %10 = load %struct.ToolsAppCtx*, %struct.ToolsAppCtx** %3, align 8, !dbg !99
  %11 = getelementptr inbounds %struct.ToolsAppCtx, %struct.ToolsAppCtx* %10, i32 0, i32 6, !dbg !100
  %12 = load %struct._GKeyFile*, %struct._GKeyFile** %11, align 8, !dbg !100
  %13 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._GError** %4), !dbg !101
  store i32 %13, i32* %5, align 4, !dbg !102
  %14 = load %struct._GError*, %struct._GError** %4, align 8, !dbg !103
  %15 = icmp ne %struct._GError* %14, null, !dbg !103
  br i1 %15, label %16, label %31, !dbg !105

; <label>:16:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %7, metadata !106, metadata !77), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %8, metadata !109, metadata !77), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %9, metadata !111, metadata !77), !dbg !112
  call void @g_clear_error(%struct._GError** %4), !dbg !113
  store i32 0, i32* %5, align 4, !dbg !114
  %17 = call i32 @resolutionXorgDriverVersion(i32 2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @driverNames, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32* %7, i32* %8, i32* %9), !dbg !115
  %18 = icmp ne i32 %17, 0, !dbg !115
  br i1 %18, label %29, label %19, !dbg !117

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %7, align 4, !dbg !118
  %21 = icmp sgt i32 %20, 13, !dbg !119
  br i1 %21, label %28, label %22, !dbg !120

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %7, align 4, !dbg !121
  %24 = icmp eq i32 %23, 13, !dbg !122
  br i1 %24, label %25, label %29, !dbg !123

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %8, align 4, !dbg !124
  %27 = icmp sge i32 %26, 2, !dbg !125
  br i1 %27, label %28, label %29, !dbg !126

; <label>:28:                                     ; preds = %25, %19
  store i32 1, i32* %5, align 4, !dbg !128
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.resolutionCheckForKMS, i32 0, i32 0)), !dbg !130
  br label %30, !dbg !131

; <label>:29:                                     ; preds = %25, %22, %16
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.resolutionCheckForKMS, i32 0, i32 0)), !dbg !132
  store i32 0, i32* %5, align 4, !dbg !134
  br label %30

; <label>:30:                                     ; preds = %29, %28
  br label %35, !dbg !135

; <label>:31:                                     ; preds = %1
  %32 = load i32, i32* %5, align 4, !dbg !136
  %33 = icmp ne i32 %32, 0, !dbg !138
  %34 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), !dbg !138
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.resolutionCheckForKMS, i32 0, i32 0), i8* %34), !dbg !139
  br label %35

; <label>:35:                                     ; preds = %31, %30
  %36 = load i32, i32* %5, align 4, !dbg !140
  %37 = icmp ne i32 %36, 0, !dbg !140
  br i1 %37, label %39, label %38, !dbg !142

; <label>:38:                                     ; preds = %35
  store i32 -1, i32* %2, align 4, !dbg !143
  br label %52, !dbg !143

; <label>:39:                                     ; preds = %35
  %40 = call i32 @resolutionDLOpen(), !dbg !144
  %41 = icmp ne i32 %40, 0, !dbg !144
  br i1 %41, label %42, label %43, !dbg !146

; <label>:42:                                     ; preds = %39
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.resolutionCheckForKMS, i32 0, i32 0)), !dbg !147
  store i32 -1, i32* %2, align 4, !dbg !149
  br label %52, !dbg !149

; <label>:43:                                     ; preds = %39
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.resolutionCheckForKMS, i32 0, i32 0)), !dbg !150
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = call i32 @resolutionDRMRPrimaryCheckOpen(), !dbg !152
  store i32 %45, i32* %6, align 4, !dbg !153
  %46 = load i32, i32* %6, align 4, !dbg !154
  %47 = icmp slt i32 %46, 0, !dbg !156
  br i1 %47, label %48, label %49, !dbg !157

; <label>:48:                                     ; preds = %44
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.resolutionCheckForKMS, i32 0, i32 0)), !dbg !158
  br label %50, !dbg !158

; <label>:49:                                     ; preds = %44
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.resolutionCheckForKMS, i32 0, i32 0)), !dbg !159
  br label %50

; <label>:50:                                     ; preds = %49, %48
  %51 = load i32, i32* %6, align 4, !dbg !160
  store i32 %51, i32* %2, align 4, !dbg !161
  br label %52, !dbg !161

; <label>:52:                                     ; preds = %50, %42, %38
  %53 = load i32, i32* %2, align 4, !dbg !162
  ret i32 %53, !dbg !162
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @g_key_file_get_boolean(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare void @g_clear_error(%struct._GError**) #2

; Function Attrs: nounwind uwtable
define i32 @resolutionXorgDriverVersion(i32, i8**, i8*, i32*, i32*, i32*) #0 !dbg !163 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !167, metadata !77), !dbg !168
  store i8** %1, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !169, metadata !77), !dbg !170
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !171, metadata !77), !dbg !172
  store i32* %3, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !173, metadata !77), !dbg !174
  store i32* %4, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !175, metadata !77), !dbg !176
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !177, metadata !77), !dbg !178
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !179, metadata !77), !dbg !240
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !240
  call void @llvm.dbg.declare(metadata i8** %15, metadata !241, metadata !77), !dbg !242
  call void @llvm.dbg.declare(metadata i8* %16, metadata !243, metadata !77), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %17, metadata !245, metadata !77), !dbg !246
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolutionXorgDriverVersion, i32 0, i32 0)), !dbg !247
  store i32 0, i32* %17, align 4, !dbg !248
  br label %18, !dbg !250

; <label>:18:                                     ; preds = %38, %6
  %19 = load i32, i32* %17, align 4, !dbg !251
  %20 = load i32, i32* %8, align 4, !dbg !254
  %21 = icmp slt i32 %19, %20, !dbg !255
  br i1 %21, label %22, label %41, !dbg !256

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %17, align 4, !dbg !257
  %24 = sext i32 %23 to i64, !dbg !259
  %25 = load i8**, i8*** %9, align 8, !dbg !259
  %26 = getelementptr inbounds i8*, i8** %25, i64 %24, !dbg !259
  %27 = load i8*, i8** %26, align 8, !dbg !259
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolutionXorgDriverVersion, i32 0, i32 0), i8* %27), !dbg !260
  %28 = load i32, i32* %17, align 4, !dbg !261
  %29 = sext i32 %28 to i64, !dbg !262
  %30 = load i8**, i8*** %9, align 8, !dbg !262
  %31 = getelementptr inbounds i8*, i8** %30, i64 %29, !dbg !262
  %32 = load i8*, i8** %31, align 8, !dbg !262
  %33 = call %struct._IO_FILE* @fopen64(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)), !dbg !263
  store %struct._IO_FILE* %33, %struct._IO_FILE** %14, align 8, !dbg !264
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !265
  %35 = icmp ne %struct._IO_FILE* %34, null, !dbg !265
  br i1 %35, label %36, label %37, !dbg !267

; <label>:36:                                     ; preds = %22
  br label %41, !dbg !268

; <label>:37:                                     ; preds = %22
  br label %38, !dbg !269

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %17, align 4, !dbg !270
  %40 = add nsw i32 %39, 1, !dbg !270
  store i32 %40, i32* %17, align 4, !dbg !270
  br label %18, !dbg !272, !llvm.loop !273

; <label>:41:                                     ; preds = %36, %18
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !275
  %43 = icmp ne %struct._IO_FILE* %42, null, !dbg !275
  br i1 %43, label %45, label %44, !dbg !277

; <label>:44:                                     ; preds = %41
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolutionXorgDriverVersion, i32 0, i32 0)), !dbg !278
  store i32 -1, i32* %7, align 4, !dbg !280
  br label %101, !dbg !280

; <label>:45:                                     ; preds = %41
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolutionXorgDriverVersion, i32 0, i32 0)), !dbg !281
  %46 = load i8*, i8** %10, align 8, !dbg !282
  store i8* %46, i8** %15, align 8, !dbg !283
  br label %47, !dbg !284

; <label>:47:                                     ; preds = %80, %66, %45
  %48 = load i8*, i8** %15, align 8, !dbg !285
  %49 = load i8, i8* %48, align 1, !dbg !287
  %50 = icmp ne i8 %49, 0, !dbg !288
  br i1 %50, label %51, label %81, !dbg !288

; <label>:51:                                     ; preds = %47
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !289
  %53 = call i32 @feof(%struct._IO_FILE* %52) #5, !dbg !292
  %54 = icmp ne i32 %53, 0, !dbg !292
  br i1 %54, label %55, label %56, !dbg !293

; <label>:55:                                     ; preds = %51
  br label %98, !dbg !294

; <label>:56:                                     ; preds = %51
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !295
  %58 = call i32 @fgetc(%struct._IO_FILE* %57), !dbg !296
  %59 = trunc i32 %58 to i8, !dbg !296
  store i8 %59, i8* %16, align 1, !dbg !297
  %60 = load i8, i8* %16, align 1, !dbg !298
  %61 = sext i8 %60 to i32, !dbg !298
  %62 = load i8*, i8** %15, align 8, !dbg !300
  %63 = load i8, i8* %62, align 1, !dbg !301
  %64 = sext i8 %63 to i32, !dbg !301
  %65 = icmp eq i32 %61, %64, !dbg !302
  br i1 %65, label %66, label %69, !dbg !303

; <label>:66:                                     ; preds = %56
  %67 = load i8*, i8** %15, align 8, !dbg !304
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !304
  store i8* %68, i8** %15, align 8, !dbg !304
  br label %47, !dbg !306, !llvm.loop !307

; <label>:69:                                     ; preds = %56
  %70 = load i8*, i8** %15, align 8, !dbg !308
  %71 = load i8*, i8** %10, align 8, !dbg !310
  %72 = icmp ne i8* %70, %71, !dbg !311
  br i1 %72, label %73, label %79, !dbg !312

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %10, align 8, !dbg !313
  store i8* %74, i8** %15, align 8, !dbg !315
  %75 = load i8, i8* %16, align 1, !dbg !316
  %76 = sext i8 %75 to i32, !dbg !316
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !317
  %78 = call i32 @ungetc(i32 %76, %struct._IO_FILE* %77), !dbg !318
  br label %79, !dbg !319

; <label>:79:                                     ; preds = %73, %69
  br label %80

; <label>:80:                                     ; preds = %79
  br label %47, !dbg !320, !llvm.loop !307

; <label>:81:                                     ; preds = %47
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !322
  %83 = load i32*, i32** %11, align 8, !dbg !324
  %84 = load i32*, i32** %12, align 8, !dbg !325
  %85 = load i32*, i32** %13, align 8, !dbg !326
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32* %83, i32* %84, i32* %85), !dbg !327
  %87 = icmp ne i32 %86, 3, !dbg !328
  br i1 %87, label %88, label %89, !dbg !329

; <label>:88:                                     ; preds = %81
  br label %98, !dbg !330

; <label>:89:                                     ; preds = %81
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !331
  %91 = call i32 @fclose(%struct._IO_FILE* %90), !dbg !332
  %92 = load i32*, i32** %11, align 8, !dbg !333
  %93 = load i32, i32* %92, align 4, !dbg !334
  %94 = load i32*, i32** %12, align 8, !dbg !335
  %95 = load i32, i32* %94, align 4, !dbg !336
  %96 = load i32*, i32** %13, align 8, !dbg !337
  %97 = load i32, i32* %96, align 4, !dbg !338
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolutionXorgDriverVersion, i32 0, i32 0), i32 %93, i32 %95, i32 %97), !dbg !339
  store i32 0, i32* %7, align 4, !dbg !340
  br label %101, !dbg !340

; <label>:98:                                     ; preds = %88, %55
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !341
  %100 = call i32 @fclose(%struct._IO_FILE* %99), !dbg !342
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.resolutionXorgDriverVersion, i32 0, i32 0)), !dbg !343
  store i32 -1, i32* %7, align 4, !dbg !344
  br label %101, !dbg !344

; <label>:101:                                    ; preds = %98, %89, %44
  %102 = load i32, i32* %7, align 4, !dbg !345
  ret i32 %102, !dbg !345
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare i32 @resolutionDLOpen() #2

; Function Attrs: nounwind uwtable
define internal i32 @resolutionDRMRPrimaryCheckOpen() #0 !dbg !346 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !349, metadata !77), !dbg !350
  store i32 -1, i32* %2, align 4, !dbg !350
  %3 = call i32 @resolutionOpenDRM(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)), !dbg !351
  store i32 %3, i32* %2, align 4, !dbg !352
  %4 = load i32, i32* %2, align 4, !dbg !353
  %5 = icmp slt i32 %4, 0, !dbg !355
  br i1 %5, label %6, label %17, !dbg !356

; <label>:6:                                      ; preds = %0
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.resolutionDRMRPrimaryCheckOpen, i32 0, i32 0)), !dbg !357
  %7 = call i32 @resolutionOpenDRM(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !359
  store i32 %7, i32* %2, align 4, !dbg !360
  %8 = load i32, i32* %2, align 4, !dbg !361
  %9 = icmp sge i32 %8, 0, !dbg !363
  br i1 %9, label %10, label %16, !dbg !364

; <label>:10:                                     ; preds = %6
  %11 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !365
  %12 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %11, i32 0, i32 4, !dbg !366
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8, !dbg !366
  %14 = load i32, i32* %2, align 4, !dbg !367
  %15 = call i32 %13(i32 %14), !dbg !365
  br label %16, !dbg !368

; <label>:16:                                     ; preds = %10, %6
  br label %17, !dbg !369

; <label>:17:                                     ; preds = %16, %0
  %18 = load i32, i32* %2, align 4, !dbg !370
  %19 = icmp slt i32 %18, 0, !dbg !372
  br i1 %19, label %20, label %21, !dbg !373

; <label>:20:                                     ; preds = %17
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.resolutionDRMRPrimaryCheckOpen, i32 0, i32 0)), !dbg !374
  br label %30, !dbg !376

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %2, align 4, !dbg !377
  %23 = call i32 @resolutionDRMCheckVersion(i32 %22), !dbg !379
  %24 = icmp ne i32 %23, 0, !dbg !379
  br i1 %24, label %27, label %25, !dbg !380

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !381
  store i32 %26, i32* %1, align 4, !dbg !383
  br label %31, !dbg !383

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %2, align 4, !dbg !384
  %29 = call i32 @close(i32 %28), !dbg !385
  br label %30, !dbg !385

; <label>:30:                                     ; preds = %27, %20
  store i32 -1, i32* %1, align 4, !dbg !386
  br label %31, !dbg !386

; <label>:31:                                     ; preds = %30, %25
  %32 = load i32, i32* %1, align 4, !dbg !387
  ret i32 %32, !dbg !387
}

; Function Attrs: nounwind uwtable
define void @resolutionDRMClose(i32) #0 !dbg !388 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !391, metadata !77), !dbg !392
  %3 = load i32, i32* %2, align 4, !dbg !393
  %4 = call i32 @close(i32 %3), !dbg !394
  call void @resolutionDLClose(), !dbg !395
  ret void, !dbg !396
}

declare i32 @close(i32) #2

declare void @resolutionDLClose() #2

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @resolutionOpenDRM(i8*) #0 !dbg !397 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.udev*, align 8
  %5 = alloca %struct.udev_enumerate*, align 8
  %6 = alloca %struct.udev_list_entry*, align 8
  %7 = alloca %struct.udev_list_entry*, align 8
  %8 = alloca %struct.udev_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.udev_device*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !400, metadata !77), !dbg !401
  call void @llvm.dbg.declare(metadata %struct.udev** %4, metadata !402, metadata !77), !dbg !406
  call void @llvm.dbg.declare(metadata %struct.udev_enumerate** %5, metadata !407, metadata !77), !dbg !410
  call void @llvm.dbg.declare(metadata %struct.udev_list_entry** %6, metadata !411, metadata !77), !dbg !414
  call void @llvm.dbg.declare(metadata %struct.udev_list_entry** %7, metadata !415, metadata !77), !dbg !416
  call void @llvm.dbg.declare(metadata %struct.udev_device** %8, metadata !417, metadata !77), !dbg !420
  call void @llvm.dbg.declare(metadata i32* %9, metadata !421, metadata !77), !dbg !422
  store i32 -1, i32* %9, align 4, !dbg !422
  call void @llvm.dbg.declare(metadata i32* %10, metadata !423, metadata !77), !dbg !424
  call void @llvm.dbg.declare(metadata i8** %11, metadata !425, metadata !77), !dbg !426
  store i8* null, i8** %11, align 8, !dbg !426
  %16 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !427
  %17 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %16, i32 0, i32 0, !dbg !428
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %17, align 8, !dbg !428
  %19 = call i32 %18(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* null), !dbg !427
  store i32 %19, i32* %10, align 4, !dbg !429
  %20 = load i32, i32* %10, align 4, !dbg !430
  %21 = icmp sge i32 %20, 0, !dbg !432
  br i1 %21, label %22, label %28, !dbg !433

; <label>:22:                                     ; preds = %1
  %23 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !434
  %24 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %23, i32 0, i32 4, !dbg !436
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8, !dbg !436
  %26 = load i32, i32* %10, align 4, !dbg !437
  %27 = call i32 %25(i32 %26), !dbg !434
  br label %28, !dbg !438

; <label>:28:                                     ; preds = %22, %1
  %29 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !439
  %30 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %29, i32 0, i32 13, !dbg !440
  %31 = load %struct.udev* ()*, %struct.udev* ()** %30, align 8, !dbg !440
  %32 = call %struct.udev* %31(), !dbg !439
  store %struct.udev* %32, %struct.udev** %4, align 8, !dbg !441
  %33 = load %struct.udev*, %struct.udev** %4, align 8, !dbg !442
  %34 = icmp ne %struct.udev* %33, null, !dbg !442
  br i1 %34, label %36, label %35, !dbg !444

; <label>:35:                                     ; preds = %28
  br label %202, !dbg !445

; <label>:36:                                     ; preds = %28
  %37 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !447
  %38 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %37, i32 0, i32 8, !dbg !448
  %39 = load %struct.udev_enumerate* (%struct.udev*)*, %struct.udev_enumerate* (%struct.udev*)** %38, align 8, !dbg !448
  %40 = load %struct.udev*, %struct.udev** %4, align 8, !dbg !449
  %41 = call %struct.udev_enumerate* %39(%struct.udev* %40), !dbg !447
  store %struct.udev_enumerate* %41, %struct.udev_enumerate** %5, align 8, !dbg !450
  %42 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !451
  %43 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %42, i32 0, i32 6, !dbg !453
  %44 = load i32 (%struct.udev_enumerate*, i8*)*, i32 (%struct.udev_enumerate*, i8*)** %43, align 8, !dbg !453
  %45 = load %struct.udev_enumerate*, %struct.udev_enumerate** %5, align 8, !dbg !454
  %46 = call i32 %44(%struct.udev_enumerate* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)), !dbg !451
  %47 = icmp ne i32 %46, 0, !dbg !451
  br i1 %47, label %48, label %49, !dbg !455

; <label>:48:                                     ; preds = %36
  br label %191, !dbg !456

; <label>:49:                                     ; preds = %36
  %50 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !457
  %51 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %50, i32 0, i32 5, !dbg !459
  %52 = load i32 (%struct.udev_enumerate*, i8*, i8*)*, i32 (%struct.udev_enumerate*, i8*, i8*)** %51, align 8, !dbg !459
  %53 = load %struct.udev_enumerate*, %struct.udev_enumerate** %5, align 8, !dbg !460
  %54 = call i32 %52(%struct.udev_enumerate* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)), !dbg !457
  %55 = icmp ne i32 %54, 0, !dbg !457
  br i1 %55, label %56, label %57, !dbg !461

; <label>:56:                                     ; preds = %49
  br label %191, !dbg !462

; <label>:57:                                     ; preds = %49
  %58 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !463
  %59 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %58, i32 0, i32 9, !dbg !465
  %60 = load i32 (%struct.udev_enumerate*)*, i32 (%struct.udev_enumerate*)** %59, align 8, !dbg !465
  %61 = load %struct.udev_enumerate*, %struct.udev_enumerate** %5, align 8, !dbg !466
  %62 = call i32 %60(%struct.udev_enumerate* %61), !dbg !463
  %63 = icmp ne i32 %62, 0, !dbg !463
  br i1 %63, label %64, label %65, !dbg !467

; <label>:64:                                     ; preds = %57
  br label %191, !dbg !468

; <label>:65:                                     ; preds = %57
  %66 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !469
  %67 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %66, i32 0, i32 7, !dbg !470
  %68 = load %struct.udev_list_entry* (%struct.udev_enumerate*)*, %struct.udev_list_entry* (%struct.udev_enumerate*)** %67, align 8, !dbg !470
  %69 = load %struct.udev_enumerate*, %struct.udev_enumerate** %5, align 8, !dbg !471
  %70 = call %struct.udev_list_entry* %68(%struct.udev_enumerate* %69), !dbg !469
  store %struct.udev_list_entry* %70, %struct.udev_list_entry** %6, align 8, !dbg !472
  %71 = load %struct.udev_list_entry*, %struct.udev_list_entry** %6, align 8, !dbg !473
  store %struct.udev_list_entry* %71, %struct.udev_list_entry** %7, align 8, !dbg !475
  br label %72, !dbg !476

; <label>:72:                                     ; preds = %158, %65
  %73 = load %struct.udev_list_entry*, %struct.udev_list_entry** %7, align 8, !dbg !477
  %74 = icmp ne %struct.udev_list_entry* %73, null, !dbg !480
  br i1 %74, label %75, label %164, !dbg !481

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata i8** %12, metadata !482, metadata !77), !dbg !484
  call void @llvm.dbg.declare(metadata i8** %13, metadata !485, metadata !77), !dbg !486
  call void @llvm.dbg.declare(metadata i8** %14, metadata !487, metadata !77), !dbg !488
  call void @llvm.dbg.declare(metadata %struct.udev_device** %15, metadata !489, metadata !77), !dbg !490
  %76 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !491
  %77 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %76, i32 0, i32 11, !dbg !492
  %78 = load i8* (%struct.udev_list_entry*)*, i8* (%struct.udev_list_entry*)** %77, align 8, !dbg !492
  %79 = load %struct.udev_list_entry*, %struct.udev_list_entry** %7, align 8, !dbg !493
  %80 = call i8* %78(%struct.udev_list_entry* %79), !dbg !491
  store i8* %80, i8** %12, align 8, !dbg !494
  %81 = load i8*, i8** %12, align 8, !dbg !495
  %82 = icmp ne i8* %81, null, !dbg !495
  br i1 %82, label %84, label %83, !dbg !497

; <label>:83:                                     ; preds = %75
  br label %158, !dbg !498

; <label>:84:                                     ; preds = %75
  %85 = load i8*, i8** %12, align 8, !dbg !499
  %86 = load i8*, i8** %3, align 8, !dbg !501
  %87 = call i8* @strstr(i8* %85, i8* %86) #6, !dbg !502
  %88 = icmp ne i8* %87, null, !dbg !502
  br i1 %88, label %90, label %89, !dbg !503

; <label>:89:                                     ; preds = %84
  br label %158, !dbg !504

; <label>:90:                                     ; preds = %84
  %91 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !505
  %92 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %91, i32 0, i32 3, !dbg !506
  %93 = load %struct.udev_device* (%struct.udev*, i8*)*, %struct.udev_device* (%struct.udev*, i8*)** %92, align 8, !dbg !506
  %94 = load %struct.udev*, %struct.udev** %4, align 8, !dbg !507
  %95 = load i8*, i8** %12, align 8, !dbg !508
  %96 = call %struct.udev_device* %93(%struct.udev* %94, i8* %95), !dbg !505
  store %struct.udev_device* %96, %struct.udev_device** %8, align 8, !dbg !509
  %97 = load %struct.udev_device*, %struct.udev_device** %8, align 8, !dbg !510
  %98 = icmp ne %struct.udev_device* %97, null, !dbg !510
  br i1 %98, label %100, label %99, !dbg !512

; <label>:99:                                     ; preds = %90
  br label %191, !dbg !513

; <label>:100:                                    ; preds = %90
  %101 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !514
  %102 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %101, i32 0, i32 1, !dbg !515
  %103 = load %struct.udev_device* (%struct.udev_device*, i8*, i8*)*, %struct.udev_device* (%struct.udev_device*, i8*, i8*)** %102, align 8, !dbg !515
  %104 = load %struct.udev_device*, %struct.udev_device** %8, align 8, !dbg !516
  %105 = call %struct.udev_device* %103(%struct.udev_device* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* null), !dbg !514
  store %struct.udev_device* %105, %struct.udev_device** %15, align 8, !dbg !517
  %106 = load %struct.udev_device*, %struct.udev_device** %15, align 8, !dbg !518
  %107 = icmp ne %struct.udev_device* %106, null, !dbg !518
  br i1 %107, label %109, label %108, !dbg !520

; <label>:108:                                    ; preds = %100
  br label %152, !dbg !521

; <label>:109:                                    ; preds = %100
  %110 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !522
  %111 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %110, i32 0, i32 2, !dbg !523
  %112 = load i8* (%struct.udev_device*, i8*)*, i8* (%struct.udev_device*, i8*)** %111, align 8, !dbg !523
  %113 = load %struct.udev_device*, %struct.udev_device** %15, align 8, !dbg !524
  %114 = call i8* %112(%struct.udev_device* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)), !dbg !522
  store i8* %114, i8** %13, align 8, !dbg !525
  %115 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !526
  %116 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %115, i32 0, i32 2, !dbg !527
  %117 = load i8* (%struct.udev_device*, i8*)*, i8* (%struct.udev_device*, i8*)** %116, align 8, !dbg !527
  %118 = load %struct.udev_device*, %struct.udev_device** %15, align 8, !dbg !528
  %119 = call i8* %117(%struct.udev_device* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)), !dbg !526
  store i8* %119, i8** %14, align 8, !dbg !529
  %120 = load i8*, i8** %13, align 8, !dbg !530
  %121 = icmp ne i8* %120, null, !dbg !530
  br i1 %121, label %122, label %125, !dbg !532

; <label>:122:                                    ; preds = %109
  %123 = load i8*, i8** %14, align 8, !dbg !533
  %124 = icmp ne i8* %123, null, !dbg !533
  br i1 %124, label %126, label %125, !dbg !535

; <label>:125:                                    ; preds = %122, %109
  br label %152, !dbg !536

; <label>:126:                                    ; preds = %122
  %127 = load i8*, i8** %13, align 8, !dbg !537
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0)) #6, !dbg !539
  %129 = icmp ne i32 %128, 0, !dbg !539
  br i1 %129, label %134, label %130, !dbg !540

; <label>:130:                                    ; preds = %126
  %131 = load i8*, i8** %14, align 8, !dbg !541
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #6, !dbg !542
  %133 = icmp ne i32 %132, 0, !dbg !542
  br i1 %133, label %134, label %135, !dbg !543

; <label>:134:                                    ; preds = %130, %126
  br label %152, !dbg !545

; <label>:135:                                    ; preds = %130
  %136 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !546
  %137 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %136, i32 0, i32 0, !dbg !547
  %138 = load i8* (%struct.udev_device*)*, i8* (%struct.udev_device*)** %137, align 8, !dbg !547
  %139 = load %struct.udev_device*, %struct.udev_device** %8, align 8, !dbg !548
  %140 = call i8* %138(%struct.udev_device* %139), !dbg !546
  store i8* %140, i8** %11, align 8, !dbg !549
  %141 = load i8*, i8** %11, align 8, !dbg !550
  %142 = icmp ne i8* %141, null, !dbg !550
  br i1 %142, label %144, label %143, !dbg !552

; <label>:143:                                    ; preds = %135
  br label %185, !dbg !553

; <label>:144:                                    ; preds = %135
  %145 = load i8*, i8** %11, align 8, !dbg !554
  %146 = call i32 (i8*, i32, ...) @open64(i8* %145, i32 2), !dbg !555
  store i32 %146, i32* %9, align 4, !dbg !556
  %147 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !557
  %148 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %147, i32 0, i32 4, !dbg !558
  %149 = load %struct.udev_device* (%struct.udev_device*)*, %struct.udev_device* (%struct.udev_device*)** %148, align 8, !dbg !558
  %150 = load %struct.udev_device*, %struct.udev_device** %8, align 8, !dbg !559
  %151 = call %struct.udev_device* %149(%struct.udev_device* %150), !dbg !557
  br label %164, !dbg !560

; <label>:152:                                    ; preds = %134, %125, %108
  %153 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !561
  %154 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %153, i32 0, i32 4, !dbg !562
  %155 = load %struct.udev_device* (%struct.udev_device*)*, %struct.udev_device* (%struct.udev_device*)** %154, align 8, !dbg !562
  %156 = load %struct.udev_device*, %struct.udev_device** %8, align 8, !dbg !563
  %157 = call %struct.udev_device* %155(%struct.udev_device* %156), !dbg !561
  br label %158, !dbg !564

; <label>:158:                                    ; preds = %152, %89, %83
  %159 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !565
  %160 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %159, i32 0, i32 12, !dbg !567
  %161 = load %struct.udev_list_entry* (%struct.udev_list_entry*)*, %struct.udev_list_entry* (%struct.udev_list_entry*)** %160, align 8, !dbg !567
  %162 = load %struct.udev_list_entry*, %struct.udev_list_entry** %7, align 8, !dbg !568
  %163 = call %struct.udev_list_entry* %161(%struct.udev_list_entry* %162), !dbg !569
  store %struct.udev_list_entry* %163, %struct.udev_list_entry** %7, align 8, !dbg !570
  br label %72, !dbg !571, !llvm.loop !572

; <label>:164:                                    ; preds = %144, %72
  %165 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !574
  %166 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %165, i32 0, i32 10, !dbg !575
  %167 = load %struct.udev_enumerate* (%struct.udev_enumerate*)*, %struct.udev_enumerate* (%struct.udev_enumerate*)** %166, align 8, !dbg !575
  %168 = load %struct.udev_enumerate*, %struct.udev_enumerate** %5, align 8, !dbg !576
  %169 = call %struct.udev_enumerate* %167(%struct.udev_enumerate* %168), !dbg !574
  %170 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !577
  %171 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %170, i32 0, i32 14, !dbg !578
  %172 = load %struct.udev* (%struct.udev*)*, %struct.udev* (%struct.udev*)** %171, align 8, !dbg !578
  %173 = load %struct.udev*, %struct.udev** %4, align 8, !dbg !579
  %174 = call %struct.udev* %172(%struct.udev* %173), !dbg !577
  %175 = load i32, i32* %10, align 4, !dbg !580
  %176 = icmp sge i32 %175, 0, !dbg !582
  br i1 %176, label %177, label %183, !dbg !583

; <label>:177:                                    ; preds = %164
  %178 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !584
  %179 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %178, i32 0, i32 1, !dbg !586
  %180 = load i32 (i32)*, i32 (i32)** %179, align 8, !dbg !586
  %181 = load i32, i32* %10, align 4, !dbg !587
  %182 = call i32 %180(i32 %181), !dbg !584
  br label %183, !dbg !588

; <label>:183:                                    ; preds = %177, %164
  %184 = load i32, i32* %9, align 4, !dbg !589
  store i32 %184, i32* %2, align 4, !dbg !590
  br label %212, !dbg !590

; <label>:185:                                    ; preds = %143
  %186 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !591
  %187 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %186, i32 0, i32 4, !dbg !592
  %188 = load %struct.udev_device* (%struct.udev_device*)*, %struct.udev_device* (%struct.udev_device*)** %187, align 8, !dbg !592
  %189 = load %struct.udev_device*, %struct.udev_device** %8, align 8, !dbg !593
  %190 = call %struct.udev_device* %188(%struct.udev_device* %189), !dbg !591
  br label %191, !dbg !591

; <label>:191:                                    ; preds = %185, %99, %64, %56, %48
  %192 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !594
  %193 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %192, i32 0, i32 10, !dbg !595
  %194 = load %struct.udev_enumerate* (%struct.udev_enumerate*)*, %struct.udev_enumerate* (%struct.udev_enumerate*)** %193, align 8, !dbg !595
  %195 = load %struct.udev_enumerate*, %struct.udev_enumerate** %5, align 8, !dbg !596
  %196 = call %struct.udev_enumerate* %194(%struct.udev_enumerate* %195), !dbg !594
  %197 = load %struct.Udev1Interface*, %struct.Udev1Interface** @udevi, align 8, !dbg !597
  %198 = getelementptr inbounds %struct.Udev1Interface, %struct.Udev1Interface* %197, i32 0, i32 14, !dbg !598
  %199 = load %struct.udev* (%struct.udev*)*, %struct.udev* (%struct.udev*)** %198, align 8, !dbg !598
  %200 = load %struct.udev*, %struct.udev** %4, align 8, !dbg !599
  %201 = call %struct.udev* %199(%struct.udev* %200), !dbg !597
  br label %202, !dbg !597

; <label>:202:                                    ; preds = %191, %35
  %203 = load i32, i32* %10, align 4, !dbg !600
  %204 = icmp sge i32 %203, 0, !dbg !602
  br i1 %204, label %205, label %211, !dbg !603

; <label>:205:                                    ; preds = %202
  %206 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !604
  %207 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %206, i32 0, i32 1, !dbg !606
  %208 = load i32 (i32)*, i32 (i32)** %207, align 8, !dbg !606
  %209 = load i32, i32* %10, align 4, !dbg !607
  %210 = call i32 %208(i32 %209), !dbg !604
  br label %211, !dbg !608

; <label>:211:                                    ; preds = %205, %202
  store i32 -1, i32* %2, align 4, !dbg !609
  br label %212, !dbg !609

; <label>:212:                                    ; preds = %211, %183
  %213 = load i32, i32* %2, align 4, !dbg !610
  ret i32 %213, !dbg !610
}

; Function Attrs: nounwind uwtable
define internal i32 @resolutionDRMCheckVersion(i32) #0 !dbg !611 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct._drmVersion*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !614, metadata !77), !dbg !615
  call void @llvm.dbg.declare(metadata %struct._drmVersion** %4, metadata !616, metadata !77), !dbg !630
  %5 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !631
  %6 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %5, i32 0, i32 2, !dbg !632
  %7 = load %struct._drmVersion* (i32)*, %struct._drmVersion* (i32)** %6, align 8, !dbg !632
  %8 = load i32, i32* %3, align 4, !dbg !633
  %9 = call %struct._drmVersion* %7(i32 %8), !dbg !631
  store %struct._drmVersion* %9, %struct._drmVersion** %4, align 8, !dbg !630
  %10 = load %struct._drmVersion*, %struct._drmVersion** %4, align 8, !dbg !634
  %11 = icmp ne %struct._drmVersion* %10, null, !dbg !634
  br i1 %11, label %13, label %12, !dbg !636

; <label>:12:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.resolutionDRMCheckVersion, i32 0, i32 0)), !dbg !637
  store i32 -1, i32* %2, align 4, !dbg !639
  br label %39, !dbg !639

; <label>:13:                                     ; preds = %1
  %14 = load %struct._drmVersion*, %struct._drmVersion** %4, align 8, !dbg !640
  %15 = getelementptr inbounds %struct._drmVersion, %struct._drmVersion* %14, i32 0, i32 0, !dbg !642
  %16 = load i32, i32* %15, align 8, !dbg !642
  %17 = icmp ne i32 %16, 2, !dbg !643
  br i1 %17, label %23, label %18, !dbg !644

; <label>:18:                                     ; preds = %13
  %19 = load %struct._drmVersion*, %struct._drmVersion** %4, align 8, !dbg !645
  %20 = getelementptr inbounds %struct._drmVersion, %struct._drmVersion* %19, i32 0, i32 1, !dbg !646
  %21 = load i32, i32* %20, align 4, !dbg !646
  %22 = icmp slt i32 %21, 12, !dbg !647
  br i1 %22, label %23, label %34, !dbg !648

; <label>:23:                                     ; preds = %18, %13
  %24 = load %struct._drmVersion*, %struct._drmVersion** %4, align 8, !dbg !650
  %25 = getelementptr inbounds %struct._drmVersion, %struct._drmVersion* %24, i32 0, i32 0, !dbg !652
  %26 = load i32, i32* %25, align 8, !dbg !652
  %27 = load %struct._drmVersion*, %struct._drmVersion** %4, align 8, !dbg !653
  %28 = getelementptr inbounds %struct._drmVersion, %struct._drmVersion* %27, i32 0, i32 1, !dbg !654
  %29 = load i32, i32* %28, align 4, !dbg !654
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.resolutionDRMCheckVersion, i32 0, i32 0), i32 %26, i32 %29), !dbg !655
  %30 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !656
  %31 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %30, i32 0, i32 3, !dbg !657
  %32 = load void (%struct._drmVersion*)*, void (%struct._drmVersion*)** %31, align 8, !dbg !657
  %33 = load %struct._drmVersion*, %struct._drmVersion** %4, align 8, !dbg !658
  call void %32(%struct._drmVersion* %33), !dbg !656
  store i32 -1, i32* %2, align 4, !dbg !659
  br label %39, !dbg !659

; <label>:34:                                     ; preds = %18
  %35 = load %struct.Drm2Interface*, %struct.Drm2Interface** @drmi, align 8, !dbg !660
  %36 = getelementptr inbounds %struct.Drm2Interface, %struct.Drm2Interface* %35, i32 0, i32 3, !dbg !661
  %37 = load void (%struct._drmVersion*)*, void (%struct._drmVersion*)** %36, align 8, !dbg !661
  %38 = load %struct._drmVersion*, %struct._drmVersion** %4, align 8, !dbg !662
  call void %37(%struct._drmVersion* %38), !dbg !660
  store i32 0, i32* %2, align 4, !dbg !663
  br label %39, !dbg !663

; <label>:39:                                     ; preds = %34, %23, %12
  %40 = load i32, i32* %2, align 4, !dbg !664
  ret i32 %40, !dbg !664
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @open64(i8*, i32, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, globals: !21)
!1 = !DIFile(filename: "libresolutionCommon_la-resolutionCommon.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!2 = !{!3, !7}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 232, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/plugin.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!5 = !{!6}
!6 = !DIEnumerator(name: "TOOLS_CORE_API_V1", value: 1)
!7 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !8, line: 51, size: 32, align: 32, elements: !9)
!8 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17, !18}
!10 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!11 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!15 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!16 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!17 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!18 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !{!22, !26}
!22 = distinct !DIGlobalVariable(name: "numDriverNames", scope: !0, file: !23, line: 63, type: !24, isLocal: true, isDefinition: true, variable: i32 2)
!23 = !DIFile(filename: "resolutionCommon.c", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!26 = distinct !DIGlobalVariable(name: "driverNames", scope: !0, file: !23, line: 58, type: !27, isLocal: true, isDefinition: true, variable: [2 x i8*]* @driverNames)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, align: 64, elements: !31)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 2)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!36 = distinct !DISubprogram(name: "resolutionCheckForKMS", scope: !23, file: !23, line: 288, type: !37, isLocal: false, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!37 = !DISubroutineType(types: !38)
!38 = !{!25, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsAppCtx", file: !4, line: 274, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ToolsAppCtx", file: !4, line: 241, size: 576, align: 64, elements: !42)
!42 = !{!43, !45, !50, !53, !54, !59, !64, !69, !70, !71, !73}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !41, file: !4, line: 243, baseType: !44, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolsCoreAPI", file: !4, line: 234, baseType: !3)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !4, line: 245, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !49, line: 46, baseType: !30)
!49 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!50 = !DIDerivedType(tag: DW_TAG_member, name: "isVMware", scope: !41, file: !4, line: 247, baseType: !51, size: 32, align: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !49, line: 50, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !49, line: 49, baseType: !25)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "errorCode", scope: !41, file: !4, line: 249, baseType: !25, size: 32, align: 32, offset: 160)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mainLoop", scope: !41, file: !4, line: 251, baseType: !55, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainLoop", file: !57, line: 56, baseType: !58)
!57 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainLoop", file: !57, line: 56, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rpc", scope: !41, file: !4, line: 253, baseType: !60, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !62, line: 48, baseType: !63)
!62 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !62, line: 48, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !41, file: !4, line: 255, baseType: !65, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !67, line: 48, baseType: !68)
!67 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !67, line: 48, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "blockFD", scope: !41, file: !4, line: 261, baseType: !25, size: 32, align: 32, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "uinputFD", scope: !41, file: !4, line: 263, baseType: !25, size: 32, align: 32, offset: 416)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !41, file: !4, line: 265, baseType: !72, size: 64, align: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "serviceObj", scope: !41, file: !4, line: 273, baseType: !74, size: 64, align: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !49, line: 77, baseType: !20)
!75 = !{}
!76 = !DILocalVariable(name: "ctx", arg: 1, scope: !36, file: !23, line: 288, type: !39)
!77 = !DIExpression()
!78 = !DILocation(line: 288, column: 36, scope: !36)
!79 = !DILocalVariable(name: "err", scope: !36, file: !23, line: 291, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !82, line: 42, baseType: !83)
!82 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !82, line: 44, size: 128, align: 64, elements: !84)
!84 = !{!85, !91, !92}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !83, file: !82, line: 46, baseType: !86, size: 32, align: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !87, line: 36, baseType: !88)
!87 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !89, line: 45, baseType: !90)
!89 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!90 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !83, file: !82, line: 47, baseType: !52, size: 32, align: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !83, file: !82, line: 48, baseType: !93, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!94 = !DILocation(line: 291, column: 13, scope: !36)
!95 = !DILocalVariable(name: "doResolutionKMS", scope: !36, file: !23, line: 292, type: !51)
!96 = !DILocation(line: 292, column: 14, scope: !36)
!97 = !DILocalVariable(name: "fd", scope: !36, file: !23, line: 293, type: !25)
!98 = !DILocation(line: 293, column: 9, scope: !36)
!99 = !DILocation(line: 295, column: 46, scope: !36)
!100 = !DILocation(line: 295, column: 51, scope: !36)
!101 = !DILocation(line: 295, column: 23, scope: !36)
!102 = !DILocation(line: 295, column: 21, scope: !36)
!103 = !DILocation(line: 297, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !36, file: !23, line: 297, column: 9)
!105 = !DILocation(line: 297, column: 9, scope: !36)
!106 = !DILocalVariable(name: "major", scope: !107, file: !23, line: 303, type: !25)
!107 = distinct !DILexicalBlock(scope: !104, file: !23, line: 297, column: 14)
!108 = !DILocation(line: 303, column: 6, scope: !107)
!109 = !DILocalVariable(name: "minor", scope: !107, file: !23, line: 303, type: !25)
!110 = !DILocation(line: 303, column: 13, scope: !107)
!111 = !DILocalVariable(name: "level", scope: !107, file: !23, line: 303, type: !25)
!112 = !DILocation(line: 303, column: 20, scope: !107)
!113 = !DILocation(line: 304, column: 2, scope: !107)
!114 = !DILocation(line: 305, column: 18, scope: !107)
!115 = !DILocation(line: 306, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !107, file: !23, line: 306, column: 6)
!117 = !DILocation(line: 308, column: 23, scope: !116)
!118 = !DILocation(line: 309, column: 7, scope: !116)
!119 = !DILocation(line: 309, column: 13, scope: !116)
!120 = !DILocation(line: 309, column: 18, scope: !116)
!121 = !DILocation(line: 310, column: 8, scope: !116)
!122 = !DILocation(line: 310, column: 14, scope: !116)
!123 = !DILocation(line: 310, column: 20, scope: !116)
!124 = !DILocation(line: 311, column: 8, scope: !116)
!125 = !DILocation(line: 311, column: 14, scope: !116)
!126 = !DILocation(line: 306, column: 6, scope: !127)
!127 = !DILexicalBlockFile(scope: !107, file: !23, discriminator: 1)
!128 = !DILocation(line: 312, column: 22, scope: !129)
!129 = distinct !DILexicalBlock(scope: !116, file: !23, line: 311, column: 22)
!130 = !DILocation(line: 313, column: 6, scope: !129)
!131 = !DILocation(line: 315, column: 2, scope: !129)
!132 = !DILocation(line: 316, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !116, file: !23, line: 315, column: 9)
!134 = !DILocation(line: 318, column: 22, scope: !133)
!135 = !DILocation(line: 320, column: 5, scope: !107)
!136 = !DILocation(line: 321, column: 116, scope: !137)
!137 = distinct !DILexicalBlock(scope: !104, file: !23, line: 320, column: 12)
!138 = !DILocation(line: 321, column: 115, scope: !137)
!139 = !DILocation(line: 321, column: 2, scope: !137)
!140 = !DILocation(line: 325, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !36, file: !23, line: 325, column: 9)
!142 = !DILocation(line: 325, column: 9, scope: !36)
!143 = !DILocation(line: 326, column: 2, scope: !141)
!144 = !DILocation(line: 328, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !36, file: !23, line: 328, column: 9)
!146 = !DILocation(line: 328, column: 9, scope: !36)
!147 = !DILocation(line: 329, column: 2, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !23, line: 328, column: 29)
!149 = !DILocation(line: 331, column: 2, scope: !148)
!150 = !DILocation(line: 333, column: 2, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !23, line: 332, column: 12)
!152 = !DILocation(line: 336, column: 10, scope: !36)
!153 = !DILocation(line: 336, column: 8, scope: !36)
!154 = !DILocation(line: 338, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !36, file: !23, line: 338, column: 9)
!156 = !DILocation(line: 338, column: 12, scope: !155)
!157 = !DILocation(line: 338, column: 9, scope: !36)
!158 = !DILocation(line: 339, column: 2, scope: !155)
!159 = !DILocation(line: 341, column: 2, scope: !155)
!160 = !DILocation(line: 344, column: 12, scope: !36)
!161 = !DILocation(line: 344, column: 5, scope: !36)
!162 = !DILocation(line: 345, column: 1, scope: !36)
!163 = distinct !DISubprogram(name: "resolutionXorgDriverVersion", scope: !23, file: !23, line: 391, type: !164, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!164 = !DISubroutineType(types: !165)
!165 = !{!25, !25, !72, !28, !166, !166, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!167 = !DILocalVariable(name: "numPaths", arg: 1, scope: !163, file: !23, line: 391, type: !25)
!168 = !DILocation(line: 391, column: 33, scope: !163)
!169 = !DILocalVariable(name: "paths", arg: 2, scope: !163, file: !23, line: 393, type: !72)
!170 = !DILocation(line: 393, column: 20, scope: !163)
!171 = !DILocalVariable(name: "versionString", arg: 3, scope: !163, file: !23, line: 395, type: !28)
!172 = !DILocation(line: 395, column: 19, scope: !163)
!173 = !DILocalVariable(name: "major", arg: 4, scope: !163, file: !23, line: 396, type: !166)
!174 = !DILocation(line: 396, column: 13, scope: !163)
!175 = !DILocalVariable(name: "minor", arg: 5, scope: !163, file: !23, line: 397, type: !166)
!176 = !DILocation(line: 397, column: 13, scope: !163)
!177 = !DILocalVariable(name: "level", arg: 6, scope: !163, file: !23, line: 398, type: !166)
!178 = !DILocation(line: 398, column: 13, scope: !163)
!179 = !DILocalVariable(name: "driver", scope: !163, file: !23, line: 401, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !182, line: 48, baseType: !183)
!182 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !184, line: 241, size: 1728, align: 64, elements: !185)
!184 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!185 = !{!186, !187, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !207, !208, !209, !210, !214, !216, !218, !222, !225, !227, !228, !229, !230, !231, !235, !236}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !183, file: !184, line: 242, baseType: !25, size: 32, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !183, file: !184, line: 247, baseType: !188, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !183, file: !184, line: 248, baseType: !188, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !183, file: !184, line: 249, baseType: !188, size: 64, align: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !183, file: !184, line: 250, baseType: !188, size: 64, align: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !183, file: !184, line: 251, baseType: !188, size: 64, align: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !183, file: !184, line: 252, baseType: !188, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !183, file: !184, line: 253, baseType: !188, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !183, file: !184, line: 254, baseType: !188, size: 64, align: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !183, file: !184, line: 256, baseType: !188, size: 64, align: 64, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !183, file: !184, line: 257, baseType: !188, size: 64, align: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !183, file: !184, line: 258, baseType: !188, size: 64, align: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !183, file: !184, line: 260, baseType: !200, size: 64, align: 64, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !184, line: 156, size: 192, align: 64, elements: !202)
!202 = !{!203, !204, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !201, file: !184, line: 157, baseType: !200, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !201, file: !184, line: 158, baseType: !205, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !201, file: !184, line: 162, baseType: !25, size: 32, align: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !183, file: !184, line: 262, baseType: !205, size: 64, align: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !183, file: !184, line: 264, baseType: !25, size: 32, align: 32, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !183, file: !184, line: 268, baseType: !25, size: 32, align: 32, offset: 928)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !183, file: !184, line: 270, baseType: !211, size: 64, align: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !212, line: 131, baseType: !213)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!213 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !183, file: !184, line: 274, baseType: !215, size: 16, align: 16, offset: 1024)
!215 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !183, file: !184, line: 275, baseType: !217, size: 8, align: 8, offset: 1040)
!217 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !183, file: !184, line: 276, baseType: !219, size: 8, align: 8, offset: 1048)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 1)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !183, file: !184, line: 280, baseType: !223, size: 64, align: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !184, line: 150, baseType: null)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !183, file: !184, line: 289, baseType: !226, size: 64, align: 64, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !212, line: 132, baseType: !213)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !183, file: !184, line: 297, baseType: !20, size: 64, align: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !183, file: !184, line: 298, baseType: !20, size: 64, align: 64, offset: 1280)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !183, file: !184, line: 299, baseType: !20, size: 64, align: 64, offset: 1344)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !183, file: !184, line: 300, baseType: !20, size: 64, align: 64, offset: 1408)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !183, file: !184, line: 302, baseType: !232, size: 64, align: 64, offset: 1472)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !233, line: 216, baseType: !234)
!233 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!234 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !183, file: !184, line: 303, baseType: !25, size: 32, align: 32, offset: 1536)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !183, file: !184, line: 305, baseType: !237, size: 160, align: 8, offset: 1568)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, align: 8, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 20)
!240 = !DILocation(line: 401, column: 10, scope: !163)
!241 = !DILocalVariable(name: "curMatch", scope: !163, file: !23, line: 402, type: !28)
!242 = !DILocation(line: 402, column: 16, scope: !163)
!243 = !DILocalVariable(name: "curFileChar", scope: !163, file: !23, line: 403, type: !30)
!244 = !DILocation(line: 403, column: 9, scope: !163)
!245 = !DILocalVariable(name: "i", scope: !163, file: !23, line: 404, type: !25)
!246 = !DILocation(line: 404, column: 8, scope: !163)
!247 = !DILocation(line: 406, column: 4, scope: !163)
!248 = !DILocation(line: 407, column: 10, scope: !249)
!249 = distinct !DILexicalBlock(scope: !163, file: !23, line: 407, column: 4)
!250 = !DILocation(line: 407, column: 8, scope: !249)
!251 = !DILocation(line: 407, column: 15, scope: !252)
!252 = !DILexicalBlockFile(scope: !253, file: !23, discriminator: 1)
!253 = distinct !DILexicalBlock(scope: !249, file: !23, line: 407, column: 4)
!254 = !DILocation(line: 407, column: 19, scope: !252)
!255 = !DILocation(line: 407, column: 17, scope: !252)
!256 = !DILocation(line: 407, column: 4, scope: !252)
!257 = !DILocation(line: 408, column: 99, scope: !258)
!258 = distinct !DILexicalBlock(scope: !253, file: !23, line: 407, column: 34)
!259 = !DILocation(line: 408, column: 93, scope: !258)
!260 = !DILocation(line: 408, column: 8, scope: !258)
!261 = !DILocation(line: 409, column: 29, scope: !258)
!262 = !DILocation(line: 409, column: 23, scope: !258)
!263 = !DILocation(line: 409, column: 17, scope: !258)
!264 = !DILocation(line: 409, column: 15, scope: !258)
!265 = !DILocation(line: 410, column: 12, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !23, line: 410, column: 12)
!267 = !DILocation(line: 410, column: 12, scope: !258)
!268 = !DILocation(line: 411, column: 5, scope: !266)
!269 = !DILocation(line: 412, column: 4, scope: !258)
!270 = !DILocation(line: 407, column: 29, scope: !271)
!271 = !DILexicalBlockFile(scope: !253, file: !23, discriminator: 2)
!272 = !DILocation(line: 407, column: 4, scope: !271)
!273 = distinct !{!273, !274}
!274 = !DILocation(line: 407, column: 4, scope: !163)
!275 = !DILocation(line: 414, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !163, file: !23, line: 414, column: 8)
!277 = !DILocation(line: 414, column: 8, scope: !163)
!278 = !DILocation(line: 415, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !23, line: 414, column: 17)
!280 = !DILocation(line: 416, column: 8, scope: !279)
!281 = !DILocation(line: 419, column: 4, scope: !163)
!282 = !DILocation(line: 420, column: 15, scope: !163)
!283 = !DILocation(line: 420, column: 13, scope: !163)
!284 = !DILocation(line: 421, column: 4, scope: !163)
!285 = !DILocation(line: 421, column: 12, scope: !286)
!286 = !DILexicalBlockFile(scope: !163, file: !23, discriminator: 1)
!287 = !DILocation(line: 421, column: 11, scope: !286)
!288 = !DILocation(line: 421, column: 4, scope: !286)
!289 = !DILocation(line: 422, column: 16, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !23, line: 422, column: 11)
!291 = distinct !DILexicalBlock(scope: !163, file: !23, line: 421, column: 22)
!292 = !DILocation(line: 422, column: 11, scope: !290)
!293 = !DILocation(line: 422, column: 11, scope: !291)
!294 = !DILocation(line: 423, column: 3, scope: !290)
!295 = !DILocation(line: 425, column: 27, scope: !291)
!296 = !DILocation(line: 425, column: 21, scope: !291)
!297 = !DILocation(line: 425, column: 19, scope: !291)
!298 = !DILocation(line: 426, column: 11, scope: !299)
!299 = distinct !DILexicalBlock(scope: !291, file: !23, line: 426, column: 11)
!300 = !DILocation(line: 426, column: 27, scope: !299)
!301 = !DILocation(line: 426, column: 26, scope: !299)
!302 = !DILocation(line: 426, column: 23, scope: !299)
!303 = !DILocation(line: 426, column: 11, scope: !291)
!304 = !DILocation(line: 427, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !23, line: 426, column: 37)
!306 = !DILocation(line: 428, column: 3, scope: !305)
!307 = distinct !{!307, !284}
!308 = !DILocation(line: 429, column: 18, scope: !309)
!309 = distinct !DILexicalBlock(scope: !299, file: !23, line: 429, column: 18)
!310 = !DILocation(line: 429, column: 30, scope: !309)
!311 = !DILocation(line: 429, column: 27, scope: !309)
!312 = !DILocation(line: 429, column: 18, scope: !299)
!313 = !DILocation(line: 430, column: 14, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !23, line: 429, column: 45)
!315 = !DILocation(line: 430, column: 12, scope: !314)
!316 = !DILocation(line: 431, column: 17, scope: !314)
!317 = !DILocation(line: 431, column: 30, scope: !314)
!318 = !DILocation(line: 431, column: 10, scope: !314)
!319 = !DILocation(line: 432, column: 7, scope: !314)
!320 = !DILocation(line: 421, column: 4, scope: !321)
!321 = !DILexicalBlockFile(scope: !163, file: !23, discriminator: 2)
!322 = !DILocation(line: 435, column: 15, scope: !323)
!323 = distinct !DILexicalBlock(scope: !163, file: !23, line: 435, column: 8)
!324 = !DILocation(line: 435, column: 35, scope: !323)
!325 = !DILocation(line: 435, column: 42, scope: !323)
!326 = !DILocation(line: 435, column: 49, scope: !323)
!327 = !DILocation(line: 435, column: 8, scope: !323)
!328 = !DILocation(line: 435, column: 56, scope: !323)
!329 = !DILocation(line: 435, column: 8, scope: !163)
!330 = !DILocation(line: 436, column: 7, scope: !323)
!331 = !DILocation(line: 438, column: 11, scope: !163)
!332 = !DILocation(line: 438, column: 4, scope: !163)
!333 = !DILocation(line: 439, column: 99, scope: !163)
!334 = !DILocation(line: 439, column: 98, scope: !163)
!335 = !DILocation(line: 439, column: 107, scope: !163)
!336 = !DILocation(line: 439, column: 106, scope: !163)
!337 = !DILocation(line: 439, column: 115, scope: !163)
!338 = !DILocation(line: 439, column: 114, scope: !163)
!339 = !DILocation(line: 439, column: 4, scope: !163)
!340 = !DILocation(line: 441, column: 4, scope: !163)
!341 = !DILocation(line: 444, column: 11, scope: !163)
!342 = !DILocation(line: 444, column: 4, scope: !163)
!343 = !DILocation(line: 445, column: 4, scope: !163)
!344 = !DILocation(line: 446, column: 4, scope: !163)
!345 = !DILocation(line: 447, column: 1, scope: !163)
!346 = distinct !DISubprogram(name: "resolutionDRMRPrimaryCheckOpen", scope: !23, file: !23, line: 242, type: !347, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!347 = !DISubroutineType(types: !348)
!348 = !{!25}
!349 = !DILocalVariable(name: "fd", scope: !346, file: !23, line: 244, type: !25)
!350 = !DILocation(line: 244, column: 9, scope: !346)
!351 = !DILocation(line: 246, column: 10, scope: !346)
!352 = !DILocation(line: 246, column: 8, scope: !346)
!353 = !DILocation(line: 247, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !346, file: !23, line: 247, column: 9)
!355 = !DILocation(line: 247, column: 12, scope: !354)
!356 = !DILocation(line: 247, column: 9, scope: !346)
!357 = !DILocation(line: 248, column: 2, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !23, line: 247, column: 17)
!359 = !DILocation(line: 249, column: 7, scope: !358)
!360 = !DILocation(line: 249, column: 5, scope: !358)
!361 = !DILocation(line: 250, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !23, line: 250, column: 6)
!363 = !DILocation(line: 250, column: 9, scope: !362)
!364 = !DILocation(line: 250, column: 6, scope: !358)
!365 = !DILocation(line: 251, column: 13, scope: !362)
!366 = !DILocation(line: 251, column: 19, scope: !362)
!367 = !DILocation(line: 251, column: 30, scope: !362)
!368 = !DILocation(line: 251, column: 6, scope: !362)
!369 = !DILocation(line: 252, column: 5, scope: !358)
!370 = !DILocation(line: 253, column: 9, scope: !371)
!371 = distinct !DILexicalBlock(scope: !346, file: !23, line: 253, column: 9)
!372 = !DILocation(line: 253, column: 12, scope: !371)
!373 = !DILocation(line: 253, column: 9, scope: !346)
!374 = !DILocation(line: 254, column: 2, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !23, line: 253, column: 17)
!376 = !DILocation(line: 255, column: 2, scope: !375)
!377 = !DILocation(line: 258, column: 36, scope: !378)
!378 = distinct !DILexicalBlock(scope: !346, file: !23, line: 258, column: 9)
!379 = !DILocation(line: 258, column: 10, scope: !378)
!380 = !DILocation(line: 258, column: 9, scope: !346)
!381 = !DILocation(line: 259, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !23, line: 258, column: 41)
!383 = !DILocation(line: 259, column: 2, scope: !382)
!384 = !DILocation(line: 262, column: 11, scope: !346)
!385 = !DILocation(line: 262, column: 5, scope: !346)
!386 = !DILocation(line: 264, column: 5, scope: !346)
!387 = !DILocation(line: 265, column: 1, scope: !346)
!388 = distinct !DISubprogram(name: "resolutionDRMClose", scope: !23, file: !23, line: 365, type: !389, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !25}
!391 = !DILocalVariable(name: "fd", arg: 1, scope: !388, file: !23, line: 365, type: !25)
!392 = !DILocation(line: 365, column: 24, scope: !388)
!393 = !DILocation(line: 367, column: 11, scope: !388)
!394 = !DILocation(line: 367, column: 5, scope: !388)
!395 = !DILocation(line: 368, column: 5, scope: !388)
!396 = !DILocation(line: 369, column: 1, scope: !388)
!397 = distinct !DISubprogram(name: "resolutionOpenDRM", scope: !23, file: !23, line: 81, type: !398, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!398 = !DISubroutineType(types: !399)
!399 = !{!25, !28}
!400 = !DILocalVariable(name: "node", arg: 1, scope: !397, file: !23, line: 81, type: !28)
!401 = !DILocation(line: 81, column: 31, scope: !397)
!402 = !DILocalVariable(name: "udev", scope: !397, file: !23, line: 83, type: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev", file: !405, line: 34, flags: DIFlagFwdDecl)
!405 = !DIFile(filename: "resolutionDL.h", directory: "/home/lichi/Desktop/open-vm-tools/line1477")
!406 = !DILocation(line: 83, column: 18, scope: !397)
!407 = !DILocalVariable(name: "enumerate", scope: !397, file: !23, line: 84, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev_enumerate", file: !405, line: 36, flags: DIFlagFwdDecl)
!410 = !DILocation(line: 84, column: 28, scope: !397)
!411 = !DILocalVariable(name: "devices", scope: !397, file: !23, line: 85, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev_list_entry", file: !405, line: 64, flags: DIFlagFwdDecl)
!414 = !DILocation(line: 85, column: 29, scope: !397)
!415 = !DILocalVariable(name: "devListEntry", scope: !397, file: !23, line: 85, type: !412)
!416 = !DILocation(line: 85, column: 39, scope: !397)
!417 = !DILocalVariable(name: "dev", scope: !397, file: !23, line: 86, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "udev_device", file: !405, line: 35, flags: DIFlagFwdDecl)
!420 = !DILocation(line: 86, column: 25, scope: !397)
!421 = !DILocalVariable(name: "fd", scope: !397, file: !23, line: 87, type: !25)
!422 = !DILocation(line: 87, column: 9, scope: !397)
!423 = !DILocalVariable(name: "drmFd", scope: !397, file: !23, line: 88, type: !25)
!424 = !DILocation(line: 88, column: 9, scope: !397)
!425 = !DILocalVariable(name: "devNode", scope: !397, file: !23, line: 89, type: !28)
!426 = !DILocation(line: 89, column: 17, scope: !397)
!427 = !DILocation(line: 92, column: 13, scope: !397)
!428 = !DILocation(line: 92, column: 19, scope: !397)
!429 = !DILocation(line: 92, column: 11, scope: !397)
!430 = !DILocation(line: 93, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !397, file: !23, line: 93, column: 9)
!432 = !DILocation(line: 93, column: 15, scope: !431)
!433 = !DILocation(line: 93, column: 9, scope: !397)
!434 = !DILocation(line: 94, column: 15, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !23, line: 93, column: 21)
!436 = !DILocation(line: 94, column: 21, scope: !435)
!437 = !DILocation(line: 94, column: 32, scope: !435)
!438 = !DILocation(line: 95, column: 5, scope: !435)
!439 = !DILocation(line: 97, column: 12, scope: !397)
!440 = !DILocation(line: 97, column: 19, scope: !397)
!441 = !DILocation(line: 97, column: 10, scope: !397)
!442 = !DILocation(line: 98, column: 10, scope: !443)
!443 = distinct !DILexicalBlock(scope: !397, file: !23, line: 98, column: 9)
!444 = !DILocation(line: 98, column: 9, scope: !397)
!445 = !DILocation(line: 99, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !23, line: 98, column: 16)
!447 = !DILocation(line: 107, column: 17, scope: !397)
!448 = !DILocation(line: 107, column: 24, scope: !397)
!449 = !DILocation(line: 107, column: 39, scope: !397)
!450 = !DILocation(line: 107, column: 15, scope: !397)
!451 = !DILocation(line: 108, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !397, file: !23, line: 108, column: 9)
!453 = !DILocation(line: 108, column: 16, scope: !452)
!454 = !DILocation(line: 108, column: 47, scope: !452)
!455 = !DILocation(line: 108, column: 9, scope: !397)
!456 = !DILocation(line: 109, column: 2, scope: !452)
!457 = !DILocation(line: 110, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !397, file: !23, line: 110, column: 9)
!459 = !DILocation(line: 110, column: 16, scope: !458)
!460 = !DILocation(line: 110, column: 46, scope: !458)
!461 = !DILocation(line: 110, column: 9, scope: !397)
!462 = !DILocation(line: 111, column: 2, scope: !458)
!463 = !DILocation(line: 112, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !397, file: !23, line: 112, column: 9)
!465 = !DILocation(line: 112, column: 16, scope: !464)
!466 = !DILocation(line: 112, column: 40, scope: !464)
!467 = !DILocation(line: 112, column: 9, scope: !397)
!468 = !DILocation(line: 113, column: 2, scope: !464)
!469 = !DILocation(line: 115, column: 15, scope: !397)
!470 = !DILocation(line: 115, column: 22, scope: !397)
!471 = !DILocation(line: 115, column: 48, scope: !397)
!472 = !DILocation(line: 115, column: 13, scope: !397)
!473 = !DILocation(line: 116, column: 25, scope: !474)
!474 = distinct !DILexicalBlock(scope: !397, file: !23, line: 116, column: 5)
!475 = !DILocation(line: 116, column: 23, scope: !474)
!476 = !DILocation(line: 116, column: 10, scope: !474)
!477 = !DILocation(line: 116, column: 34, scope: !478)
!478 = !DILexicalBlockFile(scope: !479, file: !23, discriminator: 1)
!479 = distinct !DILexicalBlock(scope: !474, file: !23, line: 116, column: 5)
!480 = !DILocation(line: 116, column: 47, scope: !478)
!481 = !DILocation(line: 116, column: 5, scope: !478)
!482 = !DILocalVariable(name: "path", scope: !483, file: !23, line: 117, type: !28)
!483 = distinct !DILexicalBlock(scope: !479, file: !23, line: 116, column: 66)
!484 = !DILocation(line: 117, column: 14, scope: !483)
!485 = !DILocalVariable(name: "vendor", scope: !483, file: !23, line: 117, type: !28)
!486 = !DILocation(line: 117, column: 21, scope: !483)
!487 = !DILocalVariable(name: "device", scope: !483, file: !23, line: 117, type: !28)
!488 = !DILocation(line: 117, column: 30, scope: !483)
!489 = !DILocalVariable(name: "parent", scope: !483, file: !23, line: 118, type: !418)
!490 = !DILocation(line: 118, column: 22, scope: !483)
!491 = !DILocation(line: 120, column: 9, scope: !483)
!492 = !DILocation(line: 120, column: 16, scope: !483)
!493 = !DILocation(line: 120, column: 37, scope: !483)
!494 = !DILocation(line: 120, column: 7, scope: !483)
!495 = !DILocation(line: 121, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !483, file: !23, line: 121, column: 6)
!497 = !DILocation(line: 121, column: 6, scope: !483)
!498 = !DILocation(line: 122, column: 6, scope: !496)
!499 = !DILocation(line: 123, column: 14, scope: !500)
!500 = distinct !DILexicalBlock(scope: !483, file: !23, line: 123, column: 6)
!501 = !DILocation(line: 123, column: 20, scope: !500)
!502 = !DILocation(line: 123, column: 7, scope: !500)
!503 = !DILocation(line: 123, column: 6, scope: !483)
!504 = !DILocation(line: 124, column: 6, scope: !500)
!505 = !DILocation(line: 126, column: 8, scope: !483)
!506 = !DILocation(line: 126, column: 15, scope: !483)
!507 = !DILocation(line: 126, column: 40, scope: !483)
!508 = !DILocation(line: 126, column: 46, scope: !483)
!509 = !DILocation(line: 126, column: 6, scope: !483)
!510 = !DILocation(line: 127, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !483, file: !23, line: 127, column: 6)
!512 = !DILocation(line: 127, column: 6, scope: !483)
!513 = !DILocation(line: 128, column: 6, scope: !511)
!514 = !DILocation(line: 130, column: 11, scope: !483)
!515 = !DILocation(line: 130, column: 18, scope: !483)
!516 = !DILocation(line: 130, column: 60, scope: !483)
!517 = !DILocation(line: 130, column: 9, scope: !483)
!518 = !DILocation(line: 133, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !483, file: !23, line: 133, column: 6)
!520 = !DILocation(line: 133, column: 6, scope: !483)
!521 = !DILocation(line: 134, column: 6, scope: !519)
!522 = !DILocation(line: 136, column: 11, scope: !483)
!523 = !DILocation(line: 136, column: 18, scope: !483)
!524 = !DILocation(line: 136, column: 44, scope: !483)
!525 = !DILocation(line: 136, column: 9, scope: !483)
!526 = !DILocation(line: 137, column: 11, scope: !483)
!527 = !DILocation(line: 137, column: 18, scope: !483)
!528 = !DILocation(line: 137, column: 44, scope: !483)
!529 = !DILocation(line: 137, column: 9, scope: !483)
!530 = !DILocation(line: 138, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !483, file: !23, line: 138, column: 6)
!532 = !DILocation(line: 138, column: 14, scope: !531)
!533 = !DILocation(line: 138, column: 18, scope: !534)
!534 = !DILexicalBlockFile(scope: !531, file: !23, discriminator: 1)
!535 = !DILocation(line: 138, column: 6, scope: !534)
!536 = !DILocation(line: 139, column: 6, scope: !531)
!537 = !DILocation(line: 141, column: 13, scope: !538)
!538 = distinct !DILexicalBlock(scope: !483, file: !23, line: 141, column: 6)
!539 = !DILocation(line: 141, column: 6, scope: !538)
!540 = !DILocation(line: 141, column: 31, scope: !538)
!541 = !DILocation(line: 142, column: 13, scope: !538)
!542 = !DILocation(line: 142, column: 6, scope: !538)
!543 = !DILocation(line: 141, column: 6, scope: !544)
!544 = !DILexicalBlockFile(scope: !483, file: !23, discriminator: 1)
!545 = !DILocation(line: 143, column: 6, scope: !538)
!546 = !DILocation(line: 145, column: 12, scope: !483)
!547 = !DILocation(line: 145, column: 19, scope: !483)
!548 = !DILocation(line: 145, column: 39, scope: !483)
!549 = !DILocation(line: 145, column: 10, scope: !483)
!550 = !DILocation(line: 146, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !483, file: !23, line: 146, column: 6)
!552 = !DILocation(line: 146, column: 6, scope: !483)
!553 = !DILocation(line: 147, column: 6, scope: !551)
!554 = !DILocation(line: 149, column: 12, scope: !483)
!555 = !DILocation(line: 149, column: 7, scope: !483)
!556 = !DILocation(line: 149, column: 5, scope: !483)
!557 = !DILocation(line: 150, column: 2, scope: !483)
!558 = !DILocation(line: 150, column: 9, scope: !483)
!559 = !DILocation(line: 150, column: 23, scope: !483)
!560 = !DILocation(line: 151, column: 2, scope: !483)
!561 = !DILocation(line: 154, column: 2, scope: !483)
!562 = !DILocation(line: 154, column: 9, scope: !483)
!563 = !DILocation(line: 154, column: 23, scope: !483)
!564 = !DILocation(line: 155, column: 5, scope: !483)
!565 = !DILocation(line: 116, column: 22, scope: !566)
!566 = !DILexicalBlockFile(scope: !479, file: !23, discriminator: 2)
!567 = !DILocation(line: 116, column: 30, scope: !566)
!568 = !DILocation(line: 116, column: 51, scope: !566)
!569 = !DILocation(line: 116, column: 21, scope: !566)
!570 = !DILocation(line: 116, column: 19, scope: !566)
!571 = !DILocation(line: 116, column: 5, scope: !566)
!572 = distinct !{!572, !573}
!573 = !DILocation(line: 116, column: 5, scope: !397)
!574 = !DILocation(line: 157, column: 5, scope: !397)
!575 = !DILocation(line: 157, column: 12, scope: !397)
!576 = !DILocation(line: 157, column: 29, scope: !397)
!577 = !DILocation(line: 158, column: 5, scope: !397)
!578 = !DILocation(line: 158, column: 12, scope: !397)
!579 = !DILocation(line: 158, column: 19, scope: !397)
!580 = !DILocation(line: 160, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !397, file: !23, line: 160, column: 9)
!582 = !DILocation(line: 160, column: 15, scope: !581)
!583 = !DILocation(line: 160, column: 9, scope: !397)
!584 = !DILocation(line: 161, column: 8, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !23, line: 160, column: 21)
!586 = !DILocation(line: 161, column: 14, scope: !585)
!587 = !DILocation(line: 161, column: 20, scope: !585)
!588 = !DILocation(line: 162, column: 5, scope: !585)
!589 = !DILocation(line: 164, column: 12, scope: !397)
!590 = !DILocation(line: 164, column: 5, scope: !397)
!591 = !DILocation(line: 167, column: 5, scope: !397)
!592 = !DILocation(line: 167, column: 12, scope: !397)
!593 = !DILocation(line: 167, column: 26, scope: !397)
!594 = !DILocation(line: 169, column: 5, scope: !397)
!595 = !DILocation(line: 169, column: 12, scope: !397)
!596 = !DILocation(line: 169, column: 29, scope: !397)
!597 = !DILocation(line: 170, column: 5, scope: !397)
!598 = !DILocation(line: 170, column: 12, scope: !397)
!599 = !DILocation(line: 170, column: 19, scope: !397)
!600 = !DILocation(line: 172, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !397, file: !23, line: 172, column: 9)
!602 = !DILocation(line: 172, column: 15, scope: !601)
!603 = !DILocation(line: 172, column: 9, scope: !397)
!604 = !DILocation(line: 173, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !23, line: 172, column: 21)
!606 = !DILocation(line: 173, column: 14, scope: !605)
!607 = !DILocation(line: 173, column: 20, scope: !605)
!608 = !DILocation(line: 174, column: 5, scope: !605)
!609 = !DILocation(line: 176, column: 5, scope: !397)
!610 = !DILocation(line: 177, column: 1, scope: !397)
!611 = distinct !DISubprogram(name: "resolutionDRMCheckVersion", scope: !23, file: !23, line: 200, type: !612, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !75)
!612 = !DISubroutineType(types: !613)
!613 = !{!25, !25}
!614 = !DILocalVariable(name: "fd", arg: 1, scope: !611, file: !23, line: 200, type: !25)
!615 = !DILocation(line: 200, column: 31, scope: !611)
!616 = !DILocalVariable(name: "ver", scope: !611, file: !23, line: 202, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "drmVersionPtr", file: !405, line: 102, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_drmVersion", file: !405, line: 92, size: 448, align: 64, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "version_major", scope: !619, file: !405, line: 93, baseType: !25, size: 32, align: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "version_minor", scope: !619, file: !405, line: 94, baseType: !25, size: 32, align: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "version_patchlevel", scope: !619, file: !405, line: 95, baseType: !25, size: 32, align: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name_len", scope: !619, file: !405, line: 96, baseType: !25, size: 32, align: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !405, line: 97, baseType: !188, size: 64, align: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "date_len", scope: !619, file: !405, line: 98, baseType: !25, size: 32, align: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !619, file: !405, line: 99, baseType: !188, size: 64, align: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !619, file: !405, line: 100, baseType: !25, size: 32, align: 32, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !619, file: !405, line: 101, baseType: !188, size: 64, align: 64, offset: 384)
!630 = !DILocation(line: 202, column: 19, scope: !611)
!631 = !DILocation(line: 202, column: 25, scope: !611)
!632 = !DILocation(line: 202, column: 31, scope: !611)
!633 = !DILocation(line: 202, column: 42, scope: !611)
!634 = !DILocation(line: 204, column: 10, scope: !635)
!635 = distinct !DILexicalBlock(scope: !611, file: !23, line: 204, column: 9)
!636 = !DILocation(line: 204, column: 9, scope: !611)
!637 = !DILocation(line: 205, column: 2, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !23, line: 204, column: 15)
!639 = !DILocation(line: 206, column: 2, scope: !638)
!640 = !DILocation(line: 209, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !611, file: !23, line: 209, column: 9)
!642 = !DILocation(line: 209, column: 14, scope: !641)
!643 = !DILocation(line: 209, column: 28, scope: !641)
!644 = !DILocation(line: 209, column: 33, scope: !641)
!645 = !DILocation(line: 210, column: 9, scope: !641)
!646 = !DILocation(line: 210, column: 14, scope: !641)
!647 = !DILocation(line: 210, column: 28, scope: !641)
!648 = !DILocation(line: 209, column: 9, scope: !649)
!649 = !DILexicalBlockFile(scope: !611, file: !23, discriminator: 1)
!650 = !DILocation(line: 211, column: 123, scope: !651)
!651 = distinct !DILexicalBlock(scope: !641, file: !23, line: 210, column: 34)
!652 = !DILocation(line: 211, column: 128, scope: !651)
!653 = !DILocation(line: 211, column: 143, scope: !651)
!654 = !DILocation(line: 211, column: 148, scope: !651)
!655 = !DILocation(line: 211, column: 8, scope: !651)
!656 = !DILocation(line: 213, column: 8, scope: !651)
!657 = !DILocation(line: 213, column: 14, scope: !651)
!658 = !DILocation(line: 213, column: 26, scope: !651)
!659 = !DILocation(line: 214, column: 8, scope: !651)
!660 = !DILocation(line: 217, column: 5, scope: !611)
!661 = !DILocation(line: 217, column: 11, scope: !611)
!662 = !DILocation(line: 217, column: 23, scope: !611)
!663 = !DILocation(line: 218, column: 5, scope: !611)
!664 = !DILocation(line: 219, column: 1, scope: !611)
