; ModuleID = './[inter]lib--dpkg--tarfn.o.i'
source_filename = "./[inter]lib--dpkg--tarfn.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tar_entry = type { i32, i32, i8*, i8*, i64, i64, i64, %struct.file_stat }
%struct.file_stat = type { i32, i32, i32, i8*, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.tar_archive = type { %struct.dpkg_error, i32, %struct.tar_operations*, i8* }
%struct.dpkg_error = type { i32, i32, i8* }
%struct.tar_operations = type { i32 (%struct.tar_archive*, i8*, i32)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)* }
%struct.tar_symlink_entry = type { %struct.tar_symlink_entry*, %struct.tar_entry }
%struct.tar_header = type { [100 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8], [12 x i8], [8 x i8], i8, [100 x i8], [8 x i8], [32 x i8], [32 x i8], [8 x i8], [8 x i8], [155 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid tar header with empty name field\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unsupported GNU tar header type '%c'\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"unsupported Solaris tar header type '%c'\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"unsupported PAX tar header type '%c'\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unknown tar header type '%c'\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"partially read tar header\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ustar  \00\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ustar\0000\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"invalid tar header size field\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"invalid tar header mtime field\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"invalid tar header uid field\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"invalid tar header gid field\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"invalid tar header checksum field\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid tar header checksum\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%.*s/%.*s\00", align 1

; Function Attrs: nounwind uwtable
define i64 @tar_atoul(i8*, i64, i64) #0 !dbg !102 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !110, metadata !111), !dbg !112
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !113, metadata !111), !dbg !114
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !115, metadata !111), !dbg !116
  call void @llvm.dbg.declare(metadata i64* %8, metadata !117, metadata !111), !dbg !118
  %9 = load i8*, i8** %5, align 8, !dbg !119
  %10 = load i64, i64* %6, align 8, !dbg !120
  %11 = call i64 @tar_atol(i8* %9, i64 %10, i64 0, i64 -1), !dbg !121
  store i64 %11, i64* %8, align 8, !dbg !118
  %12 = load i64, i64* %8, align 8, !dbg !122
  %13 = load i64, i64* %7, align 8, !dbg !124
  %14 = icmp ugt i64 %12, %13, !dbg !125
  br i1 %14, label %15, label %17, !dbg !126

; <label>:15:                                     ; preds = %3
  %16 = call i64 @tar_ret_errno(i32 34, i64 -1), !dbg !127
  store i64 %16, i64* %4, align 8, !dbg !128
  br label %19, !dbg !128

; <label>:17:                                     ; preds = %3
  %18 = load i64, i64* %8, align 8, !dbg !129
  store i64 %18, i64* %4, align 8, !dbg !130
  br label %19, !dbg !130

; <label>:19:                                     ; preds = %17, %15
  %20 = load i64, i64* %4, align 8, !dbg !131
  ret i64 %20, !dbg !131
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i64 @tar_atol(i8*, i64, i64, i64) #0 !dbg !132 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !136, metadata !111), !dbg !137
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !138, metadata !111), !dbg !139
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !140, metadata !111), !dbg !141
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !142, metadata !111), !dbg !143
  call void @llvm.dbg.declare(metadata i8** %10, metadata !144, metadata !111), !dbg !145
  %11 = load i8*, i8** %6, align 8, !dbg !146
  store i8* %11, i8** %10, align 8, !dbg !145
  %12 = load i8*, i8** %10, align 8, !dbg !147
  %13 = load i8, i8* %12, align 1, !dbg !149
  %14 = zext i8 %13 to i32, !dbg !149
  %15 = icmp eq i32 %14, 255, !dbg !150
  br i1 %15, label %21, label %16, !dbg !151

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %10, align 8, !dbg !152
  %18 = load i8, i8* %17, align 1, !dbg !154
  %19 = zext i8 %18 to i32, !dbg !154
  %20 = icmp eq i32 %19, 128, !dbg !155
  br i1 %20, label %21, label %27, !dbg !156

; <label>:21:                                     ; preds = %16, %4
  %22 = load i8*, i8** %6, align 8, !dbg !157
  %23 = load i64, i64* %7, align 8, !dbg !158
  %24 = load i64, i64* %8, align 8, !dbg !159
  %25 = load i64, i64* %9, align 8, !dbg !160
  %26 = call i64 @tar_atol256(i8* %22, i64 %23, i64 %24, i64 %25), !dbg !161
  store i64 %26, i64* %5, align 8, !dbg !162
  br label %31, !dbg !162

; <label>:27:                                     ; preds = %16
  %28 = load i8*, i8** %6, align 8, !dbg !163
  %29 = load i64, i64* %7, align 8, !dbg !164
  %30 = call i64 @tar_atol8(i8* %28, i64 %29), !dbg !165
  store i64 %30, i64* %5, align 8, !dbg !166
  br label %31, !dbg !166

; <label>:31:                                     ; preds = %27, %21
  %32 = load i64, i64* %5, align 8, !dbg !167
  ret i64 %32, !dbg !167
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @tar_ret_errno(i32, i64) #2 !dbg !168 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !171, metadata !111), !dbg !172
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !173, metadata !111), !dbg !174
  %5 = load i32, i32* %3, align 4, !dbg !175
  %6 = call i32* @__errno_location() #1, !dbg !176
  store i32 %5, i32* %6, align 4, !dbg !177
  %7 = load i64, i64* %4, align 8, !dbg !178
  ret i64 %7, !dbg !179
}

; Function Attrs: nounwind uwtable
define i64 @tar_atosl(i8*, i64, i64, i64) #0 !dbg !180 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !183, metadata !111), !dbg !184
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !185, metadata !111), !dbg !186
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !187, metadata !111), !dbg !188
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !189, metadata !111), !dbg !190
  call void @llvm.dbg.declare(metadata i64* %10, metadata !191, metadata !111), !dbg !192
  %11 = load i8*, i8** %6, align 8, !dbg !193
  %12 = load i64, i64* %7, align 8, !dbg !194
  %13 = call i64 @tar_atol(i8* %11, i64 %12, i64 -9223372036854775808, i64 9223372036854775807), !dbg !195
  store i64 %13, i64* %10, align 8, !dbg !192
  %14 = load i64, i64* %10, align 8, !dbg !196
  %15 = load i64, i64* %8, align 8, !dbg !198
  %16 = icmp slt i64 %14, %15, !dbg !199
  br i1 %16, label %17, label %19, !dbg !200

; <label>:17:                                     ; preds = %4
  %18 = call i64 @tar_ret_errno(i32 34, i64 -9223372036854775808), !dbg !201
  store i64 %18, i64* %5, align 8, !dbg !202
  br label %27, !dbg !202

; <label>:19:                                     ; preds = %4
  %20 = load i64, i64* %10, align 8, !dbg !203
  %21 = load i64, i64* %9, align 8, !dbg !205
  %22 = icmp sgt i64 %20, %21, !dbg !206
  br i1 %22, label %23, label %25, !dbg !207

; <label>:23:                                     ; preds = %19
  %24 = call i64 @tar_ret_errno(i32 34, i64 9223372036854775807), !dbg !208
  store i64 %24, i64* %5, align 8, !dbg !209
  br label %27, !dbg !209

; <label>:25:                                     ; preds = %19
  %26 = load i64, i64* %10, align 8, !dbg !210
  store i64 %26, i64* %5, align 8, !dbg !211
  br label %27, !dbg !211

; <label>:27:                                     ; preds = %25, %23, %17
  %28 = load i64, i64* %5, align 8, !dbg !212
  ret i64 %28, !dbg !212
}

; Function Attrs: nounwind uwtable
define void @tar_entry_update_from_system(%struct.tar_entry*) #0 !dbg !213 {
  %2 = alloca %struct.tar_entry*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.group*, align 8
  store %struct.tar_entry* %0, %struct.tar_entry** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %2, metadata !236, metadata !111), !dbg !237
  call void @llvm.dbg.declare(metadata %struct.passwd** %3, metadata !238, metadata !111), !dbg !250
  call void @llvm.dbg.declare(metadata %struct.group** %4, metadata !251, metadata !111), !dbg !261
  %5 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !262
  %6 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 7, !dbg !264
  %7 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %6, i32 0, i32 3, !dbg !265
  %8 = load i8*, i8** %7, align 8, !dbg !265
  %9 = icmp ne i8* %8, null, !dbg !262
  br i1 %9, label %10, label %26, !dbg !266

; <label>:10:                                     ; preds = %1
  %11 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !267
  %12 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %11, i32 0, i32 7, !dbg !269
  %13 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %12, i32 0, i32 3, !dbg !270
  %14 = load i8*, i8** %13, align 8, !dbg !270
  %15 = call %struct.passwd* @getpwnam(i8* %14), !dbg !271
  store %struct.passwd* %15, %struct.passwd** %3, align 8, !dbg !272
  %16 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !273
  %17 = icmp ne %struct.passwd* %16, null, !dbg !273
  br i1 %17, label %18, label %25, !dbg !275

; <label>:18:                                     ; preds = %10
  %19 = load %struct.passwd*, %struct.passwd** %3, align 8, !dbg !276
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %19, i32 0, i32 2, !dbg !277
  %21 = load i32, i32* %20, align 8, !dbg !277
  %22 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !278
  %23 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %22, i32 0, i32 7, !dbg !279
  %24 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %23, i32 0, i32 0, !dbg !280
  store i32 %21, i32* %24, align 8, !dbg !281
  br label %25, !dbg !278

; <label>:25:                                     ; preds = %18, %10
  br label %26, !dbg !282

; <label>:26:                                     ; preds = %25, %1
  %27 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !283
  %28 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %27, i32 0, i32 7, !dbg !285
  %29 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %28, i32 0, i32 4, !dbg !286
  %30 = load i8*, i8** %29, align 8, !dbg !286
  %31 = icmp ne i8* %30, null, !dbg !283
  br i1 %31, label %32, label %48, !dbg !287

; <label>:32:                                     ; preds = %26
  %33 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !288
  %34 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %33, i32 0, i32 7, !dbg !290
  %35 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %34, i32 0, i32 4, !dbg !291
  %36 = load i8*, i8** %35, align 8, !dbg !291
  %37 = call %struct.group* @getgrnam(i8* %36), !dbg !292
  store %struct.group* %37, %struct.group** %4, align 8, !dbg !293
  %38 = load %struct.group*, %struct.group** %4, align 8, !dbg !294
  %39 = icmp ne %struct.group* %38, null, !dbg !294
  br i1 %39, label %40, label %47, !dbg !296

; <label>:40:                                     ; preds = %32
  %41 = load %struct.group*, %struct.group** %4, align 8, !dbg !297
  %42 = getelementptr inbounds %struct.group, %struct.group* %41, i32 0, i32 2, !dbg !298
  %43 = load i32, i32* %42, align 8, !dbg !298
  %44 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !299
  %45 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %44, i32 0, i32 7, !dbg !300
  %46 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %45, i32 0, i32 1, !dbg !301
  store i32 %43, i32* %46, align 4, !dbg !302
  br label %47, !dbg !299

; <label>:47:                                     ; preds = %40, %32
  br label %48, !dbg !303

; <label>:48:                                     ; preds = %47, %26
  ret void, !dbg !304
}

declare %struct.passwd* @getpwnam(i8*) #3

declare %struct.group* @getgrnam(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @tar_extractor(%struct.tar_archive*) #0 !dbg !305 {
  %2 = alloca %struct.tar_archive*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [512 x i8], align 16
  %5 = alloca %struct.tar_entry, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tar_symlink_entry*, align 8
  %9 = alloca %struct.tar_symlink_entry*, align 8
  %10 = alloca %struct.tar_symlink_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.tar_archive* %0, %struct.tar_archive** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_archive** %2, metadata !339, metadata !111), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %3, metadata !341, metadata !111), !dbg !342
  call void @llvm.dbg.declare(metadata [512 x i8]* %4, metadata !343, metadata !111), !dbg !347
  call void @llvm.dbg.declare(metadata %struct.tar_entry* %5, metadata !348, metadata !111), !dbg !349
  call void @llvm.dbg.declare(metadata i8** %6, metadata !350, metadata !111), !dbg !351
  call void @llvm.dbg.declare(metadata i8** %7, metadata !352, metadata !111), !dbg !353
  call void @llvm.dbg.declare(metadata %struct.tar_symlink_entry** %8, metadata !354, metadata !111), !dbg !360
  call void @llvm.dbg.declare(metadata %struct.tar_symlink_entry** %9, metadata !361, metadata !111), !dbg !362
  call void @llvm.dbg.declare(metadata %struct.tar_symlink_entry** %10, metadata !363, metadata !111), !dbg !364
  store i8* null, i8** %6, align 8, !dbg !365
  store i8* null, i8** %7, align 8, !dbg !366
  store %struct.tar_symlink_entry* null, %struct.tar_symlink_entry** %8, align 8, !dbg !367
  store %struct.tar_symlink_entry* null, %struct.tar_symlink_entry** %9, align 8, !dbg !368
  %12 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !369
  store i8* null, i8** %12, align 8, !dbg !370
  %13 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 3, !dbg !371
  store i8* null, i8** %13, align 8, !dbg !372
  %14 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 7, !dbg !373
  %15 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %14, i32 0, i32 3, !dbg !374
  store i8* null, i8** %15, align 8, !dbg !375
  %16 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 7, !dbg !376
  %17 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %16, i32 0, i32 4, !dbg !377
  store i8* null, i8** %17, align 8, !dbg !378
  br label %18, !dbg !379

; <label>:18:                                     ; preds = %205, %1
  %19 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !380
  %20 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %19, i32 0, i32 2, !dbg !382
  %21 = load %struct.tar_operations*, %struct.tar_operations** %20, align 8, !dbg !382
  %22 = getelementptr inbounds %struct.tar_operations, %struct.tar_operations* %21, i32 0, i32 0, !dbg !383
  %23 = load i32 (%struct.tar_archive*, i8*, i32)*, i32 (%struct.tar_archive*, i8*, i32)** %22, align 8, !dbg !383
  %24 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !384
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !385
  %26 = call i32 %23(%struct.tar_archive* %24, i8* %25, i32 512), !dbg !380
  store i32 %26, i32* %3, align 4, !dbg !386
  %27 = icmp eq i32 %26, 512, !dbg !387
  br i1 %27, label %28, label %206, !dbg !388

; <label>:28:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %11, metadata !389, metadata !111), !dbg !391
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i32 0, i32 0, !dbg !392
  %30 = bitcast i8* %29 to %struct.tar_header*, !dbg !394
  %31 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !395
  %32 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %31, i32 0, i32 0, !dbg !396
  %33 = call i32 @tar_header_decode(%struct.tar_header* %30, %struct.tar_entry* %5, %struct.dpkg_error* %32), !dbg !397
  %34 = icmp slt i32 %33, 0, !dbg !398
  br i1 %34, label %35, label %45, !dbg !399

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !400
  %37 = load i8*, i8** %36, align 8, !dbg !400
  %38 = getelementptr inbounds i8, i8* %37, i64 0, !dbg !403
  %39 = load i8, i8* %38, align 1, !dbg !403
  %40 = sext i8 %39 to i32, !dbg !403
  %41 = icmp eq i32 %40, 0, !dbg !404
  br i1 %41, label %42, label %43, !dbg !405

; <label>:42:                                     ; preds = %35
  store i32 0, i32* %3, align 4, !dbg !406
  br label %44, !dbg !408

; <label>:43:                                     ; preds = %35
  store i32 -1, i32* %3, align 4, !dbg !409
  br label %44

; <label>:44:                                     ; preds = %43, %42
  call void @tar_entry_destroy(%struct.tar_entry* %5), !dbg !411
  br label %206, !dbg !412

; <label>:45:                                     ; preds = %28
  %46 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 1, !dbg !413
  %47 = load i32, i32* %46, align 4, !dbg !413
  %48 = icmp ne i32 %47, 75, !dbg !415
  br i1 %48, label %49, label %66, !dbg !416

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 1, !dbg !417
  %51 = load i32, i32* %50, align 4, !dbg !417
  %52 = icmp ne i32 %51, 76, !dbg !418
  br i1 %52, label %53, label %66, !dbg !419

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %6, align 8, !dbg !421
  %55 = icmp ne i8* %54, null, !dbg !421
  br i1 %55, label %56, label %59, !dbg !424

; <label>:56:                                     ; preds = %53
  %57 = load i8*, i8** %6, align 8, !dbg !425
  %58 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !426
  store i8* %57, i8** %58, align 8, !dbg !427
  br label %59, !dbg !428

; <label>:59:                                     ; preds = %56, %53
  %60 = load i8*, i8** %7, align 8, !dbg !429
  %61 = icmp ne i8* %60, null, !dbg !429
  br i1 %61, label %62, label %65, !dbg !431

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %7, align 8, !dbg !432
  %64 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 3, !dbg !433
  store i8* %63, i8** %64, align 8, !dbg !434
  br label %65, !dbg !435

; <label>:65:                                     ; preds = %62, %59
  store i8* null, i8** %7, align 8, !dbg !436
  store i8* null, i8** %6, align 8, !dbg !437
  br label %66, !dbg !438

; <label>:66:                                     ; preds = %65, %49, %45
  %67 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !439
  %68 = load i8*, i8** %67, align 8, !dbg !439
  %69 = getelementptr inbounds i8, i8* %68, i64 0, !dbg !441
  %70 = load i8, i8* %69, align 1, !dbg !441
  %71 = sext i8 %70 to i32, !dbg !441
  %72 = icmp eq i32 %71, 0, !dbg !442
  br i1 %72, label %73, label %79, !dbg !443

; <label>:73:                                     ; preds = %66
  %74 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !444
  %75 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %74, i32 0, i32 0, !dbg !446
  %76 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !447
  %77 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %75, i8* %76), !dbg !448
  store i32 %77, i32* %3, align 4, !dbg !449
  %78 = call i32* @__errno_location() #1, !dbg !450
  store i32 0, i32* %78, align 4, !dbg !451
  call void @tar_entry_destroy(%struct.tar_entry* %5), !dbg !452
  br label %206, !dbg !453

; <label>:79:                                     ; preds = %66
  %80 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !454
  %81 = load i8*, i8** %80, align 8, !dbg !454
  %82 = call i64 @strlen(i8* %81) #9, !dbg !455
  %83 = trunc i64 %82 to i32, !dbg !455
  store i32 %83, i32* %11, align 4, !dbg !456
  %84 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 1, !dbg !457
  %85 = load i32, i32* %84, align 4, !dbg !457
  switch i32 %85, label %193 [
    i32 48, label %86
    i32 53, label %105
    i32 49, label %130
    i32 50, label %138
    i32 51, label %155
    i32 52, label %155
    i32 54, label %155
    i32 75, label %163
    i32 76, label %166
    i32 86, label %169
    i32 77, label %169
    i32 83, label %169
    i32 68, label %169
    i32 88, label %177
    i32 65, label %177
    i32 103, label %185
    i32 120, label %185
  ], !dbg !458

; <label>:86:                                     ; preds = %79
  %87 = load i32, i32* %11, align 4, !dbg !459
  %88 = sub nsw i32 %87, 1, !dbg !462
  %89 = sext i32 %88 to i64, !dbg !463
  %90 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !464
  %91 = load i8*, i8** %90, align 8, !dbg !464
  %92 = getelementptr inbounds i8, i8* %91, i64 %89, !dbg !463
  %93 = load i8, i8* %92, align 1, !dbg !463
  %94 = sext i8 %93 to i32, !dbg !463
  %95 = icmp ne i32 %94, 47, !dbg !465
  br i1 %95, label %96, label %104, !dbg !466

; <label>:96:                                     ; preds = %86
  %97 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !467
  %98 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %97, i32 0, i32 2, !dbg !469
  %99 = load %struct.tar_operations*, %struct.tar_operations** %98, align 8, !dbg !469
  %100 = getelementptr inbounds %struct.tar_operations, %struct.tar_operations* %99, i32 0, i32 1, !dbg !470
  %101 = load i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)** %100, align 8, !dbg !470
  %102 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !471
  %103 = call i32 %101(%struct.tar_archive* %102, %struct.tar_entry* %5), !dbg !467
  store i32 %103, i32* %3, align 4, !dbg !472
  br label %201, !dbg !473

; <label>:104:                                    ; preds = %86
  br label %105, !dbg !474

; <label>:105:                                    ; preds = %79, %104
  %106 = load i32, i32* %11, align 4, !dbg !476
  %107 = sub nsw i32 %106, 1, !dbg !478
  %108 = sext i32 %107 to i64, !dbg !479
  %109 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !480
  %110 = load i8*, i8** %109, align 8, !dbg !480
  %111 = getelementptr inbounds i8, i8* %110, i64 %108, !dbg !479
  %112 = load i8, i8* %111, align 1, !dbg !479
  %113 = sext i8 %112 to i32, !dbg !479
  %114 = icmp eq i32 %113, 47, !dbg !481
  br i1 %114, label %115, label %122, !dbg !482

; <label>:115:                                    ; preds = %105
  %116 = load i32, i32* %11, align 4, !dbg !483
  %117 = sub nsw i32 %116, 1, !dbg !485
  %118 = sext i32 %117 to i64, !dbg !486
  %119 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 2, !dbg !487
  %120 = load i8*, i8** %119, align 8, !dbg !487
  %121 = getelementptr inbounds i8, i8* %120, i64 %118, !dbg !486
  store i8 0, i8* %121, align 1, !dbg !488
  br label %122, !dbg !489

; <label>:122:                                    ; preds = %115, %105
  %123 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !490
  %124 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %123, i32 0, i32 2, !dbg !491
  %125 = load %struct.tar_operations*, %struct.tar_operations** %124, align 8, !dbg !491
  %126 = getelementptr inbounds %struct.tar_operations, %struct.tar_operations* %125, i32 0, i32 4, !dbg !492
  %127 = load i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)** %126, align 8, !dbg !492
  %128 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !493
  %129 = call i32 %127(%struct.tar_archive* %128, %struct.tar_entry* %5), !dbg !490
  store i32 %129, i32* %3, align 4, !dbg !494
  br label %201, !dbg !495

; <label>:130:                                    ; preds = %79
  %131 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !496
  %132 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %131, i32 0, i32 2, !dbg !497
  %133 = load %struct.tar_operations*, %struct.tar_operations** %132, align 8, !dbg !497
  %134 = getelementptr inbounds %struct.tar_operations, %struct.tar_operations* %133, i32 0, i32 2, !dbg !498
  %135 = load i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)** %134, align 8, !dbg !498
  %136 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !499
  %137 = call i32 %135(%struct.tar_archive* %136, %struct.tar_entry* %5), !dbg !496
  store i32 %137, i32* %3, align 4, !dbg !500
  br label %201, !dbg !501

; <label>:138:                                    ; preds = %79
  %139 = call i8* @m_malloc(i64 88), !dbg !502
  %140 = bitcast i8* %139 to %struct.tar_symlink_entry*, !dbg !502
  store %struct.tar_symlink_entry* %140, %struct.tar_symlink_entry** %10, align 8, !dbg !503
  %141 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %10, align 8, !dbg !504
  %142 = getelementptr inbounds %struct.tar_symlink_entry, %struct.tar_symlink_entry* %141, i32 0, i32 0, !dbg !505
  store %struct.tar_symlink_entry* null, %struct.tar_symlink_entry** %142, align 8, !dbg !506
  %143 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %10, align 8, !dbg !507
  %144 = getelementptr inbounds %struct.tar_symlink_entry, %struct.tar_symlink_entry* %143, i32 0, i32 1, !dbg !508
  call void @tar_entry_copy(%struct.tar_entry* %144, %struct.tar_entry* %5), !dbg !509
  %145 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %8, align 8, !dbg !510
  %146 = icmp ne %struct.tar_symlink_entry* %145, null, !dbg !510
  br i1 %146, label %147, label %151, !dbg !512

; <label>:147:                                    ; preds = %138
  %148 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %10, align 8, !dbg !513
  %149 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %9, align 8, !dbg !514
  %150 = getelementptr inbounds %struct.tar_symlink_entry, %struct.tar_symlink_entry* %149, i32 0, i32 0, !dbg !515
  store %struct.tar_symlink_entry* %148, %struct.tar_symlink_entry** %150, align 8, !dbg !516
  br label %153, !dbg !514

; <label>:151:                                    ; preds = %138
  %152 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %10, align 8, !dbg !517
  store %struct.tar_symlink_entry* %152, %struct.tar_symlink_entry** %8, align 8, !dbg !518
  br label %153

; <label>:153:                                    ; preds = %151, %147
  %154 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %10, align 8, !dbg !519
  store %struct.tar_symlink_entry* %154, %struct.tar_symlink_entry** %9, align 8, !dbg !520
  store i32 0, i32* %3, align 4, !dbg !521
  br label %201, !dbg !522

; <label>:155:                                    ; preds = %79, %79, %79
  %156 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !523
  %157 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %156, i32 0, i32 2, !dbg !524
  %158 = load %struct.tar_operations*, %struct.tar_operations** %157, align 8, !dbg !524
  %159 = getelementptr inbounds %struct.tar_operations, %struct.tar_operations* %158, i32 0, i32 5, !dbg !525
  %160 = load i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)** %159, align 8, !dbg !525
  %161 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !526
  %162 = call i32 %160(%struct.tar_archive* %161, %struct.tar_entry* %5), !dbg !523
  store i32 %162, i32* %3, align 4, !dbg !527
  br label %201, !dbg !528

; <label>:163:                                    ; preds = %79
  %164 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !529
  %165 = call i32 @tar_gnu_long(%struct.tar_archive* %164, %struct.tar_entry* %5, i8** %7), !dbg !530
  store i32 %165, i32* %3, align 4, !dbg !531
  br label %201, !dbg !532

; <label>:166:                                    ; preds = %79
  %167 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !533
  %168 = call i32 @tar_gnu_long(%struct.tar_archive* %167, %struct.tar_entry* %5, i8** %6), !dbg !534
  store i32 %168, i32* %3, align 4, !dbg !535
  br label %201, !dbg !536

; <label>:169:                                    ; preds = %79, %79, %79, %79
  %170 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !537
  %171 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %170, i32 0, i32 0, !dbg !538
  %172 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !539
  %173 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 1, !dbg !540
  %174 = load i32, i32* %173, align 4, !dbg !540
  %175 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %171, i8* %172, i32 %174), !dbg !541
  store i32 %175, i32* %3, align 4, !dbg !542
  %176 = call i32* @__errno_location() #1, !dbg !543
  store i32 0, i32* %176, align 4, !dbg !544
  br label %201, !dbg !545

; <label>:177:                                    ; preds = %79, %79
  %178 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !546
  %179 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %178, i32 0, i32 0, !dbg !547
  %180 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !548
  %181 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 1, !dbg !549
  %182 = load i32, i32* %181, align 4, !dbg !549
  %183 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %179, i8* %180, i32 %182), !dbg !550
  store i32 %183, i32* %3, align 4, !dbg !551
  %184 = call i32* @__errno_location() #1, !dbg !552
  store i32 0, i32* %184, align 4, !dbg !553
  br label %201, !dbg !554

; <label>:185:                                    ; preds = %79, %79
  %186 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !555
  %187 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %186, i32 0, i32 0, !dbg !556
  %188 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !557
  %189 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 1, !dbg !558
  %190 = load i32, i32* %189, align 4, !dbg !558
  %191 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %187, i8* %188, i32 %190), !dbg !559
  store i32 %191, i32* %3, align 4, !dbg !560
  %192 = call i32* @__errno_location() #1, !dbg !561
  store i32 0, i32* %192, align 4, !dbg !562
  br label %201, !dbg !563

; <label>:193:                                    ; preds = %79
  %194 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !564
  %195 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %194, i32 0, i32 0, !dbg !565
  %196 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !566
  %197 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %5, i32 0, i32 1, !dbg !567
  %198 = load i32, i32* %197, align 4, !dbg !567
  %199 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %195, i8* %196, i32 %198), !dbg !568
  store i32 %199, i32* %3, align 4, !dbg !569
  %200 = call i32* @__errno_location() #1, !dbg !570
  store i32 0, i32* %200, align 4, !dbg !571
  br label %201, !dbg !572

; <label>:201:                                    ; preds = %193, %185, %177, %169, %166, %163, %155, %153, %130, %122, %96
  call void @tar_entry_destroy(%struct.tar_entry* %5), !dbg !573
  %202 = load i32, i32* %3, align 4, !dbg !574
  %203 = icmp ne i32 %202, 0, !dbg !576
  br i1 %203, label %204, label %205, !dbg !577

; <label>:204:                                    ; preds = %201
  br label %206, !dbg !578

; <label>:205:                                    ; preds = %201
  br label %18, !dbg !579, !llvm.loop !581

; <label>:206:                                    ; preds = %204, %73, %44, %18
  br label %207, !dbg !582

; <label>:207:                                    ; preds = %226, %206
  %208 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %8, align 8, !dbg !583
  %209 = icmp ne %struct.tar_symlink_entry* %208, null, !dbg !584
  br i1 %209, label %210, label %232, !dbg !584

; <label>:210:                                    ; preds = %207
  %211 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %8, align 8, !dbg !585
  %212 = getelementptr inbounds %struct.tar_symlink_entry, %struct.tar_symlink_entry* %211, i32 0, i32 0, !dbg !587
  %213 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %212, align 8, !dbg !587
  store %struct.tar_symlink_entry* %213, %struct.tar_symlink_entry** %10, align 8, !dbg !588
  %214 = load i32, i32* %3, align 4, !dbg !589
  %215 = icmp eq i32 %214, 0, !dbg !591
  br i1 %215, label %216, label %226, !dbg !592

; <label>:216:                                    ; preds = %210
  %217 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !593
  %218 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %217, i32 0, i32 2, !dbg !594
  %219 = load %struct.tar_operations*, %struct.tar_operations** %218, align 8, !dbg !594
  %220 = getelementptr inbounds %struct.tar_operations, %struct.tar_operations* %219, i32 0, i32 3, !dbg !595
  %221 = load i32 (%struct.tar_archive*, %struct.tar_entry*)*, i32 (%struct.tar_archive*, %struct.tar_entry*)** %220, align 8, !dbg !595
  %222 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !596
  %223 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %8, align 8, !dbg !597
  %224 = getelementptr inbounds %struct.tar_symlink_entry, %struct.tar_symlink_entry* %223, i32 0, i32 1, !dbg !598
  %225 = call i32 %221(%struct.tar_archive* %222, %struct.tar_entry* %224), !dbg !593
  store i32 %225, i32* %3, align 4, !dbg !599
  br label %226, !dbg !600

; <label>:226:                                    ; preds = %216, %210
  %227 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %8, align 8, !dbg !601
  %228 = getelementptr inbounds %struct.tar_symlink_entry, %struct.tar_symlink_entry* %227, i32 0, i32 1, !dbg !602
  call void @tar_entry_destroy(%struct.tar_entry* %228), !dbg !603
  %229 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %8, align 8, !dbg !604
  %230 = bitcast %struct.tar_symlink_entry* %229 to i8*, !dbg !604
  call void @free(i8* %230) #8, !dbg !605
  %231 = load %struct.tar_symlink_entry*, %struct.tar_symlink_entry** %10, align 8, !dbg !606
  store %struct.tar_symlink_entry* %231, %struct.tar_symlink_entry** %8, align 8, !dbg !607
  br label %207, !dbg !608, !llvm.loop !609

; <label>:232:                                    ; preds = %207
  %233 = load i8*, i8** %6, align 8, !dbg !610
  call void @free(i8* %233) #8, !dbg !611
  %234 = load i8*, i8** %7, align 8, !dbg !612
  call void @free(i8* %234) #8, !dbg !613
  %235 = load i32, i32* %3, align 4, !dbg !614
  %236 = icmp sgt i32 %235, 0, !dbg !616
  br i1 %236, label %237, label %243, !dbg !617

; <label>:237:                                    ; preds = %232
  %238 = load %struct.tar_archive*, %struct.tar_archive** %2, align 8, !dbg !618
  %239 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %238, i32 0, i32 0, !dbg !620
  %240 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !621
  %241 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %239, i8* %240), !dbg !622
  store i32 %241, i32* %3, align 4, !dbg !623
  %242 = call i32* @__errno_location() #1, !dbg !624
  store i32 0, i32* %242, align 4, !dbg !625
  br label %243, !dbg !626

; <label>:243:                                    ; preds = %237, %232
  %244 = load i32, i32* %3, align 4, !dbg !627
  ret i32 %244, !dbg !628
}

; Function Attrs: nounwind uwtable
define internal i32 @tar_header_decode(%struct.tar_header*, %struct.tar_entry*, %struct.dpkg_error*) #0 !dbg !629 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tar_header*, align 8
  %6 = alloca %struct.tar_entry*, align 8
  %7 = alloca %struct.dpkg_error*, align 8
  %8 = alloca i64, align 8
  store %struct.tar_header* %0, %struct.tar_header** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_header** %5, metadata !633, metadata !111), !dbg !634
  store %struct.tar_entry* %1, %struct.tar_entry** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %6, metadata !635, metadata !111), !dbg !636
  store %struct.dpkg_error* %2, %struct.dpkg_error** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dpkg_error** %7, metadata !637, metadata !111), !dbg !638
  call void @llvm.dbg.declare(metadata i64* %8, metadata !639, metadata !111), !dbg !640
  %9 = call i32* @__errno_location() #1, !dbg !641
  store i32 0, i32* %9, align 4, !dbg !642
  %10 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !643
  %11 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %10, i32 0, i32 9, !dbg !645
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i32 0, i32 0, !dbg !643
  %13 = call i32 @memcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 6) #9, !dbg !646
  %14 = icmp eq i32 %13, 0, !dbg !647
  br i1 %14, label %15, label %18, !dbg !648

; <label>:15:                                     ; preds = %3
  %16 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !649
  %17 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %16, i32 0, i32 0, !dbg !650
  store i32 2, i32* %17, align 8, !dbg !651
  br label %31, !dbg !649

; <label>:18:                                     ; preds = %3
  %19 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !652
  %20 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %19, i32 0, i32 9, !dbg !654
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %20, i32 0, i32 0, !dbg !652
  %22 = call i32 @memcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i64 6) #9, !dbg !655
  %23 = icmp eq i32 %22, 0, !dbg !656
  br i1 %23, label %24, label %27, !dbg !657

; <label>:24:                                     ; preds = %18
  %25 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !658
  %26 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %25, i32 0, i32 0, !dbg !659
  store i32 3, i32* %26, align 8, !dbg !660
  br label %30, !dbg !658

; <label>:27:                                     ; preds = %18
  %28 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !661
  %29 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %28, i32 0, i32 0, !dbg !662
  store i32 1, i32* %29, align 8, !dbg !663
  br label %30

; <label>:30:                                     ; preds = %27, %24
  br label %31

; <label>:31:                                     ; preds = %30, %15
  %32 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !664
  %33 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %32, i32 0, i32 7, !dbg !665
  %34 = load i8, i8* %33, align 1, !dbg !665
  %35 = sext i8 %34 to i32, !dbg !666
  %36 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !667
  %37 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %36, i32 0, i32 1, !dbg !668
  store i32 %35, i32* %37, align 4, !dbg !669
  %38 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !670
  %39 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %38, i32 0, i32 1, !dbg !672
  %40 = load i32, i32* %39, align 4, !dbg !672
  %41 = icmp eq i32 %40, 0, !dbg !673
  br i1 %41, label %42, label %45, !dbg !674

; <label>:42:                                     ; preds = %31
  %43 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !675
  %44 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %43, i32 0, i32 1, !dbg !676
  store i32 48, i32* %44, align 4, !dbg !677
  br label %45, !dbg !675

; <label>:45:                                     ; preds = %42, %31
  %46 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !678
  %47 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %46, i32 0, i32 0, !dbg !680
  %48 = load i32, i32* %47, align 8, !dbg !680
  %49 = icmp eq i32 %48, 3, !dbg !681
  br i1 %49, label %50, label %62, !dbg !682

; <label>:50:                                     ; preds = %45
  %51 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !683
  %52 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %51, i32 0, i32 14, !dbg !685
  %53 = getelementptr inbounds [155 x i8], [155 x i8]* %52, i64 0, i64 0, !dbg !683
  %54 = load i8, i8* %53, align 1, !dbg !683
  %55 = sext i8 %54 to i32, !dbg !683
  %56 = icmp ne i32 %55, 0, !dbg !686
  br i1 %56, label %57, label %62, !dbg !687

; <label>:57:                                     ; preds = %50
  %58 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !688
  %59 = call i8* @tar_header_get_prefix_name(%struct.tar_header* %58), !dbg !689
  %60 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !690
  %61 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %60, i32 0, i32 2, !dbg !691
  store i8* %59, i8** %61, align 8, !dbg !692
  br label %69, !dbg !690

; <label>:62:                                     ; preds = %50, %45
  %63 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !693
  %64 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %63, i32 0, i32 0, !dbg !694
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %64, i32 0, i32 0, !dbg !693
  %66 = call i8* @m_strndup(i8* %65, i64 100), !dbg !695
  %67 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !696
  %68 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %67, i32 0, i32 2, !dbg !697
  store i8* %66, i8** %68, align 8, !dbg !698
  br label %69

; <label>:69:                                     ; preds = %62, %57
  %70 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !699
  %71 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %70, i32 0, i32 8, !dbg !700
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %71, i32 0, i32 0, !dbg !699
  %73 = call i8* @m_strndup(i8* %72, i64 100), !dbg !701
  %74 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !702
  %75 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %74, i32 0, i32 3, !dbg !703
  store i8* %73, i8** %75, align 8, !dbg !704
  %76 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !705
  %77 = call i32 @tar_header_get_unix_mode(%struct.tar_header* %76), !dbg !706
  %78 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !707
  %79 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %78, i32 0, i32 7, !dbg !708
  %80 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %79, i32 0, i32 2, !dbg !709
  store i32 %77, i32* %80, align 8, !dbg !710
  %81 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !711
  %82 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %81, i32 0, i32 4, !dbg !712
  %83 = getelementptr inbounds [12 x i8], [12 x i8]* %82, i32 0, i32 0, !dbg !711
  %84 = call i64 @tar_atoul(i8* %83, i64 12, i64 9223372036854775807), !dbg !713
  %85 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !714
  %86 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %85, i32 0, i32 4, !dbg !715
  store i64 %84, i64* %86, align 8, !dbg !716
  %87 = call i32* @__errno_location() #1, !dbg !717
  %88 = load i32, i32* %87, align 4, !dbg !719
  %89 = icmp ne i32 %88, 0, !dbg !720
  br i1 %89, label %90, label %94, !dbg !721

; <label>:90:                                     ; preds = %69
  %91 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !722
  %92 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !723
  %93 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %91, i8* %92), !dbg !724
  store i32 %93, i32* %4, align 4, !dbg !726
  br label %226, !dbg !726

; <label>:94:                                     ; preds = %69
  %95 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !727
  %96 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %95, i32 0, i32 5, !dbg !728
  %97 = getelementptr inbounds [12 x i8], [12 x i8]* %96, i32 0, i32 0, !dbg !727
  %98 = call i64 @tar_atosl(i8* %97, i64 12, i64 -9223372036854775808, i64 9223372036854775807), !dbg !729
  %99 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !730
  %100 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %99, i32 0, i32 5, !dbg !731
  store i64 %98, i64* %100, align 8, !dbg !732
  %101 = call i32* @__errno_location() #1, !dbg !733
  %102 = load i32, i32* %101, align 4, !dbg !735
  %103 = icmp ne i32 %102, 0, !dbg !736
  br i1 %103, label %104, label %108, !dbg !737

; <label>:104:                                    ; preds = %94
  %105 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !738
  %106 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !739
  %107 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %105, i8* %106), !dbg !740
  store i32 %107, i32* %4, align 4, !dbg !742
  br label %226, !dbg !742

; <label>:108:                                    ; preds = %94
  %109 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !743
  %110 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %109, i32 0, i32 1, !dbg !745
  %111 = load i32, i32* %110, align 4, !dbg !745
  %112 = icmp eq i32 %111, 51, !dbg !746
  br i1 %112, label %118, label %113, !dbg !747

; <label>:113:                                    ; preds = %108
  %114 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !748
  %115 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %114, i32 0, i32 1, !dbg !750
  %116 = load i32, i32* %115, align 4, !dbg !750
  %117 = icmp eq i32 %116, 52, !dbg !751
  br i1 %117, label %118, label %132, !dbg !752

; <label>:118:                                    ; preds = %113, %108
  %119 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !753
  %120 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %119, i32 0, i32 12, !dbg !754
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %120, i32 0, i32 0, !dbg !753
  %122 = call i64 @tar_atoul(i8* %121, i64 8, i64 -1), !dbg !755
  %123 = trunc i64 %122 to i32, !dbg !756
  %124 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !753
  %125 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %124, i32 0, i32 13, !dbg !754
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %125, i32 0, i32 0, !dbg !753
  %127 = call i64 @tar_atoul(i8* %126, i64 8, i64 -1), !dbg !757
  %128 = trunc i64 %127 to i32, !dbg !756
  %129 = call i64 @gnu_dev_makedev(i32 %123, i32 %128) #1, !dbg !758
  %130 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !760
  %131 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %130, i32 0, i32 6, !dbg !761
  store i64 %129, i64* %131, align 8, !dbg !762
  br label %136, !dbg !760

; <label>:132:                                    ; preds = %113
  %133 = call i64 @gnu_dev_makedev(i32 0, i32 0) #1, !dbg !763
  %134 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !764
  %135 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %134, i32 0, i32 6, !dbg !765
  store i64 %133, i64* %135, align 8, !dbg !766
  br label %136

; <label>:136:                                    ; preds = %132, %118
  %137 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !767
  %138 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %137, i32 0, i32 10, !dbg !769
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %138, i32 0, i32 0, !dbg !770
  %140 = load i8, i8* %139, align 1, !dbg !770
  %141 = icmp ne i8 %140, 0, !dbg !770
  br i1 %141, label %142, label %150, !dbg !771

; <label>:142:                                    ; preds = %136
  %143 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !772
  %144 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %143, i32 0, i32 10, !dbg !773
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* %144, i32 0, i32 0, !dbg !772
  %146 = call i8* @m_strndup(i8* %145, i64 32), !dbg !774
  %147 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !775
  %148 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %147, i32 0, i32 7, !dbg !776
  %149 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %148, i32 0, i32 3, !dbg !777
  store i8* %146, i8** %149, align 8, !dbg !778
  br label %154, !dbg !775

; <label>:150:                                    ; preds = %136
  %151 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !779
  %152 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %151, i32 0, i32 7, !dbg !780
  %153 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %152, i32 0, i32 3, !dbg !781
  store i8* null, i8** %153, align 8, !dbg !782
  br label %154

; <label>:154:                                    ; preds = %150, %142
  %155 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !783
  %156 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %155, i32 0, i32 2, !dbg !784
  %157 = getelementptr inbounds [8 x i8], [8 x i8]* %156, i32 0, i32 0, !dbg !783
  %158 = call i64 @tar_atoul(i8* %157, i64 8, i64 4294967295), !dbg !785
  %159 = trunc i64 %158 to i32, !dbg !786
  %160 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !787
  %161 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %160, i32 0, i32 7, !dbg !788
  %162 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %161, i32 0, i32 0, !dbg !789
  store i32 %159, i32* %162, align 8, !dbg !790
  %163 = call i32* @__errno_location() #1, !dbg !791
  %164 = load i32, i32* %163, align 4, !dbg !793
  %165 = icmp ne i32 %164, 0, !dbg !794
  br i1 %165, label %166, label %170, !dbg !795

; <label>:166:                                    ; preds = %154
  %167 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !796
  %168 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !797
  %169 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %167, i8* %168), !dbg !798
  store i32 %169, i32* %4, align 4, !dbg !800
  br label %226, !dbg !800

; <label>:170:                                    ; preds = %154
  %171 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !801
  %172 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %171, i32 0, i32 11, !dbg !803
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %172, i32 0, i32 0, !dbg !804
  %174 = load i8, i8* %173, align 1, !dbg !804
  %175 = icmp ne i8 %174, 0, !dbg !804
  br i1 %175, label %176, label %184, !dbg !805

; <label>:176:                                    ; preds = %170
  %177 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !806
  %178 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %177, i32 0, i32 11, !dbg !807
  %179 = getelementptr inbounds [32 x i8], [32 x i8]* %178, i32 0, i32 0, !dbg !806
  %180 = call i8* @m_strndup(i8* %179, i64 32), !dbg !808
  %181 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !809
  %182 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %181, i32 0, i32 7, !dbg !810
  %183 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %182, i32 0, i32 4, !dbg !811
  store i8* %180, i8** %183, align 8, !dbg !812
  br label %188, !dbg !809

; <label>:184:                                    ; preds = %170
  %185 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !813
  %186 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %185, i32 0, i32 7, !dbg !814
  %187 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %186, i32 0, i32 4, !dbg !815
  store i8* null, i8** %187, align 8, !dbg !816
  br label %188

; <label>:188:                                    ; preds = %184, %176
  %189 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !817
  %190 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %189, i32 0, i32 3, !dbg !818
  %191 = getelementptr inbounds [8 x i8], [8 x i8]* %190, i32 0, i32 0, !dbg !817
  %192 = call i64 @tar_atoul(i8* %191, i64 8, i64 4294967295), !dbg !819
  %193 = trunc i64 %192 to i32, !dbg !820
  %194 = load %struct.tar_entry*, %struct.tar_entry** %6, align 8, !dbg !821
  %195 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %194, i32 0, i32 7, !dbg !822
  %196 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %195, i32 0, i32 1, !dbg !823
  store i32 %193, i32* %196, align 4, !dbg !824
  %197 = call i32* @__errno_location() #1, !dbg !825
  %198 = load i32, i32* %197, align 4, !dbg !827
  %199 = icmp ne i32 %198, 0, !dbg !828
  br i1 %199, label %200, label %204, !dbg !829

; <label>:200:                                    ; preds = %188
  %201 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !830
  %202 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !831
  %203 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %201, i8* %202), !dbg !832
  store i32 %203, i32* %4, align 4, !dbg !834
  br label %226, !dbg !834

; <label>:204:                                    ; preds = %188
  %205 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !835
  %206 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %205, i32 0, i32 6, !dbg !836
  %207 = getelementptr inbounds [8 x i8], [8 x i8]* %206, i32 0, i32 0, !dbg !835
  %208 = call i64 @tar_atol8(i8* %207, i64 8), !dbg !837
  store i64 %208, i64* %8, align 8, !dbg !838
  %209 = call i32* @__errno_location() #1, !dbg !839
  %210 = load i32, i32* %209, align 4, !dbg !841
  %211 = icmp ne i32 %210, 0, !dbg !842
  br i1 %211, label %212, label %216, !dbg !843

; <label>:212:                                    ; preds = %204
  %213 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !844
  %214 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !845
  %215 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_errno(%struct.dpkg_error* %213, i8* %214), !dbg !846
  store i32 %215, i32* %4, align 4, !dbg !848
  br label %226, !dbg !848

; <label>:216:                                    ; preds = %204
  %217 = load %struct.tar_header*, %struct.tar_header** %5, align 8, !dbg !849
  %218 = call i64 @tar_header_checksum(%struct.tar_header* %217), !dbg !851
  %219 = load i64, i64* %8, align 8, !dbg !852
  %220 = icmp ne i64 %218, %219, !dbg !853
  br i1 %220, label %221, label %225, !dbg !854

; <label>:221:                                    ; preds = %216
  %222 = load %struct.dpkg_error*, %struct.dpkg_error** %7, align 8, !dbg !855
  %223 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !856
  %224 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %222, i8* %223), !dbg !857
  store i32 %224, i32* %4, align 4, !dbg !859
  br label %226, !dbg !859

; <label>:225:                                    ; preds = %216
  store i32 0, i32* %4, align 4, !dbg !860
  br label %226, !dbg !860

; <label>:226:                                    ; preds = %225, %221, %212, %200, %166, %104, %90
  %227 = load i32, i32* %4, align 4, !dbg !861
  ret i32 %227, !dbg !861
}

; Function Attrs: nounwind uwtable
define internal void @tar_entry_destroy(%struct.tar_entry*) #0 !dbg !862 {
  %2 = alloca %struct.tar_entry*, align 8
  store %struct.tar_entry* %0, %struct.tar_entry** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %2, metadata !863, metadata !111), !dbg !864
  %3 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !865
  %4 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %3, i32 0, i32 2, !dbg !866
  %5 = load i8*, i8** %4, align 8, !dbg !866
  call void @free(i8* %5) #8, !dbg !867
  %6 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !868
  %7 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %6, i32 0, i32 3, !dbg !869
  %8 = load i8*, i8** %7, align 8, !dbg !869
  call void @free(i8* %8) #8, !dbg !870
  %9 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !871
  %10 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %9, i32 0, i32 7, !dbg !872
  %11 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %10, i32 0, i32 3, !dbg !873
  %12 = load i8*, i8** %11, align 8, !dbg !873
  call void @free(i8* %12) #8, !dbg !874
  %13 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !875
  %14 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %13, i32 0, i32 7, !dbg !876
  %15 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %14, i32 0, i32 4, !dbg !877
  %16 = load i8*, i8** %15, align 8, !dbg !877
  call void @free(i8* %16) #8, !dbg !878
  %17 = load %struct.tar_entry*, %struct.tar_entry** %2, align 8, !dbg !879
  %18 = bitcast %struct.tar_entry* %17 to i8*, !dbg !880
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 80, i32 8, i1 false), !dbg !880
  ret void, !dbg !881
}

declare i32 @dpkg_put_error(%struct.dpkg_error*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i8* @m_malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal void @tar_entry_copy(%struct.tar_entry*, %struct.tar_entry*) #0 !dbg !882 {
  %3 = alloca %struct.tar_entry*, align 8
  %4 = alloca %struct.tar_entry*, align 8
  store %struct.tar_entry* %0, %struct.tar_entry** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %3, metadata !885, metadata !111), !dbg !886
  store %struct.tar_entry* %1, %struct.tar_entry** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %4, metadata !887, metadata !111), !dbg !888
  %5 = load %struct.tar_entry*, %struct.tar_entry** %3, align 8, !dbg !889
  %6 = bitcast %struct.tar_entry* %5 to i8*, !dbg !890
  %7 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !891
  %8 = bitcast %struct.tar_entry* %7 to i8*, !dbg !890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %8, i64 80, i32 8, i1 false), !dbg !890
  %9 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !892
  %10 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %9, i32 0, i32 2, !dbg !893
  %11 = load i8*, i8** %10, align 8, !dbg !893
  %12 = call i8* @m_strdup(i8* %11), !dbg !894
  %13 = load %struct.tar_entry*, %struct.tar_entry** %3, align 8, !dbg !895
  %14 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %13, i32 0, i32 2, !dbg !896
  store i8* %12, i8** %14, align 8, !dbg !897
  %15 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !898
  %16 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %15, i32 0, i32 3, !dbg !899
  %17 = load i8*, i8** %16, align 8, !dbg !899
  %18 = call i8* @m_strdup(i8* %17), !dbg !900
  %19 = load %struct.tar_entry*, %struct.tar_entry** %3, align 8, !dbg !901
  %20 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %19, i32 0, i32 3, !dbg !902
  store i8* %18, i8** %20, align 8, !dbg !903
  %21 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !904
  %22 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %21, i32 0, i32 7, !dbg !906
  %23 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %22, i32 0, i32 3, !dbg !907
  %24 = load i8*, i8** %23, align 8, !dbg !907
  %25 = icmp ne i8* %24, null, !dbg !904
  br i1 %25, label %26, label %35, !dbg !908

; <label>:26:                                     ; preds = %2
  %27 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !909
  %28 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %27, i32 0, i32 7, !dbg !910
  %29 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %28, i32 0, i32 3, !dbg !911
  %30 = load i8*, i8** %29, align 8, !dbg !911
  %31 = call i8* @m_strdup(i8* %30), !dbg !912
  %32 = load %struct.tar_entry*, %struct.tar_entry** %3, align 8, !dbg !913
  %33 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %32, i32 0, i32 7, !dbg !914
  %34 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %33, i32 0, i32 3, !dbg !915
  store i8* %31, i8** %34, align 8, !dbg !916
  br label %35, !dbg !913

; <label>:35:                                     ; preds = %26, %2
  %36 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !917
  %37 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %36, i32 0, i32 7, !dbg !919
  %38 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %37, i32 0, i32 4, !dbg !920
  %39 = load i8*, i8** %38, align 8, !dbg !920
  %40 = icmp ne i8* %39, null, !dbg !917
  br i1 %40, label %41, label %50, !dbg !921

; <label>:41:                                     ; preds = %35
  %42 = load %struct.tar_entry*, %struct.tar_entry** %4, align 8, !dbg !922
  %43 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %42, i32 0, i32 7, !dbg !923
  %44 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %43, i32 0, i32 4, !dbg !924
  %45 = load i8*, i8** %44, align 8, !dbg !924
  %46 = call i8* @m_strdup(i8* %45), !dbg !925
  %47 = load %struct.tar_entry*, %struct.tar_entry** %3, align 8, !dbg !926
  %48 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %47, i32 0, i32 7, !dbg !927
  %49 = getelementptr inbounds %struct.file_stat, %struct.file_stat* %48, i32 0, i32 4, !dbg !928
  store i8* %46, i8** %49, align 8, !dbg !929
  br label %50, !dbg !926

; <label>:50:                                     ; preds = %41, %35
  ret void, !dbg !930
}

; Function Attrs: nounwind uwtable
define internal i32 @tar_gnu_long(%struct.tar_archive*, %struct.tar_entry*, i8**) #0 !dbg !931 {
  %4 = alloca %struct.tar_archive*, align 8
  %5 = alloca %struct.tar_entry*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tar_archive* %0, %struct.tar_archive** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_archive** %4, metadata !934, metadata !111), !dbg !935
  store %struct.tar_entry* %1, %struct.tar_entry** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_entry** %5, metadata !936, metadata !111), !dbg !937
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !938, metadata !111), !dbg !939
  call void @llvm.dbg.declare(metadata [512 x i8]* %7, metadata !940, metadata !111), !dbg !941
  call void @llvm.dbg.declare(metadata i8** %8, metadata !942, metadata !111), !dbg !943
  call void @llvm.dbg.declare(metadata i32* %9, metadata !944, metadata !111), !dbg !945
  store i32 0, i32* %9, align 4, !dbg !945
  call void @llvm.dbg.declare(metadata i32* %10, metadata !946, metadata !111), !dbg !947
  %12 = load i8**, i8*** %6, align 8, !dbg !948
  %13 = load i8*, i8** %12, align 8, !dbg !949
  call void @free(i8* %13) #8, !dbg !950
  %14 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !951
  %15 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %14, i32 0, i32 4, !dbg !952
  %16 = load i64, i64* %15, align 8, !dbg !952
  %17 = call i8* @m_malloc(i64 %16), !dbg !953
  store i8* %17, i8** %8, align 8, !dbg !954
  %18 = load i8**, i8*** %6, align 8, !dbg !955
  store i8* %17, i8** %18, align 8, !dbg !956
  %19 = load %struct.tar_entry*, %struct.tar_entry** %5, align 8, !dbg !957
  %20 = getelementptr inbounds %struct.tar_entry, %struct.tar_entry* %19, i32 0, i32 4, !dbg !959
  %21 = load i64, i64* %20, align 8, !dbg !959
  %22 = trunc i64 %21 to i32, !dbg !957
  store i32 %22, i32* %10, align 4, !dbg !960
  br label %23, !dbg !961

; <label>:23:                                     ; preds = %64, %3
  %24 = load i32, i32* %10, align 4, !dbg !962
  %25 = icmp sgt i32 %24, 0, !dbg !965
  br i1 %25, label %26, label %67, !dbg !966

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %11, metadata !967, metadata !111), !dbg !969
  %27 = load %struct.tar_archive*, %struct.tar_archive** %4, align 8, !dbg !970
  %28 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %27, i32 0, i32 2, !dbg !971
  %29 = load %struct.tar_operations*, %struct.tar_operations** %28, align 8, !dbg !971
  %30 = getelementptr inbounds %struct.tar_operations, %struct.tar_operations* %29, i32 0, i32 0, !dbg !972
  %31 = load i32 (%struct.tar_archive*, i8*, i32)*, i32 (%struct.tar_archive*, i8*, i32)** %30, align 8, !dbg !972
  %32 = load %struct.tar_archive*, %struct.tar_archive** %4, align 8, !dbg !973
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !974
  %34 = call i32 %31(%struct.tar_archive* %32, i8* %33, i32 512), !dbg !970
  store i32 %34, i32* %9, align 4, !dbg !975
  %35 = load i32, i32* %9, align 4, !dbg !976
  %36 = icmp eq i32 %35, 512, !dbg !978
  br i1 %36, label %37, label %38, !dbg !979

; <label>:37:                                     ; preds = %26
  store i32 0, i32* %9, align 4, !dbg !980
  br label %48, !dbg !981

; <label>:38:                                     ; preds = %26
  %39 = load i32, i32* %9, align 4, !dbg !982
  %40 = icmp sgt i32 %39, 0, !dbg !985
  br i1 %40, label %41, label %47, !dbg !986

; <label>:41:                                     ; preds = %38
  %42 = call i32* @__errno_location() #1, !dbg !987
  store i32 0, i32* %42, align 4, !dbg !989
  %43 = load %struct.tar_archive*, %struct.tar_archive** %4, align 8, !dbg !990
  %44 = getelementptr inbounds %struct.tar_archive, %struct.tar_archive* %43, i32 0, i32 0, !dbg !991
  %45 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !992
  %46 = call i32 (%struct.dpkg_error*, i8*, ...) @dpkg_put_error(%struct.dpkg_error* %44, i8* %45), !dbg !993
  store i32 %46, i32* %9, align 4, !dbg !994
  br label %47, !dbg !995

; <label>:47:                                     ; preds = %41, %38
  br label %67, !dbg !996

; <label>:48:                                     ; preds = %37
  %49 = load i32, i32* %10, align 4, !dbg !997
  %50 = icmp slt i32 %49, 512, !dbg !998
  br i1 %50, label %51, label %53, !dbg !999

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %10, align 4, !dbg !1000
  br label %54, !dbg !1002

; <label>:53:                                     ; preds = %48
  br label %54, !dbg !1003

; <label>:54:                                     ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 512, %53 ], !dbg !1005
  store i32 %55, i32* %11, align 4, !dbg !1007
  %56 = load i8*, i8** %8, align 8, !dbg !1008
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0, !dbg !1009
  %58 = load i32, i32* %11, align 4, !dbg !1010
  %59 = sext i32 %58 to i64, !dbg !1010
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 %59, i32 1, i1 false), !dbg !1009
  %60 = load i32, i32* %11, align 4, !dbg !1011
  %61 = load i8*, i8** %8, align 8, !dbg !1012
  %62 = sext i32 %60 to i64, !dbg !1012
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !1012
  store i8* %63, i8** %8, align 8, !dbg !1012
  br label %64, !dbg !1013

; <label>:64:                                     ; preds = %54
  %65 = load i32, i32* %10, align 4, !dbg !1014
  %66 = sub nsw i32 %65, 512, !dbg !1014
  store i32 %66, i32* %10, align 4, !dbg !1014
  br label %23, !dbg !1016, !llvm.loop !1017

; <label>:67:                                     ; preds = %47, %23
  %68 = load i32, i32* %9, align 4, !dbg !1019
  ret i32 %68, !dbg !1020
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal i64 @tar_atol256(i8*, i64, i64, i64) #0 !dbg !1021 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1022, metadata !111), !dbg !1023
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1024, metadata !111), !dbg !1025
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1026, metadata !111), !dbg !1027
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1028, metadata !111), !dbg !1029
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1030, metadata !111), !dbg !1031
  store i64 0, i64* %10, align 8, !dbg !1031
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1032, metadata !111), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1034, metadata !111), !dbg !1035
  %13 = load i8*, i8** %6, align 8, !dbg !1036
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !1036
  store i8* %14, i8** %6, align 8, !dbg !1036
  %15 = load i8, i8* %13, align 1, !dbg !1037
  store i8 %15, i8* %11, align 1, !dbg !1038
  %16 = load i8, i8* %11, align 1, !dbg !1039
  %17 = zext i8 %16 to i32, !dbg !1039
  %18 = icmp eq i32 %17, 128, !dbg !1041
  br i1 %18, label %19, label %20, !dbg !1042

; <label>:19:                                     ; preds = %4
  store i8 0, i8* %11, align 1, !dbg !1043
  br label %21, !dbg !1044

; <label>:20:                                     ; preds = %4
  store i64 -1, i64* %10, align 8, !dbg !1045
  br label %21

; <label>:21:                                     ; preds = %20, %19
  %22 = load i8, i8* %11, align 1, !dbg !1046
  %23 = zext i8 %22 to i32, !dbg !1046
  store i32 %23, i32* %12, align 4, !dbg !1047
  br label %24, !dbg !1048

; <label>:24:                                     ; preds = %42, %21
  %25 = load i64, i64* %7, align 8, !dbg !1049
  %26 = icmp ugt i64 %25, 8, !dbg !1051
  br i1 %26, label %27, label %48, !dbg !1052

; <label>:27:                                     ; preds = %24
  %28 = load i8, i8* %11, align 1, !dbg !1053
  %29 = zext i8 %28 to i32, !dbg !1053
  %30 = load i32, i32* %12, align 4, !dbg !1056
  %31 = icmp ne i32 %29, %30, !dbg !1057
  br i1 %31, label %32, label %42, !dbg !1058

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %12, align 4, !dbg !1059
  %34 = icmp ne i32 %33, 0, !dbg !1059
  br i1 %34, label %35, label %37, !dbg !1059

; <label>:35:                                     ; preds = %32
  %36 = load i64, i64* %8, align 8, !dbg !1060
  br label %39, !dbg !1062

; <label>:37:                                     ; preds = %32
  %38 = load i64, i64* %9, align 8, !dbg !1063
  br label %39, !dbg !1065

; <label>:39:                                     ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ], !dbg !1066
  %41 = call i64 @tar_ret_errno(i32 34, i64 %40), !dbg !1068
  store i64 %41, i64* %5, align 8, !dbg !1069
  br label %83, !dbg !1069

; <label>:42:                                     ; preds = %27
  %43 = load i8*, i8** %6, align 8, !dbg !1070
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !1070
  store i8* %44, i8** %6, align 8, !dbg !1070
  %45 = load i8, i8* %43, align 1, !dbg !1071
  store i8 %45, i8* %11, align 1, !dbg !1072
  %46 = load i64, i64* %7, align 8, !dbg !1073
  %47 = add i64 %46, -1, !dbg !1073
  store i64 %47, i64* %7, align 8, !dbg !1073
  br label %24, !dbg !1074, !llvm.loop !1076

; <label>:48:                                     ; preds = %24
  %49 = load i8, i8* %11, align 1, !dbg !1077
  %50 = zext i8 %49 to i32, !dbg !1077
  %51 = and i32 %50, 128, !dbg !1079
  %52 = load i32, i32* %12, align 4, !dbg !1080
  %53 = and i32 %52, 128, !dbg !1081
  %54 = icmp ne i32 %51, %53, !dbg !1082
  br i1 %54, label %55, label %65, !dbg !1083

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %12, align 4, !dbg !1084
  %57 = icmp ne i32 %56, 0, !dbg !1084
  br i1 %57, label %58, label %60, !dbg !1084

; <label>:58:                                     ; preds = %55
  %59 = load i64, i64* %8, align 8, !dbg !1085
  br label %62, !dbg !1087

; <label>:60:                                     ; preds = %55
  %61 = load i64, i64* %9, align 8, !dbg !1088
  br label %62, !dbg !1090

; <label>:62:                                     ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ], !dbg !1091
  %64 = call i64 @tar_ret_errno(i32 34, i64 %63), !dbg !1093
  store i64 %64, i64* %5, align 8, !dbg !1094
  br label %83, !dbg !1094

; <label>:65:                                     ; preds = %48
  br label %66, !dbg !1095

; <label>:66:                                     ; preds = %76, %65
  %67 = load i64, i64* %10, align 8, !dbg !1096
  %68 = shl i64 %67, 8, !dbg !1100
  %69 = load i8, i8* %11, align 1, !dbg !1101
  %70 = zext i8 %69 to i64, !dbg !1101
  %71 = or i64 %68, %70, !dbg !1102
  store i64 %71, i64* %10, align 8, !dbg !1103
  %72 = load i64, i64* %7, align 8, !dbg !1104
  %73 = add i64 %72, -1, !dbg !1104
  store i64 %73, i64* %7, align 8, !dbg !1104
  %74 = icmp eq i64 %73, 0, !dbg !1106
  br i1 %74, label %75, label %76, !dbg !1107

; <label>:75:                                     ; preds = %66
  br label %80, !dbg !1108

; <label>:76:                                     ; preds = %66
  %77 = load i8*, i8** %6, align 8, !dbg !1109
  %78 = getelementptr inbounds i8, i8* %77, i32 1, !dbg !1109
  store i8* %78, i8** %6, align 8, !dbg !1109
  %79 = load i8, i8* %77, align 1, !dbg !1110
  store i8 %79, i8* %11, align 1, !dbg !1111
  br label %66, !dbg !1112, !llvm.loop !1114

; <label>:80:                                     ; preds = %75
  %81 = load i64, i64* %10, align 8, !dbg !1115
  %82 = call i64 @tar_ret_errno(i32 0, i64 %81), !dbg !1116
  store i64 %82, i64* %5, align 8, !dbg !1117
  br label %83, !dbg !1117

; <label>:83:                                     ; preds = %80, %62, %39
  %84 = load i64, i64* %5, align 8, !dbg !1118
  ret i64 %84, !dbg !1118
}

; Function Attrs: nounwind uwtable
define internal i64 @tar_atol8(i8*, i64) #0 !dbg !1119 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1122, metadata !111), !dbg !1123
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1124, metadata !111), !dbg !1125
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1126, metadata !111), !dbg !1127
  %8 = load i8*, i8** %4, align 8, !dbg !1128
  %9 = load i64, i64* %5, align 8, !dbg !1129
  %10 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !1130
  store i8* %10, i8** %6, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1131, metadata !111), !dbg !1132
  store i64 0, i64* %7, align 8, !dbg !1132
  br label %11, !dbg !1133

; <label>:11:                                     ; preds = %22, %2
  %12 = load i8*, i8** %4, align 8, !dbg !1134
  %13 = load i8*, i8** %6, align 8, !dbg !1136
  %14 = icmp ult i8* %12, %13, !dbg !1137
  br i1 %14, label %15, label %20, !dbg !1138

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %4, align 8, !dbg !1139
  %17 = load i8, i8* %16, align 1, !dbg !1141
  %18 = sext i8 %17 to i32, !dbg !1141
  %19 = icmp eq i32 %18, 32, !dbg !1142
  br label %20

; <label>:20:                                     ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %25, !dbg !1143

; <label>:22:                                     ; preds = %20
  %23 = load i8*, i8** %4, align 8, !dbg !1145
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1145
  store i8* %24, i8** %4, align 8, !dbg !1145
  br label %11, !dbg !1146, !llvm.loop !1148

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %4, align 8, !dbg !1149
  %27 = load i8*, i8** %6, align 8, !dbg !1151
  %28 = icmp eq i8* %26, %27, !dbg !1152
  br i1 %28, label %29, label %31, !dbg !1153

; <label>:29:                                     ; preds = %25
  %30 = call i64 @tar_ret_errno(i32 22, i64 0), !dbg !1154
  store i64 %30, i64* %3, align 8, !dbg !1155
  br label %98, !dbg !1155

; <label>:31:                                     ; preds = %25
  br label %32, !dbg !1156

; <label>:32:                                     ; preds = %59, %31
  %33 = load i8*, i8** %4, align 8, !dbg !1157
  %34 = load i8*, i8** %6, align 8, !dbg !1158
  %35 = icmp ult i8* %33, %34, !dbg !1159
  br i1 %35, label %36, label %69, !dbg !1160

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %4, align 8, !dbg !1161
  %38 = load i8, i8* %37, align 1, !dbg !1164
  %39 = sext i8 %38 to i32, !dbg !1164
  %40 = icmp eq i32 %39, 0, !dbg !1165
  br i1 %40, label %46, label %41, !dbg !1166

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %4, align 8, !dbg !1167
  %43 = load i8, i8* %42, align 1, !dbg !1169
  %44 = sext i8 %43 to i32, !dbg !1169
  %45 = icmp eq i32 %44, 32, !dbg !1170
  br i1 %45, label %46, label %47, !dbg !1171

; <label>:46:                                     ; preds = %41, %36
  br label %69, !dbg !1172

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %4, align 8, !dbg !1173
  %49 = load i8, i8* %48, align 1, !dbg !1175
  %50 = sext i8 %49 to i32, !dbg !1175
  %51 = icmp slt i32 %50, 48, !dbg !1176
  br i1 %51, label %57, label %52, !dbg !1177

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %4, align 8, !dbg !1178
  %54 = load i8, i8* %53, align 1, !dbg !1180
  %55 = sext i8 %54 to i32, !dbg !1180
  %56 = icmp sgt i32 %55, 55, !dbg !1181
  br i1 %56, label %57, label %59, !dbg !1182

; <label>:57:                                     ; preds = %52, %47
  %58 = call i64 @tar_ret_errno(i32 34, i64 0), !dbg !1183
  store i64 %58, i64* %3, align 8, !dbg !1184
  br label %98, !dbg !1184

; <label>:59:                                     ; preds = %52
  %60 = load i64, i64* %7, align 8, !dbg !1185
  %61 = mul i64 %60, 8, !dbg !1186
  %62 = load i8*, i8** %4, align 8, !dbg !1187
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !1187
  store i8* %63, i8** %4, align 8, !dbg !1187
  %64 = load i8, i8* %62, align 1, !dbg !1188
  %65 = sext i8 %64 to i32, !dbg !1188
  %66 = sub nsw i32 %65, 48, !dbg !1189
  %67 = sext i32 %66 to i64, !dbg !1190
  %68 = add i64 %61, %67, !dbg !1191
  store i64 %68, i64* %7, align 8, !dbg !1192
  br label %32, !dbg !1193, !llvm.loop !1194

; <label>:69:                                     ; preds = %46, %32
  br label %70, !dbg !1195

; <label>:70:                                     ; preds = %86, %69
  %71 = load i8*, i8** %4, align 8, !dbg !1196
  %72 = load i8*, i8** %6, align 8, !dbg !1197
  %73 = icmp ult i8* %71, %72, !dbg !1198
  br i1 %73, label %74, label %89, !dbg !1199

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %4, align 8, !dbg !1200
  %76 = load i8, i8* %75, align 1, !dbg !1203
  %77 = sext i8 %76 to i32, !dbg !1203
  %78 = icmp ne i32 %77, 0, !dbg !1204
  br i1 %78, label %79, label %86, !dbg !1205

; <label>:79:                                     ; preds = %74
  %80 = load i8*, i8** %4, align 8, !dbg !1206
  %81 = load i8, i8* %80, align 1, !dbg !1208
  %82 = sext i8 %81 to i32, !dbg !1208
  %83 = icmp ne i32 %82, 32, !dbg !1209
  br i1 %83, label %84, label %86, !dbg !1210

; <label>:84:                                     ; preds = %79
  %85 = call i64 @tar_ret_errno(i32 22, i64 0), !dbg !1211
  store i64 %85, i64* %3, align 8, !dbg !1212
  br label %98, !dbg !1212

; <label>:86:                                     ; preds = %79, %74
  %87 = load i8*, i8** %4, align 8, !dbg !1213
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !1213
  store i8* %88, i8** %4, align 8, !dbg !1213
  br label %70, !dbg !1214, !llvm.loop !1215

; <label>:89:                                     ; preds = %70
  %90 = load i8*, i8** %4, align 8, !dbg !1216
  %91 = load i8*, i8** %6, align 8, !dbg !1218
  %92 = icmp ult i8* %90, %91, !dbg !1219
  br i1 %92, label %93, label %95, !dbg !1220

; <label>:93:                                     ; preds = %89
  %94 = call i64 @tar_ret_errno(i32 22, i64 0), !dbg !1221
  store i64 %94, i64* %3, align 8, !dbg !1222
  br label %98, !dbg !1222

; <label>:95:                                     ; preds = %89
  %96 = load i64, i64* %7, align 8, !dbg !1223
  %97 = call i64 @tar_ret_errno(i32 0, i64 %96), !dbg !1224
  store i64 %97, i64* %3, align 8, !dbg !1225
  br label %98, !dbg !1225

; <label>:98:                                     ; preds = %95, %93, %84, %57, %29
  %99 = load i64, i64* %3, align 8, !dbg !1226
  ret i64 %99, !dbg !1226
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind uwtable
define internal i8* @tar_header_get_prefix_name(%struct.tar_header*) #0 !dbg !1227 {
  %2 = alloca %struct.tar_header*, align 8
  store %struct.tar_header* %0, %struct.tar_header** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_header** %2, metadata !1230, metadata !111), !dbg !1231
  %3 = load %struct.tar_header*, %struct.tar_header** %2, align 8, !dbg !1232
  %4 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %3, i32 0, i32 14, !dbg !1233
  %5 = getelementptr inbounds [155 x i8], [155 x i8]* %4, i32 0, i32 0, !dbg !1232
  %6 = load %struct.tar_header*, %struct.tar_header** %2, align 8, !dbg !1234
  %7 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %6, i32 0, i32 0, !dbg !1235
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i32 0, i32 0, !dbg !1234
  %9 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 155, i8* %5, i32 100, i8* %8), !dbg !1236
  ret i8* %9, !dbg !1237
}

declare i8* @m_strndup(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @tar_header_get_unix_mode(%struct.tar_header*) #0 !dbg !1238 {
  %2 = alloca %struct.tar_header*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tar_header* %0, %struct.tar_header** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_header** %2, metadata !1241, metadata !111), !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1243, metadata !111), !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1245, metadata !111), !dbg !1246
  %5 = load %struct.tar_header*, %struct.tar_header** %2, align 8, !dbg !1247
  %6 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %5, i32 0, i32 7, !dbg !1248
  %7 = load i8, i8* %6, align 1, !dbg !1248
  %8 = sext i8 %7 to i32, !dbg !1249
  store i32 %8, i32* %4, align 4, !dbg !1250
  %9 = load i32, i32* %4, align 4, !dbg !1251
  switch i32 %9, label %16 [
    i32 0, label %10
    i32 48, label %10
    i32 49, label %10
    i32 50, label %11
    i32 53, label %12
    i32 51, label %13
    i32 52, label %14
    i32 54, label %15
  ], !dbg !1252

; <label>:10:                                     ; preds = %1, %1, %1
  store i32 32768, i32* %3, align 4, !dbg !1253
  br label %17, !dbg !1255

; <label>:11:                                     ; preds = %1
  store i32 40960, i32* %3, align 4, !dbg !1256
  br label %17, !dbg !1257

; <label>:12:                                     ; preds = %1
  store i32 16384, i32* %3, align 4, !dbg !1258
  br label %17, !dbg !1259

; <label>:13:                                     ; preds = %1
  store i32 8192, i32* %3, align 4, !dbg !1260
  br label %17, !dbg !1261

; <label>:14:                                     ; preds = %1
  store i32 24576, i32* %3, align 4, !dbg !1262
  br label %17, !dbg !1263

; <label>:15:                                     ; preds = %1
  store i32 4096, i32* %3, align 4, !dbg !1264
  br label %17, !dbg !1265

; <label>:16:                                     ; preds = %1
  store i32 0, i32* %3, align 4, !dbg !1266
  br label %17, !dbg !1267

; <label>:17:                                     ; preds = %16, %15, %14, %13, %12, %11, %10
  %18 = load %struct.tar_header*, %struct.tar_header** %2, align 8, !dbg !1268
  %19 = getelementptr inbounds %struct.tar_header, %struct.tar_header* %18, i32 0, i32 1, !dbg !1269
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i32 0, i32 0, !dbg !1268
  %21 = call i64 @tar_atoul(i8* %20, i64 8, i64 4294967295), !dbg !1270
  %22 = trunc i64 %21 to i32, !dbg !1271
  %23 = load i32, i32* %3, align 4, !dbg !1272
  %24 = or i32 %23, %22, !dbg !1272
  store i32 %24, i32* %3, align 4, !dbg !1272
  %25 = load i32, i32* %3, align 4, !dbg !1273
  ret i32 %25, !dbg !1274
}

declare i32 @dpkg_put_errno(%struct.dpkg_error*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gnu_dev_makedev(i32, i32) #5

; Function Attrs: nounwind uwtable
define internal i64 @tar_header_checksum(%struct.tar_header*) #0 !dbg !1275 {
  %2 = alloca %struct.tar_header*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tar_header* %0, %struct.tar_header** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.tar_header** %2, metadata !1278, metadata !111), !dbg !1279
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1280, metadata !111), !dbg !1281
  %7 = load %struct.tar_header*, %struct.tar_header** %2, align 8, !dbg !1282
  %8 = bitcast %struct.tar_header* %7 to i8*, !dbg !1283
  store i8* %8, i8** %3, align 8, !dbg !1281
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1284, metadata !111), !dbg !1285
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1286, metadata !111), !dbg !1288
  store i64 148, i64* %5, align 8, !dbg !1288
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1289, metadata !111), !dbg !1290
  store i64 256, i64* %6, align 8, !dbg !1291
  store i32 148, i32* %4, align 4, !dbg !1292
  br label %9, !dbg !1294

; <label>:9:                                      ; preds = %19, %1
  %10 = load i32, i32* %4, align 4, !dbg !1295
  %11 = icmp ugt i32 %10, 0, !dbg !1298
  br i1 %11, label %12, label %22, !dbg !1299

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** %3, align 8, !dbg !1300
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !1300
  store i8* %14, i8** %3, align 8, !dbg !1300
  %15 = load i8, i8* %13, align 1, !dbg !1301
  %16 = zext i8 %15 to i64, !dbg !1301
  %17 = load i64, i64* %6, align 8, !dbg !1302
  %18 = add nsw i64 %17, %16, !dbg !1302
  store i64 %18, i64* %6, align 8, !dbg !1302
  br label %19, !dbg !1303

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %4, align 4, !dbg !1304
  %21 = add i32 %20, -1, !dbg !1304
  store i32 %21, i32* %4, align 4, !dbg !1304
  br label %9, !dbg !1306, !llvm.loop !1307

; <label>:22:                                     ; preds = %9
  %23 = load i8*, i8** %3, align 8, !dbg !1309
  %24 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !1309
  store i8* %24, i8** %3, align 8, !dbg !1309
  store i32 356, i32* %4, align 4, !dbg !1310
  br label %25, !dbg !1312

; <label>:25:                                     ; preds = %35, %22
  %26 = load i32, i32* %4, align 4, !dbg !1313
  %27 = icmp ugt i32 %26, 0, !dbg !1316
  br i1 %27, label %28, label %38, !dbg !1317

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %3, align 8, !dbg !1318
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !1318
  store i8* %30, i8** %3, align 8, !dbg !1318
  %31 = load i8, i8* %29, align 1, !dbg !1319
  %32 = zext i8 %31 to i64, !dbg !1319
  %33 = load i64, i64* %6, align 8, !dbg !1320
  %34 = add nsw i64 %33, %32, !dbg !1320
  store i64 %34, i64* %6, align 8, !dbg !1320
  br label %35, !dbg !1321

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %4, align 4, !dbg !1322
  %37 = add i32 %36, -1, !dbg !1322
  store i32 %37, i32* %4, align 4, !dbg !1322
  br label %25, !dbg !1324, !llvm.loop !1325

; <label>:38:                                     ; preds = %25
  %39 = load i64, i64* %6, align 8, !dbg !1327
  ret i64 %39, !dbg !1328
}

declare i8* @str_fmt(i8*, ...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

declare i8* @m_strdup(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!99, !100}
!llvm.ident = !{!101}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !38)
!1 = !DIFile(filename: "[inter]lib--dpkg--tarfn.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{!3, !11, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tar_format", file: !4, line: 40, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/dpkg/tarfn.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "TAR_FORMAT_UNKNOWN", value: 0)
!7 = !DIEnumerator(name: "TAR_FORMAT_OLD", value: 1)
!8 = !DIEnumerator(name: "TAR_FORMAT_GNU", value: 2)
!9 = !DIEnumerator(name: "TAR_FORMAT_USTAR", value: 3)
!10 = !DIEnumerator(name: "TAR_FORMAT_PAX", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tar_filetype", file: !4, line: 48, size: 32, align: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!13 = !DIEnumerator(name: "TAR_FILETYPE_FILE0", value: 0)
!14 = !DIEnumerator(name: "TAR_FILETYPE_FILE", value: 48)
!15 = !DIEnumerator(name: "TAR_FILETYPE_HARDLINK", value: 49)
!16 = !DIEnumerator(name: "TAR_FILETYPE_SYMLINK", value: 50)
!17 = !DIEnumerator(name: "TAR_FILETYPE_CHARDEV", value: 51)
!18 = !DIEnumerator(name: "TAR_FILETYPE_BLOCKDEV", value: 52)
!19 = !DIEnumerator(name: "TAR_FILETYPE_DIR", value: 53)
!20 = !DIEnumerator(name: "TAR_FILETYPE_FIFO", value: 54)
!21 = !DIEnumerator(name: "TAR_FILETYPE_CONTIG", value: 55)
!22 = !DIEnumerator(name: "TAR_FILETYPE_GNU_LONGLINK", value: 75)
!23 = !DIEnumerator(name: "TAR_FILETYPE_GNU_LONGNAME", value: 76)
!24 = !DIEnumerator(name: "TAR_FILETYPE_GNU_VOLUME", value: 86)
!25 = !DIEnumerator(name: "TAR_FILETYPE_GNU_MULTIVOL", value: 77)
!26 = !DIEnumerator(name: "TAR_FILETYPE_GNU_DUMPDIR", value: 68)
!27 = !DIEnumerator(name: "TAR_FILETYPE_GNU_SPARSE", value: 83)
!28 = !DIEnumerator(name: "TAR_FILETYPE_PAX_GLOBAL", value: 103)
!29 = !DIEnumerator(name: "TAR_FILETYPE_PAX_EXTENDED", value: 120)
!30 = !DIEnumerator(name: "TAR_FILETYPE_SOLARIS_EXTENDED", value: 88)
!31 = !DIEnumerator(name: "TAR_FILETYPE_SOLARIS_ACL", value: 65)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dpkg_msg_type", file: !33, line: 36, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "../../lib/dpkg/error.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "DPKG_MSG_NONE", value: 0)
!36 = !DIEnumerator(name: "DPKG_MSG_WARN", value: 1)
!37 = !DIEnumerator(name: "DPKG_MSG_ERROR", value: 2)
!38 = !{!39, !74, !77, !11, !80, !85, !88, !90, !93, !95, !96, !98}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_header", file: !41, line: 64, size: 4000, align: 8, elements: !42)
!41 = !DIFile(filename: "tarfn.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!42 = !{!43, !48, !52, !53, !54, !58, !59, !60, !61, !62, !63, !67, !68, !69, !70}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 65, baseType: !44, size: 800, align: 8)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 800, align: 8, elements: !46)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !{!47}
!47 = !DISubrange(count: 100)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !40, file: !41, line: 66, baseType: !49, size: 64, align: 8, offset: 800)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 8)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !40, file: !41, line: 67, baseType: !49, size: 64, align: 8, offset: 864)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !40, file: !41, line: 68, baseType: !49, size: 64, align: 8, offset: 928)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !40, file: !41, line: 69, baseType: !55, size: 96, align: 8, offset: 992)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 12)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !40, file: !41, line: 70, baseType: !55, size: 96, align: 8, offset: 1088)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !40, file: !41, line: 71, baseType: !49, size: 64, align: 8, offset: 1184)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "linkflag", scope: !40, file: !41, line: 72, baseType: !45, size: 8, align: 8, offset: 1248)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "linkname", scope: !40, file: !41, line: 73, baseType: !44, size: 800, align: 8, offset: 1256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !40, file: !41, line: 76, baseType: !49, size: 64, align: 8, offset: 2056)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !40, file: !41, line: 77, baseType: !64, size: 256, align: 8, offset: 2120)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !40, file: !41, line: 78, baseType: !64, size: 256, align: 8, offset: 2376)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "devmajor", scope: !40, file: !41, line: 79, baseType: !49, size: 64, align: 8, offset: 2632)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "devminor", scope: !40, file: !41, line: 80, baseType: !49, size: 64, align: 8, offset: 2696)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !40, file: !41, line: 83, baseType: !71, size: 1240, align: 8, offset: 2760)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1240, align: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 155)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !78, line: 135, baseType: !79)
!78 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!79 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !81, line: 73, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 131, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!84 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !86, line: 75, baseType: !87)
!86 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !83, line: 139, baseType: !84)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !81, line: 43, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !83, line: 124, baseType: !79)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 81, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !83, line: 125, baseType: !92)
!92 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 48, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !83, line: 126, baseType: !92)
!95 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !81, line: 62, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !83, line: 129, baseType: !92)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!99 = !{i32 2, !"Dwarf Version", i32 4}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!102 = distinct !DISubprogram(name: "tar_atoul", scope: !41, file: !41, line: 184, type: !103, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!103 = !DISubroutineType(types: !104)
!104 = !{!77, !105, !107, !77}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 216, baseType: !79)
!108 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!109 = !{}
!110 = !DILocalVariable(name: "s", arg: 1, scope: !102, file: !41, line: 184, type: !105)
!111 = !DIExpression()
!112 = !DILocation(line: 184, column: 23, scope: !102)
!113 = !DILocalVariable(name: "size", arg: 2, scope: !102, file: !41, line: 184, type: !107)
!114 = !DILocation(line: 184, column: 33, scope: !102)
!115 = !DILocalVariable(name: "max", arg: 3, scope: !102, file: !41, line: 184, type: !77)
!116 = !DILocation(line: 184, column: 49, scope: !102)
!117 = !DILocalVariable(name: "n", scope: !102, file: !41, line: 186, type: !77)
!118 = !DILocation(line: 186, column: 12, scope: !102)
!119 = !DILocation(line: 186, column: 25, scope: !102)
!120 = !DILocation(line: 186, column: 28, scope: !102)
!121 = !DILocation(line: 186, column: 16, scope: !102)
!122 = !DILocation(line: 188, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !102, file: !41, line: 188, column: 6)
!124 = !DILocation(line: 188, column: 10, scope: !123)
!125 = !DILocation(line: 188, column: 8, scope: !123)
!126 = !DILocation(line: 188, column: 6, scope: !102)
!127 = !DILocation(line: 189, column: 10, scope: !123)
!128 = !DILocation(line: 189, column: 3, scope: !123)
!129 = !DILocation(line: 191, column: 9, scope: !102)
!130 = !DILocation(line: 191, column: 2, scope: !102)
!131 = !DILocation(line: 192, column: 1, scope: !102)
!132 = distinct !DISubprogram(name: "tar_atol", scope: !41, file: !41, line: 171, type: !133, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!133 = !DISubroutineType(types: !134)
!134 = !{!77, !105, !107, !135, !77}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !78, line: 134, baseType: !84)
!136 = !DILocalVariable(name: "s", arg: 1, scope: !132, file: !41, line: 171, type: !105)
!137 = !DILocation(line: 171, column: 22, scope: !132)
!138 = !DILocalVariable(name: "size", arg: 2, scope: !132, file: !41, line: 171, type: !107)
!139 = !DILocation(line: 171, column: 32, scope: !132)
!140 = !DILocalVariable(name: "min", arg: 3, scope: !132, file: !41, line: 171, type: !135)
!141 = !DILocation(line: 171, column: 47, scope: !132)
!142 = !DILocalVariable(name: "max", arg: 4, scope: !132, file: !41, line: 171, type: !77)
!143 = !DILocation(line: 171, column: 62, scope: !132)
!144 = !DILocalVariable(name: "a", scope: !132, file: !41, line: 173, type: !74)
!145 = !DILocation(line: 173, column: 23, scope: !132)
!146 = !DILocation(line: 173, column: 50, scope: !132)
!147 = !DILocation(line: 177, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !132, file: !41, line: 177, column: 6)
!149 = !DILocation(line: 177, column: 6, scope: !148)
!150 = !DILocation(line: 177, column: 9, scope: !148)
!151 = !DILocation(line: 177, column: 17, scope: !148)
!152 = !DILocation(line: 177, column: 21, scope: !153)
!153 = !DILexicalBlockFile(scope: !148, file: !41, discriminator: 1)
!154 = !DILocation(line: 177, column: 20, scope: !153)
!155 = !DILocation(line: 177, column: 23, scope: !153)
!156 = !DILocation(line: 177, column: 6, scope: !153)
!157 = !DILocation(line: 178, column: 22, scope: !148)
!158 = !DILocation(line: 178, column: 25, scope: !148)
!159 = !DILocation(line: 178, column: 31, scope: !148)
!160 = !DILocation(line: 178, column: 36, scope: !148)
!161 = !DILocation(line: 178, column: 10, scope: !148)
!162 = !DILocation(line: 178, column: 3, scope: !148)
!163 = !DILocation(line: 180, column: 20, scope: !148)
!164 = !DILocation(line: 180, column: 23, scope: !148)
!165 = !DILocation(line: 180, column: 10, scope: !148)
!166 = !DILocation(line: 180, column: 3, scope: !148)
!167 = !DILocation(line: 181, column: 1, scope: !132)
!168 = distinct !DISubprogram(name: "tar_ret_errno", scope: !41, file: !41, line: 87, type: !169, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!169 = !DISubroutineType(types: !170)
!170 = !{!77, !95, !77}
!171 = !DILocalVariable(name: "err", arg: 1, scope: !168, file: !41, line: 87, type: !95)
!172 = !DILocation(line: 87, column: 19, scope: !168)
!173 = !DILocalVariable(name: "ret", arg: 2, scope: !168, file: !41, line: 87, type: !77)
!174 = !DILocation(line: 87, column: 34, scope: !168)
!175 = !DILocation(line: 89, column: 9, scope: !168)
!176 = !DILocation(line: 89, column: 3, scope: !168)
!177 = !DILocation(line: 89, column: 7, scope: !168)
!178 = !DILocation(line: 90, column: 9, scope: !168)
!179 = !DILocation(line: 90, column: 2, scope: !168)
!180 = distinct !DISubprogram(name: "tar_atosl", scope: !41, file: !41, line: 195, type: !181, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!181 = !DISubroutineType(types: !182)
!182 = !{!135, !105, !107, !135, !135}
!183 = !DILocalVariable(name: "s", arg: 1, scope: !180, file: !41, line: 195, type: !105)
!184 = !DILocation(line: 195, column: 23, scope: !180)
!185 = !DILocalVariable(name: "size", arg: 2, scope: !180, file: !41, line: 195, type: !107)
!186 = !DILocation(line: 195, column: 33, scope: !180)
!187 = !DILocalVariable(name: "min", arg: 3, scope: !180, file: !41, line: 195, type: !135)
!188 = !DILocation(line: 195, column: 48, scope: !180)
!189 = !DILocalVariable(name: "max", arg: 4, scope: !180, file: !41, line: 195, type: !135)
!190 = !DILocation(line: 195, column: 62, scope: !180)
!191 = !DILocalVariable(name: "n", scope: !180, file: !41, line: 197, type: !135)
!192 = !DILocation(line: 197, column: 11, scope: !180)
!193 = !DILocation(line: 197, column: 24, scope: !180)
!194 = !DILocation(line: 197, column: 27, scope: !180)
!195 = !DILocation(line: 197, column: 15, scope: !180)
!196 = !DILocation(line: 199, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !180, file: !41, line: 199, column: 6)
!198 = !DILocation(line: 199, column: 10, scope: !197)
!199 = !DILocation(line: 199, column: 8, scope: !197)
!200 = !DILocation(line: 199, column: 6, scope: !180)
!201 = !DILocation(line: 200, column: 10, scope: !197)
!202 = !DILocation(line: 200, column: 3, scope: !197)
!203 = !DILocation(line: 201, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !180, file: !41, line: 201, column: 6)
!205 = !DILocation(line: 201, column: 10, scope: !204)
!206 = !DILocation(line: 201, column: 8, scope: !204)
!207 = !DILocation(line: 201, column: 6, scope: !180)
!208 = !DILocation(line: 202, column: 10, scope: !204)
!209 = !DILocation(line: 202, column: 3, scope: !204)
!210 = !DILocation(line: 204, column: 9, scope: !180)
!211 = !DILocation(line: 204, column: 2, scope: !180)
!212 = !DILocation(line: 205, column: 1, scope: !180)
!213 = distinct !DISubprogram(name: "tar_entry_update_from_system", scope: !41, file: !41, line: 426, type: !214, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_entry", file: !4, line: 71, size: 640, align: 64, elements: !218)
!218 = !{!219, !220, !221, !223, !224, !225, !226, !227}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !217, file: !4, line: 73, baseType: !3, size: 32, align: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !4, line: 75, baseType: !11, size: 32, align: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !4, line: 77, baseType: !222, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "linkname", scope: !217, file: !4, line: 79, baseType: !222, size: 64, align: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !217, file: !4, line: 81, baseType: !80, size: 64, align: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !217, file: !4, line: 83, baseType: !85, size: 64, align: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !217, file: !4, line: 85, baseType: !88, size: 64, align: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !217, file: !4, line: 87, baseType: !228, size: 256, align: 64, offset: 384)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_stat", file: !229, line: 40, size: 256, align: 64, elements: !230)
!229 = !DIFile(filename: "../../lib/dpkg/file.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!230 = !{!231, !232, !233, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !228, file: !229, line: 41, baseType: !90, size: 32, align: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !228, file: !229, line: 42, baseType: !93, size: 32, align: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !228, file: !229, line: 43, baseType: !96, size: 32, align: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "uname", scope: !228, file: !229, line: 47, baseType: !222, size: 64, align: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !228, file: !229, line: 48, baseType: !222, size: 64, align: 64, offset: 192)
!236 = !DILocalVariable(name: "te", arg: 1, scope: !213, file: !41, line: 426, type: !216)
!237 = !DILocation(line: 426, column: 48, scope: !213)
!238 = !DILocalVariable(name: "passwd", scope: !213, file: !41, line: 428, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !241, line: 49, size: 384, align: 64, elements: !242)
!241 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!242 = !{!243, !244, !245, !246, !247, !248, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !240, file: !241, line: 51, baseType: !222, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !240, file: !241, line: 52, baseType: !222, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !240, file: !241, line: 53, baseType: !91, size: 32, align: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !240, file: !241, line: 54, baseType: !94, size: 32, align: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !240, file: !241, line: 55, baseType: !222, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !240, file: !241, line: 56, baseType: !222, size: 64, align: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !240, file: !241, line: 57, baseType: !222, size: 64, align: 64, offset: 320)
!250 = !DILocation(line: 428, column: 17, scope: !213)
!251 = !DILocalVariable(name: "group", scope: !213, file: !41, line: 429, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !254, line: 42, size: 256, align: 64, elements: !255)
!254 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!255 = !{!256, !257, !258, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !253, file: !254, line: 44, baseType: !222, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !253, file: !254, line: 45, baseType: !222, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !253, file: !254, line: 46, baseType: !94, size: 32, align: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !253, file: !254, line: 47, baseType: !260, size: 64, align: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!261 = !DILocation(line: 429, column: 16, scope: !213)
!262 = !DILocation(line: 431, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !213, file: !41, line: 431, column: 6)
!264 = !DILocation(line: 431, column: 10, scope: !263)
!265 = !DILocation(line: 431, column: 15, scope: !263)
!266 = !DILocation(line: 431, column: 6, scope: !213)
!267 = !DILocation(line: 432, column: 21, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !41, line: 431, column: 22)
!269 = !DILocation(line: 432, column: 25, scope: !268)
!270 = !DILocation(line: 432, column: 30, scope: !268)
!271 = !DILocation(line: 432, column: 12, scope: !268)
!272 = !DILocation(line: 432, column: 10, scope: !268)
!273 = !DILocation(line: 433, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !41, line: 433, column: 7)
!275 = !DILocation(line: 433, column: 7, scope: !268)
!276 = !DILocation(line: 434, column: 19, scope: !274)
!277 = !DILocation(line: 434, column: 27, scope: !274)
!278 = !DILocation(line: 434, column: 4, scope: !274)
!279 = !DILocation(line: 434, column: 8, scope: !274)
!280 = !DILocation(line: 434, column: 13, scope: !274)
!281 = !DILocation(line: 434, column: 17, scope: !274)
!282 = !DILocation(line: 435, column: 2, scope: !268)
!283 = !DILocation(line: 436, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !213, file: !41, line: 436, column: 6)
!285 = !DILocation(line: 436, column: 10, scope: !284)
!286 = !DILocation(line: 436, column: 15, scope: !284)
!287 = !DILocation(line: 436, column: 6, scope: !213)
!288 = !DILocation(line: 437, column: 20, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !41, line: 436, column: 22)
!290 = !DILocation(line: 437, column: 24, scope: !289)
!291 = !DILocation(line: 437, column: 29, scope: !289)
!292 = !DILocation(line: 437, column: 11, scope: !289)
!293 = !DILocation(line: 437, column: 9, scope: !289)
!294 = !DILocation(line: 438, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !289, file: !41, line: 438, column: 7)
!296 = !DILocation(line: 438, column: 7, scope: !289)
!297 = !DILocation(line: 439, column: 19, scope: !295)
!298 = !DILocation(line: 439, column: 26, scope: !295)
!299 = !DILocation(line: 439, column: 4, scope: !295)
!300 = !DILocation(line: 439, column: 8, scope: !295)
!301 = !DILocation(line: 439, column: 13, scope: !295)
!302 = !DILocation(line: 439, column: 17, scope: !295)
!303 = !DILocation(line: 440, column: 2, scope: !289)
!304 = !DILocation(line: 441, column: 1, scope: !213)
!305 = distinct !DISubprogram(name: "tar_extractor", scope: !41, file: !41, line: 444, type: !306, isLocal: false, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!306 = !DISubroutineType(types: !307)
!307 = !{!95, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_archive", file: !4, line: 105, size: 320, align: 64, elements: !310)
!310 = !{!311, !317, !318, !337}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !309, file: !4, line: 107, baseType: !312, size: 128, align: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dpkg_error", file: !33, line: 42, size: 128, align: 64, elements: !313)
!313 = !{!314, !315, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !312, file: !33, line: 43, baseType: !32, size: 32, align: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "syserrno", scope: !312, file: !33, line: 45, baseType: !95, size: 32, align: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !312, file: !33, line: 46, baseType: !222, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !309, file: !4, line: 110, baseType: !3, size: 32, align: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !309, file: !4, line: 113, baseType: !319, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_operations", file: !4, line: 95, size: 384, align: 64, elements: !322)
!322 = !{!323, !328, !333, !334, !335, !336}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !321, file: !4, line: 96, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "tar_read_func", file: !4, line: 92, baseType: !326)
!326 = !DISubroutineType(types: !327)
!327 = !{!95, !308, !222, !95}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "extract_file", scope: !321, file: !4, line: 98, baseType: !329, size: 64, align: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "tar_make_func", file: !4, line: 93, baseType: !331)
!331 = !DISubroutineType(types: !332)
!332 = !{!95, !308, !216}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !321, file: !4, line: 99, baseType: !329, size: 64, align: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !321, file: !4, line: 100, baseType: !329, size: 64, align: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !321, file: !4, line: 101, baseType: !329, size: 64, align: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !321, file: !4, line: 102, baseType: !329, size: 64, align: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !309, file: !4, line: 114, baseType: !338, size: 64, align: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!339 = !DILocalVariable(name: "tar", arg: 1, scope: !305, file: !41, line: 444, type: !308)
!340 = !DILocation(line: 444, column: 35, scope: !305)
!341 = !DILocalVariable(name: "status", scope: !305, file: !41, line: 446, type: !95)
!342 = !DILocation(line: 446, column: 6, scope: !305)
!343 = !DILocalVariable(name: "buffer", scope: !305, file: !41, line: 447, type: !344)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 4096, align: 8, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 512)
!347 = !DILocation(line: 447, column: 7, scope: !305)
!348 = !DILocalVariable(name: "h", scope: !305, file: !41, line: 448, type: !217)
!349 = !DILocation(line: 448, column: 19, scope: !305)
!350 = !DILocalVariable(name: "next_long_name", scope: !305, file: !41, line: 450, type: !222)
!351 = !DILocation(line: 450, column: 8, scope: !305)
!352 = !DILocalVariable(name: "next_long_link", scope: !305, file: !41, line: 450, type: !222)
!353 = !DILocation(line: 450, column: 25, scope: !305)
!354 = !DILocalVariable(name: "symlink_head", scope: !305, file: !41, line: 451, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tar_symlink_entry", file: !41, line: 415, size: 704, align: 64, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !41, line: 416, baseType: !355, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !356, file: !41, line: 417, baseType: !217, size: 640, align: 64, offset: 64)
!360 = !DILocation(line: 451, column: 28, scope: !305)
!361 = !DILocalVariable(name: "symlink_tail", scope: !305, file: !41, line: 451, type: !355)
!362 = !DILocation(line: 451, column: 43, scope: !305)
!363 = !DILocalVariable(name: "symlink_node", scope: !305, file: !41, line: 451, type: !355)
!364 = !DILocation(line: 451, column: 58, scope: !305)
!365 = !DILocation(line: 453, column: 17, scope: !305)
!366 = !DILocation(line: 454, column: 17, scope: !305)
!367 = !DILocation(line: 455, column: 30, scope: !305)
!368 = !DILocation(line: 455, column: 15, scope: !305)
!369 = !DILocation(line: 457, column: 4, scope: !305)
!370 = !DILocation(line: 457, column: 9, scope: !305)
!371 = !DILocation(line: 458, column: 4, scope: !305)
!372 = !DILocation(line: 458, column: 13, scope: !305)
!373 = !DILocation(line: 459, column: 4, scope: !305)
!374 = !DILocation(line: 459, column: 9, scope: !305)
!375 = !DILocation(line: 459, column: 15, scope: !305)
!376 = !DILocation(line: 460, column: 4, scope: !305)
!377 = !DILocation(line: 460, column: 9, scope: !305)
!378 = !DILocation(line: 460, column: 15, scope: !305)
!379 = !DILocation(line: 462, column: 2, scope: !305)
!380 = !DILocation(line: 462, column: 19, scope: !381)
!381 = !DILexicalBlockFile(scope: !305, file: !41, discriminator: 1)
!382 = !DILocation(line: 462, column: 24, scope: !381)
!383 = !DILocation(line: 462, column: 29, scope: !381)
!384 = !DILocation(line: 462, column: 34, scope: !381)
!385 = !DILocation(line: 462, column: 39, scope: !381)
!386 = !DILocation(line: 462, column: 17, scope: !381)
!387 = !DILocation(line: 462, column: 53, scope: !381)
!388 = !DILocation(line: 462, column: 2, scope: !381)
!389 = !DILocalVariable(name: "name_len", scope: !390, file: !41, line: 463, type: !95)
!390 = distinct !DILexicalBlock(scope: !305, file: !41, line: 462, column: 61)
!391 = !DILocation(line: 463, column: 7, scope: !390)
!392 = !DILocation(line: 465, column: 46, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !41, line: 465, column: 7)
!394 = !DILocation(line: 465, column: 25, scope: !393)
!395 = !DILocation(line: 465, column: 59, scope: !393)
!396 = !DILocation(line: 465, column: 64, scope: !393)
!397 = !DILocation(line: 465, column: 7, scope: !393)
!398 = !DILocation(line: 465, column: 69, scope: !393)
!399 = !DILocation(line: 465, column: 7, scope: !390)
!400 = !DILocation(line: 466, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !41, line: 466, column: 8)
!402 = distinct !DILexicalBlock(scope: !393, file: !41, line: 465, column: 74)
!403 = !DILocation(line: 466, column: 8, scope: !401)
!404 = !DILocation(line: 466, column: 18, scope: !401)
!405 = !DILocation(line: 466, column: 8, scope: !402)
!406 = !DILocation(line: 468, column: 12, scope: !407)
!407 = distinct !DILexicalBlock(scope: !401, file: !41, line: 466, column: 27)
!408 = !DILocation(line: 469, column: 4, scope: !407)
!409 = !DILocation(line: 470, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !401, file: !41, line: 469, column: 11)
!411 = !DILocation(line: 472, column: 4, scope: !402)
!412 = !DILocation(line: 473, column: 4, scope: !402)
!413 = !DILocation(line: 475, column: 9, scope: !414)
!414 = distinct !DILexicalBlock(scope: !390, file: !41, line: 475, column: 7)
!415 = !DILocation(line: 475, column: 14, scope: !414)
!416 = !DILocation(line: 475, column: 43, scope: !414)
!417 = !DILocation(line: 476, column: 9, scope: !414)
!418 = !DILocation(line: 476, column: 14, scope: !414)
!419 = !DILocation(line: 475, column: 7, scope: !420)
!420 = !DILexicalBlockFile(scope: !390, file: !41, discriminator: 1)
!421 = !DILocation(line: 477, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !41, line: 477, column: 8)
!423 = distinct !DILexicalBlock(scope: !414, file: !41, line: 476, column: 44)
!424 = !DILocation(line: 477, column: 8, scope: !423)
!425 = !DILocation(line: 478, column: 14, scope: !422)
!426 = !DILocation(line: 478, column: 7, scope: !422)
!427 = !DILocation(line: 478, column: 12, scope: !422)
!428 = !DILocation(line: 478, column: 5, scope: !422)
!429 = !DILocation(line: 480, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !423, file: !41, line: 480, column: 8)
!431 = !DILocation(line: 480, column: 8, scope: !423)
!432 = !DILocation(line: 481, column: 18, scope: !430)
!433 = !DILocation(line: 481, column: 7, scope: !430)
!434 = !DILocation(line: 481, column: 16, scope: !430)
!435 = !DILocation(line: 481, column: 5, scope: !430)
!436 = !DILocation(line: 483, column: 19, scope: !423)
!437 = !DILocation(line: 484, column: 19, scope: !423)
!438 = !DILocation(line: 485, column: 3, scope: !423)
!439 = !DILocation(line: 487, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !390, file: !41, line: 487, column: 7)
!441 = !DILocation(line: 487, column: 7, scope: !440)
!442 = !DILocation(line: 487, column: 17, scope: !440)
!443 = !DILocation(line: 487, column: 7, scope: !390)
!444 = !DILocation(line: 488, column: 29, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !41, line: 487, column: 26)
!446 = !DILocation(line: 488, column: 34, scope: !445)
!447 = !DILocation(line: 489, column: 27, scope: !445)
!448 = !DILocation(line: 488, column: 13, scope: !445)
!449 = !DILocation(line: 488, column: 11, scope: !445)
!450 = !DILocation(line: 490, column: 5, scope: !445)
!451 = !DILocation(line: 490, column: 9, scope: !445)
!452 = !DILocation(line: 491, column: 4, scope: !445)
!453 = !DILocation(line: 492, column: 4, scope: !445)
!454 = !DILocation(line: 495, column: 23, scope: !390)
!455 = !DILocation(line: 495, column: 14, scope: !390)
!456 = !DILocation(line: 495, column: 12, scope: !390)
!457 = !DILocation(line: 497, column: 13, scope: !390)
!458 = !DILocation(line: 497, column: 3, scope: !390)
!459 = !DILocation(line: 500, column: 15, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !41, line: 500, column: 8)
!461 = distinct !DILexicalBlock(scope: !390, file: !41, line: 497, column: 19)
!462 = !DILocation(line: 500, column: 24, scope: !460)
!463 = !DILocation(line: 500, column: 8, scope: !460)
!464 = !DILocation(line: 500, column: 10, scope: !460)
!465 = !DILocation(line: 500, column: 29, scope: !460)
!466 = !DILocation(line: 500, column: 8, scope: !461)
!467 = !DILocation(line: 501, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !460, file: !41, line: 500, column: 37)
!469 = !DILocation(line: 501, column: 19, scope: !468)
!470 = !DILocation(line: 501, column: 24, scope: !468)
!471 = !DILocation(line: 501, column: 37, scope: !468)
!472 = !DILocation(line: 501, column: 12, scope: !468)
!473 = !DILocation(line: 502, column: 5, scope: !468)
!474 = !DILocation(line: 500, column: 32, scope: !475)
!475 = !DILexicalBlockFile(scope: !460, file: !41, discriminator: 1)
!476 = !DILocation(line: 506, column: 15, scope: !477)
!477 = distinct !DILexicalBlock(scope: !461, file: !41, line: 506, column: 8)
!478 = !DILocation(line: 506, column: 24, scope: !477)
!479 = !DILocation(line: 506, column: 8, scope: !477)
!480 = !DILocation(line: 506, column: 10, scope: !477)
!481 = !DILocation(line: 506, column: 29, scope: !477)
!482 = !DILocation(line: 506, column: 8, scope: !461)
!483 = !DILocation(line: 507, column: 12, scope: !484)
!484 = distinct !DILexicalBlock(scope: !477, file: !41, line: 506, column: 37)
!485 = !DILocation(line: 507, column: 21, scope: !484)
!486 = !DILocation(line: 507, column: 5, scope: !484)
!487 = !DILocation(line: 507, column: 7, scope: !484)
!488 = !DILocation(line: 507, column: 26, scope: !484)
!489 = !DILocation(line: 508, column: 4, scope: !484)
!490 = !DILocation(line: 509, column: 13, scope: !461)
!491 = !DILocation(line: 509, column: 18, scope: !461)
!492 = !DILocation(line: 509, column: 23, scope: !461)
!493 = !DILocation(line: 509, column: 29, scope: !461)
!494 = !DILocation(line: 509, column: 11, scope: !461)
!495 = !DILocation(line: 510, column: 4, scope: !461)
!496 = !DILocation(line: 512, column: 13, scope: !461)
!497 = !DILocation(line: 512, column: 18, scope: !461)
!498 = !DILocation(line: 512, column: 23, scope: !461)
!499 = !DILocation(line: 512, column: 28, scope: !461)
!500 = !DILocation(line: 512, column: 11, scope: !461)
!501 = !DILocation(line: 513, column: 4, scope: !461)
!502 = !DILocation(line: 515, column: 19, scope: !461)
!503 = !DILocation(line: 515, column: 17, scope: !461)
!504 = !DILocation(line: 516, column: 4, scope: !461)
!505 = !DILocation(line: 516, column: 18, scope: !461)
!506 = !DILocation(line: 516, column: 23, scope: !461)
!507 = !DILocation(line: 517, column: 20, scope: !461)
!508 = !DILocation(line: 517, column: 34, scope: !461)
!509 = !DILocation(line: 517, column: 4, scope: !461)
!510 = !DILocation(line: 519, column: 8, scope: !511)
!511 = distinct !DILexicalBlock(scope: !461, file: !41, line: 519, column: 8)
!512 = !DILocation(line: 519, column: 8, scope: !461)
!513 = !DILocation(line: 520, column: 26, scope: !511)
!514 = !DILocation(line: 520, column: 5, scope: !511)
!515 = !DILocation(line: 520, column: 19, scope: !511)
!516 = !DILocation(line: 520, column: 24, scope: !511)
!517 = !DILocation(line: 522, column: 20, scope: !511)
!518 = !DILocation(line: 522, column: 18, scope: !511)
!519 = !DILocation(line: 523, column: 19, scope: !461)
!520 = !DILocation(line: 523, column: 17, scope: !461)
!521 = !DILocation(line: 524, column: 11, scope: !461)
!522 = !DILocation(line: 525, column: 4, scope: !461)
!523 = !DILocation(line: 529, column: 13, scope: !461)
!524 = !DILocation(line: 529, column: 18, scope: !461)
!525 = !DILocation(line: 529, column: 23, scope: !461)
!526 = !DILocation(line: 529, column: 29, scope: !461)
!527 = !DILocation(line: 529, column: 11, scope: !461)
!528 = !DILocation(line: 530, column: 4, scope: !461)
!529 = !DILocation(line: 532, column: 26, scope: !461)
!530 = !DILocation(line: 532, column: 13, scope: !461)
!531 = !DILocation(line: 532, column: 11, scope: !461)
!532 = !DILocation(line: 533, column: 4, scope: !461)
!533 = !DILocation(line: 535, column: 26, scope: !461)
!534 = !DILocation(line: 535, column: 13, scope: !461)
!535 = !DILocation(line: 535, column: 11, scope: !461)
!536 = !DILocation(line: 536, column: 4, scope: !461)
!537 = !DILocation(line: 541, column: 29, scope: !461)
!538 = !DILocation(line: 541, column: 34, scope: !461)
!539 = !DILocation(line: 542, column: 27, scope: !461)
!540 = !DILocation(line: 543, column: 30, scope: !461)
!541 = !DILocation(line: 541, column: 13, scope: !461)
!542 = !DILocation(line: 541, column: 11, scope: !461)
!543 = !DILocation(line: 544, column: 5, scope: !461)
!544 = !DILocation(line: 544, column: 9, scope: !461)
!545 = !DILocation(line: 545, column: 4, scope: !461)
!546 = !DILocation(line: 548, column: 29, scope: !461)
!547 = !DILocation(line: 548, column: 34, scope: !461)
!548 = !DILocation(line: 549, column: 27, scope: !461)
!549 = !DILocation(line: 550, column: 30, scope: !461)
!550 = !DILocation(line: 548, column: 13, scope: !461)
!551 = !DILocation(line: 548, column: 11, scope: !461)
!552 = !DILocation(line: 551, column: 5, scope: !461)
!553 = !DILocation(line: 551, column: 9, scope: !461)
!554 = !DILocation(line: 552, column: 4, scope: !461)
!555 = !DILocation(line: 555, column: 29, scope: !461)
!556 = !DILocation(line: 555, column: 34, scope: !461)
!557 = !DILocation(line: 556, column: 27, scope: !461)
!558 = !DILocation(line: 557, column: 30, scope: !461)
!559 = !DILocation(line: 555, column: 13, scope: !461)
!560 = !DILocation(line: 555, column: 11, scope: !461)
!561 = !DILocation(line: 558, column: 5, scope: !461)
!562 = !DILocation(line: 558, column: 9, scope: !461)
!563 = !DILocation(line: 559, column: 4, scope: !461)
!564 = !DILocation(line: 561, column: 29, scope: !461)
!565 = !DILocation(line: 561, column: 34, scope: !461)
!566 = !DILocation(line: 562, column: 27, scope: !461)
!567 = !DILocation(line: 563, column: 30, scope: !461)
!568 = !DILocation(line: 561, column: 13, scope: !461)
!569 = !DILocation(line: 561, column: 11, scope: !461)
!570 = !DILocation(line: 564, column: 5, scope: !461)
!571 = !DILocation(line: 564, column: 9, scope: !461)
!572 = !DILocation(line: 565, column: 3, scope: !461)
!573 = !DILocation(line: 566, column: 3, scope: !390)
!574 = !DILocation(line: 567, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !390, file: !41, line: 567, column: 7)
!576 = !DILocation(line: 567, column: 14, scope: !575)
!577 = !DILocation(line: 567, column: 7, scope: !390)
!578 = !DILocation(line: 569, column: 4, scope: !575)
!579 = !DILocation(line: 462, column: 2, scope: !580)
!580 = !DILexicalBlockFile(scope: !305, file: !41, discriminator: 2)
!581 = distinct !{!581, !379}
!582 = !DILocation(line: 572, column: 2, scope: !305)
!583 = !DILocation(line: 572, column: 9, scope: !381)
!584 = !DILocation(line: 572, column: 2, scope: !381)
!585 = !DILocation(line: 573, column: 18, scope: !586)
!586 = distinct !DILexicalBlock(scope: !305, file: !41, line: 572, column: 23)
!587 = !DILocation(line: 573, column: 32, scope: !586)
!588 = !DILocation(line: 573, column: 16, scope: !586)
!589 = !DILocation(line: 574, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !41, line: 574, column: 7)
!591 = !DILocation(line: 574, column: 14, scope: !590)
!592 = !DILocation(line: 574, column: 7, scope: !586)
!593 = !DILocation(line: 575, column: 13, scope: !590)
!594 = !DILocation(line: 575, column: 18, scope: !590)
!595 = !DILocation(line: 575, column: 23, scope: !590)
!596 = !DILocation(line: 575, column: 31, scope: !590)
!597 = !DILocation(line: 575, column: 37, scope: !590)
!598 = !DILocation(line: 575, column: 51, scope: !590)
!599 = !DILocation(line: 575, column: 11, scope: !590)
!600 = !DILocation(line: 575, column: 4, scope: !590)
!601 = !DILocation(line: 576, column: 22, scope: !586)
!602 = !DILocation(line: 576, column: 36, scope: !586)
!603 = !DILocation(line: 576, column: 3, scope: !586)
!604 = !DILocation(line: 577, column: 8, scope: !586)
!605 = !DILocation(line: 577, column: 3, scope: !586)
!606 = !DILocation(line: 578, column: 18, scope: !586)
!607 = !DILocation(line: 578, column: 16, scope: !586)
!608 = !DILocation(line: 572, column: 2, scope: !580)
!609 = distinct !{!609, !582}
!610 = !DILocation(line: 582, column: 7, scope: !305)
!611 = !DILocation(line: 582, column: 2, scope: !305)
!612 = !DILocation(line: 583, column: 7, scope: !305)
!613 = !DILocation(line: 583, column: 2, scope: !305)
!614 = !DILocation(line: 585, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !305, file: !41, line: 585, column: 6)
!616 = !DILocation(line: 585, column: 13, scope: !615)
!617 = !DILocation(line: 585, column: 6, scope: !305)
!618 = !DILocation(line: 586, column: 28, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !41, line: 585, column: 18)
!620 = !DILocation(line: 586, column: 33, scope: !619)
!621 = !DILocation(line: 587, column: 26, scope: !619)
!622 = !DILocation(line: 586, column: 12, scope: !619)
!623 = !DILocation(line: 586, column: 10, scope: !619)
!624 = !DILocation(line: 588, column: 4, scope: !619)
!625 = !DILocation(line: 588, column: 8, scope: !619)
!626 = !DILocation(line: 589, column: 2, scope: !619)
!627 = !DILocation(line: 592, column: 9, scope: !305)
!628 = !DILocation(line: 592, column: 2, scope: !305)
!629 = distinct !DISubprogram(name: "tar_header_decode", scope: !41, file: !41, line: 277, type: !630, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!630 = !DISubroutineType(types: !631)
!631 = !{!95, !39, !216, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!633 = !DILocalVariable(name: "h", arg: 1, scope: !629, file: !41, line: 277, type: !39)
!634 = !DILocation(line: 277, column: 38, scope: !629)
!635 = !DILocalVariable(name: "d", arg: 2, scope: !629, file: !41, line: 277, type: !216)
!636 = !DILocation(line: 277, column: 59, scope: !629)
!637 = !DILocalVariable(name: "err", arg: 3, scope: !629, file: !41, line: 277, type: !632)
!638 = !DILocation(line: 277, column: 81, scope: !629)
!639 = !DILocalVariable(name: "checksum", scope: !629, file: !41, line: 279, type: !84)
!640 = !DILocation(line: 279, column: 7, scope: !629)
!641 = !DILocation(line: 281, column: 3, scope: !629)
!642 = !DILocation(line: 281, column: 7, scope: !629)
!643 = !DILocation(line: 283, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !629, file: !41, line: 283, column: 6)
!645 = !DILocation(line: 283, column: 16, scope: !644)
!646 = !DILocation(line: 283, column: 6, scope: !644)
!647 = !DILocation(line: 283, column: 42, scope: !644)
!648 = !DILocation(line: 283, column: 6, scope: !629)
!649 = !DILocation(line: 284, column: 3, scope: !644)
!650 = !DILocation(line: 284, column: 6, scope: !644)
!651 = !DILocation(line: 284, column: 13, scope: !644)
!652 = !DILocation(line: 285, column: 18, scope: !653)
!653 = distinct !DILexicalBlock(scope: !644, file: !41, line: 285, column: 11)
!654 = !DILocation(line: 285, column: 21, scope: !653)
!655 = !DILocation(line: 285, column: 11, scope: !653)
!656 = !DILocation(line: 285, column: 47, scope: !653)
!657 = !DILocation(line: 285, column: 11, scope: !644)
!658 = !DILocation(line: 286, column: 3, scope: !653)
!659 = !DILocation(line: 286, column: 6, scope: !653)
!660 = !DILocation(line: 286, column: 13, scope: !653)
!661 = !DILocation(line: 288, column: 3, scope: !653)
!662 = !DILocation(line: 288, column: 6, scope: !653)
!663 = !DILocation(line: 288, column: 13, scope: !653)
!664 = !DILocation(line: 290, column: 31, scope: !629)
!665 = !DILocation(line: 290, column: 34, scope: !629)
!666 = !DILocation(line: 290, column: 12, scope: !629)
!667 = !DILocation(line: 290, column: 2, scope: !629)
!668 = !DILocation(line: 290, column: 5, scope: !629)
!669 = !DILocation(line: 290, column: 10, scope: !629)
!670 = !DILocation(line: 291, column: 6, scope: !671)
!671 = distinct !DILexicalBlock(scope: !629, file: !41, line: 291, column: 6)
!672 = !DILocation(line: 291, column: 9, scope: !671)
!673 = !DILocation(line: 291, column: 14, scope: !671)
!674 = !DILocation(line: 291, column: 6, scope: !629)
!675 = !DILocation(line: 292, column: 3, scope: !671)
!676 = !DILocation(line: 292, column: 6, scope: !671)
!677 = !DILocation(line: 292, column: 11, scope: !671)
!678 = !DILocation(line: 295, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !629, file: !41, line: 295, column: 6)
!680 = !DILocation(line: 295, column: 9, scope: !679)
!681 = !DILocation(line: 295, column: 16, scope: !679)
!682 = !DILocation(line: 295, column: 36, scope: !679)
!683 = !DILocation(line: 295, column: 39, scope: !684)
!684 = !DILexicalBlockFile(scope: !679, file: !41, discriminator: 1)
!685 = !DILocation(line: 295, column: 42, scope: !684)
!686 = !DILocation(line: 295, column: 52, scope: !684)
!687 = !DILocation(line: 295, column: 6, scope: !684)
!688 = !DILocation(line: 296, column: 40, scope: !679)
!689 = !DILocation(line: 296, column: 13, scope: !679)
!690 = !DILocation(line: 296, column: 3, scope: !679)
!691 = !DILocation(line: 296, column: 6, scope: !679)
!692 = !DILocation(line: 296, column: 11, scope: !679)
!693 = !DILocation(line: 298, column: 23, scope: !679)
!694 = !DILocation(line: 298, column: 26, scope: !679)
!695 = !DILocation(line: 298, column: 13, scope: !679)
!696 = !DILocation(line: 298, column: 3, scope: !679)
!697 = !DILocation(line: 298, column: 6, scope: !679)
!698 = !DILocation(line: 298, column: 11, scope: !679)
!699 = !DILocation(line: 299, column: 26, scope: !629)
!700 = !DILocation(line: 299, column: 29, scope: !629)
!701 = !DILocation(line: 299, column: 16, scope: !629)
!702 = !DILocation(line: 299, column: 2, scope: !629)
!703 = !DILocation(line: 299, column: 5, scope: !629)
!704 = !DILocation(line: 299, column: 14, scope: !629)
!705 = !DILocation(line: 300, column: 42, scope: !629)
!706 = !DILocation(line: 300, column: 17, scope: !629)
!707 = !DILocation(line: 300, column: 2, scope: !629)
!708 = !DILocation(line: 300, column: 5, scope: !629)
!709 = !DILocation(line: 300, column: 10, scope: !629)
!710 = !DILocation(line: 300, column: 15, scope: !629)
!711 = !DILocation(line: 303, column: 29, scope: !629)
!712 = !DILocation(line: 303, column: 32, scope: !629)
!713 = !DILocation(line: 303, column: 19, scope: !629)
!714 = !DILocation(line: 303, column: 2, scope: !629)
!715 = !DILocation(line: 303, column: 5, scope: !629)
!716 = !DILocation(line: 303, column: 10, scope: !629)
!717 = !DILocation(line: 304, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !629, file: !41, line: 304, column: 5)
!719 = !DILocation(line: 304, column: 6, scope: !718)
!720 = !DILocation(line: 304, column: 5, scope: !718)
!721 = !DILocation(line: 304, column: 5, scope: !629)
!722 = !DILocation(line: 305, column: 25, scope: !718)
!723 = !DILocation(line: 305, column: 29, scope: !718)
!724 = !DILocation(line: 305, column: 10, scope: !725)
!725 = !DILexicalBlockFile(scope: !718, file: !41, discriminator: 1)
!726 = !DILocation(line: 305, column: 3, scope: !718)
!727 = !DILocation(line: 306, column: 31, scope: !629)
!728 = !DILocation(line: 306, column: 34, scope: !629)
!729 = !DILocation(line: 306, column: 21, scope: !629)
!730 = !DILocation(line: 306, column: 2, scope: !629)
!731 = !DILocation(line: 306, column: 5, scope: !629)
!732 = !DILocation(line: 306, column: 11, scope: !629)
!733 = !DILocation(line: 307, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !629, file: !41, line: 307, column: 5)
!735 = !DILocation(line: 307, column: 6, scope: !734)
!736 = !DILocation(line: 307, column: 5, scope: !734)
!737 = !DILocation(line: 307, column: 5, scope: !629)
!738 = !DILocation(line: 308, column: 25, scope: !734)
!739 = !DILocation(line: 308, column: 29, scope: !734)
!740 = !DILocation(line: 308, column: 10, scope: !741)
!741 = !DILexicalBlockFile(scope: !734, file: !41, discriminator: 1)
!742 = !DILocation(line: 308, column: 3, scope: !734)
!743 = !DILocation(line: 310, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !629, file: !41, line: 310, column: 6)
!745 = !DILocation(line: 310, column: 9, scope: !744)
!746 = !DILocation(line: 310, column: 14, scope: !744)
!747 = !DILocation(line: 310, column: 38, scope: !744)
!748 = !DILocation(line: 310, column: 41, scope: !749)
!749 = !DILexicalBlockFile(scope: !744, file: !41, discriminator: 1)
!750 = !DILocation(line: 310, column: 44, scope: !749)
!751 = !DILocation(line: 310, column: 49, scope: !749)
!752 = !DILocation(line: 310, column: 6, scope: !749)
!753 = !DILocation(line: 311, column: 28, scope: !744)
!754 = !DILocation(line: 311, column: 31, scope: !744)
!755 = !DILocation(line: 311, column: 18, scope: !744)
!756 = !DILocation(line: 311, column: 11, scope: !744)
!757 = !DILocation(line: 311, column: 18, scope: !749)
!758 = !DILocation(line: 311, column: 11, scope: !759)
!759 = !DILexicalBlockFile(scope: !744, file: !41, discriminator: 2)
!760 = !DILocation(line: 311, column: 3, scope: !744)
!761 = !DILocation(line: 311, column: 6, scope: !744)
!762 = !DILocation(line: 311, column: 10, scope: !744)
!763 = !DILocation(line: 314, column: 11, scope: !744)
!764 = !DILocation(line: 314, column: 3, scope: !744)
!765 = !DILocation(line: 314, column: 6, scope: !744)
!766 = !DILocation(line: 314, column: 10, scope: !744)
!767 = !DILocation(line: 316, column: 7, scope: !768)
!768 = distinct !DILexicalBlock(scope: !629, file: !41, line: 316, column: 6)
!769 = !DILocation(line: 316, column: 10, scope: !768)
!770 = !DILocation(line: 316, column: 6, scope: !768)
!771 = !DILocation(line: 316, column: 6, scope: !629)
!772 = !DILocation(line: 317, column: 29, scope: !768)
!773 = !DILocation(line: 317, column: 32, scope: !768)
!774 = !DILocation(line: 317, column: 19, scope: !768)
!775 = !DILocation(line: 317, column: 3, scope: !768)
!776 = !DILocation(line: 317, column: 6, scope: !768)
!777 = !DILocation(line: 317, column: 11, scope: !768)
!778 = !DILocation(line: 317, column: 17, scope: !768)
!779 = !DILocation(line: 319, column: 3, scope: !768)
!780 = !DILocation(line: 319, column: 6, scope: !768)
!781 = !DILocation(line: 319, column: 11, scope: !768)
!782 = !DILocation(line: 319, column: 17, scope: !768)
!783 = !DILocation(line: 320, column: 33, scope: !629)
!784 = !DILocation(line: 320, column: 36, scope: !629)
!785 = !DILocation(line: 320, column: 23, scope: !629)
!786 = !DILocation(line: 320, column: 16, scope: !629)
!787 = !DILocation(line: 320, column: 2, scope: !629)
!788 = !DILocation(line: 320, column: 5, scope: !629)
!789 = !DILocation(line: 320, column: 10, scope: !629)
!790 = !DILocation(line: 320, column: 14, scope: !629)
!791 = !DILocation(line: 321, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !629, file: !41, line: 321, column: 5)
!793 = !DILocation(line: 321, column: 6, scope: !792)
!794 = !DILocation(line: 321, column: 5, scope: !792)
!795 = !DILocation(line: 321, column: 5, scope: !629)
!796 = !DILocation(line: 322, column: 25, scope: !792)
!797 = !DILocation(line: 322, column: 29, scope: !792)
!798 = !DILocation(line: 322, column: 10, scope: !799)
!799 = !DILexicalBlockFile(scope: !792, file: !41, discriminator: 1)
!800 = !DILocation(line: 322, column: 3, scope: !792)
!801 = !DILocation(line: 324, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !629, file: !41, line: 324, column: 6)
!803 = !DILocation(line: 324, column: 10, scope: !802)
!804 = !DILocation(line: 324, column: 6, scope: !802)
!805 = !DILocation(line: 324, column: 6, scope: !629)
!806 = !DILocation(line: 325, column: 29, scope: !802)
!807 = !DILocation(line: 325, column: 32, scope: !802)
!808 = !DILocation(line: 325, column: 19, scope: !802)
!809 = !DILocation(line: 325, column: 3, scope: !802)
!810 = !DILocation(line: 325, column: 6, scope: !802)
!811 = !DILocation(line: 325, column: 11, scope: !802)
!812 = !DILocation(line: 325, column: 17, scope: !802)
!813 = !DILocation(line: 327, column: 3, scope: !802)
!814 = !DILocation(line: 327, column: 6, scope: !802)
!815 = !DILocation(line: 327, column: 11, scope: !802)
!816 = !DILocation(line: 327, column: 17, scope: !802)
!817 = !DILocation(line: 328, column: 33, scope: !629)
!818 = !DILocation(line: 328, column: 36, scope: !629)
!819 = !DILocation(line: 328, column: 23, scope: !629)
!820 = !DILocation(line: 328, column: 16, scope: !629)
!821 = !DILocation(line: 328, column: 2, scope: !629)
!822 = !DILocation(line: 328, column: 5, scope: !629)
!823 = !DILocation(line: 328, column: 10, scope: !629)
!824 = !DILocation(line: 328, column: 14, scope: !629)
!825 = !DILocation(line: 329, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !629, file: !41, line: 329, column: 5)
!827 = !DILocation(line: 329, column: 6, scope: !826)
!828 = !DILocation(line: 329, column: 5, scope: !826)
!829 = !DILocation(line: 329, column: 5, scope: !629)
!830 = !DILocation(line: 330, column: 25, scope: !826)
!831 = !DILocation(line: 330, column: 29, scope: !826)
!832 = !DILocation(line: 330, column: 10, scope: !833)
!833 = !DILexicalBlockFile(scope: !826, file: !41, discriminator: 1)
!834 = !DILocation(line: 330, column: 3, scope: !826)
!835 = !DILocation(line: 332, column: 23, scope: !629)
!836 = !DILocation(line: 332, column: 26, scope: !629)
!837 = !DILocation(line: 332, column: 13, scope: !629)
!838 = !DILocation(line: 332, column: 11, scope: !629)
!839 = !DILocation(line: 333, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !629, file: !41, line: 333, column: 5)
!841 = !DILocation(line: 333, column: 6, scope: !840)
!842 = !DILocation(line: 333, column: 5, scope: !840)
!843 = !DILocation(line: 333, column: 5, scope: !629)
!844 = !DILocation(line: 334, column: 25, scope: !840)
!845 = !DILocation(line: 334, column: 29, scope: !840)
!846 = !DILocation(line: 334, column: 10, scope: !847)
!847 = !DILexicalBlockFile(scope: !840, file: !41, discriminator: 1)
!848 = !DILocation(line: 334, column: 3, scope: !840)
!849 = !DILocation(line: 336, column: 26, scope: !850)
!850 = distinct !DILexicalBlock(scope: !629, file: !41, line: 336, column: 6)
!851 = !DILocation(line: 336, column: 6, scope: !850)
!852 = !DILocation(line: 336, column: 32, scope: !850)
!853 = !DILocation(line: 336, column: 29, scope: !850)
!854 = !DILocation(line: 336, column: 6, scope: !629)
!855 = !DILocation(line: 337, column: 25, scope: !850)
!856 = !DILocation(line: 337, column: 29, scope: !850)
!857 = !DILocation(line: 337, column: 10, scope: !858)
!858 = !DILexicalBlockFile(scope: !850, file: !41, discriminator: 1)
!859 = !DILocation(line: 337, column: 3, scope: !850)
!860 = !DILocation(line: 339, column: 2, scope: !629)
!861 = !DILocation(line: 340, column: 1, scope: !629)
!862 = distinct !DISubprogram(name: "tar_entry_destroy", scope: !41, file: !41, line: 405, type: !214, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!863 = !DILocalVariable(name: "te", arg: 1, scope: !862, file: !41, line: 405, type: !216)
!864 = !DILocation(line: 405, column: 37, scope: !862)
!865 = !DILocation(line: 407, column: 7, scope: !862)
!866 = !DILocation(line: 407, column: 11, scope: !862)
!867 = !DILocation(line: 407, column: 2, scope: !862)
!868 = !DILocation(line: 408, column: 7, scope: !862)
!869 = !DILocation(line: 408, column: 11, scope: !862)
!870 = !DILocation(line: 408, column: 2, scope: !862)
!871 = !DILocation(line: 409, column: 7, scope: !862)
!872 = !DILocation(line: 409, column: 11, scope: !862)
!873 = !DILocation(line: 409, column: 16, scope: !862)
!874 = !DILocation(line: 409, column: 2, scope: !862)
!875 = !DILocation(line: 410, column: 7, scope: !862)
!876 = !DILocation(line: 410, column: 11, scope: !862)
!877 = !DILocation(line: 410, column: 16, scope: !862)
!878 = !DILocation(line: 410, column: 2, scope: !862)
!879 = !DILocation(line: 412, column: 9, scope: !862)
!880 = !DILocation(line: 412, column: 2, scope: !862)
!881 = !DILocation(line: 413, column: 1, scope: !862)
!882 = distinct !DISubprogram(name: "tar_entry_copy", scope: !41, file: !41, line: 391, type: !883, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !216, !216}
!885 = !DILocalVariable(name: "dst", arg: 1, scope: !882, file: !41, line: 391, type: !216)
!886 = !DILocation(line: 391, column: 34, scope: !882)
!887 = !DILocalVariable(name: "src", arg: 2, scope: !882, file: !41, line: 391, type: !216)
!888 = !DILocation(line: 391, column: 57, scope: !882)
!889 = !DILocation(line: 393, column: 9, scope: !882)
!890 = !DILocation(line: 393, column: 2, scope: !882)
!891 = !DILocation(line: 393, column: 14, scope: !882)
!892 = !DILocation(line: 395, column: 23, scope: !882)
!893 = !DILocation(line: 395, column: 28, scope: !882)
!894 = !DILocation(line: 395, column: 14, scope: !882)
!895 = !DILocation(line: 395, column: 2, scope: !882)
!896 = !DILocation(line: 395, column: 7, scope: !882)
!897 = !DILocation(line: 395, column: 12, scope: !882)
!898 = !DILocation(line: 396, column: 27, scope: !882)
!899 = !DILocation(line: 396, column: 32, scope: !882)
!900 = !DILocation(line: 396, column: 18, scope: !882)
!901 = !DILocation(line: 396, column: 2, scope: !882)
!902 = !DILocation(line: 396, column: 7, scope: !882)
!903 = !DILocation(line: 396, column: 16, scope: !882)
!904 = !DILocation(line: 398, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !882, file: !41, line: 398, column: 6)
!906 = !DILocation(line: 398, column: 11, scope: !905)
!907 = !DILocation(line: 398, column: 16, scope: !905)
!908 = !DILocation(line: 398, column: 6, scope: !882)
!909 = !DILocation(line: 399, column: 30, scope: !905)
!910 = !DILocation(line: 399, column: 35, scope: !905)
!911 = !DILocation(line: 399, column: 40, scope: !905)
!912 = !DILocation(line: 399, column: 21, scope: !905)
!913 = !DILocation(line: 399, column: 3, scope: !905)
!914 = !DILocation(line: 399, column: 8, scope: !905)
!915 = !DILocation(line: 399, column: 13, scope: !905)
!916 = !DILocation(line: 399, column: 19, scope: !905)
!917 = !DILocation(line: 400, column: 6, scope: !918)
!918 = distinct !DILexicalBlock(scope: !882, file: !41, line: 400, column: 6)
!919 = !DILocation(line: 400, column: 11, scope: !918)
!920 = !DILocation(line: 400, column: 16, scope: !918)
!921 = !DILocation(line: 400, column: 6, scope: !882)
!922 = !DILocation(line: 401, column: 30, scope: !918)
!923 = !DILocation(line: 401, column: 35, scope: !918)
!924 = !DILocation(line: 401, column: 40, scope: !918)
!925 = !DILocation(line: 401, column: 21, scope: !918)
!926 = !DILocation(line: 401, column: 3, scope: !918)
!927 = !DILocation(line: 401, column: 8, scope: !918)
!928 = !DILocation(line: 401, column: 13, scope: !918)
!929 = !DILocation(line: 401, column: 19, scope: !918)
!930 = !DILocation(line: 402, column: 1, scope: !882)
!931 = distinct !DISubprogram(name: "tar_gnu_long", scope: !41, file: !41, line: 354, type: !932, isLocal: true, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!932 = !DISubroutineType(types: !933)
!933 = !{!95, !308, !216, !260}
!934 = !DILocalVariable(name: "tar", arg: 1, scope: !931, file: !41, line: 354, type: !308)
!935 = !DILocation(line: 354, column: 34, scope: !931)
!936 = !DILocalVariable(name: "te", arg: 2, scope: !931, file: !41, line: 354, type: !216)
!937 = !DILocation(line: 354, column: 57, scope: !931)
!938 = !DILocalVariable(name: "longp", arg: 3, scope: !931, file: !41, line: 354, type: !260)
!939 = !DILocation(line: 354, column: 68, scope: !931)
!940 = !DILocalVariable(name: "buf", scope: !931, file: !41, line: 356, type: !344)
!941 = !DILocation(line: 356, column: 7, scope: !931)
!942 = !DILocalVariable(name: "bp", scope: !931, file: !41, line: 357, type: !222)
!943 = !DILocation(line: 357, column: 8, scope: !931)
!944 = !DILocalVariable(name: "status", scope: !931, file: !41, line: 358, type: !95)
!945 = !DILocation(line: 358, column: 6, scope: !931)
!946 = !DILocalVariable(name: "long_read", scope: !931, file: !41, line: 359, type: !95)
!947 = !DILocation(line: 359, column: 6, scope: !931)
!948 = !DILocation(line: 361, column: 8, scope: !931)
!949 = !DILocation(line: 361, column: 7, scope: !931)
!950 = !DILocation(line: 361, column: 2, scope: !931)
!951 = !DILocation(line: 362, column: 25, scope: !931)
!952 = !DILocation(line: 362, column: 29, scope: !931)
!953 = !DILocation(line: 362, column: 16, scope: !931)
!954 = !DILocation(line: 362, column: 14, scope: !931)
!955 = !DILocation(line: 362, column: 3, scope: !931)
!956 = !DILocation(line: 362, column: 9, scope: !931)
!957 = !DILocation(line: 364, column: 19, scope: !958)
!958 = distinct !DILexicalBlock(scope: !931, file: !41, line: 364, column: 2)
!959 = !DILocation(line: 364, column: 23, scope: !958)
!960 = !DILocation(line: 364, column: 17, scope: !958)
!961 = !DILocation(line: 364, column: 7, scope: !958)
!962 = !DILocation(line: 364, column: 29, scope: !963)
!963 = !DILexicalBlockFile(scope: !964, file: !41, discriminator: 1)
!964 = distinct !DILexicalBlock(scope: !958, file: !41, line: 364, column: 2)
!965 = !DILocation(line: 364, column: 39, scope: !963)
!966 = !DILocation(line: 364, column: 2, scope: !963)
!967 = !DILocalVariable(name: "copysize", scope: !968, file: !41, line: 365, type: !95)
!968 = distinct !DILexicalBlock(scope: !964, file: !41, line: 364, column: 62)
!969 = !DILocation(line: 365, column: 7, scope: !968)
!970 = !DILocation(line: 367, column: 12, scope: !968)
!971 = !DILocation(line: 367, column: 17, scope: !968)
!972 = !DILocation(line: 367, column: 22, scope: !968)
!973 = !DILocation(line: 367, column: 27, scope: !968)
!974 = !DILocation(line: 367, column: 32, scope: !968)
!975 = !DILocation(line: 367, column: 10, scope: !968)
!976 = !DILocation(line: 368, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !968, file: !41, line: 368, column: 7)
!978 = !DILocation(line: 368, column: 14, scope: !977)
!979 = !DILocation(line: 368, column: 7, scope: !968)
!980 = !DILocation(line: 369, column: 11, scope: !977)
!981 = !DILocation(line: 369, column: 4, scope: !977)
!982 = !DILocation(line: 372, column: 8, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !41, line: 372, column: 8)
!984 = distinct !DILexicalBlock(scope: !977, file: !41, line: 370, column: 8)
!985 = !DILocation(line: 372, column: 15, scope: !983)
!986 = !DILocation(line: 372, column: 8, scope: !984)
!987 = !DILocation(line: 373, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !41, line: 372, column: 20)
!989 = !DILocation(line: 373, column: 10, scope: !988)
!990 = !DILocation(line: 374, column: 30, scope: !988)
!991 = !DILocation(line: 374, column: 35, scope: !988)
!992 = !DILocation(line: 375, column: 28, scope: !988)
!993 = !DILocation(line: 374, column: 14, scope: !988)
!994 = !DILocation(line: 374, column: 12, scope: !988)
!995 = !DILocation(line: 376, column: 4, scope: !988)
!996 = !DILocation(line: 379, column: 4, scope: !984)
!997 = !DILocation(line: 382, column: 16, scope: !968)
!998 = !DILocation(line: 382, column: 27, scope: !968)
!999 = !DILocation(line: 382, column: 15, scope: !968)
!1000 = !DILocation(line: 382, column: 38, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !968, file: !41, discriminator: 1)
!1002 = !DILocation(line: 382, column: 15, scope: !1001)
!1003 = !DILocation(line: 382, column: 15, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !968, file: !41, discriminator: 2)
!1005 = !DILocation(line: 382, column: 15, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !968, file: !41, discriminator: 3)
!1007 = !DILocation(line: 382, column: 12, scope: !1006)
!1008 = !DILocation(line: 383, column: 10, scope: !968)
!1009 = !DILocation(line: 383, column: 3, scope: !968)
!1010 = !DILocation(line: 383, column: 19, scope: !968)
!1011 = !DILocation(line: 384, column: 9, scope: !968)
!1012 = !DILocation(line: 384, column: 6, scope: !968)
!1013 = !DILocation(line: 385, column: 2, scope: !968)
!1014 = !DILocation(line: 364, column: 54, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !964, file: !41, discriminator: 2)
!1016 = !DILocation(line: 364, column: 2, scope: !1015)
!1017 = distinct !{!1017, !1018}
!1018 = !DILocation(line: 364, column: 2, scope: !931)
!1019 = !DILocation(line: 387, column: 9, scope: !931)
!1020 = !DILocation(line: 387, column: 2, scope: !931)
!1021 = distinct !DISubprogram(name: "tar_atol256", scope: !41, file: !41, line: 133, type: !133, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!1022 = !DILocalVariable(name: "s", arg: 1, scope: !1021, file: !41, line: 133, type: !105)
!1023 = !DILocation(line: 133, column: 25, scope: !1021)
!1024 = !DILocalVariable(name: "size", arg: 2, scope: !1021, file: !41, line: 133, type: !107)
!1025 = !DILocation(line: 133, column: 35, scope: !1021)
!1026 = !DILocalVariable(name: "min", arg: 3, scope: !1021, file: !41, line: 133, type: !135)
!1027 = !DILocation(line: 133, column: 50, scope: !1021)
!1028 = !DILocalVariable(name: "max", arg: 4, scope: !1021, file: !41, line: 133, type: !77)
!1029 = !DILocation(line: 133, column: 65, scope: !1021)
!1030 = !DILocalVariable(name: "n", scope: !1021, file: !41, line: 135, type: !77)
!1031 = !DILocation(line: 135, column: 12, scope: !1021)
!1032 = !DILocalVariable(name: "c", scope: !1021, file: !41, line: 136, type: !76)
!1033 = !DILocation(line: 136, column: 16, scope: !1021)
!1034 = !DILocalVariable(name: "sign", scope: !1021, file: !41, line: 137, type: !95)
!1035 = !DILocation(line: 137, column: 6, scope: !1021)
!1036 = !DILocation(line: 142, column: 8, scope: !1021)
!1037 = !DILocation(line: 142, column: 6, scope: !1021)
!1038 = !DILocation(line: 142, column: 4, scope: !1021)
!1039 = !DILocation(line: 143, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1021, file: !41, line: 143, column: 6)
!1041 = !DILocation(line: 143, column: 8, scope: !1040)
!1042 = !DILocation(line: 143, column: 6, scope: !1021)
!1043 = !DILocation(line: 144, column: 5, scope: !1040)
!1044 = !DILocation(line: 144, column: 3, scope: !1040)
!1045 = !DILocation(line: 146, column: 5, scope: !1040)
!1046 = !DILocation(line: 147, column: 9, scope: !1021)
!1047 = !DILocation(line: 147, column: 7, scope: !1021)
!1048 = !DILocation(line: 150, column: 2, scope: !1021)
!1049 = !DILocation(line: 150, column: 9, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1021, file: !41, discriminator: 1)
!1051 = !DILocation(line: 150, column: 14, scope: !1050)
!1052 = !DILocation(line: 150, column: 2, scope: !1050)
!1053 = !DILocation(line: 151, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !41, line: 151, column: 7)
!1055 = distinct !DILexicalBlock(scope: !1021, file: !41, line: 150, column: 35)
!1056 = !DILocation(line: 151, column: 12, scope: !1054)
!1057 = !DILocation(line: 151, column: 9, scope: !1054)
!1058 = !DILocation(line: 151, column: 7, scope: !1055)
!1059 = !DILocation(line: 152, column: 32, scope: !1054)
!1060 = !DILocation(line: 152, column: 50, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1054, file: !41, discriminator: 1)
!1062 = !DILocation(line: 152, column: 32, scope: !1061)
!1063 = !DILocation(line: 152, column: 56, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1054, file: !41, discriminator: 2)
!1065 = !DILocation(line: 152, column: 32, scope: !1064)
!1066 = !DILocation(line: 152, column: 32, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1054, file: !41, discriminator: 3)
!1068 = !DILocation(line: 152, column: 11, scope: !1067)
!1069 = !DILocation(line: 152, column: 4, scope: !1067)
!1070 = !DILocation(line: 153, column: 9, scope: !1055)
!1071 = !DILocation(line: 153, column: 7, scope: !1055)
!1072 = !DILocation(line: 153, column: 5, scope: !1055)
!1073 = !DILocation(line: 154, column: 7, scope: !1055)
!1074 = !DILocation(line: 150, column: 2, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1021, file: !41, discriminator: 2)
!1076 = distinct !{!1076, !1048}
!1077 = !DILocation(line: 157, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1021, file: !41, line: 157, column: 6)
!1079 = !DILocation(line: 157, column: 9, scope: !1078)
!1080 = !DILocation(line: 157, column: 21, scope: !1078)
!1081 = !DILocation(line: 157, column: 26, scope: !1078)
!1082 = !DILocation(line: 157, column: 17, scope: !1078)
!1083 = !DILocation(line: 157, column: 6, scope: !1021)
!1084 = !DILocation(line: 158, column: 31, scope: !1078)
!1085 = !DILocation(line: 158, column: 49, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1078, file: !41, discriminator: 1)
!1087 = !DILocation(line: 158, column: 31, scope: !1086)
!1088 = !DILocation(line: 158, column: 55, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1078, file: !41, discriminator: 2)
!1090 = !DILocation(line: 158, column: 31, scope: !1089)
!1091 = !DILocation(line: 158, column: 31, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1078, file: !41, discriminator: 3)
!1093 = !DILocation(line: 158, column: 10, scope: !1092)
!1094 = !DILocation(line: 158, column: 3, scope: !1092)
!1095 = !DILocation(line: 160, column: 2, scope: !1021)
!1096 = !DILocation(line: 161, column: 8, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !41, line: 160, column: 11)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !41, line: 160, column: 2)
!1099 = distinct !DILexicalBlock(scope: !1021, file: !41, line: 160, column: 2)
!1100 = !DILocation(line: 161, column: 10, scope: !1097)
!1101 = !DILocation(line: 161, column: 18, scope: !1097)
!1102 = !DILocation(line: 161, column: 16, scope: !1097)
!1103 = !DILocation(line: 161, column: 5, scope: !1097)
!1104 = !DILocation(line: 162, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1097, file: !41, line: 162, column: 7)
!1106 = !DILocation(line: 162, column: 14, scope: !1105)
!1107 = !DILocation(line: 162, column: 7, scope: !1097)
!1108 = !DILocation(line: 163, column: 4, scope: !1105)
!1109 = !DILocation(line: 164, column: 9, scope: !1097)
!1110 = !DILocation(line: 164, column: 7, scope: !1097)
!1111 = !DILocation(line: 164, column: 5, scope: !1097)
!1112 = !DILocation(line: 160, column: 2, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1098, file: !41, discriminator: 1)
!1114 = distinct !{!1114, !1095}
!1115 = !DILocation(line: 167, column: 26, scope: !1021)
!1116 = !DILocation(line: 167, column: 9, scope: !1021)
!1117 = !DILocation(line: 167, column: 2, scope: !1021)
!1118 = !DILocation(line: 168, column: 1, scope: !1021)
!1119 = distinct !DISubprogram(name: "tar_atol8", scope: !41, file: !41, line: 97, type: !1120, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!77, !105, !107}
!1122 = !DILocalVariable(name: "s", arg: 1, scope: !1119, file: !41, line: 97, type: !105)
!1123 = !DILocation(line: 97, column: 23, scope: !1119)
!1124 = !DILocalVariable(name: "size", arg: 2, scope: !1119, file: !41, line: 97, type: !107)
!1125 = !DILocation(line: 97, column: 33, scope: !1119)
!1126 = !DILocalVariable(name: "end", scope: !1119, file: !41, line: 99, type: !105)
!1127 = !DILocation(line: 99, column: 14, scope: !1119)
!1128 = !DILocation(line: 99, column: 20, scope: !1119)
!1129 = !DILocation(line: 99, column: 24, scope: !1119)
!1130 = !DILocation(line: 99, column: 22, scope: !1119)
!1131 = !DILocalVariable(name: "n", scope: !1119, file: !41, line: 100, type: !77)
!1132 = !DILocation(line: 100, column: 12, scope: !1119)
!1133 = !DILocation(line: 103, column: 2, scope: !1119)
!1134 = !DILocation(line: 103, column: 9, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1119, file: !41, discriminator: 1)
!1136 = !DILocation(line: 103, column: 13, scope: !1135)
!1137 = !DILocation(line: 103, column: 11, scope: !1135)
!1138 = !DILocation(line: 103, column: 17, scope: !1135)
!1139 = !DILocation(line: 103, column: 21, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1119, file: !41, discriminator: 2)
!1141 = !DILocation(line: 103, column: 20, scope: !1140)
!1142 = !DILocation(line: 103, column: 23, scope: !1140)
!1143 = !DILocation(line: 103, column: 2, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1119, file: !41, discriminator: 3)
!1145 = !DILocation(line: 104, column: 4, scope: !1119)
!1146 = !DILocation(line: 103, column: 2, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1119, file: !41, discriminator: 4)
!1148 = distinct !{!1148, !1133}
!1149 = !DILocation(line: 106, column: 6, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1119, file: !41, line: 106, column: 6)
!1151 = !DILocation(line: 106, column: 11, scope: !1150)
!1152 = !DILocation(line: 106, column: 8, scope: !1150)
!1153 = !DILocation(line: 106, column: 6, scope: !1119)
!1154 = !DILocation(line: 107, column: 10, scope: !1150)
!1155 = !DILocation(line: 107, column: 3, scope: !1150)
!1156 = !DILocation(line: 109, column: 2, scope: !1119)
!1157 = !DILocation(line: 109, column: 9, scope: !1135)
!1158 = !DILocation(line: 109, column: 13, scope: !1135)
!1159 = !DILocation(line: 109, column: 11, scope: !1135)
!1160 = !DILocation(line: 109, column: 2, scope: !1135)
!1161 = !DILocation(line: 110, column: 8, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !41, line: 110, column: 7)
!1163 = distinct !DILexicalBlock(scope: !1119, file: !41, line: 109, column: 18)
!1164 = !DILocation(line: 110, column: 7, scope: !1162)
!1165 = !DILocation(line: 110, column: 10, scope: !1162)
!1166 = !DILocation(line: 110, column: 18, scope: !1162)
!1167 = !DILocation(line: 110, column: 22, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1162, file: !41, discriminator: 1)
!1169 = !DILocation(line: 110, column: 21, scope: !1168)
!1170 = !DILocation(line: 110, column: 24, scope: !1168)
!1171 = !DILocation(line: 110, column: 7, scope: !1168)
!1172 = !DILocation(line: 111, column: 4, scope: !1162)
!1173 = !DILocation(line: 112, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1163, file: !41, line: 112, column: 7)
!1175 = !DILocation(line: 112, column: 7, scope: !1174)
!1176 = !DILocation(line: 112, column: 10, scope: !1174)
!1177 = !DILocation(line: 112, column: 16, scope: !1174)
!1178 = !DILocation(line: 112, column: 20, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1174, file: !41, discriminator: 1)
!1180 = !DILocation(line: 112, column: 19, scope: !1179)
!1181 = !DILocation(line: 112, column: 22, scope: !1179)
!1182 = !DILocation(line: 112, column: 7, scope: !1179)
!1183 = !DILocation(line: 113, column: 11, scope: !1174)
!1184 = !DILocation(line: 113, column: 4, scope: !1174)
!1185 = !DILocation(line: 114, column: 8, scope: !1163)
!1186 = !DILocation(line: 114, column: 10, scope: !1163)
!1187 = !DILocation(line: 114, column: 22, scope: !1163)
!1188 = !DILocation(line: 114, column: 20, scope: !1163)
!1189 = !DILocation(line: 114, column: 25, scope: !1163)
!1190 = !DILocation(line: 114, column: 19, scope: !1163)
!1191 = !DILocation(line: 114, column: 17, scope: !1163)
!1192 = !DILocation(line: 114, column: 5, scope: !1163)
!1193 = !DILocation(line: 109, column: 2, scope: !1140)
!1194 = distinct !{!1194, !1156}
!1195 = !DILocation(line: 117, column: 2, scope: !1119)
!1196 = !DILocation(line: 117, column: 9, scope: !1135)
!1197 = !DILocation(line: 117, column: 13, scope: !1135)
!1198 = !DILocation(line: 117, column: 11, scope: !1135)
!1199 = !DILocation(line: 117, column: 2, scope: !1135)
!1200 = !DILocation(line: 118, column: 8, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !41, line: 118, column: 7)
!1202 = distinct !DILexicalBlock(scope: !1119, file: !41, line: 117, column: 18)
!1203 = !DILocation(line: 118, column: 7, scope: !1201)
!1204 = !DILocation(line: 118, column: 10, scope: !1201)
!1205 = !DILocation(line: 118, column: 18, scope: !1201)
!1206 = !DILocation(line: 118, column: 22, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1201, file: !41, discriminator: 1)
!1208 = !DILocation(line: 118, column: 21, scope: !1207)
!1209 = !DILocation(line: 118, column: 24, scope: !1207)
!1210 = !DILocation(line: 118, column: 7, scope: !1207)
!1211 = !DILocation(line: 119, column: 11, scope: !1201)
!1212 = !DILocation(line: 119, column: 4, scope: !1201)
!1213 = !DILocation(line: 120, column: 4, scope: !1202)
!1214 = !DILocation(line: 117, column: 2, scope: !1140)
!1215 = distinct !{!1215, !1195}
!1216 = !DILocation(line: 123, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1119, file: !41, line: 123, column: 6)
!1218 = !DILocation(line: 123, column: 10, scope: !1217)
!1219 = !DILocation(line: 123, column: 8, scope: !1217)
!1220 = !DILocation(line: 123, column: 6, scope: !1119)
!1221 = !DILocation(line: 124, column: 10, scope: !1217)
!1222 = !DILocation(line: 124, column: 3, scope: !1217)
!1223 = !DILocation(line: 126, column: 26, scope: !1119)
!1224 = !DILocation(line: 126, column: 9, scope: !1119)
!1225 = !DILocation(line: 126, column: 2, scope: !1119)
!1226 = !DILocation(line: 127, column: 1, scope: !1119)
!1227 = distinct !DISubprogram(name: "tar_header_get_prefix_name", scope: !41, file: !41, line: 208, type: !1228, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!222, !39}
!1230 = !DILocalVariable(name: "h", arg: 1, scope: !1227, file: !41, line: 208, type: !39)
!1231 = !DILocation(line: 208, column: 47, scope: !1227)
!1232 = !DILocation(line: 210, column: 54, scope: !1227)
!1233 = !DILocation(line: 210, column: 57, scope: !1227)
!1234 = !DILocation(line: 211, column: 39, scope: !1227)
!1235 = !DILocation(line: 211, column: 42, scope: !1227)
!1236 = !DILocation(line: 210, column: 9, scope: !1227)
!1237 = !DILocation(line: 210, column: 2, scope: !1227)
!1238 = distinct !DISubprogram(name: "tar_header_get_unix_mode", scope: !41, file: !41, line: 215, type: !1239, isLocal: true, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!96, !39}
!1241 = !DILocalVariable(name: "h", arg: 1, scope: !1238, file: !41, line: 215, type: !39)
!1242 = !DILocation(line: 215, column: 45, scope: !1238)
!1243 = !DILocalVariable(name: "mode", scope: !1238, file: !41, line: 217, type: !96)
!1244 = !DILocation(line: 217, column: 9, scope: !1238)
!1245 = !DILocalVariable(name: "type", scope: !1238, file: !41, line: 218, type: !11)
!1246 = !DILocation(line: 218, column: 20, scope: !1238)
!1247 = !DILocation(line: 220, column: 28, scope: !1238)
!1248 = !DILocation(line: 220, column: 31, scope: !1238)
!1249 = !DILocation(line: 220, column: 9, scope: !1238)
!1250 = !DILocation(line: 220, column: 7, scope: !1238)
!1251 = !DILocation(line: 222, column: 10, scope: !1238)
!1252 = !DILocation(line: 222, column: 2, scope: !1238)
!1253 = !DILocation(line: 226, column: 8, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1238, file: !41, line: 222, column: 16)
!1255 = !DILocation(line: 227, column: 3, scope: !1254)
!1256 = !DILocation(line: 229, column: 8, scope: !1254)
!1257 = !DILocation(line: 230, column: 3, scope: !1254)
!1258 = !DILocation(line: 232, column: 8, scope: !1254)
!1259 = !DILocation(line: 233, column: 3, scope: !1254)
!1260 = !DILocation(line: 235, column: 8, scope: !1254)
!1261 = !DILocation(line: 236, column: 3, scope: !1254)
!1262 = !DILocation(line: 238, column: 8, scope: !1254)
!1263 = !DILocation(line: 239, column: 3, scope: !1254)
!1264 = !DILocation(line: 241, column: 8, scope: !1254)
!1265 = !DILocation(line: 242, column: 3, scope: !1254)
!1266 = !DILocation(line: 244, column: 8, scope: !1254)
!1267 = !DILocation(line: 245, column: 3, scope: !1254)
!1268 = !DILocation(line: 248, column: 28, scope: !1238)
!1269 = !DILocation(line: 248, column: 31, scope: !1238)
!1270 = !DILocation(line: 248, column: 18, scope: !1238)
!1271 = !DILocation(line: 248, column: 10, scope: !1238)
!1272 = !DILocation(line: 248, column: 7, scope: !1238)
!1273 = !DILocation(line: 250, column: 9, scope: !1238)
!1274 = !DILocation(line: 250, column: 2, scope: !1238)
!1275 = distinct !DISubprogram(name: "tar_header_checksum", scope: !41, file: !41, line: 254, type: !1276, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !109)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!84, !39}
!1278 = !DILocalVariable(name: "h", arg: 1, scope: !1275, file: !41, line: 254, type: !39)
!1279 = !DILocation(line: 254, column: 40, scope: !1275)
!1280 = !DILocalVariable(name: "s", scope: !1275, file: !41, line: 256, type: !98)
!1281 = !DILocation(line: 256, column: 17, scope: !1275)
!1282 = !DILocation(line: 256, column: 38, scope: !1275)
!1283 = !DILocation(line: 256, column: 21, scope: !1275)
!1284 = !DILocalVariable(name: "i", scope: !1275, file: !41, line: 257, type: !92)
!1285 = !DILocation(line: 257, column: 15, scope: !1275)
!1286 = !DILocalVariable(name: "checksum_offset", scope: !1275, file: !41, line: 258, type: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1288 = !DILocation(line: 258, column: 15, scope: !1275)
!1289 = !DILocalVariable(name: "sum", scope: !1275, file: !41, line: 259, type: !84)
!1290 = !DILocation(line: 259, column: 7, scope: !1275)
!1291 = !DILocation(line: 262, column: 6, scope: !1275)
!1292 = !DILocation(line: 264, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1275, file: !41, line: 264, column: 2)
!1294 = !DILocation(line: 264, column: 7, scope: !1293)
!1295 = !DILocation(line: 264, column: 28, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !41, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !41, line: 264, column: 2)
!1298 = !DILocation(line: 264, column: 30, scope: !1296)
!1299 = !DILocation(line: 264, column: 2, scope: !1296)
!1300 = !DILocation(line: 265, column: 12, scope: !1297)
!1301 = !DILocation(line: 265, column: 10, scope: !1297)
!1302 = !DILocation(line: 265, column: 7, scope: !1297)
!1303 = !DILocation(line: 265, column: 3, scope: !1297)
!1304 = !DILocation(line: 264, column: 36, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1297, file: !41, discriminator: 2)
!1306 = !DILocation(line: 264, column: 2, scope: !1305)
!1307 = distinct !{!1307, !1308}
!1308 = !DILocation(line: 264, column: 2, scope: !1275)
!1309 = !DILocation(line: 268, column: 4, scope: !1275)
!1310 = !DILocation(line: 270, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1275, file: !41, line: 270, column: 2)
!1312 = !DILocation(line: 270, column: 7, scope: !1311)
!1313 = !DILocation(line: 270, column: 56, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !41, discriminator: 1)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !41, line: 270, column: 2)
!1316 = !DILocation(line: 270, column: 58, scope: !1314)
!1317 = !DILocation(line: 270, column: 2, scope: !1314)
!1318 = !DILocation(line: 271, column: 12, scope: !1315)
!1319 = !DILocation(line: 271, column: 10, scope: !1315)
!1320 = !DILocation(line: 271, column: 7, scope: !1315)
!1321 = !DILocation(line: 271, column: 3, scope: !1315)
!1322 = !DILocation(line: 270, column: 64, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1315, file: !41, discriminator: 2)
!1324 = !DILocation(line: 270, column: 2, scope: !1323)
!1325 = distinct !{!1325, !1326}
!1326 = !DILocation(line: 270, column: 2, scope: !1275)
!1327 = !DILocation(line: 273, column: 9, scope: !1275)
!1328 = !DILocation(line: 273, column: 2, scope: !1275)
