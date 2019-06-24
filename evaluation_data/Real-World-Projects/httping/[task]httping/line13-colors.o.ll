; ModuleID = './line13-colors.o.i'
source_filename = "./line13-colors.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@c_error = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_normal = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_very_normal = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_red = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_blue = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_green = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_yellow = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_magenta = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_cyan = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_white = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@c_bright = global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\011\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\012\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\018\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\019\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\017\019\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\1B[31;40m\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\1B[34;40m\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\1B[32;40m\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\1B[33;40m\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"\1B[35;40m\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"\1B[36;40m\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"\1B[37;40m\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"\1B[1;40m\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\1B[0;37;40m\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"\1B[1;4;40m\00", align 1

; Function Attrs: nounwind uwtable
define void @set_colors(i8 signext) #0 !dbg !22 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !25, metadata !26), !dbg !27
  %3 = load i8, i8* %2, align 1, !dbg !28
  %4 = icmp ne i8 %3, 0, !dbg !28
  br i1 %4, label %5, label %6, !dbg !30

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** @c_red, align 8, !dbg !31
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** @c_blue, align 8, !dbg !33
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** @c_green, align 8, !dbg !34
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** @c_yellow, align 8, !dbg !35
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** @c_magenta, align 8, !dbg !36
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** @c_cyan, align 8, !dbg !37
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8** @c_white, align 8, !dbg !38
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8** @c_bright, align 8, !dbg !39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8** @c_normal, align 8, !dbg !40
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8** @c_very_normal, align 8, !dbg !41
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** @c_error, align 8, !dbg !42
  br label %7, !dbg !43

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8** @c_red, align 8, !dbg !44
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8** @c_blue, align 8, !dbg !46
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8** @c_green, align 8, !dbg !47
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8** @c_yellow, align 8, !dbg !48
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8** @c_magenta, align 8, !dbg !49
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8** @c_cyan, align 8, !dbg !50
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8** @c_white, align 8, !dbg !51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8** @c_bright, align 8, !dbg !52
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8** @c_normal, align 8, !dbg !53
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8** @c_very_normal, align 8, !dbg !54
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8** @c_error, align 8, !dbg !55
  br label %7

; <label>:7:                                      ; preds = %6, %5
  ret void, !dbg !56
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "line13-colors.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!4 = distinct !DIGlobalVariable(name: "c_error", scope: !0, file: !5, line: 3, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_error)
!5 = !DIFile(filename: "colors.c", directory: "/home/lichi/Desktop/httping/task1")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DIGlobalVariable(name: "c_normal", scope: !0, file: !5, line: 4, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_normal)
!10 = distinct !DIGlobalVariable(name: "c_very_normal", scope: !0, file: !5, line: 5, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_very_normal)
!11 = distinct !DIGlobalVariable(name: "c_red", scope: !0, file: !5, line: 6, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_red)
!12 = distinct !DIGlobalVariable(name: "c_blue", scope: !0, file: !5, line: 7, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_blue)
!13 = distinct !DIGlobalVariable(name: "c_green", scope: !0, file: !5, line: 8, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_green)
!14 = distinct !DIGlobalVariable(name: "c_yellow", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_yellow)
!15 = distinct !DIGlobalVariable(name: "c_magenta", scope: !0, file: !5, line: 10, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_magenta)
!16 = distinct !DIGlobalVariable(name: "c_cyan", scope: !0, file: !5, line: 11, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_cyan)
!17 = distinct !DIGlobalVariable(name: "c_white", scope: !0, file: !5, line: 12, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_white)
!18 = distinct !DIGlobalVariable(name: "c_bright", scope: !0, file: !5, line: 13, type: !6, isLocal: false, isDefinition: true, variable: i8** @c_bright)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!22 = distinct !DISubprogram(name: "set_colors", scope: !5, file: !5, line: 15, type: !23, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !8}
!25 = !DILocalVariable(name: "nc", arg: 1, scope: !22, file: !5, line: 15, type: !8)
!26 = !DIExpression()
!27 = !DILocation(line: 15, column: 22, scope: !22)
!28 = !DILocation(line: 17, column: 6, scope: !29)
!29 = distinct !DILexicalBlock(scope: !22, file: !5, line: 17, column: 6)
!30 = !DILocation(line: 17, column: 6, scope: !22)
!31 = !DILocation(line: 19, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !5, line: 18, column: 2)
!33 = !DILocation(line: 20, column: 10, scope: !32)
!34 = !DILocation(line: 21, column: 11, scope: !32)
!35 = !DILocation(line: 22, column: 12, scope: !32)
!36 = !DILocation(line: 23, column: 13, scope: !32)
!37 = !DILocation(line: 24, column: 10, scope: !32)
!38 = !DILocation(line: 25, column: 11, scope: !32)
!39 = !DILocation(line: 27, column: 12, scope: !32)
!40 = !DILocation(line: 28, column: 12, scope: !32)
!41 = !DILocation(line: 30, column: 17, scope: !32)
!42 = !DILocation(line: 32, column: 11, scope: !32)
!43 = !DILocation(line: 33, column: 2, scope: !32)
!44 = !DILocation(line: 36, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !29, file: !5, line: 35, column: 2)
!46 = !DILocation(line: 37, column: 10, scope: !45)
!47 = !DILocation(line: 38, column: 11, scope: !45)
!48 = !DILocation(line: 39, column: 12, scope: !45)
!49 = !DILocation(line: 40, column: 13, scope: !45)
!50 = !DILocation(line: 41, column: 10, scope: !45)
!51 = !DILocation(line: 42, column: 11, scope: !45)
!52 = !DILocation(line: 44, column: 12, scope: !45)
!53 = !DILocation(line: 45, column: 12, scope: !45)
!54 = !DILocation(line: 47, column: 17, scope: !45)
!55 = !DILocation(line: 49, column: 11, scope: !45)
!56 = !DILocation(line: 51, column: 1, scope: !22)
