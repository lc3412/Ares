; ModuleID = './foundryPropertyListCommon.o.i'
source_filename = "./foundryPropertyListCommon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VixPropertyListImpl = type { %struct.VixPropertyValue* }
%struct.VixPropertyValue = type { i32, i32, %union.anon, i8, i8, %struct.VixPropertyValue* }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }

@.str = private unnamed_addr constant [59 x i8] c"%s: attempted to send a non-UTF-8 string for property %d.\0A\00", align 1
@__FUNCTION__.VixPropertyList_Serialize = private unnamed_addr constant [26 x i8] c"VixPropertyList_Serialize\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s:%d, pointer properties cannot be serialized.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"foundryPropertyListCommon.c\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s: non-UTF-8 string received for property %d.\0A\00", align 1
@__FUNCTION__.VixPropertyListDeserializeImpl = private unnamed_addr constant [31 x i8] c"VixPropertyListDeserializeImpl\00", align 1

; Function Attrs: nounwind uwtable
define void @VixPropertyList_Initialize(%struct.VixPropertyListImpl*) #0 !dbg !671 {
  %2 = alloca %struct.VixPropertyListImpl*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %2, metadata !681, metadata !682), !dbg !683
  %3 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !684
  %4 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %3, i32 0, i32 0, !dbg !685
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %4, align 8, !dbg !686
  ret void, !dbg !687
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @VixPropertyList_RemoveAllWithoutHandles(%struct.VixPropertyListImpl*) #0 !dbg !688 {
  %2 = alloca %struct.VixPropertyListImpl*, align 8
  %3 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %2, metadata !689, metadata !682), !dbg !690
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %3, metadata !691, metadata !682), !dbg !692
  %4 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !693
  %5 = icmp eq %struct.VixPropertyListImpl* null, %4, !dbg !695
  br i1 %5, label %6, label %7, !dbg !696

; <label>:6:                                      ; preds = %1
  br label %73, !dbg !697

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !699

; <label>:8:                                      ; preds = %70, %7
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !700
  %10 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %9, i32 0, i32 0, !dbg !702
  %11 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !702
  %12 = icmp ne %struct.VixPropertyValue* null, %11, !dbg !703
  br i1 %12, label %13, label %73, !dbg !704

; <label>:13:                                     ; preds = %8
  %14 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !705
  %15 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %14, i32 0, i32 0, !dbg !707
  %16 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %15, align 8, !dbg !707
  store %struct.VixPropertyValue* %16, %struct.VixPropertyValue** %3, align 8, !dbg !708
  %17 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !709
  %18 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %17, i32 0, i32 5, !dbg !710
  %19 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %18, align 8, !dbg !710
  %20 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !711
  %21 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %20, i32 0, i32 0, !dbg !712
  store %struct.VixPropertyValue* %19, %struct.VixPropertyValue** %21, align 8, !dbg !713
  %22 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !714
  %23 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %22, i32 0, i32 1, !dbg !716
  %24 = load i32, i32* %23, align 4, !dbg !716
  %25 = icmp eq i32 2, %24, !dbg !717
  br i1 %25, label %26, label %41, !dbg !718

; <label>:26:                                     ; preds = %13
  %27 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !719
  %28 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %27, i32 0, i32 4, !dbg !722
  %29 = load i8, i8* %28, align 1, !dbg !722
  %30 = icmp ne i8 %29, 0, !dbg !719
  br i1 %30, label %31, label %36, !dbg !723

; <label>:31:                                     ; preds = %26
  %32 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !724
  %33 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %32, i32 0, i32 2, !dbg !726
  %34 = bitcast %union.anon* %33 to i8**, !dbg !727
  %35 = load i8*, i8** %34, align 8, !dbg !727
  call void @Util_ZeroString(i8* %35), !dbg !728
  br label %36, !dbg !729

; <label>:36:                                     ; preds = %31, %26
  %37 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !730
  %38 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %37, i32 0, i32 2, !dbg !731
  %39 = bitcast %union.anon* %38 to i8**, !dbg !732
  %40 = load i8*, i8** %39, align 8, !dbg !732
  call void @free(i8* %40) #8, !dbg !733
  br label %70, !dbg !734

; <label>:41:                                     ; preds = %13
  %42 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !735
  %43 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %42, i32 0, i32 1, !dbg !738
  %44 = load i32, i32* %43, align 4, !dbg !738
  %45 = icmp eq i32 6, %44, !dbg !739
  br i1 %45, label %46, label %69, !dbg !740

; <label>:46:                                     ; preds = %41
  %47 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !741
  %48 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %47, i32 0, i32 4, !dbg !744
  %49 = load i8, i8* %48, align 1, !dbg !744
  %50 = icmp ne i8 %49, 0, !dbg !741
  br i1 %50, label %51, label %63, !dbg !745

; <label>:51:                                     ; preds = %46
  %52 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !746
  %53 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %52, i32 0, i32 2, !dbg !748
  %54 = bitcast %union.anon* %53 to %struct.anon*, !dbg !749
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0, !dbg !750
  %56 = load i8*, i8** %55, align 8, !dbg !750
  %57 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !751
  %58 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %57, i32 0, i32 2, !dbg !752
  %59 = bitcast %union.anon* %58 to %struct.anon*, !dbg !753
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 1, !dbg !754
  %61 = load i32, i32* %60, align 8, !dbg !754
  %62 = sext i32 %61 to i64, !dbg !751
  call void @Util_Zero(i8* %56, i64 %62), !dbg !755
  br label %63, !dbg !756

; <label>:63:                                     ; preds = %51, %46
  %64 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !757
  %65 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %64, i32 0, i32 2, !dbg !758
  %66 = bitcast %union.anon* %65 to %struct.anon*, !dbg !759
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0, !dbg !760
  %68 = load i8*, i8** %67, align 8, !dbg !760
  call void @free(i8* %68) #8, !dbg !761
  br label %69, !dbg !762

; <label>:69:                                     ; preds = %63, %41
  br label %70

; <label>:70:                                     ; preds = %69, %36
  %71 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !763
  %72 = bitcast %struct.VixPropertyValue* %71 to i8*, !dbg !763
  call void @free(i8* %72) #8, !dbg !764
  br label %8, !dbg !765, !llvm.loop !767

; <label>:73:                                     ; preds = %6, %8
  ret void, !dbg !768
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_ZeroString(i8*) #2 !dbg !769 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !773, metadata !682), !dbg !774
  %3 = load i8*, i8** %2, align 8, !dbg !775
  %4 = icmp ne i8* %3, null, !dbg !777
  br i1 %4, label %5, label %9, !dbg !778

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !779
  %7 = load i8*, i8** %2, align 8, !dbg !781
  %8 = call i64 @strlen(i8* %7) #9, !dbg !782
  call void @Util_Zero(i8* %6, i64 %8), !dbg !783
  br label %9, !dbg !785

; <label>:9:                                      ; preds = %5, %1
  ret void, !dbg !786
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Util_Zero(i8*, i64) #2 !dbg !787 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !793, metadata !682), !dbg !794
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !795, metadata !682), !dbg !796
  %5 = load i8*, i8** %3, align 8, !dbg !797
  %6 = icmp ne i8* %5, null, !dbg !799
  br i1 %6, label %7, label %10, !dbg !800

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !801
  %9 = load i64, i64* %4, align 8, !dbg !803
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %9, i32 1, i1 false), !dbg !804
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8** %3) #8, !dbg !805, !srcloc !806
  br label %10, !dbg !807

; <label>:10:                                     ; preds = %7, %2
  ret void, !dbg !808
}

; Function Attrs: nounwind uwtable
define void @VixPropertyList_MarkAllSensitive(%struct.VixPropertyListImpl*) #0 !dbg !809 {
  %2 = alloca %struct.VixPropertyListImpl*, align 8
  %3 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %2, metadata !810, metadata !682), !dbg !811
  %4 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !812
  %5 = icmp ne %struct.VixPropertyListImpl* null, %4, !dbg !814
  br i1 %5, label %6, label %20, !dbg !815

; <label>:6:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %3, metadata !816, metadata !682), !dbg !818
  %7 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !819
  %8 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %7, i32 0, i32 0, !dbg !820
  %9 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !820
  store %struct.VixPropertyValue* %9, %struct.VixPropertyValue** %3, align 8, !dbg !818
  br label %10, !dbg !821

; <label>:10:                                     ; preds = %13, %6
  %11 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !822
  %12 = icmp ne %struct.VixPropertyValue* null, %11, !dbg !824
  br i1 %12, label %13, label %19, !dbg !825

; <label>:13:                                     ; preds = %10
  %14 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !826
  %15 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %14, i32 0, i32 4, !dbg !828
  store i8 1, i8* %15, align 1, !dbg !829
  %16 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %3, align 8, !dbg !830
  %17 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %16, i32 0, i32 5, !dbg !831
  %18 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %17, align 8, !dbg !831
  store %struct.VixPropertyValue* %18, %struct.VixPropertyValue** %3, align 8, !dbg !832
  br label %10, !dbg !833, !llvm.loop !835

; <label>:19:                                     ; preds = %10
  br label %20, !dbg !836

; <label>:20:                                     ; preds = %19, %1
  ret void, !dbg !837
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_Serialize(%struct.VixPropertyListImpl*, i8 signext, i64*, i8**) #0 !dbg !838 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !846, metadata !682), !dbg !847
  store i8 %1, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !848, metadata !682), !dbg !849
  store i64* %2, i64** %7, align 8
  call void @llvm.dbg.declare(metadata i64** %7, metadata !850, metadata !682), !dbg !851
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !852, metadata !682), !dbg !853
  call void @llvm.dbg.declare(metadata i64* %9, metadata !854, metadata !682), !dbg !855
  store i64 0, i64* %9, align 8, !dbg !855
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !856, metadata !682), !dbg !857
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !857
  call void @llvm.dbg.declare(metadata i8** %11, metadata !858, metadata !682), !dbg !859
  store i8* null, i8** %11, align 8, !dbg !859
  call void @llvm.dbg.declare(metadata i32* %12, metadata !860, metadata !682), !dbg !861
  call void @llvm.dbg.declare(metadata i64* %13, metadata !862, metadata !682), !dbg !863
  call void @llvm.dbg.declare(metadata i64* %14, metadata !864, metadata !682), !dbg !865
  call void @llvm.dbg.declare(metadata i64* %15, metadata !866, metadata !682), !dbg !867
  call void @llvm.dbg.declare(metadata i64* %16, metadata !868, metadata !682), !dbg !869
  call void @llvm.dbg.declare(metadata i64* %17, metadata !870, metadata !682), !dbg !871
  store i64 0, i64* %17, align 8, !dbg !871
  call void @llvm.dbg.declare(metadata i64* %18, metadata !872, metadata !682), !dbg !873
  store i64 0, i64* %18, align 8, !dbg !873
  br label %19, !dbg !874, !llvm.loop !875

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !876

; <label>:20:                                     ; preds = %19
  %21 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !879
  %22 = icmp eq %struct.VixPropertyListImpl* null, %21, !dbg !881
  br i1 %22, label %29, label %23, !dbg !882

; <label>:23:                                     ; preds = %20
  %24 = load i64*, i64** %7, align 8, !dbg !883
  %25 = icmp eq i64* null, %24, !dbg !884
  br i1 %25, label %29, label %26, !dbg !885

; <label>:26:                                     ; preds = %23
  %27 = load i8**, i8*** %8, align 8, !dbg !886
  %28 = icmp eq i8** null, %27, !dbg !887
  br i1 %28, label %29, label %30, !dbg !888

; <label>:29:                                     ; preds = %26, %23, %20
  store i64 3, i64* %9, align 8, !dbg !890
  br label %298, !dbg !892

; <label>:30:                                     ; preds = %26
  store i64 4, i64* %14, align 8, !dbg !893
  store i64 4, i64* %15, align 8, !dbg !894
  store i64 4, i64* %16, align 8, !dbg !895
  %31 = load i64, i64* %14, align 8, !dbg !896
  %32 = load i64, i64* %15, align 8, !dbg !897
  %33 = add i64 %31, %32, !dbg !898
  %34 = load i64, i64* %16, align 8, !dbg !899
  %35 = add i64 %33, %34, !dbg !900
  store i64 %35, i64* %13, align 8, !dbg !901
  %36 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !902
  %37 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %36, i32 0, i32 0, !dbg !903
  %38 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %37, align 8, !dbg !903
  store %struct.VixPropertyValue* %38, %struct.VixPropertyValue** %10, align 8, !dbg !904
  br label %39, !dbg !905

; <label>:39:                                     ; preds = %115, %51, %30
  %40 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !906
  %41 = icmp ne %struct.VixPropertyValue* null, %40, !dbg !907
  br i1 %41, label %42, label %119, !dbg !908

; <label>:42:                                     ; preds = %39
  %43 = load i8, i8* %6, align 1, !dbg !909
  %44 = sext i8 %43 to i32, !dbg !909
  %45 = icmp ne i32 %44, 0, !dbg !909
  br i1 %45, label %46, label %55, !dbg !912

; <label>:46:                                     ; preds = %42
  %47 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !913
  %48 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %47, i32 0, i32 3, !dbg !915
  %49 = load i8, i8* %48, align 8, !dbg !915
  %50 = icmp ne i8 %49, 0, !dbg !913
  br i1 %50, label %55, label %51, !dbg !916

; <label>:51:                                     ; preds = %46
  %52 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !917
  %53 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %52, i32 0, i32 5, !dbg !919
  %54 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %53, align 8, !dbg !919
  store %struct.VixPropertyValue* %54, %struct.VixPropertyValue** %10, align 8, !dbg !920
  br label %39, !dbg !921, !llvm.loop !922

; <label>:55:                                     ; preds = %46, %42
  %56 = load i64, i64* %13, align 8, !dbg !923
  %57 = load i64, i64* %17, align 8, !dbg !924
  %58 = add i64 %57, %56, !dbg !924
  store i64 %58, i64* %17, align 8, !dbg !924
  %59 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !925
  %60 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %59, i32 0, i32 1, !dbg !926
  %61 = load i32, i32* %60, align 4, !dbg !926
  switch i32 %61, label %114 [
    i32 1, label %62
    i32 2, label %65
    i32 3, label %98
    i32 5, label %101
    i32 6, label %104
    i32 7, label %113
  ], !dbg !927

; <label>:62:                                     ; preds = %55
  %63 = load i64, i64* %17, align 8, !dbg !928
  %64 = add i64 %63, 4, !dbg !928
  store i64 %64, i64* %17, align 8, !dbg !928
  br label %115, !dbg !930

; <label>:65:                                     ; preds = %55
  %66 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !931
  %67 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %66, i32 0, i32 2, !dbg !933
  %68 = bitcast %union.anon* %67 to i8**, !dbg !934
  %69 = load i8*, i8** %68, align 8, !dbg !934
  %70 = icmp ne i8* %69, null, !dbg !931
  br i1 %70, label %71, label %96, !dbg !935

; <label>:71:                                     ; preds = %65
  %72 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !936
  %73 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %72, i32 0, i32 2, !dbg !938
  %74 = bitcast %union.anon* %73 to i8**, !dbg !939
  %75 = load i8*, i8** %74, align 8, !dbg !939
  %76 = call i64 @strlen(i8* %75) #9, !dbg !940
  %77 = add i64 %76, 1, !dbg !941
  %78 = trunc i64 %77 to i32, !dbg !940
  store i32 %78, i32* %12, align 4, !dbg !942
  %79 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !943
  %80 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %79, i32 0, i32 2, !dbg !945
  %81 = bitcast %union.anon* %80 to i8**, !dbg !946
  %82 = load i8*, i8** %81, align 8, !dbg !946
  %83 = load i32, i32* %12, align 4, !dbg !947
  %84 = sext i32 %83 to i64, !dbg !947
  %85 = call signext i8 @Unicode_IsBufferValid(i8* %82, i64 %84, i32 0), !dbg !948
  %86 = icmp ne i8 %85, 0, !dbg !948
  br i1 %86, label %91, label %87, !dbg !949

; <label>:87:                                     ; preds = %71
  %88 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !950
  %89 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %88, i32 0, i32 0, !dbg !952
  %90 = load i32, i32* %89, align 8, !dbg !952
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.VixPropertyList_Serialize, i32 0, i32 0), i32 %90), !dbg !953
  store i64 27, i64* %9, align 8, !dbg !954
  br label %91, !dbg !955

; <label>:91:                                     ; preds = %87, %71
  %92 = load i32, i32* %12, align 4, !dbg !956
  %93 = sext i32 %92 to i64, !dbg !956
  %94 = load i64, i64* %17, align 8, !dbg !957
  %95 = add i64 %94, %93, !dbg !957
  store i64 %95, i64* %17, align 8, !dbg !957
  br label %97, !dbg !958

; <label>:96:                                     ; preds = %65
  store i64 3, i64* %9, align 8, !dbg !959
  br label %298, !dbg !961

; <label>:97:                                     ; preds = %91
  br label %115, !dbg !962

; <label>:98:                                     ; preds = %55
  %99 = load i64, i64* %17, align 8, !dbg !963
  %100 = add i64 %99, 1, !dbg !963
  store i64 %100, i64* %17, align 8, !dbg !963
  br label %115, !dbg !964

; <label>:101:                                    ; preds = %55
  %102 = load i64, i64* %17, align 8, !dbg !965
  %103 = add i64 %102, 8, !dbg !965
  store i64 %103, i64* %17, align 8, !dbg !965
  br label %115, !dbg !966

; <label>:104:                                    ; preds = %55
  %105 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !967
  %106 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %105, i32 0, i32 2, !dbg !968
  %107 = bitcast %union.anon* %106 to %struct.anon*, !dbg !969
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 1, !dbg !970
  %109 = load i32, i32* %108, align 8, !dbg !970
  %110 = sext i32 %109 to i64, !dbg !967
  %111 = load i64, i64* %17, align 8, !dbg !971
  %112 = add i64 %111, %110, !dbg !971
  store i64 %112, i64* %17, align 8, !dbg !971
  br label %115, !dbg !972

; <label>:113:                                    ; preds = %55
  store i64 3, i64* %9, align 8, !dbg !973
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.VixPropertyList_Serialize, i32 0, i32 0), i32 294), !dbg !974
  br label %298, !dbg !975

; <label>:114:                                    ; preds = %55
  store i64 6000, i64* %9, align 8, !dbg !976
  br label %298, !dbg !977

; <label>:115:                                    ; preds = %104, %101, %98, %97, %62
  %116 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !978
  %117 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %116, i32 0, i32 5, !dbg !979
  %118 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %117, align 8, !dbg !979
  store %struct.VixPropertyValue* %118, %struct.VixPropertyValue** %10, align 8, !dbg !980
  br label %39, !dbg !981, !llvm.loop !922

; <label>:119:                                    ; preds = %39
  %120 = load i64, i64* %17, align 8, !dbg !983
  %121 = call i8* @VixMsg_MallocClientData(i64 %120), !dbg !984
  %122 = load i8**, i8*** %8, align 8, !dbg !985
  store i8* %121, i8** %122, align 8, !dbg !986
  %123 = load i8**, i8*** %8, align 8, !dbg !987
  %124 = load i8*, i8** %123, align 8, !dbg !989
  %125 = icmp eq i8* null, %124, !dbg !990
  br i1 %125, label %126, label %127, !dbg !991

; <label>:126:                                    ; preds = %119
  store i64 2, i64* %9, align 8, !dbg !992
  br label %298, !dbg !994

; <label>:127:                                    ; preds = %119
  %128 = load i8**, i8*** %8, align 8, !dbg !995
  %129 = load i8*, i8** %128, align 8, !dbg !996
  store i8* %129, i8** %11, align 8, !dbg !997
  store i64 0, i64* %18, align 8, !dbg !998
  %130 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !999
  %131 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %130, i32 0, i32 0, !dbg !1000
  %132 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %131, align 8, !dbg !1000
  store %struct.VixPropertyValue* %132, %struct.VixPropertyValue** %10, align 8, !dbg !1001
  br label %133, !dbg !1002

; <label>:133:                                    ; preds = %287, %145, %127
  %134 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1003
  %135 = icmp ne %struct.VixPropertyValue* null, %134, !dbg !1004
  br i1 %135, label %136, label %295, !dbg !1005

; <label>:136:                                    ; preds = %133
  %137 = load i8, i8* %6, align 1, !dbg !1006
  %138 = sext i8 %137 to i32, !dbg !1006
  %139 = icmp ne i32 %138, 0, !dbg !1006
  br i1 %139, label %140, label %149, !dbg !1009

; <label>:140:                                    ; preds = %136
  %141 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1010
  %142 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %141, i32 0, i32 3, !dbg !1012
  %143 = load i8, i8* %142, align 8, !dbg !1012
  %144 = icmp ne i8 %143, 0, !dbg !1010
  br i1 %144, label %149, label %145, !dbg !1013

; <label>:145:                                    ; preds = %140
  %146 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1014
  %147 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %146, i32 0, i32 5, !dbg !1016
  %148 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %147, align 8, !dbg !1016
  store %struct.VixPropertyValue* %148, %struct.VixPropertyValue** %10, align 8, !dbg !1017
  br label %133, !dbg !1018, !llvm.loop !1019

; <label>:149:                                    ; preds = %140, %136
  %150 = load i64, i64* %18, align 8, !dbg !1020
  %151 = load i8*, i8** %11, align 8, !dbg !1021
  %152 = getelementptr inbounds i8, i8* %151, i64 %150, !dbg !1021
  %153 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1022
  %154 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %153, i32 0, i32 0, !dbg !1023
  %155 = bitcast i32* %154 to i8*, !dbg !1024
  %156 = load i64, i64* %14, align 8, !dbg !1025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %152, i8* %155, i64 %156, i32 1, i1 false), !dbg !1024
  %157 = load i64, i64* %14, align 8, !dbg !1026
  %158 = load i64, i64* %18, align 8, !dbg !1027
  %159 = add i64 %158, %157, !dbg !1027
  store i64 %159, i64* %18, align 8, !dbg !1027
  %160 = load i64, i64* %18, align 8, !dbg !1028
  %161 = load i8*, i8** %11, align 8, !dbg !1029
  %162 = getelementptr inbounds i8, i8* %161, i64 %160, !dbg !1029
  %163 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1030
  %164 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %163, i32 0, i32 1, !dbg !1031
  %165 = bitcast i32* %164 to i8*, !dbg !1032
  %166 = load i64, i64* %15, align 8, !dbg !1033
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %165, i64 %166, i32 1, i1 false), !dbg !1032
  %167 = load i64, i64* %15, align 8, !dbg !1034
  %168 = load i64, i64* %18, align 8, !dbg !1035
  %169 = add i64 %168, %167, !dbg !1035
  store i64 %169, i64* %18, align 8, !dbg !1035
  %170 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1036
  %171 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %170, i32 0, i32 1, !dbg !1037
  %172 = load i32, i32* %171, align 4, !dbg !1037
  switch i32 %172, label %286 [
    i32 1, label %173
    i32 2, label %191
    i32 3, label %217
    i32 5, label %234
    i32 6, label %252
    i32 7, label %285
  ], !dbg !1038

; <label>:173:                                    ; preds = %149
  store i32 4, i32* %12, align 4, !dbg !1039
  %174 = load i64, i64* %18, align 8, !dbg !1041
  %175 = load i8*, i8** %11, align 8, !dbg !1042
  %176 = getelementptr inbounds i8, i8* %175, i64 %174, !dbg !1042
  %177 = bitcast i32* %12 to i8*, !dbg !1043
  %178 = load i64, i64* %16, align 8, !dbg !1044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 %178, i32 1, i1 false), !dbg !1043
  %179 = load i64, i64* %16, align 8, !dbg !1045
  %180 = load i64, i64* %18, align 8, !dbg !1046
  %181 = add i64 %180, %179, !dbg !1046
  store i64 %181, i64* %18, align 8, !dbg !1046
  %182 = load i64, i64* %18, align 8, !dbg !1047
  %183 = load i8*, i8** %11, align 8, !dbg !1048
  %184 = getelementptr inbounds i8, i8* %183, i64 %182, !dbg !1048
  %185 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1049
  %186 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %185, i32 0, i32 2, !dbg !1050
  %187 = bitcast %union.anon* %186 to i32*, !dbg !1051
  %188 = bitcast i32* %187 to i8*, !dbg !1052
  %189 = load i32, i32* %12, align 4, !dbg !1053
  %190 = sext i32 %189 to i64, !dbg !1053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %188, i64 %190, i32 1, i1 false), !dbg !1052
  br label %287, !dbg !1054

; <label>:191:                                    ; preds = %149
  %192 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1055
  %193 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %192, i32 0, i32 2, !dbg !1056
  %194 = bitcast %union.anon* %193 to i8**, !dbg !1057
  %195 = load i8*, i8** %194, align 8, !dbg !1057
  %196 = call i64 @strlen(i8* %195) #9, !dbg !1058
  %197 = trunc i64 %196 to i32, !dbg !1059
  %198 = add nsw i32 %197, 1, !dbg !1060
  store i32 %198, i32* %12, align 4, !dbg !1061
  %199 = load i64, i64* %18, align 8, !dbg !1062
  %200 = load i8*, i8** %11, align 8, !dbg !1063
  %201 = getelementptr inbounds i8, i8* %200, i64 %199, !dbg !1063
  %202 = bitcast i32* %12 to i8*, !dbg !1064
  %203 = load i64, i64* %16, align 8, !dbg !1065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* %202, i64 %203, i32 1, i1 false), !dbg !1064
  %204 = load i64, i64* %16, align 8, !dbg !1066
  %205 = load i64, i64* %18, align 8, !dbg !1067
  %206 = add i64 %205, %204, !dbg !1067
  store i64 %206, i64* %18, align 8, !dbg !1067
  %207 = load i64, i64* %18, align 8, !dbg !1068
  %208 = load i8*, i8** %11, align 8, !dbg !1069
  %209 = getelementptr inbounds i8, i8* %208, i64 %207, !dbg !1069
  %210 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1070
  %211 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %210, i32 0, i32 2, !dbg !1071
  %212 = bitcast %union.anon* %211 to i8**, !dbg !1072
  %213 = load i8*, i8** %212, align 8, !dbg !1072
  %214 = load i32, i32* %12, align 4, !dbg !1073
  %215 = sext i32 %214 to i64, !dbg !1073
  %216 = call i8* @Str_Strcpy(i8* %209, i8* %213, i64 %215), !dbg !1074
  br label %287, !dbg !1075

; <label>:217:                                    ; preds = %149
  store i32 1, i32* %12, align 4, !dbg !1076
  %218 = load i64, i64* %18, align 8, !dbg !1077
  %219 = load i8*, i8** %11, align 8, !dbg !1078
  %220 = getelementptr inbounds i8, i8* %219, i64 %218, !dbg !1078
  %221 = bitcast i32* %12 to i8*, !dbg !1079
  %222 = load i64, i64* %16, align 8, !dbg !1080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 %222, i32 1, i1 false), !dbg !1079
  %223 = load i64, i64* %16, align 8, !dbg !1081
  %224 = load i64, i64* %18, align 8, !dbg !1082
  %225 = add i64 %224, %223, !dbg !1082
  store i64 %225, i64* %18, align 8, !dbg !1082
  %226 = load i64, i64* %18, align 8, !dbg !1083
  %227 = load i8*, i8** %11, align 8, !dbg !1084
  %228 = getelementptr inbounds i8, i8* %227, i64 %226, !dbg !1084
  %229 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1085
  %230 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %229, i32 0, i32 2, !dbg !1086
  %231 = bitcast %union.anon* %230 to i8*, !dbg !1087
  %232 = load i32, i32* %12, align 4, !dbg !1088
  %233 = sext i32 %232 to i64, !dbg !1088
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %228, i8* %231, i64 %233, i32 1, i1 false), !dbg !1089
  br label %287, !dbg !1090

; <label>:234:                                    ; preds = %149
  store i32 8, i32* %12, align 4, !dbg !1091
  %235 = load i64, i64* %18, align 8, !dbg !1092
  %236 = load i8*, i8** %11, align 8, !dbg !1093
  %237 = getelementptr inbounds i8, i8* %236, i64 %235, !dbg !1093
  %238 = bitcast i32* %12 to i8*, !dbg !1094
  %239 = load i64, i64* %16, align 8, !dbg !1095
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %237, i8* %238, i64 %239, i32 1, i1 false), !dbg !1094
  %240 = load i64, i64* %16, align 8, !dbg !1096
  %241 = load i64, i64* %18, align 8, !dbg !1097
  %242 = add i64 %241, %240, !dbg !1097
  store i64 %242, i64* %18, align 8, !dbg !1097
  %243 = load i64, i64* %18, align 8, !dbg !1098
  %244 = load i8*, i8** %11, align 8, !dbg !1099
  %245 = getelementptr inbounds i8, i8* %244, i64 %243, !dbg !1099
  %246 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1100
  %247 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %246, i32 0, i32 2, !dbg !1101
  %248 = bitcast %union.anon* %247 to i64*, !dbg !1102
  %249 = bitcast i64* %248 to i8*, !dbg !1103
  %250 = load i32, i32* %12, align 4, !dbg !1104
  %251 = sext i32 %250 to i64, !dbg !1104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* %249, i64 %251, i32 1, i1 false), !dbg !1103
  br label %287, !dbg !1105

; <label>:252:                                    ; preds = %149
  %253 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1106
  %254 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %253, i32 0, i32 2, !dbg !1108
  %255 = bitcast %union.anon* %254 to %struct.anon*, !dbg !1109
  %256 = getelementptr inbounds %struct.anon, %struct.anon* %255, i32 0, i32 0, !dbg !1110
  %257 = load i8*, i8** %256, align 8, !dbg !1110
  %258 = icmp ne i8* %257, null, !dbg !1106
  br i1 %258, label %259, label %283, !dbg !1111

; <label>:259:                                    ; preds = %252
  %260 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1112
  %261 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %260, i32 0, i32 2, !dbg !1114
  %262 = bitcast %union.anon* %261 to %struct.anon*, !dbg !1115
  %263 = getelementptr inbounds %struct.anon, %struct.anon* %262, i32 0, i32 1, !dbg !1116
  %264 = load i32, i32* %263, align 8, !dbg !1116
  store i32 %264, i32* %12, align 4, !dbg !1117
  %265 = load i64, i64* %18, align 8, !dbg !1118
  %266 = load i8*, i8** %11, align 8, !dbg !1119
  %267 = getelementptr inbounds i8, i8* %266, i64 %265, !dbg !1119
  %268 = bitcast i32* %12 to i8*, !dbg !1120
  %269 = load i64, i64* %16, align 8, !dbg !1121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %268, i64 %269, i32 1, i1 false), !dbg !1120
  %270 = load i64, i64* %16, align 8, !dbg !1122
  %271 = load i64, i64* %18, align 8, !dbg !1123
  %272 = add i64 %271, %270, !dbg !1123
  store i64 %272, i64* %18, align 8, !dbg !1123
  %273 = load i64, i64* %18, align 8, !dbg !1124
  %274 = load i8*, i8** %11, align 8, !dbg !1125
  %275 = getelementptr inbounds i8, i8* %274, i64 %273, !dbg !1125
  %276 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1126
  %277 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %276, i32 0, i32 2, !dbg !1127
  %278 = bitcast %union.anon* %277 to %struct.anon*, !dbg !1128
  %279 = getelementptr inbounds %struct.anon, %struct.anon* %278, i32 0, i32 0, !dbg !1129
  %280 = load i8*, i8** %279, align 8, !dbg !1129
  %281 = load i32, i32* %12, align 4, !dbg !1130
  %282 = sext i32 %281 to i64, !dbg !1130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %275, i8* %280, i64 %282, i32 1, i1 false), !dbg !1131
  br label %284, !dbg !1132

; <label>:283:                                    ; preds = %252
  store i64 3, i64* %9, align 8, !dbg !1133
  br label %298, !dbg !1135

; <label>:284:                                    ; preds = %259
  br label %287, !dbg !1136

; <label>:285:                                    ; preds = %149
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 386) #10, !dbg !1137
  unreachable, !dbg !1137

; <label>:286:                                    ; preds = %149
  store i64 6000, i64* %9, align 8, !dbg !1138
  br label %298, !dbg !1139

; <label>:287:                                    ; preds = %284, %234, %217, %191, %173
  %288 = load i32, i32* %12, align 4, !dbg !1140
  %289 = sext i32 %288 to i64, !dbg !1140
  %290 = load i64, i64* %18, align 8, !dbg !1141
  %291 = add i64 %290, %289, !dbg !1141
  store i64 %291, i64* %18, align 8, !dbg !1141
  %292 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1142
  %293 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %292, i32 0, i32 5, !dbg !1143
  %294 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %293, align 8, !dbg !1143
  store %struct.VixPropertyValue* %294, %struct.VixPropertyValue** %10, align 8, !dbg !1144
  br label %133, !dbg !1145, !llvm.loop !1019

; <label>:295:                                    ; preds = %133
  %296 = load i64, i64* %17, align 8, !dbg !1146
  %297 = load i64*, i64** %7, align 8, !dbg !1147
  store i64 %296, i64* %297, align 8, !dbg !1148
  br label %298, !dbg !1149

; <label>:298:                                    ; preds = %295, %286, %283, %126, %114, %113, %96, %29
  %299 = load i64, i64* %9, align 8, !dbg !1150
  %300 = icmp ne i64 0, %299, !dbg !1152
  br i1 %300, label %301, label %313, !dbg !1153

; <label>:301:                                    ; preds = %298
  %302 = load i8*, i8** %11, align 8, !dbg !1154
  call void @free(i8* %302) #8, !dbg !1156
  %303 = load i8**, i8*** %8, align 8, !dbg !1157
  %304 = icmp ne i8** null, %303, !dbg !1159
  br i1 %304, label %305, label %307, !dbg !1160

; <label>:305:                                    ; preds = %301
  %306 = load i8**, i8*** %8, align 8, !dbg !1161
  store i8* null, i8** %306, align 8, !dbg !1163
  br label %307, !dbg !1164

; <label>:307:                                    ; preds = %305, %301
  %308 = load i64*, i64** %7, align 8, !dbg !1165
  %309 = icmp ne i64* null, %308, !dbg !1167
  br i1 %309, label %310, label %312, !dbg !1168

; <label>:310:                                    ; preds = %307
  %311 = load i64*, i64** %7, align 8, !dbg !1169
  store i64 0, i64* %311, align 8, !dbg !1171
  br label %312, !dbg !1172

; <label>:312:                                    ; preds = %310, %307
  br label %313, !dbg !1173

; <label>:313:                                    ; preds = %312, %298
  %314 = load i64, i64* %9, align 8, !dbg !1174
  ret i64 %314, !dbg !1175
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare signext i8 @Unicode_IsBufferValid(i8*, i64, i32) #5

declare void @Log(i8*, ...) #5

declare i8* @VixMsg_MallocClientData(i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare i8* @Str_Strcpy(i8*, i8*, i64) #5

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #7

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_Deserialize(%struct.VixPropertyListImpl*, i8*, i64, i32) #0 !dbg !1176 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !1182, metadata !682), !dbg !1183
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1184, metadata !682), !dbg !1185
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1186, metadata !682), !dbg !1187
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1188, metadata !682), !dbg !1189
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1190
  %10 = load i8*, i8** %6, align 8, !dbg !1191
  %11 = load i64, i64* %7, align 8, !dbg !1192
  %12 = load i32, i32* %8, align 4, !dbg !1193
  %13 = call i64 @VixPropertyListDeserializeImpl(%struct.VixPropertyListImpl* %9, i8* %10, i64 %11, i8 signext 1, i32 %12), !dbg !1194
  ret i64 %13, !dbg !1195
}

; Function Attrs: nounwind uwtable
define internal i64 @VixPropertyListDeserializeImpl(%struct.VixPropertyListImpl*, i8*, i64, i8 signext, i32) #0 !dbg !1196 {
  %6 = alloca %struct.VixPropertyListImpl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.VixPropertyValue*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %6, metadata !1199, metadata !682), !dbg !1200
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1201, metadata !682), !dbg !1202
  store i64 %2, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1203, metadata !682), !dbg !1204
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1205, metadata !682), !dbg !1206
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1207, metadata !682), !dbg !1208
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1209, metadata !682), !dbg !1210
  store i64 0, i64* %11, align 8, !dbg !1210
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %12, metadata !1211, metadata !682), !dbg !1212
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %12, align 8, !dbg !1212
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1213, metadata !682), !dbg !1214
  store i64 0, i64* %13, align 8, !dbg !1214
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1215, metadata !682), !dbg !1216
  call void @llvm.dbg.declare(metadata i32** %15, metadata !1217, metadata !682), !dbg !1218
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1219, metadata !682), !dbg !1220
  call void @llvm.dbg.declare(metadata i64** %17, metadata !1221, metadata !682), !dbg !1222
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1223, metadata !682), !dbg !1224
  call void @llvm.dbg.declare(metadata i32** %19, metadata !1225, metadata !682), !dbg !1226
  call void @llvm.dbg.declare(metadata i32** %20, metadata !1227, metadata !682), !dbg !1228
  call void @llvm.dbg.declare(metadata i64* %21, metadata !1229, metadata !682), !dbg !1230
  call void @llvm.dbg.declare(metadata i64* %22, metadata !1231, metadata !682), !dbg !1232
  call void @llvm.dbg.declare(metadata i64* %23, metadata !1233, metadata !682), !dbg !1234
  call void @llvm.dbg.declare(metadata i64* %24, metadata !1235, metadata !682), !dbg !1236
  call void @llvm.dbg.declare(metadata i32** %25, metadata !1237, metadata !682), !dbg !1238
  call void @llvm.dbg.declare(metadata i8* %26, metadata !1239, metadata !682), !dbg !1240
  call void @llvm.dbg.declare(metadata i8* %27, metadata !1241, metadata !682), !dbg !1242
  %28 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !1243
  %29 = icmp eq %struct.VixPropertyListImpl* null, %28, !dbg !1245
  br i1 %29, label %33, label %30, !dbg !1246

; <label>:30:                                     ; preds = %5
  %31 = load i8*, i8** %7, align 8, !dbg !1247
  %32 = icmp eq i8* null, %31, !dbg !1249
  br i1 %32, label %33, label %34, !dbg !1250

; <label>:33:                                     ; preds = %30, %5
  store i64 3, i64* %11, align 8, !dbg !1252
  br label %259, !dbg !1254

; <label>:34:                                     ; preds = %30
  store i64 4, i64* %21, align 8, !dbg !1255
  store i64 4, i64* %22, align 8, !dbg !1256
  store i64 4, i64* %23, align 8, !dbg !1257
  %35 = load i64, i64* %21, align 8, !dbg !1258
  %36 = load i64, i64* %22, align 8, !dbg !1259
  %37 = add i64 %35, %36, !dbg !1260
  %38 = load i64, i64* %23, align 8, !dbg !1261
  %39 = add i64 %37, %38, !dbg !1262
  store i64 %39, i64* %24, align 8, !dbg !1263
  br label %40, !dbg !1264

; <label>:40:                                     ; preds = %252, %34
  %41 = load i64, i64* %13, align 8, !dbg !1265
  %42 = load i64, i64* %24, align 8, !dbg !1266
  %43 = add i64 %41, %42, !dbg !1267
  %44 = load i64, i64* %8, align 8, !dbg !1268
  %45 = icmp ult i64 %43, %44, !dbg !1269
  br i1 %45, label %46, label %258, !dbg !1270

; <label>:46:                                     ; preds = %40
  %47 = load i64, i64* %13, align 8, !dbg !1271
  %48 = load i8*, i8** %7, align 8, !dbg !1273
  %49 = getelementptr inbounds i8, i8* %48, i64 %47, !dbg !1273
  %50 = bitcast i8* %49 to i32*, !dbg !1274
  store i32* %50, i32** %19, align 8, !dbg !1275
  %51 = load i64, i64* %21, align 8, !dbg !1276
  %52 = load i64, i64* %13, align 8, !dbg !1277
  %53 = add i64 %52, %51, !dbg !1277
  store i64 %53, i64* %13, align 8, !dbg !1277
  %54 = load i64, i64* %13, align 8, !dbg !1278
  %55 = load i8*, i8** %7, align 8, !dbg !1279
  %56 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !1279
  %57 = bitcast i8* %56 to i32*, !dbg !1280
  store i32* %57, i32** %25, align 8, !dbg !1281
  %58 = load i64, i64* %22, align 8, !dbg !1282
  %59 = load i64, i64* %13, align 8, !dbg !1283
  %60 = add i64 %59, %58, !dbg !1283
  store i64 %60, i64* %13, align 8, !dbg !1283
  %61 = load i64, i64* %13, align 8, !dbg !1284
  %62 = load i8*, i8** %7, align 8, !dbg !1285
  %63 = getelementptr inbounds i8, i8* %62, i64 %61, !dbg !1285
  %64 = bitcast i8* %63 to i32*, !dbg !1286
  store i32* %64, i32** %20, align 8, !dbg !1287
  %65 = load i64, i64* %23, align 8, !dbg !1288
  %66 = load i64, i64* %13, align 8, !dbg !1289
  %67 = add i64 %66, %65, !dbg !1289
  store i64 %67, i64* %13, align 8, !dbg !1289
  %68 = load i32*, i32** %20, align 8, !dbg !1290
  %69 = load i32, i32* %68, align 4, !dbg !1292
  %70 = icmp slt i32 %69, 1, !dbg !1293
  br i1 %70, label %79, label %71, !dbg !1294

; <label>:71:                                     ; preds = %46
  %72 = load i32*, i32** %20, align 8, !dbg !1295
  %73 = load i32, i32* %72, align 4, !dbg !1297
  %74 = sext i32 %73 to i64, !dbg !1297
  %75 = load i64, i64* %13, align 8, !dbg !1298
  %76 = add i64 %74, %75, !dbg !1299
  %77 = load i64, i64* %8, align 8, !dbg !1300
  %78 = icmp ugt i64 %76, %77, !dbg !1301
  br i1 %78, label %79, label %80, !dbg !1302

; <label>:79:                                     ; preds = %71, %46
  store i64 6004, i64* %11, align 8, !dbg !1303
  br label %259, !dbg !1305

; <label>:80:                                     ; preds = %71
  %81 = load i8, i8* %9, align 1, !dbg !1306
  %82 = icmp ne i8 %81, 0, !dbg !1306
  br i1 %82, label %83, label %90, !dbg !1308

; <label>:83:                                     ; preds = %80
  %84 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !1309
  %85 = load i32*, i32** %19, align 8, !dbg !1311
  %86 = load i32, i32* %85, align 4, !dbg !1312
  %87 = load i32*, i32** %25, align 8, !dbg !1313
  %88 = load i32, i32* %87, align 4, !dbg !1314
  %89 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %84, i32 %86, i32 %88, i32 0, i8 signext 1, %struct.VixPropertyValue** %12), !dbg !1315
  store i64 %89, i64* %11, align 8, !dbg !1316
  br label %97, !dbg !1317

; <label>:90:                                     ; preds = %80
  %91 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !1318
  %92 = load i32*, i32** %19, align 8, !dbg !1320
  %93 = load i32, i32* %92, align 4, !dbg !1321
  %94 = load i32*, i32** %25, align 8, !dbg !1322
  %95 = load i32, i32* %94, align 4, !dbg !1323
  %96 = call i64 @VixPropertyListAppendProperty(%struct.VixPropertyListImpl* %91, i32 %93, i32 %95, %struct.VixPropertyValue** %12), !dbg !1324
  store i64 %96, i64* %11, align 8, !dbg !1325
  br label %97

; <label>:97:                                     ; preds = %90, %83
  %98 = load i64, i64* %11, align 8, !dbg !1326
  %99 = icmp ne i64 0, %98, !dbg !1328
  br i1 %99, label %100, label %101, !dbg !1329

; <label>:100:                                    ; preds = %97
  br label %259, !dbg !1330

; <label>:101:                                    ; preds = %97
  %102 = load i32*, i32** %25, align 8, !dbg !1332
  %103 = load i32, i32* %102, align 4, !dbg !1333
  switch i32 %103, label %251 [
    i32 1, label %104
    i32 2, label %119
    i32 3, label %181
    i32 5, label %195
    i32 6, label %210
    i32 7, label %250
  ], !dbg !1334

; <label>:104:                                    ; preds = %101
  %105 = load i32*, i32** %20, align 8, !dbg !1335
  %106 = load i32, i32* %105, align 4, !dbg !1338
  %107 = icmp ne i32 4, %106, !dbg !1339
  br i1 %107, label %108, label %109, !dbg !1340

; <label>:108:                                    ; preds = %104
  store i64 6004, i64* %11, align 8, !dbg !1341
  br label %259, !dbg !1343

; <label>:109:                                    ; preds = %104
  %110 = load i64, i64* %13, align 8, !dbg !1344
  %111 = load i8*, i8** %7, align 8, !dbg !1345
  %112 = getelementptr inbounds i8, i8* %111, i64 %110, !dbg !1345
  %113 = bitcast i8* %112 to i32*, !dbg !1346
  store i32* %113, i32** %15, align 8, !dbg !1347
  %114 = load i32*, i32** %15, align 8, !dbg !1348
  %115 = load i32, i32* %114, align 4, !dbg !1349
  %116 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1350
  %117 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %116, i32 0, i32 2, !dbg !1351
  %118 = bitcast %union.anon* %117 to i32*, !dbg !1352
  store i32 %115, i32* %118, align 8, !dbg !1353
  br label %252, !dbg !1354

; <label>:119:                                    ; preds = %101
  %120 = load i64, i64* %13, align 8, !dbg !1355
  %121 = load i8*, i8** %7, align 8, !dbg !1356
  %122 = getelementptr inbounds i8, i8* %121, i64 %120, !dbg !1356
  store i8* %122, i8** %14, align 8, !dbg !1357
  %123 = load i32*, i32** %20, align 8, !dbg !1358
  %124 = load i32, i32* %123, align 4, !dbg !1360
  %125 = sub nsw i32 %124, 1, !dbg !1361
  %126 = sext i32 %125 to i64, !dbg !1362
  %127 = load i8*, i8** %14, align 8, !dbg !1362
  %128 = getelementptr inbounds i8, i8* %127, i64 %126, !dbg !1362
  %129 = load i8, i8* %128, align 1, !dbg !1362
  %130 = sext i8 %129 to i32, !dbg !1362
  %131 = icmp ne i32 %130, 0, !dbg !1363
  br i1 %131, label %132, label %133, !dbg !1364

; <label>:132:                                    ; preds = %119
  store i64 6004, i64* %11, align 8, !dbg !1365
  br label %259, !dbg !1367

; <label>:133:                                    ; preds = %119
  store i8 0, i8* %27, align 1, !dbg !1368
  %134 = load i8*, i8** %14, align 8, !dbg !1369
  %135 = load i32*, i32** %20, align 8, !dbg !1371
  %136 = load i32, i32* %135, align 4, !dbg !1372
  %137 = sext i32 %136 to i64, !dbg !1372
  %138 = call signext i8 @Unicode_IsBufferValid(i8* %134, i64 %137, i32 0), !dbg !1373
  %139 = icmp ne i8 %138, 0, !dbg !1373
  br i1 %139, label %147, label %140, !dbg !1374

; <label>:140:                                    ; preds = %133
  %141 = load i32*, i32** %19, align 8, !dbg !1375
  %142 = load i32, i32* %141, align 4, !dbg !1377
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.VixPropertyListDeserializeImpl, i32 0, i32 0), i32 %142), !dbg !1378
  %143 = load i32, i32* %10, align 4, !dbg !1379
  switch i32 %143, label %146 [
    i32 0, label %144
    i32 1, label %145
  ], !dbg !1380

; <label>:144:                                    ; preds = %140
  store i64 27, i64* %11, align 8, !dbg !1381
  br label %259, !dbg !1383

; <label>:145:                                    ; preds = %140
  store i8 1, i8* %27, align 1, !dbg !1384
  br label %146, !dbg !1385

; <label>:146:                                    ; preds = %145, %140
  br label %147, !dbg !1386

; <label>:147:                                    ; preds = %146, %133
  %148 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1387
  %149 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %148, i32 0, i32 2, !dbg !1388
  %150 = bitcast %union.anon* %149 to i8**, !dbg !1389
  %151 = load i8*, i8** %150, align 8, !dbg !1389
  call void @free(i8* %151) #8, !dbg !1390
  %152 = load i8, i8* %27, align 1, !dbg !1391
  %153 = icmp ne i8 %152, 0, !dbg !1391
  br i1 %153, label %154, label %170, !dbg !1393

; <label>:154:                                    ; preds = %147
  %155 = load i8*, i8** %14, align 8, !dbg !1394
  %156 = load i32*, i32** %20, align 8, !dbg !1396
  %157 = load i32, i32* %156, align 4, !dbg !1397
  %158 = sext i32 %157 to i64, !dbg !1397
  %159 = call i8* @Unicode_EscapeBuffer(i8* %155, i64 %158, i32 0), !dbg !1398
  %160 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1399
  %161 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %160, i32 0, i32 2, !dbg !1400
  %162 = bitcast %union.anon* %161 to i8**, !dbg !1401
  store i8* %159, i8** %162, align 8, !dbg !1402
  %163 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1403
  %164 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %163, i32 0, i32 2, !dbg !1405
  %165 = bitcast %union.anon* %164 to i8**, !dbg !1406
  %166 = load i8*, i8** %165, align 8, !dbg !1406
  %167 = icmp eq i8* null, %166, !dbg !1407
  br i1 %167, label %168, label %169, !dbg !1408

; <label>:168:                                    ; preds = %154
  store i64 2, i64* %11, align 8, !dbg !1409
  br label %259, !dbg !1411

; <label>:169:                                    ; preds = %154
  br label %180, !dbg !1412

; <label>:170:                                    ; preds = %147
  %171 = load i8*, i8** %14, align 8, !dbg !1413
  %172 = call i8* @VixMsg_StrdupClientData(i8* %171, i8* %26), !dbg !1415
  %173 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1416
  %174 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %173, i32 0, i32 2, !dbg !1417
  %175 = bitcast %union.anon* %174 to i8**, !dbg !1418
  store i8* %172, i8** %175, align 8, !dbg !1419
  %176 = load i8, i8* %26, align 1, !dbg !1420
  %177 = icmp ne i8 %176, 0, !dbg !1420
  br i1 %177, label %178, label %179, !dbg !1422

; <label>:178:                                    ; preds = %170
  store i64 2, i64* %11, align 8, !dbg !1423
  br label %259, !dbg !1425

; <label>:179:                                    ; preds = %170
  br label %180

; <label>:180:                                    ; preds = %179, %169
  br label %252, !dbg !1426

; <label>:181:                                    ; preds = %101
  %182 = load i32*, i32** %20, align 8, !dbg !1427
  %183 = load i32, i32* %182, align 4, !dbg !1429
  %184 = icmp ne i32 1, %183, !dbg !1430
  br i1 %184, label %185, label %186, !dbg !1431

; <label>:185:                                    ; preds = %181
  store i64 6004, i64* %11, align 8, !dbg !1432
  br label %259, !dbg !1434

; <label>:186:                                    ; preds = %181
  %187 = load i64, i64* %13, align 8, !dbg !1435
  %188 = load i8*, i8** %7, align 8, !dbg !1436
  %189 = getelementptr inbounds i8, i8* %188, i64 %187, !dbg !1436
  store i8* %189, i8** %16, align 8, !dbg !1437
  %190 = load i8*, i8** %16, align 8, !dbg !1438
  %191 = load i8, i8* %190, align 1, !dbg !1439
  %192 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1440
  %193 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %192, i32 0, i32 2, !dbg !1441
  %194 = bitcast %union.anon* %193 to i8*, !dbg !1442
  store i8 %191, i8* %194, align 8, !dbg !1443
  br label %252, !dbg !1444

; <label>:195:                                    ; preds = %101
  %196 = load i32*, i32** %20, align 8, !dbg !1445
  %197 = load i32, i32* %196, align 4, !dbg !1447
  %198 = icmp ne i32 8, %197, !dbg !1448
  br i1 %198, label %199, label %200, !dbg !1449

; <label>:199:                                    ; preds = %195
  store i64 6004, i64* %11, align 8, !dbg !1450
  br label %259, !dbg !1452

; <label>:200:                                    ; preds = %195
  %201 = load i64, i64* %13, align 8, !dbg !1453
  %202 = load i8*, i8** %7, align 8, !dbg !1454
  %203 = getelementptr inbounds i8, i8* %202, i64 %201, !dbg !1454
  %204 = bitcast i8* %203 to i64*, !dbg !1455
  store i64* %204, i64** %17, align 8, !dbg !1456
  %205 = load i64*, i64** %17, align 8, !dbg !1457
  %206 = load i64, i64* %205, align 8, !dbg !1458
  %207 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1459
  %208 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %207, i32 0, i32 2, !dbg !1460
  %209 = bitcast %union.anon* %208 to i64*, !dbg !1461
  store i64 %206, i64* %209, align 8, !dbg !1462
  br label %252, !dbg !1463

; <label>:210:                                    ; preds = %101
  %211 = load i64, i64* %13, align 8, !dbg !1464
  %212 = load i8*, i8** %7, align 8, !dbg !1465
  %213 = getelementptr inbounds i8, i8* %212, i64 %211, !dbg !1465
  store i8* %213, i8** %18, align 8, !dbg !1466
  %214 = load i32*, i32** %20, align 8, !dbg !1467
  %215 = load i32, i32* %214, align 4, !dbg !1468
  %216 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1469
  %217 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %216, i32 0, i32 2, !dbg !1470
  %218 = bitcast %union.anon* %217 to %struct.anon*, !dbg !1471
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %218, i32 0, i32 1, !dbg !1472
  store i32 %215, i32* %219, align 8, !dbg !1473
  %220 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1474
  %221 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %220, i32 0, i32 2, !dbg !1475
  %222 = bitcast %union.anon* %221 to %struct.anon*, !dbg !1476
  %223 = getelementptr inbounds %struct.anon, %struct.anon* %222, i32 0, i32 0, !dbg !1477
  %224 = load i8*, i8** %223, align 8, !dbg !1477
  call void @free(i8* %224) #8, !dbg !1478
  %225 = load i32*, i32** %20, align 8, !dbg !1479
  %226 = load i32, i32* %225, align 4, !dbg !1480
  %227 = sext i32 %226 to i64, !dbg !1480
  %228 = call i8* @VixMsg_MallocClientData(i64 %227), !dbg !1481
  %229 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1482
  %230 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %229, i32 0, i32 2, !dbg !1483
  %231 = bitcast %union.anon* %230 to %struct.anon*, !dbg !1484
  %232 = getelementptr inbounds %struct.anon, %struct.anon* %231, i32 0, i32 0, !dbg !1485
  store i8* %228, i8** %232, align 8, !dbg !1486
  %233 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1487
  %234 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %233, i32 0, i32 2, !dbg !1489
  %235 = bitcast %union.anon* %234 to %struct.anon*, !dbg !1490
  %236 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 0, !dbg !1491
  %237 = load i8*, i8** %236, align 8, !dbg !1491
  %238 = icmp eq i8* null, %237, !dbg !1492
  br i1 %238, label %239, label %240, !dbg !1493

; <label>:239:                                    ; preds = %210
  store i64 2, i64* %11, align 8, !dbg !1494
  br label %259, !dbg !1496

; <label>:240:                                    ; preds = %210
  %241 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !1497
  %242 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %241, i32 0, i32 2, !dbg !1498
  %243 = bitcast %union.anon* %242 to %struct.anon*, !dbg !1499
  %244 = getelementptr inbounds %struct.anon, %struct.anon* %243, i32 0, i32 0, !dbg !1500
  %245 = load i8*, i8** %244, align 8, !dbg !1500
  %246 = load i8*, i8** %18, align 8, !dbg !1501
  %247 = load i32*, i32** %20, align 8, !dbg !1502
  %248 = load i32, i32* %247, align 4, !dbg !1503
  %249 = sext i32 %248 to i64, !dbg !1503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* %246, i64 %249, i32 1, i1 false), !dbg !1504
  br label %252, !dbg !1505

; <label>:250:                                    ; preds = %101
  store i64 6004, i64* %11, align 8, !dbg !1506
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.VixPropertyListDeserializeImpl, i32 0, i32 0), i32 687), !dbg !1507
  br label %259, !dbg !1508

; <label>:251:                                    ; preds = %101
  store i64 6000, i64* %11, align 8, !dbg !1509
  br label %259, !dbg !1510

; <label>:252:                                    ; preds = %240, %200, %186, %180, %109
  %253 = load i32*, i32** %20, align 8, !dbg !1511
  %254 = load i32, i32* %253, align 4, !dbg !1512
  %255 = sext i32 %254 to i64, !dbg !1512
  %256 = load i64, i64* %13, align 8, !dbg !1513
  %257 = add i64 %256, %255, !dbg !1513
  store i64 %257, i64* %13, align 8, !dbg !1513
  br label %40, !dbg !1514, !llvm.loop !1516

; <label>:258:                                    ; preds = %40
  br label %259, !dbg !1517

; <label>:259:                                    ; preds = %258, %251, %250, %239, %199, %185, %178, %168, %144, %132, %108, %100, %79, %33
  %260 = load i64, i64* %11, align 8, !dbg !1519
  %261 = icmp ne i64 0, %260, !dbg !1521
  br i1 %261, label %262, label %267, !dbg !1522

; <label>:262:                                    ; preds = %259
  %263 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !1523
  %264 = icmp ne %struct.VixPropertyListImpl* null, %263, !dbg !1525
  br i1 %264, label %265, label %267, !dbg !1526

; <label>:265:                                    ; preds = %262
  %266 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !1527
  call void @VixPropertyList_RemoveAllWithoutHandles(%struct.VixPropertyListImpl* %266), !dbg !1529
  br label %267, !dbg !1530

; <label>:267:                                    ; preds = %265, %262, %259
  %268 = load i64, i64* %11, align 8, !dbg !1531
  ret i64 %268, !dbg !1532
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_DeserializeNoClobber(%struct.VixPropertyListImpl*, i8*, i64, i32) #0 !dbg !1533 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !1534, metadata !682), !dbg !1535
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1536, metadata !682), !dbg !1537
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1538, metadata !682), !dbg !1539
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1540, metadata !682), !dbg !1541
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1542
  %10 = load i8*, i8** %6, align 8, !dbg !1543
  %11 = load i64, i64* %7, align 8, !dbg !1544
  %12 = load i32, i32* %8, align 4, !dbg !1545
  %13 = call i64 @VixPropertyListDeserializeImpl(%struct.VixPropertyListImpl* %9, i8* %10, i64 %11, i8 signext 0, i32 %12), !dbg !1546
  ret i64 %13, !dbg !1547
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl*, i32, i32, i32, i8 signext, %struct.VixPropertyValue**) #0 !dbg !1548 {
  %7 = alloca %struct.VixPropertyListImpl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.VixPropertyValue**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %7, metadata !1552, metadata !682), !dbg !1553
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1554, metadata !682), !dbg !1555
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1556, metadata !682), !dbg !1557
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1558, metadata !682), !dbg !1559
  store i8 %4, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1560, metadata !682), !dbg !1561
  store %struct.VixPropertyValue** %5, %struct.VixPropertyValue*** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue*** %12, metadata !1562, metadata !682), !dbg !1563
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1564, metadata !682), !dbg !1565
  store i64 0, i64* %13, align 8, !dbg !1565
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %14, metadata !1566, metadata !682), !dbg !1567
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %14, align 8, !dbg !1567
  %15 = load %struct.VixPropertyValue**, %struct.VixPropertyValue*** %12, align 8, !dbg !1568
  %16 = icmp eq %struct.VixPropertyValue** null, %15, !dbg !1570
  br i1 %16, label %17, label %18, !dbg !1571

; <label>:17:                                     ; preds = %6
  store i64 3, i64* %13, align 8, !dbg !1572
  br label %66, !dbg !1574

; <label>:18:                                     ; preds = %6
  %19 = load %struct.VixPropertyValue**, %struct.VixPropertyValue*** %12, align 8, !dbg !1575
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %19, align 8, !dbg !1576
  %20 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %7, align 8, !dbg !1577
  %21 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %20, i32 0, i32 0, !dbg !1578
  %22 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %21, align 8, !dbg !1578
  store %struct.VixPropertyValue* %22, %struct.VixPropertyValue** %14, align 8, !dbg !1579
  br label %23, !dbg !1580

; <label>:23:                                     ; preds = %52, %18
  %24 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %14, align 8, !dbg !1581
  %25 = icmp ne %struct.VixPropertyValue* null, %24, !dbg !1583
  br i1 %25, label %26, label %56, !dbg !1584

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %8, align 4, !dbg !1585
  %28 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %14, align 8, !dbg !1588
  %29 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %28, i32 0, i32 0, !dbg !1589
  %30 = load i32, i32* %29, align 8, !dbg !1589
  %31 = icmp eq i32 %27, %30, !dbg !1590
  br i1 %31, label %32, label %52, !dbg !1591

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %10, align 4, !dbg !1592
  %34 = icmp sgt i32 %33, 0, !dbg !1595
  br i1 %34, label %35, label %38, !dbg !1596

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %10, align 4, !dbg !1597
  %37 = add nsw i32 %36, -1, !dbg !1597
  store i32 %37, i32* %10, align 4, !dbg !1597
  br label %51, !dbg !1599

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %9, align 4, !dbg !1600
  %40 = icmp ne i32 0, %39, !dbg !1603
  br i1 %40, label %41, label %48, !dbg !1604

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %9, align 4, !dbg !1605
  %43 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %14, align 8, !dbg !1607
  %44 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %43, i32 0, i32 1, !dbg !1608
  %45 = load i32, i32* %44, align 4, !dbg !1608
  %46 = icmp ne i32 %42, %45, !dbg !1609
  br i1 %46, label %47, label %48, !dbg !1610

; <label>:47:                                     ; preds = %41
  store i64 2001, i64* %13, align 8, !dbg !1612
  br label %48, !dbg !1614

; <label>:48:                                     ; preds = %47, %41, %38
  %49 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %14, align 8, !dbg !1615
  %50 = load %struct.VixPropertyValue**, %struct.VixPropertyValue*** %12, align 8, !dbg !1616
  store %struct.VixPropertyValue* %49, %struct.VixPropertyValue** %50, align 8, !dbg !1617
  br label %66, !dbg !1618

; <label>:51:                                     ; preds = %35
  br label %52, !dbg !1619

; <label>:52:                                     ; preds = %51, %26
  %53 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %14, align 8, !dbg !1620
  %54 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %53, i32 0, i32 5, !dbg !1621
  %55 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %54, align 8, !dbg !1621
  store %struct.VixPropertyValue* %55, %struct.VixPropertyValue** %14, align 8, !dbg !1622
  br label %23, !dbg !1623, !llvm.loop !1625

; <label>:56:                                     ; preds = %23
  %57 = load i8, i8* %11, align 1, !dbg !1626
  %58 = icmp ne i8 %57, 0, !dbg !1626
  br i1 %58, label %60, label %59, !dbg !1628

; <label>:59:                                     ; preds = %56
  store i64 6000, i64* %13, align 8, !dbg !1629
  br label %66, !dbg !1631

; <label>:60:                                     ; preds = %56
  %61 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %7, align 8, !dbg !1632
  %62 = load i32, i32* %8, align 4, !dbg !1633
  %63 = load i32, i32* %9, align 4, !dbg !1634
  %64 = load %struct.VixPropertyValue**, %struct.VixPropertyValue*** %12, align 8, !dbg !1635
  %65 = call i64 @VixPropertyListAppendProperty(%struct.VixPropertyListImpl* %61, i32 %62, i32 %63, %struct.VixPropertyValue** %64), !dbg !1636
  store i64 %65, i64* %13, align 8, !dbg !1637
  br label %66, !dbg !1638

; <label>:66:                                     ; preds = %60, %59, %48, %17
  %67 = load i64, i64* %13, align 8, !dbg !1639
  ret i64 %67, !dbg !1640
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyListAppendProperty(%struct.VixPropertyListImpl*, i32, i32, %struct.VixPropertyValue**) #0 !dbg !1641 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.VixPropertyValue**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  %11 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !1644, metadata !682), !dbg !1645
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1646, metadata !682), !dbg !1647
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1648, metadata !682), !dbg !1649
  store %struct.VixPropertyValue** %3, %struct.VixPropertyValue*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue*** %8, metadata !1650, metadata !682), !dbg !1651
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1652, metadata !682), !dbg !1653
  store i64 0, i64* %9, align 8, !dbg !1653
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !1654, metadata !682), !dbg !1655
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %11, metadata !1656, metadata !682), !dbg !1657
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %11, align 8, !dbg !1657
  %12 = load %struct.VixPropertyValue**, %struct.VixPropertyValue*** %8, align 8, !dbg !1658
  %13 = icmp eq %struct.VixPropertyValue** null, %12, !dbg !1660
  br i1 %13, label %14, label %15, !dbg !1661

; <label>:14:                                     ; preds = %4
  store i64 3, i64* %9, align 8, !dbg !1662
  br label %92, !dbg !1664

; <label>:15:                                     ; preds = %4
  %16 = load %struct.VixPropertyValue**, %struct.VixPropertyValue*** %8, align 8, !dbg !1665
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %16, align 8, !dbg !1666
  %17 = call i8* @UtilSafeCalloc0(i64 1, i64 40), !dbg !1667
  %18 = bitcast i8* %17 to %struct.VixPropertyValue*, !dbg !1668
  store %struct.VixPropertyValue* %18, %struct.VixPropertyValue** %11, align 8, !dbg !1669
  %19 = load i32, i32* %7, align 4, !dbg !1670
  %20 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1671
  %21 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %20, i32 0, i32 1, !dbg !1672
  store i32 %19, i32* %21, align 4, !dbg !1673
  %22 = load i32, i32* %6, align 4, !dbg !1674
  %23 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1675
  %24 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %23, i32 0, i32 0, !dbg !1676
  store i32 %22, i32* %24, align 8, !dbg !1677
  %25 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1678
  %26 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %25, i32 0, i32 3, !dbg !1679
  store i8 1, i8* %26, align 8, !dbg !1680
  %27 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1681
  %28 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %27, i32 0, i32 4, !dbg !1682
  store i8 0, i8* %28, align 1, !dbg !1683
  %29 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1684
  %30 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %29, i32 0, i32 1, !dbg !1686
  %31 = load i32, i32* %30, align 4, !dbg !1686
  %32 = icmp eq i32 2, %31, !dbg !1687
  br i1 %32, label %33, label %37, !dbg !1688

; <label>:33:                                     ; preds = %15
  %34 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1689
  %35 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %34, i32 0, i32 2, !dbg !1691
  %36 = bitcast %union.anon* %35 to i8**, !dbg !1692
  store i8* null, i8** %36, align 8, !dbg !1693
  br label %58, !dbg !1694

; <label>:37:                                     ; preds = %15
  %38 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1695
  %39 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %38, i32 0, i32 1, !dbg !1698
  %40 = load i32, i32* %39, align 4, !dbg !1698
  %41 = icmp eq i32 6, %40, !dbg !1699
  br i1 %41, label %42, label %47, !dbg !1700

; <label>:42:                                     ; preds = %37
  %43 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1701
  %44 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %43, i32 0, i32 2, !dbg !1703
  %45 = bitcast %union.anon* %44 to %struct.anon*, !dbg !1704
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0, !dbg !1705
  store i8* null, i8** %46, align 8, !dbg !1706
  br label %57, !dbg !1707

; <label>:47:                                     ; preds = %37
  %48 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1708
  %49 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %48, i32 0, i32 1, !dbg !1711
  %50 = load i32, i32* %49, align 4, !dbg !1711
  %51 = icmp eq i32 4, %50, !dbg !1712
  br i1 %51, label %52, label %56, !dbg !1713

; <label>:52:                                     ; preds = %47
  %53 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1714
  %54 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %53, i32 0, i32 2, !dbg !1716
  %55 = bitcast %union.anon* %54 to i32*, !dbg !1717
  store i32 0, i32* %55, align 8, !dbg !1718
  br label %56, !dbg !1719

; <label>:56:                                     ; preds = %52, %47
  br label %57

; <label>:57:                                     ; preds = %56, %42
  br label %58

; <label>:58:                                     ; preds = %57, %33
  %59 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1720
  %60 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %59, i32 0, i32 0, !dbg !1721
  %61 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %60, align 8, !dbg !1721
  store %struct.VixPropertyValue* %61, %struct.VixPropertyValue** %10, align 8, !dbg !1722
  br label %62, !dbg !1723

; <label>:62:                                     ; preds = %72, %58
  %63 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1724
  %64 = icmp ne %struct.VixPropertyValue* null, %63, !dbg !1726
  br i1 %64, label %65, label %70, !dbg !1727

; <label>:65:                                     ; preds = %62
  %66 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1728
  %67 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %66, i32 0, i32 5, !dbg !1730
  %68 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %67, align 8, !dbg !1730
  %69 = icmp ne %struct.VixPropertyValue* null, %68, !dbg !1731
  br label %70

; <label>:70:                                     ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %76, !dbg !1732

; <label>:72:                                     ; preds = %70
  %73 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1734
  %74 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %73, i32 0, i32 5, !dbg !1736
  %75 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %74, align 8, !dbg !1736
  store %struct.VixPropertyValue* %75, %struct.VixPropertyValue** %10, align 8, !dbg !1737
  br label %62, !dbg !1738, !llvm.loop !1740

; <label>:76:                                     ; preds = %70
  %77 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1741
  %78 = icmp eq %struct.VixPropertyValue* null, %77, !dbg !1743
  br i1 %78, label %79, label %83, !dbg !1744

; <label>:79:                                     ; preds = %76
  %80 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1745
  %81 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1747
  %82 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %81, i32 0, i32 0, !dbg !1748
  store %struct.VixPropertyValue* %80, %struct.VixPropertyValue** %82, align 8, !dbg !1749
  br label %87, !dbg !1750

; <label>:83:                                     ; preds = %76
  %84 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1751
  %85 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1753
  %86 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %85, i32 0, i32 5, !dbg !1754
  store %struct.VixPropertyValue* %84, %struct.VixPropertyValue** %86, align 8, !dbg !1755
  br label %87

; <label>:87:                                     ; preds = %83, %79
  %88 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1756
  %89 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %88, i32 0, i32 5, !dbg !1757
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %89, align 8, !dbg !1758
  %90 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !1759
  %91 = load %struct.VixPropertyValue**, %struct.VixPropertyValue*** %8, align 8, !dbg !1760
  store %struct.VixPropertyValue* %90, %struct.VixPropertyValue** %91, align 8, !dbg !1761
  br label %92, !dbg !1762

; <label>:92:                                     ; preds = %87, %14
  %93 = load i64, i64* %9, align 8, !dbg !1763
  ret i64 %93, !dbg !1764
}

declare i8* @UtilSafeCalloc0(i64, i64) #5

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_GetString(%struct.VixPropertyListImpl*, i32, i32, i8**) #0 !dbg !1765 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !1768, metadata !682), !dbg !1769
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1770, metadata !682), !dbg !1771
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1772, metadata !682), !dbg !1773
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1774, metadata !682), !dbg !1775
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1776, metadata !682), !dbg !1777
  store i64 0, i64* %9, align 8, !dbg !1777
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !1778, metadata !682), !dbg !1779
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !1779
  %11 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1780
  %12 = icmp eq %struct.VixPropertyListImpl* null, %11, !dbg !1782
  br i1 %12, label %16, label %13, !dbg !1783

; <label>:13:                                     ; preds = %4
  %14 = load i8**, i8*** %8, align 8, !dbg !1784
  %15 = icmp eq i8** null, %14, !dbg !1786
  br i1 %15, label %16, label %17, !dbg !1787

; <label>:16:                                     ; preds = %13, %4
  store i64 3, i64* %9, align 8, !dbg !1788
  br label %40, !dbg !1790

; <label>:17:                                     ; preds = %13
  %18 = load i8**, i8*** %8, align 8, !dbg !1791
  store i8* null, i8** %18, align 8, !dbg !1792
  %19 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1793
  %20 = load i32, i32* %6, align 4, !dbg !1794
  %21 = load i32, i32* %7, align 4, !dbg !1795
  %22 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %19, i32 %20, i32 2, i32 %21, i8 signext 0, %struct.VixPropertyValue** %10), !dbg !1796
  store i64 %22, i64* %9, align 8, !dbg !1797
  %23 = load i64, i64* %9, align 8, !dbg !1798
  %24 = icmp ne i64 0, %23, !dbg !1800
  br i1 %24, label %25, label %26, !dbg !1801

; <label>:25:                                     ; preds = %17
  br label %40, !dbg !1802

; <label>:26:                                     ; preds = %17
  %27 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1804
  %28 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %27, i32 0, i32 2, !dbg !1806
  %29 = bitcast %union.anon* %28 to i8**, !dbg !1807
  %30 = load i8*, i8** %29, align 8, !dbg !1807
  %31 = icmp ne i8* null, %30, !dbg !1808
  br i1 %31, label %32, label %39, !dbg !1809

; <label>:32:                                     ; preds = %26
  %33 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1810
  %34 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %33, i32 0, i32 2, !dbg !1812
  %35 = bitcast %union.anon* %34 to i8**, !dbg !1813
  %36 = load i8*, i8** %35, align 8, !dbg !1813
  %37 = call i8* @UtilSafeStrdup0(i8* %36), !dbg !1814
  %38 = load i8**, i8*** %8, align 8, !dbg !1815
  store i8* %37, i8** %38, align 8, !dbg !1816
  br label %39, !dbg !1817

; <label>:39:                                     ; preds = %32, %26
  br label %40, !dbg !1818

; <label>:40:                                     ; preds = %39, %25, %16
  %41 = load i64, i64* %9, align 8, !dbg !1820
  ret i64 %41, !dbg !1821
}

declare i8* @UtilSafeStrdup0(i8*) #5

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetString(%struct.VixPropertyListImpl*, i32, i8*) #0 !dbg !1822 {
  %4 = alloca %struct.VixPropertyListImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %4, metadata !1825, metadata !682), !dbg !1826
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1827, metadata !682), !dbg !1828
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1829, metadata !682), !dbg !1830
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1831, metadata !682), !dbg !1832
  store i64 0, i64* %7, align 8, !dbg !1832
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %8, metadata !1833, metadata !682), !dbg !1834
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %8, align 8, !dbg !1834
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !1835
  %10 = icmp eq %struct.VixPropertyListImpl* null, %9, !dbg !1837
  br i1 %10, label %11, label %12, !dbg !1838

; <label>:11:                                     ; preds = %3
  store i64 3, i64* %7, align 8, !dbg !1839
  br label %25, !dbg !1841

; <label>:12:                                     ; preds = %3
  %13 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !1842
  %14 = load i32, i32* %5, align 4, !dbg !1843
  %15 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %13, i32 %14, i32 2, i32 0, i8 signext 1, %struct.VixPropertyValue** %8), !dbg !1844
  store i64 %15, i64* %7, align 8, !dbg !1845
  %16 = load i64, i64* %7, align 8, !dbg !1846
  %17 = icmp eq i64 0, %16, !dbg !1848
  br i1 %17, label %18, label %24, !dbg !1849

; <label>:18:                                     ; preds = %12
  %19 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !1850
  %20 = load i8*, i8** %6, align 8, !dbg !1852
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !1853
  %22 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %21, i32 0, i32 4, !dbg !1854
  %23 = load i8, i8* %22, align 1, !dbg !1854
  call void @VixPropertyListSetStringImpl(%struct.VixPropertyValue* %19, i8* %20, i8 signext %23), !dbg !1855
  br label %24, !dbg !1856

; <label>:24:                                     ; preds = %18, %12
  br label %25, !dbg !1857

; <label>:25:                                     ; preds = %24, %11
  %26 = load i64, i64* %7, align 8, !dbg !1859
  ret i64 %26, !dbg !1860
}

; Function Attrs: nounwind uwtable
define internal void @VixPropertyListSetStringImpl(%struct.VixPropertyValue*, i8*, i8 signext) #0 !dbg !1861 {
  %4 = alloca %struct.VixPropertyValue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.VixPropertyValue* %0, %struct.VixPropertyValue** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %4, metadata !1864, metadata !682), !dbg !1865
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1866, metadata !682), !dbg !1867
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1868, metadata !682), !dbg !1869
  %7 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1870
  %8 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %7, i32 0, i32 2, !dbg !1872
  %9 = bitcast %union.anon* %8 to i8**, !dbg !1873
  %10 = load i8*, i8** %9, align 8, !dbg !1873
  %11 = icmp ne i8* null, %10, !dbg !1874
  br i1 %11, label %12, label %30, !dbg !1875

; <label>:12:                                     ; preds = %3
  %13 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1876
  %14 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %13, i32 0, i32 4, !dbg !1879
  %15 = load i8, i8* %14, align 1, !dbg !1879
  %16 = icmp ne i8 %15, 0, !dbg !1876
  br i1 %16, label %17, label %22, !dbg !1880

; <label>:17:                                     ; preds = %12
  %18 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1881
  %19 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %18, i32 0, i32 2, !dbg !1883
  %20 = bitcast %union.anon* %19 to i8**, !dbg !1884
  %21 = load i8*, i8** %20, align 8, !dbg !1884
  call void @Util_ZeroString(i8* %21), !dbg !1885
  br label %22, !dbg !1886

; <label>:22:                                     ; preds = %17, %12
  %23 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1887
  %24 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %23, i32 0, i32 2, !dbg !1888
  %25 = bitcast %union.anon* %24 to i8**, !dbg !1889
  %26 = load i8*, i8** %25, align 8, !dbg !1889
  call void @free(i8* %26) #8, !dbg !1890
  %27 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1891
  %28 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %27, i32 0, i32 2, !dbg !1892
  %29 = bitcast %union.anon* %28 to i8**, !dbg !1893
  store i8* null, i8** %29, align 8, !dbg !1894
  br label %30, !dbg !1895

; <label>:30:                                     ; preds = %22, %3
  %31 = load i8*, i8** %5, align 8, !dbg !1896
  %32 = icmp ne i8* null, %31, !dbg !1898
  br i1 %32, label %33, label %39, !dbg !1899

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %5, align 8, !dbg !1900
  %35 = call i8* @UtilSafeStrdup0(i8* %34), !dbg !1902
  %36 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1903
  %37 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %36, i32 0, i32 2, !dbg !1904
  %38 = bitcast %union.anon* %37 to i8**, !dbg !1905
  store i8* %35, i8** %38, align 8, !dbg !1906
  br label %39, !dbg !1907

; <label>:39:                                     ; preds = %33, %30
  %40 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1908
  %41 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %40, i32 0, i32 3, !dbg !1909
  store i8 1, i8* %41, align 8, !dbg !1910
  %42 = load i8, i8* %6, align 1, !dbg !1911
  %43 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !1912
  %44 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %43, i32 0, i32 4, !dbg !1913
  store i8 %42, i8* %44, align 1, !dbg !1914
  ret void, !dbg !1915
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetStringSensitive(%struct.VixPropertyListImpl*, i32, i8*) #0 !dbg !1916 {
  %4 = alloca %struct.VixPropertyListImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %4, metadata !1917, metadata !682), !dbg !1918
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1919, metadata !682), !dbg !1920
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1921, metadata !682), !dbg !1922
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1923, metadata !682), !dbg !1924
  store i64 0, i64* %7, align 8, !dbg !1924
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %8, metadata !1925, metadata !682), !dbg !1926
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %8, align 8, !dbg !1926
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !1927
  %10 = icmp eq %struct.VixPropertyListImpl* null, %9, !dbg !1929
  br i1 %10, label %11, label %12, !dbg !1930

; <label>:11:                                     ; preds = %3
  store i64 3, i64* %7, align 8, !dbg !1931
  br label %22, !dbg !1933

; <label>:12:                                     ; preds = %3
  %13 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !1934
  %14 = load i32, i32* %5, align 4, !dbg !1935
  %15 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %13, i32 %14, i32 2, i32 0, i8 signext 1, %struct.VixPropertyValue** %8), !dbg !1936
  store i64 %15, i64* %7, align 8, !dbg !1937
  %16 = load i64, i64* %7, align 8, !dbg !1938
  %17 = icmp eq i64 0, %16, !dbg !1940
  br i1 %17, label %18, label %21, !dbg !1941

; <label>:18:                                     ; preds = %12
  %19 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !1942
  %20 = load i8*, i8** %6, align 8, !dbg !1944
  call void @VixPropertyListSetStringImpl(%struct.VixPropertyValue* %19, i8* %20, i8 signext 1), !dbg !1945
  br label %21, !dbg !1946

; <label>:21:                                     ; preds = %18, %12
  br label %22, !dbg !1947

; <label>:22:                                     ; preds = %21, %11
  %23 = load i64, i64* %7, align 8, !dbg !1949
  ret i64 %23, !dbg !1950
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_GetInteger(%struct.VixPropertyListImpl*, i32, i32, i32*) #0 !dbg !1951 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !1954, metadata !682), !dbg !1955
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1956, metadata !682), !dbg !1957
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1958, metadata !682), !dbg !1959
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1960, metadata !682), !dbg !1961
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1962, metadata !682), !dbg !1963
  store i64 0, i64* %9, align 8, !dbg !1963
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !1964, metadata !682), !dbg !1965
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !1965
  %11 = load i32*, i32** %8, align 8, !dbg !1966
  %12 = icmp eq i32* null, %11, !dbg !1968
  br i1 %12, label %16, label %13, !dbg !1969

; <label>:13:                                     ; preds = %4
  %14 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1970
  %15 = icmp eq %struct.VixPropertyListImpl* null, %14, !dbg !1972
  br i1 %15, label %16, label %17, !dbg !1973

; <label>:16:                                     ; preds = %13, %4
  store i64 3, i64* %9, align 8, !dbg !1974
  br label %31, !dbg !1976

; <label>:17:                                     ; preds = %13
  %18 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !1977
  %19 = load i32, i32* %6, align 4, !dbg !1978
  %20 = load i32, i32* %7, align 4, !dbg !1979
  %21 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %18, i32 %19, i32 1, i32 %20, i8 signext 0, %struct.VixPropertyValue** %10), !dbg !1980
  store i64 %21, i64* %9, align 8, !dbg !1981
  %22 = load i64, i64* %9, align 8, !dbg !1982
  %23 = icmp ne i64 0, %22, !dbg !1984
  br i1 %23, label %24, label %25, !dbg !1985

; <label>:24:                                     ; preds = %17
  br label %31, !dbg !1986

; <label>:25:                                     ; preds = %17
  %26 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !1988
  %27 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %26, i32 0, i32 2, !dbg !1989
  %28 = bitcast %union.anon* %27 to i32*, !dbg !1990
  %29 = load i32, i32* %28, align 8, !dbg !1990
  %30 = load i32*, i32** %8, align 8, !dbg !1991
  store i32 %29, i32* %30, align 4, !dbg !1992
  br label %31, !dbg !1993

; <label>:31:                                     ; preds = %25, %24, %16
  %32 = load i64, i64* %9, align 8, !dbg !1994
  ret i64 %32, !dbg !1995
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetInteger(%struct.VixPropertyListImpl*, i32, i32) #0 !dbg !1996 {
  %4 = alloca %struct.VixPropertyListImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %4, metadata !1999, metadata !682), !dbg !2000
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2001, metadata !682), !dbg !2002
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2003, metadata !682), !dbg !2004
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2005, metadata !682), !dbg !2006
  store i64 0, i64* %7, align 8, !dbg !2006
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %8, metadata !2007, metadata !682), !dbg !2008
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %8, align 8, !dbg !2008
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2009
  %10 = icmp eq %struct.VixPropertyListImpl* null, %9, !dbg !2011
  br i1 %10, label %11, label %12, !dbg !2012

; <label>:11:                                     ; preds = %3
  store i64 3, i64* %7, align 8, !dbg !2013
  br label %26, !dbg !2015

; <label>:12:                                     ; preds = %3
  %13 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2016
  %14 = load i32, i32* %5, align 4, !dbg !2017
  %15 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %13, i32 %14, i32 1, i32 0, i8 signext 1, %struct.VixPropertyValue** %8), !dbg !2018
  store i64 %15, i64* %7, align 8, !dbg !2019
  %16 = load i64, i64* %7, align 8, !dbg !2020
  %17 = icmp ne i64 0, %16, !dbg !2022
  br i1 %17, label %18, label %19, !dbg !2023

; <label>:18:                                     ; preds = %12
  br label %26, !dbg !2024

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %6, align 4, !dbg !2026
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2027
  %22 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %21, i32 0, i32 2, !dbg !2028
  %23 = bitcast %union.anon* %22 to i32*, !dbg !2029
  store i32 %20, i32* %23, align 8, !dbg !2030
  %24 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2031
  %25 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %24, i32 0, i32 3, !dbg !2032
  store i8 1, i8* %25, align 8, !dbg !2033
  br label %26, !dbg !2031

; <label>:26:                                     ; preds = %19, %18, %11
  %27 = load i64, i64* %7, align 8, !dbg !2034
  ret i64 %27, !dbg !2035
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_GetBool(%struct.VixPropertyListImpl*, i32, i32, i8*) #0 !dbg !2036 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !2039, metadata !682), !dbg !2040
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2041, metadata !682), !dbg !2042
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2043, metadata !682), !dbg !2044
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2045, metadata !682), !dbg !2046
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2047, metadata !682), !dbg !2048
  store i64 0, i64* %9, align 8, !dbg !2048
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !2049, metadata !682), !dbg !2050
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !2050
  %11 = load i8*, i8** %8, align 8, !dbg !2051
  %12 = icmp eq i8* null, %11, !dbg !2053
  br i1 %12, label %16, label %13, !dbg !2054

; <label>:13:                                     ; preds = %4
  %14 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2055
  %15 = icmp eq %struct.VixPropertyListImpl* null, %14, !dbg !2057
  br i1 %15, label %16, label %17, !dbg !2058

; <label>:16:                                     ; preds = %13, %4
  store i64 3, i64* %9, align 8, !dbg !2059
  br label %35, !dbg !2061

; <label>:17:                                     ; preds = %13
  %18 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2062
  %19 = load i32, i32* %6, align 4, !dbg !2063
  %20 = load i32, i32* %7, align 4, !dbg !2064
  %21 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %18, i32 %19, i32 3, i32 %20, i8 signext 0, %struct.VixPropertyValue** %10), !dbg !2065
  store i64 %21, i64* %9, align 8, !dbg !2066
  %22 = load i64, i64* %9, align 8, !dbg !2067
  %23 = icmp ne i64 0, %22, !dbg !2069
  br i1 %23, label %24, label %25, !dbg !2070

; <label>:24:                                     ; preds = %17
  br label %35, !dbg !2071

; <label>:25:                                     ; preds = %17
  %26 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !2073
  %27 = icmp eq %struct.VixPropertyValue* null, %26, !dbg !2075
  br i1 %27, label %28, label %29, !dbg !2076

; <label>:28:                                     ; preds = %25
  br label %35, !dbg !2077

; <label>:29:                                     ; preds = %25
  %30 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !2079
  %31 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %30, i32 0, i32 2, !dbg !2080
  %32 = bitcast %union.anon* %31 to i8*, !dbg !2081
  %33 = load i8, i8* %32, align 8, !dbg !2081
  %34 = load i8*, i8** %8, align 8, !dbg !2082
  store i8 %33, i8* %34, align 1, !dbg !2083
  br label %35, !dbg !2084

; <label>:35:                                     ; preds = %29, %28, %24, %16
  %36 = load i64, i64* %9, align 8, !dbg !2085
  ret i64 %36, !dbg !2086
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetBool(%struct.VixPropertyListImpl*, i32, i8 signext) #0 !dbg !2087 {
  %4 = alloca %struct.VixPropertyListImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %4, metadata !2090, metadata !682), !dbg !2091
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2092, metadata !682), !dbg !2093
  store i8 %2, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2094, metadata !682), !dbg !2095
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2096, metadata !682), !dbg !2097
  store i64 0, i64* %7, align 8, !dbg !2097
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %8, metadata !2098, metadata !682), !dbg !2099
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %8, align 8, !dbg !2099
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2100
  %10 = icmp eq %struct.VixPropertyListImpl* null, %9, !dbg !2102
  br i1 %10, label %11, label %12, !dbg !2103

; <label>:11:                                     ; preds = %3
  store i64 3, i64* %7, align 8, !dbg !2104
  br label %26, !dbg !2106

; <label>:12:                                     ; preds = %3
  %13 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2107
  %14 = load i32, i32* %5, align 4, !dbg !2108
  %15 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %13, i32 %14, i32 3, i32 0, i8 signext 1, %struct.VixPropertyValue** %8), !dbg !2109
  store i64 %15, i64* %7, align 8, !dbg !2110
  %16 = load i64, i64* %7, align 8, !dbg !2111
  %17 = icmp ne i64 0, %16, !dbg !2113
  br i1 %17, label %18, label %19, !dbg !2114

; <label>:18:                                     ; preds = %12
  br label %26, !dbg !2115

; <label>:19:                                     ; preds = %12
  %20 = load i8, i8* %6, align 1, !dbg !2117
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2118
  %22 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %21, i32 0, i32 2, !dbg !2119
  %23 = bitcast %union.anon* %22 to i8*, !dbg !2120
  store i8 %20, i8* %23, align 8, !dbg !2121
  %24 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2122
  %25 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %24, i32 0, i32 3, !dbg !2123
  store i8 1, i8* %25, align 8, !dbg !2124
  br label %26, !dbg !2122

; <label>:26:                                     ; preds = %19, %18, %11
  %27 = load i64, i64* %7, align 8, !dbg !2125
  ret i64 %27, !dbg !2126
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_GetInt64(%struct.VixPropertyListImpl*, i32, i32, i64*) #0 !dbg !2127 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !2130, metadata !682), !dbg !2131
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2132, metadata !682), !dbg !2133
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2134, metadata !682), !dbg !2135
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !2136, metadata !682), !dbg !2137
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2138, metadata !682), !dbg !2139
  store i64 0, i64* %9, align 8, !dbg !2139
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !2140, metadata !682), !dbg !2141
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !2141
  %11 = load i64*, i64** %8, align 8, !dbg !2142
  %12 = icmp eq i64* null, %11, !dbg !2144
  br i1 %12, label %16, label %13, !dbg !2145

; <label>:13:                                     ; preds = %4
  %14 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2146
  %15 = icmp eq %struct.VixPropertyListImpl* null, %14, !dbg !2148
  br i1 %15, label %16, label %17, !dbg !2149

; <label>:16:                                     ; preds = %13, %4
  store i64 3, i64* %9, align 8, !dbg !2150
  br label %31, !dbg !2152

; <label>:17:                                     ; preds = %13
  %18 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2153
  %19 = load i32, i32* %6, align 4, !dbg !2154
  %20 = load i32, i32* %7, align 4, !dbg !2155
  %21 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %18, i32 %19, i32 5, i32 %20, i8 signext 0, %struct.VixPropertyValue** %10), !dbg !2156
  store i64 %21, i64* %9, align 8, !dbg !2157
  %22 = load i64, i64* %9, align 8, !dbg !2158
  %23 = icmp ne i64 0, %22, !dbg !2160
  br i1 %23, label %24, label %25, !dbg !2161

; <label>:24:                                     ; preds = %17
  br label %31, !dbg !2162

; <label>:25:                                     ; preds = %17
  %26 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !2164
  %27 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %26, i32 0, i32 2, !dbg !2165
  %28 = bitcast %union.anon* %27 to i64*, !dbg !2166
  %29 = load i64, i64* %28, align 8, !dbg !2166
  %30 = load i64*, i64** %8, align 8, !dbg !2167
  store i64 %29, i64* %30, align 8, !dbg !2168
  br label %31, !dbg !2169

; <label>:31:                                     ; preds = %25, %24, %16
  %32 = load i64, i64* %9, align 8, !dbg !2170
  ret i64 %32, !dbg !2171
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetInt64(%struct.VixPropertyListImpl*, i32, i64) #0 !dbg !2172 {
  %4 = alloca %struct.VixPropertyListImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %4, metadata !2175, metadata !682), !dbg !2176
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2177, metadata !682), !dbg !2178
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2179, metadata !682), !dbg !2180
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2181, metadata !682), !dbg !2182
  store i64 0, i64* %7, align 8, !dbg !2182
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %8, metadata !2183, metadata !682), !dbg !2184
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %8, align 8, !dbg !2184
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2185
  %10 = icmp eq %struct.VixPropertyListImpl* null, %9, !dbg !2187
  br i1 %10, label %11, label %12, !dbg !2188

; <label>:11:                                     ; preds = %3
  store i64 3, i64* %7, align 8, !dbg !2189
  br label %26, !dbg !2191

; <label>:12:                                     ; preds = %3
  %13 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2192
  %14 = load i32, i32* %5, align 4, !dbg !2193
  %15 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %13, i32 %14, i32 5, i32 0, i8 signext 1, %struct.VixPropertyValue** %8), !dbg !2194
  store i64 %15, i64* %7, align 8, !dbg !2195
  %16 = load i64, i64* %7, align 8, !dbg !2196
  %17 = icmp ne i64 0, %16, !dbg !2198
  br i1 %17, label %18, label %19, !dbg !2199

; <label>:18:                                     ; preds = %12
  br label %26, !dbg !2200

; <label>:19:                                     ; preds = %12
  %20 = load i64, i64* %6, align 8, !dbg !2202
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2203
  %22 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %21, i32 0, i32 2, !dbg !2204
  %23 = bitcast %union.anon* %22 to i64*, !dbg !2205
  store i64 %20, i64* %23, align 8, !dbg !2206
  %24 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2207
  %25 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %24, i32 0, i32 3, !dbg !2208
  store i8 1, i8* %25, align 8, !dbg !2209
  br label %26, !dbg !2207

; <label>:26:                                     ; preds = %19, %18, %11
  %27 = load i64, i64* %7, align 8, !dbg !2210
  ret i64 %27, !dbg !2211
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_GetBlob(%struct.VixPropertyListImpl*, i32, i32, i32*, i8**) #0 !dbg !2212 {
  %6 = alloca %struct.VixPropertyListImpl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %6, metadata !2216, metadata !682), !dbg !2217
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2218, metadata !682), !dbg !2219
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2220, metadata !682), !dbg !2221
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !2222, metadata !682), !dbg !2223
  store i8** %4, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !2224, metadata !682), !dbg !2225
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2226, metadata !682), !dbg !2227
  store i64 0, i64* %11, align 8, !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %12, metadata !2228, metadata !682), !dbg !2229
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %12, align 8, !dbg !2229
  %13 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !2230
  %14 = icmp eq %struct.VixPropertyListImpl* null, %13, !dbg !2232
  br i1 %14, label %21, label %15, !dbg !2233

; <label>:15:                                     ; preds = %5
  %16 = load i32*, i32** %9, align 8, !dbg !2234
  %17 = icmp eq i32* null, %16, !dbg !2236
  br i1 %17, label %21, label %18, !dbg !2237

; <label>:18:                                     ; preds = %15
  %19 = load i8**, i8*** %10, align 8, !dbg !2238
  %20 = icmp eq i8** null, %19, !dbg !2240
  br i1 %20, label %21, label %22, !dbg !2241

; <label>:21:                                     ; preds = %18, %15, %5
  store i64 3, i64* %11, align 8, !dbg !2242
  br label %75, !dbg !2244

; <label>:22:                                     ; preds = %18
  %23 = load i32*, i32** %9, align 8, !dbg !2245
  store i32 0, i32* %23, align 4, !dbg !2246
  %24 = load i8**, i8*** %10, align 8, !dbg !2247
  store i8* null, i8** %24, align 8, !dbg !2248
  %25 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %6, align 8, !dbg !2249
  %26 = load i32, i32* %7, align 4, !dbg !2250
  %27 = load i32, i32* %8, align 4, !dbg !2251
  %28 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %25, i32 %26, i32 6, i32 %27, i8 signext 0, %struct.VixPropertyValue** %12), !dbg !2252
  store i64 %28, i64* %11, align 8, !dbg !2253
  %29 = load i64, i64* %11, align 8, !dbg !2254
  %30 = icmp ne i64 0, %29, !dbg !2256
  br i1 %30, label %31, label %32, !dbg !2257

; <label>:31:                                     ; preds = %22
  br label %75, !dbg !2258

; <label>:32:                                     ; preds = %22
  %33 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !2260
  %34 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %33, i32 0, i32 2, !dbg !2262
  %35 = bitcast %union.anon* %34 to %struct.anon*, !dbg !2263
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1, !dbg !2264
  %37 = load i32, i32* %36, align 8, !dbg !2264
  %38 = icmp sgt i32 %37, 0, !dbg !2265
  br i1 %38, label %39, label %74, !dbg !2266

; <label>:39:                                     ; preds = %32
  %40 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !2267
  %41 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %40, i32 0, i32 2, !dbg !2269
  %42 = bitcast %union.anon* %41 to %struct.anon*, !dbg !2270
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 0, !dbg !2271
  %44 = load i8*, i8** %43, align 8, !dbg !2271
  %45 = icmp ne i8* null, %44, !dbg !2272
  br i1 %45, label %46, label %74, !dbg !2273

; <label>:46:                                     ; preds = %39
  %47 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !2275
  %48 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %47, i32 0, i32 2, !dbg !2277
  %49 = bitcast %union.anon* %48 to %struct.anon*, !dbg !2278
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 1, !dbg !2279
  %51 = load i32, i32* %50, align 8, !dbg !2279
  %52 = load i32*, i32** %9, align 8, !dbg !2280
  store i32 %51, i32* %52, align 4, !dbg !2281
  %53 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !2282
  %54 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %53, i32 0, i32 2, !dbg !2283
  %55 = bitcast %union.anon* %54 to %struct.anon*, !dbg !2284
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 1, !dbg !2285
  %57 = load i32, i32* %56, align 8, !dbg !2285
  %58 = sext i32 %57 to i64, !dbg !2286
  %59 = call i8* @UtilSafeMalloc0(i64 %58), !dbg !2287
  %60 = load i8**, i8*** %10, align 8, !dbg !2288
  store i8* %59, i8** %60, align 8, !dbg !2289
  %61 = load i8**, i8*** %10, align 8, !dbg !2290
  %62 = load i8*, i8** %61, align 8, !dbg !2291
  %63 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !2292
  %64 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %63, i32 0, i32 2, !dbg !2293
  %65 = bitcast %union.anon* %64 to %struct.anon*, !dbg !2294
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0, !dbg !2295
  %67 = load i8*, i8** %66, align 8, !dbg !2295
  %68 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %12, align 8, !dbg !2296
  %69 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %68, i32 0, i32 2, !dbg !2297
  %70 = bitcast %union.anon* %69 to %struct.anon*, !dbg !2298
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 1, !dbg !2299
  %72 = load i32, i32* %71, align 8, !dbg !2299
  %73 = sext i32 %72 to i64, !dbg !2296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %67, i64 %73, i32 1, i1 false), !dbg !2300
  br label %74, !dbg !2301

; <label>:74:                                     ; preds = %46, %39, %32
  br label %75, !dbg !2302

; <label>:75:                                     ; preds = %74, %31, %21
  %76 = load i64, i64* %11, align 8, !dbg !2304
  ret i64 %76, !dbg !2305
}

declare i8* @UtilSafeMalloc0(i64) #5

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetBlob(%struct.VixPropertyListImpl*, i32, i32, i8*) #0 !dbg !2306 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !2311, metadata !682), !dbg !2312
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2313, metadata !682), !dbg !2314
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2315, metadata !682), !dbg !2316
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2317, metadata !682), !dbg !2318
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2319, metadata !682), !dbg !2320
  store i64 0, i64* %9, align 8, !dbg !2320
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !2321, metadata !682), !dbg !2322
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !2322
  %11 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2323
  %12 = icmp eq %struct.VixPropertyListImpl* null, %11, !dbg !2325
  br i1 %12, label %13, label %14, !dbg !2326

; <label>:13:                                     ; preds = %4
  store i64 3, i64* %9, align 8, !dbg !2327
  br label %28, !dbg !2329

; <label>:14:                                     ; preds = %4
  %15 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2330
  %16 = load i32, i32* %6, align 4, !dbg !2331
  %17 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %15, i32 %16, i32 6, i32 0, i8 signext 1, %struct.VixPropertyValue** %10), !dbg !2332
  store i64 %17, i64* %9, align 8, !dbg !2333
  %18 = load i64, i64* %9, align 8, !dbg !2334
  %19 = icmp eq i64 0, %18, !dbg !2336
  br i1 %19, label %20, label %27, !dbg !2337

; <label>:20:                                     ; preds = %14
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !2338
  %22 = load i32, i32* %7, align 4, !dbg !2340
  %23 = load i8*, i8** %8, align 8, !dbg !2341
  %24 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !2342
  %25 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %24, i32 0, i32 4, !dbg !2343
  %26 = load i8, i8* %25, align 1, !dbg !2343
  call void @VixPropertyListSetBlobImpl(%struct.VixPropertyValue* %21, i32 %22, i8* %23, i8 signext %26), !dbg !2344
  br label %27, !dbg !2345

; <label>:27:                                     ; preds = %20, %14
  br label %28, !dbg !2346

; <label>:28:                                     ; preds = %27, %13
  %29 = load i64, i64* %9, align 8, !dbg !2348
  ret i64 %29, !dbg !2349
}

; Function Attrs: nounwind uwtable
define internal void @VixPropertyListSetBlobImpl(%struct.VixPropertyValue*, i32, i8*, i8 signext) #0 !dbg !2350 {
  %5 = alloca %struct.VixPropertyValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.VixPropertyValue* %0, %struct.VixPropertyValue** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %5, metadata !2353, metadata !682), !dbg !2354
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2355, metadata !682), !dbg !2356
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2357, metadata !682), !dbg !2358
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !2359, metadata !682), !dbg !2360
  %9 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2361
  %10 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %9, i32 0, i32 2, !dbg !2363
  %11 = bitcast %union.anon* %10 to %struct.anon*, !dbg !2364
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0, !dbg !2365
  %13 = load i8*, i8** %12, align 8, !dbg !2365
  %14 = icmp ne i8* null, %13, !dbg !2366
  br i1 %14, label %15, label %42, !dbg !2367

; <label>:15:                                     ; preds = %4
  %16 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2368
  %17 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %16, i32 0, i32 4, !dbg !2371
  %18 = load i8, i8* %17, align 1, !dbg !2371
  %19 = icmp ne i8 %18, 0, !dbg !2368
  br i1 %19, label %20, label %32, !dbg !2372

; <label>:20:                                     ; preds = %15
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2373
  %22 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %21, i32 0, i32 2, !dbg !2375
  %23 = bitcast %union.anon* %22 to %struct.anon*, !dbg !2376
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0, !dbg !2377
  %25 = load i8*, i8** %24, align 8, !dbg !2377
  %26 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2378
  %27 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %26, i32 0, i32 2, !dbg !2379
  %28 = bitcast %union.anon* %27 to %struct.anon*, !dbg !2380
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 1, !dbg !2381
  %30 = load i32, i32* %29, align 8, !dbg !2381
  %31 = sext i32 %30 to i64, !dbg !2378
  call void @Util_Zero(i8* %25, i64 %31), !dbg !2382
  br label %32, !dbg !2383

; <label>:32:                                     ; preds = %20, %15
  %33 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2384
  %34 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %33, i32 0, i32 2, !dbg !2385
  %35 = bitcast %union.anon* %34 to %struct.anon*, !dbg !2386
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0, !dbg !2387
  %37 = load i8*, i8** %36, align 8, !dbg !2387
  call void @free(i8* %37) #8, !dbg !2388
  %38 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2389
  %39 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %38, i32 0, i32 2, !dbg !2390
  %40 = bitcast %union.anon* %39 to %struct.anon*, !dbg !2391
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0, !dbg !2392
  store i8* null, i8** %41, align 8, !dbg !2393
  br label %42, !dbg !2394

; <label>:42:                                     ; preds = %32, %4
  %43 = load i32, i32* %6, align 4, !dbg !2395
  %44 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2396
  %45 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %44, i32 0, i32 2, !dbg !2397
  %46 = bitcast %union.anon* %45 to %struct.anon*, !dbg !2398
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 1, !dbg !2399
  store i32 %43, i32* %47, align 8, !dbg !2400
  %48 = load i8*, i8** %7, align 8, !dbg !2401
  %49 = icmp ne i8* null, %48, !dbg !2403
  br i1 %49, label %50, label %69, !dbg !2404

; <label>:50:                                     ; preds = %42
  %51 = load i32, i32* %6, align 4, !dbg !2405
  %52 = icmp sgt i32 %51, 0, !dbg !2407
  br i1 %52, label %53, label %69, !dbg !2408

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %6, align 4, !dbg !2409
  %55 = sext i32 %54 to i64, !dbg !2411
  %56 = call i8* @UtilSafeMalloc0(i64 %55), !dbg !2412
  %57 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2413
  %58 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %57, i32 0, i32 2, !dbg !2414
  %59 = bitcast %union.anon* %58 to %struct.anon*, !dbg !2415
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0, !dbg !2416
  store i8* %56, i8** %60, align 8, !dbg !2417
  %61 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2418
  %62 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %61, i32 0, i32 2, !dbg !2419
  %63 = bitcast %union.anon* %62 to %struct.anon*, !dbg !2420
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 0, !dbg !2421
  %65 = load i8*, i8** %64, align 8, !dbg !2421
  %66 = load i8*, i8** %7, align 8, !dbg !2422
  %67 = load i32, i32* %6, align 4, !dbg !2423
  %68 = sext i32 %67 to i64, !dbg !2423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 %68, i32 1, i1 false), !dbg !2424
  br label %69, !dbg !2425

; <label>:69:                                     ; preds = %53, %50, %42
  %70 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2426
  %71 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %70, i32 0, i32 3, !dbg !2427
  store i8 1, i8* %71, align 8, !dbg !2428
  %72 = load i8, i8* %8, align 1, !dbg !2429
  %73 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %5, align 8, !dbg !2430
  %74 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %73, i32 0, i32 4, !dbg !2431
  store i8 %72, i8* %74, align 1, !dbg !2432
  ret void, !dbg !2433
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetBlobSensitive(%struct.VixPropertyListImpl*, i32, i32, i8*) #0 !dbg !2434 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !2435, metadata !682), !dbg !2436
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2437, metadata !682), !dbg !2438
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2439, metadata !682), !dbg !2440
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2441, metadata !682), !dbg !2442
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2443, metadata !682), !dbg !2444
  store i64 0, i64* %9, align 8, !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !2445, metadata !682), !dbg !2446
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !2446
  %11 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2447
  %12 = icmp eq %struct.VixPropertyListImpl* null, %11, !dbg !2449
  br i1 %12, label %13, label %14, !dbg !2450

; <label>:13:                                     ; preds = %4
  store i64 3, i64* %9, align 8, !dbg !2451
  br label %25, !dbg !2453

; <label>:14:                                     ; preds = %4
  %15 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2454
  %16 = load i32, i32* %6, align 4, !dbg !2455
  %17 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %15, i32 %16, i32 6, i32 0, i8 signext 1, %struct.VixPropertyValue** %10), !dbg !2456
  store i64 %17, i64* %9, align 8, !dbg !2457
  %18 = load i64, i64* %9, align 8, !dbg !2458
  %19 = icmp eq i64 0, %18, !dbg !2460
  br i1 %19, label %20, label %24, !dbg !2461

; <label>:20:                                     ; preds = %14
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !2462
  %22 = load i32, i32* %7, align 4, !dbg !2464
  %23 = load i8*, i8** %8, align 8, !dbg !2465
  call void @VixPropertyListSetBlobImpl(%struct.VixPropertyValue* %21, i32 %22, i8* %23, i8 signext 1), !dbg !2466
  br label %24, !dbg !2467

; <label>:24:                                     ; preds = %20, %14
  br label %25, !dbg !2468

; <label>:25:                                     ; preds = %24, %13
  %26 = load i64, i64* %9, align 8, !dbg !2470
  ret i64 %26, !dbg !2471
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_GetPtr(%struct.VixPropertyListImpl*, i32, i32, i8**) #0 !dbg !2472 {
  %5 = alloca %struct.VixPropertyListImpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %5, metadata !2476, metadata !682), !dbg !2477
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2478, metadata !682), !dbg !2479
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2480, metadata !682), !dbg !2481
  store i8** %3, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2482, metadata !682), !dbg !2483
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2484, metadata !682), !dbg !2485
  store i64 0, i64* %9, align 8, !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %10, metadata !2486, metadata !682), !dbg !2487
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %10, align 8, !dbg !2487
  %11 = load i8**, i8*** %8, align 8, !dbg !2488
  %12 = icmp eq i8** null, %11, !dbg !2490
  br i1 %12, label %16, label %13, !dbg !2491

; <label>:13:                                     ; preds = %4
  %14 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2492
  %15 = icmp eq %struct.VixPropertyListImpl* null, %14, !dbg !2494
  br i1 %15, label %16, label %17, !dbg !2495

; <label>:16:                                     ; preds = %13, %4
  store i64 3, i64* %9, align 8, !dbg !2496
  br label %31, !dbg !2498

; <label>:17:                                     ; preds = %13
  %18 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %5, align 8, !dbg !2499
  %19 = load i32, i32* %6, align 4, !dbg !2500
  %20 = load i32, i32* %7, align 4, !dbg !2501
  %21 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %18, i32 %19, i32 7, i32 %20, i8 signext 0, %struct.VixPropertyValue** %10), !dbg !2502
  store i64 %21, i64* %9, align 8, !dbg !2503
  %22 = load i64, i64* %9, align 8, !dbg !2504
  %23 = icmp ne i64 0, %22, !dbg !2506
  br i1 %23, label %24, label %25, !dbg !2507

; <label>:24:                                     ; preds = %17
  br label %31, !dbg !2508

; <label>:25:                                     ; preds = %17
  %26 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %10, align 8, !dbg !2510
  %27 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %26, i32 0, i32 2, !dbg !2511
  %28 = bitcast %union.anon* %27 to i8**, !dbg !2512
  %29 = load i8*, i8** %28, align 8, !dbg !2512
  %30 = load i8**, i8*** %8, align 8, !dbg !2513
  store i8* %29, i8** %30, align 8, !dbg !2514
  br label %31, !dbg !2515

; <label>:31:                                     ; preds = %25, %24, %16
  %32 = load i64, i64* %9, align 8, !dbg !2516
  ret i64 %32, !dbg !2517
}

; Function Attrs: nounwind uwtable
define i64 @VixPropertyList_SetPtr(%struct.VixPropertyListImpl*, i32, i8*) #0 !dbg !2518 {
  %4 = alloca %struct.VixPropertyListImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.VixPropertyValue*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %4, metadata !2521, metadata !682), !dbg !2522
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2523, metadata !682), !dbg !2524
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2525, metadata !682), !dbg !2526
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2527, metadata !682), !dbg !2528
  store i64 0, i64* %7, align 8, !dbg !2528
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %8, metadata !2529, metadata !682), !dbg !2530
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %8, align 8, !dbg !2530
  %9 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2531
  %10 = icmp eq %struct.VixPropertyListImpl* null, %9, !dbg !2533
  br i1 %10, label %11, label %12, !dbg !2534

; <label>:11:                                     ; preds = %3
  store i64 3, i64* %7, align 8, !dbg !2535
  br label %26, !dbg !2537

; <label>:12:                                     ; preds = %3
  %13 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2538
  %14 = load i32, i32* %5, align 4, !dbg !2539
  %15 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %13, i32 %14, i32 7, i32 0, i8 signext 1, %struct.VixPropertyValue** %8), !dbg !2540
  store i64 %15, i64* %7, align 8, !dbg !2541
  %16 = load i64, i64* %7, align 8, !dbg !2542
  %17 = icmp ne i64 0, %16, !dbg !2544
  br i1 %17, label %18, label %19, !dbg !2545

; <label>:18:                                     ; preds = %12
  br label %26, !dbg !2546

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** %6, align 8, !dbg !2548
  %21 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2549
  %22 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %21, i32 0, i32 2, !dbg !2550
  %23 = bitcast %union.anon* %22 to i8**, !dbg !2551
  store i8* %20, i8** %23, align 8, !dbg !2552
  %24 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2553
  %25 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %24, i32 0, i32 3, !dbg !2554
  store i8 1, i8* %25, align 8, !dbg !2555
  br label %26, !dbg !2553

; <label>:26:                                     ; preds = %19, %18, %11
  %27 = load i64, i64* %7, align 8, !dbg !2556
  ret i64 %27, !dbg !2557
}

; Function Attrs: nounwind uwtable
define signext i8 @VixPropertyList_PropertyExists(%struct.VixPropertyListImpl*, i32, i32) #0 !dbg !2558 {
  %4 = alloca %struct.VixPropertyListImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.VixPropertyValue*, align 8
  %9 = alloca i8, align 1
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %4, metadata !2561, metadata !682), !dbg !2562
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2563, metadata !682), !dbg !2564
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2565, metadata !682), !dbg !2566
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2567, metadata !682), !dbg !2568
  store i64 0, i64* %7, align 8, !dbg !2568
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %8, metadata !2569, metadata !682), !dbg !2570
  store %struct.VixPropertyValue* null, %struct.VixPropertyValue** %8, align 8, !dbg !2570
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2571, metadata !682), !dbg !2572
  store i8 0, i8* %9, align 1, !dbg !2572
  %10 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %4, align 8, !dbg !2573
  %11 = load i32, i32* %5, align 4, !dbg !2574
  %12 = load i32, i32* %6, align 4, !dbg !2575
  %13 = call i64 @VixPropertyList_FindProperty(%struct.VixPropertyListImpl* %10, i32 %11, i32 %12, i32 0, i8 signext 0, %struct.VixPropertyValue** %8), !dbg !2576
  store i64 %13, i64* %7, align 8, !dbg !2577
  %14 = load i64, i64* %7, align 8, !dbg !2578
  %15 = icmp eq i64 0, %14, !dbg !2580
  br i1 %15, label %16, label %20, !dbg !2581

; <label>:16:                                     ; preds = %3
  %17 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %8, align 8, !dbg !2582
  %18 = icmp ne %struct.VixPropertyValue* null, %17, !dbg !2584
  br i1 %18, label %19, label %20, !dbg !2585

; <label>:19:                                     ; preds = %16
  store i8 1, i8* %9, align 1, !dbg !2586
  br label %20, !dbg !2588

; <label>:20:                                     ; preds = %19, %16, %3
  %21 = load i8, i8* %9, align 1, !dbg !2589
  ret i8 %21, !dbg !2590
}

; Function Attrs: nounwind uwtable
define i32 @VixPropertyList_NumItems(%struct.VixPropertyListImpl*) #0 !dbg !2591 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.VixPropertyListImpl*, align 8
  %4 = alloca %struct.VixPropertyValue*, align 8
  %5 = alloca i32, align 4
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %3, metadata !2594, metadata !682), !dbg !2595
  call void @llvm.dbg.declare(metadata %struct.VixPropertyValue** %4, metadata !2596, metadata !682), !dbg !2597
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2598, metadata !682), !dbg !2599
  store i32 0, i32* %5, align 4, !dbg !2599
  %6 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %3, align 8, !dbg !2600
  %7 = icmp eq %struct.VixPropertyListImpl* %6, null, !dbg !2602
  br i1 %7, label %8, label %9, !dbg !2603

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !2604
  br label %25, !dbg !2604

; <label>:9:                                      ; preds = %1
  %10 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %3, align 8, !dbg !2606
  %11 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %10, i32 0, i32 0, !dbg !2608
  %12 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %11, align 8, !dbg !2608
  store %struct.VixPropertyValue* %12, %struct.VixPropertyValue** %4, align 8, !dbg !2609
  br label %13, !dbg !2610

; <label>:13:                                     ; preds = %19, %9
  %14 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !2611
  %15 = icmp ne %struct.VixPropertyValue* %14, null, !dbg !2614
  br i1 %15, label %16, label %23, !dbg !2615

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %5, align 4, !dbg !2616
  %18 = add nsw i32 %17, 1, !dbg !2616
  store i32 %18, i32* %5, align 4, !dbg !2616
  br label %19, !dbg !2618

; <label>:19:                                     ; preds = %16
  %20 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %4, align 8, !dbg !2619
  %21 = getelementptr inbounds %struct.VixPropertyValue, %struct.VixPropertyValue* %20, i32 0, i32 5, !dbg !2621
  %22 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %21, align 8, !dbg !2621
  store %struct.VixPropertyValue* %22, %struct.VixPropertyValue** %4, align 8, !dbg !2622
  br label %13, !dbg !2623, !llvm.loop !2624

; <label>:23:                                     ; preds = %13
  %24 = load i32, i32* %5, align 4, !dbg !2626
  store i32 %24, i32* %2, align 4, !dbg !2627
  br label %25, !dbg !2627

; <label>:25:                                     ; preds = %23, %8
  %26 = load i32, i32* %2, align 4, !dbg !2628
  ret i32 %26, !dbg !2628
}

; Function Attrs: nounwind uwtable
define signext i8 @VixPropertyList_Empty(%struct.VixPropertyListImpl*) #0 !dbg !2629 {
  %2 = alloca %struct.VixPropertyListImpl*, align 8
  store %struct.VixPropertyListImpl* %0, %struct.VixPropertyListImpl** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.VixPropertyListImpl** %2, metadata !2632, metadata !682), !dbg !2633
  %3 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !2634
  %4 = icmp eq %struct.VixPropertyListImpl* %3, null, !dbg !2635
  br i1 %4, label %10, label %5, !dbg !2636

; <label>:5:                                      ; preds = %1
  %6 = load %struct.VixPropertyListImpl*, %struct.VixPropertyListImpl** %2, align 8, !dbg !2637
  %7 = getelementptr inbounds %struct.VixPropertyListImpl, %struct.VixPropertyListImpl* %6, i32 0, i32 0, !dbg !2639
  %8 = load %struct.VixPropertyValue*, %struct.VixPropertyValue** %7, align 8, !dbg !2639
  %9 = icmp eq %struct.VixPropertyValue* %8, null, !dbg !2640
  br label %10, !dbg !2641

; <label>:10:                                     ; preds = %5, %1
  %11 = phi i1 [ true, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32, !dbg !2642
  %13 = trunc i32 %12 to i8, !dbg !2644
  ret i8 %13, !dbg !2645
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i8* @Unicode_EscapeBuffer(i8*, i64, i32) #5

declare i8* @VixMsg_StrdupClientData(i8*, i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!668, !669}
!llvm.ident = !{!670}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !625)
!1 = !DIFile(filename: "foundryPropertyListCommon.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!2 = !{!3, !13, !281, !614, !619, !622}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 426, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vix.h", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !DIEnumerator(name: "VIX_PROPERTYTYPE_ANY", value: 0)
!7 = !DIEnumerator(name: "VIX_PROPERTYTYPE_INTEGER", value: 1)
!8 = !DIEnumerator(name: "VIX_PROPERTYTYPE_STRING", value: 2)
!9 = !DIEnumerator(name: "VIX_PROPERTYTYPE_BOOL", value: 3)
!10 = !DIEnumerator(name: "VIX_PROPERTYTYPE_HANDLE", value: 4)
!11 = !DIEnumerator(name: "VIX_PROPERTYTYPE_INT64", value: 5)
!12 = !DIEnumerator(name: "VIX_PROPERTYTYPE_BLOB", value: 6)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 87, size: 32, align: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!15 = !DIEnumerator(name: "VIX_OK", value: 0)
!16 = !DIEnumerator(name: "VIX_E_FAIL", value: 1)
!17 = !DIEnumerator(name: "VIX_E_OUT_OF_MEMORY", value: 2)
!18 = !DIEnumerator(name: "VIX_E_INVALID_ARG", value: 3)
!19 = !DIEnumerator(name: "VIX_E_FILE_NOT_FOUND", value: 4)
!20 = !DIEnumerator(name: "VIX_E_OBJECT_IS_BUSY", value: 5)
!21 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED", value: 6)
!22 = !DIEnumerator(name: "VIX_E_FILE_ERROR", value: 7)
!23 = !DIEnumerator(name: "VIX_E_DISK_FULL", value: 8)
!24 = !DIEnumerator(name: "VIX_E_INCORRECT_FILE_TYPE", value: 9)
!25 = !DIEnumerator(name: "VIX_E_CANCELLED", value: 10)
!26 = !DIEnumerator(name: "VIX_E_FILE_READ_ONLY", value: 11)
!27 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_EXISTS", value: 12)
!28 = !DIEnumerator(name: "VIX_E_FILE_ACCESS_ERROR", value: 13)
!29 = !DIEnumerator(name: "VIX_E_REQUIRES_LARGE_FILES", value: 14)
!30 = !DIEnumerator(name: "VIX_E_FILE_ALREADY_LOCKED", value: 15)
!31 = !DIEnumerator(name: "VIX_E_VMDB", value: 16)
!32 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_REMOTE_OBJECT", value: 20)
!33 = !DIEnumerator(name: "VIX_E_FILE_TOO_BIG", value: 21)
!34 = !DIEnumerator(name: "VIX_E_FILE_NAME_INVALID", value: 22)
!35 = !DIEnumerator(name: "VIX_E_ALREADY_EXISTS", value: 23)
!36 = !DIEnumerator(name: "VIX_E_BUFFER_TOOSMALL", value: 24)
!37 = !DIEnumerator(name: "VIX_E_OBJECT_NOT_FOUND", value: 25)
!38 = !DIEnumerator(name: "VIX_E_HOST_NOT_CONNECTED", value: 26)
!39 = !DIEnumerator(name: "VIX_E_INVALID_UTF8_STRING", value: 27)
!40 = !DIEnumerator(name: "VIX_E_OPERATION_ALREADY_IN_PROGRESS", value: 31)
!41 = !DIEnumerator(name: "VIX_E_UNFINISHED_JOB", value: 29)
!42 = !DIEnumerator(name: "VIX_E_NEED_KEY", value: 30)
!43 = !DIEnumerator(name: "VIX_E_LICENSE", value: 32)
!44 = !DIEnumerator(name: "VIX_E_VM_HOST_DISCONNECTED", value: 34)
!45 = !DIEnumerator(name: "VIX_E_AUTHENTICATION_FAIL", value: 35)
!46 = !DIEnumerator(name: "VIX_E_HOST_CONNECTION_LOST", value: 36)
!47 = !DIEnumerator(name: "VIX_E_DUPLICATE_NAME", value: 41)
!48 = !DIEnumerator(name: "VIX_E_ARGUMENT_TOO_BIG", value: 44)
!49 = !DIEnumerator(name: "VIX_E_INVALID_HANDLE", value: 1000)
!50 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_ON_HANDLE_TYPE", value: 1001)
!51 = !DIEnumerator(name: "VIX_E_TOO_MANY_HANDLES", value: 1002)
!52 = !DIEnumerator(name: "VIX_E_NOT_FOUND", value: 2000)
!53 = !DIEnumerator(name: "VIX_E_TYPE_MISMATCH", value: 2001)
!54 = !DIEnumerator(name: "VIX_E_INVALID_XML", value: 2002)
!55 = !DIEnumerator(name: "VIX_E_TIMEOUT_WAITING_FOR_TOOLS", value: 3000)
!56 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND", value: 3001)
!57 = !DIEnumerator(name: "VIX_E_OP_NOT_SUPPORTED_ON_GUEST", value: 3003)
!58 = !DIEnumerator(name: "VIX_E_PROGRAM_NOT_STARTED", value: 3004)
!59 = !DIEnumerator(name: "VIX_E_CANNOT_START_READ_ONLY_VM", value: 3005)
!60 = !DIEnumerator(name: "VIX_E_VM_NOT_RUNNING", value: 3006)
!61 = !DIEnumerator(name: "VIX_E_VM_IS_RUNNING", value: 3007)
!62 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_VM", value: 3008)
!63 = !DIEnumerator(name: "VIX_E_POWEROP_SCRIPTS_NOT_AVAILABLE", value: 3009)
!64 = !DIEnumerator(name: "VIX_E_NO_GUEST_OS_INSTALLED", value: 3010)
!65 = !DIEnumerator(name: "VIX_E_VM_INSUFFICIENT_HOST_MEMORY", value: 3011)
!66 = !DIEnumerator(name: "VIX_E_SUSPEND_ERROR", value: 3012)
!67 = !DIEnumerator(name: "VIX_E_VM_NOT_ENOUGH_CPUS", value: 3013)
!68 = !DIEnumerator(name: "VIX_E_HOST_USER_PERMISSIONS", value: 3014)
!69 = !DIEnumerator(name: "VIX_E_GUEST_USER_PERMISSIONS", value: 3015)
!70 = !DIEnumerator(name: "VIX_E_TOOLS_NOT_RUNNING", value: 3016)
!71 = !DIEnumerator(name: "VIX_E_GUEST_OPERATIONS_PROHIBITED", value: 3017)
!72 = !DIEnumerator(name: "VIX_E_ANON_GUEST_OPERATIONS_PROHIBITED", value: 3018)
!73 = !DIEnumerator(name: "VIX_E_ROOT_GUEST_OPERATIONS_PROHIBITED", value: 3019)
!74 = !DIEnumerator(name: "VIX_E_MISSING_ANON_GUEST_ACCOUNT", value: 3023)
!75 = !DIEnumerator(name: "VIX_E_CANNOT_AUTHENTICATE_WITH_GUEST", value: 3024)
!76 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_COMMAND_IN_GUEST", value: 3025)
!77 = !DIEnumerator(name: "VIX_E_CONSOLE_GUEST_OPERATIONS_PROHIBITED", value: 3026)
!78 = !DIEnumerator(name: "VIX_E_MUST_BE_CONSOLE_USER", value: 3027)
!79 = !DIEnumerator(name: "VIX_E_VMX_MSG_DIALOG_AND_NO_UI", value: 3028)
!80 = !DIEnumerator(name: "VIX_E_OPERATION_NOT_ALLOWED_FOR_LOGIN_TYPE", value: 3031)
!81 = !DIEnumerator(name: "VIX_E_LOGIN_TYPE_NOT_SUPPORTED", value: 3032)
!82 = !DIEnumerator(name: "VIX_E_EMPTY_PASSWORD_NOT_ALLOWED_IN_GUEST", value: 3033)
!83 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_NOT_PRESENT", value: 3034)
!84 = !DIEnumerator(name: "VIX_E_INTERACTIVE_SESSION_USER_MISMATCH", value: 3035)
!85 = !DIEnumerator(name: "VIX_E_CANNOT_POWER_ON_VM", value: 3041)
!86 = !DIEnumerator(name: "VIX_E_NO_DISPLAY_SERVER", value: 3043)
!87 = !DIEnumerator(name: "VIX_E_TOO_MANY_LOGONS", value: 3046)
!88 = !DIEnumerator(name: "VIX_E_INVALID_AUTHENTICATION_SESSION", value: 3047)
!89 = !DIEnumerator(name: "VIX_E_VM_NOT_FOUND", value: 4000)
!90 = !DIEnumerator(name: "VIX_E_NOT_SUPPORTED_FOR_VM_VERSION", value: 4001)
!91 = !DIEnumerator(name: "VIX_E_CANNOT_READ_VM_CONFIG", value: 4002)
!92 = !DIEnumerator(name: "VIX_E_TEMPLATE_VM", value: 4003)
!93 = !DIEnumerator(name: "VIX_E_VM_ALREADY_LOADED", value: 4004)
!94 = !DIEnumerator(name: "VIX_E_VM_ALREADY_UP_TO_DATE", value: 4006)
!95 = !DIEnumerator(name: "VIX_E_VM_UNSUPPORTED_GUEST", value: 4011)
!96 = !DIEnumerator(name: "VIX_E_UNRECOGNIZED_PROPERTY", value: 6000)
!97 = !DIEnumerator(name: "VIX_E_INVALID_PROPERTY_VALUE", value: 6001)
!98 = !DIEnumerator(name: "VIX_E_READ_ONLY_PROPERTY", value: 6002)
!99 = !DIEnumerator(name: "VIX_E_MISSING_REQUIRED_PROPERTY", value: 6003)
!100 = !DIEnumerator(name: "VIX_E_INVALID_SERIALIZED_DATA", value: 6004)
!101 = !DIEnumerator(name: "VIX_E_PROPERTY_TYPE_MISMATCH", value: 6005)
!102 = !DIEnumerator(name: "VIX_E_BAD_VM_INDEX", value: 8000)
!103 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_HEADER", value: 10000)
!104 = !DIEnumerator(name: "VIX_E_INVALID_MESSAGE_BODY", value: 10001)
!105 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INVAL", value: 13000)
!106 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUMPER", value: 13001)
!107 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLIB", value: 13002)
!108 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOTFOUND", value: 13003)
!109 = !DIEnumerator(name: "VIX_E_SNAPSHOT_EXISTS", value: 13004)
!110 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VERSION", value: 13005)
!111 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOPERM", value: 13006)
!112 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CONFIG", value: 13007)
!113 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOCHANGE", value: 13008)
!114 = !DIEnumerator(name: "VIX_E_SNAPSHOT_CHECKPOINT", value: 13009)
!115 = !DIEnumerator(name: "VIX_E_SNAPSHOT_LOCKED", value: 13010)
!116 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INCONSISTENT", value: 13011)
!117 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NAMETOOLONG", value: 13012)
!118 = !DIEnumerator(name: "VIX_E_SNAPSHOT_VIXFILE", value: 13013)
!119 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DISKLOCKED", value: 13014)
!120 = !DIEnumerator(name: "VIX_E_SNAPSHOT_DUPLICATEDDISK", value: 13015)
!121 = !DIEnumerator(name: "VIX_E_SNAPSHOT_INDEPENDENTDISK", value: 13016)
!122 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NONUNIQUE_NAME", value: 13017)
!123 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MEMORY_ON_INDEPENDENT_DISK", value: 13018)
!124 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MAXSNAPSHOTS", value: 13019)
!125 = !DIEnumerator(name: "VIX_E_SNAPSHOT_MIN_FREE_SPACE", value: 13020)
!126 = !DIEnumerator(name: "VIX_E_SNAPSHOT_HIERARCHY_TOODEEP", value: 13021)
!127 = !DIEnumerator(name: "VIX_E_SNAPSHOT_NOT_REVERTABLE", value: 13024)
!128 = !DIEnumerator(name: "VIX_E_HOST_DISK_INVALID_VALUE", value: 14003)
!129 = !DIEnumerator(name: "VIX_E_HOST_DISK_SECTORSIZE", value: 14004)
!130 = !DIEnumerator(name: "VIX_E_HOST_FILE_ERROR_EOF", value: 14005)
!131 = !DIEnumerator(name: "VIX_E_HOST_NETBLKDEV_HANDSHAKE", value: 14006)
!132 = !DIEnumerator(name: "VIX_E_HOST_SOCKET_CREATION_ERROR", value: 14007)
!133 = !DIEnumerator(name: "VIX_E_HOST_SERVER_NOT_FOUND", value: 14008)
!134 = !DIEnumerator(name: "VIX_E_HOST_NETWORK_CONN_REFUSED", value: 14009)
!135 = !DIEnumerator(name: "VIX_E_HOST_TCP_SOCKET_ERROR", value: 14010)
!136 = !DIEnumerator(name: "VIX_E_HOST_TCP_CONN_LOST", value: 14011)
!137 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_VOLUME", value: 14012)
!138 = !DIEnumerator(name: "VIX_E_HOST_NBD_HASHFILE_INIT", value: 14013)
!139 = !DIEnumerator(name: "VIX_E_DISK_INVAL", value: 16000)
!140 = !DIEnumerator(name: "VIX_E_DISK_NOINIT", value: 16001)
!141 = !DIEnumerator(name: "VIX_E_DISK_NOIO", value: 16002)
!142 = !DIEnumerator(name: "VIX_E_DISK_PARTIALCHAIN", value: 16003)
!143 = !DIEnumerator(name: "VIX_E_DISK_NEEDSREPAIR", value: 16006)
!144 = !DIEnumerator(name: "VIX_E_DISK_OUTOFRANGE", value: 16007)
!145 = !DIEnumerator(name: "VIX_E_DISK_CID_MISMATCH", value: 16008)
!146 = !DIEnumerator(name: "VIX_E_DISK_CANTSHRINK", value: 16009)
!147 = !DIEnumerator(name: "VIX_E_DISK_PARTMISMATCH", value: 16010)
!148 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDISKVERSION", value: 16011)
!149 = !DIEnumerator(name: "VIX_E_DISK_OPENPARENT", value: 16012)
!150 = !DIEnumerator(name: "VIX_E_DISK_NOTSUPPORTED", value: 16013)
!151 = !DIEnumerator(name: "VIX_E_DISK_NEEDKEY", value: 16014)
!152 = !DIEnumerator(name: "VIX_E_DISK_NOKEYOVERRIDE", value: 16015)
!153 = !DIEnumerator(name: "VIX_E_DISK_NOTENCRYPTED", value: 16016)
!154 = !DIEnumerator(name: "VIX_E_DISK_NOKEY", value: 16017)
!155 = !DIEnumerator(name: "VIX_E_DISK_INVALIDPARTITIONTABLE", value: 16018)
!156 = !DIEnumerator(name: "VIX_E_DISK_NOTNORMAL", value: 16019)
!157 = !DIEnumerator(name: "VIX_E_DISK_NOTENCDESC", value: 16020)
!158 = !DIEnumerator(name: "VIX_E_DISK_NEEDVMFS", value: 16022)
!159 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOBIG", value: 16024)
!160 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYOPENFILES", value: 16027)
!161 = !DIEnumerator(name: "VIX_E_DISK_TOOMANYREDO", value: 16028)
!162 = !DIEnumerator(name: "VIX_E_DISK_RAWTOOSMALL", value: 16029)
!163 = !DIEnumerator(name: "VIX_E_DISK_INVALIDCHAIN", value: 16030)
!164 = !DIEnumerator(name: "VIX_E_DISK_KEY_NOTFOUND", value: 16052)
!165 = !DIEnumerator(name: "VIX_E_DISK_SUBSYSTEM_INIT_FAIL", value: 16053)
!166 = !DIEnumerator(name: "VIX_E_DISK_INVALID_CONNECTION", value: 16054)
!167 = !DIEnumerator(name: "VIX_E_DISK_ENCODING", value: 16061)
!168 = !DIEnumerator(name: "VIX_E_DISK_CANTREPAIR", value: 16062)
!169 = !DIEnumerator(name: "VIX_E_DISK_INVALIDDISK", value: 16063)
!170 = !DIEnumerator(name: "VIX_E_DISK_NOLICENSE", value: 16064)
!171 = !DIEnumerator(name: "VIX_E_DISK_NODEVICE", value: 16065)
!172 = !DIEnumerator(name: "VIX_E_DISK_UNSUPPORTEDDEVICE", value: 16066)
!173 = !DIEnumerator(name: "VIX_E_DISK_CAPACITY_MISMATCH", value: 16067)
!174 = !DIEnumerator(name: "VIX_E_DISK_PARENT_NOTALLOWED", value: 16068)
!175 = !DIEnumerator(name: "VIX_E_DISK_ATTACH_ROOTLINK", value: 16069)
!176 = !DIEnumerator(name: "VIX_E_CRYPTO_UNKNOWN_ALGORITHM", value: 17000)
!177 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_BUFFER_SIZE", value: 17001)
!178 = !DIEnumerator(name: "VIX_E_CRYPTO_INVALID_OPERATION", value: 17002)
!179 = !DIEnumerator(name: "VIX_E_CRYPTO_RANDOM_DEVICE", value: 17003)
!180 = !DIEnumerator(name: "VIX_E_CRYPTO_NEED_PASSWORD", value: 17004)
!181 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_PASSWORD", value: 17005)
!182 = !DIEnumerator(name: "VIX_E_CRYPTO_NOT_IN_DICTIONARY", value: 17006)
!183 = !DIEnumerator(name: "VIX_E_CRYPTO_NO_CRYPTO", value: 17007)
!184 = !DIEnumerator(name: "VIX_E_CRYPTO_ERROR", value: 17008)
!185 = !DIEnumerator(name: "VIX_E_CRYPTO_BAD_FORMAT", value: 17009)
!186 = !DIEnumerator(name: "VIX_E_CRYPTO_LOCKED", value: 17010)
!187 = !DIEnumerator(name: "VIX_E_CRYPTO_EMPTY", value: 17011)
!188 = !DIEnumerator(name: "VIX_E_CRYPTO_KEYSAFE_LOCATOR", value: 17012)
!189 = !DIEnumerator(name: "VIX_E_CANNOT_CONNECT_TO_HOST", value: 18000)
!190 = !DIEnumerator(name: "VIX_E_NOT_FOR_REMOTE_HOST", value: 18001)
!191 = !DIEnumerator(name: "VIX_E_INVALID_HOSTNAME_SPECIFICATION", value: 18002)
!192 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_ERROR", value: 19000)
!193 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_BAD_FORMAT", value: 19001)
!194 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_COMPRESSION_FAIL", value: 19002)
!195 = !DIEnumerator(name: "VIX_E_SCREEN_CAPTURE_LARGE_DATA", value: 19003)
!196 = !DIEnumerator(name: "VIX_E_GUEST_VOLUMES_NOT_FROZEN", value: 20000)
!197 = !DIEnumerator(name: "VIX_E_NOT_A_FILE", value: 20001)
!198 = !DIEnumerator(name: "VIX_E_NOT_A_DIRECTORY", value: 20002)
!199 = !DIEnumerator(name: "VIX_E_NO_SUCH_PROCESS", value: 20003)
!200 = !DIEnumerator(name: "VIX_E_FILE_NAME_TOO_LONG", value: 20004)
!201 = !DIEnumerator(name: "VIX_E_OPERATION_DISABLED", value: 20005)
!202 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_IMAGE", value: 21000)
!203 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_INACCESIBLE", value: 21001)
!204 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_NO_DEVICE", value: 21002)
!205 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_DEVICE_NOT_CONNECTED", value: 21003)
!206 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_CANCELLED", value: 21004)
!207 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_INIT_FAILED", value: 21005)
!208 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_AUTO_NOT_SUPPORTED", value: 21006)
!209 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_GUEST_NOT_READY", value: 21007)
!210 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_SIG_CHECK_FAILED", value: 21008)
!211 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ERROR", value: 21009)
!212 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_ALREADY_UP_TO_DATE", value: 21010)
!213 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IN_PROGRESS", value: 21011)
!214 = !DIEnumerator(name: "VIX_E_TOOLS_INSTALL_IMAGE_COPY_FAILED", value: 21012)
!215 = !DIEnumerator(name: "VIX_E_WRAPPER_WORKSTATION_NOT_INSTALLED", value: 22001)
!216 = !DIEnumerator(name: "VIX_E_WRAPPER_VERSION_NOT_FOUND", value: 22002)
!217 = !DIEnumerator(name: "VIX_E_WRAPPER_SERVICEPROVIDER_NOT_FOUND", value: 22003)
!218 = !DIEnumerator(name: "VIX_E_WRAPPER_PLAYER_NOT_INSTALLED", value: 22004)
!219 = !DIEnumerator(name: "VIX_E_WRAPPER_RUNTIME_NOT_INSTALLED", value: 22005)
!220 = !DIEnumerator(name: "VIX_E_WRAPPER_MULTIPLE_SERVICEPROVIDERS", value: 22006)
!221 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_NOT_FOUND", value: 24000)
!222 = !DIEnumerator(name: "VIX_E_MNTAPI_MOUNTPT_IN_USE", value: 24001)
!223 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_FOUND", value: 24002)
!224 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_MOUNTED", value: 24003)
!225 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_IS_MOUNTED", value: 24004)
!226 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_NOT_SAFE", value: 24005)
!227 = !DIEnumerator(name: "VIX_E_MNTAPI_DISK_CANT_OPEN", value: 24006)
!228 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_READ_PARTS", value: 24007)
!229 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT_APP_NOT_FOUND", value: 24008)
!230 = !DIEnumerator(name: "VIX_E_MNTAPI_UMOUNT", value: 24009)
!231 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_MOUNTABLE_PARTITONS", value: 24010)
!232 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_RANGE", value: 24011)
!233 = !DIEnumerator(name: "VIX_E_MNTAPI_PERM", value: 24012)
!234 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT", value: 24013)
!235 = !DIEnumerator(name: "VIX_E_MNTAPI_DICT_LOCKED", value: 24014)
!236 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_HANDLES", value: 24015)
!237 = !DIEnumerator(name: "VIX_E_MNTAPI_CANT_MAKE_VAR_DIR", value: 24016)
!238 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_ROOT", value: 24017)
!239 = !DIEnumerator(name: "VIX_E_MNTAPI_LOOP_FAILED", value: 24018)
!240 = !DIEnumerator(name: "VIX_E_MNTAPI_DAEMON", value: 24019)
!241 = !DIEnumerator(name: "VIX_E_MNTAPI_INTERNAL", value: 24020)
!242 = !DIEnumerator(name: "VIX_E_MNTAPI_SYSTEM", value: 24021)
!243 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_CONNECTION_DETAILS", value: 24022)
!244 = !DIEnumerator(name: "VIX_E_MNTAPI_INCOMPATIBLE_VERSION", value: 24300)
!245 = !DIEnumerator(name: "VIX_E_MNTAPI_OS_ERROR", value: 24301)
!246 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_IN_USE", value: 24302)
!247 = !DIEnumerator(name: "VIX_E_MNTAPI_DRIVE_LETTER_ALREADY_ASSIGNED", value: 24303)
!248 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_MOUNTED", value: 24304)
!249 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_ALREADY_MOUNTED", value: 24305)
!250 = !DIEnumerator(name: "VIX_E_MNTAPI_FORMAT_FAILURE", value: 24306)
!251 = !DIEnumerator(name: "VIX_E_MNTAPI_NO_DRIVER", value: 24307)
!252 = !DIEnumerator(name: "VIX_E_MNTAPI_ALREADY_OPENED", value: 24308)
!253 = !DIEnumerator(name: "VIX_E_MNTAPI_ITEM_NOT_FOUND", value: 24309)
!254 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_BOOT_LOADER", value: 24310)
!255 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPROTED_OS", value: 24311)
!256 = !DIEnumerator(name: "VIX_E_MNTAPI_CODECONVERSION", value: 24312)
!257 = !DIEnumerator(name: "VIX_E_MNTAPI_REGWRITE_ERROR", value: 24313)
!258 = !DIEnumerator(name: "VIX_E_MNTAPI_UNSUPPORTED_FT_VOLUME", value: 24314)
!259 = !DIEnumerator(name: "VIX_E_MNTAPI_PARTITION_NOT_FOUND", value: 24315)
!260 = !DIEnumerator(name: "VIX_E_MNTAPI_PUTFILE_ERROR", value: 24316)
!261 = !DIEnumerator(name: "VIX_E_MNTAPI_GETFILE_ERROR", value: 24317)
!262 = !DIEnumerator(name: "VIX_E_MNTAPI_REG_NOT_OPENED", value: 24318)
!263 = !DIEnumerator(name: "VIX_E_MNTAPI_REGDELKEY_ERROR", value: 24319)
!264 = !DIEnumerator(name: "VIX_E_MNTAPI_CREATE_PARTITIONTABLE_ERROR", value: 24320)
!265 = !DIEnumerator(name: "VIX_E_MNTAPI_OPEN_FAILURE", value: 24321)
!266 = !DIEnumerator(name: "VIX_E_MNTAPI_VOLUME_NOT_WRITABLE", value: 24322)
!267 = !DIEnumerator(name: "VIX_ASYNC", value: 25000)
!268 = !DIEnumerator(name: "VIX_E_ASYNC_MIXEDMODE_UNSUPPORTED", value: 26000)
!269 = !DIEnumerator(name: "VIX_E_NET_HTTP_UNSUPPORTED_PROTOCOL", value: 30001)
!270 = !DIEnumerator(name: "VIX_E_NET_HTTP_URL_MALFORMAT", value: 30003)
!271 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_PROXY", value: 30005)
!272 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_RESOLVE_HOST", value: 30006)
!273 = !DIEnumerator(name: "VIX_E_NET_HTTP_COULDNT_CONNECT", value: 30007)
!274 = !DIEnumerator(name: "VIX_E_NET_HTTP_HTTP_RETURNED_ERROR", value: 30022)
!275 = !DIEnumerator(name: "VIX_E_NET_HTTP_OPERATION_TIMEDOUT", value: 30028)
!276 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_CONNECT_ERROR", value: 30035)
!277 = !DIEnumerator(name: "VIX_E_NET_HTTP_TOO_MANY_REDIRECTS", value: 30047)
!278 = !DIEnumerator(name: "VIX_E_NET_HTTP_TRANSFER", value: 30200)
!279 = !DIEnumerator(name: "VIX_E_NET_HTTP_SSL_SECURITY", value: 30201)
!280 = !DIEnumerator(name: "VIX_E_NET_HTTP_GENERIC", value: 30202)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !282, line: 58, size: 32, align: 32, elements: !283)
!282 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!284 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!285 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!286 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!287 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!288 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!289 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!290 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!291 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!292 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!293 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!294 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!295 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!296 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!297 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!298 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!299 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!300 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!301 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!302 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!303 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!304 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!305 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!306 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!307 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!308 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!309 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!310 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!311 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!312 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!313 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!314 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!315 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!316 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!317 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!318 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!319 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!320 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!321 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!322 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!323 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!324 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!325 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!326 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!327 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!328 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!329 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!330 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!331 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!332 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!333 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!334 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!335 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!336 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!337 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!338 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!339 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!340 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!341 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!342 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!343 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!344 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!345 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!346 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!347 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!348 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!349 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!350 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!351 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!352 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!353 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!354 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!355 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!356 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!357 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!358 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!359 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!360 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!361 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!362 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!363 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!364 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!365 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!366 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!367 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!368 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!369 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!370 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!371 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!372 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!373 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!374 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!375 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!376 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!377 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!378 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!379 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!380 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!381 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!382 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!383 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!384 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!385 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!386 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!387 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!388 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!389 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!390 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!391 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!392 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!393 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!394 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!395 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!396 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!397 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!398 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!399 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!400 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!401 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!402 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!403 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!404 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!405 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!406 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!407 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!408 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!409 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!410 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!411 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!412 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!413 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!414 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!415 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!416 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!417 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!418 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!419 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!420 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!421 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!422 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!423 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!424 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!425 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!426 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!427 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!428 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!429 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!430 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!431 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!432 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!433 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!434 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!435 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!436 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!437 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!438 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!439 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!440 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!441 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!442 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!443 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!444 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!445 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!446 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!447 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!448 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!449 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!450 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!451 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!452 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!453 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!454 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!455 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!456 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!457 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!458 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!459 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!460 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!461 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!462 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!463 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!464 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!465 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!466 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!467 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!468 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!469 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!470 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!471 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!472 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!473 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!474 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!475 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!476 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!477 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!478 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!479 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!480 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!481 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!482 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!483 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!484 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!485 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!486 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!487 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!488 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!489 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!490 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!491 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!492 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!493 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!494 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!495 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!496 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!497 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!498 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!499 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!500 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!501 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!502 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!503 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!504 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!505 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!506 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!507 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!508 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!509 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!510 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!511 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!512 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!513 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!514 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!515 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!516 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!517 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!518 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!519 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!520 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!521 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!522 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!523 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!524 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!525 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!526 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!527 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!528 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!529 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!530 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!531 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!532 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!533 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!534 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!535 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!536 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!537 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!538 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!539 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!540 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!541 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!542 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!543 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!544 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!545 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!546 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!547 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!548 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!549 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!550 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!551 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!552 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!553 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!554 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!555 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!556 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!557 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!558 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!559 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!560 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!561 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!562 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!563 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!564 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!565 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!566 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!567 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!568 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!569 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!570 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!571 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!572 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!573 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!574 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!575 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!576 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!577 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!578 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!579 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!580 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!581 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!582 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!583 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!584 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!585 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!586 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!587 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!588 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!589 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!590 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!591 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!592 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!593 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!594 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!595 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!596 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!597 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!598 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!599 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!600 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!601 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!602 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!603 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!604 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!605 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!606 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!607 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!608 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!609 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!610 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!611 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!612 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!613 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!614 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "VixPropertyListBadEncodingAction", file: !615, line: 369, size: 32, align: 32, elements: !616)
!615 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vixOpenSource.h", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!616 = !{!617, !618}
!617 = !DIEnumerator(name: "VIX_PROPERTY_LIST_BAD_ENCODING_ERROR", value: 0)
!618 = !DIEnumerator(name: "VIX_PROPERTY_LIST_BAD_ENCODING_ESCAPE", value: 1)
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, size: 32, align: 32, elements: !620)
!620 = !{!621}
!621 = !DIEnumerator(name: "VIX_INVALID_HANDLE", value: 0)
!622 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !615, line: 316, size: 32, align: 32, elements: !623)
!623 = !{!624}
!624 = !DIEnumerator(name: "VIX_PROPERTYTYPE_POINTER", value: 7)
!625 = !{!626, !627, !629, !630, !664, !665, !666, !667, !656}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!629 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixPropertyValue", file: !615, line: 353, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixPropertyValue", file: !615, line: 332, size: 320, align: 64, elements: !633)
!633 = !{!634, !635, !637, !660, !661, !662}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "propertyID", scope: !632, file: !615, line: 334, baseType: !629, size: 32, align: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !615, line: 335, baseType: !636, size: 32, align: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixPropertyType", file: !4, line: 425, baseType: !629)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !632, file: !615, line: 348, baseType: !638, size: 128, align: 64, offset: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !615, line: 337, size: 128, align: 64, elements: !639)
!639 = !{!640, !643, !644, !645, !650, !652, !659}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "boolValue", scope: !638, file: !615, line: 338, baseType: !641, size: 8, align: 8)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !642, line: 230, baseType: !628)
!642 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!643 = !DIDerivedType(tag: DW_TAG_member, name: "strValue", scope: !638, file: !615, line: 339, baseType: !627, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "intValue", scope: !638, file: !615, line: 340, baseType: !629, size: 32, align: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "int64Value", scope: !638, file: !615, line: 341, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !642, line: 172, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !648, line: 40, baseType: !649)
!648 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!649 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "handleValue", scope: !638, file: !615, line: 342, baseType: !651, size: 32, align: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixHandle", file: !4, line: 43, baseType: !629)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "blobValue", scope: !638, file: !615, line: 346, baseType: !653, size: 128, align: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !615, line: 343, size: 128, align: 64, elements: !654)
!654 = !{!655, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "blobContents", scope: !653, file: !615, line: 344, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "blobSize", scope: !653, file: !615, line: 345, baseType: !629, size: 32, align: 32, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ptrValue", scope: !638, file: !615, line: 347, baseType: !626, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "isDirty", scope: !632, file: !615, line: 350, baseType: !641, size: 8, align: 8, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "isSensitive", scope: !632, file: !615, line: 351, baseType: !641, size: 8, align: 8, offset: 200)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !615, line: 352, baseType: !663, size: 64, align: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!668 = !{i32 2, !"Dwarf Version", i32 4}
!669 = !{i32 2, !"Debug Info Version", i32 3}
!670 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!671 = distinct !DISubprogram(name: "VixPropertyList_Initialize", scope: !672, file: !672, line: 81, type: !673, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!672 = !DIFile(filename: "foundryPropertyListCommon.c", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!673 = !DISubroutineType(types: !674)
!674 = !{null, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixPropertyListImpl", file: !615, line: 362, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VixPropertyListImpl", file: !615, line: 359, size: 64, align: 64, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !677, file: !615, line: 361, baseType: !630, size: 64, align: 64)
!680 = !{}
!681 = !DILocalVariable(name: "propList", arg: 1, scope: !671, file: !672, line: 81, type: !675)
!682 = !DIExpression()
!683 = !DILocation(line: 81, column: 49, scope: !671)
!684 = !DILocation(line: 84, column: 4, scope: !671)
!685 = !DILocation(line: 84, column: 14, scope: !671)
!686 = !DILocation(line: 84, column: 25, scope: !671)
!687 = !DILocation(line: 85, column: 1, scope: !671)
!688 = distinct !DISubprogram(name: "VixPropertyList_RemoveAllWithoutHandles", scope: !672, file: !672, line: 106, type: !673, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!689 = !DILocalVariable(name: "propList", arg: 1, scope: !688, file: !672, line: 106, type: !675)
!690 = !DILocation(line: 106, column: 62, scope: !688)
!691 = !DILocalVariable(name: "property", scope: !688, file: !672, line: 108, type: !630)
!692 = !DILocation(line: 108, column: 22, scope: !688)
!693 = !DILocation(line: 110, column: 15, scope: !694)
!694 = distinct !DILexicalBlock(scope: !688, file: !672, line: 110, column: 7)
!695 = !DILocation(line: 110, column: 12, scope: !694)
!696 = !DILocation(line: 110, column: 7, scope: !688)
!697 = !DILocation(line: 111, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !672, line: 110, column: 25)
!699 = !DILocation(line: 114, column: 4, scope: !688)
!700 = !DILocation(line: 114, column: 18, scope: !701)
!701 = !DILexicalBlockFile(scope: !688, file: !672, discriminator: 1)
!702 = !DILocation(line: 114, column: 28, scope: !701)
!703 = !DILocation(line: 114, column: 15, scope: !701)
!704 = !DILocation(line: 114, column: 4, scope: !701)
!705 = !DILocation(line: 115, column: 18, scope: !706)
!706 = distinct !DILexicalBlock(scope: !688, file: !672, line: 114, column: 40)
!707 = !DILocation(line: 115, column: 28, scope: !706)
!708 = !DILocation(line: 115, column: 16, scope: !706)
!709 = !DILocation(line: 116, column: 30, scope: !706)
!710 = !DILocation(line: 116, column: 40, scope: !706)
!711 = !DILocation(line: 116, column: 7, scope: !706)
!712 = !DILocation(line: 116, column: 17, scope: !706)
!713 = !DILocation(line: 116, column: 28, scope: !706)
!714 = !DILocation(line: 118, column: 38, scope: !715)
!715 = distinct !DILexicalBlock(scope: !706, file: !672, line: 118, column: 11)
!716 = !DILocation(line: 118, column: 48, scope: !715)
!717 = !DILocation(line: 118, column: 35, scope: !715)
!718 = !DILocation(line: 118, column: 11, scope: !706)
!719 = !DILocation(line: 119, column: 14, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !672, line: 119, column: 14)
!721 = distinct !DILexicalBlock(scope: !715, file: !672, line: 118, column: 54)
!722 = !DILocation(line: 119, column: 24, scope: !720)
!723 = !DILocation(line: 119, column: 14, scope: !721)
!724 = !DILocation(line: 120, column: 29, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !672, line: 119, column: 37)
!726 = !DILocation(line: 120, column: 39, scope: !725)
!727 = !DILocation(line: 120, column: 45, scope: !725)
!728 = !DILocation(line: 120, column: 13, scope: !725)
!729 = !DILocation(line: 121, column: 10, scope: !725)
!730 = !DILocation(line: 122, column: 15, scope: !721)
!731 = !DILocation(line: 122, column: 25, scope: !721)
!732 = !DILocation(line: 122, column: 31, scope: !721)
!733 = !DILocation(line: 122, column: 10, scope: !721)
!734 = !DILocation(line: 123, column: 7, scope: !721)
!735 = !DILocation(line: 123, column: 43, scope: !736)
!736 = !DILexicalBlockFile(scope: !737, file: !672, discriminator: 1)
!737 = distinct !DILexicalBlock(scope: !715, file: !672, line: 123, column: 18)
!738 = !DILocation(line: 123, column: 53, scope: !736)
!739 = !DILocation(line: 123, column: 40, scope: !736)
!740 = !DILocation(line: 123, column: 18, scope: !736)
!741 = !DILocation(line: 124, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !672, line: 124, column: 14)
!743 = distinct !DILexicalBlock(scope: !737, file: !672, line: 123, column: 59)
!744 = !DILocation(line: 124, column: 24, scope: !742)
!745 = !DILocation(line: 124, column: 14, scope: !743)
!746 = !DILocation(line: 125, column: 23, scope: !747)
!747 = distinct !DILexicalBlock(scope: !742, file: !672, line: 124, column: 37)
!748 = !DILocation(line: 125, column: 33, scope: !747)
!749 = !DILocation(line: 125, column: 39, scope: !747)
!750 = !DILocation(line: 125, column: 49, scope: !747)
!751 = !DILocation(line: 126, column: 23, scope: !747)
!752 = !DILocation(line: 126, column: 33, scope: !747)
!753 = !DILocation(line: 126, column: 39, scope: !747)
!754 = !DILocation(line: 126, column: 49, scope: !747)
!755 = !DILocation(line: 125, column: 13, scope: !747)
!756 = !DILocation(line: 127, column: 10, scope: !747)
!757 = !DILocation(line: 128, column: 15, scope: !743)
!758 = !DILocation(line: 128, column: 25, scope: !743)
!759 = !DILocation(line: 128, column: 31, scope: !743)
!760 = !DILocation(line: 128, column: 41, scope: !743)
!761 = !DILocation(line: 128, column: 10, scope: !743)
!762 = !DILocation(line: 129, column: 7, scope: !743)
!763 = !DILocation(line: 131, column: 12, scope: !706)
!764 = !DILocation(line: 131, column: 7, scope: !706)
!765 = !DILocation(line: 114, column: 4, scope: !766)
!766 = !DILexicalBlockFile(scope: !688, file: !672, discriminator: 2)
!767 = distinct !{!767, !699}
!768 = !DILocation(line: 133, column: 1, scope: !688)
!769 = distinct !DISubprogram(name: "Util_ZeroString", scope: !770, file: !770, line: 210, type: !771, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!770 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/utilZero.h", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!771 = !DISubroutineType(types: !772)
!772 = !{null, !627}
!773 = !DILocalVariable(name: "str", arg: 1, scope: !769, file: !770, line: 210, type: !627)
!774 = !DILocation(line: 210, column: 23, scope: !769)
!775 = !DILocation(line: 212, column: 8, scope: !776)
!776 = distinct !DILexicalBlock(scope: !769, file: !770, line: 212, column: 8)
!777 = !DILocation(line: 212, column: 12, scope: !776)
!778 = !DILocation(line: 212, column: 8, scope: !769)
!779 = !DILocation(line: 213, column: 17, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !770, line: 212, column: 20)
!781 = !DILocation(line: 213, column: 29, scope: !780)
!782 = !DILocation(line: 213, column: 22, scope: !780)
!783 = !DILocation(line: 213, column: 7, scope: !784)
!784 = !DILexicalBlockFile(scope: !780, file: !770, discriminator: 1)
!785 = !DILocation(line: 214, column: 4, scope: !780)
!786 = !DILocation(line: 215, column: 1, scope: !769)
!787 = distinct !DISubprogram(name: "Util_Zero", scope: !770, file: !770, line: 170, type: !788, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !626, !790}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !791, line: 216, baseType: !792)
!791 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line249")
!792 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!793 = !DILocalVariable(name: "buf", arg: 1, scope: !787, file: !770, line: 170, type: !626)
!794 = !DILocation(line: 170, column: 17, scope: !787)
!795 = !DILocalVariable(name: "bufSize", arg: 2, scope: !787, file: !770, line: 171, type: !790)
!796 = !DILocation(line: 171, column: 18, scope: !787)
!797 = !DILocation(line: 173, column: 8, scope: !798)
!798 = distinct !DILexicalBlock(scope: !787, file: !770, line: 173, column: 8)
!799 = !DILocation(line: 173, column: 12, scope: !798)
!800 = !DILocation(line: 173, column: 8, scope: !787)
!801 = !DILocation(line: 181, column: 14, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !770, line: 173, column: 20)
!803 = !DILocation(line: 181, column: 22, scope: !802)
!804 = !DILocation(line: 181, column: 7, scope: !802)
!805 = !DILocation(line: 186, column: 7, scope: !802)
!806 = !{i32 88015}
!807 = !DILocation(line: 189, column: 4, scope: !802)
!808 = !DILocation(line: 190, column: 1, scope: !787)
!809 = distinct !DISubprogram(name: "VixPropertyList_MarkAllSensitive", scope: !672, file: !672, line: 153, type: !673, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!810 = !DILocalVariable(name: "propList", arg: 1, scope: !809, file: !672, line: 153, type: !675)
!811 = !DILocation(line: 153, column: 55, scope: !809)
!812 = !DILocation(line: 155, column: 15, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !672, line: 155, column: 7)
!814 = !DILocation(line: 155, column: 12, scope: !813)
!815 = !DILocation(line: 155, column: 7, scope: !809)
!816 = !DILocalVariable(name: "property", scope: !817, file: !672, line: 156, type: !630)
!817 = distinct !DILexicalBlock(scope: !813, file: !672, line: 155, column: 25)
!818 = !DILocation(line: 156, column: 25, scope: !817)
!819 = !DILocation(line: 156, column: 36, scope: !817)
!820 = !DILocation(line: 156, column: 46, scope: !817)
!821 = !DILocation(line: 158, column: 7, scope: !817)
!822 = !DILocation(line: 158, column: 21, scope: !823)
!823 = !DILexicalBlockFile(scope: !817, file: !672, discriminator: 1)
!824 = !DILocation(line: 158, column: 18, scope: !823)
!825 = !DILocation(line: 158, column: 7, scope: !823)
!826 = !DILocation(line: 159, column: 10, scope: !827)
!827 = distinct !DILexicalBlock(scope: !817, file: !672, line: 158, column: 31)
!828 = !DILocation(line: 159, column: 20, scope: !827)
!829 = !DILocation(line: 159, column: 32, scope: !827)
!830 = !DILocation(line: 161, column: 21, scope: !827)
!831 = !DILocation(line: 161, column: 31, scope: !827)
!832 = !DILocation(line: 161, column: 19, scope: !827)
!833 = !DILocation(line: 158, column: 7, scope: !834)
!834 = !DILexicalBlockFile(scope: !817, file: !672, discriminator: 2)
!835 = distinct !{!835, !821}
!836 = !DILocation(line: 163, column: 4, scope: !817)
!837 = !DILocation(line: 164, column: 1, scope: !809)
!838 = distinct !DISubprogram(name: "VixPropertyList_Serialize", scope: !672, file: !672, line: 189, type: !839, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!839 = !DISubroutineType(types: !840)
!840 = !{!841, !675, !641, !844, !845}
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixError", file: !4, line: 79, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !642, line: 171, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !648, line: 55, baseType: !792)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64, align: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!846 = !DILocalVariable(name: "propList", arg: 1, scope: !838, file: !672, line: 189, type: !675)
!847 = !DILocation(line: 189, column: 48, scope: !838)
!848 = !DILocalVariable(name: "dirtyOnly", arg: 2, scope: !838, file: !672, line: 190, type: !641)
!849 = !DILocation(line: 190, column: 32, scope: !838)
!850 = !DILocalVariable(name: "resultSize", arg: 3, scope: !838, file: !672, line: 191, type: !844)
!851 = !DILocation(line: 191, column: 35, scope: !838)
!852 = !DILocalVariable(name: "resultBuffer", arg: 4, scope: !838, file: !672, line: 192, type: !845)
!853 = !DILocation(line: 192, column: 34, scope: !838)
!854 = !DILocalVariable(name: "err", scope: !838, file: !672, line: 194, type: !841)
!855 = !DILocation(line: 194, column: 13, scope: !838)
!856 = !DILocalVariable(name: "property", scope: !838, file: !672, line: 195, type: !630)
!857 = !DILocation(line: 195, column: 22, scope: !838)
!858 = !DILocalVariable(name: "serializeBuffer", scope: !838, file: !672, line: 196, type: !627)
!859 = !DILocation(line: 196, column: 10, scope: !838)
!860 = !DILocalVariable(name: "valueLength", scope: !838, file: !672, line: 197, type: !629)
!861 = !DILocation(line: 197, column: 8, scope: !838)
!862 = !DILocalVariable(name: "headerSize", scope: !838, file: !672, line: 198, type: !790)
!863 = !DILocation(line: 198, column: 11, scope: !838)
!864 = !DILocalVariable(name: "propertyIDSize", scope: !838, file: !672, line: 199, type: !790)
!865 = !DILocation(line: 199, column: 11, scope: !838)
!866 = !DILocalVariable(name: "propertyTypeSize", scope: !838, file: !672, line: 200, type: !790)
!867 = !DILocation(line: 200, column: 11, scope: !838)
!868 = !DILocalVariable(name: "propertyValueLengthSize", scope: !838, file: !672, line: 201, type: !790)
!869 = !DILocation(line: 201, column: 11, scope: !838)
!870 = !DILocalVariable(name: "bufferSize", scope: !838, file: !672, line: 202, type: !790)
!871 = !DILocation(line: 202, column: 11, scope: !838)
!872 = !DILocalVariable(name: "pos", scope: !838, file: !672, line: 203, type: !790)
!873 = !DILocation(line: 203, column: 11, scope: !838)
!874 = !DILocation(line: 205, column: 4, scope: !838)
!875 = distinct !{!875, !874}
!876 = !DILocation(line: 205, column: 96, scope: !877)
!877 = !DILexicalBlockFile(scope: !878, file: !672, discriminator: 1)
!878 = distinct !DILexicalBlock(scope: !838, file: !672, line: 205, column: 7)
!879 = !DILocation(line: 207, column: 16, scope: !880)
!880 = distinct !DILexicalBlock(scope: !838, file: !672, line: 207, column: 8)
!881 = !DILocation(line: 207, column: 13, scope: !880)
!882 = !DILocation(line: 207, column: 26, scope: !880)
!883 = !DILocation(line: 208, column: 16, scope: !880)
!884 = !DILocation(line: 208, column: 13, scope: !880)
!885 = !DILocation(line: 208, column: 28, scope: !880)
!886 = !DILocation(line: 209, column: 16, scope: !880)
!887 = !DILocation(line: 209, column: 13, scope: !880)
!888 = !DILocation(line: 207, column: 8, scope: !889)
!889 = !DILexicalBlockFile(scope: !838, file: !672, discriminator: 1)
!890 = !DILocation(line: 210, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !880, file: !672, line: 209, column: 31)
!892 = !DILocation(line: 211, column: 7, scope: !891)
!893 = !DILocation(line: 214, column: 19, scope: !838)
!894 = !DILocation(line: 215, column: 21, scope: !838)
!895 = !DILocation(line: 216, column: 28, scope: !838)
!896 = !DILocation(line: 218, column: 17, scope: !838)
!897 = !DILocation(line: 218, column: 34, scope: !838)
!898 = !DILocation(line: 218, column: 32, scope: !838)
!899 = !DILocation(line: 218, column: 53, scope: !838)
!900 = !DILocation(line: 218, column: 51, scope: !838)
!901 = !DILocation(line: 218, column: 15, scope: !838)
!902 = !DILocation(line: 223, column: 15, scope: !838)
!903 = !DILocation(line: 223, column: 25, scope: !838)
!904 = !DILocation(line: 223, column: 13, scope: !838)
!905 = !DILocation(line: 224, column: 4, scope: !838)
!906 = !DILocation(line: 224, column: 18, scope: !889)
!907 = !DILocation(line: 224, column: 15, scope: !889)
!908 = !DILocation(line: 224, column: 4, scope: !889)
!909 = !DILocation(line: 229, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !672, line: 229, column: 11)
!911 = distinct !DILexicalBlock(scope: !838, file: !672, line: 224, column: 28)
!912 = !DILocation(line: 229, column: 21, scope: !910)
!913 = !DILocation(line: 229, column: 26, scope: !914)
!914 = !DILexicalBlockFile(scope: !910, file: !672, discriminator: 1)
!915 = !DILocation(line: 229, column: 36, scope: !914)
!916 = !DILocation(line: 229, column: 11, scope: !914)
!917 = !DILocation(line: 230, column: 21, scope: !918)
!918 = distinct !DILexicalBlock(scope: !910, file: !672, line: 229, column: 46)
!919 = !DILocation(line: 230, column: 31, scope: !918)
!920 = !DILocation(line: 230, column: 19, scope: !918)
!921 = !DILocation(line: 231, column: 10, scope: !918)
!922 = distinct !{!922, !905}
!923 = !DILocation(line: 234, column: 21, scope: !911)
!924 = !DILocation(line: 234, column: 18, scope: !911)
!925 = !DILocation(line: 236, column: 15, scope: !911)
!926 = !DILocation(line: 236, column: 25, scope: !911)
!927 = !DILocation(line: 236, column: 7, scope: !911)
!928 = !DILocation(line: 239, column: 24, scope: !929)
!929 = distinct !DILexicalBlock(scope: !911, file: !672, line: 236, column: 31)
!930 = !DILocation(line: 240, column: 13, scope: !929)
!931 = !DILocation(line: 244, column: 17, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !672, line: 244, column: 17)
!933 = !DILocation(line: 244, column: 27, scope: !932)
!934 = !DILocation(line: 244, column: 33, scope: !932)
!935 = !DILocation(line: 244, column: 17, scope: !929)
!936 = !DILocation(line: 245, column: 37, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !672, line: 244, column: 43)
!938 = !DILocation(line: 245, column: 47, scope: !937)
!939 = !DILocation(line: 245, column: 53, scope: !937)
!940 = !DILocation(line: 245, column: 30, scope: !937)
!941 = !DILocation(line: 245, column: 63, scope: !937)
!942 = !DILocation(line: 245, column: 28, scope: !937)
!943 = !DILocation(line: 255, column: 43, scope: !944)
!944 = distinct !DILexicalBlock(scope: !937, file: !672, line: 255, column: 20)
!945 = !DILocation(line: 255, column: 53, scope: !944)
!946 = !DILocation(line: 255, column: 59, scope: !944)
!947 = !DILocation(line: 256, column: 43, scope: !944)
!948 = !DILocation(line: 255, column: 21, scope: !944)
!949 = !DILocation(line: 255, column: 20, scope: !937)
!950 = !DILocation(line: 260, column: 37, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !672, line: 257, column: 66)
!952 = !DILocation(line: 260, column: 47, scope: !951)
!953 = !DILocation(line: 258, column: 19, scope: !951)
!954 = !DILocation(line: 262, column: 23, scope: !951)
!955 = !DILocation(line: 263, column: 16, scope: !951)
!956 = !DILocation(line: 264, column: 30, scope: !937)
!957 = !DILocation(line: 264, column: 27, scope: !937)
!958 = !DILocation(line: 265, column: 13, scope: !937)
!959 = !DILocation(line: 266, column: 20, scope: !960)
!960 = distinct !DILexicalBlock(scope: !932, file: !672, line: 265, column: 20)
!961 = !DILocation(line: 267, column: 16, scope: !960)
!962 = !DILocation(line: 269, column: 13, scope: !929)
!963 = !DILocation(line: 273, column: 24, scope: !929)
!964 = !DILocation(line: 274, column: 13, scope: !929)
!965 = !DILocation(line: 278, column: 24, scope: !929)
!966 = !DILocation(line: 279, column: 13, scope: !929)
!967 = !DILocation(line: 283, column: 27, scope: !929)
!968 = !DILocation(line: 283, column: 37, scope: !929)
!969 = !DILocation(line: 283, column: 43, scope: !929)
!970 = !DILocation(line: 283, column: 53, scope: !929)
!971 = !DILocation(line: 283, column: 24, scope: !929)
!972 = !DILocation(line: 284, column: 13, scope: !929)
!973 = !DILocation(line: 292, column: 17, scope: !929)
!974 = !DILocation(line: 293, column: 13, scope: !929)
!975 = !DILocation(line: 295, column: 13, scope: !929)
!976 = !DILocation(line: 299, column: 17, scope: !929)
!977 = !DILocation(line: 300, column: 13, scope: !929)
!978 = !DILocation(line: 303, column: 18, scope: !911)
!979 = !DILocation(line: 303, column: 28, scope: !911)
!980 = !DILocation(line: 303, column: 16, scope: !911)
!981 = !DILocation(line: 224, column: 4, scope: !982)
!982 = !DILexicalBlockFile(scope: !838, file: !672, discriminator: 2)
!983 = !DILocation(line: 306, column: 52, scope: !838)
!984 = !DILocation(line: 306, column: 28, scope: !838)
!985 = !DILocation(line: 306, column: 5, scope: !838)
!986 = !DILocation(line: 306, column: 18, scope: !838)
!987 = !DILocation(line: 307, column: 16, scope: !988)
!988 = distinct !DILexicalBlock(scope: !838, file: !672, line: 307, column: 7)
!989 = !DILocation(line: 307, column: 15, scope: !988)
!990 = !DILocation(line: 307, column: 12, scope: !988)
!991 = !DILocation(line: 307, column: 7, scope: !838)
!992 = !DILocation(line: 308, column: 11, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !672, line: 307, column: 30)
!994 = !DILocation(line: 309, column: 7, scope: !993)
!995 = !DILocation(line: 311, column: 23, scope: !838)
!996 = !DILocation(line: 311, column: 22, scope: !838)
!997 = !DILocation(line: 311, column: 20, scope: !838)
!998 = !DILocation(line: 313, column: 8, scope: !838)
!999 = !DILocation(line: 314, column: 15, scope: !838)
!1000 = !DILocation(line: 314, column: 25, scope: !838)
!1001 = !DILocation(line: 314, column: 13, scope: !838)
!1002 = !DILocation(line: 321, column: 4, scope: !838)
!1003 = !DILocation(line: 321, column: 18, scope: !889)
!1004 = !DILocation(line: 321, column: 15, scope: !889)
!1005 = !DILocation(line: 321, column: 4, scope: !889)
!1006 = !DILocation(line: 326, column: 11, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !672, line: 326, column: 11)
!1008 = distinct !DILexicalBlock(scope: !838, file: !672, line: 321, column: 28)
!1009 = !DILocation(line: 326, column: 21, scope: !1007)
!1010 = !DILocation(line: 326, column: 26, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1007, file: !672, discriminator: 1)
!1012 = !DILocation(line: 326, column: 36, scope: !1011)
!1013 = !DILocation(line: 326, column: 11, scope: !1011)
!1014 = !DILocation(line: 327, column: 21, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !672, line: 326, column: 46)
!1016 = !DILocation(line: 327, column: 31, scope: !1015)
!1017 = !DILocation(line: 327, column: 19, scope: !1015)
!1018 = !DILocation(line: 328, column: 10, scope: !1015)
!1019 = distinct !{!1019, !1002}
!1020 = !DILocation(line: 331, column: 32, scope: !1008)
!1021 = !DILocation(line: 331, column: 16, scope: !1008)
!1022 = !DILocation(line: 331, column: 41, scope: !1008)
!1023 = !DILocation(line: 331, column: 51, scope: !1008)
!1024 = !DILocation(line: 331, column: 7, scope: !1008)
!1025 = !DILocation(line: 331, column: 64, scope: !1008)
!1026 = !DILocation(line: 332, column: 14, scope: !1008)
!1027 = !DILocation(line: 332, column: 11, scope: !1008)
!1028 = !DILocation(line: 333, column: 32, scope: !1008)
!1029 = !DILocation(line: 333, column: 16, scope: !1008)
!1030 = !DILocation(line: 333, column: 41, scope: !1008)
!1031 = !DILocation(line: 333, column: 51, scope: !1008)
!1032 = !DILocation(line: 333, column: 7, scope: !1008)
!1033 = !DILocation(line: 333, column: 58, scope: !1008)
!1034 = !DILocation(line: 334, column: 14, scope: !1008)
!1035 = !DILocation(line: 334, column: 11, scope: !1008)
!1036 = !DILocation(line: 336, column: 15, scope: !1008)
!1037 = !DILocation(line: 336, column: 25, scope: !1008)
!1038 = !DILocation(line: 336, column: 7, scope: !1008)
!1039 = !DILocation(line: 339, column: 26, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1008, file: !672, line: 336, column: 31)
!1041 = !DILocation(line: 340, column: 39, scope: !1040)
!1042 = !DILocation(line: 340, column: 23, scope: !1040)
!1043 = !DILocation(line: 340, column: 14, scope: !1040)
!1044 = !DILocation(line: 340, column: 60, scope: !1040)
!1045 = !DILocation(line: 341, column: 21, scope: !1040)
!1046 = !DILocation(line: 341, column: 18, scope: !1040)
!1047 = !DILocation(line: 342, column: 39, scope: !1040)
!1048 = !DILocation(line: 342, column: 23, scope: !1040)
!1049 = !DILocation(line: 342, column: 48, scope: !1040)
!1050 = !DILocation(line: 342, column: 58, scope: !1040)
!1051 = !DILocation(line: 342, column: 64, scope: !1040)
!1052 = !DILocation(line: 342, column: 14, scope: !1040)
!1053 = !DILocation(line: 342, column: 75, scope: !1040)
!1054 = !DILocation(line: 343, column: 14, scope: !1040)
!1055 = !DILocation(line: 347, column: 41, scope: !1040)
!1056 = !DILocation(line: 347, column: 51, scope: !1040)
!1057 = !DILocation(line: 347, column: 57, scope: !1040)
!1058 = !DILocation(line: 347, column: 34, scope: !1040)
!1059 = !DILocation(line: 347, column: 28, scope: !1040)
!1060 = !DILocation(line: 347, column: 67, scope: !1040)
!1061 = !DILocation(line: 347, column: 26, scope: !1040)
!1062 = !DILocation(line: 348, column: 39, scope: !1040)
!1063 = !DILocation(line: 348, column: 23, scope: !1040)
!1064 = !DILocation(line: 348, column: 14, scope: !1040)
!1065 = !DILocation(line: 348, column: 60, scope: !1040)
!1066 = !DILocation(line: 349, column: 21, scope: !1040)
!1067 = !DILocation(line: 349, column: 18, scope: !1040)
!1068 = !DILocation(line: 350, column: 43, scope: !1040)
!1069 = !DILocation(line: 350, column: 27, scope: !1040)
!1070 = !DILocation(line: 350, column: 50, scope: !1040)
!1071 = !DILocation(line: 350, column: 60, scope: !1040)
!1072 = !DILocation(line: 350, column: 66, scope: !1040)
!1073 = !DILocation(line: 350, column: 76, scope: !1040)
!1074 = !DILocation(line: 350, column: 14, scope: !1040)
!1075 = !DILocation(line: 351, column: 14, scope: !1040)
!1076 = !DILocation(line: 355, column: 26, scope: !1040)
!1077 = !DILocation(line: 356, column: 39, scope: !1040)
!1078 = !DILocation(line: 356, column: 23, scope: !1040)
!1079 = !DILocation(line: 356, column: 14, scope: !1040)
!1080 = !DILocation(line: 356, column: 60, scope: !1040)
!1081 = !DILocation(line: 357, column: 21, scope: !1040)
!1082 = !DILocation(line: 357, column: 18, scope: !1040)
!1083 = !DILocation(line: 358, column: 39, scope: !1040)
!1084 = !DILocation(line: 358, column: 23, scope: !1040)
!1085 = !DILocation(line: 358, column: 48, scope: !1040)
!1086 = !DILocation(line: 358, column: 58, scope: !1040)
!1087 = !DILocation(line: 358, column: 64, scope: !1040)
!1088 = !DILocation(line: 358, column: 76, scope: !1040)
!1089 = !DILocation(line: 358, column: 14, scope: !1040)
!1090 = !DILocation(line: 359, column: 14, scope: !1040)
!1091 = !DILocation(line: 363, column: 26, scope: !1040)
!1092 = !DILocation(line: 364, column: 39, scope: !1040)
!1093 = !DILocation(line: 364, column: 23, scope: !1040)
!1094 = !DILocation(line: 364, column: 14, scope: !1040)
!1095 = !DILocation(line: 364, column: 60, scope: !1040)
!1096 = !DILocation(line: 365, column: 21, scope: !1040)
!1097 = !DILocation(line: 365, column: 18, scope: !1040)
!1098 = !DILocation(line: 366, column: 39, scope: !1040)
!1099 = !DILocation(line: 366, column: 23, scope: !1040)
!1100 = !DILocation(line: 366, column: 48, scope: !1040)
!1101 = !DILocation(line: 366, column: 58, scope: !1040)
!1102 = !DILocation(line: 366, column: 64, scope: !1040)
!1103 = !DILocation(line: 366, column: 14, scope: !1040)
!1104 = !DILocation(line: 366, column: 77, scope: !1040)
!1105 = !DILocation(line: 367, column: 14, scope: !1040)
!1106 = !DILocation(line: 371, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1040, file: !672, line: 371, column: 17)
!1108 = !DILocation(line: 371, column: 27, scope: !1107)
!1109 = !DILocation(line: 371, column: 33, scope: !1107)
!1110 = !DILocation(line: 371, column: 43, scope: !1107)
!1111 = !DILocation(line: 371, column: 17, scope: !1040)
!1112 = !DILocation(line: 372, column: 30, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !672, line: 371, column: 57)
!1114 = !DILocation(line: 372, column: 40, scope: !1113)
!1115 = !DILocation(line: 372, column: 46, scope: !1113)
!1116 = !DILocation(line: 372, column: 56, scope: !1113)
!1117 = !DILocation(line: 372, column: 28, scope: !1113)
!1118 = !DILocation(line: 373, column: 41, scope: !1113)
!1119 = !DILocation(line: 373, column: 25, scope: !1113)
!1120 = !DILocation(line: 373, column: 16, scope: !1113)
!1121 = !DILocation(line: 373, column: 62, scope: !1113)
!1122 = !DILocation(line: 374, column: 23, scope: !1113)
!1123 = !DILocation(line: 374, column: 20, scope: !1113)
!1124 = !DILocation(line: 375, column: 41, scope: !1113)
!1125 = !DILocation(line: 375, column: 25, scope: !1113)
!1126 = !DILocation(line: 376, column: 23, scope: !1113)
!1127 = !DILocation(line: 376, column: 33, scope: !1113)
!1128 = !DILocation(line: 376, column: 39, scope: !1113)
!1129 = !DILocation(line: 376, column: 49, scope: !1113)
!1130 = !DILocation(line: 377, column: 23, scope: !1113)
!1131 = !DILocation(line: 375, column: 16, scope: !1113)
!1132 = !DILocation(line: 378, column: 13, scope: !1113)
!1133 = !DILocation(line: 379, column: 20, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1107, file: !672, line: 378, column: 20)
!1135 = !DILocation(line: 380, column: 16, scope: !1134)
!1136 = !DILocation(line: 382, column: 13, scope: !1040)
!1137 = !DILocation(line: 386, column: 13, scope: !1040)
!1138 = !DILocation(line: 390, column: 18, scope: !1040)
!1139 = !DILocation(line: 391, column: 14, scope: !1040)
!1140 = !DILocation(line: 394, column: 14, scope: !1008)
!1141 = !DILocation(line: 394, column: 11, scope: !1008)
!1142 = !DILocation(line: 395, column: 18, scope: !1008)
!1143 = !DILocation(line: 395, column: 28, scope: !1008)
!1144 = !DILocation(line: 395, column: 16, scope: !1008)
!1145 = !DILocation(line: 321, column: 4, scope: !982)
!1146 = !DILocation(line: 399, column: 18, scope: !838)
!1147 = !DILocation(line: 399, column: 5, scope: !838)
!1148 = !DILocation(line: 399, column: 16, scope: !838)
!1149 = !DILocation(line: 399, column: 4, scope: !838)
!1150 = !DILocation(line: 402, column: 18, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !838, file: !672, line: 402, column: 8)
!1152 = !DILocation(line: 402, column: 15, scope: !1151)
!1153 = !DILocation(line: 402, column: 8, scope: !838)
!1154 = !DILocation(line: 403, column: 12, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !672, line: 402, column: 23)
!1156 = !DILocation(line: 403, column: 7, scope: !1155)
!1157 = !DILocation(line: 404, column: 18, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !672, line: 404, column: 10)
!1159 = !DILocation(line: 404, column: 15, scope: !1158)
!1160 = !DILocation(line: 404, column: 10, scope: !1155)
!1161 = !DILocation(line: 405, column: 11, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !672, line: 404, column: 32)
!1163 = !DILocation(line: 405, column: 24, scope: !1162)
!1164 = !DILocation(line: 406, column: 7, scope: !1162)
!1165 = !DILocation(line: 407, column: 18, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1155, file: !672, line: 407, column: 10)
!1167 = !DILocation(line: 407, column: 15, scope: !1166)
!1168 = !DILocation(line: 407, column: 10, scope: !1155)
!1169 = !DILocation(line: 408, column: 11, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !672, line: 407, column: 30)
!1171 = !DILocation(line: 408, column: 22, scope: !1170)
!1172 = !DILocation(line: 409, column: 7, scope: !1170)
!1173 = !DILocation(line: 410, column: 4, scope: !1155)
!1174 = !DILocation(line: 412, column: 11, scope: !838)
!1175 = !DILocation(line: 412, column: 4, scope: !838)
!1176 = distinct !DISubprogram(name: "VixPropertyList_Deserialize", scope: !672, file: !672, line: 434, type: !1177, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!841, !675, !1179, !790, !1181}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64, align: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "VixPropertyListBadEncodingAction", file: !615, line: 389, baseType: !614)
!1182 = !DILocalVariable(name: "propList", arg: 1, scope: !1176, file: !672, line: 434, type: !675)
!1183 = !DILocation(line: 434, column: 50, scope: !1176)
!1184 = !DILocalVariable(name: "buffer", arg: 2, scope: !1176, file: !672, line: 435, type: !1179)
!1185 = !DILocation(line: 435, column: 41, scope: !1176)
!1186 = !DILocalVariable(name: "bufferSize", arg: 3, scope: !1176, file: !672, line: 436, type: !790)
!1187 = !DILocation(line: 436, column: 36, scope: !1176)
!1188 = !DILocalVariable(name: "action", arg: 4, scope: !1176, file: !672, line: 437, type: !1181)
!1189 = !DILocation(line: 437, column: 62, scope: !1176)
!1190 = !DILocation(line: 439, column: 42, scope: !1176)
!1191 = !DILocation(line: 440, column: 42, scope: !1176)
!1192 = !DILocation(line: 441, column: 42, scope: !1176)
!1193 = !DILocation(line: 443, column: 42, scope: !1176)
!1194 = !DILocation(line: 439, column: 11, scope: !1176)
!1195 = !DILocation(line: 439, column: 4, scope: !1176)
!1196 = distinct !DISubprogram(name: "VixPropertyListDeserializeImpl", scope: !672, file: !672, line: 498, type: !1197, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!841, !675, !1179, !790, !641, !1181}
!1199 = !DILocalVariable(name: "propList", arg: 1, scope: !1196, file: !672, line: 498, type: !675)
!1200 = !DILocation(line: 498, column: 53, scope: !1196)
!1201 = !DILocalVariable(name: "buffer", arg: 2, scope: !1196, file: !672, line: 499, type: !1179)
!1202 = !DILocation(line: 499, column: 44, scope: !1196)
!1203 = !DILocalVariable(name: "bufferSize", arg: 3, scope: !1196, file: !672, line: 500, type: !790)
!1204 = !DILocation(line: 500, column: 39, scope: !1196)
!1205 = !DILocalVariable(name: "clobber", arg: 4, scope: !1196, file: !672, line: 501, type: !641)
!1206 = !DILocation(line: 501, column: 37, scope: !1196)
!1207 = !DILocalVariable(name: "action", arg: 5, scope: !1196, file: !672, line: 502, type: !1181)
!1208 = !DILocation(line: 502, column: 65, scope: !1196)
!1209 = !DILocalVariable(name: "err", scope: !1196, file: !672, line: 504, type: !841)
!1210 = !DILocation(line: 504, column: 13, scope: !1196)
!1211 = !DILocalVariable(name: "property", scope: !1196, file: !672, line: 505, type: !630)
!1212 = !DILocation(line: 505, column: 22, scope: !1196)
!1213 = !DILocalVariable(name: "pos", scope: !1196, file: !672, line: 506, type: !790)
!1214 = !DILocation(line: 506, column: 11, scope: !1196)
!1215 = !DILocalVariable(name: "strPtr", scope: !1196, file: !672, line: 507, type: !627)
!1216 = !DILocation(line: 507, column: 10, scope: !1196)
!1217 = !DILocalVariable(name: "intPtr", scope: !1196, file: !672, line: 508, type: !664)
!1218 = !DILocation(line: 508, column: 9, scope: !1196)
!1219 = !DILocalVariable(name: "boolPtr", scope: !1196, file: !672, line: 509, type: !666)
!1220 = !DILocation(line: 509, column: 10, scope: !1196)
!1221 = !DILocalVariable(name: "int64Ptr", scope: !1196, file: !672, line: 510, type: !667)
!1222 = !DILocation(line: 510, column: 11, scope: !1196)
!1223 = !DILocalVariable(name: "blobPtr", scope: !1196, file: !672, line: 511, type: !656)
!1224 = !DILocation(line: 511, column: 19, scope: !1196)
!1225 = !DILocalVariable(name: "propertyIDPtr", scope: !1196, file: !672, line: 512, type: !664)
!1226 = !DILocation(line: 512, column: 9, scope: !1196)
!1227 = !DILocalVariable(name: "lengthPtr", scope: !1196, file: !672, line: 513, type: !664)
!1228 = !DILocation(line: 513, column: 9, scope: !1196)
!1229 = !DILocalVariable(name: "propertyIDSize", scope: !1196, file: !672, line: 514, type: !790)
!1230 = !DILocation(line: 514, column: 11, scope: !1196)
!1231 = !DILocalVariable(name: "propertyTypeSize", scope: !1196, file: !672, line: 515, type: !790)
!1232 = !DILocation(line: 515, column: 11, scope: !1196)
!1233 = !DILocalVariable(name: "propertyValueLengthSize", scope: !1196, file: !672, line: 516, type: !790)
!1234 = !DILocation(line: 516, column: 11, scope: !1196)
!1235 = !DILocalVariable(name: "headerSize", scope: !1196, file: !672, line: 517, type: !790)
!1236 = !DILocation(line: 517, column: 11, scope: !1196)
!1237 = !DILocalVariable(name: "propertyTypePtr", scope: !1196, file: !672, line: 518, type: !665)
!1238 = !DILocation(line: 518, column: 21, scope: !1196)
!1239 = !DILocalVariable(name: "allocateFailed", scope: !1196, file: !672, line: 519, type: !641)
!1240 = !DILocation(line: 519, column: 9, scope: !1196)
!1241 = !DILocalVariable(name: "needToEscape", scope: !1196, file: !672, line: 520, type: !641)
!1242 = !DILocation(line: 520, column: 9, scope: !1196)
!1243 = !DILocation(line: 522, column: 16, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1196, file: !672, line: 522, column: 8)
!1245 = !DILocation(line: 522, column: 13, scope: !1244)
!1246 = !DILocation(line: 523, column: 8, scope: !1244)
!1247 = !DILocation(line: 523, column: 19, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1244, file: !672, discriminator: 1)
!1249 = !DILocation(line: 523, column: 16, scope: !1248)
!1250 = !DILocation(line: 522, column: 8, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1196, file: !672, discriminator: 1)
!1252 = !DILocation(line: 524, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1244, file: !672, line: 523, column: 28)
!1254 = !DILocation(line: 525, column: 7, scope: !1253)
!1255 = !DILocation(line: 528, column: 19, scope: !1196)
!1256 = !DILocation(line: 529, column: 21, scope: !1196)
!1257 = !DILocation(line: 530, column: 28, scope: !1196)
!1258 = !DILocation(line: 531, column: 17, scope: !1196)
!1259 = !DILocation(line: 531, column: 34, scope: !1196)
!1260 = !DILocation(line: 531, column: 32, scope: !1196)
!1261 = !DILocation(line: 531, column: 53, scope: !1196)
!1262 = !DILocation(line: 531, column: 51, scope: !1196)
!1263 = !DILocation(line: 531, column: 15, scope: !1196)
!1264 = !DILocation(line: 536, column: 4, scope: !1196)
!1265 = !DILocation(line: 536, column: 12, scope: !1251)
!1266 = !DILocation(line: 536, column: 16, scope: !1251)
!1267 = !DILocation(line: 536, column: 15, scope: !1251)
!1268 = !DILocation(line: 536, column: 30, scope: !1251)
!1269 = !DILocation(line: 536, column: 28, scope: !1251)
!1270 = !DILocation(line: 536, column: 4, scope: !1251)
!1271 = !DILocation(line: 537, column: 39, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1196, file: !672, line: 536, column: 42)
!1273 = !DILocation(line: 537, column: 32, scope: !1272)
!1274 = !DILocation(line: 537, column: 23, scope: !1272)
!1275 = !DILocation(line: 537, column: 21, scope: !1272)
!1276 = !DILocation(line: 538, column: 14, scope: !1272)
!1277 = !DILocation(line: 538, column: 11, scope: !1272)
!1278 = !DILocation(line: 539, column: 53, scope: !1272)
!1279 = !DILocation(line: 539, column: 46, scope: !1272)
!1280 = !DILocation(line: 539, column: 25, scope: !1272)
!1281 = !DILocation(line: 539, column: 23, scope: !1272)
!1282 = !DILocation(line: 540, column: 14, scope: !1272)
!1283 = !DILocation(line: 540, column: 11, scope: !1272)
!1284 = !DILocation(line: 541, column: 35, scope: !1272)
!1285 = !DILocation(line: 541, column: 28, scope: !1272)
!1286 = !DILocation(line: 541, column: 19, scope: !1272)
!1287 = !DILocation(line: 541, column: 17, scope: !1272)
!1288 = !DILocation(line: 542, column: 14, scope: !1272)
!1289 = !DILocation(line: 542, column: 11, scope: !1272)
!1290 = !DILocation(line: 549, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1272, file: !672, line: 549, column: 11)
!1292 = !DILocation(line: 549, column: 12, scope: !1291)
!1293 = !DILocation(line: 549, column: 23, scope: !1291)
!1294 = !DILocation(line: 549, column: 28, scope: !1291)
!1295 = !DILocation(line: 549, column: 34, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1291, file: !672, discriminator: 1)
!1297 = !DILocation(line: 549, column: 33, scope: !1296)
!1298 = !DILocation(line: 549, column: 46, scope: !1296)
!1299 = !DILocation(line: 549, column: 44, scope: !1296)
!1300 = !DILocation(line: 549, column: 53, scope: !1296)
!1301 = !DILocation(line: 549, column: 51, scope: !1296)
!1302 = !DILocation(line: 549, column: 11, scope: !1296)
!1303 = !DILocation(line: 550, column: 14, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1291, file: !672, line: 549, column: 66)
!1305 = !DILocation(line: 551, column: 10, scope: !1304)
!1306 = !DILocation(line: 557, column: 11, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1272, file: !672, line: 557, column: 11)
!1308 = !DILocation(line: 557, column: 11, scope: !1272)
!1309 = !DILocation(line: 558, column: 45, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !672, line: 557, column: 20)
!1311 = !DILocation(line: 559, column: 46, scope: !1310)
!1312 = !DILocation(line: 559, column: 45, scope: !1310)
!1313 = !DILocation(line: 560, column: 46, scope: !1310)
!1314 = !DILocation(line: 560, column: 45, scope: !1310)
!1315 = !DILocation(line: 558, column: 16, scope: !1310)
!1316 = !DILocation(line: 558, column: 14, scope: !1310)
!1317 = !DILocation(line: 564, column: 7, scope: !1310)
!1318 = !DILocation(line: 565, column: 46, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1307, file: !672, line: 564, column: 14)
!1320 = !DILocation(line: 566, column: 47, scope: !1319)
!1321 = !DILocation(line: 566, column: 46, scope: !1319)
!1322 = !DILocation(line: 567, column: 47, scope: !1319)
!1323 = !DILocation(line: 567, column: 46, scope: !1319)
!1324 = !DILocation(line: 565, column: 16, scope: !1319)
!1325 = !DILocation(line: 565, column: 14, scope: !1319)
!1326 = !DILocation(line: 571, column: 21, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1272, file: !672, line: 571, column: 11)
!1328 = !DILocation(line: 571, column: 18, scope: !1327)
!1329 = !DILocation(line: 571, column: 11, scope: !1272)
!1330 = !DILocation(line: 572, column: 10, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !672, line: 571, column: 26)
!1332 = !DILocation(line: 578, column: 16, scope: !1272)
!1333 = !DILocation(line: 578, column: 15, scope: !1272)
!1334 = !DILocation(line: 578, column: 7, scope: !1272)
!1335 = !DILocation(line: 581, column: 23, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !672, line: 581, column: 17)
!1337 = distinct !DILexicalBlock(scope: !1272, file: !672, line: 578, column: 33)
!1338 = !DILocation(line: 581, column: 22, scope: !1336)
!1339 = !DILocation(line: 581, column: 19, scope: !1336)
!1340 = !DILocation(line: 581, column: 17, scope: !1337)
!1341 = !DILocation(line: 582, column: 20, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !672, line: 581, column: 34)
!1343 = !DILocation(line: 583, column: 16, scope: !1342)
!1344 = !DILocation(line: 585, column: 38, scope: !1337)
!1345 = !DILocation(line: 585, column: 31, scope: !1337)
!1346 = !DILocation(line: 585, column: 22, scope: !1337)
!1347 = !DILocation(line: 585, column: 20, scope: !1337)
!1348 = !DILocation(line: 586, column: 41, scope: !1337)
!1349 = !DILocation(line: 586, column: 40, scope: !1337)
!1350 = !DILocation(line: 586, column: 13, scope: !1337)
!1351 = !DILocation(line: 586, column: 23, scope: !1337)
!1352 = !DILocation(line: 586, column: 29, scope: !1337)
!1353 = !DILocation(line: 586, column: 38, scope: !1337)
!1354 = !DILocation(line: 587, column: 13, scope: !1337)
!1355 = !DILocation(line: 591, column: 39, scope: !1337)
!1356 = !DILocation(line: 591, column: 32, scope: !1337)
!1357 = !DILocation(line: 591, column: 20, scope: !1337)
!1358 = !DILocation(line: 596, column: 25, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1337, file: !672, line: 596, column: 17)
!1360 = !DILocation(line: 596, column: 24, scope: !1359)
!1361 = !DILocation(line: 596, column: 35, scope: !1359)
!1362 = !DILocation(line: 596, column: 17, scope: !1359)
!1363 = !DILocation(line: 596, column: 40, scope: !1359)
!1364 = !DILocation(line: 596, column: 17, scope: !1337)
!1365 = !DILocation(line: 597, column: 20, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1359, file: !672, line: 596, column: 49)
!1367 = !DILocation(line: 598, column: 16, scope: !1366)
!1368 = !DILocation(line: 601, column: 26, scope: !1337)
!1369 = !DILocation(line: 607, column: 40, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1337, file: !672, line: 607, column: 17)
!1371 = !DILocation(line: 607, column: 49, scope: !1370)
!1372 = !DILocation(line: 607, column: 48, scope: !1370)
!1373 = !DILocation(line: 607, column: 18, scope: !1370)
!1374 = !DILocation(line: 607, column: 17, scope: !1337)
!1375 = !DILocation(line: 610, column: 35, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !672, line: 608, column: 63)
!1377 = !DILocation(line: 610, column: 34, scope: !1376)
!1378 = !DILocation(line: 609, column: 16, scope: !1376)
!1379 = !DILocation(line: 611, column: 24, scope: !1376)
!1380 = !DILocation(line: 611, column: 16, scope: !1376)
!1381 = !DILocation(line: 613, column: 23, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !672, line: 611, column: 32)
!1383 = !DILocation(line: 614, column: 19, scope: !1382)
!1384 = !DILocation(line: 616, column: 32, scope: !1382)
!1385 = !DILocation(line: 617, column: 16, scope: !1382)
!1386 = !DILocation(line: 619, column: 13, scope: !1376)
!1387 = !DILocation(line: 620, column: 18, scope: !1337)
!1388 = !DILocation(line: 620, column: 28, scope: !1337)
!1389 = !DILocation(line: 620, column: 34, scope: !1337)
!1390 = !DILocation(line: 620, column: 13, scope: !1337)
!1391 = !DILocation(line: 622, column: 17, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1337, file: !672, line: 622, column: 17)
!1393 = !DILocation(line: 622, column: 17, scope: !1337)
!1394 = !DILocation(line: 624, column: 40, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !672, line: 622, column: 31)
!1396 = !DILocation(line: 624, column: 49, scope: !1395)
!1397 = !DILocation(line: 624, column: 48, scope: !1395)
!1398 = !DILocation(line: 624, column: 19, scope: !1395)
!1399 = !DILocation(line: 623, column: 16, scope: !1395)
!1400 = !DILocation(line: 623, column: 26, scope: !1395)
!1401 = !DILocation(line: 623, column: 32, scope: !1395)
!1402 = !DILocation(line: 623, column: 41, scope: !1395)
!1403 = !DILocation(line: 626, column: 27, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1395, file: !672, line: 626, column: 19)
!1405 = !DILocation(line: 626, column: 37, scope: !1404)
!1406 = !DILocation(line: 626, column: 43, scope: !1404)
!1407 = !DILocation(line: 626, column: 24, scope: !1404)
!1408 = !DILocation(line: 626, column: 19, scope: !1395)
!1409 = !DILocation(line: 627, column: 23, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1404, file: !672, line: 626, column: 53)
!1411 = !DILocation(line: 628, column: 19, scope: !1410)
!1412 = !DILocation(line: 630, column: 13, scope: !1395)
!1413 = !DILocation(line: 632, column: 43, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1392, file: !672, line: 630, column: 20)
!1415 = !DILocation(line: 632, column: 19, scope: !1414)
!1416 = !DILocation(line: 631, column: 16, scope: !1414)
!1417 = !DILocation(line: 631, column: 26, scope: !1414)
!1418 = !DILocation(line: 631, column: 32, scope: !1414)
!1419 = !DILocation(line: 631, column: 41, scope: !1414)
!1420 = !DILocation(line: 633, column: 20, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1414, file: !672, line: 633, column: 20)
!1422 = !DILocation(line: 633, column: 20, scope: !1414)
!1423 = !DILocation(line: 634, column: 23, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !672, line: 633, column: 36)
!1425 = !DILocation(line: 635, column: 19, scope: !1424)
!1426 = !DILocation(line: 638, column: 13, scope: !1337)
!1427 = !DILocation(line: 642, column: 23, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1337, file: !672, line: 642, column: 17)
!1429 = !DILocation(line: 642, column: 22, scope: !1428)
!1430 = !DILocation(line: 642, column: 19, scope: !1428)
!1431 = !DILocation(line: 642, column: 17, scope: !1337)
!1432 = !DILocation(line: 643, column: 20, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1428, file: !672, line: 642, column: 34)
!1434 = !DILocation(line: 644, column: 16, scope: !1433)
!1435 = !DILocation(line: 646, column: 40, scope: !1337)
!1436 = !DILocation(line: 646, column: 33, scope: !1337)
!1437 = !DILocation(line: 646, column: 21, scope: !1337)
!1438 = !DILocation(line: 647, column: 42, scope: !1337)
!1439 = !DILocation(line: 647, column: 41, scope: !1337)
!1440 = !DILocation(line: 647, column: 13, scope: !1337)
!1441 = !DILocation(line: 647, column: 23, scope: !1337)
!1442 = !DILocation(line: 647, column: 29, scope: !1337)
!1443 = !DILocation(line: 647, column: 39, scope: !1337)
!1444 = !DILocation(line: 648, column: 13, scope: !1337)
!1445 = !DILocation(line: 652, column: 23, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1337, file: !672, line: 652, column: 17)
!1447 = !DILocation(line: 652, column: 22, scope: !1446)
!1448 = !DILocation(line: 652, column: 19, scope: !1446)
!1449 = !DILocation(line: 652, column: 17, scope: !1337)
!1450 = !DILocation(line: 653, column: 20, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !672, line: 652, column: 34)
!1452 = !DILocation(line: 654, column: 16, scope: !1451)
!1453 = !DILocation(line: 656, column: 42, scope: !1337)
!1454 = !DILocation(line: 656, column: 35, scope: !1337)
!1455 = !DILocation(line: 656, column: 24, scope: !1337)
!1456 = !DILocation(line: 656, column: 22, scope: !1337)
!1457 = !DILocation(line: 657, column: 43, scope: !1337)
!1458 = !DILocation(line: 657, column: 42, scope: !1337)
!1459 = !DILocation(line: 657, column: 13, scope: !1337)
!1460 = !DILocation(line: 657, column: 23, scope: !1337)
!1461 = !DILocation(line: 657, column: 29, scope: !1337)
!1462 = !DILocation(line: 657, column: 40, scope: !1337)
!1463 = !DILocation(line: 658, column: 13, scope: !1337)
!1464 = !DILocation(line: 662, column: 49, scope: !1337)
!1465 = !DILocation(line: 662, column: 42, scope: !1337)
!1466 = !DILocation(line: 662, column: 21, scope: !1337)
!1467 = !DILocation(line: 663, column: 51, scope: !1337)
!1468 = !DILocation(line: 663, column: 50, scope: !1337)
!1469 = !DILocation(line: 663, column: 13, scope: !1337)
!1470 = !DILocation(line: 663, column: 23, scope: !1337)
!1471 = !DILocation(line: 663, column: 29, scope: !1337)
!1472 = !DILocation(line: 663, column: 39, scope: !1337)
!1473 = !DILocation(line: 663, column: 48, scope: !1337)
!1474 = !DILocation(line: 669, column: 18, scope: !1337)
!1475 = !DILocation(line: 669, column: 28, scope: !1337)
!1476 = !DILocation(line: 669, column: 34, scope: !1337)
!1477 = !DILocation(line: 669, column: 44, scope: !1337)
!1478 = !DILocation(line: 669, column: 13, scope: !1337)
!1479 = !DILocation(line: 671, column: 41, scope: !1337)
!1480 = !DILocation(line: 671, column: 40, scope: !1337)
!1481 = !DILocation(line: 671, column: 16, scope: !1337)
!1482 = !DILocation(line: 670, column: 13, scope: !1337)
!1483 = !DILocation(line: 670, column: 23, scope: !1337)
!1484 = !DILocation(line: 670, column: 29, scope: !1337)
!1485 = !DILocation(line: 670, column: 39, scope: !1337)
!1486 = !DILocation(line: 670, column: 52, scope: !1337)
!1487 = !DILocation(line: 672, column: 24, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1337, file: !672, line: 672, column: 16)
!1489 = !DILocation(line: 672, column: 34, scope: !1488)
!1490 = !DILocation(line: 672, column: 40, scope: !1488)
!1491 = !DILocation(line: 672, column: 50, scope: !1488)
!1492 = !DILocation(line: 672, column: 21, scope: !1488)
!1493 = !DILocation(line: 672, column: 16, scope: !1337)
!1494 = !DILocation(line: 673, column: 20, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1488, file: !672, line: 672, column: 64)
!1496 = !DILocation(line: 674, column: 16, scope: !1495)
!1497 = !DILocation(line: 676, column: 20, scope: !1337)
!1498 = !DILocation(line: 676, column: 30, scope: !1337)
!1499 = !DILocation(line: 676, column: 36, scope: !1337)
!1500 = !DILocation(line: 676, column: 46, scope: !1337)
!1501 = !DILocation(line: 676, column: 60, scope: !1337)
!1502 = !DILocation(line: 676, column: 70, scope: !1337)
!1503 = !DILocation(line: 676, column: 69, scope: !1337)
!1504 = !DILocation(line: 676, column: 13, scope: !1337)
!1505 = !DILocation(line: 677, column: 13, scope: !1337)
!1506 = !DILocation(line: 685, column: 17, scope: !1337)
!1507 = !DILocation(line: 686, column: 13, scope: !1337)
!1508 = !DILocation(line: 688, column: 13, scope: !1337)
!1509 = !DILocation(line: 692, column: 17, scope: !1337)
!1510 = !DILocation(line: 693, column: 13, scope: !1337)
!1511 = !DILocation(line: 696, column: 15, scope: !1272)
!1512 = !DILocation(line: 696, column: 14, scope: !1272)
!1513 = !DILocation(line: 696, column: 11, scope: !1272)
!1514 = !DILocation(line: 536, column: 4, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1196, file: !672, discriminator: 2)
!1516 = distinct !{!1516, !1264}
!1517 = !DILocation(line: 536, column: 4, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1196, file: !672, discriminator: 3)
!1519 = !DILocation(line: 700, column: 19, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1196, file: !672, line: 700, column: 8)
!1521 = !DILocation(line: 700, column: 16, scope: !1520)
!1522 = !DILocation(line: 700, column: 24, scope: !1520)
!1523 = !DILocation(line: 700, column: 35, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1520, file: !672, discriminator: 1)
!1525 = !DILocation(line: 700, column: 32, scope: !1524)
!1526 = !DILocation(line: 700, column: 8, scope: !1524)
!1527 = !DILocation(line: 701, column: 47, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !672, line: 700, column: 46)
!1529 = !DILocation(line: 701, column: 7, scope: !1528)
!1530 = !DILocation(line: 702, column: 4, scope: !1528)
!1531 = !DILocation(line: 704, column: 11, scope: !1196)
!1532 = !DILocation(line: 704, column: 4, scope: !1196)
!1533 = distinct !DISubprogram(name: "VixPropertyList_DeserializeNoClobber", scope: !672, file: !672, line: 465, type: !1177, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1534 = !DILocalVariable(name: "propList", arg: 1, scope: !1533, file: !672, line: 465, type: !675)
!1535 = !DILocation(line: 465, column: 59, scope: !1533)
!1536 = !DILocalVariable(name: "buffer", arg: 2, scope: !1533, file: !672, line: 466, type: !1179)
!1537 = !DILocation(line: 466, column: 50, scope: !1533)
!1538 = !DILocalVariable(name: "bufferSize", arg: 3, scope: !1533, file: !672, line: 467, type: !790)
!1539 = !DILocation(line: 467, column: 45, scope: !1533)
!1540 = !DILocalVariable(name: "action", arg: 4, scope: !1533, file: !672, line: 468, type: !1181)
!1541 = !DILocation(line: 468, column: 71, scope: !1533)
!1542 = !DILocation(line: 470, column: 42, scope: !1533)
!1543 = !DILocation(line: 471, column: 42, scope: !1533)
!1544 = !DILocation(line: 472, column: 42, scope: !1533)
!1545 = !DILocation(line: 474, column: 42, scope: !1533)
!1546 = !DILocation(line: 470, column: 11, scope: !1533)
!1547 = !DILocation(line: 470, column: 4, scope: !1533)
!1548 = distinct !DISubprogram(name: "VixPropertyList_FindProperty", scope: !672, file: !672, line: 729, type: !1549, isLocal: false, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!841, !675, !629, !636, !629, !641, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!1552 = !DILocalVariable(name: "propList", arg: 1, scope: !1548, file: !672, line: 729, type: !675)
!1553 = !DILocation(line: 729, column: 51, scope: !1548)
!1554 = !DILocalVariable(name: "propertyID", arg: 2, scope: !1548, file: !672, line: 730, type: !629)
!1555 = !DILocation(line: 730, column: 34, scope: !1548)
!1556 = !DILocalVariable(name: "type", arg: 3, scope: !1548, file: !672, line: 731, type: !636)
!1557 = !DILocation(line: 731, column: 46, scope: !1548)
!1558 = !DILocalVariable(name: "index", arg: 4, scope: !1548, file: !672, line: 732, type: !629)
!1559 = !DILocation(line: 732, column: 34, scope: !1548)
!1560 = !DILocalVariable(name: "createIfMissing", arg: 5, scope: !1548, file: !672, line: 733, type: !641)
!1561 = !DILocation(line: 733, column: 35, scope: !1548)
!1562 = !DILocalVariable(name: "resultEntry", arg: 6, scope: !1548, file: !672, line: 734, type: !1551)
!1563 = !DILocation(line: 734, column: 49, scope: !1548)
!1564 = !DILocalVariable(name: "err", scope: !1548, file: !672, line: 736, type: !841)
!1565 = !DILocation(line: 736, column: 13, scope: !1548)
!1566 = !DILocalVariable(name: "property", scope: !1548, file: !672, line: 737, type: !630)
!1567 = !DILocation(line: 737, column: 22, scope: !1548)
!1568 = !DILocation(line: 739, column: 15, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1548, file: !672, line: 739, column: 7)
!1570 = !DILocation(line: 739, column: 12, scope: !1569)
!1571 = !DILocation(line: 739, column: 7, scope: !1548)
!1572 = !DILocation(line: 740, column: 11, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !672, line: 739, column: 28)
!1574 = !DILocation(line: 741, column: 7, scope: !1573)
!1575 = !DILocation(line: 743, column: 5, scope: !1548)
!1576 = !DILocation(line: 743, column: 17, scope: !1548)
!1577 = !DILocation(line: 746, column: 15, scope: !1548)
!1578 = !DILocation(line: 746, column: 25, scope: !1548)
!1579 = !DILocation(line: 746, column: 13, scope: !1548)
!1580 = !DILocation(line: 747, column: 4, scope: !1548)
!1581 = !DILocation(line: 747, column: 18, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1548, file: !672, discriminator: 1)
!1583 = !DILocation(line: 747, column: 15, scope: !1582)
!1584 = !DILocation(line: 747, column: 4, scope: !1582)
!1585 = !DILocation(line: 748, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !672, line: 748, column: 11)
!1587 = distinct !DILexicalBlock(scope: !1548, file: !672, line: 747, column: 28)
!1588 = !DILocation(line: 748, column: 25, scope: !1586)
!1589 = !DILocation(line: 748, column: 35, scope: !1586)
!1590 = !DILocation(line: 748, column: 22, scope: !1586)
!1591 = !DILocation(line: 748, column: 11, scope: !1587)
!1592 = !DILocation(line: 749, column: 14, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !672, line: 749, column: 14)
!1594 = distinct !DILexicalBlock(scope: !1586, file: !672, line: 748, column: 47)
!1595 = !DILocation(line: 749, column: 20, scope: !1593)
!1596 = !DILocation(line: 749, column: 14, scope: !1594)
!1597 = !DILocation(line: 750, column: 18, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !672, line: 749, column: 25)
!1599 = !DILocation(line: 751, column: 10, scope: !1598)
!1600 = !DILocation(line: 752, column: 42, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !672, line: 752, column: 17)
!1602 = distinct !DILexicalBlock(scope: !1593, file: !672, line: 751, column: 17)
!1603 = !DILocation(line: 752, column: 39, scope: !1601)
!1604 = !DILocation(line: 753, column: 19, scope: !1601)
!1605 = !DILocation(line: 753, column: 23, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1601, file: !672, discriminator: 1)
!1607 = !DILocation(line: 753, column: 31, scope: !1606)
!1608 = !DILocation(line: 753, column: 41, scope: !1606)
!1609 = !DILocation(line: 753, column: 28, scope: !1606)
!1610 = !DILocation(line: 752, column: 17, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1602, file: !672, discriminator: 1)
!1612 = !DILocation(line: 754, column: 20, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1601, file: !672, line: 753, column: 48)
!1614 = !DILocation(line: 755, column: 13, scope: !1613)
!1615 = !DILocation(line: 756, column: 28, scope: !1602)
!1616 = !DILocation(line: 756, column: 14, scope: !1602)
!1617 = !DILocation(line: 756, column: 26, scope: !1602)
!1618 = !DILocation(line: 757, column: 13, scope: !1602)
!1619 = !DILocation(line: 759, column: 7, scope: !1594)
!1620 = !DILocation(line: 761, column: 18, scope: !1587)
!1621 = !DILocation(line: 761, column: 28, scope: !1587)
!1622 = !DILocation(line: 761, column: 16, scope: !1587)
!1623 = !DILocation(line: 747, column: 4, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1548, file: !672, discriminator: 2)
!1625 = distinct !{!1625, !1580}
!1626 = !DILocation(line: 768, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1548, file: !672, line: 768, column: 8)
!1628 = !DILocation(line: 768, column: 8, scope: !1548)
!1629 = !DILocation(line: 769, column: 11, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !672, line: 768, column: 26)
!1631 = !DILocation(line: 770, column: 7, scope: !1630)
!1632 = !DILocation(line: 773, column: 40, scope: !1548)
!1633 = !DILocation(line: 774, column: 40, scope: !1548)
!1634 = !DILocation(line: 775, column: 40, scope: !1548)
!1635 = !DILocation(line: 776, column: 40, scope: !1548)
!1636 = !DILocation(line: 773, column: 10, scope: !1548)
!1637 = !DILocation(line: 773, column: 8, scope: !1548)
!1638 = !DILocation(line: 773, column: 4, scope: !1548)
!1639 = !DILocation(line: 779, column: 11, scope: !1548)
!1640 = !DILocation(line: 779, column: 4, scope: !1548)
!1641 = distinct !DISubprogram(name: "VixPropertyListAppendProperty", scope: !672, file: !672, line: 800, type: !1642, isLocal: false, isDefinition: true, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!841, !675, !629, !636, !1551}
!1644 = !DILocalVariable(name: "propList", arg: 1, scope: !1641, file: !672, line: 800, type: !675)
!1645 = !DILocation(line: 800, column: 52, scope: !1641)
!1646 = !DILocalVariable(name: "propertyID", arg: 2, scope: !1641, file: !672, line: 801, type: !629)
!1647 = !DILocation(line: 801, column: 35, scope: !1641)
!1648 = !DILocalVariable(name: "type", arg: 3, scope: !1641, file: !672, line: 802, type: !636)
!1649 = !DILocation(line: 802, column: 47, scope: !1641)
!1650 = !DILocalVariable(name: "resultEntry", arg: 4, scope: !1641, file: !672, line: 803, type: !1551)
!1651 = !DILocation(line: 803, column: 50, scope: !1641)
!1652 = !DILocalVariable(name: "err", scope: !1641, file: !672, line: 805, type: !841)
!1653 = !DILocation(line: 805, column: 13, scope: !1641)
!1654 = !DILocalVariable(name: "lastProperty", scope: !1641, file: !672, line: 806, type: !630)
!1655 = !DILocation(line: 806, column: 22, scope: !1641)
!1656 = !DILocalVariable(name: "property", scope: !1641, file: !672, line: 807, type: !630)
!1657 = !DILocation(line: 807, column: 22, scope: !1641)
!1658 = !DILocation(line: 809, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1641, file: !672, line: 809, column: 7)
!1660 = !DILocation(line: 809, column: 12, scope: !1659)
!1661 = !DILocation(line: 809, column: 7, scope: !1641)
!1662 = !DILocation(line: 810, column: 11, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !672, line: 809, column: 28)
!1664 = !DILocation(line: 811, column: 7, scope: !1663)
!1665 = !DILocation(line: 813, column: 5, scope: !1641)
!1666 = !DILocation(line: 813, column: 17, scope: !1641)
!1667 = !DILocation(line: 816, column: 7, scope: !1641)
!1668 = !DILocation(line: 815, column: 15, scope: !1641)
!1669 = !DILocation(line: 815, column: 13, scope: !1641)
!1670 = !DILocation(line: 818, column: 21, scope: !1641)
!1671 = !DILocation(line: 818, column: 4, scope: !1641)
!1672 = !DILocation(line: 818, column: 14, scope: !1641)
!1673 = !DILocation(line: 818, column: 19, scope: !1641)
!1674 = !DILocation(line: 819, column: 27, scope: !1641)
!1675 = !DILocation(line: 819, column: 4, scope: !1641)
!1676 = !DILocation(line: 819, column: 14, scope: !1641)
!1677 = !DILocation(line: 819, column: 25, scope: !1641)
!1678 = !DILocation(line: 820, column: 4, scope: !1641)
!1679 = !DILocation(line: 820, column: 14, scope: !1641)
!1680 = !DILocation(line: 820, column: 22, scope: !1641)
!1681 = !DILocation(line: 821, column: 4, scope: !1641)
!1682 = !DILocation(line: 821, column: 14, scope: !1641)
!1683 = !DILocation(line: 821, column: 26, scope: !1641)
!1684 = !DILocation(line: 827, column: 35, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1641, file: !672, line: 827, column: 8)
!1686 = !DILocation(line: 827, column: 45, scope: !1685)
!1687 = !DILocation(line: 827, column: 32, scope: !1685)
!1688 = !DILocation(line: 827, column: 8, scope: !1641)
!1689 = !DILocation(line: 828, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !672, line: 827, column: 51)
!1691 = !DILocation(line: 828, column: 17, scope: !1690)
!1692 = !DILocation(line: 828, column: 23, scope: !1690)
!1693 = !DILocation(line: 828, column: 32, scope: !1690)
!1694 = !DILocation(line: 829, column: 4, scope: !1690)
!1695 = !DILocation(line: 829, column: 40, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !672, discriminator: 1)
!1697 = distinct !DILexicalBlock(scope: !1685, file: !672, line: 829, column: 15)
!1698 = !DILocation(line: 829, column: 50, scope: !1696)
!1699 = !DILocation(line: 829, column: 37, scope: !1696)
!1700 = !DILocation(line: 829, column: 15, scope: !1696)
!1701 = !DILocation(line: 830, column: 7, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !672, line: 829, column: 56)
!1703 = !DILocation(line: 830, column: 17, scope: !1702)
!1704 = !DILocation(line: 830, column: 23, scope: !1702)
!1705 = !DILocation(line: 830, column: 33, scope: !1702)
!1706 = !DILocation(line: 830, column: 46, scope: !1702)
!1707 = !DILocation(line: 831, column: 4, scope: !1702)
!1708 = !DILocation(line: 831, column: 42, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1710, file: !672, discriminator: 1)
!1710 = distinct !DILexicalBlock(scope: !1697, file: !672, line: 831, column: 15)
!1711 = !DILocation(line: 831, column: 52, scope: !1709)
!1712 = !DILocation(line: 831, column: 39, scope: !1709)
!1713 = !DILocation(line: 831, column: 15, scope: !1709)
!1714 = !DILocation(line: 832, column: 7, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !672, line: 831, column: 58)
!1716 = !DILocation(line: 832, column: 17, scope: !1715)
!1717 = !DILocation(line: 832, column: 23, scope: !1715)
!1718 = !DILocation(line: 832, column: 35, scope: !1715)
!1719 = !DILocation(line: 833, column: 4, scope: !1715)
!1720 = !DILocation(line: 840, column: 19, scope: !1641)
!1721 = !DILocation(line: 840, column: 29, scope: !1641)
!1722 = !DILocation(line: 840, column: 17, scope: !1641)
!1723 = !DILocation(line: 841, column: 4, scope: !1641)
!1724 = !DILocation(line: 841, column: 19, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1641, file: !672, discriminator: 1)
!1726 = !DILocation(line: 841, column: 16, scope: !1725)
!1727 = !DILocation(line: 841, column: 33, scope: !1725)
!1728 = !DILocation(line: 841, column: 45, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1641, file: !672, discriminator: 2)
!1730 = !DILocation(line: 841, column: 59, scope: !1729)
!1731 = !DILocation(line: 841, column: 42, scope: !1729)
!1732 = !DILocation(line: 841, column: 4, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1641, file: !672, discriminator: 3)
!1734 = !DILocation(line: 842, column: 22, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1641, file: !672, line: 841, column: 66)
!1736 = !DILocation(line: 842, column: 36, scope: !1735)
!1737 = !DILocation(line: 842, column: 20, scope: !1735)
!1738 = !DILocation(line: 841, column: 4, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1641, file: !672, discriminator: 4)
!1740 = distinct !{!1740, !1723}
!1741 = !DILocation(line: 846, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1641, file: !672, line: 846, column: 7)
!1743 = !DILocation(line: 846, column: 12, scope: !1742)
!1744 = !DILocation(line: 846, column: 7, scope: !1641)
!1745 = !DILocation(line: 847, column: 30, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !672, line: 846, column: 29)
!1747 = !DILocation(line: 847, column: 7, scope: !1746)
!1748 = !DILocation(line: 847, column: 17, scope: !1746)
!1749 = !DILocation(line: 847, column: 28, scope: !1746)
!1750 = !DILocation(line: 848, column: 4, scope: !1746)
!1751 = !DILocation(line: 849, column: 28, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1742, file: !672, line: 848, column: 11)
!1753 = !DILocation(line: 849, column: 7, scope: !1752)
!1754 = !DILocation(line: 849, column: 21, scope: !1752)
!1755 = !DILocation(line: 849, column: 26, scope: !1752)
!1756 = !DILocation(line: 851, column: 4, scope: !1641)
!1757 = !DILocation(line: 851, column: 14, scope: !1641)
!1758 = !DILocation(line: 851, column: 19, scope: !1641)
!1759 = !DILocation(line: 854, column: 19, scope: !1641)
!1760 = !DILocation(line: 854, column: 5, scope: !1641)
!1761 = !DILocation(line: 854, column: 17, scope: !1641)
!1762 = !DILocation(line: 854, column: 4, scope: !1641)
!1763 = !DILocation(line: 857, column: 11, scope: !1641)
!1764 = !DILocation(line: 857, column: 4, scope: !1641)
!1765 = distinct !DISubprogram(name: "VixPropertyList_GetString", scope: !672, file: !672, line: 885, type: !1766, isLocal: false, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!841, !675, !629, !629, !845}
!1768 = !DILocalVariable(name: "propList", arg: 1, scope: !1765, file: !672, line: 885, type: !675)
!1769 = !DILocation(line: 885, column: 48, scope: !1765)
!1770 = !DILocalVariable(name: "propertyID", arg: 2, scope: !1765, file: !672, line: 886, type: !629)
!1771 = !DILocation(line: 886, column: 31, scope: !1765)
!1772 = !DILocalVariable(name: "index", arg: 3, scope: !1765, file: !672, line: 887, type: !629)
!1773 = !DILocation(line: 887, column: 31, scope: !1765)
!1774 = !DILocalVariable(name: "resultValue", arg: 4, scope: !1765, file: !672, line: 888, type: !845)
!1775 = !DILocation(line: 888, column: 34, scope: !1765)
!1776 = !DILocalVariable(name: "err", scope: !1765, file: !672, line: 890, type: !841)
!1777 = !DILocation(line: 890, column: 13, scope: !1765)
!1778 = !DILocalVariable(name: "property", scope: !1765, file: !672, line: 891, type: !630)
!1779 = !DILocation(line: 891, column: 22, scope: !1765)
!1780 = !DILocation(line: 893, column: 16, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1765, file: !672, line: 893, column: 8)
!1782 = !DILocation(line: 893, column: 13, scope: !1781)
!1783 = !DILocation(line: 893, column: 26, scope: !1781)
!1784 = !DILocation(line: 893, column: 38, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1781, file: !672, discriminator: 1)
!1786 = !DILocation(line: 893, column: 35, scope: !1785)
!1787 = !DILocation(line: 893, column: 8, scope: !1785)
!1788 = !DILocation(line: 894, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1781, file: !672, line: 893, column: 52)
!1790 = !DILocation(line: 895, column: 7, scope: !1789)
!1791 = !DILocation(line: 897, column: 5, scope: !1765)
!1792 = !DILocation(line: 897, column: 17, scope: !1765)
!1793 = !DILocation(line: 899, column: 39, scope: !1765)
!1794 = !DILocation(line: 900, column: 39, scope: !1765)
!1795 = !DILocation(line: 902, column: 39, scope: !1765)
!1796 = !DILocation(line: 899, column: 10, scope: !1765)
!1797 = !DILocation(line: 899, column: 8, scope: !1765)
!1798 = !DILocation(line: 905, column: 18, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1765, file: !672, line: 905, column: 8)
!1800 = !DILocation(line: 905, column: 15, scope: !1799)
!1801 = !DILocation(line: 905, column: 8, scope: !1765)
!1802 = !DILocation(line: 906, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !672, line: 905, column: 23)
!1804 = !DILocation(line: 909, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1765, file: !672, line: 909, column: 7)
!1806 = !DILocation(line: 909, column: 25, scope: !1805)
!1807 = !DILocation(line: 909, column: 31, scope: !1805)
!1808 = !DILocation(line: 909, column: 12, scope: !1805)
!1809 = !DILocation(line: 909, column: 7, scope: !1765)
!1810 = !DILocation(line: 910, column: 39, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !672, line: 909, column: 41)
!1812 = !DILocation(line: 910, column: 49, scope: !1811)
!1813 = !DILocation(line: 910, column: 55, scope: !1811)
!1814 = !DILocation(line: 910, column: 22, scope: !1811)
!1815 = !DILocation(line: 910, column: 8, scope: !1811)
!1816 = !DILocation(line: 910, column: 20, scope: !1811)
!1817 = !DILocation(line: 911, column: 4, scope: !1811)
!1818 = !DILocation(line: 909, column: 31, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1805, file: !672, discriminator: 1)
!1820 = !DILocation(line: 914, column: 11, scope: !1765)
!1821 = !DILocation(line: 914, column: 4, scope: !1765)
!1822 = distinct !DISubprogram(name: "VixPropertyList_SetString", scope: !672, file: !672, line: 979, type: !1823, isLocal: false, isDefinition: true, scopeLine: 982, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!841, !675, !629, !1179}
!1825 = !DILocalVariable(name: "propList", arg: 1, scope: !1822, file: !672, line: 979, type: !675)
!1826 = !DILocation(line: 979, column: 48, scope: !1822)
!1827 = !DILocalVariable(name: "propertyID", arg: 2, scope: !1822, file: !672, line: 980, type: !629)
!1828 = !DILocation(line: 980, column: 31, scope: !1822)
!1829 = !DILocalVariable(name: "value", arg: 3, scope: !1822, file: !672, line: 981, type: !1179)
!1830 = !DILocation(line: 981, column: 39, scope: !1822)
!1831 = !DILocalVariable(name: "err", scope: !1822, file: !672, line: 983, type: !841)
!1832 = !DILocation(line: 983, column: 13, scope: !1822)
!1833 = !DILocalVariable(name: "property", scope: !1822, file: !672, line: 984, type: !630)
!1834 = !DILocation(line: 984, column: 22, scope: !1822)
!1835 = !DILocation(line: 986, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1822, file: !672, line: 986, column: 7)
!1837 = !DILocation(line: 986, column: 12, scope: !1836)
!1838 = !DILocation(line: 986, column: 7, scope: !1822)
!1839 = !DILocation(line: 987, column: 11, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !672, line: 986, column: 25)
!1841 = !DILocation(line: 988, column: 7, scope: !1840)
!1842 = !DILocation(line: 994, column: 39, scope: !1822)
!1843 = !DILocation(line: 995, column: 39, scope: !1822)
!1844 = !DILocation(line: 994, column: 10, scope: !1822)
!1845 = !DILocation(line: 994, column: 8, scope: !1822)
!1846 = !DILocation(line: 1000, column: 18, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1822, file: !672, line: 1000, column: 8)
!1848 = !DILocation(line: 1000, column: 15, scope: !1847)
!1849 = !DILocation(line: 1000, column: 8, scope: !1822)
!1850 = !DILocation(line: 1001, column: 36, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !672, line: 1000, column: 23)
!1852 = !DILocation(line: 1001, column: 46, scope: !1851)
!1853 = !DILocation(line: 1001, column: 53, scope: !1851)
!1854 = !DILocation(line: 1001, column: 63, scope: !1851)
!1855 = !DILocation(line: 1001, column: 7, scope: !1851)
!1856 = !DILocation(line: 1002, column: 4, scope: !1851)
!1857 = !DILocation(line: 1000, column: 18, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1847, file: !672, discriminator: 1)
!1859 = !DILocation(line: 1006, column: 11, scope: !1822)
!1860 = !DILocation(line: 1006, column: 4, scope: !1822)
!1861 = distinct !DISubprogram(name: "VixPropertyListSetStringImpl", scope: !672, file: !672, line: 935, type: !1862, isLocal: true, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !630, !1179, !641}
!1864 = !DILocalVariable(name: "property", arg: 1, scope: !1861, file: !672, line: 935, type: !630)
!1865 = !DILocation(line: 935, column: 48, scope: !1861)
!1866 = !DILocalVariable(name: "value", arg: 2, scope: !1861, file: !672, line: 936, type: !1179)
!1867 = !DILocation(line: 936, column: 42, scope: !1861)
!1868 = !DILocalVariable(name: "isSensitive", arg: 3, scope: !1861, file: !672, line: 937, type: !641)
!1869 = !DILocation(line: 937, column: 35, scope: !1861)
!1870 = !DILocation(line: 939, column: 15, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1861, file: !672, line: 939, column: 7)
!1872 = !DILocation(line: 939, column: 25, scope: !1871)
!1873 = !DILocation(line: 939, column: 31, scope: !1871)
!1874 = !DILocation(line: 939, column: 12, scope: !1871)
!1875 = !DILocation(line: 939, column: 7, scope: !1861)
!1876 = !DILocation(line: 940, column: 11, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !672, line: 940, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1871, file: !672, line: 939, column: 41)
!1879 = !DILocation(line: 940, column: 21, scope: !1877)
!1880 = !DILocation(line: 940, column: 11, scope: !1878)
!1881 = !DILocation(line: 941, column: 26, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1877, file: !672, line: 940, column: 34)
!1883 = !DILocation(line: 941, column: 36, scope: !1882)
!1884 = !DILocation(line: 941, column: 42, scope: !1882)
!1885 = !DILocation(line: 941, column: 10, scope: !1882)
!1886 = !DILocation(line: 942, column: 7, scope: !1882)
!1887 = !DILocation(line: 943, column: 12, scope: !1878)
!1888 = !DILocation(line: 943, column: 22, scope: !1878)
!1889 = !DILocation(line: 943, column: 28, scope: !1878)
!1890 = !DILocation(line: 943, column: 7, scope: !1878)
!1891 = !DILocation(line: 944, column: 7, scope: !1878)
!1892 = !DILocation(line: 944, column: 17, scope: !1878)
!1893 = !DILocation(line: 944, column: 23, scope: !1878)
!1894 = !DILocation(line: 944, column: 32, scope: !1878)
!1895 = !DILocation(line: 945, column: 4, scope: !1878)
!1896 = !DILocation(line: 946, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1861, file: !672, line: 946, column: 7)
!1898 = !DILocation(line: 946, column: 12, scope: !1897)
!1899 = !DILocation(line: 946, column: 7, scope: !1861)
!1900 = !DILocation(line: 947, column: 51, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !672, line: 946, column: 22)
!1902 = !DILocation(line: 947, column: 34, scope: !1901)
!1903 = !DILocation(line: 947, column: 7, scope: !1901)
!1904 = !DILocation(line: 947, column: 17, scope: !1901)
!1905 = !DILocation(line: 947, column: 23, scope: !1901)
!1906 = !DILocation(line: 947, column: 32, scope: !1901)
!1907 = !DILocation(line: 948, column: 4, scope: !1901)
!1908 = !DILocation(line: 949, column: 4, scope: !1861)
!1909 = !DILocation(line: 949, column: 14, scope: !1861)
!1910 = !DILocation(line: 949, column: 22, scope: !1861)
!1911 = !DILocation(line: 950, column: 28, scope: !1861)
!1912 = !DILocation(line: 950, column: 4, scope: !1861)
!1913 = !DILocation(line: 950, column: 14, scope: !1861)
!1914 = !DILocation(line: 950, column: 26, scope: !1861)
!1915 = !DILocation(line: 951, column: 1, scope: !1861)
!1916 = distinct !DISubprogram(name: "VixPropertyList_SetStringSensitive", scope: !672, file: !672, line: 1035, type: !1823, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1917 = !DILocalVariable(name: "propList", arg: 1, scope: !1916, file: !672, line: 1035, type: !675)
!1918 = !DILocation(line: 1035, column: 57, scope: !1916)
!1919 = !DILocalVariable(name: "propertyID", arg: 2, scope: !1916, file: !672, line: 1036, type: !629)
!1920 = !DILocation(line: 1036, column: 40, scope: !1916)
!1921 = !DILocalVariable(name: "value", arg: 3, scope: !1916, file: !672, line: 1037, type: !1179)
!1922 = !DILocation(line: 1037, column: 48, scope: !1916)
!1923 = !DILocalVariable(name: "err", scope: !1916, file: !672, line: 1039, type: !841)
!1924 = !DILocation(line: 1039, column: 13, scope: !1916)
!1925 = !DILocalVariable(name: "property", scope: !1916, file: !672, line: 1040, type: !630)
!1926 = !DILocation(line: 1040, column: 22, scope: !1916)
!1927 = !DILocation(line: 1042, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1916, file: !672, line: 1042, column: 7)
!1929 = !DILocation(line: 1042, column: 12, scope: !1928)
!1930 = !DILocation(line: 1042, column: 7, scope: !1916)
!1931 = !DILocation(line: 1043, column: 11, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !672, line: 1042, column: 25)
!1933 = !DILocation(line: 1044, column: 7, scope: !1932)
!1934 = !DILocation(line: 1050, column: 39, scope: !1916)
!1935 = !DILocation(line: 1051, column: 39, scope: !1916)
!1936 = !DILocation(line: 1050, column: 10, scope: !1916)
!1937 = !DILocation(line: 1050, column: 8, scope: !1916)
!1938 = !DILocation(line: 1057, column: 18, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1916, file: !672, line: 1057, column: 8)
!1940 = !DILocation(line: 1057, column: 15, scope: !1939)
!1941 = !DILocation(line: 1057, column: 8, scope: !1916)
!1942 = !DILocation(line: 1058, column: 36, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !672, line: 1057, column: 23)
!1944 = !DILocation(line: 1058, column: 46, scope: !1943)
!1945 = !DILocation(line: 1058, column: 7, scope: !1943)
!1946 = !DILocation(line: 1059, column: 4, scope: !1943)
!1947 = !DILocation(line: 1057, column: 18, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1939, file: !672, discriminator: 1)
!1949 = !DILocation(line: 1063, column: 11, scope: !1916)
!1950 = !DILocation(line: 1063, column: 4, scope: !1916)
!1951 = distinct !DISubprogram(name: "VixPropertyList_GetInteger", scope: !672, file: !672, line: 1090, type: !1952, isLocal: false, isDefinition: true, scopeLine: 1094, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!841, !675, !629, !629, !664}
!1954 = !DILocalVariable(name: "propList", arg: 1, scope: !1951, file: !672, line: 1090, type: !675)
!1955 = !DILocation(line: 1090, column: 49, scope: !1951)
!1956 = !DILocalVariable(name: "propertyID", arg: 2, scope: !1951, file: !672, line: 1091, type: !629)
!1957 = !DILocation(line: 1091, column: 32, scope: !1951)
!1958 = !DILocalVariable(name: "index", arg: 3, scope: !1951, file: !672, line: 1092, type: !629)
!1959 = !DILocation(line: 1092, column: 32, scope: !1951)
!1960 = !DILocalVariable(name: "resultValue", arg: 4, scope: !1951, file: !672, line: 1093, type: !664)
!1961 = !DILocation(line: 1093, column: 33, scope: !1951)
!1962 = !DILocalVariable(name: "err", scope: !1951, file: !672, line: 1095, type: !841)
!1963 = !DILocation(line: 1095, column: 13, scope: !1951)
!1964 = !DILocalVariable(name: "property", scope: !1951, file: !672, line: 1096, type: !630)
!1965 = !DILocation(line: 1096, column: 22, scope: !1951)
!1966 = !DILocation(line: 1098, column: 16, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1951, file: !672, line: 1098, column: 8)
!1968 = !DILocation(line: 1098, column: 13, scope: !1967)
!1969 = !DILocation(line: 1098, column: 29, scope: !1967)
!1970 = !DILocation(line: 1098, column: 41, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1967, file: !672, discriminator: 1)
!1972 = !DILocation(line: 1098, column: 38, scope: !1971)
!1973 = !DILocation(line: 1098, column: 8, scope: !1971)
!1974 = !DILocation(line: 1099, column: 11, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1967, file: !672, line: 1098, column: 52)
!1976 = !DILocation(line: 1100, column: 7, scope: !1975)
!1977 = !DILocation(line: 1103, column: 39, scope: !1951)
!1978 = !DILocation(line: 1104, column: 39, scope: !1951)
!1979 = !DILocation(line: 1106, column: 39, scope: !1951)
!1980 = !DILocation(line: 1103, column: 10, scope: !1951)
!1981 = !DILocation(line: 1103, column: 8, scope: !1951)
!1982 = !DILocation(line: 1109, column: 18, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1951, file: !672, line: 1109, column: 8)
!1984 = !DILocation(line: 1109, column: 15, scope: !1983)
!1985 = !DILocation(line: 1109, column: 8, scope: !1951)
!1986 = !DILocation(line: 1110, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !672, line: 1109, column: 23)
!1988 = !DILocation(line: 1113, column: 19, scope: !1951)
!1989 = !DILocation(line: 1113, column: 29, scope: !1951)
!1990 = !DILocation(line: 1113, column: 35, scope: !1951)
!1991 = !DILocation(line: 1113, column: 5, scope: !1951)
!1992 = !DILocation(line: 1113, column: 17, scope: !1951)
!1993 = !DILocation(line: 1113, column: 4, scope: !1951)
!1994 = !DILocation(line: 1116, column: 11, scope: !1951)
!1995 = !DILocation(line: 1116, column: 4, scope: !1951)
!1996 = distinct !DISubprogram(name: "VixPropertyList_SetInteger", scope: !672, file: !672, line: 1145, type: !1997, isLocal: false, isDefinition: true, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!841, !675, !629, !629}
!1999 = !DILocalVariable(name: "propList", arg: 1, scope: !1996, file: !672, line: 1145, type: !675)
!2000 = !DILocation(line: 1145, column: 49, scope: !1996)
!2001 = !DILocalVariable(name: "propertyID", arg: 2, scope: !1996, file: !672, line: 1146, type: !629)
!2002 = !DILocation(line: 1146, column: 32, scope: !1996)
!2003 = !DILocalVariable(name: "value", arg: 3, scope: !1996, file: !672, line: 1147, type: !629)
!2004 = !DILocation(line: 1147, column: 32, scope: !1996)
!2005 = !DILocalVariable(name: "err", scope: !1996, file: !672, line: 1149, type: !841)
!2006 = !DILocation(line: 1149, column: 13, scope: !1996)
!2007 = !DILocalVariable(name: "property", scope: !1996, file: !672, line: 1150, type: !630)
!2008 = !DILocation(line: 1150, column: 22, scope: !1996)
!2009 = !DILocation(line: 1152, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1996, file: !672, line: 1152, column: 7)
!2011 = !DILocation(line: 1152, column: 12, scope: !2010)
!2012 = !DILocation(line: 1152, column: 7, scope: !1996)
!2013 = !DILocation(line: 1153, column: 11, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !672, line: 1152, column: 25)
!2015 = !DILocation(line: 1154, column: 7, scope: !2014)
!2016 = !DILocation(line: 1160, column: 39, scope: !1996)
!2017 = !DILocation(line: 1161, column: 39, scope: !1996)
!2018 = !DILocation(line: 1160, column: 10, scope: !1996)
!2019 = !DILocation(line: 1160, column: 8, scope: !1996)
!2020 = !DILocation(line: 1166, column: 18, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1996, file: !672, line: 1166, column: 8)
!2022 = !DILocation(line: 1166, column: 15, scope: !2021)
!2023 = !DILocation(line: 1166, column: 8, scope: !1996)
!2024 = !DILocation(line: 1167, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !672, line: 1166, column: 23)
!2026 = !DILocation(line: 1170, column: 31, scope: !1996)
!2027 = !DILocation(line: 1170, column: 4, scope: !1996)
!2028 = !DILocation(line: 1170, column: 14, scope: !1996)
!2029 = !DILocation(line: 1170, column: 20, scope: !1996)
!2030 = !DILocation(line: 1170, column: 29, scope: !1996)
!2031 = !DILocation(line: 1171, column: 4, scope: !1996)
!2032 = !DILocation(line: 1171, column: 14, scope: !1996)
!2033 = !DILocation(line: 1171, column: 22, scope: !1996)
!2034 = !DILocation(line: 1174, column: 11, scope: !1996)
!2035 = !DILocation(line: 1174, column: 4, scope: !1996)
!2036 = distinct !DISubprogram(name: "VixPropertyList_GetBool", scope: !672, file: !672, line: 1201, type: !2037, isLocal: false, isDefinition: true, scopeLine: 1205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!841, !675, !629, !629, !666}
!2039 = !DILocalVariable(name: "propList", arg: 1, scope: !2036, file: !672, line: 1201, type: !675)
!2040 = !DILocation(line: 1201, column: 46, scope: !2036)
!2041 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2036, file: !672, line: 1202, type: !629)
!2042 = !DILocation(line: 1202, column: 29, scope: !2036)
!2043 = !DILocalVariable(name: "index", arg: 3, scope: !2036, file: !672, line: 1203, type: !629)
!2044 = !DILocation(line: 1203, column: 29, scope: !2036)
!2045 = !DILocalVariable(name: "resultValue", arg: 4, scope: !2036, file: !672, line: 1204, type: !666)
!2046 = !DILocation(line: 1204, column: 31, scope: !2036)
!2047 = !DILocalVariable(name: "err", scope: !2036, file: !672, line: 1206, type: !841)
!2048 = !DILocation(line: 1206, column: 13, scope: !2036)
!2049 = !DILocalVariable(name: "property", scope: !2036, file: !672, line: 1207, type: !630)
!2050 = !DILocation(line: 1207, column: 22, scope: !2036)
!2051 = !DILocation(line: 1209, column: 16, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2036, file: !672, line: 1209, column: 8)
!2053 = !DILocation(line: 1209, column: 13, scope: !2052)
!2054 = !DILocation(line: 1209, column: 29, scope: !2052)
!2055 = !DILocation(line: 1209, column: 41, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2052, file: !672, discriminator: 1)
!2057 = !DILocation(line: 1209, column: 38, scope: !2056)
!2058 = !DILocation(line: 1209, column: 8, scope: !2056)
!2059 = !DILocation(line: 1210, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2052, file: !672, line: 1209, column: 52)
!2061 = !DILocation(line: 1211, column: 7, scope: !2060)
!2062 = !DILocation(line: 1214, column: 39, scope: !2036)
!2063 = !DILocation(line: 1215, column: 39, scope: !2036)
!2064 = !DILocation(line: 1217, column: 39, scope: !2036)
!2065 = !DILocation(line: 1214, column: 10, scope: !2036)
!2066 = !DILocation(line: 1214, column: 8, scope: !2036)
!2067 = !DILocation(line: 1220, column: 18, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2036, file: !672, line: 1220, column: 8)
!2069 = !DILocation(line: 1220, column: 15, scope: !2068)
!2070 = !DILocation(line: 1220, column: 8, scope: !2036)
!2071 = !DILocation(line: 1221, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !672, line: 1220, column: 23)
!2073 = !DILocation(line: 1224, column: 15, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2036, file: !672, line: 1224, column: 7)
!2075 = !DILocation(line: 1224, column: 12, scope: !2074)
!2076 = !DILocation(line: 1224, column: 7, scope: !2036)
!2077 = !DILocation(line: 1225, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !672, line: 1224, column: 25)
!2079 = !DILocation(line: 1228, column: 19, scope: !2036)
!2080 = !DILocation(line: 1228, column: 29, scope: !2036)
!2081 = !DILocation(line: 1228, column: 35, scope: !2036)
!2082 = !DILocation(line: 1228, column: 5, scope: !2036)
!2083 = !DILocation(line: 1228, column: 17, scope: !2036)
!2084 = !DILocation(line: 1228, column: 4, scope: !2036)
!2085 = !DILocation(line: 1231, column: 11, scope: !2036)
!2086 = !DILocation(line: 1231, column: 4, scope: !2036)
!2087 = distinct !DISubprogram(name: "VixPropertyList_SetBool", scope: !672, file: !672, line: 1260, type: !2088, isLocal: false, isDefinition: true, scopeLine: 1263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!841, !675, !629, !641}
!2090 = !DILocalVariable(name: "propList", arg: 1, scope: !2087, file: !672, line: 1260, type: !675)
!2091 = !DILocation(line: 1260, column: 46, scope: !2087)
!2092 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2087, file: !672, line: 1261, type: !629)
!2093 = !DILocation(line: 1261, column: 29, scope: !2087)
!2094 = !DILocalVariable(name: "value", arg: 3, scope: !2087, file: !672, line: 1262, type: !641)
!2095 = !DILocation(line: 1262, column: 30, scope: !2087)
!2096 = !DILocalVariable(name: "err", scope: !2087, file: !672, line: 1264, type: !841)
!2097 = !DILocation(line: 1264, column: 13, scope: !2087)
!2098 = !DILocalVariable(name: "property", scope: !2087, file: !672, line: 1265, type: !630)
!2099 = !DILocation(line: 1265, column: 22, scope: !2087)
!2100 = !DILocation(line: 1267, column: 15, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2087, file: !672, line: 1267, column: 7)
!2102 = !DILocation(line: 1267, column: 12, scope: !2101)
!2103 = !DILocation(line: 1267, column: 7, scope: !2087)
!2104 = !DILocation(line: 1268, column: 11, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !672, line: 1267, column: 25)
!2106 = !DILocation(line: 1269, column: 7, scope: !2105)
!2107 = !DILocation(line: 1275, column: 39, scope: !2087)
!2108 = !DILocation(line: 1276, column: 39, scope: !2087)
!2109 = !DILocation(line: 1275, column: 10, scope: !2087)
!2110 = !DILocation(line: 1275, column: 8, scope: !2087)
!2111 = !DILocation(line: 1281, column: 18, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2087, file: !672, line: 1281, column: 8)
!2113 = !DILocation(line: 1281, column: 15, scope: !2112)
!2114 = !DILocation(line: 1281, column: 8, scope: !2087)
!2115 = !DILocation(line: 1282, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2112, file: !672, line: 1281, column: 23)
!2117 = !DILocation(line: 1285, column: 32, scope: !2087)
!2118 = !DILocation(line: 1285, column: 4, scope: !2087)
!2119 = !DILocation(line: 1285, column: 14, scope: !2087)
!2120 = !DILocation(line: 1285, column: 20, scope: !2087)
!2121 = !DILocation(line: 1285, column: 30, scope: !2087)
!2122 = !DILocation(line: 1286, column: 4, scope: !2087)
!2123 = !DILocation(line: 1286, column: 14, scope: !2087)
!2124 = !DILocation(line: 1286, column: 22, scope: !2087)
!2125 = !DILocation(line: 1289, column: 11, scope: !2087)
!2126 = !DILocation(line: 1289, column: 4, scope: !2087)
!2127 = distinct !DISubprogram(name: "VixPropertyList_GetInt64", scope: !672, file: !672, line: 1316, type: !2128, isLocal: false, isDefinition: true, scopeLine: 1320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!841, !675, !629, !629, !667}
!2130 = !DILocalVariable(name: "propList", arg: 1, scope: !2127, file: !672, line: 1316, type: !675)
!2131 = !DILocation(line: 1316, column: 47, scope: !2127)
!2132 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2127, file: !672, line: 1317, type: !629)
!2133 = !DILocation(line: 1317, column: 30, scope: !2127)
!2134 = !DILocalVariable(name: "index", arg: 3, scope: !2127, file: !672, line: 1318, type: !629)
!2135 = !DILocation(line: 1318, column: 30, scope: !2127)
!2136 = !DILocalVariable(name: "resultValue", arg: 4, scope: !2127, file: !672, line: 1319, type: !667)
!2137 = !DILocation(line: 1319, column: 33, scope: !2127)
!2138 = !DILocalVariable(name: "err", scope: !2127, file: !672, line: 1321, type: !841)
!2139 = !DILocation(line: 1321, column: 13, scope: !2127)
!2140 = !DILocalVariable(name: "property", scope: !2127, file: !672, line: 1322, type: !630)
!2141 = !DILocation(line: 1322, column: 22, scope: !2127)
!2142 = !DILocation(line: 1324, column: 16, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2127, file: !672, line: 1324, column: 8)
!2144 = !DILocation(line: 1324, column: 13, scope: !2143)
!2145 = !DILocation(line: 1324, column: 29, scope: !2143)
!2146 = !DILocation(line: 1324, column: 41, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2143, file: !672, discriminator: 1)
!2148 = !DILocation(line: 1324, column: 38, scope: !2147)
!2149 = !DILocation(line: 1324, column: 8, scope: !2147)
!2150 = !DILocation(line: 1325, column: 11, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2143, file: !672, line: 1324, column: 52)
!2152 = !DILocation(line: 1326, column: 7, scope: !2151)
!2153 = !DILocation(line: 1329, column: 39, scope: !2127)
!2154 = !DILocation(line: 1330, column: 39, scope: !2127)
!2155 = !DILocation(line: 1332, column: 39, scope: !2127)
!2156 = !DILocation(line: 1329, column: 10, scope: !2127)
!2157 = !DILocation(line: 1329, column: 8, scope: !2127)
!2158 = !DILocation(line: 1335, column: 18, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2127, file: !672, line: 1335, column: 8)
!2160 = !DILocation(line: 1335, column: 15, scope: !2159)
!2161 = !DILocation(line: 1335, column: 8, scope: !2127)
!2162 = !DILocation(line: 1336, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !672, line: 1335, column: 23)
!2164 = !DILocation(line: 1339, column: 19, scope: !2127)
!2165 = !DILocation(line: 1339, column: 29, scope: !2127)
!2166 = !DILocation(line: 1339, column: 35, scope: !2127)
!2167 = !DILocation(line: 1339, column: 5, scope: !2127)
!2168 = !DILocation(line: 1339, column: 17, scope: !2127)
!2169 = !DILocation(line: 1339, column: 4, scope: !2127)
!2170 = !DILocation(line: 1342, column: 11, scope: !2127)
!2171 = !DILocation(line: 1342, column: 4, scope: !2127)
!2172 = distinct !DISubprogram(name: "VixPropertyList_SetInt64", scope: !672, file: !672, line: 1371, type: !2173, isLocal: false, isDefinition: true, scopeLine: 1374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!841, !675, !629, !646}
!2175 = !DILocalVariable(name: "propList", arg: 1, scope: !2172, file: !672, line: 1371, type: !675)
!2176 = !DILocation(line: 1371, column: 47, scope: !2172)
!2177 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2172, file: !672, line: 1372, type: !629)
!2178 = !DILocation(line: 1372, column: 30, scope: !2172)
!2179 = !DILocalVariable(name: "value", arg: 3, scope: !2172, file: !672, line: 1373, type: !646)
!2180 = !DILocation(line: 1373, column: 32, scope: !2172)
!2181 = !DILocalVariable(name: "err", scope: !2172, file: !672, line: 1375, type: !841)
!2182 = !DILocation(line: 1375, column: 13, scope: !2172)
!2183 = !DILocalVariable(name: "property", scope: !2172, file: !672, line: 1376, type: !630)
!2184 = !DILocation(line: 1376, column: 22, scope: !2172)
!2185 = !DILocation(line: 1378, column: 15, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2172, file: !672, line: 1378, column: 7)
!2187 = !DILocation(line: 1378, column: 12, scope: !2186)
!2188 = !DILocation(line: 1378, column: 7, scope: !2172)
!2189 = !DILocation(line: 1379, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !672, line: 1378, column: 25)
!2191 = !DILocation(line: 1380, column: 7, scope: !2190)
!2192 = !DILocation(line: 1386, column: 39, scope: !2172)
!2193 = !DILocation(line: 1387, column: 39, scope: !2172)
!2194 = !DILocation(line: 1386, column: 10, scope: !2172)
!2195 = !DILocation(line: 1386, column: 8, scope: !2172)
!2196 = !DILocation(line: 1392, column: 18, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2172, file: !672, line: 1392, column: 8)
!2198 = !DILocation(line: 1392, column: 15, scope: !2197)
!2199 = !DILocation(line: 1392, column: 8, scope: !2172)
!2200 = !DILocation(line: 1393, column: 7, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !672, line: 1392, column: 23)
!2202 = !DILocation(line: 1396, column: 33, scope: !2172)
!2203 = !DILocation(line: 1396, column: 4, scope: !2172)
!2204 = !DILocation(line: 1396, column: 14, scope: !2172)
!2205 = !DILocation(line: 1396, column: 20, scope: !2172)
!2206 = !DILocation(line: 1396, column: 31, scope: !2172)
!2207 = !DILocation(line: 1397, column: 4, scope: !2172)
!2208 = !DILocation(line: 1397, column: 14, scope: !2172)
!2209 = !DILocation(line: 1397, column: 22, scope: !2172)
!2210 = !DILocation(line: 1400, column: 11, scope: !2172)
!2211 = !DILocation(line: 1400, column: 4, scope: !2172)
!2212 = distinct !DISubprogram(name: "VixPropertyList_GetBlob", scope: !672, file: !672, line: 1427, type: !2213, isLocal: false, isDefinition: true, scopeLine: 1432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!841, !675, !629, !629, !664, !2215}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!2216 = !DILocalVariable(name: "propList", arg: 1, scope: !2212, file: !672, line: 1427, type: !675)
!2217 = !DILocation(line: 1427, column: 46, scope: !2212)
!2218 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2212, file: !672, line: 1428, type: !629)
!2219 = !DILocation(line: 1428, column: 29, scope: !2212)
!2220 = !DILocalVariable(name: "index", arg: 3, scope: !2212, file: !672, line: 1429, type: !629)
!2221 = !DILocation(line: 1429, column: 29, scope: !2212)
!2222 = !DILocalVariable(name: "resultSize", arg: 4, scope: !2212, file: !672, line: 1430, type: !664)
!2223 = !DILocation(line: 1430, column: 30, scope: !2212)
!2224 = !DILocalVariable(name: "resultValue", arg: 5, scope: !2212, file: !672, line: 1431, type: !2215)
!2225 = !DILocation(line: 1431, column: 41, scope: !2212)
!2226 = !DILocalVariable(name: "err", scope: !2212, file: !672, line: 1433, type: !841)
!2227 = !DILocation(line: 1433, column: 13, scope: !2212)
!2228 = !DILocalVariable(name: "property", scope: !2212, file: !672, line: 1434, type: !630)
!2229 = !DILocation(line: 1434, column: 22, scope: !2212)
!2230 = !DILocation(line: 1436, column: 16, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2212, file: !672, line: 1436, column: 8)
!2232 = !DILocation(line: 1436, column: 13, scope: !2231)
!2233 = !DILocation(line: 1436, column: 26, scope: !2231)
!2234 = !DILocation(line: 1436, column: 38, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2231, file: !672, discriminator: 1)
!2236 = !DILocation(line: 1436, column: 35, scope: !2235)
!2237 = !DILocation(line: 1436, column: 50, scope: !2235)
!2238 = !DILocation(line: 1436, column: 62, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2231, file: !672, discriminator: 2)
!2240 = !DILocation(line: 1436, column: 59, scope: !2239)
!2241 = !DILocation(line: 1436, column: 8, scope: !2239)
!2242 = !DILocation(line: 1437, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2231, file: !672, line: 1436, column: 76)
!2244 = !DILocation(line: 1438, column: 7, scope: !2243)
!2245 = !DILocation(line: 1440, column: 5, scope: !2212)
!2246 = !DILocation(line: 1440, column: 16, scope: !2212)
!2247 = !DILocation(line: 1441, column: 5, scope: !2212)
!2248 = !DILocation(line: 1441, column: 17, scope: !2212)
!2249 = !DILocation(line: 1443, column: 39, scope: !2212)
!2250 = !DILocation(line: 1444, column: 39, scope: !2212)
!2251 = !DILocation(line: 1446, column: 39, scope: !2212)
!2252 = !DILocation(line: 1443, column: 10, scope: !2212)
!2253 = !DILocation(line: 1443, column: 8, scope: !2212)
!2254 = !DILocation(line: 1449, column: 18, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2212, file: !672, line: 1449, column: 8)
!2256 = !DILocation(line: 1449, column: 15, scope: !2255)
!2257 = !DILocation(line: 1449, column: 8, scope: !2212)
!2258 = !DILocation(line: 1450, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !672, line: 1449, column: 23)
!2260 = !DILocation(line: 1453, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2212, file: !672, line: 1453, column: 8)
!2262 = !DILocation(line: 1453, column: 19, scope: !2261)
!2263 = !DILocation(line: 1453, column: 25, scope: !2261)
!2264 = !DILocation(line: 1453, column: 35, scope: !2261)
!2265 = !DILocation(line: 1453, column: 44, scope: !2261)
!2266 = !DILocation(line: 1454, column: 10, scope: !2261)
!2267 = !DILocation(line: 1454, column: 21, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2261, file: !672, discriminator: 1)
!2269 = !DILocation(line: 1454, column: 31, scope: !2268)
!2270 = !DILocation(line: 1454, column: 37, scope: !2268)
!2271 = !DILocation(line: 1454, column: 47, scope: !2268)
!2272 = !DILocation(line: 1454, column: 18, scope: !2268)
!2273 = !DILocation(line: 1453, column: 8, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2212, file: !672, discriminator: 1)
!2275 = !DILocation(line: 1455, column: 21, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2261, file: !672, line: 1454, column: 62)
!2277 = !DILocation(line: 1455, column: 31, scope: !2276)
!2278 = !DILocation(line: 1455, column: 37, scope: !2276)
!2279 = !DILocation(line: 1455, column: 47, scope: !2276)
!2280 = !DILocation(line: 1455, column: 8, scope: !2276)
!2281 = !DILocation(line: 1455, column: 19, scope: !2276)
!2282 = !DILocation(line: 1457, column: 39, scope: !2276)
!2283 = !DILocation(line: 1457, column: 49, scope: !2276)
!2284 = !DILocation(line: 1457, column: 55, scope: !2276)
!2285 = !DILocation(line: 1457, column: 65, scope: !2276)
!2286 = !DILocation(line: 1457, column: 38, scope: !2276)
!2287 = !DILocation(line: 1457, column: 22, scope: !2276)
!2288 = !DILocation(line: 1457, column: 8, scope: !2276)
!2289 = !DILocation(line: 1457, column: 20, scope: !2276)
!2290 = !DILocation(line: 1458, column: 15, scope: !2276)
!2291 = !DILocation(line: 1458, column: 14, scope: !2276)
!2292 = !DILocation(line: 1459, column: 14, scope: !2276)
!2293 = !DILocation(line: 1459, column: 24, scope: !2276)
!2294 = !DILocation(line: 1459, column: 30, scope: !2276)
!2295 = !DILocation(line: 1459, column: 40, scope: !2276)
!2296 = !DILocation(line: 1460, column: 14, scope: !2276)
!2297 = !DILocation(line: 1460, column: 24, scope: !2276)
!2298 = !DILocation(line: 1460, column: 30, scope: !2276)
!2299 = !DILocation(line: 1460, column: 40, scope: !2276)
!2300 = !DILocation(line: 1458, column: 7, scope: !2276)
!2301 = !DILocation(line: 1461, column: 4, scope: !2276)
!2302 = !DILocation(line: 1454, column: 59, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2261, file: !672, discriminator: 2)
!2304 = !DILocation(line: 1464, column: 11, scope: !2212)
!2305 = !DILocation(line: 1464, column: 4, scope: !2212)
!2306 = distinct !DISubprogram(name: "VixPropertyList_SetBlob", scope: !672, file: !672, line: 1536, type: !2307, isLocal: false, isDefinition: true, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!841, !675, !629, !629, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64, align: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!2311 = !DILocalVariable(name: "propList", arg: 1, scope: !2306, file: !672, line: 1536, type: !675)
!2312 = !DILocation(line: 1536, column: 46, scope: !2306)
!2313 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2306, file: !672, line: 1537, type: !629)
!2314 = !DILocation(line: 1537, column: 29, scope: !2306)
!2315 = !DILocalVariable(name: "blobSize", arg: 3, scope: !2306, file: !672, line: 1538, type: !629)
!2316 = !DILocation(line: 1538, column: 29, scope: !2306)
!2317 = !DILocalVariable(name: "value", arg: 4, scope: !2306, file: !672, line: 1539, type: !2309)
!2318 = !DILocation(line: 1539, column: 46, scope: !2306)
!2319 = !DILocalVariable(name: "err", scope: !2306, file: !672, line: 1541, type: !841)
!2320 = !DILocation(line: 1541, column: 13, scope: !2306)
!2321 = !DILocalVariable(name: "property", scope: !2306, file: !672, line: 1542, type: !630)
!2322 = !DILocation(line: 1542, column: 22, scope: !2306)
!2323 = !DILocation(line: 1544, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2306, file: !672, line: 1544, column: 7)
!2325 = !DILocation(line: 1544, column: 12, scope: !2324)
!2326 = !DILocation(line: 1544, column: 7, scope: !2306)
!2327 = !DILocation(line: 1545, column: 11, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !672, line: 1544, column: 25)
!2329 = !DILocation(line: 1546, column: 7, scope: !2328)
!2330 = !DILocation(line: 1552, column: 39, scope: !2306)
!2331 = !DILocation(line: 1553, column: 39, scope: !2306)
!2332 = !DILocation(line: 1552, column: 10, scope: !2306)
!2333 = !DILocation(line: 1552, column: 8, scope: !2306)
!2334 = !DILocation(line: 1559, column: 18, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2306, file: !672, line: 1559, column: 8)
!2336 = !DILocation(line: 1559, column: 15, scope: !2335)
!2337 = !DILocation(line: 1559, column: 8, scope: !2306)
!2338 = !DILocation(line: 1560, column: 34, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !672, line: 1559, column: 23)
!2340 = !DILocation(line: 1560, column: 44, scope: !2339)
!2341 = !DILocation(line: 1560, column: 54, scope: !2339)
!2342 = !DILocation(line: 1561, column: 34, scope: !2339)
!2343 = !DILocation(line: 1561, column: 44, scope: !2339)
!2344 = !DILocation(line: 1560, column: 7, scope: !2339)
!2345 = !DILocation(line: 1562, column: 4, scope: !2339)
!2346 = !DILocation(line: 1559, column: 18, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2335, file: !672, discriminator: 1)
!2348 = !DILocation(line: 1565, column: 11, scope: !2306)
!2349 = !DILocation(line: 1565, column: 4, scope: !2306)
!2350 = distinct !DISubprogram(name: "VixPropertyListSetBlobImpl", scope: !672, file: !672, line: 1485, type: !2351, isLocal: true, isDefinition: true, scopeLine: 1489, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !630, !629, !2309, !641}
!2353 = !DILocalVariable(name: "property", arg: 1, scope: !2350, file: !672, line: 1485, type: !630)
!2354 = !DILocation(line: 1485, column: 46, scope: !2350)
!2355 = !DILocalVariable(name: "blobSize", arg: 2, scope: !2350, file: !672, line: 1486, type: !629)
!2356 = !DILocation(line: 1486, column: 32, scope: !2350)
!2357 = !DILocalVariable(name: "value", arg: 3, scope: !2350, file: !672, line: 1487, type: !2309)
!2358 = !DILocation(line: 1487, column: 49, scope: !2350)
!2359 = !DILocalVariable(name: "isSensitive", arg: 4, scope: !2350, file: !672, line: 1488, type: !641)
!2360 = !DILocation(line: 1488, column: 33, scope: !2350)
!2361 = !DILocation(line: 1490, column: 15, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2350, file: !672, line: 1490, column: 7)
!2363 = !DILocation(line: 1490, column: 25, scope: !2362)
!2364 = !DILocation(line: 1490, column: 31, scope: !2362)
!2365 = !DILocation(line: 1490, column: 41, scope: !2362)
!2366 = !DILocation(line: 1490, column: 12, scope: !2362)
!2367 = !DILocation(line: 1490, column: 7, scope: !2350)
!2368 = !DILocation(line: 1491, column: 11, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !672, line: 1491, column: 11)
!2370 = distinct !DILexicalBlock(scope: !2362, file: !672, line: 1490, column: 55)
!2371 = !DILocation(line: 1491, column: 21, scope: !2369)
!2372 = !DILocation(line: 1491, column: 11, scope: !2370)
!2373 = !DILocation(line: 1492, column: 20, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2369, file: !672, line: 1491, column: 34)
!2375 = !DILocation(line: 1492, column: 30, scope: !2374)
!2376 = !DILocation(line: 1492, column: 36, scope: !2374)
!2377 = !DILocation(line: 1492, column: 46, scope: !2374)
!2378 = !DILocation(line: 1493, column: 20, scope: !2374)
!2379 = !DILocation(line: 1493, column: 30, scope: !2374)
!2380 = !DILocation(line: 1493, column: 36, scope: !2374)
!2381 = !DILocation(line: 1493, column: 46, scope: !2374)
!2382 = !DILocation(line: 1492, column: 10, scope: !2374)
!2383 = !DILocation(line: 1494, column: 7, scope: !2374)
!2384 = !DILocation(line: 1496, column: 12, scope: !2370)
!2385 = !DILocation(line: 1496, column: 22, scope: !2370)
!2386 = !DILocation(line: 1496, column: 28, scope: !2370)
!2387 = !DILocation(line: 1496, column: 38, scope: !2370)
!2388 = !DILocation(line: 1496, column: 7, scope: !2370)
!2389 = !DILocation(line: 1497, column: 7, scope: !2370)
!2390 = !DILocation(line: 1497, column: 17, scope: !2370)
!2391 = !DILocation(line: 1497, column: 23, scope: !2370)
!2392 = !DILocation(line: 1497, column: 33, scope: !2370)
!2393 = !DILocation(line: 1497, column: 46, scope: !2370)
!2394 = !DILocation(line: 1498, column: 4, scope: !2370)
!2395 = !DILocation(line: 1500, column: 41, scope: !2350)
!2396 = !DILocation(line: 1500, column: 4, scope: !2350)
!2397 = !DILocation(line: 1500, column: 14, scope: !2350)
!2398 = !DILocation(line: 1500, column: 20, scope: !2350)
!2399 = !DILocation(line: 1500, column: 30, scope: !2350)
!2400 = !DILocation(line: 1500, column: 39, scope: !2350)
!2401 = !DILocation(line: 1501, column: 16, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2350, file: !672, line: 1501, column: 8)
!2403 = !DILocation(line: 1501, column: 13, scope: !2402)
!2404 = !DILocation(line: 1501, column: 23, scope: !2402)
!2405 = !DILocation(line: 1501, column: 27, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2402, file: !672, discriminator: 1)
!2407 = !DILocation(line: 1501, column: 36, scope: !2406)
!2408 = !DILocation(line: 1501, column: 8, scope: !2406)
!2409 = !DILocation(line: 1502, column: 65, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2402, file: !672, line: 1501, column: 42)
!2411 = !DILocation(line: 1502, column: 64, scope: !2410)
!2412 = !DILocation(line: 1502, column: 48, scope: !2410)
!2413 = !DILocation(line: 1502, column: 7, scope: !2410)
!2414 = !DILocation(line: 1502, column: 17, scope: !2410)
!2415 = !DILocation(line: 1502, column: 23, scope: !2410)
!2416 = !DILocation(line: 1502, column: 33, scope: !2410)
!2417 = !DILocation(line: 1502, column: 46, scope: !2410)
!2418 = !DILocation(line: 1503, column: 14, scope: !2410)
!2419 = !DILocation(line: 1503, column: 24, scope: !2410)
!2420 = !DILocation(line: 1503, column: 30, scope: !2410)
!2421 = !DILocation(line: 1503, column: 40, scope: !2410)
!2422 = !DILocation(line: 1503, column: 54, scope: !2410)
!2423 = !DILocation(line: 1503, column: 61, scope: !2410)
!2424 = !DILocation(line: 1503, column: 7, scope: !2410)
!2425 = !DILocation(line: 1504, column: 4, scope: !2410)
!2426 = !DILocation(line: 1506, column: 4, scope: !2350)
!2427 = !DILocation(line: 1506, column: 14, scope: !2350)
!2428 = !DILocation(line: 1506, column: 22, scope: !2350)
!2429 = !DILocation(line: 1507, column: 28, scope: !2350)
!2430 = !DILocation(line: 1507, column: 4, scope: !2350)
!2431 = !DILocation(line: 1507, column: 14, scope: !2350)
!2432 = !DILocation(line: 1507, column: 26, scope: !2350)
!2433 = !DILocation(line: 1508, column: 1, scope: !2350)
!2434 = distinct !DISubprogram(name: "VixPropertyList_SetBlobSensitive", scope: !672, file: !672, line: 1594, type: !2307, isLocal: false, isDefinition: true, scopeLine: 1598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2435 = !DILocalVariable(name: "propList", arg: 1, scope: !2434, file: !672, line: 1594, type: !675)
!2436 = !DILocation(line: 1594, column: 55, scope: !2434)
!2437 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2434, file: !672, line: 1595, type: !629)
!2438 = !DILocation(line: 1595, column: 38, scope: !2434)
!2439 = !DILocalVariable(name: "blobSize", arg: 3, scope: !2434, file: !672, line: 1596, type: !629)
!2440 = !DILocation(line: 1596, column: 38, scope: !2434)
!2441 = !DILocalVariable(name: "value", arg: 4, scope: !2434, file: !672, line: 1597, type: !2309)
!2442 = !DILocation(line: 1597, column: 55, scope: !2434)
!2443 = !DILocalVariable(name: "err", scope: !2434, file: !672, line: 1599, type: !841)
!2444 = !DILocation(line: 1599, column: 13, scope: !2434)
!2445 = !DILocalVariable(name: "property", scope: !2434, file: !672, line: 1600, type: !630)
!2446 = !DILocation(line: 1600, column: 22, scope: !2434)
!2447 = !DILocation(line: 1602, column: 15, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2434, file: !672, line: 1602, column: 7)
!2449 = !DILocation(line: 1602, column: 12, scope: !2448)
!2450 = !DILocation(line: 1602, column: 7, scope: !2434)
!2451 = !DILocation(line: 1603, column: 11, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !672, line: 1602, column: 25)
!2453 = !DILocation(line: 1604, column: 7, scope: !2452)
!2454 = !DILocation(line: 1610, column: 39, scope: !2434)
!2455 = !DILocation(line: 1611, column: 39, scope: !2434)
!2456 = !DILocation(line: 1610, column: 10, scope: !2434)
!2457 = !DILocation(line: 1610, column: 8, scope: !2434)
!2458 = !DILocation(line: 1617, column: 18, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2434, file: !672, line: 1617, column: 8)
!2460 = !DILocation(line: 1617, column: 15, scope: !2459)
!2461 = !DILocation(line: 1617, column: 8, scope: !2434)
!2462 = !DILocation(line: 1618, column: 34, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !672, line: 1617, column: 23)
!2464 = !DILocation(line: 1618, column: 44, scope: !2463)
!2465 = !DILocation(line: 1618, column: 54, scope: !2463)
!2466 = !DILocation(line: 1618, column: 7, scope: !2463)
!2467 = !DILocation(line: 1619, column: 4, scope: !2463)
!2468 = !DILocation(line: 1617, column: 18, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2459, file: !672, discriminator: 1)
!2470 = !DILocation(line: 1622, column: 11, scope: !2434)
!2471 = !DILocation(line: 1622, column: 4, scope: !2434)
!2472 = distinct !DISubprogram(name: "VixPropertyList_GetPtr", scope: !672, file: !672, line: 1652, type: !2473, isLocal: false, isDefinition: true, scopeLine: 1656, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!841, !675, !629, !629, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!2476 = !DILocalVariable(name: "propList", arg: 1, scope: !2472, file: !672, line: 1652, type: !675)
!2477 = !DILocation(line: 1652, column: 45, scope: !2472)
!2478 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2472, file: !672, line: 1653, type: !629)
!2479 = !DILocation(line: 1653, column: 28, scope: !2472)
!2480 = !DILocalVariable(name: "index", arg: 3, scope: !2472, file: !672, line: 1654, type: !629)
!2481 = !DILocation(line: 1654, column: 28, scope: !2472)
!2482 = !DILocalVariable(name: "resultValue", arg: 4, scope: !2472, file: !672, line: 1655, type: !2475)
!2483 = !DILocation(line: 1655, column: 31, scope: !2472)
!2484 = !DILocalVariable(name: "err", scope: !2472, file: !672, line: 1657, type: !841)
!2485 = !DILocation(line: 1657, column: 13, scope: !2472)
!2486 = !DILocalVariable(name: "property", scope: !2472, file: !672, line: 1658, type: !630)
!2487 = !DILocation(line: 1658, column: 22, scope: !2472)
!2488 = !DILocation(line: 1660, column: 16, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2472, file: !672, line: 1660, column: 8)
!2490 = !DILocation(line: 1660, column: 13, scope: !2489)
!2491 = !DILocation(line: 1660, column: 29, scope: !2489)
!2492 = !DILocation(line: 1660, column: 41, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2489, file: !672, discriminator: 1)
!2494 = !DILocation(line: 1660, column: 38, scope: !2493)
!2495 = !DILocation(line: 1660, column: 8, scope: !2493)
!2496 = !DILocation(line: 1661, column: 11, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2489, file: !672, line: 1660, column: 52)
!2498 = !DILocation(line: 1662, column: 7, scope: !2497)
!2499 = !DILocation(line: 1665, column: 39, scope: !2472)
!2500 = !DILocation(line: 1666, column: 39, scope: !2472)
!2501 = !DILocation(line: 1668, column: 39, scope: !2472)
!2502 = !DILocation(line: 1665, column: 10, scope: !2472)
!2503 = !DILocation(line: 1665, column: 8, scope: !2472)
!2504 = !DILocation(line: 1671, column: 18, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2472, file: !672, line: 1671, column: 8)
!2506 = !DILocation(line: 1671, column: 15, scope: !2505)
!2507 = !DILocation(line: 1671, column: 8, scope: !2472)
!2508 = !DILocation(line: 1672, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !672, line: 1671, column: 23)
!2510 = !DILocation(line: 1675, column: 19, scope: !2472)
!2511 = !DILocation(line: 1675, column: 29, scope: !2472)
!2512 = !DILocation(line: 1675, column: 35, scope: !2472)
!2513 = !DILocation(line: 1675, column: 5, scope: !2472)
!2514 = !DILocation(line: 1675, column: 17, scope: !2472)
!2515 = !DILocation(line: 1675, column: 4, scope: !2472)
!2516 = !DILocation(line: 1678, column: 11, scope: !2472)
!2517 = !DILocation(line: 1678, column: 4, scope: !2472)
!2518 = distinct !DISubprogram(name: "VixPropertyList_SetPtr", scope: !672, file: !672, line: 1710, type: !2519, isLocal: false, isDefinition: true, scopeLine: 1713, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!841, !675, !629, !626}
!2521 = !DILocalVariable(name: "propList", arg: 1, scope: !2518, file: !672, line: 1710, type: !675)
!2522 = !DILocation(line: 1710, column: 45, scope: !2518)
!2523 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2518, file: !672, line: 1711, type: !629)
!2524 = !DILocation(line: 1711, column: 28, scope: !2518)
!2525 = !DILocalVariable(name: "value", arg: 3, scope: !2518, file: !672, line: 1712, type: !626)
!2526 = !DILocation(line: 1712, column: 30, scope: !2518)
!2527 = !DILocalVariable(name: "err", scope: !2518, file: !672, line: 1714, type: !841)
!2528 = !DILocation(line: 1714, column: 13, scope: !2518)
!2529 = !DILocalVariable(name: "property", scope: !2518, file: !672, line: 1715, type: !630)
!2530 = !DILocation(line: 1715, column: 22, scope: !2518)
!2531 = !DILocation(line: 1717, column: 15, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2518, file: !672, line: 1717, column: 7)
!2533 = !DILocation(line: 1717, column: 12, scope: !2532)
!2534 = !DILocation(line: 1717, column: 7, scope: !2518)
!2535 = !DILocation(line: 1718, column: 11, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !672, line: 1717, column: 25)
!2537 = !DILocation(line: 1719, column: 7, scope: !2536)
!2538 = !DILocation(line: 1725, column: 39, scope: !2518)
!2539 = !DILocation(line: 1726, column: 39, scope: !2518)
!2540 = !DILocation(line: 1725, column: 10, scope: !2518)
!2541 = !DILocation(line: 1725, column: 8, scope: !2518)
!2542 = !DILocation(line: 1731, column: 18, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2518, file: !672, line: 1731, column: 8)
!2544 = !DILocation(line: 1731, column: 15, scope: !2543)
!2545 = !DILocation(line: 1731, column: 8, scope: !2518)
!2546 = !DILocation(line: 1732, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !672, line: 1731, column: 23)
!2548 = !DILocation(line: 1735, column: 31, scope: !2518)
!2549 = !DILocation(line: 1735, column: 4, scope: !2518)
!2550 = !DILocation(line: 1735, column: 14, scope: !2518)
!2551 = !DILocation(line: 1735, column: 20, scope: !2518)
!2552 = !DILocation(line: 1735, column: 29, scope: !2518)
!2553 = !DILocation(line: 1736, column: 4, scope: !2518)
!2554 = !DILocation(line: 1736, column: 14, scope: !2518)
!2555 = !DILocation(line: 1736, column: 22, scope: !2518)
!2556 = !DILocation(line: 1739, column: 11, scope: !2518)
!2557 = !DILocation(line: 1739, column: 4, scope: !2518)
!2558 = distinct !DISubprogram(name: "VixPropertyList_PropertyExists", scope: !672, file: !672, line: 1758, type: !2559, isLocal: false, isDefinition: true, scopeLine: 1761, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!641, !675, !629, !636}
!2561 = !DILocalVariable(name: "propList", arg: 1, scope: !2558, file: !672, line: 1758, type: !675)
!2562 = !DILocation(line: 1758, column: 53, scope: !2558)
!2563 = !DILocalVariable(name: "propertyID", arg: 2, scope: !2558, file: !672, line: 1759, type: !629)
!2564 = !DILocation(line: 1759, column: 36, scope: !2558)
!2565 = !DILocalVariable(name: "type", arg: 3, scope: !2558, file: !672, line: 1760, type: !636)
!2566 = !DILocation(line: 1760, column: 48, scope: !2558)
!2567 = !DILocalVariable(name: "err", scope: !2558, file: !672, line: 1762, type: !841)
!2568 = !DILocation(line: 1762, column: 13, scope: !2558)
!2569 = !DILocalVariable(name: "property", scope: !2558, file: !672, line: 1763, type: !630)
!2570 = !DILocation(line: 1763, column: 22, scope: !2558)
!2571 = !DILocalVariable(name: "foundIt", scope: !2558, file: !672, line: 1764, type: !641)
!2572 = !DILocation(line: 1764, column: 9, scope: !2558)
!2573 = !DILocation(line: 1766, column: 39, scope: !2558)
!2574 = !DILocation(line: 1767, column: 39, scope: !2558)
!2575 = !DILocation(line: 1768, column: 39, scope: !2558)
!2576 = !DILocation(line: 1766, column: 10, scope: !2558)
!2577 = !DILocation(line: 1766, column: 8, scope: !2558)
!2578 = !DILocation(line: 1772, column: 19, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2558, file: !672, line: 1772, column: 8)
!2580 = !DILocation(line: 1772, column: 16, scope: !2579)
!2581 = !DILocation(line: 1772, column: 24, scope: !2579)
!2582 = !DILocation(line: 1772, column: 35, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2579, file: !672, discriminator: 1)
!2584 = !DILocation(line: 1772, column: 32, scope: !2583)
!2585 = !DILocation(line: 1772, column: 8, scope: !2583)
!2586 = !DILocation(line: 1773, column: 15, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2579, file: !672, line: 1772, column: 46)
!2588 = !DILocation(line: 1774, column: 4, scope: !2587)
!2589 = !DILocation(line: 1776, column: 11, scope: !2558)
!2590 = !DILocation(line: 1776, column: 4, scope: !2558)
!2591 = distinct !DISubprogram(name: "VixPropertyList_NumItems", scope: !672, file: !672, line: 1797, type: !2592, isLocal: false, isDefinition: true, scopeLine: 1798, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!629, !675}
!2594 = !DILocalVariable(name: "propList", arg: 1, scope: !2591, file: !672, line: 1797, type: !675)
!2595 = !DILocation(line: 1797, column: 47, scope: !2591)
!2596 = !DILocalVariable(name: "prop", scope: !2591, file: !672, line: 1799, type: !630)
!2597 = !DILocation(line: 1799, column: 22, scope: !2591)
!2598 = !DILocalVariable(name: "count", scope: !2591, file: !672, line: 1800, type: !629)
!2599 = !DILocation(line: 1800, column: 8, scope: !2591)
!2600 = !DILocation(line: 1802, column: 8, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2591, file: !672, line: 1802, column: 8)
!2602 = !DILocation(line: 1802, column: 17, scope: !2601)
!2603 = !DILocation(line: 1802, column: 8, scope: !2591)
!2604 = !DILocation(line: 1803, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !672, line: 1802, column: 25)
!2606 = !DILocation(line: 1806, column: 16, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2591, file: !672, line: 1806, column: 4)
!2608 = !DILocation(line: 1806, column: 26, scope: !2607)
!2609 = !DILocation(line: 1806, column: 14, scope: !2607)
!2610 = !DILocation(line: 1806, column: 9, scope: !2607)
!2611 = !DILocation(line: 1806, column: 38, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2613, file: !672, discriminator: 1)
!2613 = distinct !DILexicalBlock(scope: !2607, file: !672, line: 1806, column: 4)
!2614 = !DILocation(line: 1806, column: 43, scope: !2612)
!2615 = !DILocation(line: 1806, column: 4, scope: !2612)
!2616 = !DILocation(line: 1807, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !672, line: 1806, column: 70)
!2618 = !DILocation(line: 1808, column: 4, scope: !2617)
!2619 = !DILocation(line: 1806, column: 58, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2613, file: !672, discriminator: 2)
!2621 = !DILocation(line: 1806, column: 64, scope: !2620)
!2622 = !DILocation(line: 1806, column: 56, scope: !2620)
!2623 = !DILocation(line: 1806, column: 4, scope: !2620)
!2624 = distinct !{!2624, !2625}
!2625 = !DILocation(line: 1806, column: 4, scope: !2591)
!2626 = !DILocation(line: 1810, column: 11, scope: !2591)
!2627 = !DILocation(line: 1810, column: 4, scope: !2591)
!2628 = !DILocation(line: 1811, column: 1, scope: !2591)
!2629 = distinct !DISubprogram(name: "VixPropertyList_Empty", scope: !672, file: !672, line: 1831, type: !2630, isLocal: false, isDefinition: true, scopeLine: 1832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !680)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!641, !675}
!2632 = !DILocalVariable(name: "propList", arg: 1, scope: !2629, file: !672, line: 1831, type: !675)
!2633 = !DILocation(line: 1831, column: 44, scope: !2629)
!2634 = !DILocation(line: 1833, column: 12, scope: !2629)
!2635 = !DILocation(line: 1833, column: 21, scope: !2629)
!2636 = !DILocation(line: 1833, column: 28, scope: !2629)
!2637 = !DILocation(line: 1833, column: 31, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2629, file: !672, discriminator: 1)
!2639 = !DILocation(line: 1833, column: 41, scope: !2638)
!2640 = !DILocation(line: 1833, column: 52, scope: !2638)
!2641 = !DILocation(line: 1833, column: 28, scope: !2638)
!2642 = !DILocation(line: 1833, column: 28, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2629, file: !672, discriminator: 2)
!2644 = !DILocation(line: 1833, column: 11, scope: !2643)
!2645 = !DILocation(line: 1833, column: 4, scope: !2643)
