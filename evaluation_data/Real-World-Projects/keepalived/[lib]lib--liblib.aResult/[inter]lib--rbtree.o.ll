; ModuleID = './[inter]lib--rbtree.o.i'
source_filename = "./[inter]lib--rbtree.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }

; Function Attrs: nounwind uwtable
define void @rb_insert_color(%struct.rb_node*, %struct.rb_root*) #0 !dbg !16 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !24, metadata !25), !dbg !26
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %4, metadata !27, metadata !25), !dbg !28
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !29, metadata !25), !dbg !30
  call void @llvm.dbg.declare(metadata %struct.rb_node** %6, metadata !31, metadata !25), !dbg !32
  br label %11, !dbg !33

; <label>:11:                                     ; preds = %156, %127, %68, %2
  %12 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !34
  %13 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 0, !dbg !36
  %14 = load i64, i64* %13, align 8, !dbg !36
  %15 = and i64 %14, -4, !dbg !37
  %16 = inttoptr i64 %15 to %struct.rb_node*, !dbg !38
  store %struct.rb_node* %16, %struct.rb_node** %5, align 8, !dbg !39
  %17 = icmp ne %struct.rb_node* %16, null, !dbg !39
  br i1 %17, label %18, label %25, !dbg !40

; <label>:18:                                     ; preds = %11
  %19 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !41
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 0, !dbg !43
  %21 = load i64, i64* %20, align 8, !dbg !43
  %22 = and i64 %21, 1, !dbg !44
  %23 = icmp ne i64 %22, 0, !dbg !45
  %24 = xor i1 %23, true, !dbg !45
  br label %25

; <label>:25:                                     ; preds = %18, %11
  %26 = phi i1 [ false, %11 ], [ %24, %18 ]
  br i1 %26, label %27, label %157, !dbg !46

; <label>:27:                                     ; preds = %25
  %28 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !48
  %29 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %28, i32 0, i32 0, !dbg !50
  %30 = load i64, i64* %29, align 8, !dbg !50
  %31 = and i64 %30, -4, !dbg !51
  %32 = inttoptr i64 %31 to %struct.rb_node*, !dbg !52
  store %struct.rb_node* %32, %struct.rb_node** %6, align 8, !dbg !53
  %33 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !54
  %34 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !56
  %35 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %34, i32 0, i32 2, !dbg !57
  %36 = load %struct.rb_node*, %struct.rb_node** %35, align 8, !dbg !57
  %37 = icmp eq %struct.rb_node* %33, %36, !dbg !58
  br i1 %37, label %38, label %97, !dbg !59

; <label>:38:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.rb_node** %7, metadata !60, metadata !25), !dbg !63
  %39 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !64
  %40 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %39, i32 0, i32 1, !dbg !65
  %41 = load %struct.rb_node*, %struct.rb_node** %40, align 8, !dbg !65
  store %struct.rb_node* %41, %struct.rb_node** %7, align 8, !dbg !63
  %42 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !66
  %43 = icmp ne %struct.rb_node* %42, null, !dbg !66
  br i1 %43, label %44, label %70, !dbg !68

; <label>:44:                                     ; preds = %38
  %45 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !69
  %46 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %45, i32 0, i32 0, !dbg !71
  %47 = load i64, i64* %46, align 8, !dbg !71
  %48 = and i64 %47, 1, !dbg !72
  %49 = icmp ne i64 %48, 0, !dbg !72
  br i1 %49, label %70, label %50, !dbg !73

; <label>:50:                                     ; preds = %44
  br label %51, !dbg !74, !llvm.loop !76

; <label>:51:                                     ; preds = %50
  %52 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !77
  %53 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %52, i32 0, i32 0, !dbg !80
  %54 = load i64, i64* %53, align 8, !dbg !81
  %55 = or i64 %54, 1, !dbg !81
  store i64 %55, i64* %53, align 8, !dbg !81
  br label %56, !dbg !82

; <label>:56:                                     ; preds = %51
  br label %57, !dbg !83, !llvm.loop !84

; <label>:57:                                     ; preds = %56
  %58 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !85
  %59 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %58, i32 0, i32 0, !dbg !88
  %60 = load i64, i64* %59, align 8, !dbg !89
  %61 = or i64 %60, 1, !dbg !89
  store i64 %61, i64* %59, align 8, !dbg !89
  br label %62, !dbg !90

; <label>:62:                                     ; preds = %57
  br label %63, !dbg !91, !llvm.loop !92

; <label>:63:                                     ; preds = %62
  %64 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !93
  %65 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %64, i32 0, i32 0, !dbg !96
  %66 = load i64, i64* %65, align 8, !dbg !97
  %67 = and i64 %66, -2, !dbg !97
  store i64 %67, i64* %65, align 8, !dbg !97
  br label %68, !dbg !98

; <label>:68:                                     ; preds = %63
  %69 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !99
  store %struct.rb_node* %69, %struct.rb_node** %3, align 8, !dbg !100
  br label %11, !dbg !101, !llvm.loop !102

; <label>:70:                                     ; preds = %44, %38
  %71 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !103
  %72 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %71, i32 0, i32 1, !dbg !105
  %73 = load %struct.rb_node*, %struct.rb_node** %72, align 8, !dbg !105
  %74 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !106
  %75 = icmp eq %struct.rb_node* %73, %74, !dbg !107
  br i1 %75, label %76, label %82, !dbg !108

; <label>:76:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata %struct.rb_node** %8, metadata !109, metadata !25), !dbg !111
  %77 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !112
  %78 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !113
  call void @__rb_rotate_left(%struct.rb_node* %77, %struct.rb_root* %78), !dbg !114
  %79 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !115
  store %struct.rb_node* %79, %struct.rb_node** %8, align 8, !dbg !116
  %80 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !117
  store %struct.rb_node* %80, %struct.rb_node** %5, align 8, !dbg !118
  %81 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !119
  store %struct.rb_node* %81, %struct.rb_node** %3, align 8, !dbg !120
  br label %82, !dbg !121

; <label>:82:                                     ; preds = %76, %70
  br label %83, !dbg !122, !llvm.loop !123

; <label>:83:                                     ; preds = %82
  %84 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !124
  %85 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %84, i32 0, i32 0, !dbg !127
  %86 = load i64, i64* %85, align 8, !dbg !128
  %87 = or i64 %86, 1, !dbg !128
  store i64 %87, i64* %85, align 8, !dbg !128
  br label %88, !dbg !129

; <label>:88:                                     ; preds = %83
  br label %89, !dbg !130, !llvm.loop !131

; <label>:89:                                     ; preds = %88
  %90 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !132
  %91 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %90, i32 0, i32 0, !dbg !135
  %92 = load i64, i64* %91, align 8, !dbg !136
  %93 = and i64 %92, -2, !dbg !136
  store i64 %93, i64* %91, align 8, !dbg !136
  br label %94, !dbg !137

; <label>:94:                                     ; preds = %89
  %95 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !138
  %96 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !139
  call void @__rb_rotate_right(%struct.rb_node* %95, %struct.rb_root* %96), !dbg !140
  br label %156, !dbg !141

; <label>:97:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !142, metadata !25), !dbg !145
  %98 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !146
  %99 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %98, i32 0, i32 2, !dbg !147
  %100 = load %struct.rb_node*, %struct.rb_node** %99, align 8, !dbg !147
  store %struct.rb_node* %100, %struct.rb_node** %9, align 8, !dbg !145
  %101 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !148
  %102 = icmp ne %struct.rb_node* %101, null, !dbg !148
  br i1 %102, label %103, label %129, !dbg !150

; <label>:103:                                    ; preds = %97
  %104 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !151
  %105 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %104, i32 0, i32 0, !dbg !153
  %106 = load i64, i64* %105, align 8, !dbg !153
  %107 = and i64 %106, 1, !dbg !154
  %108 = icmp ne i64 %107, 0, !dbg !154
  br i1 %108, label %129, label %109, !dbg !155

; <label>:109:                                    ; preds = %103
  br label %110, !dbg !156, !llvm.loop !158

; <label>:110:                                    ; preds = %109
  %111 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !159
  %112 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %111, i32 0, i32 0, !dbg !162
  %113 = load i64, i64* %112, align 8, !dbg !163
  %114 = or i64 %113, 1, !dbg !163
  store i64 %114, i64* %112, align 8, !dbg !163
  br label %115, !dbg !164

; <label>:115:                                    ; preds = %110
  br label %116, !dbg !165, !llvm.loop !166

; <label>:116:                                    ; preds = %115
  %117 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !167
  %118 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %117, i32 0, i32 0, !dbg !170
  %119 = load i64, i64* %118, align 8, !dbg !171
  %120 = or i64 %119, 1, !dbg !171
  store i64 %120, i64* %118, align 8, !dbg !171
  br label %121, !dbg !172

; <label>:121:                                    ; preds = %116
  br label %122, !dbg !173, !llvm.loop !174

; <label>:122:                                    ; preds = %121
  %123 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !175
  %124 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %123, i32 0, i32 0, !dbg !178
  %125 = load i64, i64* %124, align 8, !dbg !179
  %126 = and i64 %125, -2, !dbg !179
  store i64 %126, i64* %124, align 8, !dbg !179
  br label %127, !dbg !180

; <label>:127:                                    ; preds = %122
  %128 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !181
  store %struct.rb_node* %128, %struct.rb_node** %3, align 8, !dbg !182
  br label %11, !dbg !183, !llvm.loop !102

; <label>:129:                                    ; preds = %103, %97
  %130 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !184
  %131 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %130, i32 0, i32 2, !dbg !186
  %132 = load %struct.rb_node*, %struct.rb_node** %131, align 8, !dbg !186
  %133 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !187
  %134 = icmp eq %struct.rb_node* %132, %133, !dbg !188
  br i1 %134, label %135, label %141, !dbg !189

; <label>:135:                                    ; preds = %129
  call void @llvm.dbg.declare(metadata %struct.rb_node** %10, metadata !190, metadata !25), !dbg !192
  %136 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !193
  %137 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !194
  call void @__rb_rotate_right(%struct.rb_node* %136, %struct.rb_root* %137), !dbg !195
  %138 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !196
  store %struct.rb_node* %138, %struct.rb_node** %10, align 8, !dbg !197
  %139 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !198
  store %struct.rb_node* %139, %struct.rb_node** %5, align 8, !dbg !199
  %140 = load %struct.rb_node*, %struct.rb_node** %10, align 8, !dbg !200
  store %struct.rb_node* %140, %struct.rb_node** %3, align 8, !dbg !201
  br label %141, !dbg !202

; <label>:141:                                    ; preds = %135, %129
  br label %142, !dbg !203, !llvm.loop !204

; <label>:142:                                    ; preds = %141
  %143 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !205
  %144 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %143, i32 0, i32 0, !dbg !208
  %145 = load i64, i64* %144, align 8, !dbg !209
  %146 = or i64 %145, 1, !dbg !209
  store i64 %146, i64* %144, align 8, !dbg !209
  br label %147, !dbg !210

; <label>:147:                                    ; preds = %142
  br label %148, !dbg !211, !llvm.loop !212

; <label>:148:                                    ; preds = %147
  %149 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !213
  %150 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %149, i32 0, i32 0, !dbg !216
  %151 = load i64, i64* %150, align 8, !dbg !217
  %152 = and i64 %151, -2, !dbg !217
  store i64 %152, i64* %150, align 8, !dbg !217
  br label %153, !dbg !218

; <label>:153:                                    ; preds = %148
  %154 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !219
  %155 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !220
  call void @__rb_rotate_left(%struct.rb_node* %154, %struct.rb_root* %155), !dbg !221
  br label %156

; <label>:156:                                    ; preds = %153, %94
  br label %11, !dbg !222, !llvm.loop !102

; <label>:157:                                    ; preds = %25
  br label %158, !dbg !224, !llvm.loop !225

; <label>:158:                                    ; preds = %157
  %159 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !226
  %160 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %159, i32 0, i32 0, !dbg !229
  %161 = load %struct.rb_node*, %struct.rb_node** %160, align 8, !dbg !229
  %162 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %161, i32 0, i32 0, !dbg !230
  %163 = load i64, i64* %162, align 8, !dbg !231
  %164 = or i64 %163, 1, !dbg !231
  store i64 %164, i64* %162, align 8, !dbg !231
  br label %165, !dbg !232

; <label>:165:                                    ; preds = %158
  ret void, !dbg !233
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @__rb_rotate_left(%struct.rb_node*, %struct.rb_root*) #0 !dbg !234 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !235, metadata !25), !dbg !236
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %4, metadata !237, metadata !25), !dbg !238
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !239, metadata !25), !dbg !240
  %7 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !241
  %8 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %7, i32 0, i32 1, !dbg !242
  %9 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !242
  store %struct.rb_node* %9, %struct.rb_node** %5, align 8, !dbg !240
  call void @llvm.dbg.declare(metadata %struct.rb_node** %6, metadata !243, metadata !25), !dbg !244
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !245
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 0, !dbg !246
  %12 = load i64, i64* %11, align 8, !dbg !246
  %13 = and i64 %12, -4, !dbg !247
  %14 = inttoptr i64 %13 to %struct.rb_node*, !dbg !248
  store %struct.rb_node* %14, %struct.rb_node** %6, align 8, !dbg !244
  %15 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !249
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 2, !dbg !251
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8, !dbg !251
  %18 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !252
  %19 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %18, i32 0, i32 1, !dbg !253
  store %struct.rb_node* %17, %struct.rb_node** %19, align 8, !dbg !254
  %20 = icmp ne %struct.rb_node* %17, null, !dbg !254
  br i1 %20, label %21, label %26, !dbg !255

; <label>:21:                                     ; preds = %2
  %22 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !256
  %23 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %22, i32 0, i32 2, !dbg !257
  %24 = load %struct.rb_node*, %struct.rb_node** %23, align 8, !dbg !257
  %25 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !258
  call void @rb_set_parent(%struct.rb_node* %24, %struct.rb_node* %25), !dbg !259
  br label %26, !dbg !259

; <label>:26:                                     ; preds = %21, %2
  %27 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !260
  %28 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !261
  %29 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %28, i32 0, i32 2, !dbg !262
  store %struct.rb_node* %27, %struct.rb_node** %29, align 8, !dbg !263
  %30 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !264
  %31 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !265
  call void @rb_set_parent(%struct.rb_node* %30, %struct.rb_node* %31), !dbg !266
  %32 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !267
  %33 = icmp ne %struct.rb_node* %32, null, !dbg !267
  br i1 %33, label %34, label %49, !dbg !269

; <label>:34:                                     ; preds = %26
  %35 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !270
  %36 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !273
  %37 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %36, i32 0, i32 2, !dbg !274
  %38 = load %struct.rb_node*, %struct.rb_node** %37, align 8, !dbg !274
  %39 = icmp eq %struct.rb_node* %35, %38, !dbg !275
  br i1 %39, label %40, label %44, !dbg !276

; <label>:40:                                     ; preds = %34
  %41 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !277
  %42 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !278
  %43 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %42, i32 0, i32 2, !dbg !279
  store %struct.rb_node* %41, %struct.rb_node** %43, align 8, !dbg !280
  br label %48, !dbg !278

; <label>:44:                                     ; preds = %34
  %45 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !281
  %46 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !282
  %47 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %46, i32 0, i32 1, !dbg !283
  store %struct.rb_node* %45, %struct.rb_node** %47, align 8, !dbg !284
  br label %48

; <label>:48:                                     ; preds = %44, %40
  br label %53, !dbg !285

; <label>:49:                                     ; preds = %26
  %50 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !286
  %51 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !287
  %52 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %51, i32 0, i32 0, !dbg !288
  store %struct.rb_node* %50, %struct.rb_node** %52, align 8, !dbg !289
  br label %53

; <label>:53:                                     ; preds = %49, %48
  %54 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !290
  %55 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !291
  call void @rb_set_parent(%struct.rb_node* %54, %struct.rb_node* %55), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: nounwind uwtable
define internal void @__rb_rotate_right(%struct.rb_node*, %struct.rb_root*) #0 !dbg !294 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !295, metadata !25), !dbg !296
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %4, metadata !297, metadata !25), !dbg !298
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !299, metadata !25), !dbg !300
  %7 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !301
  %8 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %7, i32 0, i32 2, !dbg !302
  %9 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !302
  store %struct.rb_node* %9, %struct.rb_node** %5, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata %struct.rb_node** %6, metadata !303, metadata !25), !dbg !304
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !305
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 0, !dbg !306
  %12 = load i64, i64* %11, align 8, !dbg !306
  %13 = and i64 %12, -4, !dbg !307
  %14 = inttoptr i64 %13 to %struct.rb_node*, !dbg !308
  store %struct.rb_node* %14, %struct.rb_node** %6, align 8, !dbg !304
  %15 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !309
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 1, !dbg !311
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8, !dbg !311
  %18 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !312
  %19 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %18, i32 0, i32 2, !dbg !313
  store %struct.rb_node* %17, %struct.rb_node** %19, align 8, !dbg !314
  %20 = icmp ne %struct.rb_node* %17, null, !dbg !314
  br i1 %20, label %21, label %26, !dbg !315

; <label>:21:                                     ; preds = %2
  %22 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !316
  %23 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %22, i32 0, i32 1, !dbg !317
  %24 = load %struct.rb_node*, %struct.rb_node** %23, align 8, !dbg !317
  %25 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !318
  call void @rb_set_parent(%struct.rb_node* %24, %struct.rb_node* %25), !dbg !319
  br label %26, !dbg !319

; <label>:26:                                     ; preds = %21, %2
  %27 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !320
  %28 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !321
  %29 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %28, i32 0, i32 1, !dbg !322
  store %struct.rb_node* %27, %struct.rb_node** %29, align 8, !dbg !323
  %30 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !324
  %31 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !325
  call void @rb_set_parent(%struct.rb_node* %30, %struct.rb_node* %31), !dbg !326
  %32 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !327
  %33 = icmp ne %struct.rb_node* %32, null, !dbg !327
  br i1 %33, label %34, label %49, !dbg !329

; <label>:34:                                     ; preds = %26
  %35 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !330
  %36 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !333
  %37 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %36, i32 0, i32 1, !dbg !334
  %38 = load %struct.rb_node*, %struct.rb_node** %37, align 8, !dbg !334
  %39 = icmp eq %struct.rb_node* %35, %38, !dbg !335
  br i1 %39, label %40, label %44, !dbg !336

; <label>:40:                                     ; preds = %34
  %41 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !337
  %42 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !338
  %43 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %42, i32 0, i32 1, !dbg !339
  store %struct.rb_node* %41, %struct.rb_node** %43, align 8, !dbg !340
  br label %48, !dbg !338

; <label>:44:                                     ; preds = %34
  %45 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !341
  %46 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !342
  %47 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %46, i32 0, i32 2, !dbg !343
  store %struct.rb_node* %45, %struct.rb_node** %47, align 8, !dbg !344
  br label %48

; <label>:48:                                     ; preds = %44, %40
  br label %53, !dbg !345

; <label>:49:                                     ; preds = %26
  %50 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !346
  %51 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !347
  %52 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %51, i32 0, i32 0, !dbg !348
  store %struct.rb_node* %50, %struct.rb_node** %52, align 8, !dbg !349
  br label %53

; <label>:53:                                     ; preds = %49, %48
  %54 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !350
  %55 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !351
  call void @rb_set_parent(%struct.rb_node* %54, %struct.rb_node* %55), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: nounwind uwtable
define void @rb_erase(%struct.rb_node*, %struct.rb_root*) #0 !dbg !354 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !355, metadata !25), !dbg !356
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %4, metadata !357, metadata !25), !dbg !358
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !359, metadata !25), !dbg !360
  call void @llvm.dbg.declare(metadata %struct.rb_node** %6, metadata !361, metadata !25), !dbg !362
  call void @llvm.dbg.declare(metadata i32* %7, metadata !363, metadata !25), !dbg !365
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !366
  %11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 2, !dbg !368
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8, !dbg !368
  %13 = icmp ne %struct.rb_node* %12, null, !dbg !366
  br i1 %13, label %18, label %14, !dbg !369

; <label>:14:                                     ; preds = %2
  %15 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !370
  %16 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 1, !dbg !371
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8, !dbg !371
  store %struct.rb_node* %17, %struct.rb_node** %5, align 8, !dbg !372
  br label %140, !dbg !373

; <label>:18:                                     ; preds = %2
  %19 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !374
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 1, !dbg !376
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8, !dbg !376
  %22 = icmp ne %struct.rb_node* %21, null, !dbg !374
  br i1 %22, label %27, label %23, !dbg !377

; <label>:23:                                     ; preds = %18
  %24 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !378
  %25 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i32 0, i32 2, !dbg !379
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8, !dbg !379
  store %struct.rb_node* %26, %struct.rb_node** %5, align 8, !dbg !380
  br label %139, !dbg !381

; <label>:27:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.rb_node** %8, metadata !382, metadata !25), !dbg !384
  %28 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !385
  store %struct.rb_node* %28, %struct.rb_node** %8, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !386, metadata !25), !dbg !387
  %29 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !388
  %30 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i32 0, i32 1, !dbg !389
  %31 = load %struct.rb_node*, %struct.rb_node** %30, align 8, !dbg !389
  store %struct.rb_node* %31, %struct.rb_node** %3, align 8, !dbg !390
  br label %32, !dbg !391

; <label>:32:                                     ; preds = %37, %27
  %33 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !392
  %34 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %33, i32 0, i32 2, !dbg !394
  %35 = load %struct.rb_node*, %struct.rb_node** %34, align 8, !dbg !394
  store %struct.rb_node* %35, %struct.rb_node** %9, align 8, !dbg !395
  %36 = icmp ne %struct.rb_node* %35, null, !dbg !396
  br i1 %36, label %37, label %39, !dbg !397

; <label>:37:                                     ; preds = %32
  %38 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !398
  store %struct.rb_node* %38, %struct.rb_node** %3, align 8, !dbg !399
  br label %32, !dbg !400, !llvm.loop !402

; <label>:39:                                     ; preds = %32
  %40 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !403
  %41 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %40, i32 0, i32 1, !dbg !404
  %42 = load %struct.rb_node*, %struct.rb_node** %41, align 8, !dbg !404
  store %struct.rb_node* %42, %struct.rb_node** %5, align 8, !dbg !405
  %43 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !406
  %44 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %43, i32 0, i32 0, !dbg !407
  %45 = load i64, i64* %44, align 8, !dbg !407
  %46 = and i64 %45, -4, !dbg !408
  %47 = inttoptr i64 %46 to %struct.rb_node*, !dbg !409
  store %struct.rb_node* %47, %struct.rb_node** %6, align 8, !dbg !410
  %48 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !411
  %49 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %48, i32 0, i32 0, !dbg !412
  %50 = load i64, i64* %49, align 8, !dbg !412
  %51 = and i64 %50, 1, !dbg !413
  %52 = trunc i64 %51 to i32, !dbg !414
  store i32 %52, i32* %7, align 4, !dbg !415
  %53 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !416
  %54 = icmp ne %struct.rb_node* %53, null, !dbg !416
  br i1 %54, label %55, label %58, !dbg !418

; <label>:55:                                     ; preds = %39
  %56 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !419
  %57 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !420
  call void @rb_set_parent(%struct.rb_node* %56, %struct.rb_node* %57), !dbg !421
  br label %58, !dbg !421

; <label>:58:                                     ; preds = %55, %39
  %59 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !422
  %60 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !424
  %61 = icmp eq %struct.rb_node* %59, %60, !dbg !425
  br i1 %61, label %62, label %67, !dbg !426

; <label>:62:                                     ; preds = %58
  %63 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !427
  %64 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !429
  %65 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %64, i32 0, i32 1, !dbg !430
  store %struct.rb_node* %63, %struct.rb_node** %65, align 8, !dbg !431
  %66 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !432
  store %struct.rb_node* %66, %struct.rb_node** %6, align 8, !dbg !433
  br label %71, !dbg !434

; <label>:67:                                     ; preds = %58
  %68 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !435
  %69 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !436
  %70 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %69, i32 0, i32 2, !dbg !437
  store %struct.rb_node* %68, %struct.rb_node** %70, align 8, !dbg !438
  br label %71

; <label>:71:                                     ; preds = %67, %62
  %72 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !439
  %73 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %72, i32 0, i32 0, !dbg !440
  %74 = load i64, i64* %73, align 8, !dbg !440
  %75 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !441
  %76 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %75, i32 0, i32 0, !dbg !442
  store i64 %74, i64* %76, align 8, !dbg !443
  %77 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !444
  %78 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %77, i32 0, i32 1, !dbg !445
  %79 = load %struct.rb_node*, %struct.rb_node** %78, align 8, !dbg !445
  %80 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !446
  %81 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %80, i32 0, i32 1, !dbg !447
  store %struct.rb_node* %79, %struct.rb_node** %81, align 8, !dbg !448
  %82 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !449
  %83 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %82, i32 0, i32 2, !dbg !450
  %84 = load %struct.rb_node*, %struct.rb_node** %83, align 8, !dbg !450
  %85 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !451
  %86 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %85, i32 0, i32 2, !dbg !452
  store %struct.rb_node* %84, %struct.rb_node** %86, align 8, !dbg !453
  %87 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !454
  %88 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %87, i32 0, i32 0, !dbg !456
  %89 = load i64, i64* %88, align 8, !dbg !456
  %90 = and i64 %89, -4, !dbg !457
  %91 = inttoptr i64 %90 to %struct.rb_node*, !dbg !458
  %92 = icmp ne %struct.rb_node* %91, null, !dbg !458
  br i1 %92, label %93, label %120, !dbg !459

; <label>:93:                                     ; preds = %71
  %94 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !460
  %95 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %94, i32 0, i32 0, !dbg !463
  %96 = load i64, i64* %95, align 8, !dbg !463
  %97 = and i64 %96, -4, !dbg !464
  %98 = inttoptr i64 %97 to %struct.rb_node*, !dbg !465
  %99 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %98, i32 0, i32 2, !dbg !466
  %100 = load %struct.rb_node*, %struct.rb_node** %99, align 8, !dbg !466
  %101 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !467
  %102 = icmp eq %struct.rb_node* %100, %101, !dbg !468
  br i1 %102, label %103, label %111, !dbg !469

; <label>:103:                                    ; preds = %93
  %104 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !470
  %105 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !471
  %106 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %105, i32 0, i32 0, !dbg !472
  %107 = load i64, i64* %106, align 8, !dbg !472
  %108 = and i64 %107, -4, !dbg !473
  %109 = inttoptr i64 %108 to %struct.rb_node*, !dbg !474
  %110 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %109, i32 0, i32 2, !dbg !475
  store %struct.rb_node* %104, %struct.rb_node** %110, align 8, !dbg !476
  br label %119, !dbg !477

; <label>:111:                                    ; preds = %93
  %112 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !478
  %113 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !479
  %114 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %113, i32 0, i32 0, !dbg !480
  %115 = load i64, i64* %114, align 8, !dbg !480
  %116 = and i64 %115, -4, !dbg !481
  %117 = inttoptr i64 %116 to %struct.rb_node*, !dbg !482
  %118 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %117, i32 0, i32 1, !dbg !483
  store %struct.rb_node* %112, %struct.rb_node** %118, align 8, !dbg !484
  br label %119

; <label>:119:                                    ; preds = %111, %103
  br label %124, !dbg !485

; <label>:120:                                    ; preds = %71
  %121 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !486
  %122 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !487
  %123 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %122, i32 0, i32 0, !dbg !488
  store %struct.rb_node* %121, %struct.rb_node** %123, align 8, !dbg !489
  br label %124

; <label>:124:                                    ; preds = %120, %119
  %125 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !490
  %126 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %125, i32 0, i32 2, !dbg !491
  %127 = load %struct.rb_node*, %struct.rb_node** %126, align 8, !dbg !491
  %128 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !492
  call void @rb_set_parent(%struct.rb_node* %127, %struct.rb_node* %128), !dbg !493
  %129 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !494
  %130 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %129, i32 0, i32 1, !dbg !496
  %131 = load %struct.rb_node*, %struct.rb_node** %130, align 8, !dbg !496
  %132 = icmp ne %struct.rb_node* %131, null, !dbg !494
  br i1 %132, label %133, label %138, !dbg !497

; <label>:133:                                    ; preds = %124
  %134 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !498
  %135 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %134, i32 0, i32 1, !dbg !499
  %136 = load %struct.rb_node*, %struct.rb_node** %135, align 8, !dbg !499
  %137 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !500
  call void @rb_set_parent(%struct.rb_node* %136, %struct.rb_node* %137), !dbg !501
  br label %138, !dbg !501

; <label>:138:                                    ; preds = %133, %124
  br label %179, !dbg !502

; <label>:139:                                    ; preds = %23
  br label %140

; <label>:140:                                    ; preds = %139, %14
  %141 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !503
  %142 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %141, i32 0, i32 0, !dbg !504
  %143 = load i64, i64* %142, align 8, !dbg !504
  %144 = and i64 %143, -4, !dbg !505
  %145 = inttoptr i64 %144 to %struct.rb_node*, !dbg !506
  store %struct.rb_node* %145, %struct.rb_node** %6, align 8, !dbg !507
  %146 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !508
  %147 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %146, i32 0, i32 0, !dbg !509
  %148 = load i64, i64* %147, align 8, !dbg !509
  %149 = and i64 %148, 1, !dbg !510
  %150 = trunc i64 %149 to i32, !dbg !511
  store i32 %150, i32* %7, align 4, !dbg !512
  %151 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !513
  %152 = icmp ne %struct.rb_node* %151, null, !dbg !513
  br i1 %152, label %153, label %156, !dbg !515

; <label>:153:                                    ; preds = %140
  %154 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !516
  %155 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !517
  call void @rb_set_parent(%struct.rb_node* %154, %struct.rb_node* %155), !dbg !518
  br label %156, !dbg !518

; <label>:156:                                    ; preds = %153, %140
  %157 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !519
  %158 = icmp ne %struct.rb_node* %157, null, !dbg !519
  br i1 %158, label %159, label %174, !dbg !521

; <label>:159:                                    ; preds = %156
  %160 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !522
  %161 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %160, i32 0, i32 2, !dbg !525
  %162 = load %struct.rb_node*, %struct.rb_node** %161, align 8, !dbg !525
  %163 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !526
  %164 = icmp eq %struct.rb_node* %162, %163, !dbg !527
  br i1 %164, label %165, label %169, !dbg !528

; <label>:165:                                    ; preds = %159
  %166 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !529
  %167 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !530
  %168 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %167, i32 0, i32 2, !dbg !531
  store %struct.rb_node* %166, %struct.rb_node** %168, align 8, !dbg !532
  br label %173, !dbg !530

; <label>:169:                                    ; preds = %159
  %170 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !533
  %171 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !534
  %172 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %171, i32 0, i32 1, !dbg !535
  store %struct.rb_node* %170, %struct.rb_node** %172, align 8, !dbg !536
  br label %173

; <label>:173:                                    ; preds = %169, %165
  br label %178, !dbg !537

; <label>:174:                                    ; preds = %156
  %175 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !538
  %176 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !539
  %177 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %176, i32 0, i32 0, !dbg !540
  store %struct.rb_node* %175, %struct.rb_node** %177, align 8, !dbg !541
  br label %178

; <label>:178:                                    ; preds = %174, %173
  br label %179, !dbg !542

; <label>:179:                                    ; preds = %178, %138
  %180 = load i32, i32* %7, align 4, !dbg !544
  %181 = icmp eq i32 %180, 1, !dbg !546
  br i1 %181, label %182, label %186, !dbg !547

; <label>:182:                                    ; preds = %179
  %183 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !548
  %184 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !549
  %185 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !550
  call void @__rb_erase_color(%struct.rb_node* %183, %struct.rb_node* %184, %struct.rb_root* %185), !dbg !551
  br label %186, !dbg !551

; <label>:186:                                    ; preds = %182, %179
  ret void, !dbg !552
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rb_set_parent(%struct.rb_node*, %struct.rb_node*) #2 !dbg !553 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !556, metadata !25), !dbg !557
  store %struct.rb_node* %1, %struct.rb_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !558, metadata !25), !dbg !559
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !560
  %6 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i32 0, i32 0, !dbg !561
  %7 = load i64, i64* %6, align 8, !dbg !561
  %8 = and i64 %7, 3, !dbg !562
  %9 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !563
  %10 = ptrtoint %struct.rb_node* %9 to i64, !dbg !564
  %11 = or i64 %8, %10, !dbg !565
  %12 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !566
  %13 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 0, !dbg !567
  store i64 %11, i64* %13, align 8, !dbg !568
  ret void, !dbg !569
}

; Function Attrs: nounwind uwtable
define internal void @__rb_erase_color(%struct.rb_node*, %struct.rb_node*, %struct.rb_root*) #0 !dbg !570 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !573, metadata !25), !dbg !574
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !575, metadata !25), !dbg !576
  store %struct.rb_root* %2, %struct.rb_root** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %6, metadata !577, metadata !25), !dbg !578
  call void @llvm.dbg.declare(metadata %struct.rb_node** %7, metadata !579, metadata !25), !dbg !580
  br label %8, !dbg !581

; <label>:8:                                      ; preds = %283, %3
  %9 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !582
  %10 = icmp ne %struct.rb_node* %9, null, !dbg !582
  br i1 %10, label %11, label %17, !dbg !584

; <label>:11:                                     ; preds = %8
  %12 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !585
  %13 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 0, !dbg !587
  %14 = load i64, i64* %13, align 8, !dbg !587
  %15 = and i64 %14, 1, !dbg !588
  %16 = icmp ne i64 %15, 0, !dbg !588
  br i1 %16, label %17, label %23, !dbg !589

; <label>:17:                                     ; preds = %11, %8
  %18 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !590
  %19 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !592
  %20 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %19, i32 0, i32 0, !dbg !593
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8, !dbg !593
  %22 = icmp ne %struct.rb_node* %18, %21, !dbg !594
  br label %23

; <label>:23:                                     ; preds = %17, %11
  %24 = phi i1 [ false, %11 ], [ %22, %17 ]
  br i1 %24, label %25, label %284, !dbg !595

; <label>:25:                                     ; preds = %23
  %26 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !597
  %27 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %26, i32 0, i32 2, !dbg !600
  %28 = load %struct.rb_node*, %struct.rb_node** %27, align 8, !dbg !600
  %29 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !601
  %30 = icmp eq %struct.rb_node* %28, %29, !dbg !602
  br i1 %30, label %31, label %157, !dbg !603

; <label>:31:                                     ; preds = %25
  %32 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !604
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 1, !dbg !606
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8, !dbg !606
  store %struct.rb_node* %34, %struct.rb_node** %7, align 8, !dbg !607
  %35 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !608
  %36 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i32 0, i32 0, !dbg !610
  %37 = load i64, i64* %36, align 8, !dbg !610
  %38 = and i64 %37, 1, !dbg !611
  %39 = icmp ne i64 %38, 0, !dbg !611
  br i1 %39, label %58, label %40, !dbg !612

; <label>:40:                                     ; preds = %31
  br label %41, !dbg !613, !llvm.loop !615

; <label>:41:                                     ; preds = %40
  %42 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !616
  %43 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %42, i32 0, i32 0, !dbg !619
  %44 = load i64, i64* %43, align 8, !dbg !620
  %45 = or i64 %44, 1, !dbg !620
  store i64 %45, i64* %43, align 8, !dbg !620
  br label %46, !dbg !621

; <label>:46:                                     ; preds = %41
  br label %47, !dbg !622, !llvm.loop !623

; <label>:47:                                     ; preds = %46
  %48 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !624
  %49 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %48, i32 0, i32 0, !dbg !627
  %50 = load i64, i64* %49, align 8, !dbg !628
  %51 = and i64 %50, -2, !dbg !628
  store i64 %51, i64* %49, align 8, !dbg !628
  br label %52, !dbg !629

; <label>:52:                                     ; preds = %47
  %53 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !630
  %54 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !631
  call void @__rb_rotate_left(%struct.rb_node* %53, %struct.rb_root* %54), !dbg !632
  %55 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !633
  %56 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %55, i32 0, i32 1, !dbg !634
  %57 = load %struct.rb_node*, %struct.rb_node** %56, align 8, !dbg !634
  store %struct.rb_node* %57, %struct.rb_node** %7, align 8, !dbg !635
  br label %58, !dbg !636

; <label>:58:                                     ; preds = %52, %31
  %59 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !637
  %60 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %59, i32 0, i32 2, !dbg !639
  %61 = load %struct.rb_node*, %struct.rb_node** %60, align 8, !dbg !639
  %62 = icmp ne %struct.rb_node* %61, null, !dbg !637
  br i1 %62, label %63, label %71, !dbg !640

; <label>:63:                                     ; preds = %58
  %64 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !641
  %65 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %64, i32 0, i32 2, !dbg !643
  %66 = load %struct.rb_node*, %struct.rb_node** %65, align 8, !dbg !643
  %67 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %66, i32 0, i32 0, !dbg !644
  %68 = load i64, i64* %67, align 8, !dbg !644
  %69 = and i64 %68, 1, !dbg !645
  %70 = icmp ne i64 %69, 0, !dbg !645
  br i1 %70, label %71, label %97, !dbg !646

; <label>:71:                                     ; preds = %63, %58
  %72 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !647
  %73 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %72, i32 0, i32 1, !dbg !648
  %74 = load %struct.rb_node*, %struct.rb_node** %73, align 8, !dbg !648
  %75 = icmp ne %struct.rb_node* %74, null, !dbg !647
  br i1 %75, label %76, label %84, !dbg !649

; <label>:76:                                     ; preds = %71
  %77 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !650
  %78 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %77, i32 0, i32 1, !dbg !651
  %79 = load %struct.rb_node*, %struct.rb_node** %78, align 8, !dbg !651
  %80 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %79, i32 0, i32 0, !dbg !652
  %81 = load i64, i64* %80, align 8, !dbg !652
  %82 = and i64 %81, 1, !dbg !653
  %83 = icmp ne i64 %82, 0, !dbg !653
  br i1 %83, label %84, label %97, !dbg !654

; <label>:84:                                     ; preds = %76, %71
  br label %85, !dbg !656, !llvm.loop !658

; <label>:85:                                     ; preds = %84
  %86 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !659
  %87 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %86, i32 0, i32 0, !dbg !662
  %88 = load i64, i64* %87, align 8, !dbg !663
  %89 = and i64 %88, -2, !dbg !663
  store i64 %89, i64* %87, align 8, !dbg !663
  br label %90, !dbg !664

; <label>:90:                                     ; preds = %85
  %91 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !665
  store %struct.rb_node* %91, %struct.rb_node** %4, align 8, !dbg !666
  %92 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !667
  %93 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %92, i32 0, i32 0, !dbg !668
  %94 = load i64, i64* %93, align 8, !dbg !668
  %95 = and i64 %94, -4, !dbg !669
  %96 = inttoptr i64 %95 to %struct.rb_node*, !dbg !670
  store %struct.rb_node* %96, %struct.rb_node** %5, align 8, !dbg !671
  br label %156, !dbg !672

; <label>:97:                                     ; preds = %76, %63
  %98 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !673
  %99 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %98, i32 0, i32 1, !dbg !676
  %100 = load %struct.rb_node*, %struct.rb_node** %99, align 8, !dbg !676
  %101 = icmp ne %struct.rb_node* %100, null, !dbg !673
  br i1 %101, label %102, label %110, !dbg !677

; <label>:102:                                    ; preds = %97
  %103 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !678
  %104 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %103, i32 0, i32 1, !dbg !680
  %105 = load %struct.rb_node*, %struct.rb_node** %104, align 8, !dbg !680
  %106 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %105, i32 0, i32 0, !dbg !681
  %107 = load i64, i64* %106, align 8, !dbg !681
  %108 = and i64 %107, 1, !dbg !682
  %109 = icmp ne i64 %108, 0, !dbg !682
  br i1 %109, label %110, label %130, !dbg !683

; <label>:110:                                    ; preds = %102, %97
  br label %111, !dbg !684, !llvm.loop !686

; <label>:111:                                    ; preds = %110
  %112 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !687
  %113 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %112, i32 0, i32 2, !dbg !690
  %114 = load %struct.rb_node*, %struct.rb_node** %113, align 8, !dbg !690
  %115 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %114, i32 0, i32 0, !dbg !691
  %116 = load i64, i64* %115, align 8, !dbg !692
  %117 = or i64 %116, 1, !dbg !692
  store i64 %117, i64* %115, align 8, !dbg !692
  br label %118, !dbg !693

; <label>:118:                                    ; preds = %111
  br label %119, !dbg !694, !llvm.loop !695

; <label>:119:                                    ; preds = %118
  %120 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !696
  %121 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %120, i32 0, i32 0, !dbg !699
  %122 = load i64, i64* %121, align 8, !dbg !700
  %123 = and i64 %122, -2, !dbg !700
  store i64 %123, i64* %121, align 8, !dbg !700
  br label %124, !dbg !701

; <label>:124:                                    ; preds = %119
  %125 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !702
  %126 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !703
  call void @__rb_rotate_right(%struct.rb_node* %125, %struct.rb_root* %126), !dbg !704
  %127 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !705
  %128 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %127, i32 0, i32 1, !dbg !706
  %129 = load %struct.rb_node*, %struct.rb_node** %128, align 8, !dbg !706
  store %struct.rb_node* %129, %struct.rb_node** %7, align 8, !dbg !707
  br label %130, !dbg !708

; <label>:130:                                    ; preds = %124, %102
  %131 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !709
  %132 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !710
  %133 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %132, i32 0, i32 0, !dbg !711
  %134 = load i64, i64* %133, align 8, !dbg !711
  %135 = and i64 %134, 1, !dbg !712
  %136 = trunc i64 %135 to i32, !dbg !713
  call void @rb_set_color(%struct.rb_node* %131, i32 %136), !dbg !714
  br label %137, !dbg !715, !llvm.loop !716

; <label>:137:                                    ; preds = %130
  %138 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !717
  %139 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %138, i32 0, i32 0, !dbg !720
  %140 = load i64, i64* %139, align 8, !dbg !721
  %141 = or i64 %140, 1, !dbg !721
  store i64 %141, i64* %139, align 8, !dbg !721
  br label %142, !dbg !722

; <label>:142:                                    ; preds = %137
  br label %143, !dbg !723, !llvm.loop !724

; <label>:143:                                    ; preds = %142
  %144 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !725
  %145 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %144, i32 0, i32 1, !dbg !728
  %146 = load %struct.rb_node*, %struct.rb_node** %145, align 8, !dbg !728
  %147 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %146, i32 0, i32 0, !dbg !729
  %148 = load i64, i64* %147, align 8, !dbg !730
  %149 = or i64 %148, 1, !dbg !730
  store i64 %149, i64* %147, align 8, !dbg !730
  br label %150, !dbg !731

; <label>:150:                                    ; preds = %143
  %151 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !732
  %152 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !733
  call void @__rb_rotate_left(%struct.rb_node* %151, %struct.rb_root* %152), !dbg !734
  %153 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !735
  %154 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %153, i32 0, i32 0, !dbg !736
  %155 = load %struct.rb_node*, %struct.rb_node** %154, align 8, !dbg !736
  store %struct.rb_node* %155, %struct.rb_node** %4, align 8, !dbg !737
  br label %284, !dbg !738

; <label>:156:                                    ; preds = %90
  br label %283, !dbg !739

; <label>:157:                                    ; preds = %25
  %158 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !740
  %159 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %158, i32 0, i32 2, !dbg !742
  %160 = load %struct.rb_node*, %struct.rb_node** %159, align 8, !dbg !742
  store %struct.rb_node* %160, %struct.rb_node** %7, align 8, !dbg !743
  %161 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !744
  %162 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %161, i32 0, i32 0, !dbg !746
  %163 = load i64, i64* %162, align 8, !dbg !746
  %164 = and i64 %163, 1, !dbg !747
  %165 = icmp ne i64 %164, 0, !dbg !747
  br i1 %165, label %184, label %166, !dbg !748

; <label>:166:                                    ; preds = %157
  br label %167, !dbg !749, !llvm.loop !751

; <label>:167:                                    ; preds = %166
  %168 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !752
  %169 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %168, i32 0, i32 0, !dbg !755
  %170 = load i64, i64* %169, align 8, !dbg !756
  %171 = or i64 %170, 1, !dbg !756
  store i64 %171, i64* %169, align 8, !dbg !756
  br label %172, !dbg !757

; <label>:172:                                    ; preds = %167
  br label %173, !dbg !758, !llvm.loop !759

; <label>:173:                                    ; preds = %172
  %174 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !760
  %175 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %174, i32 0, i32 0, !dbg !763
  %176 = load i64, i64* %175, align 8, !dbg !764
  %177 = and i64 %176, -2, !dbg !764
  store i64 %177, i64* %175, align 8, !dbg !764
  br label %178, !dbg !765

; <label>:178:                                    ; preds = %173
  %179 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !766
  %180 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !767
  call void @__rb_rotate_right(%struct.rb_node* %179, %struct.rb_root* %180), !dbg !768
  %181 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !769
  %182 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %181, i32 0, i32 2, !dbg !770
  %183 = load %struct.rb_node*, %struct.rb_node** %182, align 8, !dbg !770
  store %struct.rb_node* %183, %struct.rb_node** %7, align 8, !dbg !771
  br label %184, !dbg !772

; <label>:184:                                    ; preds = %178, %157
  %185 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !773
  %186 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %185, i32 0, i32 2, !dbg !775
  %187 = load %struct.rb_node*, %struct.rb_node** %186, align 8, !dbg !775
  %188 = icmp ne %struct.rb_node* %187, null, !dbg !773
  br i1 %188, label %189, label %197, !dbg !776

; <label>:189:                                    ; preds = %184
  %190 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !777
  %191 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %190, i32 0, i32 2, !dbg !779
  %192 = load %struct.rb_node*, %struct.rb_node** %191, align 8, !dbg !779
  %193 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %192, i32 0, i32 0, !dbg !780
  %194 = load i64, i64* %193, align 8, !dbg !780
  %195 = and i64 %194, 1, !dbg !781
  %196 = icmp ne i64 %195, 0, !dbg !781
  br i1 %196, label %197, label %223, !dbg !782

; <label>:197:                                    ; preds = %189, %184
  %198 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !783
  %199 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %198, i32 0, i32 1, !dbg !784
  %200 = load %struct.rb_node*, %struct.rb_node** %199, align 8, !dbg !784
  %201 = icmp ne %struct.rb_node* %200, null, !dbg !783
  br i1 %201, label %202, label %210, !dbg !785

; <label>:202:                                    ; preds = %197
  %203 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !786
  %204 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %203, i32 0, i32 1, !dbg !787
  %205 = load %struct.rb_node*, %struct.rb_node** %204, align 8, !dbg !787
  %206 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %205, i32 0, i32 0, !dbg !788
  %207 = load i64, i64* %206, align 8, !dbg !788
  %208 = and i64 %207, 1, !dbg !789
  %209 = icmp ne i64 %208, 0, !dbg !789
  br i1 %209, label %210, label %223, !dbg !790

; <label>:210:                                    ; preds = %202, %197
  br label %211, !dbg !792, !llvm.loop !794

; <label>:211:                                    ; preds = %210
  %212 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !795
  %213 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %212, i32 0, i32 0, !dbg !798
  %214 = load i64, i64* %213, align 8, !dbg !799
  %215 = and i64 %214, -2, !dbg !799
  store i64 %215, i64* %213, align 8, !dbg !799
  br label %216, !dbg !800

; <label>:216:                                    ; preds = %211
  %217 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !801
  store %struct.rb_node* %217, %struct.rb_node** %4, align 8, !dbg !802
  %218 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !803
  %219 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %218, i32 0, i32 0, !dbg !804
  %220 = load i64, i64* %219, align 8, !dbg !804
  %221 = and i64 %220, -4, !dbg !805
  %222 = inttoptr i64 %221 to %struct.rb_node*, !dbg !806
  store %struct.rb_node* %222, %struct.rb_node** %5, align 8, !dbg !807
  br label %282, !dbg !808

; <label>:223:                                    ; preds = %202, %189
  %224 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !809
  %225 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %224, i32 0, i32 2, !dbg !812
  %226 = load %struct.rb_node*, %struct.rb_node** %225, align 8, !dbg !812
  %227 = icmp ne %struct.rb_node* %226, null, !dbg !809
  br i1 %227, label %228, label %236, !dbg !813

; <label>:228:                                    ; preds = %223
  %229 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !814
  %230 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %229, i32 0, i32 2, !dbg !816
  %231 = load %struct.rb_node*, %struct.rb_node** %230, align 8, !dbg !816
  %232 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %231, i32 0, i32 0, !dbg !817
  %233 = load i64, i64* %232, align 8, !dbg !817
  %234 = and i64 %233, 1, !dbg !818
  %235 = icmp ne i64 %234, 0, !dbg !818
  br i1 %235, label %236, label %256, !dbg !819

; <label>:236:                                    ; preds = %228, %223
  br label %237, !dbg !820, !llvm.loop !822

; <label>:237:                                    ; preds = %236
  %238 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !823
  %239 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %238, i32 0, i32 1, !dbg !826
  %240 = load %struct.rb_node*, %struct.rb_node** %239, align 8, !dbg !826
  %241 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %240, i32 0, i32 0, !dbg !827
  %242 = load i64, i64* %241, align 8, !dbg !828
  %243 = or i64 %242, 1, !dbg !828
  store i64 %243, i64* %241, align 8, !dbg !828
  br label %244, !dbg !829

; <label>:244:                                    ; preds = %237
  br label %245, !dbg !830, !llvm.loop !831

; <label>:245:                                    ; preds = %244
  %246 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !832
  %247 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %246, i32 0, i32 0, !dbg !835
  %248 = load i64, i64* %247, align 8, !dbg !836
  %249 = and i64 %248, -2, !dbg !836
  store i64 %249, i64* %247, align 8, !dbg !836
  br label %250, !dbg !837

; <label>:250:                                    ; preds = %245
  %251 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !838
  %252 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !839
  call void @__rb_rotate_left(%struct.rb_node* %251, %struct.rb_root* %252), !dbg !840
  %253 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !841
  %254 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %253, i32 0, i32 2, !dbg !842
  %255 = load %struct.rb_node*, %struct.rb_node** %254, align 8, !dbg !842
  store %struct.rb_node* %255, %struct.rb_node** %7, align 8, !dbg !843
  br label %256, !dbg !844

; <label>:256:                                    ; preds = %250, %228
  %257 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !845
  %258 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !846
  %259 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %258, i32 0, i32 0, !dbg !847
  %260 = load i64, i64* %259, align 8, !dbg !847
  %261 = and i64 %260, 1, !dbg !848
  %262 = trunc i64 %261 to i32, !dbg !849
  call void @rb_set_color(%struct.rb_node* %257, i32 %262), !dbg !850
  br label %263, !dbg !851, !llvm.loop !852

; <label>:263:                                    ; preds = %256
  %264 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !853
  %265 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %264, i32 0, i32 0, !dbg !856
  %266 = load i64, i64* %265, align 8, !dbg !857
  %267 = or i64 %266, 1, !dbg !857
  store i64 %267, i64* %265, align 8, !dbg !857
  br label %268, !dbg !858

; <label>:268:                                    ; preds = %263
  br label %269, !dbg !859, !llvm.loop !860

; <label>:269:                                    ; preds = %268
  %270 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !861
  %271 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %270, i32 0, i32 2, !dbg !864
  %272 = load %struct.rb_node*, %struct.rb_node** %271, align 8, !dbg !864
  %273 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %272, i32 0, i32 0, !dbg !865
  %274 = load i64, i64* %273, align 8, !dbg !866
  %275 = or i64 %274, 1, !dbg !866
  store i64 %275, i64* %273, align 8, !dbg !866
  br label %276, !dbg !867

; <label>:276:                                    ; preds = %269
  %277 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !868
  %278 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !869
  call void @__rb_rotate_right(%struct.rb_node* %277, %struct.rb_root* %278), !dbg !870
  %279 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !871
  %280 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %279, i32 0, i32 0, !dbg !872
  %281 = load %struct.rb_node*, %struct.rb_node** %280, align 8, !dbg !872
  store %struct.rb_node* %281, %struct.rb_node** %4, align 8, !dbg !873
  br label %284, !dbg !874

; <label>:282:                                    ; preds = %216
  br label %283

; <label>:283:                                    ; preds = %282, %156
  br label %8, !dbg !875, !llvm.loop !877

; <label>:284:                                    ; preds = %276, %150, %23
  %285 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !878
  %286 = icmp ne %struct.rb_node* %285, null, !dbg !878
  br i1 %286, label %287, label %294, !dbg !880

; <label>:287:                                    ; preds = %284
  br label %288, !dbg !881, !llvm.loop !882

; <label>:288:                                    ; preds = %287
  %289 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !883
  %290 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %289, i32 0, i32 0, !dbg !886
  %291 = load i64, i64* %290, align 8, !dbg !887
  %292 = or i64 %291, 1, !dbg !887
  store i64 %292, i64* %290, align 8, !dbg !887
  br label %293, !dbg !888

; <label>:293:                                    ; preds = %288
  br label %294, !dbg !889

; <label>:294:                                    ; preds = %293, %284
  ret void, !dbg !891
}

; Function Attrs: nounwind uwtable
define %struct.rb_node* @rb_first(%struct.rb_root*) #0 !dbg !892 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %3, metadata !897, metadata !25), !dbg !898
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !899, metadata !25), !dbg !900
  %5 = load %struct.rb_root*, %struct.rb_root** %3, align 8, !dbg !901
  %6 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %5, i32 0, i32 0, !dbg !902
  %7 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !902
  store %struct.rb_node* %7, %struct.rb_node** %4, align 8, !dbg !903
  %8 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !904
  %9 = icmp ne %struct.rb_node* %8, null, !dbg !904
  br i1 %9, label %11, label %10, !dbg !906

; <label>:10:                                     ; preds = %1
  store %struct.rb_node* null, %struct.rb_node** %2, align 8, !dbg !907
  br label %23, !dbg !907

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !908

; <label>:12:                                     ; preds = %17, %11
  %13 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !909
  %14 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i32 0, i32 2, !dbg !911
  %15 = load %struct.rb_node*, %struct.rb_node** %14, align 8, !dbg !911
  %16 = icmp ne %struct.rb_node* %15, null, !dbg !912
  br i1 %16, label %17, label %21, !dbg !912

; <label>:17:                                     ; preds = %12
  %18 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !913
  %19 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %18, i32 0, i32 2, !dbg !914
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8, !dbg !914
  store %struct.rb_node* %20, %struct.rb_node** %4, align 8, !dbg !915
  br label %12, !dbg !916, !llvm.loop !918

; <label>:21:                                     ; preds = %12
  %22 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !919
  store %struct.rb_node* %22, %struct.rb_node** %2, align 8, !dbg !920
  br label %23, !dbg !920

; <label>:23:                                     ; preds = %21, %10
  %24 = load %struct.rb_node*, %struct.rb_node** %2, align 8, !dbg !921
  ret %struct.rb_node* %24, !dbg !921
}

; Function Attrs: nounwind uwtable
define %struct.rb_node* @rb_last(%struct.rb_root*) #0 !dbg !922 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %3, metadata !923, metadata !25), !dbg !924
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !925, metadata !25), !dbg !926
  %5 = load %struct.rb_root*, %struct.rb_root** %3, align 8, !dbg !927
  %6 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %5, i32 0, i32 0, !dbg !928
  %7 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !928
  store %struct.rb_node* %7, %struct.rb_node** %4, align 8, !dbg !929
  %8 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !930
  %9 = icmp ne %struct.rb_node* %8, null, !dbg !930
  br i1 %9, label %11, label %10, !dbg !932

; <label>:10:                                     ; preds = %1
  store %struct.rb_node* null, %struct.rb_node** %2, align 8, !dbg !933
  br label %23, !dbg !933

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !934

; <label>:12:                                     ; preds = %17, %11
  %13 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !935
  %14 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i32 0, i32 1, !dbg !937
  %15 = load %struct.rb_node*, %struct.rb_node** %14, align 8, !dbg !937
  %16 = icmp ne %struct.rb_node* %15, null, !dbg !938
  br i1 %16, label %17, label %21, !dbg !938

; <label>:17:                                     ; preds = %12
  %18 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !939
  %19 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %18, i32 0, i32 1, !dbg !940
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8, !dbg !940
  store %struct.rb_node* %20, %struct.rb_node** %4, align 8, !dbg !941
  br label %12, !dbg !942, !llvm.loop !944

; <label>:21:                                     ; preds = %12
  %22 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !945
  store %struct.rb_node* %22, %struct.rb_node** %2, align 8, !dbg !946
  br label %23, !dbg !946

; <label>:23:                                     ; preds = %21, %10
  %24 = load %struct.rb_node*, %struct.rb_node** %2, align 8, !dbg !947
  ret %struct.rb_node* %24, !dbg !947
}

; Function Attrs: nounwind uwtable
define %struct.rb_node* @rb_next(%struct.rb_node*) #0 !dbg !948 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !953, metadata !25), !dbg !954
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !955, metadata !25), !dbg !956
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !957
  %6 = icmp ne %struct.rb_node* %5, null, !dbg !957
  br i1 %6, label %7, label %15, !dbg !959

; <label>:7:                                      ; preds = %1
  %8 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !960
  %9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %8, i32 0, i32 0, !dbg !962
  %10 = load i64, i64* %9, align 8, !dbg !962
  %11 = and i64 %10, -4, !dbg !963
  %12 = inttoptr i64 %11 to %struct.rb_node*, !dbg !964
  %13 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !965
  %14 = icmp eq %struct.rb_node* %12, %13, !dbg !966
  br i1 %14, label %15, label %16, !dbg !967

; <label>:15:                                     ; preds = %7, %1
  store %struct.rb_node* null, %struct.rb_node** %2, align 8, !dbg !968
  br label %56, !dbg !968

; <label>:16:                                     ; preds = %7
  %17 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !969
  %18 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i32 0, i32 1, !dbg !971
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8, !dbg !971
  %20 = icmp ne %struct.rb_node* %19, null, !dbg !969
  br i1 %20, label %21, label %36, !dbg !972

; <label>:21:                                     ; preds = %16
  %22 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !973
  %23 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %22, i32 0, i32 1, !dbg !975
  %24 = load %struct.rb_node*, %struct.rb_node** %23, align 8, !dbg !975
  store %struct.rb_node* %24, %struct.rb_node** %3, align 8, !dbg !976
  br label %25, !dbg !977

; <label>:25:                                     ; preds = %30, %21
  %26 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !978
  %27 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %26, i32 0, i32 2, !dbg !980
  %28 = load %struct.rb_node*, %struct.rb_node** %27, align 8, !dbg !980
  %29 = icmp ne %struct.rb_node* %28, null, !dbg !981
  br i1 %29, label %30, label %34, !dbg !981

; <label>:30:                                     ; preds = %25
  %31 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !982
  %32 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %31, i32 0, i32 2, !dbg !983
  %33 = load %struct.rb_node*, %struct.rb_node** %32, align 8, !dbg !983
  store %struct.rb_node* %33, %struct.rb_node** %3, align 8, !dbg !984
  br label %25, !dbg !985, !llvm.loop !987

; <label>:34:                                     ; preds = %25
  %35 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !988
  store %struct.rb_node* %35, %struct.rb_node** %2, align 8, !dbg !989
  br label %56, !dbg !989

; <label>:36:                                     ; preds = %16
  br label %37, !dbg !990

; <label>:37:                                     ; preds = %52, %36
  %38 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !991
  %39 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %38, i32 0, i32 0, !dbg !993
  %40 = load i64, i64* %39, align 8, !dbg !993
  %41 = and i64 %40, -4, !dbg !994
  %42 = inttoptr i64 %41 to %struct.rb_node*, !dbg !995
  store %struct.rb_node* %42, %struct.rb_node** %4, align 8, !dbg !996
  %43 = icmp ne %struct.rb_node* %42, null, !dbg !996
  br i1 %43, label %44, label %50, !dbg !997

; <label>:44:                                     ; preds = %37
  %45 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !998
  %46 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1000
  %47 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %46, i32 0, i32 1, !dbg !1001
  %48 = load %struct.rb_node*, %struct.rb_node** %47, align 8, !dbg !1001
  %49 = icmp eq %struct.rb_node* %45, %48, !dbg !1002
  br label %50

; <label>:50:                                     ; preds = %44, %37
  %51 = phi i1 [ false, %37 ], [ %49, %44 ]
  br i1 %51, label %52, label %54, !dbg !1003

; <label>:52:                                     ; preds = %50
  %53 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1005
  store %struct.rb_node* %53, %struct.rb_node** %3, align 8, !dbg !1006
  br label %37, !dbg !1007, !llvm.loop !1009

; <label>:54:                                     ; preds = %50
  %55 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1010
  store %struct.rb_node* %55, %struct.rb_node** %2, align 8, !dbg !1011
  br label %56, !dbg !1011

; <label>:56:                                     ; preds = %54, %34, %15
  %57 = load %struct.rb_node*, %struct.rb_node** %2, align 8, !dbg !1012
  ret %struct.rb_node* %57, !dbg !1012
}

; Function Attrs: nounwind uwtable
define %struct.rb_node* @rb_prev(%struct.rb_node*) #0 !dbg !1013 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !1014, metadata !25), !dbg !1015
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !1016, metadata !25), !dbg !1017
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1018
  %6 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i32 0, i32 0, !dbg !1020
  %7 = load i64, i64* %6, align 8, !dbg !1020
  %8 = and i64 %7, -4, !dbg !1021
  %9 = inttoptr i64 %8 to %struct.rb_node*, !dbg !1022
  %10 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1023
  %11 = icmp eq %struct.rb_node* %9, %10, !dbg !1024
  br i1 %11, label %12, label %13, !dbg !1025

; <label>:12:                                     ; preds = %1
  store %struct.rb_node* null, %struct.rb_node** %2, align 8, !dbg !1026
  br label %53, !dbg !1026

; <label>:13:                                     ; preds = %1
  %14 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1027
  %15 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 2, !dbg !1029
  %16 = load %struct.rb_node*, %struct.rb_node** %15, align 8, !dbg !1029
  %17 = icmp ne %struct.rb_node* %16, null, !dbg !1027
  br i1 %17, label %18, label %33, !dbg !1030

; <label>:18:                                     ; preds = %13
  %19 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1031
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 2, !dbg !1033
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8, !dbg !1033
  store %struct.rb_node* %21, %struct.rb_node** %3, align 8, !dbg !1034
  br label %22, !dbg !1035

; <label>:22:                                     ; preds = %27, %18
  %23 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1036
  %24 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %23, i32 0, i32 1, !dbg !1038
  %25 = load %struct.rb_node*, %struct.rb_node** %24, align 8, !dbg !1038
  %26 = icmp ne %struct.rb_node* %25, null, !dbg !1039
  br i1 %26, label %27, label %31, !dbg !1039

; <label>:27:                                     ; preds = %22
  %28 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1040
  %29 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %28, i32 0, i32 1, !dbg !1041
  %30 = load %struct.rb_node*, %struct.rb_node** %29, align 8, !dbg !1041
  store %struct.rb_node* %30, %struct.rb_node** %3, align 8, !dbg !1042
  br label %22, !dbg !1043, !llvm.loop !1045

; <label>:31:                                     ; preds = %22
  %32 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1046
  store %struct.rb_node* %32, %struct.rb_node** %2, align 8, !dbg !1047
  br label %53, !dbg !1047

; <label>:33:                                     ; preds = %13
  br label %34, !dbg !1048

; <label>:34:                                     ; preds = %49, %33
  %35 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1049
  %36 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i32 0, i32 0, !dbg !1051
  %37 = load i64, i64* %36, align 8, !dbg !1051
  %38 = and i64 %37, -4, !dbg !1052
  %39 = inttoptr i64 %38 to %struct.rb_node*, !dbg !1053
  store %struct.rb_node* %39, %struct.rb_node** %4, align 8, !dbg !1054
  %40 = icmp ne %struct.rb_node* %39, null, !dbg !1054
  br i1 %40, label %41, label %47, !dbg !1055

; <label>:41:                                     ; preds = %34
  %42 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1056
  %43 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1058
  %44 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %43, i32 0, i32 2, !dbg !1059
  %45 = load %struct.rb_node*, %struct.rb_node** %44, align 8, !dbg !1059
  %46 = icmp eq %struct.rb_node* %42, %45, !dbg !1060
  br label %47

; <label>:47:                                     ; preds = %41, %34
  %48 = phi i1 [ false, %34 ], [ %46, %41 ]
  br i1 %48, label %49, label %51, !dbg !1061

; <label>:49:                                     ; preds = %47
  %50 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1063
  store %struct.rb_node* %50, %struct.rb_node** %3, align 8, !dbg !1064
  br label %34, !dbg !1065, !llvm.loop !1067

; <label>:51:                                     ; preds = %47
  %52 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1068
  store %struct.rb_node* %52, %struct.rb_node** %2, align 8, !dbg !1069
  br label %53, !dbg !1069

; <label>:53:                                     ; preds = %51, %31, %12
  %54 = load %struct.rb_node*, %struct.rb_node** %2, align 8, !dbg !1070
  ret %struct.rb_node* %54, !dbg !1070
}

; Function Attrs: nounwind uwtable
define void @rb_replace_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_root*) #0 !dbg !1071 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !1072, metadata !25), !dbg !1073
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !1074, metadata !25), !dbg !1075
  store %struct.rb_root* %2, %struct.rb_root** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %6, metadata !1076, metadata !25), !dbg !1077
  call void @llvm.dbg.declare(metadata %struct.rb_node** %7, metadata !1078, metadata !25), !dbg !1079
  %8 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1080
  %9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %8, i32 0, i32 0, !dbg !1081
  %10 = load i64, i64* %9, align 8, !dbg !1081
  %11 = and i64 %10, -4, !dbg !1082
  %12 = inttoptr i64 %11 to %struct.rb_node*, !dbg !1083
  store %struct.rb_node* %12, %struct.rb_node** %7, align 8, !dbg !1079
  %13 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !1084
  %14 = icmp ne %struct.rb_node* %13, null, !dbg !1084
  br i1 %14, label %15, label %30, !dbg !1086

; <label>:15:                                     ; preds = %3
  %16 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1087
  %17 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !1090
  %18 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i32 0, i32 2, !dbg !1091
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8, !dbg !1091
  %20 = icmp eq %struct.rb_node* %16, %19, !dbg !1092
  br i1 %20, label %21, label %25, !dbg !1093

; <label>:21:                                     ; preds = %15
  %22 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !1094
  %23 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !1095
  %24 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %23, i32 0, i32 2, !dbg !1096
  store %struct.rb_node* %22, %struct.rb_node** %24, align 8, !dbg !1097
  br label %29, !dbg !1095

; <label>:25:                                     ; preds = %15
  %26 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !1098
  %27 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !1099
  %28 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %27, i32 0, i32 1, !dbg !1100
  store %struct.rb_node* %26, %struct.rb_node** %28, align 8, !dbg !1101
  br label %29

; <label>:29:                                     ; preds = %25, %21
  br label %34, !dbg !1102

; <label>:30:                                     ; preds = %3
  %31 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !1103
  %32 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !1105
  %33 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %32, i32 0, i32 0, !dbg !1106
  store %struct.rb_node* %31, %struct.rb_node** %33, align 8, !dbg !1107
  br label %34

; <label>:34:                                     ; preds = %30, %29
  %35 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1108
  %36 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i32 0, i32 2, !dbg !1110
  %37 = load %struct.rb_node*, %struct.rb_node** %36, align 8, !dbg !1110
  %38 = icmp ne %struct.rb_node* %37, null, !dbg !1108
  br i1 %38, label %39, label %44, !dbg !1111

; <label>:39:                                     ; preds = %34
  %40 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1112
  %41 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %40, i32 0, i32 2, !dbg !1113
  %42 = load %struct.rb_node*, %struct.rb_node** %41, align 8, !dbg !1113
  %43 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !1114
  call void @rb_set_parent(%struct.rb_node* %42, %struct.rb_node* %43), !dbg !1115
  br label %44, !dbg !1115

; <label>:44:                                     ; preds = %39, %34
  %45 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1116
  %46 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %45, i32 0, i32 1, !dbg !1118
  %47 = load %struct.rb_node*, %struct.rb_node** %46, align 8, !dbg !1118
  %48 = icmp ne %struct.rb_node* %47, null, !dbg !1116
  br i1 %48, label %49, label %54, !dbg !1119

; <label>:49:                                     ; preds = %44
  %50 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1120
  %51 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %50, i32 0, i32 1, !dbg !1121
  %52 = load %struct.rb_node*, %struct.rb_node** %51, align 8, !dbg !1121
  %53 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !1122
  call void @rb_set_parent(%struct.rb_node* %52, %struct.rb_node* %53), !dbg !1123
  br label %54, !dbg !1123

; <label>:54:                                     ; preds = %49, %44
  %55 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !1124
  %56 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !1125
  %57 = bitcast %struct.rb_node* %55 to i8*, !dbg !1126
  %58 = bitcast %struct.rb_node* %56 to i8*, !dbg !1126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 24, i32 8, i1 false), !dbg !1126
  ret void, !dbg !1127
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @rb_set_color(%struct.rb_node*, i32) #2 !dbg !1128 {
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca i32, align 4
  store %struct.rb_node* %0, %struct.rb_node** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %3, metadata !1131, metadata !25), !dbg !1132
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1133, metadata !25), !dbg !1134
  %5 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1135
  %6 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i32 0, i32 0, !dbg !1136
  %7 = load i64, i64* %6, align 8, !dbg !1136
  %8 = and i64 %7, -2, !dbg !1137
  %9 = load i32, i32* %4, align 4, !dbg !1138
  %10 = sext i32 %9 to i64, !dbg !1138
  %11 = or i64 %8, %10, !dbg !1139
  %12 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !1140
  %13 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 0, !dbg !1141
  store i64 %11, i64* %13, align 8, !dbg !1142
  ret void, !dbg !1143
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]lib--rbtree.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{}
!3 = !{!4, !12, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !6, line: 97, size: 192, align: 64, elements: !7)
!6 = !DIFile(filename: "rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!7 = !{!8, !10, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !5, file: !6, line: 99, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !5, file: !6, line: 102, baseType: !4, size: 64, align: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !5, file: !6, line: 103, baseType: !4, size: 64, align: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = distinct !DISubprogram(name: "rb_insert_color", scope: !17, file: !17, line: 72, type: !18, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DIFile(filename: "rbtree.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !4, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !6, line: 106, size: 64, align: 64, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !21, file: !6, line: 108, baseType: !4, size: 64, align: 64)
!24 = !DILocalVariable(name: "node", arg: 1, scope: !16, file: !17, line: 72, type: !4)
!25 = !DIExpression()
!26 = !DILocation(line: 72, column: 38, scope: !16)
!27 = !DILocalVariable(name: "root", arg: 2, scope: !16, file: !17, line: 72, type: !20)
!28 = !DILocation(line: 72, column: 60, scope: !16)
!29 = !DILocalVariable(name: "parent", scope: !16, file: !17, line: 74, type: !4)
!30 = !DILocation(line: 74, column: 18, scope: !16)
!31 = !DILocalVariable(name: "gparent", scope: !16, file: !17, line: 74, type: !4)
!32 = !DILocation(line: 74, column: 27, scope: !16)
!33 = !DILocation(line: 76, column: 2, scope: !16)
!34 = !DILocation(line: 76, column: 40, scope: !35)
!35 = !DILexicalBlockFile(scope: !16, file: !17, discriminator: 1)
!36 = !DILocation(line: 76, column: 47, scope: !35)
!37 = !DILocation(line: 76, column: 63, scope: !35)
!38 = !DILocation(line: 76, column: 20, scope: !35)
!39 = !DILocation(line: 76, column: 17, scope: !35)
!40 = !DILocation(line: 76, column: 71, scope: !35)
!41 = !DILocation(line: 76, column: 78, scope: !42)
!42 = !DILexicalBlockFile(scope: !16, file: !17, discriminator: 2)
!43 = !DILocation(line: 76, column: 87, scope: !42)
!44 = !DILocation(line: 76, column: 103, scope: !42)
!45 = !DILocation(line: 76, column: 75, scope: !42)
!46 = !DILocation(line: 76, column: 2, scope: !47)
!47 = !DILexicalBlockFile(scope: !16, file: !17, discriminator: 3)
!48 = !DILocation(line: 78, column: 34, scope: !49)
!49 = distinct !DILexicalBlock(scope: !16, file: !17, line: 77, column: 2)
!50 = !DILocation(line: 78, column: 43, scope: !49)
!51 = !DILocation(line: 78, column: 59, scope: !49)
!52 = !DILocation(line: 78, column: 14, scope: !49)
!53 = !DILocation(line: 78, column: 11, scope: !49)
!54 = !DILocation(line: 80, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !49, file: !17, line: 80, column: 7)
!56 = !DILocation(line: 80, column: 17, scope: !55)
!57 = !DILocation(line: 80, column: 26, scope: !55)
!58 = !DILocation(line: 80, column: 14, scope: !55)
!59 = !DILocation(line: 80, column: 7, scope: !49)
!60 = !DILocalVariable(name: "uncle", scope: !61, file: !17, line: 83, type: !4)
!61 = distinct !DILexicalBlock(scope: !62, file: !17, line: 82, column: 4)
!62 = distinct !DILexicalBlock(scope: !55, file: !17, line: 81, column: 3)
!63 = !DILocation(line: 83, column: 30, scope: !61)
!64 = !DILocation(line: 83, column: 38, scope: !61)
!65 = !DILocation(line: 83, column: 47, scope: !61)
!66 = !DILocation(line: 84, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !17, line: 84, column: 9)
!68 = !DILocation(line: 84, column: 15, scope: !67)
!69 = !DILocation(line: 84, column: 22, scope: !70)
!70 = !DILexicalBlockFile(scope: !67, file: !17, discriminator: 1)
!71 = !DILocation(line: 84, column: 30, scope: !70)
!72 = !DILocation(line: 84, column: 46, scope: !70)
!73 = !DILocation(line: 84, column: 9, scope: !70)
!74 = !DILocation(line: 86, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !17, line: 85, column: 5)
!76 = distinct !{!76, !74}
!77 = !DILocation(line: 86, column: 12, scope: !78)
!78 = !DILexicalBlockFile(scope: !79, file: !17, discriminator: 1)
!79 = distinct !DILexicalBlock(scope: !75, file: !17, line: 86, column: 9)
!80 = !DILocation(line: 86, column: 20, scope: !78)
!81 = !DILocation(line: 86, column: 36, scope: !78)
!82 = !DILocation(line: 86, column: 42, scope: !78)
!83 = !DILocation(line: 87, column: 6, scope: !75)
!84 = distinct !{!84, !83}
!85 = !DILocation(line: 87, column: 12, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !17, discriminator: 1)
!87 = distinct !DILexicalBlock(scope: !75, file: !17, line: 87, column: 9)
!88 = !DILocation(line: 87, column: 21, scope: !86)
!89 = !DILocation(line: 87, column: 37, scope: !86)
!90 = !DILocation(line: 87, column: 43, scope: !86)
!91 = !DILocation(line: 88, column: 6, scope: !75)
!92 = distinct !{!92, !91}
!93 = !DILocation(line: 88, column: 12, scope: !94)
!94 = !DILexicalBlockFile(scope: !95, file: !17, discriminator: 1)
!95 = distinct !DILexicalBlock(scope: !75, file: !17, line: 88, column: 9)
!96 = !DILocation(line: 88, column: 22, scope: !94)
!97 = !DILocation(line: 88, column: 38, scope: !94)
!98 = !DILocation(line: 88, column: 45, scope: !94)
!99 = !DILocation(line: 89, column: 13, scope: !75)
!100 = !DILocation(line: 89, column: 11, scope: !75)
!101 = !DILocation(line: 90, column: 6, scope: !75)
!102 = distinct !{!102, !33}
!103 = !DILocation(line: 94, column: 8, scope: !104)
!104 = distinct !DILexicalBlock(scope: !62, file: !17, line: 94, column: 8)
!105 = !DILocation(line: 94, column: 16, scope: !104)
!106 = !DILocation(line: 94, column: 28, scope: !104)
!107 = !DILocation(line: 94, column: 25, scope: !104)
!108 = !DILocation(line: 94, column: 8, scope: !62)
!109 = !DILocalVariable(name: "tmp", scope: !110, file: !17, line: 96, type: !4)
!110 = distinct !DILexicalBlock(scope: !104, file: !17, line: 95, column: 4)
!111 = !DILocation(line: 96, column: 30, scope: !110)
!112 = !DILocation(line: 97, column: 22, scope: !110)
!113 = !DILocation(line: 97, column: 30, scope: !110)
!114 = !DILocation(line: 97, column: 5, scope: !110)
!115 = !DILocation(line: 98, column: 11, scope: !110)
!116 = !DILocation(line: 98, column: 9, scope: !110)
!117 = !DILocation(line: 99, column: 14, scope: !110)
!118 = !DILocation(line: 99, column: 12, scope: !110)
!119 = !DILocation(line: 100, column: 12, scope: !110)
!120 = !DILocation(line: 100, column: 10, scope: !110)
!121 = !DILocation(line: 101, column: 4, scope: !110)
!122 = !DILocation(line: 103, column: 4, scope: !62)
!123 = distinct !{!123, !122}
!124 = !DILocation(line: 103, column: 10, scope: !125)
!125 = !DILexicalBlockFile(scope: !126, file: !17, discriminator: 1)
!126 = distinct !DILexicalBlock(scope: !62, file: !17, line: 103, column: 7)
!127 = !DILocation(line: 103, column: 19, scope: !125)
!128 = !DILocation(line: 103, column: 35, scope: !125)
!129 = !DILocation(line: 103, column: 41, scope: !125)
!130 = !DILocation(line: 104, column: 4, scope: !62)
!131 = distinct !{!131, !130}
!132 = !DILocation(line: 104, column: 10, scope: !133)
!133 = !DILexicalBlockFile(scope: !134, file: !17, discriminator: 1)
!134 = distinct !DILexicalBlock(scope: !62, file: !17, line: 104, column: 7)
!135 = !DILocation(line: 104, column: 20, scope: !133)
!136 = !DILocation(line: 104, column: 36, scope: !133)
!137 = !DILocation(line: 104, column: 43, scope: !133)
!138 = !DILocation(line: 105, column: 22, scope: !62)
!139 = !DILocation(line: 105, column: 31, scope: !62)
!140 = !DILocation(line: 105, column: 4, scope: !62)
!141 = !DILocation(line: 106, column: 3, scope: !62)
!142 = !DILocalVariable(name: "uncle", scope: !143, file: !17, line: 108, type: !4)
!143 = distinct !DILexicalBlock(scope: !144, file: !17, line: 107, column: 4)
!144 = distinct !DILexicalBlock(scope: !55, file: !17, line: 106, column: 10)
!145 = !DILocation(line: 108, column: 30, scope: !143)
!146 = !DILocation(line: 108, column: 38, scope: !143)
!147 = !DILocation(line: 108, column: 47, scope: !143)
!148 = !DILocation(line: 109, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !17, line: 109, column: 9)
!150 = !DILocation(line: 109, column: 15, scope: !149)
!151 = !DILocation(line: 109, column: 22, scope: !152)
!152 = !DILexicalBlockFile(scope: !149, file: !17, discriminator: 1)
!153 = !DILocation(line: 109, column: 30, scope: !152)
!154 = !DILocation(line: 109, column: 46, scope: !152)
!155 = !DILocation(line: 109, column: 9, scope: !152)
!156 = !DILocation(line: 111, column: 6, scope: !157)
!157 = distinct !DILexicalBlock(scope: !149, file: !17, line: 110, column: 5)
!158 = distinct !{!158, !156}
!159 = !DILocation(line: 111, column: 12, scope: !160)
!160 = !DILexicalBlockFile(scope: !161, file: !17, discriminator: 1)
!161 = distinct !DILexicalBlock(scope: !157, file: !17, line: 111, column: 9)
!162 = !DILocation(line: 111, column: 20, scope: !160)
!163 = !DILocation(line: 111, column: 36, scope: !160)
!164 = !DILocation(line: 111, column: 42, scope: !160)
!165 = !DILocation(line: 112, column: 6, scope: !157)
!166 = distinct !{!166, !165}
!167 = !DILocation(line: 112, column: 12, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !17, discriminator: 1)
!169 = distinct !DILexicalBlock(scope: !157, file: !17, line: 112, column: 9)
!170 = !DILocation(line: 112, column: 21, scope: !168)
!171 = !DILocation(line: 112, column: 37, scope: !168)
!172 = !DILocation(line: 112, column: 43, scope: !168)
!173 = !DILocation(line: 113, column: 6, scope: !157)
!174 = distinct !{!174, !173}
!175 = !DILocation(line: 113, column: 12, scope: !176)
!176 = !DILexicalBlockFile(scope: !177, file: !17, discriminator: 1)
!177 = distinct !DILexicalBlock(scope: !157, file: !17, line: 113, column: 9)
!178 = !DILocation(line: 113, column: 22, scope: !176)
!179 = !DILocation(line: 113, column: 38, scope: !176)
!180 = !DILocation(line: 113, column: 45, scope: !176)
!181 = !DILocation(line: 114, column: 13, scope: !157)
!182 = !DILocation(line: 114, column: 11, scope: !157)
!183 = !DILocation(line: 115, column: 6, scope: !157)
!184 = !DILocation(line: 119, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !144, file: !17, line: 119, column: 8)
!186 = !DILocation(line: 119, column: 16, scope: !185)
!187 = !DILocation(line: 119, column: 27, scope: !185)
!188 = !DILocation(line: 119, column: 24, scope: !185)
!189 = !DILocation(line: 119, column: 8, scope: !144)
!190 = !DILocalVariable(name: "tmp", scope: !191, file: !17, line: 121, type: !4)
!191 = distinct !DILexicalBlock(scope: !185, file: !17, line: 120, column: 4)
!192 = !DILocation(line: 121, column: 30, scope: !191)
!193 = !DILocation(line: 122, column: 23, scope: !191)
!194 = !DILocation(line: 122, column: 31, scope: !191)
!195 = !DILocation(line: 122, column: 5, scope: !191)
!196 = !DILocation(line: 123, column: 11, scope: !191)
!197 = !DILocation(line: 123, column: 9, scope: !191)
!198 = !DILocation(line: 124, column: 14, scope: !191)
!199 = !DILocation(line: 124, column: 12, scope: !191)
!200 = !DILocation(line: 125, column: 12, scope: !191)
!201 = !DILocation(line: 125, column: 10, scope: !191)
!202 = !DILocation(line: 126, column: 4, scope: !191)
!203 = !DILocation(line: 128, column: 4, scope: !144)
!204 = distinct !{!204, !203}
!205 = !DILocation(line: 128, column: 10, scope: !206)
!206 = !DILexicalBlockFile(scope: !207, file: !17, discriminator: 1)
!207 = distinct !DILexicalBlock(scope: !144, file: !17, line: 128, column: 7)
!208 = !DILocation(line: 128, column: 19, scope: !206)
!209 = !DILocation(line: 128, column: 35, scope: !206)
!210 = !DILocation(line: 128, column: 41, scope: !206)
!211 = !DILocation(line: 129, column: 4, scope: !144)
!212 = distinct !{!212, !211}
!213 = !DILocation(line: 129, column: 10, scope: !214)
!214 = !DILexicalBlockFile(scope: !215, file: !17, discriminator: 1)
!215 = distinct !DILexicalBlock(scope: !144, file: !17, line: 129, column: 7)
!216 = !DILocation(line: 129, column: 20, scope: !214)
!217 = !DILocation(line: 129, column: 36, scope: !214)
!218 = !DILocation(line: 129, column: 43, scope: !214)
!219 = !DILocation(line: 130, column: 21, scope: !144)
!220 = !DILocation(line: 130, column: 30, scope: !144)
!221 = !DILocation(line: 130, column: 4, scope: !144)
!222 = !DILocation(line: 76, column: 2, scope: !223)
!223 = !DILexicalBlockFile(scope: !16, file: !17, discriminator: 4)
!224 = !DILocation(line: 134, column: 2, scope: !16)
!225 = distinct !{!225, !224}
!226 = !DILocation(line: 134, column: 8, scope: !227)
!227 = !DILexicalBlockFile(scope: !228, file: !17, discriminator: 1)
!228 = distinct !DILexicalBlock(scope: !16, file: !17, line: 134, column: 5)
!229 = !DILocation(line: 134, column: 14, scope: !227)
!230 = !DILocation(line: 134, column: 24, scope: !227)
!231 = !DILocation(line: 134, column: 40, scope: !227)
!232 = !DILocation(line: 134, column: 46, scope: !227)
!233 = !DILocation(line: 135, column: 1, scope: !16)
!234 = distinct !DISubprogram(name: "__rb_rotate_left", scope: !17, file: !17, line: 26, type: !18, isLocal: true, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!235 = !DILocalVariable(name: "node", arg: 1, scope: !234, file: !17, line: 26, type: !4)
!236 = !DILocation(line: 26, column: 46, scope: !234)
!237 = !DILocalVariable(name: "root", arg: 2, scope: !234, file: !17, line: 26, type: !20)
!238 = !DILocation(line: 26, column: 68, scope: !234)
!239 = !DILocalVariable(name: "right", scope: !234, file: !17, line: 28, type: !4)
!240 = !DILocation(line: 28, column: 18, scope: !234)
!241 = !DILocation(line: 28, column: 26, scope: !234)
!242 = !DILocation(line: 28, column: 32, scope: !234)
!243 = !DILocalVariable(name: "parent", scope: !234, file: !17, line: 29, type: !4)
!244 = !DILocation(line: 29, column: 18, scope: !234)
!245 = !DILocation(line: 29, column: 48, scope: !234)
!246 = !DILocation(line: 29, column: 55, scope: !234)
!247 = !DILocation(line: 29, column: 71, scope: !234)
!248 = !DILocation(line: 29, column: 28, scope: !234)
!249 = !DILocation(line: 31, column: 24, scope: !250)
!250 = distinct !DILexicalBlock(scope: !234, file: !17, line: 31, column: 6)
!251 = !DILocation(line: 31, column: 31, scope: !250)
!252 = !DILocation(line: 31, column: 7, scope: !250)
!253 = !DILocation(line: 31, column: 13, scope: !250)
!254 = !DILocation(line: 31, column: 22, scope: !250)
!255 = !DILocation(line: 31, column: 6, scope: !234)
!256 = !DILocation(line: 32, column: 17, scope: !250)
!257 = !DILocation(line: 32, column: 24, scope: !250)
!258 = !DILocation(line: 32, column: 33, scope: !250)
!259 = !DILocation(line: 32, column: 3, scope: !250)
!260 = !DILocation(line: 33, column: 19, scope: !234)
!261 = !DILocation(line: 33, column: 2, scope: !234)
!262 = !DILocation(line: 33, column: 9, scope: !234)
!263 = !DILocation(line: 33, column: 17, scope: !234)
!264 = !DILocation(line: 35, column: 16, scope: !234)
!265 = !DILocation(line: 35, column: 23, scope: !234)
!266 = !DILocation(line: 35, column: 2, scope: !234)
!267 = !DILocation(line: 37, column: 6, scope: !268)
!268 = distinct !DILexicalBlock(scope: !234, file: !17, line: 37, column: 6)
!269 = !DILocation(line: 37, column: 6, scope: !234)
!270 = !DILocation(line: 39, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !17, line: 39, column: 7)
!272 = distinct !DILexicalBlock(scope: !268, file: !17, line: 38, column: 2)
!273 = !DILocation(line: 39, column: 15, scope: !271)
!274 = !DILocation(line: 39, column: 23, scope: !271)
!275 = !DILocation(line: 39, column: 12, scope: !271)
!276 = !DILocation(line: 39, column: 7, scope: !272)
!277 = !DILocation(line: 40, column: 22, scope: !271)
!278 = !DILocation(line: 40, column: 4, scope: !271)
!279 = !DILocation(line: 40, column: 12, scope: !271)
!280 = !DILocation(line: 40, column: 20, scope: !271)
!281 = !DILocation(line: 42, column: 23, scope: !271)
!282 = !DILocation(line: 42, column: 4, scope: !271)
!283 = !DILocation(line: 42, column: 12, scope: !271)
!284 = !DILocation(line: 42, column: 21, scope: !271)
!285 = !DILocation(line: 43, column: 2, scope: !272)
!286 = !DILocation(line: 45, column: 19, scope: !268)
!287 = !DILocation(line: 45, column: 3, scope: !268)
!288 = !DILocation(line: 45, column: 9, scope: !268)
!289 = !DILocation(line: 45, column: 17, scope: !268)
!290 = !DILocation(line: 46, column: 16, scope: !234)
!291 = !DILocation(line: 46, column: 22, scope: !234)
!292 = !DILocation(line: 46, column: 2, scope: !234)
!293 = !DILocation(line: 47, column: 1, scope: !234)
!294 = distinct !DISubprogram(name: "__rb_rotate_right", scope: !17, file: !17, line: 49, type: !18, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!295 = !DILocalVariable(name: "node", arg: 1, scope: !294, file: !17, line: 49, type: !4)
!296 = !DILocation(line: 49, column: 47, scope: !294)
!297 = !DILocalVariable(name: "root", arg: 2, scope: !294, file: !17, line: 49, type: !20)
!298 = !DILocation(line: 49, column: 69, scope: !294)
!299 = !DILocalVariable(name: "left", scope: !294, file: !17, line: 51, type: !4)
!300 = !DILocation(line: 51, column: 18, scope: !294)
!301 = !DILocation(line: 51, column: 25, scope: !294)
!302 = !DILocation(line: 51, column: 31, scope: !294)
!303 = !DILocalVariable(name: "parent", scope: !294, file: !17, line: 52, type: !4)
!304 = !DILocation(line: 52, column: 18, scope: !294)
!305 = !DILocation(line: 52, column: 48, scope: !294)
!306 = !DILocation(line: 52, column: 55, scope: !294)
!307 = !DILocation(line: 52, column: 71, scope: !294)
!308 = !DILocation(line: 52, column: 28, scope: !294)
!309 = !DILocation(line: 54, column: 23, scope: !310)
!310 = distinct !DILexicalBlock(scope: !294, file: !17, line: 54, column: 6)
!311 = !DILocation(line: 54, column: 29, scope: !310)
!312 = !DILocation(line: 54, column: 7, scope: !310)
!313 = !DILocation(line: 54, column: 13, scope: !310)
!314 = !DILocation(line: 54, column: 21, scope: !310)
!315 = !DILocation(line: 54, column: 6, scope: !294)
!316 = !DILocation(line: 55, column: 17, scope: !310)
!317 = !DILocation(line: 55, column: 23, scope: !310)
!318 = !DILocation(line: 55, column: 33, scope: !310)
!319 = !DILocation(line: 55, column: 3, scope: !310)
!320 = !DILocation(line: 56, column: 19, scope: !294)
!321 = !DILocation(line: 56, column: 2, scope: !294)
!322 = !DILocation(line: 56, column: 8, scope: !294)
!323 = !DILocation(line: 56, column: 17, scope: !294)
!324 = !DILocation(line: 58, column: 16, scope: !294)
!325 = !DILocation(line: 58, column: 22, scope: !294)
!326 = !DILocation(line: 58, column: 2, scope: !294)
!327 = !DILocation(line: 60, column: 6, scope: !328)
!328 = distinct !DILexicalBlock(scope: !294, file: !17, line: 60, column: 6)
!329 = !DILocation(line: 60, column: 6, scope: !294)
!330 = !DILocation(line: 62, column: 7, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !17, line: 62, column: 7)
!332 = distinct !DILexicalBlock(scope: !328, file: !17, line: 61, column: 2)
!333 = !DILocation(line: 62, column: 15, scope: !331)
!334 = !DILocation(line: 62, column: 23, scope: !331)
!335 = !DILocation(line: 62, column: 12, scope: !331)
!336 = !DILocation(line: 62, column: 7, scope: !332)
!337 = !DILocation(line: 63, column: 23, scope: !331)
!338 = !DILocation(line: 63, column: 4, scope: !331)
!339 = !DILocation(line: 63, column: 12, scope: !331)
!340 = !DILocation(line: 63, column: 21, scope: !331)
!341 = !DILocation(line: 65, column: 22, scope: !331)
!342 = !DILocation(line: 65, column: 4, scope: !331)
!343 = !DILocation(line: 65, column: 12, scope: !331)
!344 = !DILocation(line: 65, column: 20, scope: !331)
!345 = !DILocation(line: 66, column: 2, scope: !332)
!346 = !DILocation(line: 68, column: 19, scope: !328)
!347 = !DILocation(line: 68, column: 3, scope: !328)
!348 = !DILocation(line: 68, column: 9, scope: !328)
!349 = !DILocation(line: 68, column: 17, scope: !328)
!350 = !DILocation(line: 69, column: 16, scope: !294)
!351 = !DILocation(line: 69, column: 22, scope: !294)
!352 = !DILocation(line: 69, column: 2, scope: !294)
!353 = !DILocation(line: 70, column: 1, scope: !294)
!354 = distinct !DISubprogram(name: "rb_erase", scope: !17, file: !17, line: 217, type: !18, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!355 = !DILocalVariable(name: "node", arg: 1, scope: !354, file: !17, line: 217, type: !4)
!356 = !DILocation(line: 217, column: 31, scope: !354)
!357 = !DILocalVariable(name: "root", arg: 2, scope: !354, file: !17, line: 217, type: !20)
!358 = !DILocation(line: 217, column: 53, scope: !354)
!359 = !DILocalVariable(name: "child", scope: !354, file: !17, line: 219, type: !4)
!360 = !DILocation(line: 219, column: 18, scope: !354)
!361 = !DILocalVariable(name: "parent", scope: !354, file: !17, line: 219, type: !4)
!362 = !DILocation(line: 219, column: 26, scope: !354)
!363 = !DILocalVariable(name: "color", scope: !354, file: !17, line: 220, type: !364)
!364 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!365 = !DILocation(line: 220, column: 6, scope: !354)
!366 = !DILocation(line: 222, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !354, file: !17, line: 222, column: 6)
!368 = !DILocation(line: 222, column: 13, scope: !367)
!369 = !DILocation(line: 222, column: 6, scope: !354)
!370 = !DILocation(line: 223, column: 11, scope: !367)
!371 = !DILocation(line: 223, column: 17, scope: !367)
!372 = !DILocation(line: 223, column: 9, scope: !367)
!373 = !DILocation(line: 223, column: 3, scope: !367)
!374 = !DILocation(line: 224, column: 12, scope: !375)
!375 = distinct !DILexicalBlock(scope: !367, file: !17, line: 224, column: 11)
!376 = !DILocation(line: 224, column: 18, scope: !375)
!377 = !DILocation(line: 224, column: 11, scope: !367)
!378 = !DILocation(line: 225, column: 11, scope: !375)
!379 = !DILocation(line: 225, column: 17, scope: !375)
!380 = !DILocation(line: 225, column: 9, scope: !375)
!381 = !DILocation(line: 225, column: 3, scope: !375)
!382 = !DILocalVariable(name: "old", scope: !383, file: !17, line: 228, type: !4)
!383 = distinct !DILexicalBlock(scope: !375, file: !17, line: 227, column: 2)
!384 = !DILocation(line: 228, column: 19, scope: !383)
!385 = !DILocation(line: 228, column: 25, scope: !383)
!386 = !DILocalVariable(name: "left", scope: !383, file: !17, line: 228, type: !4)
!387 = !DILocation(line: 228, column: 32, scope: !383)
!388 = !DILocation(line: 230, column: 10, scope: !383)
!389 = !DILocation(line: 230, column: 16, scope: !383)
!390 = !DILocation(line: 230, column: 8, scope: !383)
!391 = !DILocation(line: 231, column: 3, scope: !383)
!392 = !DILocation(line: 231, column: 18, scope: !393)
!393 = !DILexicalBlockFile(scope: !383, file: !17, discriminator: 1)
!394 = !DILocation(line: 231, column: 24, scope: !393)
!395 = !DILocation(line: 231, column: 16, scope: !393)
!396 = !DILocation(line: 231, column: 33, scope: !393)
!397 = !DILocation(line: 231, column: 3, scope: !393)
!398 = !DILocation(line: 232, column: 11, scope: !383)
!399 = !DILocation(line: 232, column: 9, scope: !383)
!400 = !DILocation(line: 231, column: 3, scope: !401)
!401 = !DILexicalBlockFile(scope: !383, file: !17, discriminator: 2)
!402 = distinct !{!402, !391}
!403 = !DILocation(line: 233, column: 11, scope: !383)
!404 = !DILocation(line: 233, column: 17, scope: !383)
!405 = !DILocation(line: 233, column: 9, scope: !383)
!406 = !DILocation(line: 234, column: 33, scope: !383)
!407 = !DILocation(line: 234, column: 40, scope: !383)
!408 = !DILocation(line: 234, column: 56, scope: !383)
!409 = !DILocation(line: 234, column: 13, scope: !383)
!410 = !DILocation(line: 234, column: 10, scope: !383)
!411 = !DILocation(line: 235, column: 13, scope: !383)
!412 = !DILocation(line: 235, column: 20, scope: !383)
!413 = !DILocation(line: 235, column: 36, scope: !383)
!414 = !DILocation(line: 235, column: 11, scope: !383)
!415 = !DILocation(line: 235, column: 9, scope: !383)
!416 = !DILocation(line: 237, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !383, file: !17, line: 237, column: 7)
!418 = !DILocation(line: 237, column: 7, scope: !383)
!419 = !DILocation(line: 238, column: 18, scope: !417)
!420 = !DILocation(line: 238, column: 25, scope: !417)
!421 = !DILocation(line: 238, column: 4, scope: !417)
!422 = !DILocation(line: 239, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !383, file: !17, line: 239, column: 7)
!424 = !DILocation(line: 239, column: 17, scope: !423)
!425 = !DILocation(line: 239, column: 14, scope: !423)
!426 = !DILocation(line: 239, column: 7, scope: !383)
!427 = !DILocation(line: 240, column: 23, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !17, line: 239, column: 22)
!429 = !DILocation(line: 240, column: 4, scope: !428)
!430 = !DILocation(line: 240, column: 12, scope: !428)
!431 = !DILocation(line: 240, column: 21, scope: !428)
!432 = !DILocation(line: 241, column: 13, scope: !428)
!433 = !DILocation(line: 241, column: 11, scope: !428)
!434 = !DILocation(line: 242, column: 3, scope: !428)
!435 = !DILocation(line: 243, column: 22, scope: !423)
!436 = !DILocation(line: 243, column: 4, scope: !423)
!437 = !DILocation(line: 243, column: 12, scope: !423)
!438 = !DILocation(line: 243, column: 20, scope: !423)
!439 = !DILocation(line: 245, column: 27, scope: !383)
!440 = !DILocation(line: 245, column: 32, scope: !383)
!441 = !DILocation(line: 245, column: 3, scope: !383)
!442 = !DILocation(line: 245, column: 9, scope: !383)
!443 = !DILocation(line: 245, column: 25, scope: !383)
!444 = !DILocation(line: 246, column: 20, scope: !383)
!445 = !DILocation(line: 246, column: 25, scope: !383)
!446 = !DILocation(line: 246, column: 3, scope: !383)
!447 = !DILocation(line: 246, column: 9, scope: !383)
!448 = !DILocation(line: 246, column: 18, scope: !383)
!449 = !DILocation(line: 247, column: 19, scope: !383)
!450 = !DILocation(line: 247, column: 24, scope: !383)
!451 = !DILocation(line: 247, column: 3, scope: !383)
!452 = !DILocation(line: 247, column: 9, scope: !383)
!453 = !DILocation(line: 247, column: 17, scope: !383)
!454 = !DILocation(line: 249, column: 28, scope: !455)
!455 = distinct !DILexicalBlock(scope: !383, file: !17, line: 249, column: 7)
!456 = !DILocation(line: 249, column: 34, scope: !455)
!457 = !DILocation(line: 249, column: 50, scope: !455)
!458 = !DILocation(line: 249, column: 8, scope: !455)
!459 = !DILocation(line: 249, column: 7, scope: !383)
!460 = !DILocation(line: 251, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !17, line: 251, column: 8)
!462 = distinct !DILexicalBlock(scope: !455, file: !17, line: 250, column: 3)
!463 = !DILocation(line: 251, column: 35, scope: !461)
!464 = !DILocation(line: 251, column: 51, scope: !461)
!465 = !DILocation(line: 251, column: 9, scope: !461)
!466 = !DILocation(line: 251, column: 59, scope: !461)
!467 = !DILocation(line: 251, column: 70, scope: !461)
!468 = !DILocation(line: 251, column: 67, scope: !461)
!469 = !DILocation(line: 251, column: 8, scope: !462)
!470 = !DILocation(line: 252, column: 66, scope: !461)
!471 = !DILocation(line: 252, column: 26, scope: !461)
!472 = !DILocation(line: 252, column: 32, scope: !461)
!473 = !DILocation(line: 252, column: 48, scope: !461)
!474 = !DILocation(line: 252, column: 6, scope: !461)
!475 = !DILocation(line: 252, column: 56, scope: !461)
!476 = !DILocation(line: 252, column: 64, scope: !461)
!477 = !DILocation(line: 252, column: 5, scope: !461)
!478 = !DILocation(line: 254, column: 67, scope: !461)
!479 = !DILocation(line: 254, column: 26, scope: !461)
!480 = !DILocation(line: 254, column: 32, scope: !461)
!481 = !DILocation(line: 254, column: 48, scope: !461)
!482 = !DILocation(line: 254, column: 6, scope: !461)
!483 = !DILocation(line: 254, column: 56, scope: !461)
!484 = !DILocation(line: 254, column: 65, scope: !461)
!485 = !DILocation(line: 255, column: 3, scope: !462)
!486 = !DILocation(line: 256, column: 20, scope: !455)
!487 = !DILocation(line: 256, column: 4, scope: !455)
!488 = !DILocation(line: 256, column: 10, scope: !455)
!489 = !DILocation(line: 256, column: 18, scope: !455)
!490 = !DILocation(line: 258, column: 17, scope: !383)
!491 = !DILocation(line: 258, column: 22, scope: !383)
!492 = !DILocation(line: 258, column: 31, scope: !383)
!493 = !DILocation(line: 258, column: 3, scope: !383)
!494 = !DILocation(line: 259, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !383, file: !17, line: 259, column: 7)
!496 = !DILocation(line: 259, column: 12, scope: !495)
!497 = !DILocation(line: 259, column: 7, scope: !383)
!498 = !DILocation(line: 260, column: 18, scope: !495)
!499 = !DILocation(line: 260, column: 23, scope: !495)
!500 = !DILocation(line: 260, column: 33, scope: !495)
!501 = !DILocation(line: 260, column: 4, scope: !495)
!502 = !DILocation(line: 261, column: 3, scope: !383)
!503 = !DILocation(line: 264, column: 32, scope: !354)
!504 = !DILocation(line: 264, column: 39, scope: !354)
!505 = !DILocation(line: 264, column: 55, scope: !354)
!506 = !DILocation(line: 264, column: 12, scope: !354)
!507 = !DILocation(line: 264, column: 9, scope: !354)
!508 = !DILocation(line: 265, column: 12, scope: !354)
!509 = !DILocation(line: 265, column: 19, scope: !354)
!510 = !DILocation(line: 265, column: 35, scope: !354)
!511 = !DILocation(line: 265, column: 10, scope: !354)
!512 = !DILocation(line: 265, column: 8, scope: !354)
!513 = !DILocation(line: 267, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !354, file: !17, line: 267, column: 6)
!515 = !DILocation(line: 267, column: 6, scope: !354)
!516 = !DILocation(line: 268, column: 17, scope: !514)
!517 = !DILocation(line: 268, column: 24, scope: !514)
!518 = !DILocation(line: 268, column: 3, scope: !514)
!519 = !DILocation(line: 269, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !354, file: !17, line: 269, column: 6)
!521 = !DILocation(line: 269, column: 6, scope: !354)
!522 = !DILocation(line: 271, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !17, line: 271, column: 7)
!524 = distinct !DILexicalBlock(scope: !520, file: !17, line: 270, column: 2)
!525 = !DILocation(line: 271, column: 15, scope: !523)
!526 = !DILocation(line: 271, column: 26, scope: !523)
!527 = !DILocation(line: 271, column: 23, scope: !523)
!528 = !DILocation(line: 271, column: 7, scope: !524)
!529 = !DILocation(line: 272, column: 22, scope: !523)
!530 = !DILocation(line: 272, column: 4, scope: !523)
!531 = !DILocation(line: 272, column: 12, scope: !523)
!532 = !DILocation(line: 272, column: 20, scope: !523)
!533 = !DILocation(line: 274, column: 23, scope: !523)
!534 = !DILocation(line: 274, column: 4, scope: !523)
!535 = !DILocation(line: 274, column: 12, scope: !523)
!536 = !DILocation(line: 274, column: 21, scope: !523)
!537 = !DILocation(line: 275, column: 2, scope: !524)
!538 = !DILocation(line: 277, column: 19, scope: !520)
!539 = !DILocation(line: 277, column: 3, scope: !520)
!540 = !DILocation(line: 277, column: 9, scope: !520)
!541 = !DILocation(line: 277, column: 17, scope: !520)
!542 = !DILocation(line: 269, column: 6, scope: !543)
!543 = !DILexicalBlockFile(scope: !520, file: !17, discriminator: 1)
!544 = !DILocation(line: 280, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !354, file: !17, line: 280, column: 6)
!546 = !DILocation(line: 280, column: 12, scope: !545)
!547 = !DILocation(line: 280, column: 6, scope: !354)
!548 = !DILocation(line: 281, column: 20, scope: !545)
!549 = !DILocation(line: 281, column: 27, scope: !545)
!550 = !DILocation(line: 281, column: 35, scope: !545)
!551 = !DILocation(line: 281, column: 3, scope: !545)
!552 = !DILocation(line: 282, column: 1, scope: !354)
!553 = distinct !DISubprogram(name: "rb_set_parent", scope: !6, file: !6, line: 130, type: !554, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !4, !4}
!556 = !DILocalVariable(name: "rb", arg: 1, scope: !553, file: !6, line: 130, type: !4)
!557 = !DILocation(line: 130, column: 50, scope: !553)
!558 = !DILocalVariable(name: "p", arg: 2, scope: !553, file: !6, line: 130, type: !4)
!559 = !DILocation(line: 130, column: 70, scope: !553)
!560 = !DILocation(line: 132, column: 25, scope: !553)
!561 = !DILocation(line: 132, column: 29, scope: !553)
!562 = !DILocation(line: 132, column: 45, scope: !553)
!563 = !DILocation(line: 132, column: 67, scope: !553)
!564 = !DILocation(line: 132, column: 52, scope: !553)
!565 = !DILocation(line: 132, column: 50, scope: !553)
!566 = !DILocation(line: 132, column: 2, scope: !553)
!567 = !DILocation(line: 132, column: 6, scope: !553)
!568 = !DILocation(line: 132, column: 22, scope: !553)
!569 = !DILocation(line: 133, column: 1, scope: !553)
!570 = distinct !DISubprogram(name: "__rb_erase_color", scope: !17, file: !17, line: 137, type: !571, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !4, !4, !20}
!573 = !DILocalVariable(name: "node", arg: 1, scope: !570, file: !17, line: 137, type: !4)
!574 = !DILocation(line: 137, column: 46, scope: !570)
!575 = !DILocalVariable(name: "parent", arg: 2, scope: !570, file: !17, line: 137, type: !4)
!576 = !DILocation(line: 137, column: 68, scope: !570)
!577 = !DILocalVariable(name: "root", arg: 3, scope: !570, file: !17, line: 138, type: !20)
!578 = !DILocation(line: 138, column: 25, scope: !570)
!579 = !DILocalVariable(name: "other", scope: !570, file: !17, line: 140, type: !4)
!580 = !DILocation(line: 140, column: 18, scope: !570)
!581 = !DILocation(line: 142, column: 2, scope: !570)
!582 = !DILocation(line: 142, column: 11, scope: !583)
!583 = !DILexicalBlockFile(scope: !570, file: !17, discriminator: 1)
!584 = !DILocation(line: 142, column: 16, scope: !583)
!585 = !DILocation(line: 142, column: 21, scope: !586)
!586 = !DILexicalBlockFile(scope: !570, file: !17, discriminator: 2)
!587 = !DILocation(line: 142, column: 28, scope: !586)
!588 = !DILocation(line: 142, column: 44, scope: !586)
!589 = !DILocation(line: 142, column: 50, scope: !586)
!590 = !DILocation(line: 142, column: 53, scope: !591)
!591 = !DILexicalBlockFile(scope: !570, file: !17, discriminator: 3)
!592 = !DILocation(line: 142, column: 61, scope: !591)
!593 = !DILocation(line: 142, column: 67, scope: !591)
!594 = !DILocation(line: 142, column: 58, scope: !591)
!595 = !DILocation(line: 142, column: 2, scope: !596)
!596 = !DILexicalBlockFile(scope: !570, file: !17, discriminator: 4)
!597 = !DILocation(line: 144, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !17, line: 144, column: 7)
!599 = distinct !DILexicalBlock(scope: !570, file: !17, line: 143, column: 2)
!600 = !DILocation(line: 144, column: 15, scope: !598)
!601 = !DILocation(line: 144, column: 26, scope: !598)
!602 = !DILocation(line: 144, column: 23, scope: !598)
!603 = !DILocation(line: 144, column: 7, scope: !599)
!604 = !DILocation(line: 146, column: 12, scope: !605)
!605 = distinct !DILexicalBlock(scope: !598, file: !17, line: 145, column: 3)
!606 = !DILocation(line: 146, column: 20, scope: !605)
!607 = !DILocation(line: 146, column: 10, scope: !605)
!608 = !DILocation(line: 147, column: 12, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !17, line: 147, column: 8)
!610 = !DILocation(line: 147, column: 20, scope: !609)
!611 = !DILocation(line: 147, column: 36, scope: !609)
!612 = !DILocation(line: 147, column: 8, scope: !605)
!613 = !DILocation(line: 149, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !17, line: 148, column: 4)
!615 = distinct !{!615, !613}
!616 = !DILocation(line: 149, column: 11, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !17, discriminator: 1)
!618 = distinct !DILexicalBlock(scope: !614, file: !17, line: 149, column: 8)
!619 = !DILocation(line: 149, column: 19, scope: !617)
!620 = !DILocation(line: 149, column: 35, scope: !617)
!621 = !DILocation(line: 149, column: 41, scope: !617)
!622 = !DILocation(line: 150, column: 5, scope: !614)
!623 = distinct !{!623, !622}
!624 = !DILocation(line: 150, column: 11, scope: !625)
!625 = !DILexicalBlockFile(scope: !626, file: !17, discriminator: 1)
!626 = distinct !DILexicalBlock(scope: !614, file: !17, line: 150, column: 8)
!627 = !DILocation(line: 150, column: 20, scope: !625)
!628 = !DILocation(line: 150, column: 36, scope: !625)
!629 = !DILocation(line: 150, column: 43, scope: !625)
!630 = !DILocation(line: 151, column: 22, scope: !614)
!631 = !DILocation(line: 151, column: 30, scope: !614)
!632 = !DILocation(line: 151, column: 5, scope: !614)
!633 = !DILocation(line: 152, column: 13, scope: !614)
!634 = !DILocation(line: 152, column: 21, scope: !614)
!635 = !DILocation(line: 152, column: 11, scope: !614)
!636 = !DILocation(line: 153, column: 4, scope: !614)
!637 = !DILocation(line: 154, column: 10, scope: !638)
!638 = distinct !DILexicalBlock(scope: !605, file: !17, line: 154, column: 8)
!639 = !DILocation(line: 154, column: 17, scope: !638)
!640 = !DILocation(line: 154, column: 25, scope: !638)
!641 = !DILocation(line: 154, column: 30, scope: !642)
!642 = !DILexicalBlockFile(scope: !638, file: !17, discriminator: 1)
!643 = !DILocation(line: 154, column: 37, scope: !642)
!644 = !DILocation(line: 154, column: 47, scope: !642)
!645 = !DILocation(line: 154, column: 63, scope: !642)
!646 = !DILocation(line: 154, column: 69, scope: !642)
!647 = !DILocation(line: 155, column: 10, scope: !638)
!648 = !DILocation(line: 155, column: 17, scope: !638)
!649 = !DILocation(line: 155, column: 26, scope: !638)
!650 = !DILocation(line: 155, column: 31, scope: !642)
!651 = !DILocation(line: 155, column: 38, scope: !642)
!652 = !DILocation(line: 155, column: 49, scope: !642)
!653 = !DILocation(line: 155, column: 65, scope: !642)
!654 = !DILocation(line: 154, column: 8, scope: !655)
!655 = !DILexicalBlockFile(scope: !605, file: !17, discriminator: 2)
!656 = !DILocation(line: 157, column: 5, scope: !657)
!657 = distinct !DILexicalBlock(scope: !638, file: !17, line: 156, column: 4)
!658 = distinct !{!658, !656}
!659 = !DILocation(line: 157, column: 11, scope: !660)
!660 = !DILexicalBlockFile(scope: !661, file: !17, discriminator: 1)
!661 = distinct !DILexicalBlock(scope: !657, file: !17, line: 157, column: 8)
!662 = !DILocation(line: 157, column: 19, scope: !660)
!663 = !DILocation(line: 157, column: 35, scope: !660)
!664 = !DILocation(line: 157, column: 42, scope: !660)
!665 = !DILocation(line: 158, column: 12, scope: !657)
!666 = !DILocation(line: 158, column: 10, scope: !657)
!667 = !DILocation(line: 159, column: 35, scope: !657)
!668 = !DILocation(line: 159, column: 42, scope: !657)
!669 = !DILocation(line: 159, column: 58, scope: !657)
!670 = !DILocation(line: 159, column: 15, scope: !657)
!671 = !DILocation(line: 159, column: 12, scope: !657)
!672 = !DILocation(line: 160, column: 4, scope: !657)
!673 = !DILocation(line: 163, column: 10, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !17, line: 163, column: 9)
!675 = distinct !DILexicalBlock(scope: !638, file: !17, line: 162, column: 4)
!676 = !DILocation(line: 163, column: 17, scope: !674)
!677 = !DILocation(line: 163, column: 26, scope: !674)
!678 = !DILocation(line: 163, column: 31, scope: !679)
!679 = !DILexicalBlockFile(scope: !674, file: !17, discriminator: 1)
!680 = !DILocation(line: 163, column: 38, scope: !679)
!681 = !DILocation(line: 163, column: 49, scope: !679)
!682 = !DILocation(line: 163, column: 65, scope: !679)
!683 = !DILocation(line: 163, column: 9, scope: !679)
!684 = !DILocation(line: 165, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !674, file: !17, line: 164, column: 5)
!686 = distinct !{!686, !684}
!687 = !DILocation(line: 165, column: 12, scope: !688)
!688 = !DILexicalBlockFile(scope: !689, file: !17, discriminator: 1)
!689 = distinct !DILexicalBlock(scope: !685, file: !17, line: 165, column: 9)
!690 = !DILocation(line: 165, column: 19, scope: !688)
!691 = !DILocation(line: 165, column: 29, scope: !688)
!692 = !DILocation(line: 165, column: 45, scope: !688)
!693 = !DILocation(line: 165, column: 51, scope: !688)
!694 = !DILocation(line: 166, column: 6, scope: !685)
!695 = distinct !{!695, !694}
!696 = !DILocation(line: 166, column: 12, scope: !697)
!697 = !DILexicalBlockFile(scope: !698, file: !17, discriminator: 1)
!698 = distinct !DILexicalBlock(scope: !685, file: !17, line: 166, column: 9)
!699 = !DILocation(line: 166, column: 20, scope: !697)
!700 = !DILocation(line: 166, column: 36, scope: !697)
!701 = !DILocation(line: 166, column: 43, scope: !697)
!702 = !DILocation(line: 167, column: 24, scope: !685)
!703 = !DILocation(line: 167, column: 31, scope: !685)
!704 = !DILocation(line: 167, column: 6, scope: !685)
!705 = !DILocation(line: 168, column: 14, scope: !685)
!706 = !DILocation(line: 168, column: 22, scope: !685)
!707 = !DILocation(line: 168, column: 12, scope: !685)
!708 = !DILocation(line: 169, column: 5, scope: !685)
!709 = !DILocation(line: 170, column: 18, scope: !675)
!710 = !DILocation(line: 170, column: 27, scope: !675)
!711 = !DILocation(line: 170, column: 36, scope: !675)
!712 = !DILocation(line: 170, column: 52, scope: !675)
!713 = !DILocation(line: 170, column: 25, scope: !675)
!714 = !DILocation(line: 170, column: 5, scope: !675)
!715 = !DILocation(line: 171, column: 5, scope: !675)
!716 = distinct !{!716, !715}
!717 = !DILocation(line: 171, column: 11, scope: !718)
!718 = !DILexicalBlockFile(scope: !719, file: !17, discriminator: 1)
!719 = distinct !DILexicalBlock(scope: !675, file: !17, line: 171, column: 8)
!720 = !DILocation(line: 171, column: 20, scope: !718)
!721 = !DILocation(line: 171, column: 36, scope: !718)
!722 = !DILocation(line: 171, column: 42, scope: !718)
!723 = !DILocation(line: 172, column: 5, scope: !675)
!724 = distinct !{!724, !723}
!725 = !DILocation(line: 172, column: 11, scope: !726)
!726 = !DILexicalBlockFile(scope: !727, file: !17, discriminator: 1)
!727 = distinct !DILexicalBlock(scope: !675, file: !17, line: 172, column: 8)
!728 = !DILocation(line: 172, column: 18, scope: !726)
!729 = !DILocation(line: 172, column: 29, scope: !726)
!730 = !DILocation(line: 172, column: 45, scope: !726)
!731 = !DILocation(line: 172, column: 51, scope: !726)
!732 = !DILocation(line: 173, column: 22, scope: !675)
!733 = !DILocation(line: 173, column: 30, scope: !675)
!734 = !DILocation(line: 173, column: 5, scope: !675)
!735 = !DILocation(line: 174, column: 12, scope: !675)
!736 = !DILocation(line: 174, column: 18, scope: !675)
!737 = !DILocation(line: 174, column: 10, scope: !675)
!738 = !DILocation(line: 175, column: 5, scope: !675)
!739 = !DILocation(line: 177, column: 3, scope: !605)
!740 = !DILocation(line: 180, column: 12, scope: !741)
!741 = distinct !DILexicalBlock(scope: !598, file: !17, line: 179, column: 3)
!742 = !DILocation(line: 180, column: 20, scope: !741)
!743 = !DILocation(line: 180, column: 10, scope: !741)
!744 = !DILocation(line: 181, column: 12, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !17, line: 181, column: 8)
!746 = !DILocation(line: 181, column: 20, scope: !745)
!747 = !DILocation(line: 181, column: 36, scope: !745)
!748 = !DILocation(line: 181, column: 8, scope: !741)
!749 = !DILocation(line: 183, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !17, line: 182, column: 4)
!751 = distinct !{!751, !749}
!752 = !DILocation(line: 183, column: 11, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !17, discriminator: 1)
!754 = distinct !DILexicalBlock(scope: !750, file: !17, line: 183, column: 8)
!755 = !DILocation(line: 183, column: 19, scope: !753)
!756 = !DILocation(line: 183, column: 35, scope: !753)
!757 = !DILocation(line: 183, column: 41, scope: !753)
!758 = !DILocation(line: 184, column: 5, scope: !750)
!759 = distinct !{!759, !758}
!760 = !DILocation(line: 184, column: 11, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !17, discriminator: 1)
!762 = distinct !DILexicalBlock(scope: !750, file: !17, line: 184, column: 8)
!763 = !DILocation(line: 184, column: 20, scope: !761)
!764 = !DILocation(line: 184, column: 36, scope: !761)
!765 = !DILocation(line: 184, column: 43, scope: !761)
!766 = !DILocation(line: 185, column: 23, scope: !750)
!767 = !DILocation(line: 185, column: 31, scope: !750)
!768 = !DILocation(line: 185, column: 5, scope: !750)
!769 = !DILocation(line: 186, column: 13, scope: !750)
!770 = !DILocation(line: 186, column: 21, scope: !750)
!771 = !DILocation(line: 186, column: 11, scope: !750)
!772 = !DILocation(line: 187, column: 4, scope: !750)
!773 = !DILocation(line: 188, column: 10, scope: !774)
!774 = distinct !DILexicalBlock(scope: !741, file: !17, line: 188, column: 8)
!775 = !DILocation(line: 188, column: 17, scope: !774)
!776 = !DILocation(line: 188, column: 25, scope: !774)
!777 = !DILocation(line: 188, column: 30, scope: !778)
!778 = !DILexicalBlockFile(scope: !774, file: !17, discriminator: 1)
!779 = !DILocation(line: 188, column: 37, scope: !778)
!780 = !DILocation(line: 188, column: 47, scope: !778)
!781 = !DILocation(line: 188, column: 63, scope: !778)
!782 = !DILocation(line: 188, column: 69, scope: !778)
!783 = !DILocation(line: 189, column: 10, scope: !774)
!784 = !DILocation(line: 189, column: 17, scope: !774)
!785 = !DILocation(line: 189, column: 26, scope: !774)
!786 = !DILocation(line: 189, column: 31, scope: !778)
!787 = !DILocation(line: 189, column: 38, scope: !778)
!788 = !DILocation(line: 189, column: 49, scope: !778)
!789 = !DILocation(line: 189, column: 65, scope: !778)
!790 = !DILocation(line: 188, column: 8, scope: !791)
!791 = !DILexicalBlockFile(scope: !741, file: !17, discriminator: 2)
!792 = !DILocation(line: 191, column: 5, scope: !793)
!793 = distinct !DILexicalBlock(scope: !774, file: !17, line: 190, column: 4)
!794 = distinct !{!794, !792}
!795 = !DILocation(line: 191, column: 11, scope: !796)
!796 = !DILexicalBlockFile(scope: !797, file: !17, discriminator: 1)
!797 = distinct !DILexicalBlock(scope: !793, file: !17, line: 191, column: 8)
!798 = !DILocation(line: 191, column: 19, scope: !796)
!799 = !DILocation(line: 191, column: 35, scope: !796)
!800 = !DILocation(line: 191, column: 42, scope: !796)
!801 = !DILocation(line: 192, column: 12, scope: !793)
!802 = !DILocation(line: 192, column: 10, scope: !793)
!803 = !DILocation(line: 193, column: 35, scope: !793)
!804 = !DILocation(line: 193, column: 42, scope: !793)
!805 = !DILocation(line: 193, column: 58, scope: !793)
!806 = !DILocation(line: 193, column: 15, scope: !793)
!807 = !DILocation(line: 193, column: 12, scope: !793)
!808 = !DILocation(line: 194, column: 4, scope: !793)
!809 = !DILocation(line: 197, column: 10, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !17, line: 197, column: 9)
!811 = distinct !DILexicalBlock(scope: !774, file: !17, line: 196, column: 4)
!812 = !DILocation(line: 197, column: 17, scope: !810)
!813 = !DILocation(line: 197, column: 25, scope: !810)
!814 = !DILocation(line: 197, column: 30, scope: !815)
!815 = !DILexicalBlockFile(scope: !810, file: !17, discriminator: 1)
!816 = !DILocation(line: 197, column: 37, scope: !815)
!817 = !DILocation(line: 197, column: 47, scope: !815)
!818 = !DILocation(line: 197, column: 63, scope: !815)
!819 = !DILocation(line: 197, column: 9, scope: !815)
!820 = !DILocation(line: 199, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !810, file: !17, line: 198, column: 5)
!822 = distinct !{!822, !820}
!823 = !DILocation(line: 199, column: 12, scope: !824)
!824 = !DILexicalBlockFile(scope: !825, file: !17, discriminator: 1)
!825 = distinct !DILexicalBlock(scope: !821, file: !17, line: 199, column: 9)
!826 = !DILocation(line: 199, column: 19, scope: !824)
!827 = !DILocation(line: 199, column: 30, scope: !824)
!828 = !DILocation(line: 199, column: 46, scope: !824)
!829 = !DILocation(line: 199, column: 52, scope: !824)
!830 = !DILocation(line: 200, column: 6, scope: !821)
!831 = distinct !{!831, !830}
!832 = !DILocation(line: 200, column: 12, scope: !833)
!833 = !DILexicalBlockFile(scope: !834, file: !17, discriminator: 1)
!834 = distinct !DILexicalBlock(scope: !821, file: !17, line: 200, column: 9)
!835 = !DILocation(line: 200, column: 20, scope: !833)
!836 = !DILocation(line: 200, column: 36, scope: !833)
!837 = !DILocation(line: 200, column: 43, scope: !833)
!838 = !DILocation(line: 201, column: 23, scope: !821)
!839 = !DILocation(line: 201, column: 30, scope: !821)
!840 = !DILocation(line: 201, column: 6, scope: !821)
!841 = !DILocation(line: 202, column: 14, scope: !821)
!842 = !DILocation(line: 202, column: 22, scope: !821)
!843 = !DILocation(line: 202, column: 12, scope: !821)
!844 = !DILocation(line: 203, column: 5, scope: !821)
!845 = !DILocation(line: 204, column: 18, scope: !811)
!846 = !DILocation(line: 204, column: 27, scope: !811)
!847 = !DILocation(line: 204, column: 36, scope: !811)
!848 = !DILocation(line: 204, column: 52, scope: !811)
!849 = !DILocation(line: 204, column: 25, scope: !811)
!850 = !DILocation(line: 204, column: 5, scope: !811)
!851 = !DILocation(line: 205, column: 5, scope: !811)
!852 = distinct !{!852, !851}
!853 = !DILocation(line: 205, column: 11, scope: !854)
!854 = !DILexicalBlockFile(scope: !855, file: !17, discriminator: 1)
!855 = distinct !DILexicalBlock(scope: !811, file: !17, line: 205, column: 8)
!856 = !DILocation(line: 205, column: 20, scope: !854)
!857 = !DILocation(line: 205, column: 36, scope: !854)
!858 = !DILocation(line: 205, column: 42, scope: !854)
!859 = !DILocation(line: 206, column: 5, scope: !811)
!860 = distinct !{!860, !859}
!861 = !DILocation(line: 206, column: 11, scope: !862)
!862 = !DILexicalBlockFile(scope: !863, file: !17, discriminator: 1)
!863 = distinct !DILexicalBlock(scope: !811, file: !17, line: 206, column: 8)
!864 = !DILocation(line: 206, column: 18, scope: !862)
!865 = !DILocation(line: 206, column: 28, scope: !862)
!866 = !DILocation(line: 206, column: 44, scope: !862)
!867 = !DILocation(line: 206, column: 50, scope: !862)
!868 = !DILocation(line: 207, column: 23, scope: !811)
!869 = !DILocation(line: 207, column: 31, scope: !811)
!870 = !DILocation(line: 207, column: 5, scope: !811)
!871 = !DILocation(line: 208, column: 12, scope: !811)
!872 = !DILocation(line: 208, column: 18, scope: !811)
!873 = !DILocation(line: 208, column: 10, scope: !811)
!874 = !DILocation(line: 209, column: 5, scope: !811)
!875 = !DILocation(line: 142, column: 2, scope: !876)
!876 = !DILexicalBlockFile(scope: !570, file: !17, discriminator: 5)
!877 = distinct !{!877, !581}
!878 = !DILocation(line: 213, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !570, file: !17, line: 213, column: 6)
!880 = !DILocation(line: 213, column: 6, scope: !570)
!881 = !DILocation(line: 214, column: 3, scope: !879)
!882 = distinct !{!882, !881}
!883 = !DILocation(line: 214, column: 9, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !17, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !879, file: !17, line: 214, column: 6)
!886 = !DILocation(line: 214, column: 16, scope: !884)
!887 = !DILocation(line: 214, column: 32, scope: !884)
!888 = !DILocation(line: 214, column: 38, scope: !884)
!889 = !DILocation(line: 214, column: 38, scope: !890)
!890 = !DILexicalBlockFile(scope: !885, file: !17, discriminator: 2)
!891 = !DILocation(line: 215, column: 1, scope: !570)
!892 = distinct !DISubprogram(name: "rb_first", scope: !17, file: !17, line: 287, type: !893, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!893 = !DISubroutineType(types: !894)
!894 = !{!4, !895}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64, align: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!897 = !DILocalVariable(name: "root", arg: 1, scope: !892, file: !17, line: 287, type: !895)
!898 = !DILocation(line: 287, column: 48, scope: !892)
!899 = !DILocalVariable(name: "n", scope: !892, file: !17, line: 289, type: !4)
!900 = !DILocation(line: 289, column: 18, scope: !892)
!901 = !DILocation(line: 291, column: 6, scope: !892)
!902 = !DILocation(line: 291, column: 12, scope: !892)
!903 = !DILocation(line: 291, column: 4, scope: !892)
!904 = !DILocation(line: 292, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !892, file: !17, line: 292, column: 6)
!906 = !DILocation(line: 292, column: 6, scope: !892)
!907 = !DILocation(line: 293, column: 3, scope: !905)
!908 = !DILocation(line: 294, column: 2, scope: !892)
!909 = !DILocation(line: 294, column: 9, scope: !910)
!910 = !DILexicalBlockFile(scope: !892, file: !17, discriminator: 1)
!911 = !DILocation(line: 294, column: 12, scope: !910)
!912 = !DILocation(line: 294, column: 2, scope: !910)
!913 = !DILocation(line: 295, column: 7, scope: !892)
!914 = !DILocation(line: 295, column: 10, scope: !892)
!915 = !DILocation(line: 295, column: 5, scope: !892)
!916 = !DILocation(line: 294, column: 2, scope: !917)
!917 = !DILexicalBlockFile(scope: !892, file: !17, discriminator: 2)
!918 = distinct !{!918, !908}
!919 = !DILocation(line: 296, column: 9, scope: !892)
!920 = !DILocation(line: 296, column: 2, scope: !892)
!921 = !DILocation(line: 297, column: 1, scope: !892)
!922 = distinct !DISubprogram(name: "rb_last", scope: !17, file: !17, line: 299, type: !893, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!923 = !DILocalVariable(name: "root", arg: 1, scope: !922, file: !17, line: 299, type: !895)
!924 = !DILocation(line: 299, column: 47, scope: !922)
!925 = !DILocalVariable(name: "n", scope: !922, file: !17, line: 301, type: !4)
!926 = !DILocation(line: 301, column: 18, scope: !922)
!927 = !DILocation(line: 303, column: 6, scope: !922)
!928 = !DILocation(line: 303, column: 12, scope: !922)
!929 = !DILocation(line: 303, column: 4, scope: !922)
!930 = !DILocation(line: 304, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !922, file: !17, line: 304, column: 6)
!932 = !DILocation(line: 304, column: 6, scope: !922)
!933 = !DILocation(line: 305, column: 3, scope: !931)
!934 = !DILocation(line: 306, column: 2, scope: !922)
!935 = !DILocation(line: 306, column: 9, scope: !936)
!936 = !DILexicalBlockFile(scope: !922, file: !17, discriminator: 1)
!937 = !DILocation(line: 306, column: 12, scope: !936)
!938 = !DILocation(line: 306, column: 2, scope: !936)
!939 = !DILocation(line: 307, column: 7, scope: !922)
!940 = !DILocation(line: 307, column: 10, scope: !922)
!941 = !DILocation(line: 307, column: 5, scope: !922)
!942 = !DILocation(line: 306, column: 2, scope: !943)
!943 = !DILexicalBlockFile(scope: !922, file: !17, discriminator: 2)
!944 = distinct !{!944, !934}
!945 = !DILocation(line: 308, column: 9, scope: !922)
!946 = !DILocation(line: 308, column: 2, scope: !922)
!947 = !DILocation(line: 309, column: 1, scope: !922)
!948 = distinct !DISubprogram(name: "rb_next", scope: !17, file: !17, line: 311, type: !949, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!949 = !DISubroutineType(types: !950)
!950 = !{!4, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!953 = !DILocalVariable(name: "node", arg: 1, scope: !948, file: !17, line: 311, type: !951)
!954 = !DILocation(line: 311, column: 47, scope: !948)
!955 = !DILocalVariable(name: "parent", scope: !948, file: !17, line: 313, type: !4)
!956 = !DILocation(line: 313, column: 18, scope: !948)
!957 = !DILocation(line: 315, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !948, file: !17, line: 315, column: 6)
!959 = !DILocation(line: 315, column: 12, scope: !958)
!960 = !DILocation(line: 315, column: 36, scope: !961)
!961 = !DILexicalBlockFile(scope: !958, file: !17, discriminator: 1)
!962 = !DILocation(line: 315, column: 43, scope: !961)
!963 = !DILocation(line: 315, column: 59, scope: !961)
!964 = !DILocation(line: 315, column: 16, scope: !961)
!965 = !DILocation(line: 315, column: 69, scope: !961)
!966 = !DILocation(line: 315, column: 66, scope: !961)
!967 = !DILocation(line: 315, column: 6, scope: !961)
!968 = !DILocation(line: 316, column: 3, scope: !958)
!969 = !DILocation(line: 320, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !948, file: !17, line: 320, column: 6)
!971 = !DILocation(line: 320, column: 12, scope: !970)
!972 = !DILocation(line: 320, column: 6, scope: !948)
!973 = !DILocation(line: 321, column: 10, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !17, line: 320, column: 22)
!975 = !DILocation(line: 321, column: 16, scope: !974)
!976 = !DILocation(line: 321, column: 8, scope: !974)
!977 = !DILocation(line: 322, column: 3, scope: !974)
!978 = !DILocation(line: 322, column: 10, scope: !979)
!979 = !DILexicalBlockFile(scope: !974, file: !17, discriminator: 1)
!980 = !DILocation(line: 322, column: 16, scope: !979)
!981 = !DILocation(line: 322, column: 3, scope: !979)
!982 = !DILocation(line: 323, column: 9, scope: !974)
!983 = !DILocation(line: 323, column: 15, scope: !974)
!984 = !DILocation(line: 323, column: 8, scope: !974)
!985 = !DILocation(line: 322, column: 3, scope: !986)
!986 = !DILexicalBlockFile(scope: !974, file: !17, discriminator: 2)
!987 = distinct !{!987, !977}
!988 = !DILocation(line: 324, column: 28, scope: !974)
!989 = !DILocation(line: 324, column: 3, scope: !974)
!990 = !DILocation(line: 333, column: 2, scope: !948)
!991 = !DILocation(line: 333, column: 40, scope: !992)
!992 = !DILexicalBlockFile(scope: !948, file: !17, discriminator: 1)
!993 = !DILocation(line: 333, column: 47, scope: !992)
!994 = !DILocation(line: 333, column: 63, scope: !992)
!995 = !DILocation(line: 333, column: 20, scope: !992)
!996 = !DILocation(line: 333, column: 17, scope: !992)
!997 = !DILocation(line: 333, column: 71, scope: !992)
!998 = !DILocation(line: 333, column: 74, scope: !999)
!999 = !DILexicalBlockFile(scope: !948, file: !17, discriminator: 2)
!1000 = !DILocation(line: 333, column: 82, scope: !999)
!1001 = !DILocation(line: 333, column: 90, scope: !999)
!1002 = !DILocation(line: 333, column: 79, scope: !999)
!1003 = !DILocation(line: 333, column: 2, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !948, file: !17, discriminator: 3)
!1005 = !DILocation(line: 334, column: 10, scope: !948)
!1006 = !DILocation(line: 334, column: 8, scope: !948)
!1007 = !DILocation(line: 333, column: 2, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !948, file: !17, discriminator: 4)
!1009 = distinct !{!1009, !990}
!1010 = !DILocation(line: 336, column: 9, scope: !948)
!1011 = !DILocation(line: 336, column: 2, scope: !948)
!1012 = !DILocation(line: 337, column: 1, scope: !948)
!1013 = distinct !DISubprogram(name: "rb_prev", scope: !17, file: !17, line: 339, type: !949, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1014 = !DILocalVariable(name: "node", arg: 1, scope: !1013, file: !17, line: 339, type: !951)
!1015 = !DILocation(line: 339, column: 47, scope: !1013)
!1016 = !DILocalVariable(name: "parent", scope: !1013, file: !17, line: 341, type: !4)
!1017 = !DILocation(line: 341, column: 18, scope: !1013)
!1018 = !DILocation(line: 343, column: 27, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1013, file: !17, line: 343, column: 6)
!1020 = !DILocation(line: 343, column: 34, scope: !1019)
!1021 = !DILocation(line: 343, column: 50, scope: !1019)
!1022 = !DILocation(line: 343, column: 7, scope: !1019)
!1023 = !DILocation(line: 343, column: 60, scope: !1019)
!1024 = !DILocation(line: 343, column: 57, scope: !1019)
!1025 = !DILocation(line: 343, column: 6, scope: !1013)
!1026 = !DILocation(line: 344, column: 3, scope: !1019)
!1027 = !DILocation(line: 348, column: 6, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1013, file: !17, line: 348, column: 6)
!1029 = !DILocation(line: 348, column: 12, scope: !1028)
!1030 = !DILocation(line: 348, column: 6, scope: !1013)
!1031 = !DILocation(line: 349, column: 10, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !17, line: 348, column: 21)
!1033 = !DILocation(line: 349, column: 16, scope: !1032)
!1034 = !DILocation(line: 349, column: 8, scope: !1032)
!1035 = !DILocation(line: 350, column: 3, scope: !1032)
!1036 = !DILocation(line: 350, column: 10, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1032, file: !17, discriminator: 1)
!1038 = !DILocation(line: 350, column: 16, scope: !1037)
!1039 = !DILocation(line: 350, column: 3, scope: !1037)
!1040 = !DILocation(line: 351, column: 9, scope: !1032)
!1041 = !DILocation(line: 351, column: 15, scope: !1032)
!1042 = !DILocation(line: 351, column: 8, scope: !1032)
!1043 = !DILocation(line: 350, column: 3, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1032, file: !17, discriminator: 2)
!1045 = distinct !{!1045, !1035}
!1046 = !DILocation(line: 352, column: 28, scope: !1032)
!1047 = !DILocation(line: 352, column: 3, scope: !1032)
!1048 = !DILocation(line: 357, column: 2, scope: !1013)
!1049 = !DILocation(line: 357, column: 40, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1013, file: !17, discriminator: 1)
!1051 = !DILocation(line: 357, column: 47, scope: !1050)
!1052 = !DILocation(line: 357, column: 63, scope: !1050)
!1053 = !DILocation(line: 357, column: 20, scope: !1050)
!1054 = !DILocation(line: 357, column: 17, scope: !1050)
!1055 = !DILocation(line: 357, column: 71, scope: !1050)
!1056 = !DILocation(line: 357, column: 74, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1013, file: !17, discriminator: 2)
!1058 = !DILocation(line: 357, column: 82, scope: !1057)
!1059 = !DILocation(line: 357, column: 90, scope: !1057)
!1060 = !DILocation(line: 357, column: 79, scope: !1057)
!1061 = !DILocation(line: 357, column: 2, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1013, file: !17, discriminator: 3)
!1063 = !DILocation(line: 358, column: 10, scope: !1013)
!1064 = !DILocation(line: 358, column: 8, scope: !1013)
!1065 = !DILocation(line: 357, column: 2, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1013, file: !17, discriminator: 4)
!1067 = distinct !{!1067, !1048}
!1068 = !DILocation(line: 360, column: 9, scope: !1013)
!1069 = !DILocation(line: 360, column: 2, scope: !1013)
!1070 = !DILocation(line: 361, column: 1, scope: !1013)
!1071 = distinct !DISubprogram(name: "rb_replace_node", scope: !17, file: !17, line: 363, type: !571, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1072 = !DILocalVariable(name: "victim", arg: 1, scope: !1071, file: !17, line: 363, type: !4)
!1073 = !DILocation(line: 363, column: 38, scope: !1071)
!1074 = !DILocalVariable(name: "new", arg: 2, scope: !1071, file: !17, line: 363, type: !4)
!1075 = !DILocation(line: 363, column: 62, scope: !1071)
!1076 = !DILocalVariable(name: "root", arg: 3, scope: !1071, file: !17, line: 364, type: !20)
!1077 = !DILocation(line: 364, column: 24, scope: !1071)
!1078 = !DILocalVariable(name: "parent", scope: !1071, file: !17, line: 366, type: !4)
!1079 = !DILocation(line: 366, column: 18, scope: !1071)
!1080 = !DILocation(line: 366, column: 48, scope: !1071)
!1081 = !DILocation(line: 366, column: 57, scope: !1071)
!1082 = !DILocation(line: 366, column: 73, scope: !1071)
!1083 = !DILocation(line: 366, column: 28, scope: !1071)
!1084 = !DILocation(line: 369, column: 6, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !17, line: 369, column: 6)
!1086 = !DILocation(line: 369, column: 6, scope: !1071)
!1087 = !DILocation(line: 370, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !17, line: 370, column: 7)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !17, line: 369, column: 14)
!1090 = !DILocation(line: 370, column: 17, scope: !1088)
!1091 = !DILocation(line: 370, column: 25, scope: !1088)
!1092 = !DILocation(line: 370, column: 14, scope: !1088)
!1093 = !DILocation(line: 370, column: 7, scope: !1089)
!1094 = !DILocation(line: 371, column: 22, scope: !1088)
!1095 = !DILocation(line: 371, column: 4, scope: !1088)
!1096 = !DILocation(line: 371, column: 12, scope: !1088)
!1097 = !DILocation(line: 371, column: 20, scope: !1088)
!1098 = !DILocation(line: 373, column: 23, scope: !1088)
!1099 = !DILocation(line: 373, column: 4, scope: !1088)
!1100 = !DILocation(line: 373, column: 12, scope: !1088)
!1101 = !DILocation(line: 373, column: 21, scope: !1088)
!1102 = !DILocation(line: 374, column: 2, scope: !1089)
!1103 = !DILocation(line: 375, column: 19, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1085, file: !17, line: 374, column: 9)
!1105 = !DILocation(line: 375, column: 3, scope: !1104)
!1106 = !DILocation(line: 375, column: 9, scope: !1104)
!1107 = !DILocation(line: 375, column: 17, scope: !1104)
!1108 = !DILocation(line: 377, column: 6, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1071, file: !17, line: 377, column: 6)
!1110 = !DILocation(line: 377, column: 14, scope: !1109)
!1111 = !DILocation(line: 377, column: 6, scope: !1071)
!1112 = !DILocation(line: 378, column: 17, scope: !1109)
!1113 = !DILocation(line: 378, column: 25, scope: !1109)
!1114 = !DILocation(line: 378, column: 34, scope: !1109)
!1115 = !DILocation(line: 378, column: 3, scope: !1109)
!1116 = !DILocation(line: 379, column: 6, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1071, file: !17, line: 379, column: 6)
!1118 = !DILocation(line: 379, column: 14, scope: !1117)
!1119 = !DILocation(line: 379, column: 6, scope: !1071)
!1120 = !DILocation(line: 380, column: 17, scope: !1117)
!1121 = !DILocation(line: 380, column: 25, scope: !1117)
!1122 = !DILocation(line: 380, column: 35, scope: !1117)
!1123 = !DILocation(line: 380, column: 3, scope: !1117)
!1124 = !DILocation(line: 383, column: 3, scope: !1071)
!1125 = !DILocation(line: 383, column: 10, scope: !1071)
!1126 = !DILocation(line: 383, column: 9, scope: !1071)
!1127 = !DILocation(line: 384, column: 1, scope: !1071)
!1128 = distinct !DISubprogram(name: "rb_set_color", scope: !6, file: !6, line: 134, type: !1129, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !4, !364}
!1131 = !DILocalVariable(name: "rb", arg: 1, scope: !1128, file: !6, line: 134, type: !4)
!1132 = !DILocation(line: 134, column: 49, scope: !1128)
!1133 = !DILocalVariable(name: "color", arg: 2, scope: !1128, file: !6, line: 134, type: !364)
!1134 = !DILocation(line: 134, column: 57, scope: !1128)
!1135 = !DILocation(line: 136, column: 25, scope: !1128)
!1136 = !DILocation(line: 136, column: 29, scope: !1128)
!1137 = !DILocation(line: 136, column: 45, scope: !1128)
!1138 = !DILocation(line: 136, column: 53, scope: !1128)
!1139 = !DILocation(line: 136, column: 51, scope: !1128)
!1140 = !DILocation(line: 136, column: 2, scope: !1128)
!1141 = !DILocation(line: 136, column: 6, scope: !1128)
!1142 = !DILocation(line: 136, column: 22, scope: !1128)
!1143 = !DILocation(line: 137, column: 1, scope: !1128)
