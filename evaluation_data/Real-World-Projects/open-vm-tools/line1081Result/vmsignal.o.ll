; ModuleID = './vmsignal.o.i'
source_filename = "./vmsignal.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unable to empty a signal set: %s.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to add a signal to a signal set: %s.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Unable to modify the handler of the signal %d: %s.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Unable to reset the handler of the signal %d: %s.\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Signal_SetGroupHandler(i32*, %struct.sigaction*, i32, void (i32)*) #0 !dbg !6 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sigaction*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sigaction, align 8
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !120, metadata !121), !dbg !122
  store %struct.sigaction* %1, %struct.sigaction** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction** %7, metadata !123, metadata !121), !dbg !124
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !125, metadata !121), !dbg !126
  store void (i32)* %3, void (i32)** %9, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %9, metadata !127, metadata !121), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %10, metadata !129, metadata !121), !dbg !130
  call void @llvm.dbg.declare(metadata %struct.sigaction* %11, metadata !131, metadata !121), !dbg !132
  %12 = load void (i32)*, void (i32)** %9, align 8, !dbg !133
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %11, i32 0, i32 0, !dbg !134
  %14 = bitcast %union.anon* %13 to void (i32)**, !dbg !135
  store void (i32)* %12, void (i32)** %14, align 8, !dbg !136
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %11, i32 0, i32 1, !dbg !137
  %16 = call i32 @sigemptyset(%struct.__sigset_t* %15) #5, !dbg !139
  %17 = icmp ne i32 %16, 0, !dbg !139
  br i1 %17, label %18, label %24, !dbg !140

; <label>:18:                                     ; preds = %4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !141
  %20 = call i32* @__errno_location() #1, !dbg !143
  %21 = load i32, i32* %20, align 4, !dbg !144
  %22 = call i8* @strerror(i32 %21) #5, !dbg !145
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* %22), !dbg !147
  store i32 0, i32* %5, align 4, !dbg !149
  br label %82, !dbg !149

; <label>:24:                                     ; preds = %4
  store i32 0, i32* %10, align 4, !dbg !150
  br label %25, !dbg !152

; <label>:25:                                     ; preds = %45, %24
  %26 = load i32, i32* %10, align 4, !dbg !153
  %27 = load i32, i32* %8, align 4, !dbg !156
  %28 = icmp ult i32 %26, %27, !dbg !157
  br i1 %28, label %29, label %48, !dbg !158

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %11, i32 0, i32 1, !dbg !159
  %31 = load i32, i32* %10, align 4, !dbg !162
  %32 = zext i32 %31 to i64, !dbg !163
  %33 = load i32*, i32** %6, align 8, !dbg !163
  %34 = getelementptr inbounds i32, i32* %33, i64 %32, !dbg !163
  %35 = load i32, i32* %34, align 4, !dbg !163
  %36 = call i32 @sigaddset(%struct.__sigset_t* %30, i32 %35) #5, !dbg !164
  %37 = icmp ne i32 %36, 0, !dbg !164
  br i1 %37, label %38, label %44, !dbg !165

; <label>:38:                                     ; preds = %29
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !166
  %40 = call i32* @__errno_location() #1, !dbg !168
  %41 = load i32, i32* %40, align 4, !dbg !169
  %42 = call i8* @strerror(i32 %41) #5, !dbg !170
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i8* %42), !dbg !172
  store i32 0, i32* %5, align 4, !dbg !174
  br label %82, !dbg !174

; <label>:44:                                     ; preds = %29
  br label %45, !dbg !175

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %10, align 4, !dbg !176
  %47 = add i32 %46, 1, !dbg !176
  store i32 %47, i32* %10, align 4, !dbg !176
  br label %25, !dbg !178, !llvm.loop !179

; <label>:48:                                     ; preds = %25
  %49 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %11, i32 0, i32 2, !dbg !181
  store i32 0, i32* %49, align 8, !dbg !182
  store i32 0, i32* %10, align 4, !dbg !183
  br label %50, !dbg !185

; <label>:50:                                     ; preds = %78, %48
  %51 = load i32, i32* %10, align 4, !dbg !186
  %52 = load i32, i32* %8, align 4, !dbg !189
  %53 = icmp ult i32 %51, %52, !dbg !190
  br i1 %53, label %54, label %81, !dbg !191

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %10, align 4, !dbg !192
  %56 = zext i32 %55 to i64, !dbg !195
  %57 = load i32*, i32** %6, align 8, !dbg !195
  %58 = getelementptr inbounds i32, i32* %57, i64 %56, !dbg !195
  %59 = load i32, i32* %58, align 4, !dbg !195
  %60 = load i32, i32* %10, align 4, !dbg !196
  %61 = zext i32 %60 to i64, !dbg !197
  %62 = load %struct.sigaction*, %struct.sigaction** %7, align 8, !dbg !197
  %63 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %62, i64 %61, !dbg !197
  %64 = call i32 @sigaction(i32 %59, %struct.sigaction* %11, %struct.sigaction* %63) #5, !dbg !198
  %65 = icmp ne i32 %64, 0, !dbg !198
  br i1 %65, label %66, label %77, !dbg !199

; <label>:66:                                     ; preds = %54
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !200
  %68 = load i32, i32* %10, align 4, !dbg !202
  %69 = zext i32 %68 to i64, !dbg !203
  %70 = load i32*, i32** %6, align 8, !dbg !203
  %71 = getelementptr inbounds i32, i32* %70, i64 %69, !dbg !203
  %72 = load i32, i32* %71, align 4, !dbg !203
  %73 = call i32* @__errno_location() #1, !dbg !204
  %74 = load i32, i32* %73, align 4, !dbg !205
  %75 = call i8* @strerror(i32 %74) #5, !dbg !206
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i32 %72, i8* %75), !dbg !208
  store i32 0, i32* %5, align 4, !dbg !210
  br label %82, !dbg !210

; <label>:77:                                     ; preds = %54
  br label %78, !dbg !211

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %10, align 4, !dbg !212
  %80 = add i32 %79, 1, !dbg !212
  store i32 %80, i32* %10, align 4, !dbg !212
  br label %50, !dbg !214, !llvm.loop !215

; <label>:81:                                     ; preds = %50
  store i32 1, i32* %5, align 4, !dbg !217
  br label %82, !dbg !217

; <label>:82:                                     ; preds = %81, %66, %38, %18
  %83 = load i32, i32* %5, align 4, !dbg !218
  ret i32 %83, !dbg !218
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

; Function Attrs: nounwind uwtable
define i32 @Signal_ResetGroupHandler(i32*, %struct.sigaction*, i32) #0 !dbg !219 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sigaction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !224, metadata !121), !dbg !225
  store %struct.sigaction* %1, %struct.sigaction** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction** %6, metadata !226, metadata !121), !dbg !227
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !228, metadata !121), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %8, metadata !230, metadata !121), !dbg !231
  store i32 0, i32* %8, align 4, !dbg !232
  br label %9, !dbg !234

; <label>:9:                                      ; preds = %37, %3
  %10 = load i32, i32* %8, align 4, !dbg !235
  %11 = load i32, i32* %7, align 4, !dbg !238
  %12 = icmp ult i32 %10, %11, !dbg !239
  br i1 %12, label %13, label %40, !dbg !240

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %8, align 4, !dbg !241
  %15 = zext i32 %14 to i64, !dbg !244
  %16 = load i32*, i32** %5, align 8, !dbg !244
  %17 = getelementptr inbounds i32, i32* %16, i64 %15, !dbg !244
  %18 = load i32, i32* %17, align 4, !dbg !244
  %19 = load i32, i32* %8, align 4, !dbg !245
  %20 = zext i32 %19 to i64, !dbg !246
  %21 = load %struct.sigaction*, %struct.sigaction** %6, align 8, !dbg !246
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i64 %20, !dbg !246
  %23 = call i32 @sigaction(i32 %18, %struct.sigaction* %22, %struct.sigaction* null) #5, !dbg !247
  %24 = icmp ne i32 %23, 0, !dbg !247
  br i1 %24, label %25, label %36, !dbg !248

; <label>:25:                                     ; preds = %13
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !249
  %27 = load i32, i32* %8, align 4, !dbg !251
  %28 = zext i32 %27 to i64, !dbg !252
  %29 = load i32*, i32** %5, align 8, !dbg !252
  %30 = getelementptr inbounds i32, i32* %29, i64 %28, !dbg !252
  %31 = load i32, i32* %30, align 4, !dbg !252
  %32 = call i32* @__errno_location() #1, !dbg !253
  %33 = load i32, i32* %32, align 4, !dbg !254
  %34 = call i8* @strerror(i32 %33) #5, !dbg !255
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), i32 %31, i8* %34), !dbg !257
  store i32 0, i32* %4, align 4, !dbg !259
  br label %41, !dbg !259

; <label>:36:                                     ; preds = %13
  br label %37, !dbg !260

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %8, align 4, !dbg !261
  %39 = add i32 %38, 1, !dbg !261
  store i32 %39, i32* %8, align 4, !dbg !261
  br label %9, !dbg !263, !llvm.loop !264

; <label>:40:                                     ; preds = %9
  store i32 1, i32* %4, align 4, !dbg !266
  br label %41, !dbg !266

; <label>:41:                                     ; preds = %40, %25
  %42 = load i32, i32* %4, align 4, !dbg !267
  ret i32 %42, !dbg !267
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "vmsignal.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1081")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!6 = distinct !DISubprogram(name: "Signal_SetGroupHandler", scope: !7, file: !7, line: 58, type: !8, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!7 = !DIFile(filename: "vmsignal.c", directory: "/home/lichi/Desktop/open-vm-tools/line1081")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !13, !53, !23}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !15, line: 24, size: 1216, align: 64, elements: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "/home/lichi/Desktop/open-vm-tools/line1081")
!16 = !{!17, !105, !115, !116}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !14, file: !15, line: 35, baseType: !18, size: 64, align: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 28, size: 64, align: 64, elements: !19)
!19 = !{!20, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !18, file: !15, line: 31, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !22, line: 85, baseType: !23)
!22 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/open-vm-tools/line1081")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !10}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !18, file: !15, line: 33, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !10, !30, !65}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !32, line: 133, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/siginfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line1081")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 62, size: 1024, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !33, file: !32, line: 64, baseType: !10, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !33, file: !32, line: 65, baseType: !10, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !33, file: !32, line: 67, baseType: !10, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !33, file: !32, line: 132, baseType: !39, size: 896, align: 64, offset: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !32, line: 69, size: 896, align: 64, elements: !40)
!40 = !{!41, !45, !54, !66, !72, !83, !94, !99}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !39, file: !32, line: 71, baseType: !42, size: 896, align: 32)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 896, align: 32, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 28)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !39, file: !32, line: 78, baseType: !46, size: 64, align: 32)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !32, line: 74, size: 64, align: 32, elements: !47)
!47 = !{!48, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !46, file: !32, line: 76, baseType: !49, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !50, line: 133, baseType: !10)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1081")
!51 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !46, file: !32, line: 77, baseType: !52, size: 32, align: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !50, line: 125, baseType: !53)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !39, file: !32, line: 86, baseType: !55, size: 128, align: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !32, line: 81, size: 128, align: 64, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !55, file: !32, line: 83, baseType: !10, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !55, file: !32, line: 84, baseType: !10, size: 32, align: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !55, file: !32, line: 85, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !32, line: 36, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !32, line: 32, size: 64, align: 64, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !61, file: !32, line: 34, baseType: !10, size: 32, align: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !61, file: !32, line: 35, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !39, file: !32, line: 94, baseType: !67, size: 128, align: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !32, line: 89, size: 128, align: 64, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !67, file: !32, line: 91, baseType: !49, size: 32, align: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !67, file: !32, line: 92, baseType: !52, size: 32, align: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !67, file: !32, line: 93, baseType: !60, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !39, file: !32, line: 104, baseType: !73, size: 256, align: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !32, line: 97, size: 256, align: 64, elements: !74)
!74 = !{!75, !76, !77, !78, !82}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !73, file: !32, line: 99, baseType: !49, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !73, file: !32, line: 100, baseType: !52, size: 32, align: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !73, file: !32, line: 101, baseType: !10, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !73, file: !32, line: 102, baseType: !79, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !32, line: 58, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !50, line: 135, baseType: !81)
!81 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !73, file: !32, line: 103, baseType: !79, size: 64, align: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !39, file: !32, line: 116, baseType: !84, size: 256, align: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !32, line: 107, size: 256, align: 64, elements: !85)
!85 = !{!86, !87, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !84, file: !32, line: 109, baseType: !65, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !84, file: !32, line: 110, baseType: !88, size: 16, align: 16, offset: 64)
!88 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !84, file: !32, line: 115, baseType: !90, size: 128, align: 64, offset: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !32, line: 111, size: 128, align: 64, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !90, file: !32, line: 113, baseType: !65, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !90, file: !32, line: 114, baseType: !65, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !39, file: !32, line: 123, baseType: !95, size: 128, align: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !32, line: 119, size: 128, align: 64, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !95, file: !32, line: 121, baseType: !81, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !95, file: !32, line: 122, baseType: !10, size: 32, align: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !39, file: !32, line: 131, baseType: !100, size: 128, align: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !32, line: 126, size: 128, align: 64, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !100, file: !32, line: 128, baseType: !65, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !100, file: !32, line: 129, baseType: !10, size: 32, align: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !100, file: !32, line: 130, baseType: !53, size: 32, align: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !14, file: !15, line: 43, baseType: !106, size: 1024, align: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !107, line: 30, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigset.h", directory: "/home/lichi/Desktop/open-vm-tools/line1081")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 27, size: 1024, align: 64, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !108, file: !107, line: 29, baseType: !111, size: 1024, align: 64)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1024, align: 64, elements: !113)
!112 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!113 = !{!114}
!114 = !DISubrange(count: 16)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !14, file: !15, line: 46, baseType: !10, size: 32, align: 32, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !14, file: !15, line: 49, baseType: !117, size: 64, align: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null}
!120 = !DILocalVariable(name: "signals", arg: 1, scope: !6, file: !7, line: 58, type: !11)
!121 = !DIExpression()
!122 = !DILocation(line: 58, column: 35, scope: !6)
!123 = !DILocalVariable(name: "olds", arg: 2, scope: !6, file: !7, line: 59, type: !13)
!124 = !DILocation(line: 59, column: 42, scope: !6)
!125 = !DILocalVariable(name: "nr", arg: 3, scope: !6, file: !7, line: 60, type: !53)
!126 = !DILocation(line: 60, column: 37, scope: !6)
!127 = !DILocalVariable(name: "handler", arg: 4, scope: !6, file: !7, line: 61, type: !23)
!128 = !DILocation(line: 61, column: 31, scope: !6)
!129 = !DILocalVariable(name: "i", scope: !6, file: !7, line: 63, type: !53)
!130 = !DILocation(line: 63, column: 17, scope: !6)
!131 = !DILocalVariable(name: "new", scope: !6, file: !7, line: 64, type: !14)
!132 = !DILocation(line: 64, column: 21, scope: !6)
!133 = !DILocation(line: 66, column: 20, scope: !6)
!134 = !DILocation(line: 66, column: 7, scope: !6)
!135 = !DILocation(line: 66, column: 27, scope: !6)
!136 = !DILocation(line: 66, column: 18, scope: !6)
!137 = !DILocation(line: 67, column: 25, scope: !138)
!138 = distinct !DILexicalBlock(scope: !6, file: !7, line: 67, column: 8)
!139 = !DILocation(line: 67, column: 8, scope: !138)
!140 = !DILocation(line: 67, column: 8, scope: !6)
!141 = !DILocation(line: 68, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !7, line: 67, column: 35)
!143 = !DILocation(line: 68, column: 74, scope: !142)
!144 = !DILocation(line: 68, column: 73, scope: !142)
!145 = !DILocation(line: 68, column: 63, scope: !146)
!146 = !DILexicalBlockFile(scope: !142, file: !7, discriminator: 1)
!147 = !DILocation(line: 68, column: 7, scope: !148)
!148 = !DILexicalBlockFile(scope: !142, file: !7, discriminator: 2)
!149 = !DILocation(line: 70, column: 7, scope: !142)
!150 = !DILocation(line: 72, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !6, file: !7, line: 72, column: 4)
!152 = !DILocation(line: 72, column: 9, scope: !151)
!153 = !DILocation(line: 72, column: 16, scope: !154)
!154 = !DILexicalBlockFile(scope: !155, file: !7, discriminator: 1)
!155 = distinct !DILexicalBlock(scope: !151, file: !7, line: 72, column: 4)
!156 = !DILocation(line: 72, column: 20, scope: !154)
!157 = !DILocation(line: 72, column: 18, scope: !154)
!158 = !DILocation(line: 72, column: 4, scope: !154)
!159 = !DILocation(line: 73, column: 26, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !7, line: 73, column: 11)
!161 = distinct !DILexicalBlock(scope: !155, file: !7, line: 72, column: 29)
!162 = !DILocation(line: 73, column: 43, scope: !160)
!163 = !DILocation(line: 73, column: 35, scope: !160)
!164 = !DILocation(line: 73, column: 11, scope: !160)
!165 = !DILocation(line: 73, column: 11, scope: !161)
!166 = !DILocation(line: 74, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !7, line: 73, column: 48)
!168 = !DILocation(line: 74, column: 87, scope: !167)
!169 = !DILocation(line: 74, column: 86, scope: !167)
!170 = !DILocation(line: 74, column: 76, scope: !171)
!171 = !DILexicalBlockFile(scope: !167, file: !7, discriminator: 1)
!172 = !DILocation(line: 74, column: 10, scope: !173)
!173 = !DILexicalBlockFile(scope: !167, file: !7, discriminator: 2)
!174 = !DILocation(line: 76, column: 10, scope: !167)
!175 = !DILocation(line: 78, column: 4, scope: !161)
!176 = !DILocation(line: 72, column: 25, scope: !177)
!177 = !DILexicalBlockFile(scope: !155, file: !7, discriminator: 2)
!178 = !DILocation(line: 72, column: 4, scope: !177)
!179 = distinct !{!179, !180}
!180 = !DILocation(line: 72, column: 4, scope: !6)
!181 = !DILocation(line: 79, column: 8, scope: !6)
!182 = !DILocation(line: 79, column: 17, scope: !6)
!183 = !DILocation(line: 81, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !6, file: !7, line: 81, column: 4)
!185 = !DILocation(line: 81, column: 9, scope: !184)
!186 = !DILocation(line: 81, column: 16, scope: !187)
!187 = !DILexicalBlockFile(scope: !188, file: !7, discriminator: 1)
!188 = distinct !DILexicalBlock(scope: !184, file: !7, line: 81, column: 4)
!189 = !DILocation(line: 81, column: 20, scope: !187)
!190 = !DILocation(line: 81, column: 18, scope: !187)
!191 = !DILocation(line: 81, column: 4, scope: !187)
!192 = !DILocation(line: 82, column: 29, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !7, line: 82, column: 11)
!194 = distinct !DILexicalBlock(scope: !188, file: !7, line: 81, column: 29)
!195 = !DILocation(line: 82, column: 21, scope: !193)
!196 = !DILocation(line: 82, column: 45, scope: !193)
!197 = !DILocation(line: 82, column: 40, scope: !193)
!198 = !DILocation(line: 82, column: 11, scope: !193)
!199 = !DILocation(line: 82, column: 11, scope: !194)
!200 = !DILocation(line: 83, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !7, line: 82, column: 50)
!202 = !DILocation(line: 83, column: 91, scope: !201)
!203 = !DILocation(line: 83, column: 83, scope: !201)
!204 = !DILocation(line: 83, column: 106, scope: !201)
!205 = !DILocation(line: 83, column: 105, scope: !201)
!206 = !DILocation(line: 83, column: 95, scope: !207)
!207 = !DILexicalBlockFile(scope: !201, file: !7, discriminator: 1)
!208 = !DILocation(line: 83, column: 10, scope: !209)
!209 = !DILexicalBlockFile(scope: !201, file: !7, discriminator: 2)
!210 = !DILocation(line: 85, column: 10, scope: !201)
!211 = !DILocation(line: 87, column: 4, scope: !194)
!212 = !DILocation(line: 81, column: 25, scope: !213)
!213 = !DILexicalBlockFile(scope: !188, file: !7, discriminator: 2)
!214 = !DILocation(line: 81, column: 4, scope: !213)
!215 = distinct !{!215, !216}
!216 = !DILocation(line: 81, column: 4, scope: !6)
!217 = !DILocation(line: 89, column: 4, scope: !6)
!218 = !DILocation(line: 90, column: 1, scope: !6)
!219 = distinct !DISubprogram(name: "Signal_ResetGroupHandler", scope: !7, file: !7, line: 108, type: !220, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!220 = !DISubroutineType(types: !221)
!221 = !{!10, !11, !222, !53}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!224 = !DILocalVariable(name: "signals", arg: 1, scope: !219, file: !7, line: 108, type: !11)
!225 = !DILocation(line: 108, column: 37, scope: !219)
!226 = !DILocalVariable(name: "olds", arg: 2, scope: !219, file: !7, line: 109, type: !222)
!227 = !DILocation(line: 109, column: 50, scope: !219)
!228 = !DILocalVariable(name: "nr", arg: 3, scope: !219, file: !7, line: 110, type: !53)
!229 = !DILocation(line: 110, column: 39, scope: !219)
!230 = !DILocalVariable(name: "i", scope: !219, file: !7, line: 112, type: !53)
!231 = !DILocation(line: 112, column: 17, scope: !219)
!232 = !DILocation(line: 114, column: 11, scope: !233)
!233 = distinct !DILexicalBlock(scope: !219, file: !7, line: 114, column: 4)
!234 = !DILocation(line: 114, column: 9, scope: !233)
!235 = !DILocation(line: 114, column: 16, scope: !236)
!236 = !DILexicalBlockFile(scope: !237, file: !7, discriminator: 1)
!237 = distinct !DILexicalBlock(scope: !233, file: !7, line: 114, column: 4)
!238 = !DILocation(line: 114, column: 20, scope: !236)
!239 = !DILocation(line: 114, column: 18, scope: !236)
!240 = !DILocation(line: 114, column: 4, scope: !236)
!241 = !DILocation(line: 115, column: 29, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !7, line: 115, column: 11)
!243 = distinct !DILexicalBlock(scope: !237, file: !7, line: 114, column: 29)
!244 = !DILocation(line: 115, column: 21, scope: !242)
!245 = !DILocation(line: 115, column: 39, scope: !242)
!246 = !DILocation(line: 115, column: 34, scope: !242)
!247 = !DILocation(line: 115, column: 11, scope: !242)
!248 = !DILocation(line: 115, column: 11, scope: !243)
!249 = !DILocation(line: 116, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !7, line: 115, column: 49)
!251 = !DILocation(line: 116, column: 90, scope: !250)
!252 = !DILocation(line: 116, column: 82, scope: !250)
!253 = !DILocation(line: 116, column: 105, scope: !250)
!254 = !DILocation(line: 116, column: 104, scope: !250)
!255 = !DILocation(line: 116, column: 94, scope: !256)
!256 = !DILexicalBlockFile(scope: !250, file: !7, discriminator: 1)
!257 = !DILocation(line: 116, column: 10, scope: !258)
!258 = !DILexicalBlockFile(scope: !250, file: !7, discriminator: 2)
!259 = !DILocation(line: 118, column: 10, scope: !250)
!260 = !DILocation(line: 120, column: 4, scope: !243)
!261 = !DILocation(line: 114, column: 25, scope: !262)
!262 = !DILexicalBlockFile(scope: !237, file: !7, discriminator: 2)
!263 = !DILocation(line: 114, column: 4, scope: !262)
!264 = distinct !{!264, !265}
!265 = !DILocation(line: 114, column: 4, scope: !219)
!266 = !DILocation(line: 122, column: 4, scope: !219)
!267 = !DILocation(line: 123, column: 1, scope: !219)
