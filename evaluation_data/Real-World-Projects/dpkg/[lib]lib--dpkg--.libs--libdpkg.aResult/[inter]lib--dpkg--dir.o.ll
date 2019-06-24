; ModuleID = './[inter]lib--dpkg--dir.o.i'
source_filename = "./[inter]lib--dpkg--dir.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to open directory '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"unable to get file descriptor for directory '%s'\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unable to sync directory '%s'\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to open file '%s'\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unable to sync file '%s'\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"unable to close file '%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @dir_sync_path(i8*) #0 !dbg !8 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.__dirstream*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !16), !dbg !17
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %3, metadata !18, metadata !16), !dbg !23
  %4 = load i8*, i8** %2, align 8, !dbg !24
  %5 = call %struct.__dirstream* @opendir(i8* %4), !dbg !25
  store %struct.__dirstream* %5, %struct.__dirstream** %3, align 8, !dbg !26
  %6 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !27
  %7 = icmp ne %struct.__dirstream* %6, null, !dbg !27
  br i1 %7, label %11, label %8, !dbg !29

; <label>:8:                                      ; preds = %1
  %9 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !30
  %10 = load i8*, i8** %2, align 8, !dbg !31
  call void (i8*, ...) @ohshite(i8* %9, i8* %10) #7, !dbg !32
  unreachable, !dbg !34

; <label>:11:                                     ; preds = %1
  %12 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !35
  %13 = load i8*, i8** %2, align 8, !dbg !36
  call void @dir_sync(%struct.__dirstream* %12, i8* %13), !dbg !37
  %14 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !38
  %15 = call i32 @closedir(%struct.__dirstream* %14), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.__dirstream* @opendir(i8*) #2

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @dir_sync(%struct.__dirstream*, i8*) #0 !dbg !41 {
  %3 = alloca %struct.__dirstream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.__dirstream* %0, %struct.__dirstream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %3, metadata !44, metadata !16), !dbg !45
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !16), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %5, metadata !48, metadata !16), !dbg !50
  %6 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !51
  %7 = call i32 @dirfd(%struct.__dirstream* %6) #6, !dbg !52
  store i32 %7, i32* %5, align 4, !dbg !53
  %8 = load i32, i32* %5, align 4, !dbg !54
  %9 = icmp slt i32 %8, 0, !dbg !56
  br i1 %9, label %10, label %13, !dbg !57

; <label>:10:                                     ; preds = %2
  %11 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !58
  %12 = load i8*, i8** %4, align 8, !dbg !59
  call void (i8*, ...) @ohshite(i8* %11, i8* %12) #7, !dbg !60
  unreachable, !dbg !62

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4, !dbg !63
  %15 = call i32 @fsync(i32 %14), !dbg !65
  %16 = icmp ne i32 %15, 0, !dbg !65
  br i1 %16, label %17, label %20, !dbg !66

; <label>:17:                                     ; preds = %13
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0)) #6, !dbg !67
  %19 = load i8*, i8** %4, align 8, !dbg !68
  call void (i8*, ...) @ohshite(i8* %18, i8* %19) #7, !dbg !69
  unreachable, !dbg !71

; <label>:20:                                     ; preds = %13
  ret void, !dbg !72
}

declare i32 @closedir(%struct.__dirstream*) #2

; Function Attrs: nounwind uwtable
define void @dir_sync_path_parent(i8*) #0 !dbg !73 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !74, metadata !16), !dbg !75
  call void @llvm.dbg.declare(metadata i8** %3, metadata !76, metadata !16), !dbg !78
  call void @llvm.dbg.declare(metadata i8** %4, metadata !79, metadata !16), !dbg !80
  %5 = load i8*, i8** %2, align 8, !dbg !81
  %6 = call i8* @m_strdup(i8* %5), !dbg !82
  store i8* %6, i8** %3, align 8, !dbg !83
  %7 = load i8*, i8** %3, align 8, !dbg !84
  %8 = call i8* @strrchr(i8* %7, i32 47) #8, !dbg !85
  store i8* %8, i8** %4, align 8, !dbg !86
  %9 = load i8*, i8** %4, align 8, !dbg !87
  %10 = icmp ne i8* %9, null, !dbg !89
  br i1 %10, label %11, label %14, !dbg !90

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !91
  store i8 0, i8* %12, align 1, !dbg !93
  %13 = load i8*, i8** %3, align 8, !dbg !94
  call void @dir_sync_path(i8* %13), !dbg !95
  br label %14, !dbg !96

; <label>:14:                                     ; preds = %11, %1
  %15 = load i8*, i8** %3, align 8, !dbg !97
  call void @free(i8* %15) #6, !dbg !98
  ret void, !dbg !99
}

declare i8* @m_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @dir_sync_contents(i8*) #0 !dbg !100 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.__dirstream*, align 8
  %4 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !101, metadata !16), !dbg !102
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %3, metadata !103, metadata !16), !dbg !104
  call void @llvm.dbg.declare(metadata %struct.dirent** %4, metadata !105, metadata !16), !dbg !125
  %5 = load i8*, i8** %2, align 8, !dbg !126
  %6 = call %struct.__dirstream* @opendir(i8* %5), !dbg !127
  store %struct.__dirstream* %6, %struct.__dirstream** %3, align 8, !dbg !128
  %7 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !129
  %8 = icmp ne %struct.__dirstream* %7, null, !dbg !129
  br i1 %8, label %12, label %9, !dbg !131

; <label>:9:                                      ; preds = %1
  %10 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !132
  %11 = load i8*, i8** %2, align 8, !dbg !133
  call void (i8*, ...) @ohshite(i8* %10, i8* %11) #7, !dbg !134
  unreachable, !dbg !136

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !137

; <label>:13:                                     ; preds = %30, %29, %12
  %14 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !138
  %15 = call %struct.dirent* @readdir(%struct.__dirstream* %14), !dbg !140
  store %struct.dirent* %15, %struct.dirent** %4, align 8, !dbg !141
  %16 = icmp ne %struct.dirent* %15, null, !dbg !142
  br i1 %16, label %17, label %35, !dbg !143

; <label>:17:                                     ; preds = %13
  %18 = load %struct.dirent*, %struct.dirent** %4, align 8, !dbg !144
  %19 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4, !dbg !147
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i32 0, i32 0, !dbg !144
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !148
  %22 = icmp eq i32 %21, 0, !dbg !149
  br i1 %22, label %29, label %23, !dbg !150

; <label>:23:                                     ; preds = %17
  %24 = load %struct.dirent*, %struct.dirent** %4, align 8, !dbg !151
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 4, !dbg !152
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i32 0, i32 0, !dbg !151
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !153
  %28 = icmp eq i32 %27, 0, !dbg !154
  br i1 %28, label %29, label %30, !dbg !155

; <label>:29:                                     ; preds = %23, %17
  br label %13, !dbg !157, !llvm.loop !158

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %2, align 8, !dbg !159
  %32 = load %struct.dirent*, %struct.dirent** %4, align 8, !dbg !160
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 4, !dbg !161
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %33, i32 0, i32 0, !dbg !160
  call void @dir_file_sync(i8* %31, i8* %34), !dbg !162
  br label %13, !dbg !163, !llvm.loop !158

; <label>:35:                                     ; preds = %13
  %36 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !165
  %37 = load i8*, i8** %2, align 8, !dbg !166
  call void @dir_sync(%struct.__dirstream* %36, i8* %37), !dbg !167
  %38 = load %struct.__dirstream*, %struct.__dirstream** %3, align 8, !dbg !168
  %39 = call i32 @closedir(%struct.__dirstream* %38), !dbg !169
  ret void, !dbg !170
}

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @dir_file_sync(i8*, i8*) #0 !dbg !171 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !174, metadata !16), !dbg !175
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !176, metadata !16), !dbg !177
  call void @llvm.dbg.declare(metadata i8** %5, metadata !178, metadata !16), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %6, metadata !180, metadata !16), !dbg !181
  %7 = load i8*, i8** %3, align 8, !dbg !182
  %8 = load i8*, i8** %4, align 8, !dbg !183
  %9 = call i8* (i8*, ...) @str_fmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* %7, i8* %8), !dbg !184
  store i8* %9, i8** %5, align 8, !dbg !185
  %10 = load i8*, i8** %5, align 8, !dbg !186
  %11 = call i32 (i8*, i32, ...) @open(i8* %10, i32 1), !dbg !187
  store i32 %11, i32* %6, align 4, !dbg !188
  %12 = load i32, i32* %6, align 4, !dbg !189
  %13 = icmp slt i32 %12, 0, !dbg !191
  br i1 %13, label %14, label %17, !dbg !192

; <label>:14:                                     ; preds = %2
  %15 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #6, !dbg !193
  %16 = load i8*, i8** %5, align 8, !dbg !194
  call void (i8*, ...) @ohshite(i8* %15, i8* %16) #7, !dbg !195
  unreachable, !dbg !197

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* %6, align 4, !dbg !198
  %19 = call i32 @fsync(i32 %18), !dbg !200
  %20 = icmp ne i32 %19, 0, !dbg !200
  br i1 %20, label %21, label %24, !dbg !201

; <label>:21:                                     ; preds = %17
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #6, !dbg !202
  %23 = load i8*, i8** %5, align 8, !dbg !203
  call void (i8*, ...) @ohshite(i8* %22, i8* %23) #7, !dbg !204
  unreachable, !dbg !206

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %6, align 4, !dbg !207
  %26 = call i32 @close(i32 %25), !dbg !209
  %27 = icmp ne i32 %26, 0, !dbg !209
  br i1 %27, label %28, label %31, !dbg !210

; <label>:28:                                     ; preds = %24
  %29 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #6, !dbg !211
  %30 = load i8*, i8** %5, align 8, !dbg !212
  call void (i8*, ...) @ohshite(i8* %29, i8* %30) #7, !dbg !213
  unreachable, !dbg !215

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %5, align 8, !dbg !216
  call void @free(i8* %32) #6, !dbg !217
  ret void, !dbg !218
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream*) #4

declare i32 @fsync(i32) #2

declare i8* @str_fmt(i8*, ...) #2

declare i32 @open(i8*, i32, ...) #2

declare i32 @close(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--dir.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "dir_sync_path", scope: !9, file: !9, line: 63, type: !10, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "dir.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "path", arg: 1, scope: !8, file: !9, line: 63, type: !12)
!16 = !DIExpression()
!17 = !DILocation(line: 63, column: 27, scope: !8)
!18 = !DILocalVariable(name: "dir", scope: !8, file: !9, line: 65, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !21, line: 127, baseType: !22)
!21 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !21, line: 127, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 65, column: 7, scope: !8)
!24 = !DILocation(line: 67, column: 16, scope: !8)
!25 = !DILocation(line: 67, column: 8, scope: !8)
!26 = !DILocation(line: 67, column: 6, scope: !8)
!27 = !DILocation(line: 68, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !8, file: !9, line: 68, column: 6)
!29 = !DILocation(line: 68, column: 6, scope: !8)
!30 = !DILocation(line: 69, column: 10, scope: !28)
!31 = !DILocation(line: 69, column: 46, scope: !28)
!32 = !DILocation(line: 69, column: 3, scope: !33)
!33 = !DILexicalBlockFile(scope: !28, file: !9, discriminator: 1)
!34 = !DILocation(line: 69, column: 3, scope: !28)
!35 = !DILocation(line: 71, column: 11, scope: !8)
!36 = !DILocation(line: 71, column: 16, scope: !8)
!37 = !DILocation(line: 71, column: 2, scope: !8)
!38 = !DILocation(line: 73, column: 11, scope: !8)
!39 = !DILocation(line: 73, column: 2, scope: !8)
!40 = !DILocation(line: 74, column: 1, scope: !8)
!41 = distinct !DISubprogram(name: "dir_sync", scope: !9, file: !9, line: 44, type: !42, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !19, !12}
!44 = !DILocalVariable(name: "dir", arg: 1, scope: !41, file: !9, line: 44, type: !19)
!45 = !DILocation(line: 44, column: 15, scope: !41)
!46 = !DILocalVariable(name: "path", arg: 2, scope: !41, file: !9, line: 44, type: !12)
!47 = !DILocation(line: 44, column: 32, scope: !41)
!48 = !DILocalVariable(name: "fd", scope: !41, file: !9, line: 46, type: !49)
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DILocation(line: 46, column: 6, scope: !41)
!51 = !DILocation(line: 48, column: 13, scope: !41)
!52 = !DILocation(line: 48, column: 7, scope: !41)
!53 = !DILocation(line: 48, column: 5, scope: !41)
!54 = !DILocation(line: 49, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !41, file: !9, line: 49, column: 6)
!56 = !DILocation(line: 49, column: 9, scope: !55)
!57 = !DILocation(line: 49, column: 6, scope: !41)
!58 = !DILocation(line: 50, column: 10, scope: !55)
!59 = !DILocation(line: 51, column: 11, scope: !55)
!60 = !DILocation(line: 50, column: 3, scope: !61)
!61 = !DILexicalBlockFile(scope: !55, file: !9, discriminator: 1)
!62 = !DILocation(line: 50, column: 3, scope: !55)
!63 = !DILocation(line: 53, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !41, file: !9, line: 53, column: 6)
!65 = !DILocation(line: 53, column: 6, scope: !64)
!66 = !DILocation(line: 53, column: 6, scope: !41)
!67 = !DILocation(line: 54, column: 10, scope: !64)
!68 = !DILocation(line: 54, column: 46, scope: !64)
!69 = !DILocation(line: 54, column: 3, scope: !70)
!70 = !DILexicalBlockFile(scope: !64, file: !9, discriminator: 1)
!71 = !DILocation(line: 54, column: 3, scope: !64)
!72 = !DILocation(line: 55, column: 1, scope: !41)
!73 = distinct !DISubprogram(name: "dir_sync_path_parent", scope: !9, file: !9, line: 82, type: !10, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!74 = !DILocalVariable(name: "path", arg: 1, scope: !73, file: !9, line: 82, type: !12)
!75 = !DILocation(line: 82, column: 34, scope: !73)
!76 = !DILocalVariable(name: "dirname", scope: !73, file: !9, line: 84, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!78 = !DILocation(line: 84, column: 8, scope: !73)
!79 = !DILocalVariable(name: "slash", scope: !73, file: !9, line: 84, type: !77)
!80 = !DILocation(line: 84, column: 18, scope: !73)
!81 = !DILocation(line: 86, column: 21, scope: !73)
!82 = !DILocation(line: 86, column: 12, scope: !73)
!83 = !DILocation(line: 86, column: 10, scope: !73)
!84 = !DILocation(line: 88, column: 18, scope: !73)
!85 = !DILocation(line: 88, column: 10, scope: !73)
!86 = !DILocation(line: 88, column: 8, scope: !73)
!87 = !DILocation(line: 89, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !73, file: !9, line: 89, column: 6)
!89 = !DILocation(line: 89, column: 12, scope: !88)
!90 = !DILocation(line: 89, column: 6, scope: !73)
!91 = !DILocation(line: 90, column: 4, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !9, line: 89, column: 20)
!93 = !DILocation(line: 90, column: 10, scope: !92)
!94 = !DILocation(line: 91, column: 17, scope: !92)
!95 = !DILocation(line: 91, column: 3, scope: !92)
!96 = !DILocation(line: 92, column: 2, scope: !92)
!97 = !DILocation(line: 94, column: 7, scope: !73)
!98 = !DILocation(line: 94, column: 2, scope: !73)
!99 = !DILocation(line: 95, column: 1, scope: !73)
!100 = distinct !DISubprogram(name: "dir_sync_contents", scope: !9, file: !9, line: 124, type: !10, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!101 = !DILocalVariable(name: "path", arg: 1, scope: !100, file: !9, line: 124, type: !12)
!102 = !DILocation(line: 124, column: 31, scope: !100)
!103 = !DILocalVariable(name: "dir", scope: !100, file: !9, line: 126, type: !19)
!104 = !DILocation(line: 126, column: 7, scope: !100)
!105 = !DILocalVariable(name: "dent", scope: !100, file: !9, line: 127, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !108, line: 22, size: 2240, align: 64, elements: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!109 = !{!110, !114, !117, !119, !121}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !107, file: !108, line: 25, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !112, line: 127, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!113 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !107, file: !108, line: 26, baseType: !115, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 131, baseType: !116)
!116 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !107, file: !108, line: 31, baseType: !118, size: 16, align: 16, offset: 128)
!118 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !107, file: !108, line: 32, baseType: !120, size: 8, align: 8, offset: 144)
!120 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !107, file: !108, line: 33, baseType: !122, size: 2048, align: 8, offset: 152)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DILocation(line: 127, column: 17, scope: !100)
!126 = !DILocation(line: 129, column: 16, scope: !100)
!127 = !DILocation(line: 129, column: 8, scope: !100)
!128 = !DILocation(line: 129, column: 6, scope: !100)
!129 = !DILocation(line: 130, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !100, file: !9, line: 130, column: 6)
!131 = !DILocation(line: 130, column: 6, scope: !100)
!132 = !DILocation(line: 131, column: 10, scope: !130)
!133 = !DILocation(line: 131, column: 46, scope: !130)
!134 = !DILocation(line: 131, column: 3, scope: !135)
!135 = !DILexicalBlockFile(scope: !130, file: !9, discriminator: 1)
!136 = !DILocation(line: 131, column: 3, scope: !130)
!137 = !DILocation(line: 133, column: 2, scope: !100)
!138 = !DILocation(line: 133, column: 25, scope: !139)
!139 = !DILexicalBlockFile(scope: !100, file: !9, discriminator: 1)
!140 = !DILocation(line: 133, column: 17, scope: !139)
!141 = !DILocation(line: 133, column: 15, scope: !139)
!142 = !DILocation(line: 133, column: 31, scope: !139)
!143 = !DILocation(line: 133, column: 2, scope: !139)
!144 = !DILocation(line: 134, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !9, line: 134, column: 7)
!146 = distinct !DILexicalBlock(scope: !100, file: !9, line: 133, column: 39)
!147 = !DILocation(line: 134, column: 20, scope: !145)
!148 = !DILocation(line: 134, column: 7, scope: !145)
!149 = !DILocation(line: 134, column: 33, scope: !145)
!150 = !DILocation(line: 134, column: 38, scope: !145)
!151 = !DILocation(line: 135, column: 14, scope: !145)
!152 = !DILocation(line: 135, column: 20, scope: !145)
!153 = !DILocation(line: 135, column: 7, scope: !145)
!154 = !DILocation(line: 135, column: 34, scope: !145)
!155 = !DILocation(line: 134, column: 7, scope: !156)
!156 = !DILexicalBlockFile(scope: !146, file: !9, discriminator: 1)
!157 = !DILocation(line: 136, column: 4, scope: !145)
!158 = distinct !{!158, !137}
!159 = !DILocation(line: 138, column: 17, scope: !146)
!160 = !DILocation(line: 138, column: 23, scope: !146)
!161 = !DILocation(line: 138, column: 29, scope: !146)
!162 = !DILocation(line: 138, column: 3, scope: !146)
!163 = !DILocation(line: 133, column: 2, scope: !164)
!164 = !DILexicalBlockFile(scope: !100, file: !9, discriminator: 2)
!165 = !DILocation(line: 141, column: 11, scope: !100)
!166 = !DILocation(line: 141, column: 16, scope: !100)
!167 = !DILocation(line: 141, column: 2, scope: !100)
!168 = !DILocation(line: 143, column: 11, scope: !100)
!169 = !DILocation(line: 143, column: 2, scope: !100)
!170 = !DILocation(line: 144, column: 1, scope: !100)
!171 = distinct !DISubprogram(name: "dir_file_sync", scope: !9, file: !9, line: 100, type: !172, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !12, !12}
!174 = !DILocalVariable(name: "dir", arg: 1, scope: !171, file: !9, line: 100, type: !12)
!175 = !DILocation(line: 100, column: 27, scope: !171)
!176 = !DILocalVariable(name: "filename", arg: 2, scope: !171, file: !9, line: 100, type: !12)
!177 = !DILocation(line: 100, column: 44, scope: !171)
!178 = !DILocalVariable(name: "path", scope: !171, file: !9, line: 102, type: !77)
!179 = !DILocation(line: 102, column: 8, scope: !171)
!180 = !DILocalVariable(name: "fd", scope: !171, file: !9, line: 103, type: !49)
!181 = !DILocation(line: 103, column: 6, scope: !171)
!182 = !DILocation(line: 105, column: 26, scope: !171)
!183 = !DILocation(line: 105, column: 31, scope: !171)
!184 = !DILocation(line: 105, column: 9, scope: !171)
!185 = !DILocation(line: 105, column: 7, scope: !171)
!186 = !DILocation(line: 107, column: 12, scope: !171)
!187 = !DILocation(line: 107, column: 7, scope: !171)
!188 = !DILocation(line: 107, column: 5, scope: !171)
!189 = !DILocation(line: 108, column: 6, scope: !190)
!190 = distinct !DILexicalBlock(scope: !171, file: !9, line: 108, column: 6)
!191 = !DILocation(line: 108, column: 9, scope: !190)
!192 = !DILocation(line: 108, column: 6, scope: !171)
!193 = !DILocation(line: 109, column: 10, scope: !190)
!194 = !DILocation(line: 109, column: 41, scope: !190)
!195 = !DILocation(line: 109, column: 3, scope: !196)
!196 = !DILexicalBlockFile(scope: !190, file: !9, discriminator: 1)
!197 = !DILocation(line: 109, column: 3, scope: !190)
!198 = !DILocation(line: 110, column: 12, scope: !199)
!199 = distinct !DILexicalBlock(scope: !171, file: !9, line: 110, column: 6)
!200 = !DILocation(line: 110, column: 6, scope: !199)
!201 = !DILocation(line: 110, column: 6, scope: !171)
!202 = !DILocation(line: 111, column: 10, scope: !199)
!203 = !DILocation(line: 111, column: 41, scope: !199)
!204 = !DILocation(line: 111, column: 3, scope: !205)
!205 = !DILexicalBlockFile(scope: !199, file: !9, discriminator: 1)
!206 = !DILocation(line: 111, column: 3, scope: !199)
!207 = !DILocation(line: 112, column: 12, scope: !208)
!208 = distinct !DILexicalBlock(scope: !171, file: !9, line: 112, column: 6)
!209 = !DILocation(line: 112, column: 6, scope: !208)
!210 = !DILocation(line: 112, column: 6, scope: !171)
!211 = !DILocation(line: 113, column: 10, scope: !208)
!212 = !DILocation(line: 113, column: 42, scope: !208)
!213 = !DILocation(line: 113, column: 3, scope: !214)
!214 = !DILexicalBlockFile(scope: !208, file: !9, discriminator: 1)
!215 = !DILocation(line: 113, column: 3, scope: !208)
!216 = !DILocation(line: 115, column: 7, scope: !171)
!217 = !DILocation(line: 115, column: 2, scope: !171)
!218 = !DILocation(line: 116, column: 1, scope: !171)
