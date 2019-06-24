; ModuleID = './libguestlib_la-guestlibIoctl_xdr.o.i'
source_filename = "./libguestlib_la-guestlibIoctl_xdr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.GuestLibIoctlAtomicUpdateCookie = type { i8*, i8* }
%struct.GuestLibIoctlParam = type { i32, %union.anon }
%union.anon = type { %struct.GuestLibIoctlAtomicUpdateCookie }

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibAtomicUpdateStatus(%struct.XDR*, i32*) #0 !dbg !29 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !111, metadata !112), !dbg !113
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !114, metadata !112), !dbg !115
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !116
  %7 = load i32*, i32** %5, align 8, !dbg !118
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #3, !dbg !119
  %9 = icmp ne i32 %8, 0, !dbg !119
  br i1 %9, label %11, label %10, !dbg !120

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !121
  br label %12, !dbg !121

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !122
  br label %12, !dbg !122

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !123
  ret i32 %13, !dbg !123
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @xdr_enum(%struct.XDR*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibIoctlId(%struct.XDR*, i32*) #0 !dbg !124 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca i32*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !129, metadata !112), !dbg !130
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !131, metadata !112), !dbg !132
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !133
  %7 = load i32*, i32** %5, align 8, !dbg !135
  %8 = call i32 @xdr_enum(%struct.XDR* %6, i32* %7) #3, !dbg !136
  %9 = icmp ne i32 %8, 0, !dbg !136
  br i1 %9, label %11, label %10, !dbg !137

; <label>:10:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !138
  br label %12, !dbg !138

; <label>:11:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !139
  br label %12, !dbg !139

; <label>:12:                                     ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !140
  ret i32 %13, !dbg !140
}

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibIoctlAtomicUpdateCookie(%struct.XDR*, %struct.GuestLibIoctlAtomicUpdateCookie*) #0 !dbg !141 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestLibIoctlAtomicUpdateCookie*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !150, metadata !112), !dbg !151
  store %struct.GuestLibIoctlAtomicUpdateCookie* %1, %struct.GuestLibIoctlAtomicUpdateCookie** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibIoctlAtomicUpdateCookie** %5, metadata !152, metadata !112), !dbg !153
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !154
  %7 = load %struct.GuestLibIoctlAtomicUpdateCookie*, %struct.GuestLibIoctlAtomicUpdateCookie** %5, align 8, !dbg !156
  %8 = getelementptr inbounds %struct.GuestLibIoctlAtomicUpdateCookie, %struct.GuestLibIoctlAtomicUpdateCookie* %7, i32 0, i32 0, !dbg !157
  %9 = call i32 @xdr_string(%struct.XDR* %6, i8** %8, i32 256) #3, !dbg !158
  %10 = icmp ne i32 %9, 0, !dbg !158
  br i1 %10, label %12, label %11, !dbg !159

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !160
  br label %20, !dbg !160

; <label>:12:                                     ; preds = %2
  %13 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !161
  %14 = load %struct.GuestLibIoctlAtomicUpdateCookie*, %struct.GuestLibIoctlAtomicUpdateCookie** %5, align 8, !dbg !163
  %15 = getelementptr inbounds %struct.GuestLibIoctlAtomicUpdateCookie, %struct.GuestLibIoctlAtomicUpdateCookie* %14, i32 0, i32 1, !dbg !164
  %16 = call i32 @xdr_string(%struct.XDR* %13, i8** %15, i32 256) #3, !dbg !165
  %17 = icmp ne i32 %16, 0, !dbg !165
  br i1 %17, label %19, label %18, !dbg !166

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !167
  br label %20, !dbg !167

; <label>:19:                                     ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !168
  br label %20, !dbg !168

; <label>:20:                                     ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4, !dbg !169
  ret i32 %21, !dbg !169
}

; Function Attrs: nounwind
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define i32 @xdr_GuestLibIoctlParam(%struct.XDR*, %struct.GuestLibIoctlParam*) #0 !dbg !170 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.XDR*, align 8
  %5 = alloca %struct.GuestLibIoctlParam*, align 8
  store %struct.XDR* %0, %struct.XDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.XDR** %4, metadata !182, metadata !112), !dbg !183
  store %struct.GuestLibIoctlParam* %1, %struct.GuestLibIoctlParam** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.GuestLibIoctlParam** %5, metadata !184, metadata !112), !dbg !185
  %6 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !186
  %7 = load %struct.GuestLibIoctlParam*, %struct.GuestLibIoctlParam** %5, align 8, !dbg !188
  %8 = getelementptr inbounds %struct.GuestLibIoctlParam, %struct.GuestLibIoctlParam* %7, i32 0, i32 0, !dbg !189
  %9 = call i32 @xdr_GuestLibIoctlId(%struct.XDR* %6, i32* %8), !dbg !190
  %10 = icmp ne i32 %9, 0, !dbg !190
  br i1 %10, label %12, label %11, !dbg !191

; <label>:11:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !192
  br label %27, !dbg !192

; <label>:12:                                     ; preds = %2
  %13 = load %struct.GuestLibIoctlParam*, %struct.GuestLibIoctlParam** %5, align 8, !dbg !193
  %14 = getelementptr inbounds %struct.GuestLibIoctlParam, %struct.GuestLibIoctlParam* %13, i32 0, i32 0, !dbg !194
  %15 = load i32, i32* %14, align 8, !dbg !194
  switch i32 %15, label %25 [
    i32 1, label %16
  ], !dbg !195

; <label>:16:                                     ; preds = %12
  %17 = load %struct.XDR*, %struct.XDR** %4, align 8, !dbg !196
  %18 = load %struct.GuestLibIoctlParam*, %struct.GuestLibIoctlParam** %5, align 8, !dbg !199
  %19 = getelementptr inbounds %struct.GuestLibIoctlParam, %struct.GuestLibIoctlParam* %18, i32 0, i32 1, !dbg !200
  %20 = bitcast %union.anon* %19 to %struct.GuestLibIoctlAtomicUpdateCookie*, !dbg !201
  %21 = call i32 @xdr_GuestLibIoctlAtomicUpdateCookie(%struct.XDR* %17, %struct.GuestLibIoctlAtomicUpdateCookie* %20), !dbg !202
  %22 = icmp ne i32 %21, 0, !dbg !202
  br i1 %22, label %24, label %23, !dbg !203

; <label>:23:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !204
  br label %27, !dbg !204

; <label>:24:                                     ; preds = %16
  br label %26, !dbg !205

; <label>:25:                                     ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !206
  br label %27, !dbg !206

; <label>:26:                                     ; preds = %24
  store i32 1, i32* %3, align 4, !dbg !207
  br label %27, !dbg !207

; <label>:27:                                     ; preds = %26, %25, %23, %11
  %28 = load i32, i32* %3, align 4, !dbg !208
  ret i32 %28, !dbg !208
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "libguestlib_la-guestlibIoctl_xdr.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1327")
!2 = !{!3, !9, !17}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 81, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/rpc/xdr.h", directory: "/home/lichi/Desktop/open-vm-tools/line1327")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestLibAtomicUpdateStatus", file: !10, line: 19, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "guestlibIoctl.h", directory: "/home/lichi/Desktop/open-vm-tools/line1327")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "GUESTLIB_ATOMIC_UPDATE_OK_SUCCESS", value: 0)
!13 = !DIEnumerator(name: "GUESTLIB_ATOMIC_UPDATE_OK_FAIL", value: 1)
!14 = !DIEnumerator(name: "GUESTLIB_ATOMIC_UPDATE_EBADPARAM", value: 2)
!15 = !DIEnumerator(name: "GUESTLIB_ATOMIC_UPDATE_EUNAVAILABLE", value: 3)
!16 = !DIEnumerator(name: "GUESTLIB_ATOMIC_UPDATE_EUNKNOWN", value: 4)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GuestLibIoctlId", file: !10, line: 28, size: 32, align: 32, elements: !18)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "GUESTLIB_IOCTL_ATOMIC_UPDATE_COOKIE", value: 1)
!20 = !DIEnumerator(name: "GUESTLIB_IOCTL_MAX", value: 2)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "enum_t", file: !24, line: 38, baseType: !25)
!24 = !DIFile(filename: "/usr/include/rpc/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1327")
!25 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!29 = distinct !DISubprogram(name: "xdr_GuestLibAtomicUpdateStatus", scope: !30, file: !30, line: 9, type: !31, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!30 = !DIFile(filename: "guestlibIoctl_xdr.c", directory: "/home/lichi/Desktop/open-vm-tools/line1327")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34, !108}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !24, line: 37, baseType: !25)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 109, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 110, size: 384, align: 64, elements: !37)
!37 = !{!38, !39, !104, !105, !106, !107}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !36, file: !4, line: 112, baseType: !3, size: 32, align: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !36, file: !4, line: 136, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 113, size: 640, align: 64, elements: !42)
!42 = !{!43, !49, !55, !68, !74, !80, !84, !90, !94, !98}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !41, file: !4, line: 115, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!33, !34, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !41, file: !4, line: 117, baseType: !50, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!33, !34, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !41, file: !4, line: 119, baseType: !56, size: 64, align: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!33, !34, !59, !65}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !60, line: 116, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1327")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__caddr_t", file: !62, line: 183, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1327")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !60, line: 35, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !62, line: 32, baseType: !67)
!67 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !41, file: !4, line: 121, baseType: !69, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!33, !34, !72, !65}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !41, file: !4, line: 123, baseType: !75, size: 64, align: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!65, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !41, file: !4, line: 125, baseType: !81, size: 64, align: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!33, !34, !65}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !41, file: !4, line: 127, baseType: !85, size: 64, align: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !34, !65}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !60, line: 196, baseType: !25)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !41, file: !4, line: 129, baseType: !91, size: 64, align: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !34}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !41, file: !4, line: 131, baseType: !95, size: 64, align: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!33, !34, !88}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !41, file: !4, line: 133, baseType: !99, size: 64, align: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!33, !34, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !36, file: !4, line: 137, baseType: !59, size: 64, align: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !36, file: !4, line: 138, baseType: !59, size: 64, align: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !36, file: !4, line: 139, baseType: !59, size: 64, align: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !36, file: !4, line: 140, baseType: !65, size: 32, align: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibAtomicUpdateStatus", file: !10, line: 26, baseType: !9)
!110 = !{}
!111 = !DILocalVariable(name: "xdrs", arg: 1, scope: !29, file: !30, line: 9, type: !34)
!112 = !DIExpression()
!113 = !DILocation(line: 9, column: 38, scope: !29)
!114 = !DILocalVariable(name: "objp", arg: 2, scope: !29, file: !30, line: 9, type: !108)
!115 = !DILocation(line: 9, column: 72, scope: !29)
!116 = !DILocation(line: 12, column: 18, scope: !117)
!117 = distinct !DILexicalBlock(scope: !29, file: !30, line: 12, column: 7)
!118 = !DILocation(line: 12, column: 35, scope: !117)
!119 = !DILocation(line: 12, column: 8, scope: !117)
!120 = !DILocation(line: 12, column: 7, scope: !29)
!121 = !DILocation(line: 13, column: 4, scope: !117)
!122 = !DILocation(line: 14, column: 2, scope: !29)
!123 = !DILocation(line: 15, column: 1, scope: !29)
!124 = distinct !DISubprogram(name: "xdr_GuestLibIoctlId", scope: !30, file: !30, line: 18, type: !125, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!125 = !DISubroutineType(types: !126)
!126 = !{!33, !34, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibIoctlId", file: !10, line: 32, baseType: !17)
!129 = !DILocalVariable(name: "xdrs", arg: 1, scope: !124, file: !30, line: 18, type: !34)
!130 = !DILocation(line: 18, column: 27, scope: !124)
!131 = !DILocalVariable(name: "objp", arg: 2, scope: !124, file: !30, line: 18, type: !127)
!132 = !DILocation(line: 18, column: 50, scope: !124)
!133 = !DILocation(line: 21, column: 18, scope: !134)
!134 = distinct !DILexicalBlock(scope: !124, file: !30, line: 21, column: 7)
!135 = !DILocation(line: 21, column: 35, scope: !134)
!136 = !DILocation(line: 21, column: 8, scope: !134)
!137 = !DILocation(line: 21, column: 7, scope: !124)
!138 = !DILocation(line: 22, column: 4, scope: !134)
!139 = !DILocation(line: 23, column: 2, scope: !124)
!140 = !DILocation(line: 24, column: 1, scope: !124)
!141 = distinct !DISubprogram(name: "xdr_GuestLibIoctlAtomicUpdateCookie", scope: !30, file: !30, line: 27, type: !142, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!142 = !DISubroutineType(types: !143)
!143 = !{!33, !34, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibIoctlAtomicUpdateCookie", file: !10, line: 38, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibIoctlAtomicUpdateCookie", file: !10, line: 34, size: 128, align: 64, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !146, file: !10, line: 35, baseType: !63, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !146, file: !10, line: 36, baseType: !63, size: 64, align: 64, offset: 64)
!150 = !DILocalVariable(name: "xdrs", arg: 1, scope: !141, file: !30, line: 27, type: !34)
!151 = !DILocation(line: 27, column: 43, scope: !141)
!152 = !DILocalVariable(name: "objp", arg: 2, scope: !141, file: !30, line: 27, type: !144)
!153 = !DILocation(line: 27, column: 82, scope: !141)
!154 = !DILocation(line: 30, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !141, file: !30, line: 30, column: 7)
!156 = !DILocation(line: 30, column: 27, scope: !155)
!157 = !DILocation(line: 30, column: 33, scope: !155)
!158 = !DILocation(line: 30, column: 8, scope: !155)
!159 = !DILocation(line: 30, column: 7, scope: !141)
!160 = !DILocation(line: 31, column: 4, scope: !155)
!161 = !DILocation(line: 32, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !141, file: !30, line: 32, column: 7)
!163 = !DILocation(line: 32, column: 27, scope: !162)
!164 = !DILocation(line: 32, column: 33, scope: !162)
!165 = !DILocation(line: 32, column: 8, scope: !162)
!166 = !DILocation(line: 32, column: 7, scope: !141)
!167 = !DILocation(line: 33, column: 4, scope: !162)
!168 = !DILocation(line: 34, column: 2, scope: !141)
!169 = !DILocation(line: 35, column: 1, scope: !141)
!170 = distinct !DISubprogram(name: "xdr_GuestLibIoctlParam", scope: !30, file: !30, line: 38, type: !171, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !110)
!171 = !DISubroutineType(types: !172)
!172 = !{!33, !34, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GuestLibIoctlParam", file: !10, line: 46, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GuestLibIoctlParam", file: !10, line: 40, size: 192, align: 64, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !175, file: !10, line: 41, baseType: !128, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "GuestLibIoctlParam_u", scope: !175, file: !10, line: 44, baseType: !179, size: 128, align: 64, offset: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !10, line: 42, size: 128, align: 64, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "atomicUpdateCookie", scope: !179, file: !10, line: 43, baseType: !146, size: 128, align: 64)
!182 = !DILocalVariable(name: "xdrs", arg: 1, scope: !170, file: !30, line: 38, type: !34)
!183 = !DILocation(line: 38, column: 30, scope: !170)
!184 = !DILocalVariable(name: "objp", arg: 2, scope: !170, file: !30, line: 38, type: !173)
!185 = !DILocation(line: 38, column: 56, scope: !170)
!186 = !DILocation(line: 41, column: 29, scope: !187)
!187 = distinct !DILexicalBlock(scope: !170, file: !30, line: 41, column: 7)
!188 = !DILocation(line: 41, column: 36, scope: !187)
!189 = !DILocation(line: 41, column: 42, scope: !187)
!190 = !DILocation(line: 41, column: 8, scope: !187)
!191 = !DILocation(line: 41, column: 7, scope: !170)
!192 = !DILocation(line: 42, column: 4, scope: !187)
!193 = !DILocation(line: 43, column: 10, scope: !170)
!194 = !DILocation(line: 43, column: 16, scope: !170)
!195 = !DILocation(line: 43, column: 2, scope: !170)
!196 = !DILocation(line: 45, column: 46, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !30, line: 45, column: 8)
!198 = distinct !DILexicalBlock(scope: !170, file: !30, line: 43, column: 19)
!199 = !DILocation(line: 45, column: 53, scope: !197)
!200 = !DILocation(line: 45, column: 59, scope: !197)
!201 = !DILocation(line: 45, column: 80, scope: !197)
!202 = !DILocation(line: 45, column: 9, scope: !197)
!203 = !DILocation(line: 45, column: 8, scope: !198)
!204 = !DILocation(line: 46, column: 5, scope: !197)
!205 = !DILocation(line: 47, column: 3, scope: !198)
!206 = !DILocation(line: 49, column: 3, scope: !198)
!207 = !DILocation(line: 51, column: 2, scope: !170)
!208 = !DILocation(line: 52, column: 1, scope: !170)
