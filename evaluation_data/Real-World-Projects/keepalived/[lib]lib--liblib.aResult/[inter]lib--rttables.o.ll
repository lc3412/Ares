; ModuleID = './[inter]lib--rttables.o.i'
source_filename = "./[inter]lib--rttables.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rt_entry = type { i32, i8* }
%struct._vector = type { i32, i32, i8** }

@rt_tables = internal global %struct._list* null, align 8
@rt_dsfields = internal global %struct._list* null, align 8
@rt_groups = internal global %struct._list* null, align 8
@rt_realms = internal global %struct._list* null, align 8
@rt_protos = internal global %struct._list* null, align 8
@rt_scopes = internal global %struct._list* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"/etc/iproute2/rt_tables\00", align 1
@rttable_default = internal global [4 x %struct.rt_entry] [%struct.rt_entry { i32 253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.rt_entry { i32 254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0) }, %struct.rt_entry { i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0) }, %struct.rt_entry zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [25 x i8] c"/etc/iproute2/rt_dsfield\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"/etc/iproute2/group\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/etc/iproute2/rt_realms\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"/etc/iproute2/rt_protos\00", align 1
@rtprot_default = internal global [16 x %struct.rt_entry] [%struct.rt_entry { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0) }, %struct.rt_entry { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0) }, %struct.rt_entry { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0) }, %struct.rt_entry { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, %struct.rt_entry { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0) }, %struct.rt_entry { i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0) }, %struct.rt_entry { i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0) }, %struct.rt_entry { i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0) }, %struct.rt_entry { i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0) }, %struct.rt_entry { i32 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0) }, %struct.rt_entry { i32 42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0) }, %struct.rt_entry { i32 13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0) }, %struct.rt_entry { i32 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0) }, %struct.rt_entry { i32 15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0) }, %struct.rt_entry { i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0) }, %struct.rt_entry zeroinitializer], align 16
@rtntypes = internal global [13 x %struct.rt_entry] [%struct.rt_entry { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0) }, %struct.rt_entry { i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0) }, %struct.rt_entry { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0) }, %struct.rt_entry { i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0) }, %struct.rt_entry { i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0) }, %struct.rt_entry { i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0) }, %struct.rt_entry { i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0) }, %struct.rt_entry { i32 7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0) }, %struct.rt_entry { i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0) }, %struct.rt_entry { i32 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0) }, %struct.rt_entry { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0) }, %struct.rt_entry { i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0) }, %struct.rt_entry zeroinitializer], align 16
@ret_buf = internal global [11 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"/etc/iproute2/rt_scopes\00", align 1
@rtscope_default = internal global [6 x %struct.rt_entry] [%struct.rt_entry { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0) }, %struct.rt_entry { i32 255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0) }, %struct.rt_entry { i32 254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0) }, %struct.rt_entry { i32 253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0) }, %struct.rt_entry { i32 200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0) }, %struct.rt_entry zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"rt_table %u, name %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"gated\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ra\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"mrt\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"zebra\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"bird\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"babel\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"dnrouted\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"xorp\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ntk\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"dhcp\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"brd\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"anycast\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"multicast\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"prohibit\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"blackhole\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"xresolve\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"unicast\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"nowhere\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"site\00", align 1

; Function Attrs: nounwind uwtable
define void @clear_rt_names() #0 !dbg !139 {
  call void @free_list(%struct._list** @rt_tables), !dbg !143
  call void @free_list(%struct._list** @rt_dsfields), !dbg !144
  call void @free_list(%struct._list** @rt_groups), !dbg !145
  call void @free_list(%struct._list** @rt_realms), !dbg !146
  call void @free_list(%struct._list** @rt_protos), !dbg !147
  call void @free_list(%struct._list** @rt_scopes), !dbg !148
  ret void, !dbg !149
}

declare void @free_list(%struct._list**) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @find_rttables_table(i8*, i32*) #0 !dbg !150 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !158, metadata !159), !dbg !160
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !161, metadata !159), !dbg !162
  %5 = load i8*, i8** %3, align 8, !dbg !163
  %6 = load i32*, i32** %4, align 8, !dbg !164
  %7 = call zeroext i1 @find_entry(i8* %5, i32* %6, %struct._list** @rt_tables, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), %struct.rt_entry* getelementptr inbounds ([4 x %struct.rt_entry], [4 x %struct.rt_entry]* @rttable_default, i32 0, i32 0), i32 -1), !dbg !165
  ret i1 %7, !dbg !166
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @find_entry(i8*, i32*, %struct._list**, i8*, %struct.rt_entry*, i32) #0 !dbg !167 {
  %7 = alloca i1, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._list**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rt_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._element*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.rt_entry*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !174, metadata !159), !dbg !175
  store i32* %1, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !176, metadata !159), !dbg !177
  store %struct._list** %2, %struct._list*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._list*** %10, metadata !178, metadata !159), !dbg !179
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !180, metadata !159), !dbg !181
  store %struct.rt_entry* %4, %struct.rt_entry** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %12, metadata !182, metadata !159), !dbg !183
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !184, metadata !159), !dbg !185
  call void @llvm.dbg.declare(metadata %struct._element** %14, metadata !186, metadata !159), !dbg !188
  call void @llvm.dbg.declare(metadata i8** %15, metadata !189, metadata !159), !dbg !190
  call void @llvm.dbg.declare(metadata i64* %16, metadata !191, metadata !159), !dbg !192
  %18 = load i8*, i8** %8, align 8, !dbg !193
  %19 = call i64 @strtoul(i8* %18, i8** %15, i32 0) #5, !dbg !194
  store i64 %19, i64* %16, align 8, !dbg !195
  %20 = load i64, i64* %16, align 8, !dbg !196
  %21 = trunc i64 %20 to i32, !dbg !197
  %22 = load i32*, i32** %9, align 8, !dbg !198
  store i32 %21, i32* %22, align 4, !dbg !199
  %23 = load i8*, i8** %15, align 8, !dbg !200
  %24 = load i8*, i8** %8, align 8, !dbg !202
  %25 = icmp ne i8* %23, %24, !dbg !203
  br i1 %25, label %26, label %36, !dbg !204

; <label>:26:                                     ; preds = %6
  %27 = load i8*, i8** %15, align 8, !dbg !205
  %28 = load i8, i8* %27, align 1, !dbg !207
  %29 = sext i8 %28 to i32, !dbg !207
  %30 = icmp eq i32 %29, 0, !dbg !208
  br i1 %30, label %31, label %36, !dbg !209

; <label>:31:                                     ; preds = %26
  %32 = load i32*, i32** %9, align 8, !dbg !210
  %33 = load i32, i32* %32, align 4, !dbg !211
  %34 = load i32, i32* %13, align 4, !dbg !212
  %35 = icmp ule i32 %33, %34, !dbg !213
  store i1 %35, i1* %7, align 1, !dbg !214
  br label %99, !dbg !214

; <label>:36:                                     ; preds = %26, %6
  %37 = load %struct._list**, %struct._list*** %10, align 8, !dbg !215
  %38 = load %struct._list*, %struct._list** %37, align 8, !dbg !217
  %39 = icmp ne %struct._list* %38, null, !dbg !218
  br i1 %39, label %45, label %40, !dbg !219

; <label>:40:                                     ; preds = %36
  %41 = load %struct._list**, %struct._list*** %10, align 8, !dbg !220
  %42 = load i8*, i8** %11, align 8, !dbg !221
  %43 = load %struct.rt_entry*, %struct.rt_entry** %12, align 8, !dbg !222
  %44 = load i32, i32* %13, align 4, !dbg !223
  call void @initialise_list(%struct._list** %41, i8* %42, %struct.rt_entry* %43, i32 %44), !dbg !224
  br label %45, !dbg !224

; <label>:45:                                     ; preds = %40, %36
  %46 = load %struct._list**, %struct._list*** %10, align 8, !dbg !225
  %47 = load %struct._list*, %struct._list** %46, align 8, !dbg !227
  %48 = icmp eq %struct._list* %47, null, !dbg !228
  br i1 %48, label %61, label %49, !dbg !229

; <label>:49:                                     ; preds = %45
  %50 = load %struct._list**, %struct._list*** %10, align 8, !dbg !230
  %51 = load %struct._list*, %struct._list** %50, align 8, !dbg !232
  %52 = getelementptr inbounds %struct._list, %struct._list* %51, i32 0, i32 0, !dbg !233
  %53 = load %struct._element*, %struct._element** %52, align 8, !dbg !233
  %54 = icmp eq %struct._element* %53, null, !dbg !234
  br i1 %54, label %55, label %62, !dbg !235

; <label>:55:                                     ; preds = %49
  %56 = load %struct._list**, %struct._list*** %10, align 8, !dbg !236
  %57 = load %struct._list*, %struct._list** %56, align 8, !dbg !238
  %58 = getelementptr inbounds %struct._list, %struct._list* %57, i32 0, i32 1, !dbg !239
  %59 = load %struct._element*, %struct._element** %58, align 8, !dbg !239
  %60 = icmp eq %struct._element* %59, null, !dbg !240
  br i1 %60, label %61, label %62, !dbg !241

; <label>:61:                                     ; preds = %55, %45
  store i1 false, i1* %7, align 1, !dbg !242
  br label %99, !dbg !242

; <label>:62:                                     ; preds = %55, %49
  %63 = load %struct._list**, %struct._list*** %10, align 8, !dbg !243
  %64 = load %struct._list*, %struct._list** %63, align 8, !dbg !245
  %65 = icmp ne %struct._list* %64, null, !dbg !246
  br i1 %65, label %67, label %66, !dbg !247

; <label>:66:                                     ; preds = %62
  br label %72, !dbg !248

; <label>:67:                                     ; preds = %62
  %68 = load %struct._list**, %struct._list*** %10, align 8, !dbg !250
  %69 = load %struct._list*, %struct._list** %68, align 8, !dbg !252
  %70 = getelementptr inbounds %struct._list, %struct._list* %69, i32 0, i32 0, !dbg !253
  %71 = load %struct._element*, %struct._element** %70, align 8, !dbg !253
  br label %72, !dbg !254

; <label>:72:                                     ; preds = %67, %66
  %73 = phi %struct._element* [ null, %66 ], [ %71, %67 ], !dbg !255
  store %struct._element* %73, %struct._element** %14, align 8, !dbg !257
  br label %74, !dbg !258

; <label>:74:                                     ; preds = %94, %72
  %75 = load %struct._element*, %struct._element** %14, align 8, !dbg !259
  %76 = icmp ne %struct._element* %75, null, !dbg !262
  br i1 %76, label %77, label %98, !dbg !262

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %17, metadata !263, metadata !159), !dbg !265
  %78 = load %struct._element*, %struct._element** %14, align 8, !dbg !266
  %79 = getelementptr inbounds %struct._element, %struct._element* %78, i32 0, i32 2, !dbg !267
  %80 = load i8*, i8** %79, align 8, !dbg !267
  %81 = bitcast i8* %80 to %struct.rt_entry*, !dbg !268
  store %struct.rt_entry* %81, %struct.rt_entry** %17, align 8, !dbg !265
  %82 = load %struct.rt_entry*, %struct.rt_entry** %17, align 8, !dbg !269
  %83 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %82, i32 0, i32 1, !dbg !271
  %84 = load i8*, i8** %83, align 8, !dbg !271
  %85 = load i8*, i8** %8, align 8, !dbg !272
  %86 = call i32 @strcmp(i8* %84, i8* %85) #6, !dbg !273
  %87 = icmp ne i32 %86, 0, !dbg !273
  br i1 %87, label %93, label %88, !dbg !274

; <label>:88:                                     ; preds = %77
  %89 = load %struct.rt_entry*, %struct.rt_entry** %17, align 8, !dbg !275
  %90 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %89, i32 0, i32 0, !dbg !277
  %91 = load i32, i32* %90, align 8, !dbg !277
  %92 = load i32*, i32** %9, align 8, !dbg !278
  store i32 %91, i32* %92, align 4, !dbg !279
  store i1 true, i1* %7, align 1, !dbg !280
  br label %99, !dbg !280

; <label>:93:                                     ; preds = %77
  br label %94, !dbg !281

; <label>:94:                                     ; preds = %93
  %95 = load %struct._element*, %struct._element** %14, align 8, !dbg !282
  %96 = getelementptr inbounds %struct._element, %struct._element* %95, i32 0, i32 0, !dbg !284
  %97 = load %struct._element*, %struct._element** %96, align 8, !dbg !284
  store %struct._element* %97, %struct._element** %14, align 8, !dbg !285
  br label %74, !dbg !286, !llvm.loop !287

; <label>:98:                                     ; preds = %74
  store i1 false, i1* %7, align 1, !dbg !289
  br label %99, !dbg !289

; <label>:99:                                     ; preds = %98, %88, %61, %31
  %100 = load i1, i1* %7, align 1, !dbg !290
  ret i1 %100, !dbg !290
}

; Function Attrs: nounwind uwtable
define zeroext i1 @find_rttables_dsfield(i8*, i8*) #0 !dbg !291 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !295, metadata !159), !dbg !296
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !297, metadata !159), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %5, metadata !299, metadata !159), !dbg !300
  call void @llvm.dbg.declare(metadata i8* %6, metadata !301, metadata !159), !dbg !302
  %7 = load i8*, i8** %3, align 8, !dbg !303
  %8 = call zeroext i1 @find_entry(i8* %7, i32* %5, %struct._list** @rt_dsfields, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), %struct.rt_entry* null, i32 255), !dbg !304
  %9 = zext i1 %8 to i8, !dbg !305
  store i8 %9, i8* %6, align 1, !dbg !305
  %10 = load i32, i32* %5, align 4, !dbg !306
  %11 = and i32 %10, 255, !dbg !307
  %12 = trunc i32 %11 to i8, !dbg !306
  %13 = load i8*, i8** %4, align 8, !dbg !308
  store i8 %12, i8* %13, align 1, !dbg !309
  %14 = load i8, i8* %6, align 1, !dbg !310
  %15 = trunc i8 %14 to i1, !dbg !310
  ret i1 %15, !dbg !311
}

; Function Attrs: nounwind uwtable
define zeroext i1 @find_rttables_group(i8*, i32*) #0 !dbg !312 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !313, metadata !159), !dbg !314
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !315, metadata !159), !dbg !316
  %5 = load i8*, i8** %3, align 8, !dbg !317
  %6 = load i32*, i32** %4, align 8, !dbg !318
  %7 = call zeroext i1 @find_entry(i8* %5, i32* %6, %struct._list** @rt_groups, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct.rt_entry* null, i32 2147483647), !dbg !319
  ret i1 %7, !dbg !320
}

; Function Attrs: nounwind uwtable
define zeroext i1 @find_rttables_realms(i8*, i32*) #0 !dbg !321 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !322, metadata !159), !dbg !323
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !324, metadata !159), !dbg !325
  %5 = load i8*, i8** %3, align 8, !dbg !326
  %6 = load i32*, i32** %4, align 8, !dbg !327
  %7 = call zeroext i1 @find_entry(i8* %5, i32* %6, %struct._list** @rt_realms, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), %struct.rt_entry* null, i32 255), !dbg !328
  ret i1 %7, !dbg !329
}

; Function Attrs: nounwind uwtable
define zeroext i1 @find_rttables_proto(i8*, i8*) #0 !dbg !330 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !331, metadata !159), !dbg !332
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !333, metadata !159), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %5, metadata !335, metadata !159), !dbg !336
  call void @llvm.dbg.declare(metadata i8* %6, metadata !337, metadata !159), !dbg !338
  %7 = load i8*, i8** %3, align 8, !dbg !339
  %8 = call zeroext i1 @find_entry(i8* %7, i32* %5, %struct._list** @rt_protos, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), %struct.rt_entry* getelementptr inbounds ([16 x %struct.rt_entry], [16 x %struct.rt_entry]* @rtprot_default, i32 0, i32 0), i32 255), !dbg !340
  %9 = zext i1 %8 to i8, !dbg !341
  store i8 %9, i8* %6, align 1, !dbg !341
  %10 = load i32, i32* %5, align 4, !dbg !342
  %11 = and i32 %10, 255, !dbg !343
  %12 = trunc i32 %11 to i8, !dbg !342
  %13 = load i8*, i8** %4, align 8, !dbg !344
  store i8 %12, i8* %13, align 1, !dbg !345
  %14 = load i8, i8* %6, align 1, !dbg !346
  %15 = trunc i8 %14 to i1, !dbg !346
  ret i1 %15, !dbg !347
}

; Function Attrs: nounwind uwtable
define zeroext i1 @find_rttables_rtntype(i8*, i8*) #0 !dbg !348 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !349, metadata !159), !dbg !350
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !351, metadata !159), !dbg !352
  call void @llvm.dbg.declare(metadata i8** %6, metadata !353, metadata !159), !dbg !354
  call void @llvm.dbg.declare(metadata i64* %7, metadata !355, metadata !159), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %8, metadata !357, metadata !159), !dbg !358
  store i32 0, i32* %8, align 4, !dbg !359
  br label %9, !dbg !361

; <label>:9:                                      ; preds = %34, %2
  %10 = load i32, i32* %8, align 4, !dbg !362
  %11 = sext i32 %10 to i64, !dbg !365
  %12 = getelementptr inbounds [13 x %struct.rt_entry], [13 x %struct.rt_entry]* @rtntypes, i64 0, i64 %11, !dbg !365
  %13 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %12, i32 0, i32 1, !dbg !366
  %14 = load i8*, i8** %13, align 8, !dbg !366
  %15 = icmp ne i8* %14, null, !dbg !367
  br i1 %15, label %16, label %37, !dbg !367

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %4, align 8, !dbg !368
  %18 = load i32, i32* %8, align 4, !dbg !371
  %19 = sext i32 %18 to i64, !dbg !372
  %20 = getelementptr inbounds [13 x %struct.rt_entry], [13 x %struct.rt_entry]* @rtntypes, i64 0, i64 %19, !dbg !372
  %21 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %20, i32 0, i32 1, !dbg !373
  %22 = load i8*, i8** %21, align 8, !dbg !373
  %23 = call i32 @strcmp(i8* %17, i8* %22) #6, !dbg !374
  %24 = icmp ne i32 %23, 0, !dbg !374
  br i1 %24, label %33, label %25, !dbg !375

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %8, align 4, !dbg !376
  %27 = sext i32 %26 to i64, !dbg !378
  %28 = getelementptr inbounds [13 x %struct.rt_entry], [13 x %struct.rt_entry]* @rtntypes, i64 0, i64 %27, !dbg !378
  %29 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %28, i32 0, i32 0, !dbg !379
  %30 = load i32, i32* %29, align 16, !dbg !379
  %31 = trunc i32 %30 to i8, !dbg !380
  %32 = load i8*, i8** %5, align 8, !dbg !381
  store i8 %31, i8* %32, align 1, !dbg !382
  store i1 true, i1* %3, align 1, !dbg !383
  br label %58, !dbg !383

; <label>:33:                                     ; preds = %16
  br label %34, !dbg !384

; <label>:34:                                     ; preds = %33
  %35 = load i32, i32* %8, align 4, !dbg !385
  %36 = add nsw i32 %35, 1, !dbg !385
  store i32 %36, i32* %8, align 4, !dbg !385
  br label %9, !dbg !387, !llvm.loop !388

; <label>:37:                                     ; preds = %9
  %38 = load i8*, i8** %4, align 8, !dbg !390
  %39 = call i64 @strtoul(i8* %38, i8** %6, i32 0) #5, !dbg !391
  store i64 %39, i64* %7, align 8, !dbg !392
  %40 = load i8*, i8** %6, align 8, !dbg !393
  %41 = load i8, i8* %40, align 1, !dbg !395
  %42 = sext i8 %41 to i32, !dbg !395
  %43 = icmp ne i32 %42, 0, !dbg !395
  br i1 %43, label %53, label %44, !dbg !396

; <label>:44:                                     ; preds = %37
  %45 = load i64, i64* %7, align 8, !dbg !397
  %46 = icmp ugt i64 %45, 255, !dbg !399
  br i1 %46, label %53, label %47, !dbg !400

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %4, align 8, !dbg !401
  %49 = getelementptr inbounds i8, i8* %48, i64 0, !dbg !401
  %50 = load i8, i8* %49, align 1, !dbg !401
  %51 = sext i8 %50 to i32, !dbg !401
  %52 = icmp eq i32 %51, 45, !dbg !403
  br i1 %52, label %53, label %54, !dbg !404

; <label>:53:                                     ; preds = %47, %44, %37
  store i1 false, i1* %3, align 1, !dbg !405
  br label %58, !dbg !405

; <label>:54:                                     ; preds = %47
  %55 = load i64, i64* %7, align 8, !dbg !406
  %56 = trunc i64 %55 to i8, !dbg !407
  %57 = load i8*, i8** %5, align 8, !dbg !408
  store i8 %56, i8* %57, align 1, !dbg !409
  store i1 true, i1* %3, align 1, !dbg !410
  br label %58, !dbg !410

; <label>:58:                                     ; preds = %54, %53, %25
  %59 = load i1, i1* %3, align 1, !dbg !411
  ret i1 %59, !dbg !411
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: nounwind uwtable
define i8* @get_rttables_group(i32) #0 !dbg !412 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !415, metadata !159), !dbg !416
  %3 = load i32, i32* %2, align 4, !dbg !417
  %4 = call i8* @get_entry(i32 %3, %struct._list** @rt_groups, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct.rt_entry* null, i32 2147483647), !dbg !418
  ret i8* %4, !dbg !419
}

; Function Attrs: nounwind uwtable
define internal i8* @get_entry(i32, %struct._list**, i8*, %struct.rt_entry*, i32) #0 !dbg !420 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._list**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rt_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._element*, align 8
  %13 = alloca %struct.rt_entry*, align 8
  store i32 %0, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !423, metadata !159), !dbg !424
  store %struct._list** %1, %struct._list*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._list*** %8, metadata !425, metadata !159), !dbg !426
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !427, metadata !159), !dbg !428
  store %struct.rt_entry* %3, %struct.rt_entry** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %10, metadata !429, metadata !159), !dbg !430
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !431, metadata !159), !dbg !432
  call void @llvm.dbg.declare(metadata %struct._element** %12, metadata !433, metadata !159), !dbg !434
  %14 = load %struct._list**, %struct._list*** %8, align 8, !dbg !435
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !437
  %16 = icmp ne %struct._list* %15, null, !dbg !438
  br i1 %16, label %22, label %17, !dbg !439

; <label>:17:                                     ; preds = %5
  %18 = load %struct._list**, %struct._list*** %8, align 8, !dbg !440
  %19 = load i8*, i8** %9, align 8, !dbg !441
  %20 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8, !dbg !442
  %21 = load i32, i32* %11, align 4, !dbg !443
  call void @initialise_list(%struct._list** %18, i8* %19, %struct.rt_entry* %20, i32 %21), !dbg !444
  br label %22, !dbg !444

; <label>:22:                                     ; preds = %17, %5
  %23 = load %struct._list**, %struct._list*** %8, align 8, !dbg !445
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !447
  %25 = icmp eq %struct._list* %24, null, !dbg !448
  br i1 %25, label %73, label %26, !dbg !449

; <label>:26:                                     ; preds = %22
  %27 = load %struct._list**, %struct._list*** %8, align 8, !dbg !450
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !452
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 0, !dbg !453
  %30 = load %struct._element*, %struct._element** %29, align 8, !dbg !453
  %31 = icmp eq %struct._element* %30, null, !dbg !454
  br i1 %31, label %32, label %38, !dbg !455

; <label>:32:                                     ; preds = %26
  %33 = load %struct._list**, %struct._list*** %8, align 8, !dbg !456
  %34 = load %struct._list*, %struct._list** %33, align 8, !dbg !458
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 1, !dbg !459
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !459
  %37 = icmp eq %struct._element* %36, null, !dbg !460
  br i1 %37, label %73, label %38, !dbg !461

; <label>:38:                                     ; preds = %32, %26
  %39 = load %struct._list**, %struct._list*** %8, align 8, !dbg !462
  %40 = load %struct._list*, %struct._list** %39, align 8, !dbg !465
  %41 = icmp ne %struct._list* %40, null, !dbg !466
  br i1 %41, label %43, label %42, !dbg !467

; <label>:42:                                     ; preds = %38
  br label %48, !dbg !468

; <label>:43:                                     ; preds = %38
  %44 = load %struct._list**, %struct._list*** %8, align 8, !dbg !470
  %45 = load %struct._list*, %struct._list** %44, align 8, !dbg !472
  %46 = getelementptr inbounds %struct._list, %struct._list* %45, i32 0, i32 0, !dbg !473
  %47 = load %struct._element*, %struct._element** %46, align 8, !dbg !473
  br label %48, !dbg !474

; <label>:48:                                     ; preds = %43, %42
  %49 = phi %struct._element* [ null, %42 ], [ %47, %43 ], !dbg !475
  store %struct._element* %49, %struct._element** %12, align 8, !dbg !477
  br label %50, !dbg !478

; <label>:50:                                     ; preds = %68, %48
  %51 = load %struct._element*, %struct._element** %12, align 8, !dbg !479
  %52 = icmp ne %struct._element* %51, null, !dbg !482
  br i1 %52, label %53, label %72, !dbg !482

; <label>:53:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %13, metadata !483, metadata !159), !dbg !485
  %54 = load %struct._element*, %struct._element** %12, align 8, !dbg !486
  %55 = getelementptr inbounds %struct._element, %struct._element* %54, i32 0, i32 2, !dbg !487
  %56 = load i8*, i8** %55, align 8, !dbg !487
  %57 = bitcast i8* %56 to %struct.rt_entry*, !dbg !488
  store %struct.rt_entry* %57, %struct.rt_entry** %13, align 8, !dbg !485
  %58 = load %struct.rt_entry*, %struct.rt_entry** %13, align 8, !dbg !489
  %59 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %58, i32 0, i32 0, !dbg !491
  %60 = load i32, i32* %59, align 8, !dbg !491
  %61 = load i32, i32* %7, align 4, !dbg !492
  %62 = icmp eq i32 %60, %61, !dbg !493
  br i1 %62, label %63, label %67, !dbg !494

; <label>:63:                                     ; preds = %53
  %64 = load %struct.rt_entry*, %struct.rt_entry** %13, align 8, !dbg !495
  %65 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %64, i32 0, i32 1, !dbg !496
  %66 = load i8*, i8** %65, align 8, !dbg !496
  store i8* %66, i8** %6, align 8, !dbg !497
  br label %76, !dbg !497

; <label>:67:                                     ; preds = %53
  br label %68, !dbg !498

; <label>:68:                                     ; preds = %67
  %69 = load %struct._element*, %struct._element** %12, align 8, !dbg !499
  %70 = getelementptr inbounds %struct._element, %struct._element* %69, i32 0, i32 0, !dbg !501
  %71 = load %struct._element*, %struct._element** %70, align 8, !dbg !501
  store %struct._element* %71, %struct._element** %12, align 8, !dbg !502
  br label %50, !dbg !503, !llvm.loop !504

; <label>:72:                                     ; preds = %50
  br label %73, !dbg !506

; <label>:73:                                     ; preds = %72, %32, %22
  %74 = load i32, i32* %7, align 4, !dbg !507
  %75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @ret_buf, i32 0, i32 0), i64 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %74) #5, !dbg !508
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @ret_buf, i32 0, i32 0), i8** %6, align 8, !dbg !509
  br label %76, !dbg !509

; <label>:76:                                     ; preds = %73, %63
  %77 = load i8*, i8** %6, align 8, !dbg !510
  ret i8* %77, !dbg !510
}

; Function Attrs: nounwind uwtable
define i8* @get_rttables_rtntype(i8 zeroext) #0 !dbg !511 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !514, metadata !159), !dbg !515
  call void @llvm.dbg.declare(metadata i32* %4, metadata !516, metadata !159), !dbg !517
  store i32 0, i32* %4, align 4, !dbg !518
  br label %5, !dbg !520

; <label>:5:                                      ; preds = %28, %1
  %6 = load i32, i32* %4, align 4, !dbg !521
  %7 = sext i32 %6 to i64, !dbg !524
  %8 = getelementptr inbounds [13 x %struct.rt_entry], [13 x %struct.rt_entry]* @rtntypes, i64 0, i64 %7, !dbg !524
  %9 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %8, i32 0, i32 1, !dbg !525
  %10 = load i8*, i8** %9, align 8, !dbg !525
  %11 = icmp ne i8* %10, null, !dbg !526
  br i1 %11, label %12, label %31, !dbg !526

; <label>:12:                                     ; preds = %5
  %13 = load i8, i8* %3, align 1, !dbg !527
  %14 = zext i8 %13 to i32, !dbg !527
  %15 = load i32, i32* %4, align 4, !dbg !530
  %16 = sext i32 %15 to i64, !dbg !531
  %17 = getelementptr inbounds [13 x %struct.rt_entry], [13 x %struct.rt_entry]* @rtntypes, i64 0, i64 %16, !dbg !531
  %18 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %17, i32 0, i32 0, !dbg !532
  %19 = load i32, i32* %18, align 16, !dbg !532
  %20 = icmp eq i32 %14, %19, !dbg !533
  br i1 %20, label %21, label %27, !dbg !534

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %4, align 4, !dbg !535
  %23 = sext i32 %22 to i64, !dbg !536
  %24 = getelementptr inbounds [13 x %struct.rt_entry], [13 x %struct.rt_entry]* @rtntypes, i64 0, i64 %23, !dbg !536
  %25 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %24, i32 0, i32 1, !dbg !537
  %26 = load i8*, i8** %25, align 8, !dbg !537
  store i8* %26, i8** %2, align 8, !dbg !538
  br label %35, !dbg !538

; <label>:27:                                     ; preds = %12
  br label %28, !dbg !539

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %4, align 4, !dbg !540
  %30 = add nsw i32 %29, 1, !dbg !540
  store i32 %30, i32* %4, align 4, !dbg !540
  br label %5, !dbg !542, !llvm.loop !543

; <label>:31:                                     ; preds = %5
  %32 = load i8, i8* %3, align 1, !dbg !545
  %33 = zext i8 %32 to i32, !dbg !545
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @ret_buf, i32 0, i32 0), i64 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %33) #5, !dbg !546
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @ret_buf, i32 0, i32 0), i8** %2, align 8, !dbg !547
  br label %35, !dbg !547

; <label>:35:                                     ; preds = %31, %21
  %36 = load i8*, i8** %2, align 8, !dbg !548
  ret i8* %36, !dbg !548
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @find_rttables_scope(i8*, i8*) #0 !dbg !549 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !550, metadata !159), !dbg !551
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !552, metadata !159), !dbg !553
  call void @llvm.dbg.declare(metadata i32* %5, metadata !554, metadata !159), !dbg !555
  call void @llvm.dbg.declare(metadata i8* %6, metadata !556, metadata !159), !dbg !557
  %7 = load i8*, i8** %3, align 8, !dbg !558
  %8 = call zeroext i1 @find_entry(i8* %7, i32* %5, %struct._list** @rt_scopes, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), %struct.rt_entry* getelementptr inbounds ([6 x %struct.rt_entry], [6 x %struct.rt_entry]* @rtscope_default, i32 0, i32 0), i32 255), !dbg !559
  %9 = zext i1 %8 to i8, !dbg !560
  store i8 %9, i8* %6, align 1, !dbg !560
  %10 = load i32, i32* %5, align 4, !dbg !561
  %11 = and i32 %10, 255, !dbg !562
  %12 = trunc i32 %11 to i8, !dbg !561
  %13 = load i8*, i8** %4, align 8, !dbg !563
  store i8 %12, i8* %13, align 1, !dbg !564
  %14 = load i8, i8* %6, align 1, !dbg !565
  %15 = trunc i8 %14 to i1, !dbg !565
  ret i1 %15, !dbg !566
}

; Function Attrs: nounwind uwtable
define i8* @get_rttables_scope(i32) #0 !dbg !567 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !568, metadata !159), !dbg !569
  %3 = load i32, i32* %2, align 4, !dbg !570
  %4 = call i8* @get_entry(i32 %3, %struct._list** @rt_scopes, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), %struct.rt_entry* getelementptr inbounds ([6 x %struct.rt_entry], [6 x %struct.rt_entry]* @rtscope_default, i32 0, i32 0), i32 255), !dbg !571
  ret i8* %4, !dbg !572
}

; Function Attrs: nounwind uwtable
define internal void @initialise_list(%struct._list**, i8*, %struct.rt_entry*, i32) #0 !dbg !573 {
  %5 = alloca %struct._list**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rt_entry*, align 8
  %8 = alloca i32, align 4
  store %struct._list** %0, %struct._list*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list*** %5, metadata !576, metadata !159), !dbg !577
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !578, metadata !159), !dbg !579
  store %struct.rt_entry* %2, %struct.rt_entry** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %7, metadata !580, metadata !159), !dbg !581
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !582, metadata !159), !dbg !583
  %9 = load %struct._list**, %struct._list*** %5, align 8, !dbg !584
  %10 = load %struct._list*, %struct._list** %9, align 8, !dbg !586
  %11 = icmp ne %struct._list* %10, null, !dbg !586
  br i1 %11, label %12, label %13, !dbg !587

; <label>:12:                                     ; preds = %4
  br label %29, !dbg !588

; <label>:13:                                     ; preds = %4
  %14 = call %struct._list* @alloc_list(void (i8*)* @free_rt_entry, void (%struct._IO_FILE*, i8*)* @dump_rt_entry), !dbg !589
  %15 = load %struct._list**, %struct._list*** %5, align 8, !dbg !590
  store %struct._list* %14, %struct._list** %15, align 8, !dbg !591
  %16 = load %struct._list**, %struct._list*** %5, align 8, !dbg !592
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !594
  %18 = icmp ne %struct._list* %17, null, !dbg !594
  br i1 %18, label %20, label %19, !dbg !595

; <label>:19:                                     ; preds = %13
  br label %29, !dbg !596

; <label>:20:                                     ; preds = %13
  %21 = load i8*, i8** %6, align 8, !dbg !597
  %22 = load %struct._list**, %struct._list*** %5, align 8, !dbg !598
  %23 = load i32, i32* %8, align 4, !dbg !599
  call void @read_file(i8* %21, %struct._list** %22, i32 %23), !dbg !600
  %24 = load %struct.rt_entry*, %struct.rt_entry** %7, align 8, !dbg !601
  %25 = icmp ne %struct.rt_entry* %24, null, !dbg !601
  br i1 %25, label %26, label %29, !dbg !603

; <label>:26:                                     ; preds = %20
  %27 = load %struct._list**, %struct._list*** %5, align 8, !dbg !604
  %28 = load %struct.rt_entry*, %struct.rt_entry** %7, align 8, !dbg !605
  call void @add_default(%struct._list** %27, %struct.rt_entry* %28), !dbg !606
  br label %29, !dbg !606

; <label>:29:                                     ; preds = %12, %19, %26, %20
  ret void, !dbg !607
}

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @free_rt_entry(i8*) #0 !dbg !608 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt_entry*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !609, metadata !159), !dbg !610
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %3, metadata !611, metadata !159), !dbg !612
  %4 = load i8*, i8** %2, align 8, !dbg !613
  %5 = bitcast i8* %4 to %struct.rt_entry*, !dbg !614
  store %struct.rt_entry* %5, %struct.rt_entry** %3, align 8, !dbg !612
  %6 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8, !dbg !615
  %7 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %6, i32 0, i32 1, !dbg !617
  %8 = load i8*, i8** %7, align 8, !dbg !617
  %9 = icmp ne i8* %8, null, !dbg !615
  br i1 %9, label %10, label %16, !dbg !618

; <label>:10:                                     ; preds = %1
  %11 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8, !dbg !619
  %12 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %11, i32 0, i32 1, !dbg !620
  %13 = load i8*, i8** %12, align 8, !dbg !620
  call void @free(i8* %13) #5, !dbg !621
  %14 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8, !dbg !622
  %15 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %14, i32 0, i32 1, !dbg !623
  store i8* null, i8** %15, align 8, !dbg !624
  br label %16, !dbg !625

; <label>:16:                                     ; preds = %10, %1
  %17 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8, !dbg !626
  %18 = bitcast %struct.rt_entry* %17 to i8*, !dbg !626
  call void @free(i8* %18) #5, !dbg !628
  store %struct.rt_entry* null, %struct.rt_entry** %3, align 8, !dbg !629
  ret void, !dbg !630
}

; Function Attrs: nounwind uwtable
define internal void @dump_rt_entry(%struct._IO_FILE*, i8*) #0 !dbg !631 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt_entry*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !632, metadata !159), !dbg !633
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !634, metadata !159), !dbg !635
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %5, metadata !636, metadata !159), !dbg !637
  %6 = load i8*, i8** %4, align 8, !dbg !638
  %7 = bitcast i8* %6 to %struct.rt_entry*, !dbg !639
  store %struct.rt_entry* %7, %struct.rt_entry** %5, align 8, !dbg !637
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !640
  %9 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8, !dbg !641
  %10 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %9, i32 0, i32 0, !dbg !642
  %11 = load i32, i32* %10, align 8, !dbg !642
  %12 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8, !dbg !643
  %13 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %12, i32 0, i32 1, !dbg !644
  %14 = load i8*, i8** %13, align 8, !dbg !644
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %11, i8* %14), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: nounwind uwtable
define internal void @read_file(i8*, %struct._list**, i32) #0 !dbg !647 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._list**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct.rt_entry*, align 8
  %9 = alloca %struct._vector*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !650, metadata !159), !dbg !651
  store %struct._list** %1, %struct._list*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._list*** %5, metadata !652, metadata !159), !dbg !653
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !654, metadata !159), !dbg !655
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !656, metadata !159), !dbg !657
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %8, metadata !658, metadata !159), !dbg !659
  call void @llvm.dbg.declare(metadata %struct._vector** %9, metadata !660, metadata !159), !dbg !670
  store %struct._vector* null, %struct._vector** %9, align 8, !dbg !670
  call void @llvm.dbg.declare(metadata [128 x i8]* %10, metadata !671, metadata !159), !dbg !675
  call void @llvm.dbg.declare(metadata i64* %11, metadata !676, metadata !159), !dbg !677
  call void @llvm.dbg.declare(metadata i8** %12, metadata !678, metadata !159), !dbg !679
  call void @llvm.dbg.declare(metadata i8** %13, metadata !680, metadata !159), !dbg !681
  %14 = load i8*, i8** %4, align 8, !dbg !682
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !dbg !683
  store %struct._IO_FILE* %15, %struct._IO_FILE** %7, align 8, !dbg !684
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !685
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !685
  br i1 %17, label %19, label %18, !dbg !687

; <label>:18:                                     ; preds = %3
  br label %122, !dbg !688

; <label>:19:                                     ; preds = %3
  br label %20, !dbg !689

; <label>:20:                                     ; preds = %98, %73, %36, %30, %19
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i32 0, i32 0, !dbg !690
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !692
  %23 = call i8* @fgets(i8* %21, i32 128, %struct._IO_FILE* %22), !dbg !693
  %24 = icmp ne i8* %23, null, !dbg !694
  br i1 %24, label %25, label %110, !dbg !694

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i32 0, i32 0, !dbg !695
  %27 = call %struct._vector* @alloc_strvec_r(i8* %26), !dbg !697
  store %struct._vector* %27, %struct._vector** %9, align 8, !dbg !698
  %28 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !699
  %29 = icmp ne %struct._vector* %28, null, !dbg !699
  br i1 %29, label %31, label %30, !dbg !701

; <label>:30:                                     ; preds = %25
  br label %20, !dbg !702, !llvm.loop !703

; <label>:31:                                     ; preds = %25
  %32 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !704
  %33 = getelementptr inbounds %struct._vector, %struct._vector* %32, i32 0, i32 1, !dbg !706
  %34 = load i32, i32* %33, align 4, !dbg !706
  %35 = icmp ne i32 %34, 2, !dbg !707
  br i1 %35, label %36, label %38, !dbg !708

; <label>:36:                                     ; preds = %31
  %37 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !709
  call void @free_strvec(%struct._vector* %37), !dbg !711
  br label %20, !dbg !712, !llvm.loop !703

; <label>:38:                                     ; preds = %31
  %39 = call i8* @zalloc(i64 16), !dbg !713
  %40 = bitcast i8* %39 to %struct.rt_entry*, !dbg !714
  store %struct.rt_entry* %40, %struct.rt_entry** %8, align 8, !dbg !715
  %41 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !716
  %42 = icmp ne %struct.rt_entry* %41, null, !dbg !716
  br i1 %42, label %46, label %43, !dbg !718

; <label>:43:                                     ; preds = %38
  %44 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !719
  call void @free_strvec(%struct._vector* %44), !dbg !721
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !722
  br label %113, !dbg !723

; <label>:46:                                     ; preds = %38
  %47 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !724
  %48 = call i8* @strvec_slot(%struct._vector* %47, i64 0), !dbg !725
  store i8* %48, i8** %12, align 8, !dbg !726
  %49 = load i8*, i8** %12, align 8, !dbg !727
  %50 = call i64 @strspn(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !728
  %51 = load i8*, i8** %12, align 8, !dbg !729
  %52 = getelementptr inbounds i8, i8* %51, i64 %50, !dbg !729
  store i8* %52, i8** %12, align 8, !dbg !729
  %53 = load i8*, i8** %12, align 8, !dbg !730
  %54 = call i64 @strtoul(i8* %53, i8** %13, i32 0) #5, !dbg !731
  store i64 %54, i64* %11, align 8, !dbg !732
  %55 = load i8*, i8** %12, align 8, !dbg !733
  %56 = load i8, i8* %55, align 1, !dbg !735
  %57 = sext i8 %56 to i32, !dbg !735
  %58 = icmp eq i32 %57, 45, !dbg !736
  br i1 %58, label %73, label %59, !dbg !737

; <label>:59:                                     ; preds = %46
  %60 = load i8*, i8** %12, align 8, !dbg !738
  %61 = load i8*, i8** %13, align 8, !dbg !740
  %62 = icmp eq i8* %60, %61, !dbg !741
  br i1 %62, label %73, label %63, !dbg !742

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %13, align 8, !dbg !743
  %65 = load i8, i8* %64, align 1, !dbg !745
  %66 = sext i8 %65 to i32, !dbg !745
  %67 = icmp ne i32 %66, 0, !dbg !745
  br i1 %67, label %73, label %68, !dbg !746

; <label>:68:                                     ; preds = %63
  %69 = load i64, i64* %11, align 8, !dbg !747
  %70 = load i32, i32* %6, align 4, !dbg !749
  %71 = zext i32 %70 to i64, !dbg !749
  %72 = icmp ugt i64 %69, %71, !dbg !750
  br i1 %72, label %73, label %77, !dbg !751

; <label>:73:                                     ; preds = %68, %63, %59, %46
  %74 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !752
  %75 = bitcast %struct.rt_entry* %74 to i8*, !dbg !752
  call void @free(i8* %75) #5, !dbg !754
  store %struct.rt_entry* null, %struct.rt_entry** %8, align 8, !dbg !755
  %76 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !756
  call void @free_strvec(%struct._vector* %76), !dbg !757
  br label %20, !dbg !759, !llvm.loop !703

; <label>:77:                                     ; preds = %68
  %78 = load i64, i64* %11, align 8, !dbg !760
  %79 = trunc i64 %78 to i32, !dbg !761
  %80 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !762
  %81 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %80, i32 0, i32 0, !dbg !763
  store i32 %79, i32* %81, align 8, !dbg !764
  %82 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !765
  %83 = call i8* @strvec_slot(%struct._vector* %82, i64 1), !dbg !766
  %84 = call i64 @strlen(i8* %83) #6, !dbg !767
  %85 = add i64 %84, 1, !dbg !769
  %86 = call i8* @zalloc(i64 %85), !dbg !770
  %87 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !772
  %88 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %87, i32 0, i32 1, !dbg !773
  store i8* %86, i8** %88, align 8, !dbg !774
  %89 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !775
  %90 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %89, i32 0, i32 1, !dbg !777
  %91 = load i8*, i8** %90, align 8, !dbg !777
  %92 = icmp ne i8* %91, null, !dbg !775
  br i1 %92, label %98, label %93, !dbg !778

; <label>:93:                                     ; preds = %77
  %94 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !779
  %95 = bitcast %struct.rt_entry* %94 to i8*, !dbg !779
  call void @free(i8* %95) #5, !dbg !781
  store %struct.rt_entry* null, %struct.rt_entry** %8, align 8, !dbg !782
  %96 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !783
  call void @free_strvec(%struct._vector* %96), !dbg !784
  %97 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !785
  br label %113, !dbg !786

; <label>:98:                                     ; preds = %77
  %99 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !787
  %100 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %99, i32 0, i32 1, !dbg !788
  %101 = load i8*, i8** %100, align 8, !dbg !788
  %102 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !789
  %103 = call i8* @strvec_slot(%struct._vector* %102, i64 1), !dbg !790
  %104 = call i8* @strcpy(i8* %101, i8* %103) #5, !dbg !791
  %105 = load %struct._list**, %struct._list*** %5, align 8, !dbg !792
  %106 = load %struct._list*, %struct._list** %105, align 8, !dbg !793
  %107 = load %struct.rt_entry*, %struct.rt_entry** %8, align 8, !dbg !794
  %108 = bitcast %struct.rt_entry* %107 to i8*, !dbg !794
  call void @list_add(%struct._list* %106, i8* %108), !dbg !795
  %109 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !796
  call void @free_strvec(%struct._vector* %109), !dbg !797
  br label %20, !dbg !798, !llvm.loop !703

; <label>:110:                                    ; preds = %20
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !800
  %112 = call i32 @fclose(%struct._IO_FILE* %111), !dbg !801
  br label %122, !dbg !802

; <label>:113:                                    ; preds = %93, %43
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !803
  %115 = call i32 @fclose(%struct._IO_FILE* %114), !dbg !804
  %116 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !805
  %117 = icmp ne %struct._vector* %116, null, !dbg !805
  br i1 %117, label %118, label %120, !dbg !807

; <label>:118:                                    ; preds = %113
  %119 = load %struct._vector*, %struct._vector** %9, align 8, !dbg !808
  call void @free_strvec(%struct._vector* %119), !dbg !809
  br label %120, !dbg !809

; <label>:120:                                    ; preds = %118, %113
  %121 = load %struct._list**, %struct._list*** %5, align 8, !dbg !810
  call void @free_list(%struct._list** %121), !dbg !811
  br label %122, !dbg !812

; <label>:122:                                    ; preds = %120, %110, %18
  ret void, !dbg !813
}

; Function Attrs: nounwind uwtable
define internal void @add_default(%struct._list**, %struct.rt_entry*) #0 !dbg !814 {
  %3 = alloca %struct._list**, align 8
  %4 = alloca %struct.rt_entry*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.rt_entry*, align 8
  %7 = alloca %struct._element*, align 8
  store %struct._list** %0, %struct._list*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._list*** %3, metadata !817, metadata !159), !dbg !818
  store %struct.rt_entry* %1, %struct.rt_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %4, metadata !819, metadata !159), !dbg !820
  call void @llvm.dbg.declare(metadata i8* %5, metadata !821, metadata !159), !dbg !822
  call void @llvm.dbg.declare(metadata %struct.rt_entry** %6, metadata !823, metadata !159), !dbg !824
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !825, metadata !159), !dbg !826
  br label %8, !dbg !827

; <label>:8:                                      ; preds = %85, %2
  %9 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8, !dbg !828
  %10 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %9, i32 0, i32 1, !dbg !832
  %11 = load i8*, i8** %10, align 8, !dbg !832
  %12 = icmp ne i8* %11, null, !dbg !833
  br i1 %12, label %13, label %88, !dbg !833

; <label>:13:                                     ; preds = %8
  %14 = load %struct._list**, %struct._list*** %3, align 8, !dbg !834
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !837
  %16 = icmp ne %struct._list* %15, null, !dbg !838
  br i1 %16, label %18, label %17, !dbg !839

; <label>:17:                                     ; preds = %13
  br label %23, !dbg !840

; <label>:18:                                     ; preds = %13
  %19 = load %struct._list**, %struct._list*** %3, align 8, !dbg !842
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !844
  %21 = getelementptr inbounds %struct._list, %struct._list* %20, i32 0, i32 0, !dbg !845
  %22 = load %struct._element*, %struct._element** %21, align 8, !dbg !845
  br label %23, !dbg !846

; <label>:23:                                     ; preds = %18, %17
  %24 = phi %struct._element* [ null, %17 ], [ %22, %18 ], !dbg !847
  store %struct._element* %24, %struct._element** %7, align 8, !dbg !849
  store i8 0, i8* %5, align 1, !dbg !850
  br label %25, !dbg !851

; <label>:25:                                     ; preds = %42, %23
  %26 = load %struct._element*, %struct._element** %7, align 8, !dbg !852
  %27 = icmp ne %struct._element* %26, null, !dbg !855
  br i1 %27, label %28, label %46, !dbg !855

; <label>:28:                                     ; preds = %25
  %29 = load %struct._element*, %struct._element** %7, align 8, !dbg !856
  %30 = getelementptr inbounds %struct._element, %struct._element* %29, i32 0, i32 2, !dbg !858
  %31 = load i8*, i8** %30, align 8, !dbg !858
  %32 = bitcast i8* %31 to %struct.rt_entry*, !dbg !859
  store %struct.rt_entry* %32, %struct.rt_entry** %6, align 8, !dbg !860
  %33 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8, !dbg !861
  %34 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %33, i32 0, i32 0, !dbg !863
  %35 = load i32, i32* %34, align 8, !dbg !863
  %36 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8, !dbg !864
  %37 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %36, i32 0, i32 0, !dbg !865
  %38 = load i32, i32* %37, align 8, !dbg !865
  %39 = icmp eq i32 %35, %38, !dbg !866
  br i1 %39, label %40, label %41, !dbg !867

; <label>:40:                                     ; preds = %28
  store i8 1, i8* %5, align 1, !dbg !868
  br label %46, !dbg !870

; <label>:41:                                     ; preds = %28
  br label %42, !dbg !871

; <label>:42:                                     ; preds = %41
  %43 = load %struct._element*, %struct._element** %7, align 8, !dbg !872
  %44 = getelementptr inbounds %struct._element, %struct._element* %43, i32 0, i32 0, !dbg !874
  %45 = load %struct._element*, %struct._element** %44, align 8, !dbg !874
  store %struct._element* %45, %struct._element** %7, align 8, !dbg !875
  br label %25, !dbg !876, !llvm.loop !877

; <label>:46:                                     ; preds = %40, %25
  %47 = load i8, i8* %5, align 1, !dbg !879
  %48 = trunc i8 %47 to i1, !dbg !879
  br i1 %48, label %49, label %50, !dbg !881

; <label>:49:                                     ; preds = %46
  br label %85, !dbg !882

; <label>:50:                                     ; preds = %46
  %51 = call i8* @zalloc(i64 16), !dbg !883
  %52 = bitcast i8* %51 to %struct.rt_entry*, !dbg !884
  store %struct.rt_entry* %52, %struct.rt_entry** %6, align 8, !dbg !885
  %53 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8, !dbg !886
  %54 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %53, i32 0, i32 1, !dbg !887
  %55 = load i8*, i8** %54, align 8, !dbg !887
  %56 = call i64 @strlen(i8* %55) #6, !dbg !888
  %57 = add i64 %56, 1, !dbg !889
  %58 = call i8* @zalloc(i64 %57), !dbg !890
  %59 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8, !dbg !892
  %60 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %59, i32 0, i32 1, !dbg !893
  store i8* %58, i8** %60, align 8, !dbg !894
  %61 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8, !dbg !895
  %62 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %61, i32 0, i32 1, !dbg !897
  %63 = load i8*, i8** %62, align 8, !dbg !897
  %64 = icmp ne i8* %63, null, !dbg !895
  br i1 %64, label %68, label %65, !dbg !898

; <label>:65:                                     ; preds = %50
  %66 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8, !dbg !899
  %67 = bitcast %struct.rt_entry* %66 to i8*, !dbg !899
  call void @free(i8* %67) #5, !dbg !901
  store %struct.rt_entry* null, %struct.rt_entry** %6, align 8, !dbg !902
  br label %88, !dbg !903

; <label>:68:                                     ; preds = %50
  %69 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8, !dbg !904
  %70 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %69, i32 0, i32 1, !dbg !905
  %71 = load i8*, i8** %70, align 8, !dbg !905
  %72 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8, !dbg !906
  %73 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %72, i32 0, i32 1, !dbg !907
  %74 = load i8*, i8** %73, align 8, !dbg !907
  %75 = call i8* @strcpy(i8* %71, i8* %74) #5, !dbg !908
  %76 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8, !dbg !909
  %77 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %76, i32 0, i32 0, !dbg !910
  %78 = load i32, i32* %77, align 8, !dbg !910
  %79 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8, !dbg !911
  %80 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %79, i32 0, i32 0, !dbg !912
  store i32 %78, i32* %80, align 8, !dbg !913
  %81 = load %struct._list**, %struct._list*** %3, align 8, !dbg !914
  %82 = load %struct._list*, %struct._list** %81, align 8, !dbg !915
  %83 = load %struct.rt_entry*, %struct.rt_entry** %6, align 8, !dbg !916
  %84 = bitcast %struct.rt_entry* %83 to i8*, !dbg !916
  call void @list_add(%struct._list* %82, i8* %84), !dbg !917
  br label %85, !dbg !918

; <label>:85:                                     ; preds = %68, %49
  %86 = load %struct.rt_entry*, %struct.rt_entry** %4, align 8, !dbg !919
  %87 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %86, i32 1, !dbg !919
  store %struct.rt_entry* %87, %struct.rt_entry** %4, align 8, !dbg !919
  br label %8, !dbg !921, !llvm.loop !922

; <label>:88:                                     ; preds = %65, %8
  ret void, !dbg !923
}

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare %struct._vector* @alloc_strvec_r(i8*) #1

declare void @free_strvec(%struct._vector*) #1

declare i8* @zalloc(i64) #1

declare i32 @assert(...) #1

declare i8* @strvec_slot(%struct._vector*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare void @list_add(%struct._list*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!136, !137}
!llvm.ident = !{!138}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12, globals: !27)
!1 = !DIFile(filename: "[inter]lib--rttables.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rt_class_t", file: !4, line: 277, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/linux/rtnetlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIEnumerator(name: "RT_TABLE_UNSPEC", value: 0)
!7 = !DIEnumerator(name: "RT_TABLE_COMPAT", value: 252)
!8 = !DIEnumerator(name: "RT_TABLE_DEFAULT", value: 253)
!9 = !DIEnumerator(name: "RT_TABLE_MAIN", value: 254)
!10 = !DIEnumerator(name: "RT_TABLE_LOCAL", value: 255)
!11 = !DIEnumerator(name: "RT_TABLE_MAX", value: -1)
!12 = !{!13, !16, !17, !18, !25}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 48, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!15 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "rt_entry_t", file: !20, line: 54, baseType: !21)
!20 = !DIFile(filename: "rttables.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_entry", file: !20, line: 50, size: 128, align: 64, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !21, file: !20, line: 51, baseType: !16, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !20, line: 52, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!27 = !{!28, !111, !112, !113, !114, !115, !116, !120, !124, !128, !132}
!28 = distinct !DIGlobalVariable(name: "rt_tables", scope: !0, file: !20, line: 115, type: !29, isLocal: true, isDefinition: true, variable: %struct._list** @rt_tables)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !30, line: 31, baseType: !31)
!30 = !DIFile(filename: "list.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !30, line: 39, size: 320, align: 64, elements: !33)
!33 = !{!34, !41, !42, !43, !47}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !32, file: !30, line: 40, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !30, line: 33, size: 192, align: 64, elements: !37)
!37 = !{!38, !39, !40}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !30, line: 34, baseType: !35, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !36, file: !30, line: 35, baseType: !35, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !36, file: !30, line: 36, baseType: !17, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !32, file: !30, line: 41, baseType: !35, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !32, file: !30, line: 42, baseType: !16, size: 32, align: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !32, file: !30, line: 43, baseType: !44, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !17}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !32, file: !30, line: 44, baseType: !48, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !17}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !53, line: 48, baseType: !54)
!53 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !55, line: 241, size: 1728, align: 64, elements: !56)
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!56 = !{!57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !78, !79, !80, !81, !85, !87, !89, !93, !96, !98, !99, !100, !101, !102, !106, !107}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !54, file: !55, line: 242, baseType: !58, size: 32, align: 32)
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !54, file: !55, line: 247, baseType: !25, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !54, file: !55, line: 248, baseType: !25, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !54, file: !55, line: 249, baseType: !25, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !54, file: !55, line: 250, baseType: !25, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !54, file: !55, line: 251, baseType: !25, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !54, file: !55, line: 252, baseType: !25, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !54, file: !55, line: 253, baseType: !25, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !54, file: !55, line: 254, baseType: !25, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !54, file: !55, line: 256, baseType: !25, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !54, file: !55, line: 257, baseType: !25, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !54, file: !55, line: 258, baseType: !25, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !54, file: !55, line: 260, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !55, line: 156, size: 192, align: 64, elements: !73)
!73 = !{!74, !75, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !72, file: !55, line: 157, baseType: !71, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !72, file: !55, line: 158, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !72, file: !55, line: 162, baseType: !58, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !54, file: !55, line: 262, baseType: !76, size: 64, align: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !54, file: !55, line: 264, baseType: !58, size: 32, align: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !54, file: !55, line: 268, baseType: !58, size: 32, align: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !54, file: !55, line: 270, baseType: !82, size: 64, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 131, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!84 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !54, file: !55, line: 274, baseType: !86, size: 16, align: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !54, file: !55, line: 275, baseType: !88, size: 8, align: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !54, file: !55, line: 276, baseType: !90, size: 8, align: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !54, file: !55, line: 280, baseType: !94, size: 64, align: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !55, line: 150, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !54, file: !55, line: 289, baseType: !97, size: 64, align: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !83, line: 132, baseType: !84)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !54, file: !55, line: 297, baseType: !17, size: 64, align: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !54, file: !55, line: 298, baseType: !17, size: 64, align: 64, offset: 1280)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !54, file: !55, line: 299, baseType: !17, size: 64, align: 64, offset: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !54, file: !55, line: 300, baseType: !17, size: 64, align: 64, offset: 1408)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !54, file: !55, line: 302, baseType: !103, size: 64, align: 64, offset: 1472)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 216, baseType: !105)
!104 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!105 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !54, file: !55, line: 303, baseType: !58, size: 32, align: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !54, file: !55, line: 305, baseType: !108, size: 160, align: 8, offset: 1568)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = distinct !DIGlobalVariable(name: "rt_dsfields", scope: !0, file: !20, line: 116, type: !29, isLocal: true, isDefinition: true, variable: %struct._list** @rt_dsfields)
!112 = distinct !DIGlobalVariable(name: "rt_groups", scope: !0, file: !20, line: 118, type: !29, isLocal: true, isDefinition: true, variable: %struct._list** @rt_groups)
!113 = distinct !DIGlobalVariable(name: "rt_realms", scope: !0, file: !20, line: 120, type: !29, isLocal: true, isDefinition: true, variable: %struct._list** @rt_realms)
!114 = distinct !DIGlobalVariable(name: "rt_protos", scope: !0, file: !20, line: 121, type: !29, isLocal: true, isDefinition: true, variable: %struct._list** @rt_protos)
!115 = distinct !DIGlobalVariable(name: "rt_scopes", scope: !0, file: !20, line: 123, type: !29, isLocal: true, isDefinition: true, variable: %struct._list** @rt_scopes)
!116 = distinct !DIGlobalVariable(name: "ret_buf", scope: !0, file: !20, line: 125, type: !117, isLocal: true, isDefinition: true, variable: [11 x i8]* @ret_buf)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 88, align: 8, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 11)
!120 = distinct !DIGlobalVariable(name: "rttable_default", scope: !0, file: !20, line: 95, type: !121, isLocal: true, isDefinition: true, variable: [4 x %struct.rt_entry]* @rttable_default)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, align: 64, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 4)
!124 = distinct !DIGlobalVariable(name: "rtprot_default", scope: !0, file: !20, line: 73, type: !125, isLocal: true, isDefinition: true, variable: [16 x %struct.rt_entry]* @rtprot_default)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, align: 64, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = distinct !DIGlobalVariable(name: "rtntypes", scope: !0, file: !20, line: 57, type: !129, isLocal: true, isDefinition: true, variable: [13 x %struct.rt_entry]* @rtntypes)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1664, align: 64, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 13)
!132 = distinct !DIGlobalVariable(name: "rtscope_default", scope: !0, file: !20, line: 103, type: !133, isLocal: true, isDefinition: true, variable: [6 x %struct.rt_entry]* @rtscope_default)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 768, align: 64, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 6)
!136 = !{i32 2, !"Dwarf Version", i32 4}
!137 = !{i32 2, !"Debug Info Version", i32 3}
!138 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!139 = distinct !DISubprogram(name: "clear_rt_names", scope: !20, file: !20, line: 199, type: !140, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{null}
!142 = !{}
!143 = !DILocation(line: 202, column: 2, scope: !139)
!144 = !DILocation(line: 203, column: 2, scope: !139)
!145 = !DILocation(line: 205, column: 2, scope: !139)
!146 = !DILocation(line: 207, column: 2, scope: !139)
!147 = !DILocation(line: 208, column: 2, scope: !139)
!148 = !DILocation(line: 210, column: 2, scope: !139)
!149 = !DILocation(line: 211, column: 1, scope: !139)
!150 = distinct !DISubprogram(name: "find_rttables_table", scope: !20, file: !20, line: 312, type: !151, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !154, !156}
!153 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 51, baseType: !16)
!158 = !DILocalVariable(name: "name", arg: 1, scope: !150, file: !20, line: 312, type: !154)
!159 = !DIExpression()
!160 = !DILocation(line: 312, column: 33, scope: !150)
!161 = !DILocalVariable(name: "id", arg: 2, scope: !150, file: !20, line: 312, type: !156)
!162 = !DILocation(line: 312, column: 49, scope: !150)
!163 = !DILocation(line: 314, column: 20, scope: !150)
!164 = !DILocation(line: 314, column: 26, scope: !150)
!165 = !DILocation(line: 314, column: 9, scope: !150)
!166 = !DILocation(line: 314, column: 2, scope: !150)
!167 = distinct !DISubprogram(name: "find_entry", scope: !20, file: !20, line: 282, type: !168, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!168 = !DISubroutineType(types: !169)
!169 = !{!153, !154, !170, !171, !154, !172, !157}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!174 = !DILocalVariable(name: "name", arg: 1, scope: !167, file: !20, line: 282, type: !154)
!175 = !DILocation(line: 282, column: 24, scope: !167)
!176 = !DILocalVariable(name: "id", arg: 2, scope: !167, file: !20, line: 282, type: !170)
!177 = !DILocation(line: 282, column: 44, scope: !167)
!178 = !DILocalVariable(name: "l", arg: 3, scope: !167, file: !20, line: 282, type: !171)
!179 = !DILocation(line: 282, column: 54, scope: !167)
!180 = !DILocalVariable(name: "file_name", arg: 4, scope: !167, file: !20, line: 282, type: !154)
!181 = !DILocation(line: 282, column: 69, scope: !167)
!182 = !DILocalVariable(name: "default_list", arg: 5, scope: !167, file: !20, line: 282, type: !172)
!183 = !DILocation(line: 282, column: 103, scope: !167)
!184 = !DILocalVariable(name: "max", arg: 6, scope: !167, file: !20, line: 282, type: !157)
!185 = !DILocation(line: 282, column: 126, scope: !167)
!186 = !DILocalVariable(name: "e", scope: !167, file: !20, line: 284, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !30, line: 30, baseType: !35)
!188 = !DILocation(line: 284, column: 10, scope: !167)
!189 = !DILocalVariable(name: "endptr", scope: !167, file: !20, line: 285, type: !25)
!190 = !DILocation(line: 285, column: 8, scope: !167)
!191 = !DILocalVariable(name: "l_id", scope: !167, file: !20, line: 286, type: !105)
!192 = !DILocation(line: 286, column: 16, scope: !167)
!193 = !DILocation(line: 288, column: 17, scope: !167)
!194 = !DILocation(line: 288, column: 9, scope: !167)
!195 = !DILocation(line: 288, column: 7, scope: !167)
!196 = !DILocation(line: 289, column: 22, scope: !167)
!197 = !DILocation(line: 289, column: 8, scope: !167)
!198 = !DILocation(line: 289, column: 3, scope: !167)
!199 = !DILocation(line: 289, column: 6, scope: !167)
!200 = !DILocation(line: 290, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !167, file: !20, line: 290, column: 6)
!202 = !DILocation(line: 290, column: 16, scope: !201)
!203 = !DILocation(line: 290, column: 13, scope: !201)
!204 = !DILocation(line: 290, column: 21, scope: !201)
!205 = !DILocation(line: 290, column: 25, scope: !206)
!206 = !DILexicalBlockFile(scope: !201, file: !20, discriminator: 1)
!207 = !DILocation(line: 290, column: 24, scope: !206)
!208 = !DILocation(line: 290, column: 32, scope: !206)
!209 = !DILocation(line: 290, column: 6, scope: !206)
!210 = !DILocation(line: 291, column: 12, scope: !201)
!211 = !DILocation(line: 291, column: 11, scope: !201)
!212 = !DILocation(line: 291, column: 18, scope: !201)
!213 = !DILocation(line: 291, column: 15, scope: !201)
!214 = !DILocation(line: 291, column: 3, scope: !201)
!215 = !DILocation(line: 293, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !167, file: !20, line: 293, column: 6)
!217 = !DILocation(line: 293, column: 8, scope: !216)
!218 = !DILocation(line: 293, column: 7, scope: !216)
!219 = !DILocation(line: 293, column: 6, scope: !167)
!220 = !DILocation(line: 294, column: 19, scope: !216)
!221 = !DILocation(line: 294, column: 22, scope: !216)
!222 = !DILocation(line: 294, column: 33, scope: !216)
!223 = !DILocation(line: 294, column: 47, scope: !216)
!224 = !DILocation(line: 294, column: 3, scope: !216)
!225 = !DILocation(line: 296, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !167, file: !20, line: 296, column: 6)
!227 = !DILocation(line: 296, column: 8, scope: !226)
!228 = !DILocation(line: 296, column: 12, scope: !226)
!229 = !DILocation(line: 296, column: 5, scope: !226)
!230 = !DILocation(line: 296, column: 11, scope: !231)
!231 = !DILexicalBlockFile(scope: !226, file: !20, discriminator: 1)
!232 = !DILocation(line: 296, column: 10, scope: !231)
!233 = !DILocation(line: 296, column: 15, scope: !231)
!234 = !DILocation(line: 296, column: 20, scope: !231)
!235 = !DILocation(line: 296, column: 5, scope: !231)
!236 = !DILocation(line: 296, column: 10, scope: !237)
!237 = !DILexicalBlockFile(scope: !226, file: !20, discriminator: 2)
!238 = !DILocation(line: 296, column: 9, scope: !237)
!239 = !DILocation(line: 296, column: 14, scope: !237)
!240 = !DILocation(line: 296, column: 19, scope: !237)
!241 = !DILocation(line: 296, column: 6, scope: !237)
!242 = !DILocation(line: 297, column: 3, scope: !226)
!243 = !DILocation(line: 299, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !167, file: !20, line: 299, column: 2)
!245 = !DILocation(line: 299, column: 14, scope: !244)
!246 = !DILocation(line: 299, column: 13, scope: !244)
!247 = !DILocation(line: 299, column: 12, scope: !244)
!248 = !DILocation(line: 299, column: 12, scope: !249)
!249 = !DILexicalBlockFile(scope: !244, file: !20, discriminator: 1)
!250 = !DILocation(line: 299, column: 14, scope: !251)
!251 = !DILexicalBlockFile(scope: !244, file: !20, discriminator: 2)
!252 = !DILocation(line: 299, column: 13, scope: !251)
!253 = !DILocation(line: 299, column: 18, scope: !251)
!254 = !DILocation(line: 299, column: 12, scope: !251)
!255 = !DILocation(line: 299, column: 12, scope: !256)
!256 = !DILexicalBlockFile(scope: !244, file: !20, discriminator: 3)
!257 = !DILocation(line: 299, column: 9, scope: !256)
!258 = !DILocation(line: 299, column: 7, scope: !256)
!259 = !DILocation(line: 299, column: 25, scope: !260)
!260 = !DILexicalBlockFile(scope: !261, file: !20, discriminator: 4)
!261 = distinct !DILexicalBlock(scope: !244, file: !20, line: 299, column: 2)
!262 = !DILocation(line: 299, column: 2, scope: !260)
!263 = !DILocalVariable(name: "rte", scope: !264, file: !20, line: 300, type: !18)
!264 = distinct !DILexicalBlock(scope: !261, file: !20, line: 299, column: 47)
!265 = !DILocation(line: 300, column: 15, scope: !264)
!266 = !DILocation(line: 300, column: 23, scope: !264)
!267 = !DILocation(line: 300, column: 27, scope: !264)
!268 = !DILocation(line: 300, column: 21, scope: !264)
!269 = !DILocation(line: 302, column: 15, scope: !270)
!270 = distinct !DILexicalBlock(scope: !264, file: !20, line: 302, column: 7)
!271 = !DILocation(line: 302, column: 20, scope: !270)
!272 = !DILocation(line: 302, column: 26, scope: !270)
!273 = !DILocation(line: 302, column: 8, scope: !270)
!274 = !DILocation(line: 302, column: 7, scope: !264)
!275 = !DILocation(line: 303, column: 10, scope: !276)
!276 = distinct !DILexicalBlock(scope: !270, file: !20, line: 302, column: 33)
!277 = !DILocation(line: 303, column: 15, scope: !276)
!278 = !DILocation(line: 303, column: 5, scope: !276)
!279 = !DILocation(line: 303, column: 8, scope: !276)
!280 = !DILocation(line: 304, column: 4, scope: !276)
!281 = !DILocation(line: 306, column: 2, scope: !264)
!282 = !DILocation(line: 299, column: 36, scope: !283)
!283 = !DILexicalBlockFile(scope: !261, file: !20, discriminator: 5)
!284 = !DILocation(line: 299, column: 40, scope: !283)
!285 = !DILocation(line: 299, column: 33, scope: !283)
!286 = !DILocation(line: 299, column: 2, scope: !283)
!287 = distinct !{!287, !288}
!288 = !DILocation(line: 299, column: 2, scope: !167)
!289 = !DILocation(line: 307, column: 2, scope: !167)
!290 = !DILocation(line: 308, column: 1, scope: !167)
!291 = distinct !DISubprogram(name: "find_rttables_dsfield", scope: !20, file: !20, line: 318, type: !292, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!292 = !DISubroutineType(types: !293)
!293 = !{!153, !154, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!295 = !DILocalVariable(name: "name", arg: 1, scope: !291, file: !20, line: 318, type: !154)
!296 = !DILocation(line: 318, column: 35, scope: !291)
!297 = !DILocalVariable(name: "id", arg: 2, scope: !291, file: !20, line: 318, type: !294)
!298 = !DILocation(line: 318, column: 50, scope: !291)
!299 = !DILocalVariable(name: "val", scope: !291, file: !20, line: 320, type: !157)
!300 = !DILocation(line: 320, column: 11, scope: !291)
!301 = !DILocalVariable(name: "ret", scope: !291, file: !20, line: 321, type: !153)
!302 = !DILocation(line: 321, column: 6, scope: !291)
!303 = !DILocation(line: 323, column: 19, scope: !291)
!304 = !DILocation(line: 323, column: 8, scope: !291)
!305 = !DILocation(line: 323, column: 6, scope: !291)
!306 = !DILocation(line: 324, column: 8, scope: !291)
!307 = !DILocation(line: 324, column: 12, scope: !291)
!308 = !DILocation(line: 324, column: 3, scope: !291)
!309 = !DILocation(line: 324, column: 6, scope: !291)
!310 = !DILocation(line: 326, column: 9, scope: !291)
!311 = !DILocation(line: 326, column: 2, scope: !291)
!312 = distinct !DISubprogram(name: "find_rttables_group", scope: !20, file: !20, line: 331, type: !151, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!313 = !DILocalVariable(name: "name", arg: 1, scope: !312, file: !20, line: 331, type: !154)
!314 = !DILocation(line: 331, column: 33, scope: !312)
!315 = !DILocalVariable(name: "id", arg: 2, scope: !312, file: !20, line: 331, type: !156)
!316 = !DILocation(line: 331, column: 49, scope: !312)
!317 = !DILocation(line: 333, column: 20, scope: !312)
!318 = !DILocation(line: 333, column: 26, scope: !312)
!319 = !DILocation(line: 333, column: 9, scope: !312)
!320 = !DILocation(line: 333, column: 2, scope: !312)
!321 = distinct !DISubprogram(name: "find_rttables_realms", scope: !20, file: !20, line: 338, type: !151, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!322 = !DILocalVariable(name: "name", arg: 1, scope: !321, file: !20, line: 338, type: !154)
!323 = !DILocation(line: 338, column: 34, scope: !321)
!324 = !DILocalVariable(name: "id", arg: 2, scope: !321, file: !20, line: 338, type: !156)
!325 = !DILocation(line: 338, column: 50, scope: !321)
!326 = !DILocation(line: 340, column: 20, scope: !321)
!327 = !DILocation(line: 340, column: 26, scope: !321)
!328 = !DILocation(line: 340, column: 9, scope: !321)
!329 = !DILocation(line: 340, column: 2, scope: !321)
!330 = distinct !DISubprogram(name: "find_rttables_proto", scope: !20, file: !20, line: 344, type: !292, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!331 = !DILocalVariable(name: "name", arg: 1, scope: !330, file: !20, line: 344, type: !154)
!332 = !DILocation(line: 344, column: 33, scope: !330)
!333 = !DILocalVariable(name: "id", arg: 2, scope: !330, file: !20, line: 344, type: !294)
!334 = !DILocation(line: 344, column: 48, scope: !330)
!335 = !DILocalVariable(name: "val", scope: !330, file: !20, line: 346, type: !157)
!336 = !DILocation(line: 346, column: 11, scope: !330)
!337 = !DILocalVariable(name: "ret", scope: !330, file: !20, line: 347, type: !153)
!338 = !DILocation(line: 347, column: 6, scope: !330)
!339 = !DILocation(line: 349, column: 19, scope: !330)
!340 = !DILocation(line: 349, column: 8, scope: !330)
!341 = !DILocation(line: 349, column: 6, scope: !330)
!342 = !DILocation(line: 350, column: 8, scope: !330)
!343 = !DILocation(line: 350, column: 12, scope: !330)
!344 = !DILocation(line: 350, column: 3, scope: !330)
!345 = !DILocation(line: 350, column: 6, scope: !330)
!346 = !DILocation(line: 352, column: 9, scope: !330)
!347 = !DILocation(line: 352, column: 2, scope: !330)
!348 = distinct !DISubprogram(name: "find_rttables_rtntype", scope: !20, file: !20, line: 356, type: !292, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!349 = !DILocalVariable(name: "str", arg: 1, scope: !348, file: !20, line: 356, type: !154)
!350 = !DILocation(line: 356, column: 35, scope: !348)
!351 = !DILocalVariable(name: "id", arg: 2, scope: !348, file: !20, line: 356, type: !294)
!352 = !DILocation(line: 356, column: 49, scope: !348)
!353 = !DILocalVariable(name: "end", scope: !348, file: !20, line: 358, type: !25)
!354 = !DILocation(line: 358, column: 8, scope: !348)
!355 = !DILocalVariable(name: "res", scope: !348, file: !20, line: 359, type: !105)
!356 = !DILocation(line: 359, column: 16, scope: !348)
!357 = !DILocalVariable(name: "i", scope: !348, file: !20, line: 360, type: !58)
!358 = !DILocation(line: 360, column: 6, scope: !348)
!359 = !DILocation(line: 362, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !348, file: !20, line: 362, column: 2)
!361 = !DILocation(line: 362, column: 7, scope: !360)
!362 = !DILocation(line: 362, column: 23, scope: !363)
!363 = !DILexicalBlockFile(scope: !364, file: !20, discriminator: 1)
!364 = distinct !DILexicalBlock(scope: !360, file: !20, line: 362, column: 2)
!365 = !DILocation(line: 362, column: 14, scope: !363)
!366 = !DILocation(line: 362, column: 26, scope: !363)
!367 = !DILocation(line: 362, column: 2, scope: !363)
!368 = !DILocation(line: 363, column: 15, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !20, line: 363, column: 7)
!370 = distinct !DILexicalBlock(scope: !364, file: !20, line: 362, column: 37)
!371 = !DILocation(line: 363, column: 29, scope: !369)
!372 = !DILocation(line: 363, column: 20, scope: !369)
!373 = !DILocation(line: 363, column: 32, scope: !369)
!374 = !DILocation(line: 363, column: 8, scope: !369)
!375 = !DILocation(line: 363, column: 7, scope: !370)
!376 = !DILocation(line: 364, column: 28, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !20, line: 363, column: 39)
!378 = !DILocation(line: 364, column: 19, scope: !377)
!379 = !DILocation(line: 364, column: 31, scope: !377)
!380 = !DILocation(line: 364, column: 10, scope: !377)
!381 = !DILocation(line: 364, column: 5, scope: !377)
!382 = !DILocation(line: 364, column: 8, scope: !377)
!383 = !DILocation(line: 365, column: 4, scope: !377)
!384 = !DILocation(line: 367, column: 2, scope: !370)
!385 = !DILocation(line: 362, column: 33, scope: !386)
!386 = !DILexicalBlockFile(scope: !364, file: !20, discriminator: 2)
!387 = !DILocation(line: 362, column: 2, scope: !386)
!388 = distinct !{!388, !389}
!389 = !DILocation(line: 362, column: 2, scope: !348)
!390 = !DILocation(line: 369, column: 16, scope: !348)
!391 = !DILocation(line: 369, column: 8, scope: !348)
!392 = !DILocation(line: 369, column: 6, scope: !348)
!393 = !DILocation(line: 370, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !348, file: !20, line: 370, column: 6)
!395 = !DILocation(line: 370, column: 6, scope: !394)
!396 = !DILocation(line: 370, column: 11, scope: !394)
!397 = !DILocation(line: 370, column: 14, scope: !398)
!398 = !DILexicalBlockFile(scope: !394, file: !20, discriminator: 1)
!399 = !DILocation(line: 370, column: 18, scope: !398)
!400 = !DILocation(line: 370, column: 24, scope: !398)
!401 = !DILocation(line: 370, column: 27, scope: !402)
!402 = !DILexicalBlockFile(scope: !394, file: !20, discriminator: 2)
!403 = !DILocation(line: 370, column: 34, scope: !402)
!404 = !DILocation(line: 370, column: 6, scope: !402)
!405 = !DILocation(line: 371, column: 3, scope: !394)
!406 = !DILocation(line: 373, column: 17, scope: !348)
!407 = !DILocation(line: 373, column: 8, scope: !348)
!408 = !DILocation(line: 373, column: 3, scope: !348)
!409 = !DILocation(line: 373, column: 6, scope: !348)
!410 = !DILocation(line: 374, column: 2, scope: !348)
!411 = !DILocation(line: 375, column: 1, scope: !348)
!412 = distinct !DISubprogram(name: "get_rttables_group", scope: !20, file: !20, line: 402, type: !413, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!413 = !DISubroutineType(types: !414)
!414 = !{!154, !157}
!415 = !DILocalVariable(name: "id", arg: 1, scope: !412, file: !20, line: 402, type: !157)
!416 = !DILocation(line: 402, column: 29, scope: !412)
!417 = !DILocation(line: 404, column: 19, scope: !412)
!418 = !DILocation(line: 404, column: 9, scope: !412)
!419 = !DILocation(line: 404, column: 2, scope: !412)
!420 = distinct !DISubprogram(name: "get_entry", scope: !20, file: !20, line: 379, type: !421, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!421 = !DISubroutineType(types: !422)
!422 = !{!154, !16, !171, !154, !172, !157}
!423 = !DILocalVariable(name: "id", arg: 1, scope: !420, file: !20, line: 379, type: !16)
!424 = !DILocation(line: 379, column: 24, scope: !420)
!425 = !DILocalVariable(name: "l", arg: 2, scope: !420, file: !20, line: 379, type: !171)
!426 = !DILocation(line: 379, column: 34, scope: !420)
!427 = !DILocalVariable(name: "file_name", arg: 3, scope: !420, file: !20, line: 379, type: !154)
!428 = !DILocation(line: 379, column: 49, scope: !420)
!429 = !DILocalVariable(name: "default_list", arg: 4, scope: !420, file: !20, line: 379, type: !172)
!430 = !DILocation(line: 379, column: 83, scope: !420)
!431 = !DILocalVariable(name: "max", arg: 5, scope: !420, file: !20, line: 379, type: !157)
!432 = !DILocation(line: 379, column: 106, scope: !420)
!433 = !DILocalVariable(name: "e", scope: !420, file: !20, line: 381, type: !187)
!434 = !DILocation(line: 381, column: 10, scope: !420)
!435 = !DILocation(line: 383, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !420, file: !20, line: 383, column: 6)
!437 = !DILocation(line: 383, column: 8, scope: !436)
!438 = !DILocation(line: 383, column: 7, scope: !436)
!439 = !DILocation(line: 383, column: 6, scope: !420)
!440 = !DILocation(line: 384, column: 19, scope: !436)
!441 = !DILocation(line: 384, column: 22, scope: !436)
!442 = !DILocation(line: 384, column: 33, scope: !436)
!443 = !DILocation(line: 384, column: 47, scope: !436)
!444 = !DILocation(line: 384, column: 3, scope: !436)
!445 = !DILocation(line: 386, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !420, file: !20, line: 386, column: 6)
!447 = !DILocation(line: 386, column: 9, scope: !446)
!448 = !DILocation(line: 386, column: 13, scope: !446)
!449 = !DILocation(line: 386, column: 6, scope: !446)
!450 = !DILocation(line: 386, column: 12, scope: !451)
!451 = !DILexicalBlockFile(scope: !446, file: !20, discriminator: 1)
!452 = !DILocation(line: 386, column: 11, scope: !451)
!453 = !DILocation(line: 386, column: 16, scope: !451)
!454 = !DILocation(line: 386, column: 21, scope: !451)
!455 = !DILocation(line: 386, column: 6, scope: !451)
!456 = !DILocation(line: 386, column: 11, scope: !457)
!457 = !DILexicalBlockFile(scope: !446, file: !20, discriminator: 2)
!458 = !DILocation(line: 386, column: 10, scope: !457)
!459 = !DILocation(line: 386, column: 15, scope: !457)
!460 = !DILocation(line: 386, column: 20, scope: !457)
!461 = !DILocation(line: 386, column: 6, scope: !457)
!462 = !DILocation(line: 387, column: 16, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !20, line: 387, column: 3)
!464 = distinct !DILexicalBlock(scope: !446, file: !20, line: 386, column: 10)
!465 = !DILocation(line: 387, column: 15, scope: !463)
!466 = !DILocation(line: 387, column: 14, scope: !463)
!467 = !DILocation(line: 387, column: 13, scope: !463)
!468 = !DILocation(line: 387, column: 13, scope: !469)
!469 = !DILexicalBlockFile(scope: !463, file: !20, discriminator: 1)
!470 = !DILocation(line: 387, column: 15, scope: !471)
!471 = !DILexicalBlockFile(scope: !463, file: !20, discriminator: 2)
!472 = !DILocation(line: 387, column: 14, scope: !471)
!473 = !DILocation(line: 387, column: 19, scope: !471)
!474 = !DILocation(line: 387, column: 13, scope: !471)
!475 = !DILocation(line: 387, column: 13, scope: !476)
!476 = !DILexicalBlockFile(scope: !463, file: !20, discriminator: 3)
!477 = !DILocation(line: 387, column: 10, scope: !476)
!478 = !DILocation(line: 387, column: 8, scope: !476)
!479 = !DILocation(line: 387, column: 26, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !20, discriminator: 4)
!481 = distinct !DILexicalBlock(scope: !463, file: !20, line: 387, column: 3)
!482 = !DILocation(line: 387, column: 3, scope: !480)
!483 = !DILocalVariable(name: "rte", scope: !484, file: !20, line: 388, type: !18)
!484 = distinct !DILexicalBlock(scope: !481, file: !20, line: 387, column: 48)
!485 = !DILocation(line: 388, column: 16, scope: !484)
!486 = !DILocation(line: 388, column: 24, scope: !484)
!487 = !DILocation(line: 388, column: 28, scope: !484)
!488 = !DILocation(line: 388, column: 22, scope: !484)
!489 = !DILocation(line: 390, column: 8, scope: !490)
!490 = distinct !DILexicalBlock(scope: !484, file: !20, line: 390, column: 8)
!491 = !DILocation(line: 390, column: 13, scope: !490)
!492 = !DILocation(line: 390, column: 19, scope: !490)
!493 = !DILocation(line: 390, column: 16, scope: !490)
!494 = !DILocation(line: 390, column: 8, scope: !484)
!495 = !DILocation(line: 391, column: 12, scope: !490)
!496 = !DILocation(line: 391, column: 17, scope: !490)
!497 = !DILocation(line: 391, column: 5, scope: !490)
!498 = !DILocation(line: 392, column: 3, scope: !484)
!499 = !DILocation(line: 387, column: 37, scope: !500)
!500 = !DILexicalBlockFile(scope: !481, file: !20, discriminator: 5)
!501 = !DILocation(line: 387, column: 41, scope: !500)
!502 = !DILocation(line: 387, column: 34, scope: !500)
!503 = !DILocation(line: 387, column: 3, scope: !500)
!504 = distinct !{!504, !505}
!505 = !DILocation(line: 387, column: 3, scope: !464)
!506 = !DILocation(line: 393, column: 2, scope: !464)
!507 = !DILocation(line: 395, column: 43, scope: !420)
!508 = !DILocation(line: 395, column: 2, scope: !420)
!509 = !DILocation(line: 396, column: 2, scope: !420)
!510 = !DILocation(line: 397, column: 1, scope: !420)
!511 = distinct !DISubprogram(name: "get_rttables_rtntype", scope: !20, file: !20, line: 409, type: !512, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!512 = !DISubroutineType(types: !513)
!513 = !{!154, !13}
!514 = !DILocalVariable(name: "val", arg: 1, scope: !511, file: !20, line: 409, type: !13)
!515 = !DILocation(line: 409, column: 30, scope: !511)
!516 = !DILocalVariable(name: "i", scope: !511, file: !20, line: 411, type: !58)
!517 = !DILocation(line: 411, column: 6, scope: !511)
!518 = !DILocation(line: 413, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !20, line: 413, column: 2)
!520 = !DILocation(line: 413, column: 7, scope: !519)
!521 = !DILocation(line: 413, column: 23, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !20, discriminator: 1)
!523 = distinct !DILexicalBlock(scope: !519, file: !20, line: 413, column: 2)
!524 = !DILocation(line: 413, column: 14, scope: !522)
!525 = !DILocation(line: 413, column: 26, scope: !522)
!526 = !DILocation(line: 413, column: 2, scope: !522)
!527 = !DILocation(line: 414, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !20, line: 414, column: 7)
!529 = distinct !DILexicalBlock(scope: !523, file: !20, line: 413, column: 37)
!530 = !DILocation(line: 414, column: 23, scope: !528)
!531 = !DILocation(line: 414, column: 14, scope: !528)
!532 = !DILocation(line: 414, column: 26, scope: !528)
!533 = !DILocation(line: 414, column: 11, scope: !528)
!534 = !DILocation(line: 414, column: 7, scope: !529)
!535 = !DILocation(line: 415, column: 20, scope: !528)
!536 = !DILocation(line: 415, column: 11, scope: !528)
!537 = !DILocation(line: 415, column: 23, scope: !528)
!538 = !DILocation(line: 415, column: 4, scope: !528)
!539 = !DILocation(line: 416, column: 2, scope: !529)
!540 = !DILocation(line: 413, column: 33, scope: !541)
!541 = !DILexicalBlockFile(scope: !523, file: !20, discriminator: 2)
!542 = !DILocation(line: 413, column: 2, scope: !541)
!543 = distinct !{!543, !544}
!544 = !DILocation(line: 413, column: 2, scope: !511)
!545 = !DILocation(line: 418, column: 43, scope: !511)
!546 = !DILocation(line: 418, column: 2, scope: !511)
!547 = !DILocation(line: 419, column: 2, scope: !511)
!548 = !DILocation(line: 420, column: 1, scope: !511)
!549 = distinct !DISubprogram(name: "find_rttables_scope", scope: !20, file: !20, line: 424, type: !292, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!550 = !DILocalVariable(name: "name", arg: 1, scope: !549, file: !20, line: 424, type: !154)
!551 = !DILocation(line: 424, column: 33, scope: !549)
!552 = !DILocalVariable(name: "id", arg: 2, scope: !549, file: !20, line: 424, type: !294)
!553 = !DILocation(line: 424, column: 48, scope: !549)
!554 = !DILocalVariable(name: "val", scope: !549, file: !20, line: 426, type: !157)
!555 = !DILocation(line: 426, column: 11, scope: !549)
!556 = !DILocalVariable(name: "ret", scope: !549, file: !20, line: 427, type: !153)
!557 = !DILocation(line: 427, column: 6, scope: !549)
!558 = !DILocation(line: 429, column: 19, scope: !549)
!559 = !DILocation(line: 429, column: 8, scope: !549)
!560 = !DILocation(line: 429, column: 6, scope: !549)
!561 = !DILocation(line: 430, column: 8, scope: !549)
!562 = !DILocation(line: 430, column: 12, scope: !549)
!563 = !DILocation(line: 430, column: 3, scope: !549)
!564 = !DILocation(line: 430, column: 6, scope: !549)
!565 = !DILocation(line: 432, column: 9, scope: !549)
!566 = !DILocation(line: 432, column: 2, scope: !549)
!567 = distinct !DISubprogram(name: "get_rttables_scope", scope: !20, file: !20, line: 436, type: !413, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!568 = !DILocalVariable(name: "id", arg: 1, scope: !567, file: !20, line: 436, type: !157)
!569 = !DILocation(line: 436, column: 29, scope: !567)
!570 = !DILocation(line: 438, column: 19, scope: !567)
!571 = !DILocation(line: 438, column: 9, scope: !567)
!572 = !DILocation(line: 438, column: 2, scope: !567)
!573 = distinct !DISubprogram(name: "initialise_list", scope: !20, file: !20, line: 265, type: !574, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !171, !154, !172, !157}
!576 = !DILocalVariable(name: "l", arg: 1, scope: !573, file: !20, line: 265, type: !171)
!577 = !DILocation(line: 265, column: 23, scope: !573)
!578 = !DILocalVariable(name: "file_name", arg: 2, scope: !573, file: !20, line: 265, type: !154)
!579 = !DILocation(line: 265, column: 38, scope: !573)
!580 = !DILocalVariable(name: "default_list", arg: 3, scope: !573, file: !20, line: 265, type: !172)
!581 = !DILocation(line: 265, column: 72, scope: !573)
!582 = !DILocalVariable(name: "max", arg: 4, scope: !573, file: !20, line: 265, type: !157)
!583 = !DILocation(line: 265, column: 95, scope: !573)
!584 = !DILocation(line: 268, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !573, file: !20, line: 268, column: 6)
!586 = !DILocation(line: 268, column: 6, scope: !585)
!587 = !DILocation(line: 268, column: 6, scope: !573)
!588 = !DILocation(line: 269, column: 3, scope: !585)
!589 = !DILocation(line: 271, column: 7, scope: !573)
!590 = !DILocation(line: 271, column: 3, scope: !573)
!591 = !DILocation(line: 271, column: 5, scope: !573)
!592 = !DILocation(line: 272, column: 8, scope: !593)
!593 = distinct !DILexicalBlock(scope: !573, file: !20, line: 272, column: 6)
!594 = !DILocation(line: 272, column: 7, scope: !593)
!595 = !DILocation(line: 272, column: 6, scope: !573)
!596 = !DILocation(line: 273, column: 3, scope: !593)
!597 = !DILocation(line: 275, column: 12, scope: !573)
!598 = !DILocation(line: 275, column: 23, scope: !573)
!599 = !DILocation(line: 275, column: 26, scope: !573)
!600 = !DILocation(line: 275, column: 2, scope: !573)
!601 = !DILocation(line: 277, column: 6, scope: !602)
!602 = distinct !DILexicalBlock(scope: !573, file: !20, line: 277, column: 6)
!603 = !DILocation(line: 277, column: 6, scope: !573)
!604 = !DILocation(line: 278, column: 15, scope: !602)
!605 = !DILocation(line: 278, column: 18, scope: !602)
!606 = !DILocation(line: 278, column: 3, scope: !602)
!607 = !DILocation(line: 279, column: 1, scope: !573)
!608 = distinct !DISubprogram(name: "free_rt_entry", scope: !20, file: !20, line: 214, type: !45, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!609 = !DILocalVariable(name: "e", arg: 1, scope: !608, file: !20, line: 214, type: !17)
!610 = !DILocation(line: 214, column: 21, scope: !608)
!611 = !DILocalVariable(name: "rte", scope: !608, file: !20, line: 216, type: !18)
!612 = !DILocation(line: 216, column: 14, scope: !608)
!613 = !DILocation(line: 216, column: 33, scope: !608)
!614 = !DILocation(line: 216, column: 20, scope: !608)
!615 = !DILocation(line: 218, column: 6, scope: !616)
!616 = distinct !DILexicalBlock(scope: !608, file: !20, line: 218, column: 6)
!617 = !DILocation(line: 218, column: 11, scope: !616)
!618 = !DILocation(line: 218, column: 6, scope: !608)
!619 = !DILocation(line: 219, column: 9, scope: !616)
!620 = !DILocation(line: 219, column: 14, scope: !616)
!621 = !DILocation(line: 219, column: 4, scope: !616)
!622 = !DILocation(line: 219, column: 22, scope: !616)
!623 = !DILocation(line: 219, column: 27, scope: !616)
!624 = !DILocation(line: 219, column: 33, scope: !616)
!625 = !DILocation(line: 219, column: 3, scope: !616)
!626 = !DILocation(line: 219, column: 8, scope: !627)
!627 = !DILexicalBlockFile(scope: !608, file: !20, discriminator: 1)
!628 = !DILocation(line: 219, column: 3, scope: !627)
!629 = !DILocation(line: 219, column: 20, scope: !627)
!630 = !DILocation(line: 220, column: 1, scope: !608)
!631 = distinct !DISubprogram(name: "dump_rt_entry", scope: !20, file: !20, line: 223, type: !49, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!632 = !DILocalVariable(name: "fp", arg: 1, scope: !631, file: !20, line: 223, type: !51)
!633 = !DILocation(line: 223, column: 21, scope: !631)
!634 = !DILocalVariable(name: "e", arg: 2, scope: !631, file: !20, line: 223, type: !17)
!635 = !DILocation(line: 223, column: 31, scope: !631)
!636 = !DILocalVariable(name: "rte", scope: !631, file: !20, line: 225, type: !18)
!637 = !DILocation(line: 225, column: 14, scope: !631)
!638 = !DILocation(line: 225, column: 34, scope: !631)
!639 = !DILocation(line: 225, column: 20, scope: !631)
!640 = !DILocation(line: 227, column: 13, scope: !631)
!641 = !DILocation(line: 227, column: 41, scope: !631)
!642 = !DILocation(line: 227, column: 46, scope: !631)
!643 = !DILocation(line: 227, column: 50, scope: !631)
!644 = !DILocation(line: 227, column: 55, scope: !631)
!645 = !DILocation(line: 227, column: 2, scope: !631)
!646 = !DILocation(line: 228, column: 1, scope: !631)
!647 = distinct !DISubprogram(name: "read_file", scope: !20, file: !20, line: 128, type: !648, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !154, !171, !157}
!650 = !DILocalVariable(name: "file_name", arg: 1, scope: !647, file: !20, line: 128, type: !154)
!651 = !DILocation(line: 128, column: 23, scope: !647)
!652 = !DILocalVariable(name: "l", arg: 2, scope: !647, file: !20, line: 128, type: !171)
!653 = !DILocation(line: 128, column: 40, scope: !647)
!654 = !DILocalVariable(name: "max", arg: 3, scope: !647, file: !20, line: 128, type: !157)
!655 = !DILocation(line: 128, column: 52, scope: !647)
!656 = !DILocalVariable(name: "fp", scope: !647, file: !20, line: 130, type: !51)
!657 = !DILocation(line: 130, column: 8, scope: !647)
!658 = !DILocalVariable(name: "rte", scope: !647, file: !20, line: 131, type: !18)
!659 = !DILocation(line: 131, column: 14, scope: !647)
!660 = !DILocalVariable(name: "strvec", scope: !647, file: !20, line: 132, type: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !663, line: 34, baseType: !664)
!663 = !DIFile(filename: "vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !663, line: 30, size: 128, align: 64, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !664, file: !663, line: 31, baseType: !16, size: 32, align: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !664, file: !663, line: 32, baseType: !16, size: 32, align: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !664, file: !663, line: 33, baseType: !669, size: 64, align: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!670 = !DILocation(line: 132, column: 12, scope: !647)
!671 = !DILocalVariable(name: "buf", scope: !647, file: !20, line: 133, type: !672)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1024, align: 8, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 128)
!675 = !DILocation(line: 133, column: 7, scope: !647)
!676 = !DILocalVariable(name: "id", scope: !647, file: !20, line: 134, type: !105)
!677 = !DILocation(line: 134, column: 16, scope: !647)
!678 = !DILocalVariable(name: "number", scope: !647, file: !20, line: 135, type: !25)
!679 = !DILocation(line: 135, column: 8, scope: !647)
!680 = !DILocalVariable(name: "endptr", scope: !647, file: !20, line: 136, type: !25)
!681 = !DILocation(line: 136, column: 8, scope: !647)
!682 = !DILocation(line: 138, column: 13, scope: !647)
!683 = !DILocation(line: 138, column: 7, scope: !647)
!684 = !DILocation(line: 138, column: 5, scope: !647)
!685 = !DILocation(line: 139, column: 7, scope: !686)
!686 = distinct !DILexicalBlock(scope: !647, file: !20, line: 139, column: 6)
!687 = !DILocation(line: 139, column: 6, scope: !647)
!688 = !DILocation(line: 140, column: 3, scope: !686)
!689 = !DILocation(line: 142, column: 2, scope: !647)
!690 = !DILocation(line: 142, column: 15, scope: !691)
!691 = !DILexicalBlockFile(scope: !647, file: !20, discriminator: 1)
!692 = !DILocation(line: 142, column: 25, scope: !691)
!693 = !DILocation(line: 142, column: 9, scope: !691)
!694 = !DILocation(line: 142, column: 2, scope: !691)
!695 = !DILocation(line: 143, column: 28, scope: !696)
!696 = distinct !DILexicalBlock(scope: !647, file: !20, line: 142, column: 30)
!697 = !DILocation(line: 143, column: 13, scope: !696)
!698 = !DILocation(line: 143, column: 10, scope: !696)
!699 = !DILocation(line: 145, column: 8, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !20, line: 145, column: 7)
!701 = !DILocation(line: 145, column: 7, scope: !696)
!702 = !DILocation(line: 146, column: 4, scope: !700)
!703 = distinct !{!703, !689}
!704 = !DILocation(line: 148, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !696, file: !20, line: 148, column: 7)
!706 = !DILocation(line: 148, column: 18, scope: !705)
!707 = !DILocation(line: 148, column: 29, scope: !705)
!708 = !DILocation(line: 148, column: 7, scope: !696)
!709 = !DILocation(line: 149, column: 16, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !20, line: 148, column: 35)
!711 = !DILocation(line: 149, column: 4, scope: !710)
!712 = !DILocation(line: 150, column: 4, scope: !710)
!713 = !DILocation(line: 153, column: 10, scope: !696)
!714 = !DILocation(line: 153, column: 9, scope: !696)
!715 = !DILocation(line: 153, column: 7, scope: !696)
!716 = !DILocation(line: 154, column: 8, scope: !717)
!717 = distinct !DILexicalBlock(scope: !696, file: !20, line: 154, column: 7)
!718 = !DILocation(line: 154, column: 7, scope: !696)
!719 = !DILocation(line: 155, column: 16, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !20, line: 154, column: 13)
!721 = !DILocation(line: 155, column: 4, scope: !720)
!722 = !DILocation(line: 156, column: 1, scope: !720)
!723 = !DILocation(line: 157, column: 4, scope: !720)
!724 = !DILocation(line: 160, column: 24, scope: !696)
!725 = !DILocation(line: 160, column: 12, scope: !696)
!726 = !DILocation(line: 160, column: 10, scope: !696)
!727 = !DILocation(line: 161, column: 20, scope: !696)
!728 = !DILocation(line: 161, column: 13, scope: !696)
!729 = !DILocation(line: 161, column: 10, scope: !696)
!730 = !DILocation(line: 162, column: 16, scope: !696)
!731 = !DILocation(line: 162, column: 8, scope: !696)
!732 = !DILocation(line: 162, column: 6, scope: !696)
!733 = !DILocation(line: 163, column: 8, scope: !734)
!734 = distinct !DILexicalBlock(scope: !696, file: !20, line: 163, column: 7)
!735 = !DILocation(line: 163, column: 7, scope: !734)
!736 = !DILocation(line: 163, column: 15, scope: !734)
!737 = !DILocation(line: 163, column: 22, scope: !734)
!738 = !DILocation(line: 163, column: 25, scope: !739)
!739 = !DILexicalBlockFile(scope: !734, file: !20, discriminator: 1)
!740 = !DILocation(line: 163, column: 35, scope: !739)
!741 = !DILocation(line: 163, column: 32, scope: !739)
!742 = !DILocation(line: 163, column: 42, scope: !739)
!743 = !DILocation(line: 163, column: 46, scope: !744)
!744 = !DILexicalBlockFile(scope: !734, file: !20, discriminator: 2)
!745 = !DILocation(line: 163, column: 45, scope: !744)
!746 = !DILocation(line: 163, column: 53, scope: !744)
!747 = !DILocation(line: 163, column: 56, scope: !748)
!748 = !DILexicalBlockFile(scope: !734, file: !20, discriminator: 3)
!749 = !DILocation(line: 163, column: 61, scope: !748)
!750 = !DILocation(line: 163, column: 59, scope: !748)
!751 = !DILocation(line: 163, column: 7, scope: !748)
!752 = !DILocation(line: 164, column: 10, scope: !753)
!753 = distinct !DILexicalBlock(scope: !734, file: !20, line: 163, column: 66)
!754 = !DILocation(line: 164, column: 5, scope: !753)
!755 = !DILocation(line: 164, column: 22, scope: !753)
!756 = !DILocation(line: 164, column: 16, scope: !753)
!757 = !DILocation(line: 164, column: 4, scope: !758)
!758 = !DILexicalBlockFile(scope: !753, file: !20, discriminator: 1)
!759 = !DILocation(line: 165, column: 4, scope: !753)
!760 = !DILocation(line: 167, column: 23, scope: !696)
!761 = !DILocation(line: 167, column: 13, scope: !696)
!762 = !DILocation(line: 167, column: 3, scope: !696)
!763 = !DILocation(line: 167, column: 8, scope: !696)
!764 = !DILocation(line: 167, column: 11, scope: !696)
!765 = !DILocation(line: 169, column: 50, scope: !696)
!766 = !DILocation(line: 169, column: 38, scope: !696)
!767 = !DILocation(line: 169, column: 23, scope: !768)
!768 = !DILexicalBlockFile(scope: !696, file: !20, discriminator: 1)
!769 = !DILocation(line: 169, column: 62, scope: !696)
!770 = !DILocation(line: 169, column: 16, scope: !771)
!771 = !DILexicalBlockFile(scope: !696, file: !20, discriminator: 2)
!772 = !DILocation(line: 169, column: 3, scope: !696)
!773 = !DILocation(line: 169, column: 8, scope: !696)
!774 = !DILocation(line: 169, column: 13, scope: !696)
!775 = !DILocation(line: 170, column: 8, scope: !776)
!776 = distinct !DILexicalBlock(scope: !696, file: !20, line: 170, column: 7)
!777 = !DILocation(line: 170, column: 13, scope: !776)
!778 = !DILocation(line: 170, column: 7, scope: !696)
!779 = !DILocation(line: 171, column: 10, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !20, line: 170, column: 19)
!781 = !DILocation(line: 171, column: 5, scope: !780)
!782 = !DILocation(line: 171, column: 22, scope: !780)
!783 = !DILocation(line: 172, column: 16, scope: !780)
!784 = !DILocation(line: 172, column: 4, scope: !780)
!785 = !DILocation(line: 173, column: 1, scope: !780)
!786 = !DILocation(line: 174, column: 4, scope: !780)
!787 = !DILocation(line: 177, column: 10, scope: !696)
!788 = !DILocation(line: 177, column: 15, scope: !696)
!789 = !DILocation(line: 177, column: 41, scope: !696)
!790 = !DILocation(line: 177, column: 29, scope: !696)
!791 = !DILocation(line: 177, column: 3, scope: !768)
!792 = !DILocation(line: 179, column: 13, scope: !696)
!793 = !DILocation(line: 179, column: 12, scope: !696)
!794 = !DILocation(line: 179, column: 16, scope: !696)
!795 = !DILocation(line: 179, column: 3, scope: !696)
!796 = !DILocation(line: 181, column: 15, scope: !696)
!797 = !DILocation(line: 181, column: 3, scope: !696)
!798 = !DILocation(line: 142, column: 2, scope: !799)
!799 = !DILexicalBlockFile(scope: !647, file: !20, discriminator: 2)
!800 = !DILocation(line: 184, column: 9, scope: !647)
!801 = !DILocation(line: 184, column: 2, scope: !647)
!802 = !DILocation(line: 186, column: 2, scope: !647)
!803 = !DILocation(line: 188, column: 9, scope: !647)
!804 = !DILocation(line: 188, column: 2, scope: !647)
!805 = !DILocation(line: 190, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !647, file: !20, line: 190, column: 6)
!807 = !DILocation(line: 190, column: 6, scope: !647)
!808 = !DILocation(line: 191, column: 15, scope: !806)
!809 = !DILocation(line: 191, column: 3, scope: !806)
!810 = !DILocation(line: 193, column: 12, scope: !647)
!811 = !DILocation(line: 193, column: 2, scope: !647)
!812 = !DILocation(line: 195, column: 2, scope: !647)
!813 = !DILocation(line: 196, column: 1, scope: !647)
!814 = distinct !DISubprogram(name: "add_default", scope: !20, file: !20, line: 231, type: !815, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !171, !172}
!817 = !DILocalVariable(name: "l", arg: 1, scope: !814, file: !20, line: 231, type: !171)
!818 = !DILocation(line: 231, column: 19, scope: !814)
!819 = !DILocalVariable(name: "default_list", arg: 2, scope: !814, file: !20, line: 231, type: !172)
!820 = !DILocation(line: 231, column: 45, scope: !814)
!821 = !DILocalVariable(name: "found", scope: !814, file: !20, line: 233, type: !153)
!822 = !DILocation(line: 233, column: 6, scope: !814)
!823 = !DILocalVariable(name: "rte", scope: !814, file: !20, line: 234, type: !18)
!824 = !DILocation(line: 234, column: 14, scope: !814)
!825 = !DILocalVariable(name: "e", scope: !814, file: !20, line: 235, type: !187)
!826 = !DILocation(line: 235, column: 10, scope: !814)
!827 = !DILocation(line: 237, column: 2, scope: !814)
!828 = !DILocation(line: 237, column: 8, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !20, discriminator: 1)
!830 = distinct !DILexicalBlock(scope: !831, file: !20, line: 237, column: 2)
!831 = distinct !DILexicalBlock(scope: !814, file: !20, line: 237, column: 2)
!832 = !DILocation(line: 237, column: 22, scope: !829)
!833 = !DILocation(line: 237, column: 2, scope: !829)
!834 = !DILocation(line: 238, column: 16, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !20, line: 238, column: 3)
!836 = distinct !DILexicalBlock(scope: !830, file: !20, line: 237, column: 44)
!837 = !DILocation(line: 238, column: 15, scope: !835)
!838 = !DILocation(line: 238, column: 14, scope: !835)
!839 = !DILocation(line: 238, column: 13, scope: !835)
!840 = !DILocation(line: 238, column: 13, scope: !841)
!841 = !DILexicalBlockFile(scope: !835, file: !20, discriminator: 1)
!842 = !DILocation(line: 238, column: 15, scope: !843)
!843 = !DILexicalBlockFile(scope: !835, file: !20, discriminator: 2)
!844 = !DILocation(line: 238, column: 14, scope: !843)
!845 = !DILocation(line: 238, column: 19, scope: !843)
!846 = !DILocation(line: 238, column: 13, scope: !843)
!847 = !DILocation(line: 238, column: 13, scope: !848)
!848 = !DILexicalBlockFile(scope: !835, file: !20, discriminator: 3)
!849 = !DILocation(line: 238, column: 10, scope: !848)
!850 = !DILocation(line: 238, column: 32, scope: !848)
!851 = !DILocation(line: 238, column: 8, scope: !848)
!852 = !DILocation(line: 238, column: 41, scope: !853)
!853 = !DILexicalBlockFile(scope: !854, file: !20, discriminator: 4)
!854 = distinct !DILexicalBlock(scope: !835, file: !20, line: 238, column: 3)
!855 = !DILocation(line: 238, column: 3, scope: !853)
!856 = !DILocation(line: 239, column: 12, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !20, line: 238, column: 63)
!858 = !DILocation(line: 239, column: 16, scope: !857)
!859 = !DILocation(line: 239, column: 10, scope: !857)
!860 = !DILocation(line: 239, column: 8, scope: !857)
!861 = !DILocation(line: 241, column: 8, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !20, line: 241, column: 8)
!863 = !DILocation(line: 241, column: 13, scope: !862)
!864 = !DILocation(line: 241, column: 19, scope: !862)
!865 = !DILocation(line: 241, column: 33, scope: !862)
!866 = !DILocation(line: 241, column: 16, scope: !862)
!867 = !DILocation(line: 241, column: 8, scope: !857)
!868 = !DILocation(line: 242, column: 11, scope: !869)
!869 = distinct !DILexicalBlock(scope: !862, file: !20, line: 241, column: 37)
!870 = !DILocation(line: 243, column: 5, scope: !869)
!871 = !DILocation(line: 245, column: 3, scope: !857)
!872 = !DILocation(line: 238, column: 52, scope: !873)
!873 = !DILexicalBlockFile(scope: !854, file: !20, discriminator: 5)
!874 = !DILocation(line: 238, column: 56, scope: !873)
!875 = !DILocation(line: 238, column: 49, scope: !873)
!876 = !DILocation(line: 238, column: 3, scope: !873)
!877 = distinct !{!877, !878}
!878 = !DILocation(line: 238, column: 3, scope: !836)
!879 = !DILocation(line: 247, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !836, file: !20, line: 247, column: 7)
!881 = !DILocation(line: 247, column: 7, scope: !836)
!882 = !DILocation(line: 248, column: 4, scope: !880)
!883 = !DILocation(line: 250, column: 10, scope: !836)
!884 = !DILocation(line: 250, column: 9, scope: !836)
!885 = !DILocation(line: 250, column: 7, scope: !836)
!886 = !DILocation(line: 251, column: 30, scope: !836)
!887 = !DILocation(line: 251, column: 44, scope: !836)
!888 = !DILocation(line: 251, column: 23, scope: !836)
!889 = !DILocation(line: 251, column: 50, scope: !836)
!890 = !DILocation(line: 251, column: 16, scope: !891)
!891 = !DILexicalBlockFile(scope: !836, file: !20, discriminator: 1)
!892 = !DILocation(line: 251, column: 3, scope: !836)
!893 = !DILocation(line: 251, column: 8, scope: !836)
!894 = !DILocation(line: 251, column: 13, scope: !836)
!895 = !DILocation(line: 252, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !836, file: !20, line: 252, column: 7)
!897 = !DILocation(line: 252, column: 13, scope: !896)
!898 = !DILocation(line: 252, column: 7, scope: !836)
!899 = !DILocation(line: 253, column: 10, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !20, line: 252, column: 19)
!901 = !DILocation(line: 253, column: 5, scope: !900)
!902 = !DILocation(line: 253, column: 22, scope: !900)
!903 = !DILocation(line: 254, column: 4, scope: !900)
!904 = !DILocation(line: 257, column: 10, scope: !836)
!905 = !DILocation(line: 257, column: 15, scope: !836)
!906 = !DILocation(line: 257, column: 21, scope: !836)
!907 = !DILocation(line: 257, column: 35, scope: !836)
!908 = !DILocation(line: 257, column: 3, scope: !836)
!909 = !DILocation(line: 258, column: 13, scope: !836)
!910 = !DILocation(line: 258, column: 27, scope: !836)
!911 = !DILocation(line: 258, column: 3, scope: !836)
!912 = !DILocation(line: 258, column: 8, scope: !836)
!913 = !DILocation(line: 258, column: 11, scope: !836)
!914 = !DILocation(line: 260, column: 13, scope: !836)
!915 = !DILocation(line: 260, column: 12, scope: !836)
!916 = !DILocation(line: 260, column: 16, scope: !836)
!917 = !DILocation(line: 260, column: 3, scope: !836)
!918 = !DILocation(line: 261, column: 2, scope: !836)
!919 = !DILocation(line: 237, column: 40, scope: !920)
!920 = !DILexicalBlockFile(scope: !830, file: !20, discriminator: 2)
!921 = !DILocation(line: 237, column: 2, scope: !920)
!922 = distinct !{!922, !827}
!923 = !DILocation(line: 262, column: 1, scope: !814)
