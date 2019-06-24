; ModuleID = './[inter]lib--dpkg--treewalk.o.i'
source_filename = "./[inter]lib--dpkg--treewalk.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.treenode = type { %struct.treenode*, %struct.treenode*, %struct.treenode**, i8*, i8*, i8*, %struct.stat*, i32, i64, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.treeroot = type { %struct.treenode*, %struct.treenode*, %struct.treenode*, i32, %struct.treewalk_funcs }
%struct.treewalk_funcs = type { i32 (%struct.treenode*)*, i32 (%struct.treenode*)*, i1 (%struct.treenode*)* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"treewalk root %s is not a directory\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot stat pathname '%s'\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot open directory '%s'\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@treeroot_sort_node.down_empty = internal global [2 x %struct.treenode*] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i8* @treenode_get_name(%struct.treenode*) #0 !dbg !115 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !120, metadata !121), !dbg !122
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !123
  %4 = getelementptr inbounds %struct.treenode, %struct.treenode* %3, i32 0, i32 5, !dbg !124
  %5 = load i8*, i8** %4, align 8, !dbg !124
  ret i8* %5, !dbg !125
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i8* @treenode_get_pathname(%struct.treenode*) #0 !dbg !126 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !127, metadata !121), !dbg !128
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !129
  %4 = getelementptr inbounds %struct.treenode, %struct.treenode* %3, i32 0, i32 3, !dbg !130
  %5 = load i8*, i8** %4, align 8, !dbg !130
  ret i8* %5, !dbg !131
}

; Function Attrs: nounwind uwtable
define i8* @treenode_get_virtname(%struct.treenode*) #0 !dbg !132 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !133, metadata !121), !dbg !134
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !135
  %4 = getelementptr inbounds %struct.treenode, %struct.treenode* %3, i32 0, i32 4, !dbg !136
  %5 = load i8*, i8** %4, align 8, !dbg !136
  ret i8* %5, !dbg !137
}

; Function Attrs: nounwind uwtable
define i32 @treenode_get_mode(%struct.treenode*) #0 !dbg !138 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !141, metadata !121), !dbg !142
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !143
  %4 = getelementptr inbounds %struct.treenode, %struct.treenode* %3, i32 0, i32 7, !dbg !144
  %5 = load i32, i32* %4, align 8, !dbg !144
  ret i32 %5, !dbg !145
}

; Function Attrs: nounwind uwtable
define %struct.stat* @treenode_get_stat(%struct.treenode*) #0 !dbg !146 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !149, metadata !121), !dbg !150
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !151
  call void @treenode_stat(%struct.treenode* %3, i32 (i8*, %struct.stat*)* @lstat), !dbg !152
  %4 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !153
  %5 = getelementptr inbounds %struct.treenode, %struct.treenode* %4, i32 0, i32 6, !dbg !154
  %6 = load %struct.stat*, %struct.stat** %5, align 8, !dbg !154
  ret %struct.stat* %6, !dbg !155
}

; Function Attrs: nounwind uwtable
define internal void @treenode_stat(%struct.treenode*, i32 (i8*, %struct.stat*)*) #0 !dbg !156 {
  %3 = alloca %struct.treenode*, align 8
  %4 = alloca i32 (i8*, %struct.stat*)*, align 8
  store %struct.treenode* %0, %struct.treenode** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %3, metadata !163, metadata !121), !dbg !164
  store i32 (i8*, %struct.stat*)* %1, i32 (i8*, %struct.stat*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, %struct.stat*)** %4, metadata !165, metadata !121), !dbg !166
  %5 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !167
  %6 = getelementptr inbounds %struct.treenode, %struct.treenode* %5, i32 0, i32 6, !dbg !169
  %7 = load %struct.stat*, %struct.stat** %6, align 8, !dbg !169
  %8 = icmp ne %struct.stat* %7, null, !dbg !167
  br i1 %8, label %9, label %10, !dbg !170

; <label>:9:                                      ; preds = %2
  br label %37, !dbg !171

; <label>:10:                                     ; preds = %2
  %11 = call i8* @m_malloc(i64 144), !dbg !172
  %12 = bitcast i8* %11 to %struct.stat*, !dbg !172
  %13 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !173
  %14 = getelementptr inbounds %struct.treenode, %struct.treenode* %13, i32 0, i32 6, !dbg !174
  store %struct.stat* %12, %struct.stat** %14, align 8, !dbg !175
  %15 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %4, align 8, !dbg !176
  %16 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !178
  %17 = getelementptr inbounds %struct.treenode, %struct.treenode* %16, i32 0, i32 3, !dbg !179
  %18 = load i8*, i8** %17, align 8, !dbg !179
  %19 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !180
  %20 = getelementptr inbounds %struct.treenode, %struct.treenode* %19, i32 0, i32 6, !dbg !181
  %21 = load %struct.stat*, %struct.stat** %20, align 8, !dbg !181
  %22 = call i32 %15(i8* %18, %struct.stat* %21), !dbg !176
  %23 = icmp slt i32 %22, 0, !dbg !182
  br i1 %23, label %24, label %29, !dbg !183

; <label>:24:                                     ; preds = %10
  %25 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !184
  %26 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !185
  %27 = getelementptr inbounds %struct.treenode, %struct.treenode* %26, i32 0, i32 3, !dbg !186
  %28 = load i8*, i8** %27, align 8, !dbg !186
  call void (i8*, ...) @ohshite(i8* %25, i8* %28) #9, !dbg !187
  unreachable, !dbg !189

; <label>:29:                                     ; preds = %10
  %30 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !190
  %31 = getelementptr inbounds %struct.treenode, %struct.treenode* %30, i32 0, i32 6, !dbg !191
  %32 = load %struct.stat*, %struct.stat** %31, align 8, !dbg !191
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 3, !dbg !192
  %34 = load i32, i32* %33, align 8, !dbg !192
  %35 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !193
  %36 = getelementptr inbounds %struct.treenode, %struct.treenode* %35, i32 0, i32 7, !dbg !194
  store i32 %34, i32* %36, align 8, !dbg !195
  br label %37, !dbg !196

; <label>:37:                                     ; preds = %29, %9
  ret void, !dbg !197
}

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define %struct.treenode* @treenode_get_parent(%struct.treenode*) #0 !dbg !199 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !202, metadata !121), !dbg !203
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !204
  %4 = getelementptr inbounds %struct.treenode, %struct.treenode* %3, i32 0, i32 0, !dbg !205
  %5 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !205
  ret %struct.treenode* %5, !dbg !206
}

; Function Attrs: nounwind uwtable
define %struct.treeroot* @treewalk_open(i8*, i32, %struct.treewalk_funcs*) #0 !dbg !207 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.treewalk_funcs*, align 8
  %7 = alloca %struct.treeroot*, align 8
  %8 = alloca %struct.treenode*, align 8
  %9 = alloca %struct.treewalk_funcs, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !211, metadata !121), !dbg !212
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !213, metadata !121), !dbg !214
  store %struct.treewalk_funcs* %2, %struct.treewalk_funcs** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.treewalk_funcs** %6, metadata !215, metadata !121), !dbg !216
  call void @llvm.dbg.declare(metadata %struct.treeroot** %7, metadata !217, metadata !121), !dbg !218
  call void @llvm.dbg.declare(metadata %struct.treenode** %8, metadata !219, metadata !121), !dbg !220
  %10 = call i8* @m_malloc(i64 56), !dbg !221
  %11 = bitcast i8* %10 to %struct.treeroot*, !dbg !221
  store %struct.treeroot* %11, %struct.treeroot** %7, align 8, !dbg !222
  %12 = load i32, i32* %5, align 4, !dbg !223
  %13 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !224
  %14 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %13, i32 0, i32 3, !dbg !225
  store i32 %12, i32* %14, align 8, !dbg !226
  %15 = load %struct.treewalk_funcs*, %struct.treewalk_funcs** %6, align 8, !dbg !227
  %16 = icmp ne %struct.treewalk_funcs* %15, null, !dbg !227
  br i1 %16, label %17, label %23, !dbg !229

; <label>:17:                                     ; preds = %3
  %18 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !230
  %19 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %18, i32 0, i32 4, !dbg !231
  %20 = load %struct.treewalk_funcs*, %struct.treewalk_funcs** %6, align 8, !dbg !232
  %21 = bitcast %struct.treewalk_funcs* %19 to i8*, !dbg !233
  %22 = bitcast %struct.treewalk_funcs* %20 to i8*, !dbg !233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 24, i32 8, i1 false), !dbg !233
  br label %29, !dbg !230

; <label>:23:                                     ; preds = %3
  %24 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !234
  %25 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %24, i32 0, i32 4, !dbg !235
  %26 = bitcast %struct.treewalk_funcs* %9 to i8*, !dbg !236
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 24, i32 8, i1 false), !dbg !236
  %27 = bitcast %struct.treewalk_funcs* %25 to i8*, !dbg !236
  %28 = bitcast %struct.treewalk_funcs* %9 to i8*, !dbg !236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 8, i1 false), !dbg !237
  br label %29

; <label>:29:                                     ; preds = %23, %17
  %30 = load i8*, i8** %4, align 8, !dbg !239
  %31 = call %struct.treenode* @treenode_root_new(i8* %30), !dbg !240
  store %struct.treenode* %31, %struct.treenode** %8, align 8, !dbg !241
  %32 = load %struct.treenode*, %struct.treenode** %8, align 8, !dbg !242
  call void @treenode_stat(%struct.treenode* %32, i32 (i8*, %struct.stat*)* @lstat), !dbg !243
  %33 = load %struct.treenode*, %struct.treenode** %8, align 8, !dbg !244
  %34 = call zeroext i1 @treenode_is_dir(%struct.treenode* %33), !dbg !246
  br i1 %34, label %38, label %35, !dbg !247

; <label>:35:                                     ; preds = %29
  %36 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !248
  %37 = load i8*, i8** %4, align 8, !dbg !249
  call void (i8*, ...) @ohshit(i8* %36, i8* %37) #9, !dbg !250
  unreachable, !dbg !252

; <label>:38:                                     ; preds = %29
  %39 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !253
  %40 = load %struct.treenode*, %struct.treenode** %8, align 8, !dbg !254
  call void @treeroot_set_curnode(%struct.treeroot* %39, %struct.treenode* %40), !dbg !255
  %41 = load %struct.treenode*, %struct.treenode** %8, align 8, !dbg !256
  %42 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !257
  %43 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %42, i32 0, i32 1, !dbg !258
  store %struct.treenode* %41, %struct.treenode** %43, align 8, !dbg !259
  %44 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !260
  %45 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %44, i32 0, i32 0, !dbg !261
  store %struct.treenode* %41, %struct.treenode** %45, align 8, !dbg !262
  %46 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !263
  ret %struct.treeroot* %46, !dbg !264
}

declare i8* @m_malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal %struct.treenode* @treenode_root_new(i8*) #0 !dbg !265 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.treenode*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !268, metadata !121), !dbg !269
  call void @llvm.dbg.declare(metadata %struct.treenode** %3, metadata !270, metadata !121), !dbg !271
  %4 = call %struct.treenode* @treenode_alloc(), !dbg !272
  store %struct.treenode* %4, %struct.treenode** %3, align 8, !dbg !273
  %5 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !274
  %6 = getelementptr inbounds %struct.treenode, %struct.treenode* %5, i32 0, i32 0, !dbg !275
  store %struct.treenode* null, %struct.treenode** %6, align 8, !dbg !276
  %7 = load i8*, i8** %2, align 8, !dbg !277
  %8 = call i8* @m_strdup(i8* %7), !dbg !278
  %9 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !279
  %10 = getelementptr inbounds %struct.treenode, %struct.treenode* %9, i32 0, i32 3, !dbg !280
  store i8* %8, i8** %10, align 8, !dbg !281
  %11 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !282
  %12 = getelementptr inbounds %struct.treenode, %struct.treenode* %11, i32 0, i32 3, !dbg !283
  %13 = load i8*, i8** %12, align 8, !dbg !283
  %14 = call i64 @strlen(i8* %13) #10, !dbg !284
  %15 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !285
  %16 = getelementptr inbounds %struct.treenode, %struct.treenode* %15, i32 0, i32 8, !dbg !286
  store i64 %14, i64* %16, align 8, !dbg !287
  %17 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !288
  %18 = getelementptr inbounds %struct.treenode, %struct.treenode* %17, i32 0, i32 3, !dbg !289
  %19 = load i8*, i8** %18, align 8, !dbg !289
  %20 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !290
  %21 = getelementptr inbounds %struct.treenode, %struct.treenode* %20, i32 0, i32 8, !dbg !291
  %22 = load i64, i64* %21, align 8, !dbg !291
  %23 = getelementptr inbounds i8, i8* %19, i64 %22, !dbg !292
  %24 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !293
  %25 = getelementptr inbounds %struct.treenode, %struct.treenode* %24, i32 0, i32 4, !dbg !294
  store i8* %23, i8** %25, align 8, !dbg !295
  %26 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !296
  %27 = getelementptr inbounds %struct.treenode, %struct.treenode* %26, i32 0, i32 3, !dbg !297
  %28 = load i8*, i8** %27, align 8, !dbg !297
  %29 = call i8* @strrchr(i8* %28, i32 47) #10, !dbg !298
  %30 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !299
  %31 = getelementptr inbounds %struct.treenode, %struct.treenode* %30, i32 0, i32 5, !dbg !300
  store i8* %29, i8** %31, align 8, !dbg !301
  %32 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !302
  %33 = getelementptr inbounds %struct.treenode, %struct.treenode* %32, i32 0, i32 5, !dbg !304
  %34 = load i8*, i8** %33, align 8, !dbg !304
  %35 = icmp eq i8* %34, null, !dbg !305
  br i1 %35, label %36, label %42, !dbg !306

; <label>:36:                                     ; preds = %1
  %37 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !307
  %38 = getelementptr inbounds %struct.treenode, %struct.treenode* %37, i32 0, i32 3, !dbg !308
  %39 = load i8*, i8** %38, align 8, !dbg !308
  %40 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !309
  %41 = getelementptr inbounds %struct.treenode, %struct.treenode* %40, i32 0, i32 5, !dbg !310
  store i8* %39, i8** %41, align 8, !dbg !311
  br label %47, !dbg !309

; <label>:42:                                     ; preds = %1
  %43 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !312
  %44 = getelementptr inbounds %struct.treenode, %struct.treenode* %43, i32 0, i32 5, !dbg !313
  %45 = load i8*, i8** %44, align 8, !dbg !314
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !314
  store i8* %46, i8** %44, align 8, !dbg !314
  br label %47

; <label>:47:                                     ; preds = %42, %36
  %48 = load %struct.treenode*, %struct.treenode** %3, align 8, !dbg !315
  ret %struct.treenode* %48, !dbg !316
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @treenode_is_dir(%struct.treenode*) #5 !dbg !317 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !318, metadata !121), !dbg !319
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !320
  %4 = icmp ne %struct.treenode* %3, null, !dbg !320
  br i1 %4, label %5, label %11, !dbg !321

; <label>:5:                                      ; preds = %1
  %6 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !322
  %7 = getelementptr inbounds %struct.treenode, %struct.treenode* %6, i32 0, i32 7, !dbg !324
  %8 = load i32, i32* %7, align 8, !dbg !324
  %9 = and i32 %8, 61440, !dbg !325
  %10 = icmp eq i32 %9, 16384, !dbg !326
  br label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  ret i1 %12, !dbg !327
}

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #6

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @treeroot_set_curnode(%struct.treeroot*, %struct.treenode*) #5 !dbg !329 {
  %3 = alloca %struct.treeroot*, align 8
  %4 = alloca %struct.treenode*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %3, metadata !330, metadata !121), !dbg !331
  store %struct.treenode* %1, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !332, metadata !121), !dbg !333
  %5 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !334
  %6 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !335
  %7 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %6, i32 0, i32 2, !dbg !336
  store %struct.treenode* %5, %struct.treenode** %7, align 8, !dbg !337
  ret void, !dbg !338
}

; Function Attrs: nounwind uwtable
define %struct.treenode* @treewalk_node(%struct.treeroot*) #0 !dbg !339 {
  %2 = alloca %struct.treeroot*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %2, metadata !342, metadata !121), !dbg !343
  %3 = load %struct.treeroot*, %struct.treeroot** %2, align 8, !dbg !344
  %4 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %3, i32 0, i32 2, !dbg !345
  %5 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !345
  ret %struct.treenode* %5, !dbg !346
}

; Function Attrs: nounwind uwtable
define %struct.treenode* @treewalk_next(%struct.treeroot*) #0 !dbg !347 {
  %2 = alloca %struct.treenode*, align 8
  %3 = alloca %struct.treeroot*, align 8
  %4 = alloca %struct.treenode*, align 8
  %5 = alloca %struct.treenode*, align 8
  %6 = alloca %struct.treenode*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %3, metadata !348, metadata !121), !dbg !349
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !350, metadata !121), !dbg !351
  %7 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !352
  %8 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %7, i32 0, i32 2, !dbg !353
  %9 = load %struct.treenode*, %struct.treenode** %8, align 8, !dbg !353
  store %struct.treenode* %9, %struct.treenode** %4, align 8, !dbg !354
  %10 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !355
  %11 = icmp eq %struct.treenode* %10, null, !dbg !357
  br i1 %11, label %12, label %13, !dbg !358

; <label>:12:                                     ; preds = %1
  store %struct.treenode* null, %struct.treenode** %2, align 8, !dbg !359
  br label %146, !dbg !359

; <label>:13:                                     ; preds = %1
  %14 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !360
  %15 = call zeroext i1 @treenode_is_dir(%struct.treenode* %14), !dbg !362
  br i1 %15, label %16, label %77, !dbg !363

; <label>:16:                                     ; preds = %13
  %17 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !364
  %18 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !366
  %19 = call zeroext i1 @treeroot_skip_node(%struct.treeroot* %17, %struct.treenode* %18), !dbg !367
  br i1 %19, label %77, label %20, !dbg !368

; <label>:20:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.treenode** %5, metadata !369, metadata !121), !dbg !371
  %21 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !372
  %22 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !373
  call void @treeroot_fill_node(%struct.treeroot* %21, %struct.treenode* %22), !dbg !374
  %23 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !375
  %24 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !376
  call void @treeroot_sort_node(%struct.treeroot* %23, %struct.treenode* %24), !dbg !377
  %25 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !378
  %26 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !379
  call void @treeroot_set_curdir(%struct.treeroot* %25, %struct.treenode* %26), !dbg !380
  %27 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !381
  %28 = getelementptr inbounds %struct.treenode, %struct.treenode* %27, i32 0, i32 0, !dbg !383
  %29 = load %struct.treenode*, %struct.treenode** %28, align 8, !dbg !383
  store %struct.treenode* %29, %struct.treenode** %5, align 8, !dbg !384
  br label %30, !dbg !385

; <label>:30:                                     ; preds = %59, %20
  %31 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !386
  %32 = icmp ne %struct.treenode* %31, null, !dbg !389
  br i1 %32, label %33, label %63, !dbg !389

; <label>:33:                                     ; preds = %30
  %34 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !390
  %35 = getelementptr inbounds %struct.treenode, %struct.treenode* %34, i32 0, i32 6, !dbg !393
  %36 = load %struct.stat*, %struct.stat** %35, align 8, !dbg !393
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 0, !dbg !394
  %38 = load i64, i64* %37, align 8, !dbg !394
  %39 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !395
  %40 = getelementptr inbounds %struct.treenode, %struct.treenode* %39, i32 0, i32 6, !dbg !396
  %41 = load %struct.stat*, %struct.stat** %40, align 8, !dbg !396
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 0, !dbg !397
  %43 = load i64, i64* %42, align 8, !dbg !397
  %44 = icmp eq i64 %38, %43, !dbg !398
  br i1 %44, label %45, label %58, !dbg !399

; <label>:45:                                     ; preds = %33
  %46 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !400
  %47 = getelementptr inbounds %struct.treenode, %struct.treenode* %46, i32 0, i32 6, !dbg !401
  %48 = load %struct.stat*, %struct.stat** %47, align 8, !dbg !401
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 1, !dbg !402
  %50 = load i64, i64* %49, align 8, !dbg !402
  %51 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !403
  %52 = getelementptr inbounds %struct.treenode, %struct.treenode* %51, i32 0, i32 6, !dbg !404
  %53 = load %struct.stat*, %struct.stat** %52, align 8, !dbg !404
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 1, !dbg !405
  %55 = load i64, i64* %54, align 8, !dbg !405
  %56 = icmp eq i64 %50, %55, !dbg !406
  br i1 %56, label %57, label %58, !dbg !407

; <label>:57:                                     ; preds = %45
  br label %63, !dbg !409

; <label>:58:                                     ; preds = %45, %33
  br label %59, !dbg !410

; <label>:59:                                     ; preds = %58
  %60 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !411
  %61 = getelementptr inbounds %struct.treenode, %struct.treenode* %60, i32 0, i32 0, !dbg !413
  %62 = load %struct.treenode*, %struct.treenode** %61, align 8, !dbg !413
  store %struct.treenode* %62, %struct.treenode** %5, align 8, !dbg !414
  br label %30, !dbg !415, !llvm.loop !416

; <label>:63:                                     ; preds = %57, %30
  %64 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !418
  %65 = icmp ne %struct.treenode* %64, null, !dbg !418
  br i1 %65, label %66, label %70, !dbg !420

; <label>:66:                                     ; preds = %63
  %67 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !421
  %68 = getelementptr inbounds %struct.treenode, %struct.treenode* %67, i32 0, i32 1, !dbg !422
  %69 = load %struct.treenode*, %struct.treenode** %68, align 8, !dbg !422
  store %struct.treenode* %69, %struct.treenode** %4, align 8, !dbg !423
  br label %76, !dbg !424

; <label>:70:                                     ; preds = %63
  %71 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !425
  %72 = getelementptr inbounds %struct.treenode, %struct.treenode* %71, i32 0, i32 2, !dbg !426
  %73 = load %struct.treenode**, %struct.treenode*** %72, align 8, !dbg !426
  %74 = getelementptr inbounds %struct.treenode*, %struct.treenode** %73, i64 0, !dbg !425
  %75 = load %struct.treenode*, %struct.treenode** %74, align 8, !dbg !425
  store %struct.treenode* %75, %struct.treenode** %4, align 8, !dbg !427
  br label %76

; <label>:76:                                     ; preds = %70, %66
  br label %81, !dbg !428

; <label>:77:                                     ; preds = %16, %13
  %78 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !429
  %79 = getelementptr inbounds %struct.treenode, %struct.treenode* %78, i32 0, i32 1, !dbg !431
  %80 = load %struct.treenode*, %struct.treenode** %79, align 8, !dbg !431
  store %struct.treenode* %80, %struct.treenode** %4, align 8, !dbg !432
  br label %81

; <label>:81:                                     ; preds = %77, %76
  br label %82, !dbg !433

; <label>:82:                                     ; preds = %141, %81
  %83 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !434
  %84 = icmp eq %struct.treenode* %83, null, !dbg !436
  br i1 %84, label %85, label %142, !dbg !437

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.treenode** %6, metadata !438, metadata !121), !dbg !440
  %86 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !441
  %87 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %86, i32 0, i32 1, !dbg !442
  %88 = load %struct.treenode*, %struct.treenode** %87, align 8, !dbg !442
  store %struct.treenode* %88, %struct.treenode** %6, align 8, !dbg !440
  %89 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !443
  %90 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %89, i32 0, i32 1, !dbg !445
  %91 = load %struct.treenode*, %struct.treenode** %90, align 8, !dbg !445
  %92 = getelementptr inbounds %struct.treenode, %struct.treenode* %91, i32 0, i32 1, !dbg !446
  %93 = load %struct.treenode*, %struct.treenode** %92, align 8, !dbg !446
  %94 = icmp ne %struct.treenode* %93, null, !dbg !443
  br i1 %94, label %95, label %106, !dbg !447

; <label>:95:                                     ; preds = %85
  %96 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !448
  %97 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %96, i32 0, i32 1, !dbg !450
  %98 = load %struct.treenode*, %struct.treenode** %97, align 8, !dbg !450
  %99 = getelementptr inbounds %struct.treenode, %struct.treenode* %98, i32 0, i32 1, !dbg !451
  %100 = load %struct.treenode*, %struct.treenode** %99, align 8, !dbg !451
  store %struct.treenode* %100, %struct.treenode** %4, align 8, !dbg !452
  %101 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !453
  %102 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !454
  %103 = getelementptr inbounds %struct.treenode, %struct.treenode* %102, i32 0, i32 0, !dbg !455
  %104 = load %struct.treenode*, %struct.treenode** %103, align 8, !dbg !455
  call void @treeroot_set_curdir(%struct.treeroot* %101, %struct.treenode* %104), !dbg !456
  %105 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !457
  call void @treenode_free_down(%struct.treenode* %105), !dbg !458
  br label %135, !dbg !459

; <label>:106:                                    ; preds = %85
  %107 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !460
  %108 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %107, i32 0, i32 1, !dbg !463
  %109 = load %struct.treenode*, %struct.treenode** %108, align 8, !dbg !463
  %110 = getelementptr inbounds %struct.treenode, %struct.treenode* %109, i32 0, i32 0, !dbg !464
  %111 = load %struct.treenode*, %struct.treenode** %110, align 8, !dbg !464
  %112 = icmp ne %struct.treenode* %111, null, !dbg !460
  br i1 %112, label %113, label %131, !dbg !460

; <label>:113:                                    ; preds = %106
  %114 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !465
  %115 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %114, i32 0, i32 1, !dbg !467
  %116 = load %struct.treenode*, %struct.treenode** %115, align 8, !dbg !467
  %117 = getelementptr inbounds %struct.treenode, %struct.treenode* %116, i32 0, i32 0, !dbg !468
  %118 = load %struct.treenode*, %struct.treenode** %117, align 8, !dbg !468
  %119 = getelementptr inbounds %struct.treenode, %struct.treenode* %118, i32 0, i32 1, !dbg !469
  %120 = load %struct.treenode*, %struct.treenode** %119, align 8, !dbg !469
  store %struct.treenode* %120, %struct.treenode** %4, align 8, !dbg !470
  %121 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !471
  %122 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !472
  %123 = getelementptr inbounds %struct.treenode, %struct.treenode* %122, i32 0, i32 0, !dbg !473
  %124 = load %struct.treenode*, %struct.treenode** %123, align 8, !dbg !473
  %125 = getelementptr inbounds %struct.treenode, %struct.treenode* %124, i32 0, i32 0, !dbg !474
  %126 = load %struct.treenode*, %struct.treenode** %125, align 8, !dbg !474
  call void @treeroot_set_curdir(%struct.treeroot* %121, %struct.treenode* %126), !dbg !475
  %127 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !476
  call void @treenode_free_down(%struct.treenode* %127), !dbg !477
  %128 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !478
  %129 = getelementptr inbounds %struct.treenode, %struct.treenode* %128, i32 0, i32 0, !dbg !479
  %130 = load %struct.treenode*, %struct.treenode** %129, align 8, !dbg !479
  call void @treenode_free_down(%struct.treenode* %130), !dbg !480
  br label %134, !dbg !481

; <label>:131:                                    ; preds = %106
  %132 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !482
  call void @treenode_free_down(%struct.treenode* %132), !dbg !484
  %133 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !485
  call void @treenode_free_node(%struct.treenode* %133), !dbg !486
  br label %142, !dbg !487

; <label>:134:                                    ; preds = %113
  br label %135

; <label>:135:                                    ; preds = %134, %95
  %136 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !488
  %137 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %136, i32 0, i32 1, !dbg !490
  %138 = load %struct.treenode*, %struct.treenode** %137, align 8, !dbg !490
  %139 = icmp eq %struct.treenode* %138, null, !dbg !491
  br i1 %139, label %140, label %141, !dbg !492

; <label>:140:                                    ; preds = %135
  br label %142, !dbg !493

; <label>:141:                                    ; preds = %135
  br label %82, !dbg !494, !llvm.loop !496

; <label>:142:                                    ; preds = %140, %131, %82
  %143 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !497
  %144 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !498
  call void @treeroot_set_curnode(%struct.treeroot* %143, %struct.treenode* %144), !dbg !499
  %145 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !500
  store %struct.treenode* %145, %struct.treenode** %2, align 8, !dbg !501
  br label %146, !dbg !501

; <label>:146:                                    ; preds = %142, %12
  %147 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !502
  ret %struct.treenode* %147, !dbg !502
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @treeroot_skip_node(%struct.treeroot*, %struct.treenode*) #0 !dbg !503 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.treeroot*, align 8
  %5 = alloca %struct.treenode*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %4, metadata !506, metadata !121), !dbg !507
  store %struct.treenode* %1, %struct.treenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %5, metadata !508, metadata !121), !dbg !509
  %6 = load %struct.treeroot*, %struct.treeroot** %4, align 8, !dbg !510
  %7 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %6, i32 0, i32 4, !dbg !512
  %8 = getelementptr inbounds %struct.treewalk_funcs, %struct.treewalk_funcs* %7, i32 0, i32 2, !dbg !513
  %9 = load i1 (%struct.treenode*)*, i1 (%struct.treenode*)** %8, align 8, !dbg !513
  %10 = icmp ne i1 (%struct.treenode*)* %9, null, !dbg !510
  br i1 %10, label %11, label %18, !dbg !514

; <label>:11:                                     ; preds = %2
  %12 = load %struct.treeroot*, %struct.treeroot** %4, align 8, !dbg !515
  %13 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %12, i32 0, i32 4, !dbg !516
  %14 = getelementptr inbounds %struct.treewalk_funcs, %struct.treewalk_funcs* %13, i32 0, i32 2, !dbg !517
  %15 = load i1 (%struct.treenode*)*, i1 (%struct.treenode*)** %14, align 8, !dbg !517
  %16 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !518
  %17 = call zeroext i1 %15(%struct.treenode* %16), !dbg !515
  store i1 %17, i1* %3, align 1, !dbg !519
  br label %19, !dbg !519

; <label>:18:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !520
  br label %19, !dbg !520

; <label>:19:                                     ; preds = %18, %11
  %20 = load i1, i1* %3, align 1, !dbg !521
  ret i1 %20, !dbg !521
}

; Function Attrs: nounwind uwtable
define internal void @treeroot_fill_node(%struct.treeroot*, %struct.treenode*) #0 !dbg !522 {
  %3 = alloca %struct.treeroot*, align 8
  %4 = alloca %struct.treenode*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %3, metadata !523, metadata !121), !dbg !524
  store %struct.treenode* %1, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !525, metadata !121), !dbg !526
  %5 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !527
  %6 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %5, i32 0, i32 0, !dbg !528
  %7 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !528
  %8 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !529
  %9 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !530
  %10 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %9, i32 0, i32 3, !dbg !531
  %11 = load i32, i32* %10, align 8, !dbg !531
  call void @treenode_fill_down(%struct.treenode* %7, %struct.treenode* %8, i32 %11), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: nounwind uwtable
define internal void @treeroot_sort_node(%struct.treeroot*, %struct.treenode*) #0 !dbg !81 {
  %3 = alloca %struct.treeroot*, align 8
  %4 = alloca %struct.treenode*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %3, metadata !534, metadata !121), !dbg !535
  store %struct.treenode* %1, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !536, metadata !121), !dbg !537
  %5 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !538
  %6 = getelementptr inbounds %struct.treenode, %struct.treenode* %5, i32 0, i32 9, !dbg !540
  %7 = load i64, i64* %6, align 8, !dbg !540
  %8 = icmp eq i64 %7, 0, !dbg !541
  br i1 %8, label %9, label %12, !dbg !542

; <label>:9:                                      ; preds = %2
  %10 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !543
  %11 = getelementptr inbounds %struct.treenode, %struct.treenode* %10, i32 0, i32 2, !dbg !544
  store %struct.treenode** getelementptr inbounds ([2 x %struct.treenode*], [2 x %struct.treenode*]* @treeroot_sort_node.down_empty, i32 0, i32 0), %struct.treenode*** %11, align 8, !dbg !545
  br label %28, !dbg !543

; <label>:12:                                     ; preds = %2
  %13 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !546
  %14 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %13, i32 0, i32 4, !dbg !548
  %15 = getelementptr inbounds %struct.treewalk_funcs, %struct.treewalk_funcs* %14, i32 0, i32 1, !dbg !549
  %16 = load i32 (%struct.treenode*)*, i32 (%struct.treenode*)** %15, align 8, !dbg !549
  %17 = icmp ne i32 (%struct.treenode*)* %16, null, !dbg !546
  br i1 %17, label %18, label %25, !dbg !550

; <label>:18:                                     ; preds = %12
  %19 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !551
  %20 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %19, i32 0, i32 4, !dbg !552
  %21 = getelementptr inbounds %struct.treewalk_funcs, %struct.treewalk_funcs* %20, i32 0, i32 1, !dbg !553
  %22 = load i32 (%struct.treenode*)*, i32 (%struct.treenode*)** %21, align 8, !dbg !553
  %23 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !554
  %24 = call i32 %22(%struct.treenode* %23), !dbg !551
  br label %27, !dbg !551

; <label>:25:                                     ; preds = %12
  %26 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !555
  call void @treenode_sort_down(%struct.treenode* %26), !dbg !556
  br label %27

; <label>:27:                                     ; preds = %25, %18
  br label %28

; <label>:28:                                     ; preds = %27, %9
  ret void, !dbg !557
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @treeroot_set_curdir(%struct.treeroot*, %struct.treenode*) #5 !dbg !558 {
  %3 = alloca %struct.treeroot*, align 8
  %4 = alloca %struct.treenode*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %3, metadata !559, metadata !121), !dbg !560
  store %struct.treenode* %1, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !561, metadata !121), !dbg !562
  %5 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !563
  %6 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !564
  %7 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %6, i32 0, i32 1, !dbg !565
  store %struct.treenode* %5, %struct.treenode** %7, align 8, !dbg !566
  ret void, !dbg !567
}

; Function Attrs: nounwind uwtable
define internal void @treenode_free_down(%struct.treenode*) #0 !dbg !568 {
  %2 = alloca %struct.treenode*, align 8
  %3 = alloca i64, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !571, metadata !121), !dbg !572
  call void @llvm.dbg.declare(metadata i64* %3, metadata !573, metadata !121), !dbg !574
  %4 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !575
  %5 = getelementptr inbounds %struct.treenode, %struct.treenode* %4, i32 0, i32 10, !dbg !577
  %6 = load i64, i64* %5, align 8, !dbg !577
  %7 = icmp ne i64 %6, 0, !dbg !575
  br i1 %7, label %9, label %8, !dbg !578

; <label>:8:                                      ; preds = %1
  br label %31, !dbg !579

; <label>:9:                                      ; preds = %1
  store i64 0, i64* %3, align 8, !dbg !580
  br label %10, !dbg !582

; <label>:10:                                     ; preds = %23, %9
  %11 = load i64, i64* %3, align 8, !dbg !583
  %12 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !586
  %13 = getelementptr inbounds %struct.treenode, %struct.treenode* %12, i32 0, i32 9, !dbg !587
  %14 = load i64, i64* %13, align 8, !dbg !587
  %15 = icmp ult i64 %11, %14, !dbg !588
  br i1 %15, label %16, label %26, !dbg !589

; <label>:16:                                     ; preds = %10
  %17 = load i64, i64* %3, align 8, !dbg !590
  %18 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !591
  %19 = getelementptr inbounds %struct.treenode, %struct.treenode* %18, i32 0, i32 2, !dbg !592
  %20 = load %struct.treenode**, %struct.treenode*** %19, align 8, !dbg !592
  %21 = getelementptr inbounds %struct.treenode*, %struct.treenode** %20, i64 %17, !dbg !591
  %22 = load %struct.treenode*, %struct.treenode** %21, align 8, !dbg !591
  call void @treenode_free_node(%struct.treenode* %22), !dbg !593
  br label %23, !dbg !593

; <label>:23:                                     ; preds = %16
  %24 = load i64, i64* %3, align 8, !dbg !594
  %25 = add i64 %24, 1, !dbg !594
  store i64 %25, i64* %3, align 8, !dbg !594
  br label %10, !dbg !596, !llvm.loop !597

; <label>:26:                                     ; preds = %10
  %27 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !599
  %28 = getelementptr inbounds %struct.treenode, %struct.treenode* %27, i32 0, i32 2, !dbg !600
  %29 = load %struct.treenode**, %struct.treenode*** %28, align 8, !dbg !600
  %30 = bitcast %struct.treenode** %29 to i8*, !dbg !599
  call void @free(i8* %30) #8, !dbg !601
  br label %31, !dbg !602

; <label>:31:                                     ; preds = %26, %8
  ret void, !dbg !603
}

; Function Attrs: nounwind uwtable
define internal void @treenode_free_node(%struct.treenode*) #0 !dbg !605 {
  %2 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !606, metadata !121), !dbg !607
  %3 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !608
  %4 = getelementptr inbounds %struct.treenode, %struct.treenode* %3, i32 0, i32 3, !dbg !609
  %5 = load i8*, i8** %4, align 8, !dbg !609
  call void @free(i8* %5) #8, !dbg !610
  %6 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !611
  %7 = bitcast %struct.treenode* %6 to i8*, !dbg !611
  call void @free(i8* %7) #8, !dbg !612
  ret void, !dbg !613
}

; Function Attrs: nounwind uwtable
define void @treewalk_close(%struct.treeroot*) #0 !dbg !614 {
  %2 = alloca %struct.treeroot*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %2, metadata !617, metadata !121), !dbg !618
  %3 = load %struct.treeroot*, %struct.treeroot** %2, align 8, !dbg !619
  %4 = bitcast %struct.treeroot* %3 to i8*, !dbg !619
  call void @free(i8* %4) #8, !dbg !620
  ret void, !dbg !621
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @treewalk(i8*, i32, %struct.treewalk_funcs*) #0 !dbg !622 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.treewalk_funcs*, align 8
  %7 = alloca %struct.treeroot*, align 8
  %8 = alloca %struct.treenode*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !625, metadata !121), !dbg !626
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !627, metadata !121), !dbg !628
  store %struct.treewalk_funcs* %2, %struct.treewalk_funcs** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.treewalk_funcs** %6, metadata !629, metadata !121), !dbg !630
  call void @llvm.dbg.declare(metadata %struct.treeroot** %7, metadata !631, metadata !121), !dbg !632
  call void @llvm.dbg.declare(metadata %struct.treenode** %8, metadata !633, metadata !121), !dbg !634
  %9 = load i8*, i8** %4, align 8, !dbg !635
  %10 = load i32, i32* %5, align 4, !dbg !636
  %11 = load %struct.treewalk_funcs*, %struct.treewalk_funcs** %6, align 8, !dbg !637
  %12 = call %struct.treeroot* @treewalk_open(i8* %9, i32 %10, %struct.treewalk_funcs* %11), !dbg !638
  store %struct.treeroot* %12, %struct.treeroot** %7, align 8, !dbg !639
  %13 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !640
  %14 = call %struct.treenode* @treewalk_node(%struct.treeroot* %13), !dbg !642
  store %struct.treenode* %14, %struct.treenode** %8, align 8, !dbg !643
  br label %15, !dbg !644

; <label>:15:                                     ; preds = %21, %3
  %16 = load %struct.treenode*, %struct.treenode** %8, align 8, !dbg !645
  %17 = icmp ne %struct.treenode* %16, null, !dbg !648
  br i1 %17, label %18, label %24, !dbg !648

; <label>:18:                                     ; preds = %15
  %19 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !649
  %20 = load %struct.treenode*, %struct.treenode** %8, align 8, !dbg !650
  call void @treeroot_visit_node(%struct.treeroot* %19, %struct.treenode* %20), !dbg !651
  br label %21, !dbg !651

; <label>:21:                                     ; preds = %18
  %22 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !652
  %23 = call %struct.treenode* @treewalk_next(%struct.treeroot* %22), !dbg !654
  store %struct.treenode* %23, %struct.treenode** %8, align 8, !dbg !655
  br label %15, !dbg !656, !llvm.loop !657

; <label>:24:                                     ; preds = %15
  %25 = load %struct.treeroot*, %struct.treeroot** %7, align 8, !dbg !659
  call void @treewalk_close(%struct.treeroot* %25), !dbg !660
  ret i32 0, !dbg !661
}

; Function Attrs: nounwind uwtable
define internal void @treeroot_visit_node(%struct.treeroot*, %struct.treenode*) #0 !dbg !662 {
  %3 = alloca %struct.treeroot*, align 8
  %4 = alloca %struct.treenode*, align 8
  store %struct.treeroot* %0, %struct.treeroot** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.treeroot** %3, metadata !663, metadata !121), !dbg !664
  store %struct.treenode* %1, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !665, metadata !121), !dbg !666
  %5 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !667
  %6 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %5, i32 0, i32 4, !dbg !669
  %7 = getelementptr inbounds %struct.treewalk_funcs, %struct.treewalk_funcs* %6, i32 0, i32 0, !dbg !670
  %8 = load i32 (%struct.treenode*)*, i32 (%struct.treenode*)** %7, align 8, !dbg !670
  %9 = icmp eq i32 (%struct.treenode*)* %8, null, !dbg !671
  br i1 %9, label %10, label %11, !dbg !672

; <label>:10:                                     ; preds = %2
  br label %22, !dbg !673

; <label>:11:                                     ; preds = %2
  %12 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !674
  %13 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !676
  %14 = call zeroext i1 @treeroot_skip_node(%struct.treeroot* %12, %struct.treenode* %13), !dbg !677
  br i1 %14, label %22, label %15, !dbg !678

; <label>:15:                                     ; preds = %11
  %16 = load %struct.treeroot*, %struct.treeroot** %3, align 8, !dbg !679
  %17 = getelementptr inbounds %struct.treeroot, %struct.treeroot* %16, i32 0, i32 4, !dbg !680
  %18 = getelementptr inbounds %struct.treewalk_funcs, %struct.treewalk_funcs* %17, i32 0, i32 0, !dbg !681
  %19 = load i32 (%struct.treenode*)*, i32 (%struct.treenode*)** %18, align 8, !dbg !681
  %20 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !682
  %21 = call i32 %19(%struct.treenode* %20), !dbg !679
  br label %22, !dbg !679

; <label>:22:                                     ; preds = %10, %15, %11
  ret void, !dbg !683
}

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #6

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.treenode* @treenode_alloc() #5 !dbg !684 {
  %1 = call i8* @m_calloc(i64 1, i64 88), !dbg !687
  %2 = bitcast i8* %1 to %struct.treenode*, !dbg !687
  ret %struct.treenode* %2, !dbg !688
}

declare i8* @m_strdup(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #7

declare i8* @m_calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @treenode_fill_down(%struct.treenode*, %struct.treenode*, i32) #0 !dbg !689 {
  %4 = alloca %struct.treenode*, align 8
  %5 = alloca %struct.treenode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.__dirstream*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i32 (i8*, %struct.stat*)*, align 8
  %10 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !692, metadata !121), !dbg !693
  store %struct.treenode* %1, %struct.treenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %5, metadata !694, metadata !121), !dbg !695
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !696, metadata !121), !dbg !697
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %7, metadata !698, metadata !121), !dbg !703
  call void @llvm.dbg.declare(metadata %struct.dirent** %8, metadata !704, metadata !121), !dbg !719
  call void @llvm.dbg.declare(metadata i32 (i8*, %struct.stat*)** %9, metadata !720, metadata !121), !dbg !721
  %11 = load i32, i32* %6, align 4, !dbg !722
  %12 = and i32 %11, 2, !dbg !724
  %13 = icmp ne i32 %12, 0, !dbg !724
  br i1 %13, label %14, label %15, !dbg !725

; <label>:14:                                     ; preds = %3
  store i32 (i8*, %struct.stat*)* @stat, i32 (i8*, %struct.stat*)** %9, align 8, !dbg !726
  br label %16, !dbg !727

; <label>:15:                                     ; preds = %3
  store i32 (i8*, %struct.stat*)* @lstat, i32 (i8*, %struct.stat*)** %9, align 8, !dbg !728
  br label %16

; <label>:16:                                     ; preds = %15, %14
  %17 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !729
  %18 = getelementptr inbounds %struct.treenode, %struct.treenode* %17, i32 0, i32 3, !dbg !730
  %19 = load i8*, i8** %18, align 8, !dbg !730
  %20 = call %struct.__dirstream* @opendir(i8* %19), !dbg !731
  store %struct.__dirstream* %20, %struct.__dirstream** %7, align 8, !dbg !732
  %21 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !733
  %22 = icmp ne %struct.__dirstream* %21, null, !dbg !733
  br i1 %22, label %28, label %23, !dbg !735

; <label>:23:                                     ; preds = %16
  %24 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !736
  %25 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !737
  %26 = getelementptr inbounds %struct.treenode, %struct.treenode* %25, i32 0, i32 3, !dbg !738
  %27 = load i8*, i8** %26, align 8, !dbg !738
  call void (i8*, ...) @ohshite(i8* %24, i8* %27) #9, !dbg !739
  unreachable, !dbg !741

; <label>:28:                                     ; preds = %16
  br label %29, !dbg !742

; <label>:29:                                     ; preds = %73, %45, %28
  %30 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !743
  %31 = call %struct.dirent* @readdir(%struct.__dirstream* %30), !dbg !745
  store %struct.dirent* %31, %struct.dirent** %8, align 8, !dbg !746
  %32 = icmp ne %struct.dirent* %31, null, !dbg !747
  br i1 %32, label %33, label %86, !dbg !748

; <label>:33:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.treenode** %10, metadata !749, metadata !121), !dbg !751
  %34 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !752
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 4, !dbg !754
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %35, i32 0, i32 0, !dbg !752
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !755
  %38 = icmp eq i32 %37, 0, !dbg !756
  br i1 %38, label %45, label %39, !dbg !757

; <label>:39:                                     ; preds = %33
  %40 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !758
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 4, !dbg !759
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i32 0, i32 0, !dbg !758
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #10, !dbg !760
  %44 = icmp eq i32 %43, 0, !dbg !761
  br i1 %44, label %45, label %46, !dbg !762

; <label>:45:                                     ; preds = %39, %33
  br label %29, !dbg !764, !llvm.loop !765

; <label>:46:                                     ; preds = %39
  %47 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !766
  %48 = getelementptr inbounds %struct.treenode, %struct.treenode* %47, i32 0, i32 9, !dbg !768
  %49 = load i64, i64* %48, align 8, !dbg !768
  %50 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !769
  %51 = getelementptr inbounds %struct.treenode, %struct.treenode* %50, i32 0, i32 10, !dbg !770
  %52 = load i64, i64* %51, align 8, !dbg !770
  %53 = icmp uge i64 %49, %52, !dbg !771
  br i1 %53, label %54, label %56, !dbg !772

; <label>:54:                                     ; preds = %46
  %55 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !773
  call void @treenode_resize_down(%struct.treenode* %55), !dbg !774
  br label %56, !dbg !774

; <label>:56:                                     ; preds = %54, %46
  %57 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !775
  %58 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !776
  %59 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !777
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 4, !dbg !778
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %60, i32 0, i32 0, !dbg !777
  %62 = call %struct.treenode* @treenode_node_new(%struct.treenode* %57, %struct.treenode* %58, i8* %61), !dbg !779
  store %struct.treenode* %62, %struct.treenode** %10, align 8, !dbg !780
  %63 = load i32, i32* %6, align 4, !dbg !781
  %64 = and i32 %63, 1, !dbg !783
  %65 = icmp ne i32 %64, 0, !dbg !783
  br i1 %65, label %66, label %69, !dbg !784

; <label>:66:                                     ; preds = %56
  %67 = load %struct.treenode*, %struct.treenode** %10, align 8, !dbg !785
  %68 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %9, align 8, !dbg !786
  call void @treenode_stat(%struct.treenode* %67, i32 (i8*, %struct.stat*)* %68), !dbg !787
  br label %73, !dbg !787

; <label>:69:                                     ; preds = %56
  %70 = load %struct.treenode*, %struct.treenode** %10, align 8, !dbg !788
  %71 = load %struct.dirent*, %struct.dirent** %8, align 8, !dbg !789
  %72 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %9, align 8, !dbg !790
  call void @treenode_stat_shallow(%struct.treenode* %70, %struct.dirent* %71, i32 (i8*, %struct.stat*)* %72), !dbg !791
  br label %73

; <label>:73:                                     ; preds = %69, %66
  %74 = load %struct.treenode*, %struct.treenode** %10, align 8, !dbg !792
  %75 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !793
  %76 = getelementptr inbounds %struct.treenode, %struct.treenode* %75, i32 0, i32 9, !dbg !794
  %77 = load i64, i64* %76, align 8, !dbg !794
  %78 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !795
  %79 = getelementptr inbounds %struct.treenode, %struct.treenode* %78, i32 0, i32 2, !dbg !796
  %80 = load %struct.treenode**, %struct.treenode*** %79, align 8, !dbg !796
  %81 = getelementptr inbounds %struct.treenode*, %struct.treenode** %80, i64 %77, !dbg !795
  store %struct.treenode* %74, %struct.treenode** %81, align 8, !dbg !797
  %82 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !798
  %83 = getelementptr inbounds %struct.treenode, %struct.treenode* %82, i32 0, i32 9, !dbg !799
  %84 = load i64, i64* %83, align 8, !dbg !800
  %85 = add i64 %84, 1, !dbg !800
  store i64 %85, i64* %83, align 8, !dbg !800
  br label %29, !dbg !801, !llvm.loop !765

; <label>:86:                                     ; preds = %29
  %87 = load %struct.__dirstream*, %struct.__dirstream** %7, align 8, !dbg !803
  %88 = call i32 @closedir(%struct.__dirstream* %87), !dbg !804
  ret void, !dbg !805
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

declare %struct.__dirstream* @opendir(i8*) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal void @treenode_resize_down(%struct.treenode*) #0 !dbg !806 {
  %2 = alloca %struct.treenode*, align 8
  %3 = alloca i64, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !807, metadata !121), !dbg !808
  call void @llvm.dbg.declare(metadata i64* %3, metadata !809, metadata !121), !dbg !810
  %4 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !811
  %5 = getelementptr inbounds %struct.treenode, %struct.treenode* %4, i32 0, i32 10, !dbg !813
  %6 = load i64, i64* %5, align 8, !dbg !813
  %7 = icmp ne i64 %6, 0, !dbg !811
  br i1 %7, label %8, label %13, !dbg !814

; <label>:8:                                      ; preds = %1
  %9 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !815
  %10 = getelementptr inbounds %struct.treenode, %struct.treenode* %9, i32 0, i32 10, !dbg !816
  %11 = load i64, i64* %10, align 8, !dbg !817
  %12 = mul i64 %11, 2, !dbg !817
  store i64 %12, i64* %10, align 8, !dbg !817
  br label %33, !dbg !815

; <label>:13:                                     ; preds = %1
  %14 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !818
  %15 = getelementptr inbounds %struct.treenode, %struct.treenode* %14, i32 0, i32 6, !dbg !820
  %16 = load %struct.stat*, %struct.stat** %15, align 8, !dbg !820
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 2, !dbg !821
  %18 = load i64, i64* %17, align 8, !dbg !821
  %19 = icmp ugt i64 %18, 4, !dbg !822
  br i1 %19, label %20, label %29, !dbg !823

; <label>:20:                                     ; preds = %13
  %21 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !824
  %22 = getelementptr inbounds %struct.treenode, %struct.treenode* %21, i32 0, i32 6, !dbg !825
  %23 = load %struct.stat*, %struct.stat** %22, align 8, !dbg !825
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 2, !dbg !826
  %25 = load i64, i64* %24, align 8, !dbg !826
  %26 = mul i64 %25, 2, !dbg !827
  %27 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !828
  %28 = getelementptr inbounds %struct.treenode, %struct.treenode* %27, i32 0, i32 10, !dbg !829
  store i64 %26, i64* %28, align 8, !dbg !830
  br label %32, !dbg !828

; <label>:29:                                     ; preds = %13
  %30 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !831
  %31 = getelementptr inbounds %struct.treenode, %struct.treenode* %30, i32 0, i32 10, !dbg !832
  store i64 8, i64* %31, align 8, !dbg !833
  br label %32

; <label>:32:                                     ; preds = %29, %20
  br label %33

; <label>:33:                                     ; preds = %32, %8
  %34 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !834
  %35 = getelementptr inbounds %struct.treenode, %struct.treenode* %34, i32 0, i32 10, !dbg !835
  %36 = load i64, i64* %35, align 8, !dbg !835
  %37 = mul i64 %36, 88, !dbg !836
  store i64 %37, i64* %3, align 8, !dbg !837
  %38 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !838
  %39 = getelementptr inbounds %struct.treenode, %struct.treenode* %38, i32 0, i32 2, !dbg !839
  %40 = load %struct.treenode**, %struct.treenode*** %39, align 8, !dbg !839
  %41 = bitcast %struct.treenode** %40 to i8*, !dbg !838
  %42 = load i64, i64* %3, align 8, !dbg !840
  %43 = call i8* @m_realloc(i8* %41, i64 %42), !dbg !841
  %44 = bitcast i8* %43 to %struct.treenode**, !dbg !841
  %45 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !842
  %46 = getelementptr inbounds %struct.treenode, %struct.treenode* %45, i32 0, i32 2, !dbg !843
  store %struct.treenode** %44, %struct.treenode*** %46, align 8, !dbg !844
  ret void, !dbg !845
}

; Function Attrs: nounwind uwtable
define internal %struct.treenode* @treenode_node_new(%struct.treenode*, %struct.treenode*, i8*) #0 !dbg !846 {
  %4 = alloca %struct.treenode*, align 8
  %5 = alloca %struct.treenode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.treenode*, align 8
  store %struct.treenode* %0, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !849, metadata !121), !dbg !850
  store %struct.treenode* %1, %struct.treenode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %5, metadata !851, metadata !121), !dbg !852
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !853, metadata !121), !dbg !854
  call void @llvm.dbg.declare(metadata %struct.treenode** %7, metadata !855, metadata !121), !dbg !856
  %8 = call %struct.treenode* @treenode_alloc(), !dbg !857
  store %struct.treenode* %8, %struct.treenode** %7, align 8, !dbg !858
  %9 = load %struct.treenode*, %struct.treenode** %5, align 8, !dbg !859
  %10 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !860
  %11 = getelementptr inbounds %struct.treenode, %struct.treenode* %10, i32 0, i32 0, !dbg !861
  store %struct.treenode* %9, %struct.treenode** %11, align 8, !dbg !862
  %12 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !863
  %13 = getelementptr inbounds %struct.treenode, %struct.treenode* %12, i32 0, i32 0, !dbg !864
  %14 = load %struct.treenode*, %struct.treenode** %13, align 8, !dbg !864
  %15 = getelementptr inbounds %struct.treenode, %struct.treenode* %14, i32 0, i32 3, !dbg !865
  %16 = load i8*, i8** %15, align 8, !dbg !865
  %17 = load i8*, i8** %6, align 8, !dbg !866
  %18 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %16, i8* %17), !dbg !867
  %19 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !868
  %20 = getelementptr inbounds %struct.treenode, %struct.treenode* %19, i32 0, i32 3, !dbg !869
  store i8* %18, i8** %20, align 8, !dbg !870
  %21 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !871
  %22 = getelementptr inbounds %struct.treenode, %struct.treenode* %21, i32 0, i32 3, !dbg !872
  %23 = load i8*, i8** %22, align 8, !dbg !872
  %24 = call i64 @strlen(i8* %23) #10, !dbg !873
  %25 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !874
  %26 = getelementptr inbounds %struct.treenode, %struct.treenode* %25, i32 0, i32 8, !dbg !875
  store i64 %24, i64* %26, align 8, !dbg !876
  %27 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !877
  %28 = getelementptr inbounds %struct.treenode, %struct.treenode* %27, i32 0, i32 3, !dbg !878
  %29 = load i8*, i8** %28, align 8, !dbg !878
  %30 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !879
  %31 = getelementptr inbounds %struct.treenode, %struct.treenode* %30, i32 0, i32 8, !dbg !880
  %32 = load i64, i64* %31, align 8, !dbg !880
  %33 = getelementptr inbounds i8, i8* %29, i64 %32, !dbg !881
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !882
  %35 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !883
  %36 = getelementptr inbounds %struct.treenode, %struct.treenode* %35, i32 0, i32 4, !dbg !884
  store i8* %34, i8** %36, align 8, !dbg !885
  %37 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !886
  %38 = getelementptr inbounds %struct.treenode, %struct.treenode* %37, i32 0, i32 3, !dbg !887
  %39 = load i8*, i8** %38, align 8, !dbg !887
  %40 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !888
  %41 = getelementptr inbounds %struct.treenode, %struct.treenode* %40, i32 0, i32 0, !dbg !889
  %42 = load %struct.treenode*, %struct.treenode** %41, align 8, !dbg !889
  %43 = getelementptr inbounds %struct.treenode, %struct.treenode* %42, i32 0, i32 8, !dbg !890
  %44 = load i64, i64* %43, align 8, !dbg !890
  %45 = getelementptr inbounds i8, i8* %39, i64 %44, !dbg !891
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !892
  %47 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !893
  %48 = getelementptr inbounds %struct.treenode, %struct.treenode* %47, i32 0, i32 5, !dbg !894
  store i8* %46, i8** %48, align 8, !dbg !895
  %49 = load %struct.treenode*, %struct.treenode** %7, align 8, !dbg !896
  ret %struct.treenode* %49, !dbg !897
}

; Function Attrs: nounwind uwtable
define internal void @treenode_stat_shallow(%struct.treenode*, %struct.dirent*, i32 (i8*, %struct.stat*)*) #0 !dbg !898 {
  %4 = alloca %struct.treenode*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32 (i8*, %struct.stat*)*, align 8
  %7 = alloca i32, align 4
  store %struct.treenode* %0, %struct.treenode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %4, metadata !901, metadata !121), !dbg !902
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent** %5, metadata !903, metadata !121), !dbg !904
  store i32 (i8*, %struct.stat*)* %2, i32 (i8*, %struct.stat*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, %struct.stat*)** %6, metadata !905, metadata !121), !dbg !906
  call void @llvm.dbg.declare(metadata i32* %7, metadata !907, metadata !121), !dbg !908
  %8 = load %struct.dirent*, %struct.dirent** %5, align 8, !dbg !909
  %9 = call i32 @dirent_to_mode_type(%struct.dirent* %8), !dbg !910
  store i32 %9, i32* %7, align 4, !dbg !911
  %10 = load i32, i32* %7, align 4, !dbg !912
  %11 = icmp eq i32 %10, 0, !dbg !914
  br i1 %11, label %20, label %12, !dbg !915

; <label>:12:                                     ; preds = %3
  %13 = load i32, i32* %7, align 4, !dbg !916
  %14 = and i32 %13, 61440, !dbg !918
  %15 = icmp eq i32 %14, 16384, !dbg !919
  br i1 %15, label %20, label %16, !dbg !919

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %7, align 4, !dbg !920
  %18 = and i32 %17, 61440, !dbg !922
  %19 = icmp eq i32 %18, 40960, !dbg !923
  br i1 %19, label %20, label %23, !dbg !924

; <label>:20:                                     ; preds = %16, %12, %3
  %21 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !925
  %22 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %6, align 8, !dbg !926
  call void @treenode_stat(%struct.treenode* %21, i32 (i8*, %struct.stat*)* %22), !dbg !927
  br label %29, !dbg !927

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %7, align 4, !dbg !928
  %25 = load %struct.treenode*, %struct.treenode** %4, align 8, !dbg !929
  %26 = getelementptr inbounds %struct.treenode, %struct.treenode* %25, i32 0, i32 7, !dbg !930
  %27 = load i32, i32* %26, align 8, !dbg !931
  %28 = or i32 %27, %24, !dbg !931
  store i32 %28, i32* %26, align 8, !dbg !931
  br label %29

; <label>:29:                                     ; preds = %23, %20
  ret void, !dbg !932
}

declare i32 @closedir(%struct.__dirstream*) #3

declare i8* @m_realloc(i8*, i64) #3

declare i8* @str_fmt(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @dirent_to_mode_type(%struct.dirent*) #0 !dbg !933 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dirent*, align 8
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent** %3, metadata !936, metadata !121), !dbg !937
  %4 = load %struct.dirent*, %struct.dirent** %3, align 8, !dbg !938
  %5 = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 3, !dbg !939
  %6 = load i8, i8* %5, align 2, !dbg !939
  %7 = zext i8 %6 to i32, !dbg !938
  switch i32 %7, label %16 [
    i32 8, label %8
    i32 4, label %9
    i32 10, label %10
    i32 2, label %11
    i32 6, label %12
    i32 1, label %13
    i32 12, label %14
    i32 0, label %15
  ], !dbg !940

; <label>:8:                                      ; preds = %1
  store i32 32768, i32* %2, align 4, !dbg !941
  br label %17, !dbg !941

; <label>:9:                                      ; preds = %1
  store i32 16384, i32* %2, align 4, !dbg !943
  br label %17, !dbg !943

; <label>:10:                                     ; preds = %1
  store i32 40960, i32* %2, align 4, !dbg !944
  br label %17, !dbg !944

; <label>:11:                                     ; preds = %1
  store i32 8192, i32* %2, align 4, !dbg !945
  br label %17, !dbg !945

; <label>:12:                                     ; preds = %1
  store i32 24576, i32* %2, align 4, !dbg !946
  br label %17, !dbg !946

; <label>:13:                                     ; preds = %1
  store i32 4096, i32* %2, align 4, !dbg !947
  br label %17, !dbg !947

; <label>:14:                                     ; preds = %1
  store i32 49152, i32* %2, align 4, !dbg !948
  br label %17, !dbg !948

; <label>:15:                                     ; preds = %1
  br label %16, !dbg !949

; <label>:16:                                     ; preds = %1, %15
  store i32 0, i32* %2, align 4, !dbg !951
  br label %17, !dbg !951

; <label>:17:                                     ; preds = %16, %14, %13, %12, %11, %10, %9, %8
  %18 = load i32, i32* %2, align 4, !dbg !952
  ret i32 %18, !dbg !952
}

; Function Attrs: nounwind uwtable
define internal void @treenode_sort_down(%struct.treenode*) #0 !dbg !953 {
  %2 = alloca %struct.treenode*, align 8
  %3 = alloca i64, align 8
  store %struct.treenode* %0, %struct.treenode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.treenode** %2, metadata !954, metadata !121), !dbg !955
  call void @llvm.dbg.declare(metadata i64* %3, metadata !956, metadata !121), !dbg !957
  %4 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !958
  %5 = getelementptr inbounds %struct.treenode, %struct.treenode* %4, i32 0, i32 2, !dbg !959
  %6 = load %struct.treenode**, %struct.treenode*** %5, align 8, !dbg !959
  %7 = bitcast %struct.treenode** %6 to i8*, !dbg !958
  %8 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !960
  %9 = getelementptr inbounds %struct.treenode, %struct.treenode* %8, i32 0, i32 9, !dbg !961
  %10 = load i64, i64* %9, align 8, !dbg !961
  call void @qsort(i8* %7, i64 %10, i64 8, i32 (i8*, i8*)* @treenode_cmp), !dbg !962
  store i64 0, i64* %3, align 8, !dbg !963
  br label %11, !dbg !965

; <label>:11:                                     ; preds = %33, %1
  %12 = load i64, i64* %3, align 8, !dbg !966
  %13 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !969
  %14 = getelementptr inbounds %struct.treenode, %struct.treenode* %13, i32 0, i32 9, !dbg !970
  %15 = load i64, i64* %14, align 8, !dbg !970
  %16 = sub i64 %15, 1, !dbg !971
  %17 = icmp ult i64 %12, %16, !dbg !972
  br i1 %17, label %18, label %36, !dbg !973

; <label>:18:                                     ; preds = %11
  %19 = load i64, i64* %3, align 8, !dbg !974
  %20 = add i64 %19, 1, !dbg !975
  %21 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !976
  %22 = getelementptr inbounds %struct.treenode, %struct.treenode* %21, i32 0, i32 2, !dbg !977
  %23 = load %struct.treenode**, %struct.treenode*** %22, align 8, !dbg !977
  %24 = getelementptr inbounds %struct.treenode*, %struct.treenode** %23, i64 %20, !dbg !976
  %25 = load %struct.treenode*, %struct.treenode** %24, align 8, !dbg !976
  %26 = load i64, i64* %3, align 8, !dbg !978
  %27 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !979
  %28 = getelementptr inbounds %struct.treenode, %struct.treenode* %27, i32 0, i32 2, !dbg !980
  %29 = load %struct.treenode**, %struct.treenode*** %28, align 8, !dbg !980
  %30 = getelementptr inbounds %struct.treenode*, %struct.treenode** %29, i64 %26, !dbg !979
  %31 = load %struct.treenode*, %struct.treenode** %30, align 8, !dbg !979
  %32 = getelementptr inbounds %struct.treenode, %struct.treenode* %31, i32 0, i32 1, !dbg !981
  store %struct.treenode* %25, %struct.treenode** %32, align 8, !dbg !982
  br label %33, !dbg !979

; <label>:33:                                     ; preds = %18
  %34 = load i64, i64* %3, align 8, !dbg !983
  %35 = add i64 %34, 1, !dbg !983
  store i64 %35, i64* %3, align 8, !dbg !983
  br label %11, !dbg !985, !llvm.loop !986

; <label>:36:                                     ; preds = %11
  %37 = load i64, i64* %3, align 8, !dbg !988
  %38 = load %struct.treenode*, %struct.treenode** %2, align 8, !dbg !989
  %39 = getelementptr inbounds %struct.treenode, %struct.treenode* %38, i32 0, i32 2, !dbg !990
  %40 = load %struct.treenode**, %struct.treenode*** %39, align 8, !dbg !990
  %41 = getelementptr inbounds %struct.treenode*, %struct.treenode** %40, i64 %37, !dbg !989
  %42 = load %struct.treenode*, %struct.treenode** %41, align 8, !dbg !989
  %43 = getelementptr inbounds %struct.treenode, %struct.treenode* %42, i32 0, i32 1, !dbg !991
  store %struct.treenode* null, %struct.treenode** %43, align 8, !dbg !992
  ret void, !dbg !993
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @treenode_cmp(i8*, i8*) #0 !dbg !994 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !999, metadata !121), !dbg !1000
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1001, metadata !121), !dbg !1002
  %5 = load i8*, i8** %3, align 8, !dbg !1003
  %6 = bitcast i8* %5 to %struct.treenode**, !dbg !1004
  %7 = load %struct.treenode*, %struct.treenode** %6, align 8, !dbg !1005
  %8 = getelementptr inbounds %struct.treenode, %struct.treenode* %7, i32 0, i32 5, !dbg !1006
  %9 = load i8*, i8** %8, align 8, !dbg !1006
  %10 = load i8*, i8** %4, align 8, !dbg !1007
  %11 = bitcast i8* %10 to %struct.treenode**, !dbg !1008
  %12 = load %struct.treenode*, %struct.treenode** %11, align 8, !dbg !1009
  %13 = getelementptr inbounds %struct.treenode, %struct.treenode* %12, i32 0, i32 5, !dbg !1010
  %14 = load i8*, i8** %13, align 8, !dbg !1010
  %15 = call i32 @strcmp(i8* %9, i8* %14) #10, !dbg !1011
  ret i32 %15, !dbg !1012
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!112, !113}
!llvm.ident = !{!114}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, globals: !79)
!1 = !DIFile(filename: "[inter]lib--dpkg--treewalk.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "treewalk_options", file: !4, line: 39, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/treewalk.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "TREEWALK_NONE", value: 0)
!7 = !DIEnumerator(name: "TREEWALK_FORCE_STAT", value: 1)
!8 = !DIEnumerator(name: "TREEWALK_FOLLOW_LINKS", value: 2)
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treenode", file: !15, line: 40, size: 704, align: 64, elements: !16)
!15 = !DIFile(filename: "treewalk.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!16 = !{!17, !19, !20, !22, !25, !26, !27, !71, !74, !77, !78}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "up", scope: !14, file: !15, line: 41, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !14, file: !15, line: 42, baseType: !18, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !14, file: !15, line: 43, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pathname", scope: !14, file: !15, line: 45, baseType: !23, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "virtname", scope: !14, file: !15, line: 46, baseType: !23, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 47, baseType: !23, size: 64, align: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !14, file: !15, line: 49, baseType: !28, size: 64, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !30, line: 46, size: 1152, align: 64, elements: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!31 = !{!32, !36, !38, !40, !43, !45, !47, !49, !50, !53, !55, !57, !65, !66, !67}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !29, file: !30, line: 48, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !34, line: 124, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!35 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !29, file: !30, line: 53, baseType: !37, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !34, line: 127, baseType: !35)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !29, file: !30, line: 61, baseType: !39, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !34, line: 130, baseType: !35)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !29, file: !30, line: 62, baseType: !41, size: 32, align: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !34, line: 129, baseType: !42)
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !29, file: !30, line: 64, baseType: !44, size: 32, align: 32, offset: 224)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !34, line: 125, baseType: !42)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !29, file: !30, line: 65, baseType: !46, size: 32, align: 32, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !34, line: 126, baseType: !42)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !29, file: !30, line: 67, baseType: !48, size: 32, align: 32, offset: 288)
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !29, file: !30, line: 69, baseType: !33, size: 64, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !29, file: !30, line: 74, baseType: !51, size: 64, align: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 131, baseType: !52)
!52 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !29, file: !30, line: 78, baseType: !54, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !34, line: 153, baseType: !52)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !29, file: !30, line: 80, baseType: !56, size: 64, align: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !34, line: 158, baseType: !52)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !29, file: !30, line: 91, baseType: !58, size: 128, align: 64, offset: 576)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !59, line: 120, size: 128, align: 64, elements: !60)
!59 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!60 = !{!61, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !58, file: !59, line: 122, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !34, line: 139, baseType: !52)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !58, file: !59, line: 123, baseType: !64, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !34, line: 175, baseType: !52)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !29, file: !30, line: 92, baseType: !58, size: 128, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !29, file: !30, line: 93, baseType: !58, size: 128, align: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !29, file: !30, line: 106, baseType: !68, size: 192, align: 64, offset: 960)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 192, align: 64, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !14, file: !15, line: 50, baseType: !72, size: 32, align: 32, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !73, line: 62, baseType: !41)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pathname_len", scope: !14, file: !15, line: 52, baseType: !75, size: 64, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 216, baseType: !35)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "down_used", scope: !14, file: !15, line: 54, baseType: !75, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "down_size", scope: !14, file: !15, line: 55, baseType: !75, size: 64, align: 64, offset: 640)
!79 = !{!80}
!80 = distinct !DIGlobalVariable(name: "down_empty", scope: !81, file: !15, line: 336, type: !109, isLocal: true, isDefinition: true, variable: [2 x %struct.treenode*]* @treeroot_sort_node.down_empty)
!81 = distinct !DISubprogram(name: "treeroot_sort_node", scope: !15, file: !15, line: 334, type: !82, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84, !18}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treeroot", file: !15, line: 296, size: 448, align: 64, elements: !86)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rootnode", scope: !85, file: !15, line: 297, baseType: !18, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "curdir", scope: !85, file: !15, line: 299, baseType: !18, size: 64, align: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "curnode", scope: !85, file: !15, line: 300, baseType: !18, size: 64, align: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !85, file: !15, line: 302, baseType: !3, size: 32, align: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !85, file: !15, line: 303, baseType: !92, size: 192, align: 64, offset: 256)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treewalk_funcs", file: !4, line: 51, size: 192, align: 64, elements: !93)
!93 = !{!94, !99, !102}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "visit", scope: !92, file: !4, line: 52, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "treenode_visit_func", file: !4, line: 47, baseType: !97)
!97 = !DISubroutineType(types: !98)
!98 = !{!48, !18}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sort", scope: !92, file: !4, line: 53, baseType: !100, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "treenode_sort_func", file: !4, line: 49, baseType: !97)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !92, file: !4, line: 54, baseType: !103, size: 64, align: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "treenode_skip_func", file: !4, line: 48, baseType: !105)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !18}
!107 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!108 = !{}
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, align: 64, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 2)
!112 = !{i32 2, !"Dwarf Version", i32 4}
!113 = !{i32 2, !"Debug Info Version", i32 3}
!114 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!115 = distinct !DISubprogram(name: "treenode_get_name", scope: !15, file: !15, line: 155, type: !116, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !18}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!120 = !DILocalVariable(name: "node", arg: 1, scope: !115, file: !15, line: 155, type: !18)
!121 = !DIExpression()
!122 = !DILocation(line: 155, column: 36, scope: !115)
!123 = !DILocation(line: 157, column: 9, scope: !115)
!124 = !DILocation(line: 157, column: 15, scope: !115)
!125 = !DILocation(line: 157, column: 2, scope: !115)
!126 = distinct !DISubprogram(name: "treenode_get_pathname", scope: !15, file: !15, line: 161, type: !116, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!127 = !DILocalVariable(name: "node", arg: 1, scope: !126, file: !15, line: 161, type: !18)
!128 = !DILocation(line: 161, column: 40, scope: !126)
!129 = !DILocation(line: 163, column: 9, scope: !126)
!130 = !DILocation(line: 163, column: 15, scope: !126)
!131 = !DILocation(line: 163, column: 2, scope: !126)
!132 = distinct !DISubprogram(name: "treenode_get_virtname", scope: !15, file: !15, line: 167, type: !116, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!133 = !DILocalVariable(name: "node", arg: 1, scope: !132, file: !15, line: 167, type: !18)
!134 = !DILocation(line: 167, column: 40, scope: !132)
!135 = !DILocation(line: 169, column: 9, scope: !132)
!136 = !DILocation(line: 169, column: 15, scope: !132)
!137 = !DILocation(line: 169, column: 2, scope: !132)
!138 = distinct !DISubprogram(name: "treenode_get_mode", scope: !15, file: !15, line: 173, type: !139, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!139 = !DISubroutineType(types: !140)
!140 = !{!72, !18}
!141 = !DILocalVariable(name: "node", arg: 1, scope: !138, file: !15, line: 173, type: !18)
!142 = !DILocation(line: 173, column: 36, scope: !138)
!143 = !DILocation(line: 175, column: 9, scope: !138)
!144 = !DILocation(line: 175, column: 15, scope: !138)
!145 = !DILocation(line: 175, column: 2, scope: !138)
!146 = distinct !DISubprogram(name: "treenode_get_stat", scope: !15, file: !15, line: 179, type: !147, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!147 = !DISubroutineType(types: !148)
!148 = !{!28, !18}
!149 = !DILocalVariable(name: "node", arg: 1, scope: !146, file: !15, line: 179, type: !18)
!150 = !DILocation(line: 179, column: 36, scope: !146)
!151 = !DILocation(line: 181, column: 16, scope: !146)
!152 = !DILocation(line: 181, column: 2, scope: !146)
!153 = !DILocation(line: 182, column: 9, scope: !146)
!154 = !DILocation(line: 182, column: 15, scope: !146)
!155 = !DILocation(line: 182, column: 2, scope: !146)
!156 = distinct !DISubprogram(name: "treenode_stat", scope: !15, file: !15, line: 100, type: !157, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !18, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "treewalk_stat_func", file: !15, line: 38, baseType: !161)
!161 = !DISubroutineType(types: !162)
!162 = !{!48, !118, !28}
!163 = !DILocalVariable(name: "node", arg: 1, scope: !156, file: !15, line: 100, type: !18)
!164 = !DILocation(line: 100, column: 32, scope: !156)
!165 = !DILocalVariable(name: "stat_func", arg: 2, scope: !156, file: !15, line: 100, type: !159)
!166 = !DILocation(line: 100, column: 58, scope: !156)
!167 = !DILocation(line: 102, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !15, line: 102, column: 6)
!169 = !DILocation(line: 102, column: 12, scope: !168)
!170 = !DILocation(line: 102, column: 6, scope: !156)
!171 = !DILocation(line: 103, column: 3, scope: !168)
!172 = !DILocation(line: 105, column: 15, scope: !156)
!173 = !DILocation(line: 105, column: 2, scope: !156)
!174 = !DILocation(line: 105, column: 8, scope: !156)
!175 = !DILocation(line: 105, column: 13, scope: !156)
!176 = !DILocation(line: 107, column: 6, scope: !177)
!177 = distinct !DILexicalBlock(scope: !156, file: !15, line: 107, column: 6)
!178 = !DILocation(line: 107, column: 16, scope: !177)
!179 = !DILocation(line: 107, column: 22, scope: !177)
!180 = !DILocation(line: 107, column: 32, scope: !177)
!181 = !DILocation(line: 107, column: 38, scope: !177)
!182 = !DILocation(line: 107, column: 44, scope: !177)
!183 = !DILocation(line: 107, column: 6, scope: !156)
!184 = !DILocation(line: 108, column: 10, scope: !177)
!185 = !DILocation(line: 108, column: 42, scope: !177)
!186 = !DILocation(line: 108, column: 48, scope: !177)
!187 = !DILocation(line: 108, column: 3, scope: !188)
!188 = !DILexicalBlockFile(scope: !177, file: !15, discriminator: 1)
!189 = !DILocation(line: 108, column: 3, scope: !177)
!190 = !DILocation(line: 110, column: 15, scope: !156)
!191 = !DILocation(line: 110, column: 21, scope: !156)
!192 = !DILocation(line: 110, column: 27, scope: !156)
!193 = !DILocation(line: 110, column: 2, scope: !156)
!194 = !DILocation(line: 110, column: 8, scope: !156)
!195 = !DILocation(line: 110, column: 13, scope: !156)
!196 = !DILocation(line: 111, column: 1, scope: !156)
!197 = !DILocation(line: 111, column: 1, scope: !198)
!198 = !DILexicalBlockFile(scope: !156, file: !15, discriminator: 1)
!199 = distinct !DISubprogram(name: "treenode_get_parent", scope: !15, file: !15, line: 186, type: !200, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!200 = !DISubroutineType(types: !201)
!201 = !{!18, !18}
!202 = !DILocalVariable(name: "node", arg: 1, scope: !199, file: !15, line: 186, type: !18)
!203 = !DILocation(line: 186, column: 38, scope: !199)
!204 = !DILocation(line: 188, column: 9, scope: !199)
!205 = !DILocation(line: 188, column: 15, scope: !199)
!206 = !DILocation(line: 188, column: 2, scope: !199)
!207 = distinct !DISubprogram(name: "treewalk_open", scope: !15, file: !15, line: 364, type: !208, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!208 = !DISubroutineType(types: !209)
!209 = !{!84, !118, !3, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!211 = !DILocalVariable(name: "rootdir", arg: 1, scope: !207, file: !15, line: 364, type: !118)
!212 = !DILocation(line: 364, column: 27, scope: !207)
!213 = !DILocalVariable(name: "options", arg: 2, scope: !207, file: !15, line: 364, type: !3)
!214 = !DILocation(line: 364, column: 58, scope: !207)
!215 = !DILocalVariable(name: "func", arg: 3, scope: !207, file: !15, line: 365, type: !210)
!216 = !DILocation(line: 365, column: 38, scope: !207)
!217 = !DILocalVariable(name: "tree", scope: !207, file: !15, line: 367, type: !84)
!218 = !DILocation(line: 367, column: 19, scope: !207)
!219 = !DILocalVariable(name: "root", scope: !207, file: !15, line: 368, type: !18)
!220 = !DILocation(line: 368, column: 19, scope: !207)
!221 = !DILocation(line: 370, column: 9, scope: !207)
!222 = !DILocation(line: 370, column: 7, scope: !207)
!223 = !DILocation(line: 372, column: 18, scope: !207)
!224 = !DILocation(line: 372, column: 2, scope: !207)
!225 = !DILocation(line: 372, column: 8, scope: !207)
!226 = !DILocation(line: 372, column: 16, scope: !207)
!227 = !DILocation(line: 373, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !207, file: !15, line: 373, column: 6)
!229 = !DILocation(line: 373, column: 6, scope: !207)
!230 = !DILocation(line: 374, column: 3, scope: !228)
!231 = !DILocation(line: 374, column: 9, scope: !228)
!232 = !DILocation(line: 374, column: 17, scope: !228)
!233 = !DILocation(line: 374, column: 16, scope: !228)
!234 = !DILocation(line: 376, column: 3, scope: !228)
!235 = !DILocation(line: 376, column: 9, scope: !228)
!236 = !DILocation(line: 376, column: 16, scope: !228)
!237 = !DILocation(line: 376, column: 16, scope: !238)
!238 = !DILexicalBlockFile(scope: !228, file: !15, discriminator: 1)
!239 = !DILocation(line: 378, column: 27, scope: !207)
!240 = !DILocation(line: 378, column: 9, scope: !207)
!241 = !DILocation(line: 378, column: 7, scope: !207)
!242 = !DILocation(line: 379, column: 16, scope: !207)
!243 = !DILocation(line: 379, column: 2, scope: !207)
!244 = !DILocation(line: 381, column: 23, scope: !245)
!245 = distinct !DILexicalBlock(scope: !207, file: !15, line: 381, column: 6)
!246 = !DILocation(line: 381, column: 7, scope: !245)
!247 = !DILocation(line: 381, column: 6, scope: !207)
!248 = !DILocation(line: 382, column: 9, scope: !245)
!249 = !DILocation(line: 382, column: 51, scope: !245)
!250 = !DILocation(line: 382, column: 3, scope: !251)
!251 = !DILexicalBlockFile(scope: !245, file: !15, discriminator: 1)
!252 = !DILocation(line: 382, column: 3, scope: !245)
!253 = !DILocation(line: 384, column: 23, scope: !207)
!254 = !DILocation(line: 384, column: 29, scope: !207)
!255 = !DILocation(line: 384, column: 2, scope: !207)
!256 = !DILocation(line: 385, column: 34, scope: !207)
!257 = !DILocation(line: 385, column: 19, scope: !207)
!258 = !DILocation(line: 385, column: 25, scope: !207)
!259 = !DILocation(line: 385, column: 32, scope: !207)
!260 = !DILocation(line: 385, column: 2, scope: !207)
!261 = !DILocation(line: 385, column: 8, scope: !207)
!262 = !DILocation(line: 385, column: 17, scope: !207)
!263 = !DILocation(line: 387, column: 9, scope: !207)
!264 = !DILocation(line: 387, column: 2, scope: !207)
!265 = distinct !DISubprogram(name: "treenode_root_new", scope: !15, file: !15, line: 65, type: !266, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!266 = !DISubroutineType(types: !267)
!267 = !{!18, !118}
!268 = !DILocalVariable(name: "rootdir", arg: 1, scope: !265, file: !15, line: 65, type: !118)
!269 = !DILocation(line: 65, column: 31, scope: !265)
!270 = !DILocalVariable(name: "node", scope: !265, file: !15, line: 67, type: !18)
!271 = !DILocation(line: 67, column: 19, scope: !265)
!272 = !DILocation(line: 69, column: 9, scope: !265)
!273 = !DILocation(line: 69, column: 7, scope: !265)
!274 = !DILocation(line: 70, column: 2, scope: !265)
!275 = !DILocation(line: 70, column: 8, scope: !265)
!276 = !DILocation(line: 70, column: 11, scope: !265)
!277 = !DILocation(line: 71, column: 28, scope: !265)
!278 = !DILocation(line: 71, column: 19, scope: !265)
!279 = !DILocation(line: 71, column: 2, scope: !265)
!280 = !DILocation(line: 71, column: 8, scope: !265)
!281 = !DILocation(line: 71, column: 17, scope: !265)
!282 = !DILocation(line: 72, column: 30, scope: !265)
!283 = !DILocation(line: 72, column: 36, scope: !265)
!284 = !DILocation(line: 72, column: 23, scope: !265)
!285 = !DILocation(line: 72, column: 2, scope: !265)
!286 = !DILocation(line: 72, column: 8, scope: !265)
!287 = !DILocation(line: 72, column: 21, scope: !265)
!288 = !DILocation(line: 73, column: 19, scope: !265)
!289 = !DILocation(line: 73, column: 25, scope: !265)
!290 = !DILocation(line: 73, column: 36, scope: !265)
!291 = !DILocation(line: 73, column: 42, scope: !265)
!292 = !DILocation(line: 73, column: 34, scope: !265)
!293 = !DILocation(line: 73, column: 2, scope: !265)
!294 = !DILocation(line: 73, column: 8, scope: !265)
!295 = !DILocation(line: 73, column: 17, scope: !265)
!296 = !DILocation(line: 74, column: 23, scope: !265)
!297 = !DILocation(line: 74, column: 29, scope: !265)
!298 = !DILocation(line: 74, column: 15, scope: !265)
!299 = !DILocation(line: 74, column: 2, scope: !265)
!300 = !DILocation(line: 74, column: 8, scope: !265)
!301 = !DILocation(line: 74, column: 13, scope: !265)
!302 = !DILocation(line: 75, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !265, file: !15, line: 75, column: 6)
!304 = !DILocation(line: 75, column: 12, scope: !303)
!305 = !DILocation(line: 75, column: 17, scope: !303)
!306 = !DILocation(line: 75, column: 6, scope: !265)
!307 = !DILocation(line: 76, column: 16, scope: !303)
!308 = !DILocation(line: 76, column: 22, scope: !303)
!309 = !DILocation(line: 76, column: 3, scope: !303)
!310 = !DILocation(line: 76, column: 9, scope: !303)
!311 = !DILocation(line: 76, column: 14, scope: !303)
!312 = !DILocation(line: 78, column: 3, scope: !303)
!313 = !DILocation(line: 78, column: 9, scope: !303)
!314 = !DILocation(line: 78, column: 13, scope: !303)
!315 = !DILocation(line: 80, column: 9, scope: !265)
!316 = !DILocation(line: 80, column: 2, scope: !265)
!317 = distinct !DISubprogram(name: "treenode_is_dir", scope: !15, file: !15, line: 192, type: !105, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!318 = !DILocalVariable(name: "node", arg: 1, scope: !317, file: !15, line: 192, type: !18)
!319 = !DILocation(line: 192, column: 34, scope: !317)
!320 = !DILocation(line: 194, column: 9, scope: !317)
!321 = !DILocation(line: 194, column: 14, scope: !317)
!322 = !DILocation(line: 194, column: 16, scope: !323)
!323 = !DILexicalBlockFile(scope: !317, file: !15, discriminator: 1)
!324 = !DILocation(line: 194, column: 22, scope: !323)
!325 = !DILocation(line: 194, column: 19, scope: !323)
!326 = !DILocation(line: 194, column: 30, scope: !323)
!327 = !DILocation(line: 194, column: 2, scope: !328)
!328 = !DILexicalBlockFile(scope: !317, file: !15, discriminator: 2)
!329 = distinct !DISubprogram(name: "treeroot_set_curnode", scope: !15, file: !15, line: 313, type: !82, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!330 = !DILocalVariable(name: "tree", arg: 1, scope: !329, file: !15, line: 313, type: !84)
!331 = !DILocation(line: 313, column: 39, scope: !329)
!332 = !DILocalVariable(name: "node", arg: 2, scope: !329, file: !15, line: 313, type: !18)
!333 = !DILocation(line: 313, column: 62, scope: !329)
!334 = !DILocation(line: 315, column: 18, scope: !329)
!335 = !DILocation(line: 315, column: 2, scope: !329)
!336 = !DILocation(line: 315, column: 8, scope: !329)
!337 = !DILocation(line: 315, column: 16, scope: !329)
!338 = !DILocation(line: 316, column: 1, scope: !329)
!339 = distinct !DISubprogram(name: "treewalk_node", scope: !15, file: !15, line: 409, type: !340, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!340 = !DISubroutineType(types: !341)
!341 = !{!18, !84}
!342 = !DILocalVariable(name: "tree", arg: 1, scope: !339, file: !15, line: 409, type: !84)
!343 = !DILocation(line: 409, column: 32, scope: !339)
!344 = !DILocation(line: 411, column: 9, scope: !339)
!345 = !DILocation(line: 411, column: 15, scope: !339)
!346 = !DILocation(line: 411, column: 2, scope: !339)
!347 = distinct !DISubprogram(name: "treewalk_next", scope: !15, file: !15, line: 435, type: !340, isLocal: false, isDefinition: true, scopeLine: 436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!348 = !DILocalVariable(name: "tree", arg: 1, scope: !347, file: !15, line: 435, type: !84)
!349 = !DILocation(line: 435, column: 32, scope: !347)
!350 = !DILocalVariable(name: "node", scope: !347, file: !15, line: 437, type: !18)
!351 = !DILocation(line: 437, column: 19, scope: !347)
!352 = !DILocation(line: 439, column: 9, scope: !347)
!353 = !DILocation(line: 439, column: 15, scope: !347)
!354 = !DILocation(line: 439, column: 7, scope: !347)
!355 = !DILocation(line: 442, column: 6, scope: !356)
!356 = distinct !DILexicalBlock(scope: !347, file: !15, line: 442, column: 6)
!357 = !DILocation(line: 442, column: 11, scope: !356)
!358 = !DILocation(line: 442, column: 6, scope: !347)
!359 = !DILocation(line: 443, column: 3, scope: !356)
!360 = !DILocation(line: 446, column: 22, scope: !361)
!361 = distinct !DILexicalBlock(scope: !347, file: !15, line: 446, column: 6)
!362 = !DILocation(line: 446, column: 6, scope: !361)
!363 = !DILocation(line: 446, column: 28, scope: !361)
!364 = !DILocation(line: 446, column: 51, scope: !365)
!365 = !DILexicalBlockFile(scope: !361, file: !15, discriminator: 1)
!366 = !DILocation(line: 446, column: 57, scope: !365)
!367 = !DILocation(line: 446, column: 32, scope: !365)
!368 = !DILocation(line: 446, column: 6, scope: !365)
!369 = !DILocalVariable(name: "dir", scope: !370, file: !15, line: 447, type: !18)
!370 = distinct !DILexicalBlock(scope: !361, file: !15, line: 446, column: 64)
!371 = !DILocation(line: 447, column: 20, scope: !370)
!372 = !DILocation(line: 449, column: 22, scope: !370)
!373 = !DILocation(line: 449, column: 28, scope: !370)
!374 = !DILocation(line: 449, column: 3, scope: !370)
!375 = !DILocation(line: 450, column: 22, scope: !370)
!376 = !DILocation(line: 450, column: 28, scope: !370)
!377 = !DILocation(line: 450, column: 3, scope: !370)
!378 = !DILocation(line: 451, column: 23, scope: !370)
!379 = !DILocation(line: 451, column: 29, scope: !370)
!380 = !DILocation(line: 451, column: 3, scope: !370)
!381 = !DILocation(line: 454, column: 14, scope: !382)
!382 = distinct !DILexicalBlock(scope: !370, file: !15, line: 454, column: 3)
!383 = !DILocation(line: 454, column: 20, scope: !382)
!384 = !DILocation(line: 454, column: 12, scope: !382)
!385 = !DILocation(line: 454, column: 8, scope: !382)
!386 = !DILocation(line: 454, column: 24, scope: !387)
!387 = !DILexicalBlockFile(scope: !388, file: !15, discriminator: 1)
!388 = distinct !DILexicalBlock(scope: !382, file: !15, line: 454, column: 3)
!389 = !DILocation(line: 454, column: 3, scope: !387)
!390 = !DILocation(line: 455, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !15, line: 455, column: 8)
!392 = distinct !DILexicalBlock(scope: !388, file: !15, line: 454, column: 44)
!393 = !DILocation(line: 455, column: 13, scope: !391)
!394 = !DILocation(line: 455, column: 19, scope: !391)
!395 = !DILocation(line: 455, column: 29, scope: !391)
!396 = !DILocation(line: 455, column: 35, scope: !391)
!397 = !DILocation(line: 455, column: 41, scope: !391)
!398 = !DILocation(line: 455, column: 26, scope: !391)
!399 = !DILocation(line: 455, column: 48, scope: !391)
!400 = !DILocation(line: 456, column: 8, scope: !391)
!401 = !DILocation(line: 456, column: 13, scope: !391)
!402 = !DILocation(line: 456, column: 19, scope: !391)
!403 = !DILocation(line: 456, column: 29, scope: !391)
!404 = !DILocation(line: 456, column: 35, scope: !391)
!405 = !DILocation(line: 456, column: 41, scope: !391)
!406 = !DILocation(line: 456, column: 26, scope: !391)
!407 = !DILocation(line: 455, column: 8, scope: !408)
!408 = !DILexicalBlockFile(scope: !392, file: !15, discriminator: 1)
!409 = !DILocation(line: 457, column: 5, scope: !391)
!410 = !DILocation(line: 458, column: 3, scope: !392)
!411 = !DILocation(line: 454, column: 35, scope: !412)
!412 = !DILexicalBlockFile(scope: !388, file: !15, discriminator: 2)
!413 = !DILocation(line: 454, column: 40, scope: !412)
!414 = !DILocation(line: 454, column: 33, scope: !412)
!415 = !DILocation(line: 454, column: 3, scope: !412)
!416 = distinct !{!416, !417}
!417 = !DILocation(line: 454, column: 3, scope: !370)
!418 = !DILocation(line: 461, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !370, file: !15, line: 461, column: 7)
!420 = !DILocation(line: 461, column: 7, scope: !370)
!421 = !DILocation(line: 462, column: 11, scope: !419)
!422 = !DILocation(line: 462, column: 17, scope: !419)
!423 = !DILocation(line: 462, column: 9, scope: !419)
!424 = !DILocation(line: 462, column: 4, scope: !419)
!425 = !DILocation(line: 464, column: 11, scope: !419)
!426 = !DILocation(line: 464, column: 17, scope: !419)
!427 = !DILocation(line: 464, column: 9, scope: !419)
!428 = !DILocation(line: 465, column: 2, scope: !370)
!429 = !DILocation(line: 466, column: 10, scope: !430)
!430 = distinct !DILexicalBlock(scope: !361, file: !15, line: 465, column: 9)
!431 = !DILocation(line: 466, column: 16, scope: !430)
!432 = !DILocation(line: 466, column: 8, scope: !430)
!433 = !DILocation(line: 470, column: 2, scope: !347)
!434 = !DILocation(line: 470, column: 9, scope: !435)
!435 = !DILexicalBlockFile(scope: !347, file: !15, discriminator: 1)
!436 = !DILocation(line: 470, column: 14, scope: !435)
!437 = !DILocation(line: 470, column: 2, scope: !435)
!438 = !DILocalVariable(name: "olddir", scope: !439, file: !15, line: 471, type: !18)
!439 = distinct !DILexicalBlock(scope: !347, file: !15, line: 470, column: 22)
!440 = !DILocation(line: 471, column: 20, scope: !439)
!441 = !DILocation(line: 471, column: 29, scope: !439)
!442 = !DILocation(line: 471, column: 35, scope: !439)
!443 = !DILocation(line: 473, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !15, line: 473, column: 7)
!445 = !DILocation(line: 473, column: 13, scope: !444)
!446 = !DILocation(line: 473, column: 21, scope: !444)
!447 = !DILocation(line: 473, column: 7, scope: !439)
!448 = !DILocation(line: 475, column: 11, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !15, line: 473, column: 27)
!450 = !DILocation(line: 475, column: 17, scope: !449)
!451 = !DILocation(line: 475, column: 25, scope: !449)
!452 = !DILocation(line: 475, column: 9, scope: !449)
!453 = !DILocation(line: 476, column: 24, scope: !449)
!454 = !DILocation(line: 476, column: 30, scope: !449)
!455 = !DILocation(line: 476, column: 38, scope: !449)
!456 = !DILocation(line: 476, column: 4, scope: !449)
!457 = !DILocation(line: 477, column: 23, scope: !449)
!458 = !DILocation(line: 477, column: 4, scope: !449)
!459 = !DILocation(line: 478, column: 3, scope: !449)
!460 = !DILocation(line: 478, column: 14, scope: !461)
!461 = !DILexicalBlockFile(scope: !462, file: !15, discriminator: 1)
!462 = distinct !DILexicalBlock(scope: !444, file: !15, line: 478, column: 14)
!463 = !DILocation(line: 478, column: 20, scope: !461)
!464 = !DILocation(line: 478, column: 28, scope: !461)
!465 = !DILocation(line: 480, column: 11, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !15, line: 478, column: 32)
!467 = !DILocation(line: 480, column: 17, scope: !466)
!468 = !DILocation(line: 480, column: 25, scope: !466)
!469 = !DILocation(line: 480, column: 29, scope: !466)
!470 = !DILocation(line: 480, column: 9, scope: !466)
!471 = !DILocation(line: 481, column: 24, scope: !466)
!472 = !DILocation(line: 481, column: 30, scope: !466)
!473 = !DILocation(line: 481, column: 38, scope: !466)
!474 = !DILocation(line: 481, column: 42, scope: !466)
!475 = !DILocation(line: 481, column: 4, scope: !466)
!476 = !DILocation(line: 482, column: 23, scope: !466)
!477 = !DILocation(line: 482, column: 4, scope: !466)
!478 = !DILocation(line: 483, column: 23, scope: !466)
!479 = !DILocation(line: 483, column: 31, scope: !466)
!480 = !DILocation(line: 483, column: 4, scope: !466)
!481 = !DILocation(line: 484, column: 3, scope: !466)
!482 = !DILocation(line: 486, column: 23, scope: !483)
!483 = distinct !DILexicalBlock(scope: !462, file: !15, line: 484, column: 10)
!484 = !DILocation(line: 486, column: 4, scope: !483)
!485 = !DILocation(line: 487, column: 23, scope: !483)
!486 = !DILocation(line: 487, column: 4, scope: !483)
!487 = !DILocation(line: 488, column: 4, scope: !483)
!488 = !DILocation(line: 491, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !439, file: !15, line: 491, column: 7)
!490 = !DILocation(line: 491, column: 13, scope: !489)
!491 = !DILocation(line: 491, column: 20, scope: !489)
!492 = !DILocation(line: 491, column: 7, scope: !439)
!493 = !DILocation(line: 492, column: 4, scope: !489)
!494 = !DILocation(line: 470, column: 2, scope: !495)
!495 = !DILexicalBlockFile(scope: !347, file: !15, discriminator: 2)
!496 = distinct !{!496, !433}
!497 = !DILocation(line: 495, column: 23, scope: !347)
!498 = !DILocation(line: 495, column: 29, scope: !347)
!499 = !DILocation(line: 495, column: 2, scope: !347)
!500 = !DILocation(line: 497, column: 9, scope: !347)
!501 = !DILocation(line: 497, column: 2, scope: !347)
!502 = !DILocation(line: 498, column: 1, scope: !347)
!503 = distinct !DISubprogram(name: "treeroot_skip_node", scope: !15, file: !15, line: 319, type: !504, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!504 = !DISubroutineType(types: !505)
!505 = !{!107, !84, !18}
!506 = !DILocalVariable(name: "tree", arg: 1, scope: !503, file: !15, line: 319, type: !84)
!507 = !DILocation(line: 319, column: 37, scope: !503)
!508 = !DILocalVariable(name: "node", arg: 2, scope: !503, file: !15, line: 319, type: !18)
!509 = !DILocation(line: 319, column: 60, scope: !503)
!510 = !DILocation(line: 321, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !503, file: !15, line: 321, column: 6)
!512 = !DILocation(line: 321, column: 12, scope: !511)
!513 = !DILocation(line: 321, column: 17, scope: !511)
!514 = !DILocation(line: 321, column: 6, scope: !503)
!515 = !DILocation(line: 322, column: 10, scope: !511)
!516 = !DILocation(line: 322, column: 16, scope: !511)
!517 = !DILocation(line: 322, column: 21, scope: !511)
!518 = !DILocation(line: 322, column: 26, scope: !511)
!519 = !DILocation(line: 322, column: 3, scope: !511)
!520 = !DILocation(line: 324, column: 2, scope: !503)
!521 = !DILocation(line: 325, column: 1, scope: !503)
!522 = distinct !DISubprogram(name: "treeroot_fill_node", scope: !15, file: !15, line: 328, type: !82, isLocal: true, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!523 = !DILocalVariable(name: "tree", arg: 1, scope: !522, file: !15, line: 328, type: !84)
!524 = !DILocation(line: 328, column: 37, scope: !522)
!525 = !DILocalVariable(name: "dir", arg: 2, scope: !522, file: !15, line: 328, type: !18)
!526 = !DILocation(line: 328, column: 60, scope: !522)
!527 = !DILocation(line: 330, column: 21, scope: !522)
!528 = !DILocation(line: 330, column: 27, scope: !522)
!529 = !DILocation(line: 330, column: 37, scope: !522)
!530 = !DILocation(line: 330, column: 42, scope: !522)
!531 = !DILocation(line: 330, column: 48, scope: !522)
!532 = !DILocation(line: 330, column: 2, scope: !522)
!533 = !DILocation(line: 331, column: 1, scope: !522)
!534 = !DILocalVariable(name: "tree", arg: 1, scope: !81, file: !15, line: 334, type: !84)
!535 = !DILocation(line: 334, column: 37, scope: !81)
!536 = !DILocalVariable(name: "dir", arg: 2, scope: !81, file: !15, line: 334, type: !18)
!537 = !DILocation(line: 334, column: 60, scope: !81)
!538 = !DILocation(line: 338, column: 6, scope: !539)
!539 = distinct !DILexicalBlock(scope: !81, file: !15, line: 338, column: 6)
!540 = !DILocation(line: 338, column: 11, scope: !539)
!541 = !DILocation(line: 338, column: 21, scope: !539)
!542 = !DILocation(line: 338, column: 6, scope: !81)
!543 = !DILocation(line: 339, column: 3, scope: !539)
!544 = !DILocation(line: 339, column: 8, scope: !539)
!545 = !DILocation(line: 339, column: 13, scope: !539)
!546 = !DILocation(line: 340, column: 11, scope: !547)
!547 = distinct !DILexicalBlock(scope: !539, file: !15, line: 340, column: 11)
!548 = !DILocation(line: 340, column: 17, scope: !547)
!549 = !DILocation(line: 340, column: 22, scope: !547)
!550 = !DILocation(line: 340, column: 11, scope: !539)
!551 = !DILocation(line: 341, column: 3, scope: !547)
!552 = !DILocation(line: 341, column: 9, scope: !547)
!553 = !DILocation(line: 341, column: 14, scope: !547)
!554 = !DILocation(line: 341, column: 19, scope: !547)
!555 = !DILocation(line: 343, column: 22, scope: !547)
!556 = !DILocation(line: 343, column: 3, scope: !547)
!557 = !DILocation(line: 344, column: 1, scope: !81)
!558 = distinct !DISubprogram(name: "treeroot_set_curdir", scope: !15, file: !15, line: 307, type: !82, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!559 = !DILocalVariable(name: "tree", arg: 1, scope: !558, file: !15, line: 307, type: !84)
!560 = !DILocation(line: 307, column: 38, scope: !558)
!561 = !DILocalVariable(name: "node", arg: 2, scope: !558, file: !15, line: 307, type: !18)
!562 = !DILocation(line: 307, column: 61, scope: !558)
!563 = !DILocation(line: 309, column: 17, scope: !558)
!564 = !DILocation(line: 309, column: 2, scope: !558)
!565 = !DILocation(line: 309, column: 8, scope: !558)
!566 = !DILocation(line: 309, column: 15, scope: !558)
!567 = !DILocation(line: 310, column: 1, scope: !558)
!568 = distinct !DISubprogram(name: "treenode_free_down", scope: !15, file: !15, line: 281, type: !569, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !18}
!571 = !DILocalVariable(name: "node", arg: 1, scope: !568, file: !15, line: 281, type: !18)
!572 = !DILocation(line: 281, column: 37, scope: !568)
!573 = !DILocalVariable(name: "i", scope: !568, file: !15, line: 283, type: !75)
!574 = !DILocation(line: 283, column: 9, scope: !568)
!575 = !DILocation(line: 285, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !568, file: !15, line: 285, column: 6)
!577 = !DILocation(line: 285, column: 13, scope: !576)
!578 = !DILocation(line: 285, column: 6, scope: !568)
!579 = !DILocation(line: 286, column: 3, scope: !576)
!580 = !DILocation(line: 288, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !568, file: !15, line: 288, column: 2)
!582 = !DILocation(line: 288, column: 7, scope: !581)
!583 = !DILocation(line: 288, column: 14, scope: !584)
!584 = !DILexicalBlockFile(scope: !585, file: !15, discriminator: 1)
!585 = distinct !DILexicalBlock(scope: !581, file: !15, line: 288, column: 2)
!586 = !DILocation(line: 288, column: 18, scope: !584)
!587 = !DILocation(line: 288, column: 24, scope: !584)
!588 = !DILocation(line: 288, column: 16, scope: !584)
!589 = !DILocation(line: 288, column: 2, scope: !584)
!590 = !DILocation(line: 289, column: 33, scope: !585)
!591 = !DILocation(line: 289, column: 22, scope: !585)
!592 = !DILocation(line: 289, column: 28, scope: !585)
!593 = !DILocation(line: 289, column: 3, scope: !585)
!594 = !DILocation(line: 288, column: 36, scope: !595)
!595 = !DILexicalBlockFile(scope: !585, file: !15, discriminator: 2)
!596 = !DILocation(line: 288, column: 2, scope: !595)
!597 = distinct !{!597, !598}
!598 = !DILocation(line: 288, column: 2, scope: !568)
!599 = !DILocation(line: 290, column: 7, scope: !568)
!600 = !DILocation(line: 290, column: 13, scope: !568)
!601 = !DILocation(line: 290, column: 2, scope: !568)
!602 = !DILocation(line: 291, column: 1, scope: !568)
!603 = !DILocation(line: 291, column: 1, scope: !604)
!604 = !DILexicalBlockFile(scope: !568, file: !15, discriminator: 1)
!605 = distinct !DISubprogram(name: "treenode_free_node", scope: !15, file: !15, line: 274, type: !569, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!606 = !DILocalVariable(name: "node", arg: 1, scope: !605, file: !15, line: 274, type: !18)
!607 = !DILocation(line: 274, column: 37, scope: !605)
!608 = !DILocation(line: 276, column: 7, scope: !605)
!609 = !DILocation(line: 276, column: 13, scope: !605)
!610 = !DILocation(line: 276, column: 2, scope: !605)
!611 = !DILocation(line: 277, column: 7, scope: !605)
!612 = !DILocation(line: 277, column: 2, scope: !605)
!613 = !DILocation(line: 278, column: 1, scope: !605)
!614 = distinct !DISubprogram(name: "treewalk_close", scope: !15, file: !15, line: 506, type: !615, isLocal: false, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !84}
!617 = !DILocalVariable(name: "tree", arg: 1, scope: !614, file: !15, line: 506, type: !84)
!618 = !DILocation(line: 506, column: 33, scope: !614)
!619 = !DILocation(line: 508, column: 7, scope: !614)
!620 = !DILocation(line: 508, column: 2, scope: !614)
!621 = !DILocation(line: 509, column: 1, scope: !614)
!622 = distinct !DISubprogram(name: "treewalk", scope: !15, file: !15, line: 519, type: !623, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!623 = !DISubroutineType(types: !624)
!624 = !{!48, !118, !3, !210}
!625 = !DILocalVariable(name: "rootdir", arg: 1, scope: !622, file: !15, line: 519, type: !118)
!626 = !DILocation(line: 519, column: 22, scope: !622)
!627 = !DILocalVariable(name: "options", arg: 2, scope: !622, file: !15, line: 519, type: !3)
!628 = !DILocation(line: 519, column: 53, scope: !622)
!629 = !DILocalVariable(name: "func", arg: 3, scope: !622, file: !15, line: 520, type: !210)
!630 = !DILocation(line: 520, column: 33, scope: !622)
!631 = !DILocalVariable(name: "tree", scope: !622, file: !15, line: 522, type: !84)
!632 = !DILocation(line: 522, column: 19, scope: !622)
!633 = !DILocalVariable(name: "node", scope: !622, file: !15, line: 523, type: !18)
!634 = !DILocation(line: 523, column: 19, scope: !622)
!635 = !DILocation(line: 525, column: 23, scope: !622)
!636 = !DILocation(line: 525, column: 32, scope: !622)
!637 = !DILocation(line: 525, column: 41, scope: !622)
!638 = !DILocation(line: 525, column: 9, scope: !622)
!639 = !DILocation(line: 525, column: 7, scope: !622)
!640 = !DILocation(line: 528, column: 28, scope: !641)
!641 = distinct !DILexicalBlock(scope: !622, file: !15, line: 528, column: 2)
!642 = !DILocation(line: 528, column: 14, scope: !641)
!643 = !DILocation(line: 528, column: 12, scope: !641)
!644 = !DILocation(line: 528, column: 7, scope: !641)
!645 = !DILocation(line: 528, column: 35, scope: !646)
!646 = !DILexicalBlockFile(scope: !647, file: !15, discriminator: 1)
!647 = distinct !DILexicalBlock(scope: !641, file: !15, line: 528, column: 2)
!648 = !DILocation(line: 528, column: 2, scope: !646)
!649 = !DILocation(line: 529, column: 23, scope: !647)
!650 = !DILocation(line: 529, column: 29, scope: !647)
!651 = !DILocation(line: 529, column: 3, scope: !647)
!652 = !DILocation(line: 528, column: 62, scope: !653)
!653 = !DILexicalBlockFile(scope: !647, file: !15, discriminator: 2)
!654 = !DILocation(line: 528, column: 48, scope: !653)
!655 = !DILocation(line: 528, column: 46, scope: !653)
!656 = !DILocation(line: 528, column: 2, scope: !653)
!657 = distinct !{!657, !658}
!658 = !DILocation(line: 528, column: 2, scope: !622)
!659 = !DILocation(line: 531, column: 17, scope: !622)
!660 = !DILocation(line: 531, column: 2, scope: !622)
!661 = !DILocation(line: 533, column: 2, scope: !622)
!662 = distinct !DISubprogram(name: "treeroot_visit_node", scope: !15, file: !15, line: 347, type: !82, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!663 = !DILocalVariable(name: "tree", arg: 1, scope: !662, file: !15, line: 347, type: !84)
!664 = !DILocation(line: 347, column: 38, scope: !662)
!665 = !DILocalVariable(name: "node", arg: 2, scope: !662, file: !15, line: 347, type: !18)
!666 = !DILocation(line: 347, column: 61, scope: !662)
!667 = !DILocation(line: 349, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !15, line: 349, column: 6)
!669 = !DILocation(line: 349, column: 12, scope: !668)
!670 = !DILocation(line: 349, column: 17, scope: !668)
!671 = !DILocation(line: 349, column: 23, scope: !668)
!672 = !DILocation(line: 349, column: 6, scope: !662)
!673 = !DILocation(line: 350, column: 3, scope: !668)
!674 = !DILocation(line: 352, column: 26, scope: !675)
!675 = distinct !DILexicalBlock(scope: !662, file: !15, line: 352, column: 6)
!676 = !DILocation(line: 352, column: 32, scope: !675)
!677 = !DILocation(line: 352, column: 7, scope: !675)
!678 = !DILocation(line: 352, column: 6, scope: !662)
!679 = !DILocation(line: 353, column: 3, scope: !675)
!680 = !DILocation(line: 353, column: 9, scope: !675)
!681 = !DILocation(line: 353, column: 14, scope: !675)
!682 = !DILocation(line: 353, column: 20, scope: !675)
!683 = !DILocation(line: 354, column: 1, scope: !662)
!684 = distinct !DISubprogram(name: "treenode_alloc", scope: !15, file: !15, line: 59, type: !685, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!685 = !DISubroutineType(types: !686)
!686 = !{!18}
!687 = !DILocation(line: 61, column: 9, scope: !684)
!688 = !DILocation(line: 61, column: 2, scope: !684)
!689 = distinct !DISubprogram(name: "treenode_fill_down", scope: !15, file: !15, line: 234, type: !690, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !18, !18, !3}
!692 = !DILocalVariable(name: "root", arg: 1, scope: !689, file: !15, line: 234, type: !18)
!693 = !DILocation(line: 234, column: 37, scope: !689)
!694 = !DILocalVariable(name: "dir", arg: 2, scope: !689, file: !15, line: 234, type: !18)
!695 = !DILocation(line: 234, column: 60, scope: !689)
!696 = !DILocalVariable(name: "options", arg: 3, scope: !689, file: !15, line: 235, type: !3)
!697 = !DILocation(line: 235, column: 42, scope: !689)
!698 = !DILocalVariable(name: "d", scope: !689, file: !15, line: 237, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !701, line: 127, baseType: !702)
!701 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !701, line: 127, flags: DIFlagFwdDecl)
!703 = !DILocation(line: 237, column: 7, scope: !689)
!704 = !DILocalVariable(name: "e", scope: !689, file: !15, line: 238, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64, align: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !707, line: 22, size: 2240, align: 64, elements: !708)
!707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!708 = !{!709, !710, !711, !713, !715}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !706, file: !707, line: 25, baseType: !37, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !706, file: !707, line: 26, baseType: !51, size: 64, align: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !706, file: !707, line: 31, baseType: !712, size: 16, align: 16, offset: 128)
!712 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !706, file: !707, line: 32, baseType: !714, size: 8, align: 8, offset: 144)
!714 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !706, file: !707, line: 33, baseType: !716, size: 2048, align: 8, offset: 152)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, align: 8, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 256)
!719 = !DILocation(line: 238, column: 17, scope: !689)
!720 = !DILocalVariable(name: "stat_func", scope: !689, file: !15, line: 239, type: !159)
!721 = !DILocation(line: 239, column: 22, scope: !689)
!722 = !DILocation(line: 241, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !689, file: !15, line: 241, column: 6)
!724 = !DILocation(line: 241, column: 14, scope: !723)
!725 = !DILocation(line: 241, column: 6, scope: !689)
!726 = !DILocation(line: 242, column: 13, scope: !723)
!727 = !DILocation(line: 242, column: 3, scope: !723)
!728 = !DILocation(line: 244, column: 13, scope: !723)
!729 = !DILocation(line: 246, column: 14, scope: !689)
!730 = !DILocation(line: 246, column: 19, scope: !689)
!731 = !DILocation(line: 246, column: 6, scope: !689)
!732 = !DILocation(line: 246, column: 4, scope: !689)
!733 = !DILocation(line: 247, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !689, file: !15, line: 247, column: 6)
!735 = !DILocation(line: 247, column: 6, scope: !689)
!736 = !DILocation(line: 248, column: 10, scope: !734)
!737 = !DILocation(line: 248, column: 43, scope: !734)
!738 = !DILocation(line: 248, column: 48, scope: !734)
!739 = !DILocation(line: 248, column: 3, scope: !740)
!740 = !DILexicalBlockFile(scope: !734, file: !15, discriminator: 1)
!741 = !DILocation(line: 248, column: 3, scope: !734)
!742 = !DILocation(line: 250, column: 2, scope: !689)
!743 = !DILocation(line: 250, column: 22, scope: !744)
!744 = !DILexicalBlockFile(scope: !689, file: !15, discriminator: 1)
!745 = !DILocation(line: 250, column: 14, scope: !744)
!746 = !DILocation(line: 250, column: 12, scope: !744)
!747 = !DILocation(line: 250, column: 26, scope: !744)
!748 = !DILocation(line: 250, column: 2, scope: !744)
!749 = !DILocalVariable(name: "node", scope: !750, file: !15, line: 251, type: !18)
!750 = distinct !DILexicalBlock(scope: !689, file: !15, line: 250, column: 34)
!751 = !DILocation(line: 251, column: 20, scope: !750)
!752 = !DILocation(line: 253, column: 14, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !15, line: 253, column: 7)
!754 = !DILocation(line: 253, column: 17, scope: !753)
!755 = !DILocation(line: 253, column: 7, scope: !753)
!756 = !DILocation(line: 253, column: 30, scope: !753)
!757 = !DILocation(line: 253, column: 35, scope: !753)
!758 = !DILocation(line: 254, column: 14, scope: !753)
!759 = !DILocation(line: 254, column: 17, scope: !753)
!760 = !DILocation(line: 254, column: 7, scope: !753)
!761 = !DILocation(line: 254, column: 31, scope: !753)
!762 = !DILocation(line: 253, column: 7, scope: !763)
!763 = !DILexicalBlockFile(scope: !750, file: !15, discriminator: 1)
!764 = !DILocation(line: 255, column: 4, scope: !753)
!765 = distinct !{!765, !742}
!766 = !DILocation(line: 257, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !750, file: !15, line: 257, column: 7)
!768 = !DILocation(line: 257, column: 12, scope: !767)
!769 = !DILocation(line: 257, column: 25, scope: !767)
!770 = !DILocation(line: 257, column: 30, scope: !767)
!771 = !DILocation(line: 257, column: 22, scope: !767)
!772 = !DILocation(line: 257, column: 7, scope: !750)
!773 = !DILocation(line: 258, column: 25, scope: !767)
!774 = !DILocation(line: 258, column: 4, scope: !767)
!775 = !DILocation(line: 260, column: 28, scope: !750)
!776 = !DILocation(line: 260, column: 34, scope: !750)
!777 = !DILocation(line: 260, column: 39, scope: !750)
!778 = !DILocation(line: 260, column: 42, scope: !750)
!779 = !DILocation(line: 260, column: 10, scope: !750)
!780 = !DILocation(line: 260, column: 8, scope: !750)
!781 = !DILocation(line: 261, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !750, file: !15, line: 261, column: 7)
!783 = !DILocation(line: 261, column: 15, scope: !782)
!784 = !DILocation(line: 261, column: 7, scope: !750)
!785 = !DILocation(line: 262, column: 18, scope: !782)
!786 = !DILocation(line: 262, column: 24, scope: !782)
!787 = !DILocation(line: 262, column: 4, scope: !782)
!788 = !DILocation(line: 264, column: 26, scope: !782)
!789 = !DILocation(line: 264, column: 32, scope: !782)
!790 = !DILocation(line: 264, column: 35, scope: !782)
!791 = !DILocation(line: 264, column: 4, scope: !782)
!792 = !DILocation(line: 266, column: 31, scope: !750)
!793 = !DILocation(line: 266, column: 13, scope: !750)
!794 = !DILocation(line: 266, column: 18, scope: !750)
!795 = !DILocation(line: 266, column: 3, scope: !750)
!796 = !DILocation(line: 266, column: 8, scope: !750)
!797 = !DILocation(line: 266, column: 29, scope: !750)
!798 = !DILocation(line: 267, column: 3, scope: !750)
!799 = !DILocation(line: 267, column: 8, scope: !750)
!800 = !DILocation(line: 267, column: 17, scope: !750)
!801 = !DILocation(line: 250, column: 2, scope: !802)
!802 = !DILexicalBlockFile(scope: !689, file: !15, discriminator: 2)
!803 = !DILocation(line: 270, column: 11, scope: !689)
!804 = !DILocation(line: 270, column: 2, scope: !689)
!805 = !DILocation(line: 271, column: 1, scope: !689)
!806 = distinct !DISubprogram(name: "treenode_resize_down", scope: !15, file: !15, line: 198, type: !569, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!807 = !DILocalVariable(name: "node", arg: 1, scope: !806, file: !15, line: 198, type: !18)
!808 = !DILocation(line: 198, column: 39, scope: !806)
!809 = !DILocalVariable(name: "new_size", scope: !806, file: !15, line: 200, type: !75)
!810 = !DILocation(line: 200, column: 9, scope: !806)
!811 = !DILocation(line: 202, column: 6, scope: !812)
!812 = distinct !DILexicalBlock(scope: !806, file: !15, line: 202, column: 6)
!813 = !DILocation(line: 202, column: 12, scope: !812)
!814 = !DILocation(line: 202, column: 6, scope: !806)
!815 = !DILocation(line: 203, column: 3, scope: !812)
!816 = !DILocation(line: 203, column: 9, scope: !812)
!817 = !DILocation(line: 203, column: 19, scope: !812)
!818 = !DILocation(line: 204, column: 11, scope: !819)
!819 = distinct !DILexicalBlock(scope: !812, file: !15, line: 204, column: 11)
!820 = !DILocation(line: 204, column: 17, scope: !819)
!821 = !DILocation(line: 204, column: 23, scope: !819)
!822 = !DILocation(line: 204, column: 32, scope: !819)
!823 = !DILocation(line: 204, column: 11, scope: !812)
!824 = !DILocation(line: 205, column: 21, scope: !819)
!825 = !DILocation(line: 205, column: 27, scope: !819)
!826 = !DILocation(line: 205, column: 33, scope: !819)
!827 = !DILocation(line: 205, column: 42, scope: !819)
!828 = !DILocation(line: 205, column: 3, scope: !819)
!829 = !DILocation(line: 205, column: 9, scope: !819)
!830 = !DILocation(line: 205, column: 19, scope: !819)
!831 = !DILocation(line: 207, column: 3, scope: !819)
!832 = !DILocation(line: 207, column: 9, scope: !819)
!833 = !DILocation(line: 207, column: 19, scope: !819)
!834 = !DILocation(line: 209, column: 13, scope: !806)
!835 = !DILocation(line: 209, column: 19, scope: !806)
!836 = !DILocation(line: 209, column: 29, scope: !806)
!837 = !DILocation(line: 209, column: 11, scope: !806)
!838 = !DILocation(line: 210, column: 25, scope: !806)
!839 = !DILocation(line: 210, column: 31, scope: !806)
!840 = !DILocation(line: 210, column: 37, scope: !806)
!841 = !DILocation(line: 210, column: 15, scope: !806)
!842 = !DILocation(line: 210, column: 2, scope: !806)
!843 = !DILocation(line: 210, column: 8, scope: !806)
!844 = !DILocation(line: 210, column: 13, scope: !806)
!845 = !DILocation(line: 211, column: 1, scope: !806)
!846 = distinct !DISubprogram(name: "treenode_node_new", scope: !15, file: !15, line: 84, type: !847, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!847 = !DISubroutineType(types: !848)
!848 = !{!18, !18, !18, !118}
!849 = !DILocalVariable(name: "root", arg: 1, scope: !846, file: !15, line: 84, type: !18)
!850 = !DILocation(line: 84, column: 36, scope: !846)
!851 = !DILocalVariable(name: "dir", arg: 2, scope: !846, file: !15, line: 84, type: !18)
!852 = !DILocation(line: 84, column: 59, scope: !846)
!853 = !DILocalVariable(name: "name", arg: 3, scope: !846, file: !15, line: 84, type: !118)
!854 = !DILocation(line: 84, column: 76, scope: !846)
!855 = !DILocalVariable(name: "node", scope: !846, file: !15, line: 86, type: !18)
!856 = !DILocation(line: 86, column: 19, scope: !846)
!857 = !DILocation(line: 88, column: 9, scope: !846)
!858 = !DILocation(line: 88, column: 7, scope: !846)
!859 = !DILocation(line: 89, column: 13, scope: !846)
!860 = !DILocation(line: 89, column: 2, scope: !846)
!861 = !DILocation(line: 89, column: 8, scope: !846)
!862 = !DILocation(line: 89, column: 11, scope: !846)
!863 = !DILocation(line: 91, column: 36, scope: !846)
!864 = !DILocation(line: 91, column: 42, scope: !846)
!865 = !DILocation(line: 91, column: 46, scope: !846)
!866 = !DILocation(line: 91, column: 56, scope: !846)
!867 = !DILocation(line: 91, column: 19, scope: !846)
!868 = !DILocation(line: 91, column: 2, scope: !846)
!869 = !DILocation(line: 91, column: 8, scope: !846)
!870 = !DILocation(line: 91, column: 17, scope: !846)
!871 = !DILocation(line: 92, column: 30, scope: !846)
!872 = !DILocation(line: 92, column: 36, scope: !846)
!873 = !DILocation(line: 92, column: 23, scope: !846)
!874 = !DILocation(line: 92, column: 2, scope: !846)
!875 = !DILocation(line: 92, column: 8, scope: !846)
!876 = !DILocation(line: 92, column: 21, scope: !846)
!877 = !DILocation(line: 93, column: 19, scope: !846)
!878 = !DILocation(line: 93, column: 25, scope: !846)
!879 = !DILocation(line: 93, column: 36, scope: !846)
!880 = !DILocation(line: 93, column: 42, scope: !846)
!881 = !DILocation(line: 93, column: 34, scope: !846)
!882 = !DILocation(line: 93, column: 55, scope: !846)
!883 = !DILocation(line: 93, column: 2, scope: !846)
!884 = !DILocation(line: 93, column: 8, scope: !846)
!885 = !DILocation(line: 93, column: 17, scope: !846)
!886 = !DILocation(line: 94, column: 15, scope: !846)
!887 = !DILocation(line: 94, column: 21, scope: !846)
!888 = !DILocation(line: 94, column: 32, scope: !846)
!889 = !DILocation(line: 94, column: 38, scope: !846)
!890 = !DILocation(line: 94, column: 42, scope: !846)
!891 = !DILocation(line: 94, column: 30, scope: !846)
!892 = !DILocation(line: 94, column: 55, scope: !846)
!893 = !DILocation(line: 94, column: 2, scope: !846)
!894 = !DILocation(line: 94, column: 8, scope: !846)
!895 = !DILocation(line: 94, column: 13, scope: !846)
!896 = !DILocation(line: 96, column: 9, scope: !846)
!897 = !DILocation(line: 96, column: 2, scope: !846)
!898 = distinct !DISubprogram(name: "treenode_stat_shallow", scope: !15, file: !15, line: 142, type: !899, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !18, !705, !159}
!901 = !DILocalVariable(name: "node", arg: 1, scope: !898, file: !15, line: 142, type: !18)
!902 = !DILocation(line: 142, column: 40, scope: !898)
!903 = !DILocalVariable(name: "e", arg: 2, scope: !898, file: !15, line: 142, type: !705)
!904 = !DILocation(line: 142, column: 61, scope: !898)
!905 = !DILocalVariable(name: "stat_func", arg: 3, scope: !898, file: !15, line: 143, type: !159)
!906 = !DILocation(line: 143, column: 43, scope: !898)
!907 = !DILocalVariable(name: "mode", scope: !898, file: !15, line: 145, type: !72)
!908 = !DILocation(line: 145, column: 9, scope: !898)
!909 = !DILocation(line: 147, column: 29, scope: !898)
!910 = !DILocation(line: 147, column: 9, scope: !898)
!911 = !DILocation(line: 147, column: 7, scope: !898)
!912 = !DILocation(line: 148, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !898, file: !15, line: 148, column: 6)
!914 = !DILocation(line: 148, column: 11, scope: !913)
!915 = !DILocation(line: 148, column: 16, scope: !913)
!916 = !DILocation(line: 148, column: 18, scope: !917)
!917 = !DILexicalBlockFile(scope: !913, file: !15, discriminator: 1)
!918 = !DILocation(line: 148, column: 21, scope: !917)
!919 = !DILocation(line: 148, column: 32, scope: !917)
!920 = !DILocation(line: 148, column: 35, scope: !921)
!921 = !DILexicalBlockFile(scope: !913, file: !15, discriminator: 2)
!922 = !DILocation(line: 148, column: 38, scope: !921)
!923 = !DILocation(line: 148, column: 49, scope: !921)
!924 = !DILocation(line: 148, column: 6, scope: !921)
!925 = !DILocation(line: 149, column: 17, scope: !913)
!926 = !DILocation(line: 149, column: 23, scope: !913)
!927 = !DILocation(line: 149, column: 3, scope: !913)
!928 = !DILocation(line: 151, column: 17, scope: !913)
!929 = !DILocation(line: 151, column: 3, scope: !913)
!930 = !DILocation(line: 151, column: 9, scope: !913)
!931 = !DILocation(line: 151, column: 14, scope: !913)
!932 = !DILocation(line: 152, column: 1, scope: !898)
!933 = distinct !DISubprogram(name: "dirent_to_mode_type", scope: !15, file: !15, line: 114, type: !934, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!934 = !DISubroutineType(types: !935)
!935 = !{!72, !705}
!936 = !DILocalVariable(name: "e", arg: 1, scope: !933, file: !15, line: 114, type: !705)
!937 = !DILocation(line: 114, column: 36, scope: !933)
!938 = !DILocation(line: 117, column: 10, scope: !933)
!939 = !DILocation(line: 117, column: 13, scope: !933)
!940 = !DILocation(line: 117, column: 2, scope: !933)
!941 = !DILocation(line: 119, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !933, file: !15, line: 117, column: 21)
!943 = !DILocation(line: 121, column: 3, scope: !942)
!944 = !DILocation(line: 123, column: 3, scope: !942)
!945 = !DILocation(line: 125, column: 3, scope: !942)
!946 = !DILocation(line: 127, column: 3, scope: !942)
!947 = !DILocation(line: 129, column: 3, scope: !942)
!948 = !DILocation(line: 131, column: 3, scope: !942)
!949 = !DILocation(line: 131, column: 3, scope: !950)
!950 = !DILexicalBlockFile(scope: !942, file: !15, discriminator: 1)
!951 = !DILocation(line: 134, column: 3, scope: !942)
!952 = !DILocation(line: 139, column: 1, scope: !933)
!953 = distinct !DISubprogram(name: "treenode_sort_down", scope: !15, file: !15, line: 221, type: !569, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!954 = !DILocalVariable(name: "dir", arg: 1, scope: !953, file: !15, line: 221, type: !18)
!955 = !DILocation(line: 221, column: 37, scope: !953)
!956 = !DILocalVariable(name: "i", scope: !953, file: !15, line: 223, type: !75)
!957 = !DILocation(line: 223, column: 9, scope: !953)
!958 = !DILocation(line: 225, column: 8, scope: !953)
!959 = !DILocation(line: 225, column: 13, scope: !953)
!960 = !DILocation(line: 225, column: 19, scope: !953)
!961 = !DILocation(line: 225, column: 24, scope: !953)
!962 = !DILocation(line: 225, column: 2, scope: !953)
!963 = !DILocation(line: 228, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !15, line: 228, column: 2)
!965 = !DILocation(line: 228, column: 7, scope: !964)
!966 = !DILocation(line: 228, column: 14, scope: !967)
!967 = !DILexicalBlockFile(scope: !968, file: !15, discriminator: 1)
!968 = distinct !DILexicalBlock(scope: !964, file: !15, line: 228, column: 2)
!969 = !DILocation(line: 228, column: 18, scope: !967)
!970 = !DILocation(line: 228, column: 23, scope: !967)
!971 = !DILocation(line: 228, column: 33, scope: !967)
!972 = !DILocation(line: 228, column: 16, scope: !967)
!973 = !DILocation(line: 228, column: 2, scope: !967)
!974 = !DILocation(line: 229, column: 34, scope: !968)
!975 = !DILocation(line: 229, column: 36, scope: !968)
!976 = !DILocation(line: 229, column: 24, scope: !968)
!977 = !DILocation(line: 229, column: 29, scope: !968)
!978 = !DILocation(line: 229, column: 13, scope: !968)
!979 = !DILocation(line: 229, column: 3, scope: !968)
!980 = !DILocation(line: 229, column: 8, scope: !968)
!981 = !DILocation(line: 229, column: 17, scope: !968)
!982 = !DILocation(line: 229, column: 22, scope: !968)
!983 = !DILocation(line: 228, column: 39, scope: !984)
!984 = !DILexicalBlockFile(scope: !968, file: !15, discriminator: 2)
!985 = !DILocation(line: 228, column: 2, scope: !984)
!986 = distinct !{!986, !987}
!987 = !DILocation(line: 228, column: 2, scope: !953)
!988 = !DILocation(line: 230, column: 12, scope: !953)
!989 = !DILocation(line: 230, column: 2, scope: !953)
!990 = !DILocation(line: 230, column: 7, scope: !953)
!991 = !DILocation(line: 230, column: 16, scope: !953)
!992 = !DILocation(line: 230, column: 21, scope: !953)
!993 = !DILocation(line: 231, column: 1, scope: !953)
!994 = distinct !DISubprogram(name: "treenode_cmp", scope: !15, file: !15, line: 214, type: !995, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !108)
!995 = !DISubroutineType(types: !996)
!996 = !{!48, !997, !997}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64, align: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!999 = !DILocalVariable(name: "a", arg: 1, scope: !994, file: !15, line: 214, type: !997)
!1000 = !DILocation(line: 214, column: 26, scope: !994)
!1001 = !DILocalVariable(name: "b", arg: 2, scope: !994, file: !15, line: 214, type: !997)
!1002 = !DILocation(line: 214, column: 41, scope: !994)
!1003 = !DILocation(line: 216, column: 44, scope: !994)
!1004 = !DILocation(line: 216, column: 18, scope: !994)
!1005 = !DILocation(line: 216, column: 17, scope: !994)
!1006 = !DILocation(line: 216, column: 48, scope: !994)
!1007 = !DILocation(line: 217, column: 44, scope: !994)
!1008 = !DILocation(line: 217, column: 18, scope: !994)
!1009 = !DILocation(line: 217, column: 17, scope: !994)
!1010 = !DILocation(line: 217, column: 48, scope: !994)
!1011 = !DILocation(line: 216, column: 9, scope: !994)
!1012 = !DILocation(line: 216, column: 2, scope: !994)
