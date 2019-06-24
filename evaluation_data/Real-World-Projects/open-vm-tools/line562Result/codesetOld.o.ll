; ModuleID = './codesetOld.o.i'
source_filename = "./codesetOld.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.DynBuf = type { i8*, i64, i64 }

@CodeSetOld_GetCurrentCodeSet.cachedCodeset = internal global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"G_FILENAME_ENCODING\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"@locale\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"G_BROKEN_FILENAMES\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@CodeSetOld_Utf16leToUtf8Db.SURROGATE_OFFSET = internal constant i32 56613888, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"codesetOld.c\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\1A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%s//TRANSLIT\00", align 1
@nul = internal constant i32 0, align 4

; Function Attrs: nounwind uwtable
define i8* @CodeSetOld_GetCurrentCodeSet() #0 !dbg !703 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !734
  %5 = icmp ne i8* %4, null, !dbg !734
  br i1 %5, label %42, label %6, !dbg !736

; <label>:6:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %2, metadata !737, metadata !739), !dbg !740
  %7 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)) #8, !dbg !741
  store i8* %7, i8** %2, align 8, !dbg !740
  call void @llvm.dbg.declare(metadata i8** %3, metadata !742, metadata !739), !dbg !743
  %8 = load i8*, i8** %2, align 8, !dbg !744
  %9 = icmp ne i8* %8, null, !dbg !744
  br i1 %9, label %10, label %35, !dbg !746

; <label>:10:                                     ; preds = %6
  %11 = load i8*, i8** %2, align 8, !dbg !747
  %12 = load i8, i8* %11, align 1, !dbg !749
  %13 = sext i8 %12 to i32, !dbg !749
  %14 = icmp ne i32 %13, 0, !dbg !749
  br i1 %14, label %15, label %35, !dbg !750

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %2, align 8, !dbg !751
  %17 = call i8* @UtilSafeStrdup0(i8* %16), !dbg !753
  store i8* %17, i8** %2, align 8, !dbg !754
  %18 = load i8*, i8** %2, align 8, !dbg !755
  %19 = call i8* @strchr(i8* %18, i32 44) #9, !dbg !756
  store i8* %19, i8** %3, align 8, !dbg !757
  %20 = load i8*, i8** %3, align 8, !dbg !758
  %21 = icmp ne i8* %20, null, !dbg !758
  br i1 %21, label %22, label %24, !dbg !760

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %3, align 8, !dbg !761
  store i8 0, i8* %23, align 1, !dbg !763
  br label %24, !dbg !764

; <label>:24:                                     ; preds = %22, %15
  %25 = load i8*, i8** %2, align 8, !dbg !765
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #9, !dbg !767
  %27 = icmp ne i32 %26, 0, !dbg !767
  br i1 %27, label %32, label %28, !dbg !768

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %2, align 8, !dbg !769
  call void @free(i8* %29) #8, !dbg !771
  %30 = call i8* @CodeSetOldGetCodeSetFromLocale(), !dbg !772
  store i8* %30, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !773
  %31 = load i8*, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !774
  store i8* %31, i8** %1, align 8, !dbg !775
  br label %44, !dbg !775

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %2, align 8, !dbg !776
  store i8* %33, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !777
  %34 = load i8*, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !778
  store i8* %34, i8** %1, align 8, !dbg !779
  br label %44, !dbg !779

; <label>:35:                                     ; preds = %10, %6
  %36 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !780
  %37 = icmp ne i8* %36, null, !dbg !780
  br i1 %37, label %38, label %41, !dbg !782

; <label>:38:                                     ; preds = %35
  %39 = call i8* @CodeSetOldGetCodeSetFromLocale(), !dbg !783
  store i8* %39, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !785
  %40 = load i8*, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !786
  store i8* %40, i8** %1, align 8, !dbg !787
  br label %44, !dbg !787

; <label>:41:                                     ; preds = %35
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !788
  br label %42, !dbg !789

; <label>:42:                                     ; preds = %41, %0
  %43 = load i8*, i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset, align 8, !dbg !790
  store i8* %43, i8** %1, align 8, !dbg !791
  br label %44, !dbg !791

; <label>:44:                                     ; preds = %42, %38, %32, %28
  %45 = load i8*, i8** %1, align 8, !dbg !792
  ret i8* %45, !dbg !792
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i8* @UtilSafeStrdup0(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @CodeSetOldGetCodeSetFromLocale() #0 !dbg !793 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.__locale_struct*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !796, metadata !739), !dbg !797
  call void @llvm.dbg.declare(metadata %struct.__locale_struct** %2, metadata !798, metadata !739), !dbg !820
  %3 = call %struct.__locale_struct* @newlocale(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %struct.__locale_struct* null) #8, !dbg !821
  store %struct.__locale_struct* %3, %struct.__locale_struct** %2, align 8, !dbg !820
  %4 = load %struct.__locale_struct*, %struct.__locale_struct** %2, align 8, !dbg !822
  %5 = icmp ne %struct.__locale_struct* %4, null, !dbg !822
  br i1 %5, label %8, label %6, !dbg !824

; <label>:6:                                      ; preds = %0
  %7 = call %struct.__locale_struct* @newlocale(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.__locale_struct* null) #8, !dbg !825
  store %struct.__locale_struct* %7, %struct.__locale_struct** %2, align 8, !dbg !827
  br label %8, !dbg !828

; <label>:8:                                      ; preds = %6, %0
  %9 = load %struct.__locale_struct*, %struct.__locale_struct** %2, align 8, !dbg !829
  %10 = call i8* @nl_langinfo_l(i32 14, %struct.__locale_struct* %9), !dbg !830
  %11 = call i8* @UtilSafeStrdup0(i8* %10), !dbg !831
  store i8* %11, i8** %1, align 8, !dbg !833
  %12 = load %struct.__locale_struct*, %struct.__locale_struct** %2, align 8, !dbg !834
  call void @freelocale(%struct.__locale_struct* %12) #8, !dbg !835
  %13 = load i8*, i8** %1, align 8, !dbg !836
  ret i8* %13, !dbg !837
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_GenericToGenericDb(i8*, i8*, i64, i8*, i32, %struct.DynBuf*) #0 !dbg !838 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !841, metadata !739), !dbg !845
  %9 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !847, metadata !739), !dbg !848
  %10 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !849, metadata !739), !dbg !850
  %11 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !851, metadata !739), !dbg !854
  %12 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !855, metadata !739), !dbg !858
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.DynBuf*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !859, metadata !739), !dbg !860
  store i8* %1, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !861, metadata !739), !dbg !862
  store i64 %2, i64* %16, align 8
  call void @llvm.dbg.declare(metadata i64* %16, metadata !863, metadata !739), !dbg !864
  store i8* %3, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !865, metadata !739), !dbg !866
  store i32 %4, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !867, metadata !739), !dbg !868
  store %struct.DynBuf* %5, %struct.DynBuf** %19, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %19, metadata !869, metadata !739), !dbg !870
  call void @llvm.dbg.declare(metadata i8** %20, metadata !871, metadata !739), !dbg !872
  %27 = load i32, i32* %18, align 4, !dbg !873
  %28 = icmp ne i32 %27, 0, !dbg !875
  br i1 %28, label %29, label %30, !dbg !876

; <label>:29:                                     ; preds = %6
  store i32 3, i32* %18, align 4, !dbg !877
  br label %30, !dbg !879

; <label>:30:                                     ; preds = %29, %6
  %31 = load i8*, i8** %14, align 8, !dbg !880
  %32 = load i8*, i8** %17, align 8, !dbg !881
  %33 = load i32, i32* %18, align 4, !dbg !882
  store i8* %31, i8** %8, align 8, !dbg !883
  store i8* %32, i8** %9, align 8, !dbg !883
  store i32 %33, i32* %10, align 4, !dbg !883
  %34 = load i32, i32* %10, align 4, !dbg !884
  %35 = icmp ne i32 %34, 0, !dbg !884
  br i1 %35, label %36, label %52, !dbg !885

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %9, align 8, !dbg !886
  %38 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* %37) #8, !dbg !887
  store i8* %38, i8** %11, align 8, !dbg !888
  %39 = load i8*, i8** %11, align 8, !dbg !889
  %40 = icmp ne i8* %39, null, !dbg !889
  br i1 %40, label %41, label %51, !dbg !890

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %11, align 8, !dbg !891
  %43 = load i8*, i8** %8, align 8, !dbg !892
  %44 = call i8* @iconv_open(i8* %42, i8* %43) #8, !dbg !893
  store i8* %44, i8** %12, align 8, !dbg !858
  %45 = load i8*, i8** %11, align 8, !dbg !894
  call void @free(i8* %45) #8, !dbg !895
  %46 = load i8*, i8** %12, align 8, !dbg !896
  %47 = icmp ne i8* %46, inttoptr (i64 -1 to i8*), !dbg !898
  br i1 %47, label %48, label %50, !dbg !899

; <label>:48:                                     ; preds = %41
  %49 = load i8*, i8** %12, align 8, !dbg !900
  store i8* %49, i8** %7, align 8, !dbg !902
  br label %56, !dbg !902

; <label>:50:                                     ; preds = %41
  br label %51, !dbg !903

; <label>:51:                                     ; preds = %50, %36
  br label %52, !dbg !904

; <label>:52:                                     ; preds = %51, %30
  %53 = load i8*, i8** %9, align 8, !dbg !905
  %54 = load i8*, i8** %8, align 8, !dbg !906
  %55 = call i8* @iconv_open(i8* %53, i8* %54) #8, !dbg !907
  store i8* %55, i8** %7, align 8, !dbg !908
  br label %56, !dbg !908

; <label>:56:                                     ; preds = %48, %52
  %57 = load i8*, i8** %7, align 8, !dbg !909
  store i8* %57, i8** %20, align 8, !dbg !910
  %58 = load i8*, i8** %20, align 8, !dbg !911
  %59 = icmp eq i8* %58, inttoptr (i64 -1 to i8*), !dbg !913
  br i1 %59, label %60, label %61, !dbg !914

; <label>:60:                                     ; preds = %56
  store i8 0, i8* %13, align 1, !dbg !915
  br label %138, !dbg !915

; <label>:61:                                     ; preds = %56
  br label %62, !dbg !917

; <label>:62:                                     ; preds = %128, %61
  call void @llvm.dbg.declare(metadata i64* %21, metadata !918, metadata !739), !dbg !922
  call void @llvm.dbg.declare(metadata i64* %22, metadata !923, metadata !739), !dbg !924
  call void @llvm.dbg.declare(metadata i8** %23, metadata !925, metadata !739), !dbg !926
  call void @llvm.dbg.declare(metadata i8** %24, metadata !927, metadata !739), !dbg !928
  call void @llvm.dbg.declare(metadata i64* %25, metadata !929, metadata !739), !dbg !930
  call void @llvm.dbg.declare(metadata i64* %26, metadata !931, metadata !739), !dbg !932
  %63 = load %struct.DynBuf*, %struct.DynBuf** %19, align 8, !dbg !933
  %64 = call i64 @DynBuf_GetSize(%struct.DynBuf* %63), !dbg !934
  store i64 %64, i64* %21, align 8, !dbg !935
  %65 = load i64, i64* %21, align 8, !dbg !936
  %66 = add i64 %65, 4, !dbg !937
  store i64 %66, i64* %22, align 8, !dbg !938
  %67 = load i64, i64* %22, align 8, !dbg !939
  %68 = load i64, i64* %21, align 8, !dbg !941
  %69 = icmp ult i64 %67, %68, !dbg !942
  br i1 %69, label %70, label %72, !dbg !943

; <label>:70:                                     ; preds = %62
  %71 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !944
  br label %135, !dbg !946

; <label>:72:                                     ; preds = %62
  %73 = load %struct.DynBuf*, %struct.DynBuf** %19, align 8, !dbg !947
  %74 = load i64, i64* %22, align 8, !dbg !949
  %75 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %73, i64 %74), !dbg !950
  %76 = sext i8 %75 to i32, !dbg !950
  %77 = icmp eq i32 %76, 0, !dbg !951
  br i1 %77, label %78, label %80, !dbg !952

; <label>:78:                                     ; preds = %72
  %79 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !953
  br label %135, !dbg !955

; <label>:80:                                     ; preds = %72
  %81 = load %struct.DynBuf*, %struct.DynBuf** %19, align 8, !dbg !956
  %82 = call i8* @DynBuf_Get(%struct.DynBuf* %81), !dbg !957
  %83 = load i64, i64* %21, align 8, !dbg !958
  %84 = getelementptr inbounds i8, i8* %82, i64 %83, !dbg !959
  store i8* %84, i8** %23, align 8, !dbg !960
  %85 = load i8*, i8** %23, align 8, !dbg !961
  store i8* %85, i8** %24, align 8, !dbg !962
  %86 = load %struct.DynBuf*, %struct.DynBuf** %19, align 8, !dbg !963
  %87 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %86), !dbg !964
  %88 = load i64, i64* %21, align 8, !dbg !965
  %89 = sub i64 %87, %88, !dbg !966
  store i64 %89, i64* %25, align 8, !dbg !967
  %90 = load i8*, i8** %20, align 8, !dbg !968
  %91 = call i64 @iconv(i8* %90, i8** %15, i64* %16, i8** %23, i64* %25), !dbg !969
  store i64 %91, i64* %26, align 8, !dbg !970
  %92 = load %struct.DynBuf*, %struct.DynBuf** %19, align 8, !dbg !971
  %93 = load i64, i64* %21, align 8, !dbg !972
  %94 = load i8*, i8** %23, align 8, !dbg !973
  %95 = getelementptr inbounds i8, i8* %94, i64 %93, !dbg !974
  %96 = load i8*, i8** %24, align 8, !dbg !975
  %97 = ptrtoint i8* %95 to i64, !dbg !976
  %98 = ptrtoint i8* %96 to i64, !dbg !976
  %99 = sub i64 %97, %98, !dbg !976
  call void @DynBuf_SetSize(%struct.DynBuf* %92, i64 %99), !dbg !977
  %100 = load i64, i64* %16, align 8, !dbg !978
  %101 = icmp eq i64 %100, 0, !dbg !980
  br i1 %101, label %102, label %103, !dbg !981

; <label>:102:                                    ; preds = %80
  br label %129, !dbg !982

; <label>:103:                                    ; preds = %80
  %104 = load i8*, i8** %23, align 8, !dbg !984
  %105 = load i8*, i8** %24, align 8, !dbg !986
  %106 = icmp eq i8* %104, %105, !dbg !987
  br i1 %106, label %107, label %128, !dbg !988

; <label>:107:                                    ; preds = %103
  %108 = load i64, i64* %26, align 8, !dbg !989
  %109 = icmp ne i64 %108, -1, !dbg !992
  br i1 %109, label %110, label %112, !dbg !993

; <label>:110:                                    ; preds = %107
  %111 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !994
  br label %135, !dbg !996

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %18, align 4, !dbg !997
  %114 = and i32 %113, 2, !dbg !999
  %115 = icmp ne i32 %114, 0, !dbg !999
  br i1 %115, label %116, label %121, !dbg !1000

; <label>:116:                                    ; preds = %112
  %117 = call i32* @__errno_location() #1, !dbg !1001
  %118 = load i32, i32* %117, align 4, !dbg !1003
  %119 = icmp eq i32 %118, 84, !dbg !1004
  br i1 %119, label %120, label %121, !dbg !1005

; <label>:120:                                    ; preds = %116
  br label %129, !dbg !1006

; <label>:121:                                    ; preds = %116, %112
  %122 = call i32* @__errno_location() #1, !dbg !1008
  %123 = load i32, i32* %122, align 4, !dbg !1010
  %124 = icmp ne i32 %123, 7, !dbg !1011
  br i1 %124, label %125, label %127, !dbg !1012

; <label>:125:                                    ; preds = %121
  %126 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1013
  br label %135, !dbg !1015

; <label>:127:                                    ; preds = %121
  br label %128, !dbg !1016

; <label>:128:                                    ; preds = %127, %103
  br label %62, !dbg !1017, !llvm.loop !1019

; <label>:129:                                    ; preds = %120, %102
  %130 = load i8*, i8** %20, align 8, !dbg !1020
  %131 = call i32 @iconv_close(i8* %130), !dbg !1022
  %132 = icmp slt i32 %131, 0, !dbg !1023
  br i1 %132, label %133, label %134, !dbg !1024

; <label>:133:                                    ; preds = %129
  store i8 0, i8* %13, align 1, !dbg !1025
  br label %138, !dbg !1025

; <label>:134:                                    ; preds = %129
  store i8 1, i8* %13, align 1, !dbg !1027
  br label %138, !dbg !1027

; <label>:135:                                    ; preds = %125, %110, %78, %70
  %136 = load i8*, i8** %20, align 8, !dbg !1028
  %137 = call i32 @iconv_close(i8* %136), !dbg !1029
  store i8 0, i8* %13, align 1, !dbg !1030
  br label %138, !dbg !1030

; <label>:138:                                    ; preds = %135, %134, %133, %60
  %139 = load i8, i8* %13, align 1, !dbg !1031
  ret i8 %139, !dbg !1031
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetSize(%struct.DynBuf*) #5 !dbg !1032 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1037, metadata !739), !dbg !1038
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1039
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 1, !dbg !1040
  %5 = load i64, i64* %4, align 8, !dbg !1040
  ret i64 %5, !dbg !1041
}

declare i32 @assert(...) #3

declare signext i8 @DynBuf_Enlarge(%struct.DynBuf*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @DynBuf_Get(%struct.DynBuf*) #5 !dbg !1042 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1045, metadata !739), !dbg !1046
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1047
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 0, !dbg !1048
  %5 = load i8*, i8** %4, align 8, !dbg !1048
  ret i8* %5, !dbg !1049
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @DynBuf_GetAllocatedSize(%struct.DynBuf*) #5 !dbg !1050 {
  %2 = alloca %struct.DynBuf*, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %2, metadata !1051, metadata !739), !dbg !1052
  %3 = load %struct.DynBuf*, %struct.DynBuf** %2, align 8, !dbg !1053
  %4 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %3, i32 0, i32 2, !dbg !1054
  %5 = load i64, i64* %4, align 8, !dbg !1054
  ret i64 %5, !dbg !1055
}

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @DynBuf_SetSize(%struct.DynBuf*, i64) #5 !dbg !1056 {
  %3 = alloca %struct.DynBuf*, align 8
  %4 = alloca i64, align 8
  store %struct.DynBuf* %0, %struct.DynBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %3, metadata !1059, metadata !739), !dbg !1060
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1061, metadata !739), !dbg !1062
  %5 = load i64, i64* %4, align 8, !dbg !1063
  %6 = load %struct.DynBuf*, %struct.DynBuf** %3, align 8, !dbg !1064
  %7 = getelementptr inbounds %struct.DynBuf, %struct.DynBuf* %6, i32 0, i32 1, !dbg !1065
  store i64 %5, i64* %7, align 8, !dbg !1066
  ret void, !dbg !1067
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @iconv_close(i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_GenericToGeneric(i8*, i8*, i64, i8*, i32, i8**, i64*) #0 !dbg !1068 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.DynBuf, align 8
  %16 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1072, metadata !739), !dbg !1073
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1074, metadata !739), !dbg !1075
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1076, metadata !739), !dbg !1077
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1078, metadata !739), !dbg !1079
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1080, metadata !739), !dbg !1081
  store i8** %5, i8*** %13, align 8
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !1082, metadata !739), !dbg !1083
  store i64* %6, i64** %14, align 8
  call void @llvm.dbg.declare(metadata i64** %14, metadata !1084, metadata !739), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %15, metadata !1086, metadata !739), !dbg !1087
  call void @llvm.dbg.declare(metadata i8* %16, metadata !1088, metadata !739), !dbg !1089
  call void @DynBuf_Init(%struct.DynBuf* %15), !dbg !1090
  %17 = load i8*, i8** %8, align 8, !dbg !1091
  %18 = load i8*, i8** %9, align 8, !dbg !1092
  %19 = load i64, i64* %10, align 8, !dbg !1093
  %20 = load i8*, i8** %11, align 8, !dbg !1094
  %21 = load i32, i32* %12, align 4, !dbg !1095
  %22 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* %17, i8* %18, i64 %19, i8* %20, i32 %21, %struct.DynBuf* %15), !dbg !1096
  store i8 %22, i8* %16, align 1, !dbg !1097
  %23 = load i8, i8* %16, align 1, !dbg !1098
  %24 = load i8**, i8*** %13, align 8, !dbg !1099
  %25 = load i64*, i64** %14, align 8, !dbg !1100
  %26 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %23, %struct.DynBuf* %15, i8** %24, i64* %25), !dbg !1101
  ret i8 %26, !dbg !1102
}

declare void @DynBuf_Init(%struct.DynBuf*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @CodeSetOldDynBufFinalize(i8 signext, %struct.DynBuf*, i8**, i64*) #0 !dbg !1103 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.DynBuf*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  store i8 %0, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1106, metadata !739), !dbg !1107
  store %struct.DynBuf* %1, %struct.DynBuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !1108, metadata !739), !dbg !1109
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1110, metadata !739), !dbg !1111
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1112, metadata !739), !dbg !1113
  %10 = load i8, i8* %6, align 1, !dbg !1114
  %11 = icmp ne i8 %10, 0, !dbg !1114
  br i1 %11, label %12, label %20, !dbg !1116

; <label>:12:                                     ; preds = %4
  %13 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1117
  %14 = call signext i8 @DynBuf_Append(%struct.DynBuf* %13, i8* bitcast (i32* @nul to i8*), i64 4), !dbg !1119
  %15 = icmp ne i8 %14, 0, !dbg !1119
  br i1 %15, label %16, label %20, !dbg !1120

; <label>:16:                                     ; preds = %12
  %17 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1121
  %18 = call signext i8 @DynBuf_Trim(%struct.DynBuf* %17), !dbg !1123
  %19 = icmp ne i8 %18, 0, !dbg !1123
  br i1 %19, label %22, label %20, !dbg !1124

; <label>:20:                                     ; preds = %16, %12, %4
  %21 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1125
  call void @DynBuf_Destroy(%struct.DynBuf* %21), !dbg !1127
  store i8 0, i8* %5, align 1, !dbg !1128
  br label %34, !dbg !1128

; <label>:22:                                     ; preds = %16
  %23 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1129
  %24 = call i8* @DynBuf_Get(%struct.DynBuf* %23), !dbg !1130
  %25 = load i8**, i8*** %8, align 8, !dbg !1131
  store i8* %24, i8** %25, align 8, !dbg !1132
  %26 = load i64*, i64** %9, align 8, !dbg !1133
  %27 = icmp ne i64* %26, null, !dbg !1133
  br i1 %27, label %28, label %33, !dbg !1135

; <label>:28:                                     ; preds = %22
  %29 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1136
  %30 = call i64 @DynBuf_GetSize(%struct.DynBuf* %29), !dbg !1138
  %31 = sub i64 %30, 4, !dbg !1139
  %32 = load i64*, i64** %9, align 8, !dbg !1140
  store i64 %31, i64* %32, align 8, !dbg !1141
  br label %33, !dbg !1142

; <label>:33:                                     ; preds = %28, %22
  store i8 1, i8* %5, align 1, !dbg !1143
  br label %34, !dbg !1143

; <label>:34:                                     ; preds = %33, %20
  %35 = load i8, i8* %5, align 1, !dbg !1144
  ret i8 %35, !dbg !1144
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf8ToCurrent(i8*, i64, i8**, i64*) #0 !dbg !1145 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1148, metadata !739), !dbg !1149
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1150, metadata !739), !dbg !1151
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1152, metadata !739), !dbg !1153
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1154, metadata !739), !dbg !1155
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1156, metadata !739), !dbg !1157
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1158, metadata !739), !dbg !1159
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1160
  %11 = load i8*, i8** %5, align 8, !dbg !1161
  %12 = load i64, i64* %6, align 8, !dbg !1162
  %13 = call i8* @CodeSetOld_GetCurrentCodeSet(), !dbg !1163
  %14 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %11, i64 %12, i8* %13, i32 0, %struct.DynBuf* %9), !dbg !1164
  store i8 %14, i8* %10, align 1, !dbg !1165
  %15 = load i8, i8* %10, align 1, !dbg !1166
  %16 = load i8**, i8*** %7, align 8, !dbg !1167
  %17 = load i64*, i64** %8, align 8, !dbg !1168
  %18 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %15, %struct.DynBuf* %9, i8** %16, i64* %17), !dbg !1169
  ret i8 %18, !dbg !1170
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_CurrentToUtf8(i8*, i64, i8**, i64*) #0 !dbg !1171 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1172, metadata !739), !dbg !1173
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1174, metadata !739), !dbg !1175
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1176, metadata !739), !dbg !1177
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1178, metadata !739), !dbg !1179
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1180, metadata !739), !dbg !1181
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1182, metadata !739), !dbg !1183
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1184
  %11 = call i8* @CodeSetOld_GetCurrentCodeSet(), !dbg !1185
  %12 = load i8*, i8** %5, align 8, !dbg !1186
  %13 = load i64, i64* %6, align 8, !dbg !1187
  %14 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* %11, i8* %12, i64 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 0, %struct.DynBuf* %9), !dbg !1188
  store i8 %14, i8* %10, align 1, !dbg !1190
  %15 = load i8, i8* %10, align 1, !dbg !1191
  %16 = load i8**, i8*** %7, align 8, !dbg !1192
  %17 = load i64*, i64** %8, align 8, !dbg !1193
  %18 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %15, %struct.DynBuf* %9, i8** %16, i64* %17), !dbg !1194
  ret i8 %18, !dbg !1195
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf16leToUtf8Db(i8*, i64, %struct.DynBuf*) #0 !dbg !711 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.DynBuf*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1196, metadata !739), !dbg !1197
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1198, metadata !739), !dbg !1199
  store %struct.DynBuf* %2, %struct.DynBuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !1200, metadata !739), !dbg !1201
  call void @llvm.dbg.declare(metadata i16** %8, metadata !1202, metadata !739), !dbg !1203
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1204, metadata !739), !dbg !1205
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1206, metadata !739), !dbg !1207
  %17 = load i64, i64* %6, align 8, !dbg !1208
  %18 = urem i64 %17, 2, !dbg !1210
  %19 = icmp ne i64 %18, 0, !dbg !1211
  br i1 %19, label %20, label %21, !dbg !1212

; <label>:20:                                     ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !1213
  br label %201, !dbg !1213

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %5, align 8, !dbg !1215
  %23 = bitcast i8* %22 to i16*, !dbg !1216
  store i16* %23, i16** %8, align 8, !dbg !1217
  %24 = load i64, i64* %6, align 8, !dbg !1218
  %25 = udiv i64 %24, 2, !dbg !1219
  store i64 %25, i64* %9, align 8, !dbg !1220
  store i64 0, i64* %10, align 8, !dbg !1221
  br label %26, !dbg !1223

; <label>:26:                                     ; preds = %197, %21
  %27 = load i64, i64* %10, align 8, !dbg !1224
  %28 = load i64, i64* %9, align 8, !dbg !1227
  %29 = icmp ult i64 %27, %28, !dbg !1228
  br i1 %29, label %30, label %200, !dbg !1229

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1230, metadata !739), !dbg !1232
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1233, metadata !739), !dbg !1234
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1235, metadata !739), !dbg !1236
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1237, metadata !739), !dbg !1238
  %31 = load i64, i64* %10, align 8, !dbg !1239
  %32 = load i16*, i16** %8, align 8, !dbg !1241
  %33 = getelementptr inbounds i16, i16* %32, i64 %31, !dbg !1241
  %34 = load i16, i16* %33, align 2, !dbg !1241
  %35 = zext i16 %34 to i32, !dbg !1241
  %36 = icmp slt i32 %35, 55296, !dbg !1242
  br i1 %36, label %44, label %37, !dbg !1243

; <label>:37:                                     ; preds = %30
  %38 = load i64, i64* %10, align 8, !dbg !1244
  %39 = load i16*, i16** %8, align 8, !dbg !1245
  %40 = getelementptr inbounds i16, i16* %39, i64 %38, !dbg !1245
  %41 = load i16, i16* %40, align 2, !dbg !1245
  %42 = zext i16 %41 to i32, !dbg !1245
  %43 = icmp sgt i32 %42, 57343, !dbg !1246
  br i1 %43, label %44, label %50, !dbg !1247

; <label>:44:                                     ; preds = %37, %30
  %45 = load i64, i64* %10, align 8, !dbg !1249
  %46 = load i16*, i16** %8, align 8, !dbg !1251
  %47 = getelementptr inbounds i16, i16* %46, i64 %45, !dbg !1251
  %48 = load i16, i16* %47, align 2, !dbg !1251
  %49 = zext i16 %48 to i32, !dbg !1251
  store i32 %49, i32* %11, align 4, !dbg !1252
  br label %86, !dbg !1253

; <label>:50:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i16* %15, metadata !1254, metadata !739), !dbg !1256
  %51 = load i64, i64* %10, align 8, !dbg !1257
  %52 = load i16*, i16** %8, align 8, !dbg !1258
  %53 = getelementptr inbounds i16, i16* %52, i64 %51, !dbg !1258
  %54 = load i16, i16* %53, align 2, !dbg !1258
  store i16 %54, i16* %15, align 2, !dbg !1256
  call void @llvm.dbg.declare(metadata i16* %16, metadata !1259, metadata !739), !dbg !1260
  %55 = load i64, i64* %10, align 8, !dbg !1261
  %56 = add i64 %55, 1, !dbg !1261
  store i64 %56, i64* %10, align 8, !dbg !1261
  %57 = load i64, i64* %10, align 8, !dbg !1262
  %58 = load i64, i64* %9, align 8, !dbg !1264
  %59 = icmp eq i64 %57, %58, !dbg !1265
  br i1 %59, label %60, label %61, !dbg !1266

; <label>:60:                                     ; preds = %50
  store i8 0, i8* %4, align 1, !dbg !1267
  br label %201, !dbg !1267

; <label>:61:                                     ; preds = %50
  %62 = load i64, i64* %10, align 8, !dbg !1269
  %63 = load i16*, i16** %8, align 8, !dbg !1270
  %64 = getelementptr inbounds i16, i16* %63, i64 %62, !dbg !1270
  %65 = load i16, i16* %64, align 2, !dbg !1270
  store i16 %65, i16* %16, align 2, !dbg !1271
  %66 = load i16, i16* %15, align 2, !dbg !1272
  %67 = zext i16 %66 to i32, !dbg !1272
  %68 = icmp sgt i32 %67, 56319, !dbg !1274
  br i1 %68, label %77, label %69, !dbg !1275

; <label>:69:                                     ; preds = %61
  %70 = load i16, i16* %16, align 2, !dbg !1276
  %71 = zext i16 %70 to i32, !dbg !1276
  %72 = icmp slt i32 %71, 56320, !dbg !1277
  br i1 %72, label %77, label %73, !dbg !1278

; <label>:73:                                     ; preds = %69
  %74 = load i16, i16* %16, align 2, !dbg !1279
  %75 = zext i16 %74 to i32, !dbg !1279
  %76 = icmp sgt i32 %75, 57343, !dbg !1280
  br i1 %76, label %77, label %78, !dbg !1281

; <label>:77:                                     ; preds = %73, %69, %61
  store i8 0, i8* %4, align 1, !dbg !1283
  br label %201, !dbg !1283

; <label>:78:                                     ; preds = %73
  %79 = load i16, i16* %15, align 2, !dbg !1285
  %80 = zext i16 %79 to i32, !dbg !1286
  %81 = shl i32 %80, 10, !dbg !1287
  %82 = load i16, i16* %16, align 2, !dbg !1288
  %83 = zext i16 %82 to i32, !dbg !1289
  %84 = add i32 %81, %83, !dbg !1290
  %85 = sub i32 %84, 56613888, !dbg !1291
  store i32 %85, i32* %11, align 4, !dbg !1292
  br label %86

; <label>:86:                                     ; preds = %78, %44
  %87 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1293
  %88 = call i64 @DynBuf_GetSize(%struct.DynBuf* %87), !dbg !1294
  store i64 %88, i64* %13, align 8, !dbg !1295
  %89 = load i64, i64* %13, align 8, !dbg !1296
  %90 = add i64 %89, 4, !dbg !1297
  store i64 %90, i64* %14, align 8, !dbg !1298
  %91 = load i64, i64* %14, align 8, !dbg !1299
  %92 = load i64, i64* %13, align 8, !dbg !1301
  %93 = icmp ult i64 %91, %92, !dbg !1302
  br i1 %93, label %105, label %94, !dbg !1303

; <label>:94:                                     ; preds = %86
  %95 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1304
  %96 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %95), !dbg !1305
  %97 = load i64, i64* %14, align 8, !dbg !1306
  %98 = icmp ult i64 %96, %97, !dbg !1307
  br i1 %98, label %99, label %106, !dbg !1308

; <label>:99:                                     ; preds = %94
  %100 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1309
  %101 = load i64, i64* %14, align 8, !dbg !1310
  %102 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %100, i64 %101), !dbg !1311
  %103 = sext i8 %102 to i32, !dbg !1311
  %104 = icmp eq i32 %103, 0, !dbg !1312
  br i1 %104, label %105, label %106, !dbg !1313

; <label>:105:                                    ; preds = %99, %86
  store i8 0, i8* %4, align 1, !dbg !1314
  br label %201, !dbg !1314

; <label>:106:                                    ; preds = %99, %94
  %107 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1316
  %108 = call i8* @DynBuf_Get(%struct.DynBuf* %107), !dbg !1317
  %109 = load i64, i64* %13, align 8, !dbg !1318
  %110 = getelementptr inbounds i8, i8* %108, i64 %109, !dbg !1319
  store i8* %110, i8** %12, align 8, !dbg !1320
  %111 = load i32, i32* %11, align 4, !dbg !1321
  %112 = icmp ule i32 %111, 127, !dbg !1323
  br i1 %112, label %113, label %120, !dbg !1324

; <label>:113:                                    ; preds = %106
  %114 = load i32, i32* %11, align 4, !dbg !1325
  %115 = trunc i32 %114 to i8, !dbg !1325
  %116 = load i8*, i8** %12, align 8, !dbg !1327
  %117 = getelementptr inbounds i8, i8* %116, i64 0, !dbg !1327
  store i8 %115, i8* %117, align 1, !dbg !1328
  %118 = load i64, i64* %13, align 8, !dbg !1329
  %119 = add i64 %118, 1, !dbg !1329
  store i64 %119, i64* %13, align 8, !dbg !1329
  br label %194, !dbg !1330

; <label>:120:                                    ; preds = %106
  %121 = load i32, i32* %11, align 4, !dbg !1331
  %122 = icmp ule i32 %121, 2047, !dbg !1334
  br i1 %122, label %123, label %138, !dbg !1331

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %11, align 4, !dbg !1335
  %125 = lshr i32 %124, 6, !dbg !1337
  %126 = or i32 192, %125, !dbg !1338
  %127 = trunc i32 %126 to i8, !dbg !1339
  %128 = load i8*, i8** %12, align 8, !dbg !1340
  %129 = getelementptr inbounds i8, i8* %128, i64 0, !dbg !1340
  store i8 %127, i8* %129, align 1, !dbg !1341
  %130 = load i32, i32* %11, align 4, !dbg !1342
  %131 = and i32 %130, 63, !dbg !1343
  %132 = or i32 128, %131, !dbg !1344
  %133 = trunc i32 %132 to i8, !dbg !1345
  %134 = load i8*, i8** %12, align 8, !dbg !1346
  %135 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !1346
  store i8 %133, i8* %135, align 1, !dbg !1347
  %136 = load i64, i64* %13, align 8, !dbg !1348
  %137 = add i64 %136, 2, !dbg !1348
  store i64 %137, i64* %13, align 8, !dbg !1348
  br label %193, !dbg !1349

; <label>:138:                                    ; preds = %120
  %139 = load i32, i32* %11, align 4, !dbg !1350
  %140 = icmp ule i32 %139, 65535, !dbg !1353
  br i1 %140, label %141, label %163, !dbg !1350

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %11, align 4, !dbg !1354
  %143 = lshr i32 %142, 12, !dbg !1356
  %144 = or i32 224, %143, !dbg !1357
  %145 = trunc i32 %144 to i8, !dbg !1358
  %146 = load i8*, i8** %12, align 8, !dbg !1359
  %147 = getelementptr inbounds i8, i8* %146, i64 0, !dbg !1359
  store i8 %145, i8* %147, align 1, !dbg !1360
  %148 = load i32, i32* %11, align 4, !dbg !1361
  %149 = lshr i32 %148, 6, !dbg !1362
  %150 = and i32 %149, 63, !dbg !1363
  %151 = or i32 128, %150, !dbg !1364
  %152 = trunc i32 %151 to i8, !dbg !1365
  %153 = load i8*, i8** %12, align 8, !dbg !1366
  %154 = getelementptr inbounds i8, i8* %153, i64 1, !dbg !1366
  store i8 %152, i8* %154, align 1, !dbg !1367
  %155 = load i32, i32* %11, align 4, !dbg !1368
  %156 = and i32 %155, 63, !dbg !1369
  %157 = or i32 128, %156, !dbg !1370
  %158 = trunc i32 %157 to i8, !dbg !1371
  %159 = load i8*, i8** %12, align 8, !dbg !1372
  %160 = getelementptr inbounds i8, i8* %159, i64 2, !dbg !1372
  store i8 %158, i8* %160, align 1, !dbg !1373
  %161 = load i64, i64* %13, align 8, !dbg !1374
  %162 = add i64 %161, 3, !dbg !1374
  store i64 %162, i64* %13, align 8, !dbg !1374
  br label %192, !dbg !1375

; <label>:163:                                    ; preds = %138
  %164 = load i32, i32* %11, align 4, !dbg !1376
  %165 = lshr i32 %164, 18, !dbg !1378
  %166 = or i32 240, %165, !dbg !1379
  %167 = trunc i32 %166 to i8, !dbg !1380
  %168 = load i8*, i8** %12, align 8, !dbg !1381
  %169 = getelementptr inbounds i8, i8* %168, i64 0, !dbg !1381
  store i8 %167, i8* %169, align 1, !dbg !1382
  %170 = load i32, i32* %11, align 4, !dbg !1383
  %171 = lshr i32 %170, 12, !dbg !1384
  %172 = and i32 %171, 63, !dbg !1385
  %173 = or i32 128, %172, !dbg !1386
  %174 = trunc i32 %173 to i8, !dbg !1387
  %175 = load i8*, i8** %12, align 8, !dbg !1388
  %176 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !1388
  store i8 %174, i8* %176, align 1, !dbg !1389
  %177 = load i32, i32* %11, align 4, !dbg !1390
  %178 = lshr i32 %177, 6, !dbg !1391
  %179 = and i32 %178, 63, !dbg !1392
  %180 = or i32 128, %179, !dbg !1393
  %181 = trunc i32 %180 to i8, !dbg !1394
  %182 = load i8*, i8** %12, align 8, !dbg !1395
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !1395
  store i8 %181, i8* %183, align 1, !dbg !1396
  %184 = load i32, i32* %11, align 4, !dbg !1397
  %185 = and i32 %184, 63, !dbg !1398
  %186 = or i32 128, %185, !dbg !1399
  %187 = trunc i32 %186 to i8, !dbg !1400
  %188 = load i8*, i8** %12, align 8, !dbg !1401
  %189 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !1401
  store i8 %187, i8* %189, align 1, !dbg !1402
  %190 = load i64, i64* %13, align 8, !dbg !1403
  %191 = add i64 %190, 4, !dbg !1403
  store i64 %191, i64* %13, align 8, !dbg !1403
  br label %192

; <label>:192:                                    ; preds = %163, %141
  br label %193

; <label>:193:                                    ; preds = %192, %123
  br label %194

; <label>:194:                                    ; preds = %193, %113
  %195 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1404
  %196 = load i64, i64* %13, align 8, !dbg !1405
  call void @DynBuf_SetSize(%struct.DynBuf* %195, i64 %196), !dbg !1406
  br label %197, !dbg !1407

; <label>:197:                                    ; preds = %194
  %198 = load i64, i64* %10, align 8, !dbg !1408
  %199 = add i64 %198, 1, !dbg !1408
  store i64 %199, i64* %10, align 8, !dbg !1408
  br label %26, !dbg !1410, !llvm.loop !1411

; <label>:200:                                    ; preds = %26
  store i8 1, i8* %4, align 1, !dbg !1413
  br label %201, !dbg !1413

; <label>:201:                                    ; preds = %200, %105, %77, %60, %20
  %202 = load i8, i8* %4, align 1, !dbg !1414
  ret i8 %202, !dbg !1414
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf16leToUtf8(i8*, i64, i8**, i64*) #0 !dbg !1415 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1416, metadata !739), !dbg !1417
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1418, metadata !739), !dbg !1419
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1420, metadata !739), !dbg !1421
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1422, metadata !739), !dbg !1423
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1424, metadata !739), !dbg !1425
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1426, metadata !739), !dbg !1427
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1428
  %11 = load i8*, i8** %5, align 8, !dbg !1429
  %12 = load i64, i64* %6, align 8, !dbg !1430
  %13 = call signext i8 @CodeSetOld_Utf16leToUtf8Db(i8* %11, i64 %12, %struct.DynBuf* %9), !dbg !1431
  store i8 %13, i8* %10, align 1, !dbg !1432
  %14 = load i8, i8* %10, align 1, !dbg !1433
  %15 = load i8**, i8*** %7, align 8, !dbg !1434
  %16 = load i64*, i64** %8, align 8, !dbg !1435
  %17 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %14, %struct.DynBuf* %9, i8** %15, i64* %16), !dbg !1436
  ret i8 %17, !dbg !1437
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf8ToUtf16le(i8*, i64, i8**, i64*) #0 !dbg !1438 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1439, metadata !739), !dbg !1440
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1441, metadata !739), !dbg !1442
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1443, metadata !739), !dbg !1444
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1445, metadata !739), !dbg !1446
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1447, metadata !739), !dbg !1448
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1449, metadata !739), !dbg !1450
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1451
  %11 = load i8*, i8** %5, align 8, !dbg !1452
  %12 = load i64, i64* %6, align 8, !dbg !1453
  %13 = call signext i8 @CodeSetOldUtf8ToUtf16leDb(i8* %11, i64 %12, %struct.DynBuf* %9), !dbg !1454
  store i8 %13, i8* %10, align 1, !dbg !1455
  %14 = load i8, i8* %10, align 1, !dbg !1456
  %15 = load i8**, i8*** %7, align 8, !dbg !1457
  %16 = load i64*, i64** %8, align 8, !dbg !1458
  %17 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %14, %struct.DynBuf* %9, i8** %15, i64* %16), !dbg !1459
  ret i8 %17, !dbg !1460
}

; Function Attrs: nounwind uwtable
define internal signext i8 @CodeSetOldUtf8ToUtf16leDb(i8*, i64, %struct.DynBuf*) #0 !dbg !1461 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.DynBuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1462, metadata !739), !dbg !1463
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1464, metadata !739), !dbg !1465
  store %struct.DynBuf* %2, %struct.DynBuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !1466, metadata !739), !dbg !1467
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1468, metadata !739), !dbg !1469
  %15 = load i8*, i8** %5, align 8, !dbg !1470
  %16 = load i64, i64* %6, align 8, !dbg !1471
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !1472
  store i8* %17, i8** %8, align 8, !dbg !1469
  call void @llvm.dbg.declare(metadata i64* %9, metadata !1473, metadata !739), !dbg !1474
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1475, metadata !739), !dbg !1476
  call void @llvm.dbg.declare(metadata i16** %11, metadata !1477, metadata !739), !dbg !1478
  %18 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1479
  %19 = call i64 @DynBuf_GetSize(%struct.DynBuf* %18), !dbg !1480
  store i64 %19, i64* %9, align 8, !dbg !1481
  %20 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1482
  %21 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %20), !dbg !1483
  store i64 %21, i64* %10, align 8, !dbg !1484
  %22 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1485
  %23 = call i8* @DynBuf_Get(%struct.DynBuf* %22), !dbg !1486
  %24 = load i64, i64* %9, align 8, !dbg !1487
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !1488
  %26 = bitcast i8* %25 to i16*, !dbg !1489
  store i16* %26, i16** %11, align 8, !dbg !1490
  br label %27, !dbg !1491

; <label>:27:                                     ; preds = %105, %3
  %28 = load i8*, i8** %5, align 8, !dbg !1492
  %29 = load i8*, i8** %8, align 8, !dbg !1494
  %30 = icmp ult i8* %28, %29, !dbg !1495
  br i1 %30, label %31, label %107, !dbg !1496

; <label>:31:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1497, metadata !739), !dbg !1499
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1500, metadata !739), !dbg !1501
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1502, metadata !739), !dbg !1503
  %32 = load i8*, i8** %5, align 8, !dbg !1504
  %33 = load i8*, i8** %8, align 8, !dbg !1505
  %34 = call i32 @CodeSet_GetUtf8(i8* %32, i8* %33, i32* %13), !dbg !1506
  store i32 %34, i32* %14, align 4, !dbg !1503
  %35 = load i32, i32* %14, align 4, !dbg !1507
  %36 = icmp sle i32 %35, 0, !dbg !1509
  br i1 %36, label %37, label %38, !dbg !1510

; <label>:37:                                     ; preds = %31
  store i8 0, i8* %4, align 1, !dbg !1511
  br label %110, !dbg !1511

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %14, align 4, !dbg !1513
  %40 = load i8*, i8** %5, align 8, !dbg !1514
  %41 = sext i32 %39 to i64, !dbg !1514
  %42 = getelementptr inbounds i8, i8* %40, i64 %41, !dbg !1514
  store i8* %42, i8** %5, align 8, !dbg !1514
  %43 = load i32, i32* %13, align 4, !dbg !1515
  %44 = icmp uge i32 %43, 55296, !dbg !1517
  br i1 %44, label %45, label %49, !dbg !1518

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %13, align 4, !dbg !1519
  %47 = icmp ult i32 %46, 57344, !dbg !1521
  br i1 %47, label %48, label %49, !dbg !1522

; <label>:48:                                     ; preds = %45
  store i8 0, i8* %4, align 1, !dbg !1523
  br label %110, !dbg !1523

; <label>:49:                                     ; preds = %45, %38
  %50 = load i32, i32* %13, align 4, !dbg !1525
  %51 = icmp ult i32 %50, 65536, !dbg !1527
  br i1 %51, label %52, label %55, !dbg !1528

; <label>:52:                                     ; preds = %49
  %53 = load i64, i64* %9, align 8, !dbg !1529
  %54 = add i64 %53, 2, !dbg !1531
  store i64 %54, i64* %12, align 8, !dbg !1532
  br label %63, !dbg !1533

; <label>:55:                                     ; preds = %49
  %56 = load i32, i32* %13, align 4, !dbg !1534
  %57 = icmp ult i32 %56, 1114112, !dbg !1537
  br i1 %57, label %58, label %61, !dbg !1534

; <label>:58:                                     ; preds = %55
  %59 = load i64, i64* %9, align 8, !dbg !1538
  %60 = add i64 %59, 4, !dbg !1540
  store i64 %60, i64* %12, align 8, !dbg !1541
  br label %62, !dbg !1542

; <label>:61:                                     ; preds = %55
  store i8 0, i8* %4, align 1, !dbg !1543
  br label %110, !dbg !1543

; <label>:62:                                     ; preds = %58
  br label %63

; <label>:63:                                     ; preds = %62, %52
  %64 = load i64, i64* %10, align 8, !dbg !1545
  %65 = load i64, i64* %12, align 8, !dbg !1547
  %66 = icmp ult i64 %64, %65, !dbg !1548
  br i1 %66, label %67, label %82, !dbg !1549

; <label>:67:                                     ; preds = %63
  %68 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1550
  %69 = load i64, i64* %12, align 8, !dbg !1553
  %70 = call signext i8 @DynBuf_Enlarge(%struct.DynBuf* %68, i64 %69), !dbg !1554
  %71 = sext i8 %70 to i32, !dbg !1554
  %72 = icmp eq i32 %71, 0, !dbg !1555
  br i1 %72, label %73, label %74, !dbg !1556

; <label>:73:                                     ; preds = %67
  store i8 0, i8* %4, align 1, !dbg !1557
  br label %110, !dbg !1557

; <label>:74:                                     ; preds = %67
  %75 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1559
  %76 = call i64 @DynBuf_GetAllocatedSize(%struct.DynBuf* %75), !dbg !1560
  store i64 %76, i64* %10, align 8, !dbg !1561
  %77 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1562
  %78 = call i8* @DynBuf_Get(%struct.DynBuf* %77), !dbg !1563
  %79 = load i64, i64* %9, align 8, !dbg !1564
  %80 = getelementptr inbounds i8, i8* %78, i64 %79, !dbg !1565
  %81 = bitcast i8* %80 to i16*, !dbg !1566
  store i16* %81, i16** %11, align 8, !dbg !1567
  br label %82, !dbg !1568

; <label>:82:                                     ; preds = %74, %63
  %83 = load i32, i32* %13, align 4, !dbg !1569
  %84 = icmp ult i32 %83, 65536, !dbg !1571
  br i1 %84, label %85, label %90, !dbg !1572

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %13, align 4, !dbg !1573
  %87 = trunc i32 %86 to i16, !dbg !1573
  %88 = load i16*, i16** %11, align 8, !dbg !1575
  %89 = getelementptr inbounds i16, i16* %88, i32 1, !dbg !1575
  store i16* %89, i16** %11, align 8, !dbg !1575
  store i16 %87, i16* %88, align 2, !dbg !1576
  br label %105, !dbg !1577

; <label>:90:                                     ; preds = %82
  %91 = load i32, i32* %13, align 4, !dbg !1578
  %92 = sub i32 %91, 65536, !dbg !1580
  %93 = lshr i32 %92, 10, !dbg !1581
  %94 = add i32 55296, %93, !dbg !1582
  %95 = trunc i32 %94 to i16, !dbg !1583
  %96 = load i16*, i16** %11, align 8, !dbg !1584
  %97 = getelementptr inbounds i16, i16* %96, i32 1, !dbg !1584
  store i16* %97, i16** %11, align 8, !dbg !1584
  store i16 %95, i16* %96, align 2, !dbg !1585
  %98 = load i32, i32* %13, align 4, !dbg !1586
  %99 = sub i32 %98, 65536, !dbg !1587
  %100 = and i32 %99, 1023, !dbg !1588
  %101 = add i32 56320, %100, !dbg !1589
  %102 = trunc i32 %101 to i16, !dbg !1590
  %103 = load i16*, i16** %11, align 8, !dbg !1591
  %104 = getelementptr inbounds i16, i16* %103, i32 1, !dbg !1591
  store i16* %104, i16** %11, align 8, !dbg !1591
  store i16 %102, i16* %103, align 2, !dbg !1592
  br label %105

; <label>:105:                                    ; preds = %90, %85
  %106 = load i64, i64* %12, align 8, !dbg !1593
  store i64 %106, i64* %9, align 8, !dbg !1594
  br label %27, !dbg !1595, !llvm.loop !1597

; <label>:107:                                    ; preds = %27
  %108 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1598
  %109 = load i64, i64* %9, align 8, !dbg !1599
  call void @DynBuf_SetSize(%struct.DynBuf* %108, i64 %109), !dbg !1600
  store i8 1, i8* %4, align 1, !dbg !1601
  br label %110, !dbg !1601

; <label>:110:                                    ; preds = %107, %73, %61, %48, %37
  %111 = load i8, i8* %4, align 1, !dbg !1602
  ret i8 %111, !dbg !1602
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf8FormDToUtf8FormC(i8*, i64, i8**, i64*) #0 !dbg !1603 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1604, metadata !739), !dbg !1605
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1606, metadata !739), !dbg !1607
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1608, metadata !739), !dbg !1609
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1610, metadata !739), !dbg !1611
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 1606) #10, !dbg !1612
  unreachable, !dbg !1612
                                                  ; No predecessors!
  %11 = load i8, i8* %5, align 1, !dbg !1613
  ret i8 %11, !dbg !1613
}

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #7

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf8FormCToUtf8FormD(i8*, i64, i8**, i64*) #0 !dbg !1614 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1615, metadata !739), !dbg !1616
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1617, metadata !739), !dbg !1618
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1619, metadata !739), !dbg !1620
  store i64* %3, i64** %9, align 8
  call void @llvm.dbg.declare(metadata i64** %9, metadata !1621, metadata !739), !dbg !1622
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 1647) #10, !dbg !1623
  unreachable, !dbg !1623
                                                  ; No predecessors!
  %11 = load i8, i8* %5, align 1, !dbg !1624
  ret i8 %11, !dbg !1624
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_CurrentToUtf16le(i8*, i64, i8**, i64*) #0 !dbg !1625 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1626, metadata !739), !dbg !1627
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1628, metadata !739), !dbg !1629
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1630, metadata !739), !dbg !1631
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1632, metadata !739), !dbg !1633
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1634, metadata !739), !dbg !1635
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1636, metadata !739), !dbg !1637
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1638
  %11 = call i8* @CodeSetOld_GetCurrentCodeSet(), !dbg !1639
  %12 = load i8*, i8** %5, align 8, !dbg !1640
  %13 = load i64, i64* %6, align 8, !dbg !1641
  %14 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* %11, i8* %12, i64 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct.DynBuf* %9), !dbg !1642
  store i8 %14, i8* %10, align 1, !dbg !1644
  %15 = load i8, i8* %10, align 1, !dbg !1645
  %16 = load i8**, i8*** %7, align 8, !dbg !1646
  %17 = load i64*, i64** %8, align 8, !dbg !1647
  %18 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %15, %struct.DynBuf* %9, i8** %16, i64* %17), !dbg !1648
  ret i8 %18, !dbg !1649
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf16leToCurrent(i8*, i64, i8**, i64*) #0 !dbg !1650 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1651, metadata !739), !dbg !1652
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1653, metadata !739), !dbg !1654
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1655, metadata !739), !dbg !1656
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1657, metadata !739), !dbg !1658
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1659, metadata !739), !dbg !1660
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1661, metadata !739), !dbg !1662
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1663
  %11 = load i8*, i8** %5, align 8, !dbg !1664
  %12 = load i64, i64* %6, align 8, !dbg !1665
  %13 = call i8* @CodeSetOld_GetCurrentCodeSet(), !dbg !1666
  %14 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %11, i64 %12, i8* %13, i32 0, %struct.DynBuf* %9), !dbg !1667
  store i8 %14, i8* %10, align 1, !dbg !1668
  %15 = load i8, i8* %10, align 1, !dbg !1669
  %16 = load i8**, i8*** %7, align 8, !dbg !1670
  %17 = load i64*, i64** %8, align 8, !dbg !1671
  %18 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %15, %struct.DynBuf* %9, i8** %16, i64* %17), !dbg !1672
  ret i8 %18, !dbg !1673
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf16beToCurrent(i8*, i64, i8**, i64*) #0 !dbg !1674 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1675, metadata !739), !dbg !1676
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1677, metadata !739), !dbg !1678
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1679, metadata !739), !dbg !1680
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1681, metadata !739), !dbg !1682
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1683, metadata !739), !dbg !1684
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1685, metadata !739), !dbg !1686
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1687
  %11 = load i8*, i8** %5, align 8, !dbg !1688
  %12 = load i64, i64* %6, align 8, !dbg !1689
  %13 = call i8* @CodeSetOld_GetCurrentCodeSet(), !dbg !1690
  %14 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* %11, i64 %12, i8* %13, i32 0, %struct.DynBuf* %9), !dbg !1691
  store i8 %14, i8* %10, align 1, !dbg !1692
  %15 = load i8, i8* %10, align 1, !dbg !1693
  %16 = load i8**, i8*** %7, align 8, !dbg !1694
  %17 = load i64*, i64** %8, align 8, !dbg !1695
  %18 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %15, %struct.DynBuf* %9, i8** %16, i64* %17), !dbg !1696
  ret i8 %18, !dbg !1697
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf16beToUtf8(i8*, i64, i8**, i64*) #0 !dbg !1698 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.DynBuf, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1699, metadata !739), !dbg !1700
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1701, metadata !739), !dbg !1702
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1703, metadata !739), !dbg !1704
  store i64* %3, i64** %8, align 8
  call void @llvm.dbg.declare(metadata i64** %8, metadata !1705, metadata !739), !dbg !1706
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %9, metadata !1707, metadata !739), !dbg !1708
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1709, metadata !739), !dbg !1710
  call void @DynBuf_Init(%struct.DynBuf* %9), !dbg !1711
  %11 = load i8*, i8** %5, align 8, !dbg !1712
  %12 = load i64, i64* %6, align 8, !dbg !1713
  %13 = call signext i8 @CodeSetOld_Utf16beToUtf8Db(i8* %11, i64 %12, %struct.DynBuf* %9), !dbg !1714
  store i8 %13, i8* %10, align 1, !dbg !1715
  %14 = load i8, i8* %10, align 1, !dbg !1716
  %15 = load i8**, i8*** %7, align 8, !dbg !1717
  %16 = load i64*, i64** %8, align 8, !dbg !1718
  %17 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %14, %struct.DynBuf* %9, i8** %15, i64* %16), !dbg !1719
  ret i8 %17, !dbg !1720
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf16beToUtf8Db(i8*, i64, %struct.DynBuf*) #0 !dbg !1721 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.DynBuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1722, metadata !739), !dbg !1723
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1724, metadata !739), !dbg !1725
  store %struct.DynBuf* %2, %struct.DynBuf** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %7, metadata !1726, metadata !739), !dbg !1727
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1728, metadata !739), !dbg !1729
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1730, metadata !739), !dbg !1731
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1732, metadata !739), !dbg !1733
  store i8 0, i8* %10, align 1, !dbg !1733
  %11 = load i64, i64* %6, align 8, !dbg !1734
  %12 = call noalias i8* @malloc(i64 %11) #8, !dbg !1736
  store i8* %12, i8** %9, align 8, !dbg !1737
  %13 = icmp eq i8* %12, null, !dbg !1738
  br i1 %13, label %14, label %16, !dbg !1739

; <label>:14:                                     ; preds = %3
  %15 = load i8, i8* %10, align 1, !dbg !1740
  store i8 %15, i8* %4, align 1, !dbg !1742
  br label %53, !dbg !1742

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %8, align 4, !dbg !1743
  br label %17, !dbg !1745

; <label>:17:                                     ; preds = %43, %16
  %18 = load i32, i32* %8, align 4, !dbg !1746
  %19 = sext i32 %18 to i64, !dbg !1746
  %20 = load i64, i64* %6, align 8, !dbg !1749
  %21 = icmp ult i64 %19, %20, !dbg !1750
  br i1 %21, label %22, label %46, !dbg !1751

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %8, align 4, !dbg !1752
  %24 = add nsw i32 %23, 1, !dbg !1754
  %25 = sext i32 %24 to i64, !dbg !1755
  %26 = load i8*, i8** %5, align 8, !dbg !1755
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !1755
  %28 = load i8, i8* %27, align 1, !dbg !1755
  %29 = load i32, i32* %8, align 4, !dbg !1756
  %30 = sext i32 %29 to i64, !dbg !1757
  %31 = load i8*, i8** %9, align 8, !dbg !1757
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !1757
  store i8 %28, i8* %32, align 1, !dbg !1758
  %33 = load i32, i32* %8, align 4, !dbg !1759
  %34 = sext i32 %33 to i64, !dbg !1760
  %35 = load i8*, i8** %5, align 8, !dbg !1760
  %36 = getelementptr inbounds i8, i8* %35, i64 %34, !dbg !1760
  %37 = load i8, i8* %36, align 1, !dbg !1760
  %38 = load i32, i32* %8, align 4, !dbg !1761
  %39 = add nsw i32 %38, 1, !dbg !1762
  %40 = sext i32 %39 to i64, !dbg !1763
  %41 = load i8*, i8** %9, align 8, !dbg !1763
  %42 = getelementptr inbounds i8, i8* %41, i64 %40, !dbg !1763
  store i8 %37, i8* %42, align 1, !dbg !1764
  br label %43, !dbg !1765

; <label>:43:                                     ; preds = %22
  %44 = load i32, i32* %8, align 4, !dbg !1766
  %45 = add nsw i32 %44, 2, !dbg !1766
  store i32 %45, i32* %8, align 4, !dbg !1766
  br label %17, !dbg !1768, !llvm.loop !1769

; <label>:46:                                     ; preds = %17
  %47 = load i8*, i8** %9, align 8, !dbg !1771
  %48 = load i64, i64* %6, align 8, !dbg !1772
  %49 = load %struct.DynBuf*, %struct.DynBuf** %7, align 8, !dbg !1773
  %50 = call signext i8 @CodeSetOld_Utf16leToUtf8Db(i8* %47, i64 %48, %struct.DynBuf* %49), !dbg !1774
  store i8 %50, i8* %10, align 1, !dbg !1775
  %51 = load i8*, i8** %9, align 8, !dbg !1776
  call void @free(i8* %51) #8, !dbg !1777
  %52 = load i8, i8* %10, align 1, !dbg !1778
  store i8 %52, i8* %4, align 1, !dbg !1779
  br label %53, !dbg !1779

; <label>:53:                                     ; preds = %46, %14
  %54 = load i8, i8* %4, align 1, !dbg !1780
  ret i8 %54, !dbg !1780
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_AsciiToUtf8(i8*, i64, i32, i8**, i64*) #0 !dbg !1781 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.DynBuf, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1784, metadata !739), !dbg !1785
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1786, metadata !739), !dbg !1787
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1788, metadata !739), !dbg !1789
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1790, metadata !739), !dbg !1791
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !1792, metadata !739), !dbg !1793
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %11, metadata !1794, metadata !739), !dbg !1795
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1796, metadata !739), !dbg !1797
  call void @DynBuf_Init(%struct.DynBuf* %11), !dbg !1798
  %13 = load i8*, i8** %6, align 8, !dbg !1799
  %14 = load i64, i64* %7, align 8, !dbg !1800
  %15 = load i32, i32* %8, align 4, !dbg !1801
  %16 = call signext i8 @CodeSetOld_AsciiToUtf8Db(i8* %13, i64 %14, i32 %15, %struct.DynBuf* %11), !dbg !1802
  store i8 %16, i8* %12, align 1, !dbg !1803
  %17 = load i8, i8* %12, align 1, !dbg !1804
  %18 = load i8**, i8*** %9, align 8, !dbg !1805
  %19 = load i64*, i64** %10, align 8, !dbg !1806
  %20 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %17, %struct.DynBuf* %11, i8** %18, i64* %19), !dbg !1807
  ret i8 %20, !dbg !1808
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_AsciiToUtf8Db(i8*, i64, i32, %struct.DynBuf*) #0 !dbg !1809 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.DynBuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1812, metadata !739), !dbg !1813
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1814, metadata !739), !dbg !1815
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1816, metadata !739), !dbg !1817
  store %struct.DynBuf* %3, %struct.DynBuf** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %9, metadata !1818, metadata !739), !dbg !1819
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1820, metadata !739), !dbg !1821
  %13 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1822
  %14 = call i64 @DynBuf_GetSize(%struct.DynBuf* %13), !dbg !1823
  store i64 %14, i64* %10, align 8, !dbg !1821
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1824, metadata !739), !dbg !1825
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1826, metadata !739), !dbg !1827
  store i64 0, i64* %12, align 8, !dbg !1827
  store i64 0, i64* %11, align 8, !dbg !1828
  br label %15, !dbg !1830

; <label>:15:                                     ; preds = %54, %4
  %16 = load i64, i64* %11, align 8, !dbg !1831
  %17 = load i64, i64* %7, align 8, !dbg !1834
  %18 = icmp ult i64 %16, %17, !dbg !1835
  br i1 %18, label %19, label %57, !dbg !1836

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %11, align 8, !dbg !1837
  %21 = load i8*, i8** %6, align 8, !dbg !1840
  %22 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !1840
  %23 = load i8, i8* %22, align 1, !dbg !1840
  %24 = zext i8 %23 to i32, !dbg !1841
  %25 = icmp sge i32 %24, 128, !dbg !1842
  %26 = zext i1 %25 to i32, !dbg !1842
  %27 = sext i32 %26 to i64, !dbg !1843
  %28 = icmp ne i64 %27, 0, !dbg !1844
  br i1 %28, label %29, label %53, !dbg !1845

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %8, align 4, !dbg !1846
  %31 = icmp eq i32 %30, 0, !dbg !1849
  br i1 %31, label %32, label %35, !dbg !1850

; <label>:32:                                     ; preds = %29
  %33 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1851
  %34 = load i64, i64* %10, align 8, !dbg !1853
  call void @DynBuf_SetSize(%struct.DynBuf* %33, i64 %34), !dbg !1854
  store i8 0, i8* %5, align 1, !dbg !1855
  br label %66, !dbg !1855

; <label>:35:                                     ; preds = %29
  %36 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1856
  %37 = load i8*, i8** %6, align 8, !dbg !1857
  %38 = load i64, i64* %12, align 8, !dbg !1858
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !1859
  %40 = load i64, i64* %11, align 8, !dbg !1860
  %41 = load i64, i64* %12, align 8, !dbg !1861
  %42 = sub i64 %40, %41, !dbg !1862
  %43 = call signext i8 @DynBuf_Append(%struct.DynBuf* %36, i8* %39, i64 %42), !dbg !1863
  %44 = load i32, i32* %8, align 4, !dbg !1864
  %45 = and i32 %44, 1, !dbg !1866
  %46 = icmp ne i32 %45, 0, !dbg !1867
  br i1 %46, label %47, label %50, !dbg !1868

; <label>:47:                                     ; preds = %35
  %48 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1869
  %49 = call signext i8 @DynBuf_Append(%struct.DynBuf* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 3), !dbg !1871
  br label %50, !dbg !1872

; <label>:50:                                     ; preds = %47, %35
  %51 = load i64, i64* %11, align 8, !dbg !1873
  %52 = add i64 %51, 1, !dbg !1874
  store i64 %52, i64* %12, align 8, !dbg !1875
  br label %53, !dbg !1876

; <label>:53:                                     ; preds = %50, %19
  br label %54, !dbg !1877

; <label>:54:                                     ; preds = %53
  %55 = load i64, i64* %11, align 8, !dbg !1878
  %56 = add i64 %55, 1, !dbg !1878
  store i64 %56, i64* %11, align 8, !dbg !1878
  br label %15, !dbg !1880, !llvm.loop !1881

; <label>:57:                                     ; preds = %15
  %58 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1883
  %59 = load i8*, i8** %6, align 8, !dbg !1884
  %60 = load i64, i64* %12, align 8, !dbg !1885
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1886
  %62 = load i64, i64* %11, align 8, !dbg !1887
  %63 = load i64, i64* %12, align 8, !dbg !1888
  %64 = sub i64 %62, %63, !dbg !1889
  %65 = call signext i8 @DynBuf_Append(%struct.DynBuf* %58, i8* %61, i64 %64), !dbg !1890
  store i8 1, i8* %5, align 1, !dbg !1891
  br label %66, !dbg !1891

; <label>:66:                                     ; preds = %57, %32
  %67 = load i8, i8* %5, align 1, !dbg !1892
  ret i8 %67, !dbg !1892
}

declare signext i8 @DynBuf_Append(%struct.DynBuf*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf8ToAscii(i8*, i64, i32, i8**, i64*) #0 !dbg !1893 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.DynBuf, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1894, metadata !739), !dbg !1895
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1896, metadata !739), !dbg !1897
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1898, metadata !739), !dbg !1899
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1900, metadata !739), !dbg !1901
  store i64* %4, i64** %10, align 8
  call void @llvm.dbg.declare(metadata i64** %10, metadata !1902, metadata !739), !dbg !1903
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %11, metadata !1904, metadata !739), !dbg !1905
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1906, metadata !739), !dbg !1907
  call void @DynBuf_Init(%struct.DynBuf* %11), !dbg !1908
  %13 = load i8*, i8** %6, align 8, !dbg !1909
  %14 = load i64, i64* %7, align 8, !dbg !1910
  %15 = load i32, i32* %8, align 4, !dbg !1911
  %16 = call signext i8 @CodeSetOld_Utf8ToAsciiDb(i8* %13, i64 %14, i32 %15, %struct.DynBuf* %11), !dbg !1912
  store i8 %16, i8* %12, align 1, !dbg !1913
  %17 = load i8, i8* %12, align 1, !dbg !1914
  %18 = load i8**, i8*** %9, align 8, !dbg !1915
  %19 = load i64*, i64** %10, align 8, !dbg !1916
  %20 = call signext i8 @CodeSetOldDynBufFinalize(i8 signext %17, %struct.DynBuf* %11, i8** %18, i64* %19), !dbg !1917
  ret i8 %20, !dbg !1918
}

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Utf8ToAsciiDb(i8*, i64, i32, %struct.DynBuf*) #0 !dbg !1919 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.DynBuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1920, metadata !739), !dbg !1921
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1922, metadata !739), !dbg !1923
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1924, metadata !739), !dbg !1925
  store %struct.DynBuf* %3, %struct.DynBuf** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.DynBuf** %9, metadata !1926, metadata !739), !dbg !1927
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1928, metadata !739), !dbg !1929
  %15 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1930
  %16 = call i64 @DynBuf_GetSize(%struct.DynBuf* %15), !dbg !1931
  store i64 %16, i64* %10, align 8, !dbg !1929
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1932, metadata !739), !dbg !1933
  %17 = load i8*, i8** %6, align 8, !dbg !1934
  store i8* %17, i8** %11, align 8, !dbg !1933
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1935, metadata !739), !dbg !1936
  %18 = load i8*, i8** %6, align 8, !dbg !1937
  %19 = load i64, i64* %7, align 8, !dbg !1938
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !1939
  store i8* %20, i8** %12, align 8, !dbg !1936
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1940, metadata !739), !dbg !1941
  %21 = load i8*, i8** %11, align 8, !dbg !1942
  store i8* %21, i8** %13, align 8, !dbg !1941
  br label %22, !dbg !1943

; <label>:22:                                     ; preds = %70, %4
  %23 = load i8*, i8** %11, align 8, !dbg !1944
  %24 = load i8*, i8** %12, align 8, !dbg !1948
  %25 = icmp ult i8* %23, %24, !dbg !1949
  br i1 %25, label %26, label %73, !dbg !1950

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %11, align 8, !dbg !1951
  %28 = load i8, i8* %27, align 1, !dbg !1954
  %29 = zext i8 %28 to i32, !dbg !1954
  %30 = icmp sge i32 %29, 128, !dbg !1955
  %31 = zext i1 %30 to i32, !dbg !1955
  %32 = sext i32 %31 to i64, !dbg !1956
  %33 = icmp ne i64 %32, 0, !dbg !1957
  br i1 %33, label %34, label %69, !dbg !1958

; <label>:34:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1959, metadata !739), !dbg !1961
  %35 = load i32, i32* %8, align 4, !dbg !1962
  %36 = icmp eq i32 %35, 0, !dbg !1964
  br i1 %36, label %37, label %40, !dbg !1965

; <label>:37:                                     ; preds = %34
  %38 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1966
  %39 = load i64, i64* %10, align 8, !dbg !1968
  call void @DynBuf_SetSize(%struct.DynBuf* %38, i64 %39), !dbg !1969
  store i8 0, i8* %5, align 1, !dbg !1970
  br label %82, !dbg !1970

; <label>:40:                                     ; preds = %34
  %41 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1971
  %42 = load i8*, i8** %13, align 8, !dbg !1972
  %43 = load i8*, i8** %11, align 8, !dbg !1973
  %44 = load i8*, i8** %13, align 8, !dbg !1974
  %45 = ptrtoint i8* %43 to i64, !dbg !1975
  %46 = ptrtoint i8* %44 to i64, !dbg !1975
  %47 = sub i64 %45, %46, !dbg !1975
  %48 = call signext i8 @DynBuf_Append(%struct.DynBuf* %41, i8* %42, i64 %47), !dbg !1976
  %49 = load i32, i32* %8, align 4, !dbg !1977
  %50 = and i32 %49, 1, !dbg !1979
  %51 = icmp ne i32 %50, 0, !dbg !1980
  br i1 %51, label %52, label %55, !dbg !1981

; <label>:52:                                     ; preds = %40
  %53 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !1982
  %54 = call signext i8 @DynBuf_Append(%struct.DynBuf* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 1), !dbg !1984
  br label %55, !dbg !1985

; <label>:55:                                     ; preds = %52, %40
  %56 = load i8*, i8** %11, align 8, !dbg !1986
  %57 = load i8*, i8** %12, align 8, !dbg !1988
  %58 = call i32 @CodeSet_GetUtf8(i8* %56, i8* %57, i32* null), !dbg !1989
  store i32 %58, i32* %14, align 4, !dbg !1990
  %59 = icmp sgt i32 %58, 0, !dbg !1991
  br i1 %59, label %60, label %66, !dbg !1992

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %14, align 4, !dbg !1993
  %62 = sub nsw i32 %61, 1, !dbg !1995
  %63 = load i8*, i8** %11, align 8, !dbg !1996
  %64 = sext i32 %62 to i64, !dbg !1996
  %65 = getelementptr inbounds i8, i8* %63, i64 %64, !dbg !1996
  store i8* %65, i8** %11, align 8, !dbg !1996
  br label %66, !dbg !1997

; <label>:66:                                     ; preds = %60, %55
  %67 = load i8*, i8** %11, align 8, !dbg !1998
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1999
  store i8* %68, i8** %13, align 8, !dbg !2000
  br label %69, !dbg !2001

; <label>:69:                                     ; preds = %66, %26
  br label %70, !dbg !2002

; <label>:70:                                     ; preds = %69
  %71 = load i8*, i8** %11, align 8, !dbg !2003
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !2003
  store i8* %72, i8** %11, align 8, !dbg !2003
  br label %22, !dbg !2005, !llvm.loop !2006

; <label>:73:                                     ; preds = %22
  %74 = load %struct.DynBuf*, %struct.DynBuf** %9, align 8, !dbg !2007
  %75 = load i8*, i8** %13, align 8, !dbg !2008
  %76 = load i8*, i8** %11, align 8, !dbg !2009
  %77 = load i8*, i8** %13, align 8, !dbg !2010
  %78 = ptrtoint i8* %76 to i64, !dbg !2011
  %79 = ptrtoint i8* %77 to i64, !dbg !2011
  %80 = sub i64 %78, %79, !dbg !2011
  %81 = call signext i8 @DynBuf_Append(%struct.DynBuf* %74, i8* %75, i64 %80), !dbg !2012
  store i8 1, i8* %5, align 1, !dbg !2013
  br label %82, !dbg !2013

; <label>:82:                                     ; preds = %73, %37
  %83 = load i8, i8* %5, align 1, !dbg !2014
  ret i8 %83, !dbg !2014
}

declare i32 @CodeSet_GetUtf8(i8*, i8*, i32*) #3

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_IsEncodingSupported(i8*) #0 !dbg !2015 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2018, metadata !739), !dbg !2019
  %3 = load i8*, i8** %2, align 8, !dbg !2020
  %4 = call i32 @Unicode_EncodingNameToEnum(i8* %3), !dbg !2021
  %5 = icmp ne i32 -2, %4, !dbg !2022
  %6 = zext i1 %5 to i32, !dbg !2022
  %7 = trunc i32 %6 to i8, !dbg !2023
  ret i8 %7, !dbg !2024
}

declare i32 @Unicode_EncodingNameToEnum(i8*) #3

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Validate(i8*, i64, i8*) #0 !dbg !2025 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.DynBuf, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2028, metadata !739), !dbg !2029
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2030, metadata !739), !dbg !2031
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2032, metadata !739), !dbg !2033
  call void @llvm.dbg.declare(metadata %struct.DynBuf* %8, metadata !2034, metadata !739), !dbg !2035
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2036, metadata !739), !dbg !2037
  %10 = load i64, i64* %6, align 8, !dbg !2038
  %11 = icmp eq i64 %10, 0, !dbg !2040
  br i1 %11, label %12, label %13, !dbg !2041

; <label>:12:                                     ; preds = %3
  store i8 1, i8* %4, align 1, !dbg !2042
  br label %19, !dbg !2042

; <label>:13:                                     ; preds = %3
  call void @DynBuf_Init(%struct.DynBuf* %8), !dbg !2044
  %14 = load i8*, i8** %7, align 8, !dbg !2045
  %15 = load i8*, i8** %5, align 8, !dbg !2046
  %16 = load i64, i64* %6, align 8, !dbg !2047
  %17 = call signext i8 @CodeSetOld_GenericToGenericDb(i8* %14, i8* %15, i64 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 0, %struct.DynBuf* %8), !dbg !2048
  store i8 %17, i8* %9, align 1, !dbg !2049
  call void @DynBuf_Destroy(%struct.DynBuf* %8), !dbg !2050
  %18 = load i8, i8* %9, align 1, !dbg !2051
  store i8 %18, i8* %4, align 1, !dbg !2052
  br label %19, !dbg !2052

; <label>:19:                                     ; preds = %13, %12
  %20 = load i8, i8* %4, align 1, !dbg !2053
  ret i8 %20, !dbg !2053
}

declare void @DynBuf_Destroy(%struct.DynBuf*) #3

; Function Attrs: nounwind uwtable
define signext i8 @CodeSetOld_Init(i8*) #0 !dbg !2054 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2055, metadata !739), !dbg !2056
  ret i8 1, !dbg !2057
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) #2

declare i8* @nl_langinfo_l(i32, %struct.__locale_struct*) #3

; Function Attrs: nounwind
declare void @freelocale(%struct.__locale_struct*) #2

declare i8* @Str_Asprintf(i64*, i8*, ...) #3

declare i8* @iconv_open(i8*, i8*) #3

declare signext i8 @DynBuf_Trim(%struct.DynBuf*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!731, !732}
!llvm.ident = !{!733}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !674, globals: !701)
!1 = !DIFile(filename: "codesetOld.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!2 = !{!3, !336}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!6 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!7 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!8 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!9 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!10 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!11 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!12 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!13 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!14 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!15 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!16 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!17 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!18 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!19 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!20 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!21 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!22 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!23 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!24 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!25 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!26 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!27 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!28 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!29 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!30 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!31 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!32 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!33 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!34 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!35 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!36 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!37 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!38 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!39 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!40 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!41 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!42 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!43 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!44 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!45 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!46 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!47 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!48 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!49 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!50 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!51 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!52 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!53 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!54 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!55 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!56 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!57 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!58 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!59 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!60 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!61 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!62 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!63 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!64 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!65 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!66 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!67 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!68 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!69 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!70 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!71 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!72 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!73 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!74 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!75 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!76 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!77 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!78 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!79 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!80 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!81 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!82 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!83 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!84 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!85 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!86 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!87 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!88 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!89 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!90 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!91 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!92 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!93 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!94 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!95 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!96 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!97 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!98 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!99 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!100 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!101 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!102 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!103 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!104 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!105 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!106 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!107 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!108 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!109 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!110 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!111 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!112 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!113 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!114 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!115 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!116 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!117 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!118 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!119 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!120 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!121 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!122 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!123 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!124 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!125 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!126 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!127 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!128 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!129 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!130 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!131 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!132 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!133 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!134 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!135 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!136 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!137 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!138 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!139 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!140 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!141 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!142 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!143 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!144 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!145 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!146 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!147 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!148 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!149 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!150 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!151 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!152 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!153 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!154 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!155 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!156 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!157 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!158 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!159 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!160 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!161 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!162 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!163 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!164 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!165 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!166 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!167 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!168 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!169 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!170 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!171 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!172 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!173 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!174 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!175 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!176 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!177 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!178 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!179 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!180 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!181 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!182 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!183 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!184 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!185 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!186 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!187 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!188 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!189 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!190 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!191 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!192 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!193 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!194 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!195 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!196 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!197 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!198 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!199 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!200 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!201 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!202 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!203 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!204 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!205 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!206 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!207 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!208 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!209 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!210 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!211 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!212 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!213 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!214 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!215 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!216 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!217 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!218 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!219 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!220 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!221 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!222 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!223 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!224 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!225 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!226 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!227 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!228 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!229 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!230 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!231 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!232 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!233 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!234 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!235 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!236 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!237 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!238 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!239 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!240 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!241 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!242 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!243 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!244 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!245 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!246 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!247 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!248 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!249 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!250 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!251 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!252 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!253 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!254 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!255 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!256 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!257 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!258 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!259 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!260 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!261 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!262 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!263 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!264 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!265 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!266 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!267 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!268 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!269 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!270 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!271 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!272 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!273 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!274 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!275 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!276 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!277 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!278 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!279 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!280 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!281 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!282 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!283 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!284 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!285 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!286 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!287 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!288 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!289 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!290 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!291 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!292 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!293 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!294 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!295 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!296 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!297 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!298 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!299 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!300 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!301 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!302 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!303 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!304 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!305 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!306 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!307 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!308 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!309 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!310 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!311 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!312 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!313 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!314 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!315 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!316 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!317 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!318 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!319 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!320 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!321 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!322 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!323 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!324 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!325 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!326 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!327 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!328 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!329 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!330 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!331 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!332 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!333 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!334 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!335 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 41, size: 32, align: 32, elements: !338)
!337 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!339 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!340 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!341 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!342 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!343 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!344 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!345 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!346 = !DIEnumerator(name: "DAY_1", value: 131079)
!347 = !DIEnumerator(name: "DAY_2", value: 131080)
!348 = !DIEnumerator(name: "DAY_3", value: 131081)
!349 = !DIEnumerator(name: "DAY_4", value: 131082)
!350 = !DIEnumerator(name: "DAY_5", value: 131083)
!351 = !DIEnumerator(name: "DAY_6", value: 131084)
!352 = !DIEnumerator(name: "DAY_7", value: 131085)
!353 = !DIEnumerator(name: "ABMON_1", value: 131086)
!354 = !DIEnumerator(name: "ABMON_2", value: 131087)
!355 = !DIEnumerator(name: "ABMON_3", value: 131088)
!356 = !DIEnumerator(name: "ABMON_4", value: 131089)
!357 = !DIEnumerator(name: "ABMON_5", value: 131090)
!358 = !DIEnumerator(name: "ABMON_6", value: 131091)
!359 = !DIEnumerator(name: "ABMON_7", value: 131092)
!360 = !DIEnumerator(name: "ABMON_8", value: 131093)
!361 = !DIEnumerator(name: "ABMON_9", value: 131094)
!362 = !DIEnumerator(name: "ABMON_10", value: 131095)
!363 = !DIEnumerator(name: "ABMON_11", value: 131096)
!364 = !DIEnumerator(name: "ABMON_12", value: 131097)
!365 = !DIEnumerator(name: "MON_1", value: 131098)
!366 = !DIEnumerator(name: "MON_2", value: 131099)
!367 = !DIEnumerator(name: "MON_3", value: 131100)
!368 = !DIEnumerator(name: "MON_4", value: 131101)
!369 = !DIEnumerator(name: "MON_5", value: 131102)
!370 = !DIEnumerator(name: "MON_6", value: 131103)
!371 = !DIEnumerator(name: "MON_7", value: 131104)
!372 = !DIEnumerator(name: "MON_8", value: 131105)
!373 = !DIEnumerator(name: "MON_9", value: 131106)
!374 = !DIEnumerator(name: "MON_10", value: 131107)
!375 = !DIEnumerator(name: "MON_11", value: 131108)
!376 = !DIEnumerator(name: "MON_12", value: 131109)
!377 = !DIEnumerator(name: "AM_STR", value: 131110)
!378 = !DIEnumerator(name: "PM_STR", value: 131111)
!379 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!380 = !DIEnumerator(name: "D_FMT", value: 131113)
!381 = !DIEnumerator(name: "T_FMT", value: 131114)
!382 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!383 = !DIEnumerator(name: "ERA", value: 131116)
!384 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!385 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!386 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!387 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!388 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!389 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!390 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!391 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!392 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!393 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!394 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!395 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!396 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!397 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!398 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!399 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!400 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!401 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!402 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!403 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!404 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!405 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!406 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!407 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!408 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!409 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!410 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!411 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!412 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!413 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!414 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!415 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!416 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!417 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!418 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!419 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!420 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!421 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!422 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!423 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!424 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!425 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!426 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!427 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!428 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!429 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!430 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!431 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!432 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!433 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!434 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!435 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!436 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!437 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!438 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!439 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!440 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!441 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!442 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!443 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!444 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!445 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!446 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!447 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!448 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!449 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!450 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!451 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!452 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!453 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!454 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!455 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!456 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!457 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!458 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!459 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!460 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!461 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!462 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!463 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!464 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!465 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!466 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!467 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!468 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!469 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!470 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!471 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!472 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!473 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!474 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!475 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!476 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!477 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!478 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!479 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!480 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!481 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!482 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!483 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!484 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!485 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!486 = !DIEnumerator(name: "CODESET", value: 14)
!487 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!488 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!489 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!490 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!492 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!493 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!494 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!495 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!496 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!497 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!498 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!499 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!513 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!514 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!515 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!516 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!517 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!518 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!519 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!520 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!521 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!533 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!534 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!535 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!536 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!537 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!538 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!539 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!540 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!541 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!542 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!543 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!544 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!545 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!546 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!547 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!548 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!549 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!550 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!551 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!552 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!558 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!559 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!560 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!561 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!562 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!563 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!564 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!565 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!566 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!567 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!568 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!569 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!570 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!571 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!572 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!573 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!574 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!575 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!576 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!577 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!578 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!579 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!580 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!581 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!582 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!583 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!584 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!585 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!586 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!587 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!588 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!589 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!597 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!598 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!601 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!602 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!603 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!604 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!605 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!606 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!607 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!608 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!609 = !DIEnumerator(name: "THOUSEP", value: 65537)
!610 = !DIEnumerator(name: "__GROUPING", value: 65538)
!611 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!612 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!613 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!614 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!615 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!616 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!617 = !DIEnumerator(name: "__YESSTR", value: 327682)
!618 = !DIEnumerator(name: "__NOSTR", value: 327683)
!619 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!620 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!621 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!622 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!623 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!624 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!625 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!626 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!627 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!628 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!629 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!630 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!631 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!632 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!633 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!634 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!635 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!636 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!637 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!638 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!639 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!640 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!641 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!642 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!643 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!644 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!645 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!646 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!647 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!648 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!649 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!650 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!651 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!652 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!653 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!654 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!655 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!656 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!657 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!658 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!659 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!660 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!661 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!662 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!663 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!664 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!672 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!673 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!674 = !{!675, !678, !684, !687, !693, !696, !677, !699, !685, !700}
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !676, line: 29, baseType: !677)
!676 = !DIFile(filename: "/usr/include/iconv.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8", file: !680, line: 178, baseType: !681)
!680 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !682, line: 194, baseType: !683)
!682 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!683 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !680, line: 175, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !691, line: 49, baseType: !692)
!691 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!692 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !680, line: 173, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !691, line: 51, baseType: !695)
!695 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64, align: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !680, line: 177, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !691, line: 48, baseType: !699)
!699 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64, align: 64)
!701 = !{!702, !710, !727}
!702 = distinct !DIGlobalVariable(name: "cachedCodeset", scope: !703, file: !704, line: 734, type: !685, isLocal: true, isDefinition: true, variable: i8** @CodeSetOld_GetCurrentCodeSet.cachedCodeset)
!703 = distinct !DISubprogram(name: "CodeSetOld_GetCurrentCodeSet", scope: !704, file: !704, line: 722, type: !705, isLocal: false, isDefinition: true, scopeLine: 723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!704 = !DIFile(filename: "codesetOld.c", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!705 = !DISubroutineType(types: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!709 = !{}
!710 = distinct !DIGlobalVariable(name: "SURROGATE_OFFSET", scope: !711, file: !704, line: 1398, type: !726, isLocal: true, isDefinition: true, variable: i32* @CodeSetOld_Utf16leToUtf8Db.SURROGATE_OFFSET)
!711 = distinct !DISubprogram(name: "CodeSetOld_Utf16leToUtf8Db", scope: !704, file: !704, line: 1372, type: !712, isLocal: false, isDefinition: true, scopeLine: 1375, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!712 = !DISubroutineType(types: !713)
!713 = !{!714, !707, !715, !718}
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !680, line: 230, baseType: !686)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !716, line: 216, baseType: !717)
!716 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!717 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "DynBuf", file: !720, line: 40, baseType: !721)
!720 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dynbuf.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DynBuf", file: !720, line: 36, size: 192, align: 64, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !721, file: !720, line: 37, baseType: !685, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !721, file: !720, line: 38, baseType: !715, size: 64, align: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !721, file: !720, line: 39, baseType: !715, size: 64, align: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!727 = distinct !DIGlobalVariable(name: "nul", scope: !0, file: !704, line: 76, type: !728, isLocal: true, isDefinition: true, variable: i32* @nul)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !716, line: 328, baseType: !730)
!730 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!731 = !{i32 2, !"Dwarf Version", i32 4}
!732 = !{i32 2, !"Debug Info Version", i32 3}
!733 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!734 = !DILocation(line: 759, column: 9, scope: !735)
!735 = distinct !DILexicalBlock(scope: !703, file: !704, line: 759, column: 8)
!736 = !DILocation(line: 759, column: 8, scope: !703)
!737 = !DILocalVariable(name: "gFilenameEncoding", scope: !738, file: !704, line: 760, type: !685)
!738 = distinct !DILexicalBlock(scope: !735, file: !704, line: 759, column: 24)
!739 = !DIExpression()
!740 = !DILocation(line: 760, column: 13, scope: !738)
!741 = !DILocation(line: 760, column: 33, scope: !738)
!742 = !DILocalVariable(name: "p", scope: !738, file: !704, line: 761, type: !685)
!743 = !DILocation(line: 761, column: 13, scope: !738)
!744 = !DILocation(line: 763, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !738, file: !704, line: 763, column: 11)
!746 = !DILocation(line: 763, column: 29, scope: !745)
!747 = !DILocation(line: 763, column: 33, scope: !748)
!748 = !DILexicalBlockFile(scope: !745, file: !704, discriminator: 1)
!749 = !DILocation(line: 763, column: 32, scope: !748)
!750 = !DILocation(line: 763, column: 11, scope: !748)
!751 = !DILocation(line: 764, column: 47, scope: !752)
!752 = distinct !DILexicalBlock(scope: !745, file: !704, line: 763, column: 52)
!753 = !DILocation(line: 764, column: 30, scope: !752)
!754 = !DILocation(line: 764, column: 28, scope: !752)
!755 = !DILocation(line: 765, column: 21, scope: !752)
!756 = !DILocation(line: 765, column: 14, scope: !752)
!757 = !DILocation(line: 765, column: 12, scope: !752)
!758 = !DILocation(line: 766, column: 14, scope: !759)
!759 = distinct !DILexicalBlock(scope: !752, file: !704, line: 766, column: 14)
!760 = !DILocation(line: 766, column: 14, scope: !752)
!761 = !DILocation(line: 767, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !759, file: !704, line: 766, column: 17)
!763 = !DILocation(line: 767, column: 16, scope: !762)
!764 = !DILocation(line: 768, column: 10, scope: !762)
!765 = !DILocation(line: 769, column: 22, scope: !766)
!766 = distinct !DILexicalBlock(scope: !752, file: !704, line: 769, column: 14)
!767 = !DILocation(line: 769, column: 15, scope: !766)
!768 = !DILocation(line: 769, column: 14, scope: !752)
!769 = !DILocation(line: 770, column: 18, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !704, line: 769, column: 53)
!771 = !DILocation(line: 770, column: 13, scope: !770)
!772 = !DILocation(line: 771, column: 29, scope: !770)
!773 = !DILocation(line: 771, column: 27, scope: !770)
!774 = !DILocation(line: 773, column: 20, scope: !770)
!775 = !DILocation(line: 773, column: 13, scope: !770)
!776 = !DILocation(line: 775, column: 26, scope: !752)
!777 = !DILocation(line: 775, column: 24, scope: !752)
!778 = !DILocation(line: 777, column: 17, scope: !752)
!779 = !DILocation(line: 777, column: 10, scope: !752)
!780 = !DILocation(line: 780, column: 11, scope: !781)
!781 = distinct !DILexicalBlock(scope: !738, file: !704, line: 780, column: 11)
!782 = !DILocation(line: 780, column: 11, scope: !738)
!783 = !DILocation(line: 781, column: 26, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !704, line: 780, column: 41)
!785 = !DILocation(line: 781, column: 24, scope: !784)
!786 = !DILocation(line: 783, column: 17, scope: !784)
!787 = !DILocation(line: 783, column: 10, scope: !784)
!788 = !DILocation(line: 786, column: 21, scope: !738)
!789 = !DILocation(line: 787, column: 4, scope: !738)
!790 = !DILocation(line: 789, column: 11, scope: !703)
!791 = !DILocation(line: 789, column: 4, scope: !703)
!792 = !DILocation(line: 793, column: 1, scope: !703)
!793 = distinct !DISubprogram(name: "CodeSetOldGetCodeSetFromLocale", scope: !704, file: !704, line: 653, type: !794, isLocal: true, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!794 = !DISubroutineType(types: !795)
!795 = !{!685}
!796 = !DILocalVariable(name: "codeset", scope: !793, file: !704, line: 655, type: !685)
!797 = !DILocation(line: 655, column: 10, scope: !793)
!798 = !DILocalVariable(name: "new", scope: !793, file: !704, line: 659, type: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !800, line: 42, baseType: !801)
!800 = !DIFile(filename: "/usr/include/xlocale.h", directory: "/home/lichi/Desktop/open-vm-tools/line562")
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !800, line: 39, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !800, line: 27, size: 1856, align: 64, elements: !804)
!804 = !{!805, !811, !814, !817, !818}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !803, file: !800, line: 30, baseType: !806, size: 832, align: 64)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 832, align: 64, elements: !809)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, align: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !800, line: 30, flags: DIFlagFwdDecl)
!809 = !{!810}
!810 = !DISubrange(count: 13)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !803, file: !800, line: 33, baseType: !812, size: 64, align: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !803, file: !800, line: 34, baseType: !815, size: 64, align: 64, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !803, file: !800, line: 35, baseType: !815, size: 64, align: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !803, file: !800, line: 38, baseType: !819, size: 832, align: 64, offset: 1024)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 832, align: 64, elements: !809)
!820 = !DILocation(line: 659, column: 13, scope: !793)
!821 = !DILocation(line: 659, column: 19, scope: !793)
!822 = !DILocation(line: 660, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !793, file: !704, line: 660, column: 8)
!824 = !DILocation(line: 660, column: 8, scope: !793)
!825 = !DILocation(line: 667, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !823, file: !704, line: 660, column: 14)
!827 = !DILocation(line: 667, column: 11, scope: !826)
!828 = !DILocation(line: 669, column: 4, scope: !826)
!829 = !DILocation(line: 670, column: 15, scope: !793)
!830 = !DILocation(line: 670, column: 31, scope: !793)
!831 = !DILocation(line: 670, column: 14, scope: !832)
!832 = !DILexicalBlockFile(scope: !793, file: !704, discriminator: 1)
!833 = !DILocation(line: 670, column: 12, scope: !793)
!834 = !DILocation(line: 671, column: 15, scope: !793)
!835 = !DILocation(line: 671, column: 4, scope: !793)
!836 = !DILocation(line: 692, column: 11, scope: !793)
!837 = !DILocation(line: 692, column: 4, scope: !793)
!838 = distinct !DISubprogram(name: "CodeSetOld_GenericToGenericDb", scope: !704, file: !704, line: 870, type: !839, isLocal: false, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!839 = !DISubroutineType(types: !840)
!840 = !{!714, !707, !707, !715, !707, !695, !718}
!841 = !DILocalVariable(name: "codeIn", arg: 1, scope: !842, file: !704, line: 818, type: !707)
!842 = distinct !DISubprogram(name: "CodeSetOldIconvOpen", scope: !704, file: !704, line: 818, type: !843, isLocal: true, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!843 = !DISubroutineType(types: !844)
!844 = !{!675, !707, !707, !695}
!845 = !DILocation(line: 818, column: 33, scope: !842, inlinedAt: !846)
!846 = distinct !DILocation(line: 889, column: 9, scope: !838)
!847 = !DILocalVariable(name: "codeOut", arg: 2, scope: !842, file: !704, line: 819, type: !707)
!848 = !DILocation(line: 819, column: 33, scope: !842, inlinedAt: !846)
!849 = !DILocalVariable(name: "flags", arg: 3, scope: !842, file: !704, line: 820, type: !695)
!850 = !DILocation(line: 820, column: 34, scope: !842, inlinedAt: !846)
!851 = !DILocalVariable(name: "codeOutExt", scope: !852, file: !704, line: 824, type: !685)
!852 = distinct !DILexicalBlock(scope: !853, file: !704, line: 823, column: 15)
!853 = distinct !DILexicalBlock(scope: !842, file: !704, line: 823, column: 8)
!854 = !DILocation(line: 824, column: 13, scope: !852, inlinedAt: !846)
!855 = !DILocalVariable(name: "cd", scope: !856, file: !704, line: 838, type: !675)
!856 = distinct !DILexicalBlock(scope: !857, file: !704, line: 837, column: 23)
!857 = distinct !DILexicalBlock(scope: !852, file: !704, line: 837, column: 11)
!858 = !DILocation(line: 838, column: 18, scope: !856, inlinedAt: !846)
!859 = !DILocalVariable(name: "codeIn", arg: 1, scope: !838, file: !704, line: 870, type: !707)
!860 = !DILocation(line: 870, column: 43, scope: !838)
!861 = !DILocalVariable(name: "bufIn", arg: 2, scope: !838, file: !704, line: 871, type: !707)
!862 = !DILocation(line: 871, column: 43, scope: !838)
!863 = !DILocalVariable(name: "sizeIn", arg: 3, scope: !838, file: !704, line: 872, type: !715)
!864 = !DILocation(line: 872, column: 38, scope: !838)
!865 = !DILocalVariable(name: "codeOut", arg: 4, scope: !838, file: !704, line: 873, type: !707)
!866 = !DILocation(line: 873, column: 43, scope: !838)
!867 = !DILocalVariable(name: "flags", arg: 5, scope: !838, file: !704, line: 874, type: !695)
!868 = !DILocation(line: 874, column: 44, scope: !838)
!869 = !DILocalVariable(name: "db", arg: 6, scope: !838, file: !704, line: 875, type: !718)
!870 = !DILocation(line: 875, column: 39, scope: !838)
!871 = !DILocalVariable(name: "cd", scope: !838, file: !704, line: 877, type: !675)
!872 = !DILocation(line: 877, column: 12, scope: !838)
!873 = !DILocation(line: 885, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !838, file: !704, line: 885, column: 8)
!875 = !DILocation(line: 885, column: 14, scope: !874)
!876 = !DILocation(line: 885, column: 8, scope: !838)
!877 = !DILocation(line: 886, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !704, line: 885, column: 20)
!879 = !DILocation(line: 887, column: 4, scope: !878)
!880 = !DILocation(line: 889, column: 29, scope: !838)
!881 = !DILocation(line: 889, column: 37, scope: !838)
!882 = !DILocation(line: 889, column: 46, scope: !838)
!883 = !DILocation(line: 889, column: 9, scope: !838)
!884 = !DILocation(line: 823, column: 8, scope: !853, inlinedAt: !846)
!885 = !DILocation(line: 823, column: 8, scope: !842, inlinedAt: !846)
!886 = !DILocation(line: 836, column: 54, scope: !852, inlinedAt: !846)
!887 = !DILocation(line: 836, column: 20, scope: !852, inlinedAt: !846)
!888 = !DILocation(line: 836, column: 18, scope: !852, inlinedAt: !846)
!889 = !DILocation(line: 837, column: 11, scope: !857, inlinedAt: !846)
!890 = !DILocation(line: 837, column: 11, scope: !852, inlinedAt: !846)
!891 = !DILocation(line: 838, column: 34, scope: !856, inlinedAt: !846)
!892 = !DILocation(line: 838, column: 46, scope: !856, inlinedAt: !846)
!893 = !DILocation(line: 838, column: 23, scope: !856, inlinedAt: !846)
!894 = !DILocation(line: 839, column: 15, scope: !856, inlinedAt: !846)
!895 = !DILocation(line: 839, column: 10, scope: !856, inlinedAt: !846)
!896 = !DILocation(line: 840, column: 14, scope: !897, inlinedAt: !846)
!897 = distinct !DILexicalBlock(scope: !856, file: !704, line: 840, column: 14)
!898 = !DILocation(line: 840, column: 17, scope: !897, inlinedAt: !846)
!899 = !DILocation(line: 840, column: 14, scope: !856, inlinedAt: !846)
!900 = !DILocation(line: 841, column: 20, scope: !901, inlinedAt: !846)
!901 = distinct !DILexicalBlock(scope: !897, file: !704, line: 840, column: 33)
!902 = !DILocation(line: 841, column: 13, scope: !901, inlinedAt: !846)
!903 = !DILocation(line: 843, column: 7, scope: !856, inlinedAt: !846)
!904 = !DILocation(line: 844, column: 4, scope: !852, inlinedAt: !846)
!905 = !DILocation(line: 847, column: 22, scope: !842, inlinedAt: !846)
!906 = !DILocation(line: 847, column: 31, scope: !842, inlinedAt: !846)
!907 = !DILocation(line: 847, column: 11, scope: !842, inlinedAt: !846)
!908 = !DILocation(line: 847, column: 4, scope: !842, inlinedAt: !846)
!909 = !DILocation(line: 848, column: 1, scope: !842, inlinedAt: !846)
!910 = !DILocation(line: 889, column: 7, scope: !838)
!911 = !DILocation(line: 890, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !838, file: !704, line: 890, column: 8)
!913 = !DILocation(line: 890, column: 11, scope: !912)
!914 = !DILocation(line: 890, column: 8, scope: !838)
!915 = !DILocation(line: 891, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !704, line: 890, column: 27)
!917 = !DILocation(line: 894, column: 4, scope: !838)
!918 = !DILocalVariable(name: "size", scope: !919, file: !704, line: 895, type: !715)
!919 = distinct !DILexicalBlock(scope: !920, file: !704, line: 894, column: 13)
!920 = distinct !DILexicalBlock(scope: !921, file: !704, line: 894, column: 4)
!921 = distinct !DILexicalBlock(scope: !838, file: !704, line: 894, column: 4)
!922 = !DILocation(line: 895, column: 14, scope: !919)
!923 = !DILocalVariable(name: "newSize", scope: !919, file: !704, line: 896, type: !715)
!924 = !DILocation(line: 896, column: 14, scope: !919)
!925 = !DILocalVariable(name: "out", scope: !919, file: !704, line: 897, type: !685)
!926 = !DILocation(line: 897, column: 13, scope: !919)
!927 = !DILocalVariable(name: "outOrig", scope: !919, file: !704, line: 898, type: !685)
!928 = !DILocation(line: 898, column: 13, scope: !919)
!929 = !DILocalVariable(name: "outLeft", scope: !919, file: !704, line: 899, type: !715)
!930 = !DILocation(line: 899, column: 14, scope: !919)
!931 = !DILocalVariable(name: "status", scope: !919, file: !704, line: 900, type: !715)
!932 = !DILocation(line: 900, column: 14, scope: !919)
!933 = !DILocation(line: 916, column: 29, scope: !919)
!934 = !DILocation(line: 916, column: 14, scope: !919)
!935 = !DILocation(line: 916, column: 12, scope: !919)
!936 = !DILocation(line: 917, column: 17, scope: !919)
!937 = !DILocation(line: 917, column: 22, scope: !919)
!938 = !DILocation(line: 917, column: 15, scope: !919)
!939 = !DILocation(line: 919, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !919, file: !704, line: 919, column: 11)
!941 = !DILocation(line: 919, column: 21, scope: !940)
!942 = !DILocation(line: 919, column: 19, scope: !940)
!943 = !DILocation(line: 919, column: 11, scope: !919)
!944 = !DILocation(line: 920, column: 1, scope: !945)
!945 = distinct !DILexicalBlock(scope: !940, file: !704, line: 919, column: 27)
!946 = !DILocation(line: 921, column: 10, scope: !945)
!947 = !DILocation(line: 924, column: 26, scope: !948)
!948 = distinct !DILexicalBlock(scope: !919, file: !704, line: 924, column: 11)
!949 = !DILocation(line: 924, column: 30, scope: !948)
!950 = !DILocation(line: 924, column: 11, scope: !948)
!951 = !DILocation(line: 924, column: 39, scope: !948)
!952 = !DILocation(line: 924, column: 11, scope: !919)
!953 = !DILocation(line: 925, column: 1, scope: !954)
!954 = distinct !DILexicalBlock(scope: !948, file: !704, line: 924, column: 45)
!955 = !DILocation(line: 926, column: 10, scope: !954)
!956 = !DILocation(line: 929, column: 32, scope: !919)
!957 = !DILocation(line: 929, column: 21, scope: !919)
!958 = !DILocation(line: 929, column: 38, scope: !919)
!959 = !DILocation(line: 929, column: 36, scope: !919)
!960 = !DILocation(line: 929, column: 11, scope: !919)
!961 = !DILocation(line: 930, column: 17, scope: !919)
!962 = !DILocation(line: 930, column: 15, scope: !919)
!963 = !DILocation(line: 931, column: 41, scope: !919)
!964 = !DILocation(line: 931, column: 17, scope: !919)
!965 = !DILocation(line: 931, column: 47, scope: !919)
!966 = !DILocation(line: 931, column: 45, scope: !919)
!967 = !DILocation(line: 931, column: 15, scope: !919)
!968 = !DILocation(line: 938, column: 22, scope: !919)
!969 = !DILocation(line: 938, column: 16, scope: !919)
!970 = !DILocation(line: 938, column: 14, scope: !919)
!971 = !DILocation(line: 943, column: 22, scope: !919)
!972 = !DILocation(line: 943, column: 26, scope: !919)
!973 = !DILocation(line: 943, column: 33, scope: !919)
!974 = !DILocation(line: 943, column: 31, scope: !919)
!975 = !DILocation(line: 943, column: 39, scope: !919)
!976 = !DILocation(line: 943, column: 37, scope: !919)
!977 = !DILocation(line: 943, column: 7, scope: !919)
!978 = !DILocation(line: 957, column: 11, scope: !979)
!979 = distinct !DILexicalBlock(scope: !919, file: !704, line: 957, column: 11)
!980 = !DILocation(line: 957, column: 18, scope: !979)
!981 = !DILocation(line: 957, column: 11, scope: !919)
!982 = !DILocation(line: 958, column: 10, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !704, line: 957, column: 24)
!984 = !DILocation(line: 960, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !919, file: !704, line: 960, column: 11)
!986 = !DILocation(line: 960, column: 18, scope: !985)
!987 = !DILocation(line: 960, column: 15, scope: !985)
!988 = !DILocation(line: 960, column: 11, scope: !919)
!989 = !DILocation(line: 961, column: 14, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !704, line: 961, column: 14)
!991 = distinct !DILexicalBlock(scope: !985, file: !704, line: 960, column: 27)
!992 = !DILocation(line: 961, column: 21, scope: !990)
!993 = !DILocation(line: 961, column: 14, scope: !991)
!994 = !DILocation(line: 962, column: 1, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !704, line: 961, column: 28)
!996 = !DILocation(line: 963, column: 13, scope: !995)
!997 = !DILocation(line: 975, column: 15, scope: !998)
!998 = distinct !DILexicalBlock(scope: !991, file: !704, line: 975, column: 14)
!999 = !DILocation(line: 975, column: 21, scope: !998)
!1000 = !DILocation(line: 975, column: 31, scope: !998)
!1001 = !DILocation(line: 975, column: 41, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !998, file: !704, discriminator: 1)
!1003 = !DILocation(line: 975, column: 40, scope: !1002)
!1004 = !DILocation(line: 975, column: 45, scope: !1002)
!1005 = !DILocation(line: 975, column: 14, scope: !1002)
!1006 = !DILocation(line: 976, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !998, file: !704, line: 975, column: 56)
!1008 = !DILocation(line: 978, column: 15, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !991, file: !704, line: 978, column: 13)
!1010 = !DILocation(line: 978, column: 14, scope: !1009)
!1011 = !DILocation(line: 978, column: 19, scope: !1009)
!1012 = !DILocation(line: 978, column: 13, scope: !991)
!1013 = !DILocation(line: 979, column: 1, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !704, line: 978, column: 29)
!1015 = !DILocation(line: 980, column: 13, scope: !1014)
!1016 = !DILocation(line: 982, column: 7, scope: !991)
!1017 = !DILocation(line: 894, column: 4, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !920, file: !704, discriminator: 1)
!1019 = distinct !{!1019, !917}
!1020 = !DILocation(line: 986, column: 20, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !838, file: !704, line: 986, column: 8)
!1022 = !DILocation(line: 986, column: 8, scope: !1021)
!1023 = !DILocation(line: 986, column: 24, scope: !1021)
!1024 = !DILocation(line: 986, column: 8, scope: !838)
!1025 = !DILocation(line: 987, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !704, line: 986, column: 29)
!1027 = !DILocation(line: 990, column: 4, scope: !838)
!1028 = !DILocation(line: 993, column: 16, scope: !838)
!1029 = !DILocation(line: 993, column: 4, scope: !838)
!1030 = !DILocation(line: 995, column: 4, scope: !838)
!1031 = !DILocation(line: 996, column: 1, scope: !838)
!1032 = distinct !DISubprogram(name: "DynBuf_GetSize", scope: !720, file: !720, line: 174, type: !1033, isLocal: true, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!715, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!1037 = !DILocalVariable(name: "b", arg: 1, scope: !1032, file: !720, line: 174, type: !1035)
!1038 = !DILocation(line: 174, column: 30, scope: !1032)
!1039 = !DILocation(line: 178, column: 11, scope: !1032)
!1040 = !DILocation(line: 178, column: 14, scope: !1032)
!1041 = !DILocation(line: 178, column: 4, scope: !1032)
!1042 = distinct !DISubprogram(name: "DynBuf_Get", scope: !720, file: !720, line: 113, type: !1043, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!677, !1035}
!1045 = !DILocalVariable(name: "b", arg: 1, scope: !1042, file: !720, line: 113, type: !1035)
!1046 = !DILocation(line: 113, column: 26, scope: !1042)
!1047 = !DILocation(line: 117, column: 11, scope: !1042)
!1048 = !DILocation(line: 117, column: 14, scope: !1042)
!1049 = !DILocation(line: 117, column: 4, scope: !1042)
!1050 = distinct !DISubprogram(name: "DynBuf_GetAllocatedSize", scope: !720, file: !720, line: 234, type: !1033, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1051 = !DILocalVariable(name: "b", arg: 1, scope: !1050, file: !720, line: 234, type: !1035)
!1052 = !DILocation(line: 234, column: 39, scope: !1050)
!1053 = !DILocation(line: 238, column: 11, scope: !1050)
!1054 = !DILocation(line: 238, column: 14, scope: !1050)
!1055 = !DILocation(line: 238, column: 4, scope: !1050)
!1056 = distinct !DISubprogram(name: "DynBuf_SetSize", scope: !720, file: !720, line: 203, type: !1057, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !718, !715}
!1059 = !DILocalVariable(name: "b", arg: 1, scope: !1056, file: !720, line: 203, type: !718)
!1060 = !DILocation(line: 203, column: 24, scope: !1056)
!1061 = !DILocalVariable(name: "size", arg: 2, scope: !1056, file: !720, line: 204, type: !715)
!1062 = !DILocation(line: 204, column: 23, scope: !1056)
!1063 = !DILocation(line: 209, column: 14, scope: !1056)
!1064 = !DILocation(line: 209, column: 4, scope: !1056)
!1065 = !DILocation(line: 209, column: 7, scope: !1056)
!1066 = !DILocation(line: 209, column: 12, scope: !1056)
!1067 = !DILocation(line: 210, column: 1, scope: !1056)
!1068 = distinct !DISubprogram(name: "CodeSetOld_GenericToGeneric", scope: !704, file: !704, line: 1178, type: !1069, isLocal: false, isDefinition: true, scopeLine: 1185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!714, !707, !707, !715, !707, !695, !684, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!1072 = !DILocalVariable(name: "codeIn", arg: 1, scope: !1068, file: !704, line: 1178, type: !707)
!1073 = !DILocation(line: 1178, column: 41, scope: !1068)
!1074 = !DILocalVariable(name: "bufIn", arg: 2, scope: !1068, file: !704, line: 1179, type: !707)
!1075 = !DILocation(line: 1179, column: 41, scope: !1068)
!1076 = !DILocalVariable(name: "sizeIn", arg: 3, scope: !1068, file: !704, line: 1180, type: !715)
!1077 = !DILocation(line: 1180, column: 36, scope: !1068)
!1078 = !DILocalVariable(name: "codeOut", arg: 4, scope: !1068, file: !704, line: 1181, type: !707)
!1079 = !DILocation(line: 1181, column: 41, scope: !1068)
!1080 = !DILocalVariable(name: "flags", arg: 5, scope: !1068, file: !704, line: 1182, type: !695)
!1081 = !DILocation(line: 1182, column: 42, scope: !1068)
!1082 = !DILocalVariable(name: "bufOut", arg: 6, scope: !1068, file: !704, line: 1183, type: !684)
!1083 = !DILocation(line: 1183, column: 36, scope: !1068)
!1084 = !DILocalVariable(name: "sizeOut", arg: 7, scope: !1068, file: !704, line: 1184, type: !1071)
!1085 = !DILocation(line: 1184, column: 37, scope: !1068)
!1086 = !DILocalVariable(name: "db", scope: !1068, file: !704, line: 1186, type: !719)
!1087 = !DILocation(line: 1186, column: 11, scope: !1068)
!1088 = !DILocalVariable(name: "ok", scope: !1068, file: !704, line: 1187, type: !714)
!1089 = !DILocation(line: 1187, column: 9, scope: !1068)
!1090 = !DILocation(line: 1189, column: 4, scope: !1068)
!1091 = !DILocation(line: 1190, column: 39, scope: !1068)
!1092 = !DILocation(line: 1190, column: 47, scope: !1068)
!1093 = !DILocation(line: 1190, column: 54, scope: !1068)
!1094 = !DILocation(line: 1191, column: 39, scope: !1068)
!1095 = !DILocation(line: 1191, column: 48, scope: !1068)
!1096 = !DILocation(line: 1190, column: 9, scope: !1068)
!1097 = !DILocation(line: 1190, column: 7, scope: !1068)
!1098 = !DILocation(line: 1193, column: 36, scope: !1068)
!1099 = !DILocation(line: 1193, column: 45, scope: !1068)
!1100 = !DILocation(line: 1193, column: 53, scope: !1068)
!1101 = !DILocation(line: 1193, column: 11, scope: !1068)
!1102 = !DILocation(line: 1193, column: 4, scope: !1068)
!1103 = distinct !DISubprogram(name: "CodeSetOldDynBufFinalize", scope: !704, file: !704, line: 176, type: !1104, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!714, !714, !718, !684, !1071}
!1106 = !DILocalVariable(name: "ok", arg: 1, scope: !1103, file: !704, line: 176, type: !714)
!1107 = !DILocation(line: 176, column: 31, scope: !1103)
!1108 = !DILocalVariable(name: "db", arg: 2, scope: !1103, file: !704, line: 177, type: !718)
!1109 = !DILocation(line: 177, column: 34, scope: !1103)
!1110 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1103, file: !704, line: 178, type: !684)
!1111 = !DILocation(line: 178, column: 33, scope: !1103)
!1112 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1103, file: !704, line: 179, type: !1071)
!1113 = !DILocation(line: 179, column: 34, scope: !1103)
!1114 = !DILocation(line: 181, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1103, file: !704, line: 181, column: 8)
!1116 = !DILocation(line: 181, column: 12, scope: !1115)
!1117 = !DILocation(line: 181, column: 30, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1115, file: !704, discriminator: 1)
!1119 = !DILocation(line: 181, column: 16, scope: !1118)
!1120 = !DILocation(line: 181, column: 52, scope: !1118)
!1121 = !DILocation(line: 181, column: 68, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1115, file: !704, discriminator: 2)
!1123 = !DILocation(line: 181, column: 56, scope: !1122)
!1124 = !DILocation(line: 181, column: 8, scope: !1122)
!1125 = !DILocation(line: 182, column: 22, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1115, file: !704, line: 181, column: 73)
!1127 = !DILocation(line: 182, column: 7, scope: !1126)
!1128 = !DILocation(line: 184, column: 7, scope: !1126)
!1129 = !DILocation(line: 187, column: 25, scope: !1103)
!1130 = !DILocation(line: 187, column: 14, scope: !1103)
!1131 = !DILocation(line: 187, column: 5, scope: !1103)
!1132 = !DILocation(line: 187, column: 12, scope: !1103)
!1133 = !DILocation(line: 188, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1103, file: !704, line: 188, column: 8)
!1135 = !DILocation(line: 188, column: 8, scope: !1103)
!1136 = !DILocation(line: 189, column: 33, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !704, line: 188, column: 17)
!1138 = !DILocation(line: 189, column: 18, scope: !1137)
!1139 = !DILocation(line: 189, column: 37, scope: !1137)
!1140 = !DILocation(line: 189, column: 8, scope: !1137)
!1141 = !DILocation(line: 189, column: 16, scope: !1137)
!1142 = !DILocation(line: 190, column: 4, scope: !1137)
!1143 = !DILocation(line: 192, column: 4, scope: !1103)
!1144 = !DILocation(line: 193, column: 1, scope: !1103)
!1145 = distinct !DISubprogram(name: "CodeSetOld_Utf8ToCurrent", scope: !704, file: !704, line: 1261, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1265, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!714, !707, !715, !684, !1071}
!1148 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1145, file: !704, line: 1261, type: !707)
!1149 = !DILocation(line: 1261, column: 38, scope: !1145)
!1150 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1145, file: !704, line: 1262, type: !715)
!1151 = !DILocation(line: 1262, column: 33, scope: !1145)
!1152 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1145, file: !704, line: 1263, type: !684)
!1153 = !DILocation(line: 1263, column: 33, scope: !1145)
!1154 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1145, file: !704, line: 1264, type: !1071)
!1155 = !DILocation(line: 1264, column: 34, scope: !1145)
!1156 = !DILocalVariable(name: "db", scope: !1145, file: !704, line: 1269, type: !719)
!1157 = !DILocation(line: 1269, column: 11, scope: !1145)
!1158 = !DILocalVariable(name: "ok", scope: !1145, file: !704, line: 1270, type: !714)
!1159 = !DILocation(line: 1270, column: 9, scope: !1145)
!1160 = !DILocation(line: 1272, column: 4, scope: !1145)
!1161 = !DILocation(line: 1273, column: 48, scope: !1145)
!1162 = !DILocation(line: 1273, column: 55, scope: !1145)
!1163 = !DILocation(line: 1274, column: 39, scope: !1145)
!1164 = !DILocation(line: 1273, column: 9, scope: !1145)
!1165 = !DILocation(line: 1273, column: 7, scope: !1145)
!1166 = !DILocation(line: 1277, column: 36, scope: !1145)
!1167 = !DILocation(line: 1277, column: 45, scope: !1145)
!1168 = !DILocation(line: 1277, column: 53, scope: !1145)
!1169 = !DILocation(line: 1277, column: 11, scope: !1145)
!1170 = !DILocation(line: 1277, column: 4, scope: !1145)
!1171 = distinct !DISubprogram(name: "CodeSetOld_CurrentToUtf8", scope: !704, file: !704, line: 1318, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1172 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1171, file: !704, line: 1318, type: !707)
!1173 = !DILocation(line: 1318, column: 38, scope: !1171)
!1174 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1171, file: !704, line: 1319, type: !715)
!1175 = !DILocation(line: 1319, column: 30, scope: !1171)
!1176 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1171, file: !704, line: 1320, type: !684)
!1177 = !DILocation(line: 1320, column: 30, scope: !1171)
!1178 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1171, file: !704, line: 1321, type: !1071)
!1179 = !DILocation(line: 1321, column: 31, scope: !1171)
!1180 = !DILocalVariable(name: "db", scope: !1171, file: !704, line: 1326, type: !719)
!1181 = !DILocation(line: 1326, column: 11, scope: !1171)
!1182 = !DILocalVariable(name: "ok", scope: !1171, file: !704, line: 1327, type: !714)
!1183 = !DILocation(line: 1327, column: 9, scope: !1171)
!1184 = !DILocation(line: 1329, column: 4, scope: !1171)
!1185 = !DILocation(line: 1330, column: 39, scope: !1171)
!1186 = !DILocation(line: 1330, column: 71, scope: !1171)
!1187 = !DILocation(line: 1331, column: 39, scope: !1171)
!1188 = !DILocation(line: 1330, column: 9, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1171, file: !704, discriminator: 1)
!1190 = !DILocation(line: 1330, column: 7, scope: !1171)
!1191 = !DILocation(line: 1333, column: 36, scope: !1171)
!1192 = !DILocation(line: 1333, column: 45, scope: !1171)
!1193 = !DILocation(line: 1333, column: 53, scope: !1171)
!1194 = !DILocation(line: 1333, column: 11, scope: !1171)
!1195 = !DILocation(line: 1333, column: 4, scope: !1171)
!1196 = !DILocalVariable(name: "bufIn", arg: 1, scope: !711, file: !704, line: 1372, type: !707)
!1197 = !DILocation(line: 1372, column: 40, scope: !711)
!1198 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !711, file: !704, line: 1373, type: !715)
!1199 = !DILocation(line: 1373, column: 35, scope: !711)
!1200 = !DILocalVariable(name: "db", arg: 3, scope: !711, file: !704, line: 1374, type: !718)
!1201 = !DILocation(line: 1374, column: 36, scope: !711)
!1202 = !DILocalVariable(name: "utf16In", scope: !711, file: !704, line: 1376, type: !687)
!1203 = !DILocation(line: 1376, column: 18, scope: !711)
!1204 = !DILocalVariable(name: "numCodeUnits", scope: !711, file: !704, line: 1377, type: !715)
!1205 = !DILocation(line: 1377, column: 11, scope: !711)
!1206 = !DILocalVariable(name: "codeUnitIndex", scope: !711, file: !704, line: 1378, type: !715)
!1207 = !DILocation(line: 1378, column: 11, scope: !711)
!1208 = !DILocation(line: 1380, column: 8, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !711, file: !704, line: 1380, column: 8)
!1210 = !DILocation(line: 1380, column: 15, scope: !1209)
!1211 = !DILocation(line: 1380, column: 33, scope: !1209)
!1212 = !DILocation(line: 1380, column: 8, scope: !711)
!1213 = !DILocation(line: 1381, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !704, line: 1380, column: 39)
!1215 = !DILocation(line: 1384, column: 30, scope: !711)
!1216 = !DILocation(line: 1384, column: 14, scope: !711)
!1217 = !DILocation(line: 1384, column: 12, scope: !711)
!1218 = !DILocation(line: 1385, column: 19, scope: !711)
!1219 = !DILocation(line: 1385, column: 26, scope: !711)
!1220 = !DILocation(line: 1385, column: 17, scope: !711)
!1221 = !DILocation(line: 1387, column: 23, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !711, file: !704, line: 1387, column: 4)
!1223 = !DILocation(line: 1387, column: 9, scope: !1222)
!1224 = !DILocation(line: 1387, column: 28, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1226, file: !704, discriminator: 1)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !704, line: 1387, column: 4)
!1227 = !DILocation(line: 1387, column: 44, scope: !1225)
!1228 = !DILocation(line: 1387, column: 42, scope: !1225)
!1229 = !DILocation(line: 1387, column: 4, scope: !1225)
!1230 = !DILocalVariable(name: "codePoint", scope: !1231, file: !704, line: 1388, type: !693)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !704, line: 1387, column: 75)
!1232 = !DILocation(line: 1388, column: 14, scope: !1231)
!1233 = !DILocalVariable(name: "dbBytes", scope: !1231, file: !704, line: 1389, type: !696)
!1234 = !DILocation(line: 1389, column: 14, scope: !1231)
!1235 = !DILocalVariable(name: "size", scope: !1231, file: !704, line: 1390, type: !715)
!1236 = !DILocation(line: 1390, column: 14, scope: !1231)
!1237 = !DILocalVariable(name: "newSize", scope: !1231, file: !704, line: 1391, type: !715)
!1238 = !DILocation(line: 1391, column: 14, scope: !1231)
!1239 = !DILocation(line: 1393, column: 19, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1231, file: !704, line: 1393, column: 11)
!1241 = !DILocation(line: 1393, column: 11, scope: !1240)
!1242 = !DILocation(line: 1393, column: 34, scope: !1240)
!1243 = !DILocation(line: 1393, column: 43, scope: !1240)
!1244 = !DILocation(line: 1394, column: 19, scope: !1240)
!1245 = !DILocation(line: 1394, column: 11, scope: !1240)
!1246 = !DILocation(line: 1394, column: 34, scope: !1240)
!1247 = !DILocation(line: 1393, column: 11, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1231, file: !704, discriminator: 1)
!1249 = !DILocation(line: 1396, column: 30, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1240, file: !704, line: 1394, column: 44)
!1251 = !DILocation(line: 1396, column: 22, scope: !1250)
!1252 = !DILocation(line: 1396, column: 20, scope: !1250)
!1253 = !DILocation(line: 1397, column: 7, scope: !1250)
!1254 = !DILocalVariable(name: "surrogateLead", scope: !1255, file: !704, line: 1401, type: !689)
!1255 = distinct !DILexicalBlock(scope: !1240, file: !704, line: 1397, column: 14)
!1256 = !DILocation(line: 1401, column: 17, scope: !1255)
!1257 = !DILocation(line: 1401, column: 41, scope: !1255)
!1258 = !DILocation(line: 1401, column: 33, scope: !1255)
!1259 = !DILocalVariable(name: "surrogateTrail", scope: !1255, file: !704, line: 1402, type: !689)
!1260 = !DILocation(line: 1402, column: 17, scope: !1255)
!1261 = !DILocation(line: 1405, column: 23, scope: !1255)
!1262 = !DILocation(line: 1406, column: 14, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1255, file: !704, line: 1406, column: 14)
!1264 = !DILocation(line: 1406, column: 31, scope: !1263)
!1265 = !DILocation(line: 1406, column: 28, scope: !1263)
!1266 = !DILocation(line: 1406, column: 14, scope: !1255)
!1267 = !DILocation(line: 1407, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !704, line: 1406, column: 45)
!1269 = !DILocation(line: 1410, column: 35, scope: !1255)
!1270 = !DILocation(line: 1410, column: 27, scope: !1255)
!1271 = !DILocation(line: 1410, column: 25, scope: !1255)
!1272 = !DILocation(line: 1413, column: 14, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1255, file: !704, line: 1413, column: 14)
!1274 = !DILocation(line: 1413, column: 28, scope: !1273)
!1275 = !DILocation(line: 1413, column: 37, scope: !1273)
!1276 = !DILocation(line: 1414, column: 14, scope: !1273)
!1277 = !DILocation(line: 1414, column: 29, scope: !1273)
!1278 = !DILocation(line: 1414, column: 38, scope: !1273)
!1279 = !DILocation(line: 1415, column: 14, scope: !1273)
!1280 = !DILocation(line: 1415, column: 29, scope: !1273)
!1281 = !DILocation(line: 1413, column: 14, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1255, file: !704, discriminator: 1)
!1283 = !DILocation(line: 1416, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1273, file: !704, line: 1415, column: 39)
!1285 = !DILocation(line: 1437, column: 31, scope: !1255)
!1286 = !DILocation(line: 1437, column: 23, scope: !1255)
!1287 = !DILocation(line: 1437, column: 45, scope: !1255)
!1288 = !DILocation(line: 1438, column: 45, scope: !1255)
!1289 = !DILocation(line: 1438, column: 37, scope: !1255)
!1290 = !DILocation(line: 1437, column: 54, scope: !1255)
!1291 = !DILocation(line: 1438, column: 60, scope: !1255)
!1292 = !DILocation(line: 1437, column: 20, scope: !1255)
!1293 = !DILocation(line: 1443, column: 29, scope: !1231)
!1294 = !DILocation(line: 1443, column: 14, scope: !1231)
!1295 = !DILocation(line: 1443, column: 12, scope: !1231)
!1296 = !DILocation(line: 1444, column: 17, scope: !1231)
!1297 = !DILocation(line: 1444, column: 22, scope: !1231)
!1298 = !DILocation(line: 1444, column: 15, scope: !1231)
!1299 = !DILocation(line: 1447, column: 12, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1231, file: !704, line: 1447, column: 11)
!1301 = !DILocation(line: 1447, column: 22, scope: !1300)
!1302 = !DILocation(line: 1447, column: 20, scope: !1300)
!1303 = !DILocation(line: 1447, column: 28, scope: !1300)
!1304 = !DILocation(line: 1448, column: 36, scope: !1300)
!1305 = !DILocation(line: 1448, column: 12, scope: !1300)
!1306 = !DILocation(line: 1448, column: 42, scope: !1300)
!1307 = !DILocation(line: 1448, column: 40, scope: !1300)
!1308 = !DILocation(line: 1448, column: 50, scope: !1300)
!1309 = !DILocation(line: 1449, column: 27, scope: !1300)
!1310 = !DILocation(line: 1449, column: 31, scope: !1300)
!1311 = !DILocation(line: 1449, column: 12, scope: !1300)
!1312 = !DILocation(line: 1449, column: 40, scope: !1300)
!1313 = !DILocation(line: 1447, column: 11, scope: !1248)
!1314 = !DILocation(line: 1450, column: 10, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1300, file: !704, line: 1449, column: 47)
!1316 = !DILocation(line: 1453, column: 37, scope: !1231)
!1317 = !DILocation(line: 1453, column: 26, scope: !1231)
!1318 = !DILocation(line: 1453, column: 43, scope: !1231)
!1319 = !DILocation(line: 1453, column: 41, scope: !1231)
!1320 = !DILocation(line: 1453, column: 15, scope: !1231)
!1321 = !DILocation(line: 1456, column: 11, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1231, file: !704, line: 1456, column: 11)
!1323 = !DILocation(line: 1456, column: 21, scope: !1322)
!1324 = !DILocation(line: 1456, column: 11, scope: !1231)
!1325 = !DILocation(line: 1458, column: 23, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !704, line: 1456, column: 32)
!1327 = !DILocation(line: 1458, column: 10, scope: !1326)
!1328 = !DILocation(line: 1458, column: 21, scope: !1326)
!1329 = !DILocation(line: 1459, column: 15, scope: !1326)
!1330 = !DILocation(line: 1460, column: 7, scope: !1326)
!1331 = !DILocation(line: 1460, column: 18, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1333, file: !704, discriminator: 1)
!1333 = distinct !DILexicalBlock(scope: !1322, file: !704, line: 1460, column: 18)
!1334 = !DILocation(line: 1460, column: 28, scope: !1332)
!1335 = !DILocation(line: 1462, column: 31, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !704, line: 1460, column: 39)
!1337 = !DILocation(line: 1462, column: 41, scope: !1336)
!1338 = !DILocation(line: 1462, column: 28, scope: !1336)
!1339 = !DILocation(line: 1462, column: 23, scope: !1336)
!1340 = !DILocation(line: 1462, column: 10, scope: !1336)
!1341 = !DILocation(line: 1462, column: 21, scope: !1336)
!1342 = !DILocation(line: 1463, column: 31, scope: !1336)
!1343 = !DILocation(line: 1463, column: 41, scope: !1336)
!1344 = !DILocation(line: 1463, column: 28, scope: !1336)
!1345 = !DILocation(line: 1463, column: 23, scope: !1336)
!1346 = !DILocation(line: 1463, column: 10, scope: !1336)
!1347 = !DILocation(line: 1463, column: 21, scope: !1336)
!1348 = !DILocation(line: 1464, column: 15, scope: !1336)
!1349 = !DILocation(line: 1465, column: 7, scope: !1336)
!1350 = !DILocation(line: 1465, column: 18, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1352, file: !704, discriminator: 1)
!1352 = distinct !DILexicalBlock(scope: !1333, file: !704, line: 1465, column: 18)
!1353 = !DILocation(line: 1465, column: 28, scope: !1351)
!1354 = !DILocation(line: 1467, column: 31, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !704, line: 1465, column: 39)
!1356 = !DILocation(line: 1467, column: 41, scope: !1355)
!1357 = !DILocation(line: 1467, column: 28, scope: !1355)
!1358 = !DILocation(line: 1467, column: 23, scope: !1355)
!1359 = !DILocation(line: 1467, column: 10, scope: !1355)
!1360 = !DILocation(line: 1467, column: 21, scope: !1355)
!1361 = !DILocation(line: 1468, column: 32, scope: !1355)
!1362 = !DILocation(line: 1468, column: 42, scope: !1355)
!1363 = !DILocation(line: 1468, column: 48, scope: !1355)
!1364 = !DILocation(line: 1468, column: 28, scope: !1355)
!1365 = !DILocation(line: 1468, column: 23, scope: !1355)
!1366 = !DILocation(line: 1468, column: 10, scope: !1355)
!1367 = !DILocation(line: 1468, column: 21, scope: !1355)
!1368 = !DILocation(line: 1469, column: 31, scope: !1355)
!1369 = !DILocation(line: 1469, column: 41, scope: !1355)
!1370 = !DILocation(line: 1469, column: 28, scope: !1355)
!1371 = !DILocation(line: 1469, column: 23, scope: !1355)
!1372 = !DILocation(line: 1469, column: 10, scope: !1355)
!1373 = !DILocation(line: 1469, column: 21, scope: !1355)
!1374 = !DILocation(line: 1470, column: 15, scope: !1355)
!1375 = !DILocation(line: 1471, column: 7, scope: !1355)
!1376 = !DILocation(line: 1480, column: 31, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1352, file: !704, line: 1471, column: 14)
!1378 = !DILocation(line: 1480, column: 41, scope: !1377)
!1379 = !DILocation(line: 1480, column: 28, scope: !1377)
!1380 = !DILocation(line: 1480, column: 23, scope: !1377)
!1381 = !DILocation(line: 1480, column: 10, scope: !1377)
!1382 = !DILocation(line: 1480, column: 21, scope: !1377)
!1383 = !DILocation(line: 1481, column: 32, scope: !1377)
!1384 = !DILocation(line: 1481, column: 42, scope: !1377)
!1385 = !DILocation(line: 1481, column: 49, scope: !1377)
!1386 = !DILocation(line: 1481, column: 28, scope: !1377)
!1387 = !DILocation(line: 1481, column: 23, scope: !1377)
!1388 = !DILocation(line: 1481, column: 10, scope: !1377)
!1389 = !DILocation(line: 1481, column: 21, scope: !1377)
!1390 = !DILocation(line: 1482, column: 32, scope: !1377)
!1391 = !DILocation(line: 1482, column: 42, scope: !1377)
!1392 = !DILocation(line: 1482, column: 48, scope: !1377)
!1393 = !DILocation(line: 1482, column: 28, scope: !1377)
!1394 = !DILocation(line: 1482, column: 23, scope: !1377)
!1395 = !DILocation(line: 1482, column: 10, scope: !1377)
!1396 = !DILocation(line: 1482, column: 21, scope: !1377)
!1397 = !DILocation(line: 1483, column: 31, scope: !1377)
!1398 = !DILocation(line: 1483, column: 41, scope: !1377)
!1399 = !DILocation(line: 1483, column: 28, scope: !1377)
!1400 = !DILocation(line: 1483, column: 23, scope: !1377)
!1401 = !DILocation(line: 1483, column: 10, scope: !1377)
!1402 = !DILocation(line: 1483, column: 21, scope: !1377)
!1403 = !DILocation(line: 1484, column: 15, scope: !1377)
!1404 = !DILocation(line: 1487, column: 22, scope: !1231)
!1405 = !DILocation(line: 1487, column: 26, scope: !1231)
!1406 = !DILocation(line: 1487, column: 7, scope: !1231)
!1407 = !DILocation(line: 1488, column: 4, scope: !1231)
!1408 = !DILocation(line: 1387, column: 71, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1226, file: !704, discriminator: 2)
!1410 = !DILocation(line: 1387, column: 4, scope: !1409)
!1411 = distinct !{!1411, !1412}
!1412 = !DILocation(line: 1387, column: 4, scope: !711)
!1413 = !DILocation(line: 1490, column: 4, scope: !711)
!1414 = !DILocation(line: 1491, column: 1, scope: !711)
!1415 = distinct !DISubprogram(name: "CodeSetOld_Utf16leToUtf8", scope: !704, file: !704, line: 1517, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1416 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1415, file: !704, line: 1517, type: !707)
!1417 = !DILocation(line: 1517, column: 38, scope: !1415)
!1418 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1415, file: !704, line: 1518, type: !715)
!1419 = !DILocation(line: 1518, column: 33, scope: !1415)
!1420 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1415, file: !704, line: 1519, type: !684)
!1421 = !DILocation(line: 1519, column: 33, scope: !1415)
!1422 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1415, file: !704, line: 1520, type: !1071)
!1423 = !DILocation(line: 1520, column: 34, scope: !1415)
!1424 = !DILocalVariable(name: "db", scope: !1415, file: !704, line: 1522, type: !719)
!1425 = !DILocation(line: 1522, column: 11, scope: !1415)
!1426 = !DILocalVariable(name: "ok", scope: !1415, file: !704, line: 1523, type: !714)
!1427 = !DILocation(line: 1523, column: 9, scope: !1415)
!1428 = !DILocation(line: 1525, column: 4, scope: !1415)
!1429 = !DILocation(line: 1526, column: 36, scope: !1415)
!1430 = !DILocation(line: 1526, column: 43, scope: !1415)
!1431 = !DILocation(line: 1526, column: 9, scope: !1415)
!1432 = !DILocation(line: 1526, column: 7, scope: !1415)
!1433 = !DILocation(line: 1528, column: 36, scope: !1415)
!1434 = !DILocation(line: 1528, column: 45, scope: !1415)
!1435 = !DILocation(line: 1528, column: 53, scope: !1415)
!1436 = !DILocation(line: 1528, column: 11, scope: !1415)
!1437 = !DILocation(line: 1528, column: 4, scope: !1415)
!1438 = distinct !DISubprogram(name: "CodeSetOld_Utf8ToUtf16le", scope: !704, file: !704, line: 1555, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1439 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1438, file: !704, line: 1555, type: !707)
!1440 = !DILocation(line: 1555, column: 38, scope: !1438)
!1441 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1438, file: !704, line: 1556, type: !715)
!1442 = !DILocation(line: 1556, column: 33, scope: !1438)
!1443 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1438, file: !704, line: 1557, type: !684)
!1444 = !DILocation(line: 1557, column: 33, scope: !1438)
!1445 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1438, file: !704, line: 1558, type: !1071)
!1446 = !DILocation(line: 1558, column: 34, scope: !1438)
!1447 = !DILocalVariable(name: "db", scope: !1438, file: !704, line: 1560, type: !719)
!1448 = !DILocation(line: 1560, column: 11, scope: !1438)
!1449 = !DILocalVariable(name: "ok", scope: !1438, file: !704, line: 1561, type: !714)
!1450 = !DILocation(line: 1561, column: 9, scope: !1438)
!1451 = !DILocation(line: 1563, column: 4, scope: !1438)
!1452 = !DILocation(line: 1564, column: 35, scope: !1438)
!1453 = !DILocation(line: 1564, column: 42, scope: !1438)
!1454 = !DILocation(line: 1564, column: 9, scope: !1438)
!1455 = !DILocation(line: 1564, column: 7, scope: !1438)
!1456 = !DILocation(line: 1566, column: 36, scope: !1438)
!1457 = !DILocation(line: 1566, column: 45, scope: !1438)
!1458 = !DILocation(line: 1566, column: 53, scope: !1438)
!1459 = !DILocation(line: 1566, column: 11, scope: !1438)
!1460 = !DILocation(line: 1566, column: 4, scope: !1438)
!1461 = distinct !DISubprogram(name: "CodeSetOldUtf8ToUtf16leDb", scope: !704, file: !704, line: 215, type: !712, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1462 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1461, file: !704, line: 215, type: !707)
!1463 = !DILocation(line: 215, column: 39, scope: !1461)
!1464 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1461, file: !704, line: 216, type: !715)
!1465 = !DILocation(line: 216, column: 34, scope: !1461)
!1466 = !DILocalVariable(name: "db", arg: 3, scope: !1461, file: !704, line: 217, type: !718)
!1467 = !DILocation(line: 217, column: 35, scope: !1461)
!1468 = !DILocalVariable(name: "bufEnd", scope: !1461, file: !704, line: 219, type: !707)
!1469 = !DILocation(line: 219, column: 16, scope: !1461)
!1470 = !DILocation(line: 219, column: 25, scope: !1461)
!1471 = !DILocation(line: 219, column: 33, scope: !1461)
!1472 = !DILocation(line: 219, column: 31, scope: !1461)
!1473 = !DILocalVariable(name: "currentSize", scope: !1461, file: !704, line: 220, type: !715)
!1474 = !DILocation(line: 220, column: 11, scope: !1461)
!1475 = !DILocalVariable(name: "allocatedSize", scope: !1461, file: !704, line: 221, type: !715)
!1476 = !DILocation(line: 221, column: 11, scope: !1461)
!1477 = !DILocalVariable(name: "buf", scope: !1461, file: !704, line: 222, type: !700)
!1478 = !DILocation(line: 222, column: 12, scope: !1461)
!1479 = !DILocation(line: 224, column: 33, scope: !1461)
!1480 = !DILocation(line: 224, column: 18, scope: !1461)
!1481 = !DILocation(line: 224, column: 16, scope: !1461)
!1482 = !DILocation(line: 225, column: 44, scope: !1461)
!1483 = !DILocation(line: 225, column: 20, scope: !1461)
!1484 = !DILocation(line: 225, column: 18, scope: !1461)
!1485 = !DILocation(line: 226, column: 40, scope: !1461)
!1486 = !DILocation(line: 226, column: 29, scope: !1461)
!1487 = !DILocation(line: 226, column: 46, scope: !1461)
!1488 = !DILocation(line: 226, column: 44, scope: !1461)
!1489 = !DILocation(line: 226, column: 10, scope: !1461)
!1490 = !DILocation(line: 226, column: 8, scope: !1461)
!1491 = !DILocation(line: 227, column: 4, scope: !1461)
!1492 = !DILocation(line: 227, column: 11, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1461, file: !704, discriminator: 1)
!1494 = !DILocation(line: 227, column: 19, scope: !1493)
!1495 = !DILocation(line: 227, column: 17, scope: !1493)
!1496 = !DILocation(line: 227, column: 4, scope: !1493)
!1497 = !DILocalVariable(name: "neededSize", scope: !1498, file: !704, line: 228, type: !715)
!1498 = distinct !DILexicalBlock(scope: !1461, file: !704, line: 227, column: 27)
!1499 = !DILocation(line: 228, column: 14, scope: !1498)
!1500 = !DILocalVariable(name: "uniChar", scope: !1498, file: !704, line: 229, type: !693)
!1501 = !DILocation(line: 229, column: 14, scope: !1498)
!1502 = !DILocalVariable(name: "n", scope: !1498, file: !704, line: 230, type: !730)
!1503 = !DILocation(line: 230, column: 11, scope: !1498)
!1504 = !DILocation(line: 230, column: 31, scope: !1498)
!1505 = !DILocation(line: 230, column: 38, scope: !1498)
!1506 = !DILocation(line: 230, column: 15, scope: !1498)
!1507 = !DILocation(line: 232, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1498, file: !704, line: 232, column: 11)
!1509 = !DILocation(line: 232, column: 13, scope: !1508)
!1510 = !DILocation(line: 232, column: 11, scope: !1498)
!1511 = !DILocation(line: 233, column: 10, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !704, line: 232, column: 19)
!1513 = !DILocation(line: 235, column: 16, scope: !1498)
!1514 = !DILocation(line: 235, column: 13, scope: !1498)
!1515 = !DILocation(line: 243, column: 11, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1498, file: !704, line: 243, column: 11)
!1517 = !DILocation(line: 243, column: 19, scope: !1516)
!1518 = !DILocation(line: 243, column: 29, scope: !1516)
!1519 = !DILocation(line: 243, column: 32, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1516, file: !704, discriminator: 1)
!1521 = !DILocation(line: 243, column: 40, scope: !1520)
!1522 = !DILocation(line: 243, column: 11, scope: !1520)
!1523 = !DILocation(line: 244, column: 10, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1516, file: !704, line: 243, column: 50)
!1525 = !DILocation(line: 246, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1498, file: !704, line: 246, column: 11)
!1527 = !DILocation(line: 246, column: 19, scope: !1526)
!1528 = !DILocation(line: 246, column: 11, scope: !1498)
!1529 = !DILocation(line: 247, column: 23, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !704, line: 246, column: 30)
!1531 = !DILocation(line: 247, column: 35, scope: !1530)
!1532 = !DILocation(line: 247, column: 21, scope: !1530)
!1533 = !DILocation(line: 248, column: 7, scope: !1530)
!1534 = !DILocation(line: 248, column: 18, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !704, discriminator: 1)
!1536 = distinct !DILexicalBlock(scope: !1526, file: !704, line: 248, column: 18)
!1537 = !DILocation(line: 248, column: 26, scope: !1535)
!1538 = !DILocation(line: 249, column: 23, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !704, line: 248, column: 38)
!1540 = !DILocation(line: 249, column: 35, scope: !1539)
!1541 = !DILocation(line: 249, column: 21, scope: !1539)
!1542 = !DILocation(line: 250, column: 7, scope: !1539)
!1543 = !DILocation(line: 252, column: 10, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1536, file: !704, line: 250, column: 14)
!1545 = !DILocation(line: 254, column: 11, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1498, file: !704, line: 254, column: 11)
!1547 = !DILocation(line: 254, column: 27, scope: !1546)
!1548 = !DILocation(line: 254, column: 25, scope: !1546)
!1549 = !DILocation(line: 254, column: 11, scope: !1498)
!1550 = !DILocation(line: 255, column: 29, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !704, line: 255, column: 14)
!1552 = distinct !DILexicalBlock(scope: !1546, file: !704, line: 254, column: 39)
!1553 = !DILocation(line: 255, column: 33, scope: !1551)
!1554 = !DILocation(line: 255, column: 14, scope: !1551)
!1555 = !DILocation(line: 255, column: 45, scope: !1551)
!1556 = !DILocation(line: 255, column: 14, scope: !1552)
!1557 = !DILocation(line: 256, column: 13, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1551, file: !704, line: 255, column: 51)
!1559 = !DILocation(line: 258, column: 50, scope: !1552)
!1560 = !DILocation(line: 258, column: 26, scope: !1552)
!1561 = !DILocation(line: 258, column: 24, scope: !1552)
!1562 = !DILocation(line: 260, column: 46, scope: !1552)
!1563 = !DILocation(line: 260, column: 35, scope: !1552)
!1564 = !DILocation(line: 260, column: 52, scope: !1552)
!1565 = !DILocation(line: 260, column: 50, scope: !1552)
!1566 = !DILocation(line: 260, column: 16, scope: !1552)
!1567 = !DILocation(line: 260, column: 14, scope: !1552)
!1568 = !DILocation(line: 261, column: 7, scope: !1552)
!1569 = !DILocation(line: 262, column: 11, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1498, file: !704, line: 262, column: 11)
!1571 = !DILocation(line: 262, column: 19, scope: !1570)
!1572 = !DILocation(line: 262, column: 11, scope: !1498)
!1573 = !DILocation(line: 263, column: 19, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !704, line: 262, column: 30)
!1575 = !DILocation(line: 263, column: 14, scope: !1574)
!1576 = !DILocation(line: 263, column: 17, scope: !1574)
!1577 = !DILocation(line: 264, column: 7, scope: !1574)
!1578 = !DILocation(line: 265, column: 30, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1570, file: !704, line: 264, column: 14)
!1580 = !DILocation(line: 265, column: 38, scope: !1579)
!1581 = !DILocation(line: 265, column: 49, scope: !1579)
!1582 = !DILocation(line: 265, column: 26, scope: !1579)
!1583 = !DILocation(line: 265, column: 19, scope: !1579)
!1584 = !DILocation(line: 265, column: 14, scope: !1579)
!1585 = !DILocation(line: 265, column: 17, scope: !1579)
!1586 = !DILocation(line: 266, column: 30, scope: !1579)
!1587 = !DILocation(line: 266, column: 38, scope: !1579)
!1588 = !DILocation(line: 266, column: 49, scope: !1579)
!1589 = !DILocation(line: 266, column: 26, scope: !1579)
!1590 = !DILocation(line: 266, column: 19, scope: !1579)
!1591 = !DILocation(line: 266, column: 14, scope: !1579)
!1592 = !DILocation(line: 266, column: 17, scope: !1579)
!1593 = !DILocation(line: 268, column: 21, scope: !1498)
!1594 = !DILocation(line: 268, column: 19, scope: !1498)
!1595 = !DILocation(line: 227, column: 4, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1461, file: !704, discriminator: 2)
!1597 = distinct !{!1597, !1491}
!1598 = !DILocation(line: 271, column: 19, scope: !1461)
!1599 = !DILocation(line: 271, column: 23, scope: !1461)
!1600 = !DILocation(line: 271, column: 4, scope: !1461)
!1601 = !DILocation(line: 273, column: 4, scope: !1461)
!1602 = !DILocation(line: 274, column: 1, scope: !1461)
!1603 = distinct !DISubprogram(name: "CodeSetOld_Utf8FormDToUtf8FormC", scope: !704, file: !704, line: 1593, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1604 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1603, file: !704, line: 1593, type: !707)
!1605 = !DILocation(line: 1593, column: 45, scope: !1603)
!1606 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1603, file: !704, line: 1594, type: !715)
!1607 = !DILocation(line: 1594, column: 40, scope: !1603)
!1608 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1603, file: !704, line: 1595, type: !684)
!1609 = !DILocation(line: 1595, column: 40, scope: !1603)
!1610 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1603, file: !704, line: 1596, type: !1071)
!1611 = !DILocation(line: 1596, column: 41, scope: !1603)
!1612 = !DILocation(line: 1606, column: 4, scope: !1603)
!1613 = !DILocation(line: 1608, column: 1, scope: !1603)
!1614 = distinct !DISubprogram(name: "CodeSetOld_Utf8FormCToUtf8FormD", scope: !704, file: !704, line: 1634, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1638, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1615 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1614, file: !704, line: 1634, type: !707)
!1616 = !DILocation(line: 1634, column: 45, scope: !1614)
!1617 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1614, file: !704, line: 1635, type: !715)
!1618 = !DILocation(line: 1635, column: 40, scope: !1614)
!1619 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1614, file: !704, line: 1636, type: !684)
!1620 = !DILocation(line: 1636, column: 40, scope: !1614)
!1621 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1614, file: !704, line: 1637, type: !1071)
!1622 = !DILocation(line: 1637, column: 41, scope: !1614)
!1623 = !DILocation(line: 1647, column: 4, scope: !1614)
!1624 = !DILocation(line: 1649, column: 1, scope: !1614)
!1625 = distinct !DISubprogram(name: "CodeSetOld_CurrentToUtf16le", scope: !704, file: !704, line: 1673, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1626 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1625, file: !704, line: 1673, type: !707)
!1627 = !DILocation(line: 1673, column: 41, scope: !1625)
!1628 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1625, file: !704, line: 1674, type: !715)
!1629 = !DILocation(line: 1674, column: 36, scope: !1625)
!1630 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1625, file: !704, line: 1675, type: !684)
!1631 = !DILocation(line: 1675, column: 36, scope: !1625)
!1632 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1625, file: !704, line: 1676, type: !1071)
!1633 = !DILocation(line: 1676, column: 37, scope: !1625)
!1634 = !DILocalVariable(name: "db", scope: !1625, file: !704, line: 1678, type: !719)
!1635 = !DILocation(line: 1678, column: 11, scope: !1625)
!1636 = !DILocalVariable(name: "ok", scope: !1625, file: !704, line: 1679, type: !714)
!1637 = !DILocation(line: 1679, column: 9, scope: !1625)
!1638 = !DILocation(line: 1681, column: 4, scope: !1625)
!1639 = !DILocation(line: 1685, column: 39, scope: !1625)
!1640 = !DILocation(line: 1685, column: 71, scope: !1625)
!1641 = !DILocation(line: 1686, column: 39, scope: !1625)
!1642 = !DILocation(line: 1685, column: 9, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1625, file: !704, discriminator: 1)
!1644 = !DILocation(line: 1685, column: 7, scope: !1625)
!1645 = !DILocation(line: 1694, column: 36, scope: !1625)
!1646 = !DILocation(line: 1694, column: 45, scope: !1625)
!1647 = !DILocation(line: 1694, column: 53, scope: !1625)
!1648 = !DILocation(line: 1694, column: 11, scope: !1625)
!1649 = !DILocation(line: 1694, column: 4, scope: !1625)
!1650 = distinct !DISubprogram(name: "CodeSetOld_Utf16leToCurrent", scope: !704, file: !704, line: 1719, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1651 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1650, file: !704, line: 1719, type: !707)
!1652 = !DILocation(line: 1719, column: 41, scope: !1650)
!1653 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1650, file: !704, line: 1720, type: !715)
!1654 = !DILocation(line: 1720, column: 36, scope: !1650)
!1655 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1650, file: !704, line: 1721, type: !684)
!1656 = !DILocation(line: 1721, column: 36, scope: !1650)
!1657 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1650, file: !704, line: 1722, type: !1071)
!1658 = !DILocation(line: 1722, column: 37, scope: !1650)
!1659 = !DILocalVariable(name: "db", scope: !1650, file: !704, line: 1727, type: !719)
!1660 = !DILocation(line: 1727, column: 11, scope: !1650)
!1661 = !DILocalVariable(name: "ok", scope: !1650, file: !704, line: 1728, type: !714)
!1662 = !DILocation(line: 1728, column: 9, scope: !1650)
!1663 = !DILocation(line: 1730, column: 4, scope: !1650)
!1664 = !DILocation(line: 1731, column: 51, scope: !1650)
!1665 = !DILocation(line: 1731, column: 58, scope: !1650)
!1666 = !DILocation(line: 1732, column: 39, scope: !1650)
!1667 = !DILocation(line: 1731, column: 9, scope: !1650)
!1668 = !DILocation(line: 1731, column: 7, scope: !1650)
!1669 = !DILocation(line: 1734, column: 36, scope: !1650)
!1670 = !DILocation(line: 1734, column: 45, scope: !1650)
!1671 = !DILocation(line: 1734, column: 53, scope: !1650)
!1672 = !DILocation(line: 1734, column: 11, scope: !1650)
!1673 = !DILocation(line: 1734, column: 4, scope: !1650)
!1674 = distinct !DISubprogram(name: "CodeSetOld_Utf16beToCurrent", scope: !704, file: !704, line: 1764, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1768, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1675 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1674, file: !704, line: 1764, type: !707)
!1676 = !DILocation(line: 1764, column: 41, scope: !1674)
!1677 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1674, file: !704, line: 1765, type: !715)
!1678 = !DILocation(line: 1765, column: 36, scope: !1674)
!1679 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1674, file: !704, line: 1766, type: !684)
!1680 = !DILocation(line: 1766, column: 36, scope: !1674)
!1681 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1674, file: !704, line: 1767, type: !1071)
!1682 = !DILocation(line: 1767, column: 37, scope: !1674)
!1683 = !DILocalVariable(name: "db", scope: !1674, file: !704, line: 1784, type: !719)
!1684 = !DILocation(line: 1784, column: 11, scope: !1674)
!1685 = !DILocalVariable(name: "ok", scope: !1674, file: !704, line: 1785, type: !714)
!1686 = !DILocation(line: 1785, column: 9, scope: !1674)
!1687 = !DILocation(line: 1787, column: 4, scope: !1674)
!1688 = !DILocation(line: 1788, column: 51, scope: !1674)
!1689 = !DILocation(line: 1788, column: 58, scope: !1674)
!1690 = !DILocation(line: 1789, column: 39, scope: !1674)
!1691 = !DILocation(line: 1788, column: 9, scope: !1674)
!1692 = !DILocation(line: 1788, column: 7, scope: !1674)
!1693 = !DILocation(line: 1791, column: 36, scope: !1674)
!1694 = !DILocation(line: 1791, column: 45, scope: !1674)
!1695 = !DILocation(line: 1791, column: 53, scope: !1674)
!1696 = !DILocation(line: 1791, column: 11, scope: !1674)
!1697 = !DILocation(line: 1791, column: 4, scope: !1674)
!1698 = distinct !DISubprogram(name: "CodeSetOld_Utf16beToUtf8", scope: !704, file: !704, line: 1850, type: !1146, isLocal: false, isDefinition: true, scopeLine: 1854, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1699 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1698, file: !704, line: 1850, type: !707)
!1700 = !DILocation(line: 1850, column: 38, scope: !1698)
!1701 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1698, file: !704, line: 1851, type: !715)
!1702 = !DILocation(line: 1851, column: 33, scope: !1698)
!1703 = !DILocalVariable(name: "bufOut", arg: 3, scope: !1698, file: !704, line: 1852, type: !684)
!1704 = !DILocation(line: 1852, column: 33, scope: !1698)
!1705 = !DILocalVariable(name: "sizeOut", arg: 4, scope: !1698, file: !704, line: 1853, type: !1071)
!1706 = !DILocation(line: 1853, column: 34, scope: !1698)
!1707 = !DILocalVariable(name: "db", scope: !1698, file: !704, line: 1855, type: !719)
!1708 = !DILocation(line: 1855, column: 11, scope: !1698)
!1709 = !DILocalVariable(name: "ok", scope: !1698, file: !704, line: 1856, type: !714)
!1710 = !DILocation(line: 1856, column: 9, scope: !1698)
!1711 = !DILocation(line: 1858, column: 4, scope: !1698)
!1712 = !DILocation(line: 1859, column: 36, scope: !1698)
!1713 = !DILocation(line: 1859, column: 43, scope: !1698)
!1714 = !DILocation(line: 1859, column: 9, scope: !1698)
!1715 = !DILocation(line: 1859, column: 7, scope: !1698)
!1716 = !DILocation(line: 1861, column: 36, scope: !1698)
!1717 = !DILocation(line: 1861, column: 45, scope: !1698)
!1718 = !DILocation(line: 1861, column: 53, scope: !1698)
!1719 = !DILocation(line: 1861, column: 11, scope: !1698)
!1720 = !DILocation(line: 1861, column: 4, scope: !1698)
!1721 = distinct !DISubprogram(name: "CodeSetOld_Utf16beToUtf8Db", scope: !704, file: !704, line: 1884, type: !712, isLocal: false, isDefinition: true, scopeLine: 1887, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1722 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1721, file: !704, line: 1884, type: !707)
!1723 = !DILocation(line: 1884, column: 40, scope: !1721)
!1724 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1721, file: !704, line: 1885, type: !715)
!1725 = !DILocation(line: 1885, column: 35, scope: !1721)
!1726 = !DILocalVariable(name: "db", arg: 3, scope: !1721, file: !704, line: 1886, type: !718)
!1727 = !DILocation(line: 1886, column: 36, scope: !1721)
!1728 = !DILocalVariable(name: "i", scope: !1721, file: !704, line: 1888, type: !730)
!1729 = !DILocation(line: 1888, column: 8, scope: !1721)
!1730 = !DILocalVariable(name: "temp", scope: !1721, file: !704, line: 1889, type: !685)
!1731 = !DILocation(line: 1889, column: 10, scope: !1721)
!1732 = !DILocalVariable(name: "ret", scope: !1721, file: !704, line: 1890, type: !714)
!1733 = !DILocation(line: 1890, column: 9, scope: !1721)
!1734 = !DILocation(line: 1892, column: 23, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1721, file: !704, line: 1892, column: 8)
!1736 = !DILocation(line: 1892, column: 16, scope: !1735)
!1737 = !DILocation(line: 1892, column: 14, scope: !1735)
!1738 = !DILocation(line: 1892, column: 32, scope: !1735)
!1739 = !DILocation(line: 1892, column: 8, scope: !1721)
!1740 = !DILocation(line: 1893, column: 14, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1735, file: !704, line: 1892, column: 40)
!1742 = !DILocation(line: 1893, column: 7, scope: !1741)
!1743 = !DILocation(line: 1898, column: 11, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1721, file: !704, line: 1898, column: 4)
!1745 = !DILocation(line: 1898, column: 9, scope: !1744)
!1746 = !DILocation(line: 1898, column: 16, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1748, file: !704, discriminator: 1)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !704, line: 1898, column: 4)
!1749 = !DILocation(line: 1898, column: 20, scope: !1747)
!1750 = !DILocation(line: 1898, column: 18, scope: !1747)
!1751 = !DILocation(line: 1898, column: 4, scope: !1747)
!1752 = !DILocation(line: 1899, column: 23, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !704, line: 1898, column: 36)
!1754 = !DILocation(line: 1899, column: 25, scope: !1753)
!1755 = !DILocation(line: 1899, column: 17, scope: !1753)
!1756 = !DILocation(line: 1899, column: 12, scope: !1753)
!1757 = !DILocation(line: 1899, column: 7, scope: !1753)
!1758 = !DILocation(line: 1899, column: 15, scope: !1753)
!1759 = !DILocation(line: 1900, column: 27, scope: !1753)
!1760 = !DILocation(line: 1900, column: 21, scope: !1753)
!1761 = !DILocation(line: 1900, column: 12, scope: !1753)
!1762 = !DILocation(line: 1900, column: 14, scope: !1753)
!1763 = !DILocation(line: 1900, column: 7, scope: !1753)
!1764 = !DILocation(line: 1900, column: 19, scope: !1753)
!1765 = !DILocation(line: 1901, column: 4, scope: !1753)
!1766 = !DILocation(line: 1898, column: 30, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1748, file: !704, discriminator: 2)
!1768 = !DILocation(line: 1898, column: 4, scope: !1767)
!1769 = distinct !{!1769, !1770}
!1770 = !DILocation(line: 1898, column: 4, scope: !1721)
!1771 = !DILocation(line: 1903, column: 37, scope: !1721)
!1772 = !DILocation(line: 1903, column: 43, scope: !1721)
!1773 = !DILocation(line: 1903, column: 51, scope: !1721)
!1774 = !DILocation(line: 1903, column: 10, scope: !1721)
!1775 = !DILocation(line: 1903, column: 8, scope: !1721)
!1776 = !DILocation(line: 1904, column: 9, scope: !1721)
!1777 = !DILocation(line: 1904, column: 4, scope: !1721)
!1778 = !DILocation(line: 1906, column: 11, scope: !1721)
!1779 = !DILocation(line: 1906, column: 4, scope: !1721)
!1780 = !DILocation(line: 1907, column: 1, scope: !1721)
!1781 = distinct !DISubprogram(name: "CodeSetOld_AsciiToUtf8", scope: !704, file: !704, line: 1927, type: !1782, isLocal: false, isDefinition: true, scopeLine: 1932, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!714, !707, !715, !695, !684, !1071}
!1784 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1781, file: !704, line: 1927, type: !707)
!1785 = !DILocation(line: 1927, column: 36, scope: !1781)
!1786 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1781, file: !704, line: 1928, type: !715)
!1787 = !DILocation(line: 1928, column: 31, scope: !1781)
!1788 = !DILocalVariable(name: "flags", arg: 3, scope: !1781, file: !704, line: 1929, type: !695)
!1789 = !DILocation(line: 1929, column: 37, scope: !1781)
!1790 = !DILocalVariable(name: "bufOut", arg: 4, scope: !1781, file: !704, line: 1930, type: !684)
!1791 = !DILocation(line: 1930, column: 31, scope: !1781)
!1792 = !DILocalVariable(name: "sizeOut", arg: 5, scope: !1781, file: !704, line: 1931, type: !1071)
!1793 = !DILocation(line: 1931, column: 32, scope: !1781)
!1794 = !DILocalVariable(name: "db", scope: !1781, file: !704, line: 1933, type: !719)
!1795 = !DILocation(line: 1933, column: 11, scope: !1781)
!1796 = !DILocalVariable(name: "ok", scope: !1781, file: !704, line: 1934, type: !714)
!1797 = !DILocation(line: 1934, column: 9, scope: !1781)
!1798 = !DILocation(line: 1936, column: 4, scope: !1781)
!1799 = !DILocation(line: 1937, column: 34, scope: !1781)
!1800 = !DILocation(line: 1937, column: 41, scope: !1781)
!1801 = !DILocation(line: 1937, column: 49, scope: !1781)
!1802 = !DILocation(line: 1937, column: 9, scope: !1781)
!1803 = !DILocation(line: 1937, column: 7, scope: !1781)
!1804 = !DILocation(line: 1939, column: 36, scope: !1781)
!1805 = !DILocation(line: 1939, column: 45, scope: !1781)
!1806 = !DILocation(line: 1939, column: 53, scope: !1781)
!1807 = !DILocation(line: 1939, column: 11, scope: !1781)
!1808 = !DILocation(line: 1939, column: 4, scope: !1781)
!1809 = distinct !DISubprogram(name: "CodeSetOld_AsciiToUtf8Db", scope: !704, file: !704, line: 1960, type: !1810, isLocal: false, isDefinition: true, scopeLine: 1964, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!714, !707, !715, !695, !718}
!1812 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1809, file: !704, line: 1960, type: !707)
!1813 = !DILocation(line: 1960, column: 38, scope: !1809)
!1814 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1809, file: !704, line: 1961, type: !715)
!1815 = !DILocation(line: 1961, column: 33, scope: !1809)
!1816 = !DILocalVariable(name: "flags", arg: 3, scope: !1809, file: !704, line: 1962, type: !695)
!1817 = !DILocation(line: 1962, column: 39, scope: !1809)
!1818 = !DILocalVariable(name: "db", arg: 4, scope: !1809, file: !704, line: 1963, type: !718)
!1819 = !DILocation(line: 1963, column: 34, scope: !1809)
!1820 = !DILocalVariable(name: "oldSize", scope: !1809, file: !704, line: 1965, type: !715)
!1821 = !DILocation(line: 1965, column: 11, scope: !1809)
!1822 = !DILocation(line: 1965, column: 36, scope: !1809)
!1823 = !DILocation(line: 1965, column: 21, scope: !1809)
!1824 = !DILocalVariable(name: "i", scope: !1809, file: !704, line: 1966, type: !715)
!1825 = !DILocation(line: 1966, column: 11, scope: !1809)
!1826 = !DILocalVariable(name: "last", scope: !1809, file: !704, line: 1967, type: !715)
!1827 = !DILocation(line: 1967, column: 11, scope: !1809)
!1828 = !DILocation(line: 1969, column: 11, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1809, file: !704, line: 1969, column: 4)
!1830 = !DILocation(line: 1969, column: 9, scope: !1829)
!1831 = !DILocation(line: 1969, column: 16, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1833, file: !704, discriminator: 1)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !704, line: 1969, column: 4)
!1834 = !DILocation(line: 1969, column: 20, scope: !1832)
!1835 = !DILocation(line: 1969, column: 18, scope: !1832)
!1836 = !DILocation(line: 1969, column: 4, scope: !1832)
!1837 = !DILocation(line: 1970, column: 51, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !704, line: 1970, column: 11)
!1839 = distinct !DILexicalBlock(scope: !1833, file: !704, line: 1969, column: 33)
!1840 = !DILocation(line: 1970, column: 45, scope: !1838)
!1841 = !DILocation(line: 1970, column: 29, scope: !1838)
!1842 = !DILocation(line: 1970, column: 54, scope: !1838)
!1843 = !DILocation(line: 1970, column: 28, scope: !1838)
!1844 = !DILocation(line: 1970, column: 11, scope: !1838)
!1845 = !DILocation(line: 1970, column: 11, scope: !1839)
!1846 = !DILocation(line: 1971, column: 14, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !704, line: 1971, column: 14)
!1848 = distinct !DILexicalBlock(scope: !1838, file: !704, line: 1970, column: 68)
!1849 = !DILocation(line: 1971, column: 20, scope: !1847)
!1850 = !DILocation(line: 1971, column: 14, scope: !1848)
!1851 = !DILocation(line: 1972, column: 28, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !704, line: 1971, column: 26)
!1853 = !DILocation(line: 1972, column: 32, scope: !1852)
!1854 = !DILocation(line: 1972, column: 13, scope: !1852)
!1855 = !DILocation(line: 1974, column: 13, scope: !1852)
!1856 = !DILocation(line: 1976, column: 24, scope: !1848)
!1857 = !DILocation(line: 1976, column: 28, scope: !1848)
!1858 = !DILocation(line: 1976, column: 36, scope: !1848)
!1859 = !DILocation(line: 1976, column: 34, scope: !1848)
!1860 = !DILocation(line: 1976, column: 42, scope: !1848)
!1861 = !DILocation(line: 1976, column: 46, scope: !1848)
!1862 = !DILocation(line: 1976, column: 44, scope: !1848)
!1863 = !DILocation(line: 1976, column: 10, scope: !1848)
!1864 = !DILocation(line: 1977, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1848, file: !704, line: 1977, column: 14)
!1866 = !DILocation(line: 1977, column: 21, scope: !1865)
!1867 = !DILocation(line: 1977, column: 31, scope: !1865)
!1868 = !DILocation(line: 1977, column: 14, scope: !1848)
!1869 = !DILocation(line: 1978, column: 27, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !704, line: 1977, column: 37)
!1871 = !DILocation(line: 1978, column: 13, scope: !1870)
!1872 = !DILocation(line: 1979, column: 10, scope: !1870)
!1873 = !DILocation(line: 1980, column: 17, scope: !1848)
!1874 = !DILocation(line: 1980, column: 19, scope: !1848)
!1875 = !DILocation(line: 1980, column: 15, scope: !1848)
!1876 = !DILocation(line: 1981, column: 7, scope: !1848)
!1877 = !DILocation(line: 1982, column: 4, scope: !1839)
!1878 = !DILocation(line: 1969, column: 29, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1833, file: !704, discriminator: 2)
!1880 = !DILocation(line: 1969, column: 4, scope: !1879)
!1881 = distinct !{!1881, !1882}
!1882 = !DILocation(line: 1969, column: 4, scope: !1809)
!1883 = !DILocation(line: 1983, column: 18, scope: !1809)
!1884 = !DILocation(line: 1983, column: 22, scope: !1809)
!1885 = !DILocation(line: 1983, column: 30, scope: !1809)
!1886 = !DILocation(line: 1983, column: 28, scope: !1809)
!1887 = !DILocation(line: 1983, column: 36, scope: !1809)
!1888 = !DILocation(line: 1983, column: 40, scope: !1809)
!1889 = !DILocation(line: 1983, column: 38, scope: !1809)
!1890 = !DILocation(line: 1983, column: 4, scope: !1809)
!1891 = !DILocation(line: 1985, column: 4, scope: !1809)
!1892 = !DILocation(line: 1986, column: 1, scope: !1809)
!1893 = distinct !DISubprogram(name: "CodeSetOld_Utf8ToAscii", scope: !704, file: !704, line: 2006, type: !1782, isLocal: false, isDefinition: true, scopeLine: 2011, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1894 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1893, file: !704, line: 2006, type: !707)
!1895 = !DILocation(line: 2006, column: 36, scope: !1893)
!1896 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1893, file: !704, line: 2007, type: !715)
!1897 = !DILocation(line: 2007, column: 31, scope: !1893)
!1898 = !DILocalVariable(name: "flags", arg: 3, scope: !1893, file: !704, line: 2008, type: !695)
!1899 = !DILocation(line: 2008, column: 37, scope: !1893)
!1900 = !DILocalVariable(name: "bufOut", arg: 4, scope: !1893, file: !704, line: 2009, type: !684)
!1901 = !DILocation(line: 2009, column: 31, scope: !1893)
!1902 = !DILocalVariable(name: "sizeOut", arg: 5, scope: !1893, file: !704, line: 2010, type: !1071)
!1903 = !DILocation(line: 2010, column: 32, scope: !1893)
!1904 = !DILocalVariable(name: "db", scope: !1893, file: !704, line: 2012, type: !719)
!1905 = !DILocation(line: 2012, column: 11, scope: !1893)
!1906 = !DILocalVariable(name: "ok", scope: !1893, file: !704, line: 2013, type: !714)
!1907 = !DILocation(line: 2013, column: 9, scope: !1893)
!1908 = !DILocation(line: 2015, column: 4, scope: !1893)
!1909 = !DILocation(line: 2016, column: 34, scope: !1893)
!1910 = !DILocation(line: 2016, column: 41, scope: !1893)
!1911 = !DILocation(line: 2016, column: 49, scope: !1893)
!1912 = !DILocation(line: 2016, column: 9, scope: !1893)
!1913 = !DILocation(line: 2016, column: 7, scope: !1893)
!1914 = !DILocation(line: 2018, column: 36, scope: !1893)
!1915 = !DILocation(line: 2018, column: 45, scope: !1893)
!1916 = !DILocation(line: 2018, column: 53, scope: !1893)
!1917 = !DILocation(line: 2018, column: 11, scope: !1893)
!1918 = !DILocation(line: 2018, column: 4, scope: !1893)
!1919 = distinct !DISubprogram(name: "CodeSetOld_Utf8ToAsciiDb", scope: !704, file: !704, line: 2039, type: !1810, isLocal: false, isDefinition: true, scopeLine: 2043, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!1920 = !DILocalVariable(name: "bufIn", arg: 1, scope: !1919, file: !704, line: 2039, type: !707)
!1921 = !DILocation(line: 2039, column: 38, scope: !1919)
!1922 = !DILocalVariable(name: "sizeIn", arg: 2, scope: !1919, file: !704, line: 2040, type: !715)
!1923 = !DILocation(line: 2040, column: 33, scope: !1919)
!1924 = !DILocalVariable(name: "flags", arg: 3, scope: !1919, file: !704, line: 2041, type: !695)
!1925 = !DILocation(line: 2041, column: 39, scope: !1919)
!1926 = !DILocalVariable(name: "db", arg: 4, scope: !1919, file: !704, line: 2042, type: !718)
!1927 = !DILocation(line: 2042, column: 34, scope: !1919)
!1928 = !DILocalVariable(name: "oldSize", scope: !1919, file: !704, line: 2044, type: !715)
!1929 = !DILocation(line: 2044, column: 11, scope: !1919)
!1930 = !DILocation(line: 2044, column: 36, scope: !1919)
!1931 = !DILocation(line: 2044, column: 21, scope: !1919)
!1932 = !DILocalVariable(name: "p", scope: !1919, file: !704, line: 2045, type: !696)
!1933 = !DILocation(line: 2045, column: 11, scope: !1919)
!1934 = !DILocation(line: 2045, column: 25, scope: !1919)
!1935 = !DILocalVariable(name: "end", scope: !1919, file: !704, line: 2046, type: !696)
!1936 = !DILocation(line: 2046, column: 11, scope: !1919)
!1937 = !DILocation(line: 2046, column: 27, scope: !1919)
!1938 = !DILocation(line: 2046, column: 35, scope: !1919)
!1939 = !DILocation(line: 2046, column: 33, scope: !1919)
!1940 = !DILocalVariable(name: "last", scope: !1919, file: !704, line: 2047, type: !696)
!1941 = !DILocation(line: 2047, column: 11, scope: !1919)
!1942 = !DILocation(line: 2047, column: 18, scope: !1919)
!1943 = !DILocation(line: 2049, column: 4, scope: !1919)
!1944 = !DILocation(line: 2049, column: 11, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1946, file: !704, discriminator: 1)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !704, line: 2049, column: 4)
!1947 = distinct !DILexicalBlock(scope: !1919, file: !704, line: 2049, column: 4)
!1948 = !DILocation(line: 2049, column: 15, scope: !1945)
!1949 = !DILocation(line: 2049, column: 13, scope: !1945)
!1950 = !DILocation(line: 2049, column: 4, scope: !1945)
!1951 = !DILocation(line: 2050, column: 30, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !704, line: 2050, column: 11)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !704, line: 2049, column: 25)
!1954 = !DILocation(line: 2050, column: 29, scope: !1952)
!1955 = !DILocation(line: 2050, column: 32, scope: !1952)
!1956 = !DILocation(line: 2050, column: 28, scope: !1952)
!1957 = !DILocation(line: 2050, column: 11, scope: !1952)
!1958 = !DILocation(line: 2050, column: 11, scope: !1953)
!1959 = !DILocalVariable(name: "n", scope: !1960, file: !704, line: 2051, type: !730)
!1960 = distinct !DILexicalBlock(scope: !1952, file: !704, line: 2050, column: 46)
!1961 = !DILocation(line: 2051, column: 14, scope: !1960)
!1962 = !DILocation(line: 2053, column: 14, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1960, file: !704, line: 2053, column: 14)
!1964 = !DILocation(line: 2053, column: 20, scope: !1963)
!1965 = !DILocation(line: 2053, column: 14, scope: !1960)
!1966 = !DILocation(line: 2054, column: 28, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !704, line: 2053, column: 26)
!1968 = !DILocation(line: 2054, column: 32, scope: !1967)
!1969 = !DILocation(line: 2054, column: 13, scope: !1967)
!1970 = !DILocation(line: 2056, column: 13, scope: !1967)
!1971 = !DILocation(line: 2058, column: 24, scope: !1960)
!1972 = !DILocation(line: 2058, column: 28, scope: !1960)
!1973 = !DILocation(line: 2058, column: 34, scope: !1960)
!1974 = !DILocation(line: 2058, column: 38, scope: !1960)
!1975 = !DILocation(line: 2058, column: 36, scope: !1960)
!1976 = !DILocation(line: 2058, column: 10, scope: !1960)
!1977 = !DILocation(line: 2059, column: 15, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1960, file: !704, line: 2059, column: 14)
!1979 = !DILocation(line: 2059, column: 21, scope: !1978)
!1980 = !DILocation(line: 2059, column: 31, scope: !1978)
!1981 = !DILocation(line: 2059, column: 14, scope: !1960)
!1982 = !DILocation(line: 2060, column: 27, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !704, line: 2059, column: 37)
!1984 = !DILocation(line: 2060, column: 13, scope: !1983)
!1985 = !DILocation(line: 2061, column: 10, scope: !1983)
!1986 = !DILocation(line: 2062, column: 44, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1960, file: !704, line: 2062, column: 14)
!1988 = !DILocation(line: 2062, column: 56, scope: !1987)
!1989 = !DILocation(line: 2062, column: 19, scope: !1987)
!1990 = !DILocation(line: 2062, column: 17, scope: !1987)
!1991 = !DILocation(line: 2062, column: 67, scope: !1987)
!1992 = !DILocation(line: 2062, column: 14, scope: !1960)
!1993 = !DILocation(line: 2063, column: 18, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !704, line: 2062, column: 72)
!1995 = !DILocation(line: 2063, column: 20, scope: !1994)
!1996 = !DILocation(line: 2063, column: 15, scope: !1994)
!1997 = !DILocation(line: 2064, column: 10, scope: !1994)
!1998 = !DILocation(line: 2065, column: 17, scope: !1960)
!1999 = !DILocation(line: 2065, column: 19, scope: !1960)
!2000 = !DILocation(line: 2065, column: 15, scope: !1960)
!2001 = !DILocation(line: 2066, column: 7, scope: !1960)
!2002 = !DILocation(line: 2067, column: 4, scope: !1953)
!2003 = !DILocation(line: 2049, column: 21, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1946, file: !704, discriminator: 2)
!2005 = !DILocation(line: 2049, column: 4, scope: !2004)
!2006 = distinct !{!2006, !1943}
!2007 = !DILocation(line: 2068, column: 18, scope: !1919)
!2008 = !DILocation(line: 2068, column: 22, scope: !1919)
!2009 = !DILocation(line: 2068, column: 28, scope: !1919)
!2010 = !DILocation(line: 2068, column: 32, scope: !1919)
!2011 = !DILocation(line: 2068, column: 30, scope: !1919)
!2012 = !DILocation(line: 2068, column: 4, scope: !1919)
!2013 = !DILocation(line: 2070, column: 4, scope: !1919)
!2014 = !DILocation(line: 2071, column: 1, scope: !1919)
!2015 = distinct !DISubprogram(name: "CodeSetOld_IsEncodingSupported", scope: !704, file: !704, line: 2225, type: !2016, isLocal: false, isDefinition: true, scopeLine: 2226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!714, !707}
!2018 = !DILocalVariable(name: "name", arg: 1, scope: !2015, file: !704, line: 2225, type: !707)
!2019 = !DILocation(line: 2225, column: 44, scope: !2015)
!2020 = !DILocation(line: 2229, column: 66, scope: !2015)
!2021 = !DILocation(line: 2229, column: 39, scope: !2015)
!2022 = !DILocation(line: 2229, column: 36, scope: !2015)
!2023 = !DILocation(line: 2229, column: 11, scope: !2015)
!2024 = !DILocation(line: 2229, column: 4, scope: !2015)
!2025 = distinct !DISubprogram(name: "CodeSetOld_Validate", scope: !704, file: !704, line: 2251, type: !2026, isLocal: false, isDefinition: true, scopeLine: 2254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!714, !707, !715, !707}
!2028 = !DILocalVariable(name: "buf", arg: 1, scope: !2025, file: !704, line: 2251, type: !707)
!2029 = !DILocation(line: 2251, column: 33, scope: !2025)
!2030 = !DILocalVariable(name: "size", arg: 2, scope: !2025, file: !704, line: 2252, type: !715)
!2031 = !DILocation(line: 2252, column: 28, scope: !2025)
!2032 = !DILocalVariable(name: "code", arg: 3, scope: !2025, file: !704, line: 2253, type: !707)
!2033 = !DILocation(line: 2253, column: 33, scope: !2025)
!2034 = !DILocalVariable(name: "db", scope: !2025, file: !704, line: 2255, type: !719)
!2035 = !DILocation(line: 2255, column: 11, scope: !2025)
!2036 = !DILocalVariable(name: "ok", scope: !2025, file: !704, line: 2256, type: !714)
!2037 = !DILocation(line: 2256, column: 9, scope: !2025)
!2038 = !DILocation(line: 2258, column: 8, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2025, file: !704, line: 2258, column: 8)
!2040 = !DILocation(line: 2258, column: 13, scope: !2039)
!2041 = !DILocation(line: 2258, column: 8, scope: !2025)
!2042 = !DILocation(line: 2259, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !704, line: 2258, column: 19)
!2044 = !DILocation(line: 2262, column: 4, scope: !2025)
!2045 = !DILocation(line: 2263, column: 39, scope: !2025)
!2046 = !DILocation(line: 2263, column: 45, scope: !2025)
!2047 = !DILocation(line: 2263, column: 50, scope: !2025)
!2048 = !DILocation(line: 2263, column: 9, scope: !2025)
!2049 = !DILocation(line: 2263, column: 7, scope: !2025)
!2050 = !DILocation(line: 2265, column: 4, scope: !2025)
!2051 = !DILocation(line: 2267, column: 11, scope: !2025)
!2052 = !DILocation(line: 2267, column: 4, scope: !2025)
!2053 = !DILocation(line: 2268, column: 1, scope: !2025)
!2054 = distinct !DISubprogram(name: "CodeSetOld_Init", scope: !704, file: !704, line: 2288, type: !2016, isLocal: false, isDefinition: true, scopeLine: 2289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !709)
!2055 = !DILocalVariable(name: "dataDir", arg: 1, scope: !2054, file: !704, line: 2288, type: !707)
!2056 = !DILocation(line: 2288, column: 29, scope: !2054)
!2057 = !DILocation(line: 2290, column: 4, scope: !2054)
