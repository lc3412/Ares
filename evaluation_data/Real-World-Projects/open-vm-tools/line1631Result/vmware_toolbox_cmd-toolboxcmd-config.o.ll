; ModuleID = './vmware_toolbox_cmd-toolboxcmd-config.o.i'
source_filename = "./vmware_toolbox_cmd-toolboxcmd-config.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GKeyFile = type opaque
%struct._GError = type { i32, i32, i8* }

@optind = external global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"toolboxcmd\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"@&!*@*@(arg.config.operation)config operation\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"@&!*@*@(arg.config.section)config section\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.config.key)config key\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"@&!*@*@(arg.config.value)config value\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"@&!*@*@(arg.subcommand)subcommand\00", align 1
@.str.9 = private unnamed_addr constant [392 x i8] c"@&!*@*@(help.config)%s: modify Tools configuration\0AUsage: %s %s <subcommand>\0A\0ASubcommands:\0A   get <section> <key>: display current value for <key>\0A   set <section> <key> <value>: set <key> to <value>\0A\0A   remove <section> <key>: remove <key>\0A\0A<section> can be any supported section, such as logging, guestoperations or guestinfo.\0A<key> can be any configuration key.\0A<value> can be any value.\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"@&!*@*@(script.write.error)Error writing config: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"[%s] %s = %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"[%s] %s UNSET\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Config_Command(i8**, i32, i32) #0 !dbg !14 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !26, metadata !27), !dbg !28
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !29, metadata !27), !dbg !30
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !31, metadata !27), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %8, metadata !33, metadata !27), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %9, metadata !37, metadata !27), !dbg !38
  call void @llvm.dbg.declare(metadata i8** %10, metadata !39, metadata !27), !dbg !40
  %12 = load i32, i32* @optind, align 4, !dbg !41
  %13 = load i32, i32* %6, align 4, !dbg !43
  %14 = icmp sge i32 %12, %13, !dbg !44
  br i1 %14, label %15, label %20, !dbg !45

; <label>:15:                                     ; preds = %3
  %16 = load i8**, i8*** %5, align 8, !dbg !46
  %17 = getelementptr inbounds i8*, i8** %16, i64 0, !dbg !46
  %18 = load i8*, i8** %17, align 8, !dbg !46
  %19 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0)), !dbg !48
  call void @ToolsCmd_MissingEntityError(i8* %18, i8* %19), !dbg !49
  store i32 64, i32* %4, align 4, !dbg !50
  br label %108, !dbg !50

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* @optind, align 4, !dbg !51
  %22 = add nsw i32 %21, 1, !dbg !53
  %23 = load i32, i32* %6, align 4, !dbg !54
  %24 = icmp sge i32 %22, %23, !dbg !55
  br i1 %24, label %25, label %30, !dbg !56

; <label>:25:                                     ; preds = %20
  %26 = load i8**, i8*** %5, align 8, !dbg !57
  %27 = getelementptr inbounds i8*, i8** %26, i64 0, !dbg !57
  %28 = load i8*, i8** %27, align 8, !dbg !57
  %29 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0)), !dbg !59
  call void @ToolsCmd_MissingEntityError(i8* %28, i8* %29), !dbg !60
  store i32 64, i32* %4, align 4, !dbg !61
  br label %108, !dbg !61

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* @optind, align 4, !dbg !62
  %32 = add nsw i32 %31, 2, !dbg !64
  %33 = load i32, i32* %6, align 4, !dbg !65
  %34 = icmp sge i32 %32, %33, !dbg !66
  br i1 %34, label %35, label %40, !dbg !67

; <label>:35:                                     ; preds = %30
  %36 = load i8**, i8*** %5, align 8, !dbg !68
  %37 = getelementptr inbounds i8*, i8** %36, i64 0, !dbg !68
  %38 = load i8*, i8** %37, align 8, !dbg !68
  %39 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0)), !dbg !70
  call void @ToolsCmd_MissingEntityError(i8* %38, i8* %39), !dbg !71
  store i32 64, i32* %4, align 4, !dbg !72
  br label %108, !dbg !72

; <label>:40:                                     ; preds = %30
  %41 = load i32, i32* @optind, align 4, !dbg !73
  %42 = sext i32 %41 to i64, !dbg !74
  %43 = load i8**, i8*** %5, align 8, !dbg !74
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42, !dbg !74
  %45 = load i8*, i8** %44, align 8, !dbg !74
  store i8* %45, i8** %8, align 8, !dbg !75
  %46 = load i32, i32* @optind, align 4, !dbg !76
  %47 = add nsw i32 %46, 1, !dbg !77
  %48 = sext i32 %47 to i64, !dbg !78
  %49 = load i8**, i8*** %5, align 8, !dbg !78
  %50 = getelementptr inbounds i8*, i8** %49, i64 %48, !dbg !78
  %51 = load i8*, i8** %50, align 8, !dbg !78
  store i8* %51, i8** %9, align 8, !dbg !79
  %52 = load i32, i32* @optind, align 4, !dbg !80
  %53 = add nsw i32 %52, 2, !dbg !81
  %54 = sext i32 %53 to i64, !dbg !82
  %55 = load i8**, i8*** %5, align 8, !dbg !82
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54, !dbg !82
  %57 = load i8*, i8** %56, align 8, !dbg !82
  store i8* %57, i8** %10, align 8, !dbg !83
  %58 = load i8*, i8** %8, align 8, !dbg !84
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4, !dbg !86
  %60 = icmp eq i32 %59, 0, !dbg !87
  br i1 %60, label %61, label %82, !dbg !88

; <label>:61:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata i8** %11, metadata !89, metadata !27), !dbg !91
  %62 = load i32, i32* @optind, align 4, !dbg !92
  %63 = add nsw i32 %62, 3, !dbg !94
  %64 = load i32, i32* %6, align 4, !dbg !95
  %65 = icmp sge i32 %63, %64, !dbg !96
  br i1 %65, label %66, label %71, !dbg !97

; <label>:66:                                     ; preds = %61
  %67 = load i8**, i8*** %5, align 8, !dbg !98
  %68 = getelementptr inbounds i8*, i8** %67, i64 0, !dbg !98
  %69 = load i8*, i8** %68, align 8, !dbg !98
  %70 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)), !dbg !100
  call void @ToolsCmd_MissingEntityError(i8* %69, i8* %70), !dbg !101
  store i32 64, i32* %4, align 4, !dbg !102
  br label %108, !dbg !102

; <label>:71:                                     ; preds = %61
  %72 = load i32, i32* @optind, align 4, !dbg !103
  %73 = add nsw i32 %72, 3, !dbg !104
  %74 = sext i32 %73 to i64, !dbg !105
  %75 = load i8**, i8*** %5, align 8, !dbg !105
  %76 = getelementptr inbounds i8*, i8** %75, i64 %74, !dbg !105
  %77 = load i8*, i8** %76, align 8, !dbg !105
  store i8* %77, i8** %11, align 8, !dbg !106
  %78 = load i8*, i8** %9, align 8, !dbg !107
  %79 = load i8*, i8** %10, align 8, !dbg !108
  %80 = load i8*, i8** %11, align 8, !dbg !109
  %81 = call i32 @ConfigSet(i8* %78, i8* %79, i8* %80), !dbg !110
  store i32 %81, i32* %4, align 4, !dbg !111
  br label %108, !dbg !111

; <label>:82:                                     ; preds = %40
  %83 = load i8*, i8** %8, align 8, !dbg !112
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #4, !dbg !114
  %85 = icmp eq i32 %84, 0, !dbg !115
  br i1 %85, label %86, label %90, !dbg !116

; <label>:86:                                     ; preds = %82
  %87 = load i8*, i8** %9, align 8, !dbg !117
  %88 = load i8*, i8** %10, align 8, !dbg !119
  %89 = call i32 @ConfigGet(i8* %87, i8* %88), !dbg !120
  store i32 %89, i32* %4, align 4, !dbg !121
  br label %108, !dbg !121

; <label>:90:                                     ; preds = %82
  %91 = load i8*, i8** %8, align 8, !dbg !122
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #4, !dbg !124
  %93 = icmp eq i32 %92, 0, !dbg !125
  br i1 %93, label %94, label %98, !dbg !126

; <label>:94:                                     ; preds = %90
  %95 = load i8*, i8** %9, align 8, !dbg !127
  %96 = load i8*, i8** %10, align 8, !dbg !129
  %97 = call i32 @ConfigRemove(i8* %95, i8* %96), !dbg !130
  store i32 %97, i32* %4, align 4, !dbg !131
  br label %108, !dbg !131

; <label>:98:                                     ; preds = %90
  %99 = load i8**, i8*** %5, align 8, !dbg !132
  %100 = getelementptr inbounds i8*, i8** %99, i64 0, !dbg !132
  %101 = load i8*, i8** %100, align 8, !dbg !132
  %102 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0)), !dbg !134
  %103 = load i32, i32* @optind, align 4, !dbg !135
  %104 = sext i32 %103 to i64, !dbg !136
  %105 = load i8**, i8*** %5, align 8, !dbg !136
  %106 = getelementptr inbounds i8*, i8** %105, i64 %104, !dbg !136
  %107 = load i8*, i8** %106, align 8, !dbg !136
  call void @ToolsCmd_UnknownEntityError(i8* %101, i8* %102, i8* %107), !dbg !137
  store i32 64, i32* %4, align 4, !dbg !138
  br label %108, !dbg !138

; <label>:108:                                    ; preds = %98, %94, %86, %71, %66, %35, %25, %15
  %109 = load i32, i32* %4, align 4, !dbg !139
  ret i32 %109, !dbg !139
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @ToolsCmd_MissingEntityError(i8*, i8*) #2

declare i8* @VMTools_GetString(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ConfigSet(i8*, i8*, i8*) #0 !dbg !140 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GKeyFile*, align 8
  %8 = alloca %struct._GError*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !143, metadata !27), !dbg !144
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !145, metadata !27), !dbg !146
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !147, metadata !27), !dbg !148
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %7, metadata !149, metadata !27), !dbg !153
  store %struct._GKeyFile* null, %struct._GKeyFile** %7, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata %struct._GError** %8, metadata !154, metadata !27), !dbg !170
  store %struct._GError* null, %struct._GError** %8, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %9, metadata !171, metadata !27), !dbg !172
  store i32 0, i32* %9, align 4, !dbg !172
  %10 = call i32 @VMTools_LoadConfig(i8* null, i32 3, %struct._GKeyFile** %7, i64* null), !dbg !173
  %11 = load %struct._GKeyFile*, %struct._GKeyFile** %7, align 8, !dbg !174
  %12 = icmp eq %struct._GKeyFile* %11, null, !dbg !176
  br i1 %12, label %13, label %15, !dbg !177

; <label>:13:                                     ; preds = %3
  %14 = call %struct._GKeyFile* @g_key_file_new(), !dbg !178
  store %struct._GKeyFile* %14, %struct._GKeyFile** %7, align 8, !dbg !180
  br label %15, !dbg !181

; <label>:15:                                     ; preds = %13, %3
  %16 = load %struct._GKeyFile*, %struct._GKeyFile** %7, align 8, !dbg !182
  %17 = load i8*, i8** %4, align 8, !dbg !183
  %18 = load i8*, i8** %5, align 8, !dbg !184
  %19 = load i8*, i8** %6, align 8, !dbg !185
  call void @g_key_file_set_string(%struct._GKeyFile* %16, i8* %17, i8* %18, i8* %19), !dbg !186
  %20 = load %struct._GKeyFile*, %struct._GKeyFile** %7, align 8, !dbg !187
  %21 = call i32 @VMTools_WriteConfig(i8* null, %struct._GKeyFile* %20, %struct._GError** %8), !dbg !189
  %22 = icmp ne i32 %21, 0, !dbg !189
  br i1 %22, label %34, label %23, !dbg !190

; <label>:23:                                     ; preds = %15
  %24 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0)), !dbg !191
  %25 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !193
  %26 = icmp ne %struct._GError* %25, null, !dbg !193
  br i1 %26, label %27, label %31, !dbg !193

; <label>:27:                                     ; preds = %23
  %28 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !194
  %29 = getelementptr inbounds %struct._GError, %struct._GError* %28, i32 0, i32 2, !dbg !196
  %30 = load i8*, i8** %29, align 8, !dbg !196
  br label %32, !dbg !197

; <label>:31:                                     ; preds = %23
  br label %32, !dbg !198

; <label>:32:                                     ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %31 ], !dbg !200
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %24, i8* %33), !dbg !202
  call void @g_clear_error(%struct._GError** %8), !dbg !203
  store i32 75, i32* %9, align 4, !dbg !204
  br label %34, !dbg !205

; <label>:34:                                     ; preds = %32, %15
  %35 = load %struct._GKeyFile*, %struct._GKeyFile** %7, align 8, !dbg !206
  call void @g_key_file_free(%struct._GKeyFile* %35), !dbg !207
  %36 = load i32, i32* %9, align 4, !dbg !208
  ret i32 %36, !dbg !209
}

; Function Attrs: nounwind uwtable
define internal i32 @ConfigGet(i8*, i8*) #0 !dbg !210 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GKeyFile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !213, metadata !27), !dbg !214
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !215, metadata !27), !dbg !216
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %5, metadata !217, metadata !27), !dbg !218
  store %struct._GKeyFile* null, %struct._GKeyFile** %5, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %6, metadata !219, metadata !27), !dbg !220
  store i32 0, i32* %6, align 4, !dbg !220
  call void @llvm.dbg.declare(metadata i8** %7, metadata !221, metadata !27), !dbg !222
  store i8* null, i8** %7, align 8, !dbg !222
  %8 = call i32 @VMTools_LoadConfig(i8* null, i32 3, %struct._GKeyFile** %5, i64* null), !dbg !223
  %9 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !224
  %10 = icmp ne %struct._GKeyFile* %9, null, !dbg !224
  br i1 %10, label %11, label %16, !dbg !226

; <label>:11:                                     ; preds = %2
  %12 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !227
  %13 = load i8*, i8** %3, align 8, !dbg !229
  %14 = load i8*, i8** %4, align 8, !dbg !230
  %15 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %12, i8* %13, i8* %14, %struct._GError** null), !dbg !231
  store i8* %15, i8** %7, align 8, !dbg !232
  br label %17, !dbg !233

; <label>:16:                                     ; preds = %2
  store i32 69, i32* %6, align 4, !dbg !234
  br label %17

; <label>:17:                                     ; preds = %16, %11
  %18 = load i8*, i8** %7, align 8, !dbg !236
  %19 = icmp ne i8* %18, null, !dbg !236
  br i1 %19, label %20, label %24, !dbg !238

; <label>:20:                                     ; preds = %17
  %21 = load i8*, i8** %3, align 8, !dbg !239
  %22 = load i8*, i8** %4, align 8, !dbg !241
  %23 = load i8*, i8** %7, align 8, !dbg !242
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %21, i8* %22, i8* %23), !dbg !243
  br label %27, !dbg !244

; <label>:24:                                     ; preds = %17
  %25 = load i8*, i8** %3, align 8, !dbg !245
  %26 = load i8*, i8** %4, align 8, !dbg !247
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %25, i8* %26), !dbg !248
  br label %27

; <label>:27:                                     ; preds = %24, %20
  %28 = load %struct._GKeyFile*, %struct._GKeyFile** %5, align 8, !dbg !249
  call void @g_key_file_free(%struct._GKeyFile* %28), !dbg !250
  %29 = load i8*, i8** %7, align 8, !dbg !251
  call void @g_free(i8* %29), !dbg !252
  %30 = load i32, i32* %6, align 4, !dbg !253
  ret i32 %30, !dbg !254
}

; Function Attrs: nounwind uwtable
define internal i32 @ConfigRemove(i8*, i8*) #0 !dbg !255 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GKeyFile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GError*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !256, metadata !27), !dbg !257
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !258, metadata !27), !dbg !259
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %6, metadata !260, metadata !27), !dbg !261
  store %struct._GKeyFile* null, %struct._GKeyFile** %6, align 8, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %7, metadata !262, metadata !27), !dbg !263
  store i32 0, i32* %7, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata %struct._GError** %8, metadata !264, metadata !27), !dbg !265
  store %struct._GError* null, %struct._GError** %8, align 8, !dbg !265
  %9 = call i32 @VMTools_LoadConfig(i8* null, i32 3, %struct._GKeyFile** %6, i64* null), !dbg !266
  %10 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !267
  %11 = icmp ne %struct._GKeyFile* %10, null, !dbg !267
  br i1 %11, label %12, label %17, !dbg !269

; <label>:12:                                     ; preds = %2
  %13 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !270
  %14 = load i8*, i8** %4, align 8, !dbg !272
  %15 = load i8*, i8** %5, align 8, !dbg !273
  %16 = call i32 @g_key_file_remove_key(%struct._GKeyFile* %13, i8* %14, i8* %15, %struct._GError** null), !dbg !274
  br label %18, !dbg !275

; <label>:17:                                     ; preds = %2
  store i32 69, i32* %3, align 4, !dbg !276
  br label %36, !dbg !276

; <label>:18:                                     ; preds = %12
  %19 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !278
  %20 = call i32 @VMTools_WriteConfig(i8* null, %struct._GKeyFile* %19, %struct._GError** %8), !dbg !280
  %21 = icmp ne i32 %20, 0, !dbg !280
  br i1 %21, label %33, label %22, !dbg !281

; <label>:22:                                     ; preds = %18
  %23 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0)), !dbg !282
  %24 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !284
  %25 = icmp ne %struct._GError* %24, null, !dbg !284
  br i1 %25, label %26, label %30, !dbg !284

; <label>:26:                                     ; preds = %22
  %27 = load %struct._GError*, %struct._GError** %8, align 8, !dbg !285
  %28 = getelementptr inbounds %struct._GError, %struct._GError* %27, i32 0, i32 2, !dbg !287
  %29 = load i8*, i8** %28, align 8, !dbg !287
  br label %31, !dbg !288

; <label>:30:                                     ; preds = %22
  br label %31, !dbg !289

; <label>:31:                                     ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), %30 ], !dbg !291
  call void (i8*, ...) @ToolsCmd_PrintErr(i8* %23, i8* %32), !dbg !293
  call void @g_clear_error(%struct._GError** %8), !dbg !294
  store i32 75, i32* %7, align 4, !dbg !295
  br label %33, !dbg !296

; <label>:33:                                     ; preds = %31, %18
  %34 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !297
  call void @g_key_file_free(%struct._GKeyFile* %34), !dbg !298
  %35 = load i32, i32* %7, align 4, !dbg !299
  store i32 %35, i32* %3, align 4, !dbg !300
  br label %36, !dbg !300

; <label>:36:                                     ; preds = %33, %17
  %37 = load i32, i32* %3, align 4, !dbg !301
  ret i32 %37, !dbg !301
}

declare void @ToolsCmd_UnknownEntityError(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @Config_Help(i8*, i8*) #0 !dbg !302 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !305, metadata !27), !dbg !306
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !307, metadata !27), !dbg !308
  %5 = call i8* @VMTools_GetString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([392 x i8], [392 x i8]* @.str.9, i32 0, i32 0)), !dbg !309
  %6 = load i8*, i8** %4, align 8, !dbg !310
  %7 = load i8*, i8** %3, align 8, !dbg !311
  %8 = load i8*, i8** %4, align 8, !dbg !312
  call void (i8*, ...) @g_print(i8* %5, i8* %6, i8* %7, i8* %8), !dbg !313
  ret void, !dbg !315
}

declare void @g_print(i8*, ...) #2

declare i32 @VMTools_LoadConfig(i8*, i32, %struct._GKeyFile**, i64*) #2

declare %struct._GKeyFile* @g_key_file_new() #2

declare void @g_key_file_set_string(%struct._GKeyFile*, i8*, i8*, i8*) #2

declare i32 @VMTools_WriteConfig(i8*, %struct._GKeyFile*, %struct._GError**) #2

declare void @ToolsCmd_PrintErr(i8*, ...) #2

declare void @g_clear_error(%struct._GError**) #2

declare void @g_key_file_free(%struct._GKeyFile*) #2

declare noalias i8* @g_key_file_get_string(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

declare void @g_free(i8*) #2

declare i32 @g_key_file_remove_key(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "vmware_toolbox_cmd-toolboxcmd-config.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1631")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 50, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1631")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "G_KEY_FILE_NONE", value: 0)
!7 = !DIEnumerator(name: "G_KEY_FILE_KEEP_COMMENTS", value: 1)
!8 = !DIEnumerator(name: "G_KEY_FILE_KEEP_TRANSLATIONS", value: 2)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "Config_Command", scope: !15, file: !15, line: 212, type: !16, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!15 = !DIFile(filename: "toolboxcmd-config.c", directory: "/home/lichi/Desktop/open-vm-tools/line1631")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !18, !22}
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !23, line: 50, baseType: !24)
!23 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1631")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !23, line: 49, baseType: !18)
!25 = !{}
!26 = !DILocalVariable(name: "argv", arg: 1, scope: !14, file: !15, line: 212, type: !19)
!27 = !DIExpression()
!28 = !DILocation(line: 212, column: 23, scope: !14)
!29 = !DILocalVariable(name: "argc", arg: 2, scope: !14, file: !15, line: 213, type: !18)
!30 = !DILocation(line: 213, column: 20, scope: !14)
!31 = !DILocalVariable(name: "quiet", arg: 3, scope: !14, file: !15, line: 214, type: !22)
!32 = !DILocation(line: 214, column: 25, scope: !14)
!33 = !DILocalVariable(name: "op", scope: !14, file: !15, line: 216, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!36 = !DILocation(line: 216, column: 16, scope: !14)
!37 = !DILocalVariable(name: "section", scope: !14, file: !15, line: 217, type: !34)
!38 = !DILocation(line: 217, column: 16, scope: !14)
!39 = !DILocalVariable(name: "key", scope: !14, file: !15, line: 218, type: !34)
!40 = !DILocation(line: 218, column: 16, scope: !14)
!41 = !DILocation(line: 220, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !14, file: !15, line: 220, column: 8)
!43 = !DILocation(line: 220, column: 18, scope: !42)
!44 = !DILocation(line: 220, column: 15, scope: !42)
!45 = !DILocation(line: 220, column: 8, scope: !14)
!46 = !DILocation(line: 221, column: 35, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !15, line: 220, column: 24)
!48 = !DILocation(line: 222, column: 35, scope: !47)
!49 = !DILocation(line: 221, column: 7, scope: !47)
!50 = !DILocation(line: 223, column: 7, scope: !47)
!51 = !DILocation(line: 226, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !14, file: !15, line: 226, column: 8)
!53 = !DILocation(line: 226, column: 16, scope: !52)
!54 = !DILocation(line: 226, column: 24, scope: !52)
!55 = !DILocation(line: 226, column: 21, scope: !52)
!56 = !DILocation(line: 226, column: 8, scope: !14)
!57 = !DILocation(line: 227, column: 35, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !15, line: 226, column: 30)
!59 = !DILocation(line: 228, column: 35, scope: !58)
!60 = !DILocation(line: 227, column: 7, scope: !58)
!61 = !DILocation(line: 229, column: 7, scope: !58)
!62 = !DILocation(line: 232, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !14, file: !15, line: 232, column: 8)
!64 = !DILocation(line: 232, column: 16, scope: !63)
!65 = !DILocation(line: 232, column: 24, scope: !63)
!66 = !DILocation(line: 232, column: 21, scope: !63)
!67 = !DILocation(line: 232, column: 8, scope: !14)
!68 = !DILocation(line: 233, column: 35, scope: !69)
!69 = distinct !DILexicalBlock(scope: !63, file: !15, line: 232, column: 30)
!70 = !DILocation(line: 234, column: 35, scope: !69)
!71 = !DILocation(line: 233, column: 7, scope: !69)
!72 = !DILocation(line: 235, column: 7, scope: !69)
!73 = !DILocation(line: 238, column: 14, scope: !14)
!74 = !DILocation(line: 238, column: 9, scope: !14)
!75 = !DILocation(line: 238, column: 7, scope: !14)
!76 = !DILocation(line: 239, column: 19, scope: !14)
!77 = !DILocation(line: 239, column: 26, scope: !14)
!78 = !DILocation(line: 239, column: 14, scope: !14)
!79 = !DILocation(line: 239, column: 12, scope: !14)
!80 = !DILocation(line: 240, column: 15, scope: !14)
!81 = !DILocation(line: 240, column: 22, scope: !14)
!82 = !DILocation(line: 240, column: 10, scope: !14)
!83 = !DILocation(line: 240, column: 8, scope: !14)
!84 = !DILocation(line: 242, column: 15, scope: !85)
!85 = distinct !DILexicalBlock(scope: !14, file: !15, line: 242, column: 8)
!86 = !DILocation(line: 242, column: 8, scope: !85)
!87 = !DILocation(line: 242, column: 26, scope: !85)
!88 = !DILocation(line: 242, column: 8, scope: !14)
!89 = !DILocalVariable(name: "value", scope: !90, file: !15, line: 243, type: !34)
!90 = distinct !DILexicalBlock(scope: !85, file: !15, line: 242, column: 32)
!91 = !DILocation(line: 243, column: 19, scope: !90)
!92 = !DILocation(line: 245, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !15, line: 245, column: 11)
!94 = !DILocation(line: 245, column: 19, scope: !93)
!95 = !DILocation(line: 245, column: 27, scope: !93)
!96 = !DILocation(line: 245, column: 24, scope: !93)
!97 = !DILocation(line: 245, column: 11, scope: !90)
!98 = !DILocation(line: 246, column: 38, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !15, line: 245, column: 33)
!100 = !DILocation(line: 247, column: 38, scope: !99)
!101 = !DILocation(line: 246, column: 10, scope: !99)
!102 = !DILocation(line: 248, column: 10, scope: !99)
!103 = !DILocation(line: 250, column: 20, scope: !90)
!104 = !DILocation(line: 250, column: 27, scope: !90)
!105 = !DILocation(line: 250, column: 15, scope: !90)
!106 = !DILocation(line: 250, column: 13, scope: !90)
!107 = !DILocation(line: 252, column: 24, scope: !90)
!108 = !DILocation(line: 252, column: 33, scope: !90)
!109 = !DILocation(line: 252, column: 38, scope: !90)
!110 = !DILocation(line: 252, column: 14, scope: !90)
!111 = !DILocation(line: 252, column: 7, scope: !90)
!112 = !DILocation(line: 253, column: 22, scope: !113)
!113 = distinct !DILexicalBlock(scope: !85, file: !15, line: 253, column: 15)
!114 = !DILocation(line: 253, column: 15, scope: !113)
!115 = !DILocation(line: 253, column: 33, scope: !113)
!116 = !DILocation(line: 253, column: 15, scope: !85)
!117 = !DILocation(line: 254, column: 24, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !15, line: 253, column: 39)
!119 = !DILocation(line: 254, column: 33, scope: !118)
!120 = !DILocation(line: 254, column: 14, scope: !118)
!121 = !DILocation(line: 254, column: 7, scope: !118)
!122 = !DILocation(line: 255, column: 22, scope: !123)
!123 = distinct !DILexicalBlock(scope: !113, file: !15, line: 255, column: 15)
!124 = !DILocation(line: 255, column: 15, scope: !123)
!125 = !DILocation(line: 255, column: 36, scope: !123)
!126 = !DILocation(line: 255, column: 15, scope: !113)
!127 = !DILocation(line: 256, column: 27, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !15, line: 255, column: 42)
!129 = !DILocation(line: 256, column: 36, scope: !128)
!130 = !DILocation(line: 256, column: 14, scope: !128)
!131 = !DILocation(line: 256, column: 7, scope: !128)
!132 = !DILocation(line: 258, column: 35, scope: !133)
!133 = distinct !DILexicalBlock(scope: !123, file: !15, line: 257, column: 11)
!134 = !DILocation(line: 259, column: 35, scope: !133)
!135 = !DILocation(line: 260, column: 40, scope: !133)
!136 = !DILocation(line: 260, column: 35, scope: !133)
!137 = !DILocation(line: 258, column: 7, scope: !133)
!138 = !DILocation(line: 261, column: 7, scope: !133)
!139 = !DILocation(line: 263, column: 1, scope: !14)
!140 = distinct !DISubprogram(name: "ConfigSet", scope: !15, file: !15, line: 55, type: !141, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!141 = !DISubroutineType(types: !142)
!142 = !{!18, !34, !34, !34}
!143 = !DILocalVariable(name: "section", arg: 1, scope: !140, file: !15, line: 55, type: !34)
!144 = !DILocation(line: 55, column: 23, scope: !140)
!145 = !DILocalVariable(name: "key", arg: 2, scope: !140, file: !15, line: 56, type: !34)
!146 = !DILocation(line: 56, column: 23, scope: !140)
!147 = !DILocalVariable(name: "value", arg: 3, scope: !140, file: !15, line: 57, type: !34)
!148 = !DILocation(line: 57, column: 23, scope: !140)
!149 = !DILocalVariable(name: "confDict", scope: !140, file: !15, line: 59, type: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !4, line: 48, baseType: !152)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !4, line: 48, flags: DIFlagFwdDecl)
!153 = !DILocation(line: 59, column: 14, scope: !140)
!154 = !DILocalVariable(name: "err", scope: !140, file: !15, line: 60, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !157, line: 42, baseType: !158)
!157 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1631")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !157, line: 44, size: 128, align: 64, elements: !159)
!159 = !{!160, !166, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !158, file: !157, line: 46, baseType: !161, size: 32, align: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !162, line: 36, baseType: !163)
!162 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1631")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !164, line: 45, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1631")
!165 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !158, file: !157, line: 47, baseType: !24, size: 32, align: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !158, file: !157, line: 48, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !23, line: 46, baseType: !21)
!170 = !DILocation(line: 60, column: 12, scope: !140)
!171 = !DILocalVariable(name: "ret", scope: !140, file: !15, line: 61, type: !18)
!172 = !DILocation(line: 61, column: 8, scope: !140)
!173 = !DILocation(line: 63, column: 4, scope: !140)
!174 = !DILocation(line: 68, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !140, file: !15, line: 68, column: 8)
!176 = !DILocation(line: 68, column: 17, scope: !175)
!177 = !DILocation(line: 68, column: 8, scope: !140)
!178 = !DILocation(line: 69, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !15, line: 68, column: 25)
!180 = !DILocation(line: 69, column: 16, scope: !179)
!181 = !DILocation(line: 70, column: 4, scope: !179)
!182 = !DILocation(line: 72, column: 26, scope: !140)
!183 = !DILocation(line: 72, column: 36, scope: !140)
!184 = !DILocation(line: 73, column: 26, scope: !140)
!185 = !DILocation(line: 73, column: 31, scope: !140)
!186 = !DILocation(line: 72, column: 4, scope: !140)
!187 = !DILocation(line: 75, column: 34, scope: !188)
!188 = distinct !DILexicalBlock(scope: !140, file: !15, line: 75, column: 8)
!189 = !DILocation(line: 75, column: 9, scope: !188)
!190 = !DILocation(line: 75, column: 8, scope: !140)
!191 = !DILocation(line: 76, column: 25, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !15, line: 75, column: 51)
!193 = !DILocation(line: 77, column: 25, scope: !192)
!194 = !DILocation(line: 77, column: 31, scope: !195)
!195 = !DILexicalBlockFile(scope: !192, file: !15, discriminator: 1)
!196 = !DILocation(line: 77, column: 36, scope: !195)
!197 = !DILocation(line: 77, column: 25, scope: !195)
!198 = !DILocation(line: 77, column: 25, scope: !199)
!199 = !DILexicalBlockFile(scope: !192, file: !15, discriminator: 2)
!200 = !DILocation(line: 77, column: 25, scope: !201)
!201 = !DILexicalBlockFile(scope: !192, file: !15, discriminator: 3)
!202 = !DILocation(line: 76, column: 7, scope: !195)
!203 = !DILocation(line: 78, column: 7, scope: !192)
!204 = !DILocation(line: 79, column: 11, scope: !192)
!205 = !DILocation(line: 80, column: 4, scope: !192)
!206 = !DILocation(line: 82, column: 20, scope: !140)
!207 = !DILocation(line: 82, column: 4, scope: !140)
!208 = !DILocation(line: 84, column: 11, scope: !140)
!209 = !DILocation(line: 84, column: 4, scope: !140)
!210 = distinct !DISubprogram(name: "ConfigGet", scope: !15, file: !15, line: 106, type: !211, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!211 = !DISubroutineType(types: !212)
!212 = !{!18, !34, !34}
!213 = !DILocalVariable(name: "section", arg: 1, scope: !210, file: !15, line: 106, type: !34)
!214 = !DILocation(line: 106, column: 23, scope: !210)
!215 = !DILocalVariable(name: "key", arg: 2, scope: !210, file: !15, line: 107, type: !34)
!216 = !DILocation(line: 107, column: 23, scope: !210)
!217 = !DILocalVariable(name: "confDict", scope: !210, file: !15, line: 109, type: !150)
!218 = !DILocation(line: 109, column: 14, scope: !210)
!219 = !DILocalVariable(name: "ret", scope: !210, file: !15, line: 110, type: !18)
!220 = !DILocation(line: 110, column: 8, scope: !210)
!221 = !DILocalVariable(name: "value", scope: !210, file: !15, line: 111, type: !168)
!222 = !DILocation(line: 111, column: 11, scope: !210)
!223 = !DILocation(line: 113, column: 4, scope: !210)
!224 = !DILocation(line: 118, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !210, file: !15, line: 118, column: 8)
!226 = !DILocation(line: 118, column: 8, scope: !210)
!227 = !DILocation(line: 119, column: 37, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !15, line: 118, column: 18)
!229 = !DILocation(line: 119, column: 47, scope: !228)
!230 = !DILocation(line: 120, column: 37, scope: !228)
!231 = !DILocation(line: 119, column: 15, scope: !228)
!232 = !DILocation(line: 119, column: 13, scope: !228)
!233 = !DILocation(line: 121, column: 4, scope: !228)
!234 = !DILocation(line: 122, column: 11, scope: !235)
!235 = distinct !DILexicalBlock(scope: !225, file: !15, line: 121, column: 11)
!236 = !DILocation(line: 125, column: 8, scope: !237)
!237 = distinct !DILexicalBlock(scope: !210, file: !15, line: 125, column: 8)
!238 = !DILocation(line: 125, column: 8, scope: !210)
!239 = !DILocation(line: 126, column: 33, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !15, line: 125, column: 15)
!241 = !DILocation(line: 126, column: 42, scope: !240)
!242 = !DILocation(line: 126, column: 47, scope: !240)
!243 = !DILocation(line: 126, column: 7, scope: !240)
!244 = !DILocation(line: 127, column: 4, scope: !240)
!245 = !DILocation(line: 128, column: 34, scope: !246)
!246 = distinct !DILexicalBlock(scope: !237, file: !15, line: 127, column: 11)
!247 = !DILocation(line: 128, column: 43, scope: !246)
!248 = !DILocation(line: 128, column: 7, scope: !246)
!249 = !DILocation(line: 131, column: 20, scope: !210)
!250 = !DILocation(line: 131, column: 4, scope: !210)
!251 = !DILocation(line: 132, column: 11, scope: !210)
!252 = !DILocation(line: 132, column: 4, scope: !210)
!253 = !DILocation(line: 134, column: 11, scope: !210)
!254 = !DILocation(line: 134, column: 4, scope: !210)
!255 = distinct !DISubprogram(name: "ConfigRemove", scope: !15, file: !15, line: 156, type: !211, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!256 = !DILocalVariable(name: "section", arg: 1, scope: !255, file: !15, line: 156, type: !34)
!257 = !DILocation(line: 156, column: 26, scope: !255)
!258 = !DILocalVariable(name: "key", arg: 2, scope: !255, file: !15, line: 157, type: !34)
!259 = !DILocation(line: 157, column: 26, scope: !255)
!260 = !DILocalVariable(name: "confDict", scope: !255, file: !15, line: 159, type: !150)
!261 = !DILocation(line: 159, column: 14, scope: !255)
!262 = !DILocalVariable(name: "ret", scope: !255, file: !15, line: 160, type: !18)
!263 = !DILocation(line: 160, column: 8, scope: !255)
!264 = !DILocalVariable(name: "err", scope: !255, file: !15, line: 161, type: !155)
!265 = !DILocation(line: 161, column: 12, scope: !255)
!266 = !DILocation(line: 163, column: 4, scope: !255)
!267 = !DILocation(line: 169, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !255, file: !15, line: 169, column: 8)
!269 = !DILocation(line: 169, column: 8, scope: !255)
!270 = !DILocation(line: 175, column: 36, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !15, line: 169, column: 18)
!272 = !DILocation(line: 175, column: 46, scope: !271)
!273 = !DILocation(line: 176, column: 36, scope: !271)
!274 = !DILocation(line: 175, column: 14, scope: !271)
!275 = !DILocation(line: 177, column: 4, scope: !271)
!276 = !DILocation(line: 178, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !268, file: !15, line: 177, column: 11)
!278 = !DILocation(line: 181, column: 34, scope: !279)
!279 = distinct !DILexicalBlock(scope: !255, file: !15, line: 181, column: 8)
!280 = !DILocation(line: 181, column: 9, scope: !279)
!281 = !DILocation(line: 181, column: 8, scope: !255)
!282 = !DILocation(line: 182, column: 25, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !15, line: 181, column: 51)
!284 = !DILocation(line: 183, column: 25, scope: !283)
!285 = !DILocation(line: 183, column: 31, scope: !286)
!286 = !DILexicalBlockFile(scope: !283, file: !15, discriminator: 1)
!287 = !DILocation(line: 183, column: 36, scope: !286)
!288 = !DILocation(line: 183, column: 25, scope: !286)
!289 = !DILocation(line: 183, column: 25, scope: !290)
!290 = !DILexicalBlockFile(scope: !283, file: !15, discriminator: 2)
!291 = !DILocation(line: 183, column: 25, scope: !292)
!292 = !DILexicalBlockFile(scope: !283, file: !15, discriminator: 3)
!293 = !DILocation(line: 182, column: 7, scope: !286)
!294 = !DILocation(line: 184, column: 7, scope: !283)
!295 = !DILocation(line: 185, column: 11, scope: !283)
!296 = !DILocation(line: 186, column: 4, scope: !283)
!297 = !DILocation(line: 188, column: 20, scope: !255)
!298 = !DILocation(line: 188, column: 4, scope: !255)
!299 = !DILocation(line: 190, column: 11, scope: !255)
!300 = !DILocation(line: 190, column: 4, scope: !255)
!301 = !DILocation(line: 191, column: 1, scope: !255)
!302 = distinct !DISubprogram(name: "Config_Help", scope: !15, file: !15, line: 283, type: !303, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !25)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !34, !34}
!305 = !DILocalVariable(name: "progName", arg: 1, scope: !302, file: !15, line: 283, type: !34)
!306 = !DILocation(line: 283, column: 25, scope: !302)
!307 = !DILocalVariable(name: "cmd", arg: 2, scope: !302, file: !15, line: 284, type: !34)
!308 = !DILocation(line: 284, column: 25, scope: !302)
!309 = !DILocation(line: 286, column: 12, scope: !302)
!310 = !DILocation(line: 296, column: 12, scope: !302)
!311 = !DILocation(line: 296, column: 17, scope: !302)
!312 = !DILocation(line: 296, column: 27, scope: !302)
!313 = !DILocation(line: 286, column: 4, scope: !314)
!314 = !DILexicalBlockFile(scope: !302, file: !15, discriminator: 1)
!315 = !DILocation(line: 297, column: 1, scope: !302)
