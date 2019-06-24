; ModuleID = './[inter]keepalived--core--daemon.o.i'
source_filename = "./[inter]keepalived--core--daemon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@log_file_name = external global i8*, align 8
@.str = private unnamed_addr constant [20 x i8] c"xdaemon: fork error\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"xdaemon: setsid error\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"xdaemon: chdir error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @xdaemon(i1 zeroext, i1 zeroext, i1 zeroext) #0 !dbg !6 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = zext i1 %0 to i8
  store i8 %10, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !16, metadata !17), !dbg !18
  %11 = zext i1 %1 to i8
  store i8 %11, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !19, metadata !17), !dbg !20
  %12 = zext i1 %2 to i8
  store i8 %12, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !21, metadata !17), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %8, metadata !23, metadata !17), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %9, metadata !25, metadata !17), !dbg !26
  %13 = load i8*, i8** @log_file_name, align 8, !dbg !27
  %14 = icmp ne i8* %13, null, !dbg !27
  br i1 %14, label %15, label %16, !dbg !29

; <label>:15:                                     ; preds = %3
  call void @flush_log_file(), !dbg !30
  br label %16, !dbg !30

; <label>:16:                                     ; preds = %15, %3
  %17 = call i32 @fork() #5, !dbg !31
  store i32 %17, i32* %8, align 4, !dbg !32
  %18 = load i32, i32* %8, align 4, !dbg !33
  %19 = icmp slt i32 %18, 0, !dbg !35
  br i1 %19, label %20, label %21, !dbg !36

; <label>:20:                                     ; preds = %16
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)), !dbg !37
  store i32 -1, i32* %4, align 4, !dbg !39
  br label %49, !dbg !39

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %8, align 4, !dbg !40
  %23 = icmp ne i32 %22, 0, !dbg !42
  br i1 %23, label %24, label %30, !dbg !43

; <label>:24:                                     ; preds = %21
  %25 = load i8, i8* %7, align 1, !dbg !44
  %26 = trunc i8 %25 to i1, !dbg !44
  br i1 %26, label %28, label %27, !dbg !47

; <label>:27:                                     ; preds = %24
  call void @exit(i32 0) #6, !dbg !48
  unreachable, !dbg !48

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %8, align 4, !dbg !49
  store i32 %29, i32* %4, align 4, !dbg !50
  br label %49, !dbg !50

; <label>:30:                                     ; preds = %21
  %31 = call i32 @setsid() #5, !dbg !51
  store i32 %31, i32* %8, align 4, !dbg !52
  %32 = load i32, i32* %8, align 4, !dbg !53
  %33 = icmp slt i32 %32, -1, !dbg !55
  br i1 %33, label %34, label %35, !dbg !56

; <label>:34:                                     ; preds = %30
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)), !dbg !57
  store i32 -1, i32* %4, align 4, !dbg !59
  br label %49, !dbg !59

; <label>:35:                                     ; preds = %30
  %36 = load i8, i8* %5, align 1, !dbg !60
  %37 = trunc i8 %36 to i1, !dbg !60
  br i1 %37, label %44, label %38, !dbg !62

; <label>:38:                                     ; preds = %35
  %39 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #5, !dbg !63
  store i32 %39, i32* %9, align 4, !dbg !65
  %40 = load i32, i32* %9, align 4, !dbg !66
  %41 = icmp slt i32 %40, 0, !dbg !68
  br i1 %41, label %42, label %43, !dbg !69

; <label>:42:                                     ; preds = %38
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)), !dbg !70
  br label %43, !dbg !72

; <label>:43:                                     ; preds = %42, %38
  br label %44, !dbg !73

; <label>:44:                                     ; preds = %43, %35
  %45 = load i8, i8* %6, align 1, !dbg !74
  %46 = trunc i8 %45 to i1, !dbg !74
  br i1 %46, label %48, label %47, !dbg !76

; <label>:47:                                     ; preds = %44
  call void @set_std_fd(i1 zeroext true), !dbg !77
  br label %48, !dbg !77

; <label>:48:                                     ; preds = %47, %44
  store i32 0, i32* %4, align 4, !dbg !78
  br label %49, !dbg !78

; <label>:49:                                     ; preds = %48, %34, %28, %20
  %50 = load i32, i32* %4, align 4, !dbg !79
  ret i32 %50, !dbg !79
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @flush_log_file() #2

; Function Attrs: nounwind
declare i32 @fork() #3

declare void @log_message(i32, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @setsid() #3

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

declare void @set_std_fd(i1 zeroext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]keepalived--core--daemon.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "xdaemon", scope: !7, file: !7, line: 35, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "daemon.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !11, line: 98, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !13, line: 133, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!16 = !DILocalVariable(name: "nochdir", arg: 1, scope: !6, file: !7, line: 35, type: !15)
!17 = !DIExpression()
!18 = !DILocation(line: 35, column: 13, scope: !6)
!19 = !DILocalVariable(name: "noclose", arg: 2, scope: !6, file: !7, line: 35, type: !15)
!20 = !DILocation(line: 35, column: 27, scope: !6)
!21 = !DILocalVariable(name: "exitflag", arg: 3, scope: !6, file: !7, line: 35, type: !15)
!22 = !DILocation(line: 35, column: 41, scope: !6)
!23 = !DILocalVariable(name: "pid", scope: !6, file: !7, line: 37, type: !10)
!24 = !DILocation(line: 37, column: 8, scope: !6)
!25 = !DILocalVariable(name: "ret", scope: !6, file: !7, line: 38, type: !14)
!26 = !DILocation(line: 38, column: 6, scope: !6)
!27 = !DILocation(line: 40, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !6, file: !7, line: 40, column: 6)
!29 = !DILocation(line: 40, column: 6, scope: !6)
!30 = !DILocation(line: 41, column: 3, scope: !28)
!31 = !DILocation(line: 44, column: 8, scope: !6)
!32 = !DILocation(line: 44, column: 6, scope: !6)
!33 = !DILocation(line: 45, column: 6, scope: !34)
!34 = distinct !DILexicalBlock(scope: !6, file: !7, line: 45, column: 6)
!35 = !DILocation(line: 45, column: 10, scope: !34)
!36 = !DILocation(line: 45, column: 6, scope: !6)
!37 = !DILocation(line: 46, column: 3, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !7, line: 45, column: 15)
!39 = !DILocation(line: 47, column: 3, scope: !38)
!40 = !DILocation(line: 51, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !6, file: !7, line: 51, column: 6)
!42 = !DILocation(line: 51, column: 10, scope: !41)
!43 = !DILocation(line: 51, column: 6, scope: !6)
!44 = !DILocation(line: 52, column: 8, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !7, line: 52, column: 7)
!46 = distinct !DILexicalBlock(scope: !41, file: !7, line: 51, column: 16)
!47 = !DILocation(line: 52, column: 7, scope: !46)
!48 = !DILocation(line: 53, column: 4, scope: !45)
!49 = !DILocation(line: 55, column: 11, scope: !45)
!50 = !DILocation(line: 55, column: 4, scope: !45)
!51 = !DILocation(line: 59, column: 8, scope: !6)
!52 = !DILocation(line: 59, column: 6, scope: !6)
!53 = !DILocation(line: 60, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !6, file: !7, line: 60, column: 6)
!55 = !DILocation(line: 60, column: 10, scope: !54)
!56 = !DILocation(line: 60, column: 6, scope: !6)
!57 = !DILocation(line: 61, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !7, line: 60, column: 16)
!59 = !DILocation(line: 62, column: 3, scope: !58)
!60 = !DILocation(line: 66, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !6, file: !7, line: 66, column: 6)
!62 = !DILocation(line: 66, column: 6, scope: !6)
!63 = !DILocation(line: 67, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !7, line: 66, column: 16)
!65 = !DILocation(line: 67, column: 7, scope: !64)
!66 = !DILocation(line: 68, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !7, line: 68, column: 7)
!68 = !DILocation(line: 68, column: 11, scope: !67)
!69 = !DILocation(line: 68, column: 7, scope: !64)
!70 = !DILocation(line: 69, column: 4, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !7, line: 68, column: 16)
!72 = !DILocation(line: 70, column: 3, scope: !71)
!73 = !DILocation(line: 71, column: 2, scope: !64)
!74 = !DILocation(line: 74, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !6, file: !7, line: 74, column: 6)
!76 = !DILocation(line: 74, column: 6, scope: !6)
!77 = !DILocation(line: 75, column: 3, scope: !75)
!78 = !DILocation(line: 77, column: 2, scope: !6)
!79 = !DILocation(line: 78, column: 1, scope: !6)
