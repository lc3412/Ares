; ModuleID = './[inter]secure.o.i'
source_filename = "./[inter]secure.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rc4_key_st = type { i32, i32, [256 x i32] }
%struct._VCHANNEL = type { i16, [8 x i8], i32, %struct.stream, void (%struct.stream*)* }
%struct.stream = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
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
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon.1 }
%union.anon.1 = type { void (i32, i32, i8*)* }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bn_blinding_st = type opaque

@g_server_rdp_version = global i16 0, align 2
@.str = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@pad_54 = internal global [40 x i8] c"6666666666666666666666666666666666666666", align 16
@pad_92 = internal global [48 x i8] c"\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C", align 16
@g_sec_decrypt_use_count = internal global i32 0, align 4
@g_sec_decrypt_key = internal global [16 x i8] zeroinitializer, align 16
@g_sec_decrypt_update_key = internal global [16 x i8] zeroinitializer, align 16
@g_rc4_decrypt_key = internal global %struct.rc4_key_st zeroinitializer, align 4
@g_rc4_key_len = internal global i32 0, align 4
@g_licence_issued = external global i32, align 4
@g_licence_error_result = external global i32, align 4
@g_sec_sign_key = internal global [16 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"%s()\00", align 1
@__func__.sec_process_mcs_data = private unnamed_addr constant [21 x i8] c"sec_process_mcs_data\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s(), SEC_TAG_SRV_INFO\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s(), SEC_TAG_SRV_CRYPT\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s(), SEC_TAG_SRV_CHANNELS\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unhandled response tag 0x%x\00", align 1
@g_encryption = external global i32, align 4
@g_sec_encrypt_use_count = internal global i32 0, align 4
@g_sec_encrypt_key = internal global [16 x i8] zeroinitializer, align 16
@g_sec_encrypt_update_key = internal global [16 x i8] zeroinitializer, align 16
@g_rc4_encrypt_key = internal global %struct.rc4_key_st zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"sec_process_srv_info(), server RDP version is %d\00", align 1
@g_rdp_version = external global i32, align 4
@g_server_depth = external global i32, align 4
@__func__.sec_process_crypt_info = private unnamed_addr constant [23 x i8] c"sec_process_crypt_info\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"sec_parse_crypt_info(), generating client random\00", align 1
@g_client_random = external global [32 x i8], align 16
@g_sec_crypted_random = internal global [256 x i8] zeroinitializer, align 16
@g_server_public_key_len = internal global i32 0, align 4
@__func__.sec_parse_crypt_info = private unnamed_addr constant [21 x i8] c"sec_parse_crypt_info\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"sec_parse_crypt_info(), got ENCRYPTION_LEVEL_NONE\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"sec_parse_crypt_info(), got random len %d, expected %d\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"sec_parse_crypt_info(), end > s->end\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"sec_parse_crypt_info(), We're going for the RDP4-style encryption\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"sec_parse_crypt_info(), invalid public key\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"sec_parse_crypt_info(), got public key\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"sec_parse_crypt_info(), invalid public sig\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"sec_parse_crypt_info(), unhandled crypt tag 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"sec_parse_crypt_info(), We're going for the RDP5-style encryption\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"sec_parse_crypt_info(), server didn't send enough x509 certificates\00", align 1
@.str.18 = private unnamed_addr constant [98 x i8] c"sec_parse_crypt_info(), got a bad cert: this will probably screw up the rest of the communication\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"sec_parse_crypt_info(), server CA Certificate length is %d\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"sec_parse_crypt_info(), couldn't load CA Certificate from server\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"sec_parse_crypt_info(), certificate length is %d\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"sec_parse_crypt_info(), couldn't load Certificate from server\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"sec_parse_crypt_info(), security error, CA Certificate invalid\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"sec_parse_crypt_info(). failed to parse X509 correctly\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"sec_parse_crypt_info(), bad server public key size (%u bits)\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"sec_parse_crypt_info(), problem extracting RSA exponent, modulus\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"sec_parse_public_key(), magic (0x%x) != SEC_RSA_MAGIC\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"sec_parse_public_key(), invalid public key size (%u bits) from server\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"sec_generate_keys(), 40-bit encryption enabled\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"sec_generate_key(), rc_4_key_size == %d, 128-bit encryption enabled\00", align 1
@g_dpi = external global i32, align 4
@__func__.sec_out_mcs_connect_initial_pdu = private unnamed_addr constant [32 x i8] c"sec_out_mcs_connect_initial_pdu\00", align 1
@g_num_channels = external global i32, align 4
@g_requested_session_width = external global i32, align 4
@g_requested_session_height = external global i32, align 4
@g_keylayout = external global i32, align 4
@g_hostname = external global [16 x i8], align 16
@g_keyboard_type = external global i32, align 4
@g_keyboard_subtype = external global i32, align 4
@g_keyboard_functionkeys = external global i32, align 4
@g_console_session = external global i32, align 4
@g_redirect_session_id = external global i32, align 4
@.str.31 = private unnamed_addr constant [41 x i8] c"sec_out_mcs_data(), g_num_channels is %d\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"sec_out_mcs_data(), requesting channel %s\00", align 1
@g_channels = external global [0 x %struct._VCHANNEL], align 8

; Function Attrs: nounwind uwtable
define void @sec_hash_48(i8*, i8*, i8*, i8*, i8 zeroext) #0 !dbg !94 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca [20 x i8], align 16
  %12 = alloca [4 x i8], align 1
  %13 = alloca %struct.SHAstate_st, align 4
  %14 = alloca %struct.MD5state_st, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !98, metadata !99), !dbg !100
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !101, metadata !99), !dbg !102
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !103, metadata !99), !dbg !104
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !105, metadata !99), !dbg !106
  store i8 %4, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !107, metadata !99), !dbg !108
  call void @llvm.dbg.declare(metadata [20 x i8]* %11, metadata !109, metadata !99), !dbg !113
  call void @llvm.dbg.declare(metadata [4 x i8]* %12, metadata !114, metadata !99), !dbg !118
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st* %13, metadata !119, metadata !99), !dbg !134
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %14, metadata !135, metadata !99), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %15, metadata !149, metadata !99), !dbg !150
  store i32 0, i32* %15, align 4, !dbg !151
  br label %16, !dbg !153

; <label>:16:                                     ; preds = %43, %5
  %17 = load i32, i32* %15, align 4, !dbg !154
  %18 = icmp slt i32 %17, 3, !dbg !157
  br i1 %18, label %19, label %46, !dbg !158

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i32 0, i32 0, !dbg !159
  %21 = load i8, i8* %10, align 1, !dbg !161
  %22 = zext i8 %21 to i32, !dbg !161
  %23 = load i32, i32* %15, align 4, !dbg !162
  %24 = add nsw i32 %22, %23, !dbg !163
  %25 = trunc i32 %24 to i8, !dbg !159
  %26 = load i32, i32* %15, align 4, !dbg !164
  %27 = add nsw i32 %26, 1, !dbg !165
  %28 = sext i32 %27 to i64, !dbg !164
  call void @llvm.memset.p0i8.i64(i8* %20, i8 %25, i64 %28, i32 1, i1 false), !dbg !159
  call void @rdssl_sha1_init(%struct.SHAstate_st* %13), !dbg !166
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i32 0, i32 0, !dbg !167
  %30 = load i32, i32* %15, align 4, !dbg !168
  %31 = add nsw i32 %30, 1, !dbg !169
  call void @rdssl_sha1_update(%struct.SHAstate_st* %13, i8* %29, i32 %31), !dbg !170
  %32 = load i8*, i8** %7, align 8, !dbg !171
  call void @rdssl_sha1_update(%struct.SHAstate_st* %13, i8* %32, i32 48), !dbg !172
  %33 = load i8*, i8** %8, align 8, !dbg !173
  call void @rdssl_sha1_update(%struct.SHAstate_st* %13, i8* %33, i32 32), !dbg !174
  %34 = load i8*, i8** %9, align 8, !dbg !175
  call void @rdssl_sha1_update(%struct.SHAstate_st* %13, i8* %34, i32 32), !dbg !176
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i32 0, i32 0, !dbg !177
  call void @rdssl_sha1_final(%struct.SHAstate_st* %13, i8* %35), !dbg !178
  call void @rdssl_md5_init(%struct.MD5state_st* %14), !dbg !179
  %36 = load i8*, i8** %7, align 8, !dbg !180
  call void @rdssl_md5_update(%struct.MD5state_st* %14, i8* %36, i32 48), !dbg !181
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i32 0, i32 0, !dbg !182
  call void @rdssl_md5_update(%struct.MD5state_st* %14, i8* %37, i32 20), !dbg !183
  %38 = load i32, i32* %15, align 4, !dbg !184
  %39 = mul nsw i32 %38, 16, !dbg !185
  %40 = sext i32 %39 to i64, !dbg !186
  %41 = load i8*, i8** %6, align 8, !dbg !186
  %42 = getelementptr inbounds i8, i8* %41, i64 %40, !dbg !186
  call void @rdssl_md5_final(%struct.MD5state_st* %14, i8* %42), !dbg !187
  br label %43, !dbg !188

; <label>:43:                                     ; preds = %19
  %44 = load i32, i32* %15, align 4, !dbg !189
  %45 = add nsw i32 %44, 1, !dbg !189
  store i32 %45, i32* %15, align 4, !dbg !189
  br label %16, !dbg !191, !llvm.loop !192

; <label>:46:                                     ; preds = %16
  ret void, !dbg !194
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @rdssl_sha1_init(%struct.SHAstate_st*) #3

declare void @rdssl_sha1_update(%struct.SHAstate_st*, i8*, i32) #3

declare void @rdssl_sha1_final(%struct.SHAstate_st*, i8*) #3

declare void @rdssl_md5_init(%struct.MD5state_st*) #3

declare void @rdssl_md5_update(%struct.MD5state_st*, i8*, i32) #3

declare void @rdssl_md5_final(%struct.MD5state_st*, i8*) #3

; Function Attrs: nounwind uwtable
define void @sec_hash_16(i8*, i8*, i8*, i8*) #0 !dbg !195 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.MD5state_st, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !198, metadata !99), !dbg !199
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !200, metadata !99), !dbg !201
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !202, metadata !99), !dbg !203
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !204, metadata !99), !dbg !205
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %9, metadata !206, metadata !99), !dbg !207
  call void @rdssl_md5_init(%struct.MD5state_st* %9), !dbg !208
  %10 = load i8*, i8** %6, align 8, !dbg !209
  call void @rdssl_md5_update(%struct.MD5state_st* %9, i8* %10, i32 16), !dbg !210
  %11 = load i8*, i8** %7, align 8, !dbg !211
  call void @rdssl_md5_update(%struct.MD5state_st* %9, i8* %11, i32 32), !dbg !212
  %12 = load i8*, i8** %8, align 8, !dbg !213
  call void @rdssl_md5_update(%struct.MD5state_st* %9, i8* %12, i32 32), !dbg !214
  %13 = load i8*, i8** %5, align 8, !dbg !215
  call void @rdssl_md5_final(%struct.MD5state_st* %9, i8* %13), !dbg !216
  ret void, !dbg !217
}

; Function Attrs: nounwind uwtable
define void @sec_hash_sha1_16(i8*, i8*, i8*) #0 !dbg !218 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.SHAstate_st, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !221, metadata !99), !dbg !222
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !223, metadata !99), !dbg !224
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !225, metadata !99), !dbg !226
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st* %7, metadata !227, metadata !99), !dbg !228
  call void @rdssl_sha1_init(%struct.SHAstate_st* %7), !dbg !229
  %8 = load i8*, i8** %5, align 8, !dbg !230
  call void @rdssl_sha1_update(%struct.SHAstate_st* %7, i8* %8, i32 16), !dbg !231
  %9 = load i8*, i8** %6, align 8, !dbg !232
  call void @rdssl_sha1_update(%struct.SHAstate_st* %7, i8* %9, i32 16), !dbg !233
  %10 = load i8*, i8** %4, align 8, !dbg !234
  call void @rdssl_sha1_final(%struct.SHAstate_st* %7, i8* %10), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: nounwind uwtable
define void @sec_hash_to_string(i8*, i32, i8*, i32) #0 !dbg !237 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !242, metadata !99), !dbg !243
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !244, metadata !99), !dbg !245
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !246, metadata !99), !dbg !247
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !248, metadata !99), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %9, metadata !250, metadata !99), !dbg !251
  %10 = load i8*, i8** %5, align 8, !dbg !252
  %11 = load i32, i32* %6, align 4, !dbg !253
  %12 = sext i32 %11 to i64, !dbg !253
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %12, i32 1, i1 false), !dbg !254
  store i32 0, i32* %9, align 4, !dbg !255
  br label %13, !dbg !257

; <label>:13:                                     ; preds = %26, %4
  %14 = load i32, i32* %9, align 4, !dbg !258
  %15 = load i32, i32* %8, align 4, !dbg !261
  %16 = icmp slt i32 %14, %15, !dbg !262
  br i1 %16, label %17, label %31, !dbg !263

; <label>:17:                                     ; preds = %13
  %18 = load i8*, i8** %5, align 8, !dbg !264
  %19 = load i32, i32* %9, align 4, !dbg !266
  %20 = sext i32 %19 to i64, !dbg !267
  %21 = load i8*, i8** %7, align 8, !dbg !267
  %22 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !267
  %23 = load i8, i8* %22, align 1, !dbg !267
  %24 = zext i8 %23 to i32, !dbg !267
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 %24) #5, !dbg !268
  br label %26, !dbg !269

; <label>:26:                                     ; preds = %17
  %27 = load i32, i32* %9, align 4, !dbg !270
  %28 = add nsw i32 %27, 1, !dbg !270
  store i32 %28, i32* %9, align 4, !dbg !270
  %29 = load i8*, i8** %5, align 8, !dbg !272
  %30 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !272
  store i8* %30, i8** %5, align 8, !dbg !272
  br label %13, !dbg !273, !llvm.loop !274

; <label>:31:                                     ; preds = %13
  ret void, !dbg !276
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @buf_out_uint32(i8*, i32) #0 !dbg !277 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !280, metadata !99), !dbg !281
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !282, metadata !99), !dbg !283
  %5 = load i32, i32* %4, align 4, !dbg !284
  %6 = and i32 %5, 255, !dbg !285
  %7 = trunc i32 %6 to i8, !dbg !286
  %8 = load i8*, i8** %3, align 8, !dbg !287
  %9 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !287
  store i8 %7, i8* %9, align 1, !dbg !288
  %10 = load i32, i32* %4, align 4, !dbg !289
  %11 = lshr i32 %10, 8, !dbg !290
  %12 = and i32 %11, 255, !dbg !291
  %13 = trunc i32 %12 to i8, !dbg !292
  %14 = load i8*, i8** %3, align 8, !dbg !293
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !293
  store i8 %13, i8* %15, align 1, !dbg !294
  %16 = load i32, i32* %4, align 4, !dbg !295
  %17 = lshr i32 %16, 16, !dbg !296
  %18 = and i32 %17, 255, !dbg !297
  %19 = trunc i32 %18 to i8, !dbg !298
  %20 = load i8*, i8** %3, align 8, !dbg !299
  %21 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !299
  store i8 %19, i8* %21, align 1, !dbg !300
  %22 = load i32, i32* %4, align 4, !dbg !301
  %23 = lshr i32 %22, 24, !dbg !302
  %24 = and i32 %23, 255, !dbg !303
  %25 = trunc i32 %24 to i8, !dbg !304
  %26 = load i8*, i8** %3, align 8, !dbg !305
  %27 = getelementptr inbounds i8, i8* %26, i64 3, !dbg !305
  store i8 %25, i8* %27, align 1, !dbg !306
  ret void, !dbg !307
}

; Function Attrs: nounwind uwtable
define void @sec_sign(i8*, i32, i8*, i32, i8*, i32) #0 !dbg !308 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [20 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca [4 x i8], align 1
  %16 = alloca %struct.SHAstate_st, align 4
  %17 = alloca %struct.MD5state_st, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !311, metadata !99), !dbg !312
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !313, metadata !99), !dbg !314
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !315, metadata !99), !dbg !316
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !317, metadata !99), !dbg !318
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !319, metadata !99), !dbg !320
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !321, metadata !99), !dbg !322
  call void @llvm.dbg.declare(metadata [20 x i8]* %13, metadata !323, metadata !99), !dbg !324
  call void @llvm.dbg.declare(metadata [16 x i8]* %14, metadata !325, metadata !99), !dbg !326
  call void @llvm.dbg.declare(metadata [4 x i8]* %15, metadata !327, metadata !99), !dbg !328
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st* %16, metadata !329, metadata !99), !dbg !330
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %17, metadata !331, metadata !99), !dbg !332
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i32 0, i32 0, !dbg !333
  %19 = load i32, i32* %12, align 4, !dbg !334
  call void @buf_out_uint32(i8* %18, i32 %19), !dbg !335
  call void @rdssl_sha1_init(%struct.SHAstate_st* %16), !dbg !336
  %20 = load i8*, i8** %9, align 8, !dbg !337
  %21 = load i32, i32* %10, align 4, !dbg !338
  call void @rdssl_sha1_update(%struct.SHAstate_st* %16, i8* %20, i32 %21), !dbg !339
  call void @rdssl_sha1_update(%struct.SHAstate_st* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @pad_54, i32 0, i32 0), i32 40), !dbg !340
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i32 0, i32 0, !dbg !341
  call void @rdssl_sha1_update(%struct.SHAstate_st* %16, i8* %22, i32 4), !dbg !342
  %23 = load i8*, i8** %11, align 8, !dbg !343
  %24 = load i32, i32* %12, align 4, !dbg !344
  call void @rdssl_sha1_update(%struct.SHAstate_st* %16, i8* %23, i32 %24), !dbg !345
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i32 0, i32 0, !dbg !346
  call void @rdssl_sha1_final(%struct.SHAstate_st* %16, i8* %25), !dbg !347
  call void @rdssl_md5_init(%struct.MD5state_st* %17), !dbg !348
  %26 = load i8*, i8** %9, align 8, !dbg !349
  %27 = load i32, i32* %10, align 4, !dbg !350
  call void @rdssl_md5_update(%struct.MD5state_st* %17, i8* %26, i32 %27), !dbg !351
  call void @rdssl_md5_update(%struct.MD5state_st* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @pad_92, i32 0, i32 0), i32 48), !dbg !352
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i32 0, i32 0, !dbg !353
  call void @rdssl_md5_update(%struct.MD5state_st* %17, i8* %28, i32 20), !dbg !354
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0, !dbg !355
  call void @rdssl_md5_final(%struct.MD5state_st* %17, i8* %29), !dbg !356
  %30 = load i8*, i8** %7, align 8, !dbg !357
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i32 0, i32 0, !dbg !358
  %32 = load i32, i32* %8, align 4, !dbg !359
  %33 = sext i32 %32 to i64, !dbg !359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %33, i32 1, i1 false), !dbg !358
  ret void, !dbg !360
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @sec_decrypt(i8*, i32) #0 !dbg !361 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !364, metadata !99), !dbg !365
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !366, metadata !99), !dbg !367
  %5 = load i32, i32* @g_sec_decrypt_use_count, align 4, !dbg !368
  %6 = icmp eq i32 %5, 4096, !dbg !370
  br i1 %6, label %7, label %9, !dbg !371

; <label>:7:                                      ; preds = %2
  call void @sec_update(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_key, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_update_key, i32 0, i32 0)), !dbg !372
  %8 = load i32, i32* @g_rc4_key_len, align 4, !dbg !374
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* @g_rc4_decrypt_key, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_key, i32 0, i32 0), i32 %8), !dbg !375
  store i32 0, i32* @g_sec_decrypt_use_count, align 4, !dbg !376
  br label %9, !dbg !377

; <label>:9:                                      ; preds = %7, %2
  %10 = load i8*, i8** %3, align 8, !dbg !378
  %11 = load i8*, i8** %3, align 8, !dbg !379
  %12 = load i32, i32* %4, align 4, !dbg !380
  call void @rdssl_rc4_crypt(%struct.rc4_key_st* @g_rc4_decrypt_key, i8* %10, i8* %11, i32 %12), !dbg !381
  %13 = load i32, i32* @g_sec_decrypt_use_count, align 4, !dbg !382
  %14 = add nsw i32 %13, 1, !dbg !382
  store i32 %14, i32* @g_sec_decrypt_use_count, align 4, !dbg !382
  ret void, !dbg !383
}

; Function Attrs: nounwind uwtable
define internal void @sec_update(i8*, i8*) #0 !dbg !384 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca %struct.SHAstate_st, align 4
  %7 = alloca %struct.MD5state_st, align 4
  %8 = alloca %struct.rc4_key_st, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !387, metadata !99), !dbg !388
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !389, metadata !99), !dbg !390
  call void @llvm.dbg.declare(metadata [20 x i8]* %5, metadata !391, metadata !99), !dbg !392
  call void @llvm.dbg.declare(metadata %struct.SHAstate_st* %6, metadata !393, metadata !99), !dbg !394
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %7, metadata !395, metadata !99), !dbg !396
  call void @llvm.dbg.declare(metadata %struct.rc4_key_st* %8, metadata !397, metadata !99), !dbg !398
  call void @rdssl_sha1_init(%struct.SHAstate_st* %6), !dbg !399
  %9 = load i8*, i8** %4, align 8, !dbg !400
  %10 = load i32, i32* @g_rc4_key_len, align 4, !dbg !401
  call void @rdssl_sha1_update(%struct.SHAstate_st* %6, i8* %9, i32 %10), !dbg !402
  call void @rdssl_sha1_update(%struct.SHAstate_st* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @pad_54, i32 0, i32 0), i32 40), !dbg !403
  %11 = load i8*, i8** %3, align 8, !dbg !404
  %12 = load i32, i32* @g_rc4_key_len, align 4, !dbg !405
  call void @rdssl_sha1_update(%struct.SHAstate_st* %6, i8* %11, i32 %12), !dbg !406
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i32 0, i32 0, !dbg !407
  call void @rdssl_sha1_final(%struct.SHAstate_st* %6, i8* %13), !dbg !408
  call void @rdssl_md5_init(%struct.MD5state_st* %7), !dbg !409
  %14 = load i8*, i8** %4, align 8, !dbg !410
  %15 = load i32, i32* @g_rc4_key_len, align 4, !dbg !411
  call void @rdssl_md5_update(%struct.MD5state_st* %7, i8* %14, i32 %15), !dbg !412
  call void @rdssl_md5_update(%struct.MD5state_st* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @pad_92, i32 0, i32 0), i32 48), !dbg !413
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i32 0, i32 0, !dbg !414
  call void @rdssl_md5_update(%struct.MD5state_st* %7, i8* %16, i32 20), !dbg !415
  %17 = load i8*, i8** %3, align 8, !dbg !416
  call void @rdssl_md5_final(%struct.MD5state_st* %7, i8* %17), !dbg !417
  %18 = load i8*, i8** %3, align 8, !dbg !418
  %19 = load i32, i32* @g_rc4_key_len, align 4, !dbg !419
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* %8, i8* %18, i32 %19), !dbg !420
  %20 = load i8*, i8** %3, align 8, !dbg !421
  %21 = load i8*, i8** %3, align 8, !dbg !422
  %22 = load i32, i32* @g_rc4_key_len, align 4, !dbg !423
  call void @rdssl_rc4_crypt(%struct.rc4_key_st* %8, i8* %20, i8* %21, i32 %22), !dbg !424
  %23 = load i32, i32* @g_rc4_key_len, align 4, !dbg !425
  %24 = icmp eq i32 %23, 8, !dbg !427
  br i1 %24, label %25, label %27, !dbg !428

; <label>:25:                                     ; preds = %2
  %26 = load i8*, i8** %3, align 8, !dbg !429
  call void @sec_make_40bit(i8* %26), !dbg !430
  br label %27, !dbg !430

; <label>:27:                                     ; preds = %25, %2
  ret void, !dbg !431
}

declare void @rdssl_rc4_set_key(%struct.rc4_key_st*, i8*, i32) #3

declare void @rdssl_rc4_crypt(%struct.rc4_key_st*, i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct.stream* @sec_init(i32, i32) #0 !dbg !432 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !450, metadata !99), !dbg !451
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !452, metadata !99), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %5, metadata !454, metadata !99), !dbg !455
  call void @llvm.dbg.declare(metadata %struct.stream** %6, metadata !456, metadata !99), !dbg !457
  %7 = load i32, i32* @g_licence_issued, align 4, !dbg !458
  %8 = icmp ne i32 %7, 0, !dbg !458
  br i1 %8, label %17, label %9, !dbg !460

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @g_licence_error_result, align 4, !dbg !461
  %11 = icmp ne i32 %10, 0, !dbg !461
  br i1 %11, label %17, label %12, !dbg !463

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4, !dbg !464
  %14 = and i32 %13, 8, !dbg !465
  %15 = icmp ne i32 %14, 0, !dbg !466
  %16 = select i1 %15, i32 12, i32 4, !dbg !466
  store i32 %16, i32* %5, align 4, !dbg !467
  br label %22, !dbg !468

; <label>:17:                                     ; preds = %9, %2
  %18 = load i32, i32* %3, align 4, !dbg !469
  %19 = and i32 %18, 8, !dbg !470
  %20 = icmp ne i32 %19, 0, !dbg !471
  %21 = select i1 %20, i32 12, i32 0, !dbg !471
  store i32 %21, i32* %5, align 4, !dbg !472
  br label %22

; <label>:22:                                     ; preds = %17, %12
  %23 = load i32, i32* %4, align 4, !dbg !473
  %24 = load i32, i32* %5, align 4, !dbg !474
  %25 = add nsw i32 %23, %24, !dbg !475
  %26 = call %struct.stream* @mcs_init(i32 %25), !dbg !476
  store %struct.stream* %26, %struct.stream** %6, align 8, !dbg !477
  %27 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !478
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %27, i32 0, i32 0, !dbg !480
  %29 = load i8*, i8** %28, align 8, !dbg !480
  %30 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !481
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 6, !dbg !482
  store i8* %29, i8** %31, align 8, !dbg !483
  %32 = load i32, i32* %5, align 4, !dbg !484
  %33 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !485
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !486
  %35 = load i8*, i8** %34, align 8, !dbg !487
  %36 = sext i32 %32 to i64, !dbg !487
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !487
  store i8* %37, i8** %34, align 8, !dbg !487
  %38 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !488
  ret %struct.stream* %38, !dbg !489
}

declare %struct.stream* @mcs_init(i32) #3

; Function Attrs: nounwind uwtable
define void @sec_send_to_channel(%struct.stream*, i32, i16 zeroext) #0 !dbg !490 {
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %4, metadata !493, metadata !99), !dbg !494
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !495, metadata !99), !dbg !496
  store i16 %2, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !497, metadata !99), !dbg !498
  call void @llvm.dbg.declare(metadata i32* %7, metadata !499, metadata !99), !dbg !500
  %8 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !501
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 6, !dbg !502
  %10 = load i8*, i8** %9, align 8, !dbg !502
  %11 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !503
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !504
  store i8* %10, i8** %12, align 8, !dbg !505
  %13 = load i32, i32* @g_licence_issued, align 4, !dbg !506
  %14 = icmp ne i32 %13, 0, !dbg !506
  br i1 %14, label %18, label %15, !dbg !508

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* @g_licence_error_result, align 4, !dbg !509
  %17 = icmp ne i32 %16, 0, !dbg !509
  br i1 %17, label %18, label %22, !dbg !511

; <label>:18:                                     ; preds = %15, %3
  %19 = load i32, i32* %5, align 4, !dbg !512
  %20 = and i32 %19, 8, !dbg !514
  %21 = icmp ne i32 %20, 0, !dbg !514
  br i1 %21, label %22, label %32, !dbg !515

; <label>:22:                                     ; preds = %18, %15
  %23 = load i32, i32* %5, align 4, !dbg !516
  %24 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !518
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !519
  %26 = load i8*, i8** %25, align 8, !dbg !519
  %27 = bitcast i8* %26 to i32*, !dbg !520
  store i32 %23, i32* %27, align 4, !dbg !521
  %28 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !522
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !523
  %30 = load i8*, i8** %29, align 8, !dbg !524
  %31 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !524
  store i8* %31, i8** %29, align 8, !dbg !524
  br label %32, !dbg !525

; <label>:32:                                     ; preds = %22, %18
  %33 = load i32, i32* %5, align 4, !dbg !526
  %34 = and i32 %33, 8, !dbg !528
  %35 = icmp ne i32 %34, 0, !dbg !528
  br i1 %35, label %36, label %64, !dbg !529

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %5, align 4, !dbg !530
  %38 = and i32 %37, -9, !dbg !530
  store i32 %38, i32* %5, align 4, !dbg !530
  %39 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !532
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 1, !dbg !533
  %41 = load i8*, i8** %40, align 8, !dbg !533
  %42 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !534
  %43 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 0, !dbg !535
  %44 = load i8*, i8** %43, align 8, !dbg !535
  %45 = ptrtoint i8* %41 to i64, !dbg !536
  %46 = ptrtoint i8* %44 to i64, !dbg !536
  %47 = sub i64 %45, %46, !dbg !536
  %48 = sub nsw i64 %47, 8, !dbg !537
  %49 = trunc i64 %48 to i32, !dbg !532
  store i32 %49, i32* %7, align 4, !dbg !538
  %50 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !539
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !540
  %52 = load i8*, i8** %51, align 8, !dbg !540
  %53 = load i32, i32* @g_rc4_key_len, align 4, !dbg !541
  %54 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !542
  %55 = getelementptr inbounds %struct.stream, %struct.stream* %54, i32 0, i32 0, !dbg !543
  %56 = load i8*, i8** %55, align 8, !dbg !543
  %57 = getelementptr inbounds i8, i8* %56, i64 8, !dbg !544
  %58 = load i32, i32* %7, align 4, !dbg !545
  call void @sec_sign(i8* %52, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_sign_key, i32 0, i32 0), i32 %53, i8* %57, i32 %58), !dbg !546
  %59 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !547
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !548
  %61 = load i8*, i8** %60, align 8, !dbg !548
  %62 = getelementptr inbounds i8, i8* %61, i64 8, !dbg !549
  %63 = load i32, i32* %7, align 4, !dbg !550
  call void @sec_encrypt(i8* %62, i32 %63), !dbg !551
  br label %64, !dbg !552

; <label>:64:                                     ; preds = %36, %32
  %65 = load %struct.stream*, %struct.stream** %4, align 8, !dbg !553
  %66 = load i16, i16* %6, align 2, !dbg !554
  call void @mcs_send_to_channel(%struct.stream* %65, i16 zeroext %66), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: nounwind uwtable
define internal void @sec_encrypt(i8*, i32) #0 !dbg !557 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !558, metadata !99), !dbg !559
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !560, metadata !99), !dbg !561
  %5 = load i32, i32* @g_sec_encrypt_use_count, align 4, !dbg !562
  %6 = icmp eq i32 %5, 4096, !dbg !564
  br i1 %6, label %7, label %9, !dbg !565

; <label>:7:                                      ; preds = %2
  call void @sec_update(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_key, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_update_key, i32 0, i32 0)), !dbg !566
  %8 = load i32, i32* @g_rc4_key_len, align 4, !dbg !568
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* @g_rc4_encrypt_key, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_key, i32 0, i32 0), i32 %8), !dbg !569
  store i32 0, i32* @g_sec_encrypt_use_count, align 4, !dbg !570
  br label %9, !dbg !571

; <label>:9:                                      ; preds = %7, %2
  %10 = load i8*, i8** %3, align 8, !dbg !572
  %11 = load i8*, i8** %3, align 8, !dbg !573
  %12 = load i32, i32* %4, align 4, !dbg !574
  call void @rdssl_rc4_crypt(%struct.rc4_key_st* @g_rc4_encrypt_key, i8* %10, i8* %11, i32 %12), !dbg !575
  %13 = load i32, i32* @g_sec_encrypt_use_count, align 4, !dbg !576
  %14 = add nsw i32 %13, 1, !dbg !576
  store i32 %14, i32* @g_sec_encrypt_use_count, align 4, !dbg !576
  ret void, !dbg !577
}

declare void @mcs_send_to_channel(%struct.stream*, i16 zeroext) #3

; Function Attrs: nounwind uwtable
define void @sec_send(%struct.stream*, i32) #0 !dbg !578 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !581, metadata !99), !dbg !582
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !583, metadata !99), !dbg !584
  %5 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !585
  %6 = load i32, i32* %4, align 4, !dbg !586
  call void @sec_send_to_channel(%struct.stream* %5, i32 %6, i16 zeroext 1003), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: nounwind uwtable
define void @sec_process_mcs_data(%struct.stream*) #0 !dbg !589 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !592, metadata !99), !dbg !593
  call void @llvm.dbg.declare(metadata i16* %3, metadata !594, metadata !99), !dbg !595
  call void @llvm.dbg.declare(metadata i16* %4, metadata !596, metadata !99), !dbg !597
  call void @llvm.dbg.declare(metadata i8** %5, metadata !598, metadata !99), !dbg !599
  call void @llvm.dbg.declare(metadata i8* %6, metadata !600, metadata !99), !dbg !601
  %7 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !602
  %8 = getelementptr inbounds %struct.stream, %struct.stream* %7, i32 0, i32 0, !dbg !603
  %9 = load i8*, i8** %8, align 8, !dbg !604
  %10 = getelementptr inbounds i8, i8* %9, i64 21, !dbg !604
  store i8* %10, i8** %8, align 8, !dbg !604
  %11 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !605
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !606
  %13 = load i8*, i8** %12, align 8, !dbg !607
  %14 = getelementptr inbounds i8, i8* %13, i32 1, !dbg !607
  store i8* %14, i8** %12, align 8, !dbg !607
  %15 = load i8, i8* %13, align 1, !dbg !608
  store i8 %15, i8* %6, align 1, !dbg !609
  %16 = load i8, i8* %6, align 1, !dbg !610
  %17 = zext i8 %16 to i32, !dbg !610
  %18 = and i32 %17, 128, !dbg !612
  %19 = icmp ne i32 %18, 0, !dbg !612
  br i1 %19, label %20, label %26, !dbg !613

; <label>:20:                                     ; preds = %1
  %21 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !614
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %21, i32 0, i32 0, !dbg !615
  %23 = load i8*, i8** %22, align 8, !dbg !616
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !616
  store i8* %24, i8** %22, align 8, !dbg !616
  %25 = load i8, i8* %23, align 1, !dbg !617
  store i8 %25, i8* %6, align 1, !dbg !618
  br label %26, !dbg !619

; <label>:26:                                     ; preds = %20, %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sec_process_mcs_data, i32 0, i32 0)), !dbg !620
  br label %27, !dbg !621

; <label>:27:                                     ; preds = %77, %26
  %28 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !622
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !624
  %30 = load i8*, i8** %29, align 8, !dbg !624
  %31 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !625
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %31, i32 0, i32 1, !dbg !626
  %33 = load i8*, i8** %32, align 8, !dbg !626
  %34 = icmp ult i8* %30, %33, !dbg !627
  br i1 %34, label %35, label %81, !dbg !628

; <label>:35:                                     ; preds = %27
  %36 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !629
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !632
  %38 = load i8*, i8** %37, align 8, !dbg !632
  %39 = bitcast i8* %38 to i16*, !dbg !633
  %40 = load i16, i16* %39, align 2, !dbg !633
  store i16 %40, i16* %3, align 2, !dbg !634
  %41 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !635
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %41, i32 0, i32 0, !dbg !636
  %43 = load i8*, i8** %42, align 8, !dbg !637
  %44 = getelementptr inbounds i8, i8* %43, i64 2, !dbg !637
  store i8* %44, i8** %42, align 8, !dbg !637
  %45 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !638
  %46 = getelementptr inbounds %struct.stream, %struct.stream* %45, i32 0, i32 0, !dbg !640
  %47 = load i8*, i8** %46, align 8, !dbg !640
  %48 = bitcast i8* %47 to i16*, !dbg !641
  %49 = load i16, i16* %48, align 2, !dbg !641
  store i16 %49, i16* %4, align 2, !dbg !642
  %50 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !643
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 0, !dbg !644
  %52 = load i8*, i8** %51, align 8, !dbg !645
  %53 = getelementptr inbounds i8, i8* %52, i64 2, !dbg !645
  store i8* %53, i8** %51, align 8, !dbg !645
  %54 = load i16, i16* %4, align 2, !dbg !646
  %55 = zext i16 %54 to i32, !dbg !646
  %56 = icmp sle i32 %55, 4, !dbg !648
  br i1 %56, label %57, label %58, !dbg !649

; <label>:57:                                     ; preds = %35
  br label %81, !dbg !650

; <label>:58:                                     ; preds = %35
  %59 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !651
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %59, i32 0, i32 0, !dbg !652
  %61 = load i8*, i8** %60, align 8, !dbg !652
  %62 = load i16, i16* %4, align 2, !dbg !653
  %63 = zext i16 %62 to i32, !dbg !653
  %64 = sext i32 %63 to i64, !dbg !654
  %65 = getelementptr inbounds i8, i8* %61, i64 %64, !dbg !654
  %66 = getelementptr inbounds i8, i8* %65, i64 -4, !dbg !655
  store i8* %66, i8** %5, align 8, !dbg !656
  %67 = load i16, i16* %3, align 2, !dbg !657
  %68 = zext i16 %67 to i32, !dbg !657
  switch i32 %68, label %74 [
    i32 3073, label %69
    i32 3074, label %71
    i32 3075, label %73
  ], !dbg !658

; <label>:69:                                     ; preds = %58
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sec_process_mcs_data, i32 0, i32 0)), !dbg !659
  %70 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !661
  call void @sec_process_srv_info(%struct.stream* %70), !dbg !662
  br label %77, !dbg !663

; <label>:71:                                     ; preds = %58
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sec_process_mcs_data, i32 0, i32 0)), !dbg !664
  %72 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !665
  call void @sec_process_crypt_info(%struct.stream* %72), !dbg !666
  br label %77, !dbg !667

; <label>:73:                                     ; preds = %58
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sec_process_mcs_data, i32 0, i32 0)), !dbg !668
  br label %77, !dbg !669

; <label>:74:                                     ; preds = %58
  %75 = load i16, i16* %3, align 2, !dbg !670
  %76 = zext i16 %75 to i32, !dbg !670
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i32 %76), !dbg !671
  br label %77, !dbg !672

; <label>:77:                                     ; preds = %74, %73, %71, %69
  %78 = load i8*, i8** %5, align 8, !dbg !673
  %79 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !674
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !675
  store i8* %78, i8** %80, align 8, !dbg !676
  br label %27, !dbg !677, !llvm.loop !679

; <label>:81:                                     ; preds = %57, %27
  ret void, !dbg !680
}

declare void @logger(i32, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @sec_process_srv_info(%struct.stream*) #0 !dbg !681 {
  %2 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !682, metadata !99), !dbg !683
  %3 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !684
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %3, i32 0, i32 0, !dbg !686
  %5 = load i8*, i8** %4, align 8, !dbg !686
  %6 = bitcast i8* %5 to i16*, !dbg !687
  %7 = load i16, i16* %6, align 2, !dbg !687
  store i16 %7, i16* @g_server_rdp_version, align 2, !dbg !688
  %8 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !689
  %9 = getelementptr inbounds %struct.stream, %struct.stream* %8, i32 0, i32 0, !dbg !690
  %10 = load i8*, i8** %9, align 8, !dbg !691
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !691
  store i8* %11, i8** %9, align 8, !dbg !691
  %12 = load i16, i16* @g_server_rdp_version, align 2, !dbg !692
  %13 = zext i16 %12 to i32, !dbg !692
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i32 %13), !dbg !693
  %14 = load i16, i16* @g_server_rdp_version, align 2, !dbg !694
  %15 = zext i16 %14 to i32, !dbg !694
  %16 = icmp eq i32 1, %15, !dbg !696
  br i1 %16, label %17, label %18, !dbg !697

; <label>:17:                                     ; preds = %1
  store i32 4, i32* @g_rdp_version, align 4, !dbg !698
  store i32 8, i32* @g_server_depth, align 4, !dbg !700
  br label %18, !dbg !701

; <label>:18:                                     ; preds = %17, %1
  ret void, !dbg !702
}

; Function Attrs: nounwind uwtable
define internal void @sec_process_crypt_info(%struct.stream*) #0 !dbg !703 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [4 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %2, metadata !704, metadata !99), !dbg !705
  call void @llvm.dbg.declare(metadata i8** %3, metadata !706, metadata !99), !dbg !707
  store i8* null, i8** %3, align 8, !dbg !707
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !708, metadata !99), !dbg !709
  call void @llvm.dbg.declare(metadata [4 x i8]* %5, metadata !710, metadata !99), !dbg !711
  call void @llvm.dbg.declare(metadata i32* %6, metadata !712, metadata !99), !dbg !713
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.sec_process_crypt_info, i32 0, i32 0)), !dbg !714
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !715
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 256, i32 16, i1 false), !dbg !715
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0, !dbg !716
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 4, i32 1, i1 false), !dbg !716
  %9 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !717
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !719
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0, !dbg !720
  %12 = call i32 @sec_parse_crypt_info(%struct.stream* %9, i32* %6, i8** %3, i8* %10, i8* %11), !dbg !721
  %13 = icmp ne i32 %12, 0, !dbg !721
  br i1 %13, label %15, label %14, !dbg !722

; <label>:14:                                     ; preds = %1
  br label %21, !dbg !723

; <label>:15:                                     ; preds = %1
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)), !dbg !724
  call void @generate_random(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @g_client_random, i32 0, i32 0)), !dbg !725
  %16 = load i32, i32* @g_server_public_key_len, align 4, !dbg !726
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !727
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i32 0, !dbg !728
  call void @sec_rsa_encrypt(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @g_sec_crypted_random, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @g_client_random, i32 0, i32 0), i32 32, i32 %16, i8* %17, i8* %18), !dbg !729
  %19 = load i8*, i8** %3, align 8, !dbg !730
  %20 = load i32, i32* %6, align 4, !dbg !731
  call void @sec_generate_keys(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @g_client_random, i32 0, i32 0), i8* %19, i32 %20), !dbg !732
  br label %21, !dbg !733

; <label>:21:                                     ; preds = %15, %14
  ret void, !dbg !734
}

; Function Attrs: nounwind uwtable
define %struct.stream* @sec_recv(i32*) #0 !dbg !736 {
  %2 = alloca %struct.stream*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.stream*, align 8
  %9 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !741, metadata !99), !dbg !742
  call void @llvm.dbg.declare(metadata i8* %4, metadata !743, metadata !99), !dbg !744
  call void @llvm.dbg.declare(metadata i8* %5, metadata !745, metadata !99), !dbg !746
  call void @llvm.dbg.declare(metadata i16* %6, metadata !747, metadata !99), !dbg !748
  call void @llvm.dbg.declare(metadata i16* %7, metadata !749, metadata !99), !dbg !750
  call void @llvm.dbg.declare(metadata %struct.stream** %8, metadata !751, metadata !99), !dbg !752
  br label %10, !dbg !753

; <label>:10:                                     ; preds = %218, %206, %101, %1
  %11 = load i32*, i32** %3, align 8, !dbg !754
  %12 = call %struct.stream* @mcs_recv(i16* %7, i32* %11, i8* %4), !dbg !756
  store %struct.stream* %12, %struct.stream** %8, align 8, !dbg !757
  %13 = icmp ne %struct.stream* %12, null, !dbg !758
  br i1 %13, label %14, label %223, !dbg !759

; <label>:14:                                     ; preds = %10
  %15 = load i32*, i32** %3, align 8, !dbg !760
  %16 = load i32, i32* %15, align 4, !dbg !763
  %17 = icmp eq i32 %16, 1, !dbg !764
  br i1 %17, label %18, label %48, !dbg !765

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %4, align 1, !dbg !766
  %20 = zext i8 %19 to i32, !dbg !766
  %21 = and i32 %20, 192, !dbg !768
  %22 = ashr i32 %21, 6, !dbg !769
  %23 = trunc i32 %22 to i8, !dbg !770
  store i8 %23, i8* %5, align 1, !dbg !771
  %24 = load i8, i8* %5, align 1, !dbg !772
  %25 = zext i8 %24 to i32, !dbg !772
  %26 = and i32 %25, 2, !dbg !774
  %27 = icmp ne i32 %26, 0, !dbg !774
  br i1 %27, label %28, label %46, !dbg !775

; <label>:28:                                     ; preds = %18
  %29 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !776
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !778
  %31 = load i8*, i8** %30, align 8, !dbg !779
  %32 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !779
  store i8* %32, i8** %30, align 8, !dbg !779
  %33 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !780
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !781
  %35 = load i8*, i8** %34, align 8, !dbg !781
  %36 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !782
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 1, !dbg !783
  %38 = load i8*, i8** %37, align 8, !dbg !783
  %39 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !784
  %40 = getelementptr inbounds %struct.stream, %struct.stream* %39, i32 0, i32 0, !dbg !785
  %41 = load i8*, i8** %40, align 8, !dbg !785
  %42 = ptrtoint i8* %38 to i64, !dbg !786
  %43 = ptrtoint i8* %41 to i64, !dbg !786
  %44 = sub i64 %42, %43, !dbg !786
  %45 = trunc i64 %44 to i32, !dbg !782
  call void @sec_decrypt(i8* %35, i32 %45), !dbg !787
  br label %46, !dbg !788

; <label>:46:                                     ; preds = %28, %18
  %47 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !789
  store %struct.stream* %47, %struct.stream** %2, align 8, !dbg !790
  br label %224, !dbg !790

; <label>:48:                                     ; preds = %14
  %49 = load i32, i32* @g_encryption, align 4, !dbg !791
  %50 = icmp ne i32 %49, 0, !dbg !791
  br i1 %50, label %57, label %51, !dbg !793

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* @g_licence_issued, align 4, !dbg !794
  %53 = icmp ne i32 %52, 0, !dbg !794
  br i1 %53, label %214, label %54, !dbg !796

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* @g_licence_error_result, align 4, !dbg !797
  %56 = icmp ne i32 %55, 0, !dbg !797
  br i1 %56, label %214, label %57, !dbg !799

; <label>:57:                                     ; preds = %54, %48
  %58 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !800
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 0, !dbg !803
  %60 = load i8*, i8** %59, align 8, !dbg !803
  %61 = bitcast i8* %60 to i16*, !dbg !804
  %62 = load i16, i16* %61, align 2, !dbg !804
  store i16 %62, i16* %6, align 2, !dbg !805
  %63 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !806
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !807
  %65 = load i8*, i8** %64, align 8, !dbg !808
  %66 = getelementptr inbounds i8, i8* %65, i64 2, !dbg !808
  store i8* %66, i8** %64, align 8, !dbg !808
  %67 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !809
  %68 = getelementptr inbounds %struct.stream, %struct.stream* %67, i32 0, i32 0, !dbg !810
  %69 = load i8*, i8** %68, align 8, !dbg !811
  %70 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !811
  store i8* %70, i8** %68, align 8, !dbg !811
  %71 = load i32, i32* @g_encryption, align 4, !dbg !812
  %72 = icmp ne i32 %71, 0, !dbg !812
  br i1 %72, label %73, label %201, !dbg !814

; <label>:73:                                     ; preds = %57
  %74 = load i16, i16* %6, align 2, !dbg !815
  %75 = zext i16 %74 to i32, !dbg !815
  %76 = and i32 %75, 8, !dbg !818
  %77 = icmp ne i32 %76, 0, !dbg !818
  br i1 %77, label %78, label %96, !dbg !819

; <label>:78:                                     ; preds = %73
  %79 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !820
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !822
  %81 = load i8*, i8** %80, align 8, !dbg !823
  %82 = getelementptr inbounds i8, i8* %81, i64 8, !dbg !823
  store i8* %82, i8** %80, align 8, !dbg !823
  %83 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !824
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0, !dbg !825
  %85 = load i8*, i8** %84, align 8, !dbg !825
  %86 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !826
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 1, !dbg !827
  %88 = load i8*, i8** %87, align 8, !dbg !827
  %89 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !828
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 0, !dbg !829
  %91 = load i8*, i8** %90, align 8, !dbg !829
  %92 = ptrtoint i8* %88 to i64, !dbg !830
  %93 = ptrtoint i8* %91 to i64, !dbg !830
  %94 = sub i64 %92, %93, !dbg !830
  %95 = trunc i64 %94 to i32, !dbg !826
  call void @sec_decrypt(i8* %85, i32 %95), !dbg !831
  br label %96, !dbg !832

; <label>:96:                                     ; preds = %78, %73
  %97 = load i16, i16* %6, align 2, !dbg !833
  %98 = zext i16 %97 to i32, !dbg !833
  %99 = and i32 %98, 128, !dbg !835
  %100 = icmp ne i32 %99, 0, !dbg !835
  br i1 %100, label %101, label %103, !dbg !836

; <label>:101:                                    ; preds = %96
  %102 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !837
  call void @licence_process(%struct.stream* %102), !dbg !839
  br label %10, !dbg !840, !llvm.loop !841

; <label>:103:                                    ; preds = %96
  %104 = load i16, i16* %6, align 2, !dbg !842
  %105 = zext i16 %104 to i32, !dbg !842
  %106 = and i32 %105, 1024, !dbg !844
  %107 = icmp ne i32 %106, 0, !dbg !844
  br i1 %107, label %108, label %200, !dbg !845

; <label>:108:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata i8* %9, metadata !846, metadata !99), !dbg !848
  %109 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !849
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0, !dbg !850
  %111 = load i8*, i8** %110, align 8, !dbg !851
  %112 = getelementptr inbounds i8, i8* %111, i64 8, !dbg !851
  store i8* %112, i8** %110, align 8, !dbg !851
  %113 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !852
  %114 = getelementptr inbounds %struct.stream, %struct.stream* %113, i32 0, i32 0, !dbg !853
  %115 = load i8*, i8** %114, align 8, !dbg !853
  %116 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !854
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 1, !dbg !855
  %118 = load i8*, i8** %117, align 8, !dbg !855
  %119 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !856
  %120 = getelementptr inbounds %struct.stream, %struct.stream* %119, i32 0, i32 0, !dbg !857
  %121 = load i8*, i8** %120, align 8, !dbg !857
  %122 = ptrtoint i8* %118 to i64, !dbg !858
  %123 = ptrtoint i8* %121 to i64, !dbg !858
  %124 = sub i64 %122, %123, !dbg !858
  %125 = trunc i64 %124 to i32, !dbg !854
  call void @sec_decrypt(i8* %115, i32 %125), !dbg !859
  %126 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !860
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !862
  %128 = load i8*, i8** %127, align 8, !dbg !862
  %129 = getelementptr inbounds i8, i8* %128, i64 0, !dbg !860
  %130 = load i8, i8* %129, align 1, !dbg !860
  %131 = zext i8 %130 to i32, !dbg !860
  %132 = icmp eq i32 %131, 0, !dbg !863
  br i1 %132, label %133, label %199, !dbg !864

; <label>:133:                                    ; preds = %108
  %134 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !865
  %135 = getelementptr inbounds %struct.stream, %struct.stream* %134, i32 0, i32 0, !dbg !867
  %136 = load i8*, i8** %135, align 8, !dbg !867
  %137 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !865
  %138 = load i8, i8* %137, align 1, !dbg !865
  %139 = zext i8 %138 to i32, !dbg !865
  %140 = icmp eq i32 %139, 4, !dbg !868
  br i1 %140, label %141, label %199, !dbg !869

; <label>:141:                                    ; preds = %133
  %142 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !870
  %143 = getelementptr inbounds %struct.stream, %struct.stream* %142, i32 0, i32 0, !dbg !872
  %144 = load i8*, i8** %143, align 8, !dbg !872
  %145 = getelementptr inbounds i8, i8* %144, i64 0, !dbg !870
  %146 = load i8, i8* %145, align 1, !dbg !870
  store i8 %146, i8* %9, align 1, !dbg !873
  %147 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !874
  %148 = getelementptr inbounds %struct.stream, %struct.stream* %147, i32 0, i32 0, !dbg !875
  %149 = load i8*, i8** %148, align 8, !dbg !875
  %150 = getelementptr inbounds i8, i8* %149, i64 2, !dbg !874
  %151 = load i8, i8* %150, align 1, !dbg !874
  %152 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !876
  %153 = getelementptr inbounds %struct.stream, %struct.stream* %152, i32 0, i32 0, !dbg !877
  %154 = load i8*, i8** %153, align 8, !dbg !877
  %155 = getelementptr inbounds i8, i8* %154, i64 0, !dbg !876
  store i8 %151, i8* %155, align 1, !dbg !878
  %156 = load i8, i8* %9, align 1, !dbg !879
  %157 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !880
  %158 = getelementptr inbounds %struct.stream, %struct.stream* %157, i32 0, i32 0, !dbg !881
  %159 = load i8*, i8** %158, align 8, !dbg !881
  %160 = getelementptr inbounds i8, i8* %159, i64 2, !dbg !880
  store i8 %156, i8* %160, align 1, !dbg !882
  %161 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !883
  %162 = getelementptr inbounds %struct.stream, %struct.stream* %161, i32 0, i32 0, !dbg !884
  %163 = load i8*, i8** %162, align 8, !dbg !884
  %164 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !883
  %165 = load i8, i8* %164, align 1, !dbg !883
  store i8 %165, i8* %9, align 1, !dbg !885
  %166 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !886
  %167 = getelementptr inbounds %struct.stream, %struct.stream* %166, i32 0, i32 0, !dbg !887
  %168 = load i8*, i8** %167, align 8, !dbg !887
  %169 = getelementptr inbounds i8, i8* %168, i64 3, !dbg !886
  %170 = load i8, i8* %169, align 1, !dbg !886
  %171 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !888
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 0, !dbg !889
  %173 = load i8*, i8** %172, align 8, !dbg !889
  %174 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !888
  store i8 %170, i8* %174, align 1, !dbg !890
  %175 = load i8, i8* %9, align 1, !dbg !891
  %176 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !892
  %177 = getelementptr inbounds %struct.stream, %struct.stream* %176, i32 0, i32 0, !dbg !893
  %178 = load i8*, i8** %177, align 8, !dbg !893
  %179 = getelementptr inbounds i8, i8* %178, i64 3, !dbg !892
  store i8 %175, i8* %179, align 1, !dbg !894
  %180 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !895
  %181 = getelementptr inbounds %struct.stream, %struct.stream* %180, i32 0, i32 0, !dbg !896
  %182 = load i8*, i8** %181, align 8, !dbg !896
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !895
  %184 = load i8, i8* %183, align 1, !dbg !895
  store i8 %184, i8* %9, align 1, !dbg !897
  %185 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !898
  %186 = getelementptr inbounds %struct.stream, %struct.stream* %185, i32 0, i32 0, !dbg !899
  %187 = load i8*, i8** %186, align 8, !dbg !899
  %188 = getelementptr inbounds i8, i8* %187, i64 3, !dbg !898
  %189 = load i8, i8* %188, align 1, !dbg !898
  %190 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !900
  %191 = getelementptr inbounds %struct.stream, %struct.stream* %190, i32 0, i32 0, !dbg !901
  %192 = load i8*, i8** %191, align 8, !dbg !901
  %193 = getelementptr inbounds i8, i8* %192, i64 2, !dbg !900
  store i8 %189, i8* %193, align 1, !dbg !902
  %194 = load i8, i8* %9, align 1, !dbg !903
  %195 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !904
  %196 = getelementptr inbounds %struct.stream, %struct.stream* %195, i32 0, i32 0, !dbg !905
  %197 = load i8*, i8** %196, align 8, !dbg !905
  %198 = getelementptr inbounds i8, i8* %197, i64 3, !dbg !904
  store i8 %194, i8* %198, align 1, !dbg !906
  br label %199, !dbg !907

; <label>:199:                                    ; preds = %141, %133, %108
  br label %200, !dbg !908

; <label>:200:                                    ; preds = %199, %103
  br label %213, !dbg !909

; <label>:201:                                    ; preds = %57
  %202 = load i16, i16* %6, align 2, !dbg !910
  %203 = zext i16 %202 to i32, !dbg !910
  %204 = and i32 %203, 128, !dbg !913
  %205 = icmp ne i32 %204, 0, !dbg !913
  br i1 %205, label %206, label %208, !dbg !914

; <label>:206:                                    ; preds = %201
  %207 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !915
  call void @licence_process(%struct.stream* %207), !dbg !917
  br label %10, !dbg !918, !llvm.loop !841

; <label>:208:                                    ; preds = %201
  %209 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !919
  %210 = getelementptr inbounds %struct.stream, %struct.stream* %209, i32 0, i32 0, !dbg !920
  %211 = load i8*, i8** %210, align 8, !dbg !921
  %212 = getelementptr inbounds i8, i8* %211, i64 -4, !dbg !921
  store i8* %212, i8** %210, align 8, !dbg !921
  br label %213

; <label>:213:                                    ; preds = %208, %200
  br label %214, !dbg !922

; <label>:214:                                    ; preds = %213, %54, %51
  %215 = load i16, i16* %7, align 2, !dbg !923
  %216 = zext i16 %215 to i32, !dbg !923
  %217 = icmp ne i32 %216, 1003, !dbg !925
  br i1 %217, label %218, label %221, !dbg !926

; <label>:218:                                    ; preds = %214
  %219 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !927
  %220 = load i16, i16* %7, align 2, !dbg !929
  call void @channel_process(%struct.stream* %219, i16 zeroext %220), !dbg !930
  br label %10, !dbg !931, !llvm.loop !841

; <label>:221:                                    ; preds = %214
  %222 = load %struct.stream*, %struct.stream** %8, align 8, !dbg !932
  store %struct.stream* %222, %struct.stream** %2, align 8, !dbg !933
  br label %224, !dbg !933

; <label>:223:                                    ; preds = %10
  store %struct.stream* null, %struct.stream** %2, align 8, !dbg !934
  br label %224, !dbg !934

; <label>:224:                                    ; preds = %223, %221, %46
  %225 = load %struct.stream*, %struct.stream** %2, align 8, !dbg !935
  ret %struct.stream* %225, !dbg !935
}

declare %struct.stream* @mcs_recv(i16*, i32*, i8*) #3

declare void @licence_process(%struct.stream*) #3

declare void @channel_process(%struct.stream*, i16 zeroext) #3

; Function Attrs: nounwind uwtable
define i32 @sec_connect(i8*, i8*, i8*, i8*, i32) #0 !dbg !936 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stream, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !939, metadata !99), !dbg !940
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !941, metadata !99), !dbg !942
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !943, metadata !99), !dbg !944
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !945, metadata !99), !dbg !946
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !947, metadata !99), !dbg !948
  call void @llvm.dbg.declare(metadata i32* %12, metadata !949, metadata !99), !dbg !950
  call void @llvm.dbg.declare(metadata %struct.stream* %13, metadata !951, metadata !99), !dbg !952
  %14 = load i8*, i8** %7, align 8, !dbg !953
  %15 = load i8*, i8** %8, align 8, !dbg !955
  %16 = load i8*, i8** %9, align 8, !dbg !956
  %17 = load i8*, i8** %10, align 8, !dbg !957
  %18 = load i32, i32* %11, align 4, !dbg !958
  %19 = call i32 @mcs_connect_start(i8* %14, i8* %15, i8* %16, i8* %17, i32 %18, i32* %12), !dbg !959
  %20 = icmp ne i32 %19, 0, !dbg !959
  br i1 %20, label %22, label %21, !dbg !960

; <label>:21:                                     ; preds = %5
  store i32 0, i32* %6, align 4, !dbg !961
  br label %40, !dbg !961

; <label>:22:                                     ; preds = %5
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 3, !dbg !962
  store i32 512, i32* %23, align 8, !dbg !963
  %24 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 3, !dbg !964
  %25 = load i32, i32* %24, align 8, !dbg !964
  %26 = call i8* @xmalloc(i32 %25), !dbg !965
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 2, !dbg !966
  store i8* %26, i8** %27, align 8, !dbg !967
  %28 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 0, !dbg !968
  store i8* %26, i8** %28, align 8, !dbg !969
  %29 = load i32, i32* %12, align 4, !dbg !970
  call void @sec_out_mcs_connect_initial_pdu(%struct.stream* %13, i32 %29), !dbg !971
  %30 = call i32 @mcs_connect_finalize(%struct.stream* %13), !dbg !972
  %31 = icmp ne i32 %30, 0, !dbg !972
  br i1 %31, label %33, label %32, !dbg !974

; <label>:32:                                     ; preds = %22
  store i32 0, i32* %6, align 4, !dbg !975
  br label %40, !dbg !975

; <label>:33:                                     ; preds = %22
  %34 = load i32, i32* @g_encryption, align 4, !dbg !976
  %35 = icmp ne i32 %34, 0, !dbg !976
  br i1 %35, label %36, label %37, !dbg !978

; <label>:36:                                     ; preds = %33
  call void @sec_establish_key(), !dbg !979
  br label %37, !dbg !979

; <label>:37:                                     ; preds = %36, %33
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %13, i32 0, i32 2, !dbg !980
  %39 = load i8*, i8** %38, align 8, !dbg !980
  call void @xfree(i8* %39), !dbg !981
  store i32 1, i32* %6, align 4, !dbg !982
  br label %40, !dbg !982

; <label>:40:                                     ; preds = %37, %32, %21
  %41 = load i32, i32* %6, align 4, !dbg !983
  ret i32 %41, !dbg !983
}

declare i32 @mcs_connect_start(i8*, i8*, i8*, i8*, i32, i32*) #3

declare i8* @xmalloc(i32) #3

; Function Attrs: nounwind uwtable
define internal void @sec_out_mcs_connect_initial_pdu(%struct.stream*, i32) #0 !dbg !984 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !985, metadata !99), !dbg !986
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !987, metadata !99), !dbg !988
  call void @llvm.dbg.declare(metadata i32* %5, metadata !989, metadata !99), !dbg !990
  %15 = load i32, i32* @g_dpi, align 4, !dbg !991
  %16 = icmp sgt i32 %15, 0, !dbg !992
  %17 = select i1 %16, i32 18, i32 0, !dbg !991
  %18 = add nsw i32 254, %17, !dbg !993
  store i32 %18, i32* %5, align 4, !dbg !990
  call void @llvm.dbg.declare(metadata i32* %6, metadata !994, metadata !99), !dbg !995
  call void @llvm.dbg.declare(metadata i32* %7, metadata !996, metadata !99), !dbg !997
  store i32 524289, i32* %7, align 4, !dbg !997
  call void @llvm.dbg.declare(metadata i16* %8, metadata !998, metadata !99), !dbg !999
  store i16 1, i16* %8, align 2, !dbg !999
  call void @llvm.dbg.declare(metadata i16* %9, metadata !1000, metadata !99), !dbg !1001
  store i16 11, i16* %9, align 2, !dbg !1001
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1002, metadata !99), !dbg !1003
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1004, metadata !99), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1006, metadata !99), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1008, metadata !99), !dbg !1009
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.sec_out_mcs_connect_initial_pdu, i32 0, i32 0)), !dbg !1010
  %19 = load i32, i32* @g_rdp_version, align 4, !dbg !1011
  %20 = icmp uge i32 %19, 5, !dbg !1013
  br i1 %20, label %21, label %22, !dbg !1014

; <label>:21:                                     ; preds = %2
  store i32 524292, i32* %7, align 4, !dbg !1015
  br label %22, !dbg !1016

; <label>:22:                                     ; preds = %21, %2
  %23 = load i32, i32* @g_num_channels, align 4, !dbg !1017
  %24 = icmp ugt i32 %23, 0, !dbg !1019
  br i1 %24, label %25, label %31, !dbg !1020

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* @g_num_channels, align 4, !dbg !1021
  %27 = mul i32 %26, 12, !dbg !1022
  %28 = add i32 %27, 8, !dbg !1023
  %29 = load i32, i32* %5, align 4, !dbg !1024
  %30 = add i32 %29, %28, !dbg !1024
  store i32 %30, i32* %5, align 4, !dbg !1024
  br label %31, !dbg !1025

; <label>:31:                                     ; preds = %25, %22
  %32 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1026
  %33 = getelementptr inbounds %struct.stream, %struct.stream* %32, i32 0, i32 0, !dbg !1028
  %34 = load i8*, i8** %33, align 8, !dbg !1029
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !1029
  store i8* %35, i8** %33, align 8, !dbg !1029
  store i8 0, i8* %34, align 1, !dbg !1030
  %36 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1031
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 0, !dbg !1032
  %38 = load i8*, i8** %37, align 8, !dbg !1033
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !1033
  store i8* %39, i8** %37, align 8, !dbg !1033
  store i8 5, i8* %38, align 1, !dbg !1034
  %40 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1035
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0, !dbg !1037
  %42 = load i8*, i8** %41, align 8, !dbg !1038
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !1038
  store i8* %43, i8** %41, align 8, !dbg !1038
  store i8 0, i8* %42, align 1, !dbg !1039
  %44 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1040
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !1041
  %46 = load i8*, i8** %45, align 8, !dbg !1042
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !1042
  store i8* %47, i8** %45, align 8, !dbg !1042
  store i8 20, i8* %46, align 1, !dbg !1043
  %48 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1044
  %49 = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 0, !dbg !1045
  %50 = load i8*, i8** %49, align 8, !dbg !1046
  %51 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !1046
  store i8* %51, i8** %49, align 8, !dbg !1046
  store i8 124, i8* %50, align 1, !dbg !1047
  %52 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1048
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !1050
  %54 = load i8*, i8** %53, align 8, !dbg !1051
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !1051
  store i8* %55, i8** %53, align 8, !dbg !1051
  store i8 0, i8* %54, align 1, !dbg !1052
  %56 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1053
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !1054
  %58 = load i8*, i8** %57, align 8, !dbg !1055
  %59 = getelementptr inbounds i8, i8* %58, i32 1, !dbg !1055
  store i8* %59, i8** %57, align 8, !dbg !1055
  store i8 1, i8* %58, align 1, !dbg !1056
  %60 = load i32, i32* %5, align 4, !dbg !1057
  %61 = or i32 %60, 32768, !dbg !1059
  %62 = ashr i32 %61, 8, !dbg !1060
  %63 = and i32 %62, 255, !dbg !1061
  %64 = trunc i32 %63 to i8, !dbg !1062
  %65 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1063
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !1064
  %67 = load i8*, i8** %66, align 8, !dbg !1065
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !1065
  store i8* %68, i8** %66, align 8, !dbg !1065
  store i8 %64, i8* %67, align 1, !dbg !1066
  %69 = load i32, i32* %5, align 4, !dbg !1067
  %70 = or i32 %69, 32768, !dbg !1068
  %71 = and i32 %70, 255, !dbg !1069
  %72 = trunc i32 %71 to i8, !dbg !1070
  %73 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1071
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %73, i32 0, i32 0, !dbg !1072
  %75 = load i8*, i8** %74, align 8, !dbg !1073
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !1073
  store i8* %76, i8** %74, align 8, !dbg !1073
  store i8 %72, i8* %75, align 1, !dbg !1074
  %77 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1075
  %78 = getelementptr inbounds %struct.stream, %struct.stream* %77, i32 0, i32 0, !dbg !1077
  %79 = load i8*, i8** %78, align 8, !dbg !1078
  %80 = getelementptr inbounds i8, i8* %79, i32 1, !dbg !1078
  store i8* %80, i8** %78, align 8, !dbg !1078
  store i8 0, i8* %79, align 1, !dbg !1079
  %81 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1080
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 0, !dbg !1081
  %83 = load i8*, i8** %82, align 8, !dbg !1082
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !1082
  store i8* %84, i8** %82, align 8, !dbg !1082
  store i8 8, i8* %83, align 1, !dbg !1083
  %85 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1084
  %86 = getelementptr inbounds %struct.stream, %struct.stream* %85, i32 0, i32 0, !dbg !1086
  %87 = load i8*, i8** %86, align 8, !dbg !1087
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !1087
  store i8* %88, i8** %86, align 8, !dbg !1087
  store i8 0, i8* %87, align 1, !dbg !1088
  %89 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1089
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 0, !dbg !1090
  %91 = load i8*, i8** %90, align 8, !dbg !1091
  %92 = getelementptr inbounds i8, i8* %91, i32 1, !dbg !1091
  store i8* %92, i8** %90, align 8, !dbg !1091
  store i8 16, i8* %91, align 1, !dbg !1092
  %93 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1093
  %94 = getelementptr inbounds %struct.stream, %struct.stream* %93, i32 0, i32 0, !dbg !1094
  %95 = load i8*, i8** %94, align 8, !dbg !1095
  %96 = getelementptr inbounds i8, i8* %95, i32 1, !dbg !1095
  store i8* %96, i8** %94, align 8, !dbg !1095
  store i8 0, i8* %95, align 1, !dbg !1096
  %97 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1097
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 0, !dbg !1099
  %99 = load i8*, i8** %98, align 8, !dbg !1099
  %100 = bitcast i8* %99 to i16*, !dbg !1100
  store i16 -16383, i16* %100, align 2, !dbg !1101
  %101 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1102
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %101, i32 0, i32 0, !dbg !1103
  %103 = load i8*, i8** %102, align 8, !dbg !1104
  %104 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !1104
  store i8* %104, i8** %102, align 8, !dbg !1104
  %105 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1105
  %106 = getelementptr inbounds %struct.stream, %struct.stream* %105, i32 0, i32 0, !dbg !1106
  %107 = load i8*, i8** %106, align 8, !dbg !1107
  %108 = getelementptr inbounds i8, i8* %107, i32 1, !dbg !1107
  store i8* %108, i8** %106, align 8, !dbg !1107
  store i8 0, i8* %107, align 1, !dbg !1108
  %109 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1109
  %110 = getelementptr inbounds %struct.stream, %struct.stream* %109, i32 0, i32 0, !dbg !1111
  %111 = load i8*, i8** %110, align 8, !dbg !1111
  %112 = bitcast i8* %111 to i32*, !dbg !1112
  store i32 1633908036, i32* %112, align 4, !dbg !1113
  %113 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1114
  %114 = getelementptr inbounds %struct.stream, %struct.stream* %113, i32 0, i32 0, !dbg !1115
  %115 = load i8*, i8** %114, align 8, !dbg !1116
  %116 = getelementptr inbounds i8, i8* %115, i64 4, !dbg !1116
  store i8* %116, i8** %114, align 8, !dbg !1116
  %117 = load i32, i32* %5, align 4, !dbg !1117
  %118 = sub nsw i32 %117, 14, !dbg !1119
  %119 = or i32 %118, 32768, !dbg !1120
  %120 = ashr i32 %119, 8, !dbg !1121
  %121 = and i32 %120, 255, !dbg !1122
  %122 = trunc i32 %121 to i8, !dbg !1123
  %123 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1124
  %124 = getelementptr inbounds %struct.stream, %struct.stream* %123, i32 0, i32 0, !dbg !1125
  %125 = load i8*, i8** %124, align 8, !dbg !1126
  %126 = getelementptr inbounds i8, i8* %125, i32 1, !dbg !1126
  store i8* %126, i8** %124, align 8, !dbg !1126
  store i8 %122, i8* %125, align 1, !dbg !1127
  %127 = load i32, i32* %5, align 4, !dbg !1128
  %128 = sub nsw i32 %127, 14, !dbg !1129
  %129 = or i32 %128, 32768, !dbg !1130
  %130 = and i32 %129, 255, !dbg !1131
  %131 = trunc i32 %130 to i8, !dbg !1132
  %132 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1133
  %133 = getelementptr inbounds %struct.stream, %struct.stream* %132, i32 0, i32 0, !dbg !1134
  %134 = load i8*, i8** %133, align 8, !dbg !1135
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !1135
  store i8* %135, i8** %133, align 8, !dbg !1135
  store i8 %131, i8* %134, align 1, !dbg !1136
  %136 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1137
  %137 = getelementptr inbounds %struct.stream, %struct.stream* %136, i32 0, i32 0, !dbg !1139
  %138 = load i8*, i8** %137, align 8, !dbg !1139
  %139 = bitcast i8* %138 to i16*, !dbg !1140
  store i16 -16383, i16* %139, align 2, !dbg !1141
  %140 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1142
  %141 = getelementptr inbounds %struct.stream, %struct.stream* %140, i32 0, i32 0, !dbg !1143
  %142 = load i8*, i8** %141, align 8, !dbg !1144
  %143 = getelementptr inbounds i8, i8* %142, i64 2, !dbg !1144
  store i8* %143, i8** %141, align 8, !dbg !1144
  %144 = load i32, i32* @g_dpi, align 4, !dbg !1145
  %145 = icmp sgt i32 %144, 0, !dbg !1147
  %146 = select i1 %145, i32 18, i32 0, !dbg !1145
  %147 = add nsw i32 216, %146, !dbg !1148
  %148 = trunc i32 %147 to i16, !dbg !1149
  %149 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1150
  %150 = getelementptr inbounds %struct.stream, %struct.stream* %149, i32 0, i32 0, !dbg !1151
  %151 = load i8*, i8** %150, align 8, !dbg !1151
  %152 = bitcast i8* %151 to i16*, !dbg !1152
  store i16 %148, i16* %152, align 2, !dbg !1153
  %153 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1154
  %154 = getelementptr inbounds %struct.stream, %struct.stream* %153, i32 0, i32 0, !dbg !1155
  %155 = load i8*, i8** %154, align 8, !dbg !1156
  %156 = getelementptr inbounds i8, i8* %155, i64 2, !dbg !1156
  store i8* %156, i8** %154, align 8, !dbg !1156
  %157 = load i32, i32* %7, align 4, !dbg !1157
  %158 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1159
  %159 = getelementptr inbounds %struct.stream, %struct.stream* %158, i32 0, i32 0, !dbg !1160
  %160 = load i8*, i8** %159, align 8, !dbg !1160
  %161 = bitcast i8* %160 to i32*, !dbg !1161
  store i32 %157, i32* %161, align 4, !dbg !1162
  %162 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1163
  %163 = getelementptr inbounds %struct.stream, %struct.stream* %162, i32 0, i32 0, !dbg !1164
  %164 = load i8*, i8** %163, align 8, !dbg !1165
  %165 = getelementptr inbounds i8, i8* %164, i64 4, !dbg !1165
  store i8* %165, i8** %163, align 8, !dbg !1165
  %166 = load i32, i32* @g_requested_session_width, align 4, !dbg !1166
  %167 = trunc i32 %166 to i16, !dbg !1166
  %168 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1168
  %169 = getelementptr inbounds %struct.stream, %struct.stream* %168, i32 0, i32 0, !dbg !1169
  %170 = load i8*, i8** %169, align 8, !dbg !1169
  %171 = bitcast i8* %170 to i16*, !dbg !1170
  store i16 %167, i16* %171, align 2, !dbg !1171
  %172 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1172
  %173 = getelementptr inbounds %struct.stream, %struct.stream* %172, i32 0, i32 0, !dbg !1173
  %174 = load i8*, i8** %173, align 8, !dbg !1174
  %175 = getelementptr inbounds i8, i8* %174, i64 2, !dbg !1174
  store i8* %175, i8** %173, align 8, !dbg !1174
  %176 = load i32, i32* @g_requested_session_height, align 4, !dbg !1175
  %177 = trunc i32 %176 to i16, !dbg !1175
  %178 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1177
  %179 = getelementptr inbounds %struct.stream, %struct.stream* %178, i32 0, i32 0, !dbg !1178
  %180 = load i8*, i8** %179, align 8, !dbg !1178
  %181 = bitcast i8* %180 to i16*, !dbg !1179
  store i16 %177, i16* %181, align 2, !dbg !1180
  %182 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1181
  %183 = getelementptr inbounds %struct.stream, %struct.stream* %182, i32 0, i32 0, !dbg !1182
  %184 = load i8*, i8** %183, align 8, !dbg !1183
  %185 = getelementptr inbounds i8, i8* %184, i64 2, !dbg !1183
  store i8* %185, i8** %183, align 8, !dbg !1183
  %186 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1184
  %187 = getelementptr inbounds %struct.stream, %struct.stream* %186, i32 0, i32 0, !dbg !1186
  %188 = load i8*, i8** %187, align 8, !dbg !1186
  %189 = bitcast i8* %188 to i16*, !dbg !1187
  store i16 -13823, i16* %189, align 2, !dbg !1188
  %190 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1189
  %191 = getelementptr inbounds %struct.stream, %struct.stream* %190, i32 0, i32 0, !dbg !1190
  %192 = load i8*, i8** %191, align 8, !dbg !1191
  %193 = getelementptr inbounds i8, i8* %192, i64 2, !dbg !1191
  store i8* %193, i8** %191, align 8, !dbg !1191
  %194 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1192
  %195 = getelementptr inbounds %struct.stream, %struct.stream* %194, i32 0, i32 0, !dbg !1194
  %196 = load i8*, i8** %195, align 8, !dbg !1194
  %197 = bitcast i8* %196 to i16*, !dbg !1195
  store i16 -22013, i16* %197, align 2, !dbg !1196
  %198 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1197
  %199 = getelementptr inbounds %struct.stream, %struct.stream* %198, i32 0, i32 0, !dbg !1198
  %200 = load i8*, i8** %199, align 8, !dbg !1199
  %201 = getelementptr inbounds i8, i8* %200, i64 2, !dbg !1199
  store i8* %201, i8** %199, align 8, !dbg !1199
  %202 = load i32, i32* @g_keylayout, align 4, !dbg !1200
  %203 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1202
  %204 = getelementptr inbounds %struct.stream, %struct.stream* %203, i32 0, i32 0, !dbg !1203
  %205 = load i8*, i8** %204, align 8, !dbg !1203
  %206 = bitcast i8* %205 to i32*, !dbg !1204
  store i32 %202, i32* %206, align 4, !dbg !1205
  %207 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1206
  %208 = getelementptr inbounds %struct.stream, %struct.stream* %207, i32 0, i32 0, !dbg !1207
  %209 = load i8*, i8** %208, align 8, !dbg !1208
  %210 = getelementptr inbounds i8, i8* %209, i64 4, !dbg !1208
  store i8* %210, i8** %208, align 8, !dbg !1208
  %211 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1209
  %212 = getelementptr inbounds %struct.stream, %struct.stream* %211, i32 0, i32 0, !dbg !1211
  %213 = load i8*, i8** %212, align 8, !dbg !1211
  %214 = bitcast i8* %213 to i32*, !dbg !1212
  store i32 2600, i32* %214, align 4, !dbg !1213
  %215 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1214
  %216 = getelementptr inbounds %struct.stream, %struct.stream* %215, i32 0, i32 0, !dbg !1215
  %217 = load i8*, i8** %216, align 8, !dbg !1216
  %218 = getelementptr inbounds i8, i8* %217, i64 4, !dbg !1216
  store i8* %218, i8** %216, align 8, !dbg !1216
  %219 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1217
  call void @out_utf16s_padded(%struct.stream* %219, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_hostname, i32 0, i32 0), i64 32, i8 zeroext 0), !dbg !1218
  %220 = load i32, i32* @g_keyboard_type, align 4, !dbg !1219
  %221 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1221
  %222 = getelementptr inbounds %struct.stream, %struct.stream* %221, i32 0, i32 0, !dbg !1222
  %223 = load i8*, i8** %222, align 8, !dbg !1222
  %224 = bitcast i8* %223 to i32*, !dbg !1223
  store i32 %220, i32* %224, align 4, !dbg !1224
  %225 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1225
  %226 = getelementptr inbounds %struct.stream, %struct.stream* %225, i32 0, i32 0, !dbg !1226
  %227 = load i8*, i8** %226, align 8, !dbg !1227
  %228 = getelementptr inbounds i8, i8* %227, i64 4, !dbg !1227
  store i8* %228, i8** %226, align 8, !dbg !1227
  %229 = load i32, i32* @g_keyboard_subtype, align 4, !dbg !1228
  %230 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1230
  %231 = getelementptr inbounds %struct.stream, %struct.stream* %230, i32 0, i32 0, !dbg !1231
  %232 = load i8*, i8** %231, align 8, !dbg !1231
  %233 = bitcast i8* %232 to i32*, !dbg !1232
  store i32 %229, i32* %233, align 4, !dbg !1233
  %234 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1234
  %235 = getelementptr inbounds %struct.stream, %struct.stream* %234, i32 0, i32 0, !dbg !1235
  %236 = load i8*, i8** %235, align 8, !dbg !1236
  %237 = getelementptr inbounds i8, i8* %236, i64 4, !dbg !1236
  store i8* %237, i8** %235, align 8, !dbg !1236
  %238 = load i32, i32* @g_keyboard_functionkeys, align 4, !dbg !1237
  %239 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1239
  %240 = getelementptr inbounds %struct.stream, %struct.stream* %239, i32 0, i32 0, !dbg !1240
  %241 = load i8*, i8** %240, align 8, !dbg !1240
  %242 = bitcast i8* %241 to i32*, !dbg !1241
  store i32 %238, i32* %242, align 4, !dbg !1242
  %243 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1243
  %244 = getelementptr inbounds %struct.stream, %struct.stream* %243, i32 0, i32 0, !dbg !1244
  %245 = load i8*, i8** %244, align 8, !dbg !1245
  %246 = getelementptr inbounds i8, i8* %245, i64 4, !dbg !1245
  store i8* %246, i8** %244, align 8, !dbg !1245
  %247 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1246
  %248 = getelementptr inbounds %struct.stream, %struct.stream* %247, i32 0, i32 0, !dbg !1248
  %249 = load i8*, i8** %248, align 8, !dbg !1248
  call void @llvm.memset.p0i8.i64(i8* %249, i8 0, i64 64, i32 1, i1 false), !dbg !1249
  %250 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1250
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %250, i32 0, i32 0, !dbg !1251
  %252 = load i8*, i8** %251, align 8, !dbg !1252
  %253 = getelementptr inbounds i8, i8* %252, i64 64, !dbg !1252
  store i8* %253, i8** %251, align 8, !dbg !1252
  %254 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1253
  %255 = getelementptr inbounds %struct.stream, %struct.stream* %254, i32 0, i32 0, !dbg !1255
  %256 = load i8*, i8** %255, align 8, !dbg !1255
  %257 = bitcast i8* %256 to i16*, !dbg !1256
  store i16 -13823, i16* %257, align 2, !dbg !1257
  %258 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1258
  %259 = getelementptr inbounds %struct.stream, %struct.stream* %258, i32 0, i32 0, !dbg !1259
  %260 = load i8*, i8** %259, align 8, !dbg !1260
  %261 = getelementptr inbounds i8, i8* %260, i64 2, !dbg !1260
  store i8* %261, i8** %259, align 8, !dbg !1260
  %262 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1261
  %263 = getelementptr inbounds %struct.stream, %struct.stream* %262, i32 0, i32 0, !dbg !1263
  %264 = load i8*, i8** %263, align 8, !dbg !1263
  %265 = bitcast i8* %264 to i16*, !dbg !1264
  store i16 1, i16* %265, align 2, !dbg !1265
  %266 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1266
  %267 = getelementptr inbounds %struct.stream, %struct.stream* %266, i32 0, i32 0, !dbg !1267
  %268 = load i8*, i8** %267, align 8, !dbg !1268
  %269 = getelementptr inbounds i8, i8* %268, i64 2, !dbg !1268
  store i8* %269, i8** %267, align 8, !dbg !1268
  %270 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1269
  %271 = getelementptr inbounds %struct.stream, %struct.stream* %270, i32 0, i32 0, !dbg !1271
  %272 = load i8*, i8** %271, align 8, !dbg !1271
  %273 = bitcast i8* %272 to i32*, !dbg !1272
  store i32 0, i32* %273, align 4, !dbg !1273
  %274 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1274
  %275 = getelementptr inbounds %struct.stream, %struct.stream* %274, i32 0, i32 0, !dbg !1275
  %276 = load i8*, i8** %275, align 8, !dbg !1276
  %277 = getelementptr inbounds i8, i8* %276, i64 4, !dbg !1276
  store i8* %277, i8** %275, align 8, !dbg !1276
  %278 = load i32, i32* @g_server_depth, align 4, !dbg !1277
  %279 = icmp slt i32 %278, 24, !dbg !1279
  br i1 %279, label %280, label %282, !dbg !1280

; <label>:280:                                    ; preds = %31
  %281 = load i32, i32* @g_server_depth, align 4, !dbg !1281
  br label %283, !dbg !1283

; <label>:282:                                    ; preds = %31
  br label %283, !dbg !1284

; <label>:283:                                    ; preds = %282, %280
  %284 = phi i32 [ %281, %280 ], [ 24, %282 ], !dbg !1286
  %285 = trunc i32 %284 to i16, !dbg !1288
  %286 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1289
  %287 = getelementptr inbounds %struct.stream, %struct.stream* %286, i32 0, i32 0, !dbg !1290
  %288 = load i8*, i8** %287, align 8, !dbg !1290
  %289 = bitcast i8* %288 to i16*, !dbg !1291
  store i16 %285, i16* %289, align 2, !dbg !1292
  %290 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1293
  %291 = getelementptr inbounds %struct.stream, %struct.stream* %290, i32 0, i32 0, !dbg !1294
  %292 = load i8*, i8** %291, align 8, !dbg !1295
  %293 = getelementptr inbounds i8, i8* %292, i64 2, !dbg !1295
  store i8* %293, i8** %291, align 8, !dbg !1295
  %294 = load i32, i32* @g_server_depth, align 4, !dbg !1296
  %295 = icmp eq i32 %294, 32, !dbg !1298
  br i1 %295, label %296, label %301, !dbg !1299

; <label>:296:                                    ; preds = %283
  %297 = load i16, i16* %8, align 2, !dbg !1300
  %298 = zext i16 %297 to i32, !dbg !1300
  %299 = or i32 %298, 2, !dbg !1300
  %300 = trunc i32 %299 to i16, !dbg !1300
  store i16 %300, i16* %8, align 2, !dbg !1300
  br label %301, !dbg !1301

; <label>:301:                                    ; preds = %296, %283
  %302 = load i16, i16* %9, align 2, !dbg !1302
  %303 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1304
  %304 = getelementptr inbounds %struct.stream, %struct.stream* %303, i32 0, i32 0, !dbg !1305
  %305 = load i8*, i8** %304, align 8, !dbg !1305
  %306 = bitcast i8* %305 to i16*, !dbg !1306
  store i16 %302, i16* %306, align 2, !dbg !1307
  %307 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1308
  %308 = getelementptr inbounds %struct.stream, %struct.stream* %307, i32 0, i32 0, !dbg !1309
  %309 = load i8*, i8** %308, align 8, !dbg !1310
  %310 = getelementptr inbounds i8, i8* %309, i64 2, !dbg !1310
  store i8* %310, i8** %308, align 8, !dbg !1310
  %311 = load i16, i16* %8, align 2, !dbg !1311
  %312 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1313
  %313 = getelementptr inbounds %struct.stream, %struct.stream* %312, i32 0, i32 0, !dbg !1314
  %314 = load i8*, i8** %313, align 8, !dbg !1314
  %315 = bitcast i8* %314 to i16*, !dbg !1315
  store i16 %311, i16* %315, align 2, !dbg !1316
  %316 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1317
  %317 = getelementptr inbounds %struct.stream, %struct.stream* %316, i32 0, i32 0, !dbg !1318
  %318 = load i8*, i8** %317, align 8, !dbg !1319
  %319 = getelementptr inbounds i8, i8* %318, i64 2, !dbg !1319
  store i8* %319, i8** %317, align 8, !dbg !1319
  %320 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1320
  %321 = getelementptr inbounds %struct.stream, %struct.stream* %320, i32 0, i32 0, !dbg !1322
  %322 = load i8*, i8** %321, align 8, !dbg !1322
  call void @llvm.memset.p0i8.i64(i8* %322, i8 0, i64 64, i32 1, i1 false), !dbg !1323
  %323 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1324
  %324 = getelementptr inbounds %struct.stream, %struct.stream* %323, i32 0, i32 0, !dbg !1325
  %325 = load i8*, i8** %324, align 8, !dbg !1326
  %326 = getelementptr inbounds i8, i8* %325, i64 64, !dbg !1326
  store i8* %326, i8** %324, align 8, !dbg !1326
  %327 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1327
  %328 = getelementptr inbounds %struct.stream, %struct.stream* %327, i32 0, i32 0, !dbg !1328
  %329 = load i8*, i8** %328, align 8, !dbg !1329
  %330 = getelementptr inbounds i8, i8* %329, i32 1, !dbg !1329
  store i8* %330, i8** %328, align 8, !dbg !1329
  store i8 0, i8* %329, align 1, !dbg !1330
  %331 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1331
  %332 = getelementptr inbounds %struct.stream, %struct.stream* %331, i32 0, i32 0, !dbg !1332
  %333 = load i8*, i8** %332, align 8, !dbg !1333
  %334 = getelementptr inbounds i8, i8* %333, i32 1, !dbg !1333
  store i8* %334, i8** %332, align 8, !dbg !1333
  store i8 0, i8* %333, align 1, !dbg !1334
  %335 = load i32, i32* %4, align 4, !dbg !1335
  %336 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1337
  %337 = getelementptr inbounds %struct.stream, %struct.stream* %336, i32 0, i32 0, !dbg !1338
  %338 = load i8*, i8** %337, align 8, !dbg !1338
  %339 = bitcast i8* %338 to i32*, !dbg !1339
  store i32 %335, i32* %339, align 4, !dbg !1340
  %340 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1341
  %341 = getelementptr inbounds %struct.stream, %struct.stream* %340, i32 0, i32 0, !dbg !1342
  %342 = load i8*, i8** %341, align 8, !dbg !1343
  %343 = getelementptr inbounds i8, i8* %342, i64 4, !dbg !1343
  store i8* %343, i8** %341, align 8, !dbg !1343
  %344 = load i32, i32* @g_dpi, align 4, !dbg !1344
  %345 = icmp sgt i32 %344, 0, !dbg !1346
  br i1 %345, label %346, label %394, !dbg !1347

; <label>:346:                                    ; preds = %301
  %347 = load i32, i32* @g_requested_session_width, align 4, !dbg !1348
  %348 = load i32, i32* @g_requested_session_height, align 4, !dbg !1350
  %349 = load i32, i32* @g_dpi, align 4, !dbg !1351
  call void @utils_calculate_dpi_scale_factors(i32 %347, i32 %348, i32 %349, i32* %10, i32* %11, i32* %12, i32* %13), !dbg !1352
  %350 = load i32, i32* %10, align 4, !dbg !1353
  %351 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1355
  %352 = getelementptr inbounds %struct.stream, %struct.stream* %351, i32 0, i32 0, !dbg !1356
  %353 = load i8*, i8** %352, align 8, !dbg !1356
  %354 = bitcast i8* %353 to i32*, !dbg !1357
  store i32 %350, i32* %354, align 4, !dbg !1358
  %355 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1359
  %356 = getelementptr inbounds %struct.stream, %struct.stream* %355, i32 0, i32 0, !dbg !1360
  %357 = load i8*, i8** %356, align 8, !dbg !1361
  %358 = getelementptr inbounds i8, i8* %357, i64 4, !dbg !1361
  store i8* %358, i8** %356, align 8, !dbg !1361
  %359 = load i32, i32* %11, align 4, !dbg !1362
  %360 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1364
  %361 = getelementptr inbounds %struct.stream, %struct.stream* %360, i32 0, i32 0, !dbg !1365
  %362 = load i8*, i8** %361, align 8, !dbg !1365
  %363 = bitcast i8* %362 to i32*, !dbg !1366
  store i32 %359, i32* %363, align 4, !dbg !1367
  %364 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1368
  %365 = getelementptr inbounds %struct.stream, %struct.stream* %364, i32 0, i32 0, !dbg !1369
  %366 = load i8*, i8** %365, align 8, !dbg !1370
  %367 = getelementptr inbounds i8, i8* %366, i64 4, !dbg !1370
  store i8* %367, i8** %365, align 8, !dbg !1370
  %368 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1371
  %369 = getelementptr inbounds %struct.stream, %struct.stream* %368, i32 0, i32 0, !dbg !1373
  %370 = load i8*, i8** %369, align 8, !dbg !1373
  %371 = bitcast i8* %370 to i16*, !dbg !1374
  store i16 0, i16* %371, align 2, !dbg !1375
  %372 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1376
  %373 = getelementptr inbounds %struct.stream, %struct.stream* %372, i32 0, i32 0, !dbg !1377
  %374 = load i8*, i8** %373, align 8, !dbg !1378
  %375 = getelementptr inbounds i8, i8* %374, i64 2, !dbg !1378
  store i8* %375, i8** %373, align 8, !dbg !1378
  %376 = load i32, i32* %12, align 4, !dbg !1379
  %377 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1381
  %378 = getelementptr inbounds %struct.stream, %struct.stream* %377, i32 0, i32 0, !dbg !1382
  %379 = load i8*, i8** %378, align 8, !dbg !1382
  %380 = bitcast i8* %379 to i32*, !dbg !1383
  store i32 %376, i32* %380, align 4, !dbg !1384
  %381 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1385
  %382 = getelementptr inbounds %struct.stream, %struct.stream* %381, i32 0, i32 0, !dbg !1386
  %383 = load i8*, i8** %382, align 8, !dbg !1387
  %384 = getelementptr inbounds i8, i8* %383, i64 4, !dbg !1387
  store i8* %384, i8** %382, align 8, !dbg !1387
  %385 = load i32, i32* %13, align 4, !dbg !1388
  %386 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1390
  %387 = getelementptr inbounds %struct.stream, %struct.stream* %386, i32 0, i32 0, !dbg !1391
  %388 = load i8*, i8** %387, align 8, !dbg !1391
  %389 = bitcast i8* %388 to i32*, !dbg !1392
  store i32 %385, i32* %389, align 4, !dbg !1393
  %390 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1394
  %391 = getelementptr inbounds %struct.stream, %struct.stream* %390, i32 0, i32 0, !dbg !1395
  %392 = load i8*, i8** %391, align 8, !dbg !1396
  %393 = getelementptr inbounds i8, i8* %392, i64 4, !dbg !1396
  store i8* %393, i8** %391, align 8, !dbg !1396
  br label %394, !dbg !1397

; <label>:394:                                    ; preds = %346, %301
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1398, metadata !99), !dbg !1399
  store i32 0, i32* %14, align 4, !dbg !1399
  %395 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1400
  %396 = getelementptr inbounds %struct.stream, %struct.stream* %395, i32 0, i32 0, !dbg !1402
  %397 = load i8*, i8** %396, align 8, !dbg !1402
  %398 = bitcast i8* %397 to i16*, !dbg !1403
  store i16 -16380, i16* %398, align 2, !dbg !1404
  %399 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1405
  %400 = getelementptr inbounds %struct.stream, %struct.stream* %399, i32 0, i32 0, !dbg !1406
  %401 = load i8*, i8** %400, align 8, !dbg !1407
  %402 = getelementptr inbounds i8, i8* %401, i64 2, !dbg !1407
  store i8* %402, i8** %400, align 8, !dbg !1407
  %403 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1408
  %404 = getelementptr inbounds %struct.stream, %struct.stream* %403, i32 0, i32 0, !dbg !1410
  %405 = load i8*, i8** %404, align 8, !dbg !1410
  %406 = bitcast i8* %405 to i16*, !dbg !1411
  store i16 12, i16* %406, align 2, !dbg !1412
  %407 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1413
  %408 = getelementptr inbounds %struct.stream, %struct.stream* %407, i32 0, i32 0, !dbg !1414
  %409 = load i8*, i8** %408, align 8, !dbg !1415
  %410 = getelementptr inbounds i8, i8* %409, i64 2, !dbg !1415
  store i8* %410, i8** %408, align 8, !dbg !1415
  %411 = load i32, i32* %14, align 4, !dbg !1416
  %412 = or i32 %411, 1, !dbg !1416
  store i32 %412, i32* %14, align 4, !dbg !1416
  %413 = load i32, i32* %14, align 4, !dbg !1417
  %414 = or i32 %413, 8, !dbg !1417
  store i32 %414, i32* %14, align 4, !dbg !1417
  %415 = load i32, i32* @g_console_session, align 4, !dbg !1418
  %416 = icmp ne i32 %415, 0, !dbg !1418
  br i1 %416, label %420, label %417, !dbg !1420

; <label>:417:                                    ; preds = %394
  %418 = load i32, i32* @g_redirect_session_id, align 4, !dbg !1421
  %419 = icmp ne i32 %418, 0, !dbg !1423
  br i1 %419, label %420, label %423, !dbg !1424

; <label>:420:                                    ; preds = %417, %394
  %421 = load i32, i32* %14, align 4, !dbg !1425
  %422 = or i32 %421, 2, !dbg !1425
  store i32 %422, i32* %14, align 4, !dbg !1425
  br label %423, !dbg !1426

; <label>:423:                                    ; preds = %420, %417
  %424 = load i32, i32* %14, align 4, !dbg !1427
  %425 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1429
  %426 = getelementptr inbounds %struct.stream, %struct.stream* %425, i32 0, i32 0, !dbg !1430
  %427 = load i8*, i8** %426, align 8, !dbg !1430
  %428 = bitcast i8* %427 to i32*, !dbg !1431
  store i32 %424, i32* %428, align 4, !dbg !1432
  %429 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1433
  %430 = getelementptr inbounds %struct.stream, %struct.stream* %429, i32 0, i32 0, !dbg !1434
  %431 = load i8*, i8** %430, align 8, !dbg !1435
  %432 = getelementptr inbounds i8, i8* %431, i64 4, !dbg !1435
  store i8* %432, i8** %430, align 8, !dbg !1435
  %433 = load i32, i32* @g_redirect_session_id, align 4, !dbg !1436
  %434 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1438
  %435 = getelementptr inbounds %struct.stream, %struct.stream* %434, i32 0, i32 0, !dbg !1439
  %436 = load i8*, i8** %435, align 8, !dbg !1439
  %437 = bitcast i8* %436 to i32*, !dbg !1440
  store i32 %433, i32* %437, align 4, !dbg !1441
  %438 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1442
  %439 = getelementptr inbounds %struct.stream, %struct.stream* %438, i32 0, i32 0, !dbg !1443
  %440 = load i8*, i8** %439, align 8, !dbg !1444
  %441 = getelementptr inbounds i8, i8* %440, i64 4, !dbg !1444
  store i8* %441, i8** %439, align 8, !dbg !1444
  %442 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1445
  %443 = getelementptr inbounds %struct.stream, %struct.stream* %442, i32 0, i32 0, !dbg !1447
  %444 = load i8*, i8** %443, align 8, !dbg !1447
  %445 = bitcast i8* %444 to i16*, !dbg !1448
  store i16 -16382, i16* %445, align 2, !dbg !1449
  %446 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1450
  %447 = getelementptr inbounds %struct.stream, %struct.stream* %446, i32 0, i32 0, !dbg !1451
  %448 = load i8*, i8** %447, align 8, !dbg !1452
  %449 = getelementptr inbounds i8, i8* %448, i64 2, !dbg !1452
  store i8* %449, i8** %447, align 8, !dbg !1452
  %450 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1453
  %451 = getelementptr inbounds %struct.stream, %struct.stream* %450, i32 0, i32 0, !dbg !1455
  %452 = load i8*, i8** %451, align 8, !dbg !1455
  %453 = bitcast i8* %452 to i16*, !dbg !1456
  store i16 12, i16* %453, align 2, !dbg !1457
  %454 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1458
  %455 = getelementptr inbounds %struct.stream, %struct.stream* %454, i32 0, i32 0, !dbg !1459
  %456 = load i8*, i8** %455, align 8, !dbg !1460
  %457 = getelementptr inbounds i8, i8* %456, i64 2, !dbg !1460
  store i8* %457, i8** %455, align 8, !dbg !1460
  %458 = load i32, i32* @g_encryption, align 4, !dbg !1461
  %459 = icmp ne i32 %458, 0, !dbg !1461
  %460 = select i1 %459, i32 3, i32 0, !dbg !1461
  %461 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1463
  %462 = getelementptr inbounds %struct.stream, %struct.stream* %461, i32 0, i32 0, !dbg !1464
  %463 = load i8*, i8** %462, align 8, !dbg !1464
  %464 = bitcast i8* %463 to i32*, !dbg !1465
  store i32 %460, i32* %464, align 4, !dbg !1466
  %465 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1467
  %466 = getelementptr inbounds %struct.stream, %struct.stream* %465, i32 0, i32 0, !dbg !1468
  %467 = load i8*, i8** %466, align 8, !dbg !1469
  %468 = getelementptr inbounds i8, i8* %467, i64 4, !dbg !1469
  store i8* %468, i8** %466, align 8, !dbg !1469
  %469 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1470
  %470 = getelementptr inbounds %struct.stream, %struct.stream* %469, i32 0, i32 0, !dbg !1472
  %471 = load i8*, i8** %470, align 8, !dbg !1472
  %472 = bitcast i8* %471 to i32*, !dbg !1473
  store i32 0, i32* %472, align 4, !dbg !1474
  %473 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1475
  %474 = getelementptr inbounds %struct.stream, %struct.stream* %473, i32 0, i32 0, !dbg !1476
  %475 = load i8*, i8** %474, align 8, !dbg !1477
  %476 = getelementptr inbounds i8, i8* %475, i64 4, !dbg !1477
  store i8* %476, i8** %474, align 8, !dbg !1477
  %477 = load i32, i32* @g_num_channels, align 4, !dbg !1478
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0), i32 %477), !dbg !1479
  %478 = load i32, i32* @g_num_channels, align 4, !dbg !1480
  %479 = icmp ugt i32 %478, 0, !dbg !1482
  br i1 %479, label %480, label %588, !dbg !1483

; <label>:480:                                    ; preds = %423
  %481 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1484
  %482 = getelementptr inbounds %struct.stream, %struct.stream* %481, i32 0, i32 0, !dbg !1487
  %483 = load i8*, i8** %482, align 8, !dbg !1487
  %484 = bitcast i8* %483 to i16*, !dbg !1488
  store i16 -16381, i16* %484, align 2, !dbg !1489
  %485 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1490
  %486 = getelementptr inbounds %struct.stream, %struct.stream* %485, i32 0, i32 0, !dbg !1491
  %487 = load i8*, i8** %486, align 8, !dbg !1492
  %488 = getelementptr inbounds i8, i8* %487, i64 2, !dbg !1492
  store i8* %488, i8** %486, align 8, !dbg !1492
  %489 = load i32, i32* @g_num_channels, align 4, !dbg !1493
  %490 = mul i32 %489, 12, !dbg !1495
  %491 = add i32 %490, 8, !dbg !1496
  %492 = trunc i32 %491 to i16, !dbg !1493
  %493 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1497
  %494 = getelementptr inbounds %struct.stream, %struct.stream* %493, i32 0, i32 0, !dbg !1498
  %495 = load i8*, i8** %494, align 8, !dbg !1498
  %496 = bitcast i8* %495 to i16*, !dbg !1499
  store i16 %492, i16* %496, align 2, !dbg !1500
  %497 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1501
  %498 = getelementptr inbounds %struct.stream, %struct.stream* %497, i32 0, i32 0, !dbg !1502
  %499 = load i8*, i8** %498, align 8, !dbg !1503
  %500 = getelementptr inbounds i8, i8* %499, i64 2, !dbg !1503
  store i8* %500, i8** %498, align 8, !dbg !1503
  %501 = load i32, i32* @g_num_channels, align 4, !dbg !1504
  %502 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1506
  %503 = getelementptr inbounds %struct.stream, %struct.stream* %502, i32 0, i32 0, !dbg !1507
  %504 = load i8*, i8** %503, align 8, !dbg !1507
  %505 = bitcast i8* %504 to i32*, !dbg !1508
  store i32 %501, i32* %505, align 4, !dbg !1509
  %506 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1510
  %507 = getelementptr inbounds %struct.stream, %struct.stream* %506, i32 0, i32 0, !dbg !1511
  %508 = load i8*, i8** %507, align 8, !dbg !1512
  %509 = getelementptr inbounds i8, i8* %508, i64 4, !dbg !1512
  store i8* %509, i8** %507, align 8, !dbg !1512
  store i32 0, i32* %6, align 4, !dbg !1513
  br label %510, !dbg !1515

; <label>:510:                                    ; preds = %584, %480
  %511 = load i32, i32* %6, align 4, !dbg !1516
  %512 = load i32, i32* @g_num_channels, align 4, !dbg !1519
  %513 = icmp ult i32 %511, %512, !dbg !1520
  br i1 %513, label %514, label %587, !dbg !1521

; <label>:514:                                    ; preds = %510
  %515 = load i32, i32* %6, align 4, !dbg !1522
  %516 = zext i32 %515 to i64, !dbg !1524
  %517 = getelementptr inbounds [0 x %struct._VCHANNEL], [0 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %516, !dbg !1524
  %518 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %517, i32 0, i32 1, !dbg !1525
  %519 = getelementptr inbounds [8 x i8], [8 x i8]* %518, i32 0, i32 0, !dbg !1524
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i8* %519), !dbg !1526
  %520 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1527
  %521 = getelementptr inbounds %struct.stream, %struct.stream* %520, i32 0, i32 0, !dbg !1529
  %522 = load i8*, i8** %521, align 8, !dbg !1529
  %523 = load i32, i32* %6, align 4, !dbg !1530
  %524 = zext i32 %523 to i64, !dbg !1531
  %525 = getelementptr inbounds [0 x %struct._VCHANNEL], [0 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %524, !dbg !1531
  %526 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %525, i32 0, i32 1, !dbg !1532
  %527 = getelementptr inbounds [8 x i8], [8 x i8]* %526, i32 0, i32 0, !dbg !1533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %522, i8* %527, i64 8, i32 1, i1 false), !dbg !1533
  %528 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1534
  %529 = getelementptr inbounds %struct.stream, %struct.stream* %528, i32 0, i32 0, !dbg !1535
  %530 = load i8*, i8** %529, align 8, !dbg !1536
  %531 = getelementptr inbounds i8, i8* %530, i64 8, !dbg !1536
  store i8* %531, i8** %529, align 8, !dbg !1536
  %532 = load i32, i32* %6, align 4, !dbg !1537
  %533 = zext i32 %532 to i64, !dbg !1540
  %534 = getelementptr inbounds [0 x %struct._VCHANNEL], [0 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %533, !dbg !1540
  %535 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %534, i32 0, i32 2, !dbg !1541
  %536 = load i32, i32* %535, align 4, !dbg !1541
  %537 = lshr i32 %536, 16, !dbg !1542
  %538 = and i32 %537, 65535, !dbg !1543
  %539 = lshr i32 %538, 8, !dbg !1544
  %540 = and i32 %539, 255, !dbg !1545
  %541 = trunc i32 %540 to i8, !dbg !1546
  %542 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1547
  %543 = getelementptr inbounds %struct.stream, %struct.stream* %542, i32 0, i32 0, !dbg !1548
  %544 = load i8*, i8** %543, align 8, !dbg !1549
  %545 = getelementptr inbounds i8, i8* %544, i32 1, !dbg !1549
  store i8* %545, i8** %543, align 8, !dbg !1549
  store i8 %541, i8* %544, align 1, !dbg !1550
  %546 = load i32, i32* %6, align 4, !dbg !1551
  %547 = zext i32 %546 to i64, !dbg !1552
  %548 = getelementptr inbounds [0 x %struct._VCHANNEL], [0 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %547, !dbg !1552
  %549 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %548, i32 0, i32 2, !dbg !1553
  %550 = load i32, i32* %549, align 4, !dbg !1553
  %551 = lshr i32 %550, 16, !dbg !1554
  %552 = and i32 %551, 65535, !dbg !1555
  %553 = and i32 %552, 255, !dbg !1556
  %554 = trunc i32 %553 to i8, !dbg !1557
  %555 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1558
  %556 = getelementptr inbounds %struct.stream, %struct.stream* %555, i32 0, i32 0, !dbg !1559
  %557 = load i8*, i8** %556, align 8, !dbg !1560
  %558 = getelementptr inbounds i8, i8* %557, i32 1, !dbg !1560
  store i8* %558, i8** %556, align 8, !dbg !1560
  store i8 %554, i8* %557, align 1, !dbg !1561
  %559 = load i32, i32* %6, align 4, !dbg !1562
  %560 = zext i32 %559 to i64, !dbg !1564
  %561 = getelementptr inbounds [0 x %struct._VCHANNEL], [0 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %560, !dbg !1564
  %562 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %561, i32 0, i32 2, !dbg !1565
  %563 = load i32, i32* %562, align 4, !dbg !1565
  %564 = and i32 %563, 65535, !dbg !1566
  %565 = lshr i32 %564, 8, !dbg !1567
  %566 = and i32 %565, 255, !dbg !1568
  %567 = trunc i32 %566 to i8, !dbg !1569
  %568 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1570
  %569 = getelementptr inbounds %struct.stream, %struct.stream* %568, i32 0, i32 0, !dbg !1571
  %570 = load i8*, i8** %569, align 8, !dbg !1572
  %571 = getelementptr inbounds i8, i8* %570, i32 1, !dbg !1572
  store i8* %571, i8** %569, align 8, !dbg !1572
  store i8 %567, i8* %570, align 1, !dbg !1573
  %572 = load i32, i32* %6, align 4, !dbg !1574
  %573 = zext i32 %572 to i64, !dbg !1575
  %574 = getelementptr inbounds [0 x %struct._VCHANNEL], [0 x %struct._VCHANNEL]* @g_channels, i64 0, i64 %573, !dbg !1575
  %575 = getelementptr inbounds %struct._VCHANNEL, %struct._VCHANNEL* %574, i32 0, i32 2, !dbg !1576
  %576 = load i32, i32* %575, align 4, !dbg !1576
  %577 = and i32 %576, 65535, !dbg !1577
  %578 = and i32 %577, 255, !dbg !1578
  %579 = trunc i32 %578 to i8, !dbg !1579
  %580 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1580
  %581 = getelementptr inbounds %struct.stream, %struct.stream* %580, i32 0, i32 0, !dbg !1581
  %582 = load i8*, i8** %581, align 8, !dbg !1582
  %583 = getelementptr inbounds i8, i8* %582, i32 1, !dbg !1582
  store i8* %583, i8** %581, align 8, !dbg !1582
  store i8 %579, i8* %582, align 1, !dbg !1583
  br label %584, !dbg !1584

; <label>:584:                                    ; preds = %514
  %585 = load i32, i32* %6, align 4, !dbg !1585
  %586 = add i32 %585, 1, !dbg !1585
  store i32 %586, i32* %6, align 4, !dbg !1585
  br label %510, !dbg !1587, !llvm.loop !1588

; <label>:587:                                    ; preds = %510
  br label %588, !dbg !1590

; <label>:588:                                    ; preds = %587, %423
  %589 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1591
  %590 = getelementptr inbounds %struct.stream, %struct.stream* %589, i32 0, i32 0, !dbg !1592
  %591 = load i8*, i8** %590, align 8, !dbg !1592
  %592 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1593
  %593 = getelementptr inbounds %struct.stream, %struct.stream* %592, i32 0, i32 1, !dbg !1594
  store i8* %591, i8** %593, align 8, !dbg !1595
  ret void, !dbg !1596
}

declare i32 @mcs_connect_finalize(%struct.stream*) #3

; Function Attrs: nounwind uwtable
define internal void @sec_establish_key() #0 !dbg !1597 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.stream*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1600, metadata !99), !dbg !1601
  %4 = load i32, i32* @g_server_public_key_len, align 4, !dbg !1602
  %5 = add i32 %4, 8, !dbg !1603
  store i32 %5, i32* %1, align 4, !dbg !1601
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1604, metadata !99), !dbg !1605
  store i32 1, i32* %2, align 4, !dbg !1605
  call void @llvm.dbg.declare(metadata %struct.stream** %3, metadata !1606, metadata !99), !dbg !1607
  %6 = load i32, i32* %2, align 4, !dbg !1608
  %7 = load i32, i32* %1, align 4, !dbg !1609
  %8 = add i32 %7, 4, !dbg !1610
  %9 = call %struct.stream* @sec_init(i32 %6, i32 %8), !dbg !1611
  store %struct.stream* %9, %struct.stream** %3, align 8, !dbg !1612
  %10 = load i32, i32* %1, align 4, !dbg !1613
  %11 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1615
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 0, !dbg !1616
  %13 = load i8*, i8** %12, align 8, !dbg !1616
  %14 = bitcast i8* %13 to i32*, !dbg !1617
  store i32 %10, i32* %14, align 4, !dbg !1618
  %15 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1619
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !1620
  %17 = load i8*, i8** %16, align 8, !dbg !1621
  %18 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !1621
  store i8* %18, i8** %16, align 8, !dbg !1621
  %19 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1622
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0, !dbg !1624
  %21 = load i8*, i8** %20, align 8, !dbg !1624
  %22 = load i32, i32* @g_server_public_key_len, align 4, !dbg !1625
  %23 = zext i32 %22 to i64, !dbg !1625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @g_sec_crypted_random, i32 0, i32 0), i64 %23, i32 1, i1 false), !dbg !1626
  %24 = load i32, i32* @g_server_public_key_len, align 4, !dbg !1627
  %25 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1628
  %26 = getelementptr inbounds %struct.stream, %struct.stream* %25, i32 0, i32 0, !dbg !1629
  %27 = load i8*, i8** %26, align 8, !dbg !1630
  %28 = zext i32 %24 to i64, !dbg !1630
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !1630
  store i8* %29, i8** %26, align 8, !dbg !1630
  %30 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1631
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %30, i32 0, i32 0, !dbg !1633
  %32 = load i8*, i8** %31, align 8, !dbg !1633
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 8, i32 1, i1 false), !dbg !1634
  %33 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1635
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 0, !dbg !1636
  %35 = load i8*, i8** %34, align 8, !dbg !1637
  %36 = getelementptr inbounds i8, i8* %35, i64 8, !dbg !1637
  store i8* %36, i8** %34, align 8, !dbg !1637
  %37 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1638
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %37, i32 0, i32 0, !dbg !1639
  %39 = load i8*, i8** %38, align 8, !dbg !1639
  %40 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1640
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 1, !dbg !1641
  store i8* %39, i8** %41, align 8, !dbg !1642
  %42 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1643
  %43 = load i32, i32* %2, align 4, !dbg !1644
  call void @sec_send(%struct.stream* %42, i32 %43), !dbg !1645
  ret void, !dbg !1646
}

declare void @xfree(i8*) #3

; Function Attrs: nounwind uwtable
define void @sec_disconnect() #0 !dbg !1647 {
  call void @mcs_disconnect(i32 3), !dbg !1648
  ret void, !dbg !1649
}

declare void @mcs_disconnect(i32) #3

; Function Attrs: nounwind uwtable
define void @sec_reset_state() #0 !dbg !1650 {
  store i16 0, i16* @g_server_rdp_version, align 2, !dbg !1651
  store i32 0, i32* @g_sec_encrypt_use_count, align 4, !dbg !1652
  store i32 0, i32* @g_sec_decrypt_use_count, align 4, !dbg !1653
  store i32 0, i32* @g_licence_issued, align 4, !dbg !1654
  store i32 0, i32* @g_licence_error_result, align 4, !dbg !1655
  call void @mcs_reset_state(), !dbg !1656
  ret void, !dbg !1657
}

declare void @mcs_reset_state() #3

; Function Attrs: nounwind uwtable
define internal void @sec_make_40bit(i8*) #0 !dbg !1658 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1661, metadata !99), !dbg !1662
  %3 = load i8*, i8** %2, align 8, !dbg !1663
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !1663
  store i8 -47, i8* %4, align 1, !dbg !1664
  %5 = load i8*, i8** %2, align 8, !dbg !1665
  %6 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1665
  store i8 38, i8* %6, align 1, !dbg !1666
  %7 = load i8*, i8** %2, align 8, !dbg !1667
  %8 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !1667
  store i8 -98, i8* %8, align 1, !dbg !1668
  ret void, !dbg !1669
}

; Function Attrs: nounwind uwtable
define internal i32 @sec_parse_crypt_info(%struct.stream*, i32*, i8**, i8*, i8*) #0 !dbg !1670 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.x509_st*, align 8
  %19 = alloca %struct.x509_st*, align 8
  %20 = alloca %struct.rsa_st*, align 8
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.x509_st*, align 8
  store %struct.stream* %0, %struct.stream** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %7, metadata !1674, metadata !99), !dbg !1675
  store i32* %1, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !1676, metadata !99), !dbg !1677
  store i8** %2, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1678, metadata !99), !dbg !1679
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1680, metadata !99), !dbg !1681
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1682, metadata !99), !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1684, metadata !99), !dbg !1685
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1686, metadata !99), !dbg !1687
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1688, metadata !99), !dbg !1689
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1690, metadata !99), !dbg !1691
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1692, metadata !99), !dbg !1693
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1694, metadata !99), !dbg !1695
  call void @llvm.dbg.declare(metadata %struct.x509_st** %18, metadata !1696, metadata !99), !dbg !2225
  call void @llvm.dbg.declare(metadata %struct.x509_st** %19, metadata !2226, metadata !99), !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.rsa_st** %20, metadata !2228, metadata !99), !dbg !2229
  call void @llvm.dbg.declare(metadata i16* %21, metadata !2230, metadata !99), !dbg !2231
  call void @llvm.dbg.declare(metadata i16* %22, metadata !2232, metadata !99), !dbg !2233
  call void @llvm.dbg.declare(metadata i8** %23, metadata !2234, metadata !99), !dbg !2235
  call void @llvm.dbg.declare(metadata i8** %24, metadata !2236, metadata !99), !dbg !2237
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sec_parse_crypt_info, i32 0, i32 0)), !dbg !2238
  %28 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2239
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 0, !dbg !2241
  %30 = load i8*, i8** %29, align 8, !dbg !2241
  %31 = bitcast i8* %30 to i32*, !dbg !2242
  %32 = load i32, i32* %31, align 4, !dbg !2242
  %33 = load i32*, i32** %8, align 8, !dbg !2243
  store i32 %32, i32* %33, align 4, !dbg !2244
  %34 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2245
  %35 = getelementptr inbounds %struct.stream, %struct.stream* %34, i32 0, i32 0, !dbg !2246
  %36 = load i8*, i8** %35, align 8, !dbg !2247
  %37 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !2247
  store i8* %37, i8** %35, align 8, !dbg !2247
  %38 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2248
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %38, i32 0, i32 0, !dbg !2250
  %40 = load i8*, i8** %39, align 8, !dbg !2250
  %41 = bitcast i8* %40 to i32*, !dbg !2251
  %42 = load i32, i32* %41, align 4, !dbg !2251
  store i32 %42, i32* %12, align 4, !dbg !2252
  %43 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2253
  %44 = getelementptr inbounds %struct.stream, %struct.stream* %43, i32 0, i32 0, !dbg !2254
  %45 = load i8*, i8** %44, align 8, !dbg !2255
  %46 = getelementptr inbounds i8, i8* %45, i64 4, !dbg !2255
  store i8* %46, i8** %44, align 8, !dbg !2255
  %47 = load i32, i32* %12, align 4, !dbg !2256
  %48 = icmp eq i32 %47, 0, !dbg !2258
  br i1 %48, label %49, label %50, !dbg !2259

; <label>:49:                                     ; preds = %5
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0)), !dbg !2260
  store i32 0, i32* %6, align 4, !dbg !2262
  br label %320, !dbg !2262

; <label>:50:                                     ; preds = %5
  %51 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2263
  %52 = getelementptr inbounds %struct.stream, %struct.stream* %51, i32 0, i32 0, !dbg !2265
  %53 = load i8*, i8** %52, align 8, !dbg !2265
  %54 = bitcast i8* %53 to i32*, !dbg !2266
  %55 = load i32, i32* %54, align 4, !dbg !2266
  store i32 %55, i32* %13, align 4, !dbg !2267
  %56 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2268
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 0, !dbg !2269
  %58 = load i8*, i8** %57, align 8, !dbg !2270
  %59 = getelementptr inbounds i8, i8* %58, i64 4, !dbg !2270
  store i8* %59, i8** %57, align 8, !dbg !2270
  %60 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2271
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 0, !dbg !2273
  %62 = load i8*, i8** %61, align 8, !dbg !2273
  %63 = bitcast i8* %62 to i32*, !dbg !2274
  %64 = load i32, i32* %63, align 4, !dbg !2274
  store i32 %64, i32* %14, align 4, !dbg !2275
  %65 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2276
  %66 = getelementptr inbounds %struct.stream, %struct.stream* %65, i32 0, i32 0, !dbg !2277
  %67 = load i8*, i8** %66, align 8, !dbg !2278
  %68 = getelementptr inbounds i8, i8* %67, i64 4, !dbg !2278
  store i8* %68, i8** %66, align 8, !dbg !2278
  %69 = load i32, i32* %13, align 4, !dbg !2279
  %70 = icmp ne i32 %69, 32, !dbg !2281
  br i1 %70, label %71, label %73, !dbg !2282

; <label>:71:                                     ; preds = %50
  %72 = load i32, i32* %13, align 4, !dbg !2283
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0), i32 %72, i32 32), !dbg !2285
  store i32 0, i32* %6, align 4, !dbg !2286
  br label %320, !dbg !2286

; <label>:73:                                     ; preds = %50
  %74 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2287
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 0, !dbg !2289
  %76 = load i8*, i8** %75, align 8, !dbg !2289
  %77 = load i8**, i8*** %9, align 8, !dbg !2290
  store i8* %76, i8** %77, align 8, !dbg !2291
  %78 = load i32, i32* %13, align 4, !dbg !2292
  %79 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2293
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 0, !dbg !2294
  %81 = load i8*, i8** %80, align 8, !dbg !2295
  %82 = zext i32 %78 to i64, !dbg !2295
  %83 = getelementptr inbounds i8, i8* %81, i64 %82, !dbg !2295
  store i8* %83, i8** %80, align 8, !dbg !2295
  %84 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2296
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0, !dbg !2297
  %86 = load i8*, i8** %85, align 8, !dbg !2297
  %87 = load i32, i32* %14, align 4, !dbg !2298
  %88 = zext i32 %87 to i64, !dbg !2299
  %89 = getelementptr inbounds i8, i8* %86, i64 %88, !dbg !2299
  store i8* %89, i8** %24, align 8, !dbg !2300
  %90 = load i8*, i8** %24, align 8, !dbg !2301
  %91 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2303
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 1, !dbg !2304
  %93 = load i8*, i8** %92, align 8, !dbg !2304
  %94 = icmp ugt i8* %90, %93, !dbg !2305
  br i1 %94, label %95, label %96, !dbg !2306

; <label>:95:                                     ; preds = %73
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0)), !dbg !2307
  store i32 0, i32* %6, align 4, !dbg !2309
  br label %320, !dbg !2309

; <label>:96:                                     ; preds = %73
  %97 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2310
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %97, i32 0, i32 0, !dbg !2312
  %99 = load i8*, i8** %98, align 8, !dbg !2312
  %100 = bitcast i8* %99 to i32*, !dbg !2313
  %101 = load i32, i32* %100, align 4, !dbg !2313
  store i32 %101, i32* %17, align 4, !dbg !2314
  %102 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2315
  %103 = getelementptr inbounds %struct.stream, %struct.stream* %102, i32 0, i32 0, !dbg !2316
  %104 = load i8*, i8** %103, align 8, !dbg !2317
  %105 = getelementptr inbounds i8, i8* %104, i64 4, !dbg !2317
  store i8* %105, i8** %103, align 8, !dbg !2317
  %106 = load i32, i32* %17, align 4, !dbg !2318
  %107 = and i32 %106, 1, !dbg !2320
  %108 = icmp ne i32 %107, 0, !dbg !2320
  br i1 %108, label %109, label %174, !dbg !2321

; <label>:109:                                    ; preds = %96
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i32 0, i32 0)), !dbg !2322
  %110 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2324
  %111 = getelementptr inbounds %struct.stream, %struct.stream* %110, i32 0, i32 0, !dbg !2325
  %112 = load i8*, i8** %111, align 8, !dbg !2326
  %113 = getelementptr inbounds i8, i8* %112, i64 8, !dbg !2326
  store i8* %113, i8** %111, align 8, !dbg !2326
  br label %114, !dbg !2327

; <label>:114:                                    ; preds = %169, %109
  %115 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2328
  %116 = getelementptr inbounds %struct.stream, %struct.stream* %115, i32 0, i32 0, !dbg !2330
  %117 = load i8*, i8** %116, align 8, !dbg !2330
  %118 = load i8*, i8** %24, align 8, !dbg !2331
  %119 = icmp ult i8* %117, %118, !dbg !2332
  br i1 %119, label %120, label %173, !dbg !2333

; <label>:120:                                    ; preds = %114
  %121 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2334
  %122 = getelementptr inbounds %struct.stream, %struct.stream* %121, i32 0, i32 0, !dbg !2337
  %123 = load i8*, i8** %122, align 8, !dbg !2337
  %124 = bitcast i8* %123 to i16*, !dbg !2338
  %125 = load i16, i16* %124, align 2, !dbg !2338
  store i16 %125, i16* %21, align 2, !dbg !2339
  %126 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2340
  %127 = getelementptr inbounds %struct.stream, %struct.stream* %126, i32 0, i32 0, !dbg !2341
  %128 = load i8*, i8** %127, align 8, !dbg !2342
  %129 = getelementptr inbounds i8, i8* %128, i64 2, !dbg !2342
  store i8* %129, i8** %127, align 8, !dbg !2342
  %130 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2343
  %131 = getelementptr inbounds %struct.stream, %struct.stream* %130, i32 0, i32 0, !dbg !2345
  %132 = load i8*, i8** %131, align 8, !dbg !2345
  %133 = bitcast i8* %132 to i16*, !dbg !2346
  %134 = load i16, i16* %133, align 2, !dbg !2346
  store i16 %134, i16* %22, align 2, !dbg !2347
  %135 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2348
  %136 = getelementptr inbounds %struct.stream, %struct.stream* %135, i32 0, i32 0, !dbg !2349
  %137 = load i8*, i8** %136, align 8, !dbg !2350
  %138 = getelementptr inbounds i8, i8* %137, i64 2, !dbg !2350
  store i8* %138, i8** %136, align 8, !dbg !2350
  %139 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2351
  %140 = getelementptr inbounds %struct.stream, %struct.stream* %139, i32 0, i32 0, !dbg !2352
  %141 = load i8*, i8** %140, align 8, !dbg !2352
  %142 = load i16, i16* %22, align 2, !dbg !2353
  %143 = zext i16 %142 to i32, !dbg !2353
  %144 = sext i32 %143 to i64, !dbg !2354
  %145 = getelementptr inbounds i8, i8* %141, i64 %144, !dbg !2354
  store i8* %145, i8** %23, align 8, !dbg !2355
  %146 = load i16, i16* %21, align 2, !dbg !2356
  %147 = zext i16 %146 to i32, !dbg !2356
  switch i32 %147, label %166 [
    i32 6, label %148
    i32 8, label %156
  ], !dbg !2357

; <label>:148:                                    ; preds = %120
  %149 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2358
  %150 = load i8*, i8** %10, align 8, !dbg !2361
  %151 = load i8*, i8** %11, align 8, !dbg !2362
  %152 = call i32 @sec_parse_public_key(%struct.stream* %149, i8* %150, i8* %151), !dbg !2363
  %153 = icmp ne i32 %152, 0, !dbg !2363
  br i1 %153, label %155, label %154, !dbg !2364

; <label>:154:                                    ; preds = %148
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0)), !dbg !2365
  store i32 0, i32* %6, align 4, !dbg !2367
  br label %320, !dbg !2367

; <label>:155:                                    ; preds = %148
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0)), !dbg !2368
  br label %169, !dbg !2369

; <label>:156:                                    ; preds = %120
  %157 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2370
  %158 = load i16, i16* %22, align 2, !dbg !2372
  %159 = zext i16 %158 to i32, !dbg !2372
  %160 = load i8*, i8** %10, align 8, !dbg !2373
  %161 = load i8*, i8** %11, align 8, !dbg !2374
  %162 = call i32 @sec_parse_public_sig(%struct.stream* %157, i32 %159, i8* %160, i8* %161), !dbg !2375
  %163 = icmp ne i32 %162, 0, !dbg !2375
  br i1 %163, label %165, label %164, !dbg !2376

; <label>:164:                                    ; preds = %156
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0)), !dbg !2377
  store i32 0, i32* %6, align 4, !dbg !2379
  br label %320, !dbg !2379

; <label>:165:                                    ; preds = %156
  br label %169, !dbg !2380

; <label>:166:                                    ; preds = %120
  %167 = load i16, i16* %21, align 2, !dbg !2381
  %168 = zext i16 %167 to i32, !dbg !2381
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0), i32 %168), !dbg !2382
  br label %169, !dbg !2383

; <label>:169:                                    ; preds = %166, %165, %155
  %170 = load i8*, i8** %23, align 8, !dbg !2384
  %171 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2385
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 0, !dbg !2386
  store i8* %170, i8** %172, align 8, !dbg !2387
  br label %114, !dbg !2388, !llvm.loop !2390

; <label>:173:                                    ; preds = %114
  br label %311, !dbg !2391

; <label>:174:                                    ; preds = %96
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2392, metadata !99), !dbg !2394
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i32 0, i32 0)), !dbg !2395
  %175 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2396
  %176 = getelementptr inbounds %struct.stream, %struct.stream* %175, i32 0, i32 0, !dbg !2398
  %177 = load i8*, i8** %176, align 8, !dbg !2398
  %178 = bitcast i8* %177 to i32*, !dbg !2399
  %179 = load i32, i32* %178, align 4, !dbg !2399
  store i32 %179, i32* %25, align 4, !dbg !2400
  %180 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2401
  %181 = getelementptr inbounds %struct.stream, %struct.stream* %180, i32 0, i32 0, !dbg !2402
  %182 = load i8*, i8** %181, align 8, !dbg !2403
  %183 = getelementptr inbounds i8, i8* %182, i64 4, !dbg !2403
  store i8* %183, i8** %181, align 8, !dbg !2403
  %184 = load i32, i32* %25, align 4, !dbg !2404
  %185 = icmp ult i32 %184, 2, !dbg !2406
  br i1 %185, label %186, label %187, !dbg !2407

; <label>:186:                                    ; preds = %174
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0)), !dbg !2408
  store i32 0, i32* %6, align 4, !dbg !2410
  br label %320, !dbg !2410

; <label>:187:                                    ; preds = %174
  br label %188, !dbg !2411

; <label>:188:                                    ; preds = %216, %187
  %189 = load i32, i32* %25, align 4, !dbg !2412
  %190 = icmp ugt i32 %189, 2, !dbg !2416
  br i1 %190, label %191, label %219, !dbg !2417

; <label>:191:                                    ; preds = %188
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2418, metadata !99), !dbg !2420
  call void @llvm.dbg.declare(metadata %struct.x509_st** %27, metadata !2421, metadata !99), !dbg !2422
  %192 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2423
  %193 = getelementptr inbounds %struct.stream, %struct.stream* %192, i32 0, i32 0, !dbg !2425
  %194 = load i8*, i8** %193, align 8, !dbg !2425
  %195 = bitcast i8* %194 to i32*, !dbg !2426
  %196 = load i32, i32* %195, align 4, !dbg !2426
  store i32 %196, i32* %26, align 4, !dbg !2427
  %197 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2428
  %198 = getelementptr inbounds %struct.stream, %struct.stream* %197, i32 0, i32 0, !dbg !2429
  %199 = load i8*, i8** %198, align 8, !dbg !2430
  %200 = getelementptr inbounds i8, i8* %199, i64 4, !dbg !2430
  store i8* %200, i8** %198, align 8, !dbg !2430
  %201 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2431
  %202 = getelementptr inbounds %struct.stream, %struct.stream* %201, i32 0, i32 0, !dbg !2432
  %203 = load i8*, i8** %202, align 8, !dbg !2432
  %204 = load i32, i32* %26, align 4, !dbg !2433
  %205 = call %struct.x509_st* @rdssl_cert_read(i8* %203, i32 %204), !dbg !2434
  store %struct.x509_st* %205, %struct.x509_st** %27, align 8, !dbg !2435
  %206 = load i32, i32* %26, align 4, !dbg !2436
  %207 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2437
  %208 = getelementptr inbounds %struct.stream, %struct.stream* %207, i32 0, i32 0, !dbg !2438
  %209 = load i8*, i8** %208, align 8, !dbg !2439
  %210 = zext i32 %206 to i64, !dbg !2439
  %211 = getelementptr inbounds i8, i8* %209, i64 %210, !dbg !2439
  store i8* %211, i8** %208, align 8, !dbg !2439
  %212 = load %struct.x509_st*, %struct.x509_st** %27, align 8, !dbg !2440
  %213 = icmp eq %struct.x509_st* %212, null, !dbg !2442
  br i1 %213, label %214, label %215, !dbg !2443

; <label>:214:                                    ; preds = %191
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.18, i32 0, i32 0)), !dbg !2444
  br label %215, !dbg !2446

; <label>:215:                                    ; preds = %214, %191
  br label %216, !dbg !2447

; <label>:216:                                    ; preds = %215
  %217 = load i32, i32* %25, align 4, !dbg !2448
  %218 = add i32 %217, -1, !dbg !2448
  store i32 %218, i32* %25, align 4, !dbg !2448
  br label %188, !dbg !2450, !llvm.loop !2451

; <label>:219:                                    ; preds = %188
  %220 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2452
  %221 = getelementptr inbounds %struct.stream, %struct.stream* %220, i32 0, i32 0, !dbg !2454
  %222 = load i8*, i8** %221, align 8, !dbg !2454
  %223 = bitcast i8* %222 to i32*, !dbg !2455
  %224 = load i32, i32* %223, align 4, !dbg !2455
  store i32 %224, i32* %15, align 4, !dbg !2456
  %225 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2457
  %226 = getelementptr inbounds %struct.stream, %struct.stream* %225, i32 0, i32 0, !dbg !2458
  %227 = load i8*, i8** %226, align 8, !dbg !2459
  %228 = getelementptr inbounds i8, i8* %227, i64 4, !dbg !2459
  store i8* %228, i8** %226, align 8, !dbg !2459
  %229 = load i32, i32* %15, align 4, !dbg !2460
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0), i32 %229), !dbg !2461
  %230 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2462
  %231 = getelementptr inbounds %struct.stream, %struct.stream* %230, i32 0, i32 0, !dbg !2463
  %232 = load i8*, i8** %231, align 8, !dbg !2463
  %233 = load i32, i32* %15, align 4, !dbg !2464
  %234 = call %struct.x509_st* @rdssl_cert_read(i8* %232, i32 %233), !dbg !2465
  store %struct.x509_st* %234, %struct.x509_st** %18, align 8, !dbg !2466
  %235 = load i32, i32* %15, align 4, !dbg !2467
  %236 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2468
  %237 = getelementptr inbounds %struct.stream, %struct.stream* %236, i32 0, i32 0, !dbg !2469
  %238 = load i8*, i8** %237, align 8, !dbg !2470
  %239 = zext i32 %235 to i64, !dbg !2470
  %240 = getelementptr inbounds i8, i8* %238, i64 %239, !dbg !2470
  store i8* %240, i8** %237, align 8, !dbg !2470
  %241 = load %struct.x509_st*, %struct.x509_st** %18, align 8, !dbg !2471
  %242 = icmp eq %struct.x509_st* null, %241, !dbg !2473
  br i1 %242, label %243, label %244, !dbg !2474

; <label>:243:                                    ; preds = %219
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0)), !dbg !2475
  store i32 0, i32* %6, align 4, !dbg !2477
  br label %320, !dbg !2477

; <label>:244:                                    ; preds = %219
  %245 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2478
  %246 = getelementptr inbounds %struct.stream, %struct.stream* %245, i32 0, i32 0, !dbg !2480
  %247 = load i8*, i8** %246, align 8, !dbg !2480
  %248 = bitcast i8* %247 to i32*, !dbg !2481
  %249 = load i32, i32* %248, align 4, !dbg !2481
  store i32 %249, i32* %16, align 4, !dbg !2482
  %250 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2483
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %250, i32 0, i32 0, !dbg !2484
  %252 = load i8*, i8** %251, align 8, !dbg !2485
  %253 = getelementptr inbounds i8, i8* %252, i64 4, !dbg !2485
  store i8* %253, i8** %251, align 8, !dbg !2485
  %254 = load i32, i32* %16, align 4, !dbg !2486
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0), i32 %254), !dbg !2487
  %255 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2488
  %256 = getelementptr inbounds %struct.stream, %struct.stream* %255, i32 0, i32 0, !dbg !2489
  %257 = load i8*, i8** %256, align 8, !dbg !2489
  %258 = load i32, i32* %16, align 4, !dbg !2490
  %259 = call %struct.x509_st* @rdssl_cert_read(i8* %257, i32 %258), !dbg !2491
  store %struct.x509_st* %259, %struct.x509_st** %19, align 8, !dbg !2492
  %260 = load i32, i32* %16, align 4, !dbg !2493
  %261 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2494
  %262 = getelementptr inbounds %struct.stream, %struct.stream* %261, i32 0, i32 0, !dbg !2495
  %263 = load i8*, i8** %262, align 8, !dbg !2496
  %264 = zext i32 %260 to i64, !dbg !2496
  %265 = getelementptr inbounds i8, i8* %263, i64 %264, !dbg !2496
  store i8* %265, i8** %262, align 8, !dbg !2496
  %266 = load %struct.x509_st*, %struct.x509_st** %19, align 8, !dbg !2497
  %267 = icmp eq %struct.x509_st* null, %266, !dbg !2499
  br i1 %267, label %268, label %270, !dbg !2500

; <label>:268:                                    ; preds = %244
  %269 = load %struct.x509_st*, %struct.x509_st** %18, align 8, !dbg !2501
  call void @rdssl_cert_free(%struct.x509_st* %269), !dbg !2503
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i32 0, i32 0)), !dbg !2504
  store i32 0, i32* %6, align 4, !dbg !2505
  br label %320, !dbg !2505

; <label>:270:                                    ; preds = %244
  %271 = load %struct.x509_st*, %struct.x509_st** %19, align 8, !dbg !2506
  %272 = load %struct.x509_st*, %struct.x509_st** %18, align 8, !dbg !2508
  %273 = call i32 @rdssl_certs_ok(%struct.x509_st* %271, %struct.x509_st* %272), !dbg !2509
  %274 = icmp ne i32 %273, 0, !dbg !2509
  br i1 %274, label %278, label %275, !dbg !2510

; <label>:275:                                    ; preds = %270
  %276 = load %struct.x509_st*, %struct.x509_st** %19, align 8, !dbg !2511
  call void @rdssl_cert_free(%struct.x509_st* %276), !dbg !2513
  %277 = load %struct.x509_st*, %struct.x509_st** %18, align 8, !dbg !2514
  call void @rdssl_cert_free(%struct.x509_st* %277), !dbg !2515
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i32 0, i32 0)), !dbg !2516
  store i32 0, i32* %6, align 4, !dbg !2517
  br label %320, !dbg !2517

; <label>:278:                                    ; preds = %270
  %279 = load %struct.x509_st*, %struct.x509_st** %18, align 8, !dbg !2518
  call void @rdssl_cert_free(%struct.x509_st* %279), !dbg !2519
  %280 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2520
  %281 = getelementptr inbounds %struct.stream, %struct.stream* %280, i32 0, i32 0, !dbg !2521
  %282 = load i8*, i8** %281, align 8, !dbg !2522
  %283 = getelementptr inbounds i8, i8* %282, i64 16, !dbg !2522
  store i8* %283, i8** %281, align 8, !dbg !2522
  %284 = load %struct.x509_st*, %struct.x509_st** %19, align 8, !dbg !2523
  %285 = call %struct.rsa_st* @rdssl_cert_to_rkey(%struct.x509_st* %284, i32* @g_server_public_key_len), !dbg !2524
  store %struct.rsa_st* %285, %struct.rsa_st** %20, align 8, !dbg !2525
  %286 = load %struct.rsa_st*, %struct.rsa_st** %20, align 8, !dbg !2526
  %287 = icmp eq %struct.rsa_st* null, %286, !dbg !2528
  br i1 %287, label %288, label %290, !dbg !2529

; <label>:288:                                    ; preds = %278
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0)), !dbg !2530
  %289 = load %struct.x509_st*, %struct.x509_st** %19, align 8, !dbg !2532
  call void @rdssl_cert_free(%struct.x509_st* %289), !dbg !2533
  store i32 0, i32* %6, align 4, !dbg !2534
  br label %320, !dbg !2534

; <label>:290:                                    ; preds = %278
  %291 = load %struct.x509_st*, %struct.x509_st** %19, align 8, !dbg !2535
  call void @rdssl_cert_free(%struct.x509_st* %291), !dbg !2536
  %292 = load i32, i32* @g_server_public_key_len, align 4, !dbg !2537
  %293 = icmp ult i32 %292, 64, !dbg !2539
  br i1 %293, label %297, label %294, !dbg !2540

; <label>:294:                                    ; preds = %290
  %295 = load i32, i32* @g_server_public_key_len, align 4, !dbg !2541
  %296 = icmp ugt i32 %295, 256, !dbg !2542
  br i1 %296, label %297, label %301, !dbg !2543

; <label>:297:                                    ; preds = %294, %290
  %298 = load i32, i32* @g_server_public_key_len, align 4, !dbg !2545
  %299 = mul i32 %298, 8, !dbg !2547
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.25, i32 0, i32 0), i32 %299), !dbg !2548
  %300 = load %struct.rsa_st*, %struct.rsa_st** %20, align 8, !dbg !2549
  call void @rdssl_rkey_free(%struct.rsa_st* %300), !dbg !2550
  store i32 0, i32* %6, align 4, !dbg !2551
  br label %320, !dbg !2551

; <label>:301:                                    ; preds = %294
  %302 = load %struct.rsa_st*, %struct.rsa_st** %20, align 8, !dbg !2552
  %303 = load i8*, i8** %11, align 8, !dbg !2554
  %304 = load i8*, i8** %10, align 8, !dbg !2555
  %305 = call i32 @rdssl_rkey_get_exp_mod(%struct.rsa_st* %302, i8* %303, i32 4, i8* %304, i32 256), !dbg !2556
  %306 = icmp ne i32 %305, 0, !dbg !2557
  br i1 %306, label %307, label %309, !dbg !2558

; <label>:307:                                    ; preds = %301
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0)), !dbg !2559
  %308 = load %struct.rsa_st*, %struct.rsa_st** %20, align 8, !dbg !2561
  call void @rdssl_rkey_free(%struct.rsa_st* %308), !dbg !2562
  store i32 0, i32* %6, align 4, !dbg !2563
  br label %320, !dbg !2563

; <label>:309:                                    ; preds = %301
  %310 = load %struct.rsa_st*, %struct.rsa_st** %20, align 8, !dbg !2564
  call void @rdssl_rkey_free(%struct.rsa_st* %310), !dbg !2565
  store i32 1, i32* %6, align 4, !dbg !2566
  br label %320, !dbg !2566

; <label>:311:                                    ; preds = %173
  %312 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2567
  %313 = getelementptr inbounds %struct.stream, %struct.stream* %312, i32 0, i32 0, !dbg !2568
  %314 = load i8*, i8** %313, align 8, !dbg !2568
  %315 = load %struct.stream*, %struct.stream** %7, align 8, !dbg !2569
  %316 = getelementptr inbounds %struct.stream, %struct.stream* %315, i32 0, i32 1, !dbg !2570
  %317 = load i8*, i8** %316, align 8, !dbg !2570
  %318 = icmp eq i8* %314, %317, !dbg !2571
  %319 = zext i1 %318 to i32, !dbg !2571
  store i32 %319, i32* %6, align 4, !dbg !2572
  br label %320, !dbg !2572

; <label>:320:                                    ; preds = %311, %309, %307, %297, %288, %275, %268, %243, %186, %164, %154, %95, %71, %49
  %321 = load i32, i32* %6, align 4, !dbg !2573
  ret i32 %321, !dbg !2573
}

declare void @generate_random(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @sec_rsa_encrypt(i8*, i8*, i32, i32, i8*, i8*) #0 !dbg !2574 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2577, metadata !99), !dbg !2578
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2579, metadata !99), !dbg !2580
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2581, metadata !99), !dbg !2582
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2583, metadata !99), !dbg !2584
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2585, metadata !99), !dbg !2586
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2587, metadata !99), !dbg !2588
  %13 = load i8*, i8** %7, align 8, !dbg !2589
  %14 = load i8*, i8** %8, align 8, !dbg !2590
  %15 = load i32, i32* %9, align 4, !dbg !2591
  %16 = load i32, i32* %10, align 4, !dbg !2592
  %17 = load i8*, i8** %11, align 8, !dbg !2593
  %18 = load i8*, i8** %12, align 8, !dbg !2594
  call void @rdssl_rsa_encrypt(i8* %13, i8* %14, i32 %15, i32 %16, i8* %17, i8* %18), !dbg !2595
  ret void, !dbg !2596
}

; Function Attrs: nounwind uwtable
define internal void @sec_generate_keys(i8*, i8*, i32) #0 !dbg !2597 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [48 x i8], align 16
  %8 = alloca [48 x i8], align 16
  %9 = alloca [48 x i8], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2600, metadata !99), !dbg !2601
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2602, metadata !99), !dbg !2603
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2604, metadata !99), !dbg !2605
  call void @llvm.dbg.declare(metadata [48 x i8]* %7, metadata !2606, metadata !99), !dbg !2607
  call void @llvm.dbg.declare(metadata [48 x i8]* %8, metadata !2608, metadata !99), !dbg !2609
  call void @llvm.dbg.declare(metadata [48 x i8]* %9, metadata !2610, metadata !99), !dbg !2611
  %10 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i32 0, i32 0, !dbg !2612
  %11 = load i8*, i8** %4, align 8, !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 1, i1 false), !dbg !2612
  %12 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i32 0, i32 0, !dbg !2614
  %13 = getelementptr inbounds i8, i8* %12, i64 24, !dbg !2615
  %14 = load i8*, i8** %5, align 8, !dbg !2616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 24, i32 1, i1 false), !dbg !2617
  %15 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i32 0, i32 0, !dbg !2618
  %16 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i32 0, i32 0, !dbg !2619
  %17 = load i8*, i8** %4, align 8, !dbg !2620
  %18 = load i8*, i8** %5, align 8, !dbg !2621
  call void @sec_hash_48(i8* %15, i8* %16, i8* %17, i8* %18, i8 zeroext 65), !dbg !2622
  %19 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i32 0, i32 0, !dbg !2623
  %20 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i32 0, i32 0, !dbg !2624
  %21 = load i8*, i8** %4, align 8, !dbg !2625
  %22 = load i8*, i8** %5, align 8, !dbg !2626
  call void @sec_hash_48(i8* %19, i8* %20, i8* %21, i8* %22, i8 zeroext 88), !dbg !2627
  %23 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i32 0, i32 0, !dbg !2628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_sign_key, i32 0, i32 0), i8* %23, i64 16, i32 16, i1 false), !dbg !2628
  %24 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 16, !dbg !2629
  %25 = load i8*, i8** %4, align 8, !dbg !2630
  %26 = load i8*, i8** %5, align 8, !dbg !2631
  call void @sec_hash_16(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_key, i32 0, i32 0), i8* %24, i8* %25, i8* %26), !dbg !2632
  %27 = getelementptr inbounds [48 x i8], [48 x i8]* %9, i64 0, i64 32, !dbg !2633
  %28 = load i8*, i8** %4, align 8, !dbg !2634
  %29 = load i8*, i8** %5, align 8, !dbg !2635
  call void @sec_hash_16(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_key, i32 0, i32 0), i8* %27, i8* %28, i8* %29), !dbg !2636
  %30 = load i32, i32* %6, align 4, !dbg !2637
  %31 = icmp eq i32 %30, 1, !dbg !2639
  br i1 %31, label %32, label %33, !dbg !2640

; <label>:32:                                     ; preds = %3
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i32 0, i32 0)), !dbg !2641
  call void @sec_make_40bit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_sign_key, i32 0, i32 0)), !dbg !2643
  call void @sec_make_40bit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_key, i32 0, i32 0)), !dbg !2644
  call void @sec_make_40bit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_key, i32 0, i32 0)), !dbg !2645
  store i32 8, i32* @g_rc4_key_len, align 4, !dbg !2646
  br label %35, !dbg !2647

; <label>:33:                                     ; preds = %3
  %34 = load i32, i32* %6, align 4, !dbg !2648
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.30, i32 0, i32 0), i32 %34), !dbg !2650
  store i32 16, i32* @g_rc4_key_len, align 4, !dbg !2651
  br label %35

; <label>:35:                                     ; preds = %33, %32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_update_key, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_key, i32 0, i32 0), i64 16, i32 16, i1 false), !dbg !2652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_update_key, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_key, i32 0, i32 0), i64 16, i32 16, i1 false), !dbg !2653
  %36 = load i32, i32* @g_rc4_key_len, align 4, !dbg !2654
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* @g_rc4_decrypt_key, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_decrypt_key, i32 0, i32 0), i32 %36), !dbg !2655
  %37 = load i32, i32* @g_rc4_key_len, align 4, !dbg !2656
  call void @rdssl_rc4_set_key(%struct.rc4_key_st* @g_rc4_encrypt_key, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @g_sec_encrypt_key, i32 0, i32 0), i32 %37), !dbg !2657
  ret void, !dbg !2658
}

; Function Attrs: nounwind uwtable
define internal i32 @sec_parse_public_key(%struct.stream*, i8*, i8*) #0 !dbg !2659 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %5, metadata !2662, metadata !99), !dbg !2663
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2664, metadata !99), !dbg !2665
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2666, metadata !99), !dbg !2667
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2668, metadata !99), !dbg !2669
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2670, metadata !99), !dbg !2671
  %10 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2672
  %11 = getelementptr inbounds %struct.stream, %struct.stream* %10, i32 0, i32 0, !dbg !2674
  %12 = load i8*, i8** %11, align 8, !dbg !2674
  %13 = bitcast i8* %12 to i32*, !dbg !2675
  %14 = load i32, i32* %13, align 4, !dbg !2675
  store i32 %14, i32* %8, align 4, !dbg !2676
  %15 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2677
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0, !dbg !2678
  %17 = load i8*, i8** %16, align 8, !dbg !2679
  %18 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !2679
  store i8* %18, i8** %16, align 8, !dbg !2679
  %19 = load i32, i32* %8, align 4, !dbg !2680
  %20 = icmp ne i32 %19, 826364754, !dbg !2682
  br i1 %20, label %21, label %23, !dbg !2683

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %8, align 4, !dbg !2684
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i32 %22), !dbg !2686
  store i32 0, i32* %4, align 4, !dbg !2687
  br label %81, !dbg !2687

; <label>:23:                                     ; preds = %3
  %24 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2688
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %24, i32 0, i32 0, !dbg !2690
  %26 = load i8*, i8** %25, align 8, !dbg !2690
  %27 = bitcast i8* %26 to i32*, !dbg !2691
  %28 = load i32, i32* %27, align 4, !dbg !2691
  store i32 %28, i32* %9, align 4, !dbg !2692
  %29 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2693
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0, !dbg !2694
  %31 = load i8*, i8** %30, align 8, !dbg !2695
  %32 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !2695
  store i8* %32, i8** %30, align 8, !dbg !2695
  %33 = load i32, i32* %9, align 4, !dbg !2696
  %34 = sub i32 %33, 8, !dbg !2696
  store i32 %34, i32* %9, align 4, !dbg !2696
  %35 = load i32, i32* %9, align 4, !dbg !2697
  %36 = icmp ult i32 %35, 64, !dbg !2699
  br i1 %36, label %40, label %37, !dbg !2700

; <label>:37:                                     ; preds = %23
  %38 = load i32, i32* %9, align 4, !dbg !2701
  %39 = icmp ugt i32 %38, 256, !dbg !2703
  br i1 %39, label %40, label %43, !dbg !2704

; <label>:40:                                     ; preds = %37, %23
  %41 = load i32, i32* %9, align 4, !dbg !2705
  %42 = mul i32 %41, 8, !dbg !2707
  call void (i32, i32, i8*, ...) @logger(i32 4, i32 3, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i32 0, i32 0), i32 %42), !dbg !2708
  store i32 0, i32* %4, align 4, !dbg !2709
  br label %81, !dbg !2709

; <label>:43:                                     ; preds = %37
  %44 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2710
  %45 = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !2711
  %46 = load i8*, i8** %45, align 8, !dbg !2712
  %47 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !2712
  store i8* %47, i8** %45, align 8, !dbg !2712
  %48 = load i8*, i8** %7, align 8, !dbg !2713
  %49 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2715
  %50 = getelementptr inbounds %struct.stream, %struct.stream* %49, i32 0, i32 0, !dbg !2716
  %51 = load i8*, i8** %50, align 8, !dbg !2716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %51, i64 4, i32 1, i1 false), !dbg !2717
  %52 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2718
  %53 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 0, !dbg !2719
  %54 = load i8*, i8** %53, align 8, !dbg !2720
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !2720
  store i8* %55, i8** %53, align 8, !dbg !2720
  %56 = load i8*, i8** %6, align 8, !dbg !2721
  %57 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2723
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 0, !dbg !2724
  %59 = load i8*, i8** %58, align 8, !dbg !2724
  %60 = load i32, i32* %9, align 4, !dbg !2725
  %61 = zext i32 %60 to i64, !dbg !2725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %59, i64 %61, i32 1, i1 false), !dbg !2726
  %62 = load i32, i32* %9, align 4, !dbg !2727
  %63 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2728
  %64 = getelementptr inbounds %struct.stream, %struct.stream* %63, i32 0, i32 0, !dbg !2729
  %65 = load i8*, i8** %64, align 8, !dbg !2730
  %66 = zext i32 %62 to i64, !dbg !2730
  %67 = getelementptr inbounds i8, i8* %65, i64 %66, !dbg !2730
  store i8* %67, i8** %64, align 8, !dbg !2730
  %68 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2731
  %69 = getelementptr inbounds %struct.stream, %struct.stream* %68, i32 0, i32 0, !dbg !2732
  %70 = load i8*, i8** %69, align 8, !dbg !2733
  %71 = getelementptr inbounds i8, i8* %70, i64 8, !dbg !2733
  store i8* %71, i8** %69, align 8, !dbg !2733
  %72 = load i32, i32* %9, align 4, !dbg !2734
  store i32 %72, i32* @g_server_public_key_len, align 4, !dbg !2735
  %73 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2736
  %74 = getelementptr inbounds %struct.stream, %struct.stream* %73, i32 0, i32 0, !dbg !2737
  %75 = load i8*, i8** %74, align 8, !dbg !2737
  %76 = load %struct.stream*, %struct.stream** %5, align 8, !dbg !2738
  %77 = getelementptr inbounds %struct.stream, %struct.stream* %76, i32 0, i32 1, !dbg !2739
  %78 = load i8*, i8** %77, align 8, !dbg !2739
  %79 = icmp ule i8* %75, %78, !dbg !2740
  %80 = zext i1 %79 to i32, !dbg !2740
  store i32 %80, i32* %4, align 4, !dbg !2741
  br label %81, !dbg !2741

; <label>:81:                                     ; preds = %43, %40, %21
  %82 = load i32, i32* %4, align 4, !dbg !2742
  ret i32 %82, !dbg !2742
}

; Function Attrs: nounwind uwtable
define internal i32 @sec_parse_public_sig(%struct.stream*, i32, i8*, i8*) #0 !dbg !2743 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.stream** %6, metadata !2746, metadata !99), !dbg !2747
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2748, metadata !99), !dbg !2749
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2750, metadata !99), !dbg !2751
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2752, metadata !99), !dbg !2753
  call void @llvm.dbg.declare(metadata [256 x i8]* %10, metadata !2754, metadata !99), !dbg !2755
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2756, metadata !99), !dbg !2757
  %12 = load i32, i32* %7, align 4, !dbg !2758
  %13 = icmp ne i32 %12, 72, !dbg !2760
  br i1 %13, label %14, label %15, !dbg !2761

; <label>:14:                                     ; preds = %4
  store i32 1, i32* %5, align 4, !dbg !2762
  br label %37, !dbg !2762

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !2764
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 256, i32 16, i1 false), !dbg !2764
  %17 = load i32, i32* %7, align 4, !dbg !2765
  %18 = sub i32 %17, 8, !dbg !2766
  store i32 %18, i32* %11, align 4, !dbg !2767
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !2768
  %20 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !2770
  %21 = getelementptr inbounds %struct.stream, %struct.stream* %20, i32 0, i32 0, !dbg !2771
  %22 = load i8*, i8** %21, align 8, !dbg !2771
  %23 = load i32, i32* %11, align 4, !dbg !2772
  %24 = zext i32 %23 to i64, !dbg !2772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %22, i64 %24, i32 1, i1 false), !dbg !2768
  %25 = load i32, i32* %11, align 4, !dbg !2773
  %26 = load %struct.stream*, %struct.stream** %6, align 8, !dbg !2774
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %26, i32 0, i32 0, !dbg !2775
  %28 = load i8*, i8** %27, align 8, !dbg !2776
  %29 = zext i32 %25 to i64, !dbg !2776
  %30 = getelementptr inbounds i8, i8* %28, i64 %29, !dbg !2776
  store i8* %30, i8** %27, align 8, !dbg !2776
  %31 = load i8*, i8** %9, align 8, !dbg !2777
  %32 = load i8*, i8** %8, align 8, !dbg !2778
  %33 = load i32, i32* @g_server_public_key_len, align 4, !dbg !2779
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !2780
  %35 = load i32, i32* %11, align 4, !dbg !2781
  %36 = call i32 @rdssl_sig_ok(i8* %31, i32 4, i8* %32, i32 %33, i8* %34, i32 %35), !dbg !2782
  store i32 %36, i32* %5, align 4, !dbg !2783
  br label %37, !dbg !2783

; <label>:37:                                     ; preds = %15, %14
  %38 = load i32, i32* %5, align 4, !dbg !2784
  ret i32 %38, !dbg !2784
}

declare %struct.x509_st* @rdssl_cert_read(i8*, i32) #3

declare void @rdssl_cert_free(%struct.x509_st*) #3

declare i32 @rdssl_certs_ok(%struct.x509_st*, %struct.x509_st*) #3

declare %struct.rsa_st* @rdssl_cert_to_rkey(%struct.x509_st*, i32*) #3

declare void @rdssl_rkey_free(%struct.rsa_st*) #3

declare i32 @rdssl_rkey_get_exp_mod(%struct.rsa_st*, i8*, i32, i8*, i32) #3

declare i32 @rdssl_sig_ok(i8*, i32, i8*, i32, i8*, i32) #3

declare void @rdssl_rsa_encrypt(i8*, i8*, i32, i32, i8*, i8*) #3

declare void @out_utf16s_padded(%struct.stream*, i8*, i64, i8 zeroext) #3

declare void @utils_calculate_dpi_scale_factors(i32, i32, i32, i32*, i32*, i32*, i32*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92}
!llvm.ident = !{!93}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, globals: !53)
!1 = !DIFile(filename: "[inter]secure.o.i", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2 = !{!3, !15, !22, !30, !36}
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
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "MCS_DPU_REASON", file: !23, line: 129, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "constants.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "RN_DOMAIN_DISCONNECTED", value: 0)
!26 = !DIEnumerator(name: "RN_PROVIDER_INITIATED", value: 1)
!27 = !DIEnumerator(name: "RN_TOKEN_PURGED", value: 2)
!28 = !DIEnumerator(name: "RN_USER_REQUESTED", value: 3)
!29 = !DIEnumerator(name: "RN_CHANNEL_PURGED", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_RDP_VERSION", file: !31, line: 52, size: 32, align: 32, elements: !32)
!31 = !DIFile(filename: "types.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "RDP_V4", value: 4)
!34 = !DIEnumerator(name: "RDP_V5", value: 5)
!35 = !DIEnumerator(name: "RDP_V6", value: 6)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "RDP_DESKTOP_ORIENTATION", file: !23, line: 699, size: 32, align: 32, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "ORIENTATION_LANDSCAPE", value: 0)
!39 = !DIEnumerator(name: "ORIENTATION_PORTRAIT", value: 90)
!40 = !DIEnumerator(name: "ORIENTATION_LANDSCAPE_FLIPPED", value: 180)
!41 = !DIEnumerator(name: "ORIENTATION_PORTRAIT_FLIPPED", value: 270)
!42 = !{!43, !46, !49, !50}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !31, line: 43, baseType: !45)
!45 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !31, line: 41, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !31, line: 39, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!54, !56, !58, !69, !73, !74, !75, !79, !83, !84, !85, !86, !87, !89, !90}
!54 = distinct !DIGlobalVariable(name: "g_server_rdp_version", scope: !0, file: !55, line: 56, type: !47, isLocal: false, isDefinition: true, variable: i16* @g_server_rdp_version)
!55 = !DIFile(filename: "secure.c", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!56 = distinct !DIGlobalVariable(name: "g_rc4_key_len", scope: !0, file: !55, line: 44, type: !57, isLocal: true, isDefinition: true, variable: i32* @g_rc4_key_len)
!57 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!58 = distinct !DIGlobalVariable(name: "g_rc4_decrypt_key", scope: !0, file: !55, line: 45, type: !59, isLocal: true, isDefinition: true, variable: %struct.rc4_key_st* @g_rc4_decrypt_key)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "RC4_KEY", file: !60, line: 76, baseType: !61)
!60 = !DIFile(filename: "/usr/include/openssl/rc4.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc4_key_st", file: !60, line: 73, size: 8256, align: 32, elements: !62)
!62 = !{!63, !64, !65}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !61, file: !60, line: 74, baseType: !45, size: 32, align: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !61, file: !60, line: 74, baseType: !45, size: 32, align: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !61, file: !60, line: 75, baseType: !66, size: 8192, align: 32, offset: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8192, align: 32, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 256)
!69 = distinct !DIGlobalVariable(name: "g_sec_sign_key", scope: !0, file: !55, line: 49, type: !70, isLocal: true, isDefinition: true, variable: [16 x i8]* @g_sec_sign_key)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, align: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 16)
!73 = distinct !DIGlobalVariable(name: "g_sec_decrypt_key", scope: !0, file: !55, line: 50, type: !70, isLocal: true, isDefinition: true, variable: [16 x i8]* @g_sec_decrypt_key)
!74 = distinct !DIGlobalVariable(name: "g_sec_decrypt_update_key", scope: !0, file: !55, line: 52, type: !70, isLocal: true, isDefinition: true, variable: [16 x i8]* @g_sec_decrypt_update_key)
!75 = distinct !DIGlobalVariable(name: "pad_54", scope: !0, file: !55, line: 200, type: !76, isLocal: true, isDefinition: true, variable: [40 x i8]* @pad_54)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, align: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 40)
!79 = distinct !DIGlobalVariable(name: "pad_92", scope: !0, file: !55, line: 207, type: !80, isLocal: true, isDefinition: true, variable: [48 x i8]* @pad_92)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 384, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 48)
!83 = distinct !DIGlobalVariable(name: "g_sec_decrypt_use_count", scope: !0, file: !55, line: 60, type: !57, isLocal: true, isDefinition: true, variable: i32* @g_sec_decrypt_use_count)
!84 = distinct !DIGlobalVariable(name: "g_sec_encrypt_key", scope: !0, file: !55, line: 51, type: !70, isLocal: true, isDefinition: true, variable: [16 x i8]* @g_sec_encrypt_key)
!85 = distinct !DIGlobalVariable(name: "g_sec_encrypt_update_key", scope: !0, file: !55, line: 53, type: !70, isLocal: true, isDefinition: true, variable: [16 x i8]* @g_sec_encrypt_update_key)
!86 = distinct !DIGlobalVariable(name: "g_rc4_encrypt_key", scope: !0, file: !55, line: 46, type: !59, isLocal: true, isDefinition: true, variable: %struct.rc4_key_st* @g_rc4_encrypt_key)
!87 = distinct !DIGlobalVariable(name: "g_sec_crypted_random", scope: !0, file: !55, line: 54, type: !88, isLocal: true, isDefinition: true, variable: [256 x i8]* @g_sec_crypted_random)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, align: 8, elements: !67)
!89 = distinct !DIGlobalVariable(name: "g_server_public_key_len", scope: !0, file: !55, line: 47, type: !44, isLocal: true, isDefinition: true, variable: i32* @g_server_public_key_len)
!90 = distinct !DIGlobalVariable(name: "g_sec_encrypt_use_count", scope: !0, file: !55, line: 59, type: !57, isLocal: true, isDefinition: true, variable: i32* @g_sec_encrypt_use_count)
!91 = !{i32 2, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!94 = distinct !DISubprogram(name: "sec_hash_48", scope: !55, file: !55, line: 77, type: !95, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !50, !50, !50, !50, !51}
!97 = !{}
!98 = !DILocalVariable(name: "out", arg: 1, scope: !94, file: !55, line: 77, type: !50)
!99 = !DIExpression()
!100 = !DILocation(line: 77, column: 21, scope: !94)
!101 = !DILocalVariable(name: "in", arg: 2, scope: !94, file: !55, line: 77, type: !50)
!102 = !DILocation(line: 77, column: 34, scope: !94)
!103 = !DILocalVariable(name: "salt1", arg: 3, scope: !94, file: !55, line: 77, type: !50)
!104 = !DILocation(line: 77, column: 46, scope: !94)
!105 = !DILocalVariable(name: "salt2", arg: 4, scope: !94, file: !55, line: 77, type: !50)
!106 = !DILocation(line: 77, column: 61, scope: !94)
!107 = !DILocalVariable(name: "salt", arg: 5, scope: !94, file: !55, line: 77, type: !51)
!108 = !DILocation(line: 77, column: 74, scope: !94)
!109 = !DILocalVariable(name: "shasig", scope: !94, file: !55, line: 79, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DILocation(line: 79, column: 8, scope: !94)
!114 = !DILocalVariable(name: "pad", scope: !94, file: !55, line: 80, type: !115)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, align: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !DILocation(line: 80, column: 8, scope: !94)
!119 = !DILocalVariable(name: "sha1", scope: !94, file: !55, line: 81, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA_CTX", file: !121, line: 105, baseType: !122)
!121 = !DIFile(filename: "/usr/include/openssl/sha.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SHAstate_st", file: !121, line: 100, size: 768, align: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !133}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "h0", scope: !122, file: !121, line: 101, baseType: !45, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "h1", scope: !122, file: !121, line: 101, baseType: !45, size: 32, align: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "h2", scope: !122, file: !121, line: 101, baseType: !45, size: 32, align: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "h3", scope: !122, file: !121, line: 101, baseType: !45, size: 32, align: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "h4", scope: !122, file: !121, line: 101, baseType: !45, size: 32, align: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !122, file: !121, line: 102, baseType: !45, size: 32, align: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !122, file: !121, line: 102, baseType: !45, size: 32, align: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !122, file: !121, line: 103, baseType: !132, size: 512, align: 32, offset: 224)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, align: 32, elements: !71)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !122, file: !121, line: 104, baseType: !45, size: 32, align: 32, offset: 736)
!134 = !DILocation(line: 81, column: 10, scope: !94)
!135 = !DILocalVariable(name: "md5", scope: !94, file: !55, line: 82, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX", file: !137, line: 105, baseType: !138)
!137 = !DIFile(filename: "/usr/include/openssl/md5.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MD5state_st", file: !137, line: 100, size: 736, align: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !138, file: !137, line: 101, baseType: !45, size: 32, align: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !138, file: !137, line: 101, baseType: !45, size: 32, align: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !138, file: !137, line: 101, baseType: !45, size: 32, align: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !138, file: !137, line: 101, baseType: !45, size: 32, align: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !138, file: !137, line: 102, baseType: !45, size: 32, align: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !138, file: !137, line: 102, baseType: !45, size: 32, align: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !138, file: !137, line: 103, baseType: !132, size: 512, align: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !138, file: !137, line: 104, baseType: !45, size: 32, align: 32, offset: 704)
!148 = !DILocation(line: 82, column: 10, scope: !94)
!149 = !DILocalVariable(name: "i", scope: !94, file: !55, line: 83, type: !57)
!150 = !DILocation(line: 83, column: 6, scope: !94)
!151 = !DILocation(line: 85, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !94, file: !55, line: 85, column: 2)
!153 = !DILocation(line: 85, column: 7, scope: !152)
!154 = !DILocation(line: 85, column: 14, scope: !155)
!155 = !DILexicalBlockFile(scope: !156, file: !55, discriminator: 1)
!156 = distinct !DILexicalBlock(scope: !152, file: !55, line: 85, column: 2)
!157 = !DILocation(line: 85, column: 16, scope: !155)
!158 = !DILocation(line: 85, column: 2, scope: !155)
!159 = !DILocation(line: 87, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !55, line: 86, column: 2)
!161 = !DILocation(line: 87, column: 15, scope: !160)
!162 = !DILocation(line: 87, column: 22, scope: !160)
!163 = !DILocation(line: 87, column: 20, scope: !160)
!164 = !DILocation(line: 87, column: 25, scope: !160)
!165 = !DILocation(line: 87, column: 27, scope: !160)
!166 = !DILocation(line: 89, column: 3, scope: !160)
!167 = !DILocation(line: 90, column: 28, scope: !160)
!168 = !DILocation(line: 90, column: 33, scope: !160)
!169 = !DILocation(line: 90, column: 35, scope: !160)
!170 = !DILocation(line: 90, column: 3, scope: !160)
!171 = !DILocation(line: 91, column: 28, scope: !160)
!172 = !DILocation(line: 91, column: 3, scope: !160)
!173 = !DILocation(line: 92, column: 28, scope: !160)
!174 = !DILocation(line: 92, column: 3, scope: !160)
!175 = !DILocation(line: 93, column: 28, scope: !160)
!176 = !DILocation(line: 93, column: 3, scope: !160)
!177 = !DILocation(line: 94, column: 27, scope: !160)
!178 = !DILocation(line: 94, column: 3, scope: !160)
!179 = !DILocation(line: 96, column: 3, scope: !160)
!180 = !DILocation(line: 97, column: 26, scope: !160)
!181 = !DILocation(line: 97, column: 3, scope: !160)
!182 = !DILocation(line: 98, column: 26, scope: !160)
!183 = !DILocation(line: 98, column: 3, scope: !160)
!184 = !DILocation(line: 99, column: 30, scope: !160)
!185 = !DILocation(line: 99, column: 32, scope: !160)
!186 = !DILocation(line: 99, column: 26, scope: !160)
!187 = !DILocation(line: 99, column: 3, scope: !160)
!188 = !DILocation(line: 100, column: 2, scope: !160)
!189 = !DILocation(line: 85, column: 22, scope: !190)
!190 = !DILexicalBlockFile(scope: !156, file: !55, discriminator: 2)
!191 = !DILocation(line: 85, column: 2, scope: !190)
!192 = distinct !{!192, !193}
!193 = !DILocation(line: 85, column: 2, scope: !94)
!194 = !DILocation(line: 101, column: 1, scope: !94)
!195 = distinct !DISubprogram(name: "sec_hash_16", scope: !55, file: !55, line: 107, type: !196, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !50, !50, !50, !50}
!198 = !DILocalVariable(name: "out", arg: 1, scope: !195, file: !55, line: 107, type: !50)
!199 = !DILocation(line: 107, column: 21, scope: !195)
!200 = !DILocalVariable(name: "in", arg: 2, scope: !195, file: !55, line: 107, type: !50)
!201 = !DILocation(line: 107, column: 34, scope: !195)
!202 = !DILocalVariable(name: "salt1", arg: 3, scope: !195, file: !55, line: 107, type: !50)
!203 = !DILocation(line: 107, column: 46, scope: !195)
!204 = !DILocalVariable(name: "salt2", arg: 4, scope: !195, file: !55, line: 107, type: !50)
!205 = !DILocation(line: 107, column: 61, scope: !195)
!206 = !DILocalVariable(name: "md5", scope: !195, file: !55, line: 109, type: !136)
!207 = !DILocation(line: 109, column: 10, scope: !195)
!208 = !DILocation(line: 111, column: 2, scope: !195)
!209 = !DILocation(line: 112, column: 25, scope: !195)
!210 = !DILocation(line: 112, column: 2, scope: !195)
!211 = !DILocation(line: 113, column: 25, scope: !195)
!212 = !DILocation(line: 113, column: 2, scope: !195)
!213 = !DILocation(line: 114, column: 25, scope: !195)
!214 = !DILocation(line: 114, column: 2, scope: !195)
!215 = !DILocation(line: 115, column: 24, scope: !195)
!216 = !DILocation(line: 115, column: 2, scope: !195)
!217 = !DILocation(line: 116, column: 1, scope: !195)
!218 = distinct !DISubprogram(name: "sec_hash_sha1_16", scope: !55, file: !55, line: 122, type: !219, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !50, !50, !50}
!221 = !DILocalVariable(name: "out", arg: 1, scope: !218, file: !55, line: 122, type: !50)
!222 = !DILocation(line: 122, column: 26, scope: !218)
!223 = !DILocalVariable(name: "in", arg: 2, scope: !218, file: !55, line: 122, type: !50)
!224 = !DILocation(line: 122, column: 39, scope: !218)
!225 = !DILocalVariable(name: "salt1", arg: 3, scope: !218, file: !55, line: 122, type: !50)
!226 = !DILocation(line: 122, column: 51, scope: !218)
!227 = !DILocalVariable(name: "sha1", scope: !218, file: !55, line: 124, type: !120)
!228 = !DILocation(line: 124, column: 10, scope: !218)
!229 = !DILocation(line: 125, column: 2, scope: !218)
!230 = !DILocation(line: 126, column: 27, scope: !218)
!231 = !DILocation(line: 126, column: 2, scope: !218)
!232 = !DILocation(line: 127, column: 27, scope: !218)
!233 = !DILocation(line: 127, column: 2, scope: !218)
!234 = !DILocation(line: 128, column: 26, scope: !218)
!235 = !DILocation(line: 128, column: 2, scope: !218)
!236 = !DILocation(line: 129, column: 1, scope: !218)
!237 = distinct !DISubprogram(name: "sec_hash_to_string", scope: !55, file: !55, line: 133, type: !238, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240, !57, !50, !57}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!242 = !DILocalVariable(name: "out", arg: 1, scope: !237, file: !55, line: 133, type: !240)
!243 = !DILocation(line: 133, column: 26, scope: !237)
!244 = !DILocalVariable(name: "out_size", arg: 2, scope: !237, file: !55, line: 133, type: !57)
!245 = !DILocation(line: 133, column: 35, scope: !237)
!246 = !DILocalVariable(name: "in", arg: 3, scope: !237, file: !55, line: 133, type: !50)
!247 = !DILocation(line: 133, column: 53, scope: !237)
!248 = !DILocalVariable(name: "in_size", arg: 4, scope: !237, file: !55, line: 133, type: !57)
!249 = !DILocation(line: 133, column: 61, scope: !237)
!250 = !DILocalVariable(name: "k", scope: !237, file: !55, line: 135, type: !57)
!251 = !DILocation(line: 135, column: 6, scope: !237)
!252 = !DILocation(line: 136, column: 9, scope: !237)
!253 = !DILocation(line: 136, column: 17, scope: !237)
!254 = !DILocation(line: 136, column: 2, scope: !237)
!255 = !DILocation(line: 137, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !237, file: !55, line: 137, column: 2)
!257 = !DILocation(line: 137, column: 7, scope: !256)
!258 = !DILocation(line: 137, column: 14, scope: !259)
!259 = !DILexicalBlockFile(scope: !260, file: !55, discriminator: 1)
!260 = distinct !DILexicalBlock(scope: !256, file: !55, line: 137, column: 2)
!261 = !DILocation(line: 137, column: 18, scope: !259)
!262 = !DILocation(line: 137, column: 16, scope: !259)
!263 = !DILocation(line: 137, column: 2, scope: !259)
!264 = !DILocation(line: 139, column: 11, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !55, line: 138, column: 2)
!266 = !DILocation(line: 139, column: 27, scope: !265)
!267 = !DILocation(line: 139, column: 24, scope: !265)
!268 = !DILocation(line: 139, column: 3, scope: !265)
!269 = !DILocation(line: 140, column: 2, scope: !265)
!270 = !DILocation(line: 137, column: 28, scope: !271)
!271 = !DILexicalBlockFile(scope: !260, file: !55, discriminator: 2)
!272 = !DILocation(line: 137, column: 36, scope: !271)
!273 = !DILocation(line: 137, column: 2, scope: !271)
!274 = distinct !{!274, !275}
!275 = !DILocation(line: 137, column: 2, scope: !237)
!276 = !DILocation(line: 141, column: 1, scope: !237)
!277 = distinct !DISubprogram(name: "buf_out_uint32", scope: !55, file: !55, line: 216, type: !278, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !50, !44}
!280 = !DILocalVariable(name: "buffer", arg: 1, scope: !277, file: !55, line: 216, type: !50)
!281 = !DILocation(line: 216, column: 24, scope: !277)
!282 = !DILocalVariable(name: "value", arg: 2, scope: !277, file: !55, line: 216, type: !44)
!283 = !DILocation(line: 216, column: 39, scope: !277)
!284 = !DILocation(line: 218, column: 15, scope: !277)
!285 = !DILocation(line: 218, column: 22, scope: !277)
!286 = !DILocation(line: 218, column: 14, scope: !277)
!287 = !DILocation(line: 218, column: 2, scope: !277)
!288 = !DILocation(line: 218, column: 12, scope: !277)
!289 = !DILocation(line: 219, column: 15, scope: !277)
!290 = !DILocation(line: 219, column: 21, scope: !277)
!291 = !DILocation(line: 219, column: 27, scope: !277)
!292 = !DILocation(line: 219, column: 14, scope: !277)
!293 = !DILocation(line: 219, column: 2, scope: !277)
!294 = !DILocation(line: 219, column: 12, scope: !277)
!295 = !DILocation(line: 220, column: 15, scope: !277)
!296 = !DILocation(line: 220, column: 21, scope: !277)
!297 = !DILocation(line: 220, column: 28, scope: !277)
!298 = !DILocation(line: 220, column: 14, scope: !277)
!299 = !DILocation(line: 220, column: 2, scope: !277)
!300 = !DILocation(line: 220, column: 12, scope: !277)
!301 = !DILocation(line: 221, column: 15, scope: !277)
!302 = !DILocation(line: 221, column: 21, scope: !277)
!303 = !DILocation(line: 221, column: 28, scope: !277)
!304 = !DILocation(line: 221, column: 14, scope: !277)
!305 = !DILocation(line: 221, column: 2, scope: !277)
!306 = !DILocation(line: 221, column: 12, scope: !277)
!307 = !DILocation(line: 222, column: 1, scope: !277)
!308 = distinct !DISubprogram(name: "sec_sign", scope: !55, file: !55, line: 226, type: !309, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !50, !57, !50, !57, !50, !57}
!311 = !DILocalVariable(name: "signature", arg: 1, scope: !308, file: !55, line: 226, type: !50)
!312 = !DILocation(line: 226, column: 18, scope: !308)
!313 = !DILocalVariable(name: "siglen", arg: 2, scope: !308, file: !55, line: 226, type: !57)
!314 = !DILocation(line: 226, column: 33, scope: !308)
!315 = !DILocalVariable(name: "session_key", arg: 3, scope: !308, file: !55, line: 226, type: !50)
!316 = !DILocation(line: 226, column: 49, scope: !308)
!317 = !DILocalVariable(name: "keylen", arg: 4, scope: !308, file: !55, line: 226, type: !57)
!318 = !DILocation(line: 226, column: 66, scope: !308)
!319 = !DILocalVariable(name: "data", arg: 5, scope: !308, file: !55, line: 226, type: !50)
!320 = !DILocation(line: 226, column: 82, scope: !308)
!321 = !DILocalVariable(name: "datalen", arg: 6, scope: !308, file: !55, line: 226, type: !57)
!322 = !DILocation(line: 226, column: 92, scope: !308)
!323 = !DILocalVariable(name: "shasig", scope: !308, file: !55, line: 228, type: !110)
!324 = !DILocation(line: 228, column: 8, scope: !308)
!325 = !DILocalVariable(name: "md5sig", scope: !308, file: !55, line: 229, type: !70)
!326 = !DILocation(line: 229, column: 8, scope: !308)
!327 = !DILocalVariable(name: "lenhdr", scope: !308, file: !55, line: 230, type: !115)
!328 = !DILocation(line: 230, column: 8, scope: !308)
!329 = !DILocalVariable(name: "sha1", scope: !308, file: !55, line: 231, type: !120)
!330 = !DILocation(line: 231, column: 10, scope: !308)
!331 = !DILocalVariable(name: "md5", scope: !308, file: !55, line: 232, type: !136)
!332 = !DILocation(line: 232, column: 10, scope: !308)
!333 = !DILocation(line: 234, column: 17, scope: !308)
!334 = !DILocation(line: 234, column: 25, scope: !308)
!335 = !DILocation(line: 234, column: 2, scope: !308)
!336 = !DILocation(line: 236, column: 2, scope: !308)
!337 = !DILocation(line: 237, column: 27, scope: !308)
!338 = !DILocation(line: 237, column: 40, scope: !308)
!339 = !DILocation(line: 237, column: 2, scope: !308)
!340 = !DILocation(line: 238, column: 2, scope: !308)
!341 = !DILocation(line: 239, column: 27, scope: !308)
!342 = !DILocation(line: 239, column: 2, scope: !308)
!343 = !DILocation(line: 240, column: 27, scope: !308)
!344 = !DILocation(line: 240, column: 33, scope: !308)
!345 = !DILocation(line: 240, column: 2, scope: !308)
!346 = !DILocation(line: 241, column: 26, scope: !308)
!347 = !DILocation(line: 241, column: 2, scope: !308)
!348 = !DILocation(line: 243, column: 2, scope: !308)
!349 = !DILocation(line: 244, column: 25, scope: !308)
!350 = !DILocation(line: 244, column: 38, scope: !308)
!351 = !DILocation(line: 244, column: 2, scope: !308)
!352 = !DILocation(line: 245, column: 2, scope: !308)
!353 = !DILocation(line: 246, column: 25, scope: !308)
!354 = !DILocation(line: 246, column: 2, scope: !308)
!355 = !DILocation(line: 247, column: 24, scope: !308)
!356 = !DILocation(line: 247, column: 2, scope: !308)
!357 = !DILocation(line: 249, column: 9, scope: !308)
!358 = !DILocation(line: 249, column: 2, scope: !308)
!359 = !DILocation(line: 249, column: 28, scope: !308)
!360 = !DILocation(line: 250, column: 1, scope: !308)
!361 = distinct !DISubprogram(name: "sec_decrypt", scope: !55, file: !55, line: 297, type: !362, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !50, !57}
!364 = !DILocalVariable(name: "data", arg: 1, scope: !361, file: !55, line: 297, type: !50)
!365 = !DILocation(line: 297, column: 21, scope: !361)
!366 = !DILocalVariable(name: "length", arg: 2, scope: !361, file: !55, line: 297, type: !57)
!367 = !DILocation(line: 297, column: 31, scope: !361)
!368 = !DILocation(line: 299, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !55, line: 299, column: 6)
!370 = !DILocation(line: 299, column: 30, scope: !369)
!371 = !DILocation(line: 299, column: 6, scope: !361)
!372 = !DILocation(line: 301, column: 3, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !55, line: 300, column: 2)
!374 = !DILocation(line: 302, column: 60, scope: !373)
!375 = !DILocation(line: 302, column: 3, scope: !373)
!376 = !DILocation(line: 303, column: 27, scope: !373)
!377 = !DILocation(line: 304, column: 2, scope: !373)
!378 = !DILocation(line: 306, column: 38, scope: !361)
!379 = !DILocation(line: 306, column: 44, scope: !361)
!380 = !DILocation(line: 306, column: 50, scope: !361)
!381 = !DILocation(line: 306, column: 2, scope: !361)
!382 = !DILocation(line: 307, column: 25, scope: !361)
!383 = !DILocation(line: 308, column: 1, scope: !361)
!384 = distinct !DISubprogram(name: "sec_update", scope: !55, file: !55, line: 254, type: !385, isLocal: true, isDefinition: true, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !50, !50}
!387 = !DILocalVariable(name: "key", arg: 1, scope: !384, file: !55, line: 254, type: !50)
!388 = !DILocation(line: 254, column: 20, scope: !384)
!389 = !DILocalVariable(name: "update_key", arg: 2, scope: !384, file: !55, line: 254, type: !50)
!390 = !DILocation(line: 254, column: 33, scope: !384)
!391 = !DILocalVariable(name: "shasig", scope: !384, file: !55, line: 256, type: !110)
!392 = !DILocation(line: 256, column: 8, scope: !384)
!393 = !DILocalVariable(name: "sha1", scope: !384, file: !55, line: 257, type: !120)
!394 = !DILocation(line: 257, column: 10, scope: !384)
!395 = !DILocalVariable(name: "md5", scope: !384, file: !55, line: 258, type: !136)
!396 = !DILocation(line: 258, column: 10, scope: !384)
!397 = !DILocalVariable(name: "update", scope: !384, file: !55, line: 259, type: !59)
!398 = !DILocation(line: 259, column: 10, scope: !384)
!399 = !DILocation(line: 261, column: 2, scope: !384)
!400 = !DILocation(line: 262, column: 27, scope: !384)
!401 = !DILocation(line: 262, column: 39, scope: !384)
!402 = !DILocation(line: 262, column: 2, scope: !384)
!403 = !DILocation(line: 263, column: 2, scope: !384)
!404 = !DILocation(line: 264, column: 27, scope: !384)
!405 = !DILocation(line: 264, column: 32, scope: !384)
!406 = !DILocation(line: 264, column: 2, scope: !384)
!407 = !DILocation(line: 265, column: 26, scope: !384)
!408 = !DILocation(line: 265, column: 2, scope: !384)
!409 = !DILocation(line: 267, column: 2, scope: !384)
!410 = !DILocation(line: 268, column: 25, scope: !384)
!411 = !DILocation(line: 268, column: 37, scope: !384)
!412 = !DILocation(line: 268, column: 2, scope: !384)
!413 = !DILocation(line: 269, column: 2, scope: !384)
!414 = !DILocation(line: 270, column: 25, scope: !384)
!415 = !DILocation(line: 270, column: 2, scope: !384)
!416 = !DILocation(line: 271, column: 24, scope: !384)
!417 = !DILocation(line: 271, column: 2, scope: !384)
!418 = !DILocation(line: 273, column: 29, scope: !384)
!419 = !DILocation(line: 273, column: 34, scope: !384)
!420 = !DILocation(line: 273, column: 2, scope: !384)
!421 = !DILocation(line: 274, column: 27, scope: !384)
!422 = !DILocation(line: 274, column: 32, scope: !384)
!423 = !DILocation(line: 274, column: 37, scope: !384)
!424 = !DILocation(line: 274, column: 2, scope: !384)
!425 = !DILocation(line: 276, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !384, file: !55, line: 276, column: 6)
!427 = !DILocation(line: 276, column: 20, scope: !426)
!428 = !DILocation(line: 276, column: 6, scope: !384)
!429 = !DILocation(line: 277, column: 18, scope: !426)
!430 = !DILocation(line: 277, column: 3, scope: !426)
!431 = !DILocation(line: 278, column: 1, scope: !384)
!432 = distinct !DISubprogram(name: "sec_init", scope: !55, file: !55, line: 320, type: !433, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !44, !57}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "STREAM", file: !436, line: 40, baseType: !437)
!436 = !DIFile(filename: "stream.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !436, line: 25, size: 576, align: 64, elements: !439)
!439 = !{!440, !442, !443, !444, !445, !446, !447, !448, !449}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !438, file: !436, line: 27, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !438, file: !436, line: 28, baseType: !441, size: 64, align: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !438, file: !436, line: 29, baseType: !441, size: 64, align: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !438, file: !436, line: 30, baseType: !45, size: 32, align: 32, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "iso_hdr", scope: !438, file: !436, line: 33, baseType: !441, size: 64, align: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mcs_hdr", scope: !438, file: !436, line: 34, baseType: !441, size: 64, align: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sec_hdr", scope: !438, file: !436, line: 35, baseType: !441, size: 64, align: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rdp_hdr", scope: !438, file: !436, line: 36, baseType: !441, size: 64, align: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "channel_hdr", scope: !438, file: !436, line: 37, baseType: !441, size: 64, align: 64, offset: 512)
!450 = !DILocalVariable(name: "flags", arg: 1, scope: !432, file: !55, line: 320, type: !44)
!451 = !DILocation(line: 320, column: 17, scope: !432)
!452 = !DILocalVariable(name: "maxlen", arg: 2, scope: !432, file: !55, line: 320, type: !57)
!453 = !DILocation(line: 320, column: 28, scope: !432)
!454 = !DILocalVariable(name: "hdrlen", scope: !432, file: !55, line: 322, type: !57)
!455 = !DILocation(line: 322, column: 6, scope: !432)
!456 = !DILocalVariable(name: "s", scope: !432, file: !55, line: 323, type: !435)
!457 = !DILocation(line: 323, column: 9, scope: !432)
!458 = !DILocation(line: 325, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !432, file: !55, line: 325, column: 6)
!460 = !DILocation(line: 325, column: 24, scope: !459)
!461 = !DILocation(line: 325, column: 28, scope: !462)
!462 = !DILexicalBlockFile(scope: !459, file: !55, discriminator: 1)
!463 = !DILocation(line: 325, column: 6, scope: !462)
!464 = !DILocation(line: 326, column: 13, scope: !459)
!465 = !DILocation(line: 326, column: 19, scope: !459)
!466 = !DILocation(line: 326, column: 12, scope: !459)
!467 = !DILocation(line: 326, column: 10, scope: !459)
!468 = !DILocation(line: 326, column: 3, scope: !459)
!469 = !DILocation(line: 328, column: 13, scope: !459)
!470 = !DILocation(line: 328, column: 19, scope: !459)
!471 = !DILocation(line: 328, column: 12, scope: !459)
!472 = !DILocation(line: 328, column: 10, scope: !459)
!473 = !DILocation(line: 329, column: 15, scope: !432)
!474 = !DILocation(line: 329, column: 24, scope: !432)
!475 = !DILocation(line: 329, column: 22, scope: !432)
!476 = !DILocation(line: 329, column: 6, scope: !432)
!477 = !DILocation(line: 329, column: 4, scope: !432)
!478 = !DILocation(line: 330, column: 20, scope: !479)
!479 = distinct !DILexicalBlock(scope: !432, file: !55, line: 330, column: 2)
!480 = !DILocation(line: 330, column: 24, scope: !479)
!481 = !DILocation(line: 330, column: 5, scope: !479)
!482 = !DILocation(line: 330, column: 9, scope: !479)
!483 = !DILocation(line: 330, column: 17, scope: !479)
!484 = !DILocation(line: 330, column: 37, scope: !479)
!485 = !DILocation(line: 330, column: 28, scope: !479)
!486 = !DILocation(line: 330, column: 32, scope: !479)
!487 = !DILocation(line: 330, column: 34, scope: !479)
!488 = !DILocation(line: 332, column: 9, scope: !432)
!489 = !DILocation(line: 332, column: 2, scope: !432)
!490 = distinct !DISubprogram(name: "sec_send_to_channel", scope: !55, file: !55, line: 337, type: !491, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !435, !44, !47}
!493 = !DILocalVariable(name: "s", arg: 1, scope: !490, file: !55, line: 337, type: !435)
!494 = !DILocation(line: 337, column: 28, scope: !490)
!495 = !DILocalVariable(name: "flags", arg: 2, scope: !490, file: !55, line: 337, type: !44)
!496 = !DILocation(line: 337, column: 38, scope: !490)
!497 = !DILocalVariable(name: "channel", arg: 3, scope: !490, file: !55, line: 337, type: !47)
!498 = !DILocation(line: 337, column: 52, scope: !490)
!499 = !DILocalVariable(name: "datalen", scope: !490, file: !55, line: 339, type: !57)
!500 = !DILocation(line: 339, column: 6, scope: !490)
!501 = !DILocation(line: 345, column: 12, scope: !490)
!502 = !DILocation(line: 345, column: 16, scope: !490)
!503 = !DILocation(line: 345, column: 3, scope: !490)
!504 = !DILocation(line: 345, column: 7, scope: !490)
!505 = !DILocation(line: 345, column: 9, scope: !490)
!506 = !DILocation(line: 346, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !490, file: !55, line: 346, column: 6)
!508 = !DILocation(line: 346, column: 25, scope: !507)
!509 = !DILocation(line: 346, column: 29, scope: !510)
!510 = !DILexicalBlockFile(scope: !507, file: !55, discriminator: 1)
!511 = !DILocation(line: 346, column: 53, scope: !510)
!512 = !DILocation(line: 346, column: 57, scope: !513)
!513 = !DILexicalBlockFile(scope: !507, file: !55, discriminator: 2)
!514 = !DILocation(line: 346, column: 63, scope: !513)
!515 = !DILocation(line: 346, column: 6, scope: !513)
!516 = !DILocation(line: 347, column: 27, scope: !517)
!517 = distinct !DILexicalBlock(scope: !507, file: !55, line: 347, column: 3)
!518 = !DILocation(line: 347, column: 18, scope: !517)
!519 = !DILocation(line: 347, column: 22, scope: !517)
!520 = !DILocation(line: 347, column: 5, scope: !517)
!521 = !DILocation(line: 347, column: 25, scope: !517)
!522 = !DILocation(line: 347, column: 35, scope: !517)
!523 = !DILocation(line: 347, column: 39, scope: !517)
!524 = !DILocation(line: 347, column: 41, scope: !517)
!525 = !DILocation(line: 347, column: 47, scope: !517)
!526 = !DILocation(line: 349, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !490, file: !55, line: 349, column: 6)
!528 = !DILocation(line: 349, column: 12, scope: !527)
!529 = !DILocation(line: 349, column: 6, scope: !490)
!530 = !DILocation(line: 351, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !55, line: 350, column: 2)
!532 = !DILocation(line: 352, column: 13, scope: !531)
!533 = !DILocation(line: 352, column: 16, scope: !531)
!534 = !DILocation(line: 352, column: 22, scope: !531)
!535 = !DILocation(line: 352, column: 25, scope: !531)
!536 = !DILocation(line: 352, column: 20, scope: !531)
!537 = !DILocation(line: 352, column: 27, scope: !531)
!538 = !DILocation(line: 352, column: 11, scope: !531)
!539 = !DILocation(line: 353, column: 12, scope: !531)
!540 = !DILocation(line: 353, column: 15, scope: !531)
!541 = !DILocation(line: 353, column: 37, scope: !531)
!542 = !DILocation(line: 353, column: 52, scope: !531)
!543 = !DILocation(line: 353, column: 55, scope: !531)
!544 = !DILocation(line: 353, column: 57, scope: !531)
!545 = !DILocation(line: 353, column: 62, scope: !531)
!546 = !DILocation(line: 353, column: 3, scope: !531)
!547 = !DILocation(line: 354, column: 15, scope: !531)
!548 = !DILocation(line: 354, column: 18, scope: !531)
!549 = !DILocation(line: 354, column: 20, scope: !531)
!550 = !DILocation(line: 354, column: 25, scope: !531)
!551 = !DILocation(line: 354, column: 3, scope: !531)
!552 = !DILocation(line: 355, column: 2, scope: !531)
!553 = !DILocation(line: 357, column: 22, scope: !490)
!554 = !DILocation(line: 357, column: 25, scope: !490)
!555 = !DILocation(line: 357, column: 2, scope: !490)
!556 = !DILocation(line: 362, column: 1, scope: !490)
!557 = distinct !DISubprogram(name: "sec_encrypt", scope: !55, file: !55, line: 282, type: !362, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!558 = !DILocalVariable(name: "data", arg: 1, scope: !557, file: !55, line: 282, type: !50)
!559 = !DILocation(line: 282, column: 21, scope: !557)
!560 = !DILocalVariable(name: "length", arg: 2, scope: !557, file: !55, line: 282, type: !57)
!561 = !DILocation(line: 282, column: 31, scope: !557)
!562 = !DILocation(line: 284, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !557, file: !55, line: 284, column: 6)
!564 = !DILocation(line: 284, column: 30, scope: !563)
!565 = !DILocation(line: 284, column: 6, scope: !557)
!566 = !DILocation(line: 286, column: 3, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !55, line: 285, column: 2)
!568 = !DILocation(line: 287, column: 60, scope: !567)
!569 = !DILocation(line: 287, column: 3, scope: !567)
!570 = !DILocation(line: 288, column: 27, scope: !567)
!571 = !DILocation(line: 289, column: 2, scope: !567)
!572 = !DILocation(line: 291, column: 38, scope: !557)
!573 = !DILocation(line: 291, column: 44, scope: !557)
!574 = !DILocation(line: 291, column: 50, scope: !557)
!575 = !DILocation(line: 291, column: 2, scope: !557)
!576 = !DILocation(line: 292, column: 25, scope: !557)
!577 = !DILocation(line: 293, column: 1, scope: !557)
!578 = distinct !DISubprogram(name: "sec_send", scope: !55, file: !55, line: 367, type: !579, isLocal: false, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !435, !44}
!581 = !DILocalVariable(name: "s", arg: 1, scope: !578, file: !55, line: 367, type: !435)
!582 = !DILocation(line: 367, column: 17, scope: !578)
!583 = !DILocalVariable(name: "flags", arg: 2, scope: !578, file: !55, line: 367, type: !44)
!584 = !DILocation(line: 367, column: 27, scope: !578)
!585 = !DILocation(line: 369, column: 22, scope: !578)
!586 = !DILocation(line: 369, column: 25, scope: !578)
!587 = !DILocation(line: 369, column: 2, scope: !578)
!588 = !DILocation(line: 370, column: 1, scope: !578)
!589 = distinct !DISubprogram(name: "sec_process_mcs_data", scope: !55, file: !55, line: 794, type: !590, isLocal: false, isDefinition: true, scopeLine: 795, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !435}
!592 = !DILocalVariable(name: "s", arg: 1, scope: !589, file: !55, line: 794, type: !435)
!593 = !DILocation(line: 794, column: 29, scope: !589)
!594 = !DILocalVariable(name: "tag", scope: !589, file: !55, line: 796, type: !47)
!595 = !DILocation(line: 796, column: 9, scope: !589)
!596 = !DILocalVariable(name: "length", scope: !589, file: !55, line: 796, type: !47)
!597 = !DILocation(line: 796, column: 14, scope: !589)
!598 = !DILocalVariable(name: "next_tag", scope: !589, file: !55, line: 797, type: !50)
!599 = !DILocation(line: 797, column: 9, scope: !589)
!600 = !DILocalVariable(name: "len", scope: !589, file: !55, line: 798, type: !51)
!601 = !DILocation(line: 798, column: 8, scope: !589)
!602 = !DILocation(line: 800, column: 3, scope: !589)
!603 = !DILocation(line: 800, column: 7, scope: !589)
!604 = !DILocation(line: 800, column: 9, scope: !589)
!605 = !DILocation(line: 801, column: 11, scope: !589)
!606 = !DILocation(line: 801, column: 15, scope: !589)
!607 = !DILocation(line: 801, column: 16, scope: !589)
!608 = !DILocation(line: 801, column: 8, scope: !589)
!609 = !DILocation(line: 801, column: 6, scope: !589)
!610 = !DILocation(line: 802, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !589, file: !55, line: 802, column: 6)
!612 = !DILocation(line: 802, column: 10, scope: !611)
!613 = !DILocation(line: 802, column: 6, scope: !589)
!614 = !DILocation(line: 803, column: 12, scope: !611)
!615 = !DILocation(line: 803, column: 16, scope: !611)
!616 = !DILocation(line: 803, column: 17, scope: !611)
!617 = !DILocation(line: 803, column: 9, scope: !611)
!618 = !DILocation(line: 803, column: 7, scope: !611)
!619 = !DILocation(line: 803, column: 3, scope: !611)
!620 = !DILocation(line: 804, column: 2, scope: !589)
!621 = !DILocation(line: 806, column: 2, scope: !589)
!622 = !DILocation(line: 806, column: 9, scope: !623)
!623 = !DILexicalBlockFile(scope: !589, file: !55, discriminator: 1)
!624 = !DILocation(line: 806, column: 12, scope: !623)
!625 = !DILocation(line: 806, column: 16, scope: !623)
!626 = !DILocation(line: 806, column: 19, scope: !623)
!627 = !DILocation(line: 806, column: 14, scope: !623)
!628 = !DILocation(line: 806, column: 2, scope: !623)
!629 = !DILocation(line: 808, column: 24, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !55, line: 808, column: 3)
!631 = distinct !DILexicalBlock(scope: !589, file: !55, line: 807, column: 2)
!632 = !DILocation(line: 808, column: 28, scope: !630)
!633 = !DILocation(line: 808, column: 11, scope: !630)
!634 = !DILocation(line: 808, column: 9, scope: !630)
!635 = !DILocation(line: 808, column: 33, scope: !630)
!636 = !DILocation(line: 808, column: 37, scope: !630)
!637 = !DILocation(line: 808, column: 39, scope: !630)
!638 = !DILocation(line: 809, column: 27, scope: !639)
!639 = distinct !DILexicalBlock(scope: !631, file: !55, line: 809, column: 3)
!640 = !DILocation(line: 809, column: 31, scope: !639)
!641 = !DILocation(line: 809, column: 14, scope: !639)
!642 = !DILocation(line: 809, column: 12, scope: !639)
!643 = !DILocation(line: 809, column: 36, scope: !639)
!644 = !DILocation(line: 809, column: 40, scope: !639)
!645 = !DILocation(line: 809, column: 42, scope: !639)
!646 = !DILocation(line: 811, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !631, file: !55, line: 811, column: 7)
!648 = !DILocation(line: 811, column: 14, scope: !647)
!649 = !DILocation(line: 811, column: 7, scope: !631)
!650 = !DILocation(line: 812, column: 4, scope: !647)
!651 = !DILocation(line: 814, column: 14, scope: !631)
!652 = !DILocation(line: 814, column: 17, scope: !631)
!653 = !DILocation(line: 814, column: 21, scope: !631)
!654 = !DILocation(line: 814, column: 19, scope: !631)
!655 = !DILocation(line: 814, column: 28, scope: !631)
!656 = !DILocation(line: 814, column: 12, scope: !631)
!657 = !DILocation(line: 816, column: 11, scope: !631)
!658 = !DILocation(line: 816, column: 3, scope: !631)
!659 = !DILocation(line: 819, column: 5, scope: !660)
!660 = distinct !DILexicalBlock(scope: !631, file: !55, line: 817, column: 3)
!661 = !DILocation(line: 820, column: 26, scope: !660)
!662 = !DILocation(line: 820, column: 5, scope: !660)
!663 = !DILocation(line: 821, column: 5, scope: !660)
!664 = !DILocation(line: 824, column: 5, scope: !660)
!665 = !DILocation(line: 825, column: 28, scope: !660)
!666 = !DILocation(line: 825, column: 5, scope: !660)
!667 = !DILocation(line: 826, column: 5, scope: !660)
!668 = !DILocation(line: 829, column: 5, scope: !660)
!669 = !DILocation(line: 833, column: 5, scope: !660)
!670 = !DILocation(line: 836, column: 62, scope: !660)
!671 = !DILocation(line: 836, column: 5, scope: !660)
!672 = !DILocation(line: 837, column: 3, scope: !660)
!673 = !DILocation(line: 839, column: 10, scope: !631)
!674 = !DILocation(line: 839, column: 3, scope: !631)
!675 = !DILocation(line: 839, column: 6, scope: !631)
!676 = !DILocation(line: 839, column: 8, scope: !631)
!677 = !DILocation(line: 806, column: 2, scope: !678)
!678 = !DILexicalBlockFile(scope: !589, file: !55, discriminator: 2)
!679 = distinct !{!679, !621}
!680 = !DILocation(line: 841, column: 1, scope: !589)
!681 = distinct !DISubprogram(name: "sec_process_srv_info", scope: !55, file: !55, line: 779, type: !590, isLocal: true, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!682 = !DILocalVariable(name: "s", arg: 1, scope: !681, file: !55, line: 779, type: !435)
!683 = !DILocation(line: 779, column: 29, scope: !681)
!684 = !DILocation(line: 781, column: 40, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !55, line: 781, column: 2)
!686 = !DILocation(line: 781, column: 44, scope: !685)
!687 = !DILocation(line: 781, column: 27, scope: !685)
!688 = !DILocation(line: 781, column: 25, scope: !685)
!689 = !DILocation(line: 781, column: 49, scope: !685)
!690 = !DILocation(line: 781, column: 53, scope: !685)
!691 = !DILocation(line: 781, column: 55, scope: !685)
!692 = !DILocation(line: 783, column: 9, scope: !681)
!693 = !DILocation(line: 782, column: 2, scope: !681)
!694 = !DILocation(line: 784, column: 11, scope: !695)
!695 = distinct !DILexicalBlock(scope: !681, file: !55, line: 784, column: 6)
!696 = !DILocation(line: 784, column: 8, scope: !695)
!697 = !DILocation(line: 784, column: 6, scope: !681)
!698 = !DILocation(line: 786, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !55, line: 785, column: 2)
!700 = !DILocation(line: 787, column: 18, scope: !699)
!701 = !DILocation(line: 788, column: 2, scope: !699)
!702 = !DILocation(line: 789, column: 1, scope: !681)
!703 = distinct !DISubprogram(name: "sec_process_crypt_info", scope: !55, file: !55, line: 755, type: !590, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!704 = !DILocalVariable(name: "s", arg: 1, scope: !703, file: !55, line: 755, type: !435)
!705 = !DILocation(line: 755, column: 31, scope: !703)
!706 = !DILocalVariable(name: "server_random", scope: !703, file: !55, line: 757, type: !50)
!707 = !DILocation(line: 757, column: 9, scope: !703)
!708 = !DILocalVariable(name: "modulus", scope: !703, file: !55, line: 758, type: !88)
!709 = !DILocation(line: 758, column: 8, scope: !703)
!710 = !DILocalVariable(name: "exponent", scope: !703, file: !55, line: 759, type: !115)
!711 = !DILocation(line: 759, column: 8, scope: !703)
!712 = !DILocalVariable(name: "rc4_key_size", scope: !703, file: !55, line: 760, type: !44)
!713 = !DILocation(line: 760, column: 9, scope: !703)
!714 = !DILocation(line: 762, column: 2, scope: !703)
!715 = !DILocation(line: 764, column: 2, scope: !703)
!716 = !DILocation(line: 765, column: 2, scope: !703)
!717 = !DILocation(line: 766, column: 28, scope: !718)
!718 = distinct !DILexicalBlock(scope: !703, file: !55, line: 766, column: 6)
!719 = !DILocation(line: 766, column: 62, scope: !718)
!720 = !DILocation(line: 766, column: 71, scope: !718)
!721 = !DILocation(line: 766, column: 7, scope: !718)
!722 = !DILocation(line: 766, column: 6, scope: !703)
!723 = !DILocation(line: 767, column: 3, scope: !718)
!724 = !DILocation(line: 769, column: 2, scope: !703)
!725 = !DILocation(line: 770, column: 2, scope: !703)
!726 = !DILocation(line: 772, column: 4, scope: !703)
!727 = !DILocation(line: 772, column: 29, scope: !703)
!728 = !DILocation(line: 772, column: 38, scope: !703)
!729 = !DILocation(line: 771, column: 2, scope: !703)
!730 = !DILocation(line: 773, column: 37, scope: !703)
!731 = !DILocation(line: 773, column: 52, scope: !703)
!732 = !DILocation(line: 773, column: 2, scope: !703)
!733 = !DILocation(line: 774, column: 1, scope: !703)
!734 = !DILocation(line: 774, column: 1, scope: !735)
!735 = !DILexicalBlockFile(scope: !703, file: !55, discriminator: 1)
!736 = distinct !DISubprogram(name: "sec_recv", scope: !55, file: !55, line: 845, type: !737, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!737 = !DISubroutineType(types: !738)
!738 = !{!435, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_BOOL", file: !31, line: 28, baseType: !57)
!741 = !DILocalVariable(name: "is_fastpath", arg: 1, scope: !736, file: !55, line: 845, type: !739)
!742 = !DILocation(line: 845, column: 19, scope: !736)
!743 = !DILocalVariable(name: "fastpath_hdr", scope: !736, file: !55, line: 847, type: !51)
!744 = !DILocation(line: 847, column: 8, scope: !736)
!745 = !DILocalVariable(name: "fastpath_flags", scope: !736, file: !55, line: 847, type: !51)
!746 = !DILocation(line: 847, column: 22, scope: !736)
!747 = !DILocalVariable(name: "sec_flags", scope: !736, file: !55, line: 848, type: !47)
!748 = !DILocation(line: 848, column: 9, scope: !736)
!749 = !DILocalVariable(name: "channel", scope: !736, file: !55, line: 849, type: !47)
!750 = !DILocation(line: 849, column: 9, scope: !736)
!751 = !DILocalVariable(name: "s", scope: !736, file: !55, line: 850, type: !435)
!752 = !DILocation(line: 850, column: 9, scope: !736)
!753 = !DILocation(line: 852, column: 2, scope: !736)
!754 = !DILocation(line: 852, column: 33, scope: !755)
!755 = !DILexicalBlockFile(scope: !736, file: !55, discriminator: 1)
!756 = !DILocation(line: 852, column: 14, scope: !755)
!757 = !DILocation(line: 852, column: 12, scope: !755)
!758 = !DILocation(line: 852, column: 62, scope: !755)
!759 = !DILocation(line: 852, column: 2, scope: !755)
!760 = !DILocation(line: 854, column: 8, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !55, line: 854, column: 7)
!762 = distinct !DILexicalBlock(scope: !736, file: !55, line: 853, column: 2)
!763 = !DILocation(line: 854, column: 7, scope: !761)
!764 = !DILocation(line: 854, column: 20, scope: !761)
!765 = !DILocation(line: 854, column: 7, scope: !762)
!766 = !DILocation(line: 859, column: 22, scope: !767)
!767 = distinct !DILexicalBlock(scope: !761, file: !55, line: 855, column: 3)
!768 = !DILocation(line: 859, column: 35, scope: !767)
!769 = !DILocation(line: 859, column: 43, scope: !767)
!770 = !DILocation(line: 859, column: 21, scope: !767)
!771 = !DILocation(line: 859, column: 19, scope: !767)
!772 = !DILocation(line: 860, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !767, file: !55, line: 860, column: 8)
!774 = !DILocation(line: 860, column: 23, scope: !773)
!775 = !DILocation(line: 860, column: 8, scope: !767)
!776 = !DILocation(line: 862, column: 6, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !55, line: 861, column: 4)
!778 = !DILocation(line: 862, column: 10, scope: !777)
!779 = !DILocation(line: 862, column: 12, scope: !777)
!780 = !DILocation(line: 863, column: 17, scope: !777)
!781 = !DILocation(line: 863, column: 20, scope: !777)
!782 = !DILocation(line: 863, column: 23, scope: !777)
!783 = !DILocation(line: 863, column: 26, scope: !777)
!784 = !DILocation(line: 863, column: 32, scope: !777)
!785 = !DILocation(line: 863, column: 35, scope: !777)
!786 = !DILocation(line: 863, column: 30, scope: !777)
!787 = !DILocation(line: 863, column: 5, scope: !777)
!788 = !DILocation(line: 864, column: 4, scope: !777)
!789 = !DILocation(line: 865, column: 11, scope: !767)
!790 = !DILocation(line: 865, column: 4, scope: !767)
!791 = !DILocation(line: 868, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !762, file: !55, line: 868, column: 7)
!793 = !DILocation(line: 868, column: 20, scope: !792)
!794 = !DILocation(line: 868, column: 25, scope: !795)
!795 = !DILexicalBlockFile(scope: !792, file: !55, discriminator: 1)
!796 = !DILocation(line: 868, column: 42, scope: !795)
!797 = !DILocation(line: 868, column: 46, scope: !798)
!798 = !DILexicalBlockFile(scope: !792, file: !55, discriminator: 2)
!799 = !DILocation(line: 868, column: 7, scope: !798)
!800 = !DILocation(line: 871, column: 31, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !55, line: 871, column: 4)
!802 = distinct !DILexicalBlock(scope: !792, file: !55, line: 869, column: 3)
!803 = !DILocation(line: 871, column: 35, scope: !801)
!804 = !DILocation(line: 871, column: 18, scope: !801)
!805 = !DILocation(line: 871, column: 16, scope: !801)
!806 = !DILocation(line: 871, column: 40, scope: !801)
!807 = !DILocation(line: 871, column: 44, scope: !801)
!808 = !DILocation(line: 871, column: 46, scope: !801)
!809 = !DILocation(line: 872, column: 5, scope: !802)
!810 = !DILocation(line: 872, column: 9, scope: !802)
!811 = !DILocation(line: 872, column: 11, scope: !802)
!812 = !DILocation(line: 874, column: 8, scope: !813)
!813 = distinct !DILexicalBlock(scope: !802, file: !55, line: 874, column: 8)
!814 = !DILocation(line: 874, column: 8, scope: !802)
!815 = !DILocation(line: 876, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !55, line: 876, column: 9)
!817 = distinct !DILexicalBlock(scope: !813, file: !55, line: 875, column: 4)
!818 = !DILocation(line: 876, column: 19, scope: !816)
!819 = !DILocation(line: 876, column: 9, scope: !817)
!820 = !DILocation(line: 878, column: 7, scope: !821)
!821 = distinct !DILexicalBlock(scope: !816, file: !55, line: 877, column: 5)
!822 = !DILocation(line: 878, column: 11, scope: !821)
!823 = !DILocation(line: 878, column: 13, scope: !821)
!824 = !DILocation(line: 879, column: 18, scope: !821)
!825 = !DILocation(line: 879, column: 21, scope: !821)
!826 = !DILocation(line: 879, column: 24, scope: !821)
!827 = !DILocation(line: 879, column: 27, scope: !821)
!828 = !DILocation(line: 879, column: 33, scope: !821)
!829 = !DILocation(line: 879, column: 36, scope: !821)
!830 = !DILocation(line: 879, column: 31, scope: !821)
!831 = !DILocation(line: 879, column: 6, scope: !821)
!832 = !DILocation(line: 880, column: 5, scope: !821)
!833 = !DILocation(line: 882, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !817, file: !55, line: 882, column: 9)
!835 = !DILocation(line: 882, column: 19, scope: !834)
!836 = !DILocation(line: 882, column: 9, scope: !817)
!837 = !DILocation(line: 884, column: 22, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !55, line: 883, column: 5)
!839 = !DILocation(line: 884, column: 6, scope: !838)
!840 = !DILocation(line: 885, column: 6, scope: !838)
!841 = distinct !{!841, !753}
!842 = !DILocation(line: 888, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !817, file: !55, line: 888, column: 9)
!844 = !DILocation(line: 888, column: 19, scope: !843)
!845 = !DILocation(line: 888, column: 9, scope: !817)
!846 = !DILocalVariable(name: "swapbyte", scope: !847, file: !55, line: 890, type: !51)
!847 = distinct !DILexicalBlock(scope: !843, file: !55, line: 889, column: 5)
!848 = !DILocation(line: 890, column: 12, scope: !847)
!849 = !DILocation(line: 892, column: 7, scope: !847)
!850 = !DILocation(line: 892, column: 11, scope: !847)
!851 = !DILocation(line: 892, column: 13, scope: !847)
!852 = !DILocation(line: 893, column: 18, scope: !847)
!853 = !DILocation(line: 893, column: 21, scope: !847)
!854 = !DILocation(line: 893, column: 24, scope: !847)
!855 = !DILocation(line: 893, column: 27, scope: !847)
!856 = !DILocation(line: 893, column: 33, scope: !847)
!857 = !DILocation(line: 893, column: 36, scope: !847)
!858 = !DILocation(line: 893, column: 31, scope: !847)
!859 = !DILocation(line: 893, column: 6, scope: !847)
!860 = !DILocation(line: 896, column: 10, scope: !861)
!861 = distinct !DILexicalBlock(scope: !847, file: !55, line: 896, column: 10)
!862 = !DILocation(line: 896, column: 13, scope: !861)
!863 = !DILocation(line: 896, column: 18, scope: !861)
!864 = !DILocation(line: 896, column: 23, scope: !861)
!865 = !DILocation(line: 896, column: 26, scope: !866)
!866 = !DILexicalBlockFile(scope: !861, file: !55, discriminator: 1)
!867 = !DILocation(line: 896, column: 29, scope: !866)
!868 = !DILocation(line: 896, column: 34, scope: !866)
!869 = !DILocation(line: 896, column: 10, scope: !866)
!870 = !DILocation(line: 904, column: 18, scope: !871)
!871 = distinct !DILexicalBlock(scope: !861, file: !55, line: 897, column: 6)
!872 = !DILocation(line: 904, column: 21, scope: !871)
!873 = !DILocation(line: 904, column: 16, scope: !871)
!874 = !DILocation(line: 905, column: 17, scope: !871)
!875 = !DILocation(line: 905, column: 20, scope: !871)
!876 = !DILocation(line: 905, column: 7, scope: !871)
!877 = !DILocation(line: 905, column: 10, scope: !871)
!878 = !DILocation(line: 905, column: 15, scope: !871)
!879 = !DILocation(line: 906, column: 17, scope: !871)
!880 = !DILocation(line: 906, column: 7, scope: !871)
!881 = !DILocation(line: 906, column: 10, scope: !871)
!882 = !DILocation(line: 906, column: 15, scope: !871)
!883 = !DILocation(line: 908, column: 18, scope: !871)
!884 = !DILocation(line: 908, column: 21, scope: !871)
!885 = !DILocation(line: 908, column: 16, scope: !871)
!886 = !DILocation(line: 909, column: 17, scope: !871)
!887 = !DILocation(line: 909, column: 20, scope: !871)
!888 = !DILocation(line: 909, column: 7, scope: !871)
!889 = !DILocation(line: 909, column: 10, scope: !871)
!890 = !DILocation(line: 909, column: 15, scope: !871)
!891 = !DILocation(line: 910, column: 17, scope: !871)
!892 = !DILocation(line: 910, column: 7, scope: !871)
!893 = !DILocation(line: 910, column: 10, scope: !871)
!894 = !DILocation(line: 910, column: 15, scope: !871)
!895 = !DILocation(line: 912, column: 18, scope: !871)
!896 = !DILocation(line: 912, column: 21, scope: !871)
!897 = !DILocation(line: 912, column: 16, scope: !871)
!898 = !DILocation(line: 913, column: 17, scope: !871)
!899 = !DILocation(line: 913, column: 20, scope: !871)
!900 = !DILocation(line: 913, column: 7, scope: !871)
!901 = !DILocation(line: 913, column: 10, scope: !871)
!902 = !DILocation(line: 913, column: 15, scope: !871)
!903 = !DILocation(line: 914, column: 17, scope: !871)
!904 = !DILocation(line: 914, column: 7, scope: !871)
!905 = !DILocation(line: 914, column: 10, scope: !871)
!906 = !DILocation(line: 914, column: 15, scope: !871)
!907 = !DILocation(line: 915, column: 6, scope: !871)
!908 = !DILocation(line: 916, column: 5, scope: !847)
!909 = !DILocation(line: 917, column: 4, scope: !817)
!910 = !DILocation(line: 920, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !55, line: 920, column: 9)
!912 = distinct !DILexicalBlock(scope: !813, file: !55, line: 919, column: 4)
!913 = !DILocation(line: 920, column: 19, scope: !911)
!914 = !DILocation(line: 920, column: 9, scope: !912)
!915 = !DILocation(line: 922, column: 22, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !55, line: 921, column: 5)
!917 = !DILocation(line: 922, column: 6, scope: !916)
!918 = !DILocation(line: 923, column: 6, scope: !916)
!919 = !DILocation(line: 925, column: 5, scope: !912)
!920 = !DILocation(line: 925, column: 8, scope: !912)
!921 = !DILocation(line: 925, column: 10, scope: !912)
!922 = !DILocation(line: 927, column: 3, scope: !802)
!923 = !DILocation(line: 929, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !762, file: !55, line: 929, column: 7)
!925 = !DILocation(line: 929, column: 15, scope: !924)
!926 = !DILocation(line: 929, column: 7, scope: !762)
!927 = !DILocation(line: 931, column: 20, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !55, line: 930, column: 3)
!929 = !DILocation(line: 931, column: 23, scope: !928)
!930 = !DILocation(line: 931, column: 4, scope: !928)
!931 = !DILocation(line: 932, column: 4, scope: !928)
!932 = !DILocation(line: 935, column: 10, scope: !762)
!933 = !DILocation(line: 935, column: 3, scope: !762)
!934 = !DILocation(line: 938, column: 2, scope: !736)
!935 = !DILocation(line: 939, column: 1, scope: !736)
!936 = distinct !DISubprogram(name: "sec_connect", scope: !55, file: !55, line: 943, type: !937, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!937 = !DISubroutineType(types: !938)
!938 = !{!740, !240, !240, !240, !240, !740}
!939 = !DILocalVariable(name: "server", arg: 1, scope: !936, file: !55, line: 943, type: !240)
!940 = !DILocation(line: 943, column: 19, scope: !936)
!941 = !DILocalVariable(name: "username", arg: 2, scope: !936, file: !55, line: 943, type: !240)
!942 = !DILocation(line: 943, column: 33, scope: !936)
!943 = !DILocalVariable(name: "domain", arg: 3, scope: !936, file: !55, line: 943, type: !240)
!944 = !DILocation(line: 943, column: 49, scope: !936)
!945 = !DILocalVariable(name: "password", arg: 4, scope: !936, file: !55, line: 943, type: !240)
!946 = !DILocation(line: 943, column: 63, scope: !936)
!947 = !DILocalVariable(name: "reconnect", arg: 5, scope: !936, file: !55, line: 943, type: !740)
!948 = !DILocation(line: 943, column: 81, scope: !936)
!949 = !DILocalVariable(name: "selected_proto", scope: !936, file: !55, line: 945, type: !44)
!950 = !DILocation(line: 945, column: 9, scope: !936)
!951 = !DILocalVariable(name: "mcs_data", scope: !936, file: !55, line: 946, type: !438)
!952 = !DILocation(line: 946, column: 16, scope: !936)
!953 = !DILocation(line: 949, column: 25, scope: !954)
!954 = distinct !DILexicalBlock(scope: !936, file: !55, line: 949, column: 6)
!955 = !DILocation(line: 949, column: 33, scope: !954)
!956 = !DILocation(line: 949, column: 43, scope: !954)
!957 = !DILocation(line: 949, column: 51, scope: !954)
!958 = !DILocation(line: 949, column: 61, scope: !954)
!959 = !DILocation(line: 949, column: 7, scope: !954)
!960 = !DILocation(line: 949, column: 6, scope: !936)
!961 = !DILocation(line: 950, column: 3, scope: !954)
!962 = !DILocation(line: 953, column: 11, scope: !936)
!963 = !DILocation(line: 953, column: 16, scope: !936)
!964 = !DILocation(line: 954, column: 58, scope: !936)
!965 = !DILocation(line: 954, column: 41, scope: !936)
!966 = !DILocation(line: 954, column: 24, scope: !936)
!967 = !DILocation(line: 954, column: 29, scope: !936)
!968 = !DILocation(line: 954, column: 11, scope: !936)
!969 = !DILocation(line: 954, column: 13, scope: !936)
!970 = !DILocation(line: 955, column: 45, scope: !936)
!971 = !DILocation(line: 955, column: 2, scope: !936)
!972 = !DILocation(line: 958, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !936, file: !55, line: 958, column: 6)
!974 = !DILocation(line: 958, column: 6, scope: !936)
!975 = !DILocation(line: 959, column: 3, scope: !973)
!976 = !DILocation(line: 962, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !936, file: !55, line: 962, column: 6)
!978 = !DILocation(line: 962, column: 6, scope: !936)
!979 = !DILocation(line: 963, column: 3, scope: !977)
!980 = !DILocation(line: 964, column: 17, scope: !936)
!981 = !DILocation(line: 964, column: 2, scope: !936)
!982 = !DILocation(line: 965, column: 2, scope: !936)
!983 = !DILocation(line: 966, column: 1, scope: !936)
!984 = distinct !DISubprogram(name: "sec_out_mcs_connect_initial_pdu", scope: !55, file: !55, line: 393, type: !579, isLocal: true, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!985 = !DILocalVariable(name: "s", arg: 1, scope: !984, file: !55, line: 393, type: !435)
!986 = !DILocation(line: 393, column: 40, scope: !984)
!987 = !DILocalVariable(name: "selected_protocol", arg: 2, scope: !984, file: !55, line: 393, type: !44)
!988 = !DILocation(line: 393, column: 50, scope: !984)
!989 = !DILocalVariable(name: "length", scope: !984, file: !55, line: 395, type: !57)
!990 = !DILocation(line: 395, column: 6, scope: !984)
!991 = !DILocation(line: 395, column: 36, scope: !984)
!992 = !DILocation(line: 395, column: 42, scope: !984)
!993 = !DILocation(line: 395, column: 33, scope: !984)
!994 = !DILocalVariable(name: "i", scope: !984, file: !55, line: 396, type: !45)
!995 = !DILocation(line: 396, column: 15, scope: !984)
!996 = !DILocalVariable(name: "rdpversion", scope: !984, file: !55, line: 397, type: !44)
!997 = !DILocation(line: 397, column: 9, scope: !984)
!998 = !DILocalVariable(name: "capflags", scope: !984, file: !55, line: 398, type: !47)
!999 = !DILocation(line: 398, column: 9, scope: !984)
!1000 = !DILocalVariable(name: "colorsupport", scope: !984, file: !55, line: 399, type: !47)
!1001 = !DILocation(line: 399, column: 9, scope: !984)
!1002 = !DILocalVariable(name: "physwidth", scope: !984, file: !55, line: 400, type: !44)
!1003 = !DILocation(line: 400, column: 9, scope: !984)
!1004 = !DILocalVariable(name: "physheight", scope: !984, file: !55, line: 400, type: !44)
!1005 = !DILocation(line: 400, column: 20, scope: !984)
!1006 = !DILocalVariable(name: "desktopscale", scope: !984, file: !55, line: 400, type: !44)
!1007 = !DILocation(line: 400, column: 32, scope: !984)
!1008 = !DILocalVariable(name: "devicescale", scope: !984, file: !55, line: 400, type: !44)
!1009 = !DILocation(line: 400, column: 46, scope: !984)
!1010 = !DILocation(line: 402, column: 2, scope: !984)
!1011 = !DILocation(line: 404, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !984, file: !55, line: 404, column: 6)
!1013 = !DILocation(line: 404, column: 20, scope: !1012)
!1014 = !DILocation(line: 404, column: 6, scope: !984)
!1015 = !DILocation(line: 405, column: 14, scope: !1012)
!1016 = !DILocation(line: 405, column: 3, scope: !1012)
!1017 = !DILocation(line: 407, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !984, file: !55, line: 407, column: 6)
!1019 = !DILocation(line: 407, column: 21, scope: !1018)
!1020 = !DILocation(line: 407, column: 6, scope: !984)
!1021 = !DILocation(line: 408, column: 13, scope: !1018)
!1022 = !DILocation(line: 408, column: 28, scope: !1018)
!1023 = !DILocation(line: 408, column: 33, scope: !1018)
!1024 = !DILocation(line: 408, column: 10, scope: !1018)
!1025 = !DILocation(line: 408, column: 3, scope: !1018)
!1026 = !DILocation(line: 411, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !984, file: !55, line: 411, column: 2)
!1028 = !DILocation(line: 411, column: 11, scope: !1027)
!1029 = !DILocation(line: 411, column: 12, scope: !1027)
!1030 = !DILocation(line: 411, column: 16, scope: !1027)
!1031 = !DILocation(line: 411, column: 40, scope: !1027)
!1032 = !DILocation(line: 411, column: 44, scope: !1027)
!1033 = !DILocation(line: 411, column: 45, scope: !1027)
!1034 = !DILocation(line: 411, column: 49, scope: !1027)
!1035 = !DILocation(line: 412, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !984, file: !55, line: 412, column: 2)
!1037 = !DILocation(line: 412, column: 11, scope: !1036)
!1038 = !DILocation(line: 412, column: 12, scope: !1036)
!1039 = !DILocation(line: 412, column: 16, scope: !1036)
!1040 = !DILocation(line: 412, column: 43, scope: !1036)
!1041 = !DILocation(line: 412, column: 47, scope: !1036)
!1042 = !DILocation(line: 412, column: 48, scope: !1036)
!1043 = !DILocation(line: 412, column: 52, scope: !1036)
!1044 = !DILocation(line: 413, column: 5, scope: !984)
!1045 = !DILocation(line: 413, column: 9, scope: !984)
!1046 = !DILocation(line: 413, column: 10, scope: !984)
!1047 = !DILocation(line: 413, column: 14, scope: !984)
!1048 = !DILocation(line: 414, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !984, file: !55, line: 414, column: 2)
!1050 = !DILocation(line: 414, column: 11, scope: !1049)
!1051 = !DILocation(line: 414, column: 12, scope: !1049)
!1052 = !DILocation(line: 414, column: 16, scope: !1049)
!1053 = !DILocation(line: 414, column: 40, scope: !1049)
!1054 = !DILocation(line: 414, column: 44, scope: !1049)
!1055 = !DILocation(line: 414, column: 45, scope: !1049)
!1056 = !DILocation(line: 414, column: 49, scope: !1049)
!1057 = !DILocation(line: 416, column: 21, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !984, file: !55, line: 416, column: 2)
!1059 = !DILocation(line: 416, column: 28, scope: !1058)
!1060 = !DILocation(line: 416, column: 39, scope: !1058)
!1061 = !DILocation(line: 416, column: 45, scope: !1058)
!1062 = !DILocation(line: 416, column: 18, scope: !1058)
!1063 = !DILocation(line: 416, column: 7, scope: !1058)
!1064 = !DILocation(line: 416, column: 11, scope: !1058)
!1065 = !DILocation(line: 416, column: 12, scope: !1058)
!1066 = !DILocation(line: 416, column: 16, scope: !1058)
!1067 = !DILocation(line: 416, column: 69, scope: !1058)
!1068 = !DILocation(line: 416, column: 76, scope: !1058)
!1069 = !DILocation(line: 416, column: 87, scope: !1058)
!1070 = !DILocation(line: 416, column: 67, scope: !1058)
!1071 = !DILocation(line: 416, column: 56, scope: !1058)
!1072 = !DILocation(line: 416, column: 60, scope: !1058)
!1073 = !DILocation(line: 416, column: 61, scope: !1058)
!1074 = !DILocation(line: 416, column: 65, scope: !1058)
!1075 = !DILocation(line: 418, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !984, file: !55, line: 418, column: 2)
!1077 = !DILocation(line: 418, column: 11, scope: !1076)
!1078 = !DILocation(line: 418, column: 12, scope: !1076)
!1079 = !DILocation(line: 418, column: 16, scope: !1076)
!1080 = !DILocation(line: 418, column: 40, scope: !1076)
!1081 = !DILocation(line: 418, column: 44, scope: !1076)
!1082 = !DILocation(line: 418, column: 45, scope: !1076)
!1083 = !DILocation(line: 418, column: 49, scope: !1076)
!1084 = !DILocation(line: 419, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !984, file: !55, line: 419, column: 2)
!1086 = !DILocation(line: 419, column: 11, scope: !1085)
!1087 = !DILocation(line: 419, column: 12, scope: !1085)
!1088 = !DILocation(line: 419, column: 16, scope: !1085)
!1089 = !DILocation(line: 419, column: 41, scope: !1085)
!1090 = !DILocation(line: 419, column: 45, scope: !1085)
!1091 = !DILocation(line: 419, column: 46, scope: !1085)
!1092 = !DILocation(line: 419, column: 50, scope: !1085)
!1093 = !DILocation(line: 420, column: 5, scope: !984)
!1094 = !DILocation(line: 420, column: 9, scope: !984)
!1095 = !DILocation(line: 420, column: 10, scope: !984)
!1096 = !DILocation(line: 420, column: 14, scope: !984)
!1097 = !DILocation(line: 421, column: 17, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !984, file: !55, line: 421, column: 2)
!1099 = !DILocation(line: 421, column: 21, scope: !1098)
!1100 = !DILocation(line: 421, column: 4, scope: !1098)
!1101 = !DILocation(line: 421, column: 24, scope: !1098)
!1102 = !DILocation(line: 421, column: 35, scope: !1098)
!1103 = !DILocation(line: 421, column: 39, scope: !1098)
!1104 = !DILocation(line: 421, column: 41, scope: !1098)
!1105 = !DILocation(line: 422, column: 5, scope: !984)
!1106 = !DILocation(line: 422, column: 9, scope: !984)
!1107 = !DILocation(line: 422, column: 10, scope: !984)
!1108 = !DILocation(line: 422, column: 14, scope: !984)
!1109 = !DILocation(line: 424, column: 17, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !984, file: !55, line: 424, column: 2)
!1111 = !DILocation(line: 424, column: 21, scope: !1110)
!1112 = !DILocation(line: 424, column: 4, scope: !1110)
!1113 = !DILocation(line: 424, column: 24, scope: !1110)
!1114 = !DILocation(line: 424, column: 39, scope: !1110)
!1115 = !DILocation(line: 424, column: 43, scope: !1110)
!1116 = !DILocation(line: 424, column: 45, scope: !1110)
!1117 = !DILocation(line: 425, column: 22, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !984, file: !55, line: 425, column: 2)
!1119 = !DILocation(line: 425, column: 29, scope: !1118)
!1120 = !DILocation(line: 425, column: 35, scope: !1118)
!1121 = !DILocation(line: 425, column: 46, scope: !1118)
!1122 = !DILocation(line: 425, column: 52, scope: !1118)
!1123 = !DILocation(line: 425, column: 18, scope: !1118)
!1124 = !DILocation(line: 425, column: 7, scope: !1118)
!1125 = !DILocation(line: 425, column: 11, scope: !1118)
!1126 = !DILocation(line: 425, column: 12, scope: !1118)
!1127 = !DILocation(line: 425, column: 16, scope: !1118)
!1128 = !DILocation(line: 425, column: 77, scope: !1118)
!1129 = !DILocation(line: 425, column: 84, scope: !1118)
!1130 = !DILocation(line: 425, column: 90, scope: !1118)
!1131 = !DILocation(line: 425, column: 101, scope: !1118)
!1132 = !DILocation(line: 425, column: 74, scope: !1118)
!1133 = !DILocation(line: 425, column: 63, scope: !1118)
!1134 = !DILocation(line: 425, column: 67, scope: !1118)
!1135 = !DILocation(line: 425, column: 68, scope: !1118)
!1136 = !DILocation(line: 425, column: 72, scope: !1118)
!1137 = !DILocation(line: 428, column: 17, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !984, file: !55, line: 428, column: 2)
!1139 = !DILocation(line: 428, column: 21, scope: !1138)
!1140 = !DILocation(line: 428, column: 4, scope: !1138)
!1141 = !DILocation(line: 428, column: 24, scope: !1138)
!1142 = !DILocation(line: 428, column: 35, scope: !1138)
!1143 = !DILocation(line: 428, column: 39, scope: !1138)
!1144 = !DILocation(line: 428, column: 41, scope: !1138)
!1145 = !DILocation(line: 429, column: 33, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !984, file: !55, line: 429, column: 2)
!1147 = !DILocation(line: 429, column: 39, scope: !1146)
!1148 = !DILocation(line: 429, column: 30, scope: !1146)
!1149 = !DILocation(line: 429, column: 26, scope: !1146)
!1150 = !DILocation(line: 429, column: 17, scope: !1146)
!1151 = !DILocation(line: 429, column: 21, scope: !1146)
!1152 = !DILocation(line: 429, column: 4, scope: !1146)
!1153 = !DILocation(line: 429, column: 24, scope: !1146)
!1154 = !DILocation(line: 429, column: 55, scope: !1146)
!1155 = !DILocation(line: 429, column: 59, scope: !1146)
!1156 = !DILocation(line: 429, column: 61, scope: !1146)
!1157 = !DILocation(line: 430, column: 26, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !984, file: !55, line: 430, column: 2)
!1159 = !DILocation(line: 430, column: 17, scope: !1158)
!1160 = !DILocation(line: 430, column: 21, scope: !1158)
!1161 = !DILocation(line: 430, column: 4, scope: !1158)
!1162 = !DILocation(line: 430, column: 24, scope: !1158)
!1163 = !DILocation(line: 430, column: 39, scope: !1158)
!1164 = !DILocation(line: 430, column: 43, scope: !1158)
!1165 = !DILocation(line: 430, column: 45, scope: !1158)
!1166 = !DILocation(line: 431, column: 26, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !984, file: !55, line: 431, column: 2)
!1168 = !DILocation(line: 431, column: 17, scope: !1167)
!1169 = !DILocation(line: 431, column: 21, scope: !1167)
!1170 = !DILocation(line: 431, column: 4, scope: !1167)
!1171 = !DILocation(line: 431, column: 24, scope: !1167)
!1172 = !DILocation(line: 431, column: 54, scope: !1167)
!1173 = !DILocation(line: 431, column: 58, scope: !1167)
!1174 = !DILocation(line: 431, column: 60, scope: !1167)
!1175 = !DILocation(line: 432, column: 26, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !984, file: !55, line: 432, column: 2)
!1177 = !DILocation(line: 432, column: 17, scope: !1176)
!1178 = !DILocation(line: 432, column: 21, scope: !1176)
!1179 = !DILocation(line: 432, column: 4, scope: !1176)
!1180 = !DILocation(line: 432, column: 24, scope: !1176)
!1181 = !DILocation(line: 432, column: 55, scope: !1176)
!1182 = !DILocation(line: 432, column: 59, scope: !1176)
!1183 = !DILocation(line: 432, column: 61, scope: !1176)
!1184 = !DILocation(line: 433, column: 17, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !984, file: !55, line: 433, column: 2)
!1186 = !DILocation(line: 433, column: 21, scope: !1185)
!1187 = !DILocation(line: 433, column: 4, scope: !1185)
!1188 = !DILocation(line: 433, column: 24, scope: !1185)
!1189 = !DILocation(line: 433, column: 35, scope: !1185)
!1190 = !DILocation(line: 433, column: 39, scope: !1185)
!1191 = !DILocation(line: 433, column: 41, scope: !1185)
!1192 = !DILocation(line: 434, column: 17, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !984, file: !55, line: 434, column: 2)
!1194 = !DILocation(line: 434, column: 21, scope: !1193)
!1195 = !DILocation(line: 434, column: 4, scope: !1193)
!1196 = !DILocation(line: 434, column: 24, scope: !1193)
!1197 = !DILocation(line: 434, column: 35, scope: !1193)
!1198 = !DILocation(line: 434, column: 39, scope: !1193)
!1199 = !DILocation(line: 434, column: 41, scope: !1193)
!1200 = !DILocation(line: 435, column: 26, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !984, file: !55, line: 435, column: 2)
!1202 = !DILocation(line: 435, column: 17, scope: !1201)
!1203 = !DILocation(line: 435, column: 21, scope: !1201)
!1204 = !DILocation(line: 435, column: 4, scope: !1201)
!1205 = !DILocation(line: 435, column: 24, scope: !1201)
!1206 = !DILocation(line: 435, column: 40, scope: !1201)
!1207 = !DILocation(line: 435, column: 44, scope: !1201)
!1208 = !DILocation(line: 435, column: 46, scope: !1201)
!1209 = !DILocation(line: 436, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !984, file: !55, line: 436, column: 2)
!1211 = !DILocation(line: 436, column: 21, scope: !1210)
!1212 = !DILocation(line: 436, column: 4, scope: !1210)
!1213 = !DILocation(line: 436, column: 24, scope: !1210)
!1214 = !DILocation(line: 436, column: 33, scope: !1210)
!1215 = !DILocation(line: 436, column: 37, scope: !1210)
!1216 = !DILocation(line: 436, column: 39, scope: !1210)
!1217 = !DILocation(line: 439, column: 20, scope: !984)
!1218 = !DILocation(line: 439, column: 2, scope: !984)
!1219 = !DILocation(line: 441, column: 26, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !984, file: !55, line: 441, column: 2)
!1221 = !DILocation(line: 441, column: 17, scope: !1220)
!1222 = !DILocation(line: 441, column: 21, scope: !1220)
!1223 = !DILocation(line: 441, column: 4, scope: !1220)
!1224 = !DILocation(line: 441, column: 24, scope: !1220)
!1225 = !DILocation(line: 441, column: 44, scope: !1220)
!1226 = !DILocation(line: 441, column: 48, scope: !1220)
!1227 = !DILocation(line: 441, column: 50, scope: !1220)
!1228 = !DILocation(line: 442, column: 26, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !984, file: !55, line: 442, column: 2)
!1230 = !DILocation(line: 442, column: 17, scope: !1229)
!1231 = !DILocation(line: 442, column: 21, scope: !1229)
!1232 = !DILocation(line: 442, column: 4, scope: !1229)
!1233 = !DILocation(line: 442, column: 24, scope: !1229)
!1234 = !DILocation(line: 442, column: 47, scope: !1229)
!1235 = !DILocation(line: 442, column: 51, scope: !1229)
!1236 = !DILocation(line: 442, column: 53, scope: !1229)
!1237 = !DILocation(line: 443, column: 26, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !984, file: !55, line: 443, column: 2)
!1239 = !DILocation(line: 443, column: 17, scope: !1238)
!1240 = !DILocation(line: 443, column: 21, scope: !1238)
!1241 = !DILocation(line: 443, column: 4, scope: !1238)
!1242 = !DILocation(line: 443, column: 24, scope: !1238)
!1243 = !DILocation(line: 443, column: 52, scope: !1238)
!1244 = !DILocation(line: 443, column: 56, scope: !1238)
!1245 = !DILocation(line: 443, column: 58, scope: !1238)
!1246 = !DILocation(line: 444, column: 12, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !984, file: !55, line: 444, column: 2)
!1248 = !DILocation(line: 444, column: 16, scope: !1247)
!1249 = !DILocation(line: 444, column: 4, scope: !1247)
!1250 = !DILocation(line: 444, column: 26, scope: !1247)
!1251 = !DILocation(line: 444, column: 30, scope: !1247)
!1252 = !DILocation(line: 444, column: 32, scope: !1247)
!1253 = !DILocation(line: 445, column: 17, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !984, file: !55, line: 445, column: 2)
!1255 = !DILocation(line: 445, column: 21, scope: !1254)
!1256 = !DILocation(line: 445, column: 4, scope: !1254)
!1257 = !DILocation(line: 445, column: 24, scope: !1254)
!1258 = !DILocation(line: 445, column: 35, scope: !1254)
!1259 = !DILocation(line: 445, column: 39, scope: !1254)
!1260 = !DILocation(line: 445, column: 41, scope: !1254)
!1261 = !DILocation(line: 446, column: 17, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !984, file: !55, line: 446, column: 2)
!1263 = !DILocation(line: 446, column: 21, scope: !1262)
!1264 = !DILocation(line: 446, column: 4, scope: !1262)
!1265 = !DILocation(line: 446, column: 24, scope: !1262)
!1266 = !DILocation(line: 446, column: 30, scope: !1262)
!1267 = !DILocation(line: 446, column: 34, scope: !1262)
!1268 = !DILocation(line: 446, column: 36, scope: !1262)
!1269 = !DILocation(line: 447, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !984, file: !55, line: 447, column: 2)
!1271 = !DILocation(line: 447, column: 21, scope: !1270)
!1272 = !DILocation(line: 447, column: 4, scope: !1270)
!1273 = !DILocation(line: 447, column: 24, scope: !1270)
!1274 = !DILocation(line: 447, column: 30, scope: !1270)
!1275 = !DILocation(line: 447, column: 34, scope: !1270)
!1276 = !DILocation(line: 447, column: 36, scope: !1270)
!1277 = !DILocation(line: 451, column: 29, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !984, file: !55, line: 451, column: 2)
!1279 = !DILocation(line: 451, column: 45, scope: !1278)
!1280 = !DILocation(line: 451, column: 27, scope: !1278)
!1281 = !DILocation(line: 451, column: 56, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1278, file: !55, discriminator: 1)
!1283 = !DILocation(line: 451, column: 27, scope: !1282)
!1284 = !DILocation(line: 451, column: 27, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1278, file: !55, discriminator: 2)
!1286 = !DILocation(line: 451, column: 27, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1278, file: !55, discriminator: 3)
!1288 = !DILocation(line: 451, column: 26, scope: !1287)
!1289 = !DILocation(line: 451, column: 17, scope: !1287)
!1290 = !DILocation(line: 451, column: 21, scope: !1287)
!1291 = !DILocation(line: 451, column: 4, scope: !1287)
!1292 = !DILocation(line: 451, column: 24, scope: !1287)
!1293 = !DILocation(line: 451, column: 82, scope: !1287)
!1294 = !DILocation(line: 451, column: 86, scope: !1287)
!1295 = !DILocation(line: 451, column: 88, scope: !1287)
!1296 = !DILocation(line: 452, column: 6, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !984, file: !55, line: 452, column: 6)
!1298 = !DILocation(line: 452, column: 21, scope: !1297)
!1299 = !DILocation(line: 452, column: 6, scope: !984)
!1300 = !DILocation(line: 453, column: 12, scope: !1297)
!1301 = !DILocation(line: 453, column: 3, scope: !1297)
!1302 = !DILocation(line: 455, column: 26, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !984, file: !55, line: 455, column: 2)
!1304 = !DILocation(line: 455, column: 17, scope: !1303)
!1305 = !DILocation(line: 455, column: 21, scope: !1303)
!1306 = !DILocation(line: 455, column: 4, scope: !1303)
!1307 = !DILocation(line: 455, column: 24, scope: !1303)
!1308 = !DILocation(line: 455, column: 41, scope: !1303)
!1309 = !DILocation(line: 455, column: 45, scope: !1303)
!1310 = !DILocation(line: 455, column: 47, scope: !1303)
!1311 = !DILocation(line: 456, column: 26, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !984, file: !55, line: 456, column: 2)
!1313 = !DILocation(line: 456, column: 17, scope: !1312)
!1314 = !DILocation(line: 456, column: 21, scope: !1312)
!1315 = !DILocation(line: 456, column: 4, scope: !1312)
!1316 = !DILocation(line: 456, column: 24, scope: !1312)
!1317 = !DILocation(line: 456, column: 37, scope: !1312)
!1318 = !DILocation(line: 456, column: 41, scope: !1312)
!1319 = !DILocation(line: 456, column: 43, scope: !1312)
!1320 = !DILocation(line: 457, column: 12, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !984, file: !55, line: 457, column: 2)
!1322 = !DILocation(line: 457, column: 16, scope: !1321)
!1323 = !DILocation(line: 457, column: 4, scope: !1321)
!1324 = !DILocation(line: 457, column: 26, scope: !1321)
!1325 = !DILocation(line: 457, column: 30, scope: !1321)
!1326 = !DILocation(line: 457, column: 32, scope: !1321)
!1327 = !DILocation(line: 458, column: 5, scope: !984)
!1328 = !DILocation(line: 458, column: 9, scope: !984)
!1329 = !DILocation(line: 458, column: 10, scope: !984)
!1330 = !DILocation(line: 458, column: 14, scope: !984)
!1331 = !DILocation(line: 459, column: 5, scope: !984)
!1332 = !DILocation(line: 459, column: 9, scope: !984)
!1333 = !DILocation(line: 459, column: 10, scope: !984)
!1334 = !DILocation(line: 459, column: 14, scope: !984)
!1335 = !DILocation(line: 460, column: 26, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !984, file: !55, line: 460, column: 2)
!1337 = !DILocation(line: 460, column: 17, scope: !1336)
!1338 = !DILocation(line: 460, column: 21, scope: !1336)
!1339 = !DILocation(line: 460, column: 4, scope: !1336)
!1340 = !DILocation(line: 460, column: 24, scope: !1336)
!1341 = !DILocation(line: 460, column: 46, scope: !1336)
!1342 = !DILocation(line: 460, column: 50, scope: !1336)
!1343 = !DILocation(line: 460, column: 52, scope: !1336)
!1344 = !DILocation(line: 461, column: 6, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !984, file: !55, line: 461, column: 6)
!1346 = !DILocation(line: 461, column: 12, scope: !1345)
!1347 = !DILocation(line: 461, column: 6, scope: !984)
!1348 = !DILocation(line: 464, column: 37, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !55, line: 462, column: 2)
!1350 = !DILocation(line: 464, column: 64, scope: !1349)
!1351 = !DILocation(line: 464, column: 92, scope: !1349)
!1352 = !DILocation(line: 464, column: 3, scope: !1349)
!1353 = !DILocation(line: 467, column: 27, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !55, line: 467, column: 3)
!1355 = !DILocation(line: 467, column: 18, scope: !1354)
!1356 = !DILocation(line: 467, column: 22, scope: !1354)
!1357 = !DILocation(line: 467, column: 5, scope: !1354)
!1358 = !DILocation(line: 467, column: 25, scope: !1354)
!1359 = !DILocation(line: 467, column: 39, scope: !1354)
!1360 = !DILocation(line: 467, column: 43, scope: !1354)
!1361 = !DILocation(line: 467, column: 45, scope: !1354)
!1362 = !DILocation(line: 468, column: 27, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1349, file: !55, line: 468, column: 3)
!1364 = !DILocation(line: 468, column: 18, scope: !1363)
!1365 = !DILocation(line: 468, column: 22, scope: !1363)
!1366 = !DILocation(line: 468, column: 5, scope: !1363)
!1367 = !DILocation(line: 468, column: 25, scope: !1363)
!1368 = !DILocation(line: 468, column: 40, scope: !1363)
!1369 = !DILocation(line: 468, column: 44, scope: !1363)
!1370 = !DILocation(line: 468, column: 46, scope: !1363)
!1371 = !DILocation(line: 469, column: 18, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1349, file: !55, line: 469, column: 3)
!1373 = !DILocation(line: 469, column: 22, scope: !1372)
!1374 = !DILocation(line: 469, column: 5, scope: !1372)
!1375 = !DILocation(line: 469, column: 25, scope: !1372)
!1376 = !DILocation(line: 469, column: 51, scope: !1372)
!1377 = !DILocation(line: 469, column: 55, scope: !1372)
!1378 = !DILocation(line: 469, column: 57, scope: !1372)
!1379 = !DILocation(line: 470, column: 27, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1349, file: !55, line: 470, column: 3)
!1381 = !DILocation(line: 470, column: 18, scope: !1380)
!1382 = !DILocation(line: 470, column: 22, scope: !1380)
!1383 = !DILocation(line: 470, column: 5, scope: !1380)
!1384 = !DILocation(line: 470, column: 25, scope: !1380)
!1385 = !DILocation(line: 470, column: 42, scope: !1380)
!1386 = !DILocation(line: 470, column: 46, scope: !1380)
!1387 = !DILocation(line: 470, column: 48, scope: !1380)
!1388 = !DILocation(line: 471, column: 27, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1349, file: !55, line: 471, column: 3)
!1390 = !DILocation(line: 471, column: 18, scope: !1389)
!1391 = !DILocation(line: 471, column: 22, scope: !1389)
!1392 = !DILocation(line: 471, column: 5, scope: !1389)
!1393 = !DILocation(line: 471, column: 25, scope: !1389)
!1394 = !DILocation(line: 471, column: 41, scope: !1389)
!1395 = !DILocation(line: 471, column: 45, scope: !1389)
!1396 = !DILocation(line: 471, column: 47, scope: !1389)
!1397 = !DILocation(line: 472, column: 2, scope: !1349)
!1398 = !DILocalVariable(name: "cluster_flags", scope: !984, file: !55, line: 475, type: !44)
!1399 = !DILocation(line: 475, column: 9, scope: !984)
!1400 = !DILocation(line: 476, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !984, file: !55, line: 476, column: 2)
!1402 = !DILocation(line: 476, column: 21, scope: !1401)
!1403 = !DILocation(line: 476, column: 4, scope: !1401)
!1404 = !DILocation(line: 476, column: 24, scope: !1401)
!1405 = !DILocation(line: 476, column: 35, scope: !1401)
!1406 = !DILocation(line: 476, column: 39, scope: !1401)
!1407 = !DILocation(line: 476, column: 41, scope: !1401)
!1408 = !DILocation(line: 477, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !984, file: !55, line: 477, column: 2)
!1410 = !DILocation(line: 477, column: 21, scope: !1409)
!1411 = !DILocation(line: 477, column: 4, scope: !1409)
!1412 = !DILocation(line: 477, column: 24, scope: !1409)
!1413 = !DILocation(line: 477, column: 31, scope: !1409)
!1414 = !DILocation(line: 477, column: 35, scope: !1409)
!1415 = !DILocation(line: 477, column: 37, scope: !1409)
!1416 = !DILocation(line: 479, column: 16, scope: !984)
!1417 = !DILocation(line: 480, column: 16, scope: !984)
!1418 = !DILocation(line: 482, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !984, file: !55, line: 482, column: 6)
!1420 = !DILocation(line: 482, column: 24, scope: !1419)
!1421 = !DILocation(line: 482, column: 27, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1419, file: !55, discriminator: 1)
!1423 = !DILocation(line: 482, column: 49, scope: !1422)
!1424 = !DILocation(line: 482, column: 6, scope: !1422)
!1425 = !DILocation(line: 483, column: 17, scope: !1419)
!1426 = !DILocation(line: 483, column: 3, scope: !1419)
!1427 = !DILocation(line: 485, column: 26, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !984, file: !55, line: 485, column: 2)
!1429 = !DILocation(line: 485, column: 17, scope: !1428)
!1430 = !DILocation(line: 485, column: 21, scope: !1428)
!1431 = !DILocation(line: 485, column: 4, scope: !1428)
!1432 = !DILocation(line: 485, column: 24, scope: !1428)
!1433 = !DILocation(line: 485, column: 42, scope: !1428)
!1434 = !DILocation(line: 485, column: 46, scope: !1428)
!1435 = !DILocation(line: 485, column: 48, scope: !1428)
!1436 = !DILocation(line: 486, column: 26, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !984, file: !55, line: 486, column: 2)
!1438 = !DILocation(line: 486, column: 17, scope: !1437)
!1439 = !DILocation(line: 486, column: 21, scope: !1437)
!1440 = !DILocation(line: 486, column: 4, scope: !1437)
!1441 = !DILocation(line: 486, column: 24, scope: !1437)
!1442 = !DILocation(line: 486, column: 50, scope: !1437)
!1443 = !DILocation(line: 486, column: 54, scope: !1437)
!1444 = !DILocation(line: 486, column: 56, scope: !1437)
!1445 = !DILocation(line: 489, column: 17, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !984, file: !55, line: 489, column: 2)
!1447 = !DILocation(line: 489, column: 21, scope: !1446)
!1448 = !DILocation(line: 489, column: 4, scope: !1446)
!1449 = !DILocation(line: 489, column: 24, scope: !1446)
!1450 = !DILocation(line: 489, column: 35, scope: !1446)
!1451 = !DILocation(line: 489, column: 39, scope: !1446)
!1452 = !DILocation(line: 489, column: 41, scope: !1446)
!1453 = !DILocation(line: 490, column: 17, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !984, file: !55, line: 490, column: 2)
!1455 = !DILocation(line: 490, column: 21, scope: !1454)
!1456 = !DILocation(line: 490, column: 4, scope: !1454)
!1457 = !DILocation(line: 490, column: 24, scope: !1454)
!1458 = !DILocation(line: 490, column: 31, scope: !1454)
!1459 = !DILocation(line: 490, column: 35, scope: !1454)
!1460 = !DILocation(line: 490, column: 37, scope: !1454)
!1461 = !DILocation(line: 491, column: 26, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !984, file: !55, line: 491, column: 2)
!1463 = !DILocation(line: 491, column: 17, scope: !1462)
!1464 = !DILocation(line: 491, column: 21, scope: !1462)
!1465 = !DILocation(line: 491, column: 4, scope: !1462)
!1466 = !DILocation(line: 491, column: 24, scope: !1462)
!1467 = !DILocation(line: 491, column: 51, scope: !1462)
!1468 = !DILocation(line: 491, column: 55, scope: !1462)
!1469 = !DILocation(line: 491, column: 57, scope: !1462)
!1470 = !DILocation(line: 492, column: 17, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !984, file: !55, line: 492, column: 2)
!1472 = !DILocation(line: 492, column: 21, scope: !1471)
!1473 = !DILocation(line: 492, column: 4, scope: !1471)
!1474 = !DILocation(line: 492, column: 24, scope: !1471)
!1475 = !DILocation(line: 492, column: 30, scope: !1471)
!1476 = !DILocation(line: 492, column: 34, scope: !1471)
!1477 = !DILocation(line: 492, column: 36, scope: !1471)
!1478 = !DILocation(line: 495, column: 70, scope: !984)
!1479 = !DILocation(line: 495, column: 2, scope: !984)
!1480 = !DILocation(line: 496, column: 6, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !984, file: !55, line: 496, column: 6)
!1482 = !DILocation(line: 496, column: 21, scope: !1481)
!1483 = !DILocation(line: 496, column: 6, scope: !984)
!1484 = !DILocation(line: 498, column: 18, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !55, line: 498, column: 3)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !55, line: 497, column: 2)
!1487 = !DILocation(line: 498, column: 22, scope: !1485)
!1488 = !DILocation(line: 498, column: 5, scope: !1485)
!1489 = !DILocation(line: 498, column: 25, scope: !1485)
!1490 = !DILocation(line: 498, column: 36, scope: !1485)
!1491 = !DILocation(line: 498, column: 40, scope: !1485)
!1492 = !DILocation(line: 498, column: 42, scope: !1485)
!1493 = !DILocation(line: 499, column: 27, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !55, line: 499, column: 3)
!1495 = !DILocation(line: 499, column: 42, scope: !1494)
!1496 = !DILocation(line: 499, column: 47, scope: !1494)
!1497 = !DILocation(line: 499, column: 18, scope: !1494)
!1498 = !DILocation(line: 499, column: 22, scope: !1494)
!1499 = !DILocation(line: 499, column: 5, scope: !1494)
!1500 = !DILocation(line: 499, column: 25, scope: !1494)
!1501 = !DILocation(line: 499, column: 53, scope: !1494)
!1502 = !DILocation(line: 499, column: 57, scope: !1494)
!1503 = !DILocation(line: 499, column: 59, scope: !1494)
!1504 = !DILocation(line: 500, column: 27, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1486, file: !55, line: 500, column: 3)
!1506 = !DILocation(line: 500, column: 18, scope: !1505)
!1507 = !DILocation(line: 500, column: 22, scope: !1505)
!1508 = !DILocation(line: 500, column: 5, scope: !1505)
!1509 = !DILocation(line: 500, column: 25, scope: !1505)
!1510 = !DILocation(line: 500, column: 44, scope: !1505)
!1511 = !DILocation(line: 500, column: 48, scope: !1505)
!1512 = !DILocation(line: 500, column: 50, scope: !1505)
!1513 = !DILocation(line: 501, column: 10, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1486, file: !55, line: 501, column: 3)
!1515 = !DILocation(line: 501, column: 8, scope: !1514)
!1516 = !DILocation(line: 501, column: 15, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1518, file: !55, discriminator: 1)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !55, line: 501, column: 3)
!1519 = !DILocation(line: 501, column: 19, scope: !1517)
!1520 = !DILocation(line: 501, column: 17, scope: !1517)
!1521 = !DILocation(line: 501, column: 3, scope: !1517)
!1522 = !DILocation(line: 504, column: 22, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !55, line: 502, column: 3)
!1524 = !DILocation(line: 504, column: 11, scope: !1523)
!1525 = !DILocation(line: 504, column: 25, scope: !1523)
!1526 = !DILocation(line: 503, column: 4, scope: !1523)
!1527 = !DILocation(line: 505, column: 14, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !55, line: 505, column: 4)
!1529 = !DILocation(line: 505, column: 18, scope: !1528)
!1530 = !DILocation(line: 505, column: 31, scope: !1528)
!1531 = !DILocation(line: 505, column: 20, scope: !1528)
!1532 = !DILocation(line: 505, column: 34, scope: !1528)
!1533 = !DILocation(line: 505, column: 6, scope: !1528)
!1534 = !DILocation(line: 505, column: 44, scope: !1528)
!1535 = !DILocation(line: 505, column: 48, scope: !1528)
!1536 = !DILocation(line: 505, column: 50, scope: !1528)
!1537 = !DILocation(line: 506, column: 37, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !55, line: 506, column: 6)
!1539 = distinct !DILexicalBlock(scope: !1523, file: !55, line: 506, column: 4)
!1540 = !DILocation(line: 506, column: 26, scope: !1538)
!1541 = !DILocation(line: 506, column: 40, scope: !1538)
!1542 = !DILocation(line: 506, column: 47, scope: !1538)
!1543 = !DILocation(line: 506, column: 54, scope: !1538)
!1544 = !DILocation(line: 506, column: 64, scope: !1538)
!1545 = !DILocation(line: 506, column: 70, scope: !1538)
!1546 = !DILocation(line: 506, column: 22, scope: !1538)
!1547 = !DILocation(line: 506, column: 11, scope: !1538)
!1548 = !DILocation(line: 506, column: 15, scope: !1538)
!1549 = !DILocation(line: 506, column: 16, scope: !1538)
!1550 = !DILocation(line: 506, column: 20, scope: !1538)
!1551 = !DILocation(line: 506, column: 106, scope: !1538)
!1552 = !DILocation(line: 506, column: 95, scope: !1538)
!1553 = !DILocation(line: 506, column: 109, scope: !1538)
!1554 = !DILocation(line: 506, column: 116, scope: !1538)
!1555 = !DILocation(line: 506, column: 123, scope: !1538)
!1556 = !DILocation(line: 506, column: 133, scope: !1538)
!1557 = !DILocation(line: 506, column: 92, scope: !1538)
!1558 = !DILocation(line: 506, column: 81, scope: !1538)
!1559 = !DILocation(line: 506, column: 85, scope: !1538)
!1560 = !DILocation(line: 506, column: 86, scope: !1538)
!1561 = !DILocation(line: 506, column: 90, scope: !1538)
!1562 = !DILocation(line: 506, column: 174, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1539, file: !55, line: 506, column: 144)
!1564 = !DILocation(line: 506, column: 163, scope: !1563)
!1565 = !DILocation(line: 506, column: 177, scope: !1563)
!1566 = !DILocation(line: 506, column: 184, scope: !1563)
!1567 = !DILocation(line: 506, column: 194, scope: !1563)
!1568 = !DILocation(line: 506, column: 200, scope: !1563)
!1569 = !DILocation(line: 506, column: 160, scope: !1563)
!1570 = !DILocation(line: 506, column: 149, scope: !1563)
!1571 = !DILocation(line: 506, column: 153, scope: !1563)
!1572 = !DILocation(line: 506, column: 154, scope: !1563)
!1573 = !DILocation(line: 506, column: 158, scope: !1563)
!1574 = !DILocation(line: 506, column: 235, scope: !1563)
!1575 = !DILocation(line: 506, column: 224, scope: !1563)
!1576 = !DILocation(line: 506, column: 238, scope: !1563)
!1577 = !DILocation(line: 506, column: 245, scope: !1563)
!1578 = !DILocation(line: 506, column: 255, scope: !1563)
!1579 = !DILocation(line: 506, column: 222, scope: !1563)
!1580 = !DILocation(line: 506, column: 211, scope: !1563)
!1581 = !DILocation(line: 506, column: 215, scope: !1563)
!1582 = !DILocation(line: 506, column: 216, scope: !1563)
!1583 = !DILocation(line: 506, column: 220, scope: !1563)
!1584 = !DILocation(line: 507, column: 3, scope: !1523)
!1585 = !DILocation(line: 501, column: 36, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1518, file: !55, discriminator: 2)
!1587 = !DILocation(line: 501, column: 3, scope: !1586)
!1588 = distinct !{!1588, !1589}
!1589 = !DILocation(line: 501, column: 3, scope: !1486)
!1590 = !DILocation(line: 508, column: 2, scope: !1486)
!1591 = !DILocation(line: 510, column: 14, scope: !984)
!1592 = !DILocation(line: 510, column: 18, scope: !984)
!1593 = !DILocation(line: 510, column: 3, scope: !984)
!1594 = !DILocation(line: 510, column: 7, scope: !984)
!1595 = !DILocation(line: 510, column: 11, scope: !984)
!1596 = !DILocation(line: 511, column: 1, scope: !984)
!1597 = distinct !DISubprogram(name: "sec_establish_key", scope: !55, file: !55, line: 375, type: !1598, isLocal: true, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{null}
!1600 = !DILocalVariable(name: "length", scope: !1597, file: !55, line: 377, type: !44)
!1601 = !DILocation(line: 377, column: 9, scope: !1597)
!1602 = !DILocation(line: 377, column: 18, scope: !1597)
!1603 = !DILocation(line: 377, column: 42, scope: !1597)
!1604 = !DILocalVariable(name: "flags", scope: !1597, file: !55, line: 378, type: !44)
!1605 = !DILocation(line: 378, column: 9, scope: !1597)
!1606 = !DILocalVariable(name: "s", scope: !1597, file: !55, line: 379, type: !435)
!1607 = !DILocation(line: 379, column: 9, scope: !1597)
!1608 = !DILocation(line: 381, column: 15, scope: !1597)
!1609 = !DILocation(line: 381, column: 22, scope: !1597)
!1610 = !DILocation(line: 381, column: 29, scope: !1597)
!1611 = !DILocation(line: 381, column: 6, scope: !1597)
!1612 = !DILocation(line: 381, column: 4, scope: !1597)
!1613 = !DILocation(line: 383, column: 26, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1597, file: !55, line: 383, column: 2)
!1615 = !DILocation(line: 383, column: 17, scope: !1614)
!1616 = !DILocation(line: 383, column: 21, scope: !1614)
!1617 = !DILocation(line: 383, column: 4, scope: !1614)
!1618 = !DILocation(line: 383, column: 24, scope: !1614)
!1619 = !DILocation(line: 383, column: 35, scope: !1614)
!1620 = !DILocation(line: 383, column: 39, scope: !1614)
!1621 = !DILocation(line: 383, column: 41, scope: !1614)
!1622 = !DILocation(line: 384, column: 12, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1597, file: !55, line: 384, column: 2)
!1624 = !DILocation(line: 384, column: 16, scope: !1623)
!1625 = !DILocation(line: 384, column: 39, scope: !1623)
!1626 = !DILocation(line: 384, column: 4, scope: !1623)
!1627 = !DILocation(line: 384, column: 75, scope: !1623)
!1628 = !DILocation(line: 384, column: 66, scope: !1623)
!1629 = !DILocation(line: 384, column: 70, scope: !1623)
!1630 = !DILocation(line: 384, column: 72, scope: !1623)
!1631 = !DILocation(line: 385, column: 12, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1597, file: !55, line: 385, column: 2)
!1633 = !DILocation(line: 385, column: 16, scope: !1632)
!1634 = !DILocation(line: 385, column: 4, scope: !1632)
!1635 = !DILocation(line: 385, column: 25, scope: !1632)
!1636 = !DILocation(line: 385, column: 29, scope: !1632)
!1637 = !DILocation(line: 385, column: 31, scope: !1632)
!1638 = !DILocation(line: 387, column: 14, scope: !1597)
!1639 = !DILocation(line: 387, column: 18, scope: !1597)
!1640 = !DILocation(line: 387, column: 3, scope: !1597)
!1641 = !DILocation(line: 387, column: 7, scope: !1597)
!1642 = !DILocation(line: 387, column: 11, scope: !1597)
!1643 = !DILocation(line: 388, column: 11, scope: !1597)
!1644 = !DILocation(line: 388, column: 14, scope: !1597)
!1645 = !DILocation(line: 388, column: 2, scope: !1597)
!1646 = !DILocation(line: 389, column: 1, scope: !1597)
!1647 = distinct !DISubprogram(name: "sec_disconnect", scope: !55, file: !55, line: 970, type: !1598, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!1648 = !DILocation(line: 974, column: 2, scope: !1647)
!1649 = !DILocation(line: 975, column: 1, scope: !1647)
!1650 = distinct !DISubprogram(name: "sec_reset_state", scope: !55, file: !55, line: 979, type: !1598, isLocal: false, isDefinition: true, scopeLine: 980, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!1651 = !DILocation(line: 981, column: 23, scope: !1650)
!1652 = !DILocation(line: 982, column: 26, scope: !1650)
!1653 = !DILocation(line: 983, column: 26, scope: !1650)
!1654 = !DILocation(line: 984, column: 19, scope: !1650)
!1655 = !DILocation(line: 985, column: 25, scope: !1650)
!1656 = !DILocation(line: 986, column: 2, scope: !1650)
!1657 = !DILocation(line: 987, column: 1, scope: !1650)
!1658 = distinct !DISubprogram(name: "sec_make_40bit", scope: !55, file: !55, line: 145, type: !1659, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !50}
!1661 = !DILocalVariable(name: "key", arg: 1, scope: !1658, file: !55, line: 145, type: !50)
!1662 = !DILocation(line: 145, column: 24, scope: !1658)
!1663 = !DILocation(line: 147, column: 2, scope: !1658)
!1664 = !DILocation(line: 147, column: 9, scope: !1658)
!1665 = !DILocation(line: 148, column: 2, scope: !1658)
!1666 = !DILocation(line: 148, column: 9, scope: !1658)
!1667 = !DILocation(line: 149, column: 2, scope: !1658)
!1668 = !DILocation(line: 149, column: 9, scope: !1658)
!1669 = !DILocation(line: 150, column: 1, scope: !1658)
!1670 = distinct !DISubprogram(name: "sec_parse_crypt_info", scope: !55, file: !55, line: 566, type: !1671, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!740, !435, !43, !1673, !50, !50}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1674 = !DILocalVariable(name: "s", arg: 1, scope: !1670, file: !55, line: 566, type: !435)
!1675 = !DILocation(line: 566, column: 29, scope: !1670)
!1676 = !DILocalVariable(name: "rc4_key_size", arg: 2, scope: !1670, file: !55, line: 566, type: !43)
!1677 = !DILocation(line: 566, column: 41, scope: !1670)
!1678 = !DILocalVariable(name: "server_random", arg: 3, scope: !1670, file: !55, line: 567, type: !1673)
!1679 = !DILocation(line: 567, column: 17, scope: !1670)
!1680 = !DILocalVariable(name: "modulus", arg: 4, scope: !1670, file: !55, line: 567, type: !50)
!1681 = !DILocation(line: 567, column: 40, scope: !1670)
!1682 = !DILocalVariable(name: "exponent", arg: 5, scope: !1670, file: !55, line: 567, type: !50)
!1683 = !DILocation(line: 567, column: 57, scope: !1670)
!1684 = !DILocalVariable(name: "crypt_level", scope: !1670, file: !55, line: 569, type: !44)
!1685 = !DILocation(line: 569, column: 9, scope: !1670)
!1686 = !DILocalVariable(name: "random_len", scope: !1670, file: !55, line: 569, type: !44)
!1687 = !DILocation(line: 569, column: 22, scope: !1670)
!1688 = !DILocalVariable(name: "rsa_info_len", scope: !1670, file: !55, line: 569, type: !44)
!1689 = !DILocation(line: 569, column: 34, scope: !1670)
!1690 = !DILocalVariable(name: "cacert_len", scope: !1670, file: !55, line: 570, type: !44)
!1691 = !DILocation(line: 570, column: 9, scope: !1670)
!1692 = !DILocalVariable(name: "cert_len", scope: !1670, file: !55, line: 570, type: !44)
!1693 = !DILocation(line: 570, column: 21, scope: !1670)
!1694 = !DILocalVariable(name: "flags", scope: !1670, file: !55, line: 570, type: !44)
!1695 = !DILocation(line: 570, column: 31, scope: !1670)
!1696 = !DILocalVariable(name: "cacert", scope: !1670, file: !55, line: 571, type: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !1699, line: 154, baseType: !1700)
!1699 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !1701, line: 270, size: 1472, align: 64, elements: !1702)
!1701 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1702 = !{!1703, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2183, !2187, !2192, !2194, !2205, !2207}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !1700, file: !1701, line: 271, baseType: !1704, size: 64, align: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64, align: 64)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !1701, line: 254, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !1701, line: 242, size: 832, align: 64, elements: !1707)
!1707 = !{!1708, !1719, !1720, !1802, !1842, !1851, !1852, !2142, !2143, !2144, !2149}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1706, file: !1701, line: 243, baseType: !1709, size: 64, align: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64, align: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !1699, line: 83, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !1712, line: 247, size: 192, align: 64, elements: !1713)
!1712 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1711, file: !1712, line: 248, baseType: !57, size: 32, align: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1711, file: !1712, line: 249, baseType: !57, size: 32, align: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1711, file: !1712, line: 250, baseType: !441, size: 64, align: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1711, file: !1712, line: 256, baseType: !1718, size: 64, align: 64, offset: 128)
!1718 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !1706, file: !1701, line: 244, baseType: !1709, size: 64, align: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1706, file: !1701, line: 245, baseType: !1721, size: 64, align: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64, align: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !1699, line: 155, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !1701, line: 143, size: 128, align: 64, elements: !1724)
!1724 = !{!1725, !1740}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !1723, file: !1701, line: 144, baseType: !1726, size: 64, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64, align: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !1699, line: 103, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !1712, line: 218, size: 320, align: 64, elements: !1729)
!1729 = !{!1730, !1733, !1734, !1735, !1736, !1739}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !1728, file: !1712, line: 219, baseType: !1731, size: 64, align: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64, align: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !1728, file: !1712, line: 219, baseType: !1731, size: 64, align: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1728, file: !1712, line: 220, baseType: !57, size: 32, align: 32, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1728, file: !1712, line: 221, baseType: !57, size: 32, align: 32, offset: 160)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1728, file: !1712, line: 222, baseType: !1737, size: 64, align: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64, align: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1728, file: !1712, line: 223, baseType: !57, size: 32, align: 32, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !1723, file: !1701, line: 145, baseType: !1741, size: 64, align: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64, align: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !1712, line: 561, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !1712, line: 532, size: 128, align: 64, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1743, file: !1712, line: 533, baseType: !57, size: 32, align: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1743, file: !1712, line: 560, baseType: !1747, size: 64, align: 64, offset: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !1712, line: 534, size: 64, align: 64, elements: !1748)
!1748 = !{!1749, !1750, !1752, !1755, !1756, !1757, !1760, !1763, !1766, !1769, !1772, !1775, !1778, !1781, !1784, !1787, !1790, !1793, !1796, !1797, !1798}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1747, file: !1712, line: 535, baseType: !240, size: 64, align: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !1747, file: !1712, line: 536, baseType: !1751, size: 32, align: 32)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !1699, line: 99, baseType: !57)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !1747, file: !1712, line: 537, baseType: !1753, size: 64, align: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64, align: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !1699, line: 98, baseType: !1711)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1747, file: !1712, line: 538, baseType: !1726, size: 64, align: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1747, file: !1712, line: 539, baseType: !1709, size: 64, align: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !1747, file: !1712, line: 540, baseType: !1758, size: 64, align: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64, align: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !1699, line: 84, baseType: !1711)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !1747, file: !1712, line: 541, baseType: !1761, size: 64, align: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64, align: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !1699, line: 85, baseType: !1711)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !1747, file: !1712, line: 542, baseType: !1764, size: 64, align: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64, align: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !1699, line: 86, baseType: !1711)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !1747, file: !1712, line: 543, baseType: !1767, size: 64, align: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64, align: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !1699, line: 87, baseType: !1711)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !1747, file: !1712, line: 544, baseType: !1770, size: 64, align: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64, align: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !1699, line: 88, baseType: !1711)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !1747, file: !1712, line: 545, baseType: !1773, size: 64, align: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64, align: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !1699, line: 89, baseType: !1711)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !1747, file: !1712, line: 546, baseType: !1776, size: 64, align: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64, align: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !1699, line: 90, baseType: !1711)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !1747, file: !1712, line: 547, baseType: !1779, size: 64, align: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64, align: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !1699, line: 92, baseType: !1711)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !1747, file: !1712, line: 548, baseType: !1782, size: 64, align: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64, align: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !1699, line: 91, baseType: !1711)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !1747, file: !1712, line: 549, baseType: !1785, size: 64, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64, align: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !1699, line: 93, baseType: !1711)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !1747, file: !1712, line: 550, baseType: !1788, size: 64, align: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64, align: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !1699, line: 95, baseType: !1711)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !1747, file: !1712, line: 551, baseType: !1791, size: 64, align: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64, align: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !1699, line: 96, baseType: !1711)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !1747, file: !1712, line: 552, baseType: !1794, size: 64, align: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64, align: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !1699, line: 97, baseType: !1711)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1747, file: !1712, line: 557, baseType: !1753, size: 64, align: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1747, file: !1712, line: 558, baseType: !1753, size: 64, align: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !1747, file: !1712, line: 559, baseType: !1799, size: 64, align: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64, align: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !1712, line: 307, baseType: !1801)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !1712, line: 307, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !1706, file: !1701, line: 246, baseType: !1803, size: 64, align: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64, align: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !1699, line: 159, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !1701, line: 179, size: 320, align: 64, elements: !1806)
!1806 = !{!1807, !1827, !1828, !1840, !1841}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1805, file: !1701, line: 180, baseType: !1808, size: 64, align: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64, align: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !1701, line: 175, size: 256, align: 64, elements: !1810)
!1810 = !{!1811}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1809, file: !1701, line: 175, baseType: !1812, size: 256, align: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !1813, line: 72, baseType: !1814)
!1813 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !1813, line: 66, size: 256, align: 64, elements: !1815)
!1815 = !{!1816, !1817, !1819, !1820, !1821}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1814, file: !1813, line: 67, baseType: !57, size: 32, align: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1814, file: !1813, line: 68, baseType: !1818, size: 64, align: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !1814, file: !1813, line: 69, baseType: !57, size: 32, align: 32, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !1814, file: !1813, line: 70, baseType: !57, size: 32, align: 32, offset: 160)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1814, file: !1813, line: 71, baseType: !1822, size: 64, align: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64, align: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!57, !1825, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64, align: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1805, file: !1701, line: 181, baseType: !57, size: 32, align: 32, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1805, file: !1701, line: 183, baseType: !1829, size: 64, align: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64, align: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !1699, line: 127, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !1832, line: 77, size: 192, align: 64, elements: !1833)
!1832 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1833 = !{!1834, !1838, !1839}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1831, file: !1832, line: 78, baseType: !1835, size: 64, align: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1836, line: 216, baseType: !1837)
!1836 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1837 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1831, file: !1832, line: 79, baseType: !240, size: 64, align: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1831, file: !1832, line: 80, baseType: !1835, size: 64, align: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !1805, file: !1701, line: 188, baseType: !441, size: 64, align: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !1805, file: !1701, line: 189, baseType: !57, size: 32, align: 32, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !1706, file: !1701, line: 247, baseType: !1843, size: 64, align: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64, align: 64)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !1701, line: 155, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !1701, line: 152, size: 128, align: 64, elements: !1846)
!1846 = !{!1847, !1850}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !1845, file: !1701, line: 153, baseType: !1848, size: 64, align: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64, align: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !1699, line: 94, baseType: !1711)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !1845, file: !1701, line: 154, baseType: !1848, size: 64, align: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !1706, file: !1701, line: 248, baseType: !1803, size: 64, align: 64, offset: 320)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1706, file: !1701, line: 249, baseType: !1853, size: 64, align: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64, align: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !1699, line: 160, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !1701, line: 157, size: 192, align: 64, elements: !1856)
!1856 = !{!1857, !1858, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !1855, file: !1701, line: 158, baseType: !1721, size: 64, align: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !1855, file: !1701, line: 159, baseType: !1761, size: 64, align: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1855, file: !1701, line: 160, baseType: !1860, size: 64, align: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64, align: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !1699, line: 133, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !1863, line: 129, size: 448, align: 64, elements: !1864)
!1863 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1864 = !{!1865, !1866, !1867, !1868, !1873, !1877, !2136, !2137}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1862, file: !1863, line: 130, baseType: !57, size: 32, align: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !1862, file: !1863, line: 131, baseType: !57, size: 32, align: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1862, file: !1863, line: 132, baseType: !57, size: 32, align: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !1862, file: !1863, line: 133, baseType: !1869, size: 64, align: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64, align: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !1699, line: 135, baseType: !1872)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !1699, line: 135, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1862, file: !1863, line: 134, baseType: !1874, size: 64, align: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64, align: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !1699, line: 177, baseType: !1876)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !1699, line: 177, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !1862, file: !1863, line: 149, baseType: !1878, size: 64, align: 64, offset: 256)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1863, line: 135, size: 64, align: 64, elements: !1879)
!1879 = !{!1880, !1881, !2011, !2080, !2133}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1878, file: !1863, line: 136, baseType: !240, size: 64, align: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !1878, file: !1863, line: 138, baseType: !1882, size: 64, align: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64, align: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !1884, line: 132, size: 1344, align: 64, elements: !1885)
!1884 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1885 = !{!1886, !1887, !1888, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2010}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1883, file: !1884, line: 137, baseType: !57, size: 32, align: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1883, file: !1884, line: 138, baseType: !1718, size: 64, align: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1883, file: !1884, line: 139, baseType: !1889, size: 64, align: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64, align: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !1699, line: 147, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !1884, line: 85, size: 896, align: 64, elements: !1893)
!1893 = !{!1894, !1895, !1901, !1902, !1903, !1904, !1924, !1941, !1945, !1946, !1947, !1948, !1955, !1959}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1892, file: !1884, line: 86, baseType: !1731, size: 64, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !1892, file: !1884, line: 87, baseType: !1896, size: 64, align: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64, align: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!57, !57, !1737, !441, !1899, !57}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64, align: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !1699, line: 146, baseType: !1883)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !1892, file: !1884, line: 89, baseType: !1896, size: 64, align: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !1892, file: !1884, line: 91, baseType: !1896, size: 64, align: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !1892, file: !1884, line: 93, baseType: !1896, size: 64, align: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !1892, file: !1884, line: 96, baseType: !1905, size: 64, align: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64, align: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!57, !1908, !1919, !1899, !1921}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64, align: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !1699, line: 120, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !1911, line: 313, size: 192, align: 64, elements: !1912)
!1911 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1912 = !{!1913, !1915, !1916, !1917, !1918}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1910, file: !1911, line: 314, baseType: !1914, size: 64, align: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64, align: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1910, file: !1911, line: 316, baseType: !57, size: 32, align: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !1910, file: !1911, line: 318, baseType: !57, size: 32, align: 32, offset: 96)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !1910, file: !1911, line: 319, baseType: !57, size: 32, align: 32, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1910, file: !1911, line: 320, baseType: !57, size: 32, align: 32, offset: 160)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64, align: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1909)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64, align: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !1699, line: 121, baseType: !1923)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !1699, line: 121, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !1892, file: !1884, line: 98, baseType: !1925, size: 64, align: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64, align: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!57, !1908, !1919, !1919, !1919, !1921, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64, align: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !1699, line: 123, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !1911, line: 324, size: 832, align: 64, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1940}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !1930, file: !1911, line: 325, baseType: !57, size: 32, align: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !1930, file: !1911, line: 326, baseType: !1909, size: 192, align: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1930, file: !1911, line: 327, baseType: !1909, size: 192, align: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !1930, file: !1911, line: 328, baseType: !1909, size: 192, align: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !1930, file: !1911, line: 330, baseType: !1937, size: 128, align: 64, offset: 640)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 128, align: 64, elements: !1938)
!1938 = !{!1939}
!1939 = !DISubrange(count: 2)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1930, file: !1911, line: 333, baseType: !57, size: 32, align: 32, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1892, file: !1884, line: 101, baseType: !1942, size: 64, align: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64, align: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!57, !1899}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1892, file: !1884, line: 103, baseType: !1942, size: 64, align: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1892, file: !1884, line: 105, baseType: !57, size: 32, align: 32, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1892, file: !1884, line: 107, baseType: !240, size: 64, align: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !1892, file: !1884, line: 116, baseType: !1949, size: 64, align: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64, align: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!57, !57, !1737, !45, !441, !1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64, align: 64)
!1954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !1892, file: !1884, line: 120, baseType: !1956, size: 64, align: 64, offset: 768)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64, align: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!57, !57, !1737, !45, !1737, !45, !1953}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !1892, file: !1884, line: 129, baseType: !1960, size: 64, align: 64, offset: 832)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64, align: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!57, !1899, !57, !1908, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64, align: 64)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !1699, line: 125, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !1911, line: 349, size: 192, align: 64, elements: !1966)
!1966 = !{!1967, !1968, !1969}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !1965, file: !1911, line: 350, baseType: !45, size: 32, align: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1965, file: !1911, line: 351, baseType: !49, size: 64, align: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1965, file: !1911, line: 357, baseType: !1970, size: 64, align: 64, offset: 128)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1911, line: 352, size: 64, align: 64, elements: !1971)
!1971 = !{!1972, !1976}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !1970, file: !1911, line: 354, baseType: !1973, size: 64, align: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64, align: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !57, !57, !49}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !1970, file: !1911, line: 356, baseType: !1977, size: 64, align: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64, align: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!57, !57, !57, !1963}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1883, file: !1884, line: 141, baseType: !1874, size: 64, align: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1883, file: !1884, line: 142, baseType: !1908, size: 64, align: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1883, file: !1884, line: 143, baseType: !1908, size: 64, align: 64, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1883, file: !1884, line: 144, baseType: !1908, size: 64, align: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1883, file: !1884, line: 145, baseType: !1908, size: 64, align: 64, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1883, file: !1884, line: 146, baseType: !1908, size: 64, align: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !1883, file: !1884, line: 147, baseType: !1908, size: 64, align: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !1883, file: !1884, line: 148, baseType: !1908, size: 64, align: 64, offset: 640)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !1883, file: !1884, line: 149, baseType: !1908, size: 64, align: 64, offset: 704)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1883, file: !1884, line: 151, baseType: !1990, size: 128, align: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !1699, line: 195, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !1992, line: 292, size: 128, align: 64, elements: !1993)
!1992 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!1993 = !{!1994, !1999}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !1991, file: !1992, line: 293, baseType: !1995, size: 64, align: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64, align: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !1992, line: 297, size: 256, align: 64, elements: !1997)
!1997 = !{!1998}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1996, file: !1992, line: 297, baseType: !1812, size: 256, align: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !1991, file: !1992, line: 295, baseType: !57, size: 32, align: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1883, file: !1884, line: 152, baseType: !57, size: 32, align: 32, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !1884, line: 153, baseType: !57, size: 32, align: 32, offset: 928)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !1883, file: !1884, line: 155, baseType: !1928, size: 64, align: 64, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !1883, file: !1884, line: 156, baseType: !1928, size: 64, align: 64, offset: 1024)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !1883, file: !1884, line: 157, baseType: !1928, size: 64, align: 64, offset: 1088)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !1883, file: !1884, line: 162, baseType: !240, size: 64, align: 64, offset: 1152)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !1883, file: !1884, line: 163, baseType: !2007, size: 64, align: 64, offset: 1216)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64, align: 64)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !1699, line: 122, baseType: !2009)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !1699, line: 122, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !1883, file: !1884, line: 164, baseType: !2007, size: 64, align: 64, offset: 1280)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !1878, file: !1863, line: 141, baseType: !2012, size: 64, align: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64, align: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !2014, line: 155, size: 1088, align: 64, elements: !2015)
!2014 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2079}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2013, file: !2014, line: 160, baseType: !57, size: 32, align: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2013, file: !2014, line: 161, baseType: !1718, size: 64, align: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !2013, file: !2014, line: 162, baseType: !57, size: 32, align: 32, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2013, file: !2014, line: 163, baseType: !1908, size: 64, align: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2013, file: !2014, line: 164, baseType: !1908, size: 64, align: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2013, file: !2014, line: 165, baseType: !1908, size: 64, align: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !2013, file: !2014, line: 166, baseType: !1908, size: 64, align: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !2013, file: !2014, line: 167, baseType: !1908, size: 64, align: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !2013, file: !2014, line: 168, baseType: !1908, size: 64, align: 64, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !2013, file: !2014, line: 169, baseType: !1908, size: 64, align: 64, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2013, file: !2014, line: 170, baseType: !57, size: 32, align: 32, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !2013, file: !2014, line: 172, baseType: !1928, size: 64, align: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !2013, file: !2014, line: 173, baseType: !57, size: 32, align: 32, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !2013, file: !2014, line: 174, baseType: !1990, size: 128, align: 64, offset: 832)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !2013, file: !2014, line: 175, baseType: !2031, size: 64, align: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64, align: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !1699, line: 144, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !2014, line: 129, size: 768, align: 64, elements: !2035)
!2035 = !{!2036, !2037, !2049, !2054, !2058, !2062, !2066, !2070, !2071, !2072, !2073, !2078}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2034, file: !2014, line: 130, baseType: !1731, size: 64, align: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !2034, file: !2014, line: 131, baseType: !2038, size: 64, align: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64, align: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!2041, !1737, !57, !2047}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64, align: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !2014, line: 127, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !2014, line: 124, size: 128, align: 64, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !2043, file: !2014, line: 125, baseType: !1908, size: 64, align: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2043, file: !2014, line: 126, baseType: !1908, size: 64, align: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64, align: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !1699, line: 143, baseType: !2013)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !2034, file: !2014, line: 132, baseType: !2050, size: 64, align: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64, align: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!57, !2047, !1921, !2053, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64, align: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !2034, file: !2014, line: 134, baseType: !2055, size: 64, align: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64, align: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!57, !1737, !57, !2041, !2047}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !2034, file: !2014, line: 136, baseType: !2059, size: 64, align: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64, align: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!57, !2047, !1908, !1908, !1908, !1908, !1908, !1908, !1921, !1928}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !2034, file: !2014, line: 140, baseType: !2063, size: 64, align: 64, offset: 320)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64, align: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!57, !2047, !1908, !1908, !1919, !1919, !1921, !1928}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2034, file: !2014, line: 142, baseType: !2067, size: 64, align: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64, align: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!57, !2047}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !2034, file: !2014, line: 143, baseType: !2067, size: 64, align: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2034, file: !2014, line: 144, baseType: !57, size: 32, align: 32, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !2034, file: !2014, line: 145, baseType: !240, size: 64, align: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !2034, file: !2014, line: 147, baseType: !2074, size: 64, align: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64, align: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!57, !2047, !57, !1737, !57, !2077, !1914, !1963}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !2034, file: !2014, line: 152, baseType: !2067, size: 64, align: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2013, file: !2014, line: 177, baseType: !1874, size: 64, align: 64, offset: 1024)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1878, file: !1863, line: 144, baseType: !2081, size: 64, align: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64, align: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !2083, line: 135, size: 1152, align: 64, elements: !2084)
!2083 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2084 = !{!2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2132}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2082, file: !2083, line: 140, baseType: !57, size: 32, align: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2082, file: !2083, line: 141, baseType: !57, size: 32, align: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2082, file: !2083, line: 142, baseType: !1908, size: 64, align: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2082, file: !2083, line: 143, baseType: !1908, size: 64, align: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2082, file: !2083, line: 144, baseType: !1718, size: 64, align: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !2082, file: !2083, line: 145, baseType: !1908, size: 64, align: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !2082, file: !2083, line: 146, baseType: !1908, size: 64, align: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2082, file: !2083, line: 147, baseType: !57, size: 32, align: 32, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !2082, file: !2083, line: 148, baseType: !1928, size: 64, align: 64, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2082, file: !2083, line: 150, baseType: !1908, size: 64, align: 64, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !2082, file: !2083, line: 151, baseType: !1908, size: 64, align: 64, offset: 576)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !2082, file: !2083, line: 152, baseType: !441, size: 64, align: 64, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !2082, file: !2083, line: 153, baseType: !57, size: 32, align: 32, offset: 704)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !2082, file: !2083, line: 154, baseType: !1908, size: 64, align: 64, offset: 768)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !2082, file: !2083, line: 155, baseType: !57, size: 32, align: 32, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !2082, file: !2083, line: 156, baseType: !1990, size: 128, align: 64, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !2082, file: !2083, line: 157, baseType: !2102, size: 64, align: 64, offset: 1024)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64, align: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !1699, line: 141, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !2083, line: 117, size: 576, align: 64, elements: !2106)
!2106 = !{!2107, !2108, !2114, !2118, !2124, !2125, !2126, !2127, !2128}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2105, file: !2083, line: 118, baseType: !1731, size: 64, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !2105, file: !2083, line: 120, baseType: !2109, size: 64, align: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64, align: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!57, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64, align: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !1699, line: 140, baseType: !2082)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !2105, file: !2083, line: 121, baseType: !2115, size: 64, align: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64, align: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!57, !441, !1919, !2112}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !2105, file: !2083, line: 123, baseType: !2119, size: 64, align: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64, align: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!57, !2122, !1908, !1919, !1919, !1919, !1921, !1928}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64, align: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2113)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2105, file: !2083, line: 126, baseType: !2109, size: 64, align: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !2105, file: !2083, line: 127, baseType: !2109, size: 64, align: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !2083, line: 128, baseType: !57, size: 32, align: 32, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !2105, file: !2083, line: 129, baseType: !240, size: 64, align: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !2105, file: !2083, line: 131, baseType: !2129, size: 64, align: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64, align: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!57, !2112, !57, !57, !1963}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2082, file: !2083, line: 158, baseType: !1874, size: 64, align: 64, offset: 1088)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !1878, file: !1863, line: 147, baseType: !2134, size: 64, align: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64, align: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !1863, line: 147, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !1862, file: !1863, line: 150, baseType: !57, size: 32, align: 32, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1862, file: !1863, line: 151, baseType: !2138, size: 64, align: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64, align: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !1701, line: 223, size: 256, align: 64, elements: !2140)
!2140 = !{!2141}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2139, file: !1701, line: 223, baseType: !1812, size: 256, align: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !1706, file: !1701, line: 250, baseType: !1761, size: 64, align: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !1706, file: !1701, line: 251, baseType: !1761, size: 64, align: 64, offset: 512)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !1706, file: !1701, line: 252, baseType: !2145, size: 64, align: 64, offset: 576)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64, align: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !1701, line: 204, size: 256, align: 64, elements: !2147)
!2147 = !{!2148}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2146, file: !1701, line: 204, baseType: !1812, size: 256, align: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1706, file: !1701, line: 253, baseType: !2150, size: 192, align: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !1712, line: 269, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !1712, line: 265, size: 192, align: 64, elements: !2152)
!2152 = !{!2153, !2154, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !2151, file: !1712, line: 266, baseType: !441, size: 64, align: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2151, file: !1712, line: 267, baseType: !1718, size: 64, align: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !2151, file: !1712, line: 268, baseType: !57, size: 32, align: 32, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !1700, file: !1701, line: 272, baseType: !1721, size: 64, align: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1700, file: !1701, line: 273, baseType: !1761, size: 64, align: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1700, file: !1701, line: 274, baseType: !57, size: 32, align: 32, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1700, file: !1701, line: 275, baseType: !57, size: 32, align: 32, offset: 224)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1700, file: !1701, line: 276, baseType: !240, size: 64, align: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1700, file: !1701, line: 277, baseType: !1990, size: 128, align: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !1700, file: !1701, line: 279, baseType: !1718, size: 64, align: 64, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !1700, file: !1701, line: 280, baseType: !1718, size: 64, align: 64, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !1700, file: !1701, line: 281, baseType: !1837, size: 64, align: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !1700, file: !1701, line: 282, baseType: !1837, size: 64, align: 64, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !1700, file: !1701, line: 283, baseType: !1837, size: 64, align: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !1700, file: !1701, line: 284, baseType: !1837, size: 64, align: 64, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !1700, file: !1701, line: 285, baseType: !1764, size: 64, align: 64, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !1700, file: !1701, line: 286, baseType: !2170, size: 64, align: 64, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64, align: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !1699, line: 186, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !2173, line: 262, size: 192, align: 64, elements: !2174)
!2173 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/rdesktop/[task]rdesktop")
!2174 = !{!2175, !2176, !2182}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !2172, file: !2173, line: 263, baseType: !1764, size: 64, align: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !2172, file: !2173, line: 264, baseType: !2177, size: 64, align: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64, align: 64)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !2173, line: 209, baseType: !2179)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !2173, line: 220, size: 256, align: 64, elements: !2180)
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2179, file: !2173, line: 220, baseType: !1812, size: 256, align: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2172, file: !2173, line: 265, baseType: !1709, size: 64, align: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !1700, file: !1701, line: 287, baseType: !2184, size: 64, align: 64, offset: 960)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64, align: 64)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !1699, line: 184, baseType: !2186)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !1699, line: 184, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !1700, file: !1701, line: 288, baseType: !2188, size: 64, align: 64, offset: 1024)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64, align: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !2173, line: 259, size: 256, align: 64, elements: !2190)
!2190 = !{!2191}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2189, file: !2173, line: 259, baseType: !1812, size: 256, align: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !1700, file: !1701, line: 289, baseType: !2193, size: 64, align: 64, offset: 1088)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64, align: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1700, file: !1701, line: 290, baseType: !2195, size: 64, align: 64, offset: 1152)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64, align: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !1699, line: 189, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !2173, line: 332, size: 128, align: 64, elements: !2198)
!2198 = !{!2199, !2204}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !2197, file: !2173, line: 333, baseType: !2200, size: 64, align: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64, align: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !2173, line: 330, size: 256, align: 64, elements: !2202)
!2202 = !{!2203}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2201, file: !2173, line: 330, baseType: !1812, size: 256, align: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !2197, file: !2173, line: 334, baseType: !2200, size: 64, align: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !1700, file: !1701, line: 296, baseType: !2206, size: 160, align: 8, offset: 1216)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, align: 8, elements: !111)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1700, file: !1701, line: 298, baseType: !2208, size: 64, align: 64, offset: 1408)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64, align: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !1701, line: 268, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !1701, line: 262, size: 320, align: 64, elements: !2211)
!2211 = !{!2212, !2217, !2218, !2219, !2220}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !2210, file: !1701, line: 263, baseType: !2213, size: 64, align: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64, align: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !1712, line: 801, size: 256, align: 64, elements: !2215)
!2215 = !{!2216}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2214, file: !1712, line: 801, baseType: !1812, size: 256, align: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !2210, file: !1701, line: 264, baseType: !2213, size: 64, align: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2210, file: !1701, line: 265, baseType: !1794, size: 64, align: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !2210, file: !1701, line: 266, baseType: !1764, size: 64, align: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2210, file: !1701, line: 267, baseType: !2221, size: 64, align: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64, align: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !1712, line: 170, size: 256, align: 64, elements: !2223)
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2222, file: !1712, line: 170, baseType: !1812, size: 256, align: 64)
!2225 = !DILocation(line: 571, column: 8, scope: !1670)
!2226 = !DILocalVariable(name: "server_cert", scope: !1670, file: !55, line: 571, type: !1697)
!2227 = !DILocation(line: 571, column: 17, scope: !1670)
!2228 = !DILocalVariable(name: "server_public_key", scope: !1670, file: !55, line: 572, type: !1899)
!2229 = !DILocation(line: 572, column: 7, scope: !1670)
!2230 = !DILocalVariable(name: "tag", scope: !1670, file: !55, line: 573, type: !47)
!2231 = !DILocation(line: 573, column: 9, scope: !1670)
!2232 = !DILocalVariable(name: "length", scope: !1670, file: !55, line: 573, type: !47)
!2233 = !DILocation(line: 573, column: 14, scope: !1670)
!2234 = !DILocalVariable(name: "next_tag", scope: !1670, file: !55, line: 574, type: !50)
!2235 = !DILocation(line: 574, column: 9, scope: !1670)
!2236 = !DILocalVariable(name: "end", scope: !1670, file: !55, line: 574, type: !50)
!2237 = !DILocation(line: 574, column: 20, scope: !1670)
!2238 = !DILocation(line: 576, column: 2, scope: !1670)
!2239 = !DILocation(line: 578, column: 33, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 578, column: 2)
!2241 = !DILocation(line: 578, column: 37, scope: !2240)
!2242 = !DILocation(line: 578, column: 20, scope: !2240)
!2243 = !DILocation(line: 578, column: 5, scope: !2240)
!2244 = !DILocation(line: 578, column: 18, scope: !2240)
!2245 = !DILocation(line: 578, column: 42, scope: !2240)
!2246 = !DILocation(line: 578, column: 46, scope: !2240)
!2247 = !DILocation(line: 578, column: 48, scope: !2240)
!2248 = !DILocation(line: 579, column: 31, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 579, column: 2)
!2250 = !DILocation(line: 579, column: 35, scope: !2249)
!2251 = !DILocation(line: 579, column: 18, scope: !2249)
!2252 = !DILocation(line: 579, column: 16, scope: !2249)
!2253 = !DILocation(line: 579, column: 40, scope: !2249)
!2254 = !DILocation(line: 579, column: 44, scope: !2249)
!2255 = !DILocation(line: 579, column: 46, scope: !2249)
!2256 = !DILocation(line: 580, column: 6, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 580, column: 6)
!2258 = !DILocation(line: 580, column: 18, scope: !2257)
!2259 = !DILocation(line: 580, column: 6, scope: !1670)
!2260 = !DILocation(line: 583, column: 3, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !55, line: 581, column: 2)
!2262 = !DILocation(line: 584, column: 3, scope: !2261)
!2263 = !DILocation(line: 587, column: 30, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 587, column: 2)
!2265 = !DILocation(line: 587, column: 34, scope: !2264)
!2266 = !DILocation(line: 587, column: 17, scope: !2264)
!2267 = !DILocation(line: 587, column: 15, scope: !2264)
!2268 = !DILocation(line: 587, column: 39, scope: !2264)
!2269 = !DILocation(line: 587, column: 43, scope: !2264)
!2270 = !DILocation(line: 587, column: 45, scope: !2264)
!2271 = !DILocation(line: 588, column: 32, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 588, column: 2)
!2273 = !DILocation(line: 588, column: 36, scope: !2272)
!2274 = !DILocation(line: 588, column: 19, scope: !2272)
!2275 = !DILocation(line: 588, column: 17, scope: !2272)
!2276 = !DILocation(line: 588, column: 41, scope: !2272)
!2277 = !DILocation(line: 588, column: 45, scope: !2272)
!2278 = !DILocation(line: 588, column: 47, scope: !2272)
!2279 = !DILocation(line: 590, column: 6, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 590, column: 6)
!2281 = !DILocation(line: 590, column: 17, scope: !2280)
!2282 = !DILocation(line: 590, column: 6, scope: !1670)
!2283 = !DILocation(line: 593, column: 10, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !55, line: 591, column: 2)
!2285 = !DILocation(line: 592, column: 3, scope: !2284)
!2286 = !DILocation(line: 594, column: 3, scope: !2284)
!2287 = !DILocation(line: 597, column: 22, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 597, column: 2)
!2289 = !DILocation(line: 597, column: 26, scope: !2288)
!2290 = !DILocation(line: 597, column: 5, scope: !2288)
!2291 = !DILocation(line: 597, column: 19, scope: !2288)
!2292 = !DILocation(line: 597, column: 39, scope: !2288)
!2293 = !DILocation(line: 597, column: 30, scope: !2288)
!2294 = !DILocation(line: 597, column: 34, scope: !2288)
!2295 = !DILocation(line: 597, column: 36, scope: !2288)
!2296 = !DILocation(line: 600, column: 8, scope: !1670)
!2297 = !DILocation(line: 600, column: 11, scope: !1670)
!2298 = !DILocation(line: 600, column: 15, scope: !1670)
!2299 = !DILocation(line: 600, column: 13, scope: !1670)
!2300 = !DILocation(line: 600, column: 6, scope: !1670)
!2301 = !DILocation(line: 601, column: 6, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 601, column: 6)
!2303 = !DILocation(line: 601, column: 12, scope: !2302)
!2304 = !DILocation(line: 601, column: 15, scope: !2302)
!2305 = !DILocation(line: 601, column: 10, scope: !2302)
!2306 = !DILocation(line: 601, column: 6, scope: !1670)
!2307 = !DILocation(line: 603, column: 3, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2302, file: !55, line: 602, column: 2)
!2309 = !DILocation(line: 604, column: 3, scope: !2308)
!2310 = !DILocation(line: 607, column: 25, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 607, column: 2)
!2312 = !DILocation(line: 607, column: 29, scope: !2311)
!2313 = !DILocation(line: 607, column: 12, scope: !2311)
!2314 = !DILocation(line: 607, column: 10, scope: !2311)
!2315 = !DILocation(line: 607, column: 34, scope: !2311)
!2316 = !DILocation(line: 607, column: 38, scope: !2311)
!2317 = !DILocation(line: 607, column: 40, scope: !2311)
!2318 = !DILocation(line: 608, column: 6, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !1670, file: !55, line: 608, column: 6)
!2320 = !DILocation(line: 608, column: 12, scope: !2319)
!2321 = !DILocation(line: 608, column: 6, scope: !1670)
!2322 = !DILocation(line: 610, column: 3, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !55, line: 609, column: 2)
!2324 = !DILocation(line: 612, column: 4, scope: !2323)
!2325 = !DILocation(line: 612, column: 8, scope: !2323)
!2326 = !DILocation(line: 612, column: 10, scope: !2323)
!2327 = !DILocation(line: 614, column: 3, scope: !2323)
!2328 = !DILocation(line: 614, column: 10, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2323, file: !55, discriminator: 1)
!2330 = !DILocation(line: 614, column: 13, scope: !2329)
!2331 = !DILocation(line: 614, column: 17, scope: !2329)
!2332 = !DILocation(line: 614, column: 15, scope: !2329)
!2333 = !DILocation(line: 614, column: 3, scope: !2329)
!2334 = !DILocation(line: 616, column: 25, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !55, line: 616, column: 4)
!2336 = distinct !DILexicalBlock(scope: !2323, file: !55, line: 615, column: 3)
!2337 = !DILocation(line: 616, column: 29, scope: !2335)
!2338 = !DILocation(line: 616, column: 12, scope: !2335)
!2339 = !DILocation(line: 616, column: 10, scope: !2335)
!2340 = !DILocation(line: 616, column: 34, scope: !2335)
!2341 = !DILocation(line: 616, column: 38, scope: !2335)
!2342 = !DILocation(line: 616, column: 40, scope: !2335)
!2343 = !DILocation(line: 617, column: 28, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !55, line: 617, column: 4)
!2345 = !DILocation(line: 617, column: 32, scope: !2344)
!2346 = !DILocation(line: 617, column: 15, scope: !2344)
!2347 = !DILocation(line: 617, column: 13, scope: !2344)
!2348 = !DILocation(line: 617, column: 37, scope: !2344)
!2349 = !DILocation(line: 617, column: 41, scope: !2344)
!2350 = !DILocation(line: 617, column: 43, scope: !2344)
!2351 = !DILocation(line: 619, column: 15, scope: !2336)
!2352 = !DILocation(line: 619, column: 18, scope: !2336)
!2353 = !DILocation(line: 619, column: 22, scope: !2336)
!2354 = !DILocation(line: 619, column: 20, scope: !2336)
!2355 = !DILocation(line: 619, column: 13, scope: !2336)
!2356 = !DILocation(line: 621, column: 12, scope: !2336)
!2357 = !DILocation(line: 621, column: 4, scope: !2336)
!2358 = !DILocation(line: 624, column: 32, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !55, line: 624, column: 10)
!2360 = distinct !DILexicalBlock(scope: !2336, file: !55, line: 622, column: 4)
!2361 = !DILocation(line: 624, column: 35, scope: !2359)
!2362 = !DILocation(line: 624, column: 44, scope: !2359)
!2363 = !DILocation(line: 624, column: 11, scope: !2359)
!2364 = !DILocation(line: 624, column: 10, scope: !2360)
!2365 = !DILocation(line: 626, column: 7, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2359, file: !55, line: 625, column: 6)
!2367 = !DILocation(line: 628, column: 7, scope: !2366)
!2368 = !DILocation(line: 630, column: 6, scope: !2360)
!2369 = !DILocation(line: 633, column: 6, scope: !2360)
!2370 = !DILocation(line: 636, column: 32, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2360, file: !55, line: 636, column: 10)
!2372 = !DILocation(line: 636, column: 35, scope: !2371)
!2373 = !DILocation(line: 636, column: 43, scope: !2371)
!2374 = !DILocation(line: 636, column: 52, scope: !2371)
!2375 = !DILocation(line: 636, column: 11, scope: !2371)
!2376 = !DILocation(line: 636, column: 10, scope: !2360)
!2377 = !DILocation(line: 638, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2371, file: !55, line: 637, column: 6)
!2379 = !DILocation(line: 640, column: 7, scope: !2378)
!2380 = !DILocation(line: 642, column: 6, scope: !2360)
!2381 = !DILocation(line: 647, column: 13, scope: !2360)
!2382 = !DILocation(line: 645, column: 6, scope: !2360)
!2383 = !DILocation(line: 648, column: 4, scope: !2360)
!2384 = !DILocation(line: 650, column: 11, scope: !2336)
!2385 = !DILocation(line: 650, column: 4, scope: !2336)
!2386 = !DILocation(line: 650, column: 7, scope: !2336)
!2387 = !DILocation(line: 650, column: 9, scope: !2336)
!2388 = !DILocation(line: 614, column: 3, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2323, file: !55, discriminator: 2)
!2390 = distinct !{!2390, !2327}
!2391 = !DILocation(line: 652, column: 2, scope: !2323)
!2392 = !DILocalVariable(name: "certcount", scope: !2393, file: !55, line: 655, type: !44)
!2393 = distinct !DILexicalBlock(scope: !2319, file: !55, line: 654, column: 2)
!2394 = !DILocation(line: 655, column: 10, scope: !2393)
!2395 = !DILocation(line: 657, column: 3, scope: !2393)
!2396 = !DILocation(line: 659, column: 30, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 659, column: 3)
!2398 = !DILocation(line: 659, column: 34, scope: !2397)
!2399 = !DILocation(line: 659, column: 17, scope: !2397)
!2400 = !DILocation(line: 659, column: 15, scope: !2397)
!2401 = !DILocation(line: 659, column: 39, scope: !2397)
!2402 = !DILocation(line: 659, column: 43, scope: !2397)
!2403 = !DILocation(line: 659, column: 45, scope: !2397)
!2404 = !DILocation(line: 660, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 660, column: 7)
!2406 = !DILocation(line: 660, column: 17, scope: !2405)
!2407 = !DILocation(line: 660, column: 7, scope: !2393)
!2408 = !DILocation(line: 662, column: 4, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !55, line: 661, column: 3)
!2410 = !DILocation(line: 664, column: 4, scope: !2409)
!2411 = !DILocation(line: 666, column: 3, scope: !2393)
!2412 = !DILocation(line: 666, column: 10, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2414, file: !55, discriminator: 1)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !55, line: 666, column: 3)
!2415 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 666, column: 3)
!2416 = !DILocation(line: 666, column: 20, scope: !2413)
!2417 = !DILocation(line: 666, column: 3, scope: !2413)
!2418 = !DILocalVariable(name: "ignorelen", scope: !2419, file: !55, line: 668, type: !44)
!2419 = distinct !DILexicalBlock(scope: !2414, file: !55, line: 667, column: 3)
!2420 = !DILocation(line: 668, column: 11, scope: !2419)
!2421 = !DILocalVariable(name: "ignorecert", scope: !2419, file: !55, line: 669, type: !1697)
!2422 = !DILocation(line: 669, column: 10, scope: !2419)
!2423 = !DILocation(line: 671, column: 31, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !55, line: 671, column: 4)
!2425 = !DILocation(line: 671, column: 35, scope: !2424)
!2426 = !DILocation(line: 671, column: 18, scope: !2424)
!2427 = !DILocation(line: 671, column: 16, scope: !2424)
!2428 = !DILocation(line: 671, column: 40, scope: !2424)
!2429 = !DILocation(line: 671, column: 44, scope: !2424)
!2430 = !DILocation(line: 671, column: 46, scope: !2424)
!2431 = !DILocation(line: 672, column: 33, scope: !2419)
!2432 = !DILocation(line: 672, column: 36, scope: !2419)
!2433 = !DILocation(line: 672, column: 39, scope: !2419)
!2434 = !DILocation(line: 672, column: 17, scope: !2419)
!2435 = !DILocation(line: 672, column: 15, scope: !2419)
!2436 = !DILocation(line: 673, column: 14, scope: !2419)
!2437 = !DILocation(line: 673, column: 5, scope: !2419)
!2438 = !DILocation(line: 673, column: 9, scope: !2419)
!2439 = !DILocation(line: 673, column: 11, scope: !2419)
!2440 = !DILocation(line: 674, column: 8, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2419, file: !55, line: 674, column: 8)
!2442 = !DILocation(line: 674, column: 19, scope: !2441)
!2443 = !DILocation(line: 674, column: 8, scope: !2419)
!2444 = !DILocation(line: 676, column: 5, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !55, line: 675, column: 4)
!2446 = !DILocation(line: 678, column: 4, scope: !2445)
!2447 = !DILocation(line: 679, column: 3, scope: !2419)
!2448 = !DILocation(line: 666, column: 34, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2414, file: !55, discriminator: 2)
!2450 = !DILocation(line: 666, column: 3, scope: !2449)
!2451 = distinct !{!2451, !2411}
!2452 = !DILocation(line: 688, column: 31, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 688, column: 3)
!2454 = !DILocation(line: 688, column: 35, scope: !2453)
!2455 = !DILocation(line: 688, column: 18, scope: !2453)
!2456 = !DILocation(line: 688, column: 16, scope: !2453)
!2457 = !DILocation(line: 688, column: 40, scope: !2453)
!2458 = !DILocation(line: 688, column: 44, scope: !2453)
!2459 = !DILocation(line: 688, column: 46, scope: !2453)
!2460 = !DILocation(line: 690, column: 72, scope: !2393)
!2461 = !DILocation(line: 689, column: 3, scope: !2393)
!2462 = !DILocation(line: 691, column: 28, scope: !2393)
!2463 = !DILocation(line: 691, column: 31, scope: !2393)
!2464 = !DILocation(line: 691, column: 34, scope: !2393)
!2465 = !DILocation(line: 691, column: 12, scope: !2393)
!2466 = !DILocation(line: 691, column: 10, scope: !2393)
!2467 = !DILocation(line: 692, column: 13, scope: !2393)
!2468 = !DILocation(line: 692, column: 4, scope: !2393)
!2469 = !DILocation(line: 692, column: 8, scope: !2393)
!2470 = !DILocation(line: 692, column: 10, scope: !2393)
!2471 = !DILocation(line: 693, column: 14, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 693, column: 6)
!2473 = !DILocation(line: 693, column: 11, scope: !2472)
!2474 = !DILocation(line: 693, column: 6, scope: !2393)
!2475 = !DILocation(line: 695, column: 4, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2472, file: !55, line: 694, column: 3)
!2477 = !DILocation(line: 697, column: 4, scope: !2476)
!2478 = !DILocation(line: 699, column: 29, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 699, column: 3)
!2480 = !DILocation(line: 699, column: 33, scope: !2479)
!2481 = !DILocation(line: 699, column: 16, scope: !2479)
!2482 = !DILocation(line: 699, column: 14, scope: !2479)
!2483 = !DILocation(line: 699, column: 38, scope: !2479)
!2484 = !DILocation(line: 699, column: 42, scope: !2479)
!2485 = !DILocation(line: 699, column: 44, scope: !2479)
!2486 = !DILocation(line: 701, column: 10, scope: !2393)
!2487 = !DILocation(line: 700, column: 3, scope: !2393)
!2488 = !DILocation(line: 702, column: 33, scope: !2393)
!2489 = !DILocation(line: 702, column: 36, scope: !2393)
!2490 = !DILocation(line: 702, column: 39, scope: !2393)
!2491 = !DILocation(line: 702, column: 17, scope: !2393)
!2492 = !DILocation(line: 702, column: 15, scope: !2393)
!2493 = !DILocation(line: 703, column: 13, scope: !2393)
!2494 = !DILocation(line: 703, column: 4, scope: !2393)
!2495 = !DILocation(line: 703, column: 8, scope: !2393)
!2496 = !DILocation(line: 703, column: 10, scope: !2393)
!2497 = !DILocation(line: 704, column: 14, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 704, column: 6)
!2499 = !DILocation(line: 704, column: 11, scope: !2498)
!2500 = !DILocation(line: 704, column: 6, scope: !2393)
!2501 = !DILocation(line: 706, column: 20, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !55, line: 705, column: 3)
!2503 = !DILocation(line: 706, column: 4, scope: !2502)
!2504 = !DILocation(line: 707, column: 4, scope: !2502)
!2505 = !DILocation(line: 709, column: 4, scope: !2502)
!2506 = !DILocation(line: 711, column: 23, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 711, column: 7)
!2508 = !DILocation(line: 711, column: 36, scope: !2507)
!2509 = !DILocation(line: 711, column: 8, scope: !2507)
!2510 = !DILocation(line: 711, column: 7, scope: !2393)
!2511 = !DILocation(line: 713, column: 20, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !55, line: 712, column: 3)
!2513 = !DILocation(line: 713, column: 4, scope: !2512)
!2514 = !DILocation(line: 714, column: 20, scope: !2512)
!2515 = !DILocation(line: 714, column: 4, scope: !2512)
!2516 = !DILocation(line: 715, column: 4, scope: !2512)
!2517 = !DILocation(line: 717, column: 4, scope: !2512)
!2518 = !DILocation(line: 719, column: 19, scope: !2393)
!2519 = !DILocation(line: 719, column: 3, scope: !2393)
!2520 = !DILocation(line: 720, column: 4, scope: !2393)
!2521 = !DILocation(line: 720, column: 8, scope: !2393)
!2522 = !DILocation(line: 720, column: 10, scope: !2393)
!2523 = !DILocation(line: 721, column: 42, scope: !2393)
!2524 = !DILocation(line: 721, column: 23, scope: !2393)
!2525 = !DILocation(line: 721, column: 21, scope: !2393)
!2526 = !DILocation(line: 722, column: 14, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 722, column: 6)
!2528 = !DILocation(line: 722, column: 11, scope: !2527)
!2529 = !DILocation(line: 722, column: 6, scope: !2393)
!2530 = !DILocation(line: 724, column: 4, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !55, line: 723, column: 3)
!2532 = !DILocation(line: 726, column: 20, scope: !2531)
!2533 = !DILocation(line: 726, column: 4, scope: !2531)
!2534 = !DILocation(line: 727, column: 4, scope: !2531)
!2535 = !DILocation(line: 729, column: 19, scope: !2393)
!2536 = !DILocation(line: 729, column: 3, scope: !2393)
!2537 = !DILocation(line: 730, column: 8, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 730, column: 7)
!2539 = !DILocation(line: 730, column: 32, scope: !2538)
!2540 = !DILocation(line: 730, column: 38, scope: !2538)
!2541 = !DILocation(line: 731, column: 8, scope: !2538)
!2542 = !DILocation(line: 731, column: 32, scope: !2538)
!2543 = !DILocation(line: 730, column: 7, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2393, file: !55, discriminator: 1)
!2545 = !DILocation(line: 735, column: 11, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2538, file: !55, line: 732, column: 3)
!2547 = !DILocation(line: 735, column: 35, scope: !2546)
!2548 = !DILocation(line: 733, column: 4, scope: !2546)
!2549 = !DILocation(line: 736, column: 20, scope: !2546)
!2550 = !DILocation(line: 736, column: 4, scope: !2546)
!2551 = !DILocation(line: 737, column: 4, scope: !2546)
!2552 = !DILocation(line: 739, column: 30, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2393, file: !55, line: 739, column: 7)
!2554 = !DILocation(line: 739, column: 49, scope: !2553)
!2555 = !DILocation(line: 740, column: 9, scope: !2553)
!2556 = !DILocation(line: 739, column: 7, scope: !2553)
!2557 = !DILocation(line: 740, column: 23, scope: !2553)
!2558 = !DILocation(line: 739, column: 7, scope: !2393)
!2559 = !DILocation(line: 742, column: 4, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2553, file: !55, line: 741, column: 3)
!2561 = !DILocation(line: 744, column: 20, scope: !2560)
!2562 = !DILocation(line: 744, column: 4, scope: !2560)
!2563 = !DILocation(line: 745, column: 4, scope: !2560)
!2564 = !DILocation(line: 747, column: 19, scope: !2393)
!2565 = !DILocation(line: 747, column: 3, scope: !2393)
!2566 = !DILocation(line: 748, column: 3, scope: !2393)
!2567 = !DILocation(line: 750, column: 11, scope: !1670)
!2568 = !DILocation(line: 750, column: 15, scope: !1670)
!2569 = !DILocation(line: 750, column: 21, scope: !1670)
!2570 = !DILocation(line: 750, column: 25, scope: !1670)
!2571 = !DILocation(line: 750, column: 17, scope: !1670)
!2572 = !DILocation(line: 750, column: 2, scope: !1670)
!2573 = !DILocation(line: 751, column: 1, scope: !1670)
!2574 = distinct !DISubprogram(name: "sec_rsa_encrypt", scope: !55, file: !55, line: 312, type: !2575, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !50, !50, !57, !44, !50, !50}
!2577 = !DILocalVariable(name: "out", arg: 1, scope: !2574, file: !55, line: 312, type: !50)
!2578 = !DILocation(line: 312, column: 25, scope: !2574)
!2579 = !DILocalVariable(name: "in", arg: 2, scope: !2574, file: !55, line: 312, type: !50)
!2580 = !DILocation(line: 312, column: 38, scope: !2574)
!2581 = !DILocalVariable(name: "len", arg: 3, scope: !2574, file: !55, line: 312, type: !57)
!2582 = !DILocation(line: 312, column: 46, scope: !2574)
!2583 = !DILocalVariable(name: "modulus_size", arg: 4, scope: !2574, file: !55, line: 312, type: !44)
!2584 = !DILocation(line: 312, column: 58, scope: !2574)
!2585 = !DILocalVariable(name: "modulus", arg: 5, scope: !2574, file: !55, line: 312, type: !50)
!2586 = !DILocation(line: 312, column: 80, scope: !2574)
!2587 = !DILocalVariable(name: "exponent", arg: 6, scope: !2574, file: !55, line: 313, type: !50)
!2588 = !DILocation(line: 313, column: 11, scope: !2574)
!2589 = !DILocation(line: 315, column: 20, scope: !2574)
!2590 = !DILocation(line: 315, column: 25, scope: !2574)
!2591 = !DILocation(line: 315, column: 29, scope: !2574)
!2592 = !DILocation(line: 315, column: 34, scope: !2574)
!2593 = !DILocation(line: 315, column: 48, scope: !2574)
!2594 = !DILocation(line: 315, column: 57, scope: !2574)
!2595 = !DILocation(line: 315, column: 2, scope: !2574)
!2596 = !DILocation(line: 316, column: 1, scope: !2574)
!2597 = distinct !DISubprogram(name: "sec_generate_keys", scope: !55, file: !55, line: 154, type: !2598, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !50, !50, !57}
!2600 = !DILocalVariable(name: "client_random", arg: 1, scope: !2597, file: !55, line: 154, type: !50)
!2601 = !DILocation(line: 154, column: 27, scope: !2597)
!2602 = !DILocalVariable(name: "server_random", arg: 2, scope: !2597, file: !55, line: 154, type: !50)
!2603 = !DILocation(line: 154, column: 50, scope: !2597)
!2604 = !DILocalVariable(name: "rc4_key_size", arg: 3, scope: !2597, file: !55, line: 154, type: !57)
!2605 = !DILocation(line: 154, column: 69, scope: !2597)
!2606 = !DILocalVariable(name: "pre_master_secret", scope: !2597, file: !55, line: 156, type: !80)
!2607 = !DILocation(line: 156, column: 8, scope: !2597)
!2608 = !DILocalVariable(name: "master_secret", scope: !2597, file: !55, line: 157, type: !80)
!2609 = !DILocation(line: 157, column: 8, scope: !2597)
!2610 = !DILocalVariable(name: "key_block", scope: !2597, file: !55, line: 158, type: !80)
!2611 = !DILocation(line: 158, column: 8, scope: !2597)
!2612 = !DILocation(line: 161, column: 2, scope: !2597)
!2613 = !DILocation(line: 161, column: 28, scope: !2597)
!2614 = !DILocation(line: 162, column: 9, scope: !2597)
!2615 = !DILocation(line: 162, column: 27, scope: !2597)
!2616 = !DILocation(line: 162, column: 33, scope: !2597)
!2617 = !DILocation(line: 162, column: 2, scope: !2597)
!2618 = !DILocation(line: 165, column: 14, scope: !2597)
!2619 = !DILocation(line: 165, column: 29, scope: !2597)
!2620 = !DILocation(line: 165, column: 48, scope: !2597)
!2621 = !DILocation(line: 165, column: 63, scope: !2597)
!2622 = !DILocation(line: 165, column: 2, scope: !2597)
!2623 = !DILocation(line: 166, column: 14, scope: !2597)
!2624 = !DILocation(line: 166, column: 25, scope: !2597)
!2625 = !DILocation(line: 166, column: 40, scope: !2597)
!2626 = !DILocation(line: 166, column: 55, scope: !2597)
!2627 = !DILocation(line: 166, column: 2, scope: !2597)
!2628 = !DILocation(line: 169, column: 2, scope: !2597)
!2629 = !DILocation(line: 172, column: 34, scope: !2597)
!2630 = !DILocation(line: 172, column: 49, scope: !2597)
!2631 = !DILocation(line: 172, column: 64, scope: !2597)
!2632 = !DILocation(line: 172, column: 2, scope: !2597)
!2633 = !DILocation(line: 173, column: 34, scope: !2597)
!2634 = !DILocation(line: 173, column: 49, scope: !2597)
!2635 = !DILocation(line: 173, column: 64, scope: !2597)
!2636 = !DILocation(line: 173, column: 2, scope: !2597)
!2637 = !DILocation(line: 175, column: 6, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2597, file: !55, line: 175, column: 6)
!2639 = !DILocation(line: 175, column: 19, scope: !2638)
!2640 = !DILocation(line: 175, column: 6, scope: !2597)
!2641 = !DILocation(line: 177, column: 3, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !55, line: 176, column: 2)
!2643 = !DILocation(line: 178, column: 3, scope: !2642)
!2644 = !DILocation(line: 179, column: 3, scope: !2642)
!2645 = !DILocation(line: 180, column: 3, scope: !2642)
!2646 = !DILocation(line: 181, column: 17, scope: !2642)
!2647 = !DILocation(line: 182, column: 2, scope: !2642)
!2648 = !DILocation(line: 187, column: 10, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2638, file: !55, line: 184, column: 2)
!2650 = !DILocation(line: 185, column: 3, scope: !2649)
!2651 = !DILocation(line: 188, column: 17, scope: !2649)
!2652 = !DILocation(line: 192, column: 2, scope: !2597)
!2653 = !DILocation(line: 193, column: 2, scope: !2597)
!2654 = !DILocation(line: 196, column: 59, scope: !2597)
!2655 = !DILocation(line: 196, column: 2, scope: !2597)
!2656 = !DILocation(line: 197, column: 59, scope: !2597)
!2657 = !DILocation(line: 197, column: 2, scope: !2597)
!2658 = !DILocation(line: 198, column: 1, scope: !2597)
!2659 = distinct !DISubprogram(name: "sec_parse_public_key", scope: !55, file: !55, line: 515, type: !2660, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!740, !435, !50, !50}
!2662 = !DILocalVariable(name: "s", arg: 1, scope: !2659, file: !55, line: 515, type: !435)
!2663 = !DILocation(line: 515, column: 29, scope: !2659)
!2664 = !DILocalVariable(name: "modulus", arg: 2, scope: !2659, file: !55, line: 515, type: !50)
!2665 = !DILocation(line: 515, column: 40, scope: !2659)
!2666 = !DILocalVariable(name: "exponent", arg: 3, scope: !2659, file: !55, line: 515, type: !50)
!2667 = !DILocation(line: 515, column: 57, scope: !2659)
!2668 = !DILocalVariable(name: "magic", scope: !2659, file: !55, line: 517, type: !44)
!2669 = !DILocation(line: 517, column: 9, scope: !2659)
!2670 = !DILocalVariable(name: "modulus_len", scope: !2659, file: !55, line: 517, type: !44)
!2671 = !DILocation(line: 517, column: 16, scope: !2659)
!2672 = !DILocation(line: 519, column: 25, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2659, file: !55, line: 519, column: 2)
!2674 = !DILocation(line: 519, column: 29, scope: !2673)
!2675 = !DILocation(line: 519, column: 12, scope: !2673)
!2676 = !DILocation(line: 519, column: 10, scope: !2673)
!2677 = !DILocation(line: 519, column: 34, scope: !2673)
!2678 = !DILocation(line: 519, column: 38, scope: !2673)
!2679 = !DILocation(line: 519, column: 40, scope: !2673)
!2680 = !DILocation(line: 520, column: 6, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2659, file: !55, line: 520, column: 6)
!2682 = !DILocation(line: 520, column: 12, scope: !2681)
!2683 = !DILocation(line: 520, column: 6, scope: !2659)
!2684 = !DILocation(line: 523, column: 10, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2681, file: !55, line: 521, column: 2)
!2686 = !DILocation(line: 522, column: 3, scope: !2685)
!2687 = !DILocation(line: 524, column: 3, scope: !2685)
!2688 = !DILocation(line: 527, column: 31, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2659, file: !55, line: 527, column: 2)
!2690 = !DILocation(line: 527, column: 35, scope: !2689)
!2691 = !DILocation(line: 527, column: 18, scope: !2689)
!2692 = !DILocation(line: 527, column: 16, scope: !2689)
!2693 = !DILocation(line: 527, column: 40, scope: !2689)
!2694 = !DILocation(line: 527, column: 44, scope: !2689)
!2695 = !DILocation(line: 527, column: 46, scope: !2689)
!2696 = !DILocation(line: 528, column: 14, scope: !2659)
!2697 = !DILocation(line: 529, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2659, file: !55, line: 529, column: 6)
!2699 = !DILocation(line: 529, column: 19, scope: !2698)
!2700 = !DILocation(line: 529, column: 25, scope: !2698)
!2701 = !DILocation(line: 529, column: 29, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !2698, file: !55, discriminator: 1)
!2703 = !DILocation(line: 529, column: 41, scope: !2702)
!2704 = !DILocation(line: 529, column: 6, scope: !2702)
!2705 = !DILocation(line: 533, column: 10, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2698, file: !55, line: 530, column: 2)
!2707 = !DILocation(line: 533, column: 22, scope: !2706)
!2708 = !DILocation(line: 531, column: 3, scope: !2706)
!2709 = !DILocation(line: 534, column: 3, scope: !2706)
!2710 = !DILocation(line: 537, column: 3, scope: !2659)
!2711 = !DILocation(line: 537, column: 7, scope: !2659)
!2712 = !DILocation(line: 537, column: 9, scope: !2659)
!2713 = !DILocation(line: 538, column: 11, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2659, file: !55, line: 538, column: 2)
!2715 = !DILocation(line: 538, column: 21, scope: !2714)
!2716 = !DILocation(line: 538, column: 25, scope: !2714)
!2717 = !DILocation(line: 538, column: 4, scope: !2714)
!2718 = !DILocation(line: 538, column: 32, scope: !2714)
!2719 = !DILocation(line: 538, column: 36, scope: !2714)
!2720 = !DILocation(line: 538, column: 38, scope: !2714)
!2721 = !DILocation(line: 539, column: 11, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2659, file: !55, line: 539, column: 2)
!2723 = !DILocation(line: 539, column: 20, scope: !2722)
!2724 = !DILocation(line: 539, column: 24, scope: !2722)
!2725 = !DILocation(line: 539, column: 26, scope: !2722)
!2726 = !DILocation(line: 539, column: 4, scope: !2722)
!2727 = !DILocation(line: 539, column: 50, scope: !2722)
!2728 = !DILocation(line: 539, column: 41, scope: !2722)
!2729 = !DILocation(line: 539, column: 45, scope: !2722)
!2730 = !DILocation(line: 539, column: 47, scope: !2722)
!2731 = !DILocation(line: 540, column: 3, scope: !2659)
!2732 = !DILocation(line: 540, column: 7, scope: !2659)
!2733 = !DILocation(line: 540, column: 9, scope: !2659)
!2734 = !DILocation(line: 541, column: 28, scope: !2659)
!2735 = !DILocation(line: 541, column: 26, scope: !2659)
!2736 = !DILocation(line: 543, column: 11, scope: !2659)
!2737 = !DILocation(line: 543, column: 15, scope: !2659)
!2738 = !DILocation(line: 543, column: 21, scope: !2659)
!2739 = !DILocation(line: 543, column: 25, scope: !2659)
!2740 = !DILocation(line: 543, column: 17, scope: !2659)
!2741 = !DILocation(line: 543, column: 2, scope: !2659)
!2742 = !DILocation(line: 544, column: 1, scope: !2659)
!2743 = distinct !DISubprogram(name: "sec_parse_public_sig", scope: !55, file: !55, line: 548, type: !2744, isLocal: true, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !97)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!740, !435, !44, !50, !50}
!2746 = !DILocalVariable(name: "s", arg: 1, scope: !2743, file: !55, line: 548, type: !435)
!2747 = !DILocation(line: 548, column: 29, scope: !2743)
!2748 = !DILocalVariable(name: "len", arg: 2, scope: !2743, file: !55, line: 548, type: !44)
!2749 = !DILocation(line: 548, column: 39, scope: !2743)
!2750 = !DILocalVariable(name: "modulus", arg: 3, scope: !2743, file: !55, line: 548, type: !50)
!2751 = !DILocation(line: 548, column: 52, scope: !2743)
!2752 = !DILocalVariable(name: "exponent", arg: 4, scope: !2743, file: !55, line: 548, type: !50)
!2753 = !DILocation(line: 548, column: 69, scope: !2743)
!2754 = !DILocalVariable(name: "signature", scope: !2743, file: !55, line: 550, type: !88)
!2755 = !DILocation(line: 550, column: 8, scope: !2743)
!2756 = !DILocalVariable(name: "sig_len", scope: !2743, file: !55, line: 551, type: !44)
!2757 = !DILocation(line: 551, column: 9, scope: !2743)
!2758 = !DILocation(line: 553, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2743, file: !55, line: 553, column: 6)
!2760 = !DILocation(line: 553, column: 10, scope: !2759)
!2761 = !DILocation(line: 553, column: 6, scope: !2743)
!2762 = !DILocation(line: 555, column: 3, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !55, line: 554, column: 2)
!2764 = !DILocation(line: 557, column: 2, scope: !2743)
!2765 = !DILocation(line: 558, column: 12, scope: !2743)
!2766 = !DILocation(line: 558, column: 16, scope: !2743)
!2767 = !DILocation(line: 558, column: 10, scope: !2743)
!2768 = !DILocation(line: 559, column: 4, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2743, file: !55, line: 559, column: 2)
!2770 = !DILocation(line: 559, column: 22, scope: !2769)
!2771 = !DILocation(line: 559, column: 26, scope: !2769)
!2772 = !DILocation(line: 559, column: 28, scope: !2769)
!2773 = !DILocation(line: 559, column: 48, scope: !2769)
!2774 = !DILocation(line: 559, column: 39, scope: !2769)
!2775 = !DILocation(line: 559, column: 43, scope: !2769)
!2776 = !DILocation(line: 559, column: 45, scope: !2769)
!2777 = !DILocation(line: 560, column: 22, scope: !2743)
!2778 = !DILocation(line: 560, column: 35, scope: !2743)
!2779 = !DILocation(line: 560, column: 44, scope: !2743)
!2780 = !DILocation(line: 561, column: 8, scope: !2743)
!2781 = !DILocation(line: 561, column: 19, scope: !2743)
!2782 = !DILocation(line: 560, column: 9, scope: !2743)
!2783 = !DILocation(line: 560, column: 2, scope: !2743)
!2784 = !DILocation(line: 562, column: 1, scope: !2743)
