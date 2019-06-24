; ModuleID = './[inter]src--force.o.i'
source_filename = "./[inter]src--force.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.forceinfo = type { i8*, i32, i8, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.varbuf = type { i64, i64, i8* }
%struct.cmdinfo = type { i8*, i8, i32, i32*, i8**, {}*, i32, i8*, i32 (i8**)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@force_flags = internal global i32 0, align 4
@forceinfos = internal constant [29 x %struct.forceinfo] [%struct.forceinfo { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 -1, i8 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 67108864, i8 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 16384, i8 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1024, i8 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 32768, i8 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 65536, i8 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 2, i8 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 4, i8 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 8, i8 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i32 16777216, i8 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i32 33554432, i8 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 131072, i8 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i32 524288, i8 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.34, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 262144, i8 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 8388608, i8 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i32 4194304, i8 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 256, i8 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 512, i8 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 64, i8 2, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.46, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 128, i8 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 32, i8 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 1, i8 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.52, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 16, i8 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 2048, i8 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 4096, i8 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.58, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i32 8192, i8 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i32 2097152, i8 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.62, i32 0, i32 0) }, %struct.forceinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i32 1048576, i8 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0) }, %struct.forceinfo zeroinitializer], align 16
@force_mask = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [204 x i8] c"%s forcing options - control behaviour when problems found:\0A  warn but continue:  --force-<thing>,<thing>,...\0A  stop with error:    --refuse-<thing>,<thing>,... | --no-force-<thing>,...\0A Forcing things:\0A\00", align 1
@.str.2 = private unnamed_addr constant [129 x i8] c"\0AWARNING - use of options marked [!] can seriously damage your installation.\0AForcing options marked [*] are enabled by default.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"<standard output>\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0ACurrently enabled options:\0A %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"unknown force/refuse option '%.*s'\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"obsolete force/refuse option '%s'\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DPKG_FORCE\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"overriding problem because --force enabled:\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Set all force options\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"security-mac\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Use MAC based security if available\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"downgrade\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Replace a package with a lower version\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"configure-any\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Configure any package which may help this one\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hold\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Process incidental packages even when on hold\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"not-root\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Try to (de)install things even when not root\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"bad-path\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"PATH is missing important programs, problems likely\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"bad-verify\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"Install a package even if it fails authenticity check\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"bad-version\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Process even packages with wrong versions\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"statoverride-add\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"Overwrite an existing stat override when adding it\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"statoverride-remove\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Ignore a missing stat override when removing it\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"Overwrite a file from one package with another\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"overwrite-diverted\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"Overwrite a diverted file with an undiverted version\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"overwrite-dir\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"Overwrite one package's directory with another's file\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"unsafe-io\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"Do not perform safe I/O operations when unpacking\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"script-chrootless\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"Do not chroot into maintainer script environment\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"confnew\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"Always use the new config files, don't prompt\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"confold\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"Always use the old config files, don't prompt\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"confdef\00", align 1
@.str.46 = private unnamed_addr constant [187 x i8] c"Use the default option for new config files if one\0Ais available, don't prompt. If no default can be found,\0Ayou will be prompted unless one of the confold or\0Aconfnew options is also given\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"confmiss\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"Always install missing config files\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"confask\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"Offer to replace config files with no new versions\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"architecture\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"Process even packages with wrong or no architecture\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"breaks\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c"Install even if it would break another package\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"conflicts\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"Allow installation of conflicting packages\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"depends\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"Turn all dependency problems into warnings\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"depends-version\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"Turn dependency version problems into warnings\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"remove-reinstreq\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"Remove packages which require installation\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"remove-essential\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"Remove an essential package\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.66 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"  %s %-18s %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"[*]\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"[!]\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"force.c\00", align 1
@__func__.forcetype_str = private unnamed_addr constant [14 x i8] c"forcetype_str\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"unknown force type '%d'\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @in_force(i32) #0 !dbg !66 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !71, metadata !72), !dbg !73
  %3 = load i32, i32* %2, align 4, !dbg !74
  %4 = load i32, i32* @force_flags, align 4, !dbg !75
  %5 = and i32 %3, %4, !dbg !76
  %6 = load i32, i32* %2, align 4, !dbg !77
  %7 = icmp eq i32 %5, %6, !dbg !78
  ret i1 %7, !dbg !79
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @set_force(i32) #0 !dbg !80 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !83, metadata !72), !dbg !84
  %3 = load i32, i32* %2, align 4, !dbg !85
  %4 = load i32, i32* @force_flags, align 4, !dbg !86
  %5 = or i32 %4, %3, !dbg !86
  store i32 %5, i32* @force_flags, align 4, !dbg !86
  ret void, !dbg !87
}

; Function Attrs: nounwind uwtable
define void @reset_force(i32) #0 !dbg !88 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !89, metadata !72), !dbg !90
  %3 = load i32, i32* %2, align 4, !dbg !91
  %4 = xor i32 %3, -1, !dbg !92
  %5 = load i32, i32* @force_flags, align 4, !dbg !93
  %6 = and i32 %5, %4, !dbg !93
  store i32 %6, i32* @force_flags, align 4, !dbg !93
  ret void, !dbg !94
}

; Function Attrs: nounwind uwtable
define i8* @get_force_string() #0 !dbg !95 {
  %1 = alloca %struct.forceinfo*, align 8
  %2 = alloca %struct.varbuf, align 8
  call void @llvm.dbg.declare(metadata %struct.forceinfo** %1, metadata !99, metadata !72), !dbg !101
  call void @llvm.dbg.declare(metadata %struct.varbuf* %2, metadata !102, metadata !72), !dbg !109
  %3 = bitcast %struct.varbuf* %2 to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false), !dbg !109
  store %struct.forceinfo* getelementptr inbounds ([29 x %struct.forceinfo], [29 x %struct.forceinfo]* @forceinfos, i32 0, i32 0), %struct.forceinfo** %1, align 8, !dbg !110
  br label %4, !dbg !112

; <label>:4:                                      ; preds = %43, %0
  %5 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !113
  %6 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %5, i32 0, i32 0, !dbg !116
  %7 = load i8*, i8** %6, align 8, !dbg !116
  %8 = icmp ne i8* %7, null, !dbg !117
  br i1 %8, label %9, label %46, !dbg !117

; <label>:9:                                      ; preds = %4
  %10 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !118
  %11 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %10, i32 0, i32 1, !dbg !121
  %12 = load i32, i32* %11, align 8, !dbg !121
  %13 = icmp eq i32 %12, -1, !dbg !122
  br i1 %13, label %29, label %14, !dbg !123

; <label>:14:                                     ; preds = %9
  %15 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !124
  %16 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %15, i32 0, i32 1, !dbg !125
  %17 = load i32, i32* %16, align 8, !dbg !125
  %18 = load i32, i32* @force_mask, align 4, !dbg !126
  %19 = and i32 %17, %18, !dbg !127
  %20 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !128
  %21 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %20, i32 0, i32 1, !dbg !129
  %22 = load i32, i32* %21, align 8, !dbg !129
  %23 = icmp ne i32 %19, %22, !dbg !130
  br i1 %23, label %29, label %24, !dbg !131

; <label>:24:                                     ; preds = %14
  %25 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !132
  %26 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %25, i32 0, i32 1, !dbg !133
  %27 = load i32, i32* %26, align 8, !dbg !133
  %28 = call zeroext i1 @in_force(i32 %27), !dbg !134
  br i1 %28, label %30, label %29, !dbg !135

; <label>:29:                                     ; preds = %24, %14, %9
  br label %43, !dbg !137

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.varbuf, %struct.varbuf* %2, i32 0, i32 0, !dbg !138
  %32 = load i64, i64* %31, align 8, !dbg !138
  %33 = icmp ne i64 %32, 0, !dbg !140
  br i1 %33, label %34, label %35, !dbg !141

; <label>:34:                                     ; preds = %30
  call void @varbuf_add_char(%struct.varbuf* %2, i32 44), !dbg !142
  br label %35, !dbg !142

; <label>:35:                                     ; preds = %34, %30
  %36 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !143
  %37 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %36, i32 0, i32 0, !dbg !144
  %38 = load i8*, i8** %37, align 8, !dbg !144
  %39 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !145
  %40 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %39, i32 0, i32 0, !dbg !146
  %41 = load i8*, i8** %40, align 8, !dbg !146
  %42 = call i64 @strlen(i8* %41) #11, !dbg !147
  call void @varbuf_add_buf(%struct.varbuf* %2, i8* %38, i64 %42), !dbg !148
  br label %43, !dbg !149

; <label>:43:                                     ; preds = %35, %29
  %44 = load %struct.forceinfo*, %struct.forceinfo** %1, align 8, !dbg !150
  %45 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %44, i32 1, !dbg !150
  store %struct.forceinfo* %45, %struct.forceinfo** %1, align 8, !dbg !150
  br label %4, !dbg !152, !llvm.loop !153

; <label>:46:                                     ; preds = %4
  call void @varbuf_end_str(%struct.varbuf* %2), !dbg !155
  %47 = call i8* @varbuf_detach(%struct.varbuf* %2), !dbg !156
  ret i8* %47, !dbg !157
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @varbuf_add_char(%struct.varbuf*, i32) #3

declare void @varbuf_add_buf(%struct.varbuf*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @varbuf_end_str(%struct.varbuf*) #3

declare i8* @varbuf_detach(%struct.varbuf*) #3

; Function Attrs: nounwind uwtable
define void @parse_force(i8*, i1 zeroext) #0 !dbg !158 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.forceinfo*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !161, metadata !72), !dbg !162
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !163, metadata !72), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %5, metadata !165, metadata !72), !dbg !166
  call void @llvm.dbg.declare(metadata i64* %6, metadata !167, metadata !72), !dbg !168
  call void @llvm.dbg.declare(metadata %struct.forceinfo** %7, metadata !169, metadata !72), !dbg !170
  %9 = load i8*, i8** %3, align 8, !dbg !171
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #11, !dbg !173
  %11 = icmp eq i32 %10, 0, !dbg !174
  br i1 %11, label %12, label %50, !dbg !175

; <label>:12:                                     ; preds = %2
  %13 = call i8* @gettext(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !176
  %14 = call i8* @dpkg_get_progname(), !dbg !178
  %15 = call i32 (i8*, ...) @printf(i8* %13, i8* %14), !dbg !179
  store %struct.forceinfo* getelementptr inbounds ([29 x %struct.forceinfo], [29 x %struct.forceinfo]* @forceinfos, i32 0, i32 0), %struct.forceinfo** %7, align 8, !dbg !181
  br label %16, !dbg !183

; <label>:16:                                     ; preds = %39, %12
  %17 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !184
  %18 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %17, i32 0, i32 0, !dbg !187
  %19 = load i8*, i8** %18, align 8, !dbg !187
  %20 = icmp ne i8* %19, null, !dbg !188
  br i1 %20, label %21, label %42, !dbg !188

; <label>:21:                                     ; preds = %16
  %22 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !189
  %23 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %22, i32 0, i32 1, !dbg !191
  %24 = load i32, i32* %23, align 8, !dbg !191
  %25 = icmp eq i32 %24, -1, !dbg !192
  br i1 %25, label %36, label %26, !dbg !193

; <label>:26:                                     ; preds = %21
  %27 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !194
  %28 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %27, i32 0, i32 1, !dbg !195
  %29 = load i32, i32* %28, align 8, !dbg !195
  %30 = load i32, i32* @force_mask, align 4, !dbg !196
  %31 = and i32 %29, %30, !dbg !197
  %32 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !198
  %33 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %32, i32 0, i32 1, !dbg !199
  %34 = load i32, i32* %33, align 8, !dbg !199
  %35 = icmp eq i32 %31, %34, !dbg !200
  br i1 %35, label %36, label %38, !dbg !201

; <label>:36:                                     ; preds = %26, %21
  %37 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !202
  call void @print_forceinfo(%struct.forceinfo* %37), !dbg !203
  br label %38, !dbg !203

; <label>:38:                                     ; preds = %36, %26
  br label %39, !dbg !204

; <label>:39:                                     ; preds = %38
  %40 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !206
  %41 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %40, i32 1, !dbg !206
  store %struct.forceinfo* %41, %struct.forceinfo** %7, align 8, !dbg !206
  br label %16, !dbg !208, !llvm.loop !209

; <label>:42:                                     ; preds = %16
  %43 = call i8* @gettext(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !211
  %44 = call i32 (i8*, ...) @printf(i8* %43), !dbg !212
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !213
  %46 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !214
  call void @m_output(%struct._IO_FILE* %45, i8* %46), !dbg !215
  %47 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !216
  %48 = call i8* @get_force_string(), !dbg !217
  %49 = call i32 (i8*, ...) @printf(i8* %47, i8* %48), !dbg !218
  call void @exit(i32 0) #12, !dbg !219
  unreachable, !dbg !219

; <label>:50:                                     ; preds = %2
  br label %51, !dbg !220

; <label>:51:                                     ; preds = %129, %50
  %52 = load i8*, i8** %3, align 8, !dbg !221
  %53 = call i8* @strchrnul(i8* %52, i32 44) #11, !dbg !225
  store i8* %53, i8** %5, align 8, !dbg !226
  %54 = load i8*, i8** %5, align 8, !dbg !227
  %55 = load i8*, i8** %3, align 8, !dbg !228
  %56 = ptrtoint i8* %54 to i64, !dbg !229
  %57 = ptrtoint i8* %55 to i64, !dbg !229
  %58 = sub i64 %56, %57, !dbg !229
  store i64 %58, i64* %6, align 8, !dbg !230
  store %struct.forceinfo* getelementptr inbounds ([29 x %struct.forceinfo], [29 x %struct.forceinfo]* @forceinfos, i32 0, i32 0), %struct.forceinfo** %7, align 8, !dbg !231
  br label %59, !dbg !233

; <label>:59:                                     ; preds = %81, %51
  %60 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !234
  %61 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %60, i32 0, i32 0, !dbg !237
  %62 = load i8*, i8** %61, align 8, !dbg !237
  %63 = icmp ne i8* %62, null, !dbg !238
  br i1 %63, label %64, label %84, !dbg !238

; <label>:64:                                     ; preds = %59
  %65 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !239
  %66 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %65, i32 0, i32 0, !dbg !241
  %67 = load i8*, i8** %66, align 8, !dbg !241
  %68 = load i8*, i8** %3, align 8, !dbg !242
  %69 = load i64, i64* %6, align 8, !dbg !243
  %70 = call i32 @strncmp(i8* %67, i8* %68, i64 %69) #11, !dbg !244
  %71 = icmp eq i32 %70, 0, !dbg !245
  br i1 %71, label %72, label %80, !dbg !246

; <label>:72:                                     ; preds = %64
  %73 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !247
  %74 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %73, i32 0, i32 0, !dbg !248
  %75 = load i8*, i8** %74, align 8, !dbg !248
  %76 = call i64 @strlen(i8* %75) #11, !dbg !249
  %77 = load i64, i64* %6, align 8, !dbg !250
  %78 = icmp eq i64 %76, %77, !dbg !251
  br i1 %78, label %79, label %80, !dbg !252

; <label>:79:                                     ; preds = %72
  br label %84, !dbg !253

; <label>:80:                                     ; preds = %72, %64
  br label %81, !dbg !254

; <label>:81:                                     ; preds = %80
  %82 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !256
  %83 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %82, i32 1, !dbg !256
  store %struct.forceinfo* %83, %struct.forceinfo** %7, align 8, !dbg !256
  br label %59, !dbg !258, !llvm.loop !259

; <label>:84:                                     ; preds = %79, %59
  %85 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !261
  %86 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %85, i32 0, i32 0, !dbg !263
  %87 = load i8*, i8** %86, align 8, !dbg !263
  %88 = icmp ne i8* %87, null, !dbg !261
  br i1 %88, label %100, label %89, !dbg !264

; <label>:89:                                     ; preds = %84
  %90 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !265
  %91 = load i64, i64* %6, align 8, !dbg !267
  %92 = icmp ult i64 %91, 250, !dbg !268
  br i1 %92, label %93, label %95, !dbg !269

; <label>:93:                                     ; preds = %89
  %94 = load i64, i64* %6, align 8, !dbg !270
  br label %96, !dbg !272

; <label>:95:                                     ; preds = %89
  br label %96, !dbg !273

; <label>:96:                                     ; preds = %95, %93
  %97 = phi i64 [ %94, %93 ], [ 250, %95 ], !dbg !275
  %98 = trunc i64 %97 to i32, !dbg !277
  %99 = load i8*, i8** %3, align 8, !dbg !278
  call void (i8*, ...) @badusage(i8* %90, i32 %98, i8* %99) #13, !dbg !279
  unreachable, !dbg !279

; <label>:100:                                    ; preds = %84
  %101 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !280
  %102 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %101, i32 0, i32 1, !dbg !282
  %103 = load i32, i32* %102, align 8, !dbg !282
  %104 = icmp ne i32 %103, 0, !dbg !280
  br i1 %104, label %105, label %117, !dbg !283

; <label>:105:                                    ; preds = %100
  %106 = load i8, i8* %4, align 1, !dbg !284
  %107 = trunc i8 %106 to i1, !dbg !284
  br i1 %107, label %108, label %112, !dbg !287

; <label>:108:                                    ; preds = %105
  %109 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !288
  %110 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %109, i32 0, i32 1, !dbg !289
  %111 = load i32, i32* %110, align 8, !dbg !289
  call void @set_force(i32 %111), !dbg !290
  br label %116, !dbg !290

; <label>:112:                                    ; preds = %105
  %113 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !291
  %114 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %113, i32 0, i32 1, !dbg !292
  %115 = load i32, i32* %114, align 8, !dbg !292
  call void @reset_force(i32 %115), !dbg !293
  br label %116

; <label>:116:                                    ; preds = %112, %108
  br label %122, !dbg !294

; <label>:117:                                    ; preds = %100
  %118 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !295
  %119 = load %struct.forceinfo*, %struct.forceinfo** %7, align 8, !dbg !297
  %120 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %119, i32 0, i32 0, !dbg !298
  %121 = load i8*, i8** %120, align 8, !dbg !298
  call void (i8*, ...) @warning(i8* %118, i8* %121), !dbg !299
  br label %122

; <label>:122:                                    ; preds = %117, %116
  br label %123

; <label>:123:                                    ; preds = %122
  %124 = load i8*, i8** %5, align 8, !dbg !301
  %125 = load i8, i8* %124, align 1, !dbg !303
  %126 = sext i8 %125 to i32, !dbg !303
  %127 = icmp eq i32 %126, 0, !dbg !304
  br i1 %127, label %128, label %129, !dbg !305

; <label>:128:                                    ; preds = %123
  br label %132, !dbg !306

; <label>:129:                                    ; preds = %123
  %130 = load i8*, i8** %5, align 8, !dbg !307
  %131 = getelementptr inbounds i8, i8* %130, i32 1, !dbg !307
  store i8* %131, i8** %5, align 8, !dbg !307
  store i8* %131, i8** %3, align 8, !dbg !308
  br label %51, !dbg !309, !llvm.loop !311

; <label>:132:                                    ; preds = %128
  ret void, !dbg !312
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i8* @dpkg_get_progname() #3

; Function Attrs: nounwind uwtable
define internal void @print_forceinfo(%struct.forceinfo*) #0 !dbg !313 {
  %2 = alloca %struct.forceinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.forceinfo* %0, %struct.forceinfo** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.forceinfo** %2, metadata !316, metadata !72), !dbg !317
  call void @llvm.dbg.declare(metadata i8** %3, metadata !318, metadata !72), !dbg !319
  call void @llvm.dbg.declare(metadata i8** %4, metadata !320, metadata !72), !dbg !321
  %5 = load %struct.forceinfo*, %struct.forceinfo** %2, align 8, !dbg !322
  %6 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %5, i32 0, i32 3, !dbg !323
  %7 = load i8*, i8** %6, align 8, !dbg !323
  %8 = call i8* @gettext(i8* %7) #8, !dbg !324
  %9 = call i8* @m_strdup(i8* %8), !dbg !325
  store i8* %9, i8** %3, align 8, !dbg !327
  %10 = load i8*, i8** %3, align 8, !dbg !328
  %11 = call i8* @strtok(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !329
  store i8* %11, i8** %4, align 8, !dbg !330
  %12 = load %struct.forceinfo*, %struct.forceinfo** %2, align 8, !dbg !331
  %13 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %12, i32 0, i32 2, !dbg !332
  %14 = load i8, i8* %13, align 4, !dbg !332
  %15 = sext i8 %14 to i32, !dbg !331
  %16 = load %struct.forceinfo*, %struct.forceinfo** %2, align 8, !dbg !333
  %17 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %16, i32 0, i32 0, !dbg !334
  %18 = load i8*, i8** %17, align 8, !dbg !334
  %19 = load i8*, i8** %4, align 8, !dbg !335
  call void @print_forceinfo_line(i32 %15, i8* %18, i8* %19), !dbg !336
  br label %20, !dbg !337

; <label>:20:                                     ; preds = %23, %1
  %21 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0)) #8, !dbg !338
  store i8* %21, i8** %4, align 8, !dbg !339
  %22 = icmp ne i8* %21, null, !dbg !340
  br i1 %22, label %23, label %25, !dbg !340

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %4, align 8, !dbg !341
  call void @print_forceinfo_line(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.66, i32 0, i32 0), i8* %24), !dbg !342
  br label %20, !dbg !343, !llvm.loop !345

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %3, align 8, !dbg !346
  call void @free(i8* %26) #8, !dbg !347
  ret void, !dbg !348
}

declare void @m_output(%struct._IO_FILE*, i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind readonly
declare i8* @strchrnul(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: noreturn
declare void @badusage(i8*, ...) #7

declare void @warning(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @set_force_default(i32) #0 !dbg !349 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.forceinfo*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !350, metadata !72), !dbg !351
  call void @llvm.dbg.declare(metadata i8** %3, metadata !352, metadata !72), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.forceinfo** %4, metadata !354, metadata !72), !dbg !355
  %5 = load i32, i32* %2, align 4, !dbg !356
  store i32 %5, i32* @force_mask, align 4, !dbg !357
  %6 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !358
  store i8* %6, i8** %3, align 8, !dbg !359
  %7 = load i8*, i8** %3, align 8, !dbg !360
  %8 = icmp ne i8* %7, null, !dbg !362
  br i1 %8, label %9, label %18, !dbg !363

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !364
  %11 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !364
  %12 = load i8, i8* %11, align 1, !dbg !364
  %13 = sext i8 %12 to i32, !dbg !364
  %14 = icmp ne i32 %13, 0, !dbg !367
  br i1 %14, label %15, label %17, !dbg !368

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** %3, align 8, !dbg !369
  call void @parse_force(i8* %16, i1 zeroext true), !dbg !370
  br label %17, !dbg !370

; <label>:17:                                     ; preds = %15, %9
  br label %38, !dbg !371

; <label>:18:                                     ; preds = %1
  store %struct.forceinfo* getelementptr inbounds ([29 x %struct.forceinfo], [29 x %struct.forceinfo]* @forceinfos, i32 0, i32 0), %struct.forceinfo** %4, align 8, !dbg !372
  br label %19, !dbg !374

; <label>:19:                                     ; preds = %35, %18
  %20 = load %struct.forceinfo*, %struct.forceinfo** %4, align 8, !dbg !375
  %21 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %20, i32 0, i32 0, !dbg !378
  %22 = load i8*, i8** %21, align 8, !dbg !378
  %23 = icmp ne i8* %22, null, !dbg !379
  br i1 %23, label %24, label %38, !dbg !379

; <label>:24:                                     ; preds = %19
  %25 = load %struct.forceinfo*, %struct.forceinfo** %4, align 8, !dbg !380
  %26 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %25, i32 0, i32 2, !dbg !382
  %27 = load i8, i8* %26, align 4, !dbg !382
  %28 = sext i8 %27 to i32, !dbg !380
  %29 = icmp eq i32 %28, 1, !dbg !383
  br i1 %29, label %30, label %34, !dbg !384

; <label>:30:                                     ; preds = %24
  %31 = load %struct.forceinfo*, %struct.forceinfo** %4, align 8, !dbg !385
  %32 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %31, i32 0, i32 1, !dbg !386
  %33 = load i32, i32* %32, align 8, !dbg !386
  call void @set_force(i32 %33), !dbg !387
  br label %34, !dbg !387

; <label>:34:                                     ; preds = %30, %24
  br label %35, !dbg !388

; <label>:35:                                     ; preds = %34
  %36 = load %struct.forceinfo*, %struct.forceinfo** %4, align 8, !dbg !390
  %37 = getelementptr inbounds %struct.forceinfo, %struct.forceinfo* %36, i32 1, !dbg !390
  store %struct.forceinfo* %37, %struct.forceinfo** %4, align 8, !dbg !390
  br label %19, !dbg !392, !llvm.loop !393

; <label>:38:                                     ; preds = %17, %19
  ret void, !dbg !395
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind uwtable
define void @set_force_option(%struct.cmdinfo*, i8*) #0 !dbg !396 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !422, metadata !72), !dbg !423
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !424, metadata !72), !dbg !425
  call void @llvm.dbg.declare(metadata i8* %5, metadata !426, metadata !72), !dbg !427
  %6 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !428
  %7 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 6, !dbg !429
  %8 = load i32, i32* %7, align 8, !dbg !429
  %9 = icmp ne i32 %8, 0, !dbg !428
  %10 = zext i1 %9 to i8, !dbg !427
  store i8 %10, i8* %5, align 1, !dbg !427
  %11 = load i8*, i8** %4, align 8, !dbg !430
  %12 = load i8, i8* %5, align 1, !dbg !431
  %13 = trunc i8 %12 to i1, !dbg !431
  call void @parse_force(i8* %11, i1 zeroext %13), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: nounwind uwtable
define void @reset_force_option(%struct.cmdinfo*, i8*) #0 !dbg !434 {
  %3 = alloca %struct.cmdinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdinfo** %3, metadata !435, metadata !72), !dbg !436
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !437, metadata !72), !dbg !438
  %5 = load %struct.cmdinfo*, %struct.cmdinfo** %3, align 8, !dbg !439
  %6 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %5, i32 0, i32 6, !dbg !440
  %7 = load i32, i32* %6, align 8, !dbg !440
  call void @reset_force(i32 %7), !dbg !441
  ret void, !dbg !442
}

; Function Attrs: nounwind uwtable
define void @forcibleerr(i32, i8*, ...) #0 !dbg !443 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !446, metadata !72), !dbg !447
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !448, metadata !72), !dbg !449
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !450, metadata !72), !dbg !465
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !466
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !466
  call void @llvm.va_start(i8* %7), !dbg !466
  %8 = load i32, i32* %3, align 4, !dbg !467
  %9 = call zeroext i1 @in_force(i32 %8), !dbg !469
  br i1 %9, label %10, label %14, !dbg !470

; <label>:10:                                     ; preds = %2
  %11 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !471
  call void (i8*, ...) @warning(i8* %11), !dbg !473
  %12 = load i8*, i8** %4, align 8, !dbg !475
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !476
  call void @warningv(i8* %12, %struct.__va_list_tag* %13), !dbg !477
  br label %17, !dbg !478

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %4, align 8, !dbg !479
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !481
  call void @ohshitv(i8* %15, %struct.__va_list_tag* %16) #13, !dbg !482
  unreachable, !dbg !482

; <label>:17:                                     ; preds = %10
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !483
  %19 = bitcast %struct.__va_list_tag* %18 to i8*, !dbg !483
  call void @llvm.va_end(i8* %19), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

declare void @warningv(i8*, %struct.__va_list_tag*) #3

; Function Attrs: noreturn
declare void @ohshitv(i8*, %struct.__va_list_tag*) #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind uwtable
define i32 @forcible_nonroot_error(i32) #0 !dbg !485 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !488, metadata !72), !dbg !489
  %4 = call zeroext i1 @in_force(i32 65536), !dbg !490
  br i1 %4, label %5, label %10, !dbg !492

; <label>:5:                                      ; preds = %1
  %6 = call i32* @__errno_location() #1, !dbg !493
  %7 = load i32, i32* %6, align 4, !dbg !495
  %8 = icmp eq i32 %7, 1, !dbg !496
  br i1 %8, label %9, label %10, !dbg !497

; <label>:9:                                      ; preds = %5
  store i32 0, i32* %2, align 4, !dbg !498
  br label %12, !dbg !498

; <label>:10:                                     ; preds = %5, %1
  %11 = load i32, i32* %3, align 4, !dbg !499
  store i32 %11, i32* %2, align 4, !dbg !500
  br label %12, !dbg !500

; <label>:12:                                     ; preds = %10, %9
  %13 = load i32, i32* %2, align 4, !dbg !501
  ret i32 %13, !dbg !501
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #9

declare i8* @m_strdup(i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_forceinfo_line(i32, i8*, i8*) #10 !dbg !502 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !505, metadata !72), !dbg !506
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !507, metadata !72), !dbg !508
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !509, metadata !72), !dbg !510
  %7 = load i32, i32* %4, align 4, !dbg !511
  %8 = call i8* @forcetype_str(i32 %7), !dbg !512
  %9 = load i8*, i8** %5, align 8, !dbg !513
  %10 = load i8*, i8** %6, align 8, !dbg !514
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i8* %8, i8* %9, i8* %10), !dbg !515
  ret void, !dbg !517
}

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @forcetype_str(i32) #0 !dbg !518 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !521, metadata !72), !dbg !522
  %4 = load i32, i32* %3, align 4, !dbg !523
  switch i32 %4, label %8 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
  ], !dbg !524

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8** %2, align 8, !dbg !525
  br label %10, !dbg !525

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8** %2, align 8, !dbg !527
  br label %10, !dbg !527

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8** %2, align 8, !dbg !528
  br label %10, !dbg !528

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !529
  call void (i8*, i32, i8*, i8*, ...) @do_internerr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.forcetype_str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i32 0, i32 0), i32 %9) #13, !dbg !530
  unreachable, !dbg !530

; <label>:10:                                     ; preds = %7, %6, %5
  %11 = load i8*, i8** %2, align 8, !dbg !531
  ret i8* %11, !dbg !531
}

; Function Attrs: noreturn
declare void @do_internerr(i8*, i32, i8*, i8*, ...) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, globals: !46)
!1 = !DIFile(filename: "[inter]src--force.o.i", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!2 = !{!3, !34}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "force_flags", file: !4, line: 28, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "force.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "FORCE_ARCHITECTURE", value: 1)
!7 = !DIEnumerator(name: "FORCE_BAD_PATH", value: 2)
!8 = !DIEnumerator(name: "FORCE_BAD_VERIFY", value: 4)
!9 = !DIEnumerator(name: "FORCE_BAD_VERSION", value: 8)
!10 = !DIEnumerator(name: "FORCE_BREAKS", value: 16)
!11 = !DIEnumerator(name: "FORCE_CONFF_ASK", value: 32)
!12 = !DIEnumerator(name: "FORCE_CONFF_DEF", value: 64)
!13 = !DIEnumerator(name: "FORCE_CONFF_MISS", value: 128)
!14 = !DIEnumerator(name: "FORCE_CONFF_NEW", value: 256)
!15 = !DIEnumerator(name: "FORCE_CONFF_OLD", value: 512)
!16 = !DIEnumerator(name: "FORCE_CONFIGURE_ANY", value: 1024)
!17 = !DIEnumerator(name: "FORCE_CONFLICTS", value: 2048)
!18 = !DIEnumerator(name: "FORCE_DEPENDS", value: 4096)
!19 = !DIEnumerator(name: "FORCE_DEPENDS_VERSION", value: 8192)
!20 = !DIEnumerator(name: "FORCE_DOWNGRADE", value: 16384)
!21 = !DIEnumerator(name: "FORCE_HOLD", value: 32768)
!22 = !DIEnumerator(name: "FORCE_NON_ROOT", value: 65536)
!23 = !DIEnumerator(name: "FORCE_OVERWRITE", value: 131072)
!24 = !DIEnumerator(name: "FORCE_OVERWRITE_DIR", value: 262144)
!25 = !DIEnumerator(name: "FORCE_OVERWRITE_DIVERTED", value: 524288)
!26 = !DIEnumerator(name: "FORCE_REMOVE_ESSENTIAL", value: 1048576)
!27 = !DIEnumerator(name: "FORCE_REMOVE_REINSTREQ", value: 2097152)
!28 = !DIEnumerator(name: "FORCE_SCRIPT_CHROOTLESS", value: 4194304)
!29 = !DIEnumerator(name: "FORCE_UNSAFE_IO", value: 8388608)
!30 = !DIEnumerator(name: "FORCE_STATOVERRIDE_ADD", value: 16777216)
!31 = !DIEnumerator(name: "FORCE_STATOVERRIDE_DEL", value: 33554432)
!32 = !DIEnumerator(name: "FORCE_SECURITY_MAC", value: 67108864)
!33 = !DIEnumerator(name: "FORCE_ALL", value: -1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "forcetype", file: !35, line: 43, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "force.c", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "FORCETYPE_DISABLED", value: 0)
!38 = !DIEnumerator(name: "FORCETYPE_ENABLED", value: 1)
!39 = !DIEnumerator(name: "FORCETYPE_DAMAGE", value: 2)
!40 = !{!3, !41, !44, !45}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 216, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!43 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!46 = !{!47, !48, !49}
!47 = distinct !DIGlobalVariable(name: "force_mask", scope: !0, file: !35, line: 40, type: !44, isLocal: true, isDefinition: true, variable: i32* @force_mask)
!48 = distinct !DIGlobalVariable(name: "force_flags", scope: !0, file: !35, line: 41, type: !44, isLocal: true, isDefinition: true, variable: i32* @force_flags)
!49 = distinct !DIGlobalVariable(name: "forceinfos", scope: !0, file: !35, line: 69, type: !50, isLocal: true, isDefinition: true, variable: [29 x %struct.forceinfo]* @forceinfos)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 5568, align: 64, elements: !61)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "forceinfo", file: !35, line: 64, size: 192, align: 64, elements: !53)
!53 = !{!54, !58, !59, !60}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !52, file: !35, line: 65, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !52, file: !35, line: 66, baseType: !44, size: 32, align: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !35, line: 67, baseType: !57, size: 8, align: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !52, file: !35, line: 68, baseType: !55, size: 64, align: 64, offset: 128)
!61 = !{!62}
!62 = !DISubrange(count: 29)
!63 = !{i32 2, !"Dwarf Version", i32 4}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!66 = distinct !DISubprogram(name: "in_force", scope: !35, file: !35, line: 219, type: !67, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !44}
!69 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!70 = !{}
!71 = !DILocalVariable(name: "flags", arg: 1, scope: !66, file: !35, line: 219, type: !44)
!72 = !DIExpression()
!73 = !DILocation(line: 219, column: 14, scope: !66)
!74 = !DILocation(line: 221, column: 10, scope: !66)
!75 = !DILocation(line: 221, column: 18, scope: !66)
!76 = !DILocation(line: 221, column: 16, scope: !66)
!77 = !DILocation(line: 221, column: 34, scope: !66)
!78 = !DILocation(line: 221, column: 31, scope: !66)
!79 = !DILocation(line: 221, column: 2, scope: !66)
!80 = distinct !DISubprogram(name: "set_force", scope: !35, file: !35, line: 225, type: !81, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !44}
!83 = !DILocalVariable(name: "flags", arg: 1, scope: !80, file: !35, line: 225, type: !44)
!84 = !DILocation(line: 225, column: 15, scope: !80)
!85 = !DILocation(line: 227, column: 17, scope: !80)
!86 = !DILocation(line: 227, column: 14, scope: !80)
!87 = !DILocation(line: 228, column: 1, scope: !80)
!88 = distinct !DISubprogram(name: "reset_force", scope: !35, file: !35, line: 231, type: !81, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!89 = !DILocalVariable(name: "flags", arg: 1, scope: !88, file: !35, line: 231, type: !44)
!90 = !DILocation(line: 231, column: 17, scope: !88)
!91 = !DILocation(line: 233, column: 18, scope: !88)
!92 = !DILocation(line: 233, column: 17, scope: !88)
!93 = !DILocation(line: 233, column: 14, scope: !88)
!94 = !DILocation(line: 234, column: 1, scope: !88)
!95 = distinct !DISubprogram(name: "get_force_string", scope: !35, file: !35, line: 237, type: !96, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!96 = !DISubroutineType(types: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!99 = !DILocalVariable(name: "fip", scope: !95, file: !35, line: 239, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!101 = !DILocation(line: 239, column: 26, scope: !95)
!102 = !DILocalVariable(name: "vb", scope: !95, file: !35, line: 240, type: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varbuf", file: !104, line: 55, size: 192, align: 64, elements: !105)
!104 = !DIFile(filename: "../lib/dpkg/varbuf.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !103, file: !104, line: 56, baseType: !41, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !103, file: !104, line: 56, baseType: !41, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !103, file: !104, line: 57, baseType: !98, size: 64, align: 64, offset: 128)
!109 = !DILocation(line: 240, column: 16, scope: !95)
!110 = !DILocation(line: 242, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !95, file: !35, line: 242, column: 2)
!112 = !DILocation(line: 242, column: 7, scope: !111)
!113 = !DILocation(line: 242, column: 25, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !35, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !111, file: !35, line: 242, column: 2)
!116 = !DILocation(line: 242, column: 30, scope: !114)
!117 = !DILocation(line: 242, column: 2, scope: !114)
!118 = !DILocation(line: 243, column: 25, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !35, line: 243, column: 7)
!120 = distinct !DILexicalBlock(scope: !115, file: !35, line: 242, column: 43)
!121 = !DILocation(line: 243, column: 30, scope: !119)
!122 = !DILocation(line: 243, column: 35, scope: !119)
!123 = !DILocation(line: 243, column: 48, scope: !119)
!124 = !DILocation(line: 244, column: 8, scope: !119)
!125 = !DILocation(line: 244, column: 13, scope: !119)
!126 = !DILocation(line: 244, column: 20, scope: !119)
!127 = !DILocation(line: 244, column: 18, scope: !119)
!128 = !DILocation(line: 244, column: 35, scope: !119)
!129 = !DILocation(line: 244, column: 40, scope: !119)
!130 = !DILocation(line: 244, column: 32, scope: !119)
!131 = !DILocation(line: 244, column: 45, scope: !119)
!132 = !DILocation(line: 245, column: 17, scope: !119)
!133 = !DILocation(line: 245, column: 22, scope: !119)
!134 = !DILocation(line: 245, column: 8, scope: !119)
!135 = !DILocation(line: 243, column: 7, scope: !136)
!136 = !DILexicalBlockFile(scope: !120, file: !35, discriminator: 1)
!137 = !DILocation(line: 246, column: 4, scope: !119)
!138 = !DILocation(line: 248, column: 10, scope: !139)
!139 = distinct !DILexicalBlock(scope: !120, file: !35, line: 248, column: 7)
!140 = !DILocation(line: 248, column: 7, scope: !139)
!141 = !DILocation(line: 248, column: 7, scope: !120)
!142 = !DILocation(line: 249, column: 4, scope: !139)
!143 = !DILocation(line: 250, column: 23, scope: !120)
!144 = !DILocation(line: 250, column: 28, scope: !120)
!145 = !DILocation(line: 250, column: 41, scope: !120)
!146 = !DILocation(line: 250, column: 46, scope: !120)
!147 = !DILocation(line: 250, column: 34, scope: !120)
!148 = !DILocation(line: 250, column: 3, scope: !136)
!149 = !DILocation(line: 251, column: 2, scope: !120)
!150 = !DILocation(line: 242, column: 39, scope: !151)
!151 = !DILexicalBlockFile(scope: !115, file: !35, discriminator: 2)
!152 = !DILocation(line: 242, column: 2, scope: !151)
!153 = distinct !{!153, !154}
!154 = !DILocation(line: 242, column: 2, scope: !95)
!155 = !DILocation(line: 252, column: 2, scope: !95)
!156 = !DILocation(line: 254, column: 9, scope: !95)
!157 = !DILocation(line: 254, column: 2, scope: !95)
!158 = distinct !DISubprogram(name: "parse_force", scope: !35, file: !35, line: 279, type: !159, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !55, !69}
!161 = !DILocalVariable(name: "value", arg: 1, scope: !158, file: !35, line: 279, type: !55)
!162 = !DILocation(line: 279, column: 25, scope: !158)
!163 = !DILocalVariable(name: "set", arg: 2, scope: !158, file: !35, line: 279, type: !69)
!164 = !DILocation(line: 279, column: 36, scope: !158)
!165 = !DILocalVariable(name: "comma", scope: !158, file: !35, line: 281, type: !55)
!166 = !DILocation(line: 281, column: 14, scope: !158)
!167 = !DILocalVariable(name: "l", scope: !158, file: !35, line: 282, type: !41)
!168 = !DILocation(line: 282, column: 9, scope: !158)
!169 = !DILocalVariable(name: "fip", scope: !158, file: !35, line: 283, type: !100)
!170 = !DILocation(line: 283, column: 26, scope: !158)
!171 = !DILocation(line: 285, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !158, file: !35, line: 285, column: 6)
!173 = !DILocation(line: 285, column: 6, scope: !172)
!174 = !DILocation(line: 285, column: 28, scope: !172)
!175 = !DILocation(line: 285, column: 6, scope: !158)
!176 = !DILocation(line: 286, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !35, line: 285, column: 34)
!178 = !DILocation(line: 290, column: 24, scope: !177)
!179 = !DILocation(line: 286, column: 3, scope: !180)
!180 = !DILexicalBlockFile(scope: !177, file: !35, discriminator: 1)
!181 = !DILocation(line: 292, column: 12, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !35, line: 292, column: 3)
!183 = !DILocation(line: 292, column: 8, scope: !182)
!184 = !DILocation(line: 292, column: 26, scope: !185)
!185 = !DILexicalBlockFile(scope: !186, file: !35, discriminator: 1)
!186 = distinct !DILexicalBlock(scope: !182, file: !35, line: 292, column: 3)
!187 = !DILocation(line: 292, column: 31, scope: !185)
!188 = !DILocation(line: 292, column: 3, scope: !185)
!189 = !DILocation(line: 293, column: 26, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !35, line: 293, column: 8)
!191 = !DILocation(line: 293, column: 31, scope: !190)
!192 = !DILocation(line: 293, column: 36, scope: !190)
!193 = !DILocation(line: 293, column: 49, scope: !190)
!194 = !DILocation(line: 294, column: 9, scope: !190)
!195 = !DILocation(line: 294, column: 14, scope: !190)
!196 = !DILocation(line: 294, column: 21, scope: !190)
!197 = !DILocation(line: 294, column: 19, scope: !190)
!198 = !DILocation(line: 294, column: 36, scope: !190)
!199 = !DILocation(line: 294, column: 41, scope: !190)
!200 = !DILocation(line: 294, column: 33, scope: !190)
!201 = !DILocation(line: 293, column: 8, scope: !185)
!202 = !DILocation(line: 295, column: 21, scope: !190)
!203 = !DILocation(line: 295, column: 5, scope: !190)
!204 = !DILocation(line: 294, column: 41, scope: !205)
!205 = !DILexicalBlockFile(scope: !190, file: !35, discriminator: 1)
!206 = !DILocation(line: 292, column: 40, scope: !207)
!207 = !DILexicalBlockFile(scope: !186, file: !35, discriminator: 2)
!208 = !DILocation(line: 292, column: 3, scope: !207)
!209 = distinct !{!209, !210}
!210 = !DILocation(line: 292, column: 3, scope: !177)
!211 = !DILocation(line: 297, column: 10, scope: !177)
!212 = !DILocation(line: 297, column: 3, scope: !180)
!213 = !DILocation(line: 301, column: 11, scope: !177)
!214 = !DILocation(line: 301, column: 19, scope: !177)
!215 = !DILocation(line: 301, column: 3, scope: !180)
!216 = !DILocation(line: 303, column: 10, scope: !177)
!217 = !DILocation(line: 306, column: 11, scope: !177)
!218 = !DILocation(line: 303, column: 3, scope: !180)
!219 = !DILocation(line: 308, column: 3, scope: !177)
!220 = !DILocation(line: 311, column: 2, scope: !158)
!221 = !DILocation(line: 312, column: 21, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !35, line: 311, column: 11)
!223 = distinct !DILexicalBlock(scope: !224, file: !35, line: 311, column: 2)
!224 = distinct !DILexicalBlock(scope: !158, file: !35, line: 311, column: 2)
!225 = !DILocation(line: 312, column: 11, scope: !222)
!226 = !DILocation(line: 312, column: 9, scope: !222)
!227 = !DILocation(line: 313, column: 16, scope: !222)
!228 = !DILocation(line: 313, column: 24, scope: !222)
!229 = !DILocation(line: 313, column: 22, scope: !222)
!230 = !DILocation(line: 313, column: 5, scope: !222)
!231 = !DILocation(line: 314, column: 12, scope: !232)
!232 = distinct !DILexicalBlock(scope: !222, file: !35, line: 314, column: 3)
!233 = !DILocation(line: 314, column: 8, scope: !232)
!234 = !DILocation(line: 314, column: 26, scope: !235)
!235 = !DILexicalBlockFile(scope: !236, file: !35, discriminator: 1)
!236 = distinct !DILexicalBlock(scope: !232, file: !35, line: 314, column: 3)
!237 = !DILocation(line: 314, column: 31, scope: !235)
!238 = !DILocation(line: 314, column: 3, scope: !235)
!239 = !DILocation(line: 315, column: 16, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !35, line: 315, column: 8)
!241 = !DILocation(line: 315, column: 21, scope: !240)
!242 = !DILocation(line: 315, column: 27, scope: !240)
!243 = !DILocation(line: 315, column: 34, scope: !240)
!244 = !DILocation(line: 315, column: 8, scope: !240)
!245 = !DILocation(line: 315, column: 37, scope: !240)
!246 = !DILocation(line: 315, column: 42, scope: !240)
!247 = !DILocation(line: 316, column: 15, scope: !240)
!248 = !DILocation(line: 316, column: 20, scope: !240)
!249 = !DILocation(line: 316, column: 8, scope: !240)
!250 = !DILocation(line: 316, column: 29, scope: !240)
!251 = !DILocation(line: 316, column: 26, scope: !240)
!252 = !DILocation(line: 315, column: 8, scope: !235)
!253 = !DILocation(line: 317, column: 5, scope: !240)
!254 = !DILocation(line: 316, column: 29, scope: !255)
!255 = !DILexicalBlockFile(scope: !240, file: !35, discriminator: 1)
!256 = !DILocation(line: 314, column: 40, scope: !257)
!257 = !DILexicalBlockFile(scope: !236, file: !35, discriminator: 2)
!258 = !DILocation(line: 314, column: 3, scope: !257)
!259 = distinct !{!259, !260}
!260 = !DILocation(line: 314, column: 3, scope: !222)
!261 = !DILocation(line: 319, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !222, file: !35, line: 319, column: 7)
!263 = !DILocation(line: 319, column: 13, scope: !262)
!264 = !DILocation(line: 319, column: 7, scope: !222)
!265 = !DILocation(line: 320, column: 13, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !35, line: 319, column: 19)
!267 = !DILocation(line: 321, column: 20, scope: !266)
!268 = !DILocation(line: 321, column: 23, scope: !266)
!269 = !DILocation(line: 321, column: 19, scope: !266)
!270 = !DILocation(line: 321, column: 34, scope: !271)
!271 = !DILexicalBlockFile(scope: !266, file: !35, discriminator: 1)
!272 = !DILocation(line: 321, column: 19, scope: !271)
!273 = !DILocation(line: 321, column: 19, scope: !274)
!274 = !DILexicalBlockFile(scope: !266, file: !35, discriminator: 2)
!275 = !DILocation(line: 321, column: 19, scope: !276)
!276 = !DILexicalBlockFile(scope: !266, file: !35, discriminator: 3)
!277 = !DILocation(line: 321, column: 13, scope: !276)
!278 = !DILocation(line: 321, column: 47, scope: !276)
!279 = !DILocation(line: 320, column: 4, scope: !271)
!280 = !DILocation(line: 322, column: 14, scope: !281)
!281 = distinct !DILexicalBlock(scope: !262, file: !35, line: 322, column: 14)
!282 = !DILocation(line: 322, column: 19, scope: !281)
!283 = !DILocation(line: 322, column: 14, scope: !262)
!284 = !DILocation(line: 323, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !35, line: 323, column: 8)
!286 = distinct !DILexicalBlock(scope: !281, file: !35, line: 322, column: 25)
!287 = !DILocation(line: 323, column: 8, scope: !286)
!288 = !DILocation(line: 324, column: 15, scope: !285)
!289 = !DILocation(line: 324, column: 20, scope: !285)
!290 = !DILocation(line: 324, column: 5, scope: !285)
!291 = !DILocation(line: 326, column: 17, scope: !285)
!292 = !DILocation(line: 326, column: 22, scope: !285)
!293 = !DILocation(line: 326, column: 5, scope: !285)
!294 = !DILocation(line: 327, column: 3, scope: !286)
!295 = !DILocation(line: 328, column: 12, scope: !296)
!296 = distinct !DILexicalBlock(scope: !281, file: !35, line: 327, column: 10)
!297 = !DILocation(line: 329, column: 12, scope: !296)
!298 = !DILocation(line: 329, column: 17, scope: !296)
!299 = !DILocation(line: 328, column: 4, scope: !300)
!300 = !DILexicalBlockFile(scope: !296, file: !35, discriminator: 1)
!301 = !DILocation(line: 332, column: 8, scope: !302)
!302 = distinct !DILexicalBlock(scope: !222, file: !35, line: 332, column: 7)
!303 = !DILocation(line: 332, column: 7, scope: !302)
!304 = !DILocation(line: 332, column: 14, scope: !302)
!305 = !DILocation(line: 332, column: 7, scope: !222)
!306 = !DILocation(line: 333, column: 4, scope: !302)
!307 = !DILocation(line: 334, column: 11, scope: !222)
!308 = !DILocation(line: 334, column: 9, scope: !222)
!309 = !DILocation(line: 311, column: 2, scope: !310)
!310 = !DILexicalBlockFile(scope: !223, file: !35, discriminator: 1)
!311 = distinct !{!311, !220}
!312 = !DILocation(line: 336, column: 1, scope: !158)
!313 = distinct !DISubprogram(name: "print_forceinfo", scope: !35, file: !35, line: 264, type: !314, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !100}
!316 = !DILocalVariable(name: "fi", arg: 1, scope: !313, file: !35, line: 264, type: !100)
!317 = !DILocation(line: 264, column: 41, scope: !313)
!318 = !DILocalVariable(name: "desc", scope: !313, file: !35, line: 266, type: !98)
!319 = !DILocation(line: 266, column: 8, scope: !313)
!320 = !DILocalVariable(name: "line", scope: !313, file: !35, line: 266, type: !98)
!321 = !DILocation(line: 266, column: 15, scope: !313)
!322 = !DILocation(line: 268, column: 26, scope: !313)
!323 = !DILocation(line: 268, column: 30, scope: !313)
!324 = !DILocation(line: 268, column: 18, scope: !313)
!325 = !DILocation(line: 268, column: 9, scope: !326)
!326 = !DILexicalBlockFile(scope: !313, file: !35, discriminator: 1)
!327 = !DILocation(line: 268, column: 7, scope: !313)
!328 = !DILocation(line: 270, column: 16, scope: !313)
!329 = !DILocation(line: 270, column: 9, scope: !313)
!330 = !DILocation(line: 270, column: 7, scope: !313)
!331 = !DILocation(line: 271, column: 23, scope: !313)
!332 = !DILocation(line: 271, column: 27, scope: !313)
!333 = !DILocation(line: 271, column: 33, scope: !313)
!334 = !DILocation(line: 271, column: 37, scope: !313)
!335 = !DILocation(line: 271, column: 43, scope: !313)
!336 = !DILocation(line: 271, column: 2, scope: !313)
!337 = !DILocation(line: 272, column: 2, scope: !313)
!338 = !DILocation(line: 272, column: 17, scope: !326)
!339 = !DILocation(line: 272, column: 15, scope: !326)
!340 = !DILocation(line: 272, column: 2, scope: !326)
!341 = !DILocation(line: 273, column: 48, scope: !313)
!342 = !DILocation(line: 273, column: 3, scope: !313)
!343 = !DILocation(line: 272, column: 2, scope: !344)
!344 = !DILexicalBlockFile(scope: !313, file: !35, discriminator: 2)
!345 = distinct !{!345, !337}
!346 = !DILocation(line: 275, column: 7, scope: !313)
!347 = !DILocation(line: 275, column: 2, scope: !313)
!348 = !DILocation(line: 276, column: 1, scope: !313)
!349 = distinct !DISubprogram(name: "set_force_default", scope: !35, file: !35, line: 339, type: !81, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!350 = !DILocalVariable(name: "mask", arg: 1, scope: !349, file: !35, line: 339, type: !44)
!351 = !DILocation(line: 339, column: 23, scope: !349)
!352 = !DILocalVariable(name: "force_env", scope: !349, file: !35, line: 341, type: !55)
!353 = !DILocation(line: 341, column: 14, scope: !349)
!354 = !DILocalVariable(name: "fip", scope: !349, file: !35, line: 342, type: !100)
!355 = !DILocation(line: 342, column: 26, scope: !349)
!356 = !DILocation(line: 344, column: 15, scope: !349)
!357 = !DILocation(line: 344, column: 13, scope: !349)
!358 = !DILocation(line: 348, column: 14, scope: !349)
!359 = !DILocation(line: 348, column: 12, scope: !349)
!360 = !DILocation(line: 349, column: 6, scope: !361)
!361 = distinct !DILexicalBlock(scope: !349, file: !35, line: 349, column: 6)
!362 = !DILocation(line: 349, column: 16, scope: !361)
!363 = !DILocation(line: 349, column: 6, scope: !349)
!364 = !DILocation(line: 350, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !35, line: 350, column: 7)
!366 = distinct !DILexicalBlock(scope: !361, file: !35, line: 349, column: 24)
!367 = !DILocation(line: 350, column: 20, scope: !365)
!368 = !DILocation(line: 350, column: 7, scope: !366)
!369 = !DILocation(line: 351, column: 16, scope: !365)
!370 = !DILocation(line: 351, column: 4, scope: !365)
!371 = !DILocation(line: 352, column: 3, scope: !366)
!372 = !DILocation(line: 355, column: 11, scope: !373)
!373 = distinct !DILexicalBlock(scope: !349, file: !35, line: 355, column: 2)
!374 = !DILocation(line: 355, column: 7, scope: !373)
!375 = !DILocation(line: 355, column: 25, scope: !376)
!376 = !DILexicalBlockFile(scope: !377, file: !35, discriminator: 1)
!377 = distinct !DILexicalBlock(scope: !373, file: !35, line: 355, column: 2)
!378 = !DILocation(line: 355, column: 30, scope: !376)
!379 = !DILocation(line: 355, column: 2, scope: !376)
!380 = !DILocation(line: 356, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !35, line: 356, column: 7)
!382 = !DILocation(line: 356, column: 12, scope: !381)
!383 = !DILocation(line: 356, column: 17, scope: !381)
!384 = !DILocation(line: 356, column: 7, scope: !377)
!385 = !DILocation(line: 357, column: 14, scope: !381)
!386 = !DILocation(line: 357, column: 19, scope: !381)
!387 = !DILocation(line: 357, column: 4, scope: !381)
!388 = !DILocation(line: 356, column: 20, scope: !389)
!389 = !DILexicalBlockFile(scope: !381, file: !35, discriminator: 1)
!390 = !DILocation(line: 355, column: 39, scope: !391)
!391 = !DILexicalBlockFile(scope: !377, file: !35, discriminator: 2)
!392 = !DILocation(line: 355, column: 2, scope: !391)
!393 = distinct !{!393, !394}
!394 = !DILocation(line: 355, column: 2, scope: !349)
!395 = !DILocation(line: 358, column: 1, scope: !349)
!396 = distinct !DISubprogram(name: "set_force_option", scope: !35, file: !35, line: 361, type: !397, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399, !55}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdinfo", file: !402, line: 38, size: 512, align: 64, elements: !403)
!402 = !DIFile(filename: "../lib/dpkg/options.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!403 = !{!404, !405, !406, !407, !409, !411, !413, !414, !415}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "olong", scope: !401, file: !402, line: 39, baseType: !55, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "oshort", scope: !401, file: !402, line: 40, baseType: !57, size: 8, align: 8, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "takesvalue", scope: !401, file: !402, line: 48, baseType: !44, size: 32, align: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "iassignto", scope: !401, file: !402, line: 49, baseType: !408, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sassignto", scope: !401, file: !402, line: 50, baseType: !410, size: 64, align: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !401, file: !402, line: 51, baseType: !412, size: 64, align: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arg_int", scope: !401, file: !402, line: 53, baseType: !44, size: 32, align: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_ptr", scope: !401, file: !402, line: 54, baseType: !45, size: 64, align: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !401, file: !402, line: 56, baseType: !416, size: 64, align: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "action_func", file: !402, line: 36, baseType: !418)
!418 = !DISubroutineType(types: !419)
!419 = !{!44, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!422 = !DILocalVariable(name: "cip", arg: 1, scope: !396, file: !35, line: 361, type: !399)
!423 = !DILocation(line: 361, column: 40, scope: !396)
!424 = !DILocalVariable(name: "value", arg: 2, scope: !396, file: !35, line: 361, type: !55)
!425 = !DILocation(line: 361, column: 57, scope: !396)
!426 = !DILocalVariable(name: "set", scope: !396, file: !35, line: 363, type: !69)
!427 = !DILocation(line: 363, column: 6, scope: !396)
!428 = !DILocation(line: 363, column: 12, scope: !396)
!429 = !DILocation(line: 363, column: 17, scope: !396)
!430 = !DILocation(line: 365, column: 14, scope: !396)
!431 = !DILocation(line: 365, column: 21, scope: !396)
!432 = !DILocation(line: 365, column: 2, scope: !396)
!433 = !DILocation(line: 366, column: 1, scope: !396)
!434 = distinct !DISubprogram(name: "reset_force_option", scope: !35, file: !35, line: 369, type: !397, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!435 = !DILocalVariable(name: "cip", arg: 1, scope: !434, file: !35, line: 369, type: !399)
!436 = !DILocation(line: 369, column: 42, scope: !434)
!437 = !DILocalVariable(name: "value", arg: 2, scope: !434, file: !35, line: 369, type: !55)
!438 = !DILocation(line: 369, column: 59, scope: !434)
!439 = !DILocation(line: 371, column: 14, scope: !434)
!440 = !DILocation(line: 371, column: 19, scope: !434)
!441 = !DILocation(line: 371, column: 2, scope: !434)
!442 = !DILocation(line: 372, column: 1, scope: !434)
!443 = distinct !DISubprogram(name: "forcibleerr", scope: !35, file: !35, line: 375, type: !444, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !44, !55, null}
!446 = !DILocalVariable(name: "forceflag", arg: 1, scope: !443, file: !35, line: 375, type: !44)
!447 = !DILocation(line: 375, column: 17, scope: !443)
!448 = !DILocalVariable(name: "fmt", arg: 2, scope: !443, file: !35, line: 375, type: !55)
!449 = !DILocation(line: 375, column: 40, scope: !443)
!450 = !DILocalVariable(name: "args", scope: !443, file: !35, line: 377, type: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !452, line: 98, baseType: !453)
!452 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/dpkg/[task]src--dpkg")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !452, line: 40, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 377, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 192, align: 64, elements: !463)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 377, size: 192, align: 64, elements: !457)
!457 = !{!458, !460, !461, !462}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !456, file: !1, line: 377, baseType: !459, size: 32, align: 32)
!459 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !456, file: !1, line: 377, baseType: !459, size: 32, align: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !456, file: !1, line: 377, baseType: !45, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !456, file: !1, line: 377, baseType: !45, size: 64, align: 64, offset: 128)
!463 = !{!464}
!464 = !DISubrange(count: 1)
!465 = !DILocation(line: 377, column: 10, scope: !443)
!466 = !DILocation(line: 379, column: 1, scope: !443)
!467 = !DILocation(line: 380, column: 15, scope: !468)
!468 = distinct !DILexicalBlock(scope: !443, file: !35, line: 380, column: 6)
!469 = !DILocation(line: 380, column: 6, scope: !468)
!470 = !DILocation(line: 380, column: 6, scope: !443)
!471 = !DILocation(line: 381, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !35, line: 380, column: 27)
!473 = !DILocation(line: 381, column: 3, scope: !474)
!474 = !DILexicalBlockFile(scope: !472, file: !35, discriminator: 1)
!475 = !DILocation(line: 382, column: 12, scope: !472)
!476 = !DILocation(line: 382, column: 17, scope: !472)
!477 = !DILocation(line: 382, column: 3, scope: !472)
!478 = !DILocation(line: 383, column: 2, scope: !472)
!479 = !DILocation(line: 384, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !468, file: !35, line: 383, column: 9)
!481 = !DILocation(line: 384, column: 16, scope: !480)
!482 = !DILocation(line: 384, column: 3, scope: !480)
!483 = !DILocation(line: 386, column: 1, scope: !443)
!484 = !DILocation(line: 387, column: 1, scope: !443)
!485 = distinct !DISubprogram(name: "forcible_nonroot_error", scope: !35, file: !35, line: 390, type: !486, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!486 = !DISubroutineType(types: !487)
!487 = !{!44, !44}
!488 = !DILocalVariable(name: "rc", arg: 1, scope: !485, file: !35, line: 390, type: !44)
!489 = !DILocation(line: 390, column: 28, scope: !485)
!490 = !DILocation(line: 392, column: 6, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !35, line: 392, column: 6)
!492 = !DILocation(line: 392, column: 31, scope: !491)
!493 = !DILocation(line: 392, column: 35, scope: !494)
!494 = !DILexicalBlockFile(scope: !491, file: !35, discriminator: 1)
!495 = !DILocation(line: 392, column: 34, scope: !494)
!496 = !DILocation(line: 392, column: 39, scope: !494)
!497 = !DILocation(line: 392, column: 6, scope: !494)
!498 = !DILocation(line: 393, column: 3, scope: !491)
!499 = !DILocation(line: 394, column: 9, scope: !485)
!500 = !DILocation(line: 394, column: 2, scope: !485)
!501 = !DILocation(line: 395, column: 1, scope: !485)
!502 = distinct !DISubprogram(name: "print_forceinfo_line", scope: !35, file: !35, line: 258, type: !503, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !44, !55, !55}
!505 = !DILocalVariable(name: "type", arg: 1, scope: !502, file: !35, line: 258, type: !44)
!506 = !DILocation(line: 258, column: 26, scope: !502)
!507 = !DILocalVariable(name: "name", arg: 2, scope: !502, file: !35, line: 258, type: !55)
!508 = !DILocation(line: 258, column: 44, scope: !502)
!509 = !DILocalVariable(name: "desc", arg: 3, scope: !502, file: !35, line: 258, type: !55)
!510 = !DILocation(line: 258, column: 62, scope: !502)
!511 = !DILocation(line: 260, column: 42, scope: !502)
!512 = !DILocation(line: 260, column: 28, scope: !502)
!513 = !DILocation(line: 260, column: 49, scope: !502)
!514 = !DILocation(line: 260, column: 55, scope: !502)
!515 = !DILocation(line: 260, column: 2, scope: !516)
!516 = !DILexicalBlockFile(scope: !502, file: !35, discriminator: 1)
!517 = !DILocation(line: 261, column: 1, scope: !502)
!518 = distinct !DISubprogram(name: "forcetype_str", scope: !35, file: !35, line: 50, type: !519, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!519 = !DISubroutineType(types: !520)
!520 = !{!55, !34}
!521 = !DILocalVariable(name: "type", arg: 1, scope: !518, file: !35, line: 50, type: !34)
!522 = !DILocation(line: 50, column: 30, scope: !518)
!523 = !DILocation(line: 52, column: 10, scope: !518)
!524 = !DILocation(line: 52, column: 2, scope: !518)
!525 = !DILocation(line: 54, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !35, line: 52, column: 16)
!527 = !DILocation(line: 56, column: 3, scope: !526)
!528 = !DILocation(line: 58, column: 3, scope: !526)
!529 = !DILocation(line: 60, column: 68, scope: !526)
!530 = !DILocation(line: 60, column: 3, scope: !526)
!531 = !DILocation(line: 62, column: 1, scope: !518)
