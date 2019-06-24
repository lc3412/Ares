; ModuleID = './[inter]lib--list_head.o.i'
source_filename = "./[inter]lib--list_head.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

; Function Attrs: nounwind uwtable
define void @list_sort(%struct.list_head*, i32 (%struct.list_head*, %struct.list_head*)*) #0 !dbg !8 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca i32 (%struct.list_head*, %struct.list_head*)*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %3, metadata !22, metadata !23), !dbg !24
  store i32 (%struct.list_head*, %struct.list_head*)* %1, i32 (%struct.list_head*, %struct.list_head*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.list_head*, %struct.list_head*)** %4, metadata !25, metadata !23), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.list_head** %5, metadata !27, metadata !23), !dbg !28
  call void @llvm.dbg.declare(metadata %struct.list_head** %6, metadata !29, metadata !23), !dbg !30
  call void @llvm.dbg.declare(metadata %struct.list_head** %7, metadata !31, metadata !23), !dbg !32
  call void @llvm.dbg.declare(metadata %struct.list_head** %8, metadata !33, metadata !23), !dbg !34
  call void @llvm.dbg.declare(metadata %struct.list_head** %9, metadata !35, metadata !23), !dbg !36
  call void @llvm.dbg.declare(metadata %struct.list_head** %10, metadata !37, metadata !23), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %11, metadata !39, metadata !23), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %12, metadata !41, metadata !23), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %13, metadata !43, metadata !23), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %14, metadata !45, metadata !23), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %15, metadata !47, metadata !23), !dbg !48
  %16 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !49
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0, !dbg !50
  %18 = load %struct.list_head*, %struct.list_head** %17, align 8, !dbg !50
  store %struct.list_head* %18, %struct.list_head** %8, align 8, !dbg !51
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !52
  call void @list_head_del(%struct.list_head* %19), !dbg !53
  store i32 1, i32* %11, align 4, !dbg !54
  br label %20, !dbg !55

; <label>:20:                                     ; preds = %2, %161
  %21 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !56
  store %struct.list_head* %21, %struct.list_head** %10, align 8, !dbg !58
  store %struct.list_head* %21, %struct.list_head** %5, align 8, !dbg !59
  store %struct.list_head* null, %struct.list_head** %9, align 8, !dbg !60
  store %struct.list_head* null, %struct.list_head** %8, align 8, !dbg !61
  store i32 0, i32* %12, align 4, !dbg !62
  br label %22, !dbg !63

; <label>:22:                                     ; preds = %149, %20
  %23 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !64
  %24 = icmp ne %struct.list_head* %23, null, !dbg !66
  br i1 %24, label %25, label %151, !dbg !66

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %12, align 4, !dbg !67
  %27 = add nsw i32 %26, 1, !dbg !67
  store i32 %27, i32* %12, align 4, !dbg !67
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !69
  store %struct.list_head* %28, %struct.list_head** %6, align 8, !dbg !70
  store i32 0, i32* %13, align 4, !dbg !71
  store i32 0, i32* %15, align 4, !dbg !72
  br label %29, !dbg !74

; <label>:29:                                     ; preds = %52, %25
  %30 = load i32, i32* %15, align 4, !dbg !75
  %31 = load i32, i32* %11, align 4, !dbg !78
  %32 = icmp slt i32 %30, %31, !dbg !79
  br i1 %32, label %33, label %55, !dbg !80

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %13, align 4, !dbg !81
  %35 = add nsw i32 %34, 1, !dbg !81
  store i32 %35, i32* %13, align 4, !dbg !81
  %36 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !83
  %37 = getelementptr inbounds %struct.list_head, %struct.list_head* %36, i32 0, i32 0, !dbg !84
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8, !dbg !84
  %39 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !85
  %40 = icmp eq %struct.list_head* %38, %39, !dbg !86
  br i1 %40, label %41, label %42, !dbg !83

; <label>:41:                                     ; preds = %33
  br label %46, !dbg !87

; <label>:42:                                     ; preds = %33
  %43 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !89
  %44 = getelementptr inbounds %struct.list_head, %struct.list_head* %43, i32 0, i32 0, !dbg !91
  %45 = load %struct.list_head*, %struct.list_head** %44, align 8, !dbg !91
  br label %46, !dbg !92

; <label>:46:                                     ; preds = %42, %41
  %47 = phi %struct.list_head* [ null, %41 ], [ %45, %42 ], !dbg !93
  store %struct.list_head* %47, %struct.list_head** %6, align 8, !dbg !95
  %48 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !96
  %49 = icmp ne %struct.list_head* %48, null, !dbg !96
  br i1 %49, label %51, label %50, !dbg !98

; <label>:50:                                     ; preds = %46
  br label %55, !dbg !99

; <label>:51:                                     ; preds = %46
  br label %52, !dbg !100

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %15, align 4, !dbg !101
  %54 = add nsw i32 %53, 1, !dbg !101
  store i32 %54, i32* %15, align 4, !dbg !101
  br label %29, !dbg !103, !llvm.loop !104

; <label>:55:                                     ; preds = %50, %29
  %56 = load i32, i32* %11, align 4, !dbg !106
  store i32 %56, i32* %14, align 4, !dbg !107
  br label %57, !dbg !108

; <label>:57:                                     ; preds = %144, %55
  %58 = load i32, i32* %13, align 4, !dbg !109
  %59 = icmp sgt i32 %58, 0, !dbg !111
  br i1 %59, label %68, label %60, !dbg !112

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %14, align 4, !dbg !113
  %62 = icmp sgt i32 %61, 0, !dbg !115
  br i1 %62, label %63, label %66, !dbg !116

; <label>:63:                                     ; preds = %60
  %64 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !117
  %65 = icmp ne %struct.list_head* %64, null, !dbg !119
  br label %66

; <label>:66:                                     ; preds = %63, %60
  %67 = phi i1 [ false, %60 ], [ %65, %63 ]
  br label %68, !dbg !120

; <label>:68:                                     ; preds = %66, %57
  %69 = phi i1 [ true, %57 ], [ %67, %66 ]
  br i1 %69, label %70, label %149, !dbg !122

; <label>:70:                                     ; preds = %68
  %71 = load i32, i32* %13, align 4, !dbg !124
  %72 = icmp ne i32 %71, 0, !dbg !124
  br i1 %72, label %85, label %73, !dbg !127

; <label>:73:                                     ; preds = %70
  %74 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !128
  store %struct.list_head* %74, %struct.list_head** %7, align 8, !dbg !130
  %75 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !131
  %76 = getelementptr inbounds %struct.list_head, %struct.list_head* %75, i32 0, i32 0, !dbg !132
  %77 = load %struct.list_head*, %struct.list_head** %76, align 8, !dbg !132
  store %struct.list_head* %77, %struct.list_head** %6, align 8, !dbg !133
  %78 = load i32, i32* %14, align 4, !dbg !134
  %79 = add nsw i32 %78, -1, !dbg !134
  store i32 %79, i32* %14, align 4, !dbg !134
  %80 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !135
  %81 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !137
  %82 = icmp eq %struct.list_head* %80, %81, !dbg !138
  br i1 %82, label %83, label %84, !dbg !139

; <label>:83:                                     ; preds = %73
  store %struct.list_head* null, %struct.list_head** %6, align 8, !dbg !140
  br label %84, !dbg !141

; <label>:84:                                     ; preds = %83, %73
  br label %135, !dbg !142

; <label>:85:                                     ; preds = %70
  %86 = load i32, i32* %14, align 4, !dbg !143
  %87 = icmp ne i32 %86, 0, !dbg !143
  br i1 %87, label %88, label %91, !dbg !146

; <label>:88:                                     ; preds = %85
  %89 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !147
  %90 = icmp ne %struct.list_head* %89, null, !dbg !147
  br i1 %90, label %103, label %91, !dbg !149

; <label>:91:                                     ; preds = %88, %85
  %92 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !150
  store %struct.list_head* %92, %struct.list_head** %7, align 8, !dbg !152
  %93 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !153
  %94 = getelementptr inbounds %struct.list_head, %struct.list_head* %93, i32 0, i32 0, !dbg !154
  %95 = load %struct.list_head*, %struct.list_head** %94, align 8, !dbg !154
  store %struct.list_head* %95, %struct.list_head** %5, align 8, !dbg !155
  %96 = load i32, i32* %13, align 4, !dbg !156
  %97 = add nsw i32 %96, -1, !dbg !156
  store i32 %97, i32* %13, align 4, !dbg !156
  %98 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !157
  %99 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !159
  %100 = icmp eq %struct.list_head* %98, %99, !dbg !160
  br i1 %100, label %101, label %102, !dbg !161

; <label>:101:                                    ; preds = %91
  store %struct.list_head* null, %struct.list_head** %5, align 8, !dbg !162
  br label %102, !dbg !163

; <label>:102:                                    ; preds = %101, %91
  br label %134, !dbg !164

; <label>:103:                                    ; preds = %88
  %104 = load i32 (%struct.list_head*, %struct.list_head*)*, i32 (%struct.list_head*, %struct.list_head*)** %4, align 8, !dbg !165
  %105 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !168
  %106 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !169
  %107 = call i32 %104(%struct.list_head* %105, %struct.list_head* %106), !dbg !165
  %108 = icmp sle i32 %107, 0, !dbg !170
  br i1 %108, label %109, label %121, !dbg !165

; <label>:109:                                    ; preds = %103
  %110 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !171
  store %struct.list_head* %110, %struct.list_head** %7, align 8, !dbg !173
  %111 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !174
  %112 = getelementptr inbounds %struct.list_head, %struct.list_head* %111, i32 0, i32 0, !dbg !175
  %113 = load %struct.list_head*, %struct.list_head** %112, align 8, !dbg !175
  store %struct.list_head* %113, %struct.list_head** %5, align 8, !dbg !176
  %114 = load i32, i32* %13, align 4, !dbg !177
  %115 = add nsw i32 %114, -1, !dbg !177
  store i32 %115, i32* %13, align 4, !dbg !177
  %116 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !178
  %117 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !180
  %118 = icmp eq %struct.list_head* %116, %117, !dbg !181
  br i1 %118, label %119, label %120, !dbg !182

; <label>:119:                                    ; preds = %109
  store %struct.list_head* null, %struct.list_head** %5, align 8, !dbg !183
  br label %120, !dbg !184

; <label>:120:                                    ; preds = %119, %109
  br label %133, !dbg !185

; <label>:121:                                    ; preds = %103
  %122 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !186
  store %struct.list_head* %122, %struct.list_head** %7, align 8, !dbg !188
  %123 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !189
  %124 = getelementptr inbounds %struct.list_head, %struct.list_head* %123, i32 0, i32 0, !dbg !190
  %125 = load %struct.list_head*, %struct.list_head** %124, align 8, !dbg !190
  store %struct.list_head* %125, %struct.list_head** %6, align 8, !dbg !191
  %126 = load i32, i32* %14, align 4, !dbg !192
  %127 = add nsw i32 %126, -1, !dbg !192
  store i32 %127, i32* %14, align 4, !dbg !192
  %128 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !193
  %129 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !195
  %130 = icmp eq %struct.list_head* %128, %129, !dbg !196
  br i1 %130, label %131, label %132, !dbg !197

; <label>:131:                                    ; preds = %121
  store %struct.list_head* null, %struct.list_head** %6, align 8, !dbg !198
  br label %132, !dbg !199

; <label>:132:                                    ; preds = %131, %121
  br label %133

; <label>:133:                                    ; preds = %132, %120
  br label %134

; <label>:134:                                    ; preds = %133, %102
  br label %135

; <label>:135:                                    ; preds = %134, %84
  %136 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !200
  %137 = icmp ne %struct.list_head* %136, null, !dbg !200
  br i1 %137, label %138, label %142, !dbg !202

; <label>:138:                                    ; preds = %135
  %139 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !203
  %140 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !204
  %141 = getelementptr inbounds %struct.list_head, %struct.list_head* %140, i32 0, i32 0, !dbg !205
  store %struct.list_head* %139, %struct.list_head** %141, align 8, !dbg !206
  br label %144, !dbg !204

; <label>:142:                                    ; preds = %135
  %143 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !207
  store %struct.list_head* %143, %struct.list_head** %8, align 8, !dbg !208
  br label %144

; <label>:144:                                    ; preds = %142, %138
  %145 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !209
  %146 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !210
  %147 = getelementptr inbounds %struct.list_head, %struct.list_head* %146, i32 0, i32 1, !dbg !211
  store %struct.list_head* %145, %struct.list_head** %147, align 8, !dbg !212
  %148 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !213
  store %struct.list_head* %148, %struct.list_head** %9, align 8, !dbg !214
  br label %57, !dbg !215, !llvm.loop !217

; <label>:149:                                    ; preds = %68
  %150 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !218
  store %struct.list_head* %150, %struct.list_head** %5, align 8, !dbg !219
  br label %22, !dbg !220, !llvm.loop !222

; <label>:151:                                    ; preds = %22
  %152 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !223
  %153 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !224
  %154 = getelementptr inbounds %struct.list_head, %struct.list_head* %153, i32 0, i32 0, !dbg !225
  store %struct.list_head* %152, %struct.list_head** %154, align 8, !dbg !226
  %155 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !227
  %156 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !228
  %157 = getelementptr inbounds %struct.list_head, %struct.list_head* %156, i32 0, i32 1, !dbg !229
  store %struct.list_head* %155, %struct.list_head** %157, align 8, !dbg !230
  %158 = load i32, i32* %12, align 4, !dbg !231
  %159 = icmp sle i32 %158, 1, !dbg !233
  br i1 %159, label %160, label %161, !dbg !234

; <label>:160:                                    ; preds = %151
  br label %164, !dbg !235

; <label>:161:                                    ; preds = %151
  %162 = load i32, i32* %11, align 4, !dbg !236
  %163 = mul nsw i32 %162, 2, !dbg !236
  store i32 %163, i32* %11, align 4, !dbg !236
  br label %20, !dbg !237, !llvm.loop !239

; <label>:164:                                    ; preds = %160
  %165 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !240
  %166 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !241
  %167 = getelementptr inbounds %struct.list_head, %struct.list_head* %166, i32 0, i32 0, !dbg !242
  store %struct.list_head* %165, %struct.list_head** %167, align 8, !dbg !243
  %168 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !244
  %169 = getelementptr inbounds %struct.list_head, %struct.list_head* %168, i32 0, i32 1, !dbg !245
  %170 = load %struct.list_head*, %struct.list_head** %169, align 8, !dbg !245
  %171 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !246
  %172 = getelementptr inbounds %struct.list_head, %struct.list_head* %171, i32 0, i32 1, !dbg !247
  store %struct.list_head* %170, %struct.list_head** %172, align 8, !dbg !248
  %173 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !249
  %174 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !250
  %175 = getelementptr inbounds %struct.list_head, %struct.list_head* %174, i32 0, i32 1, !dbg !251
  %176 = load %struct.list_head*, %struct.list_head** %175, align 8, !dbg !251
  %177 = getelementptr inbounds %struct.list_head, %struct.list_head* %176, i32 0, i32 0, !dbg !252
  store %struct.list_head* %173, %struct.list_head** %177, align 8, !dbg !253
  %178 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !254
  %179 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !255
  %180 = getelementptr inbounds %struct.list_head, %struct.list_head* %179, i32 0, i32 1, !dbg !256
  store %struct.list_head* %178, %struct.list_head** %180, align 8, !dbg !257
  ret void, !dbg !258
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_head_del(%struct.list_head*) #2 !dbg !259 {
  %2 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %2, metadata !262, metadata !23), !dbg !263
  %3 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !264
  %4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !265
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !265
  %6 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !266
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !267
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !267
  call void @__list_del(%struct.list_head* %5, %struct.list_head* %8), !dbg !268
  %9 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !269
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !270
  store %struct.list_head* inttoptr (i64 1048832 to %struct.list_head*), %struct.list_head** %10, align 8, !dbg !271
  %11 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !272
  %12 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1, !dbg !273
  store %struct.list_head* inttoptr (i64 2097664 to %struct.list_head*), %struct.list_head** %12, align 8, !dbg !274
  ret void, !dbg !275
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__list_del(%struct.list_head*, %struct.list_head*) #2 !dbg !276 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %3, metadata !279, metadata !23), !dbg !280
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %4, metadata !281, metadata !23), !dbg !282
  %5 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !283
  %6 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !284
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 1, !dbg !285
  store %struct.list_head* %5, %struct.list_head** %7, align 8, !dbg !286
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !287
  %9 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !288
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !289
  store %struct.list_head* %8, %struct.list_head** %10, align 8, !dbg !290
  ret void, !dbg !291
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--list_head.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!8 = distinct !DISubprogram(name: "list_sort", scope: !9, file: !9, line: 24, type: !10, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DIFile(filename: "list_head.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !18}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !14, line: 60, size: 128, align: 64, elements: !15)
!14 = !DIFile(filename: "list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!15 = !{!16, !17}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !14, line: 61, baseType: !12, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !13, file: !14, line: 61, baseType: !12, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !12, !12}
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "head", arg: 1, scope: !8, file: !9, line: 24, type: !12)
!23 = !DIExpression()
!24 = !DILocation(line: 24, column: 34, scope: !8)
!25 = !DILocalVariable(name: "cmp", arg: 2, scope: !8, file: !9, line: 25, type: !18)
!26 = !DILocation(line: 25, column: 15, scope: !8)
!27 = !DILocalVariable(name: "p", scope: !8, file: !9, line: 27, type: !12)
!28 = !DILocation(line: 27, column: 20, scope: !8)
!29 = !DILocalVariable(name: "q", scope: !8, file: !9, line: 27, type: !12)
!30 = !DILocation(line: 27, column: 24, scope: !8)
!31 = !DILocalVariable(name: "e", scope: !8, file: !9, line: 27, type: !12)
!32 = !DILocation(line: 27, column: 28, scope: !8)
!33 = !DILocalVariable(name: "list", scope: !8, file: !9, line: 27, type: !12)
!34 = !DILocation(line: 27, column: 32, scope: !8)
!35 = !DILocalVariable(name: "tail", scope: !8, file: !9, line: 27, type: !12)
!36 = !DILocation(line: 27, column: 39, scope: !8)
!37 = !DILocalVariable(name: "oldhead", scope: !8, file: !9, line: 27, type: !12)
!38 = !DILocation(line: 27, column: 46, scope: !8)
!39 = !DILocalVariable(name: "insize", scope: !8, file: !9, line: 28, type: !21)
!40 = !DILocation(line: 28, column: 6, scope: !8)
!41 = !DILocalVariable(name: "nmerges", scope: !8, file: !9, line: 28, type: !21)
!42 = !DILocation(line: 28, column: 14, scope: !8)
!43 = !DILocalVariable(name: "psize", scope: !8, file: !9, line: 28, type: !21)
!44 = !DILocation(line: 28, column: 23, scope: !8)
!45 = !DILocalVariable(name: "qsize", scope: !8, file: !9, line: 28, type: !21)
!46 = !DILocation(line: 28, column: 30, scope: !8)
!47 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 28, type: !21)
!48 = !DILocation(line: 28, column: 37, scope: !8)
!49 = !DILocation(line: 30, column: 9, scope: !8)
!50 = !DILocation(line: 30, column: 15, scope: !8)
!51 = !DILocation(line: 30, column: 7, scope: !8)
!52 = !DILocation(line: 31, column: 16, scope: !8)
!53 = !DILocation(line: 31, column: 2, scope: !8)
!54 = !DILocation(line: 32, column: 9, scope: !8)
!55 = !DILocation(line: 34, column: 2, scope: !8)
!56 = !DILocation(line: 35, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !8, file: !9, line: 34, column: 12)
!58 = !DILocation(line: 35, column: 15, scope: !57)
!59 = !DILocation(line: 35, column: 5, scope: !57)
!60 = !DILocation(line: 36, column: 15, scope: !57)
!61 = !DILocation(line: 36, column: 8, scope: !57)
!62 = !DILocation(line: 37, column: 11, scope: !57)
!63 = !DILocation(line: 39, column: 3, scope: !57)
!64 = !DILocation(line: 39, column: 10, scope: !65)
!65 = !DILexicalBlockFile(scope: !57, file: !9, discriminator: 1)
!66 = !DILocation(line: 39, column: 3, scope: !65)
!67 = !DILocation(line: 40, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !57, file: !9, line: 39, column: 13)
!69 = !DILocation(line: 41, column: 8, scope: !68)
!70 = !DILocation(line: 41, column: 6, scope: !68)
!71 = !DILocation(line: 42, column: 10, scope: !68)
!72 = !DILocation(line: 43, column: 11, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !9, line: 43, column: 4)
!74 = !DILocation(line: 43, column: 9, scope: !73)
!75 = !DILocation(line: 43, column: 16, scope: !76)
!76 = !DILexicalBlockFile(scope: !77, file: !9, discriminator: 1)
!77 = distinct !DILexicalBlock(scope: !73, file: !9, line: 43, column: 4)
!78 = !DILocation(line: 43, column: 20, scope: !76)
!79 = !DILocation(line: 43, column: 18, scope: !76)
!80 = !DILocation(line: 43, column: 4, scope: !76)
!81 = !DILocation(line: 44, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !9, line: 43, column: 33)
!83 = !DILocation(line: 45, column: 9, scope: !82)
!84 = !DILocation(line: 45, column: 12, scope: !82)
!85 = !DILocation(line: 45, column: 20, scope: !82)
!86 = !DILocation(line: 45, column: 17, scope: !82)
!87 = !DILocation(line: 45, column: 9, scope: !88)
!88 = !DILexicalBlockFile(scope: !82, file: !9, discriminator: 1)
!89 = !DILocation(line: 45, column: 36, scope: !90)
!90 = !DILexicalBlockFile(scope: !82, file: !9, discriminator: 2)
!91 = !DILocation(line: 45, column: 39, scope: !90)
!92 = !DILocation(line: 45, column: 9, scope: !90)
!93 = !DILocation(line: 45, column: 9, scope: !94)
!94 = !DILexicalBlockFile(scope: !82, file: !9, discriminator: 3)
!95 = !DILocation(line: 45, column: 7, scope: !94)
!96 = !DILocation(line: 46, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !82, file: !9, line: 46, column: 9)
!98 = !DILocation(line: 46, column: 9, scope: !82)
!99 = !DILocation(line: 47, column: 6, scope: !97)
!100 = !DILocation(line: 48, column: 4, scope: !82)
!101 = !DILocation(line: 43, column: 29, scope: !102)
!102 = !DILexicalBlockFile(scope: !77, file: !9, discriminator: 2)
!103 = !DILocation(line: 43, column: 4, scope: !102)
!104 = distinct !{!104, !105}
!105 = !DILocation(line: 43, column: 4, scope: !68)
!106 = !DILocation(line: 50, column: 12, scope: !68)
!107 = !DILocation(line: 50, column: 10, scope: !68)
!108 = !DILocation(line: 51, column: 4, scope: !68)
!109 = !DILocation(line: 51, column: 11, scope: !110)
!110 = !DILexicalBlockFile(scope: !68, file: !9, discriminator: 1)
!111 = !DILocation(line: 51, column: 17, scope: !110)
!112 = !DILocation(line: 51, column: 21, scope: !110)
!113 = !DILocation(line: 51, column: 25, scope: !114)
!114 = !DILexicalBlockFile(scope: !68, file: !9, discriminator: 2)
!115 = !DILocation(line: 51, column: 31, scope: !114)
!116 = !DILocation(line: 51, column: 35, scope: !114)
!117 = !DILocation(line: 51, column: 38, scope: !118)
!118 = !DILexicalBlockFile(scope: !68, file: !9, discriminator: 3)
!119 = !DILocation(line: 51, column: 35, scope: !118)
!120 = !DILocation(line: 51, column: 21, scope: !121)
!121 = !DILexicalBlockFile(scope: !68, file: !9, discriminator: 4)
!122 = !DILocation(line: 51, column: 4, scope: !123)
!123 = !DILexicalBlockFile(scope: !68, file: !9, discriminator: 5)
!124 = !DILocation(line: 52, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !9, line: 52, column: 9)
!126 = distinct !DILexicalBlock(scope: !68, file: !9, line: 51, column: 42)
!127 = !DILocation(line: 52, column: 9, scope: !126)
!128 = !DILocation(line: 53, column: 10, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !9, line: 52, column: 17)
!130 = !DILocation(line: 53, column: 8, scope: !129)
!131 = !DILocation(line: 54, column: 10, scope: !129)
!132 = !DILocation(line: 54, column: 13, scope: !129)
!133 = !DILocation(line: 54, column: 8, scope: !129)
!134 = !DILocation(line: 55, column: 11, scope: !129)
!135 = !DILocation(line: 56, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !129, file: !9, line: 56, column: 10)
!137 = !DILocation(line: 56, column: 15, scope: !136)
!138 = !DILocation(line: 56, column: 12, scope: !136)
!139 = !DILocation(line: 56, column: 10, scope: !129)
!140 = !DILocation(line: 57, column: 9, scope: !136)
!141 = !DILocation(line: 57, column: 7, scope: !136)
!142 = !DILocation(line: 58, column: 5, scope: !129)
!143 = !DILocation(line: 58, column: 17, scope: !144)
!144 = !DILexicalBlockFile(scope: !145, file: !9, discriminator: 1)
!145 = distinct !DILexicalBlock(scope: !125, file: !9, line: 58, column: 16)
!146 = !DILocation(line: 58, column: 23, scope: !144)
!147 = !DILocation(line: 58, column: 27, scope: !148)
!148 = !DILexicalBlockFile(scope: !145, file: !9, discriminator: 2)
!149 = !DILocation(line: 58, column: 16, scope: !148)
!150 = !DILocation(line: 59, column: 10, scope: !151)
!151 = distinct !DILexicalBlock(scope: !145, file: !9, line: 58, column: 30)
!152 = !DILocation(line: 59, column: 8, scope: !151)
!153 = !DILocation(line: 60, column: 10, scope: !151)
!154 = !DILocation(line: 60, column: 13, scope: !151)
!155 = !DILocation(line: 60, column: 8, scope: !151)
!156 = !DILocation(line: 61, column: 11, scope: !151)
!157 = !DILocation(line: 62, column: 10, scope: !158)
!158 = distinct !DILexicalBlock(scope: !151, file: !9, line: 62, column: 10)
!159 = !DILocation(line: 62, column: 15, scope: !158)
!160 = !DILocation(line: 62, column: 12, scope: !158)
!161 = !DILocation(line: 62, column: 10, scope: !151)
!162 = !DILocation(line: 63, column: 9, scope: !158)
!163 = !DILocation(line: 63, column: 7, scope: !158)
!164 = !DILocation(line: 64, column: 5, scope: !151)
!165 = !DILocation(line: 64, column: 16, scope: !166)
!166 = !DILexicalBlockFile(scope: !167, file: !9, discriminator: 1)
!167 = distinct !DILexicalBlock(scope: !145, file: !9, line: 64, column: 16)
!168 = !DILocation(line: 64, column: 20, scope: !166)
!169 = !DILocation(line: 64, column: 23, scope: !166)
!170 = !DILocation(line: 64, column: 26, scope: !166)
!171 = !DILocation(line: 65, column: 10, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !9, line: 64, column: 32)
!173 = !DILocation(line: 65, column: 8, scope: !172)
!174 = !DILocation(line: 66, column: 10, scope: !172)
!175 = !DILocation(line: 66, column: 13, scope: !172)
!176 = !DILocation(line: 66, column: 8, scope: !172)
!177 = !DILocation(line: 67, column: 11, scope: !172)
!178 = !DILocation(line: 68, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !9, line: 68, column: 10)
!180 = !DILocation(line: 68, column: 15, scope: !179)
!181 = !DILocation(line: 68, column: 12, scope: !179)
!182 = !DILocation(line: 68, column: 10, scope: !172)
!183 = !DILocation(line: 69, column: 9, scope: !179)
!184 = !DILocation(line: 69, column: 7, scope: !179)
!185 = !DILocation(line: 70, column: 5, scope: !172)
!186 = !DILocation(line: 71, column: 10, scope: !187)
!187 = distinct !DILexicalBlock(scope: !167, file: !9, line: 70, column: 12)
!188 = !DILocation(line: 71, column: 8, scope: !187)
!189 = !DILocation(line: 72, column: 10, scope: !187)
!190 = !DILocation(line: 72, column: 13, scope: !187)
!191 = !DILocation(line: 72, column: 8, scope: !187)
!192 = !DILocation(line: 73, column: 11, scope: !187)
!193 = !DILocation(line: 74, column: 10, scope: !194)
!194 = distinct !DILexicalBlock(scope: !187, file: !9, line: 74, column: 10)
!195 = !DILocation(line: 74, column: 15, scope: !194)
!196 = !DILocation(line: 74, column: 12, scope: !194)
!197 = !DILocation(line: 74, column: 10, scope: !187)
!198 = !DILocation(line: 75, column: 9, scope: !194)
!199 = !DILocation(line: 75, column: 7, scope: !194)
!200 = !DILocation(line: 77, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !126, file: !9, line: 77, column: 9)
!202 = !DILocation(line: 77, column: 9, scope: !126)
!203 = !DILocation(line: 78, column: 19, scope: !201)
!204 = !DILocation(line: 78, column: 6, scope: !201)
!205 = !DILocation(line: 78, column: 12, scope: !201)
!206 = !DILocation(line: 78, column: 17, scope: !201)
!207 = !DILocation(line: 80, column: 13, scope: !201)
!208 = !DILocation(line: 80, column: 11, scope: !201)
!209 = !DILocation(line: 81, column: 15, scope: !126)
!210 = !DILocation(line: 81, column: 5, scope: !126)
!211 = !DILocation(line: 81, column: 8, scope: !126)
!212 = !DILocation(line: 81, column: 13, scope: !126)
!213 = !DILocation(line: 82, column: 12, scope: !126)
!214 = !DILocation(line: 82, column: 10, scope: !126)
!215 = !DILocation(line: 51, column: 4, scope: !216)
!216 = !DILexicalBlockFile(scope: !68, file: !9, discriminator: 6)
!217 = distinct !{!217, !108}
!218 = !DILocation(line: 84, column: 8, scope: !68)
!219 = !DILocation(line: 84, column: 6, scope: !68)
!220 = !DILocation(line: 39, column: 3, scope: !221)
!221 = !DILexicalBlockFile(scope: !57, file: !9, discriminator: 2)
!222 = distinct !{!222, !63}
!223 = !DILocation(line: 87, column: 16, scope: !57)
!224 = !DILocation(line: 87, column: 3, scope: !57)
!225 = !DILocation(line: 87, column: 9, scope: !57)
!226 = !DILocation(line: 87, column: 14, scope: !57)
!227 = !DILocation(line: 88, column: 16, scope: !57)
!228 = !DILocation(line: 88, column: 3, scope: !57)
!229 = !DILocation(line: 88, column: 9, scope: !57)
!230 = !DILocation(line: 88, column: 14, scope: !57)
!231 = !DILocation(line: 90, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !57, file: !9, line: 90, column: 7)
!233 = !DILocation(line: 90, column: 15, scope: !232)
!234 = !DILocation(line: 90, column: 7, scope: !57)
!235 = !DILocation(line: 91, column: 4, scope: !232)
!236 = !DILocation(line: 93, column: 10, scope: !57)
!237 = !DILocation(line: 34, column: 2, scope: !238)
!238 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 1)
!239 = distinct !{!239, !55}
!240 = !DILocation(line: 96, column: 15, scope: !8)
!241 = !DILocation(line: 96, column: 2, scope: !8)
!242 = !DILocation(line: 96, column: 8, scope: !8)
!243 = !DILocation(line: 96, column: 13, scope: !8)
!244 = !DILocation(line: 97, column: 15, scope: !8)
!245 = !DILocation(line: 97, column: 21, scope: !8)
!246 = !DILocation(line: 97, column: 2, scope: !8)
!247 = !DILocation(line: 97, column: 8, scope: !8)
!248 = !DILocation(line: 97, column: 13, scope: !8)
!249 = !DILocation(line: 98, column: 21, scope: !8)
!250 = !DILocation(line: 98, column: 2, scope: !8)
!251 = !DILocation(line: 98, column: 8, scope: !8)
!252 = !DILocation(line: 98, column: 14, scope: !8)
!253 = !DILocation(line: 98, column: 19, scope: !8)
!254 = !DILocation(line: 99, column: 15, scope: !8)
!255 = !DILocation(line: 99, column: 2, scope: !8)
!256 = !DILocation(line: 99, column: 8, scope: !8)
!257 = !DILocation(line: 99, column: 13, scope: !8)
!258 = !DILocation(line: 100, column: 1, scope: !8)
!259 = distinct !DISubprogram(name: "list_head_del", scope: !14, file: !14, line: 136, type: !260, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !12}
!262 = !DILocalVariable(name: "entry", arg: 1, scope: !259, file: !14, line: 136, type: !12)
!263 = !DILocation(line: 136, column: 52, scope: !259)
!264 = !DILocation(line: 138, column: 13, scope: !259)
!265 = !DILocation(line: 138, column: 20, scope: !259)
!266 = !DILocation(line: 138, column: 26, scope: !259)
!267 = !DILocation(line: 138, column: 33, scope: !259)
!268 = !DILocation(line: 138, column: 2, scope: !259)
!269 = !DILocation(line: 139, column: 2, scope: !259)
!270 = !DILocation(line: 139, column: 9, scope: !259)
!271 = !DILocation(line: 139, column: 14, scope: !259)
!272 = !DILocation(line: 140, column: 2, scope: !259)
!273 = !DILocation(line: 140, column: 9, scope: !259)
!274 = !DILocation(line: 140, column: 14, scope: !259)
!275 = !DILocation(line: 141, column: 1, scope: !259)
!276 = distinct !DISubprogram(name: "__list_del", scope: !14, file: !14, line: 124, type: !277, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !12, !12}
!279 = !DILocalVariable(name: "prev", arg: 1, scope: !276, file: !14, line: 124, type: !12)
!280 = !DILocation(line: 124, column: 50, scope: !276)
!281 = !DILocalVariable(name: "next", arg: 2, scope: !276, file: !14, line: 124, type: !12)
!282 = !DILocation(line: 124, column: 75, scope: !276)
!283 = !DILocation(line: 126, column: 15, scope: !276)
!284 = !DILocation(line: 126, column: 2, scope: !276)
!285 = !DILocation(line: 126, column: 8, scope: !276)
!286 = !DILocation(line: 126, column: 13, scope: !276)
!287 = !DILocation(line: 127, column: 15, scope: !276)
!288 = !DILocation(line: 127, column: 2, scope: !276)
!289 = !DILocation(line: 127, column: 8, scope: !276)
!290 = !DILocation(line: 127, column: 13, scope: !276)
!291 = !DILocation(line: 128, column: 1, scope: !276)
