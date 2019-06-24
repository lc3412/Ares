; ModuleID = './line10-kalman.o.i'
source_filename = "./line10-kalman.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x_est_last = global double 0.000000e+00, align 8
@P_last = global double 0.000000e+00, align 8
@Q = global double 0.000000e+00, align 8
@R = global double 0.000000e+00, align 8
@K = global double 0.000000e+00, align 8
@P = global double 0.000000e+00, align 8
@P_temp = global double 0.000000e+00, align 8
@x_temp_est = global double 0.000000e+00, align 8
@x_est = global double 0.000000e+00, align 8
@z_measured = global double 0.000000e+00, align 8
@z_real = global double 0.000000e+00, align 8
@sum_error_kalman = global double 0.000000e+00, align 8
@sum_error_measure = global double 0.000000e+00, align 8
@first = global i8 1, align 1

; Function Attrs: nounwind uwtable
define void @kalman_init(double) #0 !dbg !24 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !27, metadata !28), !dbg !29
  store double 0.000000e+00, double* @x_est_last, align 8, !dbg !30
  store double 0.000000e+00, double* @P_last, align 8, !dbg !31
  store double 2.200000e-02, double* @Q, align 8, !dbg !32
  store double 6.170000e-01, double* @R, align 8, !dbg !33
  %3 = load double, double* %2, align 8, !dbg !34
  store double %3, double* @z_real, align 8, !dbg !35
  store i8 1, i8* @first, align 1, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define double @kalman_do(double) #0 !dbg !38 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !41, metadata !28), !dbg !42
  %3 = load i8, i8* @first, align 1, !dbg !43
  %4 = icmp ne i8 %3, 0, !dbg !43
  br i1 %4, label %5, label %7, !dbg !45

; <label>:5:                                      ; preds = %1
  store i8 0, i8* @first, align 1, !dbg !46
  %6 = load double, double* %2, align 8, !dbg !48
  store double %6, double* @x_est_last, align 8, !dbg !49
  br label %7, !dbg !50

; <label>:7:                                      ; preds = %5, %1
  %8 = load double, double* @x_est_last, align 8, !dbg !51
  store double %8, double* @x_temp_est, align 8, !dbg !52
  %9 = load double, double* @P_last, align 8, !dbg !53
  %10 = load double, double* @Q, align 8, !dbg !54
  %11 = fadd double %9, %10, !dbg !55
  store double %11, double* @P_temp, align 8, !dbg !56
  %12 = load double, double* @P_temp, align 8, !dbg !57
  %13 = load double, double* @P_temp, align 8, !dbg !58
  %14 = load double, double* @R, align 8, !dbg !59
  %15 = fadd double %13, %14, !dbg !60
  %16 = fdiv double 1.000000e+00, %15, !dbg !61
  %17 = fmul double %12, %16, !dbg !62
  store double %17, double* @K, align 8, !dbg !63
  %18 = load double, double* @x_temp_est, align 8, !dbg !64
  %19 = load double, double* @K, align 8, !dbg !65
  %20 = load double, double* %2, align 8, !dbg !66
  %21 = load double, double* @x_temp_est, align 8, !dbg !67
  %22 = fsub double %20, %21, !dbg !68
  %23 = fmul double %19, %22, !dbg !69
  %24 = fadd double %18, %23, !dbg !70
  store double %24, double* @x_est, align 8, !dbg !71
  %25 = load double, double* @K, align 8, !dbg !72
  %26 = fsub double 1.000000e+00, %25, !dbg !73
  %27 = load double, double* @P_temp, align 8, !dbg !74
  %28 = fmul double %26, %27, !dbg !75
  store double %28, double* @P, align 8, !dbg !76
  %29 = load double, double* @z_real, align 8, !dbg !77
  %30 = load double, double* @x_est, align 8, !dbg !78
  %31 = fsub double %29, %30, !dbg !79
  %32 = call double @fabs(double %31) #1, !dbg !80
  %33 = load double, double* @sum_error_kalman, align 8, !dbg !81
  %34 = fadd double %33, %32, !dbg !81
  store double %34, double* @sum_error_kalman, align 8, !dbg !81
  %35 = load double, double* @z_real, align 8, !dbg !82
  %36 = load double, double* %2, align 8, !dbg !83
  %37 = fsub double %35, %36, !dbg !84
  %38 = call double @fabs(double %37) #1, !dbg !85
  %39 = load double, double* @sum_error_measure, align 8, !dbg !86
  %40 = fadd double %39, %38, !dbg !86
  store double %40, double* @sum_error_measure, align 8, !dbg !86
  %41 = load double, double* @P, align 8, !dbg !87
  store double %41, double* @P_last, align 8, !dbg !88
  %42 = load double, double* @x_est, align 8, !dbg !89
  store double %42, double* @x_est_last, align 8, !dbg !90
  %43 = load double, double* @x_est, align 8, !dbg !91
  ret double %43, !dbg !92
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "line10-kalman.o.i", directory: "/home/lichi/Desktop/httping/task1")
!2 = !{}
!3 = !{!4, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!4 = distinct !DIGlobalVariable(name: "x_est_last", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @x_est_last)
!5 = !DIFile(filename: "kalman.c", directory: "/home/lichi/Desktop/httping/task1")
!6 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!7 = distinct !DIGlobalVariable(name: "P_last", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @P_last)
!8 = distinct !DIGlobalVariable(name: "Q", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @Q)
!9 = distinct !DIGlobalVariable(name: "R", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @R)
!10 = distinct !DIGlobalVariable(name: "K", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @K)
!11 = distinct !DIGlobalVariable(name: "P", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @P)
!12 = distinct !DIGlobalVariable(name: "P_temp", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @P_temp)
!13 = distinct !DIGlobalVariable(name: "x_temp_est", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @x_temp_est)
!14 = distinct !DIGlobalVariable(name: "x_est", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @x_est)
!15 = distinct !DIGlobalVariable(name: "z_measured", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @z_measured)
!16 = distinct !DIGlobalVariable(name: "z_real", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @z_real)
!17 = distinct !DIGlobalVariable(name: "sum_error_kalman", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @sum_error_kalman)
!18 = distinct !DIGlobalVariable(name: "sum_error_measure", scope: !0, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, variable: double* @sum_error_measure)
!19 = distinct !DIGlobalVariable(name: "first", scope: !0, file: !5, line: 10, type: !20, isLocal: false, isDefinition: true, variable: i8* @first)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!24 = distinct !DISubprogram(name: "kalman_init", scope: !5, file: !5, line: 12, type: !25, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !6}
!27 = !DILocalVariable(name: "ideal_value", arg: 1, scope: !24, file: !5, line: 12, type: !6)
!28 = !DIExpression()
!29 = !DILocation(line: 12, column: 25, scope: !24)
!30 = !DILocation(line: 15, column: 13, scope: !24)
!31 = !DILocation(line: 16, column: 9, scope: !24)
!32 = !DILocation(line: 18, column: 4, scope: !24)
!33 = !DILocation(line: 19, column: 4, scope: !24)
!34 = !DILocation(line: 20, column: 11, scope: !24)
!35 = !DILocation(line: 20, column: 9, scope: !24)
!36 = !DILocation(line: 22, column: 8, scope: !24)
!37 = !DILocation(line: 23, column: 1, scope: !24)
!38 = distinct !DISubprogram(name: "kalman_do", scope: !5, file: !5, line: 25, type: !39, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{!6, !6}
!41 = !DILocalVariable(name: "z_measured", arg: 1, scope: !38, file: !5, line: 25, type: !6)
!42 = !DILocation(line: 25, column: 25, scope: !38)
!43 = !DILocation(line: 28, column: 6, scope: !44)
!44 = distinct !DILexicalBlock(scope: !38, file: !5, line: 28, column: 6)
!45 = !DILocation(line: 28, column: 6, scope: !38)
!46 = !DILocation(line: 30, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !5, line: 29, column: 2)
!48 = !DILocation(line: 31, column: 16, scope: !47)
!49 = !DILocation(line: 31, column: 14, scope: !47)
!50 = !DILocation(line: 32, column: 2, scope: !47)
!51 = !DILocation(line: 35, column: 15, scope: !38)
!52 = !DILocation(line: 35, column: 13, scope: !38)
!53 = !DILocation(line: 36, column: 11, scope: !38)
!54 = !DILocation(line: 36, column: 20, scope: !38)
!55 = !DILocation(line: 36, column: 18, scope: !38)
!56 = !DILocation(line: 36, column: 9, scope: !38)
!57 = !DILocation(line: 38, column: 6, scope: !38)
!58 = !DILocation(line: 38, column: 21, scope: !38)
!59 = !DILocation(line: 38, column: 30, scope: !38)
!60 = !DILocation(line: 38, column: 28, scope: !38)
!61 = !DILocation(line: 38, column: 19, scope: !38)
!62 = !DILocation(line: 38, column: 13, scope: !38)
!63 = !DILocation(line: 38, column: 4, scope: !38)
!64 = !DILocation(line: 42, column: 10, scope: !38)
!65 = !DILocation(line: 42, column: 23, scope: !38)
!66 = !DILocation(line: 42, column: 28, scope: !38)
!67 = !DILocation(line: 42, column: 41, scope: !38)
!68 = !DILocation(line: 42, column: 39, scope: !38)
!69 = !DILocation(line: 42, column: 25, scope: !38)
!70 = !DILocation(line: 42, column: 21, scope: !38)
!71 = !DILocation(line: 42, column: 8, scope: !38)
!72 = !DILocation(line: 43, column: 10, scope: !38)
!73 = !DILocation(line: 43, column: 8, scope: !38)
!74 = !DILocation(line: 43, column: 15, scope: !38)
!75 = !DILocation(line: 43, column: 13, scope: !38)
!76 = !DILocation(line: 43, column: 4, scope: !38)
!77 = !DILocation(line: 52, column: 27, scope: !38)
!78 = !DILocation(line: 52, column: 36, scope: !38)
!79 = !DILocation(line: 52, column: 34, scope: !38)
!80 = !DILocation(line: 52, column: 22, scope: !38)
!81 = !DILocation(line: 52, column: 19, scope: !38)
!82 = !DILocation(line: 53, column: 28, scope: !38)
!83 = !DILocation(line: 53, column: 35, scope: !38)
!84 = !DILocation(line: 53, column: 34, scope: !38)
!85 = !DILocation(line: 53, column: 23, scope: !38)
!86 = !DILocation(line: 53, column: 20, scope: !38)
!87 = !DILocation(line: 56, column: 11, scope: !38)
!88 = !DILocation(line: 56, column: 9, scope: !38)
!89 = !DILocation(line: 57, column: 15, scope: !38)
!90 = !DILocation(line: 57, column: 13, scope: !38)
!91 = !DILocation(line: 65, column: 9, scope: !38)
!92 = !DILocation(line: 65, column: 2, scope: !38)
