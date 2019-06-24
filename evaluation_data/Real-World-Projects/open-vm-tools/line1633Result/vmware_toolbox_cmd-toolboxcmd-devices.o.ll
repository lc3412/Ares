; ModuleID = './vmware_toolbox_cmd-toolboxcmd-devices.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-devices.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RD_Info = type { [32 x i8], i32, i8 }
%union.Backdoor_proto = type { %struct.anon }
%struct.anon = type { %union.anon, i64, %union.anon.2, %union.anon.5, %union.anon.8, %union.anon.11 }
%union.anon = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.11 = type { i64 }
%struct.anon.3 = type { i16, i16 }
%struct.anon.14 = type { %union.anon.15, %union.anon.18, %union.anon.21, %union.anon.24, %union.anon.27, %union.anon.30 }
%union.anon.15 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.27 = type { i64 }
%union.anon.30 = type { i64 }

@optind = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"@&!*@*@(arg.devicename)device name\00", align 1
@.str.7 = private unnamed_addr constant [325 x i8] c"@&!*@*@(help.device)%s: functions related to the virtual machine's hardware devices\0AUsage: %s %s <subcommand> [args]\0Adev is the name of the device.\0A\0ASubcommands:\0A   enable <dev>: enable the device dev\0A   disable <dev>: disable the device dev\0A   list: list all available devices\0A   status <dev>: print the status of a device\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"@&!*@*@(option.enabled)Enabled\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"@&!*@*@(option.disabled)Disabled\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"@&!*@*@(device.notfound)Error fetching interface information: device not found.\0A\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"@&!*@*@(device.connect.error)Unable to connect device %s.\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"@&!*@*@(device.disconnect.error)Unable to disconnect device %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Device_Command(i8**, i32, i32) #0 !dbg !13 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !24, metadata !25), !dbg !26
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !27, metadata !25), !dbg !28
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !29, metadata !25), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %8, metadata !31, metadata !25), !dbg !32
  %10 = load i32, i32* @optind, align 4, !dbg !33
  %11 = sext i32 %10 to i64, !dbg !34
  %12 = load i8**, i8*** %5, align 8, !dbg !34
  %13 = getelementptr inbounds i8*, i8** %12, i64 %11, !dbg !34
  %14 = load i8*, i8** %13, align 8, !dbg !34
  store i8* %14, i8** %8, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8* %9, metadata !35, metadata !25), !dbg !37
  %15 = load i32, i32* @optind, align 4, !dbg !38
  %16 = add nsw i32 %15, 1, !dbg !39
  %17 = load i32, i32* %6, align 4, !dbg !40
  %18 = icmp slt i32 %16, %17, !dbg !41
  %19 = zext i1 %18 to i32, !dbg !41
  %20 = trunc i32 %19 to i8, !dbg !38
  store i8 %20, i8* %9, align 1, !dbg !37
  %21 = load i8*, i8** %8, align 8, !dbg !42
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #4, !dbg !44
  %23 = icmp eq i32 %22, 0, !dbg !45
  br i1 %23, label %24, label %26, !dbg !46

; <label>:24:                                     ; preds = %3
  %25 = call i32 @DevicesList(), !dbg !47
  store i32 %25, i32* %4, align 4, !dbg !49
  br label %88, !dbg !49

; <label>:26:                                     ; preds = %3
  %27 = load i8*, i8** %8, align 8, !dbg !50
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !52
  %29 = icmp eq i32 %28, 0, !dbg !53
  br i1 %29, label %30, label %42, !dbg !54

; <label>:30:                                     ; preds = %26
  %31 = load i8, i8* %9, align 1, !dbg !55
  %32 = icmp ne i8 %31, 0, !dbg !55
  br i1 %32, label %33, label %41, !dbg !58

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* @optind, align 4, !dbg !59
  %35 = add nsw i32 %34, 1, !dbg !61
  %36 = sext i32 %35 to i64, !dbg !62
  %37 = load i8**, i8*** %5, align 8, !dbg !62
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36, !dbg !62
  %39 = load i8*, i8** %38, align 8, !dbg !62
  %40 = call i32 @DevicesGetStatus(i8* %39), !dbg !63
  store i32 %40, i32* %4, align 4, !dbg !64
  br label %88, !dbg !64

; <label>:41:                                     ; preds = %30
  br label %82, !dbg !65

; <label>:42:                                     ; preds = %26
  %43 = load i8*, i8** %8, align 8, !dbg !66
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #4, !dbg !69
  %45 = icmp eq i32 %44, 0, !dbg !70
  br i1 %45, label %46, label %58, !dbg !69

; <label>:46:                                     ; preds = %42
  %47 = load i8, i8* %9, align 1, !dbg !71
  %48 = icmp ne i8 %47, 0, !dbg !71
  br i1 %48, label %49, label %57, !dbg !74

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* @optind, align 4, !dbg !75
  %51 = add nsw i32 %50, 1, !dbg !77
  %52 = sext i32 %51 to i64, !dbg !78
  %53 = load i8**, i8*** %5, align 8, !dbg !78
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52, !dbg !78
  %55 = load i8*, i8** %54, align 8, !dbg !78
  %56 = call i32 @DevicesSetStatus(i8* %55, i8 signext 1), !dbg !79
  store i32 %56, i32* %4, align 4, !dbg !80
  br label %88, !dbg !80

; <label>:57:                                     ; preds = %46
  br label %81, !dbg !81

; <label>:58:                                     ; preds = %42
  %59 = load i8*, i8** %8, align 8, !dbg !82
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !85
  %61 = icmp eq i32 %60, 0, !dbg !86
  br i1 %61, label %62, label %74, !dbg !85

; <label>:62:                                     ; preds = %58
  %63 = load i8, i8* %9, align 1, !dbg !87
  %64 = icmp ne i8 %63, 0, !dbg !87
  br i1 %64, label %65, label %73, !dbg !90

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* @optind, align 4, !dbg !91
  %67 = add nsw i32 %66, 1, !dbg !93
  %68 = sext i32 %67 to i64, !dbg !94
  %69 = load i8**, i8*** %5, align 8, !dbg !94
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68, !dbg !94
  %71 = load i8*, i8** %70, align 8, !dbg !94
  %72 = call i32 @DevicesSetStatus(i8* %71, i8 signext 0), !dbg !95
  store i32 %72, i32* %4, align 4, !dbg !96
  br label %88, !dbg !96

; <label>:73:                                     ; preds = %62
  br label %80, !dbg !97

; <label>:74:                                     ; preds = %58
  %75 = load i8**, i8*** %5, align 8, !dbg !98
  %76 = getelementptr inbounds i8*, i8** %75, i64 0, !dbg !98
  %77 = load i8*, i8** %76, align 8, !dbg !98
  %78 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0)), !dbg !100
  %79 = load i8*, i8** %8, align 8, !dbg !101
  call void @ToolsCmd_UnknownEntityError(i8* %77, i8* %78, i8* %79), !dbg !102
  store i32 64, i32* %4, align 4, !dbg !103
  br label %88, !dbg !103

; <label>:80:                                     ; preds = %73
  br label %81

; <label>:81:                                     ; preds = %80, %57
  br label %82

; <label>:82:                                     ; preds = %81, %41
  br label %83

; <label>:83:                                     ; preds = %82
  %84 = load i8**, i8*** %5, align 8, !dbg !104
  %85 = getelementptr inbounds i8*, i8** %84, i64 0, !dbg !104
  %86 = load i8*, i8** %85, align 8, !dbg !104
  %87 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0)), !dbg !105
  call void @ToolsCmd_MissingEntityError(i8* %86, i8* %87), !dbg !106
  store i32 64, i32* %4, align 4, !dbg !108
  br label %88, !dbg !108

; <label>:88:                                     ; preds = %83, %74, %65, %49, %33, %24
  %89 = load i32, i32* %4, align 4, !dbg !109
  ret i32 %89, !dbg !109
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @DevicesList() #0 !dbg !110 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.RD_Info, align 4
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !113, metadata !25), !dbg !114
  store i32 0, i32* %1, align 4, !dbg !115
  br label %4, !dbg !117

; <label>:4:                                      ; preds = %33, %0
  %5 = load i32, i32* %1, align 4, !dbg !118
  %6 = icmp slt i32 %5, 50, !dbg !121
  br i1 %6, label %7, label %36, !dbg !122

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.RD_Info* %2, metadata !123, metadata !25), !dbg !135
  %8 = load i32, i32* %1, align 4, !dbg !136
  %9 = trunc i32 %8 to i16, !dbg !136
  %10 = call signext i8 @GetDeviceInfo(i16 zeroext %9, %struct.RD_Info* %2), !dbg !138
  %11 = sext i8 %10 to i32, !dbg !138
  %12 = icmp ne i32 %11, 0, !dbg !138
  br i1 %12, label %13, label %32, !dbg !139

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %2, i32 0, i32 0, !dbg !140
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i32 0, i32 0, !dbg !142
  %16 = call i64 @strlen(i8* %15) #4, !dbg !143
  %17 = icmp ugt i64 %16, 0, !dbg !144
  br i1 %17, label %18, label %32, !dbg !145

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i8** %3, metadata !146, metadata !25), !dbg !150
  %19 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %2, i32 0, i32 2, !dbg !151
  %20 = load i8, i8* %19, align 4, !dbg !151
  %21 = sext i8 %20 to i32, !dbg !152
  %22 = icmp ne i32 %21, 0, !dbg !152
  br i1 %22, label %23, label %25, !dbg !152

; <label>:23:                                     ; preds = %18
  %24 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)), !dbg !153
  br label %27, !dbg !155

; <label>:25:                                     ; preds = %18
  %26 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0)), !dbg !156
  br label %27, !dbg !157

; <label>:27:                                     ; preds = %25, %23
  %28 = phi i8* [ %24, %23 ], [ %26, %25 ], !dbg !159
  store i8* %28, i8** %3, align 8, !dbg !161
  %29 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %2, i32 0, i32 0, !dbg !162
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %29, i32 0, i32 0, !dbg !163
  %31 = load i8*, i8** %3, align 8, !dbg !164
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %30, i8* %31), !dbg !165
  br label %32, !dbg !166

; <label>:32:                                     ; preds = %27, %13, %7
  br label %33, !dbg !167

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %1, align 4, !dbg !168
  %35 = add nsw i32 %34, 1, !dbg !168
  store i32 %35, i32* %1, align 4, !dbg !168
  br label %4, !dbg !170, !llvm.loop !171

; <label>:36:                                     ; preds = %4
  ret i32 0, !dbg !173
}

; Function Attrs: nounwind uwtable
define internal i32 @DevicesGetStatus(i8*) #0 !dbg !174 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RD_Info, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !177, metadata !25), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %4, metadata !179, metadata !25), !dbg !180
  store i32 0, i32* %4, align 4, !dbg !181
  br label %6, !dbg !183

; <label>:6:                                      ; preds = %30, %1
  %7 = load i32, i32* %4, align 4, !dbg !184
  %8 = icmp slt i32 %7, 50, !dbg !187
  br i1 %8, label %9, label %33, !dbg !188

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct.RD_Info* %5, metadata !189, metadata !25), !dbg !191
  %10 = load i32, i32* %4, align 4, !dbg !192
  %11 = trunc i32 %10 to i16, !dbg !192
  %12 = call signext i8 @GetDeviceInfo(i16 zeroext %11, %struct.RD_Info* %5), !dbg !194
  %13 = sext i8 %12 to i32, !dbg !194
  %14 = icmp ne i32 %13, 0, !dbg !194
  br i1 %14, label %15, label %29, !dbg !195

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %5, i32 0, i32 0, !dbg !196
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0, !dbg !198
  %18 = load i8*, i8** %3, align 8, !dbg !199
  %19 = call i32 @strcmp(i8* %17, i8* %18) #4, !dbg !200
  %20 = icmp eq i32 %19, 0, !dbg !201
  br i1 %20, label %21, label %29, !dbg !202

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %5, i32 0, i32 2, !dbg !204
  %23 = load i8, i8* %22, align 4, !dbg !204
  %24 = icmp ne i8 %23, 0, !dbg !207
  br i1 %24, label %25, label %27, !dbg !208

; <label>:25:                                     ; preds = %21
  %26 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)), !dbg !209
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %26), !dbg !211
  store i32 0, i32* %2, align 4, !dbg !213
  br label %35, !dbg !213

; <label>:27:                                     ; preds = %21
  %28 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0)), !dbg !214
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %28), !dbg !216
  store i32 69, i32* %2, align 4, !dbg !218
  br label %35, !dbg !218

; <label>:29:                                     ; preds = %15, %9
  br label %30, !dbg !219

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %4, align 4, !dbg !220
  %32 = add nsw i32 %31, 1, !dbg !220
  store i32 %32, i32* %4, align 4, !dbg !220
  br label %6, !dbg !222, !llvm.loop !223

; <label>:33:                                     ; preds = %6
  %34 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i32 0, i32 0)), !dbg !225
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %34), !dbg !226
  store i32 72, i32* %2, align 4, !dbg !227
  br label %35, !dbg !227

; <label>:35:                                     ; preds = %33, %27, %25
  %36 = load i32, i32* %2, align 4, !dbg !228
  ret i32 %36, !dbg !228
}

; Function Attrs: nounwind uwtable
define internal i32 @DevicesSetStatus(i8*, i8 signext) #0 !dbg !229 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.RD_Info, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !232, metadata !25), !dbg !233
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !234, metadata !25), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %6, metadata !236, metadata !25), !dbg !237
  store i32 0, i32* %6, align 4, !dbg !238
  br label %8, !dbg !240

; <label>:8:                                      ; preds = %43, %2
  %9 = load i32, i32* %6, align 4, !dbg !241
  %10 = icmp slt i32 %9, 50, !dbg !244
  br i1 %10, label %11, label %46, !dbg !245

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.RD_Info* %7, metadata !246, metadata !25), !dbg !248
  %12 = load i32, i32* %6, align 4, !dbg !249
  %13 = trunc i32 %12 to i16, !dbg !249
  %14 = call signext i8 @GetDeviceInfo(i16 zeroext %13, %struct.RD_Info* %7), !dbg !251
  %15 = sext i8 %14 to i32, !dbg !251
  %16 = icmp ne i32 %15, 0, !dbg !251
  br i1 %16, label %17, label %42, !dbg !252

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %7, i32 0, i32 0, !dbg !253
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i32 0, i32 0, !dbg !254
  %20 = load i8*, i8** %4, align 8, !dbg !255
  %21 = call i32 @strcmp(i8* %19, i8* %20) #4, !dbg !256
  %22 = icmp eq i32 %21, 0, !dbg !257
  br i1 %22, label %23, label %42, !dbg !258

; <label>:23:                                     ; preds = %17
  %24 = load i32, i32* %6, align 4, !dbg !260
  %25 = trunc i32 %24 to i16, !dbg !260
  %26 = load i8, i8* %5, align 1, !dbg !263
  %27 = call signext i8 @SetDeviceState(i16 zeroext %25, i8 signext %26), !dbg !264
  %28 = icmp ne i8 %27, 0, !dbg !264
  br i1 %28, label %41, label %29, !dbg !265

; <label>:29:                                     ; preds = %23
  %30 = load i8, i8* %5, align 1, !dbg !266
  %31 = icmp ne i8 %30, 0, !dbg !266
  br i1 %31, label %32, label %36, !dbg !269

; <label>:32:                                     ; preds = %29
  %33 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i32 0, i32 0)), !dbg !270
  %34 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %7, i32 0, i32 0, !dbg !272
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i32 0, i32 0, !dbg !273
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %33, i8* %35), !dbg !274
  br label %40, !dbg !276

; <label>:36:                                     ; preds = %29
  %37 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0)), !dbg !277
  %38 = getelementptr inbounds %struct.RD_Info, %struct.RD_Info* %7, i32 0, i32 0, !dbg !279
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %38, i32 0, i32 0, !dbg !280
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %37, i8* %39), !dbg !281
  br label %40

; <label>:40:                                     ; preds = %36, %32
  store i32 75, i32* %3, align 4, !dbg !283
  br label %56, !dbg !283

; <label>:41:                                     ; preds = %23
  br label %48, !dbg !284

; <label>:42:                                     ; preds = %17, %11
  br label %43, !dbg !285

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %6, align 4, !dbg !286
  %45 = add nsw i32 %44, 1, !dbg !286
  store i32 %45, i32* %6, align 4, !dbg !286
  br label %8, !dbg !288, !llvm.loop !289

; <label>:46:                                     ; preds = %8
  %47 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i32 0, i32 0)), !dbg !291
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %47), !dbg !292
  store i32 72, i32* %3, align 4, !dbg !293
  br label %56, !dbg !293

; <label>:48:                                     ; preds = %41
  %49 = load i8, i8* %5, align 1, !dbg !294
  %50 = icmp ne i8 %49, 0, !dbg !294
  br i1 %50, label %51, label %53, !dbg !296

; <label>:51:                                     ; preds = %48
  %52 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)), !dbg !297
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %52), !dbg !299
  br label %55, !dbg !301

; <label>:53:                                     ; preds = %48
  %54 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0)), !dbg !302
  call void (i8*, ...) @ToolsCmd_Print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %54), !dbg !304
  br label %55

; <label>:55:                                     ; preds = %53, %51
  store i32 0, i32* %3, align 4, !dbg !306
  br label %56, !dbg !306

; <label>:56:                                     ; preds = %55, %46, %40
  %57 = load i32, i32* %3, align 4, !dbg !307
  ret i32 %57, !dbg !307
}

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #3

declare i8* @VMTools_GetString(i8*, i8*) #3

declare void @ToolsCmd_MissingEntityError(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @Device_Help(i8*, i8*) #0 !dbg !308 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !311, metadata !25), !dbg !312
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !313, metadata !25), !dbg !314
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([325 x i8], [325 x i8]* @.str.7, i32 0, i32 0)), !dbg !315
  %6 = load i8*, i8** %4, align 8, !dbg !316
  %7 = load i8*, i8** %3, align 8, !dbg !317
  %8 = load i8*, i8** %4, align 8, !dbg !318
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8), !dbg !319
  ret void, !dbg !321
}

declare void @g_print(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @GetDeviceInfo(i16 zeroext, %struct.RD_Info*) #0 !dbg !322 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca %struct.RD_Info*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  store i16 %0, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !329, metadata !25), !dbg !330
  store %struct.RD_Info* %1, %struct.RD_Info** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.RD_Info** %5, metadata !331, metadata !25), !dbg !332
  call void @llvm.dbg.declare(metadata i16* %6, metadata !333, metadata !25), !dbg !334
  call void @llvm.dbg.declare(metadata i32** %7, metadata !335, metadata !25), !dbg !336
  store i16 0, i16* %6, align 2, !dbg !337
  %8 = load %struct.RD_Info*, %struct.RD_Info** %5, align 8, !dbg !339
  %9 = bitcast %struct.RD_Info* %8 to i32*, !dbg !340
  store i32* %9, i32** %7, align 8, !dbg !341
  br label %10, !dbg !342

; <label>:10:                                     ; preds = %23, %2
  %11 = load i16, i16* %6, align 2, !dbg !343
  %12 = zext i16 %11 to i64, !dbg !343
  %13 = icmp ult i64 %12, 40, !dbg !345
  br i1 %13, label %14, label %30, !dbg !346

; <label>:14:                                     ; preds = %10
  %15 = load i16, i16* %4, align 2, !dbg !348
  %16 = load i16, i16* %6, align 2, !dbg !351
  %17 = load i32*, i32** %7, align 8, !dbg !352
  %18 = call signext i8 @GetDeviceListElement(i16 zeroext %15, i16 zeroext %16, i32* %17), !dbg !353
  %19 = sext i8 %18 to i32, !dbg !353
  %20 = icmp eq i32 %19, 0, !dbg !354
  br i1 %20, label %21, label %22, !dbg !355

; <label>:21:                                     ; preds = %14
  store i8 0, i8* %3, align 1, !dbg !356
  br label %31, !dbg !356

; <label>:22:                                     ; preds = %14
  br label %23, !dbg !358

; <label>:23:                                     ; preds = %22
  %24 = load i16, i16* %6, align 2, !dbg !359
  %25 = zext i16 %24 to i64, !dbg !359
  %26 = add i64 %25, 4, !dbg !359
  %27 = trunc i64 %26 to i16, !dbg !359
  store i16 %27, i16* %6, align 2, !dbg !359
  %28 = load i32*, i32** %7, align 8, !dbg !360
  %29 = getelementptr inbounds i32, i32* %28, i32 1, !dbg !360
  store i32* %29, i32** %7, align 8, !dbg !360
  br label %10, !dbg !361, !llvm.loop !363

; <label>:30:                                     ; preds = %10
  store i8 1, i8* %3, align 1, !dbg !365
  br label %31, !dbg !365

; <label>:31:                                     ; preds = %30, %21
  %32 = load i8, i8* %3, align 1, !dbg !366
  ret i8 %32, !dbg !366
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @GetDeviceListElement(i16 zeroext, i16 zeroext, i32*) #0 !dbg !367 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca %union.Backdoor_proto, align 8
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !370, metadata !25), !dbg !371
  store i16 %1, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !372, metadata !25), !dbg !373
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !374, metadata !25), !dbg !375
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %8, metadata !376, metadata !25), !dbg !558
  %9 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !559
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 2, !dbg !560
  %11 = bitcast %union.anon.2* %10 to %struct.anon.3*, !dbg !561
  %12 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %11, i32 0, i32 0, !dbg !562
  store i16 11, i16* %12, align 8, !dbg !563
  %13 = load i16, i16* %5, align 2, !dbg !564
  %14 = zext i16 %13 to i32, !dbg !564
  %15 = shl i32 %14, 16, !dbg !565
  %16 = load i16, i16* %6, align 2, !dbg !566
  %17 = zext i16 %16 to i32, !dbg !566
  %18 = or i32 %15, %17, !dbg !567
  %19 = sext i32 %18 to i64, !dbg !568
  %20 = bitcast %union.Backdoor_proto* %8 to %struct.anon*, !dbg !569
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1, !dbg !570
  store i64 %19, i64* %21, align 8, !dbg !571
  call void @Backdoor(%union.Backdoor_proto* %8), !dbg !572
  %22 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !573
  %23 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %22, i32 0, i32 0, !dbg !575
  %24 = bitcast %union.anon.15* %23 to i32*, !dbg !576
  %25 = load i32, i32* %24, align 8, !dbg !576
  %26 = icmp eq i32 %25, 0, !dbg !577
  br i1 %26, label %27, label %28, !dbg !578

; <label>:27:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !579
  br label %34, !dbg !579

; <label>:28:                                     ; preds = %3
  %29 = bitcast %union.Backdoor_proto* %8 to %struct.anon.14*, !dbg !581
  %30 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %29, i32 0, i32 1, !dbg !582
  %31 = bitcast %union.anon.18* %30 to i32*, !dbg !583
  %32 = load i32, i32* %31, align 8, !dbg !583
  %33 = load i32*, i32** %7, align 8, !dbg !584
  store i32 %32, i32* %33, align 4, !dbg !585
  store i8 1, i8* %4, align 1, !dbg !586
  br label %34, !dbg !586

; <label>:34:                                     ; preds = %28, %27
  %35 = load i8, i8* %4, align 1, !dbg !587
  ret i8 %35, !dbg !587
}

declare void @Backdoor(%union.Backdoor_proto*) #3

declare void @ToolsCmd_Print(i8*, ...) #3

declare void @ToolsCmd_PrintErr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @SetDeviceState(i16 zeroext, i8 signext) #0 !dbg !588 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca %union.Backdoor_proto, align 8
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !591, metadata !25), !dbg !592
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !593, metadata !25), !dbg !594
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %5, metadata !595, metadata !25), !dbg !596
  %6 = bitcast %union.Backdoor_proto* %5 to %struct.anon*, !dbg !597
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 2, !dbg !598
  %8 = bitcast %union.anon.2* %7 to %struct.anon.3*, !dbg !599
  %9 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %8, i32 0, i32 0, !dbg !600
  store i16 12, i16* %9, align 8, !dbg !601
  %10 = load i8, i8* %4, align 1, !dbg !602
  %11 = sext i8 %10 to i32, !dbg !602
  %12 = icmp ne i32 %11, 0, !dbg !602
  %13 = select i1 %12, i32 -2147483648, i32 0, !dbg !602
  %14 = load i16, i16* %3, align 2, !dbg !603
  %15 = zext i16 %14 to i32, !dbg !603
  %16 = or i32 %13, %15, !dbg !604
  %17 = zext i32 %16 to i64, !dbg !605
  %18 = bitcast %union.Backdoor_proto* %5 to %struct.anon*, !dbg !606
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1, !dbg !607
  store i64 %17, i64* %19, align 8, !dbg !608
  call void @Backdoor(%union.Backdoor_proto* %5), !dbg !609
  %20 = bitcast %union.Backdoor_proto* %5 to %struct.anon.14*, !dbg !610
  %21 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %20, i32 0, i32 0, !dbg !611
  %22 = bitcast %union.anon.15* %21 to i32*, !dbg !612
  %23 = load i32, i32* %22, align 8, !dbg !612
  %24 = icmp ne i32 %23, 0, !dbg !613
  %25 = select i1 %24, i32 1, i32 0, !dbg !613
  %26 = trunc i32 %25 to i8, !dbg !613
  ret i8 %26, !dbg !614
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-devices.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !6, line: 173, baseType: !7)
!6 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 51, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!13 = distinct !DISubprogram(name: "Device_Command", scope: !14, file: !14, line: 297, type: !15, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!14 = !DIFile(filename: "toolboxcmd-devices.c", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !17, !21}
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !22, line: 50, baseType: !23)
!22 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !22, line: 49, baseType: !17)
!24 = !DILocalVariable(name: "argv", arg: 1, scope: !13, file: !14, line: 297, type: !18)
!25 = !DIExpression()
!26 = !DILocation(line: 297, column: 23, scope: !13)
!27 = !DILocalVariable(name: "argc", arg: 2, scope: !13, file: !14, line: 298, type: !17)
!28 = !DILocation(line: 298, column: 20, scope: !13)
!29 = !DILocalVariable(name: "quiet", arg: 3, scope: !13, file: !14, line: 299, type: !21)
!30 = !DILocation(line: 299, column: 25, scope: !13)
!31 = !DILocalVariable(name: "subcommand", scope: !13, file: !14, line: 301, type: !19)
!32 = !DILocation(line: 301, column: 10, scope: !13)
!33 = !DILocation(line: 301, column: 28, scope: !13)
!34 = !DILocation(line: 301, column: 23, scope: !13)
!35 = !DILocalVariable(name: "haveDeviceArg", scope: !13, file: !14, line: 302, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !6, line: 230, baseType: !20)
!37 = !DILocation(line: 302, column: 9, scope: !13)
!38 = !DILocation(line: 302, column: 25, scope: !13)
!39 = !DILocation(line: 302, column: 32, scope: !13)
!40 = !DILocation(line: 302, column: 38, scope: !13)
!41 = !DILocation(line: 302, column: 36, scope: !13)
!42 = !DILocation(line: 304, column: 15, scope: !43)
!43 = distinct !DILexicalBlock(scope: !13, file: !14, line: 304, column: 8)
!44 = !DILocation(line: 304, column: 8, scope: !43)
!45 = !DILocation(line: 304, column: 35, scope: !43)
!46 = !DILocation(line: 304, column: 8, scope: !13)
!47 = !DILocation(line: 305, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !14, line: 304, column: 41)
!49 = !DILocation(line: 305, column: 7, scope: !48)
!50 = !DILocation(line: 306, column: 22, scope: !51)
!51 = distinct !DILexicalBlock(scope: !43, file: !14, line: 306, column: 15)
!52 = !DILocation(line: 306, column: 15, scope: !51)
!53 = !DILocation(line: 306, column: 44, scope: !51)
!54 = !DILocation(line: 306, column: 15, scope: !43)
!55 = !DILocation(line: 307, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !14, line: 307, column: 11)
!57 = distinct !DILexicalBlock(scope: !51, file: !14, line: 306, column: 50)
!58 = !DILocation(line: 307, column: 11, scope: !57)
!59 = !DILocation(line: 308, column: 39, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !14, line: 307, column: 26)
!61 = !DILocation(line: 308, column: 46, scope: !60)
!62 = !DILocation(line: 308, column: 34, scope: !60)
!63 = !DILocation(line: 308, column: 17, scope: !60)
!64 = !DILocation(line: 308, column: 10, scope: !60)
!65 = !DILocation(line: 310, column: 4, scope: !57)
!66 = !DILocation(line: 310, column: 22, scope: !67)
!67 = !DILexicalBlockFile(scope: !68, file: !14, discriminator: 1)
!68 = distinct !DILexicalBlock(scope: !51, file: !14, line: 310, column: 15)
!69 = !DILocation(line: 310, column: 15, scope: !67)
!70 = !DILocation(line: 310, column: 44, scope: !67)
!71 = !DILocation(line: 311, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !14, line: 311, column: 11)
!73 = distinct !DILexicalBlock(scope: !68, file: !14, line: 310, column: 50)
!74 = !DILocation(line: 311, column: 11, scope: !73)
!75 = !DILocation(line: 312, column: 39, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !14, line: 311, column: 26)
!77 = !DILocation(line: 312, column: 46, scope: !76)
!78 = !DILocation(line: 312, column: 34, scope: !76)
!79 = !DILocation(line: 312, column: 17, scope: !76)
!80 = !DILocation(line: 312, column: 10, scope: !76)
!81 = !DILocation(line: 314, column: 4, scope: !73)
!82 = !DILocation(line: 314, column: 22, scope: !83)
!83 = !DILexicalBlockFile(scope: !84, file: !14, discriminator: 1)
!84 = distinct !DILexicalBlock(scope: !68, file: !14, line: 314, column: 15)
!85 = !DILocation(line: 314, column: 15, scope: !83)
!86 = !DILocation(line: 314, column: 45, scope: !83)
!87 = !DILocation(line: 315, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !14, line: 315, column: 11)
!89 = distinct !DILexicalBlock(scope: !84, file: !14, line: 314, column: 51)
!90 = !DILocation(line: 315, column: 11, scope: !89)
!91 = !DILocation(line: 316, column: 39, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !14, line: 315, column: 26)
!93 = !DILocation(line: 316, column: 46, scope: !92)
!94 = !DILocation(line: 316, column: 34, scope: !92)
!95 = !DILocation(line: 316, column: 17, scope: !92)
!96 = !DILocation(line: 316, column: 10, scope: !92)
!97 = !DILocation(line: 318, column: 4, scope: !89)
!98 = !DILocation(line: 319, column: 35, scope: !99)
!99 = distinct !DILexicalBlock(scope: !84, file: !14, line: 318, column: 11)
!100 = !DILocation(line: 320, column: 35, scope: !99)
!101 = !DILocation(line: 321, column: 35, scope: !99)
!102 = !DILocation(line: 319, column: 7, scope: !99)
!103 = !DILocation(line: 322, column: 7, scope: !99)
!104 = !DILocation(line: 325, column: 32, scope: !13)
!105 = !DILocation(line: 325, column: 41, scope: !13)
!106 = !DILocation(line: 325, column: 4, scope: !107)
!107 = !DILexicalBlockFile(scope: !13, file: !14, discriminator: 1)
!108 = !DILocation(line: 326, column: 4, scope: !13)
!109 = !DILocation(line: 327, column: 1, scope: !13)
!110 = distinct !DISubprogram(name: "DevicesList", scope: !14, file: !14, line: 162, type: !111, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!111 = !DISubroutineType(types: !112)
!112 = !{!17}
!113 = !DILocalVariable(name: "i", scope: !110, file: !14, line: 164, type: !17)
!114 = !DILocation(line: 164, column: 8, scope: !110)
!115 = !DILocation(line: 165, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !14, line: 165, column: 4)
!117 = !DILocation(line: 165, column: 9, scope: !116)
!118 = !DILocation(line: 165, column: 16, scope: !119)
!119 = !DILexicalBlockFile(scope: !120, file: !14, discriminator: 1)
!120 = distinct !DILexicalBlock(scope: !116, file: !14, line: 165, column: 4)
!121 = !DILocation(line: 165, column: 18, scope: !119)
!122 = !DILocation(line: 165, column: 4, scope: !119)
!123 = !DILocalVariable(name: "info", scope: !124, file: !14, line: 166, type: !125)
!124 = distinct !DILexicalBlock(scope: !120, file: !14, line: 165, column: 29)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_Info", file: !126, line: 31, baseType: !127)
!126 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/removable_device.h", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 27, size: 320, align: 32, elements: !128)
!128 = !{!129, !133, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !126, line: 28, baseType: !130, size: 256, align: 8)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, align: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !127, file: !126, line: 29, baseType: !5, size: 32, align: 32, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !127, file: !126, line: 30, baseType: !36, size: 8, align: 8, offset: 288)
!135 = !DILocation(line: 166, column: 15, scope: !124)
!136 = !DILocation(line: 167, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !124, file: !14, line: 167, column: 11)
!138 = !DILocation(line: 167, column: 11, scope: !137)
!139 = !DILocation(line: 167, column: 35, scope: !137)
!140 = !DILocation(line: 167, column: 50, scope: !141)
!141 = !DILexicalBlockFile(scope: !137, file: !14, discriminator: 1)
!142 = !DILocation(line: 167, column: 45, scope: !141)
!143 = !DILocation(line: 167, column: 38, scope: !141)
!144 = !DILocation(line: 167, column: 56, scope: !141)
!145 = !DILocation(line: 167, column: 11, scope: !141)
!146 = !DILocalVariable(name: "status", scope: !147, file: !14, line: 168, type: !148)
!147 = distinct !DILexicalBlock(scope: !137, file: !14, line: 167, column: 61)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!150 = !DILocation(line: 168, column: 22, scope: !147)
!151 = !DILocation(line: 168, column: 36, scope: !147)
!152 = !DILocation(line: 168, column: 31, scope: !147)
!153 = !DILocation(line: 168, column: 46, scope: !154)
!154 = !DILexicalBlockFile(scope: !147, file: !14, discriminator: 1)
!155 = !DILocation(line: 168, column: 31, scope: !154)
!156 = !DILocation(line: 169, column: 46, scope: !147)
!157 = !DILocation(line: 168, column: 31, scope: !158)
!158 = !DILexicalBlockFile(scope: !147, file: !14, discriminator: 2)
!159 = !DILocation(line: 168, column: 31, scope: !160)
!160 = !DILexicalBlockFile(scope: !147, file: !14, discriminator: 3)
!161 = !DILocation(line: 168, column: 22, scope: !160)
!162 = !DILocation(line: 170, column: 35, scope: !147)
!163 = !DILocation(line: 170, column: 30, scope: !147)
!164 = !DILocation(line: 170, column: 41, scope: !147)
!165 = !DILocation(line: 170, column: 10, scope: !147)
!166 = !DILocation(line: 171, column: 7, scope: !147)
!167 = !DILocation(line: 172, column: 4, scope: !124)
!168 = !DILocation(line: 165, column: 25, scope: !169)
!169 = !DILexicalBlockFile(scope: !120, file: !14, discriminator: 2)
!170 = !DILocation(line: 165, column: 4, scope: !169)
!171 = distinct !{!171, !172}
!172 = !DILocation(line: 165, column: 4, scope: !110)
!173 = !DILocation(line: 173, column: 4, scope: !110)
!174 = distinct !DISubprogram(name: "DevicesGetStatus", scope: !14, file: !14, line: 196, type: !175, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!175 = !DISubroutineType(types: !176)
!176 = !{!17, !19}
!177 = !DILocalVariable(name: "devName", arg: 1, scope: !174, file: !14, line: 196, type: !19)
!178 = !DILocation(line: 196, column: 24, scope: !174)
!179 = !DILocalVariable(name: "i", scope: !174, file: !14, line: 198, type: !17)
!180 = !DILocation(line: 198, column: 8, scope: !174)
!181 = !DILocation(line: 199, column: 11, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !14, line: 199, column: 4)
!183 = !DILocation(line: 199, column: 9, scope: !182)
!184 = !DILocation(line: 199, column: 16, scope: !185)
!185 = !DILexicalBlockFile(scope: !186, file: !14, discriminator: 1)
!186 = distinct !DILexicalBlock(scope: !182, file: !14, line: 199, column: 4)
!187 = !DILocation(line: 199, column: 18, scope: !185)
!188 = !DILocation(line: 199, column: 4, scope: !185)
!189 = !DILocalVariable(name: "info", scope: !190, file: !14, line: 200, type: !125)
!190 = distinct !DILexicalBlock(scope: !186, file: !14, line: 199, column: 29)
!191 = !DILocation(line: 200, column: 15, scope: !190)
!192 = !DILocation(line: 201, column: 25, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !14, line: 201, column: 11)
!194 = !DILocation(line: 201, column: 11, scope: !193)
!195 = !DILocation(line: 202, column: 11, scope: !193)
!196 = !DILocation(line: 202, column: 26, scope: !197)
!197 = !DILexicalBlockFile(scope: !193, file: !14, discriminator: 1)
!198 = !DILocation(line: 202, column: 21, scope: !197)
!199 = !DILocation(line: 202, column: 32, scope: !197)
!200 = !DILocation(line: 202, column: 14, scope: !197)
!201 = !DILocation(line: 202, column: 41, scope: !197)
!202 = !DILocation(line: 201, column: 11, scope: !203)
!203 = !DILexicalBlockFile(scope: !190, file: !14, discriminator: 1)
!204 = !DILocation(line: 203, column: 19, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !14, line: 203, column: 14)
!206 = distinct !DILexicalBlock(scope: !193, file: !14, line: 202, column: 47)
!207 = !DILocation(line: 203, column: 14, scope: !205)
!208 = !DILocation(line: 203, column: 14, scope: !206)
!209 = !DILocation(line: 204, column: 36, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !14, line: 203, column: 28)
!211 = !DILocation(line: 204, column: 13, scope: !212)
!212 = !DILexicalBlockFile(scope: !210, file: !14, discriminator: 1)
!213 = !DILocation(line: 205, column: 13, scope: !210)
!214 = !DILocation(line: 207, column: 36, scope: !215)
!215 = distinct !DILexicalBlock(scope: !205, file: !14, line: 206, column: 17)
!216 = !DILocation(line: 207, column: 13, scope: !217)
!217 = !DILexicalBlockFile(scope: !215, file: !14, discriminator: 1)
!218 = !DILocation(line: 208, column: 13, scope: !215)
!219 = !DILocation(line: 212, column: 4, scope: !190)
!220 = !DILocation(line: 199, column: 25, scope: !221)
!221 = !DILexicalBlockFile(scope: !186, file: !14, discriminator: 2)
!222 = !DILocation(line: 199, column: 4, scope: !221)
!223 = distinct !{!223, !224}
!224 = !DILocation(line: 199, column: 4, scope: !174)
!225 = !DILocation(line: 214, column: 22, scope: !174)
!226 = !DILocation(line: 213, column: 4, scope: !174)
!227 = !DILocation(line: 216, column: 4, scope: !174)
!228 = !DILocation(line: 217, column: 1, scope: !174)
!229 = distinct !DISubprogram(name: "DevicesSetStatus", scope: !14, file: !14, line: 240, type: !230, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!230 = !DISubroutineType(types: !231)
!231 = !{!17, !19, !36}
!232 = !DILocalVariable(name: "devName", arg: 1, scope: !229, file: !14, line: 240, type: !19)
!233 = !DILocation(line: 240, column: 24, scope: !229)
!234 = !DILocalVariable(name: "enable", arg: 2, scope: !229, file: !14, line: 241, type: !36)
!235 = !DILocation(line: 241, column: 23, scope: !229)
!236 = !DILocalVariable(name: "dev_id", scope: !229, file: !14, line: 243, type: !17)
!237 = !DILocation(line: 243, column: 8, scope: !229)
!238 = !DILocation(line: 244, column: 16, scope: !239)
!239 = distinct !DILexicalBlock(scope: !229, file: !14, line: 244, column: 4)
!240 = !DILocation(line: 244, column: 9, scope: !239)
!241 = !DILocation(line: 244, column: 21, scope: !242)
!242 = !DILexicalBlockFile(scope: !243, file: !14, discriminator: 1)
!243 = distinct !DILexicalBlock(scope: !239, file: !14, line: 244, column: 4)
!244 = !DILocation(line: 244, column: 28, scope: !242)
!245 = !DILocation(line: 244, column: 4, scope: !242)
!246 = !DILocalVariable(name: "info", scope: !247, file: !14, line: 245, type: !125)
!247 = distinct !DILexicalBlock(scope: !243, file: !14, line: 244, column: 44)
!248 = !DILocation(line: 245, column: 15, scope: !247)
!249 = !DILocation(line: 246, column: 25, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !14, line: 246, column: 11)
!251 = !DILocation(line: 246, column: 11, scope: !250)
!252 = !DILocation(line: 246, column: 40, scope: !250)
!253 = !DILocation(line: 247, column: 23, scope: !250)
!254 = !DILocation(line: 247, column: 18, scope: !250)
!255 = !DILocation(line: 247, column: 29, scope: !250)
!256 = !DILocation(line: 247, column: 11, scope: !250)
!257 = !DILocation(line: 247, column: 38, scope: !250)
!258 = !DILocation(line: 246, column: 11, scope: !259)
!259 = !DILexicalBlockFile(scope: !247, file: !14, discriminator: 1)
!260 = !DILocation(line: 248, column: 30, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !14, line: 248, column: 14)
!262 = distinct !DILexicalBlock(scope: !250, file: !14, line: 247, column: 44)
!263 = !DILocation(line: 248, column: 38, scope: !261)
!264 = !DILocation(line: 248, column: 15, scope: !261)
!265 = !DILocation(line: 248, column: 14, scope: !262)
!266 = !DILocation(line: 249, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !14, line: 249, column: 17)
!268 = distinct !DILexicalBlock(scope: !261, file: !14, line: 248, column: 47)
!269 = !DILocation(line: 249, column: 17, scope: !268)
!270 = !DILocation(line: 250, column: 34, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !14, line: 249, column: 25)
!272 = !DILocation(line: 252, column: 39, scope: !271)
!273 = !DILocation(line: 252, column: 34, scope: !271)
!274 = !DILocation(line: 250, column: 16, scope: !275)
!275 = !DILexicalBlockFile(scope: !271, file: !14, discriminator: 1)
!276 = !DILocation(line: 253, column: 13, scope: !271)
!277 = !DILocation(line: 254, column: 34, scope: !278)
!278 = distinct !DILexicalBlock(scope: !267, file: !14, line: 253, column: 20)
!279 = !DILocation(line: 256, column: 39, scope: !278)
!280 = !DILocation(line: 256, column: 34, scope: !278)
!281 = !DILocation(line: 254, column: 16, scope: !282)
!282 = !DILexicalBlockFile(scope: !278, file: !14, discriminator: 1)
!283 = !DILocation(line: 258, column: 13, scope: !268)
!284 = !DILocation(line: 260, column: 10, scope: !262)
!285 = !DILocation(line: 262, column: 4, scope: !247)
!286 = !DILocation(line: 244, column: 40, scope: !287)
!287 = !DILexicalBlockFile(scope: !243, file: !14, discriminator: 2)
!288 = !DILocation(line: 244, column: 4, scope: !287)
!289 = distinct !{!289, !290}
!290 = !DILocation(line: 244, column: 4, scope: !229)
!291 = !DILocation(line: 265, column: 22, scope: !229)
!292 = !DILocation(line: 264, column: 4, scope: !229)
!293 = !DILocation(line: 267, column: 4, scope: !229)
!294 = !DILocation(line: 270, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !229, file: !14, line: 270, column: 8)
!296 = !DILocation(line: 270, column: 8, scope: !229)
!297 = !DILocation(line: 271, column: 30, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !14, line: 270, column: 16)
!299 = !DILocation(line: 271, column: 7, scope: !300)
!300 = !DILexicalBlockFile(scope: !298, file: !14, discriminator: 1)
!301 = !DILocation(line: 272, column: 4, scope: !298)
!302 = !DILocation(line: 273, column: 30, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !14, line: 272, column: 11)
!304 = !DILocation(line: 273, column: 7, scope: !305)
!305 = !DILexicalBlockFile(scope: !303, file: !14, discriminator: 1)
!306 = !DILocation(line: 275, column: 4, scope: !229)
!307 = !DILocation(line: 276, column: 1, scope: !229)
!308 = distinct !DISubprogram(name: "Device_Help", scope: !14, file: !14, line: 347, type: !309, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !148, !148}
!311 = !DILocalVariable(name: "progName", arg: 1, scope: !308, file: !14, line: 347, type: !148)
!312 = !DILocation(line: 347, column: 25, scope: !308)
!313 = !DILocalVariable(name: "cmd", arg: 2, scope: !308, file: !14, line: 348, type: !148)
!314 = !DILocation(line: 348, column: 25, scope: !308)
!315 = !DILocation(line: 350, column: 12, scope: !308)
!316 = !DILocation(line: 359, column: 12, scope: !308)
!317 = !DILocation(line: 359, column: 17, scope: !308)
!318 = !DILocation(line: 359, column: 27, scope: !308)
!319 = !DILocation(line: 350, column: 4, scope: !320)
!320 = !DILexicalBlockFile(scope: !308, file: !14, discriminator: 1)
!321 = !DILocation(line: 360, column: 1, scope: !308)
!322 = distinct !DISubprogram(name: "GetDeviceInfo", scope: !14, file: !14, line: 122, type: !323, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!323 = !DISubroutineType(types: !324)
!324 = !{!36, !325, !328}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !6, line: 175, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 49, baseType: !327)
!327 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!329 = !DILocalVariable(name: "id", arg: 1, scope: !322, file: !14, line: 122, type: !325)
!330 = !DILocation(line: 122, column: 22, scope: !322)
!331 = !DILocalVariable(name: "info", arg: 2, scope: !322, file: !14, line: 123, type: !328)
!332 = !DILocation(line: 123, column: 24, scope: !322)
!333 = !DILocalVariable(name: "offset", scope: !322, file: !14, line: 125, type: !325)
!334 = !DILocation(line: 125, column: 11, scope: !322)
!335 = !DILocalVariable(name: "p", scope: !322, file: !14, line: 126, type: !4)
!336 = !DILocation(line: 126, column: 12, scope: !322)
!337 = !DILocation(line: 133, column: 16, scope: !338)
!338 = distinct !DILexicalBlock(scope: !322, file: !14, line: 133, column: 4)
!339 = !DILocation(line: 133, column: 35, scope: !338)
!340 = !DILocation(line: 133, column: 25, scope: !338)
!341 = !DILocation(line: 133, column: 23, scope: !338)
!342 = !DILocation(line: 133, column: 9, scope: !338)
!343 = !DILocation(line: 134, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !14, line: 133, column: 4)
!345 = !DILocation(line: 134, column: 16, scope: !344)
!346 = !DILocation(line: 133, column: 4, scope: !347)
!347 = !DILexicalBlockFile(scope: !338, file: !14, discriminator: 1)
!348 = !DILocation(line: 136, column: 32, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !14, line: 136, column: 11)
!350 = distinct !DILexicalBlock(scope: !344, file: !14, line: 135, column: 41)
!351 = !DILocation(line: 136, column: 36, scope: !349)
!352 = !DILocation(line: 136, column: 44, scope: !349)
!353 = !DILocation(line: 136, column: 11, scope: !349)
!354 = !DILocation(line: 136, column: 47, scope: !349)
!355 = !DILocation(line: 136, column: 11, scope: !350)
!356 = !DILocation(line: 137, column: 10, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !14, line: 136, column: 55)
!358 = !DILocation(line: 139, column: 4, scope: !350)
!359 = !DILocation(line: 135, column: 16, scope: !344)
!360 = !DILocation(line: 135, column: 37, scope: !344)
!361 = !DILocation(line: 133, column: 4, scope: !362)
!362 = !DILexicalBlockFile(scope: !344, file: !14, discriminator: 2)
!363 = distinct !{!363, !364}
!364 = !DILocation(line: 133, column: 4, scope: !322)
!365 = !DILocation(line: 141, column: 4, scope: !322)
!366 = !DILocation(line: 142, column: 1, scope: !322)
!367 = distinct !DISubprogram(name: "GetDeviceListElement", scope: !14, file: !14, line: 86, type: !368, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!368 = !DISubroutineType(types: !369)
!369 = !{!36, !325, !325, !4}
!370 = !DILocalVariable(name: "id", arg: 1, scope: !367, file: !14, line: 86, type: !325)
!371 = !DILocation(line: 86, column: 29, scope: !367)
!372 = !DILocalVariable(name: "offset", arg: 2, scope: !367, file: !14, line: 87, type: !325)
!373 = !DILocation(line: 87, column: 29, scope: !367)
!374 = !DILocalVariable(name: "data", arg: 3, scope: !367, file: !14, line: 89, type: !4)
!375 = !DILocation(line: 89, column: 30, scope: !367)
!376 = !DILocalVariable(name: "bp", scope: !367, file: !14, line: 91, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto", file: !378, line: 102, baseType: !379)
!378 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/backdoor_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!379 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !378, line: 85, size: 384, align: 64, elements: !380)
!380 = !{!381, !465}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !379, file: !378, line: 93, baseType: !382, size: 384, align: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !378, line: 86, size: 384, align: 64, elements: !383)
!383 = !{!384, !402, !405, !420, !435, !450}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !382, file: !378, line: 87, baseType: !385, size: 64, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !378, line: 87, size: 64, align: 64, elements: !386)
!386 = !{!387, !392, !393, !398}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !385, file: !378, line: 87, baseType: !388, size: 32, align: 16)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !378, line: 87, size: 32, align: 16, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !388, file: !378, line: 87, baseType: !325, size: 16, align: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !388, file: !378, line: 87, baseType: !325, size: 16, align: 16, offset: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !385, file: !378, line: 87, baseType: !5, size: 32, align: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !385, file: !378, line: 87, baseType: !394, size: 64, align: 32)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !378, line: 87, size: 64, align: 32, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !394, file: !378, line: 87, baseType: !5, size: 32, align: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !394, file: !378, line: 87, baseType: !5, size: 32, align: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !385, file: !378, line: 87, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !6, line: 171, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 55, baseType: !401)
!401 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !378, line: 88, baseType: !403, size: 64, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !404, line: 216, baseType: !401)
!404 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1633")
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !382, file: !378, line: 89, baseType: !406, size: 64, align: 64, offset: 128)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !378, line: 89, size: 64, align: 64, elements: !407)
!407 = !{!408, !413, !414, !419}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !406, file: !378, line: 89, baseType: !409, size: 32, align: 16)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !378, line: 89, size: 32, align: 16, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !409, file: !378, line: 89, baseType: !325, size: 16, align: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !409, file: !378, line: 89, baseType: !325, size: 16, align: 16, offset: 16)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !406, file: !378, line: 89, baseType: !5, size: 32, align: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !406, file: !378, line: 89, baseType: !415, size: 64, align: 32)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !378, line: 89, size: 64, align: 32, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !415, file: !378, line: 89, baseType: !5, size: 32, align: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !415, file: !378, line: 89, baseType: !5, size: 32, align: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !406, file: !378, line: 89, baseType: !399, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !382, file: !378, line: 90, baseType: !421, size: 64, align: 64, offset: 192)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !378, line: 90, size: 64, align: 64, elements: !422)
!422 = !{!423, !428, !429, !434}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !421, file: !378, line: 90, baseType: !424, size: 32, align: 16)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !378, line: 90, size: 32, align: 16, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !424, file: !378, line: 90, baseType: !325, size: 16, align: 16)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !424, file: !378, line: 90, baseType: !325, size: 16, align: 16, offset: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !421, file: !378, line: 90, baseType: !5, size: 32, align: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !421, file: !378, line: 90, baseType: !430, size: 64, align: 32)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !378, line: 90, size: 64, align: 32, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !430, file: !378, line: 90, baseType: !5, size: 32, align: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !430, file: !378, line: 90, baseType: !5, size: 32, align: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !421, file: !378, line: 90, baseType: !399, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !382, file: !378, line: 91, baseType: !436, size: 64, align: 64, offset: 256)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !378, line: 91, size: 64, align: 64, elements: !437)
!437 = !{!438, !443, !444, !449}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !436, file: !378, line: 91, baseType: !439, size: 32, align: 16)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !378, line: 91, size: 32, align: 16, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !439, file: !378, line: 91, baseType: !325, size: 16, align: 16)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !439, file: !378, line: 91, baseType: !325, size: 16, align: 16, offset: 16)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !436, file: !378, line: 91, baseType: !5, size: 32, align: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !436, file: !378, line: 91, baseType: !445, size: 64, align: 32)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !378, line: 91, size: 64, align: 32, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !445, file: !378, line: 91, baseType: !5, size: 32, align: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !445, file: !378, line: 91, baseType: !5, size: 32, align: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !436, file: !378, line: 91, baseType: !399, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !382, file: !378, line: 92, baseType: !451, size: 64, align: 64, offset: 320)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !378, line: 92, size: 64, align: 64, elements: !452)
!452 = !{!453, !458, !459, !464}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !451, file: !378, line: 92, baseType: !454, size: 32, align: 16)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !378, line: 92, size: 32, align: 16, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !454, file: !378, line: 92, baseType: !325, size: 16, align: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !454, file: !378, line: 92, baseType: !325, size: 16, align: 16, offset: 16)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !451, file: !378, line: 92, baseType: !5, size: 32, align: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !451, file: !378, line: 92, baseType: !460, size: 64, align: 32)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !378, line: 92, size: 64, align: 32, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !460, file: !378, line: 92, baseType: !5, size: 32, align: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !460, file: !378, line: 92, baseType: !5, size: 32, align: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !451, file: !378, line: 92, baseType: !399, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !379, file: !378, line: 101, baseType: !466, size: 384, align: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !378, line: 94, size: 384, align: 64, elements: !467)
!467 = !{!468, !483, !498, !513, !528, !543}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !466, file: !378, line: 95, baseType: !469, size: 64, align: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !378, line: 95, size: 64, align: 64, elements: !470)
!470 = !{!471, !476, !477, !482}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !469, file: !378, line: 95, baseType: !472, size: 32, align: 16)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !378, line: 95, size: 32, align: 16, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !472, file: !378, line: 95, baseType: !325, size: 16, align: 16)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !472, file: !378, line: 95, baseType: !325, size: 16, align: 16, offset: 16)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !469, file: !378, line: 95, baseType: !5, size: 32, align: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !469, file: !378, line: 95, baseType: !478, size: 64, align: 32)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !378, line: 95, size: 64, align: 32, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !478, file: !378, line: 95, baseType: !5, size: 32, align: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !478, file: !378, line: 95, baseType: !5, size: 32, align: 32, offset: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !469, file: !378, line: 95, baseType: !399, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !466, file: !378, line: 96, baseType: !484, size: 64, align: 64, offset: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !378, line: 96, size: 64, align: 64, elements: !485)
!485 = !{!486, !491, !492, !497}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !484, file: !378, line: 96, baseType: !487, size: 32, align: 16)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !378, line: 96, size: 32, align: 16, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !487, file: !378, line: 96, baseType: !325, size: 16, align: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !487, file: !378, line: 96, baseType: !325, size: 16, align: 16, offset: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !484, file: !378, line: 96, baseType: !5, size: 32, align: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !484, file: !378, line: 96, baseType: !493, size: 64, align: 32)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !378, line: 96, size: 64, align: 32, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !493, file: !378, line: 96, baseType: !5, size: 32, align: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !493, file: !378, line: 96, baseType: !5, size: 32, align: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !484, file: !378, line: 96, baseType: !399, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !466, file: !378, line: 97, baseType: !499, size: 64, align: 64, offset: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !378, line: 97, size: 64, align: 64, elements: !500)
!500 = !{!501, !506, !507, !512}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !499, file: !378, line: 97, baseType: !502, size: 32, align: 16)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !378, line: 97, size: 32, align: 16, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !502, file: !378, line: 97, baseType: !325, size: 16, align: 16)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !502, file: !378, line: 97, baseType: !325, size: 16, align: 16, offset: 16)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !499, file: !378, line: 97, baseType: !5, size: 32, align: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !499, file: !378, line: 97, baseType: !508, size: 64, align: 32)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !378, line: 97, size: 64, align: 32, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !508, file: !378, line: 97, baseType: !5, size: 32, align: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !508, file: !378, line: 97, baseType: !5, size: 32, align: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !499, file: !378, line: 97, baseType: !399, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !466, file: !378, line: 98, baseType: !514, size: 64, align: 64, offset: 192)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !378, line: 98, size: 64, align: 64, elements: !515)
!515 = !{!516, !521, !522, !527}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !514, file: !378, line: 98, baseType: !517, size: 32, align: 16)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !378, line: 98, size: 32, align: 16, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !517, file: !378, line: 98, baseType: !325, size: 16, align: 16)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !517, file: !378, line: 98, baseType: !325, size: 16, align: 16, offset: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !514, file: !378, line: 98, baseType: !5, size: 32, align: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !514, file: !378, line: 98, baseType: !523, size: 64, align: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !378, line: 98, size: 64, align: 32, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !523, file: !378, line: 98, baseType: !5, size: 32, align: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !523, file: !378, line: 98, baseType: !5, size: 32, align: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !514, file: !378, line: 98, baseType: !399, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !466, file: !378, line: 99, baseType: !529, size: 64, align: 64, offset: 256)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !378, line: 99, size: 64, align: 64, elements: !530)
!530 = !{!531, !536, !537, !542}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !529, file: !378, line: 99, baseType: !532, size: 32, align: 16)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !378, line: 99, size: 32, align: 16, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !532, file: !378, line: 99, baseType: !325, size: 16, align: 16)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !532, file: !378, line: 99, baseType: !325, size: 16, align: 16, offset: 16)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !529, file: !378, line: 99, baseType: !5, size: 32, align: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !529, file: !378, line: 99, baseType: !538, size: 64, align: 32)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !529, file: !378, line: 99, size: 64, align: 32, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !538, file: !378, line: 99, baseType: !5, size: 32, align: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !538, file: !378, line: 99, baseType: !5, size: 32, align: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !529, file: !378, line: 99, baseType: !399, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !466, file: !378, line: 100, baseType: !544, size: 64, align: 64, offset: 320)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !378, line: 100, size: 64, align: 64, elements: !545)
!545 = !{!546, !551, !552, !557}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !544, file: !378, line: 100, baseType: !547, size: 32, align: 16)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !544, file: !378, line: 100, size: 32, align: 16, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !547, file: !378, line: 100, baseType: !325, size: 16, align: 16)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !547, file: !378, line: 100, baseType: !325, size: 16, align: 16, offset: 16)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !544, file: !378, line: 100, baseType: !5, size: 32, align: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !544, file: !378, line: 100, baseType: !553, size: 64, align: 32)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !544, file: !378, line: 100, size: 64, align: 32, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !553, file: !378, line: 100, baseType: !5, size: 32, align: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !553, file: !378, line: 100, baseType: !5, size: 32, align: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !544, file: !378, line: 100, baseType: !399, size: 64, align: 64)
!558 = !DILocation(line: 91, column: 19, scope: !367)
!559 = !DILocation(line: 93, column: 7, scope: !367)
!560 = !DILocation(line: 93, column: 10, scope: !367)
!561 = !DILocation(line: 93, column: 13, scope: !367)
!562 = !DILocation(line: 93, column: 19, scope: !367)
!563 = !DILocation(line: 93, column: 23, scope: !367)
!564 = !DILocation(line: 94, column: 18, scope: !367)
!565 = !DILocation(line: 94, column: 21, scope: !367)
!566 = !DILocation(line: 94, column: 30, scope: !367)
!567 = !DILocation(line: 94, column: 28, scope: !367)
!568 = !DILocation(line: 94, column: 17, scope: !367)
!569 = !DILocation(line: 94, column: 7, scope: !367)
!570 = !DILocation(line: 94, column: 10, scope: !367)
!571 = !DILocation(line: 94, column: 15, scope: !367)
!572 = !DILocation(line: 95, column: 4, scope: !367)
!573 = !DILocation(line: 96, column: 11, scope: !574)
!574 = distinct !DILexicalBlock(scope: !367, file: !14, line: 96, column: 8)
!575 = !DILocation(line: 96, column: 15, scope: !574)
!576 = !DILocation(line: 96, column: 18, scope: !574)
!577 = !DILocation(line: 96, column: 23, scope: !574)
!578 = !DILocation(line: 96, column: 8, scope: !367)
!579 = !DILocation(line: 97, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !574, file: !14, line: 96, column: 31)
!581 = !DILocation(line: 99, column: 15, scope: !367)
!582 = !DILocation(line: 99, column: 19, scope: !367)
!583 = !DILocation(line: 99, column: 22, scope: !367)
!584 = !DILocation(line: 99, column: 5, scope: !367)
!585 = !DILocation(line: 99, column: 10, scope: !367)
!586 = !DILocation(line: 100, column: 4, scope: !367)
!587 = !DILocation(line: 101, column: 1, scope: !367)
!588 = distinct !DISubprogram(name: "SetDeviceState", scope: !14, file: !14, line: 56, type: !589, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!589 = !DISubroutineType(types: !590)
!590 = !{!36, !325, !36}
!591 = !DILocalVariable(name: "id", arg: 1, scope: !588, file: !14, line: 56, type: !325)
!592 = !DILocation(line: 56, column: 23, scope: !588)
!593 = !DILocalVariable(name: "connected", arg: 2, scope: !588, file: !14, line: 57, type: !36)
!594 = !DILocation(line: 57, column: 21, scope: !588)
!595 = !DILocalVariable(name: "bp", scope: !588, file: !14, line: 59, type: !377)
!596 = !DILocation(line: 59, column: 19, scope: !588)
!597 = !DILocation(line: 61, column: 7, scope: !588)
!598 = !DILocation(line: 61, column: 10, scope: !588)
!599 = !DILocation(line: 61, column: 13, scope: !588)
!600 = !DILocation(line: 61, column: 19, scope: !588)
!601 = !DILocation(line: 61, column: 23, scope: !588)
!602 = !DILocation(line: 62, column: 18, scope: !588)
!603 = !DILocation(line: 62, column: 48, scope: !588)
!604 = !DILocation(line: 62, column: 46, scope: !588)
!605 = !DILocation(line: 62, column: 17, scope: !588)
!606 = !DILocation(line: 62, column: 7, scope: !588)
!607 = !DILocation(line: 62, column: 10, scope: !588)
!608 = !DILocation(line: 62, column: 15, scope: !588)
!609 = !DILocation(line: 63, column: 4, scope: !588)
!610 = !DILocation(line: 64, column: 14, scope: !588)
!611 = !DILocation(line: 64, column: 18, scope: !588)
!612 = !DILocation(line: 64, column: 21, scope: !588)
!613 = !DILocation(line: 64, column: 11, scope: !588)
!614 = !DILocation(line: 64, column: 4, scope: !588)
