; ModuleID = './[inter]lspci.o.i'
source_filename = "./[inter]lspci.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct._pci_device = type { i16, i16, i16, i16, i16, i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"lspci\00", align 1
@lspci_channel = internal global %struct._VCHANNEL* null, align 8
@lspci_process.rest = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"LSPCI\00", align 1
@current_device = internal global %struct._pci_device zeroinitializer, align 2
@.str.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"lspci_process_line(), invalid line '%s'\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Class:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Vendor:\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Device:\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"SVendor:\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SDevice:\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Rev:\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ProgIf:\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%04x,%04x,%04x,%04x,%04x,%02x,%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"handle_child_line(), Unrecognized lspci line '%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @lspci_init() #0 !dbg !83 {
  %1 = call %struct._VCHANNEL* @channel_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 -1073741824, void (%struct.stream*)* @lspci_process), !dbg !88
  store %struct._VCHANNEL* %1, %struct._VCHANNEL** @lspci_channel, align 8, !dbg !89
  %2 = load %struct._VCHANNEL*, %struct._VCHANNEL** @lspci_channel, align 8, !dbg !90
  %3 = icmp ne %struct._VCHANNEL* %2, null, !dbg !91
  %4 = zext i1 %3 to i32, !dbg !91
  ret i32 %4, !dbg !92
}

declare %struct._VCHANNEL* @channel_register(i8*, i32, void (%struct.stream*)*) #1

; Function Attrs: nounwind uwtable
define internal void @lspci_process(%struct.stream*) #0 !dbg !66 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !93, metadata !94), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %3, metadata !96, metadata !94), !dbg !97
  call void @llvm.dbg.declare(metadata i8** %4, metadata !98, metadata !94), !dbg !99
  %5 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !100
  %6 = getelementptr inbounds %struct.stream, %struct.stream* %5, i32 0, i32 1, !dbg !101
  %7 = load i8*, i8** %6, align 8, !dbg !101
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !102
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !103
  %10 = load i8*, i8** %9, align 8, !dbg !103
  %11 = ptrtoint i8* %7 to i64, !dbg !104
  %12 = ptrtoint i8* %10 to i64, !dbg !104
  %13 = sub i64 %11, %12, !dbg !104
  %14 = trunc i64 %13 to i32, !dbg !100
  store i32 %14, i32* %3, align 4, !dbg !105
  %15 = load i32, i32* %3, align 4, !dbg !106
  %16 = add i32 %15, 1, !dbg !107
  %17 = call i8* @xmalloc(i32 %16), !dbg !108
  store i8* %17, i8** %4, align 8, !dbg !109
  %18 = load i8*, i8** %4, align 8, !dbg !110
  %19 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !112
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !113
  %21 = load i8*, i8** %20, align 8, !dbg !113
  %22 = load i32, i32* %3, align 4, !dbg !114
  %23 = add i32 %22, 1, !dbg !115
  %24 = sub i32 %23, 1, !dbg !116
  %25 = zext i32 %24 to i64, !dbg !114
  %26 = call i8* @strncpy(i8* %18, i8* %21, i64 %25) #6, !dbg !117
  %27 = load i32, i32* %3, align 4, !dbg !118
  %28 = add i32 %27, 1, !dbg !119
  %29 = sub i32 %28, 1, !dbg !120
  %30 = zext i32 %29 to i64, !dbg !121
  %31 = load i8*, i8** %4, align 8, !dbg !121
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !121
  store i8 0, i8* %32, align 1, !dbg !122
  %33 = load i8*, i8** %4, align 8, !dbg !123
  %34 = call i32 @str_handle_lines(i8* %33, i8** @lspci_process.rest, i32 (i8*, i8*)* @lspci_process_line, i8* null), !dbg !124
  %35 = load i8*, i8** %4, align 8, !dbg !125
  call void @xfree(i8* %35), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @xmalloc(i32) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @str_handle_lines(i8*, i8**, i32 (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @lspci_process_line(i8*, i8*) #0 !dbg !128 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8*], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !133, metadata !94), !dbg !134
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !135, metadata !94), !dbg !136
  %6 = load i8*, i8** %4, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata [5 x i8*]* %5, metadata !138, metadata !94), !dbg !142
  %7 = bitcast [5 x i8*]* %5 to i8*, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 40, i32 16, i1 false), !dbg !142
  %8 = bitcast i8* %7 to [5 x i8*]*, !dbg !142
  %9 = getelementptr [5 x i8*], [5 x i8*]* %8, i32 0, i32 0, !dbg !142
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %9, !dbg !142
  %10 = getelementptr [5 x i8*], [5 x i8*]* %8, i32 0, i32 1, !dbg !142
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %10, !dbg !142
  %11 = getelementptr [5 x i8*], [5 x i8*]* %8, i32 0, i32 2, !dbg !142
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %11, !dbg !142
  %12 = getelementptr [5 x i8*], [5 x i8*]* %8, i32 0, i32 3, !dbg !142
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %12, !dbg !142
  %13 = load i8*, i8** %3, align 8, !dbg !143
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7, !dbg !145
  %15 = icmp ne i32 %14, 0, !dbg !145
  br i1 %15, label %19, label %16, !dbg !146

; <label>:16:                                     ; preds = %2
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct._pci_device* @current_device to i8*), i8 0, i64 12, i32 2, i1 false), !dbg !147
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i32 0, i32 0, !dbg !149
  %18 = call i32 @subprocess(i8** %17, i32 (i8*, i8*)* @handle_child_line, i8* null), !dbg !150
  call void @lspci_send(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)), !dbg !151
  br label %21, !dbg !152

; <label>:19:                                     ; preds = %2
  %20 = load i8*, i8** %3, align 8, !dbg !153
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* %20), !dbg !155
  br label %21

; <label>:21:                                     ; preds = %19, %16
  ret i32 1, !dbg !156
}

declare void @xfree(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @subprocess(i8**, i32 (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @handle_child_line(i8*, i8*) #0 !dbg !157 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !158, metadata !94), !dbg !159
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !160, metadata !94), !dbg !161
  %7 = load i8*, i8** %4, align 8, !dbg !162
  call void @llvm.dbg.declare(metadata i8** %5, metadata !163, metadata !94), !dbg !164
  call void @llvm.dbg.declare(metadata [1024 x i8]* %6, metadata !165, metadata !94), !dbg !169
  %8 = load i8*, i8** %3, align 8, !dbg !170
  %9 = call i32 @str_startswith(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !172
  %10 = icmp ne i32 %9, 0, !dbg !172
  br i1 %10, label %11, label %22, !dbg !173

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !174
  %13 = getelementptr inbounds i8, i8* %12, i64 7, !dbg !176
  store i8* %13, i8** %5, align 8, !dbg !177
  %14 = load i8*, i8** %5, align 8, !dbg !178
  %15 = call i64 @strspn(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !179
  %16 = add i64 %15, 6, !dbg !180
  %17 = load i8*, i8** %5, align 8, !dbg !181
  %18 = getelementptr inbounds i8, i8* %17, i64 %16, !dbg !181
  store i8* %18, i8** %5, align 8, !dbg !181
  %19 = load i8*, i8** %5, align 8, !dbg !182
  %20 = call i64 @strtol(i8* %19, i8** null, i32 16) #6, !dbg !183
  %21 = trunc i64 %20 to i16, !dbg !183
  store i16 %21, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 0), align 2, !dbg !184
  br label %120, !dbg !185

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %3, align 8, !dbg !186
  %24 = call i32 @str_startswith(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)), !dbg !188
  %25 = icmp ne i32 %24, 0, !dbg !188
  br i1 %25, label %26, label %32, !dbg !189

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %3, align 8, !dbg !190
  %28 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !192
  store i8* %28, i8** %5, align 8, !dbg !193
  %29 = load i8*, i8** %5, align 8, !dbg !194
  %30 = call i64 @strtol(i8* %29, i8** null, i32 16) #6, !dbg !195
  %31 = trunc i64 %30 to i16, !dbg !195
  store i16 %31, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 1), align 2, !dbg !196
  br label %119, !dbg !197

; <label>:32:                                     ; preds = %22
  %33 = load i8*, i8** %3, align 8, !dbg !198
  %34 = call i32 @str_startswith(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)), !dbg !200
  %35 = icmp ne i32 %34, 0, !dbg !200
  br i1 %35, label %36, label %47, !dbg !201

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %3, align 8, !dbg !202
  %38 = getelementptr inbounds i8, i8* %37, i64 8, !dbg !204
  store i8* %38, i8** %5, align 8, !dbg !205
  %39 = load i8*, i8** %5, align 8, !dbg !206
  %40 = call i8* @strchr(i8* %39, i32 58) #7, !dbg !208
  %41 = icmp ne i8* %40, null, !dbg !208
  br i1 %41, label %46, label %42, !dbg !209

; <label>:42:                                     ; preds = %36
  %43 = load i8*, i8** %5, align 8, !dbg !210
  %44 = call i64 @strtol(i8* %43, i8** null, i32 16) #6, !dbg !211
  %45 = trunc i64 %44 to i16, !dbg !211
  store i16 %45, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 2), align 2, !dbg !212
  br label %46, !dbg !213

; <label>:46:                                     ; preds = %42, %36
  br label %118, !dbg !214

; <label>:47:                                     ; preds = %32
  %48 = load i8*, i8** %3, align 8, !dbg !215
  %49 = call i32 @str_startswith(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !217
  %50 = icmp ne i32 %49, 0, !dbg !217
  br i1 %50, label %51, label %57, !dbg !218

; <label>:51:                                     ; preds = %47
  %52 = load i8*, i8** %3, align 8, !dbg !219
  %53 = getelementptr inbounds i8, i8* %52, i64 9, !dbg !221
  store i8* %53, i8** %5, align 8, !dbg !222
  %54 = load i8*, i8** %5, align 8, !dbg !223
  %55 = call i64 @strtol(i8* %54, i8** null, i32 16) #6, !dbg !224
  %56 = trunc i64 %55 to i16, !dbg !224
  store i16 %56, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 3), align 2, !dbg !225
  br label %117, !dbg !226

; <label>:57:                                     ; preds = %47
  %58 = load i8*, i8** %3, align 8, !dbg !227
  %59 = call i32 @str_startswith(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)), !dbg !229
  %60 = icmp ne i32 %59, 0, !dbg !229
  br i1 %60, label %61, label %67, !dbg !230

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %3, align 8, !dbg !231
  %63 = getelementptr inbounds i8, i8* %62, i64 9, !dbg !233
  store i8* %63, i8** %5, align 8, !dbg !234
  %64 = load i8*, i8** %5, align 8, !dbg !235
  %65 = call i64 @strtol(i8* %64, i8** null, i32 16) #6, !dbg !236
  %66 = trunc i64 %65 to i16, !dbg !236
  store i16 %66, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 4), align 2, !dbg !237
  br label %116, !dbg !238

; <label>:67:                                     ; preds = %57
  %68 = load i8*, i8** %3, align 8, !dbg !239
  %69 = call i32 @str_startswith(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)), !dbg !241
  %70 = icmp ne i32 %69, 0, !dbg !241
  br i1 %70, label %71, label %77, !dbg !242

; <label>:71:                                     ; preds = %67
  %72 = load i8*, i8** %3, align 8, !dbg !243
  %73 = getelementptr inbounds i8, i8* %72, i64 5, !dbg !245
  store i8* %73, i8** %5, align 8, !dbg !246
  %74 = load i8*, i8** %5, align 8, !dbg !247
  %75 = call i64 @strtol(i8* %74, i8** null, i32 16) #6, !dbg !248
  %76 = trunc i64 %75 to i8, !dbg !248
  store i8 %76, i8* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 5), align 2, !dbg !249
  br label %115, !dbg !250

; <label>:77:                                     ; preds = %67
  %78 = load i8*, i8** %3, align 8, !dbg !251
  %79 = call i32 @str_startswith(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)), !dbg !253
  %80 = icmp ne i32 %79, 0, !dbg !253
  br i1 %80, label %81, label %87, !dbg !254

; <label>:81:                                     ; preds = %77
  %82 = load i8*, i8** %3, align 8, !dbg !255
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !257
  store i8* %83, i8** %5, align 8, !dbg !258
  %84 = load i8*, i8** %5, align 8, !dbg !259
  %85 = call i64 @strtol(i8* %84, i8** null, i32 16) #6, !dbg !260
  %86 = trunc i64 %85 to i8, !dbg !260
  store i8 %86, i8* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 6), align 1, !dbg !261
  br label %114, !dbg !262

; <label>:87:                                     ; preds = %77
  %88 = load i8*, i8** %3, align 8, !dbg !263
  %89 = call i64 @strspn(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #7, !dbg !265
  %90 = load i8*, i8** %3, align 8, !dbg !266
  %91 = call i64 @strlen(i8* %90) #7, !dbg !267
  %92 = icmp eq i64 %89, %91, !dbg !269
  br i1 %92, label %93, label %111, !dbg !270

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !271
  %95 = load i16, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 0), align 2, !dbg !273
  %96 = zext i16 %95 to i32, !dbg !274
  %97 = load i16, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 1), align 2, !dbg !275
  %98 = zext i16 %97 to i32, !dbg !276
  %99 = load i16, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 2), align 2, !dbg !277
  %100 = zext i16 %99 to i32, !dbg !278
  %101 = load i16, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 3), align 2, !dbg !279
  %102 = zext i16 %101 to i32, !dbg !280
  %103 = load i16, i16* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 4), align 2, !dbg !281
  %104 = zext i16 %103 to i32, !dbg !282
  %105 = load i8, i8* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 5), align 2, !dbg !283
  %106 = zext i8 %105 to i32, !dbg !284
  %107 = load i8, i8* getelementptr inbounds (%struct._pci_device, %struct._pci_device* @current_device, i32 0, i32 6), align 1, !dbg !285
  %108 = zext i8 %107 to i32, !dbg !286
  %109 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %94, i64 1024, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i32 %96, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106, i32 %108) #6, !dbg !287
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !288
  call void @lspci_send(i8* %110), !dbg !289
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct._pci_device* @current_device to i8*), i8 0, i64 12, i32 2, i1 false), !dbg !290
  br label %113, !dbg !291

; <label>:111:                                    ; preds = %87
  %112 = load i8*, i8** %3, align 8, !dbg !292
  call void (i32, i32, i8*, ...) @logger(i32 6, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0), i8* %112), !dbg !294
  br label %113

; <label>:113:                                    ; preds = %111, %93
  br label %114

; <label>:114:                                    ; preds = %113, %81
  br label %115

; <label>:115:                                    ; preds = %114, %71
  br label %116

; <label>:116:                                    ; preds = %115, %61
  br label %117

; <label>:117:                                    ; preds = %116, %51
  br label %118

; <label>:118:                                    ; preds = %117, %46
  br label %119

; <label>:119:                                    ; preds = %118, %26
  br label %120

; <label>:120:                                    ; preds = %119, %11
  ret i32 1, !dbg !295
}

; Function Attrs: nounwind uwtable
define internal void @lspci_send(i8*) #0 !dbg !296 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !299, metadata !94), !dbg !300
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !301, metadata !94), !dbg !302
  call void @llvm.dbg.declare(metadata i64* %4, metadata !303, metadata !94), !dbg !307
  %5 = load i8*, i8** %2, align 8, !dbg !308
  %6 = call i64 @strlen(i8* %5) #7, !dbg !309
  store i64 %6, i64* %4, align 8, !dbg !310
  %7 = load %struct._VCHANNEL*, %struct._VCHANNEL** @lspci_channel, align 8, !dbg !311
  %8 = load i64, i64* %4, align 8, !dbg !312
  %9 = trunc i64 %8 to i32, !dbg !312
  %10 = call %struct.stream* @channel_init(%struct._VCHANNEL* %7, i32 %9), !dbg !313
  store %struct.stream* %10, %struct.stream** %3, align 8, !dbg !314
  %11 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !315
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !317
  %13 = load i8*, i8** %12, align 8, !dbg !317
  %14 = load i8*, i8** %2, align 8, !dbg !318
  %15 = load i64, i64* %4, align 8, !dbg !319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 %15, i32 1, i1 false), !dbg !320
  %16 = load i64, i64* %4, align 8, !dbg !321
  %17 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !322
  %18 = getelementptr inbounds %struct.stream, %struct.stream* %17, i32 0, i32 0, !dbg !323
  %19 = load i8*, i8** %18, align 8, !dbg !324
  %20 = getelementptr inbounds i8, i8* %19, i64 %16, !dbg !324
  store i8* %20, i8** %18, align 8, !dbg !324
  %21 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !325
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !326
  %23 = load i8*, i8** %22, align 8, !dbg !326
  %24 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !327
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 1, !dbg !328
  store i8* %23, i8** %25, align 8, !dbg !329
  %26 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !330
  %27 = load %struct._VCHANNEL*, %struct._VCHANNEL** @lspci_channel, align 8, !dbg !331
  call void @channel_send(%struct.stream* %26, %struct._VCHANNEL* %27), !dbg !332
  ret void, !dbg !333
}

declare void @logger(i32, i32, i8*, ...) #1

declare i32 @str_startswith(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #5

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare %struct.stream* @channel_init(%struct._VCHANNEL*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @channel_send(%struct.stream*, %struct._VCHANNEL*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22, globals: !26)
!1 = !DIFile(filename: "[inter]lspci.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
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
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !{!27, !65, !68}
!27 = distinct !DIGlobalVariable(name: "lspci_channel", scope: !0, file: !28, line: 24, type: !29, isLocal: true, isDefinition: true, variable: %struct._VCHANNEL** @lspci_channel)
!28 = !DIFile(filename: "lspci.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "VCHANNEL", file: !31, line: 169, baseType: !32)
!31 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_VCHANNEL", file: !31, line: 161, size: 768, align: 64, elements: !33)
!33 = !{!34, !37, !41, !44, !59}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_id", scope: !32, file: !31, line: 163, baseType: !35, size: 16, align: 16)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !31, line: 41, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !31, line: 164, baseType: !38, size: 64, align: 8, offset: 16)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, align: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !31, line: 165, baseType: !42, size: 32, align: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !31, line: 43, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !32, file: !31, line: 166, baseType: !45, size: 576, align: 64, offset: 128)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !46, line: 25, size: 576, align: 64, elements: !47)
!46 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!47 = !{!48, !51, !52, !53, !54, !55, !56, !57, !58}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !45, file: !46, line: 27, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !45, file: !46, line: 28, baseType: !49, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !45, file: !46, line: 29, baseType: !49, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !45, file: !46, line: 30, baseType: !43, size: 32, align: 32, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !45, file: !46, line: 33, baseType: !49, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !45, file: !46, line: 34, baseType: !49, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !45, file: !46, line: 35, baseType: !49, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !45, file: !46, line: 36, baseType: !49, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !45, file: !46, line: 37, baseType: !49, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !32, file: !31, line: 167, baseType: !60, size: 64, align: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !46, line: 40, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!65 = distinct !DIGlobalVariable(name: "rest", scope: !66, file: !28, line: 135, type: !24, isLocal: true, isDefinition: true, variable: i8** @lspci_process.rest)
!66 = distinct !DISubprogram(name: "lspci_process", scope: !28, file: !28, line: 132, type: !61, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!67 = !{}
!68 = distinct !DIGlobalVariable(name: "current_device", scope: !0, file: !28, line: 37, type: !69, isLocal: true, isDefinition: true, variable: %struct._pci_device* @current_device)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_device", file: !28, line: 35, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_pci_device", file: !28, line: 26, size: 96, align: 16, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !79}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "klass", scope: !70, file: !28, line: 28, baseType: !35, size: 16, align: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !70, file: !28, line: 29, baseType: !35, size: 16, align: 16, offset: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !70, file: !28, line: 30, baseType: !35, size: 16, align: 16, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !70, file: !28, line: 31, baseType: !35, size: 16, align: 16, offset: 48)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !70, file: !28, line: 32, baseType: !35, size: 16, align: 16, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !70, file: !28, line: 33, baseType: !78, size: 8, align: 8, offset: 80)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !31, line: 39, baseType: !50)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "progif", scope: !70, file: !28, line: 34, baseType: !78, size: 8, align: 8, offset: 88)
!80 = !{i32 2, !"Dwarf Version", i32 4}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!83 = distinct !DISubprogram(name: "lspci_init", scope: !28, file: !28, line: 148, type: !84, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!84 = !DISubroutineType(types: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !31, line: 28, baseType: !87)
!87 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!88 = !DILocation(line: 151, column: 3, scope: !83)
!89 = !DILocation(line: 150, column: 16, scope: !83)
!90 = !DILocation(line: 153, column: 10, scope: !83)
!91 = !DILocation(line: 153, column: 24, scope: !83)
!92 = !DILocation(line: 153, column: 2, scope: !83)
!93 = !DILocalVariable(name: "s", arg: 1, scope: !66, file: !28, line: 132, type: !63)
!94 = !DIExpression()
!95 = !DILocation(line: 132, column: 22, scope: !66)
!96 = !DILocalVariable(name: "pkglen", scope: !66, file: !28, line: 134, type: !43)
!97 = !DILocation(line: 134, column: 15, scope: !66)
!98 = !DILocalVariable(name: "buf", scope: !66, file: !28, line: 136, type: !24)
!99 = !DILocation(line: 136, column: 8, scope: !66)
!100 = !DILocation(line: 138, column: 11, scope: !66)
!101 = !DILocation(line: 138, column: 14, scope: !66)
!102 = !DILocation(line: 138, column: 20, scope: !66)
!103 = !DILocation(line: 138, column: 23, scope: !66)
!104 = !DILocation(line: 138, column: 18, scope: !66)
!105 = !DILocation(line: 138, column: 9, scope: !66)
!106 = !DILocation(line: 140, column: 16, scope: !66)
!107 = !DILocation(line: 140, column: 23, scope: !66)
!108 = !DILocation(line: 140, column: 8, scope: !66)
!109 = !DILocation(line: 140, column: 6, scope: !66)
!110 = !DILocation(line: 141, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !66, file: !28, line: 141, column: 2)
!112 = !DILocation(line: 141, column: 25, scope: !111)
!113 = !DILocation(line: 141, column: 28, scope: !111)
!114 = !DILocation(line: 141, column: 30, scope: !111)
!115 = !DILocation(line: 141, column: 37, scope: !111)
!116 = !DILocation(line: 141, column: 41, scope: !111)
!117 = !DILocation(line: 141, column: 4, scope: !111)
!118 = !DILocation(line: 141, column: 50, scope: !111)
!119 = !DILocation(line: 141, column: 57, scope: !111)
!120 = !DILocation(line: 141, column: 61, scope: !111)
!121 = !DILocation(line: 141, column: 46, scope: !111)
!122 = !DILocation(line: 141, column: 65, scope: !111)
!123 = !DILocation(line: 142, column: 19, scope: !66)
!124 = !DILocation(line: 142, column: 2, scope: !66)
!125 = !DILocation(line: 143, column: 8, scope: !66)
!126 = !DILocation(line: 143, column: 2, scope: !66)
!127 = !DILocation(line: 144, column: 1, scope: !66)
!128 = distinct !DISubprogram(name: "lspci_process_line", scope: !28, file: !28, line: 110, type: !129, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!129 = !DISubroutineType(types: !130)
!130 = !{!86, !131, !23}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!133 = !DILocalVariable(name: "line", arg: 1, scope: !128, file: !28, line: 110, type: !131)
!134 = !DILocation(line: 110, column: 32, scope: !128)
!135 = !DILocalVariable(name: "data", arg: 2, scope: !128, file: !28, line: 110, type: !23)
!136 = !DILocation(line: 110, column: 44, scope: !128)
!137 = !DILocation(line: 112, column: 9, scope: !128)
!138 = !DILocalVariable(name: "lspci_command", scope: !128, file: !28, line: 113, type: !139)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 320, align: 64, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 5)
!142 = !DILocation(line: 113, column: 8, scope: !128)
!143 = !DILocation(line: 115, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !128, file: !28, line: 115, column: 6)
!145 = !DILocation(line: 115, column: 7, scope: !144)
!146 = !DILocation(line: 115, column: 6, scope: !128)
!147 = !DILocation(line: 117, column: 3, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !28, line: 116, column: 2)
!149 = !DILocation(line: 118, column: 14, scope: !148)
!150 = !DILocation(line: 118, column: 3, scope: !148)
!151 = !DILocation(line: 120, column: 3, scope: !148)
!152 = !DILocation(line: 121, column: 2, scope: !148)
!153 = !DILocation(line: 124, column: 66, scope: !154)
!154 = distinct !DILexicalBlock(scope: !144, file: !28, line: 123, column: 2)
!155 = !DILocation(line: 124, column: 3, scope: !154)
!156 = !DILocation(line: 126, column: 2, scope: !128)
!157 = distinct !DISubprogram(name: "handle_child_line", scope: !28, file: !28, line: 44, type: !129, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!158 = !DILocalVariable(name: "line", arg: 1, scope: !157, file: !28, line: 44, type: !131)
!159 = !DILocation(line: 44, column: 31, scope: !157)
!160 = !DILocalVariable(name: "data", arg: 2, scope: !157, file: !28, line: 44, type: !23)
!161 = !DILocation(line: 44, column: 43, scope: !157)
!162 = !DILocation(line: 46, column: 9, scope: !157)
!163 = !DILocalVariable(name: "val", scope: !157, file: !28, line: 47, type: !131)
!164 = !DILocation(line: 47, column: 14, scope: !157)
!165 = !DILocalVariable(name: "buf", scope: !157, file: !28, line: 48, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8192, align: 8, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 1024)
!169 = !DILocation(line: 48, column: 7, scope: !157)
!170 = !DILocation(line: 50, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !157, file: !28, line: 50, column: 6)
!172 = !DILocation(line: 50, column: 6, scope: !171)
!173 = !DILocation(line: 50, column: 6, scope: !157)
!174 = !DILocation(line: 52, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !28, line: 51, column: 2)
!176 = !DILocation(line: 52, column: 14, scope: !175)
!177 = !DILocation(line: 52, column: 7, scope: !175)
!178 = !DILocation(line: 54, column: 17, scope: !175)
!179 = !DILocation(line: 54, column: 10, scope: !175)
!180 = !DILocation(line: 54, column: 29, scope: !175)
!181 = !DILocation(line: 54, column: 7, scope: !175)
!182 = !DILocation(line: 55, column: 33, scope: !175)
!183 = !DILocation(line: 55, column: 26, scope: !175)
!184 = !DILocation(line: 55, column: 24, scope: !175)
!185 = !DILocation(line: 56, column: 2, scope: !175)
!186 = !DILocation(line: 57, column: 26, scope: !187)
!187 = distinct !DILexicalBlock(scope: !171, file: !28, line: 57, column: 11)
!188 = !DILocation(line: 57, column: 11, scope: !187)
!189 = !DILocation(line: 57, column: 11, scope: !171)
!190 = !DILocation(line: 59, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !28, line: 58, column: 2)
!192 = !DILocation(line: 59, column: 14, scope: !191)
!193 = !DILocation(line: 59, column: 7, scope: !191)
!194 = !DILocation(line: 60, column: 34, scope: !191)
!195 = !DILocation(line: 60, column: 27, scope: !191)
!196 = !DILocation(line: 60, column: 25, scope: !191)
!197 = !DILocation(line: 61, column: 2, scope: !191)
!198 = !DILocation(line: 62, column: 26, scope: !199)
!199 = distinct !DILexicalBlock(scope: !187, file: !28, line: 62, column: 11)
!200 = !DILocation(line: 62, column: 11, scope: !199)
!201 = !DILocation(line: 62, column: 11, scope: !187)
!202 = !DILocation(line: 64, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !28, line: 63, column: 2)
!204 = !DILocation(line: 64, column: 14, scope: !203)
!205 = !DILocation(line: 64, column: 7, scope: !203)
!206 = !DILocation(line: 67, column: 15, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !28, line: 67, column: 7)
!208 = !DILocation(line: 67, column: 8, scope: !207)
!209 = !DILocation(line: 67, column: 7, scope: !203)
!210 = !DILocation(line: 68, column: 35, scope: !207)
!211 = !DILocation(line: 68, column: 28, scope: !207)
!212 = !DILocation(line: 68, column: 26, scope: !207)
!213 = !DILocation(line: 68, column: 4, scope: !207)
!214 = !DILocation(line: 69, column: 2, scope: !203)
!215 = !DILocation(line: 70, column: 26, scope: !216)
!216 = distinct !DILexicalBlock(scope: !199, file: !28, line: 70, column: 11)
!217 = !DILocation(line: 70, column: 11, scope: !216)
!218 = !DILocation(line: 70, column: 11, scope: !199)
!219 = !DILocation(line: 72, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !28, line: 71, column: 2)
!221 = !DILocation(line: 72, column: 14, scope: !220)
!222 = !DILocation(line: 72, column: 7, scope: !220)
!223 = !DILocation(line: 73, column: 37, scope: !220)
!224 = !DILocation(line: 73, column: 30, scope: !220)
!225 = !DILocation(line: 73, column: 28, scope: !220)
!226 = !DILocation(line: 74, column: 2, scope: !220)
!227 = !DILocation(line: 75, column: 26, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !28, line: 75, column: 11)
!229 = !DILocation(line: 75, column: 11, scope: !228)
!230 = !DILocation(line: 75, column: 11, scope: !216)
!231 = !DILocation(line: 77, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !28, line: 76, column: 2)
!233 = !DILocation(line: 77, column: 14, scope: !232)
!234 = !DILocation(line: 77, column: 7, scope: !232)
!235 = !DILocation(line: 78, column: 37, scope: !232)
!236 = !DILocation(line: 78, column: 30, scope: !232)
!237 = !DILocation(line: 78, column: 28, scope: !232)
!238 = !DILocation(line: 79, column: 2, scope: !232)
!239 = !DILocation(line: 80, column: 26, scope: !240)
!240 = distinct !DILexicalBlock(scope: !228, file: !28, line: 80, column: 11)
!241 = !DILocation(line: 80, column: 11, scope: !240)
!242 = !DILocation(line: 80, column: 11, scope: !228)
!243 = !DILocation(line: 82, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !28, line: 81, column: 2)
!245 = !DILocation(line: 82, column: 14, scope: !244)
!246 = !DILocation(line: 82, column: 7, scope: !244)
!247 = !DILocation(line: 83, column: 36, scope: !244)
!248 = !DILocation(line: 83, column: 29, scope: !244)
!249 = !DILocation(line: 83, column: 27, scope: !244)
!250 = !DILocation(line: 84, column: 2, scope: !244)
!251 = !DILocation(line: 85, column: 26, scope: !252)
!252 = distinct !DILexicalBlock(scope: !240, file: !28, line: 85, column: 11)
!253 = !DILocation(line: 85, column: 11, scope: !252)
!254 = !DILocation(line: 85, column: 11, scope: !240)
!255 = !DILocation(line: 87, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !28, line: 86, column: 2)
!257 = !DILocation(line: 87, column: 14, scope: !256)
!258 = !DILocation(line: 87, column: 7, scope: !256)
!259 = !DILocation(line: 88, column: 34, scope: !256)
!260 = !DILocation(line: 88, column: 27, scope: !256)
!261 = !DILocation(line: 88, column: 25, scope: !256)
!262 = !DILocation(line: 89, column: 2, scope: !256)
!263 = !DILocation(line: 90, column: 18, scope: !264)
!264 = distinct !DILexicalBlock(scope: !252, file: !28, line: 90, column: 11)
!265 = !DILocation(line: 90, column: 11, scope: !264)
!266 = !DILocation(line: 90, column: 41, scope: !264)
!267 = !DILocation(line: 90, column: 34, scope: !268)
!268 = !DILexicalBlockFile(scope: !264, file: !28, discriminator: 1)
!269 = !DILocation(line: 90, column: 31, scope: !264)
!270 = !DILocation(line: 90, column: 11, scope: !252)
!271 = !DILocation(line: 93, column: 12, scope: !272)
!272 = distinct !DILexicalBlock(scope: !264, file: !28, line: 91, column: 2)
!273 = !DILocation(line: 94, column: 20, scope: !272)
!274 = !DILocation(line: 94, column: 5, scope: !272)
!275 = !DILocation(line: 94, column: 42, scope: !272)
!276 = !DILocation(line: 94, column: 27, scope: !272)
!277 = !DILocation(line: 95, column: 20, scope: !272)
!278 = !DILocation(line: 95, column: 5, scope: !272)
!279 = !DILocation(line: 95, column: 43, scope: !272)
!280 = !DILocation(line: 95, column: 28, scope: !272)
!281 = !DILocation(line: 96, column: 20, scope: !272)
!282 = !DILocation(line: 96, column: 5, scope: !272)
!283 = !DILocation(line: 96, column: 46, scope: !272)
!284 = !DILocation(line: 96, column: 31, scope: !272)
!285 = !DILocation(line: 96, column: 71, scope: !272)
!286 = !DILocation(line: 96, column: 56, scope: !272)
!287 = !DILocation(line: 93, column: 3, scope: !272)
!288 = !DILocation(line: 97, column: 14, scope: !272)
!289 = !DILocation(line: 97, column: 3, scope: !272)
!290 = !DILocation(line: 98, column: 3, scope: !272)
!291 = !DILocation(line: 99, column: 2, scope: !272)
!292 = !DILocation(line: 102, column: 78, scope: !293)
!293 = distinct !DILexicalBlock(scope: !264, file: !28, line: 101, column: 2)
!294 = !DILocation(line: 102, column: 3, scope: !293)
!295 = !DILocation(line: 104, column: 2, scope: !157)
!296 = distinct !DISubprogram(name: "lspci_send", scope: !28, file: !28, line: 158, type: !297, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !67)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !131}
!299 = !DILocalVariable(name: "output", arg: 1, scope: !296, file: !28, line: 158, type: !131)
!300 = !DILocation(line: 158, column: 24, scope: !296)
!301 = !DILocalVariable(name: "s", scope: !296, file: !28, line: 160, type: !63)
!302 = !DILocation(line: 160, column: 9, scope: !296)
!303 = !DILocalVariable(name: "len", scope: !296, file: !28, line: 161, type: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !305, line: 216, baseType: !306)
!305 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!306 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!307 = !DILocation(line: 161, column: 9, scope: !296)
!308 = !DILocation(line: 163, column: 15, scope: !296)
!309 = !DILocation(line: 163, column: 8, scope: !296)
!310 = !DILocation(line: 163, column: 6, scope: !296)
!311 = !DILocation(line: 164, column: 19, scope: !296)
!312 = !DILocation(line: 164, column: 34, scope: !296)
!313 = !DILocation(line: 164, column: 6, scope: !296)
!314 = !DILocation(line: 164, column: 4, scope: !296)
!315 = !DILocation(line: 165, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !296, file: !28, line: 165, column: 2)
!317 = !DILocation(line: 165, column: 16, scope: !316)
!318 = !DILocation(line: 165, column: 18, scope: !316)
!319 = !DILocation(line: 165, column: 25, scope: !316)
!320 = !DILocation(line: 165, column: 4, scope: !316)
!321 = !DILocation(line: 165, column: 41, scope: !316)
!322 = !DILocation(line: 165, column: 32, scope: !316)
!323 = !DILocation(line: 165, column: 36, scope: !316)
!324 = !DILocation(line: 165, column: 38, scope: !316)
!325 = !DILocation(line: 165, column: 60, scope: !296)
!326 = !DILocation(line: 165, column: 64, scope: !296)
!327 = !DILocation(line: 165, column: 49, scope: !296)
!328 = !DILocation(line: 165, column: 53, scope: !296)
!329 = !DILocation(line: 165, column: 57, scope: !296)
!330 = !DILocation(line: 166, column: 15, scope: !296)
!331 = !DILocation(line: 166, column: 18, scope: !296)
!332 = !DILocation(line: 166, column: 2, scope: !296)
!333 = !DILocation(line: 167, column: 1, scope: !296)
