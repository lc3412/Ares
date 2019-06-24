; ModuleID = './checkvm.o.i'
source_filename = "./checkvm.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.Backdoor_proto = type { %struct.anon }
%struct.anon = type { %union.anon, i64, %union.anon.2, %union.anon.5, %union.anon.8, %union.anon.11 }
%union.anon = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.11 = type { i64 }
%struct.anon.3 = type { i16, i16 }
%struct.anon.14 = type { %union.anon.15, %union.anon.18, %union.anon.21, %union.anon.24, %union.anon.27, %union.anon.30 }
%union.anon.15 = type { i64 }
%union.anon.18 = type { i64 }
%union.anon.21 = type { i64 }
%union.anon.24 = type { i64 }
%union.anon.27 = type { i64 }
%union.anon.30 = type { i64 }

@vm_version = constant [20 x i8] c"version=10.3.0.5330\00", section ".modinfo", align 16
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [35 x i8] c"Not running in a virtual machine.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Couldn't get version\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rph\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"0 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ESX Server\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Workstation\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"VM's hw version is %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%s version %d (good)\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"VMware software\00", align 1

; Function Attrs: nounwind uwtable
define void @getHWVersion(i32*) #0 !dbg !14 {
  %2 = alloca i32*, align 8
  %3 = alloca %union.Backdoor_proto, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !23, metadata !24), !dbg !25
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %3, metadata !26, metadata !24), !dbg !211
  %4 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !212
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 2, !dbg !213
  %6 = bitcast %union.anon.2* %5 to %struct.anon.3*, !dbg !214
  %7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !215
  store i16 17, i16* %7, align 8, !dbg !216
  call void @Backdoor(%union.Backdoor_proto* %3), !dbg !217
  %8 = bitcast %union.Backdoor_proto* %3 to %struct.anon.14*, !dbg !218
  %9 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 0, !dbg !219
  %10 = bitcast %union.anon.15* %9 to i32*, !dbg !220
  %11 = load i32, i32* %10, align 8, !dbg !220
  %12 = load i32*, i32** %2, align 8, !dbg !221
  store i32 %11, i32* %12, align 4, !dbg !222
  ret void, !dbg !223
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Backdoor(%union.Backdoor_proto*) #2

; Function Attrs: nounwind uwtable
define void @getScreenSize(i32*) #0 !dbg !224 {
  %2 = alloca i32*, align 8
  %3 = alloca %union.Backdoor_proto, align 8
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !225, metadata !24), !dbg !226
  call void @llvm.dbg.declare(metadata %union.Backdoor_proto* %3, metadata !227, metadata !24), !dbg !228
  %4 = bitcast %union.Backdoor_proto* %3 to %struct.anon*, !dbg !229
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 2, !dbg !230
  %6 = bitcast %union.anon.2* %5 to %struct.anon.3*, !dbg !231
  %7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 0, !dbg !232
  store i16 15, i16* %7, align 8, !dbg !233
  call void @Backdoor(%union.Backdoor_proto* %3), !dbg !234
  %8 = bitcast %union.Backdoor_proto* %3 to %struct.anon.14*, !dbg !235
  %9 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 0, !dbg !236
  %10 = bitcast %union.anon.15* %9 to i32*, !dbg !237
  %11 = load i32, i32* %10, align 8, !dbg !237
  %12 = load i32*, i32** %2, align 8, !dbg !238
  store i32 %11, i32* %12, align 4, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !241 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !247, metadata !24), !dbg !248
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !249, metadata !24), !dbg !250
  call void @llvm.dbg.declare(metadata [2 x i32]* %6, metadata !251, metadata !24), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %7, metadata !256, metadata !24), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %8, metadata !258, metadata !24), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %9, metadata !260, metadata !24), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %10, metadata !262, metadata !24), !dbg !263
  store i32 0, i32* %10, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata i32* %11, metadata !264, metadata !24), !dbg !265
  %12 = call signext i8 @VmCheck_IsVirtualWorld(), !dbg !266
  %13 = icmp ne i8 %12, 0, !dbg !266
  br i1 %13, label %17, label %14, !dbg !268

; <label>:14:                                     ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !269
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0)), !dbg !271
  store i32 1, i32* %3, align 4, !dbg !272
  br label %70, !dbg !272

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !273
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !275
  %20 = call signext i8 @VmCheck_GetVersion(i32* %18, i32* %19), !dbg !276
  %21 = icmp ne i8 %20, 0, !dbg !276
  br i1 %21, label %25, label %22, !dbg !277

; <label>:22:                                     ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !278
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)), !dbg !280
  store i32 1, i32* %3, align 4, !dbg !281
  br label %70, !dbg !281

; <label>:25:                                     ; preds = %17
  br label %26, !dbg !282

; <label>:26:                                     ; preds = %65, %25
  %27 = load i32, i32* %4, align 4, !dbg !283
  %28 = load i8**, i8*** %5, align 8, !dbg !285
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #4, !dbg !286
  store i32 %29, i32* %7, align 4, !dbg !287
  %30 = icmp ne i32 %29, -1, !dbg !288
  br i1 %30, label %31, label %66, !dbg !289

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %7, align 4, !dbg !290
  switch i32 %32, label %64 [
    i32 114, label %33
    i32 112, label %51
    i32 104, label %61
  ], !dbg !292

; <label>:33:                                     ; preds = %31
  call void @getScreenSize(i32* %10), !dbg !293
  %34 = load i32, i32* %10, align 4, !dbg !295
  %35 = lshr i32 %34, 16, !dbg !296
  %36 = and i32 %35, 65535, !dbg !297
  store i32 %36, i32* %8, align 4, !dbg !298
  %37 = load i32, i32* %10, align 4, !dbg !299
  %38 = and i32 %37, 65535, !dbg !300
  store i32 %38, i32* %9, align 4, !dbg !301
  %39 = load i32, i32* %8, align 4, !dbg !302
  %40 = icmp sle i32 %39, 32767, !dbg !304
  br i1 %40, label %41, label %48, !dbg !305

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %9, align 4, !dbg !306
  %43 = icmp sle i32 %42, 32767, !dbg !308
  br i1 %43, label %44, label %48, !dbg !309

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %8, align 4, !dbg !310
  %46 = load i32, i32* %9, align 4, !dbg !312
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %45, i32 %46), !dbg !313
  br label %50, !dbg !314

; <label>:48:                                     ; preds = %41, %33
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)), !dbg !315
  br label %50

; <label>:50:                                     ; preds = %48, %44
  store i32 0, i32* %3, align 4, !dbg !317
  br label %70, !dbg !317

; <label>:51:                                     ; preds = %31
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !318
  %53 = load i32, i32* %52, align 4, !dbg !318
  switch i32 %53, label %58 [
    i32 2, label %54
    i32 4, label %56
  ], !dbg !319

; <label>:54:                                     ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)), !dbg !320
  br label %60, !dbg !322

; <label>:56:                                     ; preds = %51
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !323
  br label %60, !dbg !324

; <label>:58:                                     ; preds = %51
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)), !dbg !325
  br label %60, !dbg !326

; <label>:60:                                     ; preds = %58, %56, %54
  store i32 0, i32* %3, align 4, !dbg !327
  br label %70, !dbg !327

; <label>:61:                                     ; preds = %31
  call void @getHWVersion(i32* %11), !dbg !328
  %62 = load i32, i32* %11, align 4, !dbg !329
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 %62), !dbg !330
  br label %65, !dbg !331

; <label>:64:                                     ; preds = %31
  br label %65, !dbg !332

; <label>:65:                                     ; preds = %64, %61
  br label %26, !dbg !333, !llvm.loop !335

; <label>:66:                                     ; preds = %26
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0, !dbg !336
  %68 = load i32, i32* %67, align 4, !dbg !336
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %68), !dbg !337
  store i32 0, i32* %3, align 4, !dbg !338
  br label %70, !dbg !338

; <label>:70:                                     ; preds = %66, %60, %50, %22, %14
  %71 = load i32, i32* %3, align 4, !dbg !339
  ret i32 %71, !dbg !339
}

declare signext i8 @VmCheck_IsVirtualWorld() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare signext i8 @VmCheck_GetVersion(i32*, i32*) #2

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "checkvm.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1297")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "vm_version", scope: !0, file: !5, line: 44, type: !6, isLocal: false, isDefinition: true, variable: [20 x i8]* @vm_version)
!5 = !DIFile(filename: "checkvm.c", directory: "/home/lichi/Desktop/open-vm-tools/line1297")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, align: 8, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 20)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!14 = distinct !DISubprogram(name: "getHWVersion", scope: !5, file: !5, line: 51, type: !15, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !19, line: 173, baseType: !20)
!19 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1297")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 51, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1297")
!22 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "hwVersion", arg: 1, scope: !14, file: !5, line: 51, type: !17)
!24 = !DIExpression()
!25 = !DILocation(line: 51, column: 22, scope: !14)
!26 = !DILocalVariable(name: "bp", scope: !14, file: !5, line: 53, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Backdoor_proto", file: !28, line: 102, baseType: !29)
!28 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/backdoor_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1297")
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 85, size: 384, align: 64, elements: !30)
!30 = !{!31, !118}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !29, file: !28, line: 93, baseType: !32, size: 384, align: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !28, line: 86, size: 384, align: 64, elements: !33)
!33 = !{!34, !55, !58, !73, !88, !103}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !32, file: !28, line: 87, baseType: !35, size: 64, align: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !28, line: 87, size: 64, align: 64, elements: !36)
!36 = !{!37, !45, !46, !51}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !35, file: !28, line: 87, baseType: !38, size: 32, align: 16)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !28, line: 87, size: 32, align: 16, elements: !39)
!39 = !{!40, !44}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !38, file: !28, line: 87, baseType: !41, size: 16, align: 16)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !19, line: 175, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 49, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !38, file: !28, line: 87, baseType: !41, size: 16, align: 16, offset: 16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !35, file: !28, line: 87, baseType: !18, size: 32, align: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !35, file: !28, line: 87, baseType: !47, size: 64, align: 32)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !28, line: 87, size: 64, align: 32, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !47, file: !28, line: 87, baseType: !18, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !47, file: !28, line: 87, baseType: !18, size: 32, align: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !35, file: !28, line: 87, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !19, line: 171, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !21, line: 55, baseType: !54)
!54 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !32, file: !28, line: 88, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 216, baseType: !54)
!57 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1297")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !32, file: !28, line: 89, baseType: !59, size: 64, align: 64, offset: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !28, line: 89, size: 64, align: 64, elements: !60)
!60 = !{!61, !66, !67, !72}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !59, file: !28, line: 89, baseType: !62, size: 32, align: 16)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !28, line: 89, size: 32, align: 16, elements: !63)
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !62, file: !28, line: 89, baseType: !41, size: 16, align: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !62, file: !28, line: 89, baseType: !41, size: 16, align: 16, offset: 16)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !59, file: !28, line: 89, baseType: !18, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !59, file: !28, line: 89, baseType: !68, size: 64, align: 32)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !28, line: 89, size: 64, align: 32, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !68, file: !28, line: 89, baseType: !18, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !68, file: !28, line: 89, baseType: !18, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !59, file: !28, line: 89, baseType: !52, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !32, file: !28, line: 90, baseType: !74, size: 64, align: 64, offset: 192)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !28, line: 90, size: 64, align: 64, elements: !75)
!75 = !{!76, !81, !82, !87}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !74, file: !28, line: 90, baseType: !77, size: 32, align: 16)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !74, file: !28, line: 90, size: 32, align: 16, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !77, file: !28, line: 90, baseType: !41, size: 16, align: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !77, file: !28, line: 90, baseType: !41, size: 16, align: 16, offset: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !74, file: !28, line: 90, baseType: !18, size: 32, align: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !74, file: !28, line: 90, baseType: !83, size: 64, align: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !74, file: !28, line: 90, size: 64, align: 32, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !83, file: !28, line: 90, baseType: !18, size: 32, align: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !83, file: !28, line: 90, baseType: !18, size: 32, align: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !74, file: !28, line: 90, baseType: !52, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !32, file: !28, line: 91, baseType: !89, size: 64, align: 64, offset: 256)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !28, line: 91, size: 64, align: 64, elements: !90)
!90 = !{!91, !96, !97, !102}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !89, file: !28, line: 91, baseType: !92, size: 32, align: 16)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !28, line: 91, size: 32, align: 16, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !92, file: !28, line: 91, baseType: !41, size: 16, align: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !92, file: !28, line: 91, baseType: !41, size: 16, align: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !89, file: !28, line: 91, baseType: !18, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !89, file: !28, line: 91, baseType: !98, size: 64, align: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !28, line: 91, size: 64, align: 32, elements: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !98, file: !28, line: 91, baseType: !18, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !98, file: !28, line: 91, baseType: !18, size: 32, align: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !89, file: !28, line: 91, baseType: !52, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !32, file: !28, line: 92, baseType: !104, size: 64, align: 64, offset: 320)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !32, file: !28, line: 92, size: 64, align: 64, elements: !105)
!105 = !{!106, !111, !112, !117}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !104, file: !28, line: 92, baseType: !107, size: 32, align: 16)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !28, line: 92, size: 32, align: 16, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !107, file: !28, line: 92, baseType: !41, size: 16, align: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !107, file: !28, line: 92, baseType: !41, size: 16, align: 16, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !104, file: !28, line: 92, baseType: !18, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !104, file: !28, line: 92, baseType: !113, size: 64, align: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !28, line: 92, size: 64, align: 32, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !113, file: !28, line: 92, baseType: !18, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !113, file: !28, line: 92, baseType: !18, size: 32, align: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !104, file: !28, line: 92, baseType: !52, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !29, file: !28, line: 101, baseType: !119, size: 384, align: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !28, line: 94, size: 384, align: 64, elements: !120)
!120 = !{!121, !136, !151, !166, !181, !196}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !119, file: !28, line: 95, baseType: !122, size: 64, align: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !28, line: 95, size: 64, align: 64, elements: !123)
!123 = !{!124, !129, !130, !135}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !122, file: !28, line: 95, baseType: !125, size: 32, align: 16)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !28, line: 95, size: 32, align: 16, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !125, file: !28, line: 95, baseType: !41, size: 16, align: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !125, file: !28, line: 95, baseType: !41, size: 16, align: 16, offset: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !122, file: !28, line: 95, baseType: !18, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !122, file: !28, line: 95, baseType: !131, size: 64, align: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !28, line: 95, size: 64, align: 32, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !131, file: !28, line: 95, baseType: !18, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !131, file: !28, line: 95, baseType: !18, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !122, file: !28, line: 95, baseType: !52, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !119, file: !28, line: 96, baseType: !137, size: 64, align: 64, offset: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !28, line: 96, size: 64, align: 64, elements: !138)
!138 = !{!139, !144, !145, !150}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !137, file: !28, line: 96, baseType: !140, size: 32, align: 16)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !28, line: 96, size: 32, align: 16, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !140, file: !28, line: 96, baseType: !41, size: 16, align: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !140, file: !28, line: 96, baseType: !41, size: 16, align: 16, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !137, file: !28, line: 96, baseType: !18, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !137, file: !28, line: 96, baseType: !146, size: 64, align: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !28, line: 96, size: 64, align: 32, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !146, file: !28, line: 96, baseType: !18, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !146, file: !28, line: 96, baseType: !18, size: 32, align: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !137, file: !28, line: 96, baseType: !52, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !119, file: !28, line: 97, baseType: !152, size: 64, align: 64, offset: 128)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !28, line: 97, size: 64, align: 64, elements: !153)
!153 = !{!154, !159, !160, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !152, file: !28, line: 97, baseType: !155, size: 32, align: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !28, line: 97, size: 32, align: 16, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !155, file: !28, line: 97, baseType: !41, size: 16, align: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !155, file: !28, line: 97, baseType: !41, size: 16, align: 16, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !152, file: !28, line: 97, baseType: !18, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !152, file: !28, line: 97, baseType: !161, size: 64, align: 32)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !28, line: 97, size: 64, align: 32, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !161, file: !28, line: 97, baseType: !18, size: 32, align: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !161, file: !28, line: 97, baseType: !18, size: 32, align: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !152, file: !28, line: 97, baseType: !52, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !119, file: !28, line: 98, baseType: !167, size: 64, align: 64, offset: 192)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !28, line: 98, size: 64, align: 64, elements: !168)
!168 = !{!169, !174, !175, !180}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !167, file: !28, line: 98, baseType: !170, size: 32, align: 16)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !167, file: !28, line: 98, size: 32, align: 16, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !170, file: !28, line: 98, baseType: !41, size: 16, align: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !170, file: !28, line: 98, baseType: !41, size: 16, align: 16, offset: 16)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !167, file: !28, line: 98, baseType: !18, size: 32, align: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !167, file: !28, line: 98, baseType: !176, size: 64, align: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !167, file: !28, line: 98, size: 64, align: 32, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !176, file: !28, line: 98, baseType: !18, size: 32, align: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !176, file: !28, line: 98, baseType: !18, size: 32, align: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !167, file: !28, line: 98, baseType: !52, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !119, file: !28, line: 99, baseType: !182, size: 64, align: 64, offset: 256)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !28, line: 99, size: 64, align: 64, elements: !183)
!183 = !{!184, !189, !190, !195}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !182, file: !28, line: 99, baseType: !185, size: 32, align: 16)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !28, line: 99, size: 32, align: 16, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !185, file: !28, line: 99, baseType: !41, size: 16, align: 16)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !185, file: !28, line: 99, baseType: !41, size: 16, align: 16, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !182, file: !28, line: 99, baseType: !18, size: 32, align: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !182, file: !28, line: 99, baseType: !191, size: 64, align: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !182, file: !28, line: 99, size: 64, align: 32, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !191, file: !28, line: 99, baseType: !18, size: 32, align: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !191, file: !28, line: 99, baseType: !18, size: 32, align: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !182, file: !28, line: 99, baseType: !52, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !119, file: !28, line: 100, baseType: !197, size: 64, align: 64, offset: 320)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !28, line: 100, size: 64, align: 64, elements: !198)
!198 = !{!199, !204, !205, !210}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "halfs", scope: !197, file: !28, line: 100, baseType: !200, size: 32, align: 16)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !28, line: 100, size: 32, align: 16, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !200, file: !28, line: 100, baseType: !41, size: 16, align: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !200, file: !28, line: 100, baseType: !41, size: 16, align: 16, offset: 16)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !197, file: !28, line: 100, baseType: !18, size: 32, align: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !197, file: !28, line: 100, baseType: !206, size: 64, align: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !28, line: 100, size: 64, align: 32, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !206, file: !28, line: 100, baseType: !18, size: 32, align: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !206, file: !28, line: 100, baseType: !18, size: 32, align: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "quad", scope: !197, file: !28, line: 100, baseType: !52, size: 64, align: 64)
!211 = !DILocation(line: 53, column: 19, scope: !14)
!212 = !DILocation(line: 54, column: 7, scope: !14)
!213 = !DILocation(line: 54, column: 10, scope: !14)
!214 = !DILocation(line: 54, column: 13, scope: !14)
!215 = !DILocation(line: 54, column: 19, scope: !14)
!216 = !DILocation(line: 54, column: 23, scope: !14)
!217 = !DILocation(line: 55, column: 4, scope: !14)
!218 = !DILocation(line: 56, column: 20, scope: !14)
!219 = !DILocation(line: 56, column: 24, scope: !14)
!220 = !DILocation(line: 56, column: 27, scope: !14)
!221 = !DILocation(line: 56, column: 5, scope: !14)
!222 = !DILocation(line: 56, column: 15, scope: !14)
!223 = !DILocation(line: 57, column: 1, scope: !14)
!224 = distinct !DISubprogram(name: "getScreenSize", scope: !5, file: !5, line: 64, type: !15, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!225 = !DILocalVariable(name: "screensize", arg: 1, scope: !224, file: !5, line: 64, type: !17)
!226 = !DILocation(line: 64, column: 23, scope: !224)
!227 = !DILocalVariable(name: "bp", scope: !224, file: !5, line: 66, type: !27)
!228 = !DILocation(line: 66, column: 19, scope: !224)
!229 = !DILocation(line: 67, column: 7, scope: !224)
!230 = !DILocation(line: 67, column: 10, scope: !224)
!231 = !DILocation(line: 67, column: 13, scope: !224)
!232 = !DILocation(line: 67, column: 19, scope: !224)
!233 = !DILocation(line: 67, column: 23, scope: !224)
!234 = !DILocation(line: 68, column: 4, scope: !224)
!235 = !DILocation(line: 69, column: 21, scope: !224)
!236 = !DILocation(line: 69, column: 25, scope: !224)
!237 = !DILocation(line: 69, column: 28, scope: !224)
!238 = !DILocation(line: 69, column: 5, scope: !224)
!239 = !DILocation(line: 69, column: 16, scope: !224)
!240 = !DILocation(line: 70, column: 1, scope: !224)
!241 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 78, type: !242, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !244, !245}
!244 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!247 = !DILocalVariable(name: "argc", arg: 1, scope: !241, file: !5, line: 78, type: !244)
!248 = !DILocation(line: 78, column: 10, scope: !241)
!249 = !DILocalVariable(name: "argv", arg: 2, scope: !241, file: !5, line: 79, type: !245)
!250 = !DILocation(line: 79, column: 12, scope: !241)
!251 = !DILocalVariable(name: "version", scope: !241, file: !5, line: 81, type: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, align: 32, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 2)
!255 = !DILocation(line: 81, column: 11, scope: !241)
!256 = !DILocalVariable(name: "opt", scope: !241, file: !5, line: 82, type: !244)
!257 = !DILocation(line: 82, column: 8, scope: !241)
!258 = !DILocalVariable(name: "width", scope: !241, file: !5, line: 83, type: !244)
!259 = !DILocation(line: 83, column: 8, scope: !241)
!260 = !DILocalVariable(name: "height", scope: !241, file: !5, line: 83, type: !244)
!261 = !DILocation(line: 83, column: 15, scope: !241)
!262 = !DILocalVariable(name: "screensize", scope: !241, file: !5, line: 84, type: !18)
!263 = !DILocation(line: 84, column: 11, scope: !241)
!264 = !DILocalVariable(name: "hwVersion", scope: !241, file: !5, line: 85, type: !18)
!265 = !DILocation(line: 85, column: 11, scope: !241)
!266 = !DILocation(line: 87, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !241, file: !5, line: 87, column: 8)
!268 = !DILocation(line: 87, column: 8, scope: !241)
!269 = !DILocation(line: 88, column: 14, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !5, line: 87, column: 35)
!271 = !DILocation(line: 88, column: 7, scope: !270)
!272 = !DILocation(line: 89, column: 7, scope: !270)
!273 = !DILocation(line: 92, column: 29, scope: !274)
!274 = distinct !DILexicalBlock(scope: !241, file: !5, line: 92, column: 8)
!275 = !DILocation(line: 92, column: 42, scope: !274)
!276 = !DILocation(line: 92, column: 9, scope: !274)
!277 = !DILocation(line: 92, column: 8, scope: !241)
!278 = !DILocation(line: 93, column: 14, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !5, line: 92, column: 55)
!280 = !DILocation(line: 93, column: 7, scope: !279)
!281 = !DILocation(line: 94, column: 7, scope: !279)
!282 = !DILocation(line: 100, column: 4, scope: !241)
!283 = !DILocation(line: 100, column: 25, scope: !284)
!284 = !DILexicalBlockFile(scope: !241, file: !5, discriminator: 1)
!285 = !DILocation(line: 100, column: 31, scope: !284)
!286 = !DILocation(line: 100, column: 18, scope: !284)
!287 = !DILocation(line: 100, column: 16, scope: !284)
!288 = !DILocation(line: 100, column: 45, scope: !284)
!289 = !DILocation(line: 100, column: 4, scope: !284)
!290 = !DILocation(line: 101, column: 15, scope: !291)
!291 = distinct !DILexicalBlock(scope: !241, file: !5, line: 100, column: 52)
!292 = !DILocation(line: 101, column: 7, scope: !291)
!293 = !DILocation(line: 103, column: 10, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !5, line: 101, column: 20)
!295 = !DILocation(line: 104, column: 19, scope: !294)
!296 = !DILocation(line: 104, column: 30, scope: !294)
!297 = !DILocation(line: 104, column: 37, scope: !294)
!298 = !DILocation(line: 104, column: 16, scope: !294)
!299 = !DILocation(line: 105, column: 19, scope: !294)
!300 = !DILocation(line: 105, column: 30, scope: !294)
!301 = !DILocation(line: 105, column: 17, scope: !294)
!302 = !DILocation(line: 106, column: 15, scope: !303)
!303 = distinct !DILexicalBlock(scope: !294, file: !5, line: 106, column: 14)
!304 = !DILocation(line: 106, column: 21, scope: !303)
!305 = !DILocation(line: 106, column: 32, scope: !303)
!306 = !DILocation(line: 106, column: 36, scope: !307)
!307 = !DILexicalBlockFile(scope: !303, file: !5, discriminator: 1)
!308 = !DILocation(line: 106, column: 43, scope: !307)
!309 = !DILocation(line: 106, column: 14, scope: !307)
!310 = !DILocation(line: 107, column: 31, scope: !311)
!311 = distinct !DILexicalBlock(scope: !303, file: !5, line: 106, column: 55)
!312 = !DILocation(line: 107, column: 38, scope: !311)
!313 = !DILocation(line: 107, column: 13, scope: !311)
!314 = !DILocation(line: 108, column: 10, scope: !311)
!315 = !DILocation(line: 109, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !303, file: !5, line: 108, column: 17)
!317 = !DILocation(line: 111, column: 10, scope: !294)
!318 = !DILocation(line: 118, column: 18, scope: !294)
!319 = !DILocation(line: 118, column: 10, scope: !294)
!320 = !DILocation(line: 120, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !294, file: !5, line: 118, column: 30)
!322 = !DILocation(line: 121, column: 13, scope: !321)
!323 = !DILocation(line: 124, column: 13, scope: !321)
!324 = !DILocation(line: 125, column: 13, scope: !321)
!325 = !DILocation(line: 128, column: 13, scope: !321)
!326 = !DILocation(line: 129, column: 13, scope: !321)
!327 = !DILocation(line: 131, column: 10, scope: !294)
!328 = !DILocation(line: 134, column: 10, scope: !294)
!329 = !DILocation(line: 135, column: 44, scope: !294)
!330 = !DILocation(line: 135, column: 10, scope: !294)
!331 = !DILocation(line: 136, column: 10, scope: !294)
!332 = !DILocation(line: 139, column: 10, scope: !294)
!333 = !DILocation(line: 100, column: 4, scope: !334)
!334 = !DILexicalBlockFile(scope: !241, file: !5, discriminator: 2)
!335 = distinct !{!335, !282}
!336 = !DILocation(line: 143, column: 59, scope: !241)
!337 = !DILocation(line: 143, column: 4, scope: !241)
!338 = !DILocation(line: 144, column: 4, scope: !241)
!339 = !DILocation(line: 145, column: 1, scope: !241)
