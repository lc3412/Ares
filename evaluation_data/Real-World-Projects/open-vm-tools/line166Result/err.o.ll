; ModuleID = './err.o.i'
source_filename = "./err.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Atomic_uint64 = type { i64 }
%struct.HashTable = type opaque
%struct.ErrInfo = type { i32, i8* }

@errNumTable = common global %struct.Atomic_uint64 zeroinitializer, align 8
@errPtrTable = common global %struct.Atomic_uint64 zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define i8* @Err_ErrString() #0 !dbg !29 {
  %1 = call i32* @__errno_location() #2, !dbg !35
  %2 = load i32, i32* %1, align 4, !dbg !36
  %3 = call i8* @Err_Errno2String(i32 %2), !dbg !37
  ret i8* %3, !dbg !39
}

; Function Attrs: nounwind uwtable
define i8* @Err_Errno2String(i32) #0 !dbg !40 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.HashTable*, align 8
  %4 = alloca %struct.HashTable*, align 8
  %5 = alloca %struct.ErrInfo*, align 8
  %6 = alloca %struct.ErrInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !44), !dbg !45
  call void @llvm.dbg.declare(metadata %struct.HashTable** %3, metadata !46, metadata !44), !dbg !51
  call void @llvm.dbg.declare(metadata %struct.HashTable** %4, metadata !52, metadata !44), !dbg !53
  call void @llvm.dbg.declare(metadata %struct.ErrInfo** %5, metadata !54, metadata !44), !dbg !62
  call void @llvm.dbg.declare(metadata %struct.ErrInfo** %6, metadata !63, metadata !44), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %7, metadata !65, metadata !44), !dbg !66
  %11 = call i32* @__errno_location() #2, !dbg !67
  %12 = load i32, i32* %11, align 4, !dbg !68
  store i32 %12, i32* %7, align 4, !dbg !66
  %13 = call %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64* @errNumTable, i32 2048, i32 10, void (i8*)* null), !dbg !69
  store %struct.HashTable* %13, %struct.HashTable** %3, align 8, !dbg !70
  %14 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !71
  %15 = load i32, i32* %2, align 4, !dbg !73
  %16 = sext i32 %15 to i64, !dbg !74
  %17 = inttoptr i64 %16 to i8*, !dbg !75
  %18 = bitcast %struct.ErrInfo** %5 to i8**, !dbg !76
  %19 = call signext i8 @HashTable_Lookup(%struct.HashTable* %14, i8* %17, i8** %18), !dbg !77
  %20 = icmp ne i8 %19, 0, !dbg !77
  br i1 %20, label %67, label %21, !dbg !78

; <label>:21:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata [2048 x i8]* %8, metadata !79, metadata !44), !dbg !84
  call void @llvm.dbg.declare(metadata i8** %9, metadata !85, metadata !44), !dbg !86
  call void @llvm.dbg.declare(metadata i64* %10, metadata !87, metadata !44), !dbg !90
  %22 = load i32, i32* %2, align 4, !dbg !91
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0, !dbg !92
  %24 = call i8* @ErrErrno2String(i32 %22, i8* %23, i64 2048), !dbg !93
  store i8* %24, i8** %9, align 8, !dbg !94
  %25 = call i8* @UtilSafeMalloc0(i64 16), !dbg !95
  %26 = bitcast i8* %25 to %struct.ErrInfo*, !dbg !95
  store %struct.ErrInfo* %26, %struct.ErrInfo** %5, align 8, !dbg !96
  %27 = load i32, i32* %2, align 4, !dbg !97
  %28 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !98
  %29 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %28, i32 0, i32 0, !dbg !99
  store i32 %27, i32* %29, align 8, !dbg !100
  %30 = load i8*, i8** %9, align 8, !dbg !101
  %31 = call i8* @UtilSafeStrdup0(i8* %30), !dbg !102
  %32 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !103
  %33 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %32, i32 0, i32 1, !dbg !104
  store i8* %31, i8** %33, align 8, !dbg !105
  %34 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !106
  %35 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %34, i32 0, i32 1, !dbg !107
  %36 = load i8*, i8** %35, align 8, !dbg !107
  %37 = call i64 @strlen(i8* %36) #7, !dbg !108
  store i64 %37, i64* %10, align 8, !dbg !109
  %38 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !110
  %39 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %38, i32 0, i32 1, !dbg !111
  %40 = load i8*, i8** %39, align 8, !dbg !111
  %41 = load i64, i64* %10, align 8, !dbg !112
  %42 = call i64 @CodeSet_Utf8FindCodePointBoundary(i8* %40, i64 %41), !dbg !113
  store i64 %42, i64* %10, align 8, !dbg !114
  %43 = load i64, i64* %10, align 8, !dbg !115
  %44 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !116
  %45 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %44, i32 0, i32 1, !dbg !117
  %46 = load i8*, i8** %45, align 8, !dbg !117
  %47 = getelementptr inbounds i8, i8* %46, i64 %43, !dbg !116
  store i8 0, i8* %47, align 1, !dbg !118
  %48 = load %struct.HashTable*, %struct.HashTable** %3, align 8, !dbg !119
  %49 = load i32, i32* %2, align 4, !dbg !120
  %50 = sext i32 %49 to i64, !dbg !121
  %51 = inttoptr i64 %50 to i8*, !dbg !122
  %52 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !123
  %53 = bitcast %struct.ErrInfo* %52 to i8*, !dbg !123
  %54 = call i8* @HashTable_LookupOrInsert(%struct.HashTable* %48, i8* %51, i8* %53), !dbg !124
  %55 = bitcast i8* %54 to %struct.ErrInfo*, !dbg !124
  store %struct.ErrInfo* %55, %struct.ErrInfo** %6, align 8, !dbg !125
  %56 = load %struct.ErrInfo*, %struct.ErrInfo** %6, align 8, !dbg !126
  %57 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !128
  %58 = icmp ne %struct.ErrInfo* %56, %57, !dbg !129
  br i1 %58, label %59, label %66, !dbg !130

; <label>:59:                                     ; preds = %21
  %60 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !131
  %61 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %60, i32 0, i32 1, !dbg !133
  %62 = load i8*, i8** %61, align 8, !dbg !133
  call void @free(i8* %62) #8, !dbg !134
  %63 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !135
  %64 = bitcast %struct.ErrInfo* %63 to i8*, !dbg !135
  call void @free(i8* %64) #8, !dbg !136
  %65 = load %struct.ErrInfo*, %struct.ErrInfo** %6, align 8, !dbg !137
  store %struct.ErrInfo* %65, %struct.ErrInfo** %5, align 8, !dbg !138
  br label %66, !dbg !139

; <label>:66:                                     ; preds = %59, %21
  br label %67, !dbg !140

; <label>:67:                                     ; preds = %66, %1
  %68 = call %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64* @errPtrTable, i32 2048, i32 10, void (i8*)* null), !dbg !141
  store %struct.HashTable* %68, %struct.HashTable** %4, align 8, !dbg !142
  %69 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !143
  %70 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !144
  %71 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %70, i32 0, i32 1, !dbg !145
  %72 = load i8*, i8** %71, align 8, !dbg !145
  %73 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !146
  %74 = bitcast %struct.ErrInfo* %73 to i8*, !dbg !146
  %75 = call i8* @HashTable_LookupOrInsert(%struct.HashTable* %69, i8* %72, i8* %74), !dbg !147
  %76 = bitcast i8* %75 to %struct.ErrInfo*, !dbg !147
  store %struct.ErrInfo* %76, %struct.ErrInfo** %6, align 8, !dbg !148
  %77 = load i32, i32* %7, align 4, !dbg !149
  %78 = call i32* @__errno_location() #2, !dbg !150
  store i32 %77, i32* %78, align 4, !dbg !151
  %79 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !152
  %80 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %79, i32 0, i32 1, !dbg !153
  %81 = load i8*, i8** %80, align 8, !dbg !153
  ret i8* %81, !dbg !154
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64*, i32, i32, void (i8*)*) #3

declare signext i8 @HashTable_Lookup(%struct.HashTable*, i8*, i8**) #3

declare i8* @ErrErrno2String(i32, i8*, i64) #3

declare i8* @UtilSafeMalloc0(i64) #3

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @CodeSet_Utf8FindCodePointBoundary(i8*, i64) #5 !dbg !155 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !159, metadata !44), !dbg !160
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !161, metadata !44), !dbg !162
  call void @llvm.dbg.declare(metadata i64* %6, metadata !163, metadata !44), !dbg !164
  %8 = load i64, i64* %5, align 8, !dbg !165
  store i64 %8, i64* %6, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i8* %7, metadata !166, metadata !44), !dbg !168
  %9 = load i64, i64* %5, align 8, !dbg !169
  %10 = icmp ugt i64 %9, 0, !dbg !171
  br i1 %10, label %11, label %51, !dbg !172

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %5, align 8, !dbg !173
  %13 = add i64 %12, -1, !dbg !173
  store i64 %13, i64* %5, align 8, !dbg !173
  br label %14, !dbg !175

; <label>:14:                                     ; preds = %27, %11
  %15 = load i64, i64* %5, align 8, !dbg !176
  %16 = icmp ugt i64 %15, 0, !dbg !178
  br i1 %16, label %17, label %25, !dbg !179

; <label>:17:                                     ; preds = %14
  %18 = load i64, i64* %5, align 8, !dbg !180
  %19 = load i8*, i8** %4, align 8, !dbg !182
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !182
  %21 = load i8, i8* %20, align 1, !dbg !182
  %22 = sext i8 %21 to i32, !dbg !182
  %23 = and i32 %22, 192, !dbg !183
  %24 = icmp eq i32 %23, 128, !dbg !184
  br label %25

; <label>:25:                                     ; preds = %17, %14
  %26 = phi i1 [ false, %14 ], [ %24, %17 ]
  br i1 %26, label %27, label %30, !dbg !185

; <label>:27:                                     ; preds = %25
  %28 = load i64, i64* %5, align 8, !dbg !187
  %29 = add i64 %28, -1, !dbg !187
  store i64 %29, i64* %5, align 8, !dbg !187
  br label %14, !dbg !189, !llvm.loop !191

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* %5, align 8, !dbg !192
  %32 = load i8*, i8** %4, align 8, !dbg !193
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !193
  %34 = load i8, i8* %33, align 1, !dbg !193
  store i8 %34, i8* %7, align 1, !dbg !194
  %35 = load i8, i8* %7, align 1, !dbg !195
  %36 = sext i8 %35 to i32, !dbg !195
  %37 = icmp sge i32 %36, 0, !dbg !197
  br i1 %37, label %48, label %38, !dbg !198

; <label>:38:                                     ; preds = %30
  %39 = load i8, i8* %7, align 1, !dbg !199
  %40 = sext i8 %39 to i32, !dbg !199
  %41 = load i64, i64* %6, align 8, !dbg !201
  %42 = sub i64 7, %41, !dbg !202
  %43 = load i64, i64* %5, align 8, !dbg !203
  %44 = add i64 %42, %43, !dbg !204
  %45 = trunc i64 %44 to i32, !dbg !205
  %46 = ashr i32 %40, %45, !dbg !205
  %47 = icmp eq i32 %46, -2, !dbg !206
  br i1 %47, label %48, label %50, !dbg !207

; <label>:48:                                     ; preds = %38, %30
  %49 = load i64, i64* %6, align 8, !dbg !208
  store i64 %49, i64* %3, align 8, !dbg !210
  br label %53, !dbg !210

; <label>:50:                                     ; preds = %38
  br label %51, !dbg !211

; <label>:51:                                     ; preds = %50, %2
  %52 = load i64, i64* %5, align 8, !dbg !212
  store i64 %52, i64* %3, align 8, !dbg !213
  br label %53, !dbg !213

; <label>:53:                                     ; preds = %51, %48
  %54 = load i64, i64* %3, align 8, !dbg !214
  ret i64 %54, !dbg !214
}

declare i8* @HashTable_LookupOrInsert(%struct.HashTable*, i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: nounwind uwtable
define i32 @Err_String2Errno(i8*) #0 !dbg !215 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.HashTable*, align 8
  %5 = alloca %struct.ErrInfo*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !218, metadata !44), !dbg !219
  call void @llvm.dbg.declare(metadata %struct.HashTable** %4, metadata !220, metadata !44), !dbg !221
  %6 = call %struct.HashTable* @HashTable_AllocOnce(%struct.Atomic_uint64* @errPtrTable, i32 2048, i32 10, void (i8*)* null), !dbg !222
  store %struct.HashTable* %6, %struct.HashTable** %4, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata %struct.ErrInfo** %5, metadata !223, metadata !44), !dbg !224
  %7 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !225
  %8 = load i8*, i8** %3, align 8, !dbg !227
  %9 = bitcast %struct.ErrInfo** %5 to i8**, !dbg !228
  %10 = call signext i8 @HashTable_Lookup(%struct.HashTable* %7, i8* %8, i8** %9), !dbg !229
  %11 = icmp ne i8 %10, 0, !dbg !229
  br i1 %11, label %13, label %12, !dbg !230

; <label>:12:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !231
  br label %17, !dbg !231

; <label>:13:                                     ; preds = %1
  %14 = load %struct.ErrInfo*, %struct.ErrInfo** %5, align 8, !dbg !233
  %15 = getelementptr inbounds %struct.ErrInfo, %struct.ErrInfo* %14, i32 0, i32 0, !dbg !234
  %16 = load i32, i32* %15, align 8, !dbg !234
  store i32 %16, i32* %2, align 4, !dbg !235
  br label %17, !dbg !235

; <label>:17:                                     ; preds = %13, %12
  %18 = load i32, i32* %2, align 4, !dbg !236
  ret i32 %18, !dbg !236
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !12)
!1 = !DIFile(filename: "err.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!2 = !{}
!3 = !{!4, !5, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !6, line: 122, baseType: !7)
!6 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!7 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Err_Number", file: !10, line: 42, baseType: !11)
!10 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/err.h", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !{!13, !25}
!13 = distinct !DIGlobalVariable(name: "errNumTable", scope: !0, file: !14, line: 61, type: !15, isLocal: false, isDefinition: true, variable: %struct.Atomic_uint64* @errNumTable)
!14 = !DIFile(filename: "err.c", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_Ptr", file: !16, line: 3829, baseType: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint64", file: !16, line: 139, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint64", file: !16, line: 137, size: 64, align: 64, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !18, file: !16, line: 138, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !23, line: 171, baseType: !24)
!23 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 55, baseType: !7)
!25 = distinct !DIGlobalVariable(name: "errPtrTable", scope: !0, file: !14, line: 62, type: !15, isLocal: false, isDefinition: true, variable: %struct.Atomic_uint64* @errPtrTable)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!29 = distinct !DISubprogram(name: "Err_ErrString", scope: !14, file: !14, line: 98, type: !30, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DILocation(line: 100, column: 29, scope: !29)
!36 = !DILocation(line: 100, column: 28, scope: !29)
!37 = !DILocation(line: 100, column: 11, scope: !38)
!38 = !DILexicalBlockFile(scope: !29, file: !14, discriminator: 1)
!39 = !DILocation(line: 100, column: 4, scope: !29)
!40 = distinct !DISubprogram(name: "Err_Errno2String", scope: !14, file: !14, line: 127, type: !41, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!41 = !DISubroutineType(types: !42)
!42 = !{!32, !9}
!43 = !DILocalVariable(name: "errorNumber", arg: 1, scope: !40, file: !14, line: 127, type: !9)
!44 = !DIExpression()
!45 = !DILocation(line: 127, column: 29, scope: !40)
!46 = !DILocalVariable(name: "numTable", scope: !40, file: !14, line: 129, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !49, line: 40, baseType: !50)
!49 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !49, line: 40, flags: DIFlagFwdDecl)
!51 = !DILocation(line: 129, column: 15, scope: !40)
!52 = !DILocalVariable(name: "ptrTable", scope: !40, file: !14, line: 130, type: !47)
!53 = !DILocation(line: 130, column: 15, scope: !40)
!54 = !DILocalVariable(name: "info", scope: !40, file: !14, line: 131, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrInfo", file: !14, line: 49, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErrInfo", file: !14, line: 46, size: 128, align: 64, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !57, file: !14, line: 47, baseType: !9, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !57, file: !14, line: 48, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!62 = !DILocation(line: 131, column: 13, scope: !40)
!63 = !DILocalVariable(name: "oldInfo", scope: !40, file: !14, line: 132, type: !55)
!64 = !DILocation(line: 132, column: 13, scope: !40)
!65 = !DILocalVariable(name: "oldErrno", scope: !40, file: !14, line: 133, type: !9)
!66 = !DILocation(line: 133, column: 15, scope: !40)
!67 = !DILocation(line: 133, column: 27, scope: !40)
!68 = !DILocation(line: 133, column: 26, scope: !40)
!69 = !DILocation(line: 142, column: 15, scope: !40)
!70 = !DILocation(line: 142, column: 13, scope: !40)
!71 = !DILocation(line: 143, column: 26, scope: !72)
!72 = distinct !DILexicalBlock(scope: !40, file: !14, line: 143, column: 8)
!73 = !DILocation(line: 143, column: 57, scope: !72)
!74 = !DILocation(line: 143, column: 45, scope: !72)
!75 = !DILocation(line: 143, column: 36, scope: !72)
!76 = !DILocation(line: 144, column: 5, scope: !72)
!77 = !DILocation(line: 143, column: 9, scope: !72)
!78 = !DILocation(line: 143, column: 8, scope: !40)
!79 = !DILocalVariable(name: "buf", scope: !80, file: !14, line: 145, type: !81)
!80 = distinct !DILexicalBlock(scope: !72, file: !14, line: 144, column: 23)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 2048)
!84 = !DILocation(line: 145, column: 12, scope: !80)
!85 = !DILocalVariable(name: "p", scope: !80, file: !14, line: 146, type: !32)
!86 = !DILocation(line: 146, column: 19, scope: !80)
!87 = !DILocalVariable(name: "n", scope: !80, file: !14, line: 147, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 216, baseType: !7)
!89 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!90 = !DILocation(line: 147, column: 14, scope: !80)
!91 = !DILocation(line: 153, column: 27, scope: !80)
!92 = !DILocation(line: 153, column: 40, scope: !80)
!93 = !DILocation(line: 153, column: 11, scope: !80)
!94 = !DILocation(line: 153, column: 9, scope: !80)
!95 = !DILocation(line: 155, column: 14, scope: !80)
!96 = !DILocation(line: 155, column: 12, scope: !80)
!97 = !DILocation(line: 156, column: 22, scope: !80)
!98 = !DILocation(line: 156, column: 7, scope: !80)
!99 = !DILocation(line: 156, column: 13, scope: !80)
!100 = !DILocation(line: 156, column: 20, scope: !80)
!101 = !DILocation(line: 157, column: 39, scope: !80)
!102 = !DILocation(line: 157, column: 22, scope: !80)
!103 = !DILocation(line: 157, column: 7, scope: !80)
!104 = !DILocation(line: 157, column: 13, scope: !80)
!105 = !DILocation(line: 157, column: 20, scope: !80)
!106 = !DILocation(line: 165, column: 18, scope: !80)
!107 = !DILocation(line: 165, column: 24, scope: !80)
!108 = !DILocation(line: 165, column: 11, scope: !80)
!109 = !DILocation(line: 165, column: 9, scope: !80)
!110 = !DILocation(line: 166, column: 45, scope: !80)
!111 = !DILocation(line: 166, column: 51, scope: !80)
!112 = !DILocation(line: 166, column: 59, scope: !80)
!113 = !DILocation(line: 166, column: 11, scope: !80)
!114 = !DILocation(line: 166, column: 9, scope: !80)
!115 = !DILocation(line: 167, column: 20, scope: !80)
!116 = !DILocation(line: 167, column: 7, scope: !80)
!117 = !DILocation(line: 167, column: 13, scope: !80)
!118 = !DILocation(line: 167, column: 23, scope: !80)
!119 = !DILocation(line: 175, column: 42, scope: !80)
!120 = !DILocation(line: 176, column: 35, scope: !80)
!121 = !DILocation(line: 176, column: 23, scope: !80)
!122 = !DILocation(line: 176, column: 14, scope: !80)
!123 = !DILocation(line: 177, column: 14, scope: !80)
!124 = !DILocation(line: 175, column: 17, scope: !80)
!125 = !DILocation(line: 175, column: 15, scope: !80)
!126 = !DILocation(line: 178, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !80, file: !14, line: 178, column: 11)
!128 = !DILocation(line: 178, column: 22, scope: !127)
!129 = !DILocation(line: 178, column: 19, scope: !127)
!130 = !DILocation(line: 178, column: 11, scope: !80)
!131 = !DILocation(line: 181, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !14, line: 178, column: 28)
!133 = !DILocation(line: 181, column: 14, scope: !132)
!134 = !DILocation(line: 181, column: 3, scope: !132)
!135 = !DILocation(line: 182, column: 8, scope: !132)
!136 = !DILocation(line: 182, column: 3, scope: !132)
!137 = !DILocation(line: 183, column: 10, scope: !132)
!138 = !DILocation(line: 183, column: 8, scope: !132)
!139 = !DILocation(line: 184, column: 7, scope: !132)
!140 = !DILocation(line: 185, column: 4, scope: !80)
!141 = !DILocation(line: 194, column: 15, scope: !40)
!142 = !DILocation(line: 194, column: 13, scope: !40)
!143 = !DILocation(line: 195, column: 39, scope: !40)
!144 = !DILocation(line: 195, column: 49, scope: !40)
!145 = !DILocation(line: 195, column: 55, scope: !40)
!146 = !DILocation(line: 195, column: 63, scope: !40)
!147 = !DILocation(line: 195, column: 14, scope: !40)
!148 = !DILocation(line: 195, column: 12, scope: !40)
!149 = !DILocation(line: 206, column: 6, scope: !40)
!150 = !DILocation(line: 206, column: 5, scope: !40)
!151 = !DILocation(line: 206, column: 3, scope: !40)
!152 = !DILocation(line: 207, column: 11, scope: !40)
!153 = !DILocation(line: 207, column: 17, scope: !40)
!154 = !DILocation(line: 207, column: 4, scope: !40)
!155 = distinct !DISubprogram(name: "CodeSet_Utf8FindCodePointBoundary", scope: !156, file: !156, line: 484, type: !157, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!156 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/codeset.h", directory: "/home/lichi/Desktop/open-vm-tools/line166")
!157 = !DISubroutineType(types: !158)
!158 = !{!88, !32, !88}
!159 = !DILocalVariable(name: "buf", arg: 1, scope: !155, file: !156, line: 484, type: !32)
!160 = !DILocation(line: 484, column: 47, scope: !155)
!161 = !DILocalVariable(name: "offset", arg: 2, scope: !155, file: !156, line: 485, type: !88)
!162 = !DILocation(line: 485, column: 42, scope: !155)
!163 = !DILocalVariable(name: "origOffset", scope: !155, file: !156, line: 487, type: !88)
!164 = !DILocation(line: 487, column: 11, scope: !155)
!165 = !DILocation(line: 487, column: 24, scope: !155)
!166 = !DILocalVariable(name: "c", scope: !155, file: !156, line: 488, type: !167)
!167 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!168 = !DILocation(line: 488, column: 16, scope: !155)
!169 = !DILocation(line: 490, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !155, file: !156, line: 490, column: 8)
!171 = !DILocation(line: 490, column: 15, scope: !170)
!172 = !DILocation(line: 490, column: 8, scope: !155)
!173 = !DILocation(line: 497, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !156, line: 490, column: 20)
!175 = !DILocation(line: 498, column: 7, scope: !174)
!176 = !DILocation(line: 498, column: 14, scope: !177)
!177 = !DILexicalBlockFile(scope: !174, file: !156, discriminator: 1)
!178 = !DILocation(line: 498, column: 21, scope: !177)
!179 = !DILocation(line: 498, column: 25, scope: !177)
!180 = !DILocation(line: 498, column: 33, scope: !181)
!181 = !DILexicalBlockFile(scope: !174, file: !156, discriminator: 2)
!182 = !DILocation(line: 498, column: 29, scope: !181)
!183 = !DILocation(line: 498, column: 41, scope: !181)
!184 = !DILocation(line: 498, column: 49, scope: !181)
!185 = !DILocation(line: 498, column: 7, scope: !186)
!186 = !DILexicalBlockFile(scope: !174, file: !156, discriminator: 3)
!187 = !DILocation(line: 499, column: 16, scope: !188)
!188 = distinct !DILexicalBlock(scope: !174, file: !156, line: 498, column: 58)
!189 = !DILocation(line: 498, column: 7, scope: !190)
!190 = !DILexicalBlockFile(scope: !174, file: !156, discriminator: 4)
!191 = distinct !{!191, !175}
!192 = !DILocation(line: 508, column: 15, scope: !174)
!193 = !DILocation(line: 508, column: 11, scope: !174)
!194 = !DILocation(line: 508, column: 9, scope: !174)
!195 = !DILocation(line: 532, column: 11, scope: !196)
!196 = distinct !DILexicalBlock(scope: !174, file: !156, line: 532, column: 11)
!197 = !DILocation(line: 532, column: 13, scope: !196)
!198 = !DILocation(line: 532, column: 18, scope: !196)
!199 = !DILocation(line: 532, column: 22, scope: !200)
!200 = !DILexicalBlockFile(scope: !196, file: !156, discriminator: 1)
!201 = !DILocation(line: 532, column: 32, scope: !200)
!202 = !DILocation(line: 532, column: 30, scope: !200)
!203 = !DILocation(line: 532, column: 45, scope: !200)
!204 = !DILocation(line: 532, column: 43, scope: !200)
!205 = !DILocation(line: 532, column: 24, scope: !200)
!206 = !DILocation(line: 532, column: 54, scope: !200)
!207 = !DILocation(line: 532, column: 11, scope: !200)
!208 = !DILocation(line: 533, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !196, file: !156, line: 532, column: 61)
!210 = !DILocation(line: 533, column: 10, scope: !209)
!211 = !DILocation(line: 539, column: 4, scope: !174)
!212 = !DILocation(line: 540, column: 11, scope: !155)
!213 = !DILocation(line: 540, column: 4, scope: !155)
!214 = !DILocation(line: 541, column: 1, scope: !155)
!215 = distinct !DISubprogram(name: "Err_String2Errno", scope: !14, file: !14, line: 234, type: !216, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!216 = !DISubroutineType(types: !217)
!217 = !{!9, !32}
!218 = !DILocalVariable(name: "string", arg: 1, scope: !215, file: !14, line: 234, type: !32)
!219 = !DILocation(line: 234, column: 30, scope: !215)
!220 = !DILocalVariable(name: "ptrTable", scope: !215, file: !14, line: 236, type: !47)
!221 = !DILocation(line: 236, column: 15, scope: !215)
!222 = !DILocation(line: 236, column: 26, scope: !215)
!223 = !DILocalVariable(name: "info", scope: !215, file: !14, line: 237, type: !55)
!224 = !DILocation(line: 237, column: 13, scope: !215)
!225 = !DILocation(line: 239, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !215, file: !14, line: 239, column: 8)
!227 = !DILocation(line: 239, column: 36, scope: !226)
!228 = !DILocation(line: 239, column: 44, scope: !226)
!229 = !DILocation(line: 239, column: 9, scope: !226)
!230 = !DILocation(line: 239, column: 8, scope: !215)
!231 = !DILocation(line: 240, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !226, file: !14, line: 239, column: 62)
!233 = !DILocation(line: 245, column: 11, scope: !215)
!234 = !DILocation(line: 245, column: 17, scope: !215)
!235 = !DILocation(line: 245, column: 4, scope: !215)
!236 = !DILocation(line: 246, column: 1, scope: !215)
