; ModuleID = './vmware_guestproxycerttool-cert_key.o.i'
source_filename = "./vmware_guestproxycerttool-cert_key.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.0, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.anon.0 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type { %struct.stack_st }
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
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
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8] }
%struct.X509_req_st = type { %struct.X509_req_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32 }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.lhash_st_CONF_VALUE = type { i32 }
%struct.env_md_st = type { i32, i32, i32, i64, i32 (%struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*, i8*, i64)*, i32 (%struct.env_md_ctx_st*, i8*)*, i32 (%struct.env_md_ctx_st*, %struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*)*, i32 (i32, i8*, i32, i8*, i32*, i8*)*, i32 (i32, i8*, i32, i8*, i32, i8*)*, [5 x i32], i32, i32, i32 (%struct.env_md_ctx_st*, i32, i32, i8*)* }
%struct.env_md_ctx_st = type { %struct.env_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.env_md_ctx_st*, i8*, i64)* }
%struct.evp_pkey_ctx_st = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8* }
%struct.X509_crl_st = type { %struct.X509_crl_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, [20 x i8], %struct.stack_st_GENERAL_NAMES*, %struct.x509_crl_method_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type { %struct.stack_st }
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.2, %struct.X509_name_st* }
%union.anon.2 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.stack_st_CONF_VALUE = type { %struct.stack_st }
%struct.rsa_st = type { i32, i64, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, i8*, %struct.bn_blinding_st*, %struct.bn_blinding_st* }
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon.1 }
%union.anon.1 = type { void (i32, i32, i8*)* }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bn_blinding_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: Failed to open %s: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%s: Error reading certificate file %s: %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"%s: Failed to write the private key file %s: %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"%s: Failed to write the certificate file %s: %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%s: Failed to set certificate public key: %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"%s: Failed to sign the X509 certificate: %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s: Failed to allocate the OpenSSL config.\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"%s: Failed to load the configuration file %s: %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"%s: Error configuring OpenSSL modules: %s.\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"string_mask\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"%s: Failed to allocate a X509 certificate request.\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"%s: Failed to set certificate request public key: %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"%s: Failed to allocate a private key structure.\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate a BIGNUM.\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"%s: Failed to assign a value to BIGNUM: %s.\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"%s: Failed to allocate a RSA structure.\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"%s: Error generating RSA key pair: %s.\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"%s: Failed to set the certificate request version: %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"%s: Failed to get the certificate request subject name: %s.\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"distinguished_name\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"%s: Failed to get section %s: %s.\0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"%s: Failed to set certificate request pair %s/%s: %s.\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"%s: Failed to allocate a X509 certificate: %s.\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"%s: Failed to configure the X509 certificate: %s.\0A\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"x509_extensions\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"%s: Failed to set the certificate version: %s.\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"%s: Error loading extension section %s: %s.\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"%s: Failed to allocate an ASN1 integer.\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"%s: Failed to allocate a BIGNUM structure.\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"%s: Failed to generate random number: %s.\0A\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"%s: Failed to convert from BIGNUM to ASN1_INTEGER: %s.\0A\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"%s: Failed to set the certificate serial number: %s.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @GetSSLError(i8**) #0 !dbg !36 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4096 x i8], align 16
  store i8** %0, i8*** %2, align 8
  call void @llvm.dbg.declare(metadata i8*** %2, metadata !44, metadata !45), !dbg !46
  call void @llvm.dbg.declare(metadata i64* %3, metadata !47, metadata !45), !dbg !49
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !50, metadata !45), !dbg !61
  %7 = call %struct._GString* @g_string_new(i8* null), !dbg !62
  store %struct._GString* %7, %struct._GString** %4, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %5, metadata !63, metadata !45), !dbg !66
  store i32 1, i32* %5, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata [4096 x i8]* %6, metadata !67, metadata !45), !dbg !71
  br label %8, !dbg !72

; <label>:8:                                      ; preds = %11, %1
  %9 = call i64 @ERR_get_error(), !dbg !73
  store i64 %9, i64* %3, align 8, !dbg !75
  %10 = icmp ne i64 %9, 0, !dbg !76
  br i1 %10, label %11, label %19, !dbg !77

; <label>:11:                                     ; preds = %8
  %12 = load i64, i64* %3, align 8, !dbg !78
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !80
  call void @ERR_error_string_n(i64 %12, i8* %13, i64 4096), !dbg !81
  %14 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !82
  %15 = load i32, i32* %5, align 4, !dbg !83
  %16 = icmp ne i32 %15, 0, !dbg !83
  %17 = select i1 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), !dbg !83
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i32 0, i32 0, !dbg !84
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %17, i8* %18), !dbg !85
  store i32 0, i32* %5, align 4, !dbg !86
  br label %8, !dbg !87, !llvm.loop !89

; <label>:19:                                     ; preds = %8
  %20 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !90
  %21 = call i8* @g_string_free(%struct._GString* %20, i32 0), !dbg !91
  %22 = load i8**, i8*** %2, align 8, !dbg !92
  store i8* %21, i8** %22, align 8, !dbg !93
  %23 = load i8**, i8*** %2, align 8, !dbg !94
  %24 = load i8*, i8** %23, align 8, !dbg !95
  ret i8* %24, !dbg !96
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GString* @g_string_new(i8*) #2

declare i64 @ERR_get_error() #2

declare void @ERR_error_string_n(i64, i8*, i64) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define void @CertKey_InitOpenSSLLib() #0 !dbg !97 {
  call void @ERR_load_crypto_strings(), !dbg !100
  call void @OpenSSL_add_all_digests(), !dbg !101
  ret void, !dbg !102
}

declare void @ERR_load_crypto_strings() #2

declare void @OpenSSL_add_all_digests() #2

; Function Attrs: nounwind uwtable
define i8* @CertKey_ComputeCertPemFileHash(i8*) #0 !dbg !103 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.x509_st*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !108, metadata !45), !dbg !109
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !110, metadata !45), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !45), !dbg !170
  store i8* null, i8** %4, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata %struct.x509_st** %5, metadata !171, metadata !45), !dbg !684
  store %struct.x509_st* null, %struct.x509_st** %5, align 8, !dbg !684
  call void @llvm.dbg.declare(metadata i8** %6, metadata !685, metadata !45), !dbg !686
  store i8* null, i8** %6, align 8, !dbg !686
  %7 = load i8*, i8** %2, align 8, !dbg !687
  %8 = call %struct._IO_FILE* @fopen64(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)), !dbg !688
  store %struct._IO_FILE* %8, %struct._IO_FILE** %3, align 8, !dbg !689
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !690
  %10 = icmp ne %struct._IO_FILE* %9, null, !dbg !690
  br i1 %10, label %19, label %11, !dbg !692

; <label>:11:                                     ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !693
  %13 = call i8* @g_get_prgname(), !dbg !695
  %14 = load i8*, i8** %2, align 8, !dbg !696
  %15 = call i32* @__errno_location() #1, !dbg !697
  %16 = load i32, i32* %15, align 4, !dbg !699
  %17 = call i8* @strerror(i32 %16) #5, !dbg !700
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* %13, i8* %14, i8* %17), !dbg !702
  br label %34, !dbg !704

; <label>:19:                                     ; preds = %1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !705
  %21 = call %struct.x509_st* @PEM_read_X509(%struct._IO_FILE* %20, %struct.x509_st** null, i32 (i8*, i32, i32, i8*)* null, i8* null), !dbg !706
  store %struct.x509_st* %21, %struct.x509_st** %5, align 8, !dbg !707
  %22 = load %struct.x509_st*, %struct.x509_st** %5, align 8, !dbg !708
  %23 = icmp ne %struct.x509_st* %22, null, !dbg !708
  br i1 %23, label %30, label %24, !dbg !710

; <label>:24:                                     ; preds = %19
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !711
  %26 = call i8* @g_get_prgname(), !dbg !713
  %27 = load i8*, i8** %2, align 8, !dbg !714
  %28 = call i8* @GetSSLError(i8** %6), !dbg !715
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i8* %26, i8* %27, i8* %28), !dbg !717
  br label %34, !dbg !719

; <label>:30:                                     ; preds = %19
  %31 = load %struct.x509_st*, %struct.x509_st** %5, align 8, !dbg !720
  %32 = call i64 @X509_subject_name_hash(%struct.x509_st* %31), !dbg !721
  %33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i64 %32), !dbg !722
  store i8* %33, i8** %4, align 8, !dbg !724
  br label %34, !dbg !725

; <label>:34:                                     ; preds = %30, %24, %11
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !726
  %36 = icmp ne %struct._IO_FILE* %35, null, !dbg !726
  br i1 %36, label %37, label %40, !dbg !728

; <label>:37:                                     ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !729
  %39 = call i32 @fclose(%struct._IO_FILE* %38), !dbg !731
  br label %40, !dbg !732

; <label>:40:                                     ; preds = %37, %34
  %41 = load %struct.x509_st*, %struct.x509_st** %5, align 8, !dbg !733
  call void @X509_free(%struct.x509_st* %41), !dbg !734
  %42 = load i8*, i8** %6, align 8, !dbg !735
  call void @g_free(i8* %42), !dbg !736
  %43 = load i8*, i8** %4, align 8, !dbg !737
  ret i8* %43, !dbg !738
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i8* @g_get_prgname() #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct.x509_st* @PEM_read_X509(%struct._IO_FILE*, %struct.x509_st**, i32 (i8*, i32, i32, i8*)*, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i64 @X509_subject_name_hash(%struct.x509_st*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @X509_free(%struct.x509_st*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @WritePemFile(%struct.evp_pkey_st*, i8*, %struct.x509_st*, i8*) #0 !dbg !739 {
  %5 = alloca %struct.evp_pkey_st*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.x509_st*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.evp_pkey_st* %0, %struct.evp_pkey_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %5, metadata !742, metadata !45), !dbg !743
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !744, metadata !45), !dbg !745
  store %struct.x509_st* %2, %struct.x509_st** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %7, metadata !746, metadata !45), !dbg !747
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !748, metadata !45), !dbg !749
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %9, metadata !750, metadata !45), !dbg !751
  call void @llvm.dbg.declare(metadata i32* %10, metadata !752, metadata !45), !dbg !753
  store i32 0, i32* %10, align 4, !dbg !753
  call void @llvm.dbg.declare(metadata i8** %11, metadata !754, metadata !45), !dbg !755
  store i8* null, i8** %11, align 8, !dbg !755
  call void @llvm.dbg.declare(metadata i32* %12, metadata !756, metadata !45), !dbg !760
  %13 = call i32 @umask(i32 54) #5, !dbg !761
  store i32 %13, i32* %12, align 4, !dbg !762
  %14 = load i8*, i8** %6, align 8, !dbg !763
  %15 = call %struct._IO_FILE* @fopen64(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !dbg !764
  store %struct._IO_FILE* %15, %struct._IO_FILE** %9, align 8, !dbg !765
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !766
  %17 = icmp ne %struct._IO_FILE* %16, null, !dbg !766
  br i1 %17, label %26, label %18, !dbg !768

; <label>:18:                                     ; preds = %4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !769
  %20 = call i8* @g_get_prgname(), !dbg !771
  %21 = load i8*, i8** %6, align 8, !dbg !772
  %22 = call i32* @__errno_location() #1, !dbg !773
  %23 = load i32, i32* %22, align 4, !dbg !775
  %24 = call i8* @strerror(i32 %23) #5, !dbg !776
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* %20, i8* %21, i8* %24), !dbg !778
  br label %65, !dbg !780

; <label>:26:                                     ; preds = %4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !781
  %28 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %5, align 8, !dbg !783
  %29 = call i32 @PEM_write_PrivateKey(%struct._IO_FILE* %27, %struct.evp_pkey_st* %28, %struct.evp_cipher_st* null, i8* null, i32 0, i32 (i8*, i32, i32, i8*)* null, i8* null), !dbg !784
  %30 = icmp ne i32 %29, 0, !dbg !784
  br i1 %30, label %37, label %31, !dbg !785

; <label>:31:                                     ; preds = %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !786
  %33 = call i8* @g_get_prgname(), !dbg !788
  %34 = load i8*, i8** %6, align 8, !dbg !789
  %35 = call i8* @GetSSLError(i8** %11), !dbg !790
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0), i8* %33, i8* %34, i8* %35), !dbg !792
  br label %65, !dbg !794

; <label>:37:                                     ; preds = %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !795
  %39 = call i32 @fclose(%struct._IO_FILE* %38), !dbg !796
  %40 = call i32 @umask(i32 18) #5, !dbg !797
  %41 = load i8*, i8** %8, align 8, !dbg !798
  %42 = call %struct._IO_FILE* @fopen64(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !dbg !799
  store %struct._IO_FILE* %42, %struct._IO_FILE** %9, align 8, !dbg !800
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !801
  %44 = icmp ne %struct._IO_FILE* %43, null, !dbg !801
  br i1 %44, label %53, label %45, !dbg !803

; <label>:45:                                     ; preds = %37
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !804
  %47 = call i8* @g_get_prgname(), !dbg !806
  %48 = load i8*, i8** %8, align 8, !dbg !807
  %49 = call i32* @__errno_location() #1, !dbg !808
  %50 = load i32, i32* %49, align 4, !dbg !810
  %51 = call i8* @strerror(i32 %50) #5, !dbg !811
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* %47, i8* %48, i8* %51), !dbg !813
  br label %65, !dbg !815

; <label>:53:                                     ; preds = %37
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !816
  %55 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !818
  %56 = call i32 @PEM_write_X509(%struct._IO_FILE* %54, %struct.x509_st* %55), !dbg !819
  %57 = icmp ne i32 %56, 0, !dbg !819
  br i1 %57, label %64, label %58, !dbg !820

; <label>:58:                                     ; preds = %53
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !821
  %60 = call i8* @g_get_prgname(), !dbg !823
  %61 = load i8*, i8** %8, align 8, !dbg !824
  %62 = call i8* @GetSSLError(i8** %11), !dbg !825
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* %60, i8* %61, i8* %62), !dbg !827
  br label %65, !dbg !829

; <label>:64:                                     ; preds = %53
  store i32 1, i32* %10, align 4, !dbg !830
  br label %65, !dbg !831

; <label>:65:                                     ; preds = %64, %58, %45, %31, %18
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !832
  %67 = icmp ne %struct._IO_FILE* %66, null, !dbg !832
  br i1 %67, label %68, label %71, !dbg !834

; <label>:68:                                     ; preds = %65
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8, !dbg !835
  %70 = call i32 @fclose(%struct._IO_FILE* %69), !dbg !837
  br label %71, !dbg !838

; <label>:71:                                     ; preds = %68, %65
  %72 = load i8*, i8** %11, align 8, !dbg !839
  call void @g_free(i8* %72), !dbg !840
  %73 = load i32, i32* %12, align 4, !dbg !841
  %74 = call i32 @umask(i32 %73) #5, !dbg !842
  %75 = load i32, i32* %10, align 4, !dbg !843
  ret i32 %75, !dbg !844
}

; Function Attrs: nounwind
declare i32 @umask(i32) #3

declare i32 @PEM_write_PrivateKey(%struct._IO_FILE*, %struct.evp_pkey_st*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*) #2

declare i32 @PEM_write_X509(%struct._IO_FILE*, %struct.x509_st*) #2

; Function Attrs: nounwind uwtable
define i32 @CertKey_GenerateKeyCert(i32, i32, i8*, i8*, i8*) #0 !dbg !845 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.x509_st*, align 8
  %13 = alloca %struct.X509_req_st*, align 8
  %14 = alloca %struct.evp_pkey_st*, align 8
  %15 = alloca %struct.conf_st*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !848, metadata !45), !dbg !849
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !850, metadata !45), !dbg !851
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !852, metadata !45), !dbg !853
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !854, metadata !45), !dbg !855
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !856, metadata !45), !dbg !857
  call void @llvm.dbg.declare(metadata i32* %11, metadata !858, metadata !45), !dbg !859
  store i32 0, i32* %11, align 4, !dbg !859
  call void @llvm.dbg.declare(metadata %struct.x509_st** %12, metadata !860, metadata !45), !dbg !861
  store %struct.x509_st* null, %struct.x509_st** %12, align 8, !dbg !861
  call void @llvm.dbg.declare(metadata %struct.X509_req_st** %13, metadata !862, metadata !45), !dbg !880
  store %struct.X509_req_st* null, %struct.X509_req_st** %13, align 8, !dbg !880
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %14, metadata !881, metadata !45), !dbg !882
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %14, align 8, !dbg !882
  call void @llvm.dbg.declare(metadata %struct.conf_st** %15, metadata !883, metadata !45), !dbg !990
  call void @llvm.dbg.declare(metadata i8** %16, metadata !991, metadata !45), !dbg !992
  store i8* null, i8** %16, align 8, !dbg !992
  %17 = load i8*, i8** %8, align 8, !dbg !993
  %18 = call %struct.conf_st* @LoadOpenSSLConf(i8* %17), !dbg !994
  store %struct.conf_st* %18, %struct.conf_st** %15, align 8, !dbg !995
  %19 = load %struct.conf_st*, %struct.conf_st** %15, align 8, !dbg !996
  %20 = icmp ne %struct.conf_st* %19, null, !dbg !996
  br i1 %20, label %22, label %21, !dbg !998

; <label>:21:                                     ; preds = %5
  br label %67, !dbg !999

; <label>:22:                                     ; preds = %5
  %23 = load %struct.conf_st*, %struct.conf_st** %15, align 8, !dbg !1001
  %24 = load i32, i32* %6, align 4, !dbg !1002
  %25 = call %struct.X509_req_st* @GenerateX509CertReq(%struct.evp_pkey_st** %14, %struct.conf_st* %23, i32 %24), !dbg !1003
  store %struct.X509_req_st* %25, %struct.X509_req_st** %13, align 8, !dbg !1004
  %26 = load %struct.X509_req_st*, %struct.X509_req_st** %13, align 8, !dbg !1005
  %27 = icmp ne %struct.X509_req_st* %26, null, !dbg !1005
  br i1 %27, label %29, label %28, !dbg !1007

; <label>:28:                                     ; preds = %22
  br label %67, !dbg !1008

; <label>:29:                                     ; preds = %22
  %30 = load %struct.X509_req_st*, %struct.X509_req_st** %13, align 8, !dbg !1010
  %31 = load %struct.conf_st*, %struct.conf_st** %15, align 8, !dbg !1011
  %32 = load i32, i32* %7, align 4, !dbg !1012
  %33 = call %struct.x509_st* @GenerateX509Cert(%struct.X509_req_st* %30, %struct.conf_st* %31, i32 %32), !dbg !1013
  store %struct.x509_st* %33, %struct.x509_st** %12, align 8, !dbg !1014
  %34 = load %struct.x509_st*, %struct.x509_st** %12, align 8, !dbg !1015
  %35 = icmp ne %struct.x509_st* %34, null, !dbg !1015
  br i1 %35, label %37, label %36, !dbg !1017

; <label>:36:                                     ; preds = %29
  br label %67, !dbg !1018

; <label>:37:                                     ; preds = %29
  %38 = load %struct.x509_st*, %struct.x509_st** %12, align 8, !dbg !1020
  %39 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %14, align 8, !dbg !1022
  %40 = call i32 @X509_set_pubkey(%struct.x509_st* %38, %struct.evp_pkey_st* %39), !dbg !1023
  %41 = icmp ne i32 %40, 0, !dbg !1023
  br i1 %41, label %47, label %42, !dbg !1024

; <label>:42:                                     ; preds = %37
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1025
  %44 = call i8* @g_get_prgname(), !dbg !1027
  %45 = call i8* @GetSSLError(i8** %16), !dbg !1028
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i8* %44, i8* %45), !dbg !1030
  br label %67, !dbg !1032

; <label>:47:                                     ; preds = %37
  %48 = load %struct.x509_st*, %struct.x509_st** %12, align 8, !dbg !1033
  %49 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %14, align 8, !dbg !1035
  %50 = call %struct.env_md_st* @EVP_sha256(), !dbg !1036
  %51 = call i32 @X509_sign(%struct.x509_st* %48, %struct.evp_pkey_st* %49, %struct.env_md_st* %50), !dbg !1037
  %52 = icmp ne i32 %51, 0, !dbg !1039
  br i1 %52, label %58, label %53, !dbg !1040

; <label>:53:                                     ; preds = %47
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1041
  %55 = call i8* @g_get_prgname(), !dbg !1043
  %56 = call i8* @GetSSLError(i8** %16), !dbg !1044
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), i8* %55, i8* %56), !dbg !1046
  br label %67, !dbg !1048

; <label>:58:                                     ; preds = %47
  %59 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %14, align 8, !dbg !1049
  %60 = load i8*, i8** %9, align 8, !dbg !1051
  %61 = load %struct.x509_st*, %struct.x509_st** %12, align 8, !dbg !1052
  %62 = load i8*, i8** %10, align 8, !dbg !1053
  %63 = call i32 @WritePemFile(%struct.evp_pkey_st* %59, i8* %60, %struct.x509_st* %61, i8* %62), !dbg !1054
  %64 = icmp ne i32 %63, 0, !dbg !1054
  br i1 %64, label %65, label %66, !dbg !1055

; <label>:65:                                     ; preds = %58
  store i32 1, i32* %11, align 4, !dbg !1056
  br label %66, !dbg !1058

; <label>:66:                                     ; preds = %65, %58
  br label %67, !dbg !1059

; <label>:67:                                     ; preds = %66, %53, %42, %36, %28, %21
  %68 = load i8*, i8** %16, align 8, !dbg !1061
  call void @g_free(i8* %68), !dbg !1062
  %69 = load %struct.conf_st*, %struct.conf_st** %15, align 8, !dbg !1063
  call void @NCONF_free(%struct.conf_st* %69), !dbg !1064
  %70 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %14, align 8, !dbg !1065
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %70), !dbg !1066
  %71 = load %struct.X509_req_st*, %struct.X509_req_st** %13, align 8, !dbg !1067
  call void @X509_REQ_free(%struct.X509_req_st* %71), !dbg !1068
  %72 = load %struct.x509_st*, %struct.x509_st** %12, align 8, !dbg !1069
  call void @X509_free(%struct.x509_st* %72), !dbg !1070
  %73 = load i32, i32* %11, align 4, !dbg !1071
  ret i32 %73, !dbg !1072
}

; Function Attrs: nounwind uwtable
define internal %struct.conf_st* @LoadOpenSSLConf(i8*) #0 !dbg !1073 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.conf_st*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1076, metadata !45), !dbg !1077
  call void @llvm.dbg.declare(metadata %struct.conf_st** %3, metadata !1078, metadata !45), !dbg !1079
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1080, metadata !45), !dbg !1081
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1082, metadata !45), !dbg !1083
  store i32 0, i32* %5, align 4, !dbg !1083
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1084, metadata !45), !dbg !1085
  store i8* null, i8** %6, align 8, !dbg !1085
  %7 = call %struct.conf_st* @NCONF_new(%struct.conf_method_st* null), !dbg !1086
  store %struct.conf_st* %7, %struct.conf_st** %3, align 8, !dbg !1087
  %8 = load %struct.conf_st*, %struct.conf_st** %3, align 8, !dbg !1088
  %9 = icmp ne %struct.conf_st* %8, null, !dbg !1088
  br i1 %9, label %14, label %10, !dbg !1090

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1091
  %12 = call i8* @g_get_prgname(), !dbg !1093
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i8* %12), !dbg !1094
  br label %43, !dbg !1096

; <label>:14:                                     ; preds = %1
  %15 = load %struct.conf_st*, %struct.conf_st** %3, align 8, !dbg !1097
  %16 = load i8*, i8** %2, align 8, !dbg !1099
  %17 = call i32 @NCONF_load(%struct.conf_st* %15, i8* %16, i64* null), !dbg !1100
  %18 = icmp ne i32 %17, 0, !dbg !1100
  br i1 %18, label %25, label %19, !dbg !1101

; <label>:19:                                     ; preds = %14
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1102
  %21 = call i8* @g_get_prgname(), !dbg !1104
  %22 = load i8*, i8** %2, align 8, !dbg !1105
  %23 = call i8* @GetSSLError(i8** %6), !dbg !1106
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* %21, i8* %22, i8* %23), !dbg !1108
  br label %43, !dbg !1110

; <label>:25:                                     ; preds = %14
  call void @OPENSSL_load_builtin_modules(), !dbg !1111
  %26 = load %struct.conf_st*, %struct.conf_st** %3, align 8, !dbg !1112
  %27 = call i32 @CONF_modules_load(%struct.conf_st* %26, i8* null, i64 0), !dbg !1114
  %28 = icmp ne i32 %27, 0, !dbg !1114
  br i1 %28, label %34, label %29, !dbg !1115

; <label>:29:                                     ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1116
  %31 = call i8* @g_get_prgname(), !dbg !1118
  %32 = call i8* @GetSSLError(i8** %6), !dbg !1119
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0), i8* %31, i8* %32), !dbg !1121
  br label %43, !dbg !1123

; <label>:34:                                     ; preds = %25
  %35 = load %struct.conf_st*, %struct.conf_st** %3, align 8, !dbg !1124
  %36 = call i8* @NCONF_get_string(%struct.conf_st* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)), !dbg !1125
  store i8* %36, i8** %4, align 8, !dbg !1126
  %37 = load i8*, i8** %4, align 8, !dbg !1127
  %38 = icmp ne i8* %37, null, !dbg !1127
  br i1 %38, label %39, label %42, !dbg !1129

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %4, align 8, !dbg !1130
  %41 = call i32 @ASN1_STRING_set_default_mask_asc(i8* %40), !dbg !1132
  br label %42, !dbg !1133

; <label>:42:                                     ; preds = %39, %34
  store i32 1, i32* %5, align 4, !dbg !1134
  br label %43, !dbg !1135

; <label>:43:                                     ; preds = %42, %29, %19, %10
  %44 = load i32, i32* %5, align 4, !dbg !1136
  %45 = icmp ne i32 %44, 0, !dbg !1136
  br i1 %45, label %48, label %46, !dbg !1138

; <label>:46:                                     ; preds = %43
  %47 = load %struct.conf_st*, %struct.conf_st** %3, align 8, !dbg !1139
  call void @NCONF_free(%struct.conf_st* %47), !dbg !1141
  store %struct.conf_st* null, %struct.conf_st** %3, align 8, !dbg !1142
  br label %48, !dbg !1143

; <label>:48:                                     ; preds = %46, %43
  %49 = load i8*, i8** %6, align 8, !dbg !1144
  call void @g_free(i8* %49), !dbg !1145
  %50 = load %struct.conf_st*, %struct.conf_st** %3, align 8, !dbg !1146
  ret %struct.conf_st* %50, !dbg !1147
}

; Function Attrs: nounwind uwtable
define internal %struct.X509_req_st* @GenerateX509CertReq(%struct.evp_pkey_st**, %struct.conf_st*, i32) #0 !dbg !1148 {
  %4 = alloca %struct.evp_pkey_st**, align 8
  %5 = alloca %struct.conf_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.X509_req_st*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.evp_pkey_st** %0, %struct.evp_pkey_st*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st*** %4, metadata !1152, metadata !45), !dbg !1153
  store %struct.conf_st* %1, %struct.conf_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.conf_st** %5, metadata !1154, metadata !45), !dbg !1155
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1156, metadata !45), !dbg !1157
  call void @llvm.dbg.declare(metadata %struct.X509_req_st** %7, metadata !1158, metadata !45), !dbg !1159
  store %struct.X509_req_st* null, %struct.X509_req_st** %7, align 8, !dbg !1159
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1160, metadata !45), !dbg !1161
  store i32 0, i32* %8, align 4, !dbg !1161
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1162, metadata !45), !dbg !1163
  store i8* null, i8** %9, align 8, !dbg !1163
  %10 = load i32, i32* %6, align 4, !dbg !1164
  %11 = call %struct.evp_pkey_st* @GenerateRSAPrivateKey(i32 %10), !dbg !1165
  %12 = load %struct.evp_pkey_st**, %struct.evp_pkey_st*** %4, align 8, !dbg !1166
  store %struct.evp_pkey_st* %11, %struct.evp_pkey_st** %12, align 8, !dbg !1167
  %13 = load %struct.evp_pkey_st**, %struct.evp_pkey_st*** %4, align 8, !dbg !1168
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %13, align 8, !dbg !1170
  %15 = icmp ne %struct.evp_pkey_st* %14, null, !dbg !1170
  br i1 %15, label %17, label %16, !dbg !1171

; <label>:16:                                     ; preds = %3
  br label %43, !dbg !1172

; <label>:17:                                     ; preds = %3
  %18 = call %struct.X509_req_st* @X509_REQ_new(), !dbg !1174
  store %struct.X509_req_st* %18, %struct.X509_req_st** %7, align 8, !dbg !1175
  %19 = load %struct.X509_req_st*, %struct.X509_req_st** %7, align 8, !dbg !1176
  %20 = icmp ne %struct.X509_req_st* %19, null, !dbg !1176
  br i1 %20, label %25, label %21, !dbg !1178

; <label>:21:                                     ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1179
  %23 = call i8* @g_get_prgname(), !dbg !1181
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0), i8* %23), !dbg !1182
  br label %43, !dbg !1184

; <label>:25:                                     ; preds = %17
  %26 = load %struct.X509_req_st*, %struct.X509_req_st** %7, align 8, !dbg !1185
  %27 = load %struct.conf_st*, %struct.conf_st** %5, align 8, !dbg !1187
  %28 = call i32 @ConfigX509CertReq(%struct.X509_req_st* %26, %struct.conf_st* %27), !dbg !1188
  %29 = icmp ne i32 %28, 0, !dbg !1188
  br i1 %29, label %31, label %30, !dbg !1189

; <label>:30:                                     ; preds = %25
  br label %43, !dbg !1190

; <label>:31:                                     ; preds = %25
  %32 = load %struct.X509_req_st*, %struct.X509_req_st** %7, align 8, !dbg !1192
  %33 = load %struct.evp_pkey_st**, %struct.evp_pkey_st*** %4, align 8, !dbg !1194
  %34 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %33, align 8, !dbg !1195
  %35 = call i32 @X509_REQ_set_pubkey(%struct.X509_req_st* %32, %struct.evp_pkey_st* %34), !dbg !1196
  %36 = icmp ne i32 %35, 0, !dbg !1196
  br i1 %36, label %42, label %37, !dbg !1197

; <label>:37:                                     ; preds = %31
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1198
  %39 = call i8* @g_get_prgname(), !dbg !1200
  %40 = call i8* @GetSSLError(i8** %9), !dbg !1201
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i32 0, i32 0), i8* %39, i8* %40), !dbg !1203
  br label %43, !dbg !1205

; <label>:42:                                     ; preds = %31
  store i32 1, i32* %8, align 4, !dbg !1206
  br label %43, !dbg !1207

; <label>:43:                                     ; preds = %42, %37, %30, %21, %16
  %44 = load i32, i32* %8, align 4, !dbg !1208
  %45 = icmp ne i32 %44, 0, !dbg !1208
  br i1 %45, label %48, label %46, !dbg !1210

; <label>:46:                                     ; preds = %43
  %47 = load %struct.X509_req_st*, %struct.X509_req_st** %7, align 8, !dbg !1211
  call void @X509_REQ_free(%struct.X509_req_st* %47), !dbg !1213
  store %struct.X509_req_st* null, %struct.X509_req_st** %7, align 8, !dbg !1214
  br label %48, !dbg !1215

; <label>:48:                                     ; preds = %46, %43
  %49 = load i8*, i8** %9, align 8, !dbg !1216
  call void @g_free(i8* %49), !dbg !1217
  %50 = load %struct.X509_req_st*, %struct.X509_req_st** %7, align 8, !dbg !1218
  ret %struct.X509_req_st* %50, !dbg !1219
}

; Function Attrs: nounwind uwtable
define internal %struct.x509_st* @GenerateX509Cert(%struct.X509_req_st*, %struct.conf_st*, i32) #0 !dbg !1220 {
  %4 = alloca %struct.X509_req_st*, align 8
  %5 = alloca %struct.conf_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.x509_st*, align 8
  %8 = alloca %struct.v3_ext_ctx, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.X509_req_st* %0, %struct.X509_req_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.X509_req_st** %4, metadata !1223, metadata !45), !dbg !1224
  store %struct.conf_st* %1, %struct.conf_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.conf_st** %5, metadata !1225, metadata !45), !dbg !1226
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1227, metadata !45), !dbg !1228
  call void @llvm.dbg.declare(metadata %struct.x509_st** %7, metadata !1229, metadata !45), !dbg !1230
  call void @llvm.dbg.declare(metadata %struct.v3_ext_ctx* %8, metadata !1231, metadata !45), !dbg !1328
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1329, metadata !45), !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1331, metadata !45), !dbg !1332
  store i32 0, i32* %10, align 4, !dbg !1332
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1333, metadata !45), !dbg !1334
  store i8* null, i8** %11, align 8, !dbg !1334
  %12 = call %struct.x509_st* @X509_new(), !dbg !1335
  store %struct.x509_st* %12, %struct.x509_st** %7, align 8, !dbg !1336
  %13 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1337
  %14 = icmp ne %struct.x509_st* %13, null, !dbg !1337
  br i1 %14, label %20, label %15, !dbg !1339

; <label>:15:                                     ; preds = %3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1340
  %17 = call i8* @g_get_prgname(), !dbg !1342
  %18 = call i8* @GetSSLError(i8** %11), !dbg !1343
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i32 0, i32 0), i8* %17, i8* %18), !dbg !1345
  br label %102, !dbg !1347

; <label>:20:                                     ; preds = %3
  %21 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1348
  %22 = call i32 @SetCertSerialNumber(%struct.x509_st* %21), !dbg !1350
  %23 = icmp ne i32 %22, 0, !dbg !1350
  br i1 %23, label %25, label %24, !dbg !1351

; <label>:24:                                     ; preds = %20
  br label %102, !dbg !1352

; <label>:25:                                     ; preds = %20
  %26 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1354
  %27 = load %struct.X509_req_st*, %struct.X509_req_st** %4, align 8, !dbg !1356
  %28 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %27, i32 0, i32 0, !dbg !1357
  %29 = load %struct.X509_req_info_st*, %struct.X509_req_info_st** %28, align 8, !dbg !1357
  %30 = getelementptr inbounds %struct.X509_req_info_st, %struct.X509_req_info_st* %29, i32 0, i32 2, !dbg !1358
  %31 = load %struct.X509_name_st*, %struct.X509_name_st** %30, align 8, !dbg !1358
  %32 = call i32 @X509_set_issuer_name(%struct.x509_st* %26, %struct.X509_name_st* %31), !dbg !1359
  %33 = icmp ne i32 %32, 0, !dbg !1359
  br i1 %33, label %34, label %66, !dbg !1360

; <label>:34:                                     ; preds = %25
  %35 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1361
  %36 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %35, i32 0, i32 0, !dbg !1362
  %37 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %36, align 8, !dbg !1362
  %38 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %37, i32 0, i32 4, !dbg !1363
  %39 = load %struct.X509_val_st*, %struct.X509_val_st** %38, align 8, !dbg !1363
  %40 = getelementptr inbounds %struct.X509_val_st, %struct.X509_val_st* %39, i32 0, i32 0, !dbg !1364
  %41 = load %struct.asn1_string_st*, %struct.asn1_string_st** %40, align 8, !dbg !1364
  %42 = call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* %41, i64 0), !dbg !1365
  %43 = icmp ne %struct.asn1_string_st* %42, null, !dbg !1365
  br i1 %43, label %44, label %66, !dbg !1366

; <label>:44:                                     ; preds = %34
  %45 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1367
  %46 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %45, i32 0, i32 0, !dbg !1368
  %47 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %46, align 8, !dbg !1368
  %48 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %47, i32 0, i32 4, !dbg !1369
  %49 = load %struct.X509_val_st*, %struct.X509_val_st** %48, align 8, !dbg !1369
  %50 = getelementptr inbounds %struct.X509_val_st, %struct.X509_val_st* %49, i32 0, i32 1, !dbg !1370
  %51 = load %struct.asn1_string_st*, %struct.asn1_string_st** %50, align 8, !dbg !1370
  %52 = load i32, i32* %6, align 4, !dbg !1371
  %53 = sext i32 %52 to i64, !dbg !1371
  %54 = mul nsw i64 86400, %53, !dbg !1372
  %55 = call %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* %51, i64 %54), !dbg !1373
  %56 = icmp ne %struct.asn1_string_st* %55, null, !dbg !1373
  br i1 %56, label %57, label %66, !dbg !1374

; <label>:57:                                     ; preds = %44
  %58 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1375
  %59 = load %struct.X509_req_st*, %struct.X509_req_st** %4, align 8, !dbg !1376
  %60 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %59, i32 0, i32 0, !dbg !1377
  %61 = load %struct.X509_req_info_st*, %struct.X509_req_info_st** %60, align 8, !dbg !1377
  %62 = getelementptr inbounds %struct.X509_req_info_st, %struct.X509_req_info_st* %61, i32 0, i32 2, !dbg !1378
  %63 = load %struct.X509_name_st*, %struct.X509_name_st** %62, align 8, !dbg !1378
  %64 = call i32 @X509_set_subject_name(%struct.x509_st* %58, %struct.X509_name_st* %63), !dbg !1379
  %65 = icmp ne i32 %64, 0, !dbg !1379
  br i1 %65, label %71, label %66, !dbg !1380

; <label>:66:                                     ; preds = %57, %44, %34, %25
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1382
  %68 = call i8* @g_get_prgname(), !dbg !1384
  %69 = call i8* @GetSSLError(i8** %11), !dbg !1385
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i32 0, i32 0), i8* %68, i8* %69), !dbg !1387
  br label %102, !dbg !1389

; <label>:71:                                     ; preds = %57
  %72 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1390
  %73 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1391
  call void @X509V3_set_ctx(%struct.v3_ext_ctx* %8, %struct.x509_st* %72, %struct.x509_st* %73, %struct.X509_req_st* null, %struct.X509_crl_st* null, i32 0), !dbg !1392
  %74 = load %struct.conf_st*, %struct.conf_st** %5, align 8, !dbg !1393
  call void @X509V3_set_nconf(%struct.v3_ext_ctx* %8, %struct.conf_st* %74), !dbg !1394
  %75 = load %struct.conf_st*, %struct.conf_st** %5, align 8, !dbg !1395
  %76 = call i8* @NCONF_get_string(%struct.conf_st* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0)), !dbg !1396
  store i8* %76, i8** %9, align 8, !dbg !1397
  %77 = load i8*, i8** %9, align 8, !dbg !1398
  %78 = icmp ne i8* %77, null, !dbg !1398
  br i1 %78, label %79, label %101, !dbg !1400

; <label>:79:                                     ; preds = %71
  %80 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1401
  %81 = call i32 @X509_set_version(%struct.x509_st* %80, i64 2), !dbg !1404
  %82 = icmp ne i32 %81, 0, !dbg !1404
  br i1 %82, label %88, label %83, !dbg !1405

; <label>:83:                                     ; preds = %79
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1406
  %85 = call i8* @g_get_prgname(), !dbg !1408
  %86 = call i8* @GetSSLError(i8** %11), !dbg !1409
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i32 0, i32 0), i8* %85, i8* %86), !dbg !1411
  br label %102, !dbg !1413

; <label>:88:                                     ; preds = %79
  %89 = load %struct.conf_st*, %struct.conf_st** %5, align 8, !dbg !1414
  %90 = load i8*, i8** %9, align 8, !dbg !1416
  %91 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1417
  %92 = call i32 @X509V3_EXT_add_nconf(%struct.conf_st* %89, %struct.v3_ext_ctx* %8, i8* %90, %struct.x509_st* %91), !dbg !1418
  %93 = icmp ne i32 %92, 0, !dbg !1418
  br i1 %93, label %100, label %94, !dbg !1419

; <label>:94:                                     ; preds = %88
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1420
  %96 = call i8* @g_get_prgname(), !dbg !1422
  %97 = load i8*, i8** %9, align 8, !dbg !1423
  %98 = call i8* @GetSSLError(i8** %11), !dbg !1424
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0), i8* %96, i8* %97, i8* %98), !dbg !1426
  br label %102, !dbg !1428

; <label>:100:                                    ; preds = %88
  br label %101, !dbg !1429

; <label>:101:                                    ; preds = %100, %71
  store i32 1, i32* %10, align 4, !dbg !1430
  br label %102, !dbg !1431

; <label>:102:                                    ; preds = %101, %94, %83, %66, %24, %15
  %103 = load i32, i32* %10, align 4, !dbg !1432
  %104 = icmp ne i32 %103, 0, !dbg !1432
  br i1 %104, label %107, label %105, !dbg !1434

; <label>:105:                                    ; preds = %102
  %106 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1435
  call void @X509_free(%struct.x509_st* %106), !dbg !1437
  store %struct.x509_st* null, %struct.x509_st** %7, align 8, !dbg !1438
  br label %107, !dbg !1439

; <label>:107:                                    ; preds = %105, %102
  %108 = load i8*, i8** %11, align 8, !dbg !1440
  call void @g_free(i8* %108), !dbg !1441
  %109 = load %struct.x509_st*, %struct.x509_st** %7, align 8, !dbg !1442
  ret %struct.x509_st* %109, !dbg !1443
}

declare i32 @X509_set_pubkey(%struct.x509_st*, %struct.evp_pkey_st*) #2

declare i32 @X509_sign(%struct.x509_st*, %struct.evp_pkey_st*, %struct.env_md_st*) #2

declare %struct.env_md_st* @EVP_sha256() #2

declare void @NCONF_free(%struct.conf_st*) #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st*) #2

declare void @X509_REQ_free(%struct.X509_req_st*) #2

declare %struct.conf_st* @NCONF_new(%struct.conf_method_st*) #2

declare i32 @NCONF_load(%struct.conf_st*, i8*, i64*) #2

declare void @OPENSSL_load_builtin_modules() #2

declare i32 @CONF_modules_load(%struct.conf_st*, i8*, i64) #2

declare i8* @NCONF_get_string(%struct.conf_st*, i8*, i8*) #2

declare i32 @ASN1_STRING_set_default_mask_asc(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.evp_pkey_st* @GenerateRSAPrivateKey(i32) #0 !dbg !1444 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsa_st*, align 8
  %4 = alloca %struct.evp_pkey_st*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1447, metadata !45), !dbg !1448
  call void @llvm.dbg.declare(metadata %struct.rsa_st** %3, metadata !1449, metadata !45), !dbg !1450
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %4, metadata !1451, metadata !45), !dbg !1452
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %4, align 8, !dbg !1452
  %5 = load i32, i32* %2, align 4, !dbg !1453
  %6 = call %struct.rsa_st* @GenerateRSAKeyPair(i32 %5), !dbg !1454
  store %struct.rsa_st* %6, %struct.rsa_st** %3, align 8, !dbg !1455
  %7 = load %struct.rsa_st*, %struct.rsa_st** %3, align 8, !dbg !1456
  %8 = icmp ne %struct.rsa_st* %7, null, !dbg !1456
  br i1 %8, label %10, label %9, !dbg !1458

; <label>:9:                                      ; preds = %1
  br label %23, !dbg !1459

; <label>:10:                                     ; preds = %1
  %11 = call %struct.evp_pkey_st* @EVP_PKEY_new(), !dbg !1461
  store %struct.evp_pkey_st* %11, %struct.evp_pkey_st** %4, align 8, !dbg !1462
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !1463
  %13 = icmp ne %struct.evp_pkey_st* %12, null, !dbg !1463
  br i1 %13, label %18, label %14, !dbg !1465

; <label>:14:                                     ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1466
  %16 = call i8* @g_get_prgname(), !dbg !1468
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), i8* %16), !dbg !1469
  br label %23, !dbg !1471

; <label>:18:                                     ; preds = %10
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !1472
  %20 = load %struct.rsa_st*, %struct.rsa_st** %3, align 8, !dbg !1472
  %21 = bitcast %struct.rsa_st* %20 to i8*, !dbg !1473
  %22 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* %19, i32 6, i8* %21), !dbg !1472
  store %struct.rsa_st* null, %struct.rsa_st** %3, align 8, !dbg !1474
  br label %23, !dbg !1475

; <label>:23:                                     ; preds = %18, %14, %9
  %24 = load %struct.rsa_st*, %struct.rsa_st** %3, align 8, !dbg !1476
  call void @RSA_free(%struct.rsa_st* %24), !dbg !1477
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %4, align 8, !dbg !1478
  ret %struct.evp_pkey_st* %25, !dbg !1479
}

declare %struct.X509_req_st* @X509_REQ_new() #2

; Function Attrs: nounwind uwtable
define internal i32 @ConfigX509CertReq(%struct.X509_req_st*, %struct.conf_st*) #0 !dbg !1480 {
  %3 = alloca %struct.X509_req_st*, align 8
  %4 = alloca %struct.conf_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.X509_name_st*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stack_st_CONF_VALUE*, align 8
  %11 = alloca %struct.CONF_VALUE*, align 8
  store %struct.X509_req_st* %0, %struct.X509_req_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.X509_req_st** %3, metadata !1483, metadata !45), !dbg !1484
  store %struct.conf_st* %1, %struct.conf_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.conf_st** %4, metadata !1485, metadata !45), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1487, metadata !45), !dbg !1488
  call void @llvm.dbg.declare(metadata %struct.X509_name_st** %6, metadata !1489, metadata !45), !dbg !1490
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1491, metadata !45), !dbg !1492
  store i32 0, i32* %7, align 4, !dbg !1492
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1493, metadata !45), !dbg !1494
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1495, metadata !45), !dbg !1496
  store i8* null, i8** %9, align 8, !dbg !1496
  %12 = load %struct.X509_req_st*, %struct.X509_req_st** %3, align 8, !dbg !1497
  %13 = call i32 @X509_REQ_set_version(%struct.X509_req_st* %12, i64 0), !dbg !1499
  %14 = icmp ne i32 %13, 0, !dbg !1499
  br i1 %14, label %20, label %15, !dbg !1500

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1501
  %17 = call i8* @g_get_prgname(), !dbg !1503
  %18 = call i8* @GetSSLError(i8** %9), !dbg !1504
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i32 0, i32 0), i8* %17, i8* %18), !dbg !1506
  br label %89, !dbg !1508

; <label>:20:                                     ; preds = %2
  %21 = load %struct.X509_req_st*, %struct.X509_req_st** %3, align 8, !dbg !1509
  %22 = getelementptr inbounds %struct.X509_req_st, %struct.X509_req_st* %21, i32 0, i32 0, !dbg !1510
  %23 = load %struct.X509_req_info_st*, %struct.X509_req_info_st** %22, align 8, !dbg !1510
  %24 = getelementptr inbounds %struct.X509_req_info_st, %struct.X509_req_info_st* %23, i32 0, i32 2, !dbg !1511
  %25 = load %struct.X509_name_st*, %struct.X509_name_st** %24, align 8, !dbg !1511
  store %struct.X509_name_st* %25, %struct.X509_name_st** %6, align 8, !dbg !1512
  %26 = load %struct.X509_name_st*, %struct.X509_name_st** %6, align 8, !dbg !1513
  %27 = icmp ne %struct.X509_name_st* %26, null, !dbg !1513
  br i1 %27, label %33, label %28, !dbg !1515

; <label>:28:                                     ; preds = %20
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1516
  %30 = call i8* @g_get_prgname(), !dbg !1518
  %31 = call i8* @GetSSLError(i8** %9), !dbg !1519
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.25, i32 0, i32 0), i8* %30, i8* %31), !dbg !1521
  br label %89, !dbg !1523

; <label>:33:                                     ; preds = %20
  %34 = load %struct.conf_st*, %struct.conf_st** %4, align 8, !dbg !1524
  %35 = call i8* @NCONF_get_string(%struct.conf_st* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0)), !dbg !1525
  store i8* %35, i8** %8, align 8, !dbg !1526
  %36 = load i8*, i8** %8, align 8, !dbg !1527
  %37 = icmp ne i8* %36, null, !dbg !1527
  br i1 %37, label %38, label %88, !dbg !1529

; <label>:38:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata %struct.stack_st_CONF_VALUE** %10, metadata !1530, metadata !45), !dbg !1532
  %39 = load %struct.conf_st*, %struct.conf_st** %4, align 8, !dbg !1533
  %40 = load i8*, i8** %8, align 8, !dbg !1534
  %41 = call %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st* %39, i8* %40), !dbg !1535
  store %struct.stack_st_CONF_VALUE* %41, %struct.stack_st_CONF_VALUE** %10, align 8, !dbg !1532
  %42 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %10, align 8, !dbg !1536
  %43 = icmp ne %struct.stack_st_CONF_VALUE* %42, null, !dbg !1536
  br i1 %43, label %50, label %44, !dbg !1538

; <label>:44:                                     ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1539
  %46 = call i8* @g_get_prgname(), !dbg !1541
  %47 = load i8*, i8** %8, align 8, !dbg !1542
  %48 = call i8* @GetSSLError(i8** %9), !dbg !1543
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0), i8* %46, i8* %47, i8* %48), !dbg !1545
  br label %89, !dbg !1547

; <label>:50:                                     ; preds = %38
  store i32 0, i32* %5, align 4, !dbg !1548
  br label %51, !dbg !1550

; <label>:51:                                     ; preds = %84, %50
  %52 = load i32, i32* %5, align 4, !dbg !1551
  %53 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %10, align 8, !dbg !1554
  %54 = bitcast %struct.stack_st_CONF_VALUE* %53 to %struct.stack_st*, !dbg !1555
  %55 = call i32 @sk_num(%struct.stack_st* %54), !dbg !1554
  %56 = icmp slt i32 %52, %55, !dbg !1556
  br i1 %56, label %57, label %87, !dbg !1557

; <label>:57:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct.CONF_VALUE** %11, metadata !1558, metadata !45), !dbg !1560
  %58 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %10, align 8, !dbg !1561
  %59 = bitcast %struct.stack_st_CONF_VALUE* %58 to %struct.stack_st*, !dbg !1562
  %60 = load i32, i32* %5, align 4, !dbg !1561
  %61 = call i8* @sk_value(%struct.stack_st* %59, i32 %60), !dbg !1563
  %62 = bitcast i8* %61 to %struct.CONF_VALUE*, !dbg !1564
  store %struct.CONF_VALUE* %62, %struct.CONF_VALUE** %11, align 8, !dbg !1560
  %63 = load %struct.X509_name_st*, %struct.X509_name_st** %6, align 8, !dbg !1565
  %64 = load %struct.CONF_VALUE*, %struct.CONF_VALUE** %11, align 8, !dbg !1567
  %65 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %64, i32 0, i32 1, !dbg !1568
  %66 = load i8*, i8** %65, align 8, !dbg !1568
  %67 = load %struct.CONF_VALUE*, %struct.CONF_VALUE** %11, align 8, !dbg !1569
  %68 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %67, i32 0, i32 2, !dbg !1570
  %69 = load i8*, i8** %68, align 8, !dbg !1570
  %70 = call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* %63, i8* %66, i32 4097, i8* %69, i32 -1, i32 -1, i32 0), !dbg !1571
  %71 = icmp ne i32 %70, 0, !dbg !1571
  br i1 %71, label %83, label %72, !dbg !1572

; <label>:72:                                     ; preds = %57
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1573
  %74 = call i8* @g_get_prgname(), !dbg !1575
  %75 = load %struct.CONF_VALUE*, %struct.CONF_VALUE** %11, align 8, !dbg !1576
  %76 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %75, i32 0, i32 1, !dbg !1577
  %77 = load i8*, i8** %76, align 8, !dbg !1577
  %78 = load %struct.CONF_VALUE*, %struct.CONF_VALUE** %11, align 8, !dbg !1578
  %79 = getelementptr inbounds %struct.CONF_VALUE, %struct.CONF_VALUE* %78, i32 0, i32 2, !dbg !1579
  %80 = load i8*, i8** %79, align 8, !dbg !1579
  %81 = call i8* @GetSSLError(i8** %9), !dbg !1580
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i32 0, i32 0), i8* %74, i8* %77, i8* %80, i8* %81), !dbg !1582
  br label %89, !dbg !1584

; <label>:83:                                     ; preds = %57
  br label %84, !dbg !1585

; <label>:84:                                     ; preds = %83
  %85 = load i32, i32* %5, align 4, !dbg !1586
  %86 = add nsw i32 %85, 1, !dbg !1586
  store i32 %86, i32* %5, align 4, !dbg !1586
  br label %51, !dbg !1588, !llvm.loop !1589

; <label>:87:                                     ; preds = %51
  br label %88, !dbg !1591

; <label>:88:                                     ; preds = %87, %33
  store i32 1, i32* %7, align 4, !dbg !1592
  br label %89, !dbg !1593

; <label>:89:                                     ; preds = %88, %72, %44, %28, %15
  %90 = load i8*, i8** %9, align 8, !dbg !1594
  call void @g_free(i8* %90), !dbg !1595
  %91 = load i32, i32* %7, align 4, !dbg !1596
  ret i32 %91, !dbg !1597
}

declare i32 @X509_REQ_set_pubkey(%struct.X509_req_st*, %struct.evp_pkey_st*) #2

; Function Attrs: nounwind uwtable
define internal %struct.rsa_st* @GenerateRSAKeyPair(i32) #0 !dbg !1598 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bignum_st*, align 8
  %4 = alloca %struct.rsa_st*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1601, metadata !45), !dbg !1602
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %3, metadata !1603, metadata !45), !dbg !1604
  call void @llvm.dbg.declare(metadata %struct.rsa_st** %4, metadata !1605, metadata !45), !dbg !1606
  store %struct.rsa_st* null, %struct.rsa_st** %4, align 8, !dbg !1606
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1607, metadata !45), !dbg !1608
  store i8* null, i8** %5, align 8, !dbg !1608
  %6 = call %struct.bignum_st* @BN_new(), !dbg !1609
  store %struct.bignum_st* %6, %struct.bignum_st** %3, align 8, !dbg !1610
  %7 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1611
  %8 = icmp ne %struct.bignum_st* %7, null, !dbg !1611
  br i1 %8, label %13, label %9, !dbg !1613

; <label>:9:                                      ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1614
  %11 = call i8* @g_get_prgname(), !dbg !1616
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i32 0, i32 0), i8* %11), !dbg !1617
  br label %43, !dbg !1619

; <label>:13:                                     ; preds = %1
  %14 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1620
  %15 = call i32 @BN_set_word(%struct.bignum_st* %14, i64 65537), !dbg !1622
  %16 = icmp ne i32 %15, 0, !dbg !1622
  br i1 %16, label %22, label %17, !dbg !1623

; <label>:17:                                     ; preds = %13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1624
  %19 = call i8* @g_get_prgname(), !dbg !1626
  %20 = call i8* @GetSSLError(i8** %5), !dbg !1627
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i8* %19, i8* %20), !dbg !1629
  br label %43, !dbg !1631

; <label>:22:                                     ; preds = %13
  %23 = call %struct.rsa_st* @RSA_new(), !dbg !1632
  store %struct.rsa_st* %23, %struct.rsa_st** %4, align 8, !dbg !1633
  %24 = load %struct.rsa_st*, %struct.rsa_st** %4, align 8, !dbg !1634
  %25 = icmp ne %struct.rsa_st* %24, null, !dbg !1634
  br i1 %25, label %30, label %26, !dbg !1636

; <label>:26:                                     ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1637
  %28 = call i8* @g_get_prgname(), !dbg !1639
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0), i8* %28), !dbg !1640
  br label %43, !dbg !1642

; <label>:30:                                     ; preds = %22
  %31 = load %struct.rsa_st*, %struct.rsa_st** %4, align 8, !dbg !1643
  %32 = load i32, i32* %2, align 4, !dbg !1645
  %33 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1646
  %34 = call i32 @RSA_generate_key_ex(%struct.rsa_st* %31, i32 %32, %struct.bignum_st* %33, %struct.bn_gencb_st* null), !dbg !1647
  %35 = icmp ne i32 %34, 0, !dbg !1647
  br i1 %35, label %42, label %36, !dbg !1648

; <label>:36:                                     ; preds = %30
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1649
  %38 = call i8* @g_get_prgname(), !dbg !1651
  %39 = call i8* @GetSSLError(i8** %5), !dbg !1652
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0), i8* %38, i8* %39), !dbg !1654
  %41 = load %struct.rsa_st*, %struct.rsa_st** %4, align 8, !dbg !1656
  call void @RSA_free(%struct.rsa_st* %41), !dbg !1657
  store %struct.rsa_st* null, %struct.rsa_st** %4, align 8, !dbg !1658
  br label %42, !dbg !1659

; <label>:42:                                     ; preds = %36, %30
  br label %43, !dbg !1660

; <label>:43:                                     ; preds = %42, %26, %17, %9
  %44 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1662
  call void @BN_free(%struct.bignum_st* %44), !dbg !1663
  %45 = load i8*, i8** %5, align 8, !dbg !1664
  call void @g_free(i8* %45), !dbg !1665
  %46 = load %struct.rsa_st*, %struct.rsa_st** %4, align 8, !dbg !1666
  ret %struct.rsa_st* %46, !dbg !1667
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() #2

declare i32 @EVP_PKEY_assign(%struct.evp_pkey_st*, i32, i8*) #2

declare void @RSA_free(%struct.rsa_st*) #2

declare %struct.bignum_st* @BN_new() #2

declare i32 @BN_set_word(%struct.bignum_st*, i64) #2

declare %struct.rsa_st* @RSA_new() #2

declare i32 @RSA_generate_key_ex(%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*) #2

declare void @BN_free(%struct.bignum_st*) #2

declare i32 @X509_REQ_set_version(%struct.X509_req_st*, i64) #2

declare %struct.stack_st_CONF_VALUE* @NCONF_get_section(%struct.conf_st*, i8*) #2

declare i32 @sk_num(%struct.stack_st*) #2

declare i8* @sk_value(%struct.stack_st*, i32) #2

declare i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st*, i8*, i32, i8*, i32, i32, i32) #2

declare %struct.x509_st* @X509_new() #2

; Function Attrs: nounwind uwtable
define internal i32 @SetCertSerialNumber(%struct.x509_st*) #0 !dbg !1668 {
  %2 = alloca %struct.x509_st*, align 8
  %3 = alloca %struct.bignum_st*, align 8
  %4 = alloca %struct.asn1_string_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.x509_st* %0, %struct.x509_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %2, metadata !1671, metadata !45), !dbg !1672
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %3, metadata !1673, metadata !45), !dbg !1674
  store %struct.bignum_st* null, %struct.bignum_st** %3, align 8, !dbg !1674
  call void @llvm.dbg.declare(metadata %struct.asn1_string_st** %4, metadata !1675, metadata !45), !dbg !1676
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1677, metadata !45), !dbg !1678
  store i32 0, i32* %5, align 4, !dbg !1678
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1679, metadata !45), !dbg !1680
  store i8* null, i8** %6, align 8, !dbg !1680
  %7 = call %struct.asn1_string_st* @ASN1_INTEGER_new(), !dbg !1681
  store %struct.asn1_string_st* %7, %struct.asn1_string_st** %4, align 8, !dbg !1682
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !dbg !1683
  %9 = icmp ne %struct.asn1_string_st* %8, null, !dbg !1683
  br i1 %9, label %14, label %10, !dbg !1685

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1686
  %12 = call i8* @g_get_prgname(), !dbg !1688
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i8* %12), !dbg !1689
  br label %52, !dbg !1691

; <label>:14:                                     ; preds = %1
  %15 = call %struct.bignum_st* @BN_new(), !dbg !1692
  store %struct.bignum_st* %15, %struct.bignum_st** %3, align 8, !dbg !1693
  %16 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1694
  %17 = icmp ne %struct.bignum_st* %16, null, !dbg !1694
  br i1 %17, label %22, label %18, !dbg !1696

; <label>:18:                                     ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1697
  %20 = call i8* @g_get_prgname(), !dbg !1699
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i32 0, i32 0), i8* %20), !dbg !1700
  br label %52, !dbg !1702

; <label>:22:                                     ; preds = %14
  %23 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1703
  %24 = call i32 @BN_rand(%struct.bignum_st* %23, i32 64, i32 0, i32 0), !dbg !1705
  %25 = icmp ne i32 %24, 0, !dbg !1705
  br i1 %25, label %31, label %26, !dbg !1706

; <label>:26:                                     ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1707
  %28 = call i8* @g_get_prgname(), !dbg !1709
  %29 = call i8* @GetSSLError(i8** %6), !dbg !1710
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i32 0, i32 0), i8* %28, i8* %29), !dbg !1712
  br label %52, !dbg !1714

; <label>:31:                                     ; preds = %22
  %32 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1715
  %33 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !dbg !1717
  %34 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* %32, %struct.asn1_string_st* %33), !dbg !1718
  %35 = icmp ne %struct.asn1_string_st* %34, null, !dbg !1718
  br i1 %35, label %41, label %36, !dbg !1719

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1720
  %38 = call i8* @g_get_prgname(), !dbg !1722
  %39 = call i8* @GetSSLError(i8** %6), !dbg !1723
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i32 0, i32 0), i8* %38, i8* %39), !dbg !1725
  br label %52, !dbg !1727

; <label>:41:                                     ; preds = %31
  %42 = load %struct.x509_st*, %struct.x509_st** %2, align 8, !dbg !1728
  %43 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !dbg !1730
  %44 = call i32 @X509_set_serialNumber(%struct.x509_st* %42, %struct.asn1_string_st* %43), !dbg !1731
  %45 = icmp ne i32 %44, 0, !dbg !1731
  br i1 %45, label %51, label %46, !dbg !1732

; <label>:46:                                     ; preds = %41
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1733
  %48 = call i8* @g_get_prgname(), !dbg !1735
  %49 = call i8* @GetSSLError(i8** %6), !dbg !1736
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.38, i32 0, i32 0), i8* %48, i8* %49), !dbg !1738
  br label %52, !dbg !1740

; <label>:51:                                     ; preds = %41
  store i32 1, i32* %5, align 4, !dbg !1741
  br label %52, !dbg !1742

; <label>:52:                                     ; preds = %51, %46, %36, %26, %18, %10
  %53 = load %struct.bignum_st*, %struct.bignum_st** %3, align 8, !dbg !1743
  call void @BN_free(%struct.bignum_st* %53), !dbg !1744
  %54 = load %struct.asn1_string_st*, %struct.asn1_string_st** %4, align 8, !dbg !1745
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* %54), !dbg !1746
  %55 = load i8*, i8** %6, align 8, !dbg !1747
  call void @g_free(i8* %55), !dbg !1748
  %56 = load i32, i32* %5, align 4, !dbg !1749
  ret i32 %56, !dbg !1750
}

declare i32 @X509_set_issuer_name(%struct.x509_st*, %struct.X509_name_st*) #2

declare %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st*, i64) #2

declare i32 @X509_set_subject_name(%struct.x509_st*, %struct.X509_name_st*) #2

declare void @X509V3_set_ctx(%struct.v3_ext_ctx*, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, i32) #2

declare void @X509V3_set_nconf(%struct.v3_ext_ctx*, %struct.conf_st*) #2

declare i32 @X509_set_version(%struct.x509_st*, i64) #2

declare i32 @X509V3_EXT_add_nconf(%struct.conf_st*, %struct.v3_ext_ctx*, i8*, %struct.x509_st*) #2

declare %struct.asn1_string_st* @ASN1_INTEGER_new() #2

declare i32 @BN_rand(%struct.bignum_st*, i32, i32, i32) #2

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st*, %struct.asn1_string_st*) #2

declare i32 @X509_set_serialNumber(%struct.x509_st*, %struct.asn1_string_st*) #2

declare void @ASN1_INTEGER_free(%struct.asn1_string_st*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "vmware_guestproxycerttool-cert_key.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!2 = !{}
!3 = !{!4, !5, !7, !24, !32}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !9, line: 72, baseType: !10)
!9 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !9, line: 66, size: 256, align: 64, elements: !11)
!11 = !{!12, !14, !16, !17, !18}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !10, file: !9, line: 67, baseType: !13, size: 32, align: 32)
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !10, file: !9, line: 68, baseType: !15, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !10, file: !9, line: 69, baseType: !13, size: 32, align: 32, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !10, file: !9, line: 70, baseType: !13, size: 32, align: 32, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !10, file: !9, line: 71, baseType: !19, size: 64, align: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!13, !22, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONF_VALUE", file: !26, line: 78, baseType: !27)
!26 = !DIFile(filename: "/usr/include/openssl/conf.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 74, size: 192, align: 64, elements: !28)
!28 = !{!29, !30, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !27, file: !26, line: 75, baseType: !5, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !26, line: 76, baseType: !5, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !27, file: !26, line: 77, baseType: !5, size: 64, align: 64, offset: 128)
!32 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!36 = distinct !DISubprogram(name: "GetSSLError", scope: !37, file: !37, line: 59, type: !38, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!37 = !DIFile(filename: "cert_key.c", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !43}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !42, line: 46, baseType: !6)
!42 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!44 = !DILocalVariable(name: "errorStr", arg: 1, scope: !36, file: !37, line: 59, type: !43)
!45 = !DIExpression()
!46 = !DILocation(line: 59, column: 21, scope: !36)
!47 = !DILocalVariable(name: "code", scope: !36, file: !37, line: 61, type: !48)
!48 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!49 = !DILocation(line: 61, column: 18, scope: !36)
!50 = !DILocalVariable(name: "str", scope: !36, file: !37, line: 62, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !53, line: 39, baseType: !54)
!53 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !53, line: 41, size: 192, align: 64, elements: !55)
!55 = !{!56, !57, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !54, file: !53, line: 43, baseType: !40, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !53, line: 44, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !59, line: 66, baseType: !48)
!59 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!60 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !54, file: !53, line: 45, baseType: !58, size: 64, align: 64, offset: 128)
!61 = !DILocation(line: 62, column: 13, scope: !36)
!62 = !DILocation(line: 62, column: 19, scope: !36)
!63 = !DILocalVariable(name: "first", scope: !36, file: !37, line: 63, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !42, line: 50, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !42, line: 49, baseType: !13)
!66 = !DILocation(line: 63, column: 13, scope: !36)
!67 = !DILocalVariable(name: "buf", scope: !36, file: !37, line: 64, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32768, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 4096)
!71 = !DILocation(line: 64, column: 9, scope: !36)
!72 = !DILocation(line: 66, column: 4, scope: !36)
!73 = !DILocation(line: 66, column: 19, scope: !74)
!74 = !DILexicalBlockFile(scope: !36, file: !37, discriminator: 1)
!75 = !DILocation(line: 66, column: 17, scope: !74)
!76 = !DILocation(line: 66, column: 36, scope: !74)
!77 = !DILocation(line: 66, column: 4, scope: !74)
!78 = !DILocation(line: 67, column: 26, scope: !79)
!79 = distinct !DILexicalBlock(scope: !36, file: !37, line: 66, column: 42)
!80 = !DILocation(line: 67, column: 32, scope: !79)
!81 = !DILocation(line: 67, column: 7, scope: !79)
!82 = !DILocation(line: 68, column: 30, scope: !79)
!83 = !DILocation(line: 68, column: 43, scope: !79)
!84 = !DILocation(line: 68, column: 62, scope: !79)
!85 = !DILocation(line: 68, column: 7, scope: !79)
!86 = !DILocation(line: 69, column: 13, scope: !79)
!87 = !DILocation(line: 66, column: 4, scope: !88)
!88 = !DILexicalBlockFile(scope: !36, file: !37, discriminator: 2)
!89 = distinct !{!89, !72}
!90 = !DILocation(line: 72, column: 30, scope: !36)
!91 = !DILocation(line: 72, column: 16, scope: !36)
!92 = !DILocation(line: 72, column: 5, scope: !36)
!93 = !DILocation(line: 72, column: 14, scope: !36)
!94 = !DILocation(line: 74, column: 12, scope: !36)
!95 = !DILocation(line: 74, column: 11, scope: !36)
!96 = !DILocation(line: 74, column: 4, scope: !36)
!97 = distinct !DISubprogram(name: "CertKey_InitOpenSSLLib", scope: !37, file: !37, line: 95, type: !98, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!98 = !DISubroutineType(types: !99)
!99 = !{null}
!100 = !DILocation(line: 97, column: 4, scope: !97)
!101 = !DILocation(line: 98, column: 4, scope: !97)
!102 = !DILocation(line: 99, column: 1, scope: !97)
!103 = distinct !DISubprogram(name: "CertKey_ComputeCertPemFileHash", scope: !37, file: !37, line: 120, type: !104, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!104 = !DISubroutineType(types: !105)
!105 = !{!40, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!108 = !DILocalVariable(name: "certPemFile", arg: 1, scope: !103, file: !37, line: 120, type: !106)
!109 = !DILocation(line: 120, column: 45, scope: !103)
!110 = !DILocalVariable(name: "file", scope: !103, file: !37, line: 122, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !113, line: 48, baseType: !114)
!113 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !115, line: 241, size: 1728, align: 64, elements: !116)
!115 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !137, !138, !139, !140, !143, !145, !147, !151, !154, !156, !157, !158, !159, !160, !163, !164}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !114, file: !115, line: 242, baseType: !13, size: 32, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !114, file: !115, line: 247, baseType: !5, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !114, file: !115, line: 248, baseType: !5, size: 64, align: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !114, file: !115, line: 249, baseType: !5, size: 64, align: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !114, file: !115, line: 250, baseType: !5, size: 64, align: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !114, file: !115, line: 251, baseType: !5, size: 64, align: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !114, file: !115, line: 252, baseType: !5, size: 64, align: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !114, file: !115, line: 253, baseType: !5, size: 64, align: 64, offset: 448)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !114, file: !115, line: 254, baseType: !5, size: 64, align: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !114, file: !115, line: 256, baseType: !5, size: 64, align: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !114, file: !115, line: 257, baseType: !5, size: 64, align: 64, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !114, file: !115, line: 258, baseType: !5, size: 64, align: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !114, file: !115, line: 260, baseType: !130, size: 64, align: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !115, line: 156, size: 192, align: 64, elements: !132)
!132 = !{!133, !134, !136}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !131, file: !115, line: 157, baseType: !130, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !131, file: !115, line: 158, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !131, file: !115, line: 162, baseType: !13, size: 32, align: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !114, file: !115, line: 262, baseType: !135, size: 64, align: 64, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !114, file: !115, line: 264, baseType: !13, size: 32, align: 32, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !114, file: !115, line: 268, baseType: !13, size: 32, align: 32, offset: 928)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !114, file: !115, line: 270, baseType: !141, size: 64, align: 64, offset: 960)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !142, line: 131, baseType: !32)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !114, file: !115, line: 274, baseType: !144, size: 16, align: 16, offset: 1024)
!144 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !114, file: !115, line: 275, baseType: !146, size: 8, align: 8, offset: 1040)
!146 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !114, file: !115, line: 276, baseType: !148, size: 8, align: 8, offset: 1048)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, align: 8, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 1)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !114, file: !115, line: 280, baseType: !152, size: 64, align: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !115, line: 150, baseType: null)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !114, file: !115, line: 289, baseType: !155, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !142, line: 132, baseType: !32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !114, file: !115, line: 297, baseType: !4, size: 64, align: 64, offset: 1216)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !114, file: !115, line: 298, baseType: !4, size: 64, align: 64, offset: 1280)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !114, file: !115, line: 299, baseType: !4, size: 64, align: 64, offset: 1344)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !114, file: !115, line: 300, baseType: !4, size: 64, align: 64, offset: 1408)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !114, file: !115, line: 302, baseType: !161, size: 64, align: 64, offset: 1472)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 216, baseType: !48)
!162 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !114, file: !115, line: 303, baseType: !13, size: 32, align: 32, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !114, file: !115, line: 305, baseType: !165, size: 160, align: 8, offset: 1568)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, align: 8, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 20)
!168 = !DILocation(line: 122, column: 10, scope: !103)
!169 = !DILocalVariable(name: "hash", scope: !103, file: !37, line: 123, type: !40)
!170 = !DILocation(line: 123, column: 11, scope: !103)
!171 = !DILocalVariable(name: "cert", scope: !103, file: !37, line: 124, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !174, line: 154, baseType: !175)
!174 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !176, line: 270, size: 1472, align: 64, elements: !177)
!176 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!177 = !{!178, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !642, !646, !651, !653, !664, !666}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !175, file: !176, line: 271, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !176, line: 254, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !176, line: 242, size: 832, align: 64, elements: !182)
!182 = !{!183, !195, !196, !278, !300, !309, !310, !601, !602, !603, !608}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !181, file: !176, line: 243, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !174, line: 83, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !187, line: 247, size: 192, align: 64, elements: !188)
!187 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!188 = !{!189, !190, !191, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !186, file: !187, line: 248, baseType: !13, size: 32, align: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !187, line: 249, baseType: !13, size: 32, align: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !186, file: !187, line: 250, baseType: !192, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !187, line: 256, baseType: !32, size: 64, align: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !181, file: !176, line: 244, baseType: !184, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !181, file: !176, line: 245, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !174, line: 155, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !176, line: 143, size: 128, align: 64, elements: !200)
!200 = !{!201, !216}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !199, file: !176, line: 144, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !174, line: 103, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !187, line: 218, size: 320, align: 64, elements: !205)
!205 = !{!206, !209, !210, !211, !212, !215}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !204, file: !187, line: 219, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !204, file: !187, line: 219, baseType: !207, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !204, file: !187, line: 220, baseType: !13, size: 32, align: 32, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !204, file: !187, line: 221, baseType: !13, size: 32, align: 32, offset: 160)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !204, file: !187, line: 222, baseType: !213, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !187, line: 223, baseType: !13, size: 32, align: 32, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !199, file: !176, line: 145, baseType: !217, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !187, line: 561, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !187, line: 532, size: 128, align: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !219, file: !187, line: 533, baseType: !13, size: 32, align: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !187, line: 560, baseType: !223, size: 64, align: 64, offset: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !187, line: 534, size: 64, align: 64, elements: !224)
!224 = !{!225, !226, !228, !231, !232, !233, !236, !239, !242, !245, !248, !251, !254, !257, !260, !263, !266, !269, !272, !273, !274}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !223, file: !187, line: 535, baseType: !5, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !223, file: !187, line: 536, baseType: !227, size: 32, align: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !174, line: 99, baseType: !13)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !223, file: !187, line: 537, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !174, line: 98, baseType: !186)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !223, file: !187, line: 538, baseType: !202, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !223, file: !187, line: 539, baseType: !184, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !223, file: !187, line: 540, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !174, line: 84, baseType: !186)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !223, file: !187, line: 541, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !174, line: 85, baseType: !186)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !223, file: !187, line: 542, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !174, line: 86, baseType: !186)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !223, file: !187, line: 543, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !174, line: 87, baseType: !186)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !223, file: !187, line: 544, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !174, line: 88, baseType: !186)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !223, file: !187, line: 545, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !174, line: 89, baseType: !186)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !223, file: !187, line: 546, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !174, line: 90, baseType: !186)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !223, file: !187, line: 547, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !174, line: 92, baseType: !186)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !223, file: !187, line: 548, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !174, line: 91, baseType: !186)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !223, file: !187, line: 549, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !174, line: 93, baseType: !186)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !223, file: !187, line: 550, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !174, line: 95, baseType: !186)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !223, file: !187, line: 551, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !174, line: 96, baseType: !186)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !223, file: !187, line: 552, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !174, line: 97, baseType: !186)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !223, file: !187, line: 557, baseType: !229, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !223, file: !187, line: 558, baseType: !229, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !223, file: !187, line: 559, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !187, line: 307, baseType: !277)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !187, line: 307, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !181, file: !176, line: 246, baseType: !279, size: 64, align: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !174, line: 159, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !176, line: 179, size: 320, align: 64, elements: !282)
!282 = !{!283, !288, !289, !298, !299}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !281, file: !176, line: 180, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !176, line: 175, size: 256, align: 64, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !285, file: !176, line: 175, baseType: !8, size: 256, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !281, file: !176, line: 181, baseType: !13, size: 32, align: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !281, file: !176, line: 183, baseType: !290, size: 64, align: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !174, line: 127, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !293, line: 77, size: 192, align: 64, elements: !294)
!293 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!294 = !{!295, !296, !297}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !292, file: !293, line: 78, baseType: !161, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !292, file: !293, line: 79, baseType: !5, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !292, file: !293, line: 80, baseType: !161, size: 64, align: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !281, file: !176, line: 188, baseType: !192, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !281, file: !176, line: 189, baseType: !13, size: 32, align: 32, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !181, file: !176, line: 247, baseType: !301, size: 64, align: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !176, line: 155, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !176, line: 152, size: 128, align: 64, elements: !304)
!304 = !{!305, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !303, file: !176, line: 153, baseType: !306, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !174, line: 94, baseType: !186)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !303, file: !176, line: 154, baseType: !306, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !181, file: !176, line: 248, baseType: !279, size: 64, align: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !181, file: !176, line: 249, baseType: !311, size: 64, align: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !174, line: 160, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !176, line: 157, size: 192, align: 64, elements: !314)
!314 = !{!315, !316, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !313, file: !176, line: 158, baseType: !197, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !313, file: !176, line: 159, baseType: !237, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !313, file: !176, line: 160, baseType: !318, size: 64, align: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !174, line: 133, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !321, line: 129, size: 448, align: 64, elements: !322)
!321 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!322 = !{!323, !324, !325, !326, !331, !335, !595, !596}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !320, file: !321, line: 130, baseType: !13, size: 32, align: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !320, file: !321, line: 131, baseType: !13, size: 32, align: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !320, file: !321, line: 132, baseType: !13, size: 32, align: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !320, file: !321, line: 133, baseType: !327, size: 64, align: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !174, line: 135, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !174, line: 135, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !320, file: !321, line: 134, baseType: !332, size: 64, align: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !174, line: 177, baseType: !334)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !174, line: 177, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !320, file: !321, line: 149, baseType: !336, size: 64, align: 64, offset: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !320, file: !321, line: 135, size: 64, align: 64, elements: !337)
!337 = !{!338, !339, !470, !539, !592}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !336, file: !321, line: 136, baseType: !5, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !336, file: !321, line: 138, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !342, line: 132, size: 1344, align: 64, elements: !343)
!342 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!343 = !{!344, !345, !346, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !459, !460, !461, !462, !463, !464, !465, !469}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !341, file: !342, line: 137, baseType: !13, size: 32, align: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !341, file: !342, line: 138, baseType: !32, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !341, file: !342, line: 139, baseType: !347, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !174, line: 147, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !342, line: 85, size: 896, align: 64, elements: !351)
!351 = !{!352, !353, !359, !360, !361, !362, !382, !399, !403, !404, !405, !406, !414, !418}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !342, line: 86, baseType: !207, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !350, file: !342, line: 87, baseType: !354, size: 64, align: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!13, !13, !213, !192, !357, !13}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !174, line: 146, baseType: !341)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !350, file: !342, line: 89, baseType: !354, size: 64, align: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !350, file: !342, line: 91, baseType: !354, size: 64, align: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !350, file: !342, line: 93, baseType: !354, size: 64, align: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !350, file: !342, line: 96, baseType: !363, size: 64, align: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!13, !366, !377, !357, !379}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !174, line: 120, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !369, line: 313, size: 192, align: 64, elements: !370)
!369 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!370 = !{!371, !373, !374, !375, !376}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !368, file: !369, line: 314, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !368, file: !369, line: 316, baseType: !13, size: 32, align: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !368, file: !369, line: 318, baseType: !13, size: 32, align: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !368, file: !369, line: 319, baseType: !13, size: 32, align: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !369, line: 320, baseType: !13, size: 32, align: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !174, line: 121, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !174, line: 121, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !350, file: !342, line: 98, baseType: !383, size: 64, align: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!13, !366, !377, !377, !377, !379, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !174, line: 123, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !369, line: 324, size: 832, align: 64, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !398}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !388, file: !369, line: 325, baseType: !13, size: 32, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !388, file: !369, line: 326, baseType: !367, size: 192, align: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !388, file: !369, line: 327, baseType: !367, size: 192, align: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !388, file: !369, line: 328, baseType: !367, size: 192, align: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !388, file: !369, line: 330, baseType: !395, size: 128, align: 64, offset: 640)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 128, align: 64, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 2)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !369, line: 333, baseType: !13, size: 32, align: 32, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !350, file: !342, line: 101, baseType: !400, size: 64, align: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!13, !357}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !350, file: !342, line: 103, baseType: !400, size: 64, align: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !342, line: 105, baseType: !13, size: 32, align: 32, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !350, file: !342, line: 107, baseType: !5, size: 64, align: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !350, file: !342, line: 116, baseType: !407, size: 64, align: 64, offset: 704)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!13, !13, !213, !410, !192, !411, !412}
!410 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !350, file: !342, line: 120, baseType: !415, size: 64, align: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!13, !13, !213, !410, !213, !410, !412}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !350, file: !342, line: 129, baseType: !419, size: 64, align: 64, offset: 832)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!13, !357, !13, !366, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !174, line: 125, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !369, line: 349, size: 192, align: 64, elements: !425)
!425 = !{!426, !427, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !424, file: !369, line: 350, baseType: !410, size: 32, align: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !424, file: !369, line: 351, baseType: !4, size: 64, align: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !424, file: !369, line: 357, baseType: !429, size: 64, align: 64, offset: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !369, line: 352, size: 64, align: 64, elements: !430)
!430 = !{!431, !435}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !429, file: !369, line: 354, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !13, !13, !4}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !429, file: !369, line: 356, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!13, !13, !13, !422}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !341, file: !342, line: 141, baseType: !332, size: 64, align: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !341, file: !342, line: 142, baseType: !366, size: 64, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !341, file: !342, line: 143, baseType: !366, size: 64, align: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !341, file: !342, line: 144, baseType: !366, size: 64, align: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !341, file: !342, line: 145, baseType: !366, size: 64, align: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !341, file: !342, line: 146, baseType: !366, size: 64, align: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !341, file: !342, line: 147, baseType: !366, size: 64, align: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !341, file: !342, line: 148, baseType: !366, size: 64, align: 64, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !341, file: !342, line: 149, baseType: !366, size: 64, align: 64, offset: 704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !341, file: !342, line: 151, baseType: !449, size: 128, align: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !174, line: 195, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !451, line: 292, size: 128, align: 64, elements: !452)
!451 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!452 = !{!453, !458}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !450, file: !451, line: 293, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !451, line: 297, size: 256, align: 64, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !455, file: !451, line: 297, baseType: !8, size: 256, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !450, file: !451, line: 295, baseType: !13, size: 32, align: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !341, file: !342, line: 152, baseType: !13, size: 32, align: 32, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !342, line: 153, baseType: !13, size: 32, align: 32, offset: 928)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !341, file: !342, line: 155, baseType: !386, size: 64, align: 64, offset: 960)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !341, file: !342, line: 156, baseType: !386, size: 64, align: 64, offset: 1024)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !341, file: !342, line: 157, baseType: !386, size: 64, align: 64, offset: 1088)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !341, file: !342, line: 162, baseType: !5, size: 64, align: 64, offset: 1152)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !341, file: !342, line: 163, baseType: !466, size: 64, align: 64, offset: 1216)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !174, line: 122, baseType: !468)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !174, line: 122, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !341, file: !342, line: 164, baseType: !466, size: 64, align: 64, offset: 1280)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !336, file: !321, line: 141, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !473, line: 155, size: 1088, align: 64, elements: !474)
!473 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !538}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !472, file: !473, line: 160, baseType: !13, size: 32, align: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !472, file: !473, line: 161, baseType: !32, size: 64, align: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !472, file: !473, line: 162, baseType: !13, size: 32, align: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !472, file: !473, line: 163, baseType: !366, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !472, file: !473, line: 164, baseType: !366, size: 64, align: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !472, file: !473, line: 165, baseType: !366, size: 64, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !472, file: !473, line: 166, baseType: !366, size: 64, align: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !472, file: !473, line: 167, baseType: !366, size: 64, align: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !472, file: !473, line: 168, baseType: !366, size: 64, align: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !472, file: !473, line: 169, baseType: !366, size: 64, align: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !473, line: 170, baseType: !13, size: 32, align: 32, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !472, file: !473, line: 172, baseType: !386, size: 64, align: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !472, file: !473, line: 173, baseType: !13, size: 32, align: 32, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !472, file: !473, line: 174, baseType: !449, size: 128, align: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !472, file: !473, line: 175, baseType: !490, size: 64, align: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !174, line: 144, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !473, line: 129, size: 768, align: 64, elements: !494)
!494 = !{!495, !496, !508, !513, !517, !521, !525, !529, !530, !531, !532, !537}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !473, line: 130, baseType: !207, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !493, file: !473, line: 131, baseType: !497, size: 64, align: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !213, !13, !506}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !473, line: 127, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !473, line: 124, size: 128, align: 64, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !502, file: !473, line: 125, baseType: !366, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !502, file: !473, line: 126, baseType: !366, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !174, line: 143, baseType: !472)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !493, file: !473, line: 132, baseType: !509, size: 64, align: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!13, !506, !379, !512, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !493, file: !473, line: 134, baseType: !514, size: 64, align: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!13, !213, !13, !500, !506}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !493, file: !473, line: 136, baseType: !518, size: 64, align: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!13, !506, !366, !366, !366, !366, !366, !366, !379, !386}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !493, file: !473, line: 140, baseType: !522, size: 64, align: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!13, !506, !366, !366, !377, !377, !379, !386}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !493, file: !473, line: 142, baseType: !526, size: 64, align: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!13, !506}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !493, file: !473, line: 143, baseType: !526, size: 64, align: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !473, line: 144, baseType: !13, size: 32, align: 32, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !493, file: !473, line: 145, baseType: !5, size: 64, align: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !493, file: !473, line: 147, baseType: !533, size: 64, align: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!13, !506, !13, !213, !13, !536, !372, !422}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !493, file: !473, line: 152, baseType: !526, size: 64, align: 64, offset: 704)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !472, file: !473, line: 177, baseType: !332, size: 64, align: 64, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !336, file: !321, line: 144, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !542, line: 135, size: 1152, align: 64, elements: !543)
!542 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !591}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !541, file: !542, line: 140, baseType: !13, size: 32, align: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !541, file: !542, line: 141, baseType: !13, size: 32, align: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !541, file: !542, line: 142, baseType: !366, size: 64, align: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !541, file: !542, line: 143, baseType: !366, size: 64, align: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !541, file: !542, line: 144, baseType: !32, size: 64, align: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !541, file: !542, line: 145, baseType: !366, size: 64, align: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !541, file: !542, line: 146, baseType: !366, size: 64, align: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !542, line: 147, baseType: !13, size: 32, align: 32, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !541, file: !542, line: 148, baseType: !386, size: 64, align: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !541, file: !542, line: 150, baseType: !366, size: 64, align: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !541, file: !542, line: 151, baseType: !366, size: 64, align: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !541, file: !542, line: 152, baseType: !192, size: 64, align: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !541, file: !542, line: 153, baseType: !13, size: 32, align: 32, offset: 704)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !541, file: !542, line: 154, baseType: !366, size: 64, align: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !541, file: !542, line: 155, baseType: !13, size: 32, align: 32, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !541, file: !542, line: 156, baseType: !449, size: 128, align: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !541, file: !542, line: 157, baseType: !561, size: 64, align: 64, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !174, line: 141, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !542, line: 117, size: 576, align: 64, elements: !565)
!565 = !{!566, !567, !573, !577, !583, !584, !585, !586, !587}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !542, line: 118, baseType: !207, size: 64, align: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !564, file: !542, line: 120, baseType: !568, size: 64, align: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!13, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !174, line: 140, baseType: !541)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !564, file: !542, line: 121, baseType: !574, size: 64, align: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!13, !192, !377, !571}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !564, file: !542, line: 123, baseType: !578, size: 64, align: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!13, !581, !366, !377, !377, !377, !379, !386}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !564, file: !542, line: 126, baseType: !568, size: 64, align: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !564, file: !542, line: 127, baseType: !568, size: 64, align: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !542, line: 128, baseType: !13, size: 32, align: 32, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !564, file: !542, line: 129, baseType: !5, size: 64, align: 64, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !564, file: !542, line: 131, baseType: !588, size: 64, align: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!13, !571, !13, !13, !422}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !541, file: !542, line: 158, baseType: !332, size: 64, align: 64, offset: 1088)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !336, file: !321, line: 147, baseType: !593, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64, align: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !321, line: 147, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !320, file: !321, line: 150, baseType: !13, size: 32, align: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !320, file: !321, line: 151, baseType: !597, size: 64, align: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !176, line: 223, size: 256, align: 64, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !598, file: !176, line: 223, baseType: !8, size: 256, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !181, file: !176, line: 250, baseType: !237, size: 64, align: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !181, file: !176, line: 251, baseType: !237, size: 64, align: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !181, file: !176, line: 252, baseType: !604, size: 64, align: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !176, line: 204, size: 256, align: 64, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !605, file: !176, line: 204, baseType: !8, size: 256, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !181, file: !176, line: 253, baseType: !609, size: 192, align: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !187, line: 269, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !187, line: 265, size: 192, align: 64, elements: !611)
!611 = !{!612, !613, !614}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !610, file: !187, line: 266, baseType: !192, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !610, file: !187, line: 267, baseType: !32, size: 64, align: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !610, file: !187, line: 268, baseType: !13, size: 32, align: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !175, file: !176, line: 272, baseType: !197, size: 64, align: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !175, file: !176, line: 273, baseType: !237, size: 64, align: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !175, file: !176, line: 274, baseType: !13, size: 32, align: 32, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !175, file: !176, line: 275, baseType: !13, size: 32, align: 32, offset: 224)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !176, line: 276, baseType: !5, size: 64, align: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !175, file: !176, line: 277, baseType: !449, size: 128, align: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !175, file: !176, line: 279, baseType: !32, size: 64, align: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !175, file: !176, line: 280, baseType: !32, size: 64, align: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !175, file: !176, line: 281, baseType: !48, size: 64, align: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !175, file: !176, line: 282, baseType: !48, size: 64, align: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !175, file: !176, line: 283, baseType: !48, size: 64, align: 64, offset: 704)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !175, file: !176, line: 284, baseType: !48, size: 64, align: 64, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !175, file: !176, line: 285, baseType: !240, size: 64, align: 64, offset: 832)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !175, file: !176, line: 286, baseType: !629, size: 64, align: 64, offset: 896)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !174, line: 186, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !632, line: 262, size: 192, align: 64, elements: !633)
!632 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!633 = !{!634, !635, !641}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !631, file: !632, line: 263, baseType: !240, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !631, file: !632, line: 264, baseType: !636, size: 64, align: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !632, line: 209, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !632, line: 220, size: 256, align: 64, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !638, file: !632, line: 220, baseType: !8, size: 256, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !631, file: !632, line: 265, baseType: !184, size: 64, align: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !175, file: !176, line: 287, baseType: !643, size: 64, align: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !174, line: 184, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !174, line: 184, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !175, file: !176, line: 288, baseType: !647, size: 64, align: 64, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !632, line: 259, size: 256, align: 64, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !648, file: !632, line: 259, baseType: !8, size: 256, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !175, file: !176, line: 289, baseType: !652, size: 64, align: 64, offset: 1088)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !175, file: !176, line: 290, baseType: !654, size: 64, align: 64, offset: 1152)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !174, line: 189, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !632, line: 332, size: 128, align: 64, elements: !657)
!657 = !{!658, !663}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !656, file: !632, line: 333, baseType: !659, size: 64, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !632, line: 330, size: 256, align: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !660, file: !632, line: 330, baseType: !8, size: 256, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !656, file: !632, line: 334, baseType: !659, size: 64, align: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !175, file: !176, line: 296, baseType: !665, size: 160, align: 8, offset: 1216)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 160, align: 8, elements: !166)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !175, file: !176, line: 298, baseType: !667, size: 64, align: 64, offset: 1408)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !176, line: 268, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !176, line: 262, size: 320, align: 64, elements: !670)
!670 = !{!671, !676, !677, !678, !679}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !669, file: !176, line: 263, baseType: !672, size: 64, align: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, align: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !187, line: 801, size: 256, align: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !673, file: !187, line: 801, baseType: !8, size: 256, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !669, file: !176, line: 264, baseType: !672, size: 64, align: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !669, file: !176, line: 265, baseType: !270, size: 64, align: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !669, file: !176, line: 266, baseType: !240, size: 64, align: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !669, file: !176, line: 267, baseType: !680, size: 64, align: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, align: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !187, line: 170, size: 256, align: 64, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !681, file: !187, line: 170, baseType: !8, size: 256, align: 64)
!684 = !DILocation(line: 124, column: 10, scope: !103)
!685 = !DILocalVariable(name: "err", scope: !103, file: !37, line: 125, type: !40)
!686 = !DILocation(line: 125, column: 11, scope: !103)
!687 = !DILocation(line: 127, column: 17, scope: !103)
!688 = !DILocation(line: 127, column: 11, scope: !103)
!689 = !DILocation(line: 127, column: 9, scope: !103)
!690 = !DILocation(line: 128, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !103, file: !37, line: 128, column: 8)
!692 = !DILocation(line: 128, column: 8, scope: !103)
!693 = !DILocation(line: 129, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !37, line: 128, column: 15)
!695 = !DILocation(line: 129, column: 43, scope: !694)
!696 = !DILocation(line: 129, column: 60, scope: !694)
!697 = !DILocation(line: 129, column: 8, scope: !698)
!698 = !DILexicalBlockFile(scope: !694, file: !37, discriminator: 1)
!699 = !DILocation(line: 129, column: 7, scope: !694)
!700 = !DILocation(line: 129, column: 73, scope: !701)
!701 = !DILexicalBlockFile(scope: !694, file: !37, discriminator: 2)
!702 = !DILocation(line: 129, column: 7, scope: !703)
!703 = !DILexicalBlockFile(scope: !694, file: !37, discriminator: 3)
!704 = !DILocation(line: 130, column: 7, scope: !694)
!705 = !DILocation(line: 133, column: 25, scope: !103)
!706 = !DILocation(line: 133, column: 11, scope: !103)
!707 = !DILocation(line: 133, column: 9, scope: !103)
!708 = !DILocation(line: 134, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !103, file: !37, line: 134, column: 8)
!710 = !DILocation(line: 134, column: 8, scope: !103)
!711 = !DILocation(line: 135, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !37, line: 134, column: 15)
!713 = !DILocation(line: 135, column: 59, scope: !712)
!714 = !DILocation(line: 135, column: 76, scope: !712)
!715 = !DILocation(line: 135, column: 89, scope: !716)
!716 = !DILexicalBlockFile(scope: !712, file: !37, discriminator: 1)
!717 = !DILocation(line: 135, column: 7, scope: !718)
!718 = !DILexicalBlockFile(scope: !712, file: !37, discriminator: 2)
!719 = !DILocation(line: 137, column: 7, scope: !712)
!720 = !DILocation(line: 140, column: 59, scope: !103)
!721 = !DILocation(line: 140, column: 36, scope: !103)
!722 = !DILocation(line: 140, column: 11, scope: !723)
!723 = !DILexicalBlockFile(scope: !103, file: !37, discriminator: 1)
!724 = !DILocation(line: 140, column: 9, scope: !103)
!725 = !DILocation(line: 140, column: 4, scope: !103)
!726 = !DILocation(line: 143, column: 8, scope: !727)
!727 = distinct !DILexicalBlock(scope: !103, file: !37, line: 143, column: 8)
!728 = !DILocation(line: 143, column: 8, scope: !103)
!729 = !DILocation(line: 144, column: 14, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !37, line: 143, column: 14)
!731 = !DILocation(line: 144, column: 7, scope: !730)
!732 = !DILocation(line: 145, column: 4, scope: !730)
!733 = !DILocation(line: 146, column: 14, scope: !103)
!734 = !DILocation(line: 146, column: 4, scope: !103)
!735 = !DILocation(line: 147, column: 11, scope: !103)
!736 = !DILocation(line: 147, column: 4, scope: !103)
!737 = !DILocation(line: 149, column: 11, scope: !103)
!738 = !DILocation(line: 149, column: 4, scope: !103)
!739 = distinct !DISubprogram(name: "WritePemFile", scope: !37, file: !37, line: 604, type: !740, isLocal: false, isDefinition: true, scopeLine: 608, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!740 = !DISubroutineType(types: !741)
!741 = !{!64, !318, !106, !172, !106}
!742 = !DILocalVariable(name: "pkey", arg: 1, scope: !739, file: !37, line: 604, type: !318)
!743 = !DILocation(line: 604, column: 24, scope: !739)
!744 = !DILocalVariable(name: "keyFile", arg: 2, scope: !739, file: !37, line: 605, type: !106)
!745 = !DILocation(line: 605, column: 27, scope: !739)
!746 = !DILocalVariable(name: "cert", arg: 3, scope: !739, file: !37, line: 606, type: !172)
!747 = !DILocation(line: 606, column: 20, scope: !739)
!748 = !DILocalVariable(name: "certFile", arg: 4, scope: !739, file: !37, line: 607, type: !106)
!749 = !DILocation(line: 607, column: 27, scope: !739)
!750 = !DILocalVariable(name: "file", scope: !739, file: !37, line: 609, type: !111)
!751 = !DILocation(line: 609, column: 10, scope: !739)
!752 = !DILocalVariable(name: "ret", scope: !739, file: !37, line: 610, type: !64)
!753 = !DILocation(line: 610, column: 13, scope: !739)
!754 = !DILocalVariable(name: "err", scope: !739, file: !37, line: 611, type: !40)
!755 = !DILocation(line: 611, column: 11, scope: !739)
!756 = !DILocalVariable(name: "mode", scope: !739, file: !37, line: 612, type: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !758, line: 70, baseType: !759)
!758 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !142, line: 129, baseType: !410)
!760 = !DILocation(line: 612, column: 11, scope: !739)
!761 = !DILocation(line: 614, column: 11, scope: !739)
!762 = !DILocation(line: 614, column: 9, scope: !739)
!763 = !DILocation(line: 615, column: 17, scope: !739)
!764 = !DILocation(line: 615, column: 11, scope: !739)
!765 = !DILocation(line: 615, column: 9, scope: !739)
!766 = !DILocation(line: 616, column: 9, scope: !767)
!767 = distinct !DILexicalBlock(scope: !739, file: !37, line: 616, column: 8)
!768 = !DILocation(line: 616, column: 8, scope: !739)
!769 = !DILocation(line: 617, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !37, line: 616, column: 15)
!771 = !DILocation(line: 617, column: 43, scope: !770)
!772 = !DILocation(line: 617, column: 60, scope: !770)
!773 = !DILocation(line: 617, column: 8, scope: !774)
!774 = !DILexicalBlockFile(scope: !770, file: !37, discriminator: 1)
!775 = !DILocation(line: 617, column: 7, scope: !770)
!776 = !DILocation(line: 617, column: 69, scope: !777)
!777 = !DILexicalBlockFile(scope: !770, file: !37, discriminator: 2)
!778 = !DILocation(line: 617, column: 7, scope: !779)
!779 = !DILexicalBlockFile(scope: !770, file: !37, discriminator: 3)
!780 = !DILocation(line: 618, column: 7, scope: !770)
!781 = !DILocation(line: 621, column: 30, scope: !782)
!782 = distinct !DILexicalBlock(scope: !739, file: !37, line: 621, column: 8)
!783 = !DILocation(line: 621, column: 36, scope: !782)
!784 = !DILocation(line: 621, column: 9, scope: !782)
!785 = !DILocation(line: 621, column: 8, scope: !739)
!786 = !DILocation(line: 622, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !782, file: !37, line: 621, column: 69)
!788 = !DILocation(line: 622, column: 65, scope: !787)
!789 = !DILocation(line: 622, column: 82, scope: !787)
!790 = !DILocation(line: 622, column: 91, scope: !791)
!791 = !DILexicalBlockFile(scope: !787, file: !37, discriminator: 1)
!792 = !DILocation(line: 622, column: 7, scope: !793)
!793 = !DILexicalBlockFile(scope: !787, file: !37, discriminator: 2)
!794 = !DILocation(line: 624, column: 7, scope: !787)
!795 = !DILocation(line: 627, column: 11, scope: !739)
!796 = !DILocation(line: 627, column: 4, scope: !739)
!797 = !DILocation(line: 629, column: 4, scope: !739)
!798 = !DILocation(line: 630, column: 17, scope: !739)
!799 = !DILocation(line: 630, column: 11, scope: !739)
!800 = !DILocation(line: 630, column: 9, scope: !739)
!801 = !DILocation(line: 631, column: 9, scope: !802)
!802 = distinct !DILexicalBlock(scope: !739, file: !37, line: 631, column: 8)
!803 = !DILocation(line: 631, column: 8, scope: !739)
!804 = !DILocation(line: 632, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !37, line: 631, column: 15)
!806 = !DILocation(line: 632, column: 43, scope: !805)
!807 = !DILocation(line: 632, column: 60, scope: !805)
!808 = !DILocation(line: 632, column: 8, scope: !809)
!809 = !DILexicalBlockFile(scope: !805, file: !37, discriminator: 1)
!810 = !DILocation(line: 632, column: 7, scope: !805)
!811 = !DILocation(line: 632, column: 70, scope: !812)
!812 = !DILexicalBlockFile(scope: !805, file: !37, discriminator: 2)
!813 = !DILocation(line: 632, column: 7, scope: !814)
!814 = !DILexicalBlockFile(scope: !805, file: !37, discriminator: 3)
!815 = !DILocation(line: 633, column: 7, scope: !805)
!816 = !DILocation(line: 636, column: 24, scope: !817)
!817 = distinct !DILexicalBlock(scope: !739, file: !37, line: 636, column: 8)
!818 = !DILocation(line: 636, column: 30, scope: !817)
!819 = !DILocation(line: 636, column: 9, scope: !817)
!820 = !DILocation(line: 636, column: 8, scope: !739)
!821 = !DILocation(line: 637, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !37, line: 636, column: 37)
!823 = !DILocation(line: 637, column: 65, scope: !822)
!824 = !DILocation(line: 637, column: 82, scope: !822)
!825 = !DILocation(line: 637, column: 92, scope: !826)
!826 = !DILexicalBlockFile(scope: !822, file: !37, discriminator: 1)
!827 = !DILocation(line: 637, column: 7, scope: !828)
!828 = !DILexicalBlockFile(scope: !822, file: !37, discriminator: 2)
!829 = !DILocation(line: 639, column: 7, scope: !822)
!830 = !DILocation(line: 642, column: 8, scope: !739)
!831 = !DILocation(line: 642, column: 4, scope: !739)
!832 = !DILocation(line: 645, column: 8, scope: !833)
!833 = distinct !DILexicalBlock(scope: !739, file: !37, line: 645, column: 8)
!834 = !DILocation(line: 645, column: 8, scope: !739)
!835 = !DILocation(line: 646, column: 14, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !37, line: 645, column: 14)
!837 = !DILocation(line: 646, column: 7, scope: !836)
!838 = !DILocation(line: 647, column: 4, scope: !836)
!839 = !DILocation(line: 648, column: 11, scope: !739)
!840 = !DILocation(line: 648, column: 4, scope: !739)
!841 = !DILocation(line: 649, column: 10, scope: !739)
!842 = !DILocation(line: 649, column: 4, scope: !739)
!843 = !DILocation(line: 651, column: 11, scope: !739)
!844 = !DILocation(line: 651, column: 4, scope: !739)
!845 = distinct !DISubprogram(name: "CertKey_GenerateKeyCert", scope: !37, file: !37, line: 674, type: !846, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!846 = !DISubroutineType(types: !847)
!847 = !{!64, !13, !13, !106, !106, !106}
!848 = !DILocalVariable(name: "bits", arg: 1, scope: !845, file: !37, line: 674, type: !13)
!849 = !DILocation(line: 674, column: 29, scope: !845)
!850 = !DILocalVariable(name: "days", arg: 2, scope: !845, file: !37, line: 675, type: !13)
!851 = !DILocation(line: 675, column: 29, scope: !845)
!852 = !DILocalVariable(name: "confFile", arg: 3, scope: !845, file: !37, line: 676, type: !106)
!853 = !DILocation(line: 676, column: 38, scope: !845)
!854 = !DILocalVariable(name: "keyFile", arg: 4, scope: !845, file: !37, line: 677, type: !106)
!855 = !DILocation(line: 677, column: 38, scope: !845)
!856 = !DILocalVariable(name: "certFile", arg: 5, scope: !845, file: !37, line: 678, type: !106)
!857 = !DILocation(line: 678, column: 38, scope: !845)
!858 = !DILocalVariable(name: "ret", scope: !845, file: !37, line: 680, type: !64)
!859 = !DILocation(line: 680, column: 13, scope: !845)
!860 = !DILocalVariable(name: "cert", scope: !845, file: !37, line: 681, type: !172)
!861 = !DILocation(line: 681, column: 10, scope: !845)
!862 = !DILocalVariable(name: "req", scope: !845, file: !37, line: 682, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_REQ", file: !176, line: 240, baseType: !865)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_req_st", file: !176, line: 235, size: 256, align: 64, elements: !866)
!866 = !{!867, !877, !878, !879}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "req_info", scope: !865, file: !176, line: 236, baseType: !868, size: 64, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_REQ_INFO", file: !176, line: 233, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_req_info_st", file: !176, line: 226, size: 448, align: 64, elements: !871)
!871 = !{!872, !873, !874, !875, !876}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !870, file: !176, line: 227, baseType: !609, size: 192, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !870, file: !176, line: 228, baseType: !184, size: 64, align: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !870, file: !176, line: 229, baseType: !279, size: 64, align: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pubkey", scope: !870, file: !176, line: 230, baseType: !311, size: 64, align: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !870, file: !176, line: 232, baseType: !597, size: 64, align: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !865, file: !176, line: 237, baseType: !197, size: 64, align: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !865, file: !176, line: 238, baseType: !237, size: 64, align: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !865, file: !176, line: 239, baseType: !13, size: 32, align: 32, offset: 192)
!880 = !DILocation(line: 682, column: 14, scope: !845)
!881 = !DILocalVariable(name: "pkey", scope: !845, file: !37, line: 683, type: !318)
!882 = !DILocation(line: 683, column: 14, scope: !845)
!883 = !DILocalVariable(name: "config", scope: !845, file: !37, line: 684, type: !884)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64, align: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONF", file: !174, line: 167, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conf_st", file: !26, line: 147, size: 192, align: 64, elements: !887)
!887 = !{!888, !984, !985}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !886, file: !26, line: 148, baseType: !889, size: 64, align: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONF_METHOD", file: !26, line: 85, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conf_method_st", file: !26, line: 87, size: 640, align: 64, elements: !892)
!892 = !{!893, !894, !898, !902, !903, !904, !969, !975, !979, !980}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !891, file: !26, line: 88, baseType: !207, size: 64, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !891, file: !26, line: 89, baseType: !895, size: 64, align: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64, align: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!884, !889}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !891, file: !26, line: 90, baseType: !899, size: 64, align: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, align: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!13, !884}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !891, file: !26, line: 91, baseType: !899, size: 64, align: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_data", scope: !891, file: !26, line: 92, baseType: !899, size: 64, align: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "load_bio", scope: !891, file: !26, line: 93, baseType: !905, size: 64, align: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64, align: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!13, !884, !908, !968}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64, align: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !910, line: 238, baseType: !911)
!910 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/open-vm-tools/line1362")
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !910, line: 325, size: 896, align: 64, elements: !912)
!912 = !{!913, !951, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !911, file: !910, line: 326, baseType: !914, size: 64, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !910, line: 323, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !910, line: 312, size: 640, align: 64, elements: !917)
!917 = !{!918, !919, !920, !924, !928, !932, !933, !937, !941, !942}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !916, file: !910, line: 313, baseType: !13, size: 32, align: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !916, file: !910, line: 314, baseType: !207, size: 64, align: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !916, file: !910, line: 315, baseType: !921, size: 64, align: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64, align: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!13, !908, !207, !13}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !916, file: !910, line: 316, baseType: !925, size: 64, align: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64, align: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!13, !908, !5, !13}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !916, file: !910, line: 317, baseType: !929, size: 64, align: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64, align: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!13, !908, !207}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !916, file: !910, line: 318, baseType: !925, size: 64, align: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !916, file: !910, line: 319, baseType: !934, size: 64, align: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64, align: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!32, !908, !13, !32, !4}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !916, file: !910, line: 320, baseType: !938, size: 64, align: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64, align: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!13, !908}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !916, file: !910, line: 321, baseType: !938, size: 64, align: 64, offset: 512)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !916, file: !910, line: 322, baseType: !943, size: 64, align: 64, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64, align: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!32, !908, !13, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !910, line: 309, baseType: !948)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !950, !13, !207, !13, !32, !32}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !911, file: !910, line: 328, baseType: !952, size: 64, align: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64, align: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!32, !950, !13, !207, !13, !32, !32}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !911, file: !910, line: 329, baseType: !5, size: 64, align: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !911, file: !910, line: 330, baseType: !13, size: 32, align: 32, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !911, file: !910, line: 331, baseType: !13, size: 32, align: 32, offset: 224)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !911, file: !910, line: 332, baseType: !13, size: 32, align: 32, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !911, file: !910, line: 333, baseType: !13, size: 32, align: 32, offset: 288)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !911, file: !910, line: 334, baseType: !13, size: 32, align: 32, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !911, file: !910, line: 335, baseType: !4, size: 64, align: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !911, file: !910, line: 336, baseType: !950, size: 64, align: 64, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !911, file: !910, line: 337, baseType: !950, size: 64, align: 64, offset: 512)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !911, file: !910, line: 338, baseType: !13, size: 32, align: 32, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !911, file: !910, line: 339, baseType: !48, size: 64, align: 64, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !911, file: !910, line: 340, baseType: !48, size: 64, align: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !911, file: !910, line: 341, baseType: !449, size: 128, align: 64, offset: 768)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !891, file: !26, line: 94, baseType: !970, size: 64, align: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64, align: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!13, !973, !908}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "is_number", scope: !891, file: !26, line: 95, baseType: !976, size: 64, align: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64, align: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!13, !973, !6}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "to_int", scope: !891, file: !26, line: 96, baseType: !976, size: 64, align: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !891, file: !26, line: 97, baseType: !981, size: 64, align: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64, align: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!13, !884, !207, !968}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !886, file: !26, line: 149, baseType: !4, size: 64, align: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !886, file: !26, line: 150, baseType: !986, size: 64, align: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64, align: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_CONF_VALUE", file: !26, line: 81, size: 32, align: 32, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !987, file: !26, line: 81, baseType: !13, size: 32, align: 32)
!990 = !DILocation(line: 684, column: 10, scope: !845)
!991 = !DILocalVariable(name: "err", scope: !845, file: !37, line: 685, type: !40)
!992 = !DILocation(line: 685, column: 11, scope: !845)
!993 = !DILocation(line: 687, column: 29, scope: !845)
!994 = !DILocation(line: 687, column: 13, scope: !845)
!995 = !DILocation(line: 687, column: 11, scope: !845)
!996 = !DILocation(line: 688, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !845, file: !37, line: 688, column: 8)
!998 = !DILocation(line: 688, column: 8, scope: !845)
!999 = !DILocation(line: 689, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !37, line: 688, column: 17)
!1001 = !DILocation(line: 692, column: 37, scope: !845)
!1002 = !DILocation(line: 692, column: 45, scope: !845)
!1003 = !DILocation(line: 692, column: 10, scope: !845)
!1004 = !DILocation(line: 692, column: 8, scope: !845)
!1005 = !DILocation(line: 693, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !845, file: !37, line: 693, column: 8)
!1007 = !DILocation(line: 693, column: 8, scope: !845)
!1008 = !DILocation(line: 694, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !37, line: 693, column: 14)
!1010 = !DILocation(line: 697, column: 28, scope: !845)
!1011 = !DILocation(line: 697, column: 33, scope: !845)
!1012 = !DILocation(line: 697, column: 41, scope: !845)
!1013 = !DILocation(line: 697, column: 11, scope: !845)
!1014 = !DILocation(line: 697, column: 9, scope: !845)
!1015 = !DILocation(line: 698, column: 9, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !845, file: !37, line: 698, column: 8)
!1017 = !DILocation(line: 698, column: 8, scope: !845)
!1018 = !DILocation(line: 699, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !37, line: 698, column: 15)
!1020 = !DILocation(line: 702, column: 25, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !845, file: !37, line: 702, column: 8)
!1022 = !DILocation(line: 702, column: 31, scope: !1021)
!1023 = !DILocation(line: 702, column: 9, scope: !1021)
!1024 = !DILocation(line: 702, column: 8, scope: !845)
!1025 = !DILocation(line: 703, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !37, line: 702, column: 38)
!1027 = !DILocation(line: 703, column: 62, scope: !1026)
!1028 = !DILocation(line: 703, column: 79, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1026, file: !37, discriminator: 1)
!1030 = !DILocation(line: 703, column: 7, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1026, file: !37, discriminator: 2)
!1032 = !DILocation(line: 705, column: 7, scope: !1026)
!1033 = !DILocation(line: 708, column: 19, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !845, file: !37, line: 708, column: 8)
!1035 = !DILocation(line: 708, column: 25, scope: !1034)
!1036 = !DILocation(line: 708, column: 31, scope: !1034)
!1037 = !DILocation(line: 708, column: 9, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1034, file: !37, discriminator: 1)
!1039 = !DILocation(line: 708, column: 9, scope: !1034)
!1040 = !DILocation(line: 708, column: 8, scope: !845)
!1041 = !DILocation(line: 709, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !37, line: 708, column: 46)
!1043 = !DILocation(line: 709, column: 61, scope: !1042)
!1044 = !DILocation(line: 709, column: 78, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1042, file: !37, discriminator: 1)
!1046 = !DILocation(line: 709, column: 7, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1042, file: !37, discriminator: 2)
!1048 = !DILocation(line: 711, column: 7, scope: !1042)
!1049 = !DILocation(line: 717, column: 21, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !845, file: !37, line: 717, column: 8)
!1051 = !DILocation(line: 717, column: 27, scope: !1050)
!1052 = !DILocation(line: 717, column: 36, scope: !1050)
!1053 = !DILocation(line: 717, column: 42, scope: !1050)
!1054 = !DILocation(line: 717, column: 8, scope: !1050)
!1055 = !DILocation(line: 717, column: 8, scope: !845)
!1056 = !DILocation(line: 718, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !37, line: 717, column: 53)
!1058 = !DILocation(line: 719, column: 4, scope: !1057)
!1059 = !DILocation(line: 717, column: 50, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1050, file: !37, discriminator: 1)
!1061 = !DILocation(line: 722, column: 11, scope: !845)
!1062 = !DILocation(line: 722, column: 4, scope: !845)
!1063 = !DILocation(line: 723, column: 15, scope: !845)
!1064 = !DILocation(line: 723, column: 4, scope: !845)
!1065 = !DILocation(line: 724, column: 18, scope: !845)
!1066 = !DILocation(line: 724, column: 4, scope: !845)
!1067 = !DILocation(line: 725, column: 18, scope: !845)
!1068 = !DILocation(line: 725, column: 4, scope: !845)
!1069 = !DILocation(line: 726, column: 14, scope: !845)
!1070 = !DILocation(line: 726, column: 4, scope: !845)
!1071 = !DILocation(line: 728, column: 11, scope: !845)
!1072 = !DILocation(line: 728, column: 4, scope: !845)
!1073 = distinct !DISubprogram(name: "LoadOpenSSLConf", scope: !37, file: !37, line: 235, type: !1074, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!884, !106}
!1076 = !DILocalVariable(name: "fname", arg: 1, scope: !1073, file: !37, line: 235, type: !106)
!1077 = !DILocation(line: 235, column: 30, scope: !1073)
!1078 = !DILocalVariable(name: "config", scope: !1073, file: !37, line: 237, type: !884)
!1079 = !DILocation(line: 237, column: 10, scope: !1073)
!1080 = !DILocalVariable(name: "mask", scope: !1073, file: !37, line: 238, type: !207)
!1081 = !DILocation(line: 238, column: 16, scope: !1073)
!1082 = !DILocalVariable(name: "ret", scope: !1073, file: !37, line: 239, type: !64)
!1083 = !DILocation(line: 239, column: 13, scope: !1073)
!1084 = !DILocalVariable(name: "err", scope: !1073, file: !37, line: 240, type: !40)
!1085 = !DILocation(line: 240, column: 11, scope: !1073)
!1086 = !DILocation(line: 242, column: 13, scope: !1073)
!1087 = !DILocation(line: 242, column: 11, scope: !1073)
!1088 = !DILocation(line: 243, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1073, file: !37, line: 243, column: 8)
!1090 = !DILocation(line: 243, column: 8, scope: !1073)
!1091 = !DILocation(line: 244, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !37, line: 243, column: 17)
!1093 = !DILocation(line: 244, column: 59, scope: !1092)
!1094 = !DILocation(line: 244, column: 7, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1092, file: !37, discriminator: 1)
!1096 = !DILocation(line: 245, column: 7, scope: !1092)
!1097 = !DILocation(line: 248, column: 20, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1073, file: !37, line: 248, column: 8)
!1099 = !DILocation(line: 248, column: 28, scope: !1098)
!1100 = !DILocation(line: 248, column: 9, scope: !1098)
!1101 = !DILocation(line: 248, column: 8, scope: !1073)
!1102 = !DILocation(line: 249, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !37, line: 248, column: 41)
!1104 = !DILocation(line: 249, column: 66, scope: !1103)
!1105 = !DILocation(line: 249, column: 83, scope: !1103)
!1106 = !DILocation(line: 249, column: 90, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1103, file: !37, discriminator: 1)
!1108 = !DILocation(line: 249, column: 7, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1103, file: !37, discriminator: 2)
!1110 = !DILocation(line: 251, column: 7, scope: !1103)
!1111 = !DILocation(line: 254, column: 4, scope: !1073)
!1112 = !DILocation(line: 256, column: 27, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1073, file: !37, line: 256, column: 8)
!1114 = !DILocation(line: 256, column: 9, scope: !1113)
!1115 = !DILocation(line: 256, column: 8, scope: !1073)
!1116 = !DILocation(line: 257, column: 6, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !37, line: 256, column: 44)
!1118 = !DILocation(line: 257, column: 59, scope: !1117)
!1119 = !DILocation(line: 257, column: 76, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1117, file: !37, discriminator: 1)
!1121 = !DILocation(line: 257, column: 7, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1117, file: !37, discriminator: 2)
!1123 = !DILocation(line: 259, column: 7, scope: !1117)
!1124 = !DILocation(line: 262, column: 28, scope: !1073)
!1125 = !DILocation(line: 262, column: 11, scope: !1073)
!1126 = !DILocation(line: 262, column: 9, scope: !1073)
!1127 = !DILocation(line: 263, column: 8, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1073, file: !37, line: 263, column: 8)
!1129 = !DILocation(line: 263, column: 8, scope: !1073)
!1130 = !DILocation(line: 264, column: 40, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !37, line: 263, column: 14)
!1132 = !DILocation(line: 264, column: 7, scope: !1131)
!1133 = !DILocation(line: 265, column: 4, scope: !1131)
!1134 = !DILocation(line: 267, column: 8, scope: !1073)
!1135 = !DILocation(line: 267, column: 4, scope: !1073)
!1136 = !DILocation(line: 270, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1073, file: !37, line: 270, column: 8)
!1138 = !DILocation(line: 270, column: 8, scope: !1073)
!1139 = !DILocation(line: 271, column: 18, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !37, line: 270, column: 14)
!1141 = !DILocation(line: 271, column: 7, scope: !1140)
!1142 = !DILocation(line: 272, column: 14, scope: !1140)
!1143 = !DILocation(line: 273, column: 4, scope: !1140)
!1144 = !DILocation(line: 274, column: 11, scope: !1073)
!1145 = !DILocation(line: 274, column: 4, scope: !1073)
!1146 = !DILocation(line: 276, column: 11, scope: !1073)
!1147 = !DILocation(line: 276, column: 4, scope: !1073)
!1148 = distinct !DISubprogram(name: "GenerateX509CertReq", scope: !37, file: !37, line: 466, type: !1149, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!863, !1151, !884, !13}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!1152 = !DILocalVariable(name: "pkey", arg: 1, scope: !1148, file: !37, line: 466, type: !1151)
!1153 = !DILocation(line: 466, column: 32, scope: !1148)
!1154 = !DILocalVariable(name: "config", arg: 2, scope: !1148, file: !37, line: 467, type: !884)
!1155 = !DILocation(line: 467, column: 27, scope: !1148)
!1156 = !DILocalVariable(name: "bits", arg: 3, scope: !1148, file: !37, line: 468, type: !13)
!1157 = !DILocation(line: 468, column: 25, scope: !1148)
!1158 = !DILocalVariable(name: "req", scope: !1148, file: !37, line: 470, type: !863)
!1159 = !DILocation(line: 470, column: 14, scope: !1148)
!1160 = !DILocalVariable(name: "ret", scope: !1148, file: !37, line: 471, type: !64)
!1161 = !DILocation(line: 471, column: 13, scope: !1148)
!1162 = !DILocalVariable(name: "err", scope: !1148, file: !37, line: 472, type: !40)
!1163 = !DILocation(line: 472, column: 11, scope: !1148)
!1164 = !DILocation(line: 474, column: 34, scope: !1148)
!1165 = !DILocation(line: 474, column: 12, scope: !1148)
!1166 = !DILocation(line: 474, column: 5, scope: !1148)
!1167 = !DILocation(line: 474, column: 10, scope: !1148)
!1168 = !DILocation(line: 475, column: 10, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1148, file: !37, line: 475, column: 8)
!1170 = !DILocation(line: 475, column: 9, scope: !1169)
!1171 = !DILocation(line: 475, column: 8, scope: !1148)
!1172 = !DILocation(line: 476, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !37, line: 475, column: 16)
!1174 = !DILocation(line: 479, column: 10, scope: !1148)
!1175 = !DILocation(line: 479, column: 8, scope: !1148)
!1176 = !DILocation(line: 480, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1148, file: !37, line: 480, column: 8)
!1178 = !DILocation(line: 480, column: 8, scope: !1148)
!1179 = !DILocation(line: 481, column: 6, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !37, line: 480, column: 14)
!1181 = !DILocation(line: 481, column: 67, scope: !1180)
!1182 = !DILocation(line: 481, column: 7, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1180, file: !37, discriminator: 1)
!1184 = !DILocation(line: 482, column: 7, scope: !1180)
!1185 = !DILocation(line: 485, column: 27, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1148, file: !37, line: 485, column: 8)
!1187 = !DILocation(line: 485, column: 32, scope: !1186)
!1188 = !DILocation(line: 485, column: 9, scope: !1186)
!1189 = !DILocation(line: 485, column: 8, scope: !1148)
!1190 = !DILocation(line: 486, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !37, line: 485, column: 41)
!1192 = !DILocation(line: 489, column: 29, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1148, file: !37, line: 489, column: 8)
!1194 = !DILocation(line: 489, column: 35, scope: !1193)
!1195 = !DILocation(line: 489, column: 34, scope: !1193)
!1196 = !DILocation(line: 489, column: 9, scope: !1193)
!1197 = !DILocation(line: 489, column: 8, scope: !1148)
!1198 = !DILocation(line: 490, column: 6, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !37, line: 489, column: 42)
!1200 = !DILocation(line: 490, column: 70, scope: !1199)
!1201 = !DILocation(line: 490, column: 87, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1199, file: !37, discriminator: 1)
!1203 = !DILocation(line: 490, column: 7, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1199, file: !37, discriminator: 2)
!1205 = !DILocation(line: 492, column: 7, scope: !1199)
!1206 = !DILocation(line: 495, column: 8, scope: !1148)
!1207 = !DILocation(line: 495, column: 4, scope: !1148)
!1208 = !DILocation(line: 498, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1148, file: !37, line: 498, column: 8)
!1210 = !DILocation(line: 498, column: 8, scope: !1148)
!1211 = !DILocation(line: 499, column: 21, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !37, line: 498, column: 14)
!1213 = !DILocation(line: 499, column: 7, scope: !1212)
!1214 = !DILocation(line: 500, column: 11, scope: !1212)
!1215 = !DILocation(line: 501, column: 4, scope: !1212)
!1216 = !DILocation(line: 502, column: 11, scope: !1148)
!1217 = !DILocation(line: 502, column: 4, scope: !1148)
!1218 = !DILocation(line: 504, column: 11, scope: !1148)
!1219 = !DILocation(line: 504, column: 4, scope: !1148)
!1220 = distinct !DISubprogram(name: "GenerateX509Cert", scope: !37, file: !37, line: 525, type: !1221, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!172, !863, !884, !13}
!1223 = !DILocalVariable(name: "req", arg: 1, scope: !1220, file: !37, line: 525, type: !863)
!1224 = !DILocation(line: 525, column: 28, scope: !1220)
!1225 = !DILocalVariable(name: "config", arg: 2, scope: !1220, file: !37, line: 526, type: !884)
!1226 = !DILocation(line: 526, column: 24, scope: !1220)
!1227 = !DILocalVariable(name: "days", arg: 3, scope: !1220, file: !37, line: 527, type: !13)
!1228 = !DILocation(line: 527, column: 22, scope: !1220)
!1229 = !DILocalVariable(name: "cert", scope: !1220, file: !37, line: 529, type: !172)
!1230 = !DILocation(line: 529, column: 10, scope: !1220)
!1231 = !DILocalVariable(name: "ctx", scope: !1220, file: !37, line: 530, type: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509V3_CTX", file: !174, line: 166, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v3_ext_ctx", file: !632, line: 134, size: 448, align: 64, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1302, !1327}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !632, line: 136, baseType: !13, size: 32, align: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "issuer_cert", scope: !1233, file: !632, line: 137, baseType: !172, size: 64, align: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "subject_cert", scope: !1233, file: !632, line: 138, baseType: !172, size: 64, align: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "subject_req", scope: !1233, file: !632, line: 139, baseType: !863, size: 64, align: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1233, file: !632, line: 140, baseType: !1240, size: 64, align: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64, align: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !174, line: 156, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !176, line: 452, size: 960, align: 64, elements: !1243)
!1243 = !{!1244, !1261, !1262, !1263, !1264, !1265, !1266, !1288, !1289, !1290, !1291, !1292, !1293, !1296, !1301}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !1242, file: !176, line: 454, baseType: !1245, size: 64, align: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64, align: 64)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !176, line: 450, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !176, line: 441, size: 640, align: 64, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1259, !1260}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1247, file: !176, line: 442, baseType: !184, size: 64, align: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1247, file: !176, line: 443, baseType: !197, size: 64, align: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1247, file: !176, line: 444, baseType: !279, size: 64, align: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !1247, file: !176, line: 445, baseType: !306, size: 64, align: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !1247, file: !176, line: 446, baseType: !306, size: 64, align: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !1247, file: !176, line: 447, baseType: !1255, size: 64, align: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64, align: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !176, line: 438, size: 256, align: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1256, file: !176, line: 438, baseType: !8, size: 256, align: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1247, file: !176, line: 448, baseType: !604, size: 64, align: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1247, file: !176, line: 449, baseType: !609, size: 192, align: 64, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1242, file: !176, line: 455, baseType: !197, size: 64, align: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1242, file: !176, line: 456, baseType: !237, size: 64, align: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1242, file: !176, line: 457, baseType: !13, size: 32, align: 32, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !176, line: 458, baseType: !13, size: 32, align: 32, offset: 224)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1242, file: !176, line: 460, baseType: !629, size: 64, align: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !1242, file: !176, line: 461, baseType: !1267, size: 64, align: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64, align: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !174, line: 188, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !632, line: 356, size: 256, align: 64, elements: !1270)
!1270 = !{!1271, !1283, !1284, !1285, !1286, !1287}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "distpoint", scope: !1269, file: !632, line: 357, baseType: !1272, size: 64, align: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64, align: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIST_POINT_NAME", file: !632, line: 234, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DIST_POINT_NAME_st", file: !632, line: 226, size: 192, align: 64, elements: !1275)
!1275 = !{!1276, !1277, !1282}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1274, file: !632, line: 227, baseType: !13, size: 32, align: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1274, file: !632, line: 231, baseType: !1278, size: 64, align: 64, offset: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !632, line: 228, size: 64, align: 64, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1278, file: !632, line: 229, baseType: !636, size: 64, align: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "relativename", scope: !1278, file: !632, line: 230, baseType: !284, size: 64, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dpname", scope: !1274, file: !632, line: 233, baseType: !279, size: 64, align: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "onlyuser", scope: !1269, file: !632, line: 358, baseType: !13, size: 32, align: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "onlyCA", scope: !1269, file: !632, line: 359, baseType: !13, size: 32, align: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "onlysomereasons", scope: !1269, file: !632, line: 360, baseType: !237, size: 64, align: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "indirectCRL", scope: !1269, file: !632, line: 361, baseType: !13, size: 32, align: 32, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "onlyattr", scope: !1269, file: !632, line: 362, baseType: !13, size: 32, align: 32, offset: 224)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !1242, file: !176, line: 463, baseType: !13, size: 32, align: 32, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !1242, file: !176, line: 464, baseType: !13, size: 32, align: 32, offset: 416)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !1242, file: !176, line: 466, baseType: !184, size: 64, align: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !1242, file: !176, line: 467, baseType: !184, size: 64, align: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1242, file: !176, line: 469, baseType: !665, size: 160, align: 8, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !1242, file: !176, line: 471, baseType: !1294, size: 64, align: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64, align: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !176, line: 471, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1242, file: !176, line: 472, baseType: !1297, size: 64, align: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64, align: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !174, line: 157, baseType: !1300)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !174, line: 157, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !1242, file: !176, line: 473, baseType: !4, size: 64, align: 64, offset: 896)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "db_meth", scope: !1233, file: !632, line: 141, baseType: !1303, size: 64, align: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509V3_CONF_METHOD", file: !632, line: 131, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509V3_CONF_METHOD_st", file: !632, line: 126, size: 256, align: 64, elements: !1306)
!1306 = !{!1307, !1311, !1319, !1323}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "get_string", scope: !1305, file: !632, line: 127, baseType: !1308, size: 64, align: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64, align: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!5, !4, !5, !5}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_section", scope: !1305, file: !632, line: 128, baseType: !1312, size: 64, align: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64, align: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1315, !4, !5}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64, align: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_CONF_VALUE", file: !26, line: 80, size: 256, align: 64, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1316, file: !26, line: 80, baseType: !8, size: 256, align: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "free_string", scope: !1305, file: !632, line: 129, baseType: !1320, size: 64, align: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64, align: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !4, !5}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "free_section", scope: !1305, file: !632, line: 130, baseType: !1324, size: 64, align: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64, align: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !4, !1315}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1233, file: !632, line: 142, baseType: !4, size: 64, align: 64, offset: 384)
!1328 = !DILocation(line: 530, column: 15, scope: !1220)
!1329 = !DILocalVariable(name: "extensions", scope: !1220, file: !37, line: 531, type: !5)
!1330 = !DILocation(line: 531, column: 10, scope: !1220)
!1331 = !DILocalVariable(name: "ret", scope: !1220, file: !37, line: 532, type: !64)
!1332 = !DILocation(line: 532, column: 13, scope: !1220)
!1333 = !DILocalVariable(name: "err", scope: !1220, file: !37, line: 533, type: !40)
!1334 = !DILocation(line: 533, column: 11, scope: !1220)
!1335 = !DILocation(line: 535, column: 11, scope: !1220)
!1336 = !DILocation(line: 535, column: 9, scope: !1220)
!1337 = !DILocation(line: 536, column: 9, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1220, file: !37, line: 536, column: 8)
!1339 = !DILocation(line: 536, column: 8, scope: !1220)
!1340 = !DILocation(line: 537, column: 6, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !37, line: 536, column: 15)
!1342 = !DILocation(line: 537, column: 63, scope: !1341)
!1343 = !DILocation(line: 537, column: 80, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1341, file: !37, discriminator: 1)
!1345 = !DILocation(line: 537, column: 7, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1341, file: !37, discriminator: 2)
!1347 = !DILocation(line: 539, column: 7, scope: !1341)
!1348 = !DILocation(line: 542, column: 29, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1220, file: !37, line: 542, column: 8)
!1350 = !DILocation(line: 542, column: 9, scope: !1349)
!1351 = !DILocation(line: 542, column: 8, scope: !1220)
!1352 = !DILocation(line: 543, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !37, line: 542, column: 36)
!1354 = !DILocation(line: 546, column: 30, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1220, file: !37, line: 546, column: 8)
!1356 = !DILocation(line: 546, column: 35, scope: !1355)
!1357 = !DILocation(line: 546, column: 38, scope: !1355)
!1358 = !DILocation(line: 546, column: 48, scope: !1355)
!1359 = !DILocation(line: 546, column: 9, scope: !1355)
!1360 = !DILocation(line: 546, column: 67, scope: !1355)
!1361 = !DILocation(line: 547, column: 24, scope: !1355)
!1362 = !DILocation(line: 547, column: 27, scope: !1355)
!1363 = !DILocation(line: 547, column: 38, scope: !1355)
!1364 = !DILocation(line: 547, column: 48, scope: !1355)
!1365 = !DILocation(line: 547, column: 9, scope: !1355)
!1366 = !DILocation(line: 547, column: 53, scope: !1355)
!1367 = !DILocation(line: 548, column: 24, scope: !1355)
!1368 = !DILocation(line: 548, column: 27, scope: !1355)
!1369 = !DILocation(line: 548, column: 38, scope: !1355)
!1370 = !DILocation(line: 548, column: 48, scope: !1355)
!1371 = !DILocation(line: 548, column: 64, scope: !1355)
!1372 = !DILocation(line: 548, column: 63, scope: !1355)
!1373 = !DILocation(line: 548, column: 9, scope: !1355)
!1374 = !DILocation(line: 548, column: 70, scope: !1355)
!1375 = !DILocation(line: 549, column: 31, scope: !1355)
!1376 = !DILocation(line: 549, column: 36, scope: !1355)
!1377 = !DILocation(line: 549, column: 39, scope: !1355)
!1378 = !DILocation(line: 549, column: 49, scope: !1355)
!1379 = !DILocation(line: 549, column: 9, scope: !1355)
!1380 = !DILocation(line: 546, column: 8, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1220, file: !37, discriminator: 1)
!1382 = !DILocation(line: 550, column: 6, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1355, file: !37, line: 549, column: 69)
!1384 = !DILocation(line: 550, column: 66, scope: !1383)
!1385 = !DILocation(line: 550, column: 83, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1383, file: !37, discriminator: 1)
!1387 = !DILocation(line: 550, column: 7, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1383, file: !37, discriminator: 2)
!1389 = !DILocation(line: 552, column: 7, scope: !1383)
!1390 = !DILocation(line: 555, column: 25, scope: !1220)
!1391 = !DILocation(line: 555, column: 31, scope: !1220)
!1392 = !DILocation(line: 555, column: 4, scope: !1220)
!1393 = !DILocation(line: 556, column: 27, scope: !1220)
!1394 = !DILocation(line: 556, column: 4, scope: !1220)
!1395 = !DILocation(line: 558, column: 34, scope: !1220)
!1396 = !DILocation(line: 558, column: 17, scope: !1220)
!1397 = !DILocation(line: 558, column: 15, scope: !1220)
!1398 = !DILocation(line: 559, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1220, file: !37, line: 559, column: 8)
!1400 = !DILocation(line: 559, column: 8, scope: !1220)
!1401 = !DILocation(line: 560, column: 29, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !37, line: 560, column: 11)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !37, line: 559, column: 20)
!1404 = !DILocation(line: 560, column: 12, scope: !1402)
!1405 = !DILocation(line: 560, column: 11, scope: !1403)
!1406 = !DILocation(line: 561, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !37, line: 560, column: 39)
!1408 = !DILocation(line: 561, column: 66, scope: !1407)
!1409 = !DILocation(line: 561, column: 83, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1407, file: !37, discriminator: 1)
!1411 = !DILocation(line: 561, column: 10, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1407, file: !37, discriminator: 2)
!1413 = !DILocation(line: 563, column: 10, scope: !1407)
!1414 = !DILocation(line: 566, column: 33, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1403, file: !37, line: 566, column: 11)
!1416 = !DILocation(line: 566, column: 47, scope: !1415)
!1417 = !DILocation(line: 566, column: 59, scope: !1415)
!1418 = !DILocation(line: 566, column: 12, scope: !1415)
!1419 = !DILocation(line: 566, column: 11, scope: !1403)
!1420 = !DILocation(line: 567, column: 9, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !37, line: 566, column: 66)
!1422 = !DILocation(line: 567, column: 63, scope: !1421)
!1423 = !DILocation(line: 567, column: 80, scope: !1421)
!1424 = !DILocation(line: 567, column: 92, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1421, file: !37, discriminator: 1)
!1426 = !DILocation(line: 567, column: 10, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1421, file: !37, discriminator: 2)
!1428 = !DILocation(line: 569, column: 10, scope: !1421)
!1429 = !DILocation(line: 571, column: 4, scope: !1403)
!1430 = !DILocation(line: 573, column: 8, scope: !1220)
!1431 = !DILocation(line: 573, column: 4, scope: !1220)
!1432 = !DILocation(line: 576, column: 9, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1220, file: !37, line: 576, column: 8)
!1434 = !DILocation(line: 576, column: 8, scope: !1220)
!1435 = !DILocation(line: 577, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !37, line: 576, column: 14)
!1437 = !DILocation(line: 577, column: 7, scope: !1436)
!1438 = !DILocation(line: 578, column: 12, scope: !1436)
!1439 = !DILocation(line: 579, column: 4, scope: !1436)
!1440 = !DILocation(line: 580, column: 11, scope: !1220)
!1441 = !DILocation(line: 580, column: 4, scope: !1220)
!1442 = !DILocation(line: 582, column: 11, scope: !1220)
!1443 = !DILocation(line: 582, column: 4, scope: !1220)
!1444 = distinct !DISubprogram(name: "GenerateRSAPrivateKey", scope: !37, file: !37, line: 355, type: !1445, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!318, !13}
!1447 = !DILocalVariable(name: "bits", arg: 1, scope: !1444, file: !37, line: 355, type: !13)
!1448 = !DILocation(line: 355, column: 27, scope: !1444)
!1449 = !DILocalVariable(name: "rsa", scope: !1444, file: !37, line: 357, type: !357)
!1450 = !DILocation(line: 357, column: 9, scope: !1444)
!1451 = !DILocalVariable(name: "pkey", scope: !1444, file: !37, line: 358, type: !318)
!1452 = !DILocation(line: 358, column: 14, scope: !1444)
!1453 = !DILocation(line: 360, column: 29, scope: !1444)
!1454 = !DILocation(line: 360, column: 10, scope: !1444)
!1455 = !DILocation(line: 360, column: 8, scope: !1444)
!1456 = !DILocation(line: 361, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1444, file: !37, line: 361, column: 8)
!1458 = !DILocation(line: 361, column: 8, scope: !1444)
!1459 = !DILocation(line: 362, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !37, line: 361, column: 14)
!1461 = !DILocation(line: 365, column: 11, scope: !1444)
!1462 = !DILocation(line: 365, column: 9, scope: !1444)
!1463 = !DILocation(line: 366, column: 9, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1444, file: !37, line: 366, column: 8)
!1465 = !DILocation(line: 366, column: 8, scope: !1444)
!1466 = !DILocation(line: 367, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !37, line: 366, column: 15)
!1468 = !DILocation(line: 367, column: 64, scope: !1467)
!1469 = !DILocation(line: 367, column: 7, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1467, file: !37, discriminator: 1)
!1471 = !DILocation(line: 368, column: 7, scope: !1467)
!1472 = !DILocation(line: 371, column: 3, scope: !1444)
!1473 = !DILocation(line: 371, column: 8, scope: !1444)
!1474 = !DILocation(line: 372, column: 8, scope: !1444)
!1475 = !DILocation(line: 372, column: 4, scope: !1444)
!1476 = !DILocation(line: 375, column: 13, scope: !1444)
!1477 = !DILocation(line: 375, column: 4, scope: !1444)
!1478 = !DILocation(line: 377, column: 11, scope: !1444)
!1479 = !DILocation(line: 377, column: 4, scope: !1444)
!1480 = distinct !DISubprogram(name: "ConfigX509CertReq", scope: !37, file: !37, line: 398, type: !1481, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!64, !863, !884}
!1483 = !DILocalVariable(name: "req", arg: 1, scope: !1480, file: !37, line: 398, type: !863)
!1484 = !DILocation(line: 398, column: 29, scope: !1480)
!1485 = !DILocalVariable(name: "config", arg: 2, scope: !1480, file: !37, line: 399, type: !884)
!1486 = !DILocation(line: 399, column: 25, scope: !1480)
!1487 = !DILocalVariable(name: "idx", scope: !1480, file: !37, line: 401, type: !13)
!1488 = !DILocation(line: 401, column: 8, scope: !1480)
!1489 = !DILocalVariable(name: "subject", scope: !1480, file: !37, line: 402, type: !279)
!1490 = !DILocation(line: 402, column: 15, scope: !1480)
!1491 = !DILocalVariable(name: "ret", scope: !1480, file: !37, line: 403, type: !64)
!1492 = !DILocation(line: 403, column: 13, scope: !1480)
!1493 = !DILocalVariable(name: "dname", scope: !1480, file: !37, line: 404, type: !207)
!1494 = !DILocation(line: 404, column: 16, scope: !1480)
!1495 = !DILocalVariable(name: "err", scope: !1480, file: !37, line: 405, type: !40)
!1496 = !DILocation(line: 405, column: 11, scope: !1480)
!1497 = !DILocation(line: 407, column: 30, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1480, file: !37, line: 407, column: 8)
!1499 = !DILocation(line: 407, column: 9, scope: !1498)
!1500 = !DILocation(line: 407, column: 8, scope: !1480)
!1501 = !DILocation(line: 408, column: 6, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !37, line: 407, column: 40)
!1503 = !DILocation(line: 408, column: 71, scope: !1502)
!1504 = !DILocation(line: 408, column: 88, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1502, file: !37, discriminator: 1)
!1506 = !DILocation(line: 408, column: 7, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1502, file: !37, discriminator: 2)
!1508 = !DILocation(line: 410, column: 7, scope: !1502)
!1509 = !DILocation(line: 413, column: 13, scope: !1480)
!1510 = !DILocation(line: 413, column: 16, scope: !1480)
!1511 = !DILocation(line: 413, column: 26, scope: !1480)
!1512 = !DILocation(line: 413, column: 12, scope: !1480)
!1513 = !DILocation(line: 414, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1480, file: !37, line: 414, column: 8)
!1515 = !DILocation(line: 414, column: 8, scope: !1480)
!1516 = !DILocation(line: 415, column: 6, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !37, line: 414, column: 18)
!1518 = !DILocation(line: 415, column: 76, scope: !1517)
!1519 = !DILocation(line: 415, column: 93, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1517, file: !37, discriminator: 1)
!1521 = !DILocation(line: 415, column: 7, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1517, file: !37, discriminator: 2)
!1523 = !DILocation(line: 417, column: 7, scope: !1517)
!1524 = !DILocation(line: 420, column: 29, scope: !1480)
!1525 = !DILocation(line: 420, column: 12, scope: !1480)
!1526 = !DILocation(line: 420, column: 10, scope: !1480)
!1527 = !DILocation(line: 421, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1480, file: !37, line: 421, column: 8)
!1529 = !DILocation(line: 421, column: 8, scope: !1480)
!1530 = !DILocalVariable(name: "dn_sk", scope: !1531, file: !37, line: 422, type: !1315)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !37, line: 421, column: 15)
!1532 = !DILocation(line: 422, column: 28, scope: !1531)
!1533 = !DILocation(line: 422, column: 54, scope: !1531)
!1534 = !DILocation(line: 422, column: 62, scope: !1531)
!1535 = !DILocation(line: 422, column: 36, scope: !1531)
!1536 = !DILocation(line: 423, column: 12, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !37, line: 423, column: 11)
!1538 = !DILocation(line: 423, column: 11, scope: !1531)
!1539 = !DILocation(line: 424, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !37, line: 423, column: 19)
!1541 = !DILocation(line: 424, column: 53, scope: !1540)
!1542 = !DILocation(line: 424, column: 70, scope: !1540)
!1543 = !DILocation(line: 424, column: 77, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1540, file: !37, discriminator: 1)
!1545 = !DILocation(line: 424, column: 10, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1540, file: !37, discriminator: 2)
!1547 = !DILocation(line: 426, column: 10, scope: !1540)
!1548 = !DILocation(line: 429, column: 16, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1531, file: !37, line: 429, column: 7)
!1550 = !DILocation(line: 429, column: 12, scope: !1549)
!1551 = !DILocation(line: 429, column: 21, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !37, discriminator: 1)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !37, line: 429, column: 7)
!1554 = !DILocation(line: 429, column: 26, scope: !1552)
!1555 = !DILocation(line: 429, column: 34, scope: !1552)
!1556 = !DILocation(line: 429, column: 25, scope: !1552)
!1557 = !DILocation(line: 429, column: 7, scope: !1552)
!1558 = !DILocalVariable(name: "v", scope: !1559, file: !37, line: 430, type: !24)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !37, line: 429, column: 59)
!1560 = !DILocation(line: 430, column: 22, scope: !1559)
!1561 = !DILocation(line: 430, column: 25, scope: !1559)
!1562 = !DILocation(line: 430, column: 50, scope: !1559)
!1563 = !DILocation(line: 430, column: 40, scope: !1559)
!1564 = !DILocation(line: 430, column: 26, scope: !1559)
!1565 = !DILocation(line: 432, column: 42, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1559, file: !37, line: 432, column: 14)
!1567 = !DILocation(line: 432, column: 51, scope: !1566)
!1568 = !DILocation(line: 432, column: 54, scope: !1566)
!1569 = !DILocation(line: 433, column: 42, scope: !1566)
!1570 = !DILocation(line: 433, column: 45, scope: !1566)
!1571 = !DILocation(line: 432, column: 15, scope: !1566)
!1572 = !DILocation(line: 432, column: 14, scope: !1559)
!1573 = !DILocation(line: 434, column: 12, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1566, file: !37, line: 433, column: 64)
!1575 = !DILocation(line: 434, column: 76, scope: !1574)
!1576 = !DILocation(line: 434, column: 93, scope: !1574)
!1577 = !DILocation(line: 434, column: 96, scope: !1574)
!1578 = !DILocation(line: 434, column: 102, scope: !1574)
!1579 = !DILocation(line: 434, column: 105, scope: !1574)
!1580 = !DILocation(line: 434, column: 112, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1574, file: !37, discriminator: 1)
!1582 = !DILocation(line: 434, column: 13, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1574, file: !37, discriminator: 2)
!1584 = !DILocation(line: 436, column: 13, scope: !1574)
!1585 = !DILocation(line: 438, column: 7, scope: !1559)
!1586 = !DILocation(line: 429, column: 55, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1553, file: !37, discriminator: 2)
!1588 = !DILocation(line: 429, column: 7, scope: !1587)
!1589 = distinct !{!1589, !1590}
!1590 = !DILocation(line: 429, column: 7, scope: !1531)
!1591 = !DILocation(line: 439, column: 4, scope: !1531)
!1592 = !DILocation(line: 441, column: 8, scope: !1480)
!1593 = !DILocation(line: 441, column: 4, scope: !1480)
!1594 = !DILocation(line: 444, column: 11, scope: !1480)
!1595 = !DILocation(line: 444, column: 4, scope: !1480)
!1596 = !DILocation(line: 445, column: 11, scope: !1480)
!1597 = !DILocation(line: 445, column: 4, scope: !1480)
!1598 = distinct !DISubprogram(name: "GenerateRSAKeyPair", scope: !37, file: !37, line: 298, type: !1599, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!357, !13}
!1601 = !DILocalVariable(name: "bits", arg: 1, scope: !1598, file: !37, line: 298, type: !13)
!1602 = !DILocation(line: 298, column: 24, scope: !1598)
!1603 = !DILocalVariable(name: "bn", scope: !1598, file: !37, line: 300, type: !366)
!1604 = !DILocation(line: 300, column: 12, scope: !1598)
!1605 = !DILocalVariable(name: "rsa", scope: !1598, file: !37, line: 301, type: !357)
!1606 = !DILocation(line: 301, column: 9, scope: !1598)
!1607 = !DILocalVariable(name: "err", scope: !1598, file: !37, line: 302, type: !40)
!1608 = !DILocation(line: 302, column: 11, scope: !1598)
!1609 = !DILocation(line: 304, column: 9, scope: !1598)
!1610 = !DILocation(line: 304, column: 7, scope: !1598)
!1611 = !DILocation(line: 305, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1598, file: !37, line: 305, column: 8)
!1613 = !DILocation(line: 305, column: 8, scope: !1598)
!1614 = !DILocation(line: 306, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !37, line: 305, column: 13)
!1616 = !DILocation(line: 306, column: 49, scope: !1615)
!1617 = !DILocation(line: 306, column: 7, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1615, file: !37, discriminator: 1)
!1619 = !DILocation(line: 307, column: 7, scope: !1615)
!1620 = !DILocation(line: 310, column: 21, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1598, file: !37, line: 310, column: 8)
!1622 = !DILocation(line: 310, column: 9, scope: !1621)
!1623 = !DILocation(line: 310, column: 8, scope: !1598)
!1624 = !DILocation(line: 311, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1621, file: !37, line: 310, column: 33)
!1626 = !DILocation(line: 311, column: 60, scope: !1625)
!1627 = !DILocation(line: 311, column: 77, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1625, file: !37, discriminator: 1)
!1629 = !DILocation(line: 311, column: 7, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1625, file: !37, discriminator: 2)
!1631 = !DILocation(line: 313, column: 7, scope: !1625)
!1632 = !DILocation(line: 316, column: 10, scope: !1598)
!1633 = !DILocation(line: 316, column: 8, scope: !1598)
!1634 = !DILocation(line: 317, column: 9, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1598, file: !37, line: 317, column: 8)
!1636 = !DILocation(line: 317, column: 8, scope: !1598)
!1637 = !DILocation(line: 318, column: 6, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !37, line: 317, column: 14)
!1639 = !DILocation(line: 318, column: 56, scope: !1638)
!1640 = !DILocation(line: 318, column: 7, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1638, file: !37, discriminator: 1)
!1642 = !DILocation(line: 319, column: 7, scope: !1638)
!1643 = !DILocation(line: 322, column: 29, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1598, file: !37, line: 322, column: 8)
!1645 = !DILocation(line: 322, column: 34, scope: !1644)
!1646 = !DILocation(line: 322, column: 40, scope: !1644)
!1647 = !DILocation(line: 322, column: 9, scope: !1644)
!1648 = !DILocation(line: 322, column: 8, scope: !1598)
!1649 = !DILocation(line: 323, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !37, line: 322, column: 50)
!1651 = !DILocation(line: 323, column: 55, scope: !1650)
!1652 = !DILocation(line: 323, column: 72, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1650, file: !37, discriminator: 1)
!1654 = !DILocation(line: 323, column: 7, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1650, file: !37, discriminator: 2)
!1656 = !DILocation(line: 325, column: 16, scope: !1650)
!1657 = !DILocation(line: 325, column: 7, scope: !1650)
!1658 = !DILocation(line: 326, column: 11, scope: !1650)
!1659 = !DILocation(line: 327, column: 4, scope: !1650)
!1660 = !DILocation(line: 322, column: 47, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1644, file: !37, discriminator: 1)
!1662 = !DILocation(line: 330, column: 12, scope: !1598)
!1663 = !DILocation(line: 330, column: 4, scope: !1598)
!1664 = !DILocation(line: 331, column: 11, scope: !1598)
!1665 = !DILocation(line: 331, column: 4, scope: !1598)
!1666 = !DILocation(line: 333, column: 11, scope: !1598)
!1667 = !DILocation(line: 333, column: 4, scope: !1598)
!1668 = distinct !DISubprogram(name: "SetCertSerialNumber", scope: !37, file: !37, line: 170, type: !1669, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!64, !172}
!1671 = !DILocalVariable(name: "cert", arg: 1, scope: !1668, file: !37, line: 170, type: !172)
!1672 = !DILocation(line: 170, column: 27, scope: !1668)
!1673 = !DILocalVariable(name: "btmp", scope: !1668, file: !37, line: 172, type: !366)
!1674 = !DILocation(line: 172, column: 12, scope: !1668)
!1675 = !DILocalVariable(name: "sno", scope: !1668, file: !37, line: 173, type: !184)
!1676 = !DILocation(line: 173, column: 18, scope: !1668)
!1677 = !DILocalVariable(name: "ret", scope: !1668, file: !37, line: 174, type: !64)
!1678 = !DILocation(line: 174, column: 13, scope: !1668)
!1679 = !DILocalVariable(name: "err", scope: !1668, file: !37, line: 175, type: !40)
!1680 = !DILocation(line: 175, column: 11, scope: !1668)
!1681 = !DILocation(line: 177, column: 10, scope: !1668)
!1682 = !DILocation(line: 177, column: 8, scope: !1668)
!1683 = !DILocation(line: 178, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1668, file: !37, line: 178, column: 8)
!1685 = !DILocation(line: 178, column: 8, scope: !1668)
!1686 = !DILocation(line: 179, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !37, line: 178, column: 14)
!1688 = !DILocation(line: 179, column: 56, scope: !1687)
!1689 = !DILocation(line: 179, column: 7, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1687, file: !37, discriminator: 1)
!1691 = !DILocation(line: 180, column: 7, scope: !1687)
!1692 = !DILocation(line: 183, column: 11, scope: !1668)
!1693 = !DILocation(line: 183, column: 9, scope: !1668)
!1694 = !DILocation(line: 184, column: 9, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1668, file: !37, line: 184, column: 8)
!1696 = !DILocation(line: 184, column: 8, scope: !1668)
!1697 = !DILocation(line: 185, column: 6, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !37, line: 184, column: 15)
!1699 = !DILocation(line: 185, column: 59, scope: !1698)
!1700 = !DILocation(line: 185, column: 7, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1698, file: !37, discriminator: 1)
!1702 = !DILocation(line: 186, column: 7, scope: !1698)
!1703 = !DILocation(line: 189, column: 17, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1668, file: !37, line: 189, column: 8)
!1705 = !DILocation(line: 189, column: 9, scope: !1704)
!1706 = !DILocation(line: 189, column: 8, scope: !1668)
!1707 = !DILocation(line: 190, column: 6, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !37, line: 189, column: 34)
!1709 = !DILocation(line: 190, column: 58, scope: !1708)
!1710 = !DILocation(line: 190, column: 75, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1708, file: !37, discriminator: 1)
!1712 = !DILocation(line: 190, column: 7, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1708, file: !37, discriminator: 2)
!1714 = !DILocation(line: 192, column: 7, scope: !1708)
!1715 = !DILocation(line: 195, column: 28, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1668, file: !37, line: 195, column: 8)
!1717 = !DILocation(line: 195, column: 34, scope: !1716)
!1718 = !DILocation(line: 195, column: 9, scope: !1716)
!1719 = !DILocation(line: 195, column: 8, scope: !1668)
!1720 = !DILocation(line: 196, column: 6, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !37, line: 195, column: 40)
!1722 = !DILocation(line: 196, column: 71, scope: !1721)
!1723 = !DILocation(line: 196, column: 88, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1721, file: !37, discriminator: 1)
!1725 = !DILocation(line: 196, column: 7, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1721, file: !37, discriminator: 2)
!1727 = !DILocation(line: 198, column: 7, scope: !1721)
!1728 = !DILocation(line: 201, column: 31, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1668, file: !37, line: 201, column: 8)
!1730 = !DILocation(line: 201, column: 37, scope: !1729)
!1731 = !DILocation(line: 201, column: 9, scope: !1729)
!1732 = !DILocation(line: 201, column: 8, scope: !1668)
!1733 = !DILocation(line: 202, column: 6, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1729, file: !37, line: 201, column: 43)
!1735 = !DILocation(line: 202, column: 69, scope: !1734)
!1736 = !DILocation(line: 202, column: 86, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1734, file: !37, discriminator: 1)
!1738 = !DILocation(line: 202, column: 7, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1734, file: !37, discriminator: 2)
!1740 = !DILocation(line: 204, column: 7, scope: !1734)
!1741 = !DILocation(line: 207, column: 8, scope: !1668)
!1742 = !DILocation(line: 207, column: 4, scope: !1668)
!1743 = !DILocation(line: 210, column: 12, scope: !1668)
!1744 = !DILocation(line: 210, column: 4, scope: !1668)
!1745 = !DILocation(line: 211, column: 22, scope: !1668)
!1746 = !DILocation(line: 211, column: 4, scope: !1668)
!1747 = !DILocation(line: 212, column: 11, scope: !1668)
!1748 = !DILocation(line: 212, column: 4, scope: !1668)
!1749 = !DILocation(line: 214, column: 11, scope: !1668)
!1750 = !DILocation(line: 214, column: 4, scope: !1668)
