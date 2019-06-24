; ModuleID = './libvmtools_la-guestSDKLog.o.i'
source_filename = "./libvmtools_la-guestSDKLog.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"PANIC: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @GuestSDK_Debug(i8*, ...) #0 !dbg !6 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !13, metadata !14), !dbg !15
  ret void, !dbg !16
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @GuestSDK_Log(i8*, ...) #0 !dbg !17 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !18, metadata !14), !dbg !19
  ret void, !dbg !20
}

; Function Attrs: nounwind uwtable
define void @GuestSDK_Warning(i8*, ...) #0 !dbg !21 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !22, metadata !14), !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nounwind uwtable
define void @GuestSDK_Panic(i8*, ...) #0 !dbg !25 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !14), !dbg !27
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !28, metadata !14), !dbg !45
  call void @llvm.dbg.declare(metadata [1024 x i8]* %4, metadata !46, metadata !14), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %5, metadata !51, metadata !14), !dbg !54
  store i8* null, i8** %5, align 8, !dbg !54
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !55
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !55
  call void @llvm.va_start(i8* %7), !dbg !55
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !56
  %9 = load i8*, i8** %2, align 8, !dbg !57
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !58
  %11 = call i32 @Str_Vsnprintf(i8* %8, i64 1024, i8* %9, %struct.__va_list_tag* %10), !dbg !59
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !60
  %13 = bitcast %struct.__va_list_tag* %12 to i8*, !dbg !60
  call void @llvm.va_end(i8* %13), !dbg !60
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i32 0, i32 0, !dbg !61
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !62
  %16 = load i8*, i8** %5, align 8, !dbg !63
  %17 = load volatile i8, i8* %16, align 1, !dbg !64
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0, !dbg !65
  store i8 %17, i8* %18, align 16, !dbg !66
  br label %19, !dbg !67

; <label>:19:                                     ; preds = %1, %19
  br label %19, !dbg !68, !llvm.loop !70
                                                  ; No predecessors!
  ret void, !dbg !71
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "libvmtools_la-guestSDKLog.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1169")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "GuestSDK_Debug", scope: !7, file: !7, line: 47, type: !8, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "guestSDKLog.c", directory: "/home/lichi/Desktop/open-vm-tools/line1169")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, null}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "fmt", arg: 1, scope: !6, file: !7, line: 47, type: !10)
!14 = !DIExpression()
!15 = !DILocation(line: 47, column: 28, scope: !6)
!16 = !DILocation(line: 56, column: 1, scope: !6)
!17 = distinct !DISubprogram(name: "GuestSDK_Log", scope: !7, file: !7, line: 76, type: !8, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!18 = !DILocalVariable(name: "fmt", arg: 1, scope: !17, file: !7, line: 76, type: !10)
!19 = !DILocation(line: 76, column: 26, scope: !17)
!20 = !DILocation(line: 85, column: 1, scope: !17)
!21 = distinct !DISubprogram(name: "GuestSDK_Warning", scope: !7, file: !7, line: 105, type: !8, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!22 = !DILocalVariable(name: "fmt", arg: 1, scope: !21, file: !7, line: 105, type: !10)
!23 = !DILocation(line: 105, column: 30, scope: !21)
!24 = !DILocation(line: 114, column: 1, scope: !21)
!25 = distinct !DISubprogram(name: "GuestSDK_Panic", scope: !7, file: !7, line: 134, type: !8, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!26 = !DILocalVariable(name: "fmt", arg: 1, scope: !25, file: !7, line: 134, type: !10)
!27 = !DILocation(line: 134, column: 28, scope: !25)
!28 = !DILocalVariable(name: "args", scope: !25, file: !7, line: 136, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !30, line: 79, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1169")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !32, line: 40, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1169")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 136, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, align: 64, elements: !43)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 136, size: 192, align: 64, elements: !36)
!36 = !{!37, !39, !40, !42}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !35, file: !1, line: 136, baseType: !38, size: 32, align: 32)
!38 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !35, file: !1, line: 136, baseType: !38, size: 32, align: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !35, file: !1, line: 136, baseType: !41, size: 64, align: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !35, file: !1, line: 136, baseType: !41, size: 64, align: 64, offset: 128)
!43 = !{!44}
!44 = !DISubrange(count: 1)
!45 = !DILocation(line: 136, column: 12, scope: !25)
!46 = !DILocalVariable(name: "buffer", scope: !25, file: !7, line: 137, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, align: 8, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1024)
!50 = !DILocation(line: 137, column: 9, scope: !25)
!51 = !DILocalVariable(name: "p", scope: !25, file: !7, line: 138, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!54 = !DILocation(line: 138, column: 19, scope: !25)
!55 = !DILocation(line: 140, column: 3, scope: !25)
!56 = !DILocation(line: 141, column: 18, scope: !25)
!57 = !DILocation(line: 141, column: 41, scope: !25)
!58 = !DILocation(line: 141, column: 46, scope: !25)
!59 = !DILocation(line: 141, column: 4, scope: !25)
!60 = !DILocation(line: 142, column: 3, scope: !25)
!61 = !DILocation(line: 144, column: 24, scope: !25)
!62 = !DILocation(line: 144, column: 4, scope: !25)
!63 = !DILocation(line: 147, column: 17, scope: !25)
!64 = !DILocation(line: 147, column: 16, scope: !25)
!65 = !DILocation(line: 147, column: 4, scope: !25)
!66 = !DILocation(line: 147, column: 14, scope: !25)
!67 = !DILocation(line: 148, column: 4, scope: !25)
!68 = !DILocation(line: 148, column: 4, scope: !69)
!69 = !DILexicalBlockFile(scope: !25, file: !7, discriminator: 1)
!70 = distinct !{!70, !67}
!71 = !DILocation(line: 149, column: 1, scope: !25)
