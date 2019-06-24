; ModuleID = './[inter]lib--dpkg--db-ctrl-upgrade.o.i'
source_filename = "./[inter]lib--dpkg--db-ctrl-upgrade.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rename_node = type { %struct.rename_node*, i8*, i8* }
%struct.atomic_file = type { i32, i8*, i8*, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.varbuf = type { i64, i64, i8* }
%struct.varbuf_state = type { i64 }
%struct.pkginfo = type { %struct.pkgset*, %struct.pkginfo*, i32, i32, i32, i32, i8*, i8*, %struct.dpkg_version, %struct.pkgbin, %struct.pkgbin, %struct.perpackagestate*, %struct.archivedetails*, %struct.anon, %struct.trigaw*, %struct.trigpend*, %struct.fsys_namenode_list*, i64, i8, i8 }
%struct.pkgset = type { %struct.pkgset*, i8*, %struct.pkginfo, %struct.anon.1, i32 }
%struct.anon.1 = type { %struct.deppossi*, %struct.deppossi* }
%struct.deppossi = type { %struct.dependency*, %struct.pkgset*, %struct.deppossi*, %struct.deppossi*, %struct.deppossi*, %struct.dpkg_arch*, %struct.dpkg_version, i32, i8, i8 }
%struct.dependency = type { %struct.pkginfo*, %struct.dependency*, %struct.deppossi*, i32 }
%struct.dpkg_arch = type { %struct.dpkg_arch*, i8*, i32 }
%struct.dpkg_version = type { i32, i8*, i8* }
%struct.pkgbin = type { %struct.dependency*, i8, i32, %struct.dpkg_arch*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.dpkg_version, %struct.conffile*, %struct.arbitraryfield* }
%struct.conffile = type { %struct.conffile*, i8*, i8*, i8 }
%struct.arbitraryfield = type { %struct.arbitraryfield*, i8*, i8* }
%struct.perpackagestate = type opaque
%struct.archivedetails = type { %struct.archivedetails*, i8*, i8*, i8*, i8* }
%struct.anon = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigaw = type { %struct.pkginfo*, %struct.pkginfo*, %struct.trigaw*, %struct.anon.0 }
%struct.anon.0 = type { %struct.trigaw*, %struct.trigaw* }
%struct.trigpend = type { %struct.trigpend*, i8* }
%struct.fsys_namenode_list = type { %struct.fsys_namenode_list*, %struct.fsys_namenode* }
%struct.fsys_namenode = type { %struct.fsys_namenode*, i8*, %struct.pkg_list*, %struct.fsys_diversion*, %struct.file_stat*, %struct.trigfileint*, i32, i8*, i8*, %struct.file_ondisk_id* }
%struct.pkg_list = type opaque
%struct.fsys_diversion = type { %struct.fsys_namenode*, %struct.fsys_namenode*, %struct.pkgset*, %struct.fsys_diversion* }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.trigfileint = type opaque
%struct.file_ondisk_id = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"info/format\00", align 1
@rename_head = internal global %struct.rename_node* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"error creating hard link '%.255s'\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cannot remove '%.250s'\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot read info directory\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"info file %s/%s not associated to any package\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"error while writing '%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @pkg_infodb_upgrade() #0 !dbg !135 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !139, metadata !140), !dbg !141
  %2 = call i32 @pkg_infodb_get_format(), !dbg !142
  store i32 %2, i32* %1, align 4, !dbg !143
  %3 = call i32 @modstatdb_get_status(), !dbg !144
  %4 = icmp ult i32 %3, 3, !dbg !146
  br i1 %4, label %5, label %6, !dbg !147

; <label>:5:                                      ; preds = %0
  br label %12, !dbg !148

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* %1, align 4, !dbg !149
  %8 = icmp slt i32 %7, 1, !dbg !151
  br i1 %8, label %11, label %9, !dbg !152

; <label>:9:                                      ; preds = %6
  %10 = call zeroext i1 @pkg_infodb_is_upgrading(), !dbg !153
  br i1 %10, label %11, label %12, !dbg !154

; <label>:11:                                     ; preds = %9, %6
  call void @pkg_infodb_upgrade_to_multiarch(), !dbg !156
  br label %12, !dbg !156

; <label>:12:                                     ; preds = %5, %11, %9
  ret void, !dbg !157
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @pkg_infodb_get_format() #2

declare i32 @modstatdb_get_status() #2

declare zeroext i1 @pkg_infodb_is_upgrading() #2

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_upgrade_to_multiarch() #0 !dbg !158 {
  %1 = alloca %struct.atomic_file*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %1, metadata !159, metadata !140), !dbg !227
  call void @llvm.dbg.declare(metadata i8** %2, metadata !228, metadata !140), !dbg !229
  %3 = call i8* @dpkg_db_get_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !230
  store i8* %3, i8** %2, align 8, !dbg !231
  %4 = load i8*, i8** %2, align 8, !dbg !232
  %5 = call %struct.atomic_file* @atomic_file_new(i8* %4, i32 0), !dbg !233
  store %struct.atomic_file* %5, %struct.atomic_file** %1, align 8, !dbg !234
  %6 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !235
  call void @atomic_file_open(%struct.atomic_file* %6), !dbg !236
  %7 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !237
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_abort_db_upgrade, i32 2, i32 1, %struct.atomic_file* %7), !dbg !238
  call void @pkg_infodb_link_multiarch_files(), !dbg !239
  %8 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !240
  call void @pkg_infodb_write_format(%struct.atomic_file* %8, i32 1), !dbg !241
  call void @pkg_infodb_unlink_monoarch_files(), !dbg !242
  %9 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !243
  call void @atomic_file_commit(%struct.atomic_file* %9), !dbg !244
  %10 = call i8* @pkg_infodb_get_dir(), !dbg !245
  call void @dir_sync_path(i8* %10), !dbg !246
  call void @pop_cleanup(i32 1), !dbg !248
  %11 = load %struct.atomic_file*, %struct.atomic_file** %1, align 8, !dbg !249
  call void @atomic_file_free(%struct.atomic_file* %11), !dbg !250
  %12 = load i8*, i8** %2, align 8, !dbg !251
  call void @free(i8* %12) #8, !dbg !252
  ret void, !dbg !253
}

declare i8* @dpkg_db_get_path(i8*) #2

declare %struct.atomic_file* @atomic_file_new(i8*, i32) #2

declare void @atomic_file_open(%struct.atomic_file*) #2

declare void @push_cleanup(void (i32, i8**)*, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @cu_abort_db_upgrade(i32, i8**) #0 !dbg !254 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.atomic_file*, align 8
  %6 = alloca %struct.rename_node*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !258, metadata !140), !dbg !259
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !260, metadata !140), !dbg !261
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %5, metadata !262, metadata !140), !dbg !263
  %7 = load i8**, i8*** %4, align 8, !dbg !264
  %8 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !264
  %9 = load i8*, i8** %8, align 8, !dbg !264
  %10 = bitcast i8* %9 to %struct.atomic_file*, !dbg !264
  store %struct.atomic_file* %10, %struct.atomic_file** %5, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata %struct.rename_node** %6, metadata !265, metadata !140), !dbg !266
  br label %11, !dbg !267

; <label>:11:                                     ; preds = %46, %2
  %12 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !268
  %13 = icmp ne %struct.rename_node* %12, null, !dbg !270
  br i1 %13, label %14, label %49, !dbg !270

; <label>:14:                                     ; preds = %11
  %15 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !271
  %16 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %15, i32 0, i32 0, !dbg !273
  %17 = load %struct.rename_node*, %struct.rename_node** %16, align 8, !dbg !273
  store %struct.rename_node* %17, %struct.rename_node** %6, align 8, !dbg !274
  %18 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !275
  %19 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %18, i32 0, i32 2, !dbg !277
  %20 = load i8*, i8** %19, align 8, !dbg !277
  %21 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !278
  %22 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %21, i32 0, i32 1, !dbg !279
  %23 = load i8*, i8** %22, align 8, !dbg !279
  %24 = call i32 @link(i8* %20, i8* %23) #8, !dbg !280
  %25 = icmp ne i32 %24, 0, !dbg !280
  br i1 %25, label %26, label %35, !dbg !281

; <label>:26:                                     ; preds = %14
  %27 = call i32* @__errno_location() #1, !dbg !282
  %28 = load i32, i32* %27, align 4, !dbg !284
  %29 = icmp ne i32 %28, 17, !dbg !285
  br i1 %29, label %30, label %35, !dbg !286

; <label>:30:                                     ; preds = %26
  %31 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !287
  %32 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !288
  %33 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %32, i32 0, i32 1, !dbg !289
  %34 = load i8*, i8** %33, align 8, !dbg !289
  call void (i8*, ...) @ohshite(i8* %31, i8* %34) #9, !dbg !290
  unreachable, !dbg !291

; <label>:35:                                     ; preds = %26, %14
  %36 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !292
  %37 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %36, i32 0, i32 2, !dbg !294
  %38 = load i8*, i8** %37, align 8, !dbg !294
  %39 = call i32 @unlink(i8* %38) #8, !dbg !295
  %40 = icmp ne i32 %39, 0, !dbg !295
  br i1 %40, label %41, label %46, !dbg !296

; <label>:41:                                     ; preds = %35
  %42 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !297
  %43 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !298
  %44 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %43, i32 0, i32 2, !dbg !299
  %45 = load i8*, i8** %44, align 8, !dbg !299
  call void (i8*, ...) @ohshite(i8* %42, i8* %45) #9, !dbg !300
  unreachable, !dbg !302

; <label>:46:                                     ; preds = %35
  %47 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !303
  call void @rename_node_free(%struct.rename_node* %47), !dbg !304
  %48 = load %struct.rename_node*, %struct.rename_node** %6, align 8, !dbg !305
  store %struct.rename_node* %48, %struct.rename_node** @rename_head, align 8, !dbg !306
  br label %11, !dbg !307, !llvm.loop !309

; <label>:49:                                     ; preds = %11
  %50 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !310
  %51 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %50, i32 0, i32 2, !dbg !312
  %52 = load i8*, i8** %51, align 8, !dbg !312
  %53 = call i32 @unlink(i8* %52) #8, !dbg !313
  %54 = icmp ne i32 %53, 0, !dbg !313
  br i1 %54, label %55, label %64, !dbg !314

; <label>:55:                                     ; preds = %49
  %56 = call i32* @__errno_location() #1, !dbg !315
  %57 = load i32, i32* %56, align 4, !dbg !317
  %58 = icmp ne i32 %57, 2, !dbg !318
  br i1 %58, label %59, label %64, !dbg !319

; <label>:59:                                     ; preds = %55
  %60 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !320
  %61 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !321
  %62 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %61, i32 0, i32 2, !dbg !322
  %63 = load i8*, i8** %62, align 8, !dbg !322
  call void (i8*, ...) @ohshite(i8* %60, i8* %63) #9, !dbg !323
  unreachable, !dbg !324

; <label>:64:                                     ; preds = %55, %49
  %65 = load %struct.atomic_file*, %struct.atomic_file** %5, align 8, !dbg !325
  call void @atomic_file_free(%struct.atomic_file* %65), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_link_multiarch_files() #0 !dbg !328 {
  %1 = alloca %struct.__dirstream*, align 8
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca %struct.varbuf, align 8
  %4 = alloca %struct.varbuf, align 8
  %5 = alloca %struct.varbuf, align 8
  %6 = alloca %struct.varbuf_state, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pkginfo*, align 8
  %10 = alloca %struct.pkgset*, align 8
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %1, metadata !329, metadata !140), !dbg !334
  call void @llvm.dbg.declare(metadata %struct.dirent** %2, metadata !335, metadata !140), !dbg !350
  call void @llvm.dbg.declare(metadata %struct.varbuf* %3, metadata !351, metadata !140), !dbg !358
  %11 = bitcast %struct.varbuf* %3 to i8*, !dbg !358
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 24, i32 8, i1 false), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.varbuf* %4, metadata !359, metadata !140), !dbg !360
  %12 = bitcast %struct.varbuf* %4 to i8*, !dbg !360
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false), !dbg !360
  call void @llvm.dbg.declare(metadata %struct.varbuf* %5, metadata !361, metadata !140), !dbg !362
  %13 = bitcast %struct.varbuf* %5 to i8*, !dbg !362
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false), !dbg !362
  call void @llvm.dbg.declare(metadata %struct.varbuf_state* %6, metadata !363, metadata !140), !dbg !367
  %14 = call i8* @pkg_infodb_get_dir(), !dbg !368
  %15 = call i8* @pkg_infodb_get_dir(), !dbg !369
  %16 = call i64 @strlen(i8* %15) #10, !dbg !371
  call void @varbuf_add_buf(%struct.varbuf* %4, i8* %14, i64 %16), !dbg !373
  call void @varbuf_add_char(%struct.varbuf* %4, i32 47), !dbg !375
  call void @varbuf_end_str(%struct.varbuf* %4), !dbg !376
  call void @varbuf_snapshot(%struct.varbuf* %4, %struct.varbuf_state* %6), !dbg !377
  %17 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !378
  %18 = load i8*, i8** %17, align 8, !dbg !378
  %19 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 0, !dbg !379
  %20 = load i64, i64* %19, align 8, !dbg !379
  call void @varbuf_add_buf(%struct.varbuf* %5, i8* %18, i64 %20), !dbg !380
  call void @varbuf_end_str(%struct.varbuf* %5), !dbg !381
  %21 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !382
  %22 = load i8*, i8** %21, align 8, !dbg !382
  %23 = call %struct.__dirstream* @opendir(i8* %22), !dbg !383
  store %struct.__dirstream* %23, %struct.__dirstream** %1, align 8, !dbg !384
  %24 = load %struct.__dirstream*, %struct.__dirstream** %1, align 8, !dbg !385
  %25 = icmp ne %struct.__dirstream* %24, null, !dbg !385
  br i1 %25, label %28, label %26, !dbg !387

; <label>:26:                                     ; preds = %0
  %27 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !388
  call void (i8*, ...) @ohshite(i8* %27) #9, !dbg !389
  unreachable, !dbg !391

; <label>:28:                                     ; preds = %0
  %29 = load %struct.__dirstream*, %struct.__dirstream** %1, align 8, !dbg !392
  %30 = bitcast %struct.__dirstream* %29 to i8*, !dbg !393
  call void (void (i32, i8**)*, i32, i32, ...) @push_cleanup(void (i32, i8**)* @cu_closedir, i32 -1, i32 1, i8* %30), !dbg !394
  br label %31, !dbg !395

; <label>:31:                                     ; preds = %133, %102, %90, %66, %50, %42, %28
  %32 = load %struct.__dirstream*, %struct.__dirstream** %1, align 8, !dbg !396
  %33 = call %struct.dirent* @readdir(%struct.__dirstream* %32), !dbg !397
  store %struct.dirent* %33, %struct.dirent** %2, align 8, !dbg !398
  %34 = icmp ne %struct.dirent* %33, null, !dbg !399
  br i1 %34, label %35, label %140, !dbg !400

; <label>:35:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i8** %7, metadata !401, metadata !140), !dbg !405
  call void @llvm.dbg.declare(metadata i8** %8, metadata !406, metadata !140), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.pkginfo** %9, metadata !408, metadata !140), !dbg !592
  call void @llvm.dbg.declare(metadata %struct.pkgset** %10, metadata !593, metadata !140), !dbg !594
  %36 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !595
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 4, !dbg !597
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %37, i64 0, i64 0, !dbg !595
  %39 = load i8, i8* %38, align 1, !dbg !595
  %40 = sext i8 %39 to i32, !dbg !595
  %41 = icmp eq i32 %40, 46, !dbg !598
  br i1 %41, label %42, label %43, !dbg !599

; <label>:42:                                     ; preds = %35
  br label %31, !dbg !600, !llvm.loop !601

; <label>:43:                                     ; preds = %35
  %44 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !602
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 4, !dbg !603
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %45, i32 0, i32 0, !dbg !602
  %47 = call i8* @strrchr(i8* %46, i32 46) #10, !dbg !604
  store i8* %47, i8** %8, align 8, !dbg !605
  %48 = load i8*, i8** %8, align 8, !dbg !606
  %49 = icmp eq i8* %48, null, !dbg !608
  br i1 %49, label %50, label %51, !dbg !609

; <label>:50:                                     ; preds = %43
  br label %31, !dbg !610, !llvm.loop !601

; <label>:51:                                     ; preds = %43
  call void @varbuf_reset(%struct.varbuf* %3), !dbg !611
  %52 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !612
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 4, !dbg !613
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %53, i32 0, i32 0, !dbg !612
  %55 = load i8*, i8** %8, align 8, !dbg !614
  %56 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !615
  %57 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 4, !dbg !616
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %57, i32 0, i32 0, !dbg !615
  %59 = ptrtoint i8* %55 to i64, !dbg !617
  %60 = ptrtoint i8* %58 to i64, !dbg !617
  %61 = sub i64 %59, %60, !dbg !617
  call void @varbuf_add_buf(%struct.varbuf* %3, i8* %54, i64 %61), !dbg !618
  call void @varbuf_end_str(%struct.varbuf* %3), !dbg !619
  %62 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !620
  %63 = load i8*, i8** %62, align 8, !dbg !620
  %64 = call i8* @strchr(i8* %63, i32 58) #10, !dbg !622
  %65 = icmp ne i8* %64, null, !dbg !622
  br i1 %65, label %66, label %67, !dbg !623

; <label>:66:                                     ; preds = %51
  br label %31, !dbg !624, !llvm.loop !601

; <label>:67:                                     ; preds = %51
  %68 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %3, i32 0, i32 2, !dbg !625
  %69 = load i8*, i8** %68, align 8, !dbg !625
  %70 = call %struct.pkgset* @pkg_hash_find_set(i8* %69), !dbg !626
  store %struct.pkgset* %70, %struct.pkgset** %10, align 8, !dbg !627
  %71 = load %struct.pkgset*, %struct.pkgset** %10, align 8, !dbg !628
  %72 = getelementptr inbounds %struct.pkgset, %struct.pkgset* %71, i32 0, i32 2, !dbg !630
  store %struct.pkginfo* %72, %struct.pkginfo** %9, align 8, !dbg !631
  br label %73, !dbg !632

; <label>:73:                                     ; preds = %83, %67
  %74 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !633
  %75 = icmp ne %struct.pkginfo* %74, null, !dbg !636
  br i1 %75, label %76, label %87, !dbg !636

; <label>:76:                                     ; preds = %73
  %77 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !637
  %78 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %77, i32 0, i32 4, !dbg !639
  %79 = load i32, i32* %78, align 8, !dbg !639
  %80 = icmp ne i32 %79, 0, !dbg !640
  br i1 %80, label %81, label %82, !dbg !641

; <label>:81:                                     ; preds = %76
  br label %87, !dbg !642

; <label>:82:                                     ; preds = %76
  br label %83, !dbg !643

; <label>:83:                                     ; preds = %82
  %84 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !645
  %85 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %84, i32 0, i32 1, !dbg !647
  %86 = load %struct.pkginfo*, %struct.pkginfo** %85, align 8, !dbg !647
  store %struct.pkginfo* %86, %struct.pkginfo** %9, align 8, !dbg !648
  br label %73, !dbg !649, !llvm.loop !650

; <label>:87:                                     ; preds = %81, %73
  %88 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !652
  %89 = icmp ne %struct.pkginfo* %88, null, !dbg !652
  br i1 %89, label %96, label %90, !dbg !654

; <label>:90:                                     ; preds = %87
  %91 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !655
  %92 = call i8* @pkg_infodb_get_dir(), !dbg !657
  %93 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !658
  %94 = getelementptr inbounds %struct.dirent, %struct.dirent* %93, i32 0, i32 4, !dbg !659
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %94, i32 0, i32 0, !dbg !658
  call void (i8*, ...) @warning(i8* %91, i8* %92, i8* %95), !dbg !660
  br label %31, !dbg !662, !llvm.loop !601

; <label>:96:                                     ; preds = %87
  %97 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !663
  %98 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %97, i32 0, i32 9, !dbg !665
  %99 = getelementptr inbounds %struct.pkgbin, %struct.pkgbin* %98, i32 0, i32 2, !dbg !666
  %100 = load i32, i32* %99, align 4, !dbg !666
  %101 = icmp ne i32 %100, 1, !dbg !667
  br i1 %101, label %102, label %103, !dbg !668

; <label>:102:                                    ; preds = %96
  br label %31, !dbg !669, !llvm.loop !601

; <label>:103:                                    ; preds = %96
  %104 = load i8*, i8** %8, align 8, !dbg !670
  %105 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !671
  store i8* %105, i8** %7, align 8, !dbg !672
  call void @varbuf_rollback(%struct.varbuf* %4, %struct.varbuf_state* %6), !dbg !673
  %106 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !674
  %107 = getelementptr inbounds %struct.dirent, %struct.dirent* %106, i32 0, i32 4, !dbg !675
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %107, i32 0, i32 0, !dbg !674
  %109 = load %struct.dirent*, %struct.dirent** %2, align 8, !dbg !676
  %110 = getelementptr inbounds %struct.dirent, %struct.dirent* %109, i32 0, i32 4, !dbg !677
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %110, i32 0, i32 0, !dbg !676
  %112 = call i64 @strlen(i8* %111) #10, !dbg !678
  call void @varbuf_add_buf(%struct.varbuf* %4, i8* %108, i64 %112), !dbg !679
  call void @varbuf_end_str(%struct.varbuf* %4), !dbg !681
  call void @varbuf_rollback(%struct.varbuf* %5, %struct.varbuf_state* %6), !dbg !682
  %113 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !683
  %114 = load %struct.pkginfo*, %struct.pkginfo** %9, align 8, !dbg !684
  %115 = getelementptr inbounds %struct.pkginfo, %struct.pkginfo* %114, i32 0, i32 9, !dbg !685
  call void @varbuf_add_pkgbin_name(%struct.varbuf* %5, %struct.pkginfo* %113, %struct.pkgbin* %115, i32 3), !dbg !686
  call void @varbuf_add_char(%struct.varbuf* %5, i32 46), !dbg !687
  %116 = load i8*, i8** %7, align 8, !dbg !688
  %117 = load i8*, i8** %7, align 8, !dbg !689
  %118 = call i64 @strlen(i8* %117) #10, !dbg !690
  call void @varbuf_add_buf(%struct.varbuf* %5, i8* %116, i64 %118), !dbg !691
  call void @varbuf_end_str(%struct.varbuf* %5), !dbg !692
  %119 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !693
  %120 = load i8*, i8** %119, align 8, !dbg !693
  %121 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 2, !dbg !695
  %122 = load i8*, i8** %121, align 8, !dbg !695
  %123 = call i32 @link(i8* %120, i8* %122) #8, !dbg !696
  %124 = icmp ne i32 %123, 0, !dbg !696
  br i1 %124, label %125, label %133, !dbg !697

; <label>:125:                                    ; preds = %103
  %126 = call i32* @__errno_location() #1, !dbg !698
  %127 = load i32, i32* %126, align 4, !dbg !700
  %128 = icmp ne i32 %127, 17, !dbg !701
  br i1 %128, label %129, label %133, !dbg !702

; <label>:129:                                    ; preds = %125
  %130 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !703
  %131 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 2, !dbg !704
  %132 = load i8*, i8** %131, align 8, !dbg !704
  call void (i8*, ...) @ohshite(i8* %130, i8* %132) #9, !dbg !705
  unreachable, !dbg !706

; <label>:133:                                    ; preds = %125, %103
  %134 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %4, i32 0, i32 2, !dbg !707
  %135 = load i8*, i8** %134, align 8, !dbg !707
  %136 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %5, i32 0, i32 2, !dbg !708
  %137 = load i8*, i8** %136, align 8, !dbg !708
  %138 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !709
  %139 = call %struct.rename_node* @rename_node_new(i8* %135, i8* %137, %struct.rename_node* %138), !dbg !710
  store %struct.rename_node* %139, %struct.rename_node** @rename_head, align 8, !dbg !711
  br label %31, !dbg !712, !llvm.loop !601

; <label>:140:                                    ; preds = %31
  call void @pop_cleanup(i32 1), !dbg !713
  call void @varbuf_destroy(%struct.varbuf* %3), !dbg !714
  call void @varbuf_destroy(%struct.varbuf* %5), !dbg !715
  call void @varbuf_destroy(%struct.varbuf* %4), !dbg !716
  ret void, !dbg !717
}

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_write_format(%struct.atomic_file*, i32) #0 !dbg !718 {
  %3 = alloca %struct.atomic_file*, align 8
  %4 = alloca i32, align 4
  store %struct.atomic_file* %0, %struct.atomic_file** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_file** %3, metadata !721, metadata !140), !dbg !722
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !723, metadata !140), !dbg !724
  %5 = load %struct.atomic_file*, %struct.atomic_file** %3, align 8, !dbg !725
  %6 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %5, i32 0, i32 3, !dbg !727
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !727
  %8 = load i32, i32* %4, align 4, !dbg !728
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %8), !dbg !729
  %10 = icmp slt i32 %9, 0, !dbg !730
  br i1 %10, label %11, label %16, !dbg !731

; <label>:11:                                     ; preds = %2
  %12 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !732
  %13 = load %struct.atomic_file*, %struct.atomic_file** %3, align 8, !dbg !733
  %14 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %13, i32 0, i32 2, !dbg !734
  %15 = load i8*, i8** %14, align 8, !dbg !734
  call void (i8*, ...) @ohshite(i8* %12, i8* %15) #9, !dbg !735
  unreachable, !dbg !737

; <label>:16:                                     ; preds = %2
  %17 = load %struct.atomic_file*, %struct.atomic_file** %3, align 8, !dbg !738
  call void @atomic_file_sync(%struct.atomic_file* %17), !dbg !739
  %18 = load %struct.atomic_file*, %struct.atomic_file** %3, align 8, !dbg !740
  call void @atomic_file_close(%struct.atomic_file* %18), !dbg !741
  %19 = load %struct.atomic_file*, %struct.atomic_file** %3, align 8, !dbg !742
  %20 = getelementptr inbounds %struct.atomic_file, %struct.atomic_file* %19, i32 0, i32 1, !dbg !743
  %21 = load i8*, i8** %20, align 8, !dbg !743
  call void @dir_sync_path_parent(i8* %21), !dbg !744
  %22 = load i32, i32* %4, align 4, !dbg !745
  call void @pkg_infodb_set_format(i32 %22), !dbg !746
  ret void, !dbg !747
}

; Function Attrs: nounwind uwtable
define internal void @pkg_infodb_unlink_monoarch_files() #0 !dbg !748 {
  %1 = alloca %struct.rename_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rename_node** %1, metadata !749, metadata !140), !dbg !750
  br label %2, !dbg !751

; <label>:2:                                      ; preds = %19, %0
  %3 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !752
  %4 = icmp ne %struct.rename_node* %3, null, !dbg !754
  br i1 %4, label %5, label %22, !dbg !754

; <label>:5:                                      ; preds = %2
  %6 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !755
  %7 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %6, i32 0, i32 0, !dbg !757
  %8 = load %struct.rename_node*, %struct.rename_node** %7, align 8, !dbg !757
  store %struct.rename_node* %8, %struct.rename_node** %1, align 8, !dbg !758
  %9 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !759
  %10 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %9, i32 0, i32 1, !dbg !761
  %11 = load i8*, i8** %10, align 8, !dbg !761
  %12 = call i32 @unlink(i8* %11) #8, !dbg !762
  %13 = icmp ne i32 %12, 0, !dbg !762
  br i1 %13, label %14, label %19, !dbg !763

; <label>:14:                                     ; preds = %5
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !764
  %16 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !765
  %17 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %16, i32 0, i32 1, !dbg !766
  %18 = load i8*, i8** %17, align 8, !dbg !766
  call void (i8*, ...) @ohshite(i8* %15, i8* %18) #9, !dbg !767
  unreachable, !dbg !769

; <label>:19:                                     ; preds = %5
  %20 = load %struct.rename_node*, %struct.rename_node** @rename_head, align 8, !dbg !770
  call void @rename_node_free(%struct.rename_node* %20), !dbg !771
  %21 = load %struct.rename_node*, %struct.rename_node** %1, align 8, !dbg !772
  store %struct.rename_node* %21, %struct.rename_node** @rename_head, align 8, !dbg !773
  br label %2, !dbg !774, !llvm.loop !776

; <label>:22:                                     ; preds = %2
  ret void, !dbg !777
}

declare void @atomic_file_commit(%struct.atomic_file*) #2

declare void @dir_sync_path(i8*) #2

declare i8* @pkg_infodb_get_dir() #2

declare void @pop_cleanup(i32) #2

declare void @atomic_file_free(%struct.atomic_file*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @rename_node_free(%struct.rename_node*) #0 !dbg !778 {
  %2 = alloca %struct.rename_node*, align 8
  store %struct.rename_node* %0, %struct.rename_node** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.rename_node** %2, metadata !781, metadata !140), !dbg !782
  %3 = load %struct.rename_node*, %struct.rename_node** %2, align 8, !dbg !783
  %4 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %3, i32 0, i32 1, !dbg !784
  %5 = load i8*, i8** %4, align 8, !dbg !784
  call void @free(i8* %5) #8, !dbg !785
  %6 = load %struct.rename_node*, %struct.rename_node** %2, align 8, !dbg !786
  %7 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %6, i32 0, i32 2, !dbg !787
  %8 = load i8*, i8** %7, align 8, !dbg !787
  call void @free(i8* %8) #8, !dbg !788
  %9 = load %struct.rename_node*, %struct.rename_node** %2, align 8, !dbg !789
  %10 = bitcast %struct.rename_node* %9 to i8*, !dbg !789
  call void @free(i8* %10) #8, !dbg !790
  ret void, !dbg !791
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare void @varbuf_add_char(%struct.varbuf*, i32) #2

declare void @varbuf_end_str(%struct.varbuf*) #2

declare void @varbuf_snapshot(%struct.varbuf*, %struct.varbuf_state*) #2

declare %struct.__dirstream* @opendir(i8*) #2

declare void @cu_closedir(i32, i8**) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

declare void @varbuf_reset(%struct.varbuf*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

declare %struct.pkgset* @pkg_hash_find_set(i8*) #2

declare void @warning(i8*, ...) #2

declare void @varbuf_rollback(%struct.varbuf*, %struct.varbuf_state*) #2

declare void @varbuf_add_pkgbin_name(%struct.varbuf*, %struct.pkginfo*, %struct.pkgbin*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.rename_node* @rename_node_new(i8*, i8*, %struct.rename_node*) #0 !dbg !792 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rename_node*, align 8
  %7 = alloca %struct.rename_node*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !795, metadata !140), !dbg !796
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !797, metadata !140), !dbg !798
  store %struct.rename_node* %2, %struct.rename_node** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rename_node** %6, metadata !799, metadata !140), !dbg !800
  call void @llvm.dbg.declare(metadata %struct.rename_node** %7, metadata !801, metadata !140), !dbg !802
  %8 = call i8* @m_malloc(i64 24), !dbg !803
  %9 = bitcast i8* %8 to %struct.rename_node*, !dbg !803
  store %struct.rename_node* %9, %struct.rename_node** %7, align 8, !dbg !804
  %10 = load %struct.rename_node*, %struct.rename_node** %6, align 8, !dbg !805
  %11 = load %struct.rename_node*, %struct.rename_node** %7, align 8, !dbg !806
  %12 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %11, i32 0, i32 0, !dbg !807
  store %struct.rename_node* %10, %struct.rename_node** %12, align 8, !dbg !808
  %13 = load i8*, i8** %4, align 8, !dbg !809
  %14 = call i8* @m_strdup(i8* %13), !dbg !810
  %15 = load %struct.rename_node*, %struct.rename_node** %7, align 8, !dbg !811
  %16 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %15, i32 0, i32 1, !dbg !812
  store i8* %14, i8** %16, align 8, !dbg !813
  %17 = load i8*, i8** %5, align 8, !dbg !814
  %18 = call i8* @m_strdup(i8* %17), !dbg !815
  %19 = load %struct.rename_node*, %struct.rename_node** %7, align 8, !dbg !816
  %20 = getelementptr inbounds %struct.rename_node, %struct.rename_node* %19, i32 0, i32 2, !dbg !817
  store i8* %18, i8** %20, align 8, !dbg !818
  %21 = load %struct.rename_node*, %struct.rename_node** %7, align 8, !dbg !819
  ret %struct.rename_node* %21, !dbg !820
}

declare void @varbuf_destroy(%struct.varbuf*) #2

declare i8* @m_malloc(i64) #2

declare i8* @m_strdup(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @atomic_file_sync(%struct.atomic_file*) #2

declare void @atomic_file_close(%struct.atomic_file*) #2

declare void @dir_sync_path_parent(i8*) #2

declare void @pkg_infodb_set_format(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!132, !133}
!llvm.ident = !{!134}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !119, globals: !121)
!1 = !DIFile(filename: "[inter]lib--dpkg--db-ctrl-upgrade.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !10, !21, !25, !31, !42, !53, !62, !70, !74, !84, !94, !100, !113}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_infodb_format", file: !4, line: 28, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/db-ctrl.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PKG_INFODB_FORMAT_UNKNOWN", value: -1)
!7 = !DIEnumerator(name: "PKG_INFODB_FORMAT_LEGACY", value: 0)
!8 = !DIEnumerator(name: "PKG_INFODB_FORMAT_MULTIARCH", value: 1)
!9 = !DIEnumerator(name: "PKG_INFODB_FORMAT_LAST", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "modstatdb_rw", file: !11, line: 263, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "../../lib/dpkg/dpkg-db.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20}
!13 = !DIEnumerator(name: "msdbrw_readonly", value: 0)
!14 = !DIEnumerator(name: "msdbrw_needsuperuserlockonly", value: 1)
!15 = !DIEnumerator(name: "msdbrw_writeifposs", value: 2)
!16 = !DIEnumerator(name: "msdbrw_write", value: 3)
!17 = !DIEnumerator(name: "msdbrw_needsuperuser", value: 4)
!18 = !DIEnumerator(name: "msdbrw_available_readonly", value: 256)
!19 = !DIEnumerator(name: "msdbrw_available_write", value: 512)
!20 = !DIEnumerator(name: "msdbrw_available_mask", value: 65280)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "atomic_file_flags", file: !22, line: 36, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "../../lib/dpkg/atomic-file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!23 = !{!24}
!24 = !DIEnumerator(name: "ATOMIC_FILE_BACKUP", value: 1)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 41, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "../../lib/dpkg/ehandle.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "ehflag_normaltidy", value: 1)
!29 = !DIEnumerator(name: "ehflag_bombout", value: 2)
!30 = !DIEnumerator(name: "ehflag_recursiveerror", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "deptype", file: !11, line: 44, size: 32, align: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41}
!33 = !DIEnumerator(name: "dep_suggests", value: 0)
!34 = !DIEnumerator(name: "dep_recommends", value: 1)
!35 = !DIEnumerator(name: "dep_depends", value: 2)
!36 = !DIEnumerator(name: "dep_predepends", value: 3)
!37 = !DIEnumerator(name: "dep_breaks", value: 4)
!38 = !DIEnumerator(name: "dep_conflicts", value: 5)
!39 = !DIEnumerator(name: "dep_provides", value: 6)
!40 = !DIEnumerator(name: "dep_replaces", value: 7)
!41 = !DIEnumerator(name: "dep_enhances", value: 8)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_arch_type", file: !43, line: 37, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "../../lib/dpkg/arch.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52}
!45 = !DIEnumerator(name: "DPKG_ARCH_NONE", value: 0)
!46 = !DIEnumerator(name: "DPKG_ARCH_EMPTY", value: 1)
!47 = !DIEnumerator(name: "DPKG_ARCH_ILLEGAL", value: 2)
!48 = !DIEnumerator(name: "DPKG_ARCH_WILDCARD", value: 3)
!49 = !DIEnumerator(name: "DPKG_ARCH_ALL", value: 4)
!50 = !DIEnumerator(name: "DPKG_ARCH_NATIVE", value: 5)
!51 = !DIEnumerator(name: "DPKG_ARCH_FOREIGN", value: 6)
!52 = !DIEnumerator(name: "DPKG_ARCH_UNKNOWN", value: 7)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_relation", file: !54, line: 61, size: 32, align: 32, elements: !55)
!54 = !DIFile(filename: "../../lib/dpkg/version.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!55 = !{!56, !57, !58, !59, !60, !61}
!56 = !DIEnumerator(name: "DPKG_RELATION_NONE", value: 0)
!57 = !DIEnumerator(name: "DPKG_RELATION_EQ", value: 1)
!58 = !DIEnumerator(name: "DPKG_RELATION_LT", value: 2)
!59 = !DIEnumerator(name: "DPKG_RELATION_LE", value: 3)
!60 = !DIEnumerator(name: "DPKG_RELATION_GT", value: 4)
!61 = !DIEnumerator(name: "DPKG_RELATION_GE", value: 5)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgwant", file: !11, line: 153, size: 32, align: 32, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69}
!64 = !DIEnumerator(name: "PKG_WANT_UNKNOWN", value: 0)
!65 = !DIEnumerator(name: "PKG_WANT_INSTALL", value: 1)
!66 = !DIEnumerator(name: "PKG_WANT_HOLD", value: 2)
!67 = !DIEnumerator(name: "PKG_WANT_DEINSTALL", value: 3)
!68 = !DIEnumerator(name: "PKG_WANT_PURGE", value: 4)
!69 = !DIEnumerator(name: "PKG_WANT_SENTINEL", value: 5)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgeflag", file: !11, line: 163, size: 32, align: 32, elements: !71)
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "PKG_EFLAG_OK", value: 0)
!73 = !DIEnumerator(name: "PKG_EFLAG_REINSTREQ", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgstatus", file: !11, line: 168, size: 32, align: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83}
!76 = !DIEnumerator(name: "PKG_STAT_NOTINSTALLED", value: 0)
!77 = !DIEnumerator(name: "PKG_STAT_CONFIGFILES", value: 1)
!78 = !DIEnumerator(name: "PKG_STAT_HALFINSTALLED", value: 2)
!79 = !DIEnumerator(name: "PKG_STAT_UNPACKED", value: 3)
!80 = !DIEnumerator(name: "PKG_STAT_HALFCONFIGURED", value: 4)
!81 = !DIEnumerator(name: "PKG_STAT_TRIGGERSAWAITED", value: 5)
!82 = !DIEnumerator(name: "PKG_STAT_TRIGGERSPENDING", value: 6)
!83 = !DIEnumerator(name: "PKG_STAT_INSTALLED", value: 7)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgpriority", file: !11, line: 179, size: 32, align: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93}
!86 = !DIEnumerator(name: "PKG_PRIO_REQUIRED", value: 0)
!87 = !DIEnumerator(name: "PKG_PRIO_IMPORTANT", value: 1)
!88 = !DIEnumerator(name: "PKG_PRIO_STANDARD", value: 2)
!89 = !DIEnumerator(name: "PKG_PRIO_OPTIONAL", value: 3)
!90 = !DIEnumerator(name: "PKG_PRIO_EXTRA", value: 4)
!91 = !DIEnumerator(name: "PKG_PRIO_OTHER", value: 5)
!92 = !DIEnumerator(name: "PKG_PRIO_UNKNOWN", value: 6)
!93 = !DIEnumerator(name: "PKG_PRIO_UNSET", value: -1)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkgmultiarch", file: !11, line: 95, size: 32, align: 32, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "PKG_MULTIARCH_NO", value: 0)
!97 = !DIEnumerator(name: "PKG_MULTIARCH_SAME", value: 1)
!98 = !DIEnumerator(name: "PKG_MULTIARCH_ALLOWED", value: 2)
!99 = !DIEnumerator(name: "PKG_MULTIARCH_FOREIGN", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fsys_namenode_flags", file: !101, line: 61, size: 32, align: 32, elements: !102)
!101 = !DIFile(filename: "../../lib/dpkg/fsys.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!103 = !DIEnumerator(name: "FNNF_NEW_CONFF", value: 1)
!104 = !DIEnumerator(name: "FNNF_NEW_INARCHIVE", value: 2)
!105 = !DIEnumerator(name: "FNNF_OLD_CONFF", value: 4)
!106 = !DIEnumerator(name: "FNNF_OBS_CONFF", value: 8)
!107 = !DIEnumerator(name: "FNNF_ELIDE_OTHER_LISTS", value: 16)
!108 = !DIEnumerator(name: "FNNF_NO_ATOMIC_OVERWRITE", value: 32)
!109 = !DIEnumerator(name: "FNNF_PLACED_ON_DISK", value: 64)
!110 = !DIEnumerator(name: "FNNF_DEFERRED_FSYNC", value: 128)
!111 = !DIEnumerator(name: "FNNF_DEFERRED_RENAME", value: 256)
!112 = !DIEnumerator(name: "FNNF_FILTERED", value: 512)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pkg_name_arch_when", file: !11, line: 396, size: 32, align: 32, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "pnaw_never", value: 0)
!116 = !DIEnumerator(name: "pnaw_nonambig", value: 1)
!117 = !DIEnumerator(name: "pnaw_foreign", value: 2)
!118 = !DIEnumerator(name: "pnaw_always", value: 3)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!121 = !{!122}
!122 = distinct !DIGlobalVariable(name: "rename_head", scope: !0, file: !123, line: 49, type: !124, isLocal: true, isDefinition: true, variable: %struct.rename_node** @rename_head)
!123 = !DIFile(filename: "db-ctrl-upgrade.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rename_node", file: !123, line: 42, size: 192, align: 64, elements: !126)
!126 = !{!127, !128, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !123, line: 43, baseType: !124, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "old", scope: !125, file: !123, line: 44, baseType: !129, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "new", scope: !125, file: !123, line: 45, baseType: !129, size: 64, align: 64, offset: 128)
!132 = !{i32 2, !"Dwarf Version", i32 4}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!135 = distinct !DISubprogram(name: "pkg_infodb_upgrade", scope: !123, file: !123, line: 239, type: !136, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{null}
!138 = !{}
!139 = !DILocalVariable(name: "db_format", scope: !135, file: !123, line: 241, type: !3)
!140 = !DIExpression()
!141 = !DILocation(line: 241, column: 25, scope: !135)
!142 = !DILocation(line: 244, column: 14, scope: !135)
!143 = !DILocation(line: 244, column: 12, scope: !135)
!144 = !DILocation(line: 246, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !135, file: !123, line: 246, column: 6)
!146 = !DILocation(line: 246, column: 29, scope: !145)
!147 = !DILocation(line: 246, column: 6, scope: !135)
!148 = !DILocation(line: 247, column: 3, scope: !145)
!149 = !DILocation(line: 249, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !135, file: !123, line: 249, column: 6)
!151 = !DILocation(line: 249, column: 16, scope: !150)
!152 = !DILocation(line: 249, column: 46, scope: !150)
!153 = !DILocation(line: 250, column: 6, scope: !150)
!154 = !DILocation(line: 249, column: 6, scope: !155)
!155 = !DILexicalBlockFile(scope: !135, file: !123, discriminator: 1)
!156 = !DILocation(line: 251, column: 3, scope: !150)
!157 = !DILocation(line: 252, column: 1, scope: !135)
!158 = distinct !DISubprogram(name: "pkg_infodb_upgrade_to_multiarch", scope: !123, file: !123, line: 207, type: !136, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!159 = !DILocalVariable(name: "db_file", scope: !158, file: !123, line: 209, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_file", file: !22, line: 40, size: 256, align: 64, elements: !162)
!162 = !{!163, !164, !165, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !22, line: 41, baseType: !21, size: 32, align: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !22, line: 42, baseType: !129, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name_new", scope: !161, file: !22, line: 43, baseType: !129, size: 64, align: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !161, file: !22, line: 44, baseType: !167, size: 64, align: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 48, baseType: !170)
!169 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 241, size: 1728, align: 64, elements: !172)
!171 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!172 = !{!173, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !194, !195, !196, !197, !201, !203, !205, !209, !212, !214, !215, !216, !217, !218, !222, !223}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !170, file: !171, line: 242, baseType: !174, size: 32, align: 32)
!174 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !170, file: !171, line: 247, baseType: !129, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !170, file: !171, line: 248, baseType: !129, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !170, file: !171, line: 249, baseType: !129, size: 64, align: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !170, file: !171, line: 250, baseType: !129, size: 64, align: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !170, file: !171, line: 251, baseType: !129, size: 64, align: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !170, file: !171, line: 252, baseType: !129, size: 64, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !170, file: !171, line: 253, baseType: !129, size: 64, align: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !170, file: !171, line: 254, baseType: !129, size: 64, align: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !170, file: !171, line: 256, baseType: !129, size: 64, align: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !170, file: !171, line: 257, baseType: !129, size: 64, align: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !170, file: !171, line: 258, baseType: !129, size: 64, align: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !170, file: !171, line: 260, baseType: !187, size: 64, align: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !171, line: 156, size: 192, align: 64, elements: !189)
!189 = !{!190, !191, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !188, file: !171, line: 157, baseType: !187, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !188, file: !171, line: 158, baseType: !192, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !188, file: !171, line: 162, baseType: !174, size: 32, align: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !170, file: !171, line: 262, baseType: !192, size: 64, align: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !170, file: !171, line: 264, baseType: !174, size: 32, align: 32, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !170, file: !171, line: 268, baseType: !174, size: 32, align: 32, offset: 928)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !170, file: !171, line: 270, baseType: !198, size: 64, align: 64, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !199, line: 131, baseType: !200)
!199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!200 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !170, file: !171, line: 274, baseType: !202, size: 16, align: 16, offset: 1024)
!202 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !170, file: !171, line: 275, baseType: !204, size: 8, align: 8, offset: 1040)
!204 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !170, file: !171, line: 276, baseType: !206, size: 8, align: 8, offset: 1048)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 8, align: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !170, file: !171, line: 280, baseType: !210, size: 64, align: 64, offset: 1088)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !171, line: 150, baseType: null)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !170, file: !171, line: 289, baseType: !213, size: 64, align: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !199, line: 132, baseType: !200)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !170, file: !171, line: 297, baseType: !120, size: 64, align: 64, offset: 1216)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !170, file: !171, line: 298, baseType: !120, size: 64, align: 64, offset: 1280)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !170, file: !171, line: 299, baseType: !120, size: 64, align: 64, offset: 1344)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !170, file: !171, line: 300, baseType: !120, size: 64, align: 64, offset: 1408)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !170, file: !171, line: 302, baseType: !219, size: 64, align: 64, offset: 1472)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 216, baseType: !221)
!220 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!221 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !170, file: !171, line: 303, baseType: !174, size: 32, align: 32, offset: 1536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !170, file: !171, line: 305, baseType: !224, size: 160, align: 8, offset: 1568)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 160, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 20)
!227 = !DILocation(line: 209, column: 22, scope: !158)
!228 = !DILocalVariable(name: "db_format_file", scope: !158, file: !123, line: 210, type: !129)
!229 = !DILocation(line: 210, column: 8, scope: !158)
!230 = !DILocation(line: 212, column: 19, scope: !158)
!231 = !DILocation(line: 212, column: 17, scope: !158)
!232 = !DILocation(line: 213, column: 28, scope: !158)
!233 = !DILocation(line: 213, column: 12, scope: !158)
!234 = !DILocation(line: 213, column: 10, scope: !158)
!235 = !DILocation(line: 214, column: 19, scope: !158)
!236 = !DILocation(line: 214, column: 2, scope: !158)
!237 = !DILocation(line: 216, column: 55, scope: !158)
!238 = !DILocation(line: 216, column: 2, scope: !158)
!239 = !DILocation(line: 218, column: 2, scope: !158)
!240 = !DILocation(line: 219, column: 26, scope: !158)
!241 = !DILocation(line: 219, column: 2, scope: !158)
!242 = !DILocation(line: 221, column: 2, scope: !158)
!243 = !DILocation(line: 222, column: 21, scope: !158)
!244 = !DILocation(line: 222, column: 2, scope: !158)
!245 = !DILocation(line: 223, column: 16, scope: !158)
!246 = !DILocation(line: 223, column: 2, scope: !247)
!247 = !DILexicalBlockFile(scope: !158, file: !123, discriminator: 1)
!248 = !DILocation(line: 225, column: 2, scope: !158)
!249 = !DILocation(line: 227, column: 19, scope: !158)
!250 = !DILocation(line: 227, column: 2, scope: !158)
!251 = !DILocation(line: 228, column: 7, scope: !158)
!252 = !DILocation(line: 228, column: 2, scope: !158)
!253 = !DILocation(line: 229, column: 1, scope: !158)
!254 = distinct !DISubprogram(name: "cu_abort_db_upgrade", scope: !123, file: !123, line: 157, type: !255, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !174, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!258 = !DILocalVariable(name: "argc", arg: 1, scope: !254, file: !123, line: 157, type: !174)
!259 = !DILocation(line: 157, column: 25, scope: !254)
!260 = !DILocalVariable(name: "argv", arg: 2, scope: !254, file: !123, line: 157, type: !257)
!261 = !DILocation(line: 157, column: 38, scope: !254)
!262 = !DILocalVariable(name: "file", scope: !254, file: !123, line: 159, type: !160)
!263 = !DILocation(line: 159, column: 22, scope: !254)
!264 = !DILocation(line: 159, column: 29, scope: !254)
!265 = !DILocalVariable(name: "next", scope: !254, file: !123, line: 160, type: !124)
!266 = !DILocation(line: 160, column: 22, scope: !254)
!267 = !DILocation(line: 163, column: 2, scope: !254)
!268 = !DILocation(line: 163, column: 9, scope: !269)
!269 = !DILexicalBlockFile(scope: !254, file: !123, discriminator: 1)
!270 = !DILocation(line: 163, column: 2, scope: !269)
!271 = !DILocation(line: 164, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !254, file: !123, line: 163, column: 22)
!273 = !DILocation(line: 164, column: 23, scope: !272)
!274 = !DILocation(line: 164, column: 8, scope: !272)
!275 = !DILocation(line: 165, column: 12, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !123, line: 165, column: 7)
!277 = !DILocation(line: 165, column: 25, scope: !276)
!278 = !DILocation(line: 165, column: 30, scope: !276)
!279 = !DILocation(line: 165, column: 43, scope: !276)
!280 = !DILocation(line: 165, column: 7, scope: !276)
!281 = !DILocation(line: 165, column: 48, scope: !276)
!282 = !DILocation(line: 165, column: 52, scope: !283)
!283 = !DILexicalBlockFile(scope: !276, file: !123, discriminator: 1)
!284 = !DILocation(line: 165, column: 51, scope: !283)
!285 = !DILocation(line: 165, column: 56, scope: !283)
!286 = !DILocation(line: 165, column: 7, scope: !283)
!287 = !DILocation(line: 166, column: 11, scope: !276)
!288 = !DILocation(line: 167, column: 12, scope: !276)
!289 = !DILocation(line: 167, column: 25, scope: !276)
!290 = !DILocation(line: 166, column: 4, scope: !283)
!291 = !DILocation(line: 166, column: 4, scope: !276)
!292 = !DILocation(line: 168, column: 14, scope: !293)
!293 = distinct !DILexicalBlock(scope: !272, file: !123, line: 168, column: 7)
!294 = !DILocation(line: 168, column: 27, scope: !293)
!295 = !DILocation(line: 168, column: 7, scope: !293)
!296 = !DILocation(line: 168, column: 7, scope: !272)
!297 = !DILocation(line: 169, column: 11, scope: !293)
!298 = !DILocation(line: 169, column: 40, scope: !293)
!299 = !DILocation(line: 169, column: 53, scope: !293)
!300 = !DILocation(line: 169, column: 4, scope: !301)
!301 = !DILexicalBlockFile(scope: !293, file: !123, discriminator: 1)
!302 = !DILocation(line: 169, column: 4, scope: !293)
!303 = !DILocation(line: 170, column: 20, scope: !272)
!304 = !DILocation(line: 170, column: 3, scope: !272)
!305 = !DILocation(line: 171, column: 17, scope: !272)
!306 = !DILocation(line: 171, column: 15, scope: !272)
!307 = !DILocation(line: 163, column: 2, scope: !308)
!308 = !DILexicalBlockFile(scope: !254, file: !123, discriminator: 2)
!309 = distinct !{!309, !267}
!310 = !DILocation(line: 173, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !254, file: !123, line: 173, column: 6)
!312 = !DILocation(line: 173, column: 19, scope: !311)
!313 = !DILocation(line: 173, column: 6, scope: !311)
!314 = !DILocation(line: 173, column: 29, scope: !311)
!315 = !DILocation(line: 173, column: 33, scope: !316)
!316 = !DILexicalBlockFile(scope: !311, file: !123, discriminator: 1)
!317 = !DILocation(line: 173, column: 32, scope: !316)
!318 = !DILocation(line: 173, column: 37, scope: !316)
!319 = !DILocation(line: 173, column: 6, scope: !316)
!320 = !DILocation(line: 174, column: 10, scope: !311)
!321 = !DILocation(line: 174, column: 39, scope: !311)
!322 = !DILocation(line: 174, column: 45, scope: !311)
!323 = !DILocation(line: 174, column: 3, scope: !316)
!324 = !DILocation(line: 174, column: 3, scope: !311)
!325 = !DILocation(line: 176, column: 19, scope: !254)
!326 = !DILocation(line: 176, column: 2, scope: !254)
!327 = !DILocation(line: 177, column: 1, scope: !254)
!328 = distinct !DISubprogram(name: "pkg_infodb_link_multiarch_files", scope: !123, file: !123, line: 73, type: !136, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!329 = !DILocalVariable(name: "db_dir", scope: !328, file: !123, line: 75, type: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !332, line: 127, baseType: !333)
!332 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !332, line: 127, flags: DIFlagFwdDecl)
!334 = !DILocation(line: 75, column: 7, scope: !328)
!335 = !DILocalVariable(name: "db_de", scope: !328, file: !123, line: 76, type: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !338, line: 22, size: 2240, align: 64, elements: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!339 = !{!340, !342, !343, !344, !346}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !337, file: !338, line: 25, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !199, line: 127, baseType: !221)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !337, file: !338, line: 26, baseType: !198, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !337, file: !338, line: 31, baseType: !202, size: 16, align: 16, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !337, file: !338, line: 32, baseType: !345, size: 8, align: 8, offset: 144)
!345 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !337, file: !338, line: 33, baseType: !347, size: 2048, align: 8, offset: 152)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 2048, align: 8, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 256)
!350 = !DILocation(line: 76, column: 17, scope: !328)
!351 = !DILocalVariable(name: "pkgname", scope: !328, file: !123, line: 77, type: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !353, line: 55, size: 192, align: 64, elements: !354)
!353 = !DIFile(filename: "../../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!354 = !{!355, !356, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !352, file: !353, line: 56, baseType: !219, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !352, file: !353, line: 56, baseType: !219, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !352, file: !353, line: 57, baseType: !129, size: 64, align: 64, offset: 128)
!358 = !DILocation(line: 77, column: 16, scope: !328)
!359 = !DILocalVariable(name: "oldname", scope: !328, file: !123, line: 78, type: !352)
!360 = !DILocation(line: 78, column: 16, scope: !328)
!361 = !DILocalVariable(name: "newname", scope: !328, file: !123, line: 79, type: !352)
!362 = !DILocation(line: 79, column: 16, scope: !328)
!363 = !DILocalVariable(name: "db_path_state", scope: !328, file: !123, line: 80, type: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf_state", file: !353, line: 96, size: 64, align: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !364, file: !353, line: 97, baseType: !219, size: 64, align: 64)
!367 = !DILocation(line: 80, column: 22, scope: !328)
!368 = !DILocation(line: 82, column: 27, scope: !328)
!369 = !DILocation(line: 82, column: 56, scope: !370)
!370 = !DILexicalBlockFile(scope: !328, file: !123, discriminator: 1)
!371 = !DILocation(line: 82, column: 49, scope: !372)
!372 = !DILexicalBlockFile(scope: !328, file: !123, discriminator: 2)
!373 = !DILocation(line: 82, column: 2, scope: !374)
!374 = !DILexicalBlockFile(scope: !328, file: !123, discriminator: 3)
!375 = !DILocation(line: 83, column: 2, scope: !328)
!376 = !DILocation(line: 84, column: 2, scope: !328)
!377 = !DILocation(line: 85, column: 2, scope: !328)
!378 = !DILocation(line: 87, column: 35, scope: !328)
!379 = !DILocation(line: 87, column: 48, scope: !328)
!380 = !DILocation(line: 87, column: 2, scope: !328)
!381 = !DILocation(line: 88, column: 2, scope: !328)
!382 = !DILocation(line: 90, column: 27, scope: !328)
!383 = !DILocation(line: 90, column: 11, scope: !328)
!384 = !DILocation(line: 90, column: 9, scope: !328)
!385 = !DILocation(line: 91, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !328, file: !123, line: 91, column: 6)
!387 = !DILocation(line: 91, column: 6, scope: !328)
!388 = !DILocation(line: 92, column: 10, scope: !386)
!389 = !DILocation(line: 92, column: 3, scope: !390)
!390 = !DILexicalBlockFile(scope: !386, file: !123, discriminator: 1)
!391 = !DILocation(line: 92, column: 3, scope: !386)
!392 = !DILocation(line: 94, column: 43, scope: !328)
!393 = !DILocation(line: 94, column: 35, scope: !328)
!394 = !DILocation(line: 94, column: 2, scope: !328)
!395 = !DILocation(line: 95, column: 2, scope: !328)
!396 = !DILocation(line: 95, column: 26, scope: !370)
!397 = !DILocation(line: 95, column: 18, scope: !370)
!398 = !DILocation(line: 95, column: 16, scope: !370)
!399 = !DILocation(line: 95, column: 35, scope: !370)
!400 = !DILocation(line: 95, column: 2, scope: !370)
!401 = !DILocalVariable(name: "filetype", scope: !402, file: !123, line: 96, type: !403)
!402 = distinct !DILexicalBlock(scope: !328, file: !123, line: 95, column: 43)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!405 = !DILocation(line: 96, column: 15, scope: !402)
!406 = !DILocalVariable(name: "dot", scope: !402, file: !123, line: 96, type: !403)
!407 = !DILocation(line: 96, column: 26, scope: !402)
!408 = !DILocalVariable(name: "pkg", scope: !402, file: !123, line: 97, type: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkginfo", file: !11, line: 195, size: 3072, align: 64, elements: !411)
!411 = !{!412, !460, !461, !462, !463, !464, !465, !466, !467, !468, !498, !499, !502, !511, !527, !528, !534, !588, !590, !591}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !410, file: !11, line: 196, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgset", file: !11, line: 242, size: 3392, align: 64, elements: !415)
!415 = !{!416, !417, !418, !419, !459}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !11, line: 243, baseType: !413, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !11, line: 244, baseType: !403, size: 64, align: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !414, file: !11, line: 245, baseType: !410, size: 3072, align: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "depended", scope: !414, file: !11, line: 249, baseType: !420, size: 128, align: 64, offset: 3200)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !11, line: 246, size: 128, align: 64, elements: !421)
!421 = !{!422, !458}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !420, file: !11, line: 247, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deppossi", file: !11, line: 63, size: 640, align: 64, elements: !425)
!425 = !{!426, !434, !435, !436, !437, !438, !447, !454, !455, !457}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !424, file: !11, line: 64, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dependency", file: !11, line: 56, size: 256, align: 64, elements: !429)
!429 = !{!430, !431, !432, !433}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !428, file: !11, line: 57, baseType: !409, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !11, line: 58, baseType: !427, size: 64, align: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !428, file: !11, line: 59, baseType: !423, size: 64, align: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !11, line: 60, baseType: !31, size: 32, align: 32, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ed", scope: !424, file: !11, line: 65, baseType: !413, size: 64, align: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !11, line: 66, baseType: !423, size: 64, align: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rev_next", scope: !424, file: !11, line: 66, baseType: !423, size: 64, align: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rev_prev", scope: !424, file: !11, line: 66, baseType: !423, size: 64, align: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !424, file: !11, line: 67, baseType: !439, size: 64, align: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_arch", file: !43, line: 48, size: 192, align: 64, elements: !442)
!442 = !{!443, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !43, line: 49, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !441, file: !43, line: 50, baseType: !403, size: 64, align: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !43, line: 51, baseType: !42, size: 32, align: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !424, file: !11, line: 68, baseType: !448, size: 192, align: 64, offset: 384)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_version", file: !54, line: 42, size: 192, align: 64, elements: !449)
!449 = !{!450, !452, !453}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !448, file: !54, line: 44, baseType: !451, size: 32, align: 32)
!451 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !448, file: !54, line: 46, baseType: !403, size: 64, align: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !448, file: !54, line: 48, baseType: !403, size: 64, align: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "verrel", scope: !424, file: !11, line: 69, baseType: !53, size: 32, align: 32, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arch_is_implicit", scope: !424, file: !11, line: 70, baseType: !456, size: 8, align: 8, offset: 608)
!456 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "cyclebreak", scope: !424, file: !11, line: 71, baseType: !456, size: 8, align: 8, offset: 616)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !420, file: !11, line: 248, baseType: !423, size: 64, align: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "installed_instances", scope: !414, file: !11, line: 250, baseType: !174, size: 32, align: 32, offset: 3328)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arch_next", scope: !410, file: !11, line: 197, baseType: !409, size: 64, align: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "want", scope: !410, file: !11, line: 199, baseType: !62, size: 32, align: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !410, file: !11, line: 201, baseType: !70, size: 32, align: 32, offset: 160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !410, file: !11, line: 202, baseType: !74, size: 32, align: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !410, file: !11, line: 203, baseType: !84, size: 32, align: 32, offset: 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "otherpriority", scope: !410, file: !11, line: 204, baseType: !403, size: 64, align: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !410, file: !11, line: 205, baseType: !403, size: 64, align: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "configversion", scope: !410, file: !11, line: 206, baseType: !448, size: 192, align: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !410, file: !11, line: 207, baseType: !469, size: 960, align: 64, offset: 576)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pkgbin", file: !11, line: 107, size: 960, align: 64, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !491}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "depends", scope: !469, file: !11, line: 108, baseType: !427, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "essential", scope: !469, file: !11, line: 110, baseType: !456, size: 8, align: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "multiarch", scope: !469, file: !11, line: 111, baseType: !94, size: 32, align: 32, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !469, file: !11, line: 112, baseType: !439, size: 64, align: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pkgname_archqual", scope: !469, file: !11, line: 115, baseType: !403, size: 64, align: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !469, file: !11, line: 116, baseType: !403, size: 64, align: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "maintainer", scope: !469, file: !11, line: 117, baseType: !403, size: 64, align: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !469, file: !11, line: 118, baseType: !403, size: 64, align: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "installedsize", scope: !469, file: !11, line: 119, baseType: !403, size: 64, align: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !469, file: !11, line: 120, baseType: !403, size: 64, align: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "bugs", scope: !469, file: !11, line: 121, baseType: !403, size: 64, align: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !469, file: !11, line: 122, baseType: !448, size: 192, align: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "conffiles", scope: !469, file: !11, line: 123, baseType: !484, size: 64, align: 64, offset: 832)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conffile", file: !11, line: 80, size: 256, align: 64, elements: !486)
!486 = !{!487, !488, !489, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !11, line: 81, baseType: !484, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !11, line: 82, baseType: !403, size: 64, align: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !485, file: !11, line: 83, baseType: !403, size: 64, align: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "obsolete", scope: !485, file: !11, line: 84, baseType: !456, size: 8, align: 8, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "arbs", scope: !469, file: !11, line: 124, baseType: !492, size: 64, align: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arbitraryfield", file: !11, line: 74, size: 192, align: 64, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !11, line: 75, baseType: !492, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !11, line: 76, baseType: !403, size: 64, align: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !493, file: !11, line: 77, baseType: !403, size: 64, align: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !410, file: !11, line: 208, baseType: !469, size: 960, align: 64, offset: 1536)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "clientdata", scope: !410, file: !11, line: 209, baseType: !500, size: 64, align: 64, offset: 2496)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "perpackagestate", file: !11, line: 151, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "archives", scope: !410, file: !11, line: 211, baseType: !503, size: 64, align: 64, offset: 2560)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archivedetails", file: !11, line: 87, size: 320, align: 64, elements: !505)
!505 = !{!506, !507, !508, !509, !510}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !11, line: 88, baseType: !503, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !11, line: 89, baseType: !403, size: 64, align: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "msdosname", scope: !504, file: !11, line: 90, baseType: !403, size: 64, align: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !11, line: 91, baseType: !403, size: 64, align: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "md5sum", scope: !504, file: !11, line: 92, baseType: !403, size: 64, align: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "trigaw", scope: !410, file: !11, line: 216, baseType: !512, size: 128, align: 64, offset: 2624)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !11, line: 213, size: 128, align: 64, elements: !513)
!513 = !{!514, !526}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !512, file: !11, line: 215, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigaw", file: !11, line: 142, size: 320, align: 64, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "aw", scope: !516, file: !11, line: 143, baseType: !409, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pend", scope: !516, file: !11, line: 143, baseType: !409, size: 64, align: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "samepend_next", scope: !516, file: !11, line: 144, baseType: !515, size: 64, align: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sameaw", scope: !516, file: !11, line: 147, baseType: !522, size: 128, align: 64, offset: 192)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !516, file: !11, line: 145, size: 128, align: 64, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !522, file: !11, line: 146, baseType: !515, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !522, file: !11, line: 146, baseType: !515, size: 64, align: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !512, file: !11, line: 215, baseType: !515, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "othertrigaw_head", scope: !410, file: !11, line: 219, baseType: !515, size: 64, align: 64, offset: 2752)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "trigpend_head", scope: !410, file: !11, line: 220, baseType: !529, size: 64, align: 64, offset: 2816)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trigpend", file: !11, line: 134, size: 128, align: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !11, line: 135, baseType: !529, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !11, line: 136, baseType: !403, size: 64, align: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !410, file: !11, line: 231, baseType: !535, size: 64, align: 64, offset: 2880)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode_list", file: !101, line: 122, size: 128, align: 64, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !101, line: 123, baseType: !535, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "namenode", scope: !536, file: !101, line: 124, baseType: !540, size: 64, align: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_namenode", file: !101, line: 90, size: 640, align: 64, elements: !542)
!542 = !{!543, !544, !545, !548, !556, !573, !576, !577, !578, !579}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !101, line: 91, baseType: !540, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !101, line: 92, baseType: !403, size: 64, align: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "packages", scope: !541, file: !101, line: 93, baseType: !546, size: 64, align: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "pkg_list", file: !101, line: 93, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "divert", scope: !541, file: !101, line: 94, baseType: !549, size: 64, align: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsys_diversion", file: !101, line: 151, size: 256, align: 64, elements: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "useinstead", scope: !550, file: !101, line: 152, baseType: !540, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "camefrom", scope: !550, file: !101, line: 153, baseType: !540, size: 64, align: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pkgset", scope: !550, file: !101, line: 154, baseType: !413, size: 64, align: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !101, line: 157, baseType: !549, size: 64, align: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "statoverride", scope: !541, file: !101, line: 101, baseType: !557, size: 64, align: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !559, line: 40, size: 256, align: 64, elements: !560)
!559 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!560 = !{!561, !565, !568, !571, !572}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !558, file: !559, line: 41, baseType: !562, size: 32, align: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !563, line: 80, baseType: !564)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !199, line: 125, baseType: !451)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !558, file: !559, line: 42, baseType: !566, size: 32, align: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !563, line: 65, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !199, line: 126, baseType: !451)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !558, file: !559, line: 43, baseType: !569, size: 32, align: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !563, line: 70, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !199, line: 129, baseType: !451)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !558, file: !559, line: 47, baseType: !129, size: 64, align: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !558, file: !559, line: 48, baseType: !129, size: 64, align: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "trig_interested", scope: !541, file: !101, line: 103, baseType: !574, size: 64, align: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "trigfileint", file: !101, line: 103, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !101, line: 111, baseType: !100, size: 32, align: 32, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "oldhash", scope: !541, file: !101, line: 114, baseType: !403, size: 64, align: 64, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "newhash", scope: !541, file: !101, line: 117, baseType: !403, size: 64, align: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "file_ondisk_id", scope: !541, file: !101, line: 119, baseType: !580, size: 64, align: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ondisk_id", file: !101, line: 85, size: 128, align: 64, elements: !582)
!582 = !{!583, !586}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "id_dev", scope: !581, file: !101, line: 86, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !563, line: 60, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !199, line: 124, baseType: !221)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "id_ino", scope: !581, file: !101, line: 87, baseType: !587, size: 64, align: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !563, line: 48, baseType: !341)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_phys_offs", scope: !410, file: !11, line: 232, baseType: !589, size: 64, align: 64, offset: 2944)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !563, line: 86, baseType: !198)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "files_list_valid", scope: !410, file: !11, line: 233, baseType: !456, size: 8, align: 8, offset: 3008)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "status_dirty", scope: !410, file: !11, line: 236, baseType: !456, size: 8, align: 8, offset: 3016)
!592 = !DILocation(line: 97, column: 19, scope: !402)
!593 = !DILocalVariable(name: "set", scope: !402, file: !123, line: 98, type: !413)
!594 = !DILocation(line: 98, column: 18, scope: !402)
!595 = !DILocation(line: 101, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !402, file: !123, line: 101, column: 7)
!597 = !DILocation(line: 101, column: 14, scope: !596)
!598 = !DILocation(line: 101, column: 24, scope: !596)
!599 = !DILocation(line: 101, column: 7, scope: !402)
!600 = !DILocation(line: 102, column: 4, scope: !596)
!601 = distinct !{!601, !395}
!602 = !DILocation(line: 105, column: 17, scope: !402)
!603 = !DILocation(line: 105, column: 24, scope: !402)
!604 = !DILocation(line: 105, column: 9, scope: !402)
!605 = !DILocation(line: 105, column: 7, scope: !402)
!606 = !DILocation(line: 106, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !402, file: !123, line: 106, column: 7)
!608 = !DILocation(line: 106, column: 11, scope: !607)
!609 = !DILocation(line: 106, column: 7, scope: !402)
!610 = !DILocation(line: 107, column: 4, scope: !607)
!611 = !DILocation(line: 109, column: 3, scope: !402)
!612 = !DILocation(line: 110, column: 28, scope: !402)
!613 = !DILocation(line: 110, column: 35, scope: !402)
!614 = !DILocation(line: 110, column: 43, scope: !402)
!615 = !DILocation(line: 110, column: 49, scope: !402)
!616 = !DILocation(line: 110, column: 56, scope: !402)
!617 = !DILocation(line: 110, column: 47, scope: !402)
!618 = !DILocation(line: 110, column: 3, scope: !402)
!619 = !DILocation(line: 111, column: 3, scope: !402)
!620 = !DILocation(line: 114, column: 22, scope: !621)
!621 = distinct !DILexicalBlock(scope: !402, file: !123, line: 114, column: 7)
!622 = !DILocation(line: 114, column: 7, scope: !621)
!623 = !DILocation(line: 114, column: 7, scope: !402)
!624 = !DILocation(line: 115, column: 4, scope: !621)
!625 = !DILocation(line: 117, column: 35, scope: !402)
!626 = !DILocation(line: 117, column: 9, scope: !402)
!627 = !DILocation(line: 117, column: 7, scope: !402)
!628 = !DILocation(line: 118, column: 15, scope: !629)
!629 = distinct !DILexicalBlock(scope: !402, file: !123, line: 118, column: 3)
!630 = !DILocation(line: 118, column: 20, scope: !629)
!631 = !DILocation(line: 118, column: 12, scope: !629)
!632 = !DILocation(line: 118, column: 8, scope: !629)
!633 = !DILocation(line: 118, column: 25, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !123, discriminator: 1)
!635 = distinct !DILexicalBlock(scope: !629, file: !123, line: 118, column: 3)
!636 = !DILocation(line: 118, column: 3, scope: !634)
!637 = !DILocation(line: 119, column: 8, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !123, line: 119, column: 8)
!639 = !DILocation(line: 119, column: 13, scope: !638)
!640 = !DILocation(line: 119, column: 20, scope: !638)
!641 = !DILocation(line: 119, column: 8, scope: !635)
!642 = !DILocation(line: 120, column: 5, scope: !638)
!643 = !DILocation(line: 119, column: 23, scope: !644)
!644 = !DILexicalBlockFile(scope: !638, file: !123, discriminator: 1)
!645 = !DILocation(line: 118, column: 36, scope: !646)
!646 = !DILexicalBlockFile(scope: !635, file: !123, discriminator: 2)
!647 = !DILocation(line: 118, column: 41, scope: !646)
!648 = !DILocation(line: 118, column: 34, scope: !646)
!649 = !DILocation(line: 118, column: 3, scope: !646)
!650 = distinct !{!650, !651}
!651 = !DILocation(line: 118, column: 3, scope: !402)
!652 = !DILocation(line: 121, column: 8, scope: !653)
!653 = distinct !DILexicalBlock(scope: !402, file: !123, line: 121, column: 7)
!654 = !DILocation(line: 121, column: 7, scope: !402)
!655 = !DILocation(line: 122, column: 11, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !123, line: 121, column: 13)
!657 = !DILocation(line: 123, column: 12, scope: !656)
!658 = !DILocation(line: 123, column: 34, scope: !656)
!659 = !DILocation(line: 123, column: 41, scope: !656)
!660 = !DILocation(line: 122, column: 4, scope: !661)
!661 = !DILexicalBlockFile(scope: !656, file: !123, discriminator: 1)
!662 = !DILocation(line: 124, column: 4, scope: !656)
!663 = !DILocation(line: 128, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !402, file: !123, line: 128, column: 7)
!665 = !DILocation(line: 128, column: 12, scope: !664)
!666 = !DILocation(line: 128, column: 22, scope: !664)
!667 = !DILocation(line: 128, column: 32, scope: !664)
!668 = !DILocation(line: 128, column: 7, scope: !402)
!669 = !DILocation(line: 129, column: 4, scope: !664)
!670 = !DILocation(line: 132, column: 14, scope: !402)
!671 = !DILocation(line: 132, column: 18, scope: !402)
!672 = !DILocation(line: 132, column: 12, scope: !402)
!673 = !DILocation(line: 134, column: 3, scope: !402)
!674 = !DILocation(line: 135, column: 28, scope: !402)
!675 = !DILocation(line: 135, column: 35, scope: !402)
!676 = !DILocation(line: 135, column: 50, scope: !402)
!677 = !DILocation(line: 135, column: 57, scope: !402)
!678 = !DILocation(line: 135, column: 43, scope: !402)
!679 = !DILocation(line: 135, column: 3, scope: !680)
!680 = !DILexicalBlockFile(scope: !402, file: !123, discriminator: 1)
!681 = !DILocation(line: 136, column: 3, scope: !402)
!682 = !DILocation(line: 138, column: 3, scope: !402)
!683 = !DILocation(line: 139, column: 36, scope: !402)
!684 = !DILocation(line: 139, column: 42, scope: !402)
!685 = !DILocation(line: 139, column: 47, scope: !402)
!686 = !DILocation(line: 139, column: 3, scope: !402)
!687 = !DILocation(line: 140, column: 3, scope: !402)
!688 = !DILocation(line: 141, column: 28, scope: !402)
!689 = !DILocation(line: 141, column: 45, scope: !402)
!690 = !DILocation(line: 141, column: 38, scope: !402)
!691 = !DILocation(line: 141, column: 3, scope: !680)
!692 = !DILocation(line: 142, column: 3, scope: !402)
!693 = !DILocation(line: 144, column: 20, scope: !694)
!694 = distinct !DILexicalBlock(scope: !402, file: !123, line: 144, column: 7)
!695 = !DILocation(line: 144, column: 33, scope: !694)
!696 = !DILocation(line: 144, column: 7, scope: !694)
!697 = !DILocation(line: 144, column: 38, scope: !694)
!698 = !DILocation(line: 144, column: 42, scope: !699)
!699 = !DILexicalBlockFile(scope: !694, file: !123, discriminator: 1)
!700 = !DILocation(line: 144, column: 41, scope: !699)
!701 = !DILocation(line: 144, column: 46, scope: !699)
!702 = !DILocation(line: 144, column: 7, scope: !699)
!703 = !DILocation(line: 145, column: 11, scope: !694)
!704 = !DILocation(line: 146, column: 20, scope: !694)
!705 = !DILocation(line: 145, column: 4, scope: !699)
!706 = !DILocation(line: 145, column: 4, scope: !694)
!707 = !DILocation(line: 147, column: 41, scope: !402)
!708 = !DILocation(line: 147, column: 54, scope: !402)
!709 = !DILocation(line: 147, column: 59, scope: !402)
!710 = !DILocation(line: 147, column: 17, scope: !402)
!711 = !DILocation(line: 147, column: 15, scope: !402)
!712 = !DILocation(line: 95, column: 2, scope: !372)
!713 = !DILocation(line: 149, column: 2, scope: !328)
!714 = !DILocation(line: 151, column: 2, scope: !328)
!715 = !DILocation(line: 152, column: 2, scope: !328)
!716 = !DILocation(line: 153, column: 2, scope: !328)
!717 = !DILocation(line: 154, column: 1, scope: !328)
!718 = distinct !DISubprogram(name: "pkg_infodb_write_format", scope: !123, file: !123, line: 180, type: !719, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !160, !174}
!721 = !DILocalVariable(name: "file", arg: 1, scope: !718, file: !123, line: 180, type: !160)
!722 = !DILocation(line: 180, column: 45, scope: !718)
!723 = !DILocalVariable(name: "version", arg: 2, scope: !718, file: !123, line: 180, type: !174)
!724 = !DILocation(line: 180, column: 55, scope: !718)
!725 = !DILocation(line: 182, column: 14, scope: !726)
!726 = distinct !DILexicalBlock(scope: !718, file: !123, line: 182, column: 6)
!727 = !DILocation(line: 182, column: 20, scope: !726)
!728 = !DILocation(line: 182, column: 32, scope: !726)
!729 = !DILocation(line: 182, column: 6, scope: !726)
!730 = !DILocation(line: 182, column: 41, scope: !726)
!731 = !DILocation(line: 182, column: 6, scope: !718)
!732 = !DILocation(line: 183, column: 10, scope: !726)
!733 = !DILocation(line: 183, column: 41, scope: !726)
!734 = !DILocation(line: 183, column: 47, scope: !726)
!735 = !DILocation(line: 183, column: 3, scope: !736)
!736 = !DILexicalBlockFile(scope: !726, file: !123, discriminator: 1)
!737 = !DILocation(line: 183, column: 3, scope: !726)
!738 = !DILocation(line: 185, column: 19, scope: !718)
!739 = !DILocation(line: 185, column: 2, scope: !718)
!740 = !DILocation(line: 186, column: 20, scope: !718)
!741 = !DILocation(line: 186, column: 2, scope: !718)
!742 = !DILocation(line: 187, column: 23, scope: !718)
!743 = !DILocation(line: 187, column: 29, scope: !718)
!744 = !DILocation(line: 187, column: 2, scope: !718)
!745 = !DILocation(line: 189, column: 24, scope: !718)
!746 = !DILocation(line: 189, column: 2, scope: !718)
!747 = !DILocation(line: 190, column: 1, scope: !718)
!748 = distinct !DISubprogram(name: "pkg_infodb_unlink_monoarch_files", scope: !123, file: !123, line: 193, type: !136, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!749 = !DILocalVariable(name: "next", scope: !748, file: !123, line: 195, type: !124)
!750 = !DILocation(line: 195, column: 22, scope: !748)
!751 = !DILocation(line: 197, column: 2, scope: !748)
!752 = !DILocation(line: 197, column: 9, scope: !753)
!753 = !DILexicalBlockFile(scope: !748, file: !123, discriminator: 1)
!754 = !DILocation(line: 197, column: 2, scope: !753)
!755 = !DILocation(line: 198, column: 10, scope: !756)
!756 = distinct !DILexicalBlock(scope: !748, file: !123, line: 197, column: 22)
!757 = !DILocation(line: 198, column: 23, scope: !756)
!758 = !DILocation(line: 198, column: 8, scope: !756)
!759 = !DILocation(line: 199, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !123, line: 199, column: 7)
!761 = !DILocation(line: 199, column: 27, scope: !760)
!762 = !DILocation(line: 199, column: 7, scope: !760)
!763 = !DILocation(line: 199, column: 7, scope: !756)
!764 = !DILocation(line: 200, column: 11, scope: !760)
!765 = !DILocation(line: 200, column: 40, scope: !760)
!766 = !DILocation(line: 200, column: 53, scope: !760)
!767 = !DILocation(line: 200, column: 4, scope: !768)
!768 = !DILexicalBlockFile(scope: !760, file: !123, discriminator: 1)
!769 = !DILocation(line: 200, column: 4, scope: !760)
!770 = !DILocation(line: 201, column: 20, scope: !756)
!771 = !DILocation(line: 201, column: 3, scope: !756)
!772 = !DILocation(line: 202, column: 17, scope: !756)
!773 = !DILocation(line: 202, column: 15, scope: !756)
!774 = !DILocation(line: 197, column: 2, scope: !775)
!775 = !DILexicalBlockFile(scope: !748, file: !123, discriminator: 2)
!776 = distinct !{!776, !751}
!777 = !DILocation(line: 204, column: 1, scope: !748)
!778 = distinct !DISubprogram(name: "rename_node_free", scope: !123, file: !123, line: 65, type: !779, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !124}
!781 = !DILocalVariable(name: "node", arg: 1, scope: !778, file: !123, line: 65, type: !124)
!782 = !DILocation(line: 65, column: 38, scope: !778)
!783 = !DILocation(line: 67, column: 7, scope: !778)
!784 = !DILocation(line: 67, column: 13, scope: !778)
!785 = !DILocation(line: 67, column: 2, scope: !778)
!786 = !DILocation(line: 68, column: 7, scope: !778)
!787 = !DILocation(line: 68, column: 13, scope: !778)
!788 = !DILocation(line: 68, column: 2, scope: !778)
!789 = !DILocation(line: 69, column: 7, scope: !778)
!790 = !DILocation(line: 69, column: 2, scope: !778)
!791 = !DILocation(line: 70, column: 1, scope: !778)
!792 = distinct !DISubprogram(name: "rename_node_new", scope: !123, file: !123, line: 52, type: !793, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !138)
!793 = !DISubroutineType(types: !794)
!794 = !{!124, !403, !403, !124}
!795 = !DILocalVariable(name: "old", arg: 1, scope: !792, file: !123, line: 52, type: !403)
!796 = !DILocation(line: 52, column: 29, scope: !792)
!797 = !DILocalVariable(name: "new", arg: 2, scope: !792, file: !123, line: 52, type: !403)
!798 = !DILocation(line: 52, column: 46, scope: !792)
!799 = !DILocalVariable(name: "next", arg: 3, scope: !792, file: !123, line: 52, type: !124)
!800 = !DILocation(line: 52, column: 71, scope: !792)
!801 = !DILocalVariable(name: "node", scope: !792, file: !123, line: 54, type: !124)
!802 = !DILocation(line: 54, column: 22, scope: !792)
!803 = !DILocation(line: 56, column: 9, scope: !792)
!804 = !DILocation(line: 56, column: 7, scope: !792)
!805 = !DILocation(line: 57, column: 15, scope: !792)
!806 = !DILocation(line: 57, column: 2, scope: !792)
!807 = !DILocation(line: 57, column: 8, scope: !792)
!808 = !DILocation(line: 57, column: 13, scope: !792)
!809 = !DILocation(line: 58, column: 23, scope: !792)
!810 = !DILocation(line: 58, column: 14, scope: !792)
!811 = !DILocation(line: 58, column: 2, scope: !792)
!812 = !DILocation(line: 58, column: 8, scope: !792)
!813 = !DILocation(line: 58, column: 12, scope: !792)
!814 = !DILocation(line: 59, column: 23, scope: !792)
!815 = !DILocation(line: 59, column: 14, scope: !792)
!816 = !DILocation(line: 59, column: 2, scope: !792)
!817 = !DILocation(line: 59, column: 8, scope: !792)
!818 = !DILocation(line: 59, column: 12, scope: !792)
!819 = !DILocation(line: 61, column: 9, scope: !792)
!820 = !DILocation(line: 61, column: 2, scope: !792)
