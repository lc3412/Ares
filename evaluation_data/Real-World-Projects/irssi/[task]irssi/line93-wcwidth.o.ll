; ModuleID = './line93-wcwidth.o.i'
source_filename = "./line93-wcwidth.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.interval = type { i32, i32 }

@mk_wcwidth.combining = internal constant [142 x %struct.interval] [%struct.interval { i32 768, i32 879 }, %struct.interval { i32 1155, i32 1158 }, %struct.interval { i32 1160, i32 1161 }, %struct.interval { i32 1425, i32 1469 }, %struct.interval { i32 1471, i32 1471 }, %struct.interval { i32 1473, i32 1474 }, %struct.interval { i32 1476, i32 1477 }, %struct.interval { i32 1479, i32 1479 }, %struct.interval { i32 1536, i32 1539 }, %struct.interval { i32 1552, i32 1557 }, %struct.interval { i32 1611, i32 1630 }, %struct.interval { i32 1648, i32 1648 }, %struct.interval { i32 1750, i32 1764 }, %struct.interval { i32 1767, i32 1768 }, %struct.interval { i32 1770, i32 1773 }, %struct.interval { i32 1807, i32 1807 }, %struct.interval { i32 1809, i32 1809 }, %struct.interval { i32 1840, i32 1866 }, %struct.interval { i32 1958, i32 1968 }, %struct.interval { i32 2027, i32 2035 }, %struct.interval { i32 2305, i32 2306 }, %struct.interval { i32 2364, i32 2364 }, %struct.interval { i32 2369, i32 2376 }, %struct.interval { i32 2381, i32 2381 }, %struct.interval { i32 2385, i32 2388 }, %struct.interval { i32 2402, i32 2403 }, %struct.interval { i32 2433, i32 2433 }, %struct.interval { i32 2492, i32 2492 }, %struct.interval { i32 2497, i32 2500 }, %struct.interval { i32 2509, i32 2509 }, %struct.interval { i32 2530, i32 2531 }, %struct.interval { i32 2561, i32 2562 }, %struct.interval { i32 2620, i32 2620 }, %struct.interval { i32 2625, i32 2626 }, %struct.interval { i32 2631, i32 2632 }, %struct.interval { i32 2635, i32 2637 }, %struct.interval { i32 2672, i32 2673 }, %struct.interval { i32 2689, i32 2690 }, %struct.interval { i32 2748, i32 2748 }, %struct.interval { i32 2753, i32 2757 }, %struct.interval { i32 2759, i32 2760 }, %struct.interval { i32 2765, i32 2765 }, %struct.interval { i32 2786, i32 2787 }, %struct.interval { i32 2817, i32 2817 }, %struct.interval { i32 2876, i32 2876 }, %struct.interval { i32 2879, i32 2879 }, %struct.interval { i32 2881, i32 2883 }, %struct.interval { i32 2893, i32 2893 }, %struct.interval { i32 2902, i32 2902 }, %struct.interval { i32 2946, i32 2946 }, %struct.interval { i32 3008, i32 3008 }, %struct.interval { i32 3021, i32 3021 }, %struct.interval { i32 3134, i32 3136 }, %struct.interval { i32 3142, i32 3144 }, %struct.interval { i32 3146, i32 3149 }, %struct.interval { i32 3157, i32 3158 }, %struct.interval { i32 3260, i32 3260 }, %struct.interval { i32 3263, i32 3263 }, %struct.interval { i32 3270, i32 3270 }, %struct.interval { i32 3276, i32 3277 }, %struct.interval { i32 3298, i32 3299 }, %struct.interval { i32 3393, i32 3395 }, %struct.interval { i32 3405, i32 3405 }, %struct.interval { i32 3530, i32 3530 }, %struct.interval { i32 3538, i32 3540 }, %struct.interval { i32 3542, i32 3542 }, %struct.interval { i32 3633, i32 3633 }, %struct.interval { i32 3636, i32 3642 }, %struct.interval { i32 3655, i32 3662 }, %struct.interval { i32 3761, i32 3761 }, %struct.interval { i32 3764, i32 3769 }, %struct.interval { i32 3771, i32 3772 }, %struct.interval { i32 3784, i32 3789 }, %struct.interval { i32 3864, i32 3865 }, %struct.interval { i32 3893, i32 3893 }, %struct.interval { i32 3895, i32 3895 }, %struct.interval { i32 3897, i32 3897 }, %struct.interval { i32 3953, i32 3966 }, %struct.interval { i32 3968, i32 3972 }, %struct.interval { i32 3974, i32 3975 }, %struct.interval { i32 3984, i32 3991 }, %struct.interval { i32 3993, i32 4028 }, %struct.interval { i32 4038, i32 4038 }, %struct.interval { i32 4141, i32 4144 }, %struct.interval { i32 4146, i32 4146 }, %struct.interval { i32 4150, i32 4151 }, %struct.interval { i32 4153, i32 4153 }, %struct.interval { i32 4184, i32 4185 }, %struct.interval { i32 4448, i32 4607 }, %struct.interval { i32 4959, i32 4959 }, %struct.interval { i32 5906, i32 5908 }, %struct.interval { i32 5938, i32 5940 }, %struct.interval { i32 5970, i32 5971 }, %struct.interval { i32 6002, i32 6003 }, %struct.interval { i32 6068, i32 6069 }, %struct.interval { i32 6071, i32 6077 }, %struct.interval { i32 6086, i32 6086 }, %struct.interval { i32 6089, i32 6099 }, %struct.interval { i32 6109, i32 6109 }, %struct.interval { i32 6155, i32 6157 }, %struct.interval { i32 6313, i32 6313 }, %struct.interval { i32 6432, i32 6434 }, %struct.interval { i32 6439, i32 6440 }, %struct.interval { i32 6450, i32 6450 }, %struct.interval { i32 6457, i32 6459 }, %struct.interval { i32 6679, i32 6680 }, %struct.interval { i32 6912, i32 6915 }, %struct.interval { i32 6964, i32 6964 }, %struct.interval { i32 6966, i32 6970 }, %struct.interval { i32 6972, i32 6972 }, %struct.interval { i32 6978, i32 6978 }, %struct.interval { i32 7019, i32 7027 }, %struct.interval { i32 7616, i32 7626 }, %struct.interval { i32 7678, i32 7679 }, %struct.interval { i32 8203, i32 8207 }, %struct.interval { i32 8234, i32 8238 }, %struct.interval { i32 8288, i32 8291 }, %struct.interval { i32 8298, i32 8303 }, %struct.interval { i32 8400, i32 8431 }, %struct.interval { i32 12330, i32 12335 }, %struct.interval { i32 12441, i32 12442 }, %struct.interval { i32 43014, i32 43014 }, %struct.interval { i32 43019, i32 43019 }, %struct.interval { i32 43045, i32 43046 }, %struct.interval { i32 64286, i32 64286 }, %struct.interval { i32 65024, i32 65039 }, %struct.interval { i32 65056, i32 65059 }, %struct.interval { i32 65279, i32 65279 }, %struct.interval { i32 65529, i32 65531 }, %struct.interval { i32 68097, i32 68099 }, %struct.interval { i32 68101, i32 68102 }, %struct.interval { i32 68108, i32 68111 }, %struct.interval { i32 68152, i32 68154 }, %struct.interval { i32 68159, i32 68159 }, %struct.interval { i32 119143, i32 119145 }, %struct.interval { i32 119155, i32 119170 }, %struct.interval { i32 119173, i32 119179 }, %struct.interval { i32 119210, i32 119213 }, %struct.interval { i32 119362, i32 119364 }, %struct.interval { i32 917505, i32 917505 }, %struct.interval { i32 917536, i32 917631 }, %struct.interval { i32 917760, i32 917999 }], align 16

; Function Attrs: nounwind uwtable
define i32 @mk_wcwidth(i32) #0 !dbg !5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !27), !dbg !28
  %4 = load i32, i32* %3, align 4, !dbg !29
  %5 = icmp eq i32 %4, 0, !dbg !31
  br i1 %5, label %6, label %7, !dbg !32

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !33
  br label %99, !dbg !33

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !34
  %9 = icmp ult i32 %8, 32, !dbg !36
  br i1 %9, label %16, label %10, !dbg !37

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !38
  %12 = icmp uge i32 %11, 127, !dbg !40
  br i1 %12, label %13, label %17, !dbg !41

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %3, align 4, !dbg !42
  %15 = icmp ult i32 %14, 160, !dbg !44
  br i1 %15, label %16, label %17, !dbg !45

; <label>:16:                                     ; preds = %13, %7
  store i32 -1, i32* %2, align 4, !dbg !46
  br label %99, !dbg !46

; <label>:17:                                     ; preds = %13, %10
  %18 = load i32, i32* %3, align 4, !dbg !47
  %19 = call i32 @bisearch(i32 %18, %struct.interval* getelementptr inbounds ([142 x %struct.interval], [142 x %struct.interval]* @mk_wcwidth.combining, i32 0, i32 0), i32 141), !dbg !49
  %20 = icmp ne i32 %19, 0, !dbg !49
  br i1 %20, label %21, label %22, !dbg !50

; <label>:21:                                     ; preds = %17
  store i32 0, i32* %2, align 4, !dbg !51
  br label %99, !dbg !51

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %3, align 4, !dbg !52
  %24 = icmp uge i32 %23, 4352, !dbg !53
  br i1 %24, label %25, label %95, !dbg !54

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %3, align 4, !dbg !55
  %27 = icmp ule i32 %26, 4447, !dbg !56
  br i1 %27, label %93, label %28, !dbg !57

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %3, align 4, !dbg !58
  %30 = icmp eq i32 %29, 9001, !dbg !59
  br i1 %30, label %93, label %31, !dbg !60

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %3, align 4, !dbg !61
  %33 = icmp eq i32 %32, 9002, !dbg !63
  br i1 %33, label %93, label %34, !dbg !64

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %3, align 4, !dbg !65
  %36 = icmp uge i32 %35, 11904, !dbg !66
  br i1 %36, label %37, label %43, !dbg !67

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %3, align 4, !dbg !68
  %39 = icmp ule i32 %38, 42191, !dbg !69
  br i1 %39, label %40, label %43, !dbg !70

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %3, align 4, !dbg !71
  %42 = icmp ne i32 %41, 12351, !dbg !72
  br i1 %42, label %93, label %43, !dbg !73

; <label>:43:                                     ; preds = %40, %37, %34
  %44 = load i32, i32* %3, align 4, !dbg !74
  %45 = icmp uge i32 %44, 44032, !dbg !75
  br i1 %45, label %46, label %49, !dbg !76

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %3, align 4, !dbg !77
  %48 = icmp ule i32 %47, 55203, !dbg !78
  br i1 %48, label %93, label %49, !dbg !79

; <label>:49:                                     ; preds = %46, %43
  %50 = load i32, i32* %3, align 4, !dbg !80
  %51 = icmp uge i32 %50, 63744, !dbg !81
  br i1 %51, label %52, label %55, !dbg !82

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %3, align 4, !dbg !83
  %54 = icmp ule i32 %53, 64255, !dbg !84
  br i1 %54, label %93, label %55, !dbg !85

; <label>:55:                                     ; preds = %52, %49
  %56 = load i32, i32* %3, align 4, !dbg !86
  %57 = icmp uge i32 %56, 65040, !dbg !87
  br i1 %57, label %58, label %61, !dbg !88

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %3, align 4, !dbg !89
  %60 = icmp ule i32 %59, 65049, !dbg !90
  br i1 %60, label %93, label %61, !dbg !91

; <label>:61:                                     ; preds = %58, %55
  %62 = load i32, i32* %3, align 4, !dbg !92
  %63 = icmp uge i32 %62, 65072, !dbg !93
  br i1 %63, label %64, label %67, !dbg !94

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %3, align 4, !dbg !95
  %66 = icmp ule i32 %65, 65135, !dbg !96
  br i1 %66, label %93, label %67, !dbg !97

; <label>:67:                                     ; preds = %64, %61
  %68 = load i32, i32* %3, align 4, !dbg !98
  %69 = icmp uge i32 %68, 65280, !dbg !99
  br i1 %69, label %70, label %73, !dbg !100

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %3, align 4, !dbg !101
  %72 = icmp ule i32 %71, 65376, !dbg !102
  br i1 %72, label %93, label %73, !dbg !103

; <label>:73:                                     ; preds = %70, %67
  %74 = load i32, i32* %3, align 4, !dbg !104
  %75 = icmp uge i32 %74, 65504, !dbg !105
  br i1 %75, label %76, label %79, !dbg !106

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %3, align 4, !dbg !107
  %78 = icmp ule i32 %77, 65510, !dbg !108
  br i1 %78, label %93, label %79, !dbg !109

; <label>:79:                                     ; preds = %76, %73
  %80 = load i32, i32* %3, align 4, !dbg !110
  %81 = icmp uge i32 %80, 131072, !dbg !111
  br i1 %81, label %82, label %85, !dbg !112

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %3, align 4, !dbg !113
  %84 = icmp ule i32 %83, 196605, !dbg !114
  br i1 %84, label %93, label %85, !dbg !115

; <label>:85:                                     ; preds = %82, %79
  %86 = load i32, i32* %3, align 4, !dbg !116
  %87 = icmp uge i32 %86, 196608, !dbg !117
  br i1 %87, label %88, label %91, !dbg !118

; <label>:88:                                     ; preds = %85
  %89 = load i32, i32* %3, align 4, !dbg !119
  %90 = icmp ule i32 %89, 262141, !dbg !120
  br label %91

; <label>:91:                                     ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  br label %93, !dbg !121

; <label>:93:                                     ; preds = %91, %82, %76, %70, %64, %58, %52, %46, %40, %31, %28, %25
  %94 = phi i1 [ true, %82 ], [ true, %76 ], [ true, %70 ], [ true, %64 ], [ true, %58 ], [ true, %52 ], [ true, %46 ], [ true, %40 ], [ true, %31 ], [ true, %28 ], [ true, %25 ], [ %92, %91 ]
  br label %95

; <label>:95:                                     ; preds = %93, %22
  %96 = phi i1 [ false, %22 ], [ %94, %93 ]
  %97 = zext i1 %96 to i32, !dbg !123
  %98 = add nsw i32 1, %97, !dbg !124
  store i32 %98, i32* %2, align 4, !dbg !125
  br label %99, !dbg !125

; <label>:99:                                     ; preds = %95, %21, %16, %6
  %100 = load i32, i32* %2, align 4, !dbg !126
  ret i32 %100, !dbg !126
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @bisearch(i32, %struct.interval*, i32) #0 !dbg !127 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !131, metadata !27), !dbg !132
  store %struct.interval* %1, %struct.interval** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.interval** %6, metadata !133, metadata !27), !dbg !134
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !135, metadata !27), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %8, metadata !137, metadata !27), !dbg !138
  store i32 0, i32* %8, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %9, metadata !139, metadata !27), !dbg !140
  %10 = load i32, i32* %5, align 4, !dbg !141
  %11 = load %struct.interval*, %struct.interval** %6, align 8, !dbg !143
  %12 = getelementptr inbounds %struct.interval, %struct.interval* %11, i64 0, !dbg !143
  %13 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0, !dbg !144
  %14 = load i32, i32* %13, align 4, !dbg !144
  %15 = icmp ult i32 %10, %14, !dbg !145
  br i1 %15, label %25, label %16, !dbg !146

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %5, align 4, !dbg !147
  %18 = load i32, i32* %7, align 4, !dbg !149
  %19 = sext i32 %18 to i64, !dbg !150
  %20 = load %struct.interval*, %struct.interval** %6, align 8, !dbg !150
  %21 = getelementptr inbounds %struct.interval, %struct.interval* %20, i64 %19, !dbg !150
  %22 = getelementptr inbounds %struct.interval, %struct.interval* %21, i32 0, i32 1, !dbg !151
  %23 = load i32, i32* %22, align 4, !dbg !151
  %24 = icmp ugt i32 %17, %23, !dbg !152
  br i1 %24, label %25, label %26, !dbg !153

; <label>:25:                                     ; preds = %16, %3
  store i32 0, i32* %4, align 4, !dbg !154
  br label %63, !dbg !154

; <label>:26:                                     ; preds = %16
  br label %27, !dbg !155

; <label>:27:                                     ; preds = %61, %26
  %28 = load i32, i32* %7, align 4, !dbg !156
  %29 = load i32, i32* %8, align 4, !dbg !158
  %30 = icmp sge i32 %28, %29, !dbg !159
  br i1 %30, label %31, label %62, !dbg !160

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %8, align 4, !dbg !161
  %33 = load i32, i32* %7, align 4, !dbg !163
  %34 = add nsw i32 %32, %33, !dbg !164
  %35 = sdiv i32 %34, 2, !dbg !165
  store i32 %35, i32* %9, align 4, !dbg !166
  %36 = load i32, i32* %5, align 4, !dbg !167
  %37 = load i32, i32* %9, align 4, !dbg !169
  %38 = sext i32 %37 to i64, !dbg !170
  %39 = load %struct.interval*, %struct.interval** %6, align 8, !dbg !170
  %40 = getelementptr inbounds %struct.interval, %struct.interval* %39, i64 %38, !dbg !170
  %41 = getelementptr inbounds %struct.interval, %struct.interval* %40, i32 0, i32 1, !dbg !171
  %42 = load i32, i32* %41, align 4, !dbg !171
  %43 = icmp ugt i32 %36, %42, !dbg !172
  br i1 %43, label %44, label %47, !dbg !173

; <label>:44:                                     ; preds = %31
  %45 = load i32, i32* %9, align 4, !dbg !174
  %46 = add nsw i32 %45, 1, !dbg !175
  store i32 %46, i32* %8, align 4, !dbg !176
  br label %61, !dbg !177

; <label>:47:                                     ; preds = %31
  %48 = load i32, i32* %5, align 4, !dbg !178
  %49 = load i32, i32* %9, align 4, !dbg !180
  %50 = sext i32 %49 to i64, !dbg !181
  %51 = load %struct.interval*, %struct.interval** %6, align 8, !dbg !181
  %52 = getelementptr inbounds %struct.interval, %struct.interval* %51, i64 %50, !dbg !181
  %53 = getelementptr inbounds %struct.interval, %struct.interval* %52, i32 0, i32 0, !dbg !182
  %54 = load i32, i32* %53, align 4, !dbg !182
  %55 = icmp ult i32 %48, %54, !dbg !183
  br i1 %55, label %56, label %59, !dbg !184

; <label>:56:                                     ; preds = %47
  %57 = load i32, i32* %9, align 4, !dbg !185
  %58 = sub nsw i32 %57, 1, !dbg !186
  store i32 %58, i32* %7, align 4, !dbg !187
  br label %60, !dbg !188

; <label>:59:                                     ; preds = %47
  store i32 1, i32* %4, align 4, !dbg !189
  br label %63, !dbg !189

; <label>:60:                                     ; preds = %56
  br label %61

; <label>:61:                                     ; preds = %60, %44
  br label %27, !dbg !190, !llvm.loop !192

; <label>:62:                                     ; preds = %27
  store i32 0, i32* %4, align 4, !dbg !193
  br label %63, !dbg !193

; <label>:63:                                     ; preds = %62, %59, %25
  %64 = load i32, i32* %4, align 4, !dbg !194
  ret i32 %64, !dbg !194
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "line93-wcwidth.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "combining", scope: !5, file: !6, line: 126, type: !15, isLocal: true, isDefinition: true, variable: [142 x %struct.interval]* @mk_wcwidth.combining)
!5 = distinct !DISubprogram(name: "mk_wcwidth", scope: !6, file: !6, line: 122, type: !7, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!6 = !DIFile(filename: "wcwidth.c", directory: "/home/lichi/Desktop/irssi/task1")
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "unichar", file: !11, line: 12, baseType: !12)
!11 = !DIFile(filename: "utf8.h", directory: "/home/lichi/Desktop/irssi/task1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !13, line: 45, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!14 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 9088, align: 32, elements: !21)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interval", file: !6, line: 64, size: 64, align: 32, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !17, file: !6, line: 65, baseType: !9, size: 32, align: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !17, file: !6, line: 66, baseType: !9, size: 32, align: 32, offset: 32)
!21 = !{!22}
!22 = !DISubrange(count: 142)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!26 = !DILocalVariable(name: "ucs", arg: 1, scope: !5, file: !6, line: 122, type: !10)
!27 = !DIExpression()
!28 = !DILocation(line: 122, column: 24, scope: !5)
!29 = !DILocation(line: 178, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !5, file: !6, line: 178, column: 7)
!31 = !DILocation(line: 178, column: 11, scope: !30)
!32 = !DILocation(line: 178, column: 7, scope: !5)
!33 = !DILocation(line: 179, column: 5, scope: !30)
!34 = !DILocation(line: 180, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !5, file: !6, line: 180, column: 7)
!36 = !DILocation(line: 180, column: 11, scope: !35)
!37 = !DILocation(line: 180, column: 16, scope: !35)
!38 = !DILocation(line: 180, column: 20, scope: !39)
!39 = !DILexicalBlockFile(scope: !35, file: !6, discriminator: 1)
!40 = !DILocation(line: 180, column: 24, scope: !39)
!41 = !DILocation(line: 180, column: 32, scope: !39)
!42 = !DILocation(line: 180, column: 35, scope: !43)
!43 = !DILexicalBlockFile(scope: !35, file: !6, discriminator: 2)
!44 = !DILocation(line: 180, column: 39, scope: !43)
!45 = !DILocation(line: 180, column: 7, scope: !43)
!46 = !DILocation(line: 181, column: 5, scope: !35)
!47 = !DILocation(line: 184, column: 16, scope: !48)
!48 = distinct !DILexicalBlock(scope: !5, file: !6, line: 184, column: 7)
!49 = !DILocation(line: 184, column: 7, scope: !48)
!50 = !DILocation(line: 184, column: 7, scope: !5)
!51 = !DILocation(line: 186, column: 5, scope: !48)
!52 = !DILocation(line: 191, column: 6, scope: !5)
!53 = !DILocation(line: 191, column: 10, scope: !5)
!54 = !DILocation(line: 191, column: 20, scope: !5)
!55 = !DILocation(line: 192, column: 7, scope: !5)
!56 = !DILocation(line: 192, column: 11, scope: !5)
!57 = !DILocation(line: 192, column: 21, scope: !5)
!58 = !DILocation(line: 193, column: 7, scope: !5)
!59 = !DILocation(line: 193, column: 11, scope: !5)
!60 = !DILocation(line: 193, column: 21, scope: !5)
!61 = !DILocation(line: 193, column: 24, scope: !62)
!62 = !DILexicalBlockFile(scope: !5, file: !6, discriminator: 1)
!63 = !DILocation(line: 193, column: 28, scope: !62)
!64 = !DILocation(line: 193, column: 38, scope: !62)
!65 = !DILocation(line: 194, column: 8, scope: !5)
!66 = !DILocation(line: 194, column: 12, scope: !5)
!67 = !DILocation(line: 194, column: 22, scope: !5)
!68 = !DILocation(line: 194, column: 25, scope: !62)
!69 = !DILocation(line: 194, column: 29, scope: !62)
!70 = !DILocation(line: 194, column: 39, scope: !62)
!71 = !DILocation(line: 195, column: 8, scope: !5)
!72 = !DILocation(line: 195, column: 12, scope: !5)
!73 = !DILocation(line: 195, column: 23, scope: !5)
!74 = !DILocation(line: 196, column: 8, scope: !5)
!75 = !DILocation(line: 196, column: 12, scope: !5)
!76 = !DILocation(line: 196, column: 22, scope: !5)
!77 = !DILocation(line: 196, column: 25, scope: !62)
!78 = !DILocation(line: 196, column: 29, scope: !62)
!79 = !DILocation(line: 196, column: 40, scope: !62)
!80 = !DILocation(line: 197, column: 8, scope: !5)
!81 = !DILocation(line: 197, column: 12, scope: !5)
!82 = !DILocation(line: 197, column: 22, scope: !5)
!83 = !DILocation(line: 197, column: 25, scope: !62)
!84 = !DILocation(line: 197, column: 29, scope: !62)
!85 = !DILocation(line: 197, column: 40, scope: !62)
!86 = !DILocation(line: 198, column: 8, scope: !5)
!87 = !DILocation(line: 198, column: 12, scope: !5)
!88 = !DILocation(line: 198, column: 22, scope: !5)
!89 = !DILocation(line: 198, column: 25, scope: !62)
!90 = !DILocation(line: 198, column: 29, scope: !62)
!91 = !DILocation(line: 198, column: 40, scope: !62)
!92 = !DILocation(line: 199, column: 8, scope: !5)
!93 = !DILocation(line: 199, column: 12, scope: !5)
!94 = !DILocation(line: 199, column: 22, scope: !5)
!95 = !DILocation(line: 199, column: 25, scope: !62)
!96 = !DILocation(line: 199, column: 29, scope: !62)
!97 = !DILocation(line: 199, column: 40, scope: !62)
!98 = !DILocation(line: 200, column: 8, scope: !5)
!99 = !DILocation(line: 200, column: 12, scope: !5)
!100 = !DILocation(line: 200, column: 22, scope: !5)
!101 = !DILocation(line: 200, column: 25, scope: !62)
!102 = !DILocation(line: 200, column: 29, scope: !62)
!103 = !DILocation(line: 200, column: 40, scope: !62)
!104 = !DILocation(line: 201, column: 8, scope: !5)
!105 = !DILocation(line: 201, column: 12, scope: !5)
!106 = !DILocation(line: 201, column: 22, scope: !5)
!107 = !DILocation(line: 201, column: 25, scope: !62)
!108 = !DILocation(line: 201, column: 29, scope: !62)
!109 = !DILocation(line: 201, column: 40, scope: !62)
!110 = !DILocation(line: 202, column: 8, scope: !5)
!111 = !DILocation(line: 202, column: 12, scope: !5)
!112 = !DILocation(line: 202, column: 23, scope: !5)
!113 = !DILocation(line: 202, column: 26, scope: !62)
!114 = !DILocation(line: 202, column: 30, scope: !62)
!115 = !DILocation(line: 202, column: 42, scope: !62)
!116 = !DILocation(line: 203, column: 8, scope: !5)
!117 = !DILocation(line: 203, column: 12, scope: !5)
!118 = !DILocation(line: 203, column: 23, scope: !5)
!119 = !DILocation(line: 203, column: 26, scope: !62)
!120 = !DILocation(line: 203, column: 30, scope: !62)
!121 = !DILocation(line: 202, column: 42, scope: !122)
!122 = !DILexicalBlockFile(scope: !5, file: !6, discriminator: 2)
!123 = !DILocation(line: 191, column: 20, scope: !62)
!124 = !DILocation(line: 190, column: 12, scope: !5)
!125 = !DILocation(line: 190, column: 3, scope: !5)
!126 = !DILocation(line: 204, column: 1, scope: !5)
!127 = distinct !DISubprogram(name: "bisearch", scope: !6, file: !6, line: 70, type: !128, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!128 = !DISubroutineType(types: !129)
!129 = !{!9, !10, !130, !9}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!131 = !DILocalVariable(name: "ucs", arg: 1, scope: !127, file: !6, line: 70, type: !10)
!132 = !DILocation(line: 70, column: 29, scope: !127)
!133 = !DILocalVariable(name: "table", arg: 2, scope: !127, file: !6, line: 70, type: !130)
!134 = !DILocation(line: 70, column: 57, scope: !127)
!135 = !DILocalVariable(name: "max", arg: 3, scope: !127, file: !6, line: 70, type: !9)
!136 = !DILocation(line: 70, column: 68, scope: !127)
!137 = !DILocalVariable(name: "min", scope: !127, file: !6, line: 71, type: !9)
!138 = !DILocation(line: 71, column: 7, scope: !127)
!139 = !DILocalVariable(name: "mid", scope: !127, file: !6, line: 72, type: !9)
!140 = !DILocation(line: 72, column: 7, scope: !127)
!141 = !DILocation(line: 74, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !127, file: !6, line: 74, column: 7)
!143 = !DILocation(line: 74, column: 13, scope: !142)
!144 = !DILocation(line: 74, column: 22, scope: !142)
!145 = !DILocation(line: 74, column: 11, scope: !142)
!146 = !DILocation(line: 74, column: 28, scope: !142)
!147 = !DILocation(line: 74, column: 31, scope: !148)
!148 = !DILexicalBlockFile(scope: !142, file: !6, discriminator: 1)
!149 = !DILocation(line: 74, column: 43, scope: !148)
!150 = !DILocation(line: 74, column: 37, scope: !148)
!151 = !DILocation(line: 74, column: 48, scope: !148)
!152 = !DILocation(line: 74, column: 35, scope: !148)
!153 = !DILocation(line: 74, column: 7, scope: !148)
!154 = !DILocation(line: 75, column: 5, scope: !142)
!155 = !DILocation(line: 76, column: 3, scope: !127)
!156 = !DILocation(line: 76, column: 10, scope: !157)
!157 = !DILexicalBlockFile(scope: !127, file: !6, discriminator: 1)
!158 = !DILocation(line: 76, column: 17, scope: !157)
!159 = !DILocation(line: 76, column: 14, scope: !157)
!160 = !DILocation(line: 76, column: 3, scope: !157)
!161 = !DILocation(line: 77, column: 12, scope: !162)
!162 = distinct !DILexicalBlock(scope: !127, file: !6, line: 76, column: 22)
!163 = !DILocation(line: 77, column: 18, scope: !162)
!164 = !DILocation(line: 77, column: 16, scope: !162)
!165 = !DILocation(line: 77, column: 23, scope: !162)
!166 = !DILocation(line: 77, column: 9, scope: !162)
!167 = !DILocation(line: 78, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !162, file: !6, line: 78, column: 9)
!169 = !DILocation(line: 78, column: 21, scope: !168)
!170 = !DILocation(line: 78, column: 15, scope: !168)
!171 = !DILocation(line: 78, column: 26, scope: !168)
!172 = !DILocation(line: 78, column: 13, scope: !168)
!173 = !DILocation(line: 78, column: 9, scope: !162)
!174 = !DILocation(line: 79, column: 13, scope: !168)
!175 = !DILocation(line: 79, column: 17, scope: !168)
!176 = !DILocation(line: 79, column: 11, scope: !168)
!177 = !DILocation(line: 79, column: 7, scope: !168)
!178 = !DILocation(line: 80, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !168, file: !6, line: 80, column: 14)
!180 = !DILocation(line: 80, column: 26, scope: !179)
!181 = !DILocation(line: 80, column: 20, scope: !179)
!182 = !DILocation(line: 80, column: 31, scope: !179)
!183 = !DILocation(line: 80, column: 18, scope: !179)
!184 = !DILocation(line: 80, column: 14, scope: !168)
!185 = !DILocation(line: 81, column: 13, scope: !179)
!186 = !DILocation(line: 81, column: 17, scope: !179)
!187 = !DILocation(line: 81, column: 11, scope: !179)
!188 = !DILocation(line: 81, column: 7, scope: !179)
!189 = !DILocation(line: 83, column: 7, scope: !179)
!190 = !DILocation(line: 76, column: 3, scope: !191)
!191 = !DILexicalBlockFile(scope: !127, file: !6, discriminator: 2)
!192 = distinct !{!192, !155}
!193 = !DILocation(line: 86, column: 3, scope: !127)
!194 = !DILocation(line: 87, column: 1, scope: !127)
