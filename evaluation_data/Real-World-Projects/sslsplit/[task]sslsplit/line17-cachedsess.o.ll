; ModuleID = './line17-cachedsess.o.i'
source_filename = "./line17-cachedsess.o.i"
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
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.1, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.anon.1 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type { %struct.stack_st }
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@dstsessmap = internal global %struct.kh_dynbufmap_t_s* null, align 8

; Function Attrs: nounwind uwtable
define void @cachedsess_init_cb(%struct.cache* nonnull) #0 !dbg !104 {
  %2 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cache** %2, metadata !208, metadata !209), !dbg !210
  %3 = call %struct.kh_dynbufmap_t_s* @kh_init_dynbufmap_t(), !dbg !211
  store %struct.kh_dynbufmap_t_s* %3, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !212
  %4 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !213
  %5 = getelementptr inbounds %struct.cache, %struct.cache* %4, i32 0, i32 1, !dbg !214
  store i32 ()* @cachedsess_begin_cb, i32 ()** %5, align 8, !dbg !215
  %6 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !216
  %7 = getelementptr inbounds %struct.cache, %struct.cache* %6, i32 0, i32 2, !dbg !217
  store i32 ()* @cachedsess_end_cb, i32 ()** %7, align 8, !dbg !218
  %8 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !219
  %9 = getelementptr inbounds %struct.cache, %struct.cache* %8, i32 0, i32 3, !dbg !220
  store i32 (i32)* @cachedsess_exist_cb, i32 (i32)** %9, align 8, !dbg !221
  %10 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !222
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 4, !dbg !223
  store void (i32)* @cachedsess_del_cb, void (i32)** %11, align 8, !dbg !224
  %12 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !225
  %13 = getelementptr inbounds %struct.cache, %struct.cache* %12, i32 0, i32 5, !dbg !226
  store i32 (i8*)* @cachedsess_get_cb, i32 (i8*)** %13, align 8, !dbg !227
  %14 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !228
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 6, !dbg !229
  store i32 (i8*, i32*)* @cachedsess_put_cb, i32 (i8*, i32*)** %15, align 8, !dbg !230
  %16 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !231
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 7, !dbg !232
  store void (i8*)* @cachedsess_free_key_cb, void (i8*)** %17, align 8, !dbg !233
  %18 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !234
  %19 = getelementptr inbounds %struct.cache, %struct.cache* %18, i32 0, i32 8, !dbg !235
  store void (i8*)* @cachedsess_free_val_cb, void (i8*)** %19, align 8, !dbg !236
  %20 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !237
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 9, !dbg !238
  store i8* (i32)* @cachedsess_get_key_cb, i8* (i32)** %21, align 8, !dbg !239
  %22 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !240
  %23 = getelementptr inbounds %struct.cache, %struct.cache* %22, i32 0, i32 10, !dbg !241
  store i8* (i32)* @cachedsess_get_val_cb, i8* (i32)** %23, align 8, !dbg !242
  %24 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !243
  %25 = getelementptr inbounds %struct.cache, %struct.cache* %24, i32 0, i32 11, !dbg !244
  store void (i32, i8*)* @cachedsess_set_val_cb, void (i32, i8*)** %25, align 8, !dbg !245
  %26 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !246
  %27 = getelementptr inbounds %struct.cache, %struct.cache* %26, i32 0, i32 12, !dbg !247
  store i8* (i8*, i32)* @cachedsess_unpackverify_val_cb, i8* (i8*, i32)** %27, align 8, !dbg !248
  %28 = load %struct.cache*, %struct.cache** %2, align 8, !dbg !249
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 13, !dbg !250
  store void ()* @cachedsess_fini_cb, void ()** %29, align 8, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.kh_dynbufmap_t_s* @kh_init_dynbufmap_t() #2 !dbg !253 {
  %1 = call noalias i8* @calloc(i64 1, i64 40) #7, !dbg !256
  %2 = bitcast i8* %1 to %struct.kh_dynbufmap_t_s*, !dbg !257
  ret %struct.kh_dynbufmap_t_s* %2, !dbg !258
}

; Function Attrs: nounwind uwtable
define internal i32 @cachedsess_begin_cb() #0 !dbg !259 {
  ret i32 0, !dbg !260
}

; Function Attrs: nounwind uwtable
define internal i32 @cachedsess_end_cb() #0 !dbg !261 {
  %1 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !262
  %2 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %1, i32 0, i32 0, !dbg !263
  %3 = load i32, i32* %2, align 8, !dbg !263
  ret i32 %3, !dbg !264
}

; Function Attrs: nounwind uwtable
define internal i32 @cachedsess_exist_cb(i32) #0 !dbg !265 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !266, metadata !209), !dbg !267
  %3 = load i32, i32* %2, align 4, !dbg !268
  %4 = lshr i32 %3, 4, !dbg !269
  %5 = zext i32 %4 to i64, !dbg !270
  %6 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !271
  %7 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %6, i32 0, i32 4, !dbg !272
  %8 = load i32*, i32** %7, align 8, !dbg !272
  %9 = getelementptr inbounds i32, i32* %8, i64 %5, !dbg !270
  %10 = load i32, i32* %9, align 4, !dbg !270
  %11 = load i32, i32* %2, align 4, !dbg !273
  %12 = and i32 %11, 15, !dbg !274
  %13 = shl i32 %12, 1, !dbg !275
  %14 = lshr i32 %10, %13, !dbg !276
  %15 = and i32 %14, 3, !dbg !277
  %16 = icmp ne i32 %15, 0, !dbg !278
  %17 = xor i1 %16, true, !dbg !278
  %18 = zext i1 %17 to i32, !dbg !278
  ret i32 %18, !dbg !279
}

; Function Attrs: nounwind uwtable
define internal void @cachedsess_del_cb(i32) #0 !dbg !280 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !281, metadata !209), !dbg !282
  %3 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !283
  %4 = load i32, i32* %2, align 4, !dbg !284
  call void @kh_del_dynbufmap_t(%struct.kh_dynbufmap_t_s* %3, i32 %4), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: nounwind uwtable
define internal i32 @cachedsess_get_cb(i8*) #0 !dbg !287 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !288, metadata !209), !dbg !289
  %3 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !290
  %4 = load i8*, i8** %2, align 8, !dbg !291
  %5 = bitcast i8* %4 to %struct.dynbuf*, !dbg !291
  %6 = call i32 @kh_get_dynbufmap_t(%struct.kh_dynbufmap_t_s* %3, %struct.dynbuf* %5), !dbg !292
  ret i32 %6, !dbg !293
}

; Function Attrs: nounwind uwtable
define internal i32 @cachedsess_put_cb(i8*, i32*) #0 !dbg !294 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !295, metadata !209), !dbg !296
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !297, metadata !209), !dbg !298
  %5 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !299
  %6 = load i8*, i8** %3, align 8, !dbg !300
  %7 = bitcast i8* %6 to %struct.dynbuf*, !dbg !300
  %8 = load i32*, i32** %4, align 8, !dbg !301
  %9 = call i32 @kh_put_dynbufmap_t(%struct.kh_dynbufmap_t_s* %5, %struct.dynbuf* %7, i32* %8), !dbg !302
  ret i32 %9, !dbg !303
}

; Function Attrs: nounwind uwtable
define internal void @cachedsess_free_key_cb(i8*) #0 !dbg !304 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !305, metadata !209), !dbg !306
  %3 = load i8*, i8** %2, align 8, !dbg !307
  %4 = bitcast i8* %3 to %struct.dynbuf*, !dbg !307
  call void @dynbuf_free(%struct.dynbuf* %4), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: nounwind uwtable
define internal void @cachedsess_free_val_cb(i8*) #0 !dbg !310 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !311, metadata !209), !dbg !312
  %3 = load i8*, i8** %2, align 8, !dbg !313
  %4 = bitcast i8* %3 to %struct.dynbuf*, !dbg !313
  call void @dynbuf_free(%struct.dynbuf* %4), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: nounwind uwtable
define internal i8* @cachedsess_get_key_cb(i32) #0 !dbg !316 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !317, metadata !209), !dbg !318
  %3 = load i32, i32* %2, align 4, !dbg !319
  %4 = zext i32 %3 to i64, !dbg !320
  %5 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !321
  %6 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %5, i32 0, i32 5, !dbg !322
  %7 = load %struct.dynbuf**, %struct.dynbuf*** %6, align 8, !dbg !322
  %8 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %7, i64 %4, !dbg !320
  %9 = load %struct.dynbuf*, %struct.dynbuf** %8, align 8, !dbg !320
  %10 = bitcast %struct.dynbuf* %9 to i8*, !dbg !323
  ret i8* %10, !dbg !324
}

; Function Attrs: nounwind uwtable
define internal i8* @cachedsess_get_val_cb(i32) #0 !dbg !325 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !326, metadata !209), !dbg !327
  %3 = load i32, i32* %2, align 4, !dbg !328
  %4 = zext i32 %3 to i64, !dbg !329
  %5 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !330
  %6 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %5, i32 0, i32 6, !dbg !331
  %7 = load %struct.dynbuf**, %struct.dynbuf*** %6, align 8, !dbg !331
  %8 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %7, i64 %4, !dbg !329
  %9 = load %struct.dynbuf*, %struct.dynbuf** %8, align 8, !dbg !329
  %10 = bitcast %struct.dynbuf* %9 to i8*, !dbg !332
  ret i8* %10, !dbg !333
}

; Function Attrs: nounwind uwtable
define internal void @cachedsess_set_val_cb(i32, i8*) #0 !dbg !334 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !335, metadata !209), !dbg !336
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !337, metadata !209), !dbg !338
  %5 = load i8*, i8** %4, align 8, !dbg !339
  %6 = bitcast i8* %5 to %struct.dynbuf*, !dbg !339
  %7 = load i32, i32* %3, align 4, !dbg !340
  %8 = zext i32 %7 to i64, !dbg !341
  %9 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !342
  %10 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %9, i32 0, i32 6, !dbg !343
  %11 = load %struct.dynbuf**, %struct.dynbuf*** %10, align 8, !dbg !343
  %12 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %11, i64 %8, !dbg !341
  store %struct.dynbuf* %6, %struct.dynbuf** %12, align 8, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: nounwind uwtable
define internal i8* @cachedsess_unpackverify_val_cb(i8*, i32) #0 !dbg !346 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dynbuf*, align 8
  %7 = alloca %struct.ssl_session_st*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !347, metadata !209), !dbg !348
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !349, metadata !209), !dbg !350
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %6, metadata !351, metadata !209), !dbg !352
  %9 = load i8*, i8** %4, align 8, !dbg !353
  %10 = bitcast i8* %9 to %struct.dynbuf*, !dbg !353
  store %struct.dynbuf* %10, %struct.dynbuf** %6, align 8, !dbg !352
  call void @llvm.dbg.declare(metadata %struct.ssl_session_st** %7, metadata !354, metadata !209), !dbg !947
  call void @llvm.dbg.declare(metadata i8** %8, metadata !948, metadata !209), !dbg !949
  %11 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !950
  %12 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %11, i32 0, i32 0, !dbg !951
  %13 = load i8*, i8** %12, align 8, !dbg !951
  store i8* %13, i8** %8, align 8, !dbg !952
  %14 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !953
  %15 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %14, i32 0, i32 1, !dbg !954
  %16 = load i64, i64* %15, align 8, !dbg !954
  %17 = call %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** null, i8** %8, i64 %16), !dbg !955
  store %struct.ssl_session_st* %17, %struct.ssl_session_st** %7, align 8, !dbg !956
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !957
  %19 = icmp ne %struct.ssl_session_st* %18, null, !dbg !957
  br i1 %19, label %21, label %20, !dbg !959

; <label>:20:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !960
  br label %35, !dbg !960

; <label>:21:                                     ; preds = %2
  %22 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !961
  %23 = call i32 @ssl_session_is_valid(%struct.ssl_session_st* %22), !dbg !963
  %24 = icmp ne i32 %23, 0, !dbg !963
  br i1 %24, label %27, label %25, !dbg !964

; <label>:25:                                     ; preds = %21
  %26 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !965
  call void @SSL_SESSION_free(%struct.ssl_session_st* %26), !dbg !967
  store i8* null, i8** %3, align 8, !dbg !968
  br label %35, !dbg !968

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %5, align 4, !dbg !969
  %29 = icmp ne i32 %28, 0, !dbg !969
  br i1 %29, label %30, label %33, !dbg !971

; <label>:30:                                     ; preds = %27
  %31 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !972
  %32 = bitcast %struct.ssl_session_st* %31 to i8*, !dbg !972
  store i8* %32, i8** %3, align 8, !dbg !973
  br label %35, !dbg !973

; <label>:33:                                     ; preds = %27
  %34 = load %struct.ssl_session_st*, %struct.ssl_session_st** %7, align 8, !dbg !974
  call void @SSL_SESSION_free(%struct.ssl_session_st* %34), !dbg !975
  store i8* inttoptr (i64 -1 to i8*), i8** %3, align 8, !dbg !976
  br label %35, !dbg !976

; <label>:35:                                     ; preds = %33, %30, %25, %20
  %36 = load i8*, i8** %3, align 8, !dbg !977
  ret i8* %36, !dbg !977
}

; Function Attrs: nounwind uwtable
define internal void @cachedsess_fini_cb() #0 !dbg !978 {
  %1 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** @dstsessmap, align 8, !dbg !979
  call void @kh_destroy_dynbufmap_t(%struct.kh_dynbufmap_t_s* %1), !dbg !980
  ret void, !dbg !981
}

; Function Attrs: nounwind uwtable
define i8* @cachedsess_mkkey(%struct.sockaddr* nonnull, i32, i8*) #0 !dbg !982 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dynbuf, align 8
  %9 = alloca %struct.dynbuf*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr** %5, metadata !998, metadata !209), !dbg !999
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1000, metadata !209), !dbg !1001
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1002, metadata !209), !dbg !1003
  call void @llvm.dbg.declare(metadata %struct.dynbuf* %8, metadata !1004, metadata !209), !dbg !1005
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %9, metadata !1006, metadata !209), !dbg !1007
  call void @llvm.dbg.declare(metadata i16* %10, metadata !1008, metadata !209), !dbg !1009
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1010, metadata !209), !dbg !1011
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8, !dbg !1012
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_storage*, !dbg !1013
  %14 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 0, !dbg !1013
  %15 = load i16, i16* %14, align 8, !dbg !1013
  %16 = zext i16 %15 to i32, !dbg !1014
  switch i32 %16, label %39 [
    i32 2, label %17
    i32 10, label %28
  ], !dbg !1015

; <label>:17:                                     ; preds = %3
  %18 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8, !dbg !1016
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*, !dbg !1018
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2, !dbg !1018
  %21 = bitcast %struct.in_addr* %20 to i8*, !dbg !1019
  %22 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 0, !dbg !1020
  store i8* %21, i8** %22, align 8, !dbg !1021
  %23 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 1, !dbg !1022
  store i64 4, i64* %23, align 8, !dbg !1023
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8, !dbg !1024
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in*, !dbg !1025
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 1, !dbg !1025
  %27 = load i16, i16* %26, align 2, !dbg !1025
  store i16 %27, i16* %10, align 2, !dbg !1026
  br label %40, !dbg !1027

; <label>:28:                                     ; preds = %3
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8, !dbg !1028
  %30 = bitcast %struct.sockaddr* %29 to %struct.sockaddr_in6*, !dbg !1029
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %30, i32 0, i32 3, !dbg !1029
  %32 = bitcast %struct.in6_addr* %31 to i8*, !dbg !1030
  %33 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 0, !dbg !1031
  store i8* %32, i8** %33, align 8, !dbg !1032
  %34 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 1, !dbg !1033
  store i64 16, i64* %34, align 8, !dbg !1034
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8, !dbg !1035
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*, !dbg !1036
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 1, !dbg !1036
  %38 = load i16, i16* %37, align 2, !dbg !1036
  store i16 %38, i16* %10, align 2, !dbg !1037
  br label %40, !dbg !1038

; <label>:39:                                     ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !1039
  br label %83, !dbg !1039

; <label>:40:                                     ; preds = %28, %17
  %41 = load i8*, i8** %7, align 8, !dbg !1040
  %42 = icmp ne i8* %41, null, !dbg !1040
  br i1 %42, label %43, label %46, !dbg !1040

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %7, align 8, !dbg !1041
  %45 = call i64 @strlen(i8* %44) #8, !dbg !1043
  br label %47, !dbg !1044

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !1045

; <label>:47:                                     ; preds = %46, %43
  %48 = phi i64 [ %45, %43 ], [ 0, %46 ], !dbg !1047
  store i64 %48, i64* %11, align 8, !dbg !1049
  %49 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 1, !dbg !1050
  %50 = load i64, i64* %49, align 8, !dbg !1050
  %51 = add i64 %50, 2, !dbg !1052
  %52 = load i64, i64* %11, align 8, !dbg !1053
  %53 = add i64 %51, %52, !dbg !1054
  %54 = call noalias %struct.dynbuf* @dynbuf_new_alloc(i64 %53), !dbg !1055
  store %struct.dynbuf* %54, %struct.dynbuf** %9, align 8, !dbg !1056
  %55 = icmp ne %struct.dynbuf* %54, null, !dbg !1056
  br i1 %55, label %57, label %56, !dbg !1057

; <label>:56:                                     ; preds = %47
  store i8* null, i8** %4, align 8, !dbg !1058
  br label %83, !dbg !1058

; <label>:57:                                     ; preds = %47
  %58 = load %struct.dynbuf*, %struct.dynbuf** %9, align 8, !dbg !1059
  %59 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %58, i32 0, i32 0, !dbg !1060
  %60 = load i8*, i8** %59, align 8, !dbg !1060
  %61 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 0, !dbg !1061
  %62 = load i8*, i8** %61, align 8, !dbg !1061
  %63 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 1, !dbg !1062
  %64 = load i64, i64* %63, align 8, !dbg !1062
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %62, i64 %64, i32 1, i1 false), !dbg !1063
  %65 = load %struct.dynbuf*, %struct.dynbuf** %9, align 8, !dbg !1064
  %66 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %65, i32 0, i32 0, !dbg !1065
  %67 = load i8*, i8** %66, align 8, !dbg !1065
  %68 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 1, !dbg !1066
  %69 = load i64, i64* %68, align 8, !dbg !1066
  %70 = getelementptr inbounds i8, i8* %67, i64 %69, !dbg !1067
  %71 = bitcast i16* %10 to i8*, !dbg !1068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 2, i32 1, i1 false), !dbg !1068
  %72 = load %struct.dynbuf*, %struct.dynbuf** %9, align 8, !dbg !1069
  %73 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %72, i32 0, i32 0, !dbg !1070
  %74 = load i8*, i8** %73, align 8, !dbg !1070
  %75 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %8, i32 0, i32 1, !dbg !1071
  %76 = load i64, i64* %75, align 8, !dbg !1071
  %77 = getelementptr inbounds i8, i8* %74, i64 %76, !dbg !1072
  %78 = getelementptr inbounds i8, i8* %77, i64 2, !dbg !1073
  %79 = load i8*, i8** %7, align 8, !dbg !1074
  %80 = load i64, i64* %11, align 8, !dbg !1075
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 %80, i32 1, i1 false), !dbg !1076
  %81 = load %struct.dynbuf*, %struct.dynbuf** %9, align 8, !dbg !1077
  %82 = bitcast %struct.dynbuf* %81 to i8*, !dbg !1077
  store i8* %82, i8** %4, align 8, !dbg !1078
  br label %83, !dbg !1078

; <label>:83:                                     ; preds = %57, %56, %39
  %84 = load i8*, i8** %4, align 8, !dbg !1079
  ret i8* %84, !dbg !1079
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare noalias %struct.dynbuf* @dynbuf_new_alloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i8* @cachedsess_mkval(%struct.ssl_session_st* nonnull) #0 !dbg !1080 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ssl_session_st*, align 8
  %4 = alloca %struct.dynbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.ssl_session_st* %0, %struct.ssl_session_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_session_st** %3, metadata !1083, metadata !209), !dbg !1084
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %4, metadata !1085, metadata !209), !dbg !1086
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1087, metadata !209), !dbg !1088
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1089, metadata !209), !dbg !1090
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %3, align 8, !dbg !1091
  %8 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* %7, i8** null), !dbg !1092
  %9 = sext i32 %8 to i64, !dbg !1092
  store i64 %9, i64* %6, align 8, !dbg !1093
  %10 = load i64, i64* %6, align 8, !dbg !1094
  %11 = icmp ne i64 %10, 0, !dbg !1094
  br i1 %11, label %12, label %16, !dbg !1096

; <label>:12:                                     ; preds = %1
  %13 = load i64, i64* %6, align 8, !dbg !1097
  %14 = call noalias %struct.dynbuf* @dynbuf_new_alloc(i64 %13), !dbg !1099
  store %struct.dynbuf* %14, %struct.dynbuf** %4, align 8, !dbg !1100
  %15 = icmp ne %struct.dynbuf* %14, null, !dbg !1100
  br i1 %15, label %17, label %16, !dbg !1101

; <label>:16:                                     ; preds = %12, %1
  store i8* null, i8** %2, align 8, !dbg !1102
  br label %25, !dbg !1102

; <label>:17:                                     ; preds = %12
  %18 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !1104
  %19 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %18, i32 0, i32 0, !dbg !1105
  %20 = load i8*, i8** %19, align 8, !dbg !1105
  store i8* %20, i8** %5, align 8, !dbg !1106
  %21 = load %struct.ssl_session_st*, %struct.ssl_session_st** %3, align 8, !dbg !1107
  %22 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* %21, i8** %5), !dbg !1108
  %23 = load %struct.dynbuf*, %struct.dynbuf** %4, align 8, !dbg !1109
  %24 = bitcast %struct.dynbuf* %23 to i8*, !dbg !1109
  store i8* %24, i8** %2, align 8, !dbg !1110
  br label %25, !dbg !1110

; <label>:25:                                     ; preds = %17, %16
  %26 = load i8*, i8** %2, align 8, !dbg !1111
  ret i8* %26, !dbg !1111
}

declare i32 @i2d_SSL_SESSION(%struct.ssl_session_st*, i8**) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_del_dynbufmap_t(%struct.kh_dynbufmap_t_s*, i32) #2 !dbg !1112 {
  %3 = alloca %struct.kh_dynbufmap_t_s*, align 8
  %4 = alloca i32, align 4
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %3, metadata !1115, metadata !209), !dbg !1116
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1117, metadata !209), !dbg !1118
  %5 = load i32, i32* %4, align 4, !dbg !1119
  %6 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !1121
  %7 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %6, i32 0, i32 0, !dbg !1122
  %8 = load i32, i32* %7, align 8, !dbg !1122
  %9 = icmp ne i32 %5, %8, !dbg !1123
  br i1 %9, label %10, label %46, !dbg !1124

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !1125
  %12 = lshr i32 %11, 4, !dbg !1127
  %13 = zext i32 %12 to i64, !dbg !1128
  %14 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !1128
  %15 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %14, i32 0, i32 4, !dbg !1129
  %16 = load i32*, i32** %15, align 8, !dbg !1129
  %17 = getelementptr inbounds i32, i32* %16, i64 %13, !dbg !1128
  %18 = load i32, i32* %17, align 4, !dbg !1128
  %19 = load i32, i32* %4, align 4, !dbg !1130
  %20 = and i32 %19, 15, !dbg !1131
  %21 = shl i32 %20, 1, !dbg !1132
  %22 = lshr i32 %18, %21, !dbg !1133
  %23 = and i32 %22, 3, !dbg !1134
  %24 = icmp ne i32 %23, 0, !dbg !1134
  br i1 %24, label %46, label %25, !dbg !1135

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* %4, align 4, !dbg !1136
  %27 = and i32 %26, 15, !dbg !1139
  %28 = shl i32 %27, 1, !dbg !1140
  %29 = zext i32 %28 to i64, !dbg !1141
  %30 = shl i64 1, %29, !dbg !1141
  %31 = load i32, i32* %4, align 4, !dbg !1142
  %32 = lshr i32 %31, 4, !dbg !1143
  %33 = zext i32 %32 to i64, !dbg !1144
  %34 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !1144
  %35 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %34, i32 0, i32 4, !dbg !1145
  %36 = load i32*, i32** %35, align 8, !dbg !1145
  %37 = getelementptr inbounds i32, i32* %36, i64 %33, !dbg !1144
  %38 = load i32, i32* %37, align 4, !dbg !1146
  %39 = zext i32 %38 to i64, !dbg !1146
  %40 = or i64 %39, %30, !dbg !1146
  %41 = trunc i64 %40 to i32, !dbg !1146
  store i32 %41, i32* %37, align 4, !dbg !1146
  %42 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %3, align 8, !dbg !1147
  %43 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %42, i32 0, i32 1, !dbg !1148
  %44 = load i32, i32* %43, align 4, !dbg !1149
  %45 = add i32 %44, -1, !dbg !1149
  store i32 %45, i32* %43, align 4, !dbg !1149
  br label %46, !dbg !1150

; <label>:46:                                     ; preds = %25, %10, %2
  ret void, !dbg !1151
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_dynbufmap_t(%struct.kh_dynbufmap_t_s*, %struct.dynbuf*) #2 !dbg !1153 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kh_dynbufmap_t_s*, align 8
  %5 = alloca %struct.dynbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %4, metadata !1158, metadata !209), !dbg !1159
  store %struct.dynbuf* %1, %struct.dynbuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %5, metadata !1160, metadata !209), !dbg !1161
  %11 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1162
  %12 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %11, i32 0, i32 0, !dbg !1164
  %13 = load i32, i32* %12, align 8, !dbg !1164
  %14 = icmp ne i32 %13, 0, !dbg !1162
  br i1 %14, label %15, label %139, !dbg !1165

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1166, metadata !209), !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1169, metadata !209), !dbg !1170
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1171, metadata !209), !dbg !1172
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1173, metadata !209), !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1175, metadata !209), !dbg !1176
  store i32 0, i32* %10, align 4, !dbg !1177
  %16 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1179
  %17 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %16, i32 0, i32 0, !dbg !1180
  %18 = load i32, i32* %17, align 8, !dbg !1180
  %19 = sub i32 %18, 1, !dbg !1181
  store i32 %19, i32* %9, align 4, !dbg !1182
  %20 = load %struct.dynbuf*, %struct.dynbuf** %5, align 8, !dbg !1183
  %21 = call i32 @kh_dynbuf_hash_func(%struct.dynbuf* %20), !dbg !1184
  store i32 %21, i32* %6, align 4, !dbg !1185
  %22 = load i32, i32* %6, align 4, !dbg !1186
  %23 = load i32, i32* %9, align 4, !dbg !1187
  %24 = and i32 %22, %23, !dbg !1188
  store i32 %24, i32* %7, align 4, !dbg !1189
  %25 = load i32, i32* %7, align 4, !dbg !1190
  store i32 %25, i32* %8, align 4, !dbg !1191
  br label %26, !dbg !1192

; <label>:26:                                     ; preds = %115, %15
  %27 = load i32, i32* %7, align 4, !dbg !1193
  %28 = lshr i32 %27, 4, !dbg !1195
  %29 = zext i32 %28 to i64, !dbg !1196
  %30 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1196
  %31 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %30, i32 0, i32 4, !dbg !1197
  %32 = load i32*, i32** %31, align 8, !dbg !1197
  %33 = getelementptr inbounds i32, i32* %32, i64 %29, !dbg !1196
  %34 = load i32, i32* %33, align 4, !dbg !1196
  %35 = load i32, i32* %7, align 4, !dbg !1198
  %36 = and i32 %35, 15, !dbg !1199
  %37 = shl i32 %36, 1, !dbg !1200
  %38 = lshr i32 %34, %37, !dbg !1201
  %39 = and i32 %38, 2, !dbg !1202
  %40 = icmp ne i32 %39, 0, !dbg !1202
  br i1 %40, label %99, label %41, !dbg !1203

; <label>:41:                                     ; preds = %26
  %42 = load i32, i32* %7, align 4, !dbg !1204
  %43 = lshr i32 %42, 4, !dbg !1206
  %44 = zext i32 %43 to i64, !dbg !1207
  %45 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1207
  %46 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %45, i32 0, i32 4, !dbg !1208
  %47 = load i32*, i32** %46, align 8, !dbg !1208
  %48 = getelementptr inbounds i32, i32* %47, i64 %44, !dbg !1207
  %49 = load i32, i32* %48, align 4, !dbg !1207
  %50 = load i32, i32* %7, align 4, !dbg !1209
  %51 = and i32 %50, 15, !dbg !1210
  %52 = shl i32 %51, 1, !dbg !1211
  %53 = lshr i32 %49, %52, !dbg !1212
  %54 = and i32 %53, 1, !dbg !1213
  %55 = icmp ne i32 %54, 0, !dbg !1213
  br i1 %55, label %97, label %56, !dbg !1214

; <label>:56:                                     ; preds = %41
  %57 = load i32, i32* %7, align 4, !dbg !1215
  %58 = zext i32 %57 to i64, !dbg !1217
  %59 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1217
  %60 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %59, i32 0, i32 5, !dbg !1218
  %61 = load %struct.dynbuf**, %struct.dynbuf*** %60, align 8, !dbg !1218
  %62 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %61, i64 %58, !dbg !1217
  %63 = load %struct.dynbuf*, %struct.dynbuf** %62, align 8, !dbg !1217
  %64 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %63, i32 0, i32 1, !dbg !1219
  %65 = load i64, i64* %64, align 8, !dbg !1219
  %66 = load %struct.dynbuf*, %struct.dynbuf** %5, align 8, !dbg !1220
  %67 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %66, i32 0, i32 1, !dbg !1221
  %68 = load i64, i64* %67, align 8, !dbg !1221
  %69 = icmp eq i64 %65, %68, !dbg !1222
  br i1 %69, label %70, label %94, !dbg !1223

; <label>:70:                                     ; preds = %56
  %71 = load i32, i32* %7, align 4, !dbg !1224
  %72 = zext i32 %71 to i64, !dbg !1226
  %73 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1226
  %74 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %73, i32 0, i32 5, !dbg !1227
  %75 = load %struct.dynbuf**, %struct.dynbuf*** %74, align 8, !dbg !1227
  %76 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %75, i64 %72, !dbg !1226
  %77 = load %struct.dynbuf*, %struct.dynbuf** %76, align 8, !dbg !1226
  %78 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %77, i32 0, i32 0, !dbg !1228
  %79 = load i8*, i8** %78, align 8, !dbg !1228
  %80 = load %struct.dynbuf*, %struct.dynbuf** %5, align 8, !dbg !1229
  %81 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %80, i32 0, i32 0, !dbg !1230
  %82 = load i8*, i8** %81, align 8, !dbg !1230
  %83 = load i32, i32* %7, align 4, !dbg !1231
  %84 = zext i32 %83 to i64, !dbg !1232
  %85 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1232
  %86 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %85, i32 0, i32 5, !dbg !1233
  %87 = load %struct.dynbuf**, %struct.dynbuf*** %86, align 8, !dbg !1233
  %88 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %87, i64 %84, !dbg !1232
  %89 = load %struct.dynbuf*, %struct.dynbuf** %88, align 8, !dbg !1232
  %90 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %89, i32 0, i32 1, !dbg !1234
  %91 = load i64, i64* %90, align 8, !dbg !1234
  %92 = call i32 @memcmp(i8* %79, i8* %82, i64 %91) #8, !dbg !1235
  %93 = icmp eq i32 %92, 0, !dbg !1236
  br label %94

; <label>:94:                                     ; preds = %70, %56
  %95 = phi i1 [ false, %56 ], [ %93, %70 ]
  %96 = xor i1 %95, true, !dbg !1237
  br label %97, !dbg !1239

; <label>:97:                                     ; preds = %94, %41
  %98 = phi i1 [ true, %41 ], [ %96, %94 ]
  br label %99

; <label>:99:                                     ; preds = %97, %26
  %100 = phi i1 [ false, %26 ], [ %98, %97 ]
  br i1 %100, label %101, label %116, !dbg !1240

; <label>:101:                                    ; preds = %99
  %102 = load i32, i32* %7, align 4, !dbg !1242
  %103 = load i32, i32* %10, align 4, !dbg !1245
  %104 = add i32 %103, 1, !dbg !1245
  store i32 %104, i32* %10, align 4, !dbg !1245
  %105 = add i32 %102, %104, !dbg !1246
  %106 = load i32, i32* %9, align 4, !dbg !1247
  %107 = and i32 %105, %106, !dbg !1248
  store i32 %107, i32* %7, align 4, !dbg !1249
  %108 = load i32, i32* %7, align 4, !dbg !1250
  %109 = load i32, i32* %8, align 4, !dbg !1251
  %110 = icmp eq i32 %108, %109, !dbg !1252
  br i1 %110, label %111, label %115, !dbg !1250

; <label>:111:                                    ; preds = %101
  %112 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1253
  %113 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %112, i32 0, i32 0, !dbg !1256
  %114 = load i32, i32* %113, align 8, !dbg !1256
  store i32 %114, i32* %3, align 4, !dbg !1257
  br label %140, !dbg !1257

; <label>:115:                                    ; preds = %101
  br label %26, !dbg !1258, !llvm.loop !1260

; <label>:116:                                    ; preds = %99
  %117 = load i32, i32* %7, align 4, !dbg !1262
  %118 = lshr i32 %117, 4, !dbg !1264
  %119 = zext i32 %118 to i64, !dbg !1265
  %120 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1265
  %121 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %120, i32 0, i32 4, !dbg !1266
  %122 = load i32*, i32** %121, align 8, !dbg !1266
  %123 = getelementptr inbounds i32, i32* %122, i64 %119, !dbg !1265
  %124 = load i32, i32* %123, align 4, !dbg !1265
  %125 = load i32, i32* %7, align 4, !dbg !1267
  %126 = and i32 %125, 15, !dbg !1268
  %127 = shl i32 %126, 1, !dbg !1269
  %128 = lshr i32 %124, %127, !dbg !1270
  %129 = and i32 %128, 3, !dbg !1271
  %130 = icmp ne i32 %129, 0, !dbg !1271
  br i1 %130, label %131, label %135, !dbg !1272

; <label>:131:                                    ; preds = %116
  %132 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1273
  %133 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %132, i32 0, i32 0, !dbg !1275
  %134 = load i32, i32* %133, align 8, !dbg !1275
  br label %137, !dbg !1276

; <label>:135:                                    ; preds = %116
  %136 = load i32, i32* %7, align 4, !dbg !1277
  br label %137, !dbg !1279

; <label>:137:                                    ; preds = %135, %131
  %138 = phi i32 [ %134, %131 ], [ %136, %135 ], !dbg !1280
  store i32 %138, i32* %3, align 4, !dbg !1282
  br label %140, !dbg !1282

; <label>:139:                                    ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1283
  br label %140, !dbg !1283

; <label>:140:                                    ; preds = %139, %137, %111
  %141 = load i32, i32* %3, align 4, !dbg !1285
  ret i32 %141, !dbg !1285
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_dynbuf_hash_func(%struct.dynbuf*) #2 !dbg !1287 {
  %2 = alloca %struct.dynbuf*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dynbuf* %0, %struct.dynbuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %2, metadata !1290, metadata !209), !dbg !1291
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1292, metadata !209), !dbg !1293
  %6 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1294
  %7 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %6, i32 0, i32 0, !dbg !1295
  %8 = load i8*, i8** %7, align 8, !dbg !1295
  %9 = bitcast i8* %8 to i32*, !dbg !1296
  store i32* %9, i32** %3, align 8, !dbg !1293
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1297, metadata !209), !dbg !1298
  store i32 0, i32* %4, align 4, !dbg !1298
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1299, metadata !209), !dbg !1300
  %10 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1301
  %11 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %10, i32 0, i32 1, !dbg !1303
  %12 = load i64, i64* %11, align 8, !dbg !1303
  %13 = urem i64 %12, 4, !dbg !1304
  %14 = trunc i64 %13 to i32, !dbg !1301
  store i32 %14, i32* %5, align 4, !dbg !1305
  %15 = icmp ne i32 %14, 0, !dbg !1305
  br i1 %15, label %16, label %31, !dbg !1306

; <label>:16:                                     ; preds = %1
  %17 = bitcast i32* %4 to i8*, !dbg !1307
  %18 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1309
  %19 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %18, i32 0, i32 0, !dbg !1310
  %20 = load i8*, i8** %19, align 8, !dbg !1310
  %21 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1311
  %22 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %21, i32 0, i32 1, !dbg !1312
  %23 = load i64, i64* %22, align 8, !dbg !1312
  %24 = getelementptr inbounds i8, i8* %20, i64 %23, !dbg !1313
  %25 = load i32, i32* %5, align 4, !dbg !1314
  %26 = sext i32 %25 to i64, !dbg !1315
  %27 = sub i64 0, %26, !dbg !1315
  %28 = getelementptr inbounds i8, i8* %24, i64 %27, !dbg !1315
  %29 = load i32, i32* %5, align 4, !dbg !1316
  %30 = sext i32 %29 to i64, !dbg !1316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %28, i64 %30, i32 1, i1 false), !dbg !1307
  br label %31, !dbg !1317

; <label>:31:                                     ; preds = %16, %1
  br label %32, !dbg !1318

; <label>:32:                                     ; preds = %47, %31
  %33 = load i32*, i32** %3, align 8, !dbg !1319
  %34 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1321
  %35 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %34, i32 0, i32 0, !dbg !1322
  %36 = load i8*, i8** %35, align 8, !dbg !1322
  %37 = load %struct.dynbuf*, %struct.dynbuf** %2, align 8, !dbg !1323
  %38 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %37, i32 0, i32 1, !dbg !1324
  %39 = load i64, i64* %38, align 8, !dbg !1324
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !1325
  %41 = load i32, i32* %5, align 4, !dbg !1326
  %42 = sext i32 %41 to i64, !dbg !1327
  %43 = sub i64 0, %42, !dbg !1327
  %44 = getelementptr inbounds i8, i8* %40, i64 %43, !dbg !1327
  %45 = bitcast i8* %44 to i32*, !dbg !1328
  %46 = icmp ult i32* %33, %45, !dbg !1329
  br i1 %46, label %47, label %53, !dbg !1330

; <label>:47:                                     ; preds = %32
  %48 = load i32*, i32** %3, align 8, !dbg !1331
  %49 = getelementptr inbounds i32, i32* %48, i32 1, !dbg !1331
  store i32* %49, i32** %3, align 8, !dbg !1331
  %50 = load i32, i32* %48, align 4, !dbg !1333
  %51 = load i32, i32* %4, align 4, !dbg !1334
  %52 = xor i32 %51, %50, !dbg !1334
  store i32 %52, i32* %4, align 4, !dbg !1334
  br label %32, !dbg !1335, !llvm.loop !1337

; <label>:53:                                     ; preds = %32
  %54 = load i32, i32* %4, align 4, !dbg !1338
  ret i32 %54, !dbg !1339
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_put_dynbufmap_t(%struct.kh_dynbufmap_t_s*, %struct.dynbuf*, i32*) #2 !dbg !1340 {
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
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %5, metadata !1343, metadata !209), !dbg !1344
  store %struct.dynbuf* %1, %struct.dynbuf** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %6, metadata !1345, metadata !209), !dbg !1346
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1347, metadata !209), !dbg !1348
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1349, metadata !209), !dbg !1350
  %15 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1351
  %16 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %15, i32 0, i32 2, !dbg !1353
  %17 = load i32, i32* %16, align 8, !dbg !1353
  %18 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1354
  %19 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %18, i32 0, i32 3, !dbg !1355
  %20 = load i32, i32* %19, align 4, !dbg !1355
  %21 = icmp uge i32 %17, %20, !dbg !1356
  br i1 %21, label %22, label %60, !dbg !1357

; <label>:22:                                     ; preds = %3
  %23 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1358
  %24 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %23, i32 0, i32 0, !dbg !1362
  %25 = load i32, i32* %24, align 8, !dbg !1362
  %26 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1363
  %27 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %26, i32 0, i32 1, !dbg !1364
  %28 = load i32, i32* %27, align 4, !dbg !1364
  %29 = shl i32 %28, 1, !dbg !1365
  %30 = icmp ugt i32 %25, %29, !dbg !1366
  br i1 %30, label %31, label %45, !dbg !1358

; <label>:31:                                     ; preds = %22
  %32 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1367
  %33 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1371
  %34 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %33, i32 0, i32 0, !dbg !1372
  %35 = load i32, i32* %34, align 8, !dbg !1372
  %36 = sub i32 %35, 1, !dbg !1373
  %37 = call i32 @kh_resize_dynbufmap_t(%struct.kh_dynbufmap_t_s* %32, i32 %36), !dbg !1374
  %38 = icmp slt i32 %37, 0, !dbg !1375
  br i1 %38, label %39, label %44, !dbg !1374

; <label>:39:                                     ; preds = %31
  %40 = load i32*, i32** %7, align 8, !dbg !1376
  store i32 -1, i32* %40, align 4, !dbg !1379
  %41 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1380
  %42 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %41, i32 0, i32 0, !dbg !1381
  %43 = load i32, i32* %42, align 8, !dbg !1381
  store i32 %43, i32* %4, align 4, !dbg !1382
  br label %328, !dbg !1382

; <label>:44:                                     ; preds = %31
  br label %59, !dbg !1383

; <label>:45:                                     ; preds = %22
  %46 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1385
  %47 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1388
  %48 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %47, i32 0, i32 0, !dbg !1389
  %49 = load i32, i32* %48, align 8, !dbg !1389
  %50 = add i32 %49, 1, !dbg !1390
  %51 = call i32 @kh_resize_dynbufmap_t(%struct.kh_dynbufmap_t_s* %46, i32 %50), !dbg !1391
  %52 = icmp slt i32 %51, 0, !dbg !1392
  br i1 %52, label %53, label %58, !dbg !1391

; <label>:53:                                     ; preds = %45
  %54 = load i32*, i32** %7, align 8, !dbg !1393
  store i32 -1, i32* %54, align 4, !dbg !1396
  %55 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1397
  %56 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %55, i32 0, i32 0, !dbg !1398
  %57 = load i32, i32* %56, align 8, !dbg !1398
  store i32 %57, i32* %4, align 4, !dbg !1399
  br label %328, !dbg !1399

; <label>:58:                                     ; preds = %45
  br label %59

; <label>:59:                                     ; preds = %58, %44
  br label %60, !dbg !1400

; <label>:60:                                     ; preds = %59, %3
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1402, metadata !209), !dbg !1404
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1405, metadata !209), !dbg !1406
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1407, metadata !209), !dbg !1408
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1409, metadata !209), !dbg !1410
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1411, metadata !209), !dbg !1412
  %61 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1413
  %62 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %61, i32 0, i32 0, !dbg !1415
  %63 = load i32, i32* %62, align 8, !dbg !1415
  %64 = sub i32 %63, 1, !dbg !1416
  store i32 %64, i32* %13, align 4, !dbg !1417
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1418, metadata !209), !dbg !1419
  store i32 0, i32* %14, align 4, !dbg !1420
  %65 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1421
  %66 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %65, i32 0, i32 0, !dbg !1422
  %67 = load i32, i32* %66, align 8, !dbg !1422
  store i32 %67, i32* %11, align 4, !dbg !1423
  store i32 %67, i32* %8, align 4, !dbg !1424
  %68 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1425
  %69 = call i32 @kh_dynbuf_hash_func(%struct.dynbuf* %68), !dbg !1426
  store i32 %69, i32* %9, align 4, !dbg !1427
  %70 = load i32, i32* %9, align 4, !dbg !1428
  %71 = load i32, i32* %13, align 4, !dbg !1429
  %72 = and i32 %70, %71, !dbg !1430
  store i32 %72, i32* %10, align 4, !dbg !1431
  %73 = load i32, i32* %10, align 4, !dbg !1432
  %74 = lshr i32 %73, 4, !dbg !1433
  %75 = zext i32 %74 to i64, !dbg !1434
  %76 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1434
  %77 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %76, i32 0, i32 4, !dbg !1435
  %78 = load i32*, i32** %77, align 8, !dbg !1435
  %79 = getelementptr inbounds i32, i32* %78, i64 %75, !dbg !1434
  %80 = load i32, i32* %79, align 4, !dbg !1434
  %81 = load i32, i32* %10, align 4, !dbg !1436
  %82 = and i32 %81, 15, !dbg !1437
  %83 = shl i32 %82, 1, !dbg !1438
  %84 = lshr i32 %80, %83, !dbg !1439
  %85 = and i32 %84, 2, !dbg !1440
  %86 = icmp ne i32 %85, 0, !dbg !1440
  br i1 %86, label %87, label %89, !dbg !1441

; <label>:87:                                     ; preds = %60
  %88 = load i32, i32* %10, align 4, !dbg !1442
  store i32 %88, i32* %8, align 4, !dbg !1445
  br label %229, !dbg !1446

; <label>:89:                                     ; preds = %60
  %90 = load i32, i32* %10, align 4, !dbg !1447
  store i32 %90, i32* %12, align 4, !dbg !1450
  br label %91, !dbg !1451

; <label>:91:                                     ; preds = %195, %89
  %92 = load i32, i32* %10, align 4, !dbg !1452
  %93 = lshr i32 %92, 4, !dbg !1454
  %94 = zext i32 %93 to i64, !dbg !1455
  %95 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1455
  %96 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %95, i32 0, i32 4, !dbg !1456
  %97 = load i32*, i32** %96, align 8, !dbg !1456
  %98 = getelementptr inbounds i32, i32* %97, i64 %94, !dbg !1455
  %99 = load i32, i32* %98, align 4, !dbg !1455
  %100 = load i32, i32* %10, align 4, !dbg !1457
  %101 = and i32 %100, 15, !dbg !1458
  %102 = shl i32 %101, 1, !dbg !1459
  %103 = lshr i32 %99, %102, !dbg !1460
  %104 = and i32 %103, 2, !dbg !1461
  %105 = icmp ne i32 %104, 0, !dbg !1461
  br i1 %105, label %164, label %106, !dbg !1462

; <label>:106:                                    ; preds = %91
  %107 = load i32, i32* %10, align 4, !dbg !1463
  %108 = lshr i32 %107, 4, !dbg !1465
  %109 = zext i32 %108 to i64, !dbg !1466
  %110 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1466
  %111 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %110, i32 0, i32 4, !dbg !1467
  %112 = load i32*, i32** %111, align 8, !dbg !1467
  %113 = getelementptr inbounds i32, i32* %112, i64 %109, !dbg !1466
  %114 = load i32, i32* %113, align 4, !dbg !1466
  %115 = load i32, i32* %10, align 4, !dbg !1468
  %116 = and i32 %115, 15, !dbg !1469
  %117 = shl i32 %116, 1, !dbg !1470
  %118 = lshr i32 %114, %117, !dbg !1471
  %119 = and i32 %118, 1, !dbg !1472
  %120 = icmp ne i32 %119, 0, !dbg !1472
  br i1 %120, label %162, label %121, !dbg !1473

; <label>:121:                                    ; preds = %106
  %122 = load i32, i32* %10, align 4, !dbg !1474
  %123 = zext i32 %122 to i64, !dbg !1476
  %124 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1476
  %125 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %124, i32 0, i32 5, !dbg !1477
  %126 = load %struct.dynbuf**, %struct.dynbuf*** %125, align 8, !dbg !1477
  %127 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %126, i64 %123, !dbg !1476
  %128 = load %struct.dynbuf*, %struct.dynbuf** %127, align 8, !dbg !1476
  %129 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %128, i32 0, i32 1, !dbg !1478
  %130 = load i64, i64* %129, align 8, !dbg !1478
  %131 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1479
  %132 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %131, i32 0, i32 1, !dbg !1480
  %133 = load i64, i64* %132, align 8, !dbg !1480
  %134 = icmp eq i64 %130, %133, !dbg !1481
  br i1 %134, label %135, label %159, !dbg !1482

; <label>:135:                                    ; preds = %121
  %136 = load i32, i32* %10, align 4, !dbg !1483
  %137 = zext i32 %136 to i64, !dbg !1485
  %138 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1485
  %139 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %138, i32 0, i32 5, !dbg !1486
  %140 = load %struct.dynbuf**, %struct.dynbuf*** %139, align 8, !dbg !1486
  %141 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %140, i64 %137, !dbg !1485
  %142 = load %struct.dynbuf*, %struct.dynbuf** %141, align 8, !dbg !1485
  %143 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %142, i32 0, i32 0, !dbg !1487
  %144 = load i8*, i8** %143, align 8, !dbg !1487
  %145 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1488
  %146 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %145, i32 0, i32 0, !dbg !1489
  %147 = load i8*, i8** %146, align 8, !dbg !1489
  %148 = load i32, i32* %10, align 4, !dbg !1490
  %149 = zext i32 %148 to i64, !dbg !1491
  %150 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1491
  %151 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %150, i32 0, i32 5, !dbg !1492
  %152 = load %struct.dynbuf**, %struct.dynbuf*** %151, align 8, !dbg !1492
  %153 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %152, i64 %149, !dbg !1491
  %154 = load %struct.dynbuf*, %struct.dynbuf** %153, align 8, !dbg !1491
  %155 = getelementptr inbounds %struct.dynbuf, %struct.dynbuf* %154, i32 0, i32 1, !dbg !1493
  %156 = load i64, i64* %155, align 8, !dbg !1493
  %157 = call i32 @memcmp(i8* %144, i8* %147, i64 %156) #8, !dbg !1494
  %158 = icmp eq i32 %157, 0, !dbg !1495
  br label %159

; <label>:159:                                    ; preds = %135, %121
  %160 = phi i1 [ false, %121 ], [ %158, %135 ]
  %161 = xor i1 %160, true, !dbg !1496
  br label %162, !dbg !1498

; <label>:162:                                    ; preds = %159, %106
  %163 = phi i1 [ true, %106 ], [ %161, %159 ]
  br label %164

; <label>:164:                                    ; preds = %162, %91
  %165 = phi i1 [ false, %91 ], [ %163, %162 ]
  br i1 %165, label %166, label %196, !dbg !1499

; <label>:166:                                    ; preds = %164
  %167 = load i32, i32* %10, align 4, !dbg !1501
  %168 = lshr i32 %167, 4, !dbg !1505
  %169 = zext i32 %168 to i64, !dbg !1506
  %170 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1506
  %171 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %170, i32 0, i32 4, !dbg !1507
  %172 = load i32*, i32** %171, align 8, !dbg !1507
  %173 = getelementptr inbounds i32, i32* %172, i64 %169, !dbg !1506
  %174 = load i32, i32* %173, align 4, !dbg !1506
  %175 = load i32, i32* %10, align 4, !dbg !1508
  %176 = and i32 %175, 15, !dbg !1509
  %177 = shl i32 %176, 1, !dbg !1510
  %178 = lshr i32 %174, %177, !dbg !1511
  %179 = and i32 %178, 1, !dbg !1512
  %180 = icmp ne i32 %179, 0, !dbg !1512
  br i1 %180, label %181, label %183, !dbg !1513

; <label>:181:                                    ; preds = %166
  %182 = load i32, i32* %10, align 4, !dbg !1514
  store i32 %182, i32* %11, align 4, !dbg !1516
  br label %183, !dbg !1517

; <label>:183:                                    ; preds = %181, %166
  %184 = load i32, i32* %10, align 4, !dbg !1518
  %185 = load i32, i32* %14, align 4, !dbg !1520
  %186 = add i32 %185, 1, !dbg !1520
  store i32 %186, i32* %14, align 4, !dbg !1520
  %187 = add i32 %184, %186, !dbg !1521
  %188 = load i32, i32* %13, align 4, !dbg !1522
  %189 = and i32 %187, %188, !dbg !1523
  store i32 %189, i32* %10, align 4, !dbg !1524
  %190 = load i32, i32* %10, align 4, !dbg !1525
  %191 = load i32, i32* %12, align 4, !dbg !1526
  %192 = icmp eq i32 %190, %191, !dbg !1527
  br i1 %192, label %193, label %195, !dbg !1525

; <label>:193:                                    ; preds = %183
  %194 = load i32, i32* %11, align 4, !dbg !1528
  store i32 %194, i32* %8, align 4, !dbg !1532
  br label %196, !dbg !1533

; <label>:195:                                    ; preds = %183
  br label %91, !dbg !1534, !llvm.loop !1536

; <label>:196:                                    ; preds = %193, %164
  %197 = load i32, i32* %8, align 4, !dbg !1538
  %198 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1541
  %199 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %198, i32 0, i32 0, !dbg !1542
  %200 = load i32, i32* %199, align 8, !dbg !1542
  %201 = icmp eq i32 %197, %200, !dbg !1543
  br i1 %201, label %202, label %228, !dbg !1538

; <label>:202:                                    ; preds = %196
  %203 = load i32, i32* %10, align 4, !dbg !1544
  %204 = lshr i32 %203, 4, !dbg !1548
  %205 = zext i32 %204 to i64, !dbg !1549
  %206 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1549
  %207 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %206, i32 0, i32 4, !dbg !1550
  %208 = load i32*, i32** %207, align 8, !dbg !1550
  %209 = getelementptr inbounds i32, i32* %208, i64 %205, !dbg !1549
  %210 = load i32, i32* %209, align 4, !dbg !1549
  %211 = load i32, i32* %10, align 4, !dbg !1551
  %212 = and i32 %211, 15, !dbg !1552
  %213 = shl i32 %212, 1, !dbg !1553
  %214 = lshr i32 %210, %213, !dbg !1554
  %215 = and i32 %214, 2, !dbg !1555
  %216 = icmp ne i32 %215, 0, !dbg !1555
  br i1 %216, label %217, label %225, !dbg !1556

; <label>:217:                                    ; preds = %202
  %218 = load i32, i32* %11, align 4, !dbg !1557
  %219 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1559
  %220 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %219, i32 0, i32 0, !dbg !1560
  %221 = load i32, i32* %220, align 8, !dbg !1560
  %222 = icmp ne i32 %218, %221, !dbg !1561
  br i1 %222, label %223, label %225, !dbg !1562

; <label>:223:                                    ; preds = %217
  %224 = load i32, i32* %11, align 4, !dbg !1563
  store i32 %224, i32* %8, align 4, !dbg !1565
  br label %227, !dbg !1566

; <label>:225:                                    ; preds = %217, %202
  %226 = load i32, i32* %10, align 4, !dbg !1567
  store i32 %226, i32* %8, align 4, !dbg !1569
  br label %227

; <label>:227:                                    ; preds = %225, %223
  br label %228, !dbg !1570

; <label>:228:                                    ; preds = %227, %196
  br label %229

; <label>:229:                                    ; preds = %228, %87
  %230 = load i32, i32* %8, align 4, !dbg !1572
  %231 = lshr i32 %230, 4, !dbg !1575
  %232 = zext i32 %231 to i64, !dbg !1576
  %233 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1576
  %234 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %233, i32 0, i32 4, !dbg !1577
  %235 = load i32*, i32** %234, align 8, !dbg !1577
  %236 = getelementptr inbounds i32, i32* %235, i64 %232, !dbg !1576
  %237 = load i32, i32* %236, align 4, !dbg !1576
  %238 = load i32, i32* %8, align 4, !dbg !1578
  %239 = and i32 %238, 15, !dbg !1579
  %240 = shl i32 %239, 1, !dbg !1580
  %241 = lshr i32 %237, %240, !dbg !1581
  %242 = and i32 %241, 2, !dbg !1582
  %243 = icmp ne i32 %242, 0, !dbg !1582
  br i1 %243, label %244, label %278, !dbg !1583

; <label>:244:                                    ; preds = %229
  %245 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1584
  %246 = load i32, i32* %8, align 4, !dbg !1587
  %247 = zext i32 %246 to i64, !dbg !1588
  %248 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1588
  %249 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %248, i32 0, i32 5, !dbg !1589
  %250 = load %struct.dynbuf**, %struct.dynbuf*** %249, align 8, !dbg !1589
  %251 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %250, i64 %247, !dbg !1588
  store %struct.dynbuf* %245, %struct.dynbuf** %251, align 8, !dbg !1590
  %252 = load i32, i32* %8, align 4, !dbg !1591
  %253 = and i32 %252, 15, !dbg !1592
  %254 = shl i32 %253, 1, !dbg !1593
  %255 = zext i32 %254 to i64, !dbg !1594
  %256 = shl i64 3, %255, !dbg !1594
  %257 = xor i64 %256, -1, !dbg !1595
  %258 = load i32, i32* %8, align 4, !dbg !1596
  %259 = lshr i32 %258, 4, !dbg !1597
  %260 = zext i32 %259 to i64, !dbg !1598
  %261 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1598
  %262 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %261, i32 0, i32 4, !dbg !1599
  %263 = load i32*, i32** %262, align 8, !dbg !1599
  %264 = getelementptr inbounds i32, i32* %263, i64 %260, !dbg !1598
  %265 = load i32, i32* %264, align 4, !dbg !1600
  %266 = zext i32 %265 to i64, !dbg !1600
  %267 = and i64 %266, %257, !dbg !1600
  %268 = trunc i64 %267 to i32, !dbg !1600
  store i32 %268, i32* %264, align 4, !dbg !1600
  %269 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1601
  %270 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %269, i32 0, i32 1, !dbg !1602
  %271 = load i32, i32* %270, align 4, !dbg !1603
  %272 = add i32 %271, 1, !dbg !1603
  store i32 %272, i32* %270, align 4, !dbg !1603
  %273 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1604
  %274 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %273, i32 0, i32 2, !dbg !1605
  %275 = load i32, i32* %274, align 8, !dbg !1606
  %276 = add i32 %275, 1, !dbg !1606
  store i32 %276, i32* %274, align 8, !dbg !1606
  %277 = load i32*, i32** %7, align 8, !dbg !1607
  store i32 1, i32* %277, align 4, !dbg !1608
  br label %326, !dbg !1609

; <label>:278:                                    ; preds = %229
  %279 = load i32, i32* %8, align 4, !dbg !1610
  %280 = lshr i32 %279, 4, !dbg !1613
  %281 = zext i32 %280 to i64, !dbg !1614
  %282 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1614
  %283 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %282, i32 0, i32 4, !dbg !1615
  %284 = load i32*, i32** %283, align 8, !dbg !1615
  %285 = getelementptr inbounds i32, i32* %284, i64 %281, !dbg !1614
  %286 = load i32, i32* %285, align 4, !dbg !1614
  %287 = load i32, i32* %8, align 4, !dbg !1616
  %288 = and i32 %287, 15, !dbg !1617
  %289 = shl i32 %288, 1, !dbg !1618
  %290 = lshr i32 %286, %289, !dbg !1619
  %291 = and i32 %290, 1, !dbg !1620
  %292 = icmp ne i32 %291, 0, !dbg !1620
  br i1 %292, label %293, label %323, !dbg !1621

; <label>:293:                                    ; preds = %278
  %294 = load %struct.dynbuf*, %struct.dynbuf** %6, align 8, !dbg !1622
  %295 = load i32, i32* %8, align 4, !dbg !1625
  %296 = zext i32 %295 to i64, !dbg !1626
  %297 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1626
  %298 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %297, i32 0, i32 5, !dbg !1627
  %299 = load %struct.dynbuf**, %struct.dynbuf*** %298, align 8, !dbg !1627
  %300 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %299, i64 %296, !dbg !1626
  store %struct.dynbuf* %294, %struct.dynbuf** %300, align 8, !dbg !1628
  %301 = load i32, i32* %8, align 4, !dbg !1629
  %302 = and i32 %301, 15, !dbg !1630
  %303 = shl i32 %302, 1, !dbg !1631
  %304 = zext i32 %303 to i64, !dbg !1632
  %305 = shl i64 3, %304, !dbg !1632
  %306 = xor i64 %305, -1, !dbg !1633
  %307 = load i32, i32* %8, align 4, !dbg !1634
  %308 = lshr i32 %307, 4, !dbg !1635
  %309 = zext i32 %308 to i64, !dbg !1636
  %310 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1636
  %311 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %310, i32 0, i32 4, !dbg !1637
  %312 = load i32*, i32** %311, align 8, !dbg !1637
  %313 = getelementptr inbounds i32, i32* %312, i64 %309, !dbg !1636
  %314 = load i32, i32* %313, align 4, !dbg !1638
  %315 = zext i32 %314 to i64, !dbg !1638
  %316 = and i64 %315, %306, !dbg !1638
  %317 = trunc i64 %316 to i32, !dbg !1638
  store i32 %317, i32* %313, align 4, !dbg !1638
  %318 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %5, align 8, !dbg !1639
  %319 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %318, i32 0, i32 1, !dbg !1640
  %320 = load i32, i32* %319, align 4, !dbg !1641
  %321 = add i32 %320, 1, !dbg !1641
  store i32 %321, i32* %319, align 4, !dbg !1641
  %322 = load i32*, i32** %7, align 8, !dbg !1642
  store i32 2, i32* %322, align 4, !dbg !1643
  br label %325, !dbg !1644

; <label>:323:                                    ; preds = %278
  %324 = load i32*, i32** %7, align 8, !dbg !1645
  store i32 0, i32* %324, align 4, !dbg !1647
  br label %325

; <label>:325:                                    ; preds = %323, %293
  br label %326

; <label>:326:                                    ; preds = %325, %244
  %327 = load i32, i32* %8, align 4, !dbg !1648
  store i32 %327, i32* %4, align 4, !dbg !1650
  br label %328, !dbg !1650

; <label>:328:                                    ; preds = %326, %53, %39
  %329 = load i32, i32* %4, align 4, !dbg !1651
  ret i32 %329, !dbg !1651
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_resize_dynbufmap_t(%struct.kh_dynbufmap_t_s*, i32) #2 !dbg !1653 {
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
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %4, metadata !1656, metadata !209), !dbg !1657
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1658, metadata !209), !dbg !1659
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1660, metadata !209), !dbg !1661
  store i32* null, i32** %6, align 8, !dbg !1661
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1662, metadata !209), !dbg !1663
  store i32 1, i32* %7, align 4, !dbg !1663
  %18 = load i32, i32* %5, align 4, !dbg !1664
  %19 = add i32 %18, -1, !dbg !1664
  store i32 %19, i32* %5, align 4, !dbg !1664
  %20 = load i32, i32* %5, align 4, !dbg !1666
  %21 = lshr i32 %20, 1, !dbg !1667
  %22 = load i32, i32* %5, align 4, !dbg !1668
  %23 = or i32 %22, %21, !dbg !1668
  store i32 %23, i32* %5, align 4, !dbg !1668
  %24 = load i32, i32* %5, align 4, !dbg !1669
  %25 = lshr i32 %24, 2, !dbg !1670
  %26 = load i32, i32* %5, align 4, !dbg !1671
  %27 = or i32 %26, %25, !dbg !1671
  store i32 %27, i32* %5, align 4, !dbg !1671
  %28 = load i32, i32* %5, align 4, !dbg !1672
  %29 = lshr i32 %28, 4, !dbg !1673
  %30 = load i32, i32* %5, align 4, !dbg !1674
  %31 = or i32 %30, %29, !dbg !1674
  store i32 %31, i32* %5, align 4, !dbg !1674
  %32 = load i32, i32* %5, align 4, !dbg !1675
  %33 = lshr i32 %32, 8, !dbg !1676
  %34 = load i32, i32* %5, align 4, !dbg !1677
  %35 = or i32 %34, %33, !dbg !1677
  store i32 %35, i32* %5, align 4, !dbg !1677
  %36 = load i32, i32* %5, align 4, !dbg !1678
  %37 = lshr i32 %36, 16, !dbg !1679
  %38 = load i32, i32* %5, align 4, !dbg !1680
  %39 = or i32 %38, %37, !dbg !1680
  store i32 %39, i32* %5, align 4, !dbg !1680
  %40 = load i32, i32* %5, align 4, !dbg !1681
  %41 = add i32 %40, 1, !dbg !1681
  store i32 %41, i32* %5, align 4, !dbg !1681
  %42 = load i32, i32* %5, align 4, !dbg !1682
  %43 = icmp ult i32 %42, 4, !dbg !1684
  br i1 %43, label %44, label %45, !dbg !1685

; <label>:44:                                     ; preds = %2
  store i32 4, i32* %5, align 4, !dbg !1686
  br label %45, !dbg !1688

; <label>:45:                                     ; preds = %44, %2
  %46 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1689
  %47 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %46, i32 0, i32 1, !dbg !1692
  %48 = load i32, i32* %47, align 4, !dbg !1692
  %49 = load i32, i32* %5, align 4, !dbg !1693
  %50 = uitofp i32 %49 to double, !dbg !1693
  %51 = fmul double %50, 7.700000e-01, !dbg !1694
  %52 = fadd double %51, 5.000000e-01, !dbg !1695
  %53 = fptoui double %52 to i32, !dbg !1696
  %54 = icmp uge i32 %48, %53, !dbg !1697
  br i1 %54, label %55, label %56, !dbg !1689

; <label>:55:                                     ; preds = %45
  store i32 0, i32* %7, align 4, !dbg !1698
  br label %128, !dbg !1700

; <label>:56:                                     ; preds = %45
  %57 = load i32, i32* %5, align 4, !dbg !1701
  %58 = icmp ult i32 %57, 16, !dbg !1704
  br i1 %58, label %59, label %60, !dbg !1705

; <label>:59:                                     ; preds = %56
  br label %63, !dbg !1706

; <label>:60:                                     ; preds = %56
  %61 = load i32, i32* %5, align 4, !dbg !1708
  %62 = lshr i32 %61, 4, !dbg !1710
  br label %63, !dbg !1711

; <label>:63:                                     ; preds = %60, %59
  %64 = phi i32 [ 1, %59 ], [ %62, %60 ], !dbg !1712
  %65 = zext i32 %64 to i64, !dbg !1714
  %66 = mul i64 %65, 4, !dbg !1715
  %67 = call noalias i8* @malloc(i64 %66) #7, !dbg !1716
  %68 = bitcast i8* %67 to i32*, !dbg !1717
  store i32* %68, i32** %6, align 8, !dbg !1718
  %69 = load i32*, i32** %6, align 8, !dbg !1719
  %70 = icmp ne i32* %69, null, !dbg !1719
  br i1 %70, label %72, label %71, !dbg !1720

; <label>:71:                                     ; preds = %63
  store i32 -1, i32* %3, align 4, !dbg !1721
  br label %372, !dbg !1721

; <label>:72:                                     ; preds = %63
  %73 = load i32*, i32** %6, align 8, !dbg !1724
  %74 = bitcast i32* %73 to i8*, !dbg !1726
  %75 = load i32, i32* %5, align 4, !dbg !1727
  %76 = icmp ult i32 %75, 16, !dbg !1728
  br i1 %76, label %77, label %78, !dbg !1729

; <label>:77:                                     ; preds = %72
  br label %81, !dbg !1730

; <label>:78:                                     ; preds = %72
  %79 = load i32, i32* %5, align 4, !dbg !1732
  %80 = lshr i32 %79, 4, !dbg !1734
  br label %81, !dbg !1735

; <label>:81:                                     ; preds = %78, %77
  %82 = phi i32 [ 1, %77 ], [ %80, %78 ], !dbg !1736
  %83 = zext i32 %82 to i64, !dbg !1738
  %84 = mul i64 %83, 4, !dbg !1739
  call void @llvm.memset.p0i8.i64(i8* %74, i8 -86, i64 %84, i32 4, i1 false), !dbg !1740
  %85 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1741
  %86 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %85, i32 0, i32 0, !dbg !1742
  %87 = load i32, i32* %86, align 8, !dbg !1742
  %88 = load i32, i32* %5, align 4, !dbg !1743
  %89 = icmp ult i32 %87, %88, !dbg !1744
  br i1 %89, label %90, label %127, !dbg !1741

; <label>:90:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata %struct.dynbuf*** %8, metadata !1745, metadata !209), !dbg !1748
  %91 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1749
  %92 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %91, i32 0, i32 5, !dbg !1751
  %93 = load %struct.dynbuf**, %struct.dynbuf*** %92, align 8, !dbg !1751
  %94 = bitcast %struct.dynbuf** %93 to i8*, !dbg !1752
  %95 = load i32, i32* %5, align 4, !dbg !1753
  %96 = zext i32 %95 to i64, !dbg !1753
  %97 = mul i64 %96, 8, !dbg !1754
  %98 = call i8* @realloc(i8* %94, i64 %97) #7, !dbg !1755
  %99 = bitcast i8* %98 to %struct.dynbuf**, !dbg !1756
  store %struct.dynbuf** %99, %struct.dynbuf*** %8, align 8, !dbg !1757
  %100 = load %struct.dynbuf**, %struct.dynbuf*** %8, align 8, !dbg !1758
  %101 = icmp ne %struct.dynbuf** %100, null, !dbg !1758
  br i1 %101, label %105, label %102, !dbg !1759

; <label>:102:                                    ; preds = %90
  %103 = load i32*, i32** %6, align 8, !dbg !1760
  %104 = bitcast i32* %103 to i8*, !dbg !1760
  call void @free(i8* %104) #7, !dbg !1764
  store i32 -1, i32* %3, align 4, !dbg !1765
  br label %372, !dbg !1765

; <label>:105:                                    ; preds = %90
  %106 = load %struct.dynbuf**, %struct.dynbuf*** %8, align 8, !dbg !1766
  %107 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1768
  %108 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %107, i32 0, i32 5, !dbg !1769
  store %struct.dynbuf** %106, %struct.dynbuf*** %108, align 8, !dbg !1770
  call void @llvm.dbg.declare(metadata %struct.dynbuf*** %9, metadata !1771, metadata !209), !dbg !1774
  %109 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1775
  %110 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %109, i32 0, i32 6, !dbg !1776
  %111 = load %struct.dynbuf**, %struct.dynbuf*** %110, align 8, !dbg !1776
  %112 = bitcast %struct.dynbuf** %111 to i8*, !dbg !1777
  %113 = load i32, i32* %5, align 4, !dbg !1778
  %114 = zext i32 %113 to i64, !dbg !1778
  %115 = mul i64 %114, 8, !dbg !1779
  %116 = call i8* @realloc(i8* %112, i64 %115) #7, !dbg !1780
  %117 = bitcast i8* %116 to %struct.dynbuf**, !dbg !1781
  store %struct.dynbuf** %117, %struct.dynbuf*** %9, align 8, !dbg !1782
  %118 = load %struct.dynbuf**, %struct.dynbuf*** %9, align 8, !dbg !1783
  %119 = icmp ne %struct.dynbuf** %118, null, !dbg !1783
  br i1 %119, label %123, label %120, !dbg !1784

; <label>:120:                                    ; preds = %105
  %121 = load i32*, i32** %6, align 8, !dbg !1785
  %122 = bitcast i32* %121 to i8*, !dbg !1785
  call void @free(i8* %122) #7, !dbg !1789
  store i32 -1, i32* %3, align 4, !dbg !1790
  br label %372, !dbg !1790

; <label>:123:                                    ; preds = %105
  %124 = load %struct.dynbuf**, %struct.dynbuf*** %9, align 8, !dbg !1791
  %125 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1793
  %126 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %125, i32 0, i32 6, !dbg !1794
  store %struct.dynbuf** %124, %struct.dynbuf*** %126, align 8, !dbg !1795
  br label %127, !dbg !1796

; <label>:127:                                    ; preds = %123, %81
  br label %128

; <label>:128:                                    ; preds = %127, %55
  %129 = load i32, i32* %7, align 4, !dbg !1797
  %130 = icmp ne i32 %129, 0, !dbg !1797
  br i1 %130, label %131, label %371, !dbg !1797

; <label>:131:                                    ; preds = %128
  store i32 0, i32* %7, align 4, !dbg !1800
  br label %132, !dbg !1804

; <label>:132:                                    ; preds = %314, %131
  %133 = load i32, i32* %7, align 4, !dbg !1805
  %134 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1808
  %135 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %134, i32 0, i32 0, !dbg !1809
  %136 = load i32, i32* %135, align 8, !dbg !1809
  %137 = icmp ne i32 %133, %136, !dbg !1810
  br i1 %137, label %138, label %317, !dbg !1811

; <label>:138:                                    ; preds = %132
  %139 = load i32, i32* %7, align 4, !dbg !1812
  %140 = lshr i32 %139, 4, !dbg !1816
  %141 = zext i32 %140 to i64, !dbg !1817
  %142 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1817
  %143 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %142, i32 0, i32 4, !dbg !1818
  %144 = load i32*, i32** %143, align 8, !dbg !1818
  %145 = getelementptr inbounds i32, i32* %144, i64 %141, !dbg !1817
  %146 = load i32, i32* %145, align 4, !dbg !1817
  %147 = load i32, i32* %7, align 4, !dbg !1819
  %148 = and i32 %147, 15, !dbg !1820
  %149 = shl i32 %148, 1, !dbg !1821
  %150 = lshr i32 %146, %149, !dbg !1822
  %151 = and i32 %150, 3, !dbg !1823
  %152 = icmp eq i32 %151, 0, !dbg !1824
  br i1 %152, label %153, label %313, !dbg !1825

; <label>:153:                                    ; preds = %138
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %10, metadata !1826, metadata !209), !dbg !1828
  %154 = load i32, i32* %7, align 4, !dbg !1829
  %155 = zext i32 %154 to i64, !dbg !1831
  %156 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1831
  %157 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %156, i32 0, i32 5, !dbg !1832
  %158 = load %struct.dynbuf**, %struct.dynbuf*** %157, align 8, !dbg !1832
  %159 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %158, i64 %155, !dbg !1831
  %160 = load %struct.dynbuf*, %struct.dynbuf** %159, align 8, !dbg !1831
  store %struct.dynbuf* %160, %struct.dynbuf** %10, align 8, !dbg !1833
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %11, metadata !1834, metadata !209), !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1836, metadata !209), !dbg !1837
  %161 = load i32, i32* %5, align 4, !dbg !1838
  %162 = sub i32 %161, 1, !dbg !1839
  store i32 %162, i32* %12, align 4, !dbg !1840
  %163 = load i32, i32* %7, align 4, !dbg !1841
  %164 = zext i32 %163 to i64, !dbg !1842
  %165 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1842
  %166 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %165, i32 0, i32 6, !dbg !1843
  %167 = load %struct.dynbuf**, %struct.dynbuf*** %166, align 8, !dbg !1843
  %168 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %167, i64 %164, !dbg !1842
  %169 = load %struct.dynbuf*, %struct.dynbuf** %168, align 8, !dbg !1842
  store %struct.dynbuf* %169, %struct.dynbuf** %11, align 8, !dbg !1844
  %170 = load i32, i32* %7, align 4, !dbg !1845
  %171 = and i32 %170, 15, !dbg !1846
  %172 = shl i32 %171, 1, !dbg !1847
  %173 = zext i32 %172 to i64, !dbg !1848
  %174 = shl i64 1, %173, !dbg !1848
  %175 = load i32, i32* %7, align 4, !dbg !1849
  %176 = lshr i32 %175, 4, !dbg !1850
  %177 = zext i32 %176 to i64, !dbg !1851
  %178 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1851
  %179 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %178, i32 0, i32 4, !dbg !1852
  %180 = load i32*, i32** %179, align 8, !dbg !1852
  %181 = getelementptr inbounds i32, i32* %180, i64 %177, !dbg !1851
  %182 = load i32, i32* %181, align 4, !dbg !1853
  %183 = zext i32 %182 to i64, !dbg !1853
  %184 = or i64 %183, %174, !dbg !1853
  %185 = trunc i64 %184 to i32, !dbg !1853
  store i32 %185, i32* %181, align 4, !dbg !1853
  br label %186, !dbg !1854

; <label>:186:                                    ; preds = %153, %311
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1855, metadata !209), !dbg !1857
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1858, metadata !209), !dbg !1859
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1860, metadata !209), !dbg !1861
  store i32 0, i32* %15, align 4, !dbg !1862
  %187 = load %struct.dynbuf*, %struct.dynbuf** %10, align 8, !dbg !1864
  %188 = call i32 @kh_dynbuf_hash_func(%struct.dynbuf* %187), !dbg !1865
  store i32 %188, i32* %13, align 4, !dbg !1866
  %189 = load i32, i32* %13, align 4, !dbg !1867
  %190 = load i32, i32* %12, align 4, !dbg !1868
  %191 = and i32 %189, %190, !dbg !1869
  store i32 %191, i32* %14, align 4, !dbg !1870
  br label %192, !dbg !1871

; <label>:192:                                    ; preds = %206, %186
  %193 = load i32, i32* %14, align 4, !dbg !1872
  %194 = lshr i32 %193, 4, !dbg !1874
  %195 = zext i32 %194 to i64, !dbg !1875
  %196 = load i32*, i32** %6, align 8, !dbg !1875
  %197 = getelementptr inbounds i32, i32* %196, i64 %195, !dbg !1875
  %198 = load i32, i32* %197, align 4, !dbg !1875
  %199 = load i32, i32* %14, align 4, !dbg !1876
  %200 = and i32 %199, 15, !dbg !1877
  %201 = shl i32 %200, 1, !dbg !1878
  %202 = lshr i32 %198, %201, !dbg !1879
  %203 = and i32 %202, 2, !dbg !1880
  %204 = icmp ne i32 %203, 0, !dbg !1881
  %205 = xor i1 %204, true, !dbg !1881
  br i1 %205, label %206, label %213, !dbg !1882

; <label>:206:                                    ; preds = %192
  %207 = load i32, i32* %14, align 4, !dbg !1883
  %208 = load i32, i32* %15, align 4, !dbg !1885
  %209 = add i32 %208, 1, !dbg !1885
  store i32 %209, i32* %15, align 4, !dbg !1885
  %210 = add i32 %207, %209, !dbg !1886
  %211 = load i32, i32* %12, align 4, !dbg !1887
  %212 = and i32 %210, %211, !dbg !1888
  store i32 %212, i32* %14, align 4, !dbg !1889
  br label %192, !dbg !1890, !llvm.loop !1891

; <label>:213:                                    ; preds = %192
  %214 = load i32, i32* %14, align 4, !dbg !1893
  %215 = and i32 %214, 15, !dbg !1895
  %216 = shl i32 %215, 1, !dbg !1896
  %217 = zext i32 %216 to i64, !dbg !1897
  %218 = shl i64 2, %217, !dbg !1897
  %219 = xor i64 %218, -1, !dbg !1898
  %220 = load i32, i32* %14, align 4, !dbg !1899
  %221 = lshr i32 %220, 4, !dbg !1900
  %222 = zext i32 %221 to i64, !dbg !1901
  %223 = load i32*, i32** %6, align 8, !dbg !1901
  %224 = getelementptr inbounds i32, i32* %223, i64 %222, !dbg !1901
  %225 = load i32, i32* %224, align 4, !dbg !1902
  %226 = zext i32 %225 to i64, !dbg !1902
  %227 = and i64 %226, %219, !dbg !1902
  %228 = trunc i64 %227 to i32, !dbg !1902
  store i32 %228, i32* %224, align 4, !dbg !1902
  %229 = load i32, i32* %14, align 4, !dbg !1903
  %230 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1904
  %231 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %230, i32 0, i32 0, !dbg !1905
  %232 = load i32, i32* %231, align 8, !dbg !1905
  %233 = icmp ult i32 %229, %232, !dbg !1906
  br i1 %233, label %234, label %296, !dbg !1907

; <label>:234:                                    ; preds = %213
  %235 = load i32, i32* %14, align 4, !dbg !1908
  %236 = lshr i32 %235, 4, !dbg !1911
  %237 = zext i32 %236 to i64, !dbg !1912
  %238 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1912
  %239 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %238, i32 0, i32 4, !dbg !1913
  %240 = load i32*, i32** %239, align 8, !dbg !1913
  %241 = getelementptr inbounds i32, i32* %240, i64 %237, !dbg !1912
  %242 = load i32, i32* %241, align 4, !dbg !1912
  %243 = load i32, i32* %14, align 4, !dbg !1914
  %244 = and i32 %243, 15, !dbg !1915
  %245 = shl i32 %244, 1, !dbg !1916
  %246 = lshr i32 %242, %245, !dbg !1917
  %247 = and i32 %246, 3, !dbg !1918
  %248 = icmp eq i32 %247, 0, !dbg !1919
  br i1 %248, label %249, label %296, !dbg !1920

; <label>:249:                                    ; preds = %234
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %16, metadata !1921, metadata !209), !dbg !1924
  %250 = load i32, i32* %14, align 4, !dbg !1925
  %251 = zext i32 %250 to i64, !dbg !1927
  %252 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1927
  %253 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %252, i32 0, i32 5, !dbg !1928
  %254 = load %struct.dynbuf**, %struct.dynbuf*** %253, align 8, !dbg !1928
  %255 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %254, i64 %251, !dbg !1927
  %256 = load %struct.dynbuf*, %struct.dynbuf** %255, align 8, !dbg !1927
  store %struct.dynbuf* %256, %struct.dynbuf** %16, align 8, !dbg !1929
  %257 = load %struct.dynbuf*, %struct.dynbuf** %10, align 8, !dbg !1930
  %258 = load i32, i32* %14, align 4, !dbg !1931
  %259 = zext i32 %258 to i64, !dbg !1932
  %260 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1932
  %261 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %260, i32 0, i32 5, !dbg !1933
  %262 = load %struct.dynbuf**, %struct.dynbuf*** %261, align 8, !dbg !1933
  %263 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %262, i64 %259, !dbg !1932
  store %struct.dynbuf* %257, %struct.dynbuf** %263, align 8, !dbg !1934
  %264 = load %struct.dynbuf*, %struct.dynbuf** %16, align 8, !dbg !1935
  store %struct.dynbuf* %264, %struct.dynbuf** %10, align 8, !dbg !1936
  call void @llvm.dbg.declare(metadata %struct.dynbuf** %17, metadata !1937, metadata !209), !dbg !1940
  %265 = load i32, i32* %14, align 4, !dbg !1941
  %266 = zext i32 %265 to i64, !dbg !1942
  %267 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1942
  %268 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %267, i32 0, i32 6, !dbg !1943
  %269 = load %struct.dynbuf**, %struct.dynbuf*** %268, align 8, !dbg !1943
  %270 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %269, i64 %266, !dbg !1942
  %271 = load %struct.dynbuf*, %struct.dynbuf** %270, align 8, !dbg !1942
  store %struct.dynbuf* %271, %struct.dynbuf** %17, align 8, !dbg !1944
  %272 = load %struct.dynbuf*, %struct.dynbuf** %11, align 8, !dbg !1945
  %273 = load i32, i32* %14, align 4, !dbg !1946
  %274 = zext i32 %273 to i64, !dbg !1947
  %275 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1947
  %276 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %275, i32 0, i32 6, !dbg !1948
  %277 = load %struct.dynbuf**, %struct.dynbuf*** %276, align 8, !dbg !1948
  %278 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %277, i64 %274, !dbg !1947
  store %struct.dynbuf* %272, %struct.dynbuf** %278, align 8, !dbg !1949
  %279 = load %struct.dynbuf*, %struct.dynbuf** %17, align 8, !dbg !1950
  store %struct.dynbuf* %279, %struct.dynbuf** %11, align 8, !dbg !1951
  %280 = load i32, i32* %14, align 4, !dbg !1952
  %281 = and i32 %280, 15, !dbg !1953
  %282 = shl i32 %281, 1, !dbg !1954
  %283 = zext i32 %282 to i64, !dbg !1955
  %284 = shl i64 1, %283, !dbg !1955
  %285 = load i32, i32* %14, align 4, !dbg !1956
  %286 = lshr i32 %285, 4, !dbg !1957
  %287 = zext i32 %286 to i64, !dbg !1958
  %288 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1958
  %289 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %288, i32 0, i32 4, !dbg !1959
  %290 = load i32*, i32** %289, align 8, !dbg !1959
  %291 = getelementptr inbounds i32, i32* %290, i64 %287, !dbg !1958
  %292 = load i32, i32* %291, align 4, !dbg !1960
  %293 = zext i32 %292 to i64, !dbg !1960
  %294 = or i64 %293, %284, !dbg !1960
  %295 = trunc i64 %294 to i32, !dbg !1960
  store i32 %295, i32* %291, align 4, !dbg !1960
  br label %311, !dbg !1961

; <label>:296:                                    ; preds = %234, %213
  %297 = load %struct.dynbuf*, %struct.dynbuf** %10, align 8, !dbg !1962
  %298 = load i32, i32* %14, align 4, !dbg !1965
  %299 = zext i32 %298 to i64, !dbg !1966
  %300 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1966
  %301 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %300, i32 0, i32 5, !dbg !1967
  %302 = load %struct.dynbuf**, %struct.dynbuf*** %301, align 8, !dbg !1967
  %303 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %302, i64 %299, !dbg !1966
  store %struct.dynbuf* %297, %struct.dynbuf** %303, align 8, !dbg !1968
  %304 = load %struct.dynbuf*, %struct.dynbuf** %11, align 8, !dbg !1969
  %305 = load i32, i32* %14, align 4, !dbg !1970
  %306 = zext i32 %305 to i64, !dbg !1971
  %307 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1971
  %308 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %307, i32 0, i32 6, !dbg !1972
  %309 = load %struct.dynbuf**, %struct.dynbuf*** %308, align 8, !dbg !1972
  %310 = getelementptr inbounds %struct.dynbuf*, %struct.dynbuf** %309, i64 %306, !dbg !1971
  store %struct.dynbuf* %304, %struct.dynbuf** %310, align 8, !dbg !1973
  br label %312, !dbg !1974

; <label>:311:                                    ; preds = %249
  br label %186, !dbg !1975, !llvm.loop !1977

; <label>:312:                                    ; preds = %296
  br label %313, !dbg !1979

; <label>:313:                                    ; preds = %312, %138
  br label %314, !dbg !1981

; <label>:314:                                    ; preds = %313
  %315 = load i32, i32* %7, align 4, !dbg !1983
  %316 = add i32 %315, 1, !dbg !1983
  store i32 %316, i32* %7, align 4, !dbg !1983
  br label %132, !dbg !1985, !llvm.loop !1986

; <label>:317:                                    ; preds = %132
  %318 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1988
  %319 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %318, i32 0, i32 0, !dbg !1991
  %320 = load i32, i32* %319, align 8, !dbg !1991
  %321 = load i32, i32* %5, align 4, !dbg !1992
  %322 = icmp ugt i32 %320, %321, !dbg !1993
  br i1 %322, label %323, label %346, !dbg !1988

; <label>:323:                                    ; preds = %317
  %324 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !1994
  %325 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %324, i32 0, i32 5, !dbg !1997
  %326 = load %struct.dynbuf**, %struct.dynbuf*** %325, align 8, !dbg !1997
  %327 = bitcast %struct.dynbuf** %326 to i8*, !dbg !1998
  %328 = load i32, i32* %5, align 4, !dbg !1999
  %329 = zext i32 %328 to i64, !dbg !1999
  %330 = mul i64 %329, 8, !dbg !2000
  %331 = call i8* @realloc(i8* %327, i64 %330) #7, !dbg !2001
  %332 = bitcast i8* %331 to %struct.dynbuf**, !dbg !2002
  %333 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2003
  %334 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %333, i32 0, i32 5, !dbg !2004
  store %struct.dynbuf** %332, %struct.dynbuf*** %334, align 8, !dbg !2005
  %335 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2006
  %336 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %335, i32 0, i32 6, !dbg !2007
  %337 = load %struct.dynbuf**, %struct.dynbuf*** %336, align 8, !dbg !2007
  %338 = bitcast %struct.dynbuf** %337 to i8*, !dbg !2008
  %339 = load i32, i32* %5, align 4, !dbg !2009
  %340 = zext i32 %339 to i64, !dbg !2009
  %341 = mul i64 %340, 8, !dbg !2010
  %342 = call i8* @realloc(i8* %338, i64 %341) #7, !dbg !2011
  %343 = bitcast i8* %342 to %struct.dynbuf**, !dbg !2013
  %344 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2014
  %345 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %344, i32 0, i32 6, !dbg !2015
  store %struct.dynbuf** %343, %struct.dynbuf*** %345, align 8, !dbg !2016
  br label %346, !dbg !2017

; <label>:346:                                    ; preds = %323, %317
  %347 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2018
  %348 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %347, i32 0, i32 4, !dbg !2020
  %349 = load i32*, i32** %348, align 8, !dbg !2020
  %350 = bitcast i32* %349 to i8*, !dbg !2018
  call void @free(i8* %350) #7, !dbg !2021
  %351 = load i32*, i32** %6, align 8, !dbg !2022
  %352 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2023
  %353 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %352, i32 0, i32 4, !dbg !2024
  store i32* %351, i32** %353, align 8, !dbg !2025
  %354 = load i32, i32* %5, align 4, !dbg !2026
  %355 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2027
  %356 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %355, i32 0, i32 0, !dbg !2028
  store i32 %354, i32* %356, align 8, !dbg !2029
  %357 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2030
  %358 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %357, i32 0, i32 1, !dbg !2031
  %359 = load i32, i32* %358, align 4, !dbg !2031
  %360 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2032
  %361 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %360, i32 0, i32 2, !dbg !2033
  store i32 %359, i32* %361, align 8, !dbg !2034
  %362 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2035
  %363 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %362, i32 0, i32 0, !dbg !2036
  %364 = load i32, i32* %363, align 8, !dbg !2036
  %365 = uitofp i32 %364 to double, !dbg !2035
  %366 = fmul double %365, 7.700000e-01, !dbg !2037
  %367 = fadd double %366, 5.000000e-01, !dbg !2038
  %368 = fptoui double %367 to i32, !dbg !2039
  %369 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %4, align 8, !dbg !2040
  %370 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %369, i32 0, i32 3, !dbg !2041
  store i32 %368, i32* %370, align 4, !dbg !2042
  br label %371, !dbg !2043

; <label>:371:                                    ; preds = %346, %128
  store i32 0, i32* %3, align 4, !dbg !2044
  br label %372, !dbg !2044

; <label>:372:                                    ; preds = %371, %120, %102, %71
  %373 = load i32, i32* %3, align 4, !dbg !2046
  ret i32 %373, !dbg !2046
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #6

; Function Attrs: nounwind
declare void @free(i8*) #6

declare void @dynbuf_free(%struct.dynbuf*) #4

declare %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st**, i8**, i64) #4

declare i32 @ssl_session_is_valid(%struct.ssl_session_st*) #4

declare void @SSL_SESSION_free(%struct.ssl_session_st*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_destroy_dynbufmap_t(%struct.kh_dynbufmap_t_s*) #2 !dbg !2048 {
  %2 = alloca %struct.kh_dynbufmap_t_s*, align 8
  store %struct.kh_dynbufmap_t_s* %0, %struct.kh_dynbufmap_t_s** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.kh_dynbufmap_t_s** %2, metadata !2051, metadata !209), !dbg !2052
  %3 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !2053
  %4 = icmp ne %struct.kh_dynbufmap_t_s* %3, null, !dbg !2053
  br i1 %4, label %5, label %20, !dbg !2055

; <label>:5:                                      ; preds = %1
  %6 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !2056
  %7 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %6, i32 0, i32 5, !dbg !2059
  %8 = load %struct.dynbuf**, %struct.dynbuf*** %7, align 8, !dbg !2059
  %9 = bitcast %struct.dynbuf** %8 to i8*, !dbg !2060
  call void @free(i8* %9) #7, !dbg !2061
  %10 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !2062
  %11 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %10, i32 0, i32 4, !dbg !2063
  %12 = load i32*, i32** %11, align 8, !dbg !2063
  %13 = bitcast i32* %12 to i8*, !dbg !2062
  call void @free(i8* %13) #7, !dbg !2064
  %14 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !2066
  %15 = getelementptr inbounds %struct.kh_dynbufmap_t_s, %struct.kh_dynbufmap_t_s* %14, i32 0, i32 6, !dbg !2067
  %16 = load %struct.dynbuf**, %struct.dynbuf*** %15, align 8, !dbg !2067
  %17 = bitcast %struct.dynbuf** %16 to i8*, !dbg !2068
  call void @free(i8* %17) #7, !dbg !2069
  %18 = load %struct.kh_dynbufmap_t_s*, %struct.kh_dynbufmap_t_s** %2, align 8, !dbg !2071
  %19 = bitcast %struct.kh_dynbufmap_t_s* %18 to i8*, !dbg !2071
  call void @free(i8* %19) #7, !dbg !2072
  br label %20, !dbg !2074

; <label>:20:                                     ; preds = %5, %1
  ret void, !dbg !2075
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!101, !102}
!llvm.ident = !{!103}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !96)
!1 = !DIFile(filename: "line17-cachedsess.o.i", directory: "/home/lichi/Desktop/sslsplit/task1")
!2 = !{}
!3 = !{!4, !19, !21, !41, !65, !66, !67, !73, !93, !80, !82, !94}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !6, line: 166, size: 1024, align: 64, elements: !7)
!6 = !DIFile(filename: "/usr/include/bits/socket.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!7 = !{!8, !12, !17}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !5, file: !6, line: 168, baseType: !9, size: 16, align: 16)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !10, line: 28, baseType: !11)
!10 = !DIFile(filename: "/usr/include/bits/sockaddr.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!11 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !5, file: !6, line: 169, baseType: !13, size: 944, align: 8, offset: 16)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 944, align: 8, elements: !15)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 118)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !5, file: !6, line: 170, baseType: !18, size: 64, align: 64, offset: 960)
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !23, line: 239, size: 128, align: 32, elements: !24)
!23 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!24 = !{!25, !26, !30, !37}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !22, file: !23, line: 241, baseType: !9, size: 16, align: 16)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !22, file: !23, line: 242, baseType: !27, size: 16, align: 16, offset: 16)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !23, line: 119, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !29, line: 49, baseType: !11)
!29 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !22, file: !23, line: 243, baseType: !31, size: 32, align: 32, offset: 32)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !23, line: 31, size: 32, align: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !31, file: !23, line: 33, baseType: !34, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !23, line: 30, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !29, line: 51, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !22, file: !23, line: 246, baseType: !38, size: 64, align: 8, offset: 64)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, align: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !23, line: 254, size: 224, align: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !64}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !42, file: !23, line: 256, baseType: !9, size: 16, align: 16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !42, file: !23, line: 257, baseType: !27, size: 16, align: 16, offset: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !42, file: !23, line: 258, baseType: !35, size: 32, align: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !42, file: !23, line: 259, baseType: !48, size: 128, align: 32, offset: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !23, line: 211, size: 128, align: 32, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !48, file: !23, line: 220, baseType: !51, size: 128, align: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !48, file: !23, line: 213, size: 128, align: 32, elements: !52)
!52 = !{!53, !58, !60}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !51, file: !23, line: 215, baseType: !54, size: 128, align: 8)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, align: 8, elements: !56)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !29, line: 48, baseType: !20)
!56 = !{!57}
!57 = !DISubrange(count: 16)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !51, file: !23, line: 217, baseType: !59, size: 128, align: 16)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, align: 16, elements: !39)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !51, file: !23, line: 218, baseType: !61, size: 128, align: 32)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, align: 32, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !42, file: !23, line: 260, baseType: !35, size: 32, align: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_dynbufmap_t_t", file: !69, line: 66, baseType: !70)
!69 = !DIFile(filename: "cachedsess.c", directory: "/home/lichi/Desktop/sslsplit/task1")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_dynbufmap_t_s", file: !69, line: 66, size: 320, align: 64, elements: !71)
!71 = !{!72, !76, !77, !78, !79, !81, !92}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !70, file: !69, line: 66, baseType: !73, size: 32, align: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !74, line: 162, baseType: !75)
!74 = !DIFile(filename: "khash.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !74, line: 135, baseType: !36)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !70, file: !69, line: 66, baseType: !73, size: 32, align: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !70, file: !69, line: 66, baseType: !73, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !70, file: !69, line: 66, baseType: !73, size: 32, align: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !69, line: 66, baseType: !80, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !70, file: !69, line: 66, baseType: !82, size: 64, align: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "dynbuf_t", file: !85, line: 39, baseType: !86)
!85 = !DIFile(filename: "dynbuf.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dynbuf", file: !85, line: 36, size: 128, align: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !86, file: !85, line: 37, baseType: !19, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !86, file: !85, line: 38, baseType: !90, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 216, baseType: !18)
!91 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !70, file: !69, line: 66, baseType: !82, size: 64, align: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!96 = !{!97, !98}
!97 = distinct !DIGlobalVariable(name: "dstsessmap", scope: !0, file: !69, line: 69, type: !67, isLocal: true, isDefinition: true, variable: %struct.kh_dynbufmap_t_s** @dstsessmap)
!98 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !0, file: !74, line: 192, type: !99, isLocal: true, isDefinition: true, variable: double 7.700000e-01)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!101 = !{i32 2, !"Dwarf Version", i32 4}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!104 = distinct !DISubprogram(name: "cachedsess_init_cb", scope: !69, file: !69, line: 165, type: !105, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !109, line: 70, baseType: !110)
!109 = !DIFile(filename: "cache.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache", file: !109, line: 54, size: 1152, align: 64, elements: !111)
!111 = !{!112, !142, !148, !150, !155, !160, !166, !172, !177, !183, !188, !193, !198, !203}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !110, file: !109, line: 55, baseType: !113, size: 320, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !114, line: 128, baseType: !115)
!114 = !DIFile(filename: "/usr/include/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !114, line: 90, size: 320, align: 64, elements: !116)
!116 = !{!117, !136, !140}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !115, file: !114, line: 125, baseType: !118, size: 320, align: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !114, line: 92, size: 320, align: 64, elements: !119)
!119 = !{!120, !122, !123, !124, !125, !126, !128, !129}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !118, file: !114, line: 94, baseType: !121, size: 32, align: 32)
!121 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !118, file: !114, line: 95, baseType: !36, size: 32, align: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !118, file: !114, line: 96, baseType: !121, size: 32, align: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !118, file: !114, line: 98, baseType: !36, size: 32, align: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !118, file: !114, line: 102, baseType: !121, size: 32, align: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !118, file: !114, line: 104, baseType: !127, size: 16, align: 16, offset: 160)
!127 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !118, file: !114, line: 105, baseType: !127, size: 16, align: 16, offset: 176)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !118, file: !114, line: 106, baseType: !130, size: 128, align: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !114, line: 79, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !114, line: 75, size: 128, align: 64, elements: !132)
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !131, file: !114, line: 77, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !131, file: !114, line: 78, baseType: !134, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !115, file: !114, line: 126, baseType: !137, size: 320, align: 8)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, align: 8, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 40)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !115, file: !114, line: 127, baseType: !141, size: 64, align: 64)
!141 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "begin_cb", scope: !110, file: !109, line: 57, baseType: !143, size: 64, align: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_begin_cb_t", file: !109, line: 40, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_iter_t", file: !109, line: 38, baseType: !36)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "end_cb", scope: !110, file: !109, line: 58, baseType: !149, size: 64, align: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_end_cb_t", file: !109, line: 41, baseType: !144)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "exist_cb", scope: !110, file: !109, line: 59, baseType: !151, size: 64, align: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_exist_cb_t", file: !109, line: 42, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!121, !147}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "del_cb", scope: !110, file: !109, line: 60, baseType: !156, size: 64, align: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_del_cb_t", file: !109, line: 43, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !147}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "get_cb", scope: !110, file: !109, line: 61, baseType: !161, size: 64, align: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_cb_t", file: !109, line: 44, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!147, !165}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_key_t", file: !109, line: 37, baseType: !65)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "put_cb", scope: !110, file: !109, line: 62, baseType: !167, size: 64, align: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_put_cb_t", file: !109, line: 45, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!147, !165, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "free_key_cb", scope: !110, file: !109, line: 63, baseType: !173, size: 64, align: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_key_cb_t", file: !109, line: 46, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !165}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "free_val_cb", scope: !110, file: !109, line: 64, baseType: !178, size: 64, align: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_free_val_cb_t", file: !109, line: 47, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_val_t", file: !109, line: 36, baseType: !65)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "get_key_cb", scope: !110, file: !109, line: 65, baseType: !184, size: 64, align: 64, offset: 832)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_key_cb_t", file: !109, line: 48, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!165, !147}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "get_val_cb", scope: !110, file: !109, line: 66, baseType: !189, size: 64, align: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_get_val_cb_t", file: !109, line: 49, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!182, !147}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "set_val_cb", scope: !110, file: !109, line: 67, baseType: !194, size: 64, align: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_set_val_cb_t", file: !109, line: 50, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !147, !182}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "unpackverify_val_cb", scope: !110, file: !109, line: 68, baseType: !199, size: 64, align: 64, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_unpackverify_val_cb_t", file: !109, line: 51, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!182, !182, !121}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fini_cb", scope: !110, file: !109, line: 69, baseType: !204, size: 64, align: 64, offset: 1088)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_fini_cb_t", file: !109, line: 52, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !DILocalVariable(name: "cache", arg: 1, scope: !104, file: !69, line: 165, type: !107)
!209 = !DIExpression()
!210 = !DILocation(line: 165, column: 29, scope: !104)
!211 = !DILocation(line: 167, column: 15, scope: !104)
!212 = !DILocation(line: 167, column: 13, scope: !104)
!213 = !DILocation(line: 169, column: 2, scope: !104)
!214 = !DILocation(line: 169, column: 9, scope: !104)
!215 = !DILocation(line: 169, column: 18, scope: !104)
!216 = !DILocation(line: 170, column: 2, scope: !104)
!217 = !DILocation(line: 170, column: 9, scope: !104)
!218 = !DILocation(line: 170, column: 16, scope: !104)
!219 = !DILocation(line: 171, column: 2, scope: !104)
!220 = !DILocation(line: 171, column: 9, scope: !104)
!221 = !DILocation(line: 171, column: 18, scope: !104)
!222 = !DILocation(line: 172, column: 2, scope: !104)
!223 = !DILocation(line: 172, column: 9, scope: !104)
!224 = !DILocation(line: 172, column: 16, scope: !104)
!225 = !DILocation(line: 173, column: 2, scope: !104)
!226 = !DILocation(line: 173, column: 9, scope: !104)
!227 = !DILocation(line: 173, column: 16, scope: !104)
!228 = !DILocation(line: 174, column: 2, scope: !104)
!229 = !DILocation(line: 174, column: 9, scope: !104)
!230 = !DILocation(line: 174, column: 16, scope: !104)
!231 = !DILocation(line: 175, column: 2, scope: !104)
!232 = !DILocation(line: 175, column: 9, scope: !104)
!233 = !DILocation(line: 175, column: 21, scope: !104)
!234 = !DILocation(line: 176, column: 2, scope: !104)
!235 = !DILocation(line: 176, column: 9, scope: !104)
!236 = !DILocation(line: 176, column: 21, scope: !104)
!237 = !DILocation(line: 177, column: 2, scope: !104)
!238 = !DILocation(line: 177, column: 9, scope: !104)
!239 = !DILocation(line: 177, column: 20, scope: !104)
!240 = !DILocation(line: 178, column: 2, scope: !104)
!241 = !DILocation(line: 178, column: 9, scope: !104)
!242 = !DILocation(line: 178, column: 20, scope: !104)
!243 = !DILocation(line: 179, column: 2, scope: !104)
!244 = !DILocation(line: 179, column: 9, scope: !104)
!245 = !DILocation(line: 179, column: 20, scope: !104)
!246 = !DILocation(line: 180, column: 2, scope: !104)
!247 = !DILocation(line: 180, column: 9, scope: !104)
!248 = !DILocation(line: 180, column: 29, scope: !104)
!249 = !DILocation(line: 181, column: 2, scope: !104)
!250 = !DILocation(line: 181, column: 9, scope: !104)
!251 = !DILocation(line: 181, column: 17, scope: !104)
!252 = !DILocation(line: 182, column: 1, scope: !104)
!253 = distinct !DISubprogram(name: "kh_init_dynbufmap_t", scope: !69, file: !69, line: 66, type: !254, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!254 = !DISubroutineType(types: !255)
!255 = !{!67}
!256 = !DILocation(line: 66, column: 272, scope: !253)
!257 = !DILocation(line: 66, column: 253, scope: !253)
!258 = !DILocation(line: 66, column: 246, scope: !253)
!259 = distinct !DISubprogram(name: "cachedsess_begin_cb", scope: !69, file: !69, line: 72, type: !145, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!260 = !DILocation(line: 74, column: 2, scope: !259)
!261 = distinct !DISubprogram(name: "cachedsess_end_cb", scope: !69, file: !69, line: 78, type: !145, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!262 = !DILocation(line: 80, column: 11, scope: !261)
!263 = !DILocation(line: 80, column: 24, scope: !261)
!264 = !DILocation(line: 80, column: 2, scope: !261)
!265 = distinct !DISubprogram(name: "cachedsess_exist_cb", scope: !69, file: !69, line: 84, type: !153, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!266 = !DILocalVariable(name: "it", arg: 1, scope: !265, file: !69, line: 84, type: !147)
!267 = !DILocation(line: 84, column: 34, scope: !265)
!268 = !DILocation(line: 86, column: 34, scope: !265)
!269 = !DILocation(line: 86, column: 37, scope: !265)
!270 = !DILocation(line: 86, column: 13, scope: !265)
!271 = !DILocation(line: 86, column: 14, scope: !265)
!272 = !DILocation(line: 86, column: 27, scope: !265)
!273 = !DILocation(line: 86, column: 46, scope: !265)
!274 = !DILocation(line: 86, column: 49, scope: !265)
!275 = !DILocation(line: 86, column: 55, scope: !265)
!276 = !DILocation(line: 86, column: 41, scope: !265)
!277 = !DILocation(line: 86, column: 60, scope: !265)
!278 = !DILocation(line: 86, column: 10, scope: !265)
!279 = !DILocation(line: 86, column: 2, scope: !265)
!280 = distinct !DISubprogram(name: "cachedsess_del_cb", scope: !69, file: !69, line: 90, type: !158, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!281 = !DILocalVariable(name: "it", arg: 1, scope: !280, file: !69, line: 90, type: !147)
!282 = !DILocation(line: 90, column: 32, scope: !280)
!283 = !DILocation(line: 92, column: 21, scope: !280)
!284 = !DILocation(line: 92, column: 33, scope: !280)
!285 = !DILocation(line: 92, column: 2, scope: !280)
!286 = !DILocation(line: 93, column: 1, scope: !280)
!287 = distinct !DISubprogram(name: "cachedsess_get_cb", scope: !69, file: !69, line: 96, type: !163, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!288 = !DILocalVariable(name: "key", arg: 1, scope: !287, file: !69, line: 96, type: !165)
!289 = !DILocation(line: 96, column: 31, scope: !287)
!290 = !DILocation(line: 98, column: 28, scope: !287)
!291 = !DILocation(line: 98, column: 40, scope: !287)
!292 = !DILocation(line: 98, column: 9, scope: !287)
!293 = !DILocation(line: 98, column: 2, scope: !287)
!294 = distinct !DISubprogram(name: "cachedsess_put_cb", scope: !69, file: !69, line: 102, type: !169, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!295 = !DILocalVariable(name: "key", arg: 1, scope: !294, file: !69, line: 102, type: !165)
!296 = !DILocation(line: 102, column: 31, scope: !294)
!297 = !DILocalVariable(name: "ret", arg: 2, scope: !294, file: !69, line: 102, type: !171)
!298 = !DILocation(line: 102, column: 41, scope: !294)
!299 = !DILocation(line: 104, column: 28, scope: !294)
!300 = !DILocation(line: 104, column: 40, scope: !294)
!301 = !DILocation(line: 104, column: 45, scope: !294)
!302 = !DILocation(line: 104, column: 9, scope: !294)
!303 = !DILocation(line: 104, column: 2, scope: !294)
!304 = distinct !DISubprogram(name: "cachedsess_free_key_cb", scope: !69, file: !69, line: 108, type: !175, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!305 = !DILocalVariable(name: "key", arg: 1, scope: !304, file: !69, line: 108, type: !165)
!306 = !DILocation(line: 108, column: 36, scope: !304)
!307 = !DILocation(line: 110, column: 14, scope: !304)
!308 = !DILocation(line: 110, column: 2, scope: !304)
!309 = !DILocation(line: 111, column: 1, scope: !304)
!310 = distinct !DISubprogram(name: "cachedsess_free_val_cb", scope: !69, file: !69, line: 114, type: !180, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!311 = !DILocalVariable(name: "val", arg: 1, scope: !310, file: !69, line: 114, type: !182)
!312 = !DILocation(line: 114, column: 36, scope: !310)
!313 = !DILocation(line: 116, column: 14, scope: !310)
!314 = !DILocation(line: 116, column: 2, scope: !310)
!315 = !DILocation(line: 117, column: 1, scope: !310)
!316 = distinct !DISubprogram(name: "cachedsess_get_key_cb", scope: !69, file: !69, line: 120, type: !186, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!317 = !DILocalVariable(name: "it", arg: 1, scope: !316, file: !69, line: 120, type: !147)
!318 = !DILocation(line: 120, column: 36, scope: !316)
!319 = !DILocation(line: 122, column: 29, scope: !316)
!320 = !DILocation(line: 122, column: 10, scope: !316)
!321 = !DILocation(line: 122, column: 11, scope: !316)
!322 = !DILocation(line: 122, column: 24, scope: !316)
!323 = !DILocation(line: 122, column: 9, scope: !316)
!324 = !DILocation(line: 122, column: 2, scope: !316)
!325 = distinct !DISubprogram(name: "cachedsess_get_val_cb", scope: !69, file: !69, line: 126, type: !191, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!326 = !DILocalVariable(name: "it", arg: 1, scope: !325, file: !69, line: 126, type: !147)
!327 = !DILocation(line: 126, column: 36, scope: !325)
!328 = !DILocation(line: 128, column: 29, scope: !325)
!329 = !DILocation(line: 128, column: 10, scope: !325)
!330 = !DILocation(line: 128, column: 11, scope: !325)
!331 = !DILocation(line: 128, column: 24, scope: !325)
!332 = !DILocation(line: 128, column: 9, scope: !325)
!333 = !DILocation(line: 128, column: 2, scope: !325)
!334 = distinct !DISubprogram(name: "cachedsess_set_val_cb", scope: !69, file: !69, line: 132, type: !196, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!335 = !DILocalVariable(name: "it", arg: 1, scope: !334, file: !69, line: 132, type: !147)
!336 = !DILocation(line: 132, column: 36, scope: !334)
!337 = !DILocalVariable(name: "val", arg: 2, scope: !334, file: !69, line: 132, type: !182)
!338 = !DILocation(line: 132, column: 52, scope: !334)
!339 = !DILocation(line: 134, column: 29, scope: !334)
!340 = !DILocation(line: 134, column: 22, scope: !334)
!341 = !DILocation(line: 134, column: 3, scope: !334)
!342 = !DILocation(line: 134, column: 4, scope: !334)
!343 = !DILocation(line: 134, column: 17, scope: !334)
!344 = !DILocation(line: 134, column: 27, scope: !334)
!345 = !DILocation(line: 135, column: 1, scope: !334)
!346 = distinct !DISubprogram(name: "cachedsess_unpackverify_val_cb", scope: !69, file: !69, line: 138, type: !201, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!347 = !DILocalVariable(name: "val", arg: 1, scope: !346, file: !69, line: 138, type: !182)
!348 = !DILocation(line: 138, column: 44, scope: !346)
!349 = !DILocalVariable(name: "copy", arg: 2, scope: !346, file: !69, line: 138, type: !121)
!350 = !DILocation(line: 138, column: 53, scope: !346)
!351 = !DILocalVariable(name: "valbuf", scope: !346, file: !69, line: 140, type: !83)
!352 = !DILocation(line: 140, column: 12, scope: !346)
!353 = !DILocation(line: 140, column: 21, scope: !346)
!354 = !DILocalVariable(name: "sess", scope: !346, file: !69, line: 141, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !357, line: 376, baseType: !358)
!357 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !357, line: 498, size: 2816, align: 64, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !368, !369, !373, !374, !375, !376, !377, !378, !381, !905, !906, !907, !908, !909, !910, !928, !929, !934, !935, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !358, file: !357, line: 499, baseType: !121, size: 32, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !358, file: !357, line: 502, baseType: !36, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !358, file: !357, line: 503, baseType: !38, size: 64, align: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !358, file: !357, line: 504, baseType: !121, size: 32, align: 32, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !358, file: !357, line: 505, baseType: !365, size: 384, align: 8, offset: 160)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, align: 8, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 48)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !358, file: !357, line: 507, baseType: !36, size: 32, align: 32, offset: 544)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !358, file: !357, line: 508, baseType: !370, size: 256, align: 8, offset: 576)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, align: 8, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !358, file: !357, line: 514, baseType: !36, size: 32, align: 32, offset: 832)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !358, file: !357, line: 515, baseType: !370, size: 256, align: 8, offset: 864)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !358, file: !357, line: 521, baseType: !66, size: 64, align: 64, offset: 1152)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !358, file: !357, line: 522, baseType: !66, size: 64, align: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !358, file: !357, line: 529, baseType: !121, size: 32, align: 32, offset: 1280)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !358, file: !357, line: 531, baseType: !379, size: 64, align: 64, offset: 1344)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !357, line: 531, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !358, file: !357, line: 538, baseType: !382, size: 64, align: 64, offset: 1408)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !384, line: 154, baseType: !385)
!384 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !386, line: 270, size: 1472, align: 64, elements: !387)
!386 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!387 = !{!388, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !861, !865, !870, !872, !883, !887}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !385, file: !386, line: 271, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !386, line: 254, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !386, line: 242, size: 832, align: 64, elements: !392)
!392 = !{!393, !403, !404, !484, !521, !530, !531, !820, !821, !822, !827}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !391, file: !386, line: 243, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !384, line: 83, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !397, line: 247, size: 192, align: 64, elements: !398)
!397 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!398 = !{!399, !400, !401, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !396, file: !397, line: 248, baseType: !121, size: 32, align: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !396, file: !397, line: 249, baseType: !121, size: 32, align: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !396, file: !397, line: 250, baseType: !19, size: 64, align: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !397, line: 256, baseType: !141, size: 64, align: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !391, file: !386, line: 244, baseType: !394, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !391, file: !386, line: 245, baseType: !405, size: 64, align: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !384, line: 155, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !386, line: 143, size: 128, align: 64, elements: !408)
!408 = !{!409, !422}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !407, file: !386, line: 144, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !384, line: 103, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !397, line: 218, size: 320, align: 64, elements: !413)
!413 = !{!414, !417, !418, !419, !420, !421}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !412, file: !397, line: 219, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !412, file: !397, line: 219, baseType: !415, size: 64, align: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !412, file: !397, line: 220, baseType: !121, size: 32, align: 32, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !412, file: !397, line: 221, baseType: !121, size: 32, align: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !412, file: !397, line: 222, baseType: !94, size: 64, align: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !397, line: 223, baseType: !121, size: 32, align: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !407, file: !386, line: 145, baseType: !423, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !397, line: 561, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !397, line: 532, size: 128, align: 64, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !397, line: 533, baseType: !121, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !425, file: !397, line: 560, baseType: !429, size: 64, align: 64, offset: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !397, line: 534, size: 64, align: 64, elements: !430)
!430 = !{!431, !432, !434, !437, !438, !439, !442, !445, !448, !451, !454, !457, !460, !463, !466, !469, !472, !475, !478, !479, !480}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !429, file: !397, line: 535, baseType: !66, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !429, file: !397, line: 536, baseType: !433, size: 32, align: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !384, line: 99, baseType: !121)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !429, file: !397, line: 537, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !384, line: 98, baseType: !396)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !429, file: !397, line: 538, baseType: !410, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !429, file: !397, line: 539, baseType: !394, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !429, file: !397, line: 540, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !384, line: 84, baseType: !396)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !429, file: !397, line: 541, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !384, line: 85, baseType: !396)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !429, file: !397, line: 542, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !384, line: 86, baseType: !396)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !429, file: !397, line: 543, baseType: !449, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !384, line: 87, baseType: !396)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !429, file: !397, line: 544, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !384, line: 88, baseType: !396)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !429, file: !397, line: 545, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !384, line: 89, baseType: !396)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !429, file: !397, line: 546, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !384, line: 90, baseType: !396)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !429, file: !397, line: 547, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !384, line: 92, baseType: !396)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !429, file: !397, line: 548, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !384, line: 91, baseType: !396)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !429, file: !397, line: 549, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !384, line: 93, baseType: !396)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !429, file: !397, line: 550, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !384, line: 95, baseType: !396)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !429, file: !397, line: 551, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !384, line: 96, baseType: !396)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !429, file: !397, line: 552, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !384, line: 97, baseType: !396)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !429, file: !397, line: 557, baseType: !435, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !429, file: !397, line: 558, baseType: !435, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !429, file: !397, line: 559, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !397, line: 307, baseType: !483)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !397, line: 307, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !391, file: !386, line: 246, baseType: !485, size: 64, align: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !384, line: 159, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !386, line: 179, size: 320, align: 64, elements: !488)
!488 = !{!489, !509, !510, !519, !520}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !487, file: !386, line: 180, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !386, line: 175, size: 256, align: 64, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !491, file: !386, line: 175, baseType: !494, size: 256, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !495, line: 72, baseType: !496)
!495 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !495, line: 66, size: 256, align: 64, elements: !497)
!497 = !{!498, !499, !501, !502, !503}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !496, file: !495, line: 67, baseType: !121, size: 32, align: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !496, file: !495, line: 68, baseType: !500, size: 64, align: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !496, file: !495, line: 69, baseType: !121, size: 32, align: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !496, file: !495, line: 70, baseType: !121, size: 32, align: 32, offset: 160)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !496, file: !495, line: 71, baseType: !504, size: 64, align: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!121, !507, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !487, file: !386, line: 181, baseType: !121, size: 32, align: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !487, file: !386, line: 183, baseType: !511, size: 64, align: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !384, line: 127, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !514, line: 77, size: 192, align: 64, elements: !515)
!514 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !513, file: !514, line: 78, baseType: !90, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !513, file: !514, line: 79, baseType: !66, size: 64, align: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !513, file: !514, line: 80, baseType: !90, size: 64, align: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !487, file: !386, line: 188, baseType: !19, size: 64, align: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !487, file: !386, line: 189, baseType: !121, size: 32, align: 32, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !391, file: !386, line: 247, baseType: !522, size: 64, align: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !386, line: 155, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !386, line: 152, size: 128, align: 64, elements: !525)
!525 = !{!526, !529}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !524, file: !386, line: 153, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !384, line: 94, baseType: !396)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !524, file: !386, line: 154, baseType: !527, size: 64, align: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !391, file: !386, line: 248, baseType: !485, size: 64, align: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !391, file: !386, line: 249, baseType: !532, size: 64, align: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !384, line: 160, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !386, line: 157, size: 192, align: 64, elements: !535)
!535 = !{!536, !537, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !534, file: !386, line: 158, baseType: !405, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !534, file: !386, line: 159, baseType: !443, size: 64, align: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !534, file: !386, line: 160, baseType: !539, size: 64, align: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !384, line: 133, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !542, line: 129, size: 448, align: 64, elements: !543)
!542 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!543 = !{!544, !545, !546, !547, !552, !556, !814, !815}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !541, file: !542, line: 130, baseType: !121, size: 32, align: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !541, file: !542, line: 131, baseType: !121, size: 32, align: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !541, file: !542, line: 132, baseType: !121, size: 32, align: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !541, file: !542, line: 133, baseType: !548, size: 64, align: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !384, line: 135, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !384, line: 135, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !541, file: !542, line: 134, baseType: !553, size: 64, align: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !384, line: 177, baseType: !555)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !384, line: 177, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !541, file: !542, line: 149, baseType: !557, size: 64, align: 64, offset: 256)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !542, line: 135, size: 64, align: 64, elements: !558)
!558 = !{!559, !560, !690, !758, !811}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !557, file: !542, line: 136, baseType: !66, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !557, file: !542, line: 138, baseType: !561, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !563, line: 132, size: 1344, align: 64, elements: !564)
!563 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!564 = !{!565, !566, !567, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !679, !680, !681, !682, !683, !684, !685, !689}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !562, file: !563, line: 137, baseType: !121, size: 32, align: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !562, file: !563, line: 138, baseType: !141, size: 64, align: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !562, file: !563, line: 139, baseType: !568, size: 64, align: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !384, line: 147, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !563, line: 85, size: 896, align: 64, elements: !572)
!572 = !{!573, !574, !580, !581, !582, !583, !603, !620, !624, !625, !626, !627, !634, !638}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !571, file: !563, line: 86, baseType: !415, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !571, file: !563, line: 87, baseType: !575, size: 64, align: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!121, !121, !94, !19, !578, !121}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !384, line: 146, baseType: !562)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !571, file: !563, line: 89, baseType: !575, size: 64, align: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !571, file: !563, line: 91, baseType: !575, size: 64, align: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !571, file: !563, line: 93, baseType: !575, size: 64, align: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !571, file: !563, line: 96, baseType: !584, size: 64, align: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!121, !587, !598, !578, !600}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !384, line: 120, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !590, line: 313, size: 192, align: 64, elements: !591)
!590 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!591 = !{!592, !594, !595, !596, !597}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !589, file: !590, line: 314, baseType: !593, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !589, file: !590, line: 316, baseType: !121, size: 32, align: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !589, file: !590, line: 318, baseType: !121, size: 32, align: 32, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !589, file: !590, line: 319, baseType: !121, size: 32, align: 32, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !590, line: 320, baseType: !121, size: 32, align: 32, offset: 160)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !384, line: 121, baseType: !602)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !384, line: 121, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !571, file: !563, line: 98, baseType: !604, size: 64, align: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64, align: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!121, !587, !598, !598, !598, !600, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !384, line: 123, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !590, line: 324, size: 832, align: 64, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !619}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !609, file: !590, line: 325, baseType: !121, size: 32, align: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !609, file: !590, line: 326, baseType: !588, size: 192, align: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !609, file: !590, line: 327, baseType: !588, size: 192, align: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !609, file: !590, line: 328, baseType: !588, size: 192, align: 64, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !609, file: !590, line: 330, baseType: !616, size: 128, align: 64, offset: 640)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, align: 64, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 2)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !590, line: 333, baseType: !121, size: 32, align: 32, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !571, file: !563, line: 101, baseType: !621, size: 64, align: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!121, !578}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !571, file: !563, line: 103, baseType: !621, size: 64, align: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !563, line: 105, baseType: !121, size: 32, align: 32, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !571, file: !563, line: 107, baseType: !66, size: 64, align: 64, offset: 640)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !571, file: !563, line: 116, baseType: !628, size: 64, align: 64, offset: 704)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!121, !121, !94, !36, !19, !631, !632}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !571, file: !563, line: 120, baseType: !635, size: 64, align: 64, offset: 768)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!121, !121, !94, !36, !94, !36, !632}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !571, file: !563, line: 129, baseType: !639, size: 64, align: 64, offset: 832)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!121, !578, !121, !587, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !384, line: 125, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !590, line: 349, size: 192, align: 64, elements: !645)
!645 = !{!646, !647, !648}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !644, file: !590, line: 350, baseType: !36, size: 32, align: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !644, file: !590, line: 351, baseType: !65, size: 64, align: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !644, file: !590, line: 357, baseType: !649, size: 64, align: 64, offset: 128)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !644, file: !590, line: 352, size: 64, align: 64, elements: !650)
!650 = !{!651, !655}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !649, file: !590, line: 354, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !121, !121, !65}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !649, file: !590, line: 356, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!121, !121, !121, !642}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !562, file: !563, line: 141, baseType: !553, size: 64, align: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !562, file: !563, line: 142, baseType: !587, size: 64, align: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !562, file: !563, line: 143, baseType: !587, size: 64, align: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !562, file: !563, line: 144, baseType: !587, size: 64, align: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !562, file: !563, line: 145, baseType: !587, size: 64, align: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !562, file: !563, line: 146, baseType: !587, size: 64, align: 64, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !562, file: !563, line: 147, baseType: !587, size: 64, align: 64, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !562, file: !563, line: 148, baseType: !587, size: 64, align: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !562, file: !563, line: 149, baseType: !587, size: 64, align: 64, offset: 704)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !562, file: !563, line: 151, baseType: !669, size: 128, align: 64, offset: 768)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !384, line: 195, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !671, line: 292, size: 128, align: 64, elements: !672)
!671 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!672 = !{!673, !678}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !670, file: !671, line: 293, baseType: !674, size: 64, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64, align: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !671, line: 297, size: 256, align: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !675, file: !671, line: 297, baseType: !494, size: 256, align: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !670, file: !671, line: 295, baseType: !121, size: 32, align: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !562, file: !563, line: 152, baseType: !121, size: 32, align: 32, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !563, line: 153, baseType: !121, size: 32, align: 32, offset: 928)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !562, file: !563, line: 155, baseType: !607, size: 64, align: 64, offset: 960)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !562, file: !563, line: 156, baseType: !607, size: 64, align: 64, offset: 1024)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !562, file: !563, line: 157, baseType: !607, size: 64, align: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !562, file: !563, line: 162, baseType: !66, size: 64, align: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !562, file: !563, line: 163, baseType: !686, size: 64, align: 64, offset: 1216)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !384, line: 122, baseType: !688)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !384, line: 122, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !562, file: !563, line: 164, baseType: !686, size: 64, align: 64, offset: 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !557, file: !542, line: 141, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64, align: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !693, line: 155, size: 1088, align: 64, elements: !694)
!693 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !757}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !692, file: !693, line: 160, baseType: !121, size: 32, align: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !692, file: !693, line: 161, baseType: !141, size: 64, align: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !692, file: !693, line: 162, baseType: !121, size: 32, align: 32, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !692, file: !693, line: 163, baseType: !587, size: 64, align: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !692, file: !693, line: 164, baseType: !587, size: 64, align: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !692, file: !693, line: 165, baseType: !587, size: 64, align: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !692, file: !693, line: 166, baseType: !587, size: 64, align: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !692, file: !693, line: 167, baseType: !587, size: 64, align: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !692, file: !693, line: 168, baseType: !587, size: 64, align: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !692, file: !693, line: 169, baseType: !587, size: 64, align: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !693, line: 170, baseType: !121, size: 32, align: 32, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !692, file: !693, line: 172, baseType: !607, size: 64, align: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !692, file: !693, line: 173, baseType: !121, size: 32, align: 32, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !692, file: !693, line: 174, baseType: !669, size: 128, align: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !692, file: !693, line: 175, baseType: !710, size: 64, align: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !384, line: 144, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !693, line: 129, size: 768, align: 64, elements: !714)
!714 = !{!715, !716, !728, !733, !737, !741, !745, !749, !750, !751, !752, !756}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !713, file: !693, line: 130, baseType: !415, size: 64, align: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !713, file: !693, line: 131, baseType: !717, size: 64, align: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!720, !94, !121, !726}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !693, line: 127, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !693, line: 124, size: 128, align: 64, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !722, file: !693, line: 125, baseType: !587, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !722, file: !693, line: 126, baseType: !587, size: 64, align: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !384, line: 143, baseType: !692)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !713, file: !693, line: 132, baseType: !729, size: 64, align: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!121, !726, !600, !732, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !713, file: !693, line: 134, baseType: !734, size: 64, align: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!121, !94, !121, !720, !726}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !713, file: !693, line: 136, baseType: !738, size: 64, align: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!121, !726, !587, !587, !587, !587, !587, !587, !600, !607}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !713, file: !693, line: 140, baseType: !742, size: 64, align: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64, align: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!121, !726, !587, !587, !598, !598, !600, !607}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !713, file: !693, line: 142, baseType: !746, size: 64, align: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64, align: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!121, !726}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !713, file: !693, line: 143, baseType: !746, size: 64, align: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !693, line: 144, baseType: !121, size: 32, align: 32, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !713, file: !693, line: 145, baseType: !66, size: 64, align: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !713, file: !693, line: 147, baseType: !753, size: 64, align: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, align: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!121, !726, !121, !94, !121, !171, !593, !642}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !713, file: !693, line: 152, baseType: !746, size: 64, align: 64, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !692, file: !693, line: 177, baseType: !553, size: 64, align: 64, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !557, file: !542, line: 144, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !761, line: 135, size: 1152, align: 64, elements: !762)
!761 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !810}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !760, file: !761, line: 140, baseType: !121, size: 32, align: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !760, file: !761, line: 141, baseType: !121, size: 32, align: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !760, file: !761, line: 142, baseType: !587, size: 64, align: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !760, file: !761, line: 143, baseType: !587, size: 64, align: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !760, file: !761, line: 144, baseType: !141, size: 64, align: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !760, file: !761, line: 145, baseType: !587, size: 64, align: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !760, file: !761, line: 146, baseType: !587, size: 64, align: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !761, line: 147, baseType: !121, size: 32, align: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !760, file: !761, line: 148, baseType: !607, size: 64, align: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !760, file: !761, line: 150, baseType: !587, size: 64, align: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !760, file: !761, line: 151, baseType: !587, size: 64, align: 64, offset: 576)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !760, file: !761, line: 152, baseType: !19, size: 64, align: 64, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !760, file: !761, line: 153, baseType: !121, size: 32, align: 32, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !760, file: !761, line: 154, baseType: !587, size: 64, align: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !760, file: !761, line: 155, baseType: !121, size: 32, align: 32, offset: 832)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !760, file: !761, line: 156, baseType: !669, size: 128, align: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !760, file: !761, line: 157, baseType: !780, size: 64, align: 64, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64, align: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !384, line: 141, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !761, line: 117, size: 576, align: 64, elements: !784)
!784 = !{!785, !786, !792, !796, !802, !803, !804, !805, !806}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !783, file: !761, line: 118, baseType: !415, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !783, file: !761, line: 120, baseType: !787, size: 64, align: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!121, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !384, line: 140, baseType: !760)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !783, file: !761, line: 121, baseType: !793, size: 64, align: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64, align: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!121, !19, !598, !790}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !783, file: !761, line: 123, baseType: !797, size: 64, align: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64, align: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!121, !800, !587, !598, !598, !598, !600, !607}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !783, file: !761, line: 126, baseType: !787, size: 64, align: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !783, file: !761, line: 127, baseType: !787, size: 64, align: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !761, line: 128, baseType: !121, size: 32, align: 32, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !783, file: !761, line: 129, baseType: !66, size: 64, align: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !783, file: !761, line: 131, baseType: !807, size: 64, align: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, align: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!121, !790, !121, !121, !642}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !760, file: !761, line: 158, baseType: !553, size: 64, align: 64, offset: 1088)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !557, file: !542, line: 147, baseType: !812, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !542, line: 147, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !541, file: !542, line: 150, baseType: !121, size: 32, align: 32, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !541, file: !542, line: 151, baseType: !816, size: 64, align: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64, align: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !386, line: 223, size: 256, align: 64, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !817, file: !386, line: 223, baseType: !494, size: 256, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !391, file: !386, line: 250, baseType: !443, size: 64, align: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !391, file: !386, line: 251, baseType: !443, size: 64, align: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !391, file: !386, line: 252, baseType: !823, size: 64, align: 64, offset: 576)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64, align: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !386, line: 204, size: 256, align: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !824, file: !386, line: 204, baseType: !494, size: 256, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !391, file: !386, line: 253, baseType: !828, size: 192, align: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !397, line: 269, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !397, line: 265, size: 192, align: 64, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !829, file: !397, line: 266, baseType: !19, size: 64, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !829, file: !397, line: 267, baseType: !141, size: 64, align: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !829, file: !397, line: 268, baseType: !121, size: 32, align: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !385, file: !386, line: 272, baseType: !405, size: 64, align: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !385, file: !386, line: 273, baseType: !443, size: 64, align: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !385, file: !386, line: 274, baseType: !121, size: 32, align: 32, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !385, file: !386, line: 275, baseType: !121, size: 32, align: 32, offset: 224)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !386, line: 276, baseType: !66, size: 64, align: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !385, file: !386, line: 277, baseType: !669, size: 128, align: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !385, file: !386, line: 279, baseType: !141, size: 64, align: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !385, file: !386, line: 280, baseType: !141, size: 64, align: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !385, file: !386, line: 281, baseType: !18, size: 64, align: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !385, file: !386, line: 282, baseType: !18, size: 64, align: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !385, file: !386, line: 283, baseType: !18, size: 64, align: 64, offset: 704)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !385, file: !386, line: 284, baseType: !18, size: 64, align: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !385, file: !386, line: 285, baseType: !446, size: 64, align: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !385, file: !386, line: 286, baseType: !848, size: 64, align: 64, offset: 896)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !384, line: 186, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !851, line: 262, size: 192, align: 64, elements: !852)
!851 = !DIFile(filename: "/usr/include/openssl/x509v3.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!852 = !{!853, !854, !860}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !850, file: !851, line: 263, baseType: !446, size: 64, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !850, file: !851, line: 264, baseType: !855, size: 64, align: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "GENERAL_NAMES", file: !851, line: 209, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !851, line: 220, size: 256, align: 64, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !857, file: !851, line: 220, baseType: !494, size: 256, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !850, file: !851, line: 265, baseType: !394, size: 64, align: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !385, file: !386, line: 287, baseType: !862, size: 64, align: 64, offset: 960)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !384, line: 184, baseType: !864)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !384, line: 184, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !385, file: !386, line: 288, baseType: !866, size: 64, align: 64, offset: 1024)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64, align: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !851, line: 259, size: 256, align: 64, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !867, file: !851, line: 259, baseType: !494, size: 256, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !385, file: !386, line: 289, baseType: !871, size: 64, align: 64, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !385, file: !386, line: 290, baseType: !873, size: 64, align: 64, offset: 1152)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !384, line: 189, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !851, line: 332, size: 128, align: 64, elements: !876)
!876 = !{!877, !882}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "permittedSubtrees", scope: !875, file: !851, line: 333, baseType: !878, size: 64, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64, align: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_SUBTREE", file: !851, line: 330, size: 256, align: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !879, file: !851, line: 330, baseType: !494, size: 256, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "excludedSubtrees", scope: !875, file: !851, line: 334, baseType: !878, size: 64, align: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !385, file: !386, line: 296, baseType: !884, size: 160, align: 8, offset: 1216)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, align: 8, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 20)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !385, file: !386, line: 298, baseType: !888, size: 64, align: 64, offset: 1408)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64, align: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !386, line: 268, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !386, line: 262, size: 320, align: 64, elements: !891)
!891 = !{!892, !897, !898, !899, !900}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !890, file: !386, line: 263, baseType: !893, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64, align: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !397, line: 801, size: 256, align: 64, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !894, file: !397, line: 801, baseType: !494, size: 256, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !890, file: !386, line: 264, baseType: !893, size: 64, align: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !890, file: !386, line: 265, baseType: !476, size: 64, align: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !890, file: !386, line: 266, baseType: !446, size: 64, align: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !890, file: !386, line: 267, baseType: !901, size: 64, align: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64, align: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !397, line: 170, size: 256, align: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !902, file: !397, line: 170, baseType: !494, size: 256, align: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !358, file: !357, line: 543, baseType: !141, size: 64, align: 64, offset: 1472)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !358, file: !357, line: 544, baseType: !121, size: 32, align: 32, offset: 1536)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !358, file: !357, line: 545, baseType: !141, size: 64, align: 64, offset: 1600)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !358, file: !357, line: 546, baseType: !141, size: 64, align: 64, offset: 1664)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !358, file: !357, line: 547, baseType: !36, size: 32, align: 32, offset: 1728)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !358, file: !357, line: 548, baseType: !911, size: 64, align: 64, offset: 1792)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64, align: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !357, line: 375, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !357, line: 418, size: 704, align: 64, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !914, file: !357, line: 419, baseType: !121, size: 32, align: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !914, file: !357, line: 420, baseType: !415, size: 64, align: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !914, file: !357, line: 421, baseType: !18, size: 64, align: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !914, file: !357, line: 426, baseType: !18, size: 64, align: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !914, file: !357, line: 427, baseType: !18, size: 64, align: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !914, file: !357, line: 428, baseType: !18, size: 64, align: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !914, file: !357, line: 429, baseType: !18, size: 64, align: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !914, file: !357, line: 430, baseType: !18, size: 64, align: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !914, file: !357, line: 431, baseType: !18, size: 64, align: 64, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !914, file: !357, line: 432, baseType: !18, size: 64, align: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !914, file: !357, line: 433, baseType: !121, size: 32, align: 32, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !914, file: !357, line: 434, baseType: !121, size: 32, align: 32, offset: 672)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !358, file: !357, line: 549, baseType: !18, size: 64, align: 64, offset: 1856)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !358, file: !357, line: 551, baseType: !930, size: 64, align: 64, offset: 1920)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64, align: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !357, line: 380, size: 256, align: 64, elements: !932)
!932 = !{!933}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !931, file: !357, line: 380, baseType: !494, size: 256, align: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !358, file: !357, line: 552, baseType: !669, size: 128, align: 64, offset: 1984)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !358, file: !357, line: 557, baseType: !936, size: 64, align: 64, offset: 2112)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !357, line: 557, baseType: !936, size: 64, align: 64, offset: 2176)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !358, file: !357, line: 559, baseType: !66, size: 64, align: 64, offset: 2240)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !358, file: !357, line: 561, baseType: !90, size: 64, align: 64, offset: 2304)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !358, file: !357, line: 562, baseType: !19, size: 64, align: 64, offset: 2368)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !358, file: !357, line: 563, baseType: !90, size: 64, align: 64, offset: 2432)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !358, file: !357, line: 564, baseType: !19, size: 64, align: 64, offset: 2496)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !358, file: !357, line: 567, baseType: !19, size: 64, align: 64, offset: 2560)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !358, file: !357, line: 568, baseType: !90, size: 64, align: 64, offset: 2624)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !358, file: !357, line: 569, baseType: !141, size: 64, align: 64, offset: 2688)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !358, file: !357, line: 572, baseType: !66, size: 64, align: 64, offset: 2752)
!947 = !DILocation(line: 141, column: 15, scope: !346)
!948 = !DILocalVariable(name: "p", scope: !346, file: !69, line: 142, type: !94)
!949 = !DILocation(line: 142, column: 23, scope: !346)
!950 = !DILocation(line: 144, column: 29, scope: !346)
!951 = !DILocation(line: 144, column: 37, scope: !346)
!952 = !DILocation(line: 144, column: 4, scope: !346)
!953 = !DILocation(line: 145, column: 34, scope: !346)
!954 = !DILocation(line: 145, column: 42, scope: !346)
!955 = !DILocation(line: 145, column: 9, scope: !346)
!956 = !DILocation(line: 145, column: 7, scope: !346)
!957 = !DILocation(line: 146, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !346, file: !69, line: 146, column: 6)
!959 = !DILocation(line: 146, column: 6, scope: !346)
!960 = !DILocation(line: 147, column: 3, scope: !958)
!961 = !DILocation(line: 148, column: 28, scope: !962)
!962 = distinct !DILexicalBlock(scope: !346, file: !69, line: 148, column: 6)
!963 = !DILocation(line: 148, column: 7, scope: !962)
!964 = !DILocation(line: 148, column: 6, scope: !346)
!965 = !DILocation(line: 149, column: 20, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !69, line: 148, column: 35)
!967 = !DILocation(line: 149, column: 3, scope: !966)
!968 = !DILocation(line: 150, column: 3, scope: !966)
!969 = !DILocation(line: 152, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !346, file: !69, line: 152, column: 6)
!971 = !DILocation(line: 152, column: 6, scope: !346)
!972 = !DILocation(line: 153, column: 10, scope: !970)
!973 = !DILocation(line: 153, column: 3, scope: !970)
!974 = !DILocation(line: 154, column: 19, scope: !346)
!975 = !DILocation(line: 154, column: 2, scope: !346)
!976 = !DILocation(line: 155, column: 2, scope: !346)
!977 = !DILocation(line: 156, column: 1, scope: !346)
!978 = distinct !DISubprogram(name: "cachedsess_fini_cb", scope: !69, file: !69, line: 159, type: !206, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!979 = !DILocation(line: 161, column: 25, scope: !978)
!980 = !DILocation(line: 161, column: 2, scope: !978)
!981 = !DILocation(line: 162, column: 1, scope: !978)
!982 = distinct !DISubprogram(name: "cachedsess_mkkey", scope: !69, file: !69, line: 185, type: !983, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!983 = !DISubroutineType(types: !984)
!984 = !{!165, !985, !994, !415}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !6, line: 153, size: 128, align: 16, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !987, file: !6, line: 155, baseType: !9, size: 16, align: 16)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !987, file: !6, line: 156, baseType: !991, size: 112, align: 8, offset: 16)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 112, align: 8, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 14)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !6, line: 33, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !997, line: 189, baseType: !36)
!997 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/lichi/Desktop/sslsplit/task1")
!998 = !DILocalVariable(name: "addr", arg: 1, scope: !982, file: !69, line: 185, type: !985)
!999 = !DILocation(line: 185, column: 41, scope: !982)
!1000 = !DILocalVariable(name: "addrlen", arg: 2, scope: !982, file: !69, line: 185, type: !994)
!1001 = !DILocation(line: 185, column: 87, scope: !982)
!1002 = !DILocalVariable(name: "sni", arg: 3, scope: !982, file: !69, line: 186, type: !415)
!1003 = !DILocation(line: 186, column: 30, scope: !982)
!1004 = !DILocalVariable(name: "tmp", scope: !982, file: !69, line: 188, type: !84)
!1005 = !DILocation(line: 188, column: 11, scope: !982)
!1006 = !DILocalVariable(name: "db", scope: !982, file: !69, line: 188, type: !83)
!1007 = !DILocation(line: 188, column: 17, scope: !982)
!1008 = !DILocalVariable(name: "port", scope: !982, file: !69, line: 189, type: !127)
!1009 = !DILocation(line: 189, column: 8, scope: !982)
!1010 = !DILocalVariable(name: "snilen", scope: !982, file: !69, line: 190, type: !90)
!1011 = !DILocation(line: 190, column: 9, scope: !982)
!1012 = !DILocation(line: 192, column: 38, scope: !982)
!1013 = !DILocation(line: 192, column: 45, scope: !982)
!1014 = !DILocation(line: 192, column: 10, scope: !982)
!1015 = !DILocation(line: 192, column: 2, scope: !982)
!1016 = !DILocation(line: 195, column: 37, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !982, file: !69, line: 192, column: 56)
!1018 = !DILocation(line: 195, column: 44, scope: !1017)
!1019 = !DILocation(line: 194, column: 14, scope: !1017)
!1020 = !DILocation(line: 194, column: 8, scope: !1017)
!1021 = !DILocation(line: 194, column: 12, scope: !1017)
!1022 = !DILocation(line: 196, column: 8, scope: !1017)
!1023 = !DILocation(line: 196, column: 11, scope: !1017)
!1024 = !DILocation(line: 197, column: 33, scope: !1017)
!1025 = !DILocation(line: 197, column: 40, scope: !1017)
!1026 = !DILocation(line: 197, column: 9, scope: !1017)
!1027 = !DILocation(line: 198, column: 4, scope: !1017)
!1028 = !DILocation(line: 201, column: 38, scope: !1017)
!1029 = !DILocation(line: 201, column: 45, scope: !1017)
!1030 = !DILocation(line: 200, column: 14, scope: !1017)
!1031 = !DILocation(line: 200, column: 8, scope: !1017)
!1032 = !DILocation(line: 200, column: 12, scope: !1017)
!1033 = !DILocation(line: 202, column: 8, scope: !1017)
!1034 = !DILocation(line: 202, column: 11, scope: !1017)
!1035 = !DILocation(line: 203, column: 34, scope: !1017)
!1036 = !DILocation(line: 203, column: 41, scope: !1017)
!1037 = !DILocation(line: 203, column: 9, scope: !1017)
!1038 = !DILocation(line: 204, column: 4, scope: !1017)
!1039 = !DILocation(line: 206, column: 4, scope: !1017)
!1040 = !DILocation(line: 209, column: 11, scope: !982)
!1041 = !DILocation(line: 209, column: 24, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !982, file: !69, discriminator: 1)
!1043 = !DILocation(line: 209, column: 17, scope: !1042)
!1044 = !DILocation(line: 209, column: 11, scope: !1042)
!1045 = !DILocation(line: 209, column: 11, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !982, file: !69, discriminator: 2)
!1047 = !DILocation(line: 209, column: 11, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !982, file: !69, discriminator: 3)
!1049 = !DILocation(line: 209, column: 9, scope: !1048)
!1050 = !DILocation(line: 210, column: 34, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !982, file: !69, line: 210, column: 6)
!1052 = !DILocation(line: 210, column: 37, scope: !1051)
!1053 = !DILocation(line: 210, column: 54, scope: !1051)
!1054 = !DILocation(line: 210, column: 52, scope: !1051)
!1055 = !DILocation(line: 210, column: 13, scope: !1051)
!1056 = !DILocation(line: 210, column: 11, scope: !1051)
!1057 = !DILocation(line: 210, column: 6, scope: !982)
!1058 = !DILocation(line: 211, column: 3, scope: !1051)
!1059 = !DILocation(line: 212, column: 9, scope: !982)
!1060 = !DILocation(line: 212, column: 13, scope: !982)
!1061 = !DILocation(line: 212, column: 22, scope: !982)
!1062 = !DILocation(line: 212, column: 31, scope: !982)
!1063 = !DILocation(line: 212, column: 2, scope: !982)
!1064 = !DILocation(line: 213, column: 9, scope: !982)
!1065 = !DILocation(line: 213, column: 13, scope: !982)
!1066 = !DILocation(line: 213, column: 23, scope: !982)
!1067 = !DILocation(line: 213, column: 17, scope: !982)
!1068 = !DILocation(line: 213, column: 2, scope: !982)
!1069 = !DILocation(line: 214, column: 9, scope: !982)
!1070 = !DILocation(line: 214, column: 13, scope: !982)
!1071 = !DILocation(line: 214, column: 23, scope: !982)
!1072 = !DILocation(line: 214, column: 17, scope: !982)
!1073 = !DILocation(line: 214, column: 26, scope: !982)
!1074 = !DILocation(line: 214, column: 42, scope: !982)
!1075 = !DILocation(line: 214, column: 47, scope: !982)
!1076 = !DILocation(line: 214, column: 2, scope: !982)
!1077 = !DILocation(line: 215, column: 9, scope: !982)
!1078 = !DILocation(line: 215, column: 2, scope: !982)
!1079 = !DILocation(line: 216, column: 1, scope: !982)
!1080 = distinct !DISubprogram(name: "cachedsess_mkval", scope: !69, file: !69, line: 219, type: !1081, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!182, !355}
!1083 = !DILocalVariable(name: "sess", arg: 1, scope: !1080, file: !69, line: 219, type: !355)
!1084 = !DILocation(line: 219, column: 31, scope: !1080)
!1085 = !DILocalVariable(name: "db", scope: !1080, file: !69, line: 221, type: !83)
!1086 = !DILocation(line: 221, column: 12, scope: !1080)
!1087 = !DILocalVariable(name: "p", scope: !1080, file: !69, line: 222, type: !19)
!1088 = !DILocation(line: 222, column: 17, scope: !1080)
!1089 = !DILocalVariable(name: "asn1sz", scope: !1080, file: !69, line: 223, type: !90)
!1090 = !DILocation(line: 223, column: 9, scope: !1080)
!1091 = !DILocation(line: 225, column: 27, scope: !1080)
!1092 = !DILocation(line: 225, column: 11, scope: !1080)
!1093 = !DILocation(line: 225, column: 9, scope: !1080)
!1094 = !DILocation(line: 226, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1080, file: !69, line: 226, column: 6)
!1096 = !DILocation(line: 226, column: 14, scope: !1095)
!1097 = !DILocation(line: 226, column: 41, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1095, file: !69, discriminator: 1)
!1099 = !DILocation(line: 226, column: 24, scope: !1098)
!1100 = !DILocation(line: 226, column: 22, scope: !1098)
!1101 = !DILocation(line: 226, column: 6, scope: !1098)
!1102 = !DILocation(line: 227, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !69, line: 226, column: 51)
!1104 = !DILocation(line: 229, column: 6, scope: !1080)
!1105 = !DILocation(line: 229, column: 10, scope: !1080)
!1106 = !DILocation(line: 229, column: 4, scope: !1080)
!1107 = !DILocation(line: 230, column: 18, scope: !1080)
!1108 = !DILocation(line: 230, column: 2, scope: !1080)
!1109 = !DILocation(line: 231, column: 9, scope: !1080)
!1110 = !DILocation(line: 231, column: 2, scope: !1080)
!1111 = !DILocation(line: 232, column: 1, scope: !1080)
!1112 = distinct !DISubprogram(name: "kh_del_dynbufmap_t", scope: !69, file: !69, line: 66, type: !1113, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !67, !73}
!1115 = !DILocalVariable(name: "h", arg: 1, scope: !1112, file: !69, line: 66, type: !67)
!1116 = !DILocation(line: 66, column: 4942, scope: !1112)
!1117 = !DILocalVariable(name: "x", arg: 2, scope: !1112, file: !69, line: 66, type: !73)
!1118 = !DILocation(line: 66, column: 4953, scope: !1112)
!1119 = !DILocation(line: 66, column: 4962, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1112, file: !69, line: 66, column: 4962)
!1121 = !DILocation(line: 66, column: 4967, scope: !1120)
!1122 = !DILocation(line: 66, column: 4970, scope: !1120)
!1123 = !DILocation(line: 66, column: 4964, scope: !1120)
!1124 = !DILocation(line: 66, column: 4980, scope: !1120)
!1125 = !DILocation(line: 66, column: 4995, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1120, file: !69, discriminator: 1)
!1127 = !DILocation(line: 66, column: 4996, scope: !1126)
!1128 = !DILocation(line: 66, column: 4986, scope: !1126)
!1129 = !DILocation(line: 66, column: 4989, scope: !1126)
!1130 = !DILocation(line: 66, column: 5004, scope: !1126)
!1131 = !DILocation(line: 66, column: 5005, scope: !1126)
!1132 = !DILocation(line: 66, column: 5011, scope: !1126)
!1133 = !DILocation(line: 66, column: 5000, scope: !1126)
!1134 = !DILocation(line: 66, column: 5016, scope: !1126)
!1135 = !DILocation(line: 66, column: 4962, scope: !1126)
!1136 = !DILocation(line: 66, column: 5047, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !69, discriminator: 2)
!1138 = distinct !DILexicalBlock(scope: !1120, file: !69, line: 66, column: 5021)
!1139 = !DILocation(line: 66, column: 5048, scope: !1137)
!1140 = !DILocation(line: 66, column: 5054, scope: !1137)
!1141 = !DILocation(line: 66, column: 5043, scope: !1137)
!1142 = !DILocation(line: 66, column: 5033, scope: !1137)
!1143 = !DILocation(line: 66, column: 5034, scope: !1137)
!1144 = !DILocation(line: 66, column: 5024, scope: !1137)
!1145 = !DILocation(line: 66, column: 5027, scope: !1137)
!1146 = !DILocation(line: 66, column: 5038, scope: !1137)
!1147 = !DILocation(line: 66, column: 5063, scope: !1137)
!1148 = !DILocation(line: 66, column: 5066, scope: !1137)
!1149 = !DILocation(line: 66, column: 5061, scope: !1137)
!1150 = !DILocation(line: 66, column: 5072, scope: !1137)
!1151 = !DILocation(line: 66, column: 5074, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1112, file: !69, discriminator: 3)
!1153 = distinct !DISubprogram(name: "kh_get_dynbufmap_t", scope: !69, file: !69, line: 66, type: !1154, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!73, !1156, !83}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!1158 = !DILocalVariable(name: "h", arg: 1, scope: !1153, file: !69, line: 66, type: !1156)
!1159 = !DILocation(line: 66, column: 818, scope: !1153)
!1160 = !DILocalVariable(name: "key", arg: 2, scope: !1153, file: !69, line: 66, type: !83)
!1161 = !DILocation(line: 66, column: 831, scope: !1153)
!1162 = !DILocation(line: 66, column: 842, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1153, file: !69, line: 66, column: 842)
!1164 = !DILocation(line: 66, column: 845, scope: !1163)
!1165 = !DILocation(line: 66, column: 842, scope: !1153)
!1166 = !DILocalVariable(name: "k", scope: !1167, file: !69, line: 66, type: !73)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !69, line: 66, column: 856)
!1168 = !DILocation(line: 66, column: 866, scope: !1167)
!1169 = !DILocalVariable(name: "i", scope: !1167, file: !69, line: 66, type: !73)
!1170 = !DILocation(line: 66, column: 869, scope: !1167)
!1171 = !DILocalVariable(name: "last", scope: !1167, file: !69, line: 66, type: !73)
!1172 = !DILocation(line: 66, column: 872, scope: !1167)
!1173 = !DILocalVariable(name: "mask", scope: !1167, file: !69, line: 66, type: !73)
!1174 = !DILocation(line: 66, column: 878, scope: !1167)
!1175 = !DILocalVariable(name: "step", scope: !1167, file: !69, line: 66, type: !73)
!1176 = !DILocation(line: 66, column: 884, scope: !1167)
!1177 = !DILocation(line: 66, column: 884, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 1)
!1179 = !DILocation(line: 66, column: 901, scope: !1178)
!1180 = !DILocation(line: 66, column: 904, scope: !1178)
!1181 = !DILocation(line: 66, column: 914, scope: !1178)
!1182 = !DILocation(line: 66, column: 899, scope: !1178)
!1183 = !DILocation(line: 66, column: 943, scope: !1178)
!1184 = !DILocation(line: 66, column: 923, scope: !1178)
!1185 = !DILocation(line: 66, column: 921, scope: !1178)
!1186 = !DILocation(line: 66, column: 953, scope: !1178)
!1187 = !DILocation(line: 66, column: 957, scope: !1178)
!1188 = !DILocation(line: 66, column: 955, scope: !1178)
!1189 = !DILocation(line: 66, column: 951, scope: !1178)
!1190 = !DILocation(line: 66, column: 970, scope: !1178)
!1191 = !DILocation(line: 66, column: 968, scope: !1178)
!1192 = !DILocation(line: 66, column: 973, scope: !1178)
!1193 = !DILocation(line: 66, column: 992, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 2)
!1195 = !DILocation(line: 66, column: 993, scope: !1194)
!1196 = !DILocation(line: 66, column: 983, scope: !1194)
!1197 = !DILocation(line: 66, column: 986, scope: !1194)
!1198 = !DILocation(line: 66, column: 1001, scope: !1194)
!1199 = !DILocation(line: 66, column: 1002, scope: !1194)
!1200 = !DILocation(line: 66, column: 1008, scope: !1194)
!1201 = !DILocation(line: 66, column: 997, scope: !1194)
!1202 = !DILocation(line: 66, column: 1013, scope: !1194)
!1203 = !DILocation(line: 66, column: 1017, scope: !1194)
!1204 = !DILocation(line: 66, column: 1032, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 3)
!1206 = !DILocation(line: 66, column: 1033, scope: !1205)
!1207 = !DILocation(line: 66, column: 1023, scope: !1205)
!1208 = !DILocation(line: 66, column: 1026, scope: !1205)
!1209 = !DILocation(line: 66, column: 1041, scope: !1205)
!1210 = !DILocation(line: 66, column: 1042, scope: !1205)
!1211 = !DILocation(line: 66, column: 1048, scope: !1205)
!1212 = !DILocation(line: 66, column: 1037, scope: !1205)
!1213 = !DILocation(line: 66, column: 1053, scope: !1205)
!1214 = !DILocation(line: 66, column: 1057, scope: !1205)
!1215 = !DILocation(line: 66, column: 1072, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 4)
!1217 = !DILocation(line: 66, column: 1064, scope: !1216)
!1218 = !DILocation(line: 66, column: 1067, scope: !1216)
!1219 = !DILocation(line: 66, column: 1077, scope: !1216)
!1220 = !DILocation(line: 66, column: 1084, scope: !1216)
!1221 = !DILocation(line: 66, column: 1090, scope: !1216)
!1222 = !DILocation(line: 66, column: 1080, scope: !1216)
!1223 = !DILocation(line: 66, column: 1094, scope: !1216)
!1224 = !DILocation(line: 66, column: 1114, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 5)
!1226 = !DILocation(line: 66, column: 1106, scope: !1225)
!1227 = !DILocation(line: 66, column: 1109, scope: !1225)
!1228 = !DILocation(line: 66, column: 1119, scope: !1225)
!1229 = !DILocation(line: 66, column: 1125, scope: !1225)
!1230 = !DILocation(line: 66, column: 1131, scope: !1225)
!1231 = !DILocation(line: 66, column: 1145, scope: !1225)
!1232 = !DILocation(line: 66, column: 1137, scope: !1225)
!1233 = !DILocation(line: 66, column: 1140, scope: !1225)
!1234 = !DILocation(line: 66, column: 1150, scope: !1225)
!1235 = !DILocation(line: 66, column: 1098, scope: !1225)
!1236 = !DILocation(line: 66, column: 1154, scope: !1225)
!1237 = !DILocation(line: 66, column: 1060, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 6)
!1239 = !DILocation(line: 66, column: 1057, scope: !1238)
!1240 = !DILocation(line: 66, column: 973, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 7)
!1242 = !DILocation(line: 66, column: 1170, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1244, file: !69, discriminator: 8)
!1244 = distinct !DILexicalBlock(scope: !1167, file: !69, line: 66, column: 1163)
!1245 = !DILocation(line: 66, column: 1175, scope: !1243)
!1246 = !DILocation(line: 66, column: 1172, scope: !1243)
!1247 = !DILocation(line: 66, column: 1186, scope: !1243)
!1248 = !DILocation(line: 66, column: 1184, scope: !1243)
!1249 = !DILocation(line: 66, column: 1167, scope: !1243)
!1250 = !DILocation(line: 66, column: 1196, scope: !1243)
!1251 = !DILocation(line: 66, column: 1201, scope: !1243)
!1252 = !DILocation(line: 66, column: 1198, scope: !1243)
!1253 = !DILocation(line: 66, column: 1214, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1255, file: !69, discriminator: 9)
!1255 = distinct !DILexicalBlock(scope: !1244, file: !69, line: 66, column: 1196)
!1256 = !DILocation(line: 66, column: 1217, scope: !1254)
!1257 = !DILocation(line: 66, column: 1207, scope: !1254)
!1258 = !DILocation(line: 66, column: 973, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 10)
!1260 = distinct !{!1260, !1261}
!1261 = !DILocation(line: 66, column: 973, scope: !1167)
!1262 = !DILocation(line: 66, column: 1248, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 11)
!1264 = !DILocation(line: 66, column: 1249, scope: !1263)
!1265 = !DILocation(line: 66, column: 1239, scope: !1263)
!1266 = !DILocation(line: 66, column: 1242, scope: !1263)
!1267 = !DILocation(line: 66, column: 1257, scope: !1263)
!1268 = !DILocation(line: 66, column: 1258, scope: !1263)
!1269 = !DILocation(line: 66, column: 1264, scope: !1263)
!1270 = !DILocation(line: 66, column: 1253, scope: !1263)
!1271 = !DILocation(line: 66, column: 1269, scope: !1263)
!1272 = !DILocation(line: 66, column: 1237, scope: !1263)
!1273 = !DILocation(line: 66, column: 1274, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 12)
!1275 = !DILocation(line: 66, column: 1277, scope: !1274)
!1276 = !DILocation(line: 66, column: 1237, scope: !1274)
!1277 = !DILocation(line: 66, column: 1289, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 13)
!1279 = !DILocation(line: 66, column: 1237, scope: !1278)
!1280 = !DILocation(line: 66, column: 1237, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1167, file: !69, discriminator: 14)
!1282 = !DILocation(line: 66, column: 1230, scope: !1281)
!1283 = !DILocation(line: 66, column: 1299, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1163, file: !69, discriminator: 15)
!1285 = !DILocation(line: 66, column: 1309, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1153, file: !69, discriminator: 16)
!1287 = distinct !DISubprogram(name: "kh_dynbuf_hash_func", scope: !69, file: !69, line: 45, type: !1288, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!73, !83}
!1290 = !DILocalVariable(name: "b", arg: 1, scope: !1287, file: !69, line: 45, type: !83)
!1291 = !DILocation(line: 45, column: 31, scope: !1287)
!1292 = !DILocalVariable(name: "p", scope: !1287, file: !69, line: 47, type: !93)
!1293 = !DILocation(line: 47, column: 11, scope: !1287)
!1294 = !DILocation(line: 47, column: 26, scope: !1287)
!1295 = !DILocation(line: 47, column: 29, scope: !1287)
!1296 = !DILocation(line: 47, column: 15, scope: !1287)
!1297 = !DILocalVariable(name: "h", scope: !1287, file: !69, line: 48, type: !73)
!1298 = !DILocation(line: 48, column: 10, scope: !1287)
!1299 = !DILocalVariable(name: "rem", scope: !1287, file: !69, line: 49, type: !121)
!1300 = !DILocation(line: 49, column: 6, scope: !1287)
!1301 = !DILocation(line: 51, column: 13, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1287, file: !69, line: 51, column: 6)
!1303 = !DILocation(line: 51, column: 16, scope: !1302)
!1304 = !DILocation(line: 51, column: 19, scope: !1302)
!1305 = !DILocation(line: 51, column: 11, scope: !1302)
!1306 = !DILocation(line: 51, column: 6, scope: !1287)
!1307 = !DILocation(line: 52, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !69, line: 51, column: 39)
!1309 = !DILocation(line: 52, column: 14, scope: !1308)
!1310 = !DILocation(line: 52, column: 17, scope: !1308)
!1311 = !DILocation(line: 52, column: 23, scope: !1308)
!1312 = !DILocation(line: 52, column: 26, scope: !1308)
!1313 = !DILocation(line: 52, column: 21, scope: !1308)
!1314 = !DILocation(line: 52, column: 31, scope: !1308)
!1315 = !DILocation(line: 52, column: 29, scope: !1308)
!1316 = !DILocation(line: 52, column: 36, scope: !1308)
!1317 = !DILocation(line: 53, column: 2, scope: !1308)
!1318 = !DILocation(line: 55, column: 2, scope: !1287)
!1319 = !DILocation(line: 55, column: 9, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1287, file: !69, discriminator: 1)
!1321 = !DILocation(line: 55, column: 24, scope: !1320)
!1322 = !DILocation(line: 55, column: 27, scope: !1320)
!1323 = !DILocation(line: 55, column: 33, scope: !1320)
!1324 = !DILocation(line: 55, column: 36, scope: !1320)
!1325 = !DILocation(line: 55, column: 31, scope: !1320)
!1326 = !DILocation(line: 55, column: 41, scope: !1320)
!1327 = !DILocation(line: 55, column: 39, scope: !1320)
!1328 = !DILocation(line: 55, column: 13, scope: !1320)
!1329 = !DILocation(line: 55, column: 11, scope: !1320)
!1330 = !DILocation(line: 55, column: 2, scope: !1320)
!1331 = !DILocation(line: 56, column: 10, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1287, file: !69, line: 55, column: 47)
!1333 = !DILocation(line: 56, column: 8, scope: !1332)
!1334 = !DILocation(line: 56, column: 5, scope: !1332)
!1335 = !DILocation(line: 55, column: 2, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1287, file: !69, discriminator: 2)
!1337 = distinct !{!1337, !1318}
!1338 = !DILocation(line: 59, column: 9, scope: !1287)
!1339 = !DILocation(line: 59, column: 2, scope: !1287)
!1340 = distinct !DISubprogram(name: "kh_put_dynbufmap_t", scope: !69, file: !69, line: 66, type: !1341, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!73, !67, !83, !171}
!1343 = !DILocalVariable(name: "h", arg: 1, scope: !1340, file: !69, line: 66, type: !67)
!1344 = !DILocation(line: 66, column: 3635, scope: !1340)
!1345 = !DILocalVariable(name: "key", arg: 2, scope: !1340, file: !69, line: 66, type: !83)
!1346 = !DILocation(line: 66, column: 3648, scope: !1340)
!1347 = !DILocalVariable(name: "ret", arg: 3, scope: !1340, file: !69, line: 66, type: !171)
!1348 = !DILocation(line: 66, column: 3658, scope: !1340)
!1349 = !DILocalVariable(name: "x", scope: !1340, file: !69, line: 66, type: !73)
!1350 = !DILocation(line: 66, column: 3673, scope: !1340)
!1351 = !DILocation(line: 66, column: 3680, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1340, file: !69, line: 66, column: 3680)
!1353 = !DILocation(line: 66, column: 3683, scope: !1352)
!1354 = !DILocation(line: 66, column: 3697, scope: !1352)
!1355 = !DILocation(line: 66, column: 3700, scope: !1352)
!1356 = !DILocation(line: 66, column: 3694, scope: !1352)
!1357 = !DILocation(line: 66, column: 3680, scope: !1340)
!1358 = !DILocation(line: 66, column: 3719, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1360, file: !69, discriminator: 1)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !69, line: 66, column: 3719)
!1361 = distinct !DILexicalBlock(scope: !1352, file: !69, line: 66, column: 3713)
!1362 = !DILocation(line: 66, column: 3722, scope: !1359)
!1363 = !DILocation(line: 66, column: 3735, scope: !1359)
!1364 = !DILocation(line: 66, column: 3738, scope: !1359)
!1365 = !DILocation(line: 66, column: 3742, scope: !1359)
!1366 = !DILocation(line: 66, column: 3732, scope: !1359)
!1367 = !DILocation(line: 66, column: 3776, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1369, file: !69, discriminator: 2)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !69, line: 66, column: 3754)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !69, line: 66, column: 3748)
!1371 = !DILocation(line: 66, column: 3779, scope: !1368)
!1372 = !DILocation(line: 66, column: 3782, scope: !1368)
!1373 = !DILocation(line: 66, column: 3792, scope: !1368)
!1374 = !DILocation(line: 66, column: 3754, scope: !1368)
!1375 = !DILocation(line: 66, column: 3797, scope: !1368)
!1376 = !DILocation(line: 66, column: 3805, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !69, discriminator: 3)
!1378 = distinct !DILexicalBlock(scope: !1369, file: !69, line: 66, column: 3802)
!1379 = !DILocation(line: 66, column: 3809, scope: !1377)
!1380 = !DILocation(line: 66, column: 3822, scope: !1377)
!1381 = !DILocation(line: 66, column: 3825, scope: !1377)
!1382 = !DILocation(line: 66, column: 3815, scope: !1377)
!1383 = !DILocation(line: 66, column: 3838, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1370, file: !69, discriminator: 4)
!1385 = !DILocation(line: 66, column: 3871, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !69, discriminator: 5)
!1387 = distinct !DILexicalBlock(scope: !1360, file: !69, line: 66, column: 3849)
!1388 = !DILocation(line: 66, column: 3874, scope: !1386)
!1389 = !DILocation(line: 66, column: 3877, scope: !1386)
!1390 = !DILocation(line: 66, column: 3887, scope: !1386)
!1391 = !DILocation(line: 66, column: 3849, scope: !1386)
!1392 = !DILocation(line: 66, column: 3892, scope: !1386)
!1393 = !DILocation(line: 66, column: 3900, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1395, file: !69, discriminator: 6)
!1395 = distinct !DILexicalBlock(scope: !1387, file: !69, line: 66, column: 3897)
!1396 = !DILocation(line: 66, column: 3904, scope: !1394)
!1397 = !DILocation(line: 66, column: 3917, scope: !1394)
!1398 = !DILocation(line: 66, column: 3920, scope: !1394)
!1399 = !DILocation(line: 66, column: 3910, scope: !1394)
!1400 = !DILocation(line: 66, column: 3933, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1361, file: !69, discriminator: 7)
!1402 = !DILocalVariable(name: "k", scope: !1403, file: !69, line: 66, type: !73)
!1403 = distinct !DILexicalBlock(scope: !1340, file: !69, line: 66, column: 3935)
!1404 = !DILocation(line: 66, column: 3945, scope: !1403)
!1405 = !DILocalVariable(name: "i", scope: !1403, file: !69, line: 66, type: !73)
!1406 = !DILocation(line: 66, column: 3948, scope: !1403)
!1407 = !DILocalVariable(name: "site", scope: !1403, file: !69, line: 66, type: !73)
!1408 = !DILocation(line: 66, column: 3951, scope: !1403)
!1409 = !DILocalVariable(name: "last", scope: !1403, file: !69, line: 66, type: !73)
!1410 = !DILocation(line: 66, column: 3957, scope: !1403)
!1411 = !DILocalVariable(name: "mask", scope: !1403, file: !69, line: 66, type: !73)
!1412 = !DILocation(line: 66, column: 3963, scope: !1403)
!1413 = !DILocation(line: 66, column: 3970, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1403, file: !69, discriminator: 8)
!1415 = !DILocation(line: 66, column: 3973, scope: !1414)
!1416 = !DILocation(line: 66, column: 3983, scope: !1414)
!1417 = !DILocation(line: 66, column: 3963, scope: !1414)
!1418 = !DILocalVariable(name: "step", scope: !1403, file: !69, line: 66, type: !73)
!1419 = !DILocation(line: 66, column: 3988, scope: !1403)
!1420 = !DILocation(line: 66, column: 3988, scope: !1414)
!1421 = !DILocation(line: 66, column: 4009, scope: !1414)
!1422 = !DILocation(line: 66, column: 4012, scope: !1414)
!1423 = !DILocation(line: 66, column: 4007, scope: !1414)
!1424 = !DILocation(line: 66, column: 4000, scope: !1414)
!1425 = !DILocation(line: 66, column: 4047, scope: !1414)
!1426 = !DILocation(line: 66, column: 4027, scope: !1414)
!1427 = !DILocation(line: 66, column: 4025, scope: !1414)
!1428 = !DILocation(line: 66, column: 4057, scope: !1414)
!1429 = !DILocation(line: 66, column: 4061, scope: !1414)
!1430 = !DILocation(line: 66, column: 4059, scope: !1414)
!1431 = !DILocation(line: 66, column: 4055, scope: !1414)
!1432 = !DILocation(line: 66, column: 4082, scope: !1414)
!1433 = !DILocation(line: 66, column: 4083, scope: !1414)
!1434 = !DILocation(line: 66, column: 4073, scope: !1414)
!1435 = !DILocation(line: 66, column: 4076, scope: !1414)
!1436 = !DILocation(line: 66, column: 4091, scope: !1414)
!1437 = !DILocation(line: 66, column: 4092, scope: !1414)
!1438 = !DILocation(line: 66, column: 4098, scope: !1414)
!1439 = !DILocation(line: 66, column: 4087, scope: !1414)
!1440 = !DILocation(line: 66, column: 4103, scope: !1414)
!1441 = !DILocation(line: 66, column: 4071, scope: !1414)
!1442 = !DILocation(line: 66, column: 4112, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1444, file: !69, discriminator: 9)
!1444 = distinct !DILexicalBlock(scope: !1403, file: !69, line: 66, column: 4071)
!1445 = !DILocation(line: 66, column: 4110, scope: !1443)
!1446 = !DILocation(line: 66, column: 4108, scope: !1443)
!1447 = !DILocation(line: 66, column: 4129, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 10)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !69, line: 66, column: 4120)
!1450 = !DILocation(line: 66, column: 4127, scope: !1448)
!1451 = !DILocation(line: 66, column: 4132, scope: !1448)
!1452 = !DILocation(line: 66, column: 4151, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 11)
!1454 = !DILocation(line: 66, column: 4152, scope: !1453)
!1455 = !DILocation(line: 66, column: 4142, scope: !1453)
!1456 = !DILocation(line: 66, column: 4145, scope: !1453)
!1457 = !DILocation(line: 66, column: 4160, scope: !1453)
!1458 = !DILocation(line: 66, column: 4161, scope: !1453)
!1459 = !DILocation(line: 66, column: 4167, scope: !1453)
!1460 = !DILocation(line: 66, column: 4156, scope: !1453)
!1461 = !DILocation(line: 66, column: 4172, scope: !1453)
!1462 = !DILocation(line: 66, column: 4176, scope: !1453)
!1463 = !DILocation(line: 66, column: 4191, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 12)
!1465 = !DILocation(line: 66, column: 4192, scope: !1464)
!1466 = !DILocation(line: 66, column: 4182, scope: !1464)
!1467 = !DILocation(line: 66, column: 4185, scope: !1464)
!1468 = !DILocation(line: 66, column: 4200, scope: !1464)
!1469 = !DILocation(line: 66, column: 4201, scope: !1464)
!1470 = !DILocation(line: 66, column: 4207, scope: !1464)
!1471 = !DILocation(line: 66, column: 4196, scope: !1464)
!1472 = !DILocation(line: 66, column: 4212, scope: !1464)
!1473 = !DILocation(line: 66, column: 4216, scope: !1464)
!1474 = !DILocation(line: 66, column: 4231, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 13)
!1476 = !DILocation(line: 66, column: 4223, scope: !1475)
!1477 = !DILocation(line: 66, column: 4226, scope: !1475)
!1478 = !DILocation(line: 66, column: 4236, scope: !1475)
!1479 = !DILocation(line: 66, column: 4243, scope: !1475)
!1480 = !DILocation(line: 66, column: 4249, scope: !1475)
!1481 = !DILocation(line: 66, column: 4239, scope: !1475)
!1482 = !DILocation(line: 66, column: 4253, scope: !1475)
!1483 = !DILocation(line: 66, column: 4273, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 14)
!1485 = !DILocation(line: 66, column: 4265, scope: !1484)
!1486 = !DILocation(line: 66, column: 4268, scope: !1484)
!1487 = !DILocation(line: 66, column: 4278, scope: !1484)
!1488 = !DILocation(line: 66, column: 4284, scope: !1484)
!1489 = !DILocation(line: 66, column: 4290, scope: !1484)
!1490 = !DILocation(line: 66, column: 4304, scope: !1484)
!1491 = !DILocation(line: 66, column: 4296, scope: !1484)
!1492 = !DILocation(line: 66, column: 4299, scope: !1484)
!1493 = !DILocation(line: 66, column: 4309, scope: !1484)
!1494 = !DILocation(line: 66, column: 4257, scope: !1484)
!1495 = !DILocation(line: 66, column: 4313, scope: !1484)
!1496 = !DILocation(line: 66, column: 4219, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 15)
!1498 = !DILocation(line: 66, column: 4216, scope: !1497)
!1499 = !DILocation(line: 66, column: 4132, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 16)
!1501 = !DILocation(line: 66, column: 4339, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1503, file: !69, discriminator: 17)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 66, column: 4328)
!1504 = distinct !DILexicalBlock(scope: !1449, file: !69, line: 66, column: 4322)
!1505 = !DILocation(line: 66, column: 4340, scope: !1502)
!1506 = !DILocation(line: 66, column: 4330, scope: !1502)
!1507 = !DILocation(line: 66, column: 4333, scope: !1502)
!1508 = !DILocation(line: 66, column: 4348, scope: !1502)
!1509 = !DILocation(line: 66, column: 4349, scope: !1502)
!1510 = !DILocation(line: 66, column: 4355, scope: !1502)
!1511 = !DILocation(line: 66, column: 4344, scope: !1502)
!1512 = !DILocation(line: 66, column: 4360, scope: !1502)
!1513 = !DILocation(line: 66, column: 4328, scope: !1502)
!1514 = !DILocation(line: 66, column: 4372, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1503, file: !69, discriminator: 18)
!1516 = !DILocation(line: 66, column: 4370, scope: !1515)
!1517 = !DILocation(line: 66, column: 4365, scope: !1515)
!1518 = !DILocation(line: 66, column: 4380, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1504, file: !69, discriminator: 19)
!1520 = !DILocation(line: 66, column: 4385, scope: !1519)
!1521 = !DILocation(line: 66, column: 4382, scope: !1519)
!1522 = !DILocation(line: 66, column: 4396, scope: !1519)
!1523 = !DILocation(line: 66, column: 4394, scope: !1519)
!1524 = !DILocation(line: 66, column: 4377, scope: !1519)
!1525 = !DILocation(line: 66, column: 4406, scope: !1519)
!1526 = !DILocation(line: 66, column: 4411, scope: !1519)
!1527 = !DILocation(line: 66, column: 4408, scope: !1519)
!1528 = !DILocation(line: 66, column: 4423, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1530, file: !69, discriminator: 20)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !69, line: 66, column: 4417)
!1531 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 66, column: 4406)
!1532 = !DILocation(line: 66, column: 4421, scope: !1529)
!1533 = !DILocation(line: 66, column: 4429, scope: !1529)
!1534 = !DILocation(line: 66, column: 4132, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1449, file: !69, discriminator: 21)
!1536 = distinct !{!1536, !1537}
!1537 = !DILocation(line: 66, column: 4132, scope: !1449)
!1538 = !DILocation(line: 66, column: 4444, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1540, file: !69, discriminator: 22)
!1540 = distinct !DILexicalBlock(scope: !1449, file: !69, line: 66, column: 4444)
!1541 = !DILocation(line: 66, column: 4449, scope: !1539)
!1542 = !DILocation(line: 66, column: 4452, scope: !1539)
!1543 = !DILocation(line: 66, column: 4446, scope: !1539)
!1544 = !DILocation(line: 66, column: 4480, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1546, file: !69, discriminator: 23)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !69, line: 66, column: 4469)
!1547 = distinct !DILexicalBlock(scope: !1540, file: !69, line: 66, column: 4463)
!1548 = !DILocation(line: 66, column: 4481, scope: !1545)
!1549 = !DILocation(line: 66, column: 4471, scope: !1545)
!1550 = !DILocation(line: 66, column: 4474, scope: !1545)
!1551 = !DILocation(line: 66, column: 4489, scope: !1545)
!1552 = !DILocation(line: 66, column: 4490, scope: !1545)
!1553 = !DILocation(line: 66, column: 4496, scope: !1545)
!1554 = !DILocation(line: 66, column: 4485, scope: !1545)
!1555 = !DILocation(line: 66, column: 4501, scope: !1545)
!1556 = !DILocation(line: 66, column: 4505, scope: !1545)
!1557 = !DILocation(line: 66, column: 4508, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1546, file: !69, discriminator: 24)
!1559 = !DILocation(line: 66, column: 4516, scope: !1558)
!1560 = !DILocation(line: 66, column: 4519, scope: !1558)
!1561 = !DILocation(line: 66, column: 4513, scope: !1558)
!1562 = !DILocation(line: 66, column: 4469, scope: !1558)
!1563 = !DILocation(line: 66, column: 4534, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1546, file: !69, discriminator: 25)
!1565 = !DILocation(line: 66, column: 4532, scope: !1564)
!1566 = !DILocation(line: 66, column: 4530, scope: !1564)
!1567 = !DILocation(line: 66, column: 4549, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1546, file: !69, discriminator: 26)
!1569 = !DILocation(line: 66, column: 4547, scope: !1568)
!1570 = !DILocation(line: 66, column: 4552, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1547, file: !69, discriminator: 27)
!1572 = !DILocation(line: 66, column: 4573, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1574, file: !69, discriminator: 28)
!1574 = distinct !DILexicalBlock(scope: !1340, file: !69, line: 66, column: 4562)
!1575 = !DILocation(line: 66, column: 4574, scope: !1573)
!1576 = !DILocation(line: 66, column: 4564, scope: !1573)
!1577 = !DILocation(line: 66, column: 4567, scope: !1573)
!1578 = !DILocation(line: 66, column: 4582, scope: !1573)
!1579 = !DILocation(line: 66, column: 4583, scope: !1573)
!1580 = !DILocation(line: 66, column: 4589, scope: !1573)
!1581 = !DILocation(line: 66, column: 4578, scope: !1573)
!1582 = !DILocation(line: 66, column: 4594, scope: !1573)
!1583 = !DILocation(line: 66, column: 4562, scope: !1573)
!1584 = !DILocation(line: 66, column: 4614, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !69, discriminator: 29)
!1586 = distinct !DILexicalBlock(scope: !1574, file: !69, line: 66, column: 4599)
!1587 = !DILocation(line: 66, column: 4609, scope: !1585)
!1588 = !DILocation(line: 66, column: 4601, scope: !1585)
!1589 = !DILocation(line: 66, column: 4604, scope: !1585)
!1590 = !DILocation(line: 66, column: 4612, scope: !1585)
!1591 = !DILocation(line: 66, column: 4645, scope: !1585)
!1592 = !DILocation(line: 66, column: 4646, scope: !1585)
!1593 = !DILocation(line: 66, column: 4652, scope: !1585)
!1594 = !DILocation(line: 66, column: 4641, scope: !1585)
!1595 = !DILocation(line: 66, column: 4636, scope: !1585)
!1596 = !DILocation(line: 66, column: 4629, scope: !1585)
!1597 = !DILocation(line: 66, column: 4630, scope: !1585)
!1598 = !DILocation(line: 66, column: 4620, scope: !1585)
!1599 = !DILocation(line: 66, column: 4623, scope: !1585)
!1600 = !DILocation(line: 66, column: 4634, scope: !1585)
!1601 = !DILocation(line: 66, column: 4662, scope: !1585)
!1602 = !DILocation(line: 66, column: 4665, scope: !1585)
!1603 = !DILocation(line: 66, column: 4660, scope: !1585)
!1604 = !DILocation(line: 66, column: 4673, scope: !1585)
!1605 = !DILocation(line: 66, column: 4676, scope: !1585)
!1606 = !DILocation(line: 66, column: 4671, scope: !1585)
!1607 = !DILocation(line: 66, column: 4689, scope: !1585)
!1608 = !DILocation(line: 66, column: 4693, scope: !1585)
!1609 = !DILocation(line: 66, column: 4698, scope: !1585)
!1610 = !DILocation(line: 66, column: 4720, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !69, discriminator: 30)
!1612 = distinct !DILexicalBlock(scope: !1574, file: !69, line: 66, column: 4709)
!1613 = !DILocation(line: 66, column: 4721, scope: !1611)
!1614 = !DILocation(line: 66, column: 4711, scope: !1611)
!1615 = !DILocation(line: 66, column: 4714, scope: !1611)
!1616 = !DILocation(line: 66, column: 4729, scope: !1611)
!1617 = !DILocation(line: 66, column: 4730, scope: !1611)
!1618 = !DILocation(line: 66, column: 4736, scope: !1611)
!1619 = !DILocation(line: 66, column: 4725, scope: !1611)
!1620 = !DILocation(line: 66, column: 4741, scope: !1611)
!1621 = !DILocation(line: 66, column: 4709, scope: !1611)
!1622 = !DILocation(line: 66, column: 4761, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !69, discriminator: 31)
!1624 = distinct !DILexicalBlock(scope: !1612, file: !69, line: 66, column: 4746)
!1625 = !DILocation(line: 66, column: 4756, scope: !1623)
!1626 = !DILocation(line: 66, column: 4748, scope: !1623)
!1627 = !DILocation(line: 66, column: 4751, scope: !1623)
!1628 = !DILocation(line: 66, column: 4759, scope: !1623)
!1629 = !DILocation(line: 66, column: 4792, scope: !1623)
!1630 = !DILocation(line: 66, column: 4793, scope: !1623)
!1631 = !DILocation(line: 66, column: 4799, scope: !1623)
!1632 = !DILocation(line: 66, column: 4788, scope: !1623)
!1633 = !DILocation(line: 66, column: 4783, scope: !1623)
!1634 = !DILocation(line: 66, column: 4776, scope: !1623)
!1635 = !DILocation(line: 66, column: 4777, scope: !1623)
!1636 = !DILocation(line: 66, column: 4767, scope: !1623)
!1637 = !DILocation(line: 66, column: 4770, scope: !1623)
!1638 = !DILocation(line: 66, column: 4781, scope: !1623)
!1639 = !DILocation(line: 66, column: 4809, scope: !1623)
!1640 = !DILocation(line: 66, column: 4812, scope: !1623)
!1641 = !DILocation(line: 66, column: 4807, scope: !1623)
!1642 = !DILocation(line: 66, column: 4819, scope: !1623)
!1643 = !DILocation(line: 66, column: 4823, scope: !1623)
!1644 = !DILocation(line: 66, column: 4828, scope: !1623)
!1645 = !DILocation(line: 66, column: 4836, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1612, file: !69, discriminator: 32)
!1647 = !DILocation(line: 66, column: 4840, scope: !1646)
!1648 = !DILocation(line: 66, column: 4852, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1340, file: !69, discriminator: 33)
!1650 = !DILocation(line: 66, column: 4845, scope: !1649)
!1651 = !DILocation(line: 66, column: 4855, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1340, file: !69, discriminator: 34)
!1653 = distinct !DISubprogram(name: "kh_resize_dynbufmap_t", scope: !69, file: !69, line: 66, type: !1654, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!121, !67, !73}
!1656 = !DILocalVariable(name: "h", arg: 1, scope: !1653, file: !69, line: 66, type: !67)
!1657 = !DILocation(line: 66, column: 1398, scope: !1653)
!1658 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !1653, file: !69, line: 66, type: !73)
!1659 = !DILocation(line: 66, column: 1409, scope: !1653)
!1660 = !DILocalVariable(name: "new_flags", scope: !1653, file: !69, line: 66, type: !80)
!1661 = !DILocation(line: 66, column: 1437, scope: !1653)
!1662 = !DILocalVariable(name: "j", scope: !1653, file: !69, line: 66, type: !73)
!1663 = !DILocation(line: 66, column: 1460, scope: !1653)
!1664 = !DILocation(line: 66, column: 1470, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1653, file: !69, line: 66, column: 1467)
!1666 = !DILocation(line: 66, column: 1507, scope: !1665)
!1667 = !DILocation(line: 66, column: 1521, scope: !1665)
!1668 = !DILocation(line: 66, column: 1504, scope: !1665)
!1669 = !DILocation(line: 66, column: 1544, scope: !1665)
!1670 = !DILocation(line: 66, column: 1558, scope: !1665)
!1671 = !DILocation(line: 66, column: 1541, scope: !1665)
!1672 = !DILocation(line: 66, column: 1581, scope: !1665)
!1673 = !DILocation(line: 66, column: 1595, scope: !1665)
!1674 = !DILocation(line: 66, column: 1578, scope: !1665)
!1675 = !DILocation(line: 66, column: 1618, scope: !1665)
!1676 = !DILocation(line: 66, column: 1632, scope: !1665)
!1677 = !DILocation(line: 66, column: 1615, scope: !1665)
!1678 = !DILocation(line: 66, column: 1655, scope: !1665)
!1679 = !DILocation(line: 66, column: 1669, scope: !1665)
!1680 = !DILocation(line: 66, column: 1652, scope: !1665)
!1681 = !DILocation(line: 66, column: 1675, scope: !1665)
!1682 = !DILocation(line: 66, column: 1699, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1665, file: !69, line: 66, column: 1699)
!1684 = !DILocation(line: 66, column: 1713, scope: !1683)
!1685 = !DILocation(line: 66, column: 1699, scope: !1665)
!1686 = !DILocation(line: 66, column: 1732, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1683, file: !69, discriminator: 1)
!1688 = !DILocation(line: 66, column: 1718, scope: !1687)
!1689 = !DILocation(line: 66, column: 1741, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !69, discriminator: 2)
!1691 = distinct !DILexicalBlock(scope: !1665, file: !69, line: 66, column: 1741)
!1692 = !DILocation(line: 66, column: 1744, scope: !1690)
!1693 = !DILocation(line: 66, column: 1762, scope: !1690)
!1694 = !DILocation(line: 66, column: 1776, scope: !1690)
!1695 = !DILocation(line: 66, column: 1794, scope: !1690)
!1696 = !DILocation(line: 66, column: 1752, scope: !1690)
!1697 = !DILocation(line: 66, column: 1749, scope: !1690)
!1698 = !DILocation(line: 66, column: 1804, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1691, file: !69, discriminator: 3)
!1700 = !DILocation(line: 66, column: 1802, scope: !1699)
!1701 = !DILocation(line: 66, column: 1849, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 4)
!1703 = distinct !DILexicalBlock(scope: !1691, file: !69, line: 66, column: 1814)
!1704 = !DILocation(line: 66, column: 1864, scope: !1702)
!1705 = !DILocation(line: 66, column: 1848, scope: !1702)
!1706 = !DILocation(line: 66, column: 1848, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 5)
!1708 = !DILocation(line: 66, column: 1875, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 6)
!1710 = !DILocation(line: 66, column: 1889, scope: !1709)
!1711 = !DILocation(line: 66, column: 1848, scope: !1709)
!1712 = !DILocation(line: 66, column: 1848, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 7)
!1714 = !DILocation(line: 66, column: 1847, scope: !1713)
!1715 = !DILocation(line: 66, column: 1894, scope: !1713)
!1716 = !DILocation(line: 66, column: 1840, scope: !1713)
!1717 = !DILocation(line: 66, column: 1828, scope: !1713)
!1718 = !DILocation(line: 66, column: 1826, scope: !1713)
!1719 = !DILocation(line: 66, column: 1921, scope: !1713)
!1720 = !DILocation(line: 66, column: 1920, scope: !1713)
!1721 = !DILocation(line: 66, column: 1932, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1723, file: !69, discriminator: 8)
!1723 = distinct !DILexicalBlock(scope: !1703, file: !69, line: 66, column: 1920)
!1724 = !DILocation(line: 66, column: 1950, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 9)
!1726 = !DILocation(line: 66, column: 1943, scope: !1725)
!1727 = !DILocation(line: 66, column: 1969, scope: !1725)
!1728 = !DILocation(line: 66, column: 1984, scope: !1725)
!1729 = !DILocation(line: 66, column: 1968, scope: !1725)
!1730 = !DILocation(line: 66, column: 1968, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 10)
!1732 = !DILocation(line: 66, column: 1995, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 11)
!1734 = !DILocation(line: 66, column: 2009, scope: !1733)
!1735 = !DILocation(line: 66, column: 1968, scope: !1733)
!1736 = !DILocation(line: 66, column: 1968, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1703, file: !69, discriminator: 12)
!1738 = !DILocation(line: 66, column: 1967, scope: !1737)
!1739 = !DILocation(line: 66, column: 2014, scope: !1737)
!1740 = !DILocation(line: 66, column: 1943, scope: !1737)
!1741 = !DILocation(line: 66, column: 2040, scope: !1737)
!1742 = !DILocation(line: 66, column: 2043, scope: !1737)
!1743 = !DILocation(line: 66, column: 2055, scope: !1737)
!1744 = !DILocation(line: 66, column: 2053, scope: !1737)
!1745 = !DILocalVariable(name: "new_keys", scope: !1746, file: !69, line: 66, type: !82)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !69, line: 66, column: 2070)
!1747 = distinct !DILexicalBlock(scope: !1703, file: !69, line: 66, column: 2040)
!1748 = !DILocation(line: 66, column: 2083, scope: !1746)
!1749 = !DILocation(line: 66, column: 2122, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1746, file: !69, discriminator: 13)
!1751 = !DILocation(line: 66, column: 2125, scope: !1750)
!1752 = !DILocation(line: 66, column: 2114, scope: !1750)
!1753 = !DILocation(line: 66, column: 2130, scope: !1750)
!1754 = !DILocation(line: 66, column: 2144, scope: !1750)
!1755 = !DILocation(line: 66, column: 2106, scope: !1750)
!1756 = !DILocation(line: 66, column: 2094, scope: !1750)
!1757 = !DILocation(line: 66, column: 2083, scope: !1750)
!1758 = !DILocation(line: 66, column: 2171, scope: !1750)
!1759 = !DILocation(line: 66, column: 2170, scope: !1750)
!1760 = !DILocation(line: 66, column: 2188, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1762, file: !69, discriminator: 14)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !69, line: 66, column: 2181)
!1763 = distinct !DILexicalBlock(scope: !1746, file: !69, line: 66, column: 2170)
!1764 = !DILocation(line: 66, column: 2183, scope: !1761)
!1765 = !DILocation(line: 66, column: 2200, scope: !1761)
!1766 = !DILocation(line: 66, column: 2223, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1746, file: !69, discriminator: 15)
!1768 = !DILocation(line: 66, column: 2213, scope: !1767)
!1769 = !DILocation(line: 66, column: 2216, scope: !1767)
!1770 = !DILocation(line: 66, column: 2221, scope: !1767)
!1771 = !DILocalVariable(name: "new_vals", scope: !1772, file: !69, line: 66, type: !82)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !69, line: 66, column: 2240)
!1773 = distinct !DILexicalBlock(scope: !1746, file: !69, line: 66, column: 2237)
!1774 = !DILocation(line: 66, column: 2253, scope: !1772)
!1775 = !DILocation(line: 66, column: 2292, scope: !1767)
!1776 = !DILocation(line: 66, column: 2295, scope: !1767)
!1777 = !DILocation(line: 66, column: 2284, scope: !1767)
!1778 = !DILocation(line: 66, column: 2300, scope: !1767)
!1779 = !DILocation(line: 66, column: 2314, scope: !1767)
!1780 = !DILocation(line: 66, column: 2276, scope: !1767)
!1781 = !DILocation(line: 66, column: 2264, scope: !1767)
!1782 = !DILocation(line: 66, column: 2253, scope: !1767)
!1783 = !DILocation(line: 66, column: 2341, scope: !1767)
!1784 = !DILocation(line: 66, column: 2340, scope: !1767)
!1785 = !DILocation(line: 66, column: 2358, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !69, discriminator: 16)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !69, line: 66, column: 2351)
!1788 = distinct !DILexicalBlock(scope: !1772, file: !69, line: 66, column: 2340)
!1789 = !DILocation(line: 66, column: 2353, scope: !1786)
!1790 = !DILocation(line: 66, column: 2370, scope: !1786)
!1791 = !DILocation(line: 66, column: 2393, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1772, file: !69, discriminator: 17)
!1793 = !DILocation(line: 66, column: 2383, scope: !1792)
!1794 = !DILocation(line: 66, column: 2386, scope: !1792)
!1795 = !DILocation(line: 66, column: 2391, scope: !1792)
!1796 = !DILocation(line: 66, column: 2405, scope: !1792)
!1797 = !DILocation(line: 66, column: 2415, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !69, discriminator: 18)
!1799 = distinct !DILexicalBlock(scope: !1653, file: !69, line: 66, column: 2415)
!1800 = !DILocation(line: 66, column: 2427, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1802, file: !69, discriminator: 19)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !69, line: 66, column: 2420)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !69, line: 66, column: 2418)
!1804 = !DILocation(line: 66, column: 2425, scope: !1801)
!1805 = !DILocation(line: 66, column: 2432, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1807, file: !69, discriminator: 20)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !69, line: 66, column: 2420)
!1808 = !DILocation(line: 66, column: 2437, scope: !1806)
!1809 = !DILocation(line: 66, column: 2440, scope: !1806)
!1810 = !DILocation(line: 66, column: 2434, scope: !1806)
!1811 = !DILocation(line: 66, column: 2420, scope: !1806)
!1812 = !DILocation(line: 66, column: 2473, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !69, discriminator: 21)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !69, line: 66, column: 2462)
!1815 = distinct !DILexicalBlock(scope: !1807, file: !69, line: 66, column: 2456)
!1816 = !DILocation(line: 66, column: 2474, scope: !1813)
!1817 = !DILocation(line: 66, column: 2464, scope: !1813)
!1818 = !DILocation(line: 66, column: 2467, scope: !1813)
!1819 = !DILocation(line: 66, column: 2482, scope: !1813)
!1820 = !DILocation(line: 66, column: 2483, scope: !1813)
!1821 = !DILocation(line: 66, column: 2489, scope: !1813)
!1822 = !DILocation(line: 66, column: 2478, scope: !1813)
!1823 = !DILocation(line: 66, column: 2494, scope: !1813)
!1824 = !DILocation(line: 66, column: 2498, scope: !1813)
!1825 = !DILocation(line: 66, column: 2462, scope: !1813)
!1826 = !DILocalVariable(name: "key", scope: !1827, file: !69, line: 66, type: !83)
!1827 = distinct !DILexicalBlock(scope: !1814, file: !69, line: 66, column: 2504)
!1828 = !DILocation(line: 66, column: 2516, scope: !1827)
!1829 = !DILocation(line: 66, column: 2530, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1827, file: !69, discriminator: 22)
!1831 = !DILocation(line: 66, column: 2522, scope: !1830)
!1832 = !DILocation(line: 66, column: 2525, scope: !1830)
!1833 = !DILocation(line: 66, column: 2516, scope: !1830)
!1834 = !DILocalVariable(name: "val", scope: !1827, file: !69, line: 66, type: !83)
!1835 = !DILocation(line: 66, column: 2544, scope: !1827)
!1836 = !DILocalVariable(name: "new_mask", scope: !1827, file: !69, line: 66, type: !73)
!1837 = !DILocation(line: 66, column: 2557, scope: !1827)
!1838 = !DILocation(line: 66, column: 2578, scope: !1830)
!1839 = !DILocation(line: 66, column: 2592, scope: !1830)
!1840 = !DILocation(line: 66, column: 2576, scope: !1830)
!1841 = !DILocation(line: 66, column: 2618, scope: !1830)
!1842 = !DILocation(line: 66, column: 2610, scope: !1830)
!1843 = !DILocation(line: 66, column: 2613, scope: !1830)
!1844 = !DILocation(line: 66, column: 2608, scope: !1830)
!1845 = !DILocation(line: 66, column: 2646, scope: !1830)
!1846 = !DILocation(line: 66, column: 2647, scope: !1830)
!1847 = !DILocation(line: 66, column: 2653, scope: !1830)
!1848 = !DILocation(line: 66, column: 2642, scope: !1830)
!1849 = !DILocation(line: 66, column: 2632, scope: !1830)
!1850 = !DILocation(line: 66, column: 2633, scope: !1830)
!1851 = !DILocation(line: 66, column: 2623, scope: !1830)
!1852 = !DILocation(line: 66, column: 2626, scope: !1830)
!1853 = !DILocation(line: 66, column: 2637, scope: !1830)
!1854 = !DILocation(line: 66, column: 2660, scope: !1830)
!1855 = !DILocalVariable(name: "k", scope: !1856, file: !69, line: 66, type: !73)
!1856 = distinct !DILexicalBlock(scope: !1827, file: !69, line: 66, column: 2670)
!1857 = !DILocation(line: 66, column: 2680, scope: !1856)
!1858 = !DILocalVariable(name: "i", scope: !1856, file: !69, line: 66, type: !73)
!1859 = !DILocation(line: 66, column: 2683, scope: !1856)
!1860 = !DILocalVariable(name: "step", scope: !1856, file: !69, line: 66, type: !73)
!1861 = !DILocation(line: 66, column: 2686, scope: !1856)
!1862 = !DILocation(line: 66, column: 2686, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1856, file: !69, discriminator: 23)
!1864 = !DILocation(line: 66, column: 2720, scope: !1863)
!1865 = !DILocation(line: 66, column: 2700, scope: !1863)
!1866 = !DILocation(line: 66, column: 2698, scope: !1863)
!1867 = !DILocation(line: 66, column: 2730, scope: !1863)
!1868 = !DILocation(line: 66, column: 2734, scope: !1863)
!1869 = !DILocation(line: 66, column: 2732, scope: !1863)
!1870 = !DILocation(line: 66, column: 2728, scope: !1863)
!1871 = !DILocation(line: 66, column: 2744, scope: !1863)
!1872 = !DILocation(line: 66, column: 2764, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1856, file: !69, discriminator: 24)
!1874 = !DILocation(line: 66, column: 2765, scope: !1873)
!1875 = !DILocation(line: 66, column: 2754, scope: !1873)
!1876 = !DILocation(line: 66, column: 2773, scope: !1873)
!1877 = !DILocation(line: 66, column: 2774, scope: !1873)
!1878 = !DILocation(line: 66, column: 2780, scope: !1873)
!1879 = !DILocation(line: 66, column: 2769, scope: !1873)
!1880 = !DILocation(line: 66, column: 2785, scope: !1873)
!1881 = !DILocation(line: 66, column: 2751, scope: !1873)
!1882 = !DILocation(line: 66, column: 2744, scope: !1873)
!1883 = !DILocation(line: 66, column: 2795, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1856, file: !69, discriminator: 25)
!1885 = !DILocation(line: 66, column: 2800, scope: !1884)
!1886 = !DILocation(line: 66, column: 2797, scope: !1884)
!1887 = !DILocation(line: 66, column: 2811, scope: !1884)
!1888 = !DILocation(line: 66, column: 2809, scope: !1884)
!1889 = !DILocation(line: 66, column: 2792, scope: !1884)
!1890 = !DILocation(line: 66, column: 2744, scope: !1884)
!1891 = distinct !{!1891, !1892}
!1892 = !DILocation(line: 66, column: 2744, scope: !1856)
!1893 = !DILocation(line: 66, column: 2848, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1856, file: !69, discriminator: 26)
!1895 = !DILocation(line: 66, column: 2849, scope: !1894)
!1896 = !DILocation(line: 66, column: 2855, scope: !1894)
!1897 = !DILocation(line: 66, column: 2844, scope: !1894)
!1898 = !DILocation(line: 66, column: 2839, scope: !1894)
!1899 = !DILocation(line: 66, column: 2832, scope: !1894)
!1900 = !DILocation(line: 66, column: 2833, scope: !1894)
!1901 = !DILocation(line: 66, column: 2822, scope: !1894)
!1902 = !DILocation(line: 66, column: 2837, scope: !1894)
!1903 = !DILocation(line: 66, column: 2867, scope: !1894)
!1904 = !DILocation(line: 66, column: 2871, scope: !1894)
!1905 = !DILocation(line: 66, column: 2874, scope: !1894)
!1906 = !DILocation(line: 66, column: 2869, scope: !1894)
!1907 = !DILocation(line: 66, column: 2884, scope: !1894)
!1908 = !DILocation(line: 66, column: 2898, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !69, discriminator: 27)
!1910 = distinct !DILexicalBlock(scope: !1856, file: !69, line: 66, column: 2867)
!1911 = !DILocation(line: 66, column: 2899, scope: !1909)
!1912 = !DILocation(line: 66, column: 2889, scope: !1909)
!1913 = !DILocation(line: 66, column: 2892, scope: !1909)
!1914 = !DILocation(line: 66, column: 2907, scope: !1909)
!1915 = !DILocation(line: 66, column: 2908, scope: !1909)
!1916 = !DILocation(line: 66, column: 2914, scope: !1909)
!1917 = !DILocation(line: 66, column: 2903, scope: !1909)
!1918 = !DILocation(line: 66, column: 2919, scope: !1909)
!1919 = !DILocation(line: 66, column: 2923, scope: !1909)
!1920 = !DILocation(line: 66, column: 2867, scope: !1909)
!1921 = !DILocalVariable(name: "tmp", scope: !1922, file: !69, line: 66, type: !83)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !69, line: 66, column: 2931)
!1923 = distinct !DILexicalBlock(scope: !1910, file: !69, line: 66, column: 2929)
!1924 = !DILocation(line: 66, column: 2943, scope: !1922)
!1925 = !DILocation(line: 66, column: 2957, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1922, file: !69, discriminator: 28)
!1927 = !DILocation(line: 66, column: 2949, scope: !1926)
!1928 = !DILocation(line: 66, column: 2952, scope: !1926)
!1929 = !DILocation(line: 66, column: 2943, scope: !1926)
!1930 = !DILocation(line: 66, column: 2974, scope: !1926)
!1931 = !DILocation(line: 66, column: 2969, scope: !1926)
!1932 = !DILocation(line: 66, column: 2961, scope: !1926)
!1933 = !DILocation(line: 66, column: 2964, scope: !1926)
!1934 = !DILocation(line: 66, column: 2972, scope: !1926)
!1935 = !DILocation(line: 66, column: 2985, scope: !1926)
!1936 = !DILocation(line: 66, column: 2983, scope: !1926)
!1937 = !DILocalVariable(name: "tmp", scope: !1938, file: !69, line: 66, type: !83)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !69, line: 66, column: 2999)
!1939 = distinct !DILexicalBlock(scope: !1923, file: !69, line: 66, column: 2996)
!1940 = !DILocation(line: 66, column: 3011, scope: !1938)
!1941 = !DILocation(line: 66, column: 3025, scope: !1926)
!1942 = !DILocation(line: 66, column: 3017, scope: !1926)
!1943 = !DILocation(line: 66, column: 3020, scope: !1926)
!1944 = !DILocation(line: 66, column: 3011, scope: !1926)
!1945 = !DILocation(line: 66, column: 3042, scope: !1926)
!1946 = !DILocation(line: 66, column: 3037, scope: !1926)
!1947 = !DILocation(line: 66, column: 3029, scope: !1926)
!1948 = !DILocation(line: 66, column: 3032, scope: !1926)
!1949 = !DILocation(line: 66, column: 3040, scope: !1926)
!1950 = !DILocation(line: 66, column: 3053, scope: !1926)
!1951 = !DILocation(line: 66, column: 3051, scope: !1926)
!1952 = !DILocation(line: 66, column: 3084, scope: !1926)
!1953 = !DILocation(line: 66, column: 3085, scope: !1926)
!1954 = !DILocation(line: 66, column: 3091, scope: !1926)
!1955 = !DILocation(line: 66, column: 3080, scope: !1926)
!1956 = !DILocation(line: 66, column: 3070, scope: !1926)
!1957 = !DILocation(line: 66, column: 3071, scope: !1926)
!1958 = !DILocation(line: 66, column: 3061, scope: !1926)
!1959 = !DILocation(line: 66, column: 3064, scope: !1926)
!1960 = !DILocation(line: 66, column: 3075, scope: !1926)
!1961 = !DILocation(line: 66, column: 3098, scope: !1926)
!1962 = !DILocation(line: 66, column: 3120, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1964, file: !69, discriminator: 29)
!1964 = distinct !DILexicalBlock(scope: !1910, file: !69, line: 66, column: 3105)
!1965 = !DILocation(line: 66, column: 3115, scope: !1963)
!1966 = !DILocation(line: 66, column: 3107, scope: !1963)
!1967 = !DILocation(line: 66, column: 3110, scope: !1963)
!1968 = !DILocation(line: 66, column: 3118, scope: !1963)
!1969 = !DILocation(line: 66, column: 3145, scope: !1963)
!1970 = !DILocation(line: 66, column: 3140, scope: !1963)
!1971 = !DILocation(line: 66, column: 3132, scope: !1963)
!1972 = !DILocation(line: 66, column: 3135, scope: !1963)
!1973 = !DILocation(line: 66, column: 3143, scope: !1963)
!1974 = !DILocation(line: 66, column: 3150, scope: !1963)
!1975 = !DILocation(line: 66, column: 2660, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1827, file: !69, discriminator: 30)
!1977 = distinct !{!1977, !1978}
!1978 = !DILocation(line: 66, column: 2660, scope: !1827)
!1979 = !DILocation(line: 66, column: 3161, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1827, file: !69, discriminator: 31)
!1981 = !DILocation(line: 66, column: 3163, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1815, file: !69, discriminator: 32)
!1983 = !DILocation(line: 66, column: 2451, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1807, file: !69, discriminator: 33)
!1985 = !DILocation(line: 66, column: 2420, scope: !1984)
!1986 = distinct !{!1986, !1987}
!1987 = !DILocation(line: 66, column: 2420, scope: !1803)
!1988 = !DILocation(line: 66, column: 3169, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1990, file: !69, discriminator: 34)
!1990 = distinct !DILexicalBlock(scope: !1803, file: !69, line: 66, column: 3169)
!1991 = !DILocation(line: 66, column: 3172, scope: !1989)
!1992 = !DILocation(line: 66, column: 3184, scope: !1989)
!1993 = !DILocation(line: 66, column: 3182, scope: !1989)
!1994 = !DILocation(line: 66, column: 3239, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1996, file: !69, discriminator: 35)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !69, line: 66, column: 3199)
!1997 = !DILocation(line: 66, column: 3242, scope: !1995)
!1998 = !DILocation(line: 66, column: 3231, scope: !1995)
!1999 = !DILocation(line: 66, column: 3247, scope: !1995)
!2000 = !DILocation(line: 66, column: 3261, scope: !1995)
!2001 = !DILocation(line: 66, column: 3223, scope: !1995)
!2002 = !DILocation(line: 66, column: 3211, scope: !1995)
!2003 = !DILocation(line: 66, column: 3201, scope: !1995)
!2004 = !DILocation(line: 66, column: 3204, scope: !1995)
!2005 = !DILocation(line: 66, column: 3209, scope: !1995)
!2006 = !DILocation(line: 66, column: 3328, scope: !1995)
!2007 = !DILocation(line: 66, column: 3331, scope: !1995)
!2008 = !DILocation(line: 66, column: 3320, scope: !1995)
!2009 = !DILocation(line: 66, column: 3336, scope: !1995)
!2010 = !DILocation(line: 66, column: 3350, scope: !1995)
!2011 = !DILocation(line: 66, column: 3312, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !1995, file: !69, discriminator: 39)
!2013 = !DILocation(line: 66, column: 3300, scope: !1995)
!2014 = !DILocation(line: 66, column: 3290, scope: !1995)
!2015 = !DILocation(line: 66, column: 3293, scope: !1995)
!2016 = !DILocation(line: 66, column: 3298, scope: !1995)
!2017 = !DILocation(line: 66, column: 3372, scope: !1995)
!2018 = !DILocation(line: 66, column: 3379, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !1803, file: !69, discriminator: 36)
!2020 = !DILocation(line: 66, column: 3382, scope: !2019)
!2021 = !DILocation(line: 66, column: 3374, scope: !2019)
!2022 = !DILocation(line: 66, column: 3401, scope: !2019)
!2023 = !DILocation(line: 66, column: 3390, scope: !2019)
!2024 = !DILocation(line: 66, column: 3393, scope: !2019)
!2025 = !DILocation(line: 66, column: 3399, scope: !2019)
!2026 = !DILocation(line: 66, column: 3427, scope: !2019)
!2027 = !DILocation(line: 66, column: 3412, scope: !2019)
!2028 = !DILocation(line: 66, column: 3415, scope: !2019)
!2029 = !DILocation(line: 66, column: 3425, scope: !2019)
!2030 = !DILocation(line: 66, column: 3458, scope: !2019)
!2031 = !DILocation(line: 66, column: 3461, scope: !2019)
!2032 = !DILocation(line: 66, column: 3442, scope: !2019)
!2033 = !DILocation(line: 66, column: 3445, scope: !2019)
!2034 = !DILocation(line: 66, column: 3456, scope: !2019)
!2035 = !DILocation(line: 66, column: 3494, scope: !2019)
!2036 = !DILocation(line: 66, column: 3497, scope: !2019)
!2037 = !DILocation(line: 66, column: 3507, scope: !2019)
!2038 = !DILocation(line: 66, column: 3525, scope: !2019)
!2039 = !DILocation(line: 66, column: 3484, scope: !2019)
!2040 = !DILocation(line: 66, column: 3467, scope: !2019)
!2041 = !DILocation(line: 66, column: 3470, scope: !2019)
!2042 = !DILocation(line: 66, column: 3482, scope: !2019)
!2043 = !DILocation(line: 66, column: 3533, scope: !2019)
!2044 = !DILocation(line: 66, column: 3535, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !1653, file: !69, discriminator: 37)
!2046 = !DILocation(line: 66, column: 3545, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !1653, file: !69, discriminator: 38)
!2048 = distinct !DISubprogram(name: "kh_destroy_dynbufmap_t", scope: !69, file: !69, line: 66, type: !2049, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !67}
!2051 = !DILocalVariable(name: "h", arg: 1, scope: !2048, file: !69, line: 66, type: !67)
!2052 = !DILocation(line: 66, column: 399, scope: !2048)
!2053 = !DILocation(line: 66, column: 408, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2048, file: !69, line: 66, column: 408)
!2055 = !DILocation(line: 66, column: 408, scope: !2048)
!2056 = !DILocation(line: 66, column: 426, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2058, file: !69, discriminator: 1)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !69, line: 66, column: 411)
!2059 = !DILocation(line: 66, column: 429, scope: !2057)
!2060 = !DILocation(line: 66, column: 418, scope: !2057)
!2061 = !DILocation(line: 66, column: 413, scope: !2057)
!2062 = !DILocation(line: 66, column: 441, scope: !2057)
!2063 = !DILocation(line: 66, column: 444, scope: !2057)
!2064 = !DILocation(line: 66, column: 436, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2057, file: !69, discriminator: 3)
!2066 = !DILocation(line: 66, column: 465, scope: !2057)
!2067 = !DILocation(line: 66, column: 468, scope: !2057)
!2068 = !DILocation(line: 66, column: 457, scope: !2057)
!2069 = !DILocation(line: 66, column: 452, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2057, file: !69, discriminator: 4)
!2071 = !DILocation(line: 66, column: 480, scope: !2057)
!2072 = !DILocation(line: 66, column: 475, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2057, file: !69, discriminator: 5)
!2074 = !DILocation(line: 66, column: 484, scope: !2057)
!2075 = !DILocation(line: 66, column: 486, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2048, file: !69, discriminator: 2)
