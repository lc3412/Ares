; ModuleID = './[inter]test--test_snprintf.o.i'
source_filename = "./[inter]test--test_snprintf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%1.1f\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%-1.5f\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%1.5f\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%123.9f\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%10.5f\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"% 10.5f\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%+22.9f\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%+4.9f\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%01.3f\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%4f\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%3.1f\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%3.2f\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"-16.16f\00", align 1
@main.fp_fmt = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@main.fp_nums = private unnamed_addr constant [14 x double] [double 0x41F800007D01F972, double -1.500000e+00, double 1.342100e+02, double 9.134020e+04, double 3.411234e+02, double 2.039000e+02, double 9.600000e-01, double 9.960000e-01, double 9.996000e-01, double 1.996000e+00, double 4.136000e+00, double 5.030201e+00, double 2.050000e-03, double 0.000000e+00], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"%-1.5d\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%1.5d\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%123.9d\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%5.5d\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%10.5d\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"% 10.5d\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%+22.33d\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%01.3d\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@main.int_fmt = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [6 x i8] c"10.5s\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"5.10s\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"10.1s\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"0.10s\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"10.0s\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"1.10s\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%.1s\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%.10s\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%10s\00", align 1
@main.str_fmt = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* null], align 16
@.str.35 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"a longer string\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"Testing snprintf format codes against system sprintf...\0A\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"snprintf doesn't match Format: %s\0A\09snprintf = [%s]\0A\09 sprintf = [%s]\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"snprintf l1 != l2 (%d %d) %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"%d tests failed out of %d.\0A\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"seeing how many digits we support\0A\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"we seem to support %d digits\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) #0 !dbg !6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [16 x i8*], align 16
  %9 = alloca [14 x double], align 16
  %10 = alloca [11 x i8*], align 16
  %11 = alloca [6 x i64], align 16
  %12 = alloca [11 x i8*], align 16
  %13 = alloca [5 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !14, metadata !15), !dbg !16
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !17, metadata !15), !dbg !18
  call void @llvm.dbg.declare(metadata [1024 x i8]* %6, metadata !19, metadata !15), !dbg !23
  call void @llvm.dbg.declare(metadata [1024 x i8]* %7, metadata !24, metadata !15), !dbg !25
  call void @llvm.dbg.declare(metadata [16 x i8*]* %8, metadata !26, metadata !15), !dbg !30
  %27 = bitcast [16 x i8*]* %8 to i8*, !dbg !30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([16 x i8*]* @main.fp_fmt to i8*), i64 128, i32 16, i1 false), !dbg !30
  call void @llvm.dbg.declare(metadata [14 x double]* %9, metadata !31, metadata !15), !dbg !36
  %28 = bitcast [14 x double]* %9 to i8*, !dbg !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast ([14 x double]* @main.fp_nums to i8*), i64 112, i32 16, i1 false), !dbg !36
  call void @llvm.dbg.declare(metadata [11 x i8*]* %10, metadata !37, metadata !15), !dbg !41
  %29 = bitcast [11 x i8*]* %10 to i8*, !dbg !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast ([11 x i8*]* @main.int_fmt to i8*), i64 88, i32 16, i1 false), !dbg !41
  call void @llvm.dbg.declare(metadata [6 x i64]* %11, metadata !42, metadata !15), !dbg !47
  %30 = bitcast [6 x i64]* %11 to i8*, !dbg !47
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 48, i32 16, i1 false), !dbg !47
  %31 = bitcast i8* %30 to [6 x i64]*, !dbg !47
  %32 = getelementptr [6 x i64], [6 x i64]* %31, i32 0, i32 0, !dbg !47
  store i64 -1, i64* %32, !dbg !47
  %33 = getelementptr [6 x i64], [6 x i64]* %31, i32 0, i32 1, !dbg !47
  store i64 134, i64* %33, !dbg !47
  %34 = getelementptr [6 x i64], [6 x i64]* %31, i32 0, i32 2, !dbg !47
  store i64 91340, i64* %34, !dbg !47
  %35 = getelementptr [6 x i64], [6 x i64]* %31, i32 0, i32 3, !dbg !47
  store i64 341, i64* %35, !dbg !47
  %36 = getelementptr [6 x i64], [6 x i64]* %31, i32 0, i32 4, !dbg !47
  store i64 131, i64* %36, !dbg !47
  call void @llvm.dbg.declare(metadata [11 x i8*]* %12, metadata !48, metadata !15), !dbg !49
  %37 = bitcast [11 x i8*]* %12 to i8*, !dbg !49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast ([11 x i8*]* @main.str_fmt to i8*), i64 88, i32 16, i1 false), !dbg !49
  call void @llvm.dbg.declare(metadata [5 x i8*]* %13, metadata !50, metadata !15), !dbg !54
  %38 = bitcast [5 x i8*]* %13 to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 40, i32 16, i1 false), !dbg !54
  %39 = bitcast i8* %38 to [5 x i8*]*, !dbg !54
  %40 = getelementptr [5 x i8*], [5 x i8*]* %39, i32 0, i32 0, !dbg !54
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8** %40, !dbg !54
  %41 = getelementptr [5 x i8*], [5 x i8*]* %39, i32 0, i32 1, !dbg !54
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8** %41, !dbg !54
  %42 = getelementptr [5 x i8*], [5 x i8*]* %39, i32 0, i32 2, !dbg !54
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0), i8** %42, !dbg !54
  %43 = getelementptr [5 x i8*], [5 x i8*]* %39, i32 0, i32 3, !dbg !54
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i8** %43, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %14, metadata !55, metadata !15), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %15, metadata !57, metadata !15), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %16, metadata !59, metadata !15), !dbg !60
  store i32 0, i32* %16, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %17, metadata !61, metadata !15), !dbg !62
  store i32 0, i32* %17, align 4, !dbg !62
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.39, i32 0, i32 0)), !dbg !63
  store i32 0, i32* %14, align 4, !dbg !64
  br label %45, !dbg !66

; <label>:45:                                     ; preds = %123, %2
  %46 = load i32, i32* %14, align 4, !dbg !67
  %47 = sext i32 %46 to i64, !dbg !70
  %48 = getelementptr inbounds [16 x i8*], [16 x i8*]* %8, i64 0, i64 %47, !dbg !70
  %49 = load i8*, i8** %48, align 8, !dbg !70
  %50 = icmp ne i8* %49, null, !dbg !71
  br i1 %50, label %51, label %126, !dbg !71

; <label>:51:                                     ; preds = %45
  store i32 0, i32* %15, align 4, !dbg !72
  br label %52, !dbg !75

; <label>:52:                                     ; preds = %119, %51
  %53 = load i32, i32* %15, align 4, !dbg !76
  %54 = sext i32 %53 to i64, !dbg !79
  %55 = getelementptr inbounds [14 x double], [14 x double]* %9, i64 0, i64 %54, !dbg !79
  %56 = load double, double* %55, align 8, !dbg !79
  %57 = fcmp une double %56, 0.000000e+00, !dbg !80
  br i1 %57, label %58, label %122, !dbg !81

; <label>:58:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %18, metadata !82, metadata !15), !dbg !84
  %59 = load i32, i32* %14, align 4, !dbg !85
  %60 = sext i32 %59 to i64, !dbg !86
  %61 = getelementptr inbounds [16 x i8*], [16 x i8*]* %8, i64 0, i64 %60, !dbg !86
  %62 = load i8*, i8** %61, align 8, !dbg !86
  %63 = load i32, i32* %15, align 4, !dbg !87
  %64 = sext i32 %63 to i64, !dbg !88
  %65 = getelementptr inbounds [14 x double], [14 x double]* %9, i64 0, i64 %64, !dbg !88
  %66 = load double, double* %65, align 8, !dbg !88
  %67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* null, i64 0, i8* %62, double %66) #6, !dbg !89
  store i32 %67, i32* %18, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %19, metadata !90, metadata !15), !dbg !91
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !92
  %69 = load i32, i32* %14, align 4, !dbg !93
  %70 = sext i32 %69 to i64, !dbg !94
  %71 = getelementptr inbounds [16 x i8*], [16 x i8*]* %8, i64 0, i64 %70, !dbg !94
  %72 = load i8*, i8** %71, align 8, !dbg !94
  %73 = load i32, i32* %15, align 4, !dbg !95
  %74 = sext i32 %73 to i64, !dbg !96
  %75 = getelementptr inbounds [14 x double], [14 x double]* %9, i64 0, i64 %74, !dbg !96
  %76 = load double, double* %75, align 8, !dbg !96
  %77 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %68, i64 1024, i8* %72, double %76) #6, !dbg !97
  store i32 %77, i32* %19, align 4, !dbg !91
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !98
  %79 = load i32, i32* %14, align 4, !dbg !99
  %80 = sext i32 %79 to i64, !dbg !100
  %81 = getelementptr inbounds [16 x i8*], [16 x i8*]* %8, i64 0, i64 %80, !dbg !100
  %82 = load i8*, i8** %81, align 8, !dbg !100
  %83 = load i32, i32* %15, align 4, !dbg !101
  %84 = sext i32 %83 to i64, !dbg !102
  %85 = getelementptr inbounds [14 x double], [14 x double]* %9, i64 0, i64 %84, !dbg !102
  %86 = load double, double* %85, align 8, !dbg !102
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %78, i8* %82, double %86) #6, !dbg !103
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !104
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !106
  %90 = call i32 @strcmp(i8* %88, i8* %89) #7, !dbg !107
  %91 = icmp ne i32 %90, 0, !dbg !107
  br i1 %91, label %92, label %102, !dbg !108

; <label>:92:                                     ; preds = %58
  %93 = load i32, i32* %14, align 4, !dbg !109
  %94 = sext i32 %93 to i64, !dbg !111
  %95 = getelementptr inbounds [16 x i8*], [16 x i8*]* %8, i64 0, i64 %94, !dbg !111
  %96 = load i8*, i8** %95, align 8, !dbg !111
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !112
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !113
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i32 0, i32 0), i8* %96, i8* %97, i8* %98), !dbg !114
  %100 = load i32, i32* %16, align 4, !dbg !115
  %101 = add nsw i32 %100, 1, !dbg !115
  store i32 %101, i32* %16, align 4, !dbg !115
  br label %102, !dbg !116

; <label>:102:                                    ; preds = %92, %58
  %103 = load i32, i32* %18, align 4, !dbg !117
  %104 = load i32, i32* %19, align 4, !dbg !119
  %105 = icmp ne i32 %103, %104, !dbg !120
  br i1 %105, label %106, label %116, !dbg !121

; <label>:106:                                    ; preds = %102
  %107 = load i32, i32* %18, align 4, !dbg !122
  %108 = load i32, i32* %19, align 4, !dbg !124
  %109 = load i32, i32* %14, align 4, !dbg !125
  %110 = sext i32 %109 to i64, !dbg !126
  %111 = getelementptr inbounds [16 x i8*], [16 x i8*]* %8, i64 0, i64 %110, !dbg !126
  %112 = load i8*, i8** %111, align 8, !dbg !126
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i32 %107, i32 %108, i8* %112), !dbg !127
  %114 = load i32, i32* %16, align 4, !dbg !128
  %115 = add nsw i32 %114, 1, !dbg !128
  store i32 %115, i32* %16, align 4, !dbg !128
  br label %116, !dbg !129

; <label>:116:                                    ; preds = %106, %102
  %117 = load i32, i32* %17, align 4, !dbg !130
  %118 = add nsw i32 %117, 1, !dbg !130
  store i32 %118, i32* %17, align 4, !dbg !130
  br label %119, !dbg !131

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* %15, align 4, !dbg !132
  %121 = add nsw i32 %120, 1, !dbg !132
  store i32 %121, i32* %15, align 4, !dbg !132
  br label %52, !dbg !134, !llvm.loop !135

; <label>:122:                                    ; preds = %52
  br label %123, !dbg !137

; <label>:123:                                    ; preds = %122
  %124 = load i32, i32* %14, align 4, !dbg !138
  %125 = add nsw i32 %124, 1, !dbg !138
  store i32 %125, i32* %14, align 4, !dbg !138
  br label %45, !dbg !140, !llvm.loop !141

; <label>:126:                                    ; preds = %45
  store i32 0, i32* %14, align 4, !dbg !143
  br label %127, !dbg !145

; <label>:127:                                    ; preds = %205, %126
  %128 = load i32, i32* %14, align 4, !dbg !146
  %129 = sext i32 %128 to i64, !dbg !149
  %130 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %129, !dbg !149
  %131 = load i8*, i8** %130, align 8, !dbg !149
  %132 = icmp ne i8* %131, null, !dbg !150
  br i1 %132, label %133, label %208, !dbg !150

; <label>:133:                                    ; preds = %127
  store i32 0, i32* %15, align 4, !dbg !151
  br label %134, !dbg !154

; <label>:134:                                    ; preds = %201, %133
  %135 = load i32, i32* %15, align 4, !dbg !155
  %136 = sext i32 %135 to i64, !dbg !158
  %137 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 %136, !dbg !158
  %138 = load i64, i64* %137, align 8, !dbg !158
  %139 = icmp ne i64 %138, 0, !dbg !159
  br i1 %139, label %140, label %204, !dbg !160

; <label>:140:                                    ; preds = %134
  call void @llvm.dbg.declare(metadata i32* %20, metadata !161, metadata !15), !dbg !163
  %141 = load i32, i32* %14, align 4, !dbg !164
  %142 = sext i32 %141 to i64, !dbg !165
  %143 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %142, !dbg !165
  %144 = load i8*, i8** %143, align 8, !dbg !165
  %145 = load i32, i32* %15, align 4, !dbg !166
  %146 = sext i32 %145 to i64, !dbg !167
  %147 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 %146, !dbg !167
  %148 = load i64, i64* %147, align 8, !dbg !167
  %149 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* null, i64 0, i8* %144, i64 %148) #6, !dbg !168
  store i32 %149, i32* %20, align 4, !dbg !163
  call void @llvm.dbg.declare(metadata i32* %21, metadata !169, metadata !15), !dbg !170
  %150 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !171
  %151 = load i32, i32* %14, align 4, !dbg !172
  %152 = sext i32 %151 to i64, !dbg !173
  %153 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %152, !dbg !173
  %154 = load i8*, i8** %153, align 8, !dbg !173
  %155 = load i32, i32* %15, align 4, !dbg !174
  %156 = sext i32 %155 to i64, !dbg !175
  %157 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 %156, !dbg !175
  %158 = load i64, i64* %157, align 8, !dbg !175
  %159 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %150, i64 1024, i8* %154, i64 %158) #6, !dbg !176
  store i32 %159, i32* %21, align 4, !dbg !170
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !177
  %161 = load i32, i32* %14, align 4, !dbg !178
  %162 = sext i32 %161 to i64, !dbg !179
  %163 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %162, !dbg !179
  %164 = load i8*, i8** %163, align 8, !dbg !179
  %165 = load i32, i32* %15, align 4, !dbg !180
  %166 = sext i32 %165 to i64, !dbg !181
  %167 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 %166, !dbg !181
  %168 = load i64, i64* %167, align 8, !dbg !181
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %160, i8* %164, i64 %168) #6, !dbg !182
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !183
  %171 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !185
  %172 = call i32 @strcmp(i8* %170, i8* %171) #7, !dbg !186
  %173 = icmp ne i32 %172, 0, !dbg !186
  br i1 %173, label %174, label %184, !dbg !187

; <label>:174:                                    ; preds = %140
  %175 = load i32, i32* %14, align 4, !dbg !188
  %176 = sext i32 %175 to i64, !dbg !190
  %177 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %176, !dbg !190
  %178 = load i8*, i8** %177, align 8, !dbg !190
  %179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !191
  %180 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !192
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i32 0, i32 0), i8* %178, i8* %179, i8* %180), !dbg !193
  %182 = load i32, i32* %16, align 4, !dbg !194
  %183 = add nsw i32 %182, 1, !dbg !194
  store i32 %183, i32* %16, align 4, !dbg !194
  br label %184, !dbg !195

; <label>:184:                                    ; preds = %174, %140
  %185 = load i32, i32* %20, align 4, !dbg !196
  %186 = load i32, i32* %21, align 4, !dbg !198
  %187 = icmp ne i32 %185, %186, !dbg !199
  br i1 %187, label %188, label %198, !dbg !200

; <label>:188:                                    ; preds = %184
  %189 = load i32, i32* %20, align 4, !dbg !201
  %190 = load i32, i32* %21, align 4, !dbg !203
  %191 = load i32, i32* %14, align 4, !dbg !204
  %192 = sext i32 %191 to i64, !dbg !205
  %193 = getelementptr inbounds [11 x i8*], [11 x i8*]* %10, i64 0, i64 %192, !dbg !205
  %194 = load i8*, i8** %193, align 8, !dbg !205
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i32 %189, i32 %190, i8* %194), !dbg !206
  %196 = load i32, i32* %16, align 4, !dbg !207
  %197 = add nsw i32 %196, 1, !dbg !207
  store i32 %197, i32* %16, align 4, !dbg !207
  br label %198, !dbg !208

; <label>:198:                                    ; preds = %188, %184
  %199 = load i32, i32* %17, align 4, !dbg !209
  %200 = add nsw i32 %199, 1, !dbg !209
  store i32 %200, i32* %17, align 4, !dbg !209
  br label %201, !dbg !210

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* %15, align 4, !dbg !211
  %203 = add nsw i32 %202, 1, !dbg !211
  store i32 %203, i32* %15, align 4, !dbg !211
  br label %134, !dbg !213, !llvm.loop !214

; <label>:204:                                    ; preds = %134
  br label %205, !dbg !216

; <label>:205:                                    ; preds = %204
  %206 = load i32, i32* %14, align 4, !dbg !217
  %207 = add nsw i32 %206, 1, !dbg !217
  store i32 %207, i32* %14, align 4, !dbg !217
  br label %127, !dbg !219, !llvm.loop !220

; <label>:208:                                    ; preds = %127
  store i32 0, i32* %14, align 4, !dbg !222
  br label %209, !dbg !224

; <label>:209:                                    ; preds = %287, %208
  %210 = load i32, i32* %14, align 4, !dbg !225
  %211 = sext i32 %210 to i64, !dbg !228
  %212 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 %211, !dbg !228
  %213 = load i8*, i8** %212, align 8, !dbg !228
  %214 = icmp ne i8* %213, null, !dbg !229
  br i1 %214, label %215, label %290, !dbg !229

; <label>:215:                                    ; preds = %209
  store i32 0, i32* %15, align 4, !dbg !230
  br label %216, !dbg !233

; <label>:216:                                    ; preds = %283, %215
  %217 = load i32, i32* %15, align 4, !dbg !234
  %218 = sext i32 %217 to i64, !dbg !237
  %219 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %218, !dbg !237
  %220 = load i8*, i8** %219, align 8, !dbg !237
  %221 = icmp ne i8* %220, null, !dbg !238
  br i1 %221, label %222, label %286, !dbg !239

; <label>:222:                                    ; preds = %216
  call void @llvm.dbg.declare(metadata i32* %22, metadata !240, metadata !15), !dbg !242
  %223 = load i32, i32* %14, align 4, !dbg !243
  %224 = sext i32 %223 to i64, !dbg !244
  %225 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 %224, !dbg !244
  %226 = load i8*, i8** %225, align 8, !dbg !244
  %227 = load i32, i32* %15, align 4, !dbg !245
  %228 = sext i32 %227 to i64, !dbg !246
  %229 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %228, !dbg !246
  %230 = load i8*, i8** %229, align 8, !dbg !246
  %231 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* null, i64 0, i8* %226, i8* %230) #6, !dbg !247
  store i32 %231, i32* %22, align 4, !dbg !242
  call void @llvm.dbg.declare(metadata i32* %23, metadata !248, metadata !15), !dbg !249
  %232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !250
  %233 = load i32, i32* %14, align 4, !dbg !251
  %234 = sext i32 %233 to i64, !dbg !252
  %235 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 %234, !dbg !252
  %236 = load i8*, i8** %235, align 8, !dbg !252
  %237 = load i32, i32* %15, align 4, !dbg !253
  %238 = sext i32 %237 to i64, !dbg !254
  %239 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %238, !dbg !254
  %240 = load i8*, i8** %239, align 8, !dbg !254
  %241 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %232, i64 1024, i8* %236, i8* %240) #6, !dbg !255
  store i32 %241, i32* %23, align 4, !dbg !249
  %242 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !256
  %243 = load i32, i32* %14, align 4, !dbg !257
  %244 = sext i32 %243 to i64, !dbg !258
  %245 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 %244, !dbg !258
  %246 = load i8*, i8** %245, align 8, !dbg !258
  %247 = load i32, i32* %15, align 4, !dbg !259
  %248 = sext i32 %247 to i64, !dbg !260
  %249 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %248, !dbg !260
  %250 = load i8*, i8** %249, align 8, !dbg !260
  %251 = call i32 (i8*, i8*, ...) @sprintf(i8* %242, i8* %246, i8* %250) #6, !dbg !261
  %252 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !262
  %253 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !264
  %254 = call i32 @strcmp(i8* %252, i8* %253) #7, !dbg !265
  %255 = icmp ne i32 %254, 0, !dbg !265
  br i1 %255, label %256, label %266, !dbg !266

; <label>:256:                                    ; preds = %222
  %257 = load i32, i32* %14, align 4, !dbg !267
  %258 = sext i32 %257 to i64, !dbg !269
  %259 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 %258, !dbg !269
  %260 = load i8*, i8** %259, align 8, !dbg !269
  %261 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !270
  %262 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !271
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i32 0, i32 0), i8* %260, i8* %261, i8* %262), !dbg !272
  %264 = load i32, i32* %16, align 4, !dbg !273
  %265 = add nsw i32 %264, 1, !dbg !273
  store i32 %265, i32* %16, align 4, !dbg !273
  br label %266, !dbg !274

; <label>:266:                                    ; preds = %256, %222
  %267 = load i32, i32* %22, align 4, !dbg !275
  %268 = load i32, i32* %23, align 4, !dbg !277
  %269 = icmp ne i32 %267, %268, !dbg !278
  br i1 %269, label %270, label %280, !dbg !279

; <label>:270:                                    ; preds = %266
  %271 = load i32, i32* %22, align 4, !dbg !280
  %272 = load i32, i32* %23, align 4, !dbg !282
  %273 = load i32, i32* %14, align 4, !dbg !283
  %274 = sext i32 %273 to i64, !dbg !284
  %275 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 %274, !dbg !284
  %276 = load i8*, i8** %275, align 8, !dbg !284
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i32 %271, i32 %272, i8* %276), !dbg !285
  %278 = load i32, i32* %16, align 4, !dbg !286
  %279 = add nsw i32 %278, 1, !dbg !286
  store i32 %279, i32* %16, align 4, !dbg !286
  br label %280, !dbg !287

; <label>:280:                                    ; preds = %270, %266
  %281 = load i32, i32* %17, align 4, !dbg !288
  %282 = add nsw i32 %281, 1, !dbg !288
  store i32 %282, i32* %17, align 4, !dbg !288
  br label %283, !dbg !289

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* %15, align 4, !dbg !290
  %285 = add nsw i32 %284, 1, !dbg !290
  store i32 %285, i32* %15, align 4, !dbg !290
  br label %216, !dbg !292, !llvm.loop !293

; <label>:286:                                    ; preds = %216
  br label %287, !dbg !295

; <label>:287:                                    ; preds = %286
  %288 = load i32, i32* %14, align 4, !dbg !296
  %289 = add nsw i32 %288, 1, !dbg !296
  store i32 %289, i32* %14, align 4, !dbg !296
  br label %209, !dbg !298, !llvm.loop !299

; <label>:290:                                    ; preds = %209
  %291 = load i32, i32* %16, align 4, !dbg !301
  %292 = load i32, i32* %17, align 4, !dbg !302
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i32 %291, i32 %292), !dbg !303
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0)), !dbg !304
  call void @llvm.dbg.declare(metadata double* %24, metadata !305, metadata !15), !dbg !307
  store double 0x3FBF9ADD3746F65F, double* %24, align 8, !dbg !307
  store i32 0, i32* %14, align 4, !dbg !308
  br label %295, !dbg !310

; <label>:295:                                    ; preds = %320, %290
  %296 = load i32, i32* %14, align 4, !dbg !311
  %297 = icmp slt i32 %296, 100, !dbg !314
  br i1 %297, label %298, label %323, !dbg !315

; <label>:298:                                    ; preds = %295
  call void @llvm.dbg.declare(metadata double* %25, metadata !316, metadata !15), !dbg !318
  %299 = load i32, i32* %14, align 4, !dbg !319
  %300 = sitofp i32 %299 to double, !dbg !319
  %301 = call double @pow(double 1.000000e+01, double %300) #6, !dbg !320
  store double %301, double* %25, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata double* %26, metadata !321, metadata !15), !dbg !322
  %302 = load double, double* %24, align 8, !dbg !323
  %303 = load double, double* %25, align 8, !dbg !324
  %304 = fmul double %302, %303, !dbg !325
  store double %304, double* %26, align 8, !dbg !322
  %305 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !326
  %306 = load double, double* %26, align 8, !dbg !327
  %307 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %305, i64 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), double %306) #6, !dbg !328
  %308 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !329
  %309 = load double, double* %26, align 8, !dbg !330
  %310 = call i32 (i8*, i8*, ...) @sprintf(i8* %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), double %309) #6, !dbg !331
  %311 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0, !dbg !332
  %312 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i32 0, i32 0, !dbg !334
  %313 = call i32 @strcmp(i8* %311, i8* %312) #7, !dbg !335
  %314 = icmp ne i32 %313, 0, !dbg !335
  br i1 %314, label %315, label %319, !dbg !336

; <label>:315:                                    ; preds = %298
  %316 = load i32, i32* %14, align 4, !dbg !337
  %317 = sub nsw i32 %316, 1, !dbg !339
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i32 %317), !dbg !340
  br label %323, !dbg !341

; <label>:319:                                    ; preds = %298
  br label %320, !dbg !342

; <label>:320:                                    ; preds = %319
  %321 = load i32, i32* %14, align 4, !dbg !343
  %322 = add nsw i32 %321, 1, !dbg !343
  store i32 %322, i32* %14, align 4, !dbg !343
  br label %295, !dbg !345, !llvm.loop !346

; <label>:323:                                    ; preds = %315, %295
  ret i32 0, !dbg !348
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare double @pow(double, double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]test--test_snprintf.o.i", directory: "/home/lichi/Desktop/matio/[task]test--test_snprintf")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 14, type: !8, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "test_snprintf.c", directory: "/home/lichi/Desktop/matio/[task]test--test_snprintf")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !6, file: !7, line: 14, type: !10)
!15 = !DIExpression()
!16 = !DILocation(line: 14, column: 14, scope: !6)
!17 = !DILocalVariable(name: "argv", arg: 2, scope: !6, file: !7, line: 14, type: !11)
!18 = !DILocation(line: 14, column: 27, scope: !6)
!19 = !DILocalVariable(name: "buf1", scope: !6, file: !7, line: 16, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, align: 8, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 1024)
!23 = !DILocation(line: 16, column: 14, scope: !6)
!24 = !DILocalVariable(name: "buf2", scope: !6, file: !7, line: 17, type: !20)
!25 = !DILocation(line: 17, column: 14, scope: !6)
!26 = !DILocalVariable(name: "fp_fmt", scope: !6, file: !7, line: 18, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1024, align: 64, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 16)
!30 = !DILocation(line: 18, column: 15, scope: !6)
!31 = !DILocalVariable(name: "fp_nums", scope: !6, file: !7, line: 36, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 896, align: 64, elements: !34)
!33 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!34 = !{!35}
!35 = !DISubrange(count: 14)
!36 = !DILocation(line: 36, column: 16, scope: !6)
!37 = !DILocalVariable(name: "int_fmt", scope: !6, file: !7, line: 39, type: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 704, align: 64, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 11)
!41 = !DILocation(line: 39, column: 15, scope: !6)
!42 = !DILocalVariable(name: "int_nums", scope: !6, file: !7, line: 52, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 384, align: 64, elements: !45)
!44 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!45 = !{!46}
!46 = !DISubrange(count: 6)
!47 = !DILocation(line: 52, column: 14, scope: !6)
!48 = !DILocalVariable(name: "str_fmt", scope: !6, file: !7, line: 53, type: !38)
!49 = !DILocation(line: 53, column: 15, scope: !6)
!50 = !DILocalVariable(name: "str_vals", scope: !6, file: !7, line: 66, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, align: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 5)
!54 = !DILocation(line: 66, column: 15, scope: !6)
!55 = !DILocalVariable(name: "x", scope: !6, file: !7, line: 67, type: !10)
!56 = !DILocation(line: 67, column: 13, scope: !6)
!57 = !DILocalVariable(name: "y", scope: !6, file: !7, line: 67, type: !10)
!58 = !DILocation(line: 67, column: 16, scope: !6)
!59 = !DILocalVariable(name: "fail", scope: !6, file: !7, line: 68, type: !10)
!60 = !DILocation(line: 68, column: 13, scope: !6)
!61 = !DILocalVariable(name: "num", scope: !6, file: !7, line: 69, type: !10)
!62 = !DILocation(line: 69, column: 13, scope: !6)
!63 = !DILocation(line: 71, column: 9, scope: !6)
!64 = !DILocation(line: 73, column: 16, scope: !65)
!65 = distinct !DILexicalBlock(scope: !6, file: !7, line: 73, column: 9)
!66 = !DILocation(line: 73, column: 14, scope: !65)
!67 = !DILocation(line: 73, column: 28, scope: !68)
!68 = !DILexicalBlockFile(scope: !69, file: !7, discriminator: 1)
!69 = distinct !DILexicalBlock(scope: !65, file: !7, line: 73, column: 9)
!70 = !DILocation(line: 73, column: 21, scope: !68)
!71 = !DILocation(line: 73, column: 9, scope: !68)
!72 = !DILocation(line: 74, column: 24, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !7, line: 74, column: 17)
!74 = distinct !DILexicalBlock(scope: !69, file: !7, line: 73, column: 38)
!75 = !DILocation(line: 74, column: 22, scope: !73)
!76 = !DILocation(line: 74, column: 37, scope: !77)
!77 = !DILexicalBlockFile(scope: !78, file: !7, discriminator: 1)
!78 = distinct !DILexicalBlock(scope: !73, file: !7, line: 74, column: 17)
!79 = !DILocation(line: 74, column: 29, scope: !77)
!80 = !DILocation(line: 74, column: 40, scope: !77)
!81 = !DILocation(line: 74, column: 17, scope: !77)
!82 = !DILocalVariable(name: "l1", scope: !83, file: !7, line: 75, type: !10)
!83 = distinct !DILexicalBlock(scope: !78, file: !7, line: 74, column: 52)
!84 = !DILocation(line: 75, column: 29, scope: !83)
!85 = !DILocation(line: 75, column: 62, scope: !83)
!86 = !DILocation(line: 75, column: 55, scope: !83)
!87 = !DILocation(line: 75, column: 74, scope: !83)
!88 = !DILocation(line: 75, column: 66, scope: !83)
!89 = !DILocation(line: 75, column: 34, scope: !83)
!90 = !DILocalVariable(name: "l2", scope: !83, file: !7, line: 76, type: !10)
!91 = !DILocation(line: 76, column: 29, scope: !83)
!92 = !DILocation(line: 76, column: 43, scope: !83)
!93 = !DILocation(line: 76, column: 70, scope: !83)
!94 = !DILocation(line: 76, column: 63, scope: !83)
!95 = !DILocation(line: 76, column: 82, scope: !83)
!96 = !DILocation(line: 76, column: 74, scope: !83)
!97 = !DILocation(line: 76, column: 34, scope: !83)
!98 = !DILocation(line: 77, column: 34, scope: !83)
!99 = !DILocation(line: 77, column: 47, scope: !83)
!100 = !DILocation(line: 77, column: 40, scope: !83)
!101 = !DILocation(line: 77, column: 59, scope: !83)
!102 = !DILocation(line: 77, column: 51, scope: !83)
!103 = !DILocation(line: 77, column: 25, scope: !83)
!104 = !DILocation(line: 78, column: 37, scope: !105)
!105 = distinct !DILexicalBlock(scope: !83, file: !7, line: 78, column: 29)
!106 = !DILocation(line: 78, column: 43, scope: !105)
!107 = !DILocation(line: 78, column: 29, scope: !105)
!108 = !DILocation(line: 78, column: 29, scope: !83)
!109 = !DILocation(line: 80, column: 47, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !7, line: 78, column: 50)
!111 = !DILocation(line: 80, column: 40, scope: !110)
!112 = !DILocation(line: 80, column: 51, scope: !110)
!113 = !DILocation(line: 80, column: 57, scope: !110)
!114 = !DILocation(line: 79, column: 33, scope: !110)
!115 = !DILocation(line: 81, column: 37, scope: !110)
!116 = !DILocation(line: 82, column: 25, scope: !110)
!117 = !DILocation(line: 83, column: 29, scope: !118)
!118 = distinct !DILexicalBlock(scope: !83, file: !7, line: 83, column: 29)
!119 = !DILocation(line: 83, column: 35, scope: !118)
!120 = !DILocation(line: 83, column: 32, scope: !118)
!121 = !DILocation(line: 83, column: 29, scope: !83)
!122 = !DILocation(line: 84, column: 74, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !7, line: 83, column: 39)
!124 = !DILocation(line: 84, column: 78, scope: !123)
!125 = !DILocation(line: 84, column: 89, scope: !123)
!126 = !DILocation(line: 84, column: 82, scope: !123)
!127 = !DILocation(line: 84, column: 33, scope: !123)
!128 = !DILocation(line: 85, column: 37, scope: !123)
!129 = !DILocation(line: 86, column: 25, scope: !123)
!130 = !DILocation(line: 87, column: 28, scope: !83)
!131 = !DILocation(line: 88, column: 17, scope: !83)
!132 = !DILocation(line: 74, column: 48, scope: !133)
!133 = !DILexicalBlockFile(scope: !78, file: !7, discriminator: 2)
!134 = !DILocation(line: 74, column: 17, scope: !133)
!135 = distinct !{!135, !136}
!136 = !DILocation(line: 74, column: 17, scope: !74)
!137 = !DILocation(line: 89, column: 9, scope: !74)
!138 = !DILocation(line: 73, column: 34, scope: !139)
!139 = !DILexicalBlockFile(scope: !69, file: !7, discriminator: 2)
!140 = !DILocation(line: 73, column: 9, scope: !139)
!141 = distinct !{!141, !142}
!142 = !DILocation(line: 73, column: 9, scope: !6)
!143 = !DILocation(line: 91, column: 16, scope: !144)
!144 = distinct !DILexicalBlock(scope: !6, file: !7, line: 91, column: 9)
!145 = !DILocation(line: 91, column: 14, scope: !144)
!146 = !DILocation(line: 91, column: 29, scope: !147)
!147 = !DILexicalBlockFile(scope: !148, file: !7, discriminator: 1)
!148 = distinct !DILexicalBlock(scope: !144, file: !7, line: 91, column: 9)
!149 = !DILocation(line: 91, column: 21, scope: !147)
!150 = !DILocation(line: 91, column: 9, scope: !147)
!151 = !DILocation(line: 92, column: 24, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !7, line: 92, column: 17)
!153 = distinct !DILexicalBlock(scope: !148, file: !7, line: 91, column: 39)
!154 = !DILocation(line: 92, column: 22, scope: !152)
!155 = !DILocation(line: 92, column: 38, scope: !156)
!156 = !DILexicalBlockFile(scope: !157, file: !7, discriminator: 1)
!157 = distinct !DILexicalBlock(scope: !152, file: !7, line: 92, column: 17)
!158 = !DILocation(line: 92, column: 29, scope: !156)
!159 = !DILocation(line: 92, column: 41, scope: !156)
!160 = !DILocation(line: 92, column: 17, scope: !156)
!161 = !DILocalVariable(name: "l1", scope: !162, file: !7, line: 93, type: !10)
!162 = distinct !DILexicalBlock(scope: !157, file: !7, line: 92, column: 53)
!163 = !DILocation(line: 93, column: 29, scope: !162)
!164 = !DILocation(line: 93, column: 63, scope: !162)
!165 = !DILocation(line: 93, column: 55, scope: !162)
!166 = !DILocation(line: 93, column: 76, scope: !162)
!167 = !DILocation(line: 93, column: 67, scope: !162)
!168 = !DILocation(line: 93, column: 34, scope: !162)
!169 = !DILocalVariable(name: "l2", scope: !162, file: !7, line: 94, type: !10)
!170 = !DILocation(line: 94, column: 29, scope: !162)
!171 = !DILocation(line: 94, column: 43, scope: !162)
!172 = !DILocation(line: 94, column: 71, scope: !162)
!173 = !DILocation(line: 94, column: 63, scope: !162)
!174 = !DILocation(line: 94, column: 84, scope: !162)
!175 = !DILocation(line: 94, column: 75, scope: !162)
!176 = !DILocation(line: 94, column: 34, scope: !162)
!177 = !DILocation(line: 95, column: 34, scope: !162)
!178 = !DILocation(line: 95, column: 48, scope: !162)
!179 = !DILocation(line: 95, column: 40, scope: !162)
!180 = !DILocation(line: 95, column: 61, scope: !162)
!181 = !DILocation(line: 95, column: 52, scope: !162)
!182 = !DILocation(line: 95, column: 25, scope: !162)
!183 = !DILocation(line: 96, column: 37, scope: !184)
!184 = distinct !DILexicalBlock(scope: !162, file: !7, line: 96, column: 29)
!185 = !DILocation(line: 96, column: 43, scope: !184)
!186 = !DILocation(line: 96, column: 29, scope: !184)
!187 = !DILocation(line: 96, column: 29, scope: !162)
!188 = !DILocation(line: 98, column: 48, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !7, line: 96, column: 50)
!190 = !DILocation(line: 98, column: 40, scope: !189)
!191 = !DILocation(line: 98, column: 52, scope: !189)
!192 = !DILocation(line: 98, column: 58, scope: !189)
!193 = !DILocation(line: 97, column: 33, scope: !189)
!194 = !DILocation(line: 99, column: 37, scope: !189)
!195 = !DILocation(line: 100, column: 25, scope: !189)
!196 = !DILocation(line: 101, column: 29, scope: !197)
!197 = distinct !DILexicalBlock(scope: !162, file: !7, line: 101, column: 29)
!198 = !DILocation(line: 101, column: 35, scope: !197)
!199 = !DILocation(line: 101, column: 32, scope: !197)
!200 = !DILocation(line: 101, column: 29, scope: !162)
!201 = !DILocation(line: 102, column: 74, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !7, line: 101, column: 39)
!203 = !DILocation(line: 102, column: 78, scope: !202)
!204 = !DILocation(line: 102, column: 90, scope: !202)
!205 = !DILocation(line: 102, column: 82, scope: !202)
!206 = !DILocation(line: 102, column: 33, scope: !202)
!207 = !DILocation(line: 103, column: 37, scope: !202)
!208 = !DILocation(line: 104, column: 25, scope: !202)
!209 = !DILocation(line: 105, column: 28, scope: !162)
!210 = !DILocation(line: 106, column: 17, scope: !162)
!211 = !DILocation(line: 92, column: 49, scope: !212)
!212 = !DILexicalBlockFile(scope: !157, file: !7, discriminator: 2)
!213 = !DILocation(line: 92, column: 17, scope: !212)
!214 = distinct !{!214, !215}
!215 = !DILocation(line: 92, column: 17, scope: !153)
!216 = !DILocation(line: 107, column: 9, scope: !153)
!217 = !DILocation(line: 91, column: 35, scope: !218)
!218 = !DILexicalBlockFile(scope: !148, file: !7, discriminator: 2)
!219 = !DILocation(line: 91, column: 9, scope: !218)
!220 = distinct !{!220, !221}
!221 = !DILocation(line: 91, column: 9, scope: !6)
!222 = !DILocation(line: 109, column: 16, scope: !223)
!223 = distinct !DILexicalBlock(scope: !6, file: !7, line: 109, column: 9)
!224 = !DILocation(line: 109, column: 14, scope: !223)
!225 = !DILocation(line: 109, column: 29, scope: !226)
!226 = !DILexicalBlockFile(scope: !227, file: !7, discriminator: 1)
!227 = distinct !DILexicalBlock(scope: !223, file: !7, line: 109, column: 9)
!228 = !DILocation(line: 109, column: 21, scope: !226)
!229 = !DILocation(line: 109, column: 9, scope: !226)
!230 = !DILocation(line: 110, column: 24, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !7, line: 110, column: 17)
!232 = distinct !DILexicalBlock(scope: !227, file: !7, line: 109, column: 39)
!233 = !DILocation(line: 110, column: 22, scope: !231)
!234 = !DILocation(line: 110, column: 38, scope: !235)
!235 = !DILexicalBlockFile(scope: !236, file: !7, discriminator: 1)
!236 = distinct !DILexicalBlock(scope: !231, file: !7, line: 110, column: 17)
!237 = !DILocation(line: 110, column: 29, scope: !235)
!238 = !DILocation(line: 110, column: 41, scope: !235)
!239 = !DILocation(line: 110, column: 17, scope: !235)
!240 = !DILocalVariable(name: "l1", scope: !241, file: !7, line: 111, type: !10)
!241 = distinct !DILexicalBlock(scope: !236, file: !7, line: 110, column: 53)
!242 = !DILocation(line: 111, column: 29, scope: !241)
!243 = !DILocation(line: 111, column: 63, scope: !241)
!244 = !DILocation(line: 111, column: 55, scope: !241)
!245 = !DILocation(line: 111, column: 76, scope: !241)
!246 = !DILocation(line: 111, column: 67, scope: !241)
!247 = !DILocation(line: 111, column: 34, scope: !241)
!248 = !DILocalVariable(name: "l2", scope: !241, file: !7, line: 112, type: !10)
!249 = !DILocation(line: 112, column: 29, scope: !241)
!250 = !DILocation(line: 112, column: 43, scope: !241)
!251 = !DILocation(line: 112, column: 71, scope: !241)
!252 = !DILocation(line: 112, column: 63, scope: !241)
!253 = !DILocation(line: 112, column: 84, scope: !241)
!254 = !DILocation(line: 112, column: 75, scope: !241)
!255 = !DILocation(line: 112, column: 34, scope: !241)
!256 = !DILocation(line: 113, column: 34, scope: !241)
!257 = !DILocation(line: 113, column: 48, scope: !241)
!258 = !DILocation(line: 113, column: 40, scope: !241)
!259 = !DILocation(line: 113, column: 61, scope: !241)
!260 = !DILocation(line: 113, column: 52, scope: !241)
!261 = !DILocation(line: 113, column: 25, scope: !241)
!262 = !DILocation(line: 114, column: 37, scope: !263)
!263 = distinct !DILexicalBlock(scope: !241, file: !7, line: 114, column: 29)
!264 = !DILocation(line: 114, column: 43, scope: !263)
!265 = !DILocation(line: 114, column: 29, scope: !263)
!266 = !DILocation(line: 114, column: 29, scope: !241)
!267 = !DILocation(line: 116, column: 48, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !7, line: 114, column: 50)
!269 = !DILocation(line: 116, column: 40, scope: !268)
!270 = !DILocation(line: 116, column: 52, scope: !268)
!271 = !DILocation(line: 116, column: 58, scope: !268)
!272 = !DILocation(line: 115, column: 33, scope: !268)
!273 = !DILocation(line: 117, column: 37, scope: !268)
!274 = !DILocation(line: 118, column: 25, scope: !268)
!275 = !DILocation(line: 119, column: 29, scope: !276)
!276 = distinct !DILexicalBlock(scope: !241, file: !7, line: 119, column: 29)
!277 = !DILocation(line: 119, column: 35, scope: !276)
!278 = !DILocation(line: 119, column: 32, scope: !276)
!279 = !DILocation(line: 119, column: 29, scope: !241)
!280 = !DILocation(line: 120, column: 74, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !7, line: 119, column: 39)
!282 = !DILocation(line: 120, column: 78, scope: !281)
!283 = !DILocation(line: 120, column: 90, scope: !281)
!284 = !DILocation(line: 120, column: 82, scope: !281)
!285 = !DILocation(line: 120, column: 33, scope: !281)
!286 = !DILocation(line: 121, column: 37, scope: !281)
!287 = !DILocation(line: 122, column: 25, scope: !281)
!288 = !DILocation(line: 123, column: 29, scope: !241)
!289 = !DILocation(line: 124, column: 18, scope: !241)
!290 = !DILocation(line: 110, column: 49, scope: !291)
!291 = !DILexicalBlockFile(scope: !236, file: !7, discriminator: 2)
!292 = !DILocation(line: 110, column: 17, scope: !291)
!293 = distinct !{!293, !294}
!294 = !DILocation(line: 110, column: 17, scope: !232)
!295 = !DILocation(line: 125, column: 10, scope: !232)
!296 = !DILocation(line: 109, column: 35, scope: !297)
!297 = !DILexicalBlockFile(scope: !227, file: !7, discriminator: 2)
!298 = !DILocation(line: 109, column: 9, scope: !297)
!299 = distinct !{!299, !300}
!300 = !DILocation(line: 109, column: 9, scope: !6)
!301 = !DILocation(line: 127, column: 50, scope: !6)
!302 = !DILocation(line: 127, column: 56, scope: !6)
!303 = !DILocation(line: 127, column: 10, scope: !6)
!304 = !DILocation(line: 129, column: 10, scope: !6)
!305 = !DILocalVariable(name: "v0", scope: !306, file: !7, line: 131, type: !33)
!306 = distinct !DILexicalBlock(scope: !6, file: !7, line: 130, column: 10)
!307 = !DILocation(line: 131, column: 25, scope: !306)
!308 = !DILocation(line: 132, column: 24, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !7, line: 132, column: 18)
!310 = !DILocation(line: 132, column: 23, scope: !309)
!311 = !DILocation(line: 132, column: 28, scope: !312)
!312 = !DILexicalBlockFile(scope: !313, file: !7, discriminator: 1)
!313 = distinct !DILexicalBlock(scope: !309, file: !7, line: 132, column: 18)
!314 = !DILocation(line: 132, column: 29, scope: !312)
!315 = !DILocation(line: 132, column: 18, scope: !312)
!316 = !DILocalVariable(name: "p", scope: !317, file: !7, line: 133, type: !33)
!317 = distinct !DILexicalBlock(scope: !313, file: !7, line: 132, column: 40)
!318 = !DILocation(line: 133, column: 33, scope: !317)
!319 = !DILocation(line: 133, column: 45, scope: !317)
!320 = !DILocation(line: 133, column: 37, scope: !317)
!321 = !DILocalVariable(name: "r", scope: !317, file: !7, line: 134, type: !33)
!322 = !DILocation(line: 134, column: 33, scope: !317)
!323 = !DILocation(line: 134, column: 37, scope: !317)
!324 = !DILocation(line: 134, column: 40, scope: !317)
!325 = !DILocation(line: 134, column: 39, scope: !317)
!326 = !DILocation(line: 135, column: 35, scope: !317)
!327 = !DILocation(line: 135, column: 64, scope: !317)
!328 = !DILocation(line: 135, column: 26, scope: !317)
!329 = !DILocation(line: 136, column: 34, scope: !317)
!330 = !DILocation(line: 136, column: 49, scope: !317)
!331 = !DILocation(line: 136, column: 26, scope: !317)
!332 = !DILocation(line: 137, column: 37, scope: !333)
!333 = distinct !DILexicalBlock(scope: !317, file: !7, line: 137, column: 30)
!334 = !DILocation(line: 137, column: 43, scope: !333)
!335 = !DILocation(line: 137, column: 30, scope: !333)
!336 = !DILocation(line: 137, column: 30, scope: !317)
!337 = !DILocation(line: 138, column: 75, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !7, line: 137, column: 50)
!339 = !DILocation(line: 138, column: 76, scope: !338)
!340 = !DILocation(line: 138, column: 34, scope: !338)
!341 = !DILocation(line: 139, column: 34, scope: !338)
!342 = !DILocation(line: 141, column: 18, scope: !317)
!343 = !DILocation(line: 132, column: 36, scope: !344)
!344 = !DILexicalBlockFile(scope: !313, file: !7, discriminator: 2)
!345 = !DILocation(line: 132, column: 18, scope: !344)
!346 = distinct !{!346, !347}
!347 = !DILocation(line: 132, column: 18, scope: !306)
!348 = !DILocation(line: 144, column: 10, scope: !6)
