; ModuleID = './[inter]disk.o.i'
source_filename = "./[inter]disk.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rdpdr_device_info = type { i32, i32, [8 x i8], i8*, i8* }
%struct.fileinfo = type { i32, i32, i32, [4096 x i8], %struct.__dirstream*, %struct.dirent*, [4096 x i8], i32, %struct.notify_data, i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.notify_data = type { i64, i64, i64, i32 }
%struct._DEVICE_FNS = type { i32 (i32, i32, i32, i32, i32, i8*, i32*)*, i32 (i32)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i8*, i32, i32, i32*)*, i32 (i32, i32, %struct.stream*, %struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.FsInfoType = type { [4096 x i8], [4096 x i8], i64, [4096 x i8] }
%struct.rdpdr_disk_device_info = type { [4096 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }
%struct.statvfs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [6 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@g_notify_stamp = global i32 0, align 4
@g_rdpdr_device = external global [0 x %struct.rdpdr_device_info], align 8
@.str = private unnamed_addr constant [53 x i8] c"disk_query_information(handle=0x%x, info_class=0x%x)\00", align 1
@g_fileinfo = common global [256 x %struct.fileinfo] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [44 x i8] c"disk_query_information(), stat() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"disk_query_information(), unhandled query information class 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"disk_set_information(handle=0x%x, info_class=0x%x, ...)\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"disk_set_information(), access time='%s', modify time='%s'\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"disk_set_information(), access mode 0%o\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"disk_set_information(), rename() failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"disk_set_information(), unhandled information class 0x%x\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"disk_check_notify(handle=0x%x)\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"disk_create_notify(handle=0x%x, info_class=0x%x)\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"disk_query_volume_information(handle=0x%x, info_class=0x%x)\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"disk_query_volume_information(), statfs() failed: %s\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"disk_query_volume_information(), unhandled volume info class 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"disk_query_directory(handle=0x%x, info_class=0x%x, pattern=%s, ...)\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"disk_query_directory(), stat() failed: %s\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"disk_query_directory(), unhandled directory info class 0x%x\00", align 1
@disk_fns = global %struct._DEVICE_FNS { i32 (i32, i32, i32, i32, i32, i8*, i32*)* @disk_create, i32 (i32)* @disk_close, i32 (i32, i8*, i32, i32, i32*)* @disk_read, i32 (i32, i8*, i32, i32, i32*)* @disk_write, i32 (i32, i32, %struct.stream*, %struct.stream*)* @disk_device_control }, align 8
@ftruncate_growable.zero = internal constant i8 0, align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"ftruncate_growable(), lseek() failed: %s\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"ftruncate_growable(), write() failed: %s\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"ftruncate_growable(), ftruncate() failed: %s\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"NotifyInfo(), fstat failed: %s\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"NotifyInfo(), opendir failed: %s\00", align 1
@FsVolumeInfo.info = internal global %struct.FsInfoType zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"RDESKTOP\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"RDPFS\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"vfat\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"iso9660\00", align 1
@.str.31 = private unnamed_addr constant [104 x i8] c"disk_create(device_id=0x%x, accessmask=0x%x, sharemode=0x%x, create_disp=%d, flags=0x%x, fname=%s, ...)\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"disk_create(), opendir() failed: %s\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"disk_create(), open() failed: %s\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"disk_create(), fcntl() failed: %s\00", align 1
@.str.37 = private unnamed_addr constant [76 x i8] c"disk_create(), handle (%d) is greater than or equal to MAX_OPEN_FILES (%d)!\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"disk_close(handle=0x%x)\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"disk_close(), closedir() failed: %s\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"disk_close(), rmdir() failed: %s\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"disk_close(), close() failed: %s\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"disk_close(), unlink() failed: %s\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"disk_read(), read failed: %s\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"disk_write(), write() failed: %s\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"disk_device_control(handle=0x%x, request=0x%x, ...)\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"disk_device_control(), unhandled disk ioctl %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @disk_enum_devices(i32*, i8*) #0 !dbg !156 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdpdr_disk_device_info*, align 8
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !159, metadata !160), !dbg !161
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !162, metadata !160), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %5, metadata !164, metadata !160), !dbg !165
  %9 = load i8*, i8** %4, align 8, !dbg !166
  store i8* %9, i8** %5, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i8** %6, metadata !167, metadata !160), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %7, metadata !169, metadata !160), !dbg !170
  store i32 0, i32* %7, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata %struct.rdpdr_disk_device_info** %8, metadata !171, metadata !160), !dbg !172
  %10 = load i8*, i8** %4, align 8, !dbg !173
  %11 = getelementptr inbounds i8, i8* %10, i32 1, !dbg !173
  store i8* %11, i8** %4, align 8, !dbg !173
  br label %12, !dbg !174

; <label>:12:                                     ; preds = %22, %2
  %13 = load i8*, i8** %4, align 8, !dbg !175
  %14 = call i8* @next_arg(i8* %13, i8 signext 44), !dbg !177
  store i8* %14, i8** %5, align 8, !dbg !178
  %15 = icmp ne i8* %14, null, !dbg !178
  br i1 %15, label %16, label %20, !dbg !179

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %3, align 8, !dbg !180
  %18 = load i32, i32* %17, align 4, !dbg !182
  %19 = icmp ult i32 %18, 16, !dbg !183
  br label %20

; <label>:20:                                     ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %78, !dbg !184

; <label>:22:                                     ; preds = %20
  %23 = load i8*, i8** %4, align 8, !dbg !186
  %24 = call i8* @next_arg(i8* %23, i8 signext 61), !dbg !188
  store i8* %24, i8** %6, align 8, !dbg !189
  %25 = call i8* @xmalloc(i32 4096), !dbg !190
  %26 = bitcast i8* %25 to %struct.rdpdr_disk_device_info*, !dbg !191
  store %struct.rdpdr_disk_device_info* %26, %struct.rdpdr_disk_device_info** %8, align 8, !dbg !192
  %27 = load %struct.rdpdr_disk_device_info*, %struct.rdpdr_disk_device_info** %8, align 8, !dbg !193
  %28 = bitcast %struct.rdpdr_disk_device_info* %27 to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 4096, i32 1, i1 false), !dbg !194
  %29 = load %struct.rdpdr_disk_device_info*, %struct.rdpdr_disk_device_info** %8, align 8, !dbg !195
  %30 = getelementptr inbounds %struct.rdpdr_disk_device_info, %struct.rdpdr_disk_device_info* %29, i32 0, i32 0, !dbg !196
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %30, i32 0, i32 0, !dbg !195
  %32 = load i8*, i8** %4, align 8, !dbg !197
  %33 = call i8* @strncpy(i8* %31, i8* %32, i64 4095) #8, !dbg !198
  %34 = load i32*, i32** %3, align 8, !dbg !199
  %35 = load i32, i32* %34, align 4, !dbg !200
  %36 = zext i32 %35 to i64, !dbg !201
  %37 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %36, !dbg !201
  %38 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %37, i32 0, i32 2, !dbg !202
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i32 0, i32 0, !dbg !201
  %40 = load i8*, i8** %4, align 8, !dbg !203
  %41 = call i8* @strncpy(i8* %39, i8* %40, i64 7) #8, !dbg !204
  %42 = load i8*, i8** %6, align 8, !dbg !205
  %43 = call i64 @strlen(i8* %42) #9, !dbg !206
  %44 = add i64 %43, 1, !dbg !207
  %45 = trunc i64 %44 to i32, !dbg !206
  %46 = call i8* @xmalloc(i32 %45), !dbg !208
  %47 = load i32*, i32** %3, align 8, !dbg !210
  %48 = load i32, i32* %47, align 4, !dbg !211
  %49 = zext i32 %48 to i64, !dbg !212
  %50 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %49, !dbg !212
  %51 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %50, i32 0, i32 3, !dbg !213
  store i8* %46, i8** %51, align 8, !dbg !214
  %52 = load i32*, i32** %3, align 8, !dbg !215
  %53 = load i32, i32* %52, align 4, !dbg !216
  %54 = zext i32 %53 to i64, !dbg !217
  %55 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %54, !dbg !217
  %56 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %55, i32 0, i32 3, !dbg !218
  %57 = load i8*, i8** %56, align 8, !dbg !218
  %58 = load i8*, i8** %6, align 8, !dbg !219
  %59 = call i8* @strcpy(i8* %57, i8* %58) #8, !dbg !220
  %60 = load i32*, i32** %3, align 8, !dbg !221
  %61 = load i32, i32* %60, align 4, !dbg !222
  %62 = zext i32 %61 to i64, !dbg !223
  %63 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %62, !dbg !223
  %64 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %63, i32 0, i32 0, !dbg !224
  store i32 8, i32* %64, align 8, !dbg !225
  %65 = load %struct.rdpdr_disk_device_info*, %struct.rdpdr_disk_device_info** %8, align 8, !dbg !226
  %66 = bitcast %struct.rdpdr_disk_device_info* %65 to i8*, !dbg !227
  %67 = load i32*, i32** %3, align 8, !dbg !228
  %68 = load i32, i32* %67, align 4, !dbg !229
  %69 = zext i32 %68 to i64, !dbg !230
  %70 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %69, !dbg !230
  %71 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %70, i32 0, i32 4, !dbg !231
  store i8* %66, i8** %71, align 8, !dbg !232
  %72 = load i32, i32* %7, align 4, !dbg !233
  %73 = add nsw i32 %72, 1, !dbg !233
  store i32 %73, i32* %7, align 4, !dbg !233
  %74 = load i32*, i32** %3, align 8, !dbg !234
  %75 = load i32, i32* %74, align 4, !dbg !235
  %76 = add i32 %75, 1, !dbg !235
  store i32 %76, i32* %74, align 4, !dbg !235
  %77 = load i8*, i8** %5, align 8, !dbg !236
  store i8* %77, i8** %4, align 8, !dbg !237
  br label %12, !dbg !238, !llvm.loop !240

; <label>:78:                                     ; preds = %20
  %79 = load i32, i32* %7, align 4, !dbg !241
  ret i32 %79, !dbg !242
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @next_arg(i8*, i8 signext) #2

declare i8* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @disk_query_information(i32, i32, %struct.stream*) #0 !dbg !243 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !246, metadata !160), !dbg !247
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !248, metadata !160), !dbg !249
  store %struct.stream* %2, %struct.stream** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %7, metadata !250, metadata !160), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %8, metadata !252, metadata !160), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %9, metadata !254, metadata !160), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %10, metadata !256, metadata !160), !dbg !257
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !258, metadata !160), !dbg !292
  call void @llvm.dbg.declare(metadata i8** %12, metadata !293, metadata !160), !dbg !294
  call void @llvm.dbg.declare(metadata i8** %13, metadata !295, metadata !160), !dbg !296
  %14 = load i32, i32* %5, align 4, !dbg !297
  %15 = load i32, i32* %6, align 4, !dbg !298
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), i32 %14, i32 %15), !dbg !299
  %16 = load i32, i32* %5, align 4, !dbg !300
  %17 = zext i32 %16 to i64, !dbg !301
  %18 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %17, !dbg !301
  %19 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %18, i32 0, i32 3, !dbg !302
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0, !dbg !301
  store i8* %20, i8** %12, align 8, !dbg !303
  %21 = load i32, i32* %5, align 4, !dbg !304
  %22 = call i32 @fstat(i32 %21, %struct.stat* %11) #8, !dbg !306
  %23 = icmp ne i32 %22, 0, !dbg !307
  br i1 %23, label %24, label %32, !dbg !308

; <label>:24:                                     ; preds = %3
  %25 = call i32* @__errno_location() #1, !dbg !309
  %26 = load i32, i32* %25, align 4, !dbg !311
  %27 = call i8* @strerror(i32 %26) #8, !dbg !312
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %27), !dbg !314
  %28 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !316
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !317
  %30 = load i8*, i8** %29, align 8, !dbg !318
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !318
  store i8* %31, i8** %29, align 8, !dbg !318
  store i8 0, i8* %30, align 1, !dbg !319
  store i32 -1073741790, i32* %4, align 4, !dbg !320
  br label %265, !dbg !320

; <label>:32:                                     ; preds = %3
  store i32 0, i32* %8, align 4, !dbg !321
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 3, !dbg !322
  %34 = load i32, i32* %33, align 8, !dbg !322
  %35 = and i32 %34, 61440, !dbg !324
  %36 = icmp eq i32 %35, 16384, !dbg !325
  br i1 %36, label %37, label %40, !dbg !326

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %8, align 4, !dbg !327
  %39 = or i32 %38, 16, !dbg !327
  store i32 %39, i32* %8, align 4, !dbg !327
  br label %40, !dbg !328

; <label>:40:                                     ; preds = %37, %32
  %41 = load i8*, i8** %12, align 8, !dbg !329
  %42 = call i8* @strrchr(i8* %41, i32 47) #9, !dbg !330
  store i8* %42, i8** %13, align 8, !dbg !331
  %43 = load i8*, i8** %13, align 8, !dbg !332
  %44 = icmp ne i8* %43, null, !dbg !332
  br i1 %44, label %45, label %48, !dbg !334

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %13, align 8, !dbg !335
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !335
  store i8* %47, i8** %13, align 8, !dbg !335
  br label %48, !dbg !336

; <label>:48:                                     ; preds = %45, %40
  %49 = load i8*, i8** %13, align 8, !dbg !337
  %50 = icmp ne i8* %49, null, !dbg !337
  br i1 %50, label %51, label %60, !dbg !339

; <label>:51:                                     ; preds = %48
  %52 = load i8*, i8** %13, align 8, !dbg !340
  %53 = getelementptr inbounds i8, i8* %52, i64 0, !dbg !340
  %54 = load i8, i8* %53, align 1, !dbg !340
  %55 = sext i8 %54 to i32, !dbg !340
  %56 = icmp eq i32 %55, 46, !dbg !342
  br i1 %56, label %57, label %60, !dbg !343

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %8, align 4, !dbg !344
  %59 = or i32 %58, 2, !dbg !344
  store i32 %59, i32* %8, align 4, !dbg !344
  br label %60, !dbg !345

; <label>:60:                                     ; preds = %57, %51, %48
  %61 = load i32, i32* %8, align 4, !dbg !346
  %62 = icmp ne i32 %61, 0, !dbg !346
  br i1 %62, label %66, label %63, !dbg !348

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %8, align 4, !dbg !349
  %65 = or i32 %64, 128, !dbg !349
  store i32 %65, i32* %8, align 4, !dbg !349
  br label %66, !dbg !350

; <label>:66:                                     ; preds = %63, %60
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 3, !dbg !351
  %68 = load i32, i32* %67, align 8, !dbg !351
  %69 = and i32 %68, 128, !dbg !353
  %70 = icmp ne i32 %69, 0, !dbg !353
  br i1 %70, label %74, label %71, !dbg !354

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %8, align 4, !dbg !355
  %73 = or i32 %72, 1, !dbg !355
  store i32 %73, i32* %8, align 4, !dbg !355
  br label %74, !dbg !356

; <label>:74:                                     ; preds = %71, %66
  %75 = load i32, i32* %6, align 4, !dbg !357
  switch i32 %75, label %262 [
    i32 4, label %76
    i32 5, label %168
    i32 35, label %244
  ], !dbg !358

; <label>:76:                                     ; preds = %74
  %77 = call i64 @get_create_time(%struct.stat* %11), !dbg !359
  call void @seconds_since_1970_to_filetime(i64 %77, i32* %9, i32* %10), !dbg !361
  %78 = load i32, i32* %10, align 4, !dbg !363
  %79 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !365
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !366
  %81 = load i8*, i8** %80, align 8, !dbg !366
  %82 = bitcast i8* %81 to i32*, !dbg !367
  store i32 %78, i32* %82, align 4, !dbg !368
  %83 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !369
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !370
  %85 = load i8*, i8** %84, align 8, !dbg !371
  %86 = getelementptr inbounds i8, i8* %85, i64 4, !dbg !371
  store i8* %86, i8** %84, align 8, !dbg !371
  %87 = load i32, i32* %9, align 4, !dbg !372
  %88 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !374
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !375
  %90 = load i8*, i8** %89, align 8, !dbg !375
  %91 = bitcast i8* %90 to i32*, !dbg !376
  store i32 %87, i32* %91, align 4, !dbg !377
  %92 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !378
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %92, i32 0, i32 0, !dbg !379
  %94 = load i8*, i8** %93, align 8, !dbg !380
  %95 = getelementptr inbounds i8, i8* %94, i64 4, !dbg !380
  store i8* %95, i8** %93, align 8, !dbg !380
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 11, !dbg !381
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %96, i32 0, i32 0, !dbg !382
  %98 = load i64, i64* %97, align 8, !dbg !382
  call void @seconds_since_1970_to_filetime(i64 %98, i32* %9, i32* %10), !dbg !383
  %99 = load i32, i32* %10, align 4, !dbg !384
  %100 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !386
  %101 = getelementptr inbounds %struct.stream, %struct.stream* %100, i32 0, i32 0, !dbg !387
  %102 = load i8*, i8** %101, align 8, !dbg !387
  %103 = bitcast i8* %102 to i32*, !dbg !388
  store i32 %99, i32* %103, align 4, !dbg !389
  %104 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !390
  %105 = getelementptr inbounds %struct.stream, %struct.stream* %104, i32 0, i32 0, !dbg !391
  %106 = load i8*, i8** %105, align 8, !dbg !392
  %107 = getelementptr inbounds i8, i8* %106, i64 4, !dbg !392
  store i8* %107, i8** %105, align 8, !dbg !392
  %108 = load i32, i32* %9, align 4, !dbg !393
  %109 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !395
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0, !dbg !396
  %111 = load i8*, i8** %110, align 8, !dbg !396
  %112 = bitcast i8* %111 to i32*, !dbg !397
  store i32 %108, i32* %112, align 4, !dbg !398
  %113 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !399
  %114 = getelementptr inbounds %struct.stream, %struct.stream* %113, i32 0, i32 0, !dbg !400
  %115 = load i8*, i8** %114, align 8, !dbg !401
  %116 = getelementptr inbounds i8, i8* %115, i64 4, !dbg !401
  store i8* %116, i8** %114, align 8, !dbg !401
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 12, !dbg !402
  %118 = getelementptr inbounds %struct.timespec, %struct.timespec* %117, i32 0, i32 0, !dbg !403
  %119 = load i64, i64* %118, align 8, !dbg !403
  call void @seconds_since_1970_to_filetime(i64 %119, i32* %9, i32* %10), !dbg !404
  %120 = load i32, i32* %10, align 4, !dbg !405
  %121 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !407
  %122 = getelementptr inbounds %struct.stream, %struct.stream* %121, i32 0, i32 0, !dbg !408
  %123 = load i8*, i8** %122, align 8, !dbg !408
  %124 = bitcast i8* %123 to i32*, !dbg !409
  store i32 %120, i32* %124, align 4, !dbg !410
  %125 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !411
  %126 = getelementptr inbounds %struct.stream, %struct.stream* %125, i32 0, i32 0, !dbg !412
  %127 = load i8*, i8** %126, align 8, !dbg !413
  %128 = getelementptr inbounds i8, i8* %127, i64 4, !dbg !413
  store i8* %128, i8** %126, align 8, !dbg !413
  %129 = load i32, i32* %9, align 4, !dbg !414
  %130 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !416
  %131 = getelementptr inbounds %struct.stream, %struct.stream* %130, i32 0, i32 0, !dbg !417
  %132 = load i8*, i8** %131, align 8, !dbg !417
  %133 = bitcast i8* %132 to i32*, !dbg !418
  store i32 %129, i32* %133, align 4, !dbg !419
  %134 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !420
  %135 = getelementptr inbounds %struct.stream, %struct.stream* %134, i32 0, i32 0, !dbg !421
  %136 = load i8*, i8** %135, align 8, !dbg !422
  %137 = getelementptr inbounds i8, i8* %136, i64 4, !dbg !422
  store i8* %137, i8** %135, align 8, !dbg !422
  %138 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 13, !dbg !423
  %139 = getelementptr inbounds %struct.timespec, %struct.timespec* %138, i32 0, i32 0, !dbg !424
  %140 = load i64, i64* %139, align 8, !dbg !424
  call void @seconds_since_1970_to_filetime(i64 %140, i32* %9, i32* %10), !dbg !425
  %141 = load i32, i32* %10, align 4, !dbg !426
  %142 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !428
  %143 = getelementptr inbounds %struct.stream, %struct.stream* %142, i32 0, i32 0, !dbg !429
  %144 = load i8*, i8** %143, align 8, !dbg !429
  %145 = bitcast i8* %144 to i32*, !dbg !430
  store i32 %141, i32* %145, align 4, !dbg !431
  %146 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !432
  %147 = getelementptr inbounds %struct.stream, %struct.stream* %146, i32 0, i32 0, !dbg !433
  %148 = load i8*, i8** %147, align 8, !dbg !434
  %149 = getelementptr inbounds i8, i8* %148, i64 4, !dbg !434
  store i8* %149, i8** %147, align 8, !dbg !434
  %150 = load i32, i32* %9, align 4, !dbg !435
  %151 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !437
  %152 = getelementptr inbounds %struct.stream, %struct.stream* %151, i32 0, i32 0, !dbg !438
  %153 = load i8*, i8** %152, align 8, !dbg !438
  %154 = bitcast i8* %153 to i32*, !dbg !439
  store i32 %150, i32* %154, align 4, !dbg !440
  %155 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !441
  %156 = getelementptr inbounds %struct.stream, %struct.stream* %155, i32 0, i32 0, !dbg !442
  %157 = load i8*, i8** %156, align 8, !dbg !443
  %158 = getelementptr inbounds i8, i8* %157, i64 4, !dbg !443
  store i8* %158, i8** %156, align 8, !dbg !443
  %159 = load i32, i32* %8, align 4, !dbg !444
  %160 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !446
  %161 = getelementptr inbounds %struct.stream, %struct.stream* %160, i32 0, i32 0, !dbg !447
  %162 = load i8*, i8** %161, align 8, !dbg !447
  %163 = bitcast i8* %162 to i32*, !dbg !448
  store i32 %159, i32* %163, align 4, !dbg !449
  %164 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !450
  %165 = getelementptr inbounds %struct.stream, %struct.stream* %164, i32 0, i32 0, !dbg !451
  %166 = load i8*, i8** %165, align 8, !dbg !452
  %167 = getelementptr inbounds i8, i8* %166, i64 4, !dbg !452
  store i8* %167, i8** %165, align 8, !dbg !452
  br label %264, !dbg !453

; <label>:168:                                    ; preds = %74
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8, !dbg !454
  %170 = load i64, i64* %169, align 8, !dbg !454
  %171 = and i64 %170, 4294967295, !dbg !457
  %172 = trunc i64 %171 to i32, !dbg !458
  %173 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !459
  %174 = getelementptr inbounds %struct.stream, %struct.stream* %173, i32 0, i32 0, !dbg !460
  %175 = load i8*, i8** %174, align 8, !dbg !460
  %176 = bitcast i8* %175 to i32*, !dbg !461
  store i32 %172, i32* %176, align 4, !dbg !462
  %177 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !463
  %178 = getelementptr inbounds %struct.stream, %struct.stream* %177, i32 0, i32 0, !dbg !464
  %179 = load i8*, i8** %178, align 8, !dbg !465
  %180 = getelementptr inbounds i8, i8* %179, i64 4, !dbg !465
  store i8* %180, i8** %178, align 8, !dbg !465
  %181 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8, !dbg !466
  %182 = load i64, i64* %181, align 8, !dbg !466
  %183 = ashr i64 %182, 32, !dbg !468
  %184 = and i64 %183, 4294967295, !dbg !469
  %185 = trunc i64 %184 to i32, !dbg !470
  %186 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !471
  %187 = getelementptr inbounds %struct.stream, %struct.stream* %186, i32 0, i32 0, !dbg !472
  %188 = load i8*, i8** %187, align 8, !dbg !472
  %189 = bitcast i8* %188 to i32*, !dbg !473
  store i32 %185, i32* %189, align 4, !dbg !474
  %190 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !475
  %191 = getelementptr inbounds %struct.stream, %struct.stream* %190, i32 0, i32 0, !dbg !476
  %192 = load i8*, i8** %191, align 8, !dbg !477
  %193 = getelementptr inbounds i8, i8* %192, i64 4, !dbg !477
  store i8* %193, i8** %191, align 8, !dbg !477
  %194 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8, !dbg !478
  %195 = load i64, i64* %194, align 8, !dbg !478
  %196 = and i64 %195, 4294967295, !dbg !481
  %197 = trunc i64 %196 to i32, !dbg !482
  %198 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !483
  %199 = getelementptr inbounds %struct.stream, %struct.stream* %198, i32 0, i32 0, !dbg !484
  %200 = load i8*, i8** %199, align 8, !dbg !484
  %201 = bitcast i8* %200 to i32*, !dbg !485
  store i32 %197, i32* %201, align 4, !dbg !486
  %202 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !487
  %203 = getelementptr inbounds %struct.stream, %struct.stream* %202, i32 0, i32 0, !dbg !488
  %204 = load i8*, i8** %203, align 8, !dbg !489
  %205 = getelementptr inbounds i8, i8* %204, i64 4, !dbg !489
  store i8* %205, i8** %203, align 8, !dbg !489
  %206 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8, !dbg !490
  %207 = load i64, i64* %206, align 8, !dbg !490
  %208 = ashr i64 %207, 32, !dbg !492
  %209 = and i64 %208, 4294967295, !dbg !493
  %210 = trunc i64 %209 to i32, !dbg !494
  %211 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !495
  %212 = getelementptr inbounds %struct.stream, %struct.stream* %211, i32 0, i32 0, !dbg !496
  %213 = load i8*, i8** %212, align 8, !dbg !496
  %214 = bitcast i8* %213 to i32*, !dbg !497
  store i32 %210, i32* %214, align 4, !dbg !498
  %215 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !499
  %216 = getelementptr inbounds %struct.stream, %struct.stream* %215, i32 0, i32 0, !dbg !500
  %217 = load i8*, i8** %216, align 8, !dbg !501
  %218 = getelementptr inbounds i8, i8* %217, i64 4, !dbg !501
  store i8* %218, i8** %216, align 8, !dbg !501
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2, !dbg !502
  %220 = load i64, i64* %219, align 8, !dbg !502
  %221 = trunc i64 %220 to i32, !dbg !504
  %222 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !505
  %223 = getelementptr inbounds %struct.stream, %struct.stream* %222, i32 0, i32 0, !dbg !506
  %224 = load i8*, i8** %223, align 8, !dbg !506
  %225 = bitcast i8* %224 to i32*, !dbg !507
  store i32 %221, i32* %225, align 4, !dbg !508
  %226 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !509
  %227 = getelementptr inbounds %struct.stream, %struct.stream* %226, i32 0, i32 0, !dbg !510
  %228 = load i8*, i8** %227, align 8, !dbg !511
  %229 = getelementptr inbounds i8, i8* %228, i64 4, !dbg !511
  store i8* %229, i8** %227, align 8, !dbg !511
  %230 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !512
  %231 = getelementptr inbounds %struct.stream, %struct.stream* %230, i32 0, i32 0, !dbg !513
  %232 = load i8*, i8** %231, align 8, !dbg !514
  %233 = getelementptr inbounds i8, i8* %232, i32 1, !dbg !514
  store i8* %233, i8** %231, align 8, !dbg !514
  store i8 0, i8* %232, align 1, !dbg !515
  %234 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 3, !dbg !516
  %235 = load i32, i32* %234, align 8, !dbg !516
  %236 = and i32 %235, 61440, !dbg !517
  %237 = icmp eq i32 %236, 16384, !dbg !518
  %238 = select i1 %237, i32 1, i32 0, !dbg !519
  %239 = trunc i32 %238 to i8, !dbg !519
  %240 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !520
  %241 = getelementptr inbounds %struct.stream, %struct.stream* %240, i32 0, i32 0, !dbg !521
  %242 = load i8*, i8** %241, align 8, !dbg !522
  %243 = getelementptr inbounds i8, i8* %242, i32 1, !dbg !522
  store i8* %243, i8** %241, align 8, !dbg !522
  store i8 %239, i8* %242, align 1, !dbg !523
  br label %264, !dbg !524

; <label>:244:                                    ; preds = %74
  %245 = load i32, i32* %8, align 4, !dbg !525
  %246 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !527
  %247 = getelementptr inbounds %struct.stream, %struct.stream* %246, i32 0, i32 0, !dbg !528
  %248 = load i8*, i8** %247, align 8, !dbg !528
  %249 = bitcast i8* %248 to i32*, !dbg !529
  store i32 %245, i32* %249, align 4, !dbg !530
  %250 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !531
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %250, i32 0, i32 0, !dbg !532
  %252 = load i8*, i8** %251, align 8, !dbg !533
  %253 = getelementptr inbounds i8, i8* %252, i64 4, !dbg !533
  store i8* %253, i8** %251, align 8, !dbg !533
  %254 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !534
  %255 = getelementptr inbounds %struct.stream, %struct.stream* %254, i32 0, i32 0, !dbg !536
  %256 = load i8*, i8** %255, align 8, !dbg !536
  %257 = bitcast i8* %256 to i32*, !dbg !537
  store i32 0, i32* %257, align 4, !dbg !538
  %258 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !539
  %259 = getelementptr inbounds %struct.stream, %struct.stream* %258, i32 0, i32 0, !dbg !540
  %260 = load i8*, i8** %259, align 8, !dbg !541
  %261 = getelementptr inbounds i8, i8* %260, i64 4, !dbg !541
  store i8* %261, i8** %259, align 8, !dbg !541
  br label %264, !dbg !542

; <label>:262:                                    ; preds = %74
  %263 = load i32, i32* %6, align 4, !dbg !543
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 2, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i32 %263), !dbg !544
  store i32 -1073741811, i32* %4, align 4, !dbg !545
  br label %265, !dbg !545

; <label>:264:                                    ; preds = %244, %168, %76
  store i32 0, i32* %4, align 4, !dbg !546
  br label %265, !dbg !546

; <label>:265:                                    ; preds = %264, %262, %24
  %266 = load i32, i32* %4, align 4, !dbg !547
  ret i32 %266, !dbg !547
}

declare void @logger(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal void @seconds_since_1970_to_filetime(i64, i32*, i32*) #0 !dbg !548 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !551, metadata !160), !dbg !552
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !553, metadata !160), !dbg !554
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !555, metadata !160), !dbg !556
  call void @llvm.dbg.declare(metadata i64* %7, metadata !557, metadata !160), !dbg !558
  %8 = load i64, i64* %4, align 8, !dbg !559
  %9 = add nsw i64 %8, 11644473600, !dbg !560
  %10 = mul nsw i64 %9, 10000000, !dbg !561
  store i64 %10, i64* %7, align 8, !dbg !562
  %11 = load i64, i64* %7, align 8, !dbg !563
  %12 = trunc i64 %11 to i32, !dbg !564
  %13 = load i32*, i32** %6, align 8, !dbg !565
  store i32 %12, i32* %13, align 4, !dbg !566
  %14 = load i64, i64* %7, align 8, !dbg !567
  %15 = lshr i64 %14, 32, !dbg !568
  %16 = trunc i64 %15 to i32, !dbg !569
  %17 = load i32*, i32** %5, align 8, !dbg !570
  store i32 %16, i32* %17, align 4, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: nounwind uwtable
define internal i64 @get_create_time(%struct.stat*) #0 !dbg !573 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stat** %3, metadata !577, metadata !160), !dbg !578
  call void @llvm.dbg.declare(metadata i64* %4, metadata !579, metadata !160), !dbg !580
  call void @llvm.dbg.declare(metadata i64* %5, metadata !581, metadata !160), !dbg !582
  %6 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !583
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 13, !dbg !583
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0, !dbg !584
  %9 = load i64, i64* %8, align 8, !dbg !584
  %10 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !583
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 12, !dbg !583
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0, !dbg !584
  %13 = load i64, i64* %12, align 8, !dbg !584
  %14 = icmp slt i64 %9, %13, !dbg !585
  br i1 %14, label %15, label %20, !dbg !586

; <label>:15:                                     ; preds = %1
  %16 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !587
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 13, !dbg !587
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0, !dbg !589
  %19 = load i64, i64* %18, align 8, !dbg !589
  br label %25, !dbg !590

; <label>:20:                                     ; preds = %1
  %21 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !591
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 12, !dbg !591
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0, !dbg !593
  %24 = load i64, i64* %23, align 8, !dbg !593
  br label %25, !dbg !594

; <label>:25:                                     ; preds = %20, %15
  %26 = phi i64 [ %19, %15 ], [ %24, %20 ], !dbg !595
  store i64 %26, i64* %4, align 8, !dbg !597
  %27 = load i64, i64* %4, align 8, !dbg !598
  %28 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !598
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 11, !dbg !598
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0, !dbg !599
  %31 = load i64, i64* %30, align 8, !dbg !599
  %32 = icmp slt i64 %27, %31, !dbg !600
  br i1 %32, label %33, label %35, !dbg !600

; <label>:33:                                     ; preds = %25
  %34 = load i64, i64* %4, align 8, !dbg !601
  br label %40, !dbg !602

; <label>:35:                                     ; preds = %25
  %36 = load %struct.stat*, %struct.stat** %3, align 8, !dbg !603
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 11, !dbg !603
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0, !dbg !604
  %39 = load i64, i64* %38, align 8, !dbg !604
  br label %40, !dbg !605

; <label>:40:                                     ; preds = %35, %33
  %41 = phi i64 [ %34, %33 ], [ %39, %35 ], !dbg !606
  store i64 %41, i64* %5, align 8, !dbg !607
  %42 = load i64, i64* %5, align 8, !dbg !608
  %43 = icmp ne i64 %42, 0, !dbg !610
  br i1 %43, label %44, label %46, !dbg !611

; <label>:44:                                     ; preds = %40
  %45 = load i64, i64* %5, align 8, !dbg !612
  store i64 %45, i64* %2, align 8, !dbg !613
  br label %48, !dbg !613

; <label>:46:                                     ; preds = %40
  %47 = load i64, i64* %4, align 8, !dbg !614
  store i64 %47, i64* %2, align 8, !dbg !615
  br label %48, !dbg !615

; <label>:48:                                     ; preds = %46, %44
  %49 = load i64, i64* %2, align 8, !dbg !616
  ret i64 %49, !dbg !616
}

; Function Attrs: nounwind uwtable
define i32 @disk_set_information(i32, i32, %struct.stream*, %struct.stream*) #0 !dbg !617 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream*, align 8
  %9 = alloca %struct.stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [4096 x i8], align 16
  %16 = alloca %struct.fileinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.stat, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.utimbuf, align 8
  %24 = alloca %struct.statvfs, align 8
  %25 = alloca %struct.__dirstream*, align 8
  %26 = alloca %struct.dirent*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !618, metadata !160), !dbg !619
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !620, metadata !160), !dbg !621
  store %struct.stream* %2, %struct.stream** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !622, metadata !160), !dbg !623
  store %struct.stream* %3, %struct.stream** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %9, metadata !624, metadata !160), !dbg !625
  %27 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !626
  call void @llvm.dbg.declare(metadata i32* %10, metadata !627, metadata !160), !dbg !628
  call void @llvm.dbg.declare(metadata i32* %11, metadata !629, metadata !160), !dbg !630
  call void @llvm.dbg.declare(metadata i32* %12, metadata !631, metadata !160), !dbg !632
  call void @llvm.dbg.declare(metadata i32* %13, metadata !633, metadata !160), !dbg !634
  call void @llvm.dbg.declare(metadata i8** %14, metadata !635, metadata !160), !dbg !636
  call void @llvm.dbg.declare(metadata [4096 x i8]* %15, metadata !637, metadata !160), !dbg !638
  call void @llvm.dbg.declare(metadata %struct.fileinfo** %16, metadata !639, metadata !160), !dbg !641
  call void @llvm.dbg.declare(metadata i32* %17, metadata !642, metadata !160), !dbg !643
  call void @llvm.dbg.declare(metadata %struct.stat* %18, metadata !644, metadata !160), !dbg !645
  call void @llvm.dbg.declare(metadata i64* %19, metadata !646, metadata !160), !dbg !647
  call void @llvm.dbg.declare(metadata i64* %20, metadata !648, metadata !160), !dbg !649
  call void @llvm.dbg.declare(metadata i64* %21, metadata !650, metadata !160), !dbg !651
  call void @llvm.dbg.declare(metadata i64* %22, metadata !652, metadata !160), !dbg !653
  call void @llvm.dbg.declare(metadata %struct.utimbuf* %23, metadata !654, metadata !160), !dbg !660
  call void @llvm.dbg.declare(metadata %struct.statvfs* %24, metadata !661, metadata !160), !dbg !682
  %28 = load i32, i32* %6, align 4, !dbg !683
  %29 = load i32, i32* %7, align 4, !dbg !684
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0), i32 %28, i32 %29), !dbg !685
  %30 = load i32, i32* %6, align 4, !dbg !686
  %31 = zext i32 %30 to i64, !dbg !687
  %32 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %31, !dbg !687
  store %struct.fileinfo* %32, %struct.fileinfo** %16, align 8, !dbg !688
  store i32 1, i32* @g_notify_stamp, align 4, !dbg !689
  store i8* null, i8** %14, align 8, !dbg !690
  %33 = load i32, i32* %7, align 4, !dbg !691
  switch i32 %33, label %398 [
    i32 4, label %34
    i32 10, label %254
    i32 13, label %309
    i32 19, label %360
    i32 20, label %360
  ], !dbg !692

; <label>:34:                                     ; preds = %4
  store i64 0, i64* %21, align 8, !dbg !693
  store i64 0, i64* %20, align 8, !dbg !695
  store i64 0, i64* %19, align 8, !dbg !696
  %35 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !697
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %35, i32 0, i32 0, !dbg !698
  %37 = load i8*, i8** %36, align 8, !dbg !699
  %38 = getelementptr inbounds i8, i8* %37, i64 4, !dbg !699
  store i8* %38, i8** %36, align 8, !dbg !699
  %39 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !700
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !701
  %41 = load i8*, i8** %40, align 8, !dbg !702
  %42 = getelementptr inbounds i8, i8* %41, i64 24, !dbg !702
  store i8* %42, i8** %40, align 8, !dbg !702
  %43 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !703
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !705
  %45 = load i8*, i8** %44, align 8, !dbg !705
  %46 = bitcast i8* %45 to i32*, !dbg !706
  %47 = load i32, i32* %46, align 4, !dbg !706
  store i32 %47, i32* %13, align 4, !dbg !707
  %48 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !708
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !709
  %50 = load i8*, i8** %49, align 8, !dbg !710
  %51 = getelementptr inbounds i8, i8* %50, i64 4, !dbg !710
  store i8* %51, i8** %49, align 8, !dbg !710
  %52 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !711
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !713
  %54 = load i8*, i8** %53, align 8, !dbg !713
  %55 = bitcast i8* %54 to i32*, !dbg !714
  %56 = load i32, i32* %55, align 4, !dbg !714
  store i32 %56, i32* %12, align 4, !dbg !715
  %57 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !716
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !717
  %59 = load i8*, i8** %58, align 8, !dbg !718
  %60 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !718
  store i8* %60, i8** %58, align 8, !dbg !718
  %61 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !719
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %61, i32 0, i32 0, !dbg !721
  %63 = load i8*, i8** %62, align 8, !dbg !721
  %64 = bitcast i8* %63 to i32*, !dbg !722
  %65 = load i32, i32* %64, align 4, !dbg !722
  store i32 %65, i32* %13, align 4, !dbg !723
  %66 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !724
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 0, !dbg !725
  %68 = load i8*, i8** %67, align 8, !dbg !726
  %69 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !726
  store i8* %69, i8** %67, align 8, !dbg !726
  %70 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !727
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %70, i32 0, i32 0, !dbg !729
  %72 = load i8*, i8** %71, align 8, !dbg !729
  %73 = bitcast i8* %72 to i32*, !dbg !730
  %74 = load i32, i32* %73, align 4, !dbg !730
  store i32 %74, i32* %12, align 4, !dbg !731
  %75 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !732
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 0, !dbg !733
  %77 = load i8*, i8** %76, align 8, !dbg !734
  %78 = getelementptr inbounds i8, i8* %77, i64 4, !dbg !734
  store i8* %78, i8** %76, align 8, !dbg !734
  %79 = load i32, i32* %13, align 4, !dbg !735
  %80 = icmp ne i32 %79, 0, !dbg !735
  br i1 %80, label %84, label %81, !dbg !737

; <label>:81:                                     ; preds = %34
  %82 = load i32, i32* %12, align 4, !dbg !738
  %83 = icmp ne i32 %82, 0, !dbg !738
  br i1 %83, label %84, label %88, !dbg !740

; <label>:84:                                     ; preds = %81, %34
  %85 = load i32, i32* %12, align 4, !dbg !741
  %86 = load i32, i32* %13, align 4, !dbg !742
  %87 = call i64 @convert_1970_to_filetime(i32 %85, i32 %86), !dbg !743
  store i64 %87, i64* %21, align 8, !dbg !744
  br label %88, !dbg !745

; <label>:88:                                     ; preds = %84, %81
  %89 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !746
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 0, !dbg !748
  %91 = load i8*, i8** %90, align 8, !dbg !748
  %92 = bitcast i8* %91 to i32*, !dbg !749
  %93 = load i32, i32* %92, align 4, !dbg !749
  store i32 %93, i32* %13, align 4, !dbg !750
  %94 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !751
  %95 = getelementptr inbounds %struct.stream, %struct.stream* %94, i32 0, i32 0, !dbg !752
  %96 = load i8*, i8** %95, align 8, !dbg !753
  %97 = getelementptr inbounds i8, i8* %96, i64 4, !dbg !753
  store i8* %97, i8** %95, align 8, !dbg !753
  %98 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !754
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i32 0, i32 0, !dbg !756
  %100 = load i8*, i8** %99, align 8, !dbg !756
  %101 = bitcast i8* %100 to i32*, !dbg !757
  %102 = load i32, i32* %101, align 4, !dbg !757
  store i32 %102, i32* %12, align 4, !dbg !758
  %103 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !759
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0, !dbg !760
  %105 = load i8*, i8** %104, align 8, !dbg !761
  %106 = getelementptr inbounds i8, i8* %105, i64 4, !dbg !761
  store i8* %106, i8** %104, align 8, !dbg !761
  %107 = load i32, i32* %13, align 4, !dbg !762
  %108 = icmp ne i32 %107, 0, !dbg !762
  br i1 %108, label %112, label %109, !dbg !764

; <label>:109:                                    ; preds = %88
  %110 = load i32, i32* %12, align 4, !dbg !765
  %111 = icmp ne i32 %110, 0, !dbg !765
  br i1 %111, label %112, label %116, !dbg !767

; <label>:112:                                    ; preds = %109, %88
  %113 = load i32, i32* %12, align 4, !dbg !768
  %114 = load i32, i32* %13, align 4, !dbg !769
  %115 = call i64 @convert_1970_to_filetime(i32 %113, i32 %114), !dbg !770
  store i64 %115, i64* %19, align 8, !dbg !771
  br label %116, !dbg !772

; <label>:116:                                    ; preds = %112, %109
  %117 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !773
  %118 = getelementptr inbounds %struct.stream, %struct.stream* %117, i32 0, i32 0, !dbg !775
  %119 = load i8*, i8** %118, align 8, !dbg !775
  %120 = bitcast i8* %119 to i32*, !dbg !776
  %121 = load i32, i32* %120, align 4, !dbg !776
  store i32 %121, i32* %13, align 4, !dbg !777
  %122 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !778
  %123 = getelementptr inbounds %struct.stream, %struct.stream* %122, i32 0, i32 0, !dbg !779
  %124 = load i8*, i8** %123, align 8, !dbg !780
  %125 = getelementptr inbounds i8, i8* %124, i64 4, !dbg !780
  store i8* %125, i8** %123, align 8, !dbg !780
  %126 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !781
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !783
  %128 = load i8*, i8** %127, align 8, !dbg !783
  %129 = bitcast i8* %128 to i32*, !dbg !784
  %130 = load i32, i32* %129, align 4, !dbg !784
  store i32 %130, i32* %12, align 4, !dbg !785
  %131 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !786
  %132 = getelementptr inbounds %struct.stream, %struct.stream* %131, i32 0, i32 0, !dbg !787
  %133 = load i8*, i8** %132, align 8, !dbg !788
  %134 = getelementptr inbounds i8, i8* %133, i64 4, !dbg !788
  store i8* %134, i8** %132, align 8, !dbg !788
  %135 = load i32, i32* %13, align 4, !dbg !789
  %136 = icmp ne i32 %135, 0, !dbg !789
  br i1 %136, label %140, label %137, !dbg !791

; <label>:137:                                    ; preds = %116
  %138 = load i32, i32* %12, align 4, !dbg !792
  %139 = icmp ne i32 %138, 0, !dbg !792
  br i1 %139, label %140, label %144, !dbg !794

; <label>:140:                                    ; preds = %137, %116
  %141 = load i32, i32* %12, align 4, !dbg !795
  %142 = load i32, i32* %13, align 4, !dbg !796
  %143 = call i64 @convert_1970_to_filetime(i32 %141, i32 %142), !dbg !797
  store i64 %143, i64* %20, align 8, !dbg !798
  br label %144, !dbg !799

; <label>:144:                                    ; preds = %140, %137
  %145 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !800
  %146 = getelementptr inbounds %struct.stream, %struct.stream* %145, i32 0, i32 0, !dbg !802
  %147 = load i8*, i8** %146, align 8, !dbg !802
  %148 = bitcast i8* %147 to i32*, !dbg !803
  %149 = load i32, i32* %148, align 4, !dbg !803
  store i32 %149, i32* %11, align 4, !dbg !804
  %150 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !805
  %151 = getelementptr inbounds %struct.stream, %struct.stream* %150, i32 0, i32 0, !dbg !806
  %152 = load i8*, i8** %151, align 8, !dbg !807
  %153 = getelementptr inbounds i8, i8* %152, i64 4, !dbg !807
  store i8* %153, i8** %151, align 8, !dbg !807
  %154 = load i32, i32* %6, align 4, !dbg !808
  %155 = call i32 @fstat(i32 %154, %struct.stat* %18) #8, !dbg !810
  %156 = icmp ne i32 %155, 0, !dbg !810
  br i1 %156, label %157, label %158, !dbg !811

; <label>:157:                                    ; preds = %144
  store i32 -1073741790, i32* %5, align 4, !dbg !812
  br label %401, !dbg !812

; <label>:158:                                    ; preds = %144
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 12, !dbg !813
  %160 = getelementptr inbounds %struct.timespec, %struct.timespec* %159, i32 0, i32 0, !dbg !814
  %161 = load i64, i64* %160, align 8, !dbg !814
  %162 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %23, i32 0, i32 1, !dbg !815
  store i64 %161, i64* %162, align 8, !dbg !816
  %163 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 11, !dbg !817
  %164 = getelementptr inbounds %struct.timespec, %struct.timespec* %163, i32 0, i32 0, !dbg !818
  %165 = load i64, i64* %164, align 8, !dbg !818
  %166 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %23, i32 0, i32 0, !dbg !819
  store i64 %165, i64* %166, align 8, !dbg !820
  %167 = load i64, i64* %21, align 8, !dbg !821
  %168 = icmp ne i64 %167, 0, !dbg !821
  br i1 %168, label %169, label %172, !dbg !823

; <label>:169:                                    ; preds = %158
  %170 = load i64, i64* %21, align 8, !dbg !824
  %171 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %23, i32 0, i32 0, !dbg !825
  store i64 %170, i64* %171, align 8, !dbg !826
  br label %172, !dbg !827

; <label>:172:                                    ; preds = %169, %158
  %173 = load i64, i64* %19, align 8, !dbg !828
  %174 = icmp ne i64 %173, 0, !dbg !828
  br i1 %174, label %178, label %175, !dbg !830

; <label>:175:                                    ; preds = %172
  %176 = load i64, i64* %20, align 8, !dbg !831
  %177 = icmp ne i64 %176, 0, !dbg !831
  br i1 %177, label %178, label %188, !dbg !833

; <label>:178:                                    ; preds = %175, %172
  %179 = load i64, i64* %19, align 8, !dbg !834
  %180 = load i64, i64* %20, align 8, !dbg !834
  %181 = icmp slt i64 %179, %180, !dbg !835
  br i1 %181, label %182, label %184, !dbg !835

; <label>:182:                                    ; preds = %178
  %183 = load i64, i64* %19, align 8, !dbg !836
  br label %186, !dbg !837

; <label>:184:                                    ; preds = %178
  %185 = load i64, i64* %20, align 8, !dbg !838
  br label %186, !dbg !840

; <label>:186:                                    ; preds = %184, %182
  %187 = phi i64 [ %183, %182 ], [ %185, %184 ], !dbg !841
  store i64 %187, i64* %22, align 8, !dbg !843
  br label %197, !dbg !844

; <label>:188:                                    ; preds = %175
  %189 = load i64, i64* %19, align 8, !dbg !845
  %190 = icmp ne i64 %189, 0, !dbg !845
  br i1 %190, label %191, label %193, !dbg !845

; <label>:191:                                    ; preds = %188
  %192 = load i64, i64* %19, align 8, !dbg !846
  br label %195, !dbg !847

; <label>:193:                                    ; preds = %188
  %194 = load i64, i64* %20, align 8, !dbg !848
  br label %195, !dbg !849

; <label>:195:                                    ; preds = %193, %191
  %196 = phi i64 [ %192, %191 ], [ %194, %193 ], !dbg !850
  store i64 %196, i64* %22, align 8, !dbg !851
  br label %197

; <label>:197:                                    ; preds = %195, %186
  %198 = load i64, i64* %22, align 8, !dbg !852
  %199 = icmp ne i64 %198, 0, !dbg !852
  br i1 %199, label %200, label %203, !dbg !854

; <label>:200:                                    ; preds = %197
  %201 = load i64, i64* %22, align 8, !dbg !855
  %202 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %23, i32 0, i32 1, !dbg !856
  store i64 %201, i64* %202, align 8, !dbg !857
  br label %203, !dbg !858

; <label>:203:                                    ; preds = %200, %197
  %204 = load i64, i64* %21, align 8, !dbg !859
  %205 = icmp ne i64 %204, 0, !dbg !859
  br i1 %205, label %212, label %206, !dbg !861

; <label>:206:                                    ; preds = %203
  %207 = load i64, i64* %19, align 8, !dbg !862
  %208 = icmp ne i64 %207, 0, !dbg !862
  br i1 %208, label %212, label %209, !dbg !864

; <label>:209:                                    ; preds = %206
  %210 = load i64, i64* %20, align 8, !dbg !865
  %211 = icmp ne i64 %210, 0, !dbg !865
  br i1 %211, label %212, label %228, !dbg !867

; <label>:212:                                    ; preds = %209, %206, %203
  %213 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %23, i32 0, i32 0, !dbg !868
  %214 = call i8* @ctime(i64* %213) #8, !dbg !870
  %215 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %23, i32 0, i32 1, !dbg !871
  %216 = call i8* @ctime(i64* %215) #8, !dbg !872
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i32 0, i32 0), i8* %214, i8* %216), !dbg !874
  %217 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !875
  %218 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %217, i32 0, i32 3, !dbg !877
  %219 = getelementptr inbounds [4096 x i8], [4096 x i8]* %218, i32 0, i32 0, !dbg !875
  %220 = call i32 @utime(i8* %219, %struct.utimbuf* %23) #8, !dbg !878
  %221 = icmp ne i32 %220, 0, !dbg !878
  br i1 %221, label %222, label %227, !dbg !879

; <label>:222:                                    ; preds = %212
  %223 = call i32* @__errno_location() #1, !dbg !880
  %224 = load i32, i32* %223, align 4, !dbg !882
  %225 = icmp ne i32 %224, 1, !dbg !883
  br i1 %225, label %226, label %227, !dbg !884

; <label>:226:                                    ; preds = %222
  store i32 -1073741790, i32* %5, align 4, !dbg !885
  br label %401, !dbg !885

; <label>:227:                                    ; preds = %222, %212
  br label %228, !dbg !886

; <label>:228:                                    ; preds = %227, %209
  %229 = load i32, i32* %11, align 4, !dbg !887
  %230 = icmp ne i32 %229, 0, !dbg !887
  br i1 %230, label %232, label %231, !dbg !889

; <label>:231:                                    ; preds = %228
  br label %400, !dbg !890

; <label>:232:                                    ; preds = %228
  %233 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 3, !dbg !891
  %234 = load i32, i32* %233, align 8, !dbg !891
  store i32 %234, i32* %17, align 4, !dbg !892
  %235 = load i32, i32* %11, align 4, !dbg !893
  %236 = and i32 %235, 1, !dbg !895
  %237 = icmp ne i32 %236, 0, !dbg !895
  br i1 %237, label %238, label %241, !dbg !896

; <label>:238:                                    ; preds = %232
  %239 = load i32, i32* %17, align 4, !dbg !897
  %240 = and i32 %239, -147, !dbg !897
  store i32 %240, i32* %17, align 4, !dbg !897
  br label %244, !dbg !898

; <label>:241:                                    ; preds = %232
  %242 = load i32, i32* %17, align 4, !dbg !899
  %243 = or i32 %242, 128, !dbg !899
  store i32 %243, i32* %17, align 4, !dbg !899
  br label %244

; <label>:244:                                    ; preds = %241, %238
  %245 = load i32, i32* %17, align 4, !dbg !900
  %246 = and i32 %245, 511, !dbg !900
  store i32 %246, i32* %17, align 4, !dbg !900
  %247 = load i32, i32* %17, align 4, !dbg !901
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i32 %247), !dbg !902
  %248 = load i32, i32* %6, align 4, !dbg !903
  %249 = load i32, i32* %17, align 4, !dbg !905
  %250 = call i32 @fchmod(i32 %248, i32 %249) #8, !dbg !906
  %251 = icmp ne i32 %250, 0, !dbg !906
  br i1 %251, label %252, label %253, !dbg !907

; <label>:252:                                    ; preds = %244
  store i32 -1073741790, i32* %5, align 4, !dbg !908
  br label %401, !dbg !908

; <label>:253:                                    ; preds = %244
  br label %400, !dbg !909

; <label>:254:                                    ; preds = %4
  %255 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !910
  %256 = getelementptr inbounds %struct.stream, %struct.stream* %255, i32 0, i32 0, !dbg !911
  %257 = load i8*, i8** %256, align 8, !dbg !912
  %258 = getelementptr inbounds i8, i8* %257, i64 4, !dbg !912
  store i8* %258, i8** %256, align 8, !dbg !912
  %259 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !913
  %260 = getelementptr inbounds %struct.stream, %struct.stream* %259, i32 0, i32 0, !dbg !914
  %261 = load i8*, i8** %260, align 8, !dbg !915
  %262 = getelementptr inbounds i8, i8* %261, i64 26, !dbg !915
  store i8* %262, i8** %260, align 8, !dbg !915
  %263 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !916
  %264 = getelementptr inbounds %struct.stream, %struct.stream* %263, i32 0, i32 0, !dbg !918
  %265 = load i8*, i8** %264, align 8, !dbg !918
  %266 = bitcast i8* %265 to i32*, !dbg !919
  %267 = load i32, i32* %266, align 4, !dbg !919
  store i32 %267, i32* %10, align 4, !dbg !920
  %268 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !921
  %269 = getelementptr inbounds %struct.stream, %struct.stream* %268, i32 0, i32 0, !dbg !922
  %270 = load i8*, i8** %269, align 8, !dbg !923
  %271 = getelementptr inbounds i8, i8* %270, i64 4, !dbg !923
  store i8* %271, i8** %269, align 8, !dbg !923
  %272 = load i32, i32* %10, align 4, !dbg !924
  %273 = icmp ne i32 %272, 0, !dbg !924
  br i1 %273, label %274, label %279, !dbg !926

; <label>:274:                                    ; preds = %254
  %275 = load i32, i32* %10, align 4, !dbg !927
  %276 = udiv i32 %275, 2, !dbg !929
  %277 = icmp uge i32 %276, 256, !dbg !930
  br i1 %277, label %278, label %279, !dbg !931

; <label>:278:                                    ; preds = %274
  store i32 -1073741811, i32* %5, align 4, !dbg !932
  br label %401, !dbg !932

; <label>:279:                                    ; preds = %274, %254
  %280 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !933
  %281 = load i32, i32* %10, align 4, !dbg !934
  call void @rdp_in_unistr(%struct.stream* %280, i32 %281, i8** %14, i32* %10), !dbg !935
  %282 = load i8*, i8** %14, align 8, !dbg !936
  %283 = icmp eq i8* %282, null, !dbg !938
  br i1 %283, label %284, label %285, !dbg !939

; <label>:284:                                    ; preds = %279
  store i32 -1073741811, i32* %5, align 4, !dbg !940
  br label %401, !dbg !940

; <label>:285:                                    ; preds = %279
  %286 = load i8*, i8** %14, align 8, !dbg !941
  call void @convert_to_unix_filename(i8* %286), !dbg !942
  %287 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !943
  %288 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !944
  %289 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %288, i32 0, i32 0, !dbg !945
  %290 = load i32, i32* %289, align 8, !dbg !945
  %291 = zext i32 %290 to i64, !dbg !946
  %292 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %291, !dbg !946
  %293 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %292, i32 0, i32 3, !dbg !947
  %294 = load i8*, i8** %293, align 8, !dbg !947
  %295 = load i8*, i8** %14, align 8, !dbg !948
  %296 = call i32 (i8*, i8*, ...) @sprintf(i8* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %294, i8* %295) #8, !dbg !949
  %297 = load i8*, i8** %14, align 8, !dbg !950
  call void @free(i8* %297) #8, !dbg !951
  %298 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !952
  %299 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %298, i32 0, i32 3, !dbg !954
  %300 = getelementptr inbounds [4096 x i8], [4096 x i8]* %299, i32 0, i32 0, !dbg !952
  %301 = getelementptr inbounds [4096 x i8], [4096 x i8]* %15, i32 0, i32 0, !dbg !955
  %302 = call i32 @rename(i8* %300, i8* %301) #8, !dbg !956
  %303 = icmp ne i32 %302, 0, !dbg !957
  br i1 %303, label %304, label %308, !dbg !958

; <label>:304:                                    ; preds = %285
  %305 = call i32* @__errno_location() #1, !dbg !959
  %306 = load i32, i32* %305, align 4, !dbg !961
  %307 = call i8* @strerror(i32 %306) #8, !dbg !962
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* %307), !dbg !964
  store i32 -1073741790, i32* %5, align 4, !dbg !965
  br label %401, !dbg !965

; <label>:308:                                    ; preds = %285
  br label %400, !dbg !966

; <label>:309:                                    ; preds = %4
  %310 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !967
  %311 = getelementptr inbounds %struct.stream, %struct.stream* %310, i32 0, i32 0, !dbg !968
  %312 = load i8*, i8** %311, align 8, !dbg !969
  %313 = getelementptr inbounds i8, i8* %312, i64 4, !dbg !969
  store i8* %313, i8** %311, align 8, !dbg !969
  %314 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !970
  %315 = getelementptr inbounds %struct.stream, %struct.stream* %314, i32 0, i32 0, !dbg !971
  %316 = load i8*, i8** %315, align 8, !dbg !972
  %317 = getelementptr inbounds i8, i8* %316, i64 24, !dbg !972
  store i8* %317, i8** %315, align 8, !dbg !972
  %318 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !973
  %319 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %318, i32 0, i32 2, !dbg !975
  %320 = load i32, i32* %319, align 8, !dbg !975
  %321 = and i32 %320, 4352, !dbg !976
  %322 = icmp ne i32 %321, 0, !dbg !976
  br i1 %322, label %323, label %359, !dbg !977

; <label>:323:                                    ; preds = %309
  %324 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !978
  %325 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %324, i32 0, i32 4, !dbg !981
  %326 = load %struct.__dirstream*, %struct.__dirstream** %325, align 8, !dbg !981
  %327 = icmp ne %struct.__dirstream* %326, null, !dbg !978
  br i1 %327, label %328, label %356, !dbg !982

; <label>:328:                                    ; preds = %323
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %25, metadata !983, metadata !160), !dbg !985
  %329 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !986
  %330 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %329, i32 0, i32 3, !dbg !987
  %331 = getelementptr inbounds [4096 x i8], [4096 x i8]* %330, i32 0, i32 0, !dbg !986
  %332 = call %struct.__dirstream* @opendir(i8* %331), !dbg !988
  store %struct.__dirstream* %332, %struct.__dirstream** %25, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata %struct.dirent** %26, metadata !989, metadata !160), !dbg !990
  br label %333, !dbg !991

; <label>:333:                                    ; preds = %352, %328
  %334 = load %struct.__dirstream*, %struct.__dirstream** %25, align 8, !dbg !992
  %335 = call %struct.dirent* @readdir(%struct.__dirstream* %334), !dbg !994
  store %struct.dirent* %335, %struct.dirent** %26, align 8, !dbg !995
  %336 = icmp ne %struct.dirent* %335, null, !dbg !996
  br i1 %336, label %337, label %353, !dbg !997

; <label>:337:                                    ; preds = %333
  %338 = load %struct.dirent*, %struct.dirent** %26, align 8, !dbg !998
  %339 = getelementptr inbounds %struct.dirent, %struct.dirent* %338, i32 0, i32 4, !dbg !1001
  %340 = getelementptr inbounds [256 x i8], [256 x i8]* %339, i32 0, i32 0, !dbg !998
  %341 = call i32 @strcmp(i8* %340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #9, !dbg !1002
  %342 = icmp ne i32 %341, 0, !dbg !1003
  br i1 %342, label %343, label %352, !dbg !1004

; <label>:343:                                    ; preds = %337
  %344 = load %struct.dirent*, %struct.dirent** %26, align 8, !dbg !1005
  %345 = getelementptr inbounds %struct.dirent, %struct.dirent* %344, i32 0, i32 4, !dbg !1007
  %346 = getelementptr inbounds [256 x i8], [256 x i8]* %345, i32 0, i32 0, !dbg !1005
  %347 = call i32 @strcmp(i8* %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !1008
  %348 = icmp ne i32 %347, 0, !dbg !1009
  br i1 %348, label %349, label %352, !dbg !1010

; <label>:349:                                    ; preds = %343
  %350 = load %struct.__dirstream*, %struct.__dirstream** %25, align 8, !dbg !1012
  %351 = call i32 @closedir(%struct.__dirstream* %350), !dbg !1014
  store i32 -1073741567, i32* %5, align 4, !dbg !1015
  br label %401, !dbg !1015

; <label>:352:                                    ; preds = %343, %337
  br label %333, !dbg !1016, !llvm.loop !1018

; <label>:353:                                    ; preds = %333
  %354 = load %struct.__dirstream*, %struct.__dirstream** %25, align 8, !dbg !1019
  %355 = call i32 @closedir(%struct.__dirstream* %354), !dbg !1020
  br label %356, !dbg !1021

; <label>:356:                                    ; preds = %353, %323
  %357 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !1022
  %358 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %357, i32 0, i32 7, !dbg !1023
  store i32 1, i32* %358, align 8, !dbg !1024
  br label %359, !dbg !1025

; <label>:359:                                    ; preds = %356, %309
  br label %400, !dbg !1026

; <label>:360:                                    ; preds = %4, %4
  %361 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1027
  %362 = getelementptr inbounds %struct.stream, %struct.stream* %361, i32 0, i32 0, !dbg !1028
  %363 = load i8*, i8** %362, align 8, !dbg !1029
  %364 = getelementptr inbounds i8, i8* %363, i64 28, !dbg !1029
  store i8* %364, i8** %362, align 8, !dbg !1029
  %365 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1030
  %366 = getelementptr inbounds %struct.stream, %struct.stream* %365, i32 0, i32 0, !dbg !1032
  %367 = load i8*, i8** %366, align 8, !dbg !1032
  %368 = bitcast i8* %367 to i32*, !dbg !1033
  %369 = load i32, i32* %368, align 4, !dbg !1033
  store i32 %369, i32* %10, align 4, !dbg !1034
  %370 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !1035
  %371 = getelementptr inbounds %struct.stream, %struct.stream* %370, i32 0, i32 0, !dbg !1036
  %372 = load i8*, i8** %371, align 8, !dbg !1037
  %373 = getelementptr inbounds i8, i8* %372, i64 4, !dbg !1037
  store i8* %373, i8** %371, align 8, !dbg !1037
  %374 = load %struct.fileinfo*, %struct.fileinfo** %16, align 8, !dbg !1038
  %375 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %374, i32 0, i32 3, !dbg !1040
  %376 = getelementptr inbounds [4096 x i8], [4096 x i8]* %375, i32 0, i32 0, !dbg !1038
  %377 = call i32 @statvfs(i8* %376, %struct.statvfs* %24) #8, !dbg !1041
  %378 = icmp eq i32 %377, 0, !dbg !1042
  br i1 %378, label %379, label %390, !dbg !1043

; <label>:379:                                    ; preds = %360
  %380 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %24, i32 0, i32 3, !dbg !1044
  %381 = load i64, i64* %380, align 8, !dbg !1044
  %382 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %24, i32 0, i32 0, !dbg !1046
  %383 = load i64, i64* %382, align 8, !dbg !1046
  %384 = mul i64 %381, %383, !dbg !1047
  %385 = load i32, i32* %10, align 4, !dbg !1048
  %386 = zext i32 %385 to i64, !dbg !1048
  %387 = icmp ult i64 %384, %386, !dbg !1049
  br i1 %387, label %388, label %389, !dbg !1050

; <label>:388:                                    ; preds = %379
  store i32 -1073741697, i32* %5, align 4, !dbg !1051
  br label %401, !dbg !1051

; <label>:389:                                    ; preds = %379
  br label %390, !dbg !1052

; <label>:390:                                    ; preds = %389, %360
  %391 = load i32, i32* %6, align 4, !dbg !1054
  %392 = load i32, i32* %10, align 4, !dbg !1056
  %393 = zext i32 %392 to i64, !dbg !1056
  %394 = call i32 @ftruncate_growable(i32 %391, i64 %393), !dbg !1057
  %395 = icmp ne i32 %394, 0, !dbg !1058
  br i1 %395, label %396, label %397, !dbg !1059

; <label>:396:                                    ; preds = %390
  store i32 -1073741697, i32* %5, align 4, !dbg !1060
  br label %401, !dbg !1060

; <label>:397:                                    ; preds = %390
  br label %400, !dbg !1062

; <label>:398:                                    ; preds = %4
  %399 = load i32, i32* %7, align 4, !dbg !1063
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i32 0, i32 0), i32 %399), !dbg !1064
  store i32 -1073741811, i32* %5, align 4, !dbg !1065
  br label %401, !dbg !1065

; <label>:400:                                    ; preds = %397, %359, %308, %253, %231
  store i32 0, i32* %5, align 4, !dbg !1066
  br label %401, !dbg !1066

; <label>:401:                                    ; preds = %400, %398, %396, %388, %349, %304, %284, %278, %252, %226, %157
  %402 = load i32, i32* %5, align 4, !dbg !1067
  ret i32 %402, !dbg !1067
}

; Function Attrs: nounwind uwtable
define internal i64 @convert_1970_to_filetime(i32, i32) #0 !dbg !1068 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1071, metadata !160), !dbg !1072
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1073, metadata !160), !dbg !1074
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1075, metadata !160), !dbg !1076
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1077, metadata !160), !dbg !1078
  %7 = load i32, i32* %4, align 4, !dbg !1079
  %8 = zext i32 %7 to i64, !dbg !1079
  %9 = load i32, i32* %3, align 4, !dbg !1080
  %10 = zext i32 %9 to i64, !dbg !1081
  %11 = shl i64 %10, 32, !dbg !1082
  %12 = add i64 %8, %11, !dbg !1083
  store i64 %12, i64* %5, align 8, !dbg !1084
  %13 = load i64, i64* %5, align 8, !dbg !1085
  %14 = udiv i64 %13, 10000000, !dbg !1085
  store i64 %14, i64* %5, align 8, !dbg !1085
  %15 = load i64, i64* %5, align 8, !dbg !1086
  %16 = sub i64 %15, 11644473600, !dbg !1086
  store i64 %16, i64* %5, align 8, !dbg !1086
  %17 = load i64, i64* %5, align 8, !dbg !1087
  store i64 %17, i64* %6, align 8, !dbg !1088
  %18 = load i64, i64* %6, align 8, !dbg !1089
  ret i64 %18, !dbg !1090
}

; Function Attrs: nounwind
declare i8* @ctime(i64*) #4

; Function Attrs: nounwind
declare i32 @utime(i8*, %struct.utimbuf*) #4

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #4

declare void @rdp_in_unistr(%struct.stream*, i32, i8**, i32*) #2

declare void @convert_to_unix_filename(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #4

declare %struct.__dirstream* @opendir(i8*) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: nounwind
declare i32 @statvfs(i8*, %struct.statvfs*) #4

; Function Attrs: nounwind uwtable
define internal i32 @ftruncate_growable(i32, i64) #0 !dbg !134 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1091, metadata !160), !dbg !1092
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1093, metadata !160), !dbg !1094
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1095, metadata !160), !dbg !1096
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1097, metadata !160), !dbg !1098
  %8 = load i32, i32* %4, align 4, !dbg !1099
  %9 = load i64, i64* %5, align 8, !dbg !1101
  %10 = call i32 @ftruncate(i32 %8, i64 %9) #8, !dbg !1102
  store i32 %10, i32* %6, align 4, !dbg !1103
  %11 = icmp ne i32 %10, -1, !dbg !1104
  br i1 %11, label %12, label %14, !dbg !1105

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %6, align 4, !dbg !1106
  store i32 %13, i32* %3, align 4, !dbg !1108
  br label %58, !dbg !1108

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %4, align 4, !dbg !1109
  %16 = call i64 @lseek(i32 %15, i64 0, i32 1) #8, !dbg !1111
  store i64 %16, i64* %7, align 8, !dbg !1112
  %17 = icmp eq i64 %16, -1, !dbg !1113
  br i1 %17, label %18, label %22, !dbg !1114

; <label>:18:                                     ; preds = %14
  %19 = call i32* @__errno_location() #1, !dbg !1115
  %20 = load i32, i32* %19, align 4, !dbg !1117
  %21 = call i8* @strerror(i32 %20) #8, !dbg !1118
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* %21), !dbg !1120
  store i32 -1, i32* %3, align 4, !dbg !1122
  br label %58, !dbg !1122

; <label>:22:                                     ; preds = %14
  %23 = load i32, i32* %4, align 4, !dbg !1123
  %24 = load i64, i64* %5, align 8, !dbg !1125
  %25 = call i64 @lseek(i32 %23, i64 %24, i32 0) #8, !dbg !1126
  %26 = icmp eq i64 %25, -1, !dbg !1127
  br i1 %26, label %27, label %31, !dbg !1128

; <label>:27:                                     ; preds = %22
  %28 = call i32* @__errno_location() #1, !dbg !1129
  %29 = load i32, i32* %28, align 4, !dbg !1131
  %30 = call i8* @strerror(i32 %29) #8, !dbg !1132
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* %30), !dbg !1134
  store i32 -1, i32* %3, align 4, !dbg !1136
  br label %58, !dbg !1136

; <label>:31:                                     ; preds = %22
  %32 = load i32, i32* %4, align 4, !dbg !1137
  %33 = call i64 @write(i32 %32, i8* @ftruncate_growable.zero, i64 1), !dbg !1139
  %34 = icmp eq i64 %33, -1, !dbg !1140
  br i1 %34, label %35, label %39, !dbg !1141

; <label>:35:                                     ; preds = %31
  %36 = call i32* @__errno_location() #1, !dbg !1142
  %37 = load i32, i32* %36, align 4, !dbg !1144
  %38 = call i8* @strerror(i32 %37) #8, !dbg !1145
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0), i8* %38), !dbg !1147
  store i32 -1, i32* %3, align 4, !dbg !1149
  br label %58, !dbg !1149

; <label>:39:                                     ; preds = %31
  %40 = load i32, i32* %4, align 4, !dbg !1150
  %41 = load i64, i64* %5, align 8, !dbg !1152
  %42 = call i32 @ftruncate(i32 %40, i64 %41) #8, !dbg !1153
  %43 = icmp eq i32 %42, -1, !dbg !1154
  br i1 %43, label %44, label %48, !dbg !1155

; <label>:44:                                     ; preds = %39
  %45 = call i32* @__errno_location() #1, !dbg !1156
  %46 = load i32, i32* %45, align 4, !dbg !1158
  %47 = call i8* @strerror(i32 %46) #8, !dbg !1159
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i8* %47), !dbg !1161
  store i32 -1, i32* %3, align 4, !dbg !1162
  br label %58, !dbg !1162

; <label>:48:                                     ; preds = %39
  %49 = load i32, i32* %4, align 4, !dbg !1163
  %50 = load i64, i64* %7, align 8, !dbg !1165
  %51 = call i64 @lseek(i32 %49, i64 %50, i32 0) #8, !dbg !1166
  %52 = icmp eq i64 %51, -1, !dbg !1167
  br i1 %52, label %53, label %57, !dbg !1168

; <label>:53:                                     ; preds = %48
  %54 = call i32* @__errno_location() #1, !dbg !1169
  %55 = load i32, i32* %54, align 4, !dbg !1171
  %56 = call i8* @strerror(i32 %55) #8, !dbg !1172
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* %56), !dbg !1174
  store i32 -1, i32* %3, align 4, !dbg !1176
  br label %58, !dbg !1176

; <label>:57:                                     ; preds = %48
  store i32 0, i32* %3, align 4, !dbg !1177
  br label %58, !dbg !1177

; <label>:58:                                     ; preds = %57, %53, %44, %35, %27, %18, %12
  %59 = load i32, i32* %3, align 4, !dbg !1178
  ret i32 %59, !dbg !1178
}

; Function Attrs: nounwind uwtable
define i32 @disk_check_notify(i32) #0 !dbg !1179 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fileinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.notify_data, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1180, metadata !160), !dbg !1181
  call void @llvm.dbg.declare(metadata %struct.fileinfo** %4, metadata !1182, metadata !160), !dbg !1183
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1184, metadata !160), !dbg !1185
  store i32 259, i32* %5, align 4, !dbg !1185
  call void @llvm.dbg.declare(metadata %struct.notify_data* %6, metadata !1186, metadata !160), !dbg !1187
  %7 = load i32, i32* %3, align 4, !dbg !1188
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i32 %7), !dbg !1189
  %8 = load i32, i32* %3, align 4, !dbg !1190
  %9 = zext i32 %8 to i64, !dbg !1191
  %10 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %9, !dbg !1191
  store %struct.fileinfo* %10, %struct.fileinfo** %4, align 8, !dbg !1192
  %11 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !1193
  %12 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %11, i32 0, i32 4, !dbg !1195
  %13 = load %struct.__dirstream*, %struct.__dirstream** %12, align 8, !dbg !1195
  %14 = icmp ne %struct.__dirstream* %13, null, !dbg !1193
  br i1 %14, label %16, label %15, !dbg !1196

; <label>:15:                                     ; preds = %1
  store i32 -1073741808, i32* %2, align 4, !dbg !1197
  br label %40, !dbg !1197

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %3, align 4, !dbg !1198
  %18 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !1199
  %19 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %18, i32 0, i32 9, !dbg !1200
  %20 = load i32, i32* %19, align 8, !dbg !1200
  %21 = call i32 @NotifyInfo(i32 %17, i32 %20, %struct.notify_data* %6), !dbg !1201
  store i32 %21, i32* %5, align 4, !dbg !1202
  %22 = load i32, i32* %5, align 4, !dbg !1203
  %23 = icmp ne i32 %22, 259, !dbg !1205
  br i1 %23, label %24, label %26, !dbg !1206

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %5, align 4, !dbg !1207
  store i32 %25, i32* %2, align 4, !dbg !1208
  br label %40, !dbg !1208

; <label>:26:                                     ; preds = %16
  %27 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !1209
  %28 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %27, i32 0, i32 8, !dbg !1211
  %29 = bitcast %struct.notify_data* %28 to i8*, !dbg !1212
  %30 = bitcast %struct.notify_data* %6 to i8*, !dbg !1213
  %31 = call i32 @memcmp(i8* %29, i8* %30, i64 32) #9, !dbg !1214
  %32 = icmp ne i32 %31, 0, !dbg !1214
  br i1 %32, label %33, label %38, !dbg !1215

; <label>:33:                                     ; preds = %26
  %34 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !1216
  %35 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %34, i32 0, i32 8, !dbg !1218
  %36 = bitcast %struct.notify_data* %35 to i8*, !dbg !1219
  %37 = bitcast %struct.notify_data* %6 to i8*, !dbg !1219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false), !dbg !1219
  store i32 -1073741556, i32* %5, align 4, !dbg !1220
  br label %38, !dbg !1221

; <label>:38:                                     ; preds = %33, %26
  %39 = load i32, i32* %5, align 4, !dbg !1222
  store i32 %39, i32* %2, align 4, !dbg !1223
  br label %40, !dbg !1223

; <label>:40:                                     ; preds = %38, %24, %15
  %41 = load i32, i32* %2, align 4, !dbg !1224
  ret i32 %41, !dbg !1224
}

; Function Attrs: nounwind uwtable
define internal i32 @NotifyInfo(i32, i32, %struct.notify_data*) #0 !dbg !1225 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.notify_data*, align 8
  %8 = alloca %struct.fileinfo*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.__dirstream*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1229, metadata !160), !dbg !1230
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1231, metadata !160), !dbg !1232
  store %struct.notify_data* %2, %struct.notify_data** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.notify_data** %7, metadata !1233, metadata !160), !dbg !1234
  %13 = load i32, i32* %6, align 4, !dbg !1235
  call void @llvm.dbg.declare(metadata %struct.fileinfo** %8, metadata !1236, metadata !160), !dbg !1237
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !1238, metadata !160), !dbg !1239
  call void @llvm.dbg.declare(metadata %struct.dirent** %10, metadata !1240, metadata !160), !dbg !1241
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1242, metadata !160), !dbg !1243
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %12, metadata !1244, metadata !160), !dbg !1245
  %14 = load i32, i32* %5, align 4, !dbg !1246
  %15 = zext i32 %14 to i64, !dbg !1247
  %16 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %15, !dbg !1247
  store %struct.fileinfo* %16, %struct.fileinfo** %8, align 8, !dbg !1248
  %17 = load i32, i32* %5, align 4, !dbg !1249
  %18 = call i32 @fstat(i32 %17, %struct.stat* %9) #8, !dbg !1251
  %19 = icmp slt i32 %18, 0, !dbg !1252
  br i1 %19, label %20, label %24, !dbg !1253

; <label>:20:                                     ; preds = %3
  %21 = call i32* @__errno_location() #1, !dbg !1254
  %22 = load i32, i32* %21, align 4, !dbg !1256
  %23 = call i8* @strerror(i32 %22) #8, !dbg !1257
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0), i8* %23), !dbg !1259
  store i32 -1073741790, i32* %4, align 4, !dbg !1261
  br label %112, !dbg !1261

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 12, !dbg !1262
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 0, !dbg !1263
  %27 = load i64, i64* %26, align 8, !dbg !1263
  %28 = load %struct.notify_data*, %struct.notify_data** %7, align 8, !dbg !1264
  %29 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %28, i32 0, i32 0, !dbg !1265
  store i64 %27, i64* %29, align 8, !dbg !1266
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 13, !dbg !1267
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 0, !dbg !1268
  %32 = load i64, i64* %31, align 8, !dbg !1268
  %33 = load %struct.notify_data*, %struct.notify_data** %7, align 8, !dbg !1269
  %34 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %33, i32 0, i32 1, !dbg !1270
  store i64 %32, i64* %34, align 8, !dbg !1271
  %35 = load %struct.notify_data*, %struct.notify_data** %7, align 8, !dbg !1272
  %36 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %35, i32 0, i32 3, !dbg !1273
  store i32 0, i32* %36, align 8, !dbg !1274
  %37 = load %struct.notify_data*, %struct.notify_data** %7, align 8, !dbg !1275
  %38 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %37, i32 0, i32 2, !dbg !1276
  store i64 0, i64* %38, align 8, !dbg !1277
  %39 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8, !dbg !1278
  %40 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %39, i32 0, i32 3, !dbg !1279
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %40, i32 0, i32 0, !dbg !1278
  %42 = call %struct.__dirstream* @opendir(i8* %41), !dbg !1280
  store %struct.__dirstream* %42, %struct.__dirstream** %12, align 8, !dbg !1281
  %43 = load %struct.__dirstream*, %struct.__dirstream** %12, align 8, !dbg !1282
  %44 = icmp ne %struct.__dirstream* %43, null, !dbg !1282
  br i1 %44, label %49, label %45, !dbg !1284

; <label>:45:                                     ; preds = %24
  %46 = call i32* @__errno_location() #1, !dbg !1285
  %47 = load i32, i32* %46, align 4, !dbg !1287
  %48 = call i8* @strerror(i32 %47) #8, !dbg !1288
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i8* %48), !dbg !1290
  store i32 -1073741790, i32* %4, align 4, !dbg !1292
  br label %112, !dbg !1292

; <label>:49:                                     ; preds = %24
  br label %50, !dbg !1293

; <label>:50:                                     ; preds = %107, %66, %49
  %51 = load %struct.__dirstream*, %struct.__dirstream** %12, align 8, !dbg !1294
  %52 = call %struct.dirent* @readdir(%struct.__dirstream* %51), !dbg !1296
  store %struct.dirent* %52, %struct.dirent** %10, align 8, !dbg !1297
  %53 = icmp ne %struct.dirent* %52, null, !dbg !1298
  br i1 %53, label %54, label %109, !dbg !1298

; <label>:54:                                     ; preds = %50
  %55 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !1299
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 4, !dbg !1302
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %56, i32 0, i32 0, !dbg !1299
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #9, !dbg !1303
  %59 = icmp ne i32 %58, 0, !dbg !1303
  br i1 %59, label %60, label %66, !dbg !1304

; <label>:60:                                     ; preds = %54
  %61 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !1305
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 4, !dbg !1307
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %62, i32 0, i32 0, !dbg !1305
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !1308
  %65 = icmp ne i32 %64, 0, !dbg !1308
  br i1 %65, label %67, label %66, !dbg !1309

; <label>:66:                                     ; preds = %60, %54
  br label %50, !dbg !1310, !llvm.loop !1311

; <label>:67:                                     ; preds = %60
  %68 = load %struct.notify_data*, %struct.notify_data** %7, align 8, !dbg !1312
  %69 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %68, i32 0, i32 3, !dbg !1313
  %70 = load i32, i32* %69, align 8, !dbg !1314
  %71 = add i32 %70, 1, !dbg !1314
  store i32 %71, i32* %69, align 8, !dbg !1314
  %72 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8, !dbg !1315
  %73 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %72, i32 0, i32 3, !dbg !1316
  %74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %73, i32 0, i32 0, !dbg !1315
  %75 = call i64 @strlen(i8* %74) #9, !dbg !1317
  %76 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !1318
  %77 = getelementptr inbounds %struct.dirent, %struct.dirent* %76, i32 0, i32 4, !dbg !1319
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %77, i32 0, i32 0, !dbg !1318
  %79 = call i64 @strlen(i8* %78) #9, !dbg !1320
  %80 = add i64 %75, %79, !dbg !1322
  %81 = add i64 %80, 2, !dbg !1323
  %82 = trunc i64 %81 to i32, !dbg !1317
  %83 = call i8* @xmalloc(i32 %82), !dbg !1324
  store i8* %83, i8** %11, align 8, !dbg !1326
  %84 = load i8*, i8** %11, align 8, !dbg !1327
  %85 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8, !dbg !1328
  %86 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %85, i32 0, i32 3, !dbg !1329
  %87 = getelementptr inbounds [4096 x i8], [4096 x i8]* %86, i32 0, i32 0, !dbg !1328
  %88 = load %struct.dirent*, %struct.dirent** %10, align 8, !dbg !1330
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 4, !dbg !1331
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %89, i32 0, i32 0, !dbg !1330
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %87, i8* %90) #8, !dbg !1332
  %92 = load i8*, i8** %11, align 8, !dbg !1333
  %93 = call i32 @stat(i8* %92, %struct.stat* %9) #8, !dbg !1335
  %94 = icmp ne i32 %93, 0, !dbg !1335
  br i1 %94, label %107, label %95, !dbg !1336

; <label>:95:                                     ; preds = %67
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 12, !dbg !1337
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %96, i32 0, i32 0, !dbg !1339
  %98 = load i64, i64* %97, align 8, !dbg !1339
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 13, !dbg !1340
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %99, i32 0, i32 0, !dbg !1341
  %101 = load i64, i64* %100, align 8, !dbg !1341
  %102 = add nsw i64 %98, %101, !dbg !1342
  %103 = load %struct.notify_data*, %struct.notify_data** %7, align 8, !dbg !1343
  %104 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %103, i32 0, i32 2, !dbg !1344
  %105 = load i64, i64* %104, align 8, !dbg !1345
  %106 = add nsw i64 %105, %102, !dbg !1345
  store i64 %106, i64* %104, align 8, !dbg !1345
  br label %107, !dbg !1346

; <label>:107:                                    ; preds = %95, %67
  %108 = load i8*, i8** %11, align 8, !dbg !1347
  call void @xfree(i8* %108), !dbg !1348
  br label %50, !dbg !1349, !llvm.loop !1311

; <label>:109:                                    ; preds = %50
  %110 = load %struct.__dirstream*, %struct.__dirstream** %12, align 8, !dbg !1351
  %111 = call i32 @closedir(%struct.__dirstream* %110), !dbg !1352
  store i32 259, i32* %4, align 4, !dbg !1353
  br label %112, !dbg !1353

; <label>:112:                                    ; preds = %109, %45, %20
  %113 = load i32, i32* %4, align 4, !dbg !1354
  ret i32 %113, !dbg !1354
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @disk_create_notify(i32, i32) #0 !dbg !1355 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileinfo*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1358, metadata !160), !dbg !1359
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1360, metadata !160), !dbg !1361
  call void @llvm.dbg.declare(metadata %struct.fileinfo** %6, metadata !1362, metadata !160), !dbg !1363
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1364, metadata !160), !dbg !1365
  store i32 259, i32* %7, align 4, !dbg !1365
  %8 = load i32, i32* %4, align 4, !dbg !1366
  %9 = load i32, i32* %5, align 4, !dbg !1367
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0), i32 %8, i32 %9), !dbg !1368
  %10 = load i32, i32* %4, align 4, !dbg !1369
  %11 = zext i32 %10 to i64, !dbg !1370
  %12 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %11, !dbg !1370
  store %struct.fileinfo* %12, %struct.fileinfo** %6, align 8, !dbg !1371
  %13 = load i32, i32* %5, align 4, !dbg !1372
  %14 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8, !dbg !1373
  %15 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %14, i32 0, i32 9, !dbg !1374
  store i32 %13, i32* %15, align 8, !dbg !1375
  %16 = load i32, i32* %4, align 4, !dbg !1376
  %17 = load i32, i32* %5, align 4, !dbg !1377
  %18 = load %struct.fileinfo*, %struct.fileinfo** %6, align 8, !dbg !1378
  %19 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %18, i32 0, i32 8, !dbg !1379
  %20 = call i32 @NotifyInfo(i32 %16, i32 %17, %struct.notify_data* %19), !dbg !1380
  store i32 %20, i32* %7, align 4, !dbg !1381
  %21 = load i32, i32* %5, align 4, !dbg !1382
  %22 = and i32 %21, 4096, !dbg !1384
  %23 = icmp ne i32 %22, 0, !dbg !1384
  br i1 %23, label %24, label %29, !dbg !1385

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %7, align 4, !dbg !1386
  %26 = icmp eq i32 %25, 259, !dbg !1389
  br i1 %26, label %27, label %28, !dbg !1390

; <label>:27:                                     ; preds = %24
  store i32 0, i32* %3, align 4, !dbg !1391
  br label %31, !dbg !1391

; <label>:28:                                     ; preds = %24
  br label %29, !dbg !1392

; <label>:29:                                     ; preds = %28, %2
  %30 = load i32, i32* %7, align 4, !dbg !1393
  store i32 %30, i32* %3, align 4, !dbg !1394
  br label %31, !dbg !1394

; <label>:31:                                     ; preds = %29, %27
  %32 = load i32, i32* %3, align 4, !dbg !1395
  ret i32 %32, !dbg !1395
}

; Function Attrs: nounwind uwtable
define i32 @disk_query_volume_information(i32, i32, %struct.stream*) #0 !dbg !1396 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream*, align 8
  %8 = alloca %struct.statvfs, align 8
  %9 = alloca %struct.fileinfo*, align 8
  %10 = alloca %struct.FsInfoType*, align 8
  %11 = alloca %struct.stream, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1397, metadata !160), !dbg !1398
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1399, metadata !160), !dbg !1400
  store %struct.stream* %2, %struct.stream** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %7, metadata !1401, metadata !160), !dbg !1402
  call void @llvm.dbg.declare(metadata %struct.statvfs* %8, metadata !1403, metadata !160), !dbg !1404
  call void @llvm.dbg.declare(metadata %struct.fileinfo** %9, metadata !1405, metadata !160), !dbg !1406
  call void @llvm.dbg.declare(metadata %struct.FsInfoType** %10, metadata !1407, metadata !160), !dbg !1408
  call void @llvm.dbg.declare(metadata %struct.stream* %11, metadata !1409, metadata !160), !dbg !1410
  %12 = bitcast %struct.stream* %11 to i8*, !dbg !1411
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 72, i32 8, i1 false), !dbg !1411
  call void @s_realloc(%struct.stream* %11, i32 16384), !dbg !1412
  %13 = load i32, i32* %5, align 4, !dbg !1413
  %14 = load i32, i32* %6, align 4, !dbg !1414
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i32 %13, i32 %14), !dbg !1415
  %15 = load i32, i32* %5, align 4, !dbg !1416
  %16 = zext i32 %15 to i64, !dbg !1417
  %17 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %16, !dbg !1417
  store %struct.fileinfo* %17, %struct.fileinfo** %9, align 8, !dbg !1418
  %18 = load %struct.fileinfo*, %struct.fileinfo** %9, align 8, !dbg !1419
  %19 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %18, i32 0, i32 3, !dbg !1421
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0, !dbg !1419
  %21 = call i32 @statvfs(i8* %20, %struct.statvfs* %8) #8, !dbg !1422
  %22 = icmp ne i32 %21, 0, !dbg !1423
  br i1 %22, label %23, label %27, !dbg !1424

; <label>:23:                                     ; preds = %3
  %24 = call i32* @__errno_location() #1, !dbg !1425
  %25 = load i32, i32* %24, align 4, !dbg !1427
  %26 = call i8* @strerror(i32 %25) #8, !dbg !1428
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0), i8* %26), !dbg !1430
  store i32 -1073741790, i32* %4, align 4, !dbg !1431
  br label %347, !dbg !1431

; <label>:27:                                     ; preds = %3
  %28 = load %struct.fileinfo*, %struct.fileinfo** %9, align 8, !dbg !1432
  %29 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %28, i32 0, i32 3, !dbg !1433
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %29, i32 0, i32 0, !dbg !1432
  %31 = call %struct.FsInfoType* @FsVolumeInfo(i8* %30), !dbg !1434
  store %struct.FsInfoType* %31, %struct.FsInfoType** %10, align 8, !dbg !1435
  %32 = load i32, i32* %6, align 4, !dbg !1436
  switch i32 %32, label %344 [
    i32 1, label %33
    i32 3, label %111
    i32 7, label %182
    i32 5, label %278
    i32 2, label %343
    i32 4, label %343
    i32 6, label %343
    i32 8, label %343
    i32 10, label %343
  ], !dbg !1437

; <label>:33:                                     ; preds = %27
  call void @s_reset(%struct.stream* %11), !dbg !1438
  %34 = load %struct.FsInfoType*, %struct.FsInfoType** %10, align 8, !dbg !1440
  %35 = getelementptr inbounds %struct.FsInfoType, %struct.FsInfoType* %34, i32 0, i32 1, !dbg !1441
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %35, i32 0, i32 0, !dbg !1440
  call void @out_utf16s(%struct.stream* %11, i8* %36), !dbg !1442
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !1443
  %38 = load i8*, i8** %37, align 8, !dbg !1443
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1444
  store i8* %38, i8** %39, align 8, !dbg !1445
  %40 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1446
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !1448
  %42 = load i8*, i8** %41, align 8, !dbg !1448
  %43 = bitcast i8* %42 to i32*, !dbg !1449
  store i32 0, i32* %43, align 4, !dbg !1450
  %44 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1451
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !1452
  %46 = load i8*, i8** %45, align 8, !dbg !1453
  %47 = getelementptr inbounds i8, i8* %46, i64 4, !dbg !1453
  store i8* %47, i8** %45, align 8, !dbg !1453
  %48 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1454
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !1456
  %50 = load i8*, i8** %49, align 8, !dbg !1456
  %51 = bitcast i8* %50 to i32*, !dbg !1457
  store i32 0, i32* %51, align 4, !dbg !1458
  %52 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1459
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !1460
  %54 = load i8*, i8** %53, align 8, !dbg !1461
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !1461
  store i8* %55, i8** %53, align 8, !dbg !1461
  %56 = load %struct.FsInfoType*, %struct.FsInfoType** %10, align 8, !dbg !1462
  %57 = getelementptr inbounds %struct.FsInfoType, %struct.FsInfoType* %56, i32 0, i32 2, !dbg !1464
  %58 = load i64, i64* %57, align 8, !dbg !1464
  %59 = trunc i64 %58 to i32, !dbg !1462
  %60 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1465
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !1466
  %62 = load i8*, i8** %61, align 8, !dbg !1466
  %63 = bitcast i8* %62 to i32*, !dbg !1467
  store i32 %59, i32* %63, align 4, !dbg !1468
  %64 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1469
  %65 = getelementptr inbounds %struct.stream, %struct.stream* %64, i32 0, i32 0, !dbg !1470
  %66 = load i8*, i8** %65, align 8, !dbg !1471
  %67 = getelementptr inbounds i8, i8* %66, i64 4, !dbg !1471
  store i8* %67, i8** %65, align 8, !dbg !1471
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1472
  %69 = load i8*, i8** %68, align 8, !dbg !1472
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1474
  %71 = load i8*, i8** %70, align 8, !dbg !1474
  %72 = ptrtoint i8* %69 to i64, !dbg !1475
  %73 = ptrtoint i8* %71 to i64, !dbg !1475
  %74 = sub i64 %72, %73, !dbg !1475
  %75 = trunc i64 %74 to i32, !dbg !1476
  %76 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1477
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 0, !dbg !1478
  %78 = load i8*, i8** %77, align 8, !dbg !1478
  %79 = bitcast i8* %78 to i32*, !dbg !1479
  store i32 %75, i32* %79, align 4, !dbg !1480
  %80 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1481
  %81 = getelementptr inbounds %struct.stream, %struct.stream* %80, i32 0, i32 0, !dbg !1482
  %82 = load i8*, i8** %81, align 8, !dbg !1483
  %83 = getelementptr inbounds i8, i8* %82, i64 4, !dbg !1483
  store i8* %83, i8** %81, align 8, !dbg !1483
  %84 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1484
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0, !dbg !1485
  %86 = load i8*, i8** %85, align 8, !dbg !1486
  %87 = getelementptr inbounds i8, i8* %86, i32 1, !dbg !1486
  store i8* %87, i8** %85, align 8, !dbg !1486
  store i8 0, i8* %86, align 1, !dbg !1487
  %88 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1488
  %89 = getelementptr inbounds %struct.stream, %struct.stream* %88, i32 0, i32 0, !dbg !1490
  %90 = load i8*, i8** %89, align 8, !dbg !1490
  %91 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1491
  %92 = load i8*, i8** %91, align 8, !dbg !1491
  %93 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1492
  %94 = load i8*, i8** %93, align 8, !dbg !1492
  %95 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1493
  %96 = load i8*, i8** %95, align 8, !dbg !1493
  %97 = ptrtoint i8* %94 to i64, !dbg !1494
  %98 = ptrtoint i8* %96 to i64, !dbg !1494
  %99 = sub i64 %97, %98, !dbg !1494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %92, i64 %99, i32 1, i1 false), !dbg !1495
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1496
  %101 = load i8*, i8** %100, align 8, !dbg !1496
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1497
  %103 = load i8*, i8** %102, align 8, !dbg !1497
  %104 = ptrtoint i8* %101 to i64, !dbg !1498
  %105 = ptrtoint i8* %103 to i64, !dbg !1498
  %106 = sub i64 %104, %105, !dbg !1498
  %107 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1499
  %108 = getelementptr inbounds %struct.stream, %struct.stream* %107, i32 0, i32 0, !dbg !1500
  %109 = load i8*, i8** %108, align 8, !dbg !1501
  %110 = getelementptr inbounds i8, i8* %109, i64 %106, !dbg !1501
  store i8* %110, i8** %108, align 8, !dbg !1501
  br label %346, !dbg !1502

; <label>:111:                                    ; preds = %27
  %112 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 2, !dbg !1503
  %113 = load i64, i64* %112, align 8, !dbg !1503
  %114 = and i64 %113, 4294967295, !dbg !1506
  %115 = trunc i64 %114 to i32, !dbg !1507
  %116 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1508
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 0, !dbg !1509
  %118 = load i8*, i8** %117, align 8, !dbg !1509
  %119 = bitcast i8* %118 to i32*, !dbg !1510
  store i32 %115, i32* %119, align 4, !dbg !1511
  %120 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1512
  %121 = getelementptr inbounds %struct.stream, %struct.stream* %120, i32 0, i32 0, !dbg !1513
  %122 = load i8*, i8** %121, align 8, !dbg !1514
  %123 = getelementptr inbounds i8, i8* %122, i64 4, !dbg !1514
  store i8* %123, i8** %121, align 8, !dbg !1514
  %124 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 2, !dbg !1515
  %125 = load i64, i64* %124, align 8, !dbg !1515
  %126 = lshr i64 %125, 32, !dbg !1517
  %127 = and i64 %126, 4294967295, !dbg !1518
  %128 = trunc i64 %127 to i32, !dbg !1519
  %129 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1520
  %130 = getelementptr inbounds %struct.stream, %struct.stream* %129, i32 0, i32 0, !dbg !1521
  %131 = load i8*, i8** %130, align 8, !dbg !1521
  %132 = bitcast i8* %131 to i32*, !dbg !1522
  store i32 %128, i32* %132, align 4, !dbg !1523
  %133 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1524
  %134 = getelementptr inbounds %struct.stream, %struct.stream* %133, i32 0, i32 0, !dbg !1525
  %135 = load i8*, i8** %134, align 8, !dbg !1526
  %136 = getelementptr inbounds i8, i8* %135, i64 4, !dbg !1526
  store i8* %136, i8** %134, align 8, !dbg !1526
  %137 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 3, !dbg !1527
  %138 = load i64, i64* %137, align 8, !dbg !1527
  %139 = and i64 %138, 4294967295, !dbg !1530
  %140 = trunc i64 %139 to i32, !dbg !1531
  %141 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1532
  %142 = getelementptr inbounds %struct.stream, %struct.stream* %141, i32 0, i32 0, !dbg !1533
  %143 = load i8*, i8** %142, align 8, !dbg !1533
  %144 = bitcast i8* %143 to i32*, !dbg !1534
  store i32 %140, i32* %144, align 4, !dbg !1535
  %145 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1536
  %146 = getelementptr inbounds %struct.stream, %struct.stream* %145, i32 0, i32 0, !dbg !1537
  %147 = load i8*, i8** %146, align 8, !dbg !1538
  %148 = getelementptr inbounds i8, i8* %147, i64 4, !dbg !1538
  store i8* %148, i8** %146, align 8, !dbg !1538
  %149 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 3, !dbg !1539
  %150 = load i64, i64* %149, align 8, !dbg !1539
  %151 = lshr i64 %150, 32, !dbg !1541
  %152 = and i64 %151, 4294967295, !dbg !1542
  %153 = trunc i64 %152 to i32, !dbg !1543
  %154 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1544
  %155 = getelementptr inbounds %struct.stream, %struct.stream* %154, i32 0, i32 0, !dbg !1545
  %156 = load i8*, i8** %155, align 8, !dbg !1545
  %157 = bitcast i8* %156 to i32*, !dbg !1546
  store i32 %153, i32* %157, align 4, !dbg !1547
  %158 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1548
  %159 = getelementptr inbounds %struct.stream, %struct.stream* %158, i32 0, i32 0, !dbg !1549
  %160 = load i8*, i8** %159, align 8, !dbg !1550
  %161 = getelementptr inbounds i8, i8* %160, i64 4, !dbg !1550
  store i8* %161, i8** %159, align 8, !dbg !1550
  %162 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 0, !dbg !1551
  %163 = load i64, i64* %162, align 8, !dbg !1551
  %164 = udiv i64 %163, 512, !dbg !1553
  %165 = trunc i64 %164 to i32, !dbg !1554
  %166 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1555
  %167 = getelementptr inbounds %struct.stream, %struct.stream* %166, i32 0, i32 0, !dbg !1556
  %168 = load i8*, i8** %167, align 8, !dbg !1556
  %169 = bitcast i8* %168 to i32*, !dbg !1557
  store i32 %165, i32* %169, align 4, !dbg !1558
  %170 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1559
  %171 = getelementptr inbounds %struct.stream, %struct.stream* %170, i32 0, i32 0, !dbg !1560
  %172 = load i8*, i8** %171, align 8, !dbg !1561
  %173 = getelementptr inbounds i8, i8* %172, i64 4, !dbg !1561
  store i8* %173, i8** %171, align 8, !dbg !1561
  %174 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1562
  %175 = getelementptr inbounds %struct.stream, %struct.stream* %174, i32 0, i32 0, !dbg !1564
  %176 = load i8*, i8** %175, align 8, !dbg !1564
  %177 = bitcast i8* %176 to i32*, !dbg !1565
  store i32 512, i32* %177, align 4, !dbg !1566
  %178 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1567
  %179 = getelementptr inbounds %struct.stream, %struct.stream* %178, i32 0, i32 0, !dbg !1568
  %180 = load i8*, i8** %179, align 8, !dbg !1569
  %181 = getelementptr inbounds i8, i8* %180, i64 4, !dbg !1569
  store i8* %181, i8** %179, align 8, !dbg !1569
  br label %346, !dbg !1570

; <label>:182:                                    ; preds = %27
  %183 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 2, !dbg !1571
  %184 = load i64, i64* %183, align 8, !dbg !1571
  %185 = and i64 %184, 4294967295, !dbg !1574
  %186 = trunc i64 %185 to i32, !dbg !1575
  %187 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1576
  %188 = getelementptr inbounds %struct.stream, %struct.stream* %187, i32 0, i32 0, !dbg !1577
  %189 = load i8*, i8** %188, align 8, !dbg !1577
  %190 = bitcast i8* %189 to i32*, !dbg !1578
  store i32 %186, i32* %190, align 4, !dbg !1579
  %191 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1580
  %192 = getelementptr inbounds %struct.stream, %struct.stream* %191, i32 0, i32 0, !dbg !1581
  %193 = load i8*, i8** %192, align 8, !dbg !1582
  %194 = getelementptr inbounds i8, i8* %193, i64 4, !dbg !1582
  store i8* %194, i8** %192, align 8, !dbg !1582
  %195 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 2, !dbg !1583
  %196 = load i64, i64* %195, align 8, !dbg !1583
  %197 = lshr i64 %196, 32, !dbg !1585
  %198 = and i64 %197, 4294967295, !dbg !1586
  %199 = trunc i64 %198 to i32, !dbg !1587
  %200 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1588
  %201 = getelementptr inbounds %struct.stream, %struct.stream* %200, i32 0, i32 0, !dbg !1589
  %202 = load i8*, i8** %201, align 8, !dbg !1589
  %203 = bitcast i8* %202 to i32*, !dbg !1590
  store i32 %199, i32* %203, align 4, !dbg !1591
  %204 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1592
  %205 = getelementptr inbounds %struct.stream, %struct.stream* %204, i32 0, i32 0, !dbg !1593
  %206 = load i8*, i8** %205, align 8, !dbg !1594
  %207 = getelementptr inbounds i8, i8* %206, i64 4, !dbg !1594
  store i8* %207, i8** %205, align 8, !dbg !1594
  %208 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 4, !dbg !1595
  %209 = load i64, i64* %208, align 8, !dbg !1595
  %210 = and i64 %209, 4294967295, !dbg !1598
  %211 = trunc i64 %210 to i32, !dbg !1599
  %212 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1600
  %213 = getelementptr inbounds %struct.stream, %struct.stream* %212, i32 0, i32 0, !dbg !1601
  %214 = load i8*, i8** %213, align 8, !dbg !1601
  %215 = bitcast i8* %214 to i32*, !dbg !1602
  store i32 %211, i32* %215, align 4, !dbg !1603
  %216 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1604
  %217 = getelementptr inbounds %struct.stream, %struct.stream* %216, i32 0, i32 0, !dbg !1605
  %218 = load i8*, i8** %217, align 8, !dbg !1606
  %219 = getelementptr inbounds i8, i8* %218, i64 4, !dbg !1606
  store i8* %219, i8** %217, align 8, !dbg !1606
  %220 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 4, !dbg !1607
  %221 = load i64, i64* %220, align 8, !dbg !1607
  %222 = lshr i64 %221, 32, !dbg !1609
  %223 = and i64 %222, 4294967295, !dbg !1610
  %224 = trunc i64 %223 to i32, !dbg !1611
  %225 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1612
  %226 = getelementptr inbounds %struct.stream, %struct.stream* %225, i32 0, i32 0, !dbg !1613
  %227 = load i8*, i8** %226, align 8, !dbg !1613
  %228 = bitcast i8* %227 to i32*, !dbg !1614
  store i32 %224, i32* %228, align 4, !dbg !1615
  %229 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1616
  %230 = getelementptr inbounds %struct.stream, %struct.stream* %229, i32 0, i32 0, !dbg !1617
  %231 = load i8*, i8** %230, align 8, !dbg !1618
  %232 = getelementptr inbounds i8, i8* %231, i64 4, !dbg !1618
  store i8* %232, i8** %230, align 8, !dbg !1618
  %233 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 3, !dbg !1619
  %234 = load i64, i64* %233, align 8, !dbg !1619
  %235 = and i64 %234, 4294967295, !dbg !1622
  %236 = trunc i64 %235 to i32, !dbg !1623
  %237 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1624
  %238 = getelementptr inbounds %struct.stream, %struct.stream* %237, i32 0, i32 0, !dbg !1625
  %239 = load i8*, i8** %238, align 8, !dbg !1625
  %240 = bitcast i8* %239 to i32*, !dbg !1626
  store i32 %236, i32* %240, align 4, !dbg !1627
  %241 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1628
  %242 = getelementptr inbounds %struct.stream, %struct.stream* %241, i32 0, i32 0, !dbg !1629
  %243 = load i8*, i8** %242, align 8, !dbg !1630
  %244 = getelementptr inbounds i8, i8* %243, i64 4, !dbg !1630
  store i8* %244, i8** %242, align 8, !dbg !1630
  %245 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 3, !dbg !1631
  %246 = load i64, i64* %245, align 8, !dbg !1631
  %247 = lshr i64 %246, 32, !dbg !1633
  %248 = and i64 %247, 4294967295, !dbg !1634
  %249 = trunc i64 %248 to i32, !dbg !1635
  %250 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1636
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %250, i32 0, i32 0, !dbg !1637
  %252 = load i8*, i8** %251, align 8, !dbg !1637
  %253 = bitcast i8* %252 to i32*, !dbg !1638
  store i32 %249, i32* %253, align 4, !dbg !1639
  %254 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1640
  %255 = getelementptr inbounds %struct.stream, %struct.stream* %254, i32 0, i32 0, !dbg !1641
  %256 = load i8*, i8** %255, align 8, !dbg !1642
  %257 = getelementptr inbounds i8, i8* %256, i64 4, !dbg !1642
  store i8* %257, i8** %255, align 8, !dbg !1642
  %258 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 0, !dbg !1643
  %259 = load i64, i64* %258, align 8, !dbg !1643
  %260 = udiv i64 %259, 512, !dbg !1645
  %261 = trunc i64 %260 to i32, !dbg !1646
  %262 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1647
  %263 = getelementptr inbounds %struct.stream, %struct.stream* %262, i32 0, i32 0, !dbg !1648
  %264 = load i8*, i8** %263, align 8, !dbg !1648
  %265 = bitcast i8* %264 to i32*, !dbg !1649
  store i32 %261, i32* %265, align 4, !dbg !1650
  %266 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1651
  %267 = getelementptr inbounds %struct.stream, %struct.stream* %266, i32 0, i32 0, !dbg !1652
  %268 = load i8*, i8** %267, align 8, !dbg !1653
  %269 = getelementptr inbounds i8, i8* %268, i64 4, !dbg !1653
  store i8* %269, i8** %267, align 8, !dbg !1653
  %270 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1654
  %271 = getelementptr inbounds %struct.stream, %struct.stream* %270, i32 0, i32 0, !dbg !1656
  %272 = load i8*, i8** %271, align 8, !dbg !1656
  %273 = bitcast i8* %272 to i32*, !dbg !1657
  store i32 512, i32* %273, align 4, !dbg !1658
  %274 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1659
  %275 = getelementptr inbounds %struct.stream, %struct.stream* %274, i32 0, i32 0, !dbg !1660
  %276 = load i8*, i8** %275, align 8, !dbg !1661
  %277 = getelementptr inbounds i8, i8* %276, i64 4, !dbg !1661
  store i8* %277, i8** %275, align 8, !dbg !1661
  br label %346, !dbg !1662

; <label>:278:                                    ; preds = %27
  call void @s_reset(%struct.stream* %11), !dbg !1663
  %279 = load %struct.FsInfoType*, %struct.FsInfoType** %10, align 8, !dbg !1664
  %280 = getelementptr inbounds %struct.FsInfoType, %struct.FsInfoType* %279, i32 0, i32 3, !dbg !1665
  %281 = getelementptr inbounds [4096 x i8], [4096 x i8]* %280, i32 0, i32 0, !dbg !1664
  call void @out_utf16s_no_eos(%struct.stream* %11, i8* %281), !dbg !1666
  %282 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !1667
  %283 = load i8*, i8** %282, align 8, !dbg !1667
  %284 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1668
  store i8* %283, i8** %284, align 8, !dbg !1669
  %285 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1670
  %286 = getelementptr inbounds %struct.stream, %struct.stream* %285, i32 0, i32 0, !dbg !1672
  %287 = load i8*, i8** %286, align 8, !dbg !1672
  %288 = bitcast i8* %287 to i32*, !dbg !1673
  store i32 3, i32* %288, align 4, !dbg !1674
  %289 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1675
  %290 = getelementptr inbounds %struct.stream, %struct.stream* %289, i32 0, i32 0, !dbg !1676
  %291 = load i8*, i8** %290, align 8, !dbg !1677
  %292 = getelementptr inbounds i8, i8* %291, i64 4, !dbg !1677
  store i8* %292, i8** %290, align 8, !dbg !1677
  %293 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 10, !dbg !1678
  %294 = load i64, i64* %293, align 8, !dbg !1678
  %295 = trunc i64 %294 to i32, !dbg !1680
  %296 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1681
  %297 = getelementptr inbounds %struct.stream, %struct.stream* %296, i32 0, i32 0, !dbg !1682
  %298 = load i8*, i8** %297, align 8, !dbg !1682
  %299 = bitcast i8* %298 to i32*, !dbg !1683
  store i32 %295, i32* %299, align 4, !dbg !1684
  %300 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1685
  %301 = getelementptr inbounds %struct.stream, %struct.stream* %300, i32 0, i32 0, !dbg !1686
  %302 = load i8*, i8** %301, align 8, !dbg !1687
  %303 = getelementptr inbounds i8, i8* %302, i64 4, !dbg !1687
  store i8* %303, i8** %301, align 8, !dbg !1687
  %304 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1688
  %305 = load i8*, i8** %304, align 8, !dbg !1688
  %306 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1690
  %307 = load i8*, i8** %306, align 8, !dbg !1690
  %308 = ptrtoint i8* %305 to i64, !dbg !1691
  %309 = ptrtoint i8* %307 to i64, !dbg !1691
  %310 = sub i64 %308, %309, !dbg !1691
  %311 = trunc i64 %310 to i32, !dbg !1692
  %312 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1693
  %313 = getelementptr inbounds %struct.stream, %struct.stream* %312, i32 0, i32 0, !dbg !1694
  %314 = load i8*, i8** %313, align 8, !dbg !1694
  %315 = bitcast i8* %314 to i32*, !dbg !1695
  store i32 %311, i32* %315, align 4, !dbg !1696
  %316 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1697
  %317 = getelementptr inbounds %struct.stream, %struct.stream* %316, i32 0, i32 0, !dbg !1698
  %318 = load i8*, i8** %317, align 8, !dbg !1699
  %319 = getelementptr inbounds i8, i8* %318, i64 4, !dbg !1699
  store i8* %319, i8** %317, align 8, !dbg !1699
  %320 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1700
  %321 = getelementptr inbounds %struct.stream, %struct.stream* %320, i32 0, i32 0, !dbg !1702
  %322 = load i8*, i8** %321, align 8, !dbg !1702
  %323 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1703
  %324 = load i8*, i8** %323, align 8, !dbg !1703
  %325 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1704
  %326 = load i8*, i8** %325, align 8, !dbg !1704
  %327 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1705
  %328 = load i8*, i8** %327, align 8, !dbg !1705
  %329 = ptrtoint i8* %326 to i64, !dbg !1706
  %330 = ptrtoint i8* %328 to i64, !dbg !1706
  %331 = sub i64 %329, %330, !dbg !1706
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %322, i8* %324, i64 %331, i32 1, i1 false), !dbg !1707
  %332 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1, !dbg !1708
  %333 = load i8*, i8** %332, align 8, !dbg !1708
  %334 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 2, !dbg !1709
  %335 = load i8*, i8** %334, align 8, !dbg !1709
  %336 = ptrtoint i8* %333 to i64, !dbg !1710
  %337 = ptrtoint i8* %335 to i64, !dbg !1710
  %338 = sub i64 %336, %337, !dbg !1710
  %339 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !1711
  %340 = getelementptr inbounds %struct.stream, %struct.stream* %339, i32 0, i32 0, !dbg !1712
  %341 = load i8*, i8** %340, align 8, !dbg !1713
  %342 = getelementptr inbounds i8, i8* %341, i64 %338, !dbg !1713
  store i8* %342, i8** %340, align 8, !dbg !1713
  br label %346, !dbg !1714

; <label>:343:                                    ; preds = %27, %27, %27, %27, %27
  br label %344, !dbg !1715

; <label>:344:                                    ; preds = %27, %343
  %345 = load i32, i32* %6, align 4, !dbg !1717
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i32 0, i32 0), i32 %345), !dbg !1718
  store i32 -1073741811, i32* %4, align 4, !dbg !1719
  br label %347, !dbg !1719

; <label>:346:                                    ; preds = %278, %182, %111, %33
  store i32 0, i32* %4, align 4, !dbg !1720
  br label %347, !dbg !1720

; <label>:347:                                    ; preds = %346, %344, %23
  %348 = load i32, i32* %4, align 4, !dbg !1721
  ret i32 %348, !dbg !1721
}

declare void @s_realloc(%struct.stream*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.FsInfoType* @FsVolumeInfo(i8*) #0 !dbg !142 {
  %2 = alloca %struct.FsInfoType*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.mntent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1722, metadata !160), !dbg !1723
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1724, metadata !160), !dbg !1779
  call void @llvm.dbg.declare(metadata %struct.mntent** %5, metadata !1780, metadata !160), !dbg !1791
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 0, i32 0), i8 0, i64 12296, i32 8, i1 false), !dbg !1792
  %8 = call i8* @strcpy(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 1, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1793
  %9 = call i8* @strcpy(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 3, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #8, !dbg !1794
  %10 = call %struct._IO_FILE* @setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !1795
  store %struct._IO_FILE* %10, %struct._IO_FILE** %4, align 8, !dbg !1796
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1797
  %12 = icmp ne %struct._IO_FILE* %11, null, !dbg !1797
  br i1 %12, label %14, label %13, !dbg !1799

; <label>:13:                                     ; preds = %1
  store %struct.FsInfoType* @FsVolumeInfo.info, %struct.FsInfoType** %2, align 8, !dbg !1800
  br label %108, !dbg !1800

; <label>:14:                                     ; preds = %1
  br label %15, !dbg !1801

; <label>:15:                                     ; preds = %104, %14
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1802
  %17 = call %struct.mntent* @getmntent(%struct._IO_FILE* %16) #8, !dbg !1804
  store %struct.mntent* %17, %struct.mntent** %5, align 8, !dbg !1805
  %18 = icmp ne %struct.mntent* %17, null, !dbg !1806
  br i1 %18, label %19, label %105, !dbg !1806

; <label>:19:                                     ; preds = %15
  %20 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !1807
  %21 = getelementptr inbounds %struct.mntent, %struct.mntent* %20, i32 0, i32 1, !dbg !1810
  %22 = load i8*, i8** %21, align 8, !dbg !1810
  %23 = load i8*, i8** %3, align 8, !dbg !1811
  %24 = call i32 @str_startswith(i8* %22, i8* %23), !dbg !1812
  %25 = icmp ne i32 %24, 0, !dbg !1812
  br i1 %25, label %26, label %104, !dbg !1813

; <label>:26:                                     ; preds = %19
  %27 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !1814
  %28 = getelementptr inbounds %struct.mntent, %struct.mntent* %27, i32 0, i32 2, !dbg !1816
  %29 = load i8*, i8** %28, align 8, !dbg !1816
  %30 = call i8* @strcpy(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 3, i32 0), i8* %29) #8, !dbg !1817
  %31 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !1818
  %32 = getelementptr inbounds %struct.mntent, %struct.mntent* %31, i32 0, i32 0, !dbg !1819
  %33 = load i8*, i8** %32, align 8, !dbg !1819
  %34 = call i8* @strcpy(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 0, i32 0), i8* %33) #8, !dbg !1820
  %35 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !1821
  %36 = getelementptr inbounds %struct.mntent, %struct.mntent* %35, i32 0, i32 3, !dbg !1823
  %37 = load i8*, i8** %36, align 8, !dbg !1823
  %38 = call i8* @strstr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #9, !dbg !1824
  %39 = icmp ne i8* %38, null, !dbg !1824
  br i1 %39, label %46, label %40, !dbg !1825

; <label>:40:                                     ; preds = %26
  %41 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !1826
  %42 = getelementptr inbounds %struct.mntent, %struct.mntent* %41, i32 0, i32 3, !dbg !1828
  %43 = load i8*, i8** %42, align 8, !dbg !1828
  %44 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)) #9, !dbg !1829
  %45 = icmp ne i8* %44, null, !dbg !1829
  br i1 %45, label %46, label %103, !dbg !1830

; <label>:46:                                     ; preds = %40, %26
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1831, metadata !160), !dbg !1833
  %47 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !1834
  %48 = getelementptr inbounds %struct.mntent, %struct.mntent* %47, i32 0, i32 0, !dbg !1835
  %49 = load i8*, i8** %48, align 8, !dbg !1835
  %50 = call i32 (i8*, i32, ...) @open(i8* %49, i32 0), !dbg !1836
  store i32 %50, i32* %6, align 4, !dbg !1833
  %51 = load i32, i32* %6, align 4, !dbg !1837
  %52 = icmp sge i32 %51, 0, !dbg !1839
  br i1 %52, label %53, label %102, !dbg !1840

; <label>:53:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata [512 x i8]* %7, metadata !1841, metadata !160), !dbg !1846
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1847
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 512, i32 16, i1 false), !dbg !1847
  %55 = load %struct.mntent*, %struct.mntent** %5, align 8, !dbg !1848
  %56 = getelementptr inbounds %struct.mntent, %struct.mntent* %55, i32 0, i32 3, !dbg !1850
  %57 = load i8*, i8** %56, align 8, !dbg !1850
  %58 = call i8* @strstr(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #9, !dbg !1851
  %59 = icmp ne i8* %58, null, !dbg !1851
  br i1 %59, label %60, label %87, !dbg !1852

; <label>:60:                                     ; preds = %53
  %61 = call i8* @strcpy(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 3, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !1853
  %62 = load i32, i32* %6, align 4, !dbg !1855
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1856
  %64 = call i64 @read(i32 %62, i8* %63, i64 512), !dbg !1857
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 42, !dbg !1858
  %66 = load i8, i8* %65, align 2, !dbg !1858
  %67 = zext i8 %66 to i32, !dbg !1858
  %68 = shl i32 %67, 24, !dbg !1859
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 41, !dbg !1860
  %70 = load i8, i8* %69, align 1, !dbg !1860
  %71 = zext i8 %70 to i32, !dbg !1860
  %72 = shl i32 %71, 16, !dbg !1861
  %73 = add nsw i32 %68, %72, !dbg !1862
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 40, !dbg !1863
  %75 = load i8, i8* %74, align 8, !dbg !1863
  %76 = zext i8 %75 to i32, !dbg !1863
  %77 = shl i32 %76, 8, !dbg !1864
  %78 = add nsw i32 %73, %77, !dbg !1865
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 39, !dbg !1866
  %80 = load i8, i8* %79, align 1, !dbg !1866
  %81 = zext i8 %80 to i32, !dbg !1866
  %82 = add nsw i32 %78, %81, !dbg !1867
  %83 = sext i32 %82 to i64, !dbg !1868
  store i64 %83, i64* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 2), align 8, !dbg !1869
  %84 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1870
  %85 = getelementptr inbounds i8, i8* %84, i64 43, !dbg !1871
  %86 = call i8* @strncpy(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 1, i32 0), i8* %85, i64 10) #8, !dbg !1872
  store i8 0, i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 1, i64 10), align 2, !dbg !1873
  br label %99, !dbg !1874

; <label>:87:                                     ; preds = %53
  %88 = load i32, i32* %6, align 4, !dbg !1875
  %89 = call i64 @lseek(i32 %88, i64 32767, i32 0) #8, !dbg !1877
  %90 = icmp sge i64 %89, 0, !dbg !1878
  br i1 %90, label %91, label %98, !dbg !1879

; <label>:91:                                     ; preds = %87
  %92 = load i32, i32* %6, align 4, !dbg !1880
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1882
  %94 = call i64 @read(i32 %92, i8* %93, i64 512), !dbg !1883
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1884
  %96 = getelementptr inbounds i8, i8* %95, i64 41, !dbg !1885
  %97 = call i8* @strncpy(i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 1, i32 0), i8* %96, i64 32) #8, !dbg !1886
  store i8 0, i8* getelementptr inbounds (%struct.FsInfoType, %struct.FsInfoType* @FsVolumeInfo.info, i32 0, i32 1, i64 32), align 8, !dbg !1887
  br label %98, !dbg !1888

; <label>:98:                                     ; preds = %91, %87
  br label %99

; <label>:99:                                     ; preds = %98, %60
  %100 = load i32, i32* %6, align 4, !dbg !1889
  %101 = call i32 @close(i32 %100), !dbg !1890
  br label %102, !dbg !1891

; <label>:102:                                    ; preds = %99, %46
  br label %103, !dbg !1892

; <label>:103:                                    ; preds = %102, %40
  br label %104, !dbg !1893

; <label>:104:                                    ; preds = %103, %19
  br label %15, !dbg !1894, !llvm.loop !1896

; <label>:105:                                    ; preds = %15
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1897
  %107 = call i32 @endmntent(%struct._IO_FILE* %106) #8, !dbg !1898
  store %struct.FsInfoType* @FsVolumeInfo.info, %struct.FsInfoType** %2, align 8, !dbg !1899
  br label %108, !dbg !1899

; <label>:108:                                    ; preds = %105, %13
  %109 = load %struct.FsInfoType*, %struct.FsInfoType** %2, align 8, !dbg !1900
  ret %struct.FsInfoType* %109, !dbg !1900
}

declare void @s_reset(%struct.stream*) #2

declare void @out_utf16s(%struct.stream*, i8*) #2

declare void @out_utf16s_no_eos(%struct.stream*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @disk_query_directory(i32, i32, i8*, %struct.stream*) #0 !dbg !1901 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca %struct.__dirstream*, align 8
  %16 = alloca %struct.dirent*, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca %struct.fileinfo*, align 8
  %19 = alloca %struct.stream, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1904, metadata !160), !dbg !1905
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1906, metadata !160), !dbg !1907
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1908, metadata !160), !dbg !1909
  store %struct.stream* %3, %struct.stream** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %9, metadata !1910, metadata !160), !dbg !1911
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1912, metadata !160), !dbg !1913
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1914, metadata !160), !dbg !1915
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1916, metadata !160), !dbg !1917
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1918, metadata !160), !dbg !1919
  call void @llvm.dbg.declare(metadata [4096 x i8]* %14, metadata !1920, metadata !160), !dbg !1921
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %15, metadata !1922, metadata !160), !dbg !1923
  call void @llvm.dbg.declare(metadata %struct.dirent** %16, metadata !1924, metadata !160), !dbg !1925
  call void @llvm.dbg.declare(metadata %struct.stat* %17, metadata !1926, metadata !160), !dbg !1927
  call void @llvm.dbg.declare(metadata %struct.fileinfo** %18, metadata !1928, metadata !160), !dbg !1929
  call void @llvm.dbg.declare(metadata %struct.stream* %19, metadata !1930, metadata !160), !dbg !1931
  %20 = load i32, i32* %6, align 4, !dbg !1932
  %21 = load i32, i32* %7, align 4, !dbg !1933
  %22 = load i8*, i8** %8, align 8, !dbg !1934
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i32 0, i32 0), i32 %20, i32 %21, i8* %22), !dbg !1935
  %23 = load i32, i32* %6, align 4, !dbg !1936
  %24 = zext i32 %23 to i64, !dbg !1937
  %25 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %24, !dbg !1937
  store %struct.fileinfo* %25, %struct.fileinfo** %18, align 8, !dbg !1938
  %26 = load %struct.fileinfo*, %struct.fileinfo** %18, align 8, !dbg !1939
  %27 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %26, i32 0, i32 4, !dbg !1940
  %28 = load %struct.__dirstream*, %struct.__dirstream** %27, align 8, !dbg !1940
  store %struct.__dirstream* %28, %struct.__dirstream** %15, align 8, !dbg !1941
  %29 = load %struct.fileinfo*, %struct.fileinfo** %18, align 8, !dbg !1942
  %30 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %29, i32 0, i32 3, !dbg !1943
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %30, i32 0, i32 0, !dbg !1942
  store i8* %31, i8** %13, align 8, !dbg !1944
  store i32 0, i32* %10, align 4, !dbg !1945
  %32 = bitcast %struct.stream* %19 to i8*, !dbg !1946
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 72, i32 8, i1 false), !dbg !1946
  call void @s_realloc(%struct.stream* %19, i32 16384), !dbg !1947
  %33 = load i32, i32* %7, align 4, !dbg !1948
  switch i32 %33, label %149 [
    i32 3, label %34
    i32 1, label %34
    i32 2, label %34
    i32 12, label %34
  ], !dbg !1949

; <label>:34:                                     ; preds = %4, %4, %4, %4
  %35 = load i8*, i8** %8, align 8, !dbg !1950
  %36 = icmp ne i8* %35, null, !dbg !1953
  br i1 %36, label %37, label %52, !dbg !1954

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %8, align 8, !dbg !1955
  %39 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !1955
  %40 = load i8, i8* %39, align 1, !dbg !1955
  %41 = sext i8 %40 to i32, !dbg !1955
  %42 = icmp ne i32 %41, 0, !dbg !1957
  br i1 %42, label %43, label %52, !dbg !1958

; <label>:43:                                     ; preds = %37
  %44 = load %struct.fileinfo*, %struct.fileinfo** %18, align 8, !dbg !1959
  %45 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %44, i32 0, i32 6, !dbg !1961
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %45, i32 0, i32 0, !dbg !1959
  %47 = load i8*, i8** %8, align 8, !dbg !1962
  %48 = call i8* @strrchr(i8* %47, i32 47) #9, !dbg !1963
  %49 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1964
  %50 = call i8* @strncpy(i8* %46, i8* %49, i64 4095) #8, !dbg !1965
  %51 = load %struct.__dirstream*, %struct.__dirstream** %15, align 8, !dbg !1967
  call void @rewinddir(%struct.__dirstream* %51) #8, !dbg !1968
  br label %52, !dbg !1969

; <label>:52:                                     ; preds = %43, %37, %34
  %53 = load %struct.__dirstream*, %struct.__dirstream** %15, align 8, !dbg !1970
  %54 = call %struct.dirent* @readdir(%struct.__dirstream* %53), !dbg !1971
  store %struct.dirent* %54, %struct.dirent** %16, align 8, !dbg !1972
  br label %55, !dbg !1973

; <label>:55:                                     ; preds = %69, %52
  %56 = load %struct.dirent*, %struct.dirent** %16, align 8, !dbg !1974
  %57 = icmp ne %struct.dirent* %56, null, !dbg !1974
  br i1 %57, label %58, label %67, !dbg !1976

; <label>:58:                                     ; preds = %55
  %59 = load %struct.fileinfo*, %struct.fileinfo** %18, align 8, !dbg !1977
  %60 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %59, i32 0, i32 6, !dbg !1979
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %60, i32 0, i32 0, !dbg !1977
  %62 = load %struct.dirent*, %struct.dirent** %16, align 8, !dbg !1980
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 4, !dbg !1981
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %63, i32 0, i32 0, !dbg !1980
  %65 = call i32 @fnmatch(i8* %61, i8* %64, i32 0), !dbg !1982
  %66 = icmp ne i32 %65, 0, !dbg !1983
  br label %67

; <label>:67:                                     ; preds = %58, %55
  %68 = phi i1 [ false, %55 ], [ %66, %58 ]
  br i1 %68, label %69, label %72, !dbg !1984

; <label>:69:                                     ; preds = %67
  %70 = load %struct.__dirstream*, %struct.__dirstream** %15, align 8, !dbg !1986
  %71 = call %struct.dirent* @readdir(%struct.__dirstream* %70), !dbg !1987
  store %struct.dirent* %71, %struct.dirent** %16, align 8, !dbg !1988
  br label %55, !dbg !1989, !llvm.loop !1991

; <label>:72:                                     ; preds = %67
  %73 = load %struct.dirent*, %struct.dirent** %16, align 8, !dbg !1992
  %74 = icmp eq %struct.dirent* %73, null, !dbg !1994
  br i1 %74, label %75, label %76, !dbg !1995

; <label>:75:                                     ; preds = %72
  store i32 -2147483642, i32* %5, align 4, !dbg !1996
  br label %772, !dbg !1996

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0, !dbg !1997
  %78 = load i8*, i8** %13, align 8, !dbg !1998
  %79 = load %struct.dirent*, %struct.dirent** %16, align 8, !dbg !1999
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 4, !dbg !2000
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %80, i32 0, i32 0, !dbg !1999
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %78, i8* %81) #8, !dbg !2001
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i32 0, i32 0, !dbg !2002
  %84 = call i32 @stat(i8* %83, %struct.stat* %17) #8, !dbg !2004
  %85 = icmp ne i32 %84, 0, !dbg !2004
  br i1 %85, label %86, label %100, !dbg !2005

; <label>:86:                                     ; preds = %76
  %87 = call i32* @__errno_location() #1, !dbg !2006
  %88 = load i32, i32* %87, align 4, !dbg !2008
  switch i32 %88, label %91 [
    i32 2, label %89
    i32 40, label %89
    i32 13, label %89
  ], !dbg !2009

; <label>:89:                                     ; preds = %86, %86, %86
  %90 = bitcast %struct.stat* %17 to i8*, !dbg !2010
  call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 144, i32 8, i1 false), !dbg !2010
  br label %99, !dbg !2012

; <label>:91:                                     ; preds = %86
  %92 = call i32* @__errno_location() #1, !dbg !2013
  %93 = load i32, i32* %92, align 4, !dbg !2014
  %94 = call i8* @strerror(i32 %93) #8, !dbg !2015
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* %94), !dbg !2017
  %95 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2018
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %95, i32 0, i32 0, !dbg !2019
  %97 = load i8*, i8** %96, align 8, !dbg !2020
  %98 = getelementptr inbounds i8, i8* %97, i32 1, !dbg !2020
  store i8* %98, i8** %96, align 8, !dbg !2020
  store i8 0, i8* %97, align 1, !dbg !2021
  store i32 -1073741809, i32* %5, align 4, !dbg !2022
  br label %772, !dbg !2022

; <label>:99:                                     ; preds = %89
  br label %100, !dbg !2023

; <label>:100:                                    ; preds = %99, %76
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 3, !dbg !2024
  %102 = load i32, i32* %101, align 8, !dbg !2024
  %103 = and i32 %102, 61440, !dbg !2026
  %104 = icmp eq i32 %103, 16384, !dbg !2027
  br i1 %104, label %105, label %108, !dbg !2028

; <label>:105:                                    ; preds = %100
  %106 = load i32, i32* %10, align 4, !dbg !2029
  %107 = or i32 %106, 16, !dbg !2029
  store i32 %107, i32* %10, align 4, !dbg !2029
  br label %108, !dbg !2030

; <label>:108:                                    ; preds = %105, %100
  %109 = load %struct.dirent*, %struct.dirent** %16, align 8, !dbg !2031
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 4, !dbg !2033
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %110, i64 0, i64 0, !dbg !2031
  %112 = load i8, i8* %111, align 1, !dbg !2031
  %113 = sext i8 %112 to i32, !dbg !2031
  %114 = icmp eq i32 %113, 46, !dbg !2034
  br i1 %114, label %115, label %118, !dbg !2035

; <label>:115:                                    ; preds = %108
  %116 = load i32, i32* %10, align 4, !dbg !2036
  %117 = or i32 %116, 2, !dbg !2036
  store i32 %117, i32* %10, align 4, !dbg !2036
  br label %118, !dbg !2037

; <label>:118:                                    ; preds = %115, %108
  %119 = load i32, i32* %10, align 4, !dbg !2038
  %120 = icmp ne i32 %119, 0, !dbg !2038
  br i1 %120, label %124, label %121, !dbg !2040

; <label>:121:                                    ; preds = %118
  %122 = load i32, i32* %10, align 4, !dbg !2041
  %123 = or i32 %122, 128, !dbg !2041
  store i32 %123, i32* %10, align 4, !dbg !2041
  br label %124, !dbg !2042

; <label>:124:                                    ; preds = %121, %118
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 3, !dbg !2043
  %126 = load i32, i32* %125, align 8, !dbg !2043
  %127 = and i32 %126, 128, !dbg !2045
  %128 = icmp ne i32 %127, 0, !dbg !2045
  br i1 %128, label %132, label %129, !dbg !2046

; <label>:129:                                    ; preds = %124
  %130 = load i32, i32* %10, align 4, !dbg !2047
  %131 = or i32 %130, 1, !dbg !2047
  store i32 %131, i32* %10, align 4, !dbg !2047
  br label %132, !dbg !2048

; <label>:132:                                    ; preds = %129, %124
  %133 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2049
  %134 = getelementptr inbounds %struct.stream, %struct.stream* %133, i32 0, i32 0, !dbg !2051
  %135 = load i8*, i8** %134, align 8, !dbg !2051
  %136 = bitcast i8* %135 to i32*, !dbg !2052
  store i32 0, i32* %136, align 4, !dbg !2053
  %137 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2054
  %138 = getelementptr inbounds %struct.stream, %struct.stream* %137, i32 0, i32 0, !dbg !2055
  %139 = load i8*, i8** %138, align 8, !dbg !2056
  %140 = getelementptr inbounds i8, i8* %139, i64 4, !dbg !2056
  store i8* %140, i8** %138, align 8, !dbg !2056
  %141 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2057
  %142 = getelementptr inbounds %struct.stream, %struct.stream* %141, i32 0, i32 0, !dbg !2059
  %143 = load i8*, i8** %142, align 8, !dbg !2059
  %144 = bitcast i8* %143 to i32*, !dbg !2060
  store i32 0, i32* %144, align 4, !dbg !2061
  %145 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2062
  %146 = getelementptr inbounds %struct.stream, %struct.stream* %145, i32 0, i32 0, !dbg !2063
  %147 = load i8*, i8** %146, align 8, !dbg !2064
  %148 = getelementptr inbounds i8, i8* %147, i64 4, !dbg !2064
  store i8* %148, i8** %146, align 8, !dbg !2064
  br label %151, !dbg !2065

; <label>:149:                                    ; preds = %4
  %150 = load i32, i32* %7, align 4, !dbg !2066
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i32 0, i32 0), i32 %150), !dbg !2067
  store i32 -1073741811, i32* %5, align 4, !dbg !2068
  br label %772, !dbg !2068

; <label>:151:                                    ; preds = %132
  call void @s_reset(%struct.stream* %19), !dbg !2069
  %152 = load %struct.dirent*, %struct.dirent** %16, align 8, !dbg !2070
  %153 = getelementptr inbounds %struct.dirent, %struct.dirent* %152, i32 0, i32 4, !dbg !2071
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %153, i32 0, i32 0, !dbg !2070
  call void @out_utf16s_no_eos(%struct.stream* %19, i8* %154), !dbg !2072
  %155 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !2073
  %156 = load i8*, i8** %155, align 8, !dbg !2073
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2074
  store i8* %156, i8** %157, align 8, !dbg !2075
  %158 = load i32, i32* %7, align 4, !dbg !2076
  switch i32 %158, label %769 [
    i32 3, label %159
    i32 1, label %359
    i32 2, label %540
    i32 12, label %729
  ], !dbg !2077

; <label>:159:                                    ; preds = %151
  %160 = call i64 @get_create_time(%struct.stat* %17), !dbg !2078
  call void @seconds_since_1970_to_filetime(i64 %160, i32* %12, i32* %11), !dbg !2080
  %161 = load i32, i32* %11, align 4, !dbg !2082
  %162 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2084
  %163 = getelementptr inbounds %struct.stream, %struct.stream* %162, i32 0, i32 0, !dbg !2085
  %164 = load i8*, i8** %163, align 8, !dbg !2085
  %165 = bitcast i8* %164 to i32*, !dbg !2086
  store i32 %161, i32* %165, align 4, !dbg !2087
  %166 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2088
  %167 = getelementptr inbounds %struct.stream, %struct.stream* %166, i32 0, i32 0, !dbg !2089
  %168 = load i8*, i8** %167, align 8, !dbg !2090
  %169 = getelementptr inbounds i8, i8* %168, i64 4, !dbg !2090
  store i8* %169, i8** %167, align 8, !dbg !2090
  %170 = load i32, i32* %12, align 4, !dbg !2091
  %171 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2093
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 0, !dbg !2094
  %173 = load i8*, i8** %172, align 8, !dbg !2094
  %174 = bitcast i8* %173 to i32*, !dbg !2095
  store i32 %170, i32* %174, align 4, !dbg !2096
  %175 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2097
  %176 = getelementptr inbounds %struct.stream, %struct.stream* %175, i32 0, i32 0, !dbg !2098
  %177 = load i8*, i8** %176, align 8, !dbg !2099
  %178 = getelementptr inbounds i8, i8* %177, i64 4, !dbg !2099
  store i8* %178, i8** %176, align 8, !dbg !2099
  %179 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 11, !dbg !2100
  %180 = getelementptr inbounds %struct.timespec, %struct.timespec* %179, i32 0, i32 0, !dbg !2101
  %181 = load i64, i64* %180, align 8, !dbg !2101
  call void @seconds_since_1970_to_filetime(i64 %181, i32* %12, i32* %11), !dbg !2102
  %182 = load i32, i32* %11, align 4, !dbg !2103
  %183 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2105
  %184 = getelementptr inbounds %struct.stream, %struct.stream* %183, i32 0, i32 0, !dbg !2106
  %185 = load i8*, i8** %184, align 8, !dbg !2106
  %186 = bitcast i8* %185 to i32*, !dbg !2107
  store i32 %182, i32* %186, align 4, !dbg !2108
  %187 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2109
  %188 = getelementptr inbounds %struct.stream, %struct.stream* %187, i32 0, i32 0, !dbg !2110
  %189 = load i8*, i8** %188, align 8, !dbg !2111
  %190 = getelementptr inbounds i8, i8* %189, i64 4, !dbg !2111
  store i8* %190, i8** %188, align 8, !dbg !2111
  %191 = load i32, i32* %12, align 4, !dbg !2112
  %192 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2114
  %193 = getelementptr inbounds %struct.stream, %struct.stream* %192, i32 0, i32 0, !dbg !2115
  %194 = load i8*, i8** %193, align 8, !dbg !2115
  %195 = bitcast i8* %194 to i32*, !dbg !2116
  store i32 %191, i32* %195, align 4, !dbg !2117
  %196 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2118
  %197 = getelementptr inbounds %struct.stream, %struct.stream* %196, i32 0, i32 0, !dbg !2119
  %198 = load i8*, i8** %197, align 8, !dbg !2120
  %199 = getelementptr inbounds i8, i8* %198, i64 4, !dbg !2120
  store i8* %199, i8** %197, align 8, !dbg !2120
  %200 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 12, !dbg !2121
  %201 = getelementptr inbounds %struct.timespec, %struct.timespec* %200, i32 0, i32 0, !dbg !2122
  %202 = load i64, i64* %201, align 8, !dbg !2122
  call void @seconds_since_1970_to_filetime(i64 %202, i32* %12, i32* %11), !dbg !2123
  %203 = load i32, i32* %11, align 4, !dbg !2124
  %204 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2126
  %205 = getelementptr inbounds %struct.stream, %struct.stream* %204, i32 0, i32 0, !dbg !2127
  %206 = load i8*, i8** %205, align 8, !dbg !2127
  %207 = bitcast i8* %206 to i32*, !dbg !2128
  store i32 %203, i32* %207, align 4, !dbg !2129
  %208 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2130
  %209 = getelementptr inbounds %struct.stream, %struct.stream* %208, i32 0, i32 0, !dbg !2131
  %210 = load i8*, i8** %209, align 8, !dbg !2132
  %211 = getelementptr inbounds i8, i8* %210, i64 4, !dbg !2132
  store i8* %211, i8** %209, align 8, !dbg !2132
  %212 = load i32, i32* %12, align 4, !dbg !2133
  %213 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2135
  %214 = getelementptr inbounds %struct.stream, %struct.stream* %213, i32 0, i32 0, !dbg !2136
  %215 = load i8*, i8** %214, align 8, !dbg !2136
  %216 = bitcast i8* %215 to i32*, !dbg !2137
  store i32 %212, i32* %216, align 4, !dbg !2138
  %217 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2139
  %218 = getelementptr inbounds %struct.stream, %struct.stream* %217, i32 0, i32 0, !dbg !2140
  %219 = load i8*, i8** %218, align 8, !dbg !2141
  %220 = getelementptr inbounds i8, i8* %219, i64 4, !dbg !2141
  store i8* %220, i8** %218, align 8, !dbg !2141
  %221 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 13, !dbg !2142
  %222 = getelementptr inbounds %struct.timespec, %struct.timespec* %221, i32 0, i32 0, !dbg !2143
  %223 = load i64, i64* %222, align 8, !dbg !2143
  call void @seconds_since_1970_to_filetime(i64 %223, i32* %12, i32* %11), !dbg !2144
  %224 = load i32, i32* %11, align 4, !dbg !2145
  %225 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2147
  %226 = getelementptr inbounds %struct.stream, %struct.stream* %225, i32 0, i32 0, !dbg !2148
  %227 = load i8*, i8** %226, align 8, !dbg !2148
  %228 = bitcast i8* %227 to i32*, !dbg !2149
  store i32 %224, i32* %228, align 4, !dbg !2150
  %229 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2151
  %230 = getelementptr inbounds %struct.stream, %struct.stream* %229, i32 0, i32 0, !dbg !2152
  %231 = load i8*, i8** %230, align 8, !dbg !2153
  %232 = getelementptr inbounds i8, i8* %231, i64 4, !dbg !2153
  store i8* %232, i8** %230, align 8, !dbg !2153
  %233 = load i32, i32* %12, align 4, !dbg !2154
  %234 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2156
  %235 = getelementptr inbounds %struct.stream, %struct.stream* %234, i32 0, i32 0, !dbg !2157
  %236 = load i8*, i8** %235, align 8, !dbg !2157
  %237 = bitcast i8* %236 to i32*, !dbg !2158
  store i32 %233, i32* %237, align 4, !dbg !2159
  %238 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2160
  %239 = getelementptr inbounds %struct.stream, %struct.stream* %238, i32 0, i32 0, !dbg !2161
  %240 = load i8*, i8** %239, align 8, !dbg !2162
  %241 = getelementptr inbounds i8, i8* %240, i64 4, !dbg !2162
  store i8* %241, i8** %239, align 8, !dbg !2162
  %242 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2163
  %243 = load i64, i64* %242, align 8, !dbg !2163
  %244 = and i64 %243, 4294967295, !dbg !2166
  %245 = trunc i64 %244 to i32, !dbg !2167
  %246 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2168
  %247 = getelementptr inbounds %struct.stream, %struct.stream* %246, i32 0, i32 0, !dbg !2169
  %248 = load i8*, i8** %247, align 8, !dbg !2169
  %249 = bitcast i8* %248 to i32*, !dbg !2170
  store i32 %245, i32* %249, align 4, !dbg !2171
  %250 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2172
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %250, i32 0, i32 0, !dbg !2173
  %252 = load i8*, i8** %251, align 8, !dbg !2174
  %253 = getelementptr inbounds i8, i8* %252, i64 4, !dbg !2174
  store i8* %253, i8** %251, align 8, !dbg !2174
  %254 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2175
  %255 = load i64, i64* %254, align 8, !dbg !2175
  %256 = ashr i64 %255, 32, !dbg !2177
  %257 = and i64 %256, 4294967295, !dbg !2178
  %258 = trunc i64 %257 to i32, !dbg !2179
  %259 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2180
  %260 = getelementptr inbounds %struct.stream, %struct.stream* %259, i32 0, i32 0, !dbg !2181
  %261 = load i8*, i8** %260, align 8, !dbg !2181
  %262 = bitcast i8* %261 to i32*, !dbg !2182
  store i32 %258, i32* %262, align 4, !dbg !2183
  %263 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2184
  %264 = getelementptr inbounds %struct.stream, %struct.stream* %263, i32 0, i32 0, !dbg !2185
  %265 = load i8*, i8** %264, align 8, !dbg !2186
  %266 = getelementptr inbounds i8, i8* %265, i64 4, !dbg !2186
  store i8* %266, i8** %264, align 8, !dbg !2186
  %267 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2187
  %268 = load i64, i64* %267, align 8, !dbg !2187
  %269 = and i64 %268, 4294967295, !dbg !2190
  %270 = trunc i64 %269 to i32, !dbg !2191
  %271 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2192
  %272 = getelementptr inbounds %struct.stream, %struct.stream* %271, i32 0, i32 0, !dbg !2193
  %273 = load i8*, i8** %272, align 8, !dbg !2193
  %274 = bitcast i8* %273 to i32*, !dbg !2194
  store i32 %270, i32* %274, align 4, !dbg !2195
  %275 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2196
  %276 = getelementptr inbounds %struct.stream, %struct.stream* %275, i32 0, i32 0, !dbg !2197
  %277 = load i8*, i8** %276, align 8, !dbg !2198
  %278 = getelementptr inbounds i8, i8* %277, i64 4, !dbg !2198
  store i8* %278, i8** %276, align 8, !dbg !2198
  %279 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2199
  %280 = load i64, i64* %279, align 8, !dbg !2199
  %281 = ashr i64 %280, 32, !dbg !2201
  %282 = and i64 %281, 4294967295, !dbg !2202
  %283 = trunc i64 %282 to i32, !dbg !2203
  %284 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2204
  %285 = getelementptr inbounds %struct.stream, %struct.stream* %284, i32 0, i32 0, !dbg !2205
  %286 = load i8*, i8** %285, align 8, !dbg !2205
  %287 = bitcast i8* %286 to i32*, !dbg !2206
  store i32 %283, i32* %287, align 4, !dbg !2207
  %288 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2208
  %289 = getelementptr inbounds %struct.stream, %struct.stream* %288, i32 0, i32 0, !dbg !2209
  %290 = load i8*, i8** %289, align 8, !dbg !2210
  %291 = getelementptr inbounds i8, i8* %290, i64 4, !dbg !2210
  store i8* %291, i8** %289, align 8, !dbg !2210
  %292 = load i32, i32* %10, align 4, !dbg !2211
  %293 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2213
  %294 = getelementptr inbounds %struct.stream, %struct.stream* %293, i32 0, i32 0, !dbg !2214
  %295 = load i8*, i8** %294, align 8, !dbg !2214
  %296 = bitcast i8* %295 to i32*, !dbg !2215
  store i32 %292, i32* %296, align 4, !dbg !2216
  %297 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2217
  %298 = getelementptr inbounds %struct.stream, %struct.stream* %297, i32 0, i32 0, !dbg !2218
  %299 = load i8*, i8** %298, align 8, !dbg !2219
  %300 = getelementptr inbounds i8, i8* %299, i64 4, !dbg !2219
  store i8* %300, i8** %298, align 8, !dbg !2219
  %301 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2220
  %302 = load i8*, i8** %301, align 8, !dbg !2220
  %303 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2222
  %304 = load i8*, i8** %303, align 8, !dbg !2222
  %305 = ptrtoint i8* %302 to i64, !dbg !2223
  %306 = ptrtoint i8* %304 to i64, !dbg !2223
  %307 = sub i64 %305, %306, !dbg !2223
  %308 = trunc i64 %307 to i32, !dbg !2224
  %309 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2225
  %310 = getelementptr inbounds %struct.stream, %struct.stream* %309, i32 0, i32 0, !dbg !2226
  %311 = load i8*, i8** %310, align 8, !dbg !2226
  %312 = bitcast i8* %311 to i32*, !dbg !2227
  store i32 %308, i32* %312, align 4, !dbg !2228
  %313 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2229
  %314 = getelementptr inbounds %struct.stream, %struct.stream* %313, i32 0, i32 0, !dbg !2230
  %315 = load i8*, i8** %314, align 8, !dbg !2231
  %316 = getelementptr inbounds i8, i8* %315, i64 4, !dbg !2231
  store i8* %316, i8** %314, align 8, !dbg !2231
  %317 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2232
  %318 = getelementptr inbounds %struct.stream, %struct.stream* %317, i32 0, i32 0, !dbg !2234
  %319 = load i8*, i8** %318, align 8, !dbg !2234
  %320 = bitcast i8* %319 to i32*, !dbg !2235
  store i32 0, i32* %320, align 4, !dbg !2236
  %321 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2237
  %322 = getelementptr inbounds %struct.stream, %struct.stream* %321, i32 0, i32 0, !dbg !2238
  %323 = load i8*, i8** %322, align 8, !dbg !2239
  %324 = getelementptr inbounds i8, i8* %323, i64 4, !dbg !2239
  store i8* %324, i8** %322, align 8, !dbg !2239
  %325 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2240
  %326 = getelementptr inbounds %struct.stream, %struct.stream* %325, i32 0, i32 0, !dbg !2241
  %327 = load i8*, i8** %326, align 8, !dbg !2242
  %328 = getelementptr inbounds i8, i8* %327, i32 1, !dbg !2242
  store i8* %328, i8** %326, align 8, !dbg !2242
  store i8 0, i8* %327, align 1, !dbg !2243
  %329 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2244
  %330 = getelementptr inbounds %struct.stream, %struct.stream* %329, i32 0, i32 0, !dbg !2246
  %331 = load i8*, i8** %330, align 8, !dbg !2246
  call void @llvm.memset.p0i8.i64(i8* %331, i8 0, i64 24, i32 1, i1 false), !dbg !2247
  %332 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2248
  %333 = getelementptr inbounds %struct.stream, %struct.stream* %332, i32 0, i32 0, !dbg !2249
  %334 = load i8*, i8** %333, align 8, !dbg !2250
  %335 = getelementptr inbounds i8, i8* %334, i64 24, !dbg !2250
  store i8* %335, i8** %333, align 8, !dbg !2250
  %336 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2251
  %337 = getelementptr inbounds %struct.stream, %struct.stream* %336, i32 0, i32 0, !dbg !2253
  %338 = load i8*, i8** %337, align 8, !dbg !2253
  %339 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2254
  %340 = load i8*, i8** %339, align 8, !dbg !2254
  %341 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2255
  %342 = load i8*, i8** %341, align 8, !dbg !2255
  %343 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2256
  %344 = load i8*, i8** %343, align 8, !dbg !2256
  %345 = ptrtoint i8* %342 to i64, !dbg !2257
  %346 = ptrtoint i8* %344 to i64, !dbg !2257
  %347 = sub i64 %345, %346, !dbg !2257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %338, i8* %340, i64 %347, i32 1, i1 false), !dbg !2258
  %348 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2259
  %349 = load i8*, i8** %348, align 8, !dbg !2259
  %350 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2260
  %351 = load i8*, i8** %350, align 8, !dbg !2260
  %352 = ptrtoint i8* %349 to i64, !dbg !2261
  %353 = ptrtoint i8* %351 to i64, !dbg !2261
  %354 = sub i64 %352, %353, !dbg !2261
  %355 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2262
  %356 = getelementptr inbounds %struct.stream, %struct.stream* %355, i32 0, i32 0, !dbg !2263
  %357 = load i8*, i8** %356, align 8, !dbg !2264
  %358 = getelementptr inbounds i8, i8* %357, i64 %354, !dbg !2264
  store i8* %358, i8** %356, align 8, !dbg !2264
  br label %771, !dbg !2265

; <label>:359:                                    ; preds = %151
  %360 = call i64 @get_create_time(%struct.stat* %17), !dbg !2266
  call void @seconds_since_1970_to_filetime(i64 %360, i32* %12, i32* %11), !dbg !2267
  %361 = load i32, i32* %11, align 4, !dbg !2268
  %362 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2270
  %363 = getelementptr inbounds %struct.stream, %struct.stream* %362, i32 0, i32 0, !dbg !2271
  %364 = load i8*, i8** %363, align 8, !dbg !2271
  %365 = bitcast i8* %364 to i32*, !dbg !2272
  store i32 %361, i32* %365, align 4, !dbg !2273
  %366 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2274
  %367 = getelementptr inbounds %struct.stream, %struct.stream* %366, i32 0, i32 0, !dbg !2275
  %368 = load i8*, i8** %367, align 8, !dbg !2276
  %369 = getelementptr inbounds i8, i8* %368, i64 4, !dbg !2276
  store i8* %369, i8** %367, align 8, !dbg !2276
  %370 = load i32, i32* %12, align 4, !dbg !2277
  %371 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2279
  %372 = getelementptr inbounds %struct.stream, %struct.stream* %371, i32 0, i32 0, !dbg !2280
  %373 = load i8*, i8** %372, align 8, !dbg !2280
  %374 = bitcast i8* %373 to i32*, !dbg !2281
  store i32 %370, i32* %374, align 4, !dbg !2282
  %375 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2283
  %376 = getelementptr inbounds %struct.stream, %struct.stream* %375, i32 0, i32 0, !dbg !2284
  %377 = load i8*, i8** %376, align 8, !dbg !2285
  %378 = getelementptr inbounds i8, i8* %377, i64 4, !dbg !2285
  store i8* %378, i8** %376, align 8, !dbg !2285
  %379 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 11, !dbg !2286
  %380 = getelementptr inbounds %struct.timespec, %struct.timespec* %379, i32 0, i32 0, !dbg !2287
  %381 = load i64, i64* %380, align 8, !dbg !2287
  call void @seconds_since_1970_to_filetime(i64 %381, i32* %12, i32* %11), !dbg !2288
  %382 = load i32, i32* %11, align 4, !dbg !2289
  %383 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2291
  %384 = getelementptr inbounds %struct.stream, %struct.stream* %383, i32 0, i32 0, !dbg !2292
  %385 = load i8*, i8** %384, align 8, !dbg !2292
  %386 = bitcast i8* %385 to i32*, !dbg !2293
  store i32 %382, i32* %386, align 4, !dbg !2294
  %387 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2295
  %388 = getelementptr inbounds %struct.stream, %struct.stream* %387, i32 0, i32 0, !dbg !2296
  %389 = load i8*, i8** %388, align 8, !dbg !2297
  %390 = getelementptr inbounds i8, i8* %389, i64 4, !dbg !2297
  store i8* %390, i8** %388, align 8, !dbg !2297
  %391 = load i32, i32* %12, align 4, !dbg !2298
  %392 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2300
  %393 = getelementptr inbounds %struct.stream, %struct.stream* %392, i32 0, i32 0, !dbg !2301
  %394 = load i8*, i8** %393, align 8, !dbg !2301
  %395 = bitcast i8* %394 to i32*, !dbg !2302
  store i32 %391, i32* %395, align 4, !dbg !2303
  %396 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2304
  %397 = getelementptr inbounds %struct.stream, %struct.stream* %396, i32 0, i32 0, !dbg !2305
  %398 = load i8*, i8** %397, align 8, !dbg !2306
  %399 = getelementptr inbounds i8, i8* %398, i64 4, !dbg !2306
  store i8* %399, i8** %397, align 8, !dbg !2306
  %400 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 12, !dbg !2307
  %401 = getelementptr inbounds %struct.timespec, %struct.timespec* %400, i32 0, i32 0, !dbg !2308
  %402 = load i64, i64* %401, align 8, !dbg !2308
  call void @seconds_since_1970_to_filetime(i64 %402, i32* %12, i32* %11), !dbg !2309
  %403 = load i32, i32* %11, align 4, !dbg !2310
  %404 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2312
  %405 = getelementptr inbounds %struct.stream, %struct.stream* %404, i32 0, i32 0, !dbg !2313
  %406 = load i8*, i8** %405, align 8, !dbg !2313
  %407 = bitcast i8* %406 to i32*, !dbg !2314
  store i32 %403, i32* %407, align 4, !dbg !2315
  %408 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2316
  %409 = getelementptr inbounds %struct.stream, %struct.stream* %408, i32 0, i32 0, !dbg !2317
  %410 = load i8*, i8** %409, align 8, !dbg !2318
  %411 = getelementptr inbounds i8, i8* %410, i64 4, !dbg !2318
  store i8* %411, i8** %409, align 8, !dbg !2318
  %412 = load i32, i32* %12, align 4, !dbg !2319
  %413 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2321
  %414 = getelementptr inbounds %struct.stream, %struct.stream* %413, i32 0, i32 0, !dbg !2322
  %415 = load i8*, i8** %414, align 8, !dbg !2322
  %416 = bitcast i8* %415 to i32*, !dbg !2323
  store i32 %412, i32* %416, align 4, !dbg !2324
  %417 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2325
  %418 = getelementptr inbounds %struct.stream, %struct.stream* %417, i32 0, i32 0, !dbg !2326
  %419 = load i8*, i8** %418, align 8, !dbg !2327
  %420 = getelementptr inbounds i8, i8* %419, i64 4, !dbg !2327
  store i8* %420, i8** %418, align 8, !dbg !2327
  %421 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 13, !dbg !2328
  %422 = getelementptr inbounds %struct.timespec, %struct.timespec* %421, i32 0, i32 0, !dbg !2329
  %423 = load i64, i64* %422, align 8, !dbg !2329
  call void @seconds_since_1970_to_filetime(i64 %423, i32* %12, i32* %11), !dbg !2330
  %424 = load i32, i32* %11, align 4, !dbg !2331
  %425 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2333
  %426 = getelementptr inbounds %struct.stream, %struct.stream* %425, i32 0, i32 0, !dbg !2334
  %427 = load i8*, i8** %426, align 8, !dbg !2334
  %428 = bitcast i8* %427 to i32*, !dbg !2335
  store i32 %424, i32* %428, align 4, !dbg !2336
  %429 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2337
  %430 = getelementptr inbounds %struct.stream, %struct.stream* %429, i32 0, i32 0, !dbg !2338
  %431 = load i8*, i8** %430, align 8, !dbg !2339
  %432 = getelementptr inbounds i8, i8* %431, i64 4, !dbg !2339
  store i8* %432, i8** %430, align 8, !dbg !2339
  %433 = load i32, i32* %12, align 4, !dbg !2340
  %434 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2342
  %435 = getelementptr inbounds %struct.stream, %struct.stream* %434, i32 0, i32 0, !dbg !2343
  %436 = load i8*, i8** %435, align 8, !dbg !2343
  %437 = bitcast i8* %436 to i32*, !dbg !2344
  store i32 %433, i32* %437, align 4, !dbg !2345
  %438 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2346
  %439 = getelementptr inbounds %struct.stream, %struct.stream* %438, i32 0, i32 0, !dbg !2347
  %440 = load i8*, i8** %439, align 8, !dbg !2348
  %441 = getelementptr inbounds i8, i8* %440, i64 4, !dbg !2348
  store i8* %441, i8** %439, align 8, !dbg !2348
  %442 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2349
  %443 = load i64, i64* %442, align 8, !dbg !2349
  %444 = and i64 %443, 4294967295, !dbg !2352
  %445 = trunc i64 %444 to i32, !dbg !2353
  %446 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2354
  %447 = getelementptr inbounds %struct.stream, %struct.stream* %446, i32 0, i32 0, !dbg !2355
  %448 = load i8*, i8** %447, align 8, !dbg !2355
  %449 = bitcast i8* %448 to i32*, !dbg !2356
  store i32 %445, i32* %449, align 4, !dbg !2357
  %450 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2358
  %451 = getelementptr inbounds %struct.stream, %struct.stream* %450, i32 0, i32 0, !dbg !2359
  %452 = load i8*, i8** %451, align 8, !dbg !2360
  %453 = getelementptr inbounds i8, i8* %452, i64 4, !dbg !2360
  store i8* %453, i8** %451, align 8, !dbg !2360
  %454 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2361
  %455 = load i64, i64* %454, align 8, !dbg !2361
  %456 = ashr i64 %455, 32, !dbg !2363
  %457 = and i64 %456, 4294967295, !dbg !2364
  %458 = trunc i64 %457 to i32, !dbg !2365
  %459 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2366
  %460 = getelementptr inbounds %struct.stream, %struct.stream* %459, i32 0, i32 0, !dbg !2367
  %461 = load i8*, i8** %460, align 8, !dbg !2367
  %462 = bitcast i8* %461 to i32*, !dbg !2368
  store i32 %458, i32* %462, align 4, !dbg !2369
  %463 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2370
  %464 = getelementptr inbounds %struct.stream, %struct.stream* %463, i32 0, i32 0, !dbg !2371
  %465 = load i8*, i8** %464, align 8, !dbg !2372
  %466 = getelementptr inbounds i8, i8* %465, i64 4, !dbg !2372
  store i8* %466, i8** %464, align 8, !dbg !2372
  %467 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2373
  %468 = load i64, i64* %467, align 8, !dbg !2373
  %469 = and i64 %468, 4294967295, !dbg !2376
  %470 = trunc i64 %469 to i32, !dbg !2377
  %471 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2378
  %472 = getelementptr inbounds %struct.stream, %struct.stream* %471, i32 0, i32 0, !dbg !2379
  %473 = load i8*, i8** %472, align 8, !dbg !2379
  %474 = bitcast i8* %473 to i32*, !dbg !2380
  store i32 %470, i32* %474, align 4, !dbg !2381
  %475 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2382
  %476 = getelementptr inbounds %struct.stream, %struct.stream* %475, i32 0, i32 0, !dbg !2383
  %477 = load i8*, i8** %476, align 8, !dbg !2384
  %478 = getelementptr inbounds i8, i8* %477, i64 4, !dbg !2384
  store i8* %478, i8** %476, align 8, !dbg !2384
  %479 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2385
  %480 = load i64, i64* %479, align 8, !dbg !2385
  %481 = ashr i64 %480, 32, !dbg !2387
  %482 = and i64 %481, 4294967295, !dbg !2388
  %483 = trunc i64 %482 to i32, !dbg !2389
  %484 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2390
  %485 = getelementptr inbounds %struct.stream, %struct.stream* %484, i32 0, i32 0, !dbg !2391
  %486 = load i8*, i8** %485, align 8, !dbg !2391
  %487 = bitcast i8* %486 to i32*, !dbg !2392
  store i32 %483, i32* %487, align 4, !dbg !2393
  %488 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2394
  %489 = getelementptr inbounds %struct.stream, %struct.stream* %488, i32 0, i32 0, !dbg !2395
  %490 = load i8*, i8** %489, align 8, !dbg !2396
  %491 = getelementptr inbounds i8, i8* %490, i64 4, !dbg !2396
  store i8* %491, i8** %489, align 8, !dbg !2396
  %492 = load i32, i32* %10, align 4, !dbg !2397
  %493 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2399
  %494 = getelementptr inbounds %struct.stream, %struct.stream* %493, i32 0, i32 0, !dbg !2400
  %495 = load i8*, i8** %494, align 8, !dbg !2400
  %496 = bitcast i8* %495 to i32*, !dbg !2401
  store i32 %492, i32* %496, align 4, !dbg !2402
  %497 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2403
  %498 = getelementptr inbounds %struct.stream, %struct.stream* %497, i32 0, i32 0, !dbg !2404
  %499 = load i8*, i8** %498, align 8, !dbg !2405
  %500 = getelementptr inbounds i8, i8* %499, i64 4, !dbg !2405
  store i8* %500, i8** %498, align 8, !dbg !2405
  %501 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2406
  %502 = load i8*, i8** %501, align 8, !dbg !2406
  %503 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2408
  %504 = load i8*, i8** %503, align 8, !dbg !2408
  %505 = ptrtoint i8* %502 to i64, !dbg !2409
  %506 = ptrtoint i8* %504 to i64, !dbg !2409
  %507 = sub i64 %505, %506, !dbg !2409
  %508 = trunc i64 %507 to i32, !dbg !2410
  %509 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2411
  %510 = getelementptr inbounds %struct.stream, %struct.stream* %509, i32 0, i32 0, !dbg !2412
  %511 = load i8*, i8** %510, align 8, !dbg !2412
  %512 = bitcast i8* %511 to i32*, !dbg !2413
  store i32 %508, i32* %512, align 4, !dbg !2414
  %513 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2415
  %514 = getelementptr inbounds %struct.stream, %struct.stream* %513, i32 0, i32 0, !dbg !2416
  %515 = load i8*, i8** %514, align 8, !dbg !2417
  %516 = getelementptr inbounds i8, i8* %515, i64 4, !dbg !2417
  store i8* %516, i8** %514, align 8, !dbg !2417
  %517 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2418
  %518 = getelementptr inbounds %struct.stream, %struct.stream* %517, i32 0, i32 0, !dbg !2420
  %519 = load i8*, i8** %518, align 8, !dbg !2420
  %520 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2421
  %521 = load i8*, i8** %520, align 8, !dbg !2421
  %522 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2422
  %523 = load i8*, i8** %522, align 8, !dbg !2422
  %524 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2423
  %525 = load i8*, i8** %524, align 8, !dbg !2423
  %526 = ptrtoint i8* %523 to i64, !dbg !2424
  %527 = ptrtoint i8* %525 to i64, !dbg !2424
  %528 = sub i64 %526, %527, !dbg !2424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %519, i8* %521, i64 %528, i32 1, i1 false), !dbg !2425
  %529 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2426
  %530 = load i8*, i8** %529, align 8, !dbg !2426
  %531 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2427
  %532 = load i8*, i8** %531, align 8, !dbg !2427
  %533 = ptrtoint i8* %530 to i64, !dbg !2428
  %534 = ptrtoint i8* %532 to i64, !dbg !2428
  %535 = sub i64 %533, %534, !dbg !2428
  %536 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2429
  %537 = getelementptr inbounds %struct.stream, %struct.stream* %536, i32 0, i32 0, !dbg !2430
  %538 = load i8*, i8** %537, align 8, !dbg !2431
  %539 = getelementptr inbounds i8, i8* %538, i64 %535, !dbg !2431
  store i8* %539, i8** %537, align 8, !dbg !2431
  br label %771, !dbg !2432

; <label>:540:                                    ; preds = %151
  %541 = call i64 @get_create_time(%struct.stat* %17), !dbg !2433
  call void @seconds_since_1970_to_filetime(i64 %541, i32* %12, i32* %11), !dbg !2434
  %542 = load i32, i32* %11, align 4, !dbg !2435
  %543 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2437
  %544 = getelementptr inbounds %struct.stream, %struct.stream* %543, i32 0, i32 0, !dbg !2438
  %545 = load i8*, i8** %544, align 8, !dbg !2438
  %546 = bitcast i8* %545 to i32*, !dbg !2439
  store i32 %542, i32* %546, align 4, !dbg !2440
  %547 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2441
  %548 = getelementptr inbounds %struct.stream, %struct.stream* %547, i32 0, i32 0, !dbg !2442
  %549 = load i8*, i8** %548, align 8, !dbg !2443
  %550 = getelementptr inbounds i8, i8* %549, i64 4, !dbg !2443
  store i8* %550, i8** %548, align 8, !dbg !2443
  %551 = load i32, i32* %12, align 4, !dbg !2444
  %552 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2446
  %553 = getelementptr inbounds %struct.stream, %struct.stream* %552, i32 0, i32 0, !dbg !2447
  %554 = load i8*, i8** %553, align 8, !dbg !2447
  %555 = bitcast i8* %554 to i32*, !dbg !2448
  store i32 %551, i32* %555, align 4, !dbg !2449
  %556 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2450
  %557 = getelementptr inbounds %struct.stream, %struct.stream* %556, i32 0, i32 0, !dbg !2451
  %558 = load i8*, i8** %557, align 8, !dbg !2452
  %559 = getelementptr inbounds i8, i8* %558, i64 4, !dbg !2452
  store i8* %559, i8** %557, align 8, !dbg !2452
  %560 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 11, !dbg !2453
  %561 = getelementptr inbounds %struct.timespec, %struct.timespec* %560, i32 0, i32 0, !dbg !2454
  %562 = load i64, i64* %561, align 8, !dbg !2454
  call void @seconds_since_1970_to_filetime(i64 %562, i32* %12, i32* %11), !dbg !2455
  %563 = load i32, i32* %11, align 4, !dbg !2456
  %564 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2458
  %565 = getelementptr inbounds %struct.stream, %struct.stream* %564, i32 0, i32 0, !dbg !2459
  %566 = load i8*, i8** %565, align 8, !dbg !2459
  %567 = bitcast i8* %566 to i32*, !dbg !2460
  store i32 %563, i32* %567, align 4, !dbg !2461
  %568 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2462
  %569 = getelementptr inbounds %struct.stream, %struct.stream* %568, i32 0, i32 0, !dbg !2463
  %570 = load i8*, i8** %569, align 8, !dbg !2464
  %571 = getelementptr inbounds i8, i8* %570, i64 4, !dbg !2464
  store i8* %571, i8** %569, align 8, !dbg !2464
  %572 = load i32, i32* %12, align 4, !dbg !2465
  %573 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2467
  %574 = getelementptr inbounds %struct.stream, %struct.stream* %573, i32 0, i32 0, !dbg !2468
  %575 = load i8*, i8** %574, align 8, !dbg !2468
  %576 = bitcast i8* %575 to i32*, !dbg !2469
  store i32 %572, i32* %576, align 4, !dbg !2470
  %577 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2471
  %578 = getelementptr inbounds %struct.stream, %struct.stream* %577, i32 0, i32 0, !dbg !2472
  %579 = load i8*, i8** %578, align 8, !dbg !2473
  %580 = getelementptr inbounds i8, i8* %579, i64 4, !dbg !2473
  store i8* %580, i8** %578, align 8, !dbg !2473
  %581 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 12, !dbg !2474
  %582 = getelementptr inbounds %struct.timespec, %struct.timespec* %581, i32 0, i32 0, !dbg !2475
  %583 = load i64, i64* %582, align 8, !dbg !2475
  call void @seconds_since_1970_to_filetime(i64 %583, i32* %12, i32* %11), !dbg !2476
  %584 = load i32, i32* %11, align 4, !dbg !2477
  %585 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2479
  %586 = getelementptr inbounds %struct.stream, %struct.stream* %585, i32 0, i32 0, !dbg !2480
  %587 = load i8*, i8** %586, align 8, !dbg !2480
  %588 = bitcast i8* %587 to i32*, !dbg !2481
  store i32 %584, i32* %588, align 4, !dbg !2482
  %589 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2483
  %590 = getelementptr inbounds %struct.stream, %struct.stream* %589, i32 0, i32 0, !dbg !2484
  %591 = load i8*, i8** %590, align 8, !dbg !2485
  %592 = getelementptr inbounds i8, i8* %591, i64 4, !dbg !2485
  store i8* %592, i8** %590, align 8, !dbg !2485
  %593 = load i32, i32* %12, align 4, !dbg !2486
  %594 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2488
  %595 = getelementptr inbounds %struct.stream, %struct.stream* %594, i32 0, i32 0, !dbg !2489
  %596 = load i8*, i8** %595, align 8, !dbg !2489
  %597 = bitcast i8* %596 to i32*, !dbg !2490
  store i32 %593, i32* %597, align 4, !dbg !2491
  %598 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2492
  %599 = getelementptr inbounds %struct.stream, %struct.stream* %598, i32 0, i32 0, !dbg !2493
  %600 = load i8*, i8** %599, align 8, !dbg !2494
  %601 = getelementptr inbounds i8, i8* %600, i64 4, !dbg !2494
  store i8* %601, i8** %599, align 8, !dbg !2494
  %602 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 13, !dbg !2495
  %603 = getelementptr inbounds %struct.timespec, %struct.timespec* %602, i32 0, i32 0, !dbg !2496
  %604 = load i64, i64* %603, align 8, !dbg !2496
  call void @seconds_since_1970_to_filetime(i64 %604, i32* %12, i32* %11), !dbg !2497
  %605 = load i32, i32* %11, align 4, !dbg !2498
  %606 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2500
  %607 = getelementptr inbounds %struct.stream, %struct.stream* %606, i32 0, i32 0, !dbg !2501
  %608 = load i8*, i8** %607, align 8, !dbg !2501
  %609 = bitcast i8* %608 to i32*, !dbg !2502
  store i32 %605, i32* %609, align 4, !dbg !2503
  %610 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2504
  %611 = getelementptr inbounds %struct.stream, %struct.stream* %610, i32 0, i32 0, !dbg !2505
  %612 = load i8*, i8** %611, align 8, !dbg !2506
  %613 = getelementptr inbounds i8, i8* %612, i64 4, !dbg !2506
  store i8* %613, i8** %611, align 8, !dbg !2506
  %614 = load i32, i32* %12, align 4, !dbg !2507
  %615 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2509
  %616 = getelementptr inbounds %struct.stream, %struct.stream* %615, i32 0, i32 0, !dbg !2510
  %617 = load i8*, i8** %616, align 8, !dbg !2510
  %618 = bitcast i8* %617 to i32*, !dbg !2511
  store i32 %614, i32* %618, align 4, !dbg !2512
  %619 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2513
  %620 = getelementptr inbounds %struct.stream, %struct.stream* %619, i32 0, i32 0, !dbg !2514
  %621 = load i8*, i8** %620, align 8, !dbg !2515
  %622 = getelementptr inbounds i8, i8* %621, i64 4, !dbg !2515
  store i8* %622, i8** %620, align 8, !dbg !2515
  %623 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2516
  %624 = load i64, i64* %623, align 8, !dbg !2516
  %625 = and i64 %624, 4294967295, !dbg !2519
  %626 = trunc i64 %625 to i32, !dbg !2520
  %627 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2521
  %628 = getelementptr inbounds %struct.stream, %struct.stream* %627, i32 0, i32 0, !dbg !2522
  %629 = load i8*, i8** %628, align 8, !dbg !2522
  %630 = bitcast i8* %629 to i32*, !dbg !2523
  store i32 %626, i32* %630, align 4, !dbg !2524
  %631 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2525
  %632 = getelementptr inbounds %struct.stream, %struct.stream* %631, i32 0, i32 0, !dbg !2526
  %633 = load i8*, i8** %632, align 8, !dbg !2527
  %634 = getelementptr inbounds i8, i8* %633, i64 4, !dbg !2527
  store i8* %634, i8** %632, align 8, !dbg !2527
  %635 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2528
  %636 = load i64, i64* %635, align 8, !dbg !2528
  %637 = ashr i64 %636, 32, !dbg !2530
  %638 = and i64 %637, 4294967295, !dbg !2531
  %639 = trunc i64 %638 to i32, !dbg !2532
  %640 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2533
  %641 = getelementptr inbounds %struct.stream, %struct.stream* %640, i32 0, i32 0, !dbg !2534
  %642 = load i8*, i8** %641, align 8, !dbg !2534
  %643 = bitcast i8* %642 to i32*, !dbg !2535
  store i32 %639, i32* %643, align 4, !dbg !2536
  %644 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2537
  %645 = getelementptr inbounds %struct.stream, %struct.stream* %644, i32 0, i32 0, !dbg !2538
  %646 = load i8*, i8** %645, align 8, !dbg !2539
  %647 = getelementptr inbounds i8, i8* %646, i64 4, !dbg !2539
  store i8* %647, i8** %645, align 8, !dbg !2539
  %648 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2540
  %649 = load i64, i64* %648, align 8, !dbg !2540
  %650 = and i64 %649, 4294967295, !dbg !2543
  %651 = trunc i64 %650 to i32, !dbg !2544
  %652 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2545
  %653 = getelementptr inbounds %struct.stream, %struct.stream* %652, i32 0, i32 0, !dbg !2546
  %654 = load i8*, i8** %653, align 8, !dbg !2546
  %655 = bitcast i8* %654 to i32*, !dbg !2547
  store i32 %651, i32* %655, align 4, !dbg !2548
  %656 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2549
  %657 = getelementptr inbounds %struct.stream, %struct.stream* %656, i32 0, i32 0, !dbg !2550
  %658 = load i8*, i8** %657, align 8, !dbg !2551
  %659 = getelementptr inbounds i8, i8* %658, i64 4, !dbg !2551
  store i8* %659, i8** %657, align 8, !dbg !2551
  %660 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 8, !dbg !2552
  %661 = load i64, i64* %660, align 8, !dbg !2552
  %662 = ashr i64 %661, 32, !dbg !2554
  %663 = and i64 %662, 4294967295, !dbg !2555
  %664 = trunc i64 %663 to i32, !dbg !2556
  %665 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2557
  %666 = getelementptr inbounds %struct.stream, %struct.stream* %665, i32 0, i32 0, !dbg !2558
  %667 = load i8*, i8** %666, align 8, !dbg !2558
  %668 = bitcast i8* %667 to i32*, !dbg !2559
  store i32 %664, i32* %668, align 4, !dbg !2560
  %669 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2561
  %670 = getelementptr inbounds %struct.stream, %struct.stream* %669, i32 0, i32 0, !dbg !2562
  %671 = load i8*, i8** %670, align 8, !dbg !2563
  %672 = getelementptr inbounds i8, i8* %671, i64 4, !dbg !2563
  store i8* %672, i8** %670, align 8, !dbg !2563
  %673 = load i32, i32* %10, align 4, !dbg !2564
  %674 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2566
  %675 = getelementptr inbounds %struct.stream, %struct.stream* %674, i32 0, i32 0, !dbg !2567
  %676 = load i8*, i8** %675, align 8, !dbg !2567
  %677 = bitcast i8* %676 to i32*, !dbg !2568
  store i32 %673, i32* %677, align 4, !dbg !2569
  %678 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2570
  %679 = getelementptr inbounds %struct.stream, %struct.stream* %678, i32 0, i32 0, !dbg !2571
  %680 = load i8*, i8** %679, align 8, !dbg !2572
  %681 = getelementptr inbounds i8, i8* %680, i64 4, !dbg !2572
  store i8* %681, i8** %679, align 8, !dbg !2572
  %682 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2573
  %683 = load i8*, i8** %682, align 8, !dbg !2573
  %684 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2575
  %685 = load i8*, i8** %684, align 8, !dbg !2575
  %686 = ptrtoint i8* %683 to i64, !dbg !2576
  %687 = ptrtoint i8* %685 to i64, !dbg !2576
  %688 = sub i64 %686, %687, !dbg !2576
  %689 = trunc i64 %688 to i32, !dbg !2577
  %690 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2578
  %691 = getelementptr inbounds %struct.stream, %struct.stream* %690, i32 0, i32 0, !dbg !2579
  %692 = load i8*, i8** %691, align 8, !dbg !2579
  %693 = bitcast i8* %692 to i32*, !dbg !2580
  store i32 %689, i32* %693, align 4, !dbg !2581
  %694 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2582
  %695 = getelementptr inbounds %struct.stream, %struct.stream* %694, i32 0, i32 0, !dbg !2583
  %696 = load i8*, i8** %695, align 8, !dbg !2584
  %697 = getelementptr inbounds i8, i8* %696, i64 4, !dbg !2584
  store i8* %697, i8** %695, align 8, !dbg !2584
  %698 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2585
  %699 = getelementptr inbounds %struct.stream, %struct.stream* %698, i32 0, i32 0, !dbg !2587
  %700 = load i8*, i8** %699, align 8, !dbg !2587
  %701 = bitcast i8* %700 to i32*, !dbg !2588
  store i32 0, i32* %701, align 4, !dbg !2589
  %702 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2590
  %703 = getelementptr inbounds %struct.stream, %struct.stream* %702, i32 0, i32 0, !dbg !2591
  %704 = load i8*, i8** %703, align 8, !dbg !2592
  %705 = getelementptr inbounds i8, i8* %704, i64 4, !dbg !2592
  store i8* %705, i8** %703, align 8, !dbg !2592
  %706 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2593
  %707 = getelementptr inbounds %struct.stream, %struct.stream* %706, i32 0, i32 0, !dbg !2595
  %708 = load i8*, i8** %707, align 8, !dbg !2595
  %709 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2596
  %710 = load i8*, i8** %709, align 8, !dbg !2596
  %711 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2597
  %712 = load i8*, i8** %711, align 8, !dbg !2597
  %713 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2598
  %714 = load i8*, i8** %713, align 8, !dbg !2598
  %715 = ptrtoint i8* %712 to i64, !dbg !2599
  %716 = ptrtoint i8* %714 to i64, !dbg !2599
  %717 = sub i64 %715, %716, !dbg !2599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %708, i8* %710, i64 %717, i32 1, i1 false), !dbg !2600
  %718 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2601
  %719 = load i8*, i8** %718, align 8, !dbg !2601
  %720 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2602
  %721 = load i8*, i8** %720, align 8, !dbg !2602
  %722 = ptrtoint i8* %719 to i64, !dbg !2603
  %723 = ptrtoint i8* %721 to i64, !dbg !2603
  %724 = sub i64 %722, %723, !dbg !2603
  %725 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2604
  %726 = getelementptr inbounds %struct.stream, %struct.stream* %725, i32 0, i32 0, !dbg !2605
  %727 = load i8*, i8** %726, align 8, !dbg !2606
  %728 = getelementptr inbounds i8, i8* %727, i64 %724, !dbg !2606
  store i8* %728, i8** %726, align 8, !dbg !2606
  br label %771, !dbg !2607

; <label>:729:                                    ; preds = %151
  %730 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2608
  %731 = load i8*, i8** %730, align 8, !dbg !2608
  %732 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2610
  %733 = load i8*, i8** %732, align 8, !dbg !2610
  %734 = ptrtoint i8* %731 to i64, !dbg !2611
  %735 = ptrtoint i8* %733 to i64, !dbg !2611
  %736 = sub i64 %734, %735, !dbg !2611
  %737 = trunc i64 %736 to i32, !dbg !2612
  %738 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2613
  %739 = getelementptr inbounds %struct.stream, %struct.stream* %738, i32 0, i32 0, !dbg !2614
  %740 = load i8*, i8** %739, align 8, !dbg !2614
  %741 = bitcast i8* %740 to i32*, !dbg !2615
  store i32 %737, i32* %741, align 4, !dbg !2616
  %742 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2617
  %743 = getelementptr inbounds %struct.stream, %struct.stream* %742, i32 0, i32 0, !dbg !2618
  %744 = load i8*, i8** %743, align 8, !dbg !2619
  %745 = getelementptr inbounds i8, i8* %744, i64 4, !dbg !2619
  store i8* %745, i8** %743, align 8, !dbg !2619
  %746 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2620
  %747 = getelementptr inbounds %struct.stream, %struct.stream* %746, i32 0, i32 0, !dbg !2622
  %748 = load i8*, i8** %747, align 8, !dbg !2622
  %749 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2623
  %750 = load i8*, i8** %749, align 8, !dbg !2623
  %751 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2624
  %752 = load i8*, i8** %751, align 8, !dbg !2624
  %753 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2625
  %754 = load i8*, i8** %753, align 8, !dbg !2625
  %755 = ptrtoint i8* %752 to i64, !dbg !2626
  %756 = ptrtoint i8* %754 to i64, !dbg !2626
  %757 = sub i64 %755, %756, !dbg !2626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %748, i8* %750, i64 %757, i32 1, i1 false), !dbg !2627
  %758 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 1, !dbg !2628
  %759 = load i8*, i8** %758, align 8, !dbg !2628
  %760 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 2, !dbg !2629
  %761 = load i8*, i8** %760, align 8, !dbg !2629
  %762 = ptrtoint i8* %759 to i64, !dbg !2630
  %763 = ptrtoint i8* %761 to i64, !dbg !2630
  %764 = sub i64 %762, %763, !dbg !2630
  %765 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !2631
  %766 = getelementptr inbounds %struct.stream, %struct.stream* %765, i32 0, i32 0, !dbg !2632
  %767 = load i8*, i8** %766, align 8, !dbg !2633
  %768 = getelementptr inbounds i8, i8* %767, i64 %764, !dbg !2633
  store i8* %768, i8** %766, align 8, !dbg !2633
  br label %771, !dbg !2634

; <label>:769:                                    ; preds = %151
  %770 = load i32, i32* %7, align 4, !dbg !2635
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i32 0, i32 0), i32 %770), !dbg !2636
  store i32 -1073741811, i32* %5, align 4, !dbg !2637
  br label %772, !dbg !2637

; <label>:771:                                    ; preds = %729, %540, %359, %159
  store i32 0, i32* %5, align 4, !dbg !2638
  br label %772, !dbg !2638

; <label>:772:                                    ; preds = %771, %769, %149, %91, %75
  %773 = load i32, i32* %5, align 4, !dbg !2639
  ret i32 %773, !dbg !2639
}

; Function Attrs: nounwind
declare void @rewinddir(%struct.__dirstream*) #4

declare i32 @fnmatch(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define internal i32 @disk_create(i32, i32, i32, i32, i32, i8*, i32*) #0 !dbg !2640 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.__dirstream*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4096 x i8], align 16
  %21 = alloca %struct.stat, align 8
  store i32 %0, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2641, metadata !160), !dbg !2642
  store i32 %1, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2643, metadata !160), !dbg !2644
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2645, metadata !160), !dbg !2646
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2647, metadata !160), !dbg !2648
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2649, metadata !160), !dbg !2650
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2651, metadata !160), !dbg !2652
  store i32* %6, i32** %15, align 8
  call void @llvm.dbg.declare(metadata i32** %15, metadata !2653, metadata !160), !dbg !2654
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2655, metadata !160), !dbg !2656
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %17, metadata !2657, metadata !160), !dbg !2658
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2659, metadata !160), !dbg !2660
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2661, metadata !160), !dbg !2662
  call void @llvm.dbg.declare(metadata [4096 x i8]* %20, metadata !2663, metadata !160), !dbg !2664
  call void @llvm.dbg.declare(metadata %struct.stat* %21, metadata !2665, metadata !160), !dbg !2666
  %22 = load i32, i32* %9, align 4, !dbg !2667
  %23 = load i32, i32* %10, align 4, !dbg !2668
  %24 = load i32, i32* %11, align 4, !dbg !2669
  %25 = load i32, i32* %12, align 4, !dbg !2670
  %26 = load i32, i32* %13, align 4, !dbg !2671
  %27 = load i8*, i8** %14, align 8, !dbg !2672
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.31, i32 0, i32 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i8* %27), !dbg !2673
  store i32 0, i32* %16, align 4, !dbg !2674
  store %struct.__dirstream* null, %struct.__dirstream** %17, align 8, !dbg !2675
  store i32 0, i32* %18, align 4, !dbg !2676
  store i32 493, i32* %19, align 4, !dbg !2677
  %28 = load i8*, i8** %14, align 8, !dbg !2678
  %29 = icmp ne i8* %28, null, !dbg !2678
  br i1 %29, label %30, label %50, !dbg !2680

; <label>:30:                                     ; preds = %7
  %31 = load i8*, i8** %14, align 8, !dbg !2681
  %32 = load i8, i8* %31, align 1, !dbg !2683
  %33 = sext i8 %32 to i32, !dbg !2683
  %34 = icmp ne i32 %33, 0, !dbg !2683
  br i1 %34, label %35, label %50, !dbg !2684

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %14, align 8, !dbg !2685
  %37 = call i64 @strlen(i8* %36) #9, !dbg !2687
  %38 = sub i64 %37, 1, !dbg !2688
  %39 = load i8*, i8** %14, align 8, !dbg !2689
  %40 = getelementptr inbounds i8, i8* %39, i64 %38, !dbg !2689
  %41 = load i8, i8* %40, align 1, !dbg !2689
  %42 = sext i8 %41 to i32, !dbg !2689
  %43 = icmp eq i32 %42, 47, !dbg !2690
  br i1 %43, label %44, label %50, !dbg !2691

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** %14, align 8, !dbg !2692
  %46 = call i64 @strlen(i8* %45) #9, !dbg !2693
  %47 = sub i64 %46, 1, !dbg !2694
  %48 = load i8*, i8** %14, align 8, !dbg !2695
  %49 = getelementptr inbounds i8, i8* %48, i64 %47, !dbg !2695
  store i8 0, i8* %49, align 1, !dbg !2696
  br label %50, !dbg !2695

; <label>:50:                                     ; preds = %44, %35, %30, %7
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2697
  %52 = load i32, i32* %9, align 4, !dbg !2698
  %53 = zext i32 %52 to i64, !dbg !2699
  %54 = getelementptr inbounds [0 x %struct.rdpdr_device_info], [0 x %struct.rdpdr_device_info]* @g_rdpdr_device, i64 0, i64 %53, !dbg !2699
  %55 = getelementptr inbounds %struct.rdpdr_device_info, %struct.rdpdr_device_info* %54, i32 0, i32 3, !dbg !2700
  %56 = load i8*, i8** %55, align 8, !dbg !2700
  %57 = load i8*, i8** %14, align 8, !dbg !2701
  %58 = icmp ne i8* %57, null, !dbg !2701
  br i1 %58, label %59, label %61, !dbg !2701

; <label>:59:                                     ; preds = %50
  %60 = load i8*, i8** %14, align 8, !dbg !2702
  br label %62, !dbg !2704

; <label>:61:                                     ; preds = %50
  br label %62, !dbg !2705

; <label>:62:                                     ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i32 0, i32 0), %61 ], !dbg !2707
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %56, i8* %63) #8, !dbg !2709
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2710
  %66 = call i8* @strstr(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)) #9, !dbg !2712
  %67 = icmp ne i8* %66, null, !dbg !2712
  br i1 %67, label %68, label %69, !dbg !2713

; <label>:68:                                     ; preds = %62
  store i32 -1073741790, i32* %8, align 4, !dbg !2714
  br label %246, !dbg !2714

; <label>:69:                                     ; preds = %62
  %70 = load i32, i32* %12, align 4, !dbg !2716
  switch i32 %70, label %86 [
    i32 5, label %71
    i32 2, label %76
    i32 3, label %79
    i32 1, label %82
    i32 4, label %83
  ], !dbg !2717

; <label>:71:                                     ; preds = %69
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2718
  %73 = call i32 @unlink(i8* %72) #8, !dbg !2720
  %74 = load i32, i32* %18, align 4, !dbg !2721
  %75 = or i32 %74, 64, !dbg !2721
  store i32 %75, i32* %18, align 4, !dbg !2721
  br label %86, !dbg !2722

; <label>:76:                                     ; preds = %69
  %77 = load i32, i32* %18, align 4, !dbg !2723
  %78 = or i32 %77, 192, !dbg !2723
  store i32 %78, i32* %18, align 4, !dbg !2723
  br label %86, !dbg !2724

; <label>:79:                                     ; preds = %69
  %80 = load i32, i32* %18, align 4, !dbg !2725
  %81 = or i32 %80, 64, !dbg !2725
  store i32 %81, i32* %18, align 4, !dbg !2725
  br label %86, !dbg !2726

; <label>:82:                                     ; preds = %69
  br label %86, !dbg !2727

; <label>:83:                                     ; preds = %69
  %84 = load i32, i32* %18, align 4, !dbg !2728
  %85 = or i32 %84, 512, !dbg !2728
  store i32 %85, i32* %18, align 4, !dbg !2728
  br label %86, !dbg !2729

; <label>:86:                                     ; preds = %69, %83, %82, %79, %76, %71
  %87 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2730
  %88 = call i32 @stat(i8* %87, %struct.stat* %21) #8, !dbg !2732
  %89 = icmp eq i32 %88, 0, !dbg !2733
  br i1 %89, label %90, label %104, !dbg !2734

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 3, !dbg !2735
  %92 = load i32, i32* %91, align 8, !dbg !2735
  %93 = and i32 %92, 61440, !dbg !2737
  %94 = icmp eq i32 %93, 16384, !dbg !2738
  br i1 %94, label %95, label %104, !dbg !2739

; <label>:95:                                     ; preds = %90
  %96 = load i32, i32* %13, align 4, !dbg !2740
  %97 = and i32 %96, 64, !dbg !2743
  %98 = icmp ne i32 %97, 0, !dbg !2743
  br i1 %98, label %99, label %100, !dbg !2744

; <label>:99:                                     ; preds = %95
  store i32 -1073741638, i32* %8, align 4, !dbg !2745
  br label %246, !dbg !2745

; <label>:100:                                    ; preds = %95
  %101 = load i32, i32* %13, align 4, !dbg !2746
  %102 = or i32 %101, 1, !dbg !2746
  store i32 %102, i32* %13, align 4, !dbg !2746
  br label %103

; <label>:103:                                    ; preds = %100
  br label %104, !dbg !2747

; <label>:104:                                    ; preds = %103, %90, %86
  %105 = load i32, i32* %13, align 4, !dbg !2748
  %106 = and i32 %105, 1, !dbg !2750
  %107 = icmp ne i32 %106, 0, !dbg !2750
  br i1 %107, label %108, label %133, !dbg !2751

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %18, align 4, !dbg !2752
  %110 = and i32 %109, 64, !dbg !2755
  %111 = icmp ne i32 %110, 0, !dbg !2755
  br i1 %111, label %112, label %116, !dbg !2756

; <label>:112:                                    ; preds = %108
  %113 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2757
  %114 = load i32, i32* %19, align 4, !dbg !2759
  %115 = call i32 @mkdir(i8* %113, i32 %114) #8, !dbg !2760
  br label %116, !dbg !2761

; <label>:116:                                    ; preds = %112, %108
  %117 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2762
  %118 = call %struct.__dirstream* @opendir(i8* %117), !dbg !2763
  store %struct.__dirstream* %118, %struct.__dirstream** %17, align 8, !dbg !2764
  %119 = load %struct.__dirstream*, %struct.__dirstream** %17, align 8, !dbg !2765
  %120 = icmp ne %struct.__dirstream* %119, null, !dbg !2765
  br i1 %120, label %130, label %121, !dbg !2767

; <label>:121:                                    ; preds = %116
  %122 = call i32* @__errno_location() #1, !dbg !2768
  %123 = load i32, i32* %122, align 4, !dbg !2770
  switch i32 %123, label %126 [
    i32 13, label %124
    i32 2, label %125
  ], !dbg !2771

; <label>:124:                                    ; preds = %121
  store i32 -1073741790, i32* %8, align 4, !dbg !2772
  br label %246, !dbg !2772

; <label>:125:                                    ; preds = %121
  store i32 -1073741809, i32* %8, align 4, !dbg !2774
  br label %246, !dbg !2774

; <label>:126:                                    ; preds = %121
  %127 = call i32* @__errno_location() #1, !dbg !2775
  %128 = load i32, i32* %127, align 4, !dbg !2776
  %129 = call i8* @strerror(i32 %128) #8, !dbg !2777
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0), i8* %129), !dbg !2779
  store i32 -1073741809, i32* %8, align 4, !dbg !2780
  br label %246, !dbg !2780

; <label>:130:                                    ; preds = %116
  %131 = load %struct.__dirstream*, %struct.__dirstream** %17, align 8, !dbg !2781
  %132 = call i32 @dirfd(%struct.__dirstream* %131) #8, !dbg !2782
  store i32 %132, i32* %16, align 4, !dbg !2783
  br label %189, !dbg !2784

; <label>:133:                                    ; preds = %104
  %134 = load i32, i32* %10, align 4, !dbg !2785
  %135 = and i32 %134, 268435456, !dbg !2788
  %136 = icmp ne i32 %135, 0, !dbg !2788
  br i1 %136, label %145, label %137, !dbg !2789

; <label>:137:                                    ; preds = %133
  %138 = load i32, i32* %10, align 4, !dbg !2790
  %139 = and i32 %138, -2147483648, !dbg !2792
  %140 = icmp ne i32 %139, 0, !dbg !2792
  br i1 %140, label %141, label %148, !dbg !2793

; <label>:141:                                    ; preds = %137
  %142 = load i32, i32* %10, align 4, !dbg !2794
  %143 = and i32 %142, 1073741824, !dbg !2796
  %144 = icmp ne i32 %143, 0, !dbg !2796
  br i1 %144, label %145, label %148, !dbg !2797

; <label>:145:                                    ; preds = %141, %133
  %146 = load i32, i32* %18, align 4, !dbg !2799
  %147 = or i32 %146, 2, !dbg !2799
  store i32 %147, i32* %18, align 4, !dbg !2799
  br label %162, !dbg !2801

; <label>:148:                                    ; preds = %141, %137
  %149 = load i32, i32* %10, align 4, !dbg !2802
  %150 = and i32 %149, 1073741824, !dbg !2804
  %151 = icmp ne i32 %150, 0, !dbg !2804
  br i1 %151, label %152, label %159, !dbg !2805

; <label>:152:                                    ; preds = %148
  %153 = load i32, i32* %10, align 4, !dbg !2806
  %154 = and i32 %153, -2147483648, !dbg !2808
  %155 = icmp ne i32 %154, 0, !dbg !2808
  br i1 %155, label %159, label %156, !dbg !2809

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* %18, align 4, !dbg !2810
  %158 = or i32 %157, 1, !dbg !2810
  store i32 %158, i32* %18, align 4, !dbg !2810
  br label %161, !dbg !2812

; <label>:159:                                    ; preds = %152, %148
  %160 = load i32, i32* %18, align 4, !dbg !2813
  store i32 %160, i32* %18, align 4, !dbg !2813
  br label %161

; <label>:161:                                    ; preds = %159, %156
  br label %162

; <label>:162:                                    ; preds = %161, %145
  %163 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2815
  %164 = load i32, i32* %18, align 4, !dbg !2816
  %165 = load i32, i32* %19, align 4, !dbg !2817
  %166 = call i32 @open_weak_exclusive(i8* %163, i32 %164, i32 %165), !dbg !2818
  store i32 %166, i32* %16, align 4, !dbg !2819
  %167 = load i32, i32* %16, align 4, !dbg !2820
  %168 = icmp eq i32 %167, -1, !dbg !2822
  br i1 %168, label %169, label %180, !dbg !2823

; <label>:169:                                    ; preds = %162
  %170 = call i32* @__errno_location() #1, !dbg !2824
  %171 = load i32, i32* %170, align 4, !dbg !2826
  switch i32 %171, label %176 [
    i32 21, label %172
    i32 13, label %173
    i32 2, label %174
    i32 17, label %175
  ], !dbg !2827

; <label>:172:                                    ; preds = %169
  store i32 -1073741638, i32* %8, align 4, !dbg !2828
  br label %246, !dbg !2828

; <label>:173:                                    ; preds = %169
  store i32 -1073741790, i32* %8, align 4, !dbg !2830
  br label %246, !dbg !2830

; <label>:174:                                    ; preds = %169
  store i32 -1073741809, i32* %8, align 4, !dbg !2831
  br label %246, !dbg !2831

; <label>:175:                                    ; preds = %169
  store i32 -1073741771, i32* %8, align 4, !dbg !2832
  br label %246, !dbg !2832

; <label>:176:                                    ; preds = %169
  %177 = call i32* @__errno_location() #1, !dbg !2833
  %178 = load i32, i32* %177, align 4, !dbg !2834
  %179 = call i8* @strerror(i32 %178) #8, !dbg !2835
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i8* %179), !dbg !2837
  store i32 -1073741809, i32* %8, align 4, !dbg !2838
  br label %246, !dbg !2838

; <label>:180:                                    ; preds = %162
  %181 = load i32, i32* %16, align 4, !dbg !2839
  %182 = call i32 (i32, i32, ...) @fcntl(i32 %181, i32 4, i32 2048), !dbg !2841
  %183 = icmp eq i32 %182, -1, !dbg !2842
  br i1 %183, label %184, label %188, !dbg !2843

; <label>:184:                                    ; preds = %180
  %185 = call i32* @__errno_location() #1, !dbg !2844
  %186 = load i32, i32* %185, align 4, !dbg !2845
  %187 = call i8* @strerror(i32 %186) #8, !dbg !2846
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i8* %187), !dbg !2848
  br label %188, !dbg !2850

; <label>:188:                                    ; preds = %184, %180
  br label %189

; <label>:189:                                    ; preds = %188, %130
  %190 = load i32, i32* %16, align 4, !dbg !2851
  %191 = icmp sge i32 %190, 256, !dbg !2853
  br i1 %191, label %192, label %194, !dbg !2854

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %16, align 4, !dbg !2855
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.37, i32 0, i32 0), i32 %193, i32 256), !dbg !2857
  call void @exit(i32 70) #10, !dbg !2858
  unreachable, !dbg !2858

; <label>:194:                                    ; preds = %189
  %195 = load %struct.__dirstream*, %struct.__dirstream** %17, align 8, !dbg !2859
  %196 = icmp ne %struct.__dirstream* %195, null, !dbg !2859
  br i1 %196, label %197, label %203, !dbg !2861

; <label>:197:                                    ; preds = %194
  %198 = load %struct.__dirstream*, %struct.__dirstream** %17, align 8, !dbg !2862
  %199 = load i32, i32* %16, align 4, !dbg !2863
  %200 = sext i32 %199 to i64, !dbg !2864
  %201 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %200, !dbg !2864
  %202 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %201, i32 0, i32 4, !dbg !2865
  store %struct.__dirstream* %198, %struct.__dirstream** %202, align 16, !dbg !2866
  br label %208, !dbg !2864

; <label>:203:                                    ; preds = %194
  %204 = load i32, i32* %16, align 4, !dbg !2867
  %205 = sext i32 %204 to i64, !dbg !2868
  %206 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %205, !dbg !2868
  %207 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %206, i32 0, i32 4, !dbg !2869
  store %struct.__dirstream* null, %struct.__dirstream** %207, align 16, !dbg !2870
  br label %208

; <label>:208:                                    ; preds = %203, %197
  %209 = load i32, i32* %9, align 4, !dbg !2871
  %210 = load i32, i32* %16, align 4, !dbg !2872
  %211 = sext i32 %210 to i64, !dbg !2873
  %212 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %211, !dbg !2873
  %213 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %212, i32 0, i32 0, !dbg !2874
  store i32 %209, i32* %213, align 16, !dbg !2875
  %214 = load i32, i32* %13, align 4, !dbg !2876
  %215 = load i32, i32* %16, align 4, !dbg !2877
  %216 = sext i32 %215 to i64, !dbg !2878
  %217 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %216, !dbg !2878
  %218 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %217, i32 0, i32 1, !dbg !2879
  store i32 %214, i32* %218, align 4, !dbg !2880
  %219 = load i32, i32* %10, align 4, !dbg !2881
  %220 = load i32, i32* %16, align 4, !dbg !2882
  %221 = sext i32 %220 to i64, !dbg !2883
  %222 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %221, !dbg !2883
  %223 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %222, i32 0, i32 2, !dbg !2884
  store i32 %219, i32* %223, align 8, !dbg !2885
  %224 = load i32, i32* %16, align 4, !dbg !2886
  %225 = sext i32 %224 to i64, !dbg !2887
  %226 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %225, !dbg !2887
  %227 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %226, i32 0, i32 3, !dbg !2888
  %228 = getelementptr inbounds [4096 x i8], [4096 x i8]* %227, i32 0, i32 0, !dbg !2887
  %229 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i32 0, i32 0, !dbg !2889
  %230 = call i8* @strncpy(i8* %228, i8* %229, i64 4095) #8, !dbg !2890
  %231 = load i32, i32* %16, align 4, !dbg !2891
  %232 = sext i32 %231 to i64, !dbg !2892
  %233 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %232, !dbg !2892
  %234 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %233, i32 0, i32 7, !dbg !2893
  store i32 0, i32* %234, align 16, !dbg !2894
  %235 = load i32, i32* %10, align 4, !dbg !2895
  %236 = and i32 %235, 268435456, !dbg !2897
  %237 = icmp ne i32 %236, 0, !dbg !2897
  br i1 %237, label %242, label %238, !dbg !2898

; <label>:238:                                    ; preds = %208
  %239 = load i32, i32* %10, align 4, !dbg !2899
  %240 = and i32 %239, 1073741824, !dbg !2901
  %241 = icmp ne i32 %240, 0, !dbg !2901
  br i1 %241, label %242, label %243, !dbg !2902

; <label>:242:                                    ; preds = %238, %208
  store i32 1, i32* @g_notify_stamp, align 4, !dbg !2903
  br label %243, !dbg !2904

; <label>:243:                                    ; preds = %242, %238
  %244 = load i32, i32* %16, align 4, !dbg !2905
  %245 = load i32*, i32** %15, align 8, !dbg !2906
  store i32 %244, i32* %245, align 4, !dbg !2907
  store i32 0, i32* %8, align 4, !dbg !2908
  br label %246, !dbg !2908

; <label>:246:                                    ; preds = %243, %176, %175, %174, %173, %172, %126, %125, %124, %99, %68
  %247 = load i32, i32* %8, align 4, !dbg !2909
  ret i32 %247, !dbg !2909
}

; Function Attrs: nounwind uwtable
define internal i32 @disk_close(i32) #0 !dbg !2910 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fileinfo*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2911, metadata !160), !dbg !2912
  call void @llvm.dbg.declare(metadata %struct.fileinfo** %4, metadata !2913, metadata !160), !dbg !2914
  %5 = load i32, i32* %3, align 4, !dbg !2915
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), i32 %5), !dbg !2916
  %6 = load i32, i32* %3, align 4, !dbg !2917
  %7 = zext i32 %6 to i64, !dbg !2918
  %8 = getelementptr inbounds [256 x %struct.fileinfo], [256 x %struct.fileinfo]* @g_fileinfo, i64 0, i64 %7, !dbg !2918
  store %struct.fileinfo* %8, %struct.fileinfo** %4, align 8, !dbg !2919
  %9 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2920
  %10 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %9, i32 0, i32 2, !dbg !2922
  %11 = load i32, i32* %10, align 8, !dbg !2922
  %12 = and i32 %11, 268435456, !dbg !2923
  %13 = icmp ne i32 %12, 0, !dbg !2923
  br i1 %13, label %20, label %14, !dbg !2924

; <label>:14:                                     ; preds = %1
  %15 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2925
  %16 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %15, i32 0, i32 2, !dbg !2927
  %17 = load i32, i32* %16, align 8, !dbg !2927
  %18 = and i32 %17, 1073741824, !dbg !2928
  %19 = icmp ne i32 %18, 0, !dbg !2928
  br i1 %19, label %20, label %21, !dbg !2929

; <label>:20:                                     ; preds = %14, %1
  store i32 1, i32* @g_notify_stamp, align 4, !dbg !2930
  br label %21, !dbg !2931

; <label>:21:                                     ; preds = %20, %14
  %22 = load i32, i32* %3, align 4, !dbg !2932
  %23 = call i32 @rdpdr_abort_io(i32 %22, i32 0, i32 -1073741536), !dbg !2933
  %24 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2934
  %25 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %24, i32 0, i32 4, !dbg !2936
  %26 = load %struct.__dirstream*, %struct.__dirstream** %25, align 8, !dbg !2936
  %27 = icmp ne %struct.__dirstream* %26, null, !dbg !2934
  br i1 %27, label %28, label %57, !dbg !2937

; <label>:28:                                     ; preds = %21
  %29 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2938
  %30 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %29, i32 0, i32 4, !dbg !2941
  %31 = load %struct.__dirstream*, %struct.__dirstream** %30, align 8, !dbg !2941
  %32 = call i32 @closedir(%struct.__dirstream* %31), !dbg !2942
  %33 = icmp slt i32 %32, 0, !dbg !2943
  br i1 %33, label %34, label %38, !dbg !2944

; <label>:34:                                     ; preds = %28
  %35 = call i32* @__errno_location() #1, !dbg !2945
  %36 = load i32, i32* %35, align 4, !dbg !2947
  %37 = call i8* @strerror(i32 %36) #8, !dbg !2948
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i8* %37), !dbg !2950
  store i32 -1073741816, i32* %2, align 4, !dbg !2952
  br label %85, !dbg !2952

; <label>:38:                                     ; preds = %28
  %39 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2953
  %40 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %39, i32 0, i32 7, !dbg !2955
  %41 = load i32, i32* %40, align 8, !dbg !2955
  %42 = icmp ne i32 %41, 0, !dbg !2953
  br i1 %42, label %43, label %54, !dbg !2956

; <label>:43:                                     ; preds = %38
  %44 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2957
  %45 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %44, i32 0, i32 3, !dbg !2959
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %45, i32 0, i32 0, !dbg !2957
  %47 = call i32 @rmdir(i8* %46) #8, !dbg !2960
  %48 = icmp slt i32 %47, 0, !dbg !2961
  br i1 %48, label %49, label %53, !dbg !2962

; <label>:49:                                     ; preds = %43
  %50 = call i32* @__errno_location() #1, !dbg !2963
  %51 = load i32, i32* %50, align 4, !dbg !2965
  %52 = call i8* @strerror(i32 %51) #8, !dbg !2966
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0), i8* %52), !dbg !2968
  store i32 -1073741790, i32* %2, align 4, !dbg !2969
  br label %85, !dbg !2969

; <label>:53:                                     ; preds = %43
  br label %54, !dbg !2970

; <label>:54:                                     ; preds = %53, %38
  %55 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2972
  %56 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %55, i32 0, i32 7, !dbg !2973
  store i32 0, i32* %56, align 8, !dbg !2974
  br label %84, !dbg !2975

; <label>:57:                                     ; preds = %21
  %58 = load i32, i32* %3, align 4, !dbg !2976
  %59 = call i32 @close(i32 %58), !dbg !2979
  %60 = icmp slt i32 %59, 0, !dbg !2980
  br i1 %60, label %61, label %65, !dbg !2981

; <label>:61:                                     ; preds = %57
  %62 = call i32* @__errno_location() #1, !dbg !2982
  %63 = load i32, i32* %62, align 4, !dbg !2984
  %64 = call i8* @strerror(i32 %63) #8, !dbg !2985
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0), i8* %64), !dbg !2987
  store i32 -1073741816, i32* %2, align 4, !dbg !2989
  br label %85, !dbg !2989

; <label>:65:                                     ; preds = %57
  %66 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2990
  %67 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %66, i32 0, i32 7, !dbg !2992
  %68 = load i32, i32* %67, align 8, !dbg !2992
  %69 = icmp ne i32 %68, 0, !dbg !2990
  br i1 %69, label %70, label %81, !dbg !2993

; <label>:70:                                     ; preds = %65
  %71 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !2994
  %72 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %71, i32 0, i32 3, !dbg !2996
  %73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %72, i32 0, i32 0, !dbg !2994
  %74 = call i32 @unlink(i8* %73) #8, !dbg !2997
  %75 = icmp slt i32 %74, 0, !dbg !2998
  br i1 %75, label %76, label %80, !dbg !2999

; <label>:76:                                     ; preds = %70
  %77 = call i32* @__errno_location() #1, !dbg !3000
  %78 = load i32, i32* %77, align 4, !dbg !3002
  %79 = call i8* @strerror(i32 %78) #8, !dbg !3003
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), i8* %79), !dbg !3005
  store i32 -1073741790, i32* %2, align 4, !dbg !3006
  br label %85, !dbg !3006

; <label>:80:                                     ; preds = %70
  br label %81, !dbg !3007

; <label>:81:                                     ; preds = %80, %65
  %82 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8, !dbg !3009
  %83 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %82, i32 0, i32 7, !dbg !3010
  store i32 0, i32* %83, align 8, !dbg !3011
  br label %84

; <label>:84:                                     ; preds = %81, %54
  store i32 0, i32* %2, align 4, !dbg !3012
  br label %85, !dbg !3012

; <label>:85:                                     ; preds = %84, %76, %61, %49, %34
  %86 = load i32, i32* %2, align 4, !dbg !3013
  ret i32 %86, !dbg !3013
}

; Function Attrs: nounwind uwtable
define internal i32 @disk_read(i32, i8*, i32, i32, i32*) #0 !dbg !3014 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3015, metadata !160), !dbg !3016
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3017, metadata !160), !dbg !3018
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3019, metadata !160), !dbg !3020
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3021, metadata !160), !dbg !3022
  store i32* %4, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !3023, metadata !160), !dbg !3024
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3025, metadata !160), !dbg !3026
  %13 = load i32, i32* %7, align 4, !dbg !3027
  %14 = load i32, i32* %10, align 4, !dbg !3028
  %15 = zext i32 %14 to i64, !dbg !3028
  %16 = call i64 @lseek(i32 %13, i64 %15, i32 0) #8, !dbg !3029
  %17 = load i32, i32* %7, align 4, !dbg !3030
  %18 = load i8*, i8** %8, align 8, !dbg !3031
  %19 = load i32, i32* %9, align 4, !dbg !3032
  %20 = zext i32 %19 to i64, !dbg !3032
  %21 = call i64 @read(i32 %17, i8* %18, i64 %20), !dbg !3033
  %22 = trunc i64 %21 to i32, !dbg !3033
  store i32 %22, i32* %12, align 4, !dbg !3034
  %23 = load i32, i32* %12, align 4, !dbg !3035
  %24 = icmp slt i32 %23, 0, !dbg !3037
  br i1 %24, label %25, label %34, !dbg !3038

; <label>:25:                                     ; preds = %5
  %26 = load i32*, i32** %11, align 8, !dbg !3039
  store i32 0, i32* %26, align 4, !dbg !3041
  %27 = call i32* @__errno_location() #1, !dbg !3042
  %28 = load i32, i32* %27, align 4, !dbg !3043
  switch i32 %28, label %30 [
    i32 21, label %29
  ], !dbg !3044

; <label>:29:                                     ; preds = %25
  store i32 1, i32* %6, align 4, !dbg !3045
  br label %37, !dbg !3045

; <label>:30:                                     ; preds = %25
  %31 = call i32* @__errno_location() #1, !dbg !3047
  %32 = load i32, i32* %31, align 4, !dbg !3048
  %33 = call i8* @strerror(i32 %32) #8, !dbg !3049
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0), i8* %33), !dbg !3051
  store i32 -1073741811, i32* %6, align 4, !dbg !3052
  br label %37, !dbg !3052

; <label>:34:                                     ; preds = %5
  %35 = load i32, i32* %12, align 4, !dbg !3053
  %36 = load i32*, i32** %11, align 8, !dbg !3054
  store i32 %35, i32* %36, align 4, !dbg !3055
  store i32 0, i32* %6, align 4, !dbg !3056
  br label %37, !dbg !3056

; <label>:37:                                     ; preds = %34, %30, %29
  %38 = load i32, i32* %6, align 4, !dbg !3057
  ret i32 %38, !dbg !3057
}

; Function Attrs: nounwind uwtable
define internal i32 @disk_write(i32, i8*, i32, i32, i32*) #0 !dbg !3058 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3059, metadata !160), !dbg !3060
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3061, metadata !160), !dbg !3062
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3063, metadata !160), !dbg !3064
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3065, metadata !160), !dbg !3066
  store i32* %4, i32** %11, align 8
  call void @llvm.dbg.declare(metadata i32** %11, metadata !3067, metadata !160), !dbg !3068
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3069, metadata !160), !dbg !3070
  %13 = load i32, i32* %7, align 4, !dbg !3071
  %14 = load i32, i32* %10, align 4, !dbg !3072
  %15 = zext i32 %14 to i64, !dbg !3072
  %16 = call i64 @lseek(i32 %13, i64 %15, i32 0) #8, !dbg !3073
  %17 = load i32, i32* %7, align 4, !dbg !3074
  %18 = load i8*, i8** %8, align 8, !dbg !3075
  %19 = load i32, i32* %9, align 4, !dbg !3076
  %20 = zext i32 %19 to i64, !dbg !3076
  %21 = call i64 @write(i32 %17, i8* %18, i64 %20), !dbg !3077
  %22 = trunc i64 %21 to i32, !dbg !3077
  store i32 %22, i32* %12, align 4, !dbg !3078
  %23 = load i32, i32* %12, align 4, !dbg !3079
  %24 = icmp slt i32 %23, 0, !dbg !3081
  br i1 %24, label %25, label %34, !dbg !3082

; <label>:25:                                     ; preds = %5
  %26 = call i32* @__errno_location() #1, !dbg !3083
  %27 = load i32, i32* %26, align 4, !dbg !3085
  %28 = call i8* @strerror(i32 %27) #8, !dbg !3086
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i8* %28), !dbg !3088
  %29 = load i32*, i32** %11, align 8, !dbg !3090
  store i32 0, i32* %29, align 4, !dbg !3091
  %30 = call i32* @__errno_location() #1, !dbg !3092
  %31 = load i32, i32* %30, align 4, !dbg !3093
  switch i32 %31, label %33 [
    i32 28, label %32
  ], !dbg !3094

; <label>:32:                                     ; preds = %25
  store i32 -1073741697, i32* %6, align 4, !dbg !3095
  br label %37, !dbg !3095

; <label>:33:                                     ; preds = %25
  store i32 -1073741790, i32* %6, align 4, !dbg !3097
  br label %37, !dbg !3097

; <label>:34:                                     ; preds = %5
  %35 = load i32, i32* %12, align 4, !dbg !3098
  %36 = load i32*, i32** %11, align 8, !dbg !3099
  store i32 %35, i32* %36, align 4, !dbg !3100
  store i32 0, i32* %6, align 4, !dbg !3101
  br label %37, !dbg !3101

; <label>:37:                                     ; preds = %34, %33, %32
  %38 = load i32, i32* %6, align 4, !dbg !3102
  ret i32 %38, !dbg !3102
}

; Function Attrs: nounwind uwtable
define internal i32 @disk_device_control(i32, i32, %struct.stream*, %struct.stream*) #0 !dbg !3103 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stream*, align 8
  %9 = alloca %struct.stream*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3104, metadata !160), !dbg !3105
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3106, metadata !160), !dbg !3107
  store %struct.stream* %2, %struct.stream** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !3108, metadata !160), !dbg !3109
  store %struct.stream* %3, %struct.stream** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %9, metadata !3110, metadata !160), !dbg !3111
  %10 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !3112
  %11 = load %struct.stream*, %struct.stream** %9, align 8, !dbg !3113
  %12 = load i32, i32* %6, align 4, !dbg !3114
  %13 = load i32, i32* %7, align 4, !dbg !3115
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.45, i32 0, i32 0), i32 %12, i32 %13), !dbg !3116
  %14 = load i32, i32* %7, align 4, !dbg !3117
  %15 = lshr i32 %14, 16, !dbg !3119
  %16 = icmp ne i32 %15, 20, !dbg !3120
  br i1 %16, label %21, label %17, !dbg !3121

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %7, align 4, !dbg !3122
  %19 = lshr i32 %18, 16, !dbg !3124
  %20 = icmp ne i32 %19, 9, !dbg !3125
  br i1 %20, label %21, label %22, !dbg !3126

; <label>:21:                                     ; preds = %17, %4
  store i32 -1073741811, i32* %5, align 4, !dbg !3127
  br label %31, !dbg !3127

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %7, align 4, !dbg !3128
  %24 = lshr i32 %23, 2, !dbg !3128
  store i32 %24, i32* %7, align 4, !dbg !3128
  %25 = load i32, i32* %7, align 4, !dbg !3129
  %26 = and i32 %25, 4095, !dbg !3129
  store i32 %26, i32* %7, align 4, !dbg !3129
  %27 = load i32, i32* %7, align 4, !dbg !3130
  switch i32 %27, label %29 [
    i32 25, label %28
    i32 42, label %28
  ], !dbg !3131

; <label>:28:                                     ; preds = %22, %22
  br label %29, !dbg !3132

; <label>:29:                                     ; preds = %22, %28
  %30 = load i32, i32* %7, align 4, !dbg !3133
  call void (i32, i32, i8*, ...) @logger(i32 8, i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.46, i32 0, i32 0), i32 %30), !dbg !3135
  store i32 -1073741811, i32* %5, align 4, !dbg !3136
  br label %31, !dbg !3136

; <label>:31:                                     ; preds = %29, %21
  %32 = load i32, i32* %5, align 4, !dbg !3137
  ret i32 %32, !dbg !3137
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #4

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

declare i64 @write(i32, i8*, i64) #2

declare void @xfree(i8*) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8*, i8*) #4

; Function Attrs: nounwind
declare %struct.mntent* @getmntent(%struct._IO_FILE*) #4

declare i32 @str_startswith(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

declare i32 @open(i8*, i32, ...) #2

declare i64 @read(i32, i8*, i64) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream*) #4

; Function Attrs: nounwind uwtable
define internal i32 @open_weak_exclusive(i8*, i32, i32) #0 !dbg !3138 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3143, metadata !160), !dbg !3144
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3145, metadata !160), !dbg !3146
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3147, metadata !160), !dbg !3148
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3149, metadata !160), !dbg !3150
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !3151, metadata !160), !dbg !3152
  %10 = load i8*, i8** %5, align 8, !dbg !3153
  %11 = load i32, i32* %6, align 4, !dbg !3154
  %12 = load i32, i32* %7, align 4, !dbg !3155
  %13 = call i32 (i8*, i32, ...) @open(i8* %10, i32 %11, i32 %12), !dbg !3156
  store i32 %13, i32* %8, align 4, !dbg !3157
  %14 = load i32, i32* %8, align 4, !dbg !3158
  %15 = icmp ne i32 %14, -1, !dbg !3160
  br i1 %15, label %20, label %16, !dbg !3161

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %6, align 4, !dbg !3162
  %18 = and i32 %17, 128, !dbg !3164
  %19 = icmp ne i32 %18, 0, !dbg !3164
  br i1 %19, label %22, label %20, !dbg !3165

; <label>:20:                                     ; preds = %16, %3
  %21 = load i32, i32* %8, align 4, !dbg !3166
  store i32 %21, i32* %4, align 4, !dbg !3168
  br label %39, !dbg !3168

; <label>:22:                                     ; preds = %16
  %23 = call i32* @__errno_location() #1, !dbg !3169
  %24 = load i32, i32* %23, align 4, !dbg !3170
  switch i32 %24, label %27 [
    i32 13, label %25
    i32 17, label %25
    i32 4, label %25
    i32 21, label %25
    i32 40, label %25
    i32 36, label %25
    i32 2, label %25
    i32 20, label %25
  ], !dbg !3171

; <label>:25:                                     ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  %26 = load i32, i32* %8, align 4, !dbg !3172
  store i32 %26, i32* %4, align 4, !dbg !3174
  br label %39, !dbg !3174

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %5, align 8, !dbg !3175
  %29 = call i32 @stat(i8* %28, %struct.stat* %9) #8, !dbg !3177
  %30 = icmp ne i32 %29, -1, !dbg !3178
  br i1 %30, label %31, label %33, !dbg !3179

; <label>:31:                                     ; preds = %27
  %32 = call i32* @__errno_location() #1, !dbg !3180
  store i32 17, i32* %32, align 4, !dbg !3182
  store i32 -1, i32* %4, align 4, !dbg !3183
  br label %39, !dbg !3183

; <label>:33:                                     ; preds = %27
  %34 = load i8*, i8** %5, align 8, !dbg !3184
  %35 = load i32, i32* %6, align 4, !dbg !3186
  %36 = and i32 %35, -129, !dbg !3187
  %37 = load i32, i32* %7, align 4, !dbg !3188
  %38 = call i32 (i8*, i32, ...) @open(i8* %34, i32 %36, i32 %37), !dbg !3189
  store i32 %38, i32* %4, align 4, !dbg !3190
  br label %39, !dbg !3190

; <label>:39:                                     ; preds = %33, %31, %25, %20
  %40 = load i32, i32* %4, align 4, !dbg !3191
  ret i32 %40, !dbg !3191
}

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

declare i32 @rdpdr_abort_io(i32, i32, i32) #2

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!153, !154}
!llvm.ident = !{!155}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !44)
!1 = !DIFile(filename: "[inter]disk.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !{!23, !33, !34, !35, !36, !38, !43}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "DISK_DEVICE", file: !25, line: 240, baseType: !26)
!25 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdpdr_disk_device_info", file: !25, line: 236, size: 32768, align: 8, elements: !27)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !25, line: 238, baseType: !29, size: 32768, align: 8)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, align: 8, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 4096)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !25, line: 43, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !39, line: 75, baseType: !40)
!39 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !41, line: 139, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!42 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!43 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!44 = !{!45, !49, !91, !133, !141}
!45 = distinct !DIGlobalVariable(name: "g_notify_stamp", scope: !0, file: !46, line: 148, type: !47, isLocal: false, isDefinition: true, variable: i32* @g_notify_stamp)
!46 = !DIFile(filename: "disk.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !25, line: 28, baseType: !48)
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = distinct !DIGlobalVariable(name: "disk_fns", scope: !0, file: !46, line: 1439, type: !50, isLocal: false, isDefinition: true, variable: %struct._DEVICE_FNS* @disk_fns)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "DEVICE_FNS", file: !25, line: 223, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DEVICE_FNS", file: !25, line: 211, size: 320, align: 64, elements: !52)
!52 = !{!53, !60, !64, !71, !72}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !51, file: !25, line: 213, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !36, !36, !36, !36, !36, !33, !58}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTSTATUS", file: !25, line: 208, baseType: !36)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_NTHANDLE", file: !25, line: 209, baseType: !36)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !51, file: !25, line: 216, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!57, !59}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !51, file: !25, line: 217, baseType: !65, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!57, !59, !68, !36, !36, !35}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !25, line: 39, baseType: !70)
!70 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !51, file: !25, line: 219, baseType: !65, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "device_control", scope: !51, file: !25, line: 221, baseType: !73, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!57, !59, !36, !76, !76}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !77, line: 40, baseType: !78)
!77 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !77, line: 25, size: 576, align: 64, elements: !80)
!80 = !{!81, !83, !84, !85, !86, !87, !88, !89, !90}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !79, file: !77, line: 27, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !79, file: !77, line: 28, baseType: !82, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !79, file: !77, line: 29, baseType: !82, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !79, file: !77, line: 30, baseType: !37, size: 32, align: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !79, file: !77, line: 33, baseType: !82, size: 64, align: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !79, file: !77, line: 34, baseType: !82, size: 64, align: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !79, file: !77, line: 35, baseType: !82, size: 64, align: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !79, file: !77, line: 36, baseType: !82, size: 64, align: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !79, file: !77, line: 37, baseType: !82, size: 64, align: 64, offset: 512)
!91 = distinct !DIGlobalVariable(name: "g_fileinfo", scope: !0, file: !46, line: 147, type: !92, isLocal: false, isDefinition: true, variable: [256 x %struct.fileinfo]* @g_fileinfo)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 16941056, align: 64, elements: !120)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILEINFO", file: !25, line: 307, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fileinfo", file: !25, line: 296, size: 66176, align: 64, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !105, !122, !123, !124, !132}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !94, file: !25, line: 298, baseType: !36, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags_and_attributes", scope: !94, file: !25, line: 298, baseType: !36, size: 32, align: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "accessmask", scope: !94, file: !25, line: 298, baseType: !36, size: 32, align: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !94, file: !25, line: 299, baseType: !29, size: 32768, align: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pdir", scope: !94, file: !25, line: 300, baseType: !101, size: 64, align: 64, offset: 32896)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !103, line: 127, baseType: !104)
!103 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !103, line: 127, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pdirent", scope: !94, file: !25, line: 301, baseType: !106, size: 64, align: 64, offset: 32960)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !108, line: 22, size: 2240, align: 64, elements: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!109 = !{!110, !113, !115, !117, !118}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !107, file: !108, line: 25, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !41, line: 127, baseType: !112)
!112 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !107, file: !108, line: 26, baseType: !114, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !41, line: 131, baseType: !42)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !107, file: !108, line: 31, baseType: !116, size: 16, align: 16, offset: 128)
!116 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !107, file: !108, line: 32, baseType: !70, size: 8, align: 8, offset: 144)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !107, file: !108, line: 33, baseType: !119, size: 2048, align: 8, offset: 152)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, align: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !94, file: !25, line: 302, baseType: !29, size: 32768, align: 8, offset: 33024)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "delete_on_close", scope: !94, file: !25, line: 303, baseType: !47, size: 32, align: 32, offset: 65792)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !94, file: !25, line: 304, baseType: !125, size: 256, align: 64, offset: 65856)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "NOTIFY", file: !25, line: 294, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notify_data", file: !25, line: 287, size: 256, align: 64, elements: !127)
!127 = !{!128, !129, !130, !131}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "modify_time", scope: !126, file: !25, line: 289, baseType: !38, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "status_time", scope: !126, file: !25, line: 290, baseType: !38, size: 64, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !126, file: !25, line: 291, baseType: !38, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !126, file: !25, line: 292, baseType: !37, size: 32, align: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_class", scope: !94, file: !25, line: 305, baseType: !36, size: 32, align: 32, offset: 66112)
!133 = distinct !DIGlobalVariable(name: "zero", scope: !134, file: !46, line: 209, type: !140, isLocal: true, isDefinition: true, variable: i8* @ftruncate_growable.zero)
!134 = distinct !DISubprogram(name: "ftruncate_growable", scope: !46, file: !46, line: 205, type: !135, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!135 = !DISubroutineType(types: !136)
!136 = !{!48, !48, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !138, line: 86, baseType: !114)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!139 = !{}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!141 = distinct !DIGlobalVariable(name: "info", scope: !142, file: !46, line: 1064, type: !146, isLocal: true, isDefinition: true, variable: %struct.FsInfoType* @FsVolumeInfo.info)
!142 = distinct !DISubprogram(name: "FsVolumeInfo", scope: !46, file: !46, line: 1061, type: !143, isLocal: true, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !33}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FsInfoType", file: !46, line: 156, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 150, size: 98368, align: 64, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !147, file: !46, line: 152, baseType: !29, size: 32768, align: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !147, file: !46, line: 153, baseType: !29, size: 32768, align: 8, offset: 32768)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !147, file: !46, line: 154, baseType: !112, size: 64, align: 64, offset: 65536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !46, line: 155, baseType: !29, size: 32768, align: 8, offset: 65600)
!153 = !{i32 2, !"Dwarf Version", i32 4}
!154 = !{i32 2, !"Debug Info Version", i32 3}
!155 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!156 = distinct !DISubprogram(name: "disk_enum_devices", scope: !46, file: !46, line: 317, type: !157, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!157 = !DISubroutineType(types: !158)
!158 = !{!48, !35, !33}
!159 = !DILocalVariable(name: "id", arg: 1, scope: !156, file: !46, line: 317, type: !35)
!160 = !DIExpression()
!161 = !DILocation(line: 317, column: 28, scope: !156)
!162 = !DILocalVariable(name: "optarg", arg: 2, scope: !156, file: !46, line: 317, type: !33)
!163 = !DILocation(line: 317, column: 38, scope: !156)
!164 = !DILocalVariable(name: "pos", scope: !156, file: !46, line: 319, type: !33)
!165 = !DILocation(line: 319, column: 8, scope: !156)
!166 = !DILocation(line: 319, column: 14, scope: !156)
!167 = !DILocalVariable(name: "pos2", scope: !156, file: !46, line: 320, type: !33)
!168 = !DILocation(line: 320, column: 8, scope: !156)
!169 = !DILocalVariable(name: "count", scope: !156, file: !46, line: 321, type: !48)
!170 = !DILocation(line: 321, column: 6, scope: !156)
!171 = !DILocalVariable(name: "pdisk_data", scope: !156, file: !46, line: 322, type: !23)
!172 = !DILocation(line: 322, column: 15, scope: !156)
!173 = !DILocation(line: 325, column: 8, scope: !156)
!174 = !DILocation(line: 326, column: 2, scope: !156)
!175 = !DILocation(line: 326, column: 25, scope: !176)
!176 = !DILexicalBlockFile(scope: !156, file: !46, discriminator: 1)
!177 = !DILocation(line: 326, column: 16, scope: !176)
!178 = !DILocation(line: 326, column: 14, scope: !176)
!179 = !DILocation(line: 326, column: 39, scope: !176)
!180 = !DILocation(line: 326, column: 43, scope: !181)
!181 = !DILexicalBlockFile(scope: !156, file: !46, discriminator: 2)
!182 = !DILocation(line: 326, column: 42, scope: !181)
!183 = !DILocation(line: 326, column: 46, scope: !181)
!184 = !DILocation(line: 326, column: 2, scope: !185)
!185 = !DILexicalBlockFile(scope: !156, file: !46, discriminator: 3)
!186 = !DILocation(line: 328, column: 19, scope: !187)
!187 = distinct !DILexicalBlock(scope: !156, file: !46, line: 327, column: 2)
!188 = !DILocation(line: 328, column: 10, scope: !187)
!189 = !DILocation(line: 328, column: 8, scope: !187)
!190 = !DILocation(line: 330, column: 32, scope: !187)
!191 = !DILocation(line: 330, column: 16, scope: !187)
!192 = !DILocation(line: 330, column: 14, scope: !187)
!193 = !DILocation(line: 331, column: 10, scope: !187)
!194 = !DILocation(line: 331, column: 3, scope: !187)
!195 = !DILocation(line: 332, column: 11, scope: !187)
!196 = !DILocation(line: 332, column: 23, scope: !187)
!197 = !DILocation(line: 332, column: 29, scope: !187)
!198 = !DILocation(line: 332, column: 3, scope: !187)
!199 = !DILocation(line: 333, column: 27, scope: !187)
!200 = !DILocation(line: 333, column: 26, scope: !187)
!201 = !DILocation(line: 333, column: 11, scope: !187)
!202 = !DILocation(line: 333, column: 31, scope: !187)
!203 = !DILocation(line: 333, column: 37, scope: !187)
!204 = !DILocation(line: 333, column: 3, scope: !187)
!205 = !DILocation(line: 335, column: 60, scope: !187)
!206 = !DILocation(line: 335, column: 53, scope: !187)
!207 = !DILocation(line: 335, column: 66, scope: !187)
!208 = !DILocation(line: 335, column: 45, scope: !209)
!209 = !DILexicalBlockFile(scope: !187, file: !46, discriminator: 1)
!210 = !DILocation(line: 335, column: 19, scope: !187)
!211 = !DILocation(line: 335, column: 18, scope: !187)
!212 = !DILocation(line: 335, column: 3, scope: !187)
!213 = !DILocation(line: 335, column: 23, scope: !187)
!214 = !DILocation(line: 335, column: 34, scope: !187)
!215 = !DILocation(line: 336, column: 26, scope: !187)
!216 = !DILocation(line: 336, column: 25, scope: !187)
!217 = !DILocation(line: 336, column: 10, scope: !187)
!218 = !DILocation(line: 336, column: 30, scope: !187)
!219 = !DILocation(line: 336, column: 42, scope: !187)
!220 = !DILocation(line: 336, column: 3, scope: !187)
!221 = !DILocation(line: 337, column: 19, scope: !187)
!222 = !DILocation(line: 337, column: 18, scope: !187)
!223 = !DILocation(line: 337, column: 3, scope: !187)
!224 = !DILocation(line: 337, column: 23, scope: !187)
!225 = !DILocation(line: 337, column: 35, scope: !187)
!226 = !DILocation(line: 338, column: 47, scope: !187)
!227 = !DILocation(line: 338, column: 38, scope: !187)
!228 = !DILocation(line: 338, column: 19, scope: !187)
!229 = !DILocation(line: 338, column: 18, scope: !187)
!230 = !DILocation(line: 338, column: 3, scope: !187)
!231 = !DILocation(line: 338, column: 23, scope: !187)
!232 = !DILocation(line: 338, column: 36, scope: !187)
!233 = !DILocation(line: 340, column: 8, scope: !187)
!234 = !DILocation(line: 341, column: 5, scope: !187)
!235 = !DILocation(line: 341, column: 8, scope: !187)
!236 = !DILocation(line: 343, column: 12, scope: !187)
!237 = !DILocation(line: 343, column: 10, scope: !187)
!238 = !DILocation(line: 326, column: 2, scope: !239)
!239 = !DILexicalBlockFile(scope: !156, file: !46, discriminator: 4)
!240 = distinct !{!240, !174}
!241 = !DILocation(line: 345, column: 9, scope: !156)
!242 = !DILocation(line: 345, column: 2, scope: !156)
!243 = distinct !DISubprogram(name: "disk_query_information", scope: !46, file: !46, line: 654, type: !244, isLocal: false, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!244 = !DISubroutineType(types: !245)
!245 = !{!57, !59, !36, !76}
!246 = !DILocalVariable(name: "handle", arg: 1, scope: !243, file: !46, line: 654, type: !59)
!247 = !DILocation(line: 654, column: 36, scope: !243)
!248 = !DILocalVariable(name: "info_class", arg: 2, scope: !243, file: !46, line: 654, type: !36)
!249 = !DILocation(line: 654, column: 51, scope: !243)
!250 = !DILocalVariable(name: "out", arg: 3, scope: !243, file: !46, line: 654, type: !76)
!251 = !DILocation(line: 654, column: 70, scope: !243)
!252 = !DILocalVariable(name: "file_attributes", scope: !243, file: !46, line: 656, type: !36)
!253 = !DILocation(line: 656, column: 9, scope: !243)
!254 = !DILocalVariable(name: "ft_high", scope: !243, file: !46, line: 656, type: !36)
!255 = !DILocation(line: 656, column: 26, scope: !243)
!256 = !DILocalVariable(name: "ft_low", scope: !243, file: !46, line: 656, type: !36)
!257 = !DILocation(line: 656, column: 35, scope: !243)
!258 = !DILocalVariable(name: "filestat", scope: !243, file: !46, line: 657, type: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !260, line: 46, size: 1152, align: 64, elements: !261)
!260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!261 = !{!262, !264, !265, !267, !269, !271, !273, !274, !275, !276, !278, !280, !286, !287, !288}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !259, file: !260, line: 48, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !41, line: 124, baseType: !112)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !259, file: !260, line: 53, baseType: !111, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !259, file: !260, line: 61, baseType: !266, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !41, line: 130, baseType: !112)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !259, file: !260, line: 62, baseType: !268, size: 32, align: 32, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !41, line: 129, baseType: !37)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !259, file: !260, line: 64, baseType: !270, size: 32, align: 32, offset: 224)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !41, line: 125, baseType: !37)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !259, file: !260, line: 65, baseType: !272, size: 32, align: 32, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !41, line: 126, baseType: !37)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !259, file: !260, line: 67, baseType: !48, size: 32, align: 32, offset: 288)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !259, file: !260, line: 69, baseType: !263, size: 64, align: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !259, file: !260, line: 74, baseType: !114, size: 64, align: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !259, file: !260, line: 78, baseType: !277, size: 64, align: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !41, line: 153, baseType: !42)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !259, file: !260, line: 80, baseType: !279, size: 64, align: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !41, line: 158, baseType: !42)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !259, file: !260, line: 91, baseType: !281, size: 128, align: 64, offset: 576)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !39, line: 120, size: 128, align: 64, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !281, file: !39, line: 122, baseType: !40, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !281, file: !39, line: 123, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !41, line: 175, baseType: !42)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !259, file: !260, line: 92, baseType: !281, size: 128, align: 64, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !259, file: !260, line: 93, baseType: !281, size: 128, align: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !259, file: !260, line: 106, baseType: !289, size: 192, align: 64, offset: 960)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 192, align: 64, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 3)
!292 = !DILocation(line: 657, column: 14, scope: !243)
!293 = !DILocalVariable(name: "path", scope: !243, file: !46, line: 658, type: !33)
!294 = !DILocation(line: 658, column: 8, scope: !243)
!295 = !DILocalVariable(name: "filename", scope: !243, file: !46, line: 658, type: !33)
!296 = !DILocation(line: 658, column: 15, scope: !243)
!297 = !DILocation(line: 660, column: 78, scope: !243)
!298 = !DILocation(line: 661, column: 9, scope: !243)
!299 = !DILocation(line: 660, column: 2, scope: !243)
!300 = !DILocation(line: 663, column: 20, scope: !243)
!301 = !DILocation(line: 663, column: 9, scope: !243)
!302 = !DILocation(line: 663, column: 28, scope: !243)
!303 = !DILocation(line: 663, column: 7, scope: !243)
!304 = !DILocation(line: 666, column: 12, scope: !305)
!305 = distinct !DILexicalBlock(scope: !243, file: !46, line: 666, column: 6)
!306 = !DILocation(line: 666, column: 6, scope: !305)
!307 = !DILocation(line: 666, column: 31, scope: !305)
!308 = !DILocation(line: 666, column: 6, scope: !243)
!309 = !DILocation(line: 668, column: 80, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !46, line: 667, column: 2)
!311 = !DILocation(line: 668, column: 79, scope: !310)
!312 = !DILocation(line: 668, column: 70, scope: !313)
!313 = !DILexicalBlockFile(scope: !310, file: !46, discriminator: 1)
!314 = !DILocation(line: 668, column: 3, scope: !315)
!315 = !DILexicalBlockFile(scope: !310, file: !46, discriminator: 2)
!316 = !DILocation(line: 669, column: 6, scope: !310)
!317 = !DILocation(line: 669, column: 12, scope: !310)
!318 = !DILocation(line: 669, column: 13, scope: !310)
!319 = !DILocation(line: 669, column: 17, scope: !310)
!320 = !DILocation(line: 670, column: 3, scope: !310)
!321 = !DILocation(line: 674, column: 18, scope: !243)
!322 = !DILocation(line: 675, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !243, file: !46, line: 675, column: 5)
!324 = !DILocation(line: 675, column: 8, scope: !323)
!325 = !DILocation(line: 675, column: 19, scope: !323)
!326 = !DILocation(line: 675, column: 5, scope: !243)
!327 = !DILocation(line: 676, column: 19, scope: !323)
!328 = !DILocation(line: 676, column: 3, scope: !323)
!329 = !DILocation(line: 678, column: 21, scope: !243)
!330 = !DILocation(line: 678, column: 13, scope: !243)
!331 = !DILocation(line: 678, column: 11, scope: !243)
!332 = !DILocation(line: 679, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !243, file: !46, line: 679, column: 6)
!334 = !DILocation(line: 679, column: 6, scope: !243)
!335 = !DILocation(line: 680, column: 12, scope: !333)
!336 = !DILocation(line: 680, column: 3, scope: !333)
!337 = !DILocation(line: 682, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !243, file: !46, line: 682, column: 6)
!339 = !DILocation(line: 682, column: 15, scope: !338)
!340 = !DILocation(line: 682, column: 18, scope: !341)
!341 = !DILexicalBlockFile(scope: !338, file: !46, discriminator: 1)
!342 = !DILocation(line: 682, column: 30, scope: !341)
!343 = !DILocation(line: 682, column: 6, scope: !341)
!344 = !DILocation(line: 683, column: 19, scope: !338)
!345 = !DILocation(line: 683, column: 3, scope: !338)
!346 = !DILocation(line: 685, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !243, file: !46, line: 685, column: 6)
!348 = !DILocation(line: 685, column: 6, scope: !243)
!349 = !DILocation(line: 686, column: 19, scope: !347)
!350 = !DILocation(line: 686, column: 3, scope: !347)
!351 = !DILocation(line: 688, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !243, file: !46, line: 688, column: 6)
!353 = !DILocation(line: 688, column: 25, scope: !352)
!354 = !DILocation(line: 688, column: 6, scope: !243)
!355 = !DILocation(line: 689, column: 19, scope: !352)
!356 = !DILocation(line: 689, column: 3, scope: !352)
!357 = !DILocation(line: 692, column: 10, scope: !243)
!358 = !DILocation(line: 692, column: 2, scope: !243)
!359 = !DILocation(line: 695, column: 35, scope: !360)
!360 = distinct !DILexicalBlock(scope: !243, file: !46, line: 693, column: 2)
!361 = !DILocation(line: 695, column: 4, scope: !362)
!362 = !DILexicalBlockFile(scope: !360, file: !46, discriminator: 1)
!363 = !DILocation(line: 697, column: 30, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !46, line: 697, column: 4)
!365 = !DILocation(line: 697, column: 19, scope: !364)
!366 = !DILocation(line: 697, column: 25, scope: !364)
!367 = !DILocation(line: 697, column: 6, scope: !364)
!368 = !DILocation(line: 697, column: 28, scope: !364)
!369 = !DILocation(line: 697, column: 39, scope: !364)
!370 = !DILocation(line: 697, column: 45, scope: !364)
!371 = !DILocation(line: 697, column: 47, scope: !364)
!372 = !DILocation(line: 698, column: 30, scope: !373)
!373 = distinct !DILexicalBlock(scope: !360, file: !46, line: 698, column: 4)
!374 = !DILocation(line: 698, column: 19, scope: !373)
!375 = !DILocation(line: 698, column: 25, scope: !373)
!376 = !DILocation(line: 698, column: 6, scope: !373)
!377 = !DILocation(line: 698, column: 28, scope: !373)
!378 = !DILocation(line: 698, column: 40, scope: !373)
!379 = !DILocation(line: 698, column: 46, scope: !373)
!380 = !DILocation(line: 698, column: 48, scope: !373)
!381 = !DILocation(line: 700, column: 43, scope: !360)
!382 = !DILocation(line: 700, column: 51, scope: !360)
!383 = !DILocation(line: 700, column: 4, scope: !360)
!384 = !DILocation(line: 701, column: 30, scope: !385)
!385 = distinct !DILexicalBlock(scope: !360, file: !46, line: 701, column: 4)
!386 = !DILocation(line: 701, column: 19, scope: !385)
!387 = !DILocation(line: 701, column: 25, scope: !385)
!388 = !DILocation(line: 701, column: 6, scope: !385)
!389 = !DILocation(line: 701, column: 28, scope: !385)
!390 = !DILocation(line: 701, column: 39, scope: !385)
!391 = !DILocation(line: 701, column: 45, scope: !385)
!392 = !DILocation(line: 701, column: 47, scope: !385)
!393 = !DILocation(line: 702, column: 30, scope: !394)
!394 = distinct !DILexicalBlock(scope: !360, file: !46, line: 702, column: 4)
!395 = !DILocation(line: 702, column: 19, scope: !394)
!396 = !DILocation(line: 702, column: 25, scope: !394)
!397 = !DILocation(line: 702, column: 6, scope: !394)
!398 = !DILocation(line: 702, column: 28, scope: !394)
!399 = !DILocation(line: 702, column: 40, scope: !394)
!400 = !DILocation(line: 702, column: 46, scope: !394)
!401 = !DILocation(line: 702, column: 48, scope: !394)
!402 = !DILocation(line: 704, column: 43, scope: !360)
!403 = !DILocation(line: 704, column: 51, scope: !360)
!404 = !DILocation(line: 704, column: 4, scope: !360)
!405 = !DILocation(line: 705, column: 30, scope: !406)
!406 = distinct !DILexicalBlock(scope: !360, file: !46, line: 705, column: 4)
!407 = !DILocation(line: 705, column: 19, scope: !406)
!408 = !DILocation(line: 705, column: 25, scope: !406)
!409 = !DILocation(line: 705, column: 6, scope: !406)
!410 = !DILocation(line: 705, column: 28, scope: !406)
!411 = !DILocation(line: 705, column: 39, scope: !406)
!412 = !DILocation(line: 705, column: 45, scope: !406)
!413 = !DILocation(line: 705, column: 47, scope: !406)
!414 = !DILocation(line: 706, column: 30, scope: !415)
!415 = distinct !DILexicalBlock(scope: !360, file: !46, line: 706, column: 4)
!416 = !DILocation(line: 706, column: 19, scope: !415)
!417 = !DILocation(line: 706, column: 25, scope: !415)
!418 = !DILocation(line: 706, column: 6, scope: !415)
!419 = !DILocation(line: 706, column: 28, scope: !415)
!420 = !DILocation(line: 706, column: 40, scope: !415)
!421 = !DILocation(line: 706, column: 46, scope: !415)
!422 = !DILocation(line: 706, column: 48, scope: !415)
!423 = !DILocation(line: 708, column: 43, scope: !360)
!424 = !DILocation(line: 708, column: 51, scope: !360)
!425 = !DILocation(line: 708, column: 4, scope: !360)
!426 = !DILocation(line: 709, column: 30, scope: !427)
!427 = distinct !DILexicalBlock(scope: !360, file: !46, line: 709, column: 4)
!428 = !DILocation(line: 709, column: 19, scope: !427)
!429 = !DILocation(line: 709, column: 25, scope: !427)
!430 = !DILocation(line: 709, column: 6, scope: !427)
!431 = !DILocation(line: 709, column: 28, scope: !427)
!432 = !DILocation(line: 709, column: 39, scope: !427)
!433 = !DILocation(line: 709, column: 45, scope: !427)
!434 = !DILocation(line: 709, column: 47, scope: !427)
!435 = !DILocation(line: 710, column: 30, scope: !436)
!436 = distinct !DILexicalBlock(scope: !360, file: !46, line: 710, column: 4)
!437 = !DILocation(line: 710, column: 19, scope: !436)
!438 = !DILocation(line: 710, column: 25, scope: !436)
!439 = !DILocation(line: 710, column: 6, scope: !436)
!440 = !DILocation(line: 710, column: 28, scope: !436)
!441 = !DILocation(line: 710, column: 40, scope: !436)
!442 = !DILocation(line: 710, column: 46, scope: !436)
!443 = !DILocation(line: 710, column: 48, scope: !436)
!444 = !DILocation(line: 712, column: 30, scope: !445)
!445 = distinct !DILexicalBlock(scope: !360, file: !46, line: 712, column: 4)
!446 = !DILocation(line: 712, column: 19, scope: !445)
!447 = !DILocation(line: 712, column: 25, scope: !445)
!448 = !DILocation(line: 712, column: 6, scope: !445)
!449 = !DILocation(line: 712, column: 28, scope: !445)
!450 = !DILocation(line: 712, column: 48, scope: !445)
!451 = !DILocation(line: 712, column: 54, scope: !445)
!452 = !DILocation(line: 712, column: 56, scope: !445)
!453 = !DILocation(line: 713, column: 4, scope: !360)
!454 = !DILocation(line: 717, column: 42, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !46, line: 717, column: 6)
!456 = distinct !DILexicalBlock(scope: !360, file: !46, line: 717, column: 4)
!457 = !DILocation(line: 717, column: 51, scope: !455)
!458 = !DILocation(line: 717, column: 32, scope: !455)
!459 = !DILocation(line: 717, column: 21, scope: !455)
!460 = !DILocation(line: 717, column: 27, scope: !455)
!461 = !DILocation(line: 717, column: 8, scope: !455)
!462 = !DILocation(line: 717, column: 30, scope: !455)
!463 = !DILocation(line: 717, column: 66, scope: !455)
!464 = !DILocation(line: 717, column: 72, scope: !455)
!465 = !DILocation(line: 717, column: 74, scope: !455)
!466 = !DILocation(line: 717, column: 120, scope: !467)
!467 = distinct !DILexicalBlock(scope: !456, file: !46, line: 717, column: 83)
!468 = !DILocation(line: 717, column: 129, scope: !467)
!469 = !DILocation(line: 717, column: 136, scope: !467)
!470 = !DILocation(line: 717, column: 109, scope: !467)
!471 = !DILocation(line: 717, column: 98, scope: !467)
!472 = !DILocation(line: 717, column: 104, scope: !467)
!473 = !DILocation(line: 717, column: 85, scope: !467)
!474 = !DILocation(line: 717, column: 107, scope: !467)
!475 = !DILocation(line: 717, column: 151, scope: !467)
!476 = !DILocation(line: 717, column: 157, scope: !467)
!477 = !DILocation(line: 717, column: 159, scope: !467)
!478 = !DILocation(line: 718, column: 42, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !46, line: 718, column: 6)
!480 = distinct !DILexicalBlock(scope: !360, file: !46, line: 718, column: 4)
!481 = !DILocation(line: 718, column: 51, scope: !479)
!482 = !DILocation(line: 718, column: 32, scope: !479)
!483 = !DILocation(line: 718, column: 21, scope: !479)
!484 = !DILocation(line: 718, column: 27, scope: !479)
!485 = !DILocation(line: 718, column: 8, scope: !479)
!486 = !DILocation(line: 718, column: 30, scope: !479)
!487 = !DILocation(line: 718, column: 66, scope: !479)
!488 = !DILocation(line: 718, column: 72, scope: !479)
!489 = !DILocation(line: 718, column: 74, scope: !479)
!490 = !DILocation(line: 718, column: 120, scope: !491)
!491 = distinct !DILexicalBlock(scope: !480, file: !46, line: 718, column: 83)
!492 = !DILocation(line: 718, column: 129, scope: !491)
!493 = !DILocation(line: 718, column: 136, scope: !491)
!494 = !DILocation(line: 718, column: 109, scope: !491)
!495 = !DILocation(line: 718, column: 98, scope: !491)
!496 = !DILocation(line: 718, column: 104, scope: !491)
!497 = !DILocation(line: 718, column: 85, scope: !491)
!498 = !DILocation(line: 718, column: 107, scope: !491)
!499 = !DILocation(line: 718, column: 151, scope: !491)
!500 = !DILocation(line: 718, column: 157, scope: !491)
!501 = !DILocation(line: 718, column: 159, scope: !491)
!502 = !DILocation(line: 720, column: 39, scope: !503)
!503 = distinct !DILexicalBlock(scope: !360, file: !46, line: 720, column: 4)
!504 = !DILocation(line: 720, column: 30, scope: !503)
!505 = !DILocation(line: 720, column: 19, scope: !503)
!506 = !DILocation(line: 720, column: 25, scope: !503)
!507 = !DILocation(line: 720, column: 6, scope: !503)
!508 = !DILocation(line: 720, column: 28, scope: !503)
!509 = !DILocation(line: 720, column: 50, scope: !503)
!510 = !DILocation(line: 720, column: 56, scope: !503)
!511 = !DILocation(line: 720, column: 58, scope: !503)
!512 = !DILocation(line: 721, column: 7, scope: !360)
!513 = !DILocation(line: 721, column: 13, scope: !360)
!514 = !DILocation(line: 721, column: 14, scope: !360)
!515 = !DILocation(line: 721, column: 18, scope: !360)
!516 = !DILocation(line: 722, column: 12, scope: !360)
!517 = !DILocation(line: 722, column: 6, scope: !360)
!518 = !DILocation(line: 722, column: 17, scope: !360)
!519 = !DILocation(line: 722, column: 3, scope: !360)
!520 = !DILocation(line: 722, column: 7, scope: !360)
!521 = !DILocation(line: 722, column: 13, scope: !360)
!522 = !DILocation(line: 722, column: 14, scope: !360)
!523 = !DILocation(line: 722, column: 18, scope: !360)
!524 = !DILocation(line: 723, column: 4, scope: !360)
!525 = !DILocation(line: 727, column: 30, scope: !526)
!526 = distinct !DILexicalBlock(scope: !360, file: !46, line: 727, column: 4)
!527 = !DILocation(line: 727, column: 19, scope: !526)
!528 = !DILocation(line: 727, column: 25, scope: !526)
!529 = !DILocation(line: 727, column: 6, scope: !526)
!530 = !DILocation(line: 727, column: 28, scope: !526)
!531 = !DILocation(line: 727, column: 48, scope: !526)
!532 = !DILocation(line: 727, column: 54, scope: !526)
!533 = !DILocation(line: 727, column: 56, scope: !526)
!534 = !DILocation(line: 728, column: 19, scope: !535)
!535 = distinct !DILexicalBlock(scope: !360, file: !46, line: 728, column: 4)
!536 = !DILocation(line: 728, column: 25, scope: !535)
!537 = !DILocation(line: 728, column: 6, scope: !535)
!538 = !DILocation(line: 728, column: 28, scope: !535)
!539 = !DILocation(line: 728, column: 34, scope: !535)
!540 = !DILocation(line: 728, column: 40, scope: !535)
!541 = !DILocation(line: 728, column: 42, scope: !535)
!542 = !DILocation(line: 729, column: 4, scope: !360)
!543 = !DILocation(line: 734, column: 11, scope: !360)
!544 = !DILocation(line: 732, column: 4, scope: !360)
!545 = !DILocation(line: 735, column: 4, scope: !360)
!546 = !DILocation(line: 737, column: 2, scope: !243)
!547 = !DILocation(line: 738, column: 1, scope: !243)
!548 = distinct !DISubprogram(name: "seconds_since_1970_to_filetime", scope: !46, file: !46, line: 176, type: !549, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !38, !35, !35}
!551 = !DILocalVariable(name: "seconds", arg: 1, scope: !548, file: !46, line: 176, type: !38)
!552 = !DILocation(line: 176, column: 39, scope: !548)
!553 = !DILocalVariable(name: "high", arg: 2, scope: !548, file: !46, line: 176, type: !35)
!554 = !DILocation(line: 176, column: 57, scope: !548)
!555 = !DILocalVariable(name: "low", arg: 3, scope: !548, file: !46, line: 176, type: !35)
!556 = !DILocation(line: 176, column: 72, scope: !548)
!557 = !DILocalVariable(name: "ticks", scope: !548, file: !46, line: 178, type: !43)
!558 = !DILocation(line: 178, column: 21, scope: !548)
!559 = !DILocation(line: 180, column: 11, scope: !548)
!560 = !DILocation(line: 180, column: 19, scope: !548)
!561 = !DILocation(line: 180, column: 36, scope: !548)
!562 = !DILocation(line: 180, column: 8, scope: !548)
!563 = !DILocation(line: 181, column: 18, scope: !548)
!564 = !DILocation(line: 181, column: 9, scope: !548)
!565 = !DILocation(line: 181, column: 3, scope: !548)
!566 = !DILocation(line: 181, column: 7, scope: !548)
!567 = !DILocation(line: 182, column: 20, scope: !548)
!568 = !DILocation(line: 182, column: 26, scope: !548)
!569 = !DILocation(line: 182, column: 10, scope: !548)
!570 = !DILocation(line: 182, column: 3, scope: !548)
!571 = !DILocation(line: 182, column: 8, scope: !548)
!572 = !DILocation(line: 183, column: 1, scope: !548)
!573 = distinct !DISubprogram(name: "get_create_time", scope: !46, file: !46, line: 161, type: !574, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!574 = !DISubroutineType(types: !575)
!575 = !{!38, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!577 = !DILocalVariable(name: "filestat", arg: 1, scope: !573, file: !46, line: 161, type: !576)
!578 = !DILocation(line: 161, column: 30, scope: !573)
!579 = !DILocalVariable(name: "ret", scope: !573, file: !46, line: 163, type: !38)
!580 = !DILocation(line: 163, column: 9, scope: !573)
!581 = !DILocalVariable(name: "ret1", scope: !573, file: !46, line: 163, type: !38)
!582 = !DILocation(line: 163, column: 14, scope: !573)
!583 = !DILocation(line: 165, column: 7, scope: !573)
!584 = !DILocation(line: 165, column: 15, scope: !573)
!585 = !DILocation(line: 165, column: 22, scope: !573)
!586 = !DILocation(line: 165, column: 8, scope: !573)
!587 = !DILocation(line: 165, column: 7, scope: !588)
!588 = !DILexicalBlockFile(scope: !573, file: !46, discriminator: 1)
!589 = !DILocation(line: 165, column: 15, scope: !588)
!590 = !DILocation(line: 165, column: 8, scope: !588)
!591 = !DILocation(line: 165, column: 7, scope: !592)
!592 = !DILexicalBlockFile(scope: !573, file: !46, discriminator: 2)
!593 = !DILocation(line: 165, column: 15, scope: !592)
!594 = !DILocation(line: 165, column: 8, scope: !592)
!595 = !DILocation(line: 165, column: 8, scope: !596)
!596 = !DILexicalBlockFile(scope: !573, file: !46, discriminator: 3)
!597 = !DILocation(line: 165, column: 6, scope: !596)
!598 = !DILocation(line: 166, column: 8, scope: !573)
!599 = !DILocation(line: 166, column: 16, scope: !573)
!600 = !DILocation(line: 166, column: 9, scope: !573)
!601 = !DILocation(line: 166, column: 8, scope: !588)
!602 = !DILocation(line: 166, column: 9, scope: !588)
!603 = !DILocation(line: 166, column: 8, scope: !592)
!604 = !DILocation(line: 166, column: 16, scope: !592)
!605 = !DILocation(line: 166, column: 9, scope: !592)
!606 = !DILocation(line: 166, column: 9, scope: !596)
!607 = !DILocation(line: 166, column: 7, scope: !596)
!608 = !DILocation(line: 168, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !573, file: !46, line: 168, column: 6)
!610 = !DILocation(line: 168, column: 11, scope: !609)
!611 = !DILocation(line: 168, column: 6, scope: !573)
!612 = !DILocation(line: 169, column: 10, scope: !609)
!613 = !DILocation(line: 169, column: 3, scope: !609)
!614 = !DILocation(line: 171, column: 9, scope: !573)
!615 = !DILocation(line: 171, column: 2, scope: !573)
!616 = !DILocation(line: 172, column: 1, scope: !573)
!617 = distinct !DISubprogram(name: "disk_set_information", scope: !46, file: !46, line: 742, type: !74, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!618 = !DILocalVariable(name: "handle", arg: 1, scope: !617, file: !46, line: 742, type: !59)
!619 = !DILocation(line: 742, column: 34, scope: !617)
!620 = !DILocalVariable(name: "info_class", arg: 2, scope: !617, file: !46, line: 742, type: !36)
!621 = !DILocation(line: 742, column: 49, scope: !617)
!622 = !DILocalVariable(name: "in", arg: 3, scope: !617, file: !46, line: 742, type: !76)
!623 = !DILocation(line: 742, column: 68, scope: !617)
!624 = !DILocalVariable(name: "out", arg: 4, scope: !617, file: !46, line: 742, type: !76)
!625 = !DILocation(line: 742, column: 79, scope: !617)
!626 = !DILocation(line: 744, column: 9, scope: !617)
!627 = !DILocalVariable(name: "length", scope: !617, file: !46, line: 745, type: !36)
!628 = !DILocation(line: 745, column: 9, scope: !617)
!629 = !DILocalVariable(name: "file_attributes", scope: !617, file: !46, line: 745, type: !36)
!630 = !DILocation(line: 745, column: 17, scope: !617)
!631 = !DILocalVariable(name: "ft_high", scope: !617, file: !46, line: 745, type: !36)
!632 = !DILocation(line: 745, column: 34, scope: !617)
!633 = !DILocalVariable(name: "ft_low", scope: !617, file: !46, line: 745, type: !36)
!634 = !DILocation(line: 745, column: 43, scope: !617)
!635 = !DILocalVariable(name: "newname", scope: !617, file: !46, line: 746, type: !33)
!636 = !DILocation(line: 746, column: 8, scope: !617)
!637 = !DILocalVariable(name: "fullpath", scope: !617, file: !46, line: 746, type: !29)
!638 = !DILocation(line: 746, column: 17, scope: !617)
!639 = !DILocalVariable(name: "pfinfo", scope: !617, file: !46, line: 747, type: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!641 = !DILocation(line: 747, column: 19, scope: !617)
!642 = !DILocalVariable(name: "mode", scope: !617, file: !46, line: 748, type: !48)
!643 = !DILocation(line: 748, column: 6, scope: !617)
!644 = !DILocalVariable(name: "filestat", scope: !617, file: !46, line: 749, type: !259)
!645 = !DILocation(line: 749, column: 14, scope: !617)
!646 = !DILocalVariable(name: "write_time", scope: !617, file: !46, line: 750, type: !38)
!647 = !DILocation(line: 750, column: 9, scope: !617)
!648 = !DILocalVariable(name: "change_time", scope: !617, file: !46, line: 750, type: !38)
!649 = !DILocation(line: 750, column: 21, scope: !617)
!650 = !DILocalVariable(name: "access_time", scope: !617, file: !46, line: 750, type: !38)
!651 = !DILocation(line: 750, column: 34, scope: !617)
!652 = !DILocalVariable(name: "mod_time", scope: !617, file: !46, line: 750, type: !38)
!653 = !DILocation(line: 750, column: 47, scope: !617)
!654 = !DILocalVariable(name: "tvs", scope: !617, file: !46, line: 751, type: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !656, line: 37, size: 128, align: 64, elements: !657)
!656 = !DIFile(filename: "/usr/include/utime.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !655, file: !656, line: 39, baseType: !40, size: 64, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !655, file: !656, line: 40, baseType: !40, size: 64, align: 64, offset: 64)
!660 = !DILocation(line: 751, column: 17, scope: !617)
!661 = !DILocalVariable(name: "stat_fs", scope: !617, file: !46, line: 752, type: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statvfs", file: !663, line: 29, size: 896, align: 64, elements: !664)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statvfs.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!664 = !{!665, !666, !667, !669, !670, !671, !673, !674, !675, !676, !677, !678}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !662, file: !663, line: 31, baseType: !112, size: 64, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !662, file: !663, line: 32, baseType: !112, size: 64, align: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !662, file: !663, line: 34, baseType: !668, size: 64, align: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt_t", file: !41, line: 162, baseType: !112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !662, file: !663, line: 35, baseType: !668, size: 64, align: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !662, file: !663, line: 36, baseType: !668, size: 64, align: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !662, file: !663, line: 37, baseType: !672, size: 64, align: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt_t", file: !41, line: 166, baseType: !112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !662, file: !663, line: 38, baseType: !672, size: 64, align: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_favail", scope: !662, file: !663, line: 39, baseType: !672, size: 64, align: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !662, file: !663, line: 48, baseType: !112, size: 64, align: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "f_flag", scope: !662, file: !663, line: 52, baseType: !112, size: 64, align: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_namemax", scope: !662, file: !663, line: 53, baseType: !112, size: 64, align: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__f_spare", scope: !662, file: !663, line: 54, baseType: !679, size: 192, align: 32, offset: 704)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 192, align: 32, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 6)
!682 = !DILocation(line: 752, column: 17, scope: !617)
!683 = !DILocation(line: 754, column: 81, scope: !617)
!684 = !DILocation(line: 755, column: 9, scope: !617)
!685 = !DILocation(line: 754, column: 2, scope: !617)
!686 = !DILocation(line: 757, column: 24, scope: !617)
!687 = !DILocation(line: 757, column: 13, scope: !617)
!688 = !DILocation(line: 757, column: 9, scope: !617)
!689 = !DILocation(line: 758, column: 17, scope: !617)
!690 = !DILocation(line: 759, column: 10, scope: !617)
!691 = !DILocation(line: 761, column: 10, scope: !617)
!692 = !DILocation(line: 761, column: 2, scope: !617)
!693 = !DILocation(line: 764, column: 43, scope: !694)
!694 = distinct !DILexicalBlock(scope: !617, file: !46, line: 762, column: 2)
!695 = !DILocation(line: 764, column: 29, scope: !694)
!696 = !DILocation(line: 764, column: 15, scope: !694)
!697 = !DILocation(line: 766, column: 5, scope: !694)
!698 = !DILocation(line: 766, column: 10, scope: !694)
!699 = !DILocation(line: 766, column: 12, scope: !694)
!700 = !DILocation(line: 767, column: 5, scope: !694)
!701 = !DILocation(line: 767, column: 10, scope: !694)
!702 = !DILocation(line: 767, column: 12, scope: !694)
!703 = !DILocation(line: 770, column: 28, scope: !704)
!704 = distinct !DILexicalBlock(scope: !694, file: !46, line: 770, column: 4)
!705 = !DILocation(line: 770, column: 33, scope: !704)
!706 = !DILocation(line: 770, column: 15, scope: !704)
!707 = !DILocation(line: 770, column: 13, scope: !704)
!708 = !DILocation(line: 770, column: 38, scope: !704)
!709 = !DILocation(line: 770, column: 43, scope: !704)
!710 = !DILocation(line: 770, column: 45, scope: !704)
!711 = !DILocation(line: 771, column: 29, scope: !712)
!712 = distinct !DILexicalBlock(scope: !694, file: !46, line: 771, column: 4)
!713 = !DILocation(line: 771, column: 34, scope: !712)
!714 = !DILocation(line: 771, column: 16, scope: !712)
!715 = !DILocation(line: 771, column: 14, scope: !712)
!716 = !DILocation(line: 771, column: 39, scope: !712)
!717 = !DILocation(line: 771, column: 44, scope: !712)
!718 = !DILocation(line: 771, column: 46, scope: !712)
!719 = !DILocation(line: 774, column: 28, scope: !720)
!720 = distinct !DILexicalBlock(scope: !694, file: !46, line: 774, column: 4)
!721 = !DILocation(line: 774, column: 33, scope: !720)
!722 = !DILocation(line: 774, column: 15, scope: !720)
!723 = !DILocation(line: 774, column: 13, scope: !720)
!724 = !DILocation(line: 774, column: 38, scope: !720)
!725 = !DILocation(line: 774, column: 43, scope: !720)
!726 = !DILocation(line: 774, column: 45, scope: !720)
!727 = !DILocation(line: 775, column: 29, scope: !728)
!728 = distinct !DILexicalBlock(scope: !694, file: !46, line: 775, column: 4)
!729 = !DILocation(line: 775, column: 34, scope: !728)
!730 = !DILocation(line: 775, column: 16, scope: !728)
!731 = !DILocation(line: 775, column: 14, scope: !728)
!732 = !DILocation(line: 775, column: 39, scope: !728)
!733 = !DILocation(line: 775, column: 44, scope: !728)
!734 = !DILocation(line: 775, column: 46, scope: !728)
!735 = !DILocation(line: 776, column: 8, scope: !736)
!736 = distinct !DILexicalBlock(scope: !694, file: !46, line: 776, column: 8)
!737 = !DILocation(line: 776, column: 15, scope: !736)
!738 = !DILocation(line: 776, column: 18, scope: !739)
!739 = !DILexicalBlockFile(scope: !736, file: !46, discriminator: 1)
!740 = !DILocation(line: 776, column: 8, scope: !739)
!741 = !DILocation(line: 777, column: 44, scope: !736)
!742 = !DILocation(line: 777, column: 53, scope: !736)
!743 = !DILocation(line: 777, column: 19, scope: !736)
!744 = !DILocation(line: 777, column: 17, scope: !736)
!745 = !DILocation(line: 777, column: 5, scope: !736)
!746 = !DILocation(line: 780, column: 28, scope: !747)
!747 = distinct !DILexicalBlock(scope: !694, file: !46, line: 780, column: 4)
!748 = !DILocation(line: 780, column: 33, scope: !747)
!749 = !DILocation(line: 780, column: 15, scope: !747)
!750 = !DILocation(line: 780, column: 13, scope: !747)
!751 = !DILocation(line: 780, column: 38, scope: !747)
!752 = !DILocation(line: 780, column: 43, scope: !747)
!753 = !DILocation(line: 780, column: 45, scope: !747)
!754 = !DILocation(line: 781, column: 29, scope: !755)
!755 = distinct !DILexicalBlock(scope: !694, file: !46, line: 781, column: 4)
!756 = !DILocation(line: 781, column: 34, scope: !755)
!757 = !DILocation(line: 781, column: 16, scope: !755)
!758 = !DILocation(line: 781, column: 14, scope: !755)
!759 = !DILocation(line: 781, column: 39, scope: !755)
!760 = !DILocation(line: 781, column: 44, scope: !755)
!761 = !DILocation(line: 781, column: 46, scope: !755)
!762 = !DILocation(line: 782, column: 8, scope: !763)
!763 = distinct !DILexicalBlock(scope: !694, file: !46, line: 782, column: 8)
!764 = !DILocation(line: 782, column: 15, scope: !763)
!765 = !DILocation(line: 782, column: 18, scope: !766)
!766 = !DILexicalBlockFile(scope: !763, file: !46, discriminator: 1)
!767 = !DILocation(line: 782, column: 8, scope: !766)
!768 = !DILocation(line: 783, column: 43, scope: !763)
!769 = !DILocation(line: 783, column: 52, scope: !763)
!770 = !DILocation(line: 783, column: 18, scope: !763)
!771 = !DILocation(line: 783, column: 16, scope: !763)
!772 = !DILocation(line: 783, column: 5, scope: !763)
!773 = !DILocation(line: 786, column: 28, scope: !774)
!774 = distinct !DILexicalBlock(scope: !694, file: !46, line: 786, column: 4)
!775 = !DILocation(line: 786, column: 33, scope: !774)
!776 = !DILocation(line: 786, column: 15, scope: !774)
!777 = !DILocation(line: 786, column: 13, scope: !774)
!778 = !DILocation(line: 786, column: 38, scope: !774)
!779 = !DILocation(line: 786, column: 43, scope: !774)
!780 = !DILocation(line: 786, column: 45, scope: !774)
!781 = !DILocation(line: 787, column: 29, scope: !782)
!782 = distinct !DILexicalBlock(scope: !694, file: !46, line: 787, column: 4)
!783 = !DILocation(line: 787, column: 34, scope: !782)
!784 = !DILocation(line: 787, column: 16, scope: !782)
!785 = !DILocation(line: 787, column: 14, scope: !782)
!786 = !DILocation(line: 787, column: 39, scope: !782)
!787 = !DILocation(line: 787, column: 44, scope: !782)
!788 = !DILocation(line: 787, column: 46, scope: !782)
!789 = !DILocation(line: 788, column: 8, scope: !790)
!790 = distinct !DILexicalBlock(scope: !694, file: !46, line: 788, column: 8)
!791 = !DILocation(line: 788, column: 15, scope: !790)
!792 = !DILocation(line: 788, column: 18, scope: !793)
!793 = !DILexicalBlockFile(scope: !790, file: !46, discriminator: 1)
!794 = !DILocation(line: 788, column: 8, scope: !793)
!795 = !DILocation(line: 789, column: 44, scope: !790)
!796 = !DILocation(line: 789, column: 53, scope: !790)
!797 = !DILocation(line: 789, column: 19, scope: !790)
!798 = !DILocation(line: 789, column: 17, scope: !790)
!799 = !DILocation(line: 789, column: 5, scope: !790)
!800 = !DILocation(line: 791, column: 37, scope: !801)
!801 = distinct !DILexicalBlock(scope: !694, file: !46, line: 791, column: 4)
!802 = !DILocation(line: 791, column: 42, scope: !801)
!803 = !DILocation(line: 791, column: 24, scope: !801)
!804 = !DILocation(line: 791, column: 22, scope: !801)
!805 = !DILocation(line: 791, column: 47, scope: !801)
!806 = !DILocation(line: 791, column: 52, scope: !801)
!807 = !DILocation(line: 791, column: 54, scope: !801)
!808 = !DILocation(line: 793, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !694, file: !46, line: 793, column: 8)
!810 = !DILocation(line: 793, column: 8, scope: !809)
!811 = !DILocation(line: 793, column: 8, scope: !694)
!812 = !DILocation(line: 794, column: 5, scope: !809)
!813 = !DILocation(line: 796, column: 26, scope: !694)
!814 = !DILocation(line: 796, column: 34, scope: !694)
!815 = !DILocation(line: 796, column: 8, scope: !694)
!816 = !DILocation(line: 796, column: 16, scope: !694)
!817 = !DILocation(line: 797, column: 25, scope: !694)
!818 = !DILocation(line: 797, column: 33, scope: !694)
!819 = !DILocation(line: 797, column: 8, scope: !694)
!820 = !DILocation(line: 797, column: 15, scope: !694)
!821 = !DILocation(line: 798, column: 8, scope: !822)
!822 = distinct !DILexicalBlock(scope: !694, file: !46, line: 798, column: 8)
!823 = !DILocation(line: 798, column: 8, scope: !694)
!824 = !DILocation(line: 799, column: 18, scope: !822)
!825 = !DILocation(line: 799, column: 9, scope: !822)
!826 = !DILocation(line: 799, column: 16, scope: !822)
!827 = !DILocation(line: 799, column: 5, scope: !822)
!828 = !DILocation(line: 802, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !694, file: !46, line: 802, column: 8)
!830 = !DILocation(line: 802, column: 19, scope: !829)
!831 = !DILocation(line: 802, column: 22, scope: !832)
!832 = !DILexicalBlockFile(scope: !829, file: !46, discriminator: 1)
!833 = !DILocation(line: 802, column: 8, scope: !832)
!834 = !DILocation(line: 803, column: 15, scope: !829)
!835 = !DILocation(line: 803, column: 16, scope: !829)
!836 = !DILocation(line: 803, column: 15, scope: !832)
!837 = !DILocation(line: 803, column: 16, scope: !832)
!838 = !DILocation(line: 803, column: 15, scope: !839)
!839 = !DILexicalBlockFile(scope: !829, file: !46, discriminator: 2)
!840 = !DILocation(line: 803, column: 16, scope: !839)
!841 = !DILocation(line: 803, column: 16, scope: !842)
!842 = !DILexicalBlockFile(scope: !829, file: !46, discriminator: 3)
!843 = !DILocation(line: 803, column: 14, scope: !842)
!844 = !DILocation(line: 803, column: 5, scope: !842)
!845 = !DILocation(line: 805, column: 16, scope: !829)
!846 = !DILocation(line: 805, column: 29, scope: !832)
!847 = !DILocation(line: 805, column: 16, scope: !832)
!848 = !DILocation(line: 805, column: 42, scope: !839)
!849 = !DILocation(line: 805, column: 16, scope: !839)
!850 = !DILocation(line: 805, column: 16, scope: !842)
!851 = !DILocation(line: 805, column: 14, scope: !842)
!852 = !DILocation(line: 807, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !694, file: !46, line: 807, column: 8)
!854 = !DILocation(line: 807, column: 8, scope: !694)
!855 = !DILocation(line: 808, column: 19, scope: !853)
!856 = !DILocation(line: 808, column: 9, scope: !853)
!857 = !DILocation(line: 808, column: 17, scope: !853)
!858 = !DILocation(line: 808, column: 5, scope: !853)
!859 = !DILocation(line: 811, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !694, file: !46, line: 811, column: 8)
!861 = !DILocation(line: 811, column: 20, scope: !860)
!862 = !DILocation(line: 811, column: 23, scope: !863)
!863 = !DILexicalBlockFile(scope: !860, file: !46, discriminator: 1)
!864 = !DILocation(line: 811, column: 34, scope: !863)
!865 = !DILocation(line: 811, column: 37, scope: !866)
!866 = !DILexicalBlockFile(scope: !860, file: !46, discriminator: 2)
!867 = !DILocation(line: 811, column: 8, scope: !866)
!868 = !DILocation(line: 815, column: 23, scope: !869)
!869 = distinct !DILexicalBlock(scope: !860, file: !46, line: 812, column: 4)
!870 = !DILocation(line: 815, column: 12, scope: !869)
!871 = !DILocation(line: 815, column: 43, scope: !869)
!872 = !DILocation(line: 815, column: 32, scope: !873)
!873 = !DILexicalBlockFile(scope: !869, file: !46, discriminator: 1)
!874 = !DILocation(line: 813, column: 5, scope: !869)
!875 = !DILocation(line: 816, column: 15, scope: !876)
!876 = distinct !DILexicalBlock(scope: !869, file: !46, line: 816, column: 9)
!877 = !DILocation(line: 816, column: 23, scope: !876)
!878 = !DILocation(line: 816, column: 9, scope: !876)
!879 = !DILocation(line: 816, column: 35, scope: !876)
!880 = !DILocation(line: 816, column: 39, scope: !881)
!881 = !DILexicalBlockFile(scope: !876, file: !46, discriminator: 1)
!882 = !DILocation(line: 816, column: 38, scope: !881)
!883 = !DILocation(line: 816, column: 43, scope: !881)
!884 = !DILocation(line: 816, column: 9, scope: !881)
!885 = !DILocation(line: 817, column: 6, scope: !876)
!886 = !DILocation(line: 818, column: 4, scope: !869)
!887 = !DILocation(line: 820, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !694, file: !46, line: 820, column: 8)
!889 = !DILocation(line: 820, column: 8, scope: !694)
!890 = !DILocation(line: 821, column: 5, scope: !888)
!891 = !DILocation(line: 823, column: 20, scope: !694)
!892 = !DILocation(line: 823, column: 9, scope: !694)
!893 = !DILocation(line: 825, column: 8, scope: !894)
!894 = distinct !DILexicalBlock(scope: !694, file: !46, line: 825, column: 8)
!895 = !DILocation(line: 825, column: 24, scope: !894)
!896 = !DILocation(line: 825, column: 8, scope: !694)
!897 = !DILocation(line: 826, column: 10, scope: !894)
!898 = !DILocation(line: 826, column: 5, scope: !894)
!899 = !DILocation(line: 828, column: 10, scope: !894)
!900 = !DILocation(line: 830, column: 9, scope: !694)
!901 = !DILocation(line: 832, column: 67, scope: !694)
!902 = !DILocation(line: 832, column: 4, scope: !694)
!903 = !DILocation(line: 834, column: 15, scope: !904)
!904 = distinct !DILexicalBlock(scope: !694, file: !46, line: 834, column: 8)
!905 = !DILocation(line: 834, column: 23, scope: !904)
!906 = !DILocation(line: 834, column: 8, scope: !904)
!907 = !DILocation(line: 834, column: 8, scope: !694)
!908 = !DILocation(line: 835, column: 5, scope: !904)
!909 = !DILocation(line: 837, column: 4, scope: !694)
!910 = !DILocation(line: 841, column: 5, scope: !694)
!911 = !DILocation(line: 841, column: 10, scope: !694)
!912 = !DILocation(line: 841, column: 12, scope: !694)
!913 = !DILocation(line: 842, column: 5, scope: !694)
!914 = !DILocation(line: 842, column: 10, scope: !694)
!915 = !DILocation(line: 842, column: 12, scope: !694)
!916 = !DILocation(line: 843, column: 28, scope: !917)
!917 = distinct !DILexicalBlock(scope: !694, file: !46, line: 843, column: 4)
!918 = !DILocation(line: 843, column: 33, scope: !917)
!919 = !DILocation(line: 843, column: 15, scope: !917)
!920 = !DILocation(line: 843, column: 13, scope: !917)
!921 = !DILocation(line: 843, column: 38, scope: !917)
!922 = !DILocation(line: 843, column: 43, scope: !917)
!923 = !DILocation(line: 843, column: 45, scope: !917)
!924 = !DILocation(line: 845, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !694, file: !46, line: 845, column: 8)
!926 = !DILocation(line: 845, column: 15, scope: !925)
!927 = !DILocation(line: 845, column: 19, scope: !928)
!928 = !DILexicalBlockFile(scope: !925, file: !46, discriminator: 1)
!929 = !DILocation(line: 845, column: 26, scope: !928)
!930 = !DILocation(line: 845, column: 31, scope: !928)
!931 = !DILocation(line: 845, column: 8, scope: !928)
!932 = !DILocation(line: 846, column: 5, scope: !925)
!933 = !DILocation(line: 848, column: 18, scope: !694)
!934 = !DILocation(line: 848, column: 22, scope: !694)
!935 = !DILocation(line: 848, column: 4, scope: !694)
!936 = !DILocation(line: 849, column: 8, scope: !937)
!937 = distinct !DILexicalBlock(scope: !694, file: !46, line: 849, column: 8)
!938 = !DILocation(line: 849, column: 16, scope: !937)
!939 = !DILocation(line: 849, column: 8, scope: !694)
!940 = !DILocation(line: 850, column: 5, scope: !937)
!941 = !DILocation(line: 852, column: 29, scope: !694)
!942 = !DILocation(line: 852, column: 4, scope: !694)
!943 = !DILocation(line: 854, column: 12, scope: !694)
!944 = !DILocation(line: 854, column: 45, scope: !694)
!945 = !DILocation(line: 854, column: 53, scope: !694)
!946 = !DILocation(line: 854, column: 30, scope: !694)
!947 = !DILocation(line: 854, column: 64, scope: !694)
!948 = !DILocation(line: 855, column: 5, scope: !694)
!949 = !DILocation(line: 854, column: 4, scope: !694)
!950 = !DILocation(line: 857, column: 9, scope: !694)
!951 = !DILocation(line: 857, column: 4, scope: !694)
!952 = !DILocation(line: 859, column: 15, scope: !953)
!953 = distinct !DILexicalBlock(scope: !694, file: !46, line: 859, column: 8)
!954 = !DILocation(line: 859, column: 23, scope: !953)
!955 = !DILocation(line: 859, column: 29, scope: !953)
!956 = !DILocation(line: 859, column: 8, scope: !953)
!957 = !DILocation(line: 859, column: 39, scope: !953)
!958 = !DILocation(line: 859, column: 8, scope: !694)
!959 = !DILocation(line: 862, column: 22, scope: !960)
!960 = distinct !DILexicalBlock(scope: !953, file: !46, line: 860, column: 4)
!961 = !DILocation(line: 862, column: 21, scope: !960)
!962 = !DILocation(line: 862, column: 12, scope: !963)
!963 = !DILexicalBlockFile(scope: !960, file: !46, discriminator: 1)
!964 = !DILocation(line: 861, column: 5, scope: !960)
!965 = !DILocation(line: 863, column: 5, scope: !960)
!966 = !DILocation(line: 865, column: 4, scope: !694)
!967 = !DILocation(line: 883, column: 5, scope: !694)
!968 = !DILocation(line: 883, column: 10, scope: !694)
!969 = !DILocation(line: 883, column: 12, scope: !694)
!970 = !DILocation(line: 884, column: 5, scope: !694)
!971 = !DILocation(line: 884, column: 10, scope: !694)
!972 = !DILocation(line: 884, column: 12, scope: !694)
!973 = !DILocation(line: 887, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !694, file: !46, line: 887, column: 8)
!975 = !DILocation(line: 887, column: 17, scope: !974)
!976 = !DILocation(line: 887, column: 28, scope: !974)
!977 = !DILocation(line: 887, column: 8, scope: !694)
!978 = !DILocation(line: 899, column: 9, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !46, line: 899, column: 9)
!980 = distinct !DILexicalBlock(scope: !974, file: !46, line: 889, column: 4)
!981 = !DILocation(line: 899, column: 17, scope: !979)
!982 = !DILocation(line: 899, column: 9, scope: !980)
!983 = !DILocalVariable(name: "dp", scope: !984, file: !46, line: 901, type: !101)
!984 = distinct !DILexicalBlock(scope: !979, file: !46, line: 900, column: 5)
!985 = !DILocation(line: 901, column: 11, scope: !984)
!986 = !DILocation(line: 901, column: 24, scope: !984)
!987 = !DILocation(line: 901, column: 32, scope: !984)
!988 = !DILocation(line: 901, column: 16, scope: !984)
!989 = !DILocalVariable(name: "dir", scope: !984, file: !46, line: 902, type: !106)
!990 = !DILocation(line: 902, column: 21, scope: !984)
!991 = !DILocation(line: 904, column: 6, scope: !984)
!992 = !DILocation(line: 904, column: 28, scope: !993)
!993 = !DILexicalBlockFile(scope: !984, file: !46, discriminator: 1)
!994 = !DILocation(line: 904, column: 20, scope: !993)
!995 = !DILocation(line: 904, column: 18, scope: !993)
!996 = !DILocation(line: 904, column: 33, scope: !993)
!997 = !DILocation(line: 904, column: 6, scope: !993)
!998 = !DILocation(line: 906, column: 18, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !46, line: 906, column: 11)
!1000 = distinct !DILexicalBlock(scope: !984, file: !46, line: 905, column: 6)
!1001 = !DILocation(line: 906, column: 23, scope: !999)
!1002 = !DILocation(line: 906, column: 11, scope: !999)
!1003 = !DILocation(line: 906, column: 36, scope: !999)
!1004 = !DILocation(line: 907, column: 11, scope: !999)
!1005 = !DILocation(line: 907, column: 21, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !999, file: !46, discriminator: 1)
!1007 = !DILocation(line: 907, column: 26, scope: !1006)
!1008 = !DILocation(line: 907, column: 14, scope: !1006)
!1009 = !DILocation(line: 907, column: 40, scope: !1006)
!1010 = !DILocation(line: 906, column: 11, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1000, file: !46, discriminator: 1)
!1012 = !DILocation(line: 909, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !999, file: !46, line: 908, column: 7)
!1014 = !DILocation(line: 909, column: 8, scope: !1013)
!1015 = !DILocation(line: 910, column: 8, scope: !1013)
!1016 = !DILocation(line: 904, column: 6, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !984, file: !46, discriminator: 2)
!1018 = distinct !{!1018, !991}
!1019 = !DILocation(line: 913, column: 15, scope: !984)
!1020 = !DILocation(line: 913, column: 6, scope: !984)
!1021 = !DILocation(line: 914, column: 5, scope: !984)
!1022 = !DILocation(line: 916, column: 5, scope: !980)
!1023 = !DILocation(line: 916, column: 13, scope: !980)
!1024 = !DILocation(line: 916, column: 29, scope: !980)
!1025 = !DILocation(line: 917, column: 4, scope: !980)
!1026 = !DILocation(line: 919, column: 4, scope: !694)
!1027 = !DILocation(line: 929, column: 5, scope: !694)
!1028 = !DILocation(line: 929, column: 10, scope: !694)
!1029 = !DILocation(line: 929, column: 12, scope: !694)
!1030 = !DILocation(line: 930, column: 28, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !694, file: !46, line: 930, column: 4)
!1032 = !DILocation(line: 930, column: 33, scope: !1031)
!1033 = !DILocation(line: 930, column: 15, scope: !1031)
!1034 = !DILocation(line: 930, column: 13, scope: !1031)
!1035 = !DILocation(line: 930, column: 38, scope: !1031)
!1036 = !DILocation(line: 930, column: 43, scope: !1031)
!1037 = !DILocation(line: 930, column: 45, scope: !1031)
!1038 = !DILocation(line: 933, column: 17, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !694, file: !46, line: 933, column: 8)
!1040 = !DILocation(line: 933, column: 25, scope: !1039)
!1041 = !DILocation(line: 933, column: 9, scope: !1039)
!1042 = !DILocation(line: 933, column: 41, scope: !1039)
!1043 = !DILocation(line: 933, column: 8, scope: !694)
!1044 = !DILocation(line: 934, column: 17, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !46, line: 934, column: 9)
!1046 = !DILocation(line: 934, column: 35, scope: !1045)
!1047 = !DILocation(line: 934, column: 25, scope: !1045)
!1048 = !DILocation(line: 934, column: 45, scope: !1045)
!1049 = !DILocation(line: 934, column: 43, scope: !1045)
!1050 = !DILocation(line: 934, column: 9, scope: !1039)
!1051 = !DILocation(line: 935, column: 6, scope: !1045)
!1052 = !DILocation(line: 934, column: 45, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1045, file: !46, discriminator: 1)
!1054 = !DILocation(line: 937, column: 27, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !694, file: !46, line: 937, column: 8)
!1056 = !DILocation(line: 937, column: 35, scope: !1055)
!1057 = !DILocation(line: 937, column: 8, scope: !1055)
!1058 = !DILocation(line: 937, column: 43, scope: !1055)
!1059 = !DILocation(line: 937, column: 8, scope: !694)
!1060 = !DILocation(line: 939, column: 5, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !46, line: 938, column: 4)
!1062 = !DILocation(line: 942, column: 4, scope: !694)
!1063 = !DILocation(line: 946, column: 11, scope: !694)
!1064 = !DILocation(line: 944, column: 4, scope: !694)
!1065 = !DILocation(line: 947, column: 4, scope: !694)
!1066 = !DILocation(line: 949, column: 2, scope: !617)
!1067 = !DILocation(line: 950, column: 1, scope: !617)
!1068 = distinct !DISubprogram(name: "convert_1970_to_filetime", scope: !46, file: !46, line: 187, type: !1069, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!38, !36, !36}
!1071 = !DILocalVariable(name: "high", arg: 1, scope: !1068, file: !46, line: 187, type: !36)
!1072 = !DILocation(line: 187, column: 33, scope: !1068)
!1073 = !DILocalVariable(name: "low", arg: 2, scope: !1068, file: !46, line: 187, type: !36)
!1074 = !DILocation(line: 187, column: 46, scope: !1068)
!1075 = !DILocalVariable(name: "ticks", scope: !1068, file: !46, line: 189, type: !43)
!1076 = !DILocation(line: 189, column: 21, scope: !1068)
!1077 = !DILocalVariable(name: "val", scope: !1068, file: !46, line: 190, type: !38)
!1078 = !DILocation(line: 190, column: 9, scope: !1068)
!1079 = !DILocation(line: 192, column: 10, scope: !1068)
!1080 = !DILocation(line: 192, column: 39, scope: !1068)
!1081 = !DILocation(line: 192, column: 18, scope: !1068)
!1082 = !DILocation(line: 192, column: 45, scope: !1068)
!1083 = !DILocation(line: 192, column: 14, scope: !1068)
!1084 = !DILocation(line: 192, column: 8, scope: !1068)
!1085 = !DILocation(line: 193, column: 8, scope: !1068)
!1086 = !DILocation(line: 194, column: 8, scope: !1068)
!1087 = !DILocation(line: 196, column: 17, scope: !1068)
!1088 = !DILocation(line: 196, column: 6, scope: !1068)
!1089 = !DILocation(line: 197, column: 10, scope: !1068)
!1090 = !DILocation(line: 197, column: 2, scope: !1068)
!1091 = !DILocalVariable(name: "fd", arg: 1, scope: !134, file: !46, line: 205, type: !48)
!1092 = !DILocation(line: 205, column: 24, scope: !134)
!1093 = !DILocalVariable(name: "length", arg: 2, scope: !134, file: !46, line: 205, type: !137)
!1094 = !DILocation(line: 205, column: 34, scope: !134)
!1095 = !DILocalVariable(name: "ret", scope: !134, file: !46, line: 207, type: !48)
!1096 = !DILocation(line: 207, column: 6, scope: !134)
!1097 = !DILocalVariable(name: "pos", scope: !134, file: !46, line: 208, type: !137)
!1098 = !DILocation(line: 208, column: 8, scope: !134)
!1099 = !DILocation(line: 212, column: 23, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !134, file: !46, line: 212, column: 6)
!1101 = !DILocation(line: 212, column: 27, scope: !1100)
!1102 = !DILocation(line: 212, column: 13, scope: !1100)
!1103 = !DILocation(line: 212, column: 11, scope: !1100)
!1104 = !DILocation(line: 212, column: 36, scope: !1100)
!1105 = !DILocation(line: 212, column: 6, scope: !134)
!1106 = !DILocation(line: 214, column: 10, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1100, file: !46, line: 213, column: 2)
!1108 = !DILocation(line: 214, column: 3, scope: !1107)
!1109 = !DILocation(line: 223, column: 19, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !134, file: !46, line: 223, column: 6)
!1111 = !DILocation(line: 223, column: 13, scope: !1110)
!1112 = !DILocation(line: 223, column: 11, scope: !1110)
!1113 = !DILocation(line: 223, column: 36, scope: !1110)
!1114 = !DILocation(line: 223, column: 6, scope: !134)
!1115 = !DILocation(line: 225, column: 77, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !46, line: 224, column: 2)
!1117 = !DILocation(line: 225, column: 76, scope: !1116)
!1118 = !DILocation(line: 225, column: 67, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1116, file: !46, discriminator: 1)
!1120 = !DILocation(line: 225, column: 3, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1116, file: !46, discriminator: 2)
!1122 = !DILocation(line: 226, column: 3, scope: !1116)
!1123 = !DILocation(line: 230, column: 12, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !134, file: !46, line: 230, column: 6)
!1125 = !DILocation(line: 230, column: 16, scope: !1124)
!1126 = !DILocation(line: 230, column: 6, scope: !1124)
!1127 = !DILocation(line: 230, column: 33, scope: !1124)
!1128 = !DILocation(line: 230, column: 6, scope: !134)
!1129 = !DILocation(line: 232, column: 77, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !46, line: 231, column: 2)
!1131 = !DILocation(line: 232, column: 76, scope: !1130)
!1132 = !DILocation(line: 232, column: 67, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1130, file: !46, discriminator: 1)
!1134 = !DILocation(line: 232, column: 3, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1130, file: !46, discriminator: 2)
!1136 = !DILocation(line: 233, column: 3, scope: !1130)
!1137 = !DILocation(line: 237, column: 12, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !134, file: !46, line: 237, column: 6)
!1139 = !DILocation(line: 237, column: 6, scope: !1138)
!1140 = !DILocation(line: 237, column: 26, scope: !1138)
!1141 = !DILocation(line: 237, column: 6, scope: !134)
!1142 = !DILocation(line: 239, column: 77, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !46, line: 238, column: 2)
!1144 = !DILocation(line: 239, column: 76, scope: !1143)
!1145 = !DILocation(line: 239, column: 67, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1143, file: !46, discriminator: 1)
!1147 = !DILocation(line: 239, column: 3, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1143, file: !46, discriminator: 2)
!1149 = !DILocation(line: 240, column: 3, scope: !1143)
!1150 = !DILocation(line: 244, column: 16, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !134, file: !46, line: 244, column: 6)
!1152 = !DILocation(line: 244, column: 20, scope: !1151)
!1153 = !DILocation(line: 244, column: 6, scope: !1151)
!1154 = !DILocation(line: 244, column: 28, scope: !1151)
!1155 = !DILocation(line: 244, column: 6, scope: !134)
!1156 = !DILocation(line: 247, column: 20, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1151, file: !46, line: 245, column: 2)
!1158 = !DILocation(line: 247, column: 19, scope: !1157)
!1159 = !DILocation(line: 247, column: 10, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1157, file: !46, discriminator: 1)
!1161 = !DILocation(line: 246, column: 3, scope: !1157)
!1162 = !DILocation(line: 248, column: 3, scope: !1157)
!1163 = !DILocation(line: 252, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !134, file: !46, line: 252, column: 6)
!1165 = !DILocation(line: 252, column: 16, scope: !1164)
!1166 = !DILocation(line: 252, column: 6, scope: !1164)
!1167 = !DILocation(line: 252, column: 30, scope: !1164)
!1168 = !DILocation(line: 252, column: 6, scope: !134)
!1169 = !DILocation(line: 254, column: 77, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !46, line: 253, column: 2)
!1171 = !DILocation(line: 254, column: 76, scope: !1170)
!1172 = !DILocation(line: 254, column: 67, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1170, file: !46, discriminator: 1)
!1174 = !DILocation(line: 254, column: 3, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1170, file: !46, discriminator: 2)
!1176 = !DILocation(line: 255, column: 3, scope: !1170)
!1177 = !DILocation(line: 258, column: 2, scope: !134)
!1178 = !DILocation(line: 259, column: 1, scope: !134)
!1179 = distinct !DISubprogram(name: "disk_check_notify", scope: !46, file: !46, line: 953, type: !62, isLocal: false, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1180 = !DILocalVariable(name: "handle", arg: 1, scope: !1179, file: !46, line: 953, type: !59)
!1181 = !DILocation(line: 953, column: 31, scope: !1179)
!1182 = !DILocalVariable(name: "pfinfo", scope: !1179, file: !46, line: 955, type: !640)
!1183 = !DILocation(line: 955, column: 19, scope: !1179)
!1184 = !DILocalVariable(name: "status", scope: !1179, file: !46, line: 956, type: !57)
!1185 = !DILocation(line: 956, column: 14, scope: !1179)
!1186 = !DILocalVariable(name: "notify", scope: !1179, file: !46, line: 957, type: !125)
!1187 = !DILocation(line: 957, column: 9, scope: !1179)
!1188 = !DILocation(line: 959, column: 56, scope: !1179)
!1189 = !DILocation(line: 959, column: 2, scope: !1179)
!1190 = !DILocation(line: 961, column: 24, scope: !1179)
!1191 = !DILocation(line: 961, column: 13, scope: !1179)
!1192 = !DILocation(line: 961, column: 9, scope: !1179)
!1193 = !DILocation(line: 962, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !46, line: 962, column: 6)
!1195 = !DILocation(line: 962, column: 15, scope: !1194)
!1196 = !DILocation(line: 962, column: 6, scope: !1179)
!1197 = !DILocation(line: 963, column: 3, scope: !1194)
!1198 = !DILocation(line: 967, column: 22, scope: !1179)
!1199 = !DILocation(line: 967, column: 30, scope: !1179)
!1200 = !DILocation(line: 967, column: 38, scope: !1179)
!1201 = !DILocation(line: 967, column: 11, scope: !1179)
!1202 = !DILocation(line: 967, column: 9, scope: !1179)
!1203 = !DILocation(line: 969, column: 6, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1179, file: !46, line: 969, column: 6)
!1205 = !DILocation(line: 969, column: 13, scope: !1204)
!1206 = !DILocation(line: 969, column: 6, scope: !1179)
!1207 = !DILocation(line: 970, column: 10, scope: !1204)
!1208 = !DILocation(line: 970, column: 3, scope: !1204)
!1209 = !DILocation(line: 972, column: 14, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1179, file: !46, line: 972, column: 6)
!1211 = !DILocation(line: 972, column: 22, scope: !1210)
!1212 = !DILocation(line: 972, column: 13, scope: !1210)
!1213 = !DILocation(line: 972, column: 30, scope: !1210)
!1214 = !DILocation(line: 972, column: 6, scope: !1210)
!1215 = !DILocation(line: 972, column: 6, scope: !1179)
!1216 = !DILocation(line: 975, column: 11, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1210, file: !46, line: 973, column: 2)
!1218 = !DILocation(line: 975, column: 19, scope: !1217)
!1219 = !DILocation(line: 975, column: 3, scope: !1217)
!1220 = !DILocation(line: 976, column: 10, scope: !1217)
!1221 = !DILocation(line: 977, column: 2, scope: !1217)
!1222 = !DILocation(line: 979, column: 9, scope: !1179)
!1223 = !DILocation(line: 979, column: 2, scope: !1179)
!1224 = !DILocation(line: 982, column: 1, scope: !1179)
!1225 = distinct !DISubprogram(name: "NotifyInfo", scope: !46, file: !46, line: 1011, type: !1226, isLocal: true, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!57, !59, !36, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!1229 = !DILocalVariable(name: "handle", arg: 1, scope: !1225, file: !46, line: 1011, type: !59)
!1230 = !DILocation(line: 1011, column: 24, scope: !1225)
!1231 = !DILocalVariable(name: "info_class", arg: 2, scope: !1225, file: !46, line: 1011, type: !36)
!1232 = !DILocation(line: 1011, column: 39, scope: !1225)
!1233 = !DILocalVariable(name: "p", arg: 3, scope: !1225, file: !46, line: 1011, type: !1228)
!1234 = !DILocation(line: 1011, column: 60, scope: !1225)
!1235 = !DILocation(line: 1013, column: 9, scope: !1225)
!1236 = !DILocalVariable(name: "pfinfo", scope: !1225, file: !46, line: 1014, type: !640)
!1237 = !DILocation(line: 1014, column: 19, scope: !1225)
!1238 = !DILocalVariable(name: "filestat", scope: !1225, file: !46, line: 1015, type: !259)
!1239 = !DILocation(line: 1015, column: 14, scope: !1225)
!1240 = !DILocalVariable(name: "dp", scope: !1225, file: !46, line: 1016, type: !106)
!1241 = !DILocation(line: 1016, column: 17, scope: !1225)
!1242 = !DILocalVariable(name: "fullname", scope: !1225, file: !46, line: 1017, type: !33)
!1243 = !DILocation(line: 1017, column: 8, scope: !1225)
!1244 = !DILocalVariable(name: "dpr", scope: !1225, file: !46, line: 1018, type: !101)
!1245 = !DILocation(line: 1018, column: 7, scope: !1225)
!1246 = !DILocation(line: 1020, column: 24, scope: !1225)
!1247 = !DILocation(line: 1020, column: 13, scope: !1225)
!1248 = !DILocation(line: 1020, column: 9, scope: !1225)
!1249 = !DILocation(line: 1021, column: 12, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1225, file: !46, line: 1021, column: 6)
!1251 = !DILocation(line: 1021, column: 6, scope: !1250)
!1252 = !DILocation(line: 1021, column: 31, scope: !1250)
!1253 = !DILocation(line: 1021, column: 6, scope: !1225)
!1254 = !DILocation(line: 1023, column: 67, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !46, line: 1022, column: 2)
!1256 = !DILocation(line: 1023, column: 66, scope: !1255)
!1257 = !DILocation(line: 1023, column: 57, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1255, file: !46, discriminator: 1)
!1259 = !DILocation(line: 1023, column: 3, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1255, file: !46, discriminator: 2)
!1261 = !DILocation(line: 1024, column: 3, scope: !1255)
!1262 = !DILocation(line: 1026, column: 27, scope: !1225)
!1263 = !DILocation(line: 1026, column: 35, scope: !1225)
!1264 = !DILocation(line: 1026, column: 2, scope: !1225)
!1265 = !DILocation(line: 1026, column: 5, scope: !1225)
!1266 = !DILocation(line: 1026, column: 17, scope: !1225)
!1267 = !DILocation(line: 1027, column: 27, scope: !1225)
!1268 = !DILocation(line: 1027, column: 35, scope: !1225)
!1269 = !DILocation(line: 1027, column: 2, scope: !1225)
!1270 = !DILocation(line: 1027, column: 5, scope: !1225)
!1271 = !DILocation(line: 1027, column: 17, scope: !1225)
!1272 = !DILocation(line: 1028, column: 2, scope: !1225)
!1273 = !DILocation(line: 1028, column: 5, scope: !1225)
!1274 = !DILocation(line: 1028, column: 17, scope: !1225)
!1275 = !DILocation(line: 1029, column: 2, scope: !1225)
!1276 = !DILocation(line: 1029, column: 5, scope: !1225)
!1277 = !DILocation(line: 1029, column: 16, scope: !1225)
!1278 = !DILocation(line: 1032, column: 16, scope: !1225)
!1279 = !DILocation(line: 1032, column: 24, scope: !1225)
!1280 = !DILocation(line: 1032, column: 8, scope: !1225)
!1281 = !DILocation(line: 1032, column: 6, scope: !1225)
!1282 = !DILocation(line: 1033, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1225, file: !46, line: 1033, column: 6)
!1284 = !DILocation(line: 1033, column: 6, scope: !1225)
!1285 = !DILocation(line: 1035, column: 69, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !46, line: 1034, column: 2)
!1287 = !DILocation(line: 1035, column: 68, scope: !1286)
!1288 = !DILocation(line: 1035, column: 59, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1286, file: !46, discriminator: 1)
!1290 = !DILocation(line: 1035, column: 3, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1286, file: !46, discriminator: 2)
!1292 = !DILocation(line: 1036, column: 3, scope: !1286)
!1293 = !DILocation(line: 1040, column: 2, scope: !1225)
!1294 = !DILocation(line: 1040, column: 23, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1225, file: !46, discriminator: 1)
!1296 = !DILocation(line: 1040, column: 15, scope: !1295)
!1297 = !DILocation(line: 1040, column: 13, scope: !1295)
!1298 = !DILocation(line: 1040, column: 2, scope: !1295)
!1299 = !DILocation(line: 1042, column: 15, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !46, line: 1042, column: 7)
!1301 = distinct !DILexicalBlock(scope: !1225, file: !46, line: 1041, column: 2)
!1302 = !DILocation(line: 1042, column: 19, scope: !1300)
!1303 = !DILocation(line: 1042, column: 8, scope: !1300)
!1304 = !DILocation(line: 1042, column: 32, scope: !1300)
!1305 = !DILocation(line: 1042, column: 43, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1300, file: !46, discriminator: 1)
!1307 = !DILocation(line: 1042, column: 47, scope: !1306)
!1308 = !DILocation(line: 1042, column: 36, scope: !1306)
!1309 = !DILocation(line: 1042, column: 7, scope: !1306)
!1310 = !DILocation(line: 1043, column: 4, scope: !1300)
!1311 = distinct !{!1311, !1293}
!1312 = !DILocation(line: 1044, column: 3, scope: !1301)
!1313 = !DILocation(line: 1044, column: 6, scope: !1301)
!1314 = !DILocation(line: 1044, column: 17, scope: !1301)
!1315 = !DILocation(line: 1045, column: 38, scope: !1301)
!1316 = !DILocation(line: 1045, column: 46, scope: !1301)
!1317 = !DILocation(line: 1045, column: 31, scope: !1301)
!1318 = !DILocation(line: 1045, column: 61, scope: !1301)
!1319 = !DILocation(line: 1045, column: 65, scope: !1301)
!1320 = !DILocation(line: 1045, column: 54, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1301, file: !46, discriminator: 1)
!1322 = !DILocation(line: 1045, column: 52, scope: !1301)
!1323 = !DILocation(line: 1045, column: 73, scope: !1301)
!1324 = !DILocation(line: 1045, column: 23, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1301, file: !46, discriminator: 2)
!1326 = !DILocation(line: 1045, column: 12, scope: !1301)
!1327 = !DILocation(line: 1046, column: 11, scope: !1301)
!1328 = !DILocation(line: 1046, column: 30, scope: !1301)
!1329 = !DILocation(line: 1046, column: 38, scope: !1301)
!1330 = !DILocation(line: 1046, column: 44, scope: !1301)
!1331 = !DILocation(line: 1046, column: 48, scope: !1301)
!1332 = !DILocation(line: 1046, column: 3, scope: !1301)
!1333 = !DILocation(line: 1048, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1301, file: !46, line: 1048, column: 7)
!1335 = !DILocation(line: 1048, column: 8, scope: !1334)
!1336 = !DILocation(line: 1048, column: 7, scope: !1301)
!1337 = !DILocation(line: 1050, column: 30, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !46, line: 1049, column: 3)
!1339 = !DILocation(line: 1050, column: 38, scope: !1338)
!1340 = !DILocation(line: 1050, column: 50, scope: !1338)
!1341 = !DILocation(line: 1050, column: 58, scope: !1338)
!1342 = !DILocation(line: 1050, column: 39, scope: !1338)
!1343 = !DILocation(line: 1050, column: 4, scope: !1338)
!1344 = !DILocation(line: 1050, column: 7, scope: !1338)
!1345 = !DILocation(line: 1050, column: 18, scope: !1338)
!1346 = !DILocation(line: 1051, column: 3, scope: !1338)
!1347 = !DILocation(line: 1053, column: 9, scope: !1301)
!1348 = !DILocation(line: 1053, column: 3, scope: !1301)
!1349 = !DILocation(line: 1040, column: 2, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1225, file: !46, discriminator: 2)
!1351 = !DILocation(line: 1055, column: 11, scope: !1225)
!1352 = !DILocation(line: 1055, column: 2, scope: !1225)
!1353 = !DILocation(line: 1057, column: 2, scope: !1225)
!1354 = !DILocation(line: 1058, column: 1, scope: !1225)
!1355 = distinct !DISubprogram(name: "disk_create_notify", scope: !46, file: !46, line: 985, type: !1356, isLocal: false, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!57, !59, !36}
!1358 = !DILocalVariable(name: "handle", arg: 1, scope: !1355, file: !46, line: 985, type: !59)
!1359 = !DILocation(line: 985, column: 32, scope: !1355)
!1360 = !DILocalVariable(name: "info_class", arg: 2, scope: !1355, file: !46, line: 985, type: !36)
!1361 = !DILocation(line: 985, column: 47, scope: !1355)
!1362 = !DILocalVariable(name: "pfinfo", scope: !1355, file: !46, line: 987, type: !640)
!1363 = !DILocation(line: 987, column: 19, scope: !1355)
!1364 = !DILocalVariable(name: "ret", scope: !1355, file: !46, line: 988, type: !57)
!1365 = !DILocation(line: 988, column: 14, scope: !1355)
!1366 = !DILocation(line: 990, column: 74, scope: !1355)
!1367 = !DILocation(line: 990, column: 82, scope: !1355)
!1368 = !DILocation(line: 990, column: 2, scope: !1355)
!1369 = !DILocation(line: 992, column: 24, scope: !1355)
!1370 = !DILocation(line: 992, column: 13, scope: !1355)
!1371 = !DILocation(line: 992, column: 9, scope: !1355)
!1372 = !DILocation(line: 993, column: 23, scope: !1355)
!1373 = !DILocation(line: 993, column: 2, scope: !1355)
!1374 = !DILocation(line: 993, column: 10, scope: !1355)
!1375 = !DILocation(line: 993, column: 21, scope: !1355)
!1376 = !DILocation(line: 995, column: 19, scope: !1355)
!1377 = !DILocation(line: 995, column: 27, scope: !1355)
!1378 = !DILocation(line: 995, column: 40, scope: !1355)
!1379 = !DILocation(line: 995, column: 48, scope: !1355)
!1380 = !DILocation(line: 995, column: 8, scope: !1355)
!1381 = !DILocation(line: 995, column: 6, scope: !1355)
!1382 = !DILocation(line: 997, column: 6, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1355, file: !46, line: 997, column: 6)
!1384 = !DILocation(line: 997, column: 17, scope: !1383)
!1385 = !DILocation(line: 997, column: 6, scope: !1355)
!1386 = !DILocation(line: 999, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !46, line: 999, column: 7)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !46, line: 998, column: 2)
!1389 = !DILocation(line: 999, column: 11, scope: !1387)
!1390 = !DILocation(line: 999, column: 7, scope: !1388)
!1391 = !DILocation(line: 1000, column: 4, scope: !1387)
!1392 = !DILocation(line: 1001, column: 2, scope: !1388)
!1393 = !DILocation(line: 1006, column: 9, scope: !1355)
!1394 = !DILocation(line: 1006, column: 2, scope: !1355)
!1395 = !DILocation(line: 1008, column: 1, scope: !1355)
!1396 = distinct !DISubprogram(name: "disk_query_volume_information", scope: !46, file: !46, line: 1129, type: !244, isLocal: false, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1397 = !DILocalVariable(name: "handle", arg: 1, scope: !1396, file: !46, line: 1129, type: !59)
!1398 = !DILocation(line: 1129, column: 43, scope: !1396)
!1399 = !DILocalVariable(name: "info_class", arg: 2, scope: !1396, file: !46, line: 1129, type: !36)
!1400 = !DILocation(line: 1129, column: 58, scope: !1396)
!1401 = !DILocalVariable(name: "out", arg: 3, scope: !1396, file: !46, line: 1129, type: !76)
!1402 = !DILocation(line: 1129, column: 77, scope: !1396)
!1403 = !DILocalVariable(name: "stat_fs", scope: !1396, file: !46, line: 1131, type: !662)
!1404 = !DILocation(line: 1131, column: 17, scope: !1396)
!1405 = !DILocalVariable(name: "pfinfo", scope: !1396, file: !46, line: 1132, type: !640)
!1406 = !DILocation(line: 1132, column: 19, scope: !1396)
!1407 = !DILocalVariable(name: "fsinfo", scope: !1396, file: !46, line: 1133, type: !145)
!1408 = !DILocation(line: 1133, column: 14, scope: !1396)
!1409 = !DILocalVariable(name: "stmp", scope: !1396, file: !46, line: 1134, type: !79)
!1410 = !DILocation(line: 1134, column: 16, scope: !1396)
!1411 = !DILocation(line: 1136, column: 2, scope: !1396)
!1412 = !DILocation(line: 1137, column: 2, scope: !1396)
!1413 = !DILocation(line: 1139, column: 85, scope: !1396)
!1414 = !DILocation(line: 1140, column: 9, scope: !1396)
!1415 = !DILocation(line: 1139, column: 2, scope: !1396)
!1416 = !DILocation(line: 1142, column: 24, scope: !1396)
!1417 = !DILocation(line: 1142, column: 13, scope: !1396)
!1418 = !DILocation(line: 1142, column: 9, scope: !1396)
!1419 = !DILocation(line: 1144, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1396, file: !46, line: 1144, column: 6)
!1421 = !DILocation(line: 1144, column: 23, scope: !1420)
!1422 = !DILocation(line: 1144, column: 7, scope: !1420)
!1423 = !DILocation(line: 1144, column: 39, scope: !1420)
!1424 = !DILocation(line: 1144, column: 6, scope: !1396)
!1425 = !DILocation(line: 1147, column: 20, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1420, file: !46, line: 1145, column: 2)
!1427 = !DILocation(line: 1147, column: 19, scope: !1426)
!1428 = !DILocation(line: 1147, column: 10, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1426, file: !46, discriminator: 1)
!1430 = !DILocation(line: 1146, column: 3, scope: !1426)
!1431 = !DILocation(line: 1148, column: 3, scope: !1426)
!1432 = !DILocation(line: 1151, column: 24, scope: !1396)
!1433 = !DILocation(line: 1151, column: 32, scope: !1396)
!1434 = !DILocation(line: 1151, column: 11, scope: !1396)
!1435 = !DILocation(line: 1151, column: 9, scope: !1396)
!1436 = !DILocation(line: 1153, column: 10, scope: !1396)
!1437 = !DILocation(line: 1153, column: 2, scope: !1396)
!1438 = !DILocation(line: 1156, column: 4, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1396, file: !46, line: 1154, column: 2)
!1440 = !DILocation(line: 1157, column: 22, scope: !1439)
!1441 = !DILocation(line: 1157, column: 30, scope: !1439)
!1442 = !DILocation(line: 1157, column: 4, scope: !1439)
!1443 = !DILocation(line: 1158, column: 28, scope: !1439)
!1444 = !DILocation(line: 1158, column: 13, scope: !1439)
!1445 = !DILocation(line: 1158, column: 17, scope: !1439)
!1446 = !DILocation(line: 1160, column: 19, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1160, column: 4)
!1448 = !DILocation(line: 1160, column: 25, scope: !1447)
!1449 = !DILocation(line: 1160, column: 6, scope: !1447)
!1450 = !DILocation(line: 1160, column: 28, scope: !1447)
!1451 = !DILocation(line: 1160, column: 34, scope: !1447)
!1452 = !DILocation(line: 1160, column: 40, scope: !1447)
!1453 = !DILocation(line: 1160, column: 42, scope: !1447)
!1454 = !DILocation(line: 1161, column: 19, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1161, column: 4)
!1456 = !DILocation(line: 1161, column: 25, scope: !1455)
!1457 = !DILocation(line: 1161, column: 6, scope: !1455)
!1458 = !DILocation(line: 1161, column: 28, scope: !1455)
!1459 = !DILocation(line: 1161, column: 34, scope: !1455)
!1460 = !DILocation(line: 1161, column: 40, scope: !1455)
!1461 = !DILocation(line: 1161, column: 42, scope: !1455)
!1462 = !DILocation(line: 1162, column: 30, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1162, column: 4)
!1464 = !DILocation(line: 1162, column: 38, scope: !1463)
!1465 = !DILocation(line: 1162, column: 19, scope: !1463)
!1466 = !DILocation(line: 1162, column: 25, scope: !1463)
!1467 = !DILocation(line: 1162, column: 6, scope: !1463)
!1468 = !DILocation(line: 1162, column: 28, scope: !1463)
!1469 = !DILocation(line: 1162, column: 47, scope: !1463)
!1470 = !DILocation(line: 1162, column: 53, scope: !1463)
!1471 = !DILocation(line: 1162, column: 55, scope: !1463)
!1472 = !DILocation(line: 1163, column: 40, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1163, column: 4)
!1474 = !DILocation(line: 1163, column: 55, scope: !1473)
!1475 = !DILocation(line: 1163, column: 44, scope: !1473)
!1476 = !DILocation(line: 1163, column: 30, scope: !1473)
!1477 = !DILocation(line: 1163, column: 19, scope: !1473)
!1478 = !DILocation(line: 1163, column: 25, scope: !1473)
!1479 = !DILocation(line: 1163, column: 6, scope: !1473)
!1480 = !DILocation(line: 1163, column: 28, scope: !1473)
!1481 = !DILocation(line: 1163, column: 63, scope: !1473)
!1482 = !DILocation(line: 1163, column: 69, scope: !1473)
!1483 = !DILocation(line: 1163, column: 71, scope: !1473)
!1484 = !DILocation(line: 1164, column: 7, scope: !1439)
!1485 = !DILocation(line: 1164, column: 13, scope: !1439)
!1486 = !DILocation(line: 1164, column: 14, scope: !1439)
!1487 = !DILocation(line: 1164, column: 18, scope: !1439)
!1488 = !DILocation(line: 1165, column: 14, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1165, column: 4)
!1490 = !DILocation(line: 1165, column: 20, scope: !1489)
!1491 = !DILocation(line: 1165, column: 31, scope: !1489)
!1492 = !DILocation(line: 1165, column: 48, scope: !1489)
!1493 = !DILocation(line: 1165, column: 65, scope: !1489)
!1494 = !DILocation(line: 1165, column: 52, scope: !1489)
!1495 = !DILocation(line: 1165, column: 6, scope: !1489)
!1496 = !DILocation(line: 1165, column: 97, scope: !1489)
!1497 = !DILocation(line: 1165, column: 114, scope: !1489)
!1498 = !DILocation(line: 1165, column: 101, scope: !1489)
!1499 = !DILocation(line: 1165, column: 74, scope: !1489)
!1500 = !DILocation(line: 1165, column: 80, scope: !1489)
!1501 = !DILocation(line: 1165, column: 82, scope: !1489)
!1502 = !DILocation(line: 1166, column: 4, scope: !1439)
!1503 = !DILocation(line: 1170, column: 41, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !46, line: 1170, column: 6)
!1505 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1170, column: 4)
!1506 = !DILocation(line: 1170, column: 51, scope: !1504)
!1507 = !DILocation(line: 1170, column: 32, scope: !1504)
!1508 = !DILocation(line: 1170, column: 21, scope: !1504)
!1509 = !DILocation(line: 1170, column: 27, scope: !1504)
!1510 = !DILocation(line: 1170, column: 8, scope: !1504)
!1511 = !DILocation(line: 1170, column: 30, scope: !1504)
!1512 = !DILocation(line: 1170, column: 66, scope: !1504)
!1513 = !DILocation(line: 1170, column: 72, scope: !1504)
!1514 = !DILocation(line: 1170, column: 74, scope: !1504)
!1515 = !DILocation(line: 1170, column: 119, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1505, file: !46, line: 1170, column: 83)
!1517 = !DILocation(line: 1170, column: 129, scope: !1516)
!1518 = !DILocation(line: 1170, column: 136, scope: !1516)
!1519 = !DILocation(line: 1170, column: 109, scope: !1516)
!1520 = !DILocation(line: 1170, column: 98, scope: !1516)
!1521 = !DILocation(line: 1170, column: 104, scope: !1516)
!1522 = !DILocation(line: 1170, column: 85, scope: !1516)
!1523 = !DILocation(line: 1170, column: 107, scope: !1516)
!1524 = !DILocation(line: 1170, column: 151, scope: !1516)
!1525 = !DILocation(line: 1170, column: 157, scope: !1516)
!1526 = !DILocation(line: 1170, column: 159, scope: !1516)
!1527 = !DILocation(line: 1171, column: 41, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !46, line: 1171, column: 6)
!1529 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1171, column: 4)
!1530 = !DILocation(line: 1171, column: 50, scope: !1528)
!1531 = !DILocation(line: 1171, column: 32, scope: !1528)
!1532 = !DILocation(line: 1171, column: 21, scope: !1528)
!1533 = !DILocation(line: 1171, column: 27, scope: !1528)
!1534 = !DILocation(line: 1171, column: 8, scope: !1528)
!1535 = !DILocation(line: 1171, column: 30, scope: !1528)
!1536 = !DILocation(line: 1171, column: 65, scope: !1528)
!1537 = !DILocation(line: 1171, column: 71, scope: !1528)
!1538 = !DILocation(line: 1171, column: 73, scope: !1528)
!1539 = !DILocation(line: 1171, column: 118, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1529, file: !46, line: 1171, column: 82)
!1541 = !DILocation(line: 1171, column: 127, scope: !1540)
!1542 = !DILocation(line: 1171, column: 134, scope: !1540)
!1543 = !DILocation(line: 1171, column: 108, scope: !1540)
!1544 = !DILocation(line: 1171, column: 97, scope: !1540)
!1545 = !DILocation(line: 1171, column: 103, scope: !1540)
!1546 = !DILocation(line: 1171, column: 84, scope: !1540)
!1547 = !DILocation(line: 1171, column: 106, scope: !1540)
!1548 = !DILocation(line: 1171, column: 149, scope: !1540)
!1549 = !DILocation(line: 1171, column: 155, scope: !1540)
!1550 = !DILocation(line: 1171, column: 157, scope: !1540)
!1551 = !DILocation(line: 1172, column: 38, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1172, column: 4)
!1553 = !DILocation(line: 1172, column: 46, scope: !1552)
!1554 = !DILocation(line: 1172, column: 30, scope: !1552)
!1555 = !DILocation(line: 1172, column: 19, scope: !1552)
!1556 = !DILocation(line: 1172, column: 25, scope: !1552)
!1557 = !DILocation(line: 1172, column: 6, scope: !1552)
!1558 = !DILocation(line: 1172, column: 28, scope: !1552)
!1559 = !DILocation(line: 1172, column: 56, scope: !1552)
!1560 = !DILocation(line: 1172, column: 62, scope: !1552)
!1561 = !DILocation(line: 1172, column: 64, scope: !1552)
!1562 = !DILocation(line: 1173, column: 19, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1173, column: 4)
!1564 = !DILocation(line: 1173, column: 25, scope: !1563)
!1565 = !DILocation(line: 1173, column: 6, scope: !1563)
!1566 = !DILocation(line: 1173, column: 28, scope: !1563)
!1567 = !DILocation(line: 1173, column: 38, scope: !1563)
!1568 = !DILocation(line: 1173, column: 44, scope: !1563)
!1569 = !DILocation(line: 1173, column: 46, scope: !1563)
!1570 = !DILocation(line: 1174, column: 4, scope: !1439)
!1571 = !DILocation(line: 1178, column: 41, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !46, line: 1178, column: 6)
!1573 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1178, column: 4)
!1574 = !DILocation(line: 1178, column: 51, scope: !1572)
!1575 = !DILocation(line: 1178, column: 32, scope: !1572)
!1576 = !DILocation(line: 1178, column: 21, scope: !1572)
!1577 = !DILocation(line: 1178, column: 27, scope: !1572)
!1578 = !DILocation(line: 1178, column: 8, scope: !1572)
!1579 = !DILocation(line: 1178, column: 30, scope: !1572)
!1580 = !DILocation(line: 1178, column: 66, scope: !1572)
!1581 = !DILocation(line: 1178, column: 72, scope: !1572)
!1582 = !DILocation(line: 1178, column: 74, scope: !1572)
!1583 = !DILocation(line: 1178, column: 119, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1573, file: !46, line: 1178, column: 83)
!1585 = !DILocation(line: 1178, column: 129, scope: !1584)
!1586 = !DILocation(line: 1178, column: 136, scope: !1584)
!1587 = !DILocation(line: 1178, column: 109, scope: !1584)
!1588 = !DILocation(line: 1178, column: 98, scope: !1584)
!1589 = !DILocation(line: 1178, column: 104, scope: !1584)
!1590 = !DILocation(line: 1178, column: 85, scope: !1584)
!1591 = !DILocation(line: 1178, column: 107, scope: !1584)
!1592 = !DILocation(line: 1178, column: 151, scope: !1584)
!1593 = !DILocation(line: 1178, column: 157, scope: !1584)
!1594 = !DILocation(line: 1178, column: 159, scope: !1584)
!1595 = !DILocation(line: 1179, column: 41, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !46, line: 1179, column: 6)
!1597 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1179, column: 4)
!1598 = !DILocation(line: 1179, column: 51, scope: !1596)
!1599 = !DILocation(line: 1179, column: 32, scope: !1596)
!1600 = !DILocation(line: 1179, column: 21, scope: !1596)
!1601 = !DILocation(line: 1179, column: 27, scope: !1596)
!1602 = !DILocation(line: 1179, column: 8, scope: !1596)
!1603 = !DILocation(line: 1179, column: 30, scope: !1596)
!1604 = !DILocation(line: 1179, column: 66, scope: !1596)
!1605 = !DILocation(line: 1179, column: 72, scope: !1596)
!1606 = !DILocation(line: 1179, column: 74, scope: !1596)
!1607 = !DILocation(line: 1179, column: 119, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1597, file: !46, line: 1179, column: 83)
!1609 = !DILocation(line: 1179, column: 129, scope: !1608)
!1610 = !DILocation(line: 1179, column: 136, scope: !1608)
!1611 = !DILocation(line: 1179, column: 109, scope: !1608)
!1612 = !DILocation(line: 1179, column: 98, scope: !1608)
!1613 = !DILocation(line: 1179, column: 104, scope: !1608)
!1614 = !DILocation(line: 1179, column: 85, scope: !1608)
!1615 = !DILocation(line: 1179, column: 107, scope: !1608)
!1616 = !DILocation(line: 1179, column: 151, scope: !1608)
!1617 = !DILocation(line: 1179, column: 157, scope: !1608)
!1618 = !DILocation(line: 1179, column: 159, scope: !1608)
!1619 = !DILocation(line: 1180, column: 41, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !46, line: 1180, column: 6)
!1621 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1180, column: 4)
!1622 = !DILocation(line: 1180, column: 50, scope: !1620)
!1623 = !DILocation(line: 1180, column: 32, scope: !1620)
!1624 = !DILocation(line: 1180, column: 21, scope: !1620)
!1625 = !DILocation(line: 1180, column: 27, scope: !1620)
!1626 = !DILocation(line: 1180, column: 8, scope: !1620)
!1627 = !DILocation(line: 1180, column: 30, scope: !1620)
!1628 = !DILocation(line: 1180, column: 65, scope: !1620)
!1629 = !DILocation(line: 1180, column: 71, scope: !1620)
!1630 = !DILocation(line: 1180, column: 73, scope: !1620)
!1631 = !DILocation(line: 1180, column: 118, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1621, file: !46, line: 1180, column: 82)
!1633 = !DILocation(line: 1180, column: 127, scope: !1632)
!1634 = !DILocation(line: 1180, column: 134, scope: !1632)
!1635 = !DILocation(line: 1180, column: 108, scope: !1632)
!1636 = !DILocation(line: 1180, column: 97, scope: !1632)
!1637 = !DILocation(line: 1180, column: 103, scope: !1632)
!1638 = !DILocation(line: 1180, column: 84, scope: !1632)
!1639 = !DILocation(line: 1180, column: 106, scope: !1632)
!1640 = !DILocation(line: 1180, column: 149, scope: !1632)
!1641 = !DILocation(line: 1180, column: 155, scope: !1632)
!1642 = !DILocation(line: 1180, column: 157, scope: !1632)
!1643 = !DILocation(line: 1181, column: 38, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1181, column: 4)
!1645 = !DILocation(line: 1181, column: 46, scope: !1644)
!1646 = !DILocation(line: 1181, column: 30, scope: !1644)
!1647 = !DILocation(line: 1181, column: 19, scope: !1644)
!1648 = !DILocation(line: 1181, column: 25, scope: !1644)
!1649 = !DILocation(line: 1181, column: 6, scope: !1644)
!1650 = !DILocation(line: 1181, column: 28, scope: !1644)
!1651 = !DILocation(line: 1181, column: 56, scope: !1644)
!1652 = !DILocation(line: 1181, column: 62, scope: !1644)
!1653 = !DILocation(line: 1181, column: 64, scope: !1644)
!1654 = !DILocation(line: 1182, column: 19, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1182, column: 4)
!1656 = !DILocation(line: 1182, column: 25, scope: !1655)
!1657 = !DILocation(line: 1182, column: 6, scope: !1655)
!1658 = !DILocation(line: 1182, column: 28, scope: !1655)
!1659 = !DILocation(line: 1182, column: 38, scope: !1655)
!1660 = !DILocation(line: 1182, column: 44, scope: !1655)
!1661 = !DILocation(line: 1182, column: 46, scope: !1655)
!1662 = !DILocation(line: 1183, column: 4, scope: !1439)
!1663 = !DILocation(line: 1186, column: 4, scope: !1439)
!1664 = !DILocation(line: 1187, column: 29, scope: !1439)
!1665 = !DILocation(line: 1187, column: 37, scope: !1439)
!1666 = !DILocation(line: 1187, column: 4, scope: !1439)
!1667 = !DILocation(line: 1188, column: 28, scope: !1439)
!1668 = !DILocation(line: 1188, column: 13, scope: !1439)
!1669 = !DILocation(line: 1188, column: 17, scope: !1439)
!1670 = !DILocation(line: 1190, column: 19, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1190, column: 4)
!1672 = !DILocation(line: 1190, column: 25, scope: !1671)
!1673 = !DILocation(line: 1190, column: 6, scope: !1671)
!1674 = !DILocation(line: 1190, column: 28, scope: !1671)
!1675 = !DILocation(line: 1190, column: 56, scope: !1671)
!1676 = !DILocation(line: 1190, column: 62, scope: !1671)
!1677 = !DILocation(line: 1190, column: 64, scope: !1671)
!1678 = !DILocation(line: 1191, column: 41, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1191, column: 4)
!1680 = !DILocation(line: 1191, column: 30, scope: !1679)
!1681 = !DILocation(line: 1191, column: 19, scope: !1679)
!1682 = !DILocation(line: 1191, column: 25, scope: !1679)
!1683 = !DILocation(line: 1191, column: 6, scope: !1679)
!1684 = !DILocation(line: 1191, column: 28, scope: !1679)
!1685 = !DILocation(line: 1191, column: 54, scope: !1679)
!1686 = !DILocation(line: 1191, column: 60, scope: !1679)
!1687 = !DILocation(line: 1191, column: 62, scope: !1679)
!1688 = !DILocation(line: 1193, column: 40, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1193, column: 4)
!1690 = !DILocation(line: 1193, column: 55, scope: !1689)
!1691 = !DILocation(line: 1193, column: 44, scope: !1689)
!1692 = !DILocation(line: 1193, column: 30, scope: !1689)
!1693 = !DILocation(line: 1193, column: 19, scope: !1689)
!1694 = !DILocation(line: 1193, column: 25, scope: !1689)
!1695 = !DILocation(line: 1193, column: 6, scope: !1689)
!1696 = !DILocation(line: 1193, column: 28, scope: !1689)
!1697 = !DILocation(line: 1193, column: 63, scope: !1689)
!1698 = !DILocation(line: 1193, column: 69, scope: !1689)
!1699 = !DILocation(line: 1193, column: 71, scope: !1689)
!1700 = !DILocation(line: 1194, column: 14, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1439, file: !46, line: 1194, column: 4)
!1702 = !DILocation(line: 1194, column: 20, scope: !1701)
!1703 = !DILocation(line: 1194, column: 31, scope: !1701)
!1704 = !DILocation(line: 1194, column: 48, scope: !1701)
!1705 = !DILocation(line: 1194, column: 65, scope: !1701)
!1706 = !DILocation(line: 1194, column: 52, scope: !1701)
!1707 = !DILocation(line: 1194, column: 6, scope: !1701)
!1708 = !DILocation(line: 1194, column: 97, scope: !1701)
!1709 = !DILocation(line: 1194, column: 114, scope: !1701)
!1710 = !DILocation(line: 1194, column: 101, scope: !1701)
!1711 = !DILocation(line: 1194, column: 74, scope: !1701)
!1712 = !DILocation(line: 1194, column: 80, scope: !1701)
!1713 = !DILocation(line: 1194, column: 82, scope: !1701)
!1714 = !DILocation(line: 1195, column: 4, scope: !1439)
!1715 = !DILocation(line: 1195, column: 4, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1439, file: !46, discriminator: 1)
!1717 = !DILocation(line: 1206, column: 11, scope: !1439)
!1718 = !DILocation(line: 1204, column: 4, scope: !1439)
!1719 = !DILocation(line: 1207, column: 4, scope: !1439)
!1720 = !DILocation(line: 1209, column: 2, scope: !1396)
!1721 = !DILocation(line: 1210, column: 1, scope: !1396)
!1722 = !DILocalVariable(name: "fpath", arg: 1, scope: !142, file: !46, line: 1061, type: !33)
!1723 = !DILocation(line: 1061, column: 20, scope: !142)
!1724 = !DILocalVariable(name: "fdfs", scope: !142, file: !46, line: 1066, type: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1727, line: 48, baseType: !1728)
!1727 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1729, line: 241, size: 1728, align: 64, elements: !1730)
!1729 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1751, !1752, !1753, !1754, !1755, !1756, !1758, !1762, !1765, !1767, !1768, !1769, !1770, !1771, !1774, !1775}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1728, file: !1729, line: 242, baseType: !48, size: 32, align: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1728, file: !1729, line: 247, baseType: !33, size: 64, align: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1728, file: !1729, line: 248, baseType: !33, size: 64, align: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1728, file: !1729, line: 249, baseType: !33, size: 64, align: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1728, file: !1729, line: 250, baseType: !33, size: 64, align: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1728, file: !1729, line: 251, baseType: !33, size: 64, align: 64, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1728, file: !1729, line: 252, baseType: !33, size: 64, align: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1728, file: !1729, line: 253, baseType: !33, size: 64, align: 64, offset: 448)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1728, file: !1729, line: 254, baseType: !33, size: 64, align: 64, offset: 512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1728, file: !1729, line: 256, baseType: !33, size: 64, align: 64, offset: 576)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1728, file: !1729, line: 257, baseType: !33, size: 64, align: 64, offset: 640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1728, file: !1729, line: 258, baseType: !33, size: 64, align: 64, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1728, file: !1729, line: 260, baseType: !1744, size: 64, align: 64, offset: 768)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64, align: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1729, line: 156, size: 192, align: 64, elements: !1746)
!1746 = !{!1747, !1748, !1750}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1745, file: !1729, line: 157, baseType: !1744, size: 64, align: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1745, file: !1729, line: 158, baseType: !1749, size: 64, align: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64, align: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1745, file: !1729, line: 162, baseType: !48, size: 32, align: 32, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1728, file: !1729, line: 262, baseType: !1749, size: 64, align: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1728, file: !1729, line: 264, baseType: !48, size: 32, align: 32, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1728, file: !1729, line: 268, baseType: !48, size: 32, align: 32, offset: 928)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1728, file: !1729, line: 270, baseType: !114, size: 64, align: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1728, file: !1729, line: 274, baseType: !116, size: 16, align: 16, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1728, file: !1729, line: 275, baseType: !1757, size: 8, align: 8, offset: 1040)
!1757 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1728, file: !1729, line: 276, baseType: !1759, size: 8, align: 8, offset: 1048)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !1760)
!1760 = !{!1761}
!1761 = !DISubrange(count: 1)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1728, file: !1729, line: 280, baseType: !1763, size: 64, align: 64, offset: 1088)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64, align: 64)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1729, line: 150, baseType: null)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1728, file: !1729, line: 289, baseType: !1766, size: 64, align: 64, offset: 1152)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !41, line: 132, baseType: !42)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1728, file: !1729, line: 297, baseType: !34, size: 64, align: 64, offset: 1216)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1728, file: !1729, line: 298, baseType: !34, size: 64, align: 64, offset: 1280)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1728, file: !1729, line: 299, baseType: !34, size: 64, align: 64, offset: 1344)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1728, file: !1729, line: 300, baseType: !34, size: 64, align: 64, offset: 1408)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1728, file: !1729, line: 302, baseType: !1772, size: 64, align: 64, offset: 1472)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1773, line: 216, baseType: !112)
!1773 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1728, file: !1729, line: 303, baseType: !48, size: 32, align: 32, offset: 1536)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1728, file: !1729, line: 305, baseType: !1776, size: 160, align: 8, offset: 1568)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, align: 8, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 20)
!1779 = !DILocation(line: 1066, column: 8, scope: !142)
!1780 = !DILocalVariable(name: "e", scope: !142, file: !46, line: 1067, type: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64, align: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1783, line: 53, size: 320, align: 64, elements: !1784)
!1783 = !DIFile(filename: "/usr/include/mntent.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1782, file: !1783, line: 55, baseType: !33, size: 64, align: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1782, file: !1783, line: 56, baseType: !33, size: 64, align: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1782, file: !1783, line: 57, baseType: !33, size: 64, align: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1782, file: !1783, line: 58, baseType: !33, size: 64, align: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1782, file: !1783, line: 59, baseType: !48, size: 32, align: 32, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1782, file: !1783, line: 60, baseType: !48, size: 32, align: 32, offset: 288)
!1791 = !DILocation(line: 1067, column: 17, scope: !142)
!1792 = !DILocation(line: 1071, column: 2, scope: !142)
!1793 = !DILocation(line: 1072, column: 2, scope: !142)
!1794 = !DILocation(line: 1073, column: 2, scope: !142)
!1795 = !DILocation(line: 1076, column: 9, scope: !142)
!1796 = !DILocation(line: 1076, column: 7, scope: !142)
!1797 = !DILocation(line: 1077, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !142, file: !46, line: 1077, column: 6)
!1799 = !DILocation(line: 1077, column: 6, scope: !142)
!1800 = !DILocation(line: 1078, column: 3, scope: !1798)
!1801 = !DILocation(line: 1080, column: 2, scope: !142)
!1802 = !DILocation(line: 1080, column: 24, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !142, file: !46, discriminator: 1)
!1804 = !DILocation(line: 1080, column: 14, scope: !1803)
!1805 = !DILocation(line: 1080, column: 12, scope: !1803)
!1806 = !DILocation(line: 1080, column: 2, scope: !1803)
!1807 = !DILocation(line: 1082, column: 22, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !46, line: 1082, column: 7)
!1809 = distinct !DILexicalBlock(scope: !142, file: !46, line: 1081, column: 2)
!1810 = !DILocation(line: 1082, column: 25, scope: !1808)
!1811 = !DILocation(line: 1082, column: 34, scope: !1808)
!1812 = !DILocation(line: 1082, column: 7, scope: !1808)
!1813 = !DILocation(line: 1082, column: 7, scope: !1809)
!1814 = !DILocation(line: 1084, column: 22, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !46, line: 1083, column: 3)
!1816 = !DILocation(line: 1084, column: 25, scope: !1815)
!1817 = !DILocation(line: 1084, column: 4, scope: !1815)
!1818 = !DILocation(line: 1085, column: 22, scope: !1815)
!1819 = !DILocation(line: 1085, column: 25, scope: !1815)
!1820 = !DILocation(line: 1085, column: 4, scope: !1815)
!1821 = !DILocation(line: 1086, column: 15, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1815, file: !46, line: 1086, column: 8)
!1823 = !DILocation(line: 1086, column: 18, scope: !1822)
!1824 = !DILocation(line: 1086, column: 8, scope: !1822)
!1825 = !DILocation(line: 1086, column: 36, scope: !1822)
!1826 = !DILocation(line: 1086, column: 46, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1822, file: !46, discriminator: 1)
!1828 = !DILocation(line: 1086, column: 49, scope: !1827)
!1829 = !DILocation(line: 1086, column: 39, scope: !1827)
!1830 = !DILocation(line: 1086, column: 8, scope: !1827)
!1831 = !DILocalVariable(name: "fd", scope: !1832, file: !46, line: 1088, type: !48)
!1832 = distinct !DILexicalBlock(scope: !1822, file: !46, line: 1087, column: 4)
!1833 = !DILocation(line: 1088, column: 9, scope: !1832)
!1834 = !DILocation(line: 1088, column: 19, scope: !1832)
!1835 = !DILocation(line: 1088, column: 22, scope: !1832)
!1836 = !DILocation(line: 1088, column: 14, scope: !1832)
!1837 = !DILocation(line: 1089, column: 9, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !46, line: 1089, column: 9)
!1839 = !DILocation(line: 1089, column: 12, scope: !1838)
!1840 = !DILocation(line: 1089, column: 9, scope: !1832)
!1841 = !DILocalVariable(name: "buf", scope: !1842, file: !46, line: 1091, type: !1843)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !46, line: 1090, column: 5)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 4096, align: 8, elements: !1844)
!1844 = !{!1845}
!1845 = !DISubrange(count: 512)
!1846 = !DILocation(line: 1091, column: 20, scope: !1842)
!1847 = !DILocation(line: 1092, column: 6, scope: !1842)
!1848 = !DILocation(line: 1093, column: 17, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1842, file: !46, line: 1093, column: 10)
!1850 = !DILocation(line: 1093, column: 20, scope: !1849)
!1851 = !DILocation(line: 1093, column: 10, scope: !1849)
!1852 = !DILocation(line: 1093, column: 10, scope: !1842)
!1853 = !DILocation(line: 1096, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !46, line: 1095, column: 6)
!1855 = !DILocation(line: 1097, column: 12, scope: !1854)
!1856 = !DILocation(line: 1097, column: 16, scope: !1854)
!1857 = !DILocation(line: 1097, column: 7, scope: !1854)
!1858 = !DILocation(line: 1099, column: 9, scope: !1854)
!1859 = !DILocation(line: 1099, column: 17, scope: !1854)
!1860 = !DILocation(line: 1099, column: 27, scope: !1854)
!1861 = !DILocation(line: 1099, column: 35, scope: !1854)
!1862 = !DILocation(line: 1099, column: 24, scope: !1854)
!1863 = !DILocation(line: 1100, column: 9, scope: !1854)
!1864 = !DILocation(line: 1100, column: 17, scope: !1854)
!1865 = !DILocation(line: 1099, column: 42, scope: !1854)
!1866 = !DILocation(line: 1100, column: 25, scope: !1854)
!1867 = !DILocation(line: 1100, column: 23, scope: !1854)
!1868 = !DILocation(line: 1099, column: 8, scope: !1854)
!1869 = !DILocation(line: 1098, column: 19, scope: !1854)
!1870 = !DILocation(line: 1101, column: 36, scope: !1854)
!1871 = !DILocation(line: 1101, column: 40, scope: !1854)
!1872 = !DILocation(line: 1101, column: 7, scope: !1854)
!1873 = !DILocation(line: 1102, column: 22, scope: !1854)
!1874 = !DILocation(line: 1103, column: 6, scope: !1854)
!1875 = !DILocation(line: 1104, column: 21, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1849, file: !46, line: 1104, column: 15)
!1877 = !DILocation(line: 1104, column: 15, scope: !1876)
!1878 = !DILocation(line: 1104, column: 41, scope: !1876)
!1879 = !DILocation(line: 1104, column: 15, scope: !1849)
!1880 = !DILocation(line: 1106, column: 12, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !46, line: 1105, column: 6)
!1882 = !DILocation(line: 1106, column: 16, scope: !1881)
!1883 = !DILocation(line: 1106, column: 7, scope: !1881)
!1884 = !DILocation(line: 1107, column: 36, scope: !1881)
!1885 = !DILocation(line: 1107, column: 40, scope: !1881)
!1886 = !DILocation(line: 1107, column: 7, scope: !1881)
!1887 = !DILocation(line: 1108, column: 22, scope: !1881)
!1888 = !DILocation(line: 1110, column: 6, scope: !1881)
!1889 = !DILocation(line: 1111, column: 12, scope: !1842)
!1890 = !DILocation(line: 1111, column: 6, scope: !1842)
!1891 = !DILocation(line: 1112, column: 5, scope: !1842)
!1892 = !DILocation(line: 1113, column: 4, scope: !1832)
!1893 = !DILocation(line: 1114, column: 3, scope: !1815)
!1894 = !DILocation(line: 1080, column: 2, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !142, file: !46, discriminator: 2)
!1896 = distinct !{!1896, !1801}
!1897 = !DILocation(line: 1116, column: 12, scope: !142)
!1898 = !DILocation(line: 1116, column: 2, scope: !142)
!1899 = !DILocation(line: 1124, column: 2, scope: !142)
!1900 = !DILocation(line: 1125, column: 1, scope: !142)
!1901 = distinct !DISubprogram(name: "disk_query_directory", scope: !46, file: !46, line: 1213, type: !1902, isLocal: false, isDefinition: true, scopeLine: 1214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!57, !59, !36, !33, !76}
!1904 = !DILocalVariable(name: "handle", arg: 1, scope: !1901, file: !46, line: 1213, type: !59)
!1905 = !DILocation(line: 1213, column: 34, scope: !1901)
!1906 = !DILocalVariable(name: "info_class", arg: 2, scope: !1901, file: !46, line: 1213, type: !36)
!1907 = !DILocation(line: 1213, column: 49, scope: !1901)
!1908 = !DILocalVariable(name: "pattern", arg: 3, scope: !1901, file: !46, line: 1213, type: !33)
!1909 = !DILocation(line: 1213, column: 67, scope: !1901)
!1910 = !DILocalVariable(name: "out", arg: 4, scope: !1901, file: !46, line: 1213, type: !76)
!1911 = !DILocation(line: 1213, column: 83, scope: !1901)
!1912 = !DILocalVariable(name: "file_attributes", scope: !1901, file: !46, line: 1215, type: !36)
!1913 = !DILocation(line: 1215, column: 9, scope: !1901)
!1914 = !DILocalVariable(name: "ft_low", scope: !1901, file: !46, line: 1215, type: !36)
!1915 = !DILocation(line: 1215, column: 26, scope: !1901)
!1916 = !DILocalVariable(name: "ft_high", scope: !1901, file: !46, line: 1215, type: !36)
!1917 = !DILocation(line: 1215, column: 34, scope: !1901)
!1918 = !DILocalVariable(name: "dirname", scope: !1901, file: !46, line: 1216, type: !33)
!1919 = !DILocation(line: 1216, column: 8, scope: !1901)
!1920 = !DILocalVariable(name: "fullpath", scope: !1901, file: !46, line: 1216, type: !29)
!1921 = !DILocation(line: 1216, column: 17, scope: !1901)
!1922 = !DILocalVariable(name: "pdir", scope: !1901, file: !46, line: 1217, type: !101)
!1923 = !DILocation(line: 1217, column: 7, scope: !1901)
!1924 = !DILocalVariable(name: "pdirent", scope: !1901, file: !46, line: 1218, type: !106)
!1925 = !DILocation(line: 1218, column: 17, scope: !1901)
!1926 = !DILocalVariable(name: "filestat", scope: !1901, file: !46, line: 1219, type: !259)
!1927 = !DILocation(line: 1219, column: 14, scope: !1901)
!1928 = !DILocalVariable(name: "pfinfo", scope: !1901, file: !46, line: 1220, type: !640)
!1929 = !DILocation(line: 1220, column: 19, scope: !1901)
!1930 = !DILocalVariable(name: "stmp", scope: !1901, file: !46, line: 1221, type: !79)
!1931 = !DILocation(line: 1221, column: 16, scope: !1901)
!1932 = !DILocation(line: 1224, column: 9, scope: !1901)
!1933 = !DILocation(line: 1224, column: 17, scope: !1901)
!1934 = !DILocation(line: 1224, column: 29, scope: !1901)
!1935 = !DILocation(line: 1223, column: 2, scope: !1901)
!1936 = !DILocation(line: 1226, column: 24, scope: !1901)
!1937 = !DILocation(line: 1226, column: 13, scope: !1901)
!1938 = !DILocation(line: 1226, column: 9, scope: !1901)
!1939 = !DILocation(line: 1227, column: 9, scope: !1901)
!1940 = !DILocation(line: 1227, column: 17, scope: !1901)
!1941 = !DILocation(line: 1227, column: 7, scope: !1901)
!1942 = !DILocation(line: 1228, column: 12, scope: !1901)
!1943 = !DILocation(line: 1228, column: 20, scope: !1901)
!1944 = !DILocation(line: 1228, column: 10, scope: !1901)
!1945 = !DILocation(line: 1229, column: 18, scope: !1901)
!1946 = !DILocation(line: 1231, column: 2, scope: !1901)
!1947 = !DILocation(line: 1232, column: 2, scope: !1901)
!1948 = !DILocation(line: 1234, column: 10, scope: !1901)
!1949 = !DILocation(line: 1234, column: 2, scope: !1901)
!1950 = !DILocation(line: 1242, column: 8, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1242, column: 8)
!1952 = distinct !DILexicalBlock(scope: !1901, file: !46, line: 1235, column: 2)
!1953 = !DILocation(line: 1242, column: 16, scope: !1951)
!1954 = !DILocation(line: 1242, column: 23, scope: !1951)
!1955 = !DILocation(line: 1242, column: 26, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1951, file: !46, discriminator: 1)
!1957 = !DILocation(line: 1242, column: 37, scope: !1956)
!1958 = !DILocation(line: 1242, column: 8, scope: !1956)
!1959 = !DILocation(line: 1244, column: 13, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1951, file: !46, line: 1243, column: 4)
!1961 = !DILocation(line: 1244, column: 21, scope: !1960)
!1962 = !DILocation(line: 1244, column: 42, scope: !1960)
!1963 = !DILocation(line: 1244, column: 34, scope: !1960)
!1964 = !DILocation(line: 1244, column: 32, scope: !1960)
!1965 = !DILocation(line: 1244, column: 5, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1960, file: !46, discriminator: 1)
!1967 = !DILocation(line: 1245, column: 15, scope: !1960)
!1968 = !DILocation(line: 1245, column: 5, scope: !1960)
!1969 = !DILocation(line: 1246, column: 4, scope: !1960)
!1970 = !DILocation(line: 1249, column: 22, scope: !1952)
!1971 = !DILocation(line: 1249, column: 14, scope: !1952)
!1972 = !DILocation(line: 1249, column: 12, scope: !1952)
!1973 = !DILocation(line: 1250, column: 4, scope: !1952)
!1974 = !DILocation(line: 1250, column: 11, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1952, file: !46, discriminator: 1)
!1976 = !DILocation(line: 1250, column: 19, scope: !1975)
!1977 = !DILocation(line: 1250, column: 30, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1952, file: !46, discriminator: 2)
!1979 = !DILocation(line: 1250, column: 38, scope: !1978)
!1980 = !DILocation(line: 1250, column: 47, scope: !1978)
!1981 = !DILocation(line: 1250, column: 56, scope: !1978)
!1982 = !DILocation(line: 1250, column: 22, scope: !1978)
!1983 = !DILocation(line: 1250, column: 67, scope: !1978)
!1984 = !DILocation(line: 1250, column: 4, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1952, file: !46, discriminator: 3)
!1986 = !DILocation(line: 1251, column: 23, scope: !1952)
!1987 = !DILocation(line: 1251, column: 15, scope: !1952)
!1988 = !DILocation(line: 1251, column: 13, scope: !1952)
!1989 = !DILocation(line: 1250, column: 4, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1952, file: !46, discriminator: 4)
!1991 = distinct !{!1991, !1973}
!1992 = !DILocation(line: 1253, column: 8, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1253, column: 8)
!1994 = !DILocation(line: 1253, column: 16, scope: !1993)
!1995 = !DILocation(line: 1253, column: 8, scope: !1952)
!1996 = !DILocation(line: 1254, column: 5, scope: !1993)
!1997 = !DILocation(line: 1257, column: 12, scope: !1952)
!1998 = !DILocation(line: 1257, column: 31, scope: !1952)
!1999 = !DILocation(line: 1257, column: 40, scope: !1952)
!2000 = !DILocation(line: 1257, column: 49, scope: !1952)
!2001 = !DILocation(line: 1257, column: 4, scope: !1952)
!2002 = !DILocation(line: 1259, column: 13, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1259, column: 8)
!2004 = !DILocation(line: 1259, column: 8, scope: !2003)
!2005 = !DILocation(line: 1259, column: 8, scope: !1952)
!2006 = !DILocation(line: 1261, column: 14, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !46, line: 1260, column: 4)
!2008 = !DILocation(line: 1261, column: 13, scope: !2007)
!2009 = !DILocation(line: 1261, column: 5, scope: !2007)
!2010 = !DILocation(line: 1267, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !46, line: 1262, column: 5)
!2012 = !DILocation(line: 1268, column: 7, scope: !2011)
!2013 = !DILocation(line: 1274, column: 24, scope: !2011)
!2014 = !DILocation(line: 1274, column: 23, scope: !2011)
!2015 = !DILocation(line: 1274, column: 14, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2011, file: !46, discriminator: 1)
!2017 = !DILocation(line: 1272, column: 7, scope: !2011)
!2018 = !DILocation(line: 1275, column: 10, scope: !2011)
!2019 = !DILocation(line: 1275, column: 16, scope: !2011)
!2020 = !DILocation(line: 1275, column: 17, scope: !2011)
!2021 = !DILocation(line: 1275, column: 21, scope: !2011)
!2022 = !DILocation(line: 1276, column: 7, scope: !2011)
!2023 = !DILocation(line: 1278, column: 4, scope: !2007)
!2024 = !DILocation(line: 1280, column: 16, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1280, column: 7)
!2026 = !DILocation(line: 1280, column: 10, scope: !2025)
!2027 = !DILocation(line: 1280, column: 21, scope: !2025)
!2028 = !DILocation(line: 1280, column: 7, scope: !1952)
!2029 = !DILocation(line: 1281, column: 21, scope: !2025)
!2030 = !DILocation(line: 1281, column: 5, scope: !2025)
!2031 = !DILocation(line: 1282, column: 8, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1282, column: 8)
!2033 = !DILocation(line: 1282, column: 17, scope: !2032)
!2034 = !DILocation(line: 1282, column: 27, scope: !2032)
!2035 = !DILocation(line: 1282, column: 8, scope: !1952)
!2036 = !DILocation(line: 1283, column: 21, scope: !2032)
!2037 = !DILocation(line: 1283, column: 5, scope: !2032)
!2038 = !DILocation(line: 1284, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1284, column: 8)
!2040 = !DILocation(line: 1284, column: 8, scope: !1952)
!2041 = !DILocation(line: 1285, column: 21, scope: !2039)
!2042 = !DILocation(line: 1285, column: 5, scope: !2039)
!2043 = !DILocation(line: 1286, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1286, column: 8)
!2045 = !DILocation(line: 1286, column: 27, scope: !2044)
!2046 = !DILocation(line: 1286, column: 8, scope: !1952)
!2047 = !DILocation(line: 1287, column: 21, scope: !2044)
!2048 = !DILocation(line: 1287, column: 5, scope: !2044)
!2049 = !DILocation(line: 1290, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1290, column: 4)
!2051 = !DILocation(line: 1290, column: 25, scope: !2050)
!2052 = !DILocation(line: 1290, column: 6, scope: !2050)
!2053 = !DILocation(line: 1290, column: 28, scope: !2050)
!2054 = !DILocation(line: 1290, column: 34, scope: !2050)
!2055 = !DILocation(line: 1290, column: 40, scope: !2050)
!2056 = !DILocation(line: 1290, column: 42, scope: !2050)
!2057 = !DILocation(line: 1291, column: 19, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1952, file: !46, line: 1291, column: 4)
!2059 = !DILocation(line: 1291, column: 25, scope: !2058)
!2060 = !DILocation(line: 1291, column: 6, scope: !2058)
!2061 = !DILocation(line: 1291, column: 28, scope: !2058)
!2062 = !DILocation(line: 1291, column: 34, scope: !2058)
!2063 = !DILocation(line: 1291, column: 40, scope: !2058)
!2064 = !DILocation(line: 1291, column: 42, scope: !2058)
!2065 = !DILocation(line: 1292, column: 4, scope: !1952)
!2066 = !DILocation(line: 1297, column: 11, scope: !1952)
!2067 = !DILocation(line: 1295, column: 4, scope: !1952)
!2068 = !DILocation(line: 1298, column: 4, scope: !1952)
!2069 = !DILocation(line: 1302, column: 2, scope: !1901)
!2070 = !DILocation(line: 1303, column: 27, scope: !1901)
!2071 = !DILocation(line: 1303, column: 36, scope: !1901)
!2072 = !DILocation(line: 1303, column: 2, scope: !1901)
!2073 = !DILocation(line: 1304, column: 26, scope: !1901)
!2074 = !DILocation(line: 1304, column: 11, scope: !1901)
!2075 = !DILocation(line: 1304, column: 15, scope: !1901)
!2076 = !DILocation(line: 1306, column: 10, scope: !1901)
!2077 = !DILocation(line: 1306, column: 2, scope: !1901)
!2078 = !DILocation(line: 1310, column: 35, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1901, file: !46, line: 1307, column: 2)
!2080 = !DILocation(line: 1310, column: 4, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2079, file: !46, discriminator: 1)
!2082 = !DILocation(line: 1312, column: 30, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1312, column: 4)
!2084 = !DILocation(line: 1312, column: 19, scope: !2083)
!2085 = !DILocation(line: 1312, column: 25, scope: !2083)
!2086 = !DILocation(line: 1312, column: 6, scope: !2083)
!2087 = !DILocation(line: 1312, column: 28, scope: !2083)
!2088 = !DILocation(line: 1312, column: 39, scope: !2083)
!2089 = !DILocation(line: 1312, column: 45, scope: !2083)
!2090 = !DILocation(line: 1312, column: 47, scope: !2083)
!2091 = !DILocation(line: 1313, column: 30, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1313, column: 4)
!2093 = !DILocation(line: 1313, column: 19, scope: !2092)
!2094 = !DILocation(line: 1313, column: 25, scope: !2092)
!2095 = !DILocation(line: 1313, column: 6, scope: !2092)
!2096 = !DILocation(line: 1313, column: 28, scope: !2092)
!2097 = !DILocation(line: 1313, column: 40, scope: !2092)
!2098 = !DILocation(line: 1313, column: 46, scope: !2092)
!2099 = !DILocation(line: 1313, column: 48, scope: !2092)
!2100 = !DILocation(line: 1315, column: 43, scope: !2079)
!2101 = !DILocation(line: 1315, column: 51, scope: !2079)
!2102 = !DILocation(line: 1315, column: 4, scope: !2079)
!2103 = !DILocation(line: 1316, column: 30, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1316, column: 4)
!2105 = !DILocation(line: 1316, column: 19, scope: !2104)
!2106 = !DILocation(line: 1316, column: 25, scope: !2104)
!2107 = !DILocation(line: 1316, column: 6, scope: !2104)
!2108 = !DILocation(line: 1316, column: 28, scope: !2104)
!2109 = !DILocation(line: 1316, column: 39, scope: !2104)
!2110 = !DILocation(line: 1316, column: 45, scope: !2104)
!2111 = !DILocation(line: 1316, column: 47, scope: !2104)
!2112 = !DILocation(line: 1317, column: 30, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1317, column: 4)
!2114 = !DILocation(line: 1317, column: 19, scope: !2113)
!2115 = !DILocation(line: 1317, column: 25, scope: !2113)
!2116 = !DILocation(line: 1317, column: 6, scope: !2113)
!2117 = !DILocation(line: 1317, column: 28, scope: !2113)
!2118 = !DILocation(line: 1317, column: 40, scope: !2113)
!2119 = !DILocation(line: 1317, column: 46, scope: !2113)
!2120 = !DILocation(line: 1317, column: 48, scope: !2113)
!2121 = !DILocation(line: 1319, column: 43, scope: !2079)
!2122 = !DILocation(line: 1319, column: 51, scope: !2079)
!2123 = !DILocation(line: 1319, column: 4, scope: !2079)
!2124 = !DILocation(line: 1320, column: 30, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1320, column: 4)
!2126 = !DILocation(line: 1320, column: 19, scope: !2125)
!2127 = !DILocation(line: 1320, column: 25, scope: !2125)
!2128 = !DILocation(line: 1320, column: 6, scope: !2125)
!2129 = !DILocation(line: 1320, column: 28, scope: !2125)
!2130 = !DILocation(line: 1320, column: 39, scope: !2125)
!2131 = !DILocation(line: 1320, column: 45, scope: !2125)
!2132 = !DILocation(line: 1320, column: 47, scope: !2125)
!2133 = !DILocation(line: 1321, column: 30, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1321, column: 4)
!2135 = !DILocation(line: 1321, column: 19, scope: !2134)
!2136 = !DILocation(line: 1321, column: 25, scope: !2134)
!2137 = !DILocation(line: 1321, column: 6, scope: !2134)
!2138 = !DILocation(line: 1321, column: 28, scope: !2134)
!2139 = !DILocation(line: 1321, column: 40, scope: !2134)
!2140 = !DILocation(line: 1321, column: 46, scope: !2134)
!2141 = !DILocation(line: 1321, column: 48, scope: !2134)
!2142 = !DILocation(line: 1323, column: 43, scope: !2079)
!2143 = !DILocation(line: 1323, column: 51, scope: !2079)
!2144 = !DILocation(line: 1323, column: 4, scope: !2079)
!2145 = !DILocation(line: 1324, column: 30, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1324, column: 4)
!2147 = !DILocation(line: 1324, column: 19, scope: !2146)
!2148 = !DILocation(line: 1324, column: 25, scope: !2146)
!2149 = !DILocation(line: 1324, column: 6, scope: !2146)
!2150 = !DILocation(line: 1324, column: 28, scope: !2146)
!2151 = !DILocation(line: 1324, column: 39, scope: !2146)
!2152 = !DILocation(line: 1324, column: 45, scope: !2146)
!2153 = !DILocation(line: 1324, column: 47, scope: !2146)
!2154 = !DILocation(line: 1325, column: 30, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1325, column: 4)
!2156 = !DILocation(line: 1325, column: 19, scope: !2155)
!2157 = !DILocation(line: 1325, column: 25, scope: !2155)
!2158 = !DILocation(line: 1325, column: 6, scope: !2155)
!2159 = !DILocation(line: 1325, column: 28, scope: !2155)
!2160 = !DILocation(line: 1325, column: 40, scope: !2155)
!2161 = !DILocation(line: 1325, column: 46, scope: !2155)
!2162 = !DILocation(line: 1325, column: 48, scope: !2155)
!2163 = !DILocation(line: 1327, column: 42, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !46, line: 1327, column: 6)
!2165 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1327, column: 4)
!2166 = !DILocation(line: 1327, column: 51, scope: !2164)
!2167 = !DILocation(line: 1327, column: 32, scope: !2164)
!2168 = !DILocation(line: 1327, column: 21, scope: !2164)
!2169 = !DILocation(line: 1327, column: 27, scope: !2164)
!2170 = !DILocation(line: 1327, column: 8, scope: !2164)
!2171 = !DILocation(line: 1327, column: 30, scope: !2164)
!2172 = !DILocation(line: 1327, column: 66, scope: !2164)
!2173 = !DILocation(line: 1327, column: 72, scope: !2164)
!2174 = !DILocation(line: 1327, column: 74, scope: !2164)
!2175 = !DILocation(line: 1327, column: 120, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2165, file: !46, line: 1327, column: 83)
!2177 = !DILocation(line: 1327, column: 129, scope: !2176)
!2178 = !DILocation(line: 1327, column: 136, scope: !2176)
!2179 = !DILocation(line: 1327, column: 109, scope: !2176)
!2180 = !DILocation(line: 1327, column: 98, scope: !2176)
!2181 = !DILocation(line: 1327, column: 104, scope: !2176)
!2182 = !DILocation(line: 1327, column: 85, scope: !2176)
!2183 = !DILocation(line: 1327, column: 107, scope: !2176)
!2184 = !DILocation(line: 1327, column: 151, scope: !2176)
!2185 = !DILocation(line: 1327, column: 157, scope: !2176)
!2186 = !DILocation(line: 1327, column: 159, scope: !2176)
!2187 = !DILocation(line: 1328, column: 42, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !46, line: 1328, column: 6)
!2189 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1328, column: 4)
!2190 = !DILocation(line: 1328, column: 51, scope: !2188)
!2191 = !DILocation(line: 1328, column: 32, scope: !2188)
!2192 = !DILocation(line: 1328, column: 21, scope: !2188)
!2193 = !DILocation(line: 1328, column: 27, scope: !2188)
!2194 = !DILocation(line: 1328, column: 8, scope: !2188)
!2195 = !DILocation(line: 1328, column: 30, scope: !2188)
!2196 = !DILocation(line: 1328, column: 66, scope: !2188)
!2197 = !DILocation(line: 1328, column: 72, scope: !2188)
!2198 = !DILocation(line: 1328, column: 74, scope: !2188)
!2199 = !DILocation(line: 1328, column: 120, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2189, file: !46, line: 1328, column: 83)
!2201 = !DILocation(line: 1328, column: 129, scope: !2200)
!2202 = !DILocation(line: 1328, column: 136, scope: !2200)
!2203 = !DILocation(line: 1328, column: 109, scope: !2200)
!2204 = !DILocation(line: 1328, column: 98, scope: !2200)
!2205 = !DILocation(line: 1328, column: 104, scope: !2200)
!2206 = !DILocation(line: 1328, column: 85, scope: !2200)
!2207 = !DILocation(line: 1328, column: 107, scope: !2200)
!2208 = !DILocation(line: 1328, column: 151, scope: !2200)
!2209 = !DILocation(line: 1328, column: 157, scope: !2200)
!2210 = !DILocation(line: 1328, column: 159, scope: !2200)
!2211 = !DILocation(line: 1329, column: 30, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1329, column: 4)
!2213 = !DILocation(line: 1329, column: 19, scope: !2212)
!2214 = !DILocation(line: 1329, column: 25, scope: !2212)
!2215 = !DILocation(line: 1329, column: 6, scope: !2212)
!2216 = !DILocation(line: 1329, column: 28, scope: !2212)
!2217 = !DILocation(line: 1329, column: 48, scope: !2212)
!2218 = !DILocation(line: 1329, column: 54, scope: !2212)
!2219 = !DILocation(line: 1329, column: 56, scope: !2212)
!2220 = !DILocation(line: 1330, column: 40, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1330, column: 4)
!2222 = !DILocation(line: 1330, column: 55, scope: !2221)
!2223 = !DILocation(line: 1330, column: 44, scope: !2221)
!2224 = !DILocation(line: 1330, column: 30, scope: !2221)
!2225 = !DILocation(line: 1330, column: 19, scope: !2221)
!2226 = !DILocation(line: 1330, column: 25, scope: !2221)
!2227 = !DILocation(line: 1330, column: 6, scope: !2221)
!2228 = !DILocation(line: 1330, column: 28, scope: !2221)
!2229 = !DILocation(line: 1330, column: 63, scope: !2221)
!2230 = !DILocation(line: 1330, column: 69, scope: !2221)
!2231 = !DILocation(line: 1330, column: 71, scope: !2221)
!2232 = !DILocation(line: 1331, column: 19, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1331, column: 4)
!2234 = !DILocation(line: 1331, column: 25, scope: !2233)
!2235 = !DILocation(line: 1331, column: 6, scope: !2233)
!2236 = !DILocation(line: 1331, column: 28, scope: !2233)
!2237 = !DILocation(line: 1331, column: 34, scope: !2233)
!2238 = !DILocation(line: 1331, column: 40, scope: !2233)
!2239 = !DILocation(line: 1331, column: 42, scope: !2233)
!2240 = !DILocation(line: 1332, column: 7, scope: !2079)
!2241 = !DILocation(line: 1332, column: 13, scope: !2079)
!2242 = !DILocation(line: 1332, column: 14, scope: !2079)
!2243 = !DILocation(line: 1332, column: 18, scope: !2079)
!2244 = !DILocation(line: 1333, column: 14, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1333, column: 4)
!2246 = !DILocation(line: 1333, column: 20, scope: !2245)
!2247 = !DILocation(line: 1333, column: 6, scope: !2245)
!2248 = !DILocation(line: 1333, column: 30, scope: !2245)
!2249 = !DILocation(line: 1333, column: 36, scope: !2245)
!2250 = !DILocation(line: 1333, column: 38, scope: !2245)
!2251 = !DILocation(line: 1334, column: 14, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1334, column: 4)
!2253 = !DILocation(line: 1334, column: 20, scope: !2252)
!2254 = !DILocation(line: 1334, column: 31, scope: !2252)
!2255 = !DILocation(line: 1334, column: 48, scope: !2252)
!2256 = !DILocation(line: 1334, column: 65, scope: !2252)
!2257 = !DILocation(line: 1334, column: 52, scope: !2252)
!2258 = !DILocation(line: 1334, column: 6, scope: !2252)
!2259 = !DILocation(line: 1334, column: 97, scope: !2252)
!2260 = !DILocation(line: 1334, column: 114, scope: !2252)
!2261 = !DILocation(line: 1334, column: 101, scope: !2252)
!2262 = !DILocation(line: 1334, column: 74, scope: !2252)
!2263 = !DILocation(line: 1334, column: 80, scope: !2252)
!2264 = !DILocation(line: 1334, column: 82, scope: !2252)
!2265 = !DILocation(line: 1335, column: 4, scope: !2079)
!2266 = !DILocation(line: 1340, column: 35, scope: !2079)
!2267 = !DILocation(line: 1340, column: 4, scope: !2081)
!2268 = !DILocation(line: 1342, column: 30, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1342, column: 4)
!2270 = !DILocation(line: 1342, column: 19, scope: !2269)
!2271 = !DILocation(line: 1342, column: 25, scope: !2269)
!2272 = !DILocation(line: 1342, column: 6, scope: !2269)
!2273 = !DILocation(line: 1342, column: 28, scope: !2269)
!2274 = !DILocation(line: 1342, column: 39, scope: !2269)
!2275 = !DILocation(line: 1342, column: 45, scope: !2269)
!2276 = !DILocation(line: 1342, column: 47, scope: !2269)
!2277 = !DILocation(line: 1343, column: 30, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1343, column: 4)
!2279 = !DILocation(line: 1343, column: 19, scope: !2278)
!2280 = !DILocation(line: 1343, column: 25, scope: !2278)
!2281 = !DILocation(line: 1343, column: 6, scope: !2278)
!2282 = !DILocation(line: 1343, column: 28, scope: !2278)
!2283 = !DILocation(line: 1343, column: 40, scope: !2278)
!2284 = !DILocation(line: 1343, column: 46, scope: !2278)
!2285 = !DILocation(line: 1343, column: 48, scope: !2278)
!2286 = !DILocation(line: 1345, column: 43, scope: !2079)
!2287 = !DILocation(line: 1345, column: 51, scope: !2079)
!2288 = !DILocation(line: 1345, column: 4, scope: !2079)
!2289 = !DILocation(line: 1346, column: 30, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1346, column: 4)
!2291 = !DILocation(line: 1346, column: 19, scope: !2290)
!2292 = !DILocation(line: 1346, column: 25, scope: !2290)
!2293 = !DILocation(line: 1346, column: 6, scope: !2290)
!2294 = !DILocation(line: 1346, column: 28, scope: !2290)
!2295 = !DILocation(line: 1346, column: 39, scope: !2290)
!2296 = !DILocation(line: 1346, column: 45, scope: !2290)
!2297 = !DILocation(line: 1346, column: 47, scope: !2290)
!2298 = !DILocation(line: 1347, column: 30, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1347, column: 4)
!2300 = !DILocation(line: 1347, column: 19, scope: !2299)
!2301 = !DILocation(line: 1347, column: 25, scope: !2299)
!2302 = !DILocation(line: 1347, column: 6, scope: !2299)
!2303 = !DILocation(line: 1347, column: 28, scope: !2299)
!2304 = !DILocation(line: 1347, column: 40, scope: !2299)
!2305 = !DILocation(line: 1347, column: 46, scope: !2299)
!2306 = !DILocation(line: 1347, column: 48, scope: !2299)
!2307 = !DILocation(line: 1349, column: 43, scope: !2079)
!2308 = !DILocation(line: 1349, column: 51, scope: !2079)
!2309 = !DILocation(line: 1349, column: 4, scope: !2079)
!2310 = !DILocation(line: 1350, column: 30, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1350, column: 4)
!2312 = !DILocation(line: 1350, column: 19, scope: !2311)
!2313 = !DILocation(line: 1350, column: 25, scope: !2311)
!2314 = !DILocation(line: 1350, column: 6, scope: !2311)
!2315 = !DILocation(line: 1350, column: 28, scope: !2311)
!2316 = !DILocation(line: 1350, column: 39, scope: !2311)
!2317 = !DILocation(line: 1350, column: 45, scope: !2311)
!2318 = !DILocation(line: 1350, column: 47, scope: !2311)
!2319 = !DILocation(line: 1351, column: 30, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1351, column: 4)
!2321 = !DILocation(line: 1351, column: 19, scope: !2320)
!2322 = !DILocation(line: 1351, column: 25, scope: !2320)
!2323 = !DILocation(line: 1351, column: 6, scope: !2320)
!2324 = !DILocation(line: 1351, column: 28, scope: !2320)
!2325 = !DILocation(line: 1351, column: 40, scope: !2320)
!2326 = !DILocation(line: 1351, column: 46, scope: !2320)
!2327 = !DILocation(line: 1351, column: 48, scope: !2320)
!2328 = !DILocation(line: 1353, column: 43, scope: !2079)
!2329 = !DILocation(line: 1353, column: 51, scope: !2079)
!2330 = !DILocation(line: 1353, column: 4, scope: !2079)
!2331 = !DILocation(line: 1354, column: 30, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1354, column: 4)
!2333 = !DILocation(line: 1354, column: 19, scope: !2332)
!2334 = !DILocation(line: 1354, column: 25, scope: !2332)
!2335 = !DILocation(line: 1354, column: 6, scope: !2332)
!2336 = !DILocation(line: 1354, column: 28, scope: !2332)
!2337 = !DILocation(line: 1354, column: 39, scope: !2332)
!2338 = !DILocation(line: 1354, column: 45, scope: !2332)
!2339 = !DILocation(line: 1354, column: 47, scope: !2332)
!2340 = !DILocation(line: 1355, column: 30, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1355, column: 4)
!2342 = !DILocation(line: 1355, column: 19, scope: !2341)
!2343 = !DILocation(line: 1355, column: 25, scope: !2341)
!2344 = !DILocation(line: 1355, column: 6, scope: !2341)
!2345 = !DILocation(line: 1355, column: 28, scope: !2341)
!2346 = !DILocation(line: 1355, column: 40, scope: !2341)
!2347 = !DILocation(line: 1355, column: 46, scope: !2341)
!2348 = !DILocation(line: 1355, column: 48, scope: !2341)
!2349 = !DILocation(line: 1357, column: 42, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !46, line: 1357, column: 6)
!2351 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1357, column: 4)
!2352 = !DILocation(line: 1357, column: 51, scope: !2350)
!2353 = !DILocation(line: 1357, column: 32, scope: !2350)
!2354 = !DILocation(line: 1357, column: 21, scope: !2350)
!2355 = !DILocation(line: 1357, column: 27, scope: !2350)
!2356 = !DILocation(line: 1357, column: 8, scope: !2350)
!2357 = !DILocation(line: 1357, column: 30, scope: !2350)
!2358 = !DILocation(line: 1357, column: 66, scope: !2350)
!2359 = !DILocation(line: 1357, column: 72, scope: !2350)
!2360 = !DILocation(line: 1357, column: 74, scope: !2350)
!2361 = !DILocation(line: 1357, column: 120, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2351, file: !46, line: 1357, column: 83)
!2363 = !DILocation(line: 1357, column: 129, scope: !2362)
!2364 = !DILocation(line: 1357, column: 136, scope: !2362)
!2365 = !DILocation(line: 1357, column: 109, scope: !2362)
!2366 = !DILocation(line: 1357, column: 98, scope: !2362)
!2367 = !DILocation(line: 1357, column: 104, scope: !2362)
!2368 = !DILocation(line: 1357, column: 85, scope: !2362)
!2369 = !DILocation(line: 1357, column: 107, scope: !2362)
!2370 = !DILocation(line: 1357, column: 151, scope: !2362)
!2371 = !DILocation(line: 1357, column: 157, scope: !2362)
!2372 = !DILocation(line: 1357, column: 159, scope: !2362)
!2373 = !DILocation(line: 1358, column: 42, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !46, line: 1358, column: 6)
!2375 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1358, column: 4)
!2376 = !DILocation(line: 1358, column: 51, scope: !2374)
!2377 = !DILocation(line: 1358, column: 32, scope: !2374)
!2378 = !DILocation(line: 1358, column: 21, scope: !2374)
!2379 = !DILocation(line: 1358, column: 27, scope: !2374)
!2380 = !DILocation(line: 1358, column: 8, scope: !2374)
!2381 = !DILocation(line: 1358, column: 30, scope: !2374)
!2382 = !DILocation(line: 1358, column: 66, scope: !2374)
!2383 = !DILocation(line: 1358, column: 72, scope: !2374)
!2384 = !DILocation(line: 1358, column: 74, scope: !2374)
!2385 = !DILocation(line: 1358, column: 120, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2375, file: !46, line: 1358, column: 83)
!2387 = !DILocation(line: 1358, column: 129, scope: !2386)
!2388 = !DILocation(line: 1358, column: 136, scope: !2386)
!2389 = !DILocation(line: 1358, column: 109, scope: !2386)
!2390 = !DILocation(line: 1358, column: 98, scope: !2386)
!2391 = !DILocation(line: 1358, column: 104, scope: !2386)
!2392 = !DILocation(line: 1358, column: 85, scope: !2386)
!2393 = !DILocation(line: 1358, column: 107, scope: !2386)
!2394 = !DILocation(line: 1358, column: 151, scope: !2386)
!2395 = !DILocation(line: 1358, column: 157, scope: !2386)
!2396 = !DILocation(line: 1358, column: 159, scope: !2386)
!2397 = !DILocation(line: 1359, column: 30, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1359, column: 4)
!2399 = !DILocation(line: 1359, column: 19, scope: !2398)
!2400 = !DILocation(line: 1359, column: 25, scope: !2398)
!2401 = !DILocation(line: 1359, column: 6, scope: !2398)
!2402 = !DILocation(line: 1359, column: 28, scope: !2398)
!2403 = !DILocation(line: 1359, column: 48, scope: !2398)
!2404 = !DILocation(line: 1359, column: 54, scope: !2398)
!2405 = !DILocation(line: 1359, column: 56, scope: !2398)
!2406 = !DILocation(line: 1360, column: 40, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1360, column: 4)
!2408 = !DILocation(line: 1360, column: 55, scope: !2407)
!2409 = !DILocation(line: 1360, column: 44, scope: !2407)
!2410 = !DILocation(line: 1360, column: 30, scope: !2407)
!2411 = !DILocation(line: 1360, column: 19, scope: !2407)
!2412 = !DILocation(line: 1360, column: 25, scope: !2407)
!2413 = !DILocation(line: 1360, column: 6, scope: !2407)
!2414 = !DILocation(line: 1360, column: 28, scope: !2407)
!2415 = !DILocation(line: 1360, column: 63, scope: !2407)
!2416 = !DILocation(line: 1360, column: 69, scope: !2407)
!2417 = !DILocation(line: 1360, column: 71, scope: !2407)
!2418 = !DILocation(line: 1361, column: 14, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1361, column: 4)
!2420 = !DILocation(line: 1361, column: 20, scope: !2419)
!2421 = !DILocation(line: 1361, column: 31, scope: !2419)
!2422 = !DILocation(line: 1361, column: 48, scope: !2419)
!2423 = !DILocation(line: 1361, column: 65, scope: !2419)
!2424 = !DILocation(line: 1361, column: 52, scope: !2419)
!2425 = !DILocation(line: 1361, column: 6, scope: !2419)
!2426 = !DILocation(line: 1361, column: 97, scope: !2419)
!2427 = !DILocation(line: 1361, column: 114, scope: !2419)
!2428 = !DILocation(line: 1361, column: 101, scope: !2419)
!2429 = !DILocation(line: 1361, column: 74, scope: !2419)
!2430 = !DILocation(line: 1361, column: 80, scope: !2419)
!2431 = !DILocation(line: 1361, column: 82, scope: !2419)
!2432 = !DILocation(line: 1362, column: 4, scope: !2079)
!2433 = !DILocation(line: 1367, column: 35, scope: !2079)
!2434 = !DILocation(line: 1367, column: 4, scope: !2081)
!2435 = !DILocation(line: 1369, column: 30, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1369, column: 4)
!2437 = !DILocation(line: 1369, column: 19, scope: !2436)
!2438 = !DILocation(line: 1369, column: 25, scope: !2436)
!2439 = !DILocation(line: 1369, column: 6, scope: !2436)
!2440 = !DILocation(line: 1369, column: 28, scope: !2436)
!2441 = !DILocation(line: 1369, column: 39, scope: !2436)
!2442 = !DILocation(line: 1369, column: 45, scope: !2436)
!2443 = !DILocation(line: 1369, column: 47, scope: !2436)
!2444 = !DILocation(line: 1370, column: 30, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1370, column: 4)
!2446 = !DILocation(line: 1370, column: 19, scope: !2445)
!2447 = !DILocation(line: 1370, column: 25, scope: !2445)
!2448 = !DILocation(line: 1370, column: 6, scope: !2445)
!2449 = !DILocation(line: 1370, column: 28, scope: !2445)
!2450 = !DILocation(line: 1370, column: 40, scope: !2445)
!2451 = !DILocation(line: 1370, column: 46, scope: !2445)
!2452 = !DILocation(line: 1370, column: 48, scope: !2445)
!2453 = !DILocation(line: 1372, column: 43, scope: !2079)
!2454 = !DILocation(line: 1372, column: 51, scope: !2079)
!2455 = !DILocation(line: 1372, column: 4, scope: !2079)
!2456 = !DILocation(line: 1373, column: 30, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1373, column: 4)
!2458 = !DILocation(line: 1373, column: 19, scope: !2457)
!2459 = !DILocation(line: 1373, column: 25, scope: !2457)
!2460 = !DILocation(line: 1373, column: 6, scope: !2457)
!2461 = !DILocation(line: 1373, column: 28, scope: !2457)
!2462 = !DILocation(line: 1373, column: 39, scope: !2457)
!2463 = !DILocation(line: 1373, column: 45, scope: !2457)
!2464 = !DILocation(line: 1373, column: 47, scope: !2457)
!2465 = !DILocation(line: 1374, column: 30, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1374, column: 4)
!2467 = !DILocation(line: 1374, column: 19, scope: !2466)
!2468 = !DILocation(line: 1374, column: 25, scope: !2466)
!2469 = !DILocation(line: 1374, column: 6, scope: !2466)
!2470 = !DILocation(line: 1374, column: 28, scope: !2466)
!2471 = !DILocation(line: 1374, column: 40, scope: !2466)
!2472 = !DILocation(line: 1374, column: 46, scope: !2466)
!2473 = !DILocation(line: 1374, column: 48, scope: !2466)
!2474 = !DILocation(line: 1376, column: 43, scope: !2079)
!2475 = !DILocation(line: 1376, column: 51, scope: !2079)
!2476 = !DILocation(line: 1376, column: 4, scope: !2079)
!2477 = !DILocation(line: 1377, column: 30, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1377, column: 4)
!2479 = !DILocation(line: 1377, column: 19, scope: !2478)
!2480 = !DILocation(line: 1377, column: 25, scope: !2478)
!2481 = !DILocation(line: 1377, column: 6, scope: !2478)
!2482 = !DILocation(line: 1377, column: 28, scope: !2478)
!2483 = !DILocation(line: 1377, column: 39, scope: !2478)
!2484 = !DILocation(line: 1377, column: 45, scope: !2478)
!2485 = !DILocation(line: 1377, column: 47, scope: !2478)
!2486 = !DILocation(line: 1378, column: 30, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1378, column: 4)
!2488 = !DILocation(line: 1378, column: 19, scope: !2487)
!2489 = !DILocation(line: 1378, column: 25, scope: !2487)
!2490 = !DILocation(line: 1378, column: 6, scope: !2487)
!2491 = !DILocation(line: 1378, column: 28, scope: !2487)
!2492 = !DILocation(line: 1378, column: 40, scope: !2487)
!2493 = !DILocation(line: 1378, column: 46, scope: !2487)
!2494 = !DILocation(line: 1378, column: 48, scope: !2487)
!2495 = !DILocation(line: 1380, column: 43, scope: !2079)
!2496 = !DILocation(line: 1380, column: 51, scope: !2079)
!2497 = !DILocation(line: 1380, column: 4, scope: !2079)
!2498 = !DILocation(line: 1381, column: 30, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1381, column: 4)
!2500 = !DILocation(line: 1381, column: 19, scope: !2499)
!2501 = !DILocation(line: 1381, column: 25, scope: !2499)
!2502 = !DILocation(line: 1381, column: 6, scope: !2499)
!2503 = !DILocation(line: 1381, column: 28, scope: !2499)
!2504 = !DILocation(line: 1381, column: 39, scope: !2499)
!2505 = !DILocation(line: 1381, column: 45, scope: !2499)
!2506 = !DILocation(line: 1381, column: 47, scope: !2499)
!2507 = !DILocation(line: 1382, column: 30, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1382, column: 4)
!2509 = !DILocation(line: 1382, column: 19, scope: !2508)
!2510 = !DILocation(line: 1382, column: 25, scope: !2508)
!2511 = !DILocation(line: 1382, column: 6, scope: !2508)
!2512 = !DILocation(line: 1382, column: 28, scope: !2508)
!2513 = !DILocation(line: 1382, column: 40, scope: !2508)
!2514 = !DILocation(line: 1382, column: 46, scope: !2508)
!2515 = !DILocation(line: 1382, column: 48, scope: !2508)
!2516 = !DILocation(line: 1384, column: 42, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !46, line: 1384, column: 6)
!2518 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1384, column: 4)
!2519 = !DILocation(line: 1384, column: 51, scope: !2517)
!2520 = !DILocation(line: 1384, column: 32, scope: !2517)
!2521 = !DILocation(line: 1384, column: 21, scope: !2517)
!2522 = !DILocation(line: 1384, column: 27, scope: !2517)
!2523 = !DILocation(line: 1384, column: 8, scope: !2517)
!2524 = !DILocation(line: 1384, column: 30, scope: !2517)
!2525 = !DILocation(line: 1384, column: 66, scope: !2517)
!2526 = !DILocation(line: 1384, column: 72, scope: !2517)
!2527 = !DILocation(line: 1384, column: 74, scope: !2517)
!2528 = !DILocation(line: 1384, column: 120, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2518, file: !46, line: 1384, column: 83)
!2530 = !DILocation(line: 1384, column: 129, scope: !2529)
!2531 = !DILocation(line: 1384, column: 136, scope: !2529)
!2532 = !DILocation(line: 1384, column: 109, scope: !2529)
!2533 = !DILocation(line: 1384, column: 98, scope: !2529)
!2534 = !DILocation(line: 1384, column: 104, scope: !2529)
!2535 = !DILocation(line: 1384, column: 85, scope: !2529)
!2536 = !DILocation(line: 1384, column: 107, scope: !2529)
!2537 = !DILocation(line: 1384, column: 151, scope: !2529)
!2538 = !DILocation(line: 1384, column: 157, scope: !2529)
!2539 = !DILocation(line: 1384, column: 159, scope: !2529)
!2540 = !DILocation(line: 1385, column: 42, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !46, line: 1385, column: 6)
!2542 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1385, column: 4)
!2543 = !DILocation(line: 1385, column: 51, scope: !2541)
!2544 = !DILocation(line: 1385, column: 32, scope: !2541)
!2545 = !DILocation(line: 1385, column: 21, scope: !2541)
!2546 = !DILocation(line: 1385, column: 27, scope: !2541)
!2547 = !DILocation(line: 1385, column: 8, scope: !2541)
!2548 = !DILocation(line: 1385, column: 30, scope: !2541)
!2549 = !DILocation(line: 1385, column: 66, scope: !2541)
!2550 = !DILocation(line: 1385, column: 72, scope: !2541)
!2551 = !DILocation(line: 1385, column: 74, scope: !2541)
!2552 = !DILocation(line: 1385, column: 120, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2542, file: !46, line: 1385, column: 83)
!2554 = !DILocation(line: 1385, column: 129, scope: !2553)
!2555 = !DILocation(line: 1385, column: 136, scope: !2553)
!2556 = !DILocation(line: 1385, column: 109, scope: !2553)
!2557 = !DILocation(line: 1385, column: 98, scope: !2553)
!2558 = !DILocation(line: 1385, column: 104, scope: !2553)
!2559 = !DILocation(line: 1385, column: 85, scope: !2553)
!2560 = !DILocation(line: 1385, column: 107, scope: !2553)
!2561 = !DILocation(line: 1385, column: 151, scope: !2553)
!2562 = !DILocation(line: 1385, column: 157, scope: !2553)
!2563 = !DILocation(line: 1385, column: 159, scope: !2553)
!2564 = !DILocation(line: 1386, column: 30, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1386, column: 4)
!2566 = !DILocation(line: 1386, column: 19, scope: !2565)
!2567 = !DILocation(line: 1386, column: 25, scope: !2565)
!2568 = !DILocation(line: 1386, column: 6, scope: !2565)
!2569 = !DILocation(line: 1386, column: 28, scope: !2565)
!2570 = !DILocation(line: 1386, column: 48, scope: !2565)
!2571 = !DILocation(line: 1386, column: 54, scope: !2565)
!2572 = !DILocation(line: 1386, column: 56, scope: !2565)
!2573 = !DILocation(line: 1387, column: 40, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1387, column: 4)
!2575 = !DILocation(line: 1387, column: 55, scope: !2574)
!2576 = !DILocation(line: 1387, column: 44, scope: !2574)
!2577 = !DILocation(line: 1387, column: 30, scope: !2574)
!2578 = !DILocation(line: 1387, column: 19, scope: !2574)
!2579 = !DILocation(line: 1387, column: 25, scope: !2574)
!2580 = !DILocation(line: 1387, column: 6, scope: !2574)
!2581 = !DILocation(line: 1387, column: 28, scope: !2574)
!2582 = !DILocation(line: 1387, column: 63, scope: !2574)
!2583 = !DILocation(line: 1387, column: 69, scope: !2574)
!2584 = !DILocation(line: 1387, column: 71, scope: !2574)
!2585 = !DILocation(line: 1388, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1388, column: 4)
!2587 = !DILocation(line: 1388, column: 25, scope: !2586)
!2588 = !DILocation(line: 1388, column: 6, scope: !2586)
!2589 = !DILocation(line: 1388, column: 28, scope: !2586)
!2590 = !DILocation(line: 1388, column: 34, scope: !2586)
!2591 = !DILocation(line: 1388, column: 40, scope: !2586)
!2592 = !DILocation(line: 1388, column: 42, scope: !2586)
!2593 = !DILocation(line: 1389, column: 14, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1389, column: 4)
!2595 = !DILocation(line: 1389, column: 20, scope: !2594)
!2596 = !DILocation(line: 1389, column: 31, scope: !2594)
!2597 = !DILocation(line: 1389, column: 48, scope: !2594)
!2598 = !DILocation(line: 1389, column: 65, scope: !2594)
!2599 = !DILocation(line: 1389, column: 52, scope: !2594)
!2600 = !DILocation(line: 1389, column: 6, scope: !2594)
!2601 = !DILocation(line: 1389, column: 97, scope: !2594)
!2602 = !DILocation(line: 1389, column: 114, scope: !2594)
!2603 = !DILocation(line: 1389, column: 101, scope: !2594)
!2604 = !DILocation(line: 1389, column: 74, scope: !2594)
!2605 = !DILocation(line: 1389, column: 80, scope: !2594)
!2606 = !DILocation(line: 1389, column: 82, scope: !2594)
!2607 = !DILocation(line: 1390, column: 4, scope: !2079)
!2608 = !DILocation(line: 1395, column: 40, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1395, column: 4)
!2610 = !DILocation(line: 1395, column: 55, scope: !2609)
!2611 = !DILocation(line: 1395, column: 44, scope: !2609)
!2612 = !DILocation(line: 1395, column: 30, scope: !2609)
!2613 = !DILocation(line: 1395, column: 19, scope: !2609)
!2614 = !DILocation(line: 1395, column: 25, scope: !2609)
!2615 = !DILocation(line: 1395, column: 6, scope: !2609)
!2616 = !DILocation(line: 1395, column: 28, scope: !2609)
!2617 = !DILocation(line: 1395, column: 63, scope: !2609)
!2618 = !DILocation(line: 1395, column: 69, scope: !2609)
!2619 = !DILocation(line: 1395, column: 71, scope: !2609)
!2620 = !DILocation(line: 1396, column: 14, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2079, file: !46, line: 1396, column: 4)
!2622 = !DILocation(line: 1396, column: 20, scope: !2621)
!2623 = !DILocation(line: 1396, column: 31, scope: !2621)
!2624 = !DILocation(line: 1396, column: 48, scope: !2621)
!2625 = !DILocation(line: 1396, column: 65, scope: !2621)
!2626 = !DILocation(line: 1396, column: 52, scope: !2621)
!2627 = !DILocation(line: 1396, column: 6, scope: !2621)
!2628 = !DILocation(line: 1396, column: 97, scope: !2621)
!2629 = !DILocation(line: 1396, column: 114, scope: !2621)
!2630 = !DILocation(line: 1396, column: 101, scope: !2621)
!2631 = !DILocation(line: 1396, column: 74, scope: !2621)
!2632 = !DILocation(line: 1396, column: 80, scope: !2621)
!2633 = !DILocation(line: 1396, column: 82, scope: !2621)
!2634 = !DILocation(line: 1397, column: 4, scope: !2079)
!2635 = !DILocation(line: 1403, column: 11, scope: !2079)
!2636 = !DILocation(line: 1401, column: 4, scope: !2079)
!2637 = !DILocation(line: 1404, column: 4, scope: !2079)
!2638 = !DILocation(line: 1407, column: 2, scope: !1901)
!2639 = !DILocation(line: 1408, column: 1, scope: !1901)
!2640 = distinct !DISubprogram(name: "disk_create", scope: !46, file: !46, line: 350, type: !55, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!2641 = !DILocalVariable(name: "device_id", arg: 1, scope: !2640, file: !46, line: 350, type: !36)
!2642 = !DILocation(line: 350, column: 20, scope: !2640)
!2643 = !DILocalVariable(name: "accessmask", arg: 2, scope: !2640, file: !46, line: 350, type: !36)
!2644 = !DILocation(line: 350, column: 38, scope: !2640)
!2645 = !DILocalVariable(name: "sharemode", arg: 3, scope: !2640, file: !46, line: 350, type: !36)
!2646 = !DILocation(line: 350, column: 57, scope: !2640)
!2647 = !DILocalVariable(name: "create_disposition", arg: 4, scope: !2640, file: !46, line: 350, type: !36)
!2648 = !DILocation(line: 350, column: 75, scope: !2640)
!2649 = !DILocalVariable(name: "flags_and_attributes", arg: 5, scope: !2640, file: !46, line: 351, type: !36)
!2650 = !DILocation(line: 351, column: 13, scope: !2640)
!2651 = !DILocalVariable(name: "filename", arg: 6, scope: !2640, file: !46, line: 351, type: !33)
!2652 = !DILocation(line: 351, column: 41, scope: !2640)
!2653 = !DILocalVariable(name: "phandle", arg: 7, scope: !2640, file: !46, line: 351, type: !58)
!2654 = !DILocation(line: 351, column: 65, scope: !2640)
!2655 = !DILocalVariable(name: "handle", scope: !2640, file: !46, line: 353, type: !48)
!2656 = !DILocation(line: 353, column: 6, scope: !2640)
!2657 = !DILocalVariable(name: "dirp", scope: !2640, file: !46, line: 354, type: !101)
!2658 = !DILocation(line: 354, column: 7, scope: !2640)
!2659 = !DILocalVariable(name: "flags", scope: !2640, file: !46, line: 355, type: !48)
!2660 = !DILocation(line: 355, column: 6, scope: !2640)
!2661 = !DILocalVariable(name: "mode", scope: !2640, file: !46, line: 355, type: !48)
!2662 = !DILocation(line: 355, column: 13, scope: !2640)
!2663 = !DILocalVariable(name: "path", scope: !2640, file: !46, line: 356, type: !29)
!2664 = !DILocation(line: 356, column: 7, scope: !2640)
!2665 = !DILocalVariable(name: "filestat", scope: !2640, file: !46, line: 357, type: !259)
!2666 = !DILocation(line: 357, column: 14, scope: !2640)
!2667 = !DILocation(line: 360, column: 55, scope: !2640)
!2668 = !DILocation(line: 360, column: 66, scope: !2640)
!2669 = !DILocation(line: 361, column: 9, scope: !2640)
!2670 = !DILocation(line: 361, column: 20, scope: !2640)
!2671 = !DILocation(line: 361, column: 40, scope: !2640)
!2672 = !DILocation(line: 361, column: 62, scope: !2640)
!2673 = !DILocation(line: 359, column: 2, scope: !2640)
!2674 = !DILocation(line: 362, column: 9, scope: !2640)
!2675 = !DILocation(line: 363, column: 7, scope: !2640)
!2676 = !DILocation(line: 364, column: 8, scope: !2640)
!2677 = !DILocation(line: 365, column: 7, scope: !2640)
!2678 = !DILocation(line: 367, column: 6, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 367, column: 6)
!2680 = !DILocation(line: 367, column: 15, scope: !2679)
!2681 = !DILocation(line: 367, column: 19, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2679, file: !46, discriminator: 1)
!2683 = !DILocation(line: 367, column: 18, scope: !2682)
!2684 = !DILocation(line: 367, column: 28, scope: !2682)
!2685 = !DILocation(line: 367, column: 47, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2679, file: !46, discriminator: 2)
!2687 = !DILocation(line: 367, column: 40, scope: !2686)
!2688 = !DILocation(line: 367, column: 57, scope: !2686)
!2689 = !DILocation(line: 367, column: 31, scope: !2686)
!2690 = !DILocation(line: 367, column: 62, scope: !2686)
!2691 = !DILocation(line: 367, column: 6, scope: !2686)
!2692 = !DILocation(line: 368, column: 19, scope: !2679)
!2693 = !DILocation(line: 368, column: 12, scope: !2679)
!2694 = !DILocation(line: 368, column: 29, scope: !2679)
!2695 = !DILocation(line: 368, column: 3, scope: !2679)
!2696 = !DILocation(line: 368, column: 34, scope: !2679)
!2697 = !DILocation(line: 370, column: 10, scope: !2640)
!2698 = !DILocation(line: 370, column: 39, scope: !2640)
!2699 = !DILocation(line: 370, column: 24, scope: !2640)
!2700 = !DILocation(line: 370, column: 50, scope: !2640)
!2701 = !DILocation(line: 370, column: 62, scope: !2640)
!2702 = !DILocation(line: 370, column: 73, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2640, file: !46, discriminator: 1)
!2704 = !DILocation(line: 370, column: 62, scope: !2703)
!2705 = !DILocation(line: 370, column: 62, scope: !2706)
!2706 = !DILexicalBlockFile(scope: !2640, file: !46, discriminator: 2)
!2707 = !DILocation(line: 370, column: 62, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2640, file: !46, discriminator: 3)
!2709 = !DILocation(line: 370, column: 2, scope: !2708)
!2710 = !DILocation(line: 380, column: 13, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 380, column: 6)
!2712 = !DILocation(line: 380, column: 6, scope: !2711)
!2713 = !DILocation(line: 380, column: 6, scope: !2640)
!2714 = !DILocation(line: 382, column: 3, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !46, line: 381, column: 2)
!2716 = !DILocation(line: 385, column: 10, scope: !2640)
!2717 = !DILocation(line: 385, column: 2, scope: !2640)
!2718 = !DILocation(line: 390, column: 11, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 386, column: 2)
!2720 = !DILocation(line: 390, column: 4, scope: !2719)
!2721 = !DILocation(line: 391, column: 10, scope: !2719)
!2722 = !DILocation(line: 392, column: 4, scope: !2719)
!2723 = !DILocation(line: 397, column: 10, scope: !2719)
!2724 = !DILocation(line: 398, column: 4, scope: !2719)
!2725 = !DILocation(line: 403, column: 10, scope: !2719)
!2726 = !DILocation(line: 404, column: 4, scope: !2719)
!2727 = !DILocation(line: 409, column: 4, scope: !2719)
!2728 = !DILocation(line: 414, column: 10, scope: !2719)
!2729 = !DILocation(line: 415, column: 4, scope: !2719)
!2730 = !DILocation(line: 421, column: 12, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 421, column: 6)
!2732 = !DILocation(line: 421, column: 7, scope: !2731)
!2733 = !DILocation(line: 421, column: 29, scope: !2731)
!2734 = !DILocation(line: 421, column: 35, scope: !2731)
!2735 = !DILocation(line: 421, column: 47, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2731, file: !46, discriminator: 1)
!2737 = !DILocation(line: 421, column: 41, scope: !2736)
!2738 = !DILocation(line: 421, column: 52, scope: !2736)
!2739 = !DILocation(line: 421, column: 6, scope: !2736)
!2740 = !DILocation(line: 423, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !46, line: 423, column: 7)
!2742 = distinct !DILexicalBlock(scope: !2731, file: !46, line: 422, column: 2)
!2743 = !DILocation(line: 423, column: 28, scope: !2741)
!2744 = !DILocation(line: 423, column: 7, scope: !2742)
!2745 = !DILocation(line: 424, column: 4, scope: !2741)
!2746 = !DILocation(line: 426, column: 25, scope: !2741)
!2747 = !DILocation(line: 427, column: 2, scope: !2742)
!2748 = !DILocation(line: 429, column: 6, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 429, column: 6)
!2750 = !DILocation(line: 429, column: 27, scope: !2749)
!2751 = !DILocation(line: 429, column: 6, scope: !2640)
!2752 = !DILocation(line: 431, column: 7, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !46, line: 431, column: 7)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !46, line: 430, column: 2)
!2755 = !DILocation(line: 431, column: 13, scope: !2753)
!2756 = !DILocation(line: 431, column: 7, scope: !2754)
!2757 = !DILocation(line: 433, column: 10, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2753, file: !46, line: 432, column: 3)
!2759 = !DILocation(line: 433, column: 16, scope: !2758)
!2760 = !DILocation(line: 433, column: 4, scope: !2758)
!2761 = !DILocation(line: 434, column: 3, scope: !2758)
!2762 = !DILocation(line: 436, column: 18, scope: !2754)
!2763 = !DILocation(line: 436, column: 10, scope: !2754)
!2764 = !DILocation(line: 436, column: 8, scope: !2754)
!2765 = !DILocation(line: 437, column: 8, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2754, file: !46, line: 437, column: 7)
!2767 = !DILocation(line: 437, column: 7, scope: !2754)
!2768 = !DILocation(line: 439, column: 13, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !46, line: 438, column: 3)
!2770 = !DILocation(line: 439, column: 12, scope: !2769)
!2771 = !DILocation(line: 439, column: 4, scope: !2769)
!2772 = !DILocation(line: 443, column: 6, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !46, line: 440, column: 4)
!2774 = !DILocation(line: 447, column: 6, scope: !2773)
!2775 = !DILocation(line: 451, column: 23, scope: !2773)
!2776 = !DILocation(line: 451, column: 22, scope: !2773)
!2777 = !DILocation(line: 451, column: 13, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2773, file: !46, discriminator: 1)
!2779 = !DILocation(line: 450, column: 6, scope: !2773)
!2780 = !DILocation(line: 452, column: 6, scope: !2773)
!2781 = !DILocation(line: 455, column: 19, scope: !2754)
!2782 = !DILocation(line: 455, column: 13, scope: !2754)
!2783 = !DILocation(line: 455, column: 10, scope: !2754)
!2784 = !DILocation(line: 456, column: 2, scope: !2754)
!2785 = !DILocation(line: 460, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !46, line: 460, column: 7)
!2787 = distinct !DILexicalBlock(scope: !2749, file: !46, line: 458, column: 2)
!2788 = !DILocation(line: 460, column: 18, scope: !2786)
!2789 = !DILocation(line: 461, column: 7, scope: !2786)
!2790 = !DILocation(line: 461, column: 11, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2786, file: !46, discriminator: 1)
!2792 = !DILocation(line: 461, column: 22, scope: !2791)
!2793 = !DILocation(line: 461, column: 35, scope: !2791)
!2794 = !DILocation(line: 461, column: 38, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2786, file: !46, discriminator: 2)
!2796 = !DILocation(line: 461, column: 49, scope: !2795)
!2797 = !DILocation(line: 460, column: 7, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2787, file: !46, discriminator: 1)
!2799 = !DILocation(line: 463, column: 10, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2786, file: !46, line: 462, column: 3)
!2801 = !DILocation(line: 464, column: 3, scope: !2800)
!2802 = !DILocation(line: 465, column: 13, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2786, file: !46, line: 465, column: 12)
!2804 = !DILocation(line: 465, column: 24, scope: !2803)
!2805 = !DILocation(line: 465, column: 38, scope: !2803)
!2806 = !DILocation(line: 465, column: 43, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2803, file: !46, discriminator: 1)
!2808 = !DILocation(line: 465, column: 54, scope: !2807)
!2809 = !DILocation(line: 465, column: 12, scope: !2807)
!2810 = !DILocation(line: 467, column: 10, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2803, file: !46, line: 466, column: 3)
!2812 = !DILocation(line: 468, column: 3, scope: !2811)
!2813 = !DILocation(line: 471, column: 10, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2803, file: !46, line: 470, column: 3)
!2815 = !DILocation(line: 474, column: 32, scope: !2787)
!2816 = !DILocation(line: 474, column: 38, scope: !2787)
!2817 = !DILocation(line: 474, column: 45, scope: !2787)
!2818 = !DILocation(line: 474, column: 12, scope: !2787)
!2819 = !DILocation(line: 474, column: 10, scope: !2787)
!2820 = !DILocation(line: 475, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2787, file: !46, line: 475, column: 7)
!2822 = !DILocation(line: 475, column: 14, scope: !2821)
!2823 = !DILocation(line: 475, column: 7, scope: !2787)
!2824 = !DILocation(line: 477, column: 13, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2821, file: !46, line: 476, column: 3)
!2826 = !DILocation(line: 477, column: 12, scope: !2825)
!2827 = !DILocation(line: 477, column: 4, scope: !2825)
!2828 = !DILocation(line: 481, column: 6, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !46, line: 478, column: 4)
!2830 = !DILocation(line: 485, column: 6, scope: !2829)
!2831 = !DILocation(line: 489, column: 6, scope: !2829)
!2832 = !DILocation(line: 492, column: 6, scope: !2829)
!2833 = !DILocation(line: 495, column: 23, scope: !2829)
!2834 = !DILocation(line: 495, column: 22, scope: !2829)
!2835 = !DILocation(line: 495, column: 13, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2829, file: !46, discriminator: 1)
!2837 = !DILocation(line: 494, column: 6, scope: !2829)
!2838 = !DILocation(line: 496, column: 6, scope: !2829)
!2839 = !DILocation(line: 501, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2787, file: !46, line: 501, column: 7)
!2841 = !DILocation(line: 501, column: 7, scope: !2840)
!2842 = !DILocation(line: 501, column: 41, scope: !2840)
!2843 = !DILocation(line: 501, column: 7, scope: !2787)
!2844 = !DILocation(line: 502, column: 71, scope: !2840)
!2845 = !DILocation(line: 502, column: 70, scope: !2840)
!2846 = !DILocation(line: 502, column: 61, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2840, file: !46, discriminator: 1)
!2848 = !DILocation(line: 502, column: 4, scope: !2849)
!2849 = !DILexicalBlockFile(scope: !2840, file: !46, discriminator: 2)
!2850 = !DILocation(line: 502, column: 4, scope: !2840)
!2851 = !DILocation(line: 506, column: 6, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 506, column: 6)
!2853 = !DILocation(line: 506, column: 13, scope: !2852)
!2854 = !DILocation(line: 506, column: 6, scope: !2640)
!2855 = !DILocation(line: 510, column: 10, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !46, line: 507, column: 2)
!2857 = !DILocation(line: 508, column: 3, scope: !2856)
!2858 = !DILocation(line: 511, column: 3, scope: !2856)
!2859 = !DILocation(line: 514, column: 6, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 514, column: 6)
!2861 = !DILocation(line: 514, column: 6, scope: !2640)
!2862 = !DILocation(line: 515, column: 29, scope: !2860)
!2863 = !DILocation(line: 515, column: 14, scope: !2860)
!2864 = !DILocation(line: 515, column: 3, scope: !2860)
!2865 = !DILocation(line: 515, column: 22, scope: !2860)
!2866 = !DILocation(line: 515, column: 27, scope: !2860)
!2867 = !DILocation(line: 517, column: 14, scope: !2860)
!2868 = !DILocation(line: 517, column: 3, scope: !2860)
!2869 = !DILocation(line: 517, column: 22, scope: !2860)
!2870 = !DILocation(line: 517, column: 27, scope: !2860)
!2871 = !DILocation(line: 519, column: 33, scope: !2640)
!2872 = !DILocation(line: 519, column: 13, scope: !2640)
!2873 = !DILocation(line: 519, column: 2, scope: !2640)
!2874 = !DILocation(line: 519, column: 21, scope: !2640)
!2875 = !DILocation(line: 519, column: 31, scope: !2640)
!2876 = !DILocation(line: 520, column: 44, scope: !2640)
!2877 = !DILocation(line: 520, column: 13, scope: !2640)
!2878 = !DILocation(line: 520, column: 2, scope: !2640)
!2879 = !DILocation(line: 520, column: 21, scope: !2640)
!2880 = !DILocation(line: 520, column: 42, scope: !2640)
!2881 = !DILocation(line: 521, column: 34, scope: !2640)
!2882 = !DILocation(line: 521, column: 13, scope: !2640)
!2883 = !DILocation(line: 521, column: 2, scope: !2640)
!2884 = !DILocation(line: 521, column: 21, scope: !2640)
!2885 = !DILocation(line: 521, column: 32, scope: !2640)
!2886 = !DILocation(line: 522, column: 21, scope: !2640)
!2887 = !DILocation(line: 522, column: 10, scope: !2640)
!2888 = !DILocation(line: 522, column: 29, scope: !2640)
!2889 = !DILocation(line: 522, column: 35, scope: !2640)
!2890 = !DILocation(line: 522, column: 2, scope: !2640)
!2891 = !DILocation(line: 523, column: 13, scope: !2640)
!2892 = !DILocation(line: 523, column: 2, scope: !2640)
!2893 = !DILocation(line: 523, column: 21, scope: !2640)
!2894 = !DILocation(line: 523, column: 37, scope: !2640)
!2895 = !DILocation(line: 525, column: 6, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2640, file: !46, line: 525, column: 6)
!2897 = !DILocation(line: 525, column: 17, scope: !2896)
!2898 = !DILocation(line: 525, column: 30, scope: !2896)
!2899 = !DILocation(line: 525, column: 33, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2896, file: !46, discriminator: 1)
!2901 = !DILocation(line: 525, column: 44, scope: !2900)
!2902 = !DILocation(line: 525, column: 6, scope: !2900)
!2903 = !DILocation(line: 526, column: 18, scope: !2896)
!2904 = !DILocation(line: 526, column: 3, scope: !2896)
!2905 = !DILocation(line: 528, column: 13, scope: !2640)
!2906 = !DILocation(line: 528, column: 3, scope: !2640)
!2907 = !DILocation(line: 528, column: 11, scope: !2640)
!2908 = !DILocation(line: 529, column: 2, scope: !2640)
!2909 = !DILocation(line: 530, column: 1, scope: !2640)
!2910 = distinct !DISubprogram(name: "disk_close", scope: !46, file: !46, line: 533, type: !62, isLocal: true, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!2911 = !DILocalVariable(name: "handle", arg: 1, scope: !2910, file: !46, line: 533, type: !59)
!2912 = !DILocation(line: 533, column: 24, scope: !2910)
!2913 = !DILocalVariable(name: "pfinfo", scope: !2910, file: !46, line: 535, type: !640)
!2914 = !DILocation(line: 535, column: 19, scope: !2910)
!2915 = !DILocation(line: 537, column: 49, scope: !2910)
!2916 = !DILocation(line: 537, column: 2, scope: !2910)
!2917 = !DILocation(line: 539, column: 24, scope: !2910)
!2918 = !DILocation(line: 539, column: 13, scope: !2910)
!2919 = !DILocation(line: 539, column: 9, scope: !2910)
!2920 = !DILocation(line: 541, column: 6, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2910, file: !46, line: 541, column: 6)
!2922 = !DILocation(line: 541, column: 14, scope: !2921)
!2923 = !DILocation(line: 541, column: 25, scope: !2921)
!2924 = !DILocation(line: 541, column: 38, scope: !2921)
!2925 = !DILocation(line: 541, column: 41, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2921, file: !46, discriminator: 1)
!2927 = !DILocation(line: 541, column: 49, scope: !2926)
!2928 = !DILocation(line: 541, column: 60, scope: !2926)
!2929 = !DILocation(line: 541, column: 6, scope: !2926)
!2930 = !DILocation(line: 542, column: 18, scope: !2921)
!2931 = !DILocation(line: 542, column: 3, scope: !2921)
!2932 = !DILocation(line: 544, column: 17, scope: !2910)
!2933 = !DILocation(line: 544, column: 2, scope: !2910)
!2934 = !DILocation(line: 546, column: 6, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2910, file: !46, line: 546, column: 6)
!2936 = !DILocation(line: 546, column: 14, scope: !2935)
!2937 = !DILocation(line: 546, column: 6, scope: !2910)
!2938 = !DILocation(line: 548, column: 16, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !46, line: 548, column: 7)
!2940 = distinct !DILexicalBlock(scope: !2935, file: !46, line: 547, column: 2)
!2941 = !DILocation(line: 548, column: 24, scope: !2939)
!2942 = !DILocation(line: 548, column: 7, scope: !2939)
!2943 = !DILocation(line: 548, column: 30, scope: !2939)
!2944 = !DILocation(line: 548, column: 7, scope: !2940)
!2945 = !DILocation(line: 550, column: 73, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2939, file: !46, line: 549, column: 3)
!2947 = !DILocation(line: 550, column: 72, scope: !2946)
!2948 = !DILocation(line: 550, column: 63, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !2946, file: !46, discriminator: 1)
!2950 = !DILocation(line: 550, column: 4, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2946, file: !46, discriminator: 2)
!2952 = !DILocation(line: 551, column: 4, scope: !2946)
!2953 = !DILocation(line: 554, column: 7, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2940, file: !46, line: 554, column: 7)
!2955 = !DILocation(line: 554, column: 15, scope: !2954)
!2956 = !DILocation(line: 554, column: 7, scope: !2940)
!2957 = !DILocation(line: 555, column: 14, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !46, line: 555, column: 8)
!2959 = !DILocation(line: 555, column: 22, scope: !2958)
!2960 = !DILocation(line: 555, column: 8, scope: !2958)
!2961 = !DILocation(line: 555, column: 28, scope: !2958)
!2962 = !DILocation(line: 555, column: 8, scope: !2954)
!2963 = !DILocation(line: 558, column: 22, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2958, file: !46, line: 556, column: 4)
!2965 = !DILocation(line: 558, column: 21, scope: !2964)
!2966 = !DILocation(line: 558, column: 12, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2964, file: !46, discriminator: 1)
!2968 = !DILocation(line: 557, column: 5, scope: !2964)
!2969 = !DILocation(line: 559, column: 5, scope: !2964)
!2970 = !DILocation(line: 555, column: 30, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2958, file: !46, discriminator: 1)
!2972 = !DILocation(line: 561, column: 3, scope: !2940)
!2973 = !DILocation(line: 561, column: 11, scope: !2940)
!2974 = !DILocation(line: 561, column: 27, scope: !2940)
!2975 = !DILocation(line: 562, column: 2, scope: !2940)
!2976 = !DILocation(line: 565, column: 13, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !46, line: 565, column: 7)
!2978 = distinct !DILexicalBlock(scope: !2935, file: !46, line: 564, column: 2)
!2979 = !DILocation(line: 565, column: 7, scope: !2977)
!2980 = !DILocation(line: 565, column: 21, scope: !2977)
!2981 = !DILocation(line: 565, column: 7, scope: !2978)
!2982 = !DILocation(line: 567, column: 70, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2977, file: !46, line: 566, column: 3)
!2984 = !DILocation(line: 567, column: 69, scope: !2983)
!2985 = !DILocation(line: 567, column: 60, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2983, file: !46, discriminator: 1)
!2987 = !DILocation(line: 567, column: 4, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !2983, file: !46, discriminator: 2)
!2989 = !DILocation(line: 568, column: 4, scope: !2983)
!2990 = !DILocation(line: 570, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2978, file: !46, line: 570, column: 7)
!2992 = !DILocation(line: 570, column: 15, scope: !2991)
!2993 = !DILocation(line: 570, column: 7, scope: !2978)
!2994 = !DILocation(line: 571, column: 15, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !46, line: 571, column: 8)
!2996 = !DILocation(line: 571, column: 23, scope: !2995)
!2997 = !DILocation(line: 571, column: 8, scope: !2995)
!2998 = !DILocation(line: 571, column: 29, scope: !2995)
!2999 = !DILocation(line: 571, column: 8, scope: !2991)
!3000 = !DILocation(line: 574, column: 22, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2995, file: !46, line: 572, column: 4)
!3002 = !DILocation(line: 574, column: 21, scope: !3001)
!3003 = !DILocation(line: 574, column: 12, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3001, file: !46, discriminator: 1)
!3005 = !DILocation(line: 573, column: 5, scope: !3001)
!3006 = !DILocation(line: 575, column: 5, scope: !3001)
!3007 = !DILocation(line: 571, column: 31, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !2995, file: !46, discriminator: 1)
!3009 = !DILocation(line: 578, column: 3, scope: !2978)
!3010 = !DILocation(line: 578, column: 11, scope: !2978)
!3011 = !DILocation(line: 578, column: 27, scope: !2978)
!3012 = !DILocation(line: 581, column: 2, scope: !2910)
!3013 = !DILocation(line: 582, column: 1, scope: !2910)
!3014 = distinct !DISubprogram(name: "disk_read", scope: !46, file: !46, line: 585, type: !66, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!3015 = !DILocalVariable(name: "handle", arg: 1, scope: !3014, file: !46, line: 585, type: !59)
!3016 = !DILocation(line: 585, column: 23, scope: !3014)
!3017 = !DILocalVariable(name: "data", arg: 2, scope: !3014, file: !46, line: 585, type: !68)
!3018 = !DILocation(line: 585, column: 39, scope: !3014)
!3019 = !DILocalVariable(name: "length", arg: 3, scope: !3014, file: !46, line: 585, type: !36)
!3020 = !DILocation(line: 585, column: 52, scope: !3014)
!3021 = !DILocalVariable(name: "offset", arg: 4, scope: !3014, file: !46, line: 585, type: !36)
!3022 = !DILocation(line: 585, column: 67, scope: !3014)
!3023 = !DILocalVariable(name: "result", arg: 5, scope: !3014, file: !46, line: 585, type: !35)
!3024 = !DILocation(line: 585, column: 84, scope: !3014)
!3025 = !DILocalVariable(name: "n", scope: !3014, file: !46, line: 587, type: !48)
!3026 = !DILocation(line: 587, column: 6, scope: !3014)
!3027 = !DILocation(line: 599, column: 8, scope: !3014)
!3028 = !DILocation(line: 599, column: 16, scope: !3014)
!3029 = !DILocation(line: 599, column: 2, scope: !3014)
!3030 = !DILocation(line: 601, column: 11, scope: !3014)
!3031 = !DILocation(line: 601, column: 19, scope: !3014)
!3032 = !DILocation(line: 601, column: 25, scope: !3014)
!3033 = !DILocation(line: 601, column: 6, scope: !3014)
!3034 = !DILocation(line: 601, column: 4, scope: !3014)
!3035 = !DILocation(line: 603, column: 6, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3014, file: !46, line: 603, column: 6)
!3037 = !DILocation(line: 603, column: 8, scope: !3036)
!3038 = !DILocation(line: 603, column: 6, scope: !3014)
!3039 = !DILocation(line: 605, column: 4, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !46, line: 604, column: 2)
!3041 = !DILocation(line: 605, column: 11, scope: !3040)
!3042 = !DILocation(line: 606, column: 12, scope: !3040)
!3043 = !DILocation(line: 606, column: 11, scope: !3040)
!3044 = !DILocation(line: 606, column: 3, scope: !3040)
!3045 = !DILocation(line: 612, column: 5, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3040, file: !46, line: 607, column: 3)
!3047 = !DILocation(line: 615, column: 22, scope: !3046)
!3048 = !DILocation(line: 615, column: 21, scope: !3046)
!3049 = !DILocation(line: 615, column: 12, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3046, file: !46, discriminator: 1)
!3051 = !DILocation(line: 614, column: 5, scope: !3046)
!3052 = !DILocation(line: 616, column: 5, scope: !3046)
!3053 = !DILocation(line: 620, column: 12, scope: !3014)
!3054 = !DILocation(line: 620, column: 3, scope: !3014)
!3055 = !DILocation(line: 620, column: 10, scope: !3014)
!3056 = !DILocation(line: 622, column: 2, scope: !3014)
!3057 = !DILocation(line: 623, column: 1, scope: !3014)
!3058 = distinct !DISubprogram(name: "disk_write", scope: !46, file: !46, line: 626, type: !66, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!3059 = !DILocalVariable(name: "handle", arg: 1, scope: !3058, file: !46, line: 626, type: !59)
!3060 = !DILocation(line: 626, column: 24, scope: !3058)
!3061 = !DILocalVariable(name: "data", arg: 2, scope: !3058, file: !46, line: 626, type: !68)
!3062 = !DILocation(line: 626, column: 40, scope: !3058)
!3063 = !DILocalVariable(name: "length", arg: 3, scope: !3058, file: !46, line: 626, type: !36)
!3064 = !DILocation(line: 626, column: 53, scope: !3058)
!3065 = !DILocalVariable(name: "offset", arg: 4, scope: !3058, file: !46, line: 626, type: !36)
!3066 = !DILocation(line: 626, column: 68, scope: !3058)
!3067 = !DILocalVariable(name: "result", arg: 5, scope: !3058, file: !46, line: 626, type: !35)
!3068 = !DILocation(line: 626, column: 85, scope: !3058)
!3069 = !DILocalVariable(name: "n", scope: !3058, file: !46, line: 628, type: !48)
!3070 = !DILocation(line: 628, column: 6, scope: !3058)
!3071 = !DILocation(line: 630, column: 8, scope: !3058)
!3072 = !DILocation(line: 630, column: 16, scope: !3058)
!3073 = !DILocation(line: 630, column: 2, scope: !3058)
!3074 = !DILocation(line: 632, column: 12, scope: !3058)
!3075 = !DILocation(line: 632, column: 20, scope: !3058)
!3076 = !DILocation(line: 632, column: 26, scope: !3058)
!3077 = !DILocation(line: 632, column: 6, scope: !3058)
!3078 = !DILocation(line: 632, column: 4, scope: !3058)
!3079 = !DILocation(line: 634, column: 6, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3058, file: !46, line: 634, column: 6)
!3081 = !DILocation(line: 634, column: 8, scope: !3080)
!3082 = !DILocation(line: 634, column: 6, scope: !3058)
!3083 = !DILocation(line: 636, column: 69, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3080, file: !46, line: 635, column: 2)
!3085 = !DILocation(line: 636, column: 68, scope: !3084)
!3086 = !DILocation(line: 636, column: 59, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3084, file: !46, discriminator: 1)
!3088 = !DILocation(line: 636, column: 3, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !3084, file: !46, discriminator: 2)
!3090 = !DILocation(line: 637, column: 4, scope: !3084)
!3091 = !DILocation(line: 637, column: 11, scope: !3084)
!3092 = !DILocation(line: 638, column: 12, scope: !3084)
!3093 = !DILocation(line: 638, column: 11, scope: !3084)
!3094 = !DILocation(line: 638, column: 3, scope: !3084)
!3095 = !DILocation(line: 641, column: 5, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3084, file: !46, line: 639, column: 3)
!3097 = !DILocation(line: 643, column: 5, scope: !3096)
!3098 = !DILocation(line: 647, column: 12, scope: !3058)
!3099 = !DILocation(line: 647, column: 3, scope: !3058)
!3100 = !DILocation(line: 647, column: 10, scope: !3058)
!3101 = !DILocation(line: 649, column: 2, scope: !3058)
!3102 = !DILocation(line: 650, column: 1, scope: !3058)
!3103 = distinct !DISubprogram(name: "disk_device_control", scope: !46, file: !46, line: 1413, type: !74, isLocal: true, isDefinition: true, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!3104 = !DILocalVariable(name: "handle", arg: 1, scope: !3103, file: !46, line: 1413, type: !59)
!3105 = !DILocation(line: 1413, column: 33, scope: !3103)
!3106 = !DILocalVariable(name: "request", arg: 2, scope: !3103, file: !46, line: 1413, type: !36)
!3107 = !DILocation(line: 1413, column: 48, scope: !3103)
!3108 = !DILocalVariable(name: "in", arg: 3, scope: !3103, file: !46, line: 1413, type: !76)
!3109 = !DILocation(line: 1413, column: 64, scope: !3103)
!3110 = !DILocalVariable(name: "out", arg: 4, scope: !3103, file: !46, line: 1413, type: !76)
!3111 = !DILocation(line: 1413, column: 75, scope: !3103)
!3112 = !DILocation(line: 1415, column: 9, scope: !3103)
!3113 = !DILocation(line: 1416, column: 9, scope: !3103)
!3114 = !DILocation(line: 1418, column: 77, scope: !3103)
!3115 = !DILocation(line: 1418, column: 85, scope: !3103)
!3116 = !DILocation(line: 1418, column: 2, scope: !3103)
!3117 = !DILocation(line: 1419, column: 8, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3103, file: !46, line: 1419, column: 6)
!3119 = !DILocation(line: 1419, column: 16, scope: !3118)
!3120 = !DILocation(line: 1419, column: 23, scope: !3118)
!3121 = !DILocation(line: 1419, column: 30, scope: !3118)
!3122 = !DILocation(line: 1419, column: 35, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3118, file: !46, discriminator: 1)
!3124 = !DILocation(line: 1419, column: 43, scope: !3123)
!3125 = !DILocation(line: 1419, column: 50, scope: !3123)
!3126 = !DILocation(line: 1419, column: 6, scope: !3123)
!3127 = !DILocation(line: 1420, column: 3, scope: !3118)
!3128 = !DILocation(line: 1423, column: 10, scope: !3103)
!3129 = !DILocation(line: 1424, column: 10, scope: !3103)
!3130 = !DILocation(line: 1426, column: 10, scope: !3103)
!3131 = !DILocation(line: 1426, column: 2, scope: !3103)
!3132 = !DILocation(line: 1427, column: 2, scope: !3103)
!3133 = !DILocation(line: 1432, column: 11, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3103, file: !46, line: 1427, column: 2)
!3135 = !DILocation(line: 1431, column: 4, scope: !3134)
!3136 = !DILocation(line: 1433, column: 4, scope: !3134)
!3137 = !DILocation(line: 1437, column: 1, scope: !3103)
!3138 = distinct !DISubprogram(name: "open_weak_exclusive", scope: !46, file: !46, line: 268, type: !3139, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !139)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!48, !3141, !48, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !138, line: 70, baseType: !268)
!3143 = !DILocalVariable(name: "pathname", arg: 1, scope: !3138, file: !46, line: 268, type: !3141)
!3144 = !DILocation(line: 268, column: 33, scope: !3138)
!3145 = !DILocalVariable(name: "flags", arg: 2, scope: !3138, file: !46, line: 268, type: !48)
!3146 = !DILocation(line: 268, column: 47, scope: !3138)
!3147 = !DILocalVariable(name: "mode", arg: 3, scope: !3138, file: !46, line: 268, type: !3142)
!3148 = !DILocation(line: 268, column: 61, scope: !3138)
!3149 = !DILocalVariable(name: "ret", scope: !3138, file: !46, line: 270, type: !48)
!3150 = !DILocation(line: 270, column: 6, scope: !3138)
!3151 = !DILocalVariable(name: "filestat", scope: !3138, file: !46, line: 271, type: !259)
!3152 = !DILocation(line: 271, column: 14, scope: !3138)
!3153 = !DILocation(line: 273, column: 13, scope: !3138)
!3154 = !DILocation(line: 273, column: 23, scope: !3138)
!3155 = !DILocation(line: 273, column: 30, scope: !3138)
!3156 = !DILocation(line: 273, column: 8, scope: !3138)
!3157 = !DILocation(line: 273, column: 6, scope: !3138)
!3158 = !DILocation(line: 274, column: 6, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3138, file: !46, line: 274, column: 6)
!3160 = !DILocation(line: 274, column: 10, scope: !3159)
!3161 = !DILocation(line: 274, column: 16, scope: !3159)
!3162 = !DILocation(line: 274, column: 21, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3159, file: !46, discriminator: 1)
!3164 = !DILocation(line: 274, column: 27, scope: !3163)
!3165 = !DILocation(line: 274, column: 6, scope: !3163)
!3166 = !DILocation(line: 277, column: 10, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3159, file: !46, line: 275, column: 2)
!3168 = !DILocation(line: 277, column: 3, scope: !3167)
!3169 = !DILocation(line: 286, column: 11, scope: !3138)
!3170 = !DILocation(line: 286, column: 10, scope: !3138)
!3171 = !DILocation(line: 286, column: 2, scope: !3138)
!3172 = !DILocation(line: 296, column: 11, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3138, file: !46, line: 287, column: 2)
!3174 = !DILocation(line: 296, column: 4, scope: !3173)
!3175 = !DILocation(line: 300, column: 11, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3138, file: !46, line: 300, column: 6)
!3177 = !DILocation(line: 300, column: 6, scope: !3176)
!3178 = !DILocation(line: 300, column: 32, scope: !3176)
!3179 = !DILocation(line: 300, column: 6, scope: !3138)
!3180 = !DILocation(line: 303, column: 4, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3176, file: !46, line: 301, column: 2)
!3182 = !DILocation(line: 303, column: 8, scope: !3181)
!3183 = !DILocation(line: 304, column: 3, scope: !3181)
!3184 = !DILocation(line: 308, column: 15, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3176, file: !46, line: 307, column: 2)
!3186 = !DILocation(line: 308, column: 25, scope: !3185)
!3187 = !DILocation(line: 308, column: 31, scope: !3185)
!3188 = !DILocation(line: 308, column: 41, scope: !3185)
!3189 = !DILocation(line: 308, column: 10, scope: !3185)
!3190 = !DILocation(line: 308, column: 3, scope: !3185)
!3191 = !DILocation(line: 310, column: 1, scope: !3138)
