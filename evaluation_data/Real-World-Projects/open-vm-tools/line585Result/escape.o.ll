; ModuleID = './escape.o.i'
source_filename = "./escape.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DynBuf = type { i8*, i64, i64 }

@Dec2Hex = internal constant [16 x i8] c"0123456789ABCDEF", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Hex2Dec = internal constant [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"escape.c\00", align 1
@Escape_Sh.be = internal constant [1 x i8] c"'", align 1
@Escape_Sh.escSeq = internal constant [4 x i8] c"'\22'\22", align 1
@Escape_BRE.escByte = internal constant i8 92, align 1
@Escape_BRE.bytesToEsc = internal constant [256 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Escape_DoString(i8*, i32*, i8*, i64, i64*) #0 !dbg !43 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.DynBuf, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca [2 x i8], align 1
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !47, metadata !48), !dbg !49
  store i32* %1, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !50, metadata !48), !dbg !51
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !52, metadata !48), !dbg !53
  store i64 %3, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !54, metadata !48), !dbg !55
  store i64* %4, i64** %11, align 8
  call void @llvm.dbg.declare(metadata i64** %11, metadata !56, metadata !48), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %12, metadata !58, metadata !48), !dbg !59
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %13, metadata !60, metadata !48), !dbg !69
  call void @llvm.dbg.declare(metadata i64* %14, metadata !70, metadata !48), !dbg !71
  call void @llvm.dbg.declare(metadata i64* %15, metadata !72, metadata !48), !dbg !73
  call void @llvm.dbg.declare(metadata i64* %16, metadata !74, metadata !48), !dbg !75
  %19 = load i8*, i8** %7, align 8, !dbg !76
  %20 = call i64 @strlen(i8* %19) #8, !dbg !77
  store i64 %20, i64* %16, align 8, !dbg !78
  %21 = load i8*, i8** %9, align 8, !dbg !79
  store i8* %21, i8** %12, align 8, !dbg !80
  call void @DynBuf_Init(%struct.DynBuf* %13), !dbg !81
  store i64 0, i64* %14, align 8, !dbg !82
  store i64 0, i64* %15, align 8, !dbg !83
  br label %22, !dbg !85

; <label>:22:                                     ; preds = %77, %5
  %23 = load i64, i64* %15, align 8, !dbg !86
  %24 = load i64, i64* %10, align 8, !dbg !89
  %25 = icmp ult i64 %23, %24, !dbg !90
  br i1 %25, label %26, label %80, !dbg !91

; <label>:26:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata i8* %17, metadata !92, metadata !48), !dbg !95
  call void @llvm.dbg.declare(metadata [2 x i8]* %18, metadata !96, metadata !48), !dbg !100
  %27 = load i64, i64* %15, align 8, !dbg !101
  %28 = load i8*, i8** %12, align 8, !dbg !102
  %29 = getelementptr inbounds i8, i8* %28, i64 %27, !dbg !102
  %30 = load i8, i8* %29, align 1, !dbg !102
  store i8 %30, i8* %17, align 1, !dbg !103
  %31 = load i8, i8* %17, align 1, !dbg !104
  %32 = zext i8 %31 to i64, !dbg !106
  %33 = load i32*, i32** %8, align 8, !dbg !106
  %34 = getelementptr inbounds i32, i32* %33, i64 %32, !dbg !106
  %35 = load i32, i32* %34, align 4, !dbg !106
  %36 = icmp ne i32 %35, 0, !dbg !106
  br i1 %36, label %37, label %76, !dbg !107

; <label>:37:                                     ; preds = %26
  %38 = load i8, i8* %17, align 1, !dbg !108
  %39 = zext i8 %38 to i32, !dbg !108
  %40 = ashr i32 %39, 4, !dbg !110
  %41 = sext i32 %40 to i64, !dbg !111
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* @Dec2Hex, i64 0, i64 %41, !dbg !111
  %43 = load i8, i8* %42, align 1, !dbg !111
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0, !dbg !112
  store i8 %43, i8* %44, align 1, !dbg !113
  %45 = load i8, i8* %17, align 1, !dbg !114
  %46 = zext i8 %45 to i32, !dbg !114
  %47 = and i32 %46, 15, !dbg !115
  %48 = sext i32 %47 to i64, !dbg !116
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* @Dec2Hex, i64 0, i64 %48, !dbg !116
  %50 = load i8, i8* %49, align 1, !dbg !116
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 1, !dbg !117
  store i8 %50, i8* %51, align 1, !dbg !118
  %52 = load i64, i64* %14, align 8, !dbg !119
  %53 = load i8*, i8** %12, align 8, !dbg !121
  %54 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !121
  %55 = load i64, i64* %15, align 8, !dbg !122
  %56 = load i64, i64* %14, align 8, !dbg !123
  %57 = sub i64 %55, %56, !dbg !124
  %58 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* %54, i64 %57), !dbg !125
  %59 = sext i8 %58 to i32, !dbg !125
  %60 = icmp eq i32 %59, 0, !dbg !126
  br i1 %60, label %72, label %61, !dbg !127

; <label>:61:                                     ; preds = %37
  %62 = load i8*, i8** %7, align 8, !dbg !128
  %63 = load i64, i64* %16, align 8, !dbg !129
  %64 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* %62, i64 %63), !dbg !130
  %65 = sext i8 %64 to i32, !dbg !130
  %66 = icmp eq i32 %65, 0, !dbg !131
  br i1 %66, label %72, label %67, !dbg !132

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i32 0, i32 0, !dbg !133
  %69 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* %68, i64 2), !dbg !134
  %70 = sext i8 %69 to i32, !dbg !134
  %71 = icmp eq i32 %70, 0, !dbg !135
  br i1 %71, label %72, label %73, !dbg !136

; <label>:72:                                     ; preds = %67, %61, %37
  br label %108, !dbg !138

; <label>:73:                                     ; preds = %67
  %74 = load i64, i64* %15, align 8, !dbg !140
  %75 = add i64 %74, 1, !dbg !141
  store i64 %75, i64* %14, align 8, !dbg !142
  br label %76, !dbg !143

; <label>:76:                                     ; preds = %73, %26
  br label %77, !dbg !144

; <label>:77:                                     ; preds = %76
  %78 = load i64, i64* %15, align 8, !dbg !145
  %79 = add i64 %78, 1, !dbg !145
  store i64 %79, i64* %15, align 8, !dbg !145
  br label %22, !dbg !147, !llvm.loop !148

; <label>:80:                                     ; preds = %22
  %81 = load i64, i64* %14, align 8, !dbg !150
  %82 = load i8*, i8** %12, align 8, !dbg !152
  %83 = getelementptr inbounds i8, i8* %82, i64 %81, !dbg !152
  %84 = load i64, i64* %15, align 8, !dbg !153
  %85 = load i64, i64* %14, align 8, !dbg !154
  %86 = sub i64 %84, %85, !dbg !155
  %87 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* %83, i64 %86), !dbg !156
  %88 = sext i8 %87 to i32, !dbg !156
  %89 = icmp eq i32 %88, 0, !dbg !157
  br i1 %89, label %98, label %90, !dbg !158

; <label>:90:                                     ; preds = %80
  %91 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !159
  %92 = sext i8 %91 to i32, !dbg !159
  %93 = icmp eq i32 %92, 0, !dbg !160
  br i1 %93, label %98, label %94, !dbg !161

; <label>:94:                                     ; preds = %90
  %95 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %13), !dbg !162
  %96 = sext i8 %95 to i32, !dbg !162
  %97 = icmp eq i32 %96, 0, !dbg !163
  br i1 %97, label %98, label %99, !dbg !164

; <label>:98:                                     ; preds = %94, %90, %80
  br label %108, !dbg !166

; <label>:99:                                     ; preds = %94
  %100 = load i64*, i64** %11, align 8, !dbg !168
  %101 = icmp ne i64* %100, null, !dbg !168
  br i1 %101, label %102, label %106, !dbg !170

; <label>:102:                                    ; preds = %99
  %103 = call i64 @DynBuf_GetSize(%struct.DynBuf* %13), !dbg !171
  %104 = sub i64 %103, 1, !dbg !173
  %105 = load i64*, i64** %11, align 8, !dbg !174
  store i64 %104, i64* %105, align 8, !dbg !175
  br label %106, !dbg !176

; <label>:106:                                    ; preds = %102, %99
  %107 = call i8* @DynBuf_Get(%struct.DynBuf* %13), !dbg !177
  store i8* %107, i8** %6, align 8, !dbg !178
  br label %109, !dbg !178

; <label>:108:                                    ; preds = %98, %72
  call void @DynBuf_Destroy(%struct.DynBuf* %13), !dbg !179
  store i8* null, i8** %6, align 8, !dbg !180
  br label %109, !dbg !180

; <label>:109:                                    ; preds = %108, %106
  %110 = load i8*, i8** %6, align 8, !dbg !181
  ret i8* %110, !dbg !181
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @DynBuf_Init(%struct.DynBuf*) #3

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #3

declare signext i8 @DynBuf_Trim(%struct.DynBuf*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #4 !dbg !182 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !187, metadata !48), !dbg !188
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !189
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !190
  %5 = load i64, i64* %4, align 8, !dbg !190
  ret i64 %5, !dbg !191
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #4 !dbg !192 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !195, metadata !48), !dbg !196
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !197
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !198
  %5 = load i8*, i8** %4, align 8, !dbg !198
  ret i8* %5, !dbg !199
}

declare void @DynBuf_Destroy(%struct.DynBuf*) #3

; Function Attrs: nounwind uwtable
define i8* @Escape_Do(i8 signext, i32*, i8*, i64, i64*) #0 !dbg !200 {
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca [2 x i8], align 1
  store i8 %0, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !203, metadata !48), !dbg !204
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !205, metadata !48), !dbg !206
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !207, metadata !48), !dbg !208
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !209, metadata !48), !dbg !210
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !211, metadata !48), !dbg !212
  call void @llvm.dbg.declare(metadata [2 x i8]* %11, metadata !213, metadata !48), !dbg !215
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0, !dbg !216
  %13 = load i8, i8* %6, align 1, !dbg !217
  store i8 %13, i8* %12, align 1, !dbg !216
  %14 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !216
  store i8 0, i8* %14, align 1, !dbg !216
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i32 0, i32 0, !dbg !218
  %16 = load i32*, i32** %7, align 8, !dbg !219
  %17 = load i8*, i8** %8, align 8, !dbg !220
  %18 = load i64, i64* %9, align 8, !dbg !221
  %19 = load i64*, i64** %10, align 8, !dbg !222
  %20 = call i8* @Escape_DoString(i8* %15, i32* %16, i8* %17, i64 %18, i64* %19), !dbg !223
  ret i8* %20, !dbg !224
}

; Function Attrs: nounwind uwtable
define i8* @Escape_Undo(i8 signext, i8*, i64, i64*) #0 !dbg !225 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.DynBuf, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store i8 %0, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !228, metadata !48), !dbg !229
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !230, metadata !48), !dbg !231
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !232, metadata !48), !dbg !233
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !234, metadata !48), !dbg !235
  call void @llvm.dbg.declare(metadata i8** %10, metadata !236, metadata !48), !dbg !237
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %11, metadata !238, metadata !48), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %12, metadata !240, metadata !48), !dbg !242
  call void @llvm.dbg.declare(metadata i64* %13, metadata !243, metadata !48), !dbg !244
  call void @llvm.dbg.declare(metadata i64* %14, metadata !245, metadata !48), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %15, metadata !247, metadata !48), !dbg !248
  store i32 0, i32* %15, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %16, metadata !249, metadata !48), !dbg !250
  %19 = load i8*, i8** %7, align 8, !dbg !251
  store i8* %19, i8** %10, align 8, !dbg !252
  call void @DynBuf_Init(%struct.DynBuf* %11), !dbg !253
  store i64 0, i64* %13, align 8, !dbg !254
  store i32 0, i32* %12, align 4, !dbg !255
  store i64 0, i64* %14, align 8, !dbg !256
  br label %20, !dbg !258

; <label>:20:                                     ; preds = %80, %4
  %21 = load i64, i64* %14, align 8, !dbg !259
  %22 = load i64, i64* %8, align 8, !dbg !262
  %23 = icmp ult i64 %21, %22, !dbg !263
  br i1 %23, label %24, label %83, !dbg !264

; <label>:24:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8* %17, metadata !265, metadata !48), !dbg !267
  %25 = load i64, i64* %14, align 8, !dbg !268
  %26 = load i8*, i8** %10, align 8, !dbg !269
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !269
  %28 = load i8, i8* %27, align 1, !dbg !269
  store i8 %28, i8* %17, align 1, !dbg !270
  %29 = load i32, i32* %12, align 4, !dbg !271
  switch i32 %29, label %78 [
    i32 0, label %30
    i32 1, label %38
    i32 2, label %46
  ], !dbg !272

; <label>:30:                                     ; preds = %24
  %31 = load i8, i8* %17, align 1, !dbg !273
  %32 = zext i8 %31 to i32, !dbg !273
  %33 = load i8, i8* %6, align 1, !dbg !276
  %34 = sext i8 %33 to i32, !dbg !276
  %35 = icmp eq i32 %32, %34, !dbg !277
  br i1 %35, label %36, label %37, !dbg !278

; <label>:36:                                     ; preds = %30
  store i32 1, i32* %12, align 4, !dbg !279
  br label %37, !dbg !281

; <label>:37:                                     ; preds = %36, %30
  br label %79, !dbg !282

; <label>:38:                                     ; preds = %24
  %39 = load i8, i8* %17, align 1, !dbg !283
  %40 = zext i8 %39 to i64, !dbg !284
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* @Hex2Dec, i64 0, i64 %40, !dbg !284
  %42 = load i32, i32* %41, align 4, !dbg !284
  store i32 %42, i32* %15, align 4, !dbg !285
  %43 = load i32, i32* %15, align 4, !dbg !286
  %44 = icmp sge i32 %43, 0, !dbg !287
  %45 = select i1 %44, i32 2, i32 0, !dbg !286
  store i32 %45, i32* %12, align 4, !dbg !288
  br label %79, !dbg !289

; <label>:46:                                     ; preds = %24
  %47 = load i8, i8* %17, align 1, !dbg !290
  %48 = zext i8 %47 to i64, !dbg !291
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* @Hex2Dec, i64 0, i64 %48, !dbg !291
  %50 = load i32, i32* %49, align 4, !dbg !291
  store i32 %50, i32* %16, align 4, !dbg !292
  %51 = load i32, i32* %16, align 4, !dbg !293
  %52 = icmp sge i32 %51, 0, !dbg !295
  br i1 %52, label %53, label %77, !dbg !296

; <label>:53:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata i8* %18, metadata !297, metadata !48), !dbg !299
  %54 = load i32, i32* %15, align 4, !dbg !300
  %55 = shl i32 %54, 4, !dbg !301
  %56 = load i32, i32* %16, align 4, !dbg !302
  %57 = or i32 %55, %56, !dbg !303
  %58 = trunc i32 %57 to i8, !dbg !300
  store i8 %58, i8* %18, align 1, !dbg !304
  %59 = load i64, i64* %13, align 8, !dbg !305
  %60 = load i8*, i8** %10, align 8, !dbg !307
  %61 = getelementptr inbounds i8, i8* %60, i64 %59, !dbg !307
  %62 = load i64, i64* %14, align 8, !dbg !308
  %63 = sub i64 %62, 2, !dbg !309
  %64 = load i64, i64* %13, align 8, !dbg !310
  %65 = sub i64 %63, %64, !dbg !311
  %66 = call signext i8 @DynBuf_Append(%struct.DynBuf* %11, i8* %61, i64 %65), !dbg !312
  %67 = sext i8 %66 to i32, !dbg !312
  %68 = icmp eq i32 %67, 0, !dbg !313
  br i1 %68, label %73, label %69, !dbg !314

; <label>:69:                                     ; preds = %53
  %70 = call signext i8 @DynBuf_Append(%struct.DynBuf* %11, i8* %18, i64 1), !dbg !315
  %71 = sext i8 %70 to i32, !dbg !315
  %72 = icmp eq i32 %71, 0, !dbg !316
  br i1 %72, label %73, label %74, !dbg !317

; <label>:73:                                     ; preds = %69, %53
  br label %111, !dbg !319

; <label>:74:                                     ; preds = %69
  %75 = load i64, i64* %14, align 8, !dbg !321
  %76 = add i64 %75, 1, !dbg !322
  store i64 %76, i64* %13, align 8, !dbg !323
  br label %77, !dbg !324

; <label>:77:                                     ; preds = %74, %46
  store i32 0, i32* %12, align 4, !dbg !325
  br label %79, !dbg !326

; <label>:78:                                     ; preds = %24
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 267) #9, !dbg !327
  unreachable, !dbg !327

; <label>:79:                                     ; preds = %77, %38, %37
  br label %80, !dbg !328

; <label>:80:                                     ; preds = %79
  %81 = load i64, i64* %14, align 8, !dbg !329
  %82 = add i64 %81, 1, !dbg !329
  store i64 %82, i64* %14, align 8, !dbg !329
  br label %20, !dbg !331, !llvm.loop !332

; <label>:83:                                     ; preds = %20
  %84 = load i64, i64* %13, align 8, !dbg !334
  %85 = load i8*, i8** %10, align 8, !dbg !336
  %86 = getelementptr inbounds i8, i8* %85, i64 %84, !dbg !336
  %87 = load i64, i64* %14, align 8, !dbg !337
  %88 = load i64, i64* %13, align 8, !dbg !338
  %89 = sub i64 %87, %88, !dbg !339
  %90 = call signext i8 @DynBuf_Append(%struct.DynBuf* %11, i8* %86, i64 %89), !dbg !340
  %91 = sext i8 %90 to i32, !dbg !340
  %92 = icmp eq i32 %91, 0, !dbg !341
  br i1 %92, label %101, label %93, !dbg !342

; <label>:93:                                     ; preds = %83
  %94 = call signext i8 @DynBuf_Append(%struct.DynBuf* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !343
  %95 = sext i8 %94 to i32, !dbg !343
  %96 = icmp eq i32 %95, 0, !dbg !344
  br i1 %96, label %101, label %97, !dbg !345

; <label>:97:                                     ; preds = %93
  %98 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %11), !dbg !346
  %99 = sext i8 %98 to i32, !dbg !346
  %100 = icmp eq i32 %99, 0, !dbg !347
  br i1 %100, label %101, label %102, !dbg !348

; <label>:101:                                    ; preds = %97, %93, %83
  br label %111, !dbg !350

; <label>:102:                                    ; preds = %97
  %103 = load i64*, i64** %9, align 8, !dbg !352
  %104 = icmp ne i64* %103, null, !dbg !352
  br i1 %104, label %105, label %109, !dbg !354

; <label>:105:                                    ; preds = %102
  %106 = call i64 @DynBuf_GetSize(%struct.DynBuf* %11), !dbg !355
  %107 = sub i64 %106, 1, !dbg !357
  %108 = load i64*, i64** %9, align 8, !dbg !358
  store i64 %107, i64* %108, align 8, !dbg !359
  br label %109, !dbg !360

; <label>:109:                                    ; preds = %105, %102
  %110 = call i8* @DynBuf_Get(%struct.DynBuf* %11), !dbg !361
  store i8* %110, i8** %5, align 8, !dbg !362
  br label %112, !dbg !362

; <label>:111:                                    ; preds = %101, %73
  call void @DynBuf_Destroy(%struct.DynBuf* %11), !dbg !363
  store i8* null, i8** %5, align 8, !dbg !364
  br label %112, !dbg !364

; <label>:112:                                    ; preds = %111, %109
  %113 = load i8*, i8** %5, align 8, !dbg !365
  ret i8* %113, !dbg !365
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #5

; Function Attrs: nounwind uwtable
define signext i8 @Escape_UndoFixed(i8 signext, i8*, i64, i8*, i64) #0 !dbg !366 {
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8 %0, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !371, metadata !48), !dbg !372
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !373, metadata !48), !dbg !374
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !375, metadata !48), !dbg !376
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !377, metadata !48), !dbg !378
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !379, metadata !48), !dbg !380
  call void @llvm.dbg.declare(metadata i8* %11, metadata !381, metadata !48), !dbg !382
  call void @llvm.dbg.declare(metadata i64* %12, metadata !383, metadata !48), !dbg !384
  store i64 0, i64* %12, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata i8** %13, metadata !385, metadata !48), !dbg !386
  %15 = load i8, i8* %6, align 1, !dbg !387
  %16 = load i8*, i8** %7, align 8, !dbg !388
  %17 = load i64, i64* %8, align 8, !dbg !389
  %18 = call i8* @Escape_Undo(i8 signext %15, i8* %16, i64 %17, i64* %12), !dbg !390
  store i8* %18, i8** %13, align 8, !dbg !386
  %19 = load i8*, i8** %13, align 8, !dbg !391
  %20 = icmp eq i8* %19, null, !dbg !393
  br i1 %20, label %21, label %22, !dbg !394

; <label>:21:                                     ; preds = %5
  store i8 0, i8* %11, align 1, !dbg !395
  br label %38, !dbg !397

; <label>:22:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata i64* %14, metadata !398, metadata !48), !dbg !400
  %23 = load i64, i64* %12, align 8, !dbg !401
  %24 = add i64 %23, 1, !dbg !402
  store i64 %24, i64* %14, align 8, !dbg !400
  %25 = load i64, i64* %14, align 8, !dbg !403
  %26 = load i64, i64* %10, align 8, !dbg !404
  %27 = icmp ule i64 %25, %26, !dbg !405
  %28 = zext i1 %27 to i32, !dbg !405
  %29 = trunc i32 %28 to i8, !dbg !406
  store i8 %29, i8* %11, align 1, !dbg !407
  %30 = load i8, i8* %11, align 1, !dbg !408
  %31 = icmp ne i8 %30, 0, !dbg !408
  br i1 %31, label %32, label %36, !dbg !410

; <label>:32:                                     ; preds = %22
  %33 = load i8*, i8** %9, align 8, !dbg !411
  %34 = load i8*, i8** %13, align 8, !dbg !413
  %35 = load i64, i64* %14, align 8, !dbg !414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %35, i32 1, i1 false), !dbg !415
  br label %36, !dbg !416

; <label>:36:                                     ; preds = %32, %22
  %37 = load i8*, i8** %13, align 8, !dbg !417
  call void @free(i8* %37) #10, !dbg !418
  br label %38

; <label>:38:                                     ; preds = %36, %21
  %39 = load i8, i8* %11, align 1, !dbg !419
  ret i8 %39, !dbg !420
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare void @free(i8*) #7

; Function Attrs: nounwind uwtable
define i8* @Escape_AnsiToUnix(i8*, i64, i64*) #0 !dbg !421 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !422, metadata !48), !dbg !423
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !424, metadata !48), !dbg !425
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !426, metadata !48), !dbg !427
  call void @llvm.dbg.declare(metadata i8** %8, metadata !428, metadata !48), !dbg !429
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !430, metadata !48), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %10, metadata !432, metadata !48), !dbg !433
  call void @llvm.dbg.declare(metadata i64* %11, metadata !434, metadata !48), !dbg !435
  call void @llvm.dbg.declare(metadata i64* %12, metadata !436, metadata !48), !dbg !437
  %14 = load i8*, i8** %5, align 8, !dbg !438
  store i8* %14, i8** %8, align 8, !dbg !439
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !440
  store i64 0, i64* %11, align 8, !dbg !441
  store i32 0, i32* %10, align 4, !dbg !442
  store i64 0, i64* %12, align 8, !dbg !443
  br label %15, !dbg !445

; <label>:15:                                     ; preds = %52, %3
  %16 = load i64, i64* %12, align 8, !dbg !446
  %17 = load i64, i64* %6, align 8, !dbg !449
  %18 = icmp ult i64 %16, %17, !dbg !450
  br i1 %18, label %19, label %55, !dbg !451

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata i8* %13, metadata !452, metadata !48), !dbg !454
  %20 = load i64, i64* %12, align 8, !dbg !455
  %21 = load i8*, i8** %8, align 8, !dbg !456
  %22 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !456
  %23 = load i8, i8* %22, align 1, !dbg !456
  store i8 %23, i8* %13, align 1, !dbg !457
  %24 = load i32, i32* %10, align 4, !dbg !458
  switch i32 %24, label %50 [
    i32 1, label %25
    i32 0, label %44
  ], !dbg !459

; <label>:25:                                     ; preds = %19
  store i32 0, i32* %10, align 4, !dbg !460
  %26 = load i8, i8* %13, align 1, !dbg !462
  %27 = sext i8 %26 to i32, !dbg !462
  %28 = icmp eq i32 %27, 10, !dbg !464
  br i1 %28, label %29, label %43, !dbg !465

; <label>:29:                                     ; preds = %25
  %30 = load i64, i64* %11, align 8, !dbg !466
  %31 = load i8*, i8** %8, align 8, !dbg !469
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !469
  %33 = load i64, i64* %12, align 8, !dbg !470
  %34 = sub i64 %33, 1, !dbg !471
  %35 = load i64, i64* %11, align 8, !dbg !472
  %36 = sub i64 %34, %35, !dbg !473
  %37 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %32, i64 %36), !dbg !474
  %38 = sext i8 %37 to i32, !dbg !474
  %39 = icmp eq i32 %38, 0, !dbg !475
  br i1 %39, label %40, label %41, !dbg !476

; <label>:40:                                     ; preds = %29
  br label %83, !dbg !477

; <label>:41:                                     ; preds = %29
  %42 = load i64, i64* %12, align 8, !dbg !479
  store i64 %42, i64* %11, align 8, !dbg !480
  br label %51, !dbg !481

; <label>:43:                                     ; preds = %25
  br label %44, !dbg !482

; <label>:44:                                     ; preds = %19, %43
  %45 = load i8, i8* %13, align 1, !dbg !484
  %46 = sext i8 %45 to i32, !dbg !484
  %47 = icmp eq i32 %46, 13, !dbg !486
  br i1 %47, label %48, label %49, !dbg !487

; <label>:48:                                     ; preds = %44
  store i32 1, i32* %10, align 4, !dbg !488
  br label %49, !dbg !490

; <label>:49:                                     ; preds = %48, %44
  br label %51, !dbg !491

; <label>:50:                                     ; preds = %19
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 406) #9, !dbg !492
  unreachable, !dbg !492

; <label>:51:                                     ; preds = %49, %41
  br label %52, !dbg !493

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %12, align 8, !dbg !494
  %54 = add i64 %53, 1, !dbg !494
  store i64 %54, i64* %12, align 8, !dbg !494
  br label %15, !dbg !496, !llvm.loop !497

; <label>:55:                                     ; preds = %15
  %56 = load i64, i64* %11, align 8, !dbg !499
  %57 = load i8*, i8** %8, align 8, !dbg !501
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !501
  %59 = load i64, i64* %12, align 8, !dbg !502
  %60 = load i64, i64* %11, align 8, !dbg !503
  %61 = sub i64 %59, %60, !dbg !504
  %62 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %58, i64 %61), !dbg !505
  %63 = sext i8 %62 to i32, !dbg !505
  %64 = icmp eq i32 %63, 0, !dbg !506
  br i1 %64, label %73, label %65, !dbg !507

; <label>:65:                                     ; preds = %55
  %66 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !508
  %67 = sext i8 %66 to i32, !dbg !508
  %68 = icmp eq i32 %67, 0, !dbg !509
  br i1 %68, label %73, label %69, !dbg !510

; <label>:69:                                     ; preds = %65
  %70 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %9), !dbg !511
  %71 = sext i8 %70 to i32, !dbg !511
  %72 = icmp eq i32 %71, 0, !dbg !512
  br i1 %72, label %73, label %74, !dbg !513

; <label>:73:                                     ; preds = %69, %65, %55
  br label %83, !dbg !515

; <label>:74:                                     ; preds = %69
  %75 = load i64*, i64** %7, align 8, !dbg !517
  %76 = icmp ne i64* %75, null, !dbg !517
  br i1 %76, label %77, label %81, !dbg !519

; <label>:77:                                     ; preds = %74
  %78 = call i64 @DynBuf_GetSize(%struct.DynBuf* %9), !dbg !520
  %79 = sub i64 %78, 1, !dbg !522
  %80 = load i64*, i64** %7, align 8, !dbg !523
  store i64 %79, i64* %80, align 8, !dbg !524
  br label %81, !dbg !525

; <label>:81:                                     ; preds = %77, %74
  %82 = call i8* @DynBuf_Get(%struct.DynBuf* %9), !dbg !526
  store i8* %82, i8** %4, align 8, !dbg !527
  br label %84, !dbg !527

; <label>:83:                                     ; preds = %73, %40
  call void @DynBuf_Destroy(%struct.DynBuf* %9), !dbg !528
  store i8* null, i8** %4, align 8, !dbg !529
  br label %84, !dbg !529

; <label>:84:                                     ; preds = %83, %81
  %85 = load i8*, i8** %4, align 8, !dbg !530
  ret i8* %85, !dbg !530
}

; Function Attrs: nounwind uwtable
define i8* @Escape_Sh(i8*, i64, i64*) #0 !dbg !10 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !531, metadata !48), !dbg !532
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !533, metadata !48), !dbg !534
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !535, metadata !48), !dbg !536
  call void @llvm.dbg.declare(metadata i8** %8, metadata !537, metadata !48), !dbg !538
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !539, metadata !48), !dbg !540
  call void @llvm.dbg.declare(metadata i64* %10, metadata !541, metadata !48), !dbg !542
  call void @llvm.dbg.declare(metadata i64* %11, metadata !543, metadata !48), !dbg !544
  %12 = load i8*, i8** %5, align 8, !dbg !545
  store i8* %12, i8** %8, align 8, !dbg !546
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !547
  %13 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Escape_Sh.be, i32 0, i32 0), i64 1), !dbg !548
  %14 = sext i8 %13 to i32, !dbg !548
  %15 = icmp eq i32 %14, 0, !dbg !550
  br i1 %15, label %16, label %17, !dbg !551

; <label>:16:                                     ; preds = %3
  br label %82, !dbg !552

; <label>:17:                                     ; preds = %3
  store i64 0, i64* %10, align 8, !dbg !554
  store i64 0, i64* %11, align 8, !dbg !555
  br label %18, !dbg !557

; <label>:18:                                     ; preds = %47, %17
  %19 = load i64, i64* %11, align 8, !dbg !558
  %20 = load i64, i64* %6, align 8, !dbg !561
  %21 = icmp ult i64 %19, %20, !dbg !562
  br i1 %21, label %22, label %50, !dbg !563

; <label>:22:                                     ; preds = %18
  %23 = load i64, i64* %11, align 8, !dbg !564
  %24 = load i8*, i8** %8, align 8, !dbg !567
  %25 = getelementptr inbounds i8, i8* %24, i64 %23, !dbg !567
  %26 = load i8, i8* %25, align 1, !dbg !567
  %27 = sext i8 %26 to i32, !dbg !567
  %28 = icmp eq i32 %27, 39, !dbg !568
  br i1 %28, label %29, label %46, !dbg !569

; <label>:29:                                     ; preds = %22
  %30 = load i64, i64* %10, align 8, !dbg !570
  %31 = load i8*, i8** %8, align 8, !dbg !573
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !573
  %33 = load i64, i64* %11, align 8, !dbg !574
  %34 = load i64, i64* %10, align 8, !dbg !575
  %35 = sub i64 %33, %34, !dbg !576
  %36 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %32, i64 %35), !dbg !577
  %37 = sext i8 %36 to i32, !dbg !577
  %38 = icmp eq i32 %37, 0, !dbg !578
  br i1 %38, label %43, label %39, !dbg !579

; <label>:39:                                     ; preds = %29
  %40 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @Escape_Sh.escSeq, i32 0, i32 0), i64 4), !dbg !580
  %41 = sext i8 %40 to i32, !dbg !580
  %42 = icmp eq i32 %41, 0, !dbg !581
  br i1 %42, label %43, label %44, !dbg !582

; <label>:43:                                     ; preds = %39, %29
  br label %82, !dbg !584

; <label>:44:                                     ; preds = %39
  %45 = load i64, i64* %11, align 8, !dbg !586
  store i64 %45, i64* %10, align 8, !dbg !587
  br label %46, !dbg !588

; <label>:46:                                     ; preds = %44, %22
  br label %47, !dbg !589

; <label>:47:                                     ; preds = %46
  %48 = load i64, i64* %11, align 8, !dbg !590
  %49 = add i64 %48, 1, !dbg !590
  store i64 %49, i64* %11, align 8, !dbg !590
  br label %18, !dbg !592, !llvm.loop !593

; <label>:50:                                     ; preds = %18
  %51 = load i64, i64* %10, align 8, !dbg !595
  %52 = load i8*, i8** %8, align 8, !dbg !597
  %53 = getelementptr inbounds i8, i8* %52, i64 %51, !dbg !597
  %54 = load i64, i64* %11, align 8, !dbg !598
  %55 = load i64, i64* %10, align 8, !dbg !599
  %56 = sub i64 %54, %55, !dbg !600
  %57 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %53, i64 %56), !dbg !601
  %58 = sext i8 %57 to i32, !dbg !601
  %59 = icmp eq i32 %58, 0, !dbg !602
  br i1 %59, label %72, label %60, !dbg !603

; <label>:60:                                     ; preds = %50
  %61 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @Escape_Sh.be, i32 0, i32 0), i64 1), !dbg !604
  %62 = sext i8 %61 to i32, !dbg !604
  %63 = icmp eq i32 %62, 0, !dbg !605
  br i1 %63, label %72, label %64, !dbg !606

; <label>:64:                                     ; preds = %60
  %65 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !607
  %66 = sext i8 %65 to i32, !dbg !607
  %67 = icmp eq i32 %66, 0, !dbg !608
  br i1 %67, label %72, label %68, !dbg !609

; <label>:68:                                     ; preds = %64
  %69 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %9), !dbg !610
  %70 = sext i8 %69 to i32, !dbg !610
  %71 = icmp eq i32 %70, 0, !dbg !611
  br i1 %71, label %72, label %73, !dbg !612

; <label>:72:                                     ; preds = %68, %64, %60, %50
  br label %82, !dbg !614

; <label>:73:                                     ; preds = %68
  %74 = load i64*, i64** %7, align 8, !dbg !616
  %75 = icmp ne i64* %74, null, !dbg !616
  br i1 %75, label %76, label %80, !dbg !618

; <label>:76:                                     ; preds = %73
  %77 = call i64 @DynBuf_GetSize(%struct.DynBuf* %9), !dbg !619
  %78 = sub i64 %77, 1, !dbg !621
  %79 = load i64*, i64** %7, align 8, !dbg !622
  store i64 %78, i64* %79, align 8, !dbg !623
  br label %80, !dbg !624

; <label>:80:                                     ; preds = %76, %73
  %81 = call i8* @DynBuf_Get(%struct.DynBuf* %9), !dbg !625
  store i8* %81, i8** %4, align 8, !dbg !626
  br label %83, !dbg !626

; <label>:82:                                     ; preds = %72, %43, %16
  call void @DynBuf_Destroy(%struct.DynBuf* %9), !dbg !627
  store i8* null, i8** %4, align 8, !dbg !628
  br label %83, !dbg !628

; <label>:83:                                     ; preds = %82, %80
  %84 = load i8*, i8** %4, align 8, !dbg !629
  ret i8* %84, !dbg !629
}

; Function Attrs: nounwind uwtable
define i8* @Escape_BRE(i8*, i64, i64*) #0 !dbg !28 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !630, metadata !48), !dbg !631
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !632, metadata !48), !dbg !633
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !634, metadata !48), !dbg !635
  call void @llvm.dbg.declare(metadata i8** %8, metadata !636, metadata !48), !dbg !637
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !638, metadata !48), !dbg !639
  call void @llvm.dbg.declare(metadata i64* %10, metadata !640, metadata !48), !dbg !641
  call void @llvm.dbg.declare(metadata i64* %11, metadata !642, metadata !48), !dbg !643
  %13 = load i8*, i8** %5, align 8, !dbg !644
  store i8* %13, i8** %8, align 8, !dbg !645
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !646
  store i64 0, i64* %10, align 8, !dbg !647
  store i64 0, i64* %11, align 8, !dbg !648
  br label %14, !dbg !650

; <label>:14:                                     ; preds = %46, %3
  %15 = load i64, i64* %11, align 8, !dbg !651
  %16 = load i64, i64* %6, align 8, !dbg !654
  %17 = icmp ult i64 %15, %16, !dbg !655
  br i1 %17, label %18, label %49, !dbg !656

; <label>:18:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i8* %12, metadata !657, metadata !48), !dbg !659
  %19 = load i64, i64* %11, align 8, !dbg !660
  %20 = load i8*, i8** %8, align 8, !dbg !661
  %21 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !661
  %22 = load i8, i8* %21, align 1, !dbg !661
  store i8 %22, i8* %12, align 1, !dbg !662
  %23 = load i8, i8* %12, align 1, !dbg !663
  %24 = zext i8 %23 to i64, !dbg !665
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* @Escape_BRE.bytesToEsc, i64 0, i64 %24, !dbg !665
  %26 = load i32, i32* %25, align 4, !dbg !665
  %27 = icmp ne i32 %26, 0, !dbg !665
  br i1 %27, label %28, label %45, !dbg !666

; <label>:28:                                     ; preds = %18
  %29 = load i64, i64* %10, align 8, !dbg !667
  %30 = load i8*, i8** %8, align 8, !dbg !670
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !670
  %32 = load i64, i64* %11, align 8, !dbg !671
  %33 = load i64, i64* %10, align 8, !dbg !672
  %34 = sub i64 %32, %33, !dbg !673
  %35 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %31, i64 %34), !dbg !674
  %36 = sext i8 %35 to i32, !dbg !674
  %37 = icmp eq i32 %36, 0, !dbg !675
  br i1 %37, label %42, label %38, !dbg !676

; <label>:38:                                     ; preds = %28
  %39 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* @Escape_BRE.escByte, i64 1), !dbg !677
  %40 = sext i8 %39 to i32, !dbg !677
  %41 = icmp eq i32 %40, 0, !dbg !678
  br i1 %41, label %42, label %43, !dbg !679

; <label>:42:                                     ; preds = %38, %28
  br label %77, !dbg !681

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* %11, align 8, !dbg !683
  store i64 %44, i64* %10, align 8, !dbg !684
  br label %45, !dbg !685

; <label>:45:                                     ; preds = %43, %18
  br label %46, !dbg !686

; <label>:46:                                     ; preds = %45
  %47 = load i64, i64* %11, align 8, !dbg !687
  %48 = add i64 %47, 1, !dbg !687
  store i64 %48, i64* %11, align 8, !dbg !687
  br label %14, !dbg !689, !llvm.loop !690

; <label>:49:                                     ; preds = %14
  %50 = load i64, i64* %10, align 8, !dbg !692
  %51 = load i8*, i8** %8, align 8, !dbg !694
  %52 = getelementptr inbounds i8, i8* %51, i64 %50, !dbg !694
  %53 = load i64, i64* %11, align 8, !dbg !695
  %54 = load i64, i64* %10, align 8, !dbg !696
  %55 = sub i64 %53, %54, !dbg !697
  %56 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* %52, i64 %55), !dbg !698
  %57 = sext i8 %56 to i32, !dbg !698
  %58 = icmp eq i32 %57, 0, !dbg !699
  br i1 %58, label %67, label %59, !dbg !700

; <label>:59:                                     ; preds = %49
  %60 = call signext i8 @DynBuf_Append(%struct.DynBuf* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i64 1), !dbg !701
  %61 = sext i8 %60 to i32, !dbg !701
  %62 = icmp eq i32 %61, 0, !dbg !702
  br i1 %62, label %67, label %63, !dbg !703

; <label>:63:                                     ; preds = %59
  %64 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %9), !dbg !704
  %65 = sext i8 %64 to i32, !dbg !704
  %66 = icmp eq i32 %65, 0, !dbg !705
  br i1 %66, label %67, label %68, !dbg !706

; <label>:67:                                     ; preds = %63, %59, %49
  br label %77, !dbg !708

; <label>:68:                                     ; preds = %63
  %69 = load i64*, i64** %7, align 8, !dbg !710
  %70 = icmp ne i64* %69, null, !dbg !710
  br i1 %70, label %71, label %75, !dbg !712

; <label>:71:                                     ; preds = %68
  %72 = call i64 @DynBuf_GetSize(%struct.DynBuf* %9), !dbg !713
  %73 = sub i64 %72, 1, !dbg !715
  %74 = load i64*, i64** %7, align 8, !dbg !716
  store i64 %73, i64* %74, align 8, !dbg !717
  br label %75, !dbg !718

; <label>:75:                                     ; preds = %71, %68
  %76 = call i8* @DynBuf_Get(%struct.DynBuf* %9), !dbg !719
  store i8* %76, i8** %4, align 8, !dbg !720
  br label %78, !dbg !720

; <label>:77:                                     ; preds = %67, %42
  call void @DynBuf_Destroy(%struct.DynBuf* %9), !dbg !721
  store i8* null, i8** %4, align 8, !dbg !722
  br label %78, !dbg !722

; <label>:78:                                     ; preds = %77, %75
  %79 = load i8*, i8** %4, align 8, !dbg !723
  ret i8* %79, !dbg !723
}

; Function Attrs: nounwind uwtable
define i8* @Escape_Strchr(i8 signext, i8*, i8 signext) #0 !dbg !724 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8 %0, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !727, metadata !48), !dbg !728
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !729, metadata !48), !dbg !730
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !731, metadata !48), !dbg !732
  call void @llvm.dbg.declare(metadata i64* %8, metadata !733, metadata !48), !dbg !734
  call void @llvm.dbg.declare(metadata i8* %9, metadata !735, metadata !48), !dbg !736
  store i8 0, i8* %9, align 1, !dbg !736
  store i64 0, i64* %8, align 8, !dbg !737
  br label %10, !dbg !739

; <label>:10:                                     ; preds = %46, %3
  %11 = load i64, i64* %8, align 8, !dbg !740
  %12 = load i8*, i8** %6, align 8, !dbg !743
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !743
  %14 = load i8, i8* %13, align 1, !dbg !743
  %15 = sext i8 %14 to i32, !dbg !743
  %16 = icmp ne i32 %15, 0, !dbg !744
  br i1 %16, label %17, label %49, !dbg !745

; <label>:17:                                     ; preds = %10
  %18 = load i8, i8* %9, align 1, !dbg !746
  %19 = icmp ne i8 %18, 0, !dbg !746
  br i1 %19, label %20, label %21, !dbg !749

; <label>:20:                                     ; preds = %17
  store i8 0, i8* %9, align 1, !dbg !750
  br label %45, !dbg !752

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %8, align 8, !dbg !753
  %23 = load i8*, i8** %6, align 8, !dbg !756
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !756
  %25 = load i8, i8* %24, align 1, !dbg !756
  %26 = sext i8 %25 to i32, !dbg !756
  %27 = load i8, i8* %7, align 1, !dbg !757
  %28 = sext i8 %27 to i32, !dbg !757
  %29 = icmp eq i32 %26, %28, !dbg !758
  br i1 %29, label %30, label %34, !dbg !759

; <label>:30:                                     ; preds = %21
  %31 = load i64, i64* %8, align 8, !dbg !760
  %32 = load i8*, i8** %6, align 8, !dbg !762
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !762
  store i8* %33, i8** %4, align 8, !dbg !763
  br label %50, !dbg !763

; <label>:34:                                     ; preds = %21
  %35 = load i64, i64* %8, align 8, !dbg !764
  %36 = load i8*, i8** %6, align 8, !dbg !766
  %37 = getelementptr inbounds i8, i8* %36, i64 %35, !dbg !766
  %38 = load i8, i8* %37, align 1, !dbg !766
  %39 = sext i8 %38 to i32, !dbg !766
  %40 = load i8, i8* %5, align 1, !dbg !767
  %41 = sext i8 %40 to i32, !dbg !767
  %42 = icmp eq i32 %39, %41, !dbg !768
  br i1 %42, label %43, label %44, !dbg !769

; <label>:43:                                     ; preds = %34
  store i8 1, i8* %9, align 1, !dbg !770
  br label %44, !dbg !772

; <label>:44:                                     ; preds = %43, %34
  br label %45

; <label>:45:                                     ; preds = %44, %20
  br label %46, !dbg !773

; <label>:46:                                     ; preds = %45
  %47 = load i64, i64* %8, align 8, !dbg !774
  %48 = add i64 %47, 1, !dbg !774
  store i64 %48, i64* %8, align 8, !dbg !774
  br label %10, !dbg !776, !llvm.loop !777

; <label>:49:                                     ; preds = %10
  store i8* null, i8** %4, align 8, !dbg !779
  br label %50, !dbg !779

; <label>:50:                                     ; preds = %49, %30
  %51 = load i8*, i8** %4, align 8, !dbg !780
  ret i8* %51, !dbg !780
}

; Function Attrs: nounwind uwtable
define i8* @Escape_Unescape(i8 signext, i8*) #0 !dbg !781 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.DynBuf, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  call void @llvm.dbg.declare(metadata i8* %3, metadata !784, metadata !48), !dbg !785
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !786, metadata !48), !dbg !787
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %5, metadata !788, metadata !48), !dbg !789
  call void @llvm.dbg.declare(metadata i8* %6, metadata !790, metadata !48), !dbg !791
  store i8 0, i8* %6, align 1, !dbg !791
  call void @llvm.dbg.declare(metadata i8* %7, metadata !792, metadata !48), !dbg !793
  store i8 0, i8* %7, align 1, !dbg !793
  call void @llvm.dbg.declare(metadata i32* %8, metadata !794, metadata !48), !dbg !795
  call void @DynBuf_Init(%struct.DynBuf* %5), !dbg !796
  store i32 0, i32* %8, align 4, !dbg !797
  br label %9, !dbg !799

; <label>:9:                                      ; preds = %38, %2
  %10 = load i32, i32* %8, align 4, !dbg !800
  %11 = sext i32 %10 to i64, !dbg !803
  %12 = load i8*, i8** %4, align 8, !dbg !803
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !803
  %14 = load i8, i8* %13, align 1, !dbg !803
  %15 = icmp ne i8 %14, 0, !dbg !804
  br i1 %15, label %16, label %41, !dbg !804

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %8, align 4, !dbg !805
  %18 = sext i32 %17 to i64, !dbg !808
  %19 = load i8*, i8** %4, align 8, !dbg !808
  %20 = getelementptr inbounds i8, i8* %19, i64 %18, !dbg !808
  %21 = load i8, i8* %20, align 1, !dbg !808
  %22 = sext i8 %21 to i32, !dbg !808
  %23 = load i8, i8* %3, align 1, !dbg !809
  %24 = sext i8 %23 to i32, !dbg !809
  %25 = icmp ne i32 %22, %24, !dbg !810
  br i1 %25, label %30, label %26, !dbg !811

; <label>:26:                                     ; preds = %16
  %27 = load i8, i8* %6, align 1, !dbg !812
  %28 = sext i8 %27 to i32, !dbg !812
  %29 = icmp ne i32 %28, 0, !dbg !812
  br i1 %29, label %30, label %36, !dbg !814

; <label>:30:                                     ; preds = %26, %16
  %31 = load i32, i32* %8, align 4, !dbg !815
  %32 = sext i32 %31 to i64, !dbg !817
  %33 = load i8*, i8** %4, align 8, !dbg !817
  %34 = getelementptr inbounds i8, i8* %33, i64 %32, !dbg !817
  %35 = call signext i8 @DynBuf_Append(%struct.DynBuf* %5, i8* %34, i64 1), !dbg !818
  store i8 0, i8* %6, align 1, !dbg !819
  br label %37, !dbg !820

; <label>:36:                                     ; preds = %26
  store i8 1, i8* %6, align 1, !dbg !821
  br label %37

; <label>:37:                                     ; preds = %36, %30
  br label %38, !dbg !823

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %8, align 4, !dbg !824
  %40 = add nsw i32 %39, 1, !dbg !824
  store i32 %40, i32* %8, align 4, !dbg !824
  br label %9, !dbg !826, !llvm.loop !827

; <label>:41:                                     ; preds = %9
  %42 = call signext i8 @DynBuf_Append(%struct.DynBuf* %5, i8* %7, i64 4), !dbg !829
  %43 = call i8* @DynBuf_Get(%struct.DynBuf* %5), !dbg !830
  ret i8* %43, !dbg !831
}

; Function Attrs: nounwind uwtable
define void @Escape_UnescapeCString(i8*) #0 !dbg !832 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !835, metadata !48), !dbg !836
  call void @llvm.dbg.declare(metadata i32* %3, metadata !837, metadata !48), !dbg !841
  store i32 0, i32* %3, align 4, !dbg !841
  call void @llvm.dbg.declare(metadata i32* %4, metadata !842, metadata !48), !dbg !843
  store i32 0, i32* %4, align 4, !dbg !843
  br label %6, !dbg !844

; <label>:6:                                      ; preds = %93, %1
  %7 = load i32, i32* %3, align 4, !dbg !845
  %8 = zext i32 %7 to i64, !dbg !847
  %9 = load i8*, i8** %2, align 8, !dbg !847
  %10 = getelementptr inbounds i8, i8* %9, i64 %8, !dbg !847
  %11 = load i8, i8* %10, align 1, !dbg !847
  %12 = sext i8 %11 to i32, !dbg !847
  %13 = icmp ne i32 %12, 0, !dbg !848
  br i1 %13, label %14, label %98, !dbg !849

; <label>:14:                                     ; preds = %6
  %15 = load i32, i32* %3, align 4, !dbg !850
  %16 = zext i32 %15 to i64, !dbg !853
  %17 = load i8*, i8** %2, align 8, !dbg !853
  %18 = getelementptr inbounds i8, i8* %17, i64 %16, !dbg !853
  %19 = load i8, i8* %18, align 1, !dbg !853
  %20 = sext i8 %19 to i32, !dbg !853
  %21 = icmp eq i32 %20, 92, !dbg !854
  br i1 %21, label %22, label %83, !dbg !855

; <label>:22:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %5, metadata !856, metadata !48), !dbg !858
  %23 = load i32, i32* %3, align 4, !dbg !859
  %24 = add i32 %23, 1, !dbg !861
  %25 = zext i32 %24 to i64, !dbg !862
  %26 = load i8*, i8** %2, align 8, !dbg !862
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !862
  %28 = load i8, i8* %27, align 1, !dbg !862
  %29 = sext i8 %28 to i32, !dbg !862
  %30 = icmp eq i32 %29, 110, !dbg !863
  br i1 %30, label %31, label %38, !dbg !864

; <label>:31:                                     ; preds = %22
  %32 = load i32, i32* %4, align 4, !dbg !865
  %33 = zext i32 %32 to i64, !dbg !867
  %34 = load i8*, i8** %2, align 8, !dbg !867
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !867
  store i8 10, i8* %35, align 1, !dbg !868
  %36 = load i32, i32* %3, align 4, !dbg !869
  %37 = add i32 %36, 1, !dbg !869
  store i32 %37, i32* %3, align 4, !dbg !869
  br label %82, !dbg !870

; <label>:38:                                     ; preds = %22
  %39 = load i32, i32* %3, align 4, !dbg !871
  %40 = add i32 %39, 1, !dbg !874
  %41 = zext i32 %40 to i64, !dbg !875
  %42 = load i8*, i8** %2, align 8, !dbg !875
  %43 = getelementptr inbounds i8, i8* %42, i64 %41, !dbg !875
  %44 = load i8, i8* %43, align 1, !dbg !875
  %45 = sext i8 %44 to i32, !dbg !875
  %46 = icmp eq i32 %45, 92, !dbg !876
  br i1 %46, label %47, label %54, !dbg !875

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %4, align 4, !dbg !877
  %49 = zext i32 %48 to i64, !dbg !879
  %50 = load i8*, i8** %2, align 8, !dbg !879
  %51 = getelementptr inbounds i8, i8* %50, i64 %49, !dbg !879
  store i8 92, i8* %51, align 1, !dbg !880
  %52 = load i32, i32* %3, align 4, !dbg !881
  %53 = add i32 %52, 1, !dbg !881
  store i32 %53, i32* %3, align 4, !dbg !881
  br label %81, !dbg !882

; <label>:54:                                     ; preds = %38
  %55 = load i32, i32* %3, align 4, !dbg !883
  %56 = zext i32 %55 to i64, !dbg !886
  %57 = load i8*, i8** %2, align 8, !dbg !886
  %58 = getelementptr inbounds i8, i8* %57, i64 %56, !dbg !886
  %59 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32* %5) #10, !dbg !887
  %60 = icmp eq i32 %59, 1, !dbg !888
  br i1 %60, label %61, label %70, !dbg !887

; <label>:61:                                     ; preds = %54
  %62 = load i32, i32* %5, align 4, !dbg !889
  %63 = trunc i32 %62 to i8, !dbg !891
  %64 = load i32, i32* %4, align 4, !dbg !892
  %65 = zext i32 %64 to i64, !dbg !893
  %66 = load i8*, i8** %2, align 8, !dbg !893
  %67 = getelementptr inbounds i8, i8* %66, i64 %65, !dbg !893
  store i8 %63, i8* %67, align 1, !dbg !894
  %68 = load i32, i32* %3, align 4, !dbg !895
  %69 = add i32 %68, 3, !dbg !895
  store i32 %69, i32* %3, align 4, !dbg !895
  br label %80, !dbg !896

; <label>:70:                                     ; preds = %54
  %71 = load i32, i32* %3, align 4, !dbg !897
  %72 = zext i32 %71 to i64, !dbg !899
  %73 = load i8*, i8** %2, align 8, !dbg !899
  %74 = getelementptr inbounds i8, i8* %73, i64 %72, !dbg !899
  %75 = load i8, i8* %74, align 1, !dbg !899
  %76 = load i32, i32* %4, align 4, !dbg !900
  %77 = zext i32 %76 to i64, !dbg !901
  %78 = load i8*, i8** %2, align 8, !dbg !901
  %79 = getelementptr inbounds i8, i8* %78, i64 %77, !dbg !901
  store i8 %75, i8* %79, align 1, !dbg !902
  br label %80

; <label>:80:                                     ; preds = %70, %61
  br label %81

; <label>:81:                                     ; preds = %80, %47
  br label %82

; <label>:82:                                     ; preds = %81, %31
  br label %93, !dbg !903

; <label>:83:                                     ; preds = %14
  %84 = load i32, i32* %3, align 4, !dbg !904
  %85 = zext i32 %84 to i64, !dbg !906
  %86 = load i8*, i8** %2, align 8, !dbg !906
  %87 = getelementptr inbounds i8, i8* %86, i64 %85, !dbg !906
  %88 = load i8, i8* %87, align 1, !dbg !906
  %89 = load i32, i32* %4, align 4, !dbg !907
  %90 = zext i32 %89 to i64, !dbg !908
  %91 = load i8*, i8** %2, align 8, !dbg !908
  %92 = getelementptr inbounds i8, i8* %91, i64 %90, !dbg !908
  store i8 %88, i8* %92, align 1, !dbg !909
  br label %93

; <label>:93:                                     ; preds = %83, %82
  %94 = load i32, i32* %3, align 4, !dbg !910
  %95 = add i32 %94, 1, !dbg !910
  store i32 %95, i32* %3, align 4, !dbg !910
  %96 = load i32, i32* %4, align 4, !dbg !911
  %97 = add i32 %96, 1, !dbg !911
  store i32 %97, i32* %4, align 4, !dbg !911
  br label %6, !dbg !912, !llvm.loop !914

; <label>:98:                                     ; preds = %6
  %99 = load i32, i32* %4, align 4, !dbg !915
  %100 = zext i32 %99 to i64, !dbg !916
  %101 = load i8*, i8** %2, align 8, !dbg !916
  %102 = getelementptr inbounds i8, i8* %101, i64 %100, !dbg !916
  store i8 0, i8* %102, align 1, !dbg !917
  ret void, !dbg !918
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #7

; Function Attrs: nounwind uwtable
define i8* @Escape_Comma(i8*) #0 !dbg !919 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.DynBuf, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !922, metadata !48), !dbg !923
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %4, metadata !924, metadata !48), !dbg !925
  %6 = load i8*, i8** %3, align 8, !dbg !926
  %7 = icmp eq i8* %6, null, !dbg !928
  br i1 %7, label %8, label %9, !dbg !929

; <label>:8:                                      ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !930
  br label %43, !dbg !930

; <label>:9:                                      ; preds = %1
  call void @DynBuf_Init(%struct.DynBuf* %4), !dbg !932
  br label %10, !dbg !933

; <label>:10:                                     ; preds = %35, %9
  %11 = load i8*, i8** %3, align 8, !dbg !934
  %12 = load i8, i8* %11, align 1, !dbg !938
  %13 = icmp ne i8 %12, 0, !dbg !939
  br i1 %13, label %14, label %38, !dbg !939

; <label>:14:                                     ; preds = %10
  call void @llvm.dbg.declare(metadata i8* %5, metadata !940, metadata !48), !dbg !942
  %15 = load i8*, i8** %3, align 8, !dbg !943
  %16 = load i8, i8* %15, align 1, !dbg !944
  store i8 %16, i8* %5, align 1, !dbg !942
  %17 = load i8, i8* %5, align 1, !dbg !945
  %18 = sext i8 %17 to i32, !dbg !945
  %19 = icmp eq i32 %18, 44, !dbg !947
  br i1 %19, label %24, label %20, !dbg !948

; <label>:20:                                     ; preds = %14
  %21 = load i8, i8* %5, align 1, !dbg !949
  %22 = sext i8 %21 to i32, !dbg !949
  %23 = icmp eq i32 %22, 92, !dbg !951
  br i1 %23, label %24, label %29, !dbg !952

; <label>:24:                                     ; preds = %20, %14
  %25 = call signext i8 @DynBuf_Append(%struct.DynBuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i64 1), !dbg !953
  %26 = icmp ne i8 %25, 0, !dbg !953
  br i1 %26, label %28, label %27, !dbg !956

; <label>:27:                                     ; preds = %24
  br label %42, !dbg !957

; <label>:28:                                     ; preds = %24
  br label %29, !dbg !959

; <label>:29:                                     ; preds = %28, %20
  %30 = load i8*, i8** %3, align 8, !dbg !960
  %31 = call signext i8 @DynBuf_Append(%struct.DynBuf* %4, i8* %30, i64 1), !dbg !962
  %32 = icmp ne i8 %31, 0, !dbg !962
  br i1 %32, label %34, label %33, !dbg !963

; <label>:33:                                     ; preds = %29
  br label %42, !dbg !964

; <label>:34:                                     ; preds = %29
  br label %35, !dbg !966

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %3, align 8, !dbg !967
  %37 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !967
  store i8* %37, i8** %3, align 8, !dbg !967
  br label %10, !dbg !969, !llvm.loop !970

; <label>:38:                                     ; preds = %10
  %39 = load i8*, i8** %3, align 8, !dbg !971
  %40 = call signext i8 @DynBuf_Append(%struct.DynBuf* %4, i8* %39, i64 1), !dbg !972
  %41 = call i8* @DynBuf_Get(%struct.DynBuf* %4), !dbg !973
  store i8* %41, i8** %2, align 8, !dbg !974
  br label %43, !dbg !974

; <label>:42:                                     ; preds = %33, %27
  call void @DynBuf_Destroy(%struct.DynBuf* %4), !dbg !975
  store i8* null, i8** %2, align 8, !dbg !976
  br label %43, !dbg !976

; <label>:43:                                     ; preds = %42, %38, %8
  %44 = load i8*, i8** %2, align 8, !dbg !977
  ret i8* %44, !dbg !977
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41}
!llvm.ident = !{!42}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "escape.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line585")
!2 = !{}
!3 = !{!4, !7, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !{!9, !23, !27, !29, !35, !39}
!9 = distinct !DIGlobalVariable(name: "be", scope: !10, file: !11, line: 498, type: !20, isLocal: true, isDefinition: true, variable: [1 x i8]* @Escape_Sh.be)
!10 = distinct !DISubprogram(name: "Escape_Sh", scope: !11, file: !11, line: 494, type: !12, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!11 = !DIFile(filename: "escape.c", directory: "/home/lichi/Desktop/open-vm-tools/line585")
!12 = !DISubroutineType(types: !13)
!13 = !{!7, !14, !16, !19}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 216, baseType: !18)
!17 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line585")
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, align: 8, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 1)
!23 = distinct !DIGlobalVariable(name: "escSeq", scope: !10, file: !11, line: 499, type: !24, isLocal: true, isDefinition: true, variable: [4 x i8]* @Escape_Sh.escSeq)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, align: 8, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 4)
!27 = distinct !DIGlobalVariable(name: "escByte", scope: !28, file: !11, line: 576, type: !5, isLocal: true, isDefinition: true, variable: i8* @Escape_BRE.escByte)
!28 = distinct !DISubprogram(name: "Escape_BRE", scope: !11, file: !11, line: 572, type: !12, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!29 = distinct !DIGlobalVariable(name: "bytesToEsc", scope: !28, file: !11, line: 578, type: !30, isLocal: true, isDefinition: true, variable: [256 x i32]* @Escape_BRE.bytesToEsc)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8192, align: 32, elements: !33)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!33 = !{!34}
!34 = !DISubrange(count: 256)
!35 = distinct !DIGlobalVariable(name: "Dec2Hex", scope: !0, file: !11, line: 66, type: !36, isLocal: true, isDefinition: true, variable: [16 x i8]* @Dec2Hex)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, align: 8, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 16)
!39 = distinct !DIGlobalVariable(name: "Hex2Dec", scope: !0, file: !11, line: 41, type: !30, isLocal: true, isDefinition: true, variable: [256 x i32]* @Hex2Dec)
!40 = !{i32 2, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!43 = distinct !DISubprogram(name: "Escape_DoString", scope: !11, file: !11, line: 92, type: !44, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{!7, !4, !46, !14, !16, !19}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!47 = !DILocalVariable(name: "escStr", arg: 1, scope: !43, file: !11, line: 92, type: !4)
!48 = !DIExpression()
!49 = !DILocation(line: 92, column: 29, scope: !43)
!50 = !DILocalVariable(name: "bytesToEsc", arg: 2, scope: !43, file: !11, line: 93, type: !46)
!51 = !DILocation(line: 93, column: 28, scope: !43)
!52 = !DILocalVariable(name: "bufIn", arg: 3, scope: !43, file: !11, line: 94, type: !14)
!53 = !DILocation(line: 94, column: 29, scope: !43)
!54 = !DILocalVariable(name: "sizeIn", arg: 4, scope: !43, file: !11, line: 95, type: !16)
!55 = !DILocation(line: 95, column: 24, scope: !43)
!56 = !DILocalVariable(name: "sizeOut", arg: 5, scope: !43, file: !11, line: 96, type: !19)
!57 = !DILocation(line: 96, column: 25, scope: !43)
!58 = !DILocalVariable(name: "buf", scope: !43, file: !11, line: 98, type: !4)
!59 = !DILocation(line: 98, column: 16, scope: !43)
!60 = !DILocalVariable(name: "b", scope: !43, file: !11, line: 99, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !62, line: 40, baseType: !63)
!62 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line585")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !62, line: 36, size: 192, align: 64, elements: !64)
!64 = !{!65, !67, !68}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !63, file: !62, line: 37, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !63, file: !62, line: 38, baseType: !16, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !63, file: !62, line: 39, baseType: !16, size: 64, align: 64, offset: 128)
!69 = !DILocation(line: 99, column: 11, scope: !43)
!70 = !DILocalVariable(name: "startUnescaped", scope: !43, file: !11, line: 100, type: !16)
!71 = !DILocation(line: 100, column: 11, scope: !43)
!72 = !DILocalVariable(name: "index", scope: !43, file: !11, line: 101, type: !16)
!73 = !DILocation(line: 101, column: 11, scope: !43)
!74 = !DILocalVariable(name: "escStrLen", scope: !43, file: !11, line: 102, type: !16)
!75 = !DILocation(line: 102, column: 11, scope: !43)
!76 = !DILocation(line: 105, column: 23, scope: !43)
!77 = !DILocation(line: 105, column: 16, scope: !43)
!78 = !DILocation(line: 105, column: 14, scope: !43)
!79 = !DILocation(line: 112, column: 24, scope: !43)
!80 = !DILocation(line: 112, column: 8, scope: !43)
!81 = !DILocation(line: 115, column: 4, scope: !43)
!82 = !DILocation(line: 116, column: 19, scope: !43)
!83 = !DILocation(line: 118, column: 15, scope: !84)
!84 = distinct !DILexicalBlock(scope: !43, file: !11, line: 118, column: 4)
!85 = !DILocation(line: 118, column: 9, scope: !84)
!86 = !DILocation(line: 118, column: 20, scope: !87)
!87 = !DILexicalBlockFile(scope: !88, file: !11, discriminator: 1)
!88 = distinct !DILexicalBlock(scope: !84, file: !11, line: 118, column: 4)
!89 = !DILocation(line: 118, column: 28, scope: !87)
!90 = !DILocation(line: 118, column: 26, scope: !87)
!91 = !DILocation(line: 118, column: 4, scope: !87)
!92 = !DILocalVariable(name: "ubyte", scope: !93, file: !11, line: 120, type: !94)
!93 = distinct !DILexicalBlock(scope: !88, file: !11, line: 118, column: 45)
!94 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!95 = !DILocation(line: 120, column: 21, scope: !93)
!96 = !DILocalVariable(name: "escSeq", scope: !93, file: !11, line: 121, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 16, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 2)
!100 = !DILocation(line: 121, column: 12, scope: !93)
!101 = !DILocation(line: 123, column: 19, scope: !93)
!102 = !DILocation(line: 123, column: 15, scope: !93)
!103 = !DILocation(line: 123, column: 13, scope: !93)
!104 = !DILocation(line: 124, column: 22, scope: !105)
!105 = distinct !DILexicalBlock(scope: !93, file: !11, line: 124, column: 11)
!106 = !DILocation(line: 124, column: 11, scope: !105)
!107 = !DILocation(line: 124, column: 11, scope: !93)
!108 = !DILocation(line: 127, column: 30, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !11, line: 124, column: 30)
!110 = !DILocation(line: 127, column: 36, scope: !109)
!111 = !DILocation(line: 127, column: 22, scope: !109)
!112 = !DILocation(line: 127, column: 10, scope: !109)
!113 = !DILocation(line: 127, column: 20, scope: !109)
!114 = !DILocation(line: 128, column: 30, scope: !109)
!115 = !DILocation(line: 128, column: 36, scope: !109)
!116 = !DILocation(line: 128, column: 22, scope: !109)
!117 = !DILocation(line: 128, column: 10, scope: !109)
!118 = !DILocation(line: 128, column: 20, scope: !109)
!119 = !DILocation(line: 129, column: 37, scope: !120)
!120 = distinct !DILexicalBlock(scope: !109, file: !11, line: 129, column: 14)
!121 = !DILocation(line: 129, column: 33, scope: !120)
!122 = !DILocation(line: 130, column: 28, scope: !120)
!123 = !DILocation(line: 130, column: 36, scope: !120)
!124 = !DILocation(line: 130, column: 34, scope: !120)
!125 = !DILocation(line: 129, column: 14, scope: !120)
!126 = !DILocation(line: 130, column: 52, scope: !120)
!127 = !DILocation(line: 130, column: 57, scope: !120)
!128 = !DILocation(line: 131, column: 32, scope: !120)
!129 = !DILocation(line: 131, column: 40, scope: !120)
!130 = !DILocation(line: 131, column: 14, scope: !120)
!131 = !DILocation(line: 131, column: 51, scope: !120)
!132 = !DILocation(line: 131, column: 56, scope: !120)
!133 = !DILocation(line: 132, column: 32, scope: !120)
!134 = !DILocation(line: 132, column: 14, scope: !120)
!135 = !DILocation(line: 132, column: 55, scope: !120)
!136 = !DILocation(line: 129, column: 14, scope: !137)
!137 = !DILexicalBlockFile(scope: !109, file: !11, discriminator: 1)
!138 = !DILocation(line: 133, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !120, file: !11, line: 132, column: 61)
!140 = !DILocation(line: 135, column: 27, scope: !109)
!141 = !DILocation(line: 135, column: 33, scope: !109)
!142 = !DILocation(line: 135, column: 25, scope: !109)
!143 = !DILocation(line: 136, column: 7, scope: !109)
!144 = !DILocation(line: 137, column: 4, scope: !93)
!145 = !DILocation(line: 118, column: 41, scope: !146)
!146 = !DILexicalBlockFile(scope: !88, file: !11, discriminator: 2)
!147 = !DILocation(line: 118, column: 4, scope: !146)
!148 = distinct !{!148, !149}
!149 = !DILocation(line: 118, column: 4, scope: !43)
!150 = !DILocation(line: 140, column: 31, scope: !151)
!151 = distinct !DILexicalBlock(scope: !43, file: !11, line: 140, column: 8)
!152 = !DILocation(line: 140, column: 27, scope: !151)
!153 = !DILocation(line: 141, column: 22, scope: !151)
!154 = !DILocation(line: 141, column: 30, scope: !151)
!155 = !DILocation(line: 141, column: 28, scope: !151)
!156 = !DILocation(line: 140, column: 8, scope: !151)
!157 = !DILocation(line: 141, column: 46, scope: !151)
!158 = !DILocation(line: 141, column: 51, scope: !151)
!159 = !DILocation(line: 143, column: 8, scope: !151)
!160 = !DILocation(line: 143, column: 33, scope: !151)
!161 = !DILocation(line: 143, column: 38, scope: !151)
!162 = !DILocation(line: 144, column: 8, scope: !151)
!163 = !DILocation(line: 144, column: 24, scope: !151)
!164 = !DILocation(line: 140, column: 8, scope: !165)
!165 = !DILexicalBlockFile(scope: !43, file: !11, discriminator: 1)
!166 = !DILocation(line: 145, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !151, file: !11, line: 144, column: 30)
!168 = !DILocation(line: 148, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !43, file: !11, line: 148, column: 8)
!170 = !DILocation(line: 148, column: 8, scope: !43)
!171 = !DILocation(line: 149, column: 18, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !11, line: 148, column: 17)
!173 = !DILocation(line: 149, column: 37, scope: !172)
!174 = !DILocation(line: 149, column: 8, scope: !172)
!175 = !DILocation(line: 149, column: 16, scope: !172)
!176 = !DILocation(line: 150, column: 4, scope: !172)
!177 = !DILocation(line: 152, column: 11, scope: !43)
!178 = !DILocation(line: 152, column: 4, scope: !43)
!179 = !DILocation(line: 155, column: 4, scope: !43)
!180 = !DILocation(line: 157, column: 4, scope: !43)
!181 = !DILocation(line: 158, column: 1, scope: !43)
!182 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !62, file: !62, line: 174, type: !183, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!183 = !DISubroutineType(types: !184)
!184 = !{!16, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!187 = !DILocalVariable(name: "b", arg: 1, scope: !182, file: !62, line: 174, type: !185)
!188 = !DILocation(line: 174, column: 30, scope: !182)
!189 = !DILocation(line: 178, column: 11, scope: !182)
!190 = !DILocation(line: 178, column: 14, scope: !182)
!191 = !DILocation(line: 178, column: 4, scope: !182)
!192 = distinct !DISubprogram(name: "DynBuf_Get", scope: !62, file: !62, line: 113, type: !193, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!193 = !DISubroutineType(types: !194)
!194 = !{!7, !185}
!195 = !DILocalVariable(name: "b", arg: 1, scope: !192, file: !62, line: 113, type: !185)
!196 = !DILocation(line: 113, column: 26, scope: !192)
!197 = !DILocation(line: 117, column: 11, scope: !192)
!198 = !DILocation(line: 117, column: 14, scope: !192)
!199 = !DILocation(line: 117, column: 4, scope: !192)
!200 = distinct !DISubprogram(name: "Escape_Do", scope: !11, file: !11, line: 181, type: !201, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!201 = !DISubroutineType(types: !202)
!202 = !{!7, !6, !46, !14, !16, !19}
!203 = !DILocalVariable(name: "escByte", arg: 1, scope: !200, file: !11, line: 181, type: !6)
!204 = !DILocation(line: 181, column: 16, scope: !200)
!205 = !DILocalVariable(name: "bytesToEsc", arg: 2, scope: !200, file: !11, line: 182, type: !46)
!206 = !DILocation(line: 182, column: 22, scope: !200)
!207 = !DILocalVariable(name: "bufIn", arg: 3, scope: !200, file: !11, line: 183, type: !14)
!208 = !DILocation(line: 183, column: 23, scope: !200)
!209 = !DILocalVariable(name: "sizeIn", arg: 4, scope: !200, file: !11, line: 184, type: !16)
!210 = !DILocation(line: 184, column: 18, scope: !200)
!211 = !DILocalVariable(name: "sizeOut", arg: 5, scope: !200, file: !11, line: 185, type: !19)
!212 = !DILocation(line: 185, column: 19, scope: !200)
!213 = !DILocalVariable(name: "escStr", scope: !200, file: !11, line: 187, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 16, align: 8, elements: !98)
!215 = !DILocation(line: 187, column: 15, scope: !200)
!216 = !DILocation(line: 187, column: 26, scope: !200)
!217 = !DILocation(line: 187, column: 28, scope: !200)
!218 = !DILocation(line: 189, column: 27, scope: !200)
!219 = !DILocation(line: 189, column: 35, scope: !200)
!220 = !DILocation(line: 189, column: 47, scope: !200)
!221 = !DILocation(line: 189, column: 54, scope: !200)
!222 = !DILocation(line: 189, column: 62, scope: !200)
!223 = !DILocation(line: 189, column: 11, scope: !200)
!224 = !DILocation(line: 189, column: 4, scope: !200)
!225 = distinct !DISubprogram(name: "Escape_Undo", scope: !11, file: !11, line: 213, type: !226, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!226 = !DISubroutineType(types: !227)
!227 = !{!7, !6, !14, !16, !19}
!228 = !DILocalVariable(name: "escByte", arg: 1, scope: !225, file: !11, line: 213, type: !6)
!229 = !DILocation(line: 213, column: 18, scope: !225)
!230 = !DILocalVariable(name: "bufIn", arg: 2, scope: !225, file: !11, line: 214, type: !14)
!231 = !DILocation(line: 214, column: 25, scope: !225)
!232 = !DILocalVariable(name: "sizeIn", arg: 3, scope: !225, file: !11, line: 215, type: !16)
!233 = !DILocation(line: 215, column: 20, scope: !225)
!234 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !225, file: !11, line: 216, type: !19)
!235 = !DILocation(line: 216, column: 21, scope: !225)
!236 = !DILocalVariable(name: "buf", scope: !225, file: !11, line: 218, type: !4)
!237 = !DILocation(line: 218, column: 16, scope: !225)
!238 = !DILocalVariable(name: "b", scope: !225, file: !11, line: 219, type: !61)
!239 = !DILocation(line: 219, column: 11, scope: !225)
!240 = !DILocalVariable(name: "state", scope: !225, file: !11, line: 220, type: !241)
!241 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!242 = !DILocation(line: 220, column: 17, scope: !225)
!243 = !DILocalVariable(name: "startUnescaped", scope: !225, file: !11, line: 221, type: !16)
!244 = !DILocation(line: 221, column: 11, scope: !225)
!245 = !DILocalVariable(name: "index", scope: !225, file: !11, line: 222, type: !16)
!246 = !DILocation(line: 222, column: 11, scope: !225)
!247 = !DILocalVariable(name: "h", scope: !225, file: !11, line: 223, type: !32)
!248 = !DILocation(line: 223, column: 8, scope: !225)
!249 = !DILocalVariable(name: "l", scope: !225, file: !11, line: 224, type: !32)
!250 = !DILocation(line: 224, column: 8, scope: !225)
!251 = !DILocation(line: 226, column: 24, scope: !225)
!252 = !DILocation(line: 226, column: 8, scope: !225)
!253 = !DILocation(line: 229, column: 4, scope: !225)
!254 = !DILocation(line: 230, column: 19, scope: !225)
!255 = !DILocation(line: 231, column: 10, scope: !225)
!256 = !DILocation(line: 233, column: 15, scope: !257)
!257 = distinct !DILexicalBlock(scope: !225, file: !11, line: 233, column: 4)
!258 = !DILocation(line: 233, column: 9, scope: !257)
!259 = !DILocation(line: 233, column: 20, scope: !260)
!260 = !DILexicalBlockFile(scope: !261, file: !11, discriminator: 1)
!261 = distinct !DILexicalBlock(scope: !257, file: !11, line: 233, column: 4)
!262 = !DILocation(line: 233, column: 28, scope: !260)
!263 = !DILocation(line: 233, column: 26, scope: !260)
!264 = !DILocation(line: 233, column: 4, scope: !260)
!265 = !DILocalVariable(name: "ubyte", scope: !266, file: !11, line: 235, type: !94)
!266 = distinct !DILexicalBlock(scope: !261, file: !11, line: 233, column: 45)
!267 = !DILocation(line: 235, column: 21, scope: !266)
!268 = !DILocation(line: 237, column: 19, scope: !266)
!269 = !DILocation(line: 237, column: 15, scope: !266)
!270 = !DILocation(line: 237, column: 13, scope: !266)
!271 = !DILocation(line: 238, column: 15, scope: !266)
!272 = !DILocation(line: 238, column: 7, scope: !266)
!273 = !DILocation(line: 240, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !11, line: 240, column: 14)
!275 = distinct !DILexicalBlock(scope: !266, file: !11, line: 238, column: 22)
!276 = !DILocation(line: 240, column: 23, scope: !274)
!277 = !DILocation(line: 240, column: 20, scope: !274)
!278 = !DILocation(line: 240, column: 14, scope: !275)
!279 = !DILocation(line: 241, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !11, line: 240, column: 32)
!281 = !DILocation(line: 242, column: 10, scope: !280)
!282 = !DILocation(line: 243, column: 10, scope: !275)
!283 = !DILocation(line: 246, column: 22, scope: !275)
!284 = !DILocation(line: 246, column: 14, scope: !275)
!285 = !DILocation(line: 246, column: 12, scope: !275)
!286 = !DILocation(line: 247, column: 18, scope: !275)
!287 = !DILocation(line: 247, column: 20, scope: !275)
!288 = !DILocation(line: 247, column: 16, scope: !275)
!289 = !DILocation(line: 248, column: 10, scope: !275)
!290 = !DILocation(line: 251, column: 22, scope: !275)
!291 = !DILocation(line: 251, column: 14, scope: !275)
!292 = !DILocation(line: 251, column: 12, scope: !275)
!293 = !DILocation(line: 252, column: 14, scope: !294)
!294 = distinct !DILexicalBlock(scope: !275, file: !11, line: 252, column: 14)
!295 = !DILocation(line: 252, column: 16, scope: !294)
!296 = !DILocation(line: 252, column: 14, scope: !275)
!297 = !DILocalVariable(name: "escaped", scope: !298, file: !11, line: 253, type: !6)
!298 = distinct !DILexicalBlock(scope: !294, file: !11, line: 252, column: 22)
!299 = !DILocation(line: 253, column: 18, scope: !298)
!300 = !DILocation(line: 255, column: 23, scope: !298)
!301 = !DILocation(line: 255, column: 25, scope: !298)
!302 = !DILocation(line: 255, column: 32, scope: !298)
!303 = !DILocation(line: 255, column: 30, scope: !298)
!304 = !DILocation(line: 255, column: 21, scope: !298)
!305 = !DILocation(line: 256, column: 40, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !11, line: 256, column: 17)
!307 = !DILocation(line: 256, column: 36, scope: !306)
!308 = !DILocation(line: 257, column: 31, scope: !306)
!309 = !DILocation(line: 257, column: 37, scope: !306)
!310 = !DILocation(line: 257, column: 43, scope: !306)
!311 = !DILocation(line: 257, column: 41, scope: !306)
!312 = !DILocation(line: 256, column: 17, scope: !306)
!313 = !DILocation(line: 257, column: 59, scope: !306)
!314 = !DILocation(line: 257, column: 64, scope: !306)
!315 = !DILocation(line: 258, column: 17, scope: !306)
!316 = !DILocation(line: 258, column: 48, scope: !306)
!317 = !DILocation(line: 256, column: 17, scope: !318)
!318 = !DILexicalBlockFile(scope: !298, file: !11, discriminator: 1)
!319 = !DILocation(line: 259, column: 16, scope: !320)
!320 = distinct !DILexicalBlock(scope: !306, file: !11, line: 258, column: 54)
!321 = !DILocation(line: 261, column: 30, scope: !298)
!322 = !DILocation(line: 261, column: 36, scope: !298)
!323 = !DILocation(line: 261, column: 28, scope: !298)
!324 = !DILocation(line: 262, column: 10, scope: !298)
!325 = !DILocation(line: 263, column: 16, scope: !275)
!326 = !DILocation(line: 264, column: 10, scope: !275)
!327 = !DILocation(line: 267, column: 10, scope: !275)
!328 = !DILocation(line: 270, column: 4, scope: !266)
!329 = !DILocation(line: 233, column: 41, scope: !330)
!330 = !DILexicalBlockFile(scope: !261, file: !11, discriminator: 2)
!331 = !DILocation(line: 233, column: 4, scope: !330)
!332 = distinct !{!332, !333}
!333 = !DILocation(line: 233, column: 4, scope: !225)
!334 = !DILocation(line: 273, column: 31, scope: !335)
!335 = distinct !DILexicalBlock(scope: !225, file: !11, line: 273, column: 8)
!336 = !DILocation(line: 273, column: 27, scope: !335)
!337 = !DILocation(line: 274, column: 22, scope: !335)
!338 = !DILocation(line: 274, column: 30, scope: !335)
!339 = !DILocation(line: 274, column: 28, scope: !335)
!340 = !DILocation(line: 273, column: 8, scope: !335)
!341 = !DILocation(line: 274, column: 46, scope: !335)
!342 = !DILocation(line: 274, column: 51, scope: !335)
!343 = !DILocation(line: 276, column: 8, scope: !335)
!344 = !DILocation(line: 276, column: 33, scope: !335)
!345 = !DILocation(line: 276, column: 38, scope: !335)
!346 = !DILocation(line: 277, column: 8, scope: !335)
!347 = !DILocation(line: 277, column: 24, scope: !335)
!348 = !DILocation(line: 273, column: 8, scope: !349)
!349 = !DILexicalBlockFile(scope: !225, file: !11, discriminator: 1)
!350 = !DILocation(line: 278, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !335, file: !11, line: 277, column: 30)
!352 = !DILocation(line: 281, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !225, file: !11, line: 281, column: 8)
!354 = !DILocation(line: 281, column: 8, scope: !225)
!355 = !DILocation(line: 282, column: 18, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !11, line: 281, column: 17)
!357 = !DILocation(line: 282, column: 37, scope: !356)
!358 = !DILocation(line: 282, column: 8, scope: !356)
!359 = !DILocation(line: 282, column: 16, scope: !356)
!360 = !DILocation(line: 283, column: 4, scope: !356)
!361 = !DILocation(line: 285, column: 11, scope: !225)
!362 = !DILocation(line: 285, column: 4, scope: !225)
!363 = !DILocation(line: 288, column: 4, scope: !225)
!364 = !DILocation(line: 290, column: 4, scope: !225)
!365 = !DILocation(line: 291, column: 1, scope: !225)
!366 = distinct !DISubprogram(name: "Escape_UndoFixed", scope: !11, file: !11, line: 312, type: !367, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !6, !14, !16, !7, !16}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !370, line: 230, baseType: !6)
!370 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line585")
!371 = !DILocalVariable(name: "escByte", arg: 1, scope: !366, file: !11, line: 312, type: !6)
!372 = !DILocation(line: 312, column: 23, scope: !366)
!373 = !DILocalVariable(name: "bufIn", arg: 2, scope: !366, file: !11, line: 313, type: !14)
!374 = !DILocation(line: 313, column: 30, scope: !366)
!375 = !DILocalVariable(name: "bufInSize", arg: 3, scope: !366, file: !11, line: 314, type: !16)
!376 = !DILocation(line: 314, column: 25, scope: !366)
!377 = !DILocalVariable(name: "bufOut", arg: 4, scope: !366, file: !11, line: 315, type: !7)
!378 = !DILocation(line: 315, column: 24, scope: !366)
!379 = !DILocalVariable(name: "bufOutSize", arg: 5, scope: !366, file: !11, line: 316, type: !16)
!380 = !DILocation(line: 316, column: 25, scope: !366)
!381 = !DILocalVariable(name: "success", scope: !366, file: !11, line: 318, type: !369)
!382 = !DILocation(line: 318, column: 9, scope: !366)
!383 = !DILocalVariable(name: "sizeOut", scope: !366, file: !11, line: 319, type: !16)
!384 = !DILocation(line: 319, column: 11, scope: !366)
!385 = !DILocalVariable(name: "result", scope: !366, file: !11, line: 320, type: !7)
!386 = !DILocation(line: 320, column: 10, scope: !366)
!387 = !DILocation(line: 320, column: 31, scope: !366)
!388 = !DILocation(line: 320, column: 40, scope: !366)
!389 = !DILocation(line: 320, column: 47, scope: !366)
!390 = !DILocation(line: 320, column: 19, scope: !366)
!391 = !DILocation(line: 322, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !366, file: !11, line: 322, column: 8)
!393 = !DILocation(line: 322, column: 15, scope: !392)
!394 = !DILocation(line: 322, column: 8, scope: !366)
!395 = !DILocation(line: 323, column: 15, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !11, line: 322, column: 23)
!397 = !DILocation(line: 324, column: 4, scope: !396)
!398 = !DILocalVariable(name: "strLen", scope: !399, file: !11, line: 325, type: !16)
!399 = distinct !DILexicalBlock(scope: !392, file: !11, line: 324, column: 11)
!400 = !DILocation(line: 325, column: 14, scope: !399)
!401 = !DILocation(line: 325, column: 23, scope: !399)
!402 = !DILocation(line: 325, column: 31, scope: !399)
!403 = !DILocation(line: 327, column: 18, scope: !399)
!404 = !DILocation(line: 327, column: 28, scope: !399)
!405 = !DILocation(line: 327, column: 25, scope: !399)
!406 = !DILocation(line: 327, column: 17, scope: !399)
!407 = !DILocation(line: 327, column: 15, scope: !399)
!408 = !DILocation(line: 329, column: 11, scope: !409)
!409 = distinct !DILexicalBlock(scope: !399, file: !11, line: 329, column: 11)
!410 = !DILocation(line: 329, column: 11, scope: !399)
!411 = !DILocation(line: 330, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !11, line: 329, column: 20)
!413 = !DILocation(line: 330, column: 25, scope: !412)
!414 = !DILocation(line: 330, column: 33, scope: !412)
!415 = !DILocation(line: 330, column: 10, scope: !412)
!416 = !DILocation(line: 331, column: 7, scope: !412)
!417 = !DILocation(line: 333, column: 12, scope: !399)
!418 = !DILocation(line: 333, column: 7, scope: !399)
!419 = !DILocation(line: 336, column: 11, scope: !366)
!420 = !DILocation(line: 336, column: 4, scope: !366)
!421 = distinct !DISubprogram(name: "Escape_AnsiToUnix", scope: !11, file: !11, line: 360, type: !12, isLocal: false, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!422 = !DILocalVariable(name: "bufIn", arg: 1, scope: !421, file: !11, line: 360, type: !14)
!423 = !DILocation(line: 360, column: 31, scope: !421)
!424 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !421, file: !11, line: 361, type: !16)
!425 = !DILocation(line: 361, column: 26, scope: !421)
!426 = !DILocalVariable(name: "sizeOut", arg: 3, scope: !421, file: !11, line: 362, type: !19)
!427 = !DILocation(line: 362, column: 27, scope: !421)
!428 = !DILocalVariable(name: "buf", scope: !421, file: !11, line: 364, type: !4)
!429 = !DILocation(line: 364, column: 16, scope: !421)
!430 = !DILocalVariable(name: "b", scope: !421, file: !11, line: 365, type: !61)
!431 = !DILocation(line: 365, column: 11, scope: !421)
!432 = !DILocalVariable(name: "state", scope: !421, file: !11, line: 366, type: !241)
!433 = !DILocation(line: 366, column: 17, scope: !421)
!434 = !DILocalVariable(name: "startUnescaped", scope: !421, file: !11, line: 367, type: !16)
!435 = !DILocation(line: 367, column: 11, scope: !421)
!436 = !DILocalVariable(name: "index", scope: !421, file: !11, line: 368, type: !16)
!437 = !DILocation(line: 368, column: 11, scope: !421)
!438 = !DILocation(line: 370, column: 24, scope: !421)
!439 = !DILocation(line: 370, column: 8, scope: !421)
!440 = !DILocation(line: 373, column: 4, scope: !421)
!441 = !DILocation(line: 374, column: 19, scope: !421)
!442 = !DILocation(line: 375, column: 10, scope: !421)
!443 = !DILocation(line: 382, column: 15, scope: !444)
!444 = distinct !DILexicalBlock(scope: !421, file: !11, line: 382, column: 4)
!445 = !DILocation(line: 382, column: 9, scope: !444)
!446 = !DILocation(line: 382, column: 20, scope: !447)
!447 = !DILexicalBlockFile(scope: !448, file: !11, discriminator: 1)
!448 = distinct !DILexicalBlock(scope: !444, file: !11, line: 382, column: 4)
!449 = !DILocation(line: 382, column: 28, scope: !447)
!450 = !DILocation(line: 382, column: 26, scope: !447)
!451 = !DILocation(line: 382, column: 4, scope: !447)
!452 = !DILocalVariable(name: "byte", scope: !453, file: !11, line: 383, type: !6)
!453 = distinct !DILexicalBlock(scope: !448, file: !11, line: 382, column: 45)
!454 = !DILocation(line: 383, column: 12, scope: !453)
!455 = !DILocation(line: 385, column: 18, scope: !453)
!456 = !DILocation(line: 385, column: 14, scope: !453)
!457 = !DILocation(line: 385, column: 12, scope: !453)
!458 = !DILocation(line: 386, column: 15, scope: !453)
!459 = !DILocation(line: 386, column: 7, scope: !453)
!460 = !DILocation(line: 388, column: 16, scope: !461)
!461 = distinct !DILexicalBlock(scope: !453, file: !11, line: 386, column: 22)
!462 = !DILocation(line: 389, column: 14, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !11, line: 389, column: 14)
!464 = !DILocation(line: 389, column: 19, scope: !463)
!465 = !DILocation(line: 389, column: 14, scope: !461)
!466 = !DILocation(line: 390, column: 40, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !11, line: 390, column: 17)
!468 = distinct !DILexicalBlock(scope: !463, file: !11, line: 389, column: 28)
!469 = !DILocation(line: 390, column: 36, scope: !467)
!470 = !DILocation(line: 391, column: 31, scope: !467)
!471 = !DILocation(line: 391, column: 37, scope: !467)
!472 = !DILocation(line: 391, column: 43, scope: !467)
!473 = !DILocation(line: 391, column: 41, scope: !467)
!474 = !DILocation(line: 390, column: 17, scope: !467)
!475 = !DILocation(line: 391, column: 59, scope: !467)
!476 = !DILocation(line: 390, column: 17, scope: !468)
!477 = !DILocation(line: 392, column: 16, scope: !478)
!478 = distinct !DILexicalBlock(scope: !467, file: !11, line: 391, column: 65)
!479 = !DILocation(line: 394, column: 30, scope: !468)
!480 = !DILocation(line: 394, column: 28, scope: !468)
!481 = !DILocation(line: 395, column: 13, scope: !468)
!482 = !DILocation(line: 389, column: 22, scope: !483)
!483 = !DILexicalBlockFile(scope: !463, file: !11, discriminator: 1)
!484 = !DILocation(line: 400, column: 14, scope: !485)
!485 = distinct !DILexicalBlock(scope: !461, file: !11, line: 400, column: 14)
!486 = !DILocation(line: 400, column: 19, scope: !485)
!487 = !DILocation(line: 400, column: 14, scope: !461)
!488 = !DILocation(line: 401, column: 19, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !11, line: 400, column: 28)
!490 = !DILocation(line: 402, column: 10, scope: !489)
!491 = !DILocation(line: 403, column: 10, scope: !461)
!492 = !DILocation(line: 406, column: 10, scope: !461)
!493 = !DILocation(line: 409, column: 4, scope: !453)
!494 = !DILocation(line: 382, column: 41, scope: !495)
!495 = !DILexicalBlockFile(scope: !448, file: !11, discriminator: 2)
!496 = !DILocation(line: 382, column: 4, scope: !495)
!497 = distinct !{!497, !498}
!498 = !DILocation(line: 382, column: 4, scope: !421)
!499 = !DILocation(line: 412, column: 31, scope: !500)
!500 = distinct !DILexicalBlock(scope: !421, file: !11, line: 412, column: 8)
!501 = !DILocation(line: 412, column: 27, scope: !500)
!502 = !DILocation(line: 413, column: 22, scope: !500)
!503 = !DILocation(line: 413, column: 30, scope: !500)
!504 = !DILocation(line: 413, column: 28, scope: !500)
!505 = !DILocation(line: 412, column: 8, scope: !500)
!506 = !DILocation(line: 413, column: 46, scope: !500)
!507 = !DILocation(line: 413, column: 51, scope: !500)
!508 = !DILocation(line: 415, column: 8, scope: !500)
!509 = !DILocation(line: 415, column: 33, scope: !500)
!510 = !DILocation(line: 415, column: 38, scope: !500)
!511 = !DILocation(line: 416, column: 8, scope: !500)
!512 = !DILocation(line: 416, column: 24, scope: !500)
!513 = !DILocation(line: 412, column: 8, scope: !514)
!514 = !DILexicalBlockFile(scope: !421, file: !11, discriminator: 1)
!515 = !DILocation(line: 417, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !500, file: !11, line: 416, column: 30)
!517 = !DILocation(line: 420, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !421, file: !11, line: 420, column: 8)
!519 = !DILocation(line: 420, column: 8, scope: !421)
!520 = !DILocation(line: 421, column: 18, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !11, line: 420, column: 17)
!522 = !DILocation(line: 421, column: 37, scope: !521)
!523 = !DILocation(line: 421, column: 8, scope: !521)
!524 = !DILocation(line: 421, column: 16, scope: !521)
!525 = !DILocation(line: 422, column: 4, scope: !521)
!526 = !DILocation(line: 424, column: 11, scope: !421)
!527 = !DILocation(line: 424, column: 4, scope: !421)
!528 = !DILocation(line: 427, column: 4, scope: !421)
!529 = !DILocation(line: 429, column: 4, scope: !421)
!530 = !DILocation(line: 430, column: 1, scope: !421)
!531 = !DILocalVariable(name: "bufIn", arg: 1, scope: !10, file: !11, line: 494, type: !14)
!532 = !DILocation(line: 494, column: 23, scope: !10)
!533 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !10, file: !11, line: 495, type: !16)
!534 = !DILocation(line: 495, column: 18, scope: !10)
!535 = !DILocalVariable(name: "sizeOut", arg: 3, scope: !10, file: !11, line: 496, type: !19)
!536 = !DILocation(line: 496, column: 19, scope: !10)
!537 = !DILocalVariable(name: "buf", scope: !10, file: !11, line: 500, type: !4)
!538 = !DILocation(line: 500, column: 16, scope: !10)
!539 = !DILocalVariable(name: "b", scope: !10, file: !11, line: 501, type: !61)
!540 = !DILocation(line: 501, column: 11, scope: !10)
!541 = !DILocalVariable(name: "startUnescaped", scope: !10, file: !11, line: 502, type: !16)
!542 = !DILocation(line: 502, column: 11, scope: !10)
!543 = !DILocalVariable(name: "index", scope: !10, file: !11, line: 503, type: !16)
!544 = !DILocation(line: 503, column: 11, scope: !10)
!545 = !DILocation(line: 505, column: 24, scope: !10)
!546 = !DILocation(line: 505, column: 8, scope: !10)
!547 = !DILocation(line: 508, column: 4, scope: !10)
!548 = !DILocation(line: 510, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !10, file: !11, line: 510, column: 8)
!550 = !DILocation(line: 510, column: 42, scope: !549)
!551 = !DILocation(line: 510, column: 8, scope: !10)
!552 = !DILocation(line: 511, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !11, line: 510, column: 48)
!554 = !DILocation(line: 514, column: 19, scope: !10)
!555 = !DILocation(line: 515, column: 15, scope: !556)
!556 = distinct !DILexicalBlock(scope: !10, file: !11, line: 515, column: 4)
!557 = !DILocation(line: 515, column: 9, scope: !556)
!558 = !DILocation(line: 515, column: 20, scope: !559)
!559 = !DILexicalBlockFile(scope: !560, file: !11, discriminator: 1)
!560 = distinct !DILexicalBlock(scope: !556, file: !11, line: 515, column: 4)
!561 = !DILocation(line: 515, column: 28, scope: !559)
!562 = !DILocation(line: 515, column: 26, scope: !559)
!563 = !DILocation(line: 515, column: 4, scope: !559)
!564 = !DILocation(line: 516, column: 15, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !11, line: 516, column: 11)
!566 = distinct !DILexicalBlock(scope: !560, file: !11, line: 515, column: 45)
!567 = !DILocation(line: 516, column: 11, scope: !565)
!568 = !DILocation(line: 516, column: 22, scope: !565)
!569 = !DILocation(line: 516, column: 11, scope: !566)
!570 = !DILocation(line: 519, column: 37, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !11, line: 519, column: 14)
!572 = distinct !DILexicalBlock(scope: !565, file: !11, line: 516, column: 31)
!573 = !DILocation(line: 519, column: 33, scope: !571)
!574 = !DILocation(line: 520, column: 28, scope: !571)
!575 = !DILocation(line: 520, column: 36, scope: !571)
!576 = !DILocation(line: 520, column: 34, scope: !571)
!577 = !DILocation(line: 519, column: 14, scope: !571)
!578 = !DILocation(line: 520, column: 52, scope: !571)
!579 = !DILocation(line: 520, column: 57, scope: !571)
!580 = !DILocation(line: 521, column: 14, scope: !571)
!581 = !DILocation(line: 521, column: 56, scope: !571)
!582 = !DILocation(line: 519, column: 14, scope: !583)
!583 = !DILexicalBlockFile(scope: !572, file: !11, discriminator: 1)
!584 = !DILocation(line: 522, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !571, file: !11, line: 521, column: 62)
!586 = !DILocation(line: 524, column: 27, scope: !572)
!587 = !DILocation(line: 524, column: 25, scope: !572)
!588 = !DILocation(line: 525, column: 7, scope: !572)
!589 = !DILocation(line: 526, column: 4, scope: !566)
!590 = !DILocation(line: 515, column: 41, scope: !591)
!591 = !DILexicalBlockFile(scope: !560, file: !11, discriminator: 2)
!592 = !DILocation(line: 515, column: 4, scope: !591)
!593 = distinct !{!593, !594}
!594 = !DILocation(line: 515, column: 4, scope: !10)
!595 = !DILocation(line: 529, column: 31, scope: !596)
!596 = distinct !DILexicalBlock(scope: !10, file: !11, line: 529, column: 8)
!597 = !DILocation(line: 529, column: 27, scope: !596)
!598 = !DILocation(line: 530, column: 22, scope: !596)
!599 = !DILocation(line: 530, column: 30, scope: !596)
!600 = !DILocation(line: 530, column: 28, scope: !596)
!601 = !DILocation(line: 529, column: 8, scope: !596)
!602 = !DILocation(line: 530, column: 46, scope: !596)
!603 = !DILocation(line: 530, column: 51, scope: !596)
!604 = !DILocation(line: 531, column: 8, scope: !596)
!605 = !DILocation(line: 531, column: 42, scope: !596)
!606 = !DILocation(line: 531, column: 47, scope: !596)
!607 = !DILocation(line: 533, column: 8, scope: !596)
!608 = !DILocation(line: 533, column: 33, scope: !596)
!609 = !DILocation(line: 533, column: 38, scope: !596)
!610 = !DILocation(line: 534, column: 8, scope: !596)
!611 = !DILocation(line: 534, column: 24, scope: !596)
!612 = !DILocation(line: 529, column: 8, scope: !613)
!613 = !DILexicalBlockFile(scope: !10, file: !11, discriminator: 1)
!614 = !DILocation(line: 535, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !596, file: !11, line: 534, column: 30)
!616 = !DILocation(line: 538, column: 8, scope: !617)
!617 = distinct !DILexicalBlock(scope: !10, file: !11, line: 538, column: 8)
!618 = !DILocation(line: 538, column: 8, scope: !10)
!619 = !DILocation(line: 539, column: 18, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !11, line: 538, column: 17)
!621 = !DILocation(line: 539, column: 37, scope: !620)
!622 = !DILocation(line: 539, column: 8, scope: !620)
!623 = !DILocation(line: 539, column: 16, scope: !620)
!624 = !DILocation(line: 540, column: 4, scope: !620)
!625 = !DILocation(line: 542, column: 11, scope: !10)
!626 = !DILocation(line: 542, column: 4, scope: !10)
!627 = !DILocation(line: 545, column: 4, scope: !10)
!628 = !DILocation(line: 547, column: 4, scope: !10)
!629 = !DILocation(line: 548, column: 1, scope: !10)
!630 = !DILocalVariable(name: "bufIn", arg: 1, scope: !28, file: !11, line: 572, type: !14)
!631 = !DILocation(line: 572, column: 24, scope: !28)
!632 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !28, file: !11, line: 573, type: !16)
!633 = !DILocation(line: 573, column: 19, scope: !28)
!634 = !DILocalVariable(name: "sizeOut", arg: 3, scope: !28, file: !11, line: 574, type: !19)
!635 = !DILocation(line: 574, column: 20, scope: !28)
!636 = !DILocalVariable(name: "buf", scope: !28, file: !11, line: 596, type: !4)
!637 = !DILocation(line: 596, column: 16, scope: !28)
!638 = !DILocalVariable(name: "b", scope: !28, file: !11, line: 597, type: !61)
!639 = !DILocation(line: 597, column: 11, scope: !28)
!640 = !DILocalVariable(name: "startUnescaped", scope: !28, file: !11, line: 598, type: !16)
!641 = !DILocation(line: 598, column: 11, scope: !28)
!642 = !DILocalVariable(name: "index", scope: !28, file: !11, line: 599, type: !16)
!643 = !DILocation(line: 599, column: 11, scope: !28)
!644 = !DILocation(line: 604, column: 24, scope: !28)
!645 = !DILocation(line: 604, column: 8, scope: !28)
!646 = !DILocation(line: 607, column: 4, scope: !28)
!647 = !DILocation(line: 608, column: 19, scope: !28)
!648 = !DILocation(line: 610, column: 15, scope: !649)
!649 = distinct !DILexicalBlock(scope: !28, file: !11, line: 610, column: 4)
!650 = !DILocation(line: 610, column: 9, scope: !649)
!651 = !DILocation(line: 610, column: 20, scope: !652)
!652 = !DILexicalBlockFile(scope: !653, file: !11, discriminator: 1)
!653 = distinct !DILexicalBlock(scope: !649, file: !11, line: 610, column: 4)
!654 = !DILocation(line: 610, column: 28, scope: !652)
!655 = !DILocation(line: 610, column: 26, scope: !652)
!656 = !DILocation(line: 610, column: 4, scope: !652)
!657 = !DILocalVariable(name: "ubyte", scope: !658, file: !11, line: 612, type: !94)
!658 = distinct !DILexicalBlock(scope: !653, file: !11, line: 610, column: 45)
!659 = !DILocation(line: 612, column: 21, scope: !658)
!660 = !DILocation(line: 614, column: 19, scope: !658)
!661 = !DILocation(line: 614, column: 15, scope: !658)
!662 = !DILocation(line: 614, column: 13, scope: !658)
!663 = !DILocation(line: 615, column: 22, scope: !664)
!664 = distinct !DILexicalBlock(scope: !658, file: !11, line: 615, column: 11)
!665 = !DILocation(line: 615, column: 11, scope: !664)
!666 = !DILocation(line: 615, column: 11, scope: !658)
!667 = !DILocation(line: 618, column: 37, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !11, line: 618, column: 14)
!669 = distinct !DILexicalBlock(scope: !664, file: !11, line: 615, column: 30)
!670 = !DILocation(line: 618, column: 33, scope: !668)
!671 = !DILocation(line: 619, column: 28, scope: !668)
!672 = !DILocation(line: 619, column: 36, scope: !668)
!673 = !DILocation(line: 619, column: 34, scope: !668)
!674 = !DILocation(line: 618, column: 14, scope: !668)
!675 = !DILocation(line: 619, column: 52, scope: !668)
!676 = !DILocation(line: 619, column: 57, scope: !668)
!677 = !DILocation(line: 620, column: 14, scope: !668)
!678 = !DILocation(line: 620, column: 58, scope: !668)
!679 = !DILocation(line: 618, column: 14, scope: !680)
!680 = !DILexicalBlockFile(scope: !669, file: !11, discriminator: 1)
!681 = !DILocation(line: 621, column: 13, scope: !682)
!682 = distinct !DILexicalBlock(scope: !668, file: !11, line: 620, column: 64)
!683 = !DILocation(line: 623, column: 27, scope: !669)
!684 = !DILocation(line: 623, column: 25, scope: !669)
!685 = !DILocation(line: 624, column: 7, scope: !669)
!686 = !DILocation(line: 625, column: 4, scope: !658)
!687 = !DILocation(line: 610, column: 41, scope: !688)
!688 = !DILexicalBlockFile(scope: !653, file: !11, discriminator: 2)
!689 = !DILocation(line: 610, column: 4, scope: !688)
!690 = distinct !{!690, !691}
!691 = !DILocation(line: 610, column: 4, scope: !28)
!692 = !DILocation(line: 628, column: 31, scope: !693)
!693 = distinct !DILexicalBlock(scope: !28, file: !11, line: 628, column: 8)
!694 = !DILocation(line: 628, column: 27, scope: !693)
!695 = !DILocation(line: 629, column: 22, scope: !693)
!696 = !DILocation(line: 629, column: 30, scope: !693)
!697 = !DILocation(line: 629, column: 28, scope: !693)
!698 = !DILocation(line: 628, column: 8, scope: !693)
!699 = !DILocation(line: 629, column: 46, scope: !693)
!700 = !DILocation(line: 629, column: 51, scope: !693)
!701 = !DILocation(line: 631, column: 8, scope: !693)
!702 = !DILocation(line: 631, column: 33, scope: !693)
!703 = !DILocation(line: 631, column: 38, scope: !693)
!704 = !DILocation(line: 632, column: 8, scope: !693)
!705 = !DILocation(line: 632, column: 24, scope: !693)
!706 = !DILocation(line: 628, column: 8, scope: !707)
!707 = !DILexicalBlockFile(scope: !28, file: !11, discriminator: 1)
!708 = !DILocation(line: 633, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !693, file: !11, line: 632, column: 30)
!710 = !DILocation(line: 636, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !28, file: !11, line: 636, column: 8)
!712 = !DILocation(line: 636, column: 8, scope: !28)
!713 = !DILocation(line: 637, column: 18, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !11, line: 636, column: 17)
!715 = !DILocation(line: 637, column: 37, scope: !714)
!716 = !DILocation(line: 637, column: 8, scope: !714)
!717 = !DILocation(line: 637, column: 16, scope: !714)
!718 = !DILocation(line: 638, column: 4, scope: !714)
!719 = !DILocation(line: 640, column: 11, scope: !28)
!720 = !DILocation(line: 640, column: 4, scope: !28)
!721 = !DILocation(line: 643, column: 4, scope: !28)
!722 = !DILocation(line: 645, column: 4, scope: !28)
!723 = !DILocation(line: 646, column: 1, scope: !28)
!724 = distinct !DISubprogram(name: "Escape_Strchr", scope: !11, file: !11, line: 670, type: !725, isLocal: false, isDefinition: true, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!725 = !DISubroutineType(types: !726)
!726 = !{!4, !6, !4, !6}
!727 = !DILocalVariable(name: "escByte", arg: 1, scope: !724, file: !11, line: 670, type: !6)
!728 = !DILocation(line: 670, column: 20, scope: !724)
!729 = !DILocalVariable(name: "bufIn", arg: 2, scope: !724, file: !11, line: 671, type: !4)
!730 = !DILocation(line: 671, column: 27, scope: !724)
!731 = !DILocalVariable(name: "c", arg: 3, scope: !724, file: !11, line: 672, type: !6)
!732 = !DILocation(line: 672, column: 20, scope: !724)
!733 = !DILocalVariable(name: "i", scope: !724, file: !11, line: 674, type: !16)
!734 = !DILocation(line: 674, column: 11, scope: !724)
!735 = !DILocalVariable(name: "escaped", scope: !724, file: !11, line: 675, type: !369)
!736 = !DILocation(line: 675, column: 9, scope: !724)
!737 = !DILocation(line: 680, column: 11, scope: !738)
!738 = distinct !DILexicalBlock(scope: !724, file: !11, line: 680, column: 4)
!739 = !DILocation(line: 680, column: 9, scope: !738)
!740 = !DILocation(line: 680, column: 22, scope: !741)
!741 = !DILexicalBlockFile(scope: !742, file: !11, discriminator: 1)
!742 = distinct !DILexicalBlock(scope: !738, file: !11, line: 680, column: 4)
!743 = !DILocation(line: 680, column: 16, scope: !741)
!744 = !DILocation(line: 680, column: 25, scope: !741)
!745 = !DILocation(line: 680, column: 4, scope: !741)
!746 = !DILocation(line: 681, column: 11, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !11, line: 681, column: 11)
!748 = distinct !DILexicalBlock(scope: !742, file: !11, line: 680, column: 39)
!749 = !DILocation(line: 681, column: 11, scope: !748)
!750 = !DILocation(line: 682, column: 18, scope: !751)
!751 = distinct !DILexicalBlock(scope: !747, file: !11, line: 681, column: 20)
!752 = !DILocation(line: 683, column: 7, scope: !751)
!753 = !DILocation(line: 684, column: 20, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !11, line: 684, column: 14)
!755 = distinct !DILexicalBlock(scope: !747, file: !11, line: 683, column: 14)
!756 = !DILocation(line: 684, column: 14, scope: !754)
!757 = !DILocation(line: 684, column: 26, scope: !754)
!758 = !DILocation(line: 684, column: 23, scope: !754)
!759 = !DILocation(line: 684, column: 14, scope: !755)
!760 = !DILocation(line: 685, column: 27, scope: !761)
!761 = distinct !DILexicalBlock(scope: !754, file: !11, line: 684, column: 29)
!762 = !DILocation(line: 685, column: 21, scope: !761)
!763 = !DILocation(line: 685, column: 13, scope: !761)
!764 = !DILocation(line: 688, column: 20, scope: !765)
!765 = distinct !DILexicalBlock(scope: !755, file: !11, line: 688, column: 14)
!766 = !DILocation(line: 688, column: 14, scope: !765)
!767 = !DILocation(line: 688, column: 26, scope: !765)
!768 = !DILocation(line: 688, column: 23, scope: !765)
!769 = !DILocation(line: 688, column: 14, scope: !755)
!770 = !DILocation(line: 689, column: 21, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !11, line: 688, column: 35)
!772 = !DILocation(line: 690, column: 10, scope: !771)
!773 = !DILocation(line: 692, column: 4, scope: !748)
!774 = !DILocation(line: 680, column: 35, scope: !775)
!775 = !DILexicalBlockFile(scope: !742, file: !11, discriminator: 2)
!776 = !DILocation(line: 680, column: 4, scope: !775)
!777 = distinct !{!777, !778}
!778 = !DILocation(line: 680, column: 4, scope: !724)
!779 = !DILocation(line: 694, column: 4, scope: !724)
!780 = !DILocation(line: 695, column: 1, scope: !724)
!781 = distinct !DISubprogram(name: "Escape_Unescape", scope: !11, file: !11, line: 716, type: !782, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!782 = !DISubroutineType(types: !783)
!783 = !{!66, !6, !4}
!784 = !DILocalVariable(name: "escByte", arg: 1, scope: !781, file: !11, line: 716, type: !6)
!785 = !DILocation(line: 716, column: 22, scope: !781)
!786 = !DILocalVariable(name: "bufIn", arg: 2, scope: !781, file: !11, line: 717, type: !4)
!787 = !DILocation(line: 717, column: 29, scope: !781)
!788 = !DILocalVariable(name: "result", scope: !781, file: !11, line: 719, type: !61)
!789 = !DILocation(line: 719, column: 11, scope: !781)
!790 = !DILocalVariable(name: "escaped", scope: !781, file: !11, line: 720, type: !369)
!791 = !DILocation(line: 720, column: 9, scope: !781)
!792 = !DILocalVariable(name: "nullbyte", scope: !781, file: !11, line: 721, type: !6)
!793 = !DILocation(line: 721, column: 9, scope: !781)
!794 = !DILocalVariable(name: "i", scope: !781, file: !11, line: 722, type: !32)
!795 = !DILocation(line: 722, column: 8, scope: !781)
!796 = !DILocation(line: 726, column: 4, scope: !781)
!797 = !DILocation(line: 728, column: 11, scope: !798)
!798 = distinct !DILexicalBlock(scope: !781, file: !11, line: 728, column: 4)
!799 = !DILocation(line: 728, column: 9, scope: !798)
!800 = !DILocation(line: 728, column: 22, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !11, discriminator: 1)
!802 = distinct !DILexicalBlock(scope: !798, file: !11, line: 728, column: 4)
!803 = !DILocation(line: 728, column: 16, scope: !801)
!804 = !DILocation(line: 728, column: 4, scope: !801)
!805 = !DILocation(line: 729, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !11, line: 729, column: 11)
!807 = distinct !DILexicalBlock(scope: !802, file: !11, line: 728, column: 31)
!808 = !DILocation(line: 729, column: 11, scope: !806)
!809 = !DILocation(line: 729, column: 23, scope: !806)
!810 = !DILocation(line: 729, column: 20, scope: !806)
!811 = !DILocation(line: 729, column: 31, scope: !806)
!812 = !DILocation(line: 729, column: 34, scope: !813)
!813 = !DILexicalBlockFile(scope: !806, file: !11, discriminator: 1)
!814 = !DILocation(line: 729, column: 11, scope: !813)
!815 = !DILocation(line: 730, column: 41, scope: !816)
!816 = distinct !DILexicalBlock(scope: !806, file: !11, line: 729, column: 43)
!817 = !DILocation(line: 730, column: 35, scope: !816)
!818 = !DILocation(line: 730, column: 10, scope: !816)
!819 = !DILocation(line: 731, column: 18, scope: !816)
!820 = !DILocation(line: 732, column: 7, scope: !816)
!821 = !DILocation(line: 733, column: 18, scope: !822)
!822 = distinct !DILexicalBlock(scope: !806, file: !11, line: 732, column: 14)
!823 = !DILocation(line: 735, column: 4, scope: !807)
!824 = !DILocation(line: 728, column: 27, scope: !825)
!825 = !DILexicalBlockFile(scope: !802, file: !11, discriminator: 2)
!826 = !DILocation(line: 728, column: 4, scope: !825)
!827 = distinct !{!827, !828}
!828 = !DILocation(line: 728, column: 4, scope: !781)
!829 = !DILocation(line: 737, column: 4, scope: !781)
!830 = !DILocation(line: 739, column: 11, scope: !781)
!831 = !DILocation(line: 739, column: 4, scope: !781)
!832 = distinct !DISubprogram(name: "Escape_UnescapeCString", scope: !11, file: !11, line: 765, type: !833, isLocal: false, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !66}
!835 = !DILocalVariable(name: "buf", arg: 1, scope: !832, file: !11, line: 765, type: !66)
!836 = !DILocation(line: 765, column: 30, scope: !832)
!837 = !DILocalVariable(name: "read", scope: !832, file: !11, line: 767, type: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !370, line: 173, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !840, line: 51, baseType: !241)
!840 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line585")
!841 = !DILocation(line: 767, column: 11, scope: !832)
!842 = !DILocalVariable(name: "write", scope: !832, file: !11, line: 768, type: !838)
!843 = !DILocation(line: 768, column: 11, scope: !832)
!844 = !DILocation(line: 772, column: 4, scope: !832)
!845 = !DILocation(line: 772, column: 15, scope: !846)
!846 = !DILexicalBlockFile(scope: !832, file: !11, discriminator: 1)
!847 = !DILocation(line: 772, column: 11, scope: !846)
!848 = !DILocation(line: 772, column: 21, scope: !846)
!849 = !DILocation(line: 772, column: 4, scope: !846)
!850 = !DILocation(line: 773, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !11, line: 773, column: 11)
!852 = distinct !DILexicalBlock(scope: !832, file: !11, line: 772, column: 30)
!853 = !DILocation(line: 773, column: 11, scope: !851)
!854 = !DILocation(line: 773, column: 21, scope: !851)
!855 = !DILocation(line: 773, column: 11, scope: !852)
!856 = !DILocalVariable(name: "val", scope: !857, file: !11, line: 774, type: !838)
!857 = distinct !DILexicalBlock(scope: !851, file: !11, line: 773, column: 30)
!858 = !DILocation(line: 774, column: 17, scope: !857)
!859 = !DILocation(line: 776, column: 18, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !11, line: 776, column: 14)
!861 = !DILocation(line: 776, column: 23, scope: !860)
!862 = !DILocation(line: 776, column: 14, scope: !860)
!863 = !DILocation(line: 776, column: 28, scope: !860)
!864 = !DILocation(line: 776, column: 14, scope: !857)
!865 = !DILocation(line: 777, column: 17, scope: !866)
!866 = distinct !DILexicalBlock(scope: !860, file: !11, line: 776, column: 36)
!867 = !DILocation(line: 777, column: 13, scope: !866)
!868 = !DILocation(line: 777, column: 24, scope: !866)
!869 = !DILocation(line: 778, column: 17, scope: !866)
!870 = !DILocation(line: 779, column: 10, scope: !866)
!871 = !DILocation(line: 779, column: 25, scope: !872)
!872 = !DILexicalBlockFile(scope: !873, file: !11, discriminator: 1)
!873 = distinct !DILexicalBlock(scope: !860, file: !11, line: 779, column: 21)
!874 = !DILocation(line: 779, column: 30, scope: !872)
!875 = !DILocation(line: 779, column: 21, scope: !872)
!876 = !DILocation(line: 779, column: 35, scope: !872)
!877 = !DILocation(line: 780, column: 17, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !11, line: 779, column: 44)
!879 = !DILocation(line: 780, column: 13, scope: !878)
!880 = !DILocation(line: 780, column: 24, scope: !878)
!881 = !DILocation(line: 781, column: 17, scope: !878)
!882 = !DILocation(line: 782, column: 10, scope: !878)
!883 = !DILocation(line: 782, column: 33, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !11, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !873, file: !11, line: 782, column: 21)
!886 = !DILocation(line: 782, column: 29, scope: !884)
!887 = !DILocation(line: 782, column: 21, scope: !884)
!888 = !DILocation(line: 782, column: 56, scope: !884)
!889 = !DILocation(line: 783, column: 32, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !11, line: 782, column: 62)
!891 = !DILocation(line: 783, column: 26, scope: !890)
!892 = !DILocation(line: 783, column: 17, scope: !890)
!893 = !DILocation(line: 783, column: 13, scope: !890)
!894 = !DILocation(line: 783, column: 24, scope: !890)
!895 = !DILocation(line: 784, column: 18, scope: !890)
!896 = !DILocation(line: 785, column: 10, scope: !890)
!897 = !DILocation(line: 786, column: 30, scope: !898)
!898 = distinct !DILexicalBlock(scope: !885, file: !11, line: 785, column: 17)
!899 = !DILocation(line: 786, column: 26, scope: !898)
!900 = !DILocation(line: 786, column: 17, scope: !898)
!901 = !DILocation(line: 786, column: 13, scope: !898)
!902 = !DILocation(line: 786, column: 24, scope: !898)
!903 = !DILocation(line: 788, column: 7, scope: !857)
!904 = !DILocation(line: 789, column: 27, scope: !905)
!905 = distinct !DILexicalBlock(scope: !851, file: !11, line: 788, column: 14)
!906 = !DILocation(line: 789, column: 23, scope: !905)
!907 = !DILocation(line: 789, column: 14, scope: !905)
!908 = !DILocation(line: 789, column: 10, scope: !905)
!909 = !DILocation(line: 789, column: 21, scope: !905)
!910 = !DILocation(line: 792, column: 11, scope: !852)
!911 = !DILocation(line: 793, column: 12, scope: !852)
!912 = !DILocation(line: 772, column: 4, scope: !913)
!913 = !DILexicalBlockFile(scope: !832, file: !11, discriminator: 2)
!914 = distinct !{!914, !844}
!915 = !DILocation(line: 795, column: 8, scope: !832)
!916 = !DILocation(line: 795, column: 4, scope: !832)
!917 = !DILocation(line: 795, column: 15, scope: !832)
!918 = !DILocation(line: 796, column: 1, scope: !832)
!919 = distinct !DISubprogram(name: "Escape_Comma", scope: !11, file: !11, line: 854, type: !920, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!920 = !DISubroutineType(types: !921)
!921 = !{!66, !4}
!922 = !DILocalVariable(name: "string", arg: 1, scope: !919, file: !11, line: 854, type: !4)
!923 = !DILocation(line: 854, column: 26, scope: !919)
!924 = !DILocalVariable(name: "b", scope: !919, file: !11, line: 856, type: !61)
!925 = !DILocation(line: 856, column: 11, scope: !919)
!926 = !DILocation(line: 858, column: 8, scope: !927)
!927 = distinct !DILexicalBlock(scope: !919, file: !11, line: 858, column: 8)
!928 = !DILocation(line: 858, column: 15, scope: !927)
!929 = !DILocation(line: 858, column: 8, scope: !919)
!930 = !DILocation(line: 859, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !11, line: 858, column: 23)
!932 = !DILocation(line: 862, column: 4, scope: !919)
!933 = !DILocation(line: 864, column: 4, scope: !919)
!934 = !DILocation(line: 864, column: 12, scope: !935)
!935 = !DILexicalBlockFile(scope: !936, file: !11, discriminator: 1)
!936 = distinct !DILexicalBlock(scope: !937, file: !11, line: 864, column: 4)
!937 = distinct !DILexicalBlock(scope: !919, file: !11, line: 864, column: 4)
!938 = !DILocation(line: 864, column: 11, scope: !935)
!939 = !DILocation(line: 864, column: 4, scope: !935)
!940 = !DILocalVariable(name: "c", scope: !941, file: !11, line: 865, type: !6)
!941 = distinct !DILexicalBlock(scope: !936, file: !11, line: 864, column: 30)
!942 = !DILocation(line: 865, column: 12, scope: !941)
!943 = !DILocation(line: 865, column: 17, scope: !941)
!944 = !DILocation(line: 865, column: 16, scope: !941)
!945 = !DILocation(line: 867, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !11, line: 867, column: 11)
!947 = !DILocation(line: 867, column: 13, scope: !946)
!948 = !DILocation(line: 867, column: 20, scope: !946)
!949 = !DILocation(line: 867, column: 23, scope: !950)
!950 = !DILexicalBlockFile(scope: !946, file: !11, discriminator: 1)
!951 = !DILocation(line: 867, column: 25, scope: !950)
!952 = !DILocation(line: 867, column: 11, scope: !950)
!953 = !DILocation(line: 868, column: 15, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !11, line: 868, column: 14)
!955 = distinct !DILexicalBlock(scope: !946, file: !11, line: 867, column: 34)
!956 = !DILocation(line: 868, column: 14, scope: !955)
!957 = !DILocation(line: 869, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !11, line: 868, column: 43)
!959 = !DILocation(line: 871, column: 7, scope: !955)
!960 = !DILocation(line: 872, column: 30, scope: !961)
!961 = distinct !DILexicalBlock(scope: !941, file: !11, line: 872, column: 11)
!962 = !DILocation(line: 872, column: 12, scope: !961)
!963 = !DILocation(line: 872, column: 11, scope: !941)
!964 = !DILocation(line: 873, column: 10, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !11, line: 872, column: 42)
!966 = !DILocation(line: 875, column: 4, scope: !941)
!967 = !DILocation(line: 864, column: 20, scope: !968)
!968 = !DILexicalBlockFile(scope: !936, file: !11, discriminator: 2)
!969 = !DILocation(line: 864, column: 4, scope: !968)
!970 = distinct !{!970, !933}
!971 = !DILocation(line: 877, column: 22, scope: !919)
!972 = !DILocation(line: 877, column: 4, scope: !919)
!973 = !DILocation(line: 879, column: 11, scope: !919)
!974 = !DILocation(line: 879, column: 4, scope: !919)
!975 = !DILocation(line: 882, column: 4, scope: !919)
!976 = !DILocation(line: 883, column: 4, scope: !919)
!977 = !DILocation(line: 884, column: 1, scope: !919)
