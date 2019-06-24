; ModuleID = './[inter]lib--dpkg--utils.o.i'
source_filename = "./[inter]lib--dpkg--utils.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"dpkg\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"read error in '%.250s'\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"fgets gave an empty string from '%.250s'\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"too-long line or missing newline in '%.250s'\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"unexpected end of file reading '%.250s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fgets_checked(i8*, i64, %struct._IO_FILE*, i8*) #0 !dbg !6 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !75, metadata !76), !dbg !77
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !78, metadata !76), !dbg !79
  store %struct._IO_FILE* %2, %struct._IO_FILE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !80, metadata !76), !dbg !81
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !82, metadata !76), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %10, metadata !84, metadata !76), !dbg !85
  %11 = load i8*, i8** %6, align 8, !dbg !86
  %12 = load i64, i64* %7, align 8, !dbg !88
  %13 = trunc i64 %12 to i32, !dbg !88
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !89
  %15 = call i8* @fgets(i8* %11, i32 %13, %struct._IO_FILE* %14), !dbg !90
  %16 = icmp ne i8* %15, null, !dbg !90
  br i1 %16, label %25, label %17, !dbg !91

; <label>:17:                                     ; preds = %4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !92
  %19 = call i32 @ferror(%struct._IO_FILE* %18) #6, !dbg !95
  %20 = icmp ne i32 %19, 0, !dbg !95
  br i1 %20, label %21, label %24, !dbg !96

; <label>:21:                                     ; preds = %17
  %22 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #6, !dbg !97
  %23 = load i8*, i8** %9, align 8, !dbg !98
  call void (i8*, ...) @ohshite(i8* %22, i8* %23) #7, !dbg !99
  unreachable, !dbg !101

; <label>:24:                                     ; preds = %17
  store i32 -1, i32* %5, align 4, !dbg !102
  br label %52, !dbg !102

; <label>:25:                                     ; preds = %4
  %26 = load i8*, i8** %6, align 8, !dbg !103
  %27 = call i64 @strlen(i8* %26) #8, !dbg !104
  %28 = trunc i64 %27 to i32, !dbg !104
  store i32 %28, i32* %10, align 4, !dbg !105
  %29 = load i32, i32* %10, align 4, !dbg !106
  %30 = icmp eq i32 %29, 0, !dbg !108
  br i1 %30, label %31, label %34, !dbg !109

; <label>:31:                                     ; preds = %25
  %32 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)) #6, !dbg !110
  %33 = load i8*, i8** %9, align 8, !dbg !111
  call void (i8*, ...) @ohshit(i8* %32, i8* %33) #7, !dbg !112
  unreachable, !dbg !114

; <label>:34:                                     ; preds = %25
  %35 = load i32, i32* %10, align 4, !dbg !115
  %36 = add nsw i32 %35, -1, !dbg !115
  store i32 %36, i32* %10, align 4, !dbg !115
  %37 = sext i32 %36 to i64, !dbg !117
  %38 = load i8*, i8** %6, align 8, !dbg !117
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !117
  %40 = load i8, i8* %39, align 1, !dbg !117
  %41 = sext i8 %40 to i32, !dbg !117
  %42 = icmp ne i32 %41, 10, !dbg !118
  br i1 %42, label %43, label %46, !dbg !119

; <label>:43:                                     ; preds = %34
  %44 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !120
  %45 = load i8*, i8** %9, align 8, !dbg !121
  call void (i8*, ...) @ohshit(i8* %44, i8* %45) #7, !dbg !122
  unreachable, !dbg !124

; <label>:46:                                     ; preds = %34
  %47 = load i32, i32* %10, align 4, !dbg !125
  %48 = sext i32 %47 to i64, !dbg !126
  %49 = load i8*, i8** %6, align 8, !dbg !126
  %50 = getelementptr inbounds i8, i8* %49, i64 %48, !dbg !126
  store i8 0, i8* %50, align 1, !dbg !127
  %51 = load i32, i32* %10, align 4, !dbg !128
  store i32 %51, i32* %5, align 4, !dbg !129
  br label %52, !dbg !129

; <label>:52:                                     ; preds = %46, %24
  %53 = load i32, i32* %5, align 4, !dbg !130
  ret i32 %53, !dbg !130
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: noreturn
declare void @ohshite(i8*, ...) #4

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: noreturn
declare void @ohshit(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @fgets_must(i8*, i64, %struct._IO_FILE*, i8*) #0 !dbg !131 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !132, metadata !76), !dbg !133
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !134, metadata !76), !dbg !135
  store %struct._IO_FILE* %2, %struct._IO_FILE** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !136, metadata !76), !dbg !137
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !138, metadata !76), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %9, metadata !140, metadata !76), !dbg !141
  %10 = load i8*, i8** %5, align 8, !dbg !142
  %11 = load i64, i64* %6, align 8, !dbg !143
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !144
  %13 = load i8*, i8** %8, align 8, !dbg !145
  %14 = call i32 @fgets_checked(i8* %10, i64 %11, %struct._IO_FILE* %12, i8* %13), !dbg !146
  store i32 %14, i32* %9, align 4, !dbg !141
  %15 = load i32, i32* %9, align 4, !dbg !147
  %16 = icmp slt i32 %15, 0, !dbg !149
  br i1 %16, label %17, label %20, !dbg !150

; <label>:17:                                     ; preds = %4
  %18 = call i8* @dgettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0)) #6, !dbg !151
  %19 = load i8*, i8** %8, align 8, !dbg !152
  call void (i8*, ...) @ohshit(i8* %18, i8* %19) #7, !dbg !153
  unreachable, !dbg !155

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %9, align 4, !dbg !156
  ret i32 %21, !dbg !157
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]lib--dpkg--utils.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "fgets_checked", scope: !7, file: !7, line: 30, type: !8, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "utils.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !13, !16, !73}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 216, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!15 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 241, size: 1728, align: 64, elements: !21)
!20 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !42, !43, !44, !45, !49, !51, !53, !57, !60, !62, !64, !65, !66, !67, !68, !69}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !20, line: 242, baseType: !10, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !19, file: !20, line: 247, baseType: !11, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !19, file: !20, line: 248, baseType: !11, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !19, file: !20, line: 249, baseType: !11, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !19, file: !20, line: 250, baseType: !11, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !19, file: !20, line: 251, baseType: !11, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !19, file: !20, line: 252, baseType: !11, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !19, file: !20, line: 253, baseType: !11, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !19, file: !20, line: 254, baseType: !11, size: 64, align: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !19, file: !20, line: 256, baseType: !11, size: 64, align: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !19, file: !20, line: 257, baseType: !11, size: 64, align: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !19, file: !20, line: 258, baseType: !11, size: 64, align: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !19, file: !20, line: 260, baseType: !35, size: 64, align: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !20, line: 156, size: 192, align: 64, elements: !37)
!37 = !{!38, !39, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !36, file: !20, line: 157, baseType: !35, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !36, file: !20, line: 158, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !36, file: !20, line: 162, baseType: !10, size: 32, align: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !19, file: !20, line: 262, baseType: !40, size: 64, align: 64, offset: 832)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !19, file: !20, line: 264, baseType: !10, size: 32, align: 32, offset: 896)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !20, line: 268, baseType: !10, size: 32, align: 32, offset: 928)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !19, file: !20, line: 270, baseType: !46, size: 64, align: 64, offset: 960)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !47, line: 131, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!48 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !19, file: !20, line: 274, baseType: !50, size: 16, align: 16, offset: 1024)
!50 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !19, file: !20, line: 275, baseType: !52, size: 8, align: 8, offset: 1040)
!52 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !19, file: !20, line: 276, baseType: !54, size: 8, align: 8, offset: 1048)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, align: 8, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !20, line: 280, baseType: !58, size: 64, align: 64, offset: 1088)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !20, line: 150, baseType: null)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !20, line: 289, baseType: !61, size: 64, align: 64, offset: 1152)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !47, line: 132, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !19, file: !20, line: 297, baseType: !63, size: 64, align: 64, offset: 1216)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !19, file: !20, line: 298, baseType: !63, size: 64, align: 64, offset: 1280)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !19, file: !20, line: 299, baseType: !63, size: 64, align: 64, offset: 1344)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !19, file: !20, line: 300, baseType: !63, size: 64, align: 64, offset: 1408)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !19, file: !20, line: 302, baseType: !13, size: 64, align: 64, offset: 1472)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !19, file: !20, line: 303, baseType: !10, size: 32, align: 32, offset: 1536)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !19, file: !20, line: 305, baseType: !70, size: 160, align: 8, offset: 1568)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 20)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!75 = !DILocalVariable(name: "buf", arg: 1, scope: !6, file: !7, line: 30, type: !11)
!76 = !DIExpression()
!77 = !DILocation(line: 30, column: 21, scope: !6)
!78 = !DILocalVariable(name: "bufsz", arg: 2, scope: !6, file: !7, line: 30, type: !13)
!79 = !DILocation(line: 30, column: 33, scope: !6)
!80 = !DILocalVariable(name: "f", arg: 3, scope: !6, file: !7, line: 30, type: !16)
!81 = !DILocation(line: 30, column: 46, scope: !6)
!82 = !DILocalVariable(name: "fn", arg: 4, scope: !6, file: !7, line: 30, type: !73)
!83 = !DILocation(line: 30, column: 61, scope: !6)
!84 = !DILocalVariable(name: "l", scope: !6, file: !7, line: 32, type: !10)
!85 = !DILocation(line: 32, column: 6, scope: !6)
!86 = !DILocation(line: 34, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !6, file: !7, line: 34, column: 6)
!88 = !DILocation(line: 34, column: 18, scope: !87)
!89 = !DILocation(line: 34, column: 25, scope: !87)
!90 = !DILocation(line: 34, column: 7, scope: !87)
!91 = !DILocation(line: 34, column: 6, scope: !6)
!92 = !DILocation(line: 35, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !7, line: 35, column: 7)
!94 = distinct !DILexicalBlock(scope: !87, file: !7, line: 34, column: 29)
!95 = !DILocation(line: 35, column: 7, scope: !93)
!96 = !DILocation(line: 35, column: 7, scope: !94)
!97 = !DILocation(line: 36, column: 11, scope: !93)
!98 = !DILocation(line: 36, column: 40, scope: !93)
!99 = !DILocation(line: 36, column: 4, scope: !100)
!100 = !DILexicalBlockFile(scope: !93, file: !7, discriminator: 1)
!101 = !DILocation(line: 36, column: 4, scope: !93)
!102 = !DILocation(line: 37, column: 3, scope: !94)
!103 = !DILocation(line: 39, column: 13, scope: !6)
!104 = !DILocation(line: 39, column: 6, scope: !6)
!105 = !DILocation(line: 39, column: 4, scope: !6)
!106 = !DILocation(line: 40, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !6, file: !7, line: 40, column: 6)
!108 = !DILocation(line: 40, column: 8, scope: !107)
!109 = !DILocation(line: 40, column: 6, scope: !6)
!110 = !DILocation(line: 41, column: 9, scope: !107)
!111 = !DILocation(line: 41, column: 56, scope: !107)
!112 = !DILocation(line: 41, column: 3, scope: !113)
!113 = !DILexicalBlockFile(scope: !107, file: !7, discriminator: 1)
!114 = !DILocation(line: 41, column: 3, scope: !107)
!115 = !DILocation(line: 42, column: 10, scope: !116)
!116 = distinct !DILexicalBlock(scope: !6, file: !7, line: 42, column: 6)
!117 = !DILocation(line: 42, column: 6, scope: !116)
!118 = !DILocation(line: 42, column: 15, scope: !116)
!119 = !DILocation(line: 42, column: 6, scope: !6)
!120 = !DILocation(line: 43, column: 9, scope: !116)
!121 = !DILocation(line: 43, column: 60, scope: !116)
!122 = !DILocation(line: 43, column: 3, scope: !123)
!123 = !DILexicalBlockFile(scope: !116, file: !7, discriminator: 1)
!124 = !DILocation(line: 43, column: 3, scope: !116)
!125 = !DILocation(line: 44, column: 6, scope: !6)
!126 = !DILocation(line: 44, column: 2, scope: !6)
!127 = !DILocation(line: 44, column: 9, scope: !6)
!128 = !DILocation(line: 46, column: 9, scope: !6)
!129 = !DILocation(line: 46, column: 2, scope: !6)
!130 = !DILocation(line: 47, column: 1, scope: !6)
!131 = distinct !DISubprogram(name: "fgets_must", scope: !7, file: !7, line: 50, type: !8, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!132 = !DILocalVariable(name: "buf", arg: 1, scope: !131, file: !7, line: 50, type: !11)
!133 = !DILocation(line: 50, column: 18, scope: !131)
!134 = !DILocalVariable(name: "bufsz", arg: 2, scope: !131, file: !7, line: 50, type: !13)
!135 = !DILocation(line: 50, column: 30, scope: !131)
!136 = !DILocalVariable(name: "f", arg: 3, scope: !131, file: !7, line: 50, type: !16)
!137 = !DILocation(line: 50, column: 43, scope: !131)
!138 = !DILocalVariable(name: "fn", arg: 4, scope: !131, file: !7, line: 50, type: !73)
!139 = !DILocation(line: 50, column: 58, scope: !131)
!140 = !DILocalVariable(name: "l", scope: !131, file: !7, line: 52, type: !10)
!141 = !DILocation(line: 52, column: 6, scope: !131)
!142 = !DILocation(line: 52, column: 24, scope: !131)
!143 = !DILocation(line: 52, column: 29, scope: !131)
!144 = !DILocation(line: 52, column: 36, scope: !131)
!145 = !DILocation(line: 52, column: 39, scope: !131)
!146 = !DILocation(line: 52, column: 10, scope: !131)
!147 = !DILocation(line: 54, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !131, file: !7, line: 54, column: 6)
!149 = !DILocation(line: 54, column: 8, scope: !148)
!150 = !DILocation(line: 54, column: 6, scope: !131)
!151 = !DILocation(line: 55, column: 9, scope: !148)
!152 = !DILocation(line: 55, column: 55, scope: !148)
!153 = !DILocation(line: 55, column: 3, scope: !154)
!154 = !DILexicalBlockFile(scope: !148, file: !7, discriminator: 1)
!155 = !DILocation(line: 55, column: 3, scope: !148)
!156 = !DILocation(line: 57, column: 9, scope: !131)
!157 = !DILocation(line: 57, column: 2, scope: !131)
