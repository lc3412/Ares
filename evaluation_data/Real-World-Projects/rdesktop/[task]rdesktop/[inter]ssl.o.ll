; ModuleID = './[inter]ssl.o.i'
source_filename = "./[inter]ssl.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.rc4_key_st = type { i32, i32, [256 x i32] }
%struct.bignum_ctx = type opaque
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
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
%struct.rsa_st = type { i32, i64, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, i8*, %struct.bn_blinding_st*, %struct.bn_blinding_st* }
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bn_gencb_st = type { i32, i8*, %union.anon.1 }
%union.anon.1 = type { void (i32, i32, i8*)* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bn_blinding_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.env_md_st = type { i32, i32, i32, i64, i32 (%struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*, i8*, i64)*, i32 (%struct.env_md_ctx_st*, i8*)*, i32 (%struct.env_md_ctx_st*, %struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*)*, i32 (i32, i8*, i32, i8*, i32*, i8*)*, i32 (i32, i8*, i32, i8*, i32, i8*)*, [5 x i32], i32, i32, i32 (%struct.env_md_ctx_st*, i32, i32, i8*)* }
%struct.env_md_ctx_st = type { %struct.env_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.env_md_ctx_st*, i8*, i64)* }
%struct.evp_pkey_ctx_st = type opaque

@.str = private unnamed_addr constant [21 x i8] c"%s, 0x%.8x:%s:%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"rdssl_cert_to_key(), failed to get public key from certificate\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"rdssl_cert_to_key()\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"rdssl_cert_to_key(), failed to get algorithm used for public key\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"rdssl_cert_to_key(), re-setting algorithm type to RSA in server certificate\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"rdssl_cert_to_key(), failed to extract public key from certificate\00", align 1

; Function Attrs: nounwind uwtable
define void @rdssl_log_ssl_errors(i8*) #0 !dbg !32 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !40, metadata !41), !dbg !42
  call void @llvm.dbg.declare(metadata i64* %3, metadata !43, metadata !41), !dbg !45
  br label %4, !dbg !46

; <label>:4:                                      ; preds = %1, %9
  %5 = call i64 @ERR_get_error(), !dbg !47
  store i64 %5, i64* %3, align 8, !dbg !49
  %6 = load i64, i64* %3, align 8, !dbg !50
  %7 = icmp eq i64 %6, 0, !dbg !52
  br i1 %7, label %8, label %9, !dbg !53

; <label>:8:                                      ; preds = %4
  br label %18, !dbg !54

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %2, align 8, !dbg !55
  %11 = load i64, i64* %3, align 8, !dbg !56
  %12 = load i64, i64* %3, align 8, !dbg !57
  %13 = call i8* @ERR_lib_error_string(i64 %12), !dbg !58
  %14 = load i64, i64* %3, align 8, !dbg !59
  %15 = call i8* @ERR_func_error_string(i64 %14), !dbg !60
  %16 = load i64, i64* %3, align 8, !dbg !61
  %17 = call i8* @ERR_reason_error_string(i64 %16), !dbg !62
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %10, i64 %11, i8* %13, i8* %15, i8* %17), !dbg !64
  br label %4, !dbg !65, !llvm.loop !67

; <label>:18:                                     ; preds = %8
  ret void, !dbg !68
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @ERR_get_error() #2

declare void @logger(i32, i32, i8*, ...) #2

declare i8* @ERR_lib_error_string(i64) #2

declare i8* @ERR_func_error_string(i64) #2

declare i8* @ERR_reason_error_string(i64) #2

; Function Attrs: nounwind uwtable
define void @rdssl_sha1_init(%struct.SHAstate_st*) #0 !dbg !69 {
  %2 = alloca %struct.SHAstate_st*, align 8
  store %struct.SHAstate_st* %0, %struct.SHAstate_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st** %2, metadata !90, metadata !41), !dbg !91
  %3 = load %struct.SHAstate_st*, %struct.SHAstate_st** %2, align 8, !dbg !92
  %4 = call i32 @SHA1_Init(%struct.SHAstate_st* %3), !dbg !93
  ret void, !dbg !94
}

declare i32 @SHA1_Init(%struct.SHAstate_st*) #2

; Function Attrs: nounwind uwtable
define void @rdssl_sha1_update(%struct.SHAstate_st*, i8*, i32) #0 !dbg !95 {
  %4 = alloca %struct.SHAstate_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SHAstate_st* %0, %struct.SHAstate_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st** %4, metadata !102, metadata !41), !dbg !103
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !104, metadata !41), !dbg !105
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !106, metadata !41), !dbg !107
  %7 = load %struct.SHAstate_st*, %struct.SHAstate_st** %4, align 8, !dbg !108
  %8 = load i8*, i8** %5, align 8, !dbg !109
  %9 = load i32, i32* %6, align 4, !dbg !110
  %10 = zext i32 %9 to i64, !dbg !110
  %11 = call i32 @SHA1_Update(%struct.SHAstate_st* %7, i8* %8, i64 %10), !dbg !111
  ret void, !dbg !112
}

declare i32 @SHA1_Update(%struct.SHAstate_st*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @rdssl_sha1_final(%struct.SHAstate_st*, i8*) #0 !dbg !113 {
  %3 = alloca %struct.SHAstate_st*, align 8
  %4 = alloca i8*, align 8
  store %struct.SHAstate_st* %0, %struct.SHAstate_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st** %3, metadata !116, metadata !41), !dbg !117
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !118, metadata !41), !dbg !119
  %5 = load i8*, i8** %4, align 8, !dbg !120
  %6 = load %struct.SHAstate_st*, %struct.SHAstate_st** %3, align 8, !dbg !121
  %7 = call i32 @SHA1_Final(i8* %5, %struct.SHAstate_st* %6), !dbg !122
  ret void, !dbg !123
}

declare i32 @SHA1_Final(i8*, %struct.SHAstate_st*) #2

; Function Attrs: nounwind uwtable
define void @rdssl_md5_init(%struct.MD5state_st*) #0 !dbg !124 {
  %2 = alloca %struct.MD5state_st*, align 8
  store %struct.MD5state_st* %0, %struct.MD5state_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MD5state_st** %2, metadata !140, metadata !41), !dbg !141
  %3 = load %struct.MD5state_st*, %struct.MD5state_st** %2, align 8, !dbg !142
  %4 = call i32 @MD5_Init(%struct.MD5state_st* %3), !dbg !143
  ret void, !dbg !144
}

declare i32 @MD5_Init(%struct.MD5state_st*) #2

; Function Attrs: nounwind uwtable
define void @rdssl_md5_update(%struct.MD5state_st*, i8*, i32) #0 !dbg !145 {
  %4 = alloca %struct.MD5state_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.MD5state_st* %0, %struct.MD5state_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MD5state_st** %4, metadata !148, metadata !41), !dbg !149
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !150, metadata !41), !dbg !151
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !152, metadata !41), !dbg !153
  %7 = load %struct.MD5state_st*, %struct.MD5state_st** %4, align 8, !dbg !154
  %8 = load i8*, i8** %5, align 8, !dbg !155
  %9 = load i32, i32* %6, align 4, !dbg !156
  %10 = zext i32 %9 to i64, !dbg !156
  %11 = call i32 @MD5_Update(%struct.MD5state_st* %7, i8* %8, i64 %10), !dbg !157
  ret void, !dbg !158
}

declare i32 @MD5_Update(%struct.MD5state_st*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @rdssl_md5_final(%struct.MD5state_st*, i8*) #0 !dbg !159 {
  %3 = alloca %struct.MD5state_st*, align 8
  %4 = alloca i8*, align 8
  store %struct.MD5state_st* %0, %struct.MD5state_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.MD5state_st** %3, metadata !162, metadata !41), !dbg !163
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !164, metadata !41), !dbg !165
  %5 = load i8*, i8** %4, align 8, !dbg !166
  %6 = load %struct.MD5state_st*, %struct.MD5state_st** %3, align 8, !dbg !167
  %7 = call i32 @MD5_Final(i8* %5, %struct.MD5state_st* %6), !dbg !168
  ret void, !dbg !169
}

declare i32 @MD5_Final(i8*, %struct.MD5state_st*) #2

; Function Attrs: nounwind uwtable
define void @rdssl_rc4_set_key(%struct.rc4_key_st*, i8*, i32) #0 !dbg !170 {
  %4 = alloca %struct.rc4_key_st*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.rc4_key_st* %0, %struct.rc4_key_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rc4_key_st** %4, metadata !184, metadata !41), !dbg !185
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !186, metadata !41), !dbg !187
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !188, metadata !41), !dbg !189
  %7 = load %struct.rc4_key_st*, %struct.rc4_key_st** %4, align 8, !dbg !190
  %8 = load i32, i32* %6, align 4, !dbg !191
  %9 = load i8*, i8** %5, align 8, !dbg !192
  call void @RC4_set_key(%struct.rc4_key_st* %7, i32 %8, i8* %9), !dbg !193
  ret void, !dbg !194
}

declare void @RC4_set_key(%struct.rc4_key_st*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @rdssl_rc4_crypt(%struct.rc4_key_st*, i8*, i8*, i32) #0 !dbg !195 {
  %5 = alloca %struct.rc4_key_st*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.rc4_key_st* %0, %struct.rc4_key_st** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rc4_key_st** %5, metadata !198, metadata !41), !dbg !199
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !200, metadata !41), !dbg !201
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !202, metadata !41), !dbg !203
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !204, metadata !41), !dbg !205
  %9 = load %struct.rc4_key_st*, %struct.rc4_key_st** %5, align 8, !dbg !206
  %10 = load i32, i32* %8, align 4, !dbg !207
  %11 = zext i32 %10 to i64, !dbg !207
  %12 = load i8*, i8** %6, align 8, !dbg !208
  %13 = load i8*, i8** %7, align 8, !dbg !209
  call void @RC4(%struct.rc4_key_st* %9, i64 %11, i8* %12, i8* %13), !dbg !210
  ret void, !dbg !211
}

declare void @RC4(%struct.rc4_key_st*, i64, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @rdssl_rsa_encrypt(i8*, i8*, i32, i32, i8*, i8*) #0 !dbg !212 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.bignum_ctx*, align 8
  %14 = alloca %struct.bignum_st*, align 8
  %15 = alloca %struct.bignum_st*, align 8
  %16 = alloca %struct.bignum_st*, align 8
  %17 = alloca %struct.bignum_st*, align 8
  %18 = alloca [256 x i8], align 16
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !215, metadata !41), !dbg !216
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !217, metadata !41), !dbg !218
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !219, metadata !41), !dbg !220
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !221, metadata !41), !dbg !222
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !223, metadata !41), !dbg !224
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !225, metadata !41), !dbg !226
  call void @llvm.dbg.declare(metadata %struct.bignum_ctx** %13, metadata !227, metadata !41), !dbg !232
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %14, metadata !233, metadata !41), !dbg !245
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %15, metadata !246, metadata !41), !dbg !247
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %16, metadata !248, metadata !41), !dbg !249
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %17, metadata !250, metadata !41), !dbg !251
  call void @llvm.dbg.declare(metadata [256 x i8]* %18, metadata !252, metadata !41), !dbg !254
  call void @llvm.dbg.declare(metadata i32* %19, metadata !255, metadata !41), !dbg !256
  %20 = load i8*, i8** %11, align 8, !dbg !257
  %21 = load i32, i32* %10, align 4, !dbg !258
  call void @reverse(i8* %20, i32 %21), !dbg !259
  %22 = load i8*, i8** %12, align 8, !dbg !260
  call void @reverse(i8* %22, i32 4), !dbg !261
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i32 0, i32 0, !dbg !262
  %24 = load i8*, i8** %8, align 8, !dbg !263
  %25 = load i32, i32* %9, align 4, !dbg !264
  %26 = sext i32 %25 to i64, !dbg !264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 %26, i32 1, i1 false), !dbg !262
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i32 0, i32 0, !dbg !265
  %28 = load i32, i32* %9, align 4, !dbg !266
  call void @reverse(i8* %27, i32 %28), !dbg !267
  %29 = call %struct.bignum_ctx* @BN_CTX_new(), !dbg !268
  store %struct.bignum_ctx* %29, %struct.bignum_ctx** %13, align 8, !dbg !269
  %30 = call %struct.bignum_st* @BN_new(), !dbg !270
  store %struct.bignum_st* %30, %struct.bignum_st** %14, align 8, !dbg !271
  %31 = call %struct.bignum_st* @BN_new(), !dbg !272
  store %struct.bignum_st* %31, %struct.bignum_st** %15, align 8, !dbg !273
  %32 = call %struct.bignum_st* @BN_new(), !dbg !274
  store %struct.bignum_st* %32, %struct.bignum_st** %16, align 8, !dbg !275
  %33 = call %struct.bignum_st* @BN_new(), !dbg !276
  store %struct.bignum_st* %33, %struct.bignum_st** %17, align 8, !dbg !277
  %34 = load i8*, i8** %11, align 8, !dbg !278
  %35 = load i32, i32* %10, align 4, !dbg !279
  %36 = load %struct.bignum_st*, %struct.bignum_st** %14, align 8, !dbg !280
  %37 = call %struct.bignum_st* @BN_bin2bn(i8* %34, i32 %35, %struct.bignum_st* %36), !dbg !281
  %38 = load i8*, i8** %12, align 8, !dbg !282
  %39 = load %struct.bignum_st*, %struct.bignum_st** %15, align 8, !dbg !283
  %40 = call %struct.bignum_st* @BN_bin2bn(i8* %38, i32 4, %struct.bignum_st* %39), !dbg !284
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i32 0, i32 0, !dbg !285
  %42 = load i32, i32* %9, align 4, !dbg !286
  %43 = load %struct.bignum_st*, %struct.bignum_st** %16, align 8, !dbg !287
  %44 = call %struct.bignum_st* @BN_bin2bn(i8* %41, i32 %42, %struct.bignum_st* %43), !dbg !288
  %45 = load %struct.bignum_st*, %struct.bignum_st** %17, align 8, !dbg !289
  %46 = load %struct.bignum_st*, %struct.bignum_st** %16, align 8, !dbg !290
  %47 = load %struct.bignum_st*, %struct.bignum_st** %15, align 8, !dbg !291
  %48 = load %struct.bignum_st*, %struct.bignum_st** %14, align 8, !dbg !292
  %49 = load %struct.bignum_ctx*, %struct.bignum_ctx** %13, align 8, !dbg !293
  %50 = call i32 @BN_mod_exp(%struct.bignum_st* %45, %struct.bignum_st* %46, %struct.bignum_st* %47, %struct.bignum_st* %48, %struct.bignum_ctx* %49), !dbg !294
  %51 = load %struct.bignum_st*, %struct.bignum_st** %17, align 8, !dbg !295
  %52 = load i8*, i8** %7, align 8, !dbg !296
  %53 = call i32 @BN_bn2bin(%struct.bignum_st* %51, i8* %52), !dbg !297
  store i32 %53, i32* %19, align 4, !dbg !298
  %54 = load i8*, i8** %7, align 8, !dbg !299
  %55 = load i32, i32* %19, align 4, !dbg !300
  call void @reverse(i8* %54, i32 %55), !dbg !301
  %56 = load i32, i32* %19, align 4, !dbg !302
  %57 = load i32, i32* %10, align 4, !dbg !304
  %58 = icmp slt i32 %56, %57, !dbg !305
  br i1 %58, label %59, label %68, !dbg !306

; <label>:59:                                     ; preds = %6
  %60 = load i8*, i8** %7, align 8, !dbg !307
  %61 = load i32, i32* %19, align 4, !dbg !308
  %62 = sext i32 %61 to i64, !dbg !309
  %63 = getelementptr inbounds i8, i8* %60, i64 %62, !dbg !309
  %64 = load i32, i32* %10, align 4, !dbg !310
  %65 = load i32, i32* %19, align 4, !dbg !311
  %66 = sub i32 %64, %65, !dbg !312
  %67 = zext i32 %66 to i64, !dbg !310
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 %67, i32 1, i1 false), !dbg !313
  br label %68, !dbg !313

; <label>:68:                                     ; preds = %59, %6
  %69 = load %struct.bignum_st*, %struct.bignum_st** %17, align 8, !dbg !314
  call void @BN_free(%struct.bignum_st* %69), !dbg !315
  %70 = load %struct.bignum_st*, %struct.bignum_st** %16, align 8, !dbg !316
  call void @BN_clear_free(%struct.bignum_st* %70), !dbg !317
  %71 = load %struct.bignum_st*, %struct.bignum_st** %15, align 8, !dbg !318
  call void @BN_free(%struct.bignum_st* %71), !dbg !319
  %72 = load %struct.bignum_st*, %struct.bignum_st** %14, align 8, !dbg !320
  call void @BN_free(%struct.bignum_st* %72), !dbg !321
  %73 = load %struct.bignum_ctx*, %struct.bignum_ctx** %13, align 8, !dbg !322
  call void @BN_CTX_free(%struct.bignum_ctx* %73), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: nounwind uwtable
define internal void @reverse(i8*, i32) #0 !dbg !325 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !328, metadata !41), !dbg !329
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !330, metadata !41), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %5, metadata !332, metadata !41), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %6, metadata !334, metadata !41), !dbg !335
  call void @llvm.dbg.declare(metadata i8* %7, metadata !336, metadata !41), !dbg !337
  store i32 0, i32* %5, align 4, !dbg !338
  %8 = load i32, i32* %4, align 4, !dbg !340
  %9 = sub nsw i32 %8, 1, !dbg !341
  store i32 %9, i32* %6, align 4, !dbg !342
  br label %10, !dbg !343

; <label>:10:                                     ; preds = %34, %2
  %11 = load i32, i32* %5, align 4, !dbg !344
  %12 = load i32, i32* %6, align 4, !dbg !347
  %13 = icmp slt i32 %11, %12, !dbg !348
  br i1 %13, label %14, label %39, !dbg !349

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %5, align 4, !dbg !350
  %16 = sext i32 %15 to i64, !dbg !352
  %17 = load i8*, i8** %3, align 8, !dbg !352
  %18 = getelementptr inbounds i8, i8* %17, i64 %16, !dbg !352
  %19 = load i8, i8* %18, align 1, !dbg !352
  store i8 %19, i8* %7, align 1, !dbg !353
  %20 = load i32, i32* %6, align 4, !dbg !354
  %21 = sext i32 %20 to i64, !dbg !355
  %22 = load i8*, i8** %3, align 8, !dbg !355
  %23 = getelementptr inbounds i8, i8* %22, i64 %21, !dbg !355
  %24 = load i8, i8* %23, align 1, !dbg !355
  %25 = load i32, i32* %5, align 4, !dbg !356
  %26 = sext i32 %25 to i64, !dbg !357
  %27 = load i8*, i8** %3, align 8, !dbg !357
  %28 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !357
  store i8 %24, i8* %28, align 1, !dbg !358
  %29 = load i8, i8* %7, align 1, !dbg !359
  %30 = load i32, i32* %6, align 4, !dbg !360
  %31 = sext i32 %30 to i64, !dbg !361
  %32 = load i8*, i8** %3, align 8, !dbg !361
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !361
  store i8 %29, i8* %33, align 1, !dbg !362
  br label %34, !dbg !363

; <label>:34:                                     ; preds = %14
  %35 = load i32, i32* %5, align 4, !dbg !364
  %36 = add nsw i32 %35, 1, !dbg !364
  store i32 %36, i32* %5, align 4, !dbg !364
  %37 = load i32, i32* %6, align 4, !dbg !366
  %38 = add nsw i32 %37, -1, !dbg !366
  store i32 %38, i32* %6, align 4, !dbg !366
  br label %10, !dbg !367, !llvm.loop !368

; <label>:39:                                     ; preds = %10
  ret void, !dbg !370
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare %struct.bignum_ctx* @BN_CTX_new() #2

declare %struct.bignum_st* @BN_new() #2

declare %struct.bignum_st* @BN_bin2bn(i8*, i32, %struct.bignum_st*) #2

declare i32 @BN_mod_exp(%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @BN_bn2bin(%struct.bignum_st*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare void @BN_free(%struct.bignum_st*) #2

declare void @BN_clear_free(%struct.bignum_st*) #2

declare void @BN_CTX_free(%struct.bignum_ctx*) #2

; Function Attrs: nounwind uwtable
define %struct.x509_st* @rdssl_cert_read(i8*, i32) #0 !dbg !371 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !886, metadata !41), !dbg !887
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !888, metadata !41), !dbg !889
  %5 = load i32, i32* %4, align 4, !dbg !890
  %6 = zext i32 %5 to i64, !dbg !890
  %7 = call %struct.x509_st* @d2i_X509(%struct.x509_st** null, i8** %3, i64 %6), !dbg !891
  ret %struct.x509_st* %7, !dbg !892
}

declare %struct.x509_st* @d2i_X509(%struct.x509_st**, i8**, i64) #2

; Function Attrs: nounwind uwtable
define void @rdssl_cert_free(%struct.x509_st*) #0 !dbg !893 {
  %2 = alloca %struct.x509_st*, align 8
  store %struct.x509_st* %0, %struct.x509_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %2, metadata !896, metadata !41), !dbg !897
  %3 = load %struct.x509_st*, %struct.x509_st** %2, align 8, !dbg !898
  call void @X509_free(%struct.x509_st* %3), !dbg !899
  ret void, !dbg !900
}

declare void @X509_free(%struct.x509_st*) #2

; Function Attrs: nounwind uwtable
define %struct.rsa_st* @rdssl_cert_to_rkey(%struct.x509_st*, i32*) #0 !dbg !901 {
  %3 = alloca %struct.rsa_st*, align 8
  %4 = alloca %struct.x509_st*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.evp_pkey_st*, align 8
  %7 = alloca %struct.rsa_st*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.X509_pubkey_st*, align 8
  %11 = alloca %struct.X509_algor_st*, align 8
  store %struct.x509_st* %0, %struct.x509_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %4, metadata !905, metadata !41), !dbg !906
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !907, metadata !41), !dbg !908
  call void @llvm.dbg.declare(metadata %struct.evp_pkey_st** %6, metadata !909, metadata !41), !dbg !910
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %6, align 8, !dbg !910
  call void @llvm.dbg.declare(metadata %struct.rsa_st** %7, metadata !911, metadata !41), !dbg !912
  call void @llvm.dbg.declare(metadata i32* %8, metadata !913, metadata !41), !dbg !914
  call void @llvm.dbg.declare(metadata i32* %9, metadata !915, metadata !41), !dbg !916
  call void @llvm.dbg.declare(metadata %struct.X509_pubkey_st** %10, metadata !917, metadata !41), !dbg !918
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %10, align 8, !dbg !918
  call void @llvm.dbg.declare(metadata %struct.X509_algor_st** %11, metadata !919, metadata !41), !dbg !920
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %11, align 8, !dbg !920
  %12 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !921
  %13 = getelementptr inbounds %struct.x509_st, %struct.x509_st* %12, i32 0, i32 0, !dbg !922
  %14 = load %struct.x509_cinf_st*, %struct.x509_cinf_st** %13, align 8, !dbg !922
  %15 = getelementptr inbounds %struct.x509_cinf_st, %struct.x509_cinf_st* %14, i32 0, i32 6, !dbg !923
  %16 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %15, align 8, !dbg !923
  store %struct.X509_pubkey_st* %16, %struct.X509_pubkey_st** %10, align 8, !dbg !924
  %17 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %10, align 8, !dbg !925
  %18 = icmp eq %struct.X509_pubkey_st* %17, null, !dbg !927
  br i1 %18, label %19, label %20, !dbg !928

; <label>:19:                                     ; preds = %2
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i32 0, i32 0)), !dbg !929
  call void @rdssl_log_ssl_errors(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !931
  store %struct.rsa_st* null, %struct.rsa_st** %3, align 8, !dbg !932
  br label %55, !dbg !932

; <label>:20:                                     ; preds = %2
  %21 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %10, align 8, !dbg !933
  %22 = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** null, i8** null, i32* null, %struct.X509_algor_st** %11, %struct.X509_pubkey_st* %21), !dbg !934
  store i32 %22, i32* %9, align 4, !dbg !935
  %23 = load i32, i32* %9, align 4, !dbg !936
  %24 = icmp ne i32 %23, 1, !dbg !938
  br i1 %24, label %25, label %26, !dbg !939

; <label>:25:                                     ; preds = %20
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0)), !dbg !940
  call void @rdssl_log_ssl_errors(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !942
  store %struct.rsa_st* null, %struct.rsa_st** %3, align 8, !dbg !943
  br label %55, !dbg !943

; <label>:26:                                     ; preds = %20
  %27 = load %struct.X509_algor_st*, %struct.X509_algor_st** %11, align 8, !dbg !944
  %28 = getelementptr inbounds %struct.X509_algor_st, %struct.X509_algor_st* %27, i32 0, i32 0, !dbg !945
  %29 = load %struct.asn1_object_st*, %struct.asn1_object_st** %28, align 8, !dbg !945
  %30 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* %29), !dbg !946
  store i32 %30, i32* %8, align 4, !dbg !947
  %31 = load i32, i32* %8, align 4, !dbg !948
  %32 = icmp eq i32 %31, 8, !dbg !950
  br i1 %32, label %36, label %33, !dbg !951

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %8, align 4, !dbg !952
  %35 = icmp eq i32 %34, 42, !dbg !954
  br i1 %35, label %36, label %40, !dbg !955

; <label>:36:                                     ; preds = %33, %26
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i32 0, i32 0)), !dbg !956
  %37 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %10, align 8, !dbg !958
  %38 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 6), !dbg !959
  %39 = call i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st* %37, %struct.asn1_object_st* %38, i32 0, i8* null, i8* null, i32 0), !dbg !960
  br label %40, !dbg !962

; <label>:40:                                     ; preds = %36, %33
  %41 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !963
  %42 = call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* %41), !dbg !964
  store %struct.evp_pkey_st* %42, %struct.evp_pkey_st** %6, align 8, !dbg !965
  %43 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %6, align 8, !dbg !966
  %44 = icmp eq %struct.evp_pkey_st* null, %43, !dbg !968
  br i1 %44, label %45, label %46, !dbg !969

; <label>:45:                                     ; preds = %40
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0)), !dbg !970
  call void @rdssl_log_ssl_errors(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !972
  store %struct.rsa_st* null, %struct.rsa_st** %3, align 8, !dbg !973
  br label %55, !dbg !973

; <label>:46:                                     ; preds = %40
  %47 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %6, align 8, !dbg !974
  %48 = call %struct.rsa_st* @EVP_PKEY_get1_RSA(%struct.evp_pkey_st* %47), !dbg !975
  %49 = call %struct.rsa_st* @RSAPublicKey_dup(%struct.rsa_st* %48), !dbg !976
  store %struct.rsa_st* %49, %struct.rsa_st** %7, align 8, !dbg !978
  %50 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %6, align 8, !dbg !979
  call void @EVP_PKEY_free(%struct.evp_pkey_st* %50), !dbg !980
  %51 = load %struct.rsa_st*, %struct.rsa_st** %7, align 8, !dbg !981
  %52 = call i32 @RSA_size(%struct.rsa_st* %51), !dbg !982
  %53 = load i32*, i32** %5, align 8, !dbg !983
  store i32 %52, i32* %53, align 4, !dbg !984
  %54 = load %struct.rsa_st*, %struct.rsa_st** %7, align 8, !dbg !985
  store %struct.rsa_st* %54, %struct.rsa_st** %3, align 8, !dbg !986
  br label %55, !dbg !986

; <label>:55:                                     ; preds = %46, %45, %25, %19
  %56 = load %struct.rsa_st*, %struct.rsa_st** %3, align 8, !dbg !987
  ret %struct.rsa_st* %56, !dbg !987
}

declare i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st**, i8**, i32*, %struct.X509_algor_st**, %struct.X509_pubkey_st*) #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st*) #2

declare i32 @X509_PUBKEY_set0_param(%struct.X509_pubkey_st*, %struct.asn1_object_st*, i32, i8*, i8*, i32) #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32) #2

declare %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st*) #2

declare %struct.rsa_st* @RSAPublicKey_dup(%struct.rsa_st*) #2

declare %struct.rsa_st* @EVP_PKEY_get1_RSA(%struct.evp_pkey_st*) #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st*) #2

declare i32 @RSA_size(%struct.rsa_st*) #2

; Function Attrs: nounwind uwtable
define i32 @rdssl_certs_ok(%struct.x509_st*, %struct.x509_st*) #0 !dbg !988 {
  %3 = alloca %struct.x509_st*, align 8
  %4 = alloca %struct.x509_st*, align 8
  store %struct.x509_st* %0, %struct.x509_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %3, metadata !992, metadata !41), !dbg !993
  store %struct.x509_st* %1, %struct.x509_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %4, metadata !994, metadata !41), !dbg !995
  %5 = load %struct.x509_st*, %struct.x509_st** %3, align 8, !dbg !996
  %6 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !997
  ret i32 1, !dbg !998
}

; Function Attrs: nounwind uwtable
define i32 @rdssl_cert_print_fp(%struct._IO_FILE*, %struct.x509_st*) #0 !dbg !999 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.x509_st*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1055, metadata !41), !dbg !1056
  store %struct.x509_st* %1, %struct.x509_st** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.x509_st** %4, metadata !1057, metadata !41), !dbg !1058
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1059
  %6 = load %struct.x509_st*, %struct.x509_st** %4, align 8, !dbg !1060
  %7 = call i32 @X509_print_fp(%struct._IO_FILE* %5, %struct.x509_st* %6), !dbg !1061
  ret i32 %7, !dbg !1062
}

declare i32 @X509_print_fp(%struct._IO_FILE*, %struct.x509_st*) #2

; Function Attrs: nounwind uwtable
define void @rdssl_rkey_free(%struct.rsa_st*) #0 !dbg !1063 {
  %2 = alloca %struct.rsa_st*, align 8
  store %struct.rsa_st* %0, %struct.rsa_st** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.rsa_st** %2, metadata !1066, metadata !41), !dbg !1067
  %3 = load %struct.rsa_st*, %struct.rsa_st** %2, align 8, !dbg !1068
  call void @RSA_free(%struct.rsa_st* %3), !dbg !1069
  ret void, !dbg !1070
}

declare void @RSA_free(%struct.rsa_st*) #2

; Function Attrs: nounwind uwtable
define i32 @rdssl_rkey_get_exp_mod(%struct.rsa_st*, i8*, i32, i8*, i32) #0 !dbg !1071 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsa_st*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bignum_st*, align 8
  %14 = alloca %struct.bignum_st*, align 8
  store %struct.rsa_st* %0, %struct.rsa_st** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.rsa_st** %7, metadata !1074, metadata !41), !dbg !1075
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1076, metadata !41), !dbg !1077
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1078, metadata !41), !dbg !1079
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1080, metadata !41), !dbg !1081
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1082, metadata !41), !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1084, metadata !41), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %13, metadata !1086, metadata !41), !dbg !1087
  store %struct.bignum_st* null, %struct.bignum_st** %13, align 8, !dbg !1087
  call void @llvm.dbg.declare(metadata %struct.bignum_st** %14, metadata !1088, metadata !41), !dbg !1089
  store %struct.bignum_st* null, %struct.bignum_st** %14, align 8, !dbg !1089
  %15 = load %struct.rsa_st*, %struct.rsa_st** %7, align 8, !dbg !1090
  %16 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %15, i32 0, i32 5, !dbg !1091
  %17 = load %struct.bignum_st*, %struct.bignum_st** %16, align 8, !dbg !1091
  store %struct.bignum_st* %17, %struct.bignum_st** %13, align 8, !dbg !1092
  %18 = load %struct.rsa_st*, %struct.rsa_st** %7, align 8, !dbg !1093
  %19 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %18, i32 0, i32 4, !dbg !1094
  %20 = load %struct.bignum_st*, %struct.bignum_st** %19, align 8, !dbg !1094
  store %struct.bignum_st* %20, %struct.bignum_st** %14, align 8, !dbg !1095
  %21 = load %struct.bignum_st*, %struct.bignum_st** %13, align 8, !dbg !1096
  %22 = call i32 @BN_num_bits(%struct.bignum_st* %21), !dbg !1098
  %23 = add nsw i32 %22, 7, !dbg !1099
  %24 = sdiv i32 %23, 8, !dbg !1100
  %25 = load i32, i32* %9, align 4, !dbg !1101
  %26 = icmp sgt i32 %24, %25, !dbg !1102
  br i1 %26, label %34, label %27, !dbg !1103

; <label>:27:                                     ; preds = %5
  %28 = load %struct.bignum_st*, %struct.bignum_st** %14, align 8, !dbg !1104
  %29 = call i32 @BN_num_bits(%struct.bignum_st* %28), !dbg !1106
  %30 = add nsw i32 %29, 7, !dbg !1107
  %31 = sdiv i32 %30, 8, !dbg !1108
  %32 = load i32, i32* %11, align 4, !dbg !1109
  %33 = icmp sgt i32 %31, %32, !dbg !1110
  br i1 %33, label %34, label %35, !dbg !1111

; <label>:34:                                     ; preds = %27, %5
  store i32 1, i32* %6, align 4, !dbg !1112
  br label %46, !dbg !1112

; <label>:35:                                     ; preds = %27
  %36 = load %struct.bignum_st*, %struct.bignum_st** %13, align 8, !dbg !1114
  %37 = load i8*, i8** %8, align 8, !dbg !1115
  %38 = call i32 @BN_bn2bin(%struct.bignum_st* %36, i8* %37), !dbg !1116
  store i32 %38, i32* %12, align 4, !dbg !1117
  %39 = load i8*, i8** %8, align 8, !dbg !1118
  %40 = load i32, i32* %12, align 4, !dbg !1119
  call void @reverse(i8* %39, i32 %40), !dbg !1120
  %41 = load %struct.bignum_st*, %struct.bignum_st** %14, align 8, !dbg !1121
  %42 = load i8*, i8** %10, align 8, !dbg !1122
  %43 = call i32 @BN_bn2bin(%struct.bignum_st* %41, i8* %42), !dbg !1123
  store i32 %43, i32* %12, align 4, !dbg !1124
  %44 = load i8*, i8** %10, align 8, !dbg !1125
  %45 = load i32, i32* %12, align 4, !dbg !1126
  call void @reverse(i8* %44, i32 %45), !dbg !1127
  store i32 0, i32* %6, align 4, !dbg !1128
  br label %46, !dbg !1128

; <label>:46:                                     ; preds = %35, %34
  %47 = load i32, i32* %6, align 4, !dbg !1129
  ret i32 %47, !dbg !1129
}

declare i32 @BN_num_bits(%struct.bignum_st*) #2

; Function Attrs: nounwind uwtable
define i32 @rdssl_sig_ok(i8*, i32, i8*, i32, i8*, i32) #0 !dbg !1130 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1133, metadata !41), !dbg !1134
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1135, metadata !41), !dbg !1136
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1137, metadata !41), !dbg !1138
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1139, metadata !41), !dbg !1140
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1141, metadata !41), !dbg !1142
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1143, metadata !41), !dbg !1144
  %13 = load i8*, i8** %7, align 8, !dbg !1145
  %14 = load i32, i32* %8, align 4, !dbg !1146
  %15 = load i8*, i8** %9, align 8, !dbg !1147
  %16 = load i32, i32* %10, align 4, !dbg !1148
  %17 = load i8*, i8** %11, align 8, !dbg !1149
  %18 = load i32, i32* %12, align 4, !dbg !1150
  ret i32 1, !dbg !1151
}

; Function Attrs: nounwind uwtable
define void @rdssl_hmac_md5(i8*, i32, i8*, i32, i8*) #0 !dbg !1152 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1155, metadata !41), !dbg !1156
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1157, metadata !41), !dbg !1158
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1159, metadata !41), !dbg !1160
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1161, metadata !41), !dbg !1162
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1163, metadata !41), !dbg !1164
  %11 = call %struct.env_md_st* @EVP_md5(), !dbg !1165
  %12 = load i8*, i8** %6, align 8, !dbg !1166
  %13 = load i32, i32* %7, align 4, !dbg !1167
  %14 = load i8*, i8** %8, align 8, !dbg !1168
  %15 = load i32, i32* %9, align 4, !dbg !1169
  %16 = sext i32 %15 to i64, !dbg !1169
  %17 = load i8*, i8** %10, align 8, !dbg !1170
  %18 = call i8* @HMAC(%struct.env_md_st* %11, i8* %12, i32 %13, i8* %14, i64 %16, i8* %17, i32* null), !dbg !1171
  ret void, !dbg !1173
}

declare i8* @HMAC(%struct.env_md_st*, i8*, i32, i8*, i64, i8*, i32*) #2

declare %struct.env_md_st* @EVP_md5() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !22)
!1 = !DIFile(filename: "[inter]ssl.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_subject_t", file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "utils.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "GUI", value: 0)
!7 = !DIEnumerator(name: "Keyboard", value: 1)
!8 = !DIEnumerator(name: "Clipboard", value: 2)
!9 = !DIEnumerator(name: "Sound", value: 3)
!10 = !DIEnumerator(name: "Protocol", value: 4)
!11 = !DIEnumerator(name: "Graphics", value: 5)
!12 = !DIEnumerator(name: "Core", value: 6)
!13 = !DIEnumerator(name: "SmartCard", value: 7)
!14 = !DIEnumerator(name: "Disk", value: 8)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "log_level_t", file: !4, line: 37, size: 32, align: 32, elements: !16)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "Debug", value: 0)
!18 = !DIEnumerator(name: "Verbose", value: 1)
!19 = !DIEnumerator(name: "Warning", value: 2)
!20 = !DIEnumerator(name: "Error", value: 3)
!21 = !DIEnumerator(name: "Notice", value: 4)
!22 = !{!23, !24, !28}
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!32 = distinct !DISubprogram(name: "rdssl_log_ssl_errors", scope: !33, file: !33, line: 27, type: !34, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!33 = !DIFile(filename: "ssl.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !{}
!40 = !DILocalVariable(name: "prefix", arg: 1, scope: !32, file: !33, line: 27, type: !36)
!41 = !DIExpression()
!42 = !DILocation(line: 27, column: 34, scope: !32)
!43 = !DILocalVariable(name: "err", scope: !32, file: !33, line: 29, type: !44)
!44 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!45 = !DILocation(line: 29, column: 16, scope: !32)
!46 = !DILocation(line: 30, column: 2, scope: !32)
!47 = !DILocation(line: 32, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !32, file: !33, line: 31, column: 2)
!49 = !DILocation(line: 32, column: 7, scope: !48)
!50 = !DILocation(line: 33, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !33, line: 33, column: 7)
!52 = !DILocation(line: 33, column: 11, scope: !51)
!53 = !DILocation(line: 33, column: 7, scope: !48)
!54 = !DILocation(line: 34, column: 4, scope: !51)
!55 = !DILocation(line: 38, column: 10, scope: !48)
!56 = !DILocation(line: 38, column: 18, scope: !48)
!57 = !DILocation(line: 38, column: 44, scope: !48)
!58 = !DILocation(line: 38, column: 23, scope: !48)
!59 = !DILocation(line: 39, column: 32, scope: !48)
!60 = !DILocation(line: 39, column: 10, scope: !48)
!61 = !DILocation(line: 39, column: 62, scope: !48)
!62 = !DILocation(line: 39, column: 38, scope: !63)
!63 = !DILexicalBlockFile(scope: !48, file: !33, discriminator: 1)
!64 = !DILocation(line: 36, column: 3, scope: !48)
!65 = !DILocation(line: 30, column: 2, scope: !66)
!66 = !DILexicalBlockFile(scope: !32, file: !33, discriminator: 1)
!67 = distinct !{!67, !46}
!68 = !DILocation(line: 41, column: 1, scope: !32)
!69 = distinct !DISubprogram(name: "rdssl_sha1_init", scope: !33, file: !33, line: 44, type: !70, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA_CTX", file: !74, line: 105, baseType: !75)
!74 = !DIFile(filename: "/usr/include/openssl/sha.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SHAstate_st", file: !74, line: 100, size: 768, align: 32, elements: !76)
!76 = !{!77, !79, !80, !81, !82, !83, !84, !85, !89}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "h0", scope: !75, file: !74, line: 101, baseType: !78, size: 32, align: 32)
!78 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "h1", scope: !75, file: !74, line: 101, baseType: !78, size: 32, align: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "h2", scope: !75, file: !74, line: 101, baseType: !78, size: 32, align: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "h3", scope: !75, file: !74, line: 101, baseType: !78, size: 32, align: 32, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "h4", scope: !75, file: !74, line: 101, baseType: !78, size: 32, align: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !75, file: !74, line: 102, baseType: !78, size: 32, align: 32, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !75, file: !74, line: 102, baseType: !78, size: 32, align: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !75, file: !74, line: 103, baseType: !86, size: 512, align: 32, offset: 224)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 512, align: 32, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !75, file: !74, line: 104, baseType: !78, size: 32, align: 32, offset: 736)
!90 = !DILocalVariable(name: "sha1", arg: 1, scope: !69, file: !33, line: 44, type: !72)
!91 = !DILocation(line: 44, column: 27, scope: !69)
!92 = !DILocation(line: 46, column: 12, scope: !69)
!93 = !DILocation(line: 46, column: 2, scope: !69)
!94 = !DILocation(line: 47, column: 1, scope: !69)
!95 = distinct !DISubprogram(name: "rdssl_sha1_update", scope: !33, file: !33, line: 50, type: !96, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !72, !98, !101}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !100, line: 39, baseType: !27)
!100 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !100, line: 43, baseType: !78)
!102 = !DILocalVariable(name: "sha1", arg: 1, scope: !95, file: !33, line: 50, type: !72)
!103 = !DILocation(line: 50, column: 29, scope: !95)
!104 = !DILocalVariable(name: "data", arg: 2, scope: !95, file: !33, line: 50, type: !98)
!105 = !DILocation(line: 50, column: 43, scope: !95)
!106 = !DILocalVariable(name: "len", arg: 3, scope: !95, file: !33, line: 50, type: !101)
!107 = !DILocation(line: 50, column: 56, scope: !95)
!108 = !DILocation(line: 52, column: 14, scope: !95)
!109 = !DILocation(line: 52, column: 20, scope: !95)
!110 = !DILocation(line: 52, column: 26, scope: !95)
!111 = !DILocation(line: 52, column: 2, scope: !95)
!112 = !DILocation(line: 53, column: 1, scope: !95)
!113 = distinct !DISubprogram(name: "rdssl_sha1_final", scope: !33, file: !33, line: 56, type: !114, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !72, !98}
!116 = !DILocalVariable(name: "sha1", arg: 1, scope: !113, file: !33, line: 56, type: !72)
!117 = !DILocation(line: 56, column: 28, scope: !113)
!118 = !DILocalVariable(name: "out_data", arg: 2, scope: !113, file: !33, line: 56, type: !98)
!119 = !DILocation(line: 56, column: 42, scope: !113)
!120 = !DILocation(line: 58, column: 13, scope: !113)
!121 = !DILocation(line: 58, column: 23, scope: !113)
!122 = !DILocation(line: 58, column: 2, scope: !113)
!123 = !DILocation(line: 59, column: 1, scope: !113)
!124 = distinct !DISubprogram(name: "rdssl_md5_init", scope: !33, file: !33, line: 62, type: !125, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX", file: !129, line: 105, baseType: !130)
!129 = !DIFile(filename: "/usr/include/openssl/md5.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MD5state_st", file: !129, line: 100, size: 736, align: 32, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !130, file: !129, line: 101, baseType: !78, size: 32, align: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !130, file: !129, line: 101, baseType: !78, size: 32, align: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !130, file: !129, line: 101, baseType: !78, size: 32, align: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !130, file: !129, line: 101, baseType: !78, size: 32, align: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !130, file: !129, line: 102, baseType: !78, size: 32, align: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !130, file: !129, line: 102, baseType: !78, size: 32, align: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !130, file: !129, line: 103, baseType: !86, size: 512, align: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !130, file: !129, line: 104, baseType: !78, size: 32, align: 32, offset: 704)
!140 = !DILocalVariable(name: "md5", arg: 1, scope: !124, file: !33, line: 62, type: !127)
!141 = !DILocation(line: 62, column: 26, scope: !124)
!142 = !DILocation(line: 64, column: 11, scope: !124)
!143 = !DILocation(line: 64, column: 2, scope: !124)
!144 = !DILocation(line: 65, column: 1, scope: !124)
!145 = distinct !DISubprogram(name: "rdssl_md5_update", scope: !33, file: !33, line: 68, type: !146, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !127, !98, !101}
!148 = !DILocalVariable(name: "md5", arg: 1, scope: !145, file: !33, line: 68, type: !127)
!149 = !DILocation(line: 68, column: 28, scope: !145)
!150 = !DILocalVariable(name: "data", arg: 2, scope: !145, file: !33, line: 68, type: !98)
!151 = !DILocation(line: 68, column: 41, scope: !145)
!152 = !DILocalVariable(name: "len", arg: 3, scope: !145, file: !33, line: 68, type: !101)
!153 = !DILocation(line: 68, column: 54, scope: !145)
!154 = !DILocation(line: 70, column: 13, scope: !145)
!155 = !DILocation(line: 70, column: 18, scope: !145)
!156 = !DILocation(line: 70, column: 24, scope: !145)
!157 = !DILocation(line: 70, column: 2, scope: !145)
!158 = !DILocation(line: 71, column: 1, scope: !145)
!159 = distinct !DISubprogram(name: "rdssl_md5_final", scope: !33, file: !33, line: 74, type: !160, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !127, !98}
!162 = !DILocalVariable(name: "md5", arg: 1, scope: !159, file: !33, line: 74, type: !127)
!163 = !DILocation(line: 74, column: 27, scope: !159)
!164 = !DILocalVariable(name: "out_data", arg: 2, scope: !159, file: !33, line: 74, type: !98)
!165 = !DILocation(line: 74, column: 40, scope: !159)
!166 = !DILocation(line: 76, column: 12, scope: !159)
!167 = !DILocation(line: 76, column: 22, scope: !159)
!168 = !DILocation(line: 76, column: 2, scope: !159)
!169 = !DILocation(line: 77, column: 1, scope: !159)
!170 = distinct !DISubprogram(name: "rdssl_rc4_set_key", scope: !33, file: !33, line: 80, type: !171, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173, !98, !101}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "RC4_KEY", file: !175, line: 76, baseType: !176)
!175 = !DIFile(filename: "/usr/include/openssl/rc4.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc4_key_st", file: !175, line: 73, size: 8256, align: 32, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !176, file: !175, line: 74, baseType: !78, size: 32, align: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !176, file: !175, line: 74, baseType: !78, size: 32, align: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !176, file: !175, line: 75, baseType: !181, size: 8192, align: 32, offset: 64)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 8192, align: 32, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 256)
!184 = !DILocalVariable(name: "rc4", arg: 1, scope: !170, file: !33, line: 80, type: !173)
!185 = !DILocation(line: 80, column: 29, scope: !170)
!186 = !DILocalVariable(name: "key", arg: 2, scope: !170, file: !33, line: 80, type: !98)
!187 = !DILocation(line: 80, column: 42, scope: !170)
!188 = !DILocalVariable(name: "len", arg: 3, scope: !170, file: !33, line: 80, type: !101)
!189 = !DILocation(line: 80, column: 54, scope: !170)
!190 = !DILocation(line: 82, column: 14, scope: !170)
!191 = !DILocation(line: 82, column: 19, scope: !170)
!192 = !DILocation(line: 82, column: 24, scope: !170)
!193 = !DILocation(line: 82, column: 2, scope: !170)
!194 = !DILocation(line: 83, column: 1, scope: !170)
!195 = distinct !DISubprogram(name: "rdssl_rc4_crypt", scope: !33, file: !33, line: 86, type: !196, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !173, !98, !98, !101}
!198 = !DILocalVariable(name: "rc4", arg: 1, scope: !195, file: !33, line: 86, type: !173)
!199 = !DILocation(line: 86, column: 27, scope: !195)
!200 = !DILocalVariable(name: "in_data", arg: 2, scope: !195, file: !33, line: 86, type: !98)
!201 = !DILocation(line: 86, column: 40, scope: !195)
!202 = !DILocalVariable(name: "out_data", arg: 3, scope: !195, file: !33, line: 86, type: !98)
!203 = !DILocation(line: 86, column: 57, scope: !195)
!204 = !DILocalVariable(name: "len", arg: 4, scope: !195, file: !33, line: 86, type: !101)
!205 = !DILocation(line: 86, column: 74, scope: !195)
!206 = !DILocation(line: 88, column: 6, scope: !195)
!207 = !DILocation(line: 88, column: 11, scope: !195)
!208 = !DILocation(line: 88, column: 16, scope: !195)
!209 = !DILocation(line: 88, column: 25, scope: !195)
!210 = !DILocation(line: 88, column: 2, scope: !195)
!211 = !DILocation(line: 89, column: 1, scope: !195)
!212 = distinct !DISubprogram(name: "rdssl_rsa_encrypt", scope: !33, file: !33, line: 106, type: !213, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !98, !98, !23, !101, !98, !98}
!215 = !DILocalVariable(name: "out", arg: 1, scope: !212, file: !33, line: 106, type: !98)
!216 = !DILocation(line: 106, column: 27, scope: !212)
!217 = !DILocalVariable(name: "in", arg: 2, scope: !212, file: !33, line: 106, type: !98)
!218 = !DILocation(line: 106, column: 40, scope: !212)
!219 = !DILocalVariable(name: "len", arg: 3, scope: !212, file: !33, line: 106, type: !23)
!220 = !DILocation(line: 106, column: 48, scope: !212)
!221 = !DILocalVariable(name: "modulus_size", arg: 4, scope: !212, file: !33, line: 106, type: !101)
!222 = !DILocation(line: 106, column: 60, scope: !212)
!223 = !DILocalVariable(name: "modulus", arg: 5, scope: !212, file: !33, line: 106, type: !98)
!224 = !DILocation(line: 106, column: 82, scope: !212)
!225 = !DILocalVariable(name: "exponent", arg: 6, scope: !212, file: !33, line: 107, type: !98)
!226 = !DILocation(line: 107, column: 13, scope: !212)
!227 = !DILocalVariable(name: "ctx", scope: !212, file: !33, line: 109, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !230, line: 121, baseType: !231)
!230 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !230, line: 121, flags: DIFlagFwdDecl)
!232 = !DILocation(line: 109, column: 10, scope: !212)
!233 = !DILocalVariable(name: "mod", scope: !212, file: !33, line: 110, type: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !230, line: 120, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !237, line: 313, size: 192, align: 64, elements: !238)
!237 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!238 = !{!239, !241, !242, !243, !244}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !236, file: !237, line: 314, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !236, file: !237, line: 316, baseType: !23, size: 32, align: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !236, file: !237, line: 318, baseType: !23, size: 32, align: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !236, file: !237, line: 319, baseType: !23, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !237, line: 320, baseType: !23, size: 32, align: 32, offset: 160)
!245 = !DILocation(line: 110, column: 10, scope: !212)
!246 = !DILocalVariable(name: "exp", scope: !212, file: !33, line: 110, type: !234)
!247 = !DILocation(line: 110, column: 16, scope: !212)
!248 = !DILocalVariable(name: "x", scope: !212, file: !33, line: 110, type: !234)
!249 = !DILocation(line: 110, column: 22, scope: !212)
!250 = !DILocalVariable(name: "y", scope: !212, file: !33, line: 110, type: !234)
!251 = !DILocation(line: 110, column: 26, scope: !212)
!252 = !DILocalVariable(name: "inr", scope: !212, file: !33, line: 111, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2048, align: 8, elements: !182)
!254 = !DILocation(line: 111, column: 8, scope: !212)
!255 = !DILocalVariable(name: "outlen", scope: !212, file: !33, line: 112, type: !23)
!256 = !DILocation(line: 112, column: 6, scope: !212)
!257 = !DILocation(line: 114, column: 10, scope: !212)
!258 = !DILocation(line: 114, column: 19, scope: !212)
!259 = !DILocation(line: 114, column: 2, scope: !212)
!260 = !DILocation(line: 115, column: 10, scope: !212)
!261 = !DILocation(line: 115, column: 2, scope: !212)
!262 = !DILocation(line: 116, column: 2, scope: !212)
!263 = !DILocation(line: 116, column: 14, scope: !212)
!264 = !DILocation(line: 116, column: 18, scope: !212)
!265 = !DILocation(line: 117, column: 10, scope: !212)
!266 = !DILocation(line: 117, column: 15, scope: !212)
!267 = !DILocation(line: 117, column: 2, scope: !212)
!268 = !DILocation(line: 119, column: 8, scope: !212)
!269 = !DILocation(line: 119, column: 6, scope: !212)
!270 = !DILocation(line: 120, column: 8, scope: !212)
!271 = !DILocation(line: 120, column: 6, scope: !212)
!272 = !DILocation(line: 121, column: 8, scope: !212)
!273 = !DILocation(line: 121, column: 6, scope: !212)
!274 = !DILocation(line: 122, column: 6, scope: !212)
!275 = !DILocation(line: 122, column: 4, scope: !212)
!276 = !DILocation(line: 123, column: 6, scope: !212)
!277 = !DILocation(line: 123, column: 4, scope: !212)
!278 = !DILocation(line: 125, column: 12, scope: !212)
!279 = !DILocation(line: 125, column: 21, scope: !212)
!280 = !DILocation(line: 125, column: 35, scope: !212)
!281 = !DILocation(line: 125, column: 2, scope: !212)
!282 = !DILocation(line: 126, column: 12, scope: !212)
!283 = !DILocation(line: 126, column: 25, scope: !212)
!284 = !DILocation(line: 126, column: 2, scope: !212)
!285 = !DILocation(line: 127, column: 12, scope: !212)
!286 = !DILocation(line: 127, column: 17, scope: !212)
!287 = !DILocation(line: 127, column: 22, scope: !212)
!288 = !DILocation(line: 127, column: 2, scope: !212)
!289 = !DILocation(line: 128, column: 13, scope: !212)
!290 = !DILocation(line: 128, column: 16, scope: !212)
!291 = !DILocation(line: 128, column: 19, scope: !212)
!292 = !DILocation(line: 128, column: 24, scope: !212)
!293 = !DILocation(line: 128, column: 29, scope: !212)
!294 = !DILocation(line: 128, column: 2, scope: !212)
!295 = !DILocation(line: 129, column: 21, scope: !212)
!296 = !DILocation(line: 129, column: 24, scope: !212)
!297 = !DILocation(line: 129, column: 11, scope: !212)
!298 = !DILocation(line: 129, column: 9, scope: !212)
!299 = !DILocation(line: 130, column: 10, scope: !212)
!300 = !DILocation(line: 130, column: 15, scope: !212)
!301 = !DILocation(line: 130, column: 2, scope: !212)
!302 = !DILocation(line: 131, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !212, file: !33, line: 131, column: 6)
!304 = !DILocation(line: 131, column: 21, scope: !303)
!305 = !DILocation(line: 131, column: 13, scope: !303)
!306 = !DILocation(line: 131, column: 6, scope: !212)
!307 = !DILocation(line: 132, column: 10, scope: !303)
!308 = !DILocation(line: 132, column: 16, scope: !303)
!309 = !DILocation(line: 132, column: 14, scope: !303)
!310 = !DILocation(line: 132, column: 27, scope: !303)
!311 = !DILocation(line: 132, column: 42, scope: !303)
!312 = !DILocation(line: 132, column: 40, scope: !303)
!313 = !DILocation(line: 132, column: 3, scope: !303)
!314 = !DILocation(line: 134, column: 10, scope: !212)
!315 = !DILocation(line: 134, column: 2, scope: !212)
!316 = !DILocation(line: 135, column: 16, scope: !212)
!317 = !DILocation(line: 135, column: 2, scope: !212)
!318 = !DILocation(line: 136, column: 10, scope: !212)
!319 = !DILocation(line: 136, column: 2, scope: !212)
!320 = !DILocation(line: 137, column: 10, scope: !212)
!321 = !DILocation(line: 137, column: 2, scope: !212)
!322 = !DILocation(line: 138, column: 14, scope: !212)
!323 = !DILocation(line: 138, column: 2, scope: !212)
!324 = !DILocation(line: 139, column: 1, scope: !212)
!325 = distinct !DISubprogram(name: "reverse", scope: !33, file: !33, line: 92, type: !326, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !98, !23}
!328 = !DILocalVariable(name: "p", arg: 1, scope: !325, file: !33, line: 92, type: !98)
!329 = !DILocation(line: 92, column: 17, scope: !325)
!330 = !DILocalVariable(name: "len", arg: 2, scope: !325, file: !33, line: 92, type: !23)
!331 = !DILocation(line: 92, column: 24, scope: !325)
!332 = !DILocalVariable(name: "i", scope: !325, file: !33, line: 94, type: !23)
!333 = !DILocation(line: 94, column: 6, scope: !325)
!334 = !DILocalVariable(name: "j", scope: !325, file: !33, line: 94, type: !23)
!335 = !DILocation(line: 94, column: 9, scope: !325)
!336 = !DILocalVariable(name: "temp", scope: !325, file: !33, line: 95, type: !99)
!337 = !DILocation(line: 95, column: 8, scope: !325)
!338 = !DILocation(line: 97, column: 9, scope: !339)
!339 = distinct !DILexicalBlock(scope: !325, file: !33, line: 97, column: 2)
!340 = !DILocation(line: 97, column: 18, scope: !339)
!341 = !DILocation(line: 97, column: 22, scope: !339)
!342 = !DILocation(line: 97, column: 16, scope: !339)
!343 = !DILocation(line: 97, column: 7, scope: !339)
!344 = !DILocation(line: 97, column: 27, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !33, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !339, file: !33, line: 97, column: 2)
!347 = !DILocation(line: 97, column: 31, scope: !345)
!348 = !DILocation(line: 97, column: 29, scope: !345)
!349 = !DILocation(line: 97, column: 2, scope: !345)
!350 = !DILocation(line: 99, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !33, line: 98, column: 2)
!352 = !DILocation(line: 99, column: 10, scope: !351)
!353 = !DILocation(line: 99, column: 8, scope: !351)
!354 = !DILocation(line: 100, column: 12, scope: !351)
!355 = !DILocation(line: 100, column: 10, scope: !351)
!356 = !DILocation(line: 100, column: 5, scope: !351)
!357 = !DILocation(line: 100, column: 3, scope: !351)
!358 = !DILocation(line: 100, column: 8, scope: !351)
!359 = !DILocation(line: 101, column: 10, scope: !351)
!360 = !DILocation(line: 101, column: 5, scope: !351)
!361 = !DILocation(line: 101, column: 3, scope: !351)
!362 = !DILocation(line: 101, column: 8, scope: !351)
!363 = !DILocation(line: 102, column: 2, scope: !351)
!364 = !DILocation(line: 97, column: 35, scope: !365)
!365 = !DILexicalBlockFile(scope: !346, file: !33, discriminator: 2)
!366 = !DILocation(line: 97, column: 40, scope: !365)
!367 = !DILocation(line: 97, column: 2, scope: !365)
!368 = distinct !{!368, !369}
!369 = !DILocation(line: 97, column: 2, scope: !325)
!370 = !DILocation(line: 103, column: 1, scope: !325)
!371 = distinct !DISubprogram(name: "rdssl_cert_read", scope: !33, file: !33, line: 143, type: !372, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !98, !101}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !230, line: 154, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !377, line: 270, size: 1472, align: 64, elements: !378)
!377 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!378 = !{!379, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !842, !846, !851, !853, !864, !868}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !376, file: !377, line: 271, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !377, line: 254, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !377, line: 242, size: 832, align: 64, elements: !383)
!383 = !{!384, !396, !397, !476, !515, !524, !525, !801, !802, !803, !808}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !382, file: !377, line: 243, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !230, line: 83, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !388, line: 247, size: 192, align: 64, elements: !389)
!388 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!389 = !{!390, !391, !392, !394}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !387, file: !388, line: 248, baseType: !23, size: 32, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !388, line: 249, baseType: !23, size: 32, align: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !387, file: !388, line: 250, baseType: !393, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !388, line: 256, baseType: !395, size: 64, align: 64, offset: 128)
!395 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !382, file: !377, line: 244, baseType: !385, size: 64, align: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !382, file: !377, line: 245, baseType: !398, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !230, line: 155, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !377, line: 143, size: 128, align: 64, elements: !401)
!401 = !{!402, !413}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !400, file: !377, line: 144, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !230, line: 103, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !388, line: 218, size: 320, align: 64, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !405, file: !388, line: 219, baseType: !36, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !405, file: !388, line: 219, baseType: !36, size: 64, align: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !405, file: !388, line: 220, baseType: !23, size: 32, align: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !405, file: !388, line: 221, baseType: !23, size: 32, align: 32, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !405, file: !388, line: 222, baseType: !25, size: 64, align: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !388, line: 223, baseType: !23, size: 32, align: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !400, file: !377, line: 145, baseType: !414, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !388, line: 561, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !388, line: 532, size: 128, align: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !388, line: 533, baseType: !23, size: 32, align: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !416, file: !388, line: 560, baseType: !420, size: 64, align: 64, offset: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !388, line: 534, size: 64, align: 64, elements: !421)
!421 = !{!422, !424, !426, !429, !430, !431, !434, !437, !440, !443, !446, !449, !452, !455, !458, !461, !464, !467, !470, !471, !472}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !420, file: !388, line: 535, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !420, file: !388, line: 536, baseType: !425, size: 32, align: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !230, line: 99, baseType: !23)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !420, file: !388, line: 537, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !230, line: 98, baseType: !387)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !420, file: !388, line: 538, baseType: !403, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !420, file: !388, line: 539, baseType: !385, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !420, file: !388, line: 540, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !230, line: 84, baseType: !387)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !420, file: !388, line: 541, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !230, line: 85, baseType: !387)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !420, file: !388, line: 542, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !230, line: 86, baseType: !387)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !420, file: !388, line: 543, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !230, line: 87, baseType: !387)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !420, file: !388, line: 544, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !230, line: 88, baseType: !387)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !420, file: !388, line: 545, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !230, line: 89, baseType: !387)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !420, file: !388, line: 546, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !230, line: 90, baseType: !387)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !420, file: !388, line: 547, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !230, line: 92, baseType: !387)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !420, file: !388, line: 548, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !230, line: 91, baseType: !387)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !420, file: !388, line: 549, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !230, line: 93, baseType: !387)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !420, file: !388, line: 550, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !230, line: 95, baseType: !387)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !420, file: !388, line: 551, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !230, line: 96, baseType: !387)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !420, file: !388, line: 552, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !230, line: 97, baseType: !387)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !420, file: !388, line: 557, baseType: !427, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !388, line: 558, baseType: !427, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !420, file: !388, line: 559, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !388, line: 307, baseType: !475)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !388, line: 307, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !382, file: !377, line: 246, baseType: !477, size: 64, align: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !230, line: 159, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !377, line: 179, size: 320, align: 64, elements: !480)
!480 = !{!481, !501, !502, !513, !514}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !479, file: !377, line: 180, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !377, line: 175, size: 256, align: 64, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !483, file: !377, line: 175, baseType: !486, size: 256, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !487, line: 72, baseType: !488)
!487 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !487, line: 66, size: 256, align: 64, elements: !489)
!489 = !{!490, !491, !493, !494, !495}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !488, file: !487, line: 67, baseType: !23, size: 32, align: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !488, file: !487, line: 68, baseType: !492, size: 64, align: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !488, file: !487, line: 69, baseType: !23, size: 32, align: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !488, file: !487, line: 70, baseType: !23, size: 32, align: 32, offset: 160)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !488, file: !487, line: 71, baseType: !496, size: 64, align: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!23, !499, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !479, file: !377, line: 181, baseType: !23, size: 32, align: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !479, file: !377, line: 183, baseType: !503, size: 64, align: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !230, line: 127, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !506, line: 77, size: 192, align: 64, elements: !507)
!506 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!507 = !{!508, !511, !512}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !505, file: !506, line: 78, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !510, line: 216, baseType: !44)
!510 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!511 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !505, file: !506, line: 79, baseType: !423, size: 64, align: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !505, file: !506, line: 80, baseType: !509, size: 64, align: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !479, file: !377, line: 188, baseType: !393, size: 64, align: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !479, file: !377, line: 189, baseType: !23, size: 32, align: 32, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !382, file: !377, line: 247, baseType: !516, size: 64, align: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !377, line: 155, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !377, line: 152, size: 128, align: 64, elements: !519)
!519 = !{!520, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !518, file: !377, line: 153, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !230, line: 94, baseType: !387)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !518, file: !377, line: 154, baseType: !521, size: 64, align: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !382, file: !377, line: 248, baseType: !477, size: 64, align: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !382, file: !377, line: 249, baseType: !526, size: 64, align: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !230, line: 160, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !377, line: 157, size: 192, align: 64, elements: !529)
!529 = !{!530, !531, !532}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !528, file: !377, line: 158, baseType: !398, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !528, file: !377, line: 159, baseType: !435, size: 64, align: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !528, file: !377, line: 160, baseType: !533, size: 64, align: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !230, line: 133, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !536, line: 129, size: 448, align: 64, elements: !537)
!536 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!537 = !{!538, !539, !540, !541, !546, !550, !795, !796}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !536, line: 130, baseType: !23, size: 32, align: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !535, file: !536, line: 131, baseType: !23, size: 32, align: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !535, file: !536, line: 132, baseType: !23, size: 32, align: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !535, file: !536, line: 133, baseType: !542, size: 64, align: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !230, line: 135, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !230, line: 135, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !535, file: !536, line: 134, baseType: !547, size: 64, align: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !230, line: 177, baseType: !549)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !230, line: 177, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !535, file: !536, line: 149, baseType: !551, size: 64, align: 64, offset: 256)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !536, line: 135, size: 64, align: 64, elements: !552)
!552 = !{!553, !554, !670, !739, !792}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !551, file: !536, line: 136, baseType: !423, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !551, file: !536, line: 138, baseType: !555, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !557, line: 132, size: 1344, align: 64, elements: !558)
!557 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!558 = !{!559, !560, !561, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !659, !660, !661, !662, !663, !664, !665, !669}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !556, file: !557, line: 137, baseType: !23, size: 32, align: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !556, file: !557, line: 138, baseType: !395, size: 64, align: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !556, file: !557, line: 139, baseType: !562, size: 64, align: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !230, line: 147, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !557, line: 85, size: 896, align: 64, elements: !566)
!566 = !{!567, !568, !574, !575, !576, !577, !583, !600, !604, !605, !606, !607, !614, !618}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !557, line: 86, baseType: !36, size: 64, align: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !565, file: !557, line: 87, baseType: !569, size: 64, align: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!23, !23, !25, !393, !572, !23}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !230, line: 146, baseType: !556)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !565, file: !557, line: 89, baseType: !569, size: 64, align: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !565, file: !557, line: 91, baseType: !569, size: 64, align: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !565, file: !557, line: 93, baseType: !569, size: 64, align: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !565, file: !557, line: 96, baseType: !578, size: 64, align: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!23, !234, !581, !572, !228}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !565, file: !557, line: 98, baseType: !584, size: 64, align: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!23, !234, !581, !581, !581, !228, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !230, line: 123, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !237, line: 324, size: 832, align: 64, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !599}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !589, file: !237, line: 325, baseType: !23, size: 32, align: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !589, file: !237, line: 326, baseType: !235, size: 192, align: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !589, file: !237, line: 327, baseType: !235, size: 192, align: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !589, file: !237, line: 328, baseType: !235, size: 192, align: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !589, file: !237, line: 330, baseType: !596, size: 128, align: 64, offset: 640)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, align: 64, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 2)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !237, line: 333, baseType: !23, size: 32, align: 32, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !565, file: !557, line: 101, baseType: !601, size: 64, align: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!23, !572}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !565, file: !557, line: 103, baseType: !601, size: 64, align: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !557, line: 105, baseType: !23, size: 32, align: 32, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !565, file: !557, line: 107, baseType: !423, size: 64, align: 64, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !565, file: !557, line: 116, baseType: !608, size: 64, align: 64, offset: 704)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!23, !23, !25, !78, !393, !611, !612}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !565, file: !557, line: 120, baseType: !615, size: 64, align: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!23, !23, !25, !78, !25, !78, !612}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !565, file: !557, line: 129, baseType: !619, size: 64, align: 64, offset: 832)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64, align: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!23, !572, !23, !234, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !230, line: 125, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !237, line: 349, size: 192, align: 64, elements: !625)
!625 = !{!626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !624, file: !237, line: 350, baseType: !78, size: 32, align: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !624, file: !237, line: 351, baseType: !28, size: 64, align: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !624, file: !237, line: 357, baseType: !629, size: 64, align: 64, offset: 128)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !624, file: !237, line: 352, size: 64, align: 64, elements: !630)
!630 = !{!631, !635}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !629, file: !237, line: 354, baseType: !632, size: 64, align: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !23, !23, !28}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !629, file: !237, line: 356, baseType: !636, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!23, !23, !23, !622}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !556, file: !557, line: 141, baseType: !547, size: 64, align: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !556, file: !557, line: 142, baseType: !234, size: 64, align: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !556, file: !557, line: 143, baseType: !234, size: 64, align: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !556, file: !557, line: 144, baseType: !234, size: 64, align: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !556, file: !557, line: 145, baseType: !234, size: 64, align: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !556, file: !557, line: 146, baseType: !234, size: 64, align: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !556, file: !557, line: 147, baseType: !234, size: 64, align: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !556, file: !557, line: 148, baseType: !234, size: 64, align: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !556, file: !557, line: 149, baseType: !234, size: 64, align: 64, offset: 704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !556, file: !557, line: 151, baseType: !649, size: 128, align: 64, offset: 768)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !230, line: 195, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !651, line: 292, size: 128, align: 64, elements: !652)
!651 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!652 = !{!653, !658}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !650, file: !651, line: 293, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64, align: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !651, line: 297, size: 256, align: 64, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !655, file: !651, line: 297, baseType: !486, size: 256, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !650, file: !651, line: 295, baseType: !23, size: 32, align: 32, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !556, file: !557, line: 152, baseType: !23, size: 32, align: 32, offset: 896)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !557, line: 153, baseType: !23, size: 32, align: 32, offset: 928)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !556, file: !557, line: 155, baseType: !587, size: 64, align: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !556, file: !557, line: 156, baseType: !587, size: 64, align: 64, offset: 1024)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !556, file: !557, line: 157, baseType: !587, size: 64, align: 64, offset: 1088)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !556, file: !557, line: 162, baseType: !423, size: 64, align: 64, offset: 1152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !556, file: !557, line: 163, baseType: !666, size: 64, align: 64, offset: 1216)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !230, line: 122, baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !230, line: 122, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !556, file: !557, line: 164, baseType: !666, size: 64, align: 64, offset: 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !551, file: !536, line: 141, baseType: !671, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64, align: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !673, line: 155, size: 1088, align: 64, elements: !674)
!673 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !738}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !672, file: !673, line: 160, baseType: !23, size: 32, align: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !672, file: !673, line: 161, baseType: !395, size: 64, align: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !672, file: !673, line: 162, baseType: !23, size: 32, align: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !672, file: !673, line: 163, baseType: !234, size: 64, align: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !672, file: !673, line: 164, baseType: !234, size: 64, align: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !672, file: !673, line: 165, baseType: !234, size: 64, align: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !672, file: !673, line: 166, baseType: !234, size: 64, align: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !672, file: !673, line: 167, baseType: !234, size: 64, align: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !672, file: !673, line: 168, baseType: !234, size: 64, align: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !672, file: !673, line: 169, baseType: !234, size: 64, align: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !673, line: 170, baseType: !23, size: 32, align: 32, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !672, file: !673, line: 172, baseType: !587, size: 64, align: 64, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !672, file: !673, line: 173, baseType: !23, size: 32, align: 32, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !672, file: !673, line: 174, baseType: !649, size: 128, align: 64, offset: 832)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !672, file: !673, line: 175, baseType: !690, size: 64, align: 64, offset: 960)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !230, line: 144, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !673, line: 129, size: 768, align: 64, elements: !694)
!694 = !{!695, !696, !708, !713, !717, !721, !725, !729, !730, !731, !732, !737}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !693, file: !673, line: 130, baseType: !36, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !693, file: !673, line: 131, baseType: !697, size: 64, align: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!700, !25, !23, !706}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !673, line: 127, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !673, line: 124, size: 128, align: 64, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !702, file: !673, line: 125, baseType: !234, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !702, file: !673, line: 126, baseType: !234, size: 64, align: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !230, line: 143, baseType: !672)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !693, file: !673, line: 132, baseType: !709, size: 64, align: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!23, !706, !228, !712, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !693, file: !673, line: 134, baseType: !714, size: 64, align: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!23, !25, !23, !700, !706}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !693, file: !673, line: 136, baseType: !718, size: 64, align: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!23, !706, !234, !234, !234, !234, !234, !234, !228, !587}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !693, file: !673, line: 140, baseType: !722, size: 64, align: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!23, !706, !234, !234, !581, !581, !228, !587}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !693, file: !673, line: 142, baseType: !726, size: 64, align: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!23, !706}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !693, file: !673, line: 143, baseType: !726, size: 64, align: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !673, line: 144, baseType: !23, size: 32, align: 32, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !693, file: !673, line: 145, baseType: !423, size: 64, align: 64, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !693, file: !673, line: 147, baseType: !733, size: 64, align: 64, offset: 640)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64, align: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!23, !706, !23, !25, !23, !736, !240, !622}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !693, file: !673, line: 152, baseType: !726, size: 64, align: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !672, file: !673, line: 177, baseType: !547, size: 64, align: 64, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !551, file: !536, line: 144, baseType: !740, size: 64, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64, align: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !742, line: 135, size: 1152, align: 64, elements: !743)
!742 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !791}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !741, file: !742, line: 140, baseType: !23, size: 32, align: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !741, file: !742, line: 141, baseType: !23, size: 32, align: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !741, file: !742, line: 142, baseType: !234, size: 64, align: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !741, file: !742, line: 143, baseType: !234, size: 64, align: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !741, file: !742, line: 144, baseType: !395, size: 64, align: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !741, file: !742, line: 145, baseType: !234, size: 64, align: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !741, file: !742, line: 146, baseType: !234, size: 64, align: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !742, line: 147, baseType: !23, size: 32, align: 32, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !741, file: !742, line: 148, baseType: !587, size: 64, align: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !741, file: !742, line: 150, baseType: !234, size: 64, align: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !741, file: !742, line: 151, baseType: !234, size: 64, align: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !741, file: !742, line: 152, baseType: !393, size: 64, align: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !741, file: !742, line: 153, baseType: !23, size: 32, align: 32, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !741, file: !742, line: 154, baseType: !234, size: 64, align: 64, offset: 768)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !741, file: !742, line: 155, baseType: !23, size: 32, align: 32, offset: 832)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !741, file: !742, line: 156, baseType: !649, size: 128, align: 64, offset: 896)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !741, file: !742, line: 157, baseType: !761, size: 64, align: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64, align: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !230, line: 141, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !742, line: 117, size: 576, align: 64, elements: !765)
!765 = !{!766, !767, !773, !777, !783, !784, !785, !786, !787}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !764, file: !742, line: 118, baseType: !36, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !764, file: !742, line: 120, baseType: !768, size: 64, align: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64, align: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!23, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !230, line: 140, baseType: !741)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !764, file: !742, line: 121, baseType: !774, size: 64, align: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64, align: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!23, !393, !581, !771}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !764, file: !742, line: 123, baseType: !778, size: 64, align: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64, align: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!23, !781, !234, !581, !581, !581, !228, !587}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !764, file: !742, line: 126, baseType: !768, size: 64, align: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !764, file: !742, line: 127, baseType: !768, size: 64, align: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !742, line: 128, baseType: !23, size: 32, align: 32, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !764, file: !742, line: 129, baseType: !423, size: 64, align: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !764, file: !742, line: 131, baseType: !788, size: 64, align: 64, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64, align: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!23, !771, !23, !23, !622}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !741, file: !742, line: 158, baseType: !547, size: 64, align: 64, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !551, file: !536, line: 147, baseType: !793, size: 64, align: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64, align: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !536, line: 147, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !535, file: !536, line: 150, baseType: !23, size: 32, align: 32, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !535, file: !536, line: 151, baseType: !797, size: 64, align: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64, align: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !377, line: 223, size: 256, align: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !798, file: !377, line: 223, baseType: !486, size: 256, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !382, file: !377, line: 250, baseType: !435, size: 64, align: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !382, file: !377, line: 251, baseType: !435, size: 64, align: 64, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !382, file: !377, line: 252, baseType: !804, size: 64, align: 64, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64, align: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !377, line: 204, size: 256, align: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !805, file: !377, line: 204, baseType: !486, size: 256, align: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !382, file: !377, line: 253, baseType: !809, size: 192, align: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !388, line: 269, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !388, line: 265, size: 192, align: 64, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !810, file: !388, line: 266, baseType: !393, size: 64, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !810, file: !388, line: 267, baseType: !395, size: 64, align: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !810, file: !388, line: 268, baseType: !23, size: 32, align: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !376, file: !377, line: 272, baseType: !398, size: 64, align: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !376, file: !377, line: 273, baseType: !435, size: 64, align: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !376, file: !377, line: 274, baseType: !23, size: 32, align: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !376, file: !377, line: 275, baseType: !23, size: 32, align: 32, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !377, line: 276, baseType: !423, size: 64, align: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !376, file: !377, line: 277, baseType: !649, size: 128, align: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !376, file: !377, line: 279, baseType: !395, size: 64, align: 64, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !376, file: !377, line: 280, baseType: !395, size: 64, align: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !376, file: !377, line: 281, baseType: !44, size: 64, align: 64, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !376, file: !377, line: 282, baseType: !44, size: 64, align: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !376, file: !377, line: 283, baseType: !44, size: 64, align: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !376, file: !377, line: 284, baseType: !44, size: 64, align: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !376, file: !377, line: 285, baseType: !438, size: 64, align: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !376, file: !377, line: 286, baseType: !829, size: 64, align: 64, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64, align: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !230, line: 186, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !832, line: 262, size: 192, align: 64, elements: !833)
!832 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!833 = !{!834, !835, !841}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !831, file: !832, line: 263, baseType: !438, size: 64, align: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !831, file: !832, line: 264, baseType: !836, size: 64, align: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !832, line: 209, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !832, line: 220, size: 256, align: 64, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !838, file: !832, line: 220, baseType: !486, size: 256, align: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !831, file: !832, line: 265, baseType: !385, size: 64, align: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !376, file: !377, line: 287, baseType: !843, size: 64, align: 64, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64, align: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !230, line: 184, baseType: !845)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !230, line: 184, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !376, file: !377, line: 288, baseType: !847, size: 64, align: 64, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !832, line: 259, size: 256, align: 64, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !848, file: !832, line: 259, baseType: !486, size: 256, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !376, file: !377, line: 289, baseType: !852, size: 64, align: 64, offset: 1088)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !376, file: !377, line: 290, baseType: !854, size: 64, align: 64, offset: 1152)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !230, line: 189, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !832, line: 332, size: 128, align: 64, elements: !857)
!857 = !{!858, !863}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !856, file: !832, line: 333, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64, align: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !832, line: 330, size: 256, align: 64, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !860, file: !832, line: 330, baseType: !486, size: 256, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !856, file: !832, line: 334, baseType: !859, size: 64, align: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !376, file: !377, line: 296, baseType: !865, size: 160, align: 8, offset: 1216)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, align: 8, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 20)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !376, file: !377, line: 298, baseType: !869, size: 64, align: 64, offset: 1408)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !377, line: 268, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !377, line: 262, size: 320, align: 64, elements: !872)
!872 = !{!873, !878, !879, !880, !881}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !871, file: !377, line: 263, baseType: !874, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, align: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !388, line: 801, size: 256, align: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !875, file: !388, line: 801, baseType: !486, size: 256, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !871, file: !377, line: 264, baseType: !874, size: 64, align: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !871, file: !377, line: 265, baseType: !468, size: 64, align: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !871, file: !377, line: 266, baseType: !438, size: 64, align: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !871, file: !377, line: 267, baseType: !882, size: 64, align: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64, align: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !388, line: 170, size: 256, align: 64, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !883, file: !388, line: 170, baseType: !486, size: 256, align: 64)
!886 = !DILocalVariable(name: "data", arg: 1, scope: !371, file: !33, line: 143, type: !98)
!887 = !DILocation(line: 143, column: 25, scope: !371)
!888 = !DILocalVariable(name: "len", arg: 2, scope: !371, file: !33, line: 143, type: !101)
!889 = !DILocation(line: 143, column: 38, scope: !371)
!890 = !DILocation(line: 146, column: 55, scope: !371)
!891 = !DILocation(line: 146, column: 9, scope: !371)
!892 = !DILocation(line: 146, column: 2, scope: !371)
!893 = distinct !DISubprogram(name: "rdssl_cert_free", scope: !33, file: !33, line: 150, type: !894, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !374}
!896 = !DILocalVariable(name: "cert", arg: 1, scope: !893, file: !33, line: 150, type: !374)
!897 = !DILocation(line: 150, column: 24, scope: !893)
!898 = !DILocation(line: 152, column: 12, scope: !893)
!899 = !DILocation(line: 152, column: 2, scope: !893)
!900 = !DILocation(line: 153, column: 1, scope: !893)
!901 = distinct !DISubprogram(name: "rdssl_cert_to_rkey", scope: !33, file: !33, line: 157, type: !902, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!902 = !DISubroutineType(types: !903)
!903 = !{!572, !374, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!905 = !DILocalVariable(name: "cert", arg: 1, scope: !901, file: !33, line: 157, type: !374)
!906 = !DILocation(line: 157, column: 27, scope: !901)
!907 = !DILocalVariable(name: "key_len", arg: 2, scope: !901, file: !33, line: 157, type: !904)
!908 = !DILocation(line: 157, column: 42, scope: !901)
!909 = !DILocalVariable(name: "epk", scope: !901, file: !33, line: 159, type: !533)
!910 = !DILocation(line: 159, column: 12, scope: !901)
!911 = !DILocalVariable(name: "lkey", scope: !901, file: !33, line: 160, type: !572)
!912 = !DILocation(line: 160, column: 7, scope: !901)
!913 = !DILocalVariable(name: "nid", scope: !901, file: !33, line: 161, type: !23)
!914 = !DILocation(line: 161, column: 6, scope: !901)
!915 = !DILocalVariable(name: "ret", scope: !901, file: !33, line: 162, type: !23)
!916 = !DILocation(line: 162, column: 6, scope: !901)
!917 = !DILocalVariable(name: "key", scope: !901, file: !33, line: 176, type: !526)
!918 = !DILocation(line: 176, column: 15, scope: !901)
!919 = !DILocalVariable(name: "algor", scope: !901, file: !33, line: 177, type: !398)
!920 = !DILocation(line: 177, column: 14, scope: !901)
!921 = !DILocation(line: 179, column: 7, scope: !901)
!922 = !DILocation(line: 179, column: 10, scope: !901)
!923 = !DILocation(line: 179, column: 21, scope: !901)
!924 = !DILocation(line: 179, column: 6, scope: !901)
!925 = !DILocation(line: 180, column: 6, scope: !926)
!926 = distinct !DILexicalBlock(scope: !901, file: !33, line: 180, column: 6)
!927 = !DILocation(line: 180, column: 10, scope: !926)
!928 = !DILocation(line: 180, column: 6, scope: !901)
!929 = !DILocation(line: 182, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !33, line: 181, column: 2)
!931 = !DILocation(line: 184, column: 3, scope: !930)
!932 = !DILocation(line: 186, column: 3, scope: !930)
!933 = !DILocation(line: 189, column: 53, scope: !901)
!934 = !DILocation(line: 189, column: 8, scope: !901)
!935 = !DILocation(line: 189, column: 6, scope: !901)
!936 = !DILocation(line: 190, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !901, file: !33, line: 190, column: 6)
!938 = !DILocation(line: 190, column: 10, scope: !937)
!939 = !DILocation(line: 190, column: 6, scope: !901)
!940 = !DILocation(line: 192, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !33, line: 191, column: 2)
!942 = !DILocation(line: 194, column: 3, scope: !941)
!943 = !DILocation(line: 196, column: 3, scope: !941)
!944 = !DILocation(line: 199, column: 20, scope: !901)
!945 = !DILocation(line: 199, column: 27, scope: !901)
!946 = !DILocation(line: 199, column: 8, scope: !901)
!947 = !DILocation(line: 199, column: 6, scope: !901)
!948 = !DILocation(line: 201, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !901, file: !33, line: 201, column: 6)
!950 = !DILocation(line: 201, column: 11, scope: !949)
!951 = !DILocation(line: 201, column: 39, scope: !949)
!952 = !DILocation(line: 201, column: 43, scope: !953)
!953 = !DILexicalBlockFile(scope: !949, file: !33, discriminator: 1)
!954 = !DILocation(line: 201, column: 47, scope: !953)
!955 = !DILocation(line: 201, column: 6, scope: !953)
!956 = !DILocation(line: 204, column: 3, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !33, line: 202, column: 2)
!958 = !DILocation(line: 206, column: 26, scope: !957)
!959 = !DILocation(line: 206, column: 31, scope: !957)
!960 = !DILocation(line: 206, column: 3, scope: !961)
!961 = !DILexicalBlockFile(scope: !957, file: !33, discriminator: 1)
!962 = !DILocation(line: 232, column: 2, scope: !957)
!963 = !DILocation(line: 234, column: 24, scope: !901)
!964 = !DILocation(line: 234, column: 8, scope: !901)
!965 = !DILocation(line: 234, column: 6, scope: !901)
!966 = !DILocation(line: 235, column: 13, scope: !967)
!967 = distinct !DILexicalBlock(scope: !901, file: !33, line: 235, column: 5)
!968 = !DILocation(line: 235, column: 10, scope: !967)
!969 = !DILocation(line: 235, column: 5, scope: !901)
!970 = !DILocation(line: 237, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !33, line: 236, column: 2)
!972 = !DILocation(line: 239, column: 3, scope: !971)
!973 = !DILocation(line: 241, column: 3, scope: !971)
!974 = !DILocation(line: 244, column: 44, scope: !901)
!975 = !DILocation(line: 244, column: 26, scope: !901)
!976 = !DILocation(line: 244, column: 9, scope: !977)
!977 = !DILexicalBlockFile(scope: !901, file: !33, discriminator: 1)
!978 = !DILocation(line: 244, column: 7, scope: !901)
!979 = !DILocation(line: 245, column: 16, scope: !901)
!980 = !DILocation(line: 245, column: 2, scope: !901)
!981 = !DILocation(line: 246, column: 22, scope: !901)
!982 = !DILocation(line: 246, column: 13, scope: !901)
!983 = !DILocation(line: 246, column: 3, scope: !901)
!984 = !DILocation(line: 246, column: 11, scope: !901)
!985 = !DILocation(line: 247, column: 9, scope: !901)
!986 = !DILocation(line: 247, column: 2, scope: !901)
!987 = !DILocation(line: 248, column: 1, scope: !901)
!988 = distinct !DISubprogram(name: "rdssl_certs_ok", scope: !33, file: !33, line: 252, type: !989, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!989 = !DISubroutineType(types: !990)
!990 = !{!991, !374, !374}
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !100, line: 28, baseType: !23)
!992 = !DILocalVariable(name: "server_cert", arg: 1, scope: !988, file: !33, line: 252, type: !374)
!993 = !DILocation(line: 252, column: 23, scope: !988)
!994 = !DILocalVariable(name: "cacert", arg: 2, scope: !988, file: !33, line: 252, type: !374)
!995 = !DILocation(line: 252, column: 43, scope: !988)
!996 = !DILocation(line: 254, column: 9, scope: !988)
!997 = !DILocation(line: 255, column: 9, scope: !988)
!998 = !DILocation(line: 265, column: 2, scope: !988)
!999 = distinct !DISubprogram(name: "rdssl_cert_print_fp", scope: !33, file: !33, line: 269, type: !1000, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!23, !1002, !374}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1004, line: 48, baseType: !1005)
!1004 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1006, line: 241, size: 1728, align: 64, elements: !1007)
!1006 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1028, !1029, !1030, !1031, !1034, !1036, !1038, !1042, !1045, !1047, !1048, !1049, !1050, !1051, !1052, !1053}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1005, file: !1006, line: 242, baseType: !23, size: 32, align: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1005, file: !1006, line: 247, baseType: !423, size: 64, align: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1005, file: !1006, line: 248, baseType: !423, size: 64, align: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1005, file: !1006, line: 249, baseType: !423, size: 64, align: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1005, file: !1006, line: 250, baseType: !423, size: 64, align: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1005, file: !1006, line: 251, baseType: !423, size: 64, align: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1005, file: !1006, line: 252, baseType: !423, size: 64, align: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1005, file: !1006, line: 253, baseType: !423, size: 64, align: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1005, file: !1006, line: 254, baseType: !423, size: 64, align: 64, offset: 512)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1005, file: !1006, line: 256, baseType: !423, size: 64, align: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1005, file: !1006, line: 257, baseType: !423, size: 64, align: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1005, file: !1006, line: 258, baseType: !423, size: 64, align: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1005, file: !1006, line: 260, baseType: !1021, size: 64, align: 64, offset: 768)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64, align: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1006, line: 156, size: 192, align: 64, elements: !1023)
!1023 = !{!1024, !1025, !1027}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1022, file: !1006, line: 157, baseType: !1021, size: 64, align: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1022, file: !1006, line: 158, baseType: !1026, size: 64, align: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1022, file: !1006, line: 162, baseType: !23, size: 32, align: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1005, file: !1006, line: 262, baseType: !1026, size: 64, align: 64, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1005, file: !1006, line: 264, baseType: !23, size: 32, align: 32, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1005, file: !1006, line: 268, baseType: !23, size: 32, align: 32, offset: 928)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1005, file: !1006, line: 270, baseType: !1032, size: 64, align: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1033, line: 131, baseType: !395)
!1033 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1005, file: !1006, line: 274, baseType: !1035, size: 16, align: 16, offset: 1024)
!1035 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1005, file: !1006, line: 275, baseType: !1037, size: 8, align: 8, offset: 1040)
!1037 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1005, file: !1006, line: 276, baseType: !1039, size: 8, align: 8, offset: 1048)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, align: 8, elements: !1040)
!1040 = !{!1041}
!1041 = !DISubrange(count: 1)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1005, file: !1006, line: 280, baseType: !1043, size: 64, align: 64, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1006, line: 150, baseType: null)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1005, file: !1006, line: 289, baseType: !1046, size: 64, align: 64, offset: 1152)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1033, line: 132, baseType: !395)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1005, file: !1006, line: 297, baseType: !28, size: 64, align: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1005, file: !1006, line: 298, baseType: !28, size: 64, align: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1005, file: !1006, line: 299, baseType: !28, size: 64, align: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1005, file: !1006, line: 300, baseType: !28, size: 64, align: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1005, file: !1006, line: 302, baseType: !509, size: 64, align: 64, offset: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1005, file: !1006, line: 303, baseType: !23, size: 32, align: 32, offset: 1536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1005, file: !1006, line: 305, baseType: !1054, size: 160, align: 8, offset: 1568)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, align: 8, elements: !866)
!1055 = !DILocalVariable(name: "fp", arg: 1, scope: !999, file: !33, line: 269, type: !1002)
!1056 = !DILocation(line: 269, column: 28, scope: !999)
!1057 = !DILocalVariable(name: "cert", arg: 2, scope: !999, file: !33, line: 269, type: !374)
!1058 = !DILocation(line: 269, column: 39, scope: !999)
!1059 = !DILocation(line: 271, column: 23, scope: !999)
!1060 = !DILocation(line: 271, column: 27, scope: !999)
!1061 = !DILocation(line: 271, column: 9, scope: !999)
!1062 = !DILocation(line: 271, column: 2, scope: !999)
!1063 = distinct !DISubprogram(name: "rdssl_rkey_free", scope: !33, file: !33, line: 275, type: !1064, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !572}
!1066 = !DILocalVariable(name: "rkey", arg: 1, scope: !1063, file: !33, line: 275, type: !572)
!1067 = !DILocation(line: 275, column: 23, scope: !1063)
!1068 = !DILocation(line: 277, column: 11, scope: !1063)
!1069 = !DILocation(line: 277, column: 2, scope: !1063)
!1070 = !DILocation(line: 278, column: 1, scope: !1063)
!1071 = distinct !DISubprogram(name: "rdssl_rkey_get_exp_mod", scope: !33, file: !33, line: 282, type: !1072, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!23, !572, !98, !101, !98, !101}
!1074 = !DILocalVariable(name: "rkey", arg: 1, scope: !1071, file: !33, line: 282, type: !572)
!1075 = !DILocation(line: 282, column: 30, scope: !1071)
!1076 = !DILocalVariable(name: "exponent", arg: 2, scope: !1071, file: !33, line: 282, type: !98)
!1077 = !DILocation(line: 282, column: 44, scope: !1071)
!1078 = !DILocalVariable(name: "max_exp_len", arg: 3, scope: !1071, file: !33, line: 282, type: !101)
!1079 = !DILocation(line: 282, column: 61, scope: !1071)
!1080 = !DILocalVariable(name: "modulus", arg: 4, scope: !1071, file: !33, line: 282, type: !98)
!1081 = !DILocation(line: 282, column: 82, scope: !1071)
!1082 = !DILocalVariable(name: "max_mod_len", arg: 5, scope: !1071, file: !33, line: 283, type: !101)
!1083 = !DILocation(line: 283, column: 17, scope: !1071)
!1084 = !DILocalVariable(name: "len", scope: !1071, file: !33, line: 285, type: !23)
!1085 = !DILocation(line: 285, column: 6, scope: !1071)
!1086 = !DILocalVariable(name: "e", scope: !1071, file: !33, line: 287, type: !234)
!1087 = !DILocation(line: 287, column: 10, scope: !1071)
!1088 = !DILocalVariable(name: "n", scope: !1071, file: !33, line: 288, type: !234)
!1089 = !DILocation(line: 288, column: 10, scope: !1071)
!1090 = !DILocation(line: 291, column: 6, scope: !1071)
!1091 = !DILocation(line: 291, column: 12, scope: !1071)
!1092 = !DILocation(line: 291, column: 4, scope: !1071)
!1093 = !DILocation(line: 292, column: 6, scope: !1071)
!1094 = !DILocation(line: 292, column: 12, scope: !1071)
!1095 = !DILocation(line: 292, column: 4, scope: !1071)
!1096 = !DILocation(line: 297, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1071, file: !33, line: 297, column: 6)
!1098 = !DILocation(line: 297, column: 8, scope: !1097)
!1099 = !DILocation(line: 297, column: 7, scope: !1097)
!1100 = !DILocation(line: 297, column: 10, scope: !1097)
!1101 = !DILocation(line: 297, column: 30, scope: !1097)
!1102 = !DILocation(line: 297, column: 22, scope: !1097)
!1103 = !DILocation(line: 297, column: 43, scope: !1097)
!1104 = !DILocation(line: 297, column: 47, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1097, file: !33, discriminator: 1)
!1106 = !DILocation(line: 297, column: 49, scope: !1105)
!1107 = !DILocation(line: 297, column: 48, scope: !1105)
!1108 = !DILocation(line: 297, column: 51, scope: !1105)
!1109 = !DILocation(line: 297, column: 71, scope: !1105)
!1110 = !DILocation(line: 297, column: 63, scope: !1105)
!1111 = !DILocation(line: 297, column: 6, scope: !1105)
!1112 = !DILocation(line: 299, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1097, file: !33, line: 298, column: 2)
!1114 = !DILocation(line: 301, column: 18, scope: !1071)
!1115 = !DILocation(line: 301, column: 21, scope: !1071)
!1116 = !DILocation(line: 301, column: 8, scope: !1071)
!1117 = !DILocation(line: 301, column: 6, scope: !1071)
!1118 = !DILocation(line: 302, column: 10, scope: !1071)
!1119 = !DILocation(line: 302, column: 20, scope: !1071)
!1120 = !DILocation(line: 302, column: 2, scope: !1071)
!1121 = !DILocation(line: 303, column: 18, scope: !1071)
!1122 = !DILocation(line: 303, column: 21, scope: !1071)
!1123 = !DILocation(line: 303, column: 8, scope: !1071)
!1124 = !DILocation(line: 303, column: 6, scope: !1071)
!1125 = !DILocation(line: 304, column: 10, scope: !1071)
!1126 = !DILocation(line: 304, column: 19, scope: !1071)
!1127 = !DILocation(line: 304, column: 2, scope: !1071)
!1128 = !DILocation(line: 305, column: 2, scope: !1071)
!1129 = !DILocation(line: 306, column: 1, scope: !1071)
!1130 = distinct !DISubprogram(name: "rdssl_sig_ok", scope: !33, file: !33, line: 310, type: !1131, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!991, !98, !101, !98, !101, !98, !101}
!1133 = !DILocalVariable(name: "exponent", arg: 1, scope: !1130, file: !33, line: 310, type: !98)
!1134 = !DILocation(line: 310, column: 22, scope: !1130)
!1135 = !DILocalVariable(name: "exp_len", arg: 2, scope: !1130, file: !33, line: 310, type: !101)
!1136 = !DILocation(line: 310, column: 39, scope: !1130)
!1137 = !DILocalVariable(name: "modulus", arg: 3, scope: !1130, file: !33, line: 310, type: !98)
!1138 = !DILocation(line: 310, column: 56, scope: !1130)
!1139 = !DILocalVariable(name: "mod_len", arg: 4, scope: !1130, file: !33, line: 310, type: !101)
!1140 = !DILocation(line: 310, column: 72, scope: !1130)
!1141 = !DILocalVariable(name: "signature", arg: 5, scope: !1130, file: !33, line: 311, type: !98)
!1142 = !DILocation(line: 311, column: 15, scope: !1130)
!1143 = !DILocalVariable(name: "sig_len", arg: 6, scope: !1130, file: !33, line: 311, type: !101)
!1144 = !DILocation(line: 311, column: 33, scope: !1130)
!1145 = !DILocation(line: 313, column: 9, scope: !1130)
!1146 = !DILocation(line: 314, column: 9, scope: !1130)
!1147 = !DILocation(line: 315, column: 9, scope: !1130)
!1148 = !DILocation(line: 316, column: 9, scope: !1130)
!1149 = !DILocation(line: 317, column: 9, scope: !1130)
!1150 = !DILocation(line: 318, column: 9, scope: !1130)
!1151 = !DILocation(line: 322, column: 2, scope: !1130)
!1152 = distinct !DISubprogram(name: "rdssl_hmac_md5", scope: !33, file: !33, line: 327, type: !1153, isLocal: false, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !39)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !499, !23, !25, !23, !393}
!1155 = !DILocalVariable(name: "key", arg: 1, scope: !1152, file: !33, line: 327, type: !499)
!1156 = !DILocation(line: 327, column: 28, scope: !1152)
!1157 = !DILocalVariable(name: "key_len", arg: 2, scope: !1152, file: !33, line: 327, type: !23)
!1158 = !DILocation(line: 327, column: 37, scope: !1152)
!1159 = !DILocalVariable(name: "msg", arg: 3, scope: !1152, file: !33, line: 327, type: !25)
!1160 = !DILocation(line: 327, column: 67, scope: !1152)
!1161 = !DILocalVariable(name: "msg_len", arg: 4, scope: !1152, file: !33, line: 327, type: !23)
!1162 = !DILocation(line: 327, column: 76, scope: !1152)
!1163 = !DILocalVariable(name: "md", arg: 5, scope: !1152, file: !33, line: 328, type: !393)
!1164 = !DILocation(line: 328, column: 24, scope: !1152)
!1165 = !DILocation(line: 330, column: 7, scope: !1152)
!1166 = !DILocation(line: 330, column: 18, scope: !1152)
!1167 = !DILocation(line: 330, column: 23, scope: !1152)
!1168 = !DILocation(line: 330, column: 32, scope: !1152)
!1169 = !DILocation(line: 330, column: 37, scope: !1152)
!1170 = !DILocation(line: 330, column: 46, scope: !1152)
!1171 = !DILocation(line: 330, column: 2, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1152, file: !33, discriminator: 1)
!1173 = !DILocation(line: 331, column: 1, scope: !1152)
