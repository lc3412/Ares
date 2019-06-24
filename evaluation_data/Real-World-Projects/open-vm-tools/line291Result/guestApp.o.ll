; ModuleID = './guestApp.o.i'
source_filename = "./guestApp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"suspend-script\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"suspend-vm-default\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"resume-script\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"resume-vm-default\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"poweroff-script\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"poweroff-vm-default\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"poweron-script\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"poweron-vm-default\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"/etc/vmware-tools\00", align 1
@GuestApp_GetConfPath.confPath = internal global i8* null, align 8

; Function Attrs: nounwind uwtable
define i8* @GuestApp_GetDefaultScript(i8*) #0 !dbg !16 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !22), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !22), !dbg !25
  store i8* null, i8** %3, align 8, !dbg !25
  %4 = load i8*, i8** %2, align 8, !dbg !26
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #4, !dbg !28
  %6 = icmp eq i32 %5, 0, !dbg !29
  br i1 %6, label %7, label %8, !dbg !30

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8, !dbg !31
  br label %26, !dbg !33

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !34
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #4, !dbg !37
  %11 = icmp eq i32 %10, 0, !dbg !38
  br i1 %11, label %12, label %13, !dbg !37

; <label>:12:                                     ; preds = %8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8** %3, align 8, !dbg !39
  br label %25, !dbg !41

; <label>:13:                                     ; preds = %8
  %14 = load i8*, i8** %2, align 8, !dbg !42
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #4, !dbg !45
  %16 = icmp eq i32 %15, 0, !dbg !46
  br i1 %16, label %17, label %18, !dbg !45

; <label>:17:                                     ; preds = %13
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8** %3, align 8, !dbg !47
  br label %24, !dbg !49

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %2, align 8, !dbg !50
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #4, !dbg !53
  %21 = icmp eq i32 %20, 0, !dbg !54
  br i1 %21, label %22, label %23, !dbg !53

; <label>:22:                                     ; preds = %18
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8** %3, align 8, !dbg !55
  br label %23, !dbg !57

; <label>:23:                                     ; preds = %22, %18
  br label %24

; <label>:24:                                     ; preds = %23, %17
  br label %25

; <label>:25:                                     ; preds = %24, %12
  br label %26

; <label>:26:                                     ; preds = %25, %7
  %27 = load i8*, i8** %3, align 8, !dbg !58
  ret i8* %27, !dbg !59
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @GuestApp_GetInstallPath() #0 !dbg !60 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !61, metadata !22), !dbg !62
  store i8* null, i8** %1, align 8, !dbg !62
  %2 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)), !dbg !63
  store i8* %2, i8** %1, align 8, !dbg !64
  %3 = load i8*, i8** %1, align 8, !dbg !65
  ret i8* %3, !dbg !66
}

declare i8* @Str_Asprintf(i64*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @GuestApp_GetConfPath() #0 !dbg !7 {
  %1 = load i8*, i8** @GuestApp_GetConfPath.confPath, align 8, !dbg !67
  %2 = icmp eq i8* %1, null, !dbg !69
  br i1 %2, label %3, label %5, !dbg !70

; <label>:3:                                      ; preds = %0
  %4 = call i8* @GuestApp_GetInstallPath(), !dbg !71
  store i8* %4, i8** @GuestApp_GetConfPath.confPath, align 8, !dbg !73
  br label %5, !dbg !74

; <label>:5:                                      ; preds = %3, %0
  %6 = load i8*, i8** @GuestApp_GetConfPath.confPath, align 8, !dbg !75
  %7 = icmp ne i8* %6, null, !dbg !75
  br i1 %7, label %8, label %11, !dbg !75

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** @GuestApp_GetConfPath.confPath, align 8, !dbg !76
  %10 = call i8* @UtilSafeStrdup0(i8* %9), !dbg !78
  br label %12, !dbg !79

; <label>:11:                                     ; preds = %5
  br label %12, !dbg !80

; <label>:12:                                     ; preds = %11, %8
  %13 = phi i8* [ %10, %8 ], [ null, %11 ], !dbg !82
  ret i8* %13, !dbg !84
}

declare i8* @UtilSafeStrdup0(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "guestApp.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line291")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = distinct !DIGlobalVariable(name: "confPath", scope: !7, file: !8, line: 272, type: !11, isLocal: true, isDefinition: true, variable: i8** @GuestApp_GetConfPath.confPath)
!7 = distinct !DISubprogram(name: "GuestApp_GetConfPath", scope: !8, file: !8, line: 270, type: !9, isLocal: false, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "guestApp.c", directory: "/home/lichi/Desktop/open-vm-tools/line291")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = distinct !DISubprogram(name: "GuestApp_GetDefaultScript", scope: !8, file: !8, line: 100, type: !17, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!21 = !DILocalVariable(name: "confName", arg: 1, scope: !16, file: !8, line: 100, type: !19)
!22 = !DIExpression()
!23 = !DILocation(line: 100, column: 39, scope: !16)
!24 = !DILocalVariable(name: "value", scope: !16, file: !8, line: 102, type: !19)
!25 = !DILocation(line: 102, column: 16, scope: !16)
!26 = !DILocation(line: 103, column: 15, scope: !27)
!27 = distinct !DILexicalBlock(scope: !16, file: !8, line: 103, column: 8)
!28 = !DILocation(line: 103, column: 8, scope: !27)
!29 = !DILocation(line: 103, column: 43, scope: !27)
!30 = !DILocation(line: 103, column: 8, scope: !16)
!31 = !DILocation(line: 104, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !8, line: 103, column: 49)
!33 = !DILocation(line: 105, column: 4, scope: !32)
!34 = !DILocation(line: 105, column: 22, scope: !35)
!35 = !DILexicalBlockFile(scope: !36, file: !8, discriminator: 1)
!36 = distinct !DILexicalBlock(scope: !27, file: !8, line: 105, column: 15)
!37 = !DILocation(line: 105, column: 15, scope: !35)
!38 = !DILocation(line: 105, column: 49, scope: !35)
!39 = !DILocation(line: 106, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !8, line: 105, column: 55)
!41 = !DILocation(line: 107, column: 4, scope: !40)
!42 = !DILocation(line: 107, column: 22, scope: !43)
!43 = !DILexicalBlockFile(scope: !44, file: !8, discriminator: 1)
!44 = distinct !DILexicalBlock(scope: !36, file: !8, line: 107, column: 15)
!45 = !DILocation(line: 107, column: 15, scope: !43)
!46 = !DILocation(line: 107, column: 51, scope: !43)
!47 = !DILocation(line: 108, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !8, line: 107, column: 57)
!49 = !DILocation(line: 109, column: 4, scope: !48)
!50 = !DILocation(line: 109, column: 22, scope: !51)
!51 = !DILexicalBlockFile(scope: !52, file: !8, discriminator: 1)
!52 = distinct !DILexicalBlock(scope: !44, file: !8, line: 109, column: 15)
!53 = !DILocation(line: 109, column: 15, scope: !51)
!54 = !DILocation(line: 109, column: 50, scope: !51)
!55 = !DILocation(line: 110, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !8, line: 109, column: 56)
!57 = !DILocation(line: 111, column: 4, scope: !56)
!58 = !DILocation(line: 112, column: 11, scope: !16)
!59 = !DILocation(line: 112, column: 4, scope: !16)
!60 = distinct !DISubprogram(name: "GuestApp_GetInstallPath", scope: !8, file: !8, line: 211, type: !9, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!61 = !DILocalVariable(name: "pathUtf8", scope: !60, file: !8, line: 213, type: !11)
!62 = !DILocation(line: 213, column: 10, scope: !60)
!63 = !DILocation(line: 237, column: 15, scope: !60)
!64 = !DILocation(line: 237, column: 13, scope: !60)
!65 = !DILocation(line: 240, column: 11, scope: !60)
!66 = !DILocation(line: 240, column: 4, scope: !60)
!67 = !DILocation(line: 274, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !7, file: !8, line: 274, column: 8)
!69 = !DILocation(line: 274, column: 17, scope: !68)
!70 = !DILocation(line: 274, column: 8, scope: !7)
!71 = !DILocation(line: 279, column: 18, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !8, line: 274, column: 25)
!73 = !DILocation(line: 279, column: 16, scope: !72)
!74 = !DILocation(line: 281, column: 4, scope: !72)
!75 = !DILocation(line: 286, column: 11, scope: !7)
!76 = !DILocation(line: 286, column: 39, scope: !77)
!77 = !DILexicalBlockFile(scope: !7, file: !8, discriminator: 1)
!78 = !DILocation(line: 286, column: 22, scope: !77)
!79 = !DILocation(line: 286, column: 11, scope: !77)
!80 = !DILocation(line: 286, column: 11, scope: !81)
!81 = !DILexicalBlockFile(scope: !7, file: !8, discriminator: 2)
!82 = !DILocation(line: 286, column: 11, scope: !83)
!83 = !DILexicalBlockFile(scope: !7, file: !8, discriminator: 3)
!84 = !DILocation(line: 286, column: 4, scope: !83)
