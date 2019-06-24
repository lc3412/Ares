; ModuleID = './[inter]src--.libs--endian.o.i'
source_filename = "./[inter]src--.libs--endian.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i16 }
%union.anon.4 = type { i16 }
%union.anon.5 = type { float }
%union.anon.6 = type { double }

; Function Attrs: nounwind uwtable
define i64 @Mat_int64Swap(i64*) #0 !dbg !6 {
  %2 = alloca i64*, align 8
  %3 = alloca %union.anon, align 8
  store i64* %0, i64** %2, align 8
  call void @llvm.dbg.declare(metadata i64** %2, metadata !16, metadata !17), !dbg !18
  call void @llvm.dbg.declare(metadata %union.anon* %3, metadata !19, metadata !17), !dbg !30
  %4 = load i64*, i64** %2, align 8, !dbg !31
  %5 = load i64, i64* %4, align 8, !dbg !32
  %6 = bitcast %union.anon* %3 to i64*, !dbg !33
  store i64 %5, i64* %6, align 8, !dbg !34
  %7 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !35
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 7, !dbg !36
  %9 = load i8, i8* %8, align 1, !dbg !36
  %10 = sext i8 %9 to i32, !dbg !36
  %11 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !37
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0, !dbg !38
  %13 = load i8, i8* %12, align 8, !dbg !39
  %14 = sext i8 %13 to i32, !dbg !39
  %15 = xor i32 %14, %10, !dbg !39
  %16 = trunc i32 %15 to i8, !dbg !39
  store i8 %16, i8* %12, align 8, !dbg !39
  %17 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !40
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !41
  %19 = load i8, i8* %18, align 8, !dbg !41
  %20 = sext i8 %19 to i32, !dbg !41
  %21 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !42
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 7, !dbg !43
  %23 = load i8, i8* %22, align 1, !dbg !44
  %24 = sext i8 %23 to i32, !dbg !44
  %25 = xor i32 %24, %20, !dbg !44
  %26 = trunc i32 %25 to i8, !dbg !44
  store i8 %26, i8* %22, align 1, !dbg !44
  %27 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !45
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 7, !dbg !46
  %29 = load i8, i8* %28, align 1, !dbg !46
  %30 = sext i8 %29 to i32, !dbg !46
  %31 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !47
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %31, i64 0, i64 0, !dbg !48
  %33 = load i8, i8* %32, align 8, !dbg !49
  %34 = sext i8 %33 to i32, !dbg !49
  %35 = xor i32 %34, %30, !dbg !49
  %36 = trunc i32 %35 to i8, !dbg !49
  store i8 %36, i8* %32, align 8, !dbg !49
  %37 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !50
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 6, !dbg !51
  %39 = load i8, i8* %38, align 2, !dbg !51
  %40 = sext i8 %39 to i32, !dbg !51
  %41 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !52
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %41, i64 0, i64 1, !dbg !53
  %43 = load i8, i8* %42, align 1, !dbg !54
  %44 = sext i8 %43 to i32, !dbg !54
  %45 = xor i32 %44, %40, !dbg !54
  %46 = trunc i32 %45 to i8, !dbg !54
  store i8 %46, i8* %42, align 1, !dbg !54
  %47 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !55
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 1, !dbg !56
  %49 = load i8, i8* %48, align 1, !dbg !56
  %50 = sext i8 %49 to i32, !dbg !56
  %51 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !57
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %51, i64 0, i64 6, !dbg !58
  %53 = load i8, i8* %52, align 2, !dbg !59
  %54 = sext i8 %53 to i32, !dbg !59
  %55 = xor i32 %54, %50, !dbg !59
  %56 = trunc i32 %55 to i8, !dbg !59
  store i8 %56, i8* %52, align 2, !dbg !59
  %57 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !60
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %57, i64 0, i64 6, !dbg !61
  %59 = load i8, i8* %58, align 2, !dbg !61
  %60 = sext i8 %59 to i32, !dbg !61
  %61 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !62
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %61, i64 0, i64 1, !dbg !63
  %63 = load i8, i8* %62, align 1, !dbg !64
  %64 = sext i8 %63 to i32, !dbg !64
  %65 = xor i32 %64, %60, !dbg !64
  %66 = trunc i32 %65 to i8, !dbg !64
  store i8 %66, i8* %62, align 1, !dbg !64
  %67 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !65
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %67, i64 0, i64 5, !dbg !66
  %69 = load i8, i8* %68, align 1, !dbg !66
  %70 = sext i8 %69 to i32, !dbg !66
  %71 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !67
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %71, i64 0, i64 2, !dbg !68
  %73 = load i8, i8* %72, align 2, !dbg !69
  %74 = sext i8 %73 to i32, !dbg !69
  %75 = xor i32 %74, %70, !dbg !69
  %76 = trunc i32 %75 to i8, !dbg !69
  store i8 %76, i8* %72, align 2, !dbg !69
  %77 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !70
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %77, i64 0, i64 2, !dbg !71
  %79 = load i8, i8* %78, align 2, !dbg !71
  %80 = sext i8 %79 to i32, !dbg !71
  %81 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !72
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %81, i64 0, i64 5, !dbg !73
  %83 = load i8, i8* %82, align 1, !dbg !74
  %84 = sext i8 %83 to i32, !dbg !74
  %85 = xor i32 %84, %80, !dbg !74
  %86 = trunc i32 %85 to i8, !dbg !74
  store i8 %86, i8* %82, align 1, !dbg !74
  %87 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !75
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %87, i64 0, i64 5, !dbg !76
  %89 = load i8, i8* %88, align 1, !dbg !76
  %90 = sext i8 %89 to i32, !dbg !76
  %91 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !77
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %91, i64 0, i64 2, !dbg !78
  %93 = load i8, i8* %92, align 2, !dbg !79
  %94 = sext i8 %93 to i32, !dbg !79
  %95 = xor i32 %94, %90, !dbg !79
  %96 = trunc i32 %95 to i8, !dbg !79
  store i8 %96, i8* %92, align 2, !dbg !79
  %97 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !80
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %97, i64 0, i64 4, !dbg !81
  %99 = load i8, i8* %98, align 4, !dbg !81
  %100 = sext i8 %99 to i32, !dbg !81
  %101 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !82
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %101, i64 0, i64 3, !dbg !83
  %103 = load i8, i8* %102, align 1, !dbg !84
  %104 = sext i8 %103 to i32, !dbg !84
  %105 = xor i32 %104, %100, !dbg !84
  %106 = trunc i32 %105 to i8, !dbg !84
  store i8 %106, i8* %102, align 1, !dbg !84
  %107 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !85
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %107, i64 0, i64 3, !dbg !86
  %109 = load i8, i8* %108, align 1, !dbg !86
  %110 = sext i8 %109 to i32, !dbg !86
  %111 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !87
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %111, i64 0, i64 4, !dbg !88
  %113 = load i8, i8* %112, align 4, !dbg !89
  %114 = sext i8 %113 to i32, !dbg !89
  %115 = xor i32 %114, %110, !dbg !89
  %116 = trunc i32 %115 to i8, !dbg !89
  store i8 %116, i8* %112, align 4, !dbg !89
  %117 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !90
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %117, i64 0, i64 4, !dbg !91
  %119 = load i8, i8* %118, align 4, !dbg !91
  %120 = sext i8 %119 to i32, !dbg !91
  %121 = bitcast %union.anon* %3 to [8 x i8]*, !dbg !92
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %121, i64 0, i64 3, !dbg !93
  %123 = load i8, i8* %122, align 1, !dbg !94
  %124 = sext i8 %123 to i32, !dbg !94
  %125 = xor i32 %124, %120, !dbg !94
  %126 = trunc i32 %125 to i8, !dbg !94
  store i8 %126, i8* %122, align 1, !dbg !94
  %127 = bitcast %union.anon* %3 to i64*, !dbg !95
  %128 = load i64, i64* %127, align 8, !dbg !95
  %129 = load i64*, i64** %2, align 8, !dbg !96
  store i64 %128, i64* %129, align 8, !dbg !97
  %130 = load i64*, i64** %2, align 8, !dbg !98
  %131 = load i64, i64* %130, align 8, !dbg !99
  ret i64 %131, !dbg !100
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @Mat_uint64Swap(i64*) #0 !dbg !101 {
  %2 = alloca i64*, align 8
  %3 = alloca %union.anon.0, align 8
  store i64* %0, i64** %2, align 8
  call void @llvm.dbg.declare(metadata i64** %2, metadata !109, metadata !17), !dbg !110
  call void @llvm.dbg.declare(metadata %union.anon.0* %3, metadata !111, metadata !17), !dbg !120
  %4 = load i64*, i64** %2, align 8, !dbg !121
  %5 = load i64, i64* %4, align 8, !dbg !122
  %6 = bitcast %union.anon.0* %3 to i64*, !dbg !123
  store i64 %5, i64* %6, align 8, !dbg !124
  %7 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !125
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 7, !dbg !126
  %9 = load i8, i8* %8, align 1, !dbg !126
  %10 = zext i8 %9 to i32, !dbg !126
  %11 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !127
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0, !dbg !128
  %13 = load i8, i8* %12, align 8, !dbg !129
  %14 = zext i8 %13 to i32, !dbg !129
  %15 = xor i32 %14, %10, !dbg !129
  %16 = trunc i32 %15 to i8, !dbg !129
  store i8 %16, i8* %12, align 8, !dbg !129
  %17 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !130
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !131
  %19 = load i8, i8* %18, align 8, !dbg !131
  %20 = zext i8 %19 to i32, !dbg !131
  %21 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !132
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 7, !dbg !133
  %23 = load i8, i8* %22, align 1, !dbg !134
  %24 = zext i8 %23 to i32, !dbg !134
  %25 = xor i32 %24, %20, !dbg !134
  %26 = trunc i32 %25 to i8, !dbg !134
  store i8 %26, i8* %22, align 1, !dbg !134
  %27 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !135
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 7, !dbg !136
  %29 = load i8, i8* %28, align 1, !dbg !136
  %30 = zext i8 %29 to i32, !dbg !136
  %31 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !137
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %31, i64 0, i64 0, !dbg !138
  %33 = load i8, i8* %32, align 8, !dbg !139
  %34 = zext i8 %33 to i32, !dbg !139
  %35 = xor i32 %34, %30, !dbg !139
  %36 = trunc i32 %35 to i8, !dbg !139
  store i8 %36, i8* %32, align 8, !dbg !139
  %37 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !140
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 6, !dbg !141
  %39 = load i8, i8* %38, align 2, !dbg !141
  %40 = zext i8 %39 to i32, !dbg !141
  %41 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !142
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %41, i64 0, i64 1, !dbg !143
  %43 = load i8, i8* %42, align 1, !dbg !144
  %44 = zext i8 %43 to i32, !dbg !144
  %45 = xor i32 %44, %40, !dbg !144
  %46 = trunc i32 %45 to i8, !dbg !144
  store i8 %46, i8* %42, align 1, !dbg !144
  %47 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !145
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 1, !dbg !146
  %49 = load i8, i8* %48, align 1, !dbg !146
  %50 = zext i8 %49 to i32, !dbg !146
  %51 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !147
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %51, i64 0, i64 6, !dbg !148
  %53 = load i8, i8* %52, align 2, !dbg !149
  %54 = zext i8 %53 to i32, !dbg !149
  %55 = xor i32 %54, %50, !dbg !149
  %56 = trunc i32 %55 to i8, !dbg !149
  store i8 %56, i8* %52, align 2, !dbg !149
  %57 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !150
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %57, i64 0, i64 6, !dbg !151
  %59 = load i8, i8* %58, align 2, !dbg !151
  %60 = zext i8 %59 to i32, !dbg !151
  %61 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !152
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %61, i64 0, i64 1, !dbg !153
  %63 = load i8, i8* %62, align 1, !dbg !154
  %64 = zext i8 %63 to i32, !dbg !154
  %65 = xor i32 %64, %60, !dbg !154
  %66 = trunc i32 %65 to i8, !dbg !154
  store i8 %66, i8* %62, align 1, !dbg !154
  %67 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !155
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %67, i64 0, i64 5, !dbg !156
  %69 = load i8, i8* %68, align 1, !dbg !156
  %70 = zext i8 %69 to i32, !dbg !156
  %71 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !157
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %71, i64 0, i64 2, !dbg !158
  %73 = load i8, i8* %72, align 2, !dbg !159
  %74 = zext i8 %73 to i32, !dbg !159
  %75 = xor i32 %74, %70, !dbg !159
  %76 = trunc i32 %75 to i8, !dbg !159
  store i8 %76, i8* %72, align 2, !dbg !159
  %77 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !160
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %77, i64 0, i64 2, !dbg !161
  %79 = load i8, i8* %78, align 2, !dbg !161
  %80 = zext i8 %79 to i32, !dbg !161
  %81 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !162
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %81, i64 0, i64 5, !dbg !163
  %83 = load i8, i8* %82, align 1, !dbg !164
  %84 = zext i8 %83 to i32, !dbg !164
  %85 = xor i32 %84, %80, !dbg !164
  %86 = trunc i32 %85 to i8, !dbg !164
  store i8 %86, i8* %82, align 1, !dbg !164
  %87 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !165
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %87, i64 0, i64 5, !dbg !166
  %89 = load i8, i8* %88, align 1, !dbg !166
  %90 = zext i8 %89 to i32, !dbg !166
  %91 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !167
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %91, i64 0, i64 2, !dbg !168
  %93 = load i8, i8* %92, align 2, !dbg !169
  %94 = zext i8 %93 to i32, !dbg !169
  %95 = xor i32 %94, %90, !dbg !169
  %96 = trunc i32 %95 to i8, !dbg !169
  store i8 %96, i8* %92, align 2, !dbg !169
  %97 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !170
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %97, i64 0, i64 4, !dbg !171
  %99 = load i8, i8* %98, align 4, !dbg !171
  %100 = zext i8 %99 to i32, !dbg !171
  %101 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !172
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %101, i64 0, i64 3, !dbg !173
  %103 = load i8, i8* %102, align 1, !dbg !174
  %104 = zext i8 %103 to i32, !dbg !174
  %105 = xor i32 %104, %100, !dbg !174
  %106 = trunc i32 %105 to i8, !dbg !174
  store i8 %106, i8* %102, align 1, !dbg !174
  %107 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !175
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %107, i64 0, i64 3, !dbg !176
  %109 = load i8, i8* %108, align 1, !dbg !176
  %110 = zext i8 %109 to i32, !dbg !176
  %111 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !177
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %111, i64 0, i64 4, !dbg !178
  %113 = load i8, i8* %112, align 4, !dbg !179
  %114 = zext i8 %113 to i32, !dbg !179
  %115 = xor i32 %114, %110, !dbg !179
  %116 = trunc i32 %115 to i8, !dbg !179
  store i8 %116, i8* %112, align 4, !dbg !179
  %117 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !180
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %117, i64 0, i64 4, !dbg !181
  %119 = load i8, i8* %118, align 4, !dbg !181
  %120 = zext i8 %119 to i32, !dbg !181
  %121 = bitcast %union.anon.0* %3 to [8 x i8]*, !dbg !182
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %121, i64 0, i64 3, !dbg !183
  %123 = load i8, i8* %122, align 1, !dbg !184
  %124 = zext i8 %123 to i32, !dbg !184
  %125 = xor i32 %124, %120, !dbg !184
  %126 = trunc i32 %125 to i8, !dbg !184
  store i8 %126, i8* %122, align 1, !dbg !184
  %127 = bitcast %union.anon.0* %3 to i64*, !dbg !185
  %128 = load i64, i64* %127, align 8, !dbg !185
  %129 = load i64*, i64** %2, align 8, !dbg !186
  store i64 %128, i64* %129, align 8, !dbg !187
  %130 = load i64*, i64** %2, align 8, !dbg !188
  %131 = load i64, i64* %130, align 8, !dbg !189
  ret i64 %131, !dbg !190
}

; Function Attrs: nounwind uwtable
define i32 @Mat_int32Swap(i32*) #0 !dbg !191 {
  %2 = alloca i32*, align 8
  %3 = alloca %union.anon.1, align 4
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !198, metadata !17), !dbg !199
  call void @llvm.dbg.declare(metadata %union.anon.1* %3, metadata !200, metadata !17), !dbg !208
  %4 = load i32*, i32** %2, align 8, !dbg !209
  %5 = load i32, i32* %4, align 4, !dbg !210
  %6 = bitcast %union.anon.1* %3 to i32*, !dbg !211
  store i32 %5, i32* %6, align 4, !dbg !212
  %7 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !213
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3, !dbg !214
  %9 = load i8, i8* %8, align 1, !dbg !214
  %10 = sext i8 %9 to i32, !dbg !214
  %11 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !215
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0, !dbg !216
  %13 = load i8, i8* %12, align 4, !dbg !217
  %14 = sext i8 %13 to i32, !dbg !217
  %15 = xor i32 %14, %10, !dbg !217
  %16 = trunc i32 %15 to i8, !dbg !217
  store i8 %16, i8* %12, align 4, !dbg !217
  %17 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !218
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0, !dbg !219
  %19 = load i8, i8* %18, align 4, !dbg !219
  %20 = sext i8 %19 to i32, !dbg !219
  %21 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !220
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 3, !dbg !221
  %23 = load i8, i8* %22, align 1, !dbg !222
  %24 = sext i8 %23 to i32, !dbg !222
  %25 = xor i32 %24, %20, !dbg !222
  %26 = trunc i32 %25 to i8, !dbg !222
  store i8 %26, i8* %22, align 1, !dbg !222
  %27 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !223
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 3, !dbg !224
  %29 = load i8, i8* %28, align 1, !dbg !224
  %30 = sext i8 %29 to i32, !dbg !224
  %31 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !225
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 0, !dbg !226
  %33 = load i8, i8* %32, align 4, !dbg !227
  %34 = sext i8 %33 to i32, !dbg !227
  %35 = xor i32 %34, %30, !dbg !227
  %36 = trunc i32 %35 to i8, !dbg !227
  store i8 %36, i8* %32, align 4, !dbg !227
  %37 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !228
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i64 0, i64 2, !dbg !229
  %39 = load i8, i8* %38, align 2, !dbg !229
  %40 = sext i8 %39 to i32, !dbg !229
  %41 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !230
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %41, i64 0, i64 1, !dbg !231
  %43 = load i8, i8* %42, align 1, !dbg !232
  %44 = sext i8 %43 to i32, !dbg !232
  %45 = xor i32 %44, %40, !dbg !232
  %46 = trunc i32 %45 to i8, !dbg !232
  store i8 %46, i8* %42, align 1, !dbg !232
  %47 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !233
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %47, i64 0, i64 1, !dbg !234
  %49 = load i8, i8* %48, align 1, !dbg !234
  %50 = sext i8 %49 to i32, !dbg !234
  %51 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !235
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %51, i64 0, i64 2, !dbg !236
  %53 = load i8, i8* %52, align 2, !dbg !237
  %54 = sext i8 %53 to i32, !dbg !237
  %55 = xor i32 %54, %50, !dbg !237
  %56 = trunc i32 %55 to i8, !dbg !237
  store i8 %56, i8* %52, align 2, !dbg !237
  %57 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !238
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %57, i64 0, i64 2, !dbg !239
  %59 = load i8, i8* %58, align 2, !dbg !239
  %60 = sext i8 %59 to i32, !dbg !239
  %61 = bitcast %union.anon.1* %3 to [4 x i8]*, !dbg !240
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %61, i64 0, i64 1, !dbg !241
  %63 = load i8, i8* %62, align 1, !dbg !242
  %64 = sext i8 %63 to i32, !dbg !242
  %65 = xor i32 %64, %60, !dbg !242
  %66 = trunc i32 %65 to i8, !dbg !242
  store i8 %66, i8* %62, align 1, !dbg !242
  %67 = bitcast %union.anon.1* %3 to i32*, !dbg !243
  %68 = load i32, i32* %67, align 4, !dbg !243
  %69 = load i32*, i32** %2, align 8, !dbg !244
  store i32 %68, i32* %69, align 4, !dbg !245
  %70 = load i32*, i32** %2, align 8, !dbg !246
  %71 = load i32, i32* %70, align 4, !dbg !247
  ret i32 %71, !dbg !248
}

; Function Attrs: nounwind uwtable
define i32 @Mat_uint32Swap(i32*) #0 !dbg !249 {
  %2 = alloca i32*, align 8
  %3 = alloca %union.anon.2, align 4
  store i32* %0, i32** %2, align 8
  call void @llvm.dbg.declare(metadata i32** %2, metadata !256, metadata !17), !dbg !257
  call void @llvm.dbg.declare(metadata %union.anon.2* %3, metadata !258, metadata !17), !dbg !264
  %4 = load i32*, i32** %2, align 8, !dbg !265
  %5 = load i32, i32* %4, align 4, !dbg !266
  %6 = bitcast %union.anon.2* %3 to i32*, !dbg !267
  store i32 %5, i32* %6, align 4, !dbg !268
  %7 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !269
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3, !dbg !270
  %9 = load i8, i8* %8, align 1, !dbg !270
  %10 = zext i8 %9 to i32, !dbg !270
  %11 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !271
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0, !dbg !272
  %13 = load i8, i8* %12, align 4, !dbg !273
  %14 = zext i8 %13 to i32, !dbg !273
  %15 = xor i32 %14, %10, !dbg !273
  %16 = trunc i32 %15 to i8, !dbg !273
  store i8 %16, i8* %12, align 4, !dbg !273
  %17 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !274
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0, !dbg !275
  %19 = load i8, i8* %18, align 4, !dbg !275
  %20 = zext i8 %19 to i32, !dbg !275
  %21 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !276
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 3, !dbg !277
  %23 = load i8, i8* %22, align 1, !dbg !278
  %24 = zext i8 %23 to i32, !dbg !278
  %25 = xor i32 %24, %20, !dbg !278
  %26 = trunc i32 %25 to i8, !dbg !278
  store i8 %26, i8* %22, align 1, !dbg !278
  %27 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !279
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 3, !dbg !280
  %29 = load i8, i8* %28, align 1, !dbg !280
  %30 = zext i8 %29 to i32, !dbg !280
  %31 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !281
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 0, !dbg !282
  %33 = load i8, i8* %32, align 4, !dbg !283
  %34 = zext i8 %33 to i32, !dbg !283
  %35 = xor i32 %34, %30, !dbg !283
  %36 = trunc i32 %35 to i8, !dbg !283
  store i8 %36, i8* %32, align 4, !dbg !283
  %37 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !284
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i64 0, i64 2, !dbg !285
  %39 = load i8, i8* %38, align 2, !dbg !285
  %40 = zext i8 %39 to i32, !dbg !285
  %41 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !286
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %41, i64 0, i64 1, !dbg !287
  %43 = load i8, i8* %42, align 1, !dbg !288
  %44 = zext i8 %43 to i32, !dbg !288
  %45 = xor i32 %44, %40, !dbg !288
  %46 = trunc i32 %45 to i8, !dbg !288
  store i8 %46, i8* %42, align 1, !dbg !288
  %47 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !289
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %47, i64 0, i64 1, !dbg !290
  %49 = load i8, i8* %48, align 1, !dbg !290
  %50 = zext i8 %49 to i32, !dbg !290
  %51 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !291
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %51, i64 0, i64 2, !dbg !292
  %53 = load i8, i8* %52, align 2, !dbg !293
  %54 = zext i8 %53 to i32, !dbg !293
  %55 = xor i32 %54, %50, !dbg !293
  %56 = trunc i32 %55 to i8, !dbg !293
  store i8 %56, i8* %52, align 2, !dbg !293
  %57 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !294
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %57, i64 0, i64 2, !dbg !295
  %59 = load i8, i8* %58, align 2, !dbg !295
  %60 = zext i8 %59 to i32, !dbg !295
  %61 = bitcast %union.anon.2* %3 to [4 x i8]*, !dbg !296
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %61, i64 0, i64 1, !dbg !297
  %63 = load i8, i8* %62, align 1, !dbg !298
  %64 = zext i8 %63 to i32, !dbg !298
  %65 = xor i32 %64, %60, !dbg !298
  %66 = trunc i32 %65 to i8, !dbg !298
  store i8 %66, i8* %62, align 1, !dbg !298
  %67 = bitcast %union.anon.2* %3 to i32*, !dbg !299
  %68 = load i32, i32* %67, align 4, !dbg !299
  %69 = load i32*, i32** %2, align 8, !dbg !300
  store i32 %68, i32* %69, align 4, !dbg !301
  %70 = load i32*, i32** %2, align 8, !dbg !302
  %71 = load i32, i32* %70, align 4, !dbg !303
  ret i32 %71, !dbg !304
}

; Function Attrs: nounwind uwtable
define signext i16 @Mat_int16Swap(i16*) #0 !dbg !305 {
  %2 = alloca i16*, align 8
  %3 = alloca %union.anon.3, align 2
  store i16* %0, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !312, metadata !17), !dbg !313
  call void @llvm.dbg.declare(metadata %union.anon.3* %3, metadata !314, metadata !17), !dbg !322
  %4 = load i16*, i16** %2, align 8, !dbg !323
  %5 = load i16, i16* %4, align 2, !dbg !324
  %6 = bitcast %union.anon.3* %3 to i16*, !dbg !325
  store i16 %5, i16* %6, align 2, !dbg !326
  %7 = bitcast %union.anon.3* %3 to [2 x i8]*, !dbg !327
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1, !dbg !328
  %9 = load i8, i8* %8, align 1, !dbg !328
  %10 = sext i8 %9 to i32, !dbg !328
  %11 = bitcast %union.anon.3* %3 to [2 x i8]*, !dbg !329
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0, !dbg !330
  %13 = load i8, i8* %12, align 2, !dbg !331
  %14 = sext i8 %13 to i32, !dbg !331
  %15 = xor i32 %14, %10, !dbg !331
  %16 = trunc i32 %15 to i8, !dbg !331
  store i8 %16, i8* %12, align 2, !dbg !331
  %17 = bitcast %union.anon.3* %3 to [2 x i8]*, !dbg !332
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0, !dbg !333
  %19 = load i8, i8* %18, align 2, !dbg !333
  %20 = sext i8 %19 to i32, !dbg !333
  %21 = bitcast %union.anon.3* %3 to [2 x i8]*, !dbg !334
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 1, !dbg !335
  %23 = load i8, i8* %22, align 1, !dbg !336
  %24 = sext i8 %23 to i32, !dbg !336
  %25 = xor i32 %24, %20, !dbg !336
  %26 = trunc i32 %25 to i8, !dbg !336
  store i8 %26, i8* %22, align 1, !dbg !336
  %27 = bitcast %union.anon.3* %3 to [2 x i8]*, !dbg !337
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %27, i64 0, i64 1, !dbg !338
  %29 = load i8, i8* %28, align 1, !dbg !338
  %30 = sext i8 %29 to i32, !dbg !338
  %31 = bitcast %union.anon.3* %3 to [2 x i8]*, !dbg !339
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %31, i64 0, i64 0, !dbg !340
  %33 = load i8, i8* %32, align 2, !dbg !341
  %34 = sext i8 %33 to i32, !dbg !341
  %35 = xor i32 %34, %30, !dbg !341
  %36 = trunc i32 %35 to i8, !dbg !341
  store i8 %36, i8* %32, align 2, !dbg !341
  %37 = bitcast %union.anon.3* %3 to i16*, !dbg !342
  %38 = load i16, i16* %37, align 2, !dbg !342
  %39 = load i16*, i16** %2, align 8, !dbg !343
  store i16 %38, i16* %39, align 2, !dbg !344
  %40 = load i16*, i16** %2, align 8, !dbg !345
  %41 = load i16, i16* %40, align 2, !dbg !346
  ret i16 %41, !dbg !347
}

; Function Attrs: nounwind uwtable
define zeroext i16 @Mat_uint16Swap(i16*) #0 !dbg !348 {
  %2 = alloca i16*, align 8
  %3 = alloca %union.anon.4, align 2
  store i16* %0, i16** %2, align 8
  call void @llvm.dbg.declare(metadata i16** %2, metadata !355, metadata !17), !dbg !356
  call void @llvm.dbg.declare(metadata %union.anon.4* %3, metadata !357, metadata !17), !dbg !363
  %4 = load i16*, i16** %2, align 8, !dbg !364
  %5 = load i16, i16* %4, align 2, !dbg !365
  %6 = bitcast %union.anon.4* %3 to i16*, !dbg !366
  store i16 %5, i16* %6, align 2, !dbg !367
  %7 = bitcast %union.anon.4* %3 to [2 x i8]*, !dbg !368
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1, !dbg !369
  %9 = load i8, i8* %8, align 1, !dbg !369
  %10 = zext i8 %9 to i32, !dbg !369
  %11 = bitcast %union.anon.4* %3 to [2 x i8]*, !dbg !370
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0, !dbg !371
  %13 = load i8, i8* %12, align 2, !dbg !372
  %14 = zext i8 %13 to i32, !dbg !372
  %15 = xor i32 %14, %10, !dbg !372
  %16 = trunc i32 %15 to i8, !dbg !372
  store i8 %16, i8* %12, align 2, !dbg !372
  %17 = bitcast %union.anon.4* %3 to [2 x i8]*, !dbg !373
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0, !dbg !374
  %19 = load i8, i8* %18, align 2, !dbg !374
  %20 = zext i8 %19 to i32, !dbg !374
  %21 = bitcast %union.anon.4* %3 to [2 x i8]*, !dbg !375
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 1, !dbg !376
  %23 = load i8, i8* %22, align 1, !dbg !377
  %24 = zext i8 %23 to i32, !dbg !377
  %25 = xor i32 %24, %20, !dbg !377
  %26 = trunc i32 %25 to i8, !dbg !377
  store i8 %26, i8* %22, align 1, !dbg !377
  %27 = bitcast %union.anon.4* %3 to [2 x i8]*, !dbg !378
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %27, i64 0, i64 1, !dbg !379
  %29 = load i8, i8* %28, align 1, !dbg !379
  %30 = zext i8 %29 to i32, !dbg !379
  %31 = bitcast %union.anon.4* %3 to [2 x i8]*, !dbg !380
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %31, i64 0, i64 0, !dbg !381
  %33 = load i8, i8* %32, align 2, !dbg !382
  %34 = zext i8 %33 to i32, !dbg !382
  %35 = xor i32 %34, %30, !dbg !382
  %36 = trunc i32 %35 to i8, !dbg !382
  store i8 %36, i8* %32, align 2, !dbg !382
  %37 = bitcast %union.anon.4* %3 to i16*, !dbg !383
  %38 = load i16, i16* %37, align 2, !dbg !383
  %39 = load i16*, i16** %2, align 8, !dbg !384
  store i16 %38, i16* %39, align 2, !dbg !385
  %40 = load i16*, i16** %2, align 8, !dbg !386
  %41 = load i16, i16* %40, align 2, !dbg !387
  ret i16 %41, !dbg !388
}

; Function Attrs: nounwind uwtable
define float @Mat_floatSwap(float*) #0 !dbg !389 {
  %2 = alloca float*, align 8
  %3 = alloca %union.anon.5, align 4
  store float* %0, float** %2, align 8
  call void @llvm.dbg.declare(metadata float** %2, metadata !394, metadata !17), !dbg !395
  call void @llvm.dbg.declare(metadata %union.anon.5* %3, metadata !396, metadata !17), !dbg !403
  %4 = load float*, float** %2, align 8, !dbg !404
  %5 = load float, float* %4, align 4, !dbg !405
  %6 = bitcast %union.anon.5* %3 to float*, !dbg !406
  store float %5, float* %6, align 4, !dbg !407
  %7 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !408
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3, !dbg !409
  %9 = load i8, i8* %8, align 1, !dbg !409
  %10 = sext i8 %9 to i32, !dbg !409
  %11 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !410
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0, !dbg !411
  %13 = load i8, i8* %12, align 4, !dbg !412
  %14 = sext i8 %13 to i32, !dbg !412
  %15 = xor i32 %14, %10, !dbg !412
  %16 = trunc i32 %15 to i8, !dbg !412
  store i8 %16, i8* %12, align 4, !dbg !412
  %17 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !413
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0, !dbg !414
  %19 = load i8, i8* %18, align 4, !dbg !414
  %20 = sext i8 %19 to i32, !dbg !414
  %21 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !415
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 3, !dbg !416
  %23 = load i8, i8* %22, align 1, !dbg !417
  %24 = sext i8 %23 to i32, !dbg !417
  %25 = xor i32 %24, %20, !dbg !417
  %26 = trunc i32 %25 to i8, !dbg !417
  store i8 %26, i8* %22, align 1, !dbg !417
  %27 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !418
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i64 0, i64 3, !dbg !419
  %29 = load i8, i8* %28, align 1, !dbg !419
  %30 = sext i8 %29 to i32, !dbg !419
  %31 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !420
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 0, !dbg !421
  %33 = load i8, i8* %32, align 4, !dbg !422
  %34 = sext i8 %33 to i32, !dbg !422
  %35 = xor i32 %34, %30, !dbg !422
  %36 = trunc i32 %35 to i8, !dbg !422
  store i8 %36, i8* %32, align 4, !dbg !422
  %37 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !423
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i64 0, i64 2, !dbg !424
  %39 = load i8, i8* %38, align 2, !dbg !424
  %40 = sext i8 %39 to i32, !dbg !424
  %41 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !425
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %41, i64 0, i64 1, !dbg !426
  %43 = load i8, i8* %42, align 1, !dbg !427
  %44 = sext i8 %43 to i32, !dbg !427
  %45 = xor i32 %44, %40, !dbg !427
  %46 = trunc i32 %45 to i8, !dbg !427
  store i8 %46, i8* %42, align 1, !dbg !427
  %47 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !428
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %47, i64 0, i64 1, !dbg !429
  %49 = load i8, i8* %48, align 1, !dbg !429
  %50 = sext i8 %49 to i32, !dbg !429
  %51 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !430
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %51, i64 0, i64 2, !dbg !431
  %53 = load i8, i8* %52, align 2, !dbg !432
  %54 = sext i8 %53 to i32, !dbg !432
  %55 = xor i32 %54, %50, !dbg !432
  %56 = trunc i32 %55 to i8, !dbg !432
  store i8 %56, i8* %52, align 2, !dbg !432
  %57 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !433
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %57, i64 0, i64 2, !dbg !434
  %59 = load i8, i8* %58, align 2, !dbg !434
  %60 = sext i8 %59 to i32, !dbg !434
  %61 = bitcast %union.anon.5* %3 to [4 x i8]*, !dbg !435
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %61, i64 0, i64 1, !dbg !436
  %63 = load i8, i8* %62, align 1, !dbg !437
  %64 = sext i8 %63 to i32, !dbg !437
  %65 = xor i32 %64, %60, !dbg !437
  %66 = trunc i32 %65 to i8, !dbg !437
  store i8 %66, i8* %62, align 1, !dbg !437
  %67 = bitcast %union.anon.5* %3 to float*, !dbg !438
  %68 = load float, float* %67, align 4, !dbg !438
  %69 = load float*, float** %2, align 8, !dbg !439
  store float %68, float* %69, align 4, !dbg !440
  %70 = load float*, float** %2, align 8, !dbg !441
  %71 = load float, float* %70, align 4, !dbg !442
  ret float %71, !dbg !443
}

; Function Attrs: nounwind uwtable
define double @Mat_doubleSwap(double*) #0 !dbg !444 {
  %2 = alloca double*, align 8
  %3 = alloca %union.anon.6, align 8
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !449, metadata !17), !dbg !450
  call void @llvm.dbg.declare(metadata %union.anon.6* %3, metadata !451, metadata !17), !dbg !457
  %4 = load double*, double** %2, align 8, !dbg !458
  %5 = load double, double* %4, align 8, !dbg !459
  %6 = bitcast %union.anon.6* %3 to double*, !dbg !460
  store double %5, double* %6, align 8, !dbg !461
  %7 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !462
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 7, !dbg !463
  %9 = load i8, i8* %8, align 1, !dbg !463
  %10 = sext i8 %9 to i32, !dbg !463
  %11 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !464
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0, !dbg !465
  %13 = load i8, i8* %12, align 8, !dbg !466
  %14 = sext i8 %13 to i32, !dbg !466
  %15 = xor i32 %14, %10, !dbg !466
  %16 = trunc i32 %15 to i8, !dbg !466
  store i8 %16, i8* %12, align 8, !dbg !466
  %17 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !467
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !468
  %19 = load i8, i8* %18, align 8, !dbg !468
  %20 = sext i8 %19 to i32, !dbg !468
  %21 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !469
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 7, !dbg !470
  %23 = load i8, i8* %22, align 1, !dbg !471
  %24 = sext i8 %23 to i32, !dbg !471
  %25 = xor i32 %24, %20, !dbg !471
  %26 = trunc i32 %25 to i8, !dbg !471
  store i8 %26, i8* %22, align 1, !dbg !471
  %27 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !472
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 7, !dbg !473
  %29 = load i8, i8* %28, align 1, !dbg !473
  %30 = sext i8 %29 to i32, !dbg !473
  %31 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !474
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %31, i64 0, i64 0, !dbg !475
  %33 = load i8, i8* %32, align 8, !dbg !476
  %34 = sext i8 %33 to i32, !dbg !476
  %35 = xor i32 %34, %30, !dbg !476
  %36 = trunc i32 %35 to i8, !dbg !476
  store i8 %36, i8* %32, align 8, !dbg !476
  %37 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !477
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 6, !dbg !478
  %39 = load i8, i8* %38, align 2, !dbg !478
  %40 = sext i8 %39 to i32, !dbg !478
  %41 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !479
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %41, i64 0, i64 1, !dbg !480
  %43 = load i8, i8* %42, align 1, !dbg !481
  %44 = sext i8 %43 to i32, !dbg !481
  %45 = xor i32 %44, %40, !dbg !481
  %46 = trunc i32 %45 to i8, !dbg !481
  store i8 %46, i8* %42, align 1, !dbg !481
  %47 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !482
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i64 0, i64 1, !dbg !483
  %49 = load i8, i8* %48, align 1, !dbg !483
  %50 = sext i8 %49 to i32, !dbg !483
  %51 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !484
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %51, i64 0, i64 6, !dbg !485
  %53 = load i8, i8* %52, align 2, !dbg !486
  %54 = sext i8 %53 to i32, !dbg !486
  %55 = xor i32 %54, %50, !dbg !486
  %56 = trunc i32 %55 to i8, !dbg !486
  store i8 %56, i8* %52, align 2, !dbg !486
  %57 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !487
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %57, i64 0, i64 6, !dbg !488
  %59 = load i8, i8* %58, align 2, !dbg !488
  %60 = sext i8 %59 to i32, !dbg !488
  %61 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !489
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %61, i64 0, i64 1, !dbg !490
  %63 = load i8, i8* %62, align 1, !dbg !491
  %64 = sext i8 %63 to i32, !dbg !491
  %65 = xor i32 %64, %60, !dbg !491
  %66 = trunc i32 %65 to i8, !dbg !491
  store i8 %66, i8* %62, align 1, !dbg !491
  %67 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !492
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %67, i64 0, i64 5, !dbg !493
  %69 = load i8, i8* %68, align 1, !dbg !493
  %70 = sext i8 %69 to i32, !dbg !493
  %71 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !494
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %71, i64 0, i64 2, !dbg !495
  %73 = load i8, i8* %72, align 2, !dbg !496
  %74 = sext i8 %73 to i32, !dbg !496
  %75 = xor i32 %74, %70, !dbg !496
  %76 = trunc i32 %75 to i8, !dbg !496
  store i8 %76, i8* %72, align 2, !dbg !496
  %77 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !497
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %77, i64 0, i64 2, !dbg !498
  %79 = load i8, i8* %78, align 2, !dbg !498
  %80 = sext i8 %79 to i32, !dbg !498
  %81 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !499
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %81, i64 0, i64 5, !dbg !500
  %83 = load i8, i8* %82, align 1, !dbg !501
  %84 = sext i8 %83 to i32, !dbg !501
  %85 = xor i32 %84, %80, !dbg !501
  %86 = trunc i32 %85 to i8, !dbg !501
  store i8 %86, i8* %82, align 1, !dbg !501
  %87 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !502
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %87, i64 0, i64 5, !dbg !503
  %89 = load i8, i8* %88, align 1, !dbg !503
  %90 = sext i8 %89 to i32, !dbg !503
  %91 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !504
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %91, i64 0, i64 2, !dbg !505
  %93 = load i8, i8* %92, align 2, !dbg !506
  %94 = sext i8 %93 to i32, !dbg !506
  %95 = xor i32 %94, %90, !dbg !506
  %96 = trunc i32 %95 to i8, !dbg !506
  store i8 %96, i8* %92, align 2, !dbg !506
  %97 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !507
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %97, i64 0, i64 4, !dbg !508
  %99 = load i8, i8* %98, align 4, !dbg !508
  %100 = sext i8 %99 to i32, !dbg !508
  %101 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !509
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %101, i64 0, i64 3, !dbg !510
  %103 = load i8, i8* %102, align 1, !dbg !511
  %104 = sext i8 %103 to i32, !dbg !511
  %105 = xor i32 %104, %100, !dbg !511
  %106 = trunc i32 %105 to i8, !dbg !511
  store i8 %106, i8* %102, align 1, !dbg !511
  %107 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !512
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %107, i64 0, i64 3, !dbg !513
  %109 = load i8, i8* %108, align 1, !dbg !513
  %110 = sext i8 %109 to i32, !dbg !513
  %111 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !514
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %111, i64 0, i64 4, !dbg !515
  %113 = load i8, i8* %112, align 4, !dbg !516
  %114 = sext i8 %113 to i32, !dbg !516
  %115 = xor i32 %114, %110, !dbg !516
  %116 = trunc i32 %115 to i8, !dbg !516
  store i8 %116, i8* %112, align 4, !dbg !516
  %117 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !517
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %117, i64 0, i64 4, !dbg !518
  %119 = load i8, i8* %118, align 4, !dbg !518
  %120 = sext i8 %119 to i32, !dbg !518
  %121 = bitcast %union.anon.6* %3 to [8 x i8]*, !dbg !519
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %121, i64 0, i64 3, !dbg !520
  %123 = load i8, i8* %122, align 1, !dbg !521
  %124 = sext i8 %123 to i32, !dbg !521
  %125 = xor i32 %124, %120, !dbg !521
  %126 = trunc i32 %125 to i8, !dbg !521
  store i8 %126, i8* %122, align 1, !dbg !521
  %127 = bitcast %union.anon.6* %3 to double*, !dbg !522
  %128 = load double, double* %127, align 8, !dbg !522
  %129 = load double*, double** %2, align 8, !dbg !523
  store double %128, double* %129, align 8, !dbg !524
  %130 = load double*, double** %2, align 8, !dbg !525
  %131 = load double, double* %130, align 8, !dbg !526
  ret double %131, !dbg !527
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "[inter]src--.libs--endian.o.i", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "Mat_int64Swap", scope: !7, file: !7, line: 45, type: !8, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "endian.c", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_int64_t", file: !11, line: 88, baseType: !12)
!11 = !DIFile(filename: "matio_pubconf.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 197, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!14 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!16 = !DILocalVariable(name: "a", arg: 1, scope: !6, file: !7, line: 45, type: !15)
!17 = !DIExpression()
!18 = !DILocation(line: 45, column: 29, scope: !6)
!19 = !DILocalVariable(name: "tmp", scope: !6, file: !7, line: 51, type: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6, file: !7, line: 48, size: 64, align: 64, elements: !21)
!21 = !{!22, !29}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "i1", scope: !20, file: !7, line: 49, baseType: !23, size: 64, align: 8)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, align: 8, elements: !27)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_int8_t", file: !11, line: 106, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !13, line: 194, baseType: !26)
!26 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 8)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !20, file: !7, line: 50, baseType: !10, size: 64, align: 64)
!30 = !DILocation(line: 51, column: 7, scope: !6)
!31 = !DILocation(line: 53, column: 15, scope: !6)
!32 = !DILocation(line: 53, column: 14, scope: !6)
!33 = !DILocation(line: 53, column: 9, scope: !6)
!34 = !DILocation(line: 53, column: 12, scope: !6)
!35 = !DILocation(line: 55, column: 20, scope: !6)
!36 = !DILocation(line: 55, column: 16, scope: !6)
!37 = !DILocation(line: 55, column: 9, scope: !6)
!38 = !DILocation(line: 55, column: 5, scope: !6)
!39 = !DILocation(line: 55, column: 14, scope: !6)
!40 = !DILocation(line: 55, column: 41, scope: !6)
!41 = !DILocation(line: 55, column: 37, scope: !6)
!42 = !DILocation(line: 55, column: 30, scope: !6)
!43 = !DILocation(line: 55, column: 26, scope: !6)
!44 = !DILocation(line: 55, column: 35, scope: !6)
!45 = !DILocation(line: 55, column: 62, scope: !6)
!46 = !DILocation(line: 55, column: 58, scope: !6)
!47 = !DILocation(line: 55, column: 51, scope: !6)
!48 = !DILocation(line: 55, column: 47, scope: !6)
!49 = !DILocation(line: 55, column: 56, scope: !6)
!50 = !DILocation(line: 56, column: 20, scope: !6)
!51 = !DILocation(line: 56, column: 16, scope: !6)
!52 = !DILocation(line: 56, column: 9, scope: !6)
!53 = !DILocation(line: 56, column: 5, scope: !6)
!54 = !DILocation(line: 56, column: 14, scope: !6)
!55 = !DILocation(line: 56, column: 41, scope: !6)
!56 = !DILocation(line: 56, column: 37, scope: !6)
!57 = !DILocation(line: 56, column: 30, scope: !6)
!58 = !DILocation(line: 56, column: 26, scope: !6)
!59 = !DILocation(line: 56, column: 35, scope: !6)
!60 = !DILocation(line: 56, column: 62, scope: !6)
!61 = !DILocation(line: 56, column: 58, scope: !6)
!62 = !DILocation(line: 56, column: 51, scope: !6)
!63 = !DILocation(line: 56, column: 47, scope: !6)
!64 = !DILocation(line: 56, column: 56, scope: !6)
!65 = !DILocation(line: 57, column: 20, scope: !6)
!66 = !DILocation(line: 57, column: 16, scope: !6)
!67 = !DILocation(line: 57, column: 9, scope: !6)
!68 = !DILocation(line: 57, column: 5, scope: !6)
!69 = !DILocation(line: 57, column: 14, scope: !6)
!70 = !DILocation(line: 57, column: 41, scope: !6)
!71 = !DILocation(line: 57, column: 37, scope: !6)
!72 = !DILocation(line: 57, column: 30, scope: !6)
!73 = !DILocation(line: 57, column: 26, scope: !6)
!74 = !DILocation(line: 57, column: 35, scope: !6)
!75 = !DILocation(line: 57, column: 62, scope: !6)
!76 = !DILocation(line: 57, column: 58, scope: !6)
!77 = !DILocation(line: 57, column: 51, scope: !6)
!78 = !DILocation(line: 57, column: 47, scope: !6)
!79 = !DILocation(line: 57, column: 56, scope: !6)
!80 = !DILocation(line: 58, column: 20, scope: !6)
!81 = !DILocation(line: 58, column: 16, scope: !6)
!82 = !DILocation(line: 58, column: 9, scope: !6)
!83 = !DILocation(line: 58, column: 5, scope: !6)
!84 = !DILocation(line: 58, column: 14, scope: !6)
!85 = !DILocation(line: 58, column: 41, scope: !6)
!86 = !DILocation(line: 58, column: 37, scope: !6)
!87 = !DILocation(line: 58, column: 30, scope: !6)
!88 = !DILocation(line: 58, column: 26, scope: !6)
!89 = !DILocation(line: 58, column: 35, scope: !6)
!90 = !DILocation(line: 58, column: 62, scope: !6)
!91 = !DILocation(line: 58, column: 58, scope: !6)
!92 = !DILocation(line: 58, column: 51, scope: !6)
!93 = !DILocation(line: 58, column: 47, scope: !6)
!94 = !DILocation(line: 58, column: 56, scope: !6)
!95 = !DILocation(line: 60, column: 14, scope: !6)
!96 = !DILocation(line: 60, column: 6, scope: !6)
!97 = !DILocation(line: 60, column: 8, scope: !6)
!98 = !DILocation(line: 62, column: 13, scope: !6)
!99 = !DILocation(line: 62, column: 12, scope: !6)
!100 = !DILocation(line: 62, column: 5, scope: !6)
!101 = distinct !DISubprogram(name: "Mat_uint64Swap", scope: !7, file: !7, line: 73, type: !102, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !108}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_uint64_t", file: !11, line: 91, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !106, line: 55, baseType: !107)
!106 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/matio/[lib]src--.libs--libmatio.so.9.1.0")
!107 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!109 = !DILocalVariable(name: "a", arg: 1, scope: !101, file: !7, line: 73, type: !108)
!110 = !DILocation(line: 73, column: 31, scope: !101)
!111 = !DILocalVariable(name: "tmp", scope: !101, file: !7, line: 79, type: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !7, line: 76, size: 64, align: 64, elements: !113)
!113 = !{!114, !119}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i1", scope: !112, file: !7, line: 77, baseType: !115, size: 64, align: 8)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, align: 8, elements: !27)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_uint8_t", file: !11, line: 109, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !106, line: 48, baseType: !118)
!118 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i8", scope: !112, file: !7, line: 78, baseType: !104, size: 64, align: 64)
!120 = !DILocation(line: 79, column: 7, scope: !101)
!121 = !DILocation(line: 81, column: 15, scope: !101)
!122 = !DILocation(line: 81, column: 14, scope: !101)
!123 = !DILocation(line: 81, column: 9, scope: !101)
!124 = !DILocation(line: 81, column: 12, scope: !101)
!125 = !DILocation(line: 83, column: 20, scope: !101)
!126 = !DILocation(line: 83, column: 16, scope: !101)
!127 = !DILocation(line: 83, column: 9, scope: !101)
!128 = !DILocation(line: 83, column: 5, scope: !101)
!129 = !DILocation(line: 83, column: 14, scope: !101)
!130 = !DILocation(line: 83, column: 41, scope: !101)
!131 = !DILocation(line: 83, column: 37, scope: !101)
!132 = !DILocation(line: 83, column: 30, scope: !101)
!133 = !DILocation(line: 83, column: 26, scope: !101)
!134 = !DILocation(line: 83, column: 35, scope: !101)
!135 = !DILocation(line: 83, column: 62, scope: !101)
!136 = !DILocation(line: 83, column: 58, scope: !101)
!137 = !DILocation(line: 83, column: 51, scope: !101)
!138 = !DILocation(line: 83, column: 47, scope: !101)
!139 = !DILocation(line: 83, column: 56, scope: !101)
!140 = !DILocation(line: 84, column: 20, scope: !101)
!141 = !DILocation(line: 84, column: 16, scope: !101)
!142 = !DILocation(line: 84, column: 9, scope: !101)
!143 = !DILocation(line: 84, column: 5, scope: !101)
!144 = !DILocation(line: 84, column: 14, scope: !101)
!145 = !DILocation(line: 84, column: 41, scope: !101)
!146 = !DILocation(line: 84, column: 37, scope: !101)
!147 = !DILocation(line: 84, column: 30, scope: !101)
!148 = !DILocation(line: 84, column: 26, scope: !101)
!149 = !DILocation(line: 84, column: 35, scope: !101)
!150 = !DILocation(line: 84, column: 62, scope: !101)
!151 = !DILocation(line: 84, column: 58, scope: !101)
!152 = !DILocation(line: 84, column: 51, scope: !101)
!153 = !DILocation(line: 84, column: 47, scope: !101)
!154 = !DILocation(line: 84, column: 56, scope: !101)
!155 = !DILocation(line: 85, column: 20, scope: !101)
!156 = !DILocation(line: 85, column: 16, scope: !101)
!157 = !DILocation(line: 85, column: 9, scope: !101)
!158 = !DILocation(line: 85, column: 5, scope: !101)
!159 = !DILocation(line: 85, column: 14, scope: !101)
!160 = !DILocation(line: 85, column: 41, scope: !101)
!161 = !DILocation(line: 85, column: 37, scope: !101)
!162 = !DILocation(line: 85, column: 30, scope: !101)
!163 = !DILocation(line: 85, column: 26, scope: !101)
!164 = !DILocation(line: 85, column: 35, scope: !101)
!165 = !DILocation(line: 85, column: 62, scope: !101)
!166 = !DILocation(line: 85, column: 58, scope: !101)
!167 = !DILocation(line: 85, column: 51, scope: !101)
!168 = !DILocation(line: 85, column: 47, scope: !101)
!169 = !DILocation(line: 85, column: 56, scope: !101)
!170 = !DILocation(line: 86, column: 20, scope: !101)
!171 = !DILocation(line: 86, column: 16, scope: !101)
!172 = !DILocation(line: 86, column: 9, scope: !101)
!173 = !DILocation(line: 86, column: 5, scope: !101)
!174 = !DILocation(line: 86, column: 14, scope: !101)
!175 = !DILocation(line: 86, column: 41, scope: !101)
!176 = !DILocation(line: 86, column: 37, scope: !101)
!177 = !DILocation(line: 86, column: 30, scope: !101)
!178 = !DILocation(line: 86, column: 26, scope: !101)
!179 = !DILocation(line: 86, column: 35, scope: !101)
!180 = !DILocation(line: 86, column: 62, scope: !101)
!181 = !DILocation(line: 86, column: 58, scope: !101)
!182 = !DILocation(line: 86, column: 51, scope: !101)
!183 = !DILocation(line: 86, column: 47, scope: !101)
!184 = !DILocation(line: 86, column: 56, scope: !101)
!185 = !DILocation(line: 88, column: 14, scope: !101)
!186 = !DILocation(line: 88, column: 6, scope: !101)
!187 = !DILocation(line: 88, column: 8, scope: !101)
!188 = !DILocation(line: 90, column: 13, scope: !101)
!189 = !DILocation(line: 90, column: 12, scope: !101)
!190 = !DILocation(line: 90, column: 5, scope: !101)
!191 = distinct !DISubprogram(name: "Mat_int32Swap", scope: !7, file: !7, line: 100, type: !192, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !197}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_int32_t", file: !11, line: 94, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 196, baseType: !196)
!196 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!198 = !DILocalVariable(name: "a", arg: 1, scope: !191, file: !7, line: 100, type: !197)
!199 = !DILocation(line: 100, column: 29, scope: !191)
!200 = !DILocalVariable(name: "tmp", scope: !191, file: !7, line: 106, type: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !7, line: 103, size: 32, align: 32, elements: !202)
!202 = !{!203, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i1", scope: !201, file: !7, line: 104, baseType: !204, size: 32, align: 8)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32, align: 8, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 4)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i4", scope: !201, file: !7, line: 105, baseType: !194, size: 32, align: 32)
!208 = !DILocation(line: 106, column: 7, scope: !191)
!209 = !DILocation(line: 108, column: 15, scope: !191)
!210 = !DILocation(line: 108, column: 14, scope: !191)
!211 = !DILocation(line: 108, column: 9, scope: !191)
!212 = !DILocation(line: 108, column: 12, scope: !191)
!213 = !DILocation(line: 110, column: 20, scope: !191)
!214 = !DILocation(line: 110, column: 16, scope: !191)
!215 = !DILocation(line: 110, column: 9, scope: !191)
!216 = !DILocation(line: 110, column: 5, scope: !191)
!217 = !DILocation(line: 110, column: 14, scope: !191)
!218 = !DILocation(line: 110, column: 41, scope: !191)
!219 = !DILocation(line: 110, column: 37, scope: !191)
!220 = !DILocation(line: 110, column: 30, scope: !191)
!221 = !DILocation(line: 110, column: 26, scope: !191)
!222 = !DILocation(line: 110, column: 35, scope: !191)
!223 = !DILocation(line: 110, column: 62, scope: !191)
!224 = !DILocation(line: 110, column: 58, scope: !191)
!225 = !DILocation(line: 110, column: 51, scope: !191)
!226 = !DILocation(line: 110, column: 47, scope: !191)
!227 = !DILocation(line: 110, column: 56, scope: !191)
!228 = !DILocation(line: 111, column: 20, scope: !191)
!229 = !DILocation(line: 111, column: 16, scope: !191)
!230 = !DILocation(line: 111, column: 9, scope: !191)
!231 = !DILocation(line: 111, column: 5, scope: !191)
!232 = !DILocation(line: 111, column: 14, scope: !191)
!233 = !DILocation(line: 111, column: 41, scope: !191)
!234 = !DILocation(line: 111, column: 37, scope: !191)
!235 = !DILocation(line: 111, column: 30, scope: !191)
!236 = !DILocation(line: 111, column: 26, scope: !191)
!237 = !DILocation(line: 111, column: 35, scope: !191)
!238 = !DILocation(line: 111, column: 62, scope: !191)
!239 = !DILocation(line: 111, column: 58, scope: !191)
!240 = !DILocation(line: 111, column: 51, scope: !191)
!241 = !DILocation(line: 111, column: 47, scope: !191)
!242 = !DILocation(line: 111, column: 56, scope: !191)
!243 = !DILocation(line: 113, column: 14, scope: !191)
!244 = !DILocation(line: 113, column: 6, scope: !191)
!245 = !DILocation(line: 113, column: 8, scope: !191)
!246 = !DILocation(line: 115, column: 13, scope: !191)
!247 = !DILocation(line: 115, column: 12, scope: !191)
!248 = !DILocation(line: 115, column: 5, scope: !191)
!249 = distinct !DISubprogram(name: "Mat_uint32Swap", scope: !7, file: !7, line: 124, type: !250, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !255}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_uint32_t", file: !11, line: 97, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 51, baseType: !254)
!254 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!256 = !DILocalVariable(name: "a", arg: 1, scope: !249, file: !7, line: 124, type: !255)
!257 = !DILocation(line: 124, column: 31, scope: !249)
!258 = !DILocalVariable(name: "tmp", scope: !249, file: !7, line: 130, type: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !7, line: 127, size: 32, align: 32, elements: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i1", scope: !259, file: !7, line: 128, baseType: !262, size: 32, align: 8)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 32, align: 8, elements: !205)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i4", scope: !259, file: !7, line: 129, baseType: !252, size: 32, align: 32)
!264 = !DILocation(line: 130, column: 7, scope: !249)
!265 = !DILocation(line: 132, column: 15, scope: !249)
!266 = !DILocation(line: 132, column: 14, scope: !249)
!267 = !DILocation(line: 132, column: 9, scope: !249)
!268 = !DILocation(line: 132, column: 12, scope: !249)
!269 = !DILocation(line: 134, column: 20, scope: !249)
!270 = !DILocation(line: 134, column: 16, scope: !249)
!271 = !DILocation(line: 134, column: 9, scope: !249)
!272 = !DILocation(line: 134, column: 5, scope: !249)
!273 = !DILocation(line: 134, column: 14, scope: !249)
!274 = !DILocation(line: 134, column: 41, scope: !249)
!275 = !DILocation(line: 134, column: 37, scope: !249)
!276 = !DILocation(line: 134, column: 30, scope: !249)
!277 = !DILocation(line: 134, column: 26, scope: !249)
!278 = !DILocation(line: 134, column: 35, scope: !249)
!279 = !DILocation(line: 134, column: 62, scope: !249)
!280 = !DILocation(line: 134, column: 58, scope: !249)
!281 = !DILocation(line: 134, column: 51, scope: !249)
!282 = !DILocation(line: 134, column: 47, scope: !249)
!283 = !DILocation(line: 134, column: 56, scope: !249)
!284 = !DILocation(line: 135, column: 20, scope: !249)
!285 = !DILocation(line: 135, column: 16, scope: !249)
!286 = !DILocation(line: 135, column: 9, scope: !249)
!287 = !DILocation(line: 135, column: 5, scope: !249)
!288 = !DILocation(line: 135, column: 14, scope: !249)
!289 = !DILocation(line: 135, column: 41, scope: !249)
!290 = !DILocation(line: 135, column: 37, scope: !249)
!291 = !DILocation(line: 135, column: 30, scope: !249)
!292 = !DILocation(line: 135, column: 26, scope: !249)
!293 = !DILocation(line: 135, column: 35, scope: !249)
!294 = !DILocation(line: 135, column: 62, scope: !249)
!295 = !DILocation(line: 135, column: 58, scope: !249)
!296 = !DILocation(line: 135, column: 51, scope: !249)
!297 = !DILocation(line: 135, column: 47, scope: !249)
!298 = !DILocation(line: 135, column: 56, scope: !249)
!299 = !DILocation(line: 137, column: 14, scope: !249)
!300 = !DILocation(line: 137, column: 6, scope: !249)
!301 = !DILocation(line: 137, column: 8, scope: !249)
!302 = !DILocation(line: 139, column: 13, scope: !249)
!303 = !DILocation(line: 139, column: 12, scope: !249)
!304 = !DILocation(line: 139, column: 5, scope: !249)
!305 = distinct !DISubprogram(name: "Mat_int16Swap", scope: !7, file: !7, line: 148, type: !306, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !311}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_int16_t", file: !11, line: 100, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !13, line: 195, baseType: !310)
!310 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!312 = !DILocalVariable(name: "a", arg: 1, scope: !305, file: !7, line: 148, type: !311)
!313 = !DILocation(line: 148, column: 29, scope: !305)
!314 = !DILocalVariable(name: "tmp", scope: !305, file: !7, line: 154, type: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !7, line: 151, size: 16, align: 16, elements: !316)
!316 = !{!317, !321}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i1", scope: !315, file: !7, line: 152, baseType: !318, size: 16, align: 8)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 16, align: 8, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 2)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i2", scope: !315, file: !7, line: 153, baseType: !308, size: 16, align: 16)
!322 = !DILocation(line: 154, column: 7, scope: !305)
!323 = !DILocation(line: 156, column: 15, scope: !305)
!324 = !DILocation(line: 156, column: 14, scope: !305)
!325 = !DILocation(line: 156, column: 9, scope: !305)
!326 = !DILocation(line: 156, column: 12, scope: !305)
!327 = !DILocation(line: 158, column: 20, scope: !305)
!328 = !DILocation(line: 158, column: 16, scope: !305)
!329 = !DILocation(line: 158, column: 9, scope: !305)
!330 = !DILocation(line: 158, column: 5, scope: !305)
!331 = !DILocation(line: 158, column: 14, scope: !305)
!332 = !DILocation(line: 158, column: 41, scope: !305)
!333 = !DILocation(line: 158, column: 37, scope: !305)
!334 = !DILocation(line: 158, column: 30, scope: !305)
!335 = !DILocation(line: 158, column: 26, scope: !305)
!336 = !DILocation(line: 158, column: 35, scope: !305)
!337 = !DILocation(line: 158, column: 62, scope: !305)
!338 = !DILocation(line: 158, column: 58, scope: !305)
!339 = !DILocation(line: 158, column: 51, scope: !305)
!340 = !DILocation(line: 158, column: 47, scope: !305)
!341 = !DILocation(line: 158, column: 56, scope: !305)
!342 = !DILocation(line: 160, column: 14, scope: !305)
!343 = !DILocation(line: 160, column: 6, scope: !305)
!344 = !DILocation(line: 160, column: 8, scope: !305)
!345 = !DILocation(line: 161, column: 13, scope: !305)
!346 = !DILocation(line: 161, column: 12, scope: !305)
!347 = !DILocation(line: 161, column: 5, scope: !305)
!348 = distinct !DISubprogram(name: "Mat_uint16Swap", scope: !7, file: !7, line: 170, type: !349, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !354}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_uint16_t", file: !11, line: 103, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !106, line: 49, baseType: !353)
!353 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!355 = !DILocalVariable(name: "a", arg: 1, scope: !348, file: !7, line: 170, type: !354)
!356 = !DILocation(line: 170, column: 31, scope: !348)
!357 = !DILocalVariable(name: "tmp", scope: !348, file: !7, line: 176, type: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !7, line: 173, size: 16, align: 16, elements: !359)
!359 = !{!360, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i1", scope: !358, file: !7, line: 174, baseType: !361, size: 16, align: 8)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, align: 8, elements: !319)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i2", scope: !358, file: !7, line: 175, baseType: !351, size: 16, align: 16)
!363 = !DILocation(line: 176, column: 7, scope: !348)
!364 = !DILocation(line: 178, column: 15, scope: !348)
!365 = !DILocation(line: 178, column: 14, scope: !348)
!366 = !DILocation(line: 178, column: 9, scope: !348)
!367 = !DILocation(line: 178, column: 12, scope: !348)
!368 = !DILocation(line: 180, column: 20, scope: !348)
!369 = !DILocation(line: 180, column: 16, scope: !348)
!370 = !DILocation(line: 180, column: 9, scope: !348)
!371 = !DILocation(line: 180, column: 5, scope: !348)
!372 = !DILocation(line: 180, column: 14, scope: !348)
!373 = !DILocation(line: 180, column: 41, scope: !348)
!374 = !DILocation(line: 180, column: 37, scope: !348)
!375 = !DILocation(line: 180, column: 30, scope: !348)
!376 = !DILocation(line: 180, column: 26, scope: !348)
!377 = !DILocation(line: 180, column: 35, scope: !348)
!378 = !DILocation(line: 180, column: 62, scope: !348)
!379 = !DILocation(line: 180, column: 58, scope: !348)
!380 = !DILocation(line: 180, column: 51, scope: !348)
!381 = !DILocation(line: 180, column: 47, scope: !348)
!382 = !DILocation(line: 180, column: 56, scope: !348)
!383 = !DILocation(line: 182, column: 14, scope: !348)
!384 = !DILocation(line: 182, column: 6, scope: !348)
!385 = !DILocation(line: 182, column: 8, scope: !348)
!386 = !DILocation(line: 183, column: 13, scope: !348)
!387 = !DILocation(line: 183, column: 12, scope: !348)
!388 = !DILocation(line: 183, column: 5, scope: !348)
!389 = distinct !DISubprogram(name: "Mat_floatSwap", scope: !7, file: !7, line: 192, type: !390, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !393}
!392 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!394 = !DILocalVariable(name: "a", arg: 1, scope: !389, file: !7, line: 192, type: !393)
!395 = !DILocation(line: 192, column: 23, scope: !389)
!396 = !DILocalVariable(name: "tmp", scope: !389, file: !7, line: 198, type: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !7, line: 195, size: 32, align: 32, elements: !398)
!398 = !{!399, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i1", scope: !397, file: !7, line: 196, baseType: !400, size: 32, align: 8)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 32, align: 8, elements: !205)
!401 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !397, file: !7, line: 197, baseType: !392, size: 32, align: 32)
!403 = !DILocation(line: 198, column: 7, scope: !389)
!404 = !DILocation(line: 200, column: 15, scope: !389)
!405 = !DILocation(line: 200, column: 14, scope: !389)
!406 = !DILocation(line: 200, column: 9, scope: !389)
!407 = !DILocation(line: 200, column: 12, scope: !389)
!408 = !DILocation(line: 202, column: 20, scope: !389)
!409 = !DILocation(line: 202, column: 16, scope: !389)
!410 = !DILocation(line: 202, column: 9, scope: !389)
!411 = !DILocation(line: 202, column: 5, scope: !389)
!412 = !DILocation(line: 202, column: 14, scope: !389)
!413 = !DILocation(line: 202, column: 41, scope: !389)
!414 = !DILocation(line: 202, column: 37, scope: !389)
!415 = !DILocation(line: 202, column: 30, scope: !389)
!416 = !DILocation(line: 202, column: 26, scope: !389)
!417 = !DILocation(line: 202, column: 35, scope: !389)
!418 = !DILocation(line: 202, column: 62, scope: !389)
!419 = !DILocation(line: 202, column: 58, scope: !389)
!420 = !DILocation(line: 202, column: 51, scope: !389)
!421 = !DILocation(line: 202, column: 47, scope: !389)
!422 = !DILocation(line: 202, column: 56, scope: !389)
!423 = !DILocation(line: 203, column: 20, scope: !389)
!424 = !DILocation(line: 203, column: 16, scope: !389)
!425 = !DILocation(line: 203, column: 9, scope: !389)
!426 = !DILocation(line: 203, column: 5, scope: !389)
!427 = !DILocation(line: 203, column: 14, scope: !389)
!428 = !DILocation(line: 203, column: 41, scope: !389)
!429 = !DILocation(line: 203, column: 37, scope: !389)
!430 = !DILocation(line: 203, column: 30, scope: !389)
!431 = !DILocation(line: 203, column: 26, scope: !389)
!432 = !DILocation(line: 203, column: 35, scope: !389)
!433 = !DILocation(line: 203, column: 62, scope: !389)
!434 = !DILocation(line: 203, column: 58, scope: !389)
!435 = !DILocation(line: 203, column: 51, scope: !389)
!436 = !DILocation(line: 203, column: 47, scope: !389)
!437 = !DILocation(line: 203, column: 56, scope: !389)
!438 = !DILocation(line: 205, column: 14, scope: !389)
!439 = !DILocation(line: 205, column: 6, scope: !389)
!440 = !DILocation(line: 205, column: 8, scope: !389)
!441 = !DILocation(line: 206, column: 13, scope: !389)
!442 = !DILocation(line: 206, column: 12, scope: !389)
!443 = !DILocation(line: 206, column: 5, scope: !389)
!444 = distinct !DISubprogram(name: "Mat_doubleSwap", scope: !7, file: !7, line: 215, type: !445, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!445 = !DISubroutineType(types: !446)
!446 = !{!447, !448}
!447 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!449 = !DILocalVariable(name: "a", arg: 1, scope: !444, file: !7, line: 215, type: !448)
!450 = !DILocation(line: 215, column: 25, scope: !444)
!451 = !DILocalVariable(name: "tmp", scope: !444, file: !7, line: 224, type: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !7, line: 221, size: 64, align: 64, elements: !453)
!453 = !{!454, !456}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !452, file: !7, line: 222, baseType: !455, size: 64, align: 8)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 64, align: 8, elements: !27)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !452, file: !7, line: 223, baseType: !447, size: 64, align: 64)
!457 = !DILocation(line: 224, column: 7, scope: !444)
!458 = !DILocation(line: 226, column: 14, scope: !444)
!459 = !DILocation(line: 226, column: 13, scope: !444)
!460 = !DILocation(line: 226, column: 9, scope: !444)
!461 = !DILocation(line: 226, column: 11, scope: !444)
!462 = !DILocation(line: 232, column: 19, scope: !444)
!463 = !DILocation(line: 232, column: 15, scope: !444)
!464 = !DILocation(line: 232, column: 9, scope: !444)
!465 = !DILocation(line: 232, column: 5, scope: !444)
!466 = !DILocation(line: 232, column: 13, scope: !444)
!467 = !DILocation(line: 232, column: 38, scope: !444)
!468 = !DILocation(line: 232, column: 34, scope: !444)
!469 = !DILocation(line: 232, column: 28, scope: !444)
!470 = !DILocation(line: 232, column: 24, scope: !444)
!471 = !DILocation(line: 232, column: 32, scope: !444)
!472 = !DILocation(line: 232, column: 57, scope: !444)
!473 = !DILocation(line: 232, column: 53, scope: !444)
!474 = !DILocation(line: 232, column: 47, scope: !444)
!475 = !DILocation(line: 232, column: 43, scope: !444)
!476 = !DILocation(line: 232, column: 51, scope: !444)
!477 = !DILocation(line: 233, column: 19, scope: !444)
!478 = !DILocation(line: 233, column: 15, scope: !444)
!479 = !DILocation(line: 233, column: 9, scope: !444)
!480 = !DILocation(line: 233, column: 5, scope: !444)
!481 = !DILocation(line: 233, column: 13, scope: !444)
!482 = !DILocation(line: 233, column: 38, scope: !444)
!483 = !DILocation(line: 233, column: 34, scope: !444)
!484 = !DILocation(line: 233, column: 28, scope: !444)
!485 = !DILocation(line: 233, column: 24, scope: !444)
!486 = !DILocation(line: 233, column: 32, scope: !444)
!487 = !DILocation(line: 233, column: 57, scope: !444)
!488 = !DILocation(line: 233, column: 53, scope: !444)
!489 = !DILocation(line: 233, column: 47, scope: !444)
!490 = !DILocation(line: 233, column: 43, scope: !444)
!491 = !DILocation(line: 233, column: 51, scope: !444)
!492 = !DILocation(line: 234, column: 19, scope: !444)
!493 = !DILocation(line: 234, column: 15, scope: !444)
!494 = !DILocation(line: 234, column: 9, scope: !444)
!495 = !DILocation(line: 234, column: 5, scope: !444)
!496 = !DILocation(line: 234, column: 13, scope: !444)
!497 = !DILocation(line: 234, column: 38, scope: !444)
!498 = !DILocation(line: 234, column: 34, scope: !444)
!499 = !DILocation(line: 234, column: 28, scope: !444)
!500 = !DILocation(line: 234, column: 24, scope: !444)
!501 = !DILocation(line: 234, column: 32, scope: !444)
!502 = !DILocation(line: 234, column: 57, scope: !444)
!503 = !DILocation(line: 234, column: 53, scope: !444)
!504 = !DILocation(line: 234, column: 47, scope: !444)
!505 = !DILocation(line: 234, column: 43, scope: !444)
!506 = !DILocation(line: 234, column: 51, scope: !444)
!507 = !DILocation(line: 235, column: 19, scope: !444)
!508 = !DILocation(line: 235, column: 15, scope: !444)
!509 = !DILocation(line: 235, column: 9, scope: !444)
!510 = !DILocation(line: 235, column: 5, scope: !444)
!511 = !DILocation(line: 235, column: 13, scope: !444)
!512 = !DILocation(line: 235, column: 38, scope: !444)
!513 = !DILocation(line: 235, column: 34, scope: !444)
!514 = !DILocation(line: 235, column: 28, scope: !444)
!515 = !DILocation(line: 235, column: 24, scope: !444)
!516 = !DILocation(line: 235, column: 32, scope: !444)
!517 = !DILocation(line: 235, column: 57, scope: !444)
!518 = !DILocation(line: 235, column: 53, scope: !444)
!519 = !DILocation(line: 235, column: 47, scope: !444)
!520 = !DILocation(line: 235, column: 43, scope: !444)
!521 = !DILocation(line: 235, column: 51, scope: !444)
!522 = !DILocation(line: 246, column: 14, scope: !444)
!523 = !DILocation(line: 246, column: 6, scope: !444)
!524 = !DILocation(line: 246, column: 8, scope: !444)
!525 = !DILocation(line: 247, column: 13, scope: !444)
!526 = !DILocation(line: 247, column: 12, scope: !444)
!527 = !DILocation(line: 247, column: 5, scope: !444)
