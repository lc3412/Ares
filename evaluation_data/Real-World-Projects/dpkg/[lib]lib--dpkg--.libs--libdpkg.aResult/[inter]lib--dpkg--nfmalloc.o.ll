; ModuleID = './[inter]lib--dpkg--nfmalloc.o.i'
source_filename = "./[inter]lib--dpkg--nfmalloc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%union.anon = type { i64 }

@dbobs_init = internal global i8 0, align 1
@db_obs = internal global %struct.obstack zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define i8* @nfmalloc(i64) #0 !dbg !59 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.obstack*, align 8
  %4 = alloca %struct.obstack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.obstack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !65, metadata !66), !dbg !67
  %10 = load i8, i8* @dbobs_init, align 1, !dbg !68
  %11 = trunc i8 %10 to i1, !dbg !68
  br i1 %11, label %13, label %12, !dbg !70

; <label>:12:                                     ; preds = %1
  call void @nfobstack_init(), !dbg !71
  br label %13, !dbg !74

; <label>:13:                                     ; preds = %12, %1
  call void @llvm.dbg.declare(metadata %struct.obstack** %3, metadata !75, metadata !66), !dbg !78
  store %struct.obstack* @db_obs, %struct.obstack** %3, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct.obstack** %4, metadata !79, metadata !66), !dbg !81
  %14 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !82
  store %struct.obstack* %14, %struct.obstack** %4, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %5, metadata !83, metadata !66), !dbg !84
  %15 = load i64, i64* %2, align 8, !dbg !85
  %16 = trunc i64 %15 to i32, !dbg !86
  store i32 %16, i32* %5, align 4, !dbg !84
  %17 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !87
  %18 = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 4, !dbg !89
  %19 = load i8*, i8** %18, align 8, !dbg !89
  %20 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !90
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3, !dbg !91
  %22 = load i8*, i8** %21, align 8, !dbg !91
  %23 = ptrtoint i8* %19 to i64, !dbg !92
  %24 = ptrtoint i8* %22 to i64, !dbg !92
  %25 = sub i64 %23, %24, !dbg !92
  %26 = load i32, i32* %5, align 4, !dbg !93
  %27 = sext i32 %26 to i64, !dbg !93
  %28 = icmp slt i64 %25, %27, !dbg !94
  br i1 %28, label %29, label %32, !dbg !95

; <label>:29:                                     ; preds = %13
  %30 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !96
  %31 = load i32, i32* %5, align 4, !dbg !98
  call void @_obstack_newchunk(%struct.obstack* %30, i32 %31), !dbg !99
  br label %32, !dbg !99

; <label>:32:                                     ; preds = %29, %13
  %33 = load i32, i32* %5, align 4, !dbg !100
  %34 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !102
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 3, !dbg !103
  %36 = load i8*, i8** %35, align 8, !dbg !104
  %37 = sext i32 %33 to i64, !dbg !104
  %38 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !104
  store i8* %38, i8** %35, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata %struct.obstack** %7, metadata !105, metadata !66), !dbg !107
  %39 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !108
  store %struct.obstack* %39, %struct.obstack** %7, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i8** %8, metadata !110, metadata !66), !dbg !111
  %40 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !112
  %41 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 2, !dbg !113
  %42 = load i8*, i8** %41, align 8, !dbg !113
  store i8* %42, i8** %8, align 8, !dbg !114
  %43 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !115
  %44 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3, !dbg !116
  %45 = load i8*, i8** %44, align 8, !dbg !116
  %46 = load i8*, i8** %8, align 8, !dbg !117
  %47 = icmp eq i8* %45, %46, !dbg !118
  br i1 %47, label %48, label %54, !dbg !115

; <label>:48:                                     ; preds = %32
  %49 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !119
  %50 = getelementptr inbounds %struct.obstack, %struct.obstack* %49, i32 0, i32 10, !dbg !122
  %51 = load i8, i8* %50, align 8, !dbg !123
  %52 = and i8 %51, -3, !dbg !123
  %53 = or i8 %52, 2, !dbg !123
  store i8 %53, i8* %50, align 8, !dbg !123
  br label %54, !dbg !119

; <label>:54:                                     ; preds = %48, %32
  %55 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !124
  %56 = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 3, !dbg !126
  %57 = load i8*, i8** %56, align 8, !dbg !126
  %58 = ptrtoint i8* %57 to i64, !dbg !127
  %59 = sub i64 %58, 0, !dbg !127
  %60 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !128
  %61 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 6, !dbg !129
  %62 = load i32, i32* %61, align 8, !dbg !129
  %63 = sext i32 %62 to i64, !dbg !130
  %64 = add nsw i64 %59, %63, !dbg !131
  %65 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !132
  %66 = getelementptr inbounds %struct.obstack, %struct.obstack* %65, i32 0, i32 6, !dbg !133
  %67 = load i32, i32* %66, align 8, !dbg !133
  %68 = xor i32 %67, -1, !dbg !134
  %69 = sext i32 %68 to i64, !dbg !134
  %70 = and i64 %64, %69, !dbg !135
  %71 = getelementptr inbounds i8, i8* null, i64 %70, !dbg !136
  %72 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !137
  %73 = getelementptr inbounds %struct.obstack, %struct.obstack* %72, i32 0, i32 3, !dbg !138
  store i8* %71, i8** %73, align 8, !dbg !139
  %74 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !140
  %75 = getelementptr inbounds %struct.obstack, %struct.obstack* %74, i32 0, i32 3, !dbg !141
  %76 = load i8*, i8** %75, align 8, !dbg !141
  %77 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !142
  %78 = getelementptr inbounds %struct.obstack, %struct.obstack* %77, i32 0, i32 1, !dbg !143
  %79 = load %struct._obstack_chunk*, %struct._obstack_chunk** %78, align 8, !dbg !143
  %80 = bitcast %struct._obstack_chunk* %79 to i8*, !dbg !144
  %81 = ptrtoint i8* %76 to i64, !dbg !145
  %82 = ptrtoint i8* %80 to i64, !dbg !145
  %83 = sub i64 %81, %82, !dbg !145
  %84 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !146
  %85 = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 4, !dbg !147
  %86 = load i8*, i8** %85, align 8, !dbg !147
  %87 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !148
  %88 = getelementptr inbounds %struct.obstack, %struct.obstack* %87, i32 0, i32 1, !dbg !149
  %89 = load %struct._obstack_chunk*, %struct._obstack_chunk** %88, align 8, !dbg !149
  %90 = bitcast %struct._obstack_chunk* %89 to i8*, !dbg !150
  %91 = ptrtoint i8* %86 to i64, !dbg !151
  %92 = ptrtoint i8* %90 to i64, !dbg !151
  %93 = sub i64 %91, %92, !dbg !151
  %94 = icmp sgt i64 %83, %93, !dbg !152
  br i1 %94, label %95, label %101, !dbg !140

; <label>:95:                                     ; preds = %54
  %96 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !153
  %97 = getelementptr inbounds %struct.obstack, %struct.obstack* %96, i32 0, i32 4, !dbg !156
  %98 = load i8*, i8** %97, align 8, !dbg !156
  %99 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !157
  %100 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 3, !dbg !158
  store i8* %98, i8** %100, align 8, !dbg !159
  br label %101, !dbg !157

; <label>:101:                                    ; preds = %95, %54
  %102 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !160
  %103 = getelementptr inbounds %struct.obstack, %struct.obstack* %102, i32 0, i32 3, !dbg !162
  %104 = load i8*, i8** %103, align 8, !dbg !162
  %105 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !163
  %106 = getelementptr inbounds %struct.obstack, %struct.obstack* %105, i32 0, i32 2, !dbg !164
  store i8* %104, i8** %106, align 8, !dbg !165
  %107 = load i8*, i8** %8, align 8, !dbg !166
  store i8* %107, i8** %9, align 8, !dbg !163
  %108 = load i8*, i8** %9, align 8, !dbg !167
  store i8* %108, i8** %6, align 8, !dbg !168
  %109 = load i8*, i8** %6, align 8, !dbg !169
  ret i8* %109, !dbg !170
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @nfobstack_init() #0 !dbg !171 {
  %1 = call i32 @_obstack_begin(%struct.obstack* @db_obs, i32 0, i32 0, i8* (i64)* @m_malloc, void (i8*)* @free), !dbg !174
  store i8 1, i8* @dbobs_init, align 1, !dbg !175
  store i64 8192, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @db_obs, i32 0, i32 0), align 8, !dbg !176
  ret void, !dbg !177
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @nfstrsave(i8*) #0 !dbg !178 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.obstack*, align 8
  %4 = alloca %struct.obstack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.obstack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !183, metadata !66), !dbg !184
  %10 = load i8, i8* @dbobs_init, align 1, !dbg !185
  %11 = trunc i8 %10 to i1, !dbg !185
  br i1 %11, label %13, label %12, !dbg !187

; <label>:12:                                     ; preds = %1
  call void @nfobstack_init(), !dbg !188
  br label %13, !dbg !191

; <label>:13:                                     ; preds = %12, %1
  call void @llvm.dbg.declare(metadata %struct.obstack** %3, metadata !192, metadata !66), !dbg !194
  store %struct.obstack* @db_obs, %struct.obstack** %3, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata %struct.obstack** %4, metadata !195, metadata !66), !dbg !197
  %14 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !198
  store %struct.obstack* %14, %struct.obstack** %4, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i32* %5, metadata !199, metadata !66), !dbg !200
  %15 = load i8*, i8** %2, align 8, !dbg !201
  %16 = call i64 @strlen(i8* %15) #6, !dbg !202
  %17 = trunc i64 %16 to i32, !dbg !203
  store i32 %17, i32* %5, align 4, !dbg !200
  %18 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !204
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3, !dbg !206
  %20 = load i8*, i8** %19, align 8, !dbg !206
  %21 = load i32, i32* %5, align 4, !dbg !207
  %22 = sext i32 %21 to i64, !dbg !208
  %23 = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !208
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !209
  %25 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !210
  %26 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 4, !dbg !211
  %27 = load i8*, i8** %26, align 8, !dbg !211
  %28 = icmp ugt i8* %24, %27, !dbg !212
  br i1 %28, label %29, label %33, !dbg !213

; <label>:29:                                     ; preds = %13
  %30 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !214
  %31 = load i32, i32* %5, align 4, !dbg !216
  %32 = add nsw i32 %31, 1, !dbg !217
  call void @_obstack_newchunk(%struct.obstack* %30, i32 %32), !dbg !218
  br label %33, !dbg !218

; <label>:33:                                     ; preds = %29, %13
  %34 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !219
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 3, !dbg !221
  %36 = load i8*, i8** %35, align 8, !dbg !221
  %37 = load i8*, i8** %2, align 8, !dbg !222
  %38 = load i32, i32* %5, align 4, !dbg !223
  %39 = sext i32 %38 to i64, !dbg !223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %39, i32 1, i1 false), !dbg !224
  %40 = load i32, i32* %5, align 4, !dbg !225
  %41 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !226
  %42 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3, !dbg !227
  %43 = load i8*, i8** %42, align 8, !dbg !228
  %44 = sext i32 %40 to i64, !dbg !228
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !228
  store i8* %45, i8** %42, align 8, !dbg !228
  %46 = load %struct.obstack*, %struct.obstack** %4, align 8, !dbg !229
  %47 = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 3, !dbg !230
  %48 = load i8*, i8** %47, align 8, !dbg !231
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !231
  store i8* %49, i8** %47, align 8, !dbg !231
  store i8 0, i8* %48, align 1, !dbg !232
  call void @llvm.dbg.declare(metadata %struct.obstack** %7, metadata !233, metadata !66), !dbg !235
  %50 = load %struct.obstack*, %struct.obstack** %3, align 8, !dbg !236
  store %struct.obstack* %50, %struct.obstack** %7, align 8, !dbg !237
  call void @llvm.dbg.declare(metadata i8** %8, metadata !238, metadata !66), !dbg !239
  %51 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !240
  %52 = getelementptr inbounds %struct.obstack, %struct.obstack* %51, i32 0, i32 2, !dbg !241
  %53 = load i8*, i8** %52, align 8, !dbg !241
  store i8* %53, i8** %8, align 8, !dbg !242
  %54 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !243
  %55 = getelementptr inbounds %struct.obstack, %struct.obstack* %54, i32 0, i32 3, !dbg !244
  %56 = load i8*, i8** %55, align 8, !dbg !244
  %57 = load i8*, i8** %8, align 8, !dbg !245
  %58 = icmp eq i8* %56, %57, !dbg !246
  br i1 %58, label %59, label %65, !dbg !243

; <label>:59:                                     ; preds = %33
  %60 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !247
  %61 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 10, !dbg !250
  %62 = load i8, i8* %61, align 8, !dbg !251
  %63 = and i8 %62, -3, !dbg !251
  %64 = or i8 %63, 2, !dbg !251
  store i8 %64, i8* %61, align 8, !dbg !251
  br label %65, !dbg !247

; <label>:65:                                     ; preds = %59, %33
  %66 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !252
  %67 = getelementptr inbounds %struct.obstack, %struct.obstack* %66, i32 0, i32 3, !dbg !254
  %68 = load i8*, i8** %67, align 8, !dbg !254
  %69 = ptrtoint i8* %68 to i64, !dbg !255
  %70 = sub i64 %69, 0, !dbg !255
  %71 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !256
  %72 = getelementptr inbounds %struct.obstack, %struct.obstack* %71, i32 0, i32 6, !dbg !257
  %73 = load i32, i32* %72, align 8, !dbg !257
  %74 = sext i32 %73 to i64, !dbg !258
  %75 = add nsw i64 %70, %74, !dbg !259
  %76 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !260
  %77 = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 6, !dbg !261
  %78 = load i32, i32* %77, align 8, !dbg !261
  %79 = xor i32 %78, -1, !dbg !262
  %80 = sext i32 %79 to i64, !dbg !262
  %81 = and i64 %75, %80, !dbg !263
  %82 = getelementptr inbounds i8, i8* null, i64 %81, !dbg !264
  %83 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !265
  %84 = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 3, !dbg !266
  store i8* %82, i8** %84, align 8, !dbg !267
  %85 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !268
  %86 = getelementptr inbounds %struct.obstack, %struct.obstack* %85, i32 0, i32 3, !dbg !269
  %87 = load i8*, i8** %86, align 8, !dbg !269
  %88 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !270
  %89 = getelementptr inbounds %struct.obstack, %struct.obstack* %88, i32 0, i32 1, !dbg !271
  %90 = load %struct._obstack_chunk*, %struct._obstack_chunk** %89, align 8, !dbg !271
  %91 = bitcast %struct._obstack_chunk* %90 to i8*, !dbg !272
  %92 = ptrtoint i8* %87 to i64, !dbg !273
  %93 = ptrtoint i8* %91 to i64, !dbg !273
  %94 = sub i64 %92, %93, !dbg !273
  %95 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !274
  %96 = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 4, !dbg !275
  %97 = load i8*, i8** %96, align 8, !dbg !275
  %98 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !276
  %99 = getelementptr inbounds %struct.obstack, %struct.obstack* %98, i32 0, i32 1, !dbg !277
  %100 = load %struct._obstack_chunk*, %struct._obstack_chunk** %99, align 8, !dbg !277
  %101 = bitcast %struct._obstack_chunk* %100 to i8*, !dbg !278
  %102 = ptrtoint i8* %97 to i64, !dbg !279
  %103 = ptrtoint i8* %101 to i64, !dbg !279
  %104 = sub i64 %102, %103, !dbg !279
  %105 = icmp sgt i64 %94, %104, !dbg !280
  br i1 %105, label %106, label %112, !dbg !268

; <label>:106:                                    ; preds = %65
  %107 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !281
  %108 = getelementptr inbounds %struct.obstack, %struct.obstack* %107, i32 0, i32 4, !dbg !284
  %109 = load i8*, i8** %108, align 8, !dbg !284
  %110 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !285
  %111 = getelementptr inbounds %struct.obstack, %struct.obstack* %110, i32 0, i32 3, !dbg !286
  store i8* %109, i8** %111, align 8, !dbg !287
  br label %112, !dbg !285

; <label>:112:                                    ; preds = %106, %65
  %113 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !288
  %114 = getelementptr inbounds %struct.obstack, %struct.obstack* %113, i32 0, i32 3, !dbg !290
  %115 = load i8*, i8** %114, align 8, !dbg !290
  %116 = load %struct.obstack*, %struct.obstack** %7, align 8, !dbg !291
  %117 = getelementptr inbounds %struct.obstack, %struct.obstack* %116, i32 0, i32 2, !dbg !292
  store i8* %115, i8** %117, align 8, !dbg !293
  %118 = load i8*, i8** %8, align 8, !dbg !294
  store i8* %118, i8** %9, align 8, !dbg !291
  %119 = load i8*, i8** %9, align 8, !dbg !295
  store i8* %119, i8** %6, align 8, !dbg !296
  %120 = load i8*, i8** %6, align 8, !dbg !297
  ret i8* %120, !dbg !298
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @nfstrnsave(i8*, i64) #0 !dbg !299 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.obstack*, align 8
  %6 = alloca %struct.obstack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.obstack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !302, metadata !66), !dbg !303
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !304, metadata !66), !dbg !305
  %12 = load i8, i8* @dbobs_init, align 1, !dbg !306
  %13 = trunc i8 %12 to i1, !dbg !306
  br i1 %13, label %15, label %14, !dbg !308

; <label>:14:                                     ; preds = %2
  call void @nfobstack_init(), !dbg !309
  br label %15, !dbg !312

; <label>:15:                                     ; preds = %14, %2
  call void @llvm.dbg.declare(metadata %struct.obstack** %5, metadata !313, metadata !66), !dbg !315
  store %struct.obstack* @db_obs, %struct.obstack** %5, align 8, !dbg !315
  call void @llvm.dbg.declare(metadata %struct.obstack** %6, metadata !316, metadata !66), !dbg !318
  %16 = load %struct.obstack*, %struct.obstack** %5, align 8, !dbg !319
  store %struct.obstack* %16, %struct.obstack** %6, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata i32* %7, metadata !320, metadata !66), !dbg !321
  %17 = load i64, i64* %4, align 8, !dbg !322
  %18 = trunc i64 %17 to i32, !dbg !323
  store i32 %18, i32* %7, align 4, !dbg !321
  %19 = load %struct.obstack*, %struct.obstack** %6, align 8, !dbg !324
  %20 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3, !dbg !326
  %21 = load i8*, i8** %20, align 8, !dbg !326
  %22 = load i32, i32* %7, align 4, !dbg !327
  %23 = sext i32 %22 to i64, !dbg !328
  %24 = getelementptr inbounds i8, i8* %21, i64 %23, !dbg !328
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !329
  %26 = load %struct.obstack*, %struct.obstack** %6, align 8, !dbg !330
  %27 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 4, !dbg !331
  %28 = load i8*, i8** %27, align 8, !dbg !331
  %29 = icmp ugt i8* %25, %28, !dbg !332
  br i1 %29, label %30, label %34, !dbg !333

; <label>:30:                                     ; preds = %15
  %31 = load %struct.obstack*, %struct.obstack** %6, align 8, !dbg !334
  %32 = load i32, i32* %7, align 4, !dbg !336
  %33 = add nsw i32 %32, 1, !dbg !337
  call void @_obstack_newchunk(%struct.obstack* %31, i32 %33), !dbg !338
  br label %34, !dbg !338

; <label>:34:                                     ; preds = %30, %15
  %35 = load %struct.obstack*, %struct.obstack** %6, align 8, !dbg !339
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 3, !dbg !341
  %37 = load i8*, i8** %36, align 8, !dbg !341
  %38 = load i8*, i8** %3, align 8, !dbg !342
  %39 = load i32, i32* %7, align 4, !dbg !343
  %40 = sext i32 %39 to i64, !dbg !343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %40, i32 1, i1 false), !dbg !344
  %41 = load i32, i32* %7, align 4, !dbg !345
  %42 = load %struct.obstack*, %struct.obstack** %6, align 8, !dbg !346
  %43 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3, !dbg !347
  %44 = load i8*, i8** %43, align 8, !dbg !348
  %45 = sext i32 %41 to i64, !dbg !348
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !348
  store i8* %46, i8** %43, align 8, !dbg !348
  %47 = load %struct.obstack*, %struct.obstack** %6, align 8, !dbg !349
  %48 = getelementptr inbounds %struct.obstack, %struct.obstack* %47, i32 0, i32 3, !dbg !350
  %49 = load i8*, i8** %48, align 8, !dbg !351
  %50 = getelementptr inbounds i8, i8* %49, i32 1, !dbg !351
  store i8* %50, i8** %48, align 8, !dbg !351
  store i8 0, i8* %49, align 1, !dbg !352
  call void @llvm.dbg.declare(metadata %struct.obstack** %9, metadata !353, metadata !66), !dbg !355
  %51 = load %struct.obstack*, %struct.obstack** %5, align 8, !dbg !356
  store %struct.obstack* %51, %struct.obstack** %9, align 8, !dbg !357
  call void @llvm.dbg.declare(metadata i8** %10, metadata !358, metadata !66), !dbg !359
  %52 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !360
  %53 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 2, !dbg !361
  %54 = load i8*, i8** %53, align 8, !dbg !361
  store i8* %54, i8** %10, align 8, !dbg !362
  %55 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !363
  %56 = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 3, !dbg !364
  %57 = load i8*, i8** %56, align 8, !dbg !364
  %58 = load i8*, i8** %10, align 8, !dbg !365
  %59 = icmp eq i8* %57, %58, !dbg !366
  br i1 %59, label %60, label %66, !dbg !363

; <label>:60:                                     ; preds = %34
  %61 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !367
  %62 = getelementptr inbounds %struct.obstack, %struct.obstack* %61, i32 0, i32 10, !dbg !370
  %63 = load i8, i8* %62, align 8, !dbg !371
  %64 = and i8 %63, -3, !dbg !371
  %65 = or i8 %64, 2, !dbg !371
  store i8 %65, i8* %62, align 8, !dbg !371
  br label %66, !dbg !367

; <label>:66:                                     ; preds = %60, %34
  %67 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !372
  %68 = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 3, !dbg !374
  %69 = load i8*, i8** %68, align 8, !dbg !374
  %70 = ptrtoint i8* %69 to i64, !dbg !375
  %71 = sub i64 %70, 0, !dbg !375
  %72 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !376
  %73 = getelementptr inbounds %struct.obstack, %struct.obstack* %72, i32 0, i32 6, !dbg !377
  %74 = load i32, i32* %73, align 8, !dbg !377
  %75 = sext i32 %74 to i64, !dbg !378
  %76 = add nsw i64 %71, %75, !dbg !379
  %77 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !380
  %78 = getelementptr inbounds %struct.obstack, %struct.obstack* %77, i32 0, i32 6, !dbg !381
  %79 = load i32, i32* %78, align 8, !dbg !381
  %80 = xor i32 %79, -1, !dbg !382
  %81 = sext i32 %80 to i64, !dbg !382
  %82 = and i64 %76, %81, !dbg !383
  %83 = getelementptr inbounds i8, i8* null, i64 %82, !dbg !384
  %84 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !385
  %85 = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 3, !dbg !386
  store i8* %83, i8** %85, align 8, !dbg !387
  %86 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !388
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %86, i32 0, i32 3, !dbg !389
  %88 = load i8*, i8** %87, align 8, !dbg !389
  %89 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !390
  %90 = getelementptr inbounds %struct.obstack, %struct.obstack* %89, i32 0, i32 1, !dbg !391
  %91 = load %struct._obstack_chunk*, %struct._obstack_chunk** %90, align 8, !dbg !391
  %92 = bitcast %struct._obstack_chunk* %91 to i8*, !dbg !392
  %93 = ptrtoint i8* %88 to i64, !dbg !393
  %94 = ptrtoint i8* %92 to i64, !dbg !393
  %95 = sub i64 %93, %94, !dbg !393
  %96 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !394
  %97 = getelementptr inbounds %struct.obstack, %struct.obstack* %96, i32 0, i32 4, !dbg !395
  %98 = load i8*, i8** %97, align 8, !dbg !395
  %99 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !396
  %100 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 1, !dbg !397
  %101 = load %struct._obstack_chunk*, %struct._obstack_chunk** %100, align 8, !dbg !397
  %102 = bitcast %struct._obstack_chunk* %101 to i8*, !dbg !398
  %103 = ptrtoint i8* %98 to i64, !dbg !399
  %104 = ptrtoint i8* %102 to i64, !dbg !399
  %105 = sub i64 %103, %104, !dbg !399
  %106 = icmp sgt i64 %95, %105, !dbg !400
  br i1 %106, label %107, label %113, !dbg !388

; <label>:107:                                    ; preds = %66
  %108 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !401
  %109 = getelementptr inbounds %struct.obstack, %struct.obstack* %108, i32 0, i32 4, !dbg !404
  %110 = load i8*, i8** %109, align 8, !dbg !404
  %111 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !405
  %112 = getelementptr inbounds %struct.obstack, %struct.obstack* %111, i32 0, i32 3, !dbg !406
  store i8* %110, i8** %112, align 8, !dbg !407
  br label %113, !dbg !405

; <label>:113:                                    ; preds = %107, %66
  %114 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !408
  %115 = getelementptr inbounds %struct.obstack, %struct.obstack* %114, i32 0, i32 3, !dbg !410
  %116 = load i8*, i8** %115, align 8, !dbg !410
  %117 = load %struct.obstack*, %struct.obstack** %9, align 8, !dbg !411
  %118 = getelementptr inbounds %struct.obstack, %struct.obstack* %117, i32 0, i32 2, !dbg !412
  store i8* %116, i8** %118, align 8, !dbg !413
  %119 = load i8*, i8** %10, align 8, !dbg !414
  store i8* %119, i8** %11, align 8, !dbg !411
  %120 = load i8*, i8** %11, align 8, !dbg !415
  store i8* %120, i8** %8, align 8, !dbg !416
  %121 = load i8*, i8** %8, align 8, !dbg !417
  ret i8* %121, !dbg !418
}

; Function Attrs: nounwind uwtable
define void @nffreeall() #0 !dbg !419 {
  %1 = alloca %struct.obstack*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8, i8* @dbobs_init, align 1, !dbg !420
  %4 = trunc i8 %3 to i1, !dbg !420
  br i1 %4, label %5, label %28, !dbg !422

; <label>:5:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata %struct.obstack** %1, metadata !423, metadata !66), !dbg !426
  store %struct.obstack* @db_obs, %struct.obstack** %1, align 8, !dbg !426
  call void @llvm.dbg.declare(metadata i8** %2, metadata !427, metadata !66), !dbg !428
  store i8* null, i8** %2, align 8, !dbg !428
  %6 = load i8*, i8** %2, align 8, !dbg !429
  %7 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !431
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 1, !dbg !432
  %9 = load %struct._obstack_chunk*, %struct._obstack_chunk** %8, align 8, !dbg !432
  %10 = bitcast %struct._obstack_chunk* %9 to i8*, !dbg !433
  %11 = icmp ugt i8* %6, %10, !dbg !434
  br i1 %11, label %12, label %24, !dbg !435

; <label>:12:                                     ; preds = %5
  %13 = load i8*, i8** %2, align 8, !dbg !436
  %14 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !438
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 4, !dbg !439
  %16 = load i8*, i8** %15, align 8, !dbg !439
  %17 = icmp ult i8* %13, %16, !dbg !440
  br i1 %17, label %18, label %24, !dbg !441

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %2, align 8, !dbg !442
  %20 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !444
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 2, !dbg !445
  store i8* %19, i8** %21, align 8, !dbg !446
  %22 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !447
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3, !dbg !448
  store i8* %19, i8** %23, align 8, !dbg !449
  br label %27, !dbg !447

; <label>:24:                                     ; preds = %12, %5
  %25 = load %struct.obstack*, %struct.obstack** %1, align 8, !dbg !450
  %26 = load i8*, i8** %2, align 8, !dbg !452
  call void @obstack_free(%struct.obstack* %25, i8* %26), !dbg !453
  br label %27

; <label>:27:                                     ; preds = %24, %18
  store i8 0, i8* @dbobs_init, align 1, !dbg !454
  br label %28, !dbg !455

; <label>:28:                                     ; preds = %27, %0
  ret void, !dbg !456
}

declare void @obstack_free(%struct.obstack*, i8*) #2

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #2

declare i8* @m_malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !14)
!1 = !DIFile(filename: "[inter]lib--dpkg--nfmalloc.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !5, !7, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!4, !10}
!10 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !4}
!14 = !{!15, !54}
!15 = distinct !DIGlobalVariable(name: "db_obs", scope: !0, file: !16, line: 35, type: !17, isLocal: true, isDefinition: true, variable: %struct.obstack* @db_obs)
!16 = !DIFile(filename: "nfmalloc.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !18, line: 153, size: 704, align: 64, elements: !19)
!18 = !DIFile(filename: "/usr/include/obstack.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!19 = !{!20, !21, !31, !32, !33, !34, !39, !41, !45, !49, !50, !52, !53}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !17, file: !18, line: 155, baseType: !10, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !17, file: !18, line: 156, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !18, line: 146, size: 192, align: 64, elements: !24)
!24 = !{!25, !26, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !23, file: !18, line: 148, baseType: !5, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !23, file: !18, line: 149, baseType: !22, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !23, file: !18, line: 150, baseType: !28, size: 32, align: 8, offset: 128)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, align: 8, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 4)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !17, file: !18, line: 157, baseType: !5, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !17, file: !18, line: 158, baseType: !5, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !17, file: !18, line: 159, baseType: !5, size: 64, align: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !17, file: !18, line: 164, baseType: !35, size: 64, align: 64, offset: 320)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 160, size: 64, align: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !35, file: !18, line: 162, baseType: !10, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !35, file: !18, line: 163, baseType: !4, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !17, file: !18, line: 165, baseType: !40, size: 32, align: 32, offset: 384)
!40 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !17, file: !18, line: 169, baseType: !42, size: 64, align: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!22, !4, !10}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !17, file: !18, line: 170, baseType: !46, size: 64, align: 64, offset: 512)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !4, !22}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !17, file: !18, line: 171, baseType: !4, size: 64, align: 64, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !17, file: !18, line: 172, baseType: !51, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!51 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !17, file: !18, line: 173, baseType: !51, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !17, file: !18, line: 177, baseType: !51, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!54 = distinct !DIGlobalVariable(name: "dbobs_init", scope: !0, file: !16, line: 36, type: !55, isLocal: true, isDefinition: true, variable: i8* @dbobs_init)
!55 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!56 = !{i32 2, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!59 = distinct !DISubprogram(name: "nfmalloc", scope: !16, file: !16, line: 50, type: !60, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!60 = !DISubroutineType(types: !61)
!61 = !{!4, !62}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 216, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!64 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!65 = !DILocalVariable(name: "size", arg: 1, scope: !59, file: !16, line: 50, type: !62)
!66 = !DIExpression()
!67 = !DILocation(line: 50, column: 17, scope: !59)
!68 = !DILocation(line: 52, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !59, file: !16, line: 52, column: 7)
!70 = !DILocation(line: 52, column: 7, scope: !59)
!71 = !DILocation(line: 52, column: 22, scope: !72)
!72 = !DILexicalBlockFile(scope: !73, file: !16, discriminator: 1)
!73 = distinct !DILexicalBlock(scope: !69, file: !16, line: 52, column: 20)
!74 = !DILocation(line: 52, column: 40, scope: !72)
!75 = !DILocalVariable(name: "__h", scope: !76, file: !16, line: 53, type: !77)
!76 = distinct !DILexicalBlock(scope: !59, file: !16, line: 53, column: 24)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!78 = !DILocation(line: 53, column: 42, scope: !76)
!79 = !DILocalVariable(name: "__o", scope: !80, file: !16, line: 53, type: !77)
!80 = distinct !DILexicalBlock(scope: !76, file: !16, line: 53, column: 27)
!81 = !DILocation(line: 53, column: 45, scope: !80)
!82 = !DILocation(line: 53, column: 52, scope: !80)
!83 = !DILocalVariable(name: "__len", scope: !80, file: !16, line: 53, type: !40)
!84 = !DILocation(line: 53, column: 62, scope: !80)
!85 = !DILocation(line: 53, column: 9, scope: !80)
!86 = !DILocation(line: 53, column: 70, scope: !80)
!87 = !DILocation(line: 53, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !16, line: 53, column: 17)
!89 = !DILocation(line: 53, column: 22, scope: !88)
!90 = !DILocation(line: 53, column: 36, scope: !88)
!91 = !DILocation(line: 53, column: 41, scope: !88)
!92 = !DILocation(line: 53, column: 34, scope: !88)
!93 = !DILocation(line: 53, column: 53, scope: !88)
!94 = !DILocation(line: 53, column: 51, scope: !88)
!95 = !DILocation(line: 53, column: 17, scope: !80)
!96 = !DILocation(line: 53, column: 79, scope: !97)
!97 = !DILexicalBlockFile(scope: !88, file: !16, discriminator: 1)
!98 = !DILocation(line: 53, column: 84, scope: !97)
!99 = !DILocation(line: 53, column: 60, scope: !97)
!100 = !DILocation(line: 53, column: 114, scope: !101)
!101 = !DILexicalBlockFile(scope: !80, file: !16, discriminator: 2)
!102 = !DILocation(line: 53, column: 94, scope: !101)
!103 = !DILocation(line: 53, column: 100, scope: !101)
!104 = !DILocation(line: 53, column: 110, scope: !101)
!105 = !DILocalVariable(name: "__o1", scope: !106, file: !16, line: 53, type: !77)
!106 = distinct !DILexicalBlock(scope: !76, file: !16, line: 53, column: 152)
!107 = !DILocation(line: 53, column: 170, scope: !106)
!108 = !DILocation(line: 53, column: 178, scope: !101)
!109 = !DILocation(line: 53, column: 170, scope: !101)
!110 = !DILocalVariable(name: "__value", scope: !106, file: !16, line: 53, type: !4)
!111 = !DILocation(line: 53, column: 190, scope: !106)
!112 = !DILocation(line: 53, column: 209, scope: !101)
!113 = !DILocation(line: 53, column: 215, scope: !101)
!114 = !DILocation(line: 53, column: 190, scope: !101)
!115 = !DILocation(line: 53, column: 232, scope: !101)
!116 = !DILocation(line: 53, column: 238, scope: !101)
!117 = !DILocation(line: 53, column: 251, scope: !101)
!118 = !DILocation(line: 53, column: 248, scope: !101)
!119 = !DILocation(line: 53, column: 260, scope: !120)
!120 = !DILexicalBlockFile(scope: !121, file: !16, discriminator: 3)
!121 = distinct !DILexicalBlock(scope: !106, file: !16, line: 53, column: 232)
!122 = !DILocation(line: 53, column: 266, scope: !120)
!123 = !DILocation(line: 53, column: 285, scope: !120)
!124 = !DILocation(line: 53, column: 387, scope: !125)
!125 = !DILexicalBlockFile(scope: !106, file: !16, discriminator: 4)
!126 = !DILocation(line: 53, column: 393, scope: !125)
!127 = !DILocation(line: 53, column: 404, scope: !125)
!128 = !DILocation(line: 53, column: 482, scope: !125)
!129 = !DILocation(line: 53, column: 488, scope: !125)
!130 = !DILocation(line: 53, column: 481, scope: !125)
!131 = !DILocation(line: 53, column: 479, scope: !125)
!132 = !DILocation(line: 53, column: 509, scope: !125)
!133 = !DILocation(line: 53, column: 515, scope: !125)
!134 = !DILocation(line: 53, column: 507, scope: !125)
!135 = !DILocation(line: 53, column: 505, scope: !125)
!136 = !DILocation(line: 53, column: 382, scope: !125)
!137 = !DILocation(line: 53, column: 290, scope: !125)
!138 = !DILocation(line: 53, column: 296, scope: !125)
!139 = !DILocation(line: 53, column: 306, scope: !125)
!140 = !DILocation(line: 53, column: 538, scope: !125)
!141 = !DILocation(line: 53, column: 544, scope: !125)
!142 = !DILocation(line: 53, column: 565, scope: !125)
!143 = !DILocation(line: 53, column: 571, scope: !125)
!144 = !DILocation(line: 53, column: 556, scope: !125)
!145 = !DILocation(line: 53, column: 554, scope: !125)
!146 = !DILocation(line: 53, column: 579, scope: !125)
!147 = !DILocation(line: 53, column: 585, scope: !125)
!148 = !DILocation(line: 53, column: 608, scope: !125)
!149 = !DILocation(line: 53, column: 614, scope: !125)
!150 = !DILocation(line: 53, column: 599, scope: !125)
!151 = !DILocation(line: 53, column: 597, scope: !125)
!152 = !DILocation(line: 53, column: 577, scope: !125)
!153 = !DILocation(line: 53, column: 639, scope: !154)
!154 = !DILexicalBlockFile(scope: !155, file: !16, discriminator: 5)
!155 = distinct !DILexicalBlock(scope: !106, file: !16, line: 53, column: 538)
!156 = !DILocation(line: 53, column: 645, scope: !154)
!157 = !DILocation(line: 53, column: 621, scope: !154)
!158 = !DILocation(line: 53, column: 627, scope: !154)
!159 = !DILocation(line: 53, column: 637, scope: !154)
!160 = !DILocation(line: 53, column: 678, scope: !161)
!161 = !DILexicalBlockFile(scope: !106, file: !16, discriminator: 6)
!162 = !DILocation(line: 53, column: 684, scope: !161)
!163 = !DILocation(line: 53, column: 658, scope: !161)
!164 = !DILocation(line: 53, column: 664, scope: !161)
!165 = !DILocation(line: 53, column: 676, scope: !161)
!166 = !DILocation(line: 53, column: 695, scope: !161)
!167 = !DILocation(line: 53, column: 704, scope: !161)
!168 = !DILocation(line: 53, column: 12, scope: !161)
!169 = !DILocation(line: 53, column: 708, scope: !161)
!170 = !DILocation(line: 53, column: 3, scope: !161)
!171 = distinct !DISubprogram(name: "nfobstack_init", scope: !16, file: !16, line: 43, type: !172, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!172 = !DISubroutineType(types: !173)
!173 = !{null}
!174 = !DILocation(line: 44, column: 2, scope: !171)
!175 = !DILocation(line: 45, column: 14, scope: !171)
!176 = !DILocation(line: 46, column: 30, scope: !171)
!177 = !DILocation(line: 47, column: 1, scope: !171)
!178 = distinct !DISubprogram(name: "nfstrsave", scope: !16, file: !16, line: 56, type: !179, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!179 = !DISubroutineType(types: !180)
!180 = !{!5, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!183 = !DILocalVariable(name: "string", arg: 1, scope: !178, file: !16, line: 56, type: !181)
!184 = !DILocation(line: 56, column: 29, scope: !178)
!185 = !DILocation(line: 57, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !16, line: 57, column: 7)
!187 = !DILocation(line: 57, column: 7, scope: !178)
!188 = !DILocation(line: 57, column: 22, scope: !189)
!189 = !DILexicalBlockFile(scope: !190, file: !16, discriminator: 1)
!190 = distinct !DILexicalBlock(scope: !186, file: !16, line: 57, column: 20)
!191 = !DILocation(line: 57, column: 40, scope: !189)
!192 = !DILocalVariable(name: "__h", scope: !193, file: !16, line: 58, type: !77)
!193 = distinct !DILexicalBlock(scope: !178, file: !16, line: 58, column: 24)
!194 = !DILocation(line: 58, column: 42, scope: !193)
!195 = !DILocalVariable(name: "__o", scope: !196, file: !16, line: 58, type: !77)
!196 = distinct !DILexicalBlock(scope: !193, file: !16, line: 58, column: 27)
!197 = !DILocation(line: 58, column: 45, scope: !196)
!198 = !DILocation(line: 58, column: 52, scope: !196)
!199 = !DILocalVariable(name: "__len", scope: !196, file: !16, line: 58, type: !40)
!200 = !DILocation(line: 58, column: 62, scope: !196)
!201 = !DILocation(line: 58, column: 16, scope: !196)
!202 = !DILocation(line: 58, column: 9, scope: !196)
!203 = !DILocation(line: 58, column: 70, scope: !196)
!204 = !DILocation(line: 58, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !196, file: !16, line: 58, column: 17)
!206 = !DILocation(line: 58, column: 22, scope: !205)
!207 = !DILocation(line: 58, column: 34, scope: !205)
!208 = !DILocation(line: 58, column: 32, scope: !205)
!209 = !DILocation(line: 58, column: 40, scope: !205)
!210 = !DILocation(line: 58, column: 46, scope: !205)
!211 = !DILocation(line: 58, column: 51, scope: !205)
!212 = !DILocation(line: 58, column: 44, scope: !205)
!213 = !DILocation(line: 58, column: 17, scope: !196)
!214 = !DILocation(line: 58, column: 83, scope: !215)
!215 = !DILexicalBlockFile(scope: !205, file: !16, discriminator: 1)
!216 = !DILocation(line: 58, column: 88, scope: !215)
!217 = !DILocation(line: 58, column: 94, scope: !215)
!218 = !DILocation(line: 58, column: 64, scope: !215)
!219 = !DILocation(line: 58, column: 108, scope: !220)
!220 = !DILexicalBlockFile(scope: !196, file: !16, discriminator: 2)
!221 = !DILocation(line: 58, column: 113, scope: !220)
!222 = !DILocation(line: 58, column: 9, scope: !220)
!223 = !DILocation(line: 58, column: 12, scope: !220)
!224 = !DILocation(line: 58, column: 100, scope: !220)
!225 = !DILocation(line: 58, column: 38, scope: !220)
!226 = !DILocation(line: 58, column: 20, scope: !220)
!227 = !DILocation(line: 58, column: 25, scope: !220)
!228 = !DILocation(line: 58, column: 35, scope: !220)
!229 = !DILocation(line: 58, column: 47, scope: !220)
!230 = !DILocation(line: 58, column: 52, scope: !220)
!231 = !DILocation(line: 58, column: 62, scope: !220)
!232 = !DILocation(line: 58, column: 65, scope: !220)
!233 = !DILocalVariable(name: "__o1", scope: !234, file: !16, line: 58, type: !77)
!234 = distinct !DILexicalBlock(scope: !193, file: !16, line: 58, column: 99)
!235 = !DILocation(line: 58, column: 117, scope: !234)
!236 = !DILocation(line: 58, column: 125, scope: !220)
!237 = !DILocation(line: 58, column: 117, scope: !220)
!238 = !DILocalVariable(name: "__value", scope: !234, file: !16, line: 58, type: !4)
!239 = !DILocation(line: 58, column: 137, scope: !234)
!240 = !DILocation(line: 58, column: 156, scope: !220)
!241 = !DILocation(line: 58, column: 162, scope: !220)
!242 = !DILocation(line: 58, column: 137, scope: !220)
!243 = !DILocation(line: 58, column: 179, scope: !220)
!244 = !DILocation(line: 58, column: 185, scope: !220)
!245 = !DILocation(line: 58, column: 198, scope: !220)
!246 = !DILocation(line: 58, column: 195, scope: !220)
!247 = !DILocation(line: 58, column: 207, scope: !248)
!248 = !DILexicalBlockFile(scope: !249, file: !16, discriminator: 3)
!249 = distinct !DILexicalBlock(scope: !234, file: !16, line: 58, column: 179)
!250 = !DILocation(line: 58, column: 213, scope: !248)
!251 = !DILocation(line: 58, column: 232, scope: !248)
!252 = !DILocation(line: 58, column: 334, scope: !253)
!253 = !DILexicalBlockFile(scope: !234, file: !16, discriminator: 4)
!254 = !DILocation(line: 58, column: 340, scope: !253)
!255 = !DILocation(line: 58, column: 351, scope: !253)
!256 = !DILocation(line: 58, column: 429, scope: !253)
!257 = !DILocation(line: 58, column: 435, scope: !253)
!258 = !DILocation(line: 58, column: 428, scope: !253)
!259 = !DILocation(line: 58, column: 426, scope: !253)
!260 = !DILocation(line: 58, column: 456, scope: !253)
!261 = !DILocation(line: 58, column: 462, scope: !253)
!262 = !DILocation(line: 58, column: 454, scope: !253)
!263 = !DILocation(line: 58, column: 452, scope: !253)
!264 = !DILocation(line: 58, column: 329, scope: !253)
!265 = !DILocation(line: 58, column: 237, scope: !253)
!266 = !DILocation(line: 58, column: 243, scope: !253)
!267 = !DILocation(line: 58, column: 253, scope: !253)
!268 = !DILocation(line: 58, column: 485, scope: !253)
!269 = !DILocation(line: 58, column: 491, scope: !253)
!270 = !DILocation(line: 58, column: 512, scope: !253)
!271 = !DILocation(line: 58, column: 518, scope: !253)
!272 = !DILocation(line: 58, column: 503, scope: !253)
!273 = !DILocation(line: 58, column: 501, scope: !253)
!274 = !DILocation(line: 58, column: 526, scope: !253)
!275 = !DILocation(line: 58, column: 532, scope: !253)
!276 = !DILocation(line: 58, column: 555, scope: !253)
!277 = !DILocation(line: 58, column: 561, scope: !253)
!278 = !DILocation(line: 58, column: 546, scope: !253)
!279 = !DILocation(line: 58, column: 544, scope: !253)
!280 = !DILocation(line: 58, column: 524, scope: !253)
!281 = !DILocation(line: 58, column: 586, scope: !282)
!282 = !DILexicalBlockFile(scope: !283, file: !16, discriminator: 5)
!283 = distinct !DILexicalBlock(scope: !234, file: !16, line: 58, column: 485)
!284 = !DILocation(line: 58, column: 592, scope: !282)
!285 = !DILocation(line: 58, column: 568, scope: !282)
!286 = !DILocation(line: 58, column: 574, scope: !282)
!287 = !DILocation(line: 58, column: 584, scope: !282)
!288 = !DILocation(line: 58, column: 625, scope: !289)
!289 = !DILexicalBlockFile(scope: !234, file: !16, discriminator: 6)
!290 = !DILocation(line: 58, column: 631, scope: !289)
!291 = !DILocation(line: 58, column: 605, scope: !289)
!292 = !DILocation(line: 58, column: 611, scope: !289)
!293 = !DILocation(line: 58, column: 623, scope: !289)
!294 = !DILocation(line: 58, column: 642, scope: !289)
!295 = !DILocation(line: 58, column: 651, scope: !289)
!296 = !DILocation(line: 58, column: 12, scope: !289)
!297 = !DILocation(line: 58, column: 655, scope: !289)
!298 = !DILocation(line: 58, column: 3, scope: !289)
!299 = distinct !DISubprogram(name: "nfstrnsave", scope: !16, file: !16, line: 62, type: !300, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !181, !62}
!302 = !DILocalVariable(name: "string", arg: 1, scope: !299, file: !16, line: 62, type: !181)
!303 = !DILocation(line: 62, column: 24, scope: !299)
!304 = !DILocalVariable(name: "size", arg: 2, scope: !299, file: !16, line: 62, type: !62)
!305 = !DILocation(line: 62, column: 39, scope: !299)
!306 = !DILocation(line: 64, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !299, file: !16, line: 64, column: 7)
!308 = !DILocation(line: 64, column: 7, scope: !299)
!309 = !DILocation(line: 64, column: 22, scope: !310)
!310 = !DILexicalBlockFile(scope: !311, file: !16, discriminator: 1)
!311 = distinct !DILexicalBlock(scope: !307, file: !16, line: 64, column: 20)
!312 = !DILocation(line: 64, column: 40, scope: !310)
!313 = !DILocalVariable(name: "__h", scope: !314, file: !16, line: 65, type: !77)
!314 = distinct !DILexicalBlock(scope: !299, file: !16, line: 65, column: 24)
!315 = !DILocation(line: 65, column: 42, scope: !314)
!316 = !DILocalVariable(name: "__o", scope: !317, file: !16, line: 65, type: !77)
!317 = distinct !DILexicalBlock(scope: !314, file: !16, line: 65, column: 27)
!318 = !DILocation(line: 65, column: 45, scope: !317)
!319 = !DILocation(line: 65, column: 52, scope: !317)
!320 = !DILocalVariable(name: "__len", scope: !317, file: !16, line: 65, type: !40)
!321 = !DILocation(line: 65, column: 62, scope: !317)
!322 = !DILocation(line: 65, column: 9, scope: !317)
!323 = !DILocation(line: 65, column: 70, scope: !317)
!324 = !DILocation(line: 65, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !16, line: 65, column: 17)
!326 = !DILocation(line: 65, column: 22, scope: !325)
!327 = !DILocation(line: 65, column: 34, scope: !325)
!328 = !DILocation(line: 65, column: 32, scope: !325)
!329 = !DILocation(line: 65, column: 40, scope: !325)
!330 = !DILocation(line: 65, column: 46, scope: !325)
!331 = !DILocation(line: 65, column: 51, scope: !325)
!332 = !DILocation(line: 65, column: 44, scope: !325)
!333 = !DILocation(line: 65, column: 17, scope: !317)
!334 = !DILocation(line: 65, column: 83, scope: !335)
!335 = !DILexicalBlockFile(scope: !325, file: !16, discriminator: 1)
!336 = !DILocation(line: 65, column: 88, scope: !335)
!337 = !DILocation(line: 65, column: 94, scope: !335)
!338 = !DILocation(line: 65, column: 64, scope: !335)
!339 = !DILocation(line: 65, column: 108, scope: !340)
!340 = !DILexicalBlockFile(scope: !317, file: !16, discriminator: 2)
!341 = !DILocation(line: 65, column: 113, scope: !340)
!342 = !DILocation(line: 65, column: 9, scope: !340)
!343 = !DILocation(line: 65, column: 12, scope: !340)
!344 = !DILocation(line: 65, column: 100, scope: !340)
!345 = !DILocation(line: 65, column: 38, scope: !340)
!346 = !DILocation(line: 65, column: 20, scope: !340)
!347 = !DILocation(line: 65, column: 25, scope: !340)
!348 = !DILocation(line: 65, column: 35, scope: !340)
!349 = !DILocation(line: 65, column: 47, scope: !340)
!350 = !DILocation(line: 65, column: 52, scope: !340)
!351 = !DILocation(line: 65, column: 62, scope: !340)
!352 = !DILocation(line: 65, column: 65, scope: !340)
!353 = !DILocalVariable(name: "__o1", scope: !354, file: !16, line: 65, type: !77)
!354 = distinct !DILexicalBlock(scope: !314, file: !16, line: 65, column: 99)
!355 = !DILocation(line: 65, column: 117, scope: !354)
!356 = !DILocation(line: 65, column: 125, scope: !340)
!357 = !DILocation(line: 65, column: 117, scope: !340)
!358 = !DILocalVariable(name: "__value", scope: !354, file: !16, line: 65, type: !4)
!359 = !DILocation(line: 65, column: 137, scope: !354)
!360 = !DILocation(line: 65, column: 156, scope: !340)
!361 = !DILocation(line: 65, column: 162, scope: !340)
!362 = !DILocation(line: 65, column: 137, scope: !340)
!363 = !DILocation(line: 65, column: 179, scope: !340)
!364 = !DILocation(line: 65, column: 185, scope: !340)
!365 = !DILocation(line: 65, column: 198, scope: !340)
!366 = !DILocation(line: 65, column: 195, scope: !340)
!367 = !DILocation(line: 65, column: 207, scope: !368)
!368 = !DILexicalBlockFile(scope: !369, file: !16, discriminator: 3)
!369 = distinct !DILexicalBlock(scope: !354, file: !16, line: 65, column: 179)
!370 = !DILocation(line: 65, column: 213, scope: !368)
!371 = !DILocation(line: 65, column: 232, scope: !368)
!372 = !DILocation(line: 65, column: 334, scope: !373)
!373 = !DILexicalBlockFile(scope: !354, file: !16, discriminator: 4)
!374 = !DILocation(line: 65, column: 340, scope: !373)
!375 = !DILocation(line: 65, column: 351, scope: !373)
!376 = !DILocation(line: 65, column: 429, scope: !373)
!377 = !DILocation(line: 65, column: 435, scope: !373)
!378 = !DILocation(line: 65, column: 428, scope: !373)
!379 = !DILocation(line: 65, column: 426, scope: !373)
!380 = !DILocation(line: 65, column: 456, scope: !373)
!381 = !DILocation(line: 65, column: 462, scope: !373)
!382 = !DILocation(line: 65, column: 454, scope: !373)
!383 = !DILocation(line: 65, column: 452, scope: !373)
!384 = !DILocation(line: 65, column: 329, scope: !373)
!385 = !DILocation(line: 65, column: 237, scope: !373)
!386 = !DILocation(line: 65, column: 243, scope: !373)
!387 = !DILocation(line: 65, column: 253, scope: !373)
!388 = !DILocation(line: 65, column: 485, scope: !373)
!389 = !DILocation(line: 65, column: 491, scope: !373)
!390 = !DILocation(line: 65, column: 512, scope: !373)
!391 = !DILocation(line: 65, column: 518, scope: !373)
!392 = !DILocation(line: 65, column: 503, scope: !373)
!393 = !DILocation(line: 65, column: 501, scope: !373)
!394 = !DILocation(line: 65, column: 526, scope: !373)
!395 = !DILocation(line: 65, column: 532, scope: !373)
!396 = !DILocation(line: 65, column: 555, scope: !373)
!397 = !DILocation(line: 65, column: 561, scope: !373)
!398 = !DILocation(line: 65, column: 546, scope: !373)
!399 = !DILocation(line: 65, column: 544, scope: !373)
!400 = !DILocation(line: 65, column: 524, scope: !373)
!401 = !DILocation(line: 65, column: 586, scope: !402)
!402 = !DILexicalBlockFile(scope: !403, file: !16, discriminator: 5)
!403 = distinct !DILexicalBlock(scope: !354, file: !16, line: 65, column: 485)
!404 = !DILocation(line: 65, column: 592, scope: !402)
!405 = !DILocation(line: 65, column: 568, scope: !402)
!406 = !DILocation(line: 65, column: 574, scope: !402)
!407 = !DILocation(line: 65, column: 584, scope: !402)
!408 = !DILocation(line: 65, column: 625, scope: !409)
!409 = !DILexicalBlockFile(scope: !354, file: !16, discriminator: 6)
!410 = !DILocation(line: 65, column: 631, scope: !409)
!411 = !DILocation(line: 65, column: 605, scope: !409)
!412 = !DILocation(line: 65, column: 611, scope: !409)
!413 = !DILocation(line: 65, column: 623, scope: !409)
!414 = !DILocation(line: 65, column: 642, scope: !409)
!415 = !DILocation(line: 65, column: 651, scope: !409)
!416 = !DILocation(line: 65, column: 12, scope: !409)
!417 = !DILocation(line: 65, column: 655, scope: !409)
!418 = !DILocation(line: 65, column: 3, scope: !409)
!419 = distinct !DISubprogram(name: "nffreeall", scope: !16, file: !16, line: 68, type: !172, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!420 = !DILocation(line: 69, column: 7, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !16, line: 69, column: 7)
!422 = !DILocation(line: 69, column: 7, scope: !419)
!423 = !DILocalVariable(name: "__o", scope: !424, file: !16, line: 70, type: !77)
!424 = distinct !DILexicalBlock(scope: !425, file: !16, line: 70, column: 19)
!425 = distinct !DILexicalBlock(scope: !421, file: !16, line: 69, column: 19)
!426 = !DILocation(line: 70, column: 37, scope: !424)
!427 = !DILocalVariable(name: "__obj", scope: !424, file: !16, line: 70, type: !4)
!428 = !DILocation(line: 70, column: 13, scope: !424)
!429 = !DILocation(line: 70, column: 40, scope: !430)
!430 = distinct !DILexicalBlock(scope: !424, file: !16, line: 70, column: 40)
!431 = !DILocation(line: 70, column: 57, scope: !430)
!432 = !DILocation(line: 70, column: 62, scope: !430)
!433 = !DILocation(line: 70, column: 48, scope: !430)
!434 = !DILocation(line: 70, column: 46, scope: !430)
!435 = !DILocation(line: 70, column: 68, scope: !430)
!436 = !DILocation(line: 70, column: 71, scope: !437)
!437 = !DILexicalBlockFile(scope: !430, file: !16, discriminator: 1)
!438 = !DILocation(line: 70, column: 88, scope: !437)
!439 = !DILocation(line: 70, column: 93, scope: !437)
!440 = !DILocation(line: 70, column: 77, scope: !437)
!441 = !DILocation(line: 70, column: 40, scope: !437)
!442 = !DILocation(line: 70, column: 151, scope: !443)
!443 = !DILexicalBlockFile(scope: !430, file: !16, discriminator: 2)
!444 = !DILocation(line: 70, column: 123, scope: !443)
!445 = !DILocation(line: 70, column: 128, scope: !443)
!446 = !DILocation(line: 70, column: 140, scope: !443)
!447 = !DILocation(line: 70, column: 106, scope: !443)
!448 = !DILocation(line: 70, column: 111, scope: !443)
!449 = !DILocation(line: 70, column: 121, scope: !443)
!450 = !DILocation(line: 70, column: 179, scope: !451)
!451 = !DILexicalBlockFile(scope: !430, file: !16, discriminator: 3)
!452 = !DILocation(line: 70, column: 184, scope: !451)
!453 = !DILocation(line: 70, column: 163, scope: !451)
!454 = !DILocation(line: 71, column: 16, scope: !425)
!455 = !DILocation(line: 72, column: 3, scope: !425)
!456 = !DILocation(line: 73, column: 1, scope: !419)
