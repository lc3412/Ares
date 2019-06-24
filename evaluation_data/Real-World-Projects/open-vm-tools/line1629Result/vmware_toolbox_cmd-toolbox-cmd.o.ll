; ModuleID = './vmware_toolbox_cmd-toolbox-cmd.o.i'
source_filename = "./vmware_toolbox_cmd-toolbox-cmd.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.CmdTable = type { i8*, i32 (i8**, i32, i32)*, i8, i8, void (i8*, i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._RpcChannel = type opaque
%struct._GKeyFile = type opaque

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@.str = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"@&!*@*@(error.missing)%s: Missing %s\0A\00", align 1
@gQuiet = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Error starting RPC channel.\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"@&!*@*@(error.unknown)%s: Unknown %s '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"@&!*@*@(error.novirtual)%s must be run inside a virtual machine.\0A\00", align 1
@options = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), align 8
@long_options = internal global [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [57 x i8] c"@&!*@*@(help.hint)Try '%s %s%s%s' for more information.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"10.3.0.5330\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"build-8931395\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@optind = external global i32, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"@&!*@*@(arg.command)command\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"@&!*@*@(error.noadmin.posix)%s: You must be root to perform %s operations.\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"hqv\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [430 x i8] c"@&!*@*@(help.main)Usage: %s <command> [options] [subcommand]\0AType '%s %s <command>' for help on a specific command.\0AType '%s -v' to see the VMware Tools version.\0AUse '-q' option to suppress stdout output.\0AMost commands take a subcommand.\0A\0AAvailable commands:\0A   config\0A   device\0A   disk (not available on all operating systems)\0A   info\0A   logging\0A   script\0A   stat\0A   timesync\0A   upgrade (not available on all operating systems)\0A\00", align 1
@commands = internal constant [9 x %struct.CmdTable] [%struct.CmdTable { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 (i8**, i32, i32)* @TimeSync_Command, i8 1, i8 0, void (i8*, i8*)* @TimeSync_Help }, %struct.CmdTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 (i8**, i32, i32)* @Script_Command, i8 0, i8 1, void (i8*, i8*)* @Script_Help }, %struct.CmdTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 (i8**, i32, i32)* @Disk_Command, i8 1, i8 1, void (i8*, i8*)* @Disk_Help }, %struct.CmdTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 (i8**, i32, i32)* @Stat_Command, i8 1, i8 0, void (i8*, i8*)* @Stat_Help }, %struct.CmdTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (i8**, i32, i32)* @Device_Command, i8 1, i8 0, void (i8*, i8*)* @Device_Help }, %struct.CmdTable { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 (i8**, i32, i32)* @Logging_Command, i8 1, i8 1, void (i8*, i8*)* @Logging_Help }, %struct.CmdTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 (i8**, i32, i32)* @Info_Command, i8 1, i8 1, void (i8*, i8*)* @Info_Help }, %struct.CmdTable { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 (i8**, i32, i32)* @Config_Command, i8 1, i8 1, void (i8*, i8*)* @Config_Help }, %struct.CmdTable { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (i8**, i32, i32)* @HelpCommand, i8 0, i8 0, void (i8*, i8*)* @ToolboxCmdHelp }], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"timesync\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"logging\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"config\00", align 1

; Function Attrs: nounwind uwtable
define void @ToolsCmd_MissingEntityError(i8*, i8*) #0 !dbg !80 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !82, metadata !83), !dbg !84
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !83), !dbg !86
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0)), !dbg !87
  %6 = load i8*, i8** %3, align 8, !dbg !88
  %7 = load i8*, i8** %4, align 8, !dbg !89
  call void (i8*, ...) @g_printerr(i8* %5, i8* %6, i8* %7), !dbg !90
  ret void, !dbg !92
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_printerr(i8*, ...) #2

declare i8* @VMTools_GetString(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ToolsCmd_Print(i8*, ...) #0 !dbg !93 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !96, metadata !83), !dbg !97
  %5 = load i32, i32* @gQuiet, align 4, !dbg !98
  %6 = icmp ne i32 %5, 0, !dbg !98
  br i1 %6, label %17, label %7, !dbg !100

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %3, metadata !101, metadata !83), !dbg !103
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !104, metadata !83), !dbg !120
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !121
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !121
  call void @llvm.va_start(i8* %9), !dbg !121
  %10 = load i8*, i8** %2, align 8, !dbg !122
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !123
  %12 = call i32 @g_vasprintf(i8** %3, i8* %10, %struct.__va_list_tag* %11), !dbg !124
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !125
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !125
  call void @llvm.va_end(i8* %14), !dbg !125
  %15 = load i8*, i8** %3, align 8, !dbg !126
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %15), !dbg !127
  %16 = load i8*, i8** %3, align 8, !dbg !128
  call void @g_free(i8* %16), !dbg !129
  br label %17, !dbg !130

; <label>:17:                                     ; preds = %7, %1
  ret void, !dbg !131
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare i32 @g_vasprintf(i8**, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare void @g_print(i8*, ...) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @ToolsCmd_PrintErr(i8*, ...) #0 !dbg !132 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !133, metadata !83), !dbg !134
  %5 = load i32, i32* @gQuiet, align 4, !dbg !135
  %6 = icmp ne i32 %5, 0, !dbg !135
  br i1 %6, label %17, label %7, !dbg !137

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i8** %3, metadata !138, metadata !83), !dbg !140
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %4, metadata !141, metadata !83), !dbg !142
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !143
  %9 = bitcast %struct.__va_list_tag* %8 to i8*, !dbg !143
  call void @llvm.va_start(i8* %9), !dbg !143
  %10 = load i8*, i8** %2, align 8, !dbg !144
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !145
  %12 = call i32 @g_vasprintf(i8** %3, i8* %10, %struct.__va_list_tag* %11), !dbg !146
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i32 0, i32 0, !dbg !147
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !147
  call void @llvm.va_end(i8* %14), !dbg !147
  %15 = load i8*, i8** %3, align 8, !dbg !148
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %15), !dbg !149
  %16 = load i8*, i8** %3, align 8, !dbg !150
  call void @g_free(i8* %16), !dbg !151
  br label %17, !dbg !152

; <label>:17:                                     ; preds = %7, %1
  ret void, !dbg !153
}

; Function Attrs: nounwind uwtable
define i32 @ToolsCmd_SendRPC(i8*, i64, i8**, i64*) #0 !dbg !154 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._RpcChannel*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !161, metadata !83), !dbg !162
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !163, metadata !83), !dbg !164
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !165, metadata !83), !dbg !166
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !167, metadata !83), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %9, metadata !169, metadata !83), !dbg !170
  %12 = load i8*, i8** %5, align 8, !dbg !171
  store i8* %12, i8** %9, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata %struct._RpcChannel** %10, metadata !172, metadata !83), !dbg !177
  %13 = call %struct._RpcChannel* @RpcChannel_New(), !dbg !178
  store %struct._RpcChannel* %13, %struct._RpcChannel** %10, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %11, metadata !179, metadata !83), !dbg !180
  %14 = load %struct._RpcChannel*, %struct._RpcChannel** %10, align 8, !dbg !181
  %15 = call i32 @RpcChannel_Start(%struct._RpcChannel* %14), !dbg !182
  store i32 %15, i32* %11, align 4, !dbg !180
  %16 = load i32, i32* %11, align 4, !dbg !183
  %17 = icmp ne i32 %16, 0, !dbg !183
  br i1 %17, label %19, label %18, !dbg !185

; <label>:18:                                     ; preds = %4
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)), !dbg !186
  br label %26, !dbg !188

; <label>:19:                                     ; preds = %4
  %20 = load %struct._RpcChannel*, %struct._RpcChannel** %10, align 8, !dbg !189
  %21 = load i8*, i8** %9, align 8, !dbg !190
  %22 = load i64, i64* %6, align 8, !dbg !191
  %23 = load i8**, i8*** %7, align 8, !dbg !192
  %24 = load i64*, i64** %8, align 8, !dbg !193
  %25 = call i32 @RpcChannel_Send(%struct._RpcChannel* %20, i8* %21, i64 %22, i8** %23, i64* %24), !dbg !194
  store i32 %25, i32* %11, align 4, !dbg !195
  br label %26, !dbg !196

; <label>:26:                                     ; preds = %19, %18
  %27 = load %struct._RpcChannel*, %struct._RpcChannel** %10, align 8, !dbg !197
  %28 = call i32 @RpcChannel_Destroy(%struct._RpcChannel* %27), !dbg !198
  %29 = load i32, i32* %11, align 4, !dbg !199
  ret i32 %29, !dbg !200
}

declare %struct._RpcChannel* @RpcChannel_New() #2

declare i32 @RpcChannel_Start(%struct._RpcChannel*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare i32 @RpcChannel_Send(%struct._RpcChannel*, i8*, i64, i8**, i64*) #2

declare i32 @RpcChannel_Destroy(%struct._RpcChannel*) #2

; Function Attrs: nounwind uwtable
define void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #0 !dbg !201 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !204, metadata !83), !dbg !205
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !206, metadata !83), !dbg !207
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !208, metadata !83), !dbg !209
  %7 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)), !dbg !210
  %8 = load i8*, i8** %4, align 8, !dbg !211
  %9 = load i8*, i8** %5, align 8, !dbg !212
  %10 = load i8*, i8** %6, align 8, !dbg !213
  call void (i8*, ...) @g_printerr(i8* %7, i8* %8, i8* %9, i8* %10), !dbg !214
  ret void, !dbg !216
}

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !217 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.CmdTable*, align 8
  %9 = alloca %struct._GKeyFile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !220, metadata !83), !dbg !221
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !222, metadata !83), !dbg !223
  call void @llvm.dbg.declare(metadata i8* %6, metadata !224, metadata !83), !dbg !225
  store i8 0, i8* %6, align 1, !dbg !225
  call void @llvm.dbg.declare(metadata i8* %7, metadata !226, metadata !83), !dbg !227
  store i8 0, i8* %7, align 1, !dbg !227
  call void @llvm.dbg.declare(metadata %struct.CmdTable** %8, metadata !228, metadata !83), !dbg !230
  store %struct.CmdTable* null, %struct.CmdTable** %8, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %9, metadata !231, metadata !83), !dbg !235
  store %struct._GKeyFile* null, %struct._GKeyFile** %9, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata i32* %10, metadata !236, metadata !83), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %11, metadata !238, metadata !83), !dbg !239
  store i32 1, i32* %11, align 4, !dbg !239
  %13 = load i32, i32* %4, align 4, !dbg !240
  call void @Unicode_Init(i32 %13, i8*** %5, i8*** null), !dbg !241
  %14 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)) #3, !dbg !242
  %15 = call i32 @VMTools_LoadConfig(i8* null, i32 0, %struct._GKeyFile** %9, i64* null), !dbg !243
  %16 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !244
  call void @VMTools_ConfigLogging(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._GKeyFile* %16, i32 0, i32 0), !dbg !245
  call void @VMTools_BindTextDomain(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* null, i8* null), !dbg !246
  %17 = call signext i8 @VmCheck_IsVirtualWorld(), !dbg !247
  %18 = icmp ne i8 %17, 0, !dbg !247
  br i1 %18, label %24, label %19, !dbg !249

; <label>:19:                                     ; preds = %2
  %20 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i32 0, i32 0)), !dbg !250
  %21 = load i8**, i8*** %5, align 8, !dbg !252
  %22 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !252
  %23 = load i8*, i8** %22, align 8, !dbg !252
  call void (i8*, ...) @g_printerr(i8* %20, i8* %23), !dbg !253
  br label %156, !dbg !255

; <label>:24:                                     ; preds = %2
  br label %25, !dbg !256

; <label>:25:                                     ; preds = %24, %44
  call void @llvm.dbg.declare(metadata i32* %12, metadata !257, metadata !83), !dbg !259
  store i32 0, i32* %12, align 4, !dbg !259
  %26 = load i32, i32* %4, align 4, !dbg !260
  %27 = load i8**, i8*** %5, align 8, !dbg !261
  %28 = load i8*, i8** @options, align 8, !dbg !262
  %29 = call i32 @getopt_long(i32 %26, i8** %27, i8* %28, %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @long_options, i32 0, i32 0), i32* %12) #3, !dbg !263
  store i32 %29, i32* %10, align 4, !dbg !264
  %30 = load i32, i32* %10, align 4, !dbg !265
  %31 = icmp eq i32 %30, -1, !dbg !267
  br i1 %31, label %32, label %33, !dbg !268

; <label>:32:                                     ; preds = %25
  br label %45, !dbg !269

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %10, align 4, !dbg !271
  switch i32 %34, label %43 [
    i32 104, label %35
    i32 118, label %36
    i32 113, label %37
    i32 63, label %38
  ], !dbg !272

; <label>:35:                                     ; preds = %33
  store i8 1, i8* %6, align 1, !dbg !273
  br label %44, !dbg !275

; <label>:36:                                     ; preds = %33
  store i8 1, i8* %7, align 1, !dbg !276
  br label %44, !dbg !277

; <label>:37:                                     ; preds = %33
  store i32 1, i32* @gQuiet, align 4, !dbg !278
  br label %44, !dbg !279

; <label>:38:                                     ; preds = %33
  %39 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0)), !dbg !280
  %40 = load i8**, i8*** %5, align 8, !dbg !281
  %41 = getelementptr inbounds i8*, i8** %40, i64 0, !dbg !281
  %42 = load i8*, i8** %41, align 8, !dbg !281
  call void (i8*, ...) @g_printerr(i8* %39, i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)), !dbg !282
  br label %156, !dbg !284

; <label>:43:                                     ; preds = %33
  br label %156, !dbg !285

; <label>:44:                                     ; preds = %37, %36, %35
  br label %25, !dbg !286, !llvm.loop !288

; <label>:45:                                     ; preds = %32
  %46 = load i8, i8* %7, align 1, !dbg !289
  %47 = icmp ne i8 %46, 0, !dbg !289
  br i1 %47, label %48, label %49, !dbg !291

; <label>:48:                                     ; preds = %45
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)), !dbg !292
  store i32 0, i32* %11, align 4, !dbg !294
  br label %155, !dbg !295

; <label>:49:                                     ; preds = %45
  %50 = load i8, i8* %6, align 1, !dbg !296
  %51 = icmp ne i8 %50, 0, !dbg !296
  br i1 %51, label %52, label %56, !dbg !296

; <label>:52:                                     ; preds = %49
  %53 = load i8**, i8*** %5, align 8, !dbg !299
  %54 = getelementptr inbounds i8*, i8** %53, i64 0, !dbg !299
  %55 = load i8*, i8** %54, align 8, !dbg !299
  call void @ToolboxCmdHelp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)), !dbg !301
  store i32 0, i32* %11, align 4, !dbg !302
  br label %154, !dbg !303

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* @optind, align 4, !dbg !304
  %58 = load i32, i32* %4, align 4, !dbg !307
  %59 = icmp sge i32 %57, %58, !dbg !308
  br i1 %59, label %60, label %65, !dbg !309

; <label>:60:                                     ; preds = %56
  %61 = load i8**, i8*** %5, align 8, !dbg !310
  %62 = getelementptr inbounds i8*, i8** %61, i64 0, !dbg !310
  %63 = load i8*, i8** %62, align 8, !dbg !310
  %64 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)), !dbg !312
  call void @ToolsCmd_MissingEntityError(i8* %63, i8* %64), !dbg !313
  store i32 64, i32* %11, align 4, !dbg !315
  br label %124, !dbg !316

; <label>:65:                                     ; preds = %56
  %66 = load i8**, i8*** %5, align 8, !dbg !317
  %67 = load i32, i32* %4, align 4, !dbg !320
  %68 = call %struct.CmdTable* @ParseCommand(i8** %66, i32 %67), !dbg !321
  store %struct.CmdTable* %68, %struct.CmdTable** %8, align 8, !dbg !322
  %69 = icmp eq %struct.CmdTable* %68, null, !dbg !323
  br i1 %69, label %70, label %80, !dbg !324

; <label>:70:                                     ; preds = %65
  %71 = load i8**, i8*** %5, align 8, !dbg !325
  %72 = getelementptr inbounds i8*, i8** %71, i64 0, !dbg !325
  %73 = load i8*, i8** %72, align 8, !dbg !325
  %74 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0)), !dbg !327
  %75 = load i32, i32* @optind, align 4, !dbg !328
  %76 = sext i32 %75 to i64, !dbg !329
  %77 = load i8**, i8*** %5, align 8, !dbg !329
  %78 = getelementptr inbounds i8*, i8** %77, i64 %76, !dbg !329
  %79 = load i8*, i8** %78, align 8, !dbg !329
  call void @ToolsCmd_UnknownEntityError(i8* %73, i8* %74, i8* %79), !dbg !330
  store i32 64, i32* %11, align 4, !dbg !332
  br label %123, !dbg !333

; <label>:80:                                     ; preds = %65
  %81 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !334
  %82 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %81, i32 0, i32 3, !dbg !337
  %83 = load i8, i8* %82, align 1, !dbg !337
  %84 = sext i8 %83 to i32, !dbg !334
  %85 = icmp ne i32 %84, 0, !dbg !334
  br i1 %85, label %86, label %97, !dbg !338

; <label>:86:                                     ; preds = %80
  %87 = call signext i8 @System_IsUserAdmin(), !dbg !339
  %88 = icmp ne i8 %87, 0, !dbg !339
  br i1 %88, label %97, label %89, !dbg !341

; <label>:89:                                     ; preds = %86
  %90 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0)), !dbg !342
  %91 = load i8**, i8*** %5, align 8, !dbg !344
  %92 = getelementptr inbounds i8*, i8** %91, i64 0, !dbg !344
  %93 = load i8*, i8** %92, align 8, !dbg !344
  %94 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !345
  %95 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %94, i32 0, i32 0, !dbg !346
  %96 = load i8*, i8** %95, align 8, !dbg !346
  call void (i8*, ...) @g_printerr(i8* %90, i8* %93, i8* %96), !dbg !347
  store i32 77, i32* %11, align 4, !dbg !349
  br label %122, !dbg !350

; <label>:97:                                     ; preds = %86, %80
  %98 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !351
  %99 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %98, i32 0, i32 2, !dbg !354
  %100 = load i8, i8* %99, align 8, !dbg !354
  %101 = sext i8 %100 to i32, !dbg !351
  %102 = icmp ne i32 %101, 0, !dbg !351
  br i1 %102, label %103, label %113, !dbg !355

; <label>:103:                                    ; preds = %97
  %104 = load i32, i32* @optind, align 4, !dbg !356
  %105 = add nsw i32 %104, 1, !dbg !356
  store i32 %105, i32* @optind, align 4, !dbg !356
  %106 = load i32, i32* %4, align 4, !dbg !358
  %107 = icmp sge i32 %105, %106, !dbg !359
  br i1 %107, label %108, label %113, !dbg !360

; <label>:108:                                    ; preds = %103
  %109 = load i8**, i8*** %5, align 8, !dbg !361
  %110 = getelementptr inbounds i8*, i8** %109, i64 0, !dbg !361
  %111 = load i8*, i8** %110, align 8, !dbg !361
  %112 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)), !dbg !363
  call void @ToolsCmd_MissingEntityError(i8* %111, i8* %112), !dbg !364
  store i32 64, i32* %11, align 4, !dbg !366
  br label %121, !dbg !367

; <label>:113:                                    ; preds = %103, %97
  %114 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !368
  %115 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %114, i32 0, i32 1, !dbg !370
  %116 = load i32 (i8**, i32, i32)*, i32 (i8**, i32, i32)** %115, align 8, !dbg !370
  %117 = load i8**, i8*** %5, align 8, !dbg !371
  %118 = load i32, i32* %4, align 4, !dbg !372
  %119 = load i32, i32* @gQuiet, align 4, !dbg !373
  %120 = call i32 %116(i8** %117, i32 %118, i32 %119), !dbg !368
  store i32 %120, i32* %11, align 4, !dbg !374
  br label %121

; <label>:121:                                    ; preds = %113, %108
  br label %122

; <label>:122:                                    ; preds = %121, %89
  br label %123

; <label>:123:                                    ; preds = %122, %70
  br label %124

; <label>:124:                                    ; preds = %123, %60
  %125 = load i32, i32* %11, align 4, !dbg !375
  %126 = icmp eq i32 %125, 64, !dbg !377
  br i1 %126, label %127, label %153, !dbg !378

; <label>:127:                                    ; preds = %124
  %128 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !379
  %129 = icmp eq %struct.CmdTable* %128, null, !dbg !381
  br i1 %129, label %136, label %130, !dbg !382

; <label>:130:                                    ; preds = %127
  %131 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !383
  %132 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %131, i32 0, i32 0, !dbg !385
  %133 = load i8*, i8** %132, align 8, !dbg !385
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #6, !dbg !386
  %135 = icmp ne i32 %134, 0, !dbg !386
  br i1 %135, label %136, label %153, !dbg !387

; <label>:136:                                    ; preds = %130, %127
  %137 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0)), !dbg !388
  %138 = load i8**, i8*** %5, align 8, !dbg !390
  %139 = getelementptr inbounds i8*, i8** %138, i64 0, !dbg !390
  %140 = load i8*, i8** %139, align 8, !dbg !390
  %141 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !391
  %142 = icmp ne %struct.CmdTable* %141, null, !dbg !391
  %143 = select i1 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), !dbg !391
  %144 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !392
  %145 = icmp ne %struct.CmdTable* %144, null, !dbg !392
  br i1 %145, label %146, label %150, !dbg !392

; <label>:146:                                    ; preds = %136
  %147 = load %struct.CmdTable*, %struct.CmdTable** %8, align 8, !dbg !393
  %148 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %147, i32 0, i32 0, !dbg !395
  %149 = load i8*, i8** %148, align 8, !dbg !395
  br label %151, !dbg !396

; <label>:150:                                    ; preds = %136
  br label %151, !dbg !397

; <label>:151:                                    ; preds = %150, %146
  %152 = phi i8* [ %149, %146 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), %150 ], !dbg !399
  call void (i8*, ...) @g_printerr(i8* %137, i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %143, i8* %152), !dbg !401
  br label %153, !dbg !402

; <label>:153:                                    ; preds = %151, %130, %124
  br label %154

; <label>:154:                                    ; preds = %153, %52
  br label %155

; <label>:155:                                    ; preds = %154, %48
  br label %156, !dbg !403

; <label>:156:                                    ; preds = %155, %43, %38, %19
  %157 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !405
  %158 = icmp ne %struct._GKeyFile* %157, null, !dbg !407
  br i1 %158, label %159, label %161, !dbg !408

; <label>:159:                                    ; preds = %156
  %160 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !409
  call void @g_key_file_free(%struct._GKeyFile* %160), !dbg !411
  br label %161, !dbg !412

; <label>:161:                                    ; preds = %159, %156
  %162 = load i32, i32* %11, align 4, !dbg !413
  ret i32 %162, !dbg !414
}

declare void @Unicode_Init(i32, i8***, i8***) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #4

declare i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #2

declare void @VMTools_ConfigLogging(i8*, %struct._GKeyFile*, i32, i32) #2

declare void @VMTools_BindTextDomain(i8*, i8*, i8*) #2

declare signext i8 @VmCheck_IsVirtualWorld() #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #4

; Function Attrs: nounwind uwtable
define internal void @ToolboxCmdHelp(i8*, i8*) #0 !dbg !415 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !416, metadata !83), !dbg !417
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !418, metadata !83), !dbg !419
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([430 x i8], [430 x i8]* @.str.20, i32 0, i32 0)), !dbg !420
  %6 = load i8*, i8** %3, align 8, !dbg !421
  %7 = load i8*, i8** %3, align 8, !dbg !422
  %8 = load i8*, i8** %4, align 8, !dbg !423
  %9 = load i8*, i8** %3, align 8, !dbg !424
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8, i8* %9), !dbg !425
  ret void, !dbg !427
}

; Function Attrs: nounwind uwtable
define internal %struct.CmdTable* @ParseCommand(i8**, i32) #0 !dbg !428 {
  %3 = alloca %struct.CmdTable*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !431, metadata !83), !dbg !432
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !433, metadata !83), !dbg !434
  call void @llvm.dbg.declare(metadata i32* %6, metadata !435, metadata !83), !dbg !436
  store i32 0, i32* %6, align 4, !dbg !437
  br label %7, !dbg !439

; <label>:7:                                      ; preds = %29, %2
  %8 = load i32, i32* %6, align 4, !dbg !440
  %9 = sext i32 %8 to i64, !dbg !440
  %10 = icmp ult i64 %9, 9, !dbg !443
  br i1 %10, label %11, label %32, !dbg !444

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %6, align 4, !dbg !445
  %13 = sext i32 %12 to i64, !dbg !448
  %14 = getelementptr inbounds [9 x %struct.CmdTable], [9 x %struct.CmdTable]* @commands, i64 0, i64 %13, !dbg !448
  %15 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %14, i32 0, i32 0, !dbg !449
  %16 = load i8*, i8** %15, align 16, !dbg !449
  %17 = load i32, i32* @optind, align 4, !dbg !450
  %18 = sext i32 %17 to i64, !dbg !451
  %19 = load i8**, i8*** %4, align 8, !dbg !451
  %20 = getelementptr inbounds i8*, i8** %19, i64 %18, !dbg !451
  %21 = load i8*, i8** %20, align 8, !dbg !451
  %22 = call i32 @strcmp(i8* %16, i8* %21) #6, !dbg !452
  %23 = icmp eq i32 %22, 0, !dbg !453
  br i1 %23, label %24, label %28, !dbg !454

; <label>:24:                                     ; preds = %11
  %25 = load i32, i32* %6, align 4, !dbg !455
  %26 = sext i32 %25 to i64, !dbg !457
  %27 = getelementptr inbounds [9 x %struct.CmdTable], [9 x %struct.CmdTable]* @commands, i64 0, i64 %26, !dbg !457
  store %struct.CmdTable* %27, %struct.CmdTable** %3, align 8, !dbg !458
  br label %33, !dbg !458

; <label>:28:                                     ; preds = %11
  br label %29, !dbg !459

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %6, align 4, !dbg !460
  %31 = add nsw i32 %30, 1, !dbg !460
  store i32 %31, i32* %6, align 4, !dbg !460
  br label %7, !dbg !462, !llvm.loop !463

; <label>:32:                                     ; preds = %7
  store %struct.CmdTable* null, %struct.CmdTable** %3, align 8, !dbg !465
  br label %33, !dbg !465

; <label>:33:                                     ; preds = %32, %24
  %34 = load %struct.CmdTable*, %struct.CmdTable** %3, align 8, !dbg !466
  ret %struct.CmdTable* %34, !dbg !466
}

declare signext i8 @System_IsUserAdmin() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @g_key_file_free(%struct._GKeyFile*) #2

declare i32 @TimeSync_Command(i8**, i32, i32) #2

declare void @TimeSync_Help(i8*, i8*) #2

declare i32 @Script_Command(i8**, i32, i32) #2

declare void @Script_Help(i8*, i8*) #2

declare i32 @Disk_Command(i8**, i32, i32) #2

declare void @Disk_Help(i8*, i8*) #2

declare i32 @Stat_Command(i8**, i32, i32) #2

declare void @Stat_Help(i8*, i8*) #2

declare i32 @Device_Command(i8**, i32, i32) #2

declare void @Device_Help(i8*, i8*) #2

declare i32 @Logging_Command(i8**, i32, i32) #2

declare void @Logging_Help(i8*, i8*) #2

declare i32 @Info_Command(i8**, i32, i32) #2

declare void @Info_Help(i8*, i8*) #2

declare i32 @Config_Command(i8**, i32, i32) #2

declare void @Config_Help(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @HelpCommand(i8**, i32, i32) #0 !dbg !467 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !468, metadata !83), !dbg !469
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !470, metadata !83), !dbg !471
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !472, metadata !83), !dbg !473
  call void @llvm.dbg.declare(metadata i32* %8, metadata !474, metadata !83), !dbg !475
  store i32 0, i32* %8, align 4, !dbg !475
  %10 = load i32, i32* @optind, align 4, !dbg !476
  %11 = add nsw i32 %10, 1, !dbg !476
  store i32 %11, i32* @optind, align 4, !dbg !476
  %12 = load i32, i32* %6, align 4, !dbg !478
  %13 = icmp slt i32 %11, %12, !dbg !479
  br i1 %13, label %14, label %60, !dbg !480

; <label>:14:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !481, metadata !83), !dbg !483
  store i32 0, i32* %9, align 4, !dbg !484
  br label %15, !dbg !486

; <label>:15:                                     ; preds = %47, %14
  %16 = load i32, i32* %9, align 4, !dbg !487
  %17 = sext i32 %16 to i64, !dbg !487
  %18 = icmp ult i64 %17, 9, !dbg !490
  br i1 %18, label %19, label %50, !dbg !491

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %9, align 4, !dbg !492
  %21 = sext i32 %20 to i64, !dbg !495
  %22 = getelementptr inbounds [9 x %struct.CmdTable], [9 x %struct.CmdTable]* @commands, i64 0, i64 %21, !dbg !495
  %23 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %22, i32 0, i32 0, !dbg !496
  %24 = load i8*, i8** %23, align 16, !dbg !496
  %25 = load i32, i32* @optind, align 4, !dbg !497
  %26 = sext i32 %25 to i64, !dbg !498
  %27 = load i8**, i8*** %5, align 8, !dbg !498
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26, !dbg !498
  %29 = load i8*, i8** %28, align 8, !dbg !498
  %30 = call i32 @strcmp(i8* %24, i8* %29) #6, !dbg !499
  %31 = icmp eq i32 %30, 0, !dbg !500
  br i1 %31, label %32, label %46, !dbg !501

; <label>:32:                                     ; preds = %19
  %33 = load i32, i32* %9, align 4, !dbg !502
  %34 = sext i32 %33 to i64, !dbg !504
  %35 = getelementptr inbounds [9 x %struct.CmdTable], [9 x %struct.CmdTable]* @commands, i64 0, i64 %34, !dbg !504
  %36 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %35, i32 0, i32 4, !dbg !505
  %37 = load void (i8*, i8*)*, void (i8*, i8*)** %36, align 8, !dbg !505
  %38 = load i8**, i8*** %5, align 8, !dbg !506
  %39 = getelementptr inbounds i8*, i8** %38, i64 0, !dbg !506
  %40 = load i8*, i8** %39, align 8, !dbg !506
  %41 = load i32, i32* %9, align 4, !dbg !507
  %42 = sext i32 %41 to i64, !dbg !508
  %43 = getelementptr inbounds [9 x %struct.CmdTable], [9 x %struct.CmdTable]* @commands, i64 0, i64 %42, !dbg !508
  %44 = getelementptr inbounds %struct.CmdTable, %struct.CmdTable* %43, i32 0, i32 0, !dbg !509
  %45 = load i8*, i8** %44, align 16, !dbg !509
  call void %37(i8* %40, i8* %45), !dbg !504
  store i32 0, i32* %4, align 4, !dbg !510
  br label %71, !dbg !510

; <label>:46:                                     ; preds = %19
  br label %47, !dbg !511

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %9, align 4, !dbg !512
  %49 = add nsw i32 %48, 1, !dbg !512
  store i32 %49, i32* %9, align 4, !dbg !512
  br label %15, !dbg !514, !llvm.loop !515

; <label>:50:                                     ; preds = %15
  %51 = load i8**, i8*** %5, align 8, !dbg !517
  %52 = getelementptr inbounds i8*, i8** %51, i64 0, !dbg !517
  %53 = load i8*, i8** %52, align 8, !dbg !517
  %54 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)), !dbg !518
  %55 = load i32, i32* @optind, align 4, !dbg !519
  %56 = sext i32 %55 to i64, !dbg !520
  %57 = load i8**, i8*** %5, align 8, !dbg !520
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56, !dbg !520
  %59 = load i8*, i8** %58, align 8, !dbg !520
  call void @ToolsCmd_UnknownEntityError(i8* %53, i8* %54, i8* %59), !dbg !521
  store i32 64, i32* %8, align 4, !dbg !522
  br label %60, !dbg !523

; <label>:60:                                     ; preds = %50, %3
  %61 = load i8**, i8*** %5, align 8, !dbg !524
  %62 = getelementptr inbounds i8*, i8** %61, i64 0, !dbg !524
  %63 = load i8*, i8** %62, align 8, !dbg !524
  %64 = load i32, i32* @optind, align 4, !dbg !525
  %65 = sub nsw i32 %64, 1, !dbg !526
  %66 = sext i32 %65 to i64, !dbg !527
  %67 = load i8**, i8*** %5, align 8, !dbg !527
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66, !dbg !527
  %69 = load i8*, i8** %68, align 8, !dbg !527
  call void @ToolboxCmdHelp(i8* %63, i8* %69), !dbg !528
  %70 = load i32, i32* %8, align 4, !dbg !529
  store i32 %70, i32* %4, align 4, !dbg !530
  br label %71, !dbg !530

; <label>:71:                                     ; preds = %60, %32
  %72 = load i32, i32* %4, align 4, !dbg !531
  ret i32 %72, !dbg !531
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!77, !78}
!llvm.ident = !{!79}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21, globals: !28)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolbox-cmd.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 50, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!19 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!20 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!21 = !{!22, !24, !27}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !26, line: 46, baseType: !23)
!26 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!28 = !{!29, !35, !39, !41, !53}
!29 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !30, line: 46, type: !31, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!30 = !DIFile(filename: "toolbox-cmd.c", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, align: 8, elements: !33)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!33 = !{!34}
!34 = !DISubrange(count: 20)
!35 = distinct !DIGlobalVariable(name: "gQuiet", scope: !0, file: !30, line: 79, type: !36, isLocal: true, isDefinition: true, variable: i32* @gQuiet)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !26, line: 50, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !26, line: 49, baseType: !38)
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = distinct !DIGlobalVariable(name: "options", scope: !0, file: !30, line: 80, type: !40, isLocal: true, isDefinition: true, variable: i8** @options)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!41 = distinct !DIGlobalVariable(name: "long_options", scope: !0, file: !30, line: 70, type: !42, isLocal: true, isDefinition: true, variable: [4 x %struct.option]* @long_options)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1024, align: 64, elements: !51)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !44, line: 104, size: 256, align: 64, elements: !45)
!44 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!45 = !{!46, !47, !48, !50}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !44, line: 106, baseType: !40, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !43, file: !44, line: 109, baseType: !38, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !43, file: !44, line: 110, baseType: !49, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !43, file: !44, line: 111, baseType: !38, size: 32, align: 32, offset: 192)
!51 = !{!52}
!52 = !DISubrange(count: 4)
!53 = distinct !DIGlobalVariable(name: "commands", scope: !0, file: !30, line: 100, type: !54, isLocal: true, isDefinition: true, variable: [9 x %struct.CmdTable]* @commands)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2304, align: 64, elements: !75)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "CmdTable", file: !30, line: 67, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CmdTable", file: !30, line: 61, size: 256, align: 64, elements: !58)
!58 = !{!59, !60, !66, !69, !70}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !57, file: !30, line: 62, baseType: !40, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !57, file: !30, line: 63, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolboxCmdFunc", file: !30, line: 49, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!38, !65, !38, !36}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "requireArguments", scope: !57, file: !30, line: 64, baseType: !67, size: 8, align: 8, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !68, line: 230, baseType: !23)
!68 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "requireRoot", scope: !57, file: !30, line: 65, baseType: !67, size: 8, align: 8, offset: 136)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "helpFunc", scope: !57, file: !30, line: 66, baseType: !71, size: 64, align: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ToolboxHelpFunc", file: !30, line: 53, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !40, !40}
!75 = !{!76}
!76 = !DISubrange(count: 9)
!77 = !{i32 2, !"Dwarf Version", i32 4}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!80 = distinct !DISubprogram(name: "ToolsCmd_MissingEntityError", scope: !30, file: !30, line: 136, type: !73, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!81 = !{}
!82 = !DILocalVariable(name: "name", arg: 1, scope: !80, file: !30, line: 136, type: !40)
!83 = !DIExpression()
!84 = !DILocation(line: 136, column: 41, scope: !80)
!85 = !DILocalVariable(name: "entity", arg: 2, scope: !80, file: !30, line: 137, type: !40)
!86 = !DILocation(line: 137, column: 41, scope: !80)
!87 = !DILocation(line: 139, column: 15, scope: !80)
!88 = !DILocation(line: 139, column: 102, scope: !80)
!89 = !DILocation(line: 139, column: 108, scope: !80)
!90 = !DILocation(line: 139, column: 4, scope: !91)
!91 = !DILexicalBlockFile(scope: !80, file: !30, discriminator: 1)
!92 = !DILocation(line: 140, column: 1, scope: !80)
!93 = distinct !DISubprogram(name: "ToolsCmd_Print", scope: !30, file: !30, line: 160, type: !94, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !40, null}
!96 = !DILocalVariable(name: "fmt", arg: 1, scope: !93, file: !30, line: 160, type: !40)
!97 = !DILocation(line: 160, column: 28, scope: !93)
!98 = !DILocation(line: 163, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !30, line: 163, column: 8)
!100 = !DILocation(line: 163, column: 8, scope: !93)
!101 = !DILocalVariable(name: "str", scope: !102, file: !30, line: 164, type: !24)
!102 = distinct !DILexicalBlock(scope: !99, file: !30, line: 163, column: 17)
!103 = !DILocation(line: 164, column: 14, scope: !102)
!104 = !DILocalVariable(name: "args", scope: !102, file: !30, line: 165, type: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !106, line: 79, baseType: !107)
!106 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !108, line: 40, baseType: !109)
!108 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 165, baseType: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 192, align: 64, elements: !118)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 165, size: 192, align: 64, elements: !112)
!112 = !{!113, !115, !116, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !111, file: !1, line: 165, baseType: !114, size: 32, align: 32)
!114 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !111, file: !1, line: 165, baseType: !114, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !111, file: !1, line: 165, baseType: !27, size: 64, align: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !111, file: !1, line: 165, baseType: !27, size: 64, align: 64, offset: 128)
!118 = !{!119}
!119 = !DISubrange(count: 1)
!120 = !DILocation(line: 165, column: 15, scope: !102)
!121 = !DILocation(line: 167, column: 6, scope: !102)
!122 = !DILocation(line: 168, column: 25, scope: !102)
!123 = !DILocation(line: 168, column: 30, scope: !102)
!124 = !DILocation(line: 168, column: 7, scope: !102)
!125 = !DILocation(line: 169, column: 6, scope: !102)
!126 = !DILocation(line: 171, column: 21, scope: !102)
!127 = !DILocation(line: 171, column: 7, scope: !102)
!128 = !DILocation(line: 172, column: 14, scope: !102)
!129 = !DILocation(line: 172, column: 7, scope: !102)
!130 = !DILocation(line: 173, column: 4, scope: !102)
!131 = !DILocation(line: 174, column: 1, scope: !93)
!132 = distinct !DISubprogram(name: "ToolsCmd_PrintErr", scope: !30, file: !30, line: 194, type: !94, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!133 = !DILocalVariable(name: "fmt", arg: 1, scope: !132, file: !30, line: 194, type: !40)
!134 = !DILocation(line: 194, column: 31, scope: !132)
!135 = !DILocation(line: 197, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !30, line: 197, column: 8)
!137 = !DILocation(line: 197, column: 8, scope: !132)
!138 = !DILocalVariable(name: "str", scope: !139, file: !30, line: 198, type: !24)
!139 = distinct !DILexicalBlock(scope: !136, file: !30, line: 197, column: 17)
!140 = !DILocation(line: 198, column: 14, scope: !139)
!141 = !DILocalVariable(name: "args", scope: !139, file: !30, line: 199, type: !105)
!142 = !DILocation(line: 199, column: 15, scope: !139)
!143 = !DILocation(line: 201, column: 6, scope: !139)
!144 = !DILocation(line: 202, column: 25, scope: !139)
!145 = !DILocation(line: 202, column: 30, scope: !139)
!146 = !DILocation(line: 202, column: 7, scope: !139)
!147 = !DILocation(line: 203, column: 6, scope: !139)
!148 = !DILocation(line: 205, column: 24, scope: !139)
!149 = !DILocation(line: 205, column: 7, scope: !139)
!150 = !DILocation(line: 206, column: 14, scope: !139)
!151 = !DILocation(line: 206, column: 7, scope: !139)
!152 = !DILocation(line: 207, column: 4, scope: !139)
!153 = !DILocation(line: 208, column: 1, scope: !132)
!154 = distinct !DISubprogram(name: "ToolsCmd_SendRPC", scope: !30, file: !30, line: 228, type: !155, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!155 = !DISubroutineType(types: !156)
!156 = !{!36, !40, !157, !65, !160}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 216, baseType: !159)
!158 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!159 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!161 = !DILocalVariable(name: "rpc", arg: 1, scope: !154, file: !30, line: 228, type: !40)
!162 = !DILocation(line: 228, column: 30, scope: !154)
!163 = !DILocalVariable(name: "rpcLen", arg: 2, scope: !154, file: !30, line: 229, type: !157)
!164 = !DILocation(line: 229, column: 25, scope: !154)
!165 = !DILocalVariable(name: "result", arg: 3, scope: !154, file: !30, line: 230, type: !65)
!166 = !DILocation(line: 230, column: 25, scope: !154)
!167 = !DILocalVariable(name: "resultLen", arg: 4, scope: !154, file: !30, line: 231, type: !160)
!168 = !DILocation(line: 231, column: 26, scope: !154)
!169 = !DILocalVariable(name: "lrpc", scope: !154, file: !30, line: 233, type: !22)
!170 = !DILocation(line: 233, column: 10, scope: !154)
!171 = !DILocation(line: 233, column: 26, scope: !154)
!172 = !DILocalVariable(name: "chan", scope: !154, file: !30, line: 234, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "RpcChannel", file: !175, line: 48, baseType: !176)
!175 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vmware/tools/guestrpc.h", directory: "/home/lichi/Desktop/open-vm-tools/line1629")
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RpcChannel", file: !175, line: 48, flags: DIFlagFwdDecl)
!177 = !DILocation(line: 234, column: 16, scope: !154)
!178 = !DILocation(line: 234, column: 23, scope: !154)
!179 = !DILocalVariable(name: "ret", scope: !154, file: !30, line: 235, type: !36)
!180 = !DILocation(line: 235, column: 13, scope: !154)
!181 = !DILocation(line: 235, column: 36, scope: !154)
!182 = !DILocation(line: 235, column: 19, scope: !154)
!183 = !DILocation(line: 237, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !154, file: !30, line: 237, column: 8)
!185 = !DILocation(line: 237, column: 8, scope: !154)
!186 = !DILocation(line: 238, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !30, line: 237, column: 14)
!188 = !DILocation(line: 239, column: 7, scope: !187)
!189 = !DILocation(line: 242, column: 26, scope: !154)
!190 = !DILocation(line: 242, column: 32, scope: !154)
!191 = !DILocation(line: 242, column: 38, scope: !154)
!192 = !DILocation(line: 242, column: 46, scope: !154)
!193 = !DILocation(line: 242, column: 54, scope: !154)
!194 = !DILocation(line: 242, column: 10, scope: !154)
!195 = !DILocation(line: 242, column: 8, scope: !154)
!196 = !DILocation(line: 242, column: 4, scope: !154)
!197 = !DILocation(line: 245, column: 23, scope: !154)
!198 = !DILocation(line: 245, column: 4, scope: !154)
!199 = !DILocation(line: 246, column: 11, scope: !154)
!200 = !DILocation(line: 246, column: 4, scope: !154)
!201 = distinct !DISubprogram(name: "ToolsCmd_UnknownEntityError", scope: !30, file: !30, line: 267, type: !202, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !40, !40, !40}
!204 = !DILocalVariable(name: "name", arg: 1, scope: !201, file: !30, line: 267, type: !40)
!205 = !DILocation(line: 267, column: 41, scope: !201)
!206 = !DILocalVariable(name: "entity", arg: 2, scope: !201, file: !30, line: 268, type: !40)
!207 = !DILocation(line: 268, column: 41, scope: !201)
!208 = !DILocalVariable(name: "str", arg: 3, scope: !201, file: !30, line: 269, type: !40)
!209 = !DILocation(line: 269, column: 41, scope: !201)
!210 = !DILocation(line: 271, column: 15, scope: !201)
!211 = !DILocation(line: 271, column: 107, scope: !201)
!212 = !DILocation(line: 271, column: 113, scope: !201)
!213 = !DILocation(line: 271, column: 121, scope: !201)
!214 = !DILocation(line: 271, column: 4, scope: !215)
!215 = !DILexicalBlockFile(scope: !201, file: !30, discriminator: 1)
!216 = !DILocation(line: 272, column: 1, scope: !201)
!217 = distinct !DISubprogram(name: "main", scope: !30, file: !30, line: 413, type: !218, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!218 = !DISubroutineType(types: !219)
!219 = !{!38, !38, !65}
!220 = !DILocalVariable(name: "argc", arg: 1, scope: !217, file: !30, line: 413, type: !38)
!221 = !DILocation(line: 413, column: 10, scope: !217)
!222 = !DILocalVariable(name: "argv", arg: 2, scope: !217, file: !30, line: 414, type: !65)
!223 = !DILocation(line: 414, column: 13, scope: !217)
!224 = !DILocalVariable(name: "show_help", scope: !217, file: !30, line: 417, type: !67)
!225 = !DILocation(line: 417, column: 9, scope: !217)
!226 = !DILocalVariable(name: "show_version", scope: !217, file: !30, line: 418, type: !67)
!227 = !DILocation(line: 418, column: 9, scope: !217)
!228 = !DILocalVariable(name: "cmd", scope: !217, file: !30, line: 419, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!230 = !DILocation(line: 419, column: 14, scope: !217)
!231 = !DILocalVariable(name: "conf", scope: !217, file: !30, line: 420, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !16, line: 48, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !16, line: 48, flags: DIFlagFwdDecl)
!235 = !DILocation(line: 420, column: 14, scope: !217)
!236 = !DILocalVariable(name: "c", scope: !217, file: !30, line: 421, type: !38)
!237 = !DILocation(line: 421, column: 8, scope: !217)
!238 = !DILocalVariable(name: "retval", scope: !217, file: !30, line: 422, type: !38)
!239 = !DILocation(line: 422, column: 8, scope: !217)
!240 = !DILocation(line: 428, column: 17, scope: !217)
!241 = !DILocation(line: 428, column: 4, scope: !217)
!242 = !DILocation(line: 431, column: 4, scope: !217)
!243 = !DILocation(line: 432, column: 4, scope: !217)
!244 = !DILocation(line: 433, column: 40, scope: !217)
!245 = !DILocation(line: 433, column: 4, scope: !217)
!246 = !DILocation(line: 434, column: 4, scope: !217)
!247 = !DILocation(line: 442, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !217, file: !30, line: 442, column: 8)
!249 = !DILocation(line: 442, column: 8, scope: !217)
!250 = !DILocation(line: 443, column: 18, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !30, line: 442, column: 35)
!252 = !DILocation(line: 444, column: 18, scope: !251)
!253 = !DILocation(line: 443, column: 7, scope: !254)
!254 = !DILexicalBlockFile(scope: !251, file: !30, discriminator: 1)
!255 = !DILocation(line: 445, column: 7, scope: !251)
!256 = !DILocation(line: 452, column: 4, scope: !217)
!257 = !DILocalVariable(name: "option_index", scope: !258, file: !30, line: 453, type: !38)
!258 = distinct !DILexicalBlock(scope: !217, file: !30, line: 452, column: 14)
!259 = !DILocation(line: 453, column: 11, scope: !258)
!260 = !DILocation(line: 455, column: 23, scope: !258)
!261 = !DILocation(line: 455, column: 29, scope: !258)
!262 = !DILocation(line: 455, column: 35, scope: !258)
!263 = !DILocation(line: 455, column: 11, scope: !258)
!264 = !DILocation(line: 455, column: 9, scope: !258)
!265 = !DILocation(line: 458, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !30, line: 458, column: 11)
!267 = !DILocation(line: 458, column: 13, scope: !266)
!268 = !DILocation(line: 458, column: 11, scope: !258)
!269 = !DILocation(line: 459, column: 10, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !30, line: 458, column: 20)
!271 = !DILocation(line: 462, column: 15, scope: !258)
!272 = !DILocation(line: 462, column: 7, scope: !258)
!273 = !DILocation(line: 464, column: 20, scope: !274)
!274 = distinct !DILexicalBlock(scope: !258, file: !30, line: 462, column: 18)
!275 = !DILocation(line: 465, column: 10, scope: !274)
!276 = !DILocation(line: 468, column: 23, scope: !274)
!277 = !DILocation(line: 469, column: 10, scope: !274)
!278 = !DILocation(line: 472, column: 17, scope: !274)
!279 = !DILocation(line: 473, column: 10, scope: !274)
!280 = !DILocation(line: 477, column: 21, scope: !274)
!281 = !DILocation(line: 478, column: 21, scope: !274)
!282 = !DILocation(line: 477, column: 10, scope: !283)
!283 = !DILexicalBlockFile(scope: !274, file: !30, discriminator: 1)
!284 = !DILocation(line: 479, column: 10, scope: !274)
!285 = !DILocation(line: 482, column: 10, scope: !274)
!286 = !DILocation(line: 452, column: 4, scope: !287)
!287 = !DILexicalBlockFile(scope: !217, file: !30, discriminator: 1)
!288 = distinct !{!288, !256}
!289 = !DILocation(line: 486, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !217, file: !30, line: 486, column: 8)
!291 = !DILocation(line: 486, column: 8, scope: !217)
!292 = !DILocation(line: 487, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !30, line: 486, column: 22)
!294 = !DILocation(line: 488, column: 14, scope: !293)
!295 = !DILocation(line: 489, column: 4, scope: !293)
!296 = !DILocation(line: 489, column: 15, scope: !297)
!297 = !DILexicalBlockFile(scope: !298, file: !30, discriminator: 1)
!298 = distinct !DILexicalBlock(scope: !290, file: !30, line: 489, column: 15)
!299 = !DILocation(line: 490, column: 22, scope: !300)
!300 = distinct !DILexicalBlock(scope: !298, file: !30, line: 489, column: 26)
!301 = !DILocation(line: 490, column: 7, scope: !300)
!302 = !DILocation(line: 491, column: 14, scope: !300)
!303 = !DILocation(line: 492, column: 4, scope: !300)
!304 = !DILocation(line: 496, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !30, line: 496, column: 11)
!306 = distinct !DILexicalBlock(scope: !298, file: !30, line: 492, column: 11)
!307 = !DILocation(line: 496, column: 21, scope: !305)
!308 = !DILocation(line: 496, column: 18, scope: !305)
!309 = !DILocation(line: 496, column: 11, scope: !306)
!310 = !DILocation(line: 497, column: 38, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !30, line: 496, column: 27)
!312 = !DILocation(line: 497, column: 47, scope: !311)
!313 = !DILocation(line: 497, column: 10, scope: !314)
!314 = !DILexicalBlockFile(scope: !311, file: !30, discriminator: 1)
!315 = !DILocation(line: 498, column: 17, scope: !311)
!316 = !DILocation(line: 499, column: 7, scope: !311)
!317 = !DILocation(line: 499, column: 38, scope: !318)
!318 = !DILexicalBlockFile(scope: !319, file: !30, discriminator: 1)
!319 = distinct !DILexicalBlock(scope: !305, file: !30, line: 499, column: 18)
!320 = !DILocation(line: 499, column: 44, scope: !318)
!321 = !DILocation(line: 499, column: 25, scope: !318)
!322 = !DILocation(line: 499, column: 23, scope: !318)
!323 = !DILocation(line: 499, column: 51, scope: !318)
!324 = !DILocation(line: 499, column: 18, scope: !318)
!325 = !DILocation(line: 500, column: 38, scope: !326)
!326 = distinct !DILexicalBlock(scope: !319, file: !30, line: 499, column: 59)
!327 = !DILocation(line: 500, column: 47, scope: !326)
!328 = !DILocation(line: 500, column: 128, scope: !326)
!329 = !DILocation(line: 500, column: 123, scope: !326)
!330 = !DILocation(line: 500, column: 10, scope: !331)
!331 = !DILexicalBlockFile(scope: !326, file: !30, discriminator: 1)
!332 = !DILocation(line: 501, column: 17, scope: !326)
!333 = !DILocation(line: 502, column: 7, scope: !326)
!334 = !DILocation(line: 502, column: 18, scope: !335)
!335 = !DILexicalBlockFile(scope: !336, file: !30, discriminator: 1)
!336 = distinct !DILexicalBlock(scope: !319, file: !30, line: 502, column: 18)
!337 = !DILocation(line: 502, column: 23, scope: !335)
!338 = !DILocation(line: 502, column: 35, scope: !335)
!339 = !DILocation(line: 502, column: 39, scope: !340)
!340 = !DILexicalBlockFile(scope: !336, file: !30, discriminator: 2)
!341 = !DILocation(line: 502, column: 18, scope: !340)
!342 = !DILocation(line: 510, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !30, line: 502, column: 61)
!344 = !DILocation(line: 512, column: 21, scope: !343)
!345 = !DILocation(line: 512, column: 30, scope: !343)
!346 = !DILocation(line: 512, column: 35, scope: !343)
!347 = !DILocation(line: 510, column: 10, scope: !348)
!348 = !DILexicalBlockFile(scope: !343, file: !30, discriminator: 1)
!349 = !DILocation(line: 514, column: 17, scope: !343)
!350 = !DILocation(line: 515, column: 7, scope: !343)
!351 = !DILocation(line: 515, column: 18, scope: !352)
!352 = !DILexicalBlockFile(scope: !353, file: !30, discriminator: 1)
!353 = distinct !DILexicalBlock(scope: !336, file: !30, line: 515, column: 18)
!354 = !DILocation(line: 515, column: 23, scope: !352)
!355 = !DILocation(line: 515, column: 40, scope: !352)
!356 = !DILocation(line: 515, column: 43, scope: !357)
!357 = !DILexicalBlockFile(scope: !353, file: !30, discriminator: 2)
!358 = !DILocation(line: 515, column: 55, scope: !357)
!359 = !DILocation(line: 515, column: 52, scope: !357)
!360 = !DILocation(line: 515, column: 18, scope: !357)
!361 = !DILocation(line: 516, column: 38, scope: !362)
!362 = distinct !DILexicalBlock(scope: !353, file: !30, line: 515, column: 61)
!363 = !DILocation(line: 516, column: 47, scope: !362)
!364 = !DILocation(line: 516, column: 10, scope: !365)
!365 = !DILexicalBlockFile(scope: !362, file: !30, discriminator: 1)
!366 = !DILocation(line: 517, column: 17, scope: !362)
!367 = !DILocation(line: 518, column: 7, scope: !362)
!368 = !DILocation(line: 519, column: 19, scope: !369)
!369 = distinct !DILexicalBlock(scope: !353, file: !30, line: 518, column: 14)
!370 = !DILocation(line: 519, column: 24, scope: !369)
!371 = !DILocation(line: 519, column: 29, scope: !369)
!372 = !DILocation(line: 519, column: 35, scope: !369)
!373 = !DILocation(line: 519, column: 41, scope: !369)
!374 = !DILocation(line: 519, column: 17, scope: !369)
!375 = !DILocation(line: 522, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !306, file: !30, line: 522, column: 11)
!377 = !DILocation(line: 522, column: 18, scope: !376)
!378 = !DILocation(line: 522, column: 29, scope: !376)
!379 = !DILocation(line: 522, column: 33, scope: !380)
!380 = !DILexicalBlockFile(scope: !376, file: !30, discriminator: 1)
!381 = !DILocation(line: 522, column: 37, scope: !380)
!382 = !DILocation(line: 522, column: 45, scope: !380)
!383 = !DILocation(line: 522, column: 55, scope: !384)
!384 = !DILexicalBlockFile(scope: !376, file: !30, discriminator: 2)
!385 = !DILocation(line: 522, column: 60, scope: !384)
!386 = !DILocation(line: 522, column: 48, scope: !384)
!387 = !DILocation(line: 522, column: 11, scope: !384)
!388 = !DILocation(line: 523, column: 21, scope: !389)
!389 = distinct !DILexicalBlock(scope: !376, file: !30, line: 522, column: 79)
!390 = !DILocation(line: 524, column: 21, scope: !389)
!391 = !DILocation(line: 524, column: 38, scope: !389)
!392 = !DILocation(line: 524, column: 54, scope: !389)
!393 = !DILocation(line: 524, column: 60, scope: !394)
!394 = !DILexicalBlockFile(scope: !389, file: !30, discriminator: 1)
!395 = !DILocation(line: 524, column: 65, scope: !394)
!396 = !DILocation(line: 524, column: 54, scope: !394)
!397 = !DILocation(line: 524, column: 54, scope: !398)
!398 = !DILexicalBlockFile(scope: !389, file: !30, discriminator: 2)
!399 = !DILocation(line: 524, column: 54, scope: !400)
!400 = !DILexicalBlockFile(scope: !389, file: !30, discriminator: 3)
!401 = !DILocation(line: 523, column: 10, scope: !394)
!402 = !DILocation(line: 525, column: 7, scope: !389)
!403 = !DILocation(line: 486, column: 8, scope: !404)
!404 = !DILexicalBlockFile(scope: !290, file: !30, discriminator: 1)
!405 = !DILocation(line: 529, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !217, file: !30, line: 529, column: 8)
!407 = !DILocation(line: 529, column: 13, scope: !406)
!408 = !DILocation(line: 529, column: 8, scope: !217)
!409 = !DILocation(line: 530, column: 23, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !30, line: 529, column: 21)
!411 = !DILocation(line: 530, column: 7, scope: !410)
!412 = !DILocation(line: 531, column: 4, scope: !410)
!413 = !DILocation(line: 533, column: 11, scope: !217)
!414 = !DILocation(line: 533, column: 4, scope: !217)
!415 = distinct !DISubprogram(name: "ToolboxCmdHelp", scope: !30, file: !30, line: 292, type: !73, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!416 = !DILocalVariable(name: "progName", arg: 1, scope: !415, file: !30, line: 292, type: !40)
!417 = !DILocation(line: 292, column: 28, scope: !415)
!418 = !DILocalVariable(name: "cmd", arg: 2, scope: !415, file: !30, line: 293, type: !40)
!419 = !DILocation(line: 293, column: 28, scope: !415)
!420 = !DILocation(line: 295, column: 12, scope: !415)
!421 = !DILocation(line: 310, column: 12, scope: !415)
!422 = !DILocation(line: 310, column: 22, scope: !415)
!423 = !DILocation(line: 310, column: 32, scope: !415)
!424 = !DILocation(line: 310, column: 37, scope: !415)
!425 = !DILocation(line: 295, column: 4, scope: !426)
!426 = !DILexicalBlockFile(scope: !415, file: !30, discriminator: 1)
!427 = !DILocation(line: 311, column: 1, scope: !415)
!428 = distinct !DISubprogram(name: "ParseCommand", scope: !30, file: !30, line: 375, type: !429, isLocal: true, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!429 = !DISubroutineType(types: !430)
!430 = !{!229, !65, !38}
!431 = !DILocalVariable(name: "argv", arg: 1, scope: !428, file: !30, line: 375, type: !65)
!432 = !DILocation(line: 375, column: 21, scope: !428)
!433 = !DILocalVariable(name: "argc", arg: 2, scope: !428, file: !30, line: 376, type: !38)
!434 = !DILocation(line: 376, column: 18, scope: !428)
!435 = !DILocalVariable(name: "i", scope: !428, file: !30, line: 378, type: !38)
!436 = !DILocation(line: 378, column: 8, scope: !428)
!437 = !DILocation(line: 380, column: 11, scope: !438)
!438 = distinct !DILexicalBlock(scope: !428, file: !30, line: 380, column: 4)
!439 = !DILocation(line: 380, column: 9, scope: !438)
!440 = !DILocation(line: 380, column: 16, scope: !441)
!441 = !DILexicalBlockFile(scope: !442, file: !30, discriminator: 1)
!442 = distinct !DILexicalBlock(scope: !438, file: !30, line: 380, column: 4)
!443 = !DILocation(line: 380, column: 18, scope: !441)
!444 = !DILocation(line: 380, column: 4, scope: !441)
!445 = !DILocation(line: 381, column: 27, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !30, line: 381, column: 11)
!447 = distinct !DILexicalBlock(scope: !442, file: !30, line: 380, column: 67)
!448 = !DILocation(line: 381, column: 18, scope: !446)
!449 = !DILocation(line: 381, column: 30, scope: !446)
!450 = !DILocation(line: 381, column: 44, scope: !446)
!451 = !DILocation(line: 381, column: 39, scope: !446)
!452 = !DILocation(line: 381, column: 11, scope: !446)
!453 = !DILocation(line: 381, column: 53, scope: !446)
!454 = !DILocation(line: 381, column: 11, scope: !447)
!455 = !DILocation(line: 382, column: 27, scope: !456)
!456 = distinct !DILexicalBlock(scope: !446, file: !30, line: 381, column: 59)
!457 = !DILocation(line: 382, column: 18, scope: !456)
!458 = !DILocation(line: 382, column: 10, scope: !456)
!459 = !DILocation(line: 384, column: 4, scope: !447)
!460 = !DILocation(line: 380, column: 63, scope: !461)
!461 = !DILexicalBlockFile(scope: !442, file: !30, discriminator: 2)
!462 = !DILocation(line: 380, column: 4, scope: !461)
!463 = distinct !{!463, !464}
!464 = !DILocation(line: 380, column: 4, scope: !428)
!465 = !DILocation(line: 386, column: 4, scope: !428)
!466 = !DILocation(line: 387, column: 1, scope: !428)
!467 = distinct !DISubprogram(name: "HelpCommand", scope: !30, file: !30, line: 332, type: !63, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !81)
!468 = !DILocalVariable(name: "argv", arg: 1, scope: !467, file: !30, line: 332, type: !65)
!469 = !DILocation(line: 332, column: 20, scope: !467)
!470 = !DILocalVariable(name: "argc", arg: 2, scope: !467, file: !30, line: 333, type: !38)
!471 = !DILocation(line: 333, column: 17, scope: !467)
!472 = !DILocalVariable(name: "quiet", arg: 3, scope: !467, file: !30, line: 334, type: !36)
!473 = !DILocation(line: 334, column: 22, scope: !467)
!474 = !DILocalVariable(name: "retval", scope: !467, file: !30, line: 336, type: !38)
!475 = !DILocation(line: 336, column: 8, scope: !467)
!476 = !DILocation(line: 338, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !467, file: !30, line: 338, column: 8)
!478 = !DILocation(line: 338, column: 19, scope: !477)
!479 = !DILocation(line: 338, column: 17, scope: !477)
!480 = !DILocation(line: 338, column: 8, scope: !467)
!481 = !DILocalVariable(name: "i", scope: !482, file: !30, line: 339, type: !38)
!482 = distinct !DILexicalBlock(scope: !477, file: !30, line: 338, column: 25)
!483 = !DILocation(line: 339, column: 11, scope: !482)
!484 = !DILocation(line: 341, column: 14, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !30, line: 341, column: 7)
!486 = !DILocation(line: 341, column: 12, scope: !485)
!487 = !DILocation(line: 341, column: 19, scope: !488)
!488 = !DILexicalBlockFile(scope: !489, file: !30, discriminator: 1)
!489 = distinct !DILexicalBlock(scope: !485, file: !30, line: 341, column: 7)
!490 = !DILocation(line: 341, column: 21, scope: !488)
!491 = !DILocation(line: 341, column: 7, scope: !488)
!492 = !DILocation(line: 342, column: 30, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !30, line: 342, column: 14)
!494 = distinct !DILexicalBlock(scope: !489, file: !30, line: 341, column: 70)
!495 = !DILocation(line: 342, column: 21, scope: !493)
!496 = !DILocation(line: 342, column: 33, scope: !493)
!497 = !DILocation(line: 342, column: 47, scope: !493)
!498 = !DILocation(line: 342, column: 42, scope: !493)
!499 = !DILocation(line: 342, column: 14, scope: !493)
!500 = !DILocation(line: 342, column: 56, scope: !493)
!501 = !DILocation(line: 342, column: 14, scope: !494)
!502 = !DILocation(line: 343, column: 22, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !30, line: 342, column: 62)
!504 = !DILocation(line: 343, column: 13, scope: !503)
!505 = !DILocation(line: 343, column: 25, scope: !503)
!506 = !DILocation(line: 343, column: 34, scope: !503)
!507 = !DILocation(line: 343, column: 52, scope: !503)
!508 = !DILocation(line: 343, column: 43, scope: !503)
!509 = !DILocation(line: 343, column: 55, scope: !503)
!510 = !DILocation(line: 344, column: 13, scope: !503)
!511 = !DILocation(line: 346, column: 7, scope: !494)
!512 = !DILocation(line: 341, column: 66, scope: !513)
!513 = !DILexicalBlockFile(scope: !489, file: !30, discriminator: 2)
!514 = !DILocation(line: 341, column: 7, scope: !513)
!515 = distinct !{!515, !516}
!516 = !DILocation(line: 341, column: 7, scope: !482)
!517 = !DILocation(line: 347, column: 35, scope: !482)
!518 = !DILocation(line: 348, column: 35, scope: !482)
!519 = !DILocation(line: 349, column: 40, scope: !482)
!520 = !DILocation(line: 349, column: 35, scope: !482)
!521 = !DILocation(line: 347, column: 7, scope: !482)
!522 = !DILocation(line: 350, column: 14, scope: !482)
!523 = !DILocation(line: 351, column: 4, scope: !482)
!524 = !DILocation(line: 353, column: 19, scope: !467)
!525 = !DILocation(line: 353, column: 33, scope: !467)
!526 = !DILocation(line: 353, column: 40, scope: !467)
!527 = !DILocation(line: 353, column: 28, scope: !467)
!528 = !DILocation(line: 353, column: 4, scope: !467)
!529 = !DILocation(line: 354, column: 11, scope: !467)
!530 = !DILocation(line: 354, column: 4, scope: !467)
!531 = !DILocation(line: 355, column: 1, scope: !467)
