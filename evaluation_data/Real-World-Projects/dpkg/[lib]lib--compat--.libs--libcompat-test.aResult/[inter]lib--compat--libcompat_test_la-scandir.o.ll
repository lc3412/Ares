; ModuleID = './[inter]lib--compat--libcompat_test_la-scandir.o.i'
source_filename = "./[inter]lib--compat--libcompat_test_la-scandir.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__dirstream = type opaque

; Function Attrs: nounwind uwtable
define i32 @test_scandir(i8*, %struct.dirent***, i32 (%struct.dirent*)*, i32 (i8*, i8*)*) #0 !dbg !8 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dirent***, align 8
  %8 = alloca i32 (%struct.dirent*)*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca %struct.__dirstream*, align 8
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca %struct.dirent**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dirent**, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !47, metadata !48), !dbg !49
  store %struct.dirent*** %1, %struct.dirent**** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent**** %7, metadata !50, metadata !48), !dbg !51
  store i32 (%struct.dirent*)* %2, i32 (%struct.dirent*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.dirent*)** %8, metadata !52, metadata !48), !dbg !53
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %9, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %9, metadata !54, metadata !48), !dbg !55
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %10, metadata !56, metadata !48), !dbg !61
  call void @llvm.dbg.declare(metadata %struct.dirent** %11, metadata !62, metadata !48), !dbg !63
  call void @llvm.dbg.declare(metadata %struct.dirent** %12, metadata !64, metadata !48), !dbg !65
  call void @llvm.dbg.declare(metadata %struct.dirent*** %13, metadata !66, metadata !48), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %14, metadata !68, metadata !48), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %15, metadata !70, metadata !48), !dbg !71
  %17 = load i8*, i8** %6, align 8, !dbg !72
  %18 = call %struct.__dirstream* @opendir(i8* %17), !dbg !73
  store %struct.__dirstream* %18, %struct.__dirstream** %10, align 8, !dbg !74
  %19 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !75
  %20 = icmp ne %struct.__dirstream* %19, null, !dbg !75
  br i1 %20, label %22, label %21, !dbg !77

; <label>:21:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !78
  br label %117, !dbg !78

; <label>:22:                                     ; preds = %4
  store %struct.dirent** null, %struct.dirent*** %13, align 8, !dbg !79
  store i32 0, i32* %15, align 4, !dbg !80
  store i32 0, i32* %14, align 4, !dbg !81
  br label %23, !dbg !82

; <label>:23:                                     ; preds = %80, %35, %22
  %24 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !83
  %25 = call %struct.dirent* @readdir(%struct.__dirstream* %24), !dbg !85
  store %struct.dirent* %25, %struct.dirent** %11, align 8, !dbg !86
  %26 = icmp ne %struct.dirent* %25, null, !dbg !87
  br i1 %26, label %27, label %99, !dbg !88

; <label>:27:                                     ; preds = %23
  %28 = load i32 (%struct.dirent*)*, i32 (%struct.dirent*)** %8, align 8, !dbg !89
  %29 = icmp ne i32 (%struct.dirent*)* %28, null, !dbg !92
  br i1 %29, label %30, label %36, !dbg !93

; <label>:30:                                     ; preds = %27
  %31 = load i32 (%struct.dirent*)*, i32 (%struct.dirent*)** %8, align 8, !dbg !94
  %32 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !96
  %33 = call i32 %31(%struct.dirent* %32), !dbg !94
  %34 = icmp ne i32 %33, 0, !dbg !94
  br i1 %34, label %36, label %35, !dbg !97

; <label>:35:                                     ; preds = %30
  br label %23, !dbg !98, !llvm.loop !99

; <label>:36:                                     ; preds = %30, %27
  %37 = load i32, i32* %14, align 4, !dbg !100
  %38 = load i32, i32* %15, align 4, !dbg !102
  %39 = sub nsw i32 %38, 1, !dbg !103
  %40 = icmp sge i32 %37, %39, !dbg !104
  br i1 %40, label %41, label %65, !dbg !105

; <label>:41:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct.dirent*** %16, metadata !106, metadata !48), !dbg !108
  %42 = load i32, i32* %15, align 4, !dbg !109
  %43 = icmp ne i32 %42, 0, !dbg !109
  br i1 %43, label %44, label %47, !dbg !111

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %15, align 4, !dbg !112
  %46 = mul nsw i32 %45, 2, !dbg !112
  store i32 %46, i32* %15, align 4, !dbg !112
  br label %48, !dbg !113

; <label>:47:                                     ; preds = %41
  store i32 20, i32* %15, align 4, !dbg !114
  br label %48

; <label>:48:                                     ; preds = %47, %44
  %49 = load %struct.dirent**, %struct.dirent*** %13, align 8, !dbg !115
  %50 = bitcast %struct.dirent** %49 to i8*, !dbg !115
  %51 = load i32, i32* %15, align 4, !dbg !116
  %52 = sext i32 %51 to i64, !dbg !116
  %53 = mul i64 %52, 8, !dbg !117
  %54 = call i8* @realloc(i8* %50, i64 %53) #6, !dbg !118
  %55 = bitcast i8* %54 to %struct.dirent**, !dbg !118
  store %struct.dirent** %55, %struct.dirent*** %16, align 8, !dbg !119
  %56 = load %struct.dirent**, %struct.dirent*** %16, align 8, !dbg !120
  %57 = icmp ne %struct.dirent** %56, null, !dbg !120
  br i1 %57, label %63, label %58, !dbg !122

; <label>:58:                                     ; preds = %48
  %59 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !123
  %60 = load %struct.dirent**, %struct.dirent*** %13, align 8, !dbg !124
  %61 = load i32, i32* %14, align 4, !dbg !125
  %62 = call i32 @cleanup(%struct.__dirstream* %59, %struct.dirent** %60, i32 %61), !dbg !126
  store i32 %62, i32* %5, align 4, !dbg !127
  br label %117, !dbg !127

; <label>:63:                                     ; preds = %48
  %64 = load %struct.dirent**, %struct.dirent*** %16, align 8, !dbg !128
  store %struct.dirent** %64, %struct.dirent*** %13, align 8, !dbg !129
  br label %65, !dbg !130

; <label>:65:                                     ; preds = %63, %36
  %66 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !131
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 4, !dbg !132
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %67, i32 0, i32 0, !dbg !131
  %69 = call i64 @strlen(i8* %68) #7, !dbg !133
  %70 = add i64 280, %69, !dbg !134
  %71 = call noalias i8* @malloc(i64 %70) #6, !dbg !135
  %72 = bitcast i8* %71 to %struct.dirent*, !dbg !137
  store %struct.dirent* %72, %struct.dirent** %12, align 8, !dbg !138
  %73 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !139
  %74 = icmp ne %struct.dirent* %73, null, !dbg !139
  br i1 %74, label %80, label %75, !dbg !141

; <label>:75:                                     ; preds = %65
  %76 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !142
  %77 = load %struct.dirent**, %struct.dirent*** %13, align 8, !dbg !143
  %78 = load i32, i32* %14, align 4, !dbg !144
  %79 = call i32 @cleanup(%struct.__dirstream* %76, %struct.dirent** %77, i32 %78), !dbg !145
  store i32 %79, i32* %5, align 4, !dbg !146
  br label %117, !dbg !146

; <label>:80:                                     ; preds = %65
  %81 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !147
  %82 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !148
  %83 = bitcast %struct.dirent* %81 to i8*, !dbg !149
  %84 = bitcast %struct.dirent* %82 to i8*, !dbg !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %84, i64 280, i32 8, i1 false), !dbg !149
  %85 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !150
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 4, !dbg !151
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %86, i32 0, i32 0, !dbg !150
  %88 = load %struct.dirent*, %struct.dirent** %11, align 8, !dbg !152
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 4, !dbg !153
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %89, i32 0, i32 0, !dbg !152
  %91 = call i8* @strcpy(i8* %87, i8* %90) #6, !dbg !154
  %92 = load %struct.dirent*, %struct.dirent** %12, align 8, !dbg !155
  %93 = load i32, i32* %14, align 4, !dbg !156
  %94 = sext i32 %93 to i64, !dbg !157
  %95 = load %struct.dirent**, %struct.dirent*** %13, align 8, !dbg !157
  %96 = getelementptr inbounds %struct.dirent*, %struct.dirent** %95, i64 %94, !dbg !157
  store %struct.dirent* %92, %struct.dirent** %96, align 8, !dbg !158
  %97 = load i32, i32* %14, align 4, !dbg !159
  %98 = add nsw i32 %97, 1, !dbg !159
  store i32 %98, i32* %14, align 4, !dbg !159
  br label %23, !dbg !160, !llvm.loop !99

; <label>:99:                                     ; preds = %23
  %100 = load %struct.__dirstream*, %struct.__dirstream** %10, align 8, !dbg !162
  %101 = call i32 @closedir(%struct.__dirstream* %100), !dbg !163
  %102 = load %struct.dirent**, %struct.dirent*** %13, align 8, !dbg !164
  %103 = icmp ne %struct.dirent** %102, null, !dbg !166
  br i1 %103, label %104, label %113, !dbg !167

; <label>:104:                                    ; preds = %99
  %105 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8, !dbg !168
  %106 = icmp ne i32 (i8*, i8*)* %105, null, !dbg !170
  br i1 %106, label %107, label %113, !dbg !171

; <label>:107:                                    ; preds = %104
  %108 = load %struct.dirent**, %struct.dirent*** %13, align 8, !dbg !172
  %109 = bitcast %struct.dirent** %108 to i8*, !dbg !172
  %110 = load i32, i32* %14, align 4, !dbg !173
  %111 = sext i32 %110 to i64, !dbg !173
  %112 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8, !dbg !174
  call void @qsort(i8* %109, i64 %111, i64 8, i32 (i8*, i8*)* %112), !dbg !175
  br label %113, !dbg !175

; <label>:113:                                    ; preds = %107, %104, %99
  %114 = load %struct.dirent**, %struct.dirent*** %13, align 8, !dbg !176
  %115 = load %struct.dirent***, %struct.dirent**** %7, align 8, !dbg !177
  store %struct.dirent** %114, %struct.dirent*** %115, align 8, !dbg !178
  %116 = load i32, i32* %14, align 4, !dbg !179
  store i32 %116, i32* %5, align 4, !dbg !180
  br label %117, !dbg !180

; <label>:117:                                    ; preds = %113, %75, %58, %21
  %118 = load i32, i32* %5, align 4, !dbg !181
  ret i32 %118, !dbg !181
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct.__dirstream* @opendir(i8*) #2

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @cleanup(%struct.__dirstream*, %struct.dirent**, i32) #0 !dbg !182 {
  %4 = alloca %struct.__dirstream*, align 8
  %5 = alloca %struct.dirent**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.__dirstream* %0, %struct.__dirstream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %4, metadata !185, metadata !48), !dbg !186
  store %struct.dirent** %1, %struct.dirent*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dirent*** %5, metadata !187, metadata !48), !dbg !188
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !189, metadata !48), !dbg !190
  %8 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8, !dbg !191
  %9 = icmp ne %struct.__dirstream* %8, null, !dbg !191
  br i1 %9, label %10, label %13, !dbg !193

; <label>:10:                                     ; preds = %3
  %11 = load %struct.__dirstream*, %struct.__dirstream** %4, align 8, !dbg !194
  %12 = call i32 @closedir(%struct.__dirstream* %11), !dbg !195
  br label %13, !dbg !195

; <label>:13:                                     ; preds = %10, %3
  %14 = load %struct.dirent**, %struct.dirent*** %5, align 8, !dbg !196
  %15 = icmp ne %struct.dirent** %14, null, !dbg !196
  br i1 %15, label %16, label %34, !dbg !198

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %7, metadata !199, metadata !48), !dbg !201
  store i32 0, i32* %7, align 4, !dbg !202
  br label %17, !dbg !204

; <label>:17:                                     ; preds = %28, %16
  %18 = load i32, i32* %7, align 4, !dbg !205
  %19 = load i32, i32* %6, align 4, !dbg !208
  %20 = icmp slt i32 %18, %19, !dbg !209
  br i1 %20, label %21, label %31, !dbg !210

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %7, align 4, !dbg !211
  %23 = sext i32 %22 to i64, !dbg !212
  %24 = load %struct.dirent**, %struct.dirent*** %5, align 8, !dbg !212
  %25 = getelementptr inbounds %struct.dirent*, %struct.dirent** %24, i64 %23, !dbg !212
  %26 = load %struct.dirent*, %struct.dirent** %25, align 8, !dbg !212
  %27 = bitcast %struct.dirent* %26 to i8*, !dbg !212
  call void @free(i8* %27) #6, !dbg !213
  br label %28, !dbg !213

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* %7, align 4, !dbg !214
  %30 = add nsw i32 %29, 1, !dbg !214
  store i32 %30, i32* %7, align 4, !dbg !214
  br label %17, !dbg !216, !llvm.loop !217

; <label>:31:                                     ; preds = %17
  %32 = load %struct.dirent**, %struct.dirent*** %5, align 8, !dbg !219
  %33 = bitcast %struct.dirent** %32 to i8*, !dbg !219
  call void @free(i8* %33) #6, !dbg !220
  br label %34, !dbg !221

; <label>:34:                                     ; preds = %31, %13
  ret i32 -1, !dbg !222
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @closedir(%struct.__dirstream*) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--compat--libcompat_test_la-scandir.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "test_scandir", scope: !9, file: !9, line: 49, type: !10, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "scandir.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !16, !37, !42}
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !20, line: 22, size: 2240, align: 64, elements: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!21 = !{!22, !26, !29, !31, !33}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !19, file: !20, line: 25, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !24, line: 127, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!25 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !19, file: !20, line: 26, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !24, line: 131, baseType: !28)
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !19, file: !20, line: 31, baseType: !30, size: 16, align: 16, offset: 128)
!30 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !19, file: !20, line: 32, baseType: !32, size: 8, align: 8, offset: 144)
!32 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !19, file: !20, line: 33, baseType: !34, size: 2048, align: 8, offset: 152)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, align: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!12, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!12, !45, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DILocalVariable(name: "dir", arg: 1, scope: !8, file: !9, line: 49, type: !13)
!48 = !DIExpression()
!49 = !DILocation(line: 49, column: 26, scope: !8)
!50 = !DILocalVariable(name: "namelist", arg: 2, scope: !8, file: !9, line: 49, type: !16)
!51 = !DILocation(line: 49, column: 48, scope: !8)
!52 = !DILocalVariable(name: "filter", arg: 3, scope: !8, file: !9, line: 50, type: !37)
!53 = !DILocation(line: 50, column: 15, scope: !8)
!54 = !DILocalVariable(name: "cmp", arg: 4, scope: !8, file: !9, line: 51, type: !42)
!55 = !DILocation(line: 51, column: 15, scope: !8)
!56 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 53, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !59, line: 127, baseType: !60)
!59 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--compat--.libs--libcompat-test.a")
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !59, line: 127, flags: DIFlagFwdDecl)
!61 = !DILocation(line: 53, column: 7, scope: !8)
!62 = !DILocalVariable(name: "e", scope: !8, file: !9, line: 54, type: !18)
!63 = !DILocation(line: 54, column: 17, scope: !8)
!64 = !DILocalVariable(name: "m", scope: !8, file: !9, line: 54, type: !18)
!65 = !DILocation(line: 54, column: 21, scope: !8)
!66 = !DILocalVariable(name: "list", scope: !8, file: !9, line: 54, type: !17)
!67 = !DILocation(line: 54, column: 26, scope: !8)
!68 = !DILocalVariable(name: "used", scope: !8, file: !9, line: 55, type: !12)
!69 = !DILocation(line: 55, column: 6, scope: !8)
!70 = !DILocalVariable(name: "avail", scope: !8, file: !9, line: 55, type: !12)
!71 = !DILocation(line: 55, column: 12, scope: !8)
!72 = !DILocation(line: 57, column: 14, scope: !8)
!73 = !DILocation(line: 57, column: 6, scope: !8)
!74 = !DILocation(line: 57, column: 4, scope: !8)
!75 = !DILocation(line: 58, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !8, file: !9, line: 58, column: 6)
!77 = !DILocation(line: 58, column: 6, scope: !8)
!78 = !DILocation(line: 59, column: 3, scope: !76)
!79 = !DILocation(line: 61, column: 7, scope: !8)
!80 = !DILocation(line: 62, column: 15, scope: !8)
!81 = !DILocation(line: 62, column: 7, scope: !8)
!82 = !DILocation(line: 64, column: 2, scope: !8)
!83 = !DILocation(line: 64, column: 22, scope: !84)
!84 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 1)
!85 = !DILocation(line: 64, column: 14, scope: !84)
!86 = !DILocation(line: 64, column: 12, scope: !84)
!87 = !DILocation(line: 64, column: 26, scope: !84)
!88 = !DILocation(line: 64, column: 2, scope: !84)
!89 = !DILocation(line: 65, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !9, line: 65, column: 7)
!91 = distinct !DILexicalBlock(scope: !8, file: !9, line: 64, column: 34)
!92 = !DILocation(line: 65, column: 14, scope: !90)
!93 = !DILocation(line: 65, column: 21, scope: !90)
!94 = !DILocation(line: 65, column: 25, scope: !95)
!95 = !DILexicalBlockFile(scope: !90, file: !9, discriminator: 1)
!96 = !DILocation(line: 65, column: 32, scope: !95)
!97 = !DILocation(line: 65, column: 7, scope: !95)
!98 = !DILocation(line: 66, column: 4, scope: !90)
!99 = distinct !{!99, !82}
!100 = !DILocation(line: 68, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !91, file: !9, line: 68, column: 7)
!102 = !DILocation(line: 68, column: 15, scope: !101)
!103 = !DILocation(line: 68, column: 21, scope: !101)
!104 = !DILocation(line: 68, column: 12, scope: !101)
!105 = !DILocation(line: 68, column: 7, scope: !91)
!106 = !DILocalVariable(name: "newlist", scope: !107, file: !9, line: 69, type: !17)
!107 = distinct !DILexicalBlock(scope: !101, file: !9, line: 68, column: 26)
!108 = !DILocation(line: 69, column: 20, scope: !107)
!109 = !DILocation(line: 71, column: 8, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !9, line: 71, column: 8)
!111 = !DILocation(line: 71, column: 8, scope: !107)
!112 = !DILocation(line: 72, column: 11, scope: !110)
!113 = !DILocation(line: 72, column: 5, scope: !110)
!114 = !DILocation(line: 74, column: 11, scope: !110)
!115 = !DILocation(line: 75, column: 22, scope: !107)
!116 = !DILocation(line: 75, column: 28, scope: !107)
!117 = !DILocation(line: 75, column: 34, scope: !107)
!118 = !DILocation(line: 75, column: 14, scope: !107)
!119 = !DILocation(line: 75, column: 12, scope: !107)
!120 = !DILocation(line: 76, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !107, file: !9, line: 76, column: 8)
!122 = !DILocation(line: 76, column: 8, scope: !107)
!123 = !DILocation(line: 77, column: 20, scope: !121)
!124 = !DILocation(line: 77, column: 23, scope: !121)
!125 = !DILocation(line: 77, column: 29, scope: !121)
!126 = !DILocation(line: 77, column: 12, scope: !121)
!127 = !DILocation(line: 77, column: 5, scope: !121)
!128 = !DILocation(line: 78, column: 11, scope: !107)
!129 = !DILocation(line: 78, column: 9, scope: !107)
!130 = !DILocation(line: 79, column: 3, scope: !107)
!131 = !DILocation(line: 81, column: 34, scope: !91)
!132 = !DILocation(line: 81, column: 37, scope: !91)
!133 = !DILocation(line: 81, column: 27, scope: !91)
!134 = !DILocation(line: 81, column: 25, scope: !91)
!135 = !DILocation(line: 81, column: 7, scope: !136)
!136 = !DILexicalBlockFile(scope: !91, file: !9, discriminator: 1)
!137 = !DILocation(line: 81, column: 7, scope: !91)
!138 = !DILocation(line: 81, column: 5, scope: !91)
!139 = !DILocation(line: 82, column: 8, scope: !140)
!140 = distinct !DILexicalBlock(scope: !91, file: !9, line: 82, column: 7)
!141 = !DILocation(line: 82, column: 7, scope: !91)
!142 = !DILocation(line: 83, column: 19, scope: !140)
!143 = !DILocation(line: 83, column: 22, scope: !140)
!144 = !DILocation(line: 83, column: 28, scope: !140)
!145 = !DILocation(line: 83, column: 11, scope: !140)
!146 = !DILocation(line: 83, column: 4, scope: !140)
!147 = !DILocation(line: 84, column: 4, scope: !91)
!148 = !DILocation(line: 84, column: 9, scope: !91)
!149 = !DILocation(line: 84, column: 8, scope: !91)
!150 = !DILocation(line: 85, column: 10, scope: !91)
!151 = !DILocation(line: 85, column: 13, scope: !91)
!152 = !DILocation(line: 85, column: 21, scope: !91)
!153 = !DILocation(line: 85, column: 24, scope: !91)
!154 = !DILocation(line: 85, column: 3, scope: !91)
!155 = !DILocation(line: 87, column: 16, scope: !91)
!156 = !DILocation(line: 87, column: 8, scope: !91)
!157 = !DILocation(line: 87, column: 3, scope: !91)
!158 = !DILocation(line: 87, column: 14, scope: !91)
!159 = !DILocation(line: 88, column: 7, scope: !91)
!160 = !DILocation(line: 64, column: 2, scope: !161)
!161 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 2)
!162 = !DILocation(line: 91, column: 11, scope: !8)
!163 = !DILocation(line: 91, column: 2, scope: !8)
!164 = !DILocation(line: 93, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !8, file: !9, line: 93, column: 6)
!166 = !DILocation(line: 93, column: 11, scope: !165)
!167 = !DILocation(line: 93, column: 18, scope: !165)
!168 = !DILocation(line: 93, column: 21, scope: !169)
!169 = !DILexicalBlockFile(scope: !165, file: !9, discriminator: 1)
!170 = !DILocation(line: 93, column: 25, scope: !169)
!171 = !DILocation(line: 93, column: 6, scope: !169)
!172 = !DILocation(line: 94, column: 9, scope: !165)
!173 = !DILocation(line: 94, column: 15, scope: !165)
!174 = !DILocation(line: 94, column: 38, scope: !165)
!175 = !DILocation(line: 94, column: 3, scope: !165)
!176 = !DILocation(line: 96, column: 14, scope: !8)
!177 = !DILocation(line: 96, column: 3, scope: !8)
!178 = !DILocation(line: 96, column: 12, scope: !8)
!179 = !DILocation(line: 98, column: 9, scope: !8)
!180 = !DILocation(line: 98, column: 2, scope: !8)
!181 = !DILocation(line: 99, column: 1, scope: !8)
!182 = distinct !DISubprogram(name: "cleanup", scope: !9, file: !9, line: 32, type: !183, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!183 = !DISubroutineType(types: !184)
!184 = !{!12, !57, !17, !12}
!185 = !DILocalVariable(name: "dir", arg: 1, scope: !182, file: !9, line: 32, type: !57)
!186 = !DILocation(line: 32, column: 14, scope: !182)
!187 = !DILocalVariable(name: "dirlist", arg: 2, scope: !182, file: !9, line: 32, type: !17)
!188 = !DILocation(line: 32, column: 35, scope: !182)
!189 = !DILocalVariable(name: "used", arg: 3, scope: !182, file: !9, line: 32, type: !12)
!190 = !DILocation(line: 32, column: 48, scope: !182)
!191 = !DILocation(line: 34, column: 6, scope: !192)
!192 = distinct !DILexicalBlock(scope: !182, file: !9, line: 34, column: 6)
!193 = !DILocation(line: 34, column: 6, scope: !182)
!194 = !DILocation(line: 35, column: 12, scope: !192)
!195 = !DILocation(line: 35, column: 3, scope: !192)
!196 = !DILocation(line: 37, column: 6, scope: !197)
!197 = distinct !DILexicalBlock(scope: !182, file: !9, line: 37, column: 6)
!198 = !DILocation(line: 37, column: 6, scope: !182)
!199 = !DILocalVariable(name: "i", scope: !200, file: !9, line: 38, type: !12)
!200 = distinct !DILexicalBlock(scope: !197, file: !9, line: 37, column: 15)
!201 = !DILocation(line: 38, column: 7, scope: !200)
!202 = !DILocation(line: 40, column: 10, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !9, line: 40, column: 3)
!204 = !DILocation(line: 40, column: 8, scope: !203)
!205 = !DILocation(line: 40, column: 15, scope: !206)
!206 = !DILexicalBlockFile(scope: !207, file: !9, discriminator: 1)
!207 = distinct !DILexicalBlock(scope: !203, file: !9, line: 40, column: 3)
!208 = !DILocation(line: 40, column: 19, scope: !206)
!209 = !DILocation(line: 40, column: 17, scope: !206)
!210 = !DILocation(line: 40, column: 3, scope: !206)
!211 = !DILocation(line: 41, column: 17, scope: !207)
!212 = !DILocation(line: 41, column: 9, scope: !207)
!213 = !DILocation(line: 41, column: 4, scope: !207)
!214 = !DILocation(line: 40, column: 26, scope: !215)
!215 = !DILexicalBlockFile(scope: !207, file: !9, discriminator: 2)
!216 = !DILocation(line: 40, column: 3, scope: !215)
!217 = distinct !{!217, !218}
!218 = !DILocation(line: 40, column: 3, scope: !200)
!219 = !DILocation(line: 42, column: 8, scope: !200)
!220 = !DILocation(line: 42, column: 3, scope: !200)
!221 = !DILocation(line: 43, column: 2, scope: !200)
!222 = !DILocation(line: 45, column: 2, scope: !182)
