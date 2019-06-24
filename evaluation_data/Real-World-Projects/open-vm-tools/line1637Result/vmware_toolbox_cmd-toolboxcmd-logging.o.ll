; ModuleID = './vmware_toolbox_cmd-toolboxcmd-logging.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-logging.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GKeyFile = type opaque
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c"%s.level\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"logging\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"@&!*@*@(script.write.error)Error writing config: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@optind = external global i32, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"@&!*@*@(arg.logging.subcommand)logging operation\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"@&!*@*@(arg.logging.service)logging servicename\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"@&!*@*@(arg.logging.level)logging level\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.13 = private unnamed_addr constant [361 x i8] c"@&!*@*@(help.logging)%s: modify tools logging\0AUsage: %s %s level <subcommand> <servicename> <level>\0A\0ASubcommands:\0A   get <servicename>: display current level\0A   set <servicename> <level>: set current level\0A\0A<servicename> can be any supported service, such as vmsvc or vmusr\0A<level> can be one of error, critical, warning, info, message, debug\0A   default is %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"debug\00", align 1

; Function Attrs: nounwind uwtable
define i32 @LoggingSetLevel(i8*, i8*) #0 !dbg !14 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GKeyFile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GError*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !22, metadata !23), !dbg !24
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !23), !dbg !26
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %5, metadata !27, metadata !23), !dbg !31
  store %struct._GKeyFile* null, %struct._GKeyFile** %5, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i8** %6, metadata !32, metadata !23), !dbg !36
  call void @llvm.dbg.declare(metadata %struct._GError** %7, metadata !37, metadata !23), !dbg !52
  store %struct._GError* null, %struct._GError** %7, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %8, metadata !53, metadata !23), !dbg !54
  store i32 0, i32* %8, align 4, !dbg !54
  %9 = call i32 @VMTools_LoadConfig(i8* null, i32 3, %struct._GKeyFile** %5, i64* null), !dbg !55
  %10 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !56
  %11 = icmp eq %struct._GKeyFile* %10, null, !dbg !58
  br i1 %11, label %12, label %14, !dbg !59

; <label>:12:                                     ; preds = %2
  %13 = call %struct._GKeyFile* @g_key_file_new(), !dbg !60
  store %struct._GKeyFile* %13, %struct._GKeyFile** %5, align 8, !dbg !62
  br label %14, !dbg !63

; <label>:14:                                     ; preds = %12, %2
  %15 = load i8*, i8** %3, align 8, !dbg !64
  %16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %15), !dbg !65
  store i8* %16, i8** %6, align 8, !dbg !66
  %17 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !67
  %18 = load i8*, i8** %6, align 8, !dbg !68
  %19 = load i8*, i8** %4, align 8, !dbg !69
  call void @g_key_file_set_string(%struct._GKeyFile* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %18, i8* %19), !dbg !70
  %20 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !71
  %21 = call i32 @VMTools_WriteConfig(i8* null, %struct._GKeyFile* %20, %struct._GError** %7), !dbg !73
  %22 = icmp ne i32 %21, 0, !dbg !73
  br i1 %22, label %28, label %23, !dbg !74

; <label>:23:                                     ; preds = %14
  %24 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i32 0, i32 0)), !dbg !75
  %25 = load %struct._GError*, %struct._GError** %7, align 8, !dbg !77
  %26 = getelementptr inbounds %struct._GError, %struct._GError* %25, i32 0, i32 2, !dbg !78
  %27 = load i8*, i8** %26, align 8, !dbg !78
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %24, i8* %27), !dbg !79
  call void @g_clear_error(%struct._GError** %7), !dbg !81
  store i32 75, i32* %8, align 4, !dbg !82
  br label %28, !dbg !83

; <label>:28:                                     ; preds = %23, %14
  %29 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !84
  call void @g_key_file_free(%struct._GKeyFile* %29), !dbg !85
  %30 = load i8*, i8** %6, align 8, !dbg !86
  call void @g_free(i8* %30), !dbg !87
  %31 = load i32, i32* %8, align 4, !dbg !88
  ret i32 %31, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #2

declare %struct._GKeyFile* @g_key_file_new() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @g_key_file_set_string(%struct._GKeyFile*, i8*, i8*, i8*) #2

declare i32 @VMTools_WriteConfig(i8*, %struct._GKeyFile*, %struct._GError**) #2

declare void @ToolsCmd_PrintErr(i8*, ...) #2

declare i8* @VMTools_GetString(i8*, i8*) #2

declare void @g_clear_error(%struct._GError**) #2

declare void @g_key_file_free(%struct._GKeyFile*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @LoggingGetLevel(i8*) #0 !dbg !90 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GKeyFile*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !93, metadata !23), !dbg !94
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %3, metadata !95, metadata !23), !dbg !96
  store %struct._GKeyFile* null, %struct._GKeyFile** %3, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata i8** %4, metadata !97, metadata !23), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %5, metadata !99, metadata !23), !dbg !100
  store i32 0, i32* %5, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i8** %6, metadata !101, metadata !23), !dbg !102
  %7 = call i32 @VMTools_LoadConfig(i8* null, i32 3, %struct._GKeyFile** %3, i64* null), !dbg !103
  %8 = load %struct._GKeyFile*, %struct._GKeyFile** %3, align 8, !dbg !104
  %9 = icmp eq %struct._GKeyFile* %8, null, !dbg !106
  br i1 %9, label %10, label %12, !dbg !107

; <label>:10:                                     ; preds = %1
  %11 = call %struct._GKeyFile* @g_key_file_new(), !dbg !108
  store %struct._GKeyFile* %11, %struct._GKeyFile** %3, align 8, !dbg !110
  br label %12, !dbg !111

; <label>:12:                                     ; preds = %10, %1
  %13 = load i8*, i8** %2, align 8, !dbg !112
  %14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %13), !dbg !113
  store i8* %14, i8** %4, align 8, !dbg !114
  %15 = load %struct._GKeyFile*, %struct._GKeyFile** %3, align 8, !dbg !115
  %16 = load i8*, i8** %4, align 8, !dbg !116
  %17 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %16, %struct._GError** null), !dbg !117
  store i8* %17, i8** %6, align 8, !dbg !118
  %18 = load i8*, i8** %6, align 8, !dbg !119
  %19 = icmp ne i8* %18, null, !dbg !119
  br i1 %19, label %20, label %23, !dbg !121

; <label>:20:                                     ; preds = %12
  %21 = load i8*, i8** %4, align 8, !dbg !122
  %22 = load i8*, i8** %6, align 8, !dbg !124
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %21, i8* %22), !dbg !125
  br label %25, !dbg !126

; <label>:23:                                     ; preds = %12
  %24 = load i8*, i8** %4, align 8, !dbg !127
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)), !dbg !129
  br label %25

; <label>:25:                                     ; preds = %23, %20
  %26 = load %struct._GKeyFile*, %struct._GKeyFile** %3, align 8, !dbg !130
  call void @g_key_file_free(%struct._GKeyFile* %26), !dbg !131
  %27 = load i8*, i8** %4, align 8, !dbg !132
  call void @g_free(i8* %27), !dbg !133
  %28 = load i8*, i8** %6, align 8, !dbg !134
  call void @g_free(i8* %28), !dbg !135
  %29 = load i32, i32* %5, align 4, !dbg !136
  ret i32 %29, !dbg !137
}

declare noalias i8* @g_key_file_get_string(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare void @g_print(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @Logging_Command(i8**, i32, i32) #0 !dbg !138 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !143, metadata !23), !dbg !144
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !145, metadata !23), !dbg !146
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !147, metadata !23), !dbg !148
  call void @llvm.dbg.declare(metadata i8** %8, metadata !149, metadata !23), !dbg !150
  %10 = load i32, i32* @optind, align 4, !dbg !151
  %11 = sext i32 %10 to i64, !dbg !152
  %12 = load i8**, i8*** %5, align 8, !dbg !152
  %13 = getelementptr inbounds i8*, i8** %12, i64 %11, !dbg !152
  %14 = load i8*, i8** %13, align 8, !dbg !152
  store i8* %14, i8** %8, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata i8** %9, metadata !153, metadata !23), !dbg !154
  %15 = load i32, i32* @optind, align 4, !dbg !155
  %16 = add nsw i32 %15, 1, !dbg !157
  %17 = load i32, i32* %6, align 4, !dbg !158
  %18 = icmp sge i32 %16, %17, !dbg !159
  br i1 %18, label %19, label %24, !dbg !160

; <label>:19:                                     ; preds = %3
  %20 = load i8**, i8*** %5, align 8, !dbg !161
  %21 = getelementptr inbounds i8*, i8** %20, i64 0, !dbg !161
  %22 = load i8*, i8** %21, align 8, !dbg !161
  %23 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0)), !dbg !163
  call void @ToolsCmd_MissingEntityError(i8* %22, i8* %23), !dbg !164
  store i32 64, i32* %4, align 4, !dbg !165
  br label %125, !dbg !165

; <label>:24:                                     ; preds = %3
  %25 = load i32, i32* @optind, align 4, !dbg !166
  %26 = add nsw i32 %25, 2, !dbg !168
  %27 = load i32, i32* %6, align 4, !dbg !169
  %28 = icmp sge i32 %26, %27, !dbg !170
  br i1 %28, label %29, label %34, !dbg !171

; <label>:29:                                     ; preds = %24
  %30 = load i8**, i8*** %5, align 8, !dbg !172
  %31 = getelementptr inbounds i8*, i8** %30, i64 0, !dbg !172
  %32 = load i8*, i8** %31, align 8, !dbg !172
  %33 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0)), !dbg !174
  call void @ToolsCmd_MissingEntityError(i8* %32, i8* %33), !dbg !175
  store i32 64, i32* %4, align 4, !dbg !176
  br label %125, !dbg !176

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* @optind, align 4, !dbg !177
  %36 = add nsw i32 %35, 1, !dbg !178
  %37 = sext i32 %36 to i64, !dbg !179
  %38 = load i8**, i8*** %5, align 8, !dbg !179
  %39 = getelementptr inbounds i8*, i8** %38, i64 %37, !dbg !179
  %40 = load i8*, i8** %39, align 8, !dbg !179
  store i8* %40, i8** %9, align 8, !dbg !180
  %41 = load i8*, i8** %8, align 8, !dbg !181
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4, !dbg !183
  %43 = icmp eq i32 %42, 0, !dbg !184
  br i1 %43, label %44, label %115, !dbg !185

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** %9, align 8, !dbg !186
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #4, !dbg !189
  %47 = icmp eq i32 %46, 0, !dbg !190
  br i1 %47, label %48, label %92, !dbg !191

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* @optind, align 4, !dbg !192
  %50 = add nsw i32 %49, 3, !dbg !195
  %51 = load i32, i32* %6, align 4, !dbg !196
  %52 = icmp sge i32 %50, %51, !dbg !197
  br i1 %52, label %53, label %58, !dbg !198

; <label>:53:                                     ; preds = %48
  %54 = load i8**, i8*** %5, align 8, !dbg !199
  %55 = getelementptr inbounds i8*, i8** %54, i64 0, !dbg !199
  %56 = load i8*, i8** %55, align 8, !dbg !199
  %57 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)), !dbg !201
  call void @ToolsCmd_MissingEntityError(i8* %56, i8* %57), !dbg !202
  store i32 64, i32* %4, align 4, !dbg !203
  br label %125, !dbg !203

; <label>:58:                                     ; preds = %48
  %59 = load i32, i32* @optind, align 4, !dbg !204
  %60 = add nsw i32 %59, 3, !dbg !207
  %61 = sext i32 %60 to i64, !dbg !208
  %62 = load i8**, i8*** %5, align 8, !dbg !208
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61, !dbg !208
  %64 = load i8*, i8** %63, align 8, !dbg !208
  %65 = call i32 @LoggingCheckLevel(i8* %64), !dbg !209
  %66 = icmp ne i32 %65, 0, !dbg !209
  br i1 %66, label %78, label %67, !dbg !210

; <label>:67:                                     ; preds = %58
  %68 = load i8**, i8*** %5, align 8, !dbg !211
  %69 = getelementptr inbounds i8*, i8** %68, i64 0, !dbg !211
  %70 = load i8*, i8** %69, align 8, !dbg !211
  %71 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)), !dbg !213
  %72 = load i32, i32* @optind, align 4, !dbg !214
  %73 = add nsw i32 %72, 3, !dbg !215
  %74 = sext i32 %73 to i64, !dbg !216
  %75 = load i8**, i8*** %5, align 8, !dbg !216
  %76 = getelementptr inbounds i8*, i8** %75, i64 %74, !dbg !216
  %77 = load i8*, i8** %76, align 8, !dbg !216
  call void @ToolsCmd_UnknownEntityError(i8* %70, i8* %71, i8* %77), !dbg !217
  store i32 64, i32* %4, align 4, !dbg !218
  br label %125, !dbg !218

; <label>:78:                                     ; preds = %58
  %79 = load i32, i32* @optind, align 4, !dbg !219
  %80 = add nsw i32 %79, 2, !dbg !220
  %81 = sext i32 %80 to i64, !dbg !221
  %82 = load i8**, i8*** %5, align 8, !dbg !221
  %83 = getelementptr inbounds i8*, i8** %82, i64 %81, !dbg !221
  %84 = load i8*, i8** %83, align 8, !dbg !221
  %85 = load i32, i32* @optind, align 4, !dbg !222
  %86 = add nsw i32 %85, 3, !dbg !223
  %87 = sext i32 %86 to i64, !dbg !224
  %88 = load i8**, i8*** %5, align 8, !dbg !224
  %89 = getelementptr inbounds i8*, i8** %88, i64 %87, !dbg !224
  %90 = load i8*, i8** %89, align 8, !dbg !224
  %91 = call i32 @LoggingSetLevel(i8* %84, i8* %90), !dbg !225
  store i32 %91, i32* %4, align 4, !dbg !226
  br label %125, !dbg !226

; <label>:92:                                     ; preds = %44
  %93 = load i8*, i8** %9, align 8, !dbg !227
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #4, !dbg !229
  %95 = icmp eq i32 %94, 0, !dbg !230
  br i1 %95, label %96, label %104, !dbg !231

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* @optind, align 4, !dbg !232
  %98 = add nsw i32 %97, 2, !dbg !234
  %99 = sext i32 %98 to i64, !dbg !235
  %100 = load i8**, i8*** %5, align 8, !dbg !235
  %101 = getelementptr inbounds i8*, i8** %100, i64 %99, !dbg !235
  %102 = load i8*, i8** %101, align 8, !dbg !235
  %103 = call i32 @LoggingGetLevel(i8* %102), !dbg !236
  store i32 %103, i32* %4, align 4, !dbg !237
  br label %125, !dbg !237

; <label>:104:                                    ; preds = %92
  %105 = load i8**, i8*** %5, align 8, !dbg !238
  %106 = getelementptr inbounds i8*, i8** %105, i64 0, !dbg !238
  %107 = load i8*, i8** %106, align 8, !dbg !238
  %108 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)), !dbg !240
  %109 = load i32, i32* @optind, align 4, !dbg !241
  %110 = add nsw i32 %109, 1, !dbg !242
  %111 = sext i32 %110 to i64, !dbg !243
  %112 = load i8**, i8*** %5, align 8, !dbg !243
  %113 = getelementptr inbounds i8*, i8** %112, i64 %111, !dbg !243
  %114 = load i8*, i8** %113, align 8, !dbg !243
  call void @ToolsCmd_UnknownEntityError(i8* %107, i8* %108, i8* %114), !dbg !244
  store i32 64, i32* %4, align 4, !dbg !245
  br label %125, !dbg !245

; <label>:115:                                    ; preds = %34
  %116 = load i8**, i8*** %5, align 8, !dbg !246
  %117 = getelementptr inbounds i8*, i8** %116, i64 0, !dbg !246
  %118 = load i8*, i8** %117, align 8, !dbg !246
  %119 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)), !dbg !248
  %120 = load i32, i32* @optind, align 4, !dbg !249
  %121 = sext i32 %120 to i64, !dbg !250
  %122 = load i8**, i8*** %5, align 8, !dbg !250
  %123 = getelementptr inbounds i8*, i8** %122, i64 %121, !dbg !250
  %124 = load i8*, i8** %123, align 8, !dbg !250
  call void @ToolsCmd_UnknownEntityError(i8* %118, i8* %119, i8* %124), !dbg !251
  store i32 64, i32* %4, align 4, !dbg !252
  br label %125, !dbg !252

; <label>:125:                                    ; preds = %115, %104, %96, %78, %67, %53, %29, %19
  %126 = load i32, i32* %4, align 4, !dbg !253
  ret i32 %126, !dbg !253
}

declare void @ToolsCmd_MissingEntityError(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @LoggingCheckLevel(i8*) #0 !dbg !254 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !257, metadata !23), !dbg !258
  %4 = load i8*, i8** %3, align 8, !dbg !259
  %5 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %4) #4, !dbg !261
  %6 = icmp eq i32 %5, 0, !dbg !262
  br i1 %6, label %27, label %7, !dbg !263

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !264
  %9 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %8) #4, !dbg !265
  %10 = icmp eq i32 %9, 0, !dbg !266
  br i1 %10, label %27, label %11, !dbg !267

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %3, align 8, !dbg !268
  %13 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %12) #4, !dbg !269
  %14 = icmp eq i32 %13, 0, !dbg !270
  br i1 %14, label %27, label %15, !dbg !271

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %3, align 8, !dbg !272
  %17 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %16) #4, !dbg !273
  %18 = icmp eq i32 %17, 0, !dbg !274
  br i1 %18, label %27, label %19, !dbg !275

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %3, align 8, !dbg !276
  %21 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %20) #4, !dbg !277
  %22 = icmp eq i32 %21, 0, !dbg !278
  br i1 %22, label %27, label %23, !dbg !279

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %3, align 8, !dbg !280
  %25 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %24) #4, !dbg !281
  %26 = icmp eq i32 %25, 0, !dbg !282
  br i1 %26, label %27, label %28, !dbg !283

; <label>:27:                                     ; preds = %23, %19, %15, %11, %7, %1
  store i32 1, i32* %2, align 4, !dbg !285
  br label %29, !dbg !285

; <label>:28:                                     ; preds = %23
  store i32 0, i32* %2, align 4, !dbg !287
  br label %29, !dbg !287

; <label>:29:                                     ; preds = %28, %27
  %30 = load i32, i32* %2, align 4, !dbg !289
  ret i32 %30, !dbg !289
}

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @Logging_Help(i8*, i8*) #0 !dbg !290 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !295, metadata !23), !dbg !296
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !297, metadata !23), !dbg !298
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([361 x i8], [361 x i8]* @.str.13, i32 0, i32 0)), !dbg !299
  %6 = load i8*, i8** %4, align 8, !dbg !300
  %7 = load i8*, i8** %3, align 8, !dbg !301
  %8 = load i8*, i8** %4, align 8, !dbg !302
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)), !dbg !303
  ret void, !dbg !305
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-logging.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1637")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 50, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1637")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!7 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!8 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "LoggingSetLevel", scope: !15, file: !15, line: 97, type: !16, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!15 = !DIFile(filename: "toolboxcmd-logging.c", directory: "/home/lichi/Desktop/open-vm-tools/line1637")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !19}
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !{}
!22 = !DILocalVariable(name: "service", arg: 1, scope: !14, file: !15, line: 97, type: !19)
!23 = !DIExpression()
!24 = !DILocation(line: 97, column: 23, scope: !14)
!25 = !DILocalVariable(name: "level", arg: 2, scope: !14, file: !15, line: 98, type: !19)
!26 = !DILocation(line: 98, column: 23, scope: !14)
!27 = !DILocalVariable(name: "confDict", scope: !14, file: !15, line: 100, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !4, line: 48, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !4, line: 48, flags: DIFlagFwdDecl)
!31 = !DILocation(line: 100, column: 14, scope: !14)
!32 = !DILocalVariable(name: "confName", scope: !14, file: !15, line: 101, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !35, line: 46, baseType: !20)
!35 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1637")
!36 = !DILocation(line: 101, column: 11, scope: !14)
!37 = !DILocalVariable(name: "err", scope: !14, file: !15, line: 102, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !40, line: 42, baseType: !41)
!40 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1637")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !40, line: 44, size: 128, align: 64, elements: !42)
!42 = !{!43, !49, !51}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !41, file: !40, line: 46, baseType: !44, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !45, line: 36, baseType: !46)
!45 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1637")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !47, line: 45, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1637")
!48 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !41, file: !40, line: 47, baseType: !50, size: 32, align: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !35, line: 49, baseType: !18)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !41, file: !40, line: 48, baseType: !33, size: 64, align: 64, offset: 64)
!52 = !DILocation(line: 102, column: 12, scope: !14)
!53 = !DILocalVariable(name: "ret", scope: !14, file: !15, line: 103, type: !18)
!54 = !DILocation(line: 103, column: 8, scope: !14)
!55 = !DILocation(line: 105, column: 4, scope: !14)
!56 = !DILocation(line: 110, column: 8, scope: !57)
!57 = distinct !DILexicalBlock(scope: !14, file: !15, line: 110, column: 8)
!58 = !DILocation(line: 110, column: 17, scope: !57)
!59 = !DILocation(line: 110, column: 8, scope: !14)
!60 = !DILocation(line: 111, column: 18, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !15, line: 110, column: 25)
!62 = !DILocation(line: 111, column: 16, scope: !61)
!63 = !DILocation(line: 112, column: 4, scope: !61)
!64 = !DILocation(line: 114, column: 43, scope: !14)
!65 = !DILocation(line: 114, column: 15, scope: !14)
!66 = !DILocation(line: 114, column: 13, scope: !14)
!67 = !DILocation(line: 116, column: 26, scope: !14)
!68 = !DILocation(line: 117, column: 26, scope: !14)
!69 = !DILocation(line: 117, column: 36, scope: !14)
!70 = !DILocation(line: 116, column: 4, scope: !14)
!71 = !DILocation(line: 119, column: 34, scope: !72)
!72 = distinct !DILexicalBlock(scope: !14, file: !15, line: 119, column: 8)
!73 = !DILocation(line: 119, column: 9, scope: !72)
!74 = !DILocation(line: 119, column: 8, scope: !14)
!75 = !DILocation(line: 120, column: 25, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !15, line: 119, column: 51)
!77 = !DILocation(line: 121, column: 25, scope: !76)
!78 = !DILocation(line: 121, column: 30, scope: !76)
!79 = !DILocation(line: 120, column: 7, scope: !80)
!80 = !DILexicalBlockFile(scope: !76, file: !15, discriminator: 1)
!81 = !DILocation(line: 122, column: 7, scope: !76)
!82 = !DILocation(line: 123, column: 11, scope: !76)
!83 = !DILocation(line: 124, column: 4, scope: !76)
!84 = !DILocation(line: 126, column: 20, scope: !14)
!85 = !DILocation(line: 126, column: 4, scope: !14)
!86 = !DILocation(line: 127, column: 11, scope: !14)
!87 = !DILocation(line: 127, column: 4, scope: !14)
!88 = !DILocation(line: 129, column: 11, scope: !14)
!89 = !DILocation(line: 129, column: 4, scope: !14)
!90 = distinct !DISubprogram(name: "LoggingGetLevel", scope: !15, file: !15, line: 151, type: !91, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!91 = !DISubroutineType(types: !92)
!92 = !{!18, !19}
!93 = !DILocalVariable(name: "service", arg: 1, scope: !90, file: !15, line: 151, type: !19)
!94 = !DILocation(line: 151, column: 23, scope: !90)
!95 = !DILocalVariable(name: "confDict", scope: !90, file: !15, line: 153, type: !28)
!96 = !DILocation(line: 153, column: 14, scope: !90)
!97 = !DILocalVariable(name: "confName", scope: !90, file: !15, line: 154, type: !33)
!98 = !DILocation(line: 154, column: 11, scope: !90)
!99 = !DILocalVariable(name: "ret", scope: !90, file: !15, line: 155, type: !18)
!100 = !DILocation(line: 155, column: 8, scope: !90)
!101 = !DILocalVariable(name: "level", scope: !90, file: !15, line: 156, type: !33)
!102 = !DILocation(line: 156, column: 11, scope: !90)
!103 = !DILocation(line: 158, column: 4, scope: !90)
!104 = !DILocation(line: 163, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !90, file: !15, line: 163, column: 8)
!106 = !DILocation(line: 163, column: 17, scope: !105)
!107 = !DILocation(line: 163, column: 8, scope: !90)
!108 = !DILocation(line: 164, column: 18, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !15, line: 163, column: 25)
!110 = !DILocation(line: 164, column: 16, scope: !109)
!111 = !DILocation(line: 165, column: 4, scope: !109)
!112 = !DILocation(line: 167, column: 43, scope: !90)
!113 = !DILocation(line: 167, column: 15, scope: !90)
!114 = !DILocation(line: 167, column: 13, scope: !90)
!115 = !DILocation(line: 169, column: 34, scope: !90)
!116 = !DILocation(line: 170, column: 34, scope: !90)
!117 = !DILocation(line: 169, column: 12, scope: !90)
!118 = !DILocation(line: 169, column: 10, scope: !90)
!119 = !DILocation(line: 172, column: 8, scope: !120)
!120 = distinct !DILexicalBlock(scope: !90, file: !15, line: 172, column: 8)
!121 = !DILocation(line: 172, column: 8, scope: !90)
!122 = !DILocation(line: 173, column: 28, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !15, line: 172, column: 15)
!124 = !DILocation(line: 173, column: 38, scope: !123)
!125 = !DILocation(line: 173, column: 7, scope: !123)
!126 = !DILocation(line: 174, column: 4, scope: !123)
!127 = !DILocation(line: 175, column: 28, scope: !128)
!128 = distinct !DILexicalBlock(scope: !120, file: !15, line: 174, column: 11)
!129 = !DILocation(line: 175, column: 7, scope: !128)
!130 = !DILocation(line: 177, column: 20, scope: !90)
!131 = !DILocation(line: 177, column: 4, scope: !90)
!132 = !DILocation(line: 178, column: 11, scope: !90)
!133 = !DILocation(line: 178, column: 4, scope: !90)
!134 = !DILocation(line: 179, column: 11, scope: !90)
!135 = !DILocation(line: 179, column: 4, scope: !90)
!136 = !DILocation(line: 181, column: 11, scope: !90)
!137 = !DILocation(line: 181, column: 4, scope: !90)
!138 = distinct !DISubprogram(name: "Logging_Command", scope: !15, file: !15, line: 203, type: !139, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!139 = !DISubroutineType(types: !140)
!140 = !{!18, !141, !18, !142}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !35, line: 50, baseType: !50)
!143 = !DILocalVariable(name: "argv", arg: 1, scope: !138, file: !15, line: 203, type: !141)
!144 = !DILocation(line: 203, column: 24, scope: !138)
!145 = !DILocalVariable(name: "argc", arg: 2, scope: !138, file: !15, line: 204, type: !18)
!146 = !DILocation(line: 204, column: 21, scope: !138)
!147 = !DILocalVariable(name: "quiet", arg: 3, scope: !138, file: !15, line: 205, type: !142)
!148 = !DILocation(line: 205, column: 26, scope: !138)
!149 = !DILocalVariable(name: "subcommand", scope: !138, file: !15, line: 207, type: !19)
!150 = !DILocation(line: 207, column: 10, scope: !138)
!151 = !DILocation(line: 207, column: 28, scope: !138)
!152 = !DILocation(line: 207, column: 23, scope: !138)
!153 = !DILocalVariable(name: "op", scope: !138, file: !15, line: 208, type: !19)
!154 = !DILocation(line: 208, column: 10, scope: !138)
!155 = !DILocation(line: 210, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !138, file: !15, line: 210, column: 8)
!157 = !DILocation(line: 210, column: 16, scope: !156)
!158 = !DILocation(line: 210, column: 24, scope: !156)
!159 = !DILocation(line: 210, column: 21, scope: !156)
!160 = !DILocation(line: 210, column: 8, scope: !138)
!161 = !DILocation(line: 211, column: 35, scope: !162)
!162 = distinct !DILexicalBlock(scope: !156, file: !15, line: 210, column: 30)
!163 = !DILocation(line: 212, column: 35, scope: !162)
!164 = !DILocation(line: 211, column: 7, scope: !162)
!165 = !DILocation(line: 213, column: 7, scope: !162)
!166 = !DILocation(line: 215, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !138, file: !15, line: 215, column: 8)
!168 = !DILocation(line: 215, column: 16, scope: !167)
!169 = !DILocation(line: 215, column: 24, scope: !167)
!170 = !DILocation(line: 215, column: 21, scope: !167)
!171 = !DILocation(line: 215, column: 8, scope: !138)
!172 = !DILocation(line: 216, column: 35, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !15, line: 215, column: 30)
!174 = !DILocation(line: 217, column: 35, scope: !173)
!175 = !DILocation(line: 216, column: 7, scope: !173)
!176 = !DILocation(line: 218, column: 7, scope: !173)
!177 = !DILocation(line: 221, column: 14, scope: !138)
!178 = !DILocation(line: 221, column: 21, scope: !138)
!179 = !DILocation(line: 221, column: 9, scope: !138)
!180 = !DILocation(line: 221, column: 7, scope: !138)
!181 = !DILocation(line: 223, column: 15, scope: !182)
!182 = distinct !DILexicalBlock(scope: !138, file: !15, line: 223, column: 8)
!183 = !DILocation(line: 223, column: 8, scope: !182)
!184 = !DILocation(line: 223, column: 36, scope: !182)
!185 = !DILocation(line: 223, column: 8, scope: !138)
!186 = !DILocation(line: 224, column: 18, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !15, line: 224, column: 11)
!188 = distinct !DILexicalBlock(scope: !182, file: !15, line: 223, column: 42)
!189 = !DILocation(line: 224, column: 11, scope: !187)
!190 = !DILocation(line: 224, column: 29, scope: !187)
!191 = !DILocation(line: 224, column: 11, scope: !188)
!192 = !DILocation(line: 225, column: 15, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !15, line: 225, column: 14)
!194 = distinct !DILexicalBlock(scope: !187, file: !15, line: 224, column: 35)
!195 = !DILocation(line: 225, column: 22, scope: !193)
!196 = !DILocation(line: 225, column: 30, scope: !193)
!197 = !DILocation(line: 225, column: 27, scope: !193)
!198 = !DILocation(line: 225, column: 14, scope: !194)
!199 = !DILocation(line: 226, column: 41, scope: !200)
!200 = distinct !DILexicalBlock(scope: !193, file: !15, line: 225, column: 36)
!201 = !DILocation(line: 227, column: 41, scope: !200)
!202 = !DILocation(line: 226, column: 13, scope: !200)
!203 = !DILocation(line: 228, column: 13, scope: !200)
!204 = !DILocation(line: 230, column: 41, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !15, line: 230, column: 17)
!206 = distinct !DILexicalBlock(scope: !193, file: !15, line: 229, column: 17)
!207 = !DILocation(line: 230, column: 48, scope: !205)
!208 = !DILocation(line: 230, column: 36, scope: !205)
!209 = !DILocation(line: 230, column: 18, scope: !205)
!210 = !DILocation(line: 230, column: 17, scope: !206)
!211 = !DILocation(line: 231, column: 44, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !15, line: 230, column: 55)
!213 = !DILocation(line: 232, column: 44, scope: !212)
!214 = !DILocation(line: 233, column: 49, scope: !212)
!215 = !DILocation(line: 233, column: 56, scope: !212)
!216 = !DILocation(line: 233, column: 44, scope: !212)
!217 = !DILocation(line: 231, column: 16, scope: !212)
!218 = !DILocation(line: 234, column: 16, scope: !212)
!219 = !DILocation(line: 236, column: 41, scope: !206)
!220 = !DILocation(line: 236, column: 48, scope: !206)
!221 = !DILocation(line: 236, column: 36, scope: !206)
!222 = !DILocation(line: 236, column: 59, scope: !206)
!223 = !DILocation(line: 236, column: 66, scope: !206)
!224 = !DILocation(line: 236, column: 54, scope: !206)
!225 = !DILocation(line: 236, column: 20, scope: !206)
!226 = !DILocation(line: 236, column: 13, scope: !206)
!227 = !DILocation(line: 238, column: 25, scope: !228)
!228 = distinct !DILexicalBlock(scope: !187, file: !15, line: 238, column: 18)
!229 = !DILocation(line: 238, column: 18, scope: !228)
!230 = !DILocation(line: 238, column: 36, scope: !228)
!231 = !DILocation(line: 238, column: 18, scope: !187)
!232 = !DILocation(line: 239, column: 38, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !15, line: 238, column: 42)
!234 = !DILocation(line: 239, column: 45, scope: !233)
!235 = !DILocation(line: 239, column: 33, scope: !233)
!236 = !DILocation(line: 239, column: 17, scope: !233)
!237 = !DILocation(line: 239, column: 10, scope: !233)
!238 = !DILocation(line: 241, column: 38, scope: !239)
!239 = distinct !DILexicalBlock(scope: !228, file: !15, line: 240, column: 14)
!240 = !DILocation(line: 242, column: 38, scope: !239)
!241 = !DILocation(line: 243, column: 43, scope: !239)
!242 = !DILocation(line: 243, column: 50, scope: !239)
!243 = !DILocation(line: 243, column: 38, scope: !239)
!244 = !DILocation(line: 241, column: 10, scope: !239)
!245 = !DILocation(line: 244, column: 10, scope: !239)
!246 = !DILocation(line: 247, column: 35, scope: !247)
!247 = distinct !DILexicalBlock(scope: !182, file: !15, line: 246, column: 11)
!248 = !DILocation(line: 248, column: 35, scope: !247)
!249 = !DILocation(line: 249, column: 40, scope: !247)
!250 = !DILocation(line: 249, column: 35, scope: !247)
!251 = !DILocation(line: 247, column: 7, scope: !247)
!252 = !DILocation(line: 250, column: 7, scope: !247)
!253 = !DILocation(line: 252, column: 1, scope: !138)
!254 = distinct !DISubprogram(name: "LoggingCheckLevel", scope: !15, file: !15, line: 64, type: !255, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!255 = !DISubroutineType(types: !256)
!256 = !{!142, !19}
!257 = !DILocalVariable(name: "level", arg: 1, scope: !254, file: !15, line: 64, type: !19)
!258 = !DILocation(line: 64, column: 25, scope: !254)
!259 = !DILocation(line: 66, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !254, file: !15, line: 66, column: 8)
!261 = !DILocation(line: 66, column: 9, scope: !260)
!262 = !DILocation(line: 66, column: 32, scope: !260)
!263 = !DILocation(line: 66, column: 38, scope: !260)
!264 = !DILocation(line: 67, column: 28, scope: !260)
!265 = !DILocation(line: 67, column: 9, scope: !260)
!266 = !DILocation(line: 67, column: 35, scope: !260)
!267 = !DILocation(line: 67, column: 41, scope: !260)
!268 = !DILocation(line: 68, column: 27, scope: !260)
!269 = !DILocation(line: 68, column: 9, scope: !260)
!270 = !DILocation(line: 68, column: 34, scope: !260)
!271 = !DILocation(line: 68, column: 40, scope: !260)
!272 = !DILocation(line: 69, column: 27, scope: !260)
!273 = !DILocation(line: 69, column: 9, scope: !260)
!274 = !DILocation(line: 69, column: 34, scope: !260)
!275 = !DILocation(line: 69, column: 40, scope: !260)
!276 = !DILocation(line: 70, column: 24, scope: !260)
!277 = !DILocation(line: 70, column: 9, scope: !260)
!278 = !DILocation(line: 70, column: 31, scope: !260)
!279 = !DILocation(line: 70, column: 37, scope: !260)
!280 = !DILocation(line: 71, column: 25, scope: !260)
!281 = !DILocation(line: 71, column: 9, scope: !260)
!282 = !DILocation(line: 71, column: 32, scope: !260)
!283 = !DILocation(line: 66, column: 8, scope: !284)
!284 = !DILexicalBlockFile(scope: !254, file: !15, discriminator: 1)
!285 = !DILocation(line: 72, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !260, file: !15, line: 71, column: 39)
!287 = !DILocation(line: 74, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !260, file: !15, line: 73, column: 11)
!289 = !DILocation(line: 76, column: 1, scope: !254)
!290 = distinct !DISubprogram(name: "Logging_Help", scope: !15, file: !15, line: 272, type: !291, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !21)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!295 = !DILocalVariable(name: "progName", arg: 1, scope: !290, file: !15, line: 272, type: !293)
!296 = !DILocation(line: 272, column: 26, scope: !290)
!297 = !DILocalVariable(name: "cmd", arg: 2, scope: !290, file: !15, line: 273, type: !293)
!298 = !DILocation(line: 273, column: 26, scope: !290)
!299 = !DILocation(line: 275, column: 12, scope: !290)
!300 = !DILocation(line: 284, column: 12, scope: !290)
!301 = !DILocation(line: 284, column: 17, scope: !290)
!302 = !DILocation(line: 284, column: 27, scope: !290)
!303 = !DILocation(line: 275, column: 4, scope: !304)
!304 = !DILexicalBlockFile(scope: !290, file: !15, discriminator: 1)
!305 = !DILocation(line: 285, column: 1, scope: !290)
