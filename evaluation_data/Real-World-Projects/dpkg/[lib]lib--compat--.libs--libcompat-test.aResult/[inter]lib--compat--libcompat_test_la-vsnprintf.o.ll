; ModuleID = './[inter]lib--compat--libcompat_test_la-vsnprintf.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-vsnprintf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@test_vsnprintf.file = internal global %struct._IO_FILE* null, align 8
@test_vsnprintf.file_pid = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @test_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #0 !dbg !8 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.__va_list_tag*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !90, metadata !91), !dbg !92
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !93, metadata !91), !dbg !94
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !95, metadata !91), !dbg !96
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %9, metadata !97, metadata !91), !dbg !98
  call void @llvm.dbg.declare(metadata i64* %10, metadata !99, metadata !91), !dbg !100
  call void @llvm.dbg.declare(metadata i64* %11, metadata !101, metadata !91), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %12, metadata !103, metadata !91), !dbg !104
  %13 = load i64, i64* %7, align 8, !dbg !105
  %14 = icmp ne i64 %13, 0, !dbg !107
  br i1 %14, label %15, label %19, !dbg !108

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %6, align 8, !dbg !109
  %17 = icmp eq i8* %16, null, !dbg !111
  br i1 %17, label %18, label %19, !dbg !112

; <label>:18:                                     ; preds = %15
  store i32 -1, i32* %5, align 4, !dbg !113
  br label %99, !dbg !113

; <label>:19:                                     ; preds = %15, %4
  %20 = load i32, i32* @test_vsnprintf.file_pid, align 4, !dbg !114
  %21 = icmp sgt i32 %20, 0, !dbg !116
  br i1 %21, label %22, label %29, !dbg !117

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* @test_vsnprintf.file_pid, align 4, !dbg !118
  %24 = call i32 @getpid() #4, !dbg !120
  %25 = icmp ne i32 %23, %24, !dbg !121
  br i1 %25, label %26, label %29, !dbg !122

; <label>:26:                                     ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !123
  %28 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !125
  store %struct._IO_FILE* null, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !126
  br label %29, !dbg !127

; <label>:29:                                     ; preds = %26, %22, %19
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !128
  %31 = icmp ne %struct._IO_FILE* %30, null, !dbg !128
  br i1 %31, label %39, label %32, !dbg !130

; <label>:32:                                     ; preds = %29
  %33 = call %struct._IO_FILE* @tmpfile(), !dbg !131
  store %struct._IO_FILE* %33, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !133
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !134
  %35 = icmp ne %struct._IO_FILE* %34, null, !dbg !134
  br i1 %35, label %37, label %36, !dbg !136

; <label>:36:                                     ; preds = %32
  store i32 -1, i32* %5, align 4, !dbg !137
  br label %99, !dbg !137

; <label>:37:                                     ; preds = %32
  %38 = call i32 @getpid() #4, !dbg !138
  store i32 %38, i32* @test_vsnprintf.file_pid, align 4, !dbg !139
  br label %51, !dbg !140

; <label>:39:                                     ; preds = %29
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !141
  %41 = call i32 @fseek(%struct._IO_FILE* %40, i64 0, i32 0), !dbg !144
  %42 = icmp ne i32 %41, 0, !dbg !144
  br i1 %42, label %43, label %44, !dbg !145

; <label>:43:                                     ; preds = %39
  store i32 -1, i32* %5, align 4, !dbg !146
  br label %99, !dbg !146

; <label>:44:                                     ; preds = %39
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !147
  %46 = call i32 @fileno(%struct._IO_FILE* %45) #4, !dbg !149
  %47 = call i32 @ftruncate(i32 %46, i64 0) #4, !dbg !150
  %48 = icmp ne i32 %47, 0, !dbg !152
  br i1 %48, label %49, label %50, !dbg !153

; <label>:49:                                     ; preds = %44
  store i32 -1, i32* %5, align 4, !dbg !154
  br label %99, !dbg !154

; <label>:50:                                     ; preds = %44
  br label %51

; <label>:51:                                     ; preds = %50, %37
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !155
  %53 = load i8*, i8** %8, align 8, !dbg !156
  %54 = load %struct.__va_list_tag*, %struct.__va_list_tag** %9, align 8, !dbg !157
  %55 = call i32 @vfprintf(%struct._IO_FILE* %52, i8* %53, %struct.__va_list_tag* %54), !dbg !158
  store i32 %55, i32* %12, align 4, !dbg !159
  %56 = load i32, i32* %12, align 4, !dbg !160
  %57 = icmp slt i32 %56, 0, !dbg !162
  br i1 %57, label %58, label %59, !dbg !163

; <label>:58:                                     ; preds = %51
  store i32 -1, i32* %5, align 4, !dbg !164
  br label %99, !dbg !164

; <label>:59:                                     ; preds = %51
  %60 = load i64, i64* %7, align 8, !dbg !165
  %61 = icmp eq i64 %60, 0, !dbg !167
  br i1 %61, label %62, label %64, !dbg !168

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %12, align 4, !dbg !169
  store i32 %63, i32* %5, align 4, !dbg !170
  br label %99, !dbg !170

; <label>:64:                                     ; preds = %59
  %65 = load i32, i32* %12, align 4, !dbg !171
  %66 = load i64, i64* %7, align 8, !dbg !173
  %67 = trunc i64 %66 to i32, !dbg !174
  %68 = icmp sge i32 %65, %67, !dbg !175
  br i1 %68, label %69, label %72, !dbg !176

; <label>:69:                                     ; preds = %64
  %70 = load i64, i64* %7, align 8, !dbg !177
  %71 = sub i64 %70, 1, !dbg !178
  store i64 %71, i64* %10, align 8, !dbg !179
  br label %75, !dbg !180

; <label>:72:                                     ; preds = %64
  %73 = load i32, i32* %12, align 4, !dbg !181
  %74 = sext i32 %73 to i64, !dbg !181
  store i64 %74, i64* %10, align 8, !dbg !182
  br label %75

; <label>:75:                                     ; preds = %72, %69
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !183
  %77 = call i32 @fflush(%struct._IO_FILE* %76), !dbg !185
  %78 = icmp ne i32 %77, 0, !dbg !185
  br i1 %78, label %79, label %80, !dbg !186

; <label>:79:                                     ; preds = %75
  store i32 -1, i32* %5, align 4, !dbg !187
  br label %99, !dbg !187

; <label>:80:                                     ; preds = %75
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !188
  %82 = call i32 @fseek(%struct._IO_FILE* %81, i64 0, i32 0), !dbg !190
  %83 = icmp ne i32 %82, 0, !dbg !190
  br i1 %83, label %84, label %85, !dbg !191

; <label>:84:                                     ; preds = %80
  store i32 -1, i32* %5, align 4, !dbg !192
  br label %99, !dbg !192

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %6, align 8, !dbg !193
  %87 = load i64, i64* %10, align 8, !dbg !194
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @test_vsnprintf.file, align 8, !dbg !195
  %89 = call i64 @fread(i8* %86, i64 1, i64 %87, %struct._IO_FILE* %88), !dbg !196
  store i64 %89, i64* %11, align 8, !dbg !197
  %90 = load i64, i64* %11, align 8, !dbg !198
  %91 = load i64, i64* %10, align 8, !dbg !200
  %92 = icmp ne i64 %90, %91, !dbg !201
  br i1 %92, label %93, label %94, !dbg !202

; <label>:93:                                     ; preds = %85
  store i32 -1, i32* %5, align 4, !dbg !203
  br label %99, !dbg !203

; <label>:94:                                     ; preds = %85
  %95 = load i64, i64* %10, align 8, !dbg !204
  %96 = load i8*, i8** %6, align 8, !dbg !205
  %97 = getelementptr inbounds i8, i8* %96, i64 %95, !dbg !205
  store i8 0, i8* %97, align 1, !dbg !206
  %98 = load i32, i32* %12, align 4, !dbg !207
  store i32 %98, i32* %5, align 4, !dbg !208
  br label %99, !dbg !208

; <label>:99:                                     ; preds = %94, %93, %84, %79, %62, %58, %49, %43, %36, %18
  %100 = load i32, i32* %5, align 4, !dbg !209
  ret i32 %100, !dbg !209
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @getpid() #2

declare i32 @fclose(%struct._IO_FILE*) #3

declare %struct._IO_FILE* @tmpfile() #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

declare i32 @fflush(%struct._IO_FILE*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!87, !88}
!llvm.ident = !{!89}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-vsnprintf.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !83}
!7 = distinct !DIGlobalVariable(name: "file", scope: !8, file: !9, line: 34, type: !27, isLocal: true, isDefinition: true, variable: %struct._IO_FILE** @test_vsnprintf.file)
!8 = distinct !DISubprogram(name: "test_vsnprintf", scope: !9, file: !9, line: 32, type: !10, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "vsnprintf.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!10 = !DISubroutineType(types: !11)
!11 = !{!5, !12, !14, !17, !19}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 216, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !21)
!21 = !{!22, !24, !25, !26}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !20, file: !1, baseType: !23, size: 32, align: 32)
!23 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !20, file: !1, baseType: !23, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !20, file: !1, baseType: !4, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !20, file: !1, baseType: !4, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 48, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !31, line: 241, size: 1728, align: 64, elements: !32)
!31 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !53, !54, !55, !56, !60, !62, !64, !68, !71, !73, !74, !75, !76, !77, !78, !79}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !31, line: 242, baseType: !5, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !30, file: !31, line: 247, baseType: !12, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !30, file: !31, line: 248, baseType: !12, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !30, file: !31, line: 249, baseType: !12, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !30, file: !31, line: 250, baseType: !12, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !30, file: !31, line: 251, baseType: !12, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !30, file: !31, line: 252, baseType: !12, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !30, file: !31, line: 253, baseType: !12, size: 64, align: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !30, file: !31, line: 254, baseType: !12, size: 64, align: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !30, file: !31, line: 256, baseType: !12, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !30, file: !31, line: 257, baseType: !12, size: 64, align: 64, offset: 640)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !30, file: !31, line: 258, baseType: !12, size: 64, align: 64, offset: 704)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !30, file: !31, line: 260, baseType: !46, size: 64, align: 64, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !31, line: 156, size: 192, align: 64, elements: !48)
!48 = !{!49, !50, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !47, file: !31, line: 157, baseType: !46, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !47, file: !31, line: 158, baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !47, file: !31, line: 162, baseType: !5, size: 32, align: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !30, file: !31, line: 262, baseType: !51, size: 64, align: 64, offset: 832)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !30, file: !31, line: 264, baseType: !5, size: 32, align: 32, offset: 896)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !31, line: 268, baseType: !5, size: 32, align: 32, offset: 928)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !30, file: !31, line: 270, baseType: !57, size: 64, align: 64, offset: 960)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !58, line: 131, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!59 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !30, file: !31, line: 274, baseType: !61, size: 16, align: 16, offset: 1024)
!61 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !30, file: !31, line: 275, baseType: !63, size: 8, align: 8, offset: 1040)
!63 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !30, file: !31, line: 276, baseType: !65, size: 8, align: 8, offset: 1048)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, align: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !31, line: 280, baseType: !69, size: 64, align: 64, offset: 1088)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !31, line: 150, baseType: null)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !31, line: 289, baseType: !72, size: 64, align: 64, offset: 1152)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !58, line: 132, baseType: !59)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !30, file: !31, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !30, file: !31, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !30, file: !31, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !30, file: !31, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !30, file: !31, line: 302, baseType: !14, size: 64, align: 64, offset: 1472)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !30, file: !31, line: 303, baseType: !5, size: 32, align: 32, offset: 1536)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !30, file: !31, line: 305, baseType: !80, size: 160, align: 8, offset: 1568)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 20)
!83 = distinct !DIGlobalVariable(name: "file_pid", scope: !8, file: !9, line: 35, type: !84, isLocal: true, isDefinition: true, variable: i32* @test_vsnprintf.file_pid)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !85, line: 98, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !58, line: 133, baseType: !5)
!87 = !{i32 2, !"Dwarf Version", i32 4}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!90 = !DILocalVariable(name: "buf", arg: 1, scope: !8, file: !9, line: 32, type: !12)
!91 = !DIExpression()
!92 = !DILocation(line: 32, column: 22, scope: !8)
!93 = !DILocalVariable(name: "maxsize", arg: 2, scope: !8, file: !9, line: 32, type: !14)
!94 = !DILocation(line: 32, column: 34, scope: !8)
!95 = !DILocalVariable(name: "fmt", arg: 3, scope: !8, file: !9, line: 32, type: !17)
!96 = !DILocation(line: 32, column: 55, scope: !8)
!97 = !DILocalVariable(name: "args", arg: 4, scope: !8, file: !9, line: 32, type: !19)
!98 = !DILocation(line: 32, column: 68, scope: !8)
!99 = !DILocalVariable(name: "want", scope: !8, file: !9, line: 37, type: !14)
!100 = !DILocation(line: 37, column: 9, scope: !8)
!101 = !DILocalVariable(name: "nr", scope: !8, file: !9, line: 37, type: !14)
!102 = !DILocation(line: 37, column: 15, scope: !8)
!103 = !DILocalVariable(name: "total", scope: !8, file: !9, line: 38, type: !5)
!104 = !DILocation(line: 38, column: 6, scope: !8)
!105 = !DILocation(line: 40, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !8, file: !9, line: 40, column: 6)
!107 = !DILocation(line: 40, column: 14, scope: !106)
!108 = !DILocation(line: 40, column: 19, scope: !106)
!109 = !DILocation(line: 40, column: 22, scope: !110)
!110 = !DILexicalBlockFile(scope: !106, file: !9, discriminator: 1)
!111 = !DILocation(line: 40, column: 26, scope: !110)
!112 = !DILocation(line: 40, column: 6, scope: !110)
!113 = !DILocation(line: 41, column: 3, scope: !106)
!114 = !DILocation(line: 44, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !8, file: !9, line: 44, column: 6)
!116 = !DILocation(line: 44, column: 15, scope: !115)
!117 = !DILocation(line: 44, column: 19, scope: !115)
!118 = !DILocation(line: 44, column: 22, scope: !119)
!119 = !DILexicalBlockFile(scope: !115, file: !9, discriminator: 1)
!120 = !DILocation(line: 44, column: 34, scope: !119)
!121 = !DILocation(line: 44, column: 31, scope: !119)
!122 = !DILocation(line: 44, column: 6, scope: !119)
!123 = !DILocation(line: 45, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !115, file: !9, line: 44, column: 44)
!125 = !DILocation(line: 45, column: 3, scope: !124)
!126 = !DILocation(line: 46, column: 8, scope: !124)
!127 = !DILocation(line: 47, column: 2, scope: !124)
!128 = !DILocation(line: 49, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !8, file: !9, line: 49, column: 6)
!130 = !DILocation(line: 49, column: 6, scope: !8)
!131 = !DILocation(line: 50, column: 10, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !9, line: 49, column: 13)
!133 = !DILocation(line: 50, column: 8, scope: !132)
!134 = !DILocation(line: 51, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !9, line: 51, column: 7)
!136 = !DILocation(line: 51, column: 7, scope: !132)
!137 = !DILocation(line: 52, column: 4, scope: !135)
!138 = !DILocation(line: 53, column: 14, scope: !132)
!139 = !DILocation(line: 53, column: 12, scope: !132)
!140 = !DILocation(line: 54, column: 2, scope: !132)
!141 = !DILocation(line: 55, column: 13, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !9, line: 55, column: 7)
!143 = distinct !DILexicalBlock(scope: !129, file: !9, line: 54, column: 9)
!144 = !DILocation(line: 55, column: 7, scope: !142)
!145 = !DILocation(line: 55, column: 7, scope: !143)
!146 = !DILocation(line: 56, column: 4, scope: !142)
!147 = !DILocation(line: 57, column: 24, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !9, line: 57, column: 7)
!149 = !DILocation(line: 57, column: 17, scope: !148)
!150 = !DILocation(line: 57, column: 7, scope: !151)
!151 = !DILexicalBlockFile(scope: !148, file: !9, discriminator: 1)
!152 = !DILocation(line: 57, column: 7, scope: !148)
!153 = !DILocation(line: 57, column: 7, scope: !143)
!154 = !DILocation(line: 58, column: 4, scope: !148)
!155 = !DILocation(line: 61, column: 19, scope: !8)
!156 = !DILocation(line: 61, column: 25, scope: !8)
!157 = !DILocation(line: 61, column: 30, scope: !8)
!158 = !DILocation(line: 61, column: 10, scope: !8)
!159 = !DILocation(line: 61, column: 8, scope: !8)
!160 = !DILocation(line: 62, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !8, file: !9, line: 62, column: 6)
!162 = !DILocation(line: 62, column: 12, scope: !161)
!163 = !DILocation(line: 62, column: 6, scope: !8)
!164 = !DILocation(line: 63, column: 3, scope: !161)
!165 = !DILocation(line: 64, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !8, file: !9, line: 64, column: 6)
!167 = !DILocation(line: 64, column: 14, scope: !166)
!168 = !DILocation(line: 64, column: 6, scope: !8)
!169 = !DILocation(line: 65, column: 10, scope: !166)
!170 = !DILocation(line: 65, column: 3, scope: !166)
!171 = !DILocation(line: 66, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !8, file: !9, line: 66, column: 6)
!173 = !DILocation(line: 66, column: 20, scope: !172)
!174 = !DILocation(line: 66, column: 15, scope: !172)
!175 = !DILocation(line: 66, column: 12, scope: !172)
!176 = !DILocation(line: 66, column: 6, scope: !8)
!177 = !DILocation(line: 67, column: 10, scope: !172)
!178 = !DILocation(line: 67, column: 18, scope: !172)
!179 = !DILocation(line: 67, column: 8, scope: !172)
!180 = !DILocation(line: 67, column: 3, scope: !172)
!181 = !DILocation(line: 69, column: 10, scope: !172)
!182 = !DILocation(line: 69, column: 8, scope: !172)
!183 = !DILocation(line: 70, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !8, file: !9, line: 70, column: 6)
!185 = !DILocation(line: 70, column: 6, scope: !184)
!186 = !DILocation(line: 70, column: 6, scope: !8)
!187 = !DILocation(line: 71, column: 3, scope: !184)
!188 = !DILocation(line: 72, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !8, file: !9, line: 72, column: 6)
!190 = !DILocation(line: 72, column: 6, scope: !189)
!191 = !DILocation(line: 72, column: 6, scope: !8)
!192 = !DILocation(line: 73, column: 3, scope: !189)
!193 = !DILocation(line: 75, column: 13, scope: !8)
!194 = !DILocation(line: 75, column: 21, scope: !8)
!195 = !DILocation(line: 75, column: 27, scope: !8)
!196 = !DILocation(line: 75, column: 7, scope: !8)
!197 = !DILocation(line: 75, column: 5, scope: !8)
!198 = !DILocation(line: 76, column: 6, scope: !199)
!199 = distinct !DILexicalBlock(scope: !8, file: !9, line: 76, column: 6)
!200 = !DILocation(line: 76, column: 12, scope: !199)
!201 = !DILocation(line: 76, column: 9, scope: !199)
!202 = !DILocation(line: 76, column: 6, scope: !8)
!203 = !DILocation(line: 77, column: 3, scope: !199)
!204 = !DILocation(line: 78, column: 6, scope: !8)
!205 = !DILocation(line: 78, column: 2, scope: !8)
!206 = !DILocation(line: 78, column: 12, scope: !8)
!207 = !DILocation(line: 80, column: 9, scope: !8)
!208 = !DILocation(line: 80, column: 2, scope: !8)
!209 = !DILocation(line: 81, column: 1, scope: !8)
