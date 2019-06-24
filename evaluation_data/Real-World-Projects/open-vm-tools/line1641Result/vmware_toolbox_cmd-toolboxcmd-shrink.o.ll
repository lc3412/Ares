; ModuleID = './vmware_toolbox_cmd-toolboxcmd-shrink.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-shrink.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Wiper_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.WiperPartition_List = type { %struct.DblLnkLst_Links }
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.WiperPartition = type { [256 x i8], i32, i8, i8*, %struct.DblLnkLst_Links }

@optind = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"@&!*@*@(arg.mountpoint)mount point\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wipe\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"shrinkonly\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.7 = private unnamed_addr constant [306 x i8] c"@&!*@*@(help.disk)%s: perform disk shrink operations\0AUsage: %s %s <subcommand> [args]\0A\0ASubcommands:\0A   list: list available locations\0A   shrink <location>: wipes and shrinks a file system at the given location\0A   shrinkonly: shrinks all disks\0A   wipe <location>: wipes a file system at the given location\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"No shrinkable disks found\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [251 x i8] c"@&!*@*@(disk.shrink.disabled)Shrink disk is disabled for this virtual machine.\0A\0AShrinking is disabled for linked clones, parents of linked clones, \0Apre-allocated disks, snapshots, or due to other factors. \0ASee the User's manual for more information.\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"disk.wiper.enable\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [393 x i8] c"@&!*@*@(disk.shrink.unavailable)The shrink feature is not available,\0A\0Aeither because you are running an old version of a VMware product, or because too many communication channels are open.\0A\0AIf you are running an old version of a VMware product, you should consider upgrading.\0A\0AIf too many communication channels are open, you should power off your virtual machine and then power it back on.\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"@&!*@*@(disk.shrink.partition.error)Unable to collect partition data.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"toolboxcmd-shrink.c\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"@&!*@*@(disk.shrink.partition.notfound)Unable to find partition %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"@&!*@*@(disk.shrink.partition.unsupported)Partition %s is not shrinkable\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"%s cannot be wiped / shrunk\0A\00", align 1
@.str.21 = private unnamed_addr constant [128 x i8] c"@&!*@*@(disk.shrink.ignoreFreeSpaceWarnings)Please disregard any warnings about disk space for the duration of shrink process.\0A\00", align 1
@.str.22 = private unnamed_addr constant [124 x i8] c"@&!*@*@(disk.wipe.ignoreFreeSpaceWarnings)Please disregard any warnings about disk space for the duration of wipe process.\0A\00", align 1
@wiper = internal global %struct.Wiper_State* null, align 8
@.str.23 = private unnamed_addr constant [13 x i8] c"error.create\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"@&!*@*@(disk.wiper.file.error)Error, Unable to create wiper file.\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"@&!*@*@(error.message)Error: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"@&!*@*@(disk.wiper.progress)\0DProgress: %d\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c">%*c\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Shrinking skipped.\0A\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"@&!*@*@(disk.shrink.incomplete)Shrinking not completed.\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"@&!*@*@(disk.shrink.canceled)Disk shrink canceled.\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"disk.shrink\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"@&!*@*@(disk.shrink.complete)Disk shrinking complete.\0A\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"@&!*@*@(disk.shrink.error)Error while shrinking: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Disk_Command(i8**, i32, i32) #0 !dbg !80 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !88, metadata !89), !dbg !90
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !91, metadata !89), !dbg !92
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !93, metadata !89), !dbg !94
  %8 = load i32, i32* @optind, align 4, !dbg !95
  %9 = sext i32 %8 to i64, !dbg !97
  %10 = load i8**, i8*** %5, align 8, !dbg !97
  %11 = getelementptr inbounds i8*, i8** %10, i64 %9, !dbg !97
  %12 = load i8*, i8** %11, align 8, !dbg !97
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8, !dbg !98
  %14 = icmp eq i32 %13, 0, !dbg !99
  br i1 %14, label %15, label %17, !dbg !100

; <label>:15:                                     ; preds = %3
  %16 = call i32 @ShrinkList(), !dbg !101
  store i32 %16, i32* %4, align 4, !dbg !103
  br label %95, !dbg !103

; <label>:17:                                     ; preds = %3
  %18 = load i32, i32* @optind, align 4, !dbg !104
  %19 = sext i32 %18 to i64, !dbg !106
  %20 = load i8**, i8*** %5, align 8, !dbg !106
  %21 = getelementptr inbounds i8*, i8** %20, i64 %19, !dbg !106
  %22 = load i8*, i8** %21, align 8, !dbg !106
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !107
  %24 = icmp eq i32 %23, 0, !dbg !108
  br i1 %24, label %25, label %44, !dbg !109

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* @optind, align 4, !dbg !110
  %27 = add nsw i32 %26, 1, !dbg !110
  store i32 %27, i32* @optind, align 4, !dbg !110
  %28 = load i32, i32* %6, align 4, !dbg !113
  %29 = icmp sge i32 %27, %28, !dbg !114
  br i1 %29, label %30, label %35, !dbg !115

; <label>:30:                                     ; preds = %25
  %31 = load i8**, i8*** %5, align 8, !dbg !116
  %32 = getelementptr inbounds i8*, i8** %31, i64 0, !dbg !116
  %33 = load i8*, i8** %32, align 8, !dbg !116
  %34 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0)), !dbg !118
  call void @ToolsCmd_MissingEntityError(i8* %33, i8* %34), !dbg !119
  br label %43, !dbg !121

; <label>:35:                                     ; preds = %25
  %36 = load i32, i32* @optind, align 4, !dbg !122
  %37 = sext i32 %36 to i64, !dbg !124
  %38 = load i8**, i8*** %5, align 8, !dbg !124
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37, !dbg !124
  %40 = load i8*, i8** %39, align 8, !dbg !124
  %41 = load i32, i32* %7, align 4, !dbg !125
  %42 = call i32 @ShrinkDoWipeAndShrink(i8* %40, i32 %41, i32 1), !dbg !126
  store i32 %42, i32* %4, align 4, !dbg !127
  br label %95, !dbg !127

; <label>:43:                                     ; preds = %30
  br label %93, !dbg !128

; <label>:44:                                     ; preds = %17
  %45 = load i32, i32* @optind, align 4, !dbg !129
  %46 = sext i32 %45 to i64, !dbg !132
  %47 = load i8**, i8*** %5, align 8, !dbg !132
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46, !dbg !132
  %49 = load i8*, i8** %48, align 8, !dbg !132
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !133
  %51 = icmp eq i32 %50, 0, !dbg !134
  br i1 %51, label %52, label %71, !dbg !133

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* @optind, align 4, !dbg !135
  %54 = add nsw i32 %53, 1, !dbg !135
  store i32 %54, i32* @optind, align 4, !dbg !135
  %55 = load i32, i32* %6, align 4, !dbg !138
  %56 = icmp sge i32 %54, %55, !dbg !139
  br i1 %56, label %57, label %62, !dbg !140

; <label>:57:                                     ; preds = %52
  %58 = load i8**, i8*** %5, align 8, !dbg !141
  %59 = getelementptr inbounds i8*, i8** %58, i64 0, !dbg !141
  %60 = load i8*, i8** %59, align 8, !dbg !141
  %61 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0)), !dbg !143
  call void @ToolsCmd_MissingEntityError(i8* %60, i8* %61), !dbg !144
  br label %70, !dbg !146

; <label>:62:                                     ; preds = %52
  %63 = load i32, i32* @optind, align 4, !dbg !147
  %64 = sext i32 %63 to i64, !dbg !149
  %65 = load i8**, i8*** %5, align 8, !dbg !149
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64, !dbg !149
  %67 = load i8*, i8** %66, align 8, !dbg !149
  %68 = load i32, i32* %7, align 4, !dbg !150
  %69 = call i32 @ShrinkDoWipeAndShrink(i8* %67, i32 %68, i32 0), !dbg !151
  store i32 %69, i32* %4, align 4, !dbg !152
  br label %95, !dbg !152

; <label>:70:                                     ; preds = %57
  br label %92, !dbg !153

; <label>:71:                                     ; preds = %44
  %72 = load i32, i32* @optind, align 4, !dbg !154
  %73 = sext i32 %72 to i64, !dbg !157
  %74 = load i8**, i8*** %5, align 8, !dbg !157
  %75 = getelementptr inbounds i8*, i8** %74, i64 %73, !dbg !157
  %76 = load i8*, i8** %75, align 8, !dbg !157
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !158
  %78 = icmp eq i32 %77, 0, !dbg !159
  br i1 %78, label %79, label %81, !dbg !158

; <label>:79:                                     ; preds = %71
  %80 = call i32 @ShrinkDoAllDiskShrinkOnly(), !dbg !160
  store i32 %80, i32* %4, align 4, !dbg !162
  br label %95, !dbg !162

; <label>:81:                                     ; preds = %71
  %82 = load i8**, i8*** %5, align 8, !dbg !163
  %83 = getelementptr inbounds i8*, i8** %82, i64 0, !dbg !163
  %84 = load i8*, i8** %83, align 8, !dbg !163
  %85 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)), !dbg !165
  %86 = load i32, i32* @optind, align 4, !dbg !166
  %87 = sext i32 %86 to i64, !dbg !167
  %88 = load i8**, i8*** %5, align 8, !dbg !167
  %89 = getelementptr inbounds i8*, i8** %88, i64 %87, !dbg !167
  %90 = load i8*, i8** %89, align 8, !dbg !167
  call void @ToolsCmd_UnknownEntityError(i8* %84, i8* %85, i8* %90), !dbg !168
  br label %91

; <label>:91:                                     ; preds = %81
  br label %92

; <label>:92:                                     ; preds = %91, %70
  br label %93

; <label>:93:                                     ; preds = %92, %43
  br label %94

; <label>:94:                                     ; preds = %93
  store i32 64, i32* %4, align 4, !dbg !169
  br label %95, !dbg !169

; <label>:95:                                     ; preds = %94, %79, %62, %35, %15
  %96 = load i32, i32* %4, align 4, !dbg !170
  ret i32 %96, !dbg !170
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ShrinkList() #0 !dbg !171 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.WiperPartition_List, align 8
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.WiperPartition*, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition_List* %2, metadata !174, metadata !89), !dbg !179
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !180, metadata !89), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %4, metadata !183, metadata !89), !dbg !187
  store i32 0, i32* %4, align 4, !dbg !187
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !89), !dbg !190
  %7 = call i32 @ShrinkGetWiperState(), !dbg !191
  store i32 %7, i32* %5, align 4, !dbg !190
  %8 = call signext i8 @ShrinkGetMountPoints(%struct.WiperPartition_List* %2), !dbg !192
  %9 = icmp ne i8 %8, 0, !dbg !192
  br i1 %9, label %11, label %10, !dbg !194

; <label>:10:                                     ; preds = %0
  store i32 75, i32* %1, align 4, !dbg !195
  br label %53, !dbg !195

; <label>:11:                                     ; preds = %0
  %12 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %2, i32 0, i32 0, !dbg !197
  %13 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %12, i32 0, i32 1, !dbg !199
  %14 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %13, align 8, !dbg !199
  store %struct.DblLnkLst_Links* %14, %struct.DblLnkLst_Links** %3, align 8, !dbg !200
  br label %15, !dbg !201

; <label>:15:                                     ; preds = %43, %11
  %16 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !202
  %17 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %2, i32 0, i32 0, !dbg !205
  %18 = icmp ne %struct.DblLnkLst_Links* %16, %17, !dbg !206
  br i1 %18, label %19, label %47, !dbg !207

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %6, metadata !208, metadata !89), !dbg !210
  %20 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !211
  %21 = bitcast %struct.DblLnkLst_Links* %20 to i8*, !dbg !212
  %22 = getelementptr inbounds i8, i8* %21, i64 sub (i64 0, i64 ptrtoint (%struct.DblLnkLst_Links* getelementptr inbounds (%struct.WiperPartition, %struct.WiperPartition* null, i32 0, i32 4) to i64)), !dbg !213
  %23 = bitcast i8* %22 to %struct.WiperPartition*, !dbg !214
  store %struct.WiperPartition* %23, %struct.WiperPartition** %6, align 8, !dbg !210
  %24 = load %struct.WiperPartition*, %struct.WiperPartition** %6, align 8, !dbg !215
  %25 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %24, i32 0, i32 1, !dbg !217
  %26 = load i32, i32* %25, align 8, !dbg !217
  %27 = icmp ne i32 %26, 0, !dbg !218
  br i1 %27, label %28, label %42, !dbg !219

; <label>:28:                                     ; preds = %19
  %29 = load i32, i32* %5, align 4, !dbg !220
  %30 = icmp eq i32 %29, 2, !dbg !221
  br i1 %30, label %36, label %31, !dbg !222

; <label>:31:                                     ; preds = %28
  %32 = load %struct.WiperPartition*, %struct.WiperPartition** %6, align 8, !dbg !223
  %33 = call signext i8 @Wiper_IsWipeSupported(%struct.WiperPartition* %32), !dbg !225
  %34 = sext i8 %33 to i32, !dbg !225
  %35 = icmp ne i32 %34, 0, !dbg !225
  br i1 %35, label %36, label %42, !dbg !226

; <label>:36:                                     ; preds = %31, %28
  %37 = load %struct.WiperPartition*, %struct.WiperPartition** %6, align 8, !dbg !228
  %38 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %37, i32 0, i32 0, !dbg !230
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !228
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %39), !dbg !231
  %40 = load i32, i32* %4, align 4, !dbg !232
  %41 = add i32 %40, 1, !dbg !232
  store i32 %41, i32* %4, align 4, !dbg !232
  br label %42, !dbg !233

; <label>:42:                                     ; preds = %36, %31, %19
  br label %43, !dbg !234

; <label>:43:                                     ; preds = %42
  %44 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !235
  %45 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %44, i32 0, i32 1, !dbg !237
  %46 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %45, align 8, !dbg !237
  store %struct.DblLnkLst_Links* %46, %struct.DblLnkLst_Links** %3, align 8, !dbg !238
  br label %15, !dbg !239, !llvm.loop !240

; <label>:47:                                     ; preds = %15
  call void @WiperPartition_Close(%struct.WiperPartition_List* %2), !dbg !242
  %48 = load i32, i32* %4, align 4, !dbg !243
  %49 = icmp eq i32 %48, 0, !dbg !245
  br i1 %49, label %50, label %52, !dbg !246

; <label>:50:                                     ; preds = %47
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)), !dbg !247
  %51 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.11, i32 0, i32 0)), !dbg !249
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %51), !dbg !250
  store i32 75, i32* %1, align 4, !dbg !251
  br label %53, !dbg !251

; <label>:52:                                     ; preds = %47
  store i32 0, i32* %1, align 4, !dbg !252
  br label %53, !dbg !252

; <label>:53:                                     ; preds = %52, %50, %10
  %54 = load i32, i32* %1, align 4, !dbg !253
  ret i32 %54, !dbg !253
}

declare void @ToolsCmd_MissingEntityError(i8*, i8*) #3

declare i8* @VMTools_GetString(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ShrinkDoWipeAndShrink(i8*, i32, i32) #0 !dbg !254 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.WiperPartition*, align 8
  %12 = alloca %struct.WiperPartition_List, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.DblLnkLst_Links*, align 8
  %15 = alloca %struct.DblLnkLst_Links*, align 8
  %16 = alloca %struct.WiperPartition*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !257, metadata !89), !dbg !258
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !259, metadata !89), !dbg !260
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !261, metadata !89), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %8, metadata !263, metadata !89), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %9, metadata !265, metadata !89), !dbg !266
  store i32 0, i32* %9, align 4, !dbg !266
  call void @llvm.dbg.declare(metadata i8** %10, metadata !267, metadata !89), !dbg !269
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %11, metadata !270, metadata !89), !dbg !271
  store %struct.WiperPartition* null, %struct.WiperPartition** %11, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata %struct.WiperPartition_List* %12, metadata !272, metadata !89), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %13, metadata !274, metadata !89), !dbg !275
  %17 = call void (i32)* @signal(i32 2, void (i32)* @ShrinkWiperDestroy) #9, !dbg !276
  %18 = call signext i8 @ShrinkGetMountPoints(%struct.WiperPartition_List* %12), !dbg !277
  %19 = icmp ne i8 %18, 0, !dbg !277
  br i1 %19, label %20, label %60, !dbg !279

; <label>:20:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %14, metadata !280, metadata !89), !dbg !282
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %15, metadata !283, metadata !89), !dbg !284
  %21 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %12, i32 0, i32 0, !dbg !285
  %22 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %21, i32 0, i32 1, !dbg !287
  %23 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %22, align 8, !dbg !287
  store %struct.DblLnkLst_Links* %23, %struct.DblLnkLst_Links** %14, align 8, !dbg !288
  %24 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %14, align 8, !dbg !289
  %25 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %24, i32 0, i32 1, !dbg !290
  %26 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %25, align 8, !dbg !290
  store %struct.DblLnkLst_Links* %26, %struct.DblLnkLst_Links** %15, align 8, !dbg !291
  br label %27, !dbg !292

; <label>:27:                                     ; preds = %54, %20
  %28 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %14, align 8, !dbg !293
  %29 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %12, i32 0, i32 0, !dbg !296
  %30 = icmp ne %struct.DblLnkLst_Links* %28, %29, !dbg !297
  br i1 %30, label %31, label %59, !dbg !298

; <label>:31:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %16, metadata !299, metadata !89), !dbg !301
  %32 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %14, align 8, !dbg !302
  %33 = bitcast %struct.DblLnkLst_Links* %32 to i8*, !dbg !303
  %34 = getelementptr inbounds i8, i8* %33, i64 sub (i64 0, i64 ptrtoint (%struct.DblLnkLst_Links* getelementptr inbounds (%struct.WiperPartition, %struct.WiperPartition* null, i32 0, i32 4) to i64)), !dbg !304
  %35 = bitcast i8* %34 to %struct.WiperPartition*, !dbg !305
  store %struct.WiperPartition* %35, %struct.WiperPartition** %16, align 8, !dbg !301
  %36 = load %struct.WiperPartition*, %struct.WiperPartition** %16, align 8, !dbg !306
  %37 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %36, i32 0, i32 0, !dbg !308
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %37, i32 0, i32 0, !dbg !306
  %39 = load i8*, i8** %5, align 8, !dbg !309
  %40 = call i32 @strcmp(i8* %38, i8* %39) #8, !dbg !310
  %41 = icmp eq i32 %40, 0, !dbg !311
  br i1 %41, label %42, label %53, !dbg !312

; <label>:42:                                     ; preds = %31
  %43 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !313
  call void @WiperSinglePartition_Close(%struct.WiperPartition* %43), !dbg !315
  %44 = load %struct.WiperPartition*, %struct.WiperPartition** %16, align 8, !dbg !316
  store %struct.WiperPartition* %44, %struct.WiperPartition** %11, align 8, !dbg !317
  %45 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !318
  %46 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %45, i32 0, i32 4, !dbg !319
  call void @DblLnkLst_Unlink1(%struct.DblLnkLst_Links* %46), !dbg !320
  %47 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !321
  %48 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %47, i32 0, i32 1, !dbg !323
  %49 = load i32, i32* %48, align 8, !dbg !323
  %50 = icmp ne i32 %49, 0, !dbg !324
  br i1 %50, label %51, label %52, !dbg !325

; <label>:51:                                     ; preds = %42
  br label %59, !dbg !326

; <label>:52:                                     ; preds = %42
  br label %53, !dbg !328

; <label>:53:                                     ; preds = %52, %31
  br label %54, !dbg !329

; <label>:54:                                     ; preds = %53
  %55 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %15, align 8, !dbg !330
  store %struct.DblLnkLst_Links* %55, %struct.DblLnkLst_Links** %14, align 8, !dbg !332
  %56 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %14, align 8, !dbg !333
  %57 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %56, i32 0, i32 1, !dbg !334
  %58 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %57, align 8, !dbg !334
  store %struct.DblLnkLst_Links* %58, %struct.DblLnkLst_Links** %15, align 8, !dbg !335
  br label %27, !dbg !336, !llvm.loop !337

; <label>:59:                                     ; preds = %51, %27
  call void @WiperPartition_Close(%struct.WiperPartition_List* %12), !dbg !339
  br label %60, !dbg !340

; <label>:60:                                     ; preds = %59, %3
  %61 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !341
  %62 = icmp eq %struct.WiperPartition* %61, null, !dbg !343
  br i1 %62, label %63, label %66, !dbg !344

; <label>:63:                                     ; preds = %60
  %64 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i32 0, i32 0)), !dbg !345
  %65 = load i8*, i8** %5, align 8, !dbg !347
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %64, i8* %65), !dbg !348
  store i32 72, i32* %4, align 4, !dbg !350
  br label %167, !dbg !350

; <label>:66:                                     ; preds = %60
  %67 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !351
  %68 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %67, i32 0, i32 1, !dbg !353
  %69 = load i32, i32* %68, align 8, !dbg !353
  %70 = icmp eq i32 %69, 0, !dbg !354
  br i1 %70, label %71, label %76, !dbg !355

; <label>:71:                                     ; preds = %66
  %72 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0)), !dbg !356
  %73 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !358
  %74 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %73, i32 0, i32 0, !dbg !359
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %74, i32 0, i32 0, !dbg !358
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %72, i8* %75), !dbg !360
  store i32 69, i32* %13, align 4, !dbg !362
  br label %162, !dbg !363

; <label>:76:                                     ; preds = %66
  %77 = call i32 @ShrinkGetWiperState(), !dbg !364
  %78 = icmp ne i32 %77, 2, !dbg !366
  br i1 %78, label %79, label %86, !dbg !367

; <label>:79:                                     ; preds = %76
  %80 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !368
  %81 = call signext i8 @Wiper_IsWipeSupported(%struct.WiperPartition* %80), !dbg !370
  %82 = icmp ne i8 %81, 0, !dbg !370
  br i1 %82, label %86, label %83, !dbg !371

; <label>:83:                                     ; preds = %79
  %84 = load i8*, i8** %5, align 8, !dbg !372
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i8* %84), !dbg !374
  %85 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.11, i32 0, i32 0)), !dbg !375
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %85), !dbg !376
  store i32 75, i32* %13, align 4, !dbg !377
  br label %162, !dbg !378

; <label>:86:                                     ; preds = %79, %76
  %87 = load i32, i32* %7, align 4, !dbg !379
  %88 = icmp ne i32 %87, 0, !dbg !379
  br i1 %88, label %89, label %91, !dbg !381

; <label>:89:                                     ; preds = %86
  %90 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.21, i32 0, i32 0)), !dbg !382
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %90), !dbg !384
  br label %93, !dbg !386

; <label>:91:                                     ; preds = %86
  %92 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.22, i32 0, i32 0)), !dbg !387
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %92), !dbg !389
  br label %93

; <label>:93:                                     ; preds = %91, %89
  %94 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !391
  %95 = call %struct.Wiper_State* @Wiper_Start(%struct.WiperPartition* %94, i32 -2147483648), !dbg !392
  store %struct.Wiper_State* %95, %struct.Wiper_State** @wiper, align 8, !dbg !393
  br label %96, !dbg !394

; <label>:96:                                     ; preds = %141, %93
  %97 = load i32, i32* %9, align 4, !dbg !395
  %98 = icmp slt i32 %97, 100, !dbg !397
  br i1 %98, label %99, label %102, !dbg !398

; <label>:99:                                     ; preds = %96
  %100 = load %struct.Wiper_State*, %struct.Wiper_State** @wiper, align 8, !dbg !399
  %101 = icmp ne %struct.Wiper_State* %100, null, !dbg !401
  br label %102

; <label>:102:                                    ; preds = %99, %96
  %103 = phi i1 [ false, %96 ], [ %101, %99 ]
  br i1 %103, label %104, label %142, !dbg !402

; <label>:104:                                    ; preds = %102
  %105 = call i8* @Wiper_Next(%struct.Wiper_State** @wiper, i32* %9), !dbg !404
  store i8* %105, i8** %10, align 8, !dbg !406
  %106 = load i8*, i8** %10, align 8, !dbg !407
  %107 = call i64 @strlen(i8* %106) #8, !dbg !409
  %108 = icmp ugt i64 %107, 0, !dbg !410
  br i1 %108, label %109, label %119, !dbg !411

; <label>:109:                                    ; preds = %104
  %110 = load i8*, i8** %10, align 8, !dbg !412
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)) #8, !dbg !415
  %112 = icmp eq i32 %111, 0, !dbg !416
  br i1 %112, label %113, label %115, !dbg !417

; <label>:113:                                    ; preds = %109
  %114 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i32 0, i32 0)), !dbg !418
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %114), !dbg !420
  br label %118, !dbg !421

; <label>:115:                                    ; preds = %109
  %116 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0)), !dbg !422
  %117 = load i8*, i8** %10, align 8, !dbg !424
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %116, i8* %117), !dbg !425
  br label %118

; <label>:118:                                    ; preds = %115, %113
  store i32 75, i32* %13, align 4, !dbg !427
  br label %142, !dbg !428

; <label>:119:                                    ; preds = %104
  %120 = load i32, i32* %6, align 4, !dbg !429
  %121 = icmp ne i32 %120, 0, !dbg !429
  br i1 %121, label %141, label %122, !dbg !431

; <label>:122:                                    ; preds = %119
  %123 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0)), !dbg !432
  %124 = load i32, i32* %9, align 4, !dbg !434
  call void (i8*, ...) @g_print(i8* %123, i32 %124), !dbg !435
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0)), !dbg !437
  store i32 0, i32* %8, align 4, !dbg !438
  br label %125, !dbg !440

; <label>:125:                                    ; preds = %132, %122
  %126 = load i32, i32* %8, align 4, !dbg !441
  %127 = load i32, i32* %9, align 4, !dbg !444
  %128 = sdiv i32 %127, 10, !dbg !445
  %129 = icmp sle i32 %126, %128, !dbg !446
  br i1 %129, label %130, label %135, !dbg !447

; <label>:130:                                    ; preds = %125
  %131 = call i32 @putchar(i32 61), !dbg !448
  br label %132, !dbg !450

; <label>:132:                                    ; preds = %130
  %133 = load i32, i32* %8, align 4, !dbg !451
  %134 = add nsw i32 %133, 1, !dbg !451
  store i32 %134, i32* %8, align 4, !dbg !451
  br label %125, !dbg !453, !llvm.loop !454

; <label>:135:                                    ; preds = %125
  %136 = load i32, i32* %8, align 4, !dbg !456
  %137 = sub nsw i32 10, %136, !dbg !457
  %138 = add nsw i32 %137, 1, !dbg !458
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %138, i32 93), !dbg !459
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !460
  %140 = call i32 @fflush(%struct._IO_FILE* %139), !dbg !461
  br label %141, !dbg !462

; <label>:141:                                    ; preds = %135, %119
  br label %96, !dbg !463, !llvm.loop !465

; <label>:142:                                    ; preds = %118, %102
  store i32 0, i32* %13, align 4, !dbg !466
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)), !dbg !467
  %143 = load i32, i32* %9, align 4, !dbg !468
  %144 = icmp sge i32 %143, 100, !dbg !470
  br i1 %144, label %145, label %150, !dbg !471

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* %7, align 4, !dbg !472
  %147 = icmp ne i32 %146, 0, !dbg !472
  br i1 %147, label %148, label %150, !dbg !474

; <label>:148:                                    ; preds = %145
  %149 = call i32 @ShrinkDiskSendRPC(), !dbg !475
  store i32 %149, i32* %13, align 4, !dbg !477
  br label %156, !dbg !478

; <label>:150:                                    ; preds = %145, %142
  %151 = load i32, i32* %9, align 4, !dbg !479
  %152 = icmp slt i32 %151, 100, !dbg !482
  br i1 %152, label %153, label %154, !dbg !479

; <label>:153:                                    ; preds = %150
  store i32 75, i32* %13, align 4, !dbg !483
  br label %155, !dbg !485

; <label>:154:                                    ; preds = %150
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)), !dbg !486
  br label %155

; <label>:155:                                    ; preds = %154, %153
  br label %156

; <label>:156:                                    ; preds = %155, %148
  %157 = load i32, i32* %13, align 4, !dbg !488
  %158 = icmp ne i32 %157, 0, !dbg !490
  br i1 %158, label %159, label %161, !dbg !491

; <label>:159:                                    ; preds = %156
  %160 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i32 0, i32 0)), !dbg !492
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %160), !dbg !494
  br label %161, !dbg !495

; <label>:161:                                    ; preds = %159, %156
  br label %162, !dbg !496

; <label>:162:                                    ; preds = %161, %83, %71
  %163 = load %struct.WiperPartition*, %struct.WiperPartition** %11, align 8, !dbg !498
  call void @WiperSinglePartition_Close(%struct.WiperPartition* %163), !dbg !499
  %164 = load %struct.Wiper_State*, %struct.Wiper_State** @wiper, align 8, !dbg !500
  %165 = bitcast %struct.Wiper_State* %164 to i8*, !dbg !500
  call void @free(i8* %165) #9, !dbg !501
  store %struct.Wiper_State* null, %struct.Wiper_State** @wiper, align 8, !dbg !502
  %166 = load i32, i32* %13, align 4, !dbg !503
  store i32 %166, i32* %4, align 4, !dbg !504
  br label %167, !dbg !504

; <label>:167:                                    ; preds = %162, %63
  %168 = load i32, i32* %4, align 4, !dbg !505
  ret i32 %168, !dbg !505
}

; Function Attrs: nounwind uwtable
define internal i32 @ShrinkDoAllDiskShrinkOnly() #0 !dbg !506 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.WiperPartition_List, align 8
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.WiperPartition*, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition_List* %2, metadata !507, metadata !89), !dbg !508
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !509, metadata !89), !dbg !510
  call void @llvm.dbg.declare(metadata i8* %4, metadata !511, metadata !89), !dbg !512
  store i8 0, i8* %4, align 1, !dbg !512
  call void @llvm.dbg.declare(metadata i32* %5, metadata !513, metadata !89), !dbg !514
  %7 = call i32 @ShrinkGetWiperState(), !dbg !515
  store i32 %7, i32* %5, align 4, !dbg !514
  %8 = call void (i32)* @signal(i32 2, void (i32)* @ShrinkWiperDestroy) #9, !dbg !516
  %9 = call signext i8 @ShrinkGetMountPoints(%struct.WiperPartition_List* %2), !dbg !517
  %10 = icmp ne i8 %9, 0, !dbg !517
  br i1 %10, label %12, label %11, !dbg !519

; <label>:11:                                     ; preds = %0
  store i32 75, i32* %1, align 4, !dbg !520
  br label %50, !dbg !520

; <label>:12:                                     ; preds = %0
  %13 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %2, i32 0, i32 0, !dbg !522
  %14 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %13, i32 0, i32 1, !dbg !524
  %15 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %14, align 8, !dbg !524
  store %struct.DblLnkLst_Links* %15, %struct.DblLnkLst_Links** %3, align 8, !dbg !525
  br label %16, !dbg !526

; <label>:16:                                     ; preds = %39, %12
  %17 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !527
  %18 = getelementptr inbounds %struct.WiperPartition_List, %struct.WiperPartition_List* %2, i32 0, i32 0, !dbg !530
  %19 = icmp ne %struct.DblLnkLst_Links* %17, %18, !dbg !531
  br i1 %19, label %20, label %43, !dbg !532

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.WiperPartition** %6, metadata !533, metadata !89), !dbg !535
  %21 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !536
  %22 = bitcast %struct.DblLnkLst_Links* %21 to i8*, !dbg !537
  %23 = getelementptr inbounds i8, i8* %22, i64 sub (i64 0, i64 ptrtoint (%struct.DblLnkLst_Links* getelementptr inbounds (%struct.WiperPartition, %struct.WiperPartition* null, i32 0, i32 4) to i64)), !dbg !538
  %24 = bitcast i8* %23 to %struct.WiperPartition*, !dbg !539
  store %struct.WiperPartition* %24, %struct.WiperPartition** %6, align 8, !dbg !535
  %25 = load %struct.WiperPartition*, %struct.WiperPartition** %6, align 8, !dbg !540
  %26 = getelementptr inbounds %struct.WiperPartition, %struct.WiperPartition* %25, i32 0, i32 1, !dbg !542
  %27 = load i32, i32* %26, align 8, !dbg !542
  %28 = icmp ne i32 %27, 0, !dbg !543
  br i1 %28, label %29, label %38, !dbg !544

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %5, align 4, !dbg !545
  %31 = icmp eq i32 %30, 2, !dbg !546
  br i1 %31, label %37, label %32, !dbg !547

; <label>:32:                                     ; preds = %29
  %33 = load %struct.WiperPartition*, %struct.WiperPartition** %6, align 8, !dbg !548
  %34 = call signext i8 @Wiper_IsWipeSupported(%struct.WiperPartition* %33), !dbg !550
  %35 = sext i8 %34 to i32, !dbg !550
  %36 = icmp ne i32 %35, 0, !dbg !550
  br i1 %36, label %37, label %38, !dbg !551

; <label>:37:                                     ; preds = %32, %29
  store i8 1, i8* %4, align 1, !dbg !553
  br label %43, !dbg !555

; <label>:38:                                     ; preds = %32, %20
  br label %39, !dbg !556

; <label>:39:                                     ; preds = %38
  %40 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !557
  %41 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %40, i32 0, i32 1, !dbg !559
  %42 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %41, align 8, !dbg !559
  store %struct.DblLnkLst_Links* %42, %struct.DblLnkLst_Links** %3, align 8, !dbg !560
  br label %16, !dbg !561, !llvm.loop !562

; <label>:43:                                     ; preds = %37, %16
  call void @WiperPartition_Close(%struct.WiperPartition_List* %2), !dbg !564
  %44 = load i8, i8* %4, align 1, !dbg !565
  %45 = icmp ne i8 %44, 0, !dbg !565
  br i1 %45, label %48, label %46, !dbg !567

; <label>:46:                                     ; preds = %43
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0)), !dbg !568
  %47 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.11, i32 0, i32 0)), !dbg !570
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %47), !dbg !571
  store i32 75, i32* %1, align 4, !dbg !572
  br label %50, !dbg !572

; <label>:48:                                     ; preds = %43
  %49 = call i32 @ShrinkDiskSendRPC(), !dbg !573
  store i32 %49, i32* %1, align 4, !dbg !574
  br label %50, !dbg !574

; <label>:50:                                     ; preds = %48, %46, %11
  %51 = load i32, i32* %1, align 4, !dbg !575
  ret i32 %51, !dbg !575
}

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @Disk_Help(i8*, i8*) #0 !dbg !576 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !579, metadata !89), !dbg !580
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !581, metadata !89), !dbg !582
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([306 x i8], [306 x i8]* @.str.7, i32 0, i32 0)), !dbg !583
  %6 = load i8*, i8** %4, align 8, !dbg !584
  %7 = load i8*, i8** %3, align 8, !dbg !585
  %8 = load i8*, i8** %4, align 8, !dbg !586
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8), !dbg !587
  ret void, !dbg !589
}

declare void @g_print(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @ShrinkGetWiperState() #0 !dbg !590 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !593, metadata !89), !dbg !594
  store i8* null, i8** %1, align 8, !dbg !594
  call void @llvm.dbg.declare(metadata i64* %2, metadata !595, metadata !89), !dbg !599
  call void @llvm.dbg.declare(metadata i32* %3, metadata !600, metadata !89), !dbg !601
  store i32 0, i32* %3, align 4, !dbg !601
  %4 = call i32 @ToolsCmd_SendRPC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i64 17, i8** %1, i64* %2), !dbg !602
  %5 = icmp ne i32 %4, 0, !dbg !602
  br i1 %5, label %6, label %16, !dbg !604

; <label>:6:                                      ; preds = %0
  %7 = load i64, i64* %2, align 8, !dbg !605
  %8 = icmp eq i64 %7, 1, !dbg !608
  br i1 %8, label %9, label %14, !dbg !609

; <label>:9:                                      ; preds = %6
  %10 = load i8*, i8** %1, align 8, !dbg !610
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !612
  %12 = icmp eq i32 %11, 0, !dbg !613
  br i1 %12, label %13, label %14, !dbg !614

; <label>:13:                                     ; preds = %9
  store i32 2, i32* %3, align 4, !dbg !615
  br label %15, !dbg !617

; <label>:14:                                     ; preds = %9, %6
  store i32 1, i32* %3, align 4, !dbg !618
  br label %15

; <label>:15:                                     ; preds = %14, %13
  br label %16, !dbg !620

; <label>:16:                                     ; preds = %15, %0
  %17 = load i8*, i8** %1, align 8, !dbg !621
  call void @free(i8* %17) #9, !dbg !622
  %18 = load i32, i32* %3, align 4, !dbg !623
  ret i32 %18, !dbg !624
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ShrinkGetMountPoints(%struct.WiperPartition_List*) #0 !dbg !625 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.WiperPartition_List*, align 8
  %4 = alloca i32, align 4
  store %struct.WiperPartition_List* %0, %struct.WiperPartition_List** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.WiperPartition_List** %3, metadata !629, metadata !89), !dbg !630
  call void @llvm.dbg.declare(metadata i32* %4, metadata !631, metadata !89), !dbg !632
  %5 = call i32 @ShrinkGetWiperState(), !dbg !633
  store i32 %5, i32* %4, align 4, !dbg !632
  %6 = load i32, i32* %4, align 4, !dbg !634
  switch i32 %6, label %18 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
  ], !dbg !635

; <label>:7:                                      ; preds = %1
  %8 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([393 x i8], [393 x i8]* @.str.14, i32 0, i32 0)), !dbg !636
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %8), !dbg !638
  br label %19, !dbg !639

; <label>:9:                                      ; preds = %1
  %10 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.11, i32 0, i32 0)), !dbg !640
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %10), !dbg !641
  br label %19, !dbg !642

; <label>:11:                                     ; preds = %1
  %12 = load %struct.WiperPartition_List*, %struct.WiperPartition_List** %3, align 8, !dbg !643
  %13 = call signext i8 @WiperPartition_Open(%struct.WiperPartition_List* %12, i8 signext 1), !dbg !645
  %14 = icmp ne i8 %13, 0, !dbg !645
  br i1 %14, label %15, label %16, !dbg !646

; <label>:15:                                     ; preds = %11
  store i8 1, i8* %2, align 1, !dbg !647
  br label %20, !dbg !647

; <label>:16:                                     ; preds = %11
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i32 0, i32 0)), !dbg !649
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %17), !dbg !650
  br label %19, !dbg !651

; <label>:18:                                     ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i32 156) #10, !dbg !652
  unreachable, !dbg !652

; <label>:19:                                     ; preds = %16, %9, %7
  store i8 0, i8* %2, align 1, !dbg !653
  br label %20, !dbg !653

; <label>:20:                                     ; preds = %19, %15
  %21 = load i8, i8* %2, align 1, !dbg !654
  ret i8 %21, !dbg !654
}

declare signext i8 @Wiper_IsWipeSupported(%struct.WiperPartition*) #3

declare void @WiperPartition_Close(%struct.WiperPartition_List*) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare void @ToolsCmd_PrintErr(i8*, ...) #3

declare i32 @ToolsCmd_SendRPC(i8*, i64, i8**, i64*) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

declare signext i8 @WiperPartition_Open(%struct.WiperPartition_List*, i8 signext) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: nounwind uwtable
define internal void @ShrinkWiperDestroy(i32) #0 !dbg !655 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !658, metadata !89), !dbg !659
  %3 = load %struct.Wiper_State*, %struct.Wiper_State** @wiper, align 8, !dbg !660
  %4 = icmp ne %struct.Wiper_State* %3, null, !dbg !662
  br i1 %4, label %5, label %7, !dbg !663

; <label>:5:                                      ; preds = %1
  %6 = call i8* @Wiper_Cancel(%struct.Wiper_State** @wiper), !dbg !664
  store %struct.Wiper_State* null, %struct.Wiper_State** @wiper, align 8, !dbg !666
  br label %7, !dbg !667

; <label>:7:                                      ; preds = %5, %1
  %8 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i32 0, i32 0)), !dbg !668
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %8), !dbg !669
  call void @exit(i32 0) #11, !dbg !671
  unreachable, !dbg !671
                                                  ; No predecessors!
  ret void, !dbg !672
}

declare void @WiperSinglePartition_Close(%struct.WiperPartition*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Unlink1(%struct.DblLnkLst_Links*) #6 !dbg !673 {
  %2 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %2, metadata !676, metadata !89), !dbg !677
  %3 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !678
  %4 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %2, align 8, !dbg !679
  %5 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %4, i32 0, i32 1, !dbg !680
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !680
  call void @DblLnkLst_Unlink(%struct.DblLnkLst_Links* %3, %struct.DblLnkLst_Links* %6), !dbg !681
  ret void, !dbg !682
}

declare void @ToolsCmd_Print(i8*, ...) #3

declare %struct.Wiper_State* @Wiper_Start(%struct.WiperPartition*, i32) #3

declare i8* @Wiper_Next(%struct.Wiper_State**, i32*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @putchar(i32) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ShrinkDiskSendRPC() #0 !dbg !683 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !684, metadata !89), !dbg !685
  call void @llvm.dbg.declare(metadata i64* %3, metadata !686, metadata !89), !dbg !687
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)), !dbg !688
  %4 = call i32 @ToolsCmd_SendRPC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i64 11, i8** %2, i64* %3), !dbg !689
  %5 = icmp ne i32 %4, 0, !dbg !689
  br i1 %5, label %6, label %8, !dbg !691

; <label>:6:                                      ; preds = %0
  %7 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i32 0, i32 0)), !dbg !692
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* %7), !dbg !694
  store i32 0, i32* %1, align 4, !dbg !695
  br label %11, !dbg !695

; <label>:8:                                      ; preds = %0
  %9 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i32 0, i32 0)), !dbg !696
  %10 = load i8*, i8** %2, align 8, !dbg !697
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %9, i8* %10), !dbg !698
  store i32 75, i32* %1, align 4, !dbg !700
  br label %11, !dbg !700

; <label>:11:                                     ; preds = %8, %6
  %12 = load i32, i32* %1, align 4, !dbg !701
  ret i32 %12, !dbg !701
}

declare i8* @Wiper_Cancel(%struct.Wiper_State**) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @DblLnkLst_Unlink(%struct.DblLnkLst_Links*, %struct.DblLnkLst_Links*) #6 !dbg !702 {
  %3 = alloca %struct.DblLnkLst_Links*, align 8
  %4 = alloca %struct.DblLnkLst_Links*, align 8
  %5 = alloca %struct.DblLnkLst_Links*, align 8
  store %struct.DblLnkLst_Links* %0, %struct.DblLnkLst_Links** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %3, metadata !705, metadata !89), !dbg !706
  store %struct.DblLnkLst_Links* %1, %struct.DblLnkLst_Links** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %4, metadata !707, metadata !89), !dbg !708
  call void @llvm.dbg.declare(metadata %struct.DblLnkLst_Links** %5, metadata !709, metadata !89), !dbg !710
  %6 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !711
  %7 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %6, i32 0, i32 0, !dbg !712
  %8 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %7, align 8, !dbg !712
  store %struct.DblLnkLst_Links* %8, %struct.DblLnkLst_Links** %5, align 8, !dbg !713
  %9 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !714
  %10 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !715
  %11 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %10, i32 0, i32 0, !dbg !716
  %12 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %11, align 8, !dbg !716
  %13 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %3, align 8, !dbg !717
  %14 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %13, i32 0, i32 0, !dbg !718
  store %struct.DblLnkLst_Links* %12, %struct.DblLnkLst_Links** %14, align 8, !dbg !719
  %15 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %12, i32 0, i32 1, !dbg !720
  store %struct.DblLnkLst_Links* %9, %struct.DblLnkLst_Links** %15, align 8, !dbg !721
  %16 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !722
  %17 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %5, align 8, !dbg !723
  %18 = load %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links** %4, align 8, !dbg !724
  %19 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %18, i32 0, i32 0, !dbg !725
  store %struct.DblLnkLst_Links* %17, %struct.DblLnkLst_Links** %19, align 8, !dbg !726
  %20 = getelementptr inbounds %struct.DblLnkLst_Links, %struct.DblLnkLst_Links* %17, i32 0, i32 1, !dbg !727
  store %struct.DblLnkLst_Links* %16, %struct.DblLnkLst_Links** %20, align 8, !dbg !728
  ret void, !dbg !729
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!77, !78}
!llvm.ident = !{!79}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !37, globals: !72)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-shrink.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!2 = !{!3, !9, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 70, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "toolboxcmd-shrink.c", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "WIPER_UNAVAILABLE", value: 0)
!7 = !DIEnumerator(name: "WIPER_DISABLED", value: 1)
!8 = !DIEnumerator(name: "WIPER_ENABLED", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 42, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/wiper.h", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!12 = !DIEnumerator(name: "PARTITION_UNSUPPORTED", value: 0)
!13 = !DIEnumerator(name: "PARTITION_EXT2", value: 1)
!14 = !DIEnumerator(name: "PARTITION_EXT3", value: 2)
!15 = !DIEnumerator(name: "PARTITION_REISERFS", value: 3)
!16 = !DIEnumerator(name: "PARTITION_NTFS", value: 4)
!17 = !DIEnumerator(name: "PARTITION_FAT", value: 5)
!18 = !DIEnumerator(name: "PARTITION_UFS", value: 6)
!19 = !DIEnumerator(name: "PARTITION_PCFS", value: 7)
!20 = !DIEnumerator(name: "PARTITION_EXT4", value: 8)
!21 = !DIEnumerator(name: "PARTITION_HFS", value: 9)
!22 = !DIEnumerator(name: "PARTITION_ZFS", value: 10)
!23 = !DIEnumerator(name: "PARTITION_XFS", value: 11)
!24 = !DIEnumerator(name: "PARTITION_BTRFS", value: 12)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 51, size: 32, align: 32, elements: !27)
!26 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36}
!28 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!29 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!30 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!31 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!32 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!33 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!34 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!35 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!36 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!37 = !{!38, !64, !65, !68, !71}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition", file: !10, line: 86, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition", file: !10, line: 62, size: 2304, align: 64, elements: !41)
!41 = !{!42, !47, !49, !53, !56}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mountPoint", scope: !40, file: !10, line: 63, baseType: !43, size: 2048, align: 8)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, align: 8, elements: !45)
!44 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!46}
!46 = !DISubrange(count: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !10, line: 66, baseType: !48, size: 32, align: 32, offset: 2048)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_Type", file: !10, line: 56, baseType: !9)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "attemptUnmaps", scope: !40, file: !10, line: 72, baseType: !50, size: 8, align: 8, offset: 2080)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !51, line: 230, baseType: !52)
!51 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !40, file: !10, line: 78, baseType: !54, size: 64, align: 64, offset: 2112)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !40, file: !10, line: 85, baseType: !57, size: 128, align: 64, offset: 2176)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !58, line: 94, baseType: !59)
!58 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !58, line: 91, size: 128, align: 64, elements: !60)
!60 = !{!61, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !59, file: !58, line: 92, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !58, line: 93, baseType: !62, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !66, line: 119, baseType: !67)
!66 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!67 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !70, line: 46, baseType: !52)
!70 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!72 = !{!73}
!73 = distinct !DIGlobalVariable(name: "wiper", scope: !0, file: !4, line: 66, type: !74, isLocal: true, isDefinition: true, variable: %struct.Wiper_State** @wiper)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "Wiper_State", file: !10, line: 114, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "Wiper_State", file: !10, line: 113, flags: DIFlagFwdDecl)
!77 = !{i32 2, !"Dwarf Version", i32 4}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!80 = distinct !DISubprogram(name: "Disk_Command", scope: !4, file: !4, line: 536, type: !81, isLocal: false, isDefinition: true, scopeLine: 539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !84, !83, !85}
!83 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !70, line: 50, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !70, line: 49, baseType: !83)
!87 = !{}
!88 = !DILocalVariable(name: "argv", arg: 1, scope: !80, file: !4, line: 536, type: !84)
!89 = !DIExpression()
!90 = !DILocation(line: 536, column: 21, scope: !80)
!91 = !DILocalVariable(name: "argc", arg: 2, scope: !80, file: !4, line: 537, type: !83)
!92 = !DILocation(line: 537, column: 18, scope: !80)
!93 = !DILocalVariable(name: "quiet", arg: 3, scope: !80, file: !4, line: 538, type: !85)
!94 = !DILocation(line: 538, column: 23, scope: !80)
!95 = !DILocation(line: 540, column: 20, scope: !96)
!96 = distinct !DILexicalBlock(scope: !80, file: !4, line: 540, column: 8)
!97 = !DILocation(line: 540, column: 15, scope: !96)
!98 = !DILocation(line: 540, column: 8, scope: !96)
!99 = !DILocation(line: 540, column: 37, scope: !96)
!100 = !DILocation(line: 540, column: 8, scope: !80)
!101 = !DILocation(line: 541, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !4, line: 540, column: 43)
!103 = !DILocation(line: 541, column: 7, scope: !102)
!104 = !DILocation(line: 542, column: 27, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !4, line: 542, column: 15)
!106 = !DILocation(line: 542, column: 22, scope: !105)
!107 = !DILocation(line: 542, column: 15, scope: !105)
!108 = !DILocation(line: 542, column: 46, scope: !105)
!109 = !DILocation(line: 542, column: 15, scope: !96)
!110 = !DILocation(line: 543, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !4, line: 543, column: 11)
!112 = distinct !DILexicalBlock(scope: !105, file: !4, line: 542, column: 52)
!113 = !DILocation(line: 543, column: 23, scope: !111)
!114 = !DILocation(line: 543, column: 20, scope: !111)
!115 = !DILocation(line: 543, column: 11, scope: !112)
!116 = !DILocation(line: 544, column: 38, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !4, line: 543, column: 29)
!118 = !DILocation(line: 544, column: 47, scope: !117)
!119 = !DILocation(line: 544, column: 10, scope: !120)
!120 = !DILexicalBlockFile(scope: !117, file: !4, discriminator: 1)
!121 = !DILocation(line: 545, column: 7, scope: !117)
!122 = !DILocation(line: 546, column: 44, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !4, line: 545, column: 14)
!124 = !DILocation(line: 546, column: 39, scope: !123)
!125 = !DILocation(line: 546, column: 53, scope: !123)
!126 = !DILocation(line: 546, column: 17, scope: !123)
!127 = !DILocation(line: 546, column: 10, scope: !123)
!128 = !DILocation(line: 549, column: 4, scope: !112)
!129 = !DILocation(line: 549, column: 27, scope: !130)
!130 = !DILexicalBlockFile(scope: !131, file: !4, discriminator: 1)
!131 = distinct !DILexicalBlock(scope: !105, file: !4, line: 549, column: 15)
!132 = !DILocation(line: 549, column: 22, scope: !130)
!133 = !DILocation(line: 549, column: 15, scope: !130)
!134 = !DILocation(line: 549, column: 44, scope: !130)
!135 = !DILocation(line: 550, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !4, line: 550, column: 11)
!137 = distinct !DILexicalBlock(scope: !131, file: !4, line: 549, column: 50)
!138 = !DILocation(line: 550, column: 23, scope: !136)
!139 = !DILocation(line: 550, column: 20, scope: !136)
!140 = !DILocation(line: 550, column: 11, scope: !137)
!141 = !DILocation(line: 551, column: 38, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !4, line: 550, column: 29)
!143 = !DILocation(line: 551, column: 47, scope: !142)
!144 = !DILocation(line: 551, column: 10, scope: !145)
!145 = !DILexicalBlockFile(scope: !142, file: !4, discriminator: 1)
!146 = !DILocation(line: 552, column: 7, scope: !142)
!147 = !DILocation(line: 553, column: 44, scope: !148)
!148 = distinct !DILexicalBlock(scope: !136, file: !4, line: 552, column: 14)
!149 = !DILocation(line: 553, column: 39, scope: !148)
!150 = !DILocation(line: 553, column: 53, scope: !148)
!151 = !DILocation(line: 553, column: 17, scope: !148)
!152 = !DILocation(line: 553, column: 10, scope: !148)
!153 = !DILocation(line: 556, column: 4, scope: !137)
!154 = !DILocation(line: 556, column: 27, scope: !155)
!155 = !DILexicalBlockFile(scope: !156, file: !4, discriminator: 1)
!156 = distinct !DILexicalBlock(scope: !131, file: !4, line: 556, column: 15)
!157 = !DILocation(line: 556, column: 22, scope: !155)
!158 = !DILocation(line: 556, column: 15, scope: !155)
!159 = !DILocation(line: 556, column: 50, scope: !155)
!160 = !DILocation(line: 557, column: 14, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !4, line: 556, column: 56)
!162 = !DILocation(line: 557, column: 7, scope: !161)
!163 = !DILocation(line: 559, column: 35, scope: !164)
!164 = distinct !DILexicalBlock(scope: !156, file: !4, line: 558, column: 11)
!165 = !DILocation(line: 560, column: 35, scope: !164)
!166 = !DILocation(line: 561, column: 40, scope: !164)
!167 = !DILocation(line: 561, column: 35, scope: !164)
!168 = !DILocation(line: 559, column: 7, scope: !164)
!169 = !DILocation(line: 563, column: 4, scope: !80)
!170 = !DILocation(line: 564, column: 1, scope: !80)
!171 = distinct !DISubprogram(name: "ShrinkList", scope: !4, file: !4, line: 180, type: !172, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!172 = !DISubroutineType(types: !173)
!173 = !{!83}
!174 = !DILocalVariable(name: "plist", scope: !171, file: !4, line: 182, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperPartition_List", file: !10, line: 90, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WiperPartition_List", file: !10, line: 88, size: 128, align: 64, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !176, file: !10, line: 89, baseType: !57, size: 128, align: 64)
!179 = !DILocation(line: 182, column: 24, scope: !171)
!180 = !DILocalVariable(name: "curr", scope: !171, file: !4, line: 183, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!182 = !DILocation(line: 183, column: 21, scope: !171)
!183 = !DILocalVariable(name: "countShrink", scope: !171, file: !4, line: 184, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !51, line: 173, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !66, line: 51, baseType: !186)
!186 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!187 = !DILocation(line: 184, column: 11, scope: !171)
!188 = !DILocalVariable(name: "wstate", scope: !171, file: !4, line: 185, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "WiperState", file: !4, line: 74, baseType: !3)
!190 = !DILocation(line: 185, column: 15, scope: !171)
!191 = !DILocation(line: 185, column: 24, scope: !171)
!192 = !DILocation(line: 187, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !171, file: !4, line: 187, column: 8)
!194 = !DILocation(line: 187, column: 8, scope: !171)
!195 = !DILocation(line: 188, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !4, line: 187, column: 39)
!197 = !DILocation(line: 191, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !171, file: !4, line: 191, column: 4)
!199 = !DILocation(line: 191, column: 31, scope: !198)
!200 = !DILocation(line: 191, column: 14, scope: !198)
!201 = !DILocation(line: 191, column: 9, scope: !198)
!202 = !DILocation(line: 191, column: 37, scope: !203)
!203 = !DILexicalBlockFile(scope: !204, file: !4, discriminator: 1)
!204 = distinct !DILexicalBlock(scope: !198, file: !4, line: 191, column: 4)
!205 = !DILocation(line: 191, column: 53, scope: !203)
!206 = !DILocation(line: 191, column: 42, scope: !203)
!207 = !DILocation(line: 191, column: 4, scope: !203)
!208 = !DILocalVariable(name: "p", scope: !209, file: !4, line: 192, type: !38)
!209 = distinct !DILexicalBlock(scope: !204, file: !4, line: 191, column: 81)
!210 = !DILocation(line: 192, column: 23, scope: !209)
!211 = !DILocation(line: 192, column: 56, scope: !209)
!212 = !DILocation(line: 192, column: 47, scope: !209)
!213 = !DILocation(line: 192, column: 62, scope: !209)
!214 = !DILocation(line: 192, column: 28, scope: !209)
!215 = !DILocation(line: 193, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !209, file: !4, line: 193, column: 11)
!217 = !DILocation(line: 193, column: 14, scope: !216)
!218 = !DILocation(line: 193, column: 19, scope: !216)
!219 = !DILocation(line: 193, column: 44, scope: !216)
!220 = !DILocation(line: 194, column: 12, scope: !216)
!221 = !DILocation(line: 194, column: 19, scope: !216)
!222 = !DILocation(line: 194, column: 36, scope: !216)
!223 = !DILocation(line: 194, column: 61, scope: !224)
!224 = !DILexicalBlockFile(scope: !216, file: !4, discriminator: 1)
!225 = !DILocation(line: 194, column: 39, scope: !224)
!226 = !DILocation(line: 193, column: 11, scope: !227)
!227 = !DILexicalBlockFile(scope: !209, file: !4, discriminator: 1)
!228 = !DILocation(line: 195, column: 26, scope: !229)
!229 = distinct !DILexicalBlock(scope: !216, file: !4, line: 194, column: 66)
!230 = !DILocation(line: 195, column: 29, scope: !229)
!231 = !DILocation(line: 195, column: 10, scope: !229)
!232 = !DILocation(line: 196, column: 21, scope: !229)
!233 = !DILocation(line: 197, column: 7, scope: !229)
!234 = !DILocation(line: 198, column: 4, scope: !209)
!235 = !DILocation(line: 191, column: 68, scope: !236)
!236 = !DILexicalBlockFile(scope: !204, file: !4, discriminator: 2)
!237 = !DILocation(line: 191, column: 75, scope: !236)
!238 = !DILocation(line: 191, column: 65, scope: !236)
!239 = !DILocation(line: 191, column: 4, scope: !236)
!240 = distinct !{!240, !241}
!241 = !DILocation(line: 191, column: 4, scope: !171)
!242 = !DILocation(line: 200, column: 4, scope: !171)
!243 = !DILocation(line: 205, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !171, file: !4, line: 205, column: 8)
!245 = !DILocation(line: 205, column: 20, scope: !244)
!246 = !DILocation(line: 205, column: 8, scope: !171)
!247 = !DILocation(line: 206, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !4, line: 205, column: 26)
!249 = !DILocation(line: 208, column: 25, scope: !248)
!250 = !DILocation(line: 207, column: 7, scope: !248)
!251 = !DILocation(line: 209, column: 7, scope: !248)
!252 = !DILocation(line: 212, column: 4, scope: !171)
!253 = !DILocation(line: 213, column: 1, scope: !171)
!254 = distinct !DISubprogram(name: "ShrinkDoWipeAndShrink", scope: !4, file: !4, line: 338, type: !255, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!255 = !DISubroutineType(types: !256)
!256 = !{!83, !64, !85, !85}
!257 = !DILocalVariable(name: "mountPoint", arg: 1, scope: !254, file: !4, line: 338, type: !64)
!258 = !DILocation(line: 338, column: 29, scope: !254)
!259 = !DILocalVariable(name: "quiet", arg: 2, scope: !254, file: !4, line: 339, type: !85)
!260 = !DILocation(line: 339, column: 32, scope: !254)
!261 = !DILocalVariable(name: "performShrink", arg: 3, scope: !254, file: !4, line: 340, type: !85)
!262 = !DILocation(line: 340, column: 32, scope: !254)
!263 = !DILocalVariable(name: "i", scope: !254, file: !4, line: 342, type: !83)
!264 = !DILocation(line: 342, column: 8, scope: !254)
!265 = !DILocalVariable(name: "progress", scope: !254, file: !4, line: 343, type: !83)
!266 = !DILocation(line: 343, column: 8, scope: !254)
!267 = !DILocalVariable(name: "err", scope: !254, file: !4, line: 344, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!269 = !DILocation(line: 344, column: 19, scope: !254)
!270 = !DILocalVariable(name: "part", scope: !254, file: !4, line: 345, type: !38)
!271 = !DILocation(line: 345, column: 20, scope: !254)
!272 = !DILocalVariable(name: "plist", scope: !254, file: !4, line: 346, type: !175)
!273 = !DILocation(line: 346, column: 24, scope: !254)
!274 = !DILocalVariable(name: "rc", scope: !254, file: !4, line: 347, type: !83)
!275 = !DILocation(line: 347, column: 8, scope: !254)
!276 = !DILocation(line: 352, column: 4, scope: !254)
!277 = !DILocation(line: 355, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !254, file: !4, line: 355, column: 8)
!279 = !DILocation(line: 355, column: 8, scope: !254)
!280 = !DILocalVariable(name: "curr", scope: !281, file: !4, line: 356, type: !181)
!281 = distinct !DILexicalBlock(scope: !278, file: !4, line: 355, column: 38)
!282 = !DILocation(line: 356, column: 24, scope: !281)
!283 = !DILocalVariable(name: "nextElem", scope: !281, file: !4, line: 356, type: !181)
!284 = !DILocation(line: 356, column: 31, scope: !281)
!285 = !DILocation(line: 357, column: 27, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !4, line: 357, column: 7)
!287 = !DILocation(line: 357, column: 34, scope: !286)
!288 = !DILocation(line: 357, column: 17, scope: !286)
!289 = !DILocation(line: 357, column: 52, scope: !286)
!290 = !DILocation(line: 357, column: 59, scope: !286)
!291 = !DILocation(line: 357, column: 49, scope: !286)
!292 = !DILocation(line: 357, column: 12, scope: !286)
!293 = !DILocation(line: 357, column: 65, scope: !294)
!294 = !DILexicalBlockFile(scope: !295, file: !4, discriminator: 1)
!295 = distinct !DILexicalBlock(scope: !286, file: !4, line: 357, column: 7)
!296 = !DILocation(line: 357, column: 81, scope: !294)
!297 = !DILocation(line: 357, column: 70, scope: !294)
!298 = !DILocation(line: 357, column: 7, scope: !294)
!299 = !DILocalVariable(name: "p", scope: !300, file: !4, line: 358, type: !38)
!300 = distinct !DILexicalBlock(scope: !295, file: !4, line: 357, column: 130)
!301 = !DILocation(line: 358, column: 26, scope: !300)
!302 = !DILocation(line: 358, column: 59, scope: !300)
!303 = !DILocation(line: 358, column: 50, scope: !300)
!304 = !DILocation(line: 358, column: 65, scope: !300)
!305 = !DILocation(line: 358, column: 31, scope: !300)
!306 = !DILocation(line: 359, column: 21, scope: !307)
!307 = distinct !DILexicalBlock(scope: !300, file: !4, line: 359, column: 14)
!308 = !DILocation(line: 359, column: 24, scope: !307)
!309 = !DILocation(line: 359, column: 36, scope: !307)
!310 = !DILocation(line: 359, column: 14, scope: !307)
!311 = !DILocation(line: 359, column: 48, scope: !307)
!312 = !DILocation(line: 359, column: 14, scope: !300)
!313 = !DILocation(line: 360, column: 40, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !4, line: 359, column: 54)
!315 = !DILocation(line: 360, column: 13, scope: !314)
!316 = !DILocation(line: 361, column: 20, scope: !314)
!317 = !DILocation(line: 361, column: 18, scope: !314)
!318 = !DILocation(line: 366, column: 32, scope: !314)
!319 = !DILocation(line: 366, column: 38, scope: !314)
!320 = !DILocation(line: 366, column: 13, scope: !314)
!321 = !DILocation(line: 367, column: 17, scope: !322)
!322 = distinct !DILexicalBlock(scope: !314, file: !4, line: 367, column: 17)
!323 = !DILocation(line: 367, column: 23, scope: !322)
!324 = !DILocation(line: 367, column: 28, scope: !322)
!325 = !DILocation(line: 367, column: 17, scope: !314)
!326 = !DILocation(line: 368, column: 16, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !4, line: 367, column: 54)
!328 = !DILocation(line: 370, column: 10, scope: !314)
!329 = !DILocation(line: 371, column: 7, scope: !300)
!330 = !DILocation(line: 357, column: 95, scope: !331)
!331 = !DILexicalBlockFile(scope: !295, file: !4, discriminator: 2)
!332 = !DILocation(line: 357, column: 93, scope: !331)
!333 = !DILocation(line: 357, column: 117, scope: !331)
!334 = !DILocation(line: 357, column: 124, scope: !331)
!335 = !DILocation(line: 357, column: 114, scope: !331)
!336 = !DILocation(line: 357, column: 7, scope: !331)
!337 = distinct !{!337, !338}
!338 = !DILocation(line: 357, column: 7, scope: !281)
!339 = !DILocation(line: 372, column: 7, scope: !281)
!340 = !DILocation(line: 373, column: 4, scope: !281)
!341 = !DILocation(line: 375, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !254, file: !4, line: 375, column: 8)
!343 = !DILocation(line: 375, column: 13, scope: !342)
!344 = !DILocation(line: 375, column: 8, scope: !254)
!345 = !DILocation(line: 376, column: 25, scope: !346)
!346 = distinct !DILexicalBlock(scope: !342, file: !4, line: 375, column: 21)
!347 = !DILocation(line: 378, column: 25, scope: !346)
!348 = !DILocation(line: 376, column: 7, scope: !349)
!349 = !DILexicalBlockFile(scope: !346, file: !4, discriminator: 1)
!350 = !DILocation(line: 379, column: 7, scope: !346)
!351 = !DILocation(line: 382, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !254, file: !4, line: 382, column: 8)
!353 = !DILocation(line: 382, column: 14, scope: !352)
!354 = !DILocation(line: 382, column: 19, scope: !352)
!355 = !DILocation(line: 382, column: 8, scope: !254)
!356 = !DILocation(line: 383, column: 25, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !4, line: 382, column: 45)
!358 = !DILocation(line: 385, column: 25, scope: !357)
!359 = !DILocation(line: 385, column: 31, scope: !357)
!360 = !DILocation(line: 383, column: 7, scope: !361)
!361 = !DILexicalBlockFile(scope: !357, file: !4, discriminator: 1)
!362 = !DILocation(line: 386, column: 10, scope: !357)
!363 = !DILocation(line: 387, column: 7, scope: !357)
!364 = !DILocation(line: 394, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !254, file: !4, line: 394, column: 8)
!366 = !DILocation(line: 394, column: 30, scope: !365)
!367 = !DILocation(line: 394, column: 47, scope: !365)
!368 = !DILocation(line: 394, column: 73, scope: !369)
!369 = !DILexicalBlockFile(scope: !365, file: !4, discriminator: 1)
!370 = !DILocation(line: 394, column: 51, scope: !369)
!371 = !DILocation(line: 394, column: 8, scope: !369)
!372 = !DILocation(line: 395, column: 80, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !4, line: 394, column: 80)
!374 = !DILocation(line: 395, column: 7, scope: !373)
!375 = !DILocation(line: 397, column: 25, scope: !373)
!376 = !DILocation(line: 396, column: 7, scope: !373)
!377 = !DILocation(line: 398, column: 10, scope: !373)
!378 = !DILocation(line: 399, column: 7, scope: !373)
!379 = !DILocation(line: 409, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !254, file: !4, line: 409, column: 8)
!381 = !DILocation(line: 409, column: 8, scope: !254)
!382 = !DILocation(line: 410, column: 28, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !4, line: 409, column: 23)
!384 = !DILocation(line: 410, column: 7, scope: !385)
!385 = !DILexicalBlockFile(scope: !383, file: !4, discriminator: 1)
!386 = !DILocation(line: 413, column: 4, scope: !383)
!387 = !DILocation(line: 414, column: 28, scope: !388)
!388 = distinct !DILexicalBlock(scope: !380, file: !4, line: 413, column: 11)
!389 = !DILocation(line: 414, column: 7, scope: !390)
!390 = !DILexicalBlockFile(scope: !388, file: !4, discriminator: 1)
!391 = !DILocation(line: 419, column: 24, scope: !254)
!392 = !DILocation(line: 419, column: 12, scope: !254)
!393 = !DILocation(line: 419, column: 10, scope: !254)
!394 = !DILocation(line: 431, column: 4, scope: !254)
!395 = !DILocation(line: 431, column: 11, scope: !396)
!396 = !DILexicalBlockFile(scope: !254, file: !4, discriminator: 1)
!397 = !DILocation(line: 431, column: 20, scope: !396)
!398 = !DILocation(line: 431, column: 26, scope: !396)
!399 = !DILocation(line: 431, column: 29, scope: !400)
!400 = !DILexicalBlockFile(scope: !254, file: !4, discriminator: 2)
!401 = !DILocation(line: 431, column: 35, scope: !400)
!402 = !DILocation(line: 431, column: 4, scope: !403)
!403 = !DILexicalBlockFile(scope: !254, file: !4, discriminator: 3)
!404 = !DILocation(line: 432, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !254, file: !4, line: 431, column: 43)
!406 = !DILocation(line: 432, column: 11, scope: !405)
!407 = !DILocation(line: 433, column: 18, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !4, line: 433, column: 11)
!409 = !DILocation(line: 433, column: 11, scope: !408)
!410 = !DILocation(line: 433, column: 23, scope: !408)
!411 = !DILocation(line: 433, column: 11, scope: !405)
!412 = !DILocation(line: 434, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !4, line: 434, column: 14)
!414 = distinct !DILexicalBlock(scope: !408, file: !4, line: 433, column: 28)
!415 = !DILocation(line: 434, column: 14, scope: !413)
!416 = !DILocation(line: 434, column: 42, scope: !413)
!417 = !DILocation(line: 434, column: 14, scope: !414)
!418 = !DILocation(line: 436, column: 31, scope: !419)
!419 = distinct !DILexicalBlock(scope: !413, file: !4, line: 434, column: 48)
!420 = !DILocation(line: 435, column: 13, scope: !419)
!421 = !DILocation(line: 438, column: 10, scope: !419)
!422 = !DILocation(line: 439, column: 31, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !4, line: 438, column: 17)
!424 = !DILocation(line: 439, column: 113, scope: !423)
!425 = !DILocation(line: 439, column: 13, scope: !426)
!426 = !DILexicalBlockFile(scope: !423, file: !4, discriminator: 1)
!427 = !DILocation(line: 442, column: 13, scope: !414)
!428 = !DILocation(line: 443, column: 10, scope: !414)
!429 = !DILocation(line: 446, column: 12, scope: !430)
!430 = distinct !DILexicalBlock(scope: !405, file: !4, line: 446, column: 11)
!431 = !DILocation(line: 446, column: 11, scope: !405)
!432 = !DILocation(line: 447, column: 18, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !4, line: 446, column: 19)
!434 = !DILocation(line: 447, column: 109, scope: !433)
!435 = !DILocation(line: 447, column: 10, scope: !436)
!436 = !DILexicalBlockFile(scope: !433, file: !4, discriminator: 1)
!437 = !DILocation(line: 448, column: 10, scope: !433)
!438 = !DILocation(line: 449, column: 17, scope: !439)
!439 = distinct !DILexicalBlock(scope: !433, file: !4, line: 449, column: 10)
!440 = !DILocation(line: 449, column: 15, scope: !439)
!441 = !DILocation(line: 449, column: 22, scope: !442)
!442 = !DILexicalBlockFile(scope: !443, file: !4, discriminator: 1)
!443 = distinct !DILexicalBlock(scope: !439, file: !4, line: 449, column: 10)
!444 = !DILocation(line: 449, column: 27, scope: !442)
!445 = !DILocation(line: 449, column: 36, scope: !442)
!446 = !DILocation(line: 449, column: 24, scope: !442)
!447 = !DILocation(line: 449, column: 10, scope: !442)
!448 = !DILocation(line: 450, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !443, file: !4, line: 449, column: 47)
!450 = !DILocation(line: 451, column: 10, scope: !449)
!451 = !DILocation(line: 449, column: 43, scope: !452)
!452 = !DILexicalBlockFile(scope: !443, file: !4, discriminator: 2)
!453 = !DILocation(line: 449, column: 10, scope: !452)
!454 = distinct !{!454, !455}
!455 = !DILocation(line: 449, column: 10, scope: !433)
!456 = !DILocation(line: 452, column: 31, scope: !433)
!457 = !DILocation(line: 452, column: 29, scope: !433)
!458 = !DILocation(line: 452, column: 33, scope: !433)
!459 = !DILocation(line: 452, column: 10, scope: !433)
!460 = !DILocation(line: 453, column: 16, scope: !433)
!461 = !DILocation(line: 453, column: 10, scope: !433)
!462 = !DILocation(line: 454, column: 7, scope: !433)
!463 = !DILocation(line: 431, column: 4, scope: !464)
!464 = !DILexicalBlockFile(scope: !254, file: !4, discriminator: 4)
!465 = distinct !{!465, !394}
!466 = !DILocation(line: 464, column: 7, scope: !254)
!467 = !DILocation(line: 465, column: 4, scope: !254)
!468 = !DILocation(line: 466, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !254, file: !4, line: 466, column: 8)
!470 = !DILocation(line: 466, column: 17, scope: !469)
!471 = !DILocation(line: 466, column: 24, scope: !469)
!472 = !DILocation(line: 466, column: 27, scope: !473)
!473 = !DILexicalBlockFile(scope: !469, file: !4, discriminator: 1)
!474 = !DILocation(line: 466, column: 8, scope: !473)
!475 = !DILocation(line: 467, column: 12, scope: !476)
!476 = distinct !DILexicalBlock(scope: !469, file: !4, line: 466, column: 42)
!477 = !DILocation(line: 467, column: 10, scope: !476)
!478 = !DILocation(line: 468, column: 4, scope: !476)
!479 = !DILocation(line: 468, column: 15, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !4, discriminator: 1)
!481 = distinct !DILexicalBlock(scope: !469, file: !4, line: 468, column: 15)
!482 = !DILocation(line: 468, column: 24, scope: !480)
!483 = !DILocation(line: 469, column: 10, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !4, line: 468, column: 31)
!485 = !DILocation(line: 470, column: 4, scope: !484)
!486 = !DILocation(line: 471, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !4, line: 470, column: 11)
!488 = !DILocation(line: 474, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !254, file: !4, line: 474, column: 8)
!490 = !DILocation(line: 474, column: 11, scope: !489)
!491 = !DILocation(line: 474, column: 8, scope: !254)
!492 = !DILocation(line: 476, column: 25, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !4, line: 474, column: 27)
!494 = !DILocation(line: 475, column: 7, scope: !493)
!495 = !DILocation(line: 477, column: 4, scope: !493)
!496 = !DILocation(line: 474, column: 13, scope: !497)
!497 = !DILexicalBlockFile(scope: !489, file: !4, discriminator: 1)
!498 = !DILocation(line: 480, column: 31, scope: !254)
!499 = !DILocation(line: 480, column: 4, scope: !254)
!500 = !DILocation(line: 481, column: 9, scope: !254)
!501 = !DILocation(line: 481, column: 4, scope: !254)
!502 = !DILocation(line: 482, column: 10, scope: !254)
!503 = !DILocation(line: 483, column: 11, scope: !254)
!504 = !DILocation(line: 483, column: 4, scope: !254)
!505 = !DILocation(line: 484, column: 1, scope: !254)
!506 = distinct !DISubprogram(name: "ShrinkDoAllDiskShrinkOnly", scope: !4, file: !4, line: 274, type: !172, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!507 = !DILocalVariable(name: "plist", scope: !506, file: !4, line: 276, type: !175)
!508 = !DILocation(line: 276, column: 24, scope: !506)
!509 = !DILocalVariable(name: "curr", scope: !506, file: !4, line: 277, type: !181)
!510 = !DILocation(line: 277, column: 21, scope: !506)
!511 = !DILocalVariable(name: "canShrink", scope: !506, file: !4, line: 278, type: !50)
!512 = !DILocation(line: 278, column: 9, scope: !506)
!513 = !DILocalVariable(name: "wstate", scope: !506, file: !4, line: 279, type: !189)
!514 = !DILocation(line: 279, column: 15, scope: !506)
!515 = !DILocation(line: 279, column: 24, scope: !506)
!516 = !DILocation(line: 282, column: 4, scope: !506)
!517 = !DILocation(line: 285, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !506, file: !4, line: 285, column: 8)
!519 = !DILocation(line: 285, column: 8, scope: !506)
!520 = !DILocation(line: 286, column: 7, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !4, line: 285, column: 39)
!522 = !DILocation(line: 289, column: 24, scope: !523)
!523 = distinct !DILexicalBlock(scope: !506, file: !4, line: 289, column: 4)
!524 = !DILocation(line: 289, column: 31, scope: !523)
!525 = !DILocation(line: 289, column: 14, scope: !523)
!526 = !DILocation(line: 289, column: 9, scope: !523)
!527 = !DILocation(line: 289, column: 37, scope: !528)
!528 = !DILexicalBlockFile(scope: !529, file: !4, discriminator: 1)
!529 = distinct !DILexicalBlock(scope: !523, file: !4, line: 289, column: 4)
!530 = !DILocation(line: 289, column: 53, scope: !528)
!531 = !DILocation(line: 289, column: 42, scope: !528)
!532 = !DILocation(line: 289, column: 4, scope: !528)
!533 = !DILocalVariable(name: "p", scope: !534, file: !4, line: 290, type: !38)
!534 = distinct !DILexicalBlock(scope: !529, file: !4, line: 289, column: 81)
!535 = !DILocation(line: 290, column: 23, scope: !534)
!536 = !DILocation(line: 290, column: 56, scope: !534)
!537 = !DILocation(line: 290, column: 47, scope: !534)
!538 = !DILocation(line: 290, column: 62, scope: !534)
!539 = !DILocation(line: 290, column: 28, scope: !534)
!540 = !DILocation(line: 291, column: 11, scope: !541)
!541 = distinct !DILexicalBlock(scope: !534, file: !4, line: 291, column: 11)
!542 = !DILocation(line: 291, column: 14, scope: !541)
!543 = !DILocation(line: 291, column: 19, scope: !541)
!544 = !DILocation(line: 291, column: 44, scope: !541)
!545 = !DILocation(line: 292, column: 12, scope: !541)
!546 = !DILocation(line: 292, column: 19, scope: !541)
!547 = !DILocation(line: 292, column: 36, scope: !541)
!548 = !DILocation(line: 292, column: 61, scope: !549)
!549 = !DILexicalBlockFile(scope: !541, file: !4, discriminator: 1)
!550 = !DILocation(line: 292, column: 39, scope: !549)
!551 = !DILocation(line: 291, column: 11, scope: !552)
!552 = !DILexicalBlockFile(scope: !534, file: !4, discriminator: 1)
!553 = !DILocation(line: 293, column: 20, scope: !554)
!554 = distinct !DILexicalBlock(scope: !541, file: !4, line: 292, column: 66)
!555 = !DILocation(line: 294, column: 10, scope: !554)
!556 = !DILocation(line: 296, column: 4, scope: !534)
!557 = !DILocation(line: 289, column: 68, scope: !558)
!558 = !DILexicalBlockFile(scope: !529, file: !4, discriminator: 2)
!559 = !DILocation(line: 289, column: 75, scope: !558)
!560 = !DILocation(line: 289, column: 65, scope: !558)
!561 = !DILocation(line: 289, column: 4, scope: !558)
!562 = distinct !{!562, !563}
!563 = !DILocation(line: 289, column: 4, scope: !506)
!564 = !DILocation(line: 298, column: 4, scope: !506)
!565 = !DILocation(line: 304, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !506, file: !4, line: 304, column: 8)
!567 = !DILocation(line: 304, column: 8, scope: !506)
!568 = !DILocation(line: 305, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !4, line: 304, column: 20)
!570 = !DILocation(line: 307, column: 25, scope: !569)
!571 = !DILocation(line: 306, column: 7, scope: !569)
!572 = !DILocation(line: 308, column: 7, scope: !569)
!573 = !DILocation(line: 311, column: 11, scope: !506)
!574 = !DILocation(line: 311, column: 4, scope: !506)
!575 = !DILocation(line: 312, column: 1, scope: !506)
!576 = distinct !DISubprogram(name: "Disk_Help", scope: !4, file: !4, line: 584, type: !577, isLocal: false, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !54, !54}
!579 = !DILocalVariable(name: "progName", arg: 1, scope: !576, file: !4, line: 584, type: !54)
!580 = !DILocation(line: 584, column: 23, scope: !576)
!581 = !DILocalVariable(name: "cmd", arg: 2, scope: !576, file: !4, line: 585, type: !54)
!582 = !DILocation(line: 585, column: 23, scope: !576)
!583 = !DILocation(line: 587, column: 12, scope: !576)
!584 = !DILocation(line: 594, column: 12, scope: !576)
!585 = !DILocation(line: 594, column: 17, scope: !576)
!586 = !DILocation(line: 594, column: 27, scope: !576)
!587 = !DILocation(line: 587, column: 4, scope: !588)
!588 = !DILexicalBlockFile(scope: !576, file: !4, discriminator: 1)
!589 = !DILocation(line: 595, column: 1, scope: !576)
!590 = distinct !DISubprogram(name: "ShrinkGetWiperState", scope: !4, file: !4, line: 94, type: !591, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!591 = !DISubroutineType(types: !592)
!592 = !{!189}
!593 = !DILocalVariable(name: "result", scope: !590, file: !4, line: 96, type: !64)
!594 = !DILocation(line: 96, column: 10, scope: !590)
!595 = !DILocalVariable(name: "resultLen", scope: !590, file: !4, line: 97, type: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !597, line: 216, baseType: !598)
!597 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1641")
!598 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!599 = !DILocation(line: 97, column: 11, scope: !590)
!600 = !DILocalVariable(name: "state", scope: !590, file: !4, line: 98, type: !189)
!601 = !DILocation(line: 98, column: 15, scope: !590)
!602 = !DILocation(line: 100, column: 8, scope: !603)
!603 = distinct !DILexicalBlock(scope: !590, file: !4, line: 100, column: 8)
!604 = !DILocation(line: 100, column: 8, scope: !590)
!605 = !DILocation(line: 102, column: 11, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !4, line: 102, column: 11)
!607 = distinct !DILexicalBlock(scope: !603, file: !4, line: 101, column: 47)
!608 = !DILocation(line: 102, column: 21, scope: !606)
!609 = !DILocation(line: 102, column: 26, scope: !606)
!610 = !DILocation(line: 102, column: 36, scope: !611)
!611 = !DILexicalBlockFile(scope: !606, file: !4, discriminator: 1)
!612 = !DILocation(line: 102, column: 29, scope: !611)
!613 = !DILocation(line: 102, column: 49, scope: !611)
!614 = !DILocation(line: 102, column: 11, scope: !611)
!615 = !DILocation(line: 103, column: 16, scope: !616)
!616 = distinct !DILexicalBlock(scope: !606, file: !4, line: 102, column: 55)
!617 = !DILocation(line: 104, column: 7, scope: !616)
!618 = !DILocation(line: 105, column: 16, scope: !619)
!619 = distinct !DILexicalBlock(scope: !606, file: !4, line: 104, column: 14)
!620 = !DILocation(line: 107, column: 4, scope: !607)
!621 = !DILocation(line: 108, column: 9, scope: !590)
!622 = !DILocation(line: 108, column: 4, scope: !590)
!623 = !DILocation(line: 109, column: 11, scope: !590)
!624 = !DILocation(line: 109, column: 4, scope: !590)
!625 = distinct !DISubprogram(name: "ShrinkGetMountPoints", scope: !4, file: !4, line: 130, type: !626, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!626 = !DISubroutineType(types: !627)
!627 = !{!50, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!629 = !DILocalVariable(name: "pl", arg: 1, scope: !625, file: !4, line: 130, type: !628)
!630 = !DILocation(line: 130, column: 43, scope: !625)
!631 = !DILocalVariable(name: "state", scope: !625, file: !4, line: 132, type: !189)
!632 = !DILocation(line: 132, column: 15, scope: !625)
!633 = !DILocation(line: 132, column: 23, scope: !625)
!634 = !DILocation(line: 134, column: 12, scope: !625)
!635 = !DILocation(line: 134, column: 4, scope: !625)
!636 = !DILocation(line: 137, column: 25, scope: !637)
!637 = distinct !DILexicalBlock(scope: !625, file: !4, line: 134, column: 19)
!638 = !DILocation(line: 136, column: 7, scope: !637)
!639 = !DILocation(line: 138, column: 7, scope: !637)
!640 = !DILocation(line: 142, column: 25, scope: !637)
!641 = !DILocation(line: 141, column: 7, scope: !637)
!642 = !DILocation(line: 143, column: 7, scope: !637)
!643 = !DILocation(line: 146, column: 31, scope: !644)
!644 = distinct !DILexicalBlock(scope: !637, file: !4, line: 146, column: 11)
!645 = !DILocation(line: 146, column: 11, scope: !644)
!646 = !DILocation(line: 146, column: 11, scope: !637)
!647 = !DILocation(line: 147, column: 10, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !4, line: 146, column: 39)
!649 = !DILocation(line: 151, column: 25, scope: !637)
!650 = !DILocation(line: 150, column: 7, scope: !637)
!651 = !DILocation(line: 153, column: 7, scope: !637)
!652 = !DILocation(line: 156, column: 7, scope: !637)
!653 = !DILocation(line: 159, column: 4, scope: !625)
!654 = !DILocation(line: 160, column: 1, scope: !625)
!655 = distinct !DISubprogram(name: "ShrinkWiperDestroy", scope: !4, file: !4, line: 506, type: !656, isLocal: true, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !83}
!658 = !DILocalVariable(name: "signal", arg: 1, scope: !655, file: !4, line: 506, type: !83)
!659 = !DILocation(line: 506, column: 24, scope: !655)
!660 = !DILocation(line: 508, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !4, line: 508, column: 8)
!662 = !DILocation(line: 508, column: 14, scope: !661)
!663 = !DILocation(line: 508, column: 8, scope: !655)
!664 = !DILocation(line: 509, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !4, line: 508, column: 22)
!666 = !DILocation(line: 510, column: 13, scope: !665)
!667 = !DILocation(line: 511, column: 4, scope: !665)
!668 = !DILocation(line: 512, column: 25, scope: !655)
!669 = !DILocation(line: 512, column: 4, scope: !670)
!670 = !DILexicalBlockFile(scope: !655, file: !4, discriminator: 1)
!671 = !DILocation(line: 513, column: 4, scope: !655)
!672 = !DILocation(line: 514, column: 1, scope: !655)
!673 = distinct !DISubprogram(name: "DblLnkLst_Unlink1", scope: !58, file: !58, line: 210, type: !674, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !181}
!676 = !DILocalVariable(name: "l", arg: 1, scope: !673, file: !58, line: 210, type: !181)
!677 = !DILocation(line: 210, column: 36, scope: !673)
!678 = !DILocation(line: 212, column: 21, scope: !673)
!679 = !DILocation(line: 212, column: 24, scope: !673)
!680 = !DILocation(line: 212, column: 27, scope: !673)
!681 = !DILocation(line: 212, column: 4, scope: !673)
!682 = !DILocation(line: 213, column: 1, scope: !673)
!683 = distinct !DISubprogram(name: "ShrinkDiskSendRPC", scope: !4, file: !4, line: 235, type: !172, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!684 = !DILocalVariable(name: "result", scope: !683, file: !4, line: 237, type: !64)
!685 = !DILocation(line: 237, column: 10, scope: !683)
!686 = !DILocalVariable(name: "resultLen", scope: !683, file: !4, line: 238, type: !596)
!687 = !DILocation(line: 238, column: 11, scope: !683)
!688 = !DILocation(line: 240, column: 4, scope: !683)
!689 = !DILocation(line: 242, column: 8, scope: !690)
!690 = distinct !DILexicalBlock(scope: !683, file: !4, line: 242, column: 8)
!691 = !DILocation(line: 242, column: 8, scope: !683)
!692 = !DILocation(line: 245, column: 22, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !4, line: 243, column: 47)
!694 = !DILocation(line: 244, column: 7, scope: !693)
!695 = !DILocation(line: 246, column: 7, scope: !693)
!696 = !DILocation(line: 249, column: 22, scope: !683)
!697 = !DILocation(line: 249, column: 124, scope: !683)
!698 = !DILocation(line: 249, column: 4, scope: !699)
!699 = !DILexicalBlockFile(scope: !683, file: !4, discriminator: 1)
!700 = !DILocation(line: 250, column: 4, scope: !683)
!701 = !DILocation(line: 251, column: 1, scope: !683)
!702 = distinct !DISubprogram(name: "DblLnkLst_Unlink", scope: !58, file: !58, line: 182, type: !703, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !181, !181}
!705 = !DILocalVariable(name: "l1", arg: 1, scope: !702, file: !58, line: 182, type: !181)
!706 = !DILocation(line: 182, column: 35, scope: !702)
!707 = !DILocalVariable(name: "l2", arg: 2, scope: !702, file: !58, line: 183, type: !181)
!708 = !DILocation(line: 183, column: 35, scope: !702)
!709 = !DILocalVariable(name: "tmp", scope: !702, file: !58, line: 185, type: !181)
!710 = !DILocation(line: 185, column: 21, scope: !702)
!711 = !DILocation(line: 187, column: 10, scope: !702)
!712 = !DILocation(line: 187, column: 14, scope: !702)
!713 = !DILocation(line: 187, column: 8, scope: !702)
!714 = !DILocation(line: 188, column: 34, scope: !702)
!715 = !DILocation(line: 188, column: 16, scope: !702)
!716 = !DILocation(line: 188, column: 20, scope: !702)
!717 = !DILocation(line: 188, column: 5, scope: !702)
!718 = !DILocation(line: 188, column: 9, scope: !702)
!719 = !DILocation(line: 188, column: 14, scope: !702)
!720 = !DILocation(line: 188, column: 27, scope: !702)
!721 = !DILocation(line: 188, column: 32, scope: !702)
!722 = !DILocation(line: 189, column: 30, scope: !702)
!723 = !DILocation(line: 189, column: 16, scope: !702)
!724 = !DILocation(line: 189, column: 5, scope: !702)
!725 = !DILocation(line: 189, column: 9, scope: !702)
!726 = !DILocation(line: 189, column: 14, scope: !702)
!727 = !DILocation(line: 189, column: 23, scope: !702)
!728 = !DILocation(line: 189, column: 28, scope: !702)
!729 = !DILocation(line: 190, column: 1, scope: !702)
