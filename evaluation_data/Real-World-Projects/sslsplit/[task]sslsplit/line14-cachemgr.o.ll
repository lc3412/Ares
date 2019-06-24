; ModuleID = './line14-cachemgr.o.i'
source_filename = "./line14-cachemgr.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cache = type { %union.pthread_mutex_t, i32 ()*, i32 ()*, i32 (i32)*, void (i32)*, i32 (i8*)*, i32 (i8*, i32*)*, void (i8*)*, void (i8*)*, i8* (i32)*, i8* (i32)*, void (i32, i8*)*, i8* (i8*, i32)*, void ()* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@cachemgr_fkcrt = common global %struct.cache* null, align 8
@cachemgr_tgcrt = common global %struct.cache* null, align 8
@cachemgr_ssess = common global %struct.cache* null, align 8
@cachemgr_dsess = common global %struct.cache* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"cachemgr_gc: pthread_create failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cachemgr_gc: pthread_join failed: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cachemgr_preinit() #0 !dbg !117 {
  %1 = alloca i32, align 4
  %2 = call noalias %struct.cache* @cache_new(void (%struct.cache*)* @cachefkcrt_init_cb), !dbg !120
  store %struct.cache* %2, %struct.cache** @cachemgr_fkcrt, align 8, !dbg !122
  %3 = icmp ne %struct.cache* %2, null, !dbg !122
  br i1 %3, label %5, label %4, !dbg !123

; <label>:4:                                      ; preds = %0
  br label %24, !dbg !124

; <label>:5:                                      ; preds = %0
  %6 = call noalias %struct.cache* @cache_new(void (%struct.cache*)* @cachetgcrt_init_cb), !dbg !125
  store %struct.cache* %6, %struct.cache** @cachemgr_tgcrt, align 8, !dbg !127
  %7 = icmp ne %struct.cache* %6, null, !dbg !127
  br i1 %7, label %9, label %8, !dbg !128

; <label>:8:                                      ; preds = %5
  br label %22, !dbg !129

; <label>:9:                                      ; preds = %5
  %10 = call noalias %struct.cache* @cache_new(void (%struct.cache*)* @cachessess_init_cb), !dbg !130
  store %struct.cache* %10, %struct.cache** @cachemgr_ssess, align 8, !dbg !132
  %11 = icmp ne %struct.cache* %10, null, !dbg !132
  br i1 %11, label %13, label %12, !dbg !133

; <label>:12:                                     ; preds = %9
  br label %20, !dbg !134

; <label>:13:                                     ; preds = %9
  %14 = call noalias %struct.cache* @cache_new(void (%struct.cache*)* @cachedsess_init_cb), !dbg !135
  store %struct.cache* %14, %struct.cache** @cachemgr_dsess, align 8, !dbg !137
  %15 = icmp ne %struct.cache* %14, null, !dbg !137
  br i1 %15, label %17, label %16, !dbg !138

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !139

; <label>:17:                                     ; preds = %13
  store i32 0, i32* %1, align 4, !dbg !140
  br label %25, !dbg !140

; <label>:18:                                     ; preds = %16
  %19 = load %struct.cache*, %struct.cache** @cachemgr_ssess, align 8, !dbg !141
  call void @cache_free(%struct.cache* %19), !dbg !142
  br label %20, !dbg !142

; <label>:20:                                     ; preds = %18, %12
  %21 = load %struct.cache*, %struct.cache** @cachemgr_tgcrt, align 8, !dbg !143
  call void @cache_free(%struct.cache* %21), !dbg !144
  br label %22, !dbg !144

; <label>:22:                                     ; preds = %20, %8
  %23 = load %struct.cache*, %struct.cache** @cachemgr_fkcrt, align 8, !dbg !145
  call void @cache_free(%struct.cache* %23), !dbg !146
  br label %24, !dbg !146

; <label>:24:                                     ; preds = %22, %4
  store i32 -1, i32* %1, align 4, !dbg !147
  br label %25, !dbg !147

; <label>:25:                                     ; preds = %24, %17
  %26 = load i32, i32* %1, align 4, !dbg !148
  ret i32 %26, !dbg !148
}

declare noalias %struct.cache* @cache_new(void (%struct.cache*)*) #1

declare void @cachefkcrt_init_cb(%struct.cache*) #1

declare void @cachetgcrt_init_cb(%struct.cache*) #1

declare void @cachessess_init_cb(%struct.cache*) #1

declare void @cachedsess_init_cb(%struct.cache*) #1

declare void @cache_free(%struct.cache*) #1

; Function Attrs: nounwind uwtable
define i32 @cachemgr_init() #0 !dbg !149 {
  %1 = alloca i32, align 4
  %2 = load %struct.cache*, %struct.cache** @cachemgr_fkcrt, align 8, !dbg !150
  %3 = call i32 @cache_reinit(%struct.cache* %2), !dbg !152
  %4 = icmp ne i32 %3, 0, !dbg !152
  br i1 %4, label %5, label %6, !dbg !153

; <label>:5:                                      ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !154
  br label %22, !dbg !154

; <label>:6:                                      ; preds = %0
  %7 = load %struct.cache*, %struct.cache** @cachemgr_tgcrt, align 8, !dbg !155
  %8 = call i32 @cache_reinit(%struct.cache* %7), !dbg !157
  %9 = icmp ne i32 %8, 0, !dbg !157
  br i1 %9, label %10, label %11, !dbg !158

; <label>:10:                                     ; preds = %6
  store i32 -1, i32* %1, align 4, !dbg !159
  br label %22, !dbg !159

; <label>:11:                                     ; preds = %6
  %12 = load %struct.cache*, %struct.cache** @cachemgr_ssess, align 8, !dbg !160
  %13 = call i32 @cache_reinit(%struct.cache* %12), !dbg !162
  %14 = icmp ne i32 %13, 0, !dbg !162
  br i1 %14, label %15, label %16, !dbg !163

; <label>:15:                                     ; preds = %11
  store i32 -1, i32* %1, align 4, !dbg !164
  br label %22, !dbg !164

; <label>:16:                                     ; preds = %11
  %17 = load %struct.cache*, %struct.cache** @cachemgr_dsess, align 8, !dbg !165
  %18 = call i32 @cache_reinit(%struct.cache* %17), !dbg !167
  %19 = icmp ne i32 %18, 0, !dbg !167
  br i1 %19, label %20, label %21, !dbg !168

; <label>:20:                                     ; preds = %16
  store i32 -1, i32* %1, align 4, !dbg !169
  br label %22, !dbg !169

; <label>:21:                                     ; preds = %16
  store i32 0, i32* %1, align 4, !dbg !170
  br label %22, !dbg !170

; <label>:22:                                     ; preds = %21, %20, %15, %10, %5
  %23 = load i32, i32* %1, align 4, !dbg !171
  ret i32 %23, !dbg !171
}

declare i32 @cache_reinit(%struct.cache*) #1

; Function Attrs: nounwind uwtable
define void @cachemgr_fini() #0 !dbg !172 {
  %1 = load %struct.cache*, %struct.cache** @cachemgr_dsess, align 8, !dbg !173
  call void @cache_free(%struct.cache* %1), !dbg !174
  %2 = load %struct.cache*, %struct.cache** @cachemgr_ssess, align 8, !dbg !175
  call void @cache_free(%struct.cache* %2), !dbg !176
  %3 = load %struct.cache*, %struct.cache** @cachemgr_tgcrt, align 8, !dbg !177
  call void @cache_free(%struct.cache* %3), !dbg !178
  %4 = load %struct.cache*, %struct.cache** @cachemgr_fkcrt, align 8, !dbg !179
  call void @cache_free(%struct.cache* %4), !dbg !180
  ret void, !dbg !181
}

; Function Attrs: nounwind uwtable
define void @cachemgr_gc() #0 !dbg !182 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %1, metadata !183, metadata !186), !dbg !187
  call void @llvm.dbg.declare(metadata i64* %2, metadata !188, metadata !186), !dbg !189
  call void @llvm.dbg.declare(metadata i64* %3, metadata !190, metadata !186), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %4, metadata !192, metadata !186), !dbg !193
  %5 = load %struct.cache*, %struct.cache** @cachemgr_fkcrt, align 8, !dbg !194
  %6 = bitcast %struct.cache* %5 to i8*, !dbg !194
  %7 = call i32 @pthread_create(i64* %1, %union.pthread_attr_t* null, i8* (i8*)* @cachemgr_gc_thread, i8* %6) #4, !dbg !195
  store i32 %7, i32* %4, align 4, !dbg !196
  %8 = load i32, i32* %4, align 4, !dbg !197
  %9 = icmp ne i32 %8, 0, !dbg !197
  br i1 %9, label %10, label %14, !dbg !199

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* %4, align 4, !dbg !200
  %12 = call i8* @strerror(i32 %11) #4, !dbg !202
  %13 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* %12), !dbg !203
  br label %14, !dbg !204

; <label>:14:                                     ; preds = %10, %0
  %15 = load %struct.cache*, %struct.cache** @cachemgr_ssess, align 8, !dbg !205
  %16 = bitcast %struct.cache* %15 to i8*, !dbg !205
  %17 = call i32 @pthread_create(i64* %3, %union.pthread_attr_t* null, i8* (i8*)* @cachemgr_gc_thread, i8* %16) #4, !dbg !206
  store i32 %17, i32* %4, align 4, !dbg !207
  %18 = load i32, i32* %4, align 4, !dbg !208
  %19 = icmp ne i32 %18, 0, !dbg !208
  br i1 %19, label %20, label %24, !dbg !210

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4, !dbg !211
  %22 = call i8* @strerror(i32 %21) #4, !dbg !213
  %23 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* %22), !dbg !214
  br label %24, !dbg !215

; <label>:24:                                     ; preds = %20, %14
  %25 = load %struct.cache*, %struct.cache** @cachemgr_dsess, align 8, !dbg !216
  %26 = bitcast %struct.cache* %25 to i8*, !dbg !216
  %27 = call i32 @pthread_create(i64* %2, %union.pthread_attr_t* null, i8* (i8*)* @cachemgr_gc_thread, i8* %26) #4, !dbg !217
  store i32 %27, i32* %4, align 4, !dbg !218
  %28 = load i32, i32* %4, align 4, !dbg !219
  %29 = icmp ne i32 %28, 0, !dbg !219
  br i1 %29, label %30, label %34, !dbg !221

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %4, align 4, !dbg !222
  %32 = call i8* @strerror(i32 %31) #4, !dbg !224
  %33 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* %32), !dbg !225
  br label %34, !dbg !226

; <label>:34:                                     ; preds = %30, %24
  %35 = load i64, i64* %1, align 8, !dbg !227
  %36 = call i32 @pthread_join(i64 %35, i8** null), !dbg !228
  store i32 %36, i32* %4, align 4, !dbg !229
  %37 = load i32, i32* %4, align 4, !dbg !230
  %38 = icmp ne i32 %37, 0, !dbg !230
  br i1 %38, label %39, label %43, !dbg !232

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %4, align 4, !dbg !233
  %41 = call i8* @strerror(i32 %40) #4, !dbg !235
  %42 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i8* %41), !dbg !236
  br label %43, !dbg !237

; <label>:43:                                     ; preds = %39, %34
  %44 = load i64, i64* %3, align 8, !dbg !238
  %45 = call i32 @pthread_join(i64 %44, i8** null), !dbg !239
  store i32 %45, i32* %4, align 4, !dbg !240
  %46 = load i32, i32* %4, align 4, !dbg !241
  %47 = icmp ne i32 %46, 0, !dbg !241
  br i1 %47, label %48, label %52, !dbg !243

; <label>:48:                                     ; preds = %43
  %49 = load i32, i32* %4, align 4, !dbg !244
  %50 = call i8* @strerror(i32 %49) #4, !dbg !246
  %51 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i8* %50), !dbg !247
  br label %52, !dbg !248

; <label>:52:                                     ; preds = %48, %43
  %53 = load i64, i64* %2, align 8, !dbg !249
  %54 = call i32 @pthread_join(i64 %53, i8** null), !dbg !250
  store i32 %54, i32* %4, align 4, !dbg !251
  %55 = load i32, i32* %4, align 4, !dbg !252
  %56 = icmp ne i32 %55, 0, !dbg !252
  br i1 %56, label %57, label %61, !dbg !254

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %4, align 4, !dbg !255
  %59 = call i8* @strerror(i32 %58) #4, !dbg !257
  %60 = call i32 (i8*, ...) @log_err_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i8* %59), !dbg !258
  br label %61, !dbg !259

; <label>:61:                                     ; preds = %57, %52
  ret void, !dbg !260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @cachemgr_gc_thread(i8*) #0 !dbg !261 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !264, metadata !186), !dbg !265
  %3 = load i8*, i8** %2, align 8, !dbg !266
  %4 = bitcast i8* %3 to %struct.cache*, !dbg !266
  call void @cache_gc(%struct.cache* %4), !dbg !267
  ret i8* null, !dbg !268
}

declare i32 @log_err_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

declare i32 @pthread_join(i64, i8**) #1

declare void @cache_gc(%struct.cache*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!114, !115}
!llvm.ident = !{!116}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "line14-cachemgr.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !111, !112, !113}
!6 = distinct !DIGlobalVariable(name: "cachemgr_fkcrt", scope: !0, file: !7, line: 43, type: !8, isLocal: false, isDefinition: true, variable: %struct.cache** @cachemgr_fkcrt)
!7 = !DIFile(filename: "cachemgr.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !10, line: 70, baseType: !11)
!10 = !DIFile(filename: "cache.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache", file: !10, line: 54, size: 1152, align: 64, elements: !12)
!12 = !{!13, !45, !51, !53, !58, !63, !69, !75, !80, !86, !91, !96, !101, !106}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !11, file: !10, line: 55, baseType: !14, size: 320, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !15, line: 128, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!16 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !15, line: 90, size: 320, align: 64, elements: !17)
!17 = !{!18, !38, !43}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !16, file: !15, line: 125, baseType: !19, size: 320, align: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !15, line: 92, size: 320, align: 64, elements: !20)
!20 = !{!21, !23, !25, !26, !27, !28, !30, !31}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !19, file: !15, line: 94, baseType: !22, size: 32, align: 32)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !19, file: !15, line: 95, baseType: !24, size: 32, align: 32, offset: 32)
!24 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !19, file: !15, line: 96, baseType: !22, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !19, file: !15, line: 98, baseType: !24, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !19, file: !15, line: 102, baseType: !22, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !19, file: !15, line: 104, baseType: !29, size: 16, align: 16, offset: 160)
!29 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !19, file: !15, line: 105, baseType: !29, size: 16, align: 16, offset: 176)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !19, file: !15, line: 106, baseType: !32, size: 128, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !15, line: 79, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !15, line: 75, size: 128, align: 64, elements: !34)
!34 = !{!35, !37}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !33, file: !15, line: 77, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !33, file: !15, line: 78, baseType: !36, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !16, file: !15, line: 126, baseType: !39, size: 320, align: 8)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 320, align: 8, elements: !41)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !{!42}
!42 = !DISubrange(count: 40)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !16, file: !15, line: 127, baseType: !44, size: 64, align: 64)
!44 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cb", scope: !11, file: !10, line: 57, baseType: !46, size: 64, align: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_begin_cb_t", file: !10, line: 40, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_iter_t", file: !10, line: 38, baseType: !24)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "end_cb", scope: !11, file: !10, line: 58, baseType: !52, size: 64, align: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_end_cb_t", file: !10, line: 41, baseType: !47)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "exist_cb", scope: !11, file: !10, line: 59, baseType: !54, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_exist_cb_t", file: !10, line: 42, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!22, !50}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "del_cb", scope: !11, file: !10, line: 60, baseType: !59, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_del_cb_t", file: !10, line: 43, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !50}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "get_cb", scope: !11, file: !10, line: 61, baseType: !64, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_cb_t", file: !10, line: 44, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!50, !68}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_key_t", file: !10, line: 37, baseType: !4)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "put_cb", scope: !11, file: !10, line: 62, baseType: !70, size: 64, align: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_put_cb_t", file: !10, line: 45, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!50, !68, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "free_key_cb", scope: !11, file: !10, line: 63, baseType: !76, size: 64, align: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_key_cb_t", file: !10, line: 46, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !68}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "free_val_cb", scope: !11, file: !10, line: 64, baseType: !81, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_val_cb_t", file: !10, line: 47, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_val_t", file: !10, line: 36, baseType: !4)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "get_key_cb", scope: !11, file: !10, line: 65, baseType: !87, size: 64, align: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_key_cb_t", file: !10, line: 48, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!68, !50}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "get_val_cb", scope: !11, file: !10, line: 66, baseType: !92, size: 64, align: 64, offset: 896)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_val_cb_t", file: !10, line: 49, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!85, !50}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "set_val_cb", scope: !11, file: !10, line: 67, baseType: !97, size: 64, align: 64, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_set_val_cb_t", file: !10, line: 50, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !50, !85}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "unpackverify_val_cb", scope: !11, file: !10, line: 68, baseType: !102, size: 64, align: 64, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_unpackverify_val_cb_t", file: !10, line: 51, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!85, !85, !22}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "fini_cb", scope: !11, file: !10, line: 69, baseType: !107, size: 64, align: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_fini_cb_t", file: !10, line: 52, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null}
!111 = distinct !DIGlobalVariable(name: "cachemgr_tgcrt", scope: !0, file: !7, line: 44, type: !8, isLocal: false, isDefinition: true, variable: %struct.cache** @cachemgr_tgcrt)
!112 = distinct !DIGlobalVariable(name: "cachemgr_ssess", scope: !0, file: !7, line: 45, type: !8, isLocal: false, isDefinition: true, variable: %struct.cache** @cachemgr_ssess)
!113 = distinct !DIGlobalVariable(name: "cachemgr_dsess", scope: !0, file: !7, line: 46, type: !8, isLocal: false, isDefinition: true, variable: %struct.cache** @cachemgr_dsess)
!114 = !{i32 2, !"Dwarf Version", i32 4}
!115 = !{i32 2, !"Debug Info Version", i32 3}
!116 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!117 = distinct !DISubprogram(name: "cachemgr_preinit", scope: !7, file: !7, line: 65, type: !118, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!118 = !DISubroutineType(types: !119)
!119 = !{!22}
!120 = !DILocation(line: 67, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !7, line: 67, column: 6)
!122 = !DILocation(line: 67, column: 23, scope: !121)
!123 = !DILocation(line: 67, column: 6, scope: !117)
!124 = !DILocation(line: 68, column: 3, scope: !121)
!125 = !DILocation(line: 69, column: 25, scope: !126)
!126 = distinct !DILexicalBlock(scope: !117, file: !7, line: 69, column: 6)
!127 = !DILocation(line: 69, column: 23, scope: !126)
!128 = !DILocation(line: 69, column: 6, scope: !117)
!129 = !DILocation(line: 70, column: 3, scope: !126)
!130 = !DILocation(line: 71, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !117, file: !7, line: 71, column: 6)
!132 = !DILocation(line: 71, column: 23, scope: !131)
!133 = !DILocation(line: 71, column: 6, scope: !117)
!134 = !DILocation(line: 72, column: 3, scope: !131)
!135 = !DILocation(line: 73, column: 25, scope: !136)
!136 = distinct !DILexicalBlock(scope: !117, file: !7, line: 73, column: 6)
!137 = !DILocation(line: 73, column: 23, scope: !136)
!138 = !DILocation(line: 73, column: 6, scope: !117)
!139 = !DILocation(line: 74, column: 3, scope: !136)
!140 = !DILocation(line: 75, column: 2, scope: !117)
!141 = !DILocation(line: 78, column: 13, scope: !117)
!142 = !DILocation(line: 78, column: 2, scope: !117)
!143 = !DILocation(line: 80, column: 13, scope: !117)
!144 = !DILocation(line: 80, column: 2, scope: !117)
!145 = !DILocation(line: 82, column: 13, scope: !117)
!146 = !DILocation(line: 82, column: 2, scope: !117)
!147 = !DILocation(line: 84, column: 2, scope: !117)
!148 = !DILocation(line: 85, column: 1, scope: !117)
!149 = distinct !DISubprogram(name: "cachemgr_init", scope: !7, file: !7, line: 92, type: !118, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!150 = !DILocation(line: 94, column: 19, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !7, line: 94, column: 6)
!152 = !DILocation(line: 94, column: 6, scope: !151)
!153 = !DILocation(line: 94, column: 6, scope: !149)
!154 = !DILocation(line: 95, column: 3, scope: !151)
!155 = !DILocation(line: 96, column: 19, scope: !156)
!156 = distinct !DILexicalBlock(scope: !149, file: !7, line: 96, column: 6)
!157 = !DILocation(line: 96, column: 6, scope: !156)
!158 = !DILocation(line: 96, column: 6, scope: !149)
!159 = !DILocation(line: 97, column: 3, scope: !156)
!160 = !DILocation(line: 98, column: 19, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !7, line: 98, column: 6)
!162 = !DILocation(line: 98, column: 6, scope: !161)
!163 = !DILocation(line: 98, column: 6, scope: !149)
!164 = !DILocation(line: 99, column: 3, scope: !161)
!165 = !DILocation(line: 100, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !149, file: !7, line: 100, column: 6)
!167 = !DILocation(line: 100, column: 6, scope: !166)
!168 = !DILocation(line: 100, column: 6, scope: !149)
!169 = !DILocation(line: 101, column: 3, scope: !166)
!170 = !DILocation(line: 102, column: 2, scope: !149)
!171 = !DILocation(line: 103, column: 1, scope: !149)
!172 = distinct !DISubprogram(name: "cachemgr_fini", scope: !7, file: !7, line: 111, type: !109, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!173 = !DILocation(line: 113, column: 13, scope: !172)
!174 = !DILocation(line: 113, column: 2, scope: !172)
!175 = !DILocation(line: 114, column: 13, scope: !172)
!176 = !DILocation(line: 114, column: 2, scope: !172)
!177 = !DILocation(line: 115, column: 13, scope: !172)
!178 = !DILocation(line: 115, column: 2, scope: !172)
!179 = !DILocation(line: 116, column: 13, scope: !172)
!180 = !DILocation(line: 116, column: 2, scope: !172)
!181 = !DILocation(line: 117, column: 1, scope: !172)
!182 = distinct !DISubprogram(name: "cachemgr_gc", scope: !7, file: !7, line: 126, type: !109, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!183 = !DILocalVariable(name: "fkcrt_thr", scope: !182, file: !7, line: 128, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !15, line: 60, baseType: !185)
!185 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!186 = !DIExpression()
!187 = !DILocation(line: 128, column: 12, scope: !182)
!188 = !DILocalVariable(name: "dsess_thr", scope: !182, file: !7, line: 128, type: !184)
!189 = !DILocation(line: 128, column: 23, scope: !182)
!190 = !DILocalVariable(name: "ssess_thr", scope: !182, file: !7, line: 128, type: !184)
!191 = !DILocation(line: 128, column: 34, scope: !182)
!192 = !DILocalVariable(name: "rv", scope: !182, file: !7, line: 129, type: !22)
!193 = !DILocation(line: 129, column: 6, scope: !182)
!194 = !DILocation(line: 134, column: 22, scope: !182)
!195 = !DILocation(line: 133, column: 7, scope: !182)
!196 = !DILocation(line: 133, column: 5, scope: !182)
!197 = !DILocation(line: 135, column: 6, scope: !198)
!198 = distinct !DILexicalBlock(scope: !182, file: !7, line: 135, column: 6)
!199 = !DILocation(line: 135, column: 6, scope: !182)
!200 = !DILocation(line: 137, column: 27, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !7, line: 135, column: 10)
!202 = !DILocation(line: 137, column: 18, scope: !201)
!203 = !DILocation(line: 136, column: 3, scope: !201)
!204 = !DILocation(line: 138, column: 2, scope: !201)
!205 = !DILocation(line: 140, column: 22, scope: !182)
!206 = !DILocation(line: 139, column: 7, scope: !182)
!207 = !DILocation(line: 139, column: 5, scope: !182)
!208 = !DILocation(line: 141, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !182, file: !7, line: 141, column: 6)
!210 = !DILocation(line: 141, column: 6, scope: !182)
!211 = !DILocation(line: 143, column: 27, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !7, line: 141, column: 10)
!213 = !DILocation(line: 143, column: 18, scope: !212)
!214 = !DILocation(line: 142, column: 3, scope: !212)
!215 = !DILocation(line: 144, column: 2, scope: !212)
!216 = !DILocation(line: 146, column: 22, scope: !182)
!217 = !DILocation(line: 145, column: 7, scope: !182)
!218 = !DILocation(line: 145, column: 5, scope: !182)
!219 = !DILocation(line: 147, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !182, file: !7, line: 147, column: 6)
!221 = !DILocation(line: 147, column: 6, scope: !182)
!222 = !DILocation(line: 149, column: 27, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !7, line: 147, column: 10)
!224 = !DILocation(line: 149, column: 18, scope: !223)
!225 = !DILocation(line: 148, column: 3, scope: !223)
!226 = !DILocation(line: 150, column: 2, scope: !223)
!227 = !DILocation(line: 152, column: 20, scope: !182)
!228 = !DILocation(line: 152, column: 7, scope: !182)
!229 = !DILocation(line: 152, column: 5, scope: !182)
!230 = !DILocation(line: 153, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !182, file: !7, line: 153, column: 6)
!232 = !DILocation(line: 153, column: 6, scope: !182)
!233 = !DILocation(line: 155, column: 27, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !7, line: 153, column: 10)
!235 = !DILocation(line: 155, column: 18, scope: !234)
!236 = !DILocation(line: 154, column: 3, scope: !234)
!237 = !DILocation(line: 156, column: 2, scope: !234)
!238 = !DILocation(line: 157, column: 20, scope: !182)
!239 = !DILocation(line: 157, column: 7, scope: !182)
!240 = !DILocation(line: 157, column: 5, scope: !182)
!241 = !DILocation(line: 158, column: 6, scope: !242)
!242 = distinct !DILexicalBlock(scope: !182, file: !7, line: 158, column: 6)
!243 = !DILocation(line: 158, column: 6, scope: !182)
!244 = !DILocation(line: 160, column: 27, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !7, line: 158, column: 10)
!246 = !DILocation(line: 160, column: 18, scope: !245)
!247 = !DILocation(line: 159, column: 3, scope: !245)
!248 = !DILocation(line: 161, column: 2, scope: !245)
!249 = !DILocation(line: 162, column: 20, scope: !182)
!250 = !DILocation(line: 162, column: 7, scope: !182)
!251 = !DILocation(line: 162, column: 5, scope: !182)
!252 = !DILocation(line: 163, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !182, file: !7, line: 163, column: 6)
!254 = !DILocation(line: 163, column: 6, scope: !182)
!255 = !DILocation(line: 165, column: 27, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !7, line: 163, column: 10)
!257 = !DILocation(line: 165, column: 18, scope: !256)
!258 = !DILocation(line: 164, column: 3, scope: !256)
!259 = !DILocation(line: 166, column: 2, scope: !256)
!260 = !DILocation(line: 167, column: 1, scope: !182)
!261 = distinct !DISubprogram(name: "cachemgr_gc_thread", scope: !7, file: !7, line: 53, type: !262, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!262 = !DISubroutineType(types: !263)
!263 = !{!4, !4}
!264 = !DILocalVariable(name: "arg", arg: 1, scope: !261, file: !7, line: 53, type: !4)
!265 = !DILocation(line: 53, column: 51, scope: !261)
!266 = !DILocation(line: 55, column: 11, scope: !261)
!267 = !DILocation(line: 55, column: 2, scope: !261)
!268 = !DILocation(line: 56, column: 2, scope: !261)
