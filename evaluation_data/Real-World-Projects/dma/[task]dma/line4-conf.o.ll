; ModuleID = './line4-conf.o.i'
source_filename = "./line4-conf.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.authusers = type { %struct.authuser* }
%struct.authuser = type { %struct.anon, i8*, i8*, i8* }
%struct.anon = type { %struct.authuser* }
%struct.config = type { i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, %struct.ssl_st* }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i8*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, %struct.dtls1_state_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32 (%struct.ssl_st*, i8*, i32*)*, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, i32, i64, i64, i64, i32, i32, i32, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i32, i32, %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i32, i32, i64, i8*, i64, i8*, i8*, i64, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, %struct.ssl_ctx_st*, i8*, i8, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, %struct.srp_ctx_st, i8*, i32 }
%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i32, i32, i64, i32*)*, i32 (%struct.ssl_st*, i32, i8*, i32, i32)*, i32 (%struct.ssl_st*, i32, i8*, i32)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ssl3_enc_method = type opaque
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], i32, [64 x i8], [8 x i8], i32, [64 x i8], [32 x i8], [32 x i8], i32, i32, i32, %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.env_md_ctx_st**, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, i8*, i64, i8*, i64, %struct.anon.4, [64 x i8], i8, [64 x i8], i8, i32, i32, i8, i8*, i32 }
%struct.ssl3_buffer_st = type { i8*, i64, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8*, i64, [8 x i8] }
%struct.anon.4 = type { [128 x i8], [128 x i8], i32, [128 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, %struct.ec_key_st*, i32, i32, i32, i32, [9 x i8], %struct.stack_st_X509_NAME*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, i32, i32, %struct.ssl_comp_st*, i32 }
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i64, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method*, %struct.engine_st* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon.1 }
%union.anon.1 = type { void (i32, i32, i8*)* }
%struct.engine_st = type opaque
%struct.ec_key_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.env_md_st = type { i32, i32, i32, i64, i32 (%struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*, i8*, i64)*, i32 (%struct.env_md_ctx_st*, i8*)*, i32 (%struct.env_md_ctx_st*, %struct.env_md_ctx_st*)*, i32 (%struct.env_md_ctx_st*)*, i32 (i32, i8*, i32, i8*, i32*, i8*)*, i32 (i32, i8*, i32, i8*, i32, i8*)*, [5 x i32], i32, i32, i32 (%struct.env_md_ctx_st*, i32, i32, i8*)* }
%struct.ssl_comp_st = type { i32, i8*, %struct.comp_method_st* }
%struct.comp_method_st = type { i32, i8*, i32 (%struct.comp_ctx_st*)*, void (%struct.comp_ctx_st*)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)*, i32 (%struct.comp_ctx_st*, i8*, i32, i8*, i32)*, i64 ()*, i64 ()* }
%struct.dtls1_state_st = type { i32, [256 x i8], [256 x i8], i32, i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, i16, i16, i16, [8 x i8], %struct.record_pqueue_st, %struct.record_pqueue_st, %struct._pqueue*, %struct._pqueue*, %struct.record_pqueue_st, i32, i32, i32, %struct.hm_header_st, %struct.hm_header_st, %struct.dtls1_timeout_st, %struct.timeval, i16, [2 x i8], i32, [12 x i8], i32, i32, i32 }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct._pqueue = type opaque
%struct.record_pqueue_st = type { i16, %struct._pqueue* }
%struct.hm_header_st = type { i8, i64, i16, i64, i64, i32, %struct.dtls1_retransmit_state }
%struct.dtls1_retransmit_state = type { %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.ssl_session_st*, i16 }
%struct.dtls1_timeout_st = type { i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i64, i64, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.X509_VERIFY_PARAM_ID_st* }
%struct.stack_st_ASN1_OBJECT = type { %struct.stack_st }
%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }
%struct.X509_VERIFY_PARAM_ID_st = type opaque
%struct.stack_st_SSL_CIPHER = type { %struct.stack_st }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8] }
%struct.env_md_ctx_st = type { %struct.env_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.env_md_ctx_st*, i8*, i64)* }
%struct.evp_pkey_ctx_st = type opaque
%struct.comp_ctx_st = type { %struct.comp_method_st*, i64, i64, i64, i64, %struct.crypto_ex_data_st }
%struct.cert_st = type opaque
%struct.ssl_session_st = type { i32, i32, [8 x i8], i32, [48 x i8], i32, [32 x i8], i32, [32 x i8], i8*, i8*, i32, %struct.sess_cert_st*, %struct.x509_st*, i64, i32, i64, i64, i32, %struct.ssl_cipher_st*, i64, %struct.stack_st_SSL_CIPHER*, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i8*, i64, i8*, i8*, i64, i64, i8* }
%struct.sess_cert_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, i8*, %struct.crypto_ex_data_st, i64, i64, i64, i64, i64, i64, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, [20 x i8], %struct.x509_cert_aux_st* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.X509_val_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type { %struct.stack_st }
%struct.X509_pubkey_st = type { %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st* }
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.0, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%union.anon.0 = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type { %struct.stack_st }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.AUTHORITY_KEYID_st = type opaque
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type opaque
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_X509_ALGOR = type { %struct.stack_st }
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, {}*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, {}*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, {}*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, {}*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, i32 (%struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.crypto_ex_data_st, i32 }
%struct.stack_st_X509_OBJECT = type { %struct.stack_st }
%struct.stack_st_X509_LOOKUP = type { %struct.stack_st }
%struct.stack_st_X509_CRL = type { %struct.stack_st }
%struct.stack_st_X509 = type { %struct.stack_st }
%struct.X509_POLICY_TREE_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, [20 x i8], %struct.stack_st_GENERAL_NAMES*, %struct.x509_crl_method_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type { %struct.stack_st }
%struct.ISSUING_DIST_POINT_st = type opaque
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.crypto_ex_data_st = type { %struct.stack_st_void*, i32 }
%struct.stack_st_void = type { %struct.stack_st }
%struct.stack_st_X509_NAME = type { %struct.stack_st }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type { %struct.stack_st }
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.2, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
%struct.lhash_st_SSL_SESSION = type { i32 }
%struct.anon.2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type { %struct.stack_st }
%struct.hmac_ctx_st = type { %struct.env_md_st*, %struct.env_md_ctx_st, %struct.env_md_ctx_st, %struct.env_md_ctx_st, i32, [128 x i8] }
%struct.ssl3_buf_freelist_st = type opaque
%struct.stack_st_SRTP_PROTECTION_PROFILE = type { %struct.stack_st }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Cannot escape leading dot.  Buffer overflow\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can not open auth file `%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c": \09\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"syntax error in authfile %s:%d\00", align 1
@authusers = external global %struct.authusers, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"can not open config `%s'\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"SMARTHOST\00", align 1
@config = external global %struct.config, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ALIASES\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"SPOOLDIR\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"AUTHPATH\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"CERTFILE\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"MAILNAME\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"MASQUERADE\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"STARTTLS\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"OPPORTUNISTIC_TLS\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"SECURETRANSFER\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"DEFER\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"INSECURE\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"FULLBOUNCE\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"syntax error in %s:%d\00", align 1

; Function Attrs: nounwind uwtable
define void @trim_line(i8*) #0 !dbg !9 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !14, metadata !15), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %3, metadata !17, metadata !15), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %4, metadata !22, metadata !15), !dbg !23
  %5 = load i8*, i8** %2, align 8, !dbg !24
  %6 = call i8* @strchr(i8* %5, i32 10) #8, !dbg !26
  store i8* %6, i8** %4, align 8, !dbg !27
  %7 = icmp ne i8* %6, null, !dbg !27
  br i1 %7, label %8, label %10, !dbg !28

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %4, align 8, !dbg !29
  store i8 0, i8* %9, align 1, !dbg !30
  br label %10, !dbg !31

; <label>:10:                                     ; preds = %8, %1
  %11 = load i8*, i8** %2, align 8, !dbg !32
  %12 = call i64 @strlen(i8* %11) #8, !dbg !33
  store i64 %12, i64* %3, align 8, !dbg !34
  %13 = load i8*, i8** %2, align 8, !dbg !35
  %14 = getelementptr inbounds i8, i8* %13, i64 0, !dbg !35
  %15 = load i8, i8* %14, align 1, !dbg !35
  %16 = sext i8 %15 to i32, !dbg !35
  %17 = icmp eq i32 %16, 46, !dbg !37
  br i1 %17, label %18, label %31, !dbg !38

; <label>:18:                                     ; preds = %10
  %19 = load i64, i64* %3, align 8, !dbg !39
  %20 = add i64 %19, 2, !dbg !42
  %21 = icmp ugt i64 %20, 1000, !dbg !43
  br i1 %21, label %22, label %23, !dbg !44

; <label>:22:                                     ; preds = %18
  call void (i32, i8*, ...) @syslog(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0)), !dbg !45
  call void @exit(i32 1) #9, !dbg !47
  unreachable, !dbg !47

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %2, align 8, !dbg !48
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !49
  %26 = load i8*, i8** %2, align 8, !dbg !50
  %27 = load i64, i64* %3, align 8, !dbg !51
  %28 = add i64 %27, 1, !dbg !52
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %25, i8* %26, i64 %28, i32 1, i1 false), !dbg !53
  %29 = load i8*, i8** %2, align 8, !dbg !54
  %30 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !54
  store i8 46, i8* %30, align 1, !dbg !55
  br label %31, !dbg !56

; <label>:31:                                     ; preds = %23, %10
  ret void, !dbg !57
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @syslog(i32, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @parse_authfile(i8*) #0 !dbg !58 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca %struct.authuser*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !63, metadata !15), !dbg !64
  call void @llvm.dbg.declare(metadata [2048 x i8]* %3, metadata !65, metadata !15), !dbg !69
  call void @llvm.dbg.declare(metadata %struct.authuser** %4, metadata !70, metadata !15), !dbg !82
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !83, metadata !15), !dbg !141
  call void @llvm.dbg.declare(metadata i8** %6, metadata !142, metadata !15), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %7, metadata !144, metadata !15), !dbg !145
  store i32 0, i32* %7, align 4, !dbg !145
  %8 = load i8*, i8** %2, align 8, !dbg !146
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !147
  store %struct._IO_FILE* %9, %struct._IO_FILE** %5, align 8, !dbg !148
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !149
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !151
  br i1 %11, label %12, label %14, !dbg !152

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !153
  call void (i32, i8*, ...) @errlog(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* %13), !dbg !155
  br label %14, !dbg !156

; <label>:14:                                     ; preds = %12, %1
  br label %15, !dbg !157

; <label>:15:                                     ; preds = %83, %40, %34, %14
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !158
  %17 = call i32 @feof(%struct._IO_FILE* %16) #10, !dbg !160
  %18 = icmp ne i32 %17, 0, !dbg !161
  %19 = xor i1 %18, true, !dbg !161
  br i1 %19, label %20, label %84, !dbg !162

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i32 0, i32 0, !dbg !163
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !166
  %23 = call i8* @fgets(i8* %21, i32 2048, %struct._IO_FILE* %22), !dbg !167
  %24 = icmp eq i8* %23, null, !dbg !168
  br i1 %24, label %25, label %26, !dbg !169

; <label>:25:                                     ; preds = %20
  br label %84, !dbg !170

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %7, align 4, !dbg !171
  %28 = add nsw i32 %27, 1, !dbg !171
  store i32 %28, i32* %7, align 4, !dbg !171
  %29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i32 0, i32 0, !dbg !172
  call void @chomp(i8* %29), !dbg !173
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i32 0, i32 0, !dbg !174
  %31 = load i8, i8* %30, align 16, !dbg !174
  %32 = sext i8 %31 to i32, !dbg !174
  %33 = icmp eq i32 %32, 35, !dbg !176
  br i1 %33, label %34, label %35, !dbg !177

; <label>:34:                                     ; preds = %26
  br label %15, !dbg !178, !llvm.loop !179

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i32 0, i32 0, !dbg !180
  %37 = load i8, i8* %36, align 16, !dbg !180
  %38 = sext i8 %37 to i32, !dbg !180
  %39 = icmp eq i32 %38, 0, !dbg !182
  br i1 %39, label %40, label %41, !dbg !183

; <label>:40:                                     ; preds = %35
  br label %15, !dbg !184, !llvm.loop !179

; <label>:41:                                     ; preds = %35
  %42 = call noalias i8* @calloc(i64 1, i64 32) #10, !dbg !185
  %43 = bitcast i8* %42 to %struct.authuser*, !dbg !185
  store %struct.authuser* %43, %struct.authuser** %4, align 8, !dbg !186
  %44 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !187
  %45 = icmp eq %struct.authuser* %44, null, !dbg !189
  br i1 %45, label %46, label %47, !dbg !190

; <label>:46:                                     ; preds = %41
  call void (i32, i8*, ...) @errlog(i32 1, i8* null), !dbg !191
  br label %47, !dbg !191

; <label>:47:                                     ; preds = %46, %41
  %48 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i32 0, i32 0, !dbg !192
  %49 = call noalias i8* @strdup(i8* %48) #10, !dbg !193
  store i8* %49, i8** %6, align 8, !dbg !194
  %50 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #10, !dbg !195
  %51 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !196
  %52 = getelementptr inbounds %struct.authuser, %struct.authuser* %51, i32 0, i32 1, !dbg !197
  store i8* %50, i8** %52, align 8, !dbg !198
  %53 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #10, !dbg !199
  %54 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !200
  %55 = getelementptr inbounds %struct.authuser, %struct.authuser* %54, i32 0, i32 3, !dbg !201
  store i8* %53, i8** %55, align 8, !dbg !202
  %56 = load i8*, i8** %6, align 8, !dbg !203
  %57 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !204
  %58 = getelementptr inbounds %struct.authuser, %struct.authuser* %57, i32 0, i32 2, !dbg !205
  store i8* %56, i8** %58, align 8, !dbg !206
  %59 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !207
  %60 = getelementptr inbounds %struct.authuser, %struct.authuser* %59, i32 0, i32 1, !dbg !209
  %61 = load i8*, i8** %60, align 8, !dbg !209
  %62 = icmp eq i8* %61, null, !dbg !210
  br i1 %62, label %73, label %63, !dbg !211

; <label>:63:                                     ; preds = %47
  %64 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !212
  %65 = getelementptr inbounds %struct.authuser, %struct.authuser* %64, i32 0, i32 3, !dbg !213
  %66 = load i8*, i8** %65, align 8, !dbg !213
  %67 = icmp eq i8* %66, null, !dbg !214
  br i1 %67, label %73, label %68, !dbg !215

; <label>:68:                                     ; preds = %63
  %69 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !216
  %70 = getelementptr inbounds %struct.authuser, %struct.authuser* %69, i32 0, i32 2, !dbg !217
  %71 = load i8*, i8** %70, align 8, !dbg !217
  %72 = icmp eq i8* %71, null, !dbg !218
  br i1 %72, label %73, label %76, !dbg !219

; <label>:73:                                     ; preds = %68, %63, %47
  %74 = load i8*, i8** %2, align 8, !dbg !221
  %75 = load i32, i32* %7, align 4, !dbg !223
  call void (i32, i8*, ...) @errlogx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* %74, i32 %75), !dbg !224
  br label %76, !dbg !225

; <label>:76:                                     ; preds = %73, %68
  br label %77, !dbg !226, !llvm.loop !227

; <label>:77:                                     ; preds = %76
  %78 = load %struct.authuser*, %struct.authuser** getelementptr inbounds (%struct.authusers, %struct.authusers* @authusers, i32 0, i32 0), align 8, !dbg !228
  %79 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !231
  %80 = getelementptr inbounds %struct.authuser, %struct.authuser* %79, i32 0, i32 0, !dbg !231
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0, !dbg !232
  store %struct.authuser* %78, %struct.authuser** %81, align 8, !dbg !233
  %82 = load %struct.authuser*, %struct.authuser** %4, align 8, !dbg !231
  store %struct.authuser* %82, %struct.authuser** getelementptr inbounds (%struct.authusers, %struct.authusers* @authusers, i32 0, i32 0), align 8, !dbg !234
  br label %83, !dbg !228

; <label>:83:                                     ; preds = %77
  br label %15, !dbg !235, !llvm.loop !179

; <label>:84:                                     ; preds = %25, %15
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !237
  %86 = call i32 @fclose(%struct._IO_FILE* %85), !dbg !238
  ret void, !dbg !239
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @errlog(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #6

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @chomp(i8*) #0 !dbg !240 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !241, metadata !15), !dbg !242
  call void @llvm.dbg.declare(metadata i64* %3, metadata !243, metadata !15), !dbg !244
  %4 = load i8*, i8** %2, align 8, !dbg !245
  %5 = call i64 @strlen(i8* %4) #8, !dbg !246
  store i64 %5, i64* %3, align 8, !dbg !244
  %6 = load i64, i64* %3, align 8, !dbg !247
  %7 = icmp eq i64 %6, 0, !dbg !249
  br i1 %7, label %8, label %9, !dbg !250

; <label>:8:                                      ; preds = %1
  br label %22, !dbg !251

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !252
  %11 = sub i64 %10, 1, !dbg !254
  %12 = load i8*, i8** %2, align 8, !dbg !255
  %13 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !255
  %14 = load i8, i8* %13, align 1, !dbg !255
  %15 = sext i8 %14 to i32, !dbg !255
  %16 = icmp eq i32 %15, 10, !dbg !256
  br i1 %16, label %17, label %22, !dbg !257

; <label>:17:                                     ; preds = %9
  %18 = load i64, i64* %3, align 8, !dbg !258
  %19 = sub i64 %18, 1, !dbg !259
  %20 = load i8*, i8** %2, align 8, !dbg !260
  %21 = getelementptr inbounds i8, i8* %20, i64 %19, !dbg !260
  store i8 0, i8* %21, align 1, !dbg !261
  br label %22, !dbg !260

; <label>:22:                                     ; preds = %8, %17, %9
  ret void, !dbg !262
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #6

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #6

; Function Attrs: nounwind
declare i8* @strsep(i8**, i8*) #6

declare void @errlogx(i32, i8*, ...) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @parse_conf(i8*) #0 !dbg !263 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca [2048 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !264, metadata !15), !dbg !265
  call void @llvm.dbg.declare(metadata i8** %3, metadata !266, metadata !15), !dbg !267
  call void @llvm.dbg.declare(metadata i8** %4, metadata !268, metadata !15), !dbg !269
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !270, metadata !15), !dbg !271
  call void @llvm.dbg.declare(metadata [2048 x i8]* %6, metadata !272, metadata !15), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %7, metadata !274, metadata !15), !dbg !275
  store i32 0, i32* %7, align 4, !dbg !275
  %10 = load i8*, i8** %2, align 8, !dbg !276
  %11 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !277
  store %struct._IO_FILE* %11, %struct._IO_FILE** %5, align 8, !dbg !278
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !279
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !281
  br i1 %13, label %14, label %21, !dbg !282

; <label>:14:                                     ; preds = %1
  %15 = call i32* @__errno_location() #1, !dbg !283
  %16 = load i32, i32* %15, align 4, !dbg !286
  %17 = icmp eq i32 %16, 2, !dbg !287
  br i1 %17, label %18, label %19, !dbg !288

; <label>:18:                                     ; preds = %14
  br label %251, !dbg !289

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %2, align 8, !dbg !290
  call void (i32, i8*, ...) @errlog(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %20), !dbg !291
  br label %21, !dbg !292

; <label>:21:                                     ; preds = %19, %1
  br label %22, !dbg !293

; <label>:22:                                     ; preds = %247, %53, %21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !294
  %24 = call i32 @feof(%struct._IO_FILE* %23) #10, !dbg !296
  %25 = icmp ne i32 %24, 0, !dbg !297
  %26 = xor i1 %25, true, !dbg !297
  br i1 %26, label %27, label %248, !dbg !298

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !299
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !302
  %30 = call i8* @fgets(i8* %28, i32 2048, %struct._IO_FILE* %29), !dbg !303
  %31 = icmp eq i8* %30, null, !dbg !304
  br i1 %31, label %32, label %33, !dbg !305

; <label>:32:                                     ; preds = %27
  br label %248, !dbg !306

; <label>:33:                                     ; preds = %27
  %34 = load i32, i32* %7, align 4, !dbg !307
  %35 = add nsw i32 %34, 1, !dbg !307
  store i32 %35, i32* %7, align 4, !dbg !307
  %36 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !308
  call void @chomp(i8* %36), !dbg !309
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !310
  %38 = call i8* @strchr(i8* %37, i32 35) #8, !dbg !312
  %39 = icmp ne i8* %38, null, !dbg !312
  br i1 %39, label %40, label %43, !dbg !313

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !314
  %42 = call i8* @strchr(i8* %41, i32 35) #8, !dbg !315
  store i8 0, i8* %42, align 1, !dbg !316
  br label %43, !dbg !317

; <label>:43:                                     ; preds = %40, %33
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i32 0, i32 0, !dbg !318
  store i8* %44, i8** %4, align 8, !dbg !319
  %45 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0)) #10, !dbg !320
  store i8* %45, i8** %3, align 8, !dbg !321
  %46 = load i8*, i8** %3, align 8, !dbg !322
  %47 = icmp eq i8* %46, null, !dbg !324
  br i1 %47, label %53, label %48, !dbg !325

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %3, align 8, !dbg !326
  %50 = load i8, i8* %49, align 1, !dbg !328
  %51 = sext i8 %50 to i32, !dbg !328
  %52 = icmp eq i32 %51, 0, !dbg !329
  br i1 %52, label %53, label %54, !dbg !330

; <label>:53:                                     ; preds = %48, %43
  br label %22, !dbg !331, !llvm.loop !332

; <label>:54:                                     ; preds = %48
  %55 = load i8*, i8** %4, align 8, !dbg !333
  %56 = icmp ne i8* %55, null, !dbg !335
  br i1 %56, label %57, label %65, !dbg !336

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %4, align 8, !dbg !337
  %59 = load i8, i8* %58, align 1, !dbg !339
  %60 = sext i8 %59 to i32, !dbg !339
  %61 = icmp ne i32 %60, 0, !dbg !340
  br i1 %61, label %62, label %65, !dbg !341

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %4, align 8, !dbg !342
  %64 = call noalias i8* @strdup(i8* %63) #10, !dbg !343
  store i8* %64, i8** %4, align 8, !dbg !344
  br label %66, !dbg !345

; <label>:65:                                     ; preds = %57, %54
  store i8* null, i8** %4, align 8, !dbg !346
  br label %66

; <label>:66:                                     ; preds = %65, %62
  %67 = load i8*, i8** %3, align 8, !dbg !347
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !349
  %69 = icmp eq i32 %68, 0, !dbg !350
  br i1 %69, label %70, label %75, !dbg !351

; <label>:70:                                     ; preds = %66
  %71 = load i8*, i8** %4, align 8, !dbg !352
  %72 = icmp ne i8* %71, null, !dbg !354
  br i1 %72, label %73, label %75, !dbg !355

; <label>:73:                                     ; preds = %70
  %74 = load i8*, i8** %4, align 8, !dbg !356
  store i8* %74, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 0), align 8, !dbg !357
  br label %247, !dbg !358

; <label>:75:                                     ; preds = %70, %66
  %76 = load i8*, i8** %3, align 8, !dbg !359
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !361
  %78 = icmp eq i32 %77, 0, !dbg !362
  br i1 %78, label %79, label %85, !dbg !363

; <label>:79:                                     ; preds = %75
  %80 = load i8*, i8** %4, align 8, !dbg !364
  %81 = icmp ne i8* %80, null, !dbg !366
  br i1 %81, label %82, label %85, !dbg !367

; <label>:82:                                     ; preds = %79
  %83 = load i8*, i8** %4, align 8, !dbg !368
  %84 = call i32 @atoi(i8* %83) #8, !dbg !369
  store i32 %84, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 1), align 8, !dbg !370
  br label %246, !dbg !371

; <label>:85:                                     ; preds = %79, %75
  %86 = load i8*, i8** %3, align 8, !dbg !372
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !374
  %88 = icmp eq i32 %87, 0, !dbg !375
  br i1 %88, label %89, label %94, !dbg !376

; <label>:89:                                     ; preds = %85
  %90 = load i8*, i8** %4, align 8, !dbg !377
  %91 = icmp ne i8* %90, null, !dbg !379
  br i1 %91, label %92, label %94, !dbg !380

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %4, align 8, !dbg !381
  store i8* %93, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 2), align 8, !dbg !382
  br label %245, !dbg !383

; <label>:94:                                     ; preds = %89, %85
  %95 = load i8*, i8** %3, align 8, !dbg !384
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !386
  %97 = icmp eq i32 %96, 0, !dbg !387
  br i1 %97, label %98, label %103, !dbg !388

; <label>:98:                                     ; preds = %94
  %99 = load i8*, i8** %4, align 8, !dbg !389
  %100 = icmp ne i8* %99, null, !dbg !391
  br i1 %100, label %101, label %103, !dbg !392

; <label>:101:                                    ; preds = %98
  %102 = load i8*, i8** %4, align 8, !dbg !393
  store i8* %102, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !394
  br label %244, !dbg !395

; <label>:103:                                    ; preds = %98, %94
  %104 = load i8*, i8** %3, align 8, !dbg !396
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !398
  %106 = icmp eq i32 %105, 0, !dbg !399
  br i1 %106, label %107, label %112, !dbg !400

; <label>:107:                                    ; preds = %103
  %108 = load i8*, i8** %4, align 8, !dbg !401
  %109 = icmp ne i8* %108, null, !dbg !403
  br i1 %109, label %110, label %112, !dbg !404

; <label>:110:                                    ; preds = %107
  %111 = load i8*, i8** %4, align 8, !dbg !405
  store i8* %111, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 4), align 8, !dbg !406
  br label %243, !dbg !407

; <label>:112:                                    ; preds = %107, %103
  %113 = load i8*, i8** %3, align 8, !dbg !408
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !410
  %115 = icmp eq i32 %114, 0, !dbg !411
  br i1 %115, label %116, label %121, !dbg !412

; <label>:116:                                    ; preds = %112
  %117 = load i8*, i8** %4, align 8, !dbg !413
  %118 = icmp ne i8* %117, null, !dbg !415
  br i1 %118, label %119, label %121, !dbg !416

; <label>:119:                                    ; preds = %116
  %120 = load i8*, i8** %4, align 8, !dbg !417
  store i8* %120, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 5), align 8, !dbg !418
  br label %242, !dbg !419

; <label>:121:                                    ; preds = %116, %112
  %122 = load i8*, i8** %3, align 8, !dbg !420
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !422
  %124 = icmp eq i32 %123, 0, !dbg !423
  br i1 %124, label %125, label %130, !dbg !424

; <label>:125:                                    ; preds = %121
  %126 = load i8*, i8** %4, align 8, !dbg !425
  %127 = icmp ne i8* %126, null, !dbg !427
  br i1 %127, label %128, label %130, !dbg !428

; <label>:128:                                    ; preds = %125
  %129 = load i8*, i8** %4, align 8, !dbg !429
  store i8* %129, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 7), align 8, !dbg !430
  br label %241, !dbg !431

; <label>:130:                                    ; preds = %125, %121
  %131 = load i8*, i8** %3, align 8, !dbg !432
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !434
  %133 = icmp eq i32 %132, 0, !dbg !435
  br i1 %133, label %134, label %171, !dbg !436

; <label>:134:                                    ; preds = %130
  %135 = load i8*, i8** %4, align 8, !dbg !437
  %136 = icmp ne i8* %135, null, !dbg !439
  br i1 %136, label %137, label %171, !dbg !440

; <label>:137:                                    ; preds = %134
  call void @llvm.dbg.declare(metadata i8** %8, metadata !441, metadata !15), !dbg !443
  store i8* null, i8** %8, align 8, !dbg !443
  call void @llvm.dbg.declare(metadata i8** %9, metadata !444, metadata !15), !dbg !445
  store i8* null, i8** %9, align 8, !dbg !445
  %138 = load i8*, i8** %4, align 8, !dbg !446
  %139 = call i8* @strrchr(i8* %138, i32 64) #8, !dbg !448
  %140 = icmp ne i8* %139, null, !dbg !448
  br i1 %140, label %141, label %148, !dbg !449

; <label>:141:                                    ; preds = %137
  %142 = load i8*, i8** %4, align 8, !dbg !450
  %143 = call i8* @strrchr(i8* %142, i32 64) #8, !dbg !452
  store i8* %143, i8** %9, align 8, !dbg !453
  %144 = load i8*, i8** %9, align 8, !dbg !454
  store i8 0, i8* %144, align 1, !dbg !455
  %145 = load i8*, i8** %9, align 8, !dbg !456
  %146 = getelementptr inbounds i8, i8* %145, i32 1, !dbg !456
  store i8* %146, i8** %9, align 8, !dbg !456
  %147 = load i8*, i8** %4, align 8, !dbg !457
  store i8* %147, i8** %8, align 8, !dbg !458
  br label %150, !dbg !459

; <label>:148:                                    ; preds = %137
  %149 = load i8*, i8** %4, align 8, !dbg !460
  store i8* %149, i8** %9, align 8, !dbg !462
  br label %150

; <label>:150:                                    ; preds = %148, %141
  %151 = load i8*, i8** %9, align 8, !dbg !463
  %152 = icmp ne i8* %151, null, !dbg !463
  br i1 %152, label %153, label %159, !dbg !465

; <label>:153:                                    ; preds = %150
  %154 = load i8*, i8** %9, align 8, !dbg !466
  %155 = load i8, i8* %154, align 1, !dbg !468
  %156 = sext i8 %155 to i32, !dbg !468
  %157 = icmp eq i32 %156, 0, !dbg !469
  br i1 %157, label %158, label %159, !dbg !470

; <label>:158:                                    ; preds = %153
  store i8* null, i8** %9, align 8, !dbg !471
  br label %159, !dbg !472

; <label>:159:                                    ; preds = %158, %153, %150
  %160 = load i8*, i8** %8, align 8, !dbg !473
  %161 = icmp ne i8* %160, null, !dbg !473
  br i1 %161, label %162, label %168, !dbg !475

; <label>:162:                                    ; preds = %159
  %163 = load i8*, i8** %8, align 8, !dbg !476
  %164 = load i8, i8* %163, align 1, !dbg !478
  %165 = sext i8 %164 to i32, !dbg !478
  %166 = icmp eq i32 %165, 0, !dbg !479
  br i1 %166, label %167, label %168, !dbg !480

; <label>:167:                                    ; preds = %162
  store i8* null, i8** %8, align 8, !dbg !481
  br label %168, !dbg !482

; <label>:168:                                    ; preds = %167, %162, %159
  %169 = load i8*, i8** %9, align 8, !dbg !483
  store i8* %169, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 8), align 8, !dbg !484
  %170 = load i8*, i8** %8, align 8, !dbg !485
  store i8* %170, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 9), align 8, !dbg !486
  br label %240, !dbg !487

; <label>:171:                                    ; preds = %134, %130
  %172 = load i8*, i8** %3, align 8, !dbg !488
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !491
  %174 = icmp eq i32 %173, 0, !dbg !492
  br i1 %174, label %175, label %181, !dbg !493

; <label>:175:                                    ; preds = %171
  %176 = load i8*, i8** %4, align 8, !dbg !494
  %177 = icmp eq i8* %176, null, !dbg !496
  br i1 %177, label %178, label %181, !dbg !497

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !498
  %180 = or i32 %179, 2, !dbg !498
  store i32 %180, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !498
  br label %239, !dbg !499

; <label>:181:                                    ; preds = %175, %171
  %182 = load i8*, i8** %3, align 8, !dbg !500
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !502
  %184 = icmp eq i32 %183, 0, !dbg !503
  br i1 %184, label %185, label %191, !dbg !504

; <label>:185:                                    ; preds = %181
  %186 = load i8*, i8** %4, align 8, !dbg !505
  %187 = icmp eq i8* %186, null, !dbg !507
  br i1 %187, label %188, label %191, !dbg !508

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !509
  %190 = or i32 %189, 128, !dbg !509
  store i32 %190, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !509
  br label %238, !dbg !510

; <label>:191:                                    ; preds = %185, %181
  %192 = load i8*, i8** %3, align 8, !dbg !511
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)) #8, !dbg !513
  %194 = icmp eq i32 %193, 0, !dbg !514
  br i1 %194, label %195, label %201, !dbg !515

; <label>:195:                                    ; preds = %191
  %196 = load i8*, i8** %4, align 8, !dbg !516
  %197 = icmp eq i8* %196, null, !dbg !518
  br i1 %197, label %198, label %201, !dbg !519

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !520
  %200 = or i32 %199, 4, !dbg !520
  store i32 %200, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !520
  br label %237, !dbg !521

; <label>:201:                                    ; preds = %195, %191
  %202 = load i8*, i8** %3, align 8, !dbg !522
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #8, !dbg !524
  %204 = icmp eq i32 %203, 0, !dbg !525
  br i1 %204, label %205, label %211, !dbg !526

; <label>:205:                                    ; preds = %201
  %206 = load i8*, i8** %4, align 8, !dbg !527
  %207 = icmp eq i8* %206, null, !dbg !529
  br i1 %207, label %208, label %211, !dbg !530

; <label>:208:                                    ; preds = %205
  %209 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !531
  %210 = or i32 %209, 16, !dbg !531
  store i32 %210, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !531
  br label %236, !dbg !532

; <label>:211:                                    ; preds = %205, %201
  %212 = load i8*, i8** %3, align 8, !dbg !533
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #8, !dbg !535
  %214 = icmp eq i32 %213, 0, !dbg !536
  br i1 %214, label %215, label %221, !dbg !537

; <label>:215:                                    ; preds = %211
  %216 = load i8*, i8** %4, align 8, !dbg !538
  %217 = icmp eq i8* %216, null, !dbg !540
  br i1 %217, label %218, label %221, !dbg !541

; <label>:218:                                    ; preds = %215
  %219 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !542
  %220 = or i32 %219, 32, !dbg !542
  store i32 %220, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !542
  br label %235, !dbg !543

; <label>:221:                                    ; preds = %215, %211
  %222 = load i8*, i8** %3, align 8, !dbg !544
  %223 = call i32 @strcmp(i8* %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #8, !dbg !546
  %224 = icmp eq i32 %223, 0, !dbg !547
  br i1 %224, label %225, label %231, !dbg !548

; <label>:225:                                    ; preds = %221
  %226 = load i8*, i8** %4, align 8, !dbg !549
  %227 = icmp eq i8* %226, null, !dbg !551
  br i1 %227, label %228, label %231, !dbg !552

; <label>:228:                                    ; preds = %225
  %229 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !553
  %230 = or i32 %229, 64, !dbg !553
  store i32 %230, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 6), align 8, !dbg !553
  br label %234, !dbg !554

; <label>:231:                                    ; preds = %225, %221
  %232 = load i8*, i8** %2, align 8, !dbg !555
  %233 = load i32, i32* %7, align 4, !dbg !557
  call void (i32, i8*, ...) @errlogx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* %232, i32 %233), !dbg !558
  br label %234

; <label>:234:                                    ; preds = %231, %228
  br label %235

; <label>:235:                                    ; preds = %234, %218
  br label %236

; <label>:236:                                    ; preds = %235, %208
  br label %237

; <label>:237:                                    ; preds = %236, %198
  br label %238

; <label>:238:                                    ; preds = %237, %188
  br label %239

; <label>:239:                                    ; preds = %238, %178
  br label %240

; <label>:240:                                    ; preds = %239, %168
  br label %241

; <label>:241:                                    ; preds = %240, %128
  br label %242

; <label>:242:                                    ; preds = %241, %119
  br label %243

; <label>:243:                                    ; preds = %242, %110
  br label %244

; <label>:244:                                    ; preds = %243, %101
  br label %245

; <label>:245:                                    ; preds = %244, %92
  br label %246

; <label>:246:                                    ; preds = %245, %82
  br label %247

; <label>:247:                                    ; preds = %246, %73
  br label %22, !dbg !559, !llvm.loop !332

; <label>:248:                                    ; preds = %32, %22
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !561
  %250 = call i32 @fclose(%struct._IO_FILE* %249), !dbg !562
  br label %251, !dbg !563

; <label>:251:                                    ; preds = %248, %18
  ret void, !dbg !564
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line4-conf.o.i", directory: "/home/lichi/Desktop/dma/task1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!9 = distinct !DISubprogram(name: "trim_line", scope: !10, file: !10, line: 54, type: !11, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "conf.c", directory: "/home/lichi/Desktop/dma/task1")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!14 = !DILocalVariable(name: "line", arg: 1, scope: !9, file: !10, line: 54, type: !13)
!15 = !DIExpression()
!16 = !DILocation(line: 54, column: 17, scope: !9)
!17 = !DILocalVariable(name: "linelen", scope: !9, file: !10, line: 56, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 216, baseType: !20)
!19 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dma/task1")
!20 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 56, column: 9, scope: !9)
!22 = !DILocalVariable(name: "p", scope: !9, file: !10, line: 57, type: !13)
!23 = !DILocation(line: 57, column: 8, scope: !9)
!24 = !DILocation(line: 59, column: 18, scope: !25)
!25 = distinct !DILexicalBlock(scope: !9, file: !10, line: 59, column: 6)
!26 = !DILocation(line: 59, column: 11, scope: !25)
!27 = !DILocation(line: 59, column: 9, scope: !25)
!28 = !DILocation(line: 59, column: 6, scope: !9)
!29 = !DILocation(line: 60, column: 4, scope: !25)
!30 = !DILocation(line: 60, column: 6, scope: !25)
!31 = !DILocation(line: 60, column: 3, scope: !25)
!32 = !DILocation(line: 63, column: 19, scope: !9)
!33 = !DILocation(line: 63, column: 12, scope: !9)
!34 = !DILocation(line: 63, column: 10, scope: !9)
!35 = !DILocation(line: 64, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !9, file: !10, line: 64, column: 6)
!37 = !DILocation(line: 64, column: 14, scope: !36)
!38 = !DILocation(line: 64, column: 6, scope: !9)
!39 = !DILocation(line: 65, column: 8, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !10, line: 65, column: 7)
!41 = distinct !DILexicalBlock(scope: !36, file: !10, line: 64, column: 22)
!42 = !DILocation(line: 65, column: 16, scope: !40)
!43 = !DILocation(line: 65, column: 21, scope: !40)
!44 = !DILocation(line: 65, column: 7, scope: !41)
!45 = !DILocation(line: 66, column: 4, scope: !46)
!46 = distinct !DILexicalBlock(scope: !40, file: !10, line: 65, column: 29)
!47 = !DILocation(line: 67, column: 4, scope: !46)
!48 = !DILocation(line: 69, column: 12, scope: !41)
!49 = !DILocation(line: 69, column: 17, scope: !41)
!50 = !DILocation(line: 69, column: 23, scope: !41)
!51 = !DILocation(line: 69, column: 30, scope: !41)
!52 = !DILocation(line: 69, column: 38, scope: !41)
!53 = !DILocation(line: 69, column: 3, scope: !41)
!54 = !DILocation(line: 70, column: 3, scope: !41)
!55 = !DILocation(line: 70, column: 11, scope: !41)
!56 = !DILocation(line: 71, column: 2, scope: !41)
!57 = !DILocation(line: 72, column: 1, scope: !9)
!58 = distinct !DISubprogram(name: "parse_authfile", scope: !10, file: !10, line: 94, type: !59, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!63 = !DILocalVariable(name: "path", arg: 1, scope: !58, file: !10, line: 94, type: !61)
!64 = !DILocation(line: 94, column: 28, scope: !58)
!65 = !DILocalVariable(name: "line", scope: !58, file: !10, line: 96, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 2048)
!69 = !DILocation(line: 96, column: 7, scope: !58)
!70 = !DILocalVariable(name: "au", scope: !58, file: !10, line: 97, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "authuser", file: !73, line: 143, size: 256, align: 64, elements: !74)
!73 = !DIFile(filename: "dma.h", directory: "/home/lichi/Desktop/dma/task1")
!74 = !{!75, !79, !80, !81}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !73, line: 144, baseType: !76, size: 64, align: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !72, file: !73, line: 144, size: 64, align: 64, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sle_next", scope: !76, file: !73, line: 144, baseType: !71, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !72, file: !73, line: 145, baseType: !13, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !72, file: !73, line: 146, baseType: !13, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !72, file: !73, line: 147, baseType: !13, size: 64, align: 64, offset: 192)
!82 = !DILocation(line: 97, column: 19, scope: !58)
!83 = !DILocalVariable(name: "a", scope: !58, file: !10, line: 98, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !86, line: 48, baseType: !87)
!86 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dma/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !88, line: 241, size: 1728, align: 64, elements: !89)
!88 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dma/task1")
!89 = !{!90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !111, !112, !113, !114, !118, !120, !122, !126, !129, !131, !132, !133, !134, !135, !136, !137}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !87, file: !88, line: 242, baseType: !91, size: 32, align: 32)
!91 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !87, file: !88, line: 247, baseType: !13, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !87, file: !88, line: 248, baseType: !13, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !87, file: !88, line: 249, baseType: !13, size: 64, align: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !87, file: !88, line: 250, baseType: !13, size: 64, align: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !87, file: !88, line: 251, baseType: !13, size: 64, align: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !87, file: !88, line: 252, baseType: !13, size: 64, align: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !87, file: !88, line: 253, baseType: !13, size: 64, align: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !87, file: !88, line: 254, baseType: !13, size: 64, align: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !87, file: !88, line: 256, baseType: !13, size: 64, align: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !87, file: !88, line: 257, baseType: !13, size: 64, align: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !87, file: !88, line: 258, baseType: !13, size: 64, align: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !87, file: !88, line: 260, baseType: !104, size: 64, align: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !88, line: 156, size: 192, align: 64, elements: !106)
!106 = !{!107, !108, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !105, file: !88, line: 157, baseType: !104, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !105, file: !88, line: 158, baseType: !109, size: 64, align: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !105, file: !88, line: 162, baseType: !91, size: 32, align: 32, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !87, file: !88, line: 262, baseType: !109, size: 64, align: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !87, file: !88, line: 264, baseType: !91, size: 32, align: 32, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !87, file: !88, line: 268, baseType: !91, size: 32, align: 32, offset: 928)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !87, file: !88, line: 270, baseType: !115, size: 64, align: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 131, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dma/task1")
!117 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !87, file: !88, line: 274, baseType: !119, size: 16, align: 16, offset: 1024)
!119 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !87, file: !88, line: 275, baseType: !121, size: 8, align: 8, offset: 1040)
!121 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !87, file: !88, line: 276, baseType: !123, size: 8, align: 8, offset: 1048)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 1)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !87, file: !88, line: 280, baseType: !127, size: 64, align: 64, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !88, line: 150, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !87, file: !88, line: 289, baseType: !130, size: 64, align: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 132, baseType: !117)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !87, file: !88, line: 297, baseType: !5, size: 64, align: 64, offset: 1216)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !87, file: !88, line: 298, baseType: !5, size: 64, align: 64, offset: 1280)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !87, file: !88, line: 299, baseType: !5, size: 64, align: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !87, file: !88, line: 300, baseType: !5, size: 64, align: 64, offset: 1408)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !87, file: !88, line: 302, baseType: !18, size: 64, align: 64, offset: 1472)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !87, file: !88, line: 303, baseType: !91, size: 32, align: 32, offset: 1536)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !87, file: !88, line: 305, baseType: !138, size: 160, align: 8, offset: 1568)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, align: 8, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 20)
!141 = !DILocation(line: 98, column: 8, scope: !58)
!142 = !DILocalVariable(name: "data", scope: !58, file: !10, line: 99, type: !13)
!143 = !DILocation(line: 99, column: 8, scope: !58)
!144 = !DILocalVariable(name: "lineno", scope: !58, file: !10, line: 100, type: !91)
!145 = !DILocation(line: 100, column: 6, scope: !58)
!146 = !DILocation(line: 102, column: 12, scope: !58)
!147 = !DILocation(line: 102, column: 6, scope: !58)
!148 = !DILocation(line: 102, column: 4, scope: !58)
!149 = !DILocation(line: 103, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !58, file: !10, line: 103, column: 6)
!151 = !DILocation(line: 103, column: 8, scope: !150)
!152 = !DILocation(line: 103, column: 6, scope: !58)
!153 = !DILocation(line: 104, column: 44, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !10, line: 103, column: 16)
!155 = !DILocation(line: 104, column: 3, scope: !154)
!156 = !DILocation(line: 106, column: 2, scope: !154)
!157 = !DILocation(line: 108, column: 2, scope: !58)
!158 = !DILocation(line: 108, column: 15, scope: !159)
!159 = !DILexicalBlockFile(scope: !58, file: !10, discriminator: 1)
!160 = !DILocation(line: 108, column: 10, scope: !159)
!161 = !DILocation(line: 108, column: 9, scope: !159)
!162 = !DILocation(line: 108, column: 2, scope: !159)
!163 = !DILocation(line: 109, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !10, line: 109, column: 7)
!165 = distinct !DILexicalBlock(scope: !58, file: !10, line: 108, column: 19)
!166 = !DILocation(line: 109, column: 33, scope: !164)
!167 = !DILocation(line: 109, column: 7, scope: !164)
!168 = !DILocation(line: 109, column: 36, scope: !164)
!169 = !DILocation(line: 109, column: 7, scope: !165)
!170 = !DILocation(line: 110, column: 4, scope: !164)
!171 = !DILocation(line: 111, column: 9, scope: !165)
!172 = !DILocation(line: 113, column: 9, scope: !165)
!173 = !DILocation(line: 113, column: 3, scope: !165)
!174 = !DILocation(line: 116, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !165, file: !10, line: 116, column: 7)
!176 = !DILocation(line: 116, column: 13, scope: !175)
!177 = !DILocation(line: 116, column: 7, scope: !165)
!178 = !DILocation(line: 117, column: 4, scope: !175)
!179 = distinct !{!179, !157}
!180 = !DILocation(line: 119, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !165, file: !10, line: 119, column: 7)
!182 = !DILocation(line: 119, column: 13, scope: !181)
!183 = !DILocation(line: 119, column: 7, scope: !165)
!184 = !DILocation(line: 120, column: 4, scope: !181)
!185 = !DILocation(line: 122, column: 8, scope: !165)
!186 = !DILocation(line: 122, column: 6, scope: !165)
!187 = !DILocation(line: 123, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !165, file: !10, line: 123, column: 7)
!189 = !DILocation(line: 123, column: 10, scope: !188)
!190 = !DILocation(line: 123, column: 7, scope: !165)
!191 = !DILocation(line: 124, column: 4, scope: !188)
!192 = !DILocation(line: 126, column: 17, scope: !165)
!193 = !DILocation(line: 126, column: 10, scope: !165)
!194 = !DILocation(line: 126, column: 8, scope: !165)
!195 = !DILocation(line: 127, column: 15, scope: !165)
!196 = !DILocation(line: 127, column: 3, scope: !165)
!197 = !DILocation(line: 127, column: 7, scope: !165)
!198 = !DILocation(line: 127, column: 13, scope: !165)
!199 = !DILocation(line: 128, column: 14, scope: !165)
!200 = !DILocation(line: 128, column: 3, scope: !165)
!201 = !DILocation(line: 128, column: 7, scope: !165)
!202 = !DILocation(line: 128, column: 12, scope: !165)
!203 = !DILocation(line: 129, column: 18, scope: !165)
!204 = !DILocation(line: 129, column: 3, scope: !165)
!205 = !DILocation(line: 129, column: 7, scope: !165)
!206 = !DILocation(line: 129, column: 16, scope: !165)
!207 = !DILocation(line: 131, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !165, file: !10, line: 131, column: 7)
!209 = !DILocation(line: 131, column: 11, scope: !208)
!210 = !DILocation(line: 131, column: 17, scope: !208)
!211 = !DILocation(line: 131, column: 24, scope: !208)
!212 = !DILocation(line: 132, column: 7, scope: !208)
!213 = !DILocation(line: 132, column: 11, scope: !208)
!214 = !DILocation(line: 132, column: 16, scope: !208)
!215 = !DILocation(line: 132, column: 23, scope: !208)
!216 = !DILocation(line: 133, column: 7, scope: !208)
!217 = !DILocation(line: 133, column: 11, scope: !208)
!218 = !DILocation(line: 133, column: 20, scope: !208)
!219 = !DILocation(line: 131, column: 7, scope: !220)
!220 = !DILexicalBlockFile(scope: !165, file: !10, discriminator: 1)
!221 = !DILocation(line: 135, column: 5, scope: !222)
!222 = distinct !DILexicalBlock(scope: !208, file: !10, line: 133, column: 28)
!223 = !DILocation(line: 135, column: 11, scope: !222)
!224 = !DILocation(line: 134, column: 4, scope: !222)
!225 = !DILocation(line: 137, column: 3, scope: !222)
!226 = !DILocation(line: 139, column: 2, scope: !165)
!227 = distinct !{!227, !226}
!228 = !DILocation(line: 139, column: 5, scope: !229)
!229 = !DILexicalBlockFile(scope: !230, file: !10, discriminator: 1)
!230 = distinct !DILexicalBlock(scope: !165, file: !10, line: 139, column: 5)
!231 = !DILocation(line: 139, column: 2, scope: !229)
!232 = !DILocation(line: 139, column: 3, scope: !229)
!233 = !DILocation(line: 139, column: 12, scope: !229)
!234 = !DILocation(line: 139, column: 15, scope: !229)
!235 = !DILocation(line: 108, column: 2, scope: !236)
!236 = !DILexicalBlockFile(scope: !58, file: !10, discriminator: 2)
!237 = !DILocation(line: 142, column: 9, scope: !58)
!238 = !DILocation(line: 142, column: 2, scope: !58)
!239 = !DILocation(line: 143, column: 1, scope: !58)
!240 = distinct !DISubprogram(name: "chomp", scope: !10, file: !10, line: 75, type: !11, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!241 = !DILocalVariable(name: "str", arg: 1, scope: !240, file: !10, line: 75, type: !13)
!242 = !DILocation(line: 75, column: 13, scope: !240)
!243 = !DILocalVariable(name: "len", scope: !240, file: !10, line: 77, type: !18)
!244 = !DILocation(line: 77, column: 9, scope: !240)
!245 = !DILocation(line: 77, column: 22, scope: !240)
!246 = !DILocation(line: 77, column: 15, scope: !240)
!247 = !DILocation(line: 79, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !240, file: !10, line: 79, column: 6)
!249 = !DILocation(line: 79, column: 10, scope: !248)
!250 = !DILocation(line: 79, column: 6, scope: !240)
!251 = !DILocation(line: 80, column: 3, scope: !248)
!252 = !DILocation(line: 81, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !240, file: !10, line: 81, column: 6)
!254 = !DILocation(line: 81, column: 14, scope: !253)
!255 = !DILocation(line: 81, column: 6, scope: !253)
!256 = !DILocation(line: 81, column: 19, scope: !253)
!257 = !DILocation(line: 81, column: 6, scope: !240)
!258 = !DILocation(line: 82, column: 7, scope: !253)
!259 = !DILocation(line: 82, column: 11, scope: !253)
!260 = !DILocation(line: 82, column: 3, scope: !253)
!261 = !DILocation(line: 82, column: 16, scope: !253)
!262 = !DILocation(line: 83, column: 1, scope: !240)
!263 = distinct !DISubprogram(name: "parse_conf", scope: !10, file: !10, line: 150, type: !59, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!264 = !DILocalVariable(name: "config_path", arg: 1, scope: !263, file: !10, line: 150, type: !61)
!265 = !DILocation(line: 150, column: 24, scope: !263)
!266 = !DILocalVariable(name: "word", scope: !263, file: !10, line: 152, type: !13)
!267 = !DILocation(line: 152, column: 8, scope: !263)
!268 = !DILocalVariable(name: "data", scope: !263, file: !10, line: 153, type: !13)
!269 = !DILocation(line: 153, column: 8, scope: !263)
!270 = !DILocalVariable(name: "conf", scope: !263, file: !10, line: 154, type: !84)
!271 = !DILocation(line: 154, column: 8, scope: !263)
!272 = !DILocalVariable(name: "line", scope: !263, file: !10, line: 155, type: !66)
!273 = !DILocation(line: 155, column: 7, scope: !263)
!274 = !DILocalVariable(name: "lineno", scope: !263, file: !10, line: 156, type: !91)
!275 = !DILocation(line: 156, column: 6, scope: !263)
!276 = !DILocation(line: 158, column: 15, scope: !263)
!277 = !DILocation(line: 158, column: 9, scope: !263)
!278 = !DILocation(line: 158, column: 7, scope: !263)
!279 = !DILocation(line: 159, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !263, file: !10, line: 159, column: 6)
!281 = !DILocation(line: 159, column: 11, scope: !280)
!282 = !DILocation(line: 159, column: 6, scope: !263)
!283 = !DILocation(line: 161, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !10, line: 161, column: 6)
!285 = distinct !DILexicalBlock(scope: !280, file: !10, line: 159, column: 19)
!286 = !DILocation(line: 161, column: 7, scope: !284)
!287 = !DILocation(line: 161, column: 12, scope: !284)
!288 = !DILocation(line: 161, column: 6, scope: !285)
!289 = !DILocation(line: 162, column: 4, scope: !284)
!290 = !DILocation(line: 163, column: 41, scope: !285)
!291 = !DILocation(line: 163, column: 3, scope: !285)
!292 = !DILocation(line: 165, column: 2, scope: !285)
!293 = !DILocation(line: 167, column: 2, scope: !263)
!294 = !DILocation(line: 167, column: 15, scope: !295)
!295 = !DILexicalBlockFile(scope: !263, file: !10, discriminator: 1)
!296 = !DILocation(line: 167, column: 10, scope: !295)
!297 = !DILocation(line: 167, column: 9, scope: !295)
!298 = !DILocation(line: 167, column: 2, scope: !295)
!299 = !DILocation(line: 168, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !10, line: 168, column: 7)
!301 = distinct !DILexicalBlock(scope: !263, file: !10, line: 167, column: 22)
!302 = !DILocation(line: 168, column: 33, scope: !300)
!303 = !DILocation(line: 168, column: 7, scope: !300)
!304 = !DILocation(line: 168, column: 39, scope: !300)
!305 = !DILocation(line: 168, column: 7, scope: !301)
!306 = !DILocation(line: 169, column: 4, scope: !300)
!307 = !DILocation(line: 170, column: 9, scope: !301)
!308 = !DILocation(line: 172, column: 9, scope: !301)
!309 = !DILocation(line: 172, column: 3, scope: !301)
!310 = !DILocation(line: 175, column: 14, scope: !311)
!311 = distinct !DILexicalBlock(scope: !301, file: !10, line: 175, column: 7)
!312 = !DILocation(line: 175, column: 7, scope: !311)
!313 = !DILocation(line: 175, column: 7, scope: !301)
!314 = !DILocation(line: 176, column: 12, scope: !311)
!315 = !DILocation(line: 176, column: 5, scope: !311)
!316 = !DILocation(line: 176, column: 23, scope: !311)
!317 = !DILocation(line: 176, column: 4, scope: !311)
!318 = !DILocation(line: 178, column: 10, scope: !301)
!319 = !DILocation(line: 178, column: 8, scope: !301)
!320 = !DILocation(line: 179, column: 10, scope: !301)
!321 = !DILocation(line: 179, column: 8, scope: !301)
!322 = !DILocation(line: 182, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !301, file: !10, line: 182, column: 7)
!324 = !DILocation(line: 182, column: 12, scope: !323)
!325 = !DILocation(line: 182, column: 19, scope: !323)
!326 = !DILocation(line: 182, column: 23, scope: !327)
!327 = !DILexicalBlockFile(scope: !323, file: !10, discriminator: 1)
!328 = !DILocation(line: 182, column: 22, scope: !327)
!329 = !DILocation(line: 182, column: 28, scope: !327)
!330 = !DILocation(line: 182, column: 7, scope: !327)
!331 = !DILocation(line: 183, column: 4, scope: !323)
!332 = distinct !{!332, !293}
!333 = !DILocation(line: 185, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !301, file: !10, line: 185, column: 7)
!335 = !DILocation(line: 185, column: 12, scope: !334)
!336 = !DILocation(line: 185, column: 19, scope: !334)
!337 = !DILocation(line: 185, column: 23, scope: !338)
!338 = !DILexicalBlockFile(scope: !334, file: !10, discriminator: 1)
!339 = !DILocation(line: 185, column: 22, scope: !338)
!340 = !DILocation(line: 185, column: 28, scope: !338)
!341 = !DILocation(line: 185, column: 7, scope: !338)
!342 = !DILocation(line: 186, column: 18, scope: !334)
!343 = !DILocation(line: 186, column: 11, scope: !334)
!344 = !DILocation(line: 186, column: 9, scope: !334)
!345 = !DILocation(line: 186, column: 4, scope: !334)
!346 = !DILocation(line: 188, column: 9, scope: !334)
!347 = !DILocation(line: 190, column: 14, scope: !348)
!348 = distinct !DILexicalBlock(scope: !301, file: !10, line: 190, column: 7)
!349 = !DILocation(line: 190, column: 7, scope: !348)
!350 = !DILocation(line: 190, column: 33, scope: !348)
!351 = !DILocation(line: 190, column: 38, scope: !348)
!352 = !DILocation(line: 190, column: 41, scope: !353)
!353 = !DILexicalBlockFile(scope: !348, file: !10, discriminator: 1)
!354 = !DILocation(line: 190, column: 46, scope: !353)
!355 = !DILocation(line: 190, column: 7, scope: !353)
!356 = !DILocation(line: 191, column: 23, scope: !348)
!357 = !DILocation(line: 191, column: 21, scope: !348)
!358 = !DILocation(line: 191, column: 4, scope: !348)
!359 = !DILocation(line: 192, column: 19, scope: !360)
!360 = distinct !DILexicalBlock(scope: !348, file: !10, line: 192, column: 12)
!361 = !DILocation(line: 192, column: 12, scope: !360)
!362 = !DILocation(line: 192, column: 33, scope: !360)
!363 = !DILocation(line: 192, column: 38, scope: !360)
!364 = !DILocation(line: 192, column: 41, scope: !365)
!365 = !DILexicalBlockFile(scope: !360, file: !10, discriminator: 1)
!366 = !DILocation(line: 192, column: 46, scope: !365)
!367 = !DILocation(line: 192, column: 12, scope: !365)
!368 = !DILocation(line: 193, column: 23, scope: !360)
!369 = !DILocation(line: 193, column: 18, scope: !360)
!370 = !DILocation(line: 193, column: 16, scope: !360)
!371 = !DILocation(line: 193, column: 4, scope: !360)
!372 = !DILocation(line: 194, column: 19, scope: !373)
!373 = distinct !DILexicalBlock(scope: !360, file: !10, line: 194, column: 12)
!374 = !DILocation(line: 194, column: 12, scope: !373)
!375 = !DILocation(line: 194, column: 36, scope: !373)
!376 = !DILocation(line: 194, column: 41, scope: !373)
!377 = !DILocation(line: 194, column: 44, scope: !378)
!378 = !DILexicalBlockFile(scope: !373, file: !10, discriminator: 1)
!379 = !DILocation(line: 194, column: 49, scope: !378)
!380 = !DILocation(line: 194, column: 12, scope: !378)
!381 = !DILocation(line: 195, column: 21, scope: !373)
!382 = !DILocation(line: 195, column: 19, scope: !373)
!383 = !DILocation(line: 195, column: 4, scope: !373)
!384 = !DILocation(line: 196, column: 19, scope: !385)
!385 = distinct !DILexicalBlock(scope: !373, file: !10, line: 196, column: 12)
!386 = !DILocation(line: 196, column: 12, scope: !385)
!387 = !DILocation(line: 196, column: 37, scope: !385)
!388 = !DILocation(line: 196, column: 42, scope: !385)
!389 = !DILocation(line: 196, column: 45, scope: !390)
!390 = !DILexicalBlockFile(scope: !385, file: !10, discriminator: 1)
!391 = !DILocation(line: 196, column: 50, scope: !390)
!392 = !DILocation(line: 196, column: 12, scope: !390)
!393 = !DILocation(line: 197, column: 22, scope: !385)
!394 = !DILocation(line: 197, column: 20, scope: !385)
!395 = !DILocation(line: 197, column: 4, scope: !385)
!396 = !DILocation(line: 198, column: 19, scope: !397)
!397 = distinct !DILexicalBlock(scope: !385, file: !10, line: 198, column: 12)
!398 = !DILocation(line: 198, column: 12, scope: !397)
!399 = !DILocation(line: 198, column: 37, scope: !397)
!400 = !DILocation(line: 198, column: 42, scope: !397)
!401 = !DILocation(line: 198, column: 45, scope: !402)
!402 = !DILexicalBlockFile(scope: !397, file: !10, discriminator: 1)
!403 = !DILocation(line: 198, column: 50, scope: !402)
!404 = !DILocation(line: 198, column: 12, scope: !402)
!405 = !DILocation(line: 199, column: 21, scope: !397)
!406 = !DILocation(line: 199, column: 19, scope: !397)
!407 = !DILocation(line: 199, column: 4, scope: !397)
!408 = !DILocation(line: 200, column: 19, scope: !409)
!409 = distinct !DILexicalBlock(scope: !397, file: !10, line: 200, column: 12)
!410 = !DILocation(line: 200, column: 12, scope: !409)
!411 = !DILocation(line: 200, column: 37, scope: !409)
!412 = !DILocation(line: 200, column: 42, scope: !409)
!413 = !DILocation(line: 200, column: 45, scope: !414)
!414 = !DILexicalBlockFile(scope: !409, file: !10, discriminator: 1)
!415 = !DILocation(line: 200, column: 50, scope: !414)
!416 = !DILocation(line: 200, column: 12, scope: !414)
!417 = !DILocation(line: 201, column: 22, scope: !409)
!418 = !DILocation(line: 201, column: 20, scope: !409)
!419 = !DILocation(line: 201, column: 4, scope: !409)
!420 = !DILocation(line: 202, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !409, file: !10, line: 202, column: 12)
!422 = !DILocation(line: 202, column: 12, scope: !421)
!423 = !DILocation(line: 202, column: 37, scope: !421)
!424 = !DILocation(line: 202, column: 42, scope: !421)
!425 = !DILocation(line: 202, column: 45, scope: !426)
!426 = !DILexicalBlockFile(scope: !421, file: !10, discriminator: 1)
!427 = !DILocation(line: 202, column: 50, scope: !426)
!428 = !DILocation(line: 202, column: 12, scope: !426)
!429 = !DILocation(line: 203, column: 22, scope: !421)
!430 = !DILocation(line: 203, column: 20, scope: !421)
!431 = !DILocation(line: 203, column: 4, scope: !421)
!432 = !DILocation(line: 204, column: 19, scope: !433)
!433 = distinct !DILexicalBlock(scope: !421, file: !10, line: 204, column: 12)
!434 = !DILocation(line: 204, column: 12, scope: !433)
!435 = !DILocation(line: 204, column: 39, scope: !433)
!436 = !DILocation(line: 204, column: 44, scope: !433)
!437 = !DILocation(line: 204, column: 47, scope: !438)
!438 = !DILexicalBlockFile(scope: !433, file: !10, discriminator: 1)
!439 = !DILocation(line: 204, column: 52, scope: !438)
!440 = !DILocation(line: 204, column: 12, scope: !438)
!441 = !DILocalVariable(name: "user", scope: !442, file: !10, line: 205, type: !13)
!442 = distinct !DILexicalBlock(scope: !433, file: !10, line: 204, column: 60)
!443 = !DILocation(line: 205, column: 10, scope: !442)
!444 = !DILocalVariable(name: "host", scope: !442, file: !10, line: 205, type: !13)
!445 = !DILocation(line: 205, column: 23, scope: !442)
!446 = !DILocation(line: 206, column: 16, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !10, line: 206, column: 8)
!448 = !DILocation(line: 206, column: 8, scope: !447)
!449 = !DILocation(line: 206, column: 8, scope: !442)
!450 = !DILocation(line: 207, column: 20, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !10, line: 206, column: 28)
!452 = !DILocation(line: 207, column: 12, scope: !451)
!453 = !DILocation(line: 207, column: 10, scope: !451)
!454 = !DILocation(line: 208, column: 6, scope: !451)
!455 = !DILocation(line: 208, column: 11, scope: !451)
!456 = !DILocation(line: 209, column: 9, scope: !451)
!457 = !DILocation(line: 210, column: 12, scope: !451)
!458 = !DILocation(line: 210, column: 10, scope: !451)
!459 = !DILocation(line: 211, column: 4, scope: !451)
!460 = !DILocation(line: 212, column: 12, scope: !461)
!461 = distinct !DILexicalBlock(scope: !447, file: !10, line: 211, column: 11)
!462 = !DILocation(line: 212, column: 10, scope: !461)
!463 = !DILocation(line: 214, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !442, file: !10, line: 214, column: 9)
!465 = !DILocation(line: 214, column: 14, scope: !464)
!466 = !DILocation(line: 214, column: 18, scope: !467)
!467 = !DILexicalBlockFile(scope: !464, file: !10, discriminator: 1)
!468 = !DILocation(line: 214, column: 17, scope: !467)
!469 = !DILocation(line: 214, column: 23, scope: !467)
!470 = !DILocation(line: 214, column: 9, scope: !467)
!471 = !DILocation(line: 215, column: 10, scope: !464)
!472 = !DILocation(line: 215, column: 5, scope: !464)
!473 = !DILocation(line: 216, column: 29, scope: !474)
!474 = distinct !DILexicalBlock(scope: !442, file: !10, line: 216, column: 29)
!475 = !DILocation(line: 216, column: 34, scope: !474)
!476 = !DILocation(line: 216, column: 38, scope: !477)
!477 = !DILexicalBlockFile(scope: !474, file: !10, discriminator: 1)
!478 = !DILocation(line: 216, column: 37, scope: !477)
!479 = !DILocation(line: 216, column: 43, scope: !477)
!480 = !DILocation(line: 216, column: 29, scope: !477)
!481 = !DILocation(line: 217, column: 38, scope: !474)
!482 = !DILocation(line: 217, column: 33, scope: !474)
!483 = !DILocation(line: 218, column: 29, scope: !442)
!484 = !DILocation(line: 218, column: 27, scope: !442)
!485 = !DILocation(line: 219, column: 29, scope: !442)
!486 = !DILocation(line: 219, column: 27, scope: !442)
!487 = !DILocation(line: 220, column: 3, scope: !442)
!488 = !DILocation(line: 220, column: 21, scope: !489)
!489 = !DILexicalBlockFile(scope: !490, file: !10, discriminator: 1)
!490 = distinct !DILexicalBlock(scope: !433, file: !10, line: 220, column: 14)
!491 = !DILocation(line: 220, column: 14, scope: !489)
!492 = !DILocation(line: 220, column: 39, scope: !489)
!493 = !DILocation(line: 220, column: 44, scope: !489)
!494 = !DILocation(line: 220, column: 47, scope: !495)
!495 = !DILexicalBlockFile(scope: !490, file: !10, discriminator: 2)
!496 = !DILocation(line: 220, column: 52, scope: !495)
!497 = !DILocation(line: 220, column: 14, scope: !495)
!498 = !DILocation(line: 221, column: 20, scope: !490)
!499 = !DILocation(line: 221, column: 4, scope: !490)
!500 = !DILocation(line: 222, column: 19, scope: !501)
!501 = distinct !DILexicalBlock(scope: !490, file: !10, line: 222, column: 12)
!502 = !DILocation(line: 222, column: 12, scope: !501)
!503 = !DILocation(line: 222, column: 46, scope: !501)
!504 = !DILocation(line: 222, column: 51, scope: !501)
!505 = !DILocation(line: 222, column: 54, scope: !506)
!506 = !DILexicalBlockFile(scope: !501, file: !10, discriminator: 1)
!507 = !DILocation(line: 222, column: 59, scope: !506)
!508 = !DILocation(line: 222, column: 12, scope: !506)
!509 = !DILocation(line: 223, column: 20, scope: !501)
!510 = !DILocation(line: 223, column: 4, scope: !501)
!511 = !DILocation(line: 224, column: 19, scope: !512)
!512 = distinct !DILexicalBlock(scope: !501, file: !10, line: 224, column: 12)
!513 = !DILocation(line: 224, column: 12, scope: !512)
!514 = !DILocation(line: 224, column: 43, scope: !512)
!515 = !DILocation(line: 224, column: 48, scope: !512)
!516 = !DILocation(line: 224, column: 51, scope: !517)
!517 = !DILexicalBlockFile(scope: !512, file: !10, discriminator: 1)
!518 = !DILocation(line: 224, column: 56, scope: !517)
!519 = !DILocation(line: 224, column: 12, scope: !517)
!520 = !DILocation(line: 225, column: 20, scope: !512)
!521 = !DILocation(line: 225, column: 4, scope: !512)
!522 = !DILocation(line: 226, column: 19, scope: !523)
!523 = distinct !DILexicalBlock(scope: !512, file: !10, line: 226, column: 12)
!524 = !DILocation(line: 226, column: 12, scope: !523)
!525 = !DILocation(line: 226, column: 34, scope: !523)
!526 = !DILocation(line: 226, column: 39, scope: !523)
!527 = !DILocation(line: 226, column: 42, scope: !528)
!528 = !DILexicalBlockFile(scope: !523, file: !10, discriminator: 1)
!529 = !DILocation(line: 226, column: 47, scope: !528)
!530 = !DILocation(line: 226, column: 12, scope: !528)
!531 = !DILocation(line: 227, column: 20, scope: !523)
!532 = !DILocation(line: 227, column: 4, scope: !523)
!533 = !DILocation(line: 228, column: 19, scope: !534)
!534 = distinct !DILexicalBlock(scope: !523, file: !10, line: 228, column: 12)
!535 = !DILocation(line: 228, column: 12, scope: !534)
!536 = !DILocation(line: 228, column: 37, scope: !534)
!537 = !DILocation(line: 228, column: 42, scope: !534)
!538 = !DILocation(line: 228, column: 45, scope: !539)
!539 = !DILexicalBlockFile(scope: !534, file: !10, discriminator: 1)
!540 = !DILocation(line: 228, column: 50, scope: !539)
!541 = !DILocation(line: 228, column: 12, scope: !539)
!542 = !DILocation(line: 229, column: 20, scope: !534)
!543 = !DILocation(line: 229, column: 4, scope: !534)
!544 = !DILocation(line: 230, column: 19, scope: !545)
!545 = distinct !DILexicalBlock(scope: !534, file: !10, line: 230, column: 12)
!546 = !DILocation(line: 230, column: 12, scope: !545)
!547 = !DILocation(line: 230, column: 39, scope: !545)
!548 = !DILocation(line: 230, column: 44, scope: !545)
!549 = !DILocation(line: 230, column: 47, scope: !550)
!550 = !DILexicalBlockFile(scope: !545, file: !10, discriminator: 1)
!551 = !DILocation(line: 230, column: 52, scope: !550)
!552 = !DILocation(line: 230, column: 12, scope: !550)
!553 = !DILocation(line: 231, column: 20, scope: !545)
!554 = !DILocation(line: 231, column: 4, scope: !545)
!555 = !DILocation(line: 233, column: 40, scope: !556)
!556 = distinct !DILexicalBlock(scope: !545, file: !10, line: 232, column: 8)
!557 = !DILocation(line: 233, column: 53, scope: !556)
!558 = !DILocation(line: 233, column: 4, scope: !556)
!559 = !DILocation(line: 167, column: 2, scope: !560)
!560 = !DILexicalBlockFile(scope: !263, file: !10, discriminator: 2)
!561 = !DILocation(line: 238, column: 9, scope: !263)
!562 = !DILocation(line: 238, column: 2, scope: !263)
!563 = !DILocation(line: 239, column: 1, scope: !263)
!564 = !DILocation(line: 239, column: 1, scope: !295)
