; ModuleID = './vmware_toolbox_cmd-toolboxcmd-scripts.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-scripts.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GKeyFile = type opaque
%struct._GError = type { i32, i32, i8* }

@optind = external global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"@&!*@*@(arg.scripttype)script type\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"@&!*@*@(arg.scriptpath)script path\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.9 = private unnamed_addr constant [437 x i8] c"@&!*@*@(help.script)%s: control the scripts run in response to power operations\0AUsage: %s %s <power|resume|suspend|shutdown> <subcommand> [args]\0A\0ASubcommands:\0A   enable: enable the given script and restore its path to the default\0A   disable: disable the given script\0A   set <full_path>: set the given script to the given path\0A   default: print the default path of the given script\0A   current: print the current path of the given script\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"suspend-script\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"resume-script\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"poweroff-script\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"poweron-script\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"@&!*@*@(script.operation)operation\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"powerops\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%s%c%.*s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"@&!*@*@(script.unknownop)No script for operation %s.\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"@&!*@*@(script.notfound)%s doesn't exist.\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"@&!*@*@(script.write.error)Error writing config: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @Script_Command(i8**, i32, i32) #0 !dbg !19 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !30, metadata !31), !dbg !32
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !33, metadata !31), !dbg !34
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !35, metadata !31), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %8, metadata !37, metadata !31), !dbg !40
  %9 = load i32, i32* @optind, align 4, !dbg !41
  %10 = add nsw i32 %9, 1, !dbg !41
  store i32 %10, i32* @optind, align 4, !dbg !41
  %11 = load i32, i32* %6, align 4, !dbg !43
  %12 = icmp sge i32 %10, %11, !dbg !44
  br i1 %12, label %13, label %18, !dbg !45

; <label>:13:                                     ; preds = %3
  %14 = load i8**, i8*** %5, align 8, !dbg !46
  %15 = getelementptr inbounds i8*, i8** %14, i64 0, !dbg !46
  %16 = load i8*, i8** %15, align 8, !dbg !46
  %17 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0)), !dbg !48
  call void @ToolsCmd_MissingEntityError(i8* %16, i8* %17), !dbg !49
  store i32 64, i32* %4, align 4, !dbg !51
  br label %138, !dbg !51

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* @optind, align 4, !dbg !52
  %20 = add nsw i32 %19, 1, !dbg !52
  store i32 %20, i32* @optind, align 4, !dbg !52
  %21 = sext i32 %19 to i64, !dbg !53
  %22 = load i8**, i8*** %5, align 8, !dbg !53
  %23 = getelementptr inbounds i8*, i8** %22, i64 %21, !dbg !53
  %24 = load i8*, i8** %23, align 8, !dbg !53
  store i8* %24, i8** %8, align 8, !dbg !54
  %25 = load i8*, i8** %8, align 8, !dbg !55
  %26 = call signext i8 @ScriptCheckName(i8* %25), !dbg !57
  %27 = icmp ne i8 %26, 0, !dbg !57
  br i1 %27, label %34, label %28, !dbg !58

; <label>:28:                                     ; preds = %18
  %29 = load i8**, i8*** %5, align 8, !dbg !59
  %30 = getelementptr inbounds i8*, i8** %29, i64 0, !dbg !59
  %31 = load i8*, i8** %30, align 8, !dbg !59
  %32 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0)), !dbg !61
  %33 = load i8*, i8** %8, align 8, !dbg !62
  call void @ToolsCmd_UnknownEntityError(i8* %31, i8* %32, i8* %33), !dbg !63
  store i32 64, i32* %4, align 4, !dbg !65
  br label %138, !dbg !65

; <label>:34:                                     ; preds = %18
  %35 = load i32, i32* @optind, align 4, !dbg !66
  %36 = load i32, i32* %6, align 4, !dbg !68
  %37 = icmp sge i32 %35, %36, !dbg !69
  br i1 %37, label %38, label %43, !dbg !70

; <label>:38:                                     ; preds = %34
  %39 = load i8**, i8*** %5, align 8, !dbg !71
  %40 = getelementptr inbounds i8*, i8** %39, i64 0, !dbg !71
  %41 = load i8*, i8** %40, align 8, !dbg !71
  %42 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)), !dbg !73
  call void @ToolsCmd_MissingEntityError(i8* %41, i8* %42), !dbg !74
  store i32 64, i32* %4, align 4, !dbg !76
  br label %138, !dbg !76

; <label>:43:                                     ; preds = %34
  %44 = load i32, i32* @optind, align 4, !dbg !77
  %45 = sext i32 %44 to i64, !dbg !79
  %46 = load i8**, i8*** %5, align 8, !dbg !79
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45, !dbg !79
  %48 = load i8*, i8** %47, align 8, !dbg !79
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !80
  %50 = icmp eq i32 %49, 0, !dbg !81
  br i1 %50, label %51, label %57, !dbg !82

; <label>:51:                                     ; preds = %43
  %52 = load i8**, i8*** %5, align 8, !dbg !83
  %53 = getelementptr inbounds i8*, i8** %52, i64 0, !dbg !83
  %54 = load i8*, i8** %53, align 8, !dbg !83
  %55 = load i8*, i8** %8, align 8, !dbg !85
  %56 = call i32 @ScriptGetDefault(i8* %54, i8* %55), !dbg !86
  store i32 %56, i32* %4, align 4, !dbg !87
  br label %138, !dbg !87

; <label>:57:                                     ; preds = %43
  %58 = load i32, i32* @optind, align 4, !dbg !88
  %59 = sext i32 %58 to i64, !dbg !90
  %60 = load i8**, i8*** %5, align 8, !dbg !90
  %61 = getelementptr inbounds i8*, i8** %60, i64 %59, !dbg !90
  %62 = load i8*, i8** %61, align 8, !dbg !90
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0)) #4, !dbg !91
  %64 = icmp eq i32 %63, 0, !dbg !92
  br i1 %64, label %65, label %71, !dbg !93

; <label>:65:                                     ; preds = %57
  %66 = load i8**, i8*** %5, align 8, !dbg !94
  %67 = getelementptr inbounds i8*, i8** %66, i64 0, !dbg !94
  %68 = load i8*, i8** %67, align 8, !dbg !94
  %69 = load i8*, i8** %8, align 8, !dbg !96
  %70 = call i32 @ScriptGetCurrent(i8* %68, i8* %69), !dbg !97
  store i32 %70, i32* %4, align 4, !dbg !98
  br label %138, !dbg !98

; <label>:71:                                     ; preds = %57
  %72 = load i32, i32* @optind, align 4, !dbg !99
  %73 = sext i32 %72 to i64, !dbg !101
  %74 = load i8**, i8*** %5, align 8, !dbg !101
  %75 = getelementptr inbounds i8*, i8** %74, i64 %73, !dbg !101
  %76 = load i8*, i8** %75, align 8, !dbg !101
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #4, !dbg !102
  %78 = icmp eq i32 %77, 0, !dbg !103
  br i1 %78, label %79, label %100, !dbg !104

; <label>:79:                                     ; preds = %71
  %80 = load i32, i32* @optind, align 4, !dbg !105
  %81 = add nsw i32 %80, 1, !dbg !105
  store i32 %81, i32* @optind, align 4, !dbg !105
  %82 = load i32, i32* %6, align 4, !dbg !108
  %83 = icmp sge i32 %81, %82, !dbg !109
  br i1 %83, label %84, label %89, !dbg !110

; <label>:84:                                     ; preds = %79
  %85 = load i8**, i8*** %5, align 8, !dbg !111
  %86 = getelementptr inbounds i8*, i8** %85, i64 0, !dbg !111
  %87 = load i8*, i8** %86, align 8, !dbg !111
  %88 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0)), !dbg !113
  call void @ToolsCmd_MissingEntityError(i8* %87, i8* %88), !dbg !114
  store i32 64, i32* %4, align 4, !dbg !116
  br label %138, !dbg !116

; <label>:89:                                     ; preds = %79
  %90 = load i8**, i8*** %5, align 8, !dbg !117
  %91 = getelementptr inbounds i8*, i8** %90, i64 0, !dbg !117
  %92 = load i8*, i8** %91, align 8, !dbg !117
  %93 = load i8*, i8** %8, align 8, !dbg !118
  %94 = load i32, i32* @optind, align 4, !dbg !119
  %95 = sext i32 %94 to i64, !dbg !120
  %96 = load i8**, i8*** %5, align 8, !dbg !120
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95, !dbg !120
  %98 = load i8*, i8** %97, align 8, !dbg !120
  %99 = call i32 @ScriptSet(i8* %92, i8* %93, i8* %98), !dbg !121
  store i32 %99, i32* %4, align 4, !dbg !122
  br label %138, !dbg !122

; <label>:100:                                    ; preds = %71
  %101 = load i32, i32* @optind, align 4, !dbg !123
  %102 = sext i32 %101 to i64, !dbg !125
  %103 = load i8**, i8*** %5, align 8, !dbg !125
  %104 = getelementptr inbounds i8*, i8** %103, i64 %102, !dbg !125
  %105 = load i8*, i8** %104, align 8, !dbg !125
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #4, !dbg !126
  %107 = icmp eq i32 %106, 0, !dbg !127
  br i1 %107, label %108, label %114, !dbg !128

; <label>:108:                                    ; preds = %100
  %109 = load i8**, i8*** %5, align 8, !dbg !129
  %110 = getelementptr inbounds i8*, i8** %109, i64 0, !dbg !129
  %111 = load i8*, i8** %110, align 8, !dbg !129
  %112 = load i8*, i8** %8, align 8, !dbg !131
  %113 = call i32 @ScriptToggle(i8* %111, i8* %112, i8 signext 1), !dbg !132
  store i32 %113, i32* %4, align 4, !dbg !133
  br label %138, !dbg !133

; <label>:114:                                    ; preds = %100
  %115 = load i32, i32* @optind, align 4, !dbg !134
  %116 = sext i32 %115 to i64, !dbg !136
  %117 = load i8**, i8*** %5, align 8, !dbg !136
  %118 = getelementptr inbounds i8*, i8** %117, i64 %116, !dbg !136
  %119 = load i8*, i8** %118, align 8, !dbg !136
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !137
  %121 = icmp eq i32 %120, 0, !dbg !138
  br i1 %121, label %122, label %128, !dbg !139

; <label>:122:                                    ; preds = %114
  %123 = load i8**, i8*** %5, align 8, !dbg !140
  %124 = getelementptr inbounds i8*, i8** %123, i64 0, !dbg !140
  %125 = load i8*, i8** %124, align 8, !dbg !140
  %126 = load i8*, i8** %8, align 8, !dbg !142
  %127 = call i32 @ScriptToggle(i8* %125, i8* %126, i8 signext 0), !dbg !143
  store i32 %127, i32* %4, align 4, !dbg !144
  br label %138, !dbg !144

; <label>:128:                                    ; preds = %114
  %129 = load i8**, i8*** %5, align 8, !dbg !145
  %130 = getelementptr inbounds i8*, i8** %129, i64 0, !dbg !145
  %131 = load i8*, i8** %130, align 8, !dbg !145
  %132 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)), !dbg !147
  %133 = load i32, i32* @optind, align 4, !dbg !148
  %134 = sext i32 %133 to i64, !dbg !149
  %135 = load i8**, i8*** %5, align 8, !dbg !149
  %136 = getelementptr inbounds i8*, i8** %135, i64 %134, !dbg !149
  %137 = load i8*, i8** %136, align 8, !dbg !149
  call void @ToolsCmd_UnknownEntityError(i8* %131, i8* %132, i8* %137), !dbg !150
  store i32 64, i32* %4, align 4, !dbg !151
  br label %138, !dbg !151

; <label>:138:                                    ; preds = %128, %122, %108, %89, %84, %65, %51, %38, %28, %13
  %139 = load i32, i32* %4, align 4, !dbg !152
  ret i32 %139, !dbg !152
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @ToolsCmd_MissingEntityError(i8*, i8*) #2

declare i8* @VMTools_GetString(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @ScriptCheckName(i8*) #0 !dbg !153 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !158, metadata !31), !dbg !159
  %3 = load i8*, i8** %2, align 8, !dbg !160
  %4 = call i8* @GetConfName(i8* %3), !dbg !161
  %5 = icmp ne i8* %4, null, !dbg !162
  %6 = zext i1 %5 to i32, !dbg !162
  %7 = trunc i32 %6 to i8, !dbg !161
  ret i8 %7, !dbg !163
}

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ScriptGetDefault(i8*, i8*) #0 !dbg !164 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !167, metadata !31), !dbg !168
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !31), !dbg !170
  %5 = load i8*, i8** %3, align 8, !dbg !171
  %6 = load i8*, i8** %4, align 8, !dbg !172
  %7 = call i32 @GetConfEntry(i8* %5, i8* %6, i32 0), !dbg !173
  ret i32 %7, !dbg !174
}

; Function Attrs: nounwind uwtable
define internal i32 @ScriptGetCurrent(i8*, i8*) #0 !dbg !175 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !176, metadata !31), !dbg !177
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !178, metadata !31), !dbg !179
  %5 = load i8*, i8** %3, align 8, !dbg !180
  %6 = load i8*, i8** %4, align 8, !dbg !181
  %7 = call i32 @GetConfEntry(i8* %5, i8* %6, i32 1), !dbg !182
  ret i32 %7, !dbg !183
}

; Function Attrs: nounwind uwtable
define internal i32 @ScriptSet(i8*, i8*, i8*) #0 !dbg !184 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GKeyFile*, align 8
  %11 = alloca %struct._GError*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !187, metadata !31), !dbg !188
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !189, metadata !31), !dbg !190
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !191, metadata !31), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %8, metadata !193, metadata !31), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %9, metadata !195, metadata !31), !dbg !196
  store i32 0, i32* %9, align 4, !dbg !196
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %10, metadata !197, metadata !31), !dbg !201
  store %struct._GKeyFile* null, %struct._GKeyFile** %10, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata %struct._GError** %11, metadata !202, metadata !31), !dbg !218
  store %struct._GError* null, %struct._GError** %11, align 8, !dbg !218
  %12 = load i8*, i8** %7, align 8, !dbg !219
  %13 = call signext i8 @File_Exists(i8* %12), !dbg !221
  %14 = icmp ne i8 %13, 0, !dbg !221
  br i1 %14, label %18, label %15, !dbg !222

; <label>:15:                                     ; preds = %3
  %16 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0)), !dbg !223
  %17 = load i8*, i8** %7, align 8, !dbg !225
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %16, i8* %17), !dbg !226
  store i32 72, i32* %4, align 4, !dbg !228
  br label %43, !dbg !228

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %6, align 8, !dbg !229
  %20 = call i8* @GetConfName(i8* %19), !dbg !230
  store i8* %20, i8** %8, align 8, !dbg !231
  %21 = load i8*, i8** %8, align 8, !dbg !232
  %22 = icmp ne i8* %21, null, !dbg !232
  br i1 %22, label %27, label %23, !dbg !234

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %5, align 8, !dbg !235
  %25 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)), !dbg !237
  %26 = load i8*, i8** %6, align 8, !dbg !238
  call void @ToolsCmd_UnknownEntityError(i8* %24, i8* %25, i8* %26), !dbg !239
  store i32 64, i32* %4, align 4, !dbg !240
  br label %43, !dbg !240

; <label>:27:                                     ; preds = %18
  %28 = call %struct._GKeyFile* @LoadConfFile(), !dbg !241
  store %struct._GKeyFile* %28, %struct._GKeyFile** %10, align 8, !dbg !242
  %29 = load %struct._GKeyFile*, %struct._GKeyFile** %10, align 8, !dbg !243
  %30 = load i8*, i8** %8, align 8, !dbg !244
  %31 = load i8*, i8** %7, align 8, !dbg !245
  call void @g_key_file_set_string(%struct._GKeyFile* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %30, i8* %31), !dbg !246
  %32 = load %struct._GKeyFile*, %struct._GKeyFile** %10, align 8, !dbg !247
  %33 = call i32 @VMTools_WriteConfig(i8* null, %struct._GKeyFile* %32, %struct._GError** %11), !dbg !249
  %34 = icmp ne i32 %33, 0, !dbg !249
  br i1 %34, label %40, label %35, !dbg !250

; <label>:35:                                     ; preds = %27
  %36 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i32 0, i32 0)), !dbg !251
  %37 = load %struct._GError*, %struct._GError** %11, align 8, !dbg !253
  %38 = getelementptr inbounds %struct._GError, %struct._GError* %37, i32 0, i32 2, !dbg !254
  %39 = load i8*, i8** %38, align 8, !dbg !254
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %36, i8* %39), !dbg !255
  call void @g_clear_error(%struct._GError** %11), !dbg !257
  store i32 75, i32* %9, align 4, !dbg !258
  br label %40, !dbg !259

; <label>:40:                                     ; preds = %35, %27
  %41 = load %struct._GKeyFile*, %struct._GKeyFile** %10, align 8, !dbg !260
  call void @g_key_file_free(%struct._GKeyFile* %41), !dbg !261
  %42 = load i32, i32* %9, align 4, !dbg !262
  store i32 %42, i32* %4, align 4, !dbg !263
  br label %43, !dbg !263

; <label>:43:                                     ; preds = %40, %23, %15
  %44 = load i32, i32* %4, align 4, !dbg !264
  ret i32 %44, !dbg !264
}

; Function Attrs: nounwind uwtable
define internal i32 @ScriptToggle(i8*, i8*, i8 signext) #0 !dbg !265 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._GKeyFile*, align 8
  %12 = alloca %struct._GError*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !268, metadata !31), !dbg !269
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !270, metadata !31), !dbg !271
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !272, metadata !31), !dbg !273
  call void @llvm.dbg.declare(metadata i8** %8, metadata !274, metadata !31), !dbg !275
  call void @llvm.dbg.declare(metadata i8** %9, metadata !276, metadata !31), !dbg !277
  call void @llvm.dbg.declare(metadata i32* %10, metadata !278, metadata !31), !dbg !279
  store i32 0, i32* %10, align 4, !dbg !279
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %11, metadata !280, metadata !31), !dbg !281
  call void @llvm.dbg.declare(metadata %struct._GError** %12, metadata !282, metadata !31), !dbg !283
  store %struct._GError* null, %struct._GError** %12, align 8, !dbg !283
  %13 = load i8*, i8** %6, align 8, !dbg !284
  %14 = call i8* @GetConfName(i8* %13), !dbg !285
  store i8* %14, i8** %9, align 8, !dbg !286
  %15 = load i8*, i8** %9, align 8, !dbg !287
  %16 = icmp ne i8* %15, null, !dbg !287
  br i1 %16, label %21, label %17, !dbg !289

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %5, align 8, !dbg !290
  %19 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)), !dbg !292
  %20 = load i8*, i8** %6, align 8, !dbg !293
  call void @ToolsCmd_UnknownEntityError(i8* %18, i8* %19, i8* %20), !dbg !294
  store i32 64, i32* %4, align 4, !dbg !295
  br label %44, !dbg !295

; <label>:21:                                     ; preds = %3
  %22 = call %struct._GKeyFile* @LoadConfFile(), !dbg !296
  store %struct._GKeyFile* %22, %struct._GKeyFile** %11, align 8, !dbg !297
  %23 = load i8, i8* %7, align 1, !dbg !298
  %24 = icmp ne i8 %23, 0, !dbg !298
  br i1 %24, label %26, label %25, !dbg !300

; <label>:25:                                     ; preds = %21
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8** %8, align 8, !dbg !301
  br label %29, !dbg !303

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %9, align 8, !dbg !304
  %28 = call i8* @GuestApp_GetDefaultScript(i8* %27), !dbg !306
  store i8* %28, i8** %8, align 8, !dbg !307
  br label %29

; <label>:29:                                     ; preds = %26, %25
  %30 = load %struct._GKeyFile*, %struct._GKeyFile** %11, align 8, !dbg !308
  %31 = load i8*, i8** %9, align 8, !dbg !309
  %32 = load i8*, i8** %8, align 8, !dbg !310
  call void @g_key_file_set_string(%struct._GKeyFile* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %31, i8* %32), !dbg !311
  %33 = load %struct._GKeyFile*, %struct._GKeyFile** %11, align 8, !dbg !312
  %34 = call i32 @VMTools_WriteConfig(i8* null, %struct._GKeyFile* %33, %struct._GError** %12), !dbg !314
  %35 = icmp ne i32 %34, 0, !dbg !314
  br i1 %35, label %41, label %36, !dbg !315

; <label>:36:                                     ; preds = %29
  %37 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i32 0, i32 0)), !dbg !316
  %38 = load %struct._GError*, %struct._GError** %12, align 8, !dbg !318
  %39 = getelementptr inbounds %struct._GError, %struct._GError* %38, i32 0, i32 2, !dbg !319
  %40 = load i8*, i8** %39, align 8, !dbg !319
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %37, i8* %40), !dbg !320
  call void @g_clear_error(%struct._GError** %12), !dbg !322
  store i32 75, i32* %10, align 4, !dbg !323
  br label %41, !dbg !324

; <label>:41:                                     ; preds = %36, %29
  %42 = load %struct._GKeyFile*, %struct._GKeyFile** %11, align 8, !dbg !325
  call void @g_key_file_free(%struct._GKeyFile* %42), !dbg !326
  %43 = load i32, i32* %10, align 4, !dbg !327
  store i32 %43, i32* %4, align 4, !dbg !328
  br label %44, !dbg !328

; <label>:44:                                     ; preds = %41, %17
  %45 = load i32, i32* %4, align 4, !dbg !329
  ret i32 %45, !dbg !329
}

; Function Attrs: nounwind uwtable
define void @Script_Help(i8*, i8*) #0 !dbg !330 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !333, metadata !31), !dbg !334
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !335, metadata !31), !dbg !336
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([437 x i8], [437 x i8]* @.str.9, i32 0, i32 0)), !dbg !337
  %6 = load i8*, i8** %4, align 8, !dbg !338
  %7 = load i8*, i8** %3, align 8, !dbg !339
  %8 = load i8*, i8** %4, align 8, !dbg !340
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8), !dbg !341
  ret void, !dbg !343
}

declare void @g_print(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @GetConfName(i8*) #0 !dbg !344 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !347, metadata !31), !dbg !348
  %4 = load i8*, i8** %3, align 8, !dbg !349
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #4, !dbg !351
  %6 = icmp eq i32 %5, 0, !dbg !352
  br i1 %6, label %7, label %8, !dbg !353

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8** %2, align 8, !dbg !354
  br label %24, !dbg !354

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !356
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #4, !dbg !358
  %11 = icmp eq i32 %10, 0, !dbg !359
  br i1 %11, label %12, label %13, !dbg !360

; <label>:12:                                     ; preds = %8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8** %2, align 8, !dbg !361
  br label %24, !dbg !361

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !363
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #4, !dbg !365
  %16 = icmp eq i32 %15, 0, !dbg !366
  br i1 %16, label %17, label %18, !dbg !367

; <label>:17:                                     ; preds = %13
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8** %2, align 8, !dbg !368
  br label %24, !dbg !368

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %3, align 8, !dbg !370
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #4, !dbg !372
  %21 = icmp eq i32 %20, 0, !dbg !373
  br i1 %21, label %22, label %23, !dbg !374

; <label>:22:                                     ; preds = %18
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8** %2, align 8, !dbg !375
  br label %24, !dbg !375

; <label>:23:                                     ; preds = %18
  store i8* null, i8** %2, align 8, !dbg !377
  br label %24, !dbg !377

; <label>:24:                                     ; preds = %23, %22, %17, %12, %7
  %25 = load i8*, i8** %2, align 8, !dbg !379
  ret i8* %25, !dbg !379
}

; Function Attrs: nounwind uwtable
define internal i32 @GetConfEntry(i8*, i8*, i32) #0 !dbg !380 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GKeyFile*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !384, metadata !31), !dbg !385
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !386, metadata !31), !dbg !387
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !388, metadata !31), !dbg !389
  call void @llvm.dbg.declare(metadata i8** %8, metadata !390, metadata !31), !dbg !391
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %9, metadata !392, metadata !31), !dbg !393
  call void @llvm.dbg.declare(metadata i8** %10, metadata !394, metadata !31), !dbg !395
  call void @llvm.dbg.declare(metadata i32* %11, metadata !396, metadata !31), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %12, metadata !398, metadata !31), !dbg !399
  %16 = load i8*, i8** %6, align 8, !dbg !400
  %17 = call i8* @GetConfName(i8* %16), !dbg !401
  store i8* %17, i8** %10, align 8, !dbg !402
  %18 = load i8*, i8** %10, align 8, !dbg !403
  %19 = icmp ne i8* %18, null, !dbg !403
  br i1 %19, label %24, label %20, !dbg !405

; <label>:20:                                     ; preds = %3
  %21 = load i8*, i8** %5, align 8, !dbg !406
  %22 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0)), !dbg !408
  %23 = load i8*, i8** %6, align 8, !dbg !409
  call void @ToolsCmd_UnknownEntityError(i8* %21, i8* %22, i8* %23), !dbg !410
  store i32 64, i32* %4, align 4, !dbg !411
  br label %103, !dbg !411

; <label>:24:                                     ; preds = %3
  %25 = call %struct._GKeyFile* @LoadConfFile(), !dbg !412
  store %struct._GKeyFile* %25, %struct._GKeyFile** %9, align 8, !dbg !413
  %26 = load i32, i32* %7, align 4, !dbg !414
  switch i32 %26, label %35 [
    i32 1, label %27
  ], !dbg !415

; <label>:27:                                     ; preds = %24
  %28 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !416
  %29 = load i8*, i8** %10, align 8, !dbg !418
  %30 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* %29, %struct._GError** null), !dbg !419
  store i8* %30, i8** %8, align 8, !dbg !420
  %31 = load i8*, i8** %8, align 8, !dbg !421
  %32 = icmp ne i8* %31, null, !dbg !421
  br i1 %32, label %33, label %34, !dbg !423

; <label>:33:                                     ; preds = %27
  br label %39, !dbg !424

; <label>:34:                                     ; preds = %27
  br label %35, !dbg !426

; <label>:35:                                     ; preds = %24, %34
  %36 = load i8*, i8** %10, align 8, !dbg !428
  %37 = call i8* @GuestApp_GetDefaultScript(i8* %36), !dbg !429
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !430
  store i8* %38, i8** %8, align 8, !dbg !432
  br label %39, !dbg !433

; <label>:39:                                     ; preds = %35, %33
  %40 = load i8*, i8** %8, align 8, !dbg !434
  %41 = call i64 @strlen(i8* %40) #4, !dbg !435
  %42 = trunc i64 %41 to i32, !dbg !435
  store i32 %42, i32* %11, align 4, !dbg !436
  %43 = load i32, i32* %11, align 4, !dbg !437
  %44 = icmp sgt i32 %43, 0, !dbg !439
  br i1 %44, label %45, label %96, !dbg !440

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** %8, align 8, !dbg !441
  %47 = call i32 @g_path_is_absolute(i8* %46), !dbg !444
  %48 = icmp ne i32 %47, 0, !dbg !444
  br i1 %48, label %94, label %49, !dbg !445

; <label>:49:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i8** %13, metadata !446, metadata !31), !dbg !448
  %50 = call i8* @GuestApp_GetInstallPath(), !dbg !449
  store i8* %50, i8** %13, align 8, !dbg !448
  call void @llvm.dbg.declare(metadata i8** %14, metadata !450, metadata !31), !dbg !451
  call void @llvm.dbg.declare(metadata i8* %15, metadata !452, metadata !31), !dbg !453
  %51 = load i8*, i8** %8, align 8, !dbg !454
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !454
  %53 = load i8, i8* %52, align 1, !dbg !454
  %54 = sext i8 %53 to i32, !dbg !454
  %55 = icmp eq i32 %54, 34, !dbg !455
  br i1 %55, label %56, label %65, !dbg !456

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %11, align 4, !dbg !457
  %58 = sub nsw i32 %57, 1, !dbg !459
  %59 = sext i32 %58 to i64, !dbg !460
  %60 = load i8*, i8** %8, align 8, !dbg !460
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !460
  %62 = load i8, i8* %61, align 1, !dbg !460
  %63 = sext i8 %62 to i32, !dbg !460
  %64 = icmp eq i32 %63, 34, !dbg !461
  br label %65

; <label>:65:                                     ; preds = %56, %49
  %66 = phi i1 [ false, %49 ], [ %64, %56 ]
  %67 = zext i1 %66 to i32, !dbg !462
  %68 = trunc i32 %67 to i8, !dbg !464
  store i8 %68, i8* %15, align 1, !dbg !465
  %69 = load i8*, i8** %13, align 8, !dbg !466
  %70 = load i8, i8* %15, align 1, !dbg !467
  %71 = sext i8 %70 to i32, !dbg !467
  %72 = icmp ne i32 %71, 0, !dbg !467
  br i1 %72, label %73, label %76, !dbg !467

; <label>:73:                                     ; preds = %65
  %74 = load i32, i32* %11, align 4, !dbg !468
  %75 = sub nsw i32 %74, 2, !dbg !469
  br label %78, !dbg !470

; <label>:76:                                     ; preds = %65
  %77 = load i32, i32* %11, align 4, !dbg !471
  br label %78, !dbg !472

; <label>:78:                                     ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ], !dbg !473
  %80 = load i8, i8* %15, align 1, !dbg !475
  %81 = sext i8 %80 to i32, !dbg !475
  %82 = icmp ne i32 %81, 0, !dbg !475
  br i1 %82, label %83, label %86, !dbg !475

; <label>:83:                                     ; preds = %78
  %84 = load i8*, i8** %8, align 8, !dbg !476
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !477
  br label %88, !dbg !478

; <label>:86:                                     ; preds = %78
  %87 = load i8*, i8** %8, align 8, !dbg !479
  br label %88, !dbg !480

; <label>:88:                                     ; preds = %86, %83
  %89 = phi i8* [ %85, %83 ], [ %87, %86 ], !dbg !481
  %90 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* %69, i32 47, i32 %79, i8* %89), !dbg !482
  store i8* %90, i8** %14, align 8, !dbg !483
  %91 = load i8*, i8** %13, align 8, !dbg !484
  call void @vm_free(i8* %91), !dbg !485
  %92 = load i8*, i8** %8, align 8, !dbg !486
  call void @g_free(i8* %92), !dbg !487
  %93 = load i8*, i8** %14, align 8, !dbg !488
  store i8* %93, i8** %8, align 8, !dbg !489
  br label %94, !dbg !490

; <label>:94:                                     ; preds = %88, %45
  %95 = load i8*, i8** %8, align 8, !dbg !491
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %95), !dbg !492
  store i32 0, i32* %12, align 4, !dbg !493
  br label %99, !dbg !494

; <label>:96:                                     ; preds = %39
  %97 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0)), !dbg !495
  %98 = load i8*, i8** %6, align 8, !dbg !497
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %97, i8* %98), !dbg !498
  store i32 75, i32* %12, align 4, !dbg !500
  br label %99

; <label>:99:                                     ; preds = %96, %94
  %100 = load i8*, i8** %8, align 8, !dbg !501
  call void @g_free(i8* %100), !dbg !502
  %101 = load %struct._GKeyFile*, %struct._GKeyFile** %9, align 8, !dbg !503
  call void @g_key_file_free(%struct._GKeyFile* %101), !dbg !504
  %102 = load i32, i32* %12, align 4, !dbg !505
  store i32 %102, i32* %4, align 4, !dbg !506
  br label %103, !dbg !506

; <label>:103:                                    ; preds = %99, %20
  %104 = load i32, i32* %4, align 4, !dbg !507
  ret i32 %104, !dbg !507
}

; Function Attrs: nounwind uwtable
define internal %struct._GKeyFile* @LoadConfFile() #0 !dbg !508 {
  %1 = alloca %struct._GKeyFile*, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %1, metadata !511, metadata !31), !dbg !512
  store %struct._GKeyFile* null, %struct._GKeyFile** %1, align 8, !dbg !512
  %2 = call i32 @VMTools_LoadConfig(i8* null, i32 3, %struct._GKeyFile** %1, i64* null), !dbg !513
  %3 = load %struct._GKeyFile*, %struct._GKeyFile** %1, align 8, !dbg !514
  %4 = icmp eq %struct._GKeyFile* %3, null, !dbg !516
  br i1 %4, label %5, label %7, !dbg !517

; <label>:5:                                      ; preds = %0
  %6 = call %struct._GKeyFile* @g_key_file_new(), !dbg !518
  store %struct._GKeyFile* %6, %struct._GKeyFile** %1, align 8, !dbg !520
  br label %7, !dbg !521

; <label>:7:                                      ; preds = %5, %0
  %8 = load %struct._GKeyFile*, %struct._GKeyFile** %1, align 8, !dbg !522
  ret %struct._GKeyFile* %8, !dbg !523
}

declare noalias i8* @g_key_file_get_string(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare noalias i8* @g_strdup(i8*) #2

declare i8* @GuestApp_GetDefaultScript(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @g_path_is_absolute(i8*) #2

declare i8* @GuestApp_GetInstallPath() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @vm_free(i8*) #2

declare void @g_free(i8*) #2

declare void @ToolsCmd_PrintErr(i8*, ...) #2

declare void @g_key_file_free(%struct._GKeyFile*) #2

declare i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #2

declare %struct._GKeyFile* @g_key_file_new() #2

declare signext i8 @File_Exists(i8*) #2

declare void @g_key_file_set_string(%struct._GKeyFile*, i8*, i8*, i8*) #2

declare i32 @VMTools_WriteConfig(i8*, %struct._GKeyFile*, %struct._GError**) #2

declare void @g_clear_error(%struct._GError**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-scripts.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!2 = !{!3, !8}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ScriptType", file: !4, line: 45, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "toolboxcmd-scripts.c", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "Default", value: 0)
!7 = !DIEnumerator(name: "Current", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 50, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!12 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!13 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!19 = distinct !DISubprogram(name: "Script_Command", scope: !4, file: !4, line: 417, type: !20, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23, !22, !26}
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !27, line: 50, baseType: !28)
!27 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !27, line: 49, baseType: !22)
!29 = !{}
!30 = !DILocalVariable(name: "argv", arg: 1, scope: !19, file: !4, line: 417, type: !23)
!31 = !DIExpression()
!32 = !DILocation(line: 417, column: 23, scope: !19)
!33 = !DILocalVariable(name: "argc", arg: 2, scope: !19, file: !4, line: 418, type: !22)
!34 = !DILocation(line: 418, column: 20, scope: !19)
!35 = !DILocalVariable(name: "quiet", arg: 3, scope: !19, file: !4, line: 419, type: !26)
!36 = !DILocation(line: 419, column: 25, scope: !19)
!37 = !DILocalVariable(name: "apm", scope: !19, file: !4, line: 421, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!40 = !DILocation(line: 421, column: 16, scope: !19)
!41 = !DILocation(line: 423, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !19, file: !4, line: 423, column: 8)
!43 = !DILocation(line: 423, column: 20, scope: !42)
!44 = !DILocation(line: 423, column: 17, scope: !42)
!45 = !DILocation(line: 423, column: 8, scope: !19)
!46 = !DILocation(line: 424, column: 35, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !4, line: 423, column: 26)
!48 = !DILocation(line: 424, column: 44, scope: !47)
!49 = !DILocation(line: 424, column: 7, scope: !50)
!50 = !DILexicalBlockFile(scope: !47, file: !4, discriminator: 1)
!51 = !DILocation(line: 425, column: 7, scope: !47)
!52 = !DILocation(line: 428, column: 21, scope: !19)
!53 = !DILocation(line: 428, column: 10, scope: !19)
!54 = !DILocation(line: 428, column: 8, scope: !19)
!55 = !DILocation(line: 430, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !19, file: !4, line: 430, column: 8)
!57 = !DILocation(line: 430, column: 9, scope: !56)
!58 = !DILocation(line: 430, column: 8, scope: !19)
!59 = !DILocation(line: 431, column: 35, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !4, line: 430, column: 31)
!61 = !DILocation(line: 431, column: 44, scope: !60)
!62 = !DILocation(line: 431, column: 127, scope: !60)
!63 = !DILocation(line: 431, column: 7, scope: !64)
!64 = !DILexicalBlockFile(scope: !60, file: !4, discriminator: 1)
!65 = !DILocation(line: 432, column: 7, scope: !60)
!66 = !DILocation(line: 435, column: 8, scope: !67)
!67 = distinct !DILexicalBlock(scope: !19, file: !4, line: 435, column: 8)
!68 = !DILocation(line: 435, column: 18, scope: !67)
!69 = !DILocation(line: 435, column: 15, scope: !67)
!70 = !DILocation(line: 435, column: 8, scope: !19)
!71 = !DILocation(line: 436, column: 35, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !4, line: 435, column: 24)
!73 = !DILocation(line: 436, column: 44, scope: !72)
!74 = !DILocation(line: 436, column: 7, scope: !75)
!75 = !DILexicalBlockFile(scope: !72, file: !4, discriminator: 1)
!76 = !DILocation(line: 437, column: 7, scope: !72)
!77 = !DILocation(line: 440, column: 20, scope: !78)
!78 = distinct !DILexicalBlock(scope: !19, file: !4, line: 440, column: 8)
!79 = !DILocation(line: 440, column: 15, scope: !78)
!80 = !DILocation(line: 440, column: 8, scope: !78)
!81 = !DILocation(line: 440, column: 40, scope: !78)
!82 = !DILocation(line: 440, column: 8, scope: !19)
!83 = !DILocation(line: 441, column: 31, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !4, line: 440, column: 46)
!85 = !DILocation(line: 441, column: 40, scope: !84)
!86 = !DILocation(line: 441, column: 14, scope: !84)
!87 = !DILocation(line: 441, column: 7, scope: !84)
!88 = !DILocation(line: 442, column: 27, scope: !89)
!89 = distinct !DILexicalBlock(scope: !78, file: !4, line: 442, column: 15)
!90 = !DILocation(line: 442, column: 22, scope: !89)
!91 = !DILocation(line: 442, column: 15, scope: !89)
!92 = !DILocation(line: 442, column: 47, scope: !89)
!93 = !DILocation(line: 442, column: 15, scope: !78)
!94 = !DILocation(line: 443, column: 31, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !4, line: 442, column: 53)
!96 = !DILocation(line: 443, column: 40, scope: !95)
!97 = !DILocation(line: 443, column: 14, scope: !95)
!98 = !DILocation(line: 443, column: 7, scope: !95)
!99 = !DILocation(line: 444, column: 27, scope: !100)
!100 = distinct !DILexicalBlock(scope: !89, file: !4, line: 444, column: 15)
!101 = !DILocation(line: 444, column: 22, scope: !100)
!102 = !DILocation(line: 444, column: 15, scope: !100)
!103 = !DILocation(line: 444, column: 43, scope: !100)
!104 = !DILocation(line: 444, column: 15, scope: !89)
!105 = !DILocation(line: 445, column: 11, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !4, line: 445, column: 11)
!107 = distinct !DILexicalBlock(scope: !100, file: !4, line: 444, column: 49)
!108 = !DILocation(line: 445, column: 23, scope: !106)
!109 = !DILocation(line: 445, column: 20, scope: !106)
!110 = !DILocation(line: 445, column: 11, scope: !107)
!111 = !DILocation(line: 446, column: 38, scope: !112)
!112 = distinct !DILexicalBlock(scope: !106, file: !4, line: 445, column: 29)
!113 = !DILocation(line: 446, column: 47, scope: !112)
!114 = !DILocation(line: 446, column: 10, scope: !115)
!115 = !DILexicalBlockFile(scope: !112, file: !4, discriminator: 1)
!116 = !DILocation(line: 447, column: 10, scope: !112)
!117 = !DILocation(line: 449, column: 24, scope: !107)
!118 = !DILocation(line: 449, column: 33, scope: !107)
!119 = !DILocation(line: 449, column: 43, scope: !107)
!120 = !DILocation(line: 449, column: 38, scope: !107)
!121 = !DILocation(line: 449, column: 14, scope: !107)
!122 = !DILocation(line: 449, column: 7, scope: !107)
!123 = !DILocation(line: 450, column: 27, scope: !124)
!124 = distinct !DILexicalBlock(scope: !100, file: !4, line: 450, column: 15)
!125 = !DILocation(line: 450, column: 22, scope: !124)
!126 = !DILocation(line: 450, column: 15, scope: !124)
!127 = !DILocation(line: 450, column: 46, scope: !124)
!128 = !DILocation(line: 450, column: 15, scope: !100)
!129 = !DILocation(line: 451, column: 27, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !4, line: 450, column: 52)
!131 = !DILocation(line: 451, column: 36, scope: !130)
!132 = !DILocation(line: 451, column: 14, scope: !130)
!133 = !DILocation(line: 451, column: 7, scope: !130)
!134 = !DILocation(line: 452, column: 27, scope: !135)
!135 = distinct !DILexicalBlock(scope: !124, file: !4, line: 452, column: 15)
!136 = !DILocation(line: 452, column: 22, scope: !135)
!137 = !DILocation(line: 452, column: 15, scope: !135)
!138 = !DILocation(line: 452, column: 47, scope: !135)
!139 = !DILocation(line: 452, column: 15, scope: !124)
!140 = !DILocation(line: 453, column: 27, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !4, line: 452, column: 53)
!142 = !DILocation(line: 453, column: 36, scope: !141)
!143 = !DILocation(line: 453, column: 14, scope: !141)
!144 = !DILocation(line: 453, column: 7, scope: !141)
!145 = !DILocation(line: 455, column: 35, scope: !146)
!146 = distinct !DILexicalBlock(scope: !135, file: !4, line: 454, column: 11)
!147 = !DILocation(line: 456, column: 35, scope: !146)
!148 = !DILocation(line: 457, column: 40, scope: !146)
!149 = !DILocation(line: 457, column: 35, scope: !146)
!150 = !DILocation(line: 455, column: 7, scope: !146)
!151 = !DILocation(line: 458, column: 7, scope: !146)
!152 = !DILocation(line: 460, column: 1, scope: !19)
!153 = distinct !DISubprogram(name: "ScriptCheckName", scope: !4, file: !4, line: 393, type: !154, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !38}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !157, line: 230, baseType: !25)
!157 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!158 = !DILocalVariable(name: "apm", arg: 1, scope: !153, file: !4, line: 393, type: !38)
!159 = !DILocation(line: 393, column: 29, scope: !153)
!160 = !DILocation(line: 395, column: 23, scope: !153)
!161 = !DILocation(line: 395, column: 11, scope: !153)
!162 = !DILocation(line: 395, column: 28, scope: !153)
!163 = !DILocation(line: 395, column: 4, scope: !153)
!164 = distinct !DISubprogram(name: "ScriptGetDefault", scope: !4, file: !4, line: 225, type: !165, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!165 = !DISubroutineType(types: !166)
!166 = !{!22, !38, !38}
!167 = !DILocalVariable(name: "progName", arg: 1, scope: !164, file: !4, line: 225, type: !38)
!168 = !DILocation(line: 225, column: 30, scope: !164)
!169 = !DILocalVariable(name: "apm", arg: 2, scope: !164, file: !4, line: 226, type: !38)
!170 = !DILocation(line: 226, column: 30, scope: !164)
!171 = !DILocation(line: 228, column: 24, scope: !164)
!172 = !DILocation(line: 228, column: 34, scope: !164)
!173 = !DILocation(line: 228, column: 11, scope: !164)
!174 = !DILocation(line: 228, column: 4, scope: !164)
!175 = distinct !DISubprogram(name: "ScriptGetCurrent", scope: !4, file: !4, line: 251, type: !165, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!176 = !DILocalVariable(name: "progName", arg: 1, scope: !175, file: !4, line: 251, type: !38)
!177 = !DILocation(line: 251, column: 30, scope: !175)
!178 = !DILocalVariable(name: "apm", arg: 2, scope: !175, file: !4, line: 252, type: !38)
!179 = !DILocation(line: 252, column: 30, scope: !175)
!180 = !DILocation(line: 254, column: 24, scope: !175)
!181 = !DILocation(line: 254, column: 34, scope: !175)
!182 = !DILocation(line: 254, column: 11, scope: !175)
!183 = !DILocation(line: 254, column: 4, scope: !175)
!184 = distinct !DISubprogram(name: "ScriptSet", scope: !4, file: !4, line: 339, type: !185, isLocal: true, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!185 = !DISubroutineType(types: !186)
!186 = !{!22, !38, !38, !38}
!187 = !DILocalVariable(name: "progName", arg: 1, scope: !184, file: !4, line: 339, type: !38)
!188 = !DILocation(line: 339, column: 23, scope: !184)
!189 = !DILocalVariable(name: "apm", arg: 2, scope: !184, file: !4, line: 340, type: !38)
!190 = !DILocation(line: 340, column: 23, scope: !184)
!191 = !DILocalVariable(name: "path", arg: 3, scope: !184, file: !4, line: 341, type: !38)
!192 = !DILocation(line: 341, column: 23, scope: !184)
!193 = !DILocalVariable(name: "confName", scope: !184, file: !4, line: 343, type: !38)
!194 = !DILocation(line: 343, column: 16, scope: !184)
!195 = !DILocalVariable(name: "ret", scope: !184, file: !4, line: 344, type: !22)
!196 = !DILocation(line: 344, column: 8, scope: !184)
!197 = !DILocalVariable(name: "confDict", scope: !184, file: !4, line: 345, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !9, line: 48, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !9, line: 48, flags: DIFlagFwdDecl)
!201 = !DILocation(line: 345, column: 14, scope: !184)
!202 = !DILocalVariable(name: "err", scope: !184, file: !4, line: 346, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !205, line: 42, baseType: !206)
!205 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !205, line: 44, size: 128, align: 64, elements: !207)
!207 = !{!208, !214, !215}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !206, file: !205, line: 46, baseType: !209, size: 32, align: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !210, line: 36, baseType: !211)
!210 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !212, line: 45, baseType: !213)
!212 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1639")
!213 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !206, file: !205, line: 47, baseType: !28, size: 32, align: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !206, file: !205, line: 48, baseType: !216, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !27, line: 46, baseType: !25)
!218 = !DILocation(line: 346, column: 12, scope: !184)
!219 = !DILocation(line: 348, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !184, file: !4, line: 348, column: 8)
!221 = !DILocation(line: 348, column: 9, scope: !220)
!222 = !DILocation(line: 348, column: 8, scope: !184)
!223 = !DILocation(line: 349, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !4, line: 348, column: 28)
!225 = !DILocation(line: 349, column: 117, scope: !224)
!226 = !DILocation(line: 349, column: 7, scope: !227)
!227 = !DILexicalBlockFile(scope: !224, file: !4, discriminator: 1)
!228 = !DILocation(line: 350, column: 7, scope: !224)
!229 = !DILocation(line: 353, column: 27, scope: !184)
!230 = !DILocation(line: 353, column: 15, scope: !184)
!231 = !DILocation(line: 353, column: 13, scope: !184)
!232 = !DILocation(line: 354, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !184, file: !4, line: 354, column: 8)
!234 = !DILocation(line: 354, column: 8, scope: !184)
!235 = !DILocation(line: 355, column: 35, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !4, line: 354, column: 19)
!237 = !DILocation(line: 356, column: 35, scope: !236)
!238 = !DILocation(line: 357, column: 35, scope: !236)
!239 = !DILocation(line: 355, column: 7, scope: !236)
!240 = !DILocation(line: 358, column: 7, scope: !236)
!241 = !DILocation(line: 361, column: 15, scope: !184)
!242 = !DILocation(line: 361, column: 13, scope: !184)
!243 = !DILocation(line: 362, column: 26, scope: !184)
!244 = !DILocation(line: 362, column: 48, scope: !184)
!245 = !DILocation(line: 362, column: 58, scope: !184)
!246 = !DILocation(line: 362, column: 4, scope: !184)
!247 = !DILocation(line: 364, column: 34, scope: !248)
!248 = distinct !DILexicalBlock(scope: !184, file: !4, line: 364, column: 8)
!249 = !DILocation(line: 364, column: 9, scope: !248)
!250 = !DILocation(line: 364, column: 8, scope: !184)
!251 = !DILocation(line: 365, column: 25, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !4, line: 364, column: 51)
!253 = !DILocation(line: 366, column: 25, scope: !252)
!254 = !DILocation(line: 366, column: 30, scope: !252)
!255 = !DILocation(line: 365, column: 7, scope: !256)
!256 = !DILexicalBlockFile(scope: !252, file: !4, discriminator: 1)
!257 = !DILocation(line: 367, column: 7, scope: !252)
!258 = !DILocation(line: 368, column: 11, scope: !252)
!259 = !DILocation(line: 369, column: 4, scope: !252)
!260 = !DILocation(line: 371, column: 20, scope: !184)
!261 = !DILocation(line: 371, column: 4, scope: !184)
!262 = !DILocation(line: 372, column: 11, scope: !184)
!263 = !DILocation(line: 372, column: 4, scope: !184)
!264 = !DILocation(line: 373, column: 1, scope: !184)
!265 = distinct !DISubprogram(name: "ScriptToggle", scope: !4, file: !4, line: 278, type: !266, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!266 = !DISubroutineType(types: !267)
!267 = !{!22, !38, !38, !156}
!268 = !DILocalVariable(name: "progName", arg: 1, scope: !265, file: !4, line: 278, type: !38)
!269 = !DILocation(line: 278, column: 26, scope: !265)
!270 = !DILocalVariable(name: "apm", arg: 2, scope: !265, file: !4, line: 279, type: !38)
!271 = !DILocation(line: 279, column: 26, scope: !265)
!272 = !DILocalVariable(name: "enable", arg: 3, scope: !265, file: !4, line: 280, type: !156)
!273 = !DILocation(line: 280, column: 19, scope: !265)
!274 = !DILocalVariable(name: "path", scope: !265, file: !4, line: 282, type: !38)
!275 = !DILocation(line: 282, column: 16, scope: !265)
!276 = !DILocalVariable(name: "confName", scope: !265, file: !4, line: 283, type: !38)
!277 = !DILocation(line: 283, column: 16, scope: !265)
!278 = !DILocalVariable(name: "ret", scope: !265, file: !4, line: 284, type: !22)
!279 = !DILocation(line: 284, column: 8, scope: !265)
!280 = !DILocalVariable(name: "confDict", scope: !265, file: !4, line: 285, type: !198)
!281 = !DILocation(line: 285, column: 14, scope: !265)
!282 = !DILocalVariable(name: "err", scope: !265, file: !4, line: 286, type: !203)
!283 = !DILocation(line: 286, column: 12, scope: !265)
!284 = !DILocation(line: 288, column: 27, scope: !265)
!285 = !DILocation(line: 288, column: 15, scope: !265)
!286 = !DILocation(line: 288, column: 13, scope: !265)
!287 = !DILocation(line: 290, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !265, file: !4, line: 290, column: 8)
!289 = !DILocation(line: 290, column: 8, scope: !265)
!290 = !DILocation(line: 291, column: 35, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !4, line: 290, column: 19)
!292 = !DILocation(line: 292, column: 35, scope: !291)
!293 = !DILocation(line: 293, column: 35, scope: !291)
!294 = !DILocation(line: 291, column: 7, scope: !291)
!295 = !DILocation(line: 294, column: 7, scope: !291)
!296 = !DILocation(line: 297, column: 15, scope: !265)
!297 = !DILocation(line: 297, column: 13, scope: !265)
!298 = !DILocation(line: 299, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !265, file: !4, line: 299, column: 8)
!300 = !DILocation(line: 299, column: 8, scope: !265)
!301 = !DILocation(line: 300, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !4, line: 299, column: 17)
!303 = !DILocation(line: 301, column: 4, scope: !302)
!304 = !DILocation(line: 302, column: 40, scope: !305)
!305 = distinct !DILexicalBlock(scope: !299, file: !4, line: 301, column: 11)
!306 = !DILocation(line: 302, column: 14, scope: !305)
!307 = !DILocation(line: 302, column: 12, scope: !305)
!308 = !DILocation(line: 305, column: 26, scope: !265)
!309 = !DILocation(line: 305, column: 48, scope: !265)
!310 = !DILocation(line: 305, column: 58, scope: !265)
!311 = !DILocation(line: 305, column: 4, scope: !265)
!312 = !DILocation(line: 306, column: 34, scope: !313)
!313 = distinct !DILexicalBlock(scope: !265, file: !4, line: 306, column: 8)
!314 = !DILocation(line: 306, column: 9, scope: !313)
!315 = !DILocation(line: 306, column: 8, scope: !265)
!316 = !DILocation(line: 307, column: 25, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !4, line: 306, column: 51)
!318 = !DILocation(line: 308, column: 25, scope: !317)
!319 = !DILocation(line: 308, column: 30, scope: !317)
!320 = !DILocation(line: 307, column: 7, scope: !321)
!321 = !DILexicalBlockFile(scope: !317, file: !4, discriminator: 1)
!322 = !DILocation(line: 309, column: 7, scope: !317)
!323 = !DILocation(line: 310, column: 11, scope: !317)
!324 = !DILocation(line: 311, column: 4, scope: !317)
!325 = !DILocation(line: 313, column: 20, scope: !265)
!326 = !DILocation(line: 313, column: 4, scope: !265)
!327 = !DILocation(line: 314, column: 11, scope: !265)
!328 = !DILocation(line: 314, column: 4, scope: !265)
!329 = !DILocation(line: 315, column: 1, scope: !265)
!330 = distinct !DISubprogram(name: "Script_Help", scope: !4, file: !4, line: 480, type: !331, isLocal: false, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !38, !38}
!333 = !DILocalVariable(name: "progName", arg: 1, scope: !330, file: !4, line: 480, type: !38)
!334 = !DILocation(line: 480, column: 25, scope: !330)
!335 = !DILocalVariable(name: "cmd", arg: 2, scope: !330, file: !4, line: 481, type: !38)
!336 = !DILocation(line: 481, column: 25, scope: !330)
!337 = !DILocation(line: 483, column: 12, scope: !330)
!338 = !DILocation(line: 492, column: 12, scope: !330)
!339 = !DILocation(line: 492, column: 17, scope: !330)
!340 = !DILocation(line: 492, column: 27, scope: !330)
!341 = !DILocation(line: 483, column: 4, scope: !342)
!342 = !DILexicalBlockFile(scope: !330, file: !4, discriminator: 1)
!343 = !DILocation(line: 493, column: 1, scope: !330)
!344 = distinct !DISubprogram(name: "GetConfName", scope: !4, file: !4, line: 68, type: !345, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!345 = !DISubroutineType(types: !346)
!346 = !{!38, !38}
!347 = !DILocalVariable(name: "apm", arg: 1, scope: !344, file: !4, line: 68, type: !38)
!348 = !DILocation(line: 68, column: 25, scope: !344)
!349 = !DILocation(line: 70, column: 15, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !4, line: 70, column: 8)
!351 = !DILocation(line: 70, column: 8, scope: !350)
!352 = !DILocation(line: 70, column: 31, scope: !350)
!353 = !DILocation(line: 70, column: 8, scope: !344)
!354 = !DILocation(line: 71, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !4, line: 70, column: 37)
!356 = !DILocation(line: 72, column: 22, scope: !357)
!357 = distinct !DILexicalBlock(scope: !350, file: !4, line: 72, column: 15)
!358 = !DILocation(line: 72, column: 15, scope: !357)
!359 = !DILocation(line: 72, column: 37, scope: !357)
!360 = !DILocation(line: 72, column: 15, scope: !350)
!361 = !DILocation(line: 73, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !4, line: 72, column: 43)
!363 = !DILocation(line: 74, column: 22, scope: !364)
!364 = distinct !DILexicalBlock(scope: !357, file: !4, line: 74, column: 15)
!365 = !DILocation(line: 74, column: 15, scope: !364)
!366 = !DILocation(line: 74, column: 39, scope: !364)
!367 = !DILocation(line: 74, column: 15, scope: !357)
!368 = !DILocation(line: 75, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !4, line: 74, column: 45)
!370 = !DILocation(line: 76, column: 22, scope: !371)
!371 = distinct !DILexicalBlock(scope: !364, file: !4, line: 76, column: 15)
!372 = !DILocation(line: 76, column: 15, scope: !371)
!373 = !DILocation(line: 76, column: 36, scope: !371)
!374 = !DILocation(line: 76, column: 15, scope: !364)
!375 = !DILocation(line: 77, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !4, line: 76, column: 42)
!377 = !DILocation(line: 79, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !4, line: 78, column: 11)
!379 = !DILocation(line: 81, column: 1, scope: !344)
!380 = distinct !DISubprogram(name: "GetConfEntry", scope: !4, file: !4, line: 136, type: !381, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!381 = !DISubroutineType(types: !382)
!382 = !{!22, !38, !38, !383}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ScriptType", file: !4, line: 48, baseType: !3)
!384 = !DILocalVariable(name: "progName", arg: 1, scope: !380, file: !4, line: 136, type: !38)
!385 = !DILocation(line: 136, column: 26, scope: !380)
!386 = !DILocalVariable(name: "apm", arg: 2, scope: !380, file: !4, line: 137, type: !38)
!387 = !DILocation(line: 137, column: 26, scope: !380)
!388 = !DILocalVariable(name: "type", arg: 3, scope: !380, file: !4, line: 138, type: !383)
!389 = !DILocation(line: 138, column: 25, scope: !380)
!390 = !DILocalVariable(name: "entry", scope: !380, file: !4, line: 140, type: !216)
!391 = !DILocation(line: 140, column: 11, scope: !380)
!392 = !DILocalVariable(name: "confDict", scope: !380, file: !4, line: 141, type: !198)
!393 = !DILocation(line: 141, column: 14, scope: !380)
!394 = !DILocalVariable(name: "confName", scope: !380, file: !4, line: 142, type: !38)
!395 = !DILocation(line: 142, column: 16, scope: !380)
!396 = !DILocalVariable(name: "len", scope: !380, file: !4, line: 143, type: !22)
!397 = !DILocation(line: 143, column: 8, scope: !380)
!398 = !DILocalVariable(name: "ret", scope: !380, file: !4, line: 144, type: !22)
!399 = !DILocation(line: 144, column: 8, scope: !380)
!400 = !DILocation(line: 146, column: 27, scope: !380)
!401 = !DILocation(line: 146, column: 15, scope: !380)
!402 = !DILocation(line: 146, column: 13, scope: !380)
!403 = !DILocation(line: 147, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !380, file: !4, line: 147, column: 8)
!405 = !DILocation(line: 147, column: 8, scope: !380)
!406 = !DILocation(line: 148, column: 35, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !4, line: 147, column: 19)
!408 = !DILocation(line: 149, column: 35, scope: !407)
!409 = !DILocation(line: 150, column: 35, scope: !407)
!410 = !DILocation(line: 148, column: 7, scope: !407)
!411 = !DILocation(line: 151, column: 7, scope: !407)
!412 = !DILocation(line: 154, column: 15, scope: !380)
!413 = !DILocation(line: 154, column: 13, scope: !380)
!414 = !DILocation(line: 156, column: 12, scope: !380)
!415 = !DILocation(line: 156, column: 4, scope: !380)
!416 = !DILocation(line: 158, column: 37, scope: !417)
!417 = distinct !DILexicalBlock(scope: !380, file: !4, line: 156, column: 18)
!418 = !DILocation(line: 158, column: 59, scope: !417)
!419 = !DILocation(line: 158, column: 15, scope: !417)
!420 = !DILocation(line: 158, column: 13, scope: !417)
!421 = !DILocation(line: 159, column: 11, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !4, line: 159, column: 11)
!423 = !DILocation(line: 159, column: 11, scope: !417)
!424 = !DILocation(line: 160, column: 10, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !4, line: 159, column: 18)
!426 = !DILocation(line: 159, column: 11, scope: !427)
!427 = !DILexicalBlockFile(scope: !422, file: !4, discriminator: 1)
!428 = !DILocation(line: 165, column: 50, scope: !417)
!429 = !DILocation(line: 165, column: 24, scope: !417)
!430 = !DILocation(line: 165, column: 15, scope: !431)
!431 = !DILexicalBlockFile(scope: !417, file: !4, discriminator: 1)
!432 = !DILocation(line: 165, column: 13, scope: !417)
!433 = !DILocation(line: 166, column: 7, scope: !417)
!434 = !DILocation(line: 169, column: 17, scope: !380)
!435 = !DILocation(line: 169, column: 10, scope: !380)
!436 = !DILocation(line: 169, column: 8, scope: !380)
!437 = !DILocation(line: 170, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !380, file: !4, line: 170, column: 8)
!439 = !DILocation(line: 170, column: 12, scope: !438)
!440 = !DILocation(line: 170, column: 8, scope: !380)
!441 = !DILocation(line: 173, column: 31, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !4, line: 173, column: 11)
!443 = distinct !DILexicalBlock(scope: !438, file: !4, line: 170, column: 17)
!444 = !DILocation(line: 173, column: 12, scope: !442)
!445 = !DILocation(line: 173, column: 11, scope: !443)
!446 = !DILocalVariable(name: "defaultPath", scope: !447, file: !4, line: 174, type: !24)
!447 = distinct !DILexicalBlock(scope: !442, file: !4, line: 173, column: 39)
!448 = !DILocation(line: 174, column: 16, scope: !447)
!449 = !DILocation(line: 174, column: 30, scope: !447)
!450 = !DILocalVariable(name: "tmp", scope: !447, file: !4, line: 175, type: !24)
!451 = !DILocation(line: 175, column: 16, scope: !447)
!452 = !DILocalVariable(name: "quoted", scope: !447, file: !4, line: 176, type: !156)
!453 = !DILocation(line: 176, column: 15, scope: !447)
!454 = !DILocation(line: 181, column: 20, scope: !447)
!455 = !DILocation(line: 181, column: 29, scope: !447)
!456 = !DILocation(line: 181, column: 36, scope: !447)
!457 = !DILocation(line: 181, column: 45, scope: !458)
!458 = !DILexicalBlockFile(scope: !447, file: !4, discriminator: 1)
!459 = !DILocation(line: 181, column: 49, scope: !458)
!460 = !DILocation(line: 181, column: 39, scope: !458)
!461 = !DILocation(line: 181, column: 54, scope: !458)
!462 = !DILocation(line: 181, column: 36, scope: !463)
!463 = !DILexicalBlockFile(scope: !447, file: !4, discriminator: 2)
!464 = !DILocation(line: 181, column: 19, scope: !463)
!465 = !DILocation(line: 181, column: 17, scope: !463)
!466 = !DILocation(line: 182, column: 44, scope: !447)
!467 = !DILocation(line: 183, column: 33, scope: !447)
!468 = !DILocation(line: 183, column: 42, scope: !458)
!469 = !DILocation(line: 183, column: 46, scope: !458)
!470 = !DILocation(line: 183, column: 33, scope: !458)
!471 = !DILocation(line: 183, column: 52, scope: !463)
!472 = !DILocation(line: 183, column: 33, scope: !463)
!473 = !DILocation(line: 183, column: 33, scope: !474)
!474 = !DILexicalBlockFile(scope: !447, file: !4, discriminator: 3)
!475 = !DILocation(line: 184, column: 33, scope: !447)
!476 = !DILocation(line: 184, column: 42, scope: !458)
!477 = !DILocation(line: 184, column: 48, scope: !458)
!478 = !DILocation(line: 184, column: 33, scope: !458)
!479 = !DILocation(line: 184, column: 54, scope: !463)
!480 = !DILocation(line: 184, column: 33, scope: !463)
!481 = !DILocation(line: 184, column: 33, scope: !474)
!482 = !DILocation(line: 182, column: 16, scope: !458)
!483 = !DILocation(line: 182, column: 14, scope: !458)
!484 = !DILocation(line: 186, column: 18, scope: !447)
!485 = !DILocation(line: 186, column: 10, scope: !447)
!486 = !DILocation(line: 188, column: 17, scope: !447)
!487 = !DILocation(line: 188, column: 10, scope: !447)
!488 = !DILocation(line: 189, column: 18, scope: !447)
!489 = !DILocation(line: 189, column: 16, scope: !447)
!490 = !DILocation(line: 190, column: 7, scope: !447)
!491 = !DILocation(line: 192, column: 23, scope: !443)
!492 = !DILocation(line: 192, column: 7, scope: !443)
!493 = !DILocation(line: 193, column: 11, scope: !443)
!494 = !DILocation(line: 194, column: 4, scope: !443)
!495 = !DILocation(line: 195, column: 25, scope: !496)
!496 = distinct !DILexicalBlock(scope: !438, file: !4, line: 194, column: 11)
!497 = !DILocation(line: 196, column: 25, scope: !496)
!498 = !DILocation(line: 195, column: 7, scope: !499)
!499 = !DILexicalBlockFile(scope: !496, file: !4, discriminator: 1)
!500 = !DILocation(line: 197, column: 11, scope: !496)
!501 = !DILocation(line: 200, column: 11, scope: !380)
!502 = !DILocation(line: 200, column: 4, scope: !380)
!503 = !DILocation(line: 201, column: 20, scope: !380)
!504 = !DILocation(line: 201, column: 4, scope: !380)
!505 = !DILocation(line: 202, column: 11, scope: !380)
!506 = !DILocation(line: 202, column: 4, scope: !380)
!507 = !DILocation(line: 203, column: 1, scope: !380)
!508 = distinct !DISubprogram(name: "LoadConfFile", scope: !4, file: !4, line: 102, type: !509, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !29)
!509 = !DISubroutineType(types: !510)
!510 = !{!198}
!511 = !DILocalVariable(name: "confDict", scope: !508, file: !4, line: 104, type: !198)
!512 = !DILocation(line: 104, column: 14, scope: !508)
!513 = !DILocation(line: 106, column: 4, scope: !508)
!514 = !DILocation(line: 111, column: 8, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !4, line: 111, column: 8)
!516 = !DILocation(line: 111, column: 17, scope: !515)
!517 = !DILocation(line: 111, column: 8, scope: !508)
!518 = !DILocation(line: 112, column: 18, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !4, line: 111, column: 25)
!520 = !DILocation(line: 112, column: 16, scope: !519)
!521 = !DILocation(line: 113, column: 4, scope: !519)
!522 = !DILocation(line: 115, column: 11, scope: !508)
!523 = !DILocation(line: 115, column: 4, scope: !508)
