; ModuleID = './libSslDirect_la-sslDirect.o.i'
source_filename = "./libSslDirect_la-sslDirect.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SSLSockStruct = type { %struct.ssl_st*, i32, i8, i8, i8, i32 }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i8*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, %struct.dtls1_state_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32 (%struct.ssl_st*, i8*, i32*)*, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, i32, i64, i64, i64, i32, i32, i32, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i32, i32, %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i32, i32, i64, i8*, i64, i8*, i8*, i64, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, %struct.ssl_ctx_st*, i8*, i8, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, %struct.srp_ctx_st, i8*, i32 }
%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i32, i32, i64, i32*)*, i32 (%struct.ssl_st*, i32, i8*, i32, i32)*, i32 (%struct.ssl_st*, i32, i8*, i32)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ssl3_enc_method = type opaque
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.anon.2 }
%struct.anon.2 = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], i32, [64 x i8], [8 x i8], i32, [64 x i8], [32 x i8], [32 x i8], i32, i32, i32, %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.env_md_ctx_st**, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, i8*, i64, i8*, i64, %struct.anon.3, [64 x i8], i8, [64 x i8], i8, i32, i32, i8, i8*, i32 }
%struct.ssl3_buffer_st = type { i8*, i64, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8*, i64, [8 x i8] }
%struct.anon.3 = type { [128 x i8], [128 x i8], i32, [128 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, %struct.ec_key_st*, i32, i32, i32, i32, [9 x i8], %struct.stack_st_X509_NAME*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, i32, i32, %struct.ssl_comp_st*, i32 }
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
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
%struct.lhash_st_SSL_SESSION = type { i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type { %struct.stack_st }
%struct.hmac_ctx_st = type { %struct.env_md_st*, %struct.env_md_ctx_st, %struct.env_md_ctx_st, %struct.env_md_ctx_st, i32, [128 x i8] }
%struct.ssl3_buf_freelist_st = type opaque
%struct.stack_st_SRTP_PROTECTION_PROFILE = type { %struct.stack_st }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.cmsghdr = type { i64, i32, i32, [0 x i8] }

@SSLModuleInitialized = internal global i8 0, align 1
@.str = private unnamed_addr constant [14 x i8] c"VERIFY %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sslDirect.c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Error Creating SSL connection structure\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SSL: ssl created\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Error setting fd for SSL connection\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SSL: fd set done\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"SSL: Read(%d, %p, %zu): %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"SSL: Write(%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"SSL: Starting shutdown for %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"SSL: Trying to close %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"SSL: shutdown done\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Error Starting Up Default SSL context\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"!aNULL:kECDH+AES:ECDH+AES:RSA+AES:@STRENGTH\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SSL Error: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"NOT_REACHED %s:%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"SSL: action success, %d bytes\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"SSL: Zero return\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SSL: Want read\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"SSL: Want write\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"SSL: want x509 lookup\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"SSL: syscall error\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"SSL: EOF in violation of protocol\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"SSL: syscall error %d: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"SSL: Unknown SSL Error\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @SSL_Init(i8* (i8*, i8*)*, i8*, i8*) #0 !dbg !1710 {
  %4 = alloca i8* (i8*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* (i8*, i8*)* %0, i8* (i8*, i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata i8* (i8*, i8*)** %4, metadata !1718, metadata !1719), !dbg !1720
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1721, metadata !1719), !dbg !1722
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1723, metadata !1719), !dbg !1724
  %7 = load i8, i8* @SSLModuleInitialized, align 1, !dbg !1725
  %8 = icmp ne i8 %7, 0, !dbg !1725
  br i1 %8, label %9, label %10, !dbg !1727

; <label>:9:                                      ; preds = %3
  br label %13, !dbg !1728

; <label>:10:                                     ; preds = %3
  %11 = call i32 @SSL_library_init(), !dbg !1730
  call void @SSL_load_error_strings(), !dbg !1731
  call void @OPENSSL_add_all_algorithms_noconf(), !dbg !1732
  %12 = call i32 @RAND_status(), !dbg !1733
  call void @ENGINE_register_all_ciphers(), !dbg !1734
  call void @ENGINE_register_all_digests(), !dbg !1735
  store i8 1, i8* @SSLModuleInitialized, align 1, !dbg !1736
  br label %13, !dbg !1737

; <label>:13:                                     ; preds = %10, %9
  ret void, !dbg !1738
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @SSL_library_init() #2

declare void @SSL_load_error_strings() #2

declare void @OPENSSL_add_all_algorithms_noconf() #2

declare i32 @RAND_status() #2

declare void @ENGINE_register_all_ciphers() #2

declare void @ENGINE_register_all_digests() #2

; Function Attrs: nounwind uwtable
define %struct.SSLSockStruct* @SSL_New(i32, i8 signext) #0 !dbg !1740 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.SSLSockStruct*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1743, metadata !1719), !dbg !1744
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1745, metadata !1719), !dbg !1746
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %5, metadata !1747, metadata !1719), !dbg !1748
  %6 = call noalias i8* @calloc(i64 1, i64 24) #7, !dbg !1749
  %7 = bitcast i8* %6 to %struct.SSLSockStruct*, !dbg !1750
  store %struct.SSLSockStruct* %7, %struct.SSLSockStruct** %5, align 8, !dbg !1751
  %8 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !1752
  %9 = icmp ne %struct.SSLSockStruct* %8, null, !dbg !1755
  %10 = xor i1 %9, true, !dbg !1755
  %11 = zext i1 %10 to i32, !dbg !1755
  %12 = sext i32 %11 to i64, !dbg !1756
  %13 = icmp ne i64 %12, 0, !dbg !1757
  br i1 %13, label %14, label %15, !dbg !1758

; <label>:14:                                     ; preds = %2
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 312) #8, !dbg !1759
  unreachable, !dbg !1759

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %3, align 4, !dbg !1762
  %17 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !1763
  %18 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %17, i32 0, i32 1, !dbg !1764
  store i32 %16, i32* %18, align 8, !dbg !1765
  %19 = load i8, i8* %4, align 1, !dbg !1766
  %20 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !1767
  %21 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %20, i32 0, i32 3, !dbg !1768
  store i8 %19, i8* %21, align 1, !dbg !1769
  %22 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !1770
  ret %struct.SSLSockStruct* %22, !dbg !1771
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #4

; Function Attrs: nounwind uwtable
define signext i8 @SSL_SetupAcceptWithContext(%struct.SSLSockStruct*, i8*) #0 !dbg !1772 {
  %3 = alloca %struct.SSLSockStruct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %3, metadata !1775, metadata !1719), !dbg !1776
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1777, metadata !1719), !dbg !1778
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1779, metadata !1719), !dbg !1780
  store i8 1, i8* %5, align 1, !dbg !1780
  %8 = load i8*, i8** %4, align 8, !dbg !1781
  %9 = bitcast i8* %8 to %struct.ssl_ctx_st*, !dbg !1781
  %10 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* %9), !dbg !1782
  %11 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1783
  %12 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %11, i32 0, i32 0, !dbg !1784
  store %struct.ssl_st* %10, %struct.ssl_st** %12, align 8, !dbg !1785
  %13 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1786
  %14 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %13, i32 0, i32 0, !dbg !1788
  %15 = load %struct.ssl_st*, %struct.ssl_st** %14, align 8, !dbg !1788
  %16 = icmp ne %struct.ssl_st* %15, null, !dbg !1786
  br i1 %16, label %20, label %17, !dbg !1789

; <label>:17:                                     ; preds = %2
  call void @SSLPrintErrors(i32 115), !dbg !1790
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)), !dbg !1792
  %18 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1793
  %19 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %18, i32 0, i32 4, !dbg !1794
  store i8 1, i8* %19, align 2, !dbg !1795
  store i8 0, i8* %5, align 1, !dbg !1796
  br label %50, !dbg !1797

; <label>:20:                                     ; preds = %2
  %21 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1798
  %22 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %21, i32 0, i32 0, !dbg !1799
  %23 = load %struct.ssl_st*, %struct.ssl_st** %22, align 8, !dbg !1799
  call void @SSL_set_accept_state(%struct.ssl_st* %23), !dbg !1800
  br label %24, !dbg !1801, !llvm.loop !1802

; <label>:24:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1803, metadata !1719), !dbg !1807
  %25 = call i32* @__errno_location() #1, !dbg !1808
  %26 = load i32, i32* %25, align 4, !dbg !1810
  store i32 %26, i32* %6, align 4, !dbg !1811
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0)), !dbg !1812
  %27 = load i32, i32* %6, align 4, !dbg !1814
  %28 = call i32* @__errno_location() #1, !dbg !1815
  store i32 %27, i32* %28, align 4, !dbg !1817
  br label %29, !dbg !1818

; <label>:29:                                     ; preds = %24
  %30 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1819
  %31 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %30, i32 0, i32 0, !dbg !1821
  %32 = load %struct.ssl_st*, %struct.ssl_st** %31, align 8, !dbg !1821
  %33 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1822
  %34 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %33, i32 0, i32 1, !dbg !1823
  %35 = load i32, i32* %34, align 8, !dbg !1823
  %36 = call i32 @SSL_set_fd(%struct.ssl_st* %32, i32 %35), !dbg !1824
  %37 = icmp ne i32 %36, 0, !dbg !1824
  br i1 %37, label %41, label %38, !dbg !1825

; <label>:38:                                     ; preds = %29
  call void @SSLPrintErrors(i32 115), !dbg !1826
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0)), !dbg !1828
  %39 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1829
  %40 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %39, i32 0, i32 4, !dbg !1830
  store i8 1, i8* %40, align 2, !dbg !1831
  store i8 0, i8* %5, align 1, !dbg !1832
  br label %50, !dbg !1833

; <label>:41:                                     ; preds = %29
  br label %42, !dbg !1834, !llvm.loop !1835

; <label>:42:                                     ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1836, metadata !1719), !dbg !1838
  %43 = call i32* @__errno_location() #1, !dbg !1839
  %44 = load i32, i32* %43, align 4, !dbg !1841
  store i32 %44, i32* %7, align 4, !dbg !1842
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)), !dbg !1843
  %45 = load i32, i32* %7, align 4, !dbg !1845
  %46 = call i32* @__errno_location() #1, !dbg !1846
  store i32 %45, i32* %46, align 4, !dbg !1848
  br label %47, !dbg !1849

; <label>:47:                                     ; preds = %42
  %48 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !1850
  %49 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %48, i32 0, i32 2, !dbg !1851
  store i8 1, i8* %49, align 4, !dbg !1852
  br label %50, !dbg !1850

; <label>:50:                                     ; preds = %47, %38, %17
  %51 = load i8, i8* %5, align 1, !dbg !1853
  ret i8 %51, !dbg !1854
}

declare %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st*) #2

; Function Attrs: nounwind uwtable
define internal void @SSLPrintErrors(i32) #0 !dbg !1855 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1861, metadata !1719), !dbg !1862
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1863, metadata !1719), !dbg !1864
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !1865, metadata !1719), !dbg !1867
  br label %5, !dbg !1868

; <label>:5:                                      ; preds = %20, %1
  %6 = call i64 @ERR_get_error(), !dbg !1869
  %7 = trunc i64 %6 to i32, !dbg !1869
  store i32 %7, i32* %3, align 4, !dbg !1871
  %8 = icmp ne i32 %7, 0, !dbg !1872
  br i1 %8, label %9, label %21, !dbg !1872

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !1873
  store i8 0, i8* %10, align 16, !dbg !1875
  %11 = load i32, i32* %3, align 4, !dbg !1876
  %12 = sext i32 %11 to i64, !dbg !1876
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !1877
  call void @ERR_error_string_n(i64 %12, i8* %13, i64 256), !dbg !1878
  %14 = load i32, i32* %2, align 4, !dbg !1879
  %15 = icmp eq i32 %14, 115, !dbg !1881
  br i1 %15, label %16, label %18, !dbg !1882

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !1883
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %17), !dbg !1885
  br label %20, !dbg !1886

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0, !dbg !1887
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %19), !dbg !1889
  br label %20

; <label>:20:                                     ; preds = %18, %16
  br label %5, !dbg !1890, !llvm.loop !1892

; <label>:21:                                     ; preds = %5
  ret void, !dbg !1893
}

declare void @Warning(i8*, ...) #2

declare void @SSL_set_accept_state(%struct.ssl_st*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @Debug(i8*, ...) #2

declare i32 @SSL_set_fd(%struct.ssl_st*, i32) #2

; Function Attrs: nounwind uwtable
define i64 @SSL_Read(%struct.SSLSockStruct*, i8*, i64) #0 !dbg !1894 {
  %4 = alloca %struct.SSLSockStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %4, metadata !1900, metadata !1719), !dbg !1901
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1902, metadata !1719), !dbg !1903
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1904, metadata !1719), !dbg !1905
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1906, metadata !1719), !dbg !1907
  %10 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1908
  %11 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %10, i32 0, i32 4, !dbg !1910
  %12 = load i8, i8* %11, align 2, !dbg !1910
  %13 = icmp ne i8 %12, 0, !dbg !1908
  br i1 %13, label %14, label %15, !dbg !1911

; <label>:14:                                     ; preds = %3
  call void @SSLSetSystemError(i32 1), !dbg !1912
  store i32 -1, i32* %7, align 4, !dbg !1914
  br label %65, !dbg !1915

; <label>:15:                                     ; preds = %3
  %16 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1916
  %17 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %16, i32 0, i32 2, !dbg !1918
  %18 = load i8, i8* %17, align 4, !dbg !1918
  %19 = icmp ne i8 %18, 0, !dbg !1916
  br i1 %19, label %20, label %54, !dbg !1919

; <label>:20:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1920, metadata !1719), !dbg !1922
  call void @ERR_clear_error(), !dbg !1923
  %21 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1924
  %22 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %21, i32 0, i32 0, !dbg !1925
  %23 = load %struct.ssl_st*, %struct.ssl_st** %22, align 8, !dbg !1925
  %24 = load i8*, i8** %5, align 8, !dbg !1926
  %25 = load i64, i64* %6, align 8, !dbg !1927
  %26 = trunc i64 %25 to i32, !dbg !1928
  %27 = call i32 @SSL_read(%struct.ssl_st* %23, i8* %24, i32 %26), !dbg !1929
  store i32 %27, i32* %8, align 4, !dbg !1930
  %28 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1931
  %29 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %28, i32 0, i32 0, !dbg !1932
  %30 = load %struct.ssl_st*, %struct.ssl_st** %29, align 8, !dbg !1932
  %31 = load i32, i32* %8, align 4, !dbg !1933
  %32 = call i32 @SSLSetErrorState(%struct.ssl_st* %30, i32 %31), !dbg !1934
  %33 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1935
  %34 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %33, i32 0, i32 5, !dbg !1936
  store i32 %32, i32* %34, align 8, !dbg !1937
  %35 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1938
  %36 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %35, i32 0, i32 5, !dbg !1940
  %37 = load i32, i32* %36, align 8, !dbg !1940
  %38 = icmp ne i32 %37, 0, !dbg !1941
  br i1 %38, label %39, label %52, !dbg !1942

; <label>:39:                                     ; preds = %20
  br label %40, !dbg !1943, !llvm.loop !1945

; <label>:40:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1946, metadata !1719), !dbg !1948
  %41 = call i32* @__errno_location() #1, !dbg !1949
  %42 = load i32, i32* %41, align 4, !dbg !1951
  store i32 %42, i32* %9, align 4, !dbg !1952
  %43 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1953
  %44 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %43, i32 0, i32 1, !dbg !1954
  %45 = load i32, i32* %44, align 8, !dbg !1954
  %46 = load i8*, i8** %5, align 8, !dbg !1955
  %47 = load i64, i64* %6, align 8, !dbg !1956
  %48 = load i32, i32* %8, align 4, !dbg !1957
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 %45, i8* %46, i64 %47, i32 %48), !dbg !1958
  %49 = load i32, i32* %9, align 4, !dbg !1960
  %50 = call i32* @__errno_location() #1, !dbg !1961
  store i32 %49, i32* %50, align 4, !dbg !1963
  br label %51, !dbg !1964

; <label>:51:                                     ; preds = %40
  store i32 -1, i32* %8, align 4, !dbg !1965
  br label %52, !dbg !1966

; <label>:52:                                     ; preds = %51, %20
  %53 = load i32, i32* %8, align 4, !dbg !1967
  store i32 %53, i32* %7, align 4, !dbg !1968
  br label %64, !dbg !1969

; <label>:54:                                     ; preds = %15
  %55 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !1970
  %56 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %55, i32 0, i32 1, !dbg !1972
  %57 = load i32, i32* %56, align 8, !dbg !1972
  %58 = load i8*, i8** %5, align 8, !dbg !1973
  %59 = load i64, i64* %6, align 8, !dbg !1974
  %60 = trunc i64 %59 to i32, !dbg !1975
  %61 = sext i32 %60 to i64, !dbg !1975
  %62 = call i64 @read(i32 %57, i8* %58, i64 %61), !dbg !1976
  %63 = trunc i64 %62 to i32, !dbg !1976
  store i32 %63, i32* %7, align 4, !dbg !1977
  br label %64

; <label>:64:                                     ; preds = %54, %52
  br label %65, !dbg !1978

; <label>:65:                                     ; preds = %64, %14
  %66 = load i32, i32* %7, align 4, !dbg !1980
  %67 = sext i32 %66 to i64, !dbg !1980
  ret i64 %67, !dbg !1981
}

; Function Attrs: nounwind uwtable
define internal void @SSLSetSystemError(i32) #0 !dbg !1982 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1985, metadata !1719), !dbg !1986
  %3 = load i32, i32* %2, align 4, !dbg !1987
  switch i32 %3, label %8 [
    i32 0, label %4
    i32 1, label %6
  ], !dbg !1988

; <label>:4:                                      ; preds = %1
  %5 = call i32* @__errno_location() #1, !dbg !1989
  store i32 11, i32* %5, align 4, !dbg !1991
  br label %9, !dbg !1992

; <label>:6:                                      ; preds = %1
  %7 = call i32* @__errno_location() #1, !dbg !1993
  store i32 1, i32* %7, align 4, !dbg !1994
  br label %9, !dbg !1995

; <label>:8:                                      ; preds = %1
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 162) #8, !dbg !1996
  unreachable, !dbg !1996

; <label>:9:                                      ; preds = %6, %4
  ret void, !dbg !1997
}

declare void @ERR_clear_error() #2

declare i32 @SSL_read(%struct.ssl_st*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @SSLSetErrorState(%struct.ssl_st*, i32) #0 !dbg !1998 {
  %3 = alloca %struct.ssl_st*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ssl_st* %0, %struct.ssl_st** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_st** %3, metadata !2001, metadata !1719), !dbg !2002
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2003, metadata !1719), !dbg !2004
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2005, metadata !1719), !dbg !2006
  %12 = load %struct.ssl_st*, %struct.ssl_st** %3, align 8, !dbg !2007
  %13 = load i32, i32* %4, align 4, !dbg !2008
  %14 = call i32 @SSL_get_error(%struct.ssl_st* %12, i32 %13), !dbg !2009
  store i32 %14, i32* %5, align 4, !dbg !2006
  %15 = load i32, i32* %5, align 4, !dbg !2010
  switch i32 %15, label %68 [
    i32 0, label %16
    i32 6, label %24
    i32 2, label %31
    i32 3, label %38
    i32 4, label %45
    i32 5, label %52
    i32 1, label %67
  ], !dbg !2011

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !2012, !llvm.loop !2014

; <label>:17:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2015, metadata !1719), !dbg !2017
  %18 = call i32* @__errno_location() #1, !dbg !2018
  %19 = load i32, i32* %18, align 4, !dbg !2020
  store i32 %19, i32* %6, align 4, !dbg !2021
  %20 = load i32, i32* %4, align 4, !dbg !2022
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 %20), !dbg !2023
  %21 = load i32, i32* %6, align 4, !dbg !2025
  %22 = call i32* @__errno_location() #1, !dbg !2026
  store i32 %21, i32* %22, align 4, !dbg !2028
  br label %23, !dbg !2029

; <label>:23:                                     ; preds = %17
  br label %68, !dbg !2030

; <label>:24:                                     ; preds = %2
  br label %25, !dbg !2031, !llvm.loop !2032

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2033, metadata !1719), !dbg !2035
  %26 = call i32* @__errno_location() #1, !dbg !2036
  %27 = load i32, i32* %26, align 4, !dbg !2038
  store i32 %27, i32* %7, align 4, !dbg !2039
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)), !dbg !2040
  %28 = load i32, i32* %7, align 4, !dbg !2042
  %29 = call i32* @__errno_location() #1, !dbg !2043
  store i32 %28, i32* %29, align 4, !dbg !2045
  br label %30, !dbg !2046

; <label>:30:                                     ; preds = %25
  br label %68, !dbg !2047

; <label>:31:                                     ; preds = %2
  br label %32, !dbg !2048, !llvm.loop !2049

; <label>:32:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2050, metadata !1719), !dbg !2052
  %33 = call i32* @__errno_location() #1, !dbg !2053
  %34 = load i32, i32* %33, align 4, !dbg !2055
  store i32 %34, i32* %8, align 4, !dbg !2056
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)), !dbg !2057
  %35 = load i32, i32* %8, align 4, !dbg !2059
  %36 = call i32* @__errno_location() #1, !dbg !2060
  store i32 %35, i32* %36, align 4, !dbg !2062
  br label %37, !dbg !2063

; <label>:37:                                     ; preds = %32
  call void @SSLSetSystemError(i32 0), !dbg !2064
  br label %68, !dbg !2065

; <label>:38:                                     ; preds = %2
  br label %39, !dbg !2066, !llvm.loop !2067

; <label>:39:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2068, metadata !1719), !dbg !2070
  %40 = call i32* @__errno_location() #1, !dbg !2071
  %41 = load i32, i32* %40, align 4, !dbg !2073
  store i32 %41, i32* %9, align 4, !dbg !2074
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0)), !dbg !2075
  %42 = load i32, i32* %9, align 4, !dbg !2077
  %43 = call i32* @__errno_location() #1, !dbg !2078
  store i32 %42, i32* %43, align 4, !dbg !2080
  br label %44, !dbg !2081

; <label>:44:                                     ; preds = %39
  call void @SSLSetSystemError(i32 0), !dbg !2082
  br label %68, !dbg !2083

; <label>:45:                                     ; preds = %2
  br label %46, !dbg !2084, !llvm.loop !2085

; <label>:46:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2086, metadata !1719), !dbg !2088
  %47 = call i32* @__errno_location() #1, !dbg !2089
  %48 = load i32, i32* %47, align 4, !dbg !2091
  store i32 %48, i32* %10, align 4, !dbg !2092
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0)), !dbg !2093
  %49 = load i32, i32* %10, align 4, !dbg !2095
  %50 = call i32* @__errno_location() #1, !dbg !2096
  store i32 %49, i32* %50, align 4, !dbg !2098
  br label %51, !dbg !2099

; <label>:51:                                     ; preds = %46
  br label %68, !dbg !2100

; <label>:52:                                     ; preds = %2
  br label %53, !dbg !2101, !llvm.loop !2102

; <label>:53:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2103, metadata !1719), !dbg !2105
  %54 = call i32* @__errno_location() #1, !dbg !2106
  %55 = load i32, i32* %54, align 4, !dbg !2108
  store i32 %55, i32* %11, align 4, !dbg !2109
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)), !dbg !2110
  %56 = load i32, i32* %11, align 4, !dbg !2112
  %57 = call i32* @__errno_location() #1, !dbg !2113
  store i32 %56, i32* %57, align 4, !dbg !2115
  br label %58, !dbg !2116

; <label>:58:                                     ; preds = %53
  call void @SSLPrintErrors(i32 125), !dbg !2117
  %59 = load i32, i32* %4, align 4, !dbg !2118
  %60 = icmp eq i32 %59, 0, !dbg !2120
  br i1 %60, label %61, label %62, !dbg !2121

; <label>:61:                                     ; preds = %58
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0)), !dbg !2122
  br label %66, !dbg !2124

; <label>:62:                                     ; preds = %58
  %63 = call i32* @__errno_location() #1, !dbg !2125
  %64 = load i32, i32* %63, align 4, !dbg !2127
  %65 = call i8* @Err_ErrString(), !dbg !2128
  call void (i8*, ...) @Log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i32 %64, i8* %65), !dbg !2130
  br label %66

; <label>:66:                                     ; preds = %62, %61
  br label %68, !dbg !2132

; <label>:67:                                     ; preds = %2
  call void (i8*, ...) @Warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0)), !dbg !2133
  call void @SSLPrintErrors(i32 125), !dbg !2134
  br label %68, !dbg !2135

; <label>:68:                                     ; preds = %2, %67, %66, %51, %44, %37, %30, %23
  %69 = load i32, i32* %5, align 4, !dbg !2136
  ret i32 %69, !dbg !2137
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @SSL_RecvDataAndFd(%struct.SSLSockStruct*, i8*, i64, i32*) #0 !dbg !2138 {
  %5 = alloca %struct.SSLSockStruct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iovec, align 8
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca [24 x i8], align 16
  %15 = alloca %struct.cmsghdr*, align 8
  %16 = alloca i32, align 4
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %5, metadata !2141, metadata !1719), !dbg !2142
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2143, metadata !1719), !dbg !2144
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2145, metadata !1719), !dbg !2146
  store i32* %3, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !2147, metadata !1719), !dbg !2148
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2149, metadata !1719), !dbg !2150
  %17 = load i32*, i32** %8, align 8, !dbg !2151
  store i32 -1, i32* %17, align 4, !dbg !2152
  %18 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2153
  %19 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %18, i32 0, i32 4, !dbg !2155
  %20 = load i8, i8* %19, align 2, !dbg !2155
  %21 = icmp ne i8 %20, 0, !dbg !2153
  br i1 %21, label %22, label %23, !dbg !2156

; <label>:22:                                     ; preds = %4
  call void @SSLSetSystemError(i32 1), !dbg !2157
  store i32 -1, i32* %9, align 4, !dbg !2159
  br label %125, !dbg !2160

; <label>:23:                                     ; preds = %4
  %24 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2161
  %25 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %24, i32 0, i32 2, !dbg !2163
  %26 = load i8, i8* %25, align 4, !dbg !2163
  %27 = icmp ne i8 %26, 0, !dbg !2161
  br i1 %27, label %28, label %62, !dbg !2164

; <label>:28:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2165, metadata !1719), !dbg !2167
  call void @ERR_clear_error(), !dbg !2168
  %29 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2169
  %30 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %29, i32 0, i32 0, !dbg !2170
  %31 = load %struct.ssl_st*, %struct.ssl_st** %30, align 8, !dbg !2170
  %32 = load i8*, i8** %6, align 8, !dbg !2171
  %33 = load i64, i64* %7, align 8, !dbg !2172
  %34 = trunc i64 %33 to i32, !dbg !2173
  %35 = call i32 @SSL_read(%struct.ssl_st* %31, i8* %32, i32 %34), !dbg !2174
  store i32 %35, i32* %10, align 4, !dbg !2175
  %36 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2176
  %37 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %36, i32 0, i32 0, !dbg !2177
  %38 = load %struct.ssl_st*, %struct.ssl_st** %37, align 8, !dbg !2177
  %39 = load i32, i32* %10, align 4, !dbg !2178
  %40 = call i32 @SSLSetErrorState(%struct.ssl_st* %38, i32 %39), !dbg !2179
  %41 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2180
  %42 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %41, i32 0, i32 5, !dbg !2181
  store i32 %40, i32* %42, align 8, !dbg !2182
  %43 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2183
  %44 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %43, i32 0, i32 5, !dbg !2185
  %45 = load i32, i32* %44, align 8, !dbg !2185
  %46 = icmp ne i32 %45, 0, !dbg !2186
  br i1 %46, label %47, label %60, !dbg !2187

; <label>:47:                                     ; preds = %28
  br label %48, !dbg !2188, !llvm.loop !2190

; <label>:48:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2191, metadata !1719), !dbg !2193
  %49 = call i32* @__errno_location() #1, !dbg !2194
  %50 = load i32, i32* %49, align 4, !dbg !2196
  store i32 %50, i32* %11, align 4, !dbg !2197
  %51 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2198
  %52 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %51, i32 0, i32 1, !dbg !2199
  %53 = load i32, i32* %52, align 8, !dbg !2199
  %54 = load i8*, i8** %6, align 8, !dbg !2200
  %55 = load i64, i64* %7, align 8, !dbg !2201
  %56 = load i32, i32* %10, align 4, !dbg !2202
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 %53, i8* %54, i64 %55, i32 %56), !dbg !2203
  %57 = load i32, i32* %11, align 4, !dbg !2205
  %58 = call i32* @__errno_location() #1, !dbg !2206
  store i32 %57, i32* %58, align 4, !dbg !2208
  br label %59, !dbg !2209

; <label>:59:                                     ; preds = %48
  store i32 -1, i32* %10, align 4, !dbg !2210
  br label %60, !dbg !2211

; <label>:60:                                     ; preds = %59, %28
  %61 = load i32, i32* %10, align 4, !dbg !2212
  store i32 %61, i32* %9, align 4, !dbg !2213
  br label %124, !dbg !2214

; <label>:62:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.iovec* %12, metadata !2215, metadata !1719), !dbg !2222
  call void @llvm.dbg.declare(metadata %struct.msghdr* %13, metadata !2223, metadata !1719), !dbg !2236
  %63 = bitcast %struct.msghdr* %13 to i8*, !dbg !2236
  call void @llvm.memset.p0i8.i64(i8* %63, i8 0, i64 56, i32 8, i1 false), !dbg !2236
  call void @llvm.dbg.declare(metadata [24 x i8]* %14, metadata !2237, metadata !1719), !dbg !2243
  %64 = load i8*, i8** %6, align 8, !dbg !2244
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 0, !dbg !2245
  store i8* %64, i8** %65, align 8, !dbg !2246
  %66 = load i64, i64* %7, align 8, !dbg !2247
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %12, i32 0, i32 1, !dbg !2248
  store i64 %66, i64* %67, align 8, !dbg !2249
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0, !dbg !2250
  store i8* null, i8** %68, align 8, !dbg !2251
  %69 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1, !dbg !2252
  store i32 0, i32* %69, align 8, !dbg !2253
  %70 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2, !dbg !2254
  store %struct.iovec* %12, %struct.iovec** %70, align 8, !dbg !2255
  %71 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3, !dbg !2256
  store i64 1, i64* %71, align 8, !dbg !2257
  %72 = getelementptr inbounds [24 x i8], [24 x i8]* %14, i32 0, i32 0, !dbg !2258
  %73 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4, !dbg !2259
  store i8* %72, i8** %73, align 8, !dbg !2260
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5, !dbg !2261
  store i64 24, i64* %74, align 8, !dbg !2262
  %75 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %5, align 8, !dbg !2263
  %76 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %75, i32 0, i32 1, !dbg !2264
  %77 = load i32, i32* %76, align 8, !dbg !2264
  %78 = call i64 @recvmsg(i32 %77, %struct.msghdr* %13, i32 0), !dbg !2265
  %79 = trunc i64 %78 to i32, !dbg !2265
  store i32 %79, i32* %9, align 4, !dbg !2266
  %80 = load i32, i32* %9, align 4, !dbg !2267
  %81 = icmp sge i32 %80, 0, !dbg !2269
  br i1 %81, label %82, label %123, !dbg !2270

; <label>:82:                                     ; preds = %62
  %83 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5, !dbg !2271
  %84 = load i64, i64* %83, align 8, !dbg !2271
  %85 = icmp ne i64 %84, 0, !dbg !2273
  br i1 %85, label %86, label %123, !dbg !2274

; <label>:86:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.cmsghdr** %15, metadata !2275, metadata !1719), !dbg !2277
  %87 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 5, !dbg !2278
  %88 = load i64, i64* %87, align 8, !dbg !2278
  %89 = icmp uge i64 %88, 16, !dbg !2280
  br i1 %89, label %90, label %94, !dbg !2281

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 4, !dbg !2282
  %92 = load i8*, i8** %91, align 8, !dbg !2282
  %93 = bitcast i8* %92 to %struct.cmsghdr*, !dbg !2284
  br label %95, !dbg !2285

; <label>:94:                                     ; preds = %86
  br label %95, !dbg !2286

; <label>:95:                                     ; preds = %94, %90
  %96 = phi %struct.cmsghdr* [ %93, %90 ], [ null, %94 ], !dbg !2288
  store %struct.cmsghdr* %96, %struct.cmsghdr** %15, align 8, !dbg !2290
  br label %97, !dbg !2291

; <label>:97:                                     ; preds = %119, %95
  %98 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8, !dbg !2292
  %99 = icmp ne %struct.cmsghdr* %98, null, !dbg !2295
  br i1 %99, label %100, label %122, !dbg !2295

; <label>:100:                                    ; preds = %97
  %101 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8, !dbg !2296
  %102 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %101, i32 0, i32 1, !dbg !2299
  %103 = load i32, i32* %102, align 8, !dbg !2299
  %104 = icmp eq i32 %103, 1, !dbg !2300
  br i1 %104, label %105, label %118, !dbg !2301

; <label>:105:                                    ; preds = %100
  %106 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8, !dbg !2302
  %107 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %106, i32 0, i32 2, !dbg !2304
  %108 = load i32, i32* %107, align 4, !dbg !2304
  %109 = icmp eq i32 %108, 1, !dbg !2305
  br i1 %109, label %110, label %118, !dbg !2306

; <label>:110:                                    ; preds = %105
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2307, metadata !1719), !dbg !2309
  %111 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8, !dbg !2310
  %112 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %111, i32 0, i32 3, !dbg !2311
  %113 = getelementptr inbounds [0 x i8], [0 x i8]* %112, i32 0, i32 0, !dbg !2312
  %114 = bitcast i8* %113 to i32*, !dbg !2312
  %115 = load i32, i32* %114, align 8, !dbg !2312
  store i32 %115, i32* %16, align 4, !dbg !2309
  %116 = load i32, i32* %16, align 4, !dbg !2313
  %117 = load i32*, i32** %8, align 8, !dbg !2314
  store i32 %116, i32* %117, align 4, !dbg !2315
  br label %118, !dbg !2316

; <label>:118:                                    ; preds = %110, %105, %100
  br label %119, !dbg !2317

; <label>:119:                                    ; preds = %118
  %120 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8, !dbg !2318
  %121 = call %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr* %13, %struct.cmsghdr* %120) #7, !dbg !2318
  store %struct.cmsghdr* %121, %struct.cmsghdr** %15, align 8, !dbg !2320
  br label %97, !dbg !2321, !llvm.loop !2322

; <label>:122:                                    ; preds = %97
  br label %123, !dbg !2324

; <label>:123:                                    ; preds = %122, %82, %62
  br label %124

; <label>:124:                                    ; preds = %123, %60
  br label %125, !dbg !2325

; <label>:125:                                    ; preds = %124, %22
  %126 = load i32, i32* %9, align 4, !dbg !2327
  %127 = sext i32 %126 to i64, !dbg !2327
  ret i64 %127, !dbg !2328
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i64 @recvmsg(i32, %struct.msghdr*, i32) #2

; Function Attrs: nounwind
declare %struct.cmsghdr* @__cmsg_nxthdr(%struct.msghdr*, %struct.cmsghdr*) #3

; Function Attrs: nounwind uwtable
define i64 @SSL_Write(%struct.SSLSockStruct*, i8*, i64) #0 !dbg !2329 {
  %4 = alloca %struct.SSLSockStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %4, metadata !2332, metadata !1719), !dbg !2333
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2334, metadata !1719), !dbg !2335
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2336, metadata !1719), !dbg !2337
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2338, metadata !1719), !dbg !2339
  %10 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2340
  %11 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %10, i32 0, i32 4, !dbg !2342
  %12 = load i8, i8* %11, align 2, !dbg !2342
  %13 = icmp ne i8 %12, 0, !dbg !2340
  br i1 %13, label %14, label %15, !dbg !2343

; <label>:14:                                     ; preds = %3
  call void @SSLSetSystemError(i32 1), !dbg !2344
  store i32 -1, i32* %7, align 4, !dbg !2346
  br label %62, !dbg !2347

; <label>:15:                                     ; preds = %3
  %16 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2348
  %17 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %16, i32 0, i32 2, !dbg !2350
  %18 = load i8, i8* %17, align 4, !dbg !2350
  %19 = icmp ne i8 %18, 0, !dbg !2348
  br i1 %19, label %20, label %51, !dbg !2351

; <label>:20:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2352, metadata !1719), !dbg !2354
  call void @ERR_clear_error(), !dbg !2355
  %21 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2356
  %22 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %21, i32 0, i32 0, !dbg !2357
  %23 = load %struct.ssl_st*, %struct.ssl_st** %22, align 8, !dbg !2357
  %24 = load i8*, i8** %5, align 8, !dbg !2358
  %25 = load i64, i64* %6, align 8, !dbg !2359
  %26 = trunc i64 %25 to i32, !dbg !2360
  %27 = call i32 @SSL_write(%struct.ssl_st* %23, i8* %24, i32 %26), !dbg !2361
  store i32 %27, i32* %8, align 4, !dbg !2362
  %28 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2363
  %29 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %28, i32 0, i32 0, !dbg !2364
  %30 = load %struct.ssl_st*, %struct.ssl_st** %29, align 8, !dbg !2364
  %31 = load i32, i32* %8, align 4, !dbg !2365
  %32 = call i32 @SSLSetErrorState(%struct.ssl_st* %30, i32 %31), !dbg !2366
  %33 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2367
  %34 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %33, i32 0, i32 5, !dbg !2368
  store i32 %32, i32* %34, align 8, !dbg !2369
  %35 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2370
  %36 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %35, i32 0, i32 5, !dbg !2372
  %37 = load i32, i32* %36, align 8, !dbg !2372
  %38 = icmp ne i32 %37, 0, !dbg !2373
  br i1 %38, label %39, label %49, !dbg !2374

; <label>:39:                                     ; preds = %20
  br label %40, !dbg !2375, !llvm.loop !2377

; <label>:40:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2378, metadata !1719), !dbg !2380
  %41 = call i32* @__errno_location() #1, !dbg !2381
  %42 = load i32, i32* %41, align 4, !dbg !2383
  store i32 %42, i32* %9, align 4, !dbg !2384
  %43 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2385
  %44 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %43, i32 0, i32 1, !dbg !2386
  %45 = load i32, i32* %44, align 8, !dbg !2386
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %45), !dbg !2387
  %46 = load i32, i32* %9, align 4, !dbg !2389
  %47 = call i32* @__errno_location() #1, !dbg !2390
  store i32 %46, i32* %47, align 4, !dbg !2392
  br label %48, !dbg !2393

; <label>:48:                                     ; preds = %40
  store i32 -1, i32* %8, align 4, !dbg !2394
  br label %49, !dbg !2395

; <label>:49:                                     ; preds = %48, %20
  %50 = load i32, i32* %8, align 4, !dbg !2396
  store i32 %50, i32* %7, align 4, !dbg !2397
  br label %61, !dbg !2398

; <label>:51:                                     ; preds = %15
  %52 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %4, align 8, !dbg !2399
  %53 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %52, i32 0, i32 1, !dbg !2401
  %54 = load i32, i32* %53, align 8, !dbg !2401
  %55 = load i8*, i8** %5, align 8, !dbg !2402
  %56 = load i64, i64* %6, align 8, !dbg !2403
  %57 = trunc i64 %56 to i32, !dbg !2404
  %58 = sext i32 %57 to i64, !dbg !2404
  %59 = call i64 @write(i32 %54, i8* %55, i64 %58), !dbg !2405
  %60 = trunc i64 %59 to i32, !dbg !2405
  store i32 %60, i32* %7, align 4, !dbg !2406
  br label %61

; <label>:61:                                     ; preds = %51, %49
  br label %62, !dbg !2407

; <label>:62:                                     ; preds = %61, %14
  %63 = load i32, i32* %7, align 4, !dbg !2409
  %64 = sext i32 %63 to i64, !dbg !2409
  ret i64 %64, !dbg !2410
}

declare i32 @SSL_write(%struct.ssl_st*, i8*, i32) #2

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i32 @SSL_Pending(%struct.SSLSockStruct*) #0 !dbg !2411 {
  %2 = alloca %struct.SSLSockStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %2, metadata !2414, metadata !1719), !dbg !2415
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2416, metadata !1719), !dbg !2417
  %4 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2418
  %5 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %4, i32 0, i32 2, !dbg !2420
  %6 = load i8, i8* %5, align 4, !dbg !2420
  %7 = icmp ne i8 %6, 0, !dbg !2418
  br i1 %7, label %8, label %13, !dbg !2421

; <label>:8:                                      ; preds = %1
  %9 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2422
  %10 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %9, i32 0, i32 0, !dbg !2424
  %11 = load %struct.ssl_st*, %struct.ssl_st** %10, align 8, !dbg !2424
  %12 = call i32 @SSL_pending(%struct.ssl_st* %11), !dbg !2425
  store i32 %12, i32* %3, align 4, !dbg !2426
  br label %14, !dbg !2427

; <label>:13:                                     ; preds = %1
  store i32 0, i32* %3, align 4, !dbg !2428
  br label %14

; <label>:14:                                     ; preds = %13, %8
  %15 = load i32, i32* %3, align 4, !dbg !2430
  ret i32 %15, !dbg !2431
}

declare i32 @SSL_pending(%struct.ssl_st*) #2

; Function Attrs: nounwind uwtable
define void @SSL_SetCloseOnShutdownFlag(%struct.SSLSockStruct*) #0 !dbg !2432 {
  %2 = alloca %struct.SSLSockStruct*, align 8
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %2, metadata !2435, metadata !1719), !dbg !2436
  %3 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2437
  %4 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %3, i32 0, i32 3, !dbg !2438
  store i8 1, i8* %4, align 1, !dbg !2439
  ret void, !dbg !2440
}

; Function Attrs: nounwind uwtable
define i32 @SSL_Shutdown(%struct.SSLSockStruct*) #0 !dbg !2441 {
  %2 = alloca %struct.SSLSockStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %2, metadata !2442, metadata !1719), !dbg !2443
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2444, metadata !1719), !dbg !2445
  store i32 0, i32* %3, align 4, !dbg !2445
  br label %7, !dbg !2446, !llvm.loop !2447

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2448, metadata !1719), !dbg !2450
  %8 = call i32* @__errno_location() #1, !dbg !2451
  %9 = load i32, i32* %8, align 4, !dbg !2453
  store i32 %9, i32* %4, align 4, !dbg !2454
  %10 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2455
  %11 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %10, i32 0, i32 1, !dbg !2456
  %12 = load i32, i32* %11, align 8, !dbg !2456
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0), i32 %12), !dbg !2457
  %13 = load i32, i32* %4, align 4, !dbg !2459
  %14 = call i32* @__errno_location() #1, !dbg !2460
  store i32 %13, i32* %14, align 4, !dbg !2462
  br label %15, !dbg !2463

; <label>:15:                                     ; preds = %7
  %16 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2464
  %17 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %16, i32 0, i32 2, !dbg !2466
  %18 = load i8, i8* %17, align 4, !dbg !2466
  %19 = icmp ne i8 %18, 0, !dbg !2464
  br i1 %19, label %20, label %25, !dbg !2467

; <label>:20:                                     ; preds = %15
  %21 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2468
  %22 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %21, i32 0, i32 0, !dbg !2470
  %23 = load %struct.ssl_st*, %struct.ssl_st** %22, align 8, !dbg !2470
  %24 = call i32 @SSL_shutdown(%struct.ssl_st* %23), !dbg !2471
  br label %25, !dbg !2472

; <label>:25:                                     ; preds = %20, %15
  %26 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2473
  %27 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %26, i32 0, i32 0, !dbg !2475
  %28 = load %struct.ssl_st*, %struct.ssl_st** %27, align 8, !dbg !2475
  %29 = icmp ne %struct.ssl_st* %28, null, !dbg !2473
  br i1 %29, label %30, label %34, !dbg !2476

; <label>:30:                                     ; preds = %25
  %31 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2477
  %32 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %31, i32 0, i32 0, !dbg !2479
  %33 = load %struct.ssl_st*, %struct.ssl_st** %32, align 8, !dbg !2479
  call void @SSL_free(%struct.ssl_st* %33), !dbg !2480
  br label %34, !dbg !2481

; <label>:34:                                     ; preds = %30, %25
  %35 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2482
  %36 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %35, i32 0, i32 3, !dbg !2484
  %37 = load i8, i8* %36, align 1, !dbg !2484
  %38 = icmp ne i8 %37, 0, !dbg !2482
  br i1 %38, label %39, label %53, !dbg !2485

; <label>:39:                                     ; preds = %34
  br label %40, !dbg !2486, !llvm.loop !2488

; <label>:40:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2489, metadata !1719), !dbg !2491
  %41 = call i32* @__errno_location() #1, !dbg !2492
  %42 = load i32, i32* %41, align 4, !dbg !2494
  store i32 %42, i32* %5, align 4, !dbg !2495
  %43 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2496
  %44 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %43, i32 0, i32 1, !dbg !2497
  %45 = load i32, i32* %44, align 8, !dbg !2497
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %45), !dbg !2498
  %46 = load i32, i32* %5, align 4, !dbg !2500
  %47 = call i32* @__errno_location() #1, !dbg !2501
  store i32 %46, i32* %47, align 4, !dbg !2503
  br label %48, !dbg !2504

; <label>:48:                                     ; preds = %40
  %49 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2505
  %50 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %49, i32 0, i32 1, !dbg !2506
  %51 = load i32, i32* %50, align 8, !dbg !2506
  %52 = call i32 @close(i32 %51), !dbg !2507
  store i32 %52, i32* %3, align 4, !dbg !2508
  br label %53, !dbg !2509

; <label>:53:                                     ; preds = %48, %34
  %54 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2510
  %55 = bitcast %struct.SSLSockStruct* %54 to i8*, !dbg !2510
  call void @free(i8* %55) #7, !dbg !2511
  br label %56, !dbg !2512, !llvm.loop !2513

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2514, metadata !1719), !dbg !2516
  %57 = call i32* @__errno_location() #1, !dbg !2517
  %58 = load i32, i32* %57, align 4, !dbg !2519
  store i32 %58, i32* %6, align 4, !dbg !2520
  call void (i8*, ...) @Debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)), !dbg !2521
  %59 = load i32, i32* %6, align 4, !dbg !2523
  %60 = call i32* @__errno_location() #1, !dbg !2524
  store i32 %59, i32* %60, align 4, !dbg !2526
  br label %61, !dbg !2527

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %3, align 4, !dbg !2528
  ret i32 %62, !dbg !2529
}

declare i32 @SSL_shutdown(%struct.ssl_st*) #2

declare void @SSL_free(%struct.ssl_st*) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @SSL_GetFd(%struct.SSLSockStruct*) #0 !dbg !2530 {
  %2 = alloca %struct.SSLSockStruct*, align 8
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %2, metadata !2531, metadata !1719), !dbg !2532
  %3 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2533
  %4 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %3, i32 0, i32 1, !dbg !2534
  %5 = load i32, i32* %4, align 8, !dbg !2534
  ret i32 %5, !dbg !2535
}

; Function Attrs: nounwind uwtable
define i32 @SSL_WantRead(%struct.SSLSockStruct*) #0 !dbg !2536 {
  %2 = alloca %struct.SSLSockStruct*, align 8
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %2, metadata !2540, metadata !1719), !dbg !2541
  %3 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %2, align 8, !dbg !2542
  %4 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %3, i32 0, i32 0, !dbg !2543
  %5 = load %struct.ssl_st*, %struct.ssl_st** %4, align 8, !dbg !2543
  %6 = call i32 @SSL_want(%struct.ssl_st* %5), !dbg !2544
  %7 = icmp eq i32 %6, 3, !dbg !2545
  %8 = zext i1 %7 to i32, !dbg !2545
  ret i32 %8, !dbg !2546
}

declare i32 @SSL_want(%struct.ssl_st*) #2

; Function Attrs: nounwind uwtable
define i32 @SSL_TryCompleteAccept(%struct.SSLSockStruct*) #0 !dbg !2547 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SSLSockStruct*, align 8
  %4 = alloca i32, align 4
  store %struct.SSLSockStruct* %0, %struct.SSLSockStruct** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.SSLSockStruct** %3, metadata !2548, metadata !1719), !dbg !2549
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2550, metadata !1719), !dbg !2551
  call void @ERR_clear_error(), !dbg !2552
  %5 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !2553
  %6 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %5, i32 0, i32 0, !dbg !2554
  %7 = load %struct.ssl_st*, %struct.ssl_st** %6, align 8, !dbg !2554
  %8 = call i32 @SSL_accept(%struct.ssl_st* %7), !dbg !2555
  store i32 %8, i32* %4, align 4, !dbg !2556
  %9 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !2557
  %10 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %9, i32 0, i32 0, !dbg !2558
  %11 = load %struct.ssl_st*, %struct.ssl_st** %10, align 8, !dbg !2558
  %12 = load i32, i32* %4, align 4, !dbg !2559
  %13 = call i32 @SSL_get_error(%struct.ssl_st* %11, i32 %12), !dbg !2560
  %14 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !2561
  %15 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %14, i32 0, i32 5, !dbg !2562
  store i32 %13, i32* %15, align 8, !dbg !2563
  %16 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !2564
  %17 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %16, i32 0, i32 5, !dbg !2565
  %18 = load i32, i32* %17, align 8, !dbg !2565
  switch i32 %18, label %21 [
    i32 0, label %19
    i32 2, label %20
    i32 3, label %20
  ], !dbg !2566

; <label>:19:                                     ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !2567
  br label %24, !dbg !2567

; <label>:20:                                     ; preds = %1, %1
  store i32 0, i32* %2, align 4, !dbg !2569
  br label %24, !dbg !2569

; <label>:21:                                     ; preds = %1
  %22 = load %struct.SSLSockStruct*, %struct.SSLSockStruct** %3, align 8, !dbg !2570
  %23 = getelementptr inbounds %struct.SSLSockStruct, %struct.SSLSockStruct* %22, i32 0, i32 4, !dbg !2571
  store i8 1, i8* %23, align 2, !dbg !2572
  call void @SSLPrintErrors(i32 125), !dbg !2573
  store i32 -1, i32* %2, align 4, !dbg !2574
  br label %24, !dbg !2574

; <label>:24:                                     ; preds = %21, %20, %19
  %25 = load i32, i32* %2, align 4, !dbg !2575
  ret i32 %25, !dbg !2575
}

declare i32 @SSL_accept(%struct.ssl_st*) #2

declare i32 @SSL_get_error(%struct.ssl_st*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @SSL_NewContext() #0 !dbg !2576 {
  %1 = alloca %struct.ssl_ctx_st*, align 8
  %2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.ssl_ctx_st** %1, metadata !2579, metadata !1719), !dbg !2580
  call void @llvm.dbg.declare(metadata i64* %2, metadata !2581, metadata !1719), !dbg !2582
  %3 = call %struct.ssl_method_st* @SSLv23_method(), !dbg !2583
  %4 = call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* %3), !dbg !2584
  store %struct.ssl_ctx_st* %4, %struct.ssl_ctx_st** %1, align 8, !dbg !2586
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2587
  %6 = icmp ne %struct.ssl_ctx_st* %5, null, !dbg !2587
  br i1 %6, label %8, label %7, !dbg !2589

; <label>:7:                                      ; preds = %0
  call void @SSLPrintErrors(i32 115), !dbg !2590
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !2592
  unreachable, !dbg !2592

; <label>:8:                                      ; preds = %0
  store i64 2203061247, i64* %2, align 8, !dbg !2593
  %9 = load i64, i64* %2, align 8, !dbg !2594
  %10 = or i64 %9, 16384, !dbg !2594
  store i64 %10, i64* %2, align 8, !dbg !2594
  %11 = load i64, i64* %2, align 8, !dbg !2595
  %12 = or i64 %11, 131072, !dbg !2595
  store i64 %12, i64* %2, align 8, !dbg !2595
  %13 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2596
  %14 = load i64, i64* %2, align 8, !dbg !2596
  %15 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* %13, i32 32, i64 %14, i8* null), !dbg !2596
  %16 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2597
  %17 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* %16, i32 33, i64 4, i8* null), !dbg !2598
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2599
  %19 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* %18, i32 44, i64 0, i8* null), !dbg !2600
  %20 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2601
  call void @SSL_CTX_set_quiet_shutdown(%struct.ssl_ctx_st* %20, i32 1), !dbg !2602
  %21 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2603
  %22 = call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0)), !dbg !2604
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %1, align 8, !dbg !2605
  %24 = bitcast %struct.ssl_ctx_st* %23 to i8*, !dbg !2605
  ret i8* %24, !dbg !2606
}

declare %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st*) #2

declare %struct.ssl_method_st* @SSLv23_method() #2

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st*, i32, i64, i8*) #2

declare void @SSL_CTX_set_quiet_shutdown(%struct.ssl_ctx_st*, i32) #2

declare i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st*, i8*) #2

declare i64 @ERR_get_error() #2

declare void @ERR_error_string_n(i64, i8*, i64) #2

declare void @Log(i8*, ...) #2

declare i8* @Err_ErrString() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1707, !1708}
!llvm.ident = !{!1709}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12, globals: !1705)
!1 = !DIFile(filename: "libSslDirect_la-sslDirect.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!2 = !{!3, !8}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "sslDirect.c", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "SSL_SOCK_WANT_RETRY", value: 0)
!7 = !DIEnumerator(name: "SSL_SOCK_LOST_CONNECTION", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 303, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!10 = !{!11}
!11 = !DIEnumerator(name: "SCM_RIGHTS", value: 1)
!12 = !{!13, !26, !50, !288, !1695, !66}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSLSock", file: !14, line: 33, baseType: !15)
!14 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/sslDirect.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SSLSockStruct", file: !4, line: 57, size: 192, align: 64, elements: !17)
!17 = !{!18, !1688, !1689, !1692, !1693, !1694}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sslCnx", scope: !16, file: !4, line: 58, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !21, line: 178, baseType: !22)
!21 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !23, line: 1422, size: 6592, align: 64, elements: !24)
!23 = !DIFile(filename: "/usr/include/openssl/ssl.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!24 = !{!25, !27, !28, !1217, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1347, !1502, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1628, !1629, !1630, !1631, !1632, !1633, !1636, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1656, !1661, !1662, !1669, !1670, !1671, !1672, !1673, !1674, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !22, file: !23, line: 1427, baseType: !26, size: 32, align: 32)
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !23, line: 1429, baseType: !26, size: 32, align: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !22, file: !23, line: 1431, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_METHOD", file: !23, line: 374, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_method_st", file: !23, line: 438, size: 1856, align: 64, elements: !33)
!33 = !{!34, !35, !39, !43, !44, !45, !46, !51, !52, !58, !59, !60, !61, !67, !73, !77, !78, !82, !1172, !1176, !1180, !1184, !1188, !1192, !1198, !1202, !1205, !1206, !1213}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !32, file: !23, line: 439, baseType: !26, size: 32, align: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_new", scope: !32, file: !23, line: 440, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!26, !19}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_clear", scope: !32, file: !23, line: 441, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !19}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_free", scope: !32, file: !23, line: 442, baseType: !40, size: 64, align: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_accept", scope: !32, file: !23, line: 443, baseType: !36, size: 64, align: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_connect", scope: !32, file: !23, line: 444, baseType: !36, size: 64, align: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read", scope: !32, file: !23, line: 445, baseType: !47, size: 64, align: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!26, !19, !50, !26}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_peek", scope: !32, file: !23, line: 446, baseType: !47, size: 64, align: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write", scope: !32, file: !23, line: 447, baseType: !53, size: 64, align: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!26, !19, !56, !26}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_shutdown", scope: !32, file: !23, line: 448, baseType: !36, size: 64, align: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate", scope: !32, file: !23, line: 449, baseType: !36, size: 64, align: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegotiate_check", scope: !32, file: !23, line: 450, baseType: !36, size: 64, align: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_get_message", scope: !32, file: !23, line: 451, baseType: !62, size: 64, align: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !19, !26, !26, !26, !65, !66}
!65 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_read_bytes", scope: !32, file: !23, line: 453, baseType: !68, size: 64, align: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!26, !19, !26, !71, !26, !26}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_write_bytes", scope: !32, file: !23, line: 455, baseType: !74, size: 64, align: 64, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!26, !19, !26, !56, !26}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_dispatch_alert", scope: !32, file: !23, line: 456, baseType: !36, size: 64, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctrl", scope: !32, file: !23, line: 457, baseType: !79, size: 64, align: 64, offset: 1024)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!65, !19, !26, !65, !50}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_ctrl", scope: !32, file: !23, line: 458, baseType: !83, size: 64, align: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!65, !86, !26, !65, !50}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !21, line: 179, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !23, line: 925, size: 6400, align: 64, elements: !89)
!89 = !{!90, !91, !111, !112, !780, !785, !786, !852, !853, !854, !855, !862, !867, !871, !885, !886, !890, !891, !897, !898, !903, !907, !911, !912, !972, !973, !974, !975, !980, !986, !991, !992, !993, !994, !997, !998, !1002, !1003, !1004, !1005, !1006, !1007, !1012, !1013, !1014, !1015, !1016, !1020, !1021, !1025, !1026, !1027, !1097, !1101, !1102, !1106, !1107, !1108, !1112, !1116, !1117, !1120, !1121, !1144, !1149, !1150, !1155, !1156, !1161, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !88, file: !23, line: 926, baseType: !29, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !88, file: !23, line: 927, baseType: !92, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_CIPHER", file: !23, line: 380, size: 256, align: 64, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !93, file: !23, line: 380, baseType: !96, size: 256, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_STACK", file: !97, line: 72, baseType: !98)
!97 = !DIFile(filename: "/usr/include/openssl/stack.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st", file: !97, line: 66, size: 256, align: 64, elements: !99)
!99 = !{!100, !101, !105, !106, !107}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !98, file: !97, line: 67, baseType: !26, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !98, file: !97, line: 68, baseType: !102, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !98, file: !97, line: 69, baseType: !26, size: 32, align: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc", scope: !98, file: !97, line: 70, baseType: !26, size: 32, align: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !98, file: !97, line: 71, baseType: !108, size: 64, align: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!26, !56, !56}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !88, file: !23, line: 929, baseType: !92, size: 64, align: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cert_store", scope: !88, file: !23, line: 930, baseType: !113, size: 64, align: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_st", file: !115, line: 186, size: 1152, align: 64, elements: !116)
!115 = !DIFile(filename: "/usr/include/openssl/x509_vfy.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!116 = !{!117, !118, !123, !128, !155, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !114, file: !115, line: 188, baseType: !26, size: 32, align: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !114, file: !115, line: 189, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_OBJECT", file: !115, line: 137, size: 256, align: 64, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !120, file: !115, line: 137, baseType: !96, size: 256, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "get_cert_methods", scope: !114, file: !115, line: 191, baseType: !124, size: 64, align: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_LOOKUP", file: !115, line: 136, size: 256, align: 64, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !125, file: !115, line: 136, baseType: !96, size: 256, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !114, file: !115, line: 192, baseType: !129, size: 64, align: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM", file: !115, line: 177, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_st", file: !115, line: 167, size: 512, align: 64, elements: !132)
!132 = !{!133, !134, !139, !141, !142, !143, !144, !145, !151}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !115, line: 168, baseType: !103, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "check_time", scope: !131, file: !115, line: 169, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !136, line: 75, baseType: !137)
!136 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !138, line: 139, baseType: !65)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "inh_flags", scope: !131, file: !115, line: 170, baseType: !140, size: 64, align: 64, offset: 128)
!140 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !115, line: 171, baseType: !140, size: 64, align: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !131, file: !115, line: 172, baseType: !26, size: 32, align: 32, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !131, file: !115, line: 173, baseType: !26, size: 32, align: 32, offset: 288)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !131, file: !115, line: 174, baseType: !26, size: 32, align: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !131, file: !115, line: 175, baseType: !146, size: 64, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_ASN1_OBJECT", file: !148, line: 801, size: 256, align: 64, elements: !149)
!148 = !DIFile(filename: "/usr/include/openssl/asn1.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !147, file: !148, line: 801, baseType: !96, size: 256, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !131, file: !115, line: 176, baseType: !152, size: 64, align: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VERIFY_PARAM_ID", file: !115, line: 159, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_VERIFY_PARAM_ID_st", file: !115, line: 159, flags: DIFlagFwdDecl)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !114, file: !115, line: 195, baseType: !156, size: 64, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!26, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE_CTX", file: !21, line: 162, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_store_ctx_st", file: !115, line: 236, size: 1984, align: 64, elements: !162)
!162 = !{!163, !166, !167, !657, !662, !667, !668, !669, !670, !674, !679, !683, !684, !733, !737, !741, !742, !746, !750, !751, !752, !753, !754, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !161, file: !115, line: 237, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_STORE", file: !21, line: 161, baseType: !114)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "current_method", scope: !161, file: !115, line: 239, baseType: !26, size: 32, align: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !161, file: !115, line: 242, baseType: !168, size: 64, align: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509", file: !21, line: 154, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_st", file: !171, line: 270, size: 1472, align: 64, elements: !172)
!171 = !DIFile(filename: "/usr/include/openssl/x509.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!172 = !{!173, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !625, !629, !632, !635, !639, !643}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cert_info", scope: !170, file: !171, line: 271, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CINF", file: !171, line: 254, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cinf_st", file: !171, line: 242, size: 832, align: 64, elements: !177)
!177 = !{!178, !187, !188, !270, !294, !303, !304, !594, !595, !596, !601}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !176, file: !171, line: 243, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_INTEGER", file: !21, line: 83, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_string_st", file: !148, line: 247, size: 192, align: 64, elements: !182)
!182 = !{!183, !184, !185, !186}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !181, file: !148, line: 248, baseType: !26, size: 32, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !181, file: !148, line: 249, baseType: !26, size: 32, align: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !181, file: !148, line: 250, baseType: !71, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !148, line: 256, baseType: !65, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "serialNumber", scope: !176, file: !171, line: 244, baseType: !179, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !176, file: !171, line: 245, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_ALGOR", file: !21, line: 155, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_algor_st", file: !171, line: 143, size: 128, align: 64, elements: !192)
!192 = !{!193, !208}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm", scope: !191, file: !171, line: 144, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OBJECT", file: !21, line: 103, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_object_st", file: !148, line: 218, size: 320, align: 64, elements: !197)
!197 = !{!198, !201, !202, !203, !204, !207}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !196, file: !148, line: 219, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ln", scope: !196, file: !148, line: 219, baseType: !199, size: 64, align: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !196, file: !148, line: 220, baseType: !26, size: 32, align: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !196, file: !148, line: 221, baseType: !26, size: 32, align: 32, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !196, file: !148, line: 222, baseType: !205, size: 64, align: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !148, line: 223, baseType: !26, size: 32, align: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !191, file: !171, line: 145, baseType: !209, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TYPE", file: !148, line: 561, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_type_st", file: !148, line: 532, size: 128, align: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !211, file: !148, line: 533, baseType: !26, size: 32, align: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !211, file: !148, line: 560, baseType: !215, size: 64, align: 64, offset: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !148, line: 534, size: 64, align: 64, elements: !216)
!216 = !{!217, !218, !220, !223, !224, !225, !228, !231, !234, !237, !240, !243, !246, !249, !252, !255, !258, !261, !264, !265, !266}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !215, file: !148, line: 535, baseType: !103, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !215, file: !148, line: 536, baseType: !219, size: 32, align: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BOOLEAN", file: !21, line: 99, baseType: !26)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_string", scope: !215, file: !148, line: 537, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_STRING", file: !21, line: 98, baseType: !181)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !215, file: !148, line: 538, baseType: !194, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !215, file: !148, line: 539, baseType: !179, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "enumerated", scope: !215, file: !148, line: 540, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENUMERATED", file: !21, line: 84, baseType: !181)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bit_string", scope: !215, file: !148, line: 541, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BIT_STRING", file: !21, line: 85, baseType: !181)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "octet_string", scope: !215, file: !148, line: 542, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_OCTET_STRING", file: !21, line: 86, baseType: !181)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "printablestring", scope: !215, file: !148, line: 543, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_PRINTABLESTRING", file: !21, line: 87, baseType: !181)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "t61string", scope: !215, file: !148, line: 544, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_T61STRING", file: !21, line: 88, baseType: !181)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ia5string", scope: !215, file: !148, line: 545, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_IA5STRING", file: !21, line: 89, baseType: !181)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "generalstring", scope: !215, file: !148, line: 546, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALSTRING", file: !21, line: 90, baseType: !181)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bmpstring", scope: !215, file: !148, line: 547, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_BMPSTRING", file: !21, line: 92, baseType: !181)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "universalstring", scope: !215, file: !148, line: 548, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UNIVERSALSTRING", file: !21, line: 91, baseType: !181)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "utctime", scope: !215, file: !148, line: 549, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTCTIME", file: !21, line: 93, baseType: !181)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "generalizedtime", scope: !215, file: !148, line: 550, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_GENERALIZEDTIME", file: !21, line: 95, baseType: !181)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "visiblestring", scope: !215, file: !148, line: 551, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VISIBLESTRING", file: !21, line: 96, baseType: !181)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "utf8string", scope: !215, file: !148, line: 552, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_UTF8STRING", file: !21, line: 97, baseType: !181)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !215, file: !148, line: 557, baseType: !221, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !215, file: !148, line: 558, baseType: !221, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "asn1_value", scope: !215, file: !148, line: 559, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_VALUE", file: !148, line: 307, baseType: !269)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_VALUE_st", file: !148, line: 307, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !176, file: !171, line: 246, baseType: !271, size: 64, align: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_NAME", file: !21, line: 159, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_name_st", file: !171, line: 179, size: 320, align: 64, elements: !274)
!274 = !{!275, !280, !281, !292, !293}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !273, file: !171, line: 180, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME_ENTRY", file: !171, line: 175, size: 256, align: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !277, file: !171, line: 175, baseType: !96, size: 256, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !273, file: !171, line: 181, baseType: !26, size: 32, align: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !273, file: !171, line: 183, baseType: !282, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "BUF_MEM", file: !21, line: 127, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_mem_st", file: !285, line: 77, size: 192, align: 64, elements: !286)
!285 = !DIFile(filename: "/usr/include/openssl/buffer.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!286 = !{!287, !290, !291}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !284, file: !285, line: 78, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !289, line: 216, baseType: !140)
!289 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !284, file: !285, line: 79, baseType: !103, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !284, file: !285, line: 80, baseType: !288, size: 64, align: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enc", scope: !273, file: !171, line: 188, baseType: !71, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "canon_enclen", scope: !273, file: !171, line: 189, baseType: !26, size: 32, align: 32, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "validity", scope: !176, file: !171, line: 247, baseType: !295, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_VAL", file: !171, line: 155, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_val_st", file: !171, line: 152, size: 128, align: 64, elements: !298)
!298 = !{!299, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "notBefore", scope: !297, file: !171, line: 153, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_TIME", file: !21, line: 94, baseType: !181)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "notAfter", scope: !297, file: !171, line: 154, baseType: !300, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !176, file: !171, line: 248, baseType: !271, size: 64, align: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !176, file: !171, line: 249, baseType: !305, size: 64, align: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_PUBKEY", file: !21, line: 160, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_pubkey_st", file: !171, line: 157, size: 192, align: 64, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "algor", scope: !307, file: !171, line: 158, baseType: !189, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "public_key", scope: !307, file: !171, line: 159, baseType: !229, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !307, file: !171, line: 160, baseType: !312, size: 64, align: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !21, line: 133, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !315, line: 129, size: 448, align: 64, elements: !316)
!315 = !DIFile(filename: "/usr/include/openssl/evp.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!316 = !{!317, !318, !319, !320, !325, !329, !588, !589}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !314, file: !315, line: 130, baseType: !26, size: 32, align: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "save_type", scope: !314, file: !315, line: 131, baseType: !26, size: 32, align: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !314, file: !315, line: 132, baseType: !26, size: 32, align: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ameth", scope: !314, file: !315, line: 133, baseType: !321, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_ASN1_METHOD", file: !21, line: 135, baseType: !324)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_asn1_method_st", file: !21, line: 135, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !314, file: !315, line: 134, baseType: !326, size: 64, align: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENGINE", file: !21, line: 177, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "engine_st", file: !21, line: 177, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !314, file: !315, line: 149, baseType: !330, size: 64, align: 64, offset: 256)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !315, line: 135, size: 64, align: 64, elements: !331)
!331 = !{!332, !333, !464, !532, !585}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !330, file: !315, line: 136, baseType: !103, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rsa", scope: !330, file: !315, line: 138, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_st", file: !336, line: 132, size: 1344, align: 64, elements: !337)
!336 = !DIFile(filename: "/usr/include/openssl/rsa.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!337 = !{!338, !339, !340, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !453, !454, !455, !456, !457, !458, !459, !463}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !335, file: !336, line: 137, baseType: !26, size: 32, align: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !335, file: !336, line: 138, baseType: !65, size: 64, align: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !335, file: !336, line: 139, baseType: !341, size: 64, align: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA_METHOD", file: !21, line: 147, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_meth_st", file: !336, line: 85, size: 896, align: 64, elements: !345)
!345 = !{!346, !347, !353, !354, !355, !356, !376, !393, !397, !398, !399, !400, !408, !412}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !336, line: 86, baseType: !199, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_enc", scope: !344, file: !336, line: 87, baseType: !348, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!26, !26, !205, !71, !351, !26}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "RSA", file: !21, line: 146, baseType: !335)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_pub_dec", scope: !344, file: !336, line: 89, baseType: !348, size: 64, align: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_enc", scope: !344, file: !336, line: 91, baseType: !348, size: 64, align: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_priv_dec", scope: !344, file: !336, line: 93, baseType: !348, size: 64, align: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_mod_exp", scope: !344, file: !336, line: 96, baseType: !357, size: 64, align: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!26, !360, !371, !351, !373}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIGNUM", file: !21, line: 120, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_st", file: !363, line: 313, size: 192, align: 64, elements: !364)
!363 = !DIFile(filename: "/usr/include/openssl/bn.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!364 = !{!365, !367, !368, !369, !370}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !362, file: !363, line: 314, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !362, file: !363, line: 316, baseType: !26, size: 32, align: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dmax", scope: !362, file: !363, line: 318, baseType: !26, size: 32, align: 32, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !362, file: !363, line: 319, baseType: !26, size: 32, align: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !363, line: 320, baseType: !26, size: 32, align: 32, offset: 160)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_CTX", file: !21, line: 121, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "bignum_ctx", file: !21, line: 121, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !344, file: !336, line: 98, baseType: !377, size: 64, align: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!26, !360, !371, !371, !371, !373, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_MONT_CTX", file: !21, line: 123, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_mont_ctx_st", file: !363, line: 324, size: 832, align: 64, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !392}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !382, file: !363, line: 325, baseType: !26, size: 32, align: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "RR", scope: !382, file: !363, line: 326, baseType: !361, size: 192, align: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !382, file: !363, line: 327, baseType: !361, size: 192, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "Ni", scope: !382, file: !363, line: 328, baseType: !361, size: 192, align: 64, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "n0", scope: !382, file: !363, line: 330, baseType: !389, size: 128, align: 64, offset: 640)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, align: 64, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 2)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !363, line: 333, baseType: !26, size: 32, align: 32, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !344, file: !336, line: 101, baseType: !394, size: 64, align: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!26, !351}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !344, file: !336, line: 103, baseType: !394, size: 64, align: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !336, line: 105, baseType: !26, size: 32, align: 32, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !344, file: !336, line: 107, baseType: !103, size: 64, align: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_sign", scope: !344, file: !336, line: 116, baseType: !401, size: 64, align: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!26, !26, !205, !404, !71, !405, !406}
!404 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_verify", scope: !344, file: !336, line: 120, baseType: !409, size: 64, align: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!26, !26, !205, !404, !205, !404, !406}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_keygen", scope: !344, file: !336, line: 129, baseType: !413, size: 64, align: 64, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!26, !351, !26, !360, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_GENCB", file: !21, line: 125, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bn_gencb_st", file: !363, line: 349, size: 192, align: 64, elements: !419)
!419 = !{!420, !421, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !418, file: !363, line: 350, baseType: !404, size: 32, align: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !418, file: !363, line: 351, baseType: !50, size: 64, align: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !418, file: !363, line: 357, baseType: !423, size: 64, align: 64, offset: 128)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !363, line: 352, size: 64, align: 64, elements: !424)
!424 = !{!425, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "cb_1", scope: !423, file: !363, line: 354, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !26, !26, !50}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cb_2", scope: !423, file: !363, line: 356, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!26, !26, !26, !416}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !335, file: !336, line: 141, baseType: !326, size: 64, align: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !335, file: !336, line: 142, baseType: !360, size: 64, align: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !335, file: !336, line: 143, baseType: !360, size: 64, align: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !335, file: !336, line: 144, baseType: !360, size: 64, align: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !335, file: !336, line: 145, baseType: !360, size: 64, align: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !335, file: !336, line: 146, baseType: !360, size: 64, align: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dmp1", scope: !335, file: !336, line: 147, baseType: !360, size: 64, align: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dmq1", scope: !335, file: !336, line: 148, baseType: !360, size: 64, align: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "iqmp", scope: !335, file: !336, line: 149, baseType: !360, size: 64, align: 64, offset: 704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !335, file: !336, line: 151, baseType: !443, size: 128, align: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRYPTO_EX_DATA", file: !21, line: 195, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ex_data_st", file: !445, line: 292, size: 128, align: 64, elements: !446)
!445 = !DIFile(filename: "/usr/include/openssl/crypto.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!446 = !{!447, !452}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !444, file: !445, line: 293, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_void", file: !445, line: 297, size: 256, align: 64, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !449, file: !445, line: 297, baseType: !96, size: 256, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !444, file: !445, line: 295, baseType: !26, size: 32, align: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !335, file: !336, line: 152, baseType: !26, size: 32, align: 32, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !336, line: 153, baseType: !26, size: 32, align: 32, offset: 928)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_n", scope: !335, file: !336, line: 155, baseType: !380, size: 64, align: 64, offset: 960)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_p", scope: !335, file: !336, line: 156, baseType: !380, size: 64, align: 64, offset: 1024)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_method_mod_q", scope: !335, file: !336, line: 157, baseType: !380, size: 64, align: 64, offset: 1088)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "bignum_data", scope: !335, file: !336, line: 162, baseType: !103, size: 64, align: 64, offset: 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "blinding", scope: !335, file: !336, line: 163, baseType: !460, size: 64, align: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "BN_BLINDING", file: !21, line: 122, baseType: !462)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "bn_blinding_st", file: !21, line: 122, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mt_blinding", scope: !335, file: !336, line: 164, baseType: !460, size: 64, align: 64, offset: 1280)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dsa", scope: !330, file: !315, line: 141, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_st", file: !467, line: 155, size: 1088, align: 64, elements: !468)
!467 = !DIFile(filename: "/usr/include/openssl/dsa.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !531}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !466, file: !467, line: 160, baseType: !26, size: 32, align: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !466, file: !467, line: 161, baseType: !65, size: 64, align: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "write_params", scope: !466, file: !467, line: 162, baseType: !26, size: 32, align: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !466, file: !467, line: 163, baseType: !360, size: 64, align: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !466, file: !467, line: 164, baseType: !360, size: 64, align: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !466, file: !467, line: 165, baseType: !360, size: 64, align: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !466, file: !467, line: 166, baseType: !360, size: 64, align: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !466, file: !467, line: 167, baseType: !360, size: 64, align: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "kinv", scope: !466, file: !467, line: 168, baseType: !360, size: 64, align: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !466, file: !467, line: 169, baseType: !360, size: 64, align: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !467, line: 170, baseType: !26, size: 32, align: 32, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !466, file: !467, line: 172, baseType: !380, size: 64, align: 64, offset: 704)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !466, file: !467, line: 173, baseType: !26, size: 32, align: 32, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !466, file: !467, line: 174, baseType: !443, size: 128, align: 64, offset: 832)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !466, file: !467, line: 175, baseType: !484, size: 64, align: 64, offset: 960)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_METHOD", file: !21, line: 144, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dsa_method", file: !467, line: 129, size: 768, align: 64, elements: !488)
!488 = !{!489, !490, !502, !507, !511, !515, !519, !523, !524, !525, !526, !530}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !467, line: 130, baseType: !199, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_sign", scope: !487, file: !467, line: 131, baseType: !491, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !205, !26, !500}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA_SIG", file: !467, line: 127, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DSA_SIG_st", file: !467, line: 124, size: 128, align: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !496, file: !467, line: 125, baseType: !360, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !496, file: !467, line: 126, baseType: !360, size: 64, align: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSA", file: !21, line: 143, baseType: !466)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_sign_setup", scope: !487, file: !467, line: 132, baseType: !503, size: 64, align: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!26, !500, !373, !506, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_do_verify", scope: !487, file: !467, line: 134, baseType: !508, size: 64, align: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!26, !205, !26, !494, !500}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_mod_exp", scope: !487, file: !467, line: 136, baseType: !512, size: 64, align: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!26, !500, !360, !360, !360, !360, !360, !360, !373, !380}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !487, file: !467, line: 140, baseType: !516, size: 64, align: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!26, !500, !360, !360, !371, !371, !373, !380}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !487, file: !467, line: 142, baseType: !520, size: 64, align: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!26, !500}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !487, file: !467, line: 143, baseType: !520, size: 64, align: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !467, line: 144, baseType: !26, size: 32, align: 32, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !487, file: !467, line: 145, baseType: !103, size: 64, align: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_paramgen", scope: !487, file: !467, line: 147, baseType: !527, size: 64, align: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!26, !500, !26, !205, !26, !66, !366, !416}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dsa_keygen", scope: !487, file: !467, line: 152, baseType: !520, size: 64, align: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !466, file: !467, line: 177, baseType: !326, size: 64, align: 64, offset: 1024)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !330, file: !315, line: 144, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !535, line: 135, size: 1152, align: 64, elements: !536)
!535 = !DIFile(filename: "/usr/include/openssl/dh.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !584}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !534, file: !535, line: 140, baseType: !26, size: 32, align: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !534, file: !535, line: 141, baseType: !26, size: 32, align: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !534, file: !535, line: 142, baseType: !360, size: 64, align: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !534, file: !535, line: 143, baseType: !360, size: 64, align: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !534, file: !535, line: 144, baseType: !65, size: 64, align: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pub_key", scope: !534, file: !535, line: 145, baseType: !360, size: 64, align: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "priv_key", scope: !534, file: !535, line: 146, baseType: !360, size: 64, align: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !535, line: 147, baseType: !26, size: 32, align: 32, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_mont_p", scope: !534, file: !535, line: 148, baseType: !380, size: 64, align: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !534, file: !535, line: 150, baseType: !360, size: 64, align: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !534, file: !535, line: 151, baseType: !360, size: 64, align: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !534, file: !535, line: 152, baseType: !71, size: 64, align: 64, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "seedlen", scope: !534, file: !535, line: 153, baseType: !26, size: 32, align: 32, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !534, file: !535, line: 154, baseType: !360, size: 64, align: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !534, file: !535, line: 155, baseType: !26, size: 32, align: 32, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !534, file: !535, line: 156, baseType: !443, size: 128, align: 64, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !534, file: !535, line: 157, baseType: !554, size: 64, align: 64, offset: 1024)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH_METHOD", file: !21, line: 141, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dh_method", file: !535, line: 117, size: 576, align: 64, elements: !558)
!558 = !{!559, !560, !566, !570, !576, !577, !578, !579, !580}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !557, file: !535, line: 118, baseType: !199, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "generate_key", scope: !557, file: !535, line: 120, baseType: !561, size: 64, align: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!26, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !21, line: 140, baseType: !534)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "compute_key", scope: !557, file: !535, line: 121, baseType: !567, size: 64, align: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!26, !71, !371, !564}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bn_mod_exp", scope: !557, file: !535, line: 123, baseType: !571, size: 64, align: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!26, !574, !360, !371, !371, !371, !373, !380}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !557, file: !535, line: 126, baseType: !561, size: 64, align: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !557, file: !535, line: 127, baseType: !561, size: 64, align: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !535, line: 128, baseType: !26, size: 32, align: 32, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !557, file: !535, line: 129, baseType: !103, size: 64, align: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "generate_params", scope: !557, file: !535, line: 131, baseType: !581, size: 64, align: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!26, !564, !26, !26, !416}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !534, file: !535, line: 158, baseType: !326, size: 64, align: 64, offset: 1088)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ec", scope: !330, file: !315, line: 147, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "ec_key_st", file: !315, line: 147, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "save_parameters", scope: !314, file: !315, line: 150, baseType: !26, size: 32, align: 32, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !314, file: !315, line: 151, baseType: !590, size: 64, align: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ATTRIBUTE", file: !171, line: 223, size: 256, align: 64, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !591, file: !171, line: 223, baseType: !96, size: 256, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "issuerUID", scope: !176, file: !171, line: 250, baseType: !229, size: 64, align: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "subjectUID", scope: !176, file: !171, line: 251, baseType: !229, size: 64, align: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !176, file: !171, line: 252, baseType: !597, size: 64, align: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_EXTENSION", file: !171, line: 204, size: 256, align: 64, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !598, file: !171, line: 204, baseType: !96, size: 256, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !176, file: !171, line: 253, baseType: !602, size: 192, align: 64, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ASN1_ENCODING", file: !148, line: 269, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ASN1_ENCODING_st", file: !148, line: 265, size: 192, align: 64, elements: !604)
!604 = !{!605, !606, !607}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !603, file: !148, line: 266, baseType: !71, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !603, file: !148, line: 267, baseType: !65, size: 64, align: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !603, file: !148, line: 268, baseType: !26, size: 32, align: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !170, file: !171, line: 272, baseType: !189, size: 64, align: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !170, file: !171, line: 273, baseType: !229, size: 64, align: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !170, file: !171, line: 274, baseType: !26, size: 32, align: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !170, file: !171, line: 275, baseType: !26, size: 32, align: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !171, line: 276, baseType: !103, size: 64, align: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !170, file: !171, line: 277, baseType: !443, size: 128, align: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pathlen", scope: !170, file: !171, line: 279, baseType: !65, size: 64, align: 64, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ex_pcpathlen", scope: !170, file: !171, line: 280, baseType: !65, size: 64, align: 64, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ex_flags", scope: !170, file: !171, line: 281, baseType: !140, size: 64, align: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ex_kusage", scope: !170, file: !171, line: 282, baseType: !140, size: 64, align: 64, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ex_xkusage", scope: !170, file: !171, line: 283, baseType: !140, size: 64, align: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ex_nscert", scope: !170, file: !171, line: 284, baseType: !140, size: 64, align: 64, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "skid", scope: !170, file: !171, line: 285, baseType: !232, size: 64, align: 64, offset: 832)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !170, file: !171, line: 286, baseType: !622, size: 64, align: 64, offset: 896)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "AUTHORITY_KEYID", file: !21, line: 186, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "AUTHORITY_KEYID_st", file: !21, line: 186, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "policy_cache", scope: !170, file: !171, line: 287, baseType: !626, size: 64, align: 64, offset: 960)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_CACHE", file: !21, line: 184, baseType: !628)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_CACHE_st", file: !21, line: 184, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "crldp", scope: !170, file: !171, line: 288, baseType: !630, size: 64, align: 64, offset: 1024)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_DIST_POINT", file: !171, line: 288, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "altname", scope: !170, file: !171, line: 289, baseType: !633, size: 64, align: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAME", file: !171, line: 289, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !170, file: !171, line: 290, baseType: !636, size: 64, align: 64, offset: 1152)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "NAME_CONSTRAINTS", file: !21, line: 189, baseType: !638)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "NAME_CONSTRAINTS_st", file: !21, line: 189, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !170, file: !171, line: 296, baseType: !640, size: 160, align: 8, offset: 1216)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, align: 8, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 20)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !170, file: !171, line: 298, baseType: !644, size: 64, align: 64, offset: 1408)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CERT_AUX", file: !171, line: 268, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x509_cert_aux_st", file: !171, line: 262, size: 320, align: 64, elements: !647)
!647 = !{!648, !649, !650, !651, !652}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !646, file: !171, line: 263, baseType: !146, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !646, file: !171, line: 264, baseType: !146, size: 64, align: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !646, file: !171, line: 265, baseType: !262, size: 64, align: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "keyid", scope: !646, file: !171, line: 266, baseType: !232, size: 64, align: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !646, file: !171, line: 267, baseType: !653, size: 64, align: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_ALGOR", file: !148, line: 170, size: 256, align: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !654, file: !148, line: 170, baseType: !96, size: 256, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !161, file: !115, line: 244, baseType: !658, size: 64, align: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509", file: !171, line: 301, size: 256, align: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !659, file: !171, line: 301, baseType: !96, size: 256, align: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "crls", scope: !161, file: !115, line: 246, baseType: !663, size: 64, align: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64, align: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_CRL", file: !171, line: 476, size: 256, align: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !664, file: !171, line: 476, baseType: !96, size: 256, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !161, file: !115, line: 247, baseType: !129, size: 64, align: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "other_ctx", scope: !161, file: !115, line: 249, baseType: !50, size: 64, align: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !161, file: !115, line: 252, baseType: !156, size: 64, align: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !161, file: !115, line: 254, baseType: !671, size: 64, align: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64, align: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!26, !26, !159}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !161, file: !115, line: 256, baseType: !675, size: 64, align: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64, align: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!26, !678, !159, !168}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !161, file: !115, line: 258, baseType: !680, size: 64, align: 64, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64, align: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!26, !159, !168, !168}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !161, file: !115, line: 260, baseType: !156, size: 64, align: 64, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !161, file: !115, line: 262, baseType: !685, size: 64, align: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64, align: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!26, !159, !688, !168}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64, align: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL", file: !21, line: 156, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_st", file: !171, line: 452, size: 960, align: 64, elements: !692)
!692 = !{!693, !710, !711, !712, !713, !714, !715, !719, !720, !721, !722, !723, !724, !727, !732}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "crl", scope: !691, file: !171, line: 454, baseType: !694, size: 64, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_INFO", file: !171, line: 450, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X509_crl_info_st", file: !171, line: 441, size: 640, align: 64, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !708, !709}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !696, file: !171, line: 442, baseType: !179, size: 64, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !696, file: !171, line: 443, baseType: !189, size: 64, align: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "issuer", scope: !696, file: !171, line: 444, baseType: !271, size: 64, align: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lastUpdate", scope: !696, file: !171, line: 445, baseType: !300, size: 64, align: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nextUpdate", scope: !696, file: !171, line: 446, baseType: !300, size: 64, align: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "revoked", scope: !696, file: !171, line: 447, baseType: !704, size: 64, align: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_REVOKED", file: !171, line: 438, size: 256, align: 64, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !705, file: !171, line: 438, baseType: !96, size: 256, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !696, file: !171, line: 448, baseType: !597, size: 64, align: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !696, file: !171, line: 449, baseType: !602, size: 192, align: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sig_alg", scope: !691, file: !171, line: 455, baseType: !189, size: 64, align: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !691, file: !171, line: 456, baseType: !229, size: 64, align: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !691, file: !171, line: 457, baseType: !26, size: 32, align: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !171, line: 458, baseType: !26, size: 32, align: 32, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "akid", scope: !691, file: !171, line: 460, baseType: !622, size: 64, align: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "idp", scope: !691, file: !171, line: 461, baseType: !716, size: 64, align: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISSUING_DIST_POINT", file: !21, line: 188, baseType: !718)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "ISSUING_DIST_POINT_st", file: !21, line: 188, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "idp_flags", scope: !691, file: !171, line: 463, baseType: !26, size: 32, align: 32, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "idp_reasons", scope: !691, file: !171, line: 464, baseType: !26, size: 32, align: 32, offset: 416)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "crl_number", scope: !691, file: !171, line: 466, baseType: !179, size: 64, align: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base_crl_number", scope: !691, file: !171, line: 467, baseType: !179, size: 64, align: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sha1_hash", scope: !691, file: !171, line: 469, baseType: !640, size: 160, align: 8, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "issuers", scope: !691, file: !171, line: 471, baseType: !725, size: 64, align: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64, align: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_GENERAL_NAMES", file: !171, line: 471, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !691, file: !171, line: 472, baseType: !728, size: 64, align: 64, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64, align: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_CRL_METHOD", file: !21, line: 157, baseType: !731)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "x509_crl_method_st", file: !21, line: 157, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "meth_data", scope: !691, file: !171, line: 473, baseType: !50, size: 64, align: 64, offset: 896)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !161, file: !115, line: 264, baseType: !734, size: 64, align: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!26, !159, !689}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !161, file: !115, line: 266, baseType: !738, size: 64, align: 64, offset: 896)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!26, !159, !689, !168}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "check_policy", scope: !161, file: !115, line: 267, baseType: !156, size: 64, align: 64, offset: 960)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !161, file: !115, line: 268, baseType: !743, size: 64, align: 64, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, align: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!658, !159, !271}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !161, file: !115, line: 269, baseType: !747, size: 64, align: 64, offset: 1088)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64, align: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!663, !159, !271}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !161, file: !115, line: 270, baseType: !156, size: 64, align: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !161, file: !115, line: 273, baseType: !26, size: 32, align: 32, offset: 1216)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "last_untrusted", scope: !161, file: !115, line: 275, baseType: !26, size: 32, align: 32, offset: 1248)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !161, file: !115, line: 277, baseType: !658, size: 64, align: 64, offset: 1280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !161, file: !115, line: 279, baseType: !755, size: 64, align: 64, offset: 1344)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_POLICY_TREE", file: !21, line: 183, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "X509_POLICY_TREE_st", file: !21, line: 183, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_policy", scope: !161, file: !115, line: 281, baseType: !26, size: 32, align: 32, offset: 1408)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "error_depth", scope: !161, file: !115, line: 283, baseType: !26, size: 32, align: 32, offset: 1440)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !161, file: !115, line: 284, baseType: !26, size: 32, align: 32, offset: 1472)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "current_cert", scope: !161, file: !115, line: 285, baseType: !168, size: 64, align: 64, offset: 1536)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "current_issuer", scope: !161, file: !115, line: 287, baseType: !168, size: 64, align: 64, offset: 1600)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl", scope: !161, file: !115, line: 289, baseType: !689, size: 64, align: 64, offset: 1664)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "current_crl_score", scope: !161, file: !115, line: 291, baseType: !26, size: 32, align: 32, offset: 1728)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "current_reasons", scope: !161, file: !115, line: 293, baseType: !404, size: 32, align: 32, offset: 1760)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !161, file: !115, line: 295, baseType: !159, size: 64, align: 64, offset: 1792)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !161, file: !115, line: 296, baseType: !443, size: 128, align: 64, offset: 1856)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "verify_cb", scope: !114, file: !115, line: 197, baseType: !671, size: 64, align: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "get_issuer", scope: !114, file: !115, line: 199, baseType: !675, size: 64, align: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "check_issued", scope: !114, file: !115, line: 201, baseType: !680, size: 64, align: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "check_revocation", scope: !114, file: !115, line: 203, baseType: !156, size: 64, align: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "get_crl", scope: !114, file: !115, line: 205, baseType: !685, size: 64, align: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "check_crl", scope: !114, file: !115, line: 207, baseType: !734, size: 64, align: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cert_crl", scope: !114, file: !115, line: 209, baseType: !738, size: 64, align: 64, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_certs", scope: !114, file: !115, line: 210, baseType: !743, size: 64, align: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_crls", scope: !114, file: !115, line: 211, baseType: !747, size: 64, align: 64, offset: 832)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !114, file: !115, line: 212, baseType: !156, size: 64, align: 64, offset: 896)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !114, file: !115, line: 213, baseType: !443, size: 128, align: 64, offset: 960)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !114, file: !115, line: 214, baseType: !26, size: 32, align: 32, offset: 1088)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sessions", scope: !88, file: !23, line: 931, baseType: !781, size: 64, align: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lhash_st_SSL_SESSION", file: !23, line: 923, size: 32, align: 32, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !782, file: !23, line: 923, baseType: !26, size: 32, align: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !88, file: !23, line: 936, baseType: !140, size: 64, align: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_head", scope: !88, file: !23, line: 937, baseType: !787, size: 64, align: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_session_st", file: !23, line: 498, size: 2816, align: 64, elements: !789)
!789 = !{!790, !791, !792, !796, !797, !801, !802, !806, !807, !808, !809, !810, !811, !814, !815, !816, !817, !818, !819, !820, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !788, file: !23, line: 499, baseType: !26, size: 32, align: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg_length", scope: !788, file: !23, line: 502, baseType: !404, size: 32, align: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "key_arg", scope: !788, file: !23, line: 503, baseType: !793, size: 64, align: 8, offset: 64)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, align: 8, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 8)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "master_key_length", scope: !788, file: !23, line: 504, baseType: !26, size: 32, align: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "master_key", scope: !788, file: !23, line: 505, baseType: !798, size: 384, align: 8, offset: 160)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 384, align: 8, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 48)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !788, file: !23, line: 507, baseType: !404, size: 32, align: 32, offset: 544)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !788, file: !23, line: 508, baseType: !803, size: 256, align: 8, offset: 576)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, align: 8, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !788, file: !23, line: 514, baseType: !404, size: 32, align: 32, offset: 832)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !788, file: !23, line: 515, baseType: !803, size: 256, align: 8, offset: 864)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !788, file: !23, line: 521, baseType: !103, size: 64, align: 64, offset: 1152)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity", scope: !788, file: !23, line: 522, baseType: !103, size: 64, align: 64, offset: 1216)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "not_resumable", scope: !788, file: !23, line: 529, baseType: !26, size: 32, align: 32, offset: 1280)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cert", scope: !788, file: !23, line: 531, baseType: !812, size: 64, align: 64, offset: 1344)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64, align: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "sess_cert_st", file: !23, line: 531, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !788, file: !23, line: 538, baseType: !168, size: 64, align: 64, offset: 1408)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !788, file: !23, line: 543, baseType: !65, size: 64, align: 64, offset: 1472)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !788, file: !23, line: 544, baseType: !26, size: 32, align: 32, offset: 1536)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !788, file: !23, line: 545, baseType: !65, size: 64, align: 64, offset: 1600)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !788, file: !23, line: 546, baseType: !65, size: 64, align: 64, offset: 1664)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "compress_meth", scope: !788, file: !23, line: 547, baseType: !404, size: 32, align: 32, offset: 1728)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !788, file: !23, line: 548, baseType: !821, size: 64, align: 64, offset: 1792)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CIPHER", file: !23, line: 375, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_cipher_st", file: !23, line: 418, size: 704, align: 64, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !824, file: !23, line: 419, baseType: !26, size: 32, align: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !824, file: !23, line: 420, baseType: !199, size: 64, align: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !824, file: !23, line: 421, baseType: !140, size: 64, align: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mkey", scope: !824, file: !23, line: 426, baseType: !140, size: 64, align: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_auth", scope: !824, file: !23, line: 427, baseType: !140, size: 64, align: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_enc", scope: !824, file: !23, line: 428, baseType: !140, size: 64, align: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_mac", scope: !824, file: !23, line: 429, baseType: !140, size: 64, align: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm_ssl", scope: !824, file: !23, line: 430, baseType: !140, size: 64, align: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "algo_strength", scope: !824, file: !23, line: 431, baseType: !140, size: 64, align: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "algorithm2", scope: !824, file: !23, line: 432, baseType: !140, size: 64, align: 64, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "strength_bits", scope: !824, file: !23, line: 433, baseType: !26, size: 32, align: 32, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "alg_bits", scope: !824, file: !23, line: 434, baseType: !26, size: 32, align: 32, offset: 672)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_id", scope: !788, file: !23, line: 549, baseType: !140, size: 64, align: 64, offset: 1856)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !788, file: !23, line: 551, baseType: !92, size: 64, align: 64, offset: 1920)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !788, file: !23, line: 552, baseType: !443, size: 128, align: 64, offset: 1984)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !788, file: !23, line: 557, baseType: !787, size: 64, align: 64, offset: 2112)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !23, line: 557, baseType: !787, size: 64, align: 64, offset: 2176)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !788, file: !23, line: 559, baseType: !103, size: 64, align: 64, offset: 2240)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !788, file: !23, line: 561, baseType: !288, size: 64, align: 64, offset: 2304)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !788, file: !23, line: 562, baseType: !71, size: 64, align: 64, offset: 2368)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !788, file: !23, line: 563, baseType: !288, size: 64, align: 64, offset: 2432)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !788, file: !23, line: 564, baseType: !71, size: 64, align: 64, offset: 2496)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick", scope: !788, file: !23, line: 567, baseType: !71, size: 64, align: 64, offset: 2560)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticklen", scope: !788, file: !23, line: 568, baseType: !288, size: 64, align: 64, offset: 2624)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_lifetime_hint", scope: !788, file: !23, line: 569, baseType: !65, size: 64, align: 64, offset: 2688)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "srp_username", scope: !788, file: !23, line: 572, baseType: !103, size: 64, align: 64, offset: 2752)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_tail", scope: !88, file: !23, line: 938, baseType: !787, size: 64, align: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_mode", scope: !88, file: !23, line: 944, baseType: !26, size: 32, align: 32, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "session_timeout", scope: !88, file: !23, line: 950, baseType: !65, size: 64, align: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "new_session_cb", scope: !88, file: !23, line: 960, baseType: !856, size: 64, align: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!26, !859, !860}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_SESSION", file: !23, line: 376, baseType: !788)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "remove_session_cb", scope: !88, file: !23, line: 961, baseType: !863, size: 64, align: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64, align: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !866, !860}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "get_session_cb", scope: !88, file: !23, line: 962, baseType: !868, size: 64, align: 64, offset: 768)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, align: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!860, !859, !71, !26, !66}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !88, file: !23, line: 980, baseType: !872, size: 352, align: 32, offset: 832)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !23, line: 964, size: 352, align: 32, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect", scope: !872, file: !23, line: 965, baseType: !26, size: 32, align: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_renegotiate", scope: !872, file: !23, line: 966, baseType: !26, size: 32, align: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sess_connect_good", scope: !872, file: !23, line: 967, baseType: !26, size: 32, align: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept", scope: !872, file: !23, line: 968, baseType: !26, size: 32, align: 32, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_renegotiate", scope: !872, file: !23, line: 969, baseType: !26, size: 32, align: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sess_accept_good", scope: !872, file: !23, line: 970, baseType: !26, size: 32, align: 32, offset: 160)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sess_miss", scope: !872, file: !23, line: 971, baseType: !26, size: 32, align: 32, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sess_timeout", scope: !872, file: !23, line: 972, baseType: !26, size: 32, align: 32, offset: 224)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cache_full", scope: !872, file: !23, line: 973, baseType: !26, size: 32, align: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sess_hit", scope: !872, file: !23, line: 974, baseType: !26, size: 32, align: 32, offset: 288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sess_cb_hit", scope: !872, file: !23, line: 975, baseType: !26, size: 32, align: 32, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !88, file: !23, line: 982, baseType: !26, size: 32, align: 32, offset: 1184)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_callback", scope: !88, file: !23, line: 985, baseType: !887, size: 64, align: 64, offset: 1216)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64, align: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!26, !159, !50}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_arg", scope: !88, file: !23, line: 986, baseType: !50, size: 64, align: 64, offset: 1280)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback", scope: !88, file: !23, line: 993, baseType: !892, size: 64, align: 64, offset: 1344)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "pem_password_cb", file: !894, line: 389, baseType: !895)
!894 = !DIFile(filename: "/usr/include/openssl/pem.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!895 = !DISubroutineType(types: !896)
!896 = !{!26, !103, !26, !26, !50}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "default_passwd_callback_userdata", scope: !88, file: !23, line: 996, baseType: !50, size: 64, align: 64, offset: 1408)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_cb", scope: !88, file: !23, line: 999, baseType: !899, size: 64, align: 64, offset: 1472)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, align: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!26, !19, !678, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "app_gen_cookie_cb", scope: !88, file: !23, line: 1002, baseType: !904, size: 64, align: 64, offset: 1536)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64, align: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!26, !19, !71, !405}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "app_verify_cookie_cb", scope: !88, file: !23, line: 1006, baseType: !908, size: 64, align: 64, offset: 1600)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64, align: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!26, !19, !71, !404}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !88, file: !23, line: 1009, baseType: !443, size: 128, align: 64, offset: 1664)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rsa_md5", scope: !88, file: !23, line: 1011, baseType: !913, size: 64, align: 64, offset: 1792)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !21, line: 131, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_st", file: !315, line: 160, size: 960, align: 64, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !942, !943, !947, !953, !954, !958, !962, !966, !967, !968}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !916, file: !315, line: 161, baseType: !26, size: 32, align: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_type", scope: !916, file: !315, line: 162, baseType: !26, size: 32, align: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !916, file: !315, line: 163, baseType: !26, size: 32, align: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !916, file: !315, line: 164, baseType: !140, size: 64, align: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !916, file: !315, line: 165, baseType: !923, size: 64, align: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64, align: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!26, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !21, line: 132, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "env_md_ctx_st", file: !315, line: 268, size: 384, align: 64, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !938}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !928, file: !315, line: 269, baseType: !913, size: 64, align: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !928, file: !315, line: 270, baseType: !326, size: 64, align: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !928, file: !315, line: 272, baseType: !140, size: 64, align: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "md_data", scope: !928, file: !315, line: 273, baseType: !50, size: 64, align: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pctx", scope: !928, file: !315, line: 275, baseType: !935, size: 64, align: 64, offset: 256)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY_CTX", file: !21, line: 138, baseType: !937)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_ctx_st", file: !21, line: 138, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !928, file: !315, line: 277, baseType: !939, size: 64, align: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64, align: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!26, !926, !56, !288}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !916, file: !315, line: 166, baseType: !939, size: 64, align: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !916, file: !315, line: 167, baseType: !944, size: 64, align: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64, align: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!26, !926, !71}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !916, file: !315, line: 168, baseType: !948, size: 64, align: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64, align: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!26, !926, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !916, file: !315, line: 169, baseType: !923, size: 64, align: 64, offset: 448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !916, file: !315, line: 171, baseType: !955, size: 64, align: 64, offset: 512)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64, align: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!26, !26, !205, !404, !71, !405, !50}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !916, file: !315, line: 173, baseType: !959, size: 64, align: 64, offset: 576)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, align: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!26, !26, !205, !404, !205, !404, !50}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "required_pkey_type", scope: !916, file: !315, line: 176, baseType: !963, size: 160, align: 32, offset: 640)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, align: 32, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 5)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !916, file: !315, line: 177, baseType: !26, size: 32, align: 32, offset: 800)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !916, file: !315, line: 178, baseType: !26, size: 32, align: 32, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctrl", scope: !916, file: !315, line: 180, baseType: !969, size: 64, align: 64, offset: 896)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64, align: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!26, !926, !26, !26, !50}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !88, file: !23, line: 1012, baseType: !913, size: 64, align: 64, offset: 1856)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !88, file: !23, line: 1013, baseType: !913, size: 64, align: 64, offset: 1920)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "extra_certs", scope: !88, file: !23, line: 1015, baseType: !658, size: 64, align: 64, offset: 1984)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "comp_methods", scope: !88, file: !23, line: 1016, baseType: !976, size: 64, align: 64, offset: 2048)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64, align: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SSL_COMP", file: !23, line: 922, size: 256, align: 64, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !977, file: !23, line: 922, baseType: !96, size: 256, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !88, file: !23, line: 1021, baseType: !981, size: 64, align: 64, offset: 2112)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64, align: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !984, !26, !26}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !88, file: !23, line: 1024, baseType: !987, size: 64, align: 64, offset: 2176)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64, align: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_X509_NAME", file: !171, line: 192, size: 256, align: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !988, file: !171, line: 192, baseType: !96, size: 256, align: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !88, file: !23, line: 1031, baseType: !140, size: 64, align: 64, offset: 2240)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !88, file: !23, line: 1032, baseType: !140, size: 64, align: 64, offset: 2304)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !88, file: !23, line: 1033, baseType: !65, size: 64, align: 64, offset: 2368)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !88, file: !23, line: 1035, baseType: !995, size: 64, align: 64, offset: 2432)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64, align: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "cert_st", file: !23, line: 1035, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !88, file: !23, line: 1036, baseType: !26, size: 32, align: 32, offset: 2496)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !88, file: !23, line: 1039, baseType: !999, size: 64, align: 64, offset: 2560)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64, align: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !26, !26, !26, !56, !288, !19, !50}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !88, file: !23, line: 1041, baseType: !50, size: 64, align: 64, offset: 2624)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !88, file: !23, line: 1043, baseType: !26, size: 32, align: 32, offset: 2688)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !88, file: !23, line: 1044, baseType: !404, size: 32, align: 32, offset: 2720)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !88, file: !23, line: 1045, baseType: !803, size: 256, align: 8, offset: 2752)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "default_verify_callback", scope: !88, file: !23, line: 1047, baseType: !671, size: 64, align: 64, offset: 3008)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !88, file: !23, line: 1050, baseType: !1008, size: 64, align: 64, offset: 3072)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "GEN_SESSION_CB", file: !23, line: 905, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64, align: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!26, !984, !71, !405}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !88, file: !23, line: 1052, baseType: !129, size: 64, align: 64, offset: 3136)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !88, file: !23, line: 1059, baseType: !26, size: 32, align: 32, offset: 3200)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !88, file: !23, line: 1065, baseType: !404, size: 32, align: 32, offset: 3232)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_engine", scope: !88, file: !23, line: 1071, baseType: !326, size: 64, align: 64, offset: 3264)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_callback", scope: !88, file: !23, line: 1076, baseType: !1017, size: 64, align: 64, offset: 3328)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64, align: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!26, !19, !66, !50}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_servername_arg", scope: !88, file: !23, line: 1077, baseType: !50, size: 64, align: 64, offset: 3392)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_key_name", scope: !88, file: !23, line: 1079, baseType: !1022, size: 128, align: 8, offset: 3456)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 128, align: 8, elements: !1023)
!1023 = !{!1024}
!1024 = !DISubrange(count: 16)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_hmac_key", scope: !88, file: !23, line: 1080, baseType: !1022, size: 128, align: 8, offset: 3584)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_tick_aes_key", scope: !88, file: !23, line: 1081, baseType: !1022, size: 128, align: 8, offset: 3712)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_key_cb", scope: !88, file: !23, line: 1083, baseType: !1028, size: 64, align: 64, offset: 3840)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64, align: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!26, !19, !71, !71, !1031, !1083, !26}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64, align: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER_CTX", file: !21, line: 130, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_ctx_st", file: !315, line: 449, size: 1344, align: 64, elements: !1034)
!1034 = !{!1035, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !1033, file: !315, line: 450, baseType: !1036, size: 64, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_CIPHER", file: !21, line: 129, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evp_cipher_st", file: !315, line: 308, size: 704, align: 64, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1050, !1054, !1058, !1059, !1063, !1064, !1068}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1039, file: !315, line: 309, baseType: !26, size: 32, align: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1039, file: !315, line: 310, baseType: !26, size: 32, align: 32, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1039, file: !315, line: 312, baseType: !26, size: 32, align: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "iv_len", scope: !1039, file: !315, line: 313, baseType: !26, size: 32, align: 32, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1039, file: !315, line: 315, baseType: !140, size: 64, align: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1039, file: !315, line: 317, baseType: !1047, size: 64, align: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64, align: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!26, !1031, !205, !205, !26}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "do_cipher", scope: !1039, file: !315, line: 320, baseType: !1051, size: 64, align: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64, align: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!26, !1031, !71, !205, !288}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1039, file: !315, line: 323, baseType: !1055, size: 64, align: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64, align: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!26, !1031}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_size", scope: !1039, file: !315, line: 325, baseType: !26, size: 32, align: 32, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "set_asn1_parameters", scope: !1039, file: !315, line: 327, baseType: !1060, size: 64, align: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64, align: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!26, !1031, !209}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "get_asn1_parameters", scope: !1039, file: !315, line: 329, baseType: !1060, size: 64, align: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1039, file: !315, line: 331, baseType: !1065, size: 64, align: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64, align: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!26, !1031, !26, !26, !50}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1039, file: !315, line: 333, baseType: !50, size: 64, align: 64, offset: 640)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !1033, file: !315, line: 451, baseType: !326, size: 64, align: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !1033, file: !315, line: 453, baseType: !26, size: 32, align: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "buf_len", scope: !1033, file: !315, line: 454, baseType: !26, size: 32, align: 32, offset: 160)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "oiv", scope: !1033, file: !315, line: 455, baseType: !1022, size: 128, align: 8, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !1033, file: !315, line: 456, baseType: !1022, size: 128, align: 8, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1033, file: !315, line: 457, baseType: !803, size: 256, align: 8, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1033, file: !315, line: 458, baseType: !26, size: 32, align: 32, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "app_data", scope: !1033, file: !315, line: 459, baseType: !50, size: 64, align: 64, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !1033, file: !315, line: 460, baseType: !26, size: 32, align: 32, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !315, line: 461, baseType: !140, size: 64, align: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_data", scope: !1033, file: !315, line: 462, baseType: !50, size: 64, align: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "final_used", scope: !1033, file: !315, line: 463, baseType: !26, size: 32, align: 32, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "block_mask", scope: !1033, file: !315, line: 464, baseType: !26, size: 32, align: 32, offset: 1056)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1033, file: !315, line: 465, baseType: !803, size: 256, align: 8, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64, align: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !1085, line: 82, baseType: !1086)
!1085 = !DIFile(filename: "/usr/include/openssl/hmac.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !1085, line: 75, size: 2304, align: 64, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1086, file: !1085, line: 76, baseType: !913, size: 64, align: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !1086, file: !1085, line: 77, baseType: !927, size: 384, align: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctx", scope: !1086, file: !1085, line: 78, baseType: !927, size: 384, align: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "o_ctx", scope: !1086, file: !1085, line: 79, baseType: !927, size: 384, align: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1086, file: !1085, line: 80, baseType: !404, size: 32, align: 32, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1086, file: !1085, line: 81, baseType: !1094, size: 1024, align: 8, offset: 1248)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1024, align: 8, elements: !1095)
!1095 = !{!1096}
!1096 = !DISubrange(count: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_cb", scope: !88, file: !23, line: 1090, baseType: !1098, size: 64, align: 64, offset: 3904)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64, align: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!26, !19, !50}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_arg", scope: !88, file: !23, line: 1091, baseType: !50, size: 64, align: 64, offset: 3968)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback", scope: !88, file: !23, line: 1094, baseType: !1103, size: 64, align: 64, offset: 4032)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64, align: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!26, !19, !50, !288, !50}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_callback_arg", scope: !88, file: !23, line: 1096, baseType: !50, size: 64, align: 64, offset: 4096)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "psk_identity_hint", scope: !88, file: !23, line: 1100, baseType: !103, size: 64, align: 64, offset: 4160)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !88, file: !23, line: 1101, baseType: !1109, size: 64, align: 64, offset: 4224)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, align: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!404, !19, !199, !103, !404, !71, !404}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !88, file: !23, line: 1106, baseType: !1113, size: 64, align: 64, offset: 4288)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64, align: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!404, !19, !199, !71, !404}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "freelist_max_len", scope: !88, file: !23, line: 1113, baseType: !404, size: 32, align: 32, offset: 4352)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf_freelist", scope: !88, file: !23, line: 1114, baseType: !1118, size: 64, align: 64, offset: 4416)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64, align: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buf_freelist_st", file: !23, line: 1114, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_freelist", scope: !88, file: !23, line: 1115, baseType: !1118, size: 64, align: 64, offset: 4480)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !88, file: !23, line: 1118, baseType: !1122, size: 1024, align: 64, offset: 4544)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRP_CTX", file: !23, line: 864, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srp_ctx_st", file: !23, line: 849, size: 1024, align: 64, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_cb_arg", scope: !1123, file: !23, line: 851, baseType: !50, size: 64, align: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "TLS_ext_srp_username_callback", scope: !1123, file: !23, line: 853, baseType: !1017, size: 64, align: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_verify_param_callback", scope: !1123, file: !23, line: 855, baseType: !1098, size: 64, align: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "SRP_give_srp_client_pwd_callback", scope: !1123, file: !23, line: 857, baseType: !1129, size: 64, align: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64, align: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!103, !19, !50}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "login", scope: !1123, file: !23, line: 858, baseType: !103, size: 64, align: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "N", scope: !1123, file: !23, line: 859, baseType: !360, size: 64, align: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1123, file: !23, line: 859, baseType: !360, size: 64, align: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1123, file: !23, line: 859, baseType: !360, size: 64, align: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !1123, file: !23, line: 859, baseType: !360, size: 64, align: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !1123, file: !23, line: 859, baseType: !360, size: 64, align: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1123, file: !23, line: 860, baseType: !360, size: 64, align: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1123, file: !23, line: 860, baseType: !360, size: 64, align: 64, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1123, file: !23, line: 860, baseType: !360, size: 64, align: 64, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1123, file: !23, line: 861, baseType: !103, size: 64, align: 64, offset: 832)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !1123, file: !23, line: 862, baseType: !26, size: 32, align: 32, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srp_Mask", scope: !1123, file: !23, line: 863, baseType: !140, size: 64, align: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb", scope: !88, file: !23, line: 1131, baseType: !1145, size: 64, align: 64, offset: 5568)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64, align: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!26, !19, !1148, !405, !50}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "next_protos_advertised_cb_arg", scope: !88, file: !23, line: 1133, baseType: !50, size: 64, align: 64, offset: 5632)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb", scope: !88, file: !23, line: 1138, baseType: !1151, size: 64, align: 64, offset: 5696)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64, align: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!26, !19, !1154, !71, !205, !404, !50}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_select_cb_arg", scope: !88, file: !23, line: 1142, baseType: !50, size: 64, align: 64, offset: 5760)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !88, file: !23, line: 1145, baseType: !1157, size: 64, align: 64, offset: 5824)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64, align: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_SRTP_PROTECTION_PROFILE", file: !23, line: 388, size: 256, align: 64, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1158, file: !23, line: 388, baseType: !96, size: 256, align: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb", scope: !88, file: !23, line: 1162, baseType: !1162, size: 64, align: 64, offset: 5888)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64, align: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!26, !19, !1148, !71, !205, !404, !50}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_select_cb_arg", scope: !88, file: !23, line: 1167, baseType: !50, size: 64, align: 64, offset: 5952)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !88, file: !23, line: 1173, baseType: !71, size: 64, align: 64, offset: 6016)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !88, file: !23, line: 1174, baseType: !404, size: 32, align: 32, offset: 6080)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !88, file: !23, line: 1178, baseType: !288, size: 64, align: 64, offset: 6144)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !88, file: !23, line: 1179, baseType: !71, size: 64, align: 64, offset: 6208)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !88, file: !23, line: 1180, baseType: !288, size: 64, align: 64, offset: 6272)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !88, file: !23, line: 1181, baseType: !71, size: 64, align: 64, offset: 6336)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher_by_char", scope: !32, file: !23, line: 459, baseType: !1173, size: 64, align: 64, offset: 1152)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64, align: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!821, !205}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "put_cipher_by_char", scope: !32, file: !23, line: 460, baseType: !1177, size: 64, align: 64, offset: 1216)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64, align: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!26, !821, !71}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_pending", scope: !32, file: !23, line: 461, baseType: !1181, size: 64, align: 64, offset: 1280)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64, align: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!26, !984}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "num_ciphers", scope: !32, file: !23, line: 462, baseType: !1185, size: 64, align: 64, offset: 1344)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64, align: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!26}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "get_cipher", scope: !32, file: !23, line: 463, baseType: !1189, size: 64, align: 64, offset: 1408)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64, align: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!821, !404}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "get_ssl_method", scope: !32, file: !23, line: 464, baseType: !1193, size: 64, align: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64, align: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1196, !26}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64, align: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeout", scope: !32, file: !23, line: 465, baseType: !1199, size: 64, align: 64, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64, align: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!65}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ssl3_enc", scope: !32, file: !23, line: 466, baseType: !1203, size: 64, align: 64, offset: 1600)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64, align: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_enc_method", file: !23, line: 466, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_version", scope: !32, file: !23, line: 467, baseType: !1185, size: 64, align: 64, offset: 1664)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_callback_ctrl", scope: !32, file: !23, line: 468, baseType: !1207, size: 64, align: 64, offset: 1728)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64, align: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!65, !19, !26, !1210}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64, align: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_callback_ctrl", scope: !32, file: !23, line: 469, baseType: !1214, size: 64, align: 64, offset: 1792)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64, align: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!65, !86, !26, !1210}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rbio", scope: !22, file: !23, line: 1438, baseType: !1218, size: 64, align: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64, align: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO", file: !1220, line: 238, baseType: !1221)
!1220 = !DIFile(filename: "/usr/include/openssl/bio.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_st", file: !1220, line: 325, size: 896, align: 64, elements: !1222)
!1222 = !{!1223, !1261, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1221, file: !1220, line: 326, baseType: !1224, size: 64, align: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64, align: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "BIO_METHOD", file: !1220, line: 323, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_method_st", file: !1220, line: 312, size: 640, align: 64, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1234, !1238, !1242, !1243, !1247, !1251, !1252}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1226, file: !1220, line: 313, baseType: !26, size: 32, align: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1226, file: !1220, line: 314, baseType: !199, size: 64, align: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "bwrite", scope: !1226, file: !1220, line: 315, baseType: !1231, size: 64, align: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64, align: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!26, !1218, !199, !26}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "bread", scope: !1226, file: !1220, line: 316, baseType: !1235, size: 64, align: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64, align: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!26, !1218, !103, !26}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "bputs", scope: !1226, file: !1220, line: 317, baseType: !1239, size: 64, align: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64, align: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!26, !1218, !199}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "bgets", scope: !1226, file: !1220, line: 318, baseType: !1235, size: 64, align: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1226, file: !1220, line: 319, baseType: !1244, size: 64, align: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64, align: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!65, !1218, !26, !65, !50}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1226, file: !1220, line: 320, baseType: !1248, size: 64, align: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64, align: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!26, !1218}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1226, file: !1220, line: 321, baseType: !1248, size: 64, align: 64, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1226, file: !1220, line: 322, baseType: !1253, size: 64, align: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64, align: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!65, !1218, !26, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_info_cb", file: !1220, line: 309, baseType: !1258)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !1260, !26, !199, !26, !65, !65}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64, align: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1221, file: !1220, line: 328, baseType: !1262, size: 64, align: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64, align: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!65, !1260, !26, !199, !26, !65, !65}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !1221, file: !1220, line: 329, baseType: !103, size: 64, align: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1221, file: !1220, line: 330, baseType: !26, size: 32, align: 32, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1221, file: !1220, line: 331, baseType: !26, size: 32, align: 32, offset: 224)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !1220, line: 332, baseType: !26, size: 32, align: 32, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "retry_reason", scope: !1221, file: !1220, line: 333, baseType: !26, size: 32, align: 32, offset: 288)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1221, file: !1220, line: 334, baseType: !26, size: 32, align: 32, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1221, file: !1220, line: 335, baseType: !50, size: 64, align: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "next_bio", scope: !1221, file: !1220, line: 336, baseType: !1260, size: 64, align: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bio", scope: !1221, file: !1220, line: 337, baseType: !1260, size: 64, align: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !1221, file: !1220, line: 338, baseType: !26, size: 32, align: 32, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "num_read", scope: !1221, file: !1220, line: 339, baseType: !140, size: 64, align: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "num_write", scope: !1221, file: !1220, line: 340, baseType: !140, size: 64, align: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1221, file: !1220, line: 341, baseType: !443, size: 128, align: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "wbio", scope: !22, file: !23, line: 1440, baseType: !1218, size: 64, align: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "bbio", scope: !22, file: !23, line: 1442, baseType: !1218, size: 64, align: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rwstate", scope: !22, file: !23, line: 1455, baseType: !26, size: 32, align: 32, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "in_handshake", scope: !22, file: !23, line: 1457, baseType: !26, size: 32, align: 32, offset: 352)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_func", scope: !22, file: !23, line: 1458, baseType: !36, size: 64, align: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !22, file: !23, line: 1467, baseType: !26, size: 32, align: 32, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "new_session", scope: !22, file: !23, line: 1474, baseType: !26, size: 32, align: 32, offset: 480)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "quiet_shutdown", scope: !22, file: !23, line: 1476, baseType: !26, size: 32, align: 32, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !22, file: !23, line: 1478, baseType: !26, size: 32, align: 32, offset: 544)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !22, file: !23, line: 1480, baseType: !26, size: 32, align: 32, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rstate", scope: !22, file: !23, line: 1482, baseType: !26, size: 32, align: 32, offset: 608)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "init_buf", scope: !22, file: !23, line: 1483, baseType: !282, size: 64, align: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "init_msg", scope: !22, file: !23, line: 1484, baseType: !50, size: 64, align: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "init_num", scope: !22, file: !23, line: 1486, baseType: !26, size: 32, align: 32, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "init_off", scope: !22, file: !23, line: 1487, baseType: !26, size: 32, align: 32, offset: 800)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !22, file: !23, line: 1489, baseType: !71, size: 64, align: 64, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !22, file: !23, line: 1490, baseType: !404, size: 32, align: 32, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !22, file: !23, line: 1491, baseType: !1296, size: 64, align: 64, offset: 960)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64, align: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl2_state_st", file: !1298, line: 163, size: 2752, align: 64, elements: !1299)
!1298 = !DIFile(filename: "/usr/include/openssl/ssl2.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "three_byte_header", scope: !1297, file: !1298, line: 164, baseType: !26, size: 32, align: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "clear_text", scope: !1297, file: !1298, line: 165, baseType: !26, size: 32, align: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !1297, file: !1298, line: 166, baseType: !26, size: 32, align: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ssl2_rollback", scope: !1297, file: !1298, line: 167, baseType: !26, size: 32, align: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !1297, file: !1298, line: 171, baseType: !404, size: 32, align: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !1297, file: !1298, line: 172, baseType: !26, size: 32, align: 32, offset: 160)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !1297, file: !1298, line: 173, baseType: !205, size: 64, align: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_off", scope: !1297, file: !1298, line: 174, baseType: !26, size: 32, align: 32, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_len", scope: !1297, file: !1298, line: 175, baseType: !26, size: 32, align: 32, offset: 288)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !1297, file: !1298, line: 176, baseType: !26, size: 32, align: 32, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_left", scope: !1297, file: !1298, line: 178, baseType: !26, size: 32, align: 32, offset: 352)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf_offs", scope: !1297, file: !1298, line: 179, baseType: !26, size: 32, align: 32, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !1297, file: !1298, line: 180, baseType: !71, size: 64, align: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !1297, file: !1298, line: 181, baseType: !71, size: 64, align: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !1297, file: !1298, line: 182, baseType: !71, size: 64, align: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1297, file: !1298, line: 184, baseType: !404, size: 32, align: 32, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rlength", scope: !1297, file: !1298, line: 185, baseType: !404, size: 32, align: 32, offset: 672)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data_length", scope: !1297, file: !1298, line: 186, baseType: !26, size: 32, align: 32, offset: 704)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "wlength", scope: !1297, file: !1298, line: 187, baseType: !404, size: 32, align: 32, offset: 736)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data_length", scope: !1297, file: !1298, line: 188, baseType: !26, size: 32, align: 32, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ract_data", scope: !1297, file: !1298, line: 189, baseType: !71, size: 64, align: 64, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "wact_data", scope: !1297, file: !1298, line: 190, baseType: !71, size: 64, align: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "mac_data", scope: !1297, file: !1298, line: 191, baseType: !71, size: 64, align: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "read_key", scope: !1297, file: !1298, line: 192, baseType: !71, size: 64, align: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "write_key", scope: !1297, file: !1298, line: 193, baseType: !71, size: 64, align: 64, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "challenge_length", scope: !1297, file: !1298, line: 195, baseType: !404, size: 32, align: 32, offset: 1152)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "challenge", scope: !1297, file: !1298, line: 196, baseType: !803, size: 256, align: 8, offset: 1184)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !1297, file: !1298, line: 197, baseType: !404, size: 32, align: 32, offset: 1440)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id", scope: !1297, file: !1298, line: 198, baseType: !1022, size: 128, align: 8, offset: 1472)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "key_material_length", scope: !1297, file: !1298, line: 199, baseType: !404, size: 32, align: 32, offset: 1600)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "key_material", scope: !1297, file: !1298, line: 200, baseType: !798, size: 384, align: 8, offset: 1632)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !1297, file: !1298, line: 201, baseType: !140, size: 64, align: 64, offset: 2048)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !1297, file: !1298, line: 202, baseType: !140, size: 64, align: 64, offset: 2112)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !1297, file: !1298, line: 215, baseType: !1334, size: 576, align: 32, offset: 2176)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1297, file: !1298, line: 203, size: 576, align: 32, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "conn_id_length", scope: !1334, file: !1298, line: 204, baseType: !404, size: 32, align: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cert_type", scope: !1334, file: !1298, line: 205, baseType: !404, size: 32, align: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cert_length", scope: !1334, file: !1298, line: 206, baseType: !404, size: 32, align: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "csl", scope: !1334, file: !1298, line: 207, baseType: !404, size: 32, align: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clear", scope: !1334, file: !1298, line: 208, baseType: !404, size: 32, align: 32, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !1334, file: !1298, line: 209, baseType: !404, size: 32, align: 32, offset: 160)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ccl", scope: !1334, file: !1298, line: 210, baseType: !803, size: 256, align: 8, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_spec_length", scope: !1334, file: !1298, line: 211, baseType: !404, size: 32, align: 32, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_length", scope: !1334, file: !1298, line: 212, baseType: !404, size: 32, align: 32, offset: 480)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "clen", scope: !1334, file: !1298, line: 213, baseType: !404, size: 32, align: 32, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !1334, file: !1298, line: 214, baseType: !404, size: 32, align: 32, offset: 544)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !22, file: !23, line: 1492, baseType: !1348, size: 64, align: 64, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64, align: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_state_st", file: !1350, line: 481, size: 9728, align: 64, elements: !1351)
!1350 = !DIFile(filename: "/usr/include/openssl/ssl3.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1376, !1377, !1389, !1390, !1392, !1393, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1349, file: !1350, line: 482, baseType: !65, size: 64, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "delay_buf_pop_ret", scope: !1349, file: !1350, line: 483, baseType: !26, size: 32, align: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "read_sequence", scope: !1349, file: !1350, line: 484, baseType: !793, size: 64, align: 8, offset: 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret_size", scope: !1349, file: !1350, line: 485, baseType: !26, size: 32, align: 32, offset: 160)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "read_mac_secret", scope: !1349, file: !1350, line: 486, baseType: !1357, size: 512, align: 8, offset: 192)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 512, align: 8, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "write_sequence", scope: !1349, file: !1350, line: 487, baseType: !793, size: 64, align: 8, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret_size", scope: !1349, file: !1350, line: 488, baseType: !26, size: 32, align: 32, offset: 768)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "write_mac_secret", scope: !1349, file: !1350, line: 489, baseType: !1357, size: 512, align: 8, offset: 800)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "server_random", scope: !1349, file: !1350, line: 490, baseType: !803, size: 256, align: 8, offset: 1312)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "client_random", scope: !1349, file: !1350, line: 491, baseType: !803, size: 256, align: 8, offset: 1568)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "need_empty_fragments", scope: !1349, file: !1350, line: 493, baseType: !26, size: 32, align: 32, offset: 1824)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "empty_fragment_done", scope: !1349, file: !1350, line: 494, baseType: !26, size: 32, align: 32, offset: 1856)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "init_extra", scope: !1349, file: !1350, line: 496, baseType: !26, size: 32, align: 32, offset: 1888)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !1349, file: !1350, line: 497, baseType: !1369, size: 192, align: 64, offset: 1920)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_BUFFER", file: !1350, line: 447, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_buffer_st", file: !1350, line: 438, size: 192, align: 64, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1370, file: !1350, line: 440, baseType: !71, size: 64, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1370, file: !1350, line: 442, baseType: !288, size: 64, align: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1370, file: !1350, line: 444, baseType: !26, size: 32, align: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1370, file: !1350, line: 446, baseType: !26, size: 32, align: 32, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "wbuf", scope: !1349, file: !1350, line: 498, baseType: !1369, size: 192, align: 64, offset: 2112)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rrec", scope: !1349, file: !1350, line: 499, baseType: !1378, size: 448, align: 64, offset: 2304)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL3_RECORD", file: !1350, line: 436, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl3_record_st", file: !1350, line: 403, size: 448, align: 64, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1379, file: !1350, line: 407, baseType: !26, size: 32, align: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1379, file: !1350, line: 411, baseType: !404, size: 32, align: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !1379, file: !1350, line: 415, baseType: !404, size: 32, align: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1379, file: !1350, line: 419, baseType: !71, size: 64, align: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1379, file: !1350, line: 423, baseType: !71, size: 64, align: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1379, file: !1350, line: 427, baseType: !71, size: 64, align: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1379, file: !1350, line: 431, baseType: !140, size: 64, align: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !1379, file: !1350, line: 435, baseType: !793, size: 64, align: 8, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wrec", scope: !1349, file: !1350, line: 500, baseType: !1378, size: 448, align: 64, offset: 2752)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1349, file: !1350, line: 505, baseType: !1391, size: 16, align: 8, offset: 3200)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 16, align: 8, elements: !390)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1349, file: !1350, line: 506, baseType: !404, size: 32, align: 32, offset: 3232)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1349, file: !1350, line: 507, baseType: !1394, size: 32, align: 8, offset: 3264)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, align: 8, elements: !1395)
!1395 = !{!1396}
!1396 = !DISubrange(count: 4)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1349, file: !1350, line: 508, baseType: !404, size: 32, align: 32, offset: 3296)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "wnum", scope: !1349, file: !1350, line: 510, baseType: !404, size: 32, align: 32, offset: 3328)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_tot", scope: !1349, file: !1350, line: 511, baseType: !26, size: 32, align: 32, offset: 3360)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_type", scope: !1349, file: !1350, line: 512, baseType: !26, size: 32, align: 32, offset: 3392)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_ret", scope: !1349, file: !1350, line: 513, baseType: !26, size: 32, align: 32, offset: 3424)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wpend_buf", scope: !1349, file: !1350, line: 514, baseType: !205, size: 64, align: 64, offset: 3456)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_buffer", scope: !1349, file: !1350, line: 516, baseType: !1218, size: 64, align: 64, offset: 3520)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_dgst", scope: !1349, file: !1350, line: 521, baseType: !1405, size: 64, align: 64, offset: 3584)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64, align: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec", scope: !1349, file: !1350, line: 527, baseType: !26, size: 32, align: 32, offset: 3648)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "warn_alert", scope: !1349, file: !1350, line: 528, baseType: !26, size: 32, align: 32, offset: 3680)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fatal_alert", scope: !1349, file: !1350, line: 529, baseType: !26, size: 32, align: 32, offset: 3712)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "alert_dispatch", scope: !1349, file: !1350, line: 534, baseType: !26, size: 32, align: 32, offset: 3744)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "send_alert", scope: !1349, file: !1350, line: 535, baseType: !1391, size: 16, align: 8, offset: 3776)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !1349, file: !1350, line: 540, baseType: !26, size: 32, align: 32, offset: 3808)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "total_renegotiations", scope: !1349, file: !1350, line: 541, baseType: !26, size: 32, align: 32, offset: 3840)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "num_renegotiations", scope: !1349, file: !1350, line: 542, baseType: !26, size: 32, align: 32, offset: 3872)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "in_read_app_data", scope: !1349, file: !1350, line: 543, baseType: !26, size: 32, align: 32, offset: 3904)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input", scope: !1349, file: !1350, line: 549, baseType: !50, size: 64, align: 64, offset: 3968)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "client_opaque_prf_input_len", scope: !1349, file: !1350, line: 550, baseType: !288, size: 64, align: 64, offset: 4032)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input", scope: !1349, file: !1350, line: 551, baseType: !50, size: 64, align: 64, offset: 4096)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "server_opaque_prf_input_len", scope: !1349, file: !1350, line: 552, baseType: !288, size: 64, align: 64, offset: 4160)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !1349, file: !1350, line: 592, baseType: !1420, size: 4224, align: 64, offset: 4224)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1349, file: !1350, line: 553, size: 4224, align: 64, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1435, !1436, !1437, !1438, !1439, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1492}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cert_verify_md", scope: !1420, file: !1350, line: 555, baseType: !1094, size: 1024, align: 8)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md", scope: !1420, file: !1350, line: 557, baseType: !1094, size: 1024, align: 8, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "finish_md_len", scope: !1420, file: !1350, line: 558, baseType: !26, size: 32, align: 32, offset: 2048)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md", scope: !1420, file: !1350, line: 559, baseType: !1094, size: 1024, align: 8, offset: 2080)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "peer_finish_md_len", scope: !1420, file: !1350, line: 560, baseType: !26, size: 32, align: 32, offset: 3104)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "message_size", scope: !1420, file: !1350, line: 561, baseType: !140, size: 64, align: 64, offset: 3136)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !1420, file: !1350, line: 562, baseType: !26, size: 32, align: 32, offset: 3200)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "new_cipher", scope: !1420, file: !1350, line: 564, baseType: !821, size: 64, align: 64, offset: 3264)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !1420, file: !1350, line: 566, baseType: !564, size: 64, align: 64, offset: 3328)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ecdh", scope: !1420, file: !1350, line: 569, baseType: !1432, size: 64, align: 64, offset: 3392)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64, align: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "EC_KEY", file: !1434, line: 741, baseType: !587)
!1434 = !DIFile(filename: "/usr/include/openssl/ec.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "next_state", scope: !1420, file: !1350, line: 572, baseType: !26, size: 32, align: 32, offset: 3456)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_message", scope: !1420, file: !1350, line: 573, baseType: !26, size: 32, align: 32, offset: 3488)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cert_req", scope: !1420, file: !1350, line: 575, baseType: !26, size: 32, align: 32, offset: 3520)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_num", scope: !1420, file: !1350, line: 576, baseType: !26, size: 32, align: 32, offset: 3552)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !1420, file: !1350, line: 577, baseType: !1440, size: 72, align: 8, offset: 3584)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 72, align: 8, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 9)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ca_names", scope: !1420, file: !1350, line: 578, baseType: !987, size: 64, align: 64, offset: 3712)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "use_rsa_tmp", scope: !1420, file: !1350, line: 579, baseType: !26, size: 32, align: 32, offset: 3776)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "key_block_length", scope: !1420, file: !1350, line: 580, baseType: !26, size: 32, align: 32, offset: 3808)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "key_block", scope: !1420, file: !1350, line: 581, baseType: !71, size: 64, align: 64, offset: 3840)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "new_sym_enc", scope: !1420, file: !1350, line: 582, baseType: !1036, size: 64, align: 64, offset: 3904)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "new_hash", scope: !1420, file: !1350, line: 583, baseType: !913, size: 64, align: 64, offset: 3968)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_pkey_type", scope: !1420, file: !1350, line: 584, baseType: !26, size: 32, align: 32, offset: 4032)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "new_mac_secret_size", scope: !1420, file: !1350, line: 585, baseType: !26, size: 32, align: 32, offset: 4064)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "new_compression", scope: !1420, file: !1350, line: 587, baseType: !1452, size: 64, align: 64, offset: 4096)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_COMP", file: !23, line: 908, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_comp_st", file: !23, line: 912, size: 192, align: 64, elements: !1456)
!1456 = !{!1457, !1458, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1455, file: !23, line: 913, baseType: !26, size: 32, align: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1455, file: !23, line: 914, baseType: !199, size: 64, align: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1455, file: !23, line: 916, baseType: !1460, size: 64, align: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64, align: 64)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_METHOD", file: !1462, line: 29, baseType: !1463)
!1462 = !DIFile(filename: "/usr/include/openssl/comp.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_method_st", file: !1462, line: 13, size: 512, align: 64, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1481, !1485, !1489, !1490, !1491}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1463, file: !1462, line: 14, baseType: !26, size: 32, align: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1463, file: !1462, line: 15, baseType: !199, size: 64, align: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1463, file: !1462, line: 16, baseType: !1468, size: 64, align: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64, align: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!26, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64, align: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "COMP_CTX", file: !1462, line: 11, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "comp_ctx_st", file: !1462, line: 31, size: 448, align: 64, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "meth", scope: !1473, file: !1462, line: 32, baseType: !1460, size: 64, align: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "compress_in", scope: !1473, file: !1462, line: 33, baseType: !140, size: 64, align: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "compress_out", scope: !1473, file: !1462, line: 34, baseType: !140, size: 64, align: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "expand_in", scope: !1473, file: !1462, line: 35, baseType: !140, size: 64, align: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "expand_out", scope: !1473, file: !1462, line: 36, baseType: !140, size: 64, align: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !1473, file: !1462, line: 37, baseType: !443, size: 128, align: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1463, file: !1462, line: 17, baseType: !1482, size: 64, align: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64, align: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1471}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1463, file: !1462, line: 18, baseType: !1486, size: 64, align: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64, align: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!26, !1471, !71, !404, !71, !404}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !1463, file: !1462, line: 21, baseType: !1486, size: 64, align: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !1463, file: !1462, line: 27, baseType: !1199, size: 64, align: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "callback_ctrl", scope: !1463, file: !1462, line: 28, baseType: !1199, size: 64, align: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cert_request", scope: !1420, file: !1350, line: 591, baseType: !26, size: 32, align: 32, offset: 4160)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished", scope: !1349, file: !1350, line: 595, baseType: !1357, size: 512, align: 8, offset: 8448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "previous_client_finished_len", scope: !1349, file: !1350, line: 596, baseType: !72, size: 8, align: 8, offset: 8960)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished", scope: !1349, file: !1350, line: 597, baseType: !1357, size: 512, align: 8, offset: 8968)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "previous_server_finished_len", scope: !1349, file: !1350, line: 598, baseType: !72, size: 8, align: 8, offset: 9480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "send_connection_binding", scope: !1349, file: !1350, line: 599, baseType: !26, size: 32, align: 32, offset: 9504)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_neg_seen", scope: !1349, file: !1350, line: 605, baseType: !26, size: 32, align: 32, offset: 9536)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "is_probably_safari", scope: !1349, file: !1350, line: 615, baseType: !104, size: 8, align: 8, offset: 9568)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected", scope: !1349, file: !1350, line: 628, baseType: !71, size: 64, align: 64, offset: 9600)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_selected_len", scope: !1349, file: !1350, line: 629, baseType: !404, size: 32, align: 32, offset: 9664)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !22, file: !23, line: 1493, baseType: !1503, size: 64, align: 64, offset: 1088)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64, align: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_state_st", file: !1505, line: 182, size: 7168, align: 64, elements: !1506)
!1505 = !DIFile(filename: "/usr/include/openssl/dtls1.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1506 = !{!1507, !1508, !1512, !1513, !1514, !1516, !1517, !1523, !1524, !1525, !1526, !1527, !1528, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1562, !1563, !1569, !1576, !1577, !1578, !1579, !1583, !1584, !1585}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "send_cookie", scope: !1504, file: !1505, line: 183, baseType: !404, size: 32, align: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !1504, file: !1505, line: 184, baseType: !1509, size: 2048, align: 8, offset: 32)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2048, align: 8, elements: !1510)
!1510 = !{!1511}
!1511 = !DISubrange(count: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rcvd_cookie", scope: !1504, file: !1505, line: 185, baseType: !1509, size: 2048, align: 8, offset: 2080)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !1504, file: !1505, line: 186, baseType: !404, size: 32, align: 32, offset: 4128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "r_epoch", scope: !1504, file: !1505, line: 192, baseType: !1515, size: 16, align: 16, offset: 4160)
!1515 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "w_epoch", scope: !1504, file: !1505, line: 193, baseType: !1515, size: 16, align: 16, offset: 4176)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !1504, file: !1505, line: 195, baseType: !1518, size: 128, align: 64, offset: 4224)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTLS1_BITMAP", file: !1505, line: 133, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_bitmap_st", file: !1505, line: 128, size: 128, align: 64, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1519, file: !1505, line: 129, baseType: !140, size: 64, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "max_seq_num", scope: !1519, file: !1505, line: 131, baseType: !793, size: 64, align: 8, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "next_bitmap", scope: !1504, file: !1505, line: 197, baseType: !1518, size: 128, align: 64, offset: 4352)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_write_seq", scope: !1504, file: !1505, line: 199, baseType: !1515, size: 16, align: 16, offset: 4480)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next_handshake_write_seq", scope: !1504, file: !1505, line: 200, baseType: !1515, size: 16, align: 16, offset: 4496)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_read_seq", scope: !1504, file: !1505, line: 201, baseType: !1515, size: 16, align: 16, offset: 4512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "last_write_sequence", scope: !1504, file: !1505, line: 203, baseType: !793, size: 64, align: 8, offset: 4528)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "unprocessed_rcds", scope: !1504, file: !1505, line: 205, baseType: !1529, size: 128, align: 64, offset: 4608)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_pqueue", file: !1505, line: 174, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_pqueue_st", file: !1505, line: 171, size: 128, align: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1530, file: !1505, line: 172, baseType: !1515, size: 16, align: 16)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1530, file: !1505, line: 173, baseType: !1534, size: 64, align: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pqueue", file: !1535, line: 70, baseType: !1536)
!1535 = !DIFile(filename: "/usr/include/openssl/pqueue.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64, align: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pqueue", file: !1535, line: 70, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "processed_rcds", scope: !1504, file: !1505, line: 206, baseType: !1529, size: 128, align: 64, offset: 4736)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_messages", scope: !1504, file: !1505, line: 208, baseType: !1534, size: 64, align: 64, offset: 4864)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sent_messages", scope: !1504, file: !1505, line: 210, baseType: !1534, size: 64, align: 64, offset: 4928)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_app_data", scope: !1504, file: !1505, line: 216, baseType: !1529, size: 128, align: 64, offset: 4992)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "listen", scope: !1504, file: !1505, line: 218, baseType: !404, size: 32, align: 32, offset: 5120)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "link_mtu", scope: !1504, file: !1505, line: 219, baseType: !404, size: 32, align: 32, offset: 5152)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1504, file: !1505, line: 220, baseType: !404, size: 32, align: 32, offset: 5184)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "w_msg_hdr", scope: !1504, file: !1505, line: 221, baseType: !1546, size: 704, align: 64, offset: 5248)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hm_header_st", file: !1505, line: 147, size: 704, align: 64, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1546, file: !1505, line: 148, baseType: !72, size: 8, align: 8)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !1546, file: !1505, line: 149, baseType: !140, size: 64, align: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1546, file: !1505, line: 150, baseType: !1515, size: 16, align: 16, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "frag_off", scope: !1546, file: !1505, line: 151, baseType: !140, size: 64, align: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "frag_len", scope: !1546, file: !1505, line: 152, baseType: !140, size: 64, align: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "is_ccs", scope: !1546, file: !1505, line: 153, baseType: !404, size: 32, align: 32, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "saved_retransmit_state", scope: !1546, file: !1505, line: 154, baseType: !1555, size: 320, align: 64, offset: 384)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_retransmit_state", file: !1505, line: 135, size: 320, align: 64, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !1555, file: !1505, line: 136, baseType: !1031, size: 64, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !1555, file: !1505, line: 137, baseType: !926, size: 64, align: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !1555, file: !1505, line: 139, baseType: !1471, size: 64, align: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1555, file: !1505, line: 143, baseType: !860, size: 64, align: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !1555, file: !1505, line: 144, baseType: !1515, size: 16, align: 16, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "r_msg_hdr", scope: !1504, file: !1505, line: 222, baseType: !1546, size: 704, align: 64, offset: 5952)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1504, file: !1505, line: 223, baseType: !1564, size: 96, align: 32, offset: 6656)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtls1_timeout_st", file: !1505, line: 162, size: 96, align: 32, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeouts", scope: !1564, file: !1505, line: 164, baseType: !404, size: 32, align: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeouts", scope: !1564, file: !1505, line: 166, baseType: !404, size: 32, align: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "num_alerts", scope: !1564, file: !1505, line: 168, baseType: !404, size: 32, align: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "next_timeout", scope: !1504, file: !1505, line: 227, baseType: !1570, size: 128, align: 64, offset: 6784)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1571, line: 30, size: 128, align: 64, elements: !1572)
!1571 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1570, file: !1571, line: 32, baseType: !137, size: 64, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1570, file: !1571, line: 33, baseType: !1575, size: 64, align: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !138, line: 141, baseType: !65)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_duration", scope: !1504, file: !1505, line: 229, baseType: !1515, size: 16, align: 16, offset: 6912)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment", scope: !1504, file: !1505, line: 234, baseType: !1391, size: 16, align: 8, offset: 6928)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "alert_fragment_len", scope: !1504, file: !1505, line: 235, baseType: !404, size: 32, align: 32, offset: 6944)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment", scope: !1504, file: !1505, line: 236, baseType: !1580, size: 96, align: 8, offset: 6976)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 96, align: 8, elements: !1581)
!1581 = !{!1582}
!1582 = !DISubrange(count: 12)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "handshake_fragment_len", scope: !1504, file: !1505, line: 237, baseType: !404, size: 32, align: 32, offset: 7072)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "retransmitting", scope: !1504, file: !1505, line: 238, baseType: !404, size: 32, align: 32, offset: 7104)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "change_cipher_spec_ok", scope: !1504, file: !1505, line: 243, baseType: !404, size: 32, align: 32, offset: 7136)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !22, file: !23, line: 1494, baseType: !26, size: 32, align: 32, offset: 1152)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback", scope: !22, file: !23, line: 1497, baseType: !999, size: 64, align: 64, offset: 1216)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "msg_callback_arg", scope: !22, file: !23, line: 1499, baseType: !50, size: 64, align: 64, offset: 1280)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !22, file: !23, line: 1500, baseType: !26, size: 32, align: 32, offset: 1344)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !22, file: !23, line: 1501, baseType: !129, size: 64, align: 64, offset: 1408)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list", scope: !22, file: !23, line: 1507, baseType: !92, size: 64, align: 64, offset: 1472)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_list_by_id", scope: !22, file: !23, line: 1508, baseType: !92, size: 64, align: 64, offset: 1536)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mac_flags", scope: !22, file: !23, line: 1513, baseType: !26, size: 32, align: 32, offset: 1600)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "enc_read_ctx", scope: !22, file: !23, line: 1514, baseType: !1031, size: 64, align: 64, offset: 1664)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "read_hash", scope: !22, file: !23, line: 1515, baseType: !926, size: 64, align: 64, offset: 1728)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !22, file: !23, line: 1517, baseType: !1471, size: 64, align: 64, offset: 1792)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "enc_write_ctx", scope: !22, file: !23, line: 1521, baseType: !1031, size: 64, align: 64, offset: 1856)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "write_hash", scope: !22, file: !23, line: 1522, baseType: !926, size: 64, align: 64, offset: 1920)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !22, file: !23, line: 1524, baseType: !1471, size: 64, align: 64, offset: 1984)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !22, file: !23, line: 1531, baseType: !995, size: 64, align: 64, offset: 2048)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx_length", scope: !22, file: !23, line: 1536, baseType: !404, size: 32, align: 32, offset: 2112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sid_ctx", scope: !22, file: !23, line: 1537, baseType: !803, size: 256, align: 8, offset: 2144)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !22, file: !23, line: 1539, baseType: !860, size: 64, align: 64, offset: 2432)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "generate_session_id", scope: !22, file: !23, line: 1541, baseType: !1008, size: 64, align: 64, offset: 2496)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mode", scope: !22, file: !23, line: 1547, baseType: !26, size: 32, align: 32, offset: 2560)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "verify_callback", scope: !22, file: !23, line: 1549, baseType: !671, size: 64, align: 64, offset: 2624)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "info_callback", scope: !22, file: !23, line: 1551, baseType: !981, size: 64, align: 64, offset: 2688)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !22, file: !23, line: 1553, baseType: !26, size: 32, align: 32, offset: 2752)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !22, file: !23, line: 1555, baseType: !26, size: 32, align: 32, offset: 2784)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "psk_client_callback", scope: !22, file: !23, line: 1561, baseType: !1109, size: 64, align: 64, offset: 2816)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "psk_server_callback", scope: !22, file: !23, line: 1566, baseType: !1113, size: 64, align: 64, offset: 2880)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !22, file: !23, line: 1570, baseType: !86, size: 64, align: 64, offset: 2944)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !22, file: !23, line: 1575, baseType: !26, size: 32, align: 32, offset: 3008)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "verify_result", scope: !22, file: !23, line: 1577, baseType: !65, size: 64, align: 64, offset: 3072)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ex_data", scope: !22, file: !23, line: 1578, baseType: !443, size: 128, align: 64, offset: 3136)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "client_CA", scope: !22, file: !23, line: 1580, baseType: !987, size: 64, align: 64, offset: 3264)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "references", scope: !22, file: !23, line: 1581, baseType: !26, size: 32, align: 32, offset: 3328)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !22, file: !23, line: 1583, baseType: !140, size: 64, align: 64, offset: 3392)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !22, file: !23, line: 1585, baseType: !140, size: 64, align: 64, offset: 3456)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "max_cert_list", scope: !22, file: !23, line: 1586, baseType: !65, size: 64, align: 64, offset: 3520)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "first_packet", scope: !22, file: !23, line: 1587, baseType: !26, size: 32, align: 32, offset: 3584)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "client_version", scope: !22, file: !23, line: 1589, baseType: !26, size: 32, align: 32, offset: 3616)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "max_send_fragment", scope: !22, file: !23, line: 1590, baseType: !404, size: 32, align: 32, offset: 3648)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_cb", scope: !22, file: !23, line: 1593, baseType: !1625, size: 64, align: 64, offset: 3712)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64, align: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !19, !26, !26, !71, !26, !50}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_debug_arg", scope: !22, file: !23, line: 1595, baseType: !50, size: 64, align: 64, offset: 3776)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hostname", scope: !22, file: !23, line: 1596, baseType: !103, size: 64, align: 64, offset: 3840)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "servername_done", scope: !22, file: !23, line: 1603, baseType: !26, size: 32, align: 32, offset: 3904)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_type", scope: !22, file: !23, line: 1606, baseType: !26, size: 32, align: 32, offset: 3936)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_status_expected", scope: !22, file: !23, line: 1608, baseType: !26, size: 32, align: 32, offset: 3968)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_ids", scope: !22, file: !23, line: 1610, baseType: !1634, size: 64, align: 64, offset: 4032)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64, align: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_st_OCSP_RESPID", file: !23, line: 1610, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_exts", scope: !22, file: !23, line: 1611, baseType: !1637, size: 64, align: 64, offset: 4096)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "X509_EXTENSIONS", file: !171, line: 202, baseType: !598)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resp", scope: !22, file: !23, line: 1613, baseType: !71, size: 64, align: 64, offset: 4160)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ocsp_resplen", scope: !22, file: !23, line: 1614, baseType: !26, size: 32, align: 32, offset: 4224)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ticket_expected", scope: !22, file: !23, line: 1616, baseType: !26, size: 32, align: 32, offset: 4256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist_length", scope: !22, file: !23, line: 1618, baseType: !288, size: 64, align: 64, offset: 4288)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ecpointformatlist", scope: !22, file: !23, line: 1620, baseType: !71, size: 64, align: 64, offset: 4352)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist_length", scope: !22, file: !23, line: 1621, baseType: !288, size: 64, align: 64, offset: 4416)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_ellipticcurvelist", scope: !22, file: !23, line: 1623, baseType: !71, size: 64, align: 64, offset: 4480)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input", scope: !22, file: !23, line: 1629, baseType: !50, size: 64, align: 64, offset: 4544)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_opaque_prf_input_len", scope: !22, file: !23, line: 1630, baseType: !288, size: 64, align: 64, offset: 4608)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_session_ticket", scope: !22, file: !23, line: 1632, baseType: !1649, size: 64, align: 64, offset: 4672)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64, align: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "TLS_SESSION_TICKET_EXT", file: !23, line: 373, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tls_session_ticket_ext_st", file: !1652, line: 802, size: 128, align: 64, elements: !1653)
!1652 = !DIFile(filename: "/usr/include/openssl/tls1.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1651, file: !1652, line: 803, baseType: !1515, size: 16, align: 16)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1651, file: !1652, line: 804, baseType: !50, size: 64, align: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb", scope: !22, file: !23, line: 1634, baseType: !1657, size: 64, align: 64, offset: 4736)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_ticket_ext_cb_fn", file: !23, line: 390, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64, align: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!26, !19, !205, !26, !50}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_ticket_ext_cb_arg", scope: !22, file: !23, line: 1635, baseType: !50, size: 64, align: 64, offset: 4800)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb", scope: !22, file: !23, line: 1637, baseType: !1663, size: 64, align: 64, offset: 4864)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "tls_session_secret_cb_fn", file: !23, line: 393, baseType: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64, align: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!26, !19, !50, !66, !92, !1667, !50}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64, align: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tls_session_secret_cb_arg", scope: !22, file: !23, line: 1638, baseType: !50, size: 64, align: 64, offset: 4928)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ctx", scope: !22, file: !23, line: 1639, baseType: !86, size: 64, align: 64, offset: 4992)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated", scope: !22, file: !23, line: 1648, baseType: !71, size: 64, align: 64, offset: 5056)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "next_proto_negotiated_len", scope: !22, file: !23, line: 1649, baseType: !72, size: 8, align: 8, offset: 5120)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profiles", scope: !22, file: !23, line: 1653, baseType: !1157, size: 64, align: 64, offset: 5184)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "srtp_profile", scope: !22, file: !23, line: 1655, baseType: !1675, size: 64, align: 64, offset: 5248)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64, align: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRTP_PROTECTION_PROFILE", file: !23, line: 386, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srtp_protection_profile_st", file: !23, line: 383, size: 128, align: 64, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1677, file: !23, line: 384, baseType: !199, size: 64, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1677, file: !23, line: 385, baseType: !140, size: 64, align: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_heartbeat", scope: !22, file: !23, line: 1662, baseType: !404, size: 32, align: 32, offset: 5312)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_pending", scope: !22, file: !23, line: 1664, baseType: !404, size: 32, align: 32, offset: 5344)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "tlsext_hb_seq", scope: !22, file: !23, line: 1666, baseType: !404, size: 32, align: 32, offset: 5376)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "renegotiate", scope: !22, file: !23, line: 1675, baseType: !26, size: 32, align: 32, offset: 5408)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "srp_ctx", scope: !22, file: !23, line: 1678, baseType: !1122, size: 1024, align: 64, offset: 5440)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list", scope: !22, file: !23, line: 1685, baseType: !71, size: 64, align: 64, offset: 6464)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "alpn_client_proto_list_len", scope: !22, file: !23, line: 1686, baseType: !404, size: 32, align: 32, offset: 6528)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !16, file: !4, line: 59, baseType: !26, size: 32, align: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "encrypted", scope: !16, file: !4, line: 60, baseType: !1690, size: 8, align: 8, offset: 96)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !1691, line: 230, baseType: !104)
!1691 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "closeFdOnShutdown", scope: !16, file: !4, line: 61, baseType: !1690, size: 8, align: 8, offset: 104)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "connectionFailed", scope: !16, file: !4, line: 62, baseType: !1690, size: 8, align: 8, offset: 112)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sslIOError", scope: !16, file: !4, line: 67, baseType: !26, size: 32, align: 32, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64, align: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmsghdr", file: !9, line: 246, size: 128, align: 64, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_len", scope: !1696, file: !9, line: 248, baseType: !288, size: 64, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_level", scope: !1696, file: !9, line: 253, baseType: !26, size: 32, align: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg_type", scope: !1696, file: !9, line: 254, baseType: !26, size: 32, align: 32, offset: 96)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "__cmsg_data", scope: !1696, file: !9, line: 256, baseType: !1702, offset: 128)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, align: 8, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: -1)
!1705 = !{!1706}
!1706 = distinct !DIGlobalVariable(name: "SSLModuleInitialized", scope: !0, file: !4, line: 71, type: !1690, isLocal: true, isDefinition: true, variable: i8* @SSLModuleInitialized)
!1707 = !{i32 2, !"Dwarf Version", i32 4}
!1708 = !{i32 2, !"Debug Info Version", i32 3}
!1709 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!1710 = distinct !DISubprogram(name: "SSL_Init", scope: !4, file: !4, line: 249, type: !1711, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1713, !199, !199}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64, align: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSLLibFn", file: !14, line: 34, baseType: !1715)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!103, !199, !199}
!1717 = !{}
!1718 = !DILocalVariable(name: "getLibFn", arg: 1, scope: !1710, file: !4, line: 249, type: !1713)
!1719 = !DIExpression()
!1720 = !DILocation(line: 249, column: 20, scope: !1710)
!1721 = !DILocalVariable(name: "defaultLib", arg: 2, scope: !1710, file: !4, line: 250, type: !199)
!1722 = !DILocation(line: 250, column: 22, scope: !1710)
!1723 = !DILocalVariable(name: "name", arg: 3, scope: !1710, file: !4, line: 251, type: !199)
!1724 = !DILocation(line: 251, column: 22, scope: !1710)
!1725 = !DILocation(line: 256, column: 8, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1710, file: !4, line: 256, column: 8)
!1727 = !DILocation(line: 256, column: 8, scope: !1710)
!1728 = !DILocation(line: 257, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !4, line: 256, column: 30)
!1730 = !DILocation(line: 260, column: 4, scope: !1710)
!1731 = !DILocation(line: 261, column: 4, scope: !1710)
!1732 = !DILocation(line: 263, column: 3, scope: !1710)
!1733 = !DILocation(line: 282, column: 4, scope: !1710)
!1734 = !DILocation(line: 284, column: 4, scope: !1710)
!1735 = !DILocation(line: 285, column: 4, scope: !1710)
!1736 = !DILocation(line: 287, column: 25, scope: !1710)
!1737 = !DILocation(line: 288, column: 1, scope: !1710)
!1738 = !DILocation(line: 288, column: 1, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1710, file: !4, discriminator: 1)
!1740 = distinct !DISubprogram(name: "SSL_New", scope: !4, file: !4, line: 306, type: !1741, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!13, !26, !1690}
!1743 = !DILocalVariable(name: "fd", arg: 1, scope: !1740, file: !4, line: 306, type: !26)
!1744 = !DILocation(line: 306, column: 13, scope: !1740)
!1745 = !DILocalVariable(name: "closeFdOnShutdown", arg: 2, scope: !1740, file: !4, line: 307, type: !1690)
!1746 = !DILocation(line: 307, column: 14, scope: !1740)
!1747 = !DILocalVariable(name: "sslConnection", scope: !1740, file: !4, line: 309, type: !13)
!1748 = !DILocation(line: 309, column: 12, scope: !1740)
!1749 = !DILocation(line: 311, column: 29, scope: !1740)
!1750 = !DILocation(line: 311, column: 20, scope: !1740)
!1751 = !DILocation(line: 311, column: 18, scope: !1740)
!1752 = !DILocation(line: 312, column: 30, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !4, line: 312, column: 10)
!1754 = distinct !DILexicalBlock(scope: !1740, file: !4, line: 312, column: 5)
!1755 = !DILocation(line: 312, column: 28, scope: !1753)
!1756 = !DILocation(line: 312, column: 27, scope: !1753)
!1757 = !DILocation(line: 312, column: 10, scope: !1753)
!1758 = !DILocation(line: 312, column: 10, scope: !1754)
!1759 = !DILocation(line: 312, column: 53, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1761, file: !4, discriminator: 1)
!1761 = distinct !DILexicalBlock(scope: !1753, file: !4, line: 312, column: 51)
!1762 = !DILocation(line: 313, column: 24, scope: !1740)
!1763 = !DILocation(line: 313, column: 4, scope: !1740)
!1764 = !DILocation(line: 313, column: 19, scope: !1740)
!1765 = !DILocation(line: 313, column: 22, scope: !1740)
!1766 = !DILocation(line: 314, column: 39, scope: !1740)
!1767 = !DILocation(line: 314, column: 4, scope: !1740)
!1768 = !DILocation(line: 314, column: 19, scope: !1740)
!1769 = !DILocation(line: 314, column: 37, scope: !1740)
!1770 = !DILocation(line: 316, column: 11, scope: !1740)
!1771 = !DILocation(line: 316, column: 4, scope: !1740)
!1772 = distinct !DISubprogram(name: "SSL_SetupAcceptWithContext", scope: !4, file: !4, line: 336, type: !1773, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1690, !13, !50}
!1775 = !DILocalVariable(name: "sSock", arg: 1, scope: !1772, file: !4, line: 336, type: !13)
!1776 = !DILocation(line: 336, column: 41, scope: !1772)
!1777 = !DILocalVariable(name: "ctx", arg: 2, scope: !1772, file: !4, line: 337, type: !50)
!1778 = !DILocation(line: 337, column: 39, scope: !1772)
!1779 = !DILocalVariable(name: "ret", scope: !1772, file: !4, line: 339, type: !1690)
!1780 = !DILocation(line: 339, column: 9, scope: !1772)
!1781 = !DILocation(line: 345, column: 28, scope: !1772)
!1782 = !DILocation(line: 345, column: 20, scope: !1772)
!1783 = !DILocation(line: 345, column: 4, scope: !1772)
!1784 = !DILocation(line: 345, column: 11, scope: !1772)
!1785 = !DILocation(line: 345, column: 18, scope: !1772)
!1786 = !DILocation(line: 346, column: 9, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1772, file: !4, line: 346, column: 8)
!1788 = !DILocation(line: 346, column: 16, scope: !1787)
!1789 = !DILocation(line: 346, column: 8, scope: !1772)
!1790 = !DILocation(line: 347, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !4, line: 346, column: 24)
!1792 = !DILocation(line: 348, column: 7, scope: !1791)
!1793 = !DILocation(line: 349, column: 7, scope: !1791)
!1794 = !DILocation(line: 349, column: 14, scope: !1791)
!1795 = !DILocation(line: 349, column: 31, scope: !1791)
!1796 = !DILocation(line: 350, column: 11, scope: !1791)
!1797 = !DILocation(line: 351, column: 7, scope: !1791)
!1798 = !DILocation(line: 353, column: 25, scope: !1772)
!1799 = !DILocation(line: 353, column: 32, scope: !1772)
!1800 = !DILocation(line: 353, column: 4, scope: !1772)
!1801 = !DILocation(line: 355, column: 4, scope: !1772)
!1802 = distinct !{!1802, !1801}
!1803 = !DILocalVariable(name: "_e", scope: !1804, file: !4, line: 355, type: !1805)
!1804 = distinct !DILexicalBlock(scope: !1772, file: !4, line: 355, column: 7)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "Err_Number", file: !1806, line: 42, baseType: !26)
!1806 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/err.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1807 = !DILocation(line: 355, column: 20, scope: !1804)
!1808 = !DILocation(line: 355, column: 5, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1804, file: !4, discriminator: 1)
!1810 = !DILocation(line: 355, column: 4, scope: !1809)
!1811 = !DILocation(line: 355, column: 20, scope: !1809)
!1812 = !DILocation(line: 355, column: 5, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1809, file: !4, discriminator: 2)
!1814 = !DILocation(line: 355, column: 6, scope: !1809)
!1815 = !DILocation(line: 355, column: 5, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1809, file: !4, discriminator: 3)
!1817 = !DILocation(line: 355, column: 3, scope: !1809)
!1818 = !DILocation(line: 355, column: 12, scope: !1809)
!1819 = !DILocation(line: 356, column: 20, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1772, file: !4, line: 356, column: 8)
!1821 = !DILocation(line: 356, column: 27, scope: !1820)
!1822 = !DILocation(line: 356, column: 35, scope: !1820)
!1823 = !DILocation(line: 356, column: 42, scope: !1820)
!1824 = !DILocation(line: 356, column: 9, scope: !1820)
!1825 = !DILocation(line: 356, column: 8, scope: !1772)
!1826 = !DILocation(line: 357, column: 7, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1820, file: !4, line: 356, column: 47)
!1828 = !DILocation(line: 358, column: 7, scope: !1827)
!1829 = !DILocation(line: 359, column: 7, scope: !1827)
!1830 = !DILocation(line: 359, column: 14, scope: !1827)
!1831 = !DILocation(line: 359, column: 31, scope: !1827)
!1832 = !DILocation(line: 360, column: 11, scope: !1827)
!1833 = !DILocation(line: 361, column: 7, scope: !1827)
!1834 = !DILocation(line: 363, column: 4, scope: !1772)
!1835 = distinct !{!1835, !1834}
!1836 = !DILocalVariable(name: "_e", scope: !1837, file: !4, line: 363, type: !1805)
!1837 = distinct !DILexicalBlock(scope: !1772, file: !4, line: 363, column: 7)
!1838 = !DILocation(line: 363, column: 20, scope: !1837)
!1839 = !DILocation(line: 363, column: 5, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1837, file: !4, discriminator: 1)
!1841 = !DILocation(line: 363, column: 4, scope: !1840)
!1842 = !DILocation(line: 363, column: 20, scope: !1840)
!1843 = !DILocation(line: 363, column: 5, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1840, file: !4, discriminator: 2)
!1845 = !DILocation(line: 363, column: 6, scope: !1840)
!1846 = !DILocation(line: 363, column: 5, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1840, file: !4, discriminator: 3)
!1848 = !DILocation(line: 363, column: 3, scope: !1840)
!1849 = !DILocation(line: 363, column: 12, scope: !1840)
!1850 = !DILocation(line: 365, column: 4, scope: !1772)
!1851 = !DILocation(line: 365, column: 11, scope: !1772)
!1852 = !DILocation(line: 365, column: 21, scope: !1772)
!1853 = !DILocation(line: 368, column: 11, scope: !1772)
!1854 = !DILocation(line: 368, column: 4, scope: !1772)
!1855 = distinct !DISubprogram(name: "SSLPrintErrors", scope: !4, file: !4, line: 99, type: !1856, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !1691, line: 173, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1860, line: 51, baseType: !404)
!1860 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1861 = !DILocalVariable(name: "logLevel", arg: 1, scope: !1855, file: !4, line: 99, type: !1858)
!1862 = !DILocation(line: 99, column: 23, scope: !1855)
!1863 = !DILocalVariable(name: "errNum", scope: !1855, file: !4, line: 108, type: !26)
!1864 = !DILocation(line: 108, column: 8, scope: !1855)
!1865 = !DILocalVariable(name: "errString", scope: !1855, file: !4, line: 109, type: !1866)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, align: 8, elements: !1510)
!1867 = !DILocation(line: 109, column: 9, scope: !1855)
!1868 = !DILocation(line: 110, column: 4, scope: !1855)
!1869 = !DILocation(line: 110, column: 21, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1855, file: !4, discriminator: 1)
!1871 = !DILocation(line: 110, column: 19, scope: !1870)
!1872 = !DILocation(line: 110, column: 4, scope: !1870)
!1873 = !DILocation(line: 111, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1855, file: !4, line: 110, column: 39)
!1875 = !DILocation(line: 111, column: 20, scope: !1874)
!1876 = !DILocation(line: 112, column: 26, scope: !1874)
!1877 = !DILocation(line: 112, column: 34, scope: !1874)
!1878 = !DILocation(line: 112, column: 7, scope: !1874)
!1879 = !DILocation(line: 114, column: 11, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1874, file: !4, line: 114, column: 11)
!1881 = !DILocation(line: 114, column: 20, scope: !1880)
!1882 = !DILocation(line: 114, column: 11, scope: !1874)
!1883 = !DILocation(line: 115, column: 37, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !4, line: 114, column: 35)
!1885 = !DILocation(line: 115, column: 10, scope: !1884)
!1886 = !DILocation(line: 116, column: 7, scope: !1884)
!1887 = !DILocation(line: 117, column: 33, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !4, line: 116, column: 14)
!1889 = !DILocation(line: 117, column: 10, scope: !1888)
!1890 = !DILocation(line: 110, column: 4, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1855, file: !4, discriminator: 2)
!1892 = distinct !{!1892, !1868}
!1893 = !DILocation(line: 120, column: 1, scope: !1855)
!1894 = distinct !DISubprogram(name: "SSL_Read", scope: !4, file: !4, line: 390, type: !1895, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1897, !13, !103, !288}
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1898, line: 102, baseType: !1899)
!1898 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !138, line: 172, baseType: !65)
!1900 = !DILocalVariable(name: "ssl", arg: 1, scope: !1894, file: !4, line: 390, type: !13)
!1901 = !DILocation(line: 390, column: 18, scope: !1894)
!1902 = !DILocalVariable(name: "buf", arg: 2, scope: !1894, file: !4, line: 391, type: !103)
!1903 = !DILocation(line: 391, column: 16, scope: !1894)
!1904 = !DILocalVariable(name: "num", arg: 3, scope: !1894, file: !4, line: 392, type: !288)
!1905 = !DILocation(line: 392, column: 17, scope: !1894)
!1906 = !DILocalVariable(name: "ret", scope: !1894, file: !4, line: 394, type: !26)
!1907 = !DILocation(line: 394, column: 8, scope: !1894)
!1908 = !DILocation(line: 397, column: 8, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1894, file: !4, line: 397, column: 8)
!1910 = !DILocation(line: 397, column: 13, scope: !1909)
!1911 = !DILocation(line: 397, column: 8, scope: !1894)
!1912 = !DILocation(line: 398, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !4, line: 397, column: 31)
!1914 = !DILocation(line: 399, column: 11, scope: !1913)
!1915 = !DILocation(line: 400, column: 7, scope: !1913)
!1916 = !DILocation(line: 403, column: 8, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1894, file: !4, line: 403, column: 8)
!1918 = !DILocation(line: 403, column: 13, scope: !1917)
!1919 = !DILocation(line: 403, column: 8, scope: !1894)
!1920 = !DILocalVariable(name: "result", scope: !1921, file: !4, line: 404, type: !26)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !4, line: 403, column: 24)
!1922 = !DILocation(line: 404, column: 11, scope: !1921)
!1923 = !DILocation(line: 410, column: 7, scope: !1921)
!1924 = !DILocation(line: 411, column: 25, scope: !1921)
!1925 = !DILocation(line: 411, column: 30, scope: !1921)
!1926 = !DILocation(line: 411, column: 38, scope: !1921)
!1927 = !DILocation(line: 411, column: 48, scope: !1921)
!1928 = !DILocation(line: 411, column: 43, scope: !1921)
!1929 = !DILocation(line: 411, column: 16, scope: !1921)
!1930 = !DILocation(line: 411, column: 14, scope: !1921)
!1931 = !DILocation(line: 413, column: 42, scope: !1921)
!1932 = !DILocation(line: 413, column: 47, scope: !1921)
!1933 = !DILocation(line: 413, column: 55, scope: !1921)
!1934 = !DILocation(line: 413, column: 25, scope: !1921)
!1935 = !DILocation(line: 413, column: 7, scope: !1921)
!1936 = !DILocation(line: 413, column: 12, scope: !1921)
!1937 = !DILocation(line: 413, column: 23, scope: !1921)
!1938 = !DILocation(line: 414, column: 11, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1921, file: !4, line: 414, column: 11)
!1940 = !DILocation(line: 414, column: 16, scope: !1939)
!1941 = !DILocation(line: 414, column: 27, scope: !1939)
!1942 = !DILocation(line: 414, column: 11, scope: !1921)
!1943 = !DILocation(line: 415, column: 10, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !4, line: 414, column: 45)
!1945 = distinct !{!1945, !1943}
!1946 = !DILocalVariable(name: "_e", scope: !1947, file: !4, line: 415, type: !1805)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !4, line: 415, column: 13)
!1948 = !DILocation(line: 415, column: 26, scope: !1947)
!1949 = !DILocation(line: 415, column: 11, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1947, file: !4, discriminator: 1)
!1951 = !DILocation(line: 415, column: 10, scope: !1950)
!1952 = !DILocation(line: 415, column: 26, scope: !1950)
!1953 = !DILocation(line: 415, column: 54, scope: !1950)
!1954 = !DILocation(line: 415, column: 59, scope: !1950)
!1955 = !DILocation(line: 415, column: 63, scope: !1950)
!1956 = !DILocation(line: 415, column: 68, scope: !1950)
!1957 = !DILocation(line: 415, column: 73, scope: !1950)
!1958 = !DILocation(line: 415, column: 11, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1950, file: !4, discriminator: 2)
!1960 = !DILocation(line: 415, column: 12, scope: !1950)
!1961 = !DILocation(line: 415, column: 11, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1950, file: !4, discriminator: 3)
!1963 = !DILocation(line: 415, column: 9, scope: !1950)
!1964 = !DILocation(line: 415, column: 18, scope: !1950)
!1965 = !DILocation(line: 417, column: 17, scope: !1944)
!1966 = !DILocation(line: 418, column: 7, scope: !1944)
!1967 = !DILocation(line: 419, column: 13, scope: !1921)
!1968 = !DILocation(line: 419, column: 11, scope: !1921)
!1969 = !DILocation(line: 420, column: 4, scope: !1921)
!1970 = !DILocation(line: 421, column: 18, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1917, file: !4, line: 420, column: 11)
!1972 = !DILocation(line: 421, column: 23, scope: !1971)
!1973 = !DILocation(line: 421, column: 27, scope: !1971)
!1974 = !DILocation(line: 421, column: 37, scope: !1971)
!1975 = !DILocation(line: 421, column: 32, scope: !1971)
!1976 = !DILocation(line: 421, column: 13, scope: !1971)
!1977 = !DILocation(line: 421, column: 11, scope: !1971)
!1978 = !DILocation(line: 403, column: 13, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1917, file: !4, discriminator: 1)
!1980 = !DILocation(line: 463, column: 11, scope: !1894)
!1981 = !DILocation(line: 463, column: 4, scope: !1894)
!1982 = distinct !DISubprogram(name: "SSLSetSystemError", scope: !4, file: !4, line: 139, type: !1983, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !26}
!1985 = !DILocalVariable(name: "err", arg: 1, scope: !1982, file: !4, line: 139, type: !26)
!1986 = !DILocation(line: 139, column: 23, scope: !1982)
!1987 = !DILocation(line: 141, column: 12, scope: !1982)
!1988 = !DILocation(line: 141, column: 4, scope: !1982)
!1989 = !DILocation(line: 146, column: 11, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1982, file: !4, line: 141, column: 17)
!1991 = !DILocation(line: 146, column: 15, scope: !1990)
!1992 = !DILocation(line: 148, column: 10, scope: !1990)
!1993 = !DILocation(line: 158, column: 11, scope: !1990)
!1994 = !DILocation(line: 158, column: 15, scope: !1990)
!1995 = !DILocation(line: 160, column: 10, scope: !1990)
!1996 = !DILocation(line: 162, column: 10, scope: !1990)
!1997 = !DILocation(line: 164, column: 1, scope: !1982)
!1998 = distinct !DISubprogram(name: "SSLSetErrorState", scope: !4, file: !4, line: 193, type: !1999, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!26, !19, !26}
!2001 = !DILocalVariable(name: "ssl", arg: 1, scope: !1998, file: !4, line: 193, type: !19)
!2002 = !DILocation(line: 193, column: 23, scope: !1998)
!2003 = !DILocalVariable(name: "result", arg: 2, scope: !1998, file: !4, line: 194, type: !26)
!2004 = !DILocation(line: 194, column: 22, scope: !1998)
!2005 = !DILocalVariable(name: "sslError", scope: !1998, file: !4, line: 196, type: !26)
!2006 = !DILocation(line: 196, column: 8, scope: !1998)
!2007 = !DILocation(line: 196, column: 33, scope: !1998)
!2008 = !DILocation(line: 196, column: 38, scope: !1998)
!2009 = !DILocation(line: 196, column: 19, scope: !1998)
!2010 = !DILocation(line: 197, column: 12, scope: !1998)
!2011 = !DILocation(line: 197, column: 4, scope: !1998)
!2012 = !DILocation(line: 199, column: 10, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1998, file: !4, line: 197, column: 22)
!2014 = distinct !{!2014, !2012}
!2015 = !DILocalVariable(name: "_e", scope: !2016, file: !4, line: 199, type: !1805)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !4, line: 199, column: 13)
!2017 = !DILocation(line: 199, column: 26, scope: !2016)
!2018 = !DILocation(line: 199, column: 11, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2016, file: !4, discriminator: 1)
!2020 = !DILocation(line: 199, column: 10, scope: !2019)
!2021 = !DILocation(line: 199, column: 26, scope: !2019)
!2022 = !DILocation(line: 199, column: 53, scope: !2019)
!2023 = !DILocation(line: 199, column: 11, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2019, file: !4, discriminator: 2)
!2025 = !DILocation(line: 199, column: 12, scope: !2019)
!2026 = !DILocation(line: 199, column: 11, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2019, file: !4, discriminator: 3)
!2028 = !DILocation(line: 199, column: 9, scope: !2019)
!2029 = !DILocation(line: 199, column: 18, scope: !2019)
!2030 = !DILocation(line: 200, column: 10, scope: !2013)
!2031 = !DILocation(line: 202, column: 10, scope: !2013)
!2032 = distinct !{!2032, !2031}
!2033 = !DILocalVariable(name: "_e", scope: !2034, file: !4, line: 202, type: !1805)
!2034 = distinct !DILexicalBlock(scope: !2013, file: !4, line: 202, column: 13)
!2035 = !DILocation(line: 202, column: 26, scope: !2034)
!2036 = !DILocation(line: 202, column: 11, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2034, file: !4, discriminator: 1)
!2038 = !DILocation(line: 202, column: 10, scope: !2037)
!2039 = !DILocation(line: 202, column: 26, scope: !2037)
!2040 = !DILocation(line: 202, column: 11, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2037, file: !4, discriminator: 2)
!2042 = !DILocation(line: 202, column: 12, scope: !2037)
!2043 = !DILocation(line: 202, column: 11, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2037, file: !4, discriminator: 3)
!2045 = !DILocation(line: 202, column: 9, scope: !2037)
!2046 = !DILocation(line: 202, column: 18, scope: !2037)
!2047 = !DILocation(line: 203, column: 10, scope: !2013)
!2048 = !DILocation(line: 205, column: 10, scope: !2013)
!2049 = distinct !{!2049, !2048}
!2050 = !DILocalVariable(name: "_e", scope: !2051, file: !4, line: 205, type: !1805)
!2051 = distinct !DILexicalBlock(scope: !2013, file: !4, line: 205, column: 13)
!2052 = !DILocation(line: 205, column: 26, scope: !2051)
!2053 = !DILocation(line: 205, column: 11, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2051, file: !4, discriminator: 1)
!2055 = !DILocation(line: 205, column: 10, scope: !2054)
!2056 = !DILocation(line: 205, column: 26, scope: !2054)
!2057 = !DILocation(line: 205, column: 11, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2054, file: !4, discriminator: 2)
!2059 = !DILocation(line: 205, column: 12, scope: !2054)
!2060 = !DILocation(line: 205, column: 11, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2054, file: !4, discriminator: 3)
!2062 = !DILocation(line: 205, column: 9, scope: !2054)
!2063 = !DILocation(line: 205, column: 18, scope: !2054)
!2064 = !DILocation(line: 206, column: 10, scope: !2013)
!2065 = !DILocation(line: 207, column: 10, scope: !2013)
!2066 = !DILocation(line: 209, column: 10, scope: !2013)
!2067 = distinct !{!2067, !2066}
!2068 = !DILocalVariable(name: "_e", scope: !2069, file: !4, line: 209, type: !1805)
!2069 = distinct !DILexicalBlock(scope: !2013, file: !4, line: 209, column: 13)
!2070 = !DILocation(line: 209, column: 26, scope: !2069)
!2071 = !DILocation(line: 209, column: 11, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2069, file: !4, discriminator: 1)
!2073 = !DILocation(line: 209, column: 10, scope: !2072)
!2074 = !DILocation(line: 209, column: 26, scope: !2072)
!2075 = !DILocation(line: 209, column: 11, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2072, file: !4, discriminator: 2)
!2077 = !DILocation(line: 209, column: 12, scope: !2072)
!2078 = !DILocation(line: 209, column: 11, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2072, file: !4, discriminator: 3)
!2080 = !DILocation(line: 209, column: 9, scope: !2072)
!2081 = !DILocation(line: 209, column: 18, scope: !2072)
!2082 = !DILocation(line: 210, column: 10, scope: !2013)
!2083 = !DILocation(line: 211, column: 10, scope: !2013)
!2084 = !DILocation(line: 213, column: 10, scope: !2013)
!2085 = distinct !{!2085, !2084}
!2086 = !DILocalVariable(name: "_e", scope: !2087, file: !4, line: 213, type: !1805)
!2087 = distinct !DILexicalBlock(scope: !2013, file: !4, line: 213, column: 13)
!2088 = !DILocation(line: 213, column: 26, scope: !2087)
!2089 = !DILocation(line: 213, column: 11, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2087, file: !4, discriminator: 1)
!2091 = !DILocation(line: 213, column: 10, scope: !2090)
!2092 = !DILocation(line: 213, column: 26, scope: !2090)
!2093 = !DILocation(line: 213, column: 11, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2090, file: !4, discriminator: 2)
!2095 = !DILocation(line: 213, column: 12, scope: !2090)
!2096 = !DILocation(line: 213, column: 11, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2090, file: !4, discriminator: 3)
!2098 = !DILocation(line: 213, column: 9, scope: !2090)
!2099 = !DILocation(line: 213, column: 18, scope: !2090)
!2100 = !DILocation(line: 214, column: 10, scope: !2013)
!2101 = !DILocation(line: 216, column: 10, scope: !2013)
!2102 = distinct !{!2102, !2101}
!2103 = !DILocalVariable(name: "_e", scope: !2104, file: !4, line: 216, type: !1805)
!2104 = distinct !DILexicalBlock(scope: !2013, file: !4, line: 216, column: 13)
!2105 = !DILocation(line: 216, column: 26, scope: !2104)
!2106 = !DILocation(line: 216, column: 11, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2104, file: !4, discriminator: 1)
!2108 = !DILocation(line: 216, column: 10, scope: !2107)
!2109 = !DILocation(line: 216, column: 26, scope: !2107)
!2110 = !DILocation(line: 216, column: 11, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2107, file: !4, discriminator: 2)
!2112 = !DILocation(line: 216, column: 12, scope: !2107)
!2113 = !DILocation(line: 216, column: 11, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2107, file: !4, discriminator: 3)
!2115 = !DILocation(line: 216, column: 9, scope: !2107)
!2116 = !DILocation(line: 216, column: 18, scope: !2107)
!2117 = !DILocation(line: 217, column: 10, scope: !2013)
!2118 = !DILocation(line: 218, column: 14, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2013, file: !4, line: 218, column: 14)
!2120 = !DILocation(line: 218, column: 21, scope: !2119)
!2121 = !DILocation(line: 218, column: 14, scope: !2013)
!2122 = !DILocation(line: 219, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !4, line: 218, column: 27)
!2124 = !DILocation(line: 220, column: 10, scope: !2123)
!2125 = !DILocation(line: 221, column: 49, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2119, file: !4, line: 220, column: 17)
!2127 = !DILocation(line: 221, column: 48, scope: !2126)
!2128 = !DILocation(line: 221, column: 60, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2126, file: !4, discriminator: 1)
!2130 = !DILocation(line: 221, column: 13, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2126, file: !4, discriminator: 2)
!2132 = !DILocation(line: 223, column: 10, scope: !2013)
!2133 = !DILocation(line: 225, column: 10, scope: !2013)
!2134 = !DILocation(line: 226, column: 10, scope: !2013)
!2135 = !DILocation(line: 227, column: 10, scope: !2013)
!2136 = !DILocation(line: 229, column: 11, scope: !1998)
!2137 = !DILocation(line: 229, column: 4, scope: !1998)
!2138 = distinct !DISubprogram(name: "SSL_RecvDataAndFd", scope: !4, file: !4, line: 487, type: !2139, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!1897, !13, !103, !288, !66}
!2141 = !DILocalVariable(name: "ssl", arg: 1, scope: !2138, file: !4, line: 487, type: !13)
!2142 = !DILocation(line: 487, column: 27, scope: !2138)
!2143 = !DILocalVariable(name: "buf", arg: 2, scope: !2138, file: !4, line: 488, type: !103)
!2144 = !DILocation(line: 488, column: 25, scope: !2138)
!2145 = !DILocalVariable(name: "num", arg: 3, scope: !2138, file: !4, line: 489, type: !288)
!2146 = !DILocation(line: 489, column: 26, scope: !2138)
!2147 = !DILocalVariable(name: "fd", arg: 4, scope: !2138, file: !4, line: 490, type: !66)
!2148 = !DILocation(line: 490, column: 24, scope: !2138)
!2149 = !DILocalVariable(name: "ret", scope: !2138, file: !4, line: 492, type: !26)
!2150 = !DILocation(line: 492, column: 8, scope: !2138)
!2151 = !DILocation(line: 496, column: 5, scope: !2138)
!2152 = !DILocation(line: 496, column: 8, scope: !2138)
!2153 = !DILocation(line: 497, column: 8, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2138, file: !4, line: 497, column: 8)
!2155 = !DILocation(line: 497, column: 13, scope: !2154)
!2156 = !DILocation(line: 497, column: 8, scope: !2138)
!2157 = !DILocation(line: 498, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !4, line: 497, column: 31)
!2159 = !DILocation(line: 499, column: 11, scope: !2158)
!2160 = !DILocation(line: 500, column: 7, scope: !2158)
!2161 = !DILocation(line: 509, column: 8, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2138, file: !4, line: 509, column: 8)
!2163 = !DILocation(line: 509, column: 13, scope: !2162)
!2164 = !DILocation(line: 509, column: 8, scope: !2138)
!2165 = !DILocalVariable(name: "result", scope: !2166, file: !4, line: 510, type: !26)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !4, line: 509, column: 24)
!2167 = !DILocation(line: 510, column: 11, scope: !2166)
!2168 = !DILocation(line: 512, column: 7, scope: !2166)
!2169 = !DILocation(line: 513, column: 25, scope: !2166)
!2170 = !DILocation(line: 513, column: 30, scope: !2166)
!2171 = !DILocation(line: 513, column: 38, scope: !2166)
!2172 = !DILocation(line: 513, column: 48, scope: !2166)
!2173 = !DILocation(line: 513, column: 43, scope: !2166)
!2174 = !DILocation(line: 513, column: 16, scope: !2166)
!2175 = !DILocation(line: 513, column: 14, scope: !2166)
!2176 = !DILocation(line: 515, column: 42, scope: !2166)
!2177 = !DILocation(line: 515, column: 47, scope: !2166)
!2178 = !DILocation(line: 515, column: 55, scope: !2166)
!2179 = !DILocation(line: 515, column: 25, scope: !2166)
!2180 = !DILocation(line: 515, column: 7, scope: !2166)
!2181 = !DILocation(line: 515, column: 12, scope: !2166)
!2182 = !DILocation(line: 515, column: 23, scope: !2166)
!2183 = !DILocation(line: 516, column: 11, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2166, file: !4, line: 516, column: 11)
!2185 = !DILocation(line: 516, column: 16, scope: !2184)
!2186 = !DILocation(line: 516, column: 27, scope: !2184)
!2187 = !DILocation(line: 516, column: 11, scope: !2166)
!2188 = !DILocation(line: 517, column: 10, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !4, line: 516, column: 45)
!2190 = distinct !{!2190, !2188}
!2191 = !DILocalVariable(name: "_e", scope: !2192, file: !4, line: 517, type: !1805)
!2192 = distinct !DILexicalBlock(scope: !2189, file: !4, line: 517, column: 13)
!2193 = !DILocation(line: 517, column: 26, scope: !2192)
!2194 = !DILocation(line: 517, column: 11, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2192, file: !4, discriminator: 1)
!2196 = !DILocation(line: 517, column: 10, scope: !2195)
!2197 = !DILocation(line: 517, column: 26, scope: !2195)
!2198 = !DILocation(line: 517, column: 54, scope: !2195)
!2199 = !DILocation(line: 517, column: 59, scope: !2195)
!2200 = !DILocation(line: 517, column: 63, scope: !2195)
!2201 = !DILocation(line: 517, column: 68, scope: !2195)
!2202 = !DILocation(line: 517, column: 73, scope: !2195)
!2203 = !DILocation(line: 517, column: 11, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2195, file: !4, discriminator: 2)
!2205 = !DILocation(line: 517, column: 12, scope: !2195)
!2206 = !DILocation(line: 517, column: 11, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2195, file: !4, discriminator: 3)
!2208 = !DILocation(line: 517, column: 9, scope: !2195)
!2209 = !DILocation(line: 517, column: 18, scope: !2195)
!2210 = !DILocation(line: 519, column: 17, scope: !2189)
!2211 = !DILocation(line: 520, column: 7, scope: !2189)
!2212 = !DILocation(line: 521, column: 13, scope: !2166)
!2213 = !DILocation(line: 521, column: 11, scope: !2166)
!2214 = !DILocation(line: 522, column: 4, scope: !2166)
!2215 = !DILocalVariable(name: "iov", scope: !2216, file: !4, line: 523, type: !2217)
!2216 = distinct !DILexicalBlock(scope: !2162, file: !4, line: 522, column: 11)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2218, line: 43, size: 128, align: 64, elements: !2219)
!2218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uio.h", directory: "/home/lichi/Desktop/open-vm-tools/line76")
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2217, file: !2218, line: 45, baseType: !50, size: 64, align: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2217, file: !2218, line: 46, baseType: !288, size: 64, align: 64, offset: 64)
!2222 = !DILocation(line: 523, column: 20, scope: !2216)
!2223 = !DILocalVariable(name: "msg", scope: !2216, file: !4, line: 524, type: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !9, line: 228, size: 448, align: 64, elements: !2225)
!2225 = !{!2226, !2227, !2230, !2232, !2233, !2234, !2235}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !2224, file: !9, line: 230, baseType: !50, size: 64, align: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !2224, file: !9, line: 231, baseType: !2228, size: 32, align: 32, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !9, line: 33, baseType: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !138, line: 189, baseType: !404)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !2224, file: !9, line: 233, baseType: !2231, size: 64, align: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64, align: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !2224, file: !9, line: 234, baseType: !288, size: 64, align: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !2224, file: !9, line: 236, baseType: !50, size: 64, align: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !2224, file: !9, line: 237, baseType: !288, size: 64, align: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !2224, file: !9, line: 242, baseType: !26, size: 32, align: 32, offset: 384)
!2236 = !DILocation(line: 524, column: 21, scope: !2216)
!2237 = !DILocalVariable(name: "cmsgBuf", scope: !2216, file: !4, line: 525, type: !2238)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2239, size: 192, align: 8, elements: !2241)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !1691, line: 177, baseType: !2240)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !1860, line: 48, baseType: !72)
!2241 = !{!2242}
!2242 = !DISubrange(count: 24)
!2243 = !DILocation(line: 525, column: 13, scope: !2216)
!2244 = !DILocation(line: 527, column: 22, scope: !2216)
!2245 = !DILocation(line: 527, column: 11, scope: !2216)
!2246 = !DILocation(line: 527, column: 20, scope: !2216)
!2247 = !DILocation(line: 528, column: 21, scope: !2216)
!2248 = !DILocation(line: 528, column: 11, scope: !2216)
!2249 = !DILocation(line: 528, column: 19, scope: !2216)
!2250 = !DILocation(line: 529, column: 11, scope: !2216)
!2251 = !DILocation(line: 529, column: 20, scope: !2216)
!2252 = !DILocation(line: 530, column: 11, scope: !2216)
!2253 = !DILocation(line: 530, column: 23, scope: !2216)
!2254 = !DILocation(line: 531, column: 11, scope: !2216)
!2255 = !DILocation(line: 531, column: 19, scope: !2216)
!2256 = !DILocation(line: 532, column: 11, scope: !2216)
!2257 = !DILocation(line: 532, column: 22, scope: !2216)
!2258 = !DILocation(line: 533, column: 25, scope: !2216)
!2259 = !DILocation(line: 533, column: 11, scope: !2216)
!2260 = !DILocation(line: 533, column: 23, scope: !2216)
!2261 = !DILocation(line: 534, column: 11, scope: !2216)
!2262 = !DILocation(line: 534, column: 26, scope: !2216)
!2263 = !DILocation(line: 535, column: 21, scope: !2216)
!2264 = !DILocation(line: 535, column: 26, scope: !2216)
!2265 = !DILocation(line: 535, column: 13, scope: !2216)
!2266 = !DILocation(line: 535, column: 11, scope: !2216)
!2267 = !DILocation(line: 536, column: 11, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2216, file: !4, line: 536, column: 11)
!2269 = !DILocation(line: 536, column: 15, scope: !2268)
!2270 = !DILocation(line: 536, column: 20, scope: !2268)
!2271 = !DILocation(line: 536, column: 27, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2268, file: !4, discriminator: 1)
!2273 = !DILocation(line: 536, column: 42, scope: !2272)
!2274 = !DILocation(line: 536, column: 11, scope: !2272)
!2275 = !DILocalVariable(name: "cmsg", scope: !2276, file: !4, line: 537, type: !1695)
!2276 = distinct !DILexicalBlock(scope: !2268, file: !4, line: 536, column: 48)
!2277 = !DILocation(line: 537, column: 26, scope: !2276)
!2278 = !DILocation(line: 539, column: 24, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !4, line: 539, column: 10)
!2280 = !DILocation(line: 539, column: 39, scope: !2279)
!2281 = !DILocation(line: 539, column: 22, scope: !2279)
!2282 = !DILocation(line: 539, column: 24, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2279, file: !4, discriminator: 1)
!2284 = !DILocation(line: 539, column: 68, scope: !2283)
!2285 = !DILocation(line: 539, column: 22, scope: !2283)
!2286 = !DILocation(line: 539, column: 22, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2279, file: !4, discriminator: 2)
!2288 = !DILocation(line: 539, column: 22, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2279, file: !4, discriminator: 3)
!2290 = !DILocation(line: 539, column: 20, scope: !2289)
!2291 = !DILocation(line: 539, column: 15, scope: !2289)
!2292 = !DILocation(line: 539, column: 42, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2294, file: !4, discriminator: 4)
!2294 = distinct !DILexicalBlock(scope: !2279, file: !4, line: 539, column: 10)
!2295 = !DILocation(line: 539, column: 10, scope: !2293)
!2296 = !DILocation(line: 540, column: 17, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !4, line: 540, column: 17)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !4, line: 539, column: 80)
!2299 = !DILocation(line: 540, column: 23, scope: !2297)
!2300 = !DILocation(line: 540, column: 34, scope: !2297)
!2301 = !DILocation(line: 540, column: 47, scope: !2297)
!2302 = !DILocation(line: 540, column: 50, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2297, file: !4, discriminator: 1)
!2304 = !DILocation(line: 540, column: 56, scope: !2303)
!2305 = !DILocation(line: 540, column: 66, scope: !2303)
!2306 = !DILocation(line: 540, column: 17, scope: !2303)
!2307 = !DILocalVariable(name: "receivedFd", scope: !2308, file: !4, line: 541, type: !26)
!2308 = distinct !DILexicalBlock(scope: !2297, file: !4, line: 540, column: 81)
!2309 = !DILocation(line: 541, column: 20, scope: !2308)
!2310 = !DILocation(line: 541, column: 40, scope: !2308)
!2311 = !DILocation(line: 541, column: 43, scope: !2308)
!2312 = !DILocation(line: 541, column: 33, scope: !2308)
!2313 = !DILocation(line: 544, column: 22, scope: !2308)
!2314 = !DILocation(line: 544, column: 17, scope: !2308)
!2315 = !DILocation(line: 544, column: 20, scope: !2308)
!2316 = !DILocation(line: 545, column: 13, scope: !2308)
!2317 = !DILocation(line: 546, column: 10, scope: !2298)
!2318 = !DILocation(line: 539, column: 55, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2294, file: !4, discriminator: 5)
!2320 = !DILocation(line: 539, column: 53, scope: !2319)
!2321 = !DILocation(line: 539, column: 10, scope: !2319)
!2322 = distinct !{!2322, !2323}
!2323 = !DILocation(line: 539, column: 10, scope: !2276)
!2324 = !DILocation(line: 547, column: 7, scope: !2276)
!2325 = !DILocation(line: 509, column: 13, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2162, file: !4, discriminator: 1)
!2327 = !DILocation(line: 552, column: 11, scope: !2138)
!2328 = !DILocation(line: 552, column: 4, scope: !2138)
!2329 = distinct !DISubprogram(name: "SSL_Write", scope: !4, file: !4, line: 572, type: !2330, isLocal: false, isDefinition: true, scopeLine: 575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!1897, !13, !199, !288}
!2332 = !DILocalVariable(name: "ssl", arg: 1, scope: !2329, file: !4, line: 572, type: !13)
!2333 = !DILocation(line: 572, column: 19, scope: !2329)
!2334 = !DILocalVariable(name: "buf", arg: 2, scope: !2329, file: !4, line: 573, type: !199)
!2335 = !DILocation(line: 573, column: 23, scope: !2329)
!2336 = !DILocalVariable(name: "num", arg: 3, scope: !2329, file: !4, line: 574, type: !288)
!2337 = !DILocation(line: 574, column: 18, scope: !2329)
!2338 = !DILocalVariable(name: "ret", scope: !2329, file: !4, line: 576, type: !26)
!2339 = !DILocation(line: 576, column: 8, scope: !2329)
!2340 = !DILocation(line: 579, column: 8, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2329, file: !4, line: 579, column: 8)
!2342 = !DILocation(line: 579, column: 13, scope: !2341)
!2343 = !DILocation(line: 579, column: 8, scope: !2329)
!2344 = !DILocation(line: 580, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !4, line: 579, column: 31)
!2346 = !DILocation(line: 581, column: 11, scope: !2345)
!2347 = !DILocation(line: 582, column: 7, scope: !2345)
!2348 = !DILocation(line: 584, column: 8, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2329, file: !4, line: 584, column: 8)
!2350 = !DILocation(line: 584, column: 13, scope: !2349)
!2351 = !DILocation(line: 584, column: 8, scope: !2329)
!2352 = !DILocalVariable(name: "result", scope: !2353, file: !4, line: 585, type: !26)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !4, line: 584, column: 24)
!2354 = !DILocation(line: 585, column: 11, scope: !2353)
!2355 = !DILocation(line: 587, column: 7, scope: !2353)
!2356 = !DILocation(line: 588, column: 26, scope: !2353)
!2357 = !DILocation(line: 588, column: 31, scope: !2353)
!2358 = !DILocation(line: 588, column: 39, scope: !2353)
!2359 = !DILocation(line: 588, column: 49, scope: !2353)
!2360 = !DILocation(line: 588, column: 44, scope: !2353)
!2361 = !DILocation(line: 588, column: 16, scope: !2353)
!2362 = !DILocation(line: 588, column: 14, scope: !2353)
!2363 = !DILocation(line: 590, column: 42, scope: !2353)
!2364 = !DILocation(line: 590, column: 47, scope: !2353)
!2365 = !DILocation(line: 590, column: 55, scope: !2353)
!2366 = !DILocation(line: 590, column: 25, scope: !2353)
!2367 = !DILocation(line: 590, column: 7, scope: !2353)
!2368 = !DILocation(line: 590, column: 12, scope: !2353)
!2369 = !DILocation(line: 590, column: 23, scope: !2353)
!2370 = !DILocation(line: 591, column: 11, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2353, file: !4, line: 591, column: 11)
!2372 = !DILocation(line: 591, column: 16, scope: !2371)
!2373 = !DILocation(line: 591, column: 27, scope: !2371)
!2374 = !DILocation(line: 591, column: 11, scope: !2353)
!2375 = !DILocation(line: 592, column: 10, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2371, file: !4, line: 591, column: 45)
!2377 = distinct !{!2377, !2375}
!2378 = !DILocalVariable(name: "_e", scope: !2379, file: !4, line: 592, type: !1805)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !4, line: 592, column: 13)
!2380 = !DILocation(line: 592, column: 26, scope: !2379)
!2381 = !DILocation(line: 592, column: 11, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2379, file: !4, discriminator: 1)
!2383 = !DILocation(line: 592, column: 10, scope: !2382)
!2384 = !DILocation(line: 592, column: 26, scope: !2382)
!2385 = !DILocation(line: 592, column: 38, scope: !2382)
!2386 = !DILocation(line: 592, column: 43, scope: !2382)
!2387 = !DILocation(line: 592, column: 11, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2382, file: !4, discriminator: 2)
!2389 = !DILocation(line: 592, column: 12, scope: !2382)
!2390 = !DILocation(line: 592, column: 11, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2382, file: !4, discriminator: 3)
!2392 = !DILocation(line: 592, column: 9, scope: !2382)
!2393 = !DILocation(line: 592, column: 18, scope: !2382)
!2394 = !DILocation(line: 593, column: 17, scope: !2376)
!2395 = !DILocation(line: 594, column: 7, scope: !2376)
!2396 = !DILocation(line: 595, column: 13, scope: !2353)
!2397 = !DILocation(line: 595, column: 11, scope: !2353)
!2398 = !DILocation(line: 596, column: 4, scope: !2353)
!2399 = !DILocation(line: 597, column: 19, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2349, file: !4, line: 596, column: 11)
!2401 = !DILocation(line: 597, column: 24, scope: !2400)
!2402 = !DILocation(line: 597, column: 28, scope: !2400)
!2403 = !DILocation(line: 597, column: 37, scope: !2400)
!2404 = !DILocation(line: 597, column: 32, scope: !2400)
!2405 = !DILocation(line: 597, column: 13, scope: !2400)
!2406 = !DILocation(line: 597, column: 11, scope: !2400)
!2407 = !DILocation(line: 584, column: 13, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2349, file: !4, discriminator: 1)
!2409 = !DILocation(line: 601, column: 11, scope: !2329)
!2410 = !DILocation(line: 601, column: 4, scope: !2329)
!2411 = distinct !DISubprogram(name: "SSL_Pending", scope: !4, file: !4, line: 622, type: !2412, isLocal: false, isDefinition: true, scopeLine: 623, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!26, !13}
!2414 = !DILocalVariable(name: "ssl", arg: 1, scope: !2411, file: !4, line: 622, type: !13)
!2415 = !DILocation(line: 622, column: 21, scope: !2411)
!2416 = !DILocalVariable(name: "ret", scope: !2411, file: !4, line: 624, type: !26)
!2417 = !DILocation(line: 624, column: 8, scope: !2411)
!2418 = !DILocation(line: 627, column: 8, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2411, file: !4, line: 627, column: 8)
!2420 = !DILocation(line: 627, column: 13, scope: !2419)
!2421 = !DILocation(line: 627, column: 8, scope: !2411)
!2422 = !DILocation(line: 628, column: 25, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !4, line: 627, column: 24)
!2424 = !DILocation(line: 628, column: 30, scope: !2423)
!2425 = !DILocation(line: 628, column: 13, scope: !2423)
!2426 = !DILocation(line: 628, column: 11, scope: !2423)
!2427 = !DILocation(line: 629, column: 4, scope: !2423)
!2428 = !DILocation(line: 630, column: 11, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2419, file: !4, line: 629, column: 11)
!2430 = !DILocation(line: 633, column: 11, scope: !2411)
!2431 = !DILocation(line: 633, column: 4, scope: !2411)
!2432 = distinct !DISubprogram(name: "SSL_SetCloseOnShutdownFlag", scope: !4, file: !4, line: 654, type: !2433, isLocal: false, isDefinition: true, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !13}
!2435 = !DILocalVariable(name: "ssl", arg: 1, scope: !2432, file: !4, line: 654, type: !13)
!2436 = !DILocation(line: 654, column: 36, scope: !2432)
!2437 = !DILocation(line: 657, column: 4, scope: !2432)
!2438 = !DILocation(line: 657, column: 9, scope: !2432)
!2439 = !DILocation(line: 657, column: 27, scope: !2432)
!2440 = !DILocation(line: 658, column: 1, scope: !2432)
!2441 = distinct !DISubprogram(name: "SSL_Shutdown", scope: !4, file: !4, line: 681, type: !2412, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2442 = !DILocalVariable(name: "ssl", arg: 1, scope: !2441, file: !4, line: 681, type: !13)
!2443 = !DILocation(line: 681, column: 22, scope: !2441)
!2444 = !DILocalVariable(name: "retVal", scope: !2441, file: !4, line: 683, type: !26)
!2445 = !DILocation(line: 683, column: 8, scope: !2441)
!2446 = !DILocation(line: 686, column: 4, scope: !2441)
!2447 = distinct !{!2447, !2446}
!2448 = !DILocalVariable(name: "_e", scope: !2449, file: !4, line: 686, type: !1805)
!2449 = distinct !DILexicalBlock(scope: !2441, file: !4, line: 686, column: 7)
!2450 = !DILocation(line: 686, column: 20, scope: !2449)
!2451 = !DILocation(line: 686, column: 5, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2449, file: !4, discriminator: 1)
!2453 = !DILocation(line: 686, column: 4, scope: !2452)
!2454 = !DILocation(line: 686, column: 20, scope: !2452)
!2455 = !DILocation(line: 686, column: 47, scope: !2452)
!2456 = !DILocation(line: 686, column: 52, scope: !2452)
!2457 = !DILocation(line: 686, column: 5, scope: !2458)
!2458 = !DILexicalBlockFile(scope: !2452, file: !4, discriminator: 2)
!2459 = !DILocation(line: 686, column: 6, scope: !2452)
!2460 = !DILocation(line: 686, column: 5, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2452, file: !4, discriminator: 3)
!2462 = !DILocation(line: 686, column: 3, scope: !2452)
!2463 = !DILocation(line: 686, column: 12, scope: !2452)
!2464 = !DILocation(line: 687, column: 8, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2441, file: !4, line: 687, column: 8)
!2466 = !DILocation(line: 687, column: 13, scope: !2465)
!2467 = !DILocation(line: 687, column: 8, scope: !2441)
!2468 = !DILocation(line: 689, column: 20, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !4, line: 687, column: 24)
!2470 = !DILocation(line: 689, column: 25, scope: !2469)
!2471 = !DILocation(line: 689, column: 7, scope: !2469)
!2472 = !DILocation(line: 690, column: 4, scope: !2469)
!2473 = !DILocation(line: 691, column: 8, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2441, file: !4, line: 691, column: 8)
!2475 = !DILocation(line: 691, column: 13, scope: !2474)
!2476 = !DILocation(line: 691, column: 8, scope: !2441)
!2477 = !DILocation(line: 692, column: 16, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !4, line: 691, column: 21)
!2479 = !DILocation(line: 692, column: 21, scope: !2478)
!2480 = !DILocation(line: 692, column: 7, scope: !2478)
!2481 = !DILocation(line: 693, column: 4, scope: !2478)
!2482 = !DILocation(line: 695, column: 8, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2441, file: !4, line: 695, column: 8)
!2484 = !DILocation(line: 695, column: 13, scope: !2483)
!2485 = !DILocation(line: 695, column: 8, scope: !2441)
!2486 = !DILocation(line: 696, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !4, line: 695, column: 32)
!2488 = distinct !{!2488, !2486}
!2489 = !DILocalVariable(name: "_e", scope: !2490, file: !4, line: 696, type: !1805)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !4, line: 696, column: 10)
!2491 = !DILocation(line: 696, column: 23, scope: !2490)
!2492 = !DILocation(line: 696, column: 8, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2490, file: !4, discriminator: 1)
!2494 = !DILocation(line: 696, column: 7, scope: !2493)
!2495 = !DILocation(line: 696, column: 23, scope: !2493)
!2496 = !DILocation(line: 696, column: 44, scope: !2493)
!2497 = !DILocation(line: 696, column: 49, scope: !2493)
!2498 = !DILocation(line: 696, column: 8, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2493, file: !4, discriminator: 2)
!2500 = !DILocation(line: 696, column: 9, scope: !2493)
!2501 = !DILocation(line: 696, column: 8, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2493, file: !4, discriminator: 3)
!2503 = !DILocation(line: 696, column: 6, scope: !2493)
!2504 = !DILocation(line: 696, column: 15, scope: !2493)
!2505 = !DILocation(line: 703, column: 22, scope: !2487)
!2506 = !DILocation(line: 703, column: 27, scope: !2487)
!2507 = !DILocation(line: 703, column: 16, scope: !2487)
!2508 = !DILocation(line: 703, column: 14, scope: !2487)
!2509 = !DILocation(line: 704, column: 4, scope: !2487)
!2510 = !DILocation(line: 706, column: 9, scope: !2441)
!2511 = !DILocation(line: 706, column: 4, scope: !2441)
!2512 = !DILocation(line: 707, column: 4, scope: !2441)
!2513 = distinct !{!2513, !2512}
!2514 = !DILocalVariable(name: "_e", scope: !2515, file: !4, line: 707, type: !1805)
!2515 = distinct !DILexicalBlock(scope: !2441, file: !4, line: 707, column: 7)
!2516 = !DILocation(line: 707, column: 20, scope: !2515)
!2517 = !DILocation(line: 707, column: 5, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2515, file: !4, discriminator: 1)
!2519 = !DILocation(line: 707, column: 4, scope: !2518)
!2520 = !DILocation(line: 707, column: 20, scope: !2518)
!2521 = !DILocation(line: 707, column: 5, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2518, file: !4, discriminator: 2)
!2523 = !DILocation(line: 707, column: 6, scope: !2518)
!2524 = !DILocation(line: 707, column: 5, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2518, file: !4, discriminator: 3)
!2526 = !DILocation(line: 707, column: 3, scope: !2518)
!2527 = !DILocation(line: 707, column: 12, scope: !2518)
!2528 = !DILocation(line: 709, column: 11, scope: !2441)
!2529 = !DILocation(line: 709, column: 4, scope: !2441)
!2530 = distinct !DISubprogram(name: "SSL_GetFd", scope: !4, file: !4, line: 727, type: !2412, isLocal: false, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2531 = !DILocalVariable(name: "ssl", arg: 1, scope: !2530, file: !4, line: 727, type: !13)
!2532 = !DILocation(line: 727, column: 19, scope: !2530)
!2533 = !DILocation(line: 731, column: 11, scope: !2530)
!2534 = !DILocation(line: 731, column: 16, scope: !2530)
!2535 = !DILocation(line: 731, column: 4, scope: !2530)
!2536 = distinct !DISubprogram(name: "SSL_WantRead", scope: !4, file: !4, line: 752, type: !2537, isLocal: false, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!26, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2540 = !DILocalVariable(name: "ssl", arg: 1, scope: !2536, file: !4, line: 752, type: !2539)
!2541 = !DILocation(line: 752, column: 28, scope: !2536)
!2542 = !DILocation(line: 757, column: 10, scope: !2536)
!2543 = !DILocation(line: 757, column: 15, scope: !2536)
!2544 = !DILocation(line: 757, column: 11, scope: !2536)
!2545 = !DILocation(line: 757, column: 12, scope: !2536)
!2546 = !DILocation(line: 757, column: 4, scope: !2536)
!2547 = distinct !DISubprogram(name: "SSL_TryCompleteAccept", scope: !4, file: !4, line: 781, type: !2412, isLocal: false, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2548 = !DILocalVariable(name: "ssl", arg: 1, scope: !2547, file: !4, line: 781, type: !13)
!2549 = !DILocation(line: 781, column: 31, scope: !2547)
!2550 = !DILocalVariable(name: "sslRet", scope: !2547, file: !4, line: 783, type: !26)
!2551 = !DILocation(line: 783, column: 8, scope: !2547)
!2552 = !DILocation(line: 788, column: 4, scope: !2547)
!2553 = !DILocation(line: 789, column: 24, scope: !2547)
!2554 = !DILocation(line: 789, column: 29, scope: !2547)
!2555 = !DILocation(line: 789, column: 13, scope: !2547)
!2556 = !DILocation(line: 789, column: 11, scope: !2547)
!2557 = !DILocation(line: 790, column: 36, scope: !2547)
!2558 = !DILocation(line: 790, column: 41, scope: !2547)
!2559 = !DILocation(line: 790, column: 49, scope: !2547)
!2560 = !DILocation(line: 790, column: 22, scope: !2547)
!2561 = !DILocation(line: 790, column: 4, scope: !2547)
!2562 = !DILocation(line: 790, column: 9, scope: !2547)
!2563 = !DILocation(line: 790, column: 20, scope: !2547)
!2564 = !DILocation(line: 792, column: 12, scope: !2547)
!2565 = !DILocation(line: 792, column: 17, scope: !2547)
!2566 = !DILocation(line: 792, column: 4, scope: !2547)
!2567 = !DILocation(line: 794, column: 7, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2547, file: !4, line: 792, column: 29)
!2569 = !DILocation(line: 797, column: 7, scope: !2568)
!2570 = !DILocation(line: 799, column: 7, scope: !2568)
!2571 = !DILocation(line: 799, column: 12, scope: !2568)
!2572 = !DILocation(line: 799, column: 29, scope: !2568)
!2573 = !DILocation(line: 800, column: 7, scope: !2568)
!2574 = !DILocation(line: 801, column: 7, scope: !2568)
!2575 = !DILocation(line: 803, column: 1, scope: !2547)
!2576 = distinct !DISubprogram(name: "SSL_NewContext", scope: !4, file: !4, line: 829, type: !2577, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1717)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!50}
!2579 = !DILocalVariable(name: "ctx", scope: !2576, file: !4, line: 831, type: !86)
!2580 = !DILocation(line: 831, column: 13, scope: !2576)
!2581 = !DILocalVariable(name: "ctxOptions", scope: !2576, file: !4, line: 832, type: !65)
!2582 = !DILocation(line: 832, column: 9, scope: !2576)
!2583 = !DILocation(line: 834, column: 22, scope: !2576)
!2584 = !DILocation(line: 834, column: 10, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2576, file: !4, discriminator: 1)
!2586 = !DILocation(line: 834, column: 8, scope: !2576)
!2587 = !DILocation(line: 836, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2576, file: !4, line: 836, column: 8)
!2589 = !DILocation(line: 836, column: 8, scope: !2576)
!2590 = !DILocation(line: 837, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !4, line: 836, column: 14)
!2592 = !DILocation(line: 838, column: 7, scope: !2591)
!2593 = !DILocation(line: 845, column: 15, scope: !2576)
!2594 = !DILocation(line: 854, column: 15, scope: !2576)
!2595 = !DILocation(line: 858, column: 18, scope: !2576)
!2596 = !DILocation(line: 861, column: 3, scope: !2576)
!2597 = !DILocation(line: 872, column: 17, scope: !2576)
!2598 = !DILocation(line: 872, column: 4, scope: !2576)
!2599 = !DILocation(line: 875, column: 17, scope: !2576)
!2600 = !DILocation(line: 875, column: 4, scope: !2576)
!2601 = !DILocation(line: 883, column: 31, scope: !2576)
!2602 = !DILocation(line: 883, column: 4, scope: !2576)
!2603 = !DILocation(line: 890, column: 28, scope: !2576)
!2604 = !DILocation(line: 890, column: 4, scope: !2576)
!2605 = !DILocation(line: 892, column: 11, scope: !2576)
!2606 = !DILocation(line: 892, column: 4, scope: !2576)
