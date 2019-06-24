; ModuleID = './libDynxdr_la-xdrutil.o.i'
source_filename = "./libDynxdr_la-xdrutil.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

; Function Attrs: nounwind uwtable
define i8* @XdrUtil_ArrayAppend(i8**, i32*, i64, i32) #0 !dbg !97 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !107, metadata !108), !dbg !109
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !110, metadata !108), !dbg !111
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !112, metadata !108), !dbg !113
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !114, metadata !108), !dbg !115
  call void @llvm.dbg.declare(metadata i8** %9, metadata !116, metadata !108), !dbg !117
  store i8* null, i8** %9, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata i8** %10, metadata !118, metadata !108), !dbg !119
  %11 = load i8**, i8*** %5, align 8, !dbg !120
  %12 = load i8*, i8** %11, align 8, !dbg !121
  %13 = load i32*, i32** %6, align 8, !dbg !122
  %14 = load i32, i32* %13, align 4, !dbg !123
  %15 = load i32, i32* %8, align 4, !dbg !124
  %16 = add i32 %14, %15, !dbg !125
  %17 = zext i32 %16 to i64, !dbg !126
  %18 = load i64, i64* %7, align 8, !dbg !127
  %19 = mul i64 %17, %18, !dbg !128
  %20 = call i8* @realloc(i8* %12, i64 %19) #4, !dbg !129
  store i8* %20, i8** %10, align 8, !dbg !130
  %21 = load i8*, i8** %10, align 8, !dbg !131
  %22 = icmp ne i8* %21, null, !dbg !133
  br i1 %22, label %23, label %43, !dbg !134

; <label>:23:                                     ; preds = %4
  %24 = load i32*, i32** %6, align 8, !dbg !135
  %25 = load i32, i32* %24, align 4, !dbg !137
  %26 = zext i32 %25 to i64, !dbg !137
  %27 = load i64, i64* %7, align 8, !dbg !138
  %28 = mul i64 %26, %27, !dbg !139
  %29 = load i8*, i8** %10, align 8, !dbg !140
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !141
  store i8* %30, i8** %9, align 8, !dbg !142
  %31 = load i8*, i8** %9, align 8, !dbg !143
  %32 = load i64, i64* %7, align 8, !dbg !144
  %33 = load i32, i32* %8, align 4, !dbg !145
  %34 = zext i32 %33 to i64, !dbg !145
  %35 = mul i64 %32, %34, !dbg !146
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 %35, i32 1, i1 false), !dbg !147
  %36 = load i8*, i8** %10, align 8, !dbg !148
  %37 = load i8**, i8*** %5, align 8, !dbg !149
  store i8* %36, i8** %37, align 8, !dbg !150
  %38 = load i32*, i32** %6, align 8, !dbg !151
  %39 = load i32, i32* %38, align 4, !dbg !152
  %40 = load i32, i32* %8, align 4, !dbg !153
  %41 = add i32 %39, %40, !dbg !154
  %42 = load i32*, i32** %6, align 8, !dbg !155
  store i32 %41, i32* %42, align 4, !dbg !156
  br label %43, !dbg !157

; <label>:43:                                     ; preds = %23, %4
  %44 = load i8*, i8** %9, align 8, !dbg !158
  ret i8* %44, !dbg !159
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define signext i8 @XdrUtil_Deserialize(i8*, i64, i8*, i8*) #0 !dbg !160 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32 (%struct.XDR*, i8*, ...)*, align 8
  %11 = alloca %struct.XDR, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !165, metadata !108), !dbg !166
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !167, metadata !108), !dbg !168
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !169, metadata !108), !dbg !170
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !171, metadata !108), !dbg !172
  call void @llvm.dbg.declare(metadata i8* %9, metadata !173, metadata !108), !dbg !174
  call void @llvm.dbg.declare(metadata i32 (%struct.XDR*, i8*, ...)** %10, metadata !175, metadata !108), !dbg !176
  %12 = load i8*, i8** %7, align 8, !dbg !177
  %13 = bitcast i8* %12 to i32 (%struct.XDR*, i8*, ...)*, !dbg !177
  store i32 (%struct.XDR*, i8*, ...)* %13, i32 (%struct.XDR*, i8*, ...)** %10, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata %struct.XDR* %11, metadata !178, metadata !108), !dbg !179
  %14 = load i8*, i8** %5, align 8, !dbg !180
  %15 = load i64, i64* %6, align 8, !dbg !181
  %16 = trunc i64 %15 to i32, !dbg !181
  call void @xdrmem_create(%struct.XDR* %11, i8* %14, i32 %16, i32 1) #4, !dbg !182
  %17 = load i32 (%struct.XDR*, i8*, ...)*, i32 (%struct.XDR*, i8*, ...)** %10, align 8, !dbg !183
  %18 = load i8*, i8** %8, align 8, !dbg !184
  %19 = call i32 (%struct.XDR*, i8*, ...) %17(%struct.XDR* %11, i8* %18, i32 0), !dbg !183
  %20 = trunc i32 %19 to i8, !dbg !185
  store i8 %20, i8* %9, align 1, !dbg !186
  br label %21, !dbg !187, !llvm.loop !188

; <label>:21:                                     ; preds = %4
  %22 = getelementptr inbounds %struct.XDR, %struct.XDR* %11, i32 0, i32 1, !dbg !189
  %23 = load %struct.xdr_ops*, %struct.xdr_ops** %22, align 8, !dbg !189
  %24 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %23, i32 0, i32 7, !dbg !193
  %25 = load void (%struct.XDR*)*, void (%struct.XDR*)** %24, align 8, !dbg !193
  %26 = icmp ne void (%struct.XDR*)* %25, null, !dbg !194
  br i1 %26, label %27, label %32, !dbg !194

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.XDR, %struct.XDR* %11, i32 0, i32 1, !dbg !195
  %29 = load %struct.xdr_ops*, %struct.xdr_ops** %28, align 8, !dbg !195
  %30 = getelementptr inbounds %struct.xdr_ops, %struct.xdr_ops* %29, i32 0, i32 7, !dbg !197
  %31 = load void (%struct.XDR*)*, void (%struct.XDR*)** %30, align 8, !dbg !197
  call void %31(%struct.XDR* %11), !dbg !198
  br label %32, !dbg !198

; <label>:32:                                     ; preds = %27, %21
  br label %33, !dbg !199

; <label>:33:                                     ; preds = %32
  %34 = load i8, i8* %9, align 1, !dbg !201
  %35 = icmp ne i8 %34, 0, !dbg !201
  br i1 %35, label %39, label %36, !dbg !203

; <label>:36:                                     ; preds = %33
  %37 = load i32 (%struct.XDR*, i8*, ...)*, i32 (%struct.XDR*, i8*, ...)** %10, align 8, !dbg !204
  %38 = load i8*, i8** %8, align 8, !dbg !206
  call void @xdr_free(i32 (%struct.XDR*, i8*, ...)* %37, i8* %38) #4, !dbg !207
  br label %39, !dbg !208

; <label>:39:                                     ; preds = %36, %33
  %40 = load i8, i8* %9, align 1, !dbg !209
  ret i8 %40, !dbg !210
}

; Function Attrs: nounwind
declare void @xdrmem_create(%struct.XDR*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @xdr_free(i32 (%struct.XDR*, i8*, ...)*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!94, !95}
!llvm.ident = !{!96}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "libDynxdr_la-xdrutil.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 81, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !{!10, !11, !13, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !14, line: 230, baseType: !12)
!14 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !4, line: 152, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !22, !10, null}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !20, line: 37, baseType: !21)
!20 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 109, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 110, size: 384, align: 64, elements: !25)
!25 = !{!26, !27, !90, !91, !92, !93}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !24, file: !4, line: 112, baseType: !3, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !24, file: !4, line: 136, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 113, size: 640, align: 64, elements: !30)
!30 = !{!31, !37, !43, !54, !60, !66, !70, !76, !80, !84}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !29, file: !4, line: 115, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!19, !22, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !29, file: !4, line: 117, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!19, !22, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !29, file: !4, line: 119, baseType: !44, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!19, !22, !47, !51}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !48, line: 116, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !50, line: 183, baseType: !11)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !48, line: 35, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !50, line: 32, baseType: !53)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !29, file: !4, line: 121, baseType: !55, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!19, !22, !58, !51}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !29, file: !4, line: 123, baseType: !61, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!51, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !29, file: !4, line: 125, baseType: !67, size: 64, align: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!19, !22, !51}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !29, file: !4, line: 127, baseType: !71, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !22, !51}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !48, line: 196, baseType: !21)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !29, file: !4, line: 129, baseType: !77, size: 64, align: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !22}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !29, file: !4, line: 131, baseType: !81, size: 64, align: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!19, !22, !74}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !29, file: !4, line: 133, baseType: !85, size: 64, align: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!19, !22, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !24, file: !4, line: 137, baseType: !47, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !24, file: !4, line: 138, baseType: !47, size: 64, align: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !24, file: !4, line: 139, baseType: !47, size: 64, align: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !24, file: !4, line: 140, baseType: !51, size: 32, align: 32, offset: 320)
!94 = !{i32 2, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!97 = distinct !DISubprogram(name: "XdrUtil_ArrayAppend", scope: !98, file: !98, line: 53, type: !99, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!98 = !DIFile(filename: "xdrutil.c", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!99 = !DISubroutineType(types: !100)
!100 = !{!10, !101, !102, !103, !51}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 216, baseType: !105)
!104 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line154")
!105 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!106 = !{}
!107 = !DILocalVariable(name: "array", arg: 1, scope: !97, file: !98, line: 53, type: !101)
!108 = !DIExpression()
!109 = !DILocation(line: 53, column: 28, scope: !97)
!110 = !DILocalVariable(name: "arrayLen", arg: 2, scope: !97, file: !98, line: 54, type: !102)
!111 = !DILocation(line: 54, column: 28, scope: !97)
!112 = !DILocalVariable(name: "elemSz", arg: 3, scope: !97, file: !98, line: 55, type: !103)
!113 = !DILocation(line: 55, column: 28, scope: !97)
!114 = !DILocalVariable(name: "elemCnt", arg: 4, scope: !97, file: !98, line: 56, type: !51)
!115 = !DILocation(line: 56, column: 27, scope: !97)
!116 = !DILocalVariable(name: "ret", scope: !97, file: !98, line: 58, type: !10)
!117 = !DILocation(line: 58, column: 10, scope: !97)
!118 = !DILocalVariable(name: "newarray", scope: !97, file: !98, line: 59, type: !10)
!119 = !DILocation(line: 59, column: 10, scope: !97)
!120 = !DILocation(line: 61, column: 24, scope: !97)
!121 = !DILocation(line: 61, column: 23, scope: !97)
!122 = !DILocation(line: 61, column: 33, scope: !97)
!123 = !DILocation(line: 61, column: 32, scope: !97)
!124 = !DILocation(line: 61, column: 44, scope: !97)
!125 = !DILocation(line: 61, column: 42, scope: !97)
!126 = !DILocation(line: 61, column: 31, scope: !97)
!127 = !DILocation(line: 61, column: 55, scope: !97)
!128 = !DILocation(line: 61, column: 53, scope: !97)
!129 = !DILocation(line: 61, column: 15, scope: !97)
!130 = !DILocation(line: 61, column: 13, scope: !97)
!131 = !DILocation(line: 62, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !97, file: !98, line: 62, column: 8)
!133 = !DILocation(line: 62, column: 17, scope: !132)
!134 = !DILocation(line: 62, column: 8, scope: !97)
!135 = !DILocation(line: 63, column: 34, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !98, line: 62, column: 25)
!137 = !DILocation(line: 63, column: 33, scope: !136)
!138 = !DILocation(line: 63, column: 45, scope: !136)
!139 = !DILocation(line: 63, column: 43, scope: !136)
!140 = !DILocation(line: 63, column: 23, scope: !136)
!141 = !DILocation(line: 63, column: 14, scope: !136)
!142 = !DILocation(line: 63, column: 11, scope: !136)
!143 = !DILocation(line: 64, column: 14, scope: !136)
!144 = !DILocation(line: 64, column: 22, scope: !136)
!145 = !DILocation(line: 64, column: 31, scope: !136)
!146 = !DILocation(line: 64, column: 29, scope: !136)
!147 = !DILocation(line: 64, column: 7, scope: !136)
!148 = !DILocation(line: 65, column: 16, scope: !136)
!149 = !DILocation(line: 65, column: 8, scope: !136)
!150 = !DILocation(line: 65, column: 14, scope: !136)
!151 = !DILocation(line: 66, column: 20, scope: !136)
!152 = !DILocation(line: 66, column: 19, scope: !136)
!153 = !DILocation(line: 66, column: 31, scope: !136)
!154 = !DILocation(line: 66, column: 29, scope: !136)
!155 = !DILocation(line: 66, column: 8, scope: !136)
!156 = !DILocation(line: 66, column: 17, scope: !136)
!157 = !DILocation(line: 67, column: 4, scope: !136)
!158 = !DILocation(line: 69, column: 11, scope: !97)
!159 = !DILocation(line: 69, column: 4, scope: !97)
!160 = distinct !DISubprogram(name: "XdrUtil_Deserialize", scope: !98, file: !98, line: 91, type: !161, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!161 = !DISubroutineType(types: !162)
!162 = !{!13, !163, !103, !10, !10}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!165 = !DILocalVariable(name: "data", arg: 1, scope: !160, file: !98, line: 91, type: !163)
!166 = !DILocation(line: 91, column: 33, scope: !160)
!167 = !DILocalVariable(name: "dataLen", arg: 2, scope: !160, file: !98, line: 92, type: !103)
!168 = !DILocation(line: 92, column: 28, scope: !160)
!169 = !DILocalVariable(name: "xdrProc", arg: 3, scope: !160, file: !98, line: 93, type: !10)
!170 = !DILocation(line: 93, column: 27, scope: !160)
!171 = !DILocalVariable(name: "dest", arg: 4, scope: !160, file: !98, line: 94, type: !10)
!172 = !DILocation(line: 94, column: 27, scope: !160)
!173 = !DILocalVariable(name: "ret", scope: !160, file: !98, line: 96, type: !13)
!174 = !DILocation(line: 96, column: 9, scope: !160)
!175 = !DILocalVariable(name: "proc", scope: !160, file: !98, line: 97, type: !15)
!176 = !DILocation(line: 97, column: 14, scope: !160)
!177 = !DILocation(line: 97, column: 21, scope: !160)
!178 = !DILocalVariable(name: "xdrs", scope: !160, file: !98, line: 98, type: !23)
!179 = !DILocation(line: 98, column: 8, scope: !160)
!180 = !DILocation(line: 104, column: 34, scope: !160)
!181 = !DILocation(line: 104, column: 40, scope: !160)
!182 = !DILocation(line: 104, column: 4, scope: !160)
!183 = !DILocation(line: 105, column: 17, scope: !160)
!184 = !DILocation(line: 105, column: 29, scope: !160)
!185 = !DILocation(line: 105, column: 10, scope: !160)
!186 = !DILocation(line: 105, column: 8, scope: !160)
!187 = !DILocation(line: 106, column: 3, scope: !160)
!188 = distinct !{!188, !187}
!189 = !DILocation(line: 106, column: 6, scope: !190)
!190 = !DILexicalBlockFile(scope: !191, file: !98, discriminator: 1)
!191 = distinct !DILexicalBlock(scope: !192, file: !98, line: 106, column: 12)
!192 = distinct !DILexicalBlock(scope: !160, file: !98, line: 106, column: 6)
!193 = !DILocation(line: 106, column: 13, scope: !190)
!194 = !DILocation(line: 106, column: 12, scope: !190)
!195 = !DILocation(line: 106, column: 6, scope: !196)
!196 = !DILexicalBlockFile(scope: !191, file: !98, discriminator: 2)
!197 = !DILocation(line: 106, column: 13, scope: !196)
!198 = !DILocation(line: 106, column: 24, scope: !196)
!199 = !DILocation(line: 106, column: 6, scope: !200)
!200 = !DILexicalBlockFile(scope: !192, file: !98, discriminator: 3)
!201 = !DILocation(line: 108, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !160, file: !98, line: 108, column: 8)
!203 = !DILocation(line: 108, column: 8, scope: !160)
!204 = !DILocation(line: 109, column: 28, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !98, line: 108, column: 14)
!206 = !DILocation(line: 109, column: 44, scope: !205)
!207 = !DILocation(line: 109, column: 7, scope: !205)
!208 = !DILocation(line: 110, column: 4, scope: !205)
!209 = !DILocation(line: 112, column: 11, scope: !160)
!210 = !DILocation(line: 112, column: 4, scope: !160)
