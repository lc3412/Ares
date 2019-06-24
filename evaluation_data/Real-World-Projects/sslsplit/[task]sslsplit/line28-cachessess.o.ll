; ModuleID = './line28-cachessess.o.i'
source_filename = "./line28-cachessess.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kh_dynbufmap_t_s = type { i32, i32, i32, i32, i32*, %struct.dynbuf**, %struct.dynbuf** }
%struct.dynbuf = type { i8*, i64 }
%struct.cache = type { %union.pthread_mutex_t, i32 ()*, i32 ()*, i32 (i32)*, void (i32)*, i32 (i8*)*, i32 (i8*, i32*)*, void (i8*)*, void (i8*)*, i8* (i32)*, i8* (i32)*, void (i32, i8*)*, i8* (i8*, i32)*, void ()* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.ssl_session_st = type { i32, i32, [8 x i8], i32, [48 x i8], i32, [32 x i8], i32, [32 x i8], i8*, i8*, i32, %struct.sess_cert_st*, %struct.x509_st*, i64, i32, i64, i64, i32, %struct.ssl_cipher_st*, i64, %struct.stack_st_SSL_CIPHER*, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i8*, i64, i8*, i8*, i64, i64, i8* }
%struct.sess_cert_st = type opaque
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
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.stack_st_SSL_CIPHER = type { %struct.stack_st }
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }

@srcsessmap = internal global %struct.kh_dynbufmap_t_s* null, align 8

; Function Attrs: nounwind uwtable
define void @cachessess_init_cb(%struct.cache* nonnull) #0 !dbg !46 {
  %2 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %2, metadata !151, metadata !152), !dbg !153
  %3 = call %struct.kh_dynbufmap_t_s* @kh_init_dynbufmap_t(), !dbg !154
  store %struct.kh_dynbufmap_t_s* %3, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !155
  %4 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !156
  %5 = getelementptr inbounds %struct.cache, %struct.cache* %4, i32 0, i32 1, !dbg !157
  store i32 ()* @cachessess_begin_cb, i32 ()** %5, align 8, !dbg !158
  %6 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !159
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 2, !dbg !160
  store i32 ()* @cachessess_end_cb, i32 ()** %7, align 8, !dbg !161
  %8 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !162
  %9 = getelementptr inbounds %struct.cache, %struct.cache* %8, i32 0, i32 3, !dbg !163
  store i32 (i32)* @cachessess_exist_cb, i32 (i32)** %9, align 8, !dbg !164
  %10 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !165
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 4, !dbg !166
  store void (i32)* @cachessess_del_cb, void (i32)** %11, align 8, !dbg !167
  %12 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !168
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 5, !dbg !169
  store i32 (i8*)* @cachessess_get_cb, i32 (i8*)** %13, align 8, !dbg !170
  %14 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !171
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 6, !dbg !172
  store i32 (i8*, i32*)* @cachessess_put_cb, i32 (i8*, i32*)** %15, align 8, !dbg !173
  %16 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !174
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 7, !dbg !175
  store void (i8*)* @cachessess_free_key_cb, void (i8*)** %17, align 8, !dbg !176
  %18 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !177
  %19 = getelementptr inbounds %struct.cache, %struct.cache* %18, i32 0, i32 8, !dbg !178
  store void (i8*)* @cachessess_free_val_cb, void (i8*)** %19, align 8, !dbg !179
  %20 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !180
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 9, !dbg !181
  store i8* (i32)* @cachessess_get_key_cb, i8* (i32)** %21, align 8, !dbg !182
  %22 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !183
  %23 = getelementptr inbounds %struct.cache, %struct.cache* %22, i32 0, i32 10, !dbg !184
  store i8* (i32)* @cachessess_get_val_cb, i8* (i32)** %23, align 8, !dbg !185
  %24 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !186
  %25 = getelementptr inbounds %struct.cache, %struct.cache* %24, i32 0, i32 11, !dbg !187
  store void (i32, i8*)* @cachessess_set_val_cb, void (i32, i8*)** %25, align 8, !dbg !188
  %26 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !189
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 12, !dbg !190
  store i8* (i8*, i32)* @cachessess_unpackverify_val_cb, i8* (i8*, i32)** %27, align 8, !dbg !191
  %28 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !192
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 13, !dbg !193
  store void ()* @cachessess_fini_cb, void ()** %29, align 8, !dbg !194
  ret void, !dbg !195
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.kh_dynbufmap_t_s* @kh_init_dynbufmap_t() #2 !dbg !196 {
  %1 = call noalias i8* @calloc(i64 1, i64 40) #7, !dbg !199
  %2 = bitcast i8* %1 to %struct.kh_dynbufmap_t_s*, !dbg !200
  ret %struct.kh_dynbufmap_t_s* %2, !dbg !201
}

; Function Attrs: nounwind uwtable
define internal i32 @cachessess_begin_cb() #0 !dbg !202 {
  ret i32 0, !dbg !203
}

; Function Attrs: nounwind uwtable
define internal i32 @cachessess_end_cb() #0 !dbg !204 {
  %1 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !205
  %2 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %1, i32 0, i32 0, !dbg !206
  %3 = load i32, i32* %2, align 8, !dbg !206
  ret i32 %3, !dbg !207
}

; Function Attrs: nounwind uwtable
define internal i32 @cachessess_exist_cb(i32) #0 !dbg !208 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !209, metadata !152), !dbg !210
  %3 = load i32, i32* %2, align 4, !dbg !211
  %4 = lshr i32 %3, 4, !dbg !212
  %5 = zext i32 %4 to i64, !dbg !213
  %6 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !214
  %7 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %6, i32 0, i32 4, !dbg !215
  %8 = load i32*, i32** %7, align 8, !dbg !215
  %9 = getelementptr inbounds i32, i32* %8, i64 %5, !dbg !213
  %10 = load i32, i32* %9, align 4, !dbg !213
  %11 = load i32, i32* %2, align 4, !dbg !216
  %12 = and i32 %11, 15, !dbg !217
  %13 = shl i32 %12, 1, !dbg !218
  %14 = lshr i32 %10, %13, !dbg !219
  %15 = and i32 %14, 3, !dbg !220
  %16 = icmp ne i32 %15, 0, !dbg !221
  %17 = xor i1 %16, true, !dbg !221
  %18 = zext i1 %17 to i32, !dbg !221
  ret i32 %18, !dbg !222
}

; Function Attrs: nounwind uwtable
define internal void @cachessess_del_cb(i32) #0 !dbg !223 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !224, metadata !152), !dbg !225
  %3 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !226
  %4 = load i32, i32* %2, align 4, !dbg !227
  call void @kh_del_dynbufmap_t(%struct.kh_dynbufmap_t_s* %3, i32 %4), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: nounwind uwtable
define internal i32 @cachessess_get_cb(i8*) #0 !dbg !230 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !231, metadata !152), !dbg !232
  %3 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !233
  %4 = load i8*, i8** %2, align 8, !dbg !234
  %5 = bitcast i8* %4 to %struct.dynbuf*, !dbg !234
  %6 = call i32 @kh_get_dynbufmap_t(%struct.kh_dynbufmap_t_s* %3, %struct.dynbuf* %5), !dbg !235
  ret i32 %6, !dbg !236
}

; Function Attrs: nounwind uwtable
define internal i32 @cachessess_put_cb(i8*, i32*) #0 !dbg !237 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !238, metadata !152), !dbg !239
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !240, metadata !152), !dbg !241
  %5 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !242
  %6 = load i8*, i8** %3, align 8, !dbg !243
  %7 = bitcast i8* %6 to %struct.dynbuf*, !dbg !243
  %8 = load i32*, i32** %4, align 8, !dbg !244
  %9 = call i32 @kh_put_dynbufmap_t(%struct.kh_dynbufmap_t_s* %5, %struct.dynbuf* %7, i32* %8), !dbg !245
  ret i32 %9, !dbg !246
}

; Function Attrs: nounwind uwtable
define internal void @cachessess_free_key_cb(i8*) #0 !dbg !247 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !248, metadata !152), !dbg !249
  %3 = load i8*, i8** %2, align 8, !dbg !250
  %4 = bitcast i8* %3 to %struct.dynbuf*, !dbg !250
  call void @dynbuf_free(%struct.dynbuf* %4), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: nounwind uwtable
define internal void @cachessess_free_val_cb(i8*) #0 !dbg !253 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !254, metadata !152), !dbg !255
  %3 = load i8*, i8** %2, align 8, !dbg !256
  %4 = bitcast i8* %3 to %struct.dynbuf*, !dbg !256
  call void @dynbuf_free(%struct.dynbuf* %4), !dbg !257
  ret void, !dbg !258
}

; Function Attrs: nounwind uwtable
define internal i8* @cachessess_get_key_cb(i32) #0 !dbg !259 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !260, metadata !152), !dbg !261
  %3 = load i32, i32* %2, align 4, !dbg !262
  %4 = zext i32 %3 to i64, !dbg !263
  %5 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !264
  %6 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %5, i32 0, i32 5, !dbg !265
  %7 = load %struct.dynbuf**, %struct.dynbuf*** %6, align 8, !dbg !265
  %8 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %7, i64 %4, !dbg !263
  %9 = load %struct.dynbuf*, %struct.dynbuf** %8, align 8, !dbg !263
  %10 = bitcast %struct.dynbuf* %9 to i8*, !dbg !266
  ret i8* %10, !dbg !267
}

; Function Attrs: nounwind uwtable
define internal i8* @cachessess_get_val_cb(i32) #0 !dbg !268 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !269, metadata !152), !dbg !270
  %3 = load i32, i32* %2, align 4, !dbg !271
  %4 = zext i32 %3 to i64, !dbg !272
  %5 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !273
  %6 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %5, i32 0, i32 6, !dbg !274
  %7 = load %struct.dynbuf**, %struct.dynbuf*** %6, align 8, !dbg !274
  %8 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %7, i64 %4, !dbg !272
  %9 = load %struct.dynbuf*, %struct.dynbuf** %8, align 8, !dbg !272
  %10 = bitcast %struct.dynbuf* %9 to i8*, !dbg !275
  ret i8* %10, !dbg !276
}

; Function Attrs: nounwind uwtable
define internal void @cachessess_set_val_cb(i32, i8*) #0 !dbg !277 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !278, metadata !152), !dbg !279
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !280, metadata !152), !dbg !281
  %5 = load i8*, i8** %4, align 8, !dbg !282
  %6 = bitcast i8* %5 to %struct.dynbuf*, !dbg !282
  %7 = load i32, i32* %3, align 4, !dbg !283
  %8 = zext i32 %7 to i64, !dbg !284
  %9 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !285
  %10 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %9, i32 0, i32 6, !dbg !286
  %11 = load %struct.dynbuf**, %struct.dynbuf*** %10, align 8, !dbg !286
  %12 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %11, i64 %8, !dbg !284
  store %struct.dynbuf* %6, %struct.dynbuf** %12, align 8, !dbg !287
  ret void, !dbg !288
}

; Function Attrs: nounwind uwtable
define internal i8* @cachessess_unpackverify_val_cb(i8*, i32) #0 !dbg !289 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dynbuf*, align 8
  %7 = alloca %struct.ssl_session_st*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !290, metadata !152), !dbg !291
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !292, metadata !152), !dbg !293
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %6, metadata !294, metadata !152), !dbg !295
  %9 = load i8*, i8** %4, align 8, !dbg !296
  %10 = bitcast i8* %9 to %struct.dynbuf*, !dbg !296
  store %struct.dynbuf* %10, %struct.dynbuf** %6, align 8, !dbg !295
  call void @llvm.dbg.declare(metadata %struct.ssl_session_st** %7, metadata !297, metadata !152), !dbg !894
  call void @llvm.dbg.declare(metadata i8** %8, metadata !895, metadata !152), !dbg !896
  %11 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !897
  %12 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %11, i32 0, i32 0, !dbg !898
  %13 = load i8*, i8** %12, align 8, !dbg !898
  store i8* %13, i8** %8, align 8, !dbg !899
  %14 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !900
  %15 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %14, i32 0, i32 1, !dbg !901
  %16 = load i64, i64* %15, align 8, !dbg !901
  %17 = call %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** null, i8** %8, i64 %16), !dbg !902
  store %struct.ssl_session_st* %17, %struct.ssl_session_st** %7, align 8, !dbg !903
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !904
  %19 = icmp ne %struct.ssl_session_st* %18, null, !dbg !904
  br i1 %19, label %21, label %20, !dbg !906

; <label>:20:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !907
  br label %35, !dbg !907

; <label>:21:                                     ; preds = %2
  %22 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !908
  %23 = call i32 @ssl_session_is_valid(%struct.ssl_session_st* %22), !dbg !910
  %24 = icmp ne i32 %23, 0, !dbg !910
  br i1 %24, label %27, label %25, !dbg !911

; <label>:25:                                     ; preds = %21
  %26 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !912
  call void @SSL_SESSION_free(%struct.ssl_session_st* %26), !dbg !914
  store i8* null, i8** %3, align 8, !dbg !915
  br label %35, !dbg !915

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %5, align 4, !dbg !916
  %29 = icmp ne i32 %28, 0, !dbg !916
  br i1 %29, label %30, label %33, !dbg !918

; <label>:30:                                     ; preds = %27
  %31 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !919
  %32 = bitcast %struct.ssl_session_st* %31 to i8*, !dbg !919
  store i8* %32, i8** %3, align 8, !dbg !920
  br label %35, !dbg !920

; <label>:33:                                     ; preds = %27
  %34 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !921
  call void @SSL_SESSION_free(%struct.ssl_session_st* %34), !dbg !922
  store i8* inttoptr (i64 -1 to i8*), i8** %3, align 8, !dbg !923
  br label %35, !dbg !923

; <label>:35:                                     ; preds = %33, %30, %25, %20
  %36 = load i8*, i8** %3, align 8, !dbg !924
  ret i8* %36, !dbg !924
}

; Function Attrs: nounwind uwtable
define internal void @cachessess_fini_cb() #0 !dbg !925 {
  %1 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @srcsessmap, align 8, !dbg !926
  call void @kh_destroy_dynbufmap_t(%struct.kh_dynbufmap_t_s* %1), !dbg !927
  ret void, !dbg !928
}

; Function Attrs: nounwind uwtable
define i8* @cachessess_mkkey(i8* nonnull, i64) #0 !dbg !929 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !933, metadata !152), !dbg !934
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !935, metadata !152), !dbg !936
  %5 = load i8*, i8** %3, align 8, !dbg !937
  %6 = load i64, i64* %4, align 8, !dbg !938
  %7 = call noalias %struct.dynbuf* @dynbuf_new_copy(i8* %5, i64 %6), !dbg !939
  %8 = bitcast %struct.dynbuf* %7 to i8*, !dbg !939
  ret i8* %8, !dbg !940
}

declare noalias %struct.dynbuf* @dynbuf_new_copy(i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @cachessess_mkval(%struct.ssl_session_st* nonnull) #0 !dbg !941 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ssl_session_st*, align 8
  %4 = alloca %struct.dynbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ssl_session_st* %0, %struct.ssl_session_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_session_st** %3, metadata !944, metadata !152), !dbg !945
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %4, metadata !946, metadata !152), !dbg !947
  call void @llvm.dbg.declare(metadata i8** %5, metadata !948, metadata !152), !dbg !949
  call void @llvm.dbg.declare(metadata i64* %6, metadata !950, metadata !152), !dbg !951
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %3, align 8, !dbg !952
  %8 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* %7, i8** null), !dbg !953
  %9 = sext i32 %8 to i64, !dbg !953
  store i64 %9, i64* %6, align 8, !dbg !954
  %10 = load i64, i64* %6, align 8, !dbg !955
  %11 = icmp ne i64 %10, 0, !dbg !955
  br i1 %11, label %12, label %16, !dbg !957

; <label>:12:                                     ; preds = %1
  %13 = load i64, i64* %6, align 8, !dbg !958
  %14 = call noalias %struct.dynbuf* @dynbuf_new_alloc(i64 %13), !dbg !960
  store %struct.dynbuf* %14, %struct.dynbuf** %4, align 8, !dbg !961
  %15 = icmp ne %struct.dynbuf* %14, null, !dbg !961
  br i1 %15, label %17, label %16, !dbg !962

; <label>:16:                                     ; preds = %12, %1
  store i8* null, i8** %2, align 8, !dbg !963
  br label %25, !dbg !963

; <label>:17:                                     ; preds = %12
  %18 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !965
  %19 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %18, i32 0, i32 0, !dbg !966
  %20 = load i8*, i8** %19, align 8, !dbg !966
  store i8* %20, i8** %5, align 8, !dbg !967
  %21 = load %struct.ssl_session_st*, %struct.ssl_session_st** %3, align 8, !dbg !968
  %22 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* %21, i8** %5), !dbg !969
  %23 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !970
  %24 = bitcast %struct.dynbuf* %23 to i8*, !dbg !970
  store i8* %24, i8** %2, align 8, !dbg !971
  br label %25, !dbg !971

; <label>:25:                                     ; preds = %17, %16
  %26 = load i8*, i8** %2, align 8, !dbg !972
  ret i8* %26, !dbg !972
}

declare i32 @i2d_SSL_SESSION(%struct.ssl_session_st*, i8**) #3

declare noalias %struct.dynbuf* @dynbuf_new_alloc(i64) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_del_dynbufmap_t(%struct.kh_dynbufmap_t_s*, i32) #2 !dbg !973 {
  %3 = alloca %struct.kh_dynbufmap_t_s*, align 8
  %4 = alloca i32, align 4
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %3, metadata !976, metadata !152), !dbg !977
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !978, metadata !152), !dbg !979
  %5 = load i32, i32* %4, align 4, !dbg !980
  %6 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !982
  %7 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %6, i32 0, i32 0, !dbg !983
  %8 = load i32, i32* %7, align 8, !dbg !983
  %9 = icmp ne i32 %5, %8, !dbg !984
  br i1 %9, label %10, label %46, !dbg !985

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !986
  %12 = lshr i32 %11, 4, !dbg !988
  %13 = zext i32 %12 to i64, !dbg !989
  %14 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !989
  %15 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %14, i32 0, i32 4, !dbg !990
  %16 = load i32*, i32** %15, align 8, !dbg !990
  %17 = getelementptr inbounds i32, i32* %16, i64 %13, !dbg !989
  %18 = load i32, i32* %17, align 4, !dbg !989
  %19 = load i32, i32* %4, align 4, !dbg !991
  %20 = and i32 %19, 15, !dbg !992
  %21 = shl i32 %20, 1, !dbg !993
  %22 = lshr i32 %18, %21, !dbg !994
  %23 = and i32 %22, 3, !dbg !995
  %24 = icmp ne i32 %23, 0, !dbg !995
  br i1 %24, label %46, label %25, !dbg !996

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* %4, align 4, !dbg !997
  %27 = and i32 %26, 15, !dbg !1000
  %28 = shl i32 %27, 1, !dbg !1001
  %29 = zext i32 %28 to i64, !dbg !1002
  %30 = shl i64 1, %29, !dbg !1002
  %31 = load i32, i32* %4, align 4, !dbg !1003
  %32 = lshr i32 %31, 4, !dbg !1004
  %33 = zext i32 %32 to i64, !dbg !1005
  %34 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !1005
  %35 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %34, i32 0, i32 4, !dbg !1006
  %36 = load i32*, i32** %35, align 8, !dbg !1006
  %37 = getelementptr inbounds i32, i32* %36, i64 %33, !dbg !1005
  %38 = load i32, i32* %37, align 4, !dbg !1007
  %39 = zext i32 %38 to i64, !dbg !1007
  %40 = or i64 %39, %30, !dbg !1007
  %41 = trunc i64 %40 to i32, !dbg !1007
  store i32 %41, i32* %37, align 4, !dbg !1007
  %42 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !1008
  %43 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %42, i32 0, i32 1, !dbg !1009
  %44 = load i32, i32* %43, align 4, !dbg !1010
  %45 = add i32 %44, -1, !dbg !1010
  store i32 %45, i32* %43, align 4, !dbg !1010
  br label %46, !dbg !1011

; <label>:46:                                     ; preds = %25, %10, %2
  ret void, !dbg !1012
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_dynbufmap_t(%struct.kh_dynbufmap_t_s*, %struct.dynbuf*) #2 !dbg !1014 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kh_dynbufmap_t_s*, align 8
  %5 = alloca %struct.dynbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %4, metadata !1019, metadata !152), !dbg !1020
  store %struct.dynbuf* %1, %struct.dynbuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %5, metadata !1021, metadata !152), !dbg !1022
  %11 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1023
  %12 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %11, i32 0, i32 0, !dbg !1025
  %13 = load i32, i32* %12, align 8, !dbg !1025
  %14 = icmp ne i32 %13, 0, !dbg !1023
  br i1 %14, label %15, label %139, !dbg !1026

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1027, metadata !152), !dbg !1029
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1030, metadata !152), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1032, metadata !152), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1034, metadata !152), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1036, metadata !152), !dbg !1037
  store i32 0, i32* %10, align 4, !dbg !1038
  %16 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1040
  %17 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %16, i32 0, i32 0, !dbg !1041
  %18 = load i32, i32* %17, align 8, !dbg !1041
  %19 = sub i32 %18, 1, !dbg !1042
  store i32 %19, i32* %9, align 4, !dbg !1043
  %20 = load %struct.dynbuf*, %struct.dynbuf** %5, align 8, !dbg !1044
  %21 = call i32 @kh_dynbuf_hash_func(%struct.dynbuf* %20), !dbg !1045
  store i32 %21, i32* %6, align 4, !dbg !1046
  %22 = load i32, i32* %6, align 4, !dbg !1047
  %23 = load i32, i32* %9, align 4, !dbg !1048
  %24 = and i32 %22, %23, !dbg !1049
  store i32 %24, i32* %7, align 4, !dbg !1050
  %25 = load i32, i32* %7, align 4, !dbg !1051
  store i32 %25, i32* %8, align 4, !dbg !1052
  br label %26, !dbg !1053

; <label>:26:                                     ; preds = %115, %15
  %27 = load i32, i32* %7, align 4, !dbg !1054
  %28 = lshr i32 %27, 4, !dbg !1056
  %29 = zext i32 %28 to i64, !dbg !1057
  %30 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1057
  %31 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %30, i32 0, i32 4, !dbg !1058
  %32 = load i32*, i32** %31, align 8, !dbg !1058
  %33 = getelementptr inbounds i32, i32* %32, i64 %29, !dbg !1057
  %34 = load i32, i32* %33, align 4, !dbg !1057
  %35 = load i32, i32* %7, align 4, !dbg !1059
  %36 = and i32 %35, 15, !dbg !1060
  %37 = shl i32 %36, 1, !dbg !1061
  %38 = lshr i32 %34, %37, !dbg !1062
  %39 = and i32 %38, 2, !dbg !1063
  %40 = icmp ne i32 %39, 0, !dbg !1063
  br i1 %40, label %99, label %41, !dbg !1064

; <label>:41:                                     ; preds = %26
  %42 = load i32, i32* %7, align 4, !dbg !1065
  %43 = lshr i32 %42, 4, !dbg !1067
  %44 = zext i32 %43 to i64, !dbg !1068
  %45 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1068
  %46 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %45, i32 0, i32 4, !dbg !1069
  %47 = load i32*, i32** %46, align 8, !dbg !1069
  %48 = getelementptr inbounds i32, i32* %47, i64 %44, !dbg !1068
  %49 = load i32, i32* %48, align 4, !dbg !1068
  %50 = load i32, i32* %7, align 4, !dbg !1070
  %51 = and i32 %50, 15, !dbg !1071
  %52 = shl i32 %51, 1, !dbg !1072
  %53 = lshr i32 %49, %52, !dbg !1073
  %54 = and i32 %53, 1, !dbg !1074
  %55 = icmp ne i32 %54, 0, !dbg !1074
  br i1 %55, label %97, label %56, !dbg !1075

; <label>:56:                                     ; preds = %41
  %57 = load i32, i32* %7, align 4, !dbg !1076
  %58 = zext i32 %57 to i64, !dbg !1078
  %59 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1078
  %60 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %59, i32 0, i32 5, !dbg !1079
  %61 = load %struct.dynbuf**, %struct.dynbuf*** %60, align 8, !dbg !1079
  %62 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %61, i64 %58, !dbg !1078
  %63 = load %struct.dynbuf*, %struct.dynbuf** %62, align 8, !dbg !1078
  %64 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %63, i32 0, i32 1, !dbg !1080
  %65 = load i64, i64* %64, align 8, !dbg !1080
  %66 = load %struct.dynbuf*, %struct.dynbuf** %5, align 8, !dbg !1081
  %67 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %66, i32 0, i32 1, !dbg !1082
  %68 = load i64, i64* %67, align 8, !dbg !1082
  %69 = icmp eq i64 %65, %68, !dbg !1083
  br i1 %69, label %70, label %94, !dbg !1084

; <label>:70:                                     ; preds = %56
  %71 = load i32, i32* %7, align 4, !dbg !1085
  %72 = zext i32 %71 to i64, !dbg !1087
  %73 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1087
  %74 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %73, i32 0, i32 5, !dbg !1088
  %75 = load %struct.dynbuf**, %struct.dynbuf*** %74, align 8, !dbg !1088
  %76 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %75, i64 %72, !dbg !1087
  %77 = load %struct.dynbuf*, %struct.dynbuf** %76, align 8, !dbg !1087
  %78 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %77, i32 0, i32 0, !dbg !1089
  %79 = load i8*, i8** %78, align 8, !dbg !1089
  %80 = load %struct.dynbuf*, %struct.dynbuf** %5, align 8, !dbg !1090
  %81 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %80, i32 0, i32 0, !dbg !1091
  %82 = load i8*, i8** %81, align 8, !dbg !1091
  %83 = load i32, i32* %7, align 4, !dbg !1092
  %84 = zext i32 %83 to i64, !dbg !1093
  %85 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1093
  %86 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %85, i32 0, i32 5, !dbg !1094
  %87 = load %struct.dynbuf**, %struct.dynbuf*** %86, align 8, !dbg !1094
  %88 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %87, i64 %84, !dbg !1093
  %89 = load %struct.dynbuf*, %struct.dynbuf** %88, align 8, !dbg !1093
  %90 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %89, i32 0, i32 1, !dbg !1095
  %91 = load i64, i64* %90, align 8, !dbg !1095
  %92 = call i32 @memcmp(i8* %79, i8* %82, i64 %91) #8, !dbg !1096
  %93 = icmp eq i32 %92, 0, !dbg !1097
  br label %94

; <label>:94:                                     ; preds = %70, %56
  %95 = phi i1 [ false, %56 ], [ %93, %70 ]
  %96 = xor i1 %95, true, !dbg !1098
  br label %97, !dbg !1100

; <label>:97:                                     ; preds = %94, %41
  %98 = phi i1 [ true, %41 ], [ %96, %94 ]
  br label %99

; <label>:99:                                     ; preds = %97, %26
  %100 = phi i1 [ false, %26 ], [ %98, %97 ]
  br i1 %100, label %101, label %116, !dbg !1101

; <label>:101:                                    ; preds = %99
  %102 = load i32, i32* %7, align 4, !dbg !1103
  %103 = load i32, i32* %10, align 4, !dbg !1106
  %104 = add i32 %103, 1, !dbg !1106
  store i32 %104, i32* %10, align 4, !dbg !1106
  %105 = add i32 %102, %104, !dbg !1107
  %106 = load i32, i32* %9, align 4, !dbg !1108
  %107 = and i32 %105, %106, !dbg !1109
  store i32 %107, i32* %7, align 4, !dbg !1110
  %108 = load i32, i32* %7, align 4, !dbg !1111
  %109 = load i32, i32* %8, align 4, !dbg !1112
  %110 = icmp eq i32 %108, %109, !dbg !1113
  br i1 %110, label %111, label %115, !dbg !1111

; <label>:111:                                    ; preds = %101
  %112 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1114
  %113 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %112, i32 0, i32 0, !dbg !1117
  %114 = load i32, i32* %113, align 8, !dbg !1117
  store i32 %114, i32* %3, align 4, !dbg !1118
  br label %140, !dbg !1118

; <label>:115:                                    ; preds = %101
  br label %26, !dbg !1119, !llvm.loop !1121

; <label>:116:                                    ; preds = %99
  %117 = load i32, i32* %7, align 4, !dbg !1123
  %118 = lshr i32 %117, 4, !dbg !1125
  %119 = zext i32 %118 to i64, !dbg !1126
  %120 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1126
  %121 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %120, i32 0, i32 4, !dbg !1127
  %122 = load i32*, i32** %121, align 8, !dbg !1127
  %123 = getelementptr inbounds i32, i32* %122, i64 %119, !dbg !1126
  %124 = load i32, i32* %123, align 4, !dbg !1126
  %125 = load i32, i32* %7, align 4, !dbg !1128
  %126 = and i32 %125, 15, !dbg !1129
  %127 = shl i32 %126, 1, !dbg !1130
  %128 = lshr i32 %124, %127, !dbg !1131
  %129 = and i32 %128, 3, !dbg !1132
  %130 = icmp ne i32 %129, 0, !dbg !1132
  br i1 %130, label %131, label %135, !dbg !1133

; <label>:131:                                    ; preds = %116
  %132 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1134
  %133 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %132, i32 0, i32 0, !dbg !1136
  %134 = load i32, i32* %133, align 8, !dbg !1136
  br label %137, !dbg !1137

; <label>:135:                                    ; preds = %116
  %136 = load i32, i32* %7, align 4, !dbg !1138
  br label %137, !dbg !1140

; <label>:137:                                    ; preds = %135, %131
  %138 = phi i32 [ %134, %131 ], [ %136, %135 ], !dbg !1141
  store i32 %138, i32* %3, align 4, !dbg !1143
  br label %140, !dbg !1143

; <label>:139:                                    ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1144
  br label %140, !dbg !1144

; <label>:140:                                    ; preds = %139, %137, %111
  %141 = load i32, i32* %3, align 4, !dbg !1146
  ret i32 %141, !dbg !1146
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_dynbuf_hash_func(%struct.dynbuf*) #2 !dbg !1148 {
  %2 = alloca %struct.dynbuf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dynbuf* %0, %struct.dynbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %2, metadata !1151, metadata !152), !dbg !1152
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1153, metadata !152), !dbg !1154
  %6 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1155
  %7 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %6, i32 0, i32 0, !dbg !1156
  %8 = load i8*, i8** %7, align 8, !dbg !1156
  %9 = bitcast i8* %8 to i32*, !dbg !1157
  store i32* %9, i32** %3, align 8, !dbg !1154
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1158, metadata !152), !dbg !1159
  store i32 0, i32* %4, align 4, !dbg !1159
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1160, metadata !152), !dbg !1161
  %10 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1162
  %11 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %10, i32 0, i32 1, !dbg !1164
  %12 = load i64, i64* %11, align 8, !dbg !1164
  %13 = urem i64 %12, 4, !dbg !1165
  %14 = trunc i64 %13 to i32, !dbg !1162
  store i32 %14, i32* %5, align 4, !dbg !1166
  %15 = icmp ne i32 %14, 0, !dbg !1166
  br i1 %15, label %16, label %31, !dbg !1167

; <label>:16:                                     ; preds = %1
  %17 = bitcast i32* %4 to i8*, !dbg !1168
  %18 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1170
  %19 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %18, i32 0, i32 0, !dbg !1171
  %20 = load i8*, i8** %19, align 8, !dbg !1171
  %21 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1172
  %22 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %21, i32 0, i32 1, !dbg !1173
  %23 = load i64, i64* %22, align 8, !dbg !1173
  %24 = getelementptr inbounds i8, i8* %20, i64 %23, !dbg !1174
  %25 = load i32, i32* %5, align 4, !dbg !1175
  %26 = sext i32 %25 to i64, !dbg !1176
  %27 = sub i64 0, %26, !dbg !1176
  %28 = getelementptr inbounds i8, i8* %24, i64 %27, !dbg !1176
  %29 = load i32, i32* %5, align 4, !dbg !1177
  %30 = sext i32 %29 to i64, !dbg !1177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %28, i64 %30, i32 1, i1 false), !dbg !1168
  br label %31, !dbg !1178

; <label>:31:                                     ; preds = %16, %1
  br label %32, !dbg !1179

; <label>:32:                                     ; preds = %47, %31
  %33 = load i32*, i32** %3, align 8, !dbg !1180
  %34 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1182
  %35 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %34, i32 0, i32 0, !dbg !1183
  %36 = load i8*, i8** %35, align 8, !dbg !1183
  %37 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1184
  %38 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %37, i32 0, i32 1, !dbg !1185
  %39 = load i64, i64* %38, align 8, !dbg !1185
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !1186
  %41 = load i32, i32* %5, align 4, !dbg !1187
  %42 = sext i32 %41 to i64, !dbg !1188
  %43 = sub i64 0, %42, !dbg !1188
  %44 = getelementptr inbounds i8, i8* %40, i64 %43, !dbg !1188
  %45 = bitcast i8* %44 to i32*, !dbg !1189
  %46 = icmp ult i32* %33, %45, !dbg !1190
  br i1 %46, label %47, label %53, !dbg !1191

; <label>:47:                                     ; preds = %32
  %48 = load i32*, i32** %3, align 8, !dbg !1192
  %49 = getelementptr inbounds i32, i32* %48, i32 1, !dbg !1192
  store i32* %49, i32** %3, align 8, !dbg !1192
  %50 = load i32, i32* %48, align 4, !dbg !1194
  %51 = load i32, i32* %4, align 4, !dbg !1195
  %52 = xor i32 %51, %50, !dbg !1195
  store i32 %52, i32* %4, align 4, !dbg !1195
  br label %32, !dbg !1196, !llvm.loop !1198

; <label>:53:                                     ; preds = %32
  %54 = load i32, i32* %4, align 4, !dbg !1199
  ret i32 %54, !dbg !1200
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_put_dynbufmap_t(%struct.kh_dynbufmap_t_s*, %struct.dynbuf*, i32*) #2 !dbg !1201 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kh_dynbufmap_t_s*, align 8
  %6 = alloca %struct.dynbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %5, metadata !1204, metadata !152), !dbg !1205
  store %struct.dynbuf* %1, %struct.dynbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %6, metadata !1206, metadata !152), !dbg !1207
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1208, metadata !152), !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1210, metadata !152), !dbg !1211
  %15 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1212
  %16 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %15, i32 0, i32 2, !dbg !1214
  %17 = load i32, i32* %16, align 8, !dbg !1214
  %18 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1215
  %19 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %18, i32 0, i32 3, !dbg !1216
  %20 = load i32, i32* %19, align 4, !dbg !1216
  %21 = icmp uge i32 %17, %20, !dbg !1217
  br i1 %21, label %22, label %60, !dbg !1218

; <label>:22:                                     ; preds = %3
  %23 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1219
  %24 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %23, i32 0, i32 0, !dbg !1223
  %25 = load i32, i32* %24, align 8, !dbg !1223
  %26 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1224
  %27 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %26, i32 0, i32 1, !dbg !1225
  %28 = load i32, i32* %27, align 4, !dbg !1225
  %29 = shl i32 %28, 1, !dbg !1226
  %30 = icmp ugt i32 %25, %29, !dbg !1227
  br i1 %30, label %31, label %45, !dbg !1219

; <label>:31:                                     ; preds = %22
  %32 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1228
  %33 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1232
  %34 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %33, i32 0, i32 0, !dbg !1233
  %35 = load i32, i32* %34, align 8, !dbg !1233
  %36 = sub i32 %35, 1, !dbg !1234
  %37 = call i32 @kh_resize_dynbufmap_t(%struct.kh_dynbufmap_t_s* %32, i32 %36), !dbg !1235
  %38 = icmp slt i32 %37, 0, !dbg !1236
  br i1 %38, label %39, label %44, !dbg !1235

; <label>:39:                                     ; preds = %31
  %40 = load i32*, i32** %7, align 8, !dbg !1237
  store i32 -1, i32* %40, align 4, !dbg !1240
  %41 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1241
  %42 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %41, i32 0, i32 0, !dbg !1242
  %43 = load i32, i32* %42, align 8, !dbg !1242
  store i32 %43, i32* %4, align 4, !dbg !1243
  br label %328, !dbg !1243

; <label>:44:                                     ; preds = %31
  br label %59, !dbg !1244

; <label>:45:                                     ; preds = %22
  %46 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1246
  %47 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1249
  %48 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %47, i32 0, i32 0, !dbg !1250
  %49 = load i32, i32* %48, align 8, !dbg !1250
  %50 = add i32 %49, 1, !dbg !1251
  %51 = call i32 @kh_resize_dynbufmap_t(%struct.kh_dynbufmap_t_s* %46, i32 %50), !dbg !1252
  %52 = icmp slt i32 %51, 0, !dbg !1253
  br i1 %52, label %53, label %58, !dbg !1252

; <label>:53:                                     ; preds = %45
  %54 = load i32*, i32** %7, align 8, !dbg !1254
  store i32 -1, i32* %54, align 4, !dbg !1257
  %55 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1258
  %56 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %55, i32 0, i32 0, !dbg !1259
  %57 = load i32, i32* %56, align 8, !dbg !1259
  store i32 %57, i32* %4, align 4, !dbg !1260
  br label %328, !dbg !1260

; <label>:58:                                     ; preds = %45
  br label %59

; <label>:59:                                     ; preds = %58, %44
  br label %60, !dbg !1261

; <label>:60:                                     ; preds = %59, %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1263, metadata !152), !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1266, metadata !152), !dbg !1267
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1268, metadata !152), !dbg !1269
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1270, metadata !152), !dbg !1271
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1272, metadata !152), !dbg !1273
  %61 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1274
  %62 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %61, i32 0, i32 0, !dbg !1276
  %63 = load i32, i32* %62, align 8, !dbg !1276
  %64 = sub i32 %63, 1, !dbg !1277
  store i32 %64, i32* %13, align 4, !dbg !1278
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1279, metadata !152), !dbg !1280
  store i32 0, i32* %14, align 4, !dbg !1281
  %65 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1282
  %66 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %65, i32 0, i32 0, !dbg !1283
  %67 = load i32, i32* %66, align 8, !dbg !1283
  store i32 %67, i32* %11, align 4, !dbg !1284
  store i32 %67, i32* %8, align 4, !dbg !1285
  %68 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1286
  %69 = call i32 @kh_dynbuf_hash_func(%struct.dynbuf* %68), !dbg !1287
  store i32 %69, i32* %9, align 4, !dbg !1288
  %70 = load i32, i32* %9, align 4, !dbg !1289
  %71 = load i32, i32* %13, align 4, !dbg !1290
  %72 = and i32 %70, %71, !dbg !1291
  store i32 %72, i32* %10, align 4, !dbg !1292
  %73 = load i32, i32* %10, align 4, !dbg !1293
  %74 = lshr i32 %73, 4, !dbg !1294
  %75 = zext i32 %74 to i64, !dbg !1295
  %76 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1295
  %77 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %76, i32 0, i32 4, !dbg !1296
  %78 = load i32*, i32** %77, align 8, !dbg !1296
  %79 = getelementptr inbounds i32, i32* %78, i64 %75, !dbg !1295
  %80 = load i32, i32* %79, align 4, !dbg !1295
  %81 = load i32, i32* %10, align 4, !dbg !1297
  %82 = and i32 %81, 15, !dbg !1298
  %83 = shl i32 %82, 1, !dbg !1299
  %84 = lshr i32 %80, %83, !dbg !1300
  %85 = and i32 %84, 2, !dbg !1301
  %86 = icmp ne i32 %85, 0, !dbg !1301
  br i1 %86, label %87, label %89, !dbg !1302

; <label>:87:                                     ; preds = %60
  %88 = load i32, i32* %10, align 4, !dbg !1303
  store i32 %88, i32* %8, align 4, !dbg !1306
  br label %229, !dbg !1307

; <label>:89:                                     ; preds = %60
  %90 = load i32, i32* %10, align 4, !dbg !1308
  store i32 %90, i32* %12, align 4, !dbg !1311
  br label %91, !dbg !1312

; <label>:91:                                     ; preds = %195, %89
  %92 = load i32, i32* %10, align 4, !dbg !1313
  %93 = lshr i32 %92, 4, !dbg !1315
  %94 = zext i32 %93 to i64, !dbg !1316
  %95 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1316
  %96 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %95, i32 0, i32 4, !dbg !1317
  %97 = load i32*, i32** %96, align 8, !dbg !1317
  %98 = getelementptr inbounds i32, i32* %97, i64 %94, !dbg !1316
  %99 = load i32, i32* %98, align 4, !dbg !1316
  %100 = load i32, i32* %10, align 4, !dbg !1318
  %101 = and i32 %100, 15, !dbg !1319
  %102 = shl i32 %101, 1, !dbg !1320
  %103 = lshr i32 %99, %102, !dbg !1321
  %104 = and i32 %103, 2, !dbg !1322
  %105 = icmp ne i32 %104, 0, !dbg !1322
  br i1 %105, label %164, label %106, !dbg !1323

; <label>:106:                                    ; preds = %91
  %107 = load i32, i32* %10, align 4, !dbg !1324
  %108 = lshr i32 %107, 4, !dbg !1326
  %109 = zext i32 %108 to i64, !dbg !1327
  %110 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1327
  %111 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %110, i32 0, i32 4, !dbg !1328
  %112 = load i32*, i32** %111, align 8, !dbg !1328
  %113 = getelementptr inbounds i32, i32* %112, i64 %109, !dbg !1327
  %114 = load i32, i32* %113, align 4, !dbg !1327
  %115 = load i32, i32* %10, align 4, !dbg !1329
  %116 = and i32 %115, 15, !dbg !1330
  %117 = shl i32 %116, 1, !dbg !1331
  %118 = lshr i32 %114, %117, !dbg !1332
  %119 = and i32 %118, 1, !dbg !1333
  %120 = icmp ne i32 %119, 0, !dbg !1333
  br i1 %120, label %162, label %121, !dbg !1334

; <label>:121:                                    ; preds = %106
  %122 = load i32, i32* %10, align 4, !dbg !1335
  %123 = zext i32 %122 to i64, !dbg !1337
  %124 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1337
  %125 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %124, i32 0, i32 5, !dbg !1338
  %126 = load %struct.dynbuf**, %struct.dynbuf*** %125, align 8, !dbg !1338
  %127 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %126, i64 %123, !dbg !1337
  %128 = load %struct.dynbuf*, %struct.dynbuf** %127, align 8, !dbg !1337
  %129 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %128, i32 0, i32 1, !dbg !1339
  %130 = load i64, i64* %129, align 8, !dbg !1339
  %131 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1340
  %132 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %131, i32 0, i32 1, !dbg !1341
  %133 = load i64, i64* %132, align 8, !dbg !1341
  %134 = icmp eq i64 %130, %133, !dbg !1342
  br i1 %134, label %135, label %159, !dbg !1343

; <label>:135:                                    ; preds = %121
  %136 = load i32, i32* %10, align 4, !dbg !1344
  %137 = zext i32 %136 to i64, !dbg !1346
  %138 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1346
  %139 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %138, i32 0, i32 5, !dbg !1347
  %140 = load %struct.dynbuf**, %struct.dynbuf*** %139, align 8, !dbg !1347
  %141 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %140, i64 %137, !dbg !1346
  %142 = load %struct.dynbuf*, %struct.dynbuf** %141, align 8, !dbg !1346
  %143 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %142, i32 0, i32 0, !dbg !1348
  %144 = load i8*, i8** %143, align 8, !dbg !1348
  %145 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1349
  %146 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %145, i32 0, i32 0, !dbg !1350
  %147 = load i8*, i8** %146, align 8, !dbg !1350
  %148 = load i32, i32* %10, align 4, !dbg !1351
  %149 = zext i32 %148 to i64, !dbg !1352
  %150 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1352
  %151 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %150, i32 0, i32 5, !dbg !1353
  %152 = load %struct.dynbuf**, %struct.dynbuf*** %151, align 8, !dbg !1353
  %153 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %152, i64 %149, !dbg !1352
  %154 = load %struct.dynbuf*, %struct.dynbuf** %153, align 8, !dbg !1352
  %155 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %154, i32 0, i32 1, !dbg !1354
  %156 = load i64, i64* %155, align 8, !dbg !1354
  %157 = call i32 @memcmp(i8* %144, i8* %147, i64 %156) #8, !dbg !1355
  %158 = icmp eq i32 %157, 0, !dbg !1356
  br label %159

; <label>:159:                                    ; preds = %135, %121
  %160 = phi i1 [ false, %121 ], [ %158, %135 ]
  %161 = xor i1 %160, true, !dbg !1357
  br label %162, !dbg !1359

; <label>:162:                                    ; preds = %159, %106
  %163 = phi i1 [ true, %106 ], [ %161, %159 ]
  br label %164

; <label>:164:                                    ; preds = %162, %91
  %165 = phi i1 [ false, %91 ], [ %163, %162 ]
  br i1 %165, label %166, label %196, !dbg !1360

; <label>:166:                                    ; preds = %164
  %167 = load i32, i32* %10, align 4, !dbg !1362
  %168 = lshr i32 %167, 4, !dbg !1366
  %169 = zext i32 %168 to i64, !dbg !1367
  %170 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1367
  %171 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %170, i32 0, i32 4, !dbg !1368
  %172 = load i32*, i32** %171, align 8, !dbg !1368
  %173 = getelementptr inbounds i32, i32* %172, i64 %169, !dbg !1367
  %174 = load i32, i32* %173, align 4, !dbg !1367
  %175 = load i32, i32* %10, align 4, !dbg !1369
  %176 = and i32 %175, 15, !dbg !1370
  %177 = shl i32 %176, 1, !dbg !1371
  %178 = lshr i32 %174, %177, !dbg !1372
  %179 = and i32 %178, 1, !dbg !1373
  %180 = icmp ne i32 %179, 0, !dbg !1373
  br i1 %180, label %181, label %183, !dbg !1374

; <label>:181:                                    ; preds = %166
  %182 = load i32, i32* %10, align 4, !dbg !1375
  store i32 %182, i32* %11, align 4, !dbg !1377
  br label %183, !dbg !1378

; <label>:183:                                    ; preds = %181, %166
  %184 = load i32, i32* %10, align 4, !dbg !1379
  %185 = load i32, i32* %14, align 4, !dbg !1381
  %186 = add i32 %185, 1, !dbg !1381
  store i32 %186, i32* %14, align 4, !dbg !1381
  %187 = add i32 %184, %186, !dbg !1382
  %188 = load i32, i32* %13, align 4, !dbg !1383
  %189 = and i32 %187, %188, !dbg !1384
  store i32 %189, i32* %10, align 4, !dbg !1385
  %190 = load i32, i32* %10, align 4, !dbg !1386
  %191 = load i32, i32* %12, align 4, !dbg !1387
  %192 = icmp eq i32 %190, %191, !dbg !1388
  br i1 %192, label %193, label %195, !dbg !1386

; <label>:193:                                    ; preds = %183
  %194 = load i32, i32* %11, align 4, !dbg !1389
  store i32 %194, i32* %8, align 4, !dbg !1393
  br label %196, !dbg !1394

; <label>:195:                                    ; preds = %183
  br label %91, !dbg !1395, !llvm.loop !1397

; <label>:196:                                    ; preds = %193, %164
  %197 = load i32, i32* %8, align 4, !dbg !1399
  %198 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1402
  %199 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %198, i32 0, i32 0, !dbg !1403
  %200 = load i32, i32* %199, align 8, !dbg !1403
  %201 = icmp eq i32 %197, %200, !dbg !1404
  br i1 %201, label %202, label %228, !dbg !1399

; <label>:202:                                    ; preds = %196
  %203 = load i32, i32* %10, align 4, !dbg !1405
  %204 = lshr i32 %203, 4, !dbg !1409
  %205 = zext i32 %204 to i64, !dbg !1410
  %206 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1410
  %207 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %206, i32 0, i32 4, !dbg !1411
  %208 = load i32*, i32** %207, align 8, !dbg !1411
  %209 = getelementptr inbounds i32, i32* %208, i64 %205, !dbg !1410
  %210 = load i32, i32* %209, align 4, !dbg !1410
  %211 = load i32, i32* %10, align 4, !dbg !1412
  %212 = and i32 %211, 15, !dbg !1413
  %213 = shl i32 %212, 1, !dbg !1414
  %214 = lshr i32 %210, %213, !dbg !1415
  %215 = and i32 %214, 2, !dbg !1416
  %216 = icmp ne i32 %215, 0, !dbg !1416
  br i1 %216, label %217, label %225, !dbg !1417

; <label>:217:                                    ; preds = %202
  %218 = load i32, i32* %11, align 4, !dbg !1418
  %219 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1420
  %220 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %219, i32 0, i32 0, !dbg !1421
  %221 = load i32, i32* %220, align 8, !dbg !1421
  %222 = icmp ne i32 %218, %221, !dbg !1422
  br i1 %222, label %223, label %225, !dbg !1423

; <label>:223:                                    ; preds = %217
  %224 = load i32, i32* %11, align 4, !dbg !1424
  store i32 %224, i32* %8, align 4, !dbg !1426
  br label %227, !dbg !1427

; <label>:225:                                    ; preds = %217, %202
  %226 = load i32, i32* %10, align 4, !dbg !1428
  store i32 %226, i32* %8, align 4, !dbg !1430
  br label %227

; <label>:227:                                    ; preds = %225, %223
  br label %228, !dbg !1431

; <label>:228:                                    ; preds = %227, %196
  br label %229

; <label>:229:                                    ; preds = %228, %87
  %230 = load i32, i32* %8, align 4, !dbg !1433
  %231 = lshr i32 %230, 4, !dbg !1436
  %232 = zext i32 %231 to i64, !dbg !1437
  %233 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1437
  %234 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %233, i32 0, i32 4, !dbg !1438
  %235 = load i32*, i32** %234, align 8, !dbg !1438
  %236 = getelementptr inbounds i32, i32* %235, i64 %232, !dbg !1437
  %237 = load i32, i32* %236, align 4, !dbg !1437
  %238 = load i32, i32* %8, align 4, !dbg !1439
  %239 = and i32 %238, 15, !dbg !1440
  %240 = shl i32 %239, 1, !dbg !1441
  %241 = lshr i32 %237, %240, !dbg !1442
  %242 = and i32 %241, 2, !dbg !1443
  %243 = icmp ne i32 %242, 0, !dbg !1443
  br i1 %243, label %244, label %278, !dbg !1444

; <label>:244:                                    ; preds = %229
  %245 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1445
  %246 = load i32, i32* %8, align 4, !dbg !1448
  %247 = zext i32 %246 to i64, !dbg !1449
  %248 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1449
  %249 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %248, i32 0, i32 5, !dbg !1450
  %250 = load %struct.dynbuf**, %struct.dynbuf*** %249, align 8, !dbg !1450
  %251 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %250, i64 %247, !dbg !1449
  store %struct.dynbuf* %245, %struct.dynbuf** %251, align 8, !dbg !1451
  %252 = load i32, i32* %8, align 4, !dbg !1452
  %253 = and i32 %252, 15, !dbg !1453
  %254 = shl i32 %253, 1, !dbg !1454
  %255 = zext i32 %254 to i64, !dbg !1455
  %256 = shl i64 3, %255, !dbg !1455
  %257 = xor i64 %256, -1, !dbg !1456
  %258 = load i32, i32* %8, align 4, !dbg !1457
  %259 = lshr i32 %258, 4, !dbg !1458
  %260 = zext i32 %259 to i64, !dbg !1459
  %261 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1459
  %262 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %261, i32 0, i32 4, !dbg !1460
  %263 = load i32*, i32** %262, align 8, !dbg !1460
  %264 = getelementptr inbounds i32, i32* %263, i64 %260, !dbg !1459
  %265 = load i32, i32* %264, align 4, !dbg !1461
  %266 = zext i32 %265 to i64, !dbg !1461
  %267 = and i64 %266, %257, !dbg !1461
  %268 = trunc i64 %267 to i32, !dbg !1461
  store i32 %268, i32* %264, align 4, !dbg !1461
  %269 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1462
  %270 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %269, i32 0, i32 1, !dbg !1463
  %271 = load i32, i32* %270, align 4, !dbg !1464
  %272 = add i32 %271, 1, !dbg !1464
  store i32 %272, i32* %270, align 4, !dbg !1464
  %273 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1465
  %274 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %273, i32 0, i32 2, !dbg !1466
  %275 = load i32, i32* %274, align 8, !dbg !1467
  %276 = add i32 %275, 1, !dbg !1467
  store i32 %276, i32* %274, align 8, !dbg !1467
  %277 = load i32*, i32** %7, align 8, !dbg !1468
  store i32 1, i32* %277, align 4, !dbg !1469
  br label %326, !dbg !1470

; <label>:278:                                    ; preds = %229
  %279 = load i32, i32* %8, align 4, !dbg !1471
  %280 = lshr i32 %279, 4, !dbg !1474
  %281 = zext i32 %280 to i64, !dbg !1475
  %282 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1475
  %283 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %282, i32 0, i32 4, !dbg !1476
  %284 = load i32*, i32** %283, align 8, !dbg !1476
  %285 = getelementptr inbounds i32, i32* %284, i64 %281, !dbg !1475
  %286 = load i32, i32* %285, align 4, !dbg !1475
  %287 = load i32, i32* %8, align 4, !dbg !1477
  %288 = and i32 %287, 15, !dbg !1478
  %289 = shl i32 %288, 1, !dbg !1479
  %290 = lshr i32 %286, %289, !dbg !1480
  %291 = and i32 %290, 1, !dbg !1481
  %292 = icmp ne i32 %291, 0, !dbg !1481
  br i1 %292, label %293, label %323, !dbg !1482

; <label>:293:                                    ; preds = %278
  %294 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1483
  %295 = load i32, i32* %8, align 4, !dbg !1486
  %296 = zext i32 %295 to i64, !dbg !1487
  %297 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1487
  %298 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %297, i32 0, i32 5, !dbg !1488
  %299 = load %struct.dynbuf**, %struct.dynbuf*** %298, align 8, !dbg !1488
  %300 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %299, i64 %296, !dbg !1487
  store %struct.dynbuf* %294, %struct.dynbuf** %300, align 8, !dbg !1489
  %301 = load i32, i32* %8, align 4, !dbg !1490
  %302 = and i32 %301, 15, !dbg !1491
  %303 = shl i32 %302, 1, !dbg !1492
  %304 = zext i32 %303 to i64, !dbg !1493
  %305 = shl i64 3, %304, !dbg !1493
  %306 = xor i64 %305, -1, !dbg !1494
  %307 = load i32, i32* %8, align 4, !dbg !1495
  %308 = lshr i32 %307, 4, !dbg !1496
  %309 = zext i32 %308 to i64, !dbg !1497
  %310 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1497
  %311 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %310, i32 0, i32 4, !dbg !1498
  %312 = load i32*, i32** %311, align 8, !dbg !1498
  %313 = getelementptr inbounds i32, i32* %312, i64 %309, !dbg !1497
  %314 = load i32, i32* %313, align 4, !dbg !1499
  %315 = zext i32 %314 to i64, !dbg !1499
  %316 = and i64 %315, %306, !dbg !1499
  %317 = trunc i64 %316 to i32, !dbg !1499
  store i32 %317, i32* %313, align 4, !dbg !1499
  %318 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1500
  %319 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %318, i32 0, i32 1, !dbg !1501
  %320 = load i32, i32* %319, align 4, !dbg !1502
  %321 = add i32 %320, 1, !dbg !1502
  store i32 %321, i32* %319, align 4, !dbg !1502
  %322 = load i32*, i32** %7, align 8, !dbg !1503
  store i32 2, i32* %322, align 4, !dbg !1504
  br label %325, !dbg !1505

; <label>:323:                                    ; preds = %278
  %324 = load i32*, i32** %7, align 8, !dbg !1506
  store i32 0, i32* %324, align 4, !dbg !1508
  br label %325

; <label>:325:                                    ; preds = %323, %293
  br label %326

; <label>:326:                                    ; preds = %325, %244
  %327 = load i32, i32* %8, align 4, !dbg !1509
  store i32 %327, i32* %4, align 4, !dbg !1511
  br label %328, !dbg !1511

; <label>:328:                                    ; preds = %326, %53, %39
  %329 = load i32, i32* %4, align 4, !dbg !1512
  ret i32 %329, !dbg !1512
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_resize_dynbufmap_t(%struct.kh_dynbufmap_t_s*, i32) #2 !dbg !1514 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kh_dynbufmap_t_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dynbuf**, align 8
  %9 = alloca %struct.dynbuf**, align 8
  %10 = alloca %struct.dynbuf*, align 8
  %11 = alloca %struct.dynbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dynbuf*, align 8
  %17 = alloca %struct.dynbuf*, align 8
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %4, metadata !1517, metadata !152), !dbg !1518
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1519, metadata !152), !dbg !1520
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1521, metadata !152), !dbg !1522
  store i32* null, i32** %6, align 8, !dbg !1522
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1523, metadata !152), !dbg !1524
  store i32 1, i32* %7, align 4, !dbg !1524
  %18 = load i32, i32* %5, align 4, !dbg !1525
  %19 = add i32 %18, -1, !dbg !1525
  store i32 %19, i32* %5, align 4, !dbg !1525
  %20 = load i32, i32* %5, align 4, !dbg !1527
  %21 = lshr i32 %20, 1, !dbg !1528
  %22 = load i32, i32* %5, align 4, !dbg !1529
  %23 = or i32 %22, %21, !dbg !1529
  store i32 %23, i32* %5, align 4, !dbg !1529
  %24 = load i32, i32* %5, align 4, !dbg !1530
  %25 = lshr i32 %24, 2, !dbg !1531
  %26 = load i32, i32* %5, align 4, !dbg !1532
  %27 = or i32 %26, %25, !dbg !1532
  store i32 %27, i32* %5, align 4, !dbg !1532
  %28 = load i32, i32* %5, align 4, !dbg !1533
  %29 = lshr i32 %28, 4, !dbg !1534
  %30 = load i32, i32* %5, align 4, !dbg !1535
  %31 = or i32 %30, %29, !dbg !1535
  store i32 %31, i32* %5, align 4, !dbg !1535
  %32 = load i32, i32* %5, align 4, !dbg !1536
  %33 = lshr i32 %32, 8, !dbg !1537
  %34 = load i32, i32* %5, align 4, !dbg !1538
  %35 = or i32 %34, %33, !dbg !1538
  store i32 %35, i32* %5, align 4, !dbg !1538
  %36 = load i32, i32* %5, align 4, !dbg !1539
  %37 = lshr i32 %36, 16, !dbg !1540
  %38 = load i32, i32* %5, align 4, !dbg !1541
  %39 = or i32 %38, %37, !dbg !1541
  store i32 %39, i32* %5, align 4, !dbg !1541
  %40 = load i32, i32* %5, align 4, !dbg !1542
  %41 = add i32 %40, 1, !dbg !1542
  store i32 %41, i32* %5, align 4, !dbg !1542
  %42 = load i32, i32* %5, align 4, !dbg !1543
  %43 = icmp ult i32 %42, 4, !dbg !1545
  br i1 %43, label %44, label %45, !dbg !1546

; <label>:44:                                     ; preds = %2
  store i32 4, i32* %5, align 4, !dbg !1547
  br label %45, !dbg !1549

; <label>:45:                                     ; preds = %44, %2
  %46 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1550
  %47 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %46, i32 0, i32 1, !dbg !1553
  %48 = load i32, i32* %47, align 4, !dbg !1553
  %49 = load i32, i32* %5, align 4, !dbg !1554
  %50 = uitofp i32 %49 to double, !dbg !1554
  %51 = fmul double %50, 7.700000e-01, !dbg !1555
  %52 = fadd double %51, 5.000000e-01, !dbg !1556
  %53 = fptoui double %52 to i32, !dbg !1557
  %54 = icmp uge i32 %48, %53, !dbg !1558
  br i1 %54, label %55, label %56, !dbg !1550

; <label>:55:                                     ; preds = %45
  store i32 0, i32* %7, align 4, !dbg !1559
  br label %128, !dbg !1561

; <label>:56:                                     ; preds = %45
  %57 = load i32, i32* %5, align 4, !dbg !1562
  %58 = icmp ult i32 %57, 16, !dbg !1565
  br i1 %58, label %59, label %60, !dbg !1566

; <label>:59:                                     ; preds = %56
  br label %63, !dbg !1567

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %5, align 4, !dbg !1569
  %62 = lshr i32 %61, 4, !dbg !1571
  br label %63, !dbg !1572

; <label>:63:                                     ; preds = %60, %59
  %64 = phi i32 [ 1, %59 ], [ %62, %60 ], !dbg !1573
  %65 = zext i32 %64 to i64, !dbg !1575
  %66 = mul i64 %65, 4, !dbg !1576
  %67 = call noalias i8* @malloc(i64 %66) #7, !dbg !1577
  %68 = bitcast i8* %67 to i32*, !dbg !1578
  store i32* %68, i32** %6, align 8, !dbg !1579
  %69 = load i32*, i32** %6, align 8, !dbg !1580
  %70 = icmp ne i32* %69, null, !dbg !1580
  br i1 %70, label %72, label %71, !dbg !1581

; <label>:71:                                     ; preds = %63
  store i32 -1, i32* %3, align 4, !dbg !1582
  br label %372, !dbg !1582

; <label>:72:                                     ; preds = %63
  %73 = load i32*, i32** %6, align 8, !dbg !1585
  %74 = bitcast i32* %73 to i8*, !dbg !1587
  %75 = load i32, i32* %5, align 4, !dbg !1588
  %76 = icmp ult i32 %75, 16, !dbg !1589
  br i1 %76, label %77, label %78, !dbg !1590

; <label>:77:                                     ; preds = %72
  br label %81, !dbg !1591

; <label>:78:                                     ; preds = %72
  %79 = load i32, i32* %5, align 4, !dbg !1593
  %80 = lshr i32 %79, 4, !dbg !1595
  br label %81, !dbg !1596

; <label>:81:                                     ; preds = %78, %77
  %82 = phi i32 [ 1, %77 ], [ %80, %78 ], !dbg !1597
  %83 = zext i32 %82 to i64, !dbg !1599
  %84 = mul i64 %83, 4, !dbg !1600
  call void @llvm.memset.p0i8.i64(i8* %74, i8 -86, i64 %84, i32 4, i1 false), !dbg !1601
  %85 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1602
  %86 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %85, i32 0, i32 0, !dbg !1603
  %87 = load i32, i32* %86, align 8, !dbg !1603
  %88 = load i32, i32* %5, align 4, !dbg !1604
  %89 = icmp ult i32 %87, %88, !dbg !1605
  br i1 %89, label %90, label %127, !dbg !1602

; <label>:90:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata %struct.dynbuf*** %8, metadata !1606, metadata !152), !dbg !1609
  %91 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1610
  %92 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %91, i32 0, i32 5, !dbg !1612
  %93 = load %struct.dynbuf**, %struct.dynbuf*** %92, align 8, !dbg !1612
  %94 = bitcast %struct.dynbuf** %93 to i8*, !dbg !1613
  %95 = load i32, i32* %5, align 4, !dbg !1614
  %96 = zext i32 %95 to i64, !dbg !1614
  %97 = mul i64 %96, 8, !dbg !1615
  %98 = call i8* @realloc(i8* %94, i64 %97) #7, !dbg !1616
  %99 = bitcast i8* %98 to %struct.dynbuf**, !dbg !1617
  store %struct.dynbuf** %99, %struct.dynbuf*** %8, align 8, !dbg !1618
  %100 = load %struct.dynbuf**, %struct.dynbuf*** %8, align 8, !dbg !1619
  %101 = icmp ne %struct.dynbuf** %100, null, !dbg !1619
  br i1 %101, label %105, label %102, !dbg !1620

; <label>:102:                                    ; preds = %90
  %103 = load i32*, i32** %6, align 8, !dbg !1621
  %104 = bitcast i32* %103 to i8*, !dbg !1621
  call void @free(i8* %104) #7, !dbg !1625
  store i32 -1, i32* %3, align 4, !dbg !1626
  br label %372, !dbg !1626

; <label>:105:                                    ; preds = %90
  %106 = load %struct.dynbuf**, %struct.dynbuf*** %8, align 8, !dbg !1627
  %107 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1629
  %108 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %107, i32 0, i32 5, !dbg !1630
  store %struct.dynbuf** %106, %struct.dynbuf*** %108, align 8, !dbg !1631
  call void @llvm.dbg.declare(metadata %struct.dynbuf*** %9, metadata !1632, metadata !152), !dbg !1635
  %109 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1636
  %110 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %109, i32 0, i32 6, !dbg !1637
  %111 = load %struct.dynbuf**, %struct.dynbuf*** %110, align 8, !dbg !1637
  %112 = bitcast %struct.dynbuf** %111 to i8*, !dbg !1638
  %113 = load i32, i32* %5, align 4, !dbg !1639
  %114 = zext i32 %113 to i64, !dbg !1639
  %115 = mul i64 %114, 8, !dbg !1640
  %116 = call i8* @realloc(i8* %112, i64 %115) #7, !dbg !1641
  %117 = bitcast i8* %116 to %struct.dynbuf**, !dbg !1642
  store %struct.dynbuf** %117, %struct.dynbuf*** %9, align 8, !dbg !1643
  %118 = load %struct.dynbuf**, %struct.dynbuf*** %9, align 8, !dbg !1644
  %119 = icmp ne %struct.dynbuf** %118, null, !dbg !1644
  br i1 %119, label %123, label %120, !dbg !1645

; <label>:120:                                    ; preds = %105
  %121 = load i32*, i32** %6, align 8, !dbg !1646
  %122 = bitcast i32* %121 to i8*, !dbg !1646
  call void @free(i8* %122) #7, !dbg !1650
  store i32 -1, i32* %3, align 4, !dbg !1651
  br label %372, !dbg !1651

; <label>:123:                                    ; preds = %105
  %124 = load %struct.dynbuf**, %struct.dynbuf*** %9, align 8, !dbg !1652
  %125 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1654
  %126 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %125, i32 0, i32 6, !dbg !1655
  store %struct.dynbuf** %124, %struct.dynbuf*** %126, align 8, !dbg !1656
  br label %127, !dbg !1657

; <label>:127:                                    ; preds = %123, %81
  br label %128

; <label>:128:                                    ; preds = %127, %55
  %129 = load i32, i32* %7, align 4, !dbg !1658
  %130 = icmp ne i32 %129, 0, !dbg !1658
  br i1 %130, label %131, label %371, !dbg !1658

; <label>:131:                                    ; preds = %128
  store i32 0, i32* %7, align 4, !dbg !1661
  br label %132, !dbg !1665

; <label>:132:                                    ; preds = %314, %131
  %133 = load i32, i32* %7, align 4, !dbg !1666
  %134 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1669
  %135 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %134, i32 0, i32 0, !dbg !1670
  %136 = load i32, i32* %135, align 8, !dbg !1670
  %137 = icmp ne i32 %133, %136, !dbg !1671
  br i1 %137, label %138, label %317, !dbg !1672

; <label>:138:                                    ; preds = %132
  %139 = load i32, i32* %7, align 4, !dbg !1673
  %140 = lshr i32 %139, 4, !dbg !1677
  %141 = zext i32 %140 to i64, !dbg !1678
  %142 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1678
  %143 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %142, i32 0, i32 4, !dbg !1679
  %144 = load i32*, i32** %143, align 8, !dbg !1679
  %145 = getelementptr inbounds i32, i32* %144, i64 %141, !dbg !1678
  %146 = load i32, i32* %145, align 4, !dbg !1678
  %147 = load i32, i32* %7, align 4, !dbg !1680
  %148 = and i32 %147, 15, !dbg !1681
  %149 = shl i32 %148, 1, !dbg !1682
  %150 = lshr i32 %146, %149, !dbg !1683
  %151 = and i32 %150, 3, !dbg !1684
  %152 = icmp eq i32 %151, 0, !dbg !1685
  br i1 %152, label %153, label %313, !dbg !1686

; <label>:153:                                    ; preds = %138
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %10, metadata !1687, metadata !152), !dbg !1689
  %154 = load i32, i32* %7, align 4, !dbg !1690
  %155 = zext i32 %154 to i64, !dbg !1692
  %156 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1692
  %157 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %156, i32 0, i32 5, !dbg !1693
  %158 = load %struct.dynbuf**, %struct.dynbuf*** %157, align 8, !dbg !1693
  %159 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %158, i64 %155, !dbg !1692
  %160 = load %struct.dynbuf*, %struct.dynbuf** %159, align 8, !dbg !1692
  store %struct.dynbuf* %160, %struct.dynbuf** %10, align 8, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %11, metadata !1695, metadata !152), !dbg !1696
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1697, metadata !152), !dbg !1698
  %161 = load i32, i32* %5, align 4, !dbg !1699
  %162 = sub i32 %161, 1, !dbg !1700
  store i32 %162, i32* %12, align 4, !dbg !1701
  %163 = load i32, i32* %7, align 4, !dbg !1702
  %164 = zext i32 %163 to i64, !dbg !1703
  %165 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1703
  %166 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %165, i32 0, i32 6, !dbg !1704
  %167 = load %struct.dynbuf**, %struct.dynbuf*** %166, align 8, !dbg !1704
  %168 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %167, i64 %164, !dbg !1703
  %169 = load %struct.dynbuf*, %struct.dynbuf** %168, align 8, !dbg !1703
  store %struct.dynbuf* %169, %struct.dynbuf** %11, align 8, !dbg !1705
  %170 = load i32, i32* %7, align 4, !dbg !1706
  %171 = and i32 %170, 15, !dbg !1707
  %172 = shl i32 %171, 1, !dbg !1708
  %173 = zext i32 %172 to i64, !dbg !1709
  %174 = shl i64 1, %173, !dbg !1709
  %175 = load i32, i32* %7, align 4, !dbg !1710
  %176 = lshr i32 %175, 4, !dbg !1711
  %177 = zext i32 %176 to i64, !dbg !1712
  %178 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1712
  %179 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %178, i32 0, i32 4, !dbg !1713
  %180 = load i32*, i32** %179, align 8, !dbg !1713
  %181 = getelementptr inbounds i32, i32* %180, i64 %177, !dbg !1712
  %182 = load i32, i32* %181, align 4, !dbg !1714
  %183 = zext i32 %182 to i64, !dbg !1714
  %184 = or i64 %183, %174, !dbg !1714
  %185 = trunc i64 %184 to i32, !dbg !1714
  store i32 %185, i32* %181, align 4, !dbg !1714
  br label %186, !dbg !1715

; <label>:186:                                    ; preds = %153, %311
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1716, metadata !152), !dbg !1718
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1719, metadata !152), !dbg !1720
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1721, metadata !152), !dbg !1722
  store i32 0, i32* %15, align 4, !dbg !1723
  %187 = load %struct.dynbuf*, %struct.dynbuf** %10, align 8, !dbg !1725
  %188 = call i32 @kh_dynbuf_hash_func(%struct.dynbuf* %187), !dbg !1726
  store i32 %188, i32* %13, align 4, !dbg !1727
  %189 = load i32, i32* %13, align 4, !dbg !1728
  %190 = load i32, i32* %12, align 4, !dbg !1729
  %191 = and i32 %189, %190, !dbg !1730
  store i32 %191, i32* %14, align 4, !dbg !1731
  br label %192, !dbg !1732

; <label>:192:                                    ; preds = %206, %186
  %193 = load i32, i32* %14, align 4, !dbg !1733
  %194 = lshr i32 %193, 4, !dbg !1735
  %195 = zext i32 %194 to i64, !dbg !1736
  %196 = load i32*, i32** %6, align 8, !dbg !1736
  %197 = getelementptr inbounds i32, i32* %196, i64 %195, !dbg !1736
  %198 = load i32, i32* %197, align 4, !dbg !1736
  %199 = load i32, i32* %14, align 4, !dbg !1737
  %200 = and i32 %199, 15, !dbg !1738
  %201 = shl i32 %200, 1, !dbg !1739
  %202 = lshr i32 %198, %201, !dbg !1740
  %203 = and i32 %202, 2, !dbg !1741
  %204 = icmp ne i32 %203, 0, !dbg !1742
  %205 = xor i1 %204, true, !dbg !1742
  br i1 %205, label %206, label %213, !dbg !1743

; <label>:206:                                    ; preds = %192
  %207 = load i32, i32* %14, align 4, !dbg !1744
  %208 = load i32, i32* %15, align 4, !dbg !1746
  %209 = add i32 %208, 1, !dbg !1746
  store i32 %209, i32* %15, align 4, !dbg !1746
  %210 = add i32 %207, %209, !dbg !1747
  %211 = load i32, i32* %12, align 4, !dbg !1748
  %212 = and i32 %210, %211, !dbg !1749
  store i32 %212, i32* %14, align 4, !dbg !1750
  br label %192, !dbg !1751, !llvm.loop !1752

; <label>:213:                                    ; preds = %192
  %214 = load i32, i32* %14, align 4, !dbg !1754
  %215 = and i32 %214, 15, !dbg !1756
  %216 = shl i32 %215, 1, !dbg !1757
  %217 = zext i32 %216 to i64, !dbg !1758
  %218 = shl i64 2, %217, !dbg !1758
  %219 = xor i64 %218, -1, !dbg !1759
  %220 = load i32, i32* %14, align 4, !dbg !1760
  %221 = lshr i32 %220, 4, !dbg !1761
  %222 = zext i32 %221 to i64, !dbg !1762
  %223 = load i32*, i32** %6, align 8, !dbg !1762
  %224 = getelementptr inbounds i32, i32* %223, i64 %222, !dbg !1762
  %225 = load i32, i32* %224, align 4, !dbg !1763
  %226 = zext i32 %225 to i64, !dbg !1763
  %227 = and i64 %226, %219, !dbg !1763
  %228 = trunc i64 %227 to i32, !dbg !1763
  store i32 %228, i32* %224, align 4, !dbg !1763
  %229 = load i32, i32* %14, align 4, !dbg !1764
  %230 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1765
  %231 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %230, i32 0, i32 0, !dbg !1766
  %232 = load i32, i32* %231, align 8, !dbg !1766
  %233 = icmp ult i32 %229, %232, !dbg !1767
  br i1 %233, label %234, label %296, !dbg !1768

; <label>:234:                                    ; preds = %213
  %235 = load i32, i32* %14, align 4, !dbg !1769
  %236 = lshr i32 %235, 4, !dbg !1772
  %237 = zext i32 %236 to i64, !dbg !1773
  %238 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1773
  %239 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %238, i32 0, i32 4, !dbg !1774
  %240 = load i32*, i32** %239, align 8, !dbg !1774
  %241 = getelementptr inbounds i32, i32* %240, i64 %237, !dbg !1773
  %242 = load i32, i32* %241, align 4, !dbg !1773
  %243 = load i32, i32* %14, align 4, !dbg !1775
  %244 = and i32 %243, 15, !dbg !1776
  %245 = shl i32 %244, 1, !dbg !1777
  %246 = lshr i32 %242, %245, !dbg !1778
  %247 = and i32 %246, 3, !dbg !1779
  %248 = icmp eq i32 %247, 0, !dbg !1780
  br i1 %248, label %249, label %296, !dbg !1781

; <label>:249:                                    ; preds = %234
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %16, metadata !1782, metadata !152), !dbg !1785
  %250 = load i32, i32* %14, align 4, !dbg !1786
  %251 = zext i32 %250 to i64, !dbg !1788
  %252 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1788
  %253 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %252, i32 0, i32 5, !dbg !1789
  %254 = load %struct.dynbuf**, %struct.dynbuf*** %253, align 8, !dbg !1789
  %255 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %254, i64 %251, !dbg !1788
  %256 = load %struct.dynbuf*, %struct.dynbuf** %255, align 8, !dbg !1788
  store %struct.dynbuf* %256, %struct.dynbuf** %16, align 8, !dbg !1790
  %257 = load %struct.dynbuf*, %struct.dynbuf** %10, align 8, !dbg !1791
  %258 = load i32, i32* %14, align 4, !dbg !1792
  %259 = zext i32 %258 to i64, !dbg !1793
  %260 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1793
  %261 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %260, i32 0, i32 5, !dbg !1794
  %262 = load %struct.dynbuf**, %struct.dynbuf*** %261, align 8, !dbg !1794
  %263 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %262, i64 %259, !dbg !1793
  store %struct.dynbuf* %257, %struct.dynbuf** %263, align 8, !dbg !1795
  %264 = load %struct.dynbuf*, %struct.dynbuf** %16, align 8, !dbg !1796
  store %struct.dynbuf* %264, %struct.dynbuf** %10, align 8, !dbg !1797
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %17, metadata !1798, metadata !152), !dbg !1801
  %265 = load i32, i32* %14, align 4, !dbg !1802
  %266 = zext i32 %265 to i64, !dbg !1803
  %267 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1803
  %268 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %267, i32 0, i32 6, !dbg !1804
  %269 = load %struct.dynbuf**, %struct.dynbuf*** %268, align 8, !dbg !1804
  %270 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %269, i64 %266, !dbg !1803
  %271 = load %struct.dynbuf*, %struct.dynbuf** %270, align 8, !dbg !1803
  store %struct.dynbuf* %271, %struct.dynbuf** %17, align 8, !dbg !1805
  %272 = load %struct.dynbuf*, %struct.dynbuf** %11, align 8, !dbg !1806
  %273 = load i32, i32* %14, align 4, !dbg !1807
  %274 = zext i32 %273 to i64, !dbg !1808
  %275 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1808
  %276 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %275, i32 0, i32 6, !dbg !1809
  %277 = load %struct.dynbuf**, %struct.dynbuf*** %276, align 8, !dbg !1809
  %278 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %277, i64 %274, !dbg !1808
  store %struct.dynbuf* %272, %struct.dynbuf** %278, align 8, !dbg !1810
  %279 = load %struct.dynbuf*, %struct.dynbuf** %17, align 8, !dbg !1811
  store %struct.dynbuf* %279, %struct.dynbuf** %11, align 8, !dbg !1812
  %280 = load i32, i32* %14, align 4, !dbg !1813
  %281 = and i32 %280, 15, !dbg !1814
  %282 = shl i32 %281, 1, !dbg !1815
  %283 = zext i32 %282 to i64, !dbg !1816
  %284 = shl i64 1, %283, !dbg !1816
  %285 = load i32, i32* %14, align 4, !dbg !1817
  %286 = lshr i32 %285, 4, !dbg !1818
  %287 = zext i32 %286 to i64, !dbg !1819
  %288 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1819
  %289 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %288, i32 0, i32 4, !dbg !1820
  %290 = load i32*, i32** %289, align 8, !dbg !1820
  %291 = getelementptr inbounds i32, i32* %290, i64 %287, !dbg !1819
  %292 = load i32, i32* %291, align 4, !dbg !1821
  %293 = zext i32 %292 to i64, !dbg !1821
  %294 = or i64 %293, %284, !dbg !1821
  %295 = trunc i64 %294 to i32, !dbg !1821
  store i32 %295, i32* %291, align 4, !dbg !1821
  br label %311, !dbg !1822

; <label>:296:                                    ; preds = %234, %213
  %297 = load %struct.dynbuf*, %struct.dynbuf** %10, align 8, !dbg !1823
  %298 = load i32, i32* %14, align 4, !dbg !1826
  %299 = zext i32 %298 to i64, !dbg !1827
  %300 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1827
  %301 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %300, i32 0, i32 5, !dbg !1828
  %302 = load %struct.dynbuf**, %struct.dynbuf*** %301, align 8, !dbg !1828
  %303 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %302, i64 %299, !dbg !1827
  store %struct.dynbuf* %297, %struct.dynbuf** %303, align 8, !dbg !1829
  %304 = load %struct.dynbuf*, %struct.dynbuf** %11, align 8, !dbg !1830
  %305 = load i32, i32* %14, align 4, !dbg !1831
  %306 = zext i32 %305 to i64, !dbg !1832
  %307 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1832
  %308 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %307, i32 0, i32 6, !dbg !1833
  %309 = load %struct.dynbuf**, %struct.dynbuf*** %308, align 8, !dbg !1833
  %310 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %309, i64 %306, !dbg !1832
  store %struct.dynbuf* %304, %struct.dynbuf** %310, align 8, !dbg !1834
  br label %312, !dbg !1835

; <label>:311:                                    ; preds = %249
  br label %186, !dbg !1836, !llvm.loop !1838

; <label>:312:                                    ; preds = %296
  br label %313, !dbg !1840

; <label>:313:                                    ; preds = %312, %138
  br label %314, !dbg !1842

; <label>:314:                                    ; preds = %313
  %315 = load i32, i32* %7, align 4, !dbg !1844
  %316 = add i32 %315, 1, !dbg !1844
  store i32 %316, i32* %7, align 4, !dbg !1844
  br label %132, !dbg !1846, !llvm.loop !1847

; <label>:317:                                    ; preds = %132
  %318 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1849
  %319 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %318, i32 0, i32 0, !dbg !1852
  %320 = load i32, i32* %319, align 8, !dbg !1852
  %321 = load i32, i32* %5, align 4, !dbg !1853
  %322 = icmp ugt i32 %320, %321, !dbg !1854
  br i1 %322, label %323, label %346, !dbg !1849

; <label>:323:                                    ; preds = %317
  %324 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1855
  %325 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %324, i32 0, i32 5, !dbg !1858
  %326 = load %struct.dynbuf**, %struct.dynbuf*** %325, align 8, !dbg !1858
  %327 = bitcast %struct.dynbuf** %326 to i8*, !dbg !1859
  %328 = load i32, i32* %5, align 4, !dbg !1860
  %329 = zext i32 %328 to i64, !dbg !1860
  %330 = mul i64 %329, 8, !dbg !1861
  %331 = call i8* @realloc(i8* %327, i64 %330) #7, !dbg !1862
  %332 = bitcast i8* %331 to %struct.dynbuf**, !dbg !1863
  %333 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1864
  %334 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %333, i32 0, i32 5, !dbg !1865
  store %struct.dynbuf** %332, %struct.dynbuf*** %334, align 8, !dbg !1866
  %335 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1867
  %336 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %335, i32 0, i32 6, !dbg !1868
  %337 = load %struct.dynbuf**, %struct.dynbuf*** %336, align 8, !dbg !1868
  %338 = bitcast %struct.dynbuf** %337 to i8*, !dbg !1869
  %339 = load i32, i32* %5, align 4, !dbg !1870
  %340 = zext i32 %339 to i64, !dbg !1870
  %341 = mul i64 %340, 8, !dbg !1871
  %342 = call i8* @realloc(i8* %338, i64 %341) #7, !dbg !1872
  %343 = bitcast i8* %342 to %struct.dynbuf**, !dbg !1874
  %344 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1875
  %345 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %344, i32 0, i32 6, !dbg !1876
  store %struct.dynbuf** %343, %struct.dynbuf*** %345, align 8, !dbg !1877
  br label %346, !dbg !1878

; <label>:346:                                    ; preds = %323, %317
  %347 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1879
  %348 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %347, i32 0, i32 4, !dbg !1881
  %349 = load i32*, i32** %348, align 8, !dbg !1881
  %350 = bitcast i32* %349 to i8*, !dbg !1879
  call void @free(i8* %350) #7, !dbg !1882
  %351 = load i32*, i32** %6, align 8, !dbg !1883
  %352 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1884
  %353 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %352, i32 0, i32 4, !dbg !1885
  store i32* %351, i32** %353, align 8, !dbg !1886
  %354 = load i32, i32* %5, align 4, !dbg !1887
  %355 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1888
  %356 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %355, i32 0, i32 0, !dbg !1889
  store i32 %354, i32* %356, align 8, !dbg !1890
  %357 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1891
  %358 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %357, i32 0, i32 1, !dbg !1892
  %359 = load i32, i32* %358, align 4, !dbg !1892
  %360 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1893
  %361 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %360, i32 0, i32 2, !dbg !1894
  store i32 %359, i32* %361, align 8, !dbg !1895
  %362 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1896
  %363 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %362, i32 0, i32 0, !dbg !1897
  %364 = load i32, i32* %363, align 8, !dbg !1897
  %365 = uitofp i32 %364 to double, !dbg !1896
  %366 = fmul double %365, 7.700000e-01, !dbg !1898
  %367 = fadd double %366, 5.000000e-01, !dbg !1899
  %368 = fptoui double %367 to i32, !dbg !1900
  %369 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1901
  %370 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %369, i32 0, i32 3, !dbg !1902
  store i32 %368, i32* %370, align 4, !dbg !1903
  br label %371, !dbg !1904

; <label>:371:                                    ; preds = %346, %128
  store i32 0, i32* %3, align 4, !dbg !1905
  br label %372, !dbg !1905

; <label>:372:                                    ; preds = %371, %120, %102, %71
  %373 = load i32, i32* %3, align 4, !dbg !1907
  ret i32 %373, !dbg !1907
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @dynbuf_free(%struct.dynbuf*) #3

declare %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st**, i8**, i64) #3

declare i32 @ssl_session_is_valid(%struct.ssl_session_st*) #3

declare void @SSL_SESSION_free(%struct.ssl_session_st*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_destroy_dynbufmap_t(%struct.kh_dynbufmap_t_s*) #2 !dbg !1909 {
  %2 = alloca %struct.kh_dynbufmap_t_s*, align 8
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %2, metadata !1912, metadata !152), !dbg !1913
  %3 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !1914
  %4 = icmp ne %struct.kh_dynbufmap_t_s* %3, null, !dbg !1914
  br i1 %4, label %5, label %20, !dbg !1916

; <label>:5:                                      ; preds = %1
  %6 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !1917
  %7 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %6, i32 0, i32 5, !dbg !1920
  %8 = load %struct.dynbuf**, %struct.dynbuf*** %7, align 8, !dbg !1920
  %9 = bitcast %struct.dynbuf** %8 to i8*, !dbg !1921
  call void @free(i8* %9) #7, !dbg !1922
  %10 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !1923
  %11 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %10, i32 0, i32 4, !dbg !1924
  %12 = load i32*, i32** %11, align 8, !dbg !1924
  %13 = bitcast i32* %12 to i8*, !dbg !1923
  call void @free(i8* %13) #7, !dbg !1925
  %14 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !1927
  %15 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %14, i32 0, i32 6, !dbg !1928
  %16 = load %struct.dynbuf**, %struct.dynbuf*** %15, align 8, !dbg !1928
  %17 = bitcast %struct.dynbuf** %16 to i8*, !dbg !1929
  call void @free(i8* %17) #7, !dbg !1930
  %18 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !1932
  %19 = bitcast %struct.kh_dynbufmap_t_s* %18 to i8*, !dbg !1932
  call void @free(i8* %19) #7, !dbg !1933
  br label %20, !dbg !1935

; <label>:20:                                     ; preds = %5, %1
  ret void, !dbg !1936
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !38)
!1 = !DIFile(filename: "line28-cachessess.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !5, !11, !35, !19, !21, !36}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_dynbufmap_t_t", file: !7, line: 64, baseType: !8)
!7 = !DIFile(filename: "cachessess.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_dynbufmap_t_s", file: !7, line: 64, size: 320, align: 64, elements: !9)
!9 = !{!10, !15, !16, !17, !18, !20, !34}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !8, file: !7, line: 64, baseType: !11, size: 32, align: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !12, line: 162, baseType: !13)
!12 = !DIFile(filename: "khash.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !12, line: 135, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !8, file: !7, line: 64, baseType: !11, size: 32, align: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !8, file: !7, line: 64, baseType: !11, size: 32, align: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !8, file: !7, line: 64, baseType: !11, size: 32, align: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !8, file: !7, line: 64, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !8, file: !7, line: 64, baseType: !21, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "dynbuf_t", file: !24, line: 39, baseType: !25)
!24 = !DIFile(filename: "dynbuf.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dynbuf", file: !24, line: 36, size: 128, align: 64, elements: !26)
!26 = !{!27, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !25, file: !24, line: 37, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !25, file: !24, line: 38, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 216, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!33 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !8, file: !7, line: 64, baseType: !21, size: 64, align: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!38 = !{!39, !40}
!39 = distinct !DIGlobalVariable(name: "srcsessmap", scope: !0, file: !7, line: 67, type: !5, isLocal: true, isDefinition: true, variable: %struct.kh_dynbufmap_t_s** @srcsessmap)
!40 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !0, file: !12, line: 192, type: !41, isLocal: true, isDefinition: true, variable: double 7.700000e-01)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!46 = distinct !DISubprogram(name: "cachessess_init_cb", scope: !7, file: !7, line: 163, type: !47, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !51, line: 70, baseType: !52)
!51 = !DIFile(filename: "cache.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache", file: !51, line: 54, size: 1152, align: 64, elements: !53)
!53 = !{!54, !85, !91, !93, !98, !103, !109, !115, !120, !126, !131, !136, !141, !146}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !52, file: !51, line: 55, baseType: !55, size: 320, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !56, line: 128, baseType: !57)
!56 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !56, line: 90, size: 320, align: 64, elements: !58)
!58 = !{!59, !78, !83}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !57, file: !56, line: 125, baseType: !60, size: 320, align: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !56, line: 92, size: 320, align: 64, elements: !61)
!61 = !{!62, !64, !65, !66, !67, !68, !70, !71}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !60, file: !56, line: 94, baseType: !63, size: 32, align: 32)
!63 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !60, file: !56, line: 95, baseType: !14, size: 32, align: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !60, file: !56, line: 96, baseType: !63, size: 32, align: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !60, file: !56, line: 98, baseType: !14, size: 32, align: 32, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !60, file: !56, line: 102, baseType: !63, size: 32, align: 32, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !60, file: !56, line: 104, baseType: !69, size: 16, align: 16, offset: 160)
!69 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !60, file: !56, line: 105, baseType: !69, size: 16, align: 16, offset: 176)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !60, file: !56, line: 106, baseType: !72, size: 128, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !56, line: 79, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !56, line: 75, size: 128, align: 64, elements: !74)
!74 = !{!75, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !73, file: !56, line: 77, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !73, file: !56, line: 78, baseType: !76, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !57, file: !56, line: 126, baseType: !79, size: 320, align: 8)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 320, align: 8, elements: !81)
!80 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!81 = !{!82}
!82 = !DISubrange(count: 40)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !57, file: !56, line: 127, baseType: !84, size: 64, align: 64)
!84 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cb", scope: !52, file: !51, line: 57, baseType: !86, size: 64, align: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_begin_cb_t", file: !51, line: 40, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_iter_t", file: !51, line: 38, baseType: !14)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "end_cb", scope: !52, file: !51, line: 58, baseType: !92, size: 64, align: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_end_cb_t", file: !51, line: 41, baseType: !87)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "exist_cb", scope: !52, file: !51, line: 59, baseType: !94, size: 64, align: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_exist_cb_t", file: !51, line: 42, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!63, !90}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "del_cb", scope: !52, file: !51, line: 60, baseType: !99, size: 64, align: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_del_cb_t", file: !51, line: 43, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !90}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_cb", scope: !52, file: !51, line: 61, baseType: !104, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_cb_t", file: !51, line: 44, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!90, !108}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_key_t", file: !51, line: 37, baseType: !4)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "put_cb", scope: !52, file: !51, line: 62, baseType: !110, size: 64, align: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_put_cb_t", file: !51, line: 45, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!90, !108, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "free_key_cb", scope: !52, file: !51, line: 63, baseType: !116, size: 64, align: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_key_cb_t", file: !51, line: 46, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !108}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "free_val_cb", scope: !52, file: !51, line: 64, baseType: !121, size: 64, align: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_val_cb_t", file: !51, line: 47, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !125}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_val_t", file: !51, line: 36, baseType: !4)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "get_key_cb", scope: !52, file: !51, line: 65, baseType: !127, size: 64, align: 64, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_key_cb_t", file: !51, line: 48, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!108, !90}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "get_val_cb", scope: !52, file: !51, line: 66, baseType: !132, size: 64, align: 64, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_val_cb_t", file: !51, line: 49, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!125, !90}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "set_val_cb", scope: !52, file: !51, line: 67, baseType: !137, size: 64, align: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_set_val_cb_t", file: !51, line: 50, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !90, !125}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "unpackverify_val_cb", scope: !52, file: !51, line: 68, baseType: !142, size: 64, align: 64, offset: 1024)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_unpackverify_val_cb_t", file: !51, line: 51, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!125, !125, !63}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fini_cb", scope: !52, file: !51, line: 69, baseType: !147, size: 64, align: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_fini_cb_t", file: !51, line: 52, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null}
!151 = !DILocalVariable(name: "cache", arg: 1, scope: !46, file: !7, line: 163, type: !49)
!152 = !DIExpression()
!153 = !DILocation(line: 163, column: 29, scope: !46)
!154 = !DILocation(line: 165, column: 15, scope: !46)
!155 = !DILocation(line: 165, column: 13, scope: !46)
!156 = !DILocation(line: 167, column: 2, scope: !46)
!157 = !DILocation(line: 167, column: 9, scope: !46)
!158 = !DILocation(line: 167, column: 18, scope: !46)
!159 = !DILocation(line: 168, column: 2, scope: !46)
!160 = !DILocation(line: 168, column: 9, scope: !46)
!161 = !DILocation(line: 168, column: 16, scope: !46)
!162 = !DILocation(line: 169, column: 2, scope: !46)
!163 = !DILocation(line: 169, column: 9, scope: !46)
!164 = !DILocation(line: 169, column: 18, scope: !46)
!165 = !DILocation(line: 170, column: 2, scope: !46)
!166 = !DILocation(line: 170, column: 9, scope: !46)
!167 = !DILocation(line: 170, column: 16, scope: !46)
!168 = !DILocation(line: 171, column: 2, scope: !46)
!169 = !DILocation(line: 171, column: 9, scope: !46)
!170 = !DILocation(line: 171, column: 16, scope: !46)
!171 = !DILocation(line: 172, column: 2, scope: !46)
!172 = !DILocation(line: 172, column: 9, scope: !46)
!173 = !DILocation(line: 172, column: 16, scope: !46)
!174 = !DILocation(line: 173, column: 2, scope: !46)
!175 = !DILocation(line: 173, column: 9, scope: !46)
!176 = !DILocation(line: 173, column: 21, scope: !46)
!177 = !DILocation(line: 174, column: 2, scope: !46)
!178 = !DILocation(line: 174, column: 9, scope: !46)
!179 = !DILocation(line: 174, column: 21, scope: !46)
!180 = !DILocation(line: 175, column: 2, scope: !46)
!181 = !DILocation(line: 175, column: 9, scope: !46)
!182 = !DILocation(line: 175, column: 20, scope: !46)
!183 = !DILocation(line: 176, column: 2, scope: !46)
!184 = !DILocation(line: 176, column: 9, scope: !46)
!185 = !DILocation(line: 176, column: 20, scope: !46)
!186 = !DILocation(line: 177, column: 2, scope: !46)
!187 = !DILocation(line: 177, column: 9, scope: !46)
!188 = !DILocation(line: 177, column: 20, scope: !46)
!189 = !DILocation(line: 178, column: 2, scope: !46)
!190 = !DILocation(line: 178, column: 9, scope: !46)
!191 = !DILocation(line: 178, column: 29, scope: !46)
!192 = !DILocation(line: 179, column: 2, scope: !46)
!193 = !DILocation(line: 179, column: 9, scope: !46)
!194 = !DILocation(line: 179, column: 17, scope: !46)
!195 = !DILocation(line: 180, column: 1, scope: !46)
!196 = distinct !DISubprogram(name: "kh_init_dynbufmap_t", scope: !7, file: !7, line: 64, type: !197, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!197 = !DISubroutineType(types: !198)
!198 = !{!5}
!199 = !DILocation(line: 64, column: 272, scope: !196)
!200 = !DILocation(line: 64, column: 253, scope: !196)
!201 = !DILocation(line: 64, column: 246, scope: !196)
!202 = distinct !DISubprogram(name: "cachessess_begin_cb", scope: !7, file: !7, line: 70, type: !88, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!203 = !DILocation(line: 72, column: 2, scope: !202)
!204 = distinct !DISubprogram(name: "cachessess_end_cb", scope: !7, file: !7, line: 76, type: !88, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!205 = !DILocation(line: 78, column: 11, scope: !204)
!206 = !DILocation(line: 78, column: 24, scope: !204)
!207 = !DILocation(line: 78, column: 2, scope: !204)
!208 = distinct !DISubprogram(name: "cachessess_exist_cb", scope: !7, file: !7, line: 82, type: !96, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!209 = !DILocalVariable(name: "it", arg: 1, scope: !208, file: !7, line: 82, type: !90)
!210 = !DILocation(line: 82, column: 34, scope: !208)
!211 = !DILocation(line: 84, column: 34, scope: !208)
!212 = !DILocation(line: 84, column: 37, scope: !208)
!213 = !DILocation(line: 84, column: 13, scope: !208)
!214 = !DILocation(line: 84, column: 14, scope: !208)
!215 = !DILocation(line: 84, column: 27, scope: !208)
!216 = !DILocation(line: 84, column: 46, scope: !208)
!217 = !DILocation(line: 84, column: 49, scope: !208)
!218 = !DILocation(line: 84, column: 55, scope: !208)
!219 = !DILocation(line: 84, column: 41, scope: !208)
!220 = !DILocation(line: 84, column: 60, scope: !208)
!221 = !DILocation(line: 84, column: 10, scope: !208)
!222 = !DILocation(line: 84, column: 2, scope: !208)
!223 = distinct !DISubprogram(name: "cachessess_del_cb", scope: !7, file: !7, line: 88, type: !101, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!224 = !DILocalVariable(name: "it", arg: 1, scope: !223, file: !7, line: 88, type: !90)
!225 = !DILocation(line: 88, column: 32, scope: !223)
!226 = !DILocation(line: 90, column: 21, scope: !223)
!227 = !DILocation(line: 90, column: 33, scope: !223)
!228 = !DILocation(line: 90, column: 2, scope: !223)
!229 = !DILocation(line: 91, column: 1, scope: !223)
!230 = distinct !DISubprogram(name: "cachessess_get_cb", scope: !7, file: !7, line: 94, type: !106, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!231 = !DILocalVariable(name: "key", arg: 1, scope: !230, file: !7, line: 94, type: !108)
!232 = !DILocation(line: 94, column: 31, scope: !230)
!233 = !DILocation(line: 96, column: 28, scope: !230)
!234 = !DILocation(line: 96, column: 40, scope: !230)
!235 = !DILocation(line: 96, column: 9, scope: !230)
!236 = !DILocation(line: 96, column: 2, scope: !230)
!237 = distinct !DISubprogram(name: "cachessess_put_cb", scope: !7, file: !7, line: 100, type: !112, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!238 = !DILocalVariable(name: "key", arg: 1, scope: !237, file: !7, line: 100, type: !108)
!239 = !DILocation(line: 100, column: 31, scope: !237)
!240 = !DILocalVariable(name: "ret", arg: 2, scope: !237, file: !7, line: 100, type: !114)
!241 = !DILocation(line: 100, column: 41, scope: !237)
!242 = !DILocation(line: 102, column: 28, scope: !237)
!243 = !DILocation(line: 102, column: 40, scope: !237)
!244 = !DILocation(line: 102, column: 45, scope: !237)
!245 = !DILocation(line: 102, column: 9, scope: !237)
!246 = !DILocation(line: 102, column: 2, scope: !237)
!247 = distinct !DISubprogram(name: "cachessess_free_key_cb", scope: !7, file: !7, line: 106, type: !118, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!248 = !DILocalVariable(name: "key", arg: 1, scope: !247, file: !7, line: 106, type: !108)
!249 = !DILocation(line: 106, column: 36, scope: !247)
!250 = !DILocation(line: 108, column: 14, scope: !247)
!251 = !DILocation(line: 108, column: 2, scope: !247)
!252 = !DILocation(line: 109, column: 1, scope: !247)
!253 = distinct !DISubprogram(name: "cachessess_free_val_cb", scope: !7, file: !7, line: 112, type: !123, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!254 = !DILocalVariable(name: "val", arg: 1, scope: !253, file: !7, line: 112, type: !125)
!255 = !DILocation(line: 112, column: 36, scope: !253)
!256 = !DILocation(line: 114, column: 14, scope: !253)
!257 = !DILocation(line: 114, column: 2, scope: !253)
!258 = !DILocation(line: 115, column: 1, scope: !253)
!259 = distinct !DISubprogram(name: "cachessess_get_key_cb", scope: !7, file: !7, line: 118, type: !129, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!260 = !DILocalVariable(name: "it", arg: 1, scope: !259, file: !7, line: 118, type: !90)
!261 = !DILocation(line: 118, column: 36, scope: !259)
!262 = !DILocation(line: 120, column: 29, scope: !259)
!263 = !DILocation(line: 120, column: 10, scope: !259)
!264 = !DILocation(line: 120, column: 11, scope: !259)
!265 = !DILocation(line: 120, column: 24, scope: !259)
!266 = !DILocation(line: 120, column: 9, scope: !259)
!267 = !DILocation(line: 120, column: 2, scope: !259)
!268 = distinct !DISubprogram(name: "cachessess_get_val_cb", scope: !7, file: !7, line: 124, type: !134, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!269 = !DILocalVariable(name: "it", arg: 1, scope: !268, file: !7, line: 124, type: !90)
!270 = !DILocation(line: 124, column: 36, scope: !268)
!271 = !DILocation(line: 126, column: 29, scope: !268)
!272 = !DILocation(line: 126, column: 10, scope: !268)
!273 = !DILocation(line: 126, column: 11, scope: !268)
!274 = !DILocation(line: 126, column: 24, scope: !268)
!275 = !DILocation(line: 126, column: 9, scope: !268)
!276 = !DILocation(line: 126, column: 2, scope: !268)
!277 = distinct !DISubprogram(name: "cachessess_set_val_cb", scope: !7, file: !7, line: 130, type: !139, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!278 = !DILocalVariable(name: "it", arg: 1, scope: !277, file: !7, line: 130, type: !90)
!279 = !DILocation(line: 130, column: 36, scope: !277)
!280 = !DILocalVariable(name: "val", arg: 2, scope: !277, file: !7, line: 130, type: !125)
!281 = !DILocation(line: 130, column: 52, scope: !277)
!282 = !DILocation(line: 132, column: 29, scope: !277)
!283 = !DILocation(line: 132, column: 22, scope: !277)
!284 = !DILocation(line: 132, column: 3, scope: !277)
!285 = !DILocation(line: 132, column: 4, scope: !277)
!286 = !DILocation(line: 132, column: 17, scope: !277)
!287 = !DILocation(line: 132, column: 27, scope: !277)
!288 = !DILocation(line: 133, column: 1, scope: !277)
!289 = distinct !DISubprogram(name: "cachessess_unpackverify_val_cb", scope: !7, file: !7, line: 136, type: !144, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!290 = !DILocalVariable(name: "val", arg: 1, scope: !289, file: !7, line: 136, type: !125)
!291 = !DILocation(line: 136, column: 44, scope: !289)
!292 = !DILocalVariable(name: "copy", arg: 2, scope: !289, file: !7, line: 136, type: !63)
!293 = !DILocation(line: 136, column: 53, scope: !289)
!294 = !DILocalVariable(name: "valbuf", scope: !289, file: !7, line: 138, type: !22)
!295 = !DILocation(line: 138, column: 12, scope: !289)
!296 = !DILocation(line: 138, column: 21, scope: !289)
!297 = !DILocalVariable(name: "sess", scope: !289, file: !7, line: 139, type: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !300, line: 376, baseType: !301)
!300 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !300, line: 498, size: 2816, align: 64, elements: !302)
!302 = !{!303, !304, !305, !309, !310, !314, !315, !319, !320, !321, !323, !324, !325, !328, !852, !853, !854, !855, !856, !857, !875, !876, !881, !882, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !301, file: !300, line: 499, baseType: !63, size: 32, align: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !301, file: !300, line: 502, baseType: !14, size: 32, align: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !301, file: !300, line: 503, baseType: !306, size: 64, align: 8, offset: 64)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, align: 8, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !301, file: !300, line: 504, baseType: !63, size: 32, align: 32, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !301, file: !300, line: 505, baseType: !311, size: 384, align: 8, offset: 160)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 384, align: 8, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 48)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !301, file: !300, line: 507, baseType: !14, size: 32, align: 32, offset: 544)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !301, file: !300, line: 508, baseType: !316, size: 256, align: 8, offset: 576)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, align: 8, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !301, file: !300, line: 514, baseType: !14, size: 32, align: 32, offset: 832)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !301, file: !300, line: 515, baseType: !316, size: 256, align: 8, offset: 864)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !301, file: !300, line: 521, baseType: !322, size: 64, align: 64, offset: 1152)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !301, file: !300, line: 522, baseType: !322, size: 64, align: 64, offset: 1216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !301, file: !300, line: 529, baseType: !63, size: 32, align: 32, offset: 1280)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !301, file: !300, line: 531, baseType: !326, size: 64, align: 64, offset: 1344)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !300, line: 531, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !301, file: !300, line: 538, baseType: !329, size: 64, align: 64, offset: 1408)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !331, line: 154, baseType: !332)
!331 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !333, line: 270, size: 1472, align: 64, elements: !334)
!333 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!334 = !{!335, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !808, !812, !817, !819, !830, !834}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !332, file: !333, line: 271, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !333, line: 254, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !333, line: 242, size: 832, align: 64, elements: !339)
!339 = !{!340, !350, !351, !431, !468, !477, !478, !767, !768, !769, !774}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !338, file: !333, line: 243, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !331, line: 83, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !344, line: 247, size: 192, align: 64, elements: !345)
!344 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!345 = !{!346, !347, !348, !349}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !343, file: !344, line: 248, baseType: !63, size: 32, align: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !343, file: !344, line: 249, baseType: !63, size: 32, align: 32, offset: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !343, file: !344, line: 250, baseType: !28, size: 64, align: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !344, line: 256, baseType: !84, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !338, file: !333, line: 244, baseType: !341, size: 64, align: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !338, file: !333, line: 245, baseType: !352, size: 64, align: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !331, line: 155, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !333, line: 143, size: 128, align: 64, elements: !355)
!355 = !{!356, !369}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !354, file: !333, line: 144, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !331, line: 103, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !344, line: 218, size: 320, align: 64, elements: !360)
!360 = !{!361, !364, !365, !366, !367, !368}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !359, file: !344, line: 219, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !359, file: !344, line: 219, baseType: !362, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !359, file: !344, line: 220, baseType: !63, size: 32, align: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !359, file: !344, line: 221, baseType: !63, size: 32, align: 32, offset: 160)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !359, file: !344, line: 222, baseType: !36, size: 64, align: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !344, line: 223, baseType: !63, size: 32, align: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !354, file: !333, line: 145, baseType: !370, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !344, line: 561, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !344, line: 532, size: 128, align: 64, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !344, line: 533, baseType: !63, size: 32, align: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !344, line: 560, baseType: !376, size: 64, align: 64, offset: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !344, line: 534, size: 64, align: 64, elements: !377)
!377 = !{!378, !379, !381, !384, !385, !386, !389, !392, !395, !398, !401, !404, !407, !410, !413, !416, !419, !422, !425, !426, !427}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !376, file: !344, line: 535, baseType: !322, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !376, file: !344, line: 536, baseType: !380, size: 32, align: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !331, line: 99, baseType: !63)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !376, file: !344, line: 537, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !331, line: 98, baseType: !343)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !376, file: !344, line: 538, baseType: !357, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !376, file: !344, line: 539, baseType: !341, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !376, file: !344, line: 540, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !331, line: 84, baseType: !343)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !376, file: !344, line: 541, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !331, line: 85, baseType: !343)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !376, file: !344, line: 542, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !331, line: 86, baseType: !343)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !376, file: !344, line: 543, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !331, line: 87, baseType: !343)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !376, file: !344, line: 544, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !331, line: 88, baseType: !343)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !376, file: !344, line: 545, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !331, line: 89, baseType: !343)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !376, file: !344, line: 546, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !331, line: 90, baseType: !343)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !376, file: !344, line: 547, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !331, line: 92, baseType: !343)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !376, file: !344, line: 548, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !331, line: 91, baseType: !343)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !376, file: !344, line: 549, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !331, line: 93, baseType: !343)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !376, file: !344, line: 550, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !331, line: 95, baseType: !343)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !376, file: !344, line: 551, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !331, line: 96, baseType: !343)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !376, file: !344, line: 552, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !331, line: 97, baseType: !343)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !376, file: !344, line: 557, baseType: !382, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !376, file: !344, line: 558, baseType: !382, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !376, file: !344, line: 559, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !344, line: 307, baseType: !430)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !344, line: 307, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !338, file: !333, line: 246, baseType: !432, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !331, line: 159, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !333, line: 179, size: 320, align: 64, elements: !435)
!435 = !{!436, !456, !457, !466, !467}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !434, file: !333, line: 180, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !333, line: 175, size: 256, align: 64, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !438, file: !333, line: 175, baseType: !441, size: 256, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !442, line: 72, baseType: !443)
!442 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !442, line: 66, size: 256, align: 64, elements: !444)
!444 = !{!445, !446, !448, !449, !450}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !443, file: !442, line: 67, baseType: !63, size: 32, align: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !443, file: !442, line: 68, baseType: !447, size: 64, align: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !443, file: !442, line: 69, baseType: !63, size: 32, align: 32, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !443, file: !442, line: 70, baseType: !63, size: 32, align: 32, offset: 160)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !443, file: !442, line: 71, baseType: !451, size: 64, align: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!63, !454, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !434, file: !333, line: 181, baseType: !63, size: 32, align: 32, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !434, file: !333, line: 183, baseType: !458, size: 64, align: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !331, line: 127, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !461, line: 77, size: 192, align: 64, elements: !462)
!461 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!462 = !{!463, !464, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !460, file: !461, line: 78, baseType: !31, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !460, file: !461, line: 79, baseType: !322, size: 64, align: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !460, file: !461, line: 80, baseType: !31, size: 64, align: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !434, file: !333, line: 188, baseType: !28, size: 64, align: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !434, file: !333, line: 189, baseType: !63, size: 32, align: 32, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !338, file: !333, line: 247, baseType: !469, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !333, line: 155, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !333, line: 152, size: 128, align: 64, elements: !472)
!472 = !{!473, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !471, file: !333, line: 153, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !331, line: 94, baseType: !343)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !471, file: !333, line: 154, baseType: !474, size: 64, align: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !338, file: !333, line: 248, baseType: !432, size: 64, align: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !338, file: !333, line: 249, baseType: !479, size: 64, align: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !331, line: 160, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !333, line: 157, size: 192, align: 64, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !481, file: !333, line: 158, baseType: !352, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !481, file: !333, line: 159, baseType: !390, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !481, file: !333, line: 160, baseType: !486, size: 64, align: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !331, line: 133, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !489, line: 129, size: 448, align: 64, elements: !490)
!489 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!490 = !{!491, !492, !493, !494, !499, !503, !761, !762}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !489, line: 130, baseType: !63, size: 32, align: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !488, file: !489, line: 131, baseType: !63, size: 32, align: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !488, file: !489, line: 132, baseType: !63, size: 32, align: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !488, file: !489, line: 133, baseType: !495, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !331, line: 135, baseType: !498)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !331, line: 135, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !488, file: !489, line: 134, baseType: !500, size: 64, align: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !331, line: 177, baseType: !502)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !331, line: 177, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !488, file: !489, line: 149, baseType: !504, size: 64, align: 64, offset: 256)
!504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !489, line: 135, size: 64, align: 64, elements: !505)
!505 = !{!506, !507, !637, !705, !758}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !504, file: !489, line: 136, baseType: !322, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !504, file: !489, line: 138, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !510, line: 132, size: 1344, align: 64, elements: !511)
!510 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!511 = !{!512, !513, !514, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !626, !627, !628, !629, !630, !631, !632, !636}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !509, file: !510, line: 137, baseType: !63, size: 32, align: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !509, file: !510, line: 138, baseType: !84, size: 64, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !509, file: !510, line: 139, baseType: !515, size: 64, align: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !331, line: 147, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !510, line: 85, size: 896, align: 64, elements: !519)
!519 = !{!520, !521, !527, !528, !529, !530, !550, !567, !571, !572, !573, !574, !581, !585}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !510, line: 86, baseType: !362, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !518, file: !510, line: 87, baseType: !522, size: 64, align: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!63, !63, !36, !28, !525, !63}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !331, line: 146, baseType: !509)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !518, file: !510, line: 89, baseType: !522, size: 64, align: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !518, file: !510, line: 91, baseType: !522, size: 64, align: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !518, file: !510, line: 93, baseType: !522, size: 64, align: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !518, file: !510, line: 96, baseType: !531, size: 64, align: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!63, !534, !545, !525, !547}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !331, line: 120, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !537, line: 313, size: 192, align: 64, elements: !538)
!537 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!538 = !{!539, !541, !542, !543, !544}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !536, file: !537, line: 314, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !536, file: !537, line: 316, baseType: !63, size: 32, align: 32, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !536, file: !537, line: 318, baseType: !63, size: 32, align: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !536, file: !537, line: 319, baseType: !63, size: 32, align: 32, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !537, line: 320, baseType: !63, size: 32, align: 32, offset: 160)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !331, line: 121, baseType: !549)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !331, line: 121, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !518, file: !510, line: 98, baseType: !551, size: 64, align: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!63, !534, !545, !545, !545, !547, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !331, line: 123, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !537, line: 324, size: 832, align: 64, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !566}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !556, file: !537, line: 325, baseType: !63, size: 32, align: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !556, file: !537, line: 326, baseType: !535, size: 192, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !556, file: !537, line: 327, baseType: !535, size: 192, align: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !556, file: !537, line: 328, baseType: !535, size: 192, align: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !556, file: !537, line: 330, baseType: !563, size: 128, align: 64, offset: 640)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, align: 64, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 2)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !537, line: 333, baseType: !63, size: 32, align: 32, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !518, file: !510, line: 101, baseType: !568, size: 64, align: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!63, !525}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !518, file: !510, line: 103, baseType: !568, size: 64, align: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !510, line: 105, baseType: !63, size: 32, align: 32, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !518, file: !510, line: 107, baseType: !322, size: 64, align: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !518, file: !510, line: 116, baseType: !575, size: 64, align: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!63, !63, !36, !14, !28, !578, !579}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !518, file: !510, line: 120, baseType: !582, size: 64, align: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64, align: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!63, !63, !36, !14, !36, !14, !579}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !518, file: !510, line: 129, baseType: !586, size: 64, align: 64, offset: 832)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!63, !525, !63, !534, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !331, line: 125, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !537, line: 349, size: 192, align: 64, elements: !592)
!592 = !{!593, !594, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !591, file: !537, line: 350, baseType: !14, size: 32, align: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !591, file: !537, line: 351, baseType: !4, size: 64, align: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !591, file: !537, line: 357, baseType: !596, size: 64, align: 64, offset: 128)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !537, line: 352, size: 64, align: 64, elements: !597)
!597 = !{!598, !602}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !596, file: !537, line: 354, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !63, !63, !4}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !596, file: !537, line: 356, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!63, !63, !63, !589}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !509, file: !510, line: 141, baseType: !500, size: 64, align: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !509, file: !510, line: 142, baseType: !534, size: 64, align: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !509, file: !510, line: 143, baseType: !534, size: 64, align: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !509, file: !510, line: 144, baseType: !534, size: 64, align: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !509, file: !510, line: 145, baseType: !534, size: 64, align: 64, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !509, file: !510, line: 146, baseType: !534, size: 64, align: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !509, file: !510, line: 147, baseType: !534, size: 64, align: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !509, file: !510, line: 148, baseType: !534, size: 64, align: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !509, file: !510, line: 149, baseType: !534, size: 64, align: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !509, file: !510, line: 151, baseType: !616, size: 128, align: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !331, line: 195, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !618, line: 292, size: 128, align: 64, elements: !619)
!618 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!619 = !{!620, !625}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !617, file: !618, line: 293, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !618, line: 297, size: 256, align: 64, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !622, file: !618, line: 297, baseType: !441, size: 256, align: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !617, file: !618, line: 295, baseType: !63, size: 32, align: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !509, file: !510, line: 152, baseType: !63, size: 32, align: 32, offset: 896)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !510, line: 153, baseType: !63, size: 32, align: 32, offset: 928)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !509, file: !510, line: 155, baseType: !554, size: 64, align: 64, offset: 960)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !509, file: !510, line: 156, baseType: !554, size: 64, align: 64, offset: 1024)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !509, file: !510, line: 157, baseType: !554, size: 64, align: 64, offset: 1088)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !509, file: !510, line: 162, baseType: !322, size: 64, align: 64, offset: 1152)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !509, file: !510, line: 163, baseType: !633, size: 64, align: 64, offset: 1216)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !331, line: 122, baseType: !635)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !331, line: 122, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !509, file: !510, line: 164, baseType: !633, size: 64, align: 64, offset: 1280)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !504, file: !489, line: 141, baseType: !638, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !640, line: 155, size: 1088, align: 64, elements: !641)
!640 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !704}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !639, file: !640, line: 160, baseType: !63, size: 32, align: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !639, file: !640, line: 161, baseType: !84, size: 64, align: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !639, file: !640, line: 162, baseType: !63, size: 32, align: 32, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !639, file: !640, line: 163, baseType: !534, size: 64, align: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !639, file: !640, line: 164, baseType: !534, size: 64, align: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !639, file: !640, line: 165, baseType: !534, size: 64, align: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !639, file: !640, line: 166, baseType: !534, size: 64, align: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !639, file: !640, line: 167, baseType: !534, size: 64, align: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !639, file: !640, line: 168, baseType: !534, size: 64, align: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !639, file: !640, line: 169, baseType: !534, size: 64, align: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !640, line: 170, baseType: !63, size: 32, align: 32, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !639, file: !640, line: 172, baseType: !554, size: 64, align: 64, offset: 704)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !639, file: !640, line: 173, baseType: !63, size: 32, align: 32, offset: 768)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !639, file: !640, line: 174, baseType: !616, size: 128, align: 64, offset: 832)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !639, file: !640, line: 175, baseType: !657, size: 64, align: 64, offset: 960)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !331, line: 144, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !640, line: 129, size: 768, align: 64, elements: !661)
!661 = !{!662, !663, !675, !680, !684, !688, !692, !696, !697, !698, !699, !703}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !660, file: !640, line: 130, baseType: !362, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !660, file: !640, line: 131, baseType: !664, size: 64, align: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !36, !63, !673}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !640, line: 127, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !640, line: 124, size: 128, align: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !669, file: !640, line: 125, baseType: !534, size: 64, align: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !669, file: !640, line: 126, baseType: !534, size: 64, align: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !331, line: 143, baseType: !639)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !660, file: !640, line: 132, baseType: !676, size: 64, align: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64, align: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!63, !673, !547, !679, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !660, file: !640, line: 134, baseType: !681, size: 64, align: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!63, !36, !63, !667, !673}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !660, file: !640, line: 136, baseType: !685, size: 64, align: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!63, !673, !534, !534, !534, !534, !534, !534, !547, !554}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !660, file: !640, line: 140, baseType: !689, size: 64, align: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!63, !673, !534, !534, !545, !545, !547, !554}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !660, file: !640, line: 142, baseType: !693, size: 64, align: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64, align: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!63, !673}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !660, file: !640, line: 143, baseType: !693, size: 64, align: 64, offset: 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !640, line: 144, baseType: !63, size: 32, align: 32, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !660, file: !640, line: 145, baseType: !322, size: 64, align: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !660, file: !640, line: 147, baseType: !700, size: 64, align: 64, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64, align: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!63, !673, !63, !36, !63, !114, !540, !589}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !660, file: !640, line: 152, baseType: !693, size: 64, align: 64, offset: 704)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !639, file: !640, line: 177, baseType: !500, size: 64, align: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !504, file: !489, line: 144, baseType: !706, size: 64, align: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !708, line: 135, size: 1152, align: 64, elements: !709)
!708 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !757}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !707, file: !708, line: 140, baseType: !63, size: 32, align: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !707, file: !708, line: 141, baseType: !63, size: 32, align: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !707, file: !708, line: 142, baseType: !534, size: 64, align: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !707, file: !708, line: 143, baseType: !534, size: 64, align: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !707, file: !708, line: 144, baseType: !84, size: 64, align: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !707, file: !708, line: 145, baseType: !534, size: 64, align: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !707, file: !708, line: 146, baseType: !534, size: 64, align: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !708, line: 147, baseType: !63, size: 32, align: 32, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !707, file: !708, line: 148, baseType: !554, size: 64, align: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !707, file: !708, line: 150, baseType: !534, size: 64, align: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !707, file: !708, line: 151, baseType: !534, size: 64, align: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !707, file: !708, line: 152, baseType: !28, size: 64, align: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !707, file: !708, line: 153, baseType: !63, size: 32, align: 32, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !707, file: !708, line: 154, baseType: !534, size: 64, align: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !707, file: !708, line: 155, baseType: !63, size: 32, align: 32, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !707, file: !708, line: 156, baseType: !616, size: 128, align: 64, offset: 896)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !707, file: !708, line: 157, baseType: !727, size: 64, align: 64, offset: 1024)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !331, line: 141, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !708, line: 117, size: 576, align: 64, elements: !731)
!731 = !{!732, !733, !739, !743, !749, !750, !751, !752, !753}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !730, file: !708, line: 118, baseType: !362, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !730, file: !708, line: 120, baseType: !734, size: 64, align: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!63, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !331, line: 140, baseType: !707)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !730, file: !708, line: 121, baseType: !740, size: 64, align: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64, align: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!63, !28, !545, !737}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !730, file: !708, line: 123, baseType: !744, size: 64, align: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64, align: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!63, !747, !534, !545, !545, !545, !547, !554}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !730, file: !708, line: 126, baseType: !734, size: 64, align: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !730, file: !708, line: 127, baseType: !734, size: 64, align: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !708, line: 128, baseType: !63, size: 32, align: 32, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !730, file: !708, line: 129, baseType: !322, size: 64, align: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !730, file: !708, line: 131, baseType: !754, size: 64, align: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, align: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!63, !737, !63, !63, !589}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !707, file: !708, line: 158, baseType: !500, size: 64, align: 64, offset: 1088)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !504, file: !489, line: 147, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !489, line: 147, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !488, file: !489, line: 150, baseType: !63, size: 32, align: 32, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !488, file: !489, line: 151, baseType: !763, size: 64, align: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64, align: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !333, line: 223, size: 256, align: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !764, file: !333, line: 223, baseType: !441, size: 256, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !338, file: !333, line: 250, baseType: !390, size: 64, align: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !338, file: !333, line: 251, baseType: !390, size: 64, align: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !338, file: !333, line: 252, baseType: !770, size: 64, align: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, align: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !333, line: 204, size: 256, align: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !771, file: !333, line: 204, baseType: !441, size: 256, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !338, file: !333, line: 253, baseType: !775, size: 192, align: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !344, line: 269, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !344, line: 265, size: 192, align: 64, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !776, file: !344, line: 266, baseType: !28, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !776, file: !344, line: 267, baseType: !84, size: 64, align: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !776, file: !344, line: 268, baseType: !63, size: 32, align: 32, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !332, file: !333, line: 272, baseType: !352, size: 64, align: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !332, file: !333, line: 273, baseType: !390, size: 64, align: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !332, file: !333, line: 274, baseType: !63, size: 32, align: 32, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !332, file: !333, line: 275, baseType: !63, size: 32, align: 32, offset: 224)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !333, line: 276, baseType: !322, size: 64, align: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !332, file: !333, line: 277, baseType: !616, size: 128, align: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !332, file: !333, line: 279, baseType: !84, size: 64, align: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !332, file: !333, line: 280, baseType: !84, size: 64, align: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !332, file: !333, line: 281, baseType: !33, size: 64, align: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !332, file: !333, line: 282, baseType: !33, size: 64, align: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !332, file: !333, line: 283, baseType: !33, size: 64, align: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !332, file: !333, line: 284, baseType: !33, size: 64, align: 64, offset: 768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !332, file: !333, line: 285, baseType: !393, size: 64, align: 64, offset: 832)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !332, file: !333, line: 286, baseType: !795, size: 64, align: 64, offset: 896)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64, align: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !331, line: 186, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !798, line: 262, size: 192, align: 64, elements: !799)
!798 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!799 = !{!800, !801, !807}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !797, file: !798, line: 263, baseType: !393, size: 64, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !797, file: !798, line: 264, baseType: !802, size: 64, align: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !798, line: 209, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !798, line: 220, size: 256, align: 64, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !804, file: !798, line: 220, baseType: !441, size: 256, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !797, file: !798, line: 265, baseType: !341, size: 64, align: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !332, file: !333, line: 287, baseType: !809, size: 64, align: 64, offset: 960)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !331, line: 184, baseType: !811)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !331, line: 184, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !332, file: !333, line: 288, baseType: !813, size: 64, align: 64, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64, align: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !798, line: 259, size: 256, align: 64, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !814, file: !798, line: 259, baseType: !441, size: 256, align: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !332, file: !333, line: 289, baseType: !818, size: 64, align: 64, offset: 1088)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !332, file: !333, line: 290, baseType: !820, size: 64, align: 64, offset: 1152)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !331, line: 189, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !798, line: 332, size: 128, align: 64, elements: !823)
!823 = !{!824, !829}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !822, file: !798, line: 333, baseType: !825, size: 64, align: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, align: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !798, line: 330, size: 256, align: 64, elements: !827)
!827 = !{!828}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !826, file: !798, line: 330, baseType: !441, size: 256, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !822, file: !798, line: 334, baseType: !825, size: 64, align: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !332, file: !333, line: 296, baseType: !831, size: 160, align: 8, offset: 1216)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, align: 8, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 20)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !332, file: !333, line: 298, baseType: !835, size: 64, align: 64, offset: 1408)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !333, line: 268, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !333, line: 262, size: 320, align: 64, elements: !838)
!838 = !{!839, !844, !845, !846, !847}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !837, file: !333, line: 263, baseType: !840, size: 64, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64, align: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !344, line: 801, size: 256, align: 64, elements: !842)
!842 = !{!843}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !841, file: !344, line: 801, baseType: !441, size: 256, align: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !837, file: !333, line: 264, baseType: !840, size: 64, align: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !837, file: !333, line: 265, baseType: !423, size: 64, align: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !837, file: !333, line: 266, baseType: !393, size: 64, align: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !837, file: !333, line: 267, baseType: !848, size: 64, align: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64, align: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !344, line: 170, size: 256, align: 64, elements: !850)
!850 = !{!851}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !849, file: !344, line: 170, baseType: !441, size: 256, align: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !301, file: !300, line: 543, baseType: !84, size: 64, align: 64, offset: 1472)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !301, file: !300, line: 544, baseType: !63, size: 32, align: 32, offset: 1536)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !301, file: !300, line: 545, baseType: !84, size: 64, align: 64, offset: 1600)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !301, file: !300, line: 546, baseType: !84, size: 64, align: 64, offset: 1664)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !301, file: !300, line: 547, baseType: !14, size: 32, align: 32, offset: 1728)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !301, file: !300, line: 548, baseType: !858, size: 64, align: 64, offset: 1792)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !300, line: 375, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !300, line: 418, size: 704, align: 64, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !861, file: !300, line: 419, baseType: !63, size: 32, align: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !300, line: 420, baseType: !362, size: 64, align: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !861, file: !300, line: 421, baseType: !33, size: 64, align: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !861, file: !300, line: 426, baseType: !33, size: 64, align: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !861, file: !300, line: 427, baseType: !33, size: 64, align: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !861, file: !300, line: 428, baseType: !33, size: 64, align: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !861, file: !300, line: 429, baseType: !33, size: 64, align: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !861, file: !300, line: 430, baseType: !33, size: 64, align: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !861, file: !300, line: 431, baseType: !33, size: 64, align: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !861, file: !300, line: 432, baseType: !33, size: 64, align: 64, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !861, file: !300, line: 433, baseType: !63, size: 32, align: 32, offset: 640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !861, file: !300, line: 434, baseType: !63, size: 32, align: 32, offset: 672)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !301, file: !300, line: 549, baseType: !33, size: 64, align: 64, offset: 1856)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !301, file: !300, line: 551, baseType: !877, size: 64, align: 64, offset: 1920)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, align: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !300, line: 380, size: 256, align: 64, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !878, file: !300, line: 380, baseType: !441, size: 256, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !301, file: !300, line: 552, baseType: !616, size: 128, align: 64, offset: 1984)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !301, file: !300, line: 557, baseType: !883, size: 64, align: 64, offset: 2112)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !300, line: 557, baseType: !883, size: 64, align: 64, offset: 2176)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !301, file: !300, line: 559, baseType: !322, size: 64, align: 64, offset: 2240)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !301, file: !300, line: 561, baseType: !31, size: 64, align: 64, offset: 2304)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !301, file: !300, line: 562, baseType: !28, size: 64, align: 64, offset: 2368)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !301, file: !300, line: 563, baseType: !31, size: 64, align: 64, offset: 2432)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !301, file: !300, line: 564, baseType: !28, size: 64, align: 64, offset: 2496)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !301, file: !300, line: 567, baseType: !28, size: 64, align: 64, offset: 2560)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !301, file: !300, line: 568, baseType: !31, size: 64, align: 64, offset: 2624)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !301, file: !300, line: 569, baseType: !84, size: 64, align: 64, offset: 2688)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !301, file: !300, line: 572, baseType: !322, size: 64, align: 64, offset: 2752)
!894 = !DILocation(line: 139, column: 15, scope: !289)
!895 = !DILocalVariable(name: "p", scope: !289, file: !7, line: 140, type: !36)
!896 = !DILocation(line: 140, column: 23, scope: !289)
!897 = !DILocation(line: 142, column: 29, scope: !289)
!898 = !DILocation(line: 142, column: 37, scope: !289)
!899 = !DILocation(line: 142, column: 4, scope: !289)
!900 = !DILocation(line: 143, column: 34, scope: !289)
!901 = !DILocation(line: 143, column: 42, scope: !289)
!902 = !DILocation(line: 143, column: 9, scope: !289)
!903 = !DILocation(line: 143, column: 7, scope: !289)
!904 = !DILocation(line: 144, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !289, file: !7, line: 144, column: 6)
!906 = !DILocation(line: 144, column: 6, scope: !289)
!907 = !DILocation(line: 145, column: 3, scope: !905)
!908 = !DILocation(line: 146, column: 28, scope: !909)
!909 = distinct !DILexicalBlock(scope: !289, file: !7, line: 146, column: 6)
!910 = !DILocation(line: 146, column: 7, scope: !909)
!911 = !DILocation(line: 146, column: 6, scope: !289)
!912 = !DILocation(line: 147, column: 20, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !7, line: 146, column: 35)
!914 = !DILocation(line: 147, column: 3, scope: !913)
!915 = !DILocation(line: 148, column: 3, scope: !913)
!916 = !DILocation(line: 150, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !289, file: !7, line: 150, column: 6)
!918 = !DILocation(line: 150, column: 6, scope: !289)
!919 = !DILocation(line: 151, column: 10, scope: !917)
!920 = !DILocation(line: 151, column: 3, scope: !917)
!921 = !DILocation(line: 152, column: 19, scope: !289)
!922 = !DILocation(line: 152, column: 2, scope: !289)
!923 = !DILocation(line: 153, column: 2, scope: !289)
!924 = !DILocation(line: 154, column: 1, scope: !289)
!925 = distinct !DISubprogram(name: "cachessess_fini_cb", scope: !7, file: !7, line: 157, type: !149, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!926 = !DILocation(line: 159, column: 25, scope: !925)
!927 = !DILocation(line: 159, column: 2, scope: !925)
!928 = !DILocation(line: 160, column: 1, scope: !925)
!929 = distinct !DISubprogram(name: "cachessess_mkkey", scope: !7, file: !7, line: 183, type: !930, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!930 = !DISubroutineType(types: !931)
!931 = !{!108, !36, !932}
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!933 = !DILocalVariable(name: "id", arg: 1, scope: !929, file: !7, line: 183, type: !36)
!934 = !DILocation(line: 183, column: 39, scope: !929)
!935 = !DILocalVariable(name: "idlen", arg: 2, scope: !929, file: !7, line: 183, type: !932)
!936 = !DILocation(line: 183, column: 56, scope: !929)
!937 = !DILocation(line: 185, column: 25, scope: !929)
!938 = !DILocation(line: 185, column: 29, scope: !929)
!939 = !DILocation(line: 185, column: 9, scope: !929)
!940 = !DILocation(line: 185, column: 2, scope: !929)
!941 = distinct !DISubprogram(name: "cachessess_mkval", scope: !7, file: !7, line: 189, type: !942, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!942 = !DISubroutineType(types: !943)
!943 = !{!125, !298}
!944 = !DILocalVariable(name: "sess", arg: 1, scope: !941, file: !7, line: 189, type: !298)
!945 = !DILocation(line: 189, column: 31, scope: !941)
!946 = !DILocalVariable(name: "db", scope: !941, file: !7, line: 191, type: !22)
!947 = !DILocation(line: 191, column: 12, scope: !941)
!948 = !DILocalVariable(name: "p", scope: !941, file: !7, line: 192, type: !28)
!949 = !DILocation(line: 192, column: 17, scope: !941)
!950 = !DILocalVariable(name: "asn1sz", scope: !941, file: !7, line: 193, type: !31)
!951 = !DILocation(line: 193, column: 9, scope: !941)
!952 = !DILocation(line: 195, column: 27, scope: !941)
!953 = !DILocation(line: 195, column: 11, scope: !941)
!954 = !DILocation(line: 195, column: 9, scope: !941)
!955 = !DILocation(line: 196, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !941, file: !7, line: 196, column: 6)
!957 = !DILocation(line: 196, column: 14, scope: !956)
!958 = !DILocation(line: 196, column: 41, scope: !959)
!959 = !DILexicalBlockFile(scope: !956, file: !7, discriminator: 1)
!960 = !DILocation(line: 196, column: 24, scope: !959)
!961 = !DILocation(line: 196, column: 22, scope: !959)
!962 = !DILocation(line: 196, column: 6, scope: !959)
!963 = !DILocation(line: 197, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !956, file: !7, line: 196, column: 51)
!965 = !DILocation(line: 199, column: 6, scope: !941)
!966 = !DILocation(line: 199, column: 10, scope: !941)
!967 = !DILocation(line: 199, column: 4, scope: !941)
!968 = !DILocation(line: 200, column: 18, scope: !941)
!969 = !DILocation(line: 200, column: 2, scope: !941)
!970 = !DILocation(line: 201, column: 9, scope: !941)
!971 = !DILocation(line: 201, column: 2, scope: !941)
!972 = !DILocation(line: 202, column: 1, scope: !941)
!973 = distinct !DISubprogram(name: "kh_del_dynbufmap_t", scope: !7, file: !7, line: 64, type: !974, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !5, !11}
!976 = !DILocalVariable(name: "h", arg: 1, scope: !973, file: !7, line: 64, type: !5)
!977 = !DILocation(line: 64, column: 4942, scope: !973)
!978 = !DILocalVariable(name: "x", arg: 2, scope: !973, file: !7, line: 64, type: !11)
!979 = !DILocation(line: 64, column: 4953, scope: !973)
!980 = !DILocation(line: 64, column: 4962, scope: !981)
!981 = distinct !DILexicalBlock(scope: !973, file: !7, line: 64, column: 4962)
!982 = !DILocation(line: 64, column: 4967, scope: !981)
!983 = !DILocation(line: 64, column: 4970, scope: !981)
!984 = !DILocation(line: 64, column: 4964, scope: !981)
!985 = !DILocation(line: 64, column: 4980, scope: !981)
!986 = !DILocation(line: 64, column: 4995, scope: !987)
!987 = !DILexicalBlockFile(scope: !981, file: !7, discriminator: 1)
!988 = !DILocation(line: 64, column: 4996, scope: !987)
!989 = !DILocation(line: 64, column: 4986, scope: !987)
!990 = !DILocation(line: 64, column: 4989, scope: !987)
!991 = !DILocation(line: 64, column: 5004, scope: !987)
!992 = !DILocation(line: 64, column: 5005, scope: !987)
!993 = !DILocation(line: 64, column: 5011, scope: !987)
!994 = !DILocation(line: 64, column: 5000, scope: !987)
!995 = !DILocation(line: 64, column: 5016, scope: !987)
!996 = !DILocation(line: 64, column: 4962, scope: !987)
!997 = !DILocation(line: 64, column: 5047, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !7, discriminator: 2)
!999 = distinct !DILexicalBlock(scope: !981, file: !7, line: 64, column: 5021)
!1000 = !DILocation(line: 64, column: 5048, scope: !998)
!1001 = !DILocation(line: 64, column: 5054, scope: !998)
!1002 = !DILocation(line: 64, column: 5043, scope: !998)
!1003 = !DILocation(line: 64, column: 5033, scope: !998)
!1004 = !DILocation(line: 64, column: 5034, scope: !998)
!1005 = !DILocation(line: 64, column: 5024, scope: !998)
!1006 = !DILocation(line: 64, column: 5027, scope: !998)
!1007 = !DILocation(line: 64, column: 5038, scope: !998)
!1008 = !DILocation(line: 64, column: 5063, scope: !998)
!1009 = !DILocation(line: 64, column: 5066, scope: !998)
!1010 = !DILocation(line: 64, column: 5061, scope: !998)
!1011 = !DILocation(line: 64, column: 5072, scope: !998)
!1012 = !DILocation(line: 64, column: 5074, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !973, file: !7, discriminator: 3)
!1014 = distinct !DISubprogram(name: "kh_get_dynbufmap_t", scope: !7, file: !7, line: 64, type: !1015, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!11, !1017, !22}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64, align: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1019 = !DILocalVariable(name: "h", arg: 1, scope: !1014, file: !7, line: 64, type: !1017)
!1020 = !DILocation(line: 64, column: 818, scope: !1014)
!1021 = !DILocalVariable(name: "key", arg: 2, scope: !1014, file: !7, line: 64, type: !22)
!1022 = !DILocation(line: 64, column: 831, scope: !1014)
!1023 = !DILocation(line: 64, column: 842, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1014, file: !7, line: 64, column: 842)
!1025 = !DILocation(line: 64, column: 845, scope: !1024)
!1026 = !DILocation(line: 64, column: 842, scope: !1014)
!1027 = !DILocalVariable(name: "k", scope: !1028, file: !7, line: 64, type: !11)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !7, line: 64, column: 856)
!1029 = !DILocation(line: 64, column: 866, scope: !1028)
!1030 = !DILocalVariable(name: "i", scope: !1028, file: !7, line: 64, type: !11)
!1031 = !DILocation(line: 64, column: 869, scope: !1028)
!1032 = !DILocalVariable(name: "last", scope: !1028, file: !7, line: 64, type: !11)
!1033 = !DILocation(line: 64, column: 872, scope: !1028)
!1034 = !DILocalVariable(name: "mask", scope: !1028, file: !7, line: 64, type: !11)
!1035 = !DILocation(line: 64, column: 878, scope: !1028)
!1036 = !DILocalVariable(name: "step", scope: !1028, file: !7, line: 64, type: !11)
!1037 = !DILocation(line: 64, column: 884, scope: !1028)
!1038 = !DILocation(line: 64, column: 884, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 1)
!1040 = !DILocation(line: 64, column: 901, scope: !1039)
!1041 = !DILocation(line: 64, column: 904, scope: !1039)
!1042 = !DILocation(line: 64, column: 914, scope: !1039)
!1043 = !DILocation(line: 64, column: 899, scope: !1039)
!1044 = !DILocation(line: 64, column: 943, scope: !1039)
!1045 = !DILocation(line: 64, column: 923, scope: !1039)
!1046 = !DILocation(line: 64, column: 921, scope: !1039)
!1047 = !DILocation(line: 64, column: 953, scope: !1039)
!1048 = !DILocation(line: 64, column: 957, scope: !1039)
!1049 = !DILocation(line: 64, column: 955, scope: !1039)
!1050 = !DILocation(line: 64, column: 951, scope: !1039)
!1051 = !DILocation(line: 64, column: 970, scope: !1039)
!1052 = !DILocation(line: 64, column: 968, scope: !1039)
!1053 = !DILocation(line: 64, column: 973, scope: !1039)
!1054 = !DILocation(line: 64, column: 992, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 2)
!1056 = !DILocation(line: 64, column: 993, scope: !1055)
!1057 = !DILocation(line: 64, column: 983, scope: !1055)
!1058 = !DILocation(line: 64, column: 986, scope: !1055)
!1059 = !DILocation(line: 64, column: 1001, scope: !1055)
!1060 = !DILocation(line: 64, column: 1002, scope: !1055)
!1061 = !DILocation(line: 64, column: 1008, scope: !1055)
!1062 = !DILocation(line: 64, column: 997, scope: !1055)
!1063 = !DILocation(line: 64, column: 1013, scope: !1055)
!1064 = !DILocation(line: 64, column: 1017, scope: !1055)
!1065 = !DILocation(line: 64, column: 1032, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 3)
!1067 = !DILocation(line: 64, column: 1033, scope: !1066)
!1068 = !DILocation(line: 64, column: 1023, scope: !1066)
!1069 = !DILocation(line: 64, column: 1026, scope: !1066)
!1070 = !DILocation(line: 64, column: 1041, scope: !1066)
!1071 = !DILocation(line: 64, column: 1042, scope: !1066)
!1072 = !DILocation(line: 64, column: 1048, scope: !1066)
!1073 = !DILocation(line: 64, column: 1037, scope: !1066)
!1074 = !DILocation(line: 64, column: 1053, scope: !1066)
!1075 = !DILocation(line: 64, column: 1057, scope: !1066)
!1076 = !DILocation(line: 64, column: 1072, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 4)
!1078 = !DILocation(line: 64, column: 1064, scope: !1077)
!1079 = !DILocation(line: 64, column: 1067, scope: !1077)
!1080 = !DILocation(line: 64, column: 1077, scope: !1077)
!1081 = !DILocation(line: 64, column: 1084, scope: !1077)
!1082 = !DILocation(line: 64, column: 1090, scope: !1077)
!1083 = !DILocation(line: 64, column: 1080, scope: !1077)
!1084 = !DILocation(line: 64, column: 1094, scope: !1077)
!1085 = !DILocation(line: 64, column: 1114, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 5)
!1087 = !DILocation(line: 64, column: 1106, scope: !1086)
!1088 = !DILocation(line: 64, column: 1109, scope: !1086)
!1089 = !DILocation(line: 64, column: 1119, scope: !1086)
!1090 = !DILocation(line: 64, column: 1125, scope: !1086)
!1091 = !DILocation(line: 64, column: 1131, scope: !1086)
!1092 = !DILocation(line: 64, column: 1145, scope: !1086)
!1093 = !DILocation(line: 64, column: 1137, scope: !1086)
!1094 = !DILocation(line: 64, column: 1140, scope: !1086)
!1095 = !DILocation(line: 64, column: 1150, scope: !1086)
!1096 = !DILocation(line: 64, column: 1098, scope: !1086)
!1097 = !DILocation(line: 64, column: 1154, scope: !1086)
!1098 = !DILocation(line: 64, column: 1060, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 6)
!1100 = !DILocation(line: 64, column: 1057, scope: !1099)
!1101 = !DILocation(line: 64, column: 973, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 7)
!1103 = !DILocation(line: 64, column: 1170, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1105, file: !7, discriminator: 8)
!1105 = distinct !DILexicalBlock(scope: !1028, file: !7, line: 64, column: 1163)
!1106 = !DILocation(line: 64, column: 1175, scope: !1104)
!1107 = !DILocation(line: 64, column: 1172, scope: !1104)
!1108 = !DILocation(line: 64, column: 1186, scope: !1104)
!1109 = !DILocation(line: 64, column: 1184, scope: !1104)
!1110 = !DILocation(line: 64, column: 1167, scope: !1104)
!1111 = !DILocation(line: 64, column: 1196, scope: !1104)
!1112 = !DILocation(line: 64, column: 1201, scope: !1104)
!1113 = !DILocation(line: 64, column: 1198, scope: !1104)
!1114 = !DILocation(line: 64, column: 1214, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !7, discriminator: 9)
!1116 = distinct !DILexicalBlock(scope: !1105, file: !7, line: 64, column: 1196)
!1117 = !DILocation(line: 64, column: 1217, scope: !1115)
!1118 = !DILocation(line: 64, column: 1207, scope: !1115)
!1119 = !DILocation(line: 64, column: 973, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 10)
!1121 = distinct !{!1121, !1122}
!1122 = !DILocation(line: 64, column: 973, scope: !1028)
!1123 = !DILocation(line: 64, column: 1248, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 11)
!1125 = !DILocation(line: 64, column: 1249, scope: !1124)
!1126 = !DILocation(line: 64, column: 1239, scope: !1124)
!1127 = !DILocation(line: 64, column: 1242, scope: !1124)
!1128 = !DILocation(line: 64, column: 1257, scope: !1124)
!1129 = !DILocation(line: 64, column: 1258, scope: !1124)
!1130 = !DILocation(line: 64, column: 1264, scope: !1124)
!1131 = !DILocation(line: 64, column: 1253, scope: !1124)
!1132 = !DILocation(line: 64, column: 1269, scope: !1124)
!1133 = !DILocation(line: 64, column: 1237, scope: !1124)
!1134 = !DILocation(line: 64, column: 1274, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 12)
!1136 = !DILocation(line: 64, column: 1277, scope: !1135)
!1137 = !DILocation(line: 64, column: 1237, scope: !1135)
!1138 = !DILocation(line: 64, column: 1289, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 13)
!1140 = !DILocation(line: 64, column: 1237, scope: !1139)
!1141 = !DILocation(line: 64, column: 1237, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1028, file: !7, discriminator: 14)
!1143 = !DILocation(line: 64, column: 1230, scope: !1142)
!1144 = !DILocation(line: 64, column: 1299, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1024, file: !7, discriminator: 15)
!1146 = !DILocation(line: 64, column: 1309, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1014, file: !7, discriminator: 16)
!1148 = distinct !DISubprogram(name: "kh_dynbuf_hash_func", scope: !7, file: !7, line: 43, type: !1149, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!11, !22}
!1151 = !DILocalVariable(name: "b", arg: 1, scope: !1148, file: !7, line: 43, type: !22)
!1152 = !DILocation(line: 43, column: 31, scope: !1148)
!1153 = !DILocalVariable(name: "p", scope: !1148, file: !7, line: 45, type: !35)
!1154 = !DILocation(line: 45, column: 11, scope: !1148)
!1155 = !DILocation(line: 45, column: 26, scope: !1148)
!1156 = !DILocation(line: 45, column: 29, scope: !1148)
!1157 = !DILocation(line: 45, column: 15, scope: !1148)
!1158 = !DILocalVariable(name: "h", scope: !1148, file: !7, line: 46, type: !11)
!1159 = !DILocation(line: 46, column: 10, scope: !1148)
!1160 = !DILocalVariable(name: "rem", scope: !1148, file: !7, line: 47, type: !63)
!1161 = !DILocation(line: 47, column: 6, scope: !1148)
!1162 = !DILocation(line: 49, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1148, file: !7, line: 49, column: 6)
!1164 = !DILocation(line: 49, column: 16, scope: !1163)
!1165 = !DILocation(line: 49, column: 19, scope: !1163)
!1166 = !DILocation(line: 49, column: 11, scope: !1163)
!1167 = !DILocation(line: 49, column: 6, scope: !1148)
!1168 = !DILocation(line: 50, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !7, line: 49, column: 39)
!1170 = !DILocation(line: 50, column: 14, scope: !1169)
!1171 = !DILocation(line: 50, column: 17, scope: !1169)
!1172 = !DILocation(line: 50, column: 23, scope: !1169)
!1173 = !DILocation(line: 50, column: 26, scope: !1169)
!1174 = !DILocation(line: 50, column: 21, scope: !1169)
!1175 = !DILocation(line: 50, column: 31, scope: !1169)
!1176 = !DILocation(line: 50, column: 29, scope: !1169)
!1177 = !DILocation(line: 50, column: 36, scope: !1169)
!1178 = !DILocation(line: 51, column: 2, scope: !1169)
!1179 = !DILocation(line: 53, column: 2, scope: !1148)
!1180 = !DILocation(line: 53, column: 9, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1148, file: !7, discriminator: 1)
!1182 = !DILocation(line: 53, column: 24, scope: !1181)
!1183 = !DILocation(line: 53, column: 27, scope: !1181)
!1184 = !DILocation(line: 53, column: 33, scope: !1181)
!1185 = !DILocation(line: 53, column: 36, scope: !1181)
!1186 = !DILocation(line: 53, column: 31, scope: !1181)
!1187 = !DILocation(line: 53, column: 41, scope: !1181)
!1188 = !DILocation(line: 53, column: 39, scope: !1181)
!1189 = !DILocation(line: 53, column: 13, scope: !1181)
!1190 = !DILocation(line: 53, column: 11, scope: !1181)
!1191 = !DILocation(line: 53, column: 2, scope: !1181)
!1192 = !DILocation(line: 54, column: 10, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1148, file: !7, line: 53, column: 47)
!1194 = !DILocation(line: 54, column: 8, scope: !1193)
!1195 = !DILocation(line: 54, column: 5, scope: !1193)
!1196 = !DILocation(line: 53, column: 2, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1148, file: !7, discriminator: 2)
!1198 = distinct !{!1198, !1179}
!1199 = !DILocation(line: 57, column: 9, scope: !1148)
!1200 = !DILocation(line: 57, column: 2, scope: !1148)
!1201 = distinct !DISubprogram(name: "kh_put_dynbufmap_t", scope: !7, file: !7, line: 64, type: !1202, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!11, !5, !22, !114}
!1204 = !DILocalVariable(name: "h", arg: 1, scope: !1201, file: !7, line: 64, type: !5)
!1205 = !DILocation(line: 64, column: 3635, scope: !1201)
!1206 = !DILocalVariable(name: "key", arg: 2, scope: !1201, file: !7, line: 64, type: !22)
!1207 = !DILocation(line: 64, column: 3648, scope: !1201)
!1208 = !DILocalVariable(name: "ret", arg: 3, scope: !1201, file: !7, line: 64, type: !114)
!1209 = !DILocation(line: 64, column: 3658, scope: !1201)
!1210 = !DILocalVariable(name: "x", scope: !1201, file: !7, line: 64, type: !11)
!1211 = !DILocation(line: 64, column: 3673, scope: !1201)
!1212 = !DILocation(line: 64, column: 3680, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1201, file: !7, line: 64, column: 3680)
!1214 = !DILocation(line: 64, column: 3683, scope: !1213)
!1215 = !DILocation(line: 64, column: 3697, scope: !1213)
!1216 = !DILocation(line: 64, column: 3700, scope: !1213)
!1217 = !DILocation(line: 64, column: 3694, scope: !1213)
!1218 = !DILocation(line: 64, column: 3680, scope: !1201)
!1219 = !DILocation(line: 64, column: 3719, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !7, discriminator: 1)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !7, line: 64, column: 3719)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !7, line: 64, column: 3713)
!1223 = !DILocation(line: 64, column: 3722, scope: !1220)
!1224 = !DILocation(line: 64, column: 3735, scope: !1220)
!1225 = !DILocation(line: 64, column: 3738, scope: !1220)
!1226 = !DILocation(line: 64, column: 3742, scope: !1220)
!1227 = !DILocation(line: 64, column: 3732, scope: !1220)
!1228 = !DILocation(line: 64, column: 3776, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !7, discriminator: 2)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !7, line: 64, column: 3754)
!1231 = distinct !DILexicalBlock(scope: !1221, file: !7, line: 64, column: 3748)
!1232 = !DILocation(line: 64, column: 3779, scope: !1229)
!1233 = !DILocation(line: 64, column: 3782, scope: !1229)
!1234 = !DILocation(line: 64, column: 3792, scope: !1229)
!1235 = !DILocation(line: 64, column: 3754, scope: !1229)
!1236 = !DILocation(line: 64, column: 3797, scope: !1229)
!1237 = !DILocation(line: 64, column: 3805, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !7, discriminator: 3)
!1239 = distinct !DILexicalBlock(scope: !1230, file: !7, line: 64, column: 3802)
!1240 = !DILocation(line: 64, column: 3809, scope: !1238)
!1241 = !DILocation(line: 64, column: 3822, scope: !1238)
!1242 = !DILocation(line: 64, column: 3825, scope: !1238)
!1243 = !DILocation(line: 64, column: 3815, scope: !1238)
!1244 = !DILocation(line: 64, column: 3838, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1231, file: !7, discriminator: 4)
!1246 = !DILocation(line: 64, column: 3871, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1248, file: !7, discriminator: 5)
!1248 = distinct !DILexicalBlock(scope: !1221, file: !7, line: 64, column: 3849)
!1249 = !DILocation(line: 64, column: 3874, scope: !1247)
!1250 = !DILocation(line: 64, column: 3877, scope: !1247)
!1251 = !DILocation(line: 64, column: 3887, scope: !1247)
!1252 = !DILocation(line: 64, column: 3849, scope: !1247)
!1253 = !DILocation(line: 64, column: 3892, scope: !1247)
!1254 = !DILocation(line: 64, column: 3900, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !7, discriminator: 6)
!1256 = distinct !DILexicalBlock(scope: !1248, file: !7, line: 64, column: 3897)
!1257 = !DILocation(line: 64, column: 3904, scope: !1255)
!1258 = !DILocation(line: 64, column: 3917, scope: !1255)
!1259 = !DILocation(line: 64, column: 3920, scope: !1255)
!1260 = !DILocation(line: 64, column: 3910, scope: !1255)
!1261 = !DILocation(line: 64, column: 3933, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1222, file: !7, discriminator: 7)
!1263 = !DILocalVariable(name: "k", scope: !1264, file: !7, line: 64, type: !11)
!1264 = distinct !DILexicalBlock(scope: !1201, file: !7, line: 64, column: 3935)
!1265 = !DILocation(line: 64, column: 3945, scope: !1264)
!1266 = !DILocalVariable(name: "i", scope: !1264, file: !7, line: 64, type: !11)
!1267 = !DILocation(line: 64, column: 3948, scope: !1264)
!1268 = !DILocalVariable(name: "site", scope: !1264, file: !7, line: 64, type: !11)
!1269 = !DILocation(line: 64, column: 3951, scope: !1264)
!1270 = !DILocalVariable(name: "last", scope: !1264, file: !7, line: 64, type: !11)
!1271 = !DILocation(line: 64, column: 3957, scope: !1264)
!1272 = !DILocalVariable(name: "mask", scope: !1264, file: !7, line: 64, type: !11)
!1273 = !DILocation(line: 64, column: 3963, scope: !1264)
!1274 = !DILocation(line: 64, column: 3970, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1264, file: !7, discriminator: 8)
!1276 = !DILocation(line: 64, column: 3973, scope: !1275)
!1277 = !DILocation(line: 64, column: 3983, scope: !1275)
!1278 = !DILocation(line: 64, column: 3963, scope: !1275)
!1279 = !DILocalVariable(name: "step", scope: !1264, file: !7, line: 64, type: !11)
!1280 = !DILocation(line: 64, column: 3988, scope: !1264)
!1281 = !DILocation(line: 64, column: 3988, scope: !1275)
!1282 = !DILocation(line: 64, column: 4009, scope: !1275)
!1283 = !DILocation(line: 64, column: 4012, scope: !1275)
!1284 = !DILocation(line: 64, column: 4007, scope: !1275)
!1285 = !DILocation(line: 64, column: 4000, scope: !1275)
!1286 = !DILocation(line: 64, column: 4047, scope: !1275)
!1287 = !DILocation(line: 64, column: 4027, scope: !1275)
!1288 = !DILocation(line: 64, column: 4025, scope: !1275)
!1289 = !DILocation(line: 64, column: 4057, scope: !1275)
!1290 = !DILocation(line: 64, column: 4061, scope: !1275)
!1291 = !DILocation(line: 64, column: 4059, scope: !1275)
!1292 = !DILocation(line: 64, column: 4055, scope: !1275)
!1293 = !DILocation(line: 64, column: 4082, scope: !1275)
!1294 = !DILocation(line: 64, column: 4083, scope: !1275)
!1295 = !DILocation(line: 64, column: 4073, scope: !1275)
!1296 = !DILocation(line: 64, column: 4076, scope: !1275)
!1297 = !DILocation(line: 64, column: 4091, scope: !1275)
!1298 = !DILocation(line: 64, column: 4092, scope: !1275)
!1299 = !DILocation(line: 64, column: 4098, scope: !1275)
!1300 = !DILocation(line: 64, column: 4087, scope: !1275)
!1301 = !DILocation(line: 64, column: 4103, scope: !1275)
!1302 = !DILocation(line: 64, column: 4071, scope: !1275)
!1303 = !DILocation(line: 64, column: 4112, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !7, discriminator: 9)
!1305 = distinct !DILexicalBlock(scope: !1264, file: !7, line: 64, column: 4071)
!1306 = !DILocation(line: 64, column: 4110, scope: !1304)
!1307 = !DILocation(line: 64, column: 4108, scope: !1304)
!1308 = !DILocation(line: 64, column: 4129, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 10)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !7, line: 64, column: 4120)
!1311 = !DILocation(line: 64, column: 4127, scope: !1309)
!1312 = !DILocation(line: 64, column: 4132, scope: !1309)
!1313 = !DILocation(line: 64, column: 4151, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 11)
!1315 = !DILocation(line: 64, column: 4152, scope: !1314)
!1316 = !DILocation(line: 64, column: 4142, scope: !1314)
!1317 = !DILocation(line: 64, column: 4145, scope: !1314)
!1318 = !DILocation(line: 64, column: 4160, scope: !1314)
!1319 = !DILocation(line: 64, column: 4161, scope: !1314)
!1320 = !DILocation(line: 64, column: 4167, scope: !1314)
!1321 = !DILocation(line: 64, column: 4156, scope: !1314)
!1322 = !DILocation(line: 64, column: 4172, scope: !1314)
!1323 = !DILocation(line: 64, column: 4176, scope: !1314)
!1324 = !DILocation(line: 64, column: 4191, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 12)
!1326 = !DILocation(line: 64, column: 4192, scope: !1325)
!1327 = !DILocation(line: 64, column: 4182, scope: !1325)
!1328 = !DILocation(line: 64, column: 4185, scope: !1325)
!1329 = !DILocation(line: 64, column: 4200, scope: !1325)
!1330 = !DILocation(line: 64, column: 4201, scope: !1325)
!1331 = !DILocation(line: 64, column: 4207, scope: !1325)
!1332 = !DILocation(line: 64, column: 4196, scope: !1325)
!1333 = !DILocation(line: 64, column: 4212, scope: !1325)
!1334 = !DILocation(line: 64, column: 4216, scope: !1325)
!1335 = !DILocation(line: 64, column: 4231, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 13)
!1337 = !DILocation(line: 64, column: 4223, scope: !1336)
!1338 = !DILocation(line: 64, column: 4226, scope: !1336)
!1339 = !DILocation(line: 64, column: 4236, scope: !1336)
!1340 = !DILocation(line: 64, column: 4243, scope: !1336)
!1341 = !DILocation(line: 64, column: 4249, scope: !1336)
!1342 = !DILocation(line: 64, column: 4239, scope: !1336)
!1343 = !DILocation(line: 64, column: 4253, scope: !1336)
!1344 = !DILocation(line: 64, column: 4273, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 14)
!1346 = !DILocation(line: 64, column: 4265, scope: !1345)
!1347 = !DILocation(line: 64, column: 4268, scope: !1345)
!1348 = !DILocation(line: 64, column: 4278, scope: !1345)
!1349 = !DILocation(line: 64, column: 4284, scope: !1345)
!1350 = !DILocation(line: 64, column: 4290, scope: !1345)
!1351 = !DILocation(line: 64, column: 4304, scope: !1345)
!1352 = !DILocation(line: 64, column: 4296, scope: !1345)
!1353 = !DILocation(line: 64, column: 4299, scope: !1345)
!1354 = !DILocation(line: 64, column: 4309, scope: !1345)
!1355 = !DILocation(line: 64, column: 4257, scope: !1345)
!1356 = !DILocation(line: 64, column: 4313, scope: !1345)
!1357 = !DILocation(line: 64, column: 4219, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 15)
!1359 = !DILocation(line: 64, column: 4216, scope: !1358)
!1360 = !DILocation(line: 64, column: 4132, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 16)
!1362 = !DILocation(line: 64, column: 4339, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1364, file: !7, discriminator: 17)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !7, line: 64, column: 4328)
!1365 = distinct !DILexicalBlock(scope: !1310, file: !7, line: 64, column: 4322)
!1366 = !DILocation(line: 64, column: 4340, scope: !1363)
!1367 = !DILocation(line: 64, column: 4330, scope: !1363)
!1368 = !DILocation(line: 64, column: 4333, scope: !1363)
!1369 = !DILocation(line: 64, column: 4348, scope: !1363)
!1370 = !DILocation(line: 64, column: 4349, scope: !1363)
!1371 = !DILocation(line: 64, column: 4355, scope: !1363)
!1372 = !DILocation(line: 64, column: 4344, scope: !1363)
!1373 = !DILocation(line: 64, column: 4360, scope: !1363)
!1374 = !DILocation(line: 64, column: 4328, scope: !1363)
!1375 = !DILocation(line: 64, column: 4372, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1364, file: !7, discriminator: 18)
!1377 = !DILocation(line: 64, column: 4370, scope: !1376)
!1378 = !DILocation(line: 64, column: 4365, scope: !1376)
!1379 = !DILocation(line: 64, column: 4380, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1365, file: !7, discriminator: 19)
!1381 = !DILocation(line: 64, column: 4385, scope: !1380)
!1382 = !DILocation(line: 64, column: 4382, scope: !1380)
!1383 = !DILocation(line: 64, column: 4396, scope: !1380)
!1384 = !DILocation(line: 64, column: 4394, scope: !1380)
!1385 = !DILocation(line: 64, column: 4377, scope: !1380)
!1386 = !DILocation(line: 64, column: 4406, scope: !1380)
!1387 = !DILocation(line: 64, column: 4411, scope: !1380)
!1388 = !DILocation(line: 64, column: 4408, scope: !1380)
!1389 = !DILocation(line: 64, column: 4423, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1391, file: !7, discriminator: 20)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !7, line: 64, column: 4417)
!1392 = distinct !DILexicalBlock(scope: !1365, file: !7, line: 64, column: 4406)
!1393 = !DILocation(line: 64, column: 4421, scope: !1390)
!1394 = !DILocation(line: 64, column: 4429, scope: !1390)
!1395 = !DILocation(line: 64, column: 4132, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1310, file: !7, discriminator: 21)
!1397 = distinct !{!1397, !1398}
!1398 = !DILocation(line: 64, column: 4132, scope: !1310)
!1399 = !DILocation(line: 64, column: 4444, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !7, discriminator: 22)
!1401 = distinct !DILexicalBlock(scope: !1310, file: !7, line: 64, column: 4444)
!1402 = !DILocation(line: 64, column: 4449, scope: !1400)
!1403 = !DILocation(line: 64, column: 4452, scope: !1400)
!1404 = !DILocation(line: 64, column: 4446, scope: !1400)
!1405 = !DILocation(line: 64, column: 4480, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !7, discriminator: 23)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !7, line: 64, column: 4469)
!1408 = distinct !DILexicalBlock(scope: !1401, file: !7, line: 64, column: 4463)
!1409 = !DILocation(line: 64, column: 4481, scope: !1406)
!1410 = !DILocation(line: 64, column: 4471, scope: !1406)
!1411 = !DILocation(line: 64, column: 4474, scope: !1406)
!1412 = !DILocation(line: 64, column: 4489, scope: !1406)
!1413 = !DILocation(line: 64, column: 4490, scope: !1406)
!1414 = !DILocation(line: 64, column: 4496, scope: !1406)
!1415 = !DILocation(line: 64, column: 4485, scope: !1406)
!1416 = !DILocation(line: 64, column: 4501, scope: !1406)
!1417 = !DILocation(line: 64, column: 4505, scope: !1406)
!1418 = !DILocation(line: 64, column: 4508, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1407, file: !7, discriminator: 24)
!1420 = !DILocation(line: 64, column: 4516, scope: !1419)
!1421 = !DILocation(line: 64, column: 4519, scope: !1419)
!1422 = !DILocation(line: 64, column: 4513, scope: !1419)
!1423 = !DILocation(line: 64, column: 4469, scope: !1419)
!1424 = !DILocation(line: 64, column: 4534, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1407, file: !7, discriminator: 25)
!1426 = !DILocation(line: 64, column: 4532, scope: !1425)
!1427 = !DILocation(line: 64, column: 4530, scope: !1425)
!1428 = !DILocation(line: 64, column: 4549, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1407, file: !7, discriminator: 26)
!1430 = !DILocation(line: 64, column: 4547, scope: !1429)
!1431 = !DILocation(line: 64, column: 4552, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1408, file: !7, discriminator: 27)
!1433 = !DILocation(line: 64, column: 4573, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !7, discriminator: 28)
!1435 = distinct !DILexicalBlock(scope: !1201, file: !7, line: 64, column: 4562)
!1436 = !DILocation(line: 64, column: 4574, scope: !1434)
!1437 = !DILocation(line: 64, column: 4564, scope: !1434)
!1438 = !DILocation(line: 64, column: 4567, scope: !1434)
!1439 = !DILocation(line: 64, column: 4582, scope: !1434)
!1440 = !DILocation(line: 64, column: 4583, scope: !1434)
!1441 = !DILocation(line: 64, column: 4589, scope: !1434)
!1442 = !DILocation(line: 64, column: 4578, scope: !1434)
!1443 = !DILocation(line: 64, column: 4594, scope: !1434)
!1444 = !DILocation(line: 64, column: 4562, scope: !1434)
!1445 = !DILocation(line: 64, column: 4614, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1447, file: !7, discriminator: 29)
!1447 = distinct !DILexicalBlock(scope: !1435, file: !7, line: 64, column: 4599)
!1448 = !DILocation(line: 64, column: 4609, scope: !1446)
!1449 = !DILocation(line: 64, column: 4601, scope: !1446)
!1450 = !DILocation(line: 64, column: 4604, scope: !1446)
!1451 = !DILocation(line: 64, column: 4612, scope: !1446)
!1452 = !DILocation(line: 64, column: 4645, scope: !1446)
!1453 = !DILocation(line: 64, column: 4646, scope: !1446)
!1454 = !DILocation(line: 64, column: 4652, scope: !1446)
!1455 = !DILocation(line: 64, column: 4641, scope: !1446)
!1456 = !DILocation(line: 64, column: 4636, scope: !1446)
!1457 = !DILocation(line: 64, column: 4629, scope: !1446)
!1458 = !DILocation(line: 64, column: 4630, scope: !1446)
!1459 = !DILocation(line: 64, column: 4620, scope: !1446)
!1460 = !DILocation(line: 64, column: 4623, scope: !1446)
!1461 = !DILocation(line: 64, column: 4634, scope: !1446)
!1462 = !DILocation(line: 64, column: 4662, scope: !1446)
!1463 = !DILocation(line: 64, column: 4665, scope: !1446)
!1464 = !DILocation(line: 64, column: 4660, scope: !1446)
!1465 = !DILocation(line: 64, column: 4673, scope: !1446)
!1466 = !DILocation(line: 64, column: 4676, scope: !1446)
!1467 = !DILocation(line: 64, column: 4671, scope: !1446)
!1468 = !DILocation(line: 64, column: 4689, scope: !1446)
!1469 = !DILocation(line: 64, column: 4693, scope: !1446)
!1470 = !DILocation(line: 64, column: 4698, scope: !1446)
!1471 = !DILocation(line: 64, column: 4720, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !7, discriminator: 30)
!1473 = distinct !DILexicalBlock(scope: !1435, file: !7, line: 64, column: 4709)
!1474 = !DILocation(line: 64, column: 4721, scope: !1472)
!1475 = !DILocation(line: 64, column: 4711, scope: !1472)
!1476 = !DILocation(line: 64, column: 4714, scope: !1472)
!1477 = !DILocation(line: 64, column: 4729, scope: !1472)
!1478 = !DILocation(line: 64, column: 4730, scope: !1472)
!1479 = !DILocation(line: 64, column: 4736, scope: !1472)
!1480 = !DILocation(line: 64, column: 4725, scope: !1472)
!1481 = !DILocation(line: 64, column: 4741, scope: !1472)
!1482 = !DILocation(line: 64, column: 4709, scope: !1472)
!1483 = !DILocation(line: 64, column: 4761, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1485, file: !7, discriminator: 31)
!1485 = distinct !DILexicalBlock(scope: !1473, file: !7, line: 64, column: 4746)
!1486 = !DILocation(line: 64, column: 4756, scope: !1484)
!1487 = !DILocation(line: 64, column: 4748, scope: !1484)
!1488 = !DILocation(line: 64, column: 4751, scope: !1484)
!1489 = !DILocation(line: 64, column: 4759, scope: !1484)
!1490 = !DILocation(line: 64, column: 4792, scope: !1484)
!1491 = !DILocation(line: 64, column: 4793, scope: !1484)
!1492 = !DILocation(line: 64, column: 4799, scope: !1484)
!1493 = !DILocation(line: 64, column: 4788, scope: !1484)
!1494 = !DILocation(line: 64, column: 4783, scope: !1484)
!1495 = !DILocation(line: 64, column: 4776, scope: !1484)
!1496 = !DILocation(line: 64, column: 4777, scope: !1484)
!1497 = !DILocation(line: 64, column: 4767, scope: !1484)
!1498 = !DILocation(line: 64, column: 4770, scope: !1484)
!1499 = !DILocation(line: 64, column: 4781, scope: !1484)
!1500 = !DILocation(line: 64, column: 4809, scope: !1484)
!1501 = !DILocation(line: 64, column: 4812, scope: !1484)
!1502 = !DILocation(line: 64, column: 4807, scope: !1484)
!1503 = !DILocation(line: 64, column: 4819, scope: !1484)
!1504 = !DILocation(line: 64, column: 4823, scope: !1484)
!1505 = !DILocation(line: 64, column: 4828, scope: !1484)
!1506 = !DILocation(line: 64, column: 4836, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1473, file: !7, discriminator: 32)
!1508 = !DILocation(line: 64, column: 4840, scope: !1507)
!1509 = !DILocation(line: 64, column: 4852, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1201, file: !7, discriminator: 33)
!1511 = !DILocation(line: 64, column: 4845, scope: !1510)
!1512 = !DILocation(line: 64, column: 4855, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1201, file: !7, discriminator: 34)
!1514 = distinct !DISubprogram(name: "kh_resize_dynbufmap_t", scope: !7, file: !7, line: 64, type: !1515, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!63, !5, !11}
!1517 = !DILocalVariable(name: "h", arg: 1, scope: !1514, file: !7, line: 64, type: !5)
!1518 = !DILocation(line: 64, column: 1398, scope: !1514)
!1519 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !1514, file: !7, line: 64, type: !11)
!1520 = !DILocation(line: 64, column: 1409, scope: !1514)
!1521 = !DILocalVariable(name: "new_flags", scope: !1514, file: !7, line: 64, type: !19)
!1522 = !DILocation(line: 64, column: 1437, scope: !1514)
!1523 = !DILocalVariable(name: "j", scope: !1514, file: !7, line: 64, type: !11)
!1524 = !DILocation(line: 64, column: 1460, scope: !1514)
!1525 = !DILocation(line: 64, column: 1470, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1514, file: !7, line: 64, column: 1467)
!1527 = !DILocation(line: 64, column: 1507, scope: !1526)
!1528 = !DILocation(line: 64, column: 1521, scope: !1526)
!1529 = !DILocation(line: 64, column: 1504, scope: !1526)
!1530 = !DILocation(line: 64, column: 1544, scope: !1526)
!1531 = !DILocation(line: 64, column: 1558, scope: !1526)
!1532 = !DILocation(line: 64, column: 1541, scope: !1526)
!1533 = !DILocation(line: 64, column: 1581, scope: !1526)
!1534 = !DILocation(line: 64, column: 1595, scope: !1526)
!1535 = !DILocation(line: 64, column: 1578, scope: !1526)
!1536 = !DILocation(line: 64, column: 1618, scope: !1526)
!1537 = !DILocation(line: 64, column: 1632, scope: !1526)
!1538 = !DILocation(line: 64, column: 1615, scope: !1526)
!1539 = !DILocation(line: 64, column: 1655, scope: !1526)
!1540 = !DILocation(line: 64, column: 1669, scope: !1526)
!1541 = !DILocation(line: 64, column: 1652, scope: !1526)
!1542 = !DILocation(line: 64, column: 1675, scope: !1526)
!1543 = !DILocation(line: 64, column: 1699, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1526, file: !7, line: 64, column: 1699)
!1545 = !DILocation(line: 64, column: 1713, scope: !1544)
!1546 = !DILocation(line: 64, column: 1699, scope: !1526)
!1547 = !DILocation(line: 64, column: 1732, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1544, file: !7, discriminator: 1)
!1549 = !DILocation(line: 64, column: 1718, scope: !1548)
!1550 = !DILocation(line: 64, column: 1741, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1552, file: !7, discriminator: 2)
!1552 = distinct !DILexicalBlock(scope: !1526, file: !7, line: 64, column: 1741)
!1553 = !DILocation(line: 64, column: 1744, scope: !1551)
!1554 = !DILocation(line: 64, column: 1762, scope: !1551)
!1555 = !DILocation(line: 64, column: 1776, scope: !1551)
!1556 = !DILocation(line: 64, column: 1794, scope: !1551)
!1557 = !DILocation(line: 64, column: 1752, scope: !1551)
!1558 = !DILocation(line: 64, column: 1749, scope: !1551)
!1559 = !DILocation(line: 64, column: 1804, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1552, file: !7, discriminator: 3)
!1561 = !DILocation(line: 64, column: 1802, scope: !1560)
!1562 = !DILocation(line: 64, column: 1849, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 4)
!1564 = distinct !DILexicalBlock(scope: !1552, file: !7, line: 64, column: 1814)
!1565 = !DILocation(line: 64, column: 1864, scope: !1563)
!1566 = !DILocation(line: 64, column: 1848, scope: !1563)
!1567 = !DILocation(line: 64, column: 1848, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 5)
!1569 = !DILocation(line: 64, column: 1875, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 6)
!1571 = !DILocation(line: 64, column: 1889, scope: !1570)
!1572 = !DILocation(line: 64, column: 1848, scope: !1570)
!1573 = !DILocation(line: 64, column: 1848, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 7)
!1575 = !DILocation(line: 64, column: 1847, scope: !1574)
!1576 = !DILocation(line: 64, column: 1894, scope: !1574)
!1577 = !DILocation(line: 64, column: 1840, scope: !1574)
!1578 = !DILocation(line: 64, column: 1828, scope: !1574)
!1579 = !DILocation(line: 64, column: 1826, scope: !1574)
!1580 = !DILocation(line: 64, column: 1921, scope: !1574)
!1581 = !DILocation(line: 64, column: 1920, scope: !1574)
!1582 = !DILocation(line: 64, column: 1932, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1584, file: !7, discriminator: 8)
!1584 = distinct !DILexicalBlock(scope: !1564, file: !7, line: 64, column: 1920)
!1585 = !DILocation(line: 64, column: 1950, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 9)
!1587 = !DILocation(line: 64, column: 1943, scope: !1586)
!1588 = !DILocation(line: 64, column: 1969, scope: !1586)
!1589 = !DILocation(line: 64, column: 1984, scope: !1586)
!1590 = !DILocation(line: 64, column: 1968, scope: !1586)
!1591 = !DILocation(line: 64, column: 1968, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 10)
!1593 = !DILocation(line: 64, column: 1995, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 11)
!1595 = !DILocation(line: 64, column: 2009, scope: !1594)
!1596 = !DILocation(line: 64, column: 1968, scope: !1594)
!1597 = !DILocation(line: 64, column: 1968, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1564, file: !7, discriminator: 12)
!1599 = !DILocation(line: 64, column: 1967, scope: !1598)
!1600 = !DILocation(line: 64, column: 2014, scope: !1598)
!1601 = !DILocation(line: 64, column: 1943, scope: !1598)
!1602 = !DILocation(line: 64, column: 2040, scope: !1598)
!1603 = !DILocation(line: 64, column: 2043, scope: !1598)
!1604 = !DILocation(line: 64, column: 2055, scope: !1598)
!1605 = !DILocation(line: 64, column: 2053, scope: !1598)
!1606 = !DILocalVariable(name: "new_keys", scope: !1607, file: !7, line: 64, type: !21)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !7, line: 64, column: 2070)
!1608 = distinct !DILexicalBlock(scope: !1564, file: !7, line: 64, column: 2040)
!1609 = !DILocation(line: 64, column: 2083, scope: !1607)
!1610 = !DILocation(line: 64, column: 2122, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1607, file: !7, discriminator: 13)
!1612 = !DILocation(line: 64, column: 2125, scope: !1611)
!1613 = !DILocation(line: 64, column: 2114, scope: !1611)
!1614 = !DILocation(line: 64, column: 2130, scope: !1611)
!1615 = !DILocation(line: 64, column: 2144, scope: !1611)
!1616 = !DILocation(line: 64, column: 2106, scope: !1611)
!1617 = !DILocation(line: 64, column: 2094, scope: !1611)
!1618 = !DILocation(line: 64, column: 2083, scope: !1611)
!1619 = !DILocation(line: 64, column: 2171, scope: !1611)
!1620 = !DILocation(line: 64, column: 2170, scope: !1611)
!1621 = !DILocation(line: 64, column: 2188, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !7, discriminator: 14)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !7, line: 64, column: 2181)
!1624 = distinct !DILexicalBlock(scope: !1607, file: !7, line: 64, column: 2170)
!1625 = !DILocation(line: 64, column: 2183, scope: !1622)
!1626 = !DILocation(line: 64, column: 2200, scope: !1622)
!1627 = !DILocation(line: 64, column: 2223, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1607, file: !7, discriminator: 15)
!1629 = !DILocation(line: 64, column: 2213, scope: !1628)
!1630 = !DILocation(line: 64, column: 2216, scope: !1628)
!1631 = !DILocation(line: 64, column: 2221, scope: !1628)
!1632 = !DILocalVariable(name: "new_vals", scope: !1633, file: !7, line: 64, type: !21)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !7, line: 64, column: 2240)
!1634 = distinct !DILexicalBlock(scope: !1607, file: !7, line: 64, column: 2237)
!1635 = !DILocation(line: 64, column: 2253, scope: !1633)
!1636 = !DILocation(line: 64, column: 2292, scope: !1628)
!1637 = !DILocation(line: 64, column: 2295, scope: !1628)
!1638 = !DILocation(line: 64, column: 2284, scope: !1628)
!1639 = !DILocation(line: 64, column: 2300, scope: !1628)
!1640 = !DILocation(line: 64, column: 2314, scope: !1628)
!1641 = !DILocation(line: 64, column: 2276, scope: !1628)
!1642 = !DILocation(line: 64, column: 2264, scope: !1628)
!1643 = !DILocation(line: 64, column: 2253, scope: !1628)
!1644 = !DILocation(line: 64, column: 2341, scope: !1628)
!1645 = !DILocation(line: 64, column: 2340, scope: !1628)
!1646 = !DILocation(line: 64, column: 2358, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !7, discriminator: 16)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !7, line: 64, column: 2351)
!1649 = distinct !DILexicalBlock(scope: !1633, file: !7, line: 64, column: 2340)
!1650 = !DILocation(line: 64, column: 2353, scope: !1647)
!1651 = !DILocation(line: 64, column: 2370, scope: !1647)
!1652 = !DILocation(line: 64, column: 2393, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1633, file: !7, discriminator: 17)
!1654 = !DILocation(line: 64, column: 2383, scope: !1653)
!1655 = !DILocation(line: 64, column: 2386, scope: !1653)
!1656 = !DILocation(line: 64, column: 2391, scope: !1653)
!1657 = !DILocation(line: 64, column: 2405, scope: !1653)
!1658 = !DILocation(line: 64, column: 2415, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !7, discriminator: 18)
!1660 = distinct !DILexicalBlock(scope: !1514, file: !7, line: 64, column: 2415)
!1661 = !DILocation(line: 64, column: 2427, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1663, file: !7, discriminator: 19)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !7, line: 64, column: 2420)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !7, line: 64, column: 2418)
!1665 = !DILocation(line: 64, column: 2425, scope: !1662)
!1666 = !DILocation(line: 64, column: 2432, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1668, file: !7, discriminator: 20)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !7, line: 64, column: 2420)
!1669 = !DILocation(line: 64, column: 2437, scope: !1667)
!1670 = !DILocation(line: 64, column: 2440, scope: !1667)
!1671 = !DILocation(line: 64, column: 2434, scope: !1667)
!1672 = !DILocation(line: 64, column: 2420, scope: !1667)
!1673 = !DILocation(line: 64, column: 2473, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !7, discriminator: 21)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !7, line: 64, column: 2462)
!1676 = distinct !DILexicalBlock(scope: !1668, file: !7, line: 64, column: 2456)
!1677 = !DILocation(line: 64, column: 2474, scope: !1674)
!1678 = !DILocation(line: 64, column: 2464, scope: !1674)
!1679 = !DILocation(line: 64, column: 2467, scope: !1674)
!1680 = !DILocation(line: 64, column: 2482, scope: !1674)
!1681 = !DILocation(line: 64, column: 2483, scope: !1674)
!1682 = !DILocation(line: 64, column: 2489, scope: !1674)
!1683 = !DILocation(line: 64, column: 2478, scope: !1674)
!1684 = !DILocation(line: 64, column: 2494, scope: !1674)
!1685 = !DILocation(line: 64, column: 2498, scope: !1674)
!1686 = !DILocation(line: 64, column: 2462, scope: !1674)
!1687 = !DILocalVariable(name: "key", scope: !1688, file: !7, line: 64, type: !22)
!1688 = distinct !DILexicalBlock(scope: !1675, file: !7, line: 64, column: 2504)
!1689 = !DILocation(line: 64, column: 2516, scope: !1688)
!1690 = !DILocation(line: 64, column: 2530, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1688, file: !7, discriminator: 22)
!1692 = !DILocation(line: 64, column: 2522, scope: !1691)
!1693 = !DILocation(line: 64, column: 2525, scope: !1691)
!1694 = !DILocation(line: 64, column: 2516, scope: !1691)
!1695 = !DILocalVariable(name: "val", scope: !1688, file: !7, line: 64, type: !22)
!1696 = !DILocation(line: 64, column: 2544, scope: !1688)
!1697 = !DILocalVariable(name: "new_mask", scope: !1688, file: !7, line: 64, type: !11)
!1698 = !DILocation(line: 64, column: 2557, scope: !1688)
!1699 = !DILocation(line: 64, column: 2578, scope: !1691)
!1700 = !DILocation(line: 64, column: 2592, scope: !1691)
!1701 = !DILocation(line: 64, column: 2576, scope: !1691)
!1702 = !DILocation(line: 64, column: 2618, scope: !1691)
!1703 = !DILocation(line: 64, column: 2610, scope: !1691)
!1704 = !DILocation(line: 64, column: 2613, scope: !1691)
!1705 = !DILocation(line: 64, column: 2608, scope: !1691)
!1706 = !DILocation(line: 64, column: 2646, scope: !1691)
!1707 = !DILocation(line: 64, column: 2647, scope: !1691)
!1708 = !DILocation(line: 64, column: 2653, scope: !1691)
!1709 = !DILocation(line: 64, column: 2642, scope: !1691)
!1710 = !DILocation(line: 64, column: 2632, scope: !1691)
!1711 = !DILocation(line: 64, column: 2633, scope: !1691)
!1712 = !DILocation(line: 64, column: 2623, scope: !1691)
!1713 = !DILocation(line: 64, column: 2626, scope: !1691)
!1714 = !DILocation(line: 64, column: 2637, scope: !1691)
!1715 = !DILocation(line: 64, column: 2660, scope: !1691)
!1716 = !DILocalVariable(name: "k", scope: !1717, file: !7, line: 64, type: !11)
!1717 = distinct !DILexicalBlock(scope: !1688, file: !7, line: 64, column: 2670)
!1718 = !DILocation(line: 64, column: 2680, scope: !1717)
!1719 = !DILocalVariable(name: "i", scope: !1717, file: !7, line: 64, type: !11)
!1720 = !DILocation(line: 64, column: 2683, scope: !1717)
!1721 = !DILocalVariable(name: "step", scope: !1717, file: !7, line: 64, type: !11)
!1722 = !DILocation(line: 64, column: 2686, scope: !1717)
!1723 = !DILocation(line: 64, column: 2686, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1717, file: !7, discriminator: 23)
!1725 = !DILocation(line: 64, column: 2720, scope: !1724)
!1726 = !DILocation(line: 64, column: 2700, scope: !1724)
!1727 = !DILocation(line: 64, column: 2698, scope: !1724)
!1728 = !DILocation(line: 64, column: 2730, scope: !1724)
!1729 = !DILocation(line: 64, column: 2734, scope: !1724)
!1730 = !DILocation(line: 64, column: 2732, scope: !1724)
!1731 = !DILocation(line: 64, column: 2728, scope: !1724)
!1732 = !DILocation(line: 64, column: 2744, scope: !1724)
!1733 = !DILocation(line: 64, column: 2764, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1717, file: !7, discriminator: 24)
!1735 = !DILocation(line: 64, column: 2765, scope: !1734)
!1736 = !DILocation(line: 64, column: 2754, scope: !1734)
!1737 = !DILocation(line: 64, column: 2773, scope: !1734)
!1738 = !DILocation(line: 64, column: 2774, scope: !1734)
!1739 = !DILocation(line: 64, column: 2780, scope: !1734)
!1740 = !DILocation(line: 64, column: 2769, scope: !1734)
!1741 = !DILocation(line: 64, column: 2785, scope: !1734)
!1742 = !DILocation(line: 64, column: 2751, scope: !1734)
!1743 = !DILocation(line: 64, column: 2744, scope: !1734)
!1744 = !DILocation(line: 64, column: 2795, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1717, file: !7, discriminator: 25)
!1746 = !DILocation(line: 64, column: 2800, scope: !1745)
!1747 = !DILocation(line: 64, column: 2797, scope: !1745)
!1748 = !DILocation(line: 64, column: 2811, scope: !1745)
!1749 = !DILocation(line: 64, column: 2809, scope: !1745)
!1750 = !DILocation(line: 64, column: 2792, scope: !1745)
!1751 = !DILocation(line: 64, column: 2744, scope: !1745)
!1752 = distinct !{!1752, !1753}
!1753 = !DILocation(line: 64, column: 2744, scope: !1717)
!1754 = !DILocation(line: 64, column: 2848, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1717, file: !7, discriminator: 26)
!1756 = !DILocation(line: 64, column: 2849, scope: !1755)
!1757 = !DILocation(line: 64, column: 2855, scope: !1755)
!1758 = !DILocation(line: 64, column: 2844, scope: !1755)
!1759 = !DILocation(line: 64, column: 2839, scope: !1755)
!1760 = !DILocation(line: 64, column: 2832, scope: !1755)
!1761 = !DILocation(line: 64, column: 2833, scope: !1755)
!1762 = !DILocation(line: 64, column: 2822, scope: !1755)
!1763 = !DILocation(line: 64, column: 2837, scope: !1755)
!1764 = !DILocation(line: 64, column: 2867, scope: !1755)
!1765 = !DILocation(line: 64, column: 2871, scope: !1755)
!1766 = !DILocation(line: 64, column: 2874, scope: !1755)
!1767 = !DILocation(line: 64, column: 2869, scope: !1755)
!1768 = !DILocation(line: 64, column: 2884, scope: !1755)
!1769 = !DILocation(line: 64, column: 2898, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !7, discriminator: 27)
!1771 = distinct !DILexicalBlock(scope: !1717, file: !7, line: 64, column: 2867)
!1772 = !DILocation(line: 64, column: 2899, scope: !1770)
!1773 = !DILocation(line: 64, column: 2889, scope: !1770)
!1774 = !DILocation(line: 64, column: 2892, scope: !1770)
!1775 = !DILocation(line: 64, column: 2907, scope: !1770)
!1776 = !DILocation(line: 64, column: 2908, scope: !1770)
!1777 = !DILocation(line: 64, column: 2914, scope: !1770)
!1778 = !DILocation(line: 64, column: 2903, scope: !1770)
!1779 = !DILocation(line: 64, column: 2919, scope: !1770)
!1780 = !DILocation(line: 64, column: 2923, scope: !1770)
!1781 = !DILocation(line: 64, column: 2867, scope: !1770)
!1782 = !DILocalVariable(name: "tmp", scope: !1783, file: !7, line: 64, type: !22)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !7, line: 64, column: 2931)
!1784 = distinct !DILexicalBlock(scope: !1771, file: !7, line: 64, column: 2929)
!1785 = !DILocation(line: 64, column: 2943, scope: !1783)
!1786 = !DILocation(line: 64, column: 2957, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1783, file: !7, discriminator: 28)
!1788 = !DILocation(line: 64, column: 2949, scope: !1787)
!1789 = !DILocation(line: 64, column: 2952, scope: !1787)
!1790 = !DILocation(line: 64, column: 2943, scope: !1787)
!1791 = !DILocation(line: 64, column: 2974, scope: !1787)
!1792 = !DILocation(line: 64, column: 2969, scope: !1787)
!1793 = !DILocation(line: 64, column: 2961, scope: !1787)
!1794 = !DILocation(line: 64, column: 2964, scope: !1787)
!1795 = !DILocation(line: 64, column: 2972, scope: !1787)
!1796 = !DILocation(line: 64, column: 2985, scope: !1787)
!1797 = !DILocation(line: 64, column: 2983, scope: !1787)
!1798 = !DILocalVariable(name: "tmp", scope: !1799, file: !7, line: 64, type: !22)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !7, line: 64, column: 2999)
!1800 = distinct !DILexicalBlock(scope: !1784, file: !7, line: 64, column: 2996)
!1801 = !DILocation(line: 64, column: 3011, scope: !1799)
!1802 = !DILocation(line: 64, column: 3025, scope: !1787)
!1803 = !DILocation(line: 64, column: 3017, scope: !1787)
!1804 = !DILocation(line: 64, column: 3020, scope: !1787)
!1805 = !DILocation(line: 64, column: 3011, scope: !1787)
!1806 = !DILocation(line: 64, column: 3042, scope: !1787)
!1807 = !DILocation(line: 64, column: 3037, scope: !1787)
!1808 = !DILocation(line: 64, column: 3029, scope: !1787)
!1809 = !DILocation(line: 64, column: 3032, scope: !1787)
!1810 = !DILocation(line: 64, column: 3040, scope: !1787)
!1811 = !DILocation(line: 64, column: 3053, scope: !1787)
!1812 = !DILocation(line: 64, column: 3051, scope: !1787)
!1813 = !DILocation(line: 64, column: 3084, scope: !1787)
!1814 = !DILocation(line: 64, column: 3085, scope: !1787)
!1815 = !DILocation(line: 64, column: 3091, scope: !1787)
!1816 = !DILocation(line: 64, column: 3080, scope: !1787)
!1817 = !DILocation(line: 64, column: 3070, scope: !1787)
!1818 = !DILocation(line: 64, column: 3071, scope: !1787)
!1819 = !DILocation(line: 64, column: 3061, scope: !1787)
!1820 = !DILocation(line: 64, column: 3064, scope: !1787)
!1821 = !DILocation(line: 64, column: 3075, scope: !1787)
!1822 = !DILocation(line: 64, column: 3098, scope: !1787)
!1823 = !DILocation(line: 64, column: 3120, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1825, file: !7, discriminator: 29)
!1825 = distinct !DILexicalBlock(scope: !1771, file: !7, line: 64, column: 3105)
!1826 = !DILocation(line: 64, column: 3115, scope: !1824)
!1827 = !DILocation(line: 64, column: 3107, scope: !1824)
!1828 = !DILocation(line: 64, column: 3110, scope: !1824)
!1829 = !DILocation(line: 64, column: 3118, scope: !1824)
!1830 = !DILocation(line: 64, column: 3145, scope: !1824)
!1831 = !DILocation(line: 64, column: 3140, scope: !1824)
!1832 = !DILocation(line: 64, column: 3132, scope: !1824)
!1833 = !DILocation(line: 64, column: 3135, scope: !1824)
!1834 = !DILocation(line: 64, column: 3143, scope: !1824)
!1835 = !DILocation(line: 64, column: 3150, scope: !1824)
!1836 = !DILocation(line: 64, column: 2660, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1688, file: !7, discriminator: 30)
!1838 = distinct !{!1838, !1839}
!1839 = !DILocation(line: 64, column: 2660, scope: !1688)
!1840 = !DILocation(line: 64, column: 3161, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1688, file: !7, discriminator: 31)
!1842 = !DILocation(line: 64, column: 3163, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1676, file: !7, discriminator: 32)
!1844 = !DILocation(line: 64, column: 2451, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1668, file: !7, discriminator: 33)
!1846 = !DILocation(line: 64, column: 2420, scope: !1845)
!1847 = distinct !{!1847, !1848}
!1848 = !DILocation(line: 64, column: 2420, scope: !1664)
!1849 = !DILocation(line: 64, column: 3169, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1851, file: !7, discriminator: 34)
!1851 = distinct !DILexicalBlock(scope: !1664, file: !7, line: 64, column: 3169)
!1852 = !DILocation(line: 64, column: 3172, scope: !1850)
!1853 = !DILocation(line: 64, column: 3184, scope: !1850)
!1854 = !DILocation(line: 64, column: 3182, scope: !1850)
!1855 = !DILocation(line: 64, column: 3239, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1857, file: !7, discriminator: 35)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !7, line: 64, column: 3199)
!1858 = !DILocation(line: 64, column: 3242, scope: !1856)
!1859 = !DILocation(line: 64, column: 3231, scope: !1856)
!1860 = !DILocation(line: 64, column: 3247, scope: !1856)
!1861 = !DILocation(line: 64, column: 3261, scope: !1856)
!1862 = !DILocation(line: 64, column: 3223, scope: !1856)
!1863 = !DILocation(line: 64, column: 3211, scope: !1856)
!1864 = !DILocation(line: 64, column: 3201, scope: !1856)
!1865 = !DILocation(line: 64, column: 3204, scope: !1856)
!1866 = !DILocation(line: 64, column: 3209, scope: !1856)
!1867 = !DILocation(line: 64, column: 3328, scope: !1856)
!1868 = !DILocation(line: 64, column: 3331, scope: !1856)
!1869 = !DILocation(line: 64, column: 3320, scope: !1856)
!1870 = !DILocation(line: 64, column: 3336, scope: !1856)
!1871 = !DILocation(line: 64, column: 3350, scope: !1856)
!1872 = !DILocation(line: 64, column: 3312, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1856, file: !7, discriminator: 39)
!1874 = !DILocation(line: 64, column: 3300, scope: !1856)
!1875 = !DILocation(line: 64, column: 3290, scope: !1856)
!1876 = !DILocation(line: 64, column: 3293, scope: !1856)
!1877 = !DILocation(line: 64, column: 3298, scope: !1856)
!1878 = !DILocation(line: 64, column: 3372, scope: !1856)
!1879 = !DILocation(line: 64, column: 3379, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1664, file: !7, discriminator: 36)
!1881 = !DILocation(line: 64, column: 3382, scope: !1880)
!1882 = !DILocation(line: 64, column: 3374, scope: !1880)
!1883 = !DILocation(line: 64, column: 3401, scope: !1880)
!1884 = !DILocation(line: 64, column: 3390, scope: !1880)
!1885 = !DILocation(line: 64, column: 3393, scope: !1880)
!1886 = !DILocation(line: 64, column: 3399, scope: !1880)
!1887 = !DILocation(line: 64, column: 3427, scope: !1880)
!1888 = !DILocation(line: 64, column: 3412, scope: !1880)
!1889 = !DILocation(line: 64, column: 3415, scope: !1880)
!1890 = !DILocation(line: 64, column: 3425, scope: !1880)
!1891 = !DILocation(line: 64, column: 3458, scope: !1880)
!1892 = !DILocation(line: 64, column: 3461, scope: !1880)
!1893 = !DILocation(line: 64, column: 3442, scope: !1880)
!1894 = !DILocation(line: 64, column: 3445, scope: !1880)
!1895 = !DILocation(line: 64, column: 3456, scope: !1880)
!1896 = !DILocation(line: 64, column: 3494, scope: !1880)
!1897 = !DILocation(line: 64, column: 3497, scope: !1880)
!1898 = !DILocation(line: 64, column: 3507, scope: !1880)
!1899 = !DILocation(line: 64, column: 3525, scope: !1880)
!1900 = !DILocation(line: 64, column: 3484, scope: !1880)
!1901 = !DILocation(line: 64, column: 3467, scope: !1880)
!1902 = !DILocation(line: 64, column: 3470, scope: !1880)
!1903 = !DILocation(line: 64, column: 3482, scope: !1880)
!1904 = !DILocation(line: 64, column: 3533, scope: !1880)
!1905 = !DILocation(line: 64, column: 3535, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1514, file: !7, discriminator: 37)
!1907 = !DILocation(line: 64, column: 3545, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1514, file: !7, discriminator: 38)
!1909 = distinct !DISubprogram(name: "kh_destroy_dynbufmap_t", scope: !7, file: !7, line: 64, type: !1910, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{null, !5}
!1912 = !DILocalVariable(name: "h", arg: 1, scope: !1909, file: !7, line: 64, type: !5)
!1913 = !DILocation(line: 64, column: 399, scope: !1909)
!1914 = !DILocation(line: 64, column: 408, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !7, line: 64, column: 408)
!1916 = !DILocation(line: 64, column: 408, scope: !1909)
!1917 = !DILocation(line: 64, column: 426, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1919, file: !7, discriminator: 1)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !7, line: 64, column: 411)
!1920 = !DILocation(line: 64, column: 429, scope: !1918)
!1921 = !DILocation(line: 64, column: 418, scope: !1918)
!1922 = !DILocation(line: 64, column: 413, scope: !1918)
!1923 = !DILocation(line: 64, column: 441, scope: !1918)
!1924 = !DILocation(line: 64, column: 444, scope: !1918)
!1925 = !DILocation(line: 64, column: 436, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1918, file: !7, discriminator: 3)
!1927 = !DILocation(line: 64, column: 465, scope: !1918)
!1928 = !DILocation(line: 64, column: 468, scope: !1918)
!1929 = !DILocation(line: 64, column: 457, scope: !1918)
!1930 = !DILocation(line: 64, column: 452, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1918, file: !7, discriminator: 4)
!1932 = !DILocation(line: 64, column: 480, scope: !1918)
!1933 = !DILocation(line: 64, column: 475, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1918, file: !7, discriminator: 5)
!1935 = !DILocation(line: 64, column: 484, scope: !1918)
!1936 = !DILocation(line: 64, column: 486, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1909, file: !7, discriminator: 2)
