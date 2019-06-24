; ModuleID = './line11-spool.o.i'
source_filename = "./line11-spool.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.config = type { i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, %struct.ssl_st* }
%struct.ssl_st = type { i32, i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, i32, i32, %struct.buf_mem_st*, i8*, i32, i32, i8*, i32, %struct.ssl2_state_st*, %struct.ssl3_state_st*, %struct.dtls1_state_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, %struct.env_md_ctx_st*, %struct.comp_ctx_st*, %struct.cert_st*, i32, [32 x i8], %struct.ssl_session_st*, i32 (%struct.ssl_st*, i8*, i32*)*, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, %struct.ssl_ctx_st*, i32, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, i32, i64, i64, i64, i32, i32, i32, void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i32, i32, %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i32, i32, i64, i8*, i64, i8*, i8*, i64, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, %struct.ssl_ctx_st*, i8*, i8, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, %struct.srp_ctx_st, i8*, i32 }
%struct.ssl_method_st = type { i32, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i32, i32, i64, i32*)*, i32 (%struct.ssl_st*, i32, i8*, i32, i32)*, i32 (%struct.ssl_st*, i32, i8*, i32)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, i8*)*, i32 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, %struct.ssl_method_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.ssl3_enc_method = type opaque
%struct.bio_st = type { %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, void (%struct.bio_st*, i32, i8*, i32, i64, i64)*)* }
%struct.buf_mem_st = type { i64, i8*, i64 }
%struct.ssl2_state_st = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, [32 x i8], i32, [16 x i8], i32, [48 x i8], i64, i64, %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32 }
%struct.ssl3_state_st = type { i64, i32, [8 x i8], i32, [64 x i8], [8 x i8], i32, [64 x i8], [32 x i8], [32 x i8], i32, i32, i32, %struct.ssl3_buffer_st, %struct.ssl3_buffer_st, %struct.ssl3_record_st, %struct.ssl3_record_st, [2 x i8], i32, [4 x i8], i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.env_md_ctx_st**, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, i8*, i64, i8*, i64, %struct.anon.5, [64 x i8], i8, [64 x i8], i8, i32, i32, i8, i8*, i32 }
%struct.ssl3_buffer_st = type { i8*, i64, i32, i32 }
%struct.ssl3_record_st = type { i32, i32, i32, i8*, i8*, i8*, i64, [8 x i8] }
%struct.anon.5 = type { [128 x i8], [128 x i8], i32, [128 x i8], i32, i64, i32, %struct.ssl_cipher_st*, %struct.dh_st*, %struct.ec_key_st*, i32, i32, i32, i32, [9 x i8], %struct.stack_st_X509_NAME*, i32, i32, i8*, %struct.evp_cipher_st*, %struct.env_md_st*, i32, i32, %struct.ssl_comp_st*, i32 }
%struct.dh_st = type { i32, i32, %struct.bignum_st*, %struct.bignum_st*, i64, %struct.bignum_st*, %struct.bignum_st*, i32, %struct.bn_mont_ctx_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, %struct.bignum_st*, i32, %struct.crypto_ex_data_st, %struct.dh_method*, %struct.engine_st* }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.dh_method = type { i8*, i32 (%struct.dh_st*)*, i32 (i8*, %struct.bignum_st*, %struct.dh_st*)*, i32 (%struct.dh_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.dh_st*)*, i32 (%struct.dh_st*)*, i32, i8*, i32 (%struct.dh_st*, i32, i32, %struct.bn_gencb_st*)* }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon.2 }
%union.anon.2 = type { void (i32, i32, i8*)* }
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
%struct.evp_pkey_st = type { i32, i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %union.anon.1, i32, %struct.stack_st_X509_ATTRIBUTE* }
%struct.evp_pkey_asn1_method_st = type opaque
%union.anon.1 = type { i8* }
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
%struct.ssl_ctx_st = type { %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.3, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, %struct.crypto_ex_data_st, %struct.env_md_st*, %struct.env_md_st*, %struct.env_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, i64, i64, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i32, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, i32, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], [16 x i8], [16 x i8], i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i8*, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32, %struct.ssl3_buf_freelist_st*, %struct.ssl3_buf_freelist_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i32, i64, i8*, i64, i8* }
%struct.lhash_st_SSL_SESSION = type { i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type { %struct.stack_st }
%struct.hmac_ctx_st = type { %struct.env_md_st*, %struct.env_md_ctx_st, %struct.env_md_ctx_st, %struct.env_md_ctx_st, i32, [128 x i8] }
%struct.ssl3_buf_freelist_st = type opaque
%struct.stack_st_SRTP_PROTECTION_PROFILE = type { %struct.stack_st }
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.strlist = type { %struct.stritem* }
%struct.stritem = type { %struct.anon.0, i8* }
%struct.anon.0 = type { %struct.stritem* }
%struct.queue = type { %struct.queueh, i8*, %struct._IO_FILE*, i8*, i8* }
%struct.queueh = type { %struct.qitem* }
%struct.qitem = type { %struct.anon, i8*, i8*, i8*, i8*, i8*, %struct._IO_FILE*, %struct._IO_FILE*, i32 }
%struct.anon = type { %struct.qitem*, %struct.qitem** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@config = external global %struct.config, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"tmp_XXXXXXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@tmpfs = external global %struct.strlist, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"new mail from user=%s uid=%d envelope_from=<%s>\00", align 1
@username = external global [50 x i8], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"%s.%lx\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s/Q%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s/M%s\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"mail to=<%s> queued as %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"reading queue\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"could not pick up queue file: `%s'/`%s': %m\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"could not acquire queue file: %m\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"could not open flush file: %m\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"could not touch flush file: %m\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"ID: %s\0ASender: %s\0ARecipient: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Sender\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Recipient\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"ignoring unknown queue info `%s' in `%s'\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"malformed queue file `%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @newspoolf(%struct.queue*) #0 !dbg !29 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.queue*, align 8
  %4 = alloca [4097 x i8], align 16
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stritem*, align 8
  %7 = alloca i32, align 4
  store %struct.queue* %0, %struct.queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.queue** %3, metadata !124, metadata !125), !dbg !126
  call void @llvm.dbg.declare(metadata [4097 x i8]* %4, metadata !127, metadata !125), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !132, metadata !125), !dbg !170
  call void @llvm.dbg.declare(metadata %struct.stritem** %6, metadata !171, metadata !125), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %7, metadata !181, metadata !125), !dbg !182
  %8 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !183
  %9 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !185
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %8, i64 4097, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !186
  %11 = icmp sle i32 %10, 0, !dbg !187
  br i1 %11, label %12, label %13, !dbg !188

; <label>:12:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !189
  br label %96, !dbg !189

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !190
  %15 = call i32 @mkstemp(i8* %14), !dbg !191
  store i32 %15, i32* %7, align 4, !dbg !192
  %16 = load i32, i32* %7, align 4, !dbg !193
  %17 = icmp slt i32 %16, 0, !dbg !195
  br i1 %17, label %18, label %19, !dbg !196

; <label>:18:                                     ; preds = %13
  store i32 -1, i32* %2, align 4, !dbg !197
  br label %96, !dbg !197

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %7, align 4, !dbg !198
  %21 = call i32 @fchmod(i32 %20, i32 432) #8, !dbg !200
  %22 = icmp slt i32 %21, 0, !dbg !201
  br i1 %22, label %23, label %24, !dbg !202

; <label>:23:                                     ; preds = %19
  br label %81, !dbg !203

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* %7, align 4, !dbg !204
  %26 = call i32 @flock(i32 %25, i32 2) #8, !dbg !206
  %27 = icmp eq i32 %26, -1, !dbg !207
  br i1 %27, label %28, label %29, !dbg !208

; <label>:28:                                     ; preds = %24
  br label %81, !dbg !209

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !210
  %31 = call noalias i8* @strdup(i8* %30) #8, !dbg !211
  %32 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !212
  %33 = getelementptr inbounds %struct.queue, %struct.queue* %32, i32 0, i32 3, !dbg !213
  store i8* %31, i8** %33, align 8, !dbg !214
  %34 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !215
  %35 = getelementptr inbounds %struct.queue, %struct.queue* %34, i32 0, i32 3, !dbg !217
  %36 = load i8*, i8** %35, align 8, !dbg !217
  %37 = icmp eq i8* %36, null, !dbg !218
  br i1 %37, label %38, label %39, !dbg !219

; <label>:38:                                     ; preds = %29
  br label %81, !dbg !220

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %7, align 4, !dbg !221
  %41 = call i32 @fstat(i32 %40, %struct.stat* %5) #8, !dbg !223
  %42 = icmp ne i32 %41, 0, !dbg !224
  br i1 %42, label %43, label %44, !dbg !225

; <label>:43:                                     ; preds = %39
  br label %81, !dbg !226

; <label>:44:                                     ; preds = %39
  %45 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !227
  %46 = getelementptr inbounds %struct.queue, %struct.queue* %45, i32 0, i32 1, !dbg !229
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1, !dbg !230
  %48 = load i64, i64* %47, align 8, !dbg !230
  %49 = call i32 (i8**, i8*, ...) @asprintf(i8** %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %48) #8, !dbg !231
  %50 = icmp slt i32 %49, 0, !dbg !232
  br i1 %50, label %51, label %52, !dbg !233

; <label>:51:                                     ; preds = %44
  br label %81, !dbg !234

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* %7, align 4, !dbg !235
  %54 = call %struct._IO_FILE* @fdopen(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !236
  %55 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !237
  %56 = getelementptr inbounds %struct.queue, %struct.queue* %55, i32 0, i32 2, !dbg !238
  store %struct._IO_FILE* %54, %struct._IO_FILE** %56, align 8, !dbg !239
  %57 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !240
  %58 = getelementptr inbounds %struct.queue, %struct.queue* %57, i32 0, i32 2, !dbg !242
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %58, align 8, !dbg !242
  %60 = icmp eq %struct._IO_FILE* %59, null, !dbg !243
  br i1 %60, label %61, label %62, !dbg !244

; <label>:61:                                     ; preds = %52
  br label %81, !dbg !245

; <label>:62:                                     ; preds = %52
  %63 = call noalias i8* @malloc(i64 16) #8, !dbg !246
  %64 = bitcast i8* %63 to %struct.stritem*, !dbg !246
  store %struct.stritem* %64, %struct.stritem** %6, align 8, !dbg !247
  %65 = load %struct.stritem*, %struct.stritem** %6, align 8, !dbg !248
  %66 = icmp ne %struct.stritem* %65, null, !dbg !250
  br i1 %66, label %67, label %80, !dbg !251

; <label>:67:                                     ; preds = %62
  %68 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !252
  %69 = getelementptr inbounds %struct.queue, %struct.queue* %68, i32 0, i32 3, !dbg !254
  %70 = load i8*, i8** %69, align 8, !dbg !254
  %71 = load %struct.stritem*, %struct.stritem** %6, align 8, !dbg !255
  %72 = getelementptr inbounds %struct.stritem, %struct.stritem* %71, i32 0, i32 1, !dbg !256
  store i8* %70, i8** %72, align 8, !dbg !257
  br label %73, !dbg !258, !llvm.loop !259

; <label>:73:                                     ; preds = %67
  %74 = load %struct.stritem*, %struct.stritem** getelementptr inbounds (%struct.strlist, %struct.strlist* @tmpfs, i32 0, i32 0), align 8, !dbg !260
  %75 = load %struct.stritem*, %struct.stritem** %6, align 8, !dbg !263
  %76 = getelementptr inbounds %struct.stritem, %struct.stritem* %75, i32 0, i32 0, !dbg !263
  %77 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %76, i32 0, i32 0, !dbg !264
  store %struct.stritem* %74, %struct.stritem** %77, align 8, !dbg !265
  %78 = load %struct.stritem*, %struct.stritem** %6, align 8, !dbg !263
  store %struct.stritem* %78, %struct.stritem** getelementptr inbounds (%struct.strlist, %struct.strlist* @tmpfs, i32 0, i32 0), align 8, !dbg !266
  br label %79, !dbg !260

; <label>:79:                                     ; preds = %73
  br label %80, !dbg !267

; <label>:80:                                     ; preds = %79, %62
  store i32 0, i32* %2, align 4, !dbg !268
  br label %96, !dbg !268

; <label>:81:                                     ; preds = %61, %51, %43, %38, %28, %23
  %82 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !269
  %83 = getelementptr inbounds %struct.queue, %struct.queue* %82, i32 0, i32 2, !dbg !271
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %83, align 8, !dbg !271
  %85 = icmp ne %struct._IO_FILE* %84, null, !dbg !272
  br i1 %85, label %86, label %91, !dbg !273

; <label>:86:                                     ; preds = %81
  %87 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !274
  %88 = getelementptr inbounds %struct.queue, %struct.queue* %87, i32 0, i32 2, !dbg !275
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %88, align 8, !dbg !275
  %90 = call i32 @fclose(%struct._IO_FILE* %89), !dbg !276
  br label %91, !dbg !276

; <label>:91:                                     ; preds = %86, %81
  %92 = load i32, i32* %7, align 4, !dbg !277
  %93 = call i32 @close(i32 %92), !dbg !278
  %94 = getelementptr inbounds [4097 x i8], [4097 x i8]* %4, i32 0, i32 0, !dbg !279
  %95 = call i32 @unlink(i8* %94) #8, !dbg !280
  store i32 -1, i32* %2, align 4, !dbg !281
  br label %96, !dbg !281

; <label>:96:                                     ; preds = %91, %80, %18, %12
  %97 = load i32, i32* %2, align 4, !dbg !282
  ret i32 %97, !dbg !282
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @mkstemp(i8*) #3

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #2

; Function Attrs: nounwind
declare i32 @flock(i32, i32) #2

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #2

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @linkspool(%struct.queue*) #0 !dbg !283 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.qitem*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.queue** %3, metadata !284, metadata !125), !dbg !285
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !286, metadata !125), !dbg !287
  call void @llvm.dbg.declare(metadata %struct.qitem** %5, metadata !288, metadata !125), !dbg !289
  %6 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !290
  %7 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 2, !dbg !292
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !292
  %9 = call i32 @fflush(%struct._IO_FILE* %8), !dbg !293
  %10 = icmp ne i32 %9, 0, !dbg !294
  br i1 %10, label %18, label %11, !dbg !295

; <label>:11:                                     ; preds = %1
  %12 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !296
  %13 = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 2, !dbg !298
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8, !dbg !298
  %15 = call i32 @fileno(%struct._IO_FILE* %14) #8, !dbg !299
  %16 = call i32 @fsync(i32 %15), !dbg !300
  %17 = icmp ne i32 %16, 0, !dbg !302
  br i1 %17, label %18, label %19, !dbg !303

; <label>:18:                                     ; preds = %11, %1
  br label %121, !dbg !304

; <label>:19:                                     ; preds = %11
  %20 = call i32 @getuid() #8, !dbg !305
  %21 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !306
  %22 = getelementptr inbounds %struct.queue, %struct.queue* %21, i32 0, i32 4, !dbg !307
  %23 = load i8*, i8** %22, align 8, !dbg !307
  call void (i32, i8*, ...) @syslog(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @username, i32 0, i32 0), i32 %20, i8* %23), !dbg !308
  %24 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !309
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %24, i32 0, i32 0, !dbg !311
  %26 = getelementptr inbounds %struct.queueh, %struct.queueh* %25, i32 0, i32 0, !dbg !312
  %27 = load %struct.qitem*, %struct.qitem** %26, align 8, !dbg !312
  store %struct.qitem* %27, %struct.qitem** %5, align 8, !dbg !313
  br label %28, !dbg !314

; <label>:28:                                     ; preds = %91, %19
  %29 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !315
  %30 = icmp ne %struct.qitem* %29, null, !dbg !315
  br i1 %30, label %31, label %96, !dbg !315

; <label>:31:                                     ; preds = %28
  %32 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !318
  %33 = getelementptr inbounds %struct.qitem, %struct.qitem* %32, i32 0, i32 5, !dbg !321
  %34 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !322
  %35 = getelementptr inbounds %struct.queue, %struct.queue* %34, i32 0, i32 1, !dbg !323
  %36 = load i8*, i8** %35, align 8, !dbg !323
  %37 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !324
  %38 = ptrtoint %struct.qitem* %37 to i64, !dbg !325
  %39 = call i32 (i8**, i8*, ...) @asprintf(i8** %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %36, i64 %38) #8, !dbg !326
  %40 = icmp sle i32 %39, 0, !dbg !327
  br i1 %40, label %41, label %42, !dbg !328

; <label>:41:                                     ; preds = %31
  br label %121, !dbg !329

; <label>:42:                                     ; preds = %31
  %43 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !330
  %44 = getelementptr inbounds %struct.qitem, %struct.qitem* %43, i32 0, i32 3, !dbg !332
  %45 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !333
  %46 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !334
  %47 = getelementptr inbounds %struct.qitem, %struct.qitem* %46, i32 0, i32 5, !dbg !335
  %48 = load i8*, i8** %47, align 8, !dbg !335
  %49 = call i32 (i8**, i8*, ...) @asprintf(i8** %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %45, i8* %48) #8, !dbg !336
  %50 = icmp sle i32 %49, 0, !dbg !337
  br i1 %50, label %51, label %52, !dbg !338

; <label>:51:                                     ; preds = %42
  br label %121, !dbg !339

; <label>:52:                                     ; preds = %42
  %53 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !340
  %54 = getelementptr inbounds %struct.qitem, %struct.qitem* %53, i32 0, i32 4, !dbg !342
  %55 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !343
  %56 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !344
  %57 = getelementptr inbounds %struct.qitem, %struct.qitem* %56, i32 0, i32 5, !dbg !345
  %58 = load i8*, i8** %57, align 8, !dbg !345
  %59 = call i32 (i8**, i8*, ...) @asprintf(i8** %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %55, i8* %58) #8, !dbg !346
  %60 = icmp sle i32 %59, 0, !dbg !347
  br i1 %60, label %61, label %62, !dbg !348

; <label>:61:                                     ; preds = %52
  br label %121, !dbg !349

; <label>:62:                                     ; preds = %52
  %63 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !350
  %64 = getelementptr inbounds %struct.qitem, %struct.qitem* %63, i32 0, i32 3, !dbg !352
  %65 = load i8*, i8** %64, align 8, !dbg !352
  %66 = call i32 @stat(i8* %65, %struct.stat* %4) #8, !dbg !353
  %67 = icmp eq i32 %66, 0, !dbg !354
  br i1 %67, label %74, label %68, !dbg !355

; <label>:68:                                     ; preds = %62
  %69 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !356
  %70 = getelementptr inbounds %struct.qitem, %struct.qitem* %69, i32 0, i32 4, !dbg !358
  %71 = load i8*, i8** %70, align 8, !dbg !358
  %72 = call i32 @stat(i8* %71, %struct.stat* %4) #8, !dbg !359
  %73 = icmp eq i32 %72, 0, !dbg !360
  br i1 %73, label %74, label %75, !dbg !361

; <label>:74:                                     ; preds = %68, %62
  br label %121, !dbg !362

; <label>:75:                                     ; preds = %68
  %76 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !363
  %77 = call i32 @writequeuef(%struct.qitem* %76), !dbg !365
  %78 = icmp ne i32 %77, 0, !dbg !366
  br i1 %78, label %79, label %80, !dbg !367

; <label>:79:                                     ; preds = %75
  br label %121, !dbg !368

; <label>:80:                                     ; preds = %75
  %81 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !369
  %82 = getelementptr inbounds %struct.queue, %struct.queue* %81, i32 0, i32 3, !dbg !371
  %83 = load i8*, i8** %82, align 8, !dbg !371
  %84 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !372
  %85 = getelementptr inbounds %struct.qitem, %struct.qitem* %84, i32 0, i32 4, !dbg !373
  %86 = load i8*, i8** %85, align 8, !dbg !373
  %87 = call i32 @link(i8* %83, i8* %86) #8, !dbg !374
  %88 = icmp ne i32 %87, 0, !dbg !375
  br i1 %88, label %89, label %90, !dbg !376

; <label>:89:                                     ; preds = %80
  br label %121, !dbg !377

; <label>:90:                                     ; preds = %80
  br label %91, !dbg !378

; <label>:91:                                     ; preds = %90
  %92 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !379
  %93 = getelementptr inbounds %struct.qitem, %struct.qitem* %92, i32 0, i32 0, !dbg !379
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0, !dbg !381
  %95 = load %struct.qitem*, %struct.qitem** %94, align 8, !dbg !381
  store %struct.qitem* %95, %struct.qitem** %5, align 8, !dbg !382
  br label %28, !dbg !379, !llvm.loop !383

; <label>:96:                                     ; preds = %28
  %97 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !385
  %98 = getelementptr inbounds %struct.queue, %struct.queue* %97, i32 0, i32 0, !dbg !387
  %99 = getelementptr inbounds %struct.queueh, %struct.queueh* %98, i32 0, i32 0, !dbg !388
  %100 = load %struct.qitem*, %struct.qitem** %99, align 8, !dbg !388
  store %struct.qitem* %100, %struct.qitem** %5, align 8, !dbg !389
  br label %101, !dbg !390

; <label>:101:                                    ; preds = %111, %96
  %102 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !391
  %103 = icmp ne %struct.qitem* %102, null, !dbg !391
  br i1 %103, label %104, label %116, !dbg !391

; <label>:104:                                    ; preds = %101
  %105 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !394
  %106 = getelementptr inbounds %struct.qitem, %struct.qitem* %105, i32 0, i32 2, !dbg !396
  %107 = load i8*, i8** %106, align 8, !dbg !396
  %108 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !397
  %109 = getelementptr inbounds %struct.qitem, %struct.qitem* %108, i32 0, i32 5, !dbg !398
  %110 = load i8*, i8** %109, align 8, !dbg !398
  call void (i32, i8*, ...) @syslog(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* %107, i8* %110), !dbg !399
  br label %111, !dbg !400

; <label>:111:                                    ; preds = %104
  %112 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !401
  %113 = getelementptr inbounds %struct.qitem, %struct.qitem* %112, i32 0, i32 0, !dbg !401
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 0, i32 0, !dbg !403
  %115 = load %struct.qitem*, %struct.qitem** %114, align 8, !dbg !403
  store %struct.qitem* %115, %struct.qitem** %5, align 8, !dbg !404
  br label %101, !dbg !401, !llvm.loop !405

; <label>:116:                                    ; preds = %101
  %117 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !407
  %118 = getelementptr inbounds %struct.queue, %struct.queue* %117, i32 0, i32 3, !dbg !408
  %119 = load i8*, i8** %118, align 8, !dbg !408
  %120 = call i32 @unlink(i8* %119) #8, !dbg !409
  store i32 0, i32* %2, align 4, !dbg !410
  br label %144, !dbg !410

; <label>:121:                                    ; preds = %89, %79, %74, %61, %51, %41, %18
  %122 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !411
  %123 = getelementptr inbounds %struct.queue, %struct.queue* %122, i32 0, i32 0, !dbg !413
  %124 = getelementptr inbounds %struct.queueh, %struct.queueh* %123, i32 0, i32 0, !dbg !414
  %125 = load %struct.qitem*, %struct.qitem** %124, align 8, !dbg !414
  store %struct.qitem* %125, %struct.qitem** %5, align 8, !dbg !415
  br label %126, !dbg !416

; <label>:126:                                    ; preds = %138, %121
  %127 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !417
  %128 = icmp ne %struct.qitem* %127, null, !dbg !417
  br i1 %128, label %129, label %143, !dbg !417

; <label>:129:                                    ; preds = %126
  %130 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !420
  %131 = getelementptr inbounds %struct.qitem, %struct.qitem* %130, i32 0, i32 4, !dbg !422
  %132 = load i8*, i8** %131, align 8, !dbg !422
  %133 = call i32 @unlink(i8* %132) #8, !dbg !423
  %134 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !424
  %135 = getelementptr inbounds %struct.qitem, %struct.qitem* %134, i32 0, i32 3, !dbg !425
  %136 = load i8*, i8** %135, align 8, !dbg !425
  %137 = call i32 @unlink(i8* %136) #8, !dbg !426
  br label %138, !dbg !427

; <label>:138:                                    ; preds = %129
  %139 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !428
  %140 = getelementptr inbounds %struct.qitem, %struct.qitem* %139, i32 0, i32 0, !dbg !428
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %140, i32 0, i32 0, !dbg !430
  %142 = load %struct.qitem*, %struct.qitem** %141, align 8, !dbg !430
  store %struct.qitem* %142, %struct.qitem** %5, align 8, !dbg !431
  br label %126, !dbg !428, !llvm.loop !432

; <label>:143:                                    ; preds = %126
  store i32 -1, i32* %2, align 4, !dbg !434
  br label %144, !dbg !434

; <label>:144:                                    ; preds = %143, %116
  %145 = load i32, i32* %2, align 4, !dbg !435
  ret i32 %145, !dbg !435
}

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @fsync(i32) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

declare void @syslog(i32, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define internal i32 @writequeuef(%struct.qitem*) #0 !dbg !436 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qitem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qitem* %0, %struct.qitem** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.qitem** %3, metadata !439, metadata !125), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %4, metadata !441, metadata !125), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %5, metadata !443, metadata !125), !dbg !444
  %6 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !445
  %7 = getelementptr inbounds %struct.qitem, %struct.qitem* %6, i32 0, i32 3, !dbg !446
  %8 = load i8*, i8** %7, align 8, !dbg !446
  %9 = call i32 (i8*, i32, ...) @open_locked(i8* %8, i32 194, i32 432), !dbg !447
  store i32 %9, i32* %5, align 4, !dbg !448
  %10 = load i32, i32* %5, align 4, !dbg !449
  %11 = icmp eq i32 %10, -1, !dbg !451
  br i1 %11, label %12, label %13, !dbg !452

; <label>:12:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !453
  br label %60, !dbg !453

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* %5, align 4, !dbg !454
  %15 = call i32 @fchmod(i32 %14, i32 432) #8, !dbg !456
  %16 = icmp slt i32 %15, 0, !dbg !457
  br i1 %16, label %17, label %18, !dbg !458

; <label>:17:                                     ; preds = %13
  store i32 -1, i32* %2, align 4, !dbg !459
  br label %60, !dbg !459

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !460
  %20 = call %struct._IO_FILE* @fdopen(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !461
  %21 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !462
  %22 = getelementptr inbounds %struct.qitem, %struct.qitem* %21, i32 0, i32 6, !dbg !463
  store %struct._IO_FILE* %20, %struct._IO_FILE** %22, align 8, !dbg !464
  %23 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !465
  %24 = getelementptr inbounds %struct.qitem, %struct.qitem* %23, i32 0, i32 6, !dbg !467
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8, !dbg !467
  %26 = icmp eq %struct._IO_FILE* %25, null, !dbg !468
  br i1 %26, label %27, label %28, !dbg !469

; <label>:27:                                     ; preds = %18
  store i32 -1, i32* %2, align 4, !dbg !470
  br label %60, !dbg !470

; <label>:28:                                     ; preds = %18
  %29 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !471
  %30 = getelementptr inbounds %struct.qitem, %struct.qitem* %29, i32 0, i32 6, !dbg !472
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8, !dbg !472
  %32 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !473
  %33 = getelementptr inbounds %struct.qitem, %struct.qitem* %32, i32 0, i32 5, !dbg !474
  %34 = load i8*, i8** %33, align 8, !dbg !474
  %35 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !475
  %36 = getelementptr inbounds %struct.qitem, %struct.qitem* %35, i32 0, i32 1, !dbg !476
  %37 = load i8*, i8** %36, align 8, !dbg !476
  %38 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !477
  %39 = getelementptr inbounds %struct.qitem, %struct.qitem* %38, i32 0, i32 2, !dbg !478
  %40 = load i8*, i8** %39, align 8, !dbg !478
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i8* %34, i8* %37, i8* %40), !dbg !479
  store i32 %41, i32* %4, align 4, !dbg !480
  %42 = load i32, i32* %4, align 4, !dbg !481
  %43 = icmp sle i32 %42, 0, !dbg !483
  br i1 %43, label %44, label %45, !dbg !484

; <label>:44:                                     ; preds = %28
  store i32 -1, i32* %2, align 4, !dbg !485
  br label %60, !dbg !485

; <label>:45:                                     ; preds = %28
  %46 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !486
  %47 = getelementptr inbounds %struct.qitem, %struct.qitem* %46, i32 0, i32 6, !dbg !488
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %47, align 8, !dbg !488
  %49 = call i32 @fflush(%struct._IO_FILE* %48), !dbg !489
  %50 = icmp ne i32 %49, 0, !dbg !490
  br i1 %50, label %58, label %51, !dbg !491

; <label>:51:                                     ; preds = %45
  %52 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !492
  %53 = getelementptr inbounds %struct.qitem, %struct.qitem* %52, i32 0, i32 6, !dbg !494
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %53, align 8, !dbg !494
  %55 = call i32 @fileno(%struct._IO_FILE* %54) #8, !dbg !495
  %56 = call i32 @fsync(i32 %55), !dbg !496
  %57 = icmp ne i32 %56, 0, !dbg !498
  br i1 %57, label %58, label %59, !dbg !499

; <label>:58:                                     ; preds = %51, %45
  store i32 -1, i32* %2, align 4, !dbg !500
  br label %60, !dbg !500

; <label>:59:                                     ; preds = %51
  store i32 0, i32* %2, align 4, !dbg !501
  br label %60, !dbg !501

; <label>:60:                                     ; preds = %59, %58, %44, %27, %17, %12
  %61 = load i32, i32* %2, align 4, !dbg !502
  ret i32 %61, !dbg !502
}

; Function Attrs: nounwind
declare i32 @link(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @load_queue(%struct.queue*) #0 !dbg !503 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.qitem*, align 8
  %6 = alloca %struct.__dirstream*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.queue** %3, metadata !504, metadata !125), !dbg !505
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !506, metadata !125), !dbg !507
  call void @llvm.dbg.declare(metadata %struct.qitem** %5, metadata !508, metadata !125), !dbg !509
  call void @llvm.dbg.declare(metadata %struct.__dirstream** %6, metadata !510, metadata !125), !dbg !515
  call void @llvm.dbg.declare(metadata %struct.dirent** %7, metadata !516, metadata !125), !dbg !530
  call void @llvm.dbg.declare(metadata i8** %8, metadata !531, metadata !125), !dbg !532
  call void @llvm.dbg.declare(metadata i8** %9, metadata !533, metadata !125), !dbg !534
  %10 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !535
  %11 = bitcast %struct.queue* %10 to i8*, !dbg !536
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 40, i32 8, i1 false), !dbg !536
  br label %12, !dbg !537, !llvm.loop !538

; <label>:12:                                     ; preds = %1
  %13 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !539
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %13, i32 0, i32 0, !dbg !542
  %15 = getelementptr inbounds %struct.queueh, %struct.queueh* %14, i32 0, i32 0, !dbg !543
  store %struct.qitem* null, %struct.qitem** %15, align 8, !dbg !544
  br label %16, !dbg !545

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !546
  %18 = call %struct.__dirstream* @opendir(i8* %17), !dbg !547
  store %struct.__dirstream* %18, %struct.__dirstream** %6, align 8, !dbg !548
  %19 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !dbg !549
  %20 = icmp eq %struct.__dirstream* %19, null, !dbg !551
  br i1 %20, label %21, label %22, !dbg !552

; <label>:21:                                     ; preds = %16
  call void (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #9, !dbg !553
  unreachable, !dbg !553

; <label>:22:                                     ; preds = %16
  br label %23, !dbg !554

; <label>:23:                                     ; preds = %93, %77, %34, %22
  %24 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !dbg !555
  %25 = call %struct.dirent* @readdir(%struct.__dirstream* %24), !dbg !557
  store %struct.dirent* %25, %struct.dirent** %7, align 8, !dbg !558
  %26 = icmp ne %struct.dirent* %25, null, !dbg !559
  br i1 %26, label %27, label %94, !dbg !560

; <label>:27:                                     ; preds = %23
  store i8* null, i8** %8, align 8, !dbg !561
  store i8* null, i8** %9, align 8, !dbg !563
  %28 = load %struct.dirent*, %struct.dirent** %7, align 8, !dbg !564
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 4, !dbg !566
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i64 0, i64 0, !dbg !564
  %31 = load i8, i8* %30, align 1, !dbg !564
  %32 = sext i8 %31 to i32, !dbg !564
  %33 = icmp ne i32 %32, 81, !dbg !567
  br i1 %33, label %34, label %35, !dbg !568

; <label>:34:                                     ; preds = %27
  br label %23, !dbg !569, !llvm.loop !570

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !571
  %37 = load %struct.dirent*, %struct.dirent** %7, align 8, !dbg !573
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 4, !dbg !574
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i32 0, i32 0, !dbg !573
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !575
  %41 = call i32 (i8**, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %36, i8* %40) #8, !dbg !576
  %42 = icmp slt i32 %41, 0, !dbg !577
  br i1 %42, label %43, label %44, !dbg !578

; <label>:43:                                     ; preds = %35
  br label %97, !dbg !579

; <label>:44:                                     ; preds = %35
  %45 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !580
  %46 = load %struct.dirent*, %struct.dirent** %7, align 8, !dbg !582
  %47 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 4, !dbg !583
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %47, i32 0, i32 0, !dbg !582
  %49 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !584
  %50 = call i32 (i8**, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %45, i8* %49) #8, !dbg !585
  %51 = icmp slt i32 %50, 0, !dbg !586
  br i1 %51, label %52, label %53, !dbg !587

; <label>:52:                                     ; preds = %44
  br label %97, !dbg !588

; <label>:53:                                     ; preds = %44
  %54 = load i8*, i8** %8, align 8, !dbg !589
  %55 = call i32 @stat(i8* %54, %struct.stat* %4) #8, !dbg !591
  %56 = icmp ne i32 %55, 0, !dbg !592
  br i1 %56, label %57, label %58, !dbg !593

; <label>:57:                                     ; preds = %53
  br label %81, !dbg !594

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3, !dbg !595
  %60 = load i32, i32* %59, align 8, !dbg !595
  %61 = and i32 %60, 61440, !dbg !595
  %62 = icmp eq i32 %61, 32768, !dbg !597
  br i1 %62, label %65, label %63, !dbg !598

; <label>:63:                                     ; preds = %58
  %64 = call i32* @__errno_location() #1, !dbg !599
  store i32 22, i32* %64, align 4, !dbg !601
  br label %81, !dbg !602

; <label>:65:                                     ; preds = %58
  %66 = load i8*, i8** %9, align 8, !dbg !603
  %67 = call i32 @stat(i8* %66, %struct.stat* %4) #8, !dbg !605
  %68 = icmp ne i32 %67, 0, !dbg !606
  br i1 %68, label %69, label %70, !dbg !607

; <label>:69:                                     ; preds = %65
  br label %81, !dbg !608

; <label>:70:                                     ; preds = %65
  %71 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !609
  %72 = load i8*, i8** %8, align 8, !dbg !610
  %73 = call %struct.qitem* @readqueuef(%struct.queue* %71, i8* %72), !dbg !611
  store %struct.qitem* %73, %struct.qitem** %5, align 8, !dbg !612
  %74 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !613
  %75 = icmp eq %struct.qitem* %74, null, !dbg !615
  br i1 %75, label %76, label %77, !dbg !616

; <label>:76:                                     ; preds = %70
  br label %81, !dbg !617

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** %9, align 8, !dbg !618
  %79 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !619
  %80 = getelementptr inbounds %struct.qitem, %struct.qitem* %79, i32 0, i32 4, !dbg !620
  store i8* %78, i8** %80, align 8, !dbg !621
  br label %23, !dbg !622, !llvm.loop !570

; <label>:81:                                     ; preds = %76, %69, %63, %57
  %82 = load i8*, i8** %8, align 8, !dbg !623
  %83 = load i8*, i8** %9, align 8, !dbg !624
  call void (i32, i8*, ...) @syslog(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* %82, i8* %83), !dbg !625
  %84 = load i8*, i8** %8, align 8, !dbg !626
  %85 = icmp ne i8* %84, null, !dbg !628
  br i1 %85, label %86, label %88, !dbg !629

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %8, align 8, !dbg !630
  call void @free(i8* %87) #8, !dbg !631
  br label %88, !dbg !631

; <label>:88:                                     ; preds = %86, %81
  %89 = load i8*, i8** %9, align 8, !dbg !632
  %90 = icmp ne i8* %89, null, !dbg !634
  br i1 %90, label %91, label %93, !dbg !635

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %9, align 8, !dbg !636
  call void @free(i8* %92) #8, !dbg !637
  br label %93, !dbg !637

; <label>:93:                                     ; preds = %91, %88
  br label %23, !dbg !638, !llvm.loop !570

; <label>:94:                                     ; preds = %23
  %95 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !dbg !640
  %96 = call i32 @closedir(%struct.__dirstream* %95), !dbg !641
  store i32 0, i32* %2, align 4, !dbg !642
  br label %98, !dbg !642

; <label>:97:                                     ; preds = %52, %43
  store i32 -1, i32* %2, align 4, !dbg !643
  br label %98, !dbg !643

; <label>:98:                                     ; preds = %97, %94
  %99 = load i32, i32* %2, align 4, !dbg !644
  ret i32 %99, !dbg !644
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare %struct.__dirstream* @opendir(i8*) #3

; Function Attrs: noreturn
declare void @err(i32, i8*, ...) #5

declare %struct.dirent* @readdir(%struct.__dirstream*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind uwtable
define internal %struct.qitem* @readqueuef(%struct.queue*, i8*) #0 !dbg !645 {
  %3 = alloca %struct.queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1000 x i8], align 16
  %6 = alloca %struct.queue, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.qitem*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.queue** %3, metadata !648, metadata !125), !dbg !649
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !650, metadata !125), !dbg !651
  call void @llvm.dbg.declare(metadata [1000 x i8]* %5, metadata !652, metadata !125), !dbg !656
  call void @llvm.dbg.declare(metadata %struct.queue* %6, metadata !657, metadata !125), !dbg !658
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !659, metadata !125), !dbg !660
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8, !dbg !660
  call void @llvm.dbg.declare(metadata i8** %8, metadata !661, metadata !125), !dbg !662
  call void @llvm.dbg.declare(metadata i8** %9, metadata !663, metadata !125), !dbg !664
  store i8* null, i8** %9, align 8, !dbg !664
  call void @llvm.dbg.declare(metadata i8** %10, metadata !665, metadata !125), !dbg !666
  store i8* null, i8** %10, align 8, !dbg !666
  call void @llvm.dbg.declare(metadata i8** %11, metadata !667, metadata !125), !dbg !668
  store i8* null, i8** %11, align 8, !dbg !668
  call void @llvm.dbg.declare(metadata %struct.qitem** %12, metadata !669, metadata !125), !dbg !670
  store %struct.qitem* null, %struct.qitem** %12, align 8, !dbg !670
  %13 = bitcast %struct.queue* %6 to i8*, !dbg !671
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 40, i32 8, i1 false), !dbg !671
  br label %14, !dbg !672, !llvm.loop !673

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 0, !dbg !674
  %16 = getelementptr inbounds %struct.queueh, %struct.queueh* %15, i32 0, i32 0, !dbg !677
  store %struct.qitem* null, %struct.qitem** %16, align 8, !dbg !678
  br label %17, !dbg !679

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %4, align 8, !dbg !680
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)), !dbg !681
  store %struct._IO_FILE* %19, %struct._IO_FILE** %7, align 8, !dbg !682
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !683
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !685
  br i1 %21, label %22, label %23, !dbg !686

; <label>:22:                                     ; preds = %17
  br label %172, !dbg !687

; <label>:23:                                     ; preds = %17
  br label %24, !dbg !688

; <label>:24:                                     ; preds = %99, %23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !689
  %26 = call i32 @feof(%struct._IO_FILE* %25) #8, !dbg !691
  %27 = icmp ne i32 %26, 0, !dbg !692
  %28 = xor i1 %27, true, !dbg !692
  br i1 %28, label %29, label %100, !dbg !693

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !694
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !697
  %32 = call i8* @fgets(i8* %30, i32 1000, %struct._IO_FILE* %31), !dbg !698
  %33 = icmp eq i8* %32, null, !dbg !699
  br i1 %33, label %39, label %34, !dbg !700

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0, !dbg !701
  %36 = load i8, i8* %35, align 16, !dbg !701
  %37 = sext i8 %36 to i32, !dbg !701
  %38 = icmp eq i32 %37, 0, !dbg !703
  br i1 %38, label %39, label %40, !dbg !704

; <label>:39:                                     ; preds = %34, %29
  br label %100, !dbg !705

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !706
  %42 = call i64 @strlen(i8* %41) #10, !dbg !707
  %43 = sub i64 %42, 1, !dbg !708
  %44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %43, !dbg !709
  store i8 0, i8* %44, align 1, !dbg !710
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !711
  %46 = call i8* @strchr(i8* %45, i32 58) #10, !dbg !712
  store i8* %46, i8** %8, align 8, !dbg !713
  %47 = load i8*, i8** %8, align 8, !dbg !714
  %48 = icmp eq i8* %47, null, !dbg !716
  br i1 %48, label %49, label %50, !dbg !717

; <label>:49:                                     ; preds = %40
  br label %120, !dbg !718

; <label>:50:                                     ; preds = %40
  %51 = load i8*, i8** %8, align 8, !dbg !719
  store i8 0, i8* %51, align 1, !dbg !720
  %52 = load i8*, i8** %8, align 8, !dbg !721
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !721
  store i8* %53, i8** %8, align 8, !dbg !721
  br label %54, !dbg !722

; <label>:54:                                     ; preds = %66, %50
  %55 = load i8*, i8** %8, align 8, !dbg !723
  %56 = load i8, i8* %55, align 1, !dbg !725
  %57 = sext i8 %56 to i32, !dbg !726
  %58 = sext i32 %57 to i64, !dbg !723
  %59 = call i16** @__ctype_b_loc() #1, !dbg !727
  %60 = load i16*, i16** %59, align 8, !dbg !728
  %61 = getelementptr inbounds i16, i16* %60, i64 %58, !dbg !723
  %62 = load i16, i16* %61, align 2, !dbg !723
  %63 = zext i16 %62 to i32, !dbg !723
  %64 = and i32 %63, 8192, !dbg !729
  %65 = icmp ne i32 %64, 0, !dbg !730
  br i1 %65, label %66, label %69, !dbg !730

; <label>:66:                                     ; preds = %54
  %67 = load i8*, i8** %8, align 8, !dbg !731
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !731
  store i8* %68, i8** %8, align 8, !dbg !731
  br label %54, !dbg !732, !llvm.loop !734

; <label>:69:                                     ; preds = %54
  %70 = load i8*, i8** %8, align 8, !dbg !735
  %71 = call noalias i8* @strdup(i8* %70) #8, !dbg !736
  store i8* %71, i8** %8, align 8, !dbg !737
  %72 = load i8*, i8** %8, align 8, !dbg !738
  %73 = icmp eq i8* %72, null, !dbg !740
  br i1 %73, label %74, label %75, !dbg !741

; <label>:74:                                     ; preds = %69
  br label %120, !dbg !742

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !743
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)) #10, !dbg !745
  %78 = icmp eq i32 %77, 0, !dbg !746
  br i1 %78, label %79, label %81, !dbg !747

; <label>:79:                                     ; preds = %75
  %80 = load i8*, i8** %8, align 8, !dbg !748
  store i8* %80, i8** %9, align 8, !dbg !750
  br label %99, !dbg !751

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !752
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #10, !dbg !755
  %84 = icmp eq i32 %83, 0, !dbg !756
  br i1 %84, label %85, label %87, !dbg !755

; <label>:85:                                     ; preds = %81
  %86 = load i8*, i8** %8, align 8, !dbg !757
  store i8* %86, i8** %10, align 8, !dbg !759
  br label %98, !dbg !760

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !761
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #10, !dbg !764
  %90 = icmp eq i32 %89, 0, !dbg !765
  br i1 %90, label %91, label %93, !dbg !764

; <label>:91:                                     ; preds = %87
  %92 = load i8*, i8** %8, align 8, !dbg !766
  store i8* %92, i8** %11, align 8, !dbg !768
  br label %97, !dbg !769

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i32 0, i32 0, !dbg !770
  %95 = load i8*, i8** %4, align 8, !dbg !772
  call void (i32, i8*, ...) @syslog(i32 7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0), i8* %94, i8* %95), !dbg !773
  %96 = load i8*, i8** %8, align 8, !dbg !774
  call void @free(i8* %96) #8, !dbg !775
  br label %97

; <label>:97:                                     ; preds = %93, %91
  br label %98

; <label>:98:                                     ; preds = %97, %85
  br label %99

; <label>:99:                                     ; preds = %98, %79
  br label %24, !dbg !776, !llvm.loop !778

; <label>:100:                                    ; preds = %39, %24
  %101 = load i8*, i8** %9, align 8, !dbg !779
  %102 = icmp eq i8* %101, null, !dbg !781
  br i1 %102, label %119, label %103, !dbg !782

; <label>:103:                                    ; preds = %100
  %104 = load i8*, i8** %10, align 8, !dbg !783
  %105 = icmp eq i8* %104, null, !dbg !785
  br i1 %105, label %119, label %106, !dbg !786

; <label>:106:                                    ; preds = %103
  %107 = load i8*, i8** %11, align 8, !dbg !787
  %108 = icmp eq i8* %107, null, !dbg !789
  br i1 %108, label %119, label %109, !dbg !790

; <label>:109:                                    ; preds = %106
  %110 = load i8*, i8** %9, align 8, !dbg !791
  %111 = load i8, i8* %110, align 1, !dbg !792
  %112 = sext i8 %111 to i32, !dbg !792
  %113 = icmp eq i32 %112, 0, !dbg !793
  br i1 %113, label %119, label %114, !dbg !794

; <label>:114:                                    ; preds = %109
  %115 = load i8*, i8** %11, align 8, !dbg !795
  %116 = load i8, i8* %115, align 1, !dbg !796
  %117 = sext i8 %116 to i32, !dbg !796
  %118 = icmp eq i32 %117, 0, !dbg !797
  br i1 %118, label %119, label %123, !dbg !798

; <label>:119:                                    ; preds = %114, %109, %106, %103, %100
  br label %120, !dbg !800

; <label>:120:                                    ; preds = %119, %74, %49
  %121 = call i32* @__errno_location() #1, !dbg !801
  store i32 22, i32* %121, align 4, !dbg !803
  %122 = load i8*, i8** %4, align 8, !dbg !804
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i8* %122), !dbg !805
  br label %172, !dbg !806

; <label>:123:                                    ; preds = %114
  %124 = load i8*, i8** %11, align 8, !dbg !807
  %125 = call i32 @add_recp(%struct.queue* %6, i8* %124, i32 0), !dbg !809
  %126 = icmp ne i32 %125, 0, !dbg !810
  br i1 %126, label %127, label %128, !dbg !811

; <label>:127:                                    ; preds = %123
  br label %172, !dbg !812

; <label>:128:                                    ; preds = %123
  %129 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 0, !dbg !813
  %130 = getelementptr inbounds %struct.queueh, %struct.queueh* %129, i32 0, i32 0, !dbg !814
  %131 = load %struct.qitem*, %struct.qitem** %130, align 8, !dbg !814
  store %struct.qitem* %131, %struct.qitem** %12, align 8, !dbg !815
  %132 = load i8*, i8** %10, align 8, !dbg !816
  %133 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !817
  %134 = getelementptr inbounds %struct.qitem, %struct.qitem* %133, i32 0, i32 1, !dbg !818
  store i8* %132, i8** %134, align 8, !dbg !819
  store i8* null, i8** %10, align 8, !dbg !820
  %135 = load i8*, i8** %9, align 8, !dbg !821
  %136 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !822
  %137 = getelementptr inbounds %struct.qitem, %struct.qitem* %136, i32 0, i32 5, !dbg !823
  store i8* %135, i8** %137, align 8, !dbg !824
  store i8* null, i8** %9, align 8, !dbg !825
  %138 = load i8*, i8** %4, align 8, !dbg !826
  %139 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !827
  %140 = getelementptr inbounds %struct.qitem, %struct.qitem* %139, i32 0, i32 3, !dbg !828
  store i8* %138, i8** %140, align 8, !dbg !829
  store i8* null, i8** %4, align 8, !dbg !830
  br label %141, !dbg !831, !llvm.loop !832

; <label>:141:                                    ; preds = %128
  %142 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !833
  %143 = getelementptr inbounds %struct.queue, %struct.queue* %142, i32 0, i32 0, !dbg !837
  %144 = getelementptr inbounds %struct.queueh, %struct.queueh* %143, i32 0, i32 0, !dbg !838
  %145 = load %struct.qitem*, %struct.qitem** %144, align 8, !dbg !838
  %146 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !839
  %147 = getelementptr inbounds %struct.qitem, %struct.qitem* %146, i32 0, i32 0, !dbg !839
  %148 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 0, !dbg !833
  store %struct.qitem* %145, %struct.qitem** %148, align 8, !dbg !840
  %149 = icmp ne %struct.qitem* %145, null, !dbg !841
  br i1 %149, label %150, label %160, !dbg !840

; <label>:150:                                    ; preds = %141
  %151 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !842
  %152 = getelementptr inbounds %struct.qitem, %struct.qitem* %151, i32 0, i32 0, !dbg !842
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 0, !dbg !844
  %154 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !844
  %155 = getelementptr inbounds %struct.queue, %struct.queue* %154, i32 0, i32 0, !dbg !845
  %156 = getelementptr inbounds %struct.queueh, %struct.queueh* %155, i32 0, i32 0, !dbg !846
  %157 = load %struct.qitem*, %struct.qitem** %156, align 8, !dbg !846
  %158 = getelementptr inbounds %struct.qitem, %struct.qitem* %157, i32 0, i32 0, !dbg !842
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 1, !dbg !844
  store %struct.qitem** %153, %struct.qitem*** %159, align 8, !dbg !847
  br label %160, !dbg !848

; <label>:160:                                    ; preds = %150, %141
  %161 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !849
  %162 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !851
  %163 = getelementptr inbounds %struct.queue, %struct.queue* %162, i32 0, i32 0, !dbg !852
  %164 = getelementptr inbounds %struct.queueh, %struct.queueh* %163, i32 0, i32 0, !dbg !853
  store %struct.qitem* %161, %struct.qitem** %164, align 8, !dbg !854
  %165 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !851
  %166 = getelementptr inbounds %struct.queue, %struct.queue* %165, i32 0, i32 0, !dbg !852
  %167 = getelementptr inbounds %struct.queueh, %struct.queueh* %166, i32 0, i32 0, !dbg !853
  %168 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !849
  %169 = getelementptr inbounds %struct.qitem, %struct.qitem* %168, i32 0, i32 0, !dbg !849
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %169, i32 0, i32 1, !dbg !851
  store %struct.qitem** %167, %struct.qitem*** %170, align 8, !dbg !855
  br label %171, !dbg !856

; <label>:171:                                    ; preds = %160
  br label %172, !dbg !857

; <label>:172:                                    ; preds = %171, %127, %120, %22
  %173 = load i8*, i8** %10, align 8, !dbg !859
  %174 = icmp ne i8* %173, null, !dbg !861
  br i1 %174, label %175, label %177, !dbg !862

; <label>:175:                                    ; preds = %172
  %176 = load i8*, i8** %10, align 8, !dbg !863
  call void @free(i8* %176) #8, !dbg !864
  br label %177, !dbg !864

; <label>:177:                                    ; preds = %175, %172
  %178 = load i8*, i8** %9, align 8, !dbg !865
  %179 = icmp ne i8* %178, null, !dbg !867
  br i1 %179, label %180, label %182, !dbg !868

; <label>:180:                                    ; preds = %177
  %181 = load i8*, i8** %9, align 8, !dbg !869
  call void @free(i8* %181) #8, !dbg !870
  br label %182, !dbg !870

; <label>:182:                                    ; preds = %180, %177
  %183 = load i8*, i8** %11, align 8, !dbg !871
  %184 = icmp ne i8* %183, null, !dbg !873
  br i1 %184, label %185, label %187, !dbg !874

; <label>:185:                                    ; preds = %182
  %186 = load i8*, i8** %11, align 8, !dbg !875
  call void @free(i8* %186) #8, !dbg !876
  br label %187, !dbg !876

; <label>:187:                                    ; preds = %185, %182
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !877
  %189 = icmp ne %struct._IO_FILE* %188, null, !dbg !879
  br i1 %189, label %190, label %193, !dbg !880

; <label>:190:                                    ; preds = %187
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !881
  %192 = call i32 @fclose(%struct._IO_FILE* %191), !dbg !882
  br label %193, !dbg !882

; <label>:193:                                    ; preds = %190, %187
  %194 = load %struct.qitem*, %struct.qitem** %12, align 8, !dbg !883
  ret %struct.qitem* %194, !dbg !884
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @closedir(%struct.__dirstream*) #3

; Function Attrs: nounwind uwtable
define void @delqueue(%struct.qitem*) #0 !dbg !885 {
  %2 = alloca %struct.qitem*, align 8
  store %struct.qitem* %0, %struct.qitem** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.qitem** %2, metadata !888, metadata !125), !dbg !889
  %3 = load %struct.qitem*, %struct.qitem** %2, align 8, !dbg !890
  %4 = getelementptr inbounds %struct.qitem, %struct.qitem* %3, i32 0, i32 4, !dbg !891
  %5 = load i8*, i8** %4, align 8, !dbg !891
  %6 = call i32 @unlink(i8* %5) #8, !dbg !892
  %7 = load %struct.qitem*, %struct.qitem** %2, align 8, !dbg !893
  %8 = getelementptr inbounds %struct.qitem, %struct.qitem* %7, i32 0, i32 3, !dbg !894
  %9 = load i8*, i8** %8, align 8, !dbg !894
  %10 = call i32 @unlink(i8* %9) #8, !dbg !895
  %11 = load %struct.qitem*, %struct.qitem** %2, align 8, !dbg !896
  %12 = getelementptr inbounds %struct.qitem, %struct.qitem* %11, i32 0, i32 6, !dbg !898
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8, !dbg !898
  %14 = icmp ne %struct._IO_FILE* %13, null, !dbg !899
  br i1 %14, label %15, label %20, !dbg !900

; <label>:15:                                     ; preds = %1
  %16 = load %struct.qitem*, %struct.qitem** %2, align 8, !dbg !901
  %17 = getelementptr inbounds %struct.qitem, %struct.qitem* %16, i32 0, i32 6, !dbg !902
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8, !dbg !902
  %19 = call i32 @fclose(%struct._IO_FILE* %18), !dbg !903
  br label %20, !dbg !903

; <label>:20:                                     ; preds = %15, %1
  %21 = load %struct.qitem*, %struct.qitem** %2, align 8, !dbg !904
  %22 = getelementptr inbounds %struct.qitem, %struct.qitem* %21, i32 0, i32 7, !dbg !906
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8, !dbg !906
  %24 = icmp ne %struct._IO_FILE* %23, null, !dbg !907
  br i1 %24, label %25, label %30, !dbg !908

; <label>:25:                                     ; preds = %20
  %26 = load %struct.qitem*, %struct.qitem** %2, align 8, !dbg !909
  %27 = getelementptr inbounds %struct.qitem, %struct.qitem* %26, i32 0, i32 7, !dbg !910
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %27, align 8, !dbg !910
  %29 = call i32 @fclose(%struct._IO_FILE* %28), !dbg !911
  br label %30, !dbg !911

; <label>:30:                                     ; preds = %25, %20
  %31 = load %struct.qitem*, %struct.qitem** %2, align 8, !dbg !912
  %32 = bitcast %struct.qitem* %31 to i8*, !dbg !912
  call void @free(i8* %32) #8, !dbg !913
  ret void, !dbg !914
}

; Function Attrs: nounwind uwtable
define i32 @acquirespool(%struct.qitem*) #0 !dbg !915 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qitem*, align 8
  %4 = alloca i32, align 4
  store %struct.qitem* %0, %struct.qitem** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.qitem** %3, metadata !916, metadata !125), !dbg !917
  call void @llvm.dbg.declare(metadata i32* %4, metadata !918, metadata !125), !dbg !919
  %5 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !920
  %6 = getelementptr inbounds %struct.qitem, %struct.qitem* %5, i32 0, i32 6, !dbg !922
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !922
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !923
  br i1 %8, label %9, label %28, !dbg !924

; <label>:9:                                      ; preds = %1
  %10 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !925
  %11 = getelementptr inbounds %struct.qitem, %struct.qitem* %10, i32 0, i32 3, !dbg !927
  %12 = load i8*, i8** %11, align 8, !dbg !927
  %13 = call i32 (i8*, i32, ...) @open_locked(i8* %12, i32 2050), !dbg !928
  store i32 %13, i32* %4, align 4, !dbg !929
  %14 = load i32, i32* %4, align 4, !dbg !930
  %15 = icmp slt i32 %14, 0, !dbg !932
  br i1 %15, label %16, label %17, !dbg !933

; <label>:16:                                     ; preds = %9
  br label %47, !dbg !934

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !935
  %19 = call %struct._IO_FILE* @fdopen(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !936
  %20 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !937
  %21 = getelementptr inbounds %struct.qitem, %struct.qitem* %20, i32 0, i32 6, !dbg !938
  store %struct._IO_FILE* %19, %struct._IO_FILE** %21, align 8, !dbg !939
  %22 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !940
  %23 = getelementptr inbounds %struct.qitem, %struct.qitem* %22, i32 0, i32 6, !dbg !942
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8, !dbg !942
  %25 = icmp eq %struct._IO_FILE* %24, null, !dbg !943
  br i1 %25, label %26, label %27, !dbg !944

; <label>:26:                                     ; preds = %17
  br label %47, !dbg !945

; <label>:27:                                     ; preds = %17
  br label %28, !dbg !946

; <label>:28:                                     ; preds = %27, %1
  %29 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !947
  %30 = getelementptr inbounds %struct.qitem, %struct.qitem* %29, i32 0, i32 7, !dbg !949
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8, !dbg !949
  %32 = icmp eq %struct._IO_FILE* %31, null, !dbg !950
  br i1 %32, label %33, label %46, !dbg !951

; <label>:33:                                     ; preds = %28
  %34 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !952
  %35 = getelementptr inbounds %struct.qitem, %struct.qitem* %34, i32 0, i32 4, !dbg !954
  %36 = load i8*, i8** %35, align 8, !dbg !954
  %37 = call %struct._IO_FILE* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)), !dbg !955
  %38 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !956
  %39 = getelementptr inbounds %struct.qitem, %struct.qitem* %38, i32 0, i32 7, !dbg !957
  store %struct._IO_FILE* %37, %struct._IO_FILE** %39, align 8, !dbg !958
  %40 = load %struct.qitem*, %struct.qitem** %3, align 8, !dbg !959
  %41 = getelementptr inbounds %struct.qitem, %struct.qitem* %40, i32 0, i32 7, !dbg !961
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %41, align 8, !dbg !961
  %43 = icmp eq %struct._IO_FILE* %42, null, !dbg !962
  br i1 %43, label %44, label %45, !dbg !963

; <label>:44:                                     ; preds = %33
  br label %47, !dbg !964

; <label>:45:                                     ; preds = %33
  br label %46, !dbg !965

; <label>:46:                                     ; preds = %45, %28
  store i32 0, i32* %2, align 4, !dbg !966
  br label %53, !dbg !966

; <label>:47:                                     ; preds = %44, %26, %16
  %48 = call i32* @__errno_location() #1, !dbg !967
  %49 = load i32, i32* %48, align 4, !dbg !969
  %50 = icmp eq i32 %49, 11, !dbg !970
  br i1 %50, label %51, label %52, !dbg !971

; <label>:51:                                     ; preds = %47
  store i32 1, i32* %2, align 4, !dbg !972
  br label %53, !dbg !972

; <label>:52:                                     ; preds = %47
  call void (i32, i8*, ...) @syslog(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0)), !dbg !973
  store i32 -1, i32* %2, align 4, !dbg !974
  br label %53, !dbg !974

; <label>:53:                                     ; preds = %52, %51, %46
  %54 = load i32, i32* %2, align 4, !dbg !975
  ret i32 %54, !dbg !975
}

declare i32 @open_locked(i8*, i32, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @dropspool(%struct.queue*, %struct.qitem*) #0 !dbg !976 {
  %3 = alloca %struct.queue*, align 8
  %4 = alloca %struct.qitem*, align 8
  %5 = alloca %struct.qitem*, align 8
  store %struct.queue* %0, %struct.queue** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.queue** %3, metadata !979, metadata !125), !dbg !980
  store %struct.qitem* %1, %struct.qitem** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.qitem** %4, metadata !981, metadata !125), !dbg !982
  call void @llvm.dbg.declare(metadata %struct.qitem** %5, metadata !983, metadata !125), !dbg !984
  %6 = load %struct.queue*, %struct.queue** %3, align 8, !dbg !985
  %7 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 0, !dbg !987
  %8 = getelementptr inbounds %struct.queueh, %struct.queueh* %7, i32 0, i32 0, !dbg !988
  %9 = load %struct.qitem*, %struct.qitem** %8, align 8, !dbg !988
  store %struct.qitem* %9, %struct.qitem** %5, align 8, !dbg !989
  br label %10, !dbg !990

; <label>:10:                                     ; preds = %39, %2
  %11 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !991
  %12 = icmp ne %struct.qitem* %11, null, !dbg !991
  br i1 %12, label %13, label %44, !dbg !991

; <label>:13:                                     ; preds = %10
  %14 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !994
  %15 = load %struct.qitem*, %struct.qitem** %4, align 8, !dbg !997
  %16 = icmp eq %struct.qitem* %14, %15, !dbg !998
  br i1 %16, label %17, label %18, !dbg !999

; <label>:17:                                     ; preds = %13
  br label %39, !dbg !1000

; <label>:18:                                     ; preds = %13
  %19 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !1001
  %20 = getelementptr inbounds %struct.qitem, %struct.qitem* %19, i32 0, i32 6, !dbg !1003
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8, !dbg !1003
  %22 = icmp ne %struct._IO_FILE* %21, null, !dbg !1004
  br i1 %22, label %23, label %28, !dbg !1005

; <label>:23:                                     ; preds = %18
  %24 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !1006
  %25 = getelementptr inbounds %struct.qitem, %struct.qitem* %24, i32 0, i32 6, !dbg !1007
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8, !dbg !1007
  %27 = call i32 @fclose(%struct._IO_FILE* %26), !dbg !1008
  br label %28, !dbg !1008

; <label>:28:                                     ; preds = %23, %18
  %29 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !1009
  %30 = getelementptr inbounds %struct.qitem, %struct.qitem* %29, i32 0, i32 7, !dbg !1011
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8, !dbg !1011
  %32 = icmp ne %struct._IO_FILE* %31, null, !dbg !1012
  br i1 %32, label %33, label %38, !dbg !1013

; <label>:33:                                     ; preds = %28
  %34 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !1014
  %35 = getelementptr inbounds %struct.qitem, %struct.qitem* %34, i32 0, i32 7, !dbg !1015
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8, !dbg !1015
  %37 = call i32 @fclose(%struct._IO_FILE* %36), !dbg !1016
  br label %38, !dbg !1016

; <label>:38:                                     ; preds = %33, %28
  br label %39, !dbg !1017

; <label>:39:                                     ; preds = %38, %17
  %40 = load %struct.qitem*, %struct.qitem** %5, align 8, !dbg !1018
  %41 = getelementptr inbounds %struct.qitem, %struct.qitem* %40, i32 0, i32 0, !dbg !1018
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0, !dbg !1020
  %43 = load %struct.qitem*, %struct.qitem** %42, align 8, !dbg !1020
  store %struct.qitem* %43, %struct.qitem** %5, align 8, !dbg !1021
  br label %10, !dbg !1018, !llvm.loop !1022

; <label>:44:                                     ; preds = %10
  ret void, !dbg !1024
}

; Function Attrs: nounwind uwtable
define i32 @flushqueue_since(i32) #0 !dbg !1025 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1028, metadata !125), !dbg !1029
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1030, metadata !125), !dbg !1031
  call void @llvm.dbg.declare(metadata %struct.timeval* %5, metadata !1032, metadata !125), !dbg !1039
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1040, metadata !125), !dbg !1041
  store i8* null, i8** %6, align 8, !dbg !1041
  %7 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !1042
  %8 = call i32 (i8**, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1044
  %9 = icmp slt i32 %8, 0, !dbg !1045
  br i1 %9, label %10, label %11, !dbg !1046

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !1047
  br label %34, !dbg !1047

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %6, align 8, !dbg !1048
  %13 = call i32 @stat(i8* %12, %struct.stat* %4) #8, !dbg !1050
  %14 = icmp slt i32 %13, 0, !dbg !1051
  br i1 %14, label %15, label %17, !dbg !1052

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %6, align 8, !dbg !1053
  call void @free(i8* %16) #8, !dbg !1055
  store i32 0, i32* %2, align 4, !dbg !1056
  br label %34, !dbg !1056

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %6, align 8, !dbg !1057
  call void @free(i8* %18) #8, !dbg !1058
  store i8* null, i8** %6, align 8, !dbg !1059
  %19 = call i32 @gettimeofday(%struct.timeval* %5, %struct.timezone* null) #8, !dbg !1060
  %20 = icmp ne i32 %19, 0, !dbg !1062
  br i1 %20, label %21, label %22, !dbg !1063

; <label>:21:                                     ; preds = %17
  store i32 0, i32* %2, align 4, !dbg !1064
  br label %34, !dbg !1064

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 12, !dbg !1065
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0, !dbg !1067
  %25 = load i64, i64* %24, align 8, !dbg !1067
  %26 = load i32, i32* %3, align 4, !dbg !1068
  %27 = zext i32 %26 to i64, !dbg !1068
  %28 = add nsw i64 %25, %27, !dbg !1069
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !1070
  %30 = load i64, i64* %29, align 8, !dbg !1070
  %31 = icmp sge i64 %28, %30, !dbg !1071
  br i1 %31, label %32, label %33, !dbg !1072

; <label>:32:                                     ; preds = %22
  store i32 1, i32* %2, align 4, !dbg !1073
  br label %34, !dbg !1073

; <label>:33:                                     ; preds = %22
  store i32 0, i32* %2, align 4, !dbg !1074
  br label %34, !dbg !1074

; <label>:34:                                     ; preds = %33, %32, %21, %15, %10
  %35 = load i32, i32* %2, align 4, !dbg !1075
  ret i32 %35, !dbg !1075
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind uwtable
define i32 @flushqueue_signal() #0 !dbg !1076 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1079, metadata !125), !dbg !1080
  store i8* null, i8** %2, align 8, !dbg !1080
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1081, metadata !125), !dbg !1082
  %4 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i32 0, i32 3), align 8, !dbg !1083
  %5 = call i32 (i8**, i8*, ...) @asprintf(i8** %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1085
  %6 = icmp slt i32 %5, 0, !dbg !1086
  br i1 %6, label %7, label %8, !dbg !1087

; <label>:7:                                      ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !1088
  br label %25, !dbg !1088

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %2, align 8, !dbg !1089
  %10 = call i32 (i8*, i32, ...) @open(i8* %9, i32 64, i32 288), !dbg !1090
  store i32 %10, i32* %3, align 4, !dbg !1091
  %11 = load i32, i32* %3, align 4, !dbg !1092
  %12 = icmp slt i32 %11, 0, !dbg !1094
  br i1 %12, label %13, label %15, !dbg !1095

; <label>:13:                                     ; preds = %8
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)), !dbg !1096
  %14 = load i8*, i8** %2, align 8, !dbg !1098
  call void @free(i8* %14) #8, !dbg !1099
  store i32 -1, i32* %1, align 4, !dbg !1100
  br label %25, !dbg !1100

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %3, align 4, !dbg !1101
  %17 = call i32 @close(i32 %16), !dbg !1102
  %18 = load i8*, i8** %2, align 8, !dbg !1103
  %19 = call i32 @utimes(i8* %18, %struct.timeval* null) #8, !dbg !1105
  %20 = icmp slt i32 %19, 0, !dbg !1106
  br i1 %20, label %21, label %23, !dbg !1107

; <label>:21:                                     ; preds = %15
  call void (i32, i8*, ...) @syslog(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0)), !dbg !1108
  %22 = load i8*, i8** %2, align 8, !dbg !1110
  call void @free(i8* %22) #8, !dbg !1111
  store i32 -1, i32* %1, align 4, !dbg !1112
  br label %25, !dbg !1112

; <label>:23:                                     ; preds = %15
  %24 = load i8*, i8** %2, align 8, !dbg !1113
  call void @free(i8* %24) #8, !dbg !1114
  store i32 0, i32* %1, align 4, !dbg !1115
  br label %25, !dbg !1115

; <label>:25:                                     ; preds = %23, %21, %13, %7
  %26 = load i32, i32* %1, align 4, !dbg !1116
  ret i32 %26, !dbg !1116
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare i32 @utimes(i8*, %struct.timeval*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare i32 @add_recp(%struct.queue*, i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18)
!1 = !DIFile(filename: "line11-spool.o.i", directory: "/home/lichi/Desktop/dma/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/dma/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!6 = !DIEnumerator(name: "_ISupper", value: 256)
!7 = !DIEnumerator(name: "_ISlower", value: 512)
!8 = !DIEnumerator(name: "_ISalpha", value: 1024)
!9 = !DIEnumerator(name: "_ISdigit", value: 2048)
!10 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!11 = !DIEnumerator(name: "_ISspace", value: 8192)
!12 = !DIEnumerator(name: "_ISprint", value: 16384)
!13 = !DIEnumerator(name: "_ISgraph", value: 32768)
!14 = !DIEnumerator(name: "_ISblank", value: 1)
!15 = !DIEnumerator(name: "_IScntrl", value: 2)
!16 = !DIEnumerator(name: "_ISpunct", value: 4)
!17 = !DIEnumerator(name: "_ISalnum", value: 8)
!18 = !{!19, !20, !23, !24, !25}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !21, line: 135, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/dma/task1")
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !21, line: 122, baseType: !22)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!29 = distinct !DISubprogram(name: "newspoolf", scope: !30, file: !30, line: 71, type: !31, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!30 = !DIFile(filename: "spool.c", directory: "/home/lichi/Desktop/dma/task1")
!31 = !DISubroutineType(types: !32)
!32 = !{!24, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue", file: !35, line: 118, size: 320, align: 64, elements: !36)
!35 = !DIFile(filename: "dma.h", directory: "/home/lichi/Desktop/dma/task1")
!36 = !{!37, !119, !120, !121, !122}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !34, file: !35, line: 119, baseType: !38, size: 64, align: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queueh", file: !35, line: 116, size: 64, align: 64, elements: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lh_first", scope: !38, file: !35, line: 116, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qitem", file: !35, line: 105, size: 640, align: 64, elements: !43)
!43 = !{!44, !50, !54, !56, !57, !58, !59, !117, !118}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !35, line: 106, baseType: !45, size: 128, align: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !42, file: !35, line: 106, size: 128, align: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "le_next", scope: !45, file: !35, line: 106, baseType: !41, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "le_prev", scope: !45, file: !35, line: 106, baseType: !49, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !42, file: !35, line: 107, baseType: !51, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !42, file: !35, line: 108, baseType: !55, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "queuefn", scope: !42, file: !35, line: 109, baseType: !55, size: 64, align: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "mailfn", scope: !42, file: !35, line: 110, baseType: !55, size: 64, align: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "queueid", scope: !42, file: !35, line: 111, baseType: !55, size: 64, align: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "queuef", scope: !42, file: !35, line: 112, baseType: !60, size: 64, align: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 48, baseType: !63)
!62 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/dma/task1")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 241, size: 1728, align: 64, elements: !65)
!64 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/dma/task1")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !86, !87, !88, !89, !93, !94, !96, !100, !103, !105, !106, !107, !108, !109, !112, !113}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !63, file: !64, line: 242, baseType: !24, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !63, file: !64, line: 247, baseType: !55, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !63, file: !64, line: 248, baseType: !55, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !63, file: !64, line: 249, baseType: !55, size: 64, align: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !63, file: !64, line: 250, baseType: !55, size: 64, align: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !63, file: !64, line: 251, baseType: !55, size: 64, align: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !63, file: !64, line: 252, baseType: !55, size: 64, align: 64, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !63, file: !64, line: 253, baseType: !55, size: 64, align: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !63, file: !64, line: 254, baseType: !55, size: 64, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !63, file: !64, line: 256, baseType: !55, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !63, file: !64, line: 257, baseType: !55, size: 64, align: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !63, file: !64, line: 258, baseType: !55, size: 64, align: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !63, file: !64, line: 260, baseType: !79, size: 64, align: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !64, line: 156, size: 192, align: 64, elements: !81)
!81 = !{!82, !83, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !80, file: !64, line: 157, baseType: !79, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !80, file: !64, line: 158, baseType: !84, size: 64, align: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !80, file: !64, line: 162, baseType: !24, size: 32, align: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !63, file: !64, line: 262, baseType: !84, size: 64, align: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !63, file: !64, line: 264, baseType: !24, size: 32, align: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !63, file: !64, line: 268, baseType: !24, size: 32, align: 32, offset: 928)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !63, file: !64, line: 270, baseType: !90, size: 64, align: 64, offset: 960)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !91, line: 131, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/dma/task1")
!92 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !63, file: !64, line: 274, baseType: !25, size: 16, align: 16, offset: 1024)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !63, file: !64, line: 275, baseType: !95, size: 8, align: 8, offset: 1040)
!95 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !63, file: !64, line: 276, baseType: !97, size: 8, align: 8, offset: 1048)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 1)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !63, file: !64, line: 280, baseType: !101, size: 64, align: 64, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !64, line: 150, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !63, file: !64, line: 289, baseType: !104, size: 64, align: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !91, line: 132, baseType: !92)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !63, file: !64, line: 297, baseType: !19, size: 64, align: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !63, file: !64, line: 298, baseType: !19, size: 64, align: 64, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !63, file: !64, line: 299, baseType: !19, size: 64, align: 64, offset: 1344)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !63, file: !64, line: 300, baseType: !19, size: 64, align: 64, offset: 1408)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !63, file: !64, line: 302, baseType: !110, size: 64, align: 64, offset: 1472)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 216, baseType: !22)
!111 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/dma/task1")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !63, file: !64, line: 303, baseType: !24, size: 32, align: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !63, file: !64, line: 305, baseType: !114, size: 160, align: 8, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, align: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "mailf", scope: !42, file: !35, line: 113, baseType: !60, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "remote", scope: !42, file: !35, line: 114, baseType: !24, size: 32, align: 32, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !34, file: !35, line: 120, baseType: !55, size: 64, align: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mailf", scope: !34, file: !35, line: 121, baseType: !60, size: 64, align: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tmpf", scope: !34, file: !35, line: 122, baseType: !55, size: 64, align: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !34, file: !35, line: 123, baseType: !51, size: 64, align: 64, offset: 256)
!123 = !{}
!124 = !DILocalVariable(name: "queue", arg: 1, scope: !29, file: !30, line: 71, type: !33)
!125 = !DIExpression()
!126 = !DILocation(line: 71, column: 25, scope: !29)
!127 = !DILocalVariable(name: "fn", scope: !29, file: !30, line: 73, type: !128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32776, align: 8, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 4097)
!131 = !DILocation(line: 73, column: 7, scope: !29)
!132 = !DILocalVariable(name: "st", scope: !29, file: !30, line: 74, type: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !134, line: 46, size: 1152, align: 64, elements: !135)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/dma/task1")
!135 = !{!136, !138, !140, !142, !145, !147, !149, !150, !151, !152, !154, !156, !164, !165, !166}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !133, file: !134, line: 48, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !91, line: 124, baseType: !22)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !133, file: !134, line: 53, baseType: !139, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !91, line: 127, baseType: !22)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !133, file: !134, line: 61, baseType: !141, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !91, line: 130, baseType: !22)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !133, file: !134, line: 62, baseType: !143, size: 32, align: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !91, line: 129, baseType: !144)
!144 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !133, file: !134, line: 64, baseType: !146, size: 32, align: 32, offset: 224)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !91, line: 125, baseType: !144)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !133, file: !134, line: 65, baseType: !148, size: 32, align: 32, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !91, line: 126, baseType: !144)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !133, file: !134, line: 67, baseType: !24, size: 32, align: 32, offset: 288)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !133, file: !134, line: 69, baseType: !137, size: 64, align: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !133, file: !134, line: 74, baseType: !90, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !133, file: !134, line: 78, baseType: !153, size: 64, align: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !91, line: 153, baseType: !92)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !133, file: !134, line: 80, baseType: !155, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !91, line: 158, baseType: !92)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !133, file: !134, line: 91, baseType: !157, size: 128, align: 64, offset: 576)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !158, line: 120, size: 128, align: 64, elements: !159)
!158 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/dma/task1")
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !157, file: !158, line: 122, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !91, line: 139, baseType: !92)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !157, file: !158, line: 123, baseType: !163, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !91, line: 175, baseType: !92)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !133, file: !134, line: 92, baseType: !157, size: 128, align: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !133, file: !134, line: 93, baseType: !157, size: 128, align: 64, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !133, file: !134, line: 106, baseType: !167, size: 192, align: 64, offset: 960)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 192, align: 64, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 3)
!170 = !DILocation(line: 74, column: 14, scope: !29)
!171 = !DILocalVariable(name: "t", scope: !29, file: !30, line: 75, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stritem", file: !35, line: 92, size: 128, align: 64, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !35, line: 93, baseType: !176, size: 64, align: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !35, line: 93, size: 64, align: 64, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sle_next", scope: !176, file: !35, line: 93, baseType: !172, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !173, file: !35, line: 94, baseType: !55, size: 64, align: 64, offset: 64)
!180 = !DILocation(line: 75, column: 18, scope: !29)
!181 = !DILocalVariable(name: "fd", scope: !29, file: !30, line: 76, type: !24)
!182 = !DILocation(line: 76, column: 6, scope: !29)
!183 = !DILocation(line: 78, column: 15, scope: !184)
!184 = distinct !DILexicalBlock(scope: !29, file: !30, line: 78, column: 6)
!185 = !DILocation(line: 78, column: 47, scope: !184)
!186 = !DILocation(line: 78, column: 6, scope: !184)
!187 = !DILocation(line: 78, column: 75, scope: !184)
!188 = !DILocation(line: 78, column: 6, scope: !29)
!189 = !DILocation(line: 79, column: 3, scope: !184)
!190 = !DILocation(line: 81, column: 15, scope: !29)
!191 = !DILocation(line: 81, column: 7, scope: !29)
!192 = !DILocation(line: 81, column: 5, scope: !29)
!193 = !DILocation(line: 82, column: 6, scope: !194)
!194 = distinct !DILexicalBlock(scope: !29, file: !30, line: 82, column: 6)
!195 = !DILocation(line: 82, column: 9, scope: !194)
!196 = !DILocation(line: 82, column: 6, scope: !29)
!197 = !DILocation(line: 83, column: 3, scope: !194)
!198 = !DILocation(line: 85, column: 13, scope: !199)
!199 = distinct !DILexicalBlock(scope: !29, file: !30, line: 85, column: 6)
!200 = !DILocation(line: 85, column: 6, scope: !199)
!201 = !DILocation(line: 85, column: 23, scope: !199)
!202 = !DILocation(line: 85, column: 6, scope: !29)
!203 = !DILocation(line: 86, column: 3, scope: !199)
!204 = !DILocation(line: 87, column: 12, scope: !205)
!205 = distinct !DILexicalBlock(scope: !29, file: !30, line: 87, column: 6)
!206 = !DILocation(line: 87, column: 6, scope: !205)
!207 = !DILocation(line: 87, column: 24, scope: !205)
!208 = !DILocation(line: 87, column: 6, scope: !29)
!209 = !DILocation(line: 88, column: 3, scope: !205)
!210 = !DILocation(line: 89, column: 23, scope: !29)
!211 = !DILocation(line: 89, column: 16, scope: !29)
!212 = !DILocation(line: 89, column: 2, scope: !29)
!213 = !DILocation(line: 89, column: 9, scope: !29)
!214 = !DILocation(line: 89, column: 14, scope: !29)
!215 = !DILocation(line: 90, column: 6, scope: !216)
!216 = distinct !DILexicalBlock(scope: !29, file: !30, line: 90, column: 6)
!217 = !DILocation(line: 90, column: 13, scope: !216)
!218 = !DILocation(line: 90, column: 18, scope: !216)
!219 = !DILocation(line: 90, column: 6, scope: !29)
!220 = !DILocation(line: 91, column: 3, scope: !216)
!221 = !DILocation(line: 96, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !29, file: !30, line: 96, column: 6)
!223 = !DILocation(line: 96, column: 6, scope: !222)
!224 = !DILocation(line: 96, column: 21, scope: !222)
!225 = !DILocation(line: 96, column: 6, scope: !29)
!226 = !DILocation(line: 97, column: 3, scope: !222)
!227 = !DILocation(line: 98, column: 16, scope: !228)
!228 = distinct !DILexicalBlock(scope: !29, file: !30, line: 98, column: 6)
!229 = !DILocation(line: 98, column: 23, scope: !228)
!230 = !DILocation(line: 98, column: 52, scope: !228)
!231 = !DILocation(line: 98, column: 6, scope: !228)
!232 = !DILocation(line: 98, column: 60, scope: !228)
!233 = !DILocation(line: 98, column: 6, scope: !29)
!234 = !DILocation(line: 99, column: 3, scope: !228)
!235 = !DILocation(line: 101, column: 24, scope: !29)
!236 = !DILocation(line: 101, column: 17, scope: !29)
!237 = !DILocation(line: 101, column: 2, scope: !29)
!238 = !DILocation(line: 101, column: 9, scope: !29)
!239 = !DILocation(line: 101, column: 15, scope: !29)
!240 = !DILocation(line: 102, column: 6, scope: !241)
!241 = distinct !DILexicalBlock(scope: !29, file: !30, line: 102, column: 6)
!242 = !DILocation(line: 102, column: 13, scope: !241)
!243 = !DILocation(line: 102, column: 19, scope: !241)
!244 = !DILocation(line: 102, column: 6, scope: !29)
!245 = !DILocation(line: 103, column: 3, scope: !241)
!246 = !DILocation(line: 105, column: 6, scope: !29)
!247 = !DILocation(line: 105, column: 4, scope: !29)
!248 = !DILocation(line: 106, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !29, file: !30, line: 106, column: 6)
!250 = !DILocation(line: 106, column: 8, scope: !249)
!251 = !DILocation(line: 106, column: 6, scope: !29)
!252 = !DILocation(line: 107, column: 12, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !30, line: 106, column: 16)
!254 = !DILocation(line: 107, column: 19, scope: !253)
!255 = !DILocation(line: 107, column: 3, scope: !253)
!256 = !DILocation(line: 107, column: 6, scope: !253)
!257 = !DILocation(line: 107, column: 10, scope: !253)
!258 = !DILocation(line: 108, column: 2, scope: !253)
!259 = distinct !{!259, !258}
!260 = !DILocation(line: 108, column: 5, scope: !261)
!261 = !DILexicalBlockFile(scope: !262, file: !30, discriminator: 1)
!262 = distinct !DILexicalBlock(scope: !253, file: !30, line: 108, column: 5)
!263 = !DILocation(line: 108, column: 2, scope: !261)
!264 = !DILocation(line: 108, column: 3, scope: !261)
!265 = !DILocation(line: 108, column: 12, scope: !261)
!266 = !DILocation(line: 108, column: 15, scope: !261)
!267 = !DILocation(line: 109, column: 2, scope: !253)
!268 = !DILocation(line: 110, column: 2, scope: !29)
!269 = !DILocation(line: 113, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !29, file: !30, line: 113, column: 6)
!271 = !DILocation(line: 113, column: 13, scope: !270)
!272 = !DILocation(line: 113, column: 19, scope: !270)
!273 = !DILocation(line: 113, column: 6, scope: !29)
!274 = !DILocation(line: 114, column: 10, scope: !270)
!275 = !DILocation(line: 114, column: 17, scope: !270)
!276 = !DILocation(line: 114, column: 3, scope: !270)
!277 = !DILocation(line: 115, column: 8, scope: !29)
!278 = !DILocation(line: 115, column: 2, scope: !29)
!279 = !DILocation(line: 116, column: 9, scope: !29)
!280 = !DILocation(line: 116, column: 2, scope: !29)
!281 = !DILocation(line: 117, column: 2, scope: !29)
!282 = !DILocation(line: 118, column: 1, scope: !29)
!283 = distinct !DISubprogram(name: "linkspool", scope: !30, file: !30, line: 231, type: !31, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!284 = !DILocalVariable(name: "queue", arg: 1, scope: !283, file: !30, line: 231, type: !33)
!285 = !DILocation(line: 231, column: 25, scope: !283)
!286 = !DILocalVariable(name: "st", scope: !283, file: !30, line: 233, type: !133)
!287 = !DILocation(line: 233, column: 14, scope: !283)
!288 = !DILocalVariable(name: "it", scope: !283, file: !30, line: 234, type: !41)
!289 = !DILocation(line: 234, column: 16, scope: !283)
!290 = !DILocation(line: 236, column: 13, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !30, line: 236, column: 6)
!292 = !DILocation(line: 236, column: 20, scope: !291)
!293 = !DILocation(line: 236, column: 6, scope: !291)
!294 = !DILocation(line: 236, column: 27, scope: !291)
!295 = !DILocation(line: 236, column: 32, scope: !291)
!296 = !DILocation(line: 236, column: 48, scope: !297)
!297 = !DILexicalBlockFile(scope: !291, file: !30, discriminator: 1)
!298 = !DILocation(line: 236, column: 55, scope: !297)
!299 = !DILocation(line: 236, column: 41, scope: !297)
!300 = !DILocation(line: 236, column: 35, scope: !301)
!301 = !DILexicalBlockFile(scope: !297, file: !30, discriminator: 2)
!302 = !DILocation(line: 236, column: 63, scope: !297)
!303 = !DILocation(line: 236, column: 6, scope: !297)
!304 = !DILocation(line: 237, column: 3, scope: !291)
!305 = !DILocation(line: 240, column: 19, scope: !283)
!306 = !DILocation(line: 240, column: 29, scope: !283)
!307 = !DILocation(line: 240, column: 36, scope: !283)
!308 = !DILocation(line: 239, column: 2, scope: !283)
!309 = !DILocation(line: 242, column: 2, scope: !310)
!310 = distinct !DILexicalBlock(scope: !283, file: !30, line: 242, column: 1)
!311 = !DILocation(line: 242, column: 9, scope: !310)
!312 = !DILocation(line: 242, column: 4, scope: !310)
!313 = !DILocation(line: 242, column: 3, scope: !310)
!314 = !DILocation(line: 242, column: 6, scope: !310)
!315 = !DILocation(line: 242, column: 1, scope: !316)
!316 = !DILexicalBlockFile(scope: !317, file: !30, discriminator: 1)
!317 = distinct !DILexicalBlock(scope: !310, file: !30, line: 242, column: 1)
!318 = !DILocation(line: 243, column: 17, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !30, line: 243, column: 7)
!320 = distinct !DILexicalBlock(scope: !317, file: !30, line: 242, column: 39)
!321 = !DILocation(line: 243, column: 21, scope: !319)
!322 = !DILocation(line: 243, column: 44, scope: !319)
!323 = !DILocation(line: 243, column: 51, scope: !319)
!324 = !DILocation(line: 243, column: 66, scope: !319)
!325 = !DILocation(line: 243, column: 55, scope: !319)
!326 = !DILocation(line: 243, column: 7, scope: !319)
!327 = !DILocation(line: 243, column: 70, scope: !319)
!328 = !DILocation(line: 243, column: 7, scope: !320)
!329 = !DILocation(line: 244, column: 4, scope: !319)
!330 = !DILocation(line: 245, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !320, file: !30, line: 245, column: 7)
!332 = !DILocation(line: 245, column: 21, scope: !331)
!333 = !DILocation(line: 245, column: 47, scope: !331)
!334 = !DILocation(line: 245, column: 57, scope: !331)
!335 = !DILocation(line: 245, column: 61, scope: !331)
!336 = !DILocation(line: 245, column: 7, scope: !331)
!337 = !DILocation(line: 245, column: 70, scope: !331)
!338 = !DILocation(line: 245, column: 7, scope: !320)
!339 = !DILocation(line: 246, column: 4, scope: !331)
!340 = !DILocation(line: 247, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !320, file: !30, line: 247, column: 7)
!342 = !DILocation(line: 247, column: 21, scope: !341)
!343 = !DILocation(line: 247, column: 46, scope: !341)
!344 = !DILocation(line: 247, column: 56, scope: !341)
!345 = !DILocation(line: 247, column: 60, scope: !341)
!346 = !DILocation(line: 247, column: 7, scope: !341)
!347 = !DILocation(line: 247, column: 69, scope: !341)
!348 = !DILocation(line: 247, column: 7, scope: !320)
!349 = !DILocation(line: 248, column: 4, scope: !341)
!350 = !DILocation(line: 251, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !320, file: !30, line: 251, column: 7)
!352 = !DILocation(line: 251, column: 16, scope: !351)
!353 = !DILocation(line: 251, column: 7, scope: !351)
!354 = !DILocation(line: 251, column: 30, scope: !351)
!355 = !DILocation(line: 251, column: 35, scope: !351)
!356 = !DILocation(line: 251, column: 43, scope: !357)
!357 = !DILexicalBlockFile(scope: !351, file: !30, discriminator: 1)
!358 = !DILocation(line: 251, column: 47, scope: !357)
!359 = !DILocation(line: 251, column: 38, scope: !357)
!360 = !DILocation(line: 251, column: 60, scope: !357)
!361 = !DILocation(line: 251, column: 7, scope: !357)
!362 = !DILocation(line: 252, column: 4, scope: !351)
!363 = !DILocation(line: 254, column: 19, scope: !364)
!364 = distinct !DILexicalBlock(scope: !320, file: !30, line: 254, column: 7)
!365 = !DILocation(line: 254, column: 7, scope: !364)
!366 = !DILocation(line: 254, column: 23, scope: !364)
!367 = !DILocation(line: 254, column: 7, scope: !320)
!368 = !DILocation(line: 255, column: 4, scope: !364)
!369 = !DILocation(line: 257, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !320, file: !30, line: 257, column: 7)
!371 = !DILocation(line: 257, column: 19, scope: !370)
!372 = !DILocation(line: 257, column: 25, scope: !370)
!373 = !DILocation(line: 257, column: 29, scope: !370)
!374 = !DILocation(line: 257, column: 7, scope: !370)
!375 = !DILocation(line: 257, column: 37, scope: !370)
!376 = !DILocation(line: 257, column: 7, scope: !320)
!377 = !DILocation(line: 258, column: 4, scope: !370)
!378 = !DILocation(line: 259, column: 2, scope: !320)
!379 = !DILocation(line: 242, column: 1, scope: !380)
!380 = !DILexicalBlockFile(scope: !317, file: !30, discriminator: 2)
!381 = !DILocation(line: 242, column: 2, scope: !380)
!382 = !DILocation(line: 242, column: 3, scope: !380)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 242, column: 1, scope: !283)
!385 = !DILocation(line: 261, column: 2, scope: !386)
!386 = distinct !DILexicalBlock(scope: !283, file: !30, line: 261, column: 1)
!387 = !DILocation(line: 261, column: 9, scope: !386)
!388 = !DILocation(line: 261, column: 4, scope: !386)
!389 = !DILocation(line: 261, column: 3, scope: !386)
!390 = !DILocation(line: 261, column: 6, scope: !386)
!391 = !DILocation(line: 261, column: 1, scope: !392)
!392 = !DILexicalBlockFile(scope: !393, file: !30, discriminator: 1)
!393 = distinct !DILexicalBlock(scope: !386, file: !30, line: 261, column: 1)
!394 = !DILocation(line: 263, column: 10, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !30, line: 261, column: 39)
!396 = !DILocation(line: 263, column: 14, scope: !395)
!397 = !DILocation(line: 263, column: 20, scope: !395)
!398 = !DILocation(line: 263, column: 24, scope: !395)
!399 = !DILocation(line: 262, column: 3, scope: !395)
!400 = !DILocation(line: 264, column: 2, scope: !395)
!401 = !DILocation(line: 261, column: 1, scope: !402)
!402 = !DILexicalBlockFile(scope: !393, file: !30, discriminator: 2)
!403 = !DILocation(line: 261, column: 2, scope: !402)
!404 = !DILocation(line: 261, column: 3, scope: !402)
!405 = distinct !{!405, !406}
!406 = !DILocation(line: 261, column: 1, scope: !283)
!407 = !DILocation(line: 266, column: 9, scope: !283)
!408 = !DILocation(line: 266, column: 16, scope: !283)
!409 = !DILocation(line: 266, column: 2, scope: !283)
!410 = !DILocation(line: 267, column: 2, scope: !283)
!411 = !DILocation(line: 270, column: 2, scope: !412)
!412 = distinct !DILexicalBlock(scope: !283, file: !30, line: 270, column: 1)
!413 = !DILocation(line: 270, column: 9, scope: !412)
!414 = !DILocation(line: 270, column: 4, scope: !412)
!415 = !DILocation(line: 270, column: 3, scope: !412)
!416 = !DILocation(line: 270, column: 6, scope: !412)
!417 = !DILocation(line: 270, column: 1, scope: !418)
!418 = !DILexicalBlockFile(scope: !419, file: !30, discriminator: 1)
!419 = distinct !DILexicalBlock(scope: !412, file: !30, line: 270, column: 1)
!420 = !DILocation(line: 271, column: 10, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !30, line: 270, column: 39)
!422 = !DILocation(line: 271, column: 14, scope: !421)
!423 = !DILocation(line: 271, column: 3, scope: !421)
!424 = !DILocation(line: 272, column: 10, scope: !421)
!425 = !DILocation(line: 272, column: 14, scope: !421)
!426 = !DILocation(line: 272, column: 3, scope: !421)
!427 = !DILocation(line: 273, column: 2, scope: !421)
!428 = !DILocation(line: 270, column: 1, scope: !429)
!429 = !DILexicalBlockFile(scope: !419, file: !30, discriminator: 2)
!430 = !DILocation(line: 270, column: 2, scope: !429)
!431 = !DILocation(line: 270, column: 3, scope: !429)
!432 = distinct !{!432, !433}
!433 = !DILocation(line: 270, column: 1, scope: !283)
!434 = !DILocation(line: 274, column: 2, scope: !283)
!435 = !DILocation(line: 275, column: 1, scope: !283)
!436 = distinct !DISubprogram(name: "writequeuef", scope: !30, file: !30, line: 121, type: !437, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!437 = !DISubroutineType(types: !438)
!438 = !{!24, !41}
!439 = !DILocalVariable(name: "it", arg: 1, scope: !436, file: !30, line: 121, type: !41)
!440 = !DILocation(line: 121, column: 27, scope: !436)
!441 = !DILocalVariable(name: "error", scope: !436, file: !30, line: 123, type: !24)
!442 = !DILocation(line: 123, column: 6, scope: !436)
!443 = !DILocalVariable(name: "queuefd", scope: !436, file: !30, line: 124, type: !24)
!444 = !DILocation(line: 124, column: 6, scope: !436)
!445 = !DILocation(line: 126, column: 24, scope: !436)
!446 = !DILocation(line: 126, column: 28, scope: !436)
!447 = !DILocation(line: 126, column: 12, scope: !436)
!448 = !DILocation(line: 126, column: 10, scope: !436)
!449 = !DILocation(line: 127, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !436, file: !30, line: 127, column: 6)
!451 = !DILocation(line: 127, column: 14, scope: !450)
!452 = !DILocation(line: 127, column: 6, scope: !436)
!453 = !DILocation(line: 128, column: 3, scope: !450)
!454 = !DILocation(line: 129, column: 13, scope: !455)
!455 = distinct !DILexicalBlock(scope: !436, file: !30, line: 129, column: 6)
!456 = !DILocation(line: 129, column: 6, scope: !455)
!457 = !DILocation(line: 129, column: 28, scope: !455)
!458 = !DILocation(line: 129, column: 6, scope: !436)
!459 = !DILocation(line: 130, column: 3, scope: !455)
!460 = !DILocation(line: 131, column: 22, scope: !436)
!461 = !DILocation(line: 131, column: 15, scope: !436)
!462 = !DILocation(line: 131, column: 2, scope: !436)
!463 = !DILocation(line: 131, column: 6, scope: !436)
!464 = !DILocation(line: 131, column: 13, scope: !436)
!465 = !DILocation(line: 132, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !436, file: !30, line: 132, column: 6)
!467 = !DILocation(line: 132, column: 10, scope: !466)
!468 = !DILocation(line: 132, column: 17, scope: !466)
!469 = !DILocation(line: 132, column: 6, scope: !436)
!470 = !DILocation(line: 133, column: 3, scope: !466)
!471 = !DILocation(line: 135, column: 18, scope: !436)
!472 = !DILocation(line: 135, column: 22, scope: !436)
!473 = !DILocation(line: 139, column: 5, scope: !436)
!474 = !DILocation(line: 139, column: 9, scope: !436)
!475 = !DILocation(line: 140, column: 5, scope: !436)
!476 = !DILocation(line: 140, column: 9, scope: !436)
!477 = !DILocation(line: 141, column: 5, scope: !436)
!478 = !DILocation(line: 141, column: 9, scope: !436)
!479 = !DILocation(line: 135, column: 10, scope: !436)
!480 = !DILocation(line: 135, column: 8, scope: !436)
!481 = !DILocation(line: 143, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !436, file: !30, line: 143, column: 6)
!483 = !DILocation(line: 143, column: 12, scope: !482)
!484 = !DILocation(line: 143, column: 6, scope: !436)
!485 = !DILocation(line: 144, column: 3, scope: !482)
!486 = !DILocation(line: 146, column: 13, scope: !487)
!487 = distinct !DILexicalBlock(scope: !436, file: !30, line: 146, column: 6)
!488 = !DILocation(line: 146, column: 17, scope: !487)
!489 = !DILocation(line: 146, column: 6, scope: !487)
!490 = !DILocation(line: 146, column: 25, scope: !487)
!491 = !DILocation(line: 146, column: 30, scope: !487)
!492 = !DILocation(line: 146, column: 46, scope: !493)
!493 = !DILexicalBlockFile(scope: !487, file: !30, discriminator: 1)
!494 = !DILocation(line: 146, column: 50, scope: !493)
!495 = !DILocation(line: 146, column: 39, scope: !493)
!496 = !DILocation(line: 146, column: 33, scope: !497)
!497 = !DILexicalBlockFile(scope: !493, file: !30, discriminator: 2)
!498 = !DILocation(line: 146, column: 59, scope: !493)
!499 = !DILocation(line: 146, column: 6, scope: !493)
!500 = !DILocation(line: 147, column: 3, scope: !487)
!501 = !DILocation(line: 149, column: 2, scope: !436)
!502 = !DILocation(line: 150, column: 1, scope: !436)
!503 = distinct !DISubprogram(name: "load_queue", scope: !30, file: !30, line: 278, type: !31, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!504 = !DILocalVariable(name: "queue", arg: 1, scope: !503, file: !30, line: 278, type: !33)
!505 = !DILocation(line: 278, column: 26, scope: !503)
!506 = !DILocalVariable(name: "sb", scope: !503, file: !30, line: 280, type: !133)
!507 = !DILocation(line: 280, column: 14, scope: !503)
!508 = !DILocalVariable(name: "it", scope: !503, file: !30, line: 281, type: !41)
!509 = !DILocation(line: 281, column: 16, scope: !503)
!510 = !DILocalVariable(name: "spooldir", scope: !503, file: !30, line: 282, type: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !513, line: 127, baseType: !514)
!513 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/lichi/Desktop/dma/task1")
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !513, line: 127, flags: DIFlagFwdDecl)
!515 = !DILocation(line: 282, column: 7, scope: !503)
!516 = !DILocalVariable(name: "de", scope: !503, file: !30, line: 283, type: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !519, line: 22, size: 2240, align: 64, elements: !520)
!519 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "/home/lichi/Desktop/dma/task1")
!520 = !{!521, !522, !523, !524, !526}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !518, file: !519, line: 25, baseType: !139, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !518, file: !519, line: 26, baseType: !90, size: 64, align: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !518, file: !519, line: 31, baseType: !25, size: 16, align: 16, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !518, file: !519, line: 32, baseType: !525, size: 8, align: 8, offset: 144)
!525 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !518, file: !519, line: 33, baseType: !527, size: 2048, align: 8, offset: 152)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, align: 8, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 256)
!530 = !DILocation(line: 283, column: 17, scope: !503)
!531 = !DILocalVariable(name: "queuefn", scope: !503, file: !30, line: 284, type: !55)
!532 = !DILocation(line: 284, column: 8, scope: !503)
!533 = !DILocalVariable(name: "mailfn", scope: !503, file: !30, line: 285, type: !55)
!534 = !DILocation(line: 285, column: 8, scope: !503)
!535 = !DILocation(line: 287, column: 8, scope: !503)
!536 = !DILocation(line: 287, column: 2, scope: !503)
!537 = !DILocation(line: 288, column: 1, scope: !503)
!538 = distinct !{!538, !537}
!539 = !DILocation(line: 288, column: 2, scope: !540)
!540 = !DILexicalBlockFile(scope: !541, file: !30, discriminator: 1)
!541 = distinct !DILexicalBlock(scope: !503, file: !30, line: 288, column: 4)
!542 = !DILocation(line: 288, column: 9, scope: !540)
!543 = !DILocation(line: 288, column: 4, scope: !540)
!544 = !DILocation(line: 288, column: 13, scope: !540)
!545 = !DILocation(line: 288, column: 28, scope: !540)
!546 = !DILocation(line: 290, column: 28, scope: !503)
!547 = !DILocation(line: 290, column: 13, scope: !503)
!548 = !DILocation(line: 290, column: 11, scope: !503)
!549 = !DILocation(line: 291, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !503, file: !30, line: 291, column: 6)
!551 = !DILocation(line: 291, column: 15, scope: !550)
!552 = !DILocation(line: 291, column: 6, scope: !503)
!553 = !DILocation(line: 292, column: 3, scope: !550)
!554 = !DILocation(line: 294, column: 2, scope: !503)
!555 = !DILocation(line: 294, column: 23, scope: !556)
!556 = !DILexicalBlockFile(scope: !503, file: !30, discriminator: 1)
!557 = !DILocation(line: 294, column: 15, scope: !556)
!558 = !DILocation(line: 294, column: 13, scope: !556)
!559 = !DILocation(line: 294, column: 34, scope: !556)
!560 = !DILocation(line: 294, column: 2, scope: !556)
!561 = !DILocation(line: 295, column: 11, scope: !562)
!562 = distinct !DILexicalBlock(scope: !503, file: !30, line: 294, column: 42)
!563 = !DILocation(line: 296, column: 10, scope: !562)
!564 = !DILocation(line: 299, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !30, line: 299, column: 7)
!566 = !DILocation(line: 299, column: 11, scope: !565)
!567 = !DILocation(line: 299, column: 21, scope: !565)
!568 = !DILocation(line: 299, column: 7, scope: !562)
!569 = !DILocation(line: 300, column: 4, scope: !565)
!570 = distinct !{!570, !554}
!571 = !DILocation(line: 301, column: 43, scope: !572)
!572 = distinct !DILexicalBlock(scope: !562, file: !30, line: 301, column: 7)
!573 = !DILocation(line: 301, column: 53, scope: !572)
!574 = !DILocation(line: 301, column: 57, scope: !572)
!575 = !DILocation(line: 301, column: 64, scope: !572)
!576 = !DILocation(line: 301, column: 7, scope: !572)
!577 = !DILocation(line: 301, column: 69, scope: !572)
!578 = !DILocation(line: 301, column: 7, scope: !562)
!579 = !DILocation(line: 302, column: 4, scope: !572)
!580 = !DILocation(line: 303, column: 42, scope: !581)
!581 = distinct !DILexicalBlock(scope: !562, file: !30, line: 303, column: 7)
!582 = !DILocation(line: 303, column: 52, scope: !581)
!583 = !DILocation(line: 303, column: 56, scope: !581)
!584 = !DILocation(line: 303, column: 63, scope: !581)
!585 = !DILocation(line: 303, column: 7, scope: !581)
!586 = !DILocation(line: 303, column: 68, scope: !581)
!587 = !DILocation(line: 303, column: 7, scope: !562)
!588 = !DILocation(line: 304, column: 4, scope: !581)
!589 = !DILocation(line: 311, column: 12, scope: !590)
!590 = distinct !DILexicalBlock(scope: !562, file: !30, line: 311, column: 7)
!591 = !DILocation(line: 311, column: 7, scope: !590)
!592 = !DILocation(line: 311, column: 26, scope: !590)
!593 = !DILocation(line: 311, column: 7, scope: !562)
!594 = !DILocation(line: 312, column: 4, scope: !590)
!595 = !DILocation(line: 313, column: 10, scope: !596)
!596 = distinct !DILexicalBlock(scope: !562, file: !30, line: 313, column: 7)
!597 = !DILocation(line: 313, column: 21, scope: !596)
!598 = !DILocation(line: 313, column: 7, scope: !562)
!599 = !DILocation(line: 314, column: 5, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !30, line: 313, column: 28)
!601 = !DILocation(line: 314, column: 9, scope: !600)
!602 = !DILocation(line: 315, column: 4, scope: !600)
!603 = !DILocation(line: 318, column: 12, scope: !604)
!604 = distinct !DILexicalBlock(scope: !562, file: !30, line: 318, column: 7)
!605 = !DILocation(line: 318, column: 7, scope: !604)
!606 = !DILocation(line: 318, column: 25, scope: !604)
!607 = !DILocation(line: 318, column: 7, scope: !562)
!608 = !DILocation(line: 319, column: 4, scope: !604)
!609 = !DILocation(line: 321, column: 19, scope: !562)
!610 = !DILocation(line: 321, column: 26, scope: !562)
!611 = !DILocation(line: 321, column: 8, scope: !562)
!612 = !DILocation(line: 321, column: 6, scope: !562)
!613 = !DILocation(line: 322, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !562, file: !30, line: 322, column: 7)
!615 = !DILocation(line: 322, column: 10, scope: !614)
!616 = !DILocation(line: 322, column: 7, scope: !562)
!617 = !DILocation(line: 323, column: 4, scope: !614)
!618 = !DILocation(line: 325, column: 16, scope: !562)
!619 = !DILocation(line: 325, column: 3, scope: !562)
!620 = !DILocation(line: 325, column: 7, scope: !562)
!621 = !DILocation(line: 325, column: 14, scope: !562)
!622 = !DILocation(line: 326, column: 3, scope: !562)
!623 = !DILocation(line: 329, column: 66, scope: !562)
!624 = !DILocation(line: 329, column: 75, scope: !562)
!625 = !DILocation(line: 329, column: 3, scope: !562)
!626 = !DILocation(line: 330, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !562, file: !30, line: 330, column: 7)
!628 = !DILocation(line: 330, column: 15, scope: !627)
!629 = !DILocation(line: 330, column: 7, scope: !562)
!630 = !DILocation(line: 331, column: 9, scope: !627)
!631 = !DILocation(line: 331, column: 4, scope: !627)
!632 = !DILocation(line: 332, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !562, file: !30, line: 332, column: 7)
!634 = !DILocation(line: 332, column: 14, scope: !633)
!635 = !DILocation(line: 332, column: 7, scope: !562)
!636 = !DILocation(line: 333, column: 9, scope: !633)
!637 = !DILocation(line: 333, column: 4, scope: !633)
!638 = !DILocation(line: 294, column: 2, scope: !639)
!639 = !DILexicalBlockFile(scope: !503, file: !30, discriminator: 2)
!640 = !DILocation(line: 335, column: 11, scope: !503)
!641 = !DILocation(line: 335, column: 2, scope: !503)
!642 = !DILocation(line: 336, column: 2, scope: !503)
!643 = !DILocation(line: 339, column: 2, scope: !503)
!644 = !DILocation(line: 340, column: 1, scope: !503)
!645 = distinct !DISubprogram(name: "readqueuef", scope: !30, file: !30, line: 153, type: !646, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!646 = !DISubroutineType(types: !647)
!647 = !{!41, !33, !55}
!648 = !DILocalVariable(name: "queue", arg: 1, scope: !645, file: !30, line: 153, type: !33)
!649 = !DILocation(line: 153, column: 26, scope: !645)
!650 = !DILocalVariable(name: "queuefn", arg: 2, scope: !645, file: !30, line: 153, type: !55)
!651 = !DILocation(line: 153, column: 39, scope: !645)
!652 = !DILocalVariable(name: "line", scope: !645, file: !30, line: 155, type: !653)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 8000, align: 8, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 1000)
!656 = !DILocation(line: 155, column: 7, scope: !645)
!657 = !DILocalVariable(name: "itmqueue", scope: !645, file: !30, line: 156, type: !34)
!658 = !DILocation(line: 156, column: 15, scope: !645)
!659 = !DILocalVariable(name: "queuef", scope: !645, file: !30, line: 157, type: !60)
!660 = !DILocation(line: 157, column: 8, scope: !645)
!661 = !DILocalVariable(name: "s", scope: !645, file: !30, line: 158, type: !55)
!662 = !DILocation(line: 158, column: 8, scope: !645)
!663 = !DILocalVariable(name: "queueid", scope: !645, file: !30, line: 159, type: !55)
!664 = !DILocation(line: 159, column: 8, scope: !645)
!665 = !DILocalVariable(name: "sender", scope: !645, file: !30, line: 159, type: !55)
!666 = !DILocation(line: 159, column: 24, scope: !645)
!667 = !DILocalVariable(name: "addr", scope: !645, file: !30, line: 159, type: !55)
!668 = !DILocation(line: 159, column: 40, scope: !645)
!669 = !DILocalVariable(name: "it", scope: !645, file: !30, line: 160, type: !41)
!670 = !DILocation(line: 160, column: 16, scope: !645)
!671 = !DILocation(line: 162, column: 2, scope: !645)
!672 = !DILocation(line: 163, column: 1, scope: !645)
!673 = distinct !{!673, !672}
!674 = !DILocation(line: 163, column: 11, scope: !675)
!675 = !DILexicalBlockFile(scope: !676, file: !30, discriminator: 1)
!676 = distinct !DILexicalBlock(scope: !645, file: !30, line: 163, column: 4)
!677 = !DILocation(line: 163, column: 4, scope: !675)
!678 = !DILocation(line: 163, column: 13, scope: !675)
!679 = !DILocation(line: 163, column: 28, scope: !675)
!680 = !DILocation(line: 165, column: 17, scope: !645)
!681 = !DILocation(line: 165, column: 11, scope: !645)
!682 = !DILocation(line: 165, column: 9, scope: !645)
!683 = !DILocation(line: 166, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !645, file: !30, line: 166, column: 6)
!685 = !DILocation(line: 166, column: 13, scope: !684)
!686 = !DILocation(line: 166, column: 6, scope: !645)
!687 = !DILocation(line: 167, column: 3, scope: !684)
!688 = !DILocation(line: 169, column: 2, scope: !645)
!689 = !DILocation(line: 169, column: 15, scope: !690)
!690 = !DILexicalBlockFile(scope: !645, file: !30, discriminator: 1)
!691 = !DILocation(line: 169, column: 10, scope: !690)
!692 = !DILocation(line: 169, column: 9, scope: !690)
!693 = !DILocation(line: 169, column: 2, scope: !690)
!694 = !DILocation(line: 170, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !30, line: 170, column: 7)
!696 = distinct !DILexicalBlock(scope: !645, file: !30, line: 169, column: 24)
!697 = !DILocation(line: 170, column: 33, scope: !695)
!698 = !DILocation(line: 170, column: 7, scope: !695)
!699 = !DILocation(line: 170, column: 41, scope: !695)
!700 = !DILocation(line: 170, column: 48, scope: !695)
!701 = !DILocation(line: 170, column: 51, scope: !702)
!702 = !DILexicalBlockFile(scope: !695, file: !30, discriminator: 1)
!703 = !DILocation(line: 170, column: 59, scope: !702)
!704 = !DILocation(line: 170, column: 7, scope: !702)
!705 = !DILocation(line: 171, column: 4, scope: !695)
!706 = !DILocation(line: 172, column: 15, scope: !696)
!707 = !DILocation(line: 172, column: 8, scope: !696)
!708 = !DILocation(line: 172, column: 21, scope: !696)
!709 = !DILocation(line: 172, column: 3, scope: !696)
!710 = !DILocation(line: 172, column: 26, scope: !696)
!711 = !DILocation(line: 174, column: 14, scope: !696)
!712 = !DILocation(line: 174, column: 7, scope: !696)
!713 = !DILocation(line: 174, column: 5, scope: !696)
!714 = !DILocation(line: 175, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !696, file: !30, line: 175, column: 7)
!716 = !DILocation(line: 175, column: 9, scope: !715)
!717 = !DILocation(line: 175, column: 7, scope: !696)
!718 = !DILocation(line: 176, column: 4, scope: !715)
!719 = !DILocation(line: 177, column: 4, scope: !696)
!720 = !DILocation(line: 177, column: 6, scope: !696)
!721 = !DILocation(line: 179, column: 4, scope: !696)
!722 = !DILocation(line: 180, column: 3, scope: !696)
!723 = !DILocation(line: 180, column: 10, scope: !724)
!724 = !DILexicalBlockFile(scope: !696, file: !30, discriminator: 1)
!725 = !DILocation(line: 180, column: 9, scope: !724)
!726 = !DILocation(line: 180, column: 30, scope: !724)
!727 = !DILocation(line: 180, column: 12, scope: !724)
!728 = !DILocation(line: 180, column: 11, scope: !724)
!729 = !DILocation(line: 180, column: 13, scope: !724)
!730 = !DILocation(line: 180, column: 3, scope: !724)
!731 = !DILocation(line: 181, column: 5, scope: !696)
!732 = !DILocation(line: 180, column: 3, scope: !733)
!733 = !DILexicalBlockFile(scope: !696, file: !30, discriminator: 2)
!734 = distinct !{!734, !722}
!735 = !DILocation(line: 183, column: 14, scope: !696)
!736 = !DILocation(line: 183, column: 7, scope: !696)
!737 = !DILocation(line: 183, column: 5, scope: !696)
!738 = !DILocation(line: 184, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !696, file: !30, line: 184, column: 7)
!740 = !DILocation(line: 184, column: 9, scope: !739)
!741 = !DILocation(line: 184, column: 7, scope: !696)
!742 = !DILocation(line: 185, column: 4, scope: !739)
!743 = !DILocation(line: 187, column: 14, scope: !744)
!744 = distinct !DILexicalBlock(scope: !696, file: !30, line: 187, column: 7)
!745 = !DILocation(line: 187, column: 7, scope: !744)
!746 = !DILocation(line: 187, column: 26, scope: !744)
!747 = !DILocation(line: 187, column: 7, scope: !696)
!748 = !DILocation(line: 188, column: 14, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !30, line: 187, column: 32)
!750 = !DILocation(line: 188, column: 12, scope: !749)
!751 = !DILocation(line: 189, column: 3, scope: !749)
!752 = !DILocation(line: 189, column: 21, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !30, discriminator: 1)
!754 = distinct !DILexicalBlock(scope: !744, file: !30, line: 189, column: 14)
!755 = !DILocation(line: 189, column: 14, scope: !753)
!756 = !DILocation(line: 189, column: 37, scope: !753)
!757 = !DILocation(line: 190, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !30, line: 189, column: 43)
!759 = !DILocation(line: 190, column: 11, scope: !758)
!760 = !DILocation(line: 191, column: 3, scope: !758)
!761 = !DILocation(line: 191, column: 21, scope: !762)
!762 = !DILexicalBlockFile(scope: !763, file: !30, discriminator: 1)
!763 = distinct !DILexicalBlock(scope: !754, file: !30, line: 191, column: 14)
!764 = !DILocation(line: 191, column: 14, scope: !762)
!765 = !DILocation(line: 191, column: 40, scope: !762)
!766 = !DILocation(line: 192, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !30, line: 191, column: 46)
!768 = !DILocation(line: 192, column: 9, scope: !767)
!769 = !DILocation(line: 193, column: 3, scope: !767)
!770 = !DILocation(line: 195, column: 11, scope: !771)
!771 = distinct !DILexicalBlock(scope: !763, file: !30, line: 193, column: 10)
!772 = !DILocation(line: 195, column: 17, scope: !771)
!773 = !DILocation(line: 194, column: 4, scope: !771)
!774 = !DILocation(line: 196, column: 9, scope: !771)
!775 = !DILocation(line: 196, column: 4, scope: !771)
!776 = !DILocation(line: 169, column: 2, scope: !777)
!777 = !DILexicalBlockFile(scope: !645, file: !30, discriminator: 2)
!778 = distinct !{!778, !688}
!779 = !DILocation(line: 200, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !645, file: !30, line: 200, column: 6)
!781 = !DILocation(line: 200, column: 14, scope: !780)
!782 = !DILocation(line: 200, column: 21, scope: !780)
!783 = !DILocation(line: 200, column: 24, scope: !784)
!784 = !DILexicalBlockFile(scope: !780, file: !30, discriminator: 1)
!785 = !DILocation(line: 200, column: 31, scope: !784)
!786 = !DILocation(line: 200, column: 39, scope: !784)
!787 = !DILocation(line: 200, column: 42, scope: !788)
!788 = !DILexicalBlockFile(scope: !780, file: !30, discriminator: 2)
!789 = !DILocation(line: 200, column: 47, scope: !788)
!790 = !DILocation(line: 200, column: 55, scope: !788)
!791 = !DILocation(line: 201, column: 7, scope: !780)
!792 = !DILocation(line: 201, column: 6, scope: !780)
!793 = !DILocation(line: 201, column: 15, scope: !780)
!794 = !DILocation(line: 201, column: 20, scope: !780)
!795 = !DILocation(line: 201, column: 24, scope: !784)
!796 = !DILocation(line: 201, column: 23, scope: !784)
!797 = !DILocation(line: 201, column: 29, scope: !784)
!798 = !DILocation(line: 200, column: 6, scope: !799)
!799 = !DILexicalBlockFile(scope: !645, file: !30, discriminator: 3)
!800 = !DILocation(line: 201, column: 35, scope: !788)
!801 = !DILocation(line: 203, column: 4, scope: !802)
!802 = distinct !DILexicalBlock(scope: !780, file: !30, line: 201, column: 35)
!803 = !DILocation(line: 203, column: 8, scope: !802)
!804 = !DILocation(line: 204, column: 47, scope: !802)
!805 = !DILocation(line: 204, column: 3, scope: !802)
!806 = !DILocation(line: 205, column: 3, scope: !802)
!807 = !DILocation(line: 208, column: 26, scope: !808)
!808 = distinct !DILexicalBlock(scope: !645, file: !30, line: 208, column: 6)
!809 = !DILocation(line: 208, column: 6, scope: !808)
!810 = !DILocation(line: 208, column: 35, scope: !808)
!811 = !DILocation(line: 208, column: 6, scope: !645)
!812 = !DILocation(line: 209, column: 3, scope: !808)
!813 = !DILocation(line: 211, column: 16, scope: !645)
!814 = !DILocation(line: 211, column: 9, scope: !645)
!815 = !DILocation(line: 211, column: 5, scope: !645)
!816 = !DILocation(line: 212, column: 15, scope: !645)
!817 = !DILocation(line: 212, column: 2, scope: !645)
!818 = !DILocation(line: 212, column: 6, scope: !645)
!819 = !DILocation(line: 212, column: 13, scope: !645)
!820 = !DILocation(line: 212, column: 30, scope: !645)
!821 = !DILocation(line: 213, column: 16, scope: !645)
!822 = !DILocation(line: 213, column: 2, scope: !645)
!823 = !DILocation(line: 213, column: 6, scope: !645)
!824 = !DILocation(line: 213, column: 14, scope: !645)
!825 = !DILocation(line: 213, column: 33, scope: !645)
!826 = !DILocation(line: 214, column: 16, scope: !645)
!827 = !DILocation(line: 214, column: 2, scope: !645)
!828 = !DILocation(line: 214, column: 6, scope: !645)
!829 = !DILocation(line: 214, column: 14, scope: !645)
!830 = !DILocation(line: 214, column: 33, scope: !645)
!831 = !DILocation(line: 215, column: 1, scope: !645)
!832 = distinct !{!832, !831}
!833 = !DILocation(line: 215, column: 2, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !30, discriminator: 1)
!835 = distinct !DILexicalBlock(scope: !836, file: !30, line: 215, column: 10)
!836 = distinct !DILexicalBlock(scope: !645, file: !30, line: 215, column: 4)
!837 = !DILocation(line: 215, column: 9, scope: !834)
!838 = !DILocation(line: 215, column: 4, scope: !834)
!839 = !DILocation(line: 215, column: 1, scope: !834)
!840 = !DILocation(line: 215, column: 10, scope: !834)
!841 = !DILocation(line: 215, column: 14, scope: !834)
!842 = !DILocation(line: 215, column: 1, scope: !843)
!843 = !DILexicalBlockFile(scope: !835, file: !30, discriminator: 2)
!844 = !DILocation(line: 215, column: 2, scope: !843)
!845 = !DILocation(line: 215, column: 9, scope: !843)
!846 = !DILocation(line: 215, column: 4, scope: !843)
!847 = !DILocation(line: 215, column: 10, scope: !843)
!848 = !DILocation(line: 215, column: 30, scope: !843)
!849 = !DILocation(line: 215, column: 1, scope: !850)
!850 = !DILexicalBlockFile(scope: !836, file: !30, discriminator: 3)
!851 = !DILocation(line: 215, column: 2, scope: !850)
!852 = !DILocation(line: 215, column: 9, scope: !850)
!853 = !DILocation(line: 215, column: 4, scope: !850)
!854 = !DILocation(line: 215, column: 13, scope: !850)
!855 = !DILocation(line: 215, column: 10, scope: !850)
!856 = !DILocation(line: 215, column: 14, scope: !850)
!857 = !DILocation(line: 215, column: 14, scope: !858)
!858 = !DILexicalBlockFile(scope: !836, file: !30, discriminator: 4)
!859 = !DILocation(line: 218, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !645, file: !30, line: 218, column: 6)
!861 = !DILocation(line: 218, column: 13, scope: !860)
!862 = !DILocation(line: 218, column: 6, scope: !645)
!863 = !DILocation(line: 219, column: 8, scope: !860)
!864 = !DILocation(line: 219, column: 3, scope: !860)
!865 = !DILocation(line: 220, column: 6, scope: !866)
!866 = distinct !DILexicalBlock(scope: !645, file: !30, line: 220, column: 6)
!867 = !DILocation(line: 220, column: 14, scope: !866)
!868 = !DILocation(line: 220, column: 6, scope: !645)
!869 = !DILocation(line: 221, column: 8, scope: !866)
!870 = !DILocation(line: 221, column: 3, scope: !866)
!871 = !DILocation(line: 222, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !645, file: !30, line: 222, column: 6)
!873 = !DILocation(line: 222, column: 11, scope: !872)
!874 = !DILocation(line: 222, column: 6, scope: !645)
!875 = !DILocation(line: 223, column: 8, scope: !872)
!876 = !DILocation(line: 223, column: 3, scope: !872)
!877 = !DILocation(line: 224, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !645, file: !30, line: 224, column: 6)
!879 = !DILocation(line: 224, column: 13, scope: !878)
!880 = !DILocation(line: 224, column: 6, scope: !645)
!881 = !DILocation(line: 225, column: 10, scope: !878)
!882 = !DILocation(line: 225, column: 3, scope: !878)
!883 = !DILocation(line: 227, column: 10, scope: !645)
!884 = !DILocation(line: 227, column: 2, scope: !645)
!885 = distinct !DISubprogram(name: "delqueue", scope: !30, file: !30, line: 343, type: !886, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !41}
!888 = !DILocalVariable(name: "it", arg: 1, scope: !885, file: !30, line: 343, type: !41)
!889 = !DILocation(line: 343, column: 24, scope: !885)
!890 = !DILocation(line: 345, column: 9, scope: !885)
!891 = !DILocation(line: 345, column: 13, scope: !885)
!892 = !DILocation(line: 345, column: 2, scope: !885)
!893 = !DILocation(line: 346, column: 9, scope: !885)
!894 = !DILocation(line: 346, column: 13, scope: !885)
!895 = !DILocation(line: 346, column: 2, scope: !885)
!896 = !DILocation(line: 347, column: 6, scope: !897)
!897 = distinct !DILexicalBlock(scope: !885, file: !30, line: 347, column: 6)
!898 = !DILocation(line: 347, column: 10, scope: !897)
!899 = !DILocation(line: 347, column: 17, scope: !897)
!900 = !DILocation(line: 347, column: 6, scope: !885)
!901 = !DILocation(line: 348, column: 10, scope: !897)
!902 = !DILocation(line: 348, column: 14, scope: !897)
!903 = !DILocation(line: 348, column: 3, scope: !897)
!904 = !DILocation(line: 349, column: 6, scope: !905)
!905 = distinct !DILexicalBlock(scope: !885, file: !30, line: 349, column: 6)
!906 = !DILocation(line: 349, column: 10, scope: !905)
!907 = !DILocation(line: 349, column: 16, scope: !905)
!908 = !DILocation(line: 349, column: 6, scope: !885)
!909 = !DILocation(line: 350, column: 10, scope: !905)
!910 = !DILocation(line: 350, column: 14, scope: !905)
!911 = !DILocation(line: 350, column: 3, scope: !905)
!912 = !DILocation(line: 351, column: 7, scope: !885)
!913 = !DILocation(line: 351, column: 2, scope: !885)
!914 = !DILocation(line: 352, column: 1, scope: !885)
!915 = distinct !DISubprogram(name: "acquirespool", scope: !30, file: !30, line: 355, type: !437, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!916 = !DILocalVariable(name: "it", arg: 1, scope: !915, file: !30, line: 355, type: !41)
!917 = !DILocation(line: 355, column: 28, scope: !915)
!918 = !DILocalVariable(name: "queuefd", scope: !915, file: !30, line: 357, type: !24)
!919 = !DILocation(line: 357, column: 6, scope: !915)
!920 = !DILocation(line: 359, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !915, file: !30, line: 359, column: 6)
!922 = !DILocation(line: 359, column: 10, scope: !921)
!923 = !DILocation(line: 359, column: 17, scope: !921)
!924 = !DILocation(line: 359, column: 6, scope: !915)
!925 = !DILocation(line: 360, column: 25, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !30, line: 359, column: 25)
!927 = !DILocation(line: 360, column: 29, scope: !926)
!928 = !DILocation(line: 360, column: 13, scope: !926)
!929 = !DILocation(line: 360, column: 11, scope: !926)
!930 = !DILocation(line: 361, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !30, line: 361, column: 7)
!932 = !DILocation(line: 361, column: 15, scope: !931)
!933 = !DILocation(line: 361, column: 7, scope: !926)
!934 = !DILocation(line: 362, column: 4, scope: !931)
!935 = !DILocation(line: 363, column: 23, scope: !926)
!936 = !DILocation(line: 363, column: 16, scope: !926)
!937 = !DILocation(line: 363, column: 3, scope: !926)
!938 = !DILocation(line: 363, column: 7, scope: !926)
!939 = !DILocation(line: 363, column: 14, scope: !926)
!940 = !DILocation(line: 364, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !926, file: !30, line: 364, column: 7)
!942 = !DILocation(line: 364, column: 11, scope: !941)
!943 = !DILocation(line: 364, column: 18, scope: !941)
!944 = !DILocation(line: 364, column: 7, scope: !926)
!945 = !DILocation(line: 365, column: 4, scope: !941)
!946 = !DILocation(line: 366, column: 2, scope: !926)
!947 = !DILocation(line: 368, column: 6, scope: !948)
!948 = distinct !DILexicalBlock(scope: !915, file: !30, line: 368, column: 6)
!949 = !DILocation(line: 368, column: 10, scope: !948)
!950 = !DILocation(line: 368, column: 16, scope: !948)
!951 = !DILocation(line: 368, column: 6, scope: !915)
!952 = !DILocation(line: 369, column: 21, scope: !953)
!953 = distinct !DILexicalBlock(scope: !948, file: !30, line: 368, column: 24)
!954 = !DILocation(line: 369, column: 25, scope: !953)
!955 = !DILocation(line: 369, column: 15, scope: !953)
!956 = !DILocation(line: 369, column: 3, scope: !953)
!957 = !DILocation(line: 369, column: 7, scope: !953)
!958 = !DILocation(line: 369, column: 13, scope: !953)
!959 = !DILocation(line: 370, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !953, file: !30, line: 370, column: 7)
!961 = !DILocation(line: 370, column: 11, scope: !960)
!962 = !DILocation(line: 370, column: 17, scope: !960)
!963 = !DILocation(line: 370, column: 7, scope: !953)
!964 = !DILocation(line: 371, column: 4, scope: !960)
!965 = !DILocation(line: 372, column: 2, scope: !953)
!966 = !DILocation(line: 374, column: 2, scope: !915)
!967 = !DILocation(line: 377, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !915, file: !30, line: 377, column: 5)
!969 = !DILocation(line: 377, column: 6, scope: !968)
!970 = !DILocation(line: 377, column: 11, scope: !968)
!971 = !DILocation(line: 377, column: 5, scope: !915)
!972 = !DILocation(line: 378, column: 3, scope: !968)
!973 = !DILocation(line: 379, column: 2, scope: !915)
!974 = !DILocation(line: 380, column: 2, scope: !915)
!975 = !DILocation(line: 381, column: 1, scope: !915)
!976 = distinct !DISubprogram(name: "dropspool", scope: !30, file: !30, line: 384, type: !977, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !33, !41}
!979 = !DILocalVariable(name: "queue", arg: 1, scope: !976, file: !30, line: 384, type: !33)
!980 = !DILocation(line: 384, column: 25, scope: !976)
!981 = !DILocalVariable(name: "keep", arg: 2, scope: !976, file: !30, line: 384, type: !41)
!982 = !DILocation(line: 384, column: 46, scope: !976)
!983 = !DILocalVariable(name: "it", scope: !976, file: !30, line: 386, type: !41)
!984 = !DILocation(line: 386, column: 16, scope: !976)
!985 = !DILocation(line: 388, column: 2, scope: !986)
!986 = distinct !DILexicalBlock(scope: !976, file: !30, line: 388, column: 1)
!987 = !DILocation(line: 388, column: 9, scope: !986)
!988 = !DILocation(line: 388, column: 4, scope: !986)
!989 = !DILocation(line: 388, column: 3, scope: !986)
!990 = !DILocation(line: 388, column: 6, scope: !986)
!991 = !DILocation(line: 388, column: 1, scope: !992)
!992 = !DILexicalBlockFile(scope: !993, file: !30, discriminator: 1)
!993 = distinct !DILexicalBlock(scope: !986, file: !30, line: 388, column: 1)
!994 = !DILocation(line: 389, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !30, line: 389, column: 7)
!996 = distinct !DILexicalBlock(scope: !993, file: !30, line: 388, column: 39)
!997 = !DILocation(line: 389, column: 13, scope: !995)
!998 = !DILocation(line: 389, column: 10, scope: !995)
!999 = !DILocation(line: 389, column: 7, scope: !996)
!1000 = !DILocation(line: 390, column: 4, scope: !995)
!1001 = !DILocation(line: 392, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !30, line: 392, column: 7)
!1003 = !DILocation(line: 392, column: 11, scope: !1002)
!1004 = !DILocation(line: 392, column: 18, scope: !1002)
!1005 = !DILocation(line: 392, column: 7, scope: !996)
!1006 = !DILocation(line: 393, column: 11, scope: !1002)
!1007 = !DILocation(line: 393, column: 15, scope: !1002)
!1008 = !DILocation(line: 393, column: 4, scope: !1002)
!1009 = !DILocation(line: 394, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !996, file: !30, line: 394, column: 7)
!1011 = !DILocation(line: 394, column: 11, scope: !1010)
!1012 = !DILocation(line: 394, column: 17, scope: !1010)
!1013 = !DILocation(line: 394, column: 7, scope: !996)
!1014 = !DILocation(line: 395, column: 11, scope: !1010)
!1015 = !DILocation(line: 395, column: 15, scope: !1010)
!1016 = !DILocation(line: 395, column: 4, scope: !1010)
!1017 = !DILocation(line: 396, column: 2, scope: !996)
!1018 = !DILocation(line: 388, column: 1, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !993, file: !30, discriminator: 2)
!1020 = !DILocation(line: 388, column: 2, scope: !1019)
!1021 = !DILocation(line: 388, column: 3, scope: !1019)
!1022 = distinct !{!1022, !1023}
!1023 = !DILocation(line: 388, column: 1, scope: !976)
!1024 = !DILocation(line: 397, column: 1, scope: !976)
!1025 = distinct !DISubprogram(name: "flushqueue_since", scope: !30, file: !30, line: 400, type: !1026, isLocal: false, isDefinition: true, scopeLine: 401, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!24, !144}
!1028 = !DILocalVariable(name: "period", arg: 1, scope: !1025, file: !30, line: 400, type: !144)
!1029 = !DILocation(line: 400, column: 31, scope: !1025)
!1030 = !DILocalVariable(name: "st", scope: !1025, file: !30, line: 402, type: !133)
!1031 = !DILocation(line: 402, column: 21, scope: !1025)
!1032 = !DILocalVariable(name: "now", scope: !1025, file: !30, line: 403, type: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1034, line: 30, size: 128, align: 64, elements: !1035)
!1034 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/dma/task1")
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1033, file: !1034, line: 32, baseType: !161, size: 64, align: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1033, file: !1034, line: 33, baseType: !1038, size: 64, align: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !91, line: 141, baseType: !92)
!1039 = !DILocation(line: 403, column: 17, scope: !1025)
!1040 = !DILocalVariable(name: "flushfn", scope: !1025, file: !30, line: 404, type: !55)
!1041 = !DILocation(line: 404, column: 15, scope: !1025)
!1042 = !DILocation(line: 406, column: 41, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1025, file: !30, line: 406, column: 6)
!1044 = !DILocation(line: 406, column: 6, scope: !1043)
!1045 = !DILocation(line: 406, column: 60, scope: !1043)
!1046 = !DILocation(line: 406, column: 6, scope: !1025)
!1047 = !DILocation(line: 407, column: 3, scope: !1043)
!1048 = !DILocation(line: 408, column: 11, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1025, file: !30, line: 408, column: 6)
!1050 = !DILocation(line: 408, column: 6, scope: !1049)
!1051 = !DILocation(line: 408, column: 25, scope: !1049)
!1052 = !DILocation(line: 408, column: 6, scope: !1025)
!1053 = !DILocation(line: 409, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !30, line: 408, column: 30)
!1055 = !DILocation(line: 409, column: 3, scope: !1054)
!1056 = !DILocation(line: 410, column: 3, scope: !1054)
!1057 = !DILocation(line: 412, column: 7, scope: !1025)
!1058 = !DILocation(line: 412, column: 2, scope: !1025)
!1059 = !DILocation(line: 413, column: 10, scope: !1025)
!1060 = !DILocation(line: 414, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1025, file: !30, line: 414, column: 6)
!1062 = !DILocation(line: 414, column: 28, scope: !1061)
!1063 = !DILocation(line: 414, column: 6, scope: !1025)
!1064 = !DILocation(line: 415, column: 3, scope: !1061)
!1065 = !DILocation(line: 418, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1025, file: !30, line: 418, column: 6)
!1067 = !DILocation(line: 418, column: 17, scope: !1066)
!1068 = !DILocation(line: 418, column: 26, scope: !1066)
!1069 = !DILocation(line: 418, column: 24, scope: !1066)
!1070 = !DILocation(line: 418, column: 40, scope: !1066)
!1071 = !DILocation(line: 418, column: 33, scope: !1066)
!1072 = !DILocation(line: 418, column: 6, scope: !1025)
!1073 = !DILocation(line: 419, column: 3, scope: !1066)
!1074 = !DILocation(line: 421, column: 3, scope: !1066)
!1075 = !DILocation(line: 422, column: 1, scope: !1025)
!1076 = distinct !DISubprogram(name: "flushqueue_signal", scope: !30, file: !30, line: 425, type: !1077, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !123)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!24}
!1079 = !DILocalVariable(name: "flushfn", scope: !1076, file: !30, line: 427, type: !55)
!1080 = !DILocation(line: 427, column: 15, scope: !1076)
!1081 = !DILocalVariable(name: "fd", scope: !1076, file: !30, line: 428, type: !24)
!1082 = !DILocation(line: 428, column: 6, scope: !1076)
!1083 = !DILocation(line: 430, column: 48, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1076, file: !30, line: 430, column: 13)
!1085 = !DILocation(line: 430, column: 13, scope: !1084)
!1086 = !DILocation(line: 430, column: 67, scope: !1084)
!1087 = !DILocation(line: 430, column: 13, scope: !1076)
!1088 = !DILocation(line: 431, column: 3, scope: !1084)
!1089 = !DILocation(line: 432, column: 12, scope: !1076)
!1090 = !DILocation(line: 432, column: 7, scope: !1076)
!1091 = !DILocation(line: 432, column: 5, scope: !1076)
!1092 = !DILocation(line: 433, column: 6, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1076, file: !30, line: 433, column: 6)
!1094 = !DILocation(line: 433, column: 9, scope: !1093)
!1095 = !DILocation(line: 433, column: 6, scope: !1076)
!1096 = !DILocation(line: 434, column: 3, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !30, line: 433, column: 14)
!1098 = !DILocation(line: 435, column: 8, scope: !1097)
!1099 = !DILocation(line: 435, column: 3, scope: !1097)
!1100 = !DILocation(line: 436, column: 3, scope: !1097)
!1101 = !DILocation(line: 438, column: 15, scope: !1076)
!1102 = !DILocation(line: 438, column: 9, scope: !1076)
!1103 = !DILocation(line: 439, column: 20, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1076, file: !30, line: 439, column: 13)
!1105 = !DILocation(line: 439, column: 13, scope: !1104)
!1106 = !DILocation(line: 439, column: 34, scope: !1104)
!1107 = !DILocation(line: 439, column: 13, scope: !1076)
!1108 = !DILocation(line: 440, column: 3, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !30, line: 439, column: 39)
!1110 = !DILocation(line: 441, column: 8, scope: !1109)
!1111 = !DILocation(line: 441, column: 3, scope: !1109)
!1112 = !DILocation(line: 442, column: 3, scope: !1109)
!1113 = !DILocation(line: 444, column: 8, scope: !1076)
!1114 = !DILocation(line: 444, column: 2, scope: !1076)
!1115 = !DILocation(line: 445, column: 2, scope: !1076)
!1116 = !DILocation(line: 446, column: 1, scope: !1076)
