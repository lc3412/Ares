; ModuleID = './libSyncDriver_la-vmSyncDriver.o.i'
source_filename = "./libSyncDriver_la-vmSyncDriver.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.SyncHandle = type { i32 (%struct.SyncHandle*)*, void (%struct.SyncHandle*)*, void (%struct.SyncHandle*, i8**, i8*)* }
%struct.VmSyncDriver = type { %struct.SyncHandle, i32 }

@.str = private unnamed_addr constant [45 x i8] c"SyncDriver: Freezing using vmsync driver...\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"/proc/driver/vmware-sync\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"vmSyncDriver.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"SyncDriver: Freezing %s using vmsync driver...\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @VmSync_Freeze(%struct._GSList*, %struct.SyncHandle**) #0 !dbg !58 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.SyncHandle**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.VmSyncDriver*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !65, metadata !66), !dbg !67
  store %struct.SyncHandle** %1, %struct.SyncHandle*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle*** %5, metadata !68, metadata !66), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %6, metadata !70, metadata !66), !dbg !71
  call void @llvm.dbg.declare(metadata i8* %7, metadata !72, metadata !66), !dbg !73
  store i8 1, i8* %7, align 1, !dbg !73
  call void @llvm.dbg.declare(metadata i8** %8, metadata !74, metadata !66), !dbg !76
  store i8* null, i8** %8, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata %struct.VmSyncDriver** %9, metadata !77, metadata !66), !dbg !78
  store %struct.VmSyncDriver* null, %struct.VmSyncDriver** %9, align 8, !dbg !78
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0)), !dbg !79
  %10 = call i32 (i8*, i32, ...) @open64(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !80
  store i32 %10, i32* %6, align 4, !dbg !81
  %11 = load i32, i32* %6, align 4, !dbg !82
  %12 = icmp eq i32 %11, -1, !dbg !84
  br i1 %12, label %13, label %14, !dbg !85

; <label>:13:                                     ; preds = %2
  store i32 2, i32* %3, align 4, !dbg !86
  br label %87, !dbg !86

; <label>:14:                                     ; preds = %2
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !88
  %16 = icmp ne %struct._GSList* %15, null, !dbg !91
  %17 = xor i1 %16, true, !dbg !92
  %18 = zext i1 %17 to i32, !dbg !92
  %19 = sext i32 %18 to i64, !dbg !93
  %20 = icmp ne i64 %19, 0, !dbg !94
  br i1 %20, label %21, label %22, !dbg !95

; <label>:21:                                     ; preds = %14
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 121) #5, !dbg !96
  unreachable, !dbg !96

; <label>:22:                                     ; preds = %14
  br label %23, !dbg !99

; <label>:23:                                     ; preds = %41, %22
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !100
  %25 = icmp ne %struct._GSList* %24, null, !dbg !102
  br i1 %25, label %26, label %43, !dbg !103

; <label>:26:                                     ; preds = %23
  %27 = load i8, i8* %7, align 1, !dbg !104
  %28 = icmp ne i8 %27, 0, !dbg !104
  br i1 %28, label %30, label %29, !dbg !107

; <label>:29:                                     ; preds = %26
  call void @StrUtil_SafeStrcat(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !108
  br label %30, !dbg !110

; <label>:30:                                     ; preds = %29, %26
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !111
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !112
  %33 = load i8*, i8** %32, align 8, !dbg !112
  call void @StrUtil_SafeStrcat(i8** %8, i8* %33), !dbg !113
  store i8 0, i8* %7, align 1, !dbg !114
  %34 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !115
  %35 = icmp ne %struct._GSList* %34, null, !dbg !116
  br i1 %35, label %36, label %40, !dbg !116

; <label>:36:                                     ; preds = %30
  %37 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !117
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 1, !dbg !119
  %39 = load %struct._GSList*, %struct._GSList** %38, align 8, !dbg !119
  br label %41, !dbg !120

; <label>:40:                                     ; preds = %30
  br label %41, !dbg !121

; <label>:41:                                     ; preds = %40, %36
  %42 = phi %struct._GSList* [ %39, %36 ], [ null, %40 ], !dbg !123
  store %struct._GSList* %42, %struct._GSList** %4, align 8, !dbg !125
  br label %23, !dbg !126, !llvm.loop !128

; <label>:43:                                     ; preds = %23
  %44 = call noalias i8* @calloc(i64 1, i64 32) #6, !dbg !129
  %45 = bitcast i8* %44 to %struct.VmSyncDriver*, !dbg !129
  store %struct.VmSyncDriver* %45, %struct.VmSyncDriver** %9, align 8, !dbg !130
  %46 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !131
  %47 = icmp eq %struct.VmSyncDriver* %46, null, !dbg !133
  br i1 %47, label %48, label %49, !dbg !134

; <label>:48:                                     ; preds = %43
  br label %68, !dbg !135

; <label>:49:                                     ; preds = %43
  %50 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !137
  %51 = getelementptr inbounds %struct.VmSyncDriver, %struct.VmSyncDriver* %50, i32 0, i32 0, !dbg !138
  %52 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %51, i32 0, i32 0, !dbg !139
  store i32 (%struct.SyncHandle*)* @VmSyncThaw, i32 (%struct.SyncHandle*)** %52, align 8, !dbg !140
  %53 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !141
  %54 = getelementptr inbounds %struct.VmSyncDriver, %struct.VmSyncDriver* %53, i32 0, i32 0, !dbg !142
  %55 = getelementptr inbounds %struct.SyncHandle, %struct.SyncHandle* %54, i32 0, i32 1, !dbg !143
  store void (%struct.SyncHandle*)* @VmSyncClose, void (%struct.SyncHandle*)** %55, align 8, !dbg !144
  %56 = load i32, i32* %6, align 4, !dbg !145
  %57 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !146
  %58 = getelementptr inbounds %struct.VmSyncDriver, %struct.VmSyncDriver* %57, i32 0, i32 1, !dbg !147
  store i32 %56, i32* %58, align 8, !dbg !148
  %59 = load i8*, i8** %8, align 8, !dbg !149
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %59), !dbg !150
  %60 = load i32, i32* %6, align 4, !dbg !151
  %61 = load i8*, i8** %8, align 8, !dbg !153
  %62 = call i32 (i32, i64, ...) @ioctl(i32 %60, i64 1074328833, i8* %61) #6, !dbg !154
  %63 = icmp eq i32 %62, -1, !dbg !155
  br i1 %63, label %64, label %67, !dbg !156

; <label>:64:                                     ; preds = %49
  %65 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !157
  %66 = bitcast %struct.VmSyncDriver* %65 to i8*, !dbg !157
  call void @free(i8* %66) #6, !dbg !159
  store %struct.VmSyncDriver* null, %struct.VmSyncDriver** %9, align 8, !dbg !160
  br label %67, !dbg !161

; <label>:67:                                     ; preds = %64, %49
  br label %68, !dbg !162

; <label>:68:                                     ; preds = %67, %48
  %69 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !164
  %70 = icmp eq %struct.VmSyncDriver* %69, null, !dbg !166
  br i1 %70, label %71, label %78, !dbg !167

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %6, align 4, !dbg !168
  %73 = icmp ne i32 %72, -1, !dbg !171
  br i1 %73, label %74, label %77, !dbg !172

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %6, align 4, !dbg !173
  %76 = call i32 @close(i32 %75), !dbg !175
  br label %77, !dbg !176

; <label>:77:                                     ; preds = %74, %71
  br label %82, !dbg !177

; <label>:78:                                     ; preds = %68
  %79 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !178
  %80 = getelementptr inbounds %struct.VmSyncDriver, %struct.VmSyncDriver* %79, i32 0, i32 0, !dbg !180
  %81 = load %struct.SyncHandle**, %struct.SyncHandle*** %5, align 8, !dbg !181
  store %struct.SyncHandle* %80, %struct.SyncHandle** %81, align 8, !dbg !182
  br label %82

; <label>:82:                                     ; preds = %78, %77
  %83 = load i8*, i8** %8, align 8, !dbg !183
  call void @free(i8* %83) #6, !dbg !184
  %84 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %9, align 8, !dbg !185
  %85 = icmp ne %struct.VmSyncDriver* %84, null, !dbg !186
  %86 = select i1 %85, i32 0, i32 1, !dbg !185
  store i32 %86, i32* %3, align 4, !dbg !187
  br label %87, !dbg !187

; <label>:87:                                     ; preds = %82, %13
  %88 = load i32, i32* %3, align 4, !dbg !188
  ret i32 %88, !dbg !188
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @Debug(i8*, ...) #2

declare i32 @open64(i8*, i32, ...) #2

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #3

declare void @StrUtil_SafeStrcat(i8**, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @VmSyncThaw(%struct.SyncHandle*) #0 !dbg !189 {
  %2 = alloca %struct.SyncHandle*, align 8
  %3 = alloca %struct.VmSyncDriver*, align 8
  store %struct.SyncHandle* %0, %struct.SyncHandle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %2, metadata !190, metadata !66), !dbg !191
  call void @llvm.dbg.declare(metadata %struct.VmSyncDriver** %3, metadata !192, metadata !66), !dbg !195
  %4 = load %struct.SyncHandle*, %struct.SyncHandle** %2, align 8, !dbg !196
  %5 = bitcast %struct.SyncHandle* %4 to %struct.VmSyncDriver*, !dbg !197
  store %struct.VmSyncDriver* %5, %struct.VmSyncDriver** %3, align 8, !dbg !195
  %6 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %3, align 8, !dbg !198
  %7 = getelementptr inbounds %struct.VmSyncDriver, %struct.VmSyncDriver* %6, i32 0, i32 1, !dbg !199
  %8 = load i32, i32* %7, align 8, !dbg !199
  %9 = call i32 (i32, i64, ...) @ioctl(i32 %8, i64 62722) #6, !dbg !200
  %10 = icmp ne i32 %9, -1, !dbg !201
  %11 = select i1 %10, i32 0, i32 1, !dbg !200
  ret i32 %11, !dbg !202
}

; Function Attrs: nounwind uwtable
define internal void @VmSyncClose(%struct.SyncHandle*) #0 !dbg !203 {
  %2 = alloca %struct.SyncHandle*, align 8
  %3 = alloca %struct.VmSyncDriver*, align 8
  store %struct.SyncHandle* %0, %struct.SyncHandle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SyncHandle** %2, metadata !204, metadata !66), !dbg !205
  call void @llvm.dbg.declare(metadata %struct.VmSyncDriver** %3, metadata !206, metadata !66), !dbg !207
  %4 = load %struct.SyncHandle*, %struct.SyncHandle** %2, align 8, !dbg !208
  %5 = bitcast %struct.SyncHandle* %4 to %struct.VmSyncDriver*, !dbg !209
  store %struct.VmSyncDriver* %5, %struct.VmSyncDriver** %3, align 8, !dbg !207
  %6 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %3, align 8, !dbg !210
  %7 = getelementptr inbounds %struct.VmSyncDriver, %struct.VmSyncDriver* %6, i32 0, i32 1, !dbg !211
  %8 = load i32, i32* %7, align 8, !dbg !211
  %9 = call i32 @close(i32 %8), !dbg !212
  %10 = load %struct.VmSyncDriver*, %struct.VmSyncDriver** %3, align 8, !dbg !213
  %11 = bitcast %struct.VmSyncDriver* %10 to i8*, !dbg !213
  call void @free(i8* %11) #6, !dbg !214
  ret void, !dbg !215
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @close(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9)
!1 = !DIFile(filename: "libSyncDriver_la-vmSyncDriver.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line980")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "syncDriverInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line980")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "SD_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "SD_ERROR", value: 1)
!8 = !DIEnumerator(name: "SD_UNAVAILABLE", value: 2)
!9 = !{!10, !11, !20}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !13, line: 37, baseType: !14)
!13 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line980")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !13, line: 39, size: 128, align: 64, elements: !15)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 41, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !18, line: 77, baseType: !10)
!18 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line980")
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !14, file: !13, line: 42, baseType: !11, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "VmSyncDriver", file: !22, line: 39, baseType: !23)
!22 = !DIFile(filename: "vmSyncDriver.c", directory: "/home/lichi/Desktop/open-vm-tools/line980")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VmSyncDriver", file: !22, line: 36, size: 256, align: 64, elements: !24)
!24 = !{!25, !53}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !23, file: !22, line: 37, baseType: !26, size: 192, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncHandle", file: !4, line: 53, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SyncHandle", file: !4, line: 46, size: 192, align: 64, elements: !28)
!28 = !{!29, !38, !42}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !27, file: !4, line: 47, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverErr", file: !4, line: 41, baseType: !3)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyncDriverHandle", file: !36, line: 41, baseType: !37)
!36 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/syncDriver.h", directory: "/home/lichi/Desktop/open-vm-tools/line980")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !27, file: !4, line: 48, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !35}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !27, file: !4, line: 50, baseType: !43, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !34, !46, !50}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !52, line: 230, baseType: !49)
!52 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line980")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !23, file: !22, line: 38, baseType: !54, size: 32, align: 32, offset: 192)
!54 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!55 = !{i32 2, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!58 = distinct !DISubprogram(name: "VmSync_Freeze", scope: !22, file: !22, line: 103, type: !59, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!59 = !DISubroutineType(types: !60)
!60 = !{!33, !61, !63}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!64 = !{}
!65 = !DILocalVariable(name: "paths", arg: 1, scope: !58, file: !22, line: 103, type: !61)
!66 = !DIExpression()
!67 = !DILocation(line: 103, column: 29, scope: !58)
!68 = !DILocalVariable(name: "handle", arg: 2, scope: !58, file: !22, line: 104, type: !63)
!69 = !DILocation(line: 104, column: 33, scope: !58)
!70 = !DILocalVariable(name: "file", scope: !58, file: !22, line: 106, type: !54)
!71 = !DILocation(line: 106, column: 8, scope: !58)
!72 = !DILocalVariable(name: "first", scope: !58, file: !22, line: 107, type: !51)
!73 = !DILocation(line: 107, column: 9, scope: !58)
!74 = !DILocalVariable(name: "allPaths", scope: !58, file: !22, line: 108, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!76 = !DILocation(line: 108, column: 10, scope: !58)
!77 = !DILocalVariable(name: "sync", scope: !58, file: !22, line: 109, type: !20)
!78 = !DILocation(line: 109, column: 18, scope: !58)
!79 = !DILocation(line: 111, column: 4, scope: !58)
!80 = !DILocation(line: 113, column: 11, scope: !58)
!81 = !DILocation(line: 113, column: 9, scope: !58)
!82 = !DILocation(line: 114, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !58, file: !22, line: 114, column: 8)
!84 = !DILocation(line: 114, column: 13, scope: !83)
!85 = !DILocation(line: 114, column: 8, scope: !58)
!86 = !DILocation(line: 115, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !22, line: 114, column: 20)
!88 = !DILocation(line: 121, column: 30, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !22, line: 121, column: 10)
!90 = distinct !DILexicalBlock(scope: !58, file: !22, line: 121, column: 5)
!91 = !DILocation(line: 121, column: 36, scope: !89)
!92 = !DILocation(line: 121, column: 28, scope: !89)
!93 = !DILocation(line: 121, column: 27, scope: !89)
!94 = !DILocation(line: 121, column: 10, scope: !89)
!95 = !DILocation(line: 121, column: 10, scope: !90)
!96 = !DILocation(line: 121, column: 13, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !22, discriminator: 1)
!98 = distinct !DILexicalBlock(scope: !89, file: !22, line: 121, column: 11)
!99 = !DILocation(line: 126, column: 4, scope: !58)
!100 = !DILocation(line: 126, column: 11, scope: !101)
!101 = !DILexicalBlockFile(scope: !58, file: !22, discriminator: 1)
!102 = !DILocation(line: 126, column: 17, scope: !101)
!103 = !DILocation(line: 126, column: 4, scope: !101)
!104 = !DILocation(line: 127, column: 12, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !22, line: 127, column: 11)
!106 = distinct !DILexicalBlock(scope: !58, file: !22, line: 126, column: 25)
!107 = !DILocation(line: 127, column: 11, scope: !106)
!108 = !DILocation(line: 131, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !22, line: 127, column: 19)
!110 = !DILocation(line: 132, column: 7, scope: !109)
!111 = !DILocation(line: 133, column: 37, scope: !106)
!112 = !DILocation(line: 133, column: 44, scope: !106)
!113 = !DILocation(line: 133, column: 7, scope: !106)
!114 = !DILocation(line: 134, column: 13, scope: !106)
!115 = !DILocation(line: 135, column: 17, scope: !106)
!116 = !DILocation(line: 135, column: 16, scope: !106)
!117 = !DILocation(line: 135, column: 39, scope: !118)
!118 = !DILexicalBlockFile(scope: !106, file: !22, discriminator: 1)
!119 = !DILocation(line: 135, column: 48, scope: !118)
!120 = !DILocation(line: 135, column: 16, scope: !118)
!121 = !DILocation(line: 135, column: 16, scope: !122)
!122 = !DILexicalBlockFile(scope: !106, file: !22, discriminator: 2)
!123 = !DILocation(line: 135, column: 16, scope: !124)
!124 = !DILexicalBlockFile(scope: !106, file: !22, discriminator: 3)
!125 = !DILocation(line: 135, column: 13, scope: !124)
!126 = !DILocation(line: 126, column: 4, scope: !127)
!127 = !DILexicalBlockFile(scope: !58, file: !22, discriminator: 2)
!128 = distinct !{!128, !99}
!129 = !DILocation(line: 138, column: 11, scope: !58)
!130 = !DILocation(line: 138, column: 9, scope: !58)
!131 = !DILocation(line: 139, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !58, file: !22, line: 139, column: 8)
!133 = !DILocation(line: 139, column: 13, scope: !132)
!134 = !DILocation(line: 139, column: 8, scope: !58)
!135 = !DILocation(line: 140, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !22, line: 139, column: 21)
!137 = !DILocation(line: 143, column: 4, scope: !58)
!138 = !DILocation(line: 143, column: 10, scope: !58)
!139 = !DILocation(line: 143, column: 17, scope: !58)
!140 = !DILocation(line: 143, column: 22, scope: !58)
!141 = !DILocation(line: 144, column: 4, scope: !58)
!142 = !DILocation(line: 144, column: 10, scope: !58)
!143 = !DILocation(line: 144, column: 17, scope: !58)
!144 = !DILocation(line: 144, column: 23, scope: !58)
!145 = !DILocation(line: 145, column: 15, scope: !58)
!146 = !DILocation(line: 145, column: 4, scope: !58)
!147 = !DILocation(line: 145, column: 10, scope: !58)
!148 = !DILocation(line: 145, column: 13, scope: !58)
!149 = !DILocation(line: 147, column: 65, scope: !58)
!150 = !DILocation(line: 147, column: 4, scope: !58)
!151 = !DILocation(line: 149, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !58, file: !22, line: 149, column: 8)
!153 = !DILocation(line: 149, column: 36, scope: !152)
!154 = !DILocation(line: 149, column: 8, scope: !152)
!155 = !DILocation(line: 149, column: 46, scope: !152)
!156 = !DILocation(line: 149, column: 8, scope: !58)
!157 = !DILocation(line: 150, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !152, file: !22, line: 149, column: 53)
!159 = !DILocation(line: 150, column: 7, scope: !158)
!160 = !DILocation(line: 151, column: 12, scope: !158)
!161 = !DILocation(line: 152, column: 4, scope: !158)
!162 = !DILocation(line: 149, column: 50, scope: !163)
!163 = !DILexicalBlockFile(scope: !152, file: !22, discriminator: 1)
!164 = !DILocation(line: 155, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !58, file: !22, line: 155, column: 8)
!166 = !DILocation(line: 155, column: 13, scope: !165)
!167 = !DILocation(line: 155, column: 8, scope: !58)
!168 = !DILocation(line: 156, column: 11, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !22, line: 156, column: 11)
!170 = distinct !DILexicalBlock(scope: !165, file: !22, line: 155, column: 21)
!171 = !DILocation(line: 156, column: 16, scope: !169)
!172 = !DILocation(line: 156, column: 11, scope: !170)
!173 = !DILocation(line: 157, column: 16, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !22, line: 156, column: 23)
!175 = !DILocation(line: 157, column: 10, scope: !174)
!176 = !DILocation(line: 158, column: 7, scope: !174)
!177 = !DILocation(line: 159, column: 4, scope: !170)
!178 = !DILocation(line: 160, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !165, file: !22, line: 159, column: 11)
!180 = !DILocation(line: 160, column: 24, scope: !179)
!181 = !DILocation(line: 160, column: 8, scope: !179)
!182 = !DILocation(line: 160, column: 15, scope: !179)
!183 = !DILocation(line: 162, column: 9, scope: !58)
!184 = !DILocation(line: 162, column: 4, scope: !58)
!185 = !DILocation(line: 163, column: 11, scope: !58)
!186 = !DILocation(line: 163, column: 16, scope: !58)
!187 = !DILocation(line: 163, column: 4, scope: !58)
!188 = !DILocation(line: 164, column: 1, scope: !58)
!189 = distinct !DISubprogram(name: "VmSyncThaw", scope: !22, file: !22, line: 56, type: !31, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!190 = !DILocalVariable(name: "handle", arg: 1, scope: !189, file: !22, line: 56, type: !34)
!191 = !DILocation(line: 56, column: 35, scope: !189)
!192 = !DILocalVariable(name: "sync", scope: !189, file: !22, line: 58, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!195 = !DILocation(line: 58, column: 24, scope: !189)
!196 = !DILocation(line: 58, column: 48, scope: !189)
!197 = !DILocation(line: 58, column: 31, scope: !189)
!198 = !DILocation(line: 60, column: 17, scope: !189)
!199 = !DILocation(line: 60, column: 23, scope: !189)
!200 = !DILocation(line: 60, column: 11, scope: !189)
!201 = !DILocation(line: 60, column: 41, scope: !189)
!202 = !DILocation(line: 60, column: 4, scope: !189)
!203 = distinct !DISubprogram(name: "VmSyncClose", scope: !22, file: !22, line: 77, type: !40, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !64)
!204 = !DILocalVariable(name: "handle", arg: 1, scope: !203, file: !22, line: 77, type: !35)
!205 = !DILocation(line: 77, column: 30, scope: !203)
!206 = !DILocalVariable(name: "sync", scope: !203, file: !22, line: 79, type: !20)
!207 = !DILocation(line: 79, column: 18, scope: !203)
!208 = !DILocation(line: 79, column: 42, scope: !203)
!209 = !DILocation(line: 79, column: 25, scope: !203)
!210 = !DILocation(line: 80, column: 10, scope: !203)
!211 = !DILocation(line: 80, column: 16, scope: !203)
!212 = !DILocation(line: 80, column: 4, scope: !203)
!213 = !DILocation(line: 81, column: 9, scope: !203)
!214 = !DILocation(line: 81, column: 4, scope: !203)
!215 = !DILocation(line: 82, column: 1, scope: !203)
