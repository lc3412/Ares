; ModuleID = './vmware_namespace_cmd-namespacetool.o.i'
source_filename = "./vmware_namespace_cmd-namespacetool.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GOptionContext = type opaque
%struct._GOptionGroup = type opaque
%struct.NamespaceOptionsState = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct.DynBuf = type { i8*, i64, i64 }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Verbose logging mode\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Key value to return\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"<key-name>\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Key name to use\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Value to set\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"<value>\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"oldValue\00", align 1
@.str.11 = private unnamed_addr constant [89 x i8] c"Value must match with current key value in the namespace for update operation to proceed\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"<old-value>\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"fromFile\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Value to use from file path\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"<file-path>\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Value to use from standard input\00", align 1
@.str.18 = private unnamed_addr constant [89 x i8] c"Value must match with current key value in the namespace for delete operation to proceed\00", align 1
@gAppName = internal global i8* null, align 8
@.str.19 = private unnamed_addr constant [54 x i8] c"[get-value | set-key | delete-key] [<namespace-name>]\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"namespace commands\00", align 1
@.str.21 = private unnamed_addr constant [282 x i8] c"Example:\0A  %s set-key <namespace-name> -k <key-name> -v <value>\0A  %s set-key <namespace-name> -k <key-name> -f <file-path>\0A  echo \22<value>\22 | %s set-key <namespace-name> -k <key-name> -s\0A  %s delete-key  <namespace-name> -k <key-name>\0A  %s get-value <namespace-name> -k <key-name>\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%s command %s:\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"get-value\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Show help for command \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"%s command %s: - Create or update key value pair\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"set-key\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"%s command %s:- Delete key value pair\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"delete-key\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Namespace command must be specified\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Namespace name must be specified\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Key name must be specified\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"Key value must be specified with either -f or -v or -s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Invalid command \22%s\22\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Could not construct request buffer\0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"%s: Key value must not be empty\0A\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"failure: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"success - result:\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [26 x i8] c"namespace-priv-get-values\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"namespace-priv-set-keys\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"%s: Read failed from stdin with status code %d. %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"%s: stdin data must not exceed %d bytes\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"%s: stdin data must not be empty\0A\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Failed while reading file\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"%s: File size must not exceed %d bytes\0A\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"%s: File must not be empty\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"Out of memory error\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"Internal command is %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !90 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GError*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._GOptionContext*, align 8
  %11 = alloca %struct._GOptionGroup*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.NamespaceOptionsState, align 8
  %14 = alloca [2 x %struct._GOptionEntry], align 16
  %15 = alloca [2 x %struct._GOptionEntry], align 16
  %16 = alloca [6 x %struct._GOptionEntry], align 16
  %17 = alloca [3 x %struct._GOptionEntry], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !95, metadata !96), !dbg !97
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !98, metadata !96), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %6, metadata !100, metadata !96), !dbg !101
  store i32 -1, i32* %6, align 4, !dbg !101
  call void @llvm.dbg.declare(metadata %struct._GError** %7, metadata !102, metadata !96), !dbg !116
  store %struct._GError* null, %struct._GError** %7, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i8** %8, metadata !117, metadata !96), !dbg !118
  call void @llvm.dbg.declare(metadata i8** %9, metadata !119, metadata !96), !dbg !120
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %10, metadata !121, metadata !96), !dbg !125
  call void @llvm.dbg.declare(metadata %struct._GOptionGroup** %11, metadata !126, metadata !96), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %12, metadata !131, metadata !96), !dbg !132
  call void @llvm.dbg.declare(metadata %struct.NamespaceOptionsState* %13, metadata !133, metadata !96), !dbg !134
  %18 = bitcast %struct.NamespaceOptionsState* %13 to i8*, !dbg !134
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 56, i32 8, i1 false), !dbg !134
  %19 = bitcast i8* %18 to %struct.NamespaceOptionsState*, !dbg !134
  %20 = getelementptr %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %19, i32 0, i32 4, !dbg !134
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %20, !dbg !134
  call void @llvm.dbg.declare(metadata [2 x %struct._GOptionEntry]* %14, metadata !135, metadata !96), !dbg !153
  %21 = getelementptr inbounds [2 x %struct._GOptionEntry], [2 x %struct._GOptionEntry]* %14, i64 0, i64 0, !dbg !154
  %22 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i32 0, i32 0, !dbg !155
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 16, !dbg !155
  %23 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i32 0, i32 1, !dbg !155
  store i8 86, i8* %23, align 8, !dbg !155
  %24 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i32 0, i32 2, !dbg !155
  store i32 0, i32* %24, align 4, !dbg !155
  %25 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i32 0, i32 3, !dbg !155
  store i32 0, i32* %25, align 16, !dbg !155
  %26 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i32 0, i32 4, !dbg !155
  %27 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 6, !dbg !156
  %28 = bitcast i32* %27 to i8*, !dbg !157
  store i8* %28, i8** %26, align 8, !dbg !155
  %29 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i32 0, i32 5, !dbg !155
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8** %29, align 16, !dbg !155
  %30 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i32 0, i32 6, !dbg !155
  store i8* null, i8** %30, align 8, !dbg !155
  %31 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %21, i64 1, !dbg !154
  %32 = bitcast %struct._GOptionEntry* %31 to i8*, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 48, i32 16, i1 false), !dbg !154
  call void @llvm.dbg.declare(metadata [2 x %struct._GOptionEntry]* %15, metadata !158, metadata !96), !dbg !159
  %33 = getelementptr inbounds [2 x %struct._GOptionEntry], [2 x %struct._GOptionEntry]* %15, i64 0, i64 0, !dbg !160
  %34 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i32 0, i32 0, !dbg !161
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %34, align 16, !dbg !161
  %35 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i32 0, i32 1, !dbg !161
  store i8 107, i8* %35, align 8, !dbg !161
  %36 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i32 0, i32 2, !dbg !161
  store i32 64, i32* %36, align 4, !dbg !161
  %37 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i32 0, i32 3, !dbg !161
  store i32 1, i32* %37, align 16, !dbg !161
  %38 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i32 0, i32 4, !dbg !161
  %39 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 2, !dbg !162
  %40 = bitcast i8** %39 to i8*, !dbg !163
  store i8* %40, i8** %38, align 8, !dbg !161
  %41 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i32 0, i32 5, !dbg !161
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8** %41, align 16, !dbg !161
  %42 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i32 0, i32 6, !dbg !161
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %42, align 8, !dbg !161
  %43 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %33, i64 1, !dbg !160
  %44 = bitcast %struct._GOptionEntry* %43 to i8*, !dbg !160
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 48, i32 16, i1 false), !dbg !160
  call void @llvm.dbg.declare(metadata [6 x %struct._GOptionEntry]* %16, metadata !164, metadata !96), !dbg !168
  %45 = getelementptr inbounds [6 x %struct._GOptionEntry], [6 x %struct._GOptionEntry]* %16, i64 0, i64 0, !dbg !169
  %46 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i32 0, i32 0, !dbg !170
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %46, align 16, !dbg !170
  %47 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i32 0, i32 1, !dbg !170
  store i8 107, i8* %47, align 8, !dbg !170
  %48 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i32 0, i32 2, !dbg !170
  store i32 64, i32* %48, align 4, !dbg !170
  %49 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i32 0, i32 3, !dbg !170
  store i32 1, i32* %49, align 16, !dbg !170
  %50 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i32 0, i32 4, !dbg !170
  %51 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 2, !dbg !171
  %52 = bitcast i8** %51 to i8*, !dbg !172
  store i8* %52, i8** %50, align 8, !dbg !170
  %53 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i32 0, i32 5, !dbg !170
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8** %53, align 16, !dbg !170
  %54 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i32 0, i32 6, !dbg !170
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %54, align 8, !dbg !170
  %55 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %45, i64 1, !dbg !169
  %56 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 0, !dbg !173
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8** %56, align 16, !dbg !173
  %57 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 1, !dbg !173
  store i8 118, i8* %57, align 8, !dbg !173
  %58 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 2, !dbg !173
  store i32 0, i32* %58, align 4, !dbg !173
  %59 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 3, !dbg !173
  store i32 1, i32* %59, align 16, !dbg !173
  %60 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 4, !dbg !173
  %61 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 3, !dbg !174
  %62 = bitcast i8** %61 to i8*, !dbg !175
  store i8* %62, i8** %60, align 8, !dbg !173
  %63 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 5, !dbg !173
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8** %63, align 16, !dbg !173
  %64 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i32 0, i32 6, !dbg !173
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8** %64, align 8, !dbg !173
  %65 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %55, i64 1, !dbg !169
  %66 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 0, !dbg !176
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8** %66, align 16, !dbg !176
  %67 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 1, !dbg !176
  store i8 111, i8* %67, align 8, !dbg !176
  %68 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 2, !dbg !176
  store i32 0, i32* %68, align 4, !dbg !176
  %69 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 3, !dbg !176
  store i32 1, i32* %69, align 16, !dbg !176
  %70 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 4, !dbg !176
  %71 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 4, !dbg !177
  %72 = bitcast i8** %71 to i8*, !dbg !178
  store i8* %72, i8** %70, align 8, !dbg !176
  %73 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 5, !dbg !176
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.11, i32 0, i32 0), i8** %73, align 16, !dbg !176
  %74 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i32 0, i32 6, !dbg !176
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8** %74, align 8, !dbg !176
  %75 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %65, i64 1, !dbg !169
  %76 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i32 0, i32 0, !dbg !179
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8** %76, align 16, !dbg !179
  %77 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i32 0, i32 1, !dbg !179
  store i8 102, i8* %77, align 8, !dbg !179
  %78 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i32 0, i32 2, !dbg !179
  store i32 0, i32* %78, align 4, !dbg !179
  %79 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i32 0, i32 3, !dbg !179
  store i32 1, i32* %79, align 16, !dbg !179
  %80 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i32 0, i32 4, !dbg !179
  %81 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 5, !dbg !180
  %82 = bitcast i8** %81 to i8*, !dbg !181
  store i8* %82, i8** %80, align 8, !dbg !179
  %83 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i32 0, i32 5, !dbg !179
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i8** %83, align 16, !dbg !179
  %84 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i32 0, i32 6, !dbg !179
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8** %84, align 8, !dbg !179
  %85 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %75, i64 1, !dbg !169
  %86 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i32 0, i32 0, !dbg !182
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8** %86, align 16, !dbg !182
  %87 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i32 0, i32 1, !dbg !182
  store i8 115, i8* %87, align 8, !dbg !182
  %88 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i32 0, i32 2, !dbg !182
  store i32 0, i32* %88, align 4, !dbg !182
  %89 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i32 0, i32 3, !dbg !182
  store i32 0, i32* %89, align 16, !dbg !182
  %90 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i32 0, i32 4, !dbg !182
  %91 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 7, !dbg !183
  %92 = bitcast i32* %91 to i8*, !dbg !184
  store i8* %92, i8** %90, align 8, !dbg !182
  %93 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i32 0, i32 5, !dbg !182
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i8** %93, align 16, !dbg !182
  %94 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i32 0, i32 6, !dbg !182
  store i8* null, i8** %94, align 8, !dbg !182
  %95 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %85, i64 1, !dbg !169
  %96 = bitcast %struct._GOptionEntry* %95 to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* %96, i8 0, i64 48, i32 16, i1 false), !dbg !169
  call void @llvm.dbg.declare(metadata [3 x %struct._GOptionEntry]* %17, metadata !185, metadata !96), !dbg !189
  %97 = getelementptr inbounds [3 x %struct._GOptionEntry], [3 x %struct._GOptionEntry]* %17, i64 0, i64 0, !dbg !190
  %98 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i32 0, i32 0, !dbg !191
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %98, align 16, !dbg !191
  %99 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i32 0, i32 1, !dbg !191
  store i8 107, i8* %99, align 8, !dbg !191
  %100 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i32 0, i32 2, !dbg !191
  store i32 64, i32* %100, align 4, !dbg !191
  %101 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i32 0, i32 3, !dbg !191
  store i32 1, i32* %101, align 16, !dbg !191
  %102 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i32 0, i32 4, !dbg !191
  %103 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 2, !dbg !192
  %104 = bitcast i8** %103 to i8*, !dbg !193
  store i8* %104, i8** %102, align 8, !dbg !191
  %105 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i32 0, i32 5, !dbg !191
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8** %105, align 16, !dbg !191
  %106 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i32 0, i32 6, !dbg !191
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %106, align 8, !dbg !191
  %107 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %97, i64 1, !dbg !190
  %108 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i32 0, i32 0, !dbg !194
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8** %108, align 16, !dbg !194
  %109 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i32 0, i32 1, !dbg !194
  store i8 111, i8* %109, align 8, !dbg !194
  %110 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i32 0, i32 2, !dbg !194
  store i32 64, i32* %110, align 4, !dbg !194
  %111 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i32 0, i32 3, !dbg !194
  store i32 1, i32* %111, align 16, !dbg !194
  %112 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i32 0, i32 4, !dbg !194
  %113 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 4, !dbg !195
  %114 = bitcast i8** %113 to i8*, !dbg !196
  store i8* %114, i8** %112, align 8, !dbg !194
  %115 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i32 0, i32 5, !dbg !194
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.18, i32 0, i32 0), i8** %115, align 16, !dbg !194
  %116 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i32 0, i32 6, !dbg !194
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8** %116, align 8, !dbg !194
  %117 = getelementptr inbounds %struct._GOptionEntry, %struct._GOptionEntry* %107, i64 1, !dbg !190
  %118 = bitcast %struct._GOptionEntry* %117 to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* %118, i8 0, i64 48, i32 16, i1 false), !dbg !190
  %119 = load i8**, i8*** %5, align 8, !dbg !197
  %120 = getelementptr inbounds i8*, i8** %119, i64 0, !dbg !197
  %121 = load i8*, i8** %120, align 8, !dbg !197
  %122 = call noalias i8* @g_path_get_basename(i8* %121), !dbg !198
  store i8* %122, i8** @gAppName, align 8, !dbg !199
  %123 = load i8*, i8** @gAppName, align 8, !dbg !200
  call void @g_set_prgname(i8* %123), !dbg !201
  %124 = call %struct._GOptionContext* @g_option_context_new(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i32 0, i32 0)), !dbg !202
  store %struct._GOptionContext* %124, %struct._GOptionContext** %10, align 8, !dbg !203
  %125 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !204
  %126 = bitcast %struct._GOptionContext* %125 to i8*, !dbg !204
  %127 = call %struct._GOptionGroup* @g_option_group_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* %126, void (i8*)* null), !dbg !205
  store %struct._GOptionGroup* %127, %struct._GOptionGroup** %11, align 8, !dbg !206
  %128 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !207
  %129 = getelementptr inbounds [2 x %struct._GOptionEntry], [2 x %struct._GOptionEntry]* %14, i32 0, i32 0, !dbg !208
  call void @g_option_group_add_entries(%struct._GOptionGroup* %128, %struct._GOptionEntry* %129), !dbg !209
  %130 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !210
  %131 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !211
  call void @g_option_context_set_main_group(%struct._GOptionContext* %130, %struct._GOptionGroup* %131), !dbg !212
  %132 = load i8*, i8** @gAppName, align 8, !dbg !213
  %133 = load i8*, i8** @gAppName, align 8, !dbg !214
  %134 = load i8*, i8** @gAppName, align 8, !dbg !215
  %135 = load i8*, i8** @gAppName, align 8, !dbg !216
  %136 = load i8*, i8** @gAppName, align 8, !dbg !217
  %137 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([282 x i8], [282 x i8]* @.str.21, i32 0, i32 0), i8* %132, i8* %133, i8* %134, i8* %135, i8* %136), !dbg !218
  store i8* %137, i8** %12, align 8, !dbg !219
  %138 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !220
  %139 = load i8*, i8** %12, align 8, !dbg !221
  call void @g_option_context_set_summary(%struct._GOptionContext* %138, i8* %139), !dbg !222
  %140 = load i32, i32* %4, align 4, !dbg !223
  %141 = icmp sgt i32 %140, 1, !dbg !225
  br i1 %141, label %142, label %148, !dbg !226

; <label>:142:                                    ; preds = %2
  %143 = load i8**, i8*** %5, align 8, !dbg !227
  %144 = getelementptr inbounds i8*, i8** %143, i64 1, !dbg !227
  %145 = load i8*, i8** %144, align 8, !dbg !227
  %146 = call noalias i8* @g_strdup(i8* %145), !dbg !229
  %147 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 0, !dbg !230
  store i8* %146, i8** %147, align 8, !dbg !231
  br label %148, !dbg !232

; <label>:148:                                    ; preds = %142, %2
  %149 = load i32, i32* %4, align 4, !dbg !233
  %150 = icmp sgt i32 %149, 2, !dbg !235
  br i1 %150, label %151, label %157, !dbg !236

; <label>:151:                                    ; preds = %148
  %152 = load i8**, i8*** %5, align 8, !dbg !237
  %153 = getelementptr inbounds i8*, i8** %152, i64 2, !dbg !237
  %154 = load i8*, i8** %153, align 8, !dbg !237
  %155 = call noalias i8* @g_strdup(i8* %154), !dbg !239
  %156 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 1, !dbg !240
  store i8* %155, i8** %156, align 8, !dbg !241
  br label %157, !dbg !242

; <label>:157:                                    ; preds = %151, %148
  %158 = load i8*, i8** @gAppName, align 8, !dbg !243
  %159 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)), !dbg !244
  store i8* %159, i8** %8, align 8, !dbg !245
  %160 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)), !dbg !246
  store i8* %160, i8** %9, align 8, !dbg !247
  %161 = load i8*, i8** %8, align 8, !dbg !248
  %162 = load i8*, i8** %9, align 8, !dbg !249
  %163 = bitcast %struct.NamespaceOptionsState* %13 to i8*, !dbg !250
  %164 = call %struct._GOptionGroup* @g_option_group_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* %161, i8* %162, i8* %163, void (i8*)* null), !dbg !251
  store %struct._GOptionGroup* %164, %struct._GOptionGroup** %11, align 8, !dbg !252
  %165 = load i8*, i8** %8, align 8, !dbg !253
  call void @g_free(i8* %165), !dbg !254
  %166 = load i8*, i8** %9, align 8, !dbg !255
  call void @g_free(i8* %166), !dbg !256
  %167 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !257
  %168 = getelementptr inbounds [2 x %struct._GOptionEntry], [2 x %struct._GOptionEntry]* %15, i32 0, i32 0, !dbg !258
  call void @g_option_group_add_entries(%struct._GOptionGroup* %167, %struct._GOptionEntry* %168), !dbg !259
  %169 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !260
  %170 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !261
  call void @g_option_context_add_group(%struct._GOptionContext* %169, %struct._GOptionGroup* %170), !dbg !262
  %171 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !263
  call void @g_option_group_set_parse_hooks(%struct._GOptionGroup* %171, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)* null, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)* @PostVerifyGetValueOptions), !dbg !264
  %172 = load i8*, i8** @gAppName, align 8, !dbg !265
  %173 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i8* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !266
  store i8* %173, i8** %8, align 8, !dbg !267
  %174 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !268
  store i8* %174, i8** %9, align 8, !dbg !269
  %175 = load i8*, i8** %8, align 8, !dbg !270
  %176 = load i8*, i8** %9, align 8, !dbg !271
  %177 = bitcast %struct.NamespaceOptionsState* %13 to i8*, !dbg !272
  %178 = call %struct._GOptionGroup* @g_option_group_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* %175, i8* %176, i8* %177, void (i8*)* null), !dbg !273
  store %struct._GOptionGroup* %178, %struct._GOptionGroup** %11, align 8, !dbg !274
  %179 = load i8*, i8** %8, align 8, !dbg !275
  call void @g_free(i8* %179), !dbg !276
  %180 = load i8*, i8** %9, align 8, !dbg !277
  call void @g_free(i8* %180), !dbg !278
  %181 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !279
  %182 = getelementptr inbounds [6 x %struct._GOptionEntry], [6 x %struct._GOptionEntry]* %16, i32 0, i32 0, !dbg !280
  call void @g_option_group_add_entries(%struct._GOptionGroup* %181, %struct._GOptionEntry* %182), !dbg !281
  %183 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !282
  %184 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !283
  call void @g_option_context_add_group(%struct._GOptionContext* %183, %struct._GOptionGroup* %184), !dbg !284
  %185 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !285
  call void @g_option_group_set_parse_hooks(%struct._GOptionGroup* %185, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)* null, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)* @PostVerifySetKeyOptions), !dbg !286
  %186 = load i8*, i8** @gAppName, align 8, !dbg !287
  %187 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i32 0, i32 0), i8* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)), !dbg !288
  store i8* %187, i8** %8, align 8, !dbg !289
  %188 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)), !dbg !290
  store i8* %188, i8** %9, align 8, !dbg !291
  %189 = load i8*, i8** %8, align 8, !dbg !292
  %190 = load i8*, i8** %9, align 8, !dbg !293
  %191 = bitcast %struct.NamespaceOptionsState* %13 to i8*, !dbg !294
  %192 = call %struct._GOptionGroup* @g_option_group_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* %189, i8* %190, i8* %191, void (i8*)* null), !dbg !295
  store %struct._GOptionGroup* %192, %struct._GOptionGroup** %11, align 8, !dbg !296
  %193 = load i8*, i8** %8, align 8, !dbg !297
  call void @g_free(i8* %193), !dbg !298
  %194 = load i8*, i8** %9, align 8, !dbg !299
  call void @g_free(i8* %194), !dbg !300
  %195 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !301
  %196 = getelementptr inbounds [3 x %struct._GOptionEntry], [3 x %struct._GOptionEntry]* %17, i32 0, i32 0, !dbg !302
  call void @g_option_group_add_entries(%struct._GOptionGroup* %195, %struct._GOptionEntry* %196), !dbg !303
  %197 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !304
  %198 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !305
  call void @g_option_context_add_group(%struct._GOptionContext* %197, %struct._GOptionGroup* %198), !dbg !306
  %199 = load %struct._GOptionGroup*, %struct._GOptionGroup** %11, align 8, !dbg !307
  call void @g_option_group_set_parse_hooks(%struct._GOptionGroup* %199, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)* null, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)* @PostVerifyDeleteKeyOptions), !dbg !308
  %200 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !309
  %201 = call i32 @g_option_context_parse(%struct._GOptionContext* %200, i32* %4, i8*** %5, %struct._GError** %7), !dbg !311
  %202 = icmp ne i32 %201, 0, !dbg !311
  br i1 %202, label %218, label %203, !dbg !312

; <label>:203:                                    ; preds = %157
  %204 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !313
  call void @PrintUsage(%struct._GOptionContext* %204), !dbg !315
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !316
  %206 = load i8*, i8** @gAppName, align 8, !dbg !317
  %207 = load %struct._GError*, %struct._GError** %7, align 8, !dbg !318
  %208 = icmp ne %struct._GError* %207, null, !dbg !319
  br i1 %208, label %209, label %213, !dbg !318

; <label>:209:                                    ; preds = %203
  %210 = load %struct._GError*, %struct._GError** %7, align 8, !dbg !320
  %211 = getelementptr inbounds %struct._GError, %struct._GError* %210, i32 0, i32 2, !dbg !322
  %212 = load i8*, i8** %211, align 8, !dbg !322
  br label %214, !dbg !323

; <label>:213:                                    ; preds = %203
  br label %214, !dbg !324

; <label>:214:                                    ; preds = %213, %209
  %215 = phi i8* [ %212, %209 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), %213 ], !dbg !326
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* %206, i8* %215), !dbg !328
  %217 = load %struct._GError*, %struct._GError** %7, align 8, !dbg !329
  call void @g_error_free(%struct._GError* %217), !dbg !330
  br label %238, !dbg !331

; <label>:218:                                    ; preds = %157
  %219 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 6, !dbg !332
  %220 = load i32, i32* %219, align 8, !dbg !332
  %221 = icmp ne i32 %220, 0, !dbg !334
  br i1 %221, label %222, label %224, !dbg !335

; <label>:222:                                    ; preds = %218
  %223 = load i8*, i8** @gAppName, align 8, !dbg !336
  call void @VMTools_ConfigLogToStdio(i8* %223), !dbg !338
  br label %224, !dbg !339

; <label>:224:                                    ; preds = %222, %218
  %225 = load i32, i32* %4, align 4, !dbg !340
  %226 = icmp sgt i32 %225, 1, !dbg !342
  br i1 %226, label %227, label %233, !dbg !343

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 0, !dbg !344
  %229 = load i8*, i8** %228, align 8, !dbg !344
  %230 = call i32 @ValidateNSCommands(i8* %229), !dbg !346
  %231 = icmp eq i32 %230, 0, !dbg !347
  br i1 %231, label %232, label %233, !dbg !348

; <label>:232:                                    ; preds = %227
  br label %238, !dbg !349

; <label>:233:                                    ; preds = %227, %224
  %234 = call signext i8 @RunNamespaceCommand(%struct.NamespaceOptionsState* %13), !dbg !351
  %235 = sext i8 %234 to i32, !dbg !351
  %236 = icmp ne i32 %235, 0, !dbg !351
  %237 = select i1 %236, i32 0, i32 1, !dbg !351
  store i32 %237, i32* %6, align 4, !dbg !352
  br label %238, !dbg !353

; <label>:238:                                    ; preds = %233, %232, %214
  %239 = load %struct._GOptionContext*, %struct._GOptionContext** %10, align 8, !dbg !354
  call void @g_option_context_free(%struct._GOptionContext* %239), !dbg !355
  %240 = load i8*, i8** %12, align 8, !dbg !356
  call void @g_free(i8* %240), !dbg !357
  %241 = load i8*, i8** @gAppName, align 8, !dbg !358
  call void @g_free(i8* %241), !dbg !359
  %242 = load i32, i32* %6, align 4, !dbg !360
  ret i32 %242, !dbg !361
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare noalias i8* @g_path_get_basename(i8*) #3

declare void @g_set_prgname(i8*) #3

declare %struct._GOptionContext* @g_option_context_new(i8*) #3

declare %struct._GOptionGroup* @g_option_group_new(i8*, i8*, i8*, i8*, void (i8*)*) #3

declare void @g_option_group_add_entries(%struct._GOptionGroup*, %struct._GOptionEntry*) #3

declare void @g_option_context_set_main_group(%struct._GOptionContext*, %struct._GOptionGroup*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @g_option_context_set_summary(%struct._GOptionContext*, i8*) #3

declare noalias i8* @g_strdup(i8*) #3

declare void @g_free(i8*) #3

declare void @g_option_context_add_group(%struct._GOptionContext*, %struct._GOptionGroup*) #3

declare void @g_option_group_set_parse_hooks(%struct._GOptionGroup*, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)*, i32 (%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @PostVerifyGetValueOptions(%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**) #0 !dbg !362 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._GOptionContext*, align 8
  %7 = alloca %struct._GOptionGroup*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GError**, align 8
  %10 = alloca %struct.NamespaceOptionsState*, align 8
  store %struct._GOptionContext* %0, %struct._GOptionContext** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %6, metadata !366, metadata !96), !dbg !367
  store %struct._GOptionGroup* %1, %struct._GOptionGroup** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionGroup** %7, metadata !368, metadata !96), !dbg !369
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !370, metadata !96), !dbg !371
  store %struct._GError** %3, %struct._GError*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %9, metadata !372, metadata !96), !dbg !373
  call void @llvm.dbg.declare(metadata %struct.NamespaceOptionsState** %10, metadata !374, metadata !96), !dbg !375
  %11 = load i8*, i8** %8, align 8, !dbg !376
  %12 = bitcast i8* %11 to %struct.NamespaceOptionsState*, !dbg !377
  store %struct.NamespaceOptionsState* %12, %struct.NamespaceOptionsState** %10, align 8, !dbg !378
  %13 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !379
  %14 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 0, !dbg !381
  %15 = load i8*, i8** %14, align 8, !dbg !381
  %16 = icmp eq i8* %15, null, !dbg !382
  br i1 %16, label %17, label %20, !dbg !383

; <label>:17:                                     ; preds = %4
  %18 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !384
  %19 = call i32 @g_option_error_quark(), !dbg !386
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 %19, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)), !dbg !387
  store i32 0, i32* %5, align 4, !dbg !389
  br label %44, !dbg !389

; <label>:20:                                     ; preds = %4
  %21 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !390
  %22 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %21, i32 0, i32 1, !dbg !392
  %23 = load i8*, i8** %22, align 8, !dbg !392
  %24 = icmp eq i8* %23, null, !dbg !393
  br i1 %24, label %25, label %28, !dbg !394

; <label>:25:                                     ; preds = %20
  %26 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !395
  %27 = call i32 @g_option_error_quark(), !dbg !397
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %26, i32 %27, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0)), !dbg !398
  store i32 0, i32* %5, align 4, !dbg !400
  br label %44, !dbg !400

; <label>:28:                                     ; preds = %20
  %29 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !401
  %30 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %29, i32 0, i32 0, !dbg !403
  %31 = load i8*, i8** %30, align 8, !dbg !403
  %32 = call i32 @g_strcmp0(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)), !dbg !404
  %33 = icmp eq i32 %32, 0, !dbg !405
  br i1 %33, label %34, label %43, !dbg !406

; <label>:34:                                     ; preds = %28
  %35 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !407
  %36 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %35, i32 0, i32 2, !dbg !410
  %37 = load i8*, i8** %36, align 8, !dbg !410
  %38 = icmp eq i8* %37, null, !dbg !411
  br i1 %38, label %39, label %42, !dbg !412

; <label>:39:                                     ; preds = %34
  %40 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !413
  %41 = call i32 @g_option_error_quark(), !dbg !415
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %40, i32 %41, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0)), !dbg !416
  store i32 0, i32* %5, align 4, !dbg !418
  br label %44, !dbg !418

; <label>:42:                                     ; preds = %34
  br label %43, !dbg !419

; <label>:43:                                     ; preds = %42, %28
  store i32 1, i32* %5, align 4, !dbg !420
  br label %44, !dbg !420

; <label>:44:                                     ; preds = %43, %39, %25, %17
  %45 = load i32, i32* %5, align 4, !dbg !421
  ret i32 %45, !dbg !421
}

; Function Attrs: nounwind uwtable
define internal i32 @PostVerifySetKeyOptions(%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**) #0 !dbg !422 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._GOptionContext*, align 8
  %7 = alloca %struct._GOptionGroup*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GError**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.NamespaceOptionsState*, align 8
  store %struct._GOptionContext* %0, %struct._GOptionContext** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %6, metadata !423, metadata !96), !dbg !424
  store %struct._GOptionGroup* %1, %struct._GOptionGroup** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionGroup** %7, metadata !425, metadata !96), !dbg !426
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !427, metadata !96), !dbg !428
  store %struct._GError** %3, %struct._GError*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %9, metadata !429, metadata !96), !dbg !430
  call void @llvm.dbg.declare(metadata i32* %10, metadata !431, metadata !96), !dbg !432
  store i32 0, i32* %10, align 4, !dbg !432
  call void @llvm.dbg.declare(metadata %struct.NamespaceOptionsState** %11, metadata !433, metadata !96), !dbg !434
  %12 = load i8*, i8** %8, align 8, !dbg !435
  %13 = bitcast i8* %12 to %struct.NamespaceOptionsState*, !dbg !436
  store %struct.NamespaceOptionsState* %13, %struct.NamespaceOptionsState** %11, align 8, !dbg !437
  %14 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %11, align 8, !dbg !438
  %15 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %14, i32 0, i32 0, !dbg !440
  %16 = load i8*, i8** %15, align 8, !dbg !440
  %17 = icmp eq i8* %16, null, !dbg !441
  br i1 %17, label %18, label %21, !dbg !442

; <label>:18:                                     ; preds = %4
  %19 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !443
  %20 = call i32 @g_option_error_quark(), !dbg !445
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %19, i32 %20, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)), !dbg !446
  store i32 0, i32* %5, align 4, !dbg !448
  br label %78, !dbg !448

; <label>:21:                                     ; preds = %4
  %22 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %11, align 8, !dbg !449
  %23 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %22, i32 0, i32 1, !dbg !451
  %24 = load i8*, i8** %23, align 8, !dbg !451
  %25 = icmp eq i8* %24, null, !dbg !452
  br i1 %25, label %26, label %29, !dbg !453

; <label>:26:                                     ; preds = %21
  %27 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !454
  %28 = call i32 @g_option_error_quark(), !dbg !456
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %27, i32 %28, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0)), !dbg !457
  store i32 0, i32* %5, align 4, !dbg !459
  br label %78, !dbg !459

; <label>:29:                                     ; preds = %21
  %30 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %11, align 8, !dbg !460
  %31 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %30, i32 0, i32 0, !dbg !462
  %32 = load i8*, i8** %31, align 8, !dbg !462
  %33 = call i32 @g_strcmp0(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !463
  %34 = icmp eq i32 %33, 0, !dbg !464
  br i1 %34, label %35, label %77, !dbg !465

; <label>:35:                                     ; preds = %29
  %36 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %11, align 8, !dbg !466
  %37 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %36, i32 0, i32 2, !dbg !469
  %38 = load i8*, i8** %37, align 8, !dbg !469
  %39 = icmp eq i8* %38, null, !dbg !470
  br i1 %39, label %40, label %43, !dbg !471

; <label>:40:                                     ; preds = %35
  %41 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !472
  %42 = call i32 @g_option_error_quark(), !dbg !474
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %41, i32 %42, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0)), !dbg !475
  store i32 0, i32* %5, align 4, !dbg !477
  br label %78, !dbg !477

; <label>:43:                                     ; preds = %35
  %44 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %11, align 8, !dbg !478
  %45 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %44, i32 0, i32 3, !dbg !480
  %46 = load i8*, i8** %45, align 8, !dbg !480
  %47 = icmp ne i8* %46, null, !dbg !481
  br i1 %47, label %48, label %51, !dbg !482

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %10, align 4, !dbg !483
  %50 = add nsw i32 %49, 1, !dbg !483
  store i32 %50, i32* %10, align 4, !dbg !483
  br label %51, !dbg !485

; <label>:51:                                     ; preds = %48, %43
  %52 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %11, align 8, !dbg !486
  %53 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %52, i32 0, i32 5, !dbg !488
  %54 = load i8*, i8** %53, align 8, !dbg !488
  %55 = icmp ne i8* %54, null, !dbg !489
  br i1 %55, label %56, label %59, !dbg !490

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %10, align 4, !dbg !491
  %58 = add nsw i32 %57, 1, !dbg !491
  store i32 %58, i32* %10, align 4, !dbg !491
  br label %59, !dbg !493

; <label>:59:                                     ; preds = %56, %51
  %60 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %11, align 8, !dbg !494
  %61 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %60, i32 0, i32 7, !dbg !496
  %62 = load i32, i32* %61, align 4, !dbg !496
  %63 = icmp eq i32 %62, 1, !dbg !497
  br i1 %63, label %64, label %67, !dbg !498

; <label>:64:                                     ; preds = %59
  %65 = load i32, i32* %10, align 4, !dbg !499
  %66 = add nsw i32 %65, 1, !dbg !499
  store i32 %66, i32* %10, align 4, !dbg !499
  br label %67, !dbg !501

; <label>:67:                                     ; preds = %64, %59
  %68 = load i32, i32* %10, align 4, !dbg !502
  %69 = icmp sgt i32 %68, 1, !dbg !504
  br i1 %69, label %73, label %70, !dbg !505

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %10, align 4, !dbg !506
  %72 = icmp eq i32 %71, 0, !dbg !508
  br i1 %72, label %73, label %76, !dbg !509

; <label>:73:                                     ; preds = %70, %67
  %74 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !510
  %75 = call i32 @g_option_error_quark(), !dbg !512
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %74, i32 %75, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.33, i32 0, i32 0)), !dbg !513
  store i32 0, i32* %5, align 4, !dbg !515
  br label %78, !dbg !515

; <label>:76:                                     ; preds = %70
  br label %77, !dbg !516

; <label>:77:                                     ; preds = %76, %29
  store i32 1, i32* %5, align 4, !dbg !517
  br label %78, !dbg !517

; <label>:78:                                     ; preds = %77, %73, %40, %26, %18
  %79 = load i32, i32* %5, align 4, !dbg !518
  ret i32 %79, !dbg !518
}

; Function Attrs: nounwind uwtable
define internal i32 @PostVerifyDeleteKeyOptions(%struct._GOptionContext*, %struct._GOptionGroup*, i8*, %struct._GError**) #0 !dbg !519 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._GOptionContext*, align 8
  %7 = alloca %struct._GOptionGroup*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GError**, align 8
  %10 = alloca %struct.NamespaceOptionsState*, align 8
  store %struct._GOptionContext* %0, %struct._GOptionContext** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %6, metadata !520, metadata !96), !dbg !521
  store %struct._GOptionGroup* %1, %struct._GOptionGroup** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionGroup** %7, metadata !522, metadata !96), !dbg !523
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !524, metadata !96), !dbg !525
  store %struct._GError** %3, %struct._GError*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._GError*** %9, metadata !526, metadata !96), !dbg !527
  call void @llvm.dbg.declare(metadata %struct.NamespaceOptionsState** %10, metadata !528, metadata !96), !dbg !529
  %11 = load i8*, i8** %8, align 8, !dbg !530
  %12 = bitcast i8* %11 to %struct.NamespaceOptionsState*, !dbg !531
  store %struct.NamespaceOptionsState* %12, %struct.NamespaceOptionsState** %10, align 8, !dbg !532
  %13 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !533
  %14 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %13, i32 0, i32 0, !dbg !535
  %15 = load i8*, i8** %14, align 8, !dbg !535
  %16 = icmp eq i8* %15, null, !dbg !536
  br i1 %16, label %17, label %20, !dbg !537

; <label>:17:                                     ; preds = %4
  %18 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !538
  %19 = call i32 @g_option_error_quark(), !dbg !540
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 %19, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)), !dbg !541
  store i32 0, i32* %5, align 4, !dbg !543
  br label %44, !dbg !543

; <label>:20:                                     ; preds = %4
  %21 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !544
  %22 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %21, i32 0, i32 1, !dbg !546
  %23 = load i8*, i8** %22, align 8, !dbg !546
  %24 = icmp eq i8* %23, null, !dbg !547
  br i1 %24, label %25, label %28, !dbg !548

; <label>:25:                                     ; preds = %20
  %26 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !549
  %27 = call i32 @g_option_error_quark(), !dbg !551
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %26, i32 %27, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0)), !dbg !552
  store i32 0, i32* %5, align 4, !dbg !554
  br label %44, !dbg !554

; <label>:28:                                     ; preds = %20
  %29 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !555
  %30 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %29, i32 0, i32 0, !dbg !557
  %31 = load i8*, i8** %30, align 8, !dbg !557
  %32 = call i32 @g_strcmp0(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)), !dbg !558
  %33 = icmp eq i32 %32, 0, !dbg !559
  br i1 %33, label %34, label %43, !dbg !560

; <label>:34:                                     ; preds = %28
  %35 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %10, align 8, !dbg !561
  %36 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %35, i32 0, i32 2, !dbg !564
  %37 = load i8*, i8** %36, align 8, !dbg !564
  %38 = icmp eq i8* %37, null, !dbg !565
  br i1 %38, label %39, label %42, !dbg !566

; <label>:39:                                     ; preds = %34
  %40 = load %struct._GError**, %struct._GError*** %9, align 8, !dbg !567
  %41 = call i32 @g_option_error_quark(), !dbg !569
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %40, i32 %41, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0)), !dbg !570
  store i32 0, i32* %5, align 4, !dbg !572
  br label %44, !dbg !572

; <label>:42:                                     ; preds = %34
  br label %43, !dbg !573

; <label>:43:                                     ; preds = %42, %28
  store i32 1, i32* %5, align 4, !dbg !574
  br label %44, !dbg !574

; <label>:44:                                     ; preds = %43, %39, %25, %17
  %45 = load i32, i32* %5, align 4, !dbg !575
  ret i32 %45, !dbg !575
}

declare i32 @g_option_context_parse(%struct._GOptionContext*, i32*, i8***, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal void @PrintUsage(%struct._GOptionContext*) #0 !dbg !576 {
  %2 = alloca %struct._GOptionContext*, align 8
  %3 = alloca i8*, align 8
  store %struct._GOptionContext* %0, %struct._GOptionContext** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GOptionContext** %2, metadata !579, metadata !96), !dbg !580
  call void @llvm.dbg.declare(metadata i8** %3, metadata !581, metadata !96), !dbg !582
  %4 = load %struct._GOptionContext*, %struct._GOptionContext** %2, align 8, !dbg !583
  %5 = call i8* @g_option_context_get_help(%struct._GOptionContext* %4, i32 1, %struct._GOptionGroup* null), !dbg !584
  store i8* %5, i8** %3, align 8, !dbg !585
  %6 = load i8*, i8** %3, align 8, !dbg !586
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %6), !dbg !587
  %7 = load i8*, i8** %3, align 8, !dbg !588
  call void @g_free(i8* %7), !dbg !589
  ret void, !dbg !590
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare void @g_error_free(%struct._GError*) #3

declare void @VMTools_ConfigLogToStdio(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ValidateNSCommands(i8*) #0 !dbg !591 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !594, metadata !96), !dbg !595
  %4 = load i8*, i8** %3, align 8, !dbg !596
  %5 = call i32 @g_strcmp0(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)), !dbg !598
  %6 = icmp eq i32 %5, 0, !dbg !599
  br i1 %6, label %15, label %7, !dbg !600

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !601
  %9 = call i32 @g_strcmp0(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !602
  %10 = icmp eq i32 %9, 0, !dbg !603
  br i1 %10, label %15, label %11, !dbg !604

; <label>:11:                                     ; preds = %7
  %12 = load i8*, i8** %3, align 8, !dbg !605
  %13 = call i32 @g_strcmp0(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)), !dbg !606
  %14 = icmp eq i32 %13, 0, !dbg !607
  br i1 %14, label %15, label %16, !dbg !608

; <label>:15:                                     ; preds = %11, %7, %1
  store i32 1, i32* %2, align 4, !dbg !610
  br label %20, !dbg !610

; <label>:16:                                     ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !612
  %18 = load i8*, i8** %3, align 8, !dbg !614
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* %18), !dbg !615
  store i32 0, i32* %2, align 4, !dbg !616
  br label %20, !dbg !616

; <label>:20:                                     ; preds = %16, %15
  %21 = load i32, i32* %2, align 4, !dbg !617
  ret i32 %21, !dbg !617
}

; Function Attrs: nounwind uwtable
define internal signext i8 @RunNamespaceCommand(%struct.NamespaceOptionsState*) #0 !dbg !618 {
  %2 = alloca %struct.NamespaceOptionsState*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.DynBuf, align 8
  %11 = alloca i8*, align 8
  store %struct.NamespaceOptionsState* %0, %struct.NamespaceOptionsState** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.NamespaceOptionsState** %2, metadata !623, metadata !96), !dbg !624
  call void @llvm.dbg.declare(metadata i8** %3, metadata !625, metadata !96), !dbg !626
  store i8* null, i8** %3, align 8, !dbg !626
  call void @llvm.dbg.declare(metadata i64* %4, metadata !627, metadata !96), !dbg !631
  store i64 0, i64* %4, align 8, !dbg !631
  call void @llvm.dbg.declare(metadata i8* %5, metadata !632, metadata !96), !dbg !633
  store i8 0, i8* %5, align 1, !dbg !633
  call void @llvm.dbg.declare(metadata i8** %6, metadata !634, metadata !96), !dbg !635
  store i8* null, i8** %6, align 8, !dbg !635
  call void @llvm.dbg.declare(metadata i8** %7, metadata !636, metadata !96), !dbg !637
  store i8* null, i8** %7, align 8, !dbg !637
  call void @llvm.dbg.declare(metadata i64* %8, metadata !638, metadata !96), !dbg !640
  store i64 0, i64* %8, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i8** %9, metadata !641, metadata !96), !dbg !644
  %12 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !645
  %13 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %12, i32 0, i32 0, !dbg !646
  %14 = load i8*, i8** %13, align 8, !dbg !646
  %15 = call i8* @GetInternalNamespaceCommand(i8* %14), !dbg !647
  store i8* %15, i8** %9, align 8, !dbg !644
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %10, metadata !648, metadata !96), !dbg !656
  call void @DynBuf_Init(%struct.DynBuf* %10), !dbg !657
  %16 = load i8*, i8** %9, align 8, !dbg !658
  %17 = load i8*, i8** %9, align 8, !dbg !660
  %18 = call i64 @strlen(i8* %17) #7, !dbg !661
  %19 = call signext i8 @DynBuf_Append(%struct.DynBuf* %10, i8* %16, i64 %18), !dbg !662
  %20 = icmp ne i8 %19, 0, !dbg !664
  br i1 %20, label %21, label %30, !dbg !665

; <label>:21:                                     ; preds = %1
  %22 = call signext i8 @DynBuf_Append(%struct.DynBuf* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i64 1), !dbg !666
  %23 = icmp ne i8 %22, 0, !dbg !666
  br i1 %23, label %24, label %30, !dbg !667

; <label>:24:                                     ; preds = %21
  %25 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !668
  %26 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %25, i32 0, i32 1, !dbg !669
  %27 = load i8*, i8** %26, align 8, !dbg !669
  %28 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %27), !dbg !670
  %29 = icmp ne i8 %28, 0, !dbg !670
  br i1 %29, label %33, label %30, !dbg !671

; <label>:30:                                     ; preds = %24, %21, %1
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !673
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)), !dbg !675
  br label %268, !dbg !676

; <label>:33:                                     ; preds = %24
  %34 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !677
  %35 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %34, i32 0, i32 4, !dbg !679
  %36 = load i8*, i8** %35, align 8, !dbg !679
  %37 = call i64 @strlen(i8* %36) #7, !dbg !680
  %38 = icmp eq i64 %37, 0, !dbg !681
  br i1 %38, label %39, label %41, !dbg !682

; <label>:39:                                     ; preds = %33
  %40 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)), !dbg !683
  store i8* %40, i8** %6, align 8, !dbg !685
  br label %43, !dbg !686

; <label>:41:                                     ; preds = %33
  %42 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)), !dbg !687
  store i8* %42, i8** %6, align 8, !dbg !689
  br label %43

; <label>:43:                                     ; preds = %41, %39
  %44 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !690
  %45 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %44, i32 0, i32 0, !dbg !692
  %46 = load i8*, i8** %45, align 8, !dbg !692
  %47 = call i32 @g_strcmp0(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)), !dbg !693
  %48 = icmp eq i32 %47, 0, !dbg !694
  br i1 %48, label %49, label %59, !dbg !695

; <label>:49:                                     ; preds = %43
  %50 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !696
  %51 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %50, i32 0, i32 2, !dbg !699
  %52 = load i8*, i8** %51, align 8, !dbg !699
  %53 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %52), !dbg !700
  %54 = icmp ne i8 %53, 0, !dbg !700
  br i1 %54, label %58, label %55, !dbg !701

; <label>:55:                                     ; preds = %49
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !702
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)), !dbg !704
  br label %268, !dbg !705

; <label>:58:                                     ; preds = %49
  br label %198, !dbg !706

; <label>:59:                                     ; preds = %43
  %60 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !707
  %61 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %60, i32 0, i32 0, !dbg !710
  %62 = load i8*, i8** %61, align 8, !dbg !710
  %63 = call i32 @g_strcmp0(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !711
  %64 = icmp eq i32 %63, 0, !dbg !712
  br i1 %64, label %65, label %164, !dbg !711

; <label>:65:                                     ; preds = %59
  %66 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)), !dbg !713
  %67 = icmp ne i8 %66, 0, !dbg !713
  br i1 %67, label %68, label %78, !dbg !716

; <label>:68:                                     ; preds = %65
  %69 = load i8*, i8** %6, align 8, !dbg !717
  %70 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %69), !dbg !718
  %71 = icmp ne i8 %70, 0, !dbg !718
  br i1 %71, label %72, label %78, !dbg !719

; <label>:72:                                     ; preds = %68
  %73 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !720
  %74 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %73, i32 0, i32 2, !dbg !721
  %75 = load i8*, i8** %74, align 8, !dbg !721
  %76 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %75), !dbg !722
  %77 = icmp ne i8 %76, 0, !dbg !722
  br i1 %77, label %81, label %78, !dbg !723

; <label>:78:                                     ; preds = %72, %68, %65
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !725
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)), !dbg !727
  br label %268, !dbg !728

; <label>:81:                                     ; preds = %72
  %82 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !729
  %83 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %82, i32 0, i32 5, !dbg !731
  %84 = load i8*, i8** %83, align 8, !dbg !731
  %85 = icmp eq i8* %84, null, !dbg !732
  br i1 %85, label %86, label %139, !dbg !733

; <label>:86:                                     ; preds = %81
  %87 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !734
  %88 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %87, i32 0, i32 3, !dbg !737
  %89 = load i8*, i8** %88, align 8, !dbg !737
  %90 = icmp ne i8* %89, null, !dbg !738
  br i1 %90, label %91, label %117, !dbg !739

; <label>:91:                                     ; preds = %86
  %92 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !740
  %93 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %92, i32 0, i32 3, !dbg !743
  %94 = load i8*, i8** %93, align 8, !dbg !743
  %95 = call i64 @strlen(i8* %94) #7, !dbg !744
  %96 = icmp eq i64 %95, 0, !dbg !745
  br i1 %96, label %97, label %101, !dbg !746

; <label>:97:                                     ; preds = %91
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !747
  %99 = load i8*, i8** @gAppName, align 8, !dbg !749
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0), i8* %99), !dbg !750
  br label %268, !dbg !751

; <label>:101:                                    ; preds = %91
  %102 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !752
  %103 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %102, i32 0, i32 3, !dbg !754
  %104 = load i8*, i8** %103, align 8, !dbg !754
  %105 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %104), !dbg !755
  %106 = icmp ne i8 %105, 0, !dbg !755
  br i1 %106, label %107, label %113, !dbg !756

; <label>:107:                                    ; preds = %101
  %108 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !757
  %109 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %108, i32 0, i32 4, !dbg !758
  %110 = load i8*, i8** %109, align 8, !dbg !758
  %111 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %110), !dbg !759
  %112 = icmp ne i8 %111, 0, !dbg !759
  br i1 %112, label %116, label %113, !dbg !760

; <label>:113:                                    ; preds = %107, %101
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !762
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)), !dbg !764
  br label %268, !dbg !765

; <label>:116:                                    ; preds = %107
  br label %138, !dbg !766

; <label>:117:                                    ; preds = %86
  %118 = call signext i8 @GetValueFromStdin(i8** %7, i64* %8), !dbg !767
  %119 = sext i8 %118 to i32, !dbg !767
  %120 = icmp eq i32 %119, 0, !dbg !770
  br i1 %120, label %121, label %122, !dbg !771

; <label>:121:                                    ; preds = %117
  br label %268, !dbg !772

; <label>:122:                                    ; preds = %117
  %123 = load i8*, i8** %7, align 8, !dbg !774
  %124 = load i64, i64* %8, align 8, !dbg !776
  %125 = add i64 %124, 1, !dbg !777
  %126 = call signext i8 @DynBuf_Append(%struct.DynBuf* %10, i8* %123, i64 %125), !dbg !778
  %127 = icmp ne i8 %126, 0, !dbg !778
  br i1 %127, label %128, label %134, !dbg !779

; <label>:128:                                    ; preds = %122
  %129 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !780
  %130 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %129, i32 0, i32 4, !dbg !781
  %131 = load i8*, i8** %130, align 8, !dbg !781
  %132 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %131), !dbg !782
  %133 = icmp ne i8 %132, 0, !dbg !782
  br i1 %133, label %137, label %134, !dbg !783

; <label>:134:                                    ; preds = %128, %122
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !785
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)), !dbg !787
  br label %268, !dbg !788

; <label>:137:                                    ; preds = %128
  br label %138

; <label>:138:                                    ; preds = %137, %116
  br label %163, !dbg !789

; <label>:139:                                    ; preds = %81
  %140 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !790
  %141 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %140, i32 0, i32 5, !dbg !793
  %142 = load i8*, i8** %141, align 8, !dbg !793
  %143 = call signext i8 @GetValueFromFile(i8* %142, i8** %7, i64* %8), !dbg !794
  %144 = sext i8 %143 to i32, !dbg !794
  %145 = icmp eq i32 %144, 0, !dbg !795
  br i1 %145, label %146, label %147, !dbg !796

; <label>:146:                                    ; preds = %139
  br label %268, !dbg !797

; <label>:147:                                    ; preds = %139
  %148 = load i8*, i8** %7, align 8, !dbg !799
  %149 = load i64, i64* %8, align 8, !dbg !801
  %150 = add i64 %149, 1, !dbg !802
  %151 = call signext i8 @DynBuf_Append(%struct.DynBuf* %10, i8* %148, i64 %150), !dbg !803
  %152 = icmp ne i8 %151, 0, !dbg !803
  br i1 %152, label %153, label %159, !dbg !804

; <label>:153:                                    ; preds = %147
  %154 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !805
  %155 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %154, i32 0, i32 4, !dbg !806
  %156 = load i8*, i8** %155, align 8, !dbg !806
  %157 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %156), !dbg !807
  %158 = icmp ne i8 %157, 0, !dbg !807
  br i1 %158, label %162, label %159, !dbg !808

; <label>:159:                                    ; preds = %153, %147
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !810
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)), !dbg !812
  br label %268, !dbg !813

; <label>:162:                                    ; preds = %153
  br label %163

; <label>:163:                                    ; preds = %162, %138
  br label %197, !dbg !814

; <label>:164:                                    ; preds = %59
  %165 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !815
  %166 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %165, i32 0, i32 0, !dbg !818
  %167 = load i8*, i8** %166, align 8, !dbg !818
  %168 = call i32 @g_strcmp0(i8* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)), !dbg !819
  %169 = icmp eq i32 %168, 0, !dbg !820
  br i1 %169, label %170, label %196, !dbg !819

; <label>:170:                                    ; preds = %164
  %171 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)), !dbg !821
  %172 = icmp ne i8 %171, 0, !dbg !821
  br i1 %172, label %173, label %192, !dbg !824

; <label>:173:                                    ; preds = %170
  %174 = load i8*, i8** %6, align 8, !dbg !825
  %175 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %174), !dbg !826
  %176 = icmp ne i8 %175, 0, !dbg !826
  br i1 %176, label %177, label %192, !dbg !827

; <label>:177:                                    ; preds = %173
  %178 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !828
  %179 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %178, i32 0, i32 2, !dbg !829
  %180 = load i8*, i8** %179, align 8, !dbg !829
  %181 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %180), !dbg !830
  %182 = icmp ne i8 %181, 0, !dbg !830
  br i1 %182, label %183, label %192, !dbg !831

; <label>:183:                                    ; preds = %177
  %184 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)), !dbg !832
  %185 = icmp ne i8 %184, 0, !dbg !832
  br i1 %185, label %186, label %192, !dbg !833

; <label>:186:                                    ; preds = %183
  %187 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !834
  %188 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %187, i32 0, i32 4, !dbg !835
  %189 = load i8*, i8** %188, align 8, !dbg !835
  %190 = call signext i8 @DynBuf_AppendString(%struct.DynBuf* %10, i8* %189), !dbg !836
  %191 = icmp ne i8 %190, 0, !dbg !836
  br i1 %191, label %195, label %192, !dbg !837

; <label>:192:                                    ; preds = %186, %183, %177, %173, %170
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !839
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)), !dbg !841
  br label %268, !dbg !842

; <label>:195:                                    ; preds = %186
  br label %196, !dbg !843

; <label>:196:                                    ; preds = %195, %164
  br label %197

; <label>:197:                                    ; preds = %196, %163
  br label %198

; <label>:198:                                    ; preds = %197, %58
  %199 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !844
  %200 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %199, i32 0, i32 6, !dbg !846
  %201 = load i32, i32* %200, align 8, !dbg !846
  %202 = icmp ne i32 %201, 0, !dbg !844
  br i1 %202, label %203, label %206, !dbg !847

; <label>:203:                                    ; preds = %198
  %204 = call i8* @DynBuf_Get(%struct.DynBuf* %10), !dbg !848
  %205 = call i64 @DynBuf_GetSize(%struct.DynBuf* %10), !dbg !850
  call void @PrintInternalCommand(i8* %204, i64 %205), !dbg !852
  br label %206, !dbg !854

; <label>:206:                                    ; preds = %203, %198
  %207 = call i8* @DynBuf_Get(%struct.DynBuf* %10), !dbg !855
  %208 = call i64 @DynBuf_GetSize(%struct.DynBuf* %10), !dbg !856
  %209 = call i32 @RpcChannel_SendOneRaw(i8* %207, i64 %208, i8** %3, i64* %4), !dbg !857
  %210 = trunc i32 %209 to i8, !dbg !858
  store i8 %210, i8* %5, align 1, !dbg !859
  %211 = load i8, i8* %5, align 1, !dbg !860
  %212 = icmp ne i8 %211, 0, !dbg !860
  br i1 %212, label %228, label %213, !dbg !862

; <label>:213:                                    ; preds = %206
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !863
  %215 = load i8*, i8** %3, align 8, !dbg !865
  %216 = icmp ne i8* %215, null, !dbg !865
  br i1 %216, label %217, label %224, !dbg !866

; <label>:217:                                    ; preds = %213
  %218 = load i8*, i8** %3, align 8, !dbg !867
  %219 = load i8, i8* %218, align 1, !dbg !869
  %220 = sext i8 %219 to i32, !dbg !869
  %221 = icmp ne i32 %220, 0, !dbg !869
  br i1 %221, label %222, label %224, !dbg !870

; <label>:222:                                    ; preds = %217
  %223 = load i8*, i8** %3, align 8, !dbg !871
  br label %225, !dbg !873

; <label>:224:                                    ; preds = %217, %213
  br label %225, !dbg !874

; <label>:225:                                    ; preds = %224, %222
  %226 = phi i8* [ %223, %222 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), %224 ], !dbg !876
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* %226), !dbg !878
  br label %266, !dbg !879

; <label>:228:                                    ; preds = %206
  call void @llvm.dbg.declare(metadata i8** %11, metadata !880, metadata !96), !dbg !882
  %229 = load i8*, i8** %3, align 8, !dbg !883
  store i8* %229, i8** %11, align 8, !dbg !882
  %230 = load i64, i64* %4, align 8, !dbg !884
  %231 = icmp eq i64 %230, 0, !dbg !886
  br i1 %231, label %232, label %240, !dbg !887

; <label>:232:                                    ; preds = %228
  %233 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !888
  %234 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %233, i32 0, i32 6, !dbg !891
  %235 = load i32, i32* %234, align 8, !dbg !891
  %236 = icmp ne i32 %235, 0, !dbg !888
  br i1 %236, label %237, label %239, !dbg !892

; <label>:237:                                    ; preds = %232
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)), !dbg !893
  br label %239, !dbg !895

; <label>:239:                                    ; preds = %237, %232
  br label %263, !dbg !896

; <label>:240:                                    ; preds = %228
  %241 = load %struct.NamespaceOptionsState*, %struct.NamespaceOptionsState** %2, align 8, !dbg !897
  %242 = getelementptr inbounds %struct.NamespaceOptionsState, %struct.NamespaceOptionsState* %241, i32 0, i32 6, !dbg !900
  %243 = load i32, i32* %242, align 8, !dbg !900
  %244 = icmp ne i32 %243, 0, !dbg !897
  br i1 %244, label %245, label %247, !dbg !901

; <label>:245:                                    ; preds = %240
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0)), !dbg !902
  br label %247, !dbg !904

; <label>:247:                                    ; preds = %245, %240
  br label %248, !dbg !905

; <label>:248:                                    ; preds = %254, %247
  %249 = load i8*, i8** %11, align 8, !dbg !906
  %250 = load i8*, i8** %3, align 8, !dbg !908
  %251 = load i64, i64* %4, align 8, !dbg !909
  %252 = getelementptr inbounds i8, i8* %250, i64 %251, !dbg !910
  %253 = icmp ult i8* %249, %252, !dbg !911
  br i1 %253, label %254, label %262, !dbg !912

; <label>:254:                                    ; preds = %248
  %255 = load i8*, i8** %11, align 8, !dbg !913
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* %255), !dbg !915
  %257 = load i8*, i8** %11, align 8, !dbg !916
  %258 = call i64 @strlen(i8* %257) #7, !dbg !917
  %259 = add i64 %258, 1, !dbg !918
  %260 = load i8*, i8** %11, align 8, !dbg !919
  %261 = getelementptr inbounds i8, i8* %260, i64 %259, !dbg !919
  store i8* %261, i8** %11, align 8, !dbg !919
  br label %248, !dbg !920, !llvm.loop !922

; <label>:262:                                    ; preds = %248
  br label %263

; <label>:263:                                    ; preds = %262, %239
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !923
  %265 = call i32 @fflush(%struct._IO_FILE* %264), !dbg !924
  br label %266

; <label>:266:                                    ; preds = %263, %225
  %267 = load i8*, i8** %3, align 8, !dbg !925
  call void @free(i8* %267) #8, !dbg !926
  br label %268, !dbg !926

; <label>:268:                                    ; preds = %266, %192, %159, %146, %134, %121, %113, %97, %78, %55, %30
  call void @DynBuf_Destroy(%struct.DynBuf* %10), !dbg !927
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !928
  %270 = call i32 @fflush(%struct._IO_FILE* %269), !dbg !929
  %271 = load i8*, i8** %7, align 8, !dbg !930
  call void @g_free(i8* %271), !dbg !931
  %272 = load i8*, i8** %6, align 8, !dbg !932
  call void @g_free(i8* %272), !dbg !933
  %273 = load i8, i8* %5, align 1, !dbg !934
  ret i8 %273, !dbg !935
}

declare void @g_option_context_free(%struct._GOptionContext*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @g_option_error_quark() #3

declare i32 @g_strcmp0(i8*, i8*) #3

declare i8* @g_option_context_get_help(%struct._GOptionContext*, i32, %struct._GOptionGroup*) #3

declare void @g_printerr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i8* @GetInternalNamespaceCommand(i8*) #0 !dbg !936 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !939, metadata !96), !dbg !940
  %4 = load i8*, i8** %3, align 8, !dbg !941
  %5 = call i32 @g_strcmp0(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)), !dbg !943
  %6 = icmp eq i32 %5, 0, !dbg !944
  br i1 %6, label %7, label %8, !dbg !945

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0), i8** %2, align 8, !dbg !946
  br label %19, !dbg !946

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !948
  %10 = call i32 @g_strcmp0(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !950
  %11 = icmp eq i32 %10, 0, !dbg !951
  br i1 %11, label %12, label %13, !dbg !952

; <label>:12:                                     ; preds = %8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), i8** %2, align 8, !dbg !953
  br label %19, !dbg !953

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %3, align 8, !dbg !955
  %15 = call i32 @g_strcmp0(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0)), !dbg !957
  %16 = icmp eq i32 %15, 0, !dbg !958
  br i1 %16, label %17, label %18, !dbg !959

; <label>:17:                                     ; preds = %13
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), i8** %2, align 8, !dbg !960
  br label %19, !dbg !960

; <label>:18:                                     ; preds = %13
  store i8* null, i8** %2, align 8, !dbg !962
  br label %19, !dbg !962

; <label>:19:                                     ; preds = %18, %17, %12, %7
  %20 = load i8*, i8** %2, align 8, !dbg !964
  ret i8* %20, !dbg !964
}

declare void @DynBuf_Init(%struct.DynBuf*) #3

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @DynBuf_AppendString(%struct.DynBuf*, i8*) #5 !dbg !965 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !969, metadata !96), !dbg !970
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !971, metadata !96), !dbg !972
  %5 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !973
  %6 = load i8*, i8** %4, align 8, !dbg !974
  %7 = load i8*, i8** %4, align 8, !dbg !975
  %8 = call i64 @strlen(i8* %7) #7, !dbg !976
  %9 = add i64 %8, 1, !dbg !977
  %10 = call signext i8 @DynBuf_Append(%struct.DynBuf* %5, i8* %6, i64 %9), !dbg !978
  ret i8 %10, !dbg !980
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GetValueFromStdin(i8**, i64*) #0 !dbg !981 {
  %3 = alloca i8**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct._GError*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GIOChannel*, align 8
  %8 = alloca i8, align 1
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !986, metadata !96), !dbg !987
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !988, metadata !96), !dbg !989
  call void @llvm.dbg.declare(metadata %struct._GError** %5, metadata !990, metadata !96), !dbg !991
  store %struct._GError* null, %struct._GError** %5, align 8, !dbg !991
  call void @llvm.dbg.declare(metadata i32* %6, metadata !992, metadata !96), !dbg !994
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %7, metadata !995, metadata !96), !dbg !1152
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1153, metadata !96), !dbg !1154
  store i8 1, i8* %8, align 1, !dbg !1154
  %9 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 0), !dbg !1155
  store %struct._GIOChannel* %9, %struct._GIOChannel** %7, align 8, !dbg !1156
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !1157
  %11 = load i8**, i8*** %3, align 8, !dbg !1158
  %12 = load i64*, i64** %4, align 8, !dbg !1159
  %13 = call i32 @g_io_channel_read_to_end(%struct._GIOChannel* %10, i8** %11, i64* %12, %struct._GError** %5), !dbg !1160
  store i32 %13, i32* %6, align 4, !dbg !1161
  %14 = load i32, i32* %6, align 4, !dbg !1162
  %15 = icmp ne i32 %14, 1, !dbg !1164
  br i1 %15, label %16, label %30, !dbg !1165

; <label>:16:                                     ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1166
  %18 = load i8*, i8** @gAppName, align 8, !dbg !1168
  %19 = load i32, i32* %6, align 4, !dbg !1169
  %20 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !1170
  %21 = icmp ne %struct._GError* %20, null, !dbg !1171
  br i1 %21, label %22, label %26, !dbg !1170

; <label>:22:                                     ; preds = %16
  %23 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !1172
  %24 = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2, !dbg !1174
  %25 = load i8*, i8** %24, align 8, !dbg !1174
  br label %27, !dbg !1175

; <label>:26:                                     ; preds = %16
  br label %27, !dbg !1176

; <label>:27:                                     ; preds = %26, %22
  %28 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), %26 ], !dbg !1178
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i32 0, i32 0), i8* %18, i32 %19, i8* %28), !dbg !1180
  store i8 0, i8* %8, align 1, !dbg !1181
  br label %48, !dbg !1182

; <label>:30:                                     ; preds = %2
  %31 = load i64*, i64** %4, align 8, !dbg !1183
  %32 = load i64, i64* %31, align 8, !dbg !1186
  %33 = icmp ugt i64 %32, 16384, !dbg !1187
  br i1 %33, label %34, label %38, !dbg !1188

; <label>:34:                                     ; preds = %30
  store i8 0, i8* %8, align 1, !dbg !1189
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1191
  %36 = load i8*, i8** @gAppName, align 8, !dbg !1192
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0), i8* %36, i32 16384), !dbg !1193
  br label %47, !dbg !1194

; <label>:38:                                     ; preds = %30
  %39 = load i64*, i64** %4, align 8, !dbg !1195
  %40 = load i64, i64* %39, align 8, !dbg !1198
  %41 = icmp eq i64 %40, 0, !dbg !1199
  br i1 %41, label %42, label %46, !dbg !1198

; <label>:42:                                     ; preds = %38
  store i8 0, i8* %8, align 1, !dbg !1200
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1202
  %44 = load i8*, i8** @gAppName, align 8, !dbg !1203
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0), i8* %44), !dbg !1204
  br label %46, !dbg !1205

; <label>:46:                                     ; preds = %42, %38
  br label %47

; <label>:47:                                     ; preds = %46, %34
  br label %48

; <label>:48:                                     ; preds = %47, %27
  %49 = load i8, i8* %8, align 1, !dbg !1206
  %50 = sext i8 %49 to i32, !dbg !1206
  %51 = icmp eq i32 %50, 0, !dbg !1208
  br i1 %51, label %52, label %57, !dbg !1209

; <label>:52:                                     ; preds = %48
  %53 = load i8**, i8*** %3, align 8, !dbg !1210
  %54 = load i8*, i8** %53, align 8, !dbg !1212
  call void @g_free(i8* %54), !dbg !1213
  %55 = load i8**, i8*** %3, align 8, !dbg !1214
  store i8* null, i8** %55, align 8, !dbg !1215
  %56 = load i64*, i64** %4, align 8, !dbg !1216
  store i64 0, i64* %56, align 8, !dbg !1217
  br label %57, !dbg !1218

; <label>:57:                                     ; preds = %52, %48
  %58 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !1219
  %59 = bitcast %struct._GError* %58 to i8*, !dbg !1219
  call void @g_free(i8* %59), !dbg !1220
  %60 = load i8, i8* %8, align 1, !dbg !1221
  ret i8 %60, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal signext i8 @GetValueFromFile(i8*, i8**, i64*) #0 !dbg !1223 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct._GError*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1226, metadata !96), !dbg !1227
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1228, metadata !96), !dbg !1229
  store i64* %2, i64** %6, align 8
  call void @llvm.dbg.declare(metadata i64** %6, metadata !1230, metadata !96), !dbg !1231
  call void @llvm.dbg.declare(metadata %struct._GError** %7, metadata !1232, metadata !96), !dbg !1233
  store %struct._GError* null, %struct._GError** %7, align 8, !dbg !1233
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1234, metadata !96), !dbg !1235
  store i8 0, i8* %8, align 1, !dbg !1235
  %9 = load i8*, i8** %4, align 8, !dbg !1236
  %10 = load i8**, i8*** %5, align 8, !dbg !1237
  %11 = load i64*, i64** %6, align 8, !dbg !1238
  %12 = call i32 @g_file_get_contents(i8* %9, i8** %10, i64* %11, %struct._GError** %7), !dbg !1239
  %13 = trunc i32 %12 to i8, !dbg !1239
  store i8 %13, i8* %8, align 1, !dbg !1240
  %14 = load i8, i8* %8, align 1, !dbg !1241
  %15 = sext i8 %14 to i32, !dbg !1241
  %16 = icmp eq i32 %15, 0, !dbg !1243
  br i1 %16, label %17, label %31, !dbg !1244

; <label>:17:                                     ; preds = %3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1245
  %19 = load i8*, i8** @gAppName, align 8, !dbg !1247
  %20 = load %struct._GError*, %struct._GError** %7, align 8, !dbg !1248
  %21 = icmp ne %struct._GError* %20, null, !dbg !1249
  br i1 %21, label %22, label %26, !dbg !1248

; <label>:22:                                     ; preds = %17
  %23 = load %struct._GError*, %struct._GError** %7, align 8, !dbg !1250
  %24 = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2, !dbg !1252
  %25 = load i8*, i8** %24, align 8, !dbg !1252
  br label %27, !dbg !1253

; <label>:26:                                     ; preds = %17
  br label %27, !dbg !1254

; <label>:27:                                     ; preds = %26, %22
  %28 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), %26 ], !dbg !1256
  %29 = load i8*, i8** %4, align 8, !dbg !1258
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* %19, i8* %28, i8* %29), !dbg !1259
  br label %49, !dbg !1260

; <label>:31:                                     ; preds = %3
  %32 = load i64*, i64** %6, align 8, !dbg !1261
  %33 = load i64, i64* %32, align 8, !dbg !1264
  %34 = icmp ugt i64 %33, 16384, !dbg !1265
  br i1 %34, label %35, label %39, !dbg !1266

; <label>:35:                                     ; preds = %31
  store i8 0, i8* %8, align 1, !dbg !1267
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1269
  %37 = load i8*, i8** @gAppName, align 8, !dbg !1270
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i32 0, i32 0), i8* %37, i32 16384), !dbg !1271
  br label %48, !dbg !1272

; <label>:39:                                     ; preds = %31
  %40 = load i64*, i64** %6, align 8, !dbg !1273
  %41 = load i64, i64* %40, align 8, !dbg !1276
  %42 = icmp eq i64 %41, 0, !dbg !1277
  br i1 %42, label %43, label %47, !dbg !1276

; <label>:43:                                     ; preds = %39
  store i8 0, i8* %8, align 1, !dbg !1278
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1280
  %45 = load i8*, i8** @gAppName, align 8, !dbg !1281
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0), i8* %45), !dbg !1282
  br label %47, !dbg !1283

; <label>:47:                                     ; preds = %43, %39
  br label %48

; <label>:48:                                     ; preds = %47, %35
  br label %49

; <label>:49:                                     ; preds = %48, %27
  %50 = load i8, i8* %8, align 1, !dbg !1284
  %51 = sext i8 %50 to i32, !dbg !1284
  %52 = icmp eq i32 %51, 0, !dbg !1286
  br i1 %52, label %53, label %58, !dbg !1287

; <label>:53:                                     ; preds = %49
  %54 = load i8**, i8*** %5, align 8, !dbg !1288
  %55 = load i8*, i8** %54, align 8, !dbg !1290
  call void @g_free(i8* %55), !dbg !1291
  %56 = load i8**, i8*** %5, align 8, !dbg !1292
  store i8* null, i8** %56, align 8, !dbg !1293
  %57 = load i64*, i64** %6, align 8, !dbg !1294
  store i64 0, i64* %57, align 8, !dbg !1295
  br label %58, !dbg !1296

; <label>:58:                                     ; preds = %53, %49
  %59 = load %struct._GError*, %struct._GError** %7, align 8, !dbg !1297
  %60 = bitcast %struct._GError* %59 to i8*, !dbg !1297
  call void @g_free(i8* %60), !dbg !1298
  %61 = load i8, i8* %8, align 1, !dbg !1299
  ret i8 %61, !dbg !1300
}

; Function Attrs: nounwind uwtable
define internal void @PrintInternalCommand(i8*, i64) #0 !dbg !1301 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1304, metadata !96), !dbg !1305
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1306, metadata !96), !dbg !1307
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1308, metadata !96), !dbg !1309
  store i32 0, i32* %5, align 4, !dbg !1309
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1310, metadata !96), !dbg !1311
  store i8* null, i8** %6, align 8, !dbg !1311
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1312, metadata !96), !dbg !1313
  store i8* null, i8** %7, align 8, !dbg !1313
  %8 = load i64, i64* %4, align 8, !dbg !1314
  %9 = icmp ugt i64 %8, 0, !dbg !1316
  br i1 %9, label %10, label %56, !dbg !1317

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %4, align 8, !dbg !1318
  %12 = trunc i64 %11 to i32, !dbg !1320
  %13 = sext i32 %12 to i64, !dbg !1320
  %14 = call noalias i8* @calloc(i64 %13, i64 1) #8, !dbg !1321
  store i8* %14, i8** %7, align 8, !dbg !1322
  %15 = load i8*, i8** %7, align 8, !dbg !1323
  %16 = icmp eq i8* %15, null, !dbg !1325
  br i1 %16, label %17, label %20, !dbg !1326

; <label>:17:                                     ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1327
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)), !dbg !1329
  br label %58, !dbg !1330

; <label>:20:                                     ; preds = %10
  %21 = load i8*, i8** %7, align 8, !dbg !1331
  store i8* %21, i8** %6, align 8, !dbg !1332
  br label %22, !dbg !1333

; <label>:22:                                     ; preds = %47, %20
  %23 = load i64, i64* %4, align 8, !dbg !1334
  %24 = load i32, i32* %5, align 4, !dbg !1336
  %25 = sext i32 %24 to i64, !dbg !1336
  %26 = icmp ugt i64 %23, %25, !dbg !1337
  br i1 %26, label %27, label %52, !dbg !1338

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %3, align 8, !dbg !1339
  %29 = load i8, i8* %28, align 1, !dbg !1342
  %30 = sext i8 %29 to i32, !dbg !1342
  %31 = icmp ne i32 %30, 0, !dbg !1343
  br i1 %31, label %32, label %37, !dbg !1344

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %3, align 8, !dbg !1345
  %34 = load i8, i8* %33, align 1, !dbg !1347
  %35 = load i8*, i8** %7, align 8, !dbg !1348
  %36 = getelementptr inbounds i8, i8* %35, i32 1, !dbg !1348
  store i8* %36, i8** %7, align 8, !dbg !1348
  store i8 %34, i8* %35, align 1, !dbg !1349
  br label %47, !dbg !1350

; <label>:37:                                     ; preds = %27
  %38 = load i32, i32* %5, align 4, !dbg !1351
  %39 = sext i32 %38 to i64, !dbg !1351
  %40 = load i64, i64* %4, align 8, !dbg !1354
  %41 = sub i64 %40, 1, !dbg !1355
  %42 = icmp ult i64 %39, %41, !dbg !1356
  br i1 %42, label %43, label %46, !dbg !1351

; <label>:43:                                     ; preds = %37
  %44 = load i8*, i8** %7, align 8, !dbg !1357
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !1357
  store i8* %45, i8** %7, align 8, !dbg !1357
  store i8 44, i8* %44, align 1, !dbg !1359
  br label %46, !dbg !1360

; <label>:46:                                     ; preds = %43, %37
  br label %47

; <label>:47:                                     ; preds = %46, %32
  %48 = load i8*, i8** %3, align 8, !dbg !1361
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !1361
  store i8* %49, i8** %3, align 8, !dbg !1361
  %50 = load i32, i32* %5, align 4, !dbg !1362
  %51 = add nsw i32 %50, 1, !dbg !1362
  store i32 %51, i32* %5, align 4, !dbg !1362
  br label %22, !dbg !1363, !llvm.loop !1365

; <label>:52:                                     ; preds = %22
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1366
  %54 = load i8*, i8** %6, align 8, !dbg !1367
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i8* %54), !dbg !1368
  br label %56, !dbg !1369

; <label>:56:                                     ; preds = %52, %2
  %57 = load i8*, i8** %6, align 8, !dbg !1370
  call void @free(i8* %57) #8, !dbg !1371
  br label %58, !dbg !1372

; <label>:58:                                     ; preds = %56, %17
  ret void, !dbg !1373
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #5 !dbg !1375 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1380, metadata !96), !dbg !1381
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1382
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !1383
  %5 = load i8*, i8** %4, align 8, !dbg !1383
  ret i8* %5, !dbg !1384
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #5 !dbg !1385 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1388, metadata !96), !dbg !1389
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1390
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !1391
  %5 = load i64, i64* %4, align 8, !dbg !1391
  ret i64 %5, !dbg !1392
}

declare i32 @RpcChannel_SendOneRaw(i8*, i64, i8**, i64*) #3

declare i32 @printf(i8*, ...) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @free(i8*) #6

declare void @DynBuf_Destroy(%struct.DynBuf*) #3

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #3

declare i32 @g_io_channel_read_to_end(%struct._GIOChannel*, i8**, i64*, %struct._GError**) #3

declare i32 @g_file_get_contents(i8*, i8**, i64*, %struct._GError**) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!87, !88}
!llvm.ident = !{!89}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !62, globals: !85)
!1 = !DIFile(filename: "vmware_namespace_cmd-namespacetool.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!2 = !{!3, !15, !25, !30, !37, !42, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 118, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/goption.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_OPTION_ARG_NONE", value: 0)
!7 = !DIEnumerator(name: "G_OPTION_ARG_STRING", value: 1)
!8 = !DIEnumerator(name: "G_OPTION_ARG_INT", value: 2)
!9 = !DIEnumerator(name: "G_OPTION_ARG_CALLBACK", value: 3)
!10 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME", value: 4)
!11 = !DIEnumerator(name: "G_OPTION_ARG_STRING_ARRAY", value: 5)
!12 = !DIEnumerator(name: "G_OPTION_ARG_FILENAME_ARRAY", value: 6)
!13 = !DIEnumerator(name: "G_OPTION_ARG_DOUBLE", value: 7)
!14 = !DIEnumerator(name: "G_OPTION_ARG_INT64", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 81, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24}
!17 = !DIEnumerator(name: "G_OPTION_FLAG_NONE", value: 0)
!18 = !DIEnumerator(name: "G_OPTION_FLAG_HIDDEN", value: 1)
!19 = !DIEnumerator(name: "G_OPTION_FLAG_IN_MAIN", value: 2)
!20 = !DIEnumerator(name: "G_OPTION_FLAG_REVERSE", value: 4)
!21 = !DIEnumerator(name: "G_OPTION_FLAG_NO_ARG", value: 8)
!22 = !DIEnumerator(name: "G_OPTION_FLAG_FILENAME", value: 16)
!23 = !DIEnumerator(name: "G_OPTION_FLAG_OPTIONAL_ARG", value: 32)
!24 = !DIEnumerator(name: "G_OPTION_FLAG_NOALIAS", value: 64)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 205, size: 32, align: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "G_OPTION_ERROR_UNKNOWN_OPTION", value: 0)
!28 = !DIEnumerator(name: "G_OPTION_ERROR_BAD_VALUE", value: 1)
!29 = !DIEnumerator(name: "G_OPTION_ERROR_FAILED", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 69, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!34 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!35 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!36 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 77, size: 32, align: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!40 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!41 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 31, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "G_IO_IN", value: 1)
!46 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!47 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!48 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!49 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!50 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 84, size: 32, align: 32, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!54 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!55 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!56 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!57 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!58 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!59 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!60 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!61 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!62 = !{!63, !64, !84, !82}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "NamespaceOptionsState", file: !66, line: 59, baseType: !67)
!66 = !DIFile(filename: "namespacetool.c", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NamespaceOptionsState", file: !66, line: 50, size: 448, align: 64, elements: !68)
!68 = !{!69, !74, !75, !76, !77, !78, !79, !83}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "cmdName", scope: !67, file: !66, line: 51, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!73 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nsName", scope: !67, file: !66, line: 52, baseType: !70, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "keyName", scope: !67, file: !66, line: 53, baseType: !70, size: 64, align: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "valueToSet", scope: !67, file: !66, line: 54, baseType: !70, size: 64, align: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "oldValueToSet", scope: !67, file: !66, line: 55, baseType: !70, size: 64, align: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "getValueFromFile", scope: !67, file: !66, line: 56, baseType: !70, size: 64, align: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "verboseLogFlag", scope: !67, file: !66, line: 57, baseType: !80, size: 32, align: 32, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !72, line: 50, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !72, line: 49, baseType: !82)
!82 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "standardInput", scope: !67, file: !66, line: 58, baseType: !80, size: 32, align: 32, offset: 416)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!85 = !{!86}
!86 = distinct !DIGlobalVariable(name: "gAppName", scope: !0, file: !66, line: 61, type: !70, isLocal: true, isDefinition: true, variable: i8** @gAppName)
!87 = !{i32 2, !"Dwarf Version", i32 4}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!90 = distinct !DISubprogram(name: "main", scope: !66, file: !66, line: 581, type: !91, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!91 = !DISubroutineType(types: !92)
!92 = !{!82, !82, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!94 = !{}
!95 = !DILocalVariable(name: "argc", arg: 1, scope: !90, file: !66, line: 581, type: !82)
!96 = !DIExpression()
!97 = !DILocation(line: 581, column: 10, scope: !90)
!98 = !DILocalVariable(name: "argv", arg: 2, scope: !90, file: !66, line: 581, type: !93)
!99 = !DILocation(line: 581, column: 22, scope: !90)
!100 = !DILocalVariable(name: "success", scope: !90, file: !66, line: 583, type: !82)
!101 = !DILocation(line: 583, column: 8, scope: !90)
!102 = !DILocalVariable(name: "gErr", scope: !90, file: !66, line: 584, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !105, line: 42, baseType: !106)
!105 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !105, line: 44, size: 128, align: 64, elements: !107)
!107 = !{!108, !114, !115}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !106, file: !105, line: 46, baseType: !109, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !110, line: 36, baseType: !111)
!110 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !112, line: 45, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!113 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !106, file: !105, line: 47, baseType: !81, size: 32, align: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !106, file: !105, line: 48, baseType: !70, size: 64, align: 64, offset: 64)
!116 = !DILocation(line: 584, column: 12, scope: !90)
!117 = !DILocalVariable(name: "descriptionBuf", scope: !90, file: !66, line: 585, type: !70)
!118 = !DILocation(line: 585, column: 11, scope: !90)
!119 = !DILocalVariable(name: "helpBuf", scope: !90, file: !66, line: 586, type: !70)
!120 = !DILocation(line: 586, column: 11, scope: !90)
!121 = !DILocalVariable(name: "optCtx", scope: !90, file: !66, line: 587, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionContext", file: !4, line: 38, baseType: !124)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionContext", file: !4, line: 38, flags: DIFlagFwdDecl)
!125 = !DILocation(line: 587, column: 20, scope: !90)
!126 = !DILocalVariable(name: "gr", scope: !90, file: !66, line: 588, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionGroup", file: !4, line: 51, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionGroup", file: !4, line: 51, flags: DIFlagFwdDecl)
!130 = !DILocation(line: 588, column: 18, scope: !90)
!131 = !DILocalVariable(name: "summary", scope: !90, file: !66, line: 589, type: !70)
!132 = !DILocation(line: 589, column: 11, scope: !90)
!133 = !DILocalVariable(name: "nsOptions", scope: !90, file: !66, line: 590, type: !65)
!134 = !DILocation(line: 590, column: 26, scope: !90)
!135 = !DILocalVariable(name: "mainEntry", scope: !90, file: !66, line: 595, type: !136)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 768, align: 64, elements: !151)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionEntry", file: !4, line: 52, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOptionEntry", file: !4, line: 257, size: 384, align: 64, elements: !139)
!139 = !{!140, !143, !144, !145, !147, !149, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "long_name", scope: !138, file: !4, line: 259, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !138, file: !4, line: 260, baseType: !71, size: 8, align: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !4, line: 261, baseType: !81, size: 32, align: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !138, file: !4, line: 263, baseType: !146, size: 32, align: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOptionArg", file: !4, line: 129, baseType: !3)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "arg_data", scope: !138, file: !4, line: 264, baseType: !148, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !72, line: 77, baseType: !63)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !138, file: !4, line: 266, baseType: !141, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_description", scope: !138, file: !4, line: 267, baseType: !141, size: 64, align: 64, offset: 320)
!151 = !{!152}
!152 = !DISubrange(count: 2)
!153 = !DILocation(line: 595, column: 17, scope: !90)
!154 = !DILocation(line: 595, column: 31, scope: !90)
!155 = !DILocation(line: 596, column: 7, scope: !90)
!156 = !DILocation(line: 596, column: 58, scope: !90)
!157 = !DILocation(line: 596, column: 47, scope: !90)
!158 = !DILocalVariable(name: "getValuesEntry", scope: !90, file: !66, line: 600, type: !136)
!159 = !DILocation(line: 600, column: 17, scope: !90)
!160 = !DILocation(line: 600, column: 36, scope: !90)
!161 = !DILocation(line: 601, column: 7, scope: !90)
!162 = !DILocation(line: 601, column: 76, scope: !90)
!163 = !DILocation(line: 601, column: 65, scope: !90)
!164 = !DILocalVariable(name: "setKeysEntry", scope: !90, file: !66, line: 605, type: !165)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 2304, align: 64, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 6)
!168 = !DILocation(line: 605, column: 17, scope: !90)
!169 = !DILocation(line: 605, column: 34, scope: !90)
!170 = !DILocation(line: 606, column: 7, scope: !90)
!171 = !DILocation(line: 607, column: 21, scope: !90)
!172 = !DILocation(line: 607, column: 10, scope: !90)
!173 = !DILocation(line: 608, column: 7, scope: !90)
!174 = !DILocation(line: 608, column: 58, scope: !90)
!175 = !DILocation(line: 608, column: 47, scope: !90)
!176 = !DILocation(line: 610, column: 7, scope: !90)
!177 = !DILocation(line: 610, column: 61, scope: !90)
!178 = !DILocation(line: 610, column: 50, scope: !90)
!179 = !DILocation(line: 613, column: 7, scope: !90)
!180 = !DILocation(line: 613, column: 61, scope: !90)
!181 = !DILocation(line: 613, column: 50, scope: !90)
!182 = !DILocation(line: 615, column: 7, scope: !90)
!183 = !DILocation(line: 615, column: 56, scope: !90)
!184 = !DILocation(line: 615, column: 45, scope: !90)
!185 = !DILocalVariable(name: "deleteKeyEntry", scope: !90, file: !66, line: 619, type: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 1152, align: 64, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 3)
!189 = !DILocation(line: 619, column: 17, scope: !90)
!190 = !DILocation(line: 619, column: 36, scope: !90)
!191 = !DILocation(line: 620, column: 7, scope: !90)
!192 = !DILocation(line: 621, column: 21, scope: !90)
!193 = !DILocation(line: 621, column: 10, scope: !90)
!194 = !DILocation(line: 622, column: 7, scope: !90)
!195 = !DILocation(line: 623, column: 21, scope: !90)
!196 = !DILocation(line: 623, column: 10, scope: !90)
!197 = !DILocation(line: 629, column: 35, scope: !90)
!198 = !DILocation(line: 629, column: 15, scope: !90)
!199 = !DILocation(line: 629, column: 13, scope: !90)
!200 = !DILocation(line: 630, column: 18, scope: !90)
!201 = !DILocation(line: 630, column: 4, scope: !90)
!202 = !DILocation(line: 632, column: 13, scope: !90)
!203 = !DILocation(line: 632, column: 11, scope: !90)
!204 = !DILocation(line: 635, column: 58, scope: !90)
!205 = !DILocation(line: 635, column: 9, scope: !90)
!206 = !DILocation(line: 635, column: 7, scope: !90)
!207 = !DILocation(line: 636, column: 31, scope: !90)
!208 = !DILocation(line: 636, column: 35, scope: !90)
!209 = !DILocation(line: 636, column: 4, scope: !90)
!210 = !DILocation(line: 637, column: 36, scope: !90)
!211 = !DILocation(line: 637, column: 44, scope: !90)
!212 = !DILocation(line: 637, column: 4, scope: !90)
!213 = !DILocation(line: 646, column: 49, scope: !90)
!214 = !DILocation(line: 647, column: 31, scope: !90)
!215 = !DILocation(line: 647, column: 41, scope: !90)
!216 = !DILocation(line: 647, column: 51, scope: !90)
!217 = !DILocation(line: 647, column: 61, scope: !90)
!218 = !DILocation(line: 639, column: 14, scope: !90)
!219 = !DILocation(line: 639, column: 12, scope: !90)
!220 = !DILocation(line: 648, column: 33, scope: !90)
!221 = !DILocation(line: 648, column: 41, scope: !90)
!222 = !DILocation(line: 648, column: 4, scope: !90)
!223 = !DILocation(line: 650, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !90, file: !66, line: 650, column: 8)
!225 = !DILocation(line: 650, column: 13, scope: !224)
!226 = !DILocation(line: 650, column: 8, scope: !90)
!227 = !DILocation(line: 651, column: 36, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !66, line: 650, column: 18)
!229 = !DILocation(line: 651, column: 27, scope: !228)
!230 = !DILocation(line: 651, column: 17, scope: !228)
!231 = !DILocation(line: 651, column: 25, scope: !228)
!232 = !DILocation(line: 652, column: 4, scope: !228)
!233 = !DILocation(line: 653, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !90, file: !66, line: 653, column: 8)
!235 = !DILocation(line: 653, column: 13, scope: !234)
!236 = !DILocation(line: 653, column: 8, scope: !90)
!237 = !DILocation(line: 654, column: 35, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !66, line: 653, column: 18)
!239 = !DILocation(line: 654, column: 26, scope: !238)
!240 = !DILocation(line: 654, column: 17, scope: !238)
!241 = !DILocation(line: 654, column: 24, scope: !238)
!242 = !DILocation(line: 655, column: 4, scope: !238)
!243 = !DILocation(line: 657, column: 55, scope: !90)
!244 = !DILocation(line: 657, column: 21, scope: !90)
!245 = !DILocation(line: 657, column: 19, scope: !90)
!246 = !DILocation(line: 659, column: 14, scope: !90)
!247 = !DILocation(line: 659, column: 12, scope: !90)
!248 = !DILocation(line: 661, column: 41, scope: !90)
!249 = !DILocation(line: 662, column: 28, scope: !90)
!250 = !DILocation(line: 662, column: 37, scope: !90)
!251 = !DILocation(line: 661, column: 9, scope: !90)
!252 = !DILocation(line: 661, column: 7, scope: !90)
!253 = !DILocation(line: 663, column: 11, scope: !90)
!254 = !DILocation(line: 663, column: 4, scope: !90)
!255 = !DILocation(line: 664, column: 11, scope: !90)
!256 = !DILocation(line: 664, column: 4, scope: !90)
!257 = !DILocation(line: 665, column: 31, scope: !90)
!258 = !DILocation(line: 665, column: 35, scope: !90)
!259 = !DILocation(line: 665, column: 4, scope: !90)
!260 = !DILocation(line: 666, column: 31, scope: !90)
!261 = !DILocation(line: 666, column: 39, scope: !90)
!262 = !DILocation(line: 666, column: 4, scope: !90)
!263 = !DILocation(line: 667, column: 35, scope: !90)
!264 = !DILocation(line: 667, column: 4, scope: !90)
!265 = !DILocation(line: 672, column: 38, scope: !90)
!266 = !DILocation(line: 670, column: 21, scope: !90)
!267 = !DILocation(line: 670, column: 19, scope: !90)
!268 = !DILocation(line: 673, column: 14, scope: !90)
!269 = !DILocation(line: 673, column: 12, scope: !90)
!270 = !DILocation(line: 676, column: 39, scope: !90)
!271 = !DILocation(line: 676, column: 55, scope: !90)
!272 = !DILocation(line: 677, column: 28, scope: !90)
!273 = !DILocation(line: 676, column: 9, scope: !90)
!274 = !DILocation(line: 676, column: 7, scope: !90)
!275 = !DILocation(line: 678, column: 11, scope: !90)
!276 = !DILocation(line: 678, column: 4, scope: !90)
!277 = !DILocation(line: 679, column: 11, scope: !90)
!278 = !DILocation(line: 679, column: 4, scope: !90)
!279 = !DILocation(line: 680, column: 31, scope: !90)
!280 = !DILocation(line: 680, column: 35, scope: !90)
!281 = !DILocation(line: 680, column: 4, scope: !90)
!282 = !DILocation(line: 681, column: 31, scope: !90)
!283 = !DILocation(line: 681, column: 39, scope: !90)
!284 = !DILocation(line: 681, column: 4, scope: !90)
!285 = !DILocation(line: 682, column: 35, scope: !90)
!286 = !DILocation(line: 682, column: 4, scope: !90)
!287 = !DILocation(line: 686, column: 37, scope: !90)
!288 = !DILocation(line: 685, column: 21, scope: !90)
!289 = !DILocation(line: 685, column: 19, scope: !90)
!290 = !DILocation(line: 687, column: 14, scope: !90)
!291 = !DILocation(line: 687, column: 12, scope: !90)
!292 = !DILocation(line: 690, column: 42, scope: !90)
!293 = !DILocation(line: 690, column: 58, scope: !90)
!294 = !DILocation(line: 691, column: 28, scope: !90)
!295 = !DILocation(line: 690, column: 9, scope: !90)
!296 = !DILocation(line: 690, column: 7, scope: !90)
!297 = !DILocation(line: 692, column: 11, scope: !90)
!298 = !DILocation(line: 692, column: 4, scope: !90)
!299 = !DILocation(line: 693, column: 11, scope: !90)
!300 = !DILocation(line: 693, column: 4, scope: !90)
!301 = !DILocation(line: 694, column: 31, scope: !90)
!302 = !DILocation(line: 694, column: 35, scope: !90)
!303 = !DILocation(line: 694, column: 4, scope: !90)
!304 = !DILocation(line: 695, column: 31, scope: !90)
!305 = !DILocation(line: 695, column: 39, scope: !90)
!306 = !DILocation(line: 695, column: 4, scope: !90)
!307 = !DILocation(line: 696, column: 35, scope: !90)
!308 = !DILocation(line: 696, column: 4, scope: !90)
!309 = !DILocation(line: 698, column: 32, scope: !310)
!310 = distinct !DILexicalBlock(scope: !90, file: !66, line: 698, column: 8)
!311 = !DILocation(line: 698, column: 9, scope: !310)
!312 = !DILocation(line: 698, column: 8, scope: !90)
!313 = !DILocation(line: 699, column: 18, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !66, line: 698, column: 62)
!315 = !DILocation(line: 699, column: 7, scope: !314)
!316 = !DILocation(line: 700, column: 14, scope: !314)
!317 = !DILocation(line: 700, column: 34, scope: !314)
!318 = !DILocation(line: 700, column: 45, scope: !314)
!319 = !DILocation(line: 700, column: 50, scope: !314)
!320 = !DILocation(line: 700, column: 60, scope: !321)
!321 = !DILexicalBlockFile(scope: !314, file: !66, discriminator: 1)
!322 = !DILocation(line: 700, column: 66, scope: !321)
!323 = !DILocation(line: 700, column: 45, scope: !321)
!324 = !DILocation(line: 700, column: 45, scope: !325)
!325 = !DILexicalBlockFile(scope: !314, file: !66, discriminator: 2)
!326 = !DILocation(line: 700, column: 45, scope: !327)
!327 = !DILexicalBlockFile(scope: !314, file: !66, discriminator: 3)
!328 = !DILocation(line: 700, column: 7, scope: !327)
!329 = !DILocation(line: 701, column: 20, scope: !314)
!330 = !DILocation(line: 701, column: 7, scope: !314)
!331 = !DILocation(line: 702, column: 7, scope: !314)
!332 = !DILocation(line: 705, column: 18, scope: !333)
!333 = distinct !DILexicalBlock(scope: !90, file: !66, line: 705, column: 8)
!334 = !DILocation(line: 705, column: 8, scope: !333)
!335 = !DILocation(line: 705, column: 8, scope: !90)
!336 = !DILocation(line: 706, column: 32, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !66, line: 705, column: 34)
!338 = !DILocation(line: 706, column: 7, scope: !337)
!339 = !DILocation(line: 707, column: 4, scope: !337)
!340 = !DILocation(line: 713, column: 8, scope: !341)
!341 = distinct !DILexicalBlock(scope: !90, file: !66, line: 713, column: 8)
!342 = !DILocation(line: 713, column: 13, scope: !341)
!343 = !DILocation(line: 713, column: 17, scope: !341)
!344 = !DILocation(line: 713, column: 49, scope: !345)
!345 = !DILexicalBlockFile(scope: !341, file: !66, discriminator: 1)
!346 = !DILocation(line: 713, column: 20, scope: !345)
!347 = !DILocation(line: 713, column: 58, scope: !345)
!348 = !DILocation(line: 713, column: 8, scope: !345)
!349 = !DILocation(line: 714, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !66, line: 713, column: 66)
!351 = !DILocation(line: 717, column: 14, scope: !90)
!352 = !DILocation(line: 717, column: 12, scope: !90)
!353 = !DILocation(line: 717, column: 4, scope: !90)
!354 = !DILocation(line: 720, column: 26, scope: !90)
!355 = !DILocation(line: 720, column: 4, scope: !90)
!356 = !DILocation(line: 721, column: 11, scope: !90)
!357 = !DILocation(line: 721, column: 4, scope: !90)
!358 = !DILocation(line: 722, column: 11, scope: !90)
!359 = !DILocation(line: 722, column: 4, scope: !90)
!360 = !DILocation(line: 723, column: 11, scope: !90)
!361 = !DILocation(line: 723, column: 4, scope: !90)
!362 = distinct !DISubprogram(name: "PostVerifyGetValueOptions", scope: !66, file: !66, line: 434, type: !363, isLocal: true, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!363 = !DISubroutineType(types: !364)
!364 = !{!80, !122, !127, !148, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!366 = !DILocalVariable(name: "context", arg: 1, scope: !362, file: !66, line: 434, type: !122)
!367 = !DILocation(line: 434, column: 43, scope: !362)
!368 = !DILocalVariable(name: "group", arg: 2, scope: !362, file: !66, line: 434, type: !127)
!369 = !DILocation(line: 434, column: 66, scope: !362)
!370 = !DILocalVariable(name: "data", arg: 3, scope: !362, file: !66, line: 435, type: !148)
!371 = !DILocation(line: 435, column: 36, scope: !362)
!372 = !DILocalVariable(name: "error", arg: 4, scope: !362, file: !66, line: 435, type: !365)
!373 = !DILocation(line: 435, column: 51, scope: !362)
!374 = !DILocalVariable(name: "nsOptions", scope: !362, file: !66, line: 437, type: !64)
!375 = !DILocation(line: 437, column: 27, scope: !362)
!376 = !DILocation(line: 439, column: 42, scope: !362)
!377 = !DILocation(line: 439, column: 16, scope: !362)
!378 = !DILocation(line: 439, column: 14, scope: !362)
!379 = !DILocation(line: 440, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !362, file: !66, line: 440, column: 8)
!381 = !DILocation(line: 440, column: 19, scope: !380)
!382 = !DILocation(line: 440, column: 27, scope: !380)
!383 = !DILocation(line: 440, column: 8, scope: !362)
!384 = !DILocation(line: 441, column: 19, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !66, line: 440, column: 35)
!386 = !DILocation(line: 441, column: 27, scope: !385)
!387 = !DILocation(line: 441, column: 7, scope: !388)
!388 = !DILexicalBlockFile(scope: !385, file: !66, discriminator: 1)
!389 = !DILocation(line: 443, column: 7, scope: !385)
!390 = !DILocation(line: 445, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !362, file: !66, line: 445, column: 8)
!392 = !DILocation(line: 445, column: 19, scope: !391)
!393 = !DILocation(line: 445, column: 26, scope: !391)
!394 = !DILocation(line: 445, column: 8, scope: !362)
!395 = !DILocation(line: 446, column: 19, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !66, line: 445, column: 34)
!397 = !DILocation(line: 446, column: 27, scope: !396)
!398 = !DILocation(line: 446, column: 7, scope: !399)
!399 = !DILexicalBlockFile(scope: !396, file: !66, discriminator: 1)
!400 = !DILocation(line: 448, column: 7, scope: !396)
!401 = !DILocation(line: 450, column: 18, scope: !402)
!402 = distinct !DILexicalBlock(scope: !362, file: !66, line: 450, column: 8)
!403 = !DILocation(line: 450, column: 29, scope: !402)
!404 = !DILocation(line: 450, column: 8, scope: !402)
!405 = !DILocation(line: 450, column: 51, scope: !402)
!406 = !DILocation(line: 450, column: 8, scope: !362)
!407 = !DILocation(line: 451, column: 11, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !66, line: 451, column: 11)
!409 = distinct !DILexicalBlock(scope: !402, file: !66, line: 450, column: 57)
!410 = !DILocation(line: 451, column: 22, scope: !408)
!411 = !DILocation(line: 451, column: 30, scope: !408)
!412 = !DILocation(line: 451, column: 11, scope: !409)
!413 = !DILocation(line: 452, column: 22, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !66, line: 451, column: 38)
!415 = !DILocation(line: 452, column: 30, scope: !414)
!416 = !DILocation(line: 452, column: 10, scope: !417)
!417 = !DILexicalBlockFile(scope: !414, file: !66, discriminator: 1)
!418 = !DILocation(line: 454, column: 10, scope: !414)
!419 = !DILocation(line: 456, column: 4, scope: !409)
!420 = !DILocation(line: 457, column: 4, scope: !362)
!421 = !DILocation(line: 458, column: 1, scope: !362)
!422 = distinct !DISubprogram(name: "PostVerifySetKeyOptions", scope: !66, file: !66, line: 525, type: !363, isLocal: true, isDefinition: true, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!423 = !DILocalVariable(name: "context", arg: 1, scope: !422, file: !66, line: 525, type: !122)
!424 = !DILocation(line: 525, column: 41, scope: !422)
!425 = !DILocalVariable(name: "group", arg: 2, scope: !422, file: !66, line: 525, type: !127)
!426 = !DILocation(line: 525, column: 64, scope: !422)
!427 = !DILocalVariable(name: "data", arg: 3, scope: !422, file: !66, line: 526, type: !148)
!428 = !DILocation(line: 526, column: 34, scope: !422)
!429 = !DILocalVariable(name: "error", arg: 4, scope: !422, file: !66, line: 526, type: !365)
!430 = !DILocation(line: 526, column: 49, scope: !422)
!431 = !DILocalVariable(name: "usedOptions", scope: !422, file: !66, line: 528, type: !82)
!432 = !DILocation(line: 528, column: 8, scope: !422)
!433 = !DILocalVariable(name: "nsOptions", scope: !422, file: !66, line: 529, type: !64)
!434 = !DILocation(line: 529, column: 27, scope: !422)
!435 = !DILocation(line: 531, column: 42, scope: !422)
!436 = !DILocation(line: 531, column: 16, scope: !422)
!437 = !DILocation(line: 531, column: 14, scope: !422)
!438 = !DILocation(line: 533, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !422, file: !66, line: 533, column: 8)
!440 = !DILocation(line: 533, column: 19, scope: !439)
!441 = !DILocation(line: 533, column: 27, scope: !439)
!442 = !DILocation(line: 533, column: 8, scope: !422)
!443 = !DILocation(line: 534, column: 19, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !66, line: 533, column: 35)
!445 = !DILocation(line: 534, column: 27, scope: !444)
!446 = !DILocation(line: 534, column: 7, scope: !447)
!447 = !DILexicalBlockFile(scope: !444, file: !66, discriminator: 1)
!448 = !DILocation(line: 536, column: 7, scope: !444)
!449 = !DILocation(line: 538, column: 8, scope: !450)
!450 = distinct !DILexicalBlock(scope: !422, file: !66, line: 538, column: 8)
!451 = !DILocation(line: 538, column: 19, scope: !450)
!452 = !DILocation(line: 538, column: 26, scope: !450)
!453 = !DILocation(line: 538, column: 8, scope: !422)
!454 = !DILocation(line: 539, column: 19, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !66, line: 538, column: 34)
!456 = !DILocation(line: 539, column: 27, scope: !455)
!457 = !DILocation(line: 539, column: 7, scope: !458)
!458 = !DILexicalBlockFile(scope: !455, file: !66, discriminator: 1)
!459 = !DILocation(line: 541, column: 7, scope: !455)
!460 = !DILocation(line: 543, column: 18, scope: !461)
!461 = distinct !DILexicalBlock(scope: !422, file: !66, line: 543, column: 8)
!462 = !DILocation(line: 543, column: 29, scope: !461)
!463 = !DILocation(line: 543, column: 8, scope: !461)
!464 = !DILocation(line: 543, column: 49, scope: !461)
!465 = !DILocation(line: 543, column: 8, scope: !422)
!466 = !DILocation(line: 544, column: 11, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !66, line: 544, column: 11)
!468 = distinct !DILexicalBlock(scope: !461, file: !66, line: 543, column: 55)
!469 = !DILocation(line: 544, column: 22, scope: !467)
!470 = !DILocation(line: 544, column: 30, scope: !467)
!471 = !DILocation(line: 544, column: 11, scope: !468)
!472 = !DILocation(line: 545, column: 22, scope: !473)
!473 = distinct !DILexicalBlock(scope: !467, file: !66, line: 544, column: 38)
!474 = !DILocation(line: 545, column: 30, scope: !473)
!475 = !DILocation(line: 545, column: 10, scope: !476)
!476 = !DILexicalBlockFile(scope: !473, file: !66, discriminator: 1)
!477 = !DILocation(line: 547, column: 10, scope: !473)
!478 = !DILocation(line: 549, column: 11, scope: !479)
!479 = distinct !DILexicalBlock(scope: !468, file: !66, line: 549, column: 11)
!480 = !DILocation(line: 549, column: 22, scope: !479)
!481 = !DILocation(line: 549, column: 33, scope: !479)
!482 = !DILocation(line: 549, column: 11, scope: !468)
!483 = !DILocation(line: 550, column: 10, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !66, line: 549, column: 41)
!485 = !DILocation(line: 551, column: 7, scope: !484)
!486 = !DILocation(line: 552, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !468, file: !66, line: 552, column: 11)
!488 = !DILocation(line: 552, column: 22, scope: !487)
!489 = !DILocation(line: 552, column: 39, scope: !487)
!490 = !DILocation(line: 552, column: 11, scope: !468)
!491 = !DILocation(line: 553, column: 10, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !66, line: 552, column: 47)
!493 = !DILocation(line: 554, column: 7, scope: !492)
!494 = !DILocation(line: 555, column: 11, scope: !495)
!495 = distinct !DILexicalBlock(scope: !468, file: !66, line: 555, column: 11)
!496 = !DILocation(line: 555, column: 22, scope: !495)
!497 = !DILocation(line: 555, column: 36, scope: !495)
!498 = !DILocation(line: 555, column: 11, scope: !468)
!499 = !DILocation(line: 556, column: 10, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !66, line: 555, column: 42)
!501 = !DILocation(line: 557, column: 7, scope: !500)
!502 = !DILocation(line: 558, column: 12, scope: !503)
!503 = distinct !DILexicalBlock(scope: !468, file: !66, line: 558, column: 11)
!504 = !DILocation(line: 558, column: 24, scope: !503)
!505 = !DILocation(line: 558, column: 29, scope: !503)
!506 = !DILocation(line: 558, column: 33, scope: !507)
!507 = !DILexicalBlockFile(scope: !503, file: !66, discriminator: 1)
!508 = !DILocation(line: 558, column: 45, scope: !507)
!509 = !DILocation(line: 558, column: 11, scope: !507)
!510 = !DILocation(line: 559, column: 22, scope: !511)
!511 = distinct !DILexicalBlock(scope: !503, file: !66, line: 558, column: 52)
!512 = !DILocation(line: 559, column: 30, scope: !511)
!513 = !DILocation(line: 559, column: 10, scope: !514)
!514 = !DILexicalBlockFile(scope: !511, file: !66, discriminator: 1)
!515 = !DILocation(line: 561, column: 10, scope: !511)
!516 = !DILocation(line: 563, column: 4, scope: !468)
!517 = !DILocation(line: 564, column: 4, scope: !422)
!518 = !DILocation(line: 565, column: 1, scope: !422)
!519 = distinct !DISubprogram(name: "PostVerifyDeleteKeyOptions", scope: !66, file: !66, line: 479, type: !363, isLocal: true, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!520 = !DILocalVariable(name: "context", arg: 1, scope: !519, file: !66, line: 479, type: !122)
!521 = !DILocation(line: 479, column: 44, scope: !519)
!522 = !DILocalVariable(name: "group", arg: 2, scope: !519, file: !66, line: 479, type: !127)
!523 = !DILocation(line: 479, column: 67, scope: !519)
!524 = !DILocalVariable(name: "data", arg: 3, scope: !519, file: !66, line: 480, type: !148)
!525 = !DILocation(line: 480, column: 37, scope: !519)
!526 = !DILocalVariable(name: "error", arg: 4, scope: !519, file: !66, line: 480, type: !365)
!527 = !DILocation(line: 480, column: 52, scope: !519)
!528 = !DILocalVariable(name: "nsOptions", scope: !519, file: !66, line: 482, type: !64)
!529 = !DILocation(line: 482, column: 27, scope: !519)
!530 = !DILocation(line: 484, column: 42, scope: !519)
!531 = !DILocation(line: 484, column: 16, scope: !519)
!532 = !DILocation(line: 484, column: 14, scope: !519)
!533 = !DILocation(line: 486, column: 8, scope: !534)
!534 = distinct !DILexicalBlock(scope: !519, file: !66, line: 486, column: 8)
!535 = !DILocation(line: 486, column: 19, scope: !534)
!536 = !DILocation(line: 486, column: 27, scope: !534)
!537 = !DILocation(line: 486, column: 8, scope: !519)
!538 = !DILocation(line: 487, column: 19, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !66, line: 486, column: 35)
!540 = !DILocation(line: 487, column: 27, scope: !539)
!541 = !DILocation(line: 487, column: 7, scope: !542)
!542 = !DILexicalBlockFile(scope: !539, file: !66, discriminator: 1)
!543 = !DILocation(line: 489, column: 7, scope: !539)
!544 = !DILocation(line: 491, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !519, file: !66, line: 491, column: 8)
!546 = !DILocation(line: 491, column: 19, scope: !545)
!547 = !DILocation(line: 491, column: 26, scope: !545)
!548 = !DILocation(line: 491, column: 8, scope: !519)
!549 = !DILocation(line: 492, column: 19, scope: !550)
!550 = distinct !DILexicalBlock(scope: !545, file: !66, line: 491, column: 34)
!551 = !DILocation(line: 492, column: 27, scope: !550)
!552 = !DILocation(line: 492, column: 7, scope: !553)
!553 = !DILexicalBlockFile(scope: !550, file: !66, discriminator: 1)
!554 = !DILocation(line: 494, column: 7, scope: !550)
!555 = !DILocation(line: 496, column: 18, scope: !556)
!556 = distinct !DILexicalBlock(scope: !519, file: !66, line: 496, column: 8)
!557 = !DILocation(line: 496, column: 29, scope: !556)
!558 = !DILocation(line: 496, column: 8, scope: !556)
!559 = !DILocation(line: 496, column: 52, scope: !556)
!560 = !DILocation(line: 496, column: 8, scope: !519)
!561 = !DILocation(line: 497, column: 11, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !66, line: 497, column: 11)
!563 = distinct !DILexicalBlock(scope: !556, file: !66, line: 496, column: 58)
!564 = !DILocation(line: 497, column: 22, scope: !562)
!565 = !DILocation(line: 497, column: 30, scope: !562)
!566 = !DILocation(line: 497, column: 11, scope: !563)
!567 = !DILocation(line: 498, column: 22, scope: !568)
!568 = distinct !DILexicalBlock(scope: !562, file: !66, line: 497, column: 38)
!569 = !DILocation(line: 498, column: 30, scope: !568)
!570 = !DILocation(line: 498, column: 10, scope: !571)
!571 = !DILexicalBlockFile(scope: !568, file: !66, discriminator: 1)
!572 = !DILocation(line: 500, column: 10, scope: !568)
!573 = !DILocation(line: 502, column: 4, scope: !563)
!574 = !DILocation(line: 503, column: 4, scope: !519)
!575 = !DILocation(line: 504, column: 1, scope: !519)
!576 = distinct !DISubprogram(name: "PrintUsage", scope: !66, file: !66, line: 74, type: !577, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !122}
!579 = !DILocalVariable(name: "optCtx", arg: 1, scope: !576, file: !66, line: 74, type: !122)
!580 = !DILocation(line: 74, column: 28, scope: !576)
!581 = !DILocalVariable(name: "usage", scope: !576, file: !66, line: 76, type: !70)
!582 = !DILocation(line: 76, column: 11, scope: !576)
!583 = !DILocation(line: 78, column: 38, scope: !576)
!584 = !DILocation(line: 78, column: 12, scope: !576)
!585 = !DILocation(line: 78, column: 10, scope: !576)
!586 = !DILocation(line: 79, column: 21, scope: !576)
!587 = !DILocation(line: 79, column: 4, scope: !576)
!588 = !DILocation(line: 80, column: 11, scope: !576)
!589 = !DILocation(line: 80, column: 4, scope: !576)
!590 = !DILocation(line: 81, column: 1, scope: !576)
!591 = distinct !DISubprogram(name: "ValidateNSCommands", scope: !66, file: !66, line: 126, type: !592, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!592 = !DISubroutineType(types: !593)
!593 = !{!80, !141}
!594 = !DILocalVariable(name: "cmdName", arg: 1, scope: !591, file: !66, line: 126, type: !141)
!595 = !DILocation(line: 126, column: 33, scope: !591)
!596 = !DILocation(line: 128, column: 19, scope: !597)
!597 = distinct !DILexicalBlock(scope: !591, file: !66, line: 128, column: 8)
!598 = !DILocation(line: 128, column: 9, scope: !597)
!599 = !DILocation(line: 128, column: 41, scope: !597)
!600 = !DILocation(line: 128, column: 47, scope: !597)
!601 = !DILocation(line: 129, column: 19, scope: !597)
!602 = !DILocation(line: 129, column: 9, scope: !597)
!603 = !DILocation(line: 129, column: 39, scope: !597)
!604 = !DILocation(line: 129, column: 45, scope: !597)
!605 = !DILocation(line: 130, column: 19, scope: !597)
!606 = !DILocation(line: 130, column: 9, scope: !597)
!607 = !DILocation(line: 130, column: 42, scope: !597)
!608 = !DILocation(line: 128, column: 8, scope: !609)
!609 = !DILexicalBlockFile(scope: !591, file: !66, discriminator: 1)
!610 = !DILocation(line: 131, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !597, file: !66, line: 130, column: 49)
!612 = !DILocation(line: 133, column: 14, scope: !613)
!613 = distinct !DILexicalBlock(scope: !597, file: !66, line: 132, column: 11)
!614 = !DILocation(line: 133, column: 50, scope: !613)
!615 = !DILocation(line: 133, column: 7, scope: !613)
!616 = !DILocation(line: 134, column: 7, scope: !613)
!617 = !DILocation(line: 136, column: 1, scope: !591)
!618 = distinct !DISubprogram(name: "RunNamespaceCommand", scope: !66, file: !66, line: 296, type: !619, isLocal: true, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !64}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !622, line: 230, baseType: !73)
!622 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!623 = !DILocalVariable(name: "nsOptions", arg: 1, scope: !618, file: !66, line: 296, type: !64)
!624 = !DILocation(line: 296, column: 44, scope: !618)
!625 = !DILocalVariable(name: "result", scope: !618, file: !66, line: 298, type: !84)
!626 = !DILocation(line: 298, column: 10, scope: !618)
!627 = !DILocalVariable(name: "resultLen", scope: !618, file: !66, line: 299, type: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !629, line: 216, baseType: !630)
!629 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!630 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!631 = !DILocation(line: 299, column: 11, scope: !618)
!632 = !DILocalVariable(name: "status", scope: !618, file: !66, line: 300, type: !621)
!633 = !DILocation(line: 300, column: 9, scope: !618)
!634 = !DILocalVariable(name: "opCode", scope: !618, file: !66, line: 301, type: !70)
!635 = !DILocation(line: 301, column: 11, scope: !618)
!636 = !DILocalVariable(name: "keyValueData", scope: !618, file: !66, line: 302, type: !70)
!637 = !DILocation(line: 302, column: 11, scope: !618)
!638 = !DILocalVariable(name: "keyValueLength", scope: !618, file: !66, line: 303, type: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !112, line: 66, baseType: !630)
!640 = !DILocation(line: 303, column: 10, scope: !618)
!641 = !DILocalVariable(name: "nscmd", scope: !618, file: !66, line: 305, type: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!644 = !DILocation(line: 305, column: 16, scope: !618)
!645 = !DILocation(line: 305, column: 52, scope: !618)
!646 = !DILocation(line: 305, column: 63, scope: !618)
!647 = !DILocation(line: 305, column: 24, scope: !618)
!648 = !DILocalVariable(name: "buf", scope: !618, file: !66, line: 307, type: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !650, line: 40, baseType: !651)
!650 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !650, line: 36, size: 192, align: 64, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !651, file: !650, line: 37, baseType: !84, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !651, file: !650, line: 38, baseType: !628, size: 64, align: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !651, file: !650, line: 39, baseType: !628, size: 64, align: 64, offset: 128)
!656 = !DILocation(line: 307, column: 11, scope: !618)
!657 = !DILocation(line: 309, column: 4, scope: !618)
!658 = !DILocation(line: 310, column: 29, scope: !659)
!659 = distinct !DILexicalBlock(scope: !618, file: !66, line: 310, column: 8)
!660 = !DILocation(line: 310, column: 43, scope: !659)
!661 = !DILocation(line: 310, column: 36, scope: !659)
!662 = !DILocation(line: 310, column: 9, scope: !663)
!663 = !DILexicalBlockFile(scope: !659, file: !66, discriminator: 2)
!664 = !DILocation(line: 310, column: 9, scope: !659)
!665 = !DILocation(line: 310, column: 51, scope: !659)
!666 = !DILocation(line: 311, column: 9, scope: !659)
!667 = !DILocation(line: 311, column: 37, scope: !659)
!668 = !DILocation(line: 312, column: 35, scope: !659)
!669 = !DILocation(line: 312, column: 46, scope: !659)
!670 = !DILocation(line: 312, column: 9, scope: !659)
!671 = !DILocation(line: 310, column: 8, scope: !672)
!672 = !DILexicalBlockFile(scope: !618, file: !66, discriminator: 1)
!673 = !DILocation(line: 313, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !659, file: !66, line: 312, column: 55)
!675 = !DILocation(line: 313, column: 7, scope: !674)
!676 = !DILocation(line: 314, column: 7, scope: !674)
!677 = !DILocation(line: 316, column: 15, scope: !678)
!678 = distinct !DILexicalBlock(scope: !618, file: !66, line: 316, column: 8)
!679 = !DILocation(line: 316, column: 26, scope: !678)
!680 = !DILocation(line: 316, column: 8, scope: !678)
!681 = !DILocation(line: 316, column: 41, scope: !678)
!682 = !DILocation(line: 316, column: 8, scope: !618)
!683 = !DILocation(line: 317, column: 16, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !66, line: 316, column: 47)
!685 = !DILocation(line: 317, column: 14, scope: !684)
!686 = !DILocation(line: 318, column: 4, scope: !684)
!687 = !DILocation(line: 319, column: 16, scope: !688)
!688 = distinct !DILexicalBlock(scope: !678, file: !66, line: 318, column: 11)
!689 = !DILocation(line: 319, column: 14, scope: !688)
!690 = !DILocation(line: 321, column: 18, scope: !691)
!691 = distinct !DILexicalBlock(scope: !618, file: !66, line: 321, column: 8)
!692 = !DILocation(line: 321, column: 29, scope: !691)
!693 = !DILocation(line: 321, column: 8, scope: !691)
!694 = !DILocation(line: 321, column: 51, scope: !691)
!695 = !DILocation(line: 321, column: 8, scope: !618)
!696 = !DILocation(line: 323, column: 38, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !66, line: 323, column: 11)
!698 = distinct !DILexicalBlock(scope: !691, file: !66, line: 321, column: 57)
!699 = !DILocation(line: 323, column: 49, scope: !697)
!700 = !DILocation(line: 323, column: 12, scope: !697)
!701 = !DILocation(line: 323, column: 11, scope: !698)
!702 = !DILocation(line: 324, column: 17, scope: !703)
!703 = distinct !DILexicalBlock(scope: !697, file: !66, line: 323, column: 59)
!704 = !DILocation(line: 324, column: 10, scope: !703)
!705 = !DILocation(line: 325, column: 10, scope: !703)
!706 = !DILocation(line: 327, column: 4, scope: !698)
!707 = !DILocation(line: 327, column: 25, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !66, discriminator: 1)
!709 = distinct !DILexicalBlock(scope: !691, file: !66, line: 327, column: 15)
!710 = !DILocation(line: 327, column: 36, scope: !708)
!711 = !DILocation(line: 327, column: 15, scope: !708)
!712 = !DILocation(line: 327, column: 56, scope: !708)
!713 = !DILocation(line: 329, column: 12, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !66, line: 329, column: 11)
!715 = distinct !DILexicalBlock(scope: !709, file: !66, line: 327, column: 62)
!716 = !DILocation(line: 329, column: 43, scope: !714)
!717 = !DILocation(line: 330, column: 38, scope: !714)
!718 = !DILocation(line: 330, column: 12, scope: !714)
!719 = !DILocation(line: 330, column: 45, scope: !714)
!720 = !DILocation(line: 331, column: 38, scope: !714)
!721 = !DILocation(line: 331, column: 49, scope: !714)
!722 = !DILocation(line: 331, column: 12, scope: !714)
!723 = !DILocation(line: 329, column: 11, scope: !724)
!724 = !DILexicalBlockFile(scope: !715, file: !66, discriminator: 1)
!725 = !DILocation(line: 332, column: 17, scope: !726)
!726 = distinct !DILexicalBlock(scope: !714, file: !66, line: 331, column: 59)
!727 = !DILocation(line: 332, column: 10, scope: !726)
!728 = !DILocation(line: 333, column: 10, scope: !726)
!729 = !DILocation(line: 335, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !715, file: !66, line: 335, column: 11)
!731 = !DILocation(line: 335, column: 22, scope: !730)
!732 = !DILocation(line: 335, column: 39, scope: !730)
!733 = !DILocation(line: 335, column: 11, scope: !715)
!734 = !DILocation(line: 336, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !66, line: 336, column: 14)
!736 = distinct !DILexicalBlock(scope: !730, file: !66, line: 335, column: 47)
!737 = !DILocation(line: 336, column: 25, scope: !735)
!738 = !DILocation(line: 336, column: 36, scope: !735)
!739 = !DILocation(line: 336, column: 14, scope: !736)
!740 = !DILocation(line: 337, column: 24, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !66, line: 337, column: 17)
!742 = distinct !DILexicalBlock(scope: !735, file: !66, line: 336, column: 44)
!743 = !DILocation(line: 337, column: 35, scope: !741)
!744 = !DILocation(line: 337, column: 17, scope: !741)
!745 = !DILocation(line: 337, column: 47, scope: !741)
!746 = !DILocation(line: 337, column: 17, scope: !742)
!747 = !DILocation(line: 338, column: 23, scope: !748)
!748 = distinct !DILexicalBlock(scope: !741, file: !66, line: 337, column: 53)
!749 = !DILocation(line: 338, column: 68, scope: !748)
!750 = !DILocation(line: 338, column: 16, scope: !748)
!751 = !DILocation(line: 339, column: 16, scope: !748)
!752 = !DILocation(line: 341, column: 44, scope: !753)
!753 = distinct !DILexicalBlock(scope: !742, file: !66, line: 341, column: 17)
!754 = !DILocation(line: 341, column: 55, scope: !753)
!755 = !DILocation(line: 341, column: 18, scope: !753)
!756 = !DILocation(line: 341, column: 67, scope: !753)
!757 = !DILocation(line: 342, column: 44, scope: !753)
!758 = !DILocation(line: 342, column: 55, scope: !753)
!759 = !DILocation(line: 342, column: 18, scope: !753)
!760 = !DILocation(line: 341, column: 17, scope: !761)
!761 = !DILexicalBlockFile(scope: !742, file: !66, discriminator: 1)
!762 = !DILocation(line: 343, column: 23, scope: !763)
!763 = distinct !DILexicalBlock(scope: !753, file: !66, line: 342, column: 71)
!764 = !DILocation(line: 343, column: 16, scope: !763)
!765 = !DILocation(line: 344, column: 16, scope: !763)
!766 = !DILocation(line: 346, column: 10, scope: !742)
!767 = !DILocation(line: 347, column: 17, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !66, line: 347, column: 17)
!769 = distinct !DILexicalBlock(scope: !735, file: !66, line: 346, column: 17)
!770 = !DILocation(line: 347, column: 67, scope: !768)
!771 = !DILocation(line: 347, column: 17, scope: !769)
!772 = !DILocation(line: 348, column: 16, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !66, line: 347, column: 75)
!774 = !DILocation(line: 350, column: 38, scope: !775)
!775 = distinct !DILexicalBlock(scope: !769, file: !66, line: 350, column: 17)
!776 = !DILocation(line: 350, column: 52, scope: !775)
!777 = !DILocation(line: 350, column: 67, scope: !775)
!778 = !DILocation(line: 350, column: 18, scope: !775)
!779 = !DILocation(line: 350, column: 72, scope: !775)
!780 = !DILocation(line: 351, column: 44, scope: !775)
!781 = !DILocation(line: 351, column: 55, scope: !775)
!782 = !DILocation(line: 351, column: 18, scope: !775)
!783 = !DILocation(line: 350, column: 17, scope: !784)
!784 = !DILexicalBlockFile(scope: !769, file: !66, discriminator: 1)
!785 = !DILocation(line: 352, column: 23, scope: !786)
!786 = distinct !DILexicalBlock(scope: !775, file: !66, line: 351, column: 71)
!787 = !DILocation(line: 352, column: 16, scope: !786)
!788 = !DILocation(line: 353, column: 16, scope: !786)
!789 = !DILocation(line: 356, column: 7, scope: !736)
!790 = !DILocation(line: 357, column: 31, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !66, line: 357, column: 14)
!792 = distinct !DILexicalBlock(scope: !730, file: !66, line: 356, column: 14)
!793 = !DILocation(line: 357, column: 42, scope: !791)
!794 = !DILocation(line: 357, column: 14, scope: !791)
!795 = !DILocation(line: 358, column: 63, scope: !791)
!796 = !DILocation(line: 357, column: 14, scope: !792)
!797 = !DILocation(line: 359, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !791, file: !66, line: 358, column: 71)
!799 = !DILocation(line: 361, column: 35, scope: !800)
!800 = distinct !DILexicalBlock(scope: !792, file: !66, line: 361, column: 14)
!801 = !DILocation(line: 361, column: 49, scope: !800)
!802 = !DILocation(line: 361, column: 64, scope: !800)
!803 = !DILocation(line: 361, column: 15, scope: !800)
!804 = !DILocation(line: 361, column: 69, scope: !800)
!805 = !DILocation(line: 362, column: 41, scope: !800)
!806 = !DILocation(line: 362, column: 52, scope: !800)
!807 = !DILocation(line: 362, column: 15, scope: !800)
!808 = !DILocation(line: 361, column: 14, scope: !809)
!809 = !DILexicalBlockFile(scope: !792, file: !66, discriminator: 1)
!810 = !DILocation(line: 363, column: 20, scope: !811)
!811 = distinct !DILexicalBlock(scope: !800, file: !66, line: 362, column: 68)
!812 = !DILocation(line: 363, column: 13, scope: !811)
!813 = !DILocation(line: 364, column: 13, scope: !811)
!814 = !DILocation(line: 367, column: 4, scope: !715)
!815 = !DILocation(line: 367, column: 25, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !66, discriminator: 1)
!817 = distinct !DILexicalBlock(scope: !709, file: !66, line: 367, column: 15)
!818 = !DILocation(line: 367, column: 36, scope: !816)
!819 = !DILocation(line: 367, column: 15, scope: !816)
!820 = !DILocation(line: 367, column: 59, scope: !816)
!821 = !DILocation(line: 369, column: 12, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !66, line: 369, column: 11)
!823 = distinct !DILexicalBlock(scope: !817, file: !66, line: 367, column: 65)
!824 = !DILocation(line: 369, column: 43, scope: !822)
!825 = !DILocation(line: 370, column: 38, scope: !822)
!826 = !DILocation(line: 370, column: 12, scope: !822)
!827 = !DILocation(line: 370, column: 46, scope: !822)
!828 = !DILocation(line: 371, column: 38, scope: !822)
!829 = !DILocation(line: 371, column: 49, scope: !822)
!830 = !DILocation(line: 371, column: 12, scope: !822)
!831 = !DILocation(line: 371, column: 58, scope: !822)
!832 = !DILocation(line: 372, column: 12, scope: !822)
!833 = !DILocation(line: 372, column: 42, scope: !822)
!834 = !DILocation(line: 373, column: 38, scope: !822)
!835 = !DILocation(line: 373, column: 49, scope: !822)
!836 = !DILocation(line: 373, column: 12, scope: !822)
!837 = !DILocation(line: 369, column: 11, scope: !838)
!838 = !DILexicalBlockFile(scope: !823, file: !66, discriminator: 1)
!839 = !DILocation(line: 374, column: 17, scope: !840)
!840 = distinct !DILexicalBlock(scope: !822, file: !66, line: 373, column: 65)
!841 = !DILocation(line: 374, column: 10, scope: !840)
!842 = !DILocation(line: 375, column: 10, scope: !840)
!843 = !DILocation(line: 377, column: 4, scope: !823)
!844 = !DILocation(line: 379, column: 8, scope: !845)
!845 = distinct !DILexicalBlock(scope: !618, file: !66, line: 379, column: 8)
!846 = !DILocation(line: 379, column: 19, scope: !845)
!847 = !DILocation(line: 379, column: 8, scope: !618)
!848 = !DILocation(line: 380, column: 28, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !66, line: 379, column: 35)
!850 = !DILocation(line: 380, column: 46, scope: !851)
!851 = !DILexicalBlockFile(scope: !849, file: !66, discriminator: 1)
!852 = !DILocation(line: 380, column: 7, scope: !853)
!853 = !DILexicalBlockFile(scope: !849, file: !66, discriminator: 2)
!854 = !DILocation(line: 381, column: 4, scope: !849)
!855 = !DILocation(line: 383, column: 35, scope: !618)
!856 = !DILocation(line: 384, column: 35, scope: !618)
!857 = !DILocation(line: 383, column: 13, scope: !672)
!858 = !DILocation(line: 383, column: 13, scope: !618)
!859 = !DILocation(line: 383, column: 11, scope: !618)
!860 = !DILocation(line: 385, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !618, file: !66, line: 385, column: 8)
!862 = !DILocation(line: 385, column: 8, scope: !618)
!863 = !DILocation(line: 386, column: 14, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !66, line: 385, column: 17)
!865 = !DILocation(line: 387, column: 13, scope: !864)
!866 = !DILocation(line: 387, column: 20, scope: !864)
!867 = !DILocation(line: 387, column: 24, scope: !868)
!868 = !DILexicalBlockFile(scope: !864, file: !66, discriminator: 1)
!869 = !DILocation(line: 387, column: 23, scope: !868)
!870 = !DILocation(line: 387, column: 13, scope: !868)
!871 = !DILocation(line: 387, column: 33, scope: !872)
!872 = !DILexicalBlockFile(scope: !864, file: !66, discriminator: 2)
!873 = !DILocation(line: 387, column: 13, scope: !872)
!874 = !DILocation(line: 387, column: 13, scope: !875)
!875 = !DILexicalBlockFile(scope: !864, file: !66, discriminator: 3)
!876 = !DILocation(line: 387, column: 13, scope: !877)
!877 = !DILexicalBlockFile(scope: !864, file: !66, discriminator: 4)
!878 = !DILocation(line: 386, column: 7, scope: !868)
!879 = !DILocation(line: 388, column: 4, scope: !864)
!880 = !DILocalVariable(name: "p", scope: !881, file: !66, line: 389, type: !84)
!881 = distinct !DILexicalBlock(scope: !861, file: !66, line: 388, column: 11)
!882 = !DILocation(line: 389, column: 13, scope: !881)
!883 = !DILocation(line: 389, column: 17, scope: !881)
!884 = !DILocation(line: 390, column: 11, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !66, line: 390, column: 11)
!886 = !DILocation(line: 390, column: 21, scope: !885)
!887 = !DILocation(line: 390, column: 11, scope: !881)
!888 = !DILocation(line: 391, column: 14, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !66, line: 391, column: 14)
!890 = distinct !DILexicalBlock(scope: !885, file: !66, line: 390, column: 27)
!891 = !DILocation(line: 391, column: 25, scope: !889)
!892 = !DILocation(line: 391, column: 14, scope: !890)
!893 = !DILocation(line: 392, column: 13, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !66, line: 391, column: 41)
!895 = !DILocation(line: 393, column: 10, scope: !894)
!896 = !DILocation(line: 394, column: 7, scope: !890)
!897 = !DILocation(line: 395, column: 14, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !66, line: 395, column: 14)
!899 = distinct !DILexicalBlock(scope: !885, file: !66, line: 394, column: 14)
!900 = !DILocation(line: 395, column: 25, scope: !898)
!901 = !DILocation(line: 395, column: 14, scope: !899)
!902 = !DILocation(line: 396, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !66, line: 395, column: 41)
!904 = !DILocation(line: 397, column: 10, scope: !903)
!905 = !DILocation(line: 398, column: 10, scope: !899)
!906 = !DILocation(line: 398, column: 17, scope: !907)
!907 = !DILexicalBlockFile(scope: !899, file: !66, discriminator: 1)
!908 = !DILocation(line: 398, column: 21, scope: !907)
!909 = !DILocation(line: 398, column: 30, scope: !907)
!910 = !DILocation(line: 398, column: 28, scope: !907)
!911 = !DILocation(line: 398, column: 19, scope: !907)
!912 = !DILocation(line: 398, column: 10, scope: !907)
!913 = !DILocation(line: 399, column: 26, scope: !914)
!914 = distinct !DILexicalBlock(scope: !899, file: !66, line: 398, column: 41)
!915 = !DILocation(line: 399, column: 13, scope: !914)
!916 = !DILocation(line: 400, column: 25, scope: !914)
!917 = !DILocation(line: 400, column: 18, scope: !914)
!918 = !DILocation(line: 400, column: 28, scope: !914)
!919 = !DILocation(line: 400, column: 15, scope: !914)
!920 = !DILocation(line: 398, column: 10, scope: !921)
!921 = !DILexicalBlockFile(scope: !899, file: !66, discriminator: 2)
!922 = distinct !{!922, !905}
!923 = !DILocation(line: 403, column: 13, scope: !881)
!924 = !DILocation(line: 403, column: 7, scope: !881)
!925 = !DILocation(line: 405, column: 10, scope: !618)
!926 = !DILocation(line: 405, column: 4, scope: !618)
!927 = !DILocation(line: 408, column: 4, scope: !618)
!928 = !DILocation(line: 409, column: 10, scope: !618)
!929 = !DILocation(line: 409, column: 4, scope: !618)
!930 = !DILocation(line: 410, column: 11, scope: !618)
!931 = !DILocation(line: 410, column: 4, scope: !618)
!932 = !DILocation(line: 411, column: 11, scope: !618)
!933 = !DILocation(line: 411, column: 4, scope: !618)
!934 = !DILocation(line: 412, column: 11, scope: !618)
!935 = !DILocation(line: 412, column: 4, scope: !618)
!936 = distinct !DISubprogram(name: "GetInternalNamespaceCommand", scope: !66, file: !66, line: 98, type: !937, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!937 = !DISubroutineType(types: !938)
!938 = !{!84, !141}
!939 = !DILocalVariable(name: "cmd", arg: 1, scope: !936, file: !66, line: 98, type: !141)
!940 = !DILocation(line: 98, column: 42, scope: !936)
!941 = !DILocation(line: 100, column: 18, scope: !942)
!942 = distinct !DILexicalBlock(scope: !936, file: !66, line: 100, column: 8)
!943 = !DILocation(line: 100, column: 8, scope: !942)
!944 = !DILocation(line: 100, column: 36, scope: !942)
!945 = !DILocation(line: 100, column: 8, scope: !936)
!946 = !DILocation(line: 101, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !66, line: 100, column: 42)
!948 = !DILocation(line: 102, column: 25, scope: !949)
!949 = distinct !DILexicalBlock(scope: !942, file: !66, line: 102, column: 15)
!950 = !DILocation(line: 102, column: 15, scope: !949)
!951 = !DILocation(line: 102, column: 41, scope: !949)
!952 = !DILocation(line: 102, column: 15, scope: !942)
!953 = !DILocation(line: 103, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !66, line: 102, column: 47)
!955 = !DILocation(line: 104, column: 25, scope: !956)
!956 = distinct !DILexicalBlock(scope: !949, file: !66, line: 104, column: 15)
!957 = !DILocation(line: 104, column: 15, scope: !956)
!958 = !DILocation(line: 104, column: 44, scope: !956)
!959 = !DILocation(line: 104, column: 15, scope: !949)
!960 = !DILocation(line: 105, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !956, file: !66, line: 104, column: 50)
!962 = !DILocation(line: 107, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !956, file: !66, line: 106, column: 11)
!964 = !DILocation(line: 109, column: 1, scope: !936)
!965 = distinct !DISubprogram(name: "DynBuf_AppendString", scope: !650, file: !650, line: 267, type: !966, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!966 = !DISubroutineType(types: !967)
!967 = !{!621, !968, !642}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, align: 64)
!969 = !DILocalVariable(name: "buf", arg: 1, scope: !965, file: !650, line: 267, type: !968)
!970 = !DILocation(line: 267, column: 29, scope: !965)
!971 = !DILocalVariable(name: "string", arg: 2, scope: !965, file: !650, line: 268, type: !642)
!972 = !DILocation(line: 268, column: 33, scope: !965)
!973 = !DILocation(line: 270, column: 25, scope: !965)
!974 = !DILocation(line: 270, column: 30, scope: !965)
!975 = !DILocation(line: 270, column: 45, scope: !965)
!976 = !DILocation(line: 270, column: 38, scope: !965)
!977 = !DILocation(line: 270, column: 53, scope: !965)
!978 = !DILocation(line: 270, column: 11, scope: !979)
!979 = !DILexicalBlockFile(scope: !965, file: !650, discriminator: 1)
!980 = !DILocation(line: 270, column: 4, scope: !965)
!981 = distinct !DISubprogram(name: "GetValueFromStdin", scope: !66, file: !66, line: 197, type: !982, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!982 = !DISubroutineType(types: !983)
!983 = !{!621, !984, !985}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!986 = !DILocalVariable(name: "data", arg: 1, scope: !981, file: !66, line: 197, type: !984)
!987 = !DILocation(line: 197, column: 27, scope: !981)
!988 = !DILocalVariable(name: "length", arg: 2, scope: !981, file: !66, line: 197, type: !985)
!989 = !DILocation(line: 197, column: 40, scope: !981)
!990 = !DILocalVariable(name: "gErr", scope: !981, file: !66, line: 199, type: !103)
!991 = !DILocation(line: 199, column: 12, scope: !981)
!992 = !DILocalVariable(name: "status", scope: !981, file: !66, line: 200, type: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !31, line: 75, baseType: !30)
!994 = !DILocation(line: 200, column: 14, scope: !981)
!995 = !DILocalVariable(name: "iochannel", scope: !981, file: !66, line: 201, type: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !31, line: 41, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !31, line: 97, size: 896, align: 64, elements: !999)
!999 = !{!1000, !1001, !1121, !1122, !1127, !1128, !1129, !1130, !1131, !1140, !1141, !1142, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !998, file: !31, line: 100, baseType: !81, size: 32, align: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !998, file: !31, line: 101, baseType: !1002, size: 64, align: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !31, line: 42, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !31, line: 131, size: 512, align: 64, elements: !1005)
!1005 = !{!1006, !1010, !1014, !1021, !1025, !1108, !1112, !1117}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !1004, file: !31, line: 133, baseType: !1007, size: 64, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64, align: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!993, !996, !70, !639, !985, !365}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !1004, file: !31, line: 138, baseType: !1011, size: 64, align: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64, align: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!993, !996, !141, !639, !985, !365}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !1004, file: !31, line: 143, baseType: !1015, size: 64, align: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64, align: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!993, !996, !1018, !1020, !365}
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !112, line: 51, baseType: !1019)
!1019 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !31, line: 82, baseType: !37)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !1004, file: !31, line: 147, baseType: !1022, size: 64, align: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64, align: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!993, !996, !365}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !1004, file: !31, line: 149, baseType: !1026, size: 64, align: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64, align: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!1029, !996, !1107}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64, align: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !43, line: 64, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !43, line: 171, size: 768, align: 64, elements: !1032)
!1032 = !{!1033, !1034, !1054, !1083, !1085, !1089, !1090, !1091, !1092, !1100, !1101, !1102, !1103}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !1031, file: !43, line: 174, baseType: !148, size: 64, align: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !1031, file: !43, line: 175, baseType: !1035, size: 64, align: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !43, line: 77, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !43, line: 196, size: 192, align: 64, elements: !1038)
!1038 = !{!1039, !1043, !1044}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1037, file: !43, line: 198, baseType: !1040, size: 64, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64, align: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !148}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !1037, file: !43, line: 199, baseType: !1040, size: 64, align: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1037, file: !43, line: 200, baseType: !1045, size: 64, align: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64, align: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !148, !1029, !1048, !1053}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !43, line: 155, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64, align: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!80, !148}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !1031, file: !43, line: 177, baseType: !1055, size: 64, align: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64, align: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !43, line: 130, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !43, line: 214, size: 384, align: 64, elements: !1059)
!1059 = !{!1060, !1065, !1069, !1073, !1077, !1078}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1058, file: !43, line: 216, baseType: !1061, size: 64, align: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64, align: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!80, !1029, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1058, file: !43, line: 218, baseType: !1066, size: 64, align: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64, align: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!80, !1029}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1058, file: !43, line: 219, baseType: !1070, size: 64, align: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64, align: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!80, !1029, !1049, !148}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !1058, file: !43, line: 222, baseType: !1074, size: 64, align: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64, align: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1029}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !1058, file: !43, line: 226, baseType: !1049, size: 64, align: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !1058, file: !43, line: 227, baseType: !1079, size: 64, align: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !43, line: 212, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64, align: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !1031, file: !43, line: 178, baseType: !1084, size: 32, align: 32, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !72, line: 55, baseType: !113)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1031, file: !43, line: 180, baseType: !1086, size: 64, align: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64, align: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !43, line: 48, baseType: !1088)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !43, line: 48, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1031, file: !43, line: 182, baseType: !81, size: 32, align: 32, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !43, line: 183, baseType: !1084, size: 32, align: 32, offset: 352)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !1031, file: !43, line: 184, baseType: !1084, size: 32, align: 32, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !1031, file: !43, line: 186, baseType: !1093, size: 64, align: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64, align: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !1095, line: 37, baseType: !1096)
!1095 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !1095, line: 39, size: 128, align: 64, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1096, file: !1095, line: 41, baseType: !148, size: 64, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1096, file: !1095, line: 42, baseType: !1093, size: 64, align: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1031, file: !43, line: 188, baseType: !1029, size: 64, align: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1031, file: !43, line: 189, baseType: !1029, size: 64, align: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1031, file: !43, line: 191, baseType: !84, size: 64, align: 64, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1031, file: !43, line: 193, baseType: !1104, size: 64, align: 64, offset: 704)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !43, line: 65, baseType: !1106)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !43, line: 65, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !43, line: 39, baseType: !42)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !1004, file: !31, line: 151, baseType: !1109, size: 64, align: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, align: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !996}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !1004, file: !31, line: 152, baseType: !1113, size: 64, align: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64, align: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!993, !996, !1116, !365}
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !31, line: 95, baseType: !51)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !1004, file: !31, line: 155, baseType: !1118, size: 64, align: 64, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64, align: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!1116, !996}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !998, file: !31, line: 103, baseType: !70, size: 64, align: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !998, file: !31, line: 104, baseType: !1123, size: 64, align: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !1124, line: 77, baseType: !1125)
!1124 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64, align: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !1124, line: 77, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !998, file: !31, line: 105, baseType: !1123, size: 64, align: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !998, file: !31, line: 106, baseType: !70, size: 64, align: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !998, file: !31, line: 107, baseType: !1084, size: 32, align: 32, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !998, file: !31, line: 109, baseType: !639, size: 64, align: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !998, file: !31, line: 110, baseType: !1132, size: 64, align: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !1134, line: 39, baseType: !1135)
!1134 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/open-vm-tools/line1352")
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !1134, line: 41, size: 192, align: 64, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1135, file: !1134, line: 43, baseType: !70, size: 64, align: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1135, file: !1134, line: 44, baseType: !639, size: 64, align: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !1135, file: !1134, line: 45, baseType: !639, size: 64, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !998, file: !31, line: 111, baseType: !1132, size: 64, align: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !998, file: !31, line: 112, baseType: !1132, size: 64, align: 64, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !998, file: !31, line: 113, baseType: !1143, size: 48, align: 8, offset: 704)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 48, align: 8, elements: !166)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !998, file: !31, line: 117, baseType: !1084, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !998, file: !31, line: 118, baseType: !1084, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !998, file: !31, line: 119, baseType: !1084, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !998, file: !31, line: 120, baseType: !1084, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !998, file: !31, line: 121, baseType: !1084, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !998, file: !31, line: 122, baseType: !1084, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !998, file: !31, line: 124, baseType: !148, size: 64, align: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !998, file: !31, line: 125, baseType: !148, size: 64, align: 64, offset: 832)
!1152 = !DILocation(line: 201, column: 16, scope: !981)
!1153 = !DILocalVariable(name: "retVal", scope: !981, file: !66, line: 202, type: !621)
!1154 = !DILocation(line: 202, column: 9, scope: !981)
!1155 = !DILocation(line: 206, column: 16, scope: !981)
!1156 = !DILocation(line: 206, column: 14, scope: !981)
!1157 = !DILocation(line: 211, column: 38, scope: !981)
!1158 = !DILocation(line: 211, column: 49, scope: !981)
!1159 = !DILocation(line: 211, column: 55, scope: !981)
!1160 = !DILocation(line: 211, column: 13, scope: !981)
!1161 = !DILocation(line: 211, column: 11, scope: !981)
!1162 = !DILocation(line: 213, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !981, file: !66, line: 213, column: 8)
!1164 = !DILocation(line: 213, column: 15, scope: !1163)
!1165 = !DILocation(line: 213, column: 8, scope: !981)
!1166 = !DILocation(line: 214, column: 14, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !66, line: 213, column: 38)
!1168 = !DILocation(line: 215, column: 15, scope: !1167)
!1169 = !DILocation(line: 215, column: 25, scope: !1167)
!1170 = !DILocation(line: 215, column: 34, scope: !1167)
!1171 = !DILocation(line: 215, column: 39, scope: !1167)
!1172 = !DILocation(line: 215, column: 48, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1167, file: !66, discriminator: 1)
!1174 = !DILocation(line: 215, column: 54, scope: !1173)
!1175 = !DILocation(line: 215, column: 34, scope: !1173)
!1176 = !DILocation(line: 215, column: 34, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1167, file: !66, discriminator: 2)
!1178 = !DILocation(line: 215, column: 34, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1167, file: !66, discriminator: 3)
!1180 = !DILocation(line: 214, column: 7, scope: !1173)
!1181 = !DILocation(line: 216, column: 14, scope: !1167)
!1182 = !DILocation(line: 217, column: 4, scope: !1167)
!1183 = !DILocation(line: 218, column: 12, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !66, line: 218, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1163, file: !66, line: 217, column: 11)
!1186 = !DILocation(line: 218, column: 11, scope: !1184)
!1187 = !DILocation(line: 218, column: 19, scope: !1184)
!1188 = !DILocation(line: 218, column: 11, scope: !1185)
!1189 = !DILocation(line: 219, column: 17, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !66, line: 218, column: 34)
!1191 = !DILocation(line: 220, column: 17, scope: !1190)
!1192 = !DILocation(line: 221, column: 16, scope: !1190)
!1193 = !DILocation(line: 220, column: 10, scope: !1190)
!1194 = !DILocation(line: 222, column: 7, scope: !1190)
!1195 = !DILocation(line: 222, column: 19, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !66, discriminator: 1)
!1197 = distinct !DILexicalBlock(scope: !1184, file: !66, line: 222, column: 18)
!1198 = !DILocation(line: 222, column: 18, scope: !1196)
!1199 = !DILocation(line: 222, column: 26, scope: !1196)
!1200 = !DILocation(line: 223, column: 17, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !66, line: 222, column: 32)
!1202 = !DILocation(line: 224, column: 17, scope: !1201)
!1203 = !DILocation(line: 224, column: 63, scope: !1201)
!1204 = !DILocation(line: 224, column: 10, scope: !1201)
!1205 = !DILocation(line: 225, column: 7, scope: !1201)
!1206 = !DILocation(line: 227, column: 8, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !981, file: !66, line: 227, column: 8)
!1208 = !DILocation(line: 227, column: 15, scope: !1207)
!1209 = !DILocation(line: 227, column: 8, scope: !981)
!1210 = !DILocation(line: 228, column: 15, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !66, line: 227, column: 23)
!1212 = !DILocation(line: 228, column: 14, scope: !1211)
!1213 = !DILocation(line: 228, column: 7, scope: !1211)
!1214 = !DILocation(line: 229, column: 8, scope: !1211)
!1215 = !DILocation(line: 229, column: 13, scope: !1211)
!1216 = !DILocation(line: 230, column: 8, scope: !1211)
!1217 = !DILocation(line: 230, column: 15, scope: !1211)
!1218 = !DILocation(line: 231, column: 4, scope: !1211)
!1219 = !DILocation(line: 232, column: 11, scope: !981)
!1220 = !DILocation(line: 232, column: 4, scope: !981)
!1221 = !DILocation(line: 233, column: 11, scope: !981)
!1222 = !DILocation(line: 233, column: 4, scope: !981)
!1223 = distinct !DISubprogram(name: "GetValueFromFile", scope: !66, file: !66, line: 253, type: !1224, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!621, !642, !93, !985}
!1226 = !DILocalVariable(name: "filePath", arg: 1, scope: !1223, file: !66, line: 253, type: !642)
!1227 = !DILocation(line: 253, column: 30, scope: !1223)
!1228 = !DILocalVariable(name: "fileContents", arg: 2, scope: !1223, file: !66, line: 253, type: !93)
!1229 = !DILocation(line: 253, column: 47, scope: !1223)
!1230 = !DILocalVariable(name: "length", arg: 3, scope: !1223, file: !66, line: 253, type: !985)
!1231 = !DILocation(line: 253, column: 68, scope: !1223)
!1232 = !DILocalVariable(name: "gErr", scope: !1223, file: !66, line: 255, type: !103)
!1233 = !DILocation(line: 255, column: 12, scope: !1223)
!1234 = !DILocalVariable(name: "retVal", scope: !1223, file: !66, line: 256, type: !621)
!1235 = !DILocation(line: 256, column: 9, scope: !1223)
!1236 = !DILocation(line: 257, column: 33, scope: !1223)
!1237 = !DILocation(line: 257, column: 43, scope: !1223)
!1238 = !DILocation(line: 257, column: 57, scope: !1223)
!1239 = !DILocation(line: 257, column: 13, scope: !1223)
!1240 = !DILocation(line: 257, column: 11, scope: !1223)
!1241 = !DILocation(line: 258, column: 8, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1223, file: !66, line: 258, column: 8)
!1243 = !DILocation(line: 258, column: 15, scope: !1242)
!1244 = !DILocation(line: 258, column: 8, scope: !1223)
!1245 = !DILocation(line: 259, column: 14, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1242, file: !66, line: 258, column: 23)
!1247 = !DILocation(line: 259, column: 38, scope: !1246)
!1248 = !DILocation(line: 260, column: 16, scope: !1246)
!1249 = !DILocation(line: 260, column: 21, scope: !1246)
!1250 = !DILocation(line: 260, column: 30, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1246, file: !66, discriminator: 1)
!1252 = !DILocation(line: 260, column: 36, scope: !1251)
!1253 = !DILocation(line: 260, column: 16, scope: !1251)
!1254 = !DILocation(line: 260, column: 16, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1246, file: !66, discriminator: 2)
!1256 = !DILocation(line: 260, column: 16, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1246, file: !66, discriminator: 3)
!1258 = !DILocation(line: 261, column: 15, scope: !1246)
!1259 = !DILocation(line: 259, column: 7, scope: !1251)
!1260 = !DILocation(line: 262, column: 4, scope: !1246)
!1261 = !DILocation(line: 263, column: 12, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !66, line: 263, column: 11)
!1263 = distinct !DILexicalBlock(scope: !1242, file: !66, line: 262, column: 11)
!1264 = !DILocation(line: 263, column: 11, scope: !1262)
!1265 = !DILocation(line: 263, column: 19, scope: !1262)
!1266 = !DILocation(line: 263, column: 11, scope: !1263)
!1267 = !DILocation(line: 264, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !66, line: 263, column: 34)
!1269 = !DILocation(line: 265, column: 17, scope: !1268)
!1270 = !DILocation(line: 266, column: 18, scope: !1268)
!1271 = !DILocation(line: 265, column: 10, scope: !1268)
!1272 = !DILocation(line: 267, column: 7, scope: !1268)
!1273 = !DILocation(line: 267, column: 19, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1275, file: !66, discriminator: 1)
!1275 = distinct !DILexicalBlock(scope: !1262, file: !66, line: 267, column: 18)
!1276 = !DILocation(line: 267, column: 18, scope: !1274)
!1277 = !DILocation(line: 267, column: 26, scope: !1274)
!1278 = !DILocation(line: 268, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !66, line: 267, column: 32)
!1280 = !DILocation(line: 269, column: 17, scope: !1279)
!1281 = !DILocation(line: 269, column: 57, scope: !1279)
!1282 = !DILocation(line: 269, column: 10, scope: !1279)
!1283 = !DILocation(line: 270, column: 7, scope: !1279)
!1284 = !DILocation(line: 272, column: 8, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1223, file: !66, line: 272, column: 8)
!1286 = !DILocation(line: 272, column: 15, scope: !1285)
!1287 = !DILocation(line: 272, column: 8, scope: !1223)
!1288 = !DILocation(line: 273, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !66, line: 272, column: 23)
!1290 = !DILocation(line: 273, column: 14, scope: !1289)
!1291 = !DILocation(line: 273, column: 7, scope: !1289)
!1292 = !DILocation(line: 274, column: 8, scope: !1289)
!1293 = !DILocation(line: 274, column: 21, scope: !1289)
!1294 = !DILocation(line: 275, column: 8, scope: !1289)
!1295 = !DILocation(line: 275, column: 15, scope: !1289)
!1296 = !DILocation(line: 276, column: 4, scope: !1289)
!1297 = !DILocation(line: 277, column: 11, scope: !1223)
!1298 = !DILocation(line: 277, column: 4, scope: !1223)
!1299 = !DILocation(line: 278, column: 11, scope: !1223)
!1300 = !DILocation(line: 278, column: 4, scope: !1223)
!1301 = distinct !DISubprogram(name: "PrintInternalCommand", scope: !66, file: !66, line: 152, type: !1302, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !642, !628}
!1304 = !DILocalVariable(name: "data", arg: 1, scope: !1301, file: !66, line: 152, type: !642)
!1305 = !DILocation(line: 152, column: 34, scope: !1301)
!1306 = !DILocalVariable(name: "dataSize", arg: 2, scope: !1301, file: !66, line: 152, type: !628)
!1307 = !DILocation(line: 152, column: 47, scope: !1301)
!1308 = !DILocalVariable(name: "readCounter", scope: !1301, file: !66, line: 154, type: !82)
!1309 = !DILocation(line: 154, column: 8, scope: !1301)
!1310 = !DILocalVariable(name: "tmp", scope: !1301, file: !66, line: 155, type: !84)
!1311 = !DILocation(line: 155, column: 10, scope: !1301)
!1312 = !DILocalVariable(name: "printBuf", scope: !1301, file: !66, line: 156, type: !84)
!1313 = !DILocation(line: 156, column: 10, scope: !1301)
!1314 = !DILocation(line: 157, column: 8, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1301, file: !66, line: 157, column: 8)
!1316 = !DILocation(line: 157, column: 17, scope: !1315)
!1317 = !DILocation(line: 157, column: 8, scope: !1301)
!1318 = !DILocation(line: 158, column: 39, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !66, line: 157, column: 22)
!1320 = !DILocation(line: 158, column: 34, scope: !1319)
!1321 = !DILocation(line: 158, column: 27, scope: !1319)
!1322 = !DILocation(line: 158, column: 16, scope: !1319)
!1323 = !DILocation(line: 159, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !66, line: 159, column: 11)
!1325 = !DILocation(line: 159, column: 20, scope: !1324)
!1326 = !DILocation(line: 159, column: 11, scope: !1319)
!1327 = !DILocation(line: 160, column: 17, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1324, file: !66, line: 159, column: 28)
!1329 = !DILocation(line: 160, column: 10, scope: !1328)
!1330 = !DILocation(line: 161, column: 10, scope: !1328)
!1331 = !DILocation(line: 163, column: 13, scope: !1319)
!1332 = !DILocation(line: 163, column: 11, scope: !1319)
!1333 = !DILocation(line: 164, column: 7, scope: !1319)
!1334 = !DILocation(line: 164, column: 14, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1319, file: !66, discriminator: 1)
!1336 = !DILocation(line: 164, column: 25, scope: !1335)
!1337 = !DILocation(line: 164, column: 23, scope: !1335)
!1338 = !DILocation(line: 164, column: 7, scope: !1335)
!1339 = !DILocation(line: 165, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !66, line: 165, column: 14)
!1341 = distinct !DILexicalBlock(scope: !1319, file: !66, line: 164, column: 38)
!1342 = !DILocation(line: 165, column: 14, scope: !1340)
!1343 = !DILocation(line: 165, column: 20, scope: !1340)
!1344 = !DILocation(line: 165, column: 14, scope: !1341)
!1345 = !DILocation(line: 166, column: 28, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !66, line: 165, column: 29)
!1347 = !DILocation(line: 166, column: 27, scope: !1346)
!1348 = !DILocation(line: 166, column: 22, scope: !1346)
!1349 = !DILocation(line: 166, column: 25, scope: !1346)
!1350 = !DILocation(line: 167, column: 10, scope: !1346)
!1351 = !DILocation(line: 167, column: 21, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !66, discriminator: 1)
!1353 = distinct !DILexicalBlock(scope: !1340, file: !66, line: 167, column: 21)
!1354 = !DILocation(line: 167, column: 35, scope: !1352)
!1355 = !DILocation(line: 167, column: 44, scope: !1352)
!1356 = !DILocation(line: 167, column: 33, scope: !1352)
!1357 = !DILocation(line: 168, column: 22, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !66, line: 167, column: 49)
!1359 = !DILocation(line: 168, column: 25, scope: !1358)
!1360 = !DILocation(line: 169, column: 10, scope: !1358)
!1361 = !DILocation(line: 170, column: 10, scope: !1341)
!1362 = !DILocation(line: 171, column: 10, scope: !1341)
!1363 = !DILocation(line: 164, column: 7, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1319, file: !66, discriminator: 2)
!1365 = distinct !{!1365, !1333}
!1366 = !DILocation(line: 173, column: 14, scope: !1319)
!1367 = !DILocation(line: 173, column: 50, scope: !1319)
!1368 = !DILocation(line: 173, column: 7, scope: !1319)
!1369 = !DILocation(line: 174, column: 4, scope: !1319)
!1370 = !DILocation(line: 175, column: 9, scope: !1301)
!1371 = !DILocation(line: 175, column: 4, scope: !1301)
!1372 = !DILocation(line: 176, column: 1, scope: !1301)
!1373 = !DILocation(line: 176, column: 1, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1301, file: !66, discriminator: 1)
!1375 = distinct !DISubprogram(name: "DynBuf_Get", scope: !650, file: !650, line: 113, type: !1376, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!63, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!1380 = !DILocalVariable(name: "b", arg: 1, scope: !1375, file: !650, line: 113, type: !1378)
!1381 = !DILocation(line: 113, column: 26, scope: !1375)
!1382 = !DILocation(line: 117, column: 11, scope: !1375)
!1383 = !DILocation(line: 117, column: 14, scope: !1375)
!1384 = !DILocation(line: 117, column: 4, scope: !1375)
!1385 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !650, file: !650, line: 174, type: !1386, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !94)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!628, !1378}
!1388 = !DILocalVariable(name: "b", arg: 1, scope: !1385, file: !650, line: 174, type: !1378)
!1389 = !DILocation(line: 174, column: 30, scope: !1385)
!1390 = !DILocation(line: 178, column: 11, scope: !1385)
!1391 = !DILocation(line: 178, column: 14, scope: !1385)
!1392 = !DILocation(line: 178, column: 4, scope: !1385)
