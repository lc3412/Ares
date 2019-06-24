; ModuleID = './libvix_la-vixToolsEnvVars.o.i'
source_filename = "./libvix_la-vixToolsEnvVars.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VixToolsEnvIterator = type { i8** }
%struct.VixToolsUserEnvironment = type {}

@environ = external global i8**, align 8

; Function Attrs: nounwind uwtable
define i64 @VixToolsNewEnvIterator(i8*, %struct.VixToolsEnvIterator**) #0 !dbg !610 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.VixToolsEnvIterator**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.VixToolsEnvIterator*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !631, metadata !632), !dbg !633
  store %struct.VixToolsEnvIterator** %1, %struct.VixToolsEnvIterator*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixToolsEnvIterator*** %4, metadata !634, metadata !632), !dbg !635
  call void @llvm.dbg.declare(metadata i64* %5, metadata !636, metadata !632), !dbg !637
  store i64 0, i64* %5, align 8, !dbg !637
  call void @llvm.dbg.declare(metadata %struct.VixToolsEnvIterator** %6, metadata !638, metadata !632), !dbg !639
  %7 = call i8* @UtilSafeMalloc0(i64 8), !dbg !640
  %8 = bitcast i8* %7 to %struct.VixToolsEnvIterator*, !dbg !640
  store %struct.VixToolsEnvIterator* %8, %struct.VixToolsEnvIterator** %6, align 8, !dbg !639
  %9 = load %struct.VixToolsEnvIterator**, %struct.VixToolsEnvIterator*** %4, align 8, !dbg !641
  %10 = icmp eq %struct.VixToolsEnvIterator** null, %9, !dbg !643
  br i1 %10, label %11, label %12, !dbg !644

; <label>:11:                                     ; preds = %2
  store i64 1, i64* %5, align 8, !dbg !645
  br label %19, !dbg !647

; <label>:12:                                     ; preds = %2
  %13 = load %struct.VixToolsEnvIterator**, %struct.VixToolsEnvIterator*** %4, align 8, !dbg !648
  store %struct.VixToolsEnvIterator* null, %struct.VixToolsEnvIterator** %13, align 8, !dbg !649
  %14 = load i8**, i8*** @environ, align 8, !dbg !650
  %15 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %6, align 8, !dbg !651
  %16 = getelementptr inbounds %struct.VixToolsEnvIterator, %struct.VixToolsEnvIterator* %15, i32 0, i32 0, !dbg !652
  store i8** %14, i8*** %16, align 8, !dbg !653
  %17 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %6, align 8, !dbg !654
  %18 = load %struct.VixToolsEnvIterator**, %struct.VixToolsEnvIterator*** %4, align 8, !dbg !655
  store %struct.VixToolsEnvIterator* %17, %struct.VixToolsEnvIterator** %18, align 8, !dbg !656
  br label %19, !dbg !657

; <label>:19:                                     ; preds = %12, %11
  %20 = load i64, i64* %5, align 8, !dbg !658
  %21 = icmp ne i64 0, %20, !dbg !660
  br i1 %21, label %22, label %25, !dbg !661

; <label>:22:                                     ; preds = %19
  %23 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %6, align 8, !dbg !662
  %24 = bitcast %struct.VixToolsEnvIterator* %23 to i8*, !dbg !662
  call void @free(i8* %24) #6, !dbg !664
  br label %25, !dbg !665

; <label>:25:                                     ; preds = %22, %19
  %26 = load i64, i64* %5, align 8, !dbg !666
  ret i64 %26, !dbg !667
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @UtilSafeMalloc0(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @VixToolsGetNextEnvVar(%struct.VixToolsEnvIterator*) #0 !dbg !668 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.VixToolsEnvIterator*, align 8
  %4 = alloca i8*, align 8
  store %struct.VixToolsEnvIterator* %0, %struct.VixToolsEnvIterator** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VixToolsEnvIterator** %3, metadata !671, metadata !632), !dbg !672
  call void @llvm.dbg.declare(metadata i8** %4, metadata !673, metadata !632), !dbg !674
  %5 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %3, align 8, !dbg !675
  %6 = icmp eq %struct.VixToolsEnvIterator* null, %5, !dbg !677
  br i1 %6, label %7, label %8, !dbg !678

; <label>:7:                                      ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !679
  br label %27, !dbg !679

; <label>:8:                                      ; preds = %1
  %9 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %3, align 8, !dbg !681
  %10 = getelementptr inbounds %struct.VixToolsEnvIterator, %struct.VixToolsEnvIterator* %9, i32 0, i32 0, !dbg !683
  %11 = load i8**, i8*** %10, align 8, !dbg !683
  %12 = load i8*, i8** %11, align 8, !dbg !684
  %13 = icmp eq i8* null, %12, !dbg !685
  br i1 %13, label %14, label %15, !dbg !686

; <label>:14:                                     ; preds = %8
  store i8* null, i8** %4, align 8, !dbg !687
  br label %25, !dbg !689

; <label>:15:                                     ; preds = %8
  %16 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %3, align 8, !dbg !690
  %17 = getelementptr inbounds %struct.VixToolsEnvIterator, %struct.VixToolsEnvIterator* %16, i32 0, i32 0, !dbg !692
  %18 = load i8**, i8*** %17, align 8, !dbg !692
  %19 = load i8*, i8** %18, align 8, !dbg !693
  %20 = call i8* @Unicode_Alloc(i8* %19, i32 -1), !dbg !694
  store i8* %20, i8** %4, align 8, !dbg !695
  %21 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %3, align 8, !dbg !696
  %22 = getelementptr inbounds %struct.VixToolsEnvIterator, %struct.VixToolsEnvIterator* %21, i32 0, i32 0, !dbg !697
  %23 = load i8**, i8*** %22, align 8, !dbg !698
  %24 = getelementptr inbounds i8*, i8** %23, i32 1, !dbg !698
  store i8** %24, i8*** %22, align 8, !dbg !698
  br label %25

; <label>:25:                                     ; preds = %15, %14
  %26 = load i8*, i8** %4, align 8, !dbg !699
  store i8* %26, i8** %2, align 8, !dbg !700
  br label %27, !dbg !700

; <label>:27:                                     ; preds = %25, %7
  %28 = load i8*, i8** %2, align 8, !dbg !701
  ret i8* %28, !dbg !701
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @Unicode_Alloc(i8*, i32) #4 !dbg !702 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !709, metadata !632), !dbg !710
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !711, metadata !632), !dbg !712
  %5 = load i8*, i8** %3, align 8, !dbg !713
  %6 = load i32, i32* %4, align 4, !dbg !714
  %7 = call i8* @Unicode_AllocWithLength(i8* %5, i64 -1, i32 %6), !dbg !715
  ret i8* %7, !dbg !716
}

; Function Attrs: nounwind uwtable
define void @VixToolsDestroyEnvIterator(%struct.VixToolsEnvIterator*) #0 !dbg !717 {
  %2 = alloca %struct.VixToolsEnvIterator*, align 8
  store %struct.VixToolsEnvIterator* %0, %struct.VixToolsEnvIterator** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VixToolsEnvIterator** %2, metadata !720, metadata !632), !dbg !721
  %3 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %2, align 8, !dbg !722
  %4 = icmp ne %struct.VixToolsEnvIterator* null, %3, !dbg !724
  br i1 %4, label %5, label %8, !dbg !725

; <label>:5:                                      ; preds = %1
  %6 = load %struct.VixToolsEnvIterator*, %struct.VixToolsEnvIterator** %2, align 8, !dbg !726
  %7 = bitcast %struct.VixToolsEnvIterator* %6 to i8*, !dbg !726
  call void @free(i8* %7) #6, !dbg !728
  br label %8, !dbg !729

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !730
}

; Function Attrs: nounwind uwtable
define i64 @VixToolsNewUserEnvironment(i8*, %struct.VixToolsUserEnvironment**) #0 !dbg !731 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.VixToolsUserEnvironment**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.VixToolsUserEnvironment*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !738, metadata !632), !dbg !739
  store %struct.VixToolsUserEnvironment** %1, %struct.VixToolsUserEnvironment*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixToolsUserEnvironment*** %4, metadata !740, metadata !632), !dbg !741
  call void @llvm.dbg.declare(metadata i64* %5, metadata !742, metadata !632), !dbg !743
  store i64 0, i64* %5, align 8, !dbg !743
  call void @llvm.dbg.declare(metadata %struct.VixToolsUserEnvironment** %6, metadata !744, metadata !632), !dbg !745
  %7 = call i8* @UtilSafeMalloc0(i64 0), !dbg !746
  %8 = bitcast i8* %7 to %struct.VixToolsUserEnvironment*, !dbg !746
  store %struct.VixToolsUserEnvironment* %8, %struct.VixToolsUserEnvironment** %6, align 8, !dbg !745
  %9 = load %struct.VixToolsUserEnvironment**, %struct.VixToolsUserEnvironment*** %4, align 8, !dbg !747
  %10 = icmp eq %struct.VixToolsUserEnvironment** null, %9, !dbg !749
  br i1 %10, label %11, label %12, !dbg !750

; <label>:11:                                     ; preds = %2
  store i64 1, i64* %5, align 8, !dbg !751
  br label %16, !dbg !753

; <label>:12:                                     ; preds = %2
  %13 = load %struct.VixToolsUserEnvironment**, %struct.VixToolsUserEnvironment*** %4, align 8, !dbg !754
  store %struct.VixToolsUserEnvironment* null, %struct.VixToolsUserEnvironment** %13, align 8, !dbg !755
  %14 = load %struct.VixToolsUserEnvironment*, %struct.VixToolsUserEnvironment** %6, align 8, !dbg !756
  %15 = load %struct.VixToolsUserEnvironment**, %struct.VixToolsUserEnvironment*** %4, align 8, !dbg !757
  store %struct.VixToolsUserEnvironment* %14, %struct.VixToolsUserEnvironment** %15, align 8, !dbg !758
  br label %16, !dbg !759

; <label>:16:                                     ; preds = %12, %11
  %17 = load i64, i64* %5, align 8, !dbg !760
  %18 = icmp ne i64 0, %17, !dbg !762
  br i1 %18, label %19, label %22, !dbg !763

; <label>:19:                                     ; preds = %16
  %20 = load %struct.VixToolsUserEnvironment*, %struct.VixToolsUserEnvironment** %6, align 8, !dbg !764
  %21 = bitcast %struct.VixToolsUserEnvironment* %20 to i8*, !dbg !764
  call void @free(i8* %21) #6, !dbg !766
  br label %22, !dbg !767

; <label>:22:                                     ; preds = %19, %16
  %23 = load i64, i64* %5, align 8, !dbg !768
  ret i64 %23, !dbg !769
}

; Function Attrs: nounwind uwtable
define i8* @VixToolsGetEnvFromUserEnvironment(%struct.VixToolsUserEnvironment*, i8*) #0 !dbg !770 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.VixToolsUserEnvironment*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.VixToolsUserEnvironment* %0, %struct.VixToolsUserEnvironment** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixToolsUserEnvironment** %4, metadata !777, metadata !632), !dbg !778
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !779, metadata !632), !dbg !780
  call void @llvm.dbg.declare(metadata i8** %6, metadata !781, metadata !632), !dbg !782
  %7 = load %struct.VixToolsUserEnvironment*, %struct.VixToolsUserEnvironment** %4, align 8, !dbg !783
  %8 = icmp eq %struct.VixToolsUserEnvironment* null, %7, !dbg !785
  br i1 %8, label %9, label %10, !dbg !786

; <label>:9:                                      ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !787
  br label %15, !dbg !787

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !789
  %12 = call i8* @Posix_Getenv(i8* %11), !dbg !790
  %13 = call i8* @UtilSafeStrdup0(i8* %12), !dbg !791
  store i8* %13, i8** %6, align 8, !dbg !793
  %14 = load i8*, i8** %6, align 8, !dbg !794
  store i8* %14, i8** %3, align 8, !dbg !795
  br label %15, !dbg !795

; <label>:15:                                     ; preds = %10, %9
  %16 = load i8*, i8** %3, align 8, !dbg !796
  ret i8* %16, !dbg !796
}

declare i8* @UtilSafeStrdup0(i8*) #2

declare i8* @Posix_Getenv(i8*) #2

; Function Attrs: nounwind uwtable
define void @VixToolsDestroyUserEnvironment(%struct.VixToolsUserEnvironment*) #0 !dbg !797 {
  %2 = alloca %struct.VixToolsUserEnvironment*, align 8
  store %struct.VixToolsUserEnvironment* %0, %struct.VixToolsUserEnvironment** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VixToolsUserEnvironment** %2, metadata !800, metadata !632), !dbg !801
  %3 = load %struct.VixToolsUserEnvironment*, %struct.VixToolsUserEnvironment** %2, align 8, !dbg !802
  %4 = icmp ne %struct.VixToolsUserEnvironment* null, %3, !dbg !804
  br i1 %4, label %5, label %8, !dbg !805

; <label>:5:                                      ; preds = %1
  %6 = load %struct.VixToolsUserEnvironment*, %struct.VixToolsUserEnvironment** %2, align 8, !dbg !806
  %7 = bitcast %struct.VixToolsUserEnvironment* %6 to i8*, !dbg !806
  call void @free(i8* %7) #6, !dbg !808
  br label %8, !dbg !809

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !810
}

; Function Attrs: nounwind uwtable
define i64 @VixToolsValidateEnviron(i8**) #0 !dbg !811 {
  %2 = alloca i64, align 8
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !816, metadata !632), !dbg !817
  %4 = load i8**, i8*** %3, align 8, !dbg !818
  %5 = icmp eq i8** null, %4, !dbg !820
  br i1 %5, label %6, label %7, !dbg !821

; <label>:6:                                      ; preds = %1
  store i64 1, i64* %2, align 8, !dbg !822
  br label %22, !dbg !822

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !824

; <label>:8:                                      ; preds = %18, %7
  %9 = load i8**, i8*** %3, align 8, !dbg !825
  %10 = load i8*, i8** %9, align 8, !dbg !827
  %11 = icmp ne i8* null, %10, !dbg !828
  br i1 %11, label %12, label %21, !dbg !829

; <label>:12:                                     ; preds = %8
  %13 = load i8**, i8*** %3, align 8, !dbg !830
  %14 = load i8*, i8** %13, align 8, !dbg !833
  %15 = call i8* @strchr(i8* %14, i32 61) #7, !dbg !834
  %16 = icmp eq i8* null, %15, !dbg !835
  br i1 %16, label %17, label %18, !dbg !836

; <label>:17:                                     ; preds = %12
  store i64 3, i64* %2, align 8, !dbg !837
  br label %22, !dbg !837

; <label>:18:                                     ; preds = %12
  %19 = load i8**, i8*** %3, align 8, !dbg !839
  %20 = getelementptr inbounds i8*, i8** %19, i32 1, !dbg !839
  store i8** %20, i8*** %3, align 8, !dbg !839
  br label %8, !dbg !840, !llvm.loop !842

; <label>:21:                                     ; preds = %8
  store i64 0, i64* %2, align 8, !dbg !843
  br label %22, !dbg !843

; <label>:22:                                     ; preds = %21, %17, %6
  %23 = load i64, i64* %2, align 8, !dbg !844
  ret i64 %23, !dbg !844
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i8* @Unicode_AllocWithLength(i8*, i64, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!607, !608}
!llvm.ident = !{!609}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !605)
!1 = !DIFile(filename: "libvix_la-vixToolsEnvVars.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!2 = !{!3, !272}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 87, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vix.h", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!6 = !DIEnumerator(name: "VIX_OK", value: 0)
!7 = !DIEnumerator(name: "VIX_E_FAIL", value: 1)
!8 = !DIEnumerator(name: "VIX_E_OUT_OF_MEMORY", value: 2)
!9 = !DIEnumerator(name: "VIX_E_INVALID_ARG", value: 3)
!10 = !DIEnumerator(name: "VIX_E_FILE_NOT_FOUND", value: 4)
!11 = !DIEnumerator(name: "VIX_E_OBJECT_IS_BUSY", value: 5)
!12 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED", value: 6)
!13 = !DIEnumerator(name: "VIX_E_FILE_ERROR", value: 7)
!14 = !DIEnumerator(name: "VIX_E_DISK_FULL", value: 8)
!15 = !DIEnumerator(name: "VIX_E_INCORRECT_FILE_TYPE", value: 9)
!16 = !DIEnumerator(name: "VIX_E_CANCELLED", value: 10)
!17 = !DIEnumerator(name: "VIX_E_FILE_READ_ONLY", value: 11)
!18 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_EXISTS", value: 12)
!19 = !DIEnumerator(name: "VIX_E_FILE_ACCESS_ERROR", value: 13)
!20 = !DIEnumerator(name: "VIX_E_REQUIRES_LARGE_FILES", value: 14)
!21 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_LOCKED", value: 15)
!22 = !DIEnumerator(name: "VIX_E_VMDB", value: 16)
!23 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_REMOTE_OBJECT", value: 20)
!24 = !DIEnumerator(name: "VIX_E_FILE_TOO_BIG", value: 21)
!25 = !DIEnumerator(name: "VIX_E_FILE_NAME_INVALID", value: 22)
!26 = !DIEnumerator(name: "VIX_E_ALREADY_EXISTS", value: 23)
!27 = !DIEnumerator(name: "VIX_E_BUFFER_TOOSMALL", value: 24)
!28 = !DIEnumerator(name: "VIX_E_OBJECT_NOT_FOUND", value: 25)
!29 = !DIEnumerator(name: "VIX_E_HOST_NOT_CONNECTED", value: 26)
!30 = !DIEnumerator(name: "VIX_E_INVALID_UTF8_STRING", value: 27)
!31 = !DIEnumerator(name: "VIX_E_OPERATION_ALREADY_IN_PROGRESS", value: 31)
!32 = !DIEnumerator(name: "VIX_E_UNFINISHED_JOB", value: 29)
!33 = !DIEnumerator(name: "VIX_E_NEED_KEY", value: 30)
!34 = !DIEnumerator(name: "VIX_E_LICENSE", value: 32)
!35 = !DIEnumerator(name: "VIX_E_VM_HOST_DISCONNECTED", value: 34)
!36 = !DIEnumerator(name: "VIX_E_AUTHENTICATION_FAIL", value: 35)
!37 = !DIEnumerator(name: "VIX_E_HOST_CONNECTION_LOST", value: 36)
!38 = !DIEnumerator(name: "VIX_E_DUPLICATE_NAME", value: 41)
!39 = !DIEnumerator(name: "VIX_E_ARGUMENT_TOO_BIG", value: 44)
!40 = !DIEnumerator(name: "VIX_E_INVALID_HANDLE", value: 1000)
!41 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_HANDLE_TYPE", value: 1001)
!42 = !DIEnumerator(name: "VIX_E_TOO_MANY_HANDLES", value: 1002)
!43 = !DIEnumerator(name: "VIX_E_NOT_FOUND", value: 2000)
!44 = !DIEnumerator(name: "VIX_E_TYPE_MISMATCH", value: 2001)
!45 = !DIEnumerator(name: "VIX_E_INVALID_XML", value: 2002)
!46 = !DIEnumerator(name: "VIX_E_TIMEOUT_WAITING_FOR_TOOLS", value: 3000)
!47 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND", value: 3001)
!48 = !DIEnumerator(name: "VIX_E_OP_NOT_SUPPORTED_ON_GUEST", value: 3003)
!49 = !DIEnumerator(name: "VIX_E_PROGRAM_NOT_STARTED", value: 3004)
!50 = !DIEnumerator(name: "VIX_E_CANNOT_START_READ_ONLY_VM", value: 3005)
!51 = !DIEnumerator(name: "VIX_E_VM_NOT_RUNNING", value: 3006)
!52 = !DIEnumerator(name: "VIX_E_VM_IS_RUNNING", value: 3007)
!53 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_VM", value: 3008)
!54 = !DIEnumerator(name: "VIX_E_POWEROP_SCRIPTS_NOT_AVAILABLE", value: 3009)
!55 = !DIEnumerator(name: "VIX_E_NO_GUEST_OS_INSTALLED", value: 3010)
!56 = !DIEnumerator(name: "VIX_E_VM_INSUFFICIENT_HOST_MEMORY", value: 3011)
!57 = !DIEnumerator(name: "VIX_E_SUSPEND_ERROR", value: 3012)
!58 = !DIEnumerator(name: "VIX_E_VM_NOT_ENOUGH_CPUS", value: 3013)
!59 = !DIEnumerator(name: "VIX_E_HOST_USER_PERMISSIONS", value: 3014)
!60 = !DIEnumerator(name: "VIX_E_GUEST_USER_PERMISSIONS", value: 3015)
!61 = !DIEnumerator(name: "VIX_E_TOOLS_NOT_RUNNING", value: 3016)
!62 = !DIEnumerator(name: "VIX_E_GUEST_OPERATIONS_PROHIBITED", value: 3017)
!63 = !DIEnumerator(name: "VIX_E_ANON_GUEST_OPERATIONS_PROHIBITED", value: 3018)
!64 = !DIEnumerator(name: "VIX_E_ROOT_GUEST_OPERATIONS_PROHIBITED", value: 3019)
!65 = !DIEnumerator(name: "VIX_E_MISSING_ANON_GUEST_ACCOUNT", value: 3023)
!66 = !DIEnumerator(name: "VIX_E_CANNOT_AUTHENTICATE_WITH_GUEST", value: 3024)
!67 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND_IN_GUEST", value: 3025)
!68 = !DIEnumerator(name: "VIX_E_CONSOLE_GUEST_OPERATIONS_PROHIBITED", value: 3026)
!69 = !DIEnumerator(name: "VIX_E_MUST_BE_CONSOLE_USER", value: 3027)
!70 = !DIEnumerator(name: "VIX_E_VMX_MSG_DIALOG_AND_NO_UI", value: 3028)
!71 = !DIEnumerator(name: "VIX_E_OPERATION_NOT_ALLOWED_FOR_LOGIN_TYPE", value: 3031)
!72 = !DIEnumerator(name: "VIX_E_LOGIN_TYPE_NOT_SUPPORTED", value: 3032)
!73 = !DIEnumerator(name: "VIX_E_EMPTY_PASSWORD_NOT_ALLOWED_IN_GUEST", value: 3033)
!74 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_NOT_PRESENT", value: 3034)
!75 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_USER_MISMATCH", value: 3035)
!76 = !DIEnumerator(name: "VIX_E_CANNOT_POWER_ON_VM", value: 3041)
!77 = !DIEnumerator(name: "VIX_E_NO_DISPLAY_SERVER", value: 3043)
!78 = !DIEnumerator(name: "VIX_E_TOO_MANY_LOGONS", value: 3046)
!79 = !DIEnumerator(name: "VIX_E_INVALID_AUTHENTICATION_SESSION", value: 3047)
!80 = !DIEnumerator(name: "VIX_E_VM_NOT_FOUND", value: 4000)
!81 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_FOR_VM_VERSION", value: 4001)
!82 = !DIEnumerator(name: "VIX_E_CANNOT_READ_VM_CONFIG", value: 4002)
!83 = !DIEnumerator(name: "VIX_E_TEMPLATE_VM", value: 4003)
!84 = !DIEnumerator(name: "VIX_E_VM_ALREADY_LOADED", value: 4004)
!85 = !DIEnumerator(name: "VIX_E_VM_ALREADY_UP_TO_DATE", value: 4006)
!86 = !DIEnumerator(name: "VIX_E_VM_UNSUPPORTED_GUEST", value: 4011)
!87 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_PROPERTY", value: 6000)
!88 = !DIEnumerator(name: "VIX_E_INVALID_PROPERTY_VALUE", value: 6001)
!89 = !DIEnumerator(name: "VIX_E_READ_ONLY_PROPERTY", value: 6002)
!90 = !DIEnumerator(name: "VIX_E_MISSING_REQUIRED_PROPERTY", value: 6003)
!91 = !DIEnumerator(name: "VIX_E_INVALID_SERIALIZED_DATA", value: 6004)
!92 = !DIEnumerator(name: "VIX_E_PROPERTY_TYPE_MISMATCH", value: 6005)
!93 = !DIEnumerator(name: "VIX_E_BAD_VM_INDEX", value: 8000)
!94 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_HEADER", value: 10000)
!95 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_BODY", value: 10001)
!96 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INVAL", value: 13000)
!97 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUMPER", value: 13001)
!98 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLIB", value: 13002)
!99 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOTFOUND", value: 13003)
!100 = !DIEnumerator(name: "VIX_E_SNAPSHOT_EXISTS", value: 13004)
!101 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VERSION", value: 13005)
!102 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOPERM", value: 13006)
!103 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CONFIG", value: 13007)
!104 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOCHANGE", value: 13008)
!105 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CHECKPOINT", value: 13009)
!106 = !DIEnumerator(name: "VIX_E_SNAPSHOT_LOCKED", value: 13010)
!107 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INCONSISTENT", value: 13011)
!108 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NAMETOOLONG", value: 13012)
!109 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VIXFILE", value: 13013)
!110 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLOCKED", value: 13014)
!111 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUPLICATEDDISK", value: 13015)
!112 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INDEPENDENTDISK", value: 13016)
!113 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NONUNIQUE_NAME", value: 13017)
!114 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MEMORY_ON_INDEPENDENT_DISK", value: 13018)
!115 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MAXSNAPSHOTS", value: 13019)
!116 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MIN_FREE_SPACE", value: 13020)
!117 = !DIEnumerator(name: "VIX_E_SNAPSHOT_HIERARCHY_TOODEEP", value: 13021)
!118 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOT_REVERTABLE", value: 13024)
!119 = !DIEnumerator(name: "VIX_E_HOST_DISK_INVALID_VALUE", value: 14003)
!120 = !DIEnumerator(name: "VIX_E_HOST_DISK_SECTORSIZE", value: 14004)
!121 = !DIEnumerator(name: "VIX_E_HOST_FILE_ERROR_EOF", value: 14005)
!122 = !DIEnumerator(name: "VIX_E_HOST_NETBLKDEV_HANDSHAKE", value: 14006)
!123 = !DIEnumerator(name: "VIX_E_HOST_SOCKET_CREATION_ERROR", value: 14007)
!124 = !DIEnumerator(name: "VIX_E_HOST_SERVER_NOT_FOUND", value: 14008)
!125 = !DIEnumerator(name: "VIX_E_HOST_NETWORK_CONN_REFUSED", value: 14009)
!126 = !DIEnumerator(name: "VIX_E_HOST_TCP_SOCKET_ERROR", value: 14010)
!127 = !DIEnumerator(name: "VIX_E_HOST_TCP_CONN_LOST", value: 14011)
!128 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_VOLUME", value: 14012)
!129 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_INIT", value: 14013)
!130 = !DIEnumerator(name: "VIX_E_DISK_INVAL", value: 16000)
!131 = !DIEnumerator(name: "VIX_E_DISK_NOINIT", value: 16001)
!132 = !DIEnumerator(name: "VIX_E_DISK_NOIO", value: 16002)
!133 = !DIEnumerator(name: "VIX_E_DISK_PARTIALCHAIN", value: 16003)
!134 = !DIEnumerator(name: "VIX_E_DISK_NEEDSREPAIR", value: 16006)
!135 = !DIEnumerator(name: "VIX_E_DISK_OUTOFRANGE", value: 16007)
!136 = !DIEnumerator(name: "VIX_E_DISK_CID_MISMATCH", value: 16008)
!137 = !DIEnumerator(name: "VIX_E_DISK_CANTSHRINK", value: 16009)
!138 = !DIEnumerator(name: "VIX_E_DISK_PARTMISMATCH", value: 16010)
!139 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDISKVERSION", value: 16011)
!140 = !DIEnumerator(name: "VIX_E_DISK_OPENPARENT", value: 16012)
!141 = !DIEnumerator(name: "VIX_E_DISK_NOTSUPPORTED", value: 16013)
!142 = !DIEnumerator(name: "VIX_E_DISK_NEEDKEY", value: 16014)
!143 = !DIEnumerator(name: "VIX_E_DISK_NOKEYOVERRIDE", value: 16015)
!144 = !DIEnumerator(name: "VIX_E_DISK_NOTENCRYPTED", value: 16016)
!145 = !DIEnumerator(name: "VIX_E_DISK_NOKEY", value: 16017)
!146 = !DIEnumerator(name: "VIX_E_DISK_INVALIDPARTITIONTABLE", value: 16018)
!147 = !DIEnumerator(name: "VIX_E_DISK_NOTNORMAL", value: 16019)
!148 = !DIEnumerator(name: "VIX_E_DISK_NOTENCDESC", value: 16020)
!149 = !DIEnumerator(name: "VIX_E_DISK_NEEDVMFS", value: 16022)
!150 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOBIG", value: 16024)
!151 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYOPENFILES", value: 16027)
!152 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYREDO", value: 16028)
!153 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOSMALL", value: 16029)
!154 = !DIEnumerator(name: "VIX_E_DISK_INVALIDCHAIN", value: 16030)
!155 = !DIEnumerator(name: "VIX_E_DISK_KEY_NOTFOUND", value: 16052)
!156 = !DIEnumerator(name: "VIX_E_DISK_SUBSYSTEM_INIT_FAIL", value: 16053)
!157 = !DIEnumerator(name: "VIX_E_DISK_INVALID_CONNECTION", value: 16054)
!158 = !DIEnumerator(name: "VIX_E_DISK_ENCODING", value: 16061)
!159 = !DIEnumerator(name: "VIX_E_DISK_CANTREPAIR", value: 16062)
!160 = !DIEnumerator(name: "VIX_E_DISK_INVALIDDISK", value: 16063)
!161 = !DIEnumerator(name: "VIX_E_DISK_NOLICENSE", value: 16064)
!162 = !DIEnumerator(name: "VIX_E_DISK_NODEVICE", value: 16065)
!163 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDEVICE", value: 16066)
!164 = !DIEnumerator(name: "VIX_E_DISK_CAPACITY_MISMATCH", value: 16067)
!165 = !DIEnumerator(name: "VIX_E_DISK_PARENT_NOTALLOWED", value: 16068)
!166 = !DIEnumerator(name: "VIX_E_DISK_ATTACH_ROOTLINK", value: 16069)
!167 = !DIEnumerator(name: "VIX_E_CRYPTO_UNKNOWN_ALGORITHM", value: 17000)
!168 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_BUFFER_SIZE", value: 17001)
!169 = !DIEnumerator(name: "VIX_E_CRYPTO_INVALID_OPERATION", value: 17002)
!170 = !DIEnumerator(name: "VIX_E_CRYPTO_RANDOM_DEVICE", value: 17003)
!171 = !DIEnumerator(name: "VIX_E_CRYPTO_NEED_PASSWORD", value: 17004)
!172 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_PASSWORD", value: 17005)
!173 = !DIEnumerator(name: "VIX_E_CRYPTO_NOT_IN_DICTIONARY", value: 17006)
!174 = !DIEnumerator(name: "VIX_E_CRYPTO_NO_CRYPTO", value: 17007)
!175 = !DIEnumerator(name: "VIX_E_CRYPTO_ERROR", value: 17008)
!176 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_FORMAT", value: 17009)
!177 = !DIEnumerator(name: "VIX_E_CRYPTO_LOCKED", value: 17010)
!178 = !DIEnumerator(name: "VIX_E_CRYPTO_EMPTY", value: 17011)
!179 = !DIEnumerator(name: "VIX_E_CRYPTO_KEYSAFE_LOCATOR", value: 17012)
!180 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_HOST", value: 18000)
!181 = !DIEnumerator(name: "VIX_E_NOT_FOR_REMOTE_HOST", value: 18001)
!182 = !DIEnumerator(name: "VIX_E_INVALID_HOSTNAME_SPECIFICATION", value: 18002)
!183 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_ERROR", value: 19000)
!184 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_BAD_FORMAT", value: 19001)
!185 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_COMPRESSION_FAIL", value: 19002)
!186 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_LARGE_DATA", value: 19003)
!187 = !DIEnumerator(name: "VIX_E_GUEST_VOLUMES_NOT_FROZEN", value: 20000)
!188 = !DIEnumerator(name: "VIX_E_NOT_A_FILE", value: 20001)
!189 = !DIEnumerator(name: "VIX_E_NOT_A_DIRECTORY", value: 20002)
!190 = !DIEnumerator(name: "VIX_E_NO_SUCH_PROCESS", value: 20003)
!191 = !DIEnumerator(name: "VIX_E_FILE_NAME_TOO_LONG", value: 20004)
!192 = !DIEnumerator(name: "VIX_E_OPERATION_DISABLED", value: 20005)
!193 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_IMAGE", value: 21000)
!194 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_INACCESIBLE", value: 21001)
!195 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_DEVICE", value: 21002)
!196 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_DEVICE_NOT_CONNECTED", value: 21003)
!197 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_CANCELLED", value: 21004)
!198 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_INIT_FAILED", value: 21005)
!199 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_AUTO_NOT_SUPPORTED", value: 21006)
!200 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_GUEST_NOT_READY", value: 21007)
!201 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_SIG_CHECK_FAILED", value: 21008)
!202 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ERROR", value: 21009)
!203 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ALREADY_UP_TO_DATE", value: 21010)
!204 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IN_PROGRESS", value: 21011)
!205 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_COPY_FAILED", value: 21012)
!206 = !DIEnumerator(name: "VIX_E_WRAPPER_WORKSTATION_NOT_INSTALLED", value: 22001)
!207 = !DIEnumerator(name: "VIX_E_WRAPPER_VERSION_NOT_FOUND", value: 22002)
!208 = !DIEnumerator(name: "VIX_E_WRAPPER_SERVICEPROVIDER_NOT_FOUND", value: 22003)
!209 = !DIEnumerator(name: "VIX_E_WRAPPER_PLAYER_NOT_INSTALLED", value: 22004)
!210 = !DIEnumerator(name: "VIX_E_WRAPPER_RUNTIME_NOT_INSTALLED", value: 22005)
!211 = !DIEnumerator(name: "VIX_E_WRAPPER_MULTIPLE_SERVICEPROVIDERS", value: 22006)
!212 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_NOT_FOUND", value: 24000)
!213 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_IN_USE", value: 24001)
!214 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_FOUND", value: 24002)
!215 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_MOUNTED", value: 24003)
!216 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_IS_MOUNTED", value: 24004)
!217 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_SAFE", value: 24005)
!218 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_CANT_OPEN", value: 24006)
!219 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_READ_PARTS", value: 24007)
!220 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT_APP_NOT_FOUND", value: 24008)
!221 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT", value: 24009)
!222 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_MOUNTABLE_PARTITONS", value: 24010)
!223 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_RANGE", value: 24011)
!224 = !DIEnumerator(name: "VIX_E_MNTAPI_PERM", value: 24012)
!225 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT", value: 24013)
!226 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT_LOCKED", value: 24014)
!227 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_HANDLES", value: 24015)
!228 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_MAKE_VAR_DIR", value: 24016)
!229 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_ROOT", value: 24017)
!230 = !DIEnumerator(name: "VIX_E_MNTAPI_LOOP_FAILED", value: 24018)
!231 = !DIEnumerator(name: "VIX_E_MNTAPI_DAEMON", value: 24019)
!232 = !DIEnumerator(name: "VIX_E_MNTAPI_INTERNAL", value: 24020)
!233 = !DIEnumerator(name: "VIX_E_MNTAPI_SYSTEM", value: 24021)
!234 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_CONNECTION_DETAILS", value: 24022)
!235 = !DIEnumerator(name: "VIX_E_MNTAPI_INCOMPATIBLE_VERSION", value: 24300)
!236 = !DIEnumerator(name: "VIX_E_MNTAPI_OS_ERROR", value: 24301)
!237 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_IN_USE", value: 24302)
!238 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_ALREADY_ASSIGNED", value: 24303)
!239 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_MOUNTED", value: 24304)
!240 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_ALREADY_MOUNTED", value: 24305)
!241 = !DIEnumerator(name: "VIX_E_MNTAPI_FORMAT_FAILURE", value: 24306)
!242 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_DRIVER", value: 24307)
!243 = !DIEnumerator(name: "VIX_E_MNTAPI_ALREADY_OPENED", value: 24308)
!244 = !DIEnumerator(name: "VIX_E_MNTAPI_ITEM_NOT_FOUND", value: 24309)
!245 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_BOOT_LOADER", value: 24310)
!246 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_OS", value: 24311)
!247 = !DIEnumerator(name: "VIX_E_MNTAPI_CODECONVERSION", value: 24312)
!248 = !DIEnumerator(name: "VIX_E_MNTAPI_REGWRITE_ERROR", value: 24313)
!249 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPORTED_FT_VOLUME", value: 24314)
!250 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_NOT_FOUND", value: 24315)
!251 = !DIEnumerator(name: "VIX_E_MNTAPI_PUTFILE_ERROR", value: 24316)
!252 = !DIEnumerator(name: "VIX_E_MNTAPI_GETFILE_ERROR", value: 24317)
!253 = !DIEnumerator(name: "VIX_E_MNTAPI_REG_NOT_OPENED", value: 24318)
!254 = !DIEnumerator(name: "VIX_E_MNTAPI_REGDELKEY_ERROR", value: 24319)
!255 = !DIEnumerator(name: "VIX_E_MNTAPI_CREATE_PARTITIONTABLE_ERROR", value: 24320)
!256 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_FAILURE", value: 24321)
!257 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_WRITABLE", value: 24322)
!258 = !DIEnumerator(name: "VIX_ASYNC", value: 25000)
!259 = !DIEnumerator(name: "VIX_E_ASYNC_MIXEDMODE_UNSUPPORTED", value: 26000)
!260 = !DIEnumerator(name: "VIX_E_NET_HTTP_UNSUPPORTED_PROTOCOL", value: 30001)
!261 = !DIEnumerator(name: "VIX_E_NET_HTTP_URL_MALFORMAT", value: 30003)
!262 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_PROXY", value: 30005)
!263 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_HOST", value: 30006)
!264 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_CONNECT", value: 30007)
!265 = !DIEnumerator(name: "VIX_E_NET_HTTP_HTTP_RETURNED_ERROR", value: 30022)
!266 = !DIEnumerator(name: "VIX_E_NET_HTTP_OPERATION_TIMEDOUT", value: 30028)
!267 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_CONNECT_ERROR", value: 30035)
!268 = !DIEnumerator(name: "VIX_E_NET_HTTP_TOO_MANY_REDIRECTS", value: 30047)
!269 = !DIEnumerator(name: "VIX_E_NET_HTTP_TRANSFER", value: 30200)
!270 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_SECURITY", value: 30201)
!271 = !DIEnumerator(name: "VIX_E_NET_HTTP_GENERIC", value: 30202)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 58, size: 32, align: 32, elements: !274)
!273 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!275 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!276 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!277 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!278 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!279 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!280 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!281 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!282 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!283 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!284 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!285 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!286 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!287 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!288 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!289 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!290 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!291 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!292 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!293 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!294 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!295 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!296 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!297 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!298 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!299 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!300 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!301 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!302 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!303 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!304 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!305 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!306 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!307 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!308 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!309 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!310 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!311 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!312 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!313 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!314 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!315 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!316 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!317 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!318 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!319 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!320 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!321 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!322 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!323 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!324 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!325 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!326 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!327 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!328 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!329 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!330 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!331 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!332 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!333 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!334 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!335 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!336 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!337 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!338 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!339 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!340 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!341 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!342 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!343 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!344 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!345 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!346 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!347 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!348 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!349 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!350 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!351 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!352 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!353 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!354 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!355 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!356 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!357 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!358 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!359 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!360 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!361 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!362 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!363 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!364 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!365 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!366 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!367 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!368 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!369 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!370 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!371 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!372 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!373 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!374 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!375 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!376 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!377 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!378 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!379 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!380 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!381 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!382 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!383 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!384 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!385 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!386 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!387 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!388 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!389 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!390 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!391 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!392 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!393 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!394 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!395 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!396 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!397 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!398 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!399 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!400 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!401 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!402 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!403 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!404 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!405 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!406 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!407 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!408 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!409 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!410 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!411 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!412 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!413 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!414 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!415 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!416 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!417 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!418 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!419 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!420 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!421 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!422 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!423 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!424 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!425 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!426 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!427 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!428 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!429 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!430 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!431 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!432 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!433 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!434 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!435 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!436 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!437 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!438 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!439 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!440 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!441 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!442 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!443 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!444 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!445 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!446 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!447 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!448 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!449 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!450 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!451 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!452 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!453 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!454 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!455 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!456 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!457 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!458 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!459 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!460 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!461 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!462 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!463 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!464 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!465 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!466 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!467 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!468 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!469 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!470 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!471 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!472 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!473 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!474 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!475 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!476 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!477 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!478 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!479 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!480 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!481 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!482 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!483 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!484 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!485 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!486 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!487 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!488 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!489 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!490 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!491 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!492 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!493 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!494 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!495 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!496 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!497 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!498 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!499 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!500 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!501 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!502 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!503 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!504 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!505 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!506 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!507 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!508 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!509 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!510 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!511 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!512 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!513 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!514 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!515 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!516 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!517 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!518 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!519 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!520 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!521 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!522 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!523 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!524 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!525 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!526 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!527 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!528 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!529 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!530 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!531 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!532 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!533 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!534 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!535 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!536 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!537 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!538 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!539 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!540 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!541 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!542 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!543 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!544 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!545 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!546 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!547 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!548 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!549 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!550 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!551 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!552 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!553 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!554 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!555 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!556 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!557 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!558 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!559 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!560 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!561 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!562 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!563 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!564 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!565 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!566 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!567 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!568 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!569 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!570 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!571 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!572 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!573 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!574 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!575 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!576 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!577 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!578 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!579 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!580 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!581 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!582 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!583 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!584 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!585 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!586 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!587 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!588 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!589 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!590 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!591 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!592 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!593 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!594 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!595 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!596 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!597 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!598 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!599 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!600 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!601 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!602 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!603 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!604 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!607 = !{i32 2, !"Dwarf Version", i32 4}
!608 = !{i32 2, !"Debug Info Version", i32 3}
!609 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!610 = distinct !DISubprogram(name: "VixToolsNewEnvIterator", scope: !611, file: !611, line: 96, type: !612, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!611 = !DIFile(filename: "vixToolsEnvVars.c", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !606, !620}
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixError", file: !4, line: 79, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !616, line: 171, baseType: !617)
!616 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !618, line: 55, baseType: !619)
!618 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!619 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixToolsEnvIterator", file: !623, line: 56, baseType: !624)
!623 = !DIFile(filename: "vixToolsInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixToolsEnvIterator", file: !611, line: 44, size: 64, align: 64, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "environ", scope: !624, file: !611, line: 60, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!629 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!630 = !{}
!631 = !DILocalVariable(name: "userToken", arg: 1, scope: !610, file: !611, line: 96, type: !606)
!632 = !DIExpression()
!633 = !DILocation(line: 96, column: 30, scope: !610)
!634 = !DILocalVariable(name: "envItr", arg: 2, scope: !610, file: !611, line: 100, type: !620)
!635 = !DILocation(line: 100, column: 46, scope: !610)
!636 = !DILocalVariable(name: "err", scope: !610, file: !611, line: 102, type: !614)
!637 = !DILocation(line: 102, column: 13, scope: !610)
!638 = !DILocalVariable(name: "it", scope: !610, file: !611, line: 103, type: !621)
!639 = !DILocation(line: 103, column: 25, scope: !610)
!640 = !DILocation(line: 103, column: 30, scope: !610)
!641 = !DILocation(line: 105, column: 15, scope: !642)
!642 = distinct !DILexicalBlock(scope: !610, file: !611, line: 105, column: 7)
!643 = !DILocation(line: 105, column: 12, scope: !642)
!644 = !DILocation(line: 105, column: 7, scope: !610)
!645 = !DILocation(line: 106, column: 11, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !611, line: 105, column: 23)
!647 = !DILocation(line: 107, column: 7, scope: !646)
!648 = !DILocation(line: 110, column: 5, scope: !610)
!649 = !DILocation(line: 110, column: 12, scope: !610)
!650 = !DILocation(line: 140, column: 18, scope: !610)
!651 = !DILocation(line: 140, column: 4, scope: !610)
!652 = !DILocation(line: 140, column: 8, scope: !610)
!653 = !DILocation(line: 140, column: 16, scope: !610)
!654 = !DILocation(line: 142, column: 14, scope: !610)
!655 = !DILocation(line: 142, column: 5, scope: !610)
!656 = !DILocation(line: 142, column: 12, scope: !610)
!657 = !DILocation(line: 142, column: 4, scope: !610)
!658 = !DILocation(line: 144, column: 20, scope: !659)
!659 = distinct !DILexicalBlock(scope: !610, file: !611, line: 144, column: 8)
!660 = !DILocation(line: 144, column: 16, scope: !659)
!661 = !DILocation(line: 144, column: 8, scope: !610)
!662 = !DILocation(line: 145, column: 12, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !611, line: 144, column: 27)
!664 = !DILocation(line: 145, column: 7, scope: !663)
!665 = !DILocation(line: 146, column: 4, scope: !663)
!666 = !DILocation(line: 148, column: 11, scope: !610)
!667 = !DILocation(line: 148, column: 4, scope: !610)
!668 = distinct !DISubprogram(name: "VixToolsGetNextEnvVar", scope: !611, file: !611, line: 170, type: !669, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!669 = !DISubroutineType(types: !670)
!670 = !{!628, !621}
!671 = !DILocalVariable(name: "envItr", arg: 1, scope: !668, file: !611, line: 170, type: !621)
!672 = !DILocation(line: 170, column: 44, scope: !668)
!673 = !DILocalVariable(name: "envVar", scope: !668, file: !611, line: 172, type: !628)
!674 = !DILocation(line: 172, column: 10, scope: !668)
!675 = !DILocation(line: 174, column: 15, scope: !676)
!676 = distinct !DILexicalBlock(scope: !668, file: !611, line: 174, column: 7)
!677 = !DILocation(line: 174, column: 12, scope: !676)
!678 = !DILocation(line: 174, column: 7, scope: !668)
!679 = !DILocation(line: 175, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !611, line: 174, column: 23)
!681 = !DILocation(line: 198, column: 16, scope: !682)
!682 = distinct !DILexicalBlock(scope: !668, file: !611, line: 198, column: 7)
!683 = !DILocation(line: 198, column: 24, scope: !682)
!684 = !DILocation(line: 198, column: 15, scope: !682)
!685 = !DILocation(line: 198, column: 12, scope: !682)
!686 = !DILocation(line: 198, column: 7, scope: !668)
!687 = !DILocation(line: 199, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !682, file: !611, line: 198, column: 33)
!689 = !DILocation(line: 200, column: 4, scope: !688)
!690 = !DILocation(line: 201, column: 31, scope: !691)
!691 = distinct !DILexicalBlock(scope: !682, file: !611, line: 200, column: 11)
!692 = !DILocation(line: 201, column: 39, scope: !691)
!693 = !DILocation(line: 201, column: 30, scope: !691)
!694 = !DILocation(line: 201, column: 16, scope: !691)
!695 = !DILocation(line: 201, column: 14, scope: !691)
!696 = !DILocation(line: 202, column: 7, scope: !691)
!697 = !DILocation(line: 202, column: 15, scope: !691)
!698 = !DILocation(line: 202, column: 22, scope: !691)
!699 = !DILocation(line: 205, column: 11, scope: !668)
!700 = !DILocation(line: 205, column: 4, scope: !668)
!701 = !DILocation(line: 206, column: 1, scope: !668)
!702 = distinct !DISubprogram(name: "Unicode_Alloc", scope: !703, file: !703, line: 111, type: !704, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!703 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeBase.h", directory: "/home/lichi/Desktop/open-vm-tools/line1555")
!704 = !DISubroutineType(types: !705)
!705 = !{!628, !706, !708}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !273, line: 445, baseType: !272)
!709 = !DILocalVariable(name: "buffer", arg: 1, scope: !702, file: !703, line: 111, type: !706)
!710 = !DILocation(line: 111, column: 27, scope: !702)
!711 = !DILocalVariable(name: "encoding", arg: 2, scope: !702, file: !703, line: 112, type: !708)
!712 = !DILocation(line: 112, column: 30, scope: !702)
!713 = !DILocation(line: 114, column: 35, scope: !702)
!714 = !DILocation(line: 114, column: 47, scope: !702)
!715 = !DILocation(line: 114, column: 11, scope: !702)
!716 = !DILocation(line: 114, column: 4, scope: !702)
!717 = distinct !DISubprogram(name: "VixToolsDestroyEnvIterator", scope: !611, file: !611, line: 226, type: !718, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !621}
!720 = !DILocalVariable(name: "envItr", arg: 1, scope: !717, file: !611, line: 226, type: !621)
!721 = !DILocation(line: 226, column: 49, scope: !717)
!722 = !DILocation(line: 228, column: 15, scope: !723)
!723 = distinct !DILexicalBlock(scope: !717, file: !611, line: 228, column: 7)
!724 = !DILocation(line: 228, column: 12, scope: !723)
!725 = !DILocation(line: 228, column: 7, scope: !717)
!726 = !DILocation(line: 236, column: 12, scope: !727)
!727 = distinct !DILexicalBlock(scope: !723, file: !611, line: 228, column: 23)
!728 = !DILocation(line: 236, column: 7, scope: !727)
!729 = !DILocation(line: 237, column: 4, scope: !727)
!730 = !DILocation(line: 238, column: 1, scope: !717)
!731 = distinct !DISubprogram(name: "VixToolsNewUserEnvironment", scope: !611, file: !611, line: 259, type: !732, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!732 = !DISubroutineType(types: !733)
!733 = !{!614, !606, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixToolsUserEnvironment", file: !623, line: 58, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixToolsUserEnvironment", file: !611, line: 65, align: 8, elements: !630)
!738 = !DILocalVariable(name: "userToken", arg: 1, scope: !731, file: !611, line: 259, type: !606)
!739 = !DILocation(line: 259, column: 34, scope: !731)
!740 = !DILocalVariable(name: "env", arg: 2, scope: !731, file: !611, line: 260, type: !734)
!741 = !DILocation(line: 260, column: 54, scope: !731)
!742 = !DILocalVariable(name: "err", scope: !731, file: !611, line: 262, type: !614)
!743 = !DILocation(line: 262, column: 13, scope: !731)
!744 = !DILocalVariable(name: "myEnv", scope: !731, file: !611, line: 263, type: !735)
!745 = !DILocation(line: 263, column: 29, scope: !731)
!746 = !DILocation(line: 263, column: 37, scope: !731)
!747 = !DILocation(line: 265, column: 15, scope: !748)
!748 = distinct !DILexicalBlock(scope: !731, file: !611, line: 265, column: 7)
!749 = !DILocation(line: 265, column: 12, scope: !748)
!750 = !DILocation(line: 265, column: 7, scope: !731)
!751 = !DILocation(line: 266, column: 11, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !611, line: 265, column: 20)
!753 = !DILocation(line: 267, column: 7, scope: !752)
!754 = !DILocation(line: 270, column: 5, scope: !731)
!755 = !DILocation(line: 270, column: 9, scope: !731)
!756 = !DILocation(line: 285, column: 11, scope: !731)
!757 = !DILocation(line: 285, column: 5, scope: !731)
!758 = !DILocation(line: 285, column: 9, scope: !731)
!759 = !DILocation(line: 285, column: 4, scope: !731)
!760 = !DILocation(line: 288, column: 20, scope: !761)
!761 = distinct !DILexicalBlock(scope: !731, file: !611, line: 288, column: 8)
!762 = !DILocation(line: 288, column: 16, scope: !761)
!763 = !DILocation(line: 288, column: 8, scope: !731)
!764 = !DILocation(line: 289, column: 12, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !611, line: 288, column: 27)
!766 = !DILocation(line: 289, column: 7, scope: !765)
!767 = !DILocation(line: 290, column: 4, scope: !765)
!768 = !DILocation(line: 292, column: 11, scope: !731)
!769 = !DILocation(line: 292, column: 4, scope: !731)
!770 = distinct !DISubprogram(name: "VixToolsGetEnvFromUserEnvironment", scope: !611, file: !611, line: 315, type: !771, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!771 = !DISubroutineType(types: !772)
!772 = !{!628, !773, !775}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!777 = !DILocalVariable(name: "env", arg: 1, scope: !770, file: !611, line: 315, type: !773)
!778 = !DILocation(line: 315, column: 66, scope: !770)
!779 = !DILocalVariable(name: "name", arg: 2, scope: !770, file: !611, line: 316, type: !775)
!780 = !DILocation(line: 316, column: 47, scope: !770)
!781 = !DILocalVariable(name: "envVar", scope: !770, file: !611, line: 318, type: !628)
!782 = !DILocation(line: 318, column: 10, scope: !770)
!783 = !DILocation(line: 320, column: 15, scope: !784)
!784 = distinct !DILexicalBlock(scope: !770, file: !611, line: 320, column: 7)
!785 = !DILocation(line: 320, column: 12, scope: !784)
!786 = !DILocation(line: 320, column: 7, scope: !770)
!787 = !DILocation(line: 321, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !611, line: 320, column: 20)
!789 = !DILocation(line: 331, column: 43, scope: !770)
!790 = !DILocation(line: 331, column: 30, scope: !770)
!791 = !DILocation(line: 331, column: 13, scope: !792)
!792 = !DILexicalBlockFile(scope: !770, file: !611, discriminator: 1)
!793 = !DILocation(line: 331, column: 11, scope: !770)
!794 = !DILocation(line: 334, column: 11, scope: !770)
!795 = !DILocation(line: 334, column: 4, scope: !770)
!796 = !DILocation(line: 335, column: 1, scope: !770)
!797 = distinct !DISubprogram(name: "VixToolsDestroyUserEnvironment", scope: !611, file: !611, line: 357, type: !798, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !735}
!800 = !DILocalVariable(name: "env", arg: 1, scope: !797, file: !611, line: 357, type: !735)
!801 = !DILocation(line: 357, column: 57, scope: !797)
!802 = !DILocation(line: 359, column: 15, scope: !803)
!803 = distinct !DILexicalBlock(scope: !797, file: !611, line: 359, column: 7)
!804 = !DILocation(line: 359, column: 12, scope: !803)
!805 = !DILocation(line: 359, column: 7, scope: !797)
!806 = !DILocation(line: 367, column: 12, scope: !807)
!807 = distinct !DILexicalBlock(scope: !803, file: !611, line: 359, column: 20)
!808 = !DILocation(line: 367, column: 7, scope: !807)
!809 = !DILocation(line: 368, column: 4, scope: !807)
!810 = !DILocation(line: 369, column: 1, scope: !797)
!811 = distinct !DISubprogram(name: "VixToolsValidateEnviron", scope: !611, file: !611, line: 466, type: !812, isLocal: false, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !630)
!812 = !DISubroutineType(types: !813)
!813 = !{!614, !814}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!816 = !DILocalVariable(name: "env", arg: 1, scope: !811, file: !611, line: 466, type: !814)
!817 = !DILocation(line: 466, column: 45, scope: !811)
!818 = !DILocation(line: 468, column: 15, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !611, line: 468, column: 7)
!820 = !DILocation(line: 468, column: 12, scope: !819)
!821 = !DILocation(line: 468, column: 7, scope: !811)
!822 = !DILocation(line: 469, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !611, line: 468, column: 20)
!824 = !DILocation(line: 472, column: 4, scope: !811)
!825 = !DILocation(line: 472, column: 19, scope: !826)
!826 = !DILexicalBlockFile(scope: !811, file: !611, discriminator: 1)
!827 = !DILocation(line: 472, column: 18, scope: !826)
!828 = !DILocation(line: 472, column: 15, scope: !826)
!829 = !DILocation(line: 472, column: 4, scope: !826)
!830 = !DILocation(line: 477, column: 26, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !611, line: 477, column: 10)
!832 = distinct !DILexicalBlock(scope: !811, file: !611, line: 472, column: 24)
!833 = !DILocation(line: 477, column: 25, scope: !831)
!834 = !DILocation(line: 477, column: 18, scope: !831)
!835 = !DILocation(line: 477, column: 15, scope: !831)
!836 = !DILocation(line: 477, column: 10, scope: !832)
!837 = !DILocation(line: 478, column: 10, scope: !838)
!838 = distinct !DILexicalBlock(scope: !831, file: !611, line: 477, column: 37)
!839 = !DILocation(line: 480, column: 10, scope: !832)
!840 = !DILocation(line: 472, column: 4, scope: !841)
!841 = !DILexicalBlockFile(scope: !811, file: !611, discriminator: 2)
!842 = distinct !{!842, !824}
!843 = !DILocation(line: 483, column: 4, scope: !811)
!844 = !DILocation(line: 484, column: 1, scope: !811)
