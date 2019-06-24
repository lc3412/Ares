; ModuleID = './line4-cert.o.i'
source_filename = "./line4-cert.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cert = type { %struct.evp_pkey_st*, %struct.x509_st*, %struct.stack_st_X509*, %union.pthread_mutex_t, i64 }
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.anon = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type { %struct.stack_st }
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type { %struct.stack_st }
%struct.stack_st_GENERAL_NAME = type { %struct.stack_st }
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type { %struct.stack_st }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type { %struct.stack_st }
%struct.stack_st_X509_ALGOR = type { %struct.stack_st }
%struct.stack_st_X509 = type { %struct.stack_st }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }

; Function Attrs: nounwind uwtable
define noalias %struct.cert* @cert_new() #0 !dbg !552 {
  %1 = alloca %struct.cert*, align 8
  %2 = alloca %struct.cert*, align 8
  call void @llvm.dbg.declare(metadata %struct.cert** %2, metadata !593, metadata !594), !dbg !595
  %3 = call noalias i8* @malloc(i64 72) #5, !dbg !596
  %4 = bitcast i8* %3 to %struct.cert*, !dbg !596
  store %struct.cert* %4, %struct.cert** %2, align 8, !dbg !598
  %5 = icmp ne %struct.cert* %4, null, !dbg !598
  br i1 %5, label %7, label %6, !dbg !599

; <label>:6:                                      ; preds = %0
  store %struct.cert* null, %struct.cert** %1, align 8, !dbg !600
  br label %21, !dbg !600

; <label>:7:                                      ; preds = %0
  %8 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !601
  %9 = bitcast %struct.cert* %8 to i8*, !dbg !602
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 72, i32 8, i1 false), !dbg !602
  %10 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !603
  %11 = getelementptr inbounds %struct.cert, %struct.cert* %10, i32 0, i32 3, !dbg !605
  %12 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %11, %union.pthread_mutexattr_t* null) #5, !dbg !606
  %13 = icmp ne i32 %12, 0, !dbg !606
  br i1 %13, label %14, label %17, !dbg !607

; <label>:14:                                     ; preds = %7
  %15 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !608
  %16 = bitcast %struct.cert* %15 to i8*, !dbg !608
  call void @free(i8* %16) #5, !dbg !610
  store %struct.cert* null, %struct.cert** %1, align 8, !dbg !611
  br label %21, !dbg !611

; <label>:17:                                     ; preds = %7
  %18 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !612
  %19 = getelementptr inbounds %struct.cert, %struct.cert* %18, i32 0, i32 4, !dbg !613
  store i64 1, i64* %19, align 8, !dbg !614
  %20 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !615
  store %struct.cert* %20, %struct.cert** %1, align 8, !dbg !616
  br label %21, !dbg !616

; <label>:21:                                     ; preds = %17, %14, %6
  %22 = load %struct.cert*, %struct.cert** %1, align 8, !dbg !617
  ret %struct.cert* %22, !dbg !617
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define noalias %struct.cert* @cert_new3(%struct.evp_pkey_st*, %struct.x509_st*, %struct.stack_st_X509*) #0 !dbg !618 {
  %4 = alloca %struct.cert*, align 8
  %5 = alloca %struct.evp_pkey_st*, align 8
  %6 = alloca %struct.x509_st*, align 8
  %7 = alloca %struct.stack_st_X509*, align 8
  %8 = alloca %struct.cert*, align 8
  store %struct.evp_pkey_st* %0, %struct.evp_pkey_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %5, metadata !621, metadata !594), !dbg !622
  store %struct.x509_st* %1, %struct.x509_st** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %6, metadata !623, metadata !594), !dbg !624
  store %struct.stack_st_X509* %2, %struct.stack_st_X509** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.stack_st_X509** %7, metadata !625, metadata !594), !dbg !626
  call void @llvm.dbg.declare(metadata %struct.cert** %8, metadata !627, metadata !594), !dbg !628
  %9 = call noalias i8* @malloc(i64 72) #5, !dbg !629
  %10 = bitcast i8* %9 to %struct.cert*, !dbg !629
  store %struct.cert* %10, %struct.cert** %8, align 8, !dbg !631
  %11 = icmp ne %struct.cert* %10, null, !dbg !631
  br i1 %11, label %13, label %12, !dbg !632

; <label>:12:                                     ; preds = %3
  store %struct.cert* null, %struct.cert** %4, align 8, !dbg !633
  br label %34, !dbg !633

; <label>:13:                                     ; preds = %3
  %14 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !634
  %15 = getelementptr inbounds %struct.cert, %struct.cert* %14, i32 0, i32 3, !dbg !636
  %16 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %15, %union.pthread_mutexattr_t* null) #5, !dbg !637
  %17 = icmp ne i32 %16, 0, !dbg !637
  br i1 %17, label %18, label %21, !dbg !638

; <label>:18:                                     ; preds = %13
  %19 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !639
  %20 = bitcast %struct.cert* %19 to i8*, !dbg !639
  call void @free(i8* %20) #5, !dbg !641
  store %struct.cert* null, %struct.cert** %4, align 8, !dbg !642
  br label %34, !dbg !642

; <label>:21:                                     ; preds = %13
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !643
  %23 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !644
  %24 = getelementptr inbounds %struct.cert, %struct.cert* %23, i32 0, i32 0, !dbg !645
  store %struct.evp_pkey_st* %22, %struct.evp_pkey_st** %24, align 8, !dbg !646
  %25 = load %struct.x509_st*, %struct.x509_st** %6, align 8, !dbg !647
  %26 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !648
  %27 = getelementptr inbounds %struct.cert, %struct.cert* %26, i32 0, i32 1, !dbg !649
  store %struct.x509_st* %25, %struct.x509_st** %27, align 8, !dbg !650
  %28 = load %struct.stack_st_X509*, %struct.stack_st_X509** %7, align 8, !dbg !651
  %29 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !652
  %30 = getelementptr inbounds %struct.cert, %struct.cert* %29, i32 0, i32 2, !dbg !653
  store %struct.stack_st_X509* %28, %struct.stack_st_X509** %30, align 8, !dbg !654
  %31 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !655
  %32 = getelementptr inbounds %struct.cert, %struct.cert* %31, i32 0, i32 4, !dbg !656
  store i64 1, i64* %32, align 8, !dbg !657
  %33 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !658
  store %struct.cert* %33, %struct.cert** %4, align 8, !dbg !659
  br label %34, !dbg !659

; <label>:34:                                     ; preds = %21, %18, %12
  %35 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !660
  ret %struct.cert* %35, !dbg !660
}

; Function Attrs: nounwind uwtable
define noalias %struct.cert* @cert_new3_copy(%struct.evp_pkey_st*, %struct.x509_st*, %struct.stack_st_X509*) #0 !dbg !661 {
  %4 = alloca %struct.cert*, align 8
  %5 = alloca %struct.evp_pkey_st*, align 8
  %6 = alloca %struct.x509_st*, align 8
  %7 = alloca %struct.stack_st_X509*, align 8
  %8 = alloca %struct.cert*, align 8
  %9 = alloca i32, align 4
  store %struct.evp_pkey_st* %0, %struct.evp_pkey_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %5, metadata !662, metadata !594), !dbg !663
  store %struct.x509_st* %1, %struct.x509_st** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %6, metadata !664, metadata !594), !dbg !665
  store %struct.stack_st_X509* %2, %struct.stack_st_X509** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.stack_st_X509** %7, metadata !666, metadata !594), !dbg !667
  call void @llvm.dbg.declare(metadata %struct.cert** %8, metadata !668, metadata !594), !dbg !669
  %10 = call noalias i8* @malloc(i64 72) #5, !dbg !670
  %11 = bitcast i8* %10 to %struct.cert*, !dbg !670
  store %struct.cert* %11, %struct.cert** %8, align 8, !dbg !672
  %12 = icmp ne %struct.cert* %11, null, !dbg !672
  br i1 %12, label %14, label %13, !dbg !673

; <label>:13:                                     ; preds = %3
  store %struct.cert* null, %struct.cert** %4, align 8, !dbg !674
  br label %64, !dbg !674

; <label>:14:                                     ; preds = %3
  %15 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !675
  %16 = getelementptr inbounds %struct.cert, %struct.cert* %15, i32 0, i32 3, !dbg !677
  %17 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %16, %union.pthread_mutexattr_t* null) #5, !dbg !678
  %18 = icmp ne i32 %17, 0, !dbg !678
  br i1 %18, label %19, label %22, !dbg !679

; <label>:19:                                     ; preds = %14
  %20 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !680
  %21 = bitcast %struct.cert* %20 to i8*, !dbg !680
  call void @free(i8* %21) #5, !dbg !682
  store %struct.cert* null, %struct.cert** %4, align 8, !dbg !683
  br label %64, !dbg !683

; <label>:22:                                     ; preds = %14
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !684
  %24 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !685
  %25 = getelementptr inbounds %struct.cert, %struct.cert* %24, i32 0, i32 0, !dbg !686
  store %struct.evp_pkey_st* %23, %struct.evp_pkey_st** %25, align 8, !dbg !687
  %26 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !688
  %27 = getelementptr inbounds %struct.cert, %struct.cert* %26, i32 0, i32 0, !dbg !689
  %28 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %27, align 8, !dbg !689
  call void @ssl_key_refcount_inc(%struct.evp_pkey_st* %28), !dbg !690
  %29 = load %struct.x509_st*, %struct.x509_st** %6, align 8, !dbg !691
  %30 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !692
  %31 = getelementptr inbounds %struct.cert, %struct.cert* %30, i32 0, i32 1, !dbg !693
  store %struct.x509_st* %29, %struct.x509_st** %31, align 8, !dbg !694
  %32 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !695
  %33 = getelementptr inbounds %struct.cert, %struct.cert* %32, i32 0, i32 1, !dbg !696
  %34 = load %struct.x509_st*, %struct.x509_st** %33, align 8, !dbg !696
  call void @ssl_x509_refcount_inc(%struct.x509_st* %34), !dbg !697
  %35 = load %struct.stack_st_X509*, %struct.stack_st_X509** %7, align 8, !dbg !698
  %36 = bitcast %struct.stack_st_X509* %35 to %struct.stack_st*, !dbg !699
  %37 = call %struct.stack_st* @sk_dup(%struct.stack_st* %36), !dbg !700
  %38 = bitcast %struct.stack_st* %37 to %struct.stack_st_X509*, !dbg !698
  %39 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !701
  %40 = getelementptr inbounds %struct.cert, %struct.cert* %39, i32 0, i32 2, !dbg !702
  store %struct.stack_st_X509* %38, %struct.stack_st_X509** %40, align 8, !dbg !703
  call void @llvm.dbg.declare(metadata i32* %9, metadata !704, metadata !594), !dbg !706
  store i32 0, i32* %9, align 4, !dbg !706
  br label %41, !dbg !707

; <label>:41:                                     ; preds = %57, %22
  %42 = load i32, i32* %9, align 4, !dbg !708
  %43 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !711
  %44 = getelementptr inbounds %struct.cert, %struct.cert* %43, i32 0, i32 2, !dbg !712
  %45 = load %struct.stack_st_X509*, %struct.stack_st_X509** %44, align 8, !dbg !712
  %46 = bitcast %struct.stack_st_X509* %45 to %struct.stack_st*, !dbg !713
  %47 = call i32 @sk_num(%struct.stack_st* %46), !dbg !711
  %48 = icmp slt i32 %42, %47, !dbg !714
  br i1 %48, label %49, label %60, !dbg !715

; <label>:49:                                     ; preds = %41
  %50 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !716
  %51 = getelementptr inbounds %struct.cert, %struct.cert* %50, i32 0, i32 2, !dbg !718
  %52 = load %struct.stack_st_X509*, %struct.stack_st_X509** %51, align 8, !dbg !718
  %53 = bitcast %struct.stack_st_X509* %52 to %struct.stack_st*, !dbg !719
  %54 = load i32, i32* %9, align 4, !dbg !716
  %55 = call i8* @sk_value(%struct.stack_st* %53, i32 %54), !dbg !720
  %56 = bitcast i8* %55 to %struct.x509_st*, !dbg !721
  call void @ssl_x509_refcount_inc(%struct.x509_st* %56), !dbg !722
  br label %57, !dbg !724

; <label>:57:                                     ; preds = %49
  %58 = load i32, i32* %9, align 4, !dbg !725
  %59 = add nsw i32 %58, 1, !dbg !725
  store i32 %59, i32* %9, align 4, !dbg !725
  br label %41, !dbg !727, !llvm.loop !728

; <label>:60:                                     ; preds = %41
  %61 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !730
  %62 = getelementptr inbounds %struct.cert, %struct.cert* %61, i32 0, i32 4, !dbg !731
  store i64 1, i64* %62, align 8, !dbg !732
  %63 = load %struct.cert*, %struct.cert** %8, align 8, !dbg !733
  store %struct.cert* %63, %struct.cert** %4, align 8, !dbg !734
  br label %64, !dbg !734

; <label>:64:                                     ; preds = %60, %19, %13
  %65 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !735
  ret %struct.cert* %65, !dbg !735
}

declare void @ssl_key_refcount_inc(%struct.evp_pkey_st*) #4

declare void @ssl_x509_refcount_inc(%struct.x509_st*) #4

declare %struct.stack_st* @sk_dup(%struct.stack_st*) #4

declare i32 @sk_num(%struct.stack_st*) #4

declare i8* @sk_value(%struct.stack_st*, i32) #4

; Function Attrs: nounwind uwtable
define noalias %struct.cert* @cert_new_load(i8*) #0 !dbg !736 {
  %2 = alloca %struct.cert*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cert*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !739, metadata !594), !dbg !740
  call void @llvm.dbg.declare(metadata %struct.cert** %4, metadata !741, metadata !594), !dbg !742
  %5 = call noalias i8* @malloc(i64 72) #5, !dbg !743
  %6 = bitcast i8* %5 to %struct.cert*, !dbg !743
  store %struct.cert* %6, %struct.cert** %4, align 8, !dbg !745
  %7 = icmp ne %struct.cert* %6, null, !dbg !745
  br i1 %7, label %9, label %8, !dbg !746

; <label>:8:                                      ; preds = %1
  store %struct.cert* null, %struct.cert** %2, align 8, !dbg !747
  br label %59, !dbg !747

; <label>:9:                                      ; preds = %1
  %10 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !748
  %11 = bitcast %struct.cert* %10 to i8*, !dbg !749
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 72, i32 8, i1 false), !dbg !749
  %12 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !750
  %13 = getelementptr inbounds %struct.cert, %struct.cert* %12, i32 0, i32 3, !dbg !752
  %14 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %13, %union.pthread_mutexattr_t* null) #5, !dbg !753
  %15 = icmp ne i32 %14, 0, !dbg !753
  br i1 %15, label %16, label %19, !dbg !754

; <label>:16:                                     ; preds = %9
  %17 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !755
  %18 = bitcast %struct.cert* %17 to i8*, !dbg !755
  call void @free(i8* %18) #5, !dbg !757
  store %struct.cert* null, %struct.cert** %2, align 8, !dbg !758
  br label %59, !dbg !758

; <label>:19:                                     ; preds = %9
  %20 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !759
  %21 = getelementptr inbounds %struct.cert, %struct.cert* %20, i32 0, i32 1, !dbg !761
  %22 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !762
  %23 = getelementptr inbounds %struct.cert, %struct.cert* %22, i32 0, i32 2, !dbg !763
  %24 = load i8*, i8** %3, align 8, !dbg !764
  %25 = call i32 @ssl_x509chain_load(%struct.x509_st** %21, %struct.stack_st_X509** %23, i8* %24), !dbg !765
  %26 = icmp eq i32 %25, -1, !dbg !766
  br i1 %26, label %27, label %30, !dbg !767

; <label>:27:                                     ; preds = %19
  %28 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !768
  %29 = bitcast %struct.cert* %28 to i8*, !dbg !768
  call void @free(i8* %29) #5, !dbg !770
  store %struct.cert* null, %struct.cert** %2, align 8, !dbg !771
  br label %59, !dbg !771

; <label>:30:                                     ; preds = %19
  %31 = load i8*, i8** %3, align 8, !dbg !772
  %32 = call noalias %struct.evp_pkey_st* @ssl_key_load(i8* %31), !dbg !773
  %33 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !774
  %34 = getelementptr inbounds %struct.cert, %struct.cert* %33, i32 0, i32 0, !dbg !775
  store %struct.evp_pkey_st* %32, %struct.evp_pkey_st** %34, align 8, !dbg !776
  %35 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !777
  %36 = getelementptr inbounds %struct.cert, %struct.cert* %35, i32 0, i32 0, !dbg !779
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %36, align 8, !dbg !779
  %38 = icmp ne %struct.evp_pkey_st* %37, null, !dbg !777
  br i1 %38, label %55, label %39, !dbg !780

; <label>:39:                                     ; preds = %30
  %40 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !781
  %41 = getelementptr inbounds %struct.cert, %struct.cert* %40, i32 0, i32 1, !dbg !783
  %42 = load %struct.x509_st*, %struct.x509_st** %41, align 8, !dbg !783
  call void @X509_free(%struct.x509_st* %42), !dbg !784
  %43 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !785
  %44 = getelementptr inbounds %struct.cert, %struct.cert* %43, i32 0, i32 2, !dbg !787
  %45 = load %struct.stack_st_X509*, %struct.stack_st_X509** %44, align 8, !dbg !787
  %46 = icmp ne %struct.stack_st_X509* %45, null, !dbg !785
  br i1 %46, label %47, label %52, !dbg !788

; <label>:47:                                     ; preds = %39
  %48 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !789
  %49 = getelementptr inbounds %struct.cert, %struct.cert* %48, i32 0, i32 2, !dbg !791
  %50 = load %struct.stack_st_X509*, %struct.stack_st_X509** %49, align 8, !dbg !791
  %51 = bitcast %struct.stack_st_X509* %50 to %struct.stack_st*, !dbg !792
  call void @sk_pop_free(%struct.stack_st* %51, void (i8*)* bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)), !dbg !789
  br label %52, !dbg !793

; <label>:52:                                     ; preds = %47, %39
  %53 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !794
  %54 = bitcast %struct.cert* %53 to i8*, !dbg !794
  call void @free(i8* %54) #5, !dbg !795
  store %struct.cert* null, %struct.cert** %2, align 8, !dbg !796
  br label %59, !dbg !796

; <label>:55:                                     ; preds = %30
  %56 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !797
  %57 = getelementptr inbounds %struct.cert, %struct.cert* %56, i32 0, i32 4, !dbg !798
  store i64 1, i64* %57, align 8, !dbg !799
  %58 = load %struct.cert*, %struct.cert** %4, align 8, !dbg !800
  store %struct.cert* %58, %struct.cert** %2, align 8, !dbg !801
  br label %59, !dbg !801

; <label>:59:                                     ; preds = %55, %52, %27, %16, %8
  %60 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !802
  ret %struct.cert* %60, !dbg !802
}

declare i32 @ssl_x509chain_load(%struct.x509_st**, %struct.stack_st_X509**, i8*) #4

declare noalias %struct.evp_pkey_st* @ssl_key_load(i8*) #4

declare void @X509_free(%struct.x509_st*) #4

declare void @sk_pop_free(%struct.stack_st*, void (i8*)*) #4

; Function Attrs: nounwind uwtable
define void @cert_refcount_inc(%struct.cert* nonnull) #0 !dbg !803 {
  %2 = alloca %struct.cert*, align 8
  store %struct.cert* %0, %struct.cert** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cert** %2, metadata !806, metadata !594), !dbg !807
  %3 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !808
  %4 = getelementptr inbounds %struct.cert, %struct.cert* %3, i32 0, i32 3, !dbg !809
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #5, !dbg !810
  %6 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !811
  %7 = getelementptr inbounds %struct.cert, %struct.cert* %6, i32 0, i32 4, !dbg !812
  %8 = load i64, i64* %7, align 8, !dbg !813
  %9 = add i64 %8, 1, !dbg !813
  store i64 %9, i64* %7, align 8, !dbg !813
  %10 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !814
  %11 = getelementptr inbounds %struct.cert, %struct.cert* %10, i32 0, i32 3, !dbg !815
  %12 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %11) #5, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind uwtable
define void @cert_set_key(%struct.cert* nonnull, %struct.evp_pkey_st*) #0 !dbg !818 {
  %3 = alloca %struct.cert*, align 8
  %4 = alloca %struct.evp_pkey_st*, align 8
  store %struct.cert* %0, %struct.cert** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cert** %3, metadata !821, metadata !594), !dbg !822
  store %struct.evp_pkey_st* %1, %struct.evp_pkey_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %4, metadata !823, metadata !594), !dbg !824
  %5 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !825
  %6 = getelementptr inbounds %struct.cert, %struct.cert* %5, i32 0, i32 3, !dbg !826
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %6) #5, !dbg !827
  %8 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !828
  %9 = getelementptr inbounds %struct.cert, %struct.cert* %8, i32 0, i32 0, !dbg !830
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %9, align 8, !dbg !830
  %11 = icmp ne %struct.evp_pkey_st* %10, null, !dbg !828
  br i1 %11, label %12, label %16, !dbg !831

; <label>:12:                                     ; preds = %2
  %13 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !832
  %14 = getelementptr inbounds %struct.cert, %struct.cert* %13, i32 0, i32 0, !dbg !834
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %14, align 8, !dbg !834
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %15), !dbg !835
  br label %16, !dbg !836

; <label>:16:                                     ; preds = %12, %2
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !837
  %18 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !838
  %19 = getelementptr inbounds %struct.cert, %struct.cert* %18, i32 0, i32 0, !dbg !839
  store %struct.evp_pkey_st* %17, %struct.evp_pkey_st** %19, align 8, !dbg !840
  %20 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !841
  %21 = getelementptr inbounds %struct.cert, %struct.cert* %20, i32 0, i32 0, !dbg !843
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %21, align 8, !dbg !843
  %23 = icmp ne %struct.evp_pkey_st* %22, null, !dbg !841
  br i1 %23, label %24, label %28, !dbg !844

; <label>:24:                                     ; preds = %16
  %25 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !845
  %26 = getelementptr inbounds %struct.cert, %struct.cert* %25, i32 0, i32 0, !dbg !847
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %26, align 8, !dbg !847
  call void @ssl_key_refcount_inc(%struct.evp_pkey_st* %27), !dbg !848
  br label %28, !dbg !849

; <label>:28:                                     ; preds = %24, %16
  %29 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !850
  %30 = getelementptr inbounds %struct.cert, %struct.cert* %29, i32 0, i32 3, !dbg !851
  %31 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %30) #5, !dbg !852
  ret void, !dbg !853
}

declare void @EVP_PKEY_free(%struct.evp_pkey_st*) #4

; Function Attrs: nounwind uwtable
define void @cert_set_crt(%struct.cert* nonnull, %struct.x509_st*) #0 !dbg !854 {
  %3 = alloca %struct.cert*, align 8
  %4 = alloca %struct.x509_st*, align 8
  store %struct.cert* %0, %struct.cert** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cert** %3, metadata !857, metadata !594), !dbg !858
  store %struct.x509_st* %1, %struct.x509_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %4, metadata !859, metadata !594), !dbg !860
  %5 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !861
  %6 = getelementptr inbounds %struct.cert, %struct.cert* %5, i32 0, i32 3, !dbg !862
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %6) #5, !dbg !863
  %8 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !864
  %9 = getelementptr inbounds %struct.cert, %struct.cert* %8, i32 0, i32 1, !dbg !866
  %10 = load %struct.x509_st*, %struct.x509_st** %9, align 8, !dbg !866
  %11 = icmp ne %struct.x509_st* %10, null, !dbg !864
  br i1 %11, label %12, label %16, !dbg !867

; <label>:12:                                     ; preds = %2
  %13 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !868
  %14 = getelementptr inbounds %struct.cert, %struct.cert* %13, i32 0, i32 1, !dbg !870
  %15 = load %struct.x509_st*, %struct.x509_st** %14, align 8, !dbg !870
  call void @X509_free(%struct.x509_st* %15), !dbg !871
  br label %16, !dbg !872

; <label>:16:                                     ; preds = %12, %2
  %17 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !873
  %18 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !874
  %19 = getelementptr inbounds %struct.cert, %struct.cert* %18, i32 0, i32 1, !dbg !875
  store %struct.x509_st* %17, %struct.x509_st** %19, align 8, !dbg !876
  %20 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !877
  %21 = getelementptr inbounds %struct.cert, %struct.cert* %20, i32 0, i32 1, !dbg !879
  %22 = load %struct.x509_st*, %struct.x509_st** %21, align 8, !dbg !879
  %23 = icmp ne %struct.x509_st* %22, null, !dbg !877
  br i1 %23, label %24, label %28, !dbg !880

; <label>:24:                                     ; preds = %16
  %25 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !881
  %26 = getelementptr inbounds %struct.cert, %struct.cert* %25, i32 0, i32 1, !dbg !883
  %27 = load %struct.x509_st*, %struct.x509_st** %26, align 8, !dbg !883
  call void @ssl_x509_refcount_inc(%struct.x509_st* %27), !dbg !884
  br label %28, !dbg !885

; <label>:28:                                     ; preds = %24, %16
  %29 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !886
  %30 = getelementptr inbounds %struct.cert, %struct.cert* %29, i32 0, i32 3, !dbg !887
  %31 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %30) #5, !dbg !888
  ret void, !dbg !889
}

; Function Attrs: nounwind uwtable
define void @cert_set_chain(%struct.cert* nonnull, %struct.stack_st_X509*) #0 !dbg !890 {
  %3 = alloca %struct.cert*, align 8
  %4 = alloca %struct.stack_st_X509*, align 8
  %5 = alloca i32, align 4
  store %struct.cert* %0, %struct.cert** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.cert** %3, metadata !893, metadata !594), !dbg !894
  store %struct.stack_st_X509* %1, %struct.stack_st_X509** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stack_st_X509** %4, metadata !895, metadata !594), !dbg !896
  %6 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !897
  %7 = getelementptr inbounds %struct.cert, %struct.cert* %6, i32 0, i32 3, !dbg !898
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %7) #5, !dbg !899
  %9 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !900
  %10 = getelementptr inbounds %struct.cert, %struct.cert* %9, i32 0, i32 2, !dbg !902
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %10, align 8, !dbg !902
  %12 = icmp ne %struct.stack_st_X509* %11, null, !dbg !900
  br i1 %12, label %13, label %18, !dbg !903

; <label>:13:                                     ; preds = %2
  %14 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !904
  %15 = getelementptr inbounds %struct.cert, %struct.cert* %14, i32 0, i32 2, !dbg !906
  %16 = load %struct.stack_st_X509*, %struct.stack_st_X509** %15, align 8, !dbg !906
  %17 = bitcast %struct.stack_st_X509* %16 to %struct.stack_st*, !dbg !907
  call void @sk_pop_free(%struct.stack_st* %17, void (i8*)* bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)), !dbg !904
  br label %18, !dbg !908

; <label>:18:                                     ; preds = %13, %2
  %19 = load %struct.stack_st_X509*, %struct.stack_st_X509** %4, align 8, !dbg !909
  %20 = icmp ne %struct.stack_st_X509* %19, null, !dbg !909
  br i1 %20, label %21, label %48, !dbg !911

; <label>:21:                                     ; preds = %18
  %22 = load %struct.stack_st_X509*, %struct.stack_st_X509** %4, align 8, !dbg !912
  %23 = bitcast %struct.stack_st_X509* %22 to %struct.stack_st*, !dbg !914
  %24 = call %struct.stack_st* @sk_dup(%struct.stack_st* %23), !dbg !915
  %25 = bitcast %struct.stack_st* %24 to %struct.stack_st_X509*, !dbg !912
  %26 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !916
  %27 = getelementptr inbounds %struct.cert, %struct.cert* %26, i32 0, i32 2, !dbg !917
  store %struct.stack_st_X509* %25, %struct.stack_st_X509** %27, align 8, !dbg !918
  call void @llvm.dbg.declare(metadata i32* %5, metadata !919, metadata !594), !dbg !921
  store i32 0, i32* %5, align 4, !dbg !921
  br label %28, !dbg !922

; <label>:28:                                     ; preds = %44, %21
  %29 = load i32, i32* %5, align 4, !dbg !923
  %30 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !926
  %31 = getelementptr inbounds %struct.cert, %struct.cert* %30, i32 0, i32 2, !dbg !927
  %32 = load %struct.stack_st_X509*, %struct.stack_st_X509** %31, align 8, !dbg !927
  %33 = bitcast %struct.stack_st_X509* %32 to %struct.stack_st*, !dbg !928
  %34 = call i32 @sk_num(%struct.stack_st* %33), !dbg !926
  %35 = icmp slt i32 %29, %34, !dbg !929
  br i1 %35, label %36, label %47, !dbg !930

; <label>:36:                                     ; preds = %28
  %37 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !931
  %38 = getelementptr inbounds %struct.cert, %struct.cert* %37, i32 0, i32 2, !dbg !933
  %39 = load %struct.stack_st_X509*, %struct.stack_st_X509** %38, align 8, !dbg !933
  %40 = bitcast %struct.stack_st_X509* %39 to %struct.stack_st*, !dbg !934
  %41 = load i32, i32* %5, align 4, !dbg !931
  %42 = call i8* @sk_value(%struct.stack_st* %40, i32 %41), !dbg !935
  %43 = bitcast i8* %42 to %struct.x509_st*, !dbg !936
  call void @ssl_x509_refcount_inc(%struct.x509_st* %43), !dbg !937
  br label %44, !dbg !939

; <label>:44:                                     ; preds = %36
  %45 = load i32, i32* %5, align 4, !dbg !940
  %46 = add nsw i32 %45, 1, !dbg !940
  store i32 %46, i32* %5, align 4, !dbg !940
  br label %28, !dbg !942, !llvm.loop !943

; <label>:47:                                     ; preds = %28
  br label %51, !dbg !945

; <label>:48:                                     ; preds = %18
  %49 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !946
  %50 = getelementptr inbounds %struct.cert, %struct.cert* %49, i32 0, i32 2, !dbg !948
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %50, align 8, !dbg !949
  br label %51

; <label>:51:                                     ; preds = %48, %47
  %52 = load %struct.cert*, %struct.cert** %3, align 8, !dbg !950
  %53 = getelementptr inbounds %struct.cert, %struct.cert* %52, i32 0, i32 3, !dbg !951
  %54 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %53) #5, !dbg !952
  ret void, !dbg !953
}

; Function Attrs: nounwind uwtable
define void @cert_free(%struct.cert* nonnull) #0 !dbg !954 {
  %2 = alloca %struct.cert*, align 8
  store %struct.cert* %0, %struct.cert** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cert** %2, metadata !955, metadata !594), !dbg !956
  %3 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !957
  %4 = getelementptr inbounds %struct.cert, %struct.cert* %3, i32 0, i32 3, !dbg !958
  %5 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %4) #5, !dbg !959
  %6 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !960
  %7 = getelementptr inbounds %struct.cert, %struct.cert* %6, i32 0, i32 4, !dbg !961
  %8 = load i64, i64* %7, align 8, !dbg !962
  %9 = add i64 %8, -1, !dbg !962
  store i64 %9, i64* %7, align 8, !dbg !962
  %10 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !963
  %11 = getelementptr inbounds %struct.cert, %struct.cert* %10, i32 0, i32 4, !dbg !965
  %12 = load i64, i64* %11, align 8, !dbg !965
  %13 = icmp ne i64 %12, 0, !dbg !963
  br i1 %13, label %14, label %18, !dbg !966

; <label>:14:                                     ; preds = %1
  %15 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !967
  %16 = getelementptr inbounds %struct.cert, %struct.cert* %15, i32 0, i32 3, !dbg !969
  %17 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %16) #5, !dbg !970
  br label %55, !dbg !971

; <label>:18:                                     ; preds = %1
  %19 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !972
  %20 = getelementptr inbounds %struct.cert, %struct.cert* %19, i32 0, i32 3, !dbg !973
  %21 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %20) #5, !dbg !974
  %22 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !975
  %23 = getelementptr inbounds %struct.cert, %struct.cert* %22, i32 0, i32 3, !dbg !976
  %24 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %23) #5, !dbg !977
  %25 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !978
  %26 = getelementptr inbounds %struct.cert, %struct.cert* %25, i32 0, i32 0, !dbg !980
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %26, align 8, !dbg !980
  %28 = icmp ne %struct.evp_pkey_st* %27, null, !dbg !978
  br i1 %28, label %29, label %33, !dbg !981

; <label>:29:                                     ; preds = %18
  %30 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !982
  %31 = getelementptr inbounds %struct.cert, %struct.cert* %30, i32 0, i32 0, !dbg !984
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %31, align 8, !dbg !984
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %32), !dbg !985
  br label %33, !dbg !986

; <label>:33:                                     ; preds = %29, %18
  %34 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !987
  %35 = getelementptr inbounds %struct.cert, %struct.cert* %34, i32 0, i32 1, !dbg !989
  %36 = load %struct.x509_st*, %struct.x509_st** %35, align 8, !dbg !989
  %37 = icmp ne %struct.x509_st* %36, null, !dbg !987
  br i1 %37, label %38, label %42, !dbg !990

; <label>:38:                                     ; preds = %33
  %39 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !991
  %40 = getelementptr inbounds %struct.cert, %struct.cert* %39, i32 0, i32 1, !dbg !993
  %41 = load %struct.x509_st*, %struct.x509_st** %40, align 8, !dbg !993
  call void @X509_free(%struct.x509_st* %41), !dbg !994
  br label %42, !dbg !995

; <label>:42:                                     ; preds = %38, %33
  %43 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !996
  %44 = getelementptr inbounds %struct.cert, %struct.cert* %43, i32 0, i32 2, !dbg !998
  %45 = load %struct.stack_st_X509*, %struct.stack_st_X509** %44, align 8, !dbg !998
  %46 = icmp ne %struct.stack_st_X509* %45, null, !dbg !996
  br i1 %46, label %47, label %52, !dbg !999

; <label>:47:                                     ; preds = %42
  %48 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !1000
  %49 = getelementptr inbounds %struct.cert, %struct.cert* %48, i32 0, i32 2, !dbg !1002
  %50 = load %struct.stack_st_X509*, %struct.stack_st_X509** %49, align 8, !dbg !1002
  %51 = bitcast %struct.stack_st_X509* %50 to %struct.stack_st*, !dbg !1003
  call void @sk_pop_free(%struct.stack_st* %51, void (i8*)* bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)), !dbg !1000
  br label %52, !dbg !1004

; <label>:52:                                     ; preds = %47, %42
  %53 = load %struct.cert*, %struct.cert** %2, align 8, !dbg !1005
  %54 = bitcast %struct.cert* %53 to i8*, !dbg !1005
  call void @free(i8* %54) #5, !dbg !1006
  br label %55, !dbg !1007

; <label>:55:                                     ; preds = %52, %14
  ret void, !dbg !1008
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!549, !550}
!llvm.ident = !{!551}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line4-cert.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !27, !28, !546}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !6, line: 301, size: 256, align: 64, elements: !7)
!6 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5, file: !6, line: 301, baseType: !9, size: 256, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !10, line: 72, baseType: !11)
!10 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !10, line: 66, size: 256, align: 64, elements: !12)
!12 = !{!13, !15, !19, !20, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !11, file: !10, line: 67, baseType: !14, size: 32, align: 32)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !11, file: !10, line: 68, baseType: !16, size: 64, align: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !11, file: !10, line: 69, baseType: !14, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !11, file: !10, line: 70, baseType: !14, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !11, file: !10, line: 71, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!14, !25, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !30, line: 154, baseType: !31)
!30 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !6, line: 270, size: 1472, align: 64, elements: !32)
!32 = !{!33, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !502, !506, !511, !513, !524, !528}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !31, file: !6, line: 271, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !6, line: 254, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !6, line: 242, size: 832, align: 64, elements: !37)
!37 = !{!38, !51, !52, !134, !159, !168, !169, !461, !462, !463, !468}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !36, file: !6, line: 243, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !30, line: 83, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !42, line: 247, size: 192, align: 64, elements: !43)
!42 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!43 = !{!44, !45, !46, !49}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !41, file: !42, line: 248, baseType: !14, size: 32, align: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !42, line: 249, baseType: !14, size: 32, align: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !42, line: 250, baseType: !47, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !42, line: 256, baseType: !50, size: 64, align: 64, offset: 128)
!50 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !36, file: !6, line: 244, baseType: !39, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !36, file: !6, line: 245, baseType: !53, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !30, line: 155, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !6, line: 143, size: 128, align: 64, elements: !56)
!56 = !{!57, !72}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !55, file: !6, line: 144, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !30, line: 103, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !42, line: 218, size: 320, align: 64, elements: !61)
!61 = !{!62, !65, !66, !67, !68, !71}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !60, file: !42, line: 219, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !60, file: !42, line: 219, baseType: !63, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !60, file: !42, line: 220, baseType: !14, size: 32, align: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !60, file: !42, line: 221, baseType: !14, size: 32, align: 32, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !60, file: !42, line: 222, baseType: !69, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !42, line: 223, baseType: !14, size: 32, align: 32, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !55, file: !6, line: 145, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !42, line: 561, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !42, line: 532, size: 128, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !42, line: 533, baseType: !14, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75, file: !42, line: 560, baseType: !79, size: 64, align: 64, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !42, line: 534, size: 64, align: 64, elements: !80)
!80 = !{!81, !82, !84, !87, !88, !89, !92, !95, !98, !101, !104, !107, !110, !113, !116, !119, !122, !125, !128, !129, !130}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !79, file: !42, line: 535, baseType: !17, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !79, file: !42, line: 536, baseType: !83, size: 32, align: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !30, line: 99, baseType: !14)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !79, file: !42, line: 537, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !30, line: 98, baseType: !41)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !79, file: !42, line: 538, baseType: !58, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !79, file: !42, line: 539, baseType: !39, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !79, file: !42, line: 540, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !30, line: 84, baseType: !41)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !79, file: !42, line: 541, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !30, line: 85, baseType: !41)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !79, file: !42, line: 542, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !30, line: 86, baseType: !41)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !79, file: !42, line: 543, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !30, line: 87, baseType: !41)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !79, file: !42, line: 544, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !30, line: 88, baseType: !41)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !79, file: !42, line: 545, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !30, line: 89, baseType: !41)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !79, file: !42, line: 546, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !30, line: 90, baseType: !41)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !79, file: !42, line: 547, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !30, line: 92, baseType: !41)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !79, file: !42, line: 548, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !30, line: 91, baseType: !41)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !79, file: !42, line: 549, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !30, line: 93, baseType: !41)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !79, file: !42, line: 550, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !30, line: 95, baseType: !41)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !79, file: !42, line: 551, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !30, line: 96, baseType: !41)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !79, file: !42, line: 552, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !30, line: 97, baseType: !41)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !79, file: !42, line: 557, baseType: !85, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !79, file: !42, line: 558, baseType: !85, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !79, file: !42, line: 559, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !42, line: 307, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !42, line: 307, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !36, file: !6, line: 246, baseType: !135, size: 64, align: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !30, line: 159, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !6, line: 179, size: 320, align: 64, elements: !138)
!138 = !{!139, !144, !145, !157, !158}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !137, file: !6, line: 180, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !6, line: 175, size: 256, align: 64, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !141, file: !6, line: 175, baseType: !9, size: 256, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !137, file: !6, line: 181, baseType: !14, size: 32, align: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !137, file: !6, line: 183, baseType: !146, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !30, line: 127, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !149, line: 77, size: 192, align: 64, elements: !150)
!149 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!150 = !{!151, !155, !156}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !148, file: !149, line: 78, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 216, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!154 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !148, file: !149, line: 79, baseType: !17, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !148, file: !149, line: 80, baseType: !152, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !137, file: !6, line: 188, baseType: !47, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !137, file: !6, line: 189, baseType: !14, size: 32, align: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !36, file: !6, line: 247, baseType: !160, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !6, line: 155, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !6, line: 152, size: 128, align: 64, elements: !163)
!163 = !{!164, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !162, file: !6, line: 153, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !30, line: 94, baseType: !41)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !162, file: !6, line: 154, baseType: !165, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !36, file: !6, line: 248, baseType: !135, size: 64, align: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !36, file: !6, line: 249, baseType: !170, size: 64, align: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !30, line: 160, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !6, line: 157, size: 192, align: 64, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !172, file: !6, line: 158, baseType: !53, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !172, file: !6, line: 159, baseType: !93, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !172, file: !6, line: 160, baseType: !177, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !30, line: 133, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !180, line: 129, size: 448, align: 64, elements: !181)
!180 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!181 = !{!182, !183, !184, !185, !190, !194, !455, !456}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !179, file: !180, line: 130, baseType: !14, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !179, file: !180, line: 131, baseType: !14, size: 32, align: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !179, file: !180, line: 132, baseType: !14, size: 32, align: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !179, file: !180, line: 133, baseType: !186, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !30, line: 135, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !30, line: 135, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !179, file: !180, line: 134, baseType: !191, size: 64, align: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !30, line: 177, baseType: !193)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !30, line: 177, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !179, file: !180, line: 149, baseType: !195, size: 64, align: 64, offset: 256)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 135, size: 64, align: 64, elements: !196)
!196 = !{!197, !198, !330, !399, !452}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !195, file: !180, line: 136, baseType: !17, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !195, file: !180, line: 138, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !201, line: 132, size: 1344, align: 64, elements: !202)
!201 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!202 = !{!203, !204, !205, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !319, !320, !321, !322, !323, !324, !325, !329}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !200, file: !201, line: 137, baseType: !14, size: 32, align: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !200, file: !201, line: 138, baseType: !50, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !200, file: !201, line: 139, baseType: !206, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !30, line: 147, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !201, line: 85, size: 896, align: 64, elements: !210)
!210 = !{!211, !212, !218, !219, !220, !221, !241, !258, !262, !263, !264, !265, !273, !277}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !201, line: 86, baseType: !63, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !209, file: !201, line: 87, baseType: !213, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!14, !14, !69, !47, !216, !14}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !30, line: 146, baseType: !200)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !209, file: !201, line: 89, baseType: !213, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !209, file: !201, line: 91, baseType: !213, size: 64, align: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !209, file: !201, line: 93, baseType: !213, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !209, file: !201, line: 96, baseType: !222, size: 64, align: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!14, !225, !236, !216, !238}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !30, line: 120, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !228, line: 313, size: 192, align: 64, elements: !229)
!228 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!229 = !{!230, !232, !233, !234, !235}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !227, file: !228, line: 314, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !227, file: !228, line: 316, baseType: !14, size: 32, align: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !227, file: !228, line: 318, baseType: !14, size: 32, align: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !227, file: !228, line: 319, baseType: !14, size: 32, align: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !228, line: 320, baseType: !14, size: 32, align: 32, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !30, line: 121, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !30, line: 121, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !209, file: !201, line: 98, baseType: !242, size: 64, align: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!14, !225, !236, !236, !236, !238, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !30, line: 123, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !228, line: 324, size: 832, align: 64, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !257}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !247, file: !228, line: 325, baseType: !14, size: 32, align: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !247, file: !228, line: 326, baseType: !226, size: 192, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !247, file: !228, line: 327, baseType: !226, size: 192, align: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !247, file: !228, line: 328, baseType: !226, size: 192, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !247, file: !228, line: 330, baseType: !254, size: 128, align: 64, offset: 640)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, align: 64, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 2)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !228, line: 333, baseType: !14, size: 32, align: 32, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !209, file: !201, line: 101, baseType: !259, size: 64, align: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!14, !216}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !209, file: !201, line: 103, baseType: !259, size: 64, align: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !201, line: 105, baseType: !14, size: 32, align: 32, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !209, file: !201, line: 107, baseType: !17, size: 64, align: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !209, file: !201, line: 116, baseType: !266, size: 64, align: 64, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!14, !14, !69, !269, !47, !270, !271}
!269 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !209, file: !201, line: 120, baseType: !274, size: 64, align: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!14, !14, !69, !269, !69, !269, !271}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !209, file: !201, line: 129, baseType: !278, size: 64, align: 64, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!14, !216, !14, !225, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !30, line: 125, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !228, line: 349, size: 192, align: 64, elements: !284)
!284 = !{!285, !286, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !283, file: !228, line: 350, baseType: !269, size: 32, align: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !283, file: !228, line: 351, baseType: !287, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !283, file: !228, line: 357, baseType: !289, size: 64, align: 64, offset: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !228, line: 352, size: 64, align: 64, elements: !290)
!290 = !{!291, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !289, file: !228, line: 354, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !14, !14, !287}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !289, file: !228, line: 356, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!14, !14, !14, !281}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !200, file: !201, line: 141, baseType: !191, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !200, file: !201, line: 142, baseType: !225, size: 64, align: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !200, file: !201, line: 143, baseType: !225, size: 64, align: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !200, file: !201, line: 144, baseType: !225, size: 64, align: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !200, file: !201, line: 145, baseType: !225, size: 64, align: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !200, file: !201, line: 146, baseType: !225, size: 64, align: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !200, file: !201, line: 147, baseType: !225, size: 64, align: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !200, file: !201, line: 148, baseType: !225, size: 64, align: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !200, file: !201, line: 149, baseType: !225, size: 64, align: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !200, file: !201, line: 151, baseType: !309, size: 128, align: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !30, line: 195, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !311, line: 292, size: 128, align: 64, elements: !312)
!311 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!312 = !{!313, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !310, file: !311, line: 293, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !311, line: 297, size: 256, align: 64, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !315, file: !311, line: 297, baseType: !9, size: 256, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !310, file: !311, line: 295, baseType: !14, size: 32, align: 32, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !200, file: !201, line: 152, baseType: !14, size: 32, align: 32, offset: 896)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !201, line: 153, baseType: !14, size: 32, align: 32, offset: 928)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !200, file: !201, line: 155, baseType: !245, size: 64, align: 64, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !200, file: !201, line: 156, baseType: !245, size: 64, align: 64, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !200, file: !201, line: 157, baseType: !245, size: 64, align: 64, offset: 1088)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !200, file: !201, line: 162, baseType: !17, size: 64, align: 64, offset: 1152)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !200, file: !201, line: 163, baseType: !326, size: 64, align: 64, offset: 1216)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !30, line: 122, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !30, line: 122, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !200, file: !201, line: 164, baseType: !326, size: 64, align: 64, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !195, file: !180, line: 141, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !333, line: 155, size: 1088, align: 64, elements: !334)
!333 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !398}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !332, file: !333, line: 160, baseType: !14, size: 32, align: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !332, file: !333, line: 161, baseType: !50, size: 64, align: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !332, file: !333, line: 162, baseType: !14, size: 32, align: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !332, file: !333, line: 163, baseType: !225, size: 64, align: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !332, file: !333, line: 164, baseType: !225, size: 64, align: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !332, file: !333, line: 165, baseType: !225, size: 64, align: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !332, file: !333, line: 166, baseType: !225, size: 64, align: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !332, file: !333, line: 167, baseType: !225, size: 64, align: 64, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !332, file: !333, line: 168, baseType: !225, size: 64, align: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !332, file: !333, line: 169, baseType: !225, size: 64, align: 64, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !333, line: 170, baseType: !14, size: 32, align: 32, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !332, file: !333, line: 172, baseType: !245, size: 64, align: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !332, file: !333, line: 173, baseType: !14, size: 32, align: 32, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !332, file: !333, line: 174, baseType: !309, size: 128, align: 64, offset: 832)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !332, file: !333, line: 175, baseType: !350, size: 64, align: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !30, line: 144, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !333, line: 129, size: 768, align: 64, elements: !354)
!354 = !{!355, !356, !368, !373, !377, !381, !385, !389, !390, !391, !392, !397}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !333, line: 130, baseType: !63, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !353, file: !333, line: 131, baseType: !357, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !69, !14, !366}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !333, line: 127, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !333, line: 124, size: 128, align: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !362, file: !333, line: 125, baseType: !225, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !362, file: !333, line: 126, baseType: !225, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !30, line: 143, baseType: !332)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !353, file: !333, line: 132, baseType: !369, size: 64, align: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!14, !366, !238, !372, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !353, file: !333, line: 134, baseType: !374, size: 64, align: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!14, !69, !14, !360, !366}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !353, file: !333, line: 136, baseType: !378, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!14, !366, !225, !225, !225, !225, !225, !225, !238, !245}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !353, file: !333, line: 140, baseType: !382, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!14, !366, !225, !225, !236, !236, !238, !245}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !353, file: !333, line: 142, baseType: !386, size: 64, align: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!14, !366}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !353, file: !333, line: 143, baseType: !386, size: 64, align: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !333, line: 144, baseType: !14, size: 32, align: 32, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !353, file: !333, line: 145, baseType: !17, size: 64, align: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !353, file: !333, line: 147, baseType: !393, size: 64, align: 64, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!14, !366, !14, !69, !14, !396, !231, !281}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !353, file: !333, line: 152, baseType: !386, size: 64, align: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !332, file: !333, line: 177, baseType: !191, size: 64, align: 64, offset: 1024)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !195, file: !180, line: 144, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !402, line: 135, size: 1152, align: 64, elements: !403)
!402 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !451}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !401, file: !402, line: 140, baseType: !14, size: 32, align: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !401, file: !402, line: 141, baseType: !14, size: 32, align: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !401, file: !402, line: 142, baseType: !225, size: 64, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !401, file: !402, line: 143, baseType: !225, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !401, file: !402, line: 144, baseType: !50, size: 64, align: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !401, file: !402, line: 145, baseType: !225, size: 64, align: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !401, file: !402, line: 146, baseType: !225, size: 64, align: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !402, line: 147, baseType: !14, size: 32, align: 32, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !401, file: !402, line: 148, baseType: !245, size: 64, align: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !401, file: !402, line: 150, baseType: !225, size: 64, align: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !401, file: !402, line: 151, baseType: !225, size: 64, align: 64, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !401, file: !402, line: 152, baseType: !47, size: 64, align: 64, offset: 640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !401, file: !402, line: 153, baseType: !14, size: 32, align: 32, offset: 704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !401, file: !402, line: 154, baseType: !225, size: 64, align: 64, offset: 768)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !401, file: !402, line: 155, baseType: !14, size: 32, align: 32, offset: 832)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !401, file: !402, line: 156, baseType: !309, size: 128, align: 64, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !401, file: !402, line: 157, baseType: !421, size: 64, align: 64, offset: 1024)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !30, line: 141, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !402, line: 117, size: 576, align: 64, elements: !425)
!425 = !{!426, !427, !433, !437, !443, !444, !445, !446, !447}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !402, line: 118, baseType: !63, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !424, file: !402, line: 120, baseType: !428, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!14, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !30, line: 140, baseType: !401)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !424, file: !402, line: 121, baseType: !434, size: 64, align: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!14, !47, !236, !431}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !424, file: !402, line: 123, baseType: !438, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!14, !441, !225, !236, !236, !236, !238, !245}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !424, file: !402, line: 126, baseType: !428, size: 64, align: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !424, file: !402, line: 127, baseType: !428, size: 64, align: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !402, line: 128, baseType: !14, size: 32, align: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !424, file: !402, line: 129, baseType: !17, size: 64, align: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !424, file: !402, line: 131, baseType: !448, size: 64, align: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!14, !431, !14, !14, !281}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !401, file: !402, line: 158, baseType: !191, size: 64, align: 64, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !195, file: !180, line: 147, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !180, line: 147, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !179, file: !180, line: 150, baseType: !14, size: 32, align: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !179, file: !180, line: 151, baseType: !457, size: 64, align: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !6, line: 223, size: 256, align: 64, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !458, file: !6, line: 223, baseType: !9, size: 256, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !36, file: !6, line: 250, baseType: !93, size: 64, align: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !36, file: !6, line: 251, baseType: !93, size: 64, align: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !36, file: !6, line: 252, baseType: !464, size: 64, align: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !6, line: 204, size: 256, align: 64, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !465, file: !6, line: 204, baseType: !9, size: 256, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !36, file: !6, line: 253, baseType: !469, size: 192, align: 64, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !42, line: 269, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !42, line: 265, size: 192, align: 64, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !470, file: !42, line: 266, baseType: !47, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !470, file: !42, line: 267, baseType: !50, size: 64, align: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !470, file: !42, line: 268, baseType: !14, size: 32, align: 32, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !31, file: !6, line: 272, baseType: !53, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !31, file: !6, line: 273, baseType: !93, size: 64, align: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !31, file: !6, line: 274, baseType: !14, size: 32, align: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !31, file: !6, line: 275, baseType: !14, size: 32, align: 32, offset: 224)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !6, line: 276, baseType: !17, size: 64, align: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !31, file: !6, line: 277, baseType: !309, size: 128, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !31, file: !6, line: 279, baseType: !50, size: 64, align: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !31, file: !6, line: 280, baseType: !50, size: 64, align: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !31, file: !6, line: 281, baseType: !154, size: 64, align: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !31, file: !6, line: 282, baseType: !154, size: 64, align: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !31, file: !6, line: 283, baseType: !154, size: 64, align: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !31, file: !6, line: 284, baseType: !154, size: 64, align: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !31, file: !6, line: 285, baseType: !96, size: 64, align: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !31, file: !6, line: 286, baseType: !489, size: 64, align: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !30, line: 186, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !492, line: 262, size: 192, align: 64, elements: !493)
!492 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!493 = !{!494, !495, !501}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !491, file: !492, line: 263, baseType: !96, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !491, file: !492, line: 264, baseType: !496, size: 64, align: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !492, line: 209, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !492, line: 220, size: 256, align: 64, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !498, file: !492, line: 220, baseType: !9, size: 256, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !491, file: !492, line: 265, baseType: !39, size: 64, align: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !31, file: !6, line: 287, baseType: !503, size: 64, align: 64, offset: 960)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !30, line: 184, baseType: !505)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !30, line: 184, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !31, file: !6, line: 288, baseType: !507, size: 64, align: 64, offset: 1024)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !492, line: 259, size: 256, align: 64, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !508, file: !492, line: 259, baseType: !9, size: 256, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !31, file: !6, line: 289, baseType: !512, size: 64, align: 64, offset: 1088)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !31, file: !6, line: 290, baseType: !514, size: 64, align: 64, offset: 1152)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !30, line: 189, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !492, line: 332, size: 128, align: 64, elements: !517)
!517 = !{!518, !523}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !516, file: !492, line: 333, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !492, line: 330, size: 256, align: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !520, file: !492, line: 330, baseType: !9, size: 256, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !516, file: !492, line: 334, baseType: !519, size: 64, align: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !31, file: !6, line: 296, baseType: !525, size: 160, align: 8, offset: 1216)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, align: 8, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 20)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !31, file: !6, line: 298, baseType: !529, size: 64, align: 64, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !6, line: 268, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !6, line: 262, size: 320, align: 64, elements: !532)
!532 = !{!533, !538, !539, !540, !541}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !531, file: !6, line: 263, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !42, line: 801, size: 256, align: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !535, file: !42, line: 801, baseType: !9, size: 256, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !531, file: !6, line: 264, baseType: !534, size: 64, align: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !531, file: !6, line: 265, baseType: !126, size: 64, align: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !531, file: !6, line: 266, baseType: !96, size: 64, align: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !531, file: !6, line: 267, baseType: !542, size: 64, align: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !42, line: 170, size: 256, align: 64, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !543, file: !42, line: 170, baseType: !9, size: 256, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !287}
!549 = !{i32 2, !"Dwarf Version", i32 4}
!550 = !{i32 2, !"Debug Info Version", i32 3}
!551 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!552 = distinct !DISubprogram(name: "cert_new", scope: !553, file: !553, line: 40, type: !554, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!553 = !DIFile(filename: "cert.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!554 = !DISubroutineType(types: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "cert_t", file: !558, line: 43, baseType: !559)
!558 = !DIFile(filename: "cert.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cert", file: !558, line: 37, size: 576, align: 64, elements: !560)
!560 = !{!561, !562, !563, !564, !592}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !559, file: !558, line: 38, baseType: !177, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "crt", scope: !559, file: !558, line: 39, baseType: !28, size: 64, align: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !559, file: !558, line: 40, baseType: !4, size: 64, align: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !559, file: !558, line: 41, baseType: !565, size: 320, align: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !566, line: 128, baseType: !567)
!566 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !566, line: 90, size: 320, align: 64, elements: !568)
!568 = !{!569, !587, !591}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !567, file: !566, line: 125, baseType: !570, size: 320, align: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !566, line: 92, size: 320, align: 64, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !579, !580}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !570, file: !566, line: 94, baseType: !14, size: 32, align: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !570, file: !566, line: 95, baseType: !269, size: 32, align: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !570, file: !566, line: 96, baseType: !14, size: 32, align: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !570, file: !566, line: 98, baseType: !269, size: 32, align: 32, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !570, file: !566, line: 102, baseType: !14, size: 32, align: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !570, file: !566, line: 104, baseType: !578, size: 16, align: 16, offset: 160)
!578 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !570, file: !566, line: 105, baseType: !578, size: 16, align: 16, offset: 176)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !570, file: !566, line: 106, baseType: !581, size: 128, align: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !566, line: 79, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !566, line: 75, size: 128, align: 64, elements: !583)
!583 = !{!584, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !582, file: !566, line: 77, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !582, file: !566, line: 78, baseType: !585, size: 64, align: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !567, file: !566, line: 126, baseType: !588, size: 320, align: 8)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 320, align: 8, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 40)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !567, file: !566, line: 127, baseType: !50, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !559, file: !558, line: 42, baseType: !152, size: 64, align: 64, offset: 512)
!593 = !DILocalVariable(name: "c", scope: !552, file: !553, line: 42, type: !556)
!594 = !DIExpression()
!595 = !DILocation(line: 42, column: 10, scope: !552)
!596 = !DILocation(line: 44, column: 12, scope: !597)
!597 = distinct !DILexicalBlock(scope: !552, file: !553, line: 44, column: 6)
!598 = !DILocation(line: 44, column: 10, scope: !597)
!599 = !DILocation(line: 44, column: 6, scope: !552)
!600 = !DILocation(line: 45, column: 3, scope: !597)
!601 = !DILocation(line: 46, column: 9, scope: !552)
!602 = !DILocation(line: 46, column: 2, scope: !552)
!603 = !DILocation(line: 47, column: 26, scope: !604)
!604 = distinct !DILexicalBlock(scope: !552, file: !553, line: 47, column: 6)
!605 = !DILocation(line: 47, column: 29, scope: !604)
!606 = !DILocation(line: 47, column: 6, scope: !604)
!607 = !DILocation(line: 47, column: 6, scope: !552)
!608 = !DILocation(line: 48, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !604, file: !553, line: 47, column: 42)
!610 = !DILocation(line: 48, column: 3, scope: !609)
!611 = !DILocation(line: 49, column: 3, scope: !609)
!612 = !DILocation(line: 51, column: 2, scope: !552)
!613 = !DILocation(line: 51, column: 5, scope: !552)
!614 = !DILocation(line: 51, column: 16, scope: !552)
!615 = !DILocation(line: 52, column: 9, scope: !552)
!616 = !DILocation(line: 52, column: 2, scope: !552)
!617 = !DILocation(line: 53, column: 1, scope: !552)
!618 = distinct !DISubprogram(name: "cert_new3", scope: !553, file: !553, line: 60, type: !619, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!619 = !DISubroutineType(types: !620)
!620 = !{!556, !177, !28, !4}
!621 = !DILocalVariable(name: "key", arg: 1, scope: !618, file: !553, line: 60, type: !177)
!622 = !DILocation(line: 60, column: 21, scope: !618)
!623 = !DILocalVariable(name: "crt", arg: 2, scope: !618, file: !553, line: 60, type: !28)
!624 = !DILocation(line: 60, column: 32, scope: !618)
!625 = !DILocalVariable(name: "chain", arg: 3, scope: !618, file: !553, line: 60, type: !4)
!626 = !DILocation(line: 60, column: 52, scope: !618)
!627 = !DILocalVariable(name: "c", scope: !618, file: !553, line: 62, type: !556)
!628 = !DILocation(line: 62, column: 10, scope: !618)
!629 = !DILocation(line: 64, column: 12, scope: !630)
!630 = distinct !DILexicalBlock(scope: !618, file: !553, line: 64, column: 6)
!631 = !DILocation(line: 64, column: 10, scope: !630)
!632 = !DILocation(line: 64, column: 6, scope: !618)
!633 = !DILocation(line: 65, column: 3, scope: !630)
!634 = !DILocation(line: 66, column: 26, scope: !635)
!635 = distinct !DILexicalBlock(scope: !618, file: !553, line: 66, column: 6)
!636 = !DILocation(line: 66, column: 29, scope: !635)
!637 = !DILocation(line: 66, column: 6, scope: !635)
!638 = !DILocation(line: 66, column: 6, scope: !618)
!639 = !DILocation(line: 67, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !553, line: 66, column: 42)
!641 = !DILocation(line: 67, column: 3, scope: !640)
!642 = !DILocation(line: 68, column: 3, scope: !640)
!643 = !DILocation(line: 70, column: 11, scope: !618)
!644 = !DILocation(line: 70, column: 2, scope: !618)
!645 = !DILocation(line: 70, column: 5, scope: !618)
!646 = !DILocation(line: 70, column: 9, scope: !618)
!647 = !DILocation(line: 71, column: 11, scope: !618)
!648 = !DILocation(line: 71, column: 2, scope: !618)
!649 = !DILocation(line: 71, column: 5, scope: !618)
!650 = !DILocation(line: 71, column: 9, scope: !618)
!651 = !DILocation(line: 72, column: 13, scope: !618)
!652 = !DILocation(line: 72, column: 2, scope: !618)
!653 = !DILocation(line: 72, column: 5, scope: !618)
!654 = !DILocation(line: 72, column: 11, scope: !618)
!655 = !DILocation(line: 73, column: 2, scope: !618)
!656 = !DILocation(line: 73, column: 5, scope: !618)
!657 = !DILocation(line: 73, column: 16, scope: !618)
!658 = !DILocation(line: 74, column: 9, scope: !618)
!659 = !DILocation(line: 74, column: 2, scope: !618)
!660 = !DILocation(line: 75, column: 1, scope: !618)
!661 = distinct !DISubprogram(name: "cert_new3_copy", scope: !553, file: !553, line: 82, type: !619, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!662 = !DILocalVariable(name: "key", arg: 1, scope: !661, file: !553, line: 82, type: !177)
!663 = !DILocation(line: 82, column: 26, scope: !661)
!664 = !DILocalVariable(name: "crt", arg: 2, scope: !661, file: !553, line: 82, type: !28)
!665 = !DILocation(line: 82, column: 37, scope: !661)
!666 = !DILocalVariable(name: "chain", arg: 3, scope: !661, file: !553, line: 82, type: !4)
!667 = !DILocation(line: 82, column: 57, scope: !661)
!668 = !DILocalVariable(name: "c", scope: !661, file: !553, line: 84, type: !556)
!669 = !DILocation(line: 84, column: 10, scope: !661)
!670 = !DILocation(line: 86, column: 12, scope: !671)
!671 = distinct !DILexicalBlock(scope: !661, file: !553, line: 86, column: 6)
!672 = !DILocation(line: 86, column: 10, scope: !671)
!673 = !DILocation(line: 86, column: 6, scope: !661)
!674 = !DILocation(line: 87, column: 3, scope: !671)
!675 = !DILocation(line: 88, column: 26, scope: !676)
!676 = distinct !DILexicalBlock(scope: !661, file: !553, line: 88, column: 6)
!677 = !DILocation(line: 88, column: 29, scope: !676)
!678 = !DILocation(line: 88, column: 6, scope: !676)
!679 = !DILocation(line: 88, column: 6, scope: !661)
!680 = !DILocation(line: 89, column: 8, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !553, line: 88, column: 42)
!682 = !DILocation(line: 89, column: 3, scope: !681)
!683 = !DILocation(line: 90, column: 3, scope: !681)
!684 = !DILocation(line: 92, column: 11, scope: !661)
!685 = !DILocation(line: 92, column: 2, scope: !661)
!686 = !DILocation(line: 92, column: 5, scope: !661)
!687 = !DILocation(line: 92, column: 9, scope: !661)
!688 = !DILocation(line: 93, column: 23, scope: !661)
!689 = !DILocation(line: 93, column: 26, scope: !661)
!690 = !DILocation(line: 93, column: 2, scope: !661)
!691 = !DILocation(line: 94, column: 11, scope: !661)
!692 = !DILocation(line: 94, column: 2, scope: !661)
!693 = !DILocation(line: 94, column: 5, scope: !661)
!694 = !DILocation(line: 94, column: 9, scope: !661)
!695 = !DILocation(line: 95, column: 24, scope: !661)
!696 = !DILocation(line: 95, column: 27, scope: !661)
!697 = !DILocation(line: 95, column: 2, scope: !661)
!698 = !DILocation(line: 96, column: 12, scope: !661)
!699 = !DILocation(line: 96, column: 44, scope: !661)
!700 = !DILocation(line: 96, column: 36, scope: !661)
!701 = !DILocation(line: 96, column: 2, scope: !661)
!702 = !DILocation(line: 96, column: 5, scope: !661)
!703 = !DILocation(line: 96, column: 11, scope: !661)
!704 = !DILocalVariable(name: "i", scope: !705, file: !553, line: 97, type: !14)
!705 = distinct !DILexicalBlock(scope: !661, file: !553, line: 97, column: 2)
!706 = !DILocation(line: 97, column: 11, scope: !705)
!707 = !DILocation(line: 97, column: 7, scope: !705)
!708 = !DILocation(line: 97, column: 18, scope: !709)
!709 = !DILexicalBlockFile(scope: !710, file: !553, discriminator: 1)
!710 = distinct !DILexicalBlock(scope: !705, file: !553, line: 97, column: 2)
!711 = !DILocation(line: 97, column: 21, scope: !709)
!712 = !DILocation(line: 97, column: 24, scope: !709)
!713 = !DILocation(line: 97, column: 29, scope: !709)
!714 = !DILocation(line: 97, column: 20, scope: !709)
!715 = !DILocation(line: 97, column: 2, scope: !709)
!716 = !DILocation(line: 98, column: 24, scope: !717)
!717 = distinct !DILexicalBlock(scope: !710, file: !553, line: 97, column: 49)
!718 = !DILocation(line: 98, column: 27, scope: !717)
!719 = !DILocation(line: 98, column: 43, scope: !717)
!720 = !DILocation(line: 98, column: 33, scope: !717)
!721 = !DILocation(line: 98, column: 25, scope: !717)
!722 = !DILocation(line: 98, column: 3, scope: !723)
!723 = !DILexicalBlockFile(scope: !717, file: !553, discriminator: 1)
!724 = !DILocation(line: 99, column: 2, scope: !717)
!725 = !DILocation(line: 97, column: 45, scope: !726)
!726 = !DILexicalBlockFile(scope: !710, file: !553, discriminator: 2)
!727 = !DILocation(line: 97, column: 2, scope: !726)
!728 = distinct !{!728, !729}
!729 = !DILocation(line: 97, column: 2, scope: !661)
!730 = !DILocation(line: 100, column: 2, scope: !661)
!731 = !DILocation(line: 100, column: 5, scope: !661)
!732 = !DILocation(line: 100, column: 16, scope: !661)
!733 = !DILocation(line: 101, column: 9, scope: !661)
!734 = !DILocation(line: 101, column: 2, scope: !661)
!735 = !DILocation(line: 102, column: 1, scope: !661)
!736 = distinct !DISubprogram(name: "cert_new_load", scope: !553, file: !553, line: 108, type: !737, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!737 = !DISubroutineType(types: !738)
!738 = !{!556, !63}
!739 = !DILocalVariable(name: "filename", arg: 1, scope: !736, file: !553, line: 108, type: !63)
!740 = !DILocation(line: 108, column: 27, scope: !736)
!741 = !DILocalVariable(name: "c", scope: !736, file: !553, line: 110, type: !556)
!742 = !DILocation(line: 110, column: 10, scope: !736)
!743 = !DILocation(line: 112, column: 12, scope: !744)
!744 = distinct !DILexicalBlock(scope: !736, file: !553, line: 112, column: 6)
!745 = !DILocation(line: 112, column: 10, scope: !744)
!746 = !DILocation(line: 112, column: 6, scope: !736)
!747 = !DILocation(line: 113, column: 3, scope: !744)
!748 = !DILocation(line: 114, column: 9, scope: !736)
!749 = !DILocation(line: 114, column: 2, scope: !736)
!750 = !DILocation(line: 115, column: 26, scope: !751)
!751 = distinct !DILexicalBlock(scope: !736, file: !553, line: 115, column: 6)
!752 = !DILocation(line: 115, column: 29, scope: !751)
!753 = !DILocation(line: 115, column: 6, scope: !751)
!754 = !DILocation(line: 115, column: 6, scope: !736)
!755 = !DILocation(line: 116, column: 8, scope: !756)
!756 = distinct !DILexicalBlock(scope: !751, file: !553, line: 115, column: 42)
!757 = !DILocation(line: 116, column: 3, scope: !756)
!758 = !DILocation(line: 117, column: 3, scope: !756)
!759 = !DILocation(line: 120, column: 26, scope: !760)
!760 = distinct !DILexicalBlock(scope: !736, file: !553, line: 120, column: 6)
!761 = !DILocation(line: 120, column: 29, scope: !760)
!762 = !DILocation(line: 120, column: 35, scope: !760)
!763 = !DILocation(line: 120, column: 38, scope: !760)
!764 = !DILocation(line: 120, column: 45, scope: !760)
!765 = !DILocation(line: 120, column: 6, scope: !760)
!766 = !DILocation(line: 120, column: 55, scope: !760)
!767 = !DILocation(line: 120, column: 6, scope: !736)
!768 = !DILocation(line: 121, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !760, file: !553, line: 120, column: 62)
!770 = !DILocation(line: 121, column: 3, scope: !769)
!771 = !DILocation(line: 122, column: 3, scope: !769)
!772 = !DILocation(line: 124, column: 24, scope: !736)
!773 = !DILocation(line: 124, column: 11, scope: !736)
!774 = !DILocation(line: 124, column: 2, scope: !736)
!775 = !DILocation(line: 124, column: 5, scope: !736)
!776 = !DILocation(line: 124, column: 9, scope: !736)
!777 = !DILocation(line: 125, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !736, file: !553, line: 125, column: 6)
!779 = !DILocation(line: 125, column: 10, scope: !778)
!780 = !DILocation(line: 125, column: 6, scope: !736)
!781 = !DILocation(line: 126, column: 13, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !553, line: 125, column: 15)
!783 = !DILocation(line: 126, column: 16, scope: !782)
!784 = !DILocation(line: 126, column: 3, scope: !782)
!785 = !DILocation(line: 127, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !553, line: 127, column: 7)
!787 = !DILocation(line: 127, column: 10, scope: !786)
!788 = !DILocation(line: 127, column: 7, scope: !782)
!789 = !DILocation(line: 128, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !553, line: 127, column: 17)
!791 = !DILocation(line: 128, column: 6, scope: !790)
!792 = !DILocation(line: 128, column: 16, scope: !790)
!793 = !DILocation(line: 129, column: 3, scope: !790)
!794 = !DILocation(line: 130, column: 8, scope: !782)
!795 = !DILocation(line: 130, column: 3, scope: !782)
!796 = !DILocation(line: 131, column: 3, scope: !782)
!797 = !DILocation(line: 133, column: 2, scope: !736)
!798 = !DILocation(line: 133, column: 5, scope: !736)
!799 = !DILocation(line: 133, column: 16, scope: !736)
!800 = !DILocation(line: 134, column: 9, scope: !736)
!801 = !DILocation(line: 134, column: 2, scope: !736)
!802 = !DILocation(line: 135, column: 1, scope: !736)
!803 = distinct !DISubprogram(name: "cert_refcount_inc", scope: !553, file: !553, line: 141, type: !804, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !556}
!806 = !DILocalVariable(name: "c", arg: 1, scope: !803, file: !553, line: 141, type: !556)
!807 = !DILocation(line: 141, column: 27, scope: !803)
!808 = !DILocation(line: 143, column: 22, scope: !803)
!809 = !DILocation(line: 143, column: 25, scope: !803)
!810 = !DILocation(line: 143, column: 2, scope: !803)
!811 = !DILocation(line: 144, column: 2, scope: !803)
!812 = !DILocation(line: 144, column: 5, scope: !803)
!813 = !DILocation(line: 144, column: 15, scope: !803)
!814 = !DILocation(line: 145, column: 24, scope: !803)
!815 = !DILocation(line: 145, column: 27, scope: !803)
!816 = !DILocation(line: 145, column: 2, scope: !803)
!817 = !DILocation(line: 146, column: 1, scope: !803)
!818 = distinct !DISubprogram(name: "cert_set_key", scope: !553, file: !553, line: 152, type: !819, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !556, !177}
!821 = !DILocalVariable(name: "c", arg: 1, scope: !818, file: !553, line: 152, type: !556)
!822 = !DILocation(line: 152, column: 22, scope: !818)
!823 = !DILocalVariable(name: "key", arg: 2, scope: !818, file: !553, line: 152, type: !177)
!824 = !DILocation(line: 152, column: 35, scope: !818)
!825 = !DILocation(line: 154, column: 22, scope: !818)
!826 = !DILocation(line: 154, column: 25, scope: !818)
!827 = !DILocation(line: 154, column: 2, scope: !818)
!828 = !DILocation(line: 155, column: 6, scope: !829)
!829 = distinct !DILexicalBlock(scope: !818, file: !553, line: 155, column: 6)
!830 = !DILocation(line: 155, column: 9, scope: !829)
!831 = !DILocation(line: 155, column: 6, scope: !818)
!832 = !DILocation(line: 156, column: 17, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !553, line: 155, column: 14)
!834 = !DILocation(line: 156, column: 20, scope: !833)
!835 = !DILocation(line: 156, column: 3, scope: !833)
!836 = !DILocation(line: 157, column: 2, scope: !833)
!837 = !DILocation(line: 158, column: 11, scope: !818)
!838 = !DILocation(line: 158, column: 2, scope: !818)
!839 = !DILocation(line: 158, column: 5, scope: !818)
!840 = !DILocation(line: 158, column: 9, scope: !818)
!841 = !DILocation(line: 159, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !818, file: !553, line: 159, column: 6)
!843 = !DILocation(line: 159, column: 9, scope: !842)
!844 = !DILocation(line: 159, column: 6, scope: !818)
!845 = !DILocation(line: 160, column: 24, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !553, line: 159, column: 14)
!847 = !DILocation(line: 160, column: 27, scope: !846)
!848 = !DILocation(line: 160, column: 3, scope: !846)
!849 = !DILocation(line: 161, column: 2, scope: !846)
!850 = !DILocation(line: 162, column: 24, scope: !818)
!851 = !DILocation(line: 162, column: 27, scope: !818)
!852 = !DILocation(line: 162, column: 2, scope: !818)
!853 = !DILocation(line: 163, column: 1, scope: !818)
!854 = distinct !DISubprogram(name: "cert_set_crt", scope: !553, file: !553, line: 165, type: !855, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !556, !28}
!857 = !DILocalVariable(name: "c", arg: 1, scope: !854, file: !553, line: 165, type: !556)
!858 = !DILocation(line: 165, column: 22, scope: !854)
!859 = !DILocalVariable(name: "crt", arg: 2, scope: !854, file: !553, line: 165, type: !28)
!860 = !DILocation(line: 165, column: 31, scope: !854)
!861 = !DILocation(line: 167, column: 22, scope: !854)
!862 = !DILocation(line: 167, column: 25, scope: !854)
!863 = !DILocation(line: 167, column: 2, scope: !854)
!864 = !DILocation(line: 168, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !854, file: !553, line: 168, column: 6)
!866 = !DILocation(line: 168, column: 9, scope: !865)
!867 = !DILocation(line: 168, column: 6, scope: !854)
!868 = !DILocation(line: 169, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !553, line: 168, column: 14)
!870 = !DILocation(line: 169, column: 16, scope: !869)
!871 = !DILocation(line: 169, column: 3, scope: !869)
!872 = !DILocation(line: 170, column: 2, scope: !869)
!873 = !DILocation(line: 171, column: 11, scope: !854)
!874 = !DILocation(line: 171, column: 2, scope: !854)
!875 = !DILocation(line: 171, column: 5, scope: !854)
!876 = !DILocation(line: 171, column: 9, scope: !854)
!877 = !DILocation(line: 172, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !854, file: !553, line: 172, column: 6)
!879 = !DILocation(line: 172, column: 9, scope: !878)
!880 = !DILocation(line: 172, column: 6, scope: !854)
!881 = !DILocation(line: 173, column: 25, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !553, line: 172, column: 14)
!883 = !DILocation(line: 173, column: 28, scope: !882)
!884 = !DILocation(line: 173, column: 3, scope: !882)
!885 = !DILocation(line: 174, column: 2, scope: !882)
!886 = !DILocation(line: 175, column: 24, scope: !854)
!887 = !DILocation(line: 175, column: 27, scope: !854)
!888 = !DILocation(line: 175, column: 2, scope: !854)
!889 = !DILocation(line: 176, column: 1, scope: !854)
!890 = distinct !DISubprogram(name: "cert_set_chain", scope: !553, file: !553, line: 178, type: !891, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !556, !4}
!893 = !DILocalVariable(name: "c", arg: 1, scope: !890, file: !553, line: 178, type: !556)
!894 = !DILocation(line: 178, column: 24, scope: !890)
!895 = !DILocalVariable(name: "chain", arg: 2, scope: !890, file: !553, line: 178, type: !4)
!896 = !DILocation(line: 178, column: 42, scope: !890)
!897 = !DILocation(line: 180, column: 22, scope: !890)
!898 = !DILocation(line: 180, column: 25, scope: !890)
!899 = !DILocation(line: 180, column: 2, scope: !890)
!900 = !DILocation(line: 181, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !890, file: !553, line: 181, column: 6)
!902 = !DILocation(line: 181, column: 9, scope: !901)
!903 = !DILocation(line: 181, column: 6, scope: !890)
!904 = !DILocation(line: 182, column: 2, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !553, line: 181, column: 16)
!906 = !DILocation(line: 182, column: 5, scope: !905)
!907 = !DILocation(line: 182, column: 15, scope: !905)
!908 = !DILocation(line: 183, column: 2, scope: !905)
!909 = !DILocation(line: 184, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !890, file: !553, line: 184, column: 6)
!911 = !DILocation(line: 184, column: 6, scope: !890)
!912 = !DILocation(line: 185, column: 13, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !553, line: 184, column: 13)
!914 = !DILocation(line: 185, column: 45, scope: !913)
!915 = !DILocation(line: 185, column: 37, scope: !913)
!916 = !DILocation(line: 185, column: 3, scope: !913)
!917 = !DILocation(line: 185, column: 6, scope: !913)
!918 = !DILocation(line: 185, column: 12, scope: !913)
!919 = !DILocalVariable(name: "i", scope: !920, file: !553, line: 186, type: !14)
!920 = distinct !DILexicalBlock(scope: !913, file: !553, line: 186, column: 3)
!921 = !DILocation(line: 186, column: 12, scope: !920)
!922 = !DILocation(line: 186, column: 8, scope: !920)
!923 = !DILocation(line: 186, column: 19, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !553, discriminator: 1)
!925 = distinct !DILexicalBlock(scope: !920, file: !553, line: 186, column: 3)
!926 = !DILocation(line: 186, column: 22, scope: !924)
!927 = !DILocation(line: 186, column: 25, scope: !924)
!928 = !DILocation(line: 186, column: 30, scope: !924)
!929 = !DILocation(line: 186, column: 21, scope: !924)
!930 = !DILocation(line: 186, column: 3, scope: !924)
!931 = !DILocation(line: 187, column: 25, scope: !932)
!932 = distinct !DILexicalBlock(scope: !925, file: !553, line: 186, column: 50)
!933 = !DILocation(line: 187, column: 28, scope: !932)
!934 = !DILocation(line: 187, column: 44, scope: !932)
!935 = !DILocation(line: 187, column: 34, scope: !932)
!936 = !DILocation(line: 187, column: 26, scope: !932)
!937 = !DILocation(line: 187, column: 4, scope: !938)
!938 = !DILexicalBlockFile(scope: !932, file: !553, discriminator: 1)
!939 = !DILocation(line: 188, column: 3, scope: !932)
!940 = !DILocation(line: 186, column: 46, scope: !941)
!941 = !DILexicalBlockFile(scope: !925, file: !553, discriminator: 2)
!942 = !DILocation(line: 186, column: 3, scope: !941)
!943 = distinct !{!943, !944}
!944 = !DILocation(line: 186, column: 3, scope: !913)
!945 = !DILocation(line: 189, column: 2, scope: !913)
!946 = !DILocation(line: 190, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !910, file: !553, line: 189, column: 9)
!948 = !DILocation(line: 190, column: 6, scope: !947)
!949 = !DILocation(line: 190, column: 12, scope: !947)
!950 = !DILocation(line: 192, column: 24, scope: !890)
!951 = !DILocation(line: 192, column: 27, scope: !890)
!952 = !DILocation(line: 192, column: 2, scope: !890)
!953 = !DILocation(line: 193, column: 1, scope: !890)
!954 = distinct !DISubprogram(name: "cert_free", scope: !553, file: !553, line: 199, type: !804, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!955 = !DILocalVariable(name: "c", arg: 1, scope: !954, file: !553, line: 199, type: !556)
!956 = !DILocation(line: 199, column: 19, scope: !954)
!957 = !DILocation(line: 201, column: 22, scope: !954)
!958 = !DILocation(line: 201, column: 25, scope: !954)
!959 = !DILocation(line: 201, column: 2, scope: !954)
!960 = !DILocation(line: 202, column: 2, scope: !954)
!961 = !DILocation(line: 202, column: 5, scope: !954)
!962 = !DILocation(line: 202, column: 15, scope: !954)
!963 = !DILocation(line: 203, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !954, file: !553, line: 203, column: 6)
!965 = !DILocation(line: 203, column: 9, scope: !964)
!966 = !DILocation(line: 203, column: 6, scope: !954)
!967 = !DILocation(line: 204, column: 25, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !553, line: 203, column: 21)
!969 = !DILocation(line: 204, column: 28, scope: !968)
!970 = !DILocation(line: 204, column: 3, scope: !968)
!971 = !DILocation(line: 205, column: 3, scope: !968)
!972 = !DILocation(line: 207, column: 24, scope: !954)
!973 = !DILocation(line: 207, column: 27, scope: !954)
!974 = !DILocation(line: 207, column: 2, scope: !954)
!975 = !DILocation(line: 208, column: 25, scope: !954)
!976 = !DILocation(line: 208, column: 28, scope: !954)
!977 = !DILocation(line: 208, column: 2, scope: !954)
!978 = !DILocation(line: 209, column: 6, scope: !979)
!979 = distinct !DILexicalBlock(scope: !954, file: !553, line: 209, column: 6)
!980 = !DILocation(line: 209, column: 9, scope: !979)
!981 = !DILocation(line: 209, column: 6, scope: !954)
!982 = !DILocation(line: 210, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !553, line: 209, column: 14)
!984 = !DILocation(line: 210, column: 20, scope: !983)
!985 = !DILocation(line: 210, column: 3, scope: !983)
!986 = !DILocation(line: 211, column: 2, scope: !983)
!987 = !DILocation(line: 212, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !954, file: !553, line: 212, column: 6)
!989 = !DILocation(line: 212, column: 9, scope: !988)
!990 = !DILocation(line: 212, column: 6, scope: !954)
!991 = !DILocation(line: 213, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !553, line: 212, column: 14)
!993 = !DILocation(line: 213, column: 16, scope: !992)
!994 = !DILocation(line: 213, column: 3, scope: !992)
!995 = !DILocation(line: 214, column: 2, scope: !992)
!996 = !DILocation(line: 215, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !954, file: !553, line: 215, column: 6)
!998 = !DILocation(line: 215, column: 9, scope: !997)
!999 = !DILocation(line: 215, column: 6, scope: !954)
!1000 = !DILocation(line: 216, column: 2, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !553, line: 215, column: 16)
!1002 = !DILocation(line: 216, column: 5, scope: !1001)
!1003 = !DILocation(line: 216, column: 15, scope: !1001)
!1004 = !DILocation(line: 217, column: 2, scope: !1001)
!1005 = !DILocation(line: 218, column: 7, scope: !954)
!1006 = !DILocation(line: 218, column: 2, scope: !954)
!1007 = !DILocation(line: 219, column: 1, scope: !954)
!1008 = !DILocation(line: 219, column: 1, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !954, file: !553, discriminator: 1)
